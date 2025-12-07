@interface DYEAGLFunctionPlayer
- (BOOL)_linkProgram:(GLSLObject)program dispatcher:(Dispatcher *)dispatcher;
- (BOOL)shouldExecuteGraphicsFunction;
- (DYLayerManager)layerManager;
- (DYLayerManager)strongLayerManager;
- (id).cxx_construct;
- (id)currentRenderbufferDrawableMap;
- (unint64_t)_generateDrawableId;
- (unsigned)_loadShaderWithType:(unsigned int)type source:(const char *)source dispatcher:(Dispatcher *)dispatcher;
- (unsigned)_loadSimpleProgramWithVertexSource:(const char *)source fragmentSource:(const char *)fragmentSource link:(BOOL)link dispatcher:(Dispatcher *)dispatcher;
- (void)_createIOSurfaceReplacementForFramebuffer:(FramebufferInfo *)framebuffer;
- (void)_transformCoreAnimationLayer:(id)layer rotated:(BOOL)rotated;
- (void)createEAGLContextWithAPI:(unint64_t)i sharegroupID:(unint64_t)d contextID:(unint64_t)iD;
- (void)drawTexture:(unsigned int)texture target:(unsigned int)target framebuffer:(unsigned int)framebuffer bounds:(IntegerRect)bounds clearBits:(unsigned int)bits modulateColor:(unsigned int)color enableBlend:(BOOL)blend rotated:(BOOL)self0 texBlitProgram:(unsigned int)self1;
- (void)executePlatformFunction;
- (void)initializeNewSharegroupInfoDictionary;
@end

@implementation DYEAGLFunctionPlayer

- (DYLayerManager)strongLayerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_layerManager);

  return WeakRetained;
}

- (void)initializeNewSharegroupInfoDictionary
{
  v8.receiver = self;
  v8.super_class = DYEAGLFunctionPlayer;
  [(DYEAGLFunctionPlayer *)&v8 initializeNewSharegroupInfoDictionary];
  v3 = OBJC_IVAR___DYGLFunctionPlayer__sharegroup_dict;
  v4 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__sharegroup_dict];
  sharegroup = [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx] sharegroup];
  [v4 setObject:sharegroup forKey:@"sharegroup"];

  v6 = *&self->DYGLFunctionPlayer_opaque[v3];
  v7 = +[NSMutableDictionary dictionary];
  [v6 setObject:v7 forKey:@"renderbuffer_drawable_map"];
}

- (id)currentRenderbufferDrawableMap
{
  if (*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx])
  {
    v3 = [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__sharegroup_dict] objectForKey:@"renderbuffer_drawable_map"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)createEAGLContextWithAPI:(unint64_t)i sharegroupID:(unint64_t)d contextID:(unint64_t)iD
{
  iDCopy = iD;
  if (sub_5308(&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__contextInfoMap], &iDCopy))
  {
    [(DYEAGLFunctionPlayer *)self setCurrentContext:iDCopy];
    if (!self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__recreateContexts])
    {
      return;
    }

    [(DYEAGLFunctionPlayer *)self deleteCurrentContext];
  }

  v8 = [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__sharegroupMap] objectForIntKey:d];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKey:@"sharegroup"];
    v11 = [[EAGLContext alloc] initWithAPI:i sharegroup:v10];
  }

  else
  {
    v11 = [[EAGLContext alloc] initWithAPI:i];
  }

  [(DYEAGLFunctionPlayer *)self updateCurrentStateWithNewContext:v11 contextID:iDCopy sharegroupID:d];
  *(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo] + 104) = i;
}

