@interface PVInstructionGraphRectangleMaskNode
+ (id)newMaskNode:(id)node normalizedMaskRect:(CGRect)rect;
- (CGRect)denormalizedMaskRectInSize:(CGSize)size;
- (CGRect)normalizedMaskRect;
- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)effect igContext:(id)context;
- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context;
- (PVInstructionGraphRectangleMaskNode)initWithInputNode:(id)node normalizedMaskRect:(CGRect)rect;
- (id)getAllSourceNodes;
- (id)requiredSourceTrackIDs;
- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node returnLoadedEffects:(id)effects;
- (void)unloadIGNode;
@end

@implementation PVInstructionGraphRectangleMaskNode

+ (id)newMaskNode:(id)node normalizedMaskRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  nodeCopy = node;
  v10 = [[self alloc] initWithInputNode:nodeCopy normalizedMaskRect:{x, y, width, height}];

  return v10;
}

- (PVInstructionGraphRectangleMaskNode)initWithInputNode:(id)node normalizedMaskRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  nodeCopy = node;
  v13.receiver = self;
  v13.super_class = PVInstructionGraphRectangleMaskNode;
  v10 = [(PVInstructionGraphNode *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(PVInstructionGraphRectangleMaskNode *)v10 setInputNode:nodeCopy];
    [(PVInstructionGraphRectangleMaskNode *)v11 setNormalizedMaskRect:x, y, width, height];
  }

  return v11;
}

- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node returnLoadedEffects:(id)effects
{
  effectsCopy = effects;
  inputNode = [(PVInstructionGraphRectangleMaskNode *)self inputNode];
  v8 = *node.m_Obj;
  v9 = v8;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  [inputNode loadIGNode:&v9 returnLoadedEffects:effectsCopy];
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }
}

- (void)unloadIGNode
{
  inputNode = [(PVInstructionGraphRectangleMaskNode *)self inputNode];
  [inputNode unloadIGNode];
}

- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v9 = v6;
  HGTraceGuard::HGTraceGuard(v38, "kPVInstructionGraphToHeliumGraphLogContext", 1, "[PVInstructionGraphRectangleMaskNode hgNodeForTime:...]");
  inputNode = [(PVInstructionGraphRectangleMaskNode *)self inputNode];
  v37 = *context.m_Obj;
  if (*context.m_Obj)
  {
    (*(**context.m_Obj + 16))(*context.m_Obj);
  }

  if (inputNode)
  {
    objc_msgSend_hgNodeForTime_trackInputs_renderer_igContext_(inputNode);
  }

  else
  {
    *v9 = 0;
  }

  if (v37)
  {
    (*(*v37 + 24))(v37);
  }

  v11 = (*(**context.m_Obj + 40))();
  v13 = v12;
  v14 = (*(**context.m_Obj + 48))().n128_f32[0];
  v15 = v11 * v14;
  v16 = v13 * v14;
  [(PVInstructionGraphRectangleMaskNode *)self denormalizedMaskRectInSize:v15, v13 * v14];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = HGObject::operator new(0x280uLL);
  HGHWMultiBlend::HGHWMultiBlend(v25);
  (*(*v25 + 96))(v25, 0, 9.0, 0.0, 0.0, 0.0);
  (*(*v25 + 120))(v25, 0, *v9);
  v26 = *v9;
  if (*v9 != v25)
  {
    if (v26)
    {
      (*(*v26 + 24))(v26);
    }

    *v9 = v25;
    (*(*v25 + 16))(v25);
  }

  if ([(PVInstructionGraphRectangleMaskNode *)self isInverted])
  {
    v27 = HGObject::operator new(0x1A0uLL);
    HGSolidColor::HGSolidColor(v27);
  }

  v40.origin.x = v18;
  v40.origin.y = v20;
  v40.size.width = v22;
  v40.size.height = v24;
  MinX = CGRectGetMinX(v40);
  v41.origin.x = v18;
  v41.origin.y = v20;
  v41.size.width = v22;
  v41.size.height = v24;
  CGRectGetMaxX(v41);
  v42.origin.x = v18;
  v42.origin.y = v20;
  v42.size.width = v22;
  v42.size.height = v24;
  MaxX = CGRectGetMaxX(v42);
  v43.origin.x = v18;
  v43.origin.y = v20;
  v43.size.width = v22;
  v43.size.height = v24;
  CGRectGetMaxY(v43);
  v44.origin.x = v18;
  v44.origin.y = v20;
  v44.size.width = v22;
  v44.size.height = v24;
  MaxY = CGRectGetMaxY(v44);
  v45.origin.x = v18;
  v45.origin.y = v20;
  v45.size.width = v22;
  v45.size.height = v24;
  MinY = CGRectGetMinY(v45);
  if (MinX > 0.0 && v16 > 0.0)
  {
    v31 = HGObject::operator new(0x1A0uLL);
    HGSolidColor::HGSolidColor(v31);
  }

  if (v15 - MaxX > 0.0 && v16 > 0.0)
  {
    v32 = HGObject::operator new(0x1A0uLL);
    HGSolidColor::HGSolidColor(v32);
  }

  if (v15 > 0.0 && v16 - MaxY > 0.0)
  {
    v33 = HGObject::operator new(0x1A0uLL);
    HGSolidColor::HGSolidColor(v33);
  }

  if (v15 > 0.0 && MinY > 0.0)
  {
    v34 = HGObject::operator new(0x1A0uLL);
    HGSolidColor::HGSolidColor(v34);
  }

  (*(*v25 + 24))(v25);
  HGTraceGuard::~HGTraceGuard(v38);
  return v35;
}

- (id)requiredSourceTrackIDs
{
  inputNode = [(PVInstructionGraphRectangleMaskNode *)self inputNode];
  requiredSourceTrackIDs = [inputNode requiredSourceTrackIDs];

  return requiredSourceTrackIDs;
}

- (id)getAllSourceNodes
{
  inputNode = [(PVInstructionGraphRectangleMaskNode *)self inputNode];
  getAllSourceNodes = [inputNode getAllSourceNodes];

  return getAllSourceNodes;
}

- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context
{
  v6 = v4;
  effectCopy = effect;
  v7 = (*(**context.m_Obj + 40))();
  v9 = v8;
  v10 = (*(**context.m_Obj + 48))();
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = v7 * v10;
  *(v6 + 24) = v9 * v10;

  result.var3 = v14;
  result.var2 = v13;
  result.var1 = v12;
  result.var0 = v11;
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

- (CGRect)denormalizedMaskRectInSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PVInstructionGraphRectangleMaskNode *)self normalizedMaskRect];
  v6 = width * v5;
  v8 = height * v7;
  v10 = width * v9;
  v12 = height * v11;
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (CGRect)normalizedMaskRect
{
  x = self->_normalizedMaskRect.origin.x;
  y = self->_normalizedMaskRect.origin.y;
  width = self->_normalizedMaskRect.size.width;
  height = self->_normalizedMaskRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end