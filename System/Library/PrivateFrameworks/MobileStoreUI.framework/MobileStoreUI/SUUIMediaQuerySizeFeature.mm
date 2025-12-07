@interface SUUIMediaQuerySizeFeature
+ (BOOL)supportsFeatureName:(id)name;
- (BOOL)evaluateWithValues:(id)values;
- (SUUIMediaQuerySizeFeature)initWithFeatureName:(id)name value:(id)value;
- (id)description;
- (id)requiredKeys;
@end

@implementation SUUIMediaQuerySizeFeature

- (SUUIMediaQuerySizeFeature)initWithFeatureName:(id)name value:(id)value
{
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = SUUIMediaQuerySizeFeature;
  v7 = [(SUUIMediaQueryFeature *)&v10 initWithFeatureName:name value:valueCopy];
  if (v7)
  {
    [valueCopy floatValue];
    v7->_value = v8;
  }

  return v7;
}

+ (BOOL)supportsFeatureName:(id)name
{
  nameCopy = name;
  if (objc_msgSend_isEqualToString_(nameCopy) & 1) != 0 || (objc_msgSend_isEqualToString_(nameCopy) & 1) != 0 || (objc_msgSend_isEqualToString_(nameCopy) & 1) != 0 || (objc_msgSend_isEqualToString_(nameCopy) & 1) != 0 || (objc_msgSend_isEqualToString_(nameCopy))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(nameCopy);
  }

  return isEqualToString;
}

- (BOOL)evaluateWithValues:(id)values
{
  valuesCopy = values;
  featureName = [(SUUIMediaQueryFeature *)self featureName];
  if (!objc_msgSend_isEqualToString_(featureName))
  {
    if (objc_msgSend_isEqualToString_(featureName))
    {
      v10 = 0x286AECB20;
LABEL_6:
      v7 = [valuesCopy objectForKey:v10];
      [v7 floatValue];
      v9 = self->_value >= v11;
      goto LABEL_10;
    }

    if (objc_msgSend_isEqualToString_(featureName))
    {
      v12 = 0x286AECB20;
    }

    else
    {
      if (objc_msgSend_isEqualToString_(featureName))
      {
        v6 = 0x286AECA60;
        goto LABEL_3;
      }

      if (objc_msgSend_isEqualToString_(featureName))
      {
        v10 = 0x286AECA60;
        goto LABEL_6;
      }

      if (!objc_msgSend_isEqualToString_(featureName))
      {
        v9 = 0;
        goto LABEL_11;
      }

      v12 = 0x286AECA60;
    }

    v7 = [valuesCopy objectForKey:v12];
    v9 = [v7 longValue] == self->_value;
    goto LABEL_10;
  }

  v6 = 0x286AECB20;
LABEL_3:
  v7 = [valuesCopy objectForKey:v6];
  [v7 floatValue];
  v9 = self->_value <= v8;
LABEL_10:

LABEL_11:
  return v9;
}

- (id)requiredKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  featureName = [(SUUIMediaQueryFeature *)self featureName];
  if ((objc_msgSend_isEqualToString_(featureName) & 1) != 0 || (objc_msgSend_isEqualToString_(featureName) & 1) != 0 || objc_msgSend_isEqualToString_(featureName))
  {
    v7[0] = 0x286AECB20;
    v3 = v7;
  }

  else
  {
    v6 = 0x286AECA60;
    v3 = &v6;
  }

  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SUUIMediaQuerySizeFeature;
  v4 = [(SUUIMediaQuerySizeFeature *)&v8 description];
  featureName = [(SUUIMediaQueryFeature *)self featureName];
  v6 = [v3 stringWithFormat:@"%@: [%@, %.0f]", v4, featureName, *&self->_value];

  return v6;
}

@end