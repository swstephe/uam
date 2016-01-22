angular
.module 'datepicker', []
.config [
  '$mdDateLocaleProvider'
  ($mdDateLocaleProvider) ->
    $mdDateLocaleProvider.months = [
      "januaro"
      "februaro"
      "marto"
      "aprilo"
      "majo"
      "junio"
      "julio"
      "aŭgusto"
      "septembro"
      "oktobro"
      "novembro"
      "decembro"
    ]
    shortMonths = [
      "jan"
      "feb"
      "mar"
      "apr"
      "maj"
      "jun"
      "jul"
      "aŭg"
      "sep"
      "okt"
      "nov"
      "dec"
    ]
    $mdDateLocaleProvider.shortMonths = shortMonths
    $mdDateLocaleProvider.days = [
      "dimanĉo"
      "lundo"
      "mardo"
      "merkredo"
      "ĵaŭdo"
      "vendredo"
      "sabato"
    ]
    $mdDateLocaleProvider.shortDays = [
      "lu"
      "ma"
      "me"
      "ja"
      "ve"
      "sa"
      "di"
    ]

    $mdDateLocaleProvider.firstDayOfWeek = 1
    $mdDateLocaleProvider.parseDate = (dateString) ->
      m = moment(dateString, 'L', true)
      if m.isValid() then m.toDate() else new Date(NaN)

    $mdDateLocaleProvider.formatDate = (date) -> moment(date).format('L')
    $mdDateLocaleProvider.monthHeaderFormatter = (date) ->
      date.getFullYear() + " " + shortMonths[date.getMonth()]
    $mdDateLocaleProvider.weekNumberFormatter = (weekNumber) ->
      "semajno #{weekNumber}"
    $mdDateLocaleProvider.msgCalendar = "kalendaro"
    $mdDateLocaleProvider.msgOpenCalendar = "malferma kalendaro"
  ]
angular.module 'myApp', ['ngMaterial', 'ngMessages', 'datepicker']
