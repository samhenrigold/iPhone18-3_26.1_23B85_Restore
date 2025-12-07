@interface DYEAGLDebugFunctionPlayer
+ (void)_resolveDepthWithWidth:(int)width height:(int)height numSamples:(int)samples buffer:(float *)buffer;
+ (void)_resolveStencilWithWidth:(int)width height:(int)height numSamples:(int)samples buffer:(char *)buffer;
- (BOOL)_isBoundObjectAlive:(unsigned int)alive isObjectFunc:(void *)func;
- (BOOL)_isContextModifiable;
- (BOOL)_switchToWireframeFramebuffer;
- (BOOL)isFunctionEnabled;
- (BOOL)shouldExecuteGraphicsFunction;
- (DYEAGLDebugFunctionPlayer)initWithCaptureStore:(id)store;
- (DYLayerManager)strongLayerManager;
- (id).cxx_construct;
- (void)_changeTextureToWidth:(int)width height:(int)height imageFormatInfo:(ImageFormatInfo *)info texels:(char *)texels;
- (void)_copyColorAttachmentToPresentTexture:(unsigned int)texture imageInfo:(ImageInfo *)info;
- (void)_copyDepthOrStencilAttachmentToPresent:(unsigned int)present type:(unsigned int)type;
- (void)_copyRenderbufferColorAttachmentToPresent:(unsigned int)present color:(unsigned int)color isWireframe:(BOOL)wireframe;
- (void)_copyTextureColorAttachmentToPresent:(unsigned int)present;
- (void)_imageInfoForAttachment:(unsigned int)attachment outImageInfo:(ImageInfo *)info;
- (void)_onResourceUpdated:(unsigned int)updated target:(unsigned int)target dispatcher:(Dispatcher *)dispatcher;
- (void)_presentFramebufferWithWireframe:(BOOL)wireframe wireframeLineColor:(unsigned int)color;
- (void)_renderPresentTextureWithColor:(unsigned int)color enableBlend:(BOOL)blend texBlitProgram:(unsigned int)program;
- (void)dealloc;
- (void)executePlatformFunction;
- (void)performPostGraphicsFunctionDispatchActions:(BOOL)actions;
- (void)prepareForCaptureExecution;
- (void)setEngine:(id)engine;
@end

@implementation DYEAGLDebugFunctionPlayer

- (DYLayerManager)strongLayerManager
{
  WeakRetained = objc_loadWeakRetained(&self->super._layerManager);

  return WeakRetained;
}

+ (void)_resolveDepthWithWidth:(int)width height:(int)height numSamples:(int)samples buffer:(float *)buffer
{
  if (samples >= 2 && height >= 1)
  {
    v6 = 0;
    bufferCopy = buffer;
    do
    {
      if (width >= 1)
      {
        for (i = 0; i != width; ++i)
        {
          v9 = 0;
          v10 = 0.0;
          do
          {
            v10 = v10 + bufferCopy[v9++];
          }

          while (samples != v9);
          bufferCopy += (samples - 1) + 1;
          *buffer++ = (1.0 / samples) * v10;
        }
      }

      ++v6;
    }

    while (v6 != height);
  }
}

+ (void)_resolveStencilWithWidth:(int)width height:(int)height numSamples:(int)samples buffer:(char *)buffer
{
  if (samples >= 2 && height >= 1)
  {
    v6 = 0;
    bufferCopy = buffer;
    do
    {
      if (width >= 1)
      {
        for (i = 0; i != width; ++i)
        {
          v9 = 0;
          v10 = 0;
          do
          {
            v10 += bufferCopy[v9++];
          }

          while (samples != v9);
          bufferCopy += samples;
          *buffer++ = v10 / samples;
        }
      }

      ++v6;
    }

    while (v6 != height);
  }
}

- (DYEAGLDebugFunctionPlayer)initWithCaptureStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = DYEAGLDebugFunctionPlayer;
  v5 = [(DYEAGLDebugFunctionPlayer *)&v13 initWithCaptureStore:storeCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    sharegroupSet = v5->_sharegroupSet;
    v5->_sharegroupSet = v6;

    v5->_wireframeRenderbuffer = kDYReservedGLNameWireframeRenderbuffer;
    v5->_wireframeFramebuffer = kDYReservedGLNameWireframeFramebuffer;
    v5->_wireframeRenderbufferFormat = 0;
    v5->_presentRenderbuffer = kDYReservedGLNamePresentRenderbuffer;
    v5->_presentFramebuffer = kDYReservedGLNamePresentFramebuffer;
    v5->_presentTexture = kDYReservedGLNamePresentTexture;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = sub_70F8;
    v11[4] = sub_7108;
    v8 = v5;
    v12 = v8;
    DYSetResourceUpdateCallbackBlock();
    v9 = v8;
    _Block_object_dispose(v11, 8);
  }

  return v5;
}

- (void)dealloc
{
  DYSetResourceUpdateCallbackBlock();
  v3.receiver = self;
  v3.super_class = DYEAGLDebugFunctionPlayer;
  [(DYEAGLDebugFunctionPlayer *)&v3 dealloc];
}

- (void)setEngine:(id)engine
{
  engineCopy = engine;
  v7.receiver = self;
  v7.super_class = DYEAGLDebugFunctionPlayer;
  [(DYEAGLDebugFunctionPlayer *)&v7 setEngine:engineCopy];
  disabledFunctions = [*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__engine] disabledFunctions];
  disabledFunctions = self->_disabledFunctions;
  self->_disabledFunctions = disabledFunctions;
}

- (BOOL)isFunctionEnabled
{
  if (self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__mainExecutionMode] == 1)
  {
    return [(NSMutableIndexSet *)self->_disabledFunctions containsIndex:*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__currentExecutionModeFunctionIndex], v2, v3]^ 1;
  }

  else
  {
    return 1;
  }
}

- (BOOL)shouldExecuteGraphicsFunction
{
  v3 = OBJC_IVAR___DYFunctionPlayer__engine;
  delegate = [*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__engine] delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    goto LABEL_28;
  }

  delegate2 = [*&self->super.DYGLFunctionPlayer_opaque[v3] delegate];
  shouldExecuteGraphicsFunction = [delegate2 shouldExecuteGraphicsFunction];

  delegate3 = [*&self->super.DYGLFunctionPlayer_opaque[v3] delegate];
  shouldCallSuper = [delegate3 shouldCallSuper];

  if (shouldCallSuper)
  {
    selfCopy = self;
    v10 = &selfCopy;
LABEL_23:
    v10[1] = DYEAGLDebugFunctionPlayer;
    return objc_msgSendSuper2(v10, "shouldExecuteGraphicsFunction", selfCopy2);
  }

  delegate4 = [*&self->super.DYGLFunctionPlayer_opaque[v3] delegate];
  shouldReturn = [delegate4 shouldReturn];

  if ((shouldReturn & 1) == 0)
  {
LABEL_28:
    if ([(DYEAGLDebugFunctionPlayer *)self isFunctionEnabled])
    {
      if (self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__mainExecutionMode] != 1)
      {
        goto LABEL_22;
      }

      v13 = **&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__function];
      if (v13 <= 822)
      {
        v18 = (v13 - 139) > 7 || ((1 << (v13 + 117)) & 0x91) == 0;
        if (v18 && v13 != 382 && v13 != 384)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v14 = v13 - 823;
        v15 = v14 > 0x16;
        v16 = (1 << v14) & 0x780003;
        if (v15 || v16 == 0)
        {
          goto LABEL_22;
        }
      }

      v19 = *&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__currentExecutionModeFunctionIndex];
      if (v19 < [*&self->super.DYGLFunctionPlayer_opaque[v3] targetFunctionIndex])
      {
LABEL_22:
        selfCopy2 = self;
        v10 = &selfCopy2;
        goto LABEL_23;
      }
    }

    return 0;
  }

  return shouldExecuteGraphicsFunction;
}

