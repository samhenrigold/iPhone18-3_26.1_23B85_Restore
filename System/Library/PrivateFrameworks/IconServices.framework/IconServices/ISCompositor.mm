@interface ISCompositor
- (BOOL)canUseCoreImageForEffects;
- (CIContext)sharedCIContext;
- (ISCompositor)init;
- (ISCompositor)initWithRecipe:(id)recipe;
- (ISCompositorRecipe)recipe;
- (id)filterForLayer:(id)layer scale:(double)scale resourceProvider:(id)provider;
- (id)imageForSize:(CGSize)size scale:(double)scale;
- (id)maskImageForLayer:(id)layer size:(CGSize)size scale:(double)scale resourceProvider:(id)provider;
- (id)scaledImageFromContent:(id)content size:(CGSize)size scale:(double)scale needsScaled:(BOOL *)scaled;
- (void)addElementWithRecipe:(id)recipe resources:(id)resources;
- (void)addResourcesFromDictionary:(id)dictionary;
- (void)clearResources;
- (void)dealloc;
- (void)drawElement:(id)element inContext:(id)context;
- (void)drawInContext:(id)context;
- (void)drawLayer:(id)layer resourceProvider:(id)provider inContext:(id)context;
- (void)reset;
- (void)setRecipe:(id)recipe;
- (void)setResource:(id)resource named:(id)named;
@end

@implementation ISCompositor

- (ISCompositor)init
{
  v6.receiver = self;
  v6.super_class = ISCompositor;
  v2 = [(ISCompositor *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    elements = v2->_elements;
    v2->_elements = array;

    v2->_analyticsSegmented = 0;
    v2->_renderingMode = 1;
    v2->_graphicsContextPreset = 0;
  }

  return v2;
}

- (void)dealloc
{
  sharedCIContext = self->_sharedCIContext;
  if (sharedCIContext)
  {
    [sharedCIContext clearCaches];
  }

  v4.receiver = self;
  v4.super_class = ISCompositor;
  [(ISCompositor *)&v4 dealloc];
}

- (CIContext)sharedCIContext
{
  sharedCIContext = self->_sharedCIContext;
  if (!sharedCIContext)
  {
    _IS_sharedIconCompositorContext = [MEMORY[0x1E695F620] _IS_sharedIconCompositorContext];
    v5 = self->_sharedCIContext;
    self->_sharedCIContext = _IS_sharedIconCompositorContext;

    sharedCIContext = self->_sharedCIContext;
  }

  return sharedCIContext;
}

- (void)addElementWithRecipe:(id)recipe resources:(id)resources
{
  resourcesCopy = resources;
  recipeCopy = recipe;
  v8 = [[_ISCompositorElement alloc] initWithRecipe:recipeCopy resources:resourcesCopy];

  [(ISCompositor *)self addElement:v8];
}

- (id)imageForSize:(CGSize)size scale:(double)scale
{
  v5 = [MEMORY[0x1E69A8978] bitmapContextWithSize:-[ISCompositor graphicsContextPreset](self scale:"graphicsContextPreset") preset:{size.width, size.height, scale}];
  [(ISCompositor *)self drawInContext:v5];
  image = [v5 image];
  v7 = objc_alloc(MEMORY[0x1E69A8988]);
  cGImage = [image CGImage];
  [image scale];
  v9 = [v7 initWithCGImage:cGImage scale:?];
  v10 = [[ISGenerationReport alloc] initWithIconTreatment:1 hasLightingEffects:0];
  [v9 setGenerationReport:v10];

  return v9;
}

- (void)reset
{
  self->_elements = [MEMORY[0x1E695DF70] array];

  MEMORY[0x1EEE66BB8]();
}

- (ISCompositor)initWithRecipe:(id)recipe
{
  recipeCopy = recipe;
  v5 = [(ISCompositor *)self init];
  if (v5)
  {
    v6 = [_ISCompositorElement alloc];
    v7 = [(_ISCompositorElement *)v6 initWithRecipe:recipeCopy resources:MEMORY[0x1E695E0F8]];
    elements = [(ISCompositor *)v5 elements];
    [elements addObject:v7];
  }

  return v5;
}

- (void)setRecipe:(id)recipe
{
  recipeCopy = recipe;
  elements = [(ISCompositor *)self elements];
  firstObject = [elements firstObject];

  if (firstObject)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [firstObject setRecipe:recipeCopy];
    }

    else
    {
      v11 = _ISDefaultLog(isKindOfClass);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ISCompositor(Convenience) setRecipe:v11];
      }
    }
  }

  else
  {
    v8 = [_ISCompositorElement alloc];
    v9 = [(_ISCompositorElement *)v8 initWithRecipe:recipeCopy resources:MEMORY[0x1E695E0F8]];
    elements2 = [(ISCompositor *)self elements];
    [elements2 addObject:v9];
  }
}

