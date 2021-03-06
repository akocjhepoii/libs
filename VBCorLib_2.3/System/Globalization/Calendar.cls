VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Calendar"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
'    CopyRight (c) 2005 Kelly Ethridge
'
'    This file is part of VBCorLib.
'
'    VBCorLib is free software; you can redistribute it and/or modify
'    it under the terms of the GNU Library General Public License as published by
'    the Free Software Foundation; either version 2.1 of the License, or
'    (at your option) any later version.
'
'    VBCorLib is distributed in the hope that it will be useful,
'    but WITHOUT ANY WARRANTY; without even the implied warranty of
'    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
'    GNU Library General Public License for more details.
'
'    You should have received a copy of the GNU Library General Public License
'    along with Foobar; if not, write to the Free Software
'    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
'
'    Module: Calendar
'

''
' Represents various systems of time in which the beginning,
' length, and divisions of a year are defined.
'
' @remarks This class cannot be instantiated and should only be used
' to implement the interface of a calendar class.
'
' @see CalendarStatic
' @see GregorianCalendar
' @see HebrewCalendar
' @see HijriCalendar
' @see JapaneseCalendar
' @see JulianCalendar
' @see KoreanCalendar
' @see TaiwanCalendar
' @see ThaiBuddhistCalendar
'
Option Explicit

''
' Inidicates how many days of the beginning of January must
' the first week contain in order to be counted as the first week.
'
' @param FirstDay The first defined week that contains the first day of
' January is considered the first week of the year.
' @param FirstFullWeek The first defined week that contains 7 days of
' January is considered the first week of the year.
' @param FirstFourDayWeek The first defined week that contains the first
' 4 days of January is considered the first week of the year.
' @remarks When a full week of 7 days from January is required, the week
' may not contain January 1st to 6th, since up to the first 6 days of
' January may exist in the same week and the week would not have 7 days
' from January in it as it may contain parts of the previous December.
' Those days would not count towards the number of weeks in the year.
'
Public Enum CalendarWeekRule
    FirstDay
    FirstFullWeek
    FirstFourDayWeek
End Enum

''
' Returns an list of the eras the calendar can represent.
'
' @return A list of the eras for the calendar.
' @remarks The Eras are listed in reverse chronological order.
' The current era is the first era in the list.
' <p>Eras can be used to segregate sections in a calendar and
' cause the years to begin at 1 again. How the eras are determined
' based on the culture the calendar represents.</p>
'
Public Property Get Eras() As Long(): End Property

''
' Returns the maximinum 4-digit year that will be created from a 2-digit value.
'
' @return The maximinum year that will be created from a 2-digit value.
' @remarks This value is used by the <i>ToFourDigitYear</i> method.
'
Public Property Get TwoDigitYearMax() As Long: End Property

''
' Sets the maximum 4-digit year that will be created from a 2-digit value.
'
' @param RHS The maximinum 4-digit year to be created.
' @remarks This value is used by the <i>ToFourDigitYear</i> method.
'
Public Property Let TwoDigitYearMax(ByVal RHS As Long): End Property

''
' Returns a <b>cDateTime</b> that is the specified number of days from the original Time.
'
' @param Time The date inwhich to add the days to.
' @param Days The number of days to be added. This value can be negative.
' @return The new <b>cDateTime</b> with the days added or subtracted.
'
Public Function AddDays(ByRef Time As Variant, ByVal Days As Long) As cDateTime: End Function

''
' Returns a <b>cDateTime</b> this is the specified number of hours from the original Time.
'
' @param Time The time to add the specified number of hours to.
' @param Hours The number of hours to be added to <i>Time</i>. This can be negative.
' @return Returns a <b>cDateTime</b> with the specified number of hours added.
'
Public Function AddHours(ByRef Time As Variant, ByVal Hours As Long) As cDateTime: End Function

''
' Returns a <b>cDateTime</b> this is the specified number of Milliseconds from the original Time.
'
' @param Time The time to add the specified number of Milliseconds to.
' @param Milliseconds The number of Milliseconds to be added to <i>Time</i>. This can be negative.
' @return Returns a <b>cDateTime</b> with the specified number of Milliseconds added.
'
Public Function AddMilliseconds(ByRef Time As Variant, ByVal Milliseconds As Double) As cDateTime: End Function

''
' Returns a <b>cDateTime</b> this is the specified number of Minutes from the original Time.
'
' @param Time The time to add the specified number of Minutes to.
' @param Minutes The number of Minutes to be added to <i>Time</i>. This can be negative.
' @return Returns a <b>cDateTime</b> with the specified number of Minutes added.
'
Public Function AddMinutes(ByRef Time As Variant, ByVal Minutes As Long) As cDateTime: End Function

