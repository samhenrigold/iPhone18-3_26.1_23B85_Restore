@interface VFXModelWrapDeformer
- (BOOL)_getDeformedMeshBoundingBox:(id *)box;
- (VFXModelWrapDeformer)initWithCoder:(id)coder;
- (VFXModelWrapDeformer)initWithDrivingNode:(id)node parameters:(id)parameters;
- (VFXModelWrapDeformer)initWithInnerLayerNode:(id)node outerLayerNode:(id)layerNode parameters:(id)parameters;
- (VFXNode)drivingNode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dependencyNodeAtIndex:(unint64_t)index;
- (id)newDeformerInstanceForNode:(id)node outputs:(unint64_t)outputs computeVertexCount:(unint64_t)count context:(id)context;
- (unint64_t)requiredInputs;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)initParametersIfNeededForDeformedNode:(id)node;
@end

@implementation VFXModelWrapDeformer

- (VFXModelWrapDeformer)initWithDrivingNode:(id)node parameters:(id)parameters
{
  v9.receiver = self;
  v9.super_class = VFXModelWrapDeformer;
  v6 = [(VFXModelWrapDeformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_isLegacySingleLayerDeformer = 1;
    objc_storeWeak(&v6->_legacyDrivingNode, node);
    v7->_parameters = parameters;
  }

  return v7;
}

- (VFXModelWrapDeformer)initWithInnerLayerNode:(id)node outerLayerNode:(id)layerNode parameters:(id)parameters
{
  v11.receiver = self;
  v11.super_class = VFXModelWrapDeformer;
  v8 = [(VFXModelWrapDeformer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_innerLayerNode, node);
    objc_storeWeak(&v9->_outerLayerNode, layerNode);
    v9->_parameters = parameters;
  }

  return v9;
}

- (void)initParametersIfNeededForDeformedNode:(id)node
{
  Weak = objc_loadWeak(&self->_innerLayerNode);
  v6 = objc_loadWeak(&self->_outerLayerNode);
  parameters = self->_parameters;
  v10 = objc_msgSend_nodeRef(Weak, v8, v9);
  objc_msgSend_nodeRef(v6, v11, v12);
  objc_msgSend_nodeRef(node, v13, v14);

  MEMORY[0x1EEE66B58](parameters, sel_initParametersIfNeededWithInnerLayerNodeRef_outerLayerNodeRef_deformedNodeRef_, v10);
}

- (id)copyWithZone:(_NSZone *)zone
{
  Weak = objc_loadWeak(&self->_innerLayerNode);
  objc_loadWeak(&self->_outerLayerNode);
  v5 = objc_alloc(objc_opt_class());

  return MEMORY[0x1EEE66B58](v5, sel_initWithInnerLayerNode_outerLayerNode_parameters_, Weak);
}

- (void)dealloc
{
  objc_storeWeak(&self->_innerLayerNode, 0);
  objc_storeWeak(&self->_outerLayerNode, 0);
  objc_storeWeak(&self->_legacyDrivingNode, 0);

  v3.receiver = self;
  v3.super_class = VFXModelWrapDeformer;
  [(VFXModelWrapDeformer *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = VFXModelWrapDeformer;
  [(VFXModelDeformer *)&v11 encodeWithCoder:?];
  objc_msgSend_initParametersIfNeededForDeformedNode_(self, v5, 0);
  objc_msgSend_encodeObject_forKey_(coder, v6, self->_parameters, @"parameters");
  Weak = objc_loadWeak(&self->_innerLayerNode);
  objc_msgSend_encodeObject_forKey_(coder, v8, Weak, @"innerLayerNode");
  v9 = objc_loadWeak(&self->_outerLayerNode);
  objc_msgSend_encodeObject_forKey_(coder, v10, v9, @"outerLayerNode");
}

- (VFXModelWrapDeformer)initWithCoder:(id)coder
{
  v14.receiver = self;
  v14.super_class = VFXModelWrapDeformer;
  v4 = [(VFXModelDeformer *)&v14 initWithCoder:?];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_parameters = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"parameters");
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v8, v7, @"innerLayerNode");
    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"outerLayerNode");
    objc_storeWeak(&v4->_innerLayerNode, v9);
    objc_storeWeak(&v4->_outerLayerNode, v12);
  }

  return v4;
}