- (void)performPostGraphicsFunctionDispatchActions:(BOOL)actions
{
  actionsCopy = actions;
  v5 = OBJC_IVAR___DYFunctionPlayer__engine;
  delegate = [*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__engine] delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [*&self->super.DYGLFunctionPlayer_opaque[v5] delegate];
    [delegate2 performPostGraphicsFunctionDispatchActions:actionsCopy];

    delegate3 = [*&self->super.DYGLFunctionPlayer_opaque[v5] delegate];
    shouldCallSuper = [delegate3 shouldCallSuper];

    if (shouldCallSuper)
    {
      v52.receiver = self;
      v52.super_class = DYEAGLDebugFunctionPlayer;
      [(DYEAGLDebugFunctionPlayer *)&v52 performPostGraphicsFunctionDispatchActions:actionsCopy];
    }

    delegate4 = [*&self->super.DYGLFunctionPlayer_opaque[v5] delegate];
    shouldReturn = [delegate4 shouldReturn];

    if (shouldReturn)
    {
      return;
    }
  }

  v13 = OBJC_IVAR___DYFunctionPlayer__function;
  v14 = *&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__function];
  v15 = *v14;
  if (*v14 <= 381)
  {
    v18 = (v15 - 139) <= 7 && ((1 << (v15 + 117)) & 0x91) != 0 || v15 == 28;
    if (!v18 && v15 != 36)
    {
      goto LABEL_34;
    }

LABEL_22:
    v19 = *&self->super.DYGLFunctionPlayer_opaque[v5];
    _isContextModifiable = [(DYEAGLDebugFunctionPlayer *)self _isContextModifiable];
    v21 = *&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__currentExecutionModeFunctionIndex];
    if (((v21 + 1 == [v19 targetFunctionIndex]) & _isContextModifiable) != 1)
    {
LABEL_62:

      return;
    }

    v22 = 0;
    LOBYTE(v51[0]) = 0;
    LOBYTE(v49) = 0;
    v23 = OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo;
    if (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo] + 104) >= 3uLL)
    {
      v24 = OBJC_IVAR___DYGLFunctionPlayer__disp;
      v25 = OBJC_IVAR___DYGLFunctionPlayer__gli_ctx;
      v22 = (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 1144))(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], 35977);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v24] + 792))(*&self->super.DYGLFunctionPlayer_opaque[v25], 36388, v51);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v24] + 792))(*&self->super.DYGLFunctionPlayer_opaque[v25], 36387, &v49);
      if (LOBYTE(v51[0]) == 1 && !v49)
      {
        (*(*&self->super.DYGLFunctionPlayer_opaque[v24] + 7256))(*&self->super.DYGLFunctionPlayer_opaque[v25]);
      }
    }

    if (![(DYEAGLDebugFunctionPlayer *)self _switchToWireframeFramebuffer])
    {
LABEL_57:
      if ([v19 enableDrawCallPresent])
      {
        -[DYEAGLDebugFunctionPlayer _presentFramebufferWithWireframe:wireframeLineColor:](self, "_presentFramebufferWithWireframe:wireframeLineColor:", [v19 enableWireframePresent], objc_msgSend(v19, "wireframeLineColor"));
      }

      if (LOBYTE(v51[0]) == 1 && !v49)
      {
        (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 7264))(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx]);
      }

      goto LABEL_62;
    }

    v26 = *&self->super.DYGLFunctionPlayer_opaque[v13];
    v27 = *v26;
    if (*v26 <= 145)
    {
      if (v27 == 139)
      {
        v31 = 0;
        v32 = 0;
        v29 = (v26 + 120);
        v28 = **(v26 + 96);
        goto LABEL_45;
      }

      if (v27 != 143)
      {
        goto LABEL_56;
      }

      v28 = 0;
      v29 = (v26 + 96);
      v31 = **(v26 + 120);
      v35 = *&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__argumentPointers + 32];
    }

    else
    {
      if (v27 != 146)
      {
        if (v27 == 823)
        {
          v31 = 0;
          v32 = 0;
          v29 = (v26 + 120);
          v30 = *(v26 + 144);
          v28 = **(v26 + 96);
          goto LABEL_43;
        }

        if (v27 == 824)
        {
          v28 = 0;
          v29 = (v26 + 96);
          v30 = *(v26 + 168);
          v31 = **(v26 + 120);
          v32 = **&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__argumentPointers + 32];
LABEL_43:
          v36 = *v30;
LABEL_46:
          if (!actionsCopy)
          {
            v37 = **v29;
            if (v37 >= 1 && v22 == 0)
            {
              v39 = **(v26 + 72);
              if (*(*&self->super.DYGLFunctionPlayer_opaque[v23] + 104) == 1)
              {
                v40 = &OBJC_IVAR___DYEAGLDebugFunctionPlayer__fixedWireframeRenderer;
              }

              else
              {
                v40 = &OBJC_IVAR___DYEAGLDebugFunctionPlayer__shaderWireframeRenderer;
              }

              v41 = *v40;
              [v19 wireframeLineWidth];
              (*(*&self->super.DYGLFunctionPlayer_opaque[v41] + 16))(&self->super.DYGLFunctionPlayer_opaque[v41], self, v39, v28, v37, v31, v32, v36);
            }
          }
        }

LABEL_56:
        [(DYEAGLDebugFunctionPlayer *)self _switchToOriginalFramebuffer];
        goto LABEL_57;
      }

      v28 = 0;
      v29 = (v26 + 144);
      v31 = **(v26 + 168);
      v35 = *&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__argumentPointers + 48];
    }

    v32 = *v35;
LABEL_45:
    v36 = 1;
    goto LABEL_46;
  }

  v16 = (v15 - 823) > 0x1F || ((1 << (v15 - 55)) & 0xF0784003) == 0;
  if (!v16 || v15 == 384 || v15 == 382)
  {
    goto LABEL_22;
  }

