@interface AVTStickerMorpherOverride
+ (id)morpherOverrideFromDictionary:(id)dictionary;
- (AVTStickerMorpherOverride)initWithNodeNames:(id)names morphTargetName:(id)name weight:(float)weight;
- (void)applyToAvatar:(id)avatar inHierarchy:(id)hierarchy reversionContext:(id)context;
@end

@implementation AVTStickerMorpherOverride

+ (id)morpherOverrideFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:?];
  }

  v7 = v6;

  v8 = [AVTStickerMorpherOverride alloc];
  v9 = [dictionaryCopy objectForKeyedSubscript:?];
  v10 = [dictionaryCopy objectForKeyedSubscript:?];
  [v10 floatValue];
  v11 = [AVTStickerMorpherOverride initWithNodeNames:v8 morphTargetName:"initWithNodeNames:morphTargetName:weight:" weight:?];

  return v11;
}

- (AVTStickerMorpherOverride)initWithNodeNames:(id)names morphTargetName:(id)name weight:(float)weight
{
  namesCopy = names;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = AVTStickerMorpherOverride;
  v11 = [(AVTStickerMorpherOverride *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_nodeNames, names);
    objc_storeStrong(&v12->_morphTargetName, name);
    v12->_weight = weight;
  }

  return v12;
}

- (void)applyToAvatar:(id)avatar inHierarchy:(id)hierarchy reversionContext:(id)context
{
  contextCopy = context;
  v7 = [avatar nodesMatchingStickerPattern:? inHierarchy:? options:? includingDerivedNodes:?];
  v8 = [v7 countByEnumeratingWithState:0 objects:? count:?];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = MEMORY[0];
    do
    {
      for (i = 0; i != v9; i = (i + 1))
      {
        if (MEMORY[0] != v11)
        {
          objc_enumerationMutation(v7);
        }

        morpher = [*(8 * i) morpher];
        if ([morpher _weightIndexForTargetNamed:?] != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (!((contextCopy == 0) | v10 & 1))
          {
            [morpher weightForTargetAtIndex:?];
            v14 = [AVTStickerMorpherOverride initWithNodeNames:"initWithNodeNames:morphTargetName:weight:" morphTargetName:? weight:?];
            [contextCopy saveMorpherOverride:?];

            v10 = 1;
          }

          [morpher setWeight:? forTargetAtIndex:?];
        }
      }

      v9 = [v7 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v9);
  }
}

@end