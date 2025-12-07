@interface AVTPresetStoreDependency
- (AVTPresetStoreDependency)initWithOverridePreset:(id)preset conditionedOnPreset:(id)onPreset;
- (AVTPresetStoreDependency)initWithOverridePreset:(id)preset conditionedOnPreset:(id)onPreset forSpecificPresetIdentifier:(id)identifier;
- (void)addConditionOnPreset:(id)preset;
- (void)addConditionOnPreset:(id)preset forSpecificPresetIdentifier:(id)identifier;
@end

@implementation AVTPresetStoreDependency

- (AVTPresetStoreDependency)initWithOverridePreset:(id)preset conditionedOnPreset:(id)onPreset
{
  presetCopy = preset;
  onPresetCopy = onPreset;
  v14.receiver = self;
  v14.super_class = AVTPresetStoreDependency;
  v9 = [(AVTPresetStoreDependency *)&v14 init];
  if (v9)
  {
    v13 = objc_alloc_init(AVTPresetStoreDependencyCondition);
    [(AVTPresetStoreDependencyCondition *)v13 setPresetOfOtherCategory:?];
    objc_storeStrong(&v9->_overridePreset, preset);
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:? count:?];
    conditions = v9->_conditions;
    v9->_conditions = v10;
  }

  return v9;
}

- (AVTPresetStoreDependency)initWithOverridePreset:(id)preset conditionedOnPreset:(id)onPreset forSpecificPresetIdentifier:(id)identifier
{
  presetCopy = preset;
  onPresetCopy = onPreset;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = AVTPresetStoreDependency;
  v12 = [(AVTPresetStoreDependency *)&v17 init];
  if (v12)
  {
    v16 = objc_alloc_init(AVTPresetStoreDependencyCondition);
    [(AVTPresetStoreDependencyCondition *)v16 setPresetOfOtherCategory:?];
    [(AVTPresetStoreDependencyCondition *)v16 setSpecificPresetIdentifier:?];
    objc_storeStrong(&v12->_overridePreset, preset);
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:? count:?];
    conditions = v12->_conditions;
    v12->_conditions = v13;
  }

  return v12;
}

- (void)addConditionOnPreset:(id)preset
{
  presetCopy = preset;
  v5 = self->_conditions;
  v6 = [NSMutableArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0];
    do
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(8 * i);
        presetOfOtherCategory = [v10 presetOfOtherCategory];
        v12 = presetOfOtherCategory;
        if (presetOfOtherCategory == presetCopy)
        {
          specificPresetIdentifier = [v10 specificPresetIdentifier];

          if (!specificPresetIdentifier)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v7 = [NSMutableArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v7);
  }

  v5 = objc_alloc_init(AVTPresetStoreDependencyCondition);
  [(NSMutableArray *)v5 setPresetOfOtherCategory:?];
  [(NSMutableArray *)self->_conditions addObject:?];
LABEL_12:
}

- (void)addConditionOnPreset:(id)preset forSpecificPresetIdentifier:(id)identifier
{
  presetCopy = preset;
  identifierCopy = identifier;
  v8 = self->_conditions;
  v9 = [NSMutableArray countByEnumeratingWithState:v8 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0];
    do
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (MEMORY[0] != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(8 * i);
        presetOfOtherCategory = [v13 presetOfOtherCategory];
        v15 = presetOfOtherCategory;
        if (presetOfOtherCategory == presetCopy)
        {
          specificPresetIdentifier = [v13 specificPresetIdentifier];
          v17 = [specificPresetIdentifier isEqualToString:?];

          if (v17)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v10 = [NSMutableArray countByEnumeratingWithState:v8 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v10);
  }

  v8 = objc_alloc_init(AVTPresetStoreDependencyCondition);
  [(NSMutableArray *)v8 setPresetOfOtherCategory:?];
  [(NSMutableArray *)v8 setSpecificPresetIdentifier:?];
  [(NSMutableArray *)self->_conditions addObject:?];
LABEL_12:
}

@end