- (ISCompositorRecipe)recipe
{
  elements = [(ISCompositor *)self elements];
  firstObject = [elements firstObject];
  recipe = [firstObject recipe];

  return recipe;
}

- (void)setResource:(id)resource named:(id)named
{
  resourceCopy = resource;
  namedCopy = named;
  elements = [(ISCompositor *)self elements];
  firstObject = [elements firstObject];

  if (!firstObject)
  {
    v10 = objc_alloc_init(ISGenericRecipe);
    [(ISCompositor *)self setRecipe:v10];

    elements2 = [(ISCompositor *)self elements];
    firstObject = [elements2 firstObject];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [firstObject setResource:resourceCopy forName:namedCopy];
  }

  else
  {
    v13 = _ISDefaultLog(isKindOfClass);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ISCompositor(Convenience) setResource:namedCopy named:v13];
    }
  }
}

- (void)addResourcesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  elements = [(ISCompositor *)self elements];
  firstObject = [elements firstObject];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [firstObject addResourcesFromDictionary:dictionaryCopy];
  }

  else
  {
    v8 = _ISDefaultLog(isKindOfClass);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ISCompositor(Convenience) *)dictionaryCopy addResourcesFromDictionary:v8];
    }
  }
}

- (void)clearResources
{
  elements = [(ISCompositor *)self elements];
  firstObject = [elements firstObject];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [firstObject clearResources];
  }

  else
  {
    v5 = _ISDefaultLog(isKindOfClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ISCompositor(Convenience) *)v5 clearResources];
    }
  }
}

- (void)drawInContext:(id)context
{
  v58 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (![(ISCompositor *)self renderingMode]|| [(ISCompositor *)self renderingMode]== 1 || [(ISCompositor *)self renderingMode]== 2)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    elements = [(ISCompositor *)self elements];
    v6 = [elements countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v53;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v53 != v8)
          {
            objc_enumerationMutation(elements);
          }

          [(ISCompositor *)self drawElement:*(*(&v52 + 1) + 8 * i) inContext:contextCopy];
        }

        v7 = [elements countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v7);
    }

    goto LABEL_31;
  }

  [contextCopy bounds];
  v11 = v10;
  v13 = v12;
  v41 = contextCopy;
  [contextCopy scale];
  v15 = v14;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [(ISCompositor *)self elements];
  v16 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (!v16)
  {
    elements = 0;
    goto LABEL_28;
  }

  v17 = v16;
  elements = 0;
  v18 = *v49;
  v42 = *MEMORY[0x1E695FA48];
  v43 = *MEMORY[0x1E695FAB0];
  do
  {
    for (j = 0; j != v17; ++j)
    {
      if (*v49 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v48 + 1) + 8 * j);
      recipe = [v20 recipe];
      v22 = [recipe layerTreeForSize:v11 scale:{v13, v15}];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        effect = [v22 effect];
        resourceProvider = [v20 resourceProvider];
        v25 = [(ISCompositor *)self filterForLayer:v22 scale:resourceProvider resourceProvider:v15];

        if (effect)
        {
          outputImage = [elements outputImage];
          [v25 outputImage];
          selfCopy = self;
          v28 = v17;
          v30 = v29 = v18;
          v45 = [effect filterWithBackgroundImage:outputImage inputImage:v30];

          v18 = v29;
          v17 = v28;
          self = selfCopy;

          elements = v45;
          goto LABEL_24;
        }
      }

      else
      {
        v25 = 0;
      }

      if (elements)
      {
        v31 = [MEMORY[0x1E695F648] filterWithName:@"CISourceOverCompositing"];
        outputImage2 = [v25 outputImage];
        [v31 setValue:outputImage2 forKey:v43];

        outputImage3 = [elements outputImage];
        [v31 setValue:outputImage3 forKey:v42];

        elements = v31;
      }

      else
      {
        v25 = v25;
        elements = v25;
      }

LABEL_24:
    }

    v17 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
  }

  while (v17);
LABEL_28:

  outputImage4 = [elements outputImage];
  memset(&v47, 0, sizeof(v47));
  CGAffineTransformMakeScale(&v47, v15, v15);
  v46 = v47;
  v59.origin.x = 0.0;
  v59.origin.y = 0.0;
  v59.size.width = v11;
  v59.size.height = v13;
  v60 = CGRectApplyAffineTransform(v59, &v46);
  x = v60.origin.x;
  y = v60.origin.y;
  width = v60.size.width;
  height = v60.size.height;
  sharedCIContext = [(ISCompositor *)self sharedCIContext];
  v40 = [sharedCIContext createCGImage:outputImage4 fromRect:{x, y, width, height}];

  contextCopy = v41;
  if (v40)
  {
    [v41 drawCGImage:v40 inRect:{0.0, 0.0, v11, v13}];
    CFRelease(v40);
  }

LABEL_31:
}

