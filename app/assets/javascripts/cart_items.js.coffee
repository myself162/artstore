# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('.am-cart-nav .cart-link').on 'ajax:before ajax:complete', (event) ->
  $(this).find('.fa').toggleClass('fa-shopping-cart fa-spinner fa-spin')

$ ->
  $('form.update-cart-item').on 'change', (event) ->
    $(this).find('button').removeClass('hide')