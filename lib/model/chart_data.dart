class ChartData {
  final DateTime date;
  final int orders;

  const ChartData(this.date, this.orders);

  @override
  String toString() {
    return "date: $date, with orders: $orders";
  }
}