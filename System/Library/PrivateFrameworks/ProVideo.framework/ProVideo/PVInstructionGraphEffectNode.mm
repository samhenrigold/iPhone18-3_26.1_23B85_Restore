@interface PVInstructionGraphEffectNode
+ (id)newEffectNodeToAddTitle:(id)title effect:(id)effect;
+ (id)newEffectNodeToFilterInput:(id)input effect:(id)effect;
+ (id)newEffectNodeToOverlayInputs:(id)inputs inputIDs:(id)ds effect:(id)effect;
+ (id)newEffectNodeToTransitionFrom:(id)from to:(id)to effect:(id)effect;
- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)effect igContext:(id)context;
- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context;
- (PVIGHGNodeCacheKey)contextHGNodeCacheKeyAtTime:(SEL)time;
- (PVInstructionGraphEffectNode)init;
- (id).cxx_construct;
- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)label;
- (id)getAllSourceNodes;
- (id)instructionGraphNodeDescription;
- (id)requiredSourceSampleDataTrackIDs;
- (id)requiredSourceTrackIDs;
- (void)addDotTreeLinks:(HGRef<PVInstructionGraphContext>)links;
- (void)buildEffectInputMap:(void *)map forTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node returnLoadedEffects:(id)effects;
- (void)setInputNode:(id)node forInputID:(unsigned int)d;
- (void)unloadIGNode;
@end

@implementation PVInstructionGraphEffectNode

+ (id)newEffectNodeToFilterInput:(id)input effect:(id)effect
{
  inputCopy = input;
  effectCopy = effect;
  v7 = objc_alloc_init(PVInstructionGraphEffectNode);
  [(PVInstructionGraphEffectNode *)v7 setInputNode:inputCopy forInputID:0];
  [(PVInstructionGraphEffectNode *)v7 setEffect:effectCopy];

  return v7;
}

+ (id)newEffectNodeToTransitionFrom:(id)from to:(id)to effect:(id)effect
{
  fromCopy = from;
  toCopy = to;
  effectCopy = effect;
  v10 = objc_alloc_init(PVInstructionGraphEffectNode);
  [(PVInstructionGraphEffectNode *)v10 setInputNode:fromCopy forInputID:0];
  [(PVInstructionGraphEffectNode *)v10 setInputNode:toCopy forInputID:1];
  [(PVInstructionGraphEffectNode *)v10 setEffect:effectCopy];

  return v10;
}

+ (id)newEffectNodeToOverlayInputs:(id)inputs inputIDs:(id)ds effect:(id)effect
{
  inputsCopy = inputs;
  dsCopy = ds;
  effectCopy = effect;
  v10 = objc_alloc_init(PVInstructionGraphEffectNode);
  for (i = 0; [inputsCopy count] > i; ++i)
  {
    v12 = [inputsCopy objectAtIndex:i];
    v13 = [dsCopy objectAtIndex:i];
    unsignedLongValue = [v13 unsignedLongValue];

    [(PVInstructionGraphEffectNode *)v10 setInputNode:v12 forInputID:unsignedLongValue];
  }

  [(PVInstructionGraphEffectNode *)v10 setEffect:effectCopy];

  return v10;
}

+ (id)newEffectNodeToAddTitle:(id)title effect:(id)effect
{
  titleCopy = title;
  effectCopy = effect;
  v7 = objc_alloc_init(PVInstructionGraphEffectNode);
  [(PVInstructionGraphEffectNode *)v7 setInputNode:titleCopy forInputID:0];
  [(PVInstructionGraphEffectNode *)v7 setEffect:effectCopy];

  return v7;
}

- (PVInstructionGraphEffectNode)init
{
  v3.receiver = self;
  v3.super_class = PVInstructionGraphEffectNode;
  result = [(PVInstructionGraphNode *)&v3 init];
  if (result)
  {
    result->_bypassOutOfRangeEffects = 0;
    result->_applyRenderTransformAfterEffect = 0;
  }

  return result;
}

- (void)setInputNode:(id)node forInputID:(unsigned int)d
{
  nodeCopy = node;
  dCopy = d;
  if (nodeCopy)
  {
    v10 = &dCopy;
    v8 = std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&self->_inputMap, &dCopy, &std::piecewise_construct, &v10);
    objc_storeStrong(v8 + 5, node);
  }

  else
  {
    std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__erase_unique<unsigned int>(&self->_inputMap, &dCopy);
  }
}

