@interface VFXAssetNode
+ (id)assetNodeWithAsset:(id)asset;
+ (id)group;
- (BOOL)_childNodesPassingTest:(id)test recursively:(BOOL)recursively output:(id)output;
- (BOOL)_enumerateChildNodesUsingBlock:(id)block;
- (NSArray)childNodes;
- (NSString)description;
- (NSString)name;
- (VFXAsset)asset;
- (VFXAssetNode)init;
- (VFXAssetNode)initWithCoder:(id)coder;
- (__CFXWorld)worldRef;
- (id)childNodeWithAssetName:(id)name;
- (id)childNodeWithName:(id)name;
- (id)childNodesPassingTest:(id)test recursively:(BOOL)recursively;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)enclosingPrefab;
- (id)identifier;
- (id)initPresentation:(id)presentation;
- (id)presentationObject;
- (id)registry;
- (id)script_instantiate:(BOOL)script_instantiate;
- (void)_removeChild:(id)child;
- (void)addChildNode:(id)node;
- (void)addWorldReference:(id)reference;
- (void)copyTo:(id)to withContext:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateChildNodesUsingBlock:(id)block;
- (void)enumerateHierarchyUsingBlock:(id)block;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)insertChildNode:(id)node atIndex:(unint64_t)index;
- (void)removeFromParentNode;
- (void)setChildNodes:(id)nodes;
- (void)setIdentifier:(id)identifier;
- (void)setName:(id)name;
- (void)setWorld:(id)world;
- (void)setupChildsArrayIfNeeded;
@end

@implementation VFXAssetNode

- (VFXAssetNode)init
{
  v9.receiver = self;
  v9.super_class = VFXAssetNode;
  v4 = [(VFXAssetNode *)&v9 init];
  if (v4)
  {
    v5 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v2, v3);
    v4->_identifier = objc_msgSend_UUIDString(v5, v6, v7);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXAssetNode;
  [(VFXAssetNode *)&v3 dealloc];
}

- (id)initPresentation:(id)presentation
{
  v17.receiver = self;
  v17.super_class = VFXAssetNode;
  v4 = [(VFXAssetNode *)&v17 init];
  v7 = v4;
  if (v4)
  {
    *(v4 + 64) |= 1u;
    v4->_asset = objc_msgSend_asset(presentation, v5, v6);
    v7->_isGroup = objc_msgSend_isGroup(presentation, v8, v9);
    v7->_prefab = objc_msgSend_isPrefab(presentation, v10, v11);
    v7->_name = objc_msgSend_name(presentation, v12, v13);
    v7->_identifier = objc_msgSend_identifier(presentation, v14, v15);
    v7->_world = *(presentation + 7);
  }

  return v7;
}

- (id)presentationObject
{
  v3 = [VFXAssetNode alloc];
  inited = objc_msgSend_initPresentation_(v3, v4, self);

  return inited;
}

- (NSString)description
{
  if (self->_isGroup)
  {
    asset = @"group";
  }

  else
  {
    asset = self->_asset;
  }

  return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"<VFXAssetNode %p: %@ - asset: %@>", self, self->_name, asset);
}

- (id)identifier
{
  if (!self->_identifier)
  {
    v3 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF4828(v3);
    }
  }

  return self->_identifier;
}

- (id)registry
{
  v3 = objc_msgSend_world(self, a2, v2);

  return objc_msgSend_assetRegistry(v3, v4, v5);
}

- (void)setIdentifier:(id)identifier
{
  if (!identifier)
  {
    v5 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF48AC(v5);
    }
  }

  self->_identifier = identifier;
}

- (void)copyTo:(id)to withContext:(id)context
{
  *(to + 16) = self->_isGroup;
  *(to + 17) = self->_prefab;
  v7 = objc_msgSend_name(self, a2, to);
  objc_msgSend_setName_(to, v8, v7);
  v11 = objc_msgSend_asset(self, v9, v10);
  *(to + 1) = sub_1AF2BED30(v11, context);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_withContext_(self, v5, v4, 0);
  return v4;
}

- (id)clone
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_copy(self, a2, v2);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = objc_msgSend_childNodes(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v18, v22, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = objc_msgSend_clone(*(*(&v18 + 1) + 8 * v14), v10, v11);
        objc_msgSend_addChildNode_(v4, v16, v15);
        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v18, v22, 16);
    }

    while (v12);
  }

  return v4;
}

