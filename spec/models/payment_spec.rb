require 'rails_helper'

RSpec.describe Payment do
  describe 'validations' do
    it { is_expected.to validate_presence_of :paid }    
  end

  describe 'database columns' do
    it { should have_db_column :paid }
    it { should have_db_column :date_payment }
    it { should have_db_column :student_id } 
  end

  describe 'associations' do
    it { is_expected.to belong_to :student }   
  end
end