- (id)requiredSourceTrackIDs
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  p_end_node = &self->_inputMap.__tree_.__end_node_;
  begin_node = self->_inputMap.__tree_.__begin_node_;
  if (begin_node != &self->_inputMap.__tree_.__end_node_)
  {
    do
    {
      v6 = begin_node[5].__left_;
      requiredSourceTrackIDs = [v6 requiredSourceTrackIDs];
      allObjects = [requiredSourceTrackIDs allObjects];
      [v3 addObjectsFromArray:allObjects];

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v10 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v10 = begin_node[2].__left_;
          v11 = v10->__left_ == begin_node;
          begin_node = v10;
        }

        while (!v11);
      }

      begin_node = v10;
    }

    while (v10 != p_end_node);
  }

  return v3;
}

- (id)requiredSourceSampleDataTrackIDs
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  p_end_node = &self->_inputMap.__tree_.__end_node_;
  begin_node = self->_inputMap.__tree_.__begin_node_;
  if (begin_node != &self->_inputMap.__tree_.__end_node_)
  {
    do
    {
      v6 = begin_node[5].__left_;
      requiredSourceSampleDataTrackIDs = [v6 requiredSourceSampleDataTrackIDs];
      allObjects = [requiredSourceSampleDataTrackIDs allObjects];
      [v3 addObjectsFromArray:allObjects];

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v10 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v10 = begin_node[2].__left_;
          v11 = v10->__left_ == begin_node;
          begin_node = v10;
        }

        while (!v11);
      }

      begin_node = v10;
    }

    while (v10 != p_end_node);
  }

  return v3;
}

- (id)getAllSourceNodes
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  p_end_node = &self->_inputMap.__tree_.__end_node_;
  begin_node = self->_inputMap.__tree_.__begin_node_;
  if (begin_node != &self->_inputMap.__tree_.__end_node_)
  {
    do
    {
      v6 = begin_node[5].__left_;
      getAllSourceNodes = [v6 getAllSourceNodes];
      allObjects = [getAllSourceNodes allObjects];
      [v3 addObjectsFromArray:allObjects];

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v10 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v10 = begin_node[2].__left_;
          v11 = v10->__left_ == begin_node;
          begin_node = v10;
        }

        while (!v11);
      }

      begin_node = v10;
    }

    while (v10 != p_end_node);
  }

  return v3;
}

- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node returnLoadedEffects:(id)effects
{
  effectsCopy = effects;
  effect = self->_effect;
  if (effect)
  {
    [(PVEffect *)effect loadEffect];
    if (effectsCopy)
    {
      [effectsCopy addObject:self->_effect];
    }
  }

  p_end_node = &self->_inputMap.__tree_.__end_node_;
  begin_node = self->_inputMap.__tree_.__begin_node_;
  if (begin_node != &self->_inputMap.__tree_.__end_node_)
  {
    do
    {
      v10 = begin_node[5].__left_;
      v11 = *node.m_Obj;
      v15 = v11;
      if (v11)
      {
        (*(*v11 + 16))(v11);
      }

      [v10 loadIGNode:&v15 returnLoadedEffects:effectsCopy];
      if (v15)
      {
        (*(*v15 + 24))(v15);
      }

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v13 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v13 = begin_node[2].__left_;
          v14 = v13->__left_ == begin_node;
          begin_node = v13;
        }

        while (!v14);
      }

      begin_node = v13;
    }

    while (v13 != p_end_node);
  }
}

- (void)unloadIGNode
{
  effect = self->_effect;
  if (effect)
  {
    [(PVEffect *)effect releaseEffect];
  }

  p_end_node = &self->_inputMap.__tree_.__end_node_;
  begin_node = self->_inputMap.__tree_.__begin_node_;
  if (begin_node != &self->_inputMap.__tree_.__end_node_)
  {
    do
    {
      v6 = begin_node[5].__left_;
      [v6 unloadIGNode];

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v8 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v8 = begin_node[2].__left_;
          v9 = v8->__left_ == begin_node;
          begin_node = v8;
        }

        while (!v9);
      }

      begin_node = v8;
    }

    while (v8 != p_end_node);
  }
}

