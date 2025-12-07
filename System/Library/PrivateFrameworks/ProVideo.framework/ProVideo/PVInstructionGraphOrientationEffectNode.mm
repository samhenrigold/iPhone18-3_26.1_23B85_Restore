@interface PVInstructionGraphOrientationEffectNode
+ (id)newOrientationEffectNodeWithInputs:(id)inputs inputIDs:(id)ds effect:(id)effect;
- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context;
- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)label;
@end

@implementation PVInstructionGraphOrientationEffectNode

+ (id)newOrientationEffectNodeWithInputs:(id)inputs inputIDs:(id)ds effect:(id)effect
{
  inputsCopy = inputs;
  dsCopy = ds;
  effectCopy = effect;
  v10 = objc_alloc_init(PVInstructionGraphOrientationEffectNode);
  for (i = 0; [inputsCopy count] > i; ++i)
  {
    v12 = [inputsCopy objectAtIndex:i];
    v13 = [dsCopy objectAtIndex:i];
    unsignedLongValue = [v13 unsignedLongValue];

    [(PVInstructionGraphEffectNode *)v10 setInputNode:v12 forInputID:unsignedLongValue];
  }

  [(PVInstructionGraphOrientationEffectNode *)v10 setEffect:effectCopy];

  return v10;
}

- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v10 = v6;
  HGTraceGuard::HGTraceGuard(v105, "kPVInstructionGraphToHeliumGraphLogContext", 1, "[PVInstructionGraphEffectOrientationNode hgNodeForTime:...]");
  v104 = *context.m_Obj;
  if (v104)
  {
    (*(*v104 + 16))(v104);
  }

  [(PVInstructionGraphEffectNode *)self addDotTreeLinks:&v104];
  if (v104)
  {
    (*(*v104 + 24))(v104);
  }

  if (self->_bypassOutOfRangeEffects)
  {
    effect = self->_effect;
    if (effect)
    {
      objc_msgSend_effectRange(effect);
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    *&time.start.value = *&time->var0;
    time.start.epoch = time->var3;
    v15 = CMTimeRangeContainsTime(&range, &time.start) == 0;
  }

  else
  {
    v15 = 0;
  }

  v16 = self->_effect;
  if (!v16 || v15)
  {
    if (v16)
    {
      objc_msgSend_effectRange(v16);
      v23 = *(MEMORY[0x277CC08C8] + 16);
      *&time.start.value = *MEMORY[0x277CC08C8];
      *&time.start.epoch = v23;
      *&time.duration.timescale = *(MEMORY[0x277CC08C8] + 32);
      if (CMTimeRangeEqual(&range, &time))
      {
        v26 = self->_effect;
        debugDisplayName = [(PVEffect *)v26 debugDisplayName];
        NSLog(&cfstr_WarningHgnodef.isa, v26, debugDisplayName);
      }

      v28 = atomic_load(HGLogger::_enabled);
      if (v28)
      {
        HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Current Time is out of Effect Range. Returning HGNode of first input, assuming input0 is set...\n", v24, v25);
      }

      v29 = PVInstructionGraphContext::DotGraph(*context.m_Obj);
      HGDotGraph::filled(v29, self, "#FFA500");
      if (+[PVEnvironment PV_DEBUG_COLOR_OUT_OF_RANGE_EFFECTS])
      {
        v30 = HGObject::operator new(0x1A0uLL);
        HGSolidColor::HGSolidColor(v30);
      }
    }

    else
    {
      v31 = atomic_load(HGLogger::_enabled);
      if (v31)
      {
        HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "effect is Nil. Returning HGNode of first input, assuming input0 is set...\n", v12, v13);
      }

      v32 = PVInstructionGraphContext::DotGraph(*context.m_Obj);
      HGDotGraph::filled(v32, self, "#822222");
    }

    LODWORD(time.start.value) = 0;
    range.start.value = &time;
    v33 = std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&self->super._inputMap, &time, &std::piecewise_construct, &range)[5];
    *&range.start.value = *&time->var0;
    range.start.epoch = time->var3;
    v34 = *context.m_Obj;
    v76 = *context.m_Obj;
    if (*context.m_Obj)
    {
      (*(*v34 + 16))(v34);
    }

    if (v33)
    {
      objc_msgSend_hgNodeForTime_trackInputs_renderer_igContext_(v33);
      v34 = v76;
      if (!v76)
      {
        goto LABEL_100;
      }
    }

    else
    {
      *v10 = 0;
      if (!v34)
      {
        goto LABEL_100;
      }
    }

