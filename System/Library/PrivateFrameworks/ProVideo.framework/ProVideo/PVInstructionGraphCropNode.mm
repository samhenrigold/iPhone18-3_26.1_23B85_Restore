@interface PVInstructionGraphCropNode
+ (id)newCropNode:(id)node normalizedCropRect:(CGRect)rect;
- (CGRect)denormalizedCropRectInSize:(CGSize)size;
- (CGRect)normalizedCropRect;
- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)effect igContext:(id)context;
- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context;
- (PVInstructionGraphCropNode)initWithInputNode:(id)node normalizedCropRect:(CGRect)rect;
- (id)getAllSourceNodes;
- (id)requiredSourceTrackIDs;
- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node returnLoadedEffects:(id)effects;
- (void)unloadIGNode;
@end

@implementation PVInstructionGraphCropNode

+ (id)newCropNode:(id)node normalizedCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  nodeCopy = node;
  v10 = [[self alloc] initWithInputNode:nodeCopy normalizedCropRect:{x, y, width, height}];

  return v10;
}

- (PVInstructionGraphCropNode)initWithInputNode:(id)node normalizedCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  nodeCopy = node;
  v13.receiver = self;
  v13.super_class = PVInstructionGraphCropNode;
  v10 = [(PVInstructionGraphNode *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(PVInstructionGraphCropNode *)v10 setInputNode:nodeCopy];
    [(PVInstructionGraphCropNode *)v11 setNormalizedCropRect:x, y, width, height];
  }

  return v11;
}

- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node returnLoadedEffects:(id)effects
{
  effectsCopy = effects;
  inputNode = [(PVInstructionGraphCropNode *)self inputNode];
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
  inputNode = [(PVInstructionGraphCropNode *)self inputNode];
  [inputNode unloadIGNode];
}

- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v9 = v6;
  HGTraceGuard::HGTraceGuard(v31, "kPVInstructionGraphToHeliumGraphLogContext", 1, "[PVInstructionGraphCropNode hgNodeForTime:...]");
  inputNode = [(PVInstructionGraphCropNode *)self inputNode];
  v30 = *context.m_Obj;
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

  if (v30)
  {
    (*(*v30 + 24))(v30);
  }

  v11 = (*(**context.m_Obj + 40))();
  v13 = v12;
  v14 = (*(**context.m_Obj + 48))().n128_f32[0];
  v15 = v11 * v14;
  v16 = v13 * v14;
  [(PVInstructionGraphCropNode *)self denormalizedCropRectInSize:v15, v16];
  v17 = HGRectMakeWithCGRect(v34);
  v19 = v18;
  v20 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v20);
  (*(*v20 + 96))(v20, 0, v17, SHIDWORD(v17), v19, SHIDWORD(v19));
  (*(*v20 + 120))(v20, 0, *v9);
  v21 = *v9;
  if (*v9 != v20)
  {
    if (v21)
    {
      (*(*v21 + 24))(v21);
    }

    *v9 = v20;
    (*(*v20 + 16))(v20);
  }

  if ([(PVInstructionGraphNode *)self isDebugDrawingEnabled])
  {
    v23 = v15;
    v24 = v16;
    v25 = HGRectMake4f(v22, 0.0, 0.0, v23, v24);
    v27 = v26;
    v28 = HGObject::operator new(0x1A0uLL);
    *&v33.var0 = v25;
    *&v33.var2 = v27;
    HGSolidColor::HGSolidColor(v28, v33);
  }

  (*(*v20 + 24))(v20);
  HGTraceGuard::~HGTraceGuard(v31);
  return v29;
}

- (id)requiredSourceTrackIDs
{
  inputNode = [(PVInstructionGraphCropNode *)self inputNode];
  requiredSourceTrackIDs = [inputNode requiredSourceTrackIDs];

  return requiredSourceTrackIDs;
}

- (id)getAllSourceNodes
{
  inputNode = [(PVInstructionGraphCropNode *)self inputNode];
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

- (CGRect)denormalizedCropRectInSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PVInstructionGraphCropNode *)self normalizedCropRect];
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

- (CGRect)normalizedCropRect
{
  x = self->_normalizedCropRect.origin.x;
  y = self->_normalizedCropRect.origin.y;
  width = self->_normalizedCropRect.size.width;
  height = self->_normalizedCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end