@interface VFXForceField
+ (VFXForceField)forceFieldWithForceFieldRef:(__CFXForceField *)ref;
+ (id)dragField;
+ (id)field;
+ (id)harmonicField;
+ (id)linearField;
+ (id)magneticField;
+ (id)noiseFieldWithSmoothness:(float)smoothness animationSpeed:(float)speed;
+ (id)presentationForceFieldWithForceFieldRef:(__CFXForceField *)ref;
+ (id)radialField;
+ (id)springField;
+ (id)turbulenceFieldWithSmoothness:(float)smoothness animationSpeed:(float)speed;
+ (id)vortexField;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (BOOL)isActive;
- (BOOL)isLocal;
- (NSArray)animationKeys;
- (VFXForceField)init;
- (VFXForceField)initWithCoder:(id)coder;
- (VFXForceField)initWithFieldType:(int64_t)type;
- (VFXForceField)initWithForceFieldRef:(__CFXForceField *)ref;
- (VFXWorld)world;
- (__CFXAnimationManager)animationManager;
- (__CFXWorld)worldRef;
- (double)halfExtent;
- (double)offset;
- (float)falloffExponent;
- (float)smoothness;
- (float)speed;
- (float)strength;
- (id)_vfxAnimationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)halfExtentValue;
- (id)identifier;
- (id)initPresentationForceFieldWithForceFieldRef:(__CFXForceField *)ref;
- (id)name;
- (id)offsetValue;
- (id)presentationObject;
- (id)valueForKey:(id)key;
- (int64_t)cullMode;
- (int64_t)fieldType;
- (int64_t)scope;
- (int64_t)shape;
- (unint64_t)categoryBitMask;
- (void)_copyAnimationsFrom:(id)from;
- (void)_copyBindingsFrom:(id)from;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_setSourceObject:(id)object forBinding:(id)binding;
- (void)_syncObjCAnimations;
- (void)_updateEntityModelFromPresentation;
- (void)_updateEntityPresentationFromModel;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addAnimationPlayer:(id)player forKey:(id)key;
- (void)addWorldReference:(id)reference;
- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAnimationReferencesUsingBlock:(id)block;
- (void)makeUniqueID;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)duration;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration;
- (void)removeWorldReference:(id)reference;
- (void)setActive:(BOOL)active;
- (void)setCategoryBitMask:(unint64_t)mask;
- (void)setCullMode:(int64_t)mode;
- (void)setFalloffExponent:(float)exponent;
- (void)setFieldType:(int64_t)type;
- (void)setHalfExtent:(VFXForceField *)self;
- (void)setHalfExtentValue:(id)value;
- (void)setIdentifier:(id)identifier;
- (void)setLocal:(BOOL)local;
- (void)setName:(id)name;
- (void)setOffset:(VFXForceField *)self;
- (void)setOffsetValue:(id)value;
- (void)setScope:(int64_t)scope;
- (void)setSettings:(void *)settings;
- (void)setShape:(int64_t)shape;
- (void)setSmoothness:(float)smoothness;
- (void)setSpeed:(float)speed;
- (void)setStrength:(float)strength;
- (void)setValue:(id)value forKey:(id)key;
- (void)setWorld:(id)world;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation VFXForceField

- (id)halfExtentValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_halfExtent(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_halfExtent(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_halfExtent(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (void)setHalfExtentValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v21 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v20 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);

  objc_msgSend_setHalfExtent_(self, v18, v19, COERCE_DOUBLE(__PAIR64__(v20, v21)));
}

- (id)offsetValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_offset(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_offset(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_offset(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (void)setOffsetValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v21 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v20 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);

  objc_msgSend_setOffset_(self, v18, v19, COERCE_DOUBLE(__PAIR64__(v20, v21)));
}

- (VFXForceField)init
{
  v10.receiver = self;
  v10.super_class = VFXForceField;
  v2 = [(VFXForceField *)&v10 init];
  v4 = v2;
  if (v2)
  {
    *&v8 = sub_1AF3502DC(v2, v3).n128_u64[0];
    v4->_forceField = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v4, v6, v7, v8);
  }

  return v4;
}

- (VFXForceField)initWithFieldType:(int64_t)type
{
  v12.receiver = self;
  v12.super_class = VFXForceField;
  v4 = [(VFXForceField *)&v12 init];
  v6 = v4;
  if (v4)
  {
    sub_1AF3502DC(v4, v5);
    v6->_forceField = v7;
    sub_1AF350360(v7, type);
    forceField = v6->_forceField;
    if (forceField)
    {
      sub_1AF16CDFC(forceField, v6);
    }

    v6->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v6, v8, v9);
  }

  return v6;
}

