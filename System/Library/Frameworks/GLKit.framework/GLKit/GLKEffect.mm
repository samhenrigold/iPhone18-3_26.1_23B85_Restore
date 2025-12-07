@interface GLKEffect
+ (BOOL)parseXMLFile:(id)file rootNode:(id)node;
+ (id)programInfoLogForName:(unsigned int)name effectLabel:(id)label msg:(const char *)msg;
+ (id)shaderInfoLogForName:(unsigned int)name effectLabel:(id)label msg:(const char *)msg;
+ (void)initialize;
+ (void)initializeStaticMasks;
+ (void)setStaticMasksWithVshRoot:(id)root fshRoot:(id)fshRoot;
+ (void)unrollLoopNodesForStaticTreeWithRoot:(id)root;
- (BOOL)includeFshShaderTextForRootNode:(id)node;
- (BOOL)includeShaderTextForRootNode:(id)node;
- (BOOL)includeVshShaderTextForRootNode:(id)node;
- (BOOL)useTexCoordAttrib;
- (GLKBigInt_s)prevFshMask;
- (GLKBigInt_s)prevVshMask;
- (GLKEffect)init;
- (GLKEffect)initWithPropertyArray:(id)array;
- (_GLKVector4)baseLightingColor;
- (_GLKVector4)lightModelAmbientColor;
- (void)addTransformProperty;
- (void)bind;
- (void)createAndUseProgramWithShadingHash:(id)hash;
- (void)dealloc;
- (void)initializeMasks;
- (void)setBaseLightingColor:(_GLKVector4)color;
- (void)setColorMaterialEnabled:(unsigned __int8)enabled;
- (void)setLightModelAmbientColor:(_GLKVector4)color;
- (void)setLightModelTwoSided:(unsigned __int8)sided;
- (void)setPerPixelLightingEnabled:(unsigned __int8)enabled;
- (void)setPerVertexLightingEnabled:(unsigned __int8)enabled;
- (void)setShaderBindings;
- (void)setTextureIndices;
- (void)setTextureOrder:(id)order;
- (void)updateFshStringsWithRoot:(id)root enabled:(GLKBigInt_s)enabled;
- (void)updateVshStringsWithRoot:(id)root enabled:(GLKBigInt_s)enabled;
@end

@implementation GLKEffect

+ (void)initialize
{
  +[GLKEffect initializeStaticMasks];
  __vshRootNode = objc_alloc_init(GLKShaderBlockNode);
  v2 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.GLKit", "pathForResource:ofType:", @"vsh", @"xml"}];
  if ([GLKEffect parseXMLFile:v2 rootNode:__vshRootNode])
  {
    __fshRootNode = objc_alloc_init(GLKShaderBlockNode);
    v3 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.GLKit", "pathForResource:ofType:", @"fsh", @"xml"}];
    if ([GLKEffect parseXMLFile:v3 rootNode:__fshRootNode])
    {
      __sharegroupDict = CFDictionaryCreateMutable(0, 0, 0, 0);
      __sharegroupQueue = dispatch_queue_create("com.apple.GLKEffectsSharegroup", 0);
      v8 = xmmword_2389150A0;
      [GLKShaderBlockNode setMasksWithRoot:__vshRootNode treeRoot:__vshRootNode mask:&v8, 1, 0];
      [GLKShaderBlockNode setMasksWithRoot:__fshRootNode treeRoot:__fshRootNode mask:&v7];
      [GLKEffect setStaticMasksWithVshRoot:__vshRootNode fshRoot:__fshRootNode];
      [GLKEffectPropertyConstantColor setStaticMasksWithVshRoot:__vshRootNode fshRoot:__fshRootNode];
      [GLKEffectPropertyFog setStaticMasksWithVshRoot:__vshRootNode fshRoot:__fshRootNode];
      [GLKEffectPropertyLight setStaticMasksWithVshRoot:__vshRootNode fshRoot:__fshRootNode];
      [GLKEffectPropertyMaterial setStaticMasksWithVshRoot:__vshRootNode fshRoot:__fshRootNode];
      [GLKEffectPropertyTexture setStaticMasksWithVshRoot:__vshRootNode fshRoot:__fshRootNode];
      [GLKEffectPropertyTransform setStaticMasksWithVshRoot:__vshRootNode fshRoot:__fshRootNode];
      v4 = getenv("__GLK_PURGE_SHADING_HASH");
      v5 = v4 && *v4 == 49 && !v4[1];
      __purgeShadingHash = v5;
      return;
    }

    v6 = __fshRootNode;
  }

  else
  {
    v6 = __vshRootNode;
  }
}

- (GLKEffect)init
{
  v10.receiver = self;
  v10.super_class = GLKEffect;
  v2 = [(GLKEffect *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(GLKEffect *)v2 dirtyAllUniforms];
    v3->_properties = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3->_numLights = 0;
    v3->_numTextures = 0;
    v3->_aColorLoc = -1;
    v4 = malloc_type_malloc(0xB0uLL, 0x80040B8603338uLL);
    v5 = 0;
    v3->_effectShaderArray = v4;
    do
    {
      v3->_effectShaderArray[v5++] = 0;
    }

    while (v5 != 22);
    *v3->_effectShaderArray = v3;
    v3->_vshStrings = malloc_type_malloc(0x800uLL, 0x10040436913F5uLL);
    v3->_fshStrings = malloc_type_malloc(0x800uLL, 0x10040436913F5uLL);
    v3->_vshMask = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    v6 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    v3->_fshMask = v6;
    vshMask = v3->_vshMask;
    vshMask->n0 = 0;
    vshMask->n1 = 0;
    v6->n0 = 0;
    v6->n1 = 0;
    v8.n0 = -1;
    v8.n1 = -1;
    v3->_prevFshMask = v8;
    v3->_prevVshMask = v8;
    v3->_programHash = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3->_vshRootNode = [GLKShaderBlockNode copyTreeWithRoot:__vshRootNode parent:0];
    v3->_fshRootNode = [GLKShaderBlockNode copyTreeWithRoot:__fshRootNode parent:0];
    v3->_masksInitialized = 0;
    [(GLKEffect *)v3 setColorMaterialEnabled:0];
    [(GLKEffect *)v3 setLightModelTwoSided:0];
    [(GLKEffect *)v3 setPerPixelLightingEnabled:0];
    [(GLKEffect *)v3 setPerVertexLightingEnabled:0];
    [(GLKEffect *)v3 setTexturingEnabled:0];
    v3->_lightModelAmbientColorLoc = -1;
    v3->_textureOrder = 0;
    v3->_textureOrderStale = 0;
    v3->_lightModelAmbientColor = xmmword_238915090;
  }

  return v3;
}