+ (id)assetNodeWithAsset:(id)asset
{
  v4 = objc_alloc_init(VFXAssetNode);
  v4->_asset = asset;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *&v4->_isGroup = 257;
  }

  return v4;
}

+ (id)group
{
  result = objc_alloc_init(VFXAssetNode);
  *(result + 16) = 1;
  return result;
}

- (NSArray)childNodes
{
  v3 = objc_msgSend_copy(self->_children, a2, v2);
  if (objc_msgSend_count(v3, v4, v5))
  {
    return v3;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)setChildNodes:(id)nodes
{
  v33 = *MEMORY[0x1E69E9840];
  children = self->_children;
  if (children)
  {
    v6 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFA8], a2, children);
  }

  else
  {
    v6 = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(nodes, a2, &v27, v32, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(nodes);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        objc_msgSend_removeObject_(v6, v8, v12);
        if (v12[5] != self)
        {
          objc_msgSend_removeFromParent(v12, v8, v13);
          v12[5] = self;
          objc_msgSend_setWorld_(v12, v14, self->_world);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(nodes, v8, &v27, v32, 16);
    }

    while (v9);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v23, v31, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v24;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v6);
        }

        v21 = *(*(&v23 + 1) + 8 * j);
        v21[5] = 0;
        objc_msgSend_setWorld_(v21, v16, self->_world);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v16, &v23, v31, 16);
    }

    while (v18);
  }

  objc_msgSend_setupChildsArrayIfNeeded(self, v16, v17);
  objc_msgSend_setArray_(self->_children, v22, nodes);
}

- (void)setupChildsArrayIfNeeded
{
  if (!self->_children)
  {
    self->_children = objc_alloc_init(MEMORY[0x1E695DF70]);
  }
}

- (void)addChildNode:(id)node
{
  if (*(node + 5))
  {
    objc_msgSend_removeFromParent(node, a2, node);
  }

  *(node + 5) = self;
  objc_msgSend_setWorld_(node, a2, self->_world);
  objc_msgSend_setupChildsArrayIfNeeded(self, v5, v6);
  children = self->_children;

  objc_msgSend_addObject_(children, v7, node);
}

- (void)insertChildNode:(id)node atIndex:(unint64_t)index
{
  if (*(node + 5))
  {
    objc_msgSend_removeFromParent(node, a2, node);
  }

  objc_msgSend_setWorld_(node, a2, self->_world);
  *(node + 5) = self;
  objc_msgSend_setupChildsArrayIfNeeded(self, v7, v8);
  children = self->_children;

  objc_msgSend_insertObject_atIndex_(children, v9, node, index);
}

- (void)_removeChild:(id)child
{
  objc_msgSend_setWorld_(child, a2, 0);
  children = self->_children;

  objc_msgSend_removeObject_(children, v5, child);
}

- (void)removeFromParentNode
{
  v4 = objc_msgSend_parentNode(self, a2, v2);
  objc_msgSend__removeChild_(v4, v5, self);
  self->_parent = 0;
}

- (BOOL)_childNodesPassingTest:(id)test recursively:(BOOL)recursively output:(id)output
{
  recursivelyCopy = recursively;
  v26 = *MEMORY[0x1E69E9840];
  v24 = 0;
  if ((*(test + 2))(test, self, &v24))
  {
    objc_msgSend_addObject_(output, v9, self);
  }

  if (recursivelyCopy && (v24 & 1) == 0 && (v22 = 0u, v23 = 0u, v20 = 0u, v21 = 0u, v11 = objc_msgSend_childNodes(self, v9, v10, 0), (v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v20, v25, 16)) != 0))
  {
    v15 = v13;
    v16 = *v21;
LABEL_7:
    v17 = 0;
    while (1)
    {
      if (*v21 != v16)
      {
        objc_enumerationMutation(v11);
      }

      v18 = 1;
      v24 = objc_msgSend__childNodesPassingTest_recursively_output_(*(*(&v20 + 1) + 8 * v17), v14, test, 1, output);
      if (v24)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v20, v25, 16);
        if (v15)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v18 = v24;
  }

  return v18 & 1;
}

