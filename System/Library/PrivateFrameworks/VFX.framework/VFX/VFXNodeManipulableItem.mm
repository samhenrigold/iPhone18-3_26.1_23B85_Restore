@interface VFXNodeManipulableItem
+ (id)nodeManipulatorItemWithNode:(id)node screenSize:(float)size;
+ (void)addItems:(id)items toWorld:(id)world;
+ (void)removeItemsFromWorld:(id)world;
- (id)cloneForManipulators;
- (id)parentItem;
- (uint64_t)scale;
- (void)initializeDraggedTransform;
- (void)setTransform:(__n128)transform;
- (void)setWorldTransform:(double)transform;
- (void)transform;
- (void)validateClone;
- (void)worldTransform;
@end

@implementation VFXNodeManipulableItem

+ (id)nodeManipulatorItemWithNode:(id)node screenSize:(float)size
{
  v6 = objc_alloc_init(VFXNodeManipulableItem);
  *&v7 = size;
  objc_msgSend_setScreenSize_(v6, v8, v9, v7);
  objc_msgSend_setNode_(v6, v10, node);

  return v6;
}

- (void)transform
{
  v3 = objc_msgSend_node(self, v1, v2);
  v6 = objc_msgSend_presentationNode(v3, v4, v5);

  return objc_msgSend_transform(v6, v7, v8);
}

- (void)initializeDraggedTransform
{
  v3 = self + 1;
  v4 = objc_msgSend_node(self, a2, v2);
  v7 = objc_msgSend_presentationNode(v4, v5, v6);
  objc_msgSend_transform(v7, v8, v9);
  *&v3->super.super.isa = v10;
  *&v3->super.node = v11;
  *&v3->super.elementIndex = v12;
  *v3->_anon_30 = v13;
}

- (void)setTransform:(__n128)transform
{
  v14 = a5.n128_f64[0];
  v12 = transform.n128_f64[0];
  v13 = a4.n128_f64[0];
  v11 = a2.n128_f64[0];
  self[7] = a2;
  self[8] = transform;
  self[9] = a4;
  self[10] = a5;
  v7 = objc_msgSend_node(self, v5, v6);

  return objc_msgSend_setTransform_(v7, v8, v9, v11, v12, v13, v14);
}

- (void)worldTransform
{
  v3 = objc_msgSend_node(self, v1, v2);
  v6 = objc_msgSend_presentationNode(v3, v4, v5);

  return objc_msgSend_worldTransform(v6, v7, v8);
}

- (void)setWorldTransform:(double)transform
{
  v8 = objc_msgSend_node(self, v5, v6);
  if (objc_msgSend_parentNode(v8, v9, v10))
  {
    v13 = objc_msgSend_node(self, v11, v12);
    v16 = objc_msgSend_parentNode(v13, v14, v15);
    objc_msgSend_convertTransform_fromNode_(v16, v17, 0, a2, transform, a4, a5);
  }

  else
  {
    v21 = a5;
    transformCopy = transform;
    v20 = a4;
    v18 = a2;
  }

  return objc_msgSend_setTransform_(self, v11, v12, v18, transformCopy, v20, v21);
}

- (uint64_t)scale
{
  v3 = objc_msgSend_node(self, a2, a3);
  v6 = objc_msgSend_presentationNode(v3, v4, v5);

  return objc_msgSend_scale(v6, v7, v8);
}

- (id)parentItem
{
  v4 = objc_msgSend_node(self, a2, v2);
  result = objc_msgSend_parentNode(v4, v5, v6);
  if (result)
  {
    v10 = objc_msgSend_node(self, v8, v9);
    v13 = objc_msgSend_parentNode(v10, v11, v12);
    objc_msgSend_screenSize(self, v14, v15);

    return objc_msgSend_nodeManipulatorItemWithNode_screenSize_(VFXNodeManipulableItem, v16, v13);
  }

  return result;
}

- (id)cloneForManipulators
{
  v4 = objc_msgSend_node(self, a2, v2);
  v7 = objc_msgSend_clone(v4, v5, v6);
  objc_msgSend_opacity(v7, v8, v9);
  *&v11 = v10 * 0.5;
  objc_msgSend_setOpacity_(v7, v12, v13, v11);
  objc_msgSend_setGizmo_(v7, v14, 1);
  v17 = objc_msgSend_node(self, v15, v16);
  objc_msgSend_convertTransform_toNode_(v17, v18, 0, *&VFXMatrix4Identity, 0.0078125, 0.0, 0.0);
  objc_msgSend_setTransform_(v7, v19, v20);
  objc_msgSend_screenSize(self, v21, v22);

  return objc_msgSend_nodeManipulatorItemWithNode_screenSize_(VFXNodeManipulableItem, v23, v7);
}

+ (void)addItems:(id)items toWorld:(id)world
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(items, a2, &v18, v22, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(items);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = objc_msgSend_rootNode(world, v7, v8);
        v16 = objc_msgSend_node(v12, v14, v15);
        objc_msgSend_addChildNode_(v13, v17, v16);
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(items, v7, &v18, v22, 16);
    }

    while (v9);
  }
}

+ (void)removeItemsFromWorld:(id)world
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(world, a2, &v13, v17, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(world);
        }

        v10 = objc_msgSend_node(*(*(&v13 + 1) + 8 * v9), v5, v6);
        objc_msgSend_removeFromParentNode(v10, v11, v12);
        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(world, v5, &v13, v17, 16);
    }

    while (v7);
  }
}

- (void)validateClone
{
  v4 = objc_msgSend_node(self, a2, v2);
  objc_msgSend_setGizmo_(v4, v5, 0);
  v8 = objc_msgSend_node(self, v6, v7);
  objc_msgSend_opacity(v8, v9, v10);
  *&v13 = *&v13 + *&v13;

  objc_msgSend_setOpacity_(v8, v11, v12, v13);
}

@end