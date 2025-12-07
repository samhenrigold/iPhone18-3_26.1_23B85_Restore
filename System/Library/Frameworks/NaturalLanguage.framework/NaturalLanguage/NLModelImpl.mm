@interface NLModelImpl
- (NSDictionary)trainingInfo;
- (id)predictedLabelArraysForTokenArrays:(id)arrays;
@end

@implementation NLModelImpl

- (NSDictionary)trainingInfo
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"NumberOfTrainingInstances";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NLModelImpl numberOfTrainingInstances](self, "numberOfTrainingInstances")}];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (id)predictedLabelArraysForTokenArrays:(id)arrays
{
  v18 = *MEMORY[0x1E69E9840];
  arraysCopy = arrays;
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = arraysCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NLModelImpl *)self predictedLabelsForTokens:*(*(&v13 + 1) + 8 * i), v13];
        [array addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

@end