@interface ODCurarePersonalizationResult
- (ODCurarePersonalizationResult)initWithNewPersonalizedModelPath:(id)path currentlyUsedModelPath:(id)modelPath isSelected:(BOOL)selected saveModel:(BOOL)model newPersonalizedModelIdentifier:(id)identifier;
@end

@implementation ODCurarePersonalizationResult

- (ODCurarePersonalizationResult)initWithNewPersonalizedModelPath:(id)path currentlyUsedModelPath:(id)modelPath isSelected:(BOOL)selected saveModel:(BOOL)model newPersonalizedModelIdentifier:(id)identifier
{
  modelCopy = model;
  selectedCopy = selected;
  pathCopy = path;
  modelPathCopy = modelPath;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = ODCurarePersonalizationResult;
  v15 = [(ODCurarePersonalizationResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    [(ODCurarePersonalizationResult *)v15 setPersonalizedModelPath:pathCopy];
    [(ODCurarePersonalizationResult *)v16 setCurrentlyUsedModelPath:modelPathCopy];
    [(ODCurarePersonalizationResult *)v16 setNewPersonalizedModelIsSelected:selectedCopy];
    [(ODCurarePersonalizationResult *)v16 setSaveNewPersonalizedModel:modelCopy];
    [(ODCurarePersonalizationResult *)v16 setPersonalizedModelIdentifier:identifierCopy];
  }

  return v16;
}

@end