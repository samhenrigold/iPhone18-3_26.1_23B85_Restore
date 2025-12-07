@interface SKUIOffscreenRenderOperation
+ (void)preheatOffscreenRenderOperations;
- (SKUIOffscreenRenderOperation)init;
- (UIImage)outputImage;
- (id)createLayerBlock;
- (void)init;
- (void)main;
- (void)setCreateLayerBlock:(id)block;
@end

@implementation SKUIOffscreenRenderOperation

- (SKUIOffscreenRenderOperation)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIOffscreenRenderOperation init];
  }

  v7.receiver = self;
  v7.super_class = SKUIOffscreenRenderOperation;
  v3 = [(SKUIOffscreenRenderOperation *)&v7 init];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.StoreKitUI.SKUIOffscreenRenderOperation.accessQueu", MEMORY[0x277D85CD8]);
    accessQueue = v3->_accessQueue;
    v3->_accessQueue = v4;
  }

  return v3;
}

- (void)main
{
  v142[5] = *MEMORY[0x277D85DE8];
  if (([(SKUIOffscreenRenderOperation *)self isCancelled]& 1) == 0)
  {
    v3 = CACurrentMediaTime();
    createLayerBlock = [(SKUIOffscreenRenderOperation *)self createLayerBlock];
    v134 = 0;
    v135 = 0;
    _SKUIOffscreenRenderOperationPopRenderingContext(&v135, &v134);
    v5 = v135;
    v6 = v134;
    v7 = v6;
    if (!v5 || !v6)
    {
      goto LABEL_208;
    }

    currentContext = [getEAGLContextClass() currentContext];
    [getEAGLContextClass() setCurrentContext:v7];
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v9 = *(MEMORY[0x277CBF398] + 16);
    v133.origin = *MEMORY[0x277CBF398];
    v133.size = v9;
    if (!createLayerBlock || ((createLayerBlock)[2](createLayerBlock, &v133), v127 = objc_claimAutoreleasedReturnValue(), v127, !v127))
    {
LABEL_207:
      [getEAGLContextClass() setCurrentContext:currentContext];
      _SKUIOffscreenRenderOperationPushRenderingContext(v5, v7);

LABEL_208:
      v118 = CACurrentMediaTime();
      NSLog(&cfstr_Skuioffscreenr_2.isa, v118 - v3);

      return;
    }

    if (CGRectIsNull(v133))
    {
      [v127 bounds];
      v133.origin.x = v10;
      v133.origin.y = v11;
      v133.size.width = v12;
      v133.size.height = v13;
    }

    [v127 contentsScale];
    v15 = v14;
    [v127 rasterizationScale];
    v17 = v16;
    layer = [MEMORY[0x277CD9ED0] layer];
    [layer setContentsScale:v15];
    [layer addSublayer:v127];
    [layer convertRect:v127 fromLayer:{*&v133.origin, *&v133.size}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    memset(&v132, 0, sizeof(v132));
    CATransform3DMakeScale(&v132, 1.0, -1.0, 1.0);
    v131 = v132;
    [layer setTransform:&v131];
    [v5 setLayer:layer];
    [v5 setBounds:{v19, v21, v23, v25}];
    [MEMORY[0x277CD9FF0] commit];
    [MEMORY[0x277CD9FF0] flush];
    if (([(SKUIOffscreenRenderOperation *)self isCancelled]& 1) != 0)
    {
LABEL_206:

      goto LABEL_207;
    }

    v137 = 0;
    v138 = &v137;
    v139 = 0x2020000000;
    v26 = getkIOSurfaceWidthSymbolLoc_ptr;
    v140 = getkIOSurfaceWidthSymbolLoc_ptr;
    if (!getkIOSurfaceWidthSymbolLoc_ptr)
    {
      *&v131.m11 = MEMORY[0x277D85DD0];
      *&v131.m12 = 3221225472;
      *&v131.m13 = __getkIOSurfaceWidthSymbolLoc_block_invoke;
      *&v131.m14 = &unk_2781FA3E0;
      *&v131.m21 = &v137;
      v27 = IOSurfaceLibrary();
      v28 = dlsym(v27, "kIOSurfaceWidth");
      *(*(*&v131.m21 + 8) + 24) = v28;
      getkIOSurfaceWidthSymbolLoc_ptr = *(*(*&v131.m21 + 8) + 24);
      v26 = v138[3];
    }

    _Block_object_dispose(&v137, 8);
    if (!v26)
    {
      goto LABEL_210;
    }

    v29 = *v26;
    v141[0] = v29;
    v143.origin.x = v19;
    v143.origin.y = v21;
    v143.size.width = v23;
    v143.size.height = v25;
    v124 = [MEMORY[0x277CCABB0] numberWithDouble:v17 * CGRectGetWidth(v143)];
    v142[0] = v124;
    v137 = 0;
    v138 = &v137;
    v139 = 0x2020000000;
    v30 = getkIOSurfaceHeightSymbolLoc_ptr;
    v140 = getkIOSurfaceHeightSymbolLoc_ptr;
    if (!getkIOSurfaceHeightSymbolLoc_ptr)
    {
      *&v131.m11 = MEMORY[0x277D85DD0];
      *&v131.m12 = 3221225472;
      *&v131.m13 = __getkIOSurfaceHeightSymbolLoc_block_invoke;
      *&v131.m14 = &unk_2781FA3E0;
      *&v131.m21 = &v137;
      v31 = IOSurfaceLibrary();
      v32 = dlsym(v31, "kIOSurfaceHeight");
      *(*(*&v131.m21 + 8) + 24) = v32;
      getkIOSurfaceHeightSymbolLoc_ptr = *(*(*&v131.m21 + 8) + 24);
      v30 = v138[3];
    }

    _Block_object_dispose(&v137, 8);
    if (!v30)
    {
      goto LABEL_210;
    }

    v120 = *v30;
    v141[1] = v120;
    v144.origin.x = v19;
    v144.origin.y = v21;
    v144.size.width = v23;
    v144.size.height = v25;
    v33 = [MEMORY[0x277CCABB0] numberWithDouble:v17 * CGRectGetHeight(v144)];
    v142[1] = v33;
    v137 = 0;
    v138 = &v137;
    v139 = 0x2020000000;
    v34 = getkIOSurfaceBytesPerElementSymbolLoc_ptr;
    v140 = getkIOSurfaceBytesPerElementSymbolLoc_ptr;
    if (!getkIOSurfaceBytesPerElementSymbolLoc_ptr)
    {
      *&v131.m11 = MEMORY[0x277D85DD0];
      *&v131.m12 = 3221225472;
      *&v131.m13 = __getkIOSurfaceBytesPerElementSymbolLoc_block_invoke;
      *&v131.m14 = &unk_2781FA3E0;
      *&v131.m21 = &v137;
      v35 = IOSurfaceLibrary();
      v36 = dlsym(v35, "kIOSurfaceBytesPerElement");
      *(*(*&v131.m21 + 8) + 24) = v36;
      getkIOSurfaceBytesPerElementSymbolLoc_ptr = *(*(*&v131.m21 + 8) + 24);
      v34 = v138[3];
    }

    v121 = v29;
    v37 = currentContext;
    _Block_object_dispose(&v137, 8);
    if (!v34)
    {
      goto LABEL_210;
    }

    v38 = *v34;
    v141[2] = v38;
    v142[2] = &unk_2828D2C60;
    v137 = 0;
    v138 = &v137;
    v139 = 0x2020000000;
    v39 = getkIOSurfacePixelFormatSymbolLoc_ptr;
    v140 = getkIOSurfacePixelFormatSymbolLoc_ptr;
    if (!getkIOSurfacePixelFormatSymbolLoc_ptr)
    {
      *&v131.m11 = MEMORY[0x277D85DD0];
      *&v131.m12 = 3221225472;
      *&v131.m13 = __getkIOSurfacePixelFormatSymbolLoc_block_invoke;
      *&v131.m14 = &unk_2781FA3E0;
      *&v131.m21 = &v137;
      v40 = IOSurfaceLibrary();
      v41 = dlsym(v40, "kIOSurfacePixelFormat");
      *(*(*&v131.m21 + 8) + 24) = v41;
      getkIOSurfacePixelFormatSymbolLoc_ptr = *(*(*&v131.m21 + 8) + 24);
      v39 = v138[3];
    }

    _Block_object_dispose(&v137, 8);
    if (!v39)
    {
      goto LABEL_210;
    }

    v42 = *v39;
    v141[3] = v42;
    v142[3] = &unk_2828D2C78;
    v137 = 0;
    v138 = &v137;
    v139 = 0x2020000000;
    v43 = getkIOSurfaceIsGlobalSymbolLoc_ptr;
    v140 = getkIOSurfaceIsGlobalSymbolLoc_ptr;
    if (!getkIOSurfaceIsGlobalSymbolLoc_ptr)
    {
      *&v131.m11 = MEMORY[0x277D85DD0];
      *&v131.m12 = 3221225472;
      *&v131.m13 = __getkIOSurfaceIsGlobalSymbolLoc_block_invoke;
      *&v131.m14 = &unk_2781FA3E0;
      *&v131.m21 = &v137;
      v44 = IOSurfaceLibrary();
      v45 = dlsym(v44, "kIOSurfaceIsGlobal");
      *(*(*&v131.m21 + 8) + 24) = v45;
      getkIOSurfaceIsGlobalSymbolLoc_ptr = *(*(*&v131.m21 + 8) + 24);
      v43 = v138[3];
    }

    _Block_object_dispose(&v137, 8);
    if (!v43)
    {
      goto LABEL_210;
    }

    v46 = *v43;
    v141[4] = v46;
    v142[4] = MEMORY[0x277CBEC28];
    v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v142 forKeys:v141 count:5];
    currentContext = v37;

    v137 = 0;
    v138 = &v137;
    v139 = 0x2020000000;
    v47 = getIOSurfaceCreateSymbolLoc_ptr;
    v140 = getIOSurfaceCreateSymbolLoc_ptr;
    if (!getIOSurfaceCreateSymbolLoc_ptr)
    {
      *&v131.m11 = MEMORY[0x277D85DD0];
      *&v131.m12 = 3221225472;
      *&v131.m13 = __getIOSurfaceCreateSymbolLoc_block_invoke;
      *&v131.m14 = &unk_2781FA3E0;
      *&v131.m21 = &v137;
      v48 = IOSurfaceLibrary();
      v49 = dlsym(v48, "IOSurfaceCreate");
      *(*(*&v131.m21 + 8) + 24) = v49;
      getIOSurfaceCreateSymbolLoc_ptr = *(*(*&v131.m21 + 8) + 24);
      v47 = v138[3];
    }

    _Block_object_dispose(&v137, 8);
    if (!v47)
    {
      goto LABEL_210;
    }

    v50 = v47(v123);
    v51 = v50;
    if (!v50)
    {
      goto LABEL_193;
    }

    v130 = 0;
    v125 = v7;
    HIDWORD(v136) = 0;
    v137 = 0;
    v138 = &v137;
    v139 = 0x2020000000;
    v52 = getglGenTexturesSymbolLoc_ptr;
    v140 = getglGenTexturesSymbolLoc_ptr;
    if (!getglGenTexturesSymbolLoc_ptr)
    {
      *&v131.m11 = MEMORY[0x277D85DD0];
      *&v131.m12 = 3221225472;
      *&v131.m13 = __getglGenTexturesSymbolLoc_block_invoke;
      *&v131.m14 = &unk_2781FA3E0;
      *&v131.m21 = &v137;
      v53 = OpenGLESLibrary();
      v54 = dlsym(v53, "glGenTextures");
      *(*(*&v131.m21 + 8) + 24) = v54;
      getglGenTexturesSymbolLoc_ptr = *(*(*&v131.m21 + 8) + 24);
      v52 = v138[3];
    }

    _Block_object_dispose(&v137, 8);
    if (!v52)
    {
      goto LABEL_210;
    }

    v55 = v52(1, &v136 + 4);
    Error = _SKUIglGetError(v55);
    if (Error <= 1280)
    {
      if (!Error)
      {
        goto LABEL_43;
      }

      if (Error == 1280)
      {
        v57 = "invalid enum";
        goto LABEL_42;
      }
    }

    else
    {
      switch(Error)
      {
        case 0x501:
          v57 = "invalid value";
          goto LABEL_42;
        case 0x502:
          v57 = "invalid operation";
          goto LABEL_42;
        case 0x505:
          v57 = "out of memory";
LABEL_42:
          NSLog(&cfstr_Skuioffscreenr_0.isa, "_SKUIOffscreenRenderOperationBindSurfaceToFramebuffer", 248, Error, v57);
LABEL_43:
          v58 = _SKUIglBindTexture(HIDWORD(v136));
          v59 = _SKUIglGetError(v58);
          if (v59 <= 1280)
          {
            if (!v59)
            {
              goto LABEL_55;
            }

            if (v59 == 1280)
            {
              v60 = "invalid enum";
              goto LABEL_54;
            }
          }

          else
          {
            switch(v59)
            {
              case 0x501:
                v60 = "invalid value";
                goto LABEL_54;
              case 0x502:
                v60 = "invalid operation";
                goto LABEL_54;
              case 0x505:
                v60 = "out of memory";
LABEL_54:
                NSLog(&cfstr_Skuioffscreenr_0.isa, "_SKUIOffscreenRenderOperationBindSurfaceToFramebuffer", 252, v59, v60);
LABEL_55:
                v137 = 0;
                v138 = &v137;
                v139 = 0x2020000000;
                v61 = getIOSurfaceGetWidthSymbolLoc_ptr;
                v140 = getIOSurfaceGetWidthSymbolLoc_ptr;
                if (!getIOSurfaceGetWidthSymbolLoc_ptr)
                {
                  *&v131.m11 = MEMORY[0x277D85DD0];
                  *&v131.m12 = 3221225472;
                  *&v131.m13 = __getIOSurfaceGetWidthSymbolLoc_block_invoke;
                  *&v131.m14 = &unk_2781FA3E0;
                  *&v131.m21 = &v137;
                  v62 = IOSurfaceLibrary();
                  v63 = dlsym(v62, "IOSurfaceGetWidth");
                  *(*(*&v131.m21 + 8) + 24) = v63;
                  getIOSurfaceGetWidthSymbolLoc_ptr = *(*(*&v131.m21 + 8) + 24);
                  v61 = v138[3];
                }

                _Block_object_dispose(&v137, 8);
                if (!v61)
                {
                  goto LABEL_210;
                }

                v122 = v61(v51);
                v137 = 0;
                v138 = &v137;
                v139 = 0x2020000000;
                v64 = getIOSurfaceGetHeightSymbolLoc_ptr;
                v140 = getIOSurfaceGetHeightSymbolLoc_ptr;
                if (!getIOSurfaceGetHeightSymbolLoc_ptr)
                {
                  *&v131.m11 = MEMORY[0x277D85DD0];
                  *&v131.m12 = 3221225472;
                  *&v131.m13 = __getIOSurfaceGetHeightSymbolLoc_block_invoke;
                  *&v131.m14 = &unk_2781FA3E0;
                  *&v131.m21 = &v137;
                  v65 = IOSurfaceLibrary();
                  v66 = dlsym(v65, "IOSurfaceGetHeight");
                  *(*(*&v131.m21 + 8) + 24) = v66;
                  getIOSurfaceGetHeightSymbolLoc_ptr = *(*(*&v131.m21 + 8) + 24);
                  v64 = v138[3];
                }

                _Block_object_dispose(&v137, 8);
                if (!v64)
                {
                  goto LABEL_210;
                }

                v67 = v64(v51);
                BYTE4(v119) = 0;
                LODWORD(v119) = 0;
                v68 = _SKUIglGetError([v125 texImageIOSurface:v51 target:3553 internalFormat:6408 width:v122 height:v67 format:32993 type:33639 plane:v119 invert:?]);
                if (v68 <= 1280)
                {
                  if (!v68)
                  {
                    goto LABEL_73;
                  }

                  if (v68 == 1280)
                  {
                    v69 = "invalid enum";
                    goto LABEL_72;
                  }
                }

                else
                {
                  switch(v68)
                  {
                    case 0x501:
                      v69 = "invalid value";
                      goto LABEL_72;
                    case 0x502:
                      v69 = "invalid operation";
                      goto LABEL_72;
                    case 0x505:
                      v69 = "out of memory";
LABEL_72:
                      NSLog(&cfstr_Skuioffscreenr_0.isa, "_SKUIOffscreenRenderOperationBindSurfaceToFramebuffer", 257, v68, v69);
LABEL_73:
                      _SKUIglTexParameteri(10241, 9728);
                      _SKUIglTexParameteri(10240, 9728);
                      _SKUIglTexParameteri(10242, 33071);
                      v70 = _SKUIglTexParameteri(10243, 33071);
                      v71 = _SKUIglGetError(v70);
                      if (v71 <= 1280)
                      {
                        if (!v71)
                        {
                          goto LABEL_85;
                        }

                        if (v71 == 1280)
                        {
                          v72 = "invalid enum";
                          goto LABEL_84;
                        }
                      }

                      else
                      {
                        switch(v71)
                        {
                          case 0x501:
                            v72 = "invalid value";
                            goto LABEL_84;
                          case 0x502:
                            v72 = "invalid operation";
                            goto LABEL_84;
                          case 0x505:
                            v72 = "out of memory";
LABEL_84:
                            NSLog(&cfstr_Skuioffscreenr_0.isa, "_SKUIOffscreenRenderOperationBindSurfaceToFramebuffer", 263, v71, v72);
LABEL_85:
                            v73 = _SKUIglBindTexture(0);
                            v74 = _SKUIglGetError(v73);
                            if (v74 <= 1280)
                            {
                              if (!v74)
                              {
                                goto LABEL_97;
                              }

                              if (v74 == 1280)
                              {
                                v75 = "invalid enum";
                                goto LABEL_96;
                              }
                            }

                            else
                            {
                              switch(v74)
                              {
                                case 0x501:
                                  v75 = "invalid value";
                                  goto LABEL_96;
                                case 0x502:
                                  v75 = "invalid operation";
                                  goto LABEL_96;
                                case 0x505:
                                  v75 = "out of memory";
LABEL_96:
                                  NSLog(&cfstr_Skuioffscreenr_0.isa, "_SKUIOffscreenRenderOperationBindSurfaceToFramebuffer", 266, v74, v75);
LABEL_97:
                                  LODWORD(v136) = 0;
                                  v137 = 0;
                                  v138 = &v137;
                                  v139 = 0x2020000000;
                                  v76 = getglGenFramebuffersSymbolLoc_ptr;
                                  v140 = getglGenFramebuffersSymbolLoc_ptr;
                                  if (!getglGenFramebuffersSymbolLoc_ptr)
                                  {
                                    *&v131.m11 = MEMORY[0x277D85DD0];
                                    *&v131.m12 = 3221225472;
                                    *&v131.m13 = __getglGenFramebuffersSymbolLoc_block_invoke;
                                    *&v131.m14 = &unk_2781FA3E0;
                                    *&v131.m21 = &v137;
                                    v77 = OpenGLESLibrary();
                                    v78 = dlsym(v77, "glGenFramebuffers");
                                    *(*(*&v131.m21 + 8) + 24) = v78;
                                    getglGenFramebuffersSymbolLoc_ptr = *(*(*&v131.m21 + 8) + 24);
                                    v76 = v138[3];
                                  }

                                  _Block_object_dispose(&v137, 8);
                                  if (!v76)
                                  {
                                    goto LABEL_210;
                                  }

                                  v76(1, &v136);
                                  _SKUIglBindFramebuffer(v136);
                                  v79 = HIDWORD(v136);
                                  v137 = 0;
                                  v138 = &v137;
                                  v139 = 0x2020000000;
                                  v80 = getglFramebufferTexture2DSymbolLoc_ptr;
                                  v140 = getglFramebufferTexture2DSymbolLoc_ptr;
                                  if (!getglFramebufferTexture2DSymbolLoc_ptr)
                                  {
                                    *&v131.m11 = MEMORY[0x277D85DD0];
                                    *&v131.m12 = 3221225472;
                                    *&v131.m13 = __getglFramebufferTexture2DSymbolLoc_block_invoke;
                                    *&v131.m14 = &unk_2781FA3E0;
                                    *&v131.m21 = &v137;
                                    v81 = OpenGLESLibrary();
                                    v82 = dlsym(v81, "glFramebufferTexture2D");
                                    *(*(*&v131.m21 + 8) + 24) = v82;
                                    getglFramebufferTexture2DSymbolLoc_ptr = *(*(*&v131.m21 + 8) + 24);
                                    v80 = v138[3];
                                  }

                                  _Block_object_dispose(&v137, 8);
                                  if (!v80)
                                  {
                                    goto LABEL_210;
                                  }

                                  v83 = v80(36160, 36064, 3553, v79, 0);
                                  v84 = _SKUIglGetError(v83);
                                  if (v84 <= 1280)
                                  {
                                    if (!v84)
                                    {
                                      goto LABEL_115;
                                    }

                                    if (v84 == 1280)
                                    {
                                      v85 = "invalid enum";
                                      goto LABEL_114;
                                    }
                                  }

                                  else
                                  {
                                    switch(v84)
                                    {
                                      case 0x501:
                                        v85 = "invalid value";
                                        goto LABEL_114;
                                      case 0x502:
                                        v85 = "invalid operation";
                                        goto LABEL_114;
                                      case 0x505:
                                        v85 = "out of memory";
LABEL_114:
                                        NSLog(&cfstr_Skuioffscreenr_0.isa, "_SKUIOffscreenRenderOperationBindSurfaceToFramebuffer", 273, v84, v85);
LABEL_115:
                                        v137 = 0;
                                        v138 = &v137;
                                        v139 = 0x2020000000;
                                        v86 = getglViewportSymbolLoc_ptr;
                                        v140 = getglViewportSymbolLoc_ptr;
                                        if (!getglViewportSymbolLoc_ptr)
                                        {
                                          *&v131.m11 = MEMORY[0x277D85DD0];
                                          *&v131.m12 = 3221225472;
                                          *&v131.m13 = __getglViewportSymbolLoc_block_invoke;
                                          *&v131.m14 = &unk_2781FA3E0;
                                          *&v131.m21 = &v137;
                                          v87 = OpenGLESLibrary();
                                          v88 = dlsym(v87, "glViewport");
                                          *(*(*&v131.m21 + 8) + 24) = v88;
                                          getglViewportSymbolLoc_ptr = *(*(*&v131.m21 + 8) + 24);
                                          v86 = v138[3];
                                        }

                                        _Block_object_dispose(&v137, 8);
                                        if (!v86)
                                        {
                                          goto LABEL_210;
                                        }

                                        v89 = (v86)(0, 0, v122, v67);
                                        v90 = _SKUIglGetError(v89);
                                        if (v90 <= 1280)
                                        {
                                          if (!v90)
                                          {
                                            goto LABEL_130;
                                          }

                                          if (v90 == 1280)
                                          {
                                            v91 = "invalid enum";
                                            goto LABEL_129;
                                          }
                                        }

                                        else
                                        {
                                          switch(v90)
                                          {
                                            case 0x501:
                                              v91 = "invalid value";
                                              goto LABEL_129;
                                            case 0x502:
                                              v91 = "invalid operation";
                                              goto LABEL_129;
                                            case 0x505:
                                              v91 = "out of memory";
LABEL_129:
                                              NSLog(&cfstr_Skuioffscreenr_0.isa, "_SKUIOffscreenRenderOperationBindSurfaceToFramebuffer", 276, v90, v91);
LABEL_130:
                                              v130 = v136;

                                              v137 = 0;
                                              v138 = &v137;
                                              v139 = 0x2020000000;
                                              v92 = getglClearColorSymbolLoc_ptr;
                                              v140 = getglClearColorSymbolLoc_ptr;
                                              if (!getglClearColorSymbolLoc_ptr)
                                              {
                                                *&v131.m11 = MEMORY[0x277D85DD0];
                                                *&v131.m12 = 3221225472;
                                                *&v131.m13 = __getglClearColorSymbolLoc_block_invoke;
                                                *&v131.m14 = &unk_2781FA3E0;
                                                *&v131.m21 = &v137;
                                                v93 = OpenGLESLibrary();
                                                v94 = dlsym(v93, "glClearColor");
                                                *(*(*&v131.m21 + 8) + 24) = v94;
                                                getglClearColorSymbolLoc_ptr = *(*(*&v131.m21 + 8) + 24);
                                                v92 = v138[3];
                                              }

                                              _Block_object_dispose(&v137, 8);
                                              if (!v92)
                                              {
                                                goto LABEL_210;
                                              }

                                              v92(0.0, 0.0, 0.0, 0.0);
                                              v137 = 0;
                                              v138 = &v137;
                                              v139 = 0x2020000000;
                                              v95 = getglClearSymbolLoc_ptr;
                                              v140 = getglClearSymbolLoc_ptr;
                                              if (!getglClearSymbolLoc_ptr)
                                              {
                                                *&v131.m11 = MEMORY[0x277D85DD0];
                                                *&v131.m12 = 3221225472;
                                                *&v131.m13 = __getglClearSymbolLoc_block_invoke;
                                                *&v131.m14 = &unk_2781FA3E0;
                                                *&v131.m21 = &v137;
                                                v96 = OpenGLESLibrary();
                                                v97 = dlsym(v96, "glClear");
                                                *(*(*&v131.m21 + 8) + 24) = v97;
                                                getglClearSymbolLoc_ptr = *(*(*&v131.m21 + 8) + 24);
                                                v95 = v138[3];
                                              }

                                              _Block_object_dispose(&v137, 8);
                                              if (!v95)
                                              {
                                                goto LABEL_210;
                                              }

                                              v95(0x4000);
                                              v98 = _SKUIglGetError([v5 beginFrameAtTime:0 timeStamp:0.0]);
                                              if (v98 <= 1280)
                                              {
                                                if (!v98)
                                                {
                                                  goto LABEL_148;
                                                }

                                                if (v98 == 1280)
                                                {
                                                  v99 = "invalid enum";
                                                  goto LABEL_147;
                                                }
                                              }

                                              else
                                              {
                                                switch(v98)
                                                {
                                                  case 0x501:
                                                    v99 = "invalid value";
                                                    goto LABEL_147;
                                                  case 0x502:
                                                    v99 = "invalid operation";
                                                    goto LABEL_147;
                                                  case 0x505:
                                                    v99 = "out of memory";
LABEL_147:
                                                    NSLog(&cfstr_Skuioffscreenr_0.isa, "[SKUIOffscreenRenderOperation main]", 147, v98, v99);
LABEL_148:
                                                    v100 = _SKUIglGetError([v5 render]);
                                                    if (v100 <= 1280)
                                                    {
                                                      if (!v100)
                                                      {
                                                        goto LABEL_160;
                                                      }

                                                      if (v100 == 1280)
                                                      {
                                                        v101 = "invalid enum";
                                                        goto LABEL_159;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      switch(v100)
                                                      {
                                                        case 0x501:
                                                          v101 = "invalid value";
                                                          goto LABEL_159;
                                                        case 0x502:
                                                          v101 = "invalid operation";
                                                          goto LABEL_159;
                                                        case 0x505:
                                                          v101 = "out of memory";
LABEL_159:
                                                          NSLog(&cfstr_Skuioffscreenr_0.isa, "[SKUIOffscreenRenderOperation main]", 149, v100, v101);
LABEL_160:
                                                          v102 = _SKUIglGetError([v5 endFrame]);
                                                          if (v102 <= 1280)
                                                          {
                                                            if (!v102)
                                                            {
                                                              goto LABEL_172;
                                                            }

                                                            if (v102 == 1280)
                                                            {
                                                              v103 = "invalid enum";
                                                              goto LABEL_171;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            switch(v102)
                                                            {
                                                              case 0x501:
                                                                v103 = "invalid value";
                                                                goto LABEL_171;
                                                              case 0x502:
                                                                v103 = "invalid operation";
                                                                goto LABEL_171;
                                                              case 0x505:
                                                                v103 = "out of memory";
LABEL_171:
                                                                NSLog(&cfstr_Skuioffscreenr_0.isa, "[SKUIOffscreenRenderOperation main]", 151, v102, v103);
LABEL_172:
                                                                [v5 setLayer:0];
                                                                _SKUIglBindFramebuffer(0);
                                                                v137 = 0;
                                                                v138 = &v137;
                                                                v139 = 0x2020000000;
                                                                v104 = getglDeleteFramebuffersSymbolLoc_ptr;
                                                                v140 = getglDeleteFramebuffersSymbolLoc_ptr;
                                                                if (!getglDeleteFramebuffersSymbolLoc_ptr)
                                                                {
                                                                  *&v131.m11 = MEMORY[0x277D85DD0];
                                                                  *&v131.m12 = 3221225472;
                                                                  *&v131.m13 = __getglDeleteFramebuffersSymbolLoc_block_invoke;
                                                                  *&v131.m14 = &unk_2781FA3E0;
                                                                  *&v131.m21 = &v137;
                                                                  v105 = OpenGLESLibrary();
                                                                  v106 = dlsym(v105, "glDeleteFramebuffers");
                                                                  *(*(*&v131.m21 + 8) + 24) = v106;
                                                                  getglDeleteFramebuffersSymbolLoc_ptr = *(*(*&v131.m21 + 8) + 24);
                                                                  v104 = v138[3];
                                                                }

                                                                _Block_object_dispose(&v137, 8);
                                                                if (v104)
                                                                {
                                                                  v104(1, &v130);
                                                                  v137 = 0;
                                                                  v138 = &v137;
                                                                  v139 = 0x2020000000;
                                                                  v107 = getglDeleteTexturesSymbolLoc_ptr;
                                                                  v140 = getglDeleteTexturesSymbolLoc_ptr;
                                                                  if (!getglDeleteTexturesSymbolLoc_ptr)
                                                                  {
                                                                    *&v131.m11 = MEMORY[0x277D85DD0];
                                                                    *&v131.m12 = 3221225472;
                                                                    *&v131.m13 = __getglDeleteTexturesSymbolLoc_block_invoke;
                                                                    *&v131.m14 = &unk_2781FA3E0;
                                                                    *&v131.m21 = &v137;
                                                                    v108 = OpenGLESLibrary();
                                                                    v109 = dlsym(v108, "glDeleteTextures");
                                                                    *(*(*&v131.m21 + 8) + 24) = v109;
                                                                    getglDeleteTexturesSymbolLoc_ptr = *(*(*&v131.m21 + 8) + 24);
                                                                    v107 = v138[3];
                                                                  }

                                                                  _Block_object_dispose(&v137, 8);
                                                                  if (v107)
                                                                  {
                                                                    v110 = v107(1, &v130 + 4);
                                                                    v111 = _SKUIglGetError(v110);
                                                                    if (v111 <= 1280)
                                                                    {
                                                                      if (!v111)
                                                                      {
LABEL_190:
                                                                        v113 = [objc_alloc(MEMORY[0x277D755B8]) _initWithIOSurface:v51 scale:0 orientation:v17];
                                                                        v114 = v113;
                                                                        if (v113)
                                                                        {
                                                                          accessQueue = self->_accessQueue;
                                                                          block[0] = MEMORY[0x277D85DD0];
                                                                          block[1] = 3221225472;
                                                                          block[2] = __36__SKUIOffscreenRenderOperation_main__block_invoke;
                                                                          block[3] = &unk_2781F80C8;
                                                                          block[4] = self;
                                                                          v129 = v113;
                                                                          dispatch_barrier_async(accessQueue, block);
                                                                        }

                                                                        CFRelease(v51);

LABEL_193:
                                                                        v116 = _SKUIglGetError(v50);
                                                                        if (v116 <= 1280)
                                                                        {
                                                                          if (!v116)
                                                                          {
LABEL_205:

                                                                            goto LABEL_206;
                                                                          }

                                                                          if (v116 == 1280)
                                                                          {
                                                                            v117 = "invalid enum";
                                                                            goto LABEL_204;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          switch(v116)
                                                                          {
                                                                            case 0x501:
                                                                              v117 = "invalid value";
                                                                              goto LABEL_204;
                                                                            case 0x502:
                                                                              v117 = "invalid operation";
                                                                              goto LABEL_204;
                                                                            case 0x505:
                                                                              v117 = "out of memory";
LABEL_204:
                                                                              NSLog(&cfstr_Skuioffscreenr_0.isa, "[SKUIOffscreenRenderOperation main]", 168, v116, v117);
                                                                              goto LABEL_205;
                                                                          }
                                                                        }

                                                                        v117 = "unknown error";
                                                                        goto LABEL_204;
                                                                      }

                                                                      if (v111 == 1280)
                                                                      {
                                                                        v112 = "invalid enum";
                                                                        goto LABEL_189;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      switch(v111)
                                                                      {
                                                                        case 0x501:
                                                                          v112 = "invalid value";
                                                                          goto LABEL_189;
                                                                        case 0x502:
                                                                          v112 = "invalid operation";
                                                                          goto LABEL_189;
                                                                        case 0x505:
                                                                          v112 = "out of memory";
LABEL_189:
                                                                          NSLog(&cfstr_Skuioffscreenr_0.isa, "[SKUIOffscreenRenderOperation main]", 158, v111, v112);
                                                                          goto LABEL_190;
                                                                      }
                                                                    }

                                                                    v112 = "unknown error";
                                                                    goto LABEL_189;
                                                                  }

                                                                  getCNComposeRecipientViewDidChangeNotification_cold_1();
LABEL_224:
                                                                  __break(1u);
                                                                }

LABEL_210:
                                                                getCNComposeRecipientViewDidChangeNotification_cold_1();
                                                                goto LABEL_224;
                                                            }
                                                          }

                                                          v103 = "unknown error";
                                                          goto LABEL_171;
                                                      }
                                                    }

                                                    v101 = "unknown error";
                                                    goto LABEL_159;
                                                }
                                              }

                                              v99 = "unknown error";
                                              goto LABEL_147;
                                          }
                                        }

                                        v91 = "unknown error";
                                        goto LABEL_129;
                                    }
                                  }

                                  v85 = "unknown error";
                                  goto LABEL_114;
                              }
                            }

                            v75 = "unknown error";
                            goto LABEL_96;
                        }
                      }

                      v72 = "unknown error";
                      goto LABEL_84;
                  }
                }

                v69 = "unknown error";
                goto LABEL_72;
            }
          }

          v60 = "unknown error";
          goto LABEL_54;
      }
    }

    v57 = "unknown error";
    goto LABEL_42;
  }
}

- (id)createLayerBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__44;
  v10 = __Block_byref_object_dispose__44;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__SKUIOffscreenRenderOperation_createLayerBlock__block_invoke;
  v5[3] = &unk_2781F8608;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = _Block_copy(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __48__SKUIOffscreenRenderOperation_createLayerBlock__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 256) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (UIImage)outputImage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__17;
  v10 = __Block_byref_object_dispose__18;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__SKUIOffscreenRenderOperation_outputImage__block_invoke;
  v5[3] = &unk_2781F8608;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setCreateLayerBlock:(id)block
{
  blockCopy = block;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SKUIOffscreenRenderOperation_setCreateLayerBlock___block_invoke;
  v7[3] = &unk_2781F98F0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_barrier_async(accessQueue, v7);
}

uint64_t __52__SKUIOffscreenRenderOperation_setCreateLayerBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 256);
  *(v3 + 256) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

+ (void)preheatOffscreenRenderOperations
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIOffscreenRenderOperation preheatOffscreenRenderOperations]";
}

void __64__SKUIOffscreenRenderOperation_preheatOffscreenRenderOperations__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  NSLog(&cfstr_Skuioffscreenr_4.isa, 2);
  v1 = 1;
  v2 = CACurrentMediaTime();
  do
  {
    v3 = v1;
    v14 = 0;
    v15 = 0;
    _SKUIOffscreenRenderOperationPopRenderingContext(&v15, &v14);
    v4 = v15;
    v5 = v14;
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      [v0 addObject:v4];
      [v0 addObject:v5];
    }

    v1 = 0;
  }

  while ((v3 & 1) != 0);
  if ([v0 count] >= 2)
  {
    v7 = 0;
    do
    {
      v8 = [v0 objectAtIndex:v7];
      v9 = [v0 objectAtIndex:v7 + 1];
      _SKUIOffscreenRenderOperationPushRenderingContext(v8, v9);

      v10 = [v0 count];
      v11 = v7 + 3;
      v7 += 2;
    }

    while (v11 < v10);
  }

  v12 = CACurrentMediaTime();
  NSLog(&cfstr_Skuioffscreenr_5.isa, 2, v12 - v2);
  v13 = dispatch_get_global_queue(0, 0);
  dispatch_async(v13, &__block_literal_global_27);
}

void __64__SKUIOffscreenRenderOperation_preheatOffscreenRenderOperations__block_invoke_2()
{
  NSLog(&cfstr_Skuioffscreenr_6.isa);
  v0 = CACurrentMediaTime();
  IOSurfaceLibrary();
  OpenGLESLibrary();
  v1 = CACurrentMediaTime();
  NSLog(&cfstr_Skuioffscreenr_7.isa, v1 - v0);
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIOffscreenRenderOperation init]";
}

@end