+ (void)initializeStaticMasks
{
  xmmword_27DF40440 = 0u;
  xmmword_27DF40450 = 0u;
  xmmword_27DF40420 = 0u;
  xmmword_27DF40430 = 0u;
  xmmword_27DF40400 = 0u;
  xmmword_27DF40410 = 0u;
  xmmword_27DF403E0 = 0u;
  xmmword_27DF403F0 = 0u;
  __vshMasks = 0u;
  *&qword_27DF403D0 = 0u;
  __fshMasks = 0u;
  *&qword_27DF40470 = 0u;
  xmmword_27DF40480 = 0u;
  xmmword_27DF40490 = 0u;
  xmmword_27DF404A0 = 0u;
  *&qword_27DF404B0 = 0u;
  xmmword_27DF404C0 = 0u;
  xmmword_27DF404D0 = 0u;
  xmmword_27DF404E0 = 0u;
  xmmword_27DF404F0 = 0u;
  xmmword_27DF40500 = 0u;
}

+ (BOOL)parseXMLFile:(id)file rootNode:(id)node
{
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:file];
  v7 = [objc_alloc(MEMORY[0x277CCAE70]) initWithContentsOfURL:v6];
  [v7 setDelegate:node];
  [v7 setShouldResolveExternalEntities:1];
  parse = [v7 parse];

  if (parse)
  {
    [self unrollLoopNodesForStaticTreeWithRoot:node];
  }

  return parse;
}

+ (void)unrollLoopNodesForStaticTreeWithRoot:(id)root
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = 0x278A57000uLL;
  [GLKShaderBlockNode buildUnrollNodeArray:root array:v4];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v28 = [v4 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v28)
  {
    v27 = *v34;
    v6 = @"%@%d";
    do
    {
      v7 = 0;
      do
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(v4);
        }

        v29 = v7;
        v8 = *(*(&v33 + 1) + 8 * v7);
        label = [v8 label];
        v31 = v8;
        unrollCt = [v8 unrollCt];
        if (unrollCt >= 2)
        {
          v11 = 1;
          v12 = v8;
          v30 = unrollCt;
          do
          {
            v32 = v12;
            v12 = [*(v5 + 3056) copyTreeWithRootButNotSiblings:v31 parent:{objc_msgSend(v31, "parent")}];
            [v12 setIndex:v11];
            [v12 setPropertyClass:{objc_msgSend(v31, "propertyClass") + v11}];
            [v12 setLabel:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", v6, label, v11)}];
            [v12 setType:1];
            v13 = *(v5 + 3056);
            v14 = v5;
            children = [v12 children];
            v16 = label;
            v17 = v6;
            loopVar = [v31 loopVar];
            propertyClass = [v31 propertyClass];
            v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v11];
            v21 = children;
            v5 = v14;
            v22 = loopVar;
            v6 = v17;
            label = v16;
            [v13 setIndicesForRoot:v21 andReplaceLoopVar:v22 baseLabel:v16 basePropertyClass:propertyClass usingIndex:v11 indexString:v20];
            [*(v14 + 3056) insertNode:v12 afterSibling:v32];
            v11 = (v11 + 1);
          }

          while (v30 != v11);
        }

        v23 = *(v5 + 3056);
        children2 = [v31 children];
        loopVar2 = [v31 loopVar];
        propertyClass2 = [v31 propertyClass];
        [v23 setIndicesForRoot:children2 andReplaceLoopVar:loopVar2 baseLabel:label basePropertyClass:propertyClass2 usingIndex:0 indexString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%d", 0)}];
        [v31 setLabel:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", v6, objc_msgSend(v31, "label"), 0)}];
        [v31 setType:1];
        v7 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [v4 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v28);
  }
}

- (GLKEffect)initWithPropertyArray:(id)array
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = [(GLKEffect *)self init];
  if (!v4)
  {
    return v4;
  }

  v4->_lightProperties = objc_alloc_init(MEMORY[0x277CBEB18]);
  *&v4->_vshName = 0;
  v4->_programName = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [array countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v29;
    v23 = 1;
    while (2)
    {
      v10 = 0;
      v11 = (v7 + 1);
      v22 = v7 + v6;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(array);
        }

        v12 = *(*(&v28 + 1) + 8 * v10);
        if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"GLKEffect effectWithAttribs: bad argument type for argument %d: %p", v11, v12];
          goto LABEL_30;
        }

        [(NSMutableArray *)v4->_properties addObject:v12];
        [v12 setEffect:v4];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v12 setEffectDirtyUniforms:&v4->_dirtyUniforms];
          v4->_effectShaderArray[v4->_numLights + 2] = v12;
          [v12 setLightIndex:v4->_numLights++];
          [(NSMutableArray *)v4->_lightProperties addObject:v12];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v4->_texturingEnabled = 1;
            v4->_textureOrderStale = 1;
            ++v4->_numTextures;
          }

          else if (v23 == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v23 = 0;
            *(v4->_effectShaderArray + 1) = v12;
            v8 = v12;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *(v4->_effectShaderArray + 10) = v12;
              [v12 setEffectDirtyUniforms:&v4->_dirtyUniforms];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                *(v4->_effectShaderArray + 19) = v12;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  *(v4->_effectShaderArray + 20) = v12;
                }
              }
            }
          }
        }

        ++v10;
        v11 = (v11 + 1);
      }

      while (v6 != v10);
      v6 = [array countByEnumeratingWithState:&v28 objects:v33 count:16];
      v7 = v22;
      if (v6)
      {
        continue;
      }

      break;
    }

    Error = glGetError();
    if (!Error)
    {
      if (v23)
      {
        goto LABEL_32;
      }

      goto LABEL_33;
    }
  }

  else
  {
    Error = glGetError();
    if (!Error)
    {
LABEL_32:
      [(GLKEffect *)v4 addTransformProperty];
      v8 = [(NSMutableArray *)v4->_properties objectAtIndex:0];
LABEL_33:
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      lightProperties = v4->_lightProperties;
      v17 = [(NSMutableArray *)lightProperties countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v25;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(lightProperties);
            }

            [*(*(&v24 + 1) + 8 * i) setTransform:v8];
          }

          v18 = [(NSMutableArray *)lightProperties countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v18);
      }

      _lightStateChanged(v4);
      return v4;
    }
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"GL ERROR: 0x%04x", Error, v21];
LABEL_30:
  NSLog(&stru_284B43120.isa, v14);
  return 0;
}

- (void)setTextureOrder:(id)order
{
  if (order)
  {
    v5 = [order count];
    textureOrder = self->_textureOrder;
    if (!textureOrder || (v5 == [(NSArray *)textureOrder count]? (v7 = v5 == 0) : (v7 = 1), v7))
    {
      v8 = 0;
      if (v5)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v11 = [order objectAtIndex:v9];
        if (v11 != [(NSArray *)self->_textureOrder objectAtIndex:v9])
        {
          break;
        }

        v9 = ++v10;
        if (v5 <= v10)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v9) = v10;
LABEL_15:
      v8 = v9;
      if (v5)
      {
LABEL_16:
        if (v5 == v8)
        {
          return;
        }
      }
    }

    self->_textureOrder = order;
    goto LABEL_18;
  }

  self->_textureOrder = 0;
