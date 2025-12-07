@interface VFXCoreAsset
+ (id)assetWithEntityObject:(id)object;
- (BOOL)isHeader;
- (NSString)identifier;
- (VFXBehaviorGraph)behaviorGraph;
- (VFXCoreAsset)initWithCoder:(id)coder;
- (VFXCoreAsset)initWithEntityObject:(id)object;
- (VFXWorld)world;
- (__CFXWorld)worldRef;
- (id)copyWithZone:(_NSZone *)zone;
- (id)coreEntityHandle;
- (id)entityObject;
- (id)entityTag;
- (id)initPresentation:(id)presentation;
- (id)presentationObject;
- (void)__CFObject;
- (void)addWorldReference:(id)reference;
- (void)copyTo:(id)to withContext:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)removeWorldReference:(id)reference;
- (void)resolveTag:(id)tag remap:(id)remap;
- (void)setIsTextureSource:(BOOL)source;
- (void)setWorld:(id)world;
@end

@implementation VFXCoreAsset

- (VFXCoreAsset)initWithEntityObject:(id)object
{
  v12.receiver = self;
  v12.super_class = VFXCoreAsset;
  v4 = [(VFXCoreAsset *)&v12 init];
  if (v4)
  {
    v5 = [VFXCoreEntityHandle alloc];
    v7 = objc_msgSend_initWithEntityObject_(v5, v6, object);
    v9 = objc_msgSend_behaviorGraphWithEntityHandle_(VFXBehaviorGraph, v8, v7);
    objc_msgSend_setBehaviorGraph_(v4, v10, v9);
  }

  return v4;
}

- (id)initPresentation:(id)presentation
{
  v12.receiver = self;
  v12.super_class = VFXCoreAsset;
  v4 = [(VFXCoreAsset *)&v12 init];
  v7 = v4;
  if (v4)
  {
    *(v4 + 40) |= 1u;
    v4->_name = objc_msgSend_name(presentation, v5, v6);
    if (objc_msgSend_isTextureSource(presentation, v8, v9))
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    *(v7 + 40) = *(v7 + 40) & 0xFD | v10;
    v7->_behaviorGraph = *(presentation + 4);
  }

  return v7;
}

+ (id)assetWithEntityObject:(id)object
{
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithEntityObject_(v4, v5, object);

  return v6;
}

- (id)presentationObject
{
  selfCopy = self;
  if ((*(self + 40) & 1) == 0)
  {
    v3 = [VFXCoreAsset alloc];
    v5 = objc_msgSend_initPresentation_(v3, v4, selfCopy);

    v5[4] = selfCopy->_behaviorGraph;
    return v5;
  }

  return selfCopy;
}

- (void)setIsTextureSource:(BOOL)source
{
  if (source)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 40) = *(self + 40) & 0xFD | v3;
}

- (NSString)identifier
{
  v3 = objc_msgSend_behaviorGraph(self, a2, v2);

  return objc_msgSend_tag(v3, v4, v5);
}

- (id)entityTag
{
  v3 = objc_msgSend_behaviorGraph(self, a2, v2);

  return objc_msgSend_tag(v3, v4, v5);
}

- (id)entityObject
{
  v3 = objc_msgSend_behaviorGraph(self, a2, v2);

  return objc_msgSend_entityObject(v3, v4, v5);
}

- (id)coreEntityHandle
{
  v3 = objc_msgSend_behaviorGraph(self, a2, v2);

  return objc_msgSend_coreEntityHandle(v3, v4, v5);
}

- (void)resolveTag:(id)tag remap:(id)remap
{
  v6 = objc_msgSend_behaviorGraph(self, a2, tag);

  objc_msgSend_resolveTag_remap_(v6, v7, tag, remap);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXCoreAsset;
  [(VFXCoreAsset *)&v3 dealloc];
}