- (VFXForceField)initWithForceFieldRef:(__CFXForceField *)ref
{
  v11.receiver = self;
  v11.super_class = VFXForceField;
  v4 = [(VFXForceField *)&v11 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    v4->_forceField = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v4, v6, v7);
    objc_msgSend__syncObjCAnimations(v4, v8, v9);
  }

  return v4;
}

- (id)initPresentationForceFieldWithForceFieldRef:(__CFXForceField *)ref
{
  v7.receiver = self;
  v7.super_class = VFXForceField;
  v4 = [(VFXForceField *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 28) |= 1u;
    v4->_forceField = CFRetain(ref);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (VFXForceField)forceFieldWithForceFieldRef:(__CFXForceField *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v8 = objc_msgSend_initWithForceFieldRef_(v6, v7, ref);

    return v8;
  }

  return result;
}

+ (id)field
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)presentationObject
{
  v3 = objc_alloc(objc_opt_class());
  inited = objc_msgSend_initPresentationForceFieldWithForceFieldRef_(v3, v4, self->_forceField);

  return inited;
}

+ (id)presentationForceFieldWithForceFieldRef:(__CFXForceField *)ref
{
  v4 = [VFXForceField alloc];
  inited = objc_msgSend_initPresentationForceFieldWithForceFieldRef_(v4, v5, ref);

  return inited;
}

- (void)dealloc
{
  forceField = self->_forceField;
  if (forceField)
  {
    if ((*(self + 28) & 1) == 0)
    {
      sub_1AF16CDFC(self->_forceField, 0);
      forceField = self->_forceField;
    }

    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, a2, forceField);
  }

  v4.receiver = self;
  v4.super_class = VFXForceField;
  [(VFXForceField *)&v4 dealloc];
}

- (int64_t)fieldType
{
  if (*(self + 28))
  {
    return sub_1AF350428(self->_forceField, a2);
  }

  else
  {
    return self->_settings.kind;
  }
}

- (void)setFieldType:(int64_t)type
{
  if ((*(self + 28) & 1) != 0 || self->_settings.kind != type)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_settings.kind = type;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF352244;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = type;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"fieldType", v5);
  }
}

+ (id)dragField
{
  v2 = objc_alloc(objc_opt_class());
  v4 = objc_msgSend_initWithFieldType_(v2, v3, 8);

  return v4;
}

+ (id)vortexField
{
  v2 = objc_alloc(objc_opt_class());
  v4 = objc_msgSend_initWithFieldType_(v2, v3, 2);

  return v4;
}

+ (id)radialField
{
  v2 = objc_alloc(objc_opt_class());
  v4 = objc_msgSend_initWithFieldType_(v2, v3, 1);

  return v4;
}

+ (id)linearField
{
  v2 = objc_alloc(objc_opt_class());
  v4 = objc_msgSend_initWithFieldType_(v2, v3, 0);

  return v4;
}

+ (id)noiseFieldWithSmoothness:(float)smoothness animationSpeed:(float)speed
{
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithFieldType_(v6, v7, 3);
  *&v9 = smoothness;
  objc_msgSend_setSmoothness_(v8, v10, v11, v9);
  *&v12 = speed;
  objc_msgSend_setSpeed_(v8, v13, v14, v12);
  return v8;
}

+ (id)turbulenceFieldWithSmoothness:(float)smoothness animationSpeed:(float)speed
{
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithFieldType_(v6, v7, 4);
  *&v9 = smoothness;
  objc_msgSend_setSmoothness_(v8, v10, v11, v9);
  *&v12 = speed;
  objc_msgSend_setSpeed_(v8, v13, v14, v12);
  return v8;
}

+ (id)springField
{
  v2 = objc_alloc(objc_opt_class());
  v4 = objc_msgSend_initWithFieldType_(v2, v3, 5);

  return v4;
}

+ (id)magneticField
{
  v2 = objc_alloc(objc_opt_class());
  v4 = objc_msgSend_initWithFieldType_(v2, v3, 6);

  return v4;
}