LABEL_34:
  if (v15 == 93 && !actionsCopy)
  {
    v33 = *(v14 + 72);
    context = [(DYEAGLDebugFunctionPlayer *)self context];
    sub_4528(v51, context);

    v49 = v51;
    gliDispatch = [(DYEAGLDebugFunctionPlayer *)self gliDispatch];
    sub_3A60(&self->_shaderWireframeRenderer, &v49, *v33);
LABEL_70:

    return;
  }

  if (v15 == 349 && !actionsCopy)
  {
    v42 = *(v14 + 72);
    context2 = [(DYEAGLDebugFunctionPlayer *)self context];
    sub_4528(v51, context2);

    v49 = v51;
    gliDispatch = [(DYEAGLDebugFunctionPlayer *)self gliDispatch];
    sub_3FC8(&self->_shaderWireframeRenderer, &v49, *v42);
    goto LABEL_70;
  }

  if (v15 == 888 && !actionsCopy)
  {
    v44 = *(v14 + 72);
    v45 = *(v14 + 96);
    v46 = *(v14 + 24);
    context3 = [(DYEAGLDebugFunctionPlayer *)self context];
    sub_4528(v51, context3);

    v49 = v51;
    gliDispatch = [(DYEAGLDebugFunctionPlayer *)self gliDispatch];
    sub_4380(&self->_shaderWireframeRenderer, &v49, *v46, *v44, *v45, *(v14 + 120));
    goto LABEL_70;
  }

  v48.receiver = self;
  v48.super_class = DYEAGLDebugFunctionPlayer;
  [(DYEAGLDebugFunctionPlayer *)&v48 performPostGraphicsFunctionDispatchActions:actionsCopy];
}

- (void)executePlatformFunction
{
  v3 = OBJC_IVAR___DYFunctionPlayer__engine;
  delegate = [*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__engine] delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    goto LABEL_20;
  }

  delegate2 = [*&self->super.DYGLFunctionPlayer_opaque[v3] delegate];
  [delegate2 executePlatformFunction];

  delegate3 = [*&self->super.DYGLFunctionPlayer_opaque[v3] delegate];
  shouldCallSuper = [delegate3 shouldCallSuper];

  if (shouldCallSuper)
  {
    v23.receiver = self;
    v23.super_class = DYEAGLDebugFunctionPlayer;
    [(DYEAGLFunctionPlayer *)&v23 executePlatformFunction];
  }

  delegate4 = [*&self->super.DYGLFunctionPlayer_opaque[v3] delegate];
  shouldReturn = [delegate4 shouldReturn];

  if ((shouldReturn & 1) == 0)
  {
LABEL_20:
    v11 = *&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__function];
    v12 = *v11;
    if ([(DYEAGLDebugFunctionPlayer *)self isFunctionEnabled])
    {
      if (v12 > -8180)
      {
        if ((v12 + 8179) < 2)
        {
          return;
        }
      }

      else
      {
        switch(v12)
        {
          case -12287:
            v21.receiver = self;
            v21.super_class = DYEAGLDebugFunctionPlayer;
            [(DYEAGLFunctionPlayer *)&v21 executePlatformFunction];
            v14 = **(v11 + 96);
            strongLayerManager = [(DYEAGLDebugFunctionPlayer *)self strongLayerManager];
            v16 = [strongLayerManager layerForID:v14];

            drawableProperties = [v16 drawableProperties];
            v18 = [drawableProperties mutableCopy];

            v19 = [NSNumber numberWithBool:1];
            [v18 setObject:v19 forKey:kEAGLDrawablePropertyRetainedBacking];

            [v16 setDrawableProperties:v18];
            return;
          case -8190:
            return;
          case -8188:
            v22.receiver = self;
            v22.super_class = DYEAGLDebugFunctionPlayer;
            [(DYEAGLFunctionPlayer *)&v22 executePlatformFunction];
            v13 = [[NSNumber alloc] initWithUnsignedLongLong:**(v11 + 120)];
            if (([(NSMutableSet *)self->_sharegroupSet containsObject:v13]& 1) == 0)
            {
              [(NSMutableSet *)self->_sharegroupSet addObject:v13];
              DYReserveGLObjects();
              DYReserveGLObjects();
              DYReserveGLObjects();
              DYReserveGLObjects();
              DYReserveGLObjects();
            }

            if (**(v11 + 72) >= 2u)
            {
              [*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx] setParameter:610 to:&unk_2A510];
            }

            return;
        }
      }

      v20.receiver = self;
      v20.super_class = DYEAGLDebugFunctionPlayer;
      [(DYEAGLFunctionPlayer *)&v20 executePlatformFunction];
    }
  }
}

- (void)_onResourceUpdated:(unsigned int)updated target:(unsigned int)target dispatcher:(Dispatcher *)dispatcher
{
  if (target == 35648)
  {
    sub_3FC8(&self->_shaderWireframeRenderer, dispatcher, *&updated);
  }

  else if (target == 35656)
  {
    sub_3A60(&self->_shaderWireframeRenderer, dispatcher, *&updated);
  }
}

- (BOOL)_switchToWireframeFramebuffer
{
  v3 = OBJC_IVAR___DYGLFunctionPlayer__disp;
  v4 = OBJC_IVAR___DYGLFunctionPlayer__gli_ctx;
  (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], 36006, &self->_origFramebuffer);
  if (self->_origFramebuffer)
  {
    v18 = 0;
    v16 = 0;
    v17 = 0;
    (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 832))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36007, &v18);
    v5 = 36064;
    (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5440))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36009, 36064, 36049, &v17);
    (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5440))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36009, 36064, 36048, &v16);
    if (v16 || (v5 = 36096, (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5440))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36009, 36096, 36049, &v17), (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5440))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36009, 36096, 36048, &v16), v16) || (v5 = 36128, (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5440))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36009, 36128, 36049, &v17), (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5440))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36009, 36128, 36048, &v16), v16))
    {
      memset(v12, 0, sizeof(v12));
      v13 = 0;
      v14 = 0x100000001;
      v15[0] = 0;
      *(v15 + 5) = 0;
      [(DYEAGLDebugFunctionPlayer *)self _imageInfoForAttachment:v5 outImageInfo:v12];
      (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5376))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36009, self->_wireframeFramebuffer);
      v11 = 0;
      (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5328))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36161, self->_wireframeRenderbuffer);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5360))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36161, 36162, &v11 + 4);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5360))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36161, 36163, &v11);
      if (self->_wireframeRenderbufferFormat)
      {
        if (__PAIR64__(v13, v14) == v11)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      self->_wireframeRenderbufferFormat = 32856;
      v7 = *(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo] + 104);
      if (v7 == 2)
      {
        v8 = (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 936))(*&self->super.DYGLFunctionPlayer_opaque[v4], 7939);
        if (!v8 || !strstr(v8, "GL_EXT_texture_rg"))
        {
          goto LABEL_15;
        }
      }

      else if (v7 < 3)
      {
LABEL_15:
        HIDWORD(v11) = ~v13;
LABEL_16:
        (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5352))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36161, self->_wireframeRenderbufferFormat);
        (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5432))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36009, 36064, 36161, self->_wireframeRenderbuffer);
