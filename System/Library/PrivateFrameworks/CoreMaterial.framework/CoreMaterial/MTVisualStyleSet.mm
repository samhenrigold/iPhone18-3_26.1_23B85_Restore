@interface MTVisualStyleSet
+ (id)recipeNameForRecipeFromStyle:(id)style fromStyleSetWithName:(id)name;
- (MTVisualStyleSet)initWithName:(id)name visualStyleSetDescription:(id)description andDescendantDescriptions:(id)descriptions;
- (NSString)description;
- (id)_materialDescriptionForStyle:(id)style withProvidedStyles:(id)styles;
- (id)_newMaterialSettingsForStyle:(id)style withProvidedStyles:(id)styles;
- (id)visualStylingForStyle:(id)style;
@end

@implementation MTVisualStyleSet

+ (id)recipeNameForRecipeFromStyle:(id)style fromStyleSetWithName:(id)name
{
  styleCopy = style;
  nameCopy = name;
  v9 = nameCopy;
  if (styleCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MTVisualStyleSet recipeNameForRecipeFromStyle:a2 fromStyleSetWithName:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [MTVisualStyleSet recipeNameForRecipeFromStyle:a2 fromStyleSetWithName:self];
LABEL_3:
  styleCopy = [MEMORY[0x1E696AEC0] stringWithFormat:v9, styleCopy];

  return styleCopy;
}

- (MTVisualStyleSet)initWithName:(id)name visualStyleSetDescription:(id)description andDescendantDescriptions:(id)descriptions
{
  v63 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  descriptionCopy = description;
  descriptionsCopy = descriptions;
  v61.receiver = self;
  v61.super_class = MTVisualStyleSet;
  v11 = [(MTVisualStyleSet *)&v61 init];
  if (v11)
  {
    v53 = nameCopy;
    v12 = [nameCopy copy];
    visualStyleSetName = v11->_visualStyleSetName;
    v11->_visualStyleSetName = v12;

    v14 = [descriptionCopy objectForKey:?];
    v11->_visualStyleSetVersion = [v14 integerValue];

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    visualStylesToStyleNames = v11->_visualStylesToStyleNames;
    v11->_visualStylesToStyleNames = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    styleNamesToVisualStylings = v11->_styleNamesToVisualStylings;
    v11->_styleNamesToVisualStylings = v17;

    v59 = descriptionCopy;
    v19 = [descriptionCopy objectForKey:?];
    v20 = objc_alloc(MEMORY[0x1E695DFA8]);
    v54 = v19;
    allKeys = [v19 allKeys];
    v22 = [v20 initWithArray:?];

    v58 = descriptionsCopy;
    obj = [descriptionsCopy valueForKey:?];
    v23 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v23)
    {
      v24 = v23;
      v25 = MEMORY[0];
      do
      {
        for (i = 0; i != v24; i = (i + 1))
        {
          if (MEMORY[0] != v25)
          {
            objc_enumerationMutation(obj);
          }

          allKeys2 = [*(8 * i) allKeys];
          [v22 addObjectsFromArray:?];
        }

        v24 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v24);
    }

    v56 = v22;
    v28 = [v56 countByEnumeratingWithState:? objects:? count:?];
    if (v28)
    {
      v29 = v28;
      v30 = MEMORY[0];
      do
      {
        for (j = 0; j != v29; j = (j + 1))
        {
          if (MEMORY[0] != v30)
          {
            objc_enumerationMutation(v56);
          }

          v32 = [v54 objectForKey:?];
          v33 = [obj valueForKey:?];
          v34 = v33;
          if (v32 || [v33 count])
          {
            v35 = [MTCoreMaterialVisualStyling initWithVisualStyleSet:"initWithVisualStyleSet:styleName:description:andDescendantDescriptions:" styleName:? description:? andDescendantDescriptions:?];
            if (v35)
            {
              v36 = v35;
              [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
            }
          }
        }

        v29 = [v56 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v29);
    }

    v38 = MTAllOrdinalVisualStyles(v37);
    v39 = MTAllPlatformColorVisualStyles(v38);
    v40 = [v38 arrayByAddingObjectsFromArray:?];

    v55 = v40;
    v41 = [v40 countByEnumeratingWithState:? objects:? count:?];
    descriptionsCopy = v58;
    descriptionCopy = v59;
    if (v41)
    {
      v42 = v41;
      v57 = MEMORY[0];
      do
      {
        for (k = 0; k != v42; k = (k + 1))
        {
          if (MEMORY[0] != v57)
          {
            objc_enumerationMutation(v55);
          }

          v62 = descriptionCopy;
          v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
          v45 = [v44 arrayByAddingObjectsFromArray:?];

          v46 = [v45 countByEnumeratingWithState:? objects:? count:?];
          if (v46)
          {
            v47 = v46;
            v48 = MEMORY[0];
            do
            {
              for (m = 0; m != v47; m = (m + 1))
              {
                if (MEMORY[0] != v48)
                {
                  objc_enumerationMutation(v45);
                }

                v50 = [*(8 * m) objectForKey:?];
                if (v50)
                {
                  v51 = [(NSMutableDictionary *)v11->_styleNamesToVisualStylings objectForKey:?];

                  if (v51)
                  {
                    [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
                  }
                }
              }

              v47 = [v45 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v47);
          }

          descriptionsCopy = v58;
          descriptionCopy = v59;
        }

        v42 = [v55 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v42);
    }

    nameCopy = v53;
  }

  return v11;
}

- (id)visualStylingForStyle:(id)style
{
  visualStylesToStyleNames = self->_visualStylesToStyleNames;
  styleCopy = style;
  v6 = [(NSMutableDictionary *)visualStylesToStyleNames objectForKey:?];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = styleCopy;
  }

  v9 = v8;

  v10 = [(NSMutableDictionary *)self->_styleNamesToVisualStylings objectForKey:?];

  return v10;
}

- (id)_materialDescriptionForStyle:(id)style withProvidedStyles:(id)styles
{
  stylesCopy = styles;
  v6 = [(MTVisualStyleSet *)self visualStylingForStyle:?];
  v7 = v6;
  if (v6 && (([v6 tintColorDescription], v8 = objc_claimAutoreleasedReturnValue(), v8, v8) || _CanGenerateMaterialDescriptionForFilteringFromVisualStyling(v7)))
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v9 setObject:? forKey:?];
    tintColorDescription = [v7 tintColorDescription];

    if (tintColorDescription)
    {
      tintColorDescription2 = [v7 tintColorDescription];
      [v10 setObject:? forKey:?];
    }

    if (_CanGenerateMaterialDescriptionForFilteringFromVisualStyling(v7))
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v10 setObject:? forKey:?];
      filterType = [v7 filterType];
      v15 = [filterType isEqualToString:?];

      if (v15)
      {
        filterProperties = [v7 filterProperties];
        v17 = [filterProperties objectForKey:?];
        [v13 setObject:? forKey:?];
      }
    }

    [v9 setObject:? forKey:?];
    if (stylesCopy)
    {
      [v9 setObject:? forKey:?];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_newMaterialSettingsForStyle:(id)style withProvidedStyles:(id)styles
{
  styleCopy = style;
  v6 = [MTVisualStyleSet _materialDescriptionForStyle:"_materialDescriptionForStyle:withProvidedStyles:" withProvidedStyles:?];
  if (v6)
  {
    v7 = [MTRecipeMaterialSettings alloc];
    v8 = objc_opt_class();
    visualStyleSetName = [(MTVisualStyleSet *)self visualStyleSetName];
    v10 = [v8 recipeNameForRecipeFromStyle:? fromStyleSetWithName:?];
    v11 = [MTRecipeMaterialSettings initWithRecipeName:v7 andDescription:"initWithRecipeName:andDescription:descendantDescriptions:bundle:" descendantDescriptions:? bundle:?];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:objc_opt_class(), self, self->_visualStyleSetName, self->_visualStyleSetVersion];
  v4 = self->_styleNamesToVisualStylings;
  v5 = [NSMutableDictionary countByEnumeratingWithState:v4 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0];
    do
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(8 * i);
        v10 = [(NSMutableDictionary *)self->_styleNamesToVisualStylings objectForKey:?];
        v11 = v10;
        if (v10)
        {
          [v3 appendFormat:v9, v10];
        }
      }

      v6 = [NSMutableDictionary countByEnumeratingWithState:v4 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v6);
  }

  [v3 appendString:?];

  return v3;
}

+ (void)recipeNameForRecipeFromStyle:(uint64_t)a1 fromStyleSetWithName:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:@"visualStyle" object:? file:? lineNumber:? description:?];
}

+ (void)recipeNameForRecipeFromStyle:(uint64_t)a1 fromStyleSetWithName:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:@"styleSetName" object:? file:? lineNumber:? description:?];
}

@end