LABEL_18:
  self->_textureOrderStale = 1;
}

- (void)addTransformProperty
{
  v3 = objc_alloc_init(GLKEffectPropertyTransform);
  properties = self->_properties;

  [(NSMutableArray *)properties insertObject:v3 atIndex:0];
}

- (void)setTextureIndices
{
  v32 = *MEMORY[0x277D85DE8];
  params = 0;
  [GLKEffectPropertyTexture clearAllTexturingMasks:self->_vshMask fshMask:self->_fshMask];
  textureOrder = self->_textureOrder;
  if (textureOrder)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = [(NSArray *)textureOrder countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (v4)
    {
      v5 = v4;
      LODWORD(v6) = 0;
      v7 = *v22;
      do
      {
        v8 = 0;
        v6 = v6;
        do
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(textureOrder);
          }

          v9 = *(*(&v21 + 1) + 8 * v8);
          [v9 setTextureIndex:v6];
          self->_effectShaderArray[v6++ + 11] = v9;
          ++v8;
        }

        while (v5 != v8);
        v5 = [(NSArray *)textureOrder countByEnumeratingWithState:&v21 objects:v30 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    glGetIntegerv(0x8872u, &params);
    v11 = 0;
    v12 = 0;
    v13 = 3553;
    do
    {
      v20 = v11;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      properties = self->_properties;
      v15 = [(NSMutableArray *)properties countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v26;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(properties);
            }

            v19 = *(*(&v25 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v19 target] == v13)
            {
              [v19 setTextureIndex:v12];
              self->_effectShaderArray[v12 + 11] = v19;
              [v10 addObject:v19];
              v12 = (v12 + 1);
            }
          }

          v16 = [(NSMutableArray *)properties countByEnumeratingWithState:&v25 objects:v31 count:16];
        }

        while (v16);
      }

      v11 = v20 + 1;
      v13 = dword_2389150C0[v20 + 1];
    }

    while (v20 != 1);
    -[GLKEffect setTextureOrder:](self, "setTextureOrder:", [MEMORY[0x277CBEA60] arrayWithArray:v10]);
  }
}

- (BOOL)useTexCoordAttrib
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  textureOrder = self->_textureOrder;
  v3 = [(NSArray *)textureOrder countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(textureOrder);
        }

        if ([*(*(&v8 + 1) + 8 * v6) useTexCoordAttribMask])
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [(NSArray *)textureOrder countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

+ (id)programInfoLogForName:(unsigned int)name effectLabel:(id)label msg:(const char *)msg
{
  params = 0;
  glGetProgramiv(name, 0x8B84u, &params);
  if (!params)
  {
    return 0;
  }

  v8 = malloc_type_malloc(params, 0x100004077774924uLL);
  glGetProgramInfoLog(name, params, &params, v8);
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"GLKEffect programInfoLogForName - %s\nEffect: %@\nInformation log:\n%s", msg, label, v8];
  free(v8);
  return v9;
}

+ (id)shaderInfoLogForName:(unsigned int)name effectLabel:(id)label msg:(const char *)msg
{
  params = 0;
  glGetShaderiv(name, 0x8B84u, &params);
  if (!params)
  {
    return 0;
  }

  v8 = malloc_type_malloc(params, 0x100004077774924uLL);
  glGetShaderInfoLog(name, params, &params, v8);
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"GLKEffect shaderInfoLogForName - %s\nEffect: %@\nInformation log:\n%s", msg, label, v8];
  free(v8);
  return v9;
}

- (void)setLightModelAmbientColor:(_GLKVector4)color
{
  self->_lightModelAmbientColor.x = v3;
  self->_lightModelAmbientColor.y = v4;
  self->_lightModelAmbientColor.z = v5;
  self->_lightModelAmbientColor.w = v6;
  v8 = [(GLKEffect *)self dirtyUniforms:*&color.x]| 2;

  [(GLKEffect *)self setDirtyUniforms:v8];
}

- (void)setColorMaterialEnabled:(unsigned __int8)enabled
{
  if (self->_colorMaterialEnabled != enabled || !self->_masksInitialized)
  {
    self->_colorMaterialEnabled = enabled;
    v3 = &__vshMasks;
    if (enabled)
    {
      v4 = &__vshMasks;
    }

    else
    {
      v4 = &qword_27DF403D0;
    }

    fshMask = self->_fshMask;
    vshMask = self->_vshMask;
    n1 = vshMask->n1;
    vshMask->n0 |= *v4;
    if (enabled)
    {
      v8 = &__vshMasks + 1;
    }

    else
    {
      v8 = &qword_27DF403D8;
    }

    vshMask->n1 = n1 | *v8;
    if (enabled)
    {
      v9 = &__fshMasks;
    }

    else
    {
      v9 = &qword_27DF40470;
    }

    v10 = fshMask->n1;
    fshMask->n0 |= *v9;
    if (enabled)
    {
      v11 = &__fshMasks + 1;
    }

    else
    {
      v11 = &qword_27DF40478;
    }

    fshMask->n1 = v10 | *v11;
    if (enabled)
    {
      v3 = &qword_27DF403D0;
    }

    v12 = vshMask->n1;
    vshMask->n0 &= ~*v3;
    if (enabled)
    {
      v13 = &qword_27DF403D8;
    }

    else
    {
      v13 = &__vshMasks + 1;
    }

    vshMask->n1 = v12 & ~*v13;
    if (enabled)
    {
      v14 = &qword_27DF40470;
    }

    else
    {
      v14 = &__fshMasks;
    }

    v15 = fshMask->n1;
    fshMask->n0 &= ~*v14;
    if (enabled)
    {
      v16 = &qword_27DF40478;
    }

    else
    {
      v16 = &__fshMasks + 1;
    }

    fshMask->n1 = v15 & ~*v16;
  }
}

- (void)setLightModelTwoSided:(unsigned __int8)sided
{
  if (self->_lightModelTwoSided != sided || !self->_masksInitialized)
  {
    self->_lightModelTwoSided = sided;
    _lightModelTwoSidedMask(self);
  }
}

- (void)setPerVertexLightingEnabled:(unsigned __int8)enabled
{
  if (self->_perVertexLightingEnabled != enabled || !self->_masksInitialized)
  {
    _lightStateChanged(self);
  }
}

- (void)setPerPixelLightingEnabled:(unsigned __int8)enabled
{
  if (self->_perPixelLightingEnabled != enabled || !self->_masksInitialized)
  {
    _lightStateChanged(self);
  }
}

