require 'will_paginate/array'

class Paginator
  attr_reader :pages, :total_entries
  attr_accessor :ary, :per_page, :page, :paged_results

  def initialize(args={})
    @ary = args[:ary] || Array.new
    @page = 1
    @per_page = args[:per_page] || 10
    @paged_results = @ary.paginate(per_page: @per_page)
    @size = @paged_results.total_entries
    @pages = @paged_results.total_pages
  end

  def [] *args
    @ary[*args]
  end

  def calculate_pagination
    @paged_results = @ary.paginate(per_page: @per_page)
    @size = @paged_results.total_entries
    @pages = @paged_results.total_pages
  end

  def last_page?
    @page.eql? @pages
  end

  def first_page?
    @page.eql? 1
  end

  def first_page
    @ary.paginate(per_page: @per_page, page: 1)
  end

  def last_page
    @ary.paginate(per_page: @per_page, page: @pages)
  end

  def current_page
    @ary.paginate(per_page: @per_page, page: @page)
  end

  def next_page
    @page += 1 unless last_page?
    @ary.paginate(per_page: @per_page, page: @page)
  end

  def previous_page
    @page -= 1 unless first_page?
    @ary.paginate(per_page: @per_page, page: @page)
  end
end