- (void)buildEffectInputMap:(void *)map forTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  begin_node = self->_inputMap.__tree_.__begin_node_;
  p_end_node = &self->_inputMap.__tree_.__end_node_;
  if (begin_node != &self->_inputMap.__tree_.__end_node_)
  {
    selfCopy3 = self;
    do
    {
      left_low = LODWORD(begin_node[4].__left_);
      v13 = begin_node[5].__left_;
      v14 = atomic_load(HGLogger::_enabled);
      if (v14)
      {
        HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Getting HGNode for effect inputID: %d\n", v11, v12, left_low);
      }

      v44 = *&time->var0;
      var3 = time->var3;
      v43 = *context.m_Obj;
      if (v43)
      {
        (*(*v43 + 16))(v43);
      }

      if (v13)
      {
        objc_msgSend_hgNodeForTime_trackInputs_renderer_igContext_(v13);
      }

      else
      {
        v46 = 0;
      }

      if (v43)
      {
        (*(*v43 + 24))(v43);
      }

      if (![(PVEffect *)selfCopy3->_effect supportsExtendedRangeInputs]&& +[PVEnvironment PV_CLAMP_XR_INPUTS_TO_FILTERS])
      {
        v15 = PVInstructionGraphContext::WorkingColorSpace(*context.m_Obj);
        v16 = +[PVColorSpace extendedSRGBColorSpace];
        if ([v15 isEqual:v16])
        {

LABEL_17:
          v23 = atomic_load(HGLogger::_enabled);
          if (v23)
          {
            HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Clamping input (%d). XR working space and effect doesn't support it.\n", v17, v18, left_low);
          }

          v24 = HGObject::operator new(0x1C0uLL);
          HGColorClamp::HGColorClamp(v24);
        }

        v19 = PVInstructionGraphContext::WorkingColorSpace(*context.m_Obj);
        m_Obj = context.m_Obj;
        v21 = +[PVColorSpace extendedLinearSRGBColorSpace];
        v22 = [v19 isEqual:v21];

        context.m_Obj = m_Obj;
        selfCopy3 = self;
        if (v22)
        {
          goto LABEL_17;
        }
      }

      v42 = v46;
      if (v46)
      {
        (*(*v46 + 16))(v46);
      }

      PVInputHGNodeMap<unsigned int>::SetNode(map, left_low, &v42);
      if (v42)
      {
        (*(*v42 + 24))(v42);
      }

      v39 = *context.m_Obj;
      if (v39)
      {
        (*(*v39 + 16))(v39);
      }

      if (v13)
      {
        objc_msgSend_inputSizeForPVEffect_igContext_(v13);
      }

      else
      {
        v40 = 0u;
        v41 = 0u;
      }

      if (v39)
      {
        (*(*v39 + 24))(v39);
      }

      LODWORD(v48[0]) = left_low;
      *&v38[0] = v48;
      v25 = std::__tree<std::__value_type<unsigned int,PCRect<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCRect<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCRect<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(map + 24, v48, &std::piecewise_construct, v38);
      v26 = v41;
      *(v25 + 5) = v40;
      *(v25 + 7) = v26;
      v37 = *context.m_Obj;
      if (*context.m_Obj)
      {
        (*(**context.m_Obj + 16))(*context.m_Obj);
      }

      if (v13)
      {
        objc_msgSend_pixelTransformForPVEffect_igContext_(v13);
      }

      else
      {
        memset(v38, 0, sizeof(v38));
      }

      if (v37)
      {
        (*(*v37 + 24))(v37);
      }

      PVInputHGNodeMap<unsigned int>::SetPixelTransform(map, left_low, v38);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v13;
        isPortrait = [v27 isPortrait];
        v47 = left_low;
        v48[0] = &v47;
        *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(map + 96, &v47, &std::piecewise_construct, v48) + 8) = isPortrait ^ 1;
        timedMetadataGroup = [v27 timedMetadataGroup];
        PVInputHGNodeMap<unsigned int>::SetTimedMetadata(map, left_low, timedMetadataGroup);

        selfCopy3 = self;
      }

      if (v46)
      {
        (*(*v46 + 24))(v46);
      }

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v31 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v31 = begin_node[2].__left_;
          v32 = v31->__left_ == begin_node;
          begin_node = v31;
        }

        while (!v32);
      }

      begin_node = v31;
    }

    while (v31 != p_end_node);
  }
}

- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v10 = v6;
  HGTraceGuard::HGTraceGuard(v83, "kPVInstructionGraphToHeliumGraphLogContext", 1, "[PVInstructionGraphEffectNode hgNodeForTime:...]");
  v82 = *context.m_Obj;
  if (v82)
  {
    (*(*v82 + 16))(v82);
  }

  [(PVInstructionGraphEffectNode *)self addDotTreeLinks:&v82];
  if (v82)
  {
    (*(*v82 + 24))(v82);
  }

  if ([(PVEffect *)self->_effect isHidden]&& ![(PVEffect *)self->_effect hasTimedPropertiesDelegates])
  {
    v16 = atomic_load(HGLogger::_enabled);
    if (v16)
    {
      HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "effect is hidden. Returning HGNode of first input, or new HGNode if no inputs...\n", v12, v13);
    }

    v17 = PVInstructionGraphContext::DotGraph(*context.m_Obj);
    HGDotGraph::filled(v17, self, "#e8eba0");
    range.start.value = &range;
    *&range.start.timescale = &range;
    range.start.epoch = 0;
    p_inputMap = &self->_inputMap;
    if (p_inputMap->__tree_.__begin_node_ != &p_inputMap->__tree_.__end_node_)
    {
      v19 = *(p_inputMap->__tree_.__begin_node_ + 5);
      operator new();
    }

    v20 = HGObject::operator new(0x1A0uLL);
    HGNode::HGNode(v20);
    *v10 = v20;
    std::__list_imp<unsigned int>::clear(&range);
  }

  else
  {
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

    v21 = self->_effect;
    if (!v21 || v15)
    {
      if (v21)
      {
        objc_msgSend_effectRange(v21);
        v28 = *(MEMORY[0x277CC08C8] + 16);
        *&time.start.value = *MEMORY[0x277CC08C8];
        *&time.start.epoch = v28;
        *&time.duration.timescale = *(MEMORY[0x277CC08C8] + 32);
        if (CMTimeRangeEqual(&range, &time))
        {
          v31 = self->_effect;
          debugDisplayName = [(PVEffect *)v31 debugDisplayName];
          NSLog(&cfstr_WarningHgnodef.isa, v31, debugDisplayName);
        }

        v33 = atomic_load(HGLogger::_enabled);
        if (v33)
        {
          HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Current Time is out of Effect Range. Returning HGNode of first input, assuming input0 is set...\n", v29, v30);
        }

        v34 = PVInstructionGraphContext::DotGraph(*context.m_Obj);
        HGDotGraph::filled(v34, self, "#FFA500");
        if (+[PVEnvironment PV_DEBUG_COLOR_OUT_OF_RANGE_EFFECTS])
        {
          v35 = HGObject::operator new(0x1A0uLL);
          HGSolidColor::HGSolidColor(v35);
        }
      }

      else
      {
        v36 = atomic_load(HGLogger::_enabled);
        if (v36)
        {
          HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "effect is Nil. Returning HGNode of first input, assuming input0 is set...\n", v12, v13);
        }

        v37 = PVInstructionGraphContext::DotGraph(*context.m_Obj);
        HGDotGraph::filled(v37, self, "#822222");
      }

      LODWORD(time.start.value) = 0;
      range.start.value = &time;
      v38 = std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&self->_inputMap, &time, &std::piecewise_construct, &range)[5];
      *&range.start.value = *&time->var0;
      range.start.epoch = time->var3;
      v39 = *context.m_Obj;
      if (v39)
      {
        (*(*v39 + 16))(v39);
      }

      if (v38)
      {
        objc_msgSend_hgNodeForTime_trackInputs_renderer_igContext_(v38);
        if (!v39)
        {
          goto LABEL_86;
        }
      }

      else
      {
        *v10 = 0;
        if (!v39)
        {
          goto LABEL_86;
        }
      }

      (*(*v39 + 24))(v39);
      goto LABEL_86;
    }

    v22 = atomic_load(HGLogger::_enabled);
    if (v22)
    {
      debugDisplayName2 = [(PVEffect *)self->_effect debugDisplayName];
      uTF8String = [debugDisplayName2 UTF8String];
      HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Will Build render graph for effect (%s)\n", v25, v26, uTF8String);
    }

    if (HGLogger::getLevel("kPVInstructionGraphToHeliumGraphLogContext", v11) >= 1)
    {
      v27 = self->_effect;
      if (v27)
      {
        objc_msgSend_effectRange(v27);
      }

      else
      {
        memset(&range, 0, sizeof(range));
      }

      v40 = CMTimeRangeCopyDescription(0, &range);
      v41 = v40;
      v42 = atomic_load(HGLogger::_enabled);
      if (v42)
      {
        uTF8String2 = [v40 UTF8String];
        HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Effect Time Range: %s\n", v44, v45, uTF8String2);
      }

      CFRelease(v41);
    }

    v46 = *context.m_Obj;
    if (*context.m_Obj)
    {
      (*(*v46 + 16))(*context.m_Obj);
    }

    applyRenderTransformAfterEffect = self->_applyRenderTransformAfterEffect;
    if (applyRenderTransformAfterEffect)
    {
      v65 = v10;
      v48 = PVRenderJob::GetDelegate(*context.m_Obj);
      v49 = (*(**context.m_Obj + 40))();
      v51 = v50;
      v52 = (*(**context.m_Obj + 64))();
      (*(**context.m_Obj + 72))(&time);
      v53 = HGObject::operator new(0xA8uLL);
      *&range.start.value = *&time.start.value;
      range.start.epoch = time.start.epoch;
      v85.width = v49;
      v85.height = v51;
      PVRendererInstructionGraphContext::PVRendererInstructionGraphContext(v53, v48, v85, v52, &range.start);
      if (v46 == v53)
      {
        if (v46)
        {
          (*(*v53 + 24))(v53);
        }
      }

      else
      {
        if (v46)
        {
          (*(*v46 + 24))(v46);
        }

        v46 = v53;
      }

      v10 = v65;
    }

    v81 = v46;
    if (v46)
    {
      (*(*v46 + 16))(v46);
    }

    [(PVInstructionGraphNode *)self loadIGNode:&v81];
    if (v81)
    {
      (*(*v81 + 24))(v81);
    }

    range.start.value = &range.start.timescale;
    *&range.start.timescale = 0;
    *&range.duration.timescale = 0;
    range.duration.epoch = 0;
    range.start.epoch = 0;
    range.duration.value = &range.duration.timescale;
    v76 = v77;
    v77[0] = 0;
    v78[0] = 0;
    v78[1] = 0;
    v77[1] = 0;
    v77[2] = v78;
    v78[2] = v79;
    v79[0] = 0;
    v80[0] = 0;
    v80[1] = 0;
    v79[1] = 0;
    v79[2] = v80;
    *&time.start.value = *&time->var0;
    time.start.epoch = time->var3;
    v74 = v46;
    if (v46)
    {
      (*(*v46 + 16))(v46);
    }

    [(PVInstructionGraphEffectNode *)self buildEffectInputMap:&range forTime:&time trackInputs:inputs renderer:renderer igContext:&v74];
    if (v74)
    {
      (*(*v74 + 24))(v74);
    }

    v54 = atomic_load(HGLogger::_enabled);
    if (v54)
    {
      debugDisplayName3 = [(PVEffect *)self->_effect debugDisplayName];
      uTF8String3 = [debugDisplayName3 UTF8String];
      HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Building Graph for PVEffect (%s).\n", v57, v58, uTF8String3);
    }

    v59 = self->_effect;
    v72 = *&time->var0;
    var3 = time->var3;
    v71 = v46;
    if (v46)
    {
      (*(*v46 + 16))(v46);
    }

    if (v59)
    {
      objc_msgSend_hgNodeForTime_inputs_renderer_igContext_(v59);
    }

    else
    {
      *v10 = 0;
    }

    if (v71)
    {
      (*(*v71 + 24))(v71);
    }

    if (applyRenderTransformAfterEffect)
    {
      v60 = *v10;
      v69 = v60;
      if (v60)
      {
        (*(*v60 + 16))(v60);
      }

      (*(**context.m_Obj + 56))(&time);
      v61 = (*(**context.m_Obj + 64))();
      HGXFormForCGAffineTransform(&v69, &time, v61, &v70);
      v62 = *v10;
      v63 = v70;
      if (*v10 == v70)
      {
        if (v62)
        {
          (*(*v70 + 24))(v70);
        }
      }

      else
      {
        if (v62)
        {
          (*(*v62 + 24))(v62);
          v63 = v70;
        }

        *v10 = v63;
        v70 = 0;
      }

      if (v69)
      {
        (*(*v69 + 24))(v69);
      }
    }

    [(PVInstructionGraphEffectNode *)self unloadIGNode];
    PVInputHGNodeMap<unsigned int>::~PVInputHGNodeMap(&range);
    if (v46)
    {
      (*(*v46 + 24))(v46);
    }
  }