LABEL_17:
        (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 824))(*&self->super.DYGLFunctionPlayer_opaque[v4], 3106, v19);
        (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 792))(*&self->super.DYGLFunctionPlayer_opaque[v4], 3107, v10);
        v6 = 1;
        (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 392))(*&self->super.DYGLFunctionPlayer_opaque[v4], 1, 1, 1, 1);
        (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 96))(*&self->super.DYGLFunctionPlayer_opaque[v4], 0.0, 0.0, 0.0, 0.0);
        (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 80))(*&self->super.DYGLFunctionPlayer_opaque[v4], 0x4000);
        (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 96))(*&self->super.DYGLFunctionPlayer_opaque[v4], v19[0], v19[1], v19[2], v19[3]);
        (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 392))(*&self->super.DYGLFunctionPlayer_opaque[v4], v10[0], v10[1], v10[2], v10[3]);
        (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5328))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36161, v18);
        return v6;
      }

      self->_wireframeRenderbufferFormat = 33321;
      goto LABEL_15;
    }
  }

  return 0;
}

- (void)_presentFramebufferWithWireframe:(BOOL)wireframe wireframeLineColor:(unsigned int)color
{
  wireframeCopy = wireframe;
  v77 = 0;
  v76 = 0uLL;
  v5 = OBJC_IVAR___DYGLFunctionPlayer__disp;
  v6 = OBJC_IVAR___DYGLFunctionPlayer__gli_ctx;
  (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], 36006, &v77 + 4);
  if (HIDWORD(v77))
  {
    (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 832))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36007, &v77);
    (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5440))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36009, 36064, 36049, &v76 + 12);
    (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5440))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36009, 36064, 36048, &v76 + 8);
    if (DWORD2(v76))
    {
      v69 = 0uLL;
      *&v70[8] = 0;
      *v70 = 0;
      *&v70[12] = 0x100000001;
      *&v70[20] = 0;
      *&v70[25] = 0;
      [(DYEAGLDebugFunctionPlayer *)self _imageInfoForAttachment:36064 outImageInfo:&v69];
      v7 = kEAGLColorFormatRGBA8;
      if ((HIDWORD(v69) & 0xFFFFFFFD) == 0x8C41)
      {
        v8 = kEAGLColorFormatSRGBA8;
      }

      else
      {
        v8 = kEAGLColorFormatRGBA8;
      }

      v59 = v8;
      if (DWORD2(v76) == 36161)
      {
        currentRenderbufferDrawableMap = [(DYEAGLFunctionPlayer *)self currentRenderbufferDrawableMap];
        v10 = [NSNumber numberWithUnsignedInt:HIDWORD(v76)];
        v11 = [currentRenderbufferDrawableMap objectForKey:v10];

        if (v11)
        {
          strongLayerManager = [(DYEAGLDebugFunctionPlayer *)self strongLayerManager];
          currentTopLayer = [strongLayerManager layerForID:{objc_msgSend(v11, "unsignedLongLongValue")}];

          if (currentTopLayer)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }
      }
    }

    else
    {
      v59 = 0;
    }

    strongLayerManager2 = [(DYEAGLDebugFunctionPlayer *)self strongLayerManager];
    currentTopLayer = [strongLayerManager2 currentTopLayer];

    if (!currentTopLayer)
    {
LABEL_39:

      return;
    }

    v7 = kEAGLColorFormatRGBA8;
LABEL_14:
    v15 = v59;
    if (v59)
    {
      v16 = v59;
    }

    else
    {
      v16 = v7;
    }

    v59 = v16;

    v56 = OBJC_IVAR___DYGLFunctionPlayer__ctx;
    sharegroup = [*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx] sharegroup];

    strongLayerManager3 = [(DYEAGLDebugFunctionPlayer *)self strongLayerManager];
    v19 = [strongLayerManager3 layerForID:sharegroup];

    drawableProperties = [v19 drawableProperties];
    v21 = [drawableProperties objectForKeyedSubscript:kEAGLDrawablePropertyColorFormat];

    if (v19 != currentTopLayer || ([v19 bounds], v23 = v22, v25 = v24, v27 = v26, v29 = v28, objc_msgSend(currentTopLayer, "bounds"), v82.origin.x = v30, v82.origin.y = v31, v82.size.width = v32, v82.size.height = v33, v81.origin.x = v23, v81.origin.y = v25, v81.size.width = v27, v81.size.height = v29, !CGRectEqualToRect(v81, v82)) || (objc_msgSend(v19, "contentsScale"), v35 = v34, objc_msgSend(currentTopLayer, "contentsScale"), v35 != v36) || (objc_msgSend(v21, "isEqualToString:", v59) & 1) == 0)
    {
      v79 = kEAGLDrawablePropertyColorFormat;
      v80 = v59;
      v37 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
      if (v19)
      {
        sub_A3F4(v78, 1, 1);
        objc_msgSend_transform(currentTopLayer);
        v71 = v65;
        v72 = v66;
        v73 = v67;
        v74 = v68;
        v69 = v61;
        *v70 = v62;
        *&v70[16] = v63;
        *&v70[32] = v64;
        [v19 setTransform:&v69];
        [currentTopLayer anchorPoint];
        [v19 setAnchorPoint:?];
        [currentTopLayer bounds];
        [v19 setBounds:?];
        [currentTopLayer contentsScale];
        [v19 setContentsScale:?];
        [v19 setDrawableProperties:v37];
      }

      else
      {
        strongLayerManager4 = [(DYEAGLDebugFunctionPlayer *)self strongLayerManager];
        [currentTopLayer bounds];
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v46 = v45;
        [currentTopLayer contentsScale];
        v19 = [strongLayerManager4 createLayerWithID:sharegroup contentRect:v37 contentsScale:0 properties:v40 isCoreAnimationSurface:{v42, v44, v46, v47}];

        sub_A3F4(v78, 1, 1);
        objc_msgSend_transform(currentTopLayer);
        v71 = v75[4];
        v72 = v75[5];
        v73 = v75[6];
        v74 = v75[7];
        v69 = v75[0];
        *v70 = v75[1];
        *&v70[16] = v75[2];
        *&v70[32] = v75[3];
        [v19 setTransform:&v69];
        [currentTopLayer anchorPoint];
        [v19 setAnchorPoint:?];
      }

      sub_A4C0(v78);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5328))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36161, self->_presentRenderbuffer);
      [*&self->super.DYGLFunctionPlayer_opaque[v56] renderbufferStorage:36161 fromDrawable:v19];
      +[CATransaction flush];
      LODWORD(v69) = 0;
      (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5360))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36161, 36164, &v69);
      InternalFormatInfo = GPUTools::GL::GetInternalFormatInfo(v69, v48);
      v51 = InternalFormatInfo[1];
      v50 = InternalFormatInfo[2];
      v52 = *InternalFormatInfo;
      *&self->_presentRenderbufferInternalFormatInfo.rBits = *(InternalFormatInfo + 44);
      *&self->_presentRenderbufferInternalFormatInfo.bComponentType = v51;
      *&self->_presentRenderbufferInternalFormatInfo.sComponentType = v50;
      *&self->_presentRenderbufferInternalFormatInfo.internalFormat = v52;
      (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5360))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36161, 36162, self->_presentRenderbufferResolution);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5360))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36161, 36163, &self->_presentRenderbufferResolution[1]);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5376))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36009, self->_presentFramebuffer);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5432))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36009, 36064, 36161, self->_presentRenderbuffer);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5376))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36009, HIDWORD(v77));
    }

    (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5440))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36009, 36096, 36048, &v76 + 4);
    (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5440))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36009, 36128, 36048, &v76);
    if (*(&v76 + 4) || v76)
    {
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_8C1C;
      v60[3] = &unk_24730;
      v60[4] = self;
      v53 = objc_retainBlock(v60);
      if (DWORD2(v76))
      {
        v54 = GPUTools::GL::DYIsAttachmentWritable();
        if (DWORD2(v76) == 36161)
        {
          [(DYEAGLDebugFunctionPlayer *)self _copyRenderbufferColorAttachmentToPresent:36064 color:0xFFFFFFFFLL isWireframe:0];
        }

        else
        {
          [(DYEAGLDebugFunctionPlayer *)self _copyTextureColorAttachmentToPresent:36064];
        }
      }

      else if (DWORD1(v76))
      {
        v54 = GPUTools::GL::DYIsAttachmentWritable();
        [(DYEAGLDebugFunctionPlayer *)self _copyDepthOrStencilAttachmentToPresent:36096 type:DWORD1(v76)];
      }

      else
      {
        v54 = GPUTools::GL::DYIsAttachmentWritable();
        [(DYEAGLDebugFunctionPlayer *)self _copyDepthOrStencilAttachmentToPresent:36128 type:v76];
      }

      if (v54)
      {
        if (wireframeCopy)
        {
          (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5376))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36009, self->_wireframeFramebuffer);
          [(DYEAGLDebugFunctionPlayer *)self _copyRenderbufferColorAttachmentToPresent:36064 color:color isWireframe:1];
        }
      }

      (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5328))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36161, self->_presentRenderbuffer);
      strongLayerManager5 = [(DYEAGLDebugFunctionPlayer *)self strongLayerManager];
      [strongLayerManager5 prepareLayerForPresent:v19];

      [*&self->super.DYGLFunctionPlayer_opaque[v56] presentRenderbuffer:36161];
    }

    (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5328))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36161, v77);
    (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5376))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36009, HIDWORD(v77));

    goto LABEL_39;
  }
}