- (void)executePlatformFunction
{
  v3 = OBJC_IVAR___DYFunctionPlayer__function;
  v4 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__function];
  v5 = (v4 + 48);
  v6 = *v4;
  v7 = OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo;
  v8 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo];
  if (*v4 <= -8187)
  {
    if (v6 <= -8191)
    {
      if ((v6 + 12283) < 2)
      {
        return;
      }

      if ((v6 + 0x2000) < 2)
      {
        v9 = **(v4 + 72);
        v10 = **(v4 + 96);
        v11 = **(v4 + 48);

        [(DYEAGLFunctionPlayer *)self createEAGLContextWithAPI:v9 sharegroupID:v10 contextID:v11];
        return;
      }

      if (v6 == -12287)
      {
        v76 = **(v4 + 48);
        v35 = **(v4 + 96);
        v75 = v35;
        if (!v35)
        {
          return;
        }

        v36 = **(v4 + 120);
        v37 = **(v4 + 144);
        v38 = 1.0;
        if (*(v4 + 10) >= 6u)
        {
          v39 = sub_B704(v4 + 168, 0);
          if (v39 == 0.0)
          {
            return;
          }

          v38 = v39;
        }

        v40 = sub_B704(v4 + 72, 0);
        v41 = sub_B704(v4 + 72, 1uLL);
        v42 = sub_B704(v4 + 72, 2uLL);
        v43 = sub_B704(v4 + 72, 3uLL);
        if (v37 <= 35906)
        {
          switch(v37)
          {
            case 32856:
              v44 = &kEAGLColorFormatRGBA8;
              goto LABEL_88;
            case 35446:
              v44 = &kEAGLColorFormatRGBA_XR10_64BPP;
              goto LABEL_88;
            case 35447:
              v44 = &kEAGLColorFormatSRGBA_XR10_64BPP;
              goto LABEL_88;
          }
        }

        else if (v37 > 37873)
        {
          if (v37 == 37874)
          {
            v44 = &kEAGLColorFormatSRGB_XR10;
            goto LABEL_88;
          }

          if (v37 == 37881)
          {
            v44 = &kEAGLColorFormatSRGB_XR10_A8_2P;
            goto LABEL_88;
          }
        }

        else
        {
          if (v37 == 35907)
          {
            v44 = &kEAGLColorFormatSRGBA8;
            goto LABEL_88;
          }

          if (v37 == 36194)
          {
            v44 = &kEAGLColorFormatRGB565;
LABEL_88:
            currentRenderbufferDrawableMap3 = *v44;
            v64 = [NSNumber numberWithBool:v36];
            v57 = [NSDictionary dictionaryWithObjectsAndKeys:v64, kEAGLDrawablePropertyRetainedBacking, currentRenderbufferDrawableMap3, kEAGLDrawablePropertyColorFormat, 0];

            strongLayerManager = [(DYEAGLFunctionPlayer *)self strongLayerManager];
            v66 = [strongLayerManager layerForID:v35];

            if (v66)
            {
              strongLayerManager2 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
              [strongLayerManager2 updateLayer:v66 contentRect:v57 contentsScale:v40 properties:{v41, v42, v43, v38}];

              v60 = v66;
            }

            else
            {
              strongLayerManager3 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
              v60 = [strongLayerManager3 createLayerWithID:v35 contentRect:v57 contentsScale:0 properties:v40 isCoreAnimationSurface:{v41, v42, v43, v38}];

              if (!v60)
              {
                __assert_rtn("[DYEAGLFunctionPlayer executePlatformFunction]", &unk_1FD61, 0, "layer");
              }
            }

            v69 = sub_5308((v8 + 200), &v75);
            if (!v69)
            {
              memset(v73, 0, sizeof(v73));
              v74 = 1065353216;
              v77 = &v75;
              v70 = sub_D4D4((v8 + 200), &v75, &unk_21051, &v77);
              sub_D744((v70 + 3), v73);
              sub_46A4(v73);
              *&v73[0] = &v75;
              v69 = sub_D4D4((v8 + 200), &v75, &unk_21051, v73);
            }

            sub_D854(v69 + 3, &v76, &v76);
LABEL_94:

            goto LABEL_95;
          }
        }

        dy_abort("unsupported or unknown surface color format: 0x%04X", v37);
        __break(1u);
        return;
      }

LABEL_65:
      v72.receiver = self;
      v72.super_class = DYEAGLFunctionPlayer;
      [(DYEAGLFunctionPlayer *)&v72 executePlatformFunction];
      return;
    }

    if (v6 <= -8189)
    {
      if (v6 != -8190)
      {
        v16 = **(v4 + 96);
        if (!v16)
        {
          return;
        }

        v17 = **(v4 + 72);
        renderbuffer_binding_enum = GPUTools::GL::dy_get_renderbuffer_binding_enum(v17, a2);
        LODWORD(v73[0]) = 0;
        (*(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], renderbuffer_binding_enum, v73);
        v19 = DYGetGLGuestAppClient();
        traceMode = [v19 traceMode];

        if (traceMode == 6)
        {
          return;
        }

        strongLayerManager4 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
        currentRenderbufferDrawableMap3 = [strongLayerManager4 layerForID:v16];

        [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx] renderbufferStorage:v17 fromDrawable:currentRenderbufferDrawableMap3];
        +[CATransaction flush];
        currentRenderbufferDrawableMap = [(DYEAGLFunctionPlayer *)self currentRenderbufferDrawableMap];
        v24 = [NSNumber numberWithUnsignedLongLong:v16];
        v25 = [NSNumber numberWithUnsignedInt:LODWORD(v73[0])];
        [currentRenderbufferDrawableMap setObject:v24 forKey:v25];

LABEL_95:
        return;
      }

      goto LABEL_28;
    }

    if (v6 == -8188)
    {
      [(DYEAGLFunctionPlayer *)self createEAGLContextWithAPI:**(v4 + 72) sharegroupID:**(v4 + 120) contextID:**(v4 + 48)];
      v45 = *&self->DYGLFunctionPlayer_opaque[v7];
      v47 = 1;
      if (*(v4 + 108) == 14)
      {
        v46 = *(v4 + 96);
        if (!strstr(v46, "EAGLContextPropertyClientRetainRelease:true") || strstr(v46, "EAGLContextPropertyVisibleInDebugTools:true"))
        {
          v47 = 0;
        }
      }

      *(v45 + 240) = v47;
      return;
    }

    if (v6 != -8187)
    {
      goto LABEL_65;
    }

