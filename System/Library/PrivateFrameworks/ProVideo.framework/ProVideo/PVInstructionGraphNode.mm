@interface PVInstructionGraphNode
- (HGRef<HGNode>)hgNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)effect igContext:(id)context;
- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context;
- (PVIGHGNodeCacheKey)contextHGNodeCacheKeyAtTime:(SEL)time;
- (PVInstructionGraphNode)init;
- (id)description;
- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)label;
- (id)instructionGraphNodeDescription;
- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node;
@end

@implementation PVInstructionGraphNode

- (PVInstructionGraphNode)init
{
  v3.receiver = self;
  v3.super_class = PVInstructionGraphNode;
  result = [(PVInstructionGraphNode *)&v3 init];
  if (result)
  {
    result->_uuid = atomic_fetch_add(&sAtomicIGNodeCount, 1uLL);
  }

  return result;
}

- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node
{
  v4 = *node.m_Obj;
  v5 = v4;
  if (v4)
  {
    (*(*v4 + 16))(v4, a2);
  }

  [(PVInstructionGraphNode *)self loadIGNode:&v5 returnLoadedEffects:0];
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }
}

- (HGRef<HGNode>)hgNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v30 = v6;
  HGTraceGuard::HGTraceGuard(v41, "kPVInstructionGraphToHeliumGraphLogContext", 1, "[PVInstructionGraphNode hgNodeForTime:...]");
  v39 = *time;
  objc_msgSend_contextHGNodeCacheKeyAtTime_(self);
  v12 = PVInstructionGraphContext::HGNodeCache(*context.m_Obj);
  *v30 = 0;
  v13 = atomic_load(HGLogger::_enabled);
  if (v13)
  {
    HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Checking context node cache for (uuid: %llu) (time: %lld.%d)\n", v10, v11, v40.var0, v40.var1.var0, v40.var1.var1);
  }

  PerfTimer::PerfTimer(&v38);
  PerfTimer::Start(&v38);
  PVIGHGNodeCacheKey::PVIGHGNodeCacheKey(&v37, &v40);
  v14 = std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>>>::find<PVIGHGNodeCacheKey>(v12, &v37);
  v15 = v12 + 8;

  v18 = atomic_load(HGLogger::_enabled);
  if (v12 + 8 == v14)
  {
    if (v18)
    {
      HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Cache Miss\n", v16, v17);
    }

    v39 = *time;
    v21 = *context.m_Obj;
    v34 = v21;
    if (v21)
    {
      (*(*v21 + 16))(v21);
    }

    objc_msgSend_internalHGNodeForTime_trackInputs_renderer_igContext_(self);
    v22 = *v30;
    v23 = v35;
    if (*v30 == v35)
    {
      if (v22)
      {
        (*(*v35 + 24))();
      }
    }

    else
    {
      if (v22)
      {
        (*(*v22 + 24))(*v30);
        v23 = v35;
      }

      *v30 = v23;
      v35 = 0;
      v22 = v23;
    }

    if (v34)
    {
      (*(*v34 + 24))(v34);
    }

    PVIGHGNodeCacheKey::PVIGHGNodeCacheKey(&v33, &v40);
    v32 = v22;
    if (v22)
    {
      (*(*v22 + 16))(v22);
    }

    PVInputHGNodeMap<PVIGHGNodeCacheKey>::SetNode(v12, &v33, &v32);
    if (v32)
    {
      (*(*v32 + 24))(v32);
    }

    var2 = v33.var2;
  }

  else
  {
    if (v18)
    {
      HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Cache Hit!\n", v16, v17);
    }

    PVIGHGNodeCacheKey::PVIGHGNodeCacheKey(&v36, &v40);
    PVInputHGNodeMap<PVIGHGNodeCacheKey>::GetNode(v12, &v36, &v39);
    v19 = *v30;
    var0 = v39.var0;
    if (*v30 == v39.var0)
    {
      if (v19)
      {
        (*(*v39.var0 + 24))(v39.var0);
      }
    }

    else
    {
      if (v19)
      {
        (*(*v19 + 24))(v19);
        var0 = v39.var0;
      }

      *v30 = var0;
      v39.var0 = 0;
    }

    var2 = v36.var2;
  }

  PerfTimer::End(&v38);
  v25 = PVInstructionGraphContext::DotGraph(*context.m_Obj);
  if (HGDotGraph::on(v25))
  {
    v26 = *context.m_Obj;
    v31 = v26;
    if (v26)
    {
      (*(*v26 + 16))(v26);
    }

    v27 = [(PVInstructionGraphNode *)self dotTreeLabel:&v31];
    if (v31)
    {
      (*(*v31 + 24))(v31);
    }

    if (PVInstructionGraphContext::DotTreeLogLevel(*context.m_Obj) >= 2)
    {
      v28 = [v27 stringByAppendingFormat:@"\nBuildTime: %.3f", (v38._end - v38._start) * 1000.0];

      v27 = v28;
    }

    HGDotGraph::node(v25, self, [v27 UTF8String], 0);
    if (v15 != v14)
    {
      HGDotGraph::filled(v25, self, "#90c070");
    }
  }

  HGTraceGuard::~HGTraceGuard(v41);
  return v29;
}

- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v7 = v6;
  v8 = atomic_load(HGLogger::_enabled);
  if (v8)
  {
    HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Base class returning empty HGNode.\n", inputs, renderer, context.m_Obj);
  }

  v9 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v9);
  *v7 = v9;
  return v10;
}

- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context
{
  *v4 = 0;
  *(v4 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v4 + 16) = _Q0;
  result.var0 = *&_Q0;
  return result;
}

- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)effect igContext:(id)context
{
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
  return self;
}

- (PVIGHGNodeCacheKey)contextHGNodeCacheKeyAtTime:(SEL)time
{
  uuid = self->_uuid;
  v6 = *a4;
  PVIGHGNodeCacheKey::PVIGHGNodeCacheKey(retstr, uuid, &v6);
  return result;
}

- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)label
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 stringByReplacingOccurrencesOfString:@"PVInstructionGraph" withString:&stru_2872E16E0];

  return v5;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  instructionGraphNodeDescription = [(PVInstructionGraphNode *)self instructionGraphNodeDescription];
  v4 = [v2 stringWithFormat:@"%@", instructionGraphNodeDescription];

  return v4;
}

- (id)instructionGraphNodeDescription
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", self, @"address"];
  v7[1] = @"class";
  v8[0] = v2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

@end