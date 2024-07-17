# spec/models/task_spec.rb
require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'validations' do
    it 'validates presence of priority' do
      task = Task.new(priority: nil)
      expect(task).not_to be_valid
      expect(task.errors[:priority]).to include("can't be blank")
    end
  end

  describe 'enums' do
    it 'defines the correct enum values for priority' do
      expect(Task.priorities).to eq({"low" => 0, "medium" => 1, "high" => 2})
    end

    it 'allows valid priority values' do
      task = Task.new(priority: :low)
      expect(task).to be_valid

      task.priority = :medium
      expect(task).to be_valid

      task.priority = :high
      expect(task).to be_valid
    end

    it 'does not allow invalid priority values' do
      expect { Task.new(priority: :invalid) }.to raise_error(ArgumentError)
    end
  end
end
