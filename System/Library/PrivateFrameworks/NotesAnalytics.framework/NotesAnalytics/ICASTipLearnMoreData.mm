@interface ICASTipLearnMoreData
- (ICASTipLearnMoreData)initWithLearnMoreTipName:(id)name tipFeature:(id)feature;
- (id)toDict;
@end

@implementation ICASTipLearnMoreData

- (ICASTipLearnMoreData)initWithLearnMoreTipName:(id)name tipFeature:(id)feature
{
  nameCopy = name;
  featureCopy = feature;
  v12.receiver = self;
  v12.super_class = ICASTipLearnMoreData;
  v9 = [(ICASTipLearnMoreData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_learnMoreTipName, name);
    objc_storeStrong(&v10->_tipFeature, feature);
  }

  return v10;
}

- (id)toDict
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"learnMoreTipName";
  learnMoreTipName = [(ICASTipLearnMoreData *)self learnMoreTipName];
  if (learnMoreTipName)
  {
    learnMoreTipName2 = [(ICASTipLearnMoreData *)self learnMoreTipName];
  }

  else
  {
    learnMoreTipName2 = objc_opt_new();
  }

  v5 = learnMoreTipName2;
  v11[1] = @"tipFeature";
  v12[0] = learnMoreTipName2;
  tipFeature = [(ICASTipLearnMoreData *)self tipFeature];
  if (tipFeature)
  {
    tipFeature2 = [(ICASTipLearnMoreData *)self tipFeature];
  }

  else
  {
    tipFeature2 = objc_opt_new();
  }

  v8 = tipFeature2;
  v12[1] = tipFeature2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

@end