LABEL_36:
    *(v73 + 7) = 0;
    GPUTools::GL::DYGetTextureTargetInfo();
    LODWORD(v77) = 0;
    (*(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], 0, &v77);
    sub_D2A4((v8 + 160), &v77, &v77);
    return;
  }

  if (v6 > -8182)
  {
    if ((v6 + 8179) < 2)
    {
LABEL_28:
      v26 = **(v4 + 72);
      v27 = GPUTools::GL::dy_get_renderbuffer_binding_enum(v26, a2);
      LODWORD(v73[0]) = 0;
      (*(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], v27, v73);
      if (LODWORD(v73[0]))
      {
        currentRenderbufferDrawableMap2 = [(DYEAGLFunctionPlayer *)self currentRenderbufferDrawableMap];
        v29 = [NSNumber numberWithUnsignedInt:LODWORD(v73[0])];
        v30 = [currentRenderbufferDrawableMap2 objectForKey:v29];
        unsignedLongLongValue = [v30 unsignedLongLongValue];

        strongLayerManager5 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
        v33 = [strongLayerManager5 layerForID:unsignedLongLongValue];

        strongLayerManager6 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
        [strongLayerManager6 prepareLayerForPresent:v33];
      }

      switch(v6)
      {
        case -8178:
          [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx] presentRenderbuffer:v26 afterMinimumDuration:{sub_B704(v4 + 96, 0)}];
          break;
        case -8179:
          [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx] presentRenderbuffer:v26 atTime:{sub_B704(v4 + 96, 0)}];
          break;
        case -8190:
          [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx] presentRenderbuffer:v26];
          break;
      }

      return;
    }

    if (v6 != -8181)
    {
      if (v6 != -8180)
      {
        goto LABEL_65;
      }

      goto LABEL_36;
    }

    strongLayerManager7 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
    [strongLayerManager7 setAnchorPoint:v4 + 72 forLayerID:{sub_DA80(v5, 0)}];
    goto LABEL_62;
  }

  if (v6 > -8184)
  {
    if (v6 == -8183)
    {
      v51 = 1.0;
      v52 = 1.0;
      if (*(v4 + 10) >= 4u)
      {
        v51 = sub_B704(v4 + 96, 0);
        v52 = sub_B704(v4 + 120, 0);
      }

      *v73 = v51;
      *(v73 + 1) = v52;
      strongLayerManager8 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
      [strongLayerManager8 setTransform:v4 + 72 forLayerID:sub_DA80(v5 withScreenToLayerScale:{0), v73}];

      return;
    }

    strongLayerManager7 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
    [strongLayerManager7 setPosition:v4 + 72 forLayerID:{sub_DA80(v5, 0)}];
LABEL_62:

    return;
  }

  if (v6 == -8186)
  {
    if (!*(v8 + 112))
    {
      return;
    }

    v48 = DYGetGLGuestAppClient();
    traceMode2 = [v48 traceMode];

    if (traceMode2 != 6)
    {
      v54 = sub_63B0((v8 + 120), (v8 + 112));
      if ((*(*&self->DYGLFunctionPlayer_opaque[v3] + 4) & 4) != 0)
      {
        if (!v54)
        {
          return;
        }
      }

      else if (!v54)
      {
        sub_14158();
      }

      v55 = *(v54 + 5);
      currentRenderbufferDrawableMap3 = [(DYEAGLFunctionPlayer *)self currentRenderbufferDrawableMap];
      v56 = [NSNumber numberWithUnsignedInt:v55];
      v57 = [currentRenderbufferDrawableMap3 objectForKeyedSubscript:v56];

      if (!v57)
      {
        __assert_rtn("[DYEAGLFunctionPlayer executePlatformFunction]", &unk_1FD61, 0, "drawable_obj");
      }

      unsignedLongLongValue2 = [v57 unsignedLongLongValue];
      strongLayerManager9 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
      v60 = [strongLayerManager9 layerForID:unsignedLongLongValue2];

      if (!v60)
      {
        __assert_rtn("[DYEAGLFunctionPlayer executePlatformFunction]", &unk_1FD61, 0, "layer");
      }

      LODWORD(v73[0]) = 0;
      v61 = OBJC_IVAR___DYGLFunctionPlayer__disp;
      v62 = OBJC_IVAR___DYGLFunctionPlayer__gli_ctx;
      (*(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], 36007, v73);
      (*(*&self->DYGLFunctionPlayer_opaque[v61] + 5328))(*&self->DYGLFunctionPlayer_opaque[v62], 36161, v55);
      strongLayerManager10 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
      [strongLayerManager10 prepareLayerForPresent:v60];

      [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx] presentRenderbuffer:36161];
      (*(*&self->DYGLFunctionPlayer_opaque[v61] + 5328))(*&self->DYGLFunctionPlayer_opaque[v62], 36161, LODWORD(v73[0]));
      goto LABEL_94;
    }

    v50 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx];

    [v50 presentRenderbuffer:36161];
  }

  else
  {
    if (v6 != -8185)
    {
      goto LABEL_65;
    }

    v77 = **v5;
    v12 = *(v8 + 216);
    if (v12)
    {
      do
      {
        while (1)
        {
          v13 = sub_5308(v12 + 3, &v77);
          if (v13)
          {
            sub_6464(v12 + 3, v13);
            if (!v12[6])
            {
              break;
            }
          }

          v12 = *v12;
          if (!v12)
          {
            goto LABEL_18;
          }
        }

        strongLayerManager11 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
        [strongLayerManager11 deleteLayer:v12[2]];

        v15 = *v12;
        sub_64A8((v8 + 200), v12, v73);
        sub_49E0(v73);
        v12 = v15;
      }

      while (v15);
    }

LABEL_18:
    [(DYEAGLFunctionPlayer *)self deleteCurrentContext];
  }
}