LABEL_86:
  HGTraceGuard::~HGTraceGuard(v83);
  return v64;
}

- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context
{
  v7 = v4;
  effectCopy = effect;
  *v7 = 0;
  *(v7 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v7 + 16) = _Q0;
  p_inputMap = &self->_inputMap;
  if (self->_inputMap.__tree_.__size_ == 1)
  {
    v28 = *(p_inputMap->__tree_.__begin_node_ + 8);
    *&v26 = &v28;
    v15 = std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(p_inputMap, &v28, &std::piecewise_construct, &v26)[5];
    v16 = *context.m_Obj;
    if (v16)
    {
      (*(*v16 + 16))(v16);
    }

    if (v15)
    {
      objc_msgSend_inputSizeForPVEffect_igContext_(v15);
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    v21 = v27;
    *v7 = v26;
    *(v7 + 16) = v21;
    if (v16)
    {
      (*(*v16 + 24))(v16);
    }
  }

  else
  {
    v17 = (*(**context.m_Obj + 40))();
    v19 = v18;
    v20 = (*(**context.m_Obj + 48))();
    *(v7 + 16) = v17 / v20;
    *(v7 + 24) = v19 / v20;
  }

  result.var3 = v25;
  result.var2 = v24;
  result.var1 = v23;
  result.var0 = v22;
  return result;
}

- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)effect igContext:(id)context
{
  contextCopy = context;
  v7 = (*(**a5.m_Obj + 40))();
  v9 = v8;
  v10 = (*(**a5.m_Obj + 48))();
  [contextCopy outputSize];
  v11 = v9;
  v12 = (v10 * v11);
  v13 = v7;
  *&v7 = v10 * v13;
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
  *&v14 = v12 / v14;
  v15 = PCMatrix44Tmpl<double>::leftScale(retstr, *&v14, -*&v14, 1.0);
  v15.f64[0] = *&v7 * 0.5;
  PCMatrix44Tmpl<double>::leftTranslate(retstr, v15, v12 * 0.5, 0.0);

  return result;
}