- (void)_copyRenderbufferColorAttachmentToPresent:(unsigned int)present color:(unsigned int)color isWireframe:(BOOL)wireframe
{
  wireframeCopy = wireframe;
  v6 = *&color;
  v7 = *&present;
  v27 = 0;
  v9 = OBJC_IVAR___DYGLFunctionPlayer__disp;
  v10 = OBJC_IVAR___DYGLFunctionPlayer__gli_ctx;
  (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 5440))(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], 36009, *&present, 36049, &v27);
  (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + 5328))(*&self->super.DYGLFunctionPlayer_opaque[v10], 36161, v27);
  v21 = 0;
  v22 = 0;
  v24 = 0;
  v23 = 0;
  v25 = 0x100000001;
  v26[0] = 0;
  *(v26 + 5) = 0;
  [(DYEAGLDebugFunctionPlayer *)self _imageInfoForAttachment:v7 outImageInfo:&v21];
  if (wireframeCopy)
  {
    v12 = 1;
  }

  else if (GPUTools::GL::IsIntegerFormat(HIDWORD(v21), v11))
  {
    if (GPUTools::GL::IsSignedType(v22, v13))
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }
  }

  else
  {
    v12 = 0;
  }

  if (SHIDWORD(v26[0]) < 1)
  {
    [(DYEAGLDebugFunctionPlayer *)self _copyColorAttachmentToPresentTexture:v7 imageInfo:&v21];
    [(DYEAGLDebugFunctionPlayer *)self _renderPresentTextureWithColor:v6 enableBlend:wireframeCopy texBlitProgram:v12];
  }

  else
  {
    v20 = 0;
    (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + 832))(*&self->super.DYGLFunctionPlayer_opaque[v10], 36006, &v20);
    v19 = 0;
    (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + 832))(*&self->super.DYGLFunctionPlayer_opaque[v10], 36010, &v19);
    (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + 5376))(*&self->super.DYGLFunctionPlayer_opaque[v10], 36008, v20);
    (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + 5376))(*&self->super.DYGLFunctionPlayer_opaque[v10], 36009, self->_presentFramebuffer);
    if (self->_presentRenderbufferResolution[0] == v24 && self->_presentRenderbufferResolution[1] == v25 && self->_presentRenderbufferInternalFormatInfo.internalFormat == HIDWORD(v22))
    {
      v14 = *&self->super.DYGLFunctionPlayer_opaque[v9];
      v15 = *&self->super.DYGLFunctionPlayer_opaque[v10];
      if (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo] + 104) < 3uLL)
      {
        (*(v14 + 8208))(v15);
      }

      else
      {
        (*(v14 + 6040))(v15, 0, 0);
      }
    }

    else
    {
      v18 = 0;
      (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + 832))(*&self->super.DYGLFunctionPlayer_opaque[v10], 32873, &v18);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + 40))(*&self->super.DYGLFunctionPlayer_opaque[v10], 3553, self->_presentTexture);
      [(DYEAGLDebugFunctionPlayer *)self _changeTextureToWidth:v24 height:v25 imageFormatInfo:&v21 texels:0];
      (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + 5416))(*&self->super.DYGLFunctionPlayer_opaque[v10], 36009, v7, 3553, self->_presentTexture, 0);
      v16 = *&self->super.DYGLFunctionPlayer_opaque[v9];
      v17 = *&self->super.DYGLFunctionPlayer_opaque[v10];
      if (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo] + 104) < 3uLL)
      {
        (*(v16 + 8208))(v17);
      }

      else
      {
        (*(v16 + 6040))(v17, 0, 0);
      }

      (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + 5432))(*&self->super.DYGLFunctionPlayer_opaque[v10], 36009, v7, 36161, self->_presentRenderbuffer);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + 40))(*&self->super.DYGLFunctionPlayer_opaque[v10], 3553, v18);
      [(DYEAGLDebugFunctionPlayer *)self _renderPresentTextureWithColor:v6 enableBlend:wireframeCopy texBlitProgram:v12];
    }

    (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + 5376))(*&self->super.DYGLFunctionPlayer_opaque[v10], 36008, v19);
  }
}