''
' Returns a <b>cDateTime</b> this is the specified number of Months from the original Time.
'
' @param Time The time to add the specified number of Months to.
' @param Months The number of Months to be added to <i>Time</i>. This can be negative.
' @return Returns a <b>cDateTime</b> with the specified number of Months added.
'
Public Function AddMonths(ByRef Time As Variant, ByVal Months As Long) As cDateTime: End Function

''
' Returns a <b>cDateTime</b> this is the specified number of Seconds from the original Time.
'
' @param Time The time to add the specified number of Seconds to.
' @param Seconds The number of Seconds to be added to <i>Time</i>. This can be negative.
' @return Returns a <b>cDateTime</b> with the specified number of Seconds added.
'
Public Function AddSeconds(ByRef Time As Variant, ByVal Seconds As Long) As cDateTime: End Function

''
' Returns a <b>cDateTime</b> this is the specified number of Weeks from the original Time.
'
' @param Time The time to add the specified number of Weeks to.
' @param Weeks The number of Weeks to be added to <i>Time</i>. This can be negative.
' @return Returns a <b>cDateTime</b> with the specified number of Weeks added.
'
Public Function AddWeeks(ByRef Time As Variant, ByVal Weeks As Long) As cDateTime: End Function

''
' Returns a <b>cDateTime</b> this is the specified number of Years from the original Time.
'
' @param Time The time to add the specified number of Years to.
' @param Years The number of Years to be added to <i>Time</i>. This can be negative.
' @return Returns a <b>cDateTime</b> with the specified number of Years added.
'
Public Function AddYears(ByRef Time As Variant, ByVal Years As Long) As cDateTime: End Function

''
' Returns a boolean indicating if the value and this object
' instance are the same instance.
'
' @param value The value to compare equalit to.
' @return Boolean indicating equality.
'
Public Function Equals(ByRef Value As Variant) As Boolean: End Function

''
' Returns the day of the months for the specified date.
'
' @param Time The date inwhich to retrieve the day of the month.
' @return The day of the month for the specified date.
'
Public Function GetDayOfMonth(ByRef Time As Variant) As Long: End Function

''
' Returns the day of the year for the specified date.
'
' @param Time The date to retrieve the day of the year from.
' @return The day of the year.
'
Public Function GetDayOfYear(ByRef Time As Variant) As Long: End Function

''
' Returns the <b>DayOfWeek</b> enum of the specified date.
'
' @param Time The date to retrieve the day of the week for.
' @return A <b>DayOfWeek</b> enum representing the day of the week.
' @remarks The <b>DayOfWeek</b> is Sunday and is 0-based. The Visual Basic
' enum vbDayOfWeek is 1-based.
'
Public Function GetDayOfWeek(ByRef Time As Variant) As DayOfWeek: End Function

''
' Returns the number of days in the specified month.
'
' @param Year The year inwhich the month exists. This is used by calendars that
' have months that change based on the year, such as leap years.
' @param Month The month to retrieve the number of days of.
' @param Era The time period inwhich the year exists.
'
Public Function GetDaysInMonth(ByVal Year As Long, ByVal Month As Long, Optional ByRef Era As Variant) As Long: End Function

''
' Returns the number of days in the specified year.
'
' @param Year The year to retrieve the number of days of.
' @param Era The era the year exists in.
' @return The number of days in the year.
'
Public Function GetDaysInYear(ByVal Year As Long, Optional ByRef Era As Variant) As Long: End Function

''
' Returns the era that the specified time exists in.
'
' @param Time The time to find the containing era of.
' @return The era for the time.
'
Public Function GetEra(ByRef Time As Variant) As Long: End Function

''
' Returns a pseudo-unique number identifying this instance.
'
' @return Pseudo-unique number identifying this instance.
'
Public Function GetHashCode() As Long: End Function

''
' Returns the hour of the specified time.
'
' @param Time The time to retrieve the hour from.
' @return The hour portion of the time.
'
Public Function GetHour(ByRef Time As Variant) As Long: End Function

''
' Returns the milliseconds of the specified time.
'
' @param Time The time to retrieve the milliseconds from.
' @return The millisecond portion of the time.
'
Public Function GetMilliseconds(ByRef Time As Variant) As Double: End Function