- (PVIGHGNodeCacheKey)contextHGNodeCacheKeyAtTime:(SEL)time
{
  v6 = *a4;
  v5.receiver = self;
  v5.super_class = PVInstructionGraphEffectNode;
  return [(PVIGHGNodeCacheKey *)&v5 contextHGNodeCacheKeyAtTime:&v6];
}

- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)label
{
  v26 = *label.m_Obj;
  if (v26)
  {
    (*(*v26 + 16))(v26, a2);
  }

  v25.receiver = self;
  v25.super_class = PVInstructionGraphEffectNode;
  v5 = [(PVInstructionGraphNode *)&v25 dotTreeLabel:&v26];
  if (v26)
  {
    (*(*v26 + 24))(v26);
  }

  if (self->_effect)
  {
    v6 = PVInstructionGraphContext::DotGraph(*label.m_Obj);
    if (HGDotGraph::on(v6))
    {
      v7 = PVInstructionGraphContext::DotTreeLogLevel(*label.m_Obj);
      displayName = [(PVEffect *)self->_effect displayName];
      v9 = [v5 stringByAppendingFormat:@" [%@]", displayName];

      if (v7 < 2)
      {
        v13 = v9;
      }

      else
      {
        effectType = [(PVEffect *)self->_effect effectType];
        effectID = [(PVEffect *)self->_effect effectID];
        v12 = [PVEffect categoryForEffectID:effectID];
        v13 = [v9 stringByAppendingFormat:@" {%@, %@}", effectType, v12];
      }

      effect = self->_effect;
      if (effect)
      {
        objc_msgSend_effectRange(effect);
        receiver = v24[0].receiver;
        super_class_low = LODWORD(v24[0].super_class);
      }

      else
      {
        super_class_low = 0;
        receiver = 0;
        memset(v24, 0, sizeof(v24));
      }

      *&time.start.flags = *(&v24[0].super_class + 4);
      HIDWORD(time.start.epoch) = HIDWORD(v24[1].receiver);
      time.start.value = receiver;
      time.start.timescale = super_class_low;
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%lld/%d = %.3f}", receiver, super_class_low, CMTimeGetSeconds(&time.start)];
      v18 = self->_effect;
      if (v18)
      {
        objc_msgSend_effectRange(v18);
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      CMTimeRangeGetEnd(&v23, &time);
      time.start = v23;
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%lld/%d = %.3f}", v23.value, v23.timescale, CMTimeGetSeconds(&time.start)];
      v20 = [v13 stringByAppendingFormat:@"\nRange: Start (%@) End (%@)", v17, v19];

      v5 = v20;
    }
  }

  return v5;
}