- (void)_copyTextureColorAttachmentToPresent:(unsigned int)present
{
  v3 = *&present;
  v9 = 0;
  v10 = 0;
  v12 = 0;
  v11 = 0;
  v13 = 0x100000001;
  v14[0] = 0;
  *(v14 + 5) = 0;
  [(DYEAGLDebugFunctionPlayer *)self _imageInfoForAttachment:*&present outImageInfo:&v9];
  [(DYEAGLDebugFunctionPlayer *)self _copyColorAttachmentToPresentTexture:v3 imageInfo:&v9];
  IsIntegerFormat = GPUTools::GL::IsIntegerFormat(HIDWORD(v9), v5);
  v8 = 0;
  if (IsIntegerFormat)
  {
    if (GPUTools::GL::IsSignedType(v10, v7))
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }
  }

  [(DYEAGLDebugFunctionPlayer *)self _renderPresentTextureWithColor:0xFFFFFFFFLL enableBlend:0 texBlitProgram:v8];
}

- (void)_copyColorAttachmentToPresentTexture:(unsigned int)texture imageInfo:(ImageInfo *)info
{
  v5 = *&texture;
  v12 = 0;
  v7 = OBJC_IVAR___DYGLFunctionPlayer__disp;
  v8 = OBJC_IVAR___DYGLFunctionPlayer__gli_ctx;
  (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], 36006, &v12);
  v11 = 0;
  (*(*&self->super.DYGLFunctionPlayer_opaque[v7] + 832))(*&self->super.DYGLFunctionPlayer_opaque[v8], 36010, &v11);
  (*(*&self->super.DYGLFunctionPlayer_opaque[v7] + 5376))(*&self->super.DYGLFunctionPlayer_opaque[v8], 36008, v12);
  v10 = 0;
  (*(*&self->super.DYGLFunctionPlayer_opaque[v7] + 832))(*&self->super.DYGLFunctionPlayer_opaque[v8], 32873, &v10);
  (*(*&self->super.DYGLFunctionPlayer_opaque[v7] + 40))(*&self->super.DYGLFunctionPlayer_opaque[v8], 3553, self->_presentTexture);
  [(DYEAGLDebugFunctionPlayer *)self _changeTextureToWidth:info->var2 height:info->var3 imageFormatInfo:info texels:0];
  if (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo] + 104) < 3uLL)
  {
    (*(*&self->super.DYGLFunctionPlayer_opaque[v7] + 448))(*&self->super.DYGLFunctionPlayer_opaque[v8], 3553, 0, 0, 0, 0, 0, info->var2, info->var3);
  }

  else
  {
    v9 = 0;
    (*(*&self->super.DYGLFunctionPlayer_opaque[v7] + 832))(*&self->super.DYGLFunctionPlayer_opaque[v8], 3074, &v9);
    (*(*&self->super.DYGLFunctionPlayer_opaque[v7] + 1888))(*&self->super.DYGLFunctionPlayer_opaque[v8], v5);
    (*(*&self->super.DYGLFunctionPlayer_opaque[v7] + 448))(*&self->super.DYGLFunctionPlayer_opaque[v8], 3553, 0, 0, 0, 0, 0, info->var2, info->var3);
    (*(*&self->super.DYGLFunctionPlayer_opaque[v7] + 1888))(*&self->super.DYGLFunctionPlayer_opaque[v8], v9);
  }

  (*(*&self->super.DYGLFunctionPlayer_opaque[v7] + 40))(*&self->super.DYGLFunctionPlayer_opaque[v8], 3553, v10);
  (*(*&self->super.DYGLFunctionPlayer_opaque[v7] + 5376))(*&self->super.DYGLFunctionPlayer_opaque[v8], 36008, v11);
}

- (void)_copyDepthOrStencilAttachmentToPresent:(unsigned int)present type:(unsigned int)type
{
  v38[0] = 0;
  v6 = [(DYEAGLDebugFunctionPlayer *)self context:*&present];
  sub_4528(v37, v6);

  v36[0] = v37;
  v36[1] = [(DYEAGLDebugFunctionPlayer *)self gliDispatch];
  captureSessionInfo = [(DYEAGLDebugFunctionPlayer *)self captureSessionInfo];
  v8 = [captureSessionInfo contextInfoForContext:{-[DYEAGLDebugFunctionPlayer ctxID](self, "ctxID")}];
  [v8 api];

  GPUTools::GL::GetFramebufferAttachmentInfo();
  v28 = 0;
  v29 = 0x100000001;
  memset(v30, 0, 13);
  GPUTools::GL::GetImageInfo();
  memset(memptr, 0, sizeof(memptr));
  malloc_type_posix_memalign(memptr, 8uLL, 0, 0x6591EAD8uLL);
  if (memptr[0])
  {
    if (v32 == 36161)
    {
      v9 = OBJC_IVAR___DYGLFunctionPlayer__disp;
      v10 = OBJC_IVAR___DYGLFunctionPlayer__gli_ctx;
      (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], 36007, v38);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + 5328))(*&self->super.DYGLFunctionPlayer_opaque[v10], 36161, v31);
    }

    else
    {
      *(&v23 + 7) = 0;
      *&v23 = 0;
      GPUTools::GL::DYGetTextureTargetInfo();
      v9 = OBJC_IVAR___DYGLFunctionPlayer__disp;
      v10 = OBJC_IVAR___DYGLFunctionPlayer__gli_ctx;
      (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], 0, v38);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + 40))(*&self->super.DYGLFunctionPlayer_opaque[v10], v32, v31);
    }

    if (v32 == 34067)
    {
      v11 = v33;
    }

    else
    {
      v11 = v32;
    }

    if (present == 36096)
    {
      v12 = 6402;
    }

    else
    {
      v12 = 6401;
    }

    if (present == 36096)
    {
      v13 = 5126;
    }

    else
    {
      v13 = 5121;
    }

    v23 = xmmword_21080;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v22 = 0;
    v14 = (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + 936))(*&self->super.DYGLFunctionPlayer_opaque[v10], 7939);
    strstr(v14, "GL_APPLE_row_bytes");
    GPUTools::GL::SavePixelStorePackState();
    memset(v20, 0, sizeof(v20));
    HIDWORD(v20[0]) = 1;
    v21 = 0;
    GPUTools::GL::ApplyPixelStorePackState();
    v16 = OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo;
    if (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo] + 104) >= 3uLL)
    {
      (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + 832))(*&self->super.DYGLFunctionPlayer_opaque[v10], 35053, &v22);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + 5136))(*&self->super.DYGLFunctionPlayer_opaque[v10], 35051, 0);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + 1560))(*&self->super.DYGLFunctionPlayer_opaque[v10], 32875, v35);
    }

    ShouldUseGLIReadTextureData = GPUTools::GL::ShouldUseGLIReadTextureData(v36, v15);
    GPUTools::GL::GetImageData(v36, v11, v34, v12, v13, ShouldUseGLIReadTextureData, memptr[0], v18);
    if (*(*&self->super.DYGLFunctionPlayer_opaque[v16] + 104) >= 3uLL)
    {
      (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + 5136))(*&self->super.DYGLFunctionPlayer_opaque[v10], 35051, v22);
    }

    GPUTools::GL::ApplyPixelStorePackState();
    if (present == 36096)
    {
      [DYEAGLDebugFunctionPlayer _resolveDepthWithWidth:v28 height:v29 numSamples:v30[1] buffer:memptr[0]];
    }

    else
    {
      [DYEAGLDebugFunctionPlayer _resolveStencilWithWidth:v28 height:v29 numSamples:v30[1] buffer:memptr[0]];
    }

    v19 = 40;
    if (v32 == 36161)
    {
      v19 = 5328;
    }

    (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + v19))(*&self->super.DYGLFunctionPlayer_opaque[v10]);
    LODWORD(v20[0]) = 0;
    (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + 832))(*&self->super.DYGLFunctionPlayer_opaque[v10], 32873, v20);
    (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + 40))(*&self->super.DYGLFunctionPlayer_opaque[v10], 3553, self->_presentTexture);
    *&v23 = vdup_n_s32(0x1909u);
    DWORD2(v23) = v13;
    [(DYEAGLDebugFunctionPlayer *)self _changeTextureToWidth:v28 height:v29 imageFormatInfo:&v23 texels:memptr[0]];
    free(memptr[0]);
    (*(*&self->super.DYGLFunctionPlayer_opaque[v9] + 40))(*&self->super.DYGLFunctionPlayer_opaque[v10], 3553, LODWORD(v20[0]));
    [(DYEAGLDebugFunctionPlayer *)self _renderPresentTextureWithColor:0xFFFFFFFFLL enableBlend:0 texBlitProgram:0];
  }

  else
  {
    dy_abort("Unable to allocate %lu bytes for depth buffer\n", 0);
    __break(1u);
  }
}

