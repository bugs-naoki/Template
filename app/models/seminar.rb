class Seminar < ApplicationRecord
  belongs_to :seminar_target
  belongs_to :seminar_holding_method
end