- (id)filterForLayer:(id)layer scale:(double)scale resourceProvider:(id)provider
{
  v119[1] = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  providerCopy = provider;
  objc_opt_class();
  v96 = layerCopy;
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([layerCopy content], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v92 = 0;
    goto LABEL_38;
  }

  v9 = layerCopy;
  content = [v9 content];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  content2 = [v9 content];
  if (isKindOfClass)
  {
    v13 = [providerCopy resourceNamed:content2];
    v14 = content2;
    content2 = v13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v88 = content2;
    if ([content2 conformsToProtocol:&unk_1F1A669B8])
    {
      v119[0] = content2;
      resourceStack = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:1];
    }

    else
    {
      if (![content2 conformsToProtocol:&unk_1F1A74E58])
      {
        v19 = MEMORY[0x1E695E0F0];
        goto LABEL_14;
      }

      resourceStack = [content2 resourceStack];
    }

    v19 = resourceStack;
LABEL_14:
    backgroundColor = [v9 backgroundColor];

    if (backgroundColor)
    {
      v15 = [MEMORY[0x1E695F648] filterWithName:@"CIConstantColorGenerator"];
      backgroundColor2 = [v9 backgroundColor];
      ciColor = [backgroundColor2 ciColor];
      [v15 setValue:ciColor forKey:*MEMORY[0x1E695FA78]];
    }

    else
    {
      v15 = 0;
    }

    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    obj = v19;
    v97 = [obj countByEnumeratingWithState:&v113 objects:v118 count:16];
    if (v97)
    {
      v23 = *v114;
      v24 = *MEMORY[0x1E695FAB0];
      v93 = *MEMORY[0x1E695FB38];
      v94 = *MEMORY[0x1E695FB20];
      v25 = 0x1E695F000uLL;
      v90 = *MEMORY[0x1E695FA48];
      v101 = *MEMORY[0x1E695FAB0];
      do
      {
        for (i = 0; i != v97; i = i + 1)
        {
          if (*v114 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v113 + 1) + 8 * i);
          [v9 size];
          v28 = [v27 imageForSize:? scale:?];
          if (v28)
          {
            v29 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:{objc_msgSend(v28, "CGImage")}];
            v105 = [*(v25 + 1608) filterWithName:@"CILanczosScaleTransform"];
            v99 = v29;
            [v105 setValue:v29 forKey:v24];
            [v9 size];
            v31 = v30 * scale;
            [v9 size];
            v33 = v32 * scale;
            [v28 pixelSize];
            v36 = 1.0;
            if (v34 != v31 || v35 != v33)
            {
              v38 = v31 / v34;
              v39 = v33 / v35;
              if (v38 >= v39)
              {
                v36 = v39;
              }

              else
              {
                v36 = v38;
              }
            }

            v40 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
            [v105 setValue:v40 forKey:v94];

            [v28 pixelSize];
            v42 = v41;
            v44 = v43;
            CGAffineTransformMakeScale(&v112, v36, v36);
            v45 = (v31 - (v44 * v112.c + v112.a * v42)) * 0.5;
            v46 = (v33 - (v44 * v112.d + v112.b * v42)) * 0.5;
            v47 = [*(v25 + 1608) filterWithName:@"CIAffineTransform"];
            memset(&v112, 0, sizeof(v112));
            [v9 position];
            v49 = v45 + v48 * scale;
            [v9 position];
            CGAffineTransformMakeTranslation(&v112, v49, v46 + v50 * scale);
            v51 = [MEMORY[0x1E696B098] valueWithBytes:&v112 objCType:"{CGAffineTransform=dddddd}"];
            [v47 setValue:v51 forKey:v93];
            outputImage = [v105 outputImage];
            [v47 setValue:outputImage forKey:v101];

            if (v15)
            {
              v53 = [*(v25 + 1608) filterWithName:@"CISourceOverCompositing"];
              [v47 outputImage];
              v54 = v9;
              v56 = v55 = v23;
              [v53 setValue:v56 forKey:v101];

              outputImage2 = [v15 outputImage];
              [v53 setValue:outputImage2 forKey:v90];

              v23 = v55;
              v9 = v54;

              v15 = v53;
            }

            else
            {
              v15 = v47;
            }

            v24 = v101;
            v25 = 0x1E695F000;
          }
        }

        v97 = [obj countByEnumeratingWithState:&v113 objects:v118 count:16];
      }

      while (v97);
    }

    layerCopy = v96;
    v16 = v89;
    goto LABEL_37;
  }

  v15 = [MEMORY[0x1E695F648] filterWithName:@"CIConstantColorGenerator"];
  [content2 ciColor];
  v17 = v16 = content2;
  [v15 setValue:v17 forKey:*MEMORY[0x1E695FA78]];

LABEL_37:
  v92 = v15;

