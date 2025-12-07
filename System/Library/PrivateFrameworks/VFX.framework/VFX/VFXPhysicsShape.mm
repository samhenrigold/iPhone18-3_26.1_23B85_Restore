@interface VFXPhysicsShape
+ (VFXPhysicsShape)shapeWithModel:(id)model;
+ (VFXPhysicsShape)shapeWithNode:(id)node flattened:(BOOL)flattened;
+ (VFXPhysicsShape)shapeWithShapes:(id)shapes transforms:(id)transforms;
+ (id)defaultShapeForModel:(id)model;
- (NSArray)shapes;
- (VFXModel)model;
- (VFXNode)shapeNode;
- (VFXPhysicsShape)init;
- (VFXPhysicsShape)initWithCoder:(id)coder;
- (VFXPhysicsShape)initWithContent:(id)content;
- (id)_shapeHandle:(__CFXNode *)handle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)scaleValue;
- (id)valueForKey:(id)key;
- (void)_customDecodingOfVFXPhysicsShape:(id)shape;
- (void)_customEncodingOfVFXPhysicsShape:(id)shape;
- (void)_setNodeScale:(VFXPhysicsShape *)self;
- (void)_setShapeObject:(id)object;
- (void)_updateScale;
- (void)commonInit;
- (void)copyTo:(id)to withContext:(id)context;
- (void)dealloc;
- (void)didAddToPhysicsBody:(id)body;
- (void)didChange;
- (void)didRemoveFromPhysicsBody:(id)body;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)invalidate;
- (void)setFlattened:(BOOL)flattened;
- (void)setMargin:(float)margin;
- (void)setModel:(id)model;
- (void)setScale:(VFXPhysicsShape *)self;
- (void)setScaleValue:(id)value;
- (void)setShapeNode:(id)node;
- (void)setShapes:(id)shapes;
- (void)setType:(int64_t)type;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation VFXPhysicsShape

