# == Schema Information
#
# Table name: quests
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  location    :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'rails_helper'

RSpec.describe Quest, type: :model do
  describe "quest relations" do
    it "lets a gears belong to a quest" do
      quest = Quest.create(title: "Quest1")

      gear_1 = Gear.create(
        name: "quickdraw",
        description: "yellow and black",
        quest: quest,
      )
      gear_2 = Gear.create(
        name: "Carabiner",
        description: "blue",
        quest: quest,
      )

      expect(quest.gears.map(&:id)).to eq([gear_1.id, gear_2.id])
    end
  end
end