LABEL_38:
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  sublayers = [layerCopy sublayers];
  v106 = [sublayers countByEnumeratingWithState:&v108 objects:v117 count:16];
  if (!v106)
  {

    v59 = 0;
LABEL_54:
    v75 = v92;
    goto LABEL_55;
  }

  v59 = 0;
  v102 = *v109;
  v60 = *MEMORY[0x1E695FAB0];
  v100 = *MEMORY[0x1E695FB38];
  v95 = *MEMORY[0x1E695FA48];
  v98 = sublayers;
  do
  {
    for (j = 0; j != v106; ++j)
    {
      if (*v109 != v102)
      {
        objc_enumerationMutation(v98);
      }

      v62 = [(ISCompositor *)self filterForLayer:*(*(&v108 + 1) + 8 * j) scale:providerCopy resourceProvider:scale];
      if (v62)
      {
        v63 = [MEMORY[0x1E695F648] filterWithName:@"CICrop"];
        memset(&v112, 0, sizeof(v112));
        CGAffineTransformMakeScale(&v112, scale, scale);
        [layerCopy frame];
        v107 = v112;
        v122 = CGRectApplyAffineTransform(v121, &v107);
        v64 = [MEMORY[0x1E695F688] vectorWithCGRect:{v122.origin.x, v122.origin.y, v122.size.width, v122.size.height}];
        [v63 setValue:v64 forKey:@"inputRectangle"];

        outputImage3 = [v62 outputImage];
        [v63 setValue:outputImage3 forKey:v60];

        v66 = [MEMORY[0x1E695F648] filterWithName:@"CIAffineTransform"];
        memset(&v107, 0, sizeof(v107));
        [layerCopy position];
        v68 = v67 * scale;
        [layerCopy position];
        CGAffineTransformMakeTranslation(&v107, v68, v69 * scale);
        v70 = [MEMORY[0x1E696B098] valueWithBytes:&v107 objCType:"{CGAffineTransform=dddddd}"];
        [v66 setValue:v70 forKey:v100];
        outputImage4 = [v63 outputImage];
        [v66 setValue:outputImage4 forKey:v60];

        if (v59)
        {
          v72 = [MEMORY[0x1E695F648] filterWithName:@"CISourceOverCompositing"];
          outputImage5 = [v66 outputImage];
          [v72 setValue:outputImage5 forKey:v60];

          outputImage6 = [v59 outputImage];
          [v72 setValue:outputImage6 forKey:v95];

          layerCopy = v96;
          v59 = v72;
        }

        else
        {
          v59 = v66;
        }
      }
    }

    v106 = [v98 countByEnumeratingWithState:&v108 objects:v117 count:16];
  }

  while (v106);

  if (!v59)
  {
    goto LABEL_54;
  }

  v75 = v92;
  if (v92)
  {
    v76 = [MEMORY[0x1E695F648] filterWithName:@"CISourceOverCompositing"];
    outputImage7 = [v59 outputImage];
    [v76 setValue:outputImage7 forKey:v60];

    outputImage8 = [v92 outputImage];
    [v76 setValue:outputImage8 forKey:v95];

    goto LABEL_57;
  }

LABEL_55:
  outputImage9 = [v59 outputImage];

  if (!outputImage9)
  {
    goto LABEL_58;
  }

  v59 = v59;
  v76 = v59;
LABEL_57:

  v75 = v76;
LABEL_58:
  v80 = v96;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v81 = v96;
    mask = [v81 mask];
    v83 = [(ISCompositor *)self filterForLayer:mask scale:providerCopy resourceProvider:scale];

    if (v83 && v75)
    {
      v84 = [MEMORY[0x1E695F648] filterWithName:@"CISourceInCompositing"];
      outputImage10 = [v75 outputImage];
      [v84 setValue:outputImage10 forKey:*MEMORY[0x1E695FAB0]];

      outputImage11 = [v83 outputImage];
      [v84 setValue:outputImage11 forKey:*MEMORY[0x1E695FA48]];

      v75 = v84;
    }

    v80 = v96;
  }

  return v75;
}

- (BOOL)canUseCoreImageForEffects
{
  renderingMode = [(ISCompositor *)self renderingMode];
  if (renderingMode != 1)
  {
    LOBYTE(renderingMode) = [(ISCompositor *)self renderingMode]== 2 || [(ISCompositor *)self renderingMode]== 3;
  }

  return renderingMode;
}