+ (id)harmonicField
{
  v2 = objc_alloc(objc_opt_class());
  v4 = objc_msgSend_initWithFieldType_(v2, v3, 7);

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_fieldType(self, v5, v6);
  v9 = objc_msgSend_initWithFieldType_(v4, v8, v7);
  objc_msgSend_begin(VFXTransaction, v10, v11);
  objc_msgSend_setImmediateMode_(VFXTransaction, v12, 1);
  v15 = objc_msgSend_name(self, v13, v14);
  objc_msgSend_setName_(v9, v16, v15);
  v19 = objc_msgSend_categoryBitMask(self, v17, v18);
  objc_msgSend_setCategoryBitMask_(v9, v20, v19);
  objc_msgSend_setSettings_(v9, v21, &self->_settings);
  objc_msgSend__copyAnimationsFrom_(v9, v22, self);
  objc_msgSend__copyBindingsFrom_(v9, v23, self);
  objc_msgSend_commitImmediate(VFXTransaction, v24, v25);
  return v9;
}

- (void)setSettings:(void *)settings
{
  v4 = *(settings + 5);
  v14 = *(settings + 4);
  v15 = v4;
  v5 = *(settings + 7);
  v16 = *(settings + 6);
  v17 = v5;
  v6 = *(settings + 1);
  v10 = *settings;
  v11 = v6;
  v7 = *(settings + 3);
  v12 = *(settings + 2);
  v13 = v7;
  memmove(&self->_settings, settings, 0x80uLL);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF3525F4;
  v9[3] = &unk_1E7A7F708;
  selfCopy = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
}

- (float)strength
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_settings.strength;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF3504D8(self->_forceField, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    forceField = self->_forceField;

    return sub_1AF3504D8(forceField, v6);
  }
}

- (void)setStrength:(float)strength
{
  if ((*(self + 28) & 1) != 0 || self->_settings.strength != strength)
  {
    v7 = v3;
    v8 = v4;
    self->_settings.strength = strength;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF352730;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = strength;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"strength", v5);
  }
}

- (unint64_t)categoryBitMask
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_settings.categoryBitMask;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF3509F0(self->_forceField, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    forceField = self->_forceField;

    return sub_1AF3509F0(forceField, v6);
  }
}

- (void)setCategoryBitMask:(unint64_t)mask
{
  if ((*(self + 28) & 1) != 0 || self->_settings.categoryBitMask != mask)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_settings.categoryBitMask = mask;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF352858;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mask;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)falloffExponent
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_settings.falloffExponent;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF350588(self->_forceField, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    forceField = self->_forceField;

    return sub_1AF350588(forceField, v6);
  }
}

- (void)setFalloffExponent:(float)exponent
{
  if ((*(self + 28) & 1) != 0 || self->_settings.falloffExponent != exponent)
  {
    v7 = v3;
    v8 = v4;
    self->_settings.falloffExponent = exponent;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF352994;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = exponent;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"falloffExponent", v5);
  }
}

- (BOOL)isActive
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_settings.active;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF350638(self->_forceField, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    forceField = self->_forceField;

    return sub_1AF350638(forceField, v6);
  }
}

- (void)setActive:(BOOL)active
{
  if ((*(self + 28) & 1) != 0 || self->_settings.active != active)
  {
    v7 = v3;
    v8 = v4;
    self->_settings.active = active;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF352AC0;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    activeCopy = active;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)isLocal
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_settings.local;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF350704(self->_forceField, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    forceField = self->_forceField;

    return sub_1AF350704(forceField, v6);
  }
}

- (void)setLocal:(BOOL)local
{
  if ((*(self + 28) & 1) != 0 || self->_settings.local != local)
  {
    v7 = v3;
    v8 = v4;
    self->_settings.local = local;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF352BF0;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    localCopy = local;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (int64_t)scope
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_settings.scope;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (!v5)
  {
    return sub_1AF35087C(self->_forceField, v6);
  }

  v7 = v5;
  sub_1AF1CEA20(v5, v6);
  v4 = sub_1AF35087C(self->_forceField, v8);
  sub_1AF1CEA9C(v7, v9);
  return v4;
}

- (void)setScope:(int64_t)scope
{
  if ((*(self + 28) & 1) != 0 || self->_settings.scope != scope)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_settings.scope = scope;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF352D10;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = scope;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"scope", v5);
  }
}