- (BOOL)shouldExecuteGraphicsFunction
{
  v3 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__function];
  v4 = *v3;
  v5 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo];
  if (*v3 <= 206)
  {
    if (v4 <= 200)
    {
      if (v4 == 116)
      {
        if ((*(v3 + 46) & 0x10) == 0)
        {
          DYReserveGLProgram();
          return 0;
        }
      }

      else if (v4 == 117)
      {
        if ((*(v3 + 46) & 0x10) == 0)
        {
          DYReserveGLShader();
          return 0;
        }
      }

      else if (v4 == 192 && ([*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__captureSessionInfo] guestAppWasLinkedOnApexOrLater] & 1) == 0)
      {
        v6 = **(v3 + 96);
        if ((v6 & 0xFFFFFFDF) == 0x8D00)
        {
          v7 = **(v3 + 72);
          v8 = v3;
          v9 = **(v3 + 144);
          if (v6 == 36096)
          {
            v10 = 36128;
          }

          else
          {
            v10 = 36096;
          }

          LODWORD(v45) = 0;
          v11 = OBJC_IVAR___DYGLFunctionPlayer__disp;
          v12 = OBJC_IVAR___DYGLFunctionPlayer__gli_ctx;
          (*(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 5440))(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], v7, v10, 36048, &v45);
          if (v45 == 36161)
          {
            v50 = 0;
            (*(*&self->DYGLFunctionPlayer_opaque[v11] + 5440))(*&self->DYGLFunctionPlayer_opaque[v12], v7, v10, 36049, &v50);
            if (v50 != v9 && v50 != 0)
            {
              v49 = 0;
              (*(*&self->DYGLFunctionPlayer_opaque[v11] + 832))(*&self->DYGLFunctionPlayer_opaque[v12], 36007, &v49);
              (*(*&self->DYGLFunctionPlayer_opaque[v11] + 5328))(*&self->DYGLFunctionPlayer_opaque[v12], 36161, v50);
              v48 = 0;
              (*(*&self->DYGLFunctionPlayer_opaque[v11] + 5360))(*&self->DYGLFunctionPlayer_opaque[v12], 36161, 36162, &v48 + 4);
              (*(*&self->DYGLFunctionPlayer_opaque[v11] + 5360))(*&self->DYGLFunctionPlayer_opaque[v12], 36161, 36163, &v48);
              (*(*&self->DYGLFunctionPlayer_opaque[v11] + 5352))(*&self->DYGLFunctionPlayer_opaque[v12], 36161, 35056, HIDWORD(v48), v48);
              (*(*&self->DYGLFunctionPlayer_opaque[v11] + 5432))(*&self->DYGLFunctionPlayer_opaque[v12], v7, v6, 36161, v50);
              (*(*&self->DYGLFunctionPlayer_opaque[v11] + 5328))(*&self->DYGLFunctionPlayer_opaque[v12], 36161, v49);
              return 0;
            }
          }

          v3 = v8;
        }
      }

      goto LABEL_38;
    }

    if (v4 != 201 && v4 != 203 && v4 != 206)
    {
      goto LABEL_38;
    }

LABEL_40:
    DYReserveGLObjects();
    return 0;
  }

  if (v4 > 857)
  {
    if (v4 != 858 && v4 != 890 && v4 != 987)
    {
      goto LABEL_38;
    }

    goto LABEL_40;
  }

  if (v4 == 207 || v4 == 208)
  {
    goto LABEL_40;
  }

  if (v4 == 840)
  {
    DYReserveGLVAOs();
    return 0;
  }

