@interface AVTStickerImageProp
- (AVTStickerImageProp)initWithImageAtPath:(id)path size:(CGSize)size scale:(BOOL)scale position:(BOOL)position renderLast:(id)last orientToCamera:(id)camera rotation:(id)rotation palettesDescriptions:modifiers:adjustments:;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryWithTargetPath:(id)path;
- (void)buildNodeForAvatar:(id)avatar withCamera:(id)camera options:(id)options completionHandler:(id)handler;
@end

@implementation AVTStickerImageProp

- (AVTStickerImageProp)initWithImageAtPath:(id)path size:(CGSize)size scale:(BOOL)scale position:(BOOL)position renderLast:(id)last orientToCamera:(id)camera rotation:(id)rotation palettesDescriptions:modifiers:adjustments:
{
  v26 = v10;
  v27 = v11;
  positionCopy = position;
  scaleCopy = scale;
  v25 = v9;
  height = size.height;
  width = size.width;
  pathCopy = path;
  v28.receiver = self;
  v28.super_class = AVTStickerImageProp;
  v22 = [(AVTStickerProp *)&v28 initWithSize:scaleCopy scale:positionCopy position:last renderLast:camera orientToCamera:rotation rotation:width palettesDescriptions:height shaderModifiers:v25 adjustments:v26, v27];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_imagePath, path);
  }

  return v23;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVTStickerImageProp alloc];
  [(AVTStickerProp *)self size];
  [(AVTStickerProp *)self scale];
  [(AVTStickerProp *)self position];
  [(AVTStickerProp *)self renderLast];
  [(AVTStickerProp *)self orientToCamera];
  [(AVTStickerProp *)self rotation];
  palettesDescriptions = [(AVTStickerProp *)self palettesDescriptions];
  shaderModifiers = [(AVTStickerProp *)self shaderModifiers];
  adjustments = [(AVTStickerProp *)self adjustments];
  v8 = [AVTStickerImageProp initWithImageAtPath:v4 size:"initWithImageAtPath:size:scale:position:renderLast:orientToCamera:rotation:palettesDescriptions:modifiers:adjustments:" scale:? position:? renderLast:? orientToCamera:? rotation:? palettesDescriptions:? modifiers:? adjustments:?];

  return v8;
}

- (void)buildNodeForAvatar:(id)avatar withCamera:(id)camera options:(id)options completionHandler:(id)handler
{
  avatarCopy = avatar;
  cameraCopy = camera;
  optionsCopy = options;
  handlerCopy = handler;
  node = [(AVTStickerProp *)self node];

  v15 = &OBJC_IVAR___AVTARMaskRenderer__horizontalBlurPipelineState;
  if (!node)
  {
    v16 = MEMORY[0x1E69DF338];
    [(AVTStickerProp *)self size];
    [(AVTStickerProp *)self size];
    v17 = [v16 planeWithWidth:? height:?];
    firstMaterial = [v17 firstMaterial];
    v19 = [MEMORY[0x1E69DF330] nodeWithModel:?];
    [(AVTStickerProp *)self position];
    [v19 setPosition:?];
    [(AVTStickerProp *)self rotation];
    [v19 setEulerAngles:?];
    [(AVTStickerProp *)self scale];
    v53 = v20;
    [(AVTStickerProp *)self scale];
    [v19 setScale:?];
    [v19 setCastsShadow:?];
    [(AVTStickerProp *)self opacity];
    [v19 setOpacity:?];
    palettesDescriptions = [(AVTStickerProp *)self palettesDescriptions];
    if (palettesDescriptions && (v22 = palettesDescriptions, -[AVTStickerProp palettesDescriptions](self, "palettesDescriptions"), v53 = firstMaterial, v23 = avatarCopy, v24 = v17, v25 = handlerCopy, v26 = cameraCopy, v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 count], v27, cameraCopy = v26, handlerCopy = v25, v17 = v24, avatarCopy = v23, firstMaterial = v53, v22, v28))
    {
      emission = [v53 emission];
    }

    else
    {
      emission = [firstMaterial diffuse];
    }

    v30 = emission;
    [emission setContents:?];

    [firstMaterial setShadingModel:?];
    [firstMaterial setBlendMode:?];
    [firstMaterial setWritesToDepthBuffer:?];
    [(AVTStickerProp *)self setNode:?];

    v15 = &OBJC_IVAR___AVTARMaskRenderer__horizontalBlurPipelineState;
  }

  node2 = [(AVTStickerProp *)self node];
  v32 = AVTCloneNodesAndMaterials(node2);

  if (!*(&self->super.super.isa + v15[29]))
  {
    model = [v32 model];
    firstMaterial2 = [model firstMaterial];

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    emission2 = [firstMaterial2 emission];
    [emission2 setContents:?];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    diffuse = [firstMaterial2 diffuse];
    [diffuse setContents:?];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v53 = handlerCopy;
    v39 = cameraCopy;
    v40 = avatarCopy;
    adjustments = [(AVTStickerProp *)self adjustments];
    v42 = [adjustments countByEnumeratingWithState:? objects:? count:?];
    if (v42)
    {
      v43 = v42;
      v44 = MEMORY[0];
      do
      {
        for (i = 0; i != v43; i = (i + 1))
        {
          if (MEMORY[0] != v44)
          {
            objc_enumerationMutation(adjustments);
          }

          [*(8 * i) applyAdjustmentIfNeededToNode:v53 forMemoji:? ignoreScaleZ:?];
        }

        v43 = [adjustments countByEnumeratingWithState:? objects:? count:?];
      }

      while (v43);
    }

    cameraCopy = v39;
    handlerCopy = v53;
  }

  neckNode = [avatarCopy neckNode];
  [neckNode worldPosition];
  [cameraCopy worldPosition];
  [AVTStickerProp applyCamera:"applyCamera:toNode:distToHead:" toNode:? distToHead:?];

  palettesDescriptions2 = [(AVTStickerProp *)self palettesDescriptions];
  [AVTStickerProp applyPalettesForAvatar:"applyPalettesForAvatar:toNode:palettesDescriptions:" toNode:? palettesDescriptions:?];

  shaderModifiers = [(AVTStickerProp *)self shaderModifiers];
  v49 = [shaderModifiers countByEnumeratingWithState:? objects:? count:?];
  if (v49)
  {
    v50 = v49;
    v51 = MEMORY[0];
    do
    {
      for (j = 0; j != v50; j = (j + 1))
      {
        if (MEMORY[0] != v51)
        {
          objc_enumerationMutation(shaderModifiers);
        }

        [*(8 * j) applyToAllMaterialsOfNode:? options:? reversionContext:?];
      }

      v50 = [shaderModifiers countByEnumeratingWithState:? objects:? count:?];
    }

    while (v50);
  }

  (*(handlerCopy + 2))(handlerCopy, v32);
}

- (id)dictionaryWithTargetPath:(id)path
{
  v8.receiver = self;
  v8.super_class = AVTStickerImageProp;
  v4 = [(AVTStickerProp *)&v8 dictionaryWithTargetPath:path];
  v5 = [v4 mutableCopy];

  originalName = [(AVTStickerProp *)self originalName];
  [v5 setObject:? forKeyedSubscript:?];

  return v5;
}

@end