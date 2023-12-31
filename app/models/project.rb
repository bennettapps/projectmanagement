class Project < ApplicationRecord
    has_many :tasks

    def completion_percentage
        tasks.where(complete: true).count * 100 / [tasks.count, 1].max
    end

    def overdue_count
        tasks.select { |t| Date.today > Date.new(t.year, t.month, t.day) && !t.complete }.count
    end
end
