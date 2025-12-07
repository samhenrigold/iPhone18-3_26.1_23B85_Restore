@interface INCodableAttributeMetadata(Workflow)
- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:;
@end

@implementation INCodableAttributeMetadata(Workflow)

- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  placeholder = [self placeholder];
  if (placeholder && (v6 = placeholder, [v4 objectForKey:@"Placeholder"], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v12 = @"Placeholder";
    placeholder2 = [self placeholder];
    v13[0] = placeholder2;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v8 = [v4 definitionByAddingEntriesInDictionary:v10];
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

@end