
Template.creator_list_wrapper.onRendered ->
	self = this
	self.autorun ->
		if Session.get("list_view_id")
			self.$(".btn-filter-list").removeClass("slds-is-selected")
			self.$(".filter-list-container").addClass("slds-hide")

	self.autorun ->
		if Session.get("list_view_id")
			list_view_obj = Creator.Collections.object_listviews.findOne(Session.get("list_view_id"))
			if list_view_obj
				if list_view_obj.filter_scope
					Session.set("filter_scope", list_view_obj.filter_scope)
				if list_view_obj.filters
					Session.set("filter_items", list_view_obj.filters)

Template.creator_list_wrapper.helpers Creator.helpers

Template.creator_list_wrapper.helpers

	object_listviews_fields: ()->
		listview_fields = Creator.getObject("object_listviews").fields
		field_keys = _.keys(listview_fields)
		field_keys.remove(field_keys.indexOf("object_name"))
		if !Steedos.isSpaceAdmin()
			field_keys.remove(field_keys.indexOf("shared"))
		return field_keys.join(",")

	isRefreshable: ()->
		return Template["creator_#{FlowRouter.getParam('template')}"]?.refresh

	list_template: ()->
		return "creator_#{FlowRouter.getParam('template')}"

	recordsTotalCount: ()->
		return Template.instance().recordsTotal.get()
	
	list_data: ()->
		return {total: Template.instance().recordsTotal}

	list_views: ()->
		Session.get("change_list_views")
		return Creator.getListViews()

	custom_view: ()->
		return Creator.Collections.object_listviews.find({object_name: Session.get("object_name"), is_default: {$ne: true}})

	list_view: ()->
		Session.get("change_list_views")
		list_view = Creator.getListView(Session.get("object_name"), Session.get("list_view_id"))

		if Session.get("list_view_id") and Session.get("list_view_id") != list_view?._id
			return

		if !list_view
			return

		if list_view?.name != Session.get("list_view_id")
			if list_view?._id
				Session.set("list_view_id", list_view._id)
			else
				Session.set("list_view_id", list_view.name)
		return list_view

	list_view_url: (list_view)->
		if list_view._id
			list_view_id = String(list_view._id)
		else
			list_view_id = String(list_view.name)
		
		app_id = Session.get("app_id")
		object_name = Session.get("object_name")
		return Creator.getListViewUrl(object_name, app_id, list_view_id)
	
	list_view_label: (item)->
		if item
			return item.label || item.name 
		else
			return ""

	actions: ()->
		actions = Creator.getActions()
		actions = _.filter actions, (action)->
			if action.on == "list"
				if typeof action.visible == "function"
					return action.visible()
				else
					return action.visible
			else
				return false
		return actions

	is_custom_list_view: ()->
		if Creator.Collections.object_listviews.findOne(Session.get("list_view_id"))
			return true
		else
			return false
	
	is_view_owner: ()->
		list_view = Creator.Collections.object_listviews.findOne(Session.get("list_view_id"))
		if list_view and list_view.owner == Meteor.userId()
			return true
		return false

	is_filter_list_disabled: ()->
		list_view = Creator.Collections.object_listviews.findOne(Session.get("list_view_id"))
		if !list_view or list_view.owner != Meteor.userId()
			return "disabled"

	is_filter_changed: ()->
		list_view_obj = Creator.Collections.object_listviews.findOne(Session.get("list_view_id"))
		if list_view_obj
			original_filter_scope = list_view_obj.filter_scope
			original_filter_items = list_view_obj.filters
			original_filter_logic = list_view_obj.filter_logic
			current_filter_logic = Session.get("filter_logic")
			current_filter_scope = Session.get("filter_scope")
			current_filter_items = Session.get("filter_items")
			if original_filter_scope == current_filter_scope and JSON.stringify(original_filter_items) == JSON.stringify(current_filter_items)
				if (!current_filter_logic and !original_filter_logic) or (current_filter_logic == original_filter_logic)
					return false
				else
					return true
			else
				return true
	
	list_view_visible: ()->
		return Session.get("list_view_visible")
	
	current_list_view: ()->
		list_view_obj = Creator.Collections.object_listviews.findOne(Session.get("list_view_id"))
		return list_view_obj?._id

	delete_on_success: ()->
		return ->
			list_views = Creator.getListViews()
			Session.set("list_view_id", list_views[0]._id)

