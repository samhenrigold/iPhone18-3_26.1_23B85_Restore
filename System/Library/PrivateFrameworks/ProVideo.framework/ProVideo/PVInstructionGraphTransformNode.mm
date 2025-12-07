@interface PVInstructionGraphTransformNode
+ (id)newTransformNode:(id)node transform:(CGAffineTransform *)transform;
- (CGAffineTransform)transform;
- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)effect igContext:(id)context;
- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context;
- (PVInstructionGraphTransformNode)initWithInputNode:(id)node transform:(CGAffineTransform *)transform;
- (id)getAllSourceNodes;
- (id)requiredSourceTrackIDs;
- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node returnLoadedEffects:(id)effects;
- (void)setTransform:(CGAffineTransform *)transform;
- (void)unloadIGNode;
@end

@implementation PVInstructionGraphTransformNode

+ (id)newTransformNode:(id)node transform:(CGAffineTransform *)transform
{
  nodeCopy = node;
  v7 = [self alloc];
  v8 = *&transform->c;
  v11[0] = *&transform->a;
  v11[1] = v8;
  v11[2] = *&transform->tx;
  v9 = [v7 initWithInputNode:nodeCopy transform:v11];

  return v9;
}

- (PVInstructionGraphTransformNode)initWithInputNode:(id)node transform:(CGAffineTransform *)transform
{
  nodeCopy = node;
  v12.receiver = self;
  v12.super_class = PVInstructionGraphTransformNode;
  v7 = [(PVInstructionGraphNode *)&v12 init];
  v8 = v7;
  if (v7)
  {
    [(PVInstructionGraphTransformNode *)v7 setInputNode:nodeCopy];
    v9 = *&transform->c;
    v11[0] = *&transform->a;
    v11[1] = v9;
    v11[2] = *&transform->tx;
    [(PVInstructionGraphTransformNode *)v8 setTransform:v11];
    [(PVInstructionGraphTransformNode *)v8 setTransformOrigin:2];
  }

  return v8;
}

- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node returnLoadedEffects:(id)effects
{
  effectsCopy = effects;
  inputNode = [(PVInstructionGraphTransformNode *)self inputNode];
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
  inputNode = [(PVInstructionGraphTransformNode *)self inputNode];
  [inputNode unloadIGNode];
}

- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v10 = v6;
  HGTraceGuard::HGTraceGuard(v40, "kPVInstructionGraphToHeliumGraphLogContext", 1, "[PVInstructionGraphTransformNode hgNodeForTime:...]");
  inputNode = [(PVInstructionGraphTransformNode *)self inputNode];
  v39 = *time;
  v12 = *context.m_Obj;
  v38 = v12;
  if (v12)
  {
    (*(*v12 + 16))(v12);
  }

  if (inputNode)
  {
    objc_msgSend_hgNodeForTime_trackInputs_renderer_igContext_(inputNode);
  }

  else
  {
    *v10 = 0;
  }

  if (v38)
  {
    (*(*v38 + 24))(v38);
  }

  v13 = (*(**context.m_Obj + 40))();
  v15 = v14;
  v16 = (*(**context.m_Obj + 48))();
  memset(&v37, 0, sizeof(v37));
  objc_msgSend_transform(self);
  transformOrigin = [(PVInstructionGraphTransformNode *)self transformOrigin];
  v18 = v16;
  v19 = v13 * v16;
  v20 = v15 * v18;
  if (transformOrigin)
  {
    if (transformOrigin == 1)
    {
      v21 = v15 * v18;
    }

    else
    {
      v21 = v20 * 0.5;
    }

    if (transformOrigin == 1)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = v19 * 0.5;
    }
  }

  else
  {
    v22 = *MEMORY[0x277CBF348];
    v21 = *(MEMORY[0x277CBF348] + 8);
  }

  memset(&v36, 0, sizeof(v36));
  CGAffineTransformMakeTranslation(&t1, -v22, -v21);
  t2 = v37;
  CGAffineTransformConcat(&v43, &t1, &t2);
  CGAffineTransformMakeTranslation(&t1, v22, v21);
  CGAffineTransformConcat(&v36, &v43, &t1);
  v23 = *v10;
  v35 = v23;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  v43 = v36;
  v24 = (*(**context.m_Obj + 64))();
  HGXFormForCGAffineTransform(&v35, &v43, v24, &t1);
  v25 = *v10;
  a = t1.a;
  if (*v10 == *&t1.a)
  {
    if (v25)
    {
      (*(**&t1.a + 24))(*&t1.a);
    }
  }

  else
  {
    if (v25)
    {
      (*(*v25 + 24))(v25);
      a = t1.a;
    }

    *v10 = a;
    t1.a = 0.0;
  }

  if (v35)
  {
    (*(*v35 + 24))(v35);
  }

  if ([(PVInstructionGraphNode *)self isDebugDrawingEnabled])
  {
    v28 = v19;
    v29 = v20;
    v30 = HGRectMake4f(v27, 0.0, 0.0, v28, v29);
    v32 = v31;
    v33 = HGObject::operator new(0x1A0uLL);
    *&v45.var0 = v30;
    *&v45.var2 = v32;
    HGSolidColor::HGSolidColor(v33, v45);
  }

  HGTraceGuard::~HGTraceGuard(v40);
  return v34;
}

- (id)requiredSourceTrackIDs
{
  inputNode = [(PVInstructionGraphTransformNode *)self inputNode];
  requiredSourceTrackIDs = [inputNode requiredSourceTrackIDs];

  return requiredSourceTrackIDs;
}

- (id)getAllSourceNodes
{
  inputNode = [(PVInstructionGraphTransformNode *)self inputNode];
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

- (CGAffineTransform)transform
{
  v3 = *&self[1].b;
  *&retstr->a = *&self->ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].d;
  return self;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_transform.a = *&transform->a;
  *&self->_transform.c = v4;
  *&self->_transform.tx = v3;
}

@end