- (double)halfExtent
{
  if (*(self + 28))
  {
    v5 = objc_msgSend_worldRef(self, a2, a3);
    if (v5)
    {
      v7 = v5;
      sub_1AF1CEA20(v5, v6);
      v12 = sub_1AF3507C8(*(self + 8), v8).n128_u64[0];
      sub_1AF1CEA9C(v7, v9);
      *&v4 = v12;
    }

    else
    {
      v10 = *(self + 8);

      *&v4 = sub_1AF3507C8(v10, v6).n128_u64[0];
    }
  }

  else
  {
    v4 = *(self + 128);
  }

  return *&v4;
}

- (void)setHalfExtent:(VFXForceField *)self
{
  if ((*(self + 28) & 1) != 0 || (v3 = vceqq_f32(*&self->_anon_78[8], v2), v3.i32[3] = v3.i32[2], (vminvq_u32(v3) & 0x80000000) == 0))
  {
    *&self->_anon_78[8] = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF352E58;
    v4[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v5 = v2;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"halfExtent", v4);
  }
}

- (double)offset
{
  if (*(self + 28))
  {
    v5 = objc_msgSend_worldRef(self, a2, a3);
    if (v5)
    {
      v7 = v5;
      sub_1AF1CEA20(v5, v6);
      v12 = sub_1AF350940(*(self + 8), v8).n128_u64[0];
      sub_1AF1CEA9C(v7, v9);
      *&v4 = v12;
    }

    else
    {
      v10 = *(self + 8);

      *&v4 = sub_1AF350940(v10, v6).n128_u64[0];
    }
  }

  else
  {
    v4 = *(self + 144);
  }

  return *&v4;
}

- (void)setOffset:(VFXForceField *)self
{
  if ((*(self + 28) & 1) != 0 || (v3 = vceqq_f32(*&self->_anon_78[24], v2), v3.i32[3] = v3.i32[2], (vminvq_u32(v3) & 0x80000000) == 0))
  {
    *&self->_anon_78[24] = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF352FA0;
    v4[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v5 = v2;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"offset", v4);
  }
}

- (float)smoothness
{
  if ((*(self + 28) & 1) == 0)
  {
    return *&self->_anon_78[40];
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF350B54(self->_forceField, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    forceField = self->_forceField;

    return sub_1AF350B54(forceField, v6);
  }
}

- (void)setSmoothness:(float)smoothness
{
  if ((*(self + 28) & 1) != 0 || *&self->_anon_78[40] != smoothness)
  {
    v7 = v3;
    v8 = v4;
    *&self->_anon_78[40] = smoothness;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF3530FC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = smoothness;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"smoothness", v5);
  }
}

- (int64_t)shape
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_settings.shape;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (!v5)
  {
    return sub_1AF350CB8(self->_forceField, v6);
  }

  v7 = v5;
  sub_1AF1CEA20(v5, v6);
  v4 = sub_1AF350CB8(self->_forceField, v8);
  sub_1AF1CEA9C(v7, v9);
  return v4;
}

- (void)setShape:(int64_t)shape
{
  if ((*(self + 28) & 1) != 0 || self->_settings.shape != shape)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_settings.shape = shape;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF35321C;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = shape;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"shape", v5);
  }
}

- (int64_t)cullMode
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_settings.cullMode;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (!v5)
  {
    return sub_1AF350AA4(self->_forceField, v6);
  }

  v7 = v5;
  sub_1AF1CEA20(v5, v6);
  v4 = sub_1AF350AA4(self->_forceField, v8);
  sub_1AF1CEA9C(v7, v9);
  return v4;
}

- (void)setCullMode:(int64_t)mode
{
  if ((*(self + 28) & 1) != 0 || self->_settings.cullMode != mode)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_settings.cullMode = mode;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF35333C;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mode;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"cullMode", v5);
  }
}

- (float)speed
{
  if ((*(self + 28) & 1) == 0)
  {
    return *&self->_anon_78[44];
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF350C04(self->_forceField, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    forceField = self->_forceField;

    return sub_1AF350C04(forceField, v6);
  }
}

- (void)setSpeed:(float)speed
{
  if ((*(self + 28) & 1) != 0 || *&self->_anon_78[44] != speed)
  {
    v7 = v3;
    v8 = v4;
    *&self->_anon_78[44] = speed;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF353478;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = speed;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"speed", v5);
  }
}

- (void)setName:(id)name
{
  name = self->_name;
  if (name | name)
  {
    if ((objc_msgSend_isEqual_(name, a2, name) & 1) == 0)
    {

      self->_name = objc_msgSend_copy(name, v6, v7);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF353558;
      v9[3] = &unk_1E7A7E220;
      v9[4] = self;
      v9[5] = name;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
    }
  }
}

