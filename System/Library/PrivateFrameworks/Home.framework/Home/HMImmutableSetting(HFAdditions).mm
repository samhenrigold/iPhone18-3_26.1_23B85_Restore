@interface HMImmutableSetting(HFAdditions)
- (id)homeKitAccessorySettingValueForRawValue:()HFAdditions;
- (id)value;
@end

@implementation HMImmutableSetting(HFAdditions)

- (id)value
{
  objc_opt_class();
  selfCopy = self;
  if (objc_opt_isKindOfClass())
  {
    v4 = selfCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  objc_opt_class();
  v6 = selfCopy;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  v9 = v6;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  objc_opt_class();
  v12 = v9;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  objc_opt_class();
  v15 = v12;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  objc_opt_class();
  v18 = v15;
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (v5)
  {
    stringValue = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "BOOLValue")}];
LABEL_31:
    v22 = stringValue;
    goto LABEL_32;
  }

  if (v8)
  {
    stringValue = [v8 stringValue];
    goto LABEL_31;
  }

  if (v11)
  {
    stringValue = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "integerValue")}];
    goto LABEL_31;
  }

  if (v14)
  {
    stringValue = [v14 stringListValue];
    goto LABEL_31;
  }

  if (v17)
  {
    stringValue = [v17 languageValues];
    goto LABEL_31;
  }

  if (v20)
  {
    stringValue = [v20 languageValue];
    goto LABEL_31;
  }

  v22 = 0;
LABEL_32:

  return v22;
}

- (id)homeKitAccessorySettingValueForRawValue:()HFAdditions
{
  v4 = a3;
  objc_opt_class();
  selfCopy = self;
  if (objc_opt_isKindOfClass())
  {
    v6 = selfCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  objc_opt_class();
  v8 = selfCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  objc_opt_class();
  v11 = v8;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  objc_opt_class();
  v14 = v4;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  objc_opt_class();
  v17 = v14;
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (v16 | v19)
  {
    if (v7)
    {
      v20 = [objc_alloc(MEMORY[0x277CD1DA8]) initWithBoolValue:{objc_msgSend(v16, "BOOLValue")}];
LABEL_23:
      v21 = v20;
      goto LABEL_25;
    }

    if (v13)
    {
      v20 = [objc_alloc(MEMORY[0x277CD1DB8]) initWithIntegerValue:{objc_msgSend(v16, "integerValue")}];
      goto LABEL_23;
    }

    if (v10)
    {
      v20 = [objc_alloc(MEMORY[0x277CD1DC8]) initWithStringValue:v19];
      goto LABEL_23;
    }
  }

  v21 = 0;
LABEL_25:

  return v21;
}

@end