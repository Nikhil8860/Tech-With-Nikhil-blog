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


# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
#     An input string is valid if:
#     Open brackets must be closed by the same type of brackets.
#     Open brackets must be closed in the correct order.
#     Input: s = "()[]{}"
#     Output: true
#     Input: s = "{[]}"
#     Output: true
#     Input: s = "([)]"
#     Output: false
#     Input: s = ")(]"
#     Output: false
#     Input: s = "([)(])"
#     Output: false


def wc(file):
    # no of char
    # no of words
    # no of line
    # file name
    with open(file, 'r') as f:
        file_data = [i for i in f.readlines() if i != '']
        no_of_char = sum([int(len(i)) for i in file_data])
        no_of_words = sum([len(i.split()) for i in file_data])
        no_of_line = len(file_data)
        return no_of_line, no_of_words, no_of_char, file


def find_number(arr, num):
    if len(arr) == 0:
        return False
    if type(arr) != list:
        return False
    if type(num) != int:
        return False
    for i in range(len(arr)):
        if arr[i] == num:
            return i


def find_missing(arr, low, l):
    diff = low - 0
    for i in range(l):
        if arr[i] - i != diff:
            while diff < arr[i] - i:
                print("Missing value is ", i + diff)
                diff += 1


def find_largest(arr, n):
    largest = 0  # index
    for i in range(n):
        if arr[i] > arr[largest]:
            largest = i
    return largest


def find_second_largest(arr, n):
    largest = find_largest(arr, n)
    res = -1
    for i in range(n):
        if arr[i] != arr[largest]:
            if res == -1:
                res = i
            elif arr[i] > arr[res]:
                res = i
    return arr[res]


def printMissingElements(arr, N):
    # Initialize an array with zero
    # of size equals to the maximum
    # element in the array
    b = [0] * (arr[N - 1] + 1)
    # Make b[i]=1 if i is present
    # in the array
    for i in range(N):
        # If the element is present
        # make b[arr[i]]=1
        b[arr[i]] = 1
    # Print the indices where b[i]=0
    for i in range(arr[0], arr[N - 1] + 1):
        if (b[i] == 0):
            print(i, end=" ")


def reverse_array(arr):
    n = len(arr)
    j = n - 1
    for i in range(n):
        while i < j:
            tmp = arr[i]
            arr[i] = arr[j]
            arr[j] = tmp
            i += 1
            j -= 1
    return arr


def remove_duplicate(arr):
    tmp = [None] * len(arr)
    tmp[0] = arr[0]
    res = 1
    for i in range(1, len(arr)):
        if tmp[res - 1] != arr[i]:
            tmp[res] = arr[i]
            res += 1
    print(tmp)
    for i in range(res):
        arr[i] = tmp[i]
    return arr


def remove_duplicate1(arr):
    res = 1
    for i in range(1, len(arr)):
        if arr[i] != arr[res - 1]:
            arr[res] = arr[i]
            res += 1
    return res


def move_non_zero(arr):
    for i in range(len(arr)):
        if arr[i] == 0:
            for j in range(i + 1, len(arr)):
                if arr[j] != 0:
                    tmp = arr[j]
                    arr[j] = arr[i]
                    arr[i] = tmp
    return arr


def move_non_zero1(arr):
    for i in range(len(arr)):
        count = 0
        for i in range(len(arr)):
            if arr[i] != 0:
                arr[count], arr[i] = arr[i], arr[count]
                count += 1
    return arr


def left_rotate_by_one(arr, n):
    tmp = arr[0]
    n = len(arr)
    for i in range(1, n):
        arr[i - 1] = arr[i]
    arr[len(arr) - 1] = tmp


def rotate_n_times(arr, d):
    if d > len(arr):
        d = d - len(arr)
    for i in range(d):
        left_rotate_by_one(arr, i)
    return arr

def find_majority(arr):
    for i in range(len(arr)):
        count = 1
        for j in range(i+1, len(arr)):
            if arr[i] == arr[j]:
                count+=1
        if count > len(arr)//2:
            return i
    return -1
if __name__ == '__main__':
    a = [8,7,6,8,6,8,1]
    print(find_majority(a))
    # quit()
    a = [2, 3, 4, 5, 1]
    print(rotate_n_times(a, 21))
    arr = [6, 7, 10, 11, 13]
    N = len(arr)
    print("hello " * 100)
    # printMissingElements(arr, N)
    # arr = [5, 10, 12, 15, 20, 43,325,2,6435,36,3453,654,63,53]
    # print(find_second_largest(arr, len(arr)))