- (id)scaleValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_scale(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_scale(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_scale(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (void)setScaleValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v21 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v20 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);

  objc_msgSend_setScale_(self, v18, v19, COERCE_DOUBLE(__PAIR64__(v20, v21)));
}

- (void)commonInit
{
  self->_physicsBodiesLock._os_unfair_lock_opaque = 0;
  self->_physicsBodies = CFArrayCreateMutable(0, 1, 0);
  __asm { FMOV            V0.4S, #1.0 }

  *self->_scale = _Q0;
  self->_margin = 0.0;
}

- (VFXPhysicsShape)initWithContent:(id)content
{
  v9.receiver = self;
  v9.super_class = VFXPhysicsShape;
  v4 = [(VFXPhysicsShape *)&v9 init];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_commonInit(v4, v5, v6);
    v7->_referenceObject = content;
  }

  return v7;
}

- (VFXPhysicsShape)init
{
  v7.receiver = self;
  v7.super_class = VFXPhysicsShape;
  v2 = [(VFXPhysicsShape *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_commonInit(v2, v3, v4);
  }

  return v5;
}

+ (VFXPhysicsShape)shapeWithModel:(id)model
{
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithContent_(v4, v5, model);

  return v6;
}

+ (VFXPhysicsShape)shapeWithNode:(id)node flattened:(BOOL)flattened
{
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithContent_(v6, v7, node);
  v8[80] = flattened;

  return v8;
}

+ (VFXPhysicsShape)shapeWithShapes:(id)shapes transforms:(id)transforms
{
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithContent_(v6, v7, shapes);
  objc_msgSend__setTransforms_(v8, v9, transforms);

  return v8;
}

- (void)didAddToPhysicsBody:(id)body
{
  os_unfair_lock_lock(&self->_physicsBodiesLock);
  CFArrayAppendValue(self->_physicsBodies, body);

  os_unfair_lock_unlock(&self->_physicsBodiesLock);
}

- (void)didRemoveFromPhysicsBody:(id)body
{
  os_unfair_lock_lock(&self->_physicsBodiesLock);
  physicsBodies = self->_physicsBodies;
  v9.length = CFArrayGetCount(physicsBodies);
  v9.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(physicsBodies, v9, body);
  if (FirstIndexOfValue == -1)
  {
    v8 = sub_1AF0D5194(-1, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA904();
    }
  }

  else
  {
    CFArrayRemoveValueAtIndex(self->_physicsBodies, FirstIndexOfValue);
  }

  os_unfair_lock_unlock(&self->_physicsBodiesLock);
}

- (void)didChange
{
  os_unfair_lock_lock(&self->_physicsBodiesLock);
  sub_1AF28A5FC(self->_physicsBodies, &unk_1F24EC4B8);

  os_unfair_lock_unlock(&self->_physicsBodiesLock);
}

- (void)invalidate
{
  self->_shape = 0;

  objc_msgSend_didChange(self, v3, v4);
}

- (void)setType:(int64_t)type
{
  if (self->_type != type)
  {
    self->_type = type;
    objc_msgSend_invalidate(self, a2, type);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXPhysicsShape;
  [(VFXPhysicsShape *)&v3 dealloc];
}

- (id)_shapeHandle:(__CFXNode *)handle
{
  result = self->_shape;
  if (!result)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objc_msgSend_modelRef(self->_referenceObject, v6, v7);
      isKindOfClass = sub_1AF35D594(v8, self->_type);
    }

    else
    {
      v10 = objc_msgSend_shapeNode(self, v6, v7);
      if (v10)
      {
        v13 = objc_msgSend_nodeRef(v10, v11, v12);
        isKindOfClass = sub_1AF35D5F8(v13, self->_type, self->_flattened);
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          isKindOfClass = sub_1AF35D808(self->_referenceObject, self->_transforms);
        }

        else if (!handle || ((v15 = sub_1AF1B75A0(handle, v14), type = self->_type, !v15) ? (isKindOfClass = sub_1AF35D5F8(handle, type, self->_flattened)) : (isKindOfClass = sub_1AF35D594(v15, type)), !isKindOfClass))
        {
          v17 = sub_1AF0D5194(isKindOfClass, v14);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDFA938();
          }

          isKindOfClass = 0;
        }
      }
    }

    result = isKindOfClass;
    self->_shape = result;
    if (result)
    {
      margin = self->_margin;
      if (margin != 0.0)
      {
        v21 = objc_msgSend_btShape(result, v18, v19);
        (*(*v21 + 88))(v21, margin);
        return self->_shape;
      }
    }
  }

  return result;
}

- (void)setScale:(VFXPhysicsShape *)self
{
  v3 = v2;
  if (*v2.i32 != 0.0)
  {
    v4 = vceqz_f32(vext_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL), 4uLL));
    if ((v4.i8[0] & 1) == 0 && (v4.i8[4] & 1) == 0)
    {
      v7 = v3;
      if ((VFXVector3EqualToVector3(*self->_scale, v3) & 1) == 0)
      {
        *self->_scale = v7;

        MEMORY[0x1EEE66B58](self, sel__updateScale, v6);
      }
    }
  }
}

- (void)_setNodeScale:(VFXPhysicsShape *)self
{
  v3 = v2;
  if (*v2.i32 != 0.0)
  {
    v4 = vceqz_f32(vext_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL), 4uLL));
    if ((v4.i8[0] & 1) == 0 && (v4.i8[4] & 1) == 0)
    {
      v7 = v3;
      if ((VFXVector3EqualToVector3(*self->_nodeScale, v3) & 1) == 0)
      {
        *self->_nodeScale = v7;

        MEMORY[0x1EEE66B58](self, sel__updateScale, v6);
      }
    }
  }
}

- (void)_updateScale
{
  shape = self->_shape;
  if (shape)
  {
    v5 = *self->_scale;
    v6 = vmulq_f32(v5, *self->_nodeScale);
    if (v6.f32[0] != 0.0)
    {
      v5.i32[0] = v6.i32[1];
      if (v6.f32[1] != 0.0)
      {
        v7 = v6.i32[2];
        if (v6.f32[2] != 0.0)
        {
          v9 = v6.i64[0];
          v8 = objc_msgSend_btShape(shape, a2, v2, *v5.i64);
          v10 = v9;
          v11 = v7;
          v12 = 0;
          (*(*v8 + 48))(v8, &v10);
        }
      }
    }

    objc_msgSend_didChange(self, a2, v2, *v5.i64);
  }
}

