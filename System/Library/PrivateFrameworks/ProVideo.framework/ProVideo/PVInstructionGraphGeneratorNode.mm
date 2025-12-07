@interface PVInstructionGraphGeneratorNode
+ (id)newGeneratorNode:(id)node;
- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)effect igContext:(id)context;
- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context;
- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)label;
- (id)instructionGraphNodeDescription;
- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node returnLoadedEffects:(id)effects;
@end

@implementation PVInstructionGraphGeneratorNode

+ (id)newGeneratorNode:(id)node
{
  nodeCopy = node;
  v4 = objc_alloc_init(PVInstructionGraphGeneratorNode);
  [(PVInstructionGraphGeneratorNode *)v4 setGeneratorEffect:nodeCopy];

  return v4;
}

- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node returnLoadedEffects:(id)effects
{
  effectsCopy = effects;
  [*&self->super._transform.ty loadEffect];
  if (effectsCopy)
  {
    [effectsCopy addObject:*&self->super._transform.ty];
  }
}

- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v10 = v6;
  HGTraceGuard::HGTraceGuard(v47, "kPVInstructionGraphToHeliumGraphLogContext", 1, "[PVInstructionGraphGeneratorNode hgNodeForTime:...]");
  if (*&self->super._transform.ty)
  {
    v46 = *context.m_Obj;
    if (v46)
    {
      (*(*v46 + 16))(v46);
    }

    [(PVInstructionGraphNode *)self loadIGNode:&v46];
    if (v46)
    {
      (*(*v46 + 24))(v46);
    }

    v14 = atomic_load(HGLogger::_enabled);
    if (v14)
    {
      effectID = [*&self->super._transform.ty effectID];
      uTF8String = [effectID UTF8String];
      HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Getting output node from generator effect (%s)\n", v17, v18, uTF8String);
    }

    if (HGLogger::getLevel("kPVInstructionGraphToHeliumGraphLogContext", v13) >= 1)
    {
      ty = self->super._transform.ty;
      if (ty == 0.0)
      {
        memset(&range, 0, sizeof(range));
      }

      else
      {
        objc_msgSend_effectRange(*&ty);
      }

      v22 = CMTimeRangeCopyDescription(0, &range);
      v23 = v22;
      v24 = atomic_load(HGLogger::_enabled);
      if (v24)
      {
        uTF8String2 = [v22 UTF8String];
        HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Effect Time Range: %s\n", v26, v27, uTF8String2);
      }

      CFRelease(v23);
    }

    *v10 = 0;
    range.start.value = &range.start.timescale;
    *&range.start.timescale = 0;
    *&range.duration.timescale = 0;
    range.duration.epoch = 0;
    range.start.epoch = 0;
    range.duration.value = &range.duration.timescale;
    v41 = v42;
    v42[0] = 0;
    v43[0] = 0;
    v43[1] = 0;
    v42[1] = 0;
    v42[2] = v43;
    v43[2] = v44;
    v44[0] = 0;
    v45[0] = 0;
    v45[1] = 0;
    v44[1] = 0;
    v44[2] = v45;
    v28 = self->super._transform.ty;
    v38 = *&time->var0;
    var3 = time->var3;
    v29 = *context.m_Obj;
    v37 = v29;
    if (v29)
    {
      (*(*v29 + 16))(v29);
    }

    if (v28 == 0.0)
    {
      v30 = 0;
    }

    else
    {
      objc_msgSend_hgNodeForTime_inputs_renderer_igContext_(*&v28);
      v30 = *&v34[0];
      if (!*&v34[0])
      {
LABEL_25:
        if (v37)
        {
          (*(*v37 + 24))(v37);
        }

        v35 = v30;
        if (v30)
        {
          (*(*v30 + 16))(v30);
        }

        objc_msgSend_transform(self);
        v31 = (*(**context.m_Obj + 64))();
        HGXFormForCGAffineTransform(&v35, v34, v31, &v36);
        v32 = v36;
        if (v30 == v36)
        {
          if (v30)
          {
            (*(*v36 + 24))();
          }
        }

        else
        {
          if (v30)
          {
            (*(*v30 + 24))(v30);
            v32 = v36;
          }

          *v10 = v32;
          v36 = 0;
        }

        if (v35)
        {
          (*(*v35 + 24))(v35);
        }

        [(PVInstructionGraphGeneratorNode *)self unloadIGNode];
        PVInputHGNodeMap<unsigned int>::~PVInputHGNodeMap(&range);
        goto LABEL_38;
      }

      *v10 = *&v34[0];
    }

    *&v34[0] = 0;
    goto LABEL_25;
  }

  v20 = atomic_load(HGLogger::_enabled);
  if (v20)
  {
    HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Generator effect is Nil. Returning empty HGNode\n", v11, v12);
  }

  v21 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v21);
  *v10 = v21;
