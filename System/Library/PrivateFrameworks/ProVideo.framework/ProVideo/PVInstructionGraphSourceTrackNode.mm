@interface PVInstructionGraphSourceTrackNode
+ (id)newSourceTrackNode:(int)node animation:(id)animation fillMode:(int)mode clipNaturalSize:(CGSize)size;
+ (id)newSourceTrackNode:(int)node transform:(CGAffineTransform *)transform cropRect:(CGRect)rect clipNaturalSize:(CGSize)size;
+ (id)newSourceTrackNodeWithStabilizationDelegate:(id)delegate userContext:(id)context trackID:(int)d dataTrackID:(int)iD transform:(CGAffineTransform *)transform clipNaturalSize:(CGSize)size;
+ (id)newSourceTrackNodeWithStabilizationDelegate:(id)delegate userContext:(id)context trackID:(int)d transform:(CGAffineTransform *)transform clipNaturalSize:(CGSize)size;
- (BOOL)isPassthru;
- (CGRect)cropRect;
- (CGSize)clipNaturalSize;
- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)effect igContext:(id)context;
- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context;
- (PVInstructionGraphSourceTrackNode)init;
- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)label;
- (id)instructionGraphNodeDescription;
- (id)requiredSourceSampleDataTrackIDs;
- (id)requiredSourceTrackIDs;
- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node returnLoadedEffects:(id)effects;
- (void)unloadIGNode;
@end

@implementation PVInstructionGraphSourceTrackNode

+ (id)newSourceTrackNode:(int)node transform:(CGAffineTransform *)transform cropRect:(CGRect)rect clipNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8 = rect.size.height;
  v9 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = *&node;
  v14 = objc_alloc_init(PVInstructionGraphSourceTrackNode);
  [(PVInstructionGraphSourceTrackNode *)v14 setTrackID:v13];
  v15 = *&transform->c;
  v17[0] = *&transform->a;
  v17[1] = v15;
  v17[2] = *&transform->tx;
  [(PVInstructionGraphSourceNode *)v14 setTransform:v17];
  [(PVInstructionGraphSourceTrackNode *)v14 setCropRect:x, y, v9, v8];
  [(PVInstructionGraphSourceTrackNode *)v14 setFillMode:0];
  [(PVInstructionGraphSourceTrackNode *)v14 setClipNaturalSize:width, height];
  return v14;
}

+ (id)newSourceTrackNode:(int)node animation:(id)animation fillMode:(int)mode clipNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8 = *&mode;
  v9 = *&node;
  animationCopy = animation;
  v11 = objc_alloc_init(PVInstructionGraphSourceTrackNode);
  [(PVInstructionGraphSourceTrackNode *)v11 setTrackID:v9];
  [(PVInstructionGraphSourceNode *)v11 setTransformAnimation:animationCopy];
  [(PVInstructionGraphSourceTrackNode *)v11 setFillMode:v8];
  [(PVInstructionGraphSourceTrackNode *)v11 setClipNaturalSize:width, height];

  return v11;
}

+ (id)newSourceTrackNodeWithStabilizationDelegate:(id)delegate userContext:(id)context trackID:(int)d transform:(CGAffineTransform *)transform clipNaturalSize:(CGSize)size
{
  v7 = *&transform->c;
  v9[0] = *&transform->a;
  v9[1] = v7;
  v9[2] = *&transform->tx;
  return [self newSourceTrackNodeWithStabilizationDelegate:delegate userContext:context trackID:*&d dataTrackID:0 transform:v9 clipNaturalSize:{size.width, size.height}];
}

+ (id)newSourceTrackNodeWithStabilizationDelegate:(id)delegate userContext:(id)context trackID:(int)d dataTrackID:(int)iD transform:(CGAffineTransform *)transform clipNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v11 = *&iD;
  v12 = *&d;
  delegateCopy = delegate;
  contextCopy = context;
  v17 = *&transform->c;
  v20[0] = *&transform->a;
  v20[1] = v17;
  v20[2] = *&transform->tx;
  v18 = [self newSourceTrackNode:v12 transform:v20 cropRect:*MEMORY[0x277CBF3A0] clipNaturalSize:{*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), width, height}];
  [v18 setDataTrackID:v11];
  [v18 setStabilizationDelegate:delegateCopy];
  [v18 setStabilizationDelegateRespondsToDidStabilize:objc_opt_respondsToSelector() & 1];
  [v18 setUserContext:contextCopy];

  return v18;
}