- (void)setMargin:(float)margin
{
  if (self->_margin != margin)
  {
    self->_margin = margin;
    shape = self->_shape;
    if (shape)
    {
      v6 = *(*objc_msgSend_btShape(shape, a2, v3) + 88);
      v7.n128_f32[0] = margin;

      v6(v7);
    }
  }
}

- (void)setFlattened:(BOOL)flattened
{
  if (self->_flattened != flattened)
  {
    self->_flattened = flattened;
    objc_msgSend_invalidate(self, a2, flattened);
  }
}

- (VFXModel)model
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return self->_referenceObject;
  }

  else
  {
    return 0;
  }
}

- (void)setModel:(id)model
{
  referenceObject = self->_referenceObject;
  if (referenceObject != model)
  {

    self->_referenceObject = model;
  }

  objc_msgSend_invalidate(self, a2, model);
}

- (VFXNode)shapeNode
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_msgSend_copyWeakRef(self->_referenceObject, v3, v4);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return self->_referenceObject;
    }

    else
    {
      return 0;
    }
  }
}

- (void)setShapeNode:(id)node
{
  referenceObject = self->_referenceObject;
  if (referenceObject != node)
  {

    v6 = objc_alloc_init(VFXWeakPointer);
    objc_msgSend_setWeakRef_(v6, v7, node);
    self->_referenceObject = v6;
  }

  objc_msgSend_invalidate(self, a2, node);
}

- (NSArray)shapes
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return self->_referenceObject;
  }

  else
  {
    return 0;
  }
}

- (void)setShapes:(id)shapes
{
  referenceObject = self->_referenceObject;
  if (referenceObject != shapes)
  {

    self->_referenceObject = shapes;
  }

  objc_msgSend_invalidate(self, a2, shapes);
}

- (void)_setShapeObject:(id)object
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    objc_msgSend_setShapeNode_(self, v5, object);
  }

  else
  {
    referenceObject = self->_referenceObject;
    if (referenceObject != object)
    {

      self->_referenceObject = object;
    }

    objc_msgSend_invalidate(self, v5, v6);
  }
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  referenceObject = self->_referenceObject;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF35DF00;
  v5[3] = &unk_1E7A7C0C8;
  v5[4] = self;
  (*(block + 2))(block, referenceObject, 1, v5);
}

- (void)copyTo:(id)to withContext:(id)context
{
  v7 = objc_msgSend_shapeNode(self, a2, to);
  if (v7)
  {
    v9 = sub_1AF2BED30(v7, context);
    objc_msgSend__setShapeObject_(to, v10, v9);
  }

  else
  {
    objc_msgSend__setShapeObject_(to, v8, self->_referenceObject);
  }

  objc_msgSend_margin(self, v11, v12);
  objc_msgSend_setMargin_(to, v13, v14);
  objc_msgSend_scale(self, v15, v16);
  objc_msgSend_setScale_(to, v17, v18);
  *(to + 80) = self->_flattened;
  v21 = objc_msgSend_type(self, v19, v20);
  objc_msgSend_setType_(to, v22, v21);
  *(to + 2) = objc_msgSend_transforms(self, v23, v24);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_withContext_(self, v5, v4, 0);
  return v4;
}

+ (id)defaultShapeForModel:(id)model
{
  v4 = objc_msgSend_valueForKey_(model, a2, @"VFXDefaultPhysicsShape");
  v8 = objc_msgSend_pointerValue(v4, v5, v6);
  if (!v8)
  {
    v8 = objc_msgSend_shapeWithModel_(VFXPhysicsShape, v7, model);
    v10 = objc_msgSend_valueWithPointer_(MEMORY[0x1E696B098], v9, v8);
    objc_msgSend_setValue_forKey_(model, v11, v10, @"VFXDefaultPhysicsShape");
  }

  return v8;
}

