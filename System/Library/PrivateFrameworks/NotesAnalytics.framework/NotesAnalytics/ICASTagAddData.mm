@interface ICASTagAddData
- (ICASTagAddData)initWithIsExistingTag:(id)tag tagAddApproach:(id)approach isAutoConversionEnabled:(id)enabled;
- (id)toDict;
@end

@implementation ICASTagAddData

- (ICASTagAddData)initWithIsExistingTag:(id)tag tagAddApproach:(id)approach isAutoConversionEnabled:(id)enabled
{
  tagCopy = tag;
  approachCopy = approach;
  enabledCopy = enabled;
  v15.receiver = self;
  v15.super_class = ICASTagAddData;
  v12 = [(ICASTagAddData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_isExistingTag, tag);
    objc_storeStrong(&v13->_tagAddApproach, approach);
    objc_storeStrong(&v13->_isAutoConversionEnabled, enabled);
  }

  return v13;
}

- (id)toDict
{
  v15[3] = *MEMORY[0x277D85DE8];
  v14[0] = @"isExistingTag";
  isExistingTag = [(ICASTagAddData *)self isExistingTag];
  if (isExistingTag)
  {
    isExistingTag2 = [(ICASTagAddData *)self isExistingTag];
  }

  else
  {
    isExistingTag2 = objc_opt_new();
  }

  v5 = isExistingTag2;
  v15[0] = isExistingTag2;
  v14[1] = @"tagAddApproach";
  tagAddApproach = [(ICASTagAddData *)self tagAddApproach];
  if (tagAddApproach)
  {
    tagAddApproach2 = [(ICASTagAddData *)self tagAddApproach];
  }

  else
  {
    tagAddApproach2 = objc_opt_new();
  }

  v8 = tagAddApproach2;
  v15[1] = tagAddApproach2;
  v14[2] = @"isAutoConversionEnabled";
  isAutoConversionEnabled = [(ICASTagAddData *)self isAutoConversionEnabled];
  if (isAutoConversionEnabled)
  {
    isAutoConversionEnabled2 = [(ICASTagAddData *)self isAutoConversionEnabled];
  }

  else
  {
    isAutoConversionEnabled2 = objc_opt_new();
  }

  v11 = isAutoConversionEnabled2;
  v15[2] = isAutoConversionEnabled2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

@end