- (PVInstructionGraphSourceTrackNode)init
{
  v7.receiver = self;
  v7.super_class = PVInstructionGraphSourceTrackNode;
  v2 = [(PVInstructionGraphSourceNode *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = *&v2->_fillMode;
    *&v2->_fillMode = 0;

    BYTE4(v3->super._transform.ty) = 0;
    stabilizationDelegate = v3->_stabilizationDelegate;
    v3->_stabilizationDelegate = 0;

    v3->_sourceTrackloaded.__a_.__a_value = 0;
    *&v3->_stabilizationDelegateRespondsToDidStabilize = 0;
    atomic_store(0, &v3->super._transform.ty);
  }

  return v3;
}

- (id)requiredSourceTrackIDs
{
  if (self->_trackID)
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_sourceTrackloaded.__a_.__a_value];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_trackID];
    v6 = [v3 setWithObjects:{v4, v5, 0}];
LABEL_5:
    v9 = v6;

    goto LABEL_6;
  }

  v7 = *&self->_stabilizationDelegateRespondsToDidStabilize;
  v8 = MEMORY[0x277CBEB98];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_sourceTrackloaded.__a_.__a_value];
  if (v7)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:*&self->_stabilizationDelegateRespondsToDidStabilize];
    v6 = [v8 setWithObjects:{v4, v5, 0}];
    goto LABEL_5;
  }

  v9 = [v8 setWithObject:v4];
LABEL_6:

  return v9;
}

- (id)requiredSourceSampleDataTrackIDs
{
  if (self->_dataTrackID || *&self->_stabilizationDelegateRespondsToDidStabilize)
  {
    v2 = MEMORY[0x277CBEB98];
    v3 = [MEMORY[0x277CCABB0] numberWithInt:?];
    v4 = [v2 setWithObjects:{v3, 0}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isPassthru
{
  if (!self->_sourceTrackloaded.__a_.__a_value || *&self->_stabilizationDelegateRespondsToDidStabilize || self->_trackID || self->_dataTrackID)
  {
    return 0;
  }

  stabilizationDelegate = [(PVInstructionGraphSourceTrackNode *)self stabilizationDelegate];
  if (stabilizationDelegate)
  {
    IsIdentity = 0;
  }

  else
  {
    objc_msgSend_transform(self);
    IsIdentity = CGAffineTransformIsIdentity(&v6);
  }

  return IsIdentity;
}

- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node returnLoadedEffects:(id)effects
{
  v7 = [(PVInstructionGraphSourceTrackNode *)self stabilizationDelegate:node.m_Obj];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) != 0 && !atomic_fetch_add(&self->super._transform.ty, 1u))
  {
    stabilizationDelegate = [(PVInstructionGraphSourceTrackNode *)self stabilizationDelegate];
    userContext = [(PVInstructionGraphSourceTrackNode *)self userContext];
    [stabilizationDelegate loadWithUserContext:userContext];
  }
}

- (void)unloadIGNode
{
  stabilizationDelegate = [(PVInstructionGraphSourceTrackNode *)self stabilizationDelegate];
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) != 0 && atomic_fetch_add(&self->super._transform.ty, 0xFFFFFFFF) == 1)
  {
    stabilizationDelegate2 = [(PVInstructionGraphSourceTrackNode *)self stabilizationDelegate];
    userContext = [(PVInstructionGraphSourceTrackNode *)self userContext];
    [stabilizationDelegate2 unloadWithUserContext:userContext];
  }
}

- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v11 = v6;
  HGTraceGuard::HGTraceGuard(v192, "kPVInstructionGraphToHeliumGraphLogContext", 1, "[PVInstructionGraphSourceTrackNode hgNodeForTime:...]");
  v14 = atomic_load(HGLogger::_enabled);
  if (v14)
  {
    HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "SourceTrackID: %d dataTrackID: %d depthTrackID: %d metadataTrackID: %d\n", v12, v13, self->_sourceTrackloaded.__a_.__a_value, *&self->_stabilizationDelegateRespondsToDidStabilize, self->_trackID, self->_dataTrackID);
  }

  PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::GetNode(inputs, self, v11);
  PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::GetFrameDataPixelBuffer(inputs, self, &v191);
  if (v191 && (v15 = v191[16]) != 0)
  {
    v16 = *(v15 + 24);
  }

  else
  {
    v16 = 0;
  }

  v17 = CVPixelBufferRetain(v16);
  if (v191)
  {
    (*(*v191 + 24))(v191);
  }

  stabilizationDelegate = [(PVInstructionGraphSourceTrackNode *)self stabilizationDelegate];
  *&t1.a = *&time->var0;
  *&t1.c = time->var3;
  userContext = [(PVInstructionGraphSourceTrackNode *)self userContext];
  v173 = v17;
  v20 = [stabilizationDelegate timedStabilizationConfigForTime:&t1 frameData:v17 userContext:userContext];

  v172 = v20;
  object = [v20 object];
  if ([object isValid])
  {
    PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::GetInputSize(inputs, self, &t1);
    a = t1.a;
    b = t1.b;
    d = t1.d;
    c = t1.c;
    [object cleanAperture];
    v171 = v24;
    v170 = v25;
    rect2 = v26;
    v28 = v27;
    v29 = *MEMORY[0x277CBF348];
    v30 = *(MEMORY[0x277CBF348] + 8);
    [object normalizedCleanAperture];
    v165 = v31;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v198.origin.x = a;
    v198.origin.y = b;
    v198.size.height = d;
    v198.size.width = c;
    v210.origin.x = v171;
    v210.origin.y = v170;
    v210.size.width = rect2;
    v210.size.height = v28;
    v38 = CGRectEqualToRect(v198, v210);
    if (!v38)
    {
      v199.origin.x = v171;
      v199.origin.y = v170;
      v199.size.width = rect2;
      v199.size.height = v28;
      v39 = HGRectMakeWithCGRect(v199);
      v41 = v40;
      v42 = HGObject::operator new(0x1A0uLL);
      HGCrop::HGCrop(v42);
      (*(*v42 + 96))(v42, 0, v39, SHIDWORD(v39), v41, SHIDWORD(v41));
      (*(*v42 + 120))(v42, 0, *v11);
      v43 = *v11;
      if (*v11 != v42)
      {
        if (v43)
        {
          (*(*v43 + 24))(*v11);
        }

        *v11 = v42;
        (*(*v42 + 16))(v42);
        v43 = *v11;
      }

      v44 = *(MEMORY[0x277CBF2C0] + 16);
      *&v190.a = *MEMORY[0x277CBF2C0];
      *&v190.c = v44;
      *&v190.tx = *(MEMORY[0x277CBF2C0] + 32);
      *&t1.a = *&v190.a;
      *&t1.c = v44;
      *&t1.tx = *&v190.tx;
      CGAffineTransformMakeScale(&t2, rect2 / rect2, v28 / v28);
      CGAffineTransformConcat(&v190, &t1, &t2);
      v45 = *MEMORY[0x277CBF348];
      v46 = *(MEMORY[0x277CBF348] + 8);
      t2 = v190;
      CGAffineTransformMakeTranslation(&v193, v45 - v171 * (rect2 / rect2), v46 - v170 * (v28 / v28));
      CGAffineTransformConcat(&t1, &t2, &v193);
      v190 = t1;
      v189 = v43;
      if (v43)
      {
        (*(*v43 + 16))(v43);
      }

      t1 = v190;
      v47 = (*(**context.m_Obj + 64))();
      HGXFormForCGAffineTransform(&v189, &t1, v47, &t2);
      v48 = *v11;
      v49 = t2.a;
      if (*v11 == *&t2.a)
      {
        if (v48)
        {
          (*(**&t2.a + 24))(*&t2.a);
        }
      }

      else
      {
        if (v48)
        {
          (*(*v48 + 24))(v48);
          v49 = t2.a;
        }

        *v11 = v49;
        t2.a = 0.0;
      }

      if (v189)
      {
        (*(*v189 + 24))(v189);
      }

      (*(*v42 + 24))(v42);
    }

    [object homography];
    v50 = v29 - rect2 * 0.5;
    v51 = v30 - v28 * 0.5;
    v154.size.width = rect2;
    v154.size.height = v28;
    v154.origin.x = v50;
    v154.origin.y = v51;
    v209.origin.x = v33;
    v209.origin.y = v35;
    v209.size.width = v165;
    v209.size.height = v37;
    *v52.i64 = pv_convert_homography_coordinates(v196, v209, v154);
    v163 = v53;
    v164 = v52;
    v162 = v54;
    memset(&v190, 0, sizeof(v190));
    v160 = v51;
    v161 = v50;
    CGAffineTransformMakeTranslation(&v190, v50, v51);
    v55 = *v11;
    v188 = v55;
    if (v55)
    {
      (*(*v55 + 16))(v55);
    }

    t1 = v190;
    v56 = (*(**context.m_Obj + 64))();
    HGXFormForCGAffineTransform(&v188, &t1, v56, &t2);
    v57 = *v11;
    v58 = t2.a;
    if (*v11 == *&t2.a)
    {
      if (v57)
      {
        (*(**&t2.a + 24))(*&t2.a);
      }
    }

    else
    {
      if (v57)
      {
        (*(*v57 + 24))(v57);
        v58 = t2.a;
      }

      *v11 = v58;
      t2.a = 0.0;
    }

    if (v188)
    {
      (*(*v188 + 24))(v188);
    }

    v59 = *v11;
    v187 = v59;
    if (v59)
    {
      (*(*v59 + 16))(v59);
    }

    v60 = (*(**context.m_Obj + 64))();
    v197.columns[0] = vtrn1q_s32(0, v164);
    v197.columns[0].i64[0] = v164.i64[0];
    v197.columns[1] = vtrn1q_s32(0, v163);
    v197.columns[1].i64[0] = v163.i64[0];
    v197.columns[3] = vtrn1q_s32(0, v162);
    v197.columns[3].i64[0] = v162.i64[0];
    v197.columns[2] = xmmword_2603429D0;
    v157 = v197.columns[1];
    v158 = v197.columns[0];
    v159 = v197.columns[3];
    HGXFormForSIMDFloat4x4(&v187, v60, &t1, v197);
    v61 = *v11;
    v62 = t1.a;
    if (*v11 == *&t1.a)
    {
      if (v61)
      {
        (*(**&t1.a + 24))(*&t1.a);
      }
    }

    else
    {
      if (v61)
      {
        (*(*v61 + 24))(v61);
        v62 = t1.a;
      }

      *v11 = v62;
      t1.a = 0.0;
    }

    if (v187)
    {
      (*(*v187 + 24))(v187);
    }

    v63 = *v11;
    v186 = v63;
    if (v63)
    {
      (*(*v63 + 16))(v63);
    }

    t2 = v190;
    CGAffineTransformInvert(&t1, &t2);
    v64 = (*(**context.m_Obj + 64))();
    HGXFormForCGAffineTransform(&v186, &t1, v64, &v193);
    v65 = *v11;
    v66 = v193.a;
    if (*v11 == *&v193.a)
    {
      if (v65)
      {
        (*(**&v193.a + 24))(*&v193.a);
      }
    }

    else
    {
      if (v65)
      {
        (*(*v65 + 24))(v65);
        v66 = v193.a;
      }

      *v11 = v66;
      v193.a = 0.0;
    }

    if (v186)
    {
      (*(*v186 + 24))(v186);
    }

    memset(&v185, 0, sizeof(v185));
    CGAffineTransformMakeScale(&t1, rect2 / v165, v28 / v37);
    CGAffineTransformMakeTranslation(&t2, rect2 * 0.5, v28 * 0.5);
    CGAffineTransformConcat(&v185, &t1, &t2);
    [object cropRect];
    t1 = v185;
    v201 = CGRectApplyAffineTransform(v200, &t1);
    x = v201.origin.x;
    y = v201.origin.y;
    width = v201.size.width;
    height = v201.size.height;
    MinX = CGRectGetMinX(v201);
    v202.origin.x = x;
    v202.origin.y = y;
    v202.size.width = width;
    v202.size.height = height;
    MaxX = CGRectGetMaxX(v202);
    v203.origin.x = x;
    v203.origin.y = y;
    v203.size.width = width;
    v203.size.height = height;
    MinY = CGRectGetMinY(v203);
    v204.origin.x = x;
    v204.origin.y = y;
    v204.size.width = width;
    v204.size.height = height;
    v74 = round(MinX);
    v75 = round(MinY);
    v76 = round(MaxX - (x - v74)) - v74;
    v77 = round(CGRectGetMaxY(v204) - (y - v75)) - v75;
    v205.origin.x = 0.0;
    v205.origin.y = 0.0;
    v205.size.width = rect2;
    v205.size.height = v28;
    v211.origin.x = v74;
    v211.origin.y = v75;
    v211.size.width = v76;
    v211.size.height = v77;
    if (CGRectEqualToRect(v205, v211))
    {
      if (v38)
      {
LABEL_102:
        if ([(PVInstructionGraphSourceTrackNode *)self stabilizationDelegateRespondsToDidStabilize])
        {
          stabilizationDelegate2 = [(PVInstructionGraphSourceTrackNode *)self stabilizationDelegate];
          *&t1.a = *&time->var0;
          *&t1.c = time->var3;
          userContext2 = [(PVInstructionGraphSourceTrackNode *)self userContext];
          [stabilizationDelegate2 didStabilize:v20 time:&t1 frameData:v173 inputSize:userContext2 cleanAperture:c centeredCleanAperture:d cleanApertureOriginZero:v171 cropRect:v170 homography:*&v161 homographyMatrix4x4:*&v160 userContext:{*&rect2, *&v28, 0, 0, *&rect2, *&v28, *&v74, *&v75, *&v76, *&v77, v164.i64[0], v164.u32[2], v163.i64[0], v163.u32[2], v162.i64[0], v162.u32[2], *&v158, *&v157, 0, 1065353216, *&v159}];
        }

        goto LABEL_104;
      }
    }

    else
    {
      v206.origin.x = v74;
      v206.origin.y = v75;
      v206.size.width = v76;
      v206.size.height = v77;
      v78 = HGRectMakeWithCGRect(v206);
      v80 = v79;
      v81 = HGObject::operator new(0x1A0uLL);
      HGCrop::HGCrop(v81);
      (*(*v81 + 96))(v81, 0, v78, SHIDWORD(v78), v80, SHIDWORD(v80));
      (*(*v81 + 120))(v81, 0, *v11);
      v82 = *v11;
      if (*v11 != v81)
      {
        if (v82)
        {
          (*(*v82 + 24))(v82);
        }

        *v11 = v81;
        (*(*v81 + 16))(v81);
      }

      (*(*v81 + 24))(v81);
    }

    v207.origin.x = 0.0;
    v207.origin.y = 0.0;
    v207.size.width = rect2;
    v207.size.height = v28;
    v212.origin.x = v74;
    v212.origin.y = v75;
    v212.size.width = v76;
    v212.size.height = v77;
    v208 = CGRectIntersection(v207, v212);
    v166 = v208.origin.x;
    v156 = v208.origin.y;
    v83 = v208.size.width;
    v84 = v208.size.height;
    fillMode = [object fillMode];
    v86 = fillMode;
    if (!fillMode)
    {
      goto LABEL_102;
    }

    v155 = v77;
    if (fillMode > 2)
    {
      v87 = v76;
      v89 = d;
      v88 = c;
      if (fillMode != 3)
      {
        if (fillMode == 13)
        {
          v88 = c;
          v89 = c / (v83 / v84);
        }

        else
        {
          v88 = v83;
          v89 = v84;
          if (fillMode == 14)
          {
            v89 = d;
            v88 = d * (v83 / v84);
          }
        }
      }

LABEL_77:
      v91 = v88 / v83;
      v92 = *(MEMORY[0x277CBF2C0] + 16);
      *&v184.a = *MEMORY[0x277CBF2C0];
      *&v184.c = v92;
      *&v184.tx = *(MEMORY[0x277CBF2C0] + 32);
      *&t1.a = *&v184.a;
      *&t1.c = v92;
      *&t1.tx = *&v184.tx;
      v93 = v89 / v84;
      CGAffineTransformMakeScale(&t2, v91, v93);
      CGAffineTransformConcat(&v184, &t1, &t2);
      if ((v86 - 1) >= 6 && (v86 - 13) >= 2)
      {
        v95 = *MEMORY[0x277CBF348];
        v94 = c - v88;
      }

      else
      {
        v94 = c - v88;
        v95 = (c - v88) * 0.5;
      }

      v96 = *(MEMORY[0x277CBF348] + 8);
      v76 = v87;
      if (v86 <= 0xE && ((1 << v86) & 0x619E) != 0)
      {
        v97 = d - v89;
        v96 = (d - v89) * 0.5;
      }

      else
      {
        v97 = d - v89;
      }

      v77 = v155;
      if (v86 <= 9)
      {
        if (v86 == 6)
        {
          goto LABEL_91;
        }

        if (v86 != 8)
        {
          goto LABEL_92;
        }
      }

      else if (v86 != 10)
      {
        if (v86 == 11)
        {
LABEL_91:
          v96 = v97;
          goto LABEL_92;
        }

        if (v86 == 12)
        {
          v95 = v94;
          goto LABEL_91;
        }

LABEL_92:
        t2 = v184;
        CGAffineTransformMakeTranslation(&v193, v95 - v166 * v91, v96 - v156 * v93);
        CGAffineTransformConcat(&t1, &t2, &v193);
        v184 = t1;
        v98 = *v11;
        v183 = v98;
        if (v98)
        {
          (*(*v98 + 16))(v98);
        }

        t1 = v184;
        v99 = (*(**context.m_Obj + 64))();
        HGXFormForCGAffineTransform(&v183, &t1, v99, &t2);
        v100 = *v11;
        v101 = t2.a;
        if (*v11 == *&t2.a)
        {
          if (v100)
          {
            (*(**&t2.a + 24))(*&t2.a);
          }
        }

        else
        {
          if (v100)
          {
            (*(*v100 + 24))(v100);
            v101 = t2.a;
          }

          *v11 = v101;
          t2.a = 0.0;
        }

        if (v183)
        {
          (*(*v183 + 24))(v183);
        }

        goto LABEL_102;
      }

      v95 = v94;
      goto LABEL_92;
    }

    if (fillMode == 1)
    {
      v87 = v76;
      if (c <= d)
      {
        v90 = d / v84;
        if (v83 * (d / v84) < c)
        {
          v90 = c / v83;
        }
      }

      else
      {
        v90 = c / v83;
        if (v84 * (c / v83) < d)
        {
          v90 = d / v84;
        }
      }
    }

    else
    {
      v87 = v76;
      v88 = v83;
      v89 = v84;
      if (fillMode != 2)
      {
        goto LABEL_77;
      }

      v90 = c / v83;
      if (v84 * (c / v83) > d)
      {
        v90 = d / v84;
      }
    }

    v88 = v83 * v90;
    v89 = v84 * v90;
    goto LABEL_77;
  }

