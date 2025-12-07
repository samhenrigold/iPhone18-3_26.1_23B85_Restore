@interface VFXCoreEntityHandle
+ (VFXCoreEntityHandle)handleWithEntityObject:(id)object;
+ (id)presentationHandleWithCFXCoreEntityHandle:(__CFXCoreEntityHandle *)handle;
+ (id)presentationHandleWithEntityObject:(id)object;
- (BOOL)setBindingData:(id)data forKey:(id)key;
- (BOOL)setBindingValue:(id)value forKey:(id)key;
- (BOOL)setBindingValue:(void *)value size:(unint64_t)size forKey:(id)key;
- (NSArray)bindings;
- (NSString)description;
- (VFXCoreEntityHandle)initWithCoder:(id)coder;
- (VFXCoreEntityHandle)initWithCoreEntityHandleRef:(__CFXCoreEntityHandle *)ref;
- (VFXCoreEntityHandle)initWithEntityObject:(id)object;
- (VFXCoreEntityHandle)initWithTag:(id)tag;
- (VFXWorld)world;
- (_TtC3VFX15VFXEntityObject)entityObject;
- (_TtC3VFX20EntityPropertyHelper)entityHelper;
- (__CFXWorld)worldRef;
- (id)_bindingNames:(BOOL)names;
- (id)bindingDataForKey:(id)key;
- (id)bindingForKey:(id)key;
- (id)bindingPresentationValueForKey:(id)key;
- (id)bindingValueForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationBindingForKey:(id)key;
- (id)valueForKeyPath:(id)path;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)addWorldReference:(id)reference;
- (void)dealloc;
- (void)didAttachToWorld:(id)world;
- (void)didDetachFromWorld:(id)world;
- (void)didSetEntityObject;
- (void)encodeWithCoder:(id)coder;
- (void)removeWorldReference:(id)reference;
- (void)resolveTag:(id)tag remap:(id)remap;
- (void)setTag:(id)tag;
- (void)setValue:(id)value forKeyPath:(id)path;
- (void)setWorld:(id)world;
@end

@implementation VFXCoreEntityHandle

- (_TtC3VFX20EntityPropertyHelper)entityHelper
{
  if (self->_isPresentationObject)
  {
    return sub_1AF16A4C8(self->_handle, a2, v2);
  }

  else
  {
    return objc_msgSend_properties(self->_entityObject, a2, v2);
  }
}

- (void)didSetEntityObject
{
  v3 = objc_msgSend_entityHelper(self, a2, v2);

  MEMORY[0x1EEE66B58](v3, sel_setBeamed, v4);
}

- (VFXCoreEntityHandle)initWithEntityObject:(id)object
{
  v15.receiver = self;
  v15.super_class = VFXCoreEntityHandle;
  v4 = [(VFXCoreEntityHandle *)&v15 init];
  if (v4)
  {
    v4->_entityObject = object;
    v7 = objc_msgSend_tag(object, v5, v6);
    v4->_tag = v7;
    v9 = sub_1AF16A5D0(v7, v8);
    v4->_handle = v9;
    if (v9)
    {
      sub_1AF16CDFC(v9, v4);
    }

    objc_msgSend__updateModelFromPresentation(v4, v10, v11);
    objc_msgSend_didSetEntityObject(v4, v12, v13);
  }

  return v4;
}

- (VFXCoreEntityHandle)initWithCoreEntityHandleRef:(__CFXCoreEntityHandle *)ref
{
  v7.receiver = self;
  v7.super_class = VFXCoreEntityHandle;
  v4 = [(VFXCoreEntityHandle *)&v7 init];
  if (v4)
  {
    if (ref)
    {
      v5 = CFRetain(ref);
    }

    else
    {
      v5 = 0;
    }

    v4->_handle = v5;
  }

  return v4;
}

+ (VFXCoreEntityHandle)handleWithEntityObject:(id)object
{
  v4 = objc_msgSend_handle(object, a2, object);
  if (!v4)
  {
    v5 = [VFXCoreEntityHandle alloc];
    v4 = objc_msgSend_initWithEntityObject_(v5, v6, object);
    objc_msgSend_setHandle_(object, v7, v4);
  }

  return v4;
}

+ (id)presentationHandleWithEntityObject:(id)object
{
  v4 = [VFXCoreEntityHandle alloc];
  result = objc_msgSend_initWithEntityObject_(v4, v5, object);
  *(result + 36) = 1;
  return result;
}