- (id)name
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_name;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  v8 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
  }

  v9 = objc_msgSend___CFObject(self, v6, v7);
  v4 = sub_1AF16CBEC(v9, v10);
  if (v8)
  {
    sub_1AF1CEA9C(v8, v11);
  }

  return v4;
}

- (void)setIdentifier:(id)identifier
{
  v4 = objc_msgSend___CFObject(self, a2, identifier);

  sub_1AF16CD6C(v4, identifier);
}

- (id)identifier
{
  v3 = objc_msgSend___CFObject(self, a2, v2);

  return sub_1AF16CD08(v3, v4, v5);
}

- (void)_updateEntityModelFromPresentation
{
  v4 = objc_msgSend___CFObject(self, a2, v2);

  self->_name = sub_1AF16CBEC(v4, v5);
}

- (void)_updateEntityPresentationFromModel
{
  v4 = objc_msgSend___CFObject(self, a2, v2);
  name = self->_name;

  sub_1AF16CC34(v4, name);
}

- (void)makeUniqueID
{
  v3 = objc_msgSend___CFObject(self, a2, v2);
  v6 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v4, v5);
  v9 = objc_msgSend_UUIDString(v6, v7, v8);

  sub_1AF16CD6C(v3, v9);
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
    v9[9] = v3;
    v9[10] = v4;
    if (world)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF35390C;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF35396C;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 28) & 1) == 0)
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

- (__CFXAnimationManager)animationManager
{
  result = objc_msgSend_worldRef(self, a2, v2);
  if (result)
  {

    return sub_1AF1CF830(result, v4);
  }

  return result;
}

- (BOOL)__removeAnimation:(id)animation forKey:(id)key
{
  if (!key)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_animationsLock);
  v8 = objc_msgSend_objectForKey_(self->_animations, v7, key);
  v12 = objc_msgSend_animation(v8, v9, v10) == animation;
  if (v12)
  {
    objc_msgSend_removeWorldReference_(v8, v11, self->_world);
    objc_msgSend_removeObjectForKey_(self->_animations, v13, key);
    v16 = objc_msgSend___CFObject(self, v14, v15);
    v17 = sub_1AF16D234(v16);
    if ((v17 & 1) == 0)
    {
      v19 = sub_1AF0D5194(v17, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF4B20(v19);
      }
    }

    sub_1AF16D870(v16, key, 1);
  }

  os_unfair_lock_unlock(&self->_animationsLock);
  return v12;
}

- (void)addAnimationPlayer:(id)player forKey:(id)key
{
  if (player)
  {
    keyCopy = key;
    if (!key)
    {
      v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, player);
      keyCopy = objc_msgSend_UUIDString(v7, v8, v9);
    }

    if ((*(self + 28) & 1) == 0)
    {
      os_unfair_lock_lock(&self->_animationsLock);
      objc_msgSend_addWorldReference_(player, v10, self->_world);
      animations = self->_animations;
      if (!animations)
      {
        animations = objc_alloc_init(VFXOrderedDictionary);
        self->_animations = animations;
      }

      objc_msgSend_setObject_forKey_(animations, v11, player, keyCopy);
      os_unfair_lock_unlock(&self->_animationsLock);
    }

    v13 = objc_msgSend_timingFunction(VFXTransaction, a2, player);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1AF353C74;
    v16[3] = &unk_1E7A7E2C0;
    v16[4] = player;
    v16[5] = self;
    v16[6] = keyCopy;
    v16[7] = v13;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v14, self, v16);
  }

  else
  {
    v15 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4BA4(self, v15);
    }
  }
}

- (void)addAnimation:(id)animation forKey:(id)key
{
  if (animation)
  {
    keyCopy = key;
    animationCopy = animation;
    if (!key)
    {
      v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, animation);
      keyCopy = objc_msgSend_UUIDString(v7, v8, v9);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      animationCopy = objc_msgSend_animationWithCAAnimation_(VFXAnimation, v10, animationCopy);
    }

    v11 = objc_msgSend_animationPlayerWithVFXAnimation_(VFXAnimationPlayer, v10, animationCopy);
    objc_msgSend_addAnimationPlayer_forKey_(self, v12, v11, keyCopy);

    objc_msgSend_play(v11, v13, v14);
  }

  else
  {
    v15 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4C1C(self, v15);
    }
  }
}