LABEL_38:
  if ((*(v5 + 240) & 1) == 0)
  {
    v47.receiver = self;
    v47.super_class = DYEAGLFunctionPlayer;
    return [(DYEAGLFunctionPlayer *)&v47 shouldExecuteGraphicsFunction];
  }

  if (v4 <= 126)
  {
    if (v4 == 17)
    {
      v39 = **(v3 + 96);
      if (v39)
      {
        v40 = **(v3 + 72);
        if (v40 == 36160 || v40 == 36009)
        {
          *(v5 + 112) = v39;
        }
      }
    }

    else if (v4 == 121)
    {
      v18 = **(v3 + 72);
      if (v18)
      {
        v19 = *(v3 + 96);
        do
        {
          if (*v19 == *(v5 + 112))
          {
            *(v5 + 112) = 0;
          }

          v20 = sub_63B0((v5 + 120), v19);
          if (v20)
          {
            sub_6464((v5 + 120), v20);
          }

          ++v19;
          --v18;
        }

        while (v18);
      }
    }
  }

  else
  {
    switch(v4)
    {
      case 825:
        if (**(v3 + 96) == 35449)
        {
          v21 = **(v3 + 72);
          v22 = **(v3 + 120);
          v50 = 0;
          framebuffer_binding_enum = GPUTools::GL::dy_get_framebuffer_binding_enum(v21, a2);
          (*(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], framebuffer_binding_enum, &v50);
          v45 = &v50;
          v24 = sub_DBB0((v5 + 120), &v50, &unk_21051, &v45);
          *(v24 + 6) = v22;
          if (*(v24 + 5))
          {
            v25 = v24;
            currentRenderbufferDrawableMap = [(DYEAGLFunctionPlayer *)self currentRenderbufferDrawableMap];
            v27 = [NSNumber numberWithUnsignedInt:*(v25 + 5)];
            v28 = [currentRenderbufferDrawableMap objectForKeyedSubscript:v27];

            unsignedLongLongValue = [v28 unsignedLongLongValue];
            strongLayerManager = [(DYEAGLFunctionPlayer *)self strongLayerManager];
            v31 = [strongLayerManager layerForID:unsignedLongLongValue];

            [(DYEAGLFunctionPlayer *)self _transformCoreAnimationLayer:v31 rotated:v22 == 35453];
          }
        }

        break;
      case 194:
        v32 = **(v3 + 72);
        v33 = **(v3 + 120);
        v50 = **(v3 + 144);
        if (sub_63B0((v5 + 160), &v50))
        {
          v35 = GPUTools::GL::dy_get_framebuffer_binding_enum(v32, v34);
          v49 = 0;
          v36 = OBJC_IVAR___DYGLFunctionPlayer__disp;
          v37 = OBJC_IVAR___DYGLFunctionPlayer__gli_ctx;
          (*(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], v35, &v49);
          if (v49)
          {
            v45 = &v49;
            v38 = sub_DBB0((v5 + 120), &v49, &unk_21051, &v45);
            if (!*(v38 + 5))
            {
              [(DYEAGLFunctionPlayer *)self _createIOSurfaceReplacementForFramebuffer:v38 + 20];
            }

            HIDWORD(v48) = 0;
            (*(*&self->DYGLFunctionPlayer_opaque[v36] + 832))(*&self->DYGLFunctionPlayer_opaque[v37], 36007, &v48 + 4);
            (*(*&self->DYGLFunctionPlayer_opaque[v36] + 5328))(*&self->DYGLFunctionPlayer_opaque[v37], 36161, *(v38 + 5));
            v45 = 0;
            v46 = 0;
            (*(*&self->DYGLFunctionPlayer_opaque[v36] + 5360))(*&self->DYGLFunctionPlayer_opaque[v37], 36161, 36162, &v46);
            (*(*&self->DYGLFunctionPlayer_opaque[v36] + 5360))(*&self->DYGLFunctionPlayer_opaque[v37], 36161, 36163, &v46 + 4);
            (*(*&self->DYGLFunctionPlayer_opaque[v36] + 5328))(*&self->DYGLFunctionPlayer_opaque[v37], 36161, HIDWORD(v48));
            (*(*&self->DYGLFunctionPlayer_opaque[v36] + 720))(*&self->DYGLFunctionPlayer_opaque[v37]);
            LODWORD(v43) = 0;
            BYTE5(v42) = *(v38 + 6) == 35453;
            BYTE4(v42) = 0;
            LODWORD(v42) = -1;
            [(DYEAGLFunctionPlayer *)self drawTexture:v50 target:v33 framebuffer:v49 bounds:v45 clearBits:v46 modulateColor:0 enableBlend:v42 rotated:v43 texBlitProgram:?];
            return 0;
          }
        }

        break;
      case 127:
        v15 = **(v3 + 72);
        if (v15)
        {
          v16 = *(v3 + 96);
          do
          {
            v17 = sub_63B0((v5 + 160), v16);
            if (v17)
            {
              sub_6464((v5 + 160), v17);
            }

            ++v16;
            --v15;
          }

          while (v15);
        }

        break;
    }
  }

  v44.receiver = self;
  v44.super_class = DYEAGLFunctionPlayer;
  return [(DYEAGLFunctionPlayer *)&v44 shouldExecuteGraphicsFunction];
}

- (unint64_t)_generateDrawableId
{
  for (i = &self->_ioSurfaceDrawableIdSet; sub_5308(i, &self->_nextIOSurfaceDrawableId); i = &self->_ioSurfaceDrawableIdSet)
  {
    self->_nextIOSurfaceDrawableId = (LODWORD(self->_nextIOSurfaceDrawableId) + 1) & 0xFFF;
  }

  nextIOSurfaceDrawableId = self->_nextIOSurfaceDrawableId;
  sub_DDF0(&self->_ioSurfaceDrawableIdSet.__table_.__bucket_list_.__ptr_, &nextIOSurfaceDrawableId, &nextIOSurfaceDrawableId);
  self->_nextIOSurfaceDrawableId = (LODWORD(self->_nextIOSurfaceDrawableId) + 1) & 0xFFF;
  return nextIOSurfaceDrawableId;
}