+ (id)presentationHandleWithCFXCoreEntityHandle:(__CFXCoreEntityHandle *)handle
{
  v4 = [VFXCoreEntityHandle alloc];
  result = objc_msgSend_initWithCoreEntityHandleRef_(v4, v5, handle);
  *(result + 36) = 1;
  return result;
}

- (VFXCoreEntityHandle)initWithTag:(id)tag
{
  v9.receiver = self;
  v9.super_class = VFXCoreEntityHandle;
  v4 = [(VFXCoreEntityHandle *)&v9 init];
  if (v4)
  {
    tagCopy = tag;
    v4->_tag = tagCopy;
    v7 = sub_1AF16A5D0(tagCopy, v6);
    v4->_handle = v7;
    if (v7)
    {
      sub_1AF16CDFC(v7, v4);
    }
  }

  return v4;
}

- (void)dealloc
{
  handle = self->_handle;
  if (handle)
  {
    sub_1AF16CDFC(handle, 0);
    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v4, self->_handle);
  }

  entityObject = self->_entityObject;
  if (entityObject)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1AF2BF450;
    block[3] = &unk_1E7A7A770;
    block[4] = entityObject;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v6.receiver = self;
  v6.super_class = VFXCoreEntityHandle;
  [(VFXCoreEntityHandle *)&v6 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"<%@: %p>", v5, self);
}

- (void)_updateModelFromPresentation
{
  v35 = *MEMORY[0x1E69E9840];

  self->_bindings = 0;
  v5 = objc_msgSend_entityHelper(self, v3, v4);
  v8 = objc_msgSend_bindings(v5, v6, v7);
  if (v8)
  {
    v9 = v8;
    v10 = objc_alloc(MEMORY[0x1E695DF90]);
    v13 = objc_msgSend_count(v9, v11, v12);
    self->_bindings = objc_msgSend_initWithCapacity_(v10, v14, v13);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v15, &v30, v34, 16);
    if (v16)
    {
      v17 = v16;
      v18 = *v31;
      do
      {
        v19 = 0;
        do
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v9);
          }

          v20 = *(*(&v30 + 1) + 8 * v19);
          v21 = [VFXBindingWrapper alloc];
          v23 = objc_msgSend_initWithBinding_coreEntityHandle_(v21, v22, v20, self);
          bindings = self->_bindings;
          v27 = objc_msgSend_bindingName(v20, v25, v26);
          objc_msgSend_setValue_forKey_(bindings, v28, v23, v27);

          ++v19;
        }

        while (v17 != v19);
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v29, &v30, v34, 16);
      }

      while (v17);
    }
  }
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2BF6A0;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)setTag:(id)tag
{
  if ((objc_msgSend_isEqual_(tag, a2, self->_tag) & 1) == 0)
  {

    self->_tag = objc_msgSend_copy(tag, v5, v6);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF2BF868;
    v8[3] = &unk_1E7A7E1D0;
    v8[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
  }
}

- (void)resolveTag:(id)tag remap:(id)remap
{
  if (!self->_entityObject)
  {
    p_tag = &self->_tag;
    v8 = objc_msgSend_objectForKey_(remap, a2, self->_tag);
    v10 = *p_tag;
    if (v8)
    {
      objc_msgSend_setTag_(self, v9, v8);
      v12 = objc_msgSend_fetchEntityObjectWithTag_(tag, v11, self->_tag);
      self->_entityObject = v12;
      if (!v12)
      {
        v14 = sub_1AF0D5194(0, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF5384();
        }
      }
    }

    else
    {
      v15 = objc_msgSend_fetchEntityObjectWithTag_(tag, v9, self->_tag);
      self->_entityObject = v15;
      if (v15)
      {
        v18 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v16, v17);
        v21 = objc_msgSend_UUIDString(v18, v19, v20);
        objc_msgSend_setTag_(self, v22, v21);
        v25 = objc_msgSend_tag(self->_entityObject, v23, v24);
        objc_msgSend_didRenameTag_to_(tag, v26, v25, self->_tag);
        objc_msgSend_setTag_(self->_entityObject, v27, self->_tag);
      }

      else
      {
        v29 = sub_1AF0D5194(0, v16);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF53FC();
        }
      }

      objc_msgSend_setObject_forKey_(remap, v28, *p_tag, v10);
    }

    objc_msgSend__updateModelFromPresentation(self, v30, v31);
    objc_msgSend_didSetEntityObject(self, v32, v33);
  }
}