LABEL_34:
    (*(*v34 + 24))(v34);
    goto LABEL_100;
  }

  v17 = atomic_load(HGLogger::_enabled);
  if (v17)
  {
    debugDisplayName2 = [(PVEffect *)self->_effect debugDisplayName];
    uTF8String = [debugDisplayName2 UTF8String];
    HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Will Build render graph for effect (%s)\n", v20, v21, uTF8String);
  }

  if (HGLogger::getLevel("kPVInstructionGraphToHeliumGraphLogContext", v11) >= 1)
  {
    v22 = self->_effect;
    if (v22)
    {
      objc_msgSend_effectRange(v22);
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    v35 = CMTimeRangeCopyDescription(0, &range);
    v36 = v35;
    v37 = atomic_load(HGLogger::_enabled);
    if (v37)
    {
      uTF8String2 = [v35 UTF8String];
      HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Effect Time Range: %s\n", v39, v40, uTF8String2);
    }

    CFRelease(v36);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LODWORD(time.start.value) = 0;
    range.start.value = &time;
    v49 = std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&self->super._inputMap, &time, &std::piecewise_construct, &range)[5];
    *&range.start.value = *&time->var0;
    range.start.epoch = time->var3;
    v103 = *context.m_Obj;
    v34 = v103;
    if (v103)
    {
      (*(*v103 + 16))(v103);
    }

    if (v49)
    {
      objc_msgSend_hgNodeForTime_trackInputs_renderer_igContext_(v49);
      v34 = v103;
      if (!v103)
      {
        goto LABEL_100;
      }
    }

    else
    {
      *v10 = 0;
      if (!v34)
      {
        goto LABEL_100;
      }
    }

    goto LABEL_34;
  }

  v102 = *context.m_Obj;
  if (v102)
  {
    (*(*v102 + 16))(v102);
  }

  [(PVInstructionGraphNode *)self loadIGNode:&v102];
  if (v102)
  {
    (*(*v102 + 24))(v102);
  }

  v41 = self->_effect;
  *&range.start.value = *&time->var0;
  range.start.epoch = time->var3;
  v75 = v41;
  v42 = [(PVEffect *)v41 inputsForTime:&range];
  firstObject = [v42 firstObject];
  intValue = [firstObject intValue];

  v101 = intValue;
  range.start.value = &v101;
  v47 = std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&self->super._inputMap, &v101, &std::piecewise_construct, &range)[5];
  v48 = atomic_load(HGLogger::_enabled);
  if (v48)
  {
    HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Getting HGNode for effect inputID: %d\n", v45, v46, v101);
  }

  v98 = *&time->var0;
  var3 = time->var3;
  v97 = *context.m_Obj;
  if (v97)
  {
    (*(*v97 + 16))(v97);
  }

  if (v47)
  {
    objc_msgSend_hgNodeForTime_trackInputs_renderer_igContext_(v47);
  }

  else
  {
    v100 = 0;
  }

  if (v97)
  {
    (*(*v97 + 24))(v97);
  }

  if (![(PVEffect *)self->_effect supportsExtendedRangeInputs]&& +[PVEnvironment PV_CLAMP_XR_INPUTS_TO_FILTERS])
  {
    PVInstructionGraphContext::WorkingColorSpace(*context.m_Obj);
    v74 = v73 = v10;
    v50 = +[PVColorSpace extendedSRGBColorSpace];
    if ([v74 isEqual:v50])
    {

      goto LABEL_65;
    }

    v53 = PVInstructionGraphContext::WorkingColorSpace(*context.m_Obj);
    v54 = +[PVColorSpace extendedLinearSRGBColorSpace];
    v55 = [v53 isEqual:v54];

    v10 = v73;
    if (v55)
    {
LABEL_65:
      v56 = atomic_load(HGLogger::_enabled);
      if (v56)
      {
        HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Clamping input (%d). XR working space and effect doesn't support it.\n", v51, v52, v101);
      }

      v57 = HGObject::operator new(0x1C0uLL);
      HGColorClamp::HGColorClamp(v57);
    }
  }

  range.start.value = &range.start.timescale;
  *&range.start.timescale = 0;
  *&range.duration.timescale = 0;
  range.duration.epoch = 0;
  range.start.epoch = 0;
  range.duration.value = &range.duration.timescale;
  v91 = v92;
  v92[0] = 0;
  v93[0] = 0;
  v93[1] = 0;
  v92[1] = 0;
  v92[2] = v93;
  v94 = v95;
  v95[0] = 0;
  v96[0] = 0;
  v96[1] = 0;
  v95[1] = 0;
  v95[2] = v96;
  v58 = v101;
  v89 = v100;
  if (v100)
  {
    (*(*v100 + 16))(v100);
  }

  PVInputHGNodeMap<unsigned int>::SetNode(&range, v58, &v89);
  if (v89)
  {
    (*(*v89 + 24))(v89);
  }

  v59 = *context.m_Obj;
  v86 = v59;
  if (v59)
  {
    (*(*v59 + 16))(v59);
  }

  if (v47)
  {
    objc_msgSend_inputSizeForPVEffect_igContext_(v47);
  }

  else
  {
    v87 = 0u;
    v88 = 0u;
  }

  if (v86)
  {
    (*(*v86 + 24))(v86);
  }

  LODWORD(v77) = v101;
  time.start.value = &v77;
  v60 = std::__tree<std::__value_type<unsigned int,PCRect<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCRect<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCRect<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&range.duration, &v77, &std::piecewise_construct, &time);
  v61 = v88;
  *(v60 + 5) = v87;
  *(v60 + 7) = v61;
  v62 = *context.m_Obj;
  v79 = v62;
  if (v62)
  {
    (*(*v62 + 16))(v62);
  }

  if (v47)
  {
    objc_msgSend_pixelTransformForPVEffect_igContext_(v47);
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v81 = 0u;
    memset(&time, 0, sizeof(time));
  }

  if (v79)
  {
    (*(*v79 + 24))(v79);
  }

  PVInputHGNodeMap<unsigned int>::SetPixelTransform(&range, v101, &time.start.value);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v63 = v47;
    isPortrait = [v63 isPortrait];
    v106 = v101;
    *&v77 = &v106;
    *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v94, &v106, &std::piecewise_construct, &v77) + 8) = isPortrait ^ 1;
  }

  v65 = atomic_load(HGLogger::_enabled);
  if (v65)
  {
    debugDisplayName3 = [(PVEffect *)self->_effect debugDisplayName];
    uTF8String3 = [debugDisplayName3 UTF8String];
    HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Building Graph for PVEffect (%s).\n", v68, v69, uTF8String3);
  }

  v70 = self->_effect;
  v77 = *&time->var0;
  v78 = time->var3;
  v71 = *context.m_Obj;
  if (v71)
  {
    (*(*v71 + 16))(v71);
  }

  if (v70)
  {
    objc_msgSend_hgNodeForTime_inputs_renderer_igContext_(v70);
    if (!v71)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

  *v10 = 0;
  if (v71)
  {
LABEL_96:
    (*(*v71 + 24))(v71);
  }

LABEL_97:
  [(PVInstructionGraphEffectNode *)self unloadIGNode];
  PVInputHGNodeMap<unsigned int>::~PVInputHGNodeMap(&range);
  if (v100)
  {
    (*(*v100 + 24))(v100);
  }

LABEL_100:
  HGTraceGuard::~HGTraceGuard(v105);
  return v72;
}

- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context
{
  v6 = v4;
  effectCopy = effect;
  *v6 = 0;
  *(v6 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v6 + 16) = _Q0;
  v12 = (*(**context.m_Obj + 40))();
  v14 = v13;
  v15 = (*(**context.m_Obj + 48))();
  *(v6 + 16) = v12 / v15;
  *(v6 + 24) = v14 / v15;

  result.var3 = v19;
  result.var2 = v18;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)label
{
  if (self->_effect && (v5 = PVInstructionGraphContext::DotGraph(*label.m_Obj), HGDotGraph::on(v5)))
  {
    v6 = PVInstructionGraphContext::DotTreeLogLevel(*label.m_Obj);
    displayName = [(PVEffect *)self->_effect displayName];
    v8 = [@"InstructionGraphOrientationEffectNode" stringByAppendingFormat:@" [%@]", displayName];

    if (v6 >= 2)
    {
      effectType = [(PVEffect *)self->_effect effectType];
      effectID = [(PVEffect *)self->_effect effectID];
      v11 = [PVEffect categoryForEffectID:effectID];
      v12 = [v8 stringByAppendingFormat:@" {%@, %@}", effectType, v11];

      v8 = v12;
    }

    effect = self->_effect;
    if (effect)
    {
      objc_msgSend_effectRange(effect);
      v14 = *&v23[0];
      v15 = DWORD2(v23[0]);
    }

    else
    {
      v15 = 0;
      v14 = 0;
      memset(v23, 0, sizeof(v23));
    }

    *&time.start.flags = *(v23 + 12);
    HIDWORD(time.start.epoch) = DWORD1(v23[1]);
    time.start.value = v14;
    time.start.timescale = v15;
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%lld/%d = %.3f}", v14, v15, CMTimeGetSeconds(&time.start)];
    v18 = self->_effect;
    if (v18)
    {
      objc_msgSend_effectRange(v18);
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    CMTimeRangeGetEnd(&v22, &time);
    time.start = v22;
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%lld/%d = %.3f}", v22.value, v22.timescale, CMTimeGetSeconds(&time.start)];
    v16 = [v8 stringByAppendingFormat:@"\nRange: Start (%@) End (%@)", v17, v19];
  }

  else
  {
    v16 = @"InstructionGraphOrientationEffectNode";
  }

  return v16;
}

@end