- (void)_createIOSurfaceReplacementForFramebuffer:(FramebufferInfo *)framebuffer
{
  v5 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__function];
  v6 = *v5[9];
  v7 = *v5[15];
  v8 = *v5[18];
  v9 = (v8 + 1000000);
  currentRenderbufferDrawableMap = [(DYEAGLFunctionPlayer *)self currentRenderbufferDrawableMap];
  v11 = [NSNumber numberWithUnsignedInt:v9];
  v31 = v6;
  v12 = [currentRenderbufferDrawableMap objectForKeyedSubscript:v11];

  v13 = OBJC_IVAR___DYGLFunctionPlayer__disp;
  v14 = OBJC_IVAR___DYGLFunctionPlayer__gli_ctx;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v37 = 0;
    v36 = 0;
    v30 = currentRenderbufferDrawableMap;
    (*(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], 32873, &v37 + 4);
    (*(*&self->DYGLFunctionPlayer_opaque[v13] + 40))(*&self->DYGLFunctionPlayer_opaque[v14], 3553, v8);
    (*(*&self->DYGLFunctionPlayer_opaque[v13] + 1000))(*&self->DYGLFunctionPlayer_opaque[v14], v7, 0, 4096, &v37);
    (*(*&self->DYGLFunctionPlayer_opaque[v13] + 1000))(*&self->DYGLFunctionPlayer_opaque[v14], v7, 0, 4097, &v36);
    (*(*&self->DYGLFunctionPlayer_opaque[v13] + 40))(*&self->DYGLFunctionPlayer_opaque[v14], 3553, HIDWORD(v37));
    _generateDrawableId = [(DYEAGLFunctionPlayer *)self _generateDrawableId];
    v17 = [NSNumber numberWithUnsignedLongLong:_generateDrawableId];
    v18 = [NSNumber numberWithUnsignedInt:v9];
    [currentRenderbufferDrawableMap setObject:v17 forKeyedSubscript:v18];

    deviceInfo = [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__captureSessionInfo] deviceInfo];
    v33 = 0;
    v34 = 0;
    v35 = 0;
    framebufferCopy = framebuffer;
    v28 = deviceInfo;
    if (deviceInfo)
    {
      objc_msgSend_mainScreenDescriptor(deviceInfo);
      v20 = HIDWORD(v34);
      v21 = v35;
      v22 = v34;
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
    }

    strongLayerManager = [(DYEAGLFunctionPlayer *)self strongLayerManager];
    v29 = [strongLayerManager layerForID:_generateDrawableId];

    v24 = [NSNumber numberWithBool:1];
    v25 = [NSDictionary dictionaryWithObjectsAndKeys:v24, kEAGLDrawablePropertyRetainedBacking, kEAGLColorFormatRGBA8, kEAGLDrawablePropertyColorFormat, 0];

    strongLayerManager2 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
    v15 = [strongLayerManager2 createLayerWithID:_generateDrawableId contentRect:v25 contentsScale:1 properties:0.0 isCoreAnimationSurface:{0.0, (v22 / v21), (v20 / v21), v21}];

    framebuffer = framebufferCopy;
    v12 = 0;
    currentRenderbufferDrawableMap = v30;
    [(DYEAGLFunctionPlayer *)self _transformCoreAnimationLayer:v15 rotated:framebufferCopy->var1 == 35453];
    v32 = 0;
    (*(*&self->DYGLFunctionPlayer_opaque[v13] + 832))(*&self->DYGLFunctionPlayer_opaque[v14], 36007, &v32);
    (*(*&self->DYGLFunctionPlayer_opaque[v13] + 5328))(*&self->DYGLFunctionPlayer_opaque[v14], 36161, v9);
    [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx] renderbufferStorage:36161 fromDrawable:v15];
    +[CATransaction flush];
    (*(*&self->DYGLFunctionPlayer_opaque[v13] + 5328))(*&self->DYGLFunctionPlayer_opaque[v14], 36161, v32);
  }

  (*(*&self->DYGLFunctionPlayer_opaque[v13] + 5432))(*&self->DYGLFunctionPlayer_opaque[v14], v31, 36064, 36161, v9);
  framebuffer->var0 = v9;
}

- (unsigned)_loadShaderWithType:(unsigned int)type source:(const char *)source dispatcher:(Dispatcher *)dispatcher
{
  sourceCopy = source;
  v6 = DYCreatePrivateGLShader();
  if (v6)
  {
    size_4 = 0;
    (dispatcher->var1->shader_source_ARB)(*(dispatcher->var0 + 2), v6, 1, &sourceCopy, 0);
    (dispatcher->var1->compile_shader_ARB)(*(dispatcher->var0 + 2), v6);
    (dispatcher->var1->get_shaderiv)(*(dispatcher->var0 + 2), v6, 35713, &size_4);
    if (!size_4)
    {
      size = 0;
      (dispatcher->var1->get_shaderiv)(*(dispatcher->var0 + 2), v6, 35716, &size);
      if (size >= 2)
      {
        v7 = malloc_type_malloc(size, 0x100004077774924uLL);
        (dispatcher->var1->get_shader_info_log)(*(dispatcher->var0 + 2), v6, size, 0, v7);
        free(v7);
      }

      (dispatcher->var1->delete_object_ARB)(*(dispatcher->var0 + 2), v6);
      LODWORD(v6) = 0;
    }
  }

  return v6;
}