- (void)removeAllAnimations
{
  v27 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_animationsLock);
  world = self->_world;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  animations = self->_animations;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(animations, v5, &v22, v26, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(animations);
        }

        objc_msgSend_removeWorldReference_(*(*(&v22 + 1) + 8 * i), v7, world);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(animations, v7, &v22, v26, 16);
    }

    while (v9);
  }

  objc_msgSend_removeAllObjects(self->_animations, v7, v8);
  os_unfair_lock_unlock(&self->_animationsLock);
  objc_msgSend_duration(VFXTransaction, v12, v13);
  if (v16 <= 0.0)
  {
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v14, self, v20, MEMORY[0x1E69E9820], 3221225472, sub_1AF353FF8, &unk_1E7A7E1D0, self, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6]);
  }

  else
  {
    v17 = v16;
    v18 = objc_msgSend_timingFunction(VFXTransaction, v14, v15);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v19, self, v21, v20[0], v20[1], v20[2], v20[3], v20[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF353FE8, &unk_1E7A7E2E8, self, v18, *&v17);
  }
}

- (void)removeAnimationForKey:(id)key
{
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v7 = objc_msgSend_objectForKey_(animations, v5, key);
      objc_msgSend_removeWorldReference_(v7, v8, self->_world);
      objc_msgSend_removeObjectForKey_(self->_animations, v9, key);
    }

    os_unfair_lock_unlock(&self->_animationsLock);
    v12 = objc_msgSend_timingFunction(VFXTransaction, v10, v11);
    objc_msgSend_animationDuration(VFXTransaction, v13, v14);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1AF3540E8;
    v17[3] = &unk_1E7A7E310;
    v17[7] = v15;
    v17[4] = self;
    v17[5] = key;
    v17[6] = v12;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v16, self, v17);
  }
}

- (NSArray)animationKeys
{
  os_unfair_lock_lock(&self->_animationsLock);
  v5 = objc_msgSend_allKeys(self->_animations, v3, v4);
  os_unfair_lock_unlock(&self->_animationsLock);
  if (objc_msgSend_count(v5, v6, v7))
  {
    return v5;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)_syncObjCAnimations
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  v6 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  os_unfair_lock_lock(&self->_animationsLock);

  self->_animations = objc_alloc_init(VFXOrderedDictionary);
  os_unfair_lock_unlock(&self->_animationsLock);
  v9 = objc_msgSend___CFObject(self, v7, v8);
  if (v9)
  {
    v11 = v9;
    v12 = sub_1AF16D234(v9);
    if ((v12 & 1) == 0)
    {
      v14 = sub_1AF0D5194(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF4C94(v14);
      }
    }

    v15 = sub_1AF16D614(v11, v13);
    if (v15)
    {
      v16 = v15;
      os_unfair_lock_lock(&self->_animationsLock);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_1AF354284;
      v17[3] = &unk_1E7A7E338;
      v17[4] = self;
      sub_1AF375240(v16, v17);
      os_unfair_lock_unlock(&self->_animationsLock);
    }
  }

  if (v6)
  {
    sub_1AF1CEA9C(v6, v10);
  }
}

- (id)_vfxAnimationForKey:(id)key
{
  keyCopy = key;
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v7 = objc_msgSend_objectForKey_(animations, v5, keyCopy);
      keyCopy = objc_msgSend_animation(v7, v8, v9);
    }

    else
    {
      keyCopy = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return keyCopy;
}

- (void)_copyAnimationsFrom:(id)from
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = objc_msgSend_animationKeys(from, a2, from, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = objc_msgSend_animationPlayerForKey_(from, v8, v12);
        v16 = objc_msgSend_copy(v13, v14, v15);
        objc_msgSend_addAnimationPlayer_forKey_(self, v17, v16, v12);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v18, v22, 16);
    }

    while (v9);
  }
}

- (id)animationPlayerForKey:(id)key
{
  keyCopy = key;
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      keyCopy = objc_msgSend_objectForKey_(animations, v5, keyCopy);
    }

    else
    {
      keyCopy = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return keyCopy;
}

- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node
{
  nodeCopy = node;
  animationCopy = animation;
  v9 = objc_msgSend___CFObject(self, a2, animation);
  if (v9)
  {
    v12 = v9;
    v13 = objc_msgSend_animationManager(self, v10, v11);
    if (v13)
    {
      v14 = v13;
      v15 = CACurrentMediaTime();

      sub_1AF118EBC(v14, v12, key, animationCopy, nodeCopy, v15);
    }
  }
}

- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options
{
  if (self != object)
  {
    v21[15] = v6;
    v21[16] = v7;
    v13 = objc_alloc_init(CFXBinding);
    objc_msgSend_setSourceObject_(v13, v14, object);
    objc_msgSend_setKeyPathDst_(v13, v15, path);
    objc_msgSend_setKeyPathSrc_(v13, v16, keyPath);
    objc_msgSend_setOptions_(v13, v17, options);
    bindings = self->_bindings;
    if (!bindings)
    {
      bindings = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_bindings = bindings;
    }

    objc_msgSend_setValue_forKey_(bindings, v18, v13, path);

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1AF3546A4;
    v21[3] = &unk_1E7A7E360;
    v21[4] = self;
    v21[5] = object;
    v21[6] = path;
    v21[7] = keyPath;
    v21[8] = options;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v20, self, v21);
  }
}

- (void)unbindAnimatablePath:(id)path
{
  objc_msgSend_removeObjectForKey_(self->_bindings, a2, path);
  if (!objc_msgSend_count(self->_bindings, v5, v6))
  {

    self->_bindings = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF3547E8;
  v8[3] = &unk_1E7A7E220;
  v8[4] = self;
  v8[5] = path;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
}

- (void)removeAllBindings
{
  self->_bindings = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF3548B4;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)from
{
  v4 = objc_msgSend__vfxBindings(from, a2, from);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF354960;
  v6[3] = &unk_1E7A7E388;
  v6[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v4, v5, v6);
}

- (void)_setSourceObject:(id)object forBinding:(id)binding
{
  if (objc_msgSend_sourceObject(binding, a2, object) != object)
  {
    objc_msgSend_setSourceObject_(binding, v7, object);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF354A98;
    v9[3] = &unk_1E7A7E3B0;
    v9[4] = self;
    v9[5] = binding;
    v9[6] = object;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
  }
}

- (void)enumerateAnimationReferencesUsingBlock:(id)block
{
  bindings = self->_bindings;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF354BD4;
  v4[3] = &unk_1E7A7E400;
  v4[4] = self;
  v4[5] = block;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(bindings, a2, v4);
}

- (void)removeAllAnimationsWithBlendOutDuration:(float)duration
{
  objc_msgSend_begin(VFXTransaction, a2, v3);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v6, v7, duration);
  objc_msgSend_removeAllAnimations(self, v8, v9);

  objc_msgSend_commit(VFXTransaction, v10, v11);
}

- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration
{
  objc_msgSend_begin(VFXTransaction, a2, key);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v7, v8, duration);
  objc_msgSend_removeAnimationForKey_(self, v9, key);

  objc_msgSend_commit(VFXTransaction, v10, v11);
}

- (void)_updateModelFromPresentation
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  if (v4)
  {
    v6 = v4;
    sub_1AF1CEA20(v4, v5);
    v8 = sub_1AF350D00(self->_forceField, v7);
    v9 = v8[3];
    v11 = *v8;
    v10 = v8[1];
    *&self->_settings.categoryBitMask = v8[2];
    *&self->_settings.scope = v9;
    *&self->_settings.kind = v11;
    *&self->_settings.dampening = v10;
    v12 = v8[7];
    v14 = v8[4];
    v13 = v8[5];
    *&self->_anon_78[24] = v8[6];
    *&self->_anon_78[40] = v12;
    *&self->_settings.falloffExponent = v14;
    *&self->_anon_78[8] = v13;
    objc_msgSend__updateEntityModelFromPresentation(self, v15, v16);

    sub_1AF1CEA9C(v6, v17);
  }

  else
  {
    v18 = sub_1AF350D00(self->_forceField, v5);
    v21 = v18[3];
    v23 = *v18;
    v22 = v18[1];
    *&self->_settings.categoryBitMask = v18[2];
    *&self->_settings.scope = v21;
    *&self->_settings.kind = v23;
    *&self->_settings.dampening = v22;
    v24 = v18[7];
    v26 = v18[4];
    v25 = v18[5];
    *&self->_anon_78[24] = v18[6];
    *&self->_anon_78[40] = v24;
    *&self->_settings.falloffExponent = v26;
    *&self->_anon_78[8] = v25;

    objc_msgSend__updateEntityModelFromPresentation(self, v19, v20);
  }
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF354E90;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)coder
{
  sub_1AF371A8C(coder, @"halfExtent", *&self->_anon_78[8]);
  objc_msgSend_encodeInt_forKey_(coder, v5, LODWORD(self->_settings.kind), @"type");
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"strength", self->_settings.strength);
  objc_msgSend_encodeDouble_forKey_(coder, v7, @"falloffExponent", self->_settings.falloffExponent);
  objc_msgSend_encodeBool_forKey_(coder, v8, self->_settings.active, @"active");
  objc_msgSend_encodeInteger_forKey_(coder, v9, self->_settings.scope, @"scope");
  objc_msgSend_encodeInteger_forKey_(coder, v10, self->_settings.shape, @"shape");
  objc_msgSend_encodeDouble_forKey_(coder, v11, @"smoothness", *&self->_anon_78[40]);
  objc_msgSend_encodeInteger_forKey_(coder, v12, self->_settings.categoryBitMask, @"categoryMask");
  objc_msgSend_encodeDouble_forKey_(coder, v13, @"speed", *&self->_anon_78[44]);
  v14 = *&self->_anon_78[24];

  sub_1AF371A8C(coder, @"offset", v14);
}

