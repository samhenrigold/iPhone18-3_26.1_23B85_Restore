@interface ICASSwitchSelectionData
- (ICASSwitchSelectionData)initWithSwitchSelectionType:(id)type;
- (id)toDict;
@end

@implementation ICASSwitchSelectionData

- (ICASSwitchSelectionData)initWithSwitchSelectionType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = ICASSwitchSelectionData;
  v6 = [(ICASSwitchSelectionData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_switchSelectionType, type);
  }

  return v7;
}

- (id)toDict
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"switchSelectionType";
  switchSelectionType = [(ICASSwitchSelectionData *)self switchSelectionType];
  if (switchSelectionType)
  {
    switchSelectionType2 = [(ICASSwitchSelectionData *)self switchSelectionType];
  }

  else
  {
    switchSelectionType2 = objc_opt_new();
  }

  v5 = switchSelectionType2;
  v9[0] = switchSelectionType2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

@end