- (void)_renderPresentTextureWithColor:(unsigned int)color enableBlend:(BOOL)blend texBlitProgram:(unsigned int)program
{
  blendCopy = blend;
  sharegroup = [*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx] sharegroup];

  strongLayerManager = [(DYEAGLDebugFunctionPlayer *)self strongLayerManager];
  v11 = [strongLayerManager layerForID:sharegroup];

  v35 = 0;
  v34 = 0;
  v12 = OBJC_IVAR___DYGLFunctionPlayer__disp;
  v13 = OBJC_IVAR___DYGLFunctionPlayer__gli_ctx;
  (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], 32873, &v35 + 4);
  (*(*&self->super.DYGLFunctionPlayer_opaque[v12] + 40))(*&self->super.DYGLFunctionPlayer_opaque[v13], 3553, self->_presentTexture);
  (*(*&self->super.DYGLFunctionPlayer_opaque[v12] + 1000))(*&self->super.DYGLFunctionPlayer_opaque[v13], 3553, 0, 4096, &v35);
  (*(*&self->super.DYGLFunctionPlayer_opaque[v12] + 1000))(*&self->super.DYGLFunctionPlayer_opaque[v13], 3553, 0, 4097, &v34);
  (*(*&self->super.DYGLFunctionPlayer_opaque[v12] + 40))(*&self->super.DYGLFunctionPlayer_opaque[v13], 3553, HIDWORD(v35));
  v15 = v34;
  v14 = v35;
  [v11 bounds];
  v17 = v16;
  v19 = v18;
  [v11 contentsScale];
  v21 = v20;
  [v11 contentsScale];
  v22 = v17 * v21;
  v24 = v19 * v23;
  [DYEAGLDebugFunctionPlayer shrinkSourceSize:v14 toDestSize:v15, v22, v19 * v23];
  v26 = v25;
  v28 = v27;
  (*(*&self->super.DYGLFunctionPlayer_opaque[v12] + 5376))(*&self->super.DYGLFunctionPlayer_opaque[v13], 36009, self->_presentFramebuffer);
  (*(*&self->super.DYGLFunctionPlayer_opaque[v12] + 720))(*&self->super.DYGLFunctionPlayer_opaque[v13]);
  LODWORD(v29) = vcvtpd_s64_f64(v26);
  LODWORD(v30) = vcvtpd_s64_f64(v28);
  if (blendCopy)
  {
    v31 = 0;
  }

  else
  {
    v31 = 0x4000;
  }

  LODWORD(v33) = program;
  BYTE5(v32) = 0;
  BYTE4(v32) = blendCopy;
  LODWORD(v32) = color;
  [(DYEAGLFunctionPlayer *)self drawTexture:self->_presentTexture target:3553 framebuffer:self->_presentFramebuffer bounds:((v22 - v29) / 2) | (((v24 - v30) / 2) << 32) clearBits:v29 | (v30 << 32) modulateColor:v31 enableBlend:v32 rotated:v33 texBlitProgram:?];
}