- (void)setShaderBindings
{
  self->_aColorLoc = glGetAttribLocation(self->_programName, "a_color");
  self->_lightModelAmbientColorLoc = glGetUniformLocation(self->_programName, "lightModelAmbientColor");
  self->_baseLightingColorLoc = glGetUniformLocation(self->_programName, "baseLightingColor");

  [(GLKEffect *)self dirtyAllUniforms];
}

- (void)updateVshStringsWithRoot:(id)root enabled:(GLKBigInt_s)enabled
{
  n1 = enabled.n1;
  n0 = enabled.n0;
  if ([root propertyClass] == 21 || objc_msgSend(root, "type") == 2 || (effectShaderArray = self->_effectShaderArray, effectShaderArray[objc_msgSend(root, "propertyClass")]) && objc_msgSend(self->_effectShaderArray[objc_msgSend(root, "propertyClass")], "includeVshShaderTextForRootNode:", root))
  {
    if ([root blockText])
    {
      v9 = [objc_msgSend(root "blockText")];
      vshStrings = self->_vshStrings;
      numVshStrings = self->_numVshStrings;
      self->_numVshStrings = numVshStrings + 1;
      vshStrings[numVshStrings] = v9;
    }

    if ([root children])
    {
      -[GLKEffect updateVshStringsWithRoot:enabled:](self, "updateVshStringsWithRoot:enabled:", [root children], n0, n1);
    }
  }

  if ([root next])
  {
    next = [root next];

    [(GLKEffect *)self updateVshStringsWithRoot:next enabled:n0, n1];
  }
}

- (void)updateFshStringsWithRoot:(id)root enabled:(GLKBigInt_s)enabled
{
  n1 = enabled.n1;
  n0 = enabled.n0;
  if ([root propertyClass] == 21 || objc_msgSend(root, "type") == 2 || (effectShaderArray = self->_effectShaderArray, effectShaderArray[objc_msgSend(root, "propertyClass")]) && objc_msgSend(self->_effectShaderArray[objc_msgSend(root, "propertyClass")], "includeFshShaderTextForRootNode:", root))
  {
    if ([root blockText])
    {
      v9 = [objc_msgSend(root "blockText")];
      fshStrings = self->_fshStrings;
      numFshStrings = self->_numFshStrings;
      self->_numFshStrings = numFshStrings + 1;
      fshStrings[numFshStrings] = v9;
    }

    if ([root children])
    {
      -[GLKEffect updateFshStringsWithRoot:enabled:](self, "updateFshStringsWithRoot:enabled:", [root children], n0, n1);
    }
  }

  if ([root next])
  {
    next = [root next];

    [(GLKEffect *)self updateFshStringsWithRoot:next enabled:n0, n1];
  }
}

