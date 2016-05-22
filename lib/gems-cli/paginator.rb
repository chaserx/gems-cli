require 'will_paginate/array'

class Paginator
  attr_reader :pages, :total_entries
  attr_accessor :ary, :per_page, :page, :paged_results

  def initialize(args = {})
    @ary = args[:ary] || []
    @page = 1
    @per_page = args[:per_page] || 10
    @paged_results = @ary.paginate(per_page: @per_page)
    @size = @paged_results.total_entries
    @pages = @paged_results.total_pages
  end

  def [](*args)
    @ary[*args]
  end

  # run calculation if you've initialized without arguments
  def calculate_pagination
    @paged_results = @ary.paginate(per_page: @per_page)
    @size = @paged_results.total_entries
    @pages = @paged_results.total_pages
  end

  # test if the current page is on the last page of results
  def last_page?
    @page.eql? @pages
  end

  # test if the current page is on the first page of results
  def first_page?
    @page.eql? 1
  end

  # return the first page of results
  def first_page
    @ary.paginate(per_page: @per_page, page: 1)
  end

  # return the last page of results
  def last_page
    @ary.paginate(per_page: @per_page, page: @pages)
  end

  # return the current page of results
  def current_page
    @ary.paginate(per_page: @per_page, page: @page)
  end

  # move the page index forward
  def next_page
    @page += 1 unless last_page?
    @ary.paginate(per_page: @per_page, page: @page)
  end

  # move the page index back
  def previous_page
    @page -= 1 unless first_page?
    @ary.paginate(per_page: @per_page, page: @page)
  end
end
