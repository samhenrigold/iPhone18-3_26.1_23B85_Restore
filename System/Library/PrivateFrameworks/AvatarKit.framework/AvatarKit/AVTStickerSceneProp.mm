@interface AVTStickerSceneProp
- (AVTStickerSceneProp)initWithRootNode:(id)node scale:(BOOL)scale position:(id)position rotation:(id)rotation renderLast:(id)last palettesDescriptions:modifiers:adjustments:;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryWithTargetPath:(id)path;
- (void)buildNodeForAvatar:(id)avatar withCamera:(id)camera options:(id)options completionHandler:(id)handler;
@end

@implementation AVTStickerSceneProp

- (AVTStickerSceneProp)initWithRootNode:(id)node scale:(BOOL)scale position:(id)position rotation:(id)rotation renderLast:(id)last palettesDescriptions:modifiers:adjustments:
{
  scaleCopy = scale;
  v21 = v8;
  v22 = v9;
  v20 = v7;
  nodeCopy = node;
  v23.receiver = self;
  v23.super_class = AVTStickerSceneProp;
  v17 = [(AVTStickerProp *)&v23 initWithSize:scaleCopy scale:0 position:position renderLast:rotation orientToCamera:last rotation:*MEMORY[0x1E695F060] palettesDescriptions:*(MEMORY[0x1E695F060] + 8) shaderModifiers:v20 adjustments:v21, v22];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_rootNode, node);
    [nodeCopy avt_enableSubdivisionOnHierarchyWithQuality:? animoji:?];
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVTStickerSceneProp alloc];
  rootNode = [(AVTStickerSceneProp *)self rootNode];
  [(AVTStickerProp *)self scale];
  [(AVTStickerProp *)self position];
  [(AVTStickerProp *)self rotation];
  [(AVTStickerProp *)self renderLast];
  palettesDescriptions = [(AVTStickerProp *)self palettesDescriptions];
  shaderModifiers = [(AVTStickerProp *)self shaderModifiers];
  adjustments = [(AVTStickerProp *)self adjustments];
  v9 = [AVTStickerSceneProp initWithRootNode:v4 scale:"initWithRootNode:scale:position:rotation:renderLast:palettesDescriptions:modifiers:adjustments:" position:? rotation:? renderLast:? palettesDescriptions:? modifiers:? adjustments:?];

  return v9;
}

- (void)buildNodeForAvatar:(id)avatar withCamera:(id)camera options:(id)options completionHandler:(id)handler
{
  avatarCopy = avatar;
  cameraCopy = camera;
  optionsCopy = options;
  handlerCopy = handler;
  node = [(AVTStickerProp *)self node];

  if (!node)
  {
    rootNode = [(AVTStickerSceneProp *)self rootNode];
    [(AVTStickerProp *)self setNode:?];
  }

  node2 = [(AVTStickerProp *)self node];
  v17 = AVTCloneNodesAndMaterials(node2);

  [(AVTStickerProp *)self position];
  [v17 setPosition:?];
  [(AVTStickerProp *)self rotation];
  [v17 setEulerAngles:?];
  [(AVTStickerProp *)self scale];
  [v17 setScale:?];
  [(AVTStickerProp *)self opacity];
  [v17 setOpacity:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = cameraCopy;
    v18 = avatarCopy;
    adjustments = [(AVTStickerProp *)self adjustments];
    v20 = [adjustments countByEnumeratingWithState:? objects:? count:?];
    if (v20)
    {
      v21 = v20;
      v22 = MEMORY[0];
      do
      {
        for (i = 0; i != v21; i = (i + 1))
        {
          if (MEMORY[0] != v22)
          {
            objc_enumerationMutation(adjustments);
          }

          [*(8 * i) applyAdjustmentIfNeededToNode:v31 forMemoji:? ignoreScaleZ:?];
        }

        v21 = [adjustments countByEnumeratingWithState:? objects:? count:?];
      }

      while (v21);
    }

    [v18 updateMorphVariantsInStickerPropNodeHierarchy:?];
    cameraCopy = v31;
  }

  neckNode = [avatarCopy neckNode];
  [neckNode worldPosition];
  [cameraCopy worldPosition];
  [AVTStickerProp applyCamera:"applyCamera:toNode:distToHead:" toNode:? distToHead:?];

  palettesDescriptions = [(AVTStickerProp *)self palettesDescriptions];
  [AVTStickerProp applyPalettesForAvatar:"applyPalettesForAvatar:toNode:palettesDescriptions:" toNode:? palettesDescriptions:?];

  shaderModifiers = [(AVTStickerProp *)self shaderModifiers];
  v27 = [shaderModifiers countByEnumeratingWithState:? objects:? count:?];
  if (v27)
  {
    v28 = v27;
    v29 = MEMORY[0];
    do
    {
      for (j = 0; j != v28; j = (j + 1))
      {
        if (MEMORY[0] != v29)
        {
          objc_enumerationMutation(shaderModifiers);
        }

        [*(8 * j) applyToMatchedMaterialsOfAvatar:? inHierarchy:? options:? reversionContext:?];
      }

      v28 = [shaderModifiers countByEnumeratingWithState:? objects:? count:?];
    }

    while (v28);
  }

  handlerCopy[2](handlerCopy, v17);
}

- (id)dictionaryWithTargetPath:(id)path
{
  v8.receiver = self;
  v8.super_class = AVTStickerSceneProp;
  v4 = [(AVTStickerProp *)&v8 dictionaryWithTargetPath:path];
  v5 = [v4 mutableCopy];

  [v5 removeObjectForKey:?];
  originalName = [(AVTStickerProp *)self originalName];
  [v5 setObject:? forKeyedSubscript:?];

  return v5;
}

@end