- (id)childNodesPassingTest:(id)test recursively:(BOOL)recursively
{
  recursivelyCopy = recursively;
  v23 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, test);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = objc_msgSend_childNodes(self, v8, v9, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v18, v22, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v19;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v19 != v15)
      {
        objc_enumerationMutation(v10);
      }

      if (objc_msgSend__childNodesPassingTest_recursively_output_(*(*(&v18 + 1) + 8 * v16), v13, test, recursivelyCopy, v7))
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v18, v22, 16);
        if (v14)
        {
          goto LABEL_3;
        }

        return v7;
      }
    }
  }

  return v7;
}

- (BOOL)_enumerateChildNodesUsingBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0;
  (*(block + 2))(block, self, &v20);
  if ((v20 & 1) == 0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = objc_msgSend_childNodes(self, v5, v6, 0);
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v16, v21, 16);
    if (v9)
    {
      v11 = v9;
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v20 = objc_msgSend__enumerateChildNodesUsingBlock_(*(*(&v16 + 1) + 8 * i), v10, block);
          if (v20)
          {
            v14 = 1;
            return v14 & 1;
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v16, v21, 16);
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  v14 = v20;
  return v14 & 1;
}

- (void)enumerateChildNodesUsingBlock:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = objc_msgSend_childNodes(self, a2, block, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v11, v15, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v12;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v12 != v9)
      {
        objc_enumerationMutation(v4);
      }

      if (objc_msgSend__enumerateChildNodesUsingBlock_(*(*(&v11 + 1) + 8 * v10), v7, block))
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v11, v15, 16);
        if (v8)
        {
          goto LABEL_3;
        }

        return;
      }
    }
  }
}

- (void)enumerateHierarchyUsingBlock:(id)block
{
  v6 = 0;
  (*(block + 2))(block, self, &v6);
  if ((v6 & 1) == 0)
  {
    objc_msgSend_enumerateChildNodesUsingBlock_(self, v5, block);
  }
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  asset = self->_asset;
  if (asset)
  {
    (*(block + 2))(block, asset, 0, 0);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  children = self->_children;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(children, asset, &v13, v17, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(children);
        }

        (*(block + 2))(block, *(*(&v13 + 1) + 8 * v11++), 0, 0);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(children, v12, &v13, v17, 16);
    }

    while (v9);
  }
}

- (void)addWorldReference:(id)reference
{
  if (self->_world != reference)
  {
    objc_msgSend_setWorld_(self, a2, reference);
  }
}

- (void)setWorld:(id)world
{
  world = self->_world;
  if (world != world)
  {
    v9[9] = v3;
    v9[10] = v4;
    if (world)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF29A394;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF29A3F4;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (__CFXWorld)worldRef
{
  v3 = objc_msgSend___CFObject(self, a2, v2);

  return sub_1AF1C3FAC(v3, v4);
}

- (id)childNodeWithAssetName:(id)name
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_1AF29A564;
  v10 = sub_1AF29A574;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF29A580;
  v5[3] = &unk_1E7A7E4B0;
  v5[4] = name;
  v5[5] = &v6;
  objc_msgSend_enumerateChildNodesUsingBlock_(self, a2, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)childNodeWithName:(id)name
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_1AF29A564;
  v10 = sub_1AF29A574;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF29A6BC;
  v5[3] = &unk_1E7A7E4B0;
  v5[4] = name;
  v5[5] = &v6;
  objc_msgSend_enumerateChildNodesUsingBlock_(self, a2, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)enclosingPrefab
{
  while (1)
  {
    selfCopy = self;
    if (!self || (objc_msgSend_isPrefab(self, a2, v2) & 1) != 0)
    {
      break;
    }

    self = objc_msgSend_parentNode(selfCopy, v4, v5);
  }

  return selfCopy;
}

- (NSString)name
{
  asset = self->_asset;
  if (asset)
  {
    return objc_msgSend_name(asset, a2, v2);
  }

  else
  {
    return self->_name;
  }
}

- (void)setName:(id)name
{
  asset = self->_asset;
  if (asset)
  {

    objc_msgSend_setName_(asset, a2, name);
  }

  else
  {
    name = self->_name;
    if (name != name)
    {

      self->_name = name;
    }
  }
}

- (VFXAsset)asset
{
  if ((*(self + 64) & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return self->_asset;
  }

  asset = self->_asset;

  return objc_msgSend_presentationObject(asset, v3, v4);
}

- (VFXAssetNode)initWithCoder:(id)coder
{
  v49[8] = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = VFXAssetNode;
  v5 = [(VFXAssetNode *)&v46 init];
  if (!v5)
  {
    return v5;
  }

  v5->_isGroup = objc_msgSend_decodeBoolForKey_(coder, v4, @"isGroup");
  v5->_prefab = objc_msgSend_decodeBoolForKey_(coder, v6, @"isPrefab");
  v7 = objc_opt_class();
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v8, v7, @"identifier");
  if (!v10)
  {
    v11 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v9, 0);
    v10 = objc_msgSend_UUIDString(v11, v12, v13);
  }

  objc_msgSend_setIdentifier_(v5, v9, v10);
  if (v5->_isGroup && !v5->_prefab)
  {
    v14 = objc_opt_class();
    v5->_name = objc_msgSend_decodeObjectOfClass_forKey_(coder, v15, v14, @"name");
  }

  v16 = MEMORY[0x1E695DFD8];
  v49[0] = objc_opt_class();
  v49[1] = objc_opt_class();
  v49[2] = objc_opt_class();
  v49[3] = objc_opt_class();
  v49[4] = objc_opt_class();
  v49[5] = objc_opt_class();
  v49[6] = objc_opt_class();
  v49[7] = objc_opt_class();
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v17, v49, 8);
  v20 = objc_msgSend_setWithArray_(v16, v19, v18);
  v5->_asset = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v21, v20, @"asset");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v22 = 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    v22 = objc_msgSend_mesh(v5->_asset, v23, v24);
  }

  v5->_asset = v22;
