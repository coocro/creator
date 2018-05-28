Creator.Objects.vip_category =
	name: "vip_category"
	label: "卡项"
	icon: "apps"
	fields:
		name:
			label:'名称'
			type:'text'
			required:true
		cover:
			label:'背景图'
			type:'image'
		avatar:
			label:'头像'
			type:'image'
		count:
			label:'发行数量'
			type:'number'
		price:
			label:'售价'
			type:'currency'
			required:true
		summary:
			label:'简介'
			type:'textarea'
		# state:
		# 	label:'状态'
		# 	type:'select'
		# 	options:[
		# 		{label:'未上架',value:'未上架'},
		# 		{label:'上架中',value:'上架中'},
		# 		{label:'已上架',value:'已上架'},
		# 		{label:'已下架',value:'已下架'}
		# 	]
		# purchase_count:
		# 	label:'开卡总数'
		# 	type:'number'
		# 	omit:true
		description:
			label:'会员权益'
			type:'textarea'
		# level:
		# 	label:'等级'
		# 	type:'select'
		# 	options:[
		# 		{label:'普通',value:1},
		# 		{label:'白银',value:2},
		# 		{label:'黄金',value:3},
		# 		{label:'铂金',value:4},
		# 		{label:'钻石',value:5}
		# 	]
		# 	omit:
		# category:
		# 	label:'类别'
		# 	type:'select'
		# 	options:[
		# 		{label:'次卡',value:'次卡'},
		# 		{label:'折扣卡',value:'折扣卡'},
		# 		{label:'充值卡',value:'充值卡'},
		# 	]
		# 	required:true
		# 	omit:true
		# content:
		# 	label:'内容'
		# 	type:'grid'
		# 	required:true
		# 	omit:true
		# "content.$.name":
		# 	label:'服务/产品名称'
		# 	#type:'lookup'
		# 	#reference_to:,此处应该关联商家提供的服务和产品
		# 	omit:true
		# "content.$.count":
		# 	label:'次数或件数'
		# 	type:'number'
		# 	omit:true
		# discount:
		# 	label:'折扣'
		# 	type:'number'
		# 	omit:true
		# recharge_amount:
		# 	label:'充值金额'
		# 	type:'currency'
		# 	omit:true
		# present_amount:
		# 	label:'赠送金额'
		# 	type:'currency'
		# 	omit:true
		# handsel:
		# 	label:'购卡赠送'
		# 	type:'grid'
		# 	omit:true
		# "handsel.$.name":
		# 	label:'服务/产品名称'
		# 	omit:true
		# 	#type:'lookup'
		# 	#reference_to:,此处应该关联商家提供的服务和产品
		# "handsel.$.count":
		# 	label:'次数或件数'
		# 	type:'number'
		# 	omit:true            
	list_views:
		all:
			label: "全部"
			filter_scope: "space"
			columns: ["name", "content", "purchase_count","state"]
			