- (void)createAndUseProgramWithShadingHash:(id)hash
{
  v73 = *MEMORY[0x277D85DE8];
  if (!self->_masksInitialized)
  {
    [(GLKEffect *)self initializeMasks];
  }

  v67 = 0;
  v68 = 0;
  *v66 = 0;
  if (__purgeShadingHash == 1 && __hashedShaders >= 0x101)
  {
    params = 0;
    glGetIntegerv(0x8B8Du, &params);
    keyEnumerator = [(NSMutableDictionary *)self->_programHash keyEnumerator];
    nextObject = [keyEnumerator nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      do
      {
        v8 = [-[NSMutableDictionary objectForKey:](self->_programHash objectForKey:{nextObject2), "intValue"}];
        if (v8 != params)
        {
          glDeleteProgram(v8);
        }

        nextObject2 = [keyEnumerator nextObject];
      }

      while (nextObject2);
    }

    [(NSMutableDictionary *)self->_programHash removeAllObjects];
    [hash purgeAllShaders];
    __hashedShaders = 0;
  }

  v9 = [[GLKHashableBigInt alloc] initWithBigInt:self->_vshMask];
  v10 = [hash compiledVshForKey:v9];
  if (v10)
  {
    self->_vshName = [v10 intValue];
  }

  else
  {
    self->_vshName = glCreateShader(0x8B31u);
    self->_numVshStrings = 0;
    [(GLKEffect *)self updateVshStringsWithRoot:self->_vshRootNode enabled:self->_vshMask->n0, self->_vshMask->n1];
    glShaderSource(self->_vshName, self->_numVshStrings, self->_vshStrings, 0);
    glCompileShader(self->_vshName);
    label = self->_label;
    if (label && (__purgeShadingHash & 1) == 0)
    {
      glLabelObjectEXT(0x8B48u, self->_vshName, 0, [(NSString *)label cStringUsingEncoding:1]);
    }

    glGetShaderiv(self->_vshName, 0x8B81u, &v66[1]);
    if (!v66[1])
    {
      vshName = self->_vshName;
LABEL_57:
      glDeleteShader(vshName);
      return;
    }

    [hash setCompiledVsh:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithLong:", self->_vshName), v9}];
    ++__hashedShaders;
  }

  v12 = [[GLKHashableBigInt alloc] initWithBigInt:self->_fshMask];
  v13 = [hash compiledFshForKey:v12];
  if (v13)
  {
    fshName = [v13 intValue];
    self->_fshName = fshName;
    goto LABEL_25;
  }

  self->_fshName = glCreateShader(0x8B30u);
  self->_numFshStrings = 0;
  [(GLKEffect *)self updateFshStringsWithRoot:self->_fshRootNode enabled:self->_fshMask->n0, self->_fshMask->n1];
  glShaderSource(self->_fshName, self->_numFshStrings, self->_fshStrings, 0);
  glCompileShader(self->_fshName);
  v15 = self->_label;
  if (v15 && (__purgeShadingHash & 1) == 0)
  {
    glLabelObjectEXT(0x8B48u, self->_fshName, 0, [(NSString *)v15 cStringUsingEncoding:1]);
  }

  glGetShaderiv(self->_fshName, 0x8B81u, &v66[1]);
  if (!v66[1])
  {
    vshName = self->_fshName;
    goto LABEL_57;
  }

  [hash setCompiledFsh:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithLong:", self->_fshName), v12}];
  ++__hashedShaders;
  fshName = self->_fshName;
LABEL_25:
  v67 = fshName | (self->_vshName << 32);
  v68 = [objc_msgSend(MEMORY[0x277CD9388] "currentContext")];
  v16 = [[GLKHashableBigInt alloc] initWithBigInt:&v67];
  v17 = [(NSMutableDictionary *)self->_programHash objectForKey:v16];
  if (v17)
  {
    intValue = [v17 intValue];
    self->_programName = intValue;
    glUseProgram(intValue);
    [(GLKEffect *)self setShaderBindings];
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    properties = self->_properties;
    v20 = [(NSMutableArray *)properties countByEnumeratingWithState:&v61 objects:v72 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v62;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v62 != v22)
          {
            objc_enumerationMutation(properties);
          }

          [*(*(&v61 + 1) + 8 * i) setShaderBindings];
        }

        v21 = [(NSMutableArray *)properties countByEnumeratingWithState:&v61 objects:v72 count:16];
      }

      while (v21);
    }

    return;
  }

  Program = glCreateProgram();
  self->_programName = Program;
  if (self->_label && (__purgeShadingHash & 1) == 0)
  {
    glLabelObjectEXT(0x8B40u, self->_programName, 0, [(NSString *)self->_label cStringUsingEncoding:1]);
    Program = self->_programName;
  }

  glAttachShader(Program, self->_vshName);
  glAttachShader(self->_programName, self->_fshName);
  glBindAttribLocation(self->_programName, 0, "a_position");
  if (self->_perPixelLightingEnabled || self->_perVertexLightingEnabled)
  {
    goto LABEL_39;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  textureOrder = self->_textureOrder;
  v40 = [(NSArray *)textureOrder countByEnumeratingWithState:&v57 objects:v71 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v58;
LABEL_63:
    v43 = 0;
    while (1)
    {
      if (*v58 != v42)
      {
        objc_enumerationMutation(textureOrder);
      }

      if ([*(*(&v57 + 1) + 8 * v43) normalizedNormalsMask])
      {
        break;
      }

      if (v41 == ++v43)
      {
        v41 = [(NSArray *)textureOrder countByEnumeratingWithState:&v57 objects:v71 count:16];
        if (v41)
        {
          goto LABEL_63;
        }

        goto LABEL_40;
      }
    }

LABEL_39:
    glBindAttribLocation(self->_programName, 1u, "a_normal");
  }

LABEL_40:
  if ([(GLKEffect *)self useTexCoordAttrib])
  {
    glBindAttribLocation(self->_programName, 3u, "a_texCoord0");
    glBindAttribLocation(self->_programName, 4u, "a_texCoord1");
  }

  if ([(GLKEffect *)self useColorAttrib])
  {
    glBindAttribLocation(self->_programName, 2u, "a_color");
  }

  glLinkProgram(self->_programName);
  glGetProgramiv(self->_programName, 0x8B82u, v66);
  programName = self->_programName;
  if (!v66[0])
  {
    goto LABEL_54;
  }

  glUseProgram(programName);
  [(GLKEffect *)self setShaderBindings];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v26 = self->_properties;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v53 objects:v70 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v54;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v54 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [*(*(&v53 + 1) + 8 * j) setShaderBindings];
      }

      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v53 objects:v70 count:16];
    }

    while (v28);
  }

  params = 0;
  UniformLocation = glGetUniformLocation(self->_programName, "unit2d[0]");
  v32 = glGetUniformLocation(self->_programName, "unit2d[1]");
  v33 = glGetUniformLocation(self->_programName, "unit2d[2]");
  v34 = glGetUniformLocation(self->_programName, "unitCube[0]");
  v35 = glGetUniformLocation(self->_programName, "unitCube[1]");
  v36 = glGetUniformLocation(self->_programName, "unitCube[2]");
  glGetIntegerv(0x8872u, &params);
  glUniform1i(UniformLocation, params - 1);
  glUniform1i(v32, params - 2);
  glUniform1i(v33, params - 3);
  glUniform1i(v34, params - 4);
  glUniform1i(v35, params - 5);
  glUniform1i(v36, params - 6);
  glValidateProgram(self->_programName);
  if ([GLKEffect programInfoLogForName:self->_programName effectLabel:[(GLKEffect *)self label] msg:"program validate failed"])
  {
    programName = self->_programName;
LABEL_54:
    glDeleteProgram(programName);
    return;
  }

  Error = glGetError();
  if (Error)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"GL ERROR: 0x%04x", Error];
  }

  else
  {
    -[NSMutableDictionary setObject:forKey:](self->_programHash, "setObject:forKey:", [MEMORY[0x277CCABB0] numberWithLong:self->_programName], v16);
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v44 = self->_properties;
    v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v49 objects:v69 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v50;
      do
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v50 != v47)
          {
            objc_enumerationMutation(v44);
          }

          [*(*(&v49 + 1) + 8 * k) dirtyAllUniforms];
        }

        v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v49 objects:v69 count:16];
      }

      while (v46);
    }
  }
}