- (VFXForceField)initWithCoder:(id)coder
{
  v54.receiver = self;
  v54.super_class = VFXForceField;
  v6 = [(VFXForceField *)&v54 init];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    v9 = objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    *&v14 = sub_1AF3502DC(v9, v10).n128_u64[0];
    v6->_forceField = v11;
    if (v11)
    {
      sub_1AF16CDFC(v11, v6);
    }

    objc_msgSend__updateModelFromPresentation(v6, v12, v13, v14);
    v16 = objc_msgSend_decodeIntForKey_(coder, v15, @"type");
    objc_msgSend_setFieldType_(v6, v17, v16);
    v18 = sub_1AF371BC4(coder, @"halfExtent");
    objc_msgSend_setHalfExtent_(v6, v19, v20, v18);
    objc_msgSend_decodeDoubleForKey_(coder, v21, @"strength");
    *&v22 = v22;
    objc_msgSend_setStrength_(v6, v23, v24, v22);
    objc_msgSend_decodeDoubleForKey_(coder, v25, @"falloffExponent");
    *&v26 = v26;
    objc_msgSend_setFalloffExponent_(v6, v27, v28, v26);
    v30 = objc_msgSend_decodeBoolForKey_(coder, v29, @"active");
    objc_msgSend_setActive_(v6, v31, v30);
    v33 = objc_msgSend_decodeIntegerForKey_(coder, v32, @"scope");
    objc_msgSend_setScope_(v6, v34, v33);
    v36 = objc_msgSend_decodeIntegerForKey_(coder, v35, @"shape");
    objc_msgSend_setShape_(v6, v37, v36);
    v38 = sub_1AF371BC4(coder, @"offset");
    objc_msgSend_setOffset_(v6, v39, v40, v38);
    objc_msgSend_decodeDoubleForKey_(coder, v41, @"smoothness");
    *&v42 = v42;
    objc_msgSend_setSmoothness_(v6, v43, v44, v42);
    objc_msgSend_decodeDoubleForKey_(coder, v45, @"speed");
    *&v46 = v46;
    objc_msgSend_setSpeed_(v6, v47, v48, v46);
    v50 = objc_msgSend_decodeIntForKey_(coder, v49, @"categoryMask");
    objc_msgSend_setCategoryBitMask_(v6, v51, v50);
    objc_msgSend_setImmediateMode_(VFXTransaction, v52, v7);
  }

  return v6;
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"halfExtent"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_halfExtent(self, v5, v6);
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(key, v5, @"offset"))
    {
      v13.receiver = self;
      v13.super_class = VFXForceField;
      return [(VFXForceField *)&v13 valueForKey:key];
    }

    v7 = MEMORY[0x1E696B098];
    objc_msgSend_offset(self, v10, v11);
  }

  return objc_msgSend_valueWithVFXFloat3_(v7, v8, v9);
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"halfExtent"))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8);

    objc_msgSend_setHalfExtent_(self, v9, v10);
  }

  else if (objc_msgSend_isEqualToString_(key, v7, @"offset"))
  {
    objc_msgSend_VFXFloat3Value(value, v11, v12);

    objc_msgSend_setOffset_(self, v13, v14);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = VFXForceField;
    [(VFXForceField *)&v15 setValue:value forKey:key];
  }
}

@end