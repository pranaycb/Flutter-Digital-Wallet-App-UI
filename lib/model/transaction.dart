class RecentTransaction {
  final svgSrc;
  final tranType;
  final tranDate;
  final tranAmount;
  final tranStatus;
  RecentTransaction(this.svgSrc, this.tranType, this.tranDate, this.tranAmount,
      this.tranStatus);
}

List<RecentTransaction> transaction = getTransaction.map(
      (item) => RecentTransaction(item['svgSrc'], item['tranType'],
          item['tranDate'], item['tranAmount'], item['tranStatus']),
    )
    .toList();

// List<RecentTransaction> menu = getMenuList
//     .map((item) => RecentTransaction(item['svgSrc'], item['tranType']))
//     .toList();

// var getMenuList = [
//   {"menuTitlle": "Mobile Recharge", "menuIcon": "assets/images/recharge.png"}
// ];

var getTransaction = [
  {
    "svgSrc": "assets/images/recharge.png",
    "tranType": "Mobile Recharge",
    "tranDate": "12 June 2021 at 10:15 PM",
    "tranAmount": "৳120",
    "tranStatus": "Success",
  },
  {
    "svgSrc": "assets/images/dish.png",
    "tranType": "DTH Bill Payment",
    "tranDate": "12 June 2021 at 10:15 PM",
    "tranAmount": "৳2500",
    "tranStatus": "Failed",
  },
  {
    "svgSrc": "assets/images/5-stars.png",
    "tranType": "Hotel Booking",
    "tranDate": "12 June 2021 at 10:15 PM",
    "tranAmount": "৳3600",
    "tranStatus": "Success",
  },
  {
    "svgSrc": "assets/images/salary.png",
    "tranType": "Bill Payment",
    "tranDate": "12 June 2021 at 10:15 PM",
    "tranAmount": "৳1500",
    "tranStatus": "Success",
  }
];
