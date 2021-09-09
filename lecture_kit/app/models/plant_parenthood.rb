class PlantParenthood < ActiveRecord::Base

    # checks info before savings any instances and passes in the cap_affection method. Even if the instance is triggered by another class or action
    before_save :cap_affection 

     belongs_to :person
     belongs_to :plant

    
    # def plant_parents
    #     # before ActiveRecord
    #     PlantParent.all.select{|plant_parent| plant_parent == self.plant_parents}
    #     # AR:
    #     id_num = self.plant_parent_id
    #     PlantParent.find(id_num)
    # end

    #  `PlantParenthood#cap_affection`: introduces a cap on the affection value at 5
    def cap_affection 
        # because cap affection is using before_save macro it auto saves into database
        self.affection = 5 if self.affection > 5
    end
end