require 'spec_helper'
require 'gems-cli/paginator'

describe Paginator do
  subject { Paginator.new(ary: (1..100).to_a) }

  describe '#first_page?' do
    it 'returns true if on the first page' do
      expect(subject.first_page?).to eq(true)
    end
  end

  describe '#last_page?' do
    it 'returns true if on the last page' do
      subject.page = subject.pages
      expect(subject.last_page?).to eq(true)
    end
  end

  describe '#first_page' do
    it 'returns 1..10' do
      expect(subject.first_page).to eq((1..10).to_a)
    end

    it 'sets subject.page to 1' do
      subject.first_page
      expect(subject.page).to eq(1)
    end
  end

  describe '#last_page' do
    it 'returns 91..100' do
      expect(subject.last_page).to eq((91..100).to_a)
    end
  end

  describe '#next_page' do
    before { subject.next_page }

    context 'when on page 1' do
      it 'returns 11..20' do
        expect(subject.current_page).to eq((11..20).to_a)
      end

      it 'sets subject.page to 2' do
        expect(subject.page).to eq(2)
      end
    end

    context 'when on page 2' do
      subject { Paginator.new(ary: (1..100).to_a, page: 2) }

      before { subject.next_page }

      it 'returns 21..30' do
        expect(subject.current_page).to eq((21..30).to_a)
      end

      it 'sets subject.page to 3' do
        expect(subject.page).to eq(3)
      end
    end
  end

  describe '#previous_page' do
    before { subject.previous_page }

    context 'when on page 1' do
      it 'returns 1..10' do
        expect(subject.current_page).to eq((1..10).to_a)
      end

      it 'sets subject.page to 1' do
        expect(subject.page).to eq(1)
      end
    end

    context 'when on page 2' do
      subject { Paginator.new(ary: (1..100).to_a, page: 2) }

      it 'returns 1..10' do
        expect(subject.current_page).to eq((1..10).to_a)
      end

      it 'sets subject.page to 1' do
        expect(subject.page).to eq(1)
      end
    end
  end
end