- (void)_customEncodingOfVFXPhysicsShape:(id)shape
{
  transforms = self->_transforms;
  if (transforms)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    v6 = objc_msgSend_count(transforms, a2, shape);
    objc_msgSend_encodeInteger_forKey_(shape, v7, v6, @"transformsCount");
    v8 = self->_transforms;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF35F6A8;
    v10[3] = &unk_1E7A797A8;
    v10[4] = shape;
    v10[5] = v11;
    objc_msgSend_enumerateObjectsUsingBlock_(v8, v9, v10);
    _Block_object_dispose(v11, 8);
  }
}

- (void)_customDecodingOfVFXPhysicsShape:(id)shape
{
  v5 = objc_msgSend_decodeIntegerForKey_(shape, a2, @"transformsCount");
  if (v5 >= 1)
  {
    v7 = v5;
    v8 = 0;
    self->_transforms = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v6, v5);
    do
    {
      transforms = self->_transforms;
      v11 = MEMORY[0x1E696B098];
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"transform%d", v8);
      *&v13 = sub_1AF371C4C(shape, v12).n128_u64[0];
      v16 = objc_msgSend_valueWithVFXMatrix4_(v11, v14, v15, v13);
      objc_msgSend_addObject_(transforms, v17, v16);
      ++v8;
    }

    while (v7 != v8);
  }
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend__customEncodingOfVFXPhysicsShape_(self, a2, coder);
  referenceObject = self->_referenceObject;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    referenceObject = objc_msgSend_copyWeakRef(self->_referenceObject, v6, v7);
  }

  if (referenceObject)
  {
    objc_msgSend_encodeObject_forKey_(coder, v6, referenceObject, @"referenceObject");
  }

  *&v8 = self->_margin;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"margin", v8);
  if (self->_flattened)
  {
    objc_msgSend_encodeBool_forKey_(coder, v9, 1, @"flattened");
  }

  sub_1AF371A8C(coder, @"scale", *self->_scale);
  type = self->_type;

  objc_msgSend_encodeInteger_forKey_(coder, v10, type, @"type");
}

- (VFXPhysicsShape)initWithCoder:(id)coder
{
  v30[4] = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = VFXPhysicsShape;
  v4 = [(VFXPhysicsShape *)&v29 init];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_commonInit(v4, v5, v6);
    v10 = objc_msgSend_immediateMode(VFXTransaction, v8, v9);
    objc_msgSend_setImmediateMode_(VFXTransaction, v11, 1);
    objc_msgSend__customDecodingOfVFXPhysicsShape_(v7, v12, coder);
    v13 = MEMORY[0x1E695DFD8];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v30[2] = objc_opt_class();
    v30[3] = objc_opt_class();
    v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v30, 4);
    v17 = objc_msgSend_setWithArray_(v13, v16, v15);
    v7->_referenceObject = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v18, v17, @"referenceObject");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      referenceObject = v7->_referenceObject;
      v7->_referenceObject = 0;
      objc_msgSend_setShapeNode_(v7, v19, referenceObject);
      v21 = referenceObject;
    }

    objc_msgSend_decodeFloatForKey_(coder, v19, @"margin");
    v7->_margin = v22;
    v7->_flattened = objc_msgSend_decodeBoolForKey_(coder, v23, @"flattened");
    if (objc_msgSend_containsValueForKey_(coder, v24, @"scale"))
    {
      *&v26 = sub_1AF371BC4(coder, @"scale");
      *v7->_scale = v26;
    }

    if (objc_msgSend_containsValueForKey_(coder, v25, @"type"))
    {
      v7->_type = objc_msgSend_decodeIntegerForKey_(coder, v27, @"type");
    }

    objc_msgSend_setImmediateMode_(VFXTransaction, v27, v10);
  }

  return v7;
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"scale"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_scale(self, v5, v6);

    return objc_msgSend_valueWithVFXFloat3_(v7, v8, v9);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = VFXPhysicsShape;
    return [(VFXPhysicsShape *)&v11 valueForKey:key];
  }
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"scale"))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8);

    objc_msgSend_setScale_(self, v9, v10);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = VFXPhysicsShape;
    [(VFXPhysicsShape *)&v11 setValue:value forKey:key];
  }
}

@end