LABEL_38:
  HGTraceGuard::~HGTraceGuard(v47);
  return v33;
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
  *(v6 + 16) = v12 * v15;
  *(v6 + 24) = v14 * v15;

  result.var3 = v19;
  result.var2 = v18;
  result.var1 = v17;
  result.var0 = v16;
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

- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)label
{
  v24 = *label.m_Obj;
  if (v24)
  {
    (*(*v24 + 16))(v24, a2);
  }

  v23.receiver = self;
  v23.super_class = PVInstructionGraphGeneratorNode;
  v5 = [(PVInstructionGraphNode *)&v23 dotTreeLabel:&v24];
  if (v24)
  {
    (*(*v24 + 24))(v24);
  }

  if (*&self->super._transform.ty)
  {
    v6 = PVInstructionGraphContext::DotTreeLogLevel(*label.m_Obj);
    displayName = [*&self->super._transform.ty displayName];
    v8 = [v5 stringByAppendingFormat:@" [%@]", displayName];

    if (v6 >= 2)
    {
      effectType = [*&self->super._transform.ty effectType];
      effectID = [*&self->super._transform.ty effectID];
      v11 = [PVEffect categoryForEffectID:effectID];
      v12 = [v8 stringByAppendingFormat:@" {%@, %@}", effectType, v11];

      v8 = v12;
    }

    ty = self->super._transform.ty;
    if (ty == 0.0)
    {
      super_class_low = 0;
      receiver = 0;
      memset(v22, 0, sizeof(v22));
    }

    else
    {
      objc_msgSend_effectRange(*&ty);
      receiver = v22[0].receiver;
      super_class_low = LODWORD(v22[0].super_class);
    }

    *&time.start.flags = *(&v22[0].super_class + 4);
    HIDWORD(time.start.epoch) = HIDWORD(v22[1].receiver);
    time.start.value = receiver;
    time.start.timescale = super_class_low;
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%lld/%d = %.3f}", receiver, super_class_low, CMTimeGetSeconds(&time.start)];
    v17 = self->super._transform.ty;
    if (v17 == 0.0)
    {
      memset(&time, 0, sizeof(time));
    }

    else
    {
      objc_msgSend_effectRange(*&v17);
    }

    CMTimeRangeGetEnd(&v21, &time);
    time.start = v21;
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%lld/%d = %.3f}", v21.value, v21.timescale, CMTimeGetSeconds(&time.start)];
    v5 = [v8 stringByAppendingFormat:@"\nRange: Start (%@) End (%@)", v16, v18];
  }

  return v5;
}

- (id)instructionGraphNodeDescription
{
  v10.receiver = self;
  v10.super_class = PVInstructionGraphGeneratorNode;
  instructionGraphNodeDescription = [(PVInstructionGraphSourceNode *)&v10 instructionGraphNodeDescription];
  v4 = [instructionGraphNodeDescription mutableCopy];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forKeyedSubscript:@"class"];

  ty = self->super._transform.ty;
  if (ty != 0.0)
  {
    effectDescription = [*&ty effectDescription];
    [v4 setObject:effectDescription forKeyedSubscript:@"effect"];
  }

  return v4;
}

@end