- (BOOL)_linkProgram:(GLSLObject)program dispatcher:(Dispatcher *)dispatcher
{
  v5 = *&program.var0;
  size_4 = 0;
  (dispatcher->var1->link_program_ARB)(*(dispatcher->var0 + 2), program.var0);
  (dispatcher->var1->get_programiv)(*(dispatcher->var0 + 2), v5, 35714, &size_4);
  if (!size_4)
  {
    size = 0;
    (dispatcher->var1->get_programiv)(*(dispatcher->var0 + 2), v5, 35716, &size);
    if (size >= 2)
    {
      v6 = malloc_type_malloc(size, 0x100004077774924uLL);
      (dispatcher->var1->get_program_info_log)(*(dispatcher->var0 + 2), v5, size, 0, v6);
      free(v6);
    }
  }

  return size_4 != 0;
}

- (unsigned)_loadSimpleProgramWithVertexSource:(const char *)source fragmentSource:(const char *)fragmentSource link:(BOOL)link dispatcher:(Dispatcher *)dispatcher
{
  linkCopy = link;
  v10 = [(DYEAGLFunctionPlayer *)self _loadShaderWithType:35633 source:source dispatcher:dispatcher];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = [(DYEAGLFunctionPlayer *)self _loadShaderWithType:35632 source:fragmentSource dispatcher:dispatcher];
  if (!v12)
  {
    (dispatcher->var1->delete_object_ARB)(*(dispatcher->var0 + 2), v11);
    return 0;
  }

  v13 = v12;
  v14 = DYCreatePrivateGLProgram();
  var1 = dispatcher->var1;
  v16 = *(dispatcher->var0 + 2);
  if (!v14)
  {
    (var1->delete_object_ARB)(v16, v11);
    (dispatcher->var1->delete_object_ARB)(*(dispatcher->var0 + 2), v13);
    return v14;
  }

  (var1->attach_object_ARB)(v16, v14, v11);
  (dispatcher->var1->attach_object_ARB)(*(dispatcher->var0 + 2), v14, v13);
  (dispatcher->var1->delete_object_ARB)(*(dispatcher->var0 + 2), v11);
  (dispatcher->var1->delete_object_ARB)(*(dispatcher->var0 + 2), v13);
  if (linkCopy && ![(DYEAGLFunctionPlayer *)self _linkProgram:v14 dispatcher:dispatcher])
  {
    (dispatcher->var1->delete_object_ARB)(*(dispatcher->var0 + 2), v14);
    return 0;
  }

  return v14;
}

