import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/Models/Invoice.dart';
import 'package:hello_world/Models/item.dart';

class InvoiceCard extends StatefulWidget {
  final Invoice invoice;

  const InvoiceCard({required this.invoice});

  @override
  State<InvoiceCard> createState() => _InvoiceCardState();
}

class _InvoiceCardState extends State<InvoiceCard> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.phone_android,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              ' ${widget.invoice.date}',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
                'Total: \$${widget.invoice.items.fold(0.0, (sum, item) => sum + item.subtotal)}',
                style: TextStyle(color: Colors.white)),
            trailing: GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Icon(
                _isExpanded ? Icons.arrow_upward : Icons.arrow_downward,
                color: Colors.white,
              ),
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: _isExpanded ? null : 0,
            child: ListView.builder(
              shrinkWrap: true,
              physics: _isExpanded
                  ? ScrollPhysics()
                  : NeverScrollableScrollPhysics(),
              itemCount: widget.invoice.items.length,
              itemBuilder: (context, index) {
                Item item = widget.invoice.items[index];
                return ListTile(
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(item.name, style: TextStyle(color: Colors.white)),
                      Text(
                        'x${item.quantity}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '\$${item.subtotal}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
