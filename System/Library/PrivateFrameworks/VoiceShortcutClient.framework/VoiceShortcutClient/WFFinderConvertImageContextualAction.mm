@interface WFFinderConvertImageContextualAction
- (WFFinderConvertImageContextualAction)init;
- (id)copyWithFormat:(unint64_t)format resizeSize:(unint64_t)size preserveMetadata:(BOOL)metadata;
@end

@implementation WFFinderConvertImageContextualAction

- (id)copyWithFormat:(unint64_t)format resizeSize:(unint64_t)size preserveMetadata:(BOOL)metadata
{
  metadataCopy = metadata;
  v23[3] = *MEMORY[0x1E69E9840];
  v9 = [WFContextualActionParameter alloc];
  v10 = @"JPEG";
  if (format == 1)
  {
    v10 = @"PNG";
  }

  if (format == 2)
  {
    v10 = @"HEIF";
  }

  v11 = v10;
  v12 = [(WFContextualActionParameter *)v9 initWithType:@"WFNumberContentItem" displayString:0 wfParameterKey:@"WFFileFormat" wfSerializedRepresentation:v11];

  v13 = [WFContextualActionParameter alloc];
  if (size > 2)
  {
    v14 = @"Small";
  }

  else
  {
    v14 = off_1E7B02CC0[size];
  }

  v15 = v14;
  v16 = [(WFContextualActionParameter *)v13 initWithType:@"WFNumberContentItem" displayString:0 wfParameterKey:@"WFSize" wfSerializedRepresentation:v15];

  v17 = [WFContextualActionParameter alloc];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:metadataCopy];
  v19 = [(WFContextualActionParameter *)v17 initWithType:@"WFNumberContentItem" displayString:0 wfParameterKey:@"WFPreserveMetadata" wfSerializedRepresentation:v18];

  v23[0] = v12;
  v23[1] = v16;
  v23[2] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v21 = [(WFContextualAction *)self copyWithParameters:v20];

  return v21;
}

- (WFFinderConvertImageContextualAction)init
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = WFLocalizedString(@"Convert Image");
  v4 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6982E30]];
  v5 = [WFContextualActionFilteringBehavior filteringWithMatchingTypes:v4 predicate:0];

  v6 = [[WFContextualActionParameter alloc] initWithType:@"WFNumberContentItem" displayString:0 wfParameterKey:@"WFSize" askEachTime:1];
  v13[0] = v6;
  v7 = [[WFContextualActionParameter alloc] initWithType:@"WFNumberContentItem" displayString:0 wfParameterKey:@"WFFileFormat" askEachTime:1];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v9 = [WFContextualActionIcon iconWithSystemName:@"photo.on.rectangle.angled"];
  LOBYTE(v12) = 0;
  v10 = [(WFContextualAction *)self initWithIdentifier:@"is.workflow.actions.image.convert.finder" wfActionIdentifier:@"is.workflow.actions.image.convert.finder" type:0 correspondingSystemActionType:9 associatedAppBundleIdentifier:@"com.apple.mobileslideshow" resultFileOperation:1 alternate:v12 filteringBehavior:v5 parameters:v8 displayString:v3 title:v3 subtitle:0 icon:v9, v13[0]];

  return v10;
}

@end