- (void)drawTexture:(unsigned int)texture target:(unsigned int)target framebuffer:(unsigned int)framebuffer bounds:(IntegerRect)bounds clearBits:(unsigned int)bits modulateColor:(unsigned int)color enableBlend:(BOOL)blend rotated:(BOOL)self0 texBlitProgram:(unsigned int)self1
{
  if ((byte_2A658 & 1) == 0)
  {
    sub_14184();
  }

  v12 = OBJC_IVAR___DYGLFunctionPlayer__sharegroup_dict;
  v13 = [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__sharegroup_dict] objectForKey:{@"tex_blit_ctx", *&target}];
  if (!v13)
  {
    v14 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx];
    v15 = [EAGLContext alloc];
    v16 = [v14 API];
    sharegroup = [v14 sharegroup];
    v18 = [v15 initWithAPI:v16 sharegroup:sharegroup];

    [*&self->DYGLFunctionPlayer_opaque[v12] setObject:v18 forKey:@"tex_blit_ctx"];
    v35 = v18;
    sub_4528(&v41, v18);
    v51 = &v41;
    v52 = *&v45[4];
    v19 = [v14 API];
    v20 = v51[2];
    if (v19 == &dword_0 + 1)
    {
      (v52)[72](v20, 3553);
      (v52)[73](v51[2], 32884);
      (v52[334])(v51[2], 2, 5126, 0, &unk_210A0);
    }

    else
    {
      (v52)[512](v20, 0);
      (v52[511])(v51[2], 0, 2, 5126, 0, 0, &unk_210A0);
      v21 = 0;
      v22 = &qword_2A670;
      do
      {
        if ([v14 API] >= *(v22 - 2))
        {
          v23 = [(DYEAGLFunctionPlayer *)self _loadSimpleProgramWithVertexSource:*(v22 - 1) fragmentSource:*v22 link:0 dispatcher:&v51];
          (v52[630])(v51[2], v23, 0, "inVertex");
          (v52[630])(v51[2], v23, 1, "inTexCoord");
          (v52[630])(v51[2], v23, 2, "inColor");
          [(DYEAGLFunctionPlayer *)self _linkProgram:v23 dispatcher:&v51];
          dword_2A648[v21] = (v52[625])(v51[2], v23, "range");
          dword_2A638[v21] = v23;
        }

        ++v21;
        v22 += 3;
      }

      while (v21 != 4);
    }

    (v52[7])(v51[2], 1, 771);

    v13 = v35;
  }

  sub_4528(&v51, v13);
  v24 = v54;
  v49 = &v51;
  v50 = v54;
  (*(v54 + 40))(v53, 3553, 0);
  (*(v24 + 40))(v53, 3553, texture);
  (*(v24 + 5376))(v53, 36160, 0);
  (*(v24 + 5376))(v53, 36160, framebuffer);
  if (bits)
  {
    (*(v24 + 80))(v53, bits);
  }

  if (rotated)
  {
    var1 = bounds.var1;
  }

  else
  {
    var1 = bounds.var0;
  }

  if (rotated)
  {
    var0 = bounds.var0;
  }

  else
  {
    var0 = bounds.var1;
  }

  if (rotated)
  {
    var3 = bounds.var3;
  }

  else
  {
    var3 = bounds.var2;
  }

  if (rotated)
  {
    var2 = bounds.var2;
  }

  else
  {
    var2 = bounds.var3;
  }

  (*(v24 + 2680))(v53, var1, var0, var3, var2);
  if (blend)
  {
    v29 = (*(v24 + 576))(v53, 3042);
  }

  v55 = HIBYTE(color) / 255.0;
  v29.n128_u64[0] = vdiv_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(color), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL)), vdup_n_s32(0x437F0000u));
  v40 = v29;
  v56 = v29.n128_u64[0];
  v57 = color / 255.0;
  if (rotated)
  {
    v30 = &unk_210E0;
  }

  else
  {
    v30 = &unk_210C0;
  }

  if ([v13 API] == &dword_0 + 1)
  {
    (*(v24 + 296))(v53, HIBYTE(color) / 255.0, v40, v40.n128_f32[1], color / 255.0);
    (*(v24 + 584))(v53, 32888);
    (*(v24 + 2312))(v53, 2, 5126, 0, v30);
  }

  else
  {
    (*(v24 + 4024))(v53, 2, &v55);
    (*(v24 + 4096))(v53, 1);
    (*(v24 + 4088))(v53, 1, 2, 5126, 0, 0, v30);
    (*(v24 + 4800))(v53, dword_2A638[program]);
    if ((program & 0xFFFFFFFE) == 2)
    {
      v47 = 0.0;
      v48 = 0.0;
      v46 = 0;
      (*(v24 + 1000))(v53, 3553, 0, 4099, &v46);
      v41 = 0;
      v42 = 0;
      v44 = 0;
      v43 = 0;
      *v45 = 0x100000001;
      *&v45[8] = 0;
      *&v45[13] = 0;
      GPUTools::GL::GetImageInfo();
      GPUTools::GL::RangeForUnpackedType(HIDWORD(v43), &v48, &v47, v31);
      v32 = v48;
      v33 = v47 - v48;
      (*(v50 + 4824))(v49[2], dword_2A648[program], v32, v33);
      v34 = v49;
      v24 = v50;
      goto LABEL_35;
    }
  }

  v34 = &v51;
LABEL_35:
  (*(v24 + 520))(v34[2], 5, 0, 4);
  if (blend)
  {
    (*(v50 + 504))(v49[2], 3042);
  }

  (*(v50 + 712))(v49[2]);
}

- (void)_transformCoreAnimationLayer:(id)layer rotated:(BOOL)rotated
{
  rotatedCopy = rotated;
  layerCopy = layer;
  deviceInfo = [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__captureSessionInfo] deviceInfo];
  v8 = deviceInfo;
  v16 = 0.0;
  v17 = 0;
  v18 = 0;
  if (deviceInfo)
  {
    objc_msgSend_mainScreenDescriptor(deviceInfo);
    v9 = v16;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = *&CGAffineTransformIdentity.c;
  *&v15.a = *&CGAffineTransformIdentity.a;
  *&v15.c = v10;
  *&v15.tx = *&CGAffineTransformIdentity.tx;
  *&v14.a = *&v15.a;
  *&v14.c = v10;
  *&v14.tx = *&v15.tx;
  CGAffineTransformRotate(&v15, &v14, v9);
  v19 = v15;
  CGAffineTransformScale(&v14, &v19, 1.0, -1.0);
  v15 = v14;
  if (rotatedCopy)
  {
    v19 = v15;
    CGAffineTransformScale(&v14, &v19, -1.0, -1.0);
    v15 = v14;
  }

  v12 = HIDWORD(v17);
  v11 = v18;
  v13 = v17;
  sub_A3F4(&v19, 1, 1);
  v14 = v15;
  [layerCopy setAffineTransform:&v14];
  [layerCopy setFrame:{0.0, 0.0, (v13 / v11), (v12 / v11)}];
  sub_A4C0(&v19);
}

- (DYLayerManager)layerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_layerManager);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 1112) = 0u;
  *(self + 1128) = 0u;
  *(self + 286) = 1065353216;
  return self;
}

@end