LABEL_104:
  CVPixelBufferRelease(v173);
  if (!self->_depthTrackID)
  {
    objc_msgSend_transform(self);
    t2 = t1;
    v115 = v20;
    goto LABEL_165;
  }

  memset(&v193, 0, sizeof(v193));
  objc_msgSend_transform(self);
  v104 = MEMORY[0x277CBF2C0];
  v105 = *(MEMORY[0x277CBF2C0] + 16);
  *&v190.a = *MEMORY[0x277CBF2C0];
  *&v190.c = v105;
  *&v190.tx = *(MEMORY[0x277CBF2C0] + 32);
  userContext = self->_userContext;
  v106 = self->_clipNaturalSize.width;
  v108 = (*(**context.m_Obj + 40))();
  v110 = v109;
  transformAnimationContentMode = [(PVInstructionGraphSourceNode *)self transformAnimationContentMode];
  v112 = transformAnimationContentMode;
  if (!transformAnimationContentMode || transformAnimationContentMode == 3)
  {
    v113 = v110;
    v114 = v108;
    goto LABEL_129;
  }

  depthTrackID = self->_depthTrackID;
  if (depthTrackID <= 2)
  {
    if (depthTrackID == 1)
    {
      if (v108 <= v110)
      {
        v117 = v110 / v106;
        if (*&userContext * (v110 / v106) < v108)
        {
          v117 = v108 / *&userContext;
        }
      }

      else
      {
        v117 = v108 / *&userContext;
        if (v106 * (v108 / *&userContext) < v110)
        {
          v117 = v110 / v106;
        }
      }
    }

    else
    {
      v114 = *&userContext;
      v113 = v106;
      if (depthTrackID != 2)
      {
        goto LABEL_125;
      }

      v117 = v108 / *&userContext;
      if (v106 * (v108 / *&userContext) > v110)
      {
        v117 = v110 / v106;
      }
    }

    v114 = *&userContext * v117;
    v113 = v106 * v117;
    goto LABEL_125;
  }

  if (depthTrackID == 3)
  {
    v114 = v108;
    goto LABEL_123;
  }

  if (depthTrackID == 13)
  {
    v113 = v108 / (*&userContext / v106);
    v114 = v108;
    goto LABEL_125;
  }

  v114 = *&userContext;
  v113 = v106;
  if (depthTrackID == 14)
  {
    v114 = *&userContext / v106 * v110;
LABEL_123:
    v113 = v110;
  }

