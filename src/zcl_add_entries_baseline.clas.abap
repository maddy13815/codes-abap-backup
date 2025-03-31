CLASS zcl_add_entries_baseline DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_add_entries_baseline IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA: lt_baseline TYPE STANDARD TABLE OF zrgmt_baseline.
    lt_baseline = VALUE #(
        ( customer = 1 product = 1 product_desc = 'Coffee' sellin_vol = 100 gross_vol = 100 net_inv = 100 created_date = '20250110' )
        ( customer = 1 product = 2 product_desc = 'Tea' sellin_vol = 200 gross_vol = 200 net_inv = 200 created_date = '20250115' )
        ( customer = 1 product = 3 product_desc = 'Laptop' sellin_vol = 300 gross_vol = 300 net_inv = 300 created_date = '20250120' )
        ( customer = 1 product = 4 product_desc = 'Desktop' sellin_vol = 400 gross_vol = 400 net_inv = 400 created_date = '20250125' )
        ( customer = 1 product = 5 product_desc = 'Mobile' sellin_vol = 500 gross_vol = 500 net_inv = 500 created_date = '20250130' )
        ( customer = 1 product = 6 product_desc = 'Table' sellin_vol = 600 gross_vol = 600 net_inv = 600 created_date = '20250210' )
        ( customer = 1 product = 7 product_desc = 'Chair' sellin_vol = 700 gross_vol = 700 net_inv = 700 created_date = '20250214' )
        ( customer = 1 product = 8 product_desc = 'Shoe' sellin_vol = 800 gross_vol = 800 net_inv = 800 created_date = '20250219' )
        ( customer = 1 product = 9 product_desc = 'TV' sellin_vol = 900 gross_vol = 900 net_inv = 900 created_date = '20250223' )
        ( customer = 1 product = 10 product_desc = 'Fridge' sellin_vol = 1000 gross_vol = 1000 net_inv = 1000 created_date = '20250317' )
        ( customer = 1 product = 10 product_desc = 'Fridge' sellin_vol = 1000 gross_vol = 1000 net_inv = 1000 created_date = '20250318' )
        ( customer = 1 product = 1 product_desc = 'Coffee' sellin_vol = 1100 gross_vol = 1100 net_inv = 1100 created_date = '20250111' )
     ).

    MODIFY zrgmt_baseline FROM TABLE @lt_baseline.
*    delete from zrgmt_baseline WHERE product = 11.
  ENDMETHOD.

ENDCLASS.
