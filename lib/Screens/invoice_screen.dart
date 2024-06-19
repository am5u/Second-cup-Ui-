import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/wedgits/buttonsmenu.dart';

class InvoiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Invoice'),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        body: Invoice(),
      ),
    );
  }
}

class Invoice extends StatefulWidget {
  @override
  _InvoiceState createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  List<InvoiceItem> _items = [
    InvoiceItem('ICE CARAMEL CORRETTO LARGE', 3, 345.01),
    InvoiceItem('SPANISH LATTE HOT REGULAR', 1, 100.00),
  ];
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    double total = 0;
    for (var item in _items) {
      total += item.price * item.quantity;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                CupertinoIcons.money_dollar_circle_fill,
                color: Colors.white,
              ),
              Text('2024 MAY',
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              Text('27', style: TextStyle(fontSize: 18, color: Colors.white)),
              Text('|', style: TextStyle(fontSize: 18, color: Colors.white)),
              Text(
                '\$${total}',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                child: Icon(
                  Icons.arrow_upward,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        AnimatedOpacity(
          opacity: _isExpanded ? 1.0 : 0.0,
          duration: Duration(milliseconds: 300),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('ITEM',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                Text('QTY',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                Text('PRICE',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: _isExpanded ? null : 0,
          child: ListView.builder(
            shrinkWrap: true,
            physics:
                _isExpanded ? ScrollPhysics() : NeverScrollableScrollPhysics(),
            itemCount: _items.length,
            itemBuilder: (context, index) {
              return ListTile(
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AnimatedOpacity(
                      opacity: _isExpanded ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 300),
                      child: SizedBox(
                        child: Text(_items[index].name,
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        width: 100,
                      ),
                    ),
                    AnimatedOpacity(
                      opacity: _isExpanded ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 300),
                      child: Text(' ${_items[index].quantity}',
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                    ),
                    AnimatedOpacity(
                      opacity: _isExpanded ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 300),
                      child: Text('\$${_items[index].price.toStringAsFixed(2)}',
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class InvoiceItem {
  String name;
  int quantity;
  double price;

  InvoiceItem(this.name, this.quantity, this.price);
}