- (void)drawElement:(id)element inContext:(id)context
{
  elementCopy = element;
  contextCopy = context;
  [contextCopy bounds];
  v9 = v8;
  v11 = v10;
  [contextCopy scale];
  v13 = v12;
  recipe = [elementCopy recipe];
  v15 = [recipe layerTreeForSize:v9 scale:{v11, v13}];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    effect = 0;
LABEL_8:
    resourceProvider = [elementCopy resourceProvider];
    [(ISCompositor *)self drawLayer:v15 resourceProvider:resourceProvider inContext:contextCopy];
    goto LABEL_9;
  }

  effect = [v15 effect];
  if (!effect || ![(ISCompositor *)self canUseCoreImageForEffects])
  {
    goto LABEL_8;
  }

  resourceProvider = [MEMORY[0x1E69A8978] bitmapContextWithSize:0 scale:v9 preset:{v11, v13}];
  resourceProvider2 = [elementCopy resourceProvider];
  [(ISCompositor *)self drawLayer:v15 resourceProvider:resourceProvider2 inContext:resourceProvider];

  v19 = objc_alloc(MEMORY[0x1E695F658]);
  image = [resourceProvider image];
  v21 = [v19 initWithCGImage:{objc_msgSend(image, "CGImage")}];

  v22 = objc_alloc(MEMORY[0x1E695F658]);
  image2 = [contextCopy image];
  v24 = [v22 initWithCGImage:{objc_msgSend(image2, "CGImage")}];

  v34 = v21;
  v25 = [effect filterWithBackgroundImage:v24 inputImage:v21];
  outputImage = [v25 outputImage];
  memset(&v36, 0, sizeof(v36));
  CGAffineTransformMakeScale(&v36, v13, v13);
  v35 = v36;
  v37.origin.x = 0.0;
  v37.origin.y = 0.0;
  v37.size.width = v9;
  v37.size.height = v11;
  v38 = CGRectApplyAffineTransform(v37, &v35);
  if (outputImage)
  {
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
    sharedCIContext = [(ISCompositor *)self sharedCIContext];
    v32 = [sharedCIContext createCGImage:outputImage fromRect:{x, y, width, height}];

    if (v32)
    {
      [contextCopy drawCGImage:v32 inRect:{0.0, 0.0, v9, v11}];
      CFRelease(v32);
    }
  }

  else
  {
    resourceProvider3 = [elementCopy resourceProvider];
    [(ISCompositor *)self drawLayer:v15 resourceProvider:resourceProvider3 inContext:contextCopy];
  }

LABEL_9:
}

- (id)scaledImageFromContent:(id)content size:(CGSize)size scale:(double)scale needsScaled:(BOOL *)scaled
{
  height = size.height;
  width = size.width;
  v11 = [content imageForSize:? scale:?];
  canUseCoreImage = [(ISCompositor *)self canUseCoreImage];
  if (canUseCoreImage)
  {
    v13 = width * scale;
    v14 = height * scale;
    [v11 pixelSize];
    if (v15 != v13 || v16 != v14)
    {
      v18 = v13 / v15;
      v19 = v14 / v16;
      v20 = v18 >= v19 ? v19 : v18;
      if (v20 != 1.0)
      {
        v21 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:{objc_msgSend(v11, "CGImage")}];
        [v11 pixelSize];
        v23 = v20 * v22;
        [v11 pixelSize];
        v25 = v20 * v24;
        v26 = [MEMORY[0x1E695F648] filterWithName:@"CIAffineClamp"];
        v27 = *MEMORY[0x1E695FAB0];
        [v26 setValue:v21 forKey:*MEMORY[0x1E695FAB0]];
        v28 = *(MEMORY[0x1E695EFD0] + 16);
        v54[0] = *MEMORY[0x1E695EFD0];
        v54[1] = v28;
        v54[2] = *(MEMORY[0x1E695EFD0] + 32);
        v29 = [MEMORY[0x1E696B098] valueWithBytes:v54 objCType:"{CGAffineTransform=dddddd}"];
        [v26 setValue:v29 forKey:*MEMORY[0x1E695FB38]];

        v30 = _os_feature_enabled_simple_impl();
        if (v30)
        {
          v31 = _ISDefaultLog(v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            [ISCompositor(Rendering) scaledImageFromContent:v31 size:? scale:? needsScaled:?];
          }

          outputImage = [v26 outputImage];
          CGAffineTransformMakeScale(&v53, v20, v20);
          v32OutputImage = [outputImage imageByApplyingTransform:&v53 highQualityDownsample:1];
        }

        else
        {
          outputImage = [MEMORY[0x1E695F648] filterWithName:@"CILanczosScaleTransform"];
          outputImage2 = [v26 outputImage];
          [outputImage setValue:outputImage2 forKey:v27];

          v35 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
          [outputImage setValue:v35 forKey:*MEMORY[0x1E695FB20]];

          v32OutputImage = [outputImage outputImage];
        }

        v36 = v32OutputImage;

        v37 = [MEMORY[0x1E695F648] filterWithName:@"CICrop"];
        v38 = [MEMORY[0x1E695F688] vectorWithCGRect:{0.0, 0.0, v23, v25}];
        [v37 setValue:v38 forKey:@"inputRectangle"];

        [v37 setValue:v36 forKey:v27];
        outputImage3 = [v37 outputImage];
        v40 = outputImage3;
        if (outputImage3)
        {
          [outputImage3 extent];
          v42 = v41;
          v44 = v43;
          v46 = v45;
          v48 = v47;
          sharedCIContext = [(ISCompositor *)self sharedCIContext];
          v50 = [sharedCIContext createCGImage:v40 fromRect:{v42, v44, v46, v48}];

          if (v50)
          {
            [v11 CGImage];
            if (CGImageGetProperty() == *MEMORY[0x1E695E4D0])
            {
              CGImageSetProperty();
            }

            v51 = [objc_alloc(MEMORY[0x1E69A8988]) initWithCGImage:v50 scale:scale];

            CFRelease(v50);
            v11 = v51;
          }
        }
      }
    }
  }

  if (scaled)
  {
    *scaled = !canUseCoreImage;
  }

  return v11;
}