- (void)bind
{
  v73 = *MEMORY[0x277D85DE8];
  if (self->_textureOrderStale)
  {
    [(GLKEffect *)self setTextureIndices];
  }

  vshMask = self->_vshMask;
  if (vshMask->n0 == self->_prevVshMask.n0 && vshMask->n1 == self->_prevVshMask.n1 && (v4 = self->_fshMask, v4->n0 == self->_prevFshMask.n0) && v4->n1 == self->_prevFshMask.n1)
  {
    params[0] = 0;
    glGetIntegerv(0x8B8Du, params);
    programName = self->_programName;
    if (programName != params[0])
    {
      glUseProgram(programName);
    }
  }

  else
  {
    currentContext = [MEMORY[0x277CD9388] currentContext];
    if (!currentContext)
    {
      if (self->_label)
      {
        NSLog(&cfstr_NoOpenglContex.isa, self->_label);
      }

      else
      {
        NSLog(&cfstr_NoOpenglContex_0.isa);
      }

      return;
    }

    sharegroup = [currentContext sharegroup];
    *params = 0;
    *&params[2] = params;
    v66 = 0x3052000000;
    v67 = __Block_byref_object_copy_;
    v68 = __Block_byref_object_dispose_;
    v69 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __17__GLKEffect_bind__block_invoke;
    block[3] = &unk_278A57DA8;
    block[5] = self;
    block[6] = params;
    block[4] = sharegroup;
    dispatch_sync(__sharegroupQueue, block);
    self->_textureOrderStale = 0;
    fshMask = self->_fshMask;
    self->_prevVshMask = *self->_vshMask;
    self->_prevFshMask = *fshMask;
    _Block_object_dispose(params, 8);
  }

  if (self->_textureOrderStale)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    textureOrder = self->_textureOrder;
    v10 = [(NSArray *)textureOrder countByEnumeratingWithState:&v60 objects:v72 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v61;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v61 != v12)
          {
            objc_enumerationMutation(textureOrder);
          }

          [*(*(&v60 + 1) + 8 * i) setShaderBindings];
        }

        v11 = [(NSArray *)textureOrder countByEnumeratingWithState:&v60 objects:v72 count:16];
      }

      while (v11);
    }

    self->_textureOrderStale = 0;
  }

  if ([(GLKEffect *)self dirtyUniforms])
  {
    if (([(GLKEffect *)self dirtyUniforms]& 2) != 0)
    {
      glUniform4fv(self->_lightModelAmbientColorLoc, 1, &self->_lightModelAmbientColor.x);
    }

    if (!self->_colorMaterialEnabled)
    {
      if ((self->_perVertexLightingEnabled || self->_perPixelLightingEnabled) && (([(GLKEffect *)self dirtyUniforms]& 0x1000000) != 0 || ([(GLKEffect *)self dirtyUniforms]& 0x4000000) != 0 || ([(GLKEffect *)self dirtyUniforms]& 2) != 0))
      {
        [self->_effectShaderArray[10] ambientColor];
        v15.i32[1] = v14;
        v15.i64[1] = __PAIR64__(v17, v16);
        self->_baseLightingColor = vmulq_f32(self->_lightModelAmbientColor, v15);
        [self->_effectShaderArray[10] emissiveColor];
        v19.i32[1] = v18;
        v19.i64[1] = __PAIR64__(v21, v20);
        self->_baseLightingColor = vaddq_f32(self->_baseLightingColor, v19);
        glUniform4fv(self->_baseLightingColorLoc, 1, &self->_baseLightingColor.x);
      }

      if (!self->_colorMaterialEnabled && *(self->_effectShaderArray + 10) && (([(GLKEffect *)self dirtyUniforms]& 0x1000000) != 0 || ([(GLKEffect *)self dirtyUniforms]& 0x40000000) != 0))
      {
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        lightProperties = self->_lightProperties;
        v34 = [(NSMutableArray *)lightProperties countByEnumeratingWithState:&v56 objects:v71 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v57;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v57 != v36)
              {
                objc_enumerationMutation(lightProperties);
              }

              v38 = *(*(&v56 + 1) + 8 * j);
              memset(params, 0, sizeof(params));
              [self->_effectShaderArray[10] ambientColor];
              v48 = v40;
              v49 = v39;
              v50 = v41;
              v51 = v42;
              [v38 ambientColor];
              v43.i64[0] = __PAIR64__(v48, v49);
              v43.i64[1] = __PAIR64__(v51, v50);
              v45.i32[1] = v44;
              v45.i64[1] = __PAIR64__(v47, v46);
              *params = vmulq_f32(v43, v45);
              glUniform4fv([v38 ambientTermLoc], 1, params);
            }

            v35 = [(NSMutableArray *)lightProperties countByEnumeratingWithState:&v56 objects:v71 count:16];
          }

          while (v35);
        }
      }
    }

    [(GLKEffect *)self setDirtyUniforms:0];
  }

  v22 = *(self->_effectShaderArray + 20);
  if (v22 && ![v22 enabled])
  {
    __asm { FMOV            V0.4S, #1.0 }

    *params = _Q0;
    glVertexAttrib4fv(self->_aColorLoc, params);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  properties = self->_properties;
  v29 = [(NSMutableArray *)properties countByEnumeratingWithState:&v52 objects:v70 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v53;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v53 != v31)
        {
          objc_enumerationMutation(properties);
        }

        [*(*(&v52 + 1) + 8 * k) bind];
      }

      v30 = [(NSMutableArray *)properties countByEnumeratingWithState:&v52 objects:v70 count:16];
    }

    while (v30);
  }
}

uint64_t __17__GLKEffect_bind__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = CFDictionaryGetValue(__sharegroupDict, *(a1 + 32));
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (!v2)
  {
    *(*(*(a1 + 48) + 8) + 40) = objc_alloc_init(GLKShadingHash);
    CFDictionaryAddValue(__sharegroupDict, *(a1 + 32), *(*(*(a1 + 48) + 8) + 40));
    v2 = *(*(*(a1 + 48) + 8) + 40);
  }

  v3 = *(a1 + 40);

  return [v3 createAndUseProgramWithShadingHash:v2];
}

- (void)initializeMasks
{
  self->_perPixelLightingEnabled = [(GLKEffect *)self perPixelLightingEnabled];
  self->_perVertexLightingEnabled = [(GLKEffect *)self perVertexLightingEnabled];
  v3 = &__vshMasks;
  v4 = self->_colorMaterialEnabled == 0;
  if (self->_colorMaterialEnabled)
  {
    v5 = &__vshMasks;
  }

  else
  {
    v5 = &qword_27DF403D0;
  }

  fshMask = self->_fshMask;
  vshMask = self->_vshMask;
  n1 = vshMask->n1;
  vshMask->n0 |= *v5;
  v9 = &qword_27DF403D8;
  if (v4)
  {
    v10 = &qword_27DF403D8;
  }

  else
  {
    v10 = &__vshMasks + 1;
  }

  vshMask->n1 = n1 | *v10;
  if (v4)
  {
    v11 = &qword_27DF40470;
  }

  else
  {
    v11 = &__fshMasks;
  }

  v12 = fshMask->n1;
  fshMask->n0 |= *v11;
  if (v4)
  {
    v13 = &qword_27DF40478;
  }

  else
  {
    v13 = &__fshMasks + 1;
  }

  fshMask->n1 = v12 | *v13;
  if (!v4)
  {
    v3 = &qword_27DF403D0;
  }

  v14 = vshMask->n1;
  vshMask->n0 &= ~*v3;
  if (v4)
  {
    v9 = &__vshMasks + 1;
  }

  vshMask->n1 = v14 & ~*v9;
  if (v4)
  {
    v15 = &__fshMasks;
  }

  else
  {
    v15 = &qword_27DF40470;
  }

  v16 = fshMask->n1;
  fshMask->n0 &= ~*v15;
  if (v4)
  {
    v17 = &__fshMasks + 1;
  }

  else
  {
    v17 = &qword_27DF40478;
  }

  fshMask->n1 = v16 & ~*v17;
  _lightModelTwoSidedMask(self);
  _vNormalEyeMask(self);
  _vPositionEyeMask(self);
  _useTexCoordAttribMask(self);
  _normalizedNormalsMask(self);
  _texturingEnabledMask(self);
  for (i = 1; i != 22; ++i)
  {
    v19 = self->_effectShaderArray[i];
    if (v19)
    {
      [v19 initializeMasks];
    }
  }

  [(GLKEffect *)self setMasksInitialized:1];
}