- (void)_changeTextureToWidth:(int)width height:(int)height imageFormatInfo:(ImageFormatInfo *)info texels:(char *)texels
{
  v8 = *&height;
  v9 = *&width;
  v23 = 0;
  v24 = 0;
  *v26 = 0;
  v25 = 0;
  *&v26[4] = 0x100000001;
  v27[0] = 0;
  *(v27 + 5) = 0;
  context = [(DYEAGLDebugFunctionPlayer *)self context];
  sub_4528(v22, context);

  v20 = v22;
  gliDispatch = [(DYEAGLDebugFunctionPlayer *)self gliDispatch];
  captureSessionInfo = [(DYEAGLDebugFunctionPlayer *)self captureSessionInfo];
  v13 = [captureSessionInfo contextInfoForContext:{-[DYEAGLDebugFunctionPlayer ctxID](self, "ctxID")}];
  [v13 api];

  GPUTools::GL::GetImageInfo();
  if (*v26 != __PAIR64__(v8, v9) || texels || v23 != info->var0)
  {
    v19 = 0;
    v14 = OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo;
    v15 = OBJC_IVAR___DYGLFunctionPlayer__disp;
    v16 = OBJC_IVAR___DYGLFunctionPlayer__gli_ctx;
    if (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo] + 104) > 2uLL)
    {
      (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], 35055, &v19);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v15] + 5136))(*&self->super.DYGLFunctionPlayer_opaque[v16], 35052, 0);
    }

    v17 = (*(*&self->super.DYGLFunctionPlayer_opaque[v15] + 936))(*&self->super.DYGLFunctionPlayer_opaque[v16], 7939);
    strstr(v17, "GL_APPLE_row_bytes");
    GPUTools::GL::SavePixelStoreUnpackState();
    v18 = 0u;
    HIDWORD(v18) = 1;
    GPUTools::GL::ApplyPixelStoreUnpackState();
    (*(*&self->super.DYGLFunctionPlayer_opaque[v15] + 2432))(*&self->super.DYGLFunctionPlayer_opaque[v16], 3553, 10241, 9728);
    (*(*&self->super.DYGLFunctionPlayer_opaque[v15] + 2432))(*&self->super.DYGLFunctionPlayer_opaque[v16], 3553, 10240, 9728);
    (*(*&self->super.DYGLFunctionPlayer_opaque[v15] + 2432))(*&self->super.DYGLFunctionPlayer_opaque[v16], 3553, 10242, 33071);
    (*(*&self->super.DYGLFunctionPlayer_opaque[v15] + 2432))(*&self->super.DYGLFunctionPlayer_opaque[v16], 3553, 10243, 33071);
    (*(*&self->super.DYGLFunctionPlayer_opaque[v15] + 2408))(*&self->super.DYGLFunctionPlayer_opaque[v16], 3553, 0, *(&info->var0 + (*(*&self->super.DYGLFunctionPlayer_opaque[v14] + 104) < 3uLL)), v9, v8, 0, info->var1, info->var2, texels, 0, *(&v18 + 1), 0, 0, 0);
    GPUTools::GL::ApplyPixelStoreUnpackState();
    if (*(*&self->super.DYGLFunctionPlayer_opaque[v14] + 104) >= 3uLL)
    {
      (*(*&self->super.DYGLFunctionPlayer_opaque[v15] + 5136))(*&self->super.DYGLFunctionPlayer_opaque[v16], 35052, v19);
    }
  }
}

- (void)_imageInfoForAttachment:(unsigned int)attachment outImageInfo:(ImageInfo *)info
{
  context = [(DYEAGLDebugFunctionPlayer *)self context];
  sub_4528(v8, context);

  [(DYEAGLDebugFunctionPlayer *)self gliDispatch];
  captureSessionInfo = [(DYEAGLDebugFunctionPlayer *)self captureSessionInfo];
  v7 = [captureSessionInfo contextInfoForContext:{-[DYEAGLDebugFunctionPlayer ctxID](self, "ctxID")}];
  [v7 api];

  GPUTools::GL::GetFramebufferAttachmentInfo();
  GPUTools::GL::GetImageInfo();
}

- (BOOL)_isBoundObjectAlive:(unsigned int)alive isObjectFunc:(void *)func
{
  v8 = 0;
  v6 = OBJC_IVAR___DYGLFunctionPlayer__gli_ctx;
  (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], *&alive, &v8);
  return !v8 || (func)(*&self->super.DYGLFunctionPlayer_opaque[v6]) == 1;
}

- (BOOL)_isContextModifiable
{
  v3 = OBJC_IVAR___DYGLFunctionPlayer__disp;
  if (![(DYEAGLDebugFunctionPlayer *)self _isBoundObjectAlive:34965 isObjectFunc:*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 5160)]|| ![(DYEAGLDebugFunctionPlayer *)self _isBoundObjectAlive:36006 isObjectFunc:*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5368)]|| ![(DYEAGLDebugFunctionPlayer *)self _isBoundObjectAlive:36010 isObjectFunc:*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5368)]|| ![(DYEAGLDebugFunctionPlayer *)self _isBoundObjectAlive:36007 isObjectFunc:*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5320)])
  {
    return 0;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  context = [(DYEAGLDebugFunctionPlayer *)self context];
  sub_4528(v10, context);

  [(DYEAGLDebugFunctionPlayer *)self gliDispatch];
  captureSessionInfo = [(DYEAGLDebugFunctionPlayer *)self captureSessionInfo];
  v6 = [captureSessionInfo contextInfoForContext:{-[DYEAGLDebugFunctionPlayer ctxID](self, "ctxID")}];
  [v6 api];

  GPUTools::GL::EnumerateTextureTargets();
  v8 = 0;
  if (v12[3])
  {
    v7 = OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo;
    if (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo] + 104) < 2uLL || [(DYEAGLDebugFunctionPlayer *)self _isBoundObjectAlive:33370 isObjectFunc:*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 6600)]&& (*(*&self->super.DYGLFunctionPlayer_opaque[v7] + 104) < 3uLL || [(DYEAGLDebugFunctionPlayer *)self _isBoundObjectAlive:35053 isObjectFunc:*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5160)]&& [(DYEAGLDebugFunctionPlayer *)self _isBoundObjectAlive:35055 isObjectFunc:*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5160)]))
    {
      v8 = 1;
    }
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

- (void)prepareForCaptureExecution
{
  v3 = OBJC_IVAR___DYFunctionPlayer__engine;
  delegate = [*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__engine] delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

  delegate2 = [*&self->super.DYGLFunctionPlayer_opaque[v3] delegate];
  [delegate2 prepareForCaptureExecution];

  delegate3 = [*&self->super.DYGLFunctionPlayer_opaque[v3] delegate];
  shouldCallSuper = [delegate3 shouldCallSuper];

  if (shouldCallSuper)
  {
    v12.receiver = self;
    v12.super_class = DYEAGLDebugFunctionPlayer;
    [(DYEAGLDebugFunctionPlayer *)&v12 prepareForCaptureExecution];
  }

  delegate4 = [*&self->super.DYGLFunctionPlayer_opaque[v3] delegate];
  shouldReturn = [delegate4 shouldReturn];

  if ((shouldReturn & 1) == 0)
  {
LABEL_5:
    v11.receiver = self;
    v11.super_class = DYEAGLDebugFunctionPlayer;
    [(DYEAGLDebugFunctionPlayer *)&v11 prepareForCaptureExecution];
  }
}

- (id).cxx_construct
{
  *(self + 148) = off_24650;
  *(self + 149) = 0;
  *(self + 150) = 0;
  *(self + 151) = 0;
  *(self + 152) = off_246B8;
  *(self + 159) = 0;
  *(self + 1256) = 0u;
  *(self + 1240) = 0u;
  *(self + 1224) = 0u;
  *(self + 320) = 1065353216;
  *(self + 1304) = 0u;
  *(self + 1288) = 0u;
  *(self + 330) = 1065353216;
  *(self + 83) = 0u;
  *(self + 84) = 0u;
  *(self + 340) = 1065353216;
  *(self + 1384) = 0u;
  *(self + 1368) = 0u;
  *(self + 350) = 1065353216;
  *(self + 88) = 0u;
  *(self + 89) = 0u;
  *(self + 360) = 1065353216;
  *(self + 1448) = 0u;
  *(self + 1464) = 0u;
  *(self + 370) = 1065353216;
  return self;
}

@end