- (_TtC3VFX15VFXEntityObject)entityObject
{
  if (self->_isPresentationObject && (byte_1EB658859 & 1) == 0)
  {
    byte_1EB658859 = 1;
    v3 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF5474();
    }
  }

  return self->_entityObject;
}

- (void)didAttachToWorld:(id)world
{
  if (self->_handle)
  {
    v5 = objc_msgSend_worldRef(world, a2, world);
    handle = self->_handle;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1AF2BFB1C;
    v12[3] = &unk_1E7A7E6A0;
    v12[4] = handle;
    v12[5] = v5;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v12);
  }

  if (!self->_muteWorldChange && self->_entityObject)
  {
    v8 = objc_msgSend_scene(world, a2, world);
    objc_msgSend_addEntityObject_(v8, v9, self->_entityObject);
    objc_msgSend_invalidateHelper(self, v10, v11);
  }

  objc_msgSend__updateModelFromPresentation(self, a2, world);
}

- (void)didDetachFromWorld:(id)world
{
  handle = self->_handle;
  if (handle)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF2BFC30;
    v10[3] = &unk_1E7A7E6C0;
    v10[4] = handle;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v10);
  }

  if (!self->_muteWorldChange)
  {
    if (self->_entityObject)
    {
      v6 = objc_msgSend_scene(world, a2, world);
      objc_msgSend_removeEntityObject_(v6, v7, self->_entityObject);
      objc_msgSend_invalidateHelper(self, v8, v9);
    }
  }
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
        sub_1AFDF54B4(self, p_world, v7);
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
      v11[2] = sub_1AF2BFE34;
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
      v10[2] = sub_1AF2BFE94;
      v10[3] = &unk_1E7A7E428;
      v10[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, v9, 1, v10);
    }
  }
}

- (VFXWorld)world
{
  if (!self->_isPresentationObject)
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

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_isPresentationObject)
  {
    v3 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF5530();
    }

    return 0;
  }

  else
  {
    entityObject = self->_entityObject;
    v9 = [VFXCoreEntityHandle alloc];
    if (entityObject)
    {
      v11 = objc_msgSend_copy(self->_entityObject, v7, v8);

      return objc_msgSend_initWithEntityObject_(v9, v10, v11);
    }

    else
    {
      v13 = objc_msgSend_copy(self->_tag, v7, v8);

      return objc_msgSend_initWithTag_(v9, v12, v13);
    }
  }
}

- (NSArray)bindings
{
  if (!self->_isPresentationObject)
  {
    objc_msgSend__updateModelFromPresentation(self, a2, v2);
  }

  result = objc_msgSend_allValues(self->_bindings, a2, v2);
  if (!result)
  {
    return MEMORY[0x1E695E0F0];
  }

  return result;
}

- (id)_bindingNames:(BOOL)names
{
  if (!self->_isPresentationObject)
  {
    objc_msgSend__updateModelFromPresentation(self, a2, names);
  }

  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  v8 = objc_msgSend_count(self->_bindings, v6, v7);
  v10 = objc_msgSend_initWithCapacity_(v5, v9, v8);
  bindings = self->_bindings;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1AF2C0158;
  v14[3] = &unk_1E7A7E6E8;
  namesCopy = names;
  v14[4] = v10;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(bindings, v12, v14);
  return v10;
}

- (id)bindingValueForKey:(id)key
{
  if (self->_isPresentationObject)
  {

    return objc_msgSend_bindingPresentationValueForKey_(self, a2, key);
  }

  else
  {
    v5 = objc_msgSend___bindings(self, a2, key);
    result = objc_msgSend_valueForKey_(v5, v6, key);
    if (result)
    {

      return sub_1AF2C023C(result, v7, v8);
    }
  }

  return result;
}

- (id)bindingForKey:(id)key
{
  v4 = objc_msgSend___bindings(self, a2, key);

  return objc_msgSend_valueForKey_(v4, v5, key);
}

- (id)presentationBindingForKey:(id)key
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_entityHelper(self, a2, key);
  v7 = objc_msgSend_bindings(v4, v5, v6);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v19, v23, 16);
  if (!v9)
  {
    return 0;
  }

  v12 = v9;
  v13 = *v20;
LABEL_3:
  v14 = 0;
  while (1)
  {
    if (*v20 != v13)
    {
      objc_enumerationMutation(v7);
    }

    v15 = *(*(&v19 + 1) + 8 * v14);
    v16 = objc_msgSend_bindingName(v15, v10, v11);
    if (objc_msgSend_isEqualToString_(v16, v17, key))
    {
      return v15;
    }

    if (v12 == ++v14)
    {
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v19, v23, 16);
      if (v12)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)bindingPresentationValueForKey:(id)key
{
  result = objc_msgSend_presentationBindingForKey_(self, a2, key);
  if (result)
  {

    return sub_1AF2C023C(result, v4, v5);
  }

  return result;
}

