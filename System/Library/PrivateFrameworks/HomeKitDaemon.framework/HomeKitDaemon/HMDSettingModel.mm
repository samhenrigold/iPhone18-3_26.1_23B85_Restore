@interface HMDSettingModel
+ (id)hmbProperties;
- (BOOL)setSettingValue:(id)value;
- (id)copyWithNewParentModelID:(id)d;
@end

@implementation HMDSettingModel

- (id)copyWithNewParentModelID:(id)d
{
  dCopy = d;
  v5 = [HMDSettingModel alloc];
  hmbModelID = [(HMBModel *)self hmbModelID];
  v7 = [(HMBModel *)v5 initWithModelID:hmbModelID parentModelID:dCopy];

  type = [(HMDSettingModel *)self type];
  [(HMDSettingModel *)v7 setType:type];

  properties = [(HMDSettingModel *)self properties];
  [(HMDSettingModel *)v7 setProperties:properties];

  name = [(HMDSettingModel *)self name];
  [(HMDSettingModel *)v7 setName:name];

  numberValue = [(HMDSettingModel *)self numberValue];
  [(HMDSettingModel *)v7 setNumberValue:numberValue];

  stringValue = [(HMDSettingModel *)self stringValue];
  [(HMDSettingModel *)v7 setStringValue:stringValue];

  dataValue = [(HMDSettingModel *)self dataValue];
  [(HMDSettingModel *)v7 setDataValue:dataValue];

  selectionIdentifier = [(HMDSettingModel *)self selectionIdentifier];
  [(HMDSettingModel *)v7 setSelectionIdentifier:selectionIdentifier];

  selectionValue = [(HMDSettingModel *)self selectionValue];
  [(HMDSettingModel *)v7 setSelectionValue:selectionValue];

  return v7;
}

- (BOOL)setSettingValue:(id)value
{
  valueCopy = value;
  type = [valueCopy type];
  if (type <= 2)
  {
    if (type == 1)
    {
      dataValue = [valueCopy dataValue];
      [(HMDSettingModel *)self setDataValue:dataValue];
    }

    else
    {
      if (type != 2)
      {
        v6 = 0;
        goto LABEL_12;
      }

      dataValue = [valueCopy numberValue];
      [(HMDSettingModel *)self setNumberValue:dataValue];
    }

    goto LABEL_11;
  }

  if (type == 3)
  {
    dataValue = [valueCopy stringValue];
    [(HMDSettingModel *)self setStringValue:dataValue];
LABEL_11:

    v6 = 1;
    goto LABEL_12;
  }

  if (type == 4)
  {
    selectionIdentifier = [valueCopy selectionIdentifier];
    [(HMDSettingModel *)self setSelectionIdentifier:selectionIdentifier];

    dataValue = [valueCopy selectionValue];
    [(HMDSettingModel *)self setSelectionValue:dataValue];
    goto LABEL_11;
  }

  v6 = type == 5;
LABEL_12:

  return v6;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_60906 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_60906, &__block_literal_global_60907);
  }

  v3 = hmbProperties__properties_60908;

  return v3;
}

void __32__HMDSettingModel_hmbProperties__block_invoke()
{
  v11[8] = *MEMORY[0x277D85DE8];
  v10[0] = @"type";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v11[0] = v0;
  v10[1] = @"properties";
  v1 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v11[1] = v1;
  v10[2] = @"name";
  v2 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v11[2] = v2;
  v10[3] = @"numberValue";
  v3 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v11[3] = v3;
  v10[4] = @"stringValue";
  v4 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v11[4] = v4;
  v10[5] = @"dataValue";
  v5 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v11[5] = v5;
  v10[6] = @"selectionIdentifier";
  v6 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v11[6] = v6;
  v10[7] = @"selectionValue";
  v7 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v11[7] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:8];
  v9 = hmbProperties__properties_60908;
  hmbProperties__properties_60908 = v8;
}

@end