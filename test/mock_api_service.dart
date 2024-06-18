class MockApiService {
  String jsonData = '''
  [
    {
        "id": 30,
        "pid": 10,
        "product": "Premier Diesel",
        "product_type": 3,
        "sell_price": "2380",
        "buy_price": "2380",
        "mdate": "2024-06-04",
        "mtime": "12:00:00"
    },
    {
        "id": 3,
        "pid": 1,
        "product": "Gold Bar (16)",
        "product_type": 1,
        "sell_price": "4870000",
        "buy_price": "4820000",
        "mdate": "2024-06-04",
        "mtime": "12:00:00"
    },
    {
        "id": 27,
        "pid": 9,
        "product": "Diesel",
        "product_type": 3,
        "sell_price": "2330",
        "buy_price": "2330",
        "mdate": "2024-06-04",
        "mtime": "12:00:00"
    },
    {
        "id": 6,
        "pid": 2,
        "product": "World Gold",
        "product_type": 1,
        "sell_price": "2330",
        "buy_price": "2330",
        "mdate": "2024-06-04",
        "mtime": "12:00:00"
    },
    {
        "id": 24,
        "pid": 8,
        "product": "95 RON",
        "product_type": 3,
        "sell_price": "2665",
        "buy_price": "2665",
        "mdate": "2024-06-04",
        "mtime": "12:00:00"
    },
    {
        "id": 9,
        "pid": 3,
        "product": "USD",
        "product_type": 2,
        "sell_price": "4200",
        "buy_price": "4100",
        "mdate": "2024-06-04",
        "mtime": "12:00:00"
    },
    {
        "id": 21,
        "pid": 7,
        "product": "92 RON",
        "product_type": 3,
        "sell_price": "2565",
        "buy_price": "2565",
        "mdate": "2024-06-04",
        "mtime": "12:00:00"
    },
    {
        "id": 12,
        "pid": 4,
        "product": "SGB",
        "product_type": 2,
        "sell_price": "3190",
        "buy_price": "3090",
        "mdate": "2024-06-04",
        "mtime": "12:00:00"
    },
    {
        "id": 18,
        "pid": 6,
        "product": "THB",
        "product_type": 2,
        "sell_price": "120",
        "buy_price": "115",
        "mdate": "2024-06-04",
        "mtime": "12:00:00"
    },
    {
        "id": 15,
        "pid": 5,
        "product": "CNY",
        "product_type": 2,
        "sell_price": "599",
        "buy_price": "575",
        "mdate": "2024-06-04",
        "mtime": "12:00:00"
    },
    {
        "id": 2,
        "pid": 1,
        "product": "Gold Bar (16)",
        "product_type": 1,
        "sell_price": "5260000",
        "buy_price": "5220000",
        "mdate": "2024-06-03",
        "mtime": "12:00:00"
    },
    {
        "id": 29,
        "pid": 10,
        "product": "Premier Diesel",
        "product_type": 3,
        "sell_price": "2380",
        "buy_price": "2380",
        "mdate": "2024-06-03",
        "mtime": "12:00:00"
    },
    {
        "id": 26,
        "pid": 9,
        "product": "Diesel",
        "product_type": 3,
        "sell_price": "2330",
        "buy_price": "2330",
        "mdate": "2024-06-03",
        "mtime": "12:00:00"
    },
    {
        "id": 23,
        "pid": 8,
        "product": "95 RON",
        "product_type": 3,
        "sell_price": "2665",
        "buy_price": "2665",
        "mdate": "2024-06-03",
        "mtime": "12:00:00"
    },
    {
        "id": 20,
        "pid": 7,
        "product": "92 RON",
        "product_type": 3,
        "sell_price": "2565",
        "buy_price": "2565",
        "mdate": "2024-06-03",
        "mtime": "12:00:00"
    },
    {
        "id": 17,
        "pid": 6,
        "product": "THB",
        "product_type": 2,
        "sell_price": "115",
        "buy_price": "111",
        "mdate": "2024-06-03",
        "mtime": "12:00:00"
    },
    {
        "id": 14,
        "pid": 5,
        "product": "CNY",
        "product_type": 2,
        "sell_price": "580",
        "buy_price": "565",
        "mdate": "2024-06-03",
        "mtime": "12:00:00"
    },
    {
        "id": 11,
        "pid": 4,
        "product": "SGB",
        "product_type": 2,
        "sell_price": "3090",
        "buy_price": "3000",
        "mdate": "2024-06-03",
        "mtime": "12:00:00"
    },
    {
        "id": 8,
        "pid": 3,
        "product": "USD",
        "product_type": 2,
        "sell_price": "4300",
        "buy_price": "4200",
        "mdate": "2024-06-03",
        "mtime": "12:00:00"
    },
    {
        "id": 5,
        "pid": 2,
        "product": "World Gold",
        "product_type": 1,
        "sell_price": "2320",
        "buy_price": "2320",
        "mdate": "2024-06-03",
        "mtime": "12:00:00"
    },
    {
        "id": 16,
        "pid": 6,
        "product": "THB",
        "product_type": 2,
        "sell_price": "116",
        "buy_price": "112",
        "mdate": "2024-06-01",
        "mtime": "12:00:00"
    },
    {
        "id": 19,
        "pid": 7,
        "product": "92 RON",
        "product_type": 3,
        "sell_price": "2565",
        "buy_price": "2565",
        "mdate": "2024-06-01",
        "mtime": "12:00:00"
    },
    {
        "id": 13,
        "pid": 5,
        "product": "CNY",
        "product_type": 2,
        "sell_price": "565",
        "buy_price": "555",
        "mdate": "2024-06-01",
        "mtime": "12:00:00"
    },
    {
        "id": 22,
        "pid": 8,
        "product": "95 RON",
        "product_type": 3,
        "sell_price": "2665",
        "buy_price": "2665",
        "mdate": "2024-06-01",
        "mtime": "12:00:00"
    },
    {
        "id": 10,
        "pid": 4,
        "product": "SGB",
        "product_type": 2,
        "sell_price": "3000",
        "buy_price": "2950",
        "mdate": "2024-06-01",
        "mtime": "12:00:00"
    },
    {
        "id": 25,
        "pid": 9,
        "product": "Diesel",
        "product_type": 3,
        "sell_price": "2330",
        "buy_price": "2330",
        "mdate": "2024-06-01",
        "mtime": "12:00:00"
    },
    {
        "id": 7,
        "pid": 3,
        "product": "USD",
        "product_type": 2,
        "sell_price": "4500",
        "buy_price": "4400",
        "mdate": "2024-06-01",
        "mtime": "12:00:00"
    },
    {
        "id": 28,
        "pid": 10,
        "product": "Premier Diesel",
        "product_type": 3,
        "sell_price": "2380",
        "buy_price": "2380",
        "mdate": "2024-06-01",
        "mtime": "12:00:00"
    },
    {
        "id": 4,
        "pid": 2,
        "product": "World Gold",
        "product_type": 1,
        "sell_price": "2320",
        "buy_price": "2320",
        "mdate": "2024-06-01",
        "mtime": "12:00:00"
    },
    {
        "id": 1,
        "pid": 1,
        "product": "Gold Bar (16)",
        "product_type": 1,
        "sell_price": "5270000",
        "buy_price": "5220000",
        "mdate": "2024-06-01",
        "mtime": "12:00:00"
    }
]
  ''';

  Future<dynamic> getMockItems() async {
    return jsonData;
  }
}
