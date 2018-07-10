/*!
* DevExtreme (dx.messages.zh.js)
* Version: 17.2.4
* Build date: Mon Dec 11 2017
*
* Copyright (c) 2012 - 2017 Developer Express Inc. ALL RIGHTS RESERVED
* Read about DevExtreme licensing here: https://js.devexpress.com/Licensing/
*/
"use strict";

! function(root, factory) {
    if ("function" === typeof define && define.amd) {
        define(function(require) {
            factory(require("devextreme/localization"))
        })
    } else {
        factory(DevExpress.localization)
    }
}(this, function(localization) {
    localization.loadDateLocale = function(locale){
        var caGregorian = {
            "main": {
                "zh": {
                    "identity": {
                        "version": {
                            "_cldrVersion": "28",
                            "_number": "$Revision: 11972 $"
                        },
                        "language": "en"
                    },
                    "dates": {
                        "calendars": {
                            "gregorian": {
                                "months": {
                                    "format": {
                                        "abbreviated": {
                                            "1": "1月",
                                            "2": "2月",
                                            "3": "3月",
                                            "4": "4月",
                                            "5": "5月",
                                            "6": "6月",
                                            "7": "7月",
                                            "8": "8月",
                                            "9": "9月",
                                            "10": "10月",
                                            "11": "11月",
                                            "12": "12月"
                                        },
                                        "narrow": {
                                            "1": "J1",
                                            "2": "F",
                                            "3": "M",
                                            "4": "A",
                                            "5": "M",
                                            "6": "J",
                                            "7": "J",
                                            "8": "A",
                                            "9": "S",
                                            "10": "O",
                                            "11": "N",
                                            "12": "D"
                                        },
                                        "wide": {
                                            "1": "1月",
                                            "2": "2月",
                                            "3": "3月",
                                            "4": "4月",
                                            "5": "5月",
                                            "6": "6月",
                                            "7": "7月",
                                            "8": "8月",
                                            "9": "9月",
                                            "10": "10月",
                                            "11": "11月",
                                            "12": "12月"
                                        }
                                    }
                                },
                                "days": {
                                    "format": {
                                        "abbreviated": {
                                            "sun": "日",
                                            "mon": "一",
                                            "tue": "二",
                                            "wed": "三",
                                            "thu": "四",
                                            "fri": "五",
                                            "sat": "六"
                                        },
                                        "narrow": {
                                            "sun": "日",
                                            "mon": "一",
                                            "tue": "二",
                                            "wed": "三",
                                            "thu": "四",
                                            "fri": "五",
                                            "sat": "六"
                                        },
                                        "short": {
                                            "sun": "日",
                                            "mon": "一",
                                            "tue": "二",
                                            "wed": "三",
                                            "thu": "四",
                                            "fri": "五",
                                            "sat": "六"
                                        },
                                        "wide": {
                                            "sun": "星期日",
                                            "mon": "星期一",
                                            "tue": "星期二",
                                            "wed": "星期三",
                                            "thu": "星期四",
                                            "fri": "星期五",
                                            "sat": "星期六"
                                        }
                                    }
                                },
                                "quarters": {
                                    "format": {
                                        "abbreviated": {
                                            "1": "Q1",
                                            "2": "Q2",
                                            "3": "Q3",
                                            "4": "Q4"
                                        },
                                        "narrow": {
                                            "1": "1",
                                            "2": "2",
                                            "3": "3",
                                            "4": "4"
                                        },
                                        "wide": {
                                            "1": "1st quarter",
                                            "2": "2nd quarter",
                                            "3": "3rd quarter",
                                            "4": "4th quarter"
                                        }
                                    }
                                },
                                "dayPeriods": {
                                    "format": {
                                        "abbreviated": {
                                            "midnight": "midnight",
                                            "am": "上午",
                                            "am-alt-variant": "上午",
                                            "noon": "noon",
                                            "pm": "下午",
                                            "pm-alt-variant": "下午",
                                            "morning1": "in the morning",
                                            "afternoon1": "in the afternoon",
                                            "evening1": "in the evening",
                                            "night1": "at night"
                                        },
                                        "narrow": {
                                            "midnight": "midnight",
                                            "am": "上午",
                                            "am-alt-variant": "上午",
                                            "noon": "noon",
                                            "pm": "下午",
                                            "pm-alt-variant": "下午",
                                            "morning1": "in the morning",
                                            "afternoon1": "in the afternoon",
                                            "evening1": "in the evening",
                                            "night1": "at night"
                                        },
                                        "wide": {
                                            "midnight": "midnight",
                                            "am": "上午",
                                            "am-alt-variant": "上午",
                                            "noon": "noon",
                                            "pm": "下午",
                                            "pm-alt-variant": "下午",
                                            "morning1": "morning",
                                            "afternoon1": "afternoon",
                                            "evening1": "evening",
                                            "night1": "night"
                                        }
                                    }
                                },
                                "eras": {
                                    "eraNames": {
                                        "0": "Before Christ",
                                        "0-alt-variant": "Before Common Era",
                                        "1": "Anno Domini",
                                        "1-alt-variant": "Common Era"
                                    },
                                    "eraAbbr": {
                                        "0": "BC",
                                        "0-alt-variant": "BCE",
                                        "1": "AD",
                                        "1-alt-variant": "CE"
                                    },
                                    "eraNarrow": {
                                        "0": "B",
                                        "0-alt-variant": "BCE",
                                        "1": "A",
                                        "1-alt-variant": "CE"
                                    }
                                },
                                "dateFormats": {
                                    "full": "EEEE, MMMM d, y",
                                    "long": "MMMM d, y",
                                    "medium": "MMM d, y",
                                    "short": "M/d/yy"
                                },
                                "timeFormats": {
                                    "full": "h:mm:ss a zzzz",
                                    "long": "h:mm:ss a z",
                                    "medium": "h:mm:ss a",
                                    "short": "h:mm a"
                                },
                                "dateTimeFormats": {
                                    "full": "{1} 'at' {0}",
                                    "long": "{1} 'at' {0}",
                                    "medium": "{1}, {0}",
                                    "short": "{1}, {0}",
                                    "availableFormats": {
                                        "d": "d",
                                        "E": "ccc",
                                        "Ed": "d E",
                                        "Ehm": "E h:mm a",
                                        "EHm": "E HH:mm",
                                        "Ehms": "E h:mm:ss a",
                                        "EHms": "E HH:mm:ss",
                                        "Gy": "y G",
                                        "GyMMM": "MMM y G",
                                        "GyMMMd": "MMM d, y G",
                                        "GyMMMEd": "E, MMM d, y G",
                                        "h": "h a",
                                        "H": "HH",
                                        "hm": "h:mm a",
                                        "Hm": "HH:mm",
                                        "hms": "h:mm:ss a",
                                        "Hms": "HH:mm:ss",
                                        "hmsv": "h:mm:ss a v",
                                        "Hmsv": "HH:mm:ss v",
                                        "hmv": "h:mm a v",
                                        "Hmv": "HH:mm v",
                                        "M": "L",
                                        "Md": "M/d",
                                        "MEd": "E, M/d",
                                        "MMM": "LLL",
                                        "MMMd": "MMM d",
                                        "MMMEd": "E, MMM d",
                                        "MMMMd": "MMMM d",
                                        "ms": "mm:ss",
                                        "y": "y",
                                        "yM": "M/y",
                                        "yMd": "M/d/y",
                                        "yMEd": "E, M/d/y",
                                        "yMMM": "MMM y",
                                        "yMMMd": "MMM d, y",
                                        "yMMMEd": "E, MMM d, y",
                                        "yMMMM": "MMMM y",
                                        "yQQQ": "QQQ y",
                                        "yQQQQ": "QQQQ y"
                                    },
                                    "appendItems": {
                                        "Day": "{0} ({2}: {1})",
                                        "Day-Of-Week": "{0} {1}",
                                        "Era": "{0} {1}",
                                        "Hour": "{0} ({2}: {1})",
                                        "Minute": "{0} ({2}: {1})",
                                        "Month": "{0} ({2}: {1})",
                                        "Quarter": "{0} ({2}: {1})",
                                        "Second": "{0} ({2}: {1})",
                                        "Timezone": "{0} {1}",
                                        "Week": "{0} ({2}: {1})",
                                        "Year": "{0} {1}"
                                    },
                                    "intervalFormats": {
                                        "intervalFormatFallback": "{0} – {1}",
                                        "d": {
                                            "d": "d – d"
                                        },
                                        "h": {
                                            "a": "h a – h a",
                                            "h": "h – h a"
                                        },
                                        "H": {
                                            "H": "HH – HH"
                                        },
                                        "hm": {
                                            "a": "h:mm a – h:mm a",
                                            "h": "h:mm – h:mm a",
                                            "m": "h:mm – h:mm a"
                                        },
                                        "Hm": {
                                            "H": "HH:mm – HH:mm",
                                            "m": "HH:mm – HH:mm"
                                        },
                                        "hmv": {
                                            "a": "h:mm a – h:mm a v",
                                            "h": "h:mm – h:mm a v",
                                            "m": "h:mm – h:mm a v"
                                        },
                                        "Hmv": {
                                            "H": "HH:mm – HH:mm v",
                                            "m": "HH:mm – HH:mm v"
                                        },
                                        "hv": {
                                            "a": "h a – h a v",
                                            "h": "h – h a v"
                                        },
                                        "Hv": {
                                            "H": "HH – HH v"
                                        },
                                        "M": {
                                            "M": "M – M"
                                        },
                                        "Md": {
                                            "d": "M/d – M/d",
                                            "M": "M/d – M/d"
                                        },
                                        "MEd": {
                                            "d": "E, M/d – E, M/d",
                                            "M": "E, M/d – E, M/d"
                                        },
                                        "MMM": {
                                            "M": "MMM – MMM"
                                        },
                                        "MMMd": {
                                            "d": "MMM d – d",
                                            "M": "MMM d – MMM d"
                                        },
                                        "MMMEd": {
                                            "d": "E, MMM d – E, MMM d",
                                            "M": "E, MMM d – E, MMM d"
                                        },
                                        "y": {
                                            "y": "y – y"
                                        },
                                        "yM": {
                                            "M": "M/y – M/y",
                                            "y": "M/y – M/y"
                                        },
                                        "yMd": {
                                            "d": "M/d/y – M/d/y",
                                            "M": "M/d/y – M/d/y",
                                            "y": "M/d/y – M/d/y"
                                        },
                                        "yMEd": {
                                            "d": "E, M/d/y – E, M/d/y",
                                            "M": "E, M/d/y – E, M/d/y",
                                            "y": "E, M/d/y – E, M/d/y"
                                        },
                                        "yMMM": {
                                            "M": "MMM – MMM y",
                                            "y": "MMM y – MMM y"
                                        },
                                        "yMMMd": {
                                            "d": "MMM d – d, y",
                                            "M": "MMM d – MMM d, y",
                                            "y": "MMM d, y – MMM d, y"
                                        },
                                        "yMMMEd": {
                                            "d": "E, MMM d – E, MMM d, y",
                                            "M": "E, MMM d – E, MMM d, y",
                                            "y": "E, MMM d, y – E, MMM d, y"
                                        },
                                        "yMMMM": {
                                            "M": "MMMM – MMMM y",
                                            "y": "MMMM y – MMMM y"
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        };
        var localeData = caGregorian.main[locale];
        if (!localeData) {
            return;
        }
        localization.date.getMonthNames = function (format) {
            var monthsObj = localeData.dates.calendars.gregorian.months.format[(format || "wide")];
            var months = [];
            for (var k in monthsObj) {
                months.push(monthsObj[k]);
            }
            return months;
        }
        localization.date.getDayNames = function (format) {
            var daysObj = localeData.dates.calendars.gregorian.days.format[(format || "wide")];
            var days = [];
            for (var k in daysObj) {
                days.push(daysObj[k]);
            }
            return days;
        }
    }
});