- (BOOL)setBindingValue:(id)value forKey:(id)key
{
  v7 = objc_msgSend___bindings(self, a2, value);
  v9 = objc_msgSend_valueForKey_(v7, v8, key);
  v12 = v9;
  if (v9 && !objc_msgSend_type(v9, v10, v11))
  {
    v19 = objc_msgSend_dataUsingEncoding_(value, v10, 4);
    goto LABEL_7;
  }

  v13 = objc_msgSend_type(v12, v10, v11);
  v15 = sub_1AF16A700(v13, v14);
  if (v15)
  {
    v16 = v15;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v19 = sub_1AF3711B4(value, v16, 0);
    if (isKindOfClass)
    {
      objc_msgSend_setRawValueNoReplication_(v12, v18, v19);
      v20 = sub_1AF3762E4(value, v16);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_1AF2C05DC;
      v23[3] = &unk_1E7A7E2E8;
      v23[4] = self;
      v23[5] = key;
      v23[6] = v20;
      objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v21, self, key, v23);
LABEL_8:
      LOBYTE(v15) = 1;
      return v15;
    }

LABEL_7:
    objc_msgSend_setRawValue_(v12, v18, v19);
    goto LABEL_8;
  }

  return v15;
}

- (id)bindingDataForKey:(id)key
{
  v4 = objc_msgSend___bindings(self, a2, key);
  result = objc_msgSend_valueForKey_(v4, v5, key);
  if (result)
  {

    return objc_msgSend_rawValue(result, v7, v8);
  }

  return result;
}

- (BOOL)setBindingValue:(void *)value size:(unint64_t)size forKey:(id)key
{
  v6 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], a2, value, size);

  return MEMORY[0x1EEE66B58](self, sel_setBindingData_forKey_, v6);
}

- (BOOL)setBindingData:(id)data forKey:(id)key
{
  v7 = objc_msgSend___bindings(self, a2, data);
  v9 = objc_msgSend_valueForKey_(v7, v8, key);
  v11 = v9;
  if (v9)
  {
    objc_msgSend_setRawValueNoReplication_(v9, v10, data);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1AF2C077C;
    v14[3] = &unk_1E7A7E3B0;
    v14[4] = self;
    v14[5] = key;
    v14[6] = data;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v12, self, key, v14);
  }

  return v11 != 0;
}

- (id)valueForKeyPath:(id)path
{
  v5 = objc_msgSend_entityHelper(self, a2, path);
  objc_msgSend_world(self, v6, v7);

  return MEMORY[0x1EEE66B58](v5, sel__valueForKeyPath_world_, path);
}

- (void)setValue:(id)value forKeyPath:(id)path
{
  v6 = objc_msgSend_entityHelper(self, a2, value);
  v8 = objc_msgSend__setValue_forKeyPath_(v6, v7, value, path);
  if ((v8 & 1) == 0)
  {
    v10 = sub_1AF0D5194(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF5570();
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_tag, @"tag");
  v7 = sub_1AF16AD60(self->_handle, v5, v6);
  if (v7)
  {
    v8 = v7;
    objc_msgSend_encodeObject_forKey_(coder, v8, v8, @"bindings");
  }
}

- (VFXCoreEntityHandle)initWithCoder:(id)coder
{
  v23.receiver = self;
  v23.super_class = VFXCoreEntityHandle;
  v6 = [(VFXCoreEntityHandle *)&v23 init];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    v9 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v10, v9, @"tag");
    *(v6 + 6) = v11;
    v13 = sub_1AF16A5D0(v11, v12);
    *(v6 + 2) = v13;
    v15 = sub_1AF373968(v13, v14);
    v17 = objc_msgSend_vfx_decodeArrayOfObjectsOfClasses_forKey_(coder, v16, v15, @"bindings");
    sub_1AF16AE94(*(v6 + 2), v17);
    v20 = *(v6 + 2);
    if (v20)
    {
      sub_1AF16CDFC(v20, v6);
    }

    objc_msgSend__updateModelFromPresentation(v6, v18, v19);
    objc_msgSend_setImmediateMode_(VFXTransaction, v21, v7);
  }

  return v6;
}

@end