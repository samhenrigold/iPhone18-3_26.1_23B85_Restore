@interface CUIPSLayerEffectsPreset
- (CUIPSLayerEffectsPreset)initWithLayerEffects:(id)effects forScaleFactor:(double)factor;
@end

@implementation CUIPSLayerEffectsPreset

- (CUIPSLayerEffectsPreset)initWithLayerEffects:(id)effects forScaleFactor:(double)factor
{
  selfCopy = self;
  if (effects)
  {
    if (factor > 0.0)
    {
      v18.receiver = self;
      v18.super_class = CUIPSLayerEffectsPreset;
      selfCopy = [(CUIShapeEffectPreset *)&v18 initWithEffectScale:?];
      if (selfCopy)
      {
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v6 = [objc_msgSend(effects "effectList")];
        v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v15;
          while (2)
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v15 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v14 + 1) + 8 * i);
              v13 = 0;
              if ([v11 visible] && (objc_msgSend(v11, "updateLayerEffectPreset:error:", selfCopy, &v13) & 1) == 0 && v13)
              {
                _CUILog(4, "Unable to update layer effect preset: %@", v13);

                return 0;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

  return selfCopy;
}

@end