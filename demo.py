import xlrd
import pandas as pd

# xlrd.xlsx.ensure_elementtree_imported(False, None)
# xlrd.xlsx.Element_has_iter = True
# loc = (r'C:\Users\nikhil.s\Downloads\MAY.xlsx')
# df = pd.read_excel(loc, sheet_name='Sales Report')
# list_dict = df.to_dict(orient='records')
# for i in range(len(list_dict)):
#     for j in range(i + 1, len(list_dict)):
#         if list_dict[i]['Event Sub Type'] == 'Sale' and list_dict[j]['Event Sub Type'] != 'Sale' \
#                 and list_dict[j]['Order ID'] == list_dict[j]['Order ID']:
#             print(list_dict[i])
#         break

# wb = xlrd.open_workbook(loc)
# sheet = wb.sheet_by_index(1)
# for i in range(1, sheet.nrows):
#     sales_excel_input = {'Seller GSTIN': '', 'Order ID': '', 'Order Item ID': '', 'Product Title/Description': '', 'FSN': '', 'SKU': '', 'HSN Code': '', 'Event Type': '', 'Event Sub Type': '', 'Order Type': '', 'Fulfilment Type': '', 'Order Date': '', 'Order Approval Date ': '', 'Item Quantity': '', 'Order Shipped From (State)': '', 'Price before discount': '', 'Total Discount': '', 'Seller Share ': '', 'Bank Offer Share': '', 'Price after discount (Price before discount-Total discount)': '', 'Shipping Charges': '', 'Final Invoice Amount (Price after discount+Shipping Charges)': '', 'Type of tax': '', 'Taxable Value (Final Invoice Amount -Taxes)': '', 'CST Rate': '', 'CST Amount': '', 'VAT Rate': '', 'VAT Amount': '', 'Luxury Cess Rate': '', 'Luxury Cess Amount': '', 'IGST Rate': '', 'IGST Amount': '', 'CGST Rate': '', 'CGST Amount': '', 'SGST Rate (or UTGST as applicable)': '', 'SGST Amount (Or UTGST as applicable)': '', 'TCS IGST Rate': '', 'TCS IGST Amount': '', 'TCS CGST Rate': '', 'TCS CGST Amount': '', 'TCS SGST Rate': '', 'TCS SGST Amount': '', 'Total TCS Deducted': '', 'Buyer Invoice ID': '', 'Buyer Invoice Date': '', 'Buyer Invoice Amount ': '', "Customer's Billing Pincode": '', "Customer's Billing State": '', "Customer's Delivery Pincode": '', "Customer's Delivery State": '', 'Usual Price': ''}
#     sales_excel_input['Seller GSTIN'] = sheet.cell_value(i, 0)
#     sales_excel_input['Order ID'] = sheet.cell_value(i, 1)
#     sales_excel_input['Order Item ID'] = sheet.cell_value(i, 2)
#     sales_excel_input['Product Title/Description'] = sheet.cell_value(i, 3)
#     sales_excel_input['FSN'] = sheet.cell_value(i, 4)
#     print(sales_excel_input)
#     quit()

































