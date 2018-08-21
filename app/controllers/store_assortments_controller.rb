class StoreAssortmentsController < ApplicationController
  
  @stores_all = Store.all
  @regioni = Store.select('regione').distinct

  def import
  end
end
