@interface VFXPrefabAsset
+ (id)prefabWithNode:(id)node;
- (VFXPrefabAsset)init;
- (VFXPrefabAsset)initWithCoder:(id)coder;
- (VFXWorld)world;
- (__CFXWorld)worldRef;
- (id)copyWithZone:(_NSZone *)zone;
- (id)instantiate:(BOOL)instantiate;
- (void)addWorldReference:(id)reference;
- (void)copyTo:(id)to withContext:(id)context;
- (void)dealloc;
- (void)disableEntities:(id)entities;
- (void)encodeWithCoder:(id)coder;
- (void)setNode:(id)node;
- (void)setWorld:(id)world;
@end

@implementation VFXPrefabAsset

- (VFXPrefabAsset)init
{
  v3.receiver = self;
  v3.super_class = VFXPrefabAsset;
  return [(VFXPrefabAsset *)&v3 init];
}

+ (id)prefabWithNode:(id)node
{
  v4 = objc_alloc_init(VFXPrefabAsset);
  objc_msgSend_setHidden_(node, v5, 1);
  v4->_node = node;

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXPrefabAsset;
  [(VFXPrefabAsset *)&v3 dealloc];
}

- (void)setNode:(id)node
{
  if (self->_node != node)
  {
    v6 = objc_msgSend_world(self, a2, node);
    if (v6)
    {
      objc_msgSend_removeWorldReference_(self->_node, v5, v6);
    }

    nodeCopy = node;
    self->_node = nodeCopy;
    if (v6)
    {

      objc_msgSend_addWorldReference_(nodeCopy, v8, v6);
    }
  }
}

- (id)instantiate:(BOOL)instantiate
{
  node = self->_node;
  if (instantiate)
  {
    v4 = objc_msgSend_deepClone(node, a2, instantiate);
  }

  else
  {
    v4 = objc_msgSend_clone(node, a2, instantiate);
  }

  v6 = v4;
  objc_msgSend_enumerateHierarchyUsingBlock_(v4, v5, &unk_1F24EBF38);
  return v6;
}

- (void)disableEntities:(id)entities
{
  v3 = objc_msgSend_node(self, a2, entities);

  objc_msgSend_enumerateHierarchyUsingBlock_(v3, v4, &unk_1F24EBF58);
}

- (void)copyTo:(id)to withContext:(id)context
{
  v7 = objc_msgSend_node(self, a2, to);
  v9 = objc_msgSend_deepCloneWithContext_(v7, v8, context);
  objc_msgSend_setNode_(to, v10, v9);
  v14 = objc_msgSend_name(self, v11, v12);

  objc_msgSend_setName_(to, v13, v14);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(VFXCopyContext);
  v5 = objc_alloc_init(VFXPrefabAsset);
  sub_1AFDF50C8(v4, self, v5);
  objc_msgSend_copyTo_withContext_(self, v6, v5, 0);
  sub_1AFDF51FC(v4, v5);

  return v5;
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
    v11[9] = v3;
    v11[10] = v4;
    if (world)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF29C92C;
      v11[3] = &unk_1E7A7E428;
      v11[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v11);
      objc_msgSend_didDetachFromWorld_(self, v8, self->_world);
    }

    self->_world = world;
    if (world)
    {
      objc_msgSend_didAttachToWorld_(self, a2, world);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = sub_1AF29C98C;
      v10[3] = &unk_1E7A7E428;
      v10[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, v9, 1, v10);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 32) & 1) == 0)
  {
    return self->_world;
  }

  result = objc_msgSend_worldRef(self, a2, v2);
  if (result)
  {

    return sub_1AF16CDEC(&result->super.isa);
  }

  return result;
}

- (__CFXWorld)worldRef
{
  v3 = objc_msgSend___CFObject(self, a2, v2);

  return sub_1AF1C3FAC(v3, v4);
}

- (VFXPrefabAsset)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = VFXPrefabAsset;
  v4 = [(VFXPrefabAsset *)&v12 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"rootNode");
    objc_msgSend_setNode_(v4, v8, v7);
    v9 = objc_opt_class();
    v4->_name = objc_msgSend_decodeObjectOfClass_forKey_(coder, v10, v9, @"name");
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_node, @"rootNode");
  name = self->_name;

  objc_msgSend_encodeObject_forKey_(coder, v5, name, @"name");
}

@end