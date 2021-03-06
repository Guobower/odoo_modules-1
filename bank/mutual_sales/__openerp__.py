{
    'name': 'Sales Management',
    'version': '1.0',
    'category': 'Sales Management',
    'sequence': 15,
    'author':'Hadi',
    'summary': 'Quotations, Sales Orders, Invoicing',
    'description': """
Manage sales quotations and orders
==================================
This application allows you to manage your sales goals in an effective and efficient manner by keeping track of all sales orders and history.
It handles the full sales workflow:
* **Quotation** -> **Sales order** -> **Invoice**
Preferences (only with Warehouse Management installed)
------------------------------------------------------
If you also installed the Warehouse Management, you can deal with the following preferences:
* Shipping: Choice of delivery at once or partial delivery
* Invoicing: choose how invoices will be paid
* Incoterms: International Commercial terms
You can choose flexible invoicing methods:
* *On Demand*: Invoices are created manually from Sales Orders when needed
* *On Delivery Order*: Invoices are generated from picking (delivery)
* *Before Delivery*: A Draft invoice is created and must be paid before delivery
The Dashboard for the Sales Manager will include
------------------------------------------------
* My Quotations
* Monthly Turnover (Graph)
    """,
    'author':'Hadi Saeed',
    'website': 'https://www.odoo.com/page/crm',
    'depends': ['base_setup','sale','account_followup'],
    'data': ['mutualsales_view.xml','mutualsales_report.xml','views/report_customer.xml'],
    'installable': True,
    'auto_install': False,

}