- (VFXNode)drivingNode
{
  v2 = 40;
  if (!self->_legacyDrivingNode)
  {
    v2 = 8;
  }

  return objc_loadWeak((&self->super.super.isa + v2));
}

- (unint64_t)requiredInputs
{
  if (self->_isLegacySingleLayerDeformer)
  {
    return 9;
  }

  else
  {
    return 73;
  }
}

- (BOOL)_getDeformedMeshBoundingBox:(id *)box
{
  if (self->_isLegacySingleLayerDeformer)
  {
    Weak = objc_loadWeak(&self->_legacyDrivingNode);
    v8 = objc_msgSend_nodeRef(Weak, v6, v7);

    LOBYTE(v9) = sub_1AF1B7A3C(v8, box);
  }

  else
  {
    v10 = objc_loadWeak(&self->_innerLayerNode);
    v11 = objc_loadWeak(&self->_outerLayerNode);
    v14 = objc_msgSend_nodeRef(v10, v12, v13);
    v17 = objc_msgSend_nodeRef(v11, v15, v16);
    if (v14)
    {
      v20 = v17 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      v21 = v17;
      v9 = sub_1AF1B7A3C(v14, &v27);
      if (v9)
      {
        LOBYTE(v9) = sub_1AF1B7A3C(v21, v26);
        v19 = v26[0];
        v18 = v26[1];
      }
    }

    v22 = vminnmq_f32(vsubq_f32(v27, v28), vsubq_f32(v19, v18));
    v23 = vmaxnmq_f32(vaddq_f32(v27, v28), vaddq_f32(v19, v18));
    v24.i64[0] = 0x3F0000003F000000;
    v24.i64[1] = 0x3F0000003F000000;
    *box = vmulq_f32(vaddq_f32(v22, v23), v24);
    *(box + 1) = vmulq_f32(vsubq_f32(v23, v22), v24);
  }

  return v9;
}

- (id)dependencyNodeAtIndex:(unint64_t)index
{
  if (index == 1)
  {
    v3 = &OBJC_IVAR___VFXModelWrapDeformer__outerLayerNode;
    return objc_loadWeak((&self->super.super.isa + *v3));
  }

  if (!index)
  {
    if (self->_isLegacySingleLayerDeformer)
    {
      v3 = &OBJC_IVAR___VFXModelWrapDeformer__legacyDrivingNode;
    }

    else
    {
      v3 = &OBJC_IVAR___VFXModelWrapDeformer__innerLayerNode;
    }

    return objc_loadWeak((&self->super.super.isa + *v3));
  }

  return 0;
}

- (id)newDeformerInstanceForNode:(id)node outputs:(unint64_t)outputs computeVertexCount:(unint64_t)count context:(id)context
{
  countCopy = count;
  if (self->_isLegacySingleLayerDeformer)
  {
    Weak = objc_loadWeak(&self->_legacyDrivingNode);
    v11 = [VFXModelWrapDeformerInstance alloc];

    return sub_1AFDE1940(v11, node, Weak, self, v12, countCopy, context);
  }

  else
  {
    v14 = objc_loadWeak(&self->_innerLayerNode);
    v15 = objc_loadWeak(&self->_outerLayerNode);
    v16 = [VFXModelWrapDeformerInstance alloc];

    return sub_1AFDE1C14(v16, node, v14, v15, self, v17, countCopy, context);
  }
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  if (operation != 1)
  {
    v11[11] = v4;
    v11[12] = v5;
    Weak = objc_loadWeak(&self->_innerLayerNode);
    v9 = objc_loadWeak(&self->_outerLayerNode);
    if (Weak)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF1E0D6C;
      v11[3] = &unk_1E7A7C0C8;
      v11[4] = self;
      (*(block + 2))(block, Weak, 1, v11);
    }

    if (v9)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = sub_1AF1E0D80;
      v10[3] = &unk_1E7A7C0C8;
      v10[4] = self;
      (*(block + 2))(block, v9, 1, v10);
    }
  }
}

@end