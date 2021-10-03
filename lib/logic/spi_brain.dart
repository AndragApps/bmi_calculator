import '../../constant.dart';

class SpiBrain {
  late int _monthlyInvestmentAmt;
  late double _expectedReturns;
  late int _investmentPeriodInMonth;
  late int _investmentPeriodInYear;

  ///Constructor
  SpiBrain({
    int? monthlyInvestmentAmt,
    double? expectedReturns,
    int? investmentPeriodInMonth,
    int? investmentPeriodInYear,
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

  ///Set Investment Period in Month, by default Min = 0,
  void setInvestmentPeriodInMonth(int investmentPeriodInMonth) {
    _investmentPeriodInMonth = investmentPeriodInMonth;
  }

  ///Get Investment Period in Month, by default Min = 0,
  int getInvestmentPeriodInMonth() {
    return _investmentPeriodInMonth;
  }

  ///Set Investment Period in Year, by default Min = 0,
  void setInvestmentPeriodInYear(int investmentPeriodInYear) {
    _investmentPeriodInYear = investmentPeriodInYear;
  }

  ///Get Investment Period in Year, by default Min = 0,
  int getInvestmentPeriodInYear() {
    return _investmentPeriodInYear;
  }
}