LABEL_125:
  transformAnimation = [(PVInstructionGraphSourceNode *)self transformAnimation];
  [transformAnimation aspectRatio];
  v120 = self->_depthTrackID;
  if (v120 <= 3)
  {
    if (v120 == 1)
    {
      if (v114 / v119 <= v113)
      {
        v113 = v114 / v119;
      }

      v114 = v119 * v113;
    }

    else if (v120 == 2)
    {
      if (v114 <= v113)
      {
        v140 = v113;
        if (v113 * v119 < v114)
        {
          v140 = v114 / v119;
        }
      }

      else
      {
        v140 = v114 / v119;
        if (v114 / v119 < v113)
        {
          v140 = v113;
        }
      }

      v114 = v119 * v140;
      v113 = v140;
    }
  }

  else if ((v120 - 4) >= 9)
  {
    if (v120 == 13)
    {
      v113 = v114 / v119;
    }

    else if (v120 == 14)
    {
      v114 = v113 * v119;
    }
  }

  else
  {
    v113 = 1.0;
    v114 = v119;
  }

LABEL_129:
  transformAnimation2 = [(PVInstructionGraphSourceNode *)self transformAnimation];
  rect2a = v110;
  *&v185.a = *&time->var0;
  *&v185.c = time->var3;
  v113 = [PVTransformAnimation getTransformInfoFromAnimation:transformAnimation2 atTime:&v185 renderSize:v112 contentMode:0 invertY:&t1 outInfo:v114, v113];

  v123 = 0.0;
  v124 = 1.0;
  v125 = 1.0;
  v126 = 0uLL;
  v115 = v172;
  if (v113)
  {
    ty = t1.ty;
    v123 = v182;
    v125 = ty;
    v126 = vcvtq_f64_f32(vcvt_f32_f64(*&t1.d));
  }

  v169 = v126;
  v128 = *&userContext * -0.5;
  v129 = v106 * -0.5;
  memset(&v185, 0, sizeof(v185));
  v130 = v128;
  v131 = v129;
  CGAffineTransformMakeTranslation(&v185, v128, v129);
  v184 = v190;
  v180 = v185;
  CGAffineTransformConcat(&v190, &v184, &v180);
  v132 = self->_depthTrackID;
  if (!v132)
  {
    goto LABEL_162;
  }

  v133 = v104[1];
  *&v180.a = *v104;
  *&v180.c = v133;
  *&v180.tx = v104[2];
  CGAffineTransformTranslate(&v184, &v180, v130, v131);
  *&v178.a = *&v184.tx;
  v180 = v184;
  v179 = v193;
  CGAffineTransformConcat(&v184, &v180, &v179);
  v134 = fabs(*&userContext * v184.a + v106 * v184.c);
  v135 = fabs(*&userContext * v184.b + v106 * v184.d);
  if (v132 <= 2)
  {
    if (v132 == 1)
    {
      if (v108 <= rect2a)
      {
        v139 = rect2a / v135;
        if (v134 * (rect2a / v135) < v108)
        {
          v139 = v108 / v134;
        }
      }

      else
      {
        v139 = v108 / v134;
        if (v135 * (v108 / v134) < rect2a)
        {
          v139 = rect2a / v135;
        }
      }

      v136 = v134 * v139;
      goto LABEL_161;
    }

    if (v132 == 2)
    {
      v137 = v135 * (v108 / v134);
      v138 = rect2a / v135;
      if (v137 <= rect2a)
      {
        v138 = v108 / v134;
      }

      v136 = v134 * v138;
      goto LABEL_161;
    }

    goto LABEL_146;
  }

  v136 = v108;
  if (v132 == 3)
  {
LABEL_161:
    v124 = v136 / v134;
    goto LABEL_162;
  }

  if (v132 != 13)
  {
    if (v132 == 14)
    {
      v136 = rect2a * (v134 / v135);
      goto LABEL_161;
    }

LABEL_146:
    v136 = v134;
    goto LABEL_161;
  }

  v124 = v108 / (v134 / v135) / v135;
