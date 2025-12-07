@interface _TDLayerStackFilterHelper
- (BOOL)allowKey:(id)key;
- (_TDLayerStackFilterHelper)init;
- (void)dealloc;
- (void)establishExclusionsWithHelper:(id)helper idioms:(id)idioms sizeClasses:(id)classes;
@end

@implementation _TDLayerStackFilterHelper

- (_TDLayerStackFilterHelper)init
{
  v4.receiver = self;
  v4.super_class = _TDLayerStackFilterHelper;
  v2 = [(_TDLayerStackFilterHelper *)&v4 init];
  if (v2)
  {
    v2->_excludedIdioms = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_excludedSubtypes = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_excludedScaleFactors = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_excludedHorizontalSizeClasses = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_excludedVerticalSizeClasses = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_excludedDirections = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_excludedLayers = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_excludedPresentationStates = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_excludedSizes = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_excludedStates = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_excludedValues = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v2;
}

- (void)establishExclusionsWithHelper:(id)helper idioms:(id)idioms sizeClasses:(id)classes
{
  v25 = *MEMORY[0x277D85DE8];
  if ([-[TDLayerStackRenditionSpec keySpec](self->_layerStackRendition keySpec])
  {
    v8 = [-[TDLayerStackRenditionSpec keySpec](self->_layerStackRendition "keySpec")];
    if (v8 == [idioms objectAtIndex:0])
    {
      v14 = [objc_msgSend(objc_msgSend(helper "layerStackRendition")];
      if (v14 != [idioms objectAtIndex:0])
      {
        -[NSMutableArray addObject:](self->_excludedIdioms, "addObject:", [objc_msgSend(objc_msgSend(helper "layerStackRendition")]);
      }
    }

    else if (![(NSMutableArray *)self->_excludedIdioms count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = [idioms countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(idioms);
            }

            v13 = *(*(&v20 + 1) + 8 * i);
            if (v13 != [-[TDLayerStackRenditionSpec keySpec](self->_layerStackRendition "keySpec")])
            {
              [(NSMutableArray *)self->_excludedIdioms addObject:v13];
            }
          }

          v10 = [idioms countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v10);
      }
    }
  }

  if ([-[TDLayerStackRenditionSpec keySpec](self->_layerStackRendition "keySpec")])
  {
    v15 = [-[TDLayerStackRenditionSpec keySpec](self->_layerStackRendition "keySpec")];
    if (v15 != [idioms objectAtIndex:0])
    {
      v16 = [-[TDLayerStackRenditionSpec keySpec](self->_layerStackRendition "keySpec")];
      if (v16 == [objc_msgSend(objc_msgSend(helper "layerStackRendition")])
      {
        v18 = [objc_msgSend(objc_msgSend(helper "layerStackRendition")];
        if (v18)
        {
          v19 = v18;
          if (v18 != [-[TDLayerStackRenditionSpec keySpec](self->_layerStackRendition "keySpec")])
          {
            -[NSMutableArray addObject:](self->_excludedSubtypes, "addObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19]);
          }
        }
      }
    }
  }

  v17 = [objc_msgSend(objc_msgSend(helper "layerStackRendition")];
  if ([-[TDLayerStackRenditionSpec keySpec](self->_layerStackRendition "keySpec")] != v17)
  {
    -[NSMutableArray addObject:](self->_excludedScaleFactors, "addObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17]);
  }
}

- (BOOL)allowKey:(id)key
{
  v30 = *MEMORY[0x277D85DE8];
  if (![key idiom] || (-[NSMutableArray containsObject:](self->_excludedIdioms, "containsObject:", objc_msgSend(key, "idiom")) & 1) == 0)
  {
    if ([key subtype] && (v26 = 0u, v27 = 0u, v24 = 0u, v25 = 0u, excludedSubtypes = self->_excludedSubtypes, (v7 = -[NSMutableArray countByEnumeratingWithState:objects:count:](excludedSubtypes, "countByEnumeratingWithState:objects:count:", &v24, v29, 16)) != 0))
    {
      v8 = v7;
      v9 = *v25;
LABEL_8:
      v10 = 0;
      while (1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(excludedSubtypes);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        subtype = [key subtype];
        if (subtype == [v11 unsignedIntValue])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [(NSMutableArray *)excludedSubtypes countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v8)
          {
            goto LABEL_8;
          }

          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      excludedScaleFactors = self->_excludedScaleFactors;
      v14 = [(NSMutableArray *)excludedScaleFactors countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v21;
LABEL_16:
        v17 = 0;
        while (1)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(excludedScaleFactors);
          }

          v18 = *(*(&v20 + 1) + 8 * v17);
          scaleFactor = [key scaleFactor];
          if (scaleFactor == [v18 unsignedIntValue])
          {
            break;
          }

          if (v15 == ++v17)
          {
            v15 = [(NSMutableArray *)excludedScaleFactors countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v15)
            {
              goto LABEL_16;
            }

            goto LABEL_22;
          }
        }
      }

      else
      {
LABEL_22:
        if ((![key sizeClassVertical] || (-[NSMutableArray containsObject:](self->_excludedVerticalSizeClasses, "containsObject:", objc_msgSend(key, "sizeClassVertical")) & 1) == 0) && (!objc_msgSend(key, "direction") || (-[NSMutableArray containsObject:](self->_excludedDirections, "containsObject:", objc_msgSend(key, "direction")) & 1) == 0) && (!objc_msgSend(key, "layer") || (-[NSMutableArray containsObject:](self->_excludedLayers, "containsObject:", objc_msgSend(key, "layer")) & 1) == 0) && (!objc_msgSend(key, "presentationState") || (-[NSMutableArray containsObject:](self->_excludedPresentationStates, "containsObject:", objc_msgSend(key, "presentationState")) & 1) == 0) && (!objc_msgSend(key, "size") || (-[NSMutableArray containsObject:](self->_excludedSizes, "containsObject:", objc_msgSend(key, "size")) & 1) == 0) && (!objc_msgSend(key, "state") || (-[NSMutableArray containsObject:](self->_excludedStates, "containsObject:", objc_msgSend(key, "state")) & 1) == 0) && (!objc_msgSend(key, "value") || (-[NSMutableArray containsObject:](self->_excludedValues, "containsObject:", objc_msgSend(key, "value")) & 1) == 0))
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _TDLayerStackFilterHelper;
  [(_TDLayerStackFilterHelper *)&v3 dealloc];
}

@end