@interface PKInkAttributesPickerView
@end

@implementation PKInkAttributesPickerView

void __50___PKInkAttributesPickerView_angleWeightsToImages__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v2 = [PKToolConfiguration _assetNamesByAzimuthForToolWithIdentifier:@"com.apple.ink.reedcalligraphy"];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = MEMORY[0x1E69DCAB8];
        v11 = [v4 objectForKeyedSubscript:{v9, v15}];
        v12 = [v10 imageNamed:v11 inBundle:v1 compatibleWithTraitCollection:0];
        [v3 setObject:v12 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v3];
  v14 = _MergedGlobals_9;
  _MergedGlobals_9 = v13;
}

@end