LABEL_162:
  v180 = v190;
  v179 = v193;
  CGAffineTransformConcat(&v184, &v180, &v179);
  v190 = v184;
  if (v123 != 0.0)
  {
    v180 = v190;
    CGAffineTransformMakeRotation(&v179, ((v123 * 3.1416) / 180.0));
    CGAffineTransformConcat(&v184, &v180, &v179);
    v190 = v184;
  }

  memset(&v184, 0, sizeof(v184));
  CGAffineTransformMakeScale(&v184, v125 * v124, v125 * v124);
  v179 = v190;
  v178 = v184;
  CGAffineTransformConcat(&v180, &v179, &v178);
  v190 = v180;
  v141 = *&userContext * 0.5 + floor(v108 - *&userContext) * 0.5 + v169.f64[0];
  v142 = v106 * 0.5 + floor(rect2a - v106) * 0.5 + v169.f64[1];
  CGAffineTransformMakeTranslation(&v180, v141, v142);
  v185 = v180;
  v179 = v190;
  v178 = v180;
  CGAffineTransformConcat(&v180, &v179, &v178);
  v190 = v180;
  t2 = v180;
LABEL_165:
  v143 = *v11;
  v177 = v143;
  if (v143)
  {
    (*(*v143 + 16))(v143);
  }

  t1 = t2;
  v144 = (*(**context.m_Obj + 64))();
  HGXFormForCGAffineTransform(&v177, &t1, v144, &v193);
  v145 = *v11;
  v146 = v193.a;
  if (*v11 == *&v193.a)
  {
    if (v145)
    {
      (*(**&v193.a + 24))(*&v193.a);
    }
  }

  else
  {
    if (v145)
    {
      (*(*v145 + 24))(v145);
      v146 = v193.a;
    }

    *v11 = v146;
    v193.a = 0.0;
  }

  if (v177)
  {
    (*(*v177 + 24))(v177);
  }

  v147 = *v11;
  v176 = v147;
  if (v147)
  {
    (*(*v147 + 16))(v147);
  }

  (*(**context.m_Obj + 56))(&t1);
  v148 = (*(**context.m_Obj + 64))();
  HGXFormForCGAffineTransform(&v176, &t1, v148, &v193);
  v149 = *v11;
  v150 = v193.a;
  if (*v11 == *&v193.a)
  {
    if (v149)
    {
      (*(**&v193.a + 24))(*&v193.a);
    }
  }

  else
  {
    if (v149)
    {
      (*(*v149 + 24))(v149);
      v150 = v193.a;
    }

    *v11 = v150;
    v193.a = 0.0;
  }

  if (v176)
  {
    (*(*v176 + 24))(v176);
  }

  if (-[PVInstructionGraphNode isDebugDrawingEnabled](self, "isDebugDrawingEnabled") && [object isValid])
  {
    v151 = (*(**context.m_Obj + 40))();
    v152 = HGObject::operator new(0x280uLL);
    HGHWMultiBlend::HGHWMultiBlend(v152);
    (*(*v152 + 96))(v152, 0, 9.0, 0.0, 0.0, 0.0);
    (*(*v152 + 120))(v152, 0, *v11);
    t1.b = 0.0;
    t1.a = 0.0;
    *&t1.c = xmmword_260342700;
    coloredDotHGNode(v151 * 0.5 + -13.0);
  }

  HGTraceGuard::~HGTraceGuard(v192);
  return v153;
}

- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context
{
  v6 = v4;
  effectCopy = effect;
  *v6 = 0;
  *(v6 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v6 + 16) = _Q0;
  p_userContext = &self->_userContext;
  v15 = p_userContext->f64[0];
  v14 = p_userContext->f64[1];
  v23 = effectCopy;
  if (v14 <= p_userContext->f64[0])
  {
    [effectCopy outputSize];
    v17 = v15 / v18;
  }

  else
  {
    [effectCopy outputSize];
    v17 = v14 / v16;
  }

  *(v6 + 16) = vdivq_f64(*p_userContext, vdupq_lane_s64(*&v17, 0));

  result.var3 = v22;
  result.var2 = v21;
  result.var1 = v20;
  result.var0 = v19;
  return result;
}

- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)effect igContext:(id)context
{
  contextCopy = context;
  v7 = (*(**a5.m_Obj + 40))();
  v9 = v8;
  v10 = (*(**a5.m_Obj + 48))();
  [contextCopy outputSize];
  v12 = v11;
  [contextCopy outputSize];
  v13 = v7;
  v14 = v9;
  v15 = v10 * v13;
  v16 = v10 * v14;
  v18 = v12 / v17;
  v19 = (v13 / v14);
  if (vabdd_f64(v18, v19) >= 0.0000001)
  {
    v20 = contextCopy;
    if (v18 > v19)
    {
LABEL_5:
      [v20 outputSize];
      v22 = v16 / v21;
      goto LABEL_7;
    }
  }

  else
  {
    v20 = contextCopy;
    if (v16 > v15)
    {
      goto LABEL_5;
    }
  }

  [v20 outputSize];
  v22 = v15 / v23;
LABEL_7:
  retstr->var0[3][3] = 1.0;
  retstr->var0[2][2] = 1.0;
  retstr->var0[1][1] = 1.0;
  retstr->var0[0][0] = 1.0;
  *&retstr->var0[0][1] = 0u;
  *&retstr->var0[0][3] = 0u;
  *&retstr->var0[1][2] = 0u;
  *&retstr->var0[2][0] = 0u;
  *&retstr->var0[2][3] = 0u;
  *&retstr->var0[3][1] = 0u;
  v24 = v22;
  v25 = PCMatrix44Tmpl<double>::leftScale(retstr, v24, -v24, 1.0);
  v25.f64[0] = v15 * 0.5;
  PCMatrix44Tmpl<double>::leftTranslate(retstr, v25, v16 * 0.5, 0.0);

  return result;
}

- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)label
{
  v8 = *label.m_Obj;
  if (v8)
  {
    (*(*v8 + 16))(v8, a2);
  }

  v7.receiver = self;
  v7.super_class = PVInstructionGraphSourceTrackNode;
  v4 = [(PVInstructionGraphNode *)&v7 dotTreeLabel:&v8];
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v5 = [v4 stringByAppendingFormat:@"\nTrack: %d\nSize: [%.0f x %.0f]", self->_sourceTrackloaded.__a_.__a_value, self->_userContext, *&self->_clipNaturalSize.width];

  return v5;
}

- (id)instructionGraphNodeDescription
{
  v13.receiver = self;
  v13.super_class = PVInstructionGraphSourceTrackNode;
  instructionGraphNodeDescription = [(PVInstructionGraphSourceNode *)&v13 instructionGraphNodeDescription];
  v4 = [instructionGraphNodeDescription mutableCopy];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forKeyedSubscript:@"class"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_sourceTrackloaded.__a_.__a_value];
  [v4 setObject:v7 forKeyedSubscript:@"trackID"];

  v8 = [MEMORY[0x277CCABB0] numberWithInt:*&self->_stabilizationDelegateRespondsToDidStabilize];
  [v4 setObject:v8 forKeyedSubscript:@"dataTrackID"];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_trackID];
  [v4 setObject:v9 forKeyedSubscript:@"depthTrackID"];

  v10 = [MEMORY[0x277CCABB0] numberWithInt:*&self->_stabilizationDelegateRespondsToDidStabilize];
  [v4 setObject:v10 forKeyedSubscript:@"metadataTrackID"];

  v11 = NSStringFromSIMDDouble2(2, *&self->_userContext);
  [v4 setObject:v11 forKeyedSubscript:@"clipNaturalSize"];

  return v4;
}

- (CGRect)cropRect
{
  height = self->_clipNaturalSize.height;
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  result.size.height = width;
  result.size.width = y;
  result.origin.y = x;
  result.origin.x = height;
  return result;
}

- (CGSize)clipNaturalSize
{
  userContext = self->_userContext;
  width = self->_clipNaturalSize.width;
  result.height = width;
  result.width = *&userContext;
  return result;
}

@end