- (void)copyTo:(id)to withContext:(id)context
{
  v7 = objc_msgSend_name(self, a2, to);
  objc_msgSend_setName_(to, v8, v7);
  isTextureSource = objc_msgSend_isTextureSource(self, v9, v10);
  objc_msgSend_setIsTextureSource_(to, v12, isTextureSource);
  v15 = objc_msgSend_behaviorGraph(self, v13, v14);
  v17 = sub_1AF2BED30(v15, context);

  objc_msgSend_setBehaviorGraph_(to, v16, v17);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(VFXCopyContext);
  v5 = objc_alloc_init(objc_opt_class());
  sub_1AFDF50C8(v4, self, v5);
  objc_msgSend_copyTo_withContext_(self, v6, v5, v4);
  sub_1AFDF51FC(v4, v5);

  return v5;
}

- (VFXBehaviorGraph)behaviorGraph
{
  v3 = *(self + 40);
  result = self->_behaviorGraph;
  if (v3)
  {
    return objc_msgSend_presentationObject(result, a2, v2);
  }

  return result;
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  v5 = objc_msgSend_behaviorGraph(self, a2, operation);
  v6 = *(block + 2);

  v6(block, v5, 0, 0);
}

- (void)__CFObject
{
  v3 = objc_msgSend_behaviorGraph(self, a2, v2);

  return objc_msgSend___CFObject(v3, v4, v5);
}

- (void)addWorldReference:(id)reference
{
  world = self->_world;
  if (world == reference)
  {
    v5 = self->_worldReferenceCounter + 1;
  }

  else
  {
    if (world)
    {
      self->_worldReferenceCounter = 0;
    }

    objc_msgSend_setWorld_(self, a2, reference);
    v5 = 1;
  }

  self->_worldReferenceCounter = v5;
}

- (void)removeWorldReference:(id)reference
{
  p_world = &self->_world;
  if (!reference || self->_world == reference)
  {
    worldReferenceCounter = self->_worldReferenceCounter;
    if (worldReferenceCounter)
    {
      v6 = worldReferenceCounter - 1;
      self->_worldReferenceCounter = v6;
      if (!v6)
      {

        objc_msgSend_setWorld_(self, a2, 0);
      }
    }

    else
    {
      v7 = sub_1AF0D5194(self, a2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF4930(self, p_world, v7);
      }
    }
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
      v11[2] = sub_1AF29B7C0;
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
      v10[2] = sub_1AF29B820;
      v10[3] = &unk_1E7A7E428;
      v10[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, v9, 1, v10);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 40) & 1) == 0)
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

- (VFXCoreAsset)initWithCoder:(id)coder
{
  v26.receiver = self;
  v26.super_class = VFXCoreAsset;
  v5 = [(VFXCoreAsset *)&v26 init];
  if (v5)
  {
    if (objc_msgSend_containsValueForKey_(coder, v4, @"entityTag"))
    {
      v7 = objc_opt_class();
      v9 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v8, v7, @"entityTag");
      v10 = [VFXCoreEntityHandle alloc];
      v12 = objc_msgSend_initWithTag_(v10, v11, v9);
    }

    else
    {
      if (!objc_msgSend_containsValueForKey_(coder, v6, @"entityHandle"))
      {
        v18 = objc_opt_class();
        v16 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v19, v18, @"behaviorGraph");
        goto LABEL_8;
      }

      v14 = objc_opt_class();
      v12 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v15, v14, @"entityHandle");
    }

    v16 = objc_msgSend_behaviorGraphWithEntityHandle_(VFXBehaviorGraph, v13, v12);
LABEL_8:
    objc_msgSend_setBehaviorGraph_(v5, v17, v16);
    v20 = objc_opt_class();
    v5->_name = objc_msgSend_decodeObjectOfClass_forKey_(coder, v21, v20, @"name");
    v23 = objc_msgSend_decodeBoolForKey_(coder, v22, @"isTextureSource");
    objc_msgSend_setIsTextureSource_(v5, v24, v23);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  behaviorGraph = self->_behaviorGraph;
  if (behaviorGraph)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, behaviorGraph, @"behaviorGraph");
  }

  name = self->_name;
  if (name)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, name, @"name");
  }

  isTextureSource = objc_msgSend_isTextureSource(self, a2, name);

  objc_msgSend_encodeBool_forKey_(coder, v7, isTextureSource, @"isTextureSource");
}

- (BOOL)isHeader
{
  selfCopy = self;
  v3 = sub_1AFCEEC98();

  return v3;
}

@end