class Transction_HistoryModel {
  final String titel, date, amount;
  final bool isWithdrawal;

 const Transction_HistoryModel(
      {required this.titel,
      required this.date,
      required this.amount,
      required this.isWithdrawal});
}
