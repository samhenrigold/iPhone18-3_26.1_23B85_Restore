@interface MIUIRelationshipPickerDataSource
- (MIUIRelationshipPickerDataSource)init;
@end

@implementation MIUIRelationshipPickerDataSource

- (MIUIRelationshipPickerDataSource)init
{
  v22[10] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = MIUIRelationshipPickerDataSource;
  v2 = [(MIUIRelationshipPickerDataSource *)&v21 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    medicalIDBundle = v2->_medicalIDBundle;
    v2->_medicalIDBundle = v3;

    v5 = [MEMORY[0x277CBDB20] builtinLabelsForProperty:*MEMORY[0x277CBD120]];
    v6 = [v5 mutableCopy];

    v7 = [v6 indexOfObject:*MEMORY[0x277CBD6F0]];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL || (v8 = v7, v7 == [v6 count] - 1))
    {
      [v6 addObject:*MEMORY[0x277CBD6D8]];
    }

    else
    {
      [v6 insertObject:*MEMORY[0x277CBD6D8] atIndex:v8 + 1];
    }

    v20 = [(NSBundle *)v2->_medicalIDBundle localizedStringForKey:@"relationship_roommate" value:&stru_2869C2C28 table:0];
    v22[0] = v20;
    v19 = [(NSBundle *)v2->_medicalIDBundle localizedStringForKey:@"relationship_doctor" value:&stru_2869C2C28 table:0];
    v22[1] = v19;
    v18 = [(NSBundle *)v2->_medicalIDBundle localizedStringForKey:@"relationship_emergency" value:&stru_2869C2C28 table:0];
    v22[2] = v18;
    v9 = [(NSBundle *)v2->_medicalIDBundle localizedStringForKey:@"relationship_family_member" value:&stru_2869C2C28 table:0];
    v22[3] = v9;
    v10 = [(NSBundle *)v2->_medicalIDBundle localizedStringForKey:@"relationship_teacher" value:&stru_2869C2C28 table:0];
    v22[4] = v10;
    v11 = [(NSBundle *)v2->_medicalIDBundle localizedStringForKey:@"relationship_caretaker" value:&stru_2869C2C28 table:0];
    v22[5] = v11;
    v12 = [(NSBundle *)v2->_medicalIDBundle localizedStringForKey:@"relationship_guardian" value:&stru_2869C2C28 table:0];
    v22[6] = v12;
    v13 = [(NSBundle *)v2->_medicalIDBundle localizedStringForKey:@"relationship_social_worker" value:&stru_2869C2C28 table:0];
    v22[7] = v13;
    v14 = [(NSBundle *)v2->_medicalIDBundle localizedStringForKey:@"relationship_school" value:&stru_2869C2C28 table:0];
    v22[8] = v14;
    v15 = [(NSBundle *)v2->_medicalIDBundle localizedStringForKey:@"relationship_daycare" value:&stru_2869C2C28 table:0];
    v22[9] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:10];
    [v6 addObjectsFromArray:v16];

    [(MIUIRelationshipPickerDataSource *)v2 setRelationships:v6];
  }

  return v2;
}

@end