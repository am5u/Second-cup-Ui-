import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/data.dart';

class InvoiceWidget extends StatefulWidget {
  @override
  _InvoiceWidgetState createState() => _InvoiceWidgetState();
}

class _InvoiceWidgetState extends State<InvoiceWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
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
                '\$50',
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
            itemCount: allInvoices.length,
            itemBuilder: (context, index) {
              return ListTile(
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AnimatedOpacity(
                      opacity: _isExpanded ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 300),
                    ),
                    AnimatedOpacity(
                      opacity: _isExpanded ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 300),
                      child: Text(' ${allInvoices[index].quantity[index]}',
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                    ),
                    AnimatedOpacity(
                      opacity: _isExpanded ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 300),
                      child: Text('\$${allInvoices[index].price[2]}',
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