- (id)instructionGraphNodeDescription
{
  v25[1] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = PVInstructionGraphEffectNode;
  instructionGraphNodeDescription = [(PVInstructionGraphNode *)&v23 instructionGraphNodeDescription];
  v22 = [instructionGraphNodeDescription mutableCopy];

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v22 setObject:v5 forKeyedSubscript:@"class"];

  effect = self->_effect;
  if (effect)
  {
    displayName = [(PVEffect *)effect displayName];
    [v22 setObject:displayName forKeyedSubscript:@"effectName"];

    effectDescription = [(PVEffect *)self->_effect effectDescription];
    [v22 setObject:effectDescription forKeyedSubscript:@"effect"];
  }

  array = [MEMORY[0x277CBEB18] array];
  p_end_node = &self->_inputMap.__tree_.__end_node_;
  begin_node = self->_inputMap.__tree_.__begin_node_;
  if (begin_node != &self->_inputMap.__tree_.__end_node_)
  {
    do
    {
      left_low = LODWORD(begin_node[4].__left_);
      v13 = begin_node[5].__left_;
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:left_low];
      stringValue = [v14 stringValue];
      v24 = stringValue;
      instructionGraphNodeDescription2 = [v13 instructionGraphNodeDescription];
      v25[0] = instructionGraphNodeDescription2;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

      [array addObject:v17];
      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v19 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v19 = begin_node[2].__left_;
          v20 = v19->__left_ == begin_node;
          begin_node = v19;
        }

        while (!v20);
      }

      begin_node = v19;
    }

    while (v19 != p_end_node);
  }

  [v22 setObject:array forKeyedSubscript:@"inputs"];

  return v22;
}

- (void)addDotTreeLinks:(HGRef<PVInstructionGraphContext>)links
{
  v14 = PVInstructionGraphContext::DotGraph(*links.m_Obj);
  if (HGDotGraph::on(v14))
  {
    v23 = v24;
    v24[0] = 0;
    v25[0] = 0;
    v25[1] = 0;
    v24[1] = 0;
    v24[2] = v25;
    v25[2] = v26;
    v26[0] = 0;
    v27[0] = 0;
    v27[1] = 0;
    v26[1] = 0;
    v26[2] = v27;
    v27[2] = v28;
    v28[0] = 0;
    v29[0] = 0;
    v29[1] = 0;
    v28[1] = 0;
    v28[2] = v29;
    begin_node = self->_inputMap.__tree_.__begin_node_;
    if (begin_node != &self->_inputMap.__tree_.__end_node_)
    {
      v5 = *(MEMORY[0x277D82818] + 72);
      v12 = *(MEMORY[0x277D82818] + 64);
      v13 = *MEMORY[0x277D82818];
      do
      {
        left_low = LODWORD(begin_node[4].__left_);
        v7 = begin_node[5].__left_;
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
        MEMORY[0x2666E9B60](&v18, left_low);
        std::stringbuf::str();
        if (v16 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        HGDotGraph::link(v14, v7, self, p_p, 0);
        if (v16 < 0)
        {
          operator delete(__p);
        }

        v17[0] = v13;
        *(v17 + *(v13 - 24)) = v12;
        v18 = v5;
        v19 = MEMORY[0x277D82878] + 16;
        if (v21 < 0)
        {
          operator delete(v20[7].__locale_);
        }

        v19 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v20);
        std::iostream::~basic_iostream();
        MEMORY[0x2666E9E10](&v22);

        left = begin_node[1].__left_;
        if (left)
        {
          do
          {
            v10 = left;
            left = left->super.super.isa;
          }

          while (left);
        }

        else
        {
          do
          {
            v10 = begin_node[2].__left_;
            v11 = v10->super.super.isa == begin_node;
            begin_node = v10;
          }

          while (!v11);
        }

        begin_node = v10;
      }

      while (v10 != &self->_inputMap.__tree_.__end_node_);
    }

    PVInputHGNodeMap<unsigned int>::~PVInputHGNodeMap(&v23);
  }
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 4) = 0;
  *(self + 3) = self + 32;
  return self;
}

@end