- (BOOL)includeShaderTextForRootNode:(id)node
{
  v48 = *MEMORY[0x277D85DE8];
  if ([objc_msgSend(node "label")])
  {
    goto LABEL_2;
  }

  if ([objc_msgSend(node "label")])
  {
LABEL_4:
    perVertexLightingEnabled = self->_perVertexLightingEnabled;
    goto LABEL_5;
  }

  if ([objc_msgSend(node "label")])
  {
    goto LABEL_8;
  }

  if ([objc_msgSend(node "label")])
  {
    perVertexLightingEnabled = self->_texturingEnabled;
    goto LABEL_5;
  }

  if ([objc_msgSend(node "label")])
  {
    perVertexLightingEnabled = self->_colorMaterialEnabled;
    goto LABEL_5;
  }

  if ([objc_msgSend(node "label")])
  {
    colorMaterialEnabled = self->_colorMaterialEnabled;
    goto LABEL_9;
  }

  if ([objc_msgSend(node "label")])
  {
    if (self->_lightModelTwoSided)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  if ([objc_msgSend(node "label")])
  {
    if (self->_lightModelTwoSided)
    {
LABEL_8:
      colorMaterialEnabled = self->_perVertexLightingEnabled;
LABEL_9:
      LOBYTE(v6) = colorMaterialEnabled == 0;
      return v6;
    }

LABEL_21:
    LOBYTE(v6) = 1;
    return v6;
  }

  if ([objc_msgSend(node "label")])
  {
    if (self->_lightModelTwoSided)
    {
LABEL_2:
      perVertexLightingEnabled = self->_perPixelLightingEnabled;
LABEL_5:
      LOBYTE(v6) = perVertexLightingEnabled != 0;
      return v6;
    }

    goto LABEL_18;
  }

  if ([objc_msgSend(node "label")])
  {
    if (self->_lightModelTwoSided)
    {
      colorMaterialEnabled = self->_perPixelLightingEnabled;
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (![objc_msgSend(node "label")])
  {
    if ([objc_msgSend(node "label")])
    {
      if (!self->_perVertexLightingEnabled && !self->_perPixelLightingEnabled)
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        textureOrder = self->_textureOrder;
        v6 = [(NSArray *)textureOrder countByEnumeratingWithState:&v40 objects:v47 count:16];
        if (!v6)
        {
          return v6;
        }

        v9 = v6;
        v10 = *v41;
LABEL_37:
        v11 = 0;
        while (1)
        {
          if (*v41 != v10)
          {
            objc_enumerationMutation(textureOrder);
          }

          if ([*(*(&v40 + 1) + 8 * v11) normalizedNormalsMask])
          {
            break;
          }

          if (v9 == ++v11)
          {
            v9 = [(NSArray *)textureOrder countByEnumeratingWithState:&v40 objects:v47 count:16];
            LOBYTE(v6) = 0;
            if (v9)
            {
              goto LABEL_37;
            }

            return v6;
          }
        }
      }

      goto LABEL_21;
    }

    if ([objc_msgSend(node "label")])
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v12 = self->_textureOrder;
      v13 = [(NSArray *)v12 countByEnumeratingWithState:&v36 objects:v46 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v37;
LABEL_47:
        v16 = 0;
        while (1)
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v12);
          }

          if ([*(*(&v36 + 1) + 8 * v16) vPositionEyeMask])
          {
            goto LABEL_21;
          }

          if (v14 == ++v16)
          {
            v14 = [(NSArray *)v12 countByEnumeratingWithState:&v36 objects:v46 count:16];
            if (v14)
            {
              goto LABEL_47;
            }

            break;
          }
        }
      }

      if (self->_perPixelLightingEnabled)
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        lightProperties = self->_lightProperties;
        v6 = [(NSMutableArray *)lightProperties countByEnumeratingWithState:&v32 objects:v45 count:16];
        if (!v6)
        {
          return v6;
        }

        v18 = v6;
        v19 = *v33;
LABEL_56:
        v20 = 0;
        while (1)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(lightProperties);
          }

          v21 = *(*(&v32 + 1) + 8 * v20);
          if ([v21 enabled])
          {
            [v21 position];
            if (v22 != 0.0)
            {
              goto LABEL_21;
            }
          }

          if (v18 == ++v20)
          {
            v18 = [(NSMutableArray *)lightProperties countByEnumeratingWithState:&v32 objects:v45 count:16];
            LOBYTE(v6) = 0;
            if (v18)
            {
              goto LABEL_56;
            }

            return v6;
          }
        }
      }

      goto LABEL_18;
    }

    if ([objc_msgSend(node "label")])
    {
      if (!self->_perPixelLightingEnabled)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v23 = self->_textureOrder;
        v6 = [(NSArray *)v23 countByEnumeratingWithState:&v28 objects:v44 count:16];
        if (!v6)
        {
          return v6;
        }

        v24 = v6;
        v25 = *v29;
LABEL_68:
        v26 = 0;
        while (1)
        {
          if (*v29 != v25)
          {
            objc_enumerationMutation(v23);
          }

          if ([*(*(&v28 + 1) + 8 * v26) vNormalEyeMask])
          {
            break;
          }

          if (v24 == ++v26)
          {
            v24 = [(NSArray *)v23 countByEnumeratingWithState:&v28 objects:v44 count:16];
            LOBYTE(v6) = 0;
            if (v24)
            {
              goto LABEL_68;
            }

            return v6;
          }
        }
      }

      goto LABEL_21;
    }

    if ([objc_msgSend(node "label")])
    {
      if (!self->_perVertexLightingEnabled)
      {
        goto LABEL_18;
      }

      goto LABEL_77;
    }

    if ([objc_msgSend(node "label")])
    {
      if (!self->_perVertexLightingEnabled)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if ([objc_msgSend(node "label")])
      {
        if (!self->_perPixelLightingEnabled)
        {
          goto LABEL_18;
        }

LABEL_77:
        if (self->_lightModelTwoSided)
        {
          goto LABEL_21;
        }

LABEL_18:
        LOBYTE(v6) = 0;
        return v6;
      }

      if (![objc_msgSend(node "label")] || !self->_perPixelLightingEnabled)
      {
        goto LABEL_21;
      }
    }

    if (!self->_lightModelTwoSided)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  LOBYTE(v6) = [(GLKEffect *)self useTexCoordAttrib];
  return v6;
}

- (BOOL)includeFshShaderTextForRootNode:(id)node
{
  v3 = *(node + 1);
  result = (__fshMasks & v3) == 0 && (v4 = *(node + 2), (*(&__fshMasks + 1) & v4) == 0) && (qword_27DF40470 & v3) == 0 && (qword_27DF40478 & v4) == 0 && (xmmword_27DF40480 & v3) == 0 && (*(&xmmword_27DF40480 + 1) & v4) == 0 && (xmmword_27DF40490 & v3) == 0 && (*(&xmmword_27DF40490 + 1) & v4) == 0 && (xmmword_27DF404A0 & v3) == 0 && (*(&xmmword_27DF404A0 + 1) & v4) == 0 && (qword_27DF404B0 & v3) == 0 && (qword_27DF404B8 & v4) == 0 && (xmmword_27DF404C0 & v3) == 0 && (*(&xmmword_27DF404C0 + 1) & v4) == 0 && (xmmword_27DF404D0 & v3) == 0 && (*(&xmmword_27DF404D0 + 1) & v4) == 0 && (xmmword_27DF404E0 & v3) == 0 && (*(&xmmword_27DF404E0 + 1) & v4) == 0 && (xmmword_27DF404F0 & v3) == 0 && (*(&xmmword_27DF404F0 + 1) & v4) == 0 && (xmmword_27DF40500 & v3) == 0 && (*(&xmmword_27DF40500 + 1) & v4) == 0 || (fshMask = self->_fshMask, (fshMask->n0 & v3) != 0) || (*(node + 2) & fshMask->n1) != 0;
  return result;
}

