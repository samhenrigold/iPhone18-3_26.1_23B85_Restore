@interface TDEffectRenditionSpec
- (TDEffectComponent)CUIShapeEffectOutputOpacity;
- (TDEffectComponent)CUIShapeEffectShapeOpacity;
- (id)componentOfType:(unsigned int)type;
- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document;
- (id)effectPreset;
- (void)replaceComponentsWithComponentsFromEffectRendition:(id)rendition withDocument:(id)document;
- (void)setComponentsFromEffectPreset:(id)preset withDocument:(id)document;
@end

@implementation TDEffectRenditionSpec

- (void)setComponentsFromEffectPreset:(id)preset withDocument:(id)document
{
  effectCount = [preset effectCount];
  v10 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:6];
  if (effectCount)
  {
    for (i = 0; i != effectCount; ++i)
    {
      v9 = [document newObjectForEntity:@"EffectComponent"];
      [v9 setEffectParametersFromPreset:preset atIndex:i withDocument:document];
      [v10 addObject:v9];
    }
  }

  [(TDEffectRenditionSpec *)self setComponents:v10];
}

- (id)effectPreset
{
  v22 = *MEMORY[0x277D85DE8];
  [-[TDEffectRenditionSpec effectScale](self "effectScale")];
  v4 = [objc_alloc(MEMORY[0x277D026D8]) initWithEffectScale:v3];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  components = [(TDEffectRenditionSpec *)self components];
  v6 = [components countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(components);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        isEnabled = [v11 isEnabled];
        v13 = [objc_msgSend(v11 "effectType")];
        if (v13 == 1180787813 || v13 == 1397715043 || isEnabled != 0)
        {
          [v11 updatePresetParameters:v4 atIndex:v8++];
        }
      }

      v7 = [components countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)replaceComponentsWithComponentsFromEffectRendition:(id)rendition withDocument:(id)document
{
  v43 = *MEMORY[0x277D85DE8];
  obj = [rendition components];
  if ([obj count])
  {
    components = [(TDEffectRenditionSpec *)self components];
    v25 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(components, "count")}];
    array = [MEMORY[0x277CBEB18] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v8 = [components countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v37;
      do
      {
        v11 = 0;
        do
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(components);
          }

          [array addObject:*(*(&v36 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [components countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v9);
    }

    [(TDEffectRenditionSpec *)self removeComponents:components];
    [document deleteObjects:array];
    [objc_msgSend(document "managedObjectContext")];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v26 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v26)
    {
      v23 = *v33;
      selfCopy = self;
      do
      {
        v12 = 0;
        do
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v32 + 1) + 8 * v12);
          v14 = [document newObjectForEntity:@"EffectComponent"];
          v27 = v13;
          parameters = [v13 parameters];
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v16 = [parameters countByEnumeratingWithState:&v28 objects:v40 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v29;
            do
            {
              v19 = 0;
              do
              {
                if (*v29 != v18)
                {
                  objc_enumerationMutation(parameters);
                }

                v20 = *(*(&v28 + 1) + 8 * v19);
                v21 = [document newObjectForEntity:@"EffectParameterValue"];
                [v21 setIntValue:{objc_msgSend(v20, "intValue")}];
                [v21 setFloatValue:{objc_msgSend(v20, "floatValue")}];
                [v21 setColorValue:{objc_msgSend(v20, "colorValue")}];
                [v21 setAngleValue:{objc_msgSend(v20, "angleValue")}];
                [v21 setParameterType:{objc_msgSend(v20, "parameterType")}];
                [v14 addParametersObject:v21];

                ++v19;
              }

              while (v17 != v19);
              v17 = [parameters countByEnumeratingWithState:&v28 objects:v40 count:16];
            }

            while (v17);
          }

          [v14 setEffectType:{objc_msgSend(v27, "effectType")}];
          [v14 setIsEnabled:{objc_msgSend(v27, "isEnabled")}];
          self = selfCopy;
          [v14 setRendition:selfCopy];
          [v25 addObject:v14];

          ++v12;
        }

        while (v12 != v26);
        v26 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v26);
    }

    [(TDEffectRenditionSpec *)self addComponents:v25];
  }
}

- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document
{
  v7 = [(TDEffectRenditionSpec *)self effectPreset:compression];
  v8 = objc_alloc(MEMORY[0x277D02668]);
  [v7 effectScale];
  v10 = [v8 initWithShapeEffectPreset:v7 forScaleFactor:v9];
  [v10 setTargetPlatform:{objc_msgSend(document, "targetPlatform")}];
  [v10 setName:{objc_msgSend(objc_msgSend(-[TDEffectRenditionSpec production](self, "production"), "partDefinition"), "name")}];
  [v10 setColorSpaceID:1];
  [v10 setRenditionProperties:{-[TDRenditionSpec propertiesAsDictionary](self, "propertiesAsDictionary")}];
  v11 = [v10 CSIRepresentationWithCompression:0];

  return v11;
}

- (id)componentOfType:(unsigned int)type
{
  v17 = *MEMORY[0x277D85DE8];
  if (type != 1397715043 && type != 1180787813)
  {
    return 0;
  }

  components = [(TDEffectRenditionSpec *)self components];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [components countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v13;
LABEL_8:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(components);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if ([objc_msgSend(v10 "effectType")] == type)
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [components countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 0;
      if (v7)
      {
        goto LABEL_8;
      }

      return v10;
    }
  }
}

- (TDEffectComponent)CUIShapeEffectShapeOpacity
{
  v2 = [(TDEffectRenditionSpec *)self componentOfType:1397715043];

  return v2;
}

- (TDEffectComponent)CUIShapeEffectOutputOpacity
{
  v2 = [(TDEffectRenditionSpec *)self componentOfType:1180787813];

  return v2;
}

@end