Template.creator_list_wrapper.events

	'click .list-action-custom': (event) ->
		objectName = Session.get("object_name")
		object = Creator.getObject(objectName)
		collection_name = object.label
		Session.set("action_fields", undefined)
		Session.set("action_collection", "Creator.Collections.#{objectName}")
		Session.set("action_collection_name", collection_name)
		Session.set("action_save_and_insert", true)
		Creator.executeAction objectName, this

	'click .btn-filter-list': (event, template)->
		$(event.currentTarget).toggleClass("slds-is-selected")
		$(".filter-list-container").toggleClass("slds-hide")

	'click .close-filter-panel': (event, template)->
		$(".btn-filter-list").removeClass("slds-is-selected")
		$(".filter-list-container").addClass("slds-hide")
	
	'click .add-list-view': (event, template)->
		$(".btn-add-list-view").click()

	'click .reset-column-width': (event, template)->
		list_view_id = Session.get("list_view_id")
		object_name = Session.get("object_name")
		grid_settings = Creator.getCollection("settings").findOne({object_name: object_name, record_id: "object_gridviews"})
		Session.set "list_view_visible", false
		Meteor.call 'grid_settings', object_name, list_view_id, {}, (e, r)->
			if e
				console.log e
			else
				Session.set "list_view_visible", true

	'click .edit-list-view': (event, template)->
		$(".btn-edit-list-view").click()

	'click .cancel-change': (event, template)->
		list_view_id = Session.get("list_view_id")
		filters = Creator.Collections.object_listviews.findOne(list_view_id).filters || []
		filter_scope = Creator.Collections.object_listviews.findOne(list_view_id).filter_scope
		Session.set("filter_items", filters)
		Session.set("filter_scope", filter_scope)

	'click .save-change': (event, template)->
		list_view_id = Session.get("list_view_id")
		filter_items = Session.get("filter_items")
		filter_scope = Session.get("filter_scope")
		filter_items = _.map filter_items, (obj) ->
			if _.isEmpty(obj)
				return false
			else
				return obj
		filter_items = _.compact(filter_items)

		error = {}
		filter_length = filter_items.length
		format_logic = template.$("#filter-logic").val()
		if format_logic
			# 格式化filter
			format_logic = format_logic.replace(/\n/g, "").replace(/\s+/g, " ")

			# 判断特殊字符
			if /[._\-!+]+/ig.test(format_logic)
				error.message = "含有特殊字符。"

			if !error.message
				index = format_logic.match(/\d+/ig)
				if !index
					error.message = "有些筛选条件进行了定义，但未在高级筛选条件中被引用。"
				else
					index.forEach (i)->
						if i < 1 or i > filter_length
							error.message = "您的筛选条件引用了未定义的筛选器：#{i}。"
						
					flag = 1
					while flag <= filter_length
						if !index.includes("#{flag}")
							error.message = "有些筛选条件进行了定义，但未在高级筛选条件中被引用。"
						flag++;
					
			if !error.message
				# 判断是否有非法英文字符
				word = format_logic.match(/[a-zA-Z]+/ig)
				if word
					word.forEach (w)->
						if !/^(and|or)$/ig.test(w)
							error.message = "检查您的高级筛选条件中的拼写。"
			
			if !error.message
				# 判断格式是否正确
				try
					Creator.eval(format_logic.replace(/and/ig, "&&").replace(/or/ig, "||"))
				catch e	
					error.message = "您的筛选器中含有特殊字符"

				if /(AND)[^()]+(OR)/ig.test(format_logic) ||  /(OR)[^()]+(AND)/ig.test(format_logic)
					error.message = "您的筛选器必须在连续性的 AND 和 OR 表达式前后使用括号。"

		if error.message
			console.log "error", error.message
		else
			Session.set "list_view_visible", false
			Meteor.call "update_filters", list_view_id, filter_items, filter_scope, format_logic, (error, result) ->
				Session.set "list_view_visible", true
				if error 
					console.log "error", error 
				else if result
					Session.set("filter_items", filter_items)		

	'click .filters-save-as': (event, template)->
		filter_items = Session.get("filter_items")
		filter_items = _.map filter_items, (obj) ->
			if _.isEmpty(obj)
				return false
			else
				return obj
		filter_items = _.compact(filter_items)
		Session.set "cmDoc", {filters: filter_items}
		$(".btn-add-list-view").click()
		$(".filter-list-container").toggleClass("slds-hide")

	'click .select-fields-to-display': (event, template)->
		Modal.show("select_fields")

	'click .delete-list-view': (event, template)->
		list_view_id = Session.get("list_view_id")
		Session.set "cmDoc", {_id: list_view_id}
		$(".btn-delete-list-view").click()

	'click .btn-refresh': (event, template)->
		Template["creator_#{FlowRouter.getParam('template')}"]?.refresh()


Template.creator_list_wrapper.onCreated ->
	this.recordsTotal = new ReactiveVar(0)

Template.creator_list_wrapper.onDestroyed ->
	object_name = Session.get("object_name")
	if object_name
		Creator.TabularSelectedIds[object_name] = []


AutoForm.hooks addListView:
	onSuccess: (formType,result)->
		list_view_id = result._id
		Session.set("list_view_id", list_view_id)
			