- (BOOL)includeVshShaderTextForRootNode:(id)node
{
  v3 = *(node + 1);
  result = (__vshMasks & v3) == 0 && (v4 = *(node + 2), (*(&__vshMasks + 1) & v4) == 0) && (qword_27DF403D0 & v3) == 0 && (qword_27DF403D8 & v4) == 0 && (xmmword_27DF403E0 & v3) == 0 && (*(&xmmword_27DF403E0 + 1) & v4) == 0 && (xmmword_27DF403F0 & v3) == 0 && (*(&xmmword_27DF403F0 + 1) & v4) == 0 && (xmmword_27DF40400 & v3) == 0 && (*(&xmmword_27DF40400 + 1) & v4) == 0 && (xmmword_27DF40410 & v3) == 0 && (*(&xmmword_27DF40410 + 1) & v4) == 0 && (xmmword_27DF40420 & v3) == 0 && (*(&xmmword_27DF40420 + 1) & v4) == 0 && (xmmword_27DF40430 & v3) == 0 && (*(&xmmword_27DF40430 + 1) & v4) == 0 && (xmmword_27DF40440 & v3) == 0 && (*(&xmmword_27DF40440 + 1) & v4) == 0 && (xmmword_27DF40450 & v3) == 0 && (*(&xmmword_27DF40450 + 1) & v4) == 0 || (vshMask = self->_vshMask, (vshMask->n0 & v3) != 0) || (*(node + 2) & vshMask->n1) != 0;
  return result;
}

+ (void)setStaticMasksWithVshRoot:(id)root fshRoot:(id)fshRoot
{
  *&__vshMasks = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"color material enabled", root, [root index]);
  *(&__vshMasks + 1) = v6;
  qword_27DF403D0 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"color material disabled", root, [root index]);
  qword_27DF403D8 = v7;
  *&__fshMasks = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"color material enabled", fshRoot, [fshRoot index]);
  *(&__fshMasks + 1) = v8;
  qword_27DF40470 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"color material disabled", fshRoot, [fshRoot index]);
  qword_27DF40478 = v9;
  *&xmmword_27DF403E0 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"light model two-sided per-vertex enabled", root, [root index]);
  *(&xmmword_27DF403E0 + 1) = v10;
  *&xmmword_27DF40480 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"light model two-sided per-vertex enabled", fshRoot, [fshRoot index]);
  *(&xmmword_27DF40480 + 1) = v11;
  *&xmmword_27DF40490 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"light model two-sided per-vertex disabled", fshRoot, [fshRoot index]);
  *(&xmmword_27DF40490 + 1) = v12;
  *&xmmword_27DF404A0 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"light model two-sided per-pixel enabled", fshRoot, [fshRoot index]);
  *(&xmmword_27DF404A0 + 1) = v13;
  qword_27DF404B0 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"light model two-sided per-pixel disabled", fshRoot, [fshRoot index]);
  qword_27DF404B8 = v14;
  *&xmmword_27DF404C0 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"per-pixel lighting enabled", fshRoot, [fshRoot index]);
  *(&xmmword_27DF404C0 + 1) = v15;
  *&xmmword_27DF403F0 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"per-vertex lighting enabled", root, [root index]);
  *(&xmmword_27DF403F0 + 1) = v16;
  *&xmmword_27DF40400 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"use tex coord attrib", root, [root index]);
  *(&xmmword_27DF40400 + 1) = v17;
  *&xmmword_27DF404D0 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"use tex coord attrib", fshRoot, [fshRoot index]);
  *(&xmmword_27DF404D0 + 1) = v18;
  *&xmmword_27DF40410 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"texturing enabled", root, [root index]);
  *(&xmmword_27DF40410 + 1) = v19;
  *&xmmword_27DF404E0 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"texturing enabled", fshRoot, [fshRoot index]);
  *(&xmmword_27DF404E0 + 1) = v20;
  *&xmmword_27DF40420 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"normalized normals", root, [root index]);
  *(&xmmword_27DF40420 + 1) = v21;
  *&xmmword_27DF40430 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"v_positionEye", root, [root index]);
  *(&xmmword_27DF40430 + 1) = v22;
  *&xmmword_27DF404F0 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"v_positionEye", fshRoot, [fshRoot index]);
  *(&xmmword_27DF404F0 + 1) = v23;
  *&xmmword_27DF40440 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"v_normalEye", root, [root index]);
  *(&xmmword_27DF40440 + 1) = v24;
  *&xmmword_27DF40500 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"v_normalEye", fshRoot, [fshRoot index]);
  *(&xmmword_27DF40500 + 1) = v25;
  *&xmmword_27DF40450 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"modelview matrix", root, [root index]);
  *(&xmmword_27DF40450 + 1) = v26;
}

- (void)dealloc
{
  free(self->_vshMask);
  free(self->_fshMask);
  free(self->_vshStrings);
  free(self->_fshStrings);
  free(self->_effectShaderArray);

  objectEnumerator = [(NSMutableDictionary *)self->_programHash objectEnumerator];
  for (i = objectEnumerator; ; objectEnumerator = i)
  {
    nextObject = [objectEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    glDeleteProgram([nextObject intValue]);
  }

  v6.receiver = self;
  v6.super_class = GLKEffect;
  [(GLKEffect *)&v6 dealloc];
}

- (_GLKVector4)lightModelAmbientColor
{
  *&result.v[2] = a2;
  *&result.x = self;
  return result;
}

- (_GLKVector4)baseLightingColor
{
  *&result.v[2] = a2;
  *&result.x = self;
  return result;
}

- (void)setBaseLightingColor:(_GLKVector4)color
{
  self->_baseLightingColor.x = v3;
  self->_baseLightingColor.y = v4;
  self->_baseLightingColor.z = v5;
  self->_baseLightingColor.w = v6;
}

- (GLKBigInt_s)prevFshMask
{
  n1 = self->_prevFshMask.n1;
  n0 = self->_prevFshMask.n0;
  result.n1 = n1;
  result.n0 = n0;
  return result;
}

- (GLKBigInt_s)prevVshMask
{
  n1 = self->_prevVshMask.n1;
  n0 = self->_prevVshMask.n0;
  result.n1 = n1;
  result.n0 = n0;
  return result;
}

@end