# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# CoffeeScript
$ ->
  $("#postalcode").jpostal({
    postcode : [ "#postcode" ],
    # 郵便番号の入力欄が3桁-4桁で分かれている場合
    # postcode : [ '#zipcode1', '#zipcode2' ]
    # 入力項目フォーマット
    #   %3  都道府県
    #   %4  市区町村
    #   %5  町域
    #   %6  大口事業所の番地
    #   %7  大口事業所の名称
    address  : {
                  "#city" : "%3", # 都道府県が入力される
                  "#town"            : "%4%5", # 市区町村と町域が入力される
                  "#banchi"          : "%6%7" # 大口事務所の番地と名称が入力される
                }
  })