''
' Returns the minute of the specified time.
'
' @param Time The time to retrieve the minute from.
' @return The minute portion of the time.
'
Public Function GetMinute(ByRef Time As Variant) As Long: End Function

''
' Returns the month of the specified time.
'
' @param Time The time to retrieve the month from.
' @return The month portion of the time.
'
Public Function GetMonth(ByRef Time As Variant) As Long: End Function

''
' Returns the number of months in the specified year.
'
' @param Year The year to get the number of months of.
' @param Era The era the year exists in.
' @return The number of months in the year.
' @remarks In some calendars not all years have the same number of months.
' The Hebrew calendar can have 13 months on leap years.
'
Public Function GetMonthsInYear(ByVal Year As Long, Optional ByRef Era As Variant) As Long: End Function

''
' Returns the second of the specified time.
'
' @param Time The time to retrieve the second from.
' @return The second portion of the time.
'
Public Function GetSecond(ByRef Time As Variant) As Long: End Function

''
' Returns the week of the year that the specified date belongs to.
'
' @param Time The date to find the week it belongs.
' @param Rule Rule to decide what constitutes the first week of the year.
' @param FirstDayOfWeek Defines which week day is the start of a new week.
' @return The week that the date belongs to.
'
Public Function GetWeekOfYear(ByRef Time As Variant, ByVal Rule As CalendarWeekRule, ByVal FirstDayOfWeek As DayOfWeek) As Long: End Function

''
' Returns the year of the specified time.
'
' @param Time The time to retrieve the year from.
' @return The year portion of the time.
'
Public Function GetYear(ByRef Time As Variant) As Long: End Function

''
' Returns a boolean indicating if the specific day is a leap day.
'
' @param Year The year the day is in.
' @param Month The month the day is in.
' @param Day The day to check if is a leap day.
' @param Era The era the year is in.
' @return Boolean indication if the day is a leap day.
' @remarks A leap day only exists in a leap year, such as Febuary 29th in the Gregorian calendar.
'
Public Function IsLeapDay(ByVal Year As Long, ByVal Month As Long, ByVal Day As Long, Optional ByRef Era As Variant) As Boolean: End Function

''
' Returns a boolean indicating if the specific month is a leap month.
'
' @param Year The year the month is in.
' @param Month The month to check if it is a leap month.
' @param Era The era the year is in.
' @return Boolean indication if the month is a leap month.
' @remarks A leap month only exists in a leap year, such as Adar II in the Hebrew calendar.
'
Public Function IsLeapMonth(ByVal Year As Long, ByVal Month As Long, Optional ByRef Era As Variant) As Boolean: End Function

''
' Returns a boolean indicating if the specific year is a leap year.
'
' @param Year The year to check if is a leap year.
' @param Era The era the year is in.
' @return Boolean indication if the year is a leap year.
'
Public Function IsLeapYear(ByVal Year As Long, Optional ByRef Era As Variant) As Boolean: End Function

''
' Returns a Gregorian cDateTime computed using the specific calendar rules.
'
' @param Year The Year in the specific calendar type.
' @param Month The Month in the specific calendar type.
' @param Day The Day in the specific calendar type.
' @param Hour The hour for the new time.
' @param Minute The minute for the new time.
' @param Second The second for the new time.
' @param Millisecond The milliseconds for the new time.
' @param Era The era the year is in.
' @return A Gregorian version of the date specified.
'
Public Function ToDateTime(ByVal Year As Long, ByVal Month As Long, ByVal Day As Long, ByVal Hour As Long, ByVal Minute As Long, ByVal Second As Long, ByVal Millisecond As Long, Optional ByRef Era As Variant) As cDateTime: End Function

''
' Returns a 4-digit year from a 2-digit number.
'
' @param Year The year to be converted to 4-digits.
' @return A 4-digit year in the specific calendar.
' @remarks A normal way of dealing with years is by refering to them as a
' 2-digit value. This is evident in the Gregorian calendar system. The
' year 2005 may be referenced as '05 (pronounced oh-five). When converting
' a 2-digit year to a 4-digit the century is unknown. '05 could be 2005 or 1905.
' This property gives the calendar a rule to follow when converting 2-digit years
' to 4-digit.
' <p>A max year of 2029 will cause a minimum year of 1930. These two years represent
' 100 years which 2-digit years will fall. 00-99 will fall within 1930-2029.</p>
'
Public Function ToFourDigitYear(ByVal Year As Long) As Long: End Function

''
' Returns a string representation of this object instance.
'
' @return String representing this instance.
'
Public Function ToString() As String: End Function