- (id)maskImageForLayer:(id)layer size:(CGSize)size scale:(double)scale resourceProvider:(id)provider
{
  height = size.height;
  width = size.width;
  providerCopy = provider;
  mask = [layer mask];
  if (mask)
  {
    v13 = [MEMORY[0x1E69A8978] bitmapContextWithSize:0 scale:width preset:{height, scale}];
    [(ISCompositor *)self drawLayer:mask resourceProvider:providerCopy inContext:v13];
    image = [v13 image];
  }

  else
  {
    image = 0;
  }

  return image;
}

- (void)drawLayer:(id)layer resourceProvider:(id)provider inContext:(id)context
{
  v154[1] = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  providerCopy = provider;
  contextCopy = context;
  [contextCopy pushState];
  [contextCopy scale];
  v12 = v11;
  [layerCopy frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v125 = *(MEMORY[0x1E695EFD0] + 16);
  *obj = *MEMORY[0x1E695EFD0];
  *&v151.a = *MEMORY[0x1E695EFD0];
  *&v151.c = v125;
  v123 = *(MEMORY[0x1E695EFD0] + 32);
  *&v151.tx = v123;
  [contextCopy scale];
  v22 = v21;
  if (contextCopy)
  {
    objc_msgSend_transform(contextCopy);
    v23 = *&v150;
    objc_msgSend_transform(contextCopy);
    v24 = *(&v147 + 1);
  }

  else
  {
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v24 = 0.0;
    v23 = 0.0;
  }

  v25 = v23 / v22;
  v26 = v24 / v22;
  if ([layerCopy flipped] == 3)
  {
    *&t1.a = *obj;
    *&t1.c = v125;
    *&t1.tx = v123;
    CGAffineTransformTranslate(&v151, &t1, v22 * v25, v22 * v26);
    t2 = v151;
    CGAffineTransformScale(&t1, &t2, -1.0, -1.0);
    v151 = t1;
    t2 = t1;
    CGAffineTransformTranslate(&t1, &t2, -((v18 + v25) * v22), -((v20 + v26) * v22));
    v151 = t1;
    if (contextCopy)
    {
      objc_msgSend_transform(contextCopy);
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    CGAffineTransformTranslate(&v142, &t1, -v14, -v16);
    *&t1.a = *&v142.a;
    *&t1.c = *&v142.c;
    v27 = *&v142.tx;
  }

  else if ([layerCopy flipped] == 1)
  {
    t2 = v151;
    CGAffineTransformTranslate(&t1, &t2, 0.0, v22 * v26);
    v151 = t1;
    t2 = t1;
    CGAffineTransformScale(&t1, &t2, 1.0, -1.0);
    v151 = t1;
    t2 = t1;
    CGAffineTransformTranslate(&t1, &t2, 0.0, -((v20 + v26) * v22));
    v151 = t1;
    if (contextCopy)
    {
      objc_msgSend_transform(contextCopy);
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    CGAffineTransformTranslate(&v141, &t1, v14, -v16);
    *&t1.a = *&v141.a;
    *&t1.c = *&v141.c;
    v27 = *&v141.tx;
  }

  else if ([layerCopy flipped] == 2)
  {
    t2 = v151;
    CGAffineTransformTranslate(&t1, &t2, v22 * v25, 0.0);
    v151 = t1;
    t2 = t1;
    CGAffineTransformScale(&t1, &t2, -1.0, 1.0);
    v151 = t1;
    t2 = t1;
    CGAffineTransformTranslate(&t1, &t2, -((v18 + v25) * v22), 0.0);
    v151 = t1;
    if (contextCopy)
    {
      objc_msgSend_transform(contextCopy);
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    CGAffineTransformTranslate(&v140, &t1, -v14, v16);
    *&t1.a = *&v140.a;
    *&t1.c = *&v140.c;
    v27 = *&v140.tx;
  }

  else
  {
    if (contextCopy)
    {
      objc_msgSend_transform(contextCopy);
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    CGAffineTransformTranslate(&v139, &t1, v14, v16);
    *&t1.a = *&v139.a;
    *&t1.c = *&v139.c;
    v27 = *&v139.tx;
  }

  *&t1.tx = v27;
  [contextCopy setTransform:&t1];
  if (contextCopy)
  {
    objc_msgSend_transform(contextCopy);
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  t2 = v151;
  CGAffineTransformConcat(&v138, &t1, &t2);
  t1 = v138;
  [contextCopy setTransform:&t1];
  [layerCopy bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [(ISCompositor *)self maskImageForLayer:layerCopy size:providerCopy scale:v32 resourceProvider:v34, v12];
  [contextCopy clipToMaskCGImage:objc_msgSend(v36 inRect:{"CGImage"), v29, v31, v33, v35}];
  v37 = contextCopy;
  v122 = v36;
  if (v36 || ([layerCopy effect], v38 = objc_claimAutoreleasedReturnValue(), v38, v39 = v37, v38))
  {
    v40 = MEMORY[0x1E69A8978];
    [v37 scale];
    v39 = [v40 bitmapContextWithSize:objc_msgSend(v37 scale:"preset") preset:{v33, v35, v41}];
  }

  objc_opt_class();
  v124 = v37;
  if (objc_opt_isKindOfClass())
  {
    content = [layerCopy content];

    if (content)
    {
      v43 = layerCopy;
      content2 = [v43 content];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      content3 = [v43 content];
      if (isKindOfClass)
      {
        v47 = [providerCopy resourceNamed:content3];
      }

      else
      {
        objc_opt_class();
        v58 = objc_opt_isKindOfClass();

        content3 = [v43 content];
        if ((v58 & 1) == 0)
        {
LABEL_51:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v39 setFillColor:content3];
            [v39 fillRect:{v29, v31, v33, v35}];
            goto LABEL_81;
          }

          if (objc_opt_respondsToSelector())
          {
            v154[0] = content3;
            resourceStack = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:1];
          }

          else
          {
            if (![content3 conformsToProtocol:&unk_1F1A74E58])
            {
              v64 = MEMORY[0x1E695E0F0];
              goto LABEL_64;
            }

            resourceStack = [content3 resourceStack];
          }

          v64 = resourceStack;
LABEL_64:
          backgroundColor = [v43 backgroundColor];

          if (backgroundColor)
          {
            backgroundColor2 = [v43 backgroundColor];
            [v39 setFillColor:backgroundColor2];

            [v39 fillRect:{v29, v31, v33, v35}];
          }

          acceptSymbol = [v43 acceptSymbol];
          v134 = 0u;
          v135 = 0u;
          v136 = 0u;
          v137 = 0u;
          obja = v64;
          v69 = [obja countByEnumeratingWithState:&v134 objects:v153 count:16];
          if (v69)
          {
            v70 = v69;
            v71 = v43;
            v72 = *v135;
            v73 = 0x1E69A8000uLL;
            do
            {
              v74 = 0;
              v126 = v70;
              do
              {
                if (*v135 != v72)
                {
                  objc_enumerationMutation(obja);
                }

                v75 = *(*(&v134 + 1) + 8 * v74);
                objc_opt_class();
                if (acceptSymbol & 1 | ((objc_opt_isKindOfClass() & 1) == 0))
                {
                  LOBYTE(t1.a) = 0;
                  [v71 size];
                  v76 = [ISCompositor scaledImageFromContent:"scaledImageFromContent:size:scale:needsScaled:" size:v75 scale:&t1 needsScaled:?];
                  v77 = v76;
                  if (v76)
                  {
                    v78 = v72;
                    selfCopy = self;
                    v80 = providerCopy;
                    v81 = v73;
                    v82 = v71;
                    a_low = LOBYTE(t1.a);
                    cGImage = [v76 CGImage];
                    if (a_low == 1)
                    {
                      [v39 drawCGImage:cGImage inRect:{v29, v31, v33, v35}];
                    }

                    else
                    {
                      [v39 drawCGImage:cGImage centeredInRect:{v29, v31, v33, v35}];
                    }

                    v71 = v82;
                    v73 = v81;
                    providerCopy = v80;
                    self = selfCopy;
                    v72 = v78;
                    v70 = v126;
                  }
                }

                ++v74;
              }

              while (v70 != v74);
              v70 = [obja countByEnumeratingWithState:&v134 objects:v153 count:16];
            }

            while (v70);
          }

          contextCopy = v120;
          layerCopy = v121;
          content3 = v119;
          goto LABEL_81;
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          name = [content3 name];
          v48 = [providerCopy resourceNamed:name];

          goto LABEL_34;
        }

        v47 = [providerCopy resourceForKey:content3];
      }

      v48 = v47;
LABEL_34:

      content3 = v48;
      goto LABEL_51;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v49 = layerCopy;
    content3 = [v49 text];
    v50 = [providerCopy resourceNamed:content3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = v50;

      content3 = v51;
    }

    if (ISIsResourceKey(content3))
    {

      content3 = 0;
    }

    else if (content3)
    {
      [v39 pushState];
      color = [v49 color];
      [v39 setStrokeColor:color];

      fontName = [v49 fontName];
      [v49 fontSize];
      [v39 drawText:content3 fontName:fontName fontSize:? inRect:?];

      [v39 popState];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_82;
    }

    v52 = contextCopy;
    v53 = layerCopy;
    symbol = [v53 symbol];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = [providerCopy resourceNamed:symbol];

      symbol = v55;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      content3 = symbol;
    }

    else
    {
      content3 = 0;
    }

    v60 = objc_alloc_init(MEMORY[0x1E69A89C0]);
    [v53 fontSize];
    [v60 setPointSize:?];
    [v60 setScale:v12];
    [v60 setSymbolSize:{objc_msgSend(v53, "symbolSize")}];
    [v60 setSymbolWeight:{objc_msgSend(v53, "symbolWeight")}];
    color2 = [v53 color];
    [v60 setTintColor:color2];

    v62 = [content3 imageForDescriptor:v60];
    if (v62)
    {
      [v39 pushState];
      color3 = [v53 color];
      [v39 setStrokeColor:color3];

      [v39 drawSymbolImage:v62 centeredInRect:{v29, v31, v33, v35}];
      [v39 popState];
    }

    contextCopy = v52;
  }

LABEL_81:

LABEL_82:
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  sublayers = [layerCopy sublayers];
  v86 = [sublayers countByEnumeratingWithState:&v130 objects:v152 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v131;
    do
    {
      for (i = 0; i != v87; ++i)
      {
        if (*v131 != v88)
        {
          objc_enumerationMutation(sublayers);
        }

        v90 = *(*(&v130 + 1) + 8 * i);
        [v39 pushState];
        [v39 setBlendMode:{objc_msgSend(v90, "blendMode")}];
        [(ISCompositor *)self drawLayer:v90 resourceProvider:providerCopy inContext:v39];
        [v39 popState];
      }

      v87 = [sublayers countByEnumeratingWithState:&v130 objects:v152 count:16];
    }

    while (v87);
  }

  v91 = v124;
  if (v39 != v124)
  {
    effect = [layerCopy effect];
    if (effect)
    {
      v93 = effect;
      superlayer = [layerCopy superlayer];
      if (superlayer)
      {
        v95 = superlayer;
        canUseCoreImageForEffects = [(ISCompositor *)self canUseCoreImageForEffects];

        if (!canUseCoreImageForEffects)
        {
          v99 = 0;
LABEL_107:
          v91 = v124;
          goto LABEL_108;
        }

        v97 = objc_alloc(MEMORY[0x1E695F658]);
        image = [v39 image];
        v99 = [v97 initWithCGImage:{objc_msgSend(image, "CGImage")}];

        [v124 pushState];
        [v124 bounds];
        v101 = v100;
        [v124 scale];
        v103 = v102 * v101;
        if (contextCopy)
        {
          objc_msgSend_transform(v124);
        }

        else
        {
          memset(&t1, 0, sizeof(t1));
        }

        t2.b = 0.0;
        t2.c = 0.0;
        t2.a = 1.0;
        *&t2.d = xmmword_1A78250C0;
        t2.ty = v103;
        CGAffineTransformConcat(&v129, &t1, &t2);
        t1 = v129;
        [v124 setTransform:&t1];
        v104 = [v124 imageFromRect:{v29, v31, v33, v35}];
        [v124 popState];
        v105 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:{objc_msgSend(v104, "CGImage")}];
        effect2 = [layerCopy effect];
        image2 = [effect2 filterWithBackgroundImage:v105 inputImage:v99];

        effect3 = [layerCopy effect];
        objc_opt_class();
        v109 = objc_opt_isKindOfClass();

        effect4 = [layerCopy effect];
        if ((v109 & 1) == 0)
        {
          objc_opt_class();
          v111 = objc_opt_isKindOfClass();

          if ((v111 & 1) == 0)
          {
            goto LABEL_103;
          }

          effect4 = [layerCopy effect];
        }

        -[ISCompositor setAnalyticsSegmented:](self, "setAnalyticsSegmented:", [effect4 hasSegmentedImage]);

LABEL_103:
        if (image2)
        {
          outputImage = [image2 outputImage];

          memset(&t1, 0, sizeof(t1));
          CGAffineTransformMakeScale(&t1, v12, v12);
          t2 = t1;
          v155.origin.x = 0.0;
          v155.origin.y = 0.0;
          v155.size.width = v33;
          v155.size.height = v35;
          v156 = CGRectApplyAffineTransform(v155, &t2);
          x = v156.origin.x;
          y = v156.origin.y;
          width = v156.size.width;
          height = v156.size.height;
          sharedCIContext = [(ISCompositor *)self sharedCIContext];
          v118 = [sharedCIContext createCGImage:outputImage fromRect:{x, y, width, height}];

          v91 = v124;
          if (v118)
          {
            [v124 drawCGImage:v118 centeredInRect:{v29, v31, v33, v35}];
            CFRelease(v118);
          }

          v99 = outputImage;
          goto LABEL_109;
        }

        goto LABEL_107;
      }
    }

    v99 = 0;
LABEL_108:
    image2 = [v39 image];
    [v91 drawCGImage:objc_msgSend(image2 centeredInRect:{"CGImage"), v29, v31, v33, v35}];
LABEL_109:
  }

  [v91 popState];
}

@end