LABEL_12:
  v25 = MEMORY[0x1E695DFD8];
  v48[0] = objc_opt_class();
  v48[1] = objc_opt_class();
  v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v26, v48, 2);
  v29 = objc_msgSend_setWithArray_(v25, v28, v27);
  v31 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v30, v29, @"childNodes");
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v42, v47, 16);
  if (v33)
  {
    v36 = v33;
    v37 = *v43;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v43 != v37)
        {
          objc_enumerationMutation(v31);
        }

        v39 = *(*(&v42 + 1) + 8 * i);
        if ((objc_msgSend_isGroup(v39, v34, v35) & 1) != 0 || objc_msgSend_asset(v39, v34, v40))
        {
          objc_msgSend_addChildNode_(v5, v34, v39);
        }
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v34, &v42, v47, 16);
    }

    while (v36);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_identifier, @"identifier");
  if (self->_isGroup)
  {
    objc_msgSend_encodeBool_forKey_(coder, v5, 1, @"isGroup");
    if (self->_prefab)
    {
      objc_msgSend_encodeBool_forKey_(coder, v6, 1, @"isPrefab");
    }

    else
    {
      objc_msgSend_encodeObject_forKey_(coder, v6, self->_name, @"name");
    }
  }

  asset = self->_asset;
  if (asset)
  {
    objc_msgSend_encodeObject_forKey_(coder, v5, asset, @"asset");
  }

  children = self->_children;
  if (children)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = objc_msgSend_options(coder, v9, v10);
      v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, @"VFXWorldExportOptimize");
      if (objc_msgSend_BOOLValue(v13, v14, v15))
      {
        children = objc_msgSend_VFX_compactMapObjectsUsingBlock_(self->_children, v9, &unk_1F24EBF18);
      }
    }

    objc_msgSend_encodeObject_forKey_(coder, v9, children, @"childNodes");
  }
}

- (id)script_instantiate:(BOOL)script_instantiate
{
  script_instantiateCopy = script_instantiate;
  objc_msgSend_asset(self, a2, script_instantiate);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v7 = objc_msgSend_asset(self, v5, v6);
  v9 = objc_msgSend_instantiate_(v7, v8, script_instantiateCopy);
  v12 = objc_msgSend_world(self, v10, v11);
  v15 = objc_msgSend_rootNode(v12, v13, v14);
  objc_msgSend_addChildNode_(v15, v16, v9);
  objc_msgSend_setHidden_(v9, v17, 0);
  return v9;
}

@end