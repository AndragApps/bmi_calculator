import '../../constant.dart';

class SipBrain {
  late int _monthlyInvestmentAmt;
  late double _expectedReturns;
  late int _investmentPeriodInMonth;
  late int _investmentPeriodInYear;

  ///Constructor
  SipBrain({
    int? monthlyInvestmentAmt,
    double? expectedReturns,
    int? investmentPeriodInMonth = 1,
    int? investmentPeriodInYear = 1,
  }) {
    _monthlyInvestmentAmt = monthlyInvestmentAmt ?? kMonthlyInvestmentAmount;
    _expectedReturns = expectedReturns ?? kExpectedReturns;
    _investmentPeriodInMonth =
        investmentPeriodInMonth ?? kInvestmentPeriodMonth;
    _investmentPeriodInYear = investmentPeriodInYear ?? kInvestmentPeriodYear;
  }

  ///Set Monthly Investment Amt
  void setMonthlyInvestmentAmt(int monthlyInvestmentAmt) {
    _monthlyInvestmentAmt = monthlyInvestmentAmt;
  }

  ///Get Monthly Investment Amt
  int getMonthlyInvestmentAmt() {
    return _monthlyInvestmentAmt;
  }

  ///Set Expected Returns Investment Amt
  void setExpectedReturns(double expectedReturns) {
    _expectedReturns = expectedReturns;
  }

  ///Get Expected Returns Investment Amt
  double getExpectedReturns() {
    return _expectedReturns;
  }

  ///Add(+) Investment Period in Month, by default Min = 0,
  void addInvestmentPeriodInMonth() {
    _investmentPeriodInMonth < 12
        ? _investmentPeriodInMonth++
        : _investmentPeriodInMonth;
  }

  ///Remove(-) Investment Period in Month, by default Min = 0,
  void removeInvestmentPeriodInMonth() {
    _investmentPeriodInMonth > 1
        ? _investmentPeriodInMonth--
        : _investmentPeriodInMonth;
  }

  ///Get Investment Period in Month, by default Min = 0,
  int getInvestmentPeriodInMonth() {
    return _investmentPeriodInMonth;
  }

  ///Set Investment Period in Year, by default Min = 0,
  void setInvestmentPeriodInYear(int investmentPeriodInYear) {
    _investmentPeriodInYear = investmentPeriodInYear;
  }

  ///Add(+) Investment Period in Year, by default Min = 0,
  void addInvestmentPeriodInYear() {
    _investmentPeriodInYear++;
  }

  ///Remove(-) Investment Period in Year, by default Min = 0,
  void removeInvestmentPeriodInYear() {
    _investmentPeriodInYear > 0
        ? _investmentPeriodInYear--
        : _investmentPeriodInYear;
  }

  ///Get Investment Period in Year, by default Min = 0,
  int getInvestmentPeriodInYear() {
    return _investmentPeriodInYear;
  }
}
