@interface VFXMaterial
+ (id)material;
+ (id)materialWithColor:(id)color;
+ (id)materialWithContents:(id)contents;
+ (id)materialWithMDLMaterial:(id)material options:(id)options;
+ (id)materialWithMaterialRef:(__CFXMaterial *)ref;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (BOOL)avoidsOverLighting;
- (BOOL)isDoubleSided;
- (BOOL)isLitPerPixel;
- (BOOL)readsFromDepthBuffer;
- (BOOL)writesToDepthBuffer;
- (NSArray)animationKeys;
- (NSArray)bridgedComponentNames;
- (NSString)description;
- (NSString)identifier;
- (NSString)name;
- (VFXBehaviorGraph)behaviorGraph;
- (VFXMaterial)init;
- (VFXMaterial)initWithCoder:(id)coder;
- (VFXMaterial)initWithMaterialRef:(__CFXMaterial *)ref;
- (VFXWorld)world;
- (__CFXAnimationManager)animationManager;
- (__CFXCommonProfile)commonProfile;
- (__CFXWorld)worldRef;
- (float)alphaCutoff;
- (float)fresnelExponent;
- (float)indexOfRefraction;
- (float)selfIlluminationOcclusion;
- (float)shininess;
- (id)_integrateModelKitComputedMaps:(id)maps withModel:(id)model node:(id)node texturePathProvider:(id)provider vertexAttributeNamed:(id)named materialPropertyNamed:(id)propertyNamed filePath:(id)path;
- (id)_property:(id *)_property;
- (id)_vfxAnimationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)builtinProperties;
- (id)color;
- (id)contents;
- (id)copyAnimationChannelForKeyPath:(id)path animation:(id)animation;
- (id)copyAnimationChannelForKeyPath:(id)path property:(id)property;
- (id)copyWithZone:(_NSZone *)zone;
- (id)customMaterialAttributeNames;
- (id)customMaterialAttributes;
- (id)customMaterialProperties;
- (id)customMaterialPropertyNames;
- (id)debugQuickLookData;
- (id)debugQuickLookObject;
- (id)debugQuickLookObjectWithWorld:(id)world;
- (id)initPresentationMaterialWithMaterialRef:(__CFXMaterial *)ref;
- (id)presentationMaterial;
- (id)properties;
- (id)propertyWithName:(id)name;
- (id)shaderModifiersArgumentWithName:(id)name;
- (id)valueForUndefinedKey:(id)key;
- (int64_t)blendMode;
- (int64_t)colorBufferWriteMask;
- (int64_t)cullMode;
- (int64_t)transparencyMode;
- (unint64_t)fillMode;
- (unint64_t)shadingModel;
- (void)_copyAnimationsFrom:(id)from;
- (void)_copyBindingsFrom:(id)from;
- (void)_customDecodingOfVFXMaterial:(id)material;
- (void)_customEncodingOfVFXMaterial:(id)material;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_setSourceObject:(id)object forBinding:(id)binding;
- (void)_setupMaterialProperty:(id *)property;
- (void)_setupShadableHelperIfNeeded;
- (void)_shadableSetValue:(id)value forUndefinedKey:(id)key;
- (void)_syncObjCAnimations;
- (void)_updateEntityModelFromPresentation;
- (void)_updateEntityPresentationFromModel;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addAnimationPlayer:(id)player forKey:(id)key;
- (void)addWorldReference:(id)reference;
- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options;
- (void)copyShaderModifiersAndLanguageVersionFrom:(id)from;
- (void)copyTo:(id)to withContext:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAnimationReferencesUsingBlock:(id)block;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)makeUniqueID;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)duration;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration;
- (void)removeWorldReference:(id)reference;
- (void)setAlphaCutoff:(float)cutoff;
- (void)setAvoidsOverLighting:(BOOL)lighting;
- (void)setBehaviorGraph:(id)graph;
- (void)setBlendMode:(int64_t)mode;
- (void)setColor:(id)color;
- (void)setColorBufferWriteMask:(int64_t)mask;
- (void)setContents:(id)contents;
- (void)setCullMode:(int64_t)mode;
- (void)setDoubleSided:(BOOL)sided;
- (void)setFillMode:(unint64_t)mode;
- (void)setFresnelExponent:(float)exponent;
- (void)setIdentifier:(id)identifier;
- (void)setIndexOfRefraction:(float)refraction;
- (void)setLitPerPixel:(BOOL)pixel;
- (void)setMinimumLanguageVersion:(id)version;
- (void)setName:(id)name;
- (void)setProgram:(id)program;
- (void)setReadsFromDepthBuffer:(BOOL)buffer;
- (void)setSelfIlluminationOcclusion:(float)occlusion;
- (void)setShaderModifiers:(id)modifiers;
- (void)setShadingModel:(unint64_t)model;
- (void)setShininess:(float)shininess;
- (void)setTransparencyMode:(int64_t)mode;
- (void)setWorld:(id)world;
- (void)setWritesToDepthBuffer:(BOOL)buffer;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation VFXMaterial

- (VFXMaterial)init
{
  v11.receiver = self;
  v11.super_class = VFXMaterial;
  v2 = [(VFXMaterial *)&v11 init];
  v4 = v2;
  if (v2)
  {
    v5 = sub_1AF1A0BFC(v2, v3);
    v4->_material = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v4, v6, v7);
    objc_msgSend_makeUniqueID(v4, v8, v9);
  }

  return v4;
}

- (VFXMaterial)initWithMaterialRef:(__CFXMaterial *)ref
{
  v13.receiver = self;
  v13.super_class = VFXMaterial;
  v4 = [(VFXMaterial *)&v13 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    v4->_material = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v4, v6, v7);
    objc_msgSend__syncObjCAnimations(v4, v8, v9);
    objc_msgSend_makeUniqueID(v4, v10, v11);
  }

  return v4;
}

- (id)initPresentationMaterialWithMaterialRef:(__CFXMaterial *)ref
{
  v7.receiver = self;
  v7.super_class = VFXMaterial;
  v4 = [(VFXMaterial *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_isPresentationObject = 1;
    v4->_material = CFRetain(ref);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
    v5->_valuesForUndefinedKeysLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (id)materialWithMaterialRef:(__CFXMaterial *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v8 = objc_msgSend_initWithMaterialRef_(v6, v7, ref);

    return v8;
  }

  return result;
}

+ (id)material
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)materialWithColor:(id)color
{
  v4 = objc_alloc_init(self);
  objc_msgSend_setColor_(v4, v5, color);
  return v4;
}

+ (id)materialWithContents:(id)contents
{
  v4 = objc_alloc_init(self);
  objc_msgSend_setContents_(v4, v5, contents);
  return v4;
}

- (void)dealloc
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = objc_msgSend_properties(self, a2, v2);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_parentWillDie_(*(*(&v15 + 1) + 8 * v11++), v7, self);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v15, v19, 16);
    }

    while (v9);
  }

  if (!self->_isPresentationObject)
  {
    objc_msgSend_ownerWillDie(self->_shadableHelper, v7, v8);
  }

  material = self->_material;
  if (material)
  {
    if (!self->_isPresentationObject)
    {
      sub_1AF16CDFC(self->_material, 0);
      material = self->_material;
    }

    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v12, material);
  }

  v14.receiver = self;
  v14.super_class = VFXMaterial;
  [(VFXMaterial *)&v14 dealloc];
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_behaviorGraph(self, a2, operation))
  {
    v8 = objc_msgSend_behaviorGraph(self, v6, v7);
    (*(block + 2))(block, v8, 0, 0);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = objc_msgSend_properties(self, v6, v7, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v17, v21, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v9);
        }

        (*(block + 2))(block, *(*(&v17 + 1) + 8 * v15++), 0, 0);
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v16, &v17, v21, 16);
    }

    while (v13);
  }

  objc_msgSend_enumerateAnimationReferencesUsingBlock_(self, v12, block);
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
  if (!reference || self->_world == reference)
  {
    worldReferenceCounter = self->_worldReferenceCounter;
    if (worldReferenceCounter)
    {
      v4 = worldReferenceCounter - 1;
      self->_worldReferenceCounter = v4;
      if (!v4)
      {

        objc_msgSend_setWorld_(self, a2, 0);
      }
    }

    else
    {
      v5 = sub_1AF0D5194(self, a2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF595C();
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
      v9[2] = sub_1AF2D43F4;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2D4454;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
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
      v9[2] = sub_1AF2D45D0;
      v9[3] = &unk_1E7A7E220;
      v9[4] = self;
      v9[5] = name;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
    }
  }
}

- (NSString)name
{
  if (!self->_isPresentationObject)
  {
    return self->_name;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend___CFObject(self, v5, v6);
  v11 = sub_1AF16CBEC(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setIdentifier:(id)identifier
{
  v4 = objc_msgSend___CFObject(self, a2, identifier);

  sub_1AF16CD6C(v4, identifier);
}

- (NSString)identifier
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

- (void)_updateModelFromPresentation
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_materialRef(self, v5, v6);
  self->_cullMode = sub_1AF1A1378(v8, v9);
  self->_writesToDepthBuffer = sub_1AF1A1650(v8, v10);
  self->_readsFromDepthBuffer = sub_1AF1A1768(v8, v11);
  self->_colorBufferWriteMask = sub_1AF1A16A0(v8, v12);
  self->_doubleSided = sub_1AF1A1224(v8, v13);
  self->_fillMode = sub_1AF1A13C0(v8, v14);
  self->_blendMode = sub_1AF1A1408(v8, v15);
  self->_alphaCutoff = sub_1AF1A1450(v8, v16);
  v18 = sub_1AF1A1270(v8, v17);
  if (v18)
  {
    v21 = v18;
    self->_shininess = sub_1AF165BEC(v18, 19);
    self->_indexOfRefraction = sub_1AF165BEC(v21, 20);
    self->_fresnelExponent = sub_1AF165BEC(v21, 21);
    self->_transparencyMode = sub_1AF166C38(v21, v22);
    v24 = sub_1AF165AE4(v21, v23);
    self->_shadingModel = sub_1AF2D4900(v24, v25);
    self->_litPerPixel = sub_1AF166BF0(v21, v26);
    self->_avoidsOverLighting = sub_1AF166B30(v21, v27);
    self->_selfIlluminationOcclusion = sub_1AF166D0C(v21);
  }

  objc_msgSend__updateEntityModelFromPresentation(self, v19, v20);
  if (v7)
  {

    sub_1AF1CEA9C(v7, v28);
  }
}

- (void)_updatePresentationFromModel
{
  v4 = objc_msgSend_materialRef(self, a2, v2);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF2D49E8;
  v6[3] = &unk_1E7A7E248;
  v6[4] = self;
  v6[5] = v4;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v5, self, v6);
}

- (id)presentationMaterial
{
  selfCopy = self;
  if (!self->_isPresentationObject)
  {
    v3 = [VFXMaterial alloc];
    v5 = objc_msgSend_initPresentationMaterialWithMaterialRef_(v3, v4, selfCopy->_material);

    v5[34] = selfCopy->_shadableHelper;
    v5[39] = selfCopy->_behaviorGraph;
    return v5;
  }

  return selfCopy;
}

- (__CFXCommonProfile)commonProfile
{
  v3 = objc_msgSend_materialRef(self, a2, v2);

  return sub_1AF1A1270(v3, v4);
}

- (void)_setupMaterialProperty:(id *)property
{
  if (!property)
  {
    return;
  }

  v5 = objc_msgSend_worldRef(self, a2, property);
  v8 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
  }

  v9 = objc_msgSend_commonProfile(self, v6, v7, 0, 0);
  if (!v9)
  {
    v28 = sub_1AF0D5194(0, v10);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF5A4C();
      if (!v8)
      {
        return;
      }
    }

    else if (!v8)
    {
      return;
    }

    goto LABEL_51;
  }

  if (&self->_diffuse == property)
  {
    v11 = 1;
  }

  else
  {
    v11 = 22;
  }

  if (&self->_specular == property)
  {
    v11 = 2;
  }

  if (&self->_emission == property)
  {
    v11 = 0;
  }

  if (&self->_reflective == property)
  {
    v11 = 3;
  }

  if (&self->_transparent == property)
  {
    v11 = 4;
  }

  if (&self->_multiply == property)
  {
    v11 = 5;
  }

  if (&self->_normal == property)
  {
    v11 = 6;
  }

  if (&self->_selfIllumination == property)
  {
    v11 = 8;
  }

  if (&self->_ambientOcclusion == property)
  {
    v11 = 7;
  }

  if (&self->_metalness == property)
  {
    v11 = 9;
  }

  if (&self->_roughness == property)
  {
    v11 = 10;
  }

  if (&self->_displacement == property)
  {
    v11 = 18;
  }

  if (&self->_clearCoat == property)
  {
    v11 = 11;
  }

  if (&self->_clearCoatRoughness == property)
  {
    v11 = 12;
  }

  if (&self->_clearCoatNormal == property)
  {
    v11 = 13;
  }

  if (&self->_subsurface == property)
  {
    v11 = 14;
  }

  if (&self->_subsurfaceRadius == property)
  {
    v11 = 15;
  }

  if (&self->_transmission == property)
  {
    v11 = 16;
  }

  if (&self->_transmissionColor == property)
  {
    v11 = 17;
  }

  v12 = v11;
  if (v11 == 22 || (v13 = v9, v14 = sub_1AF166058(v9, v12), sub_1AF1663B0(v13, v12), !v14))
  {
    v14 = &v29;
    sub_1AF163FFC(&v29, 0.5, 0.5, 0.5, 1.0);
  }

  v17 = objc_alloc(objc_msgSend__materialPropertyClass(self, v15, v16));
  v19 = objc_msgSend_initWithParent_propertyType_(v17, v18, self, v12);
  *property = v19;
  v20 = MEMORY[0x1E69DC888];
  isColorManaged = objc_msgSend_isColorManaged(v19, v21, v22);
  v25 = objc_msgSend_vfx_colorWithCFXColor_ignoringColorSpace_(v20, v24, v14, isColorManaged ^ 1u);
  objc_msgSend__setColor_(v19, v26, v25);
  if (v8)
  {
LABEL_51:
    sub_1AF1CEA9C(v8, v27);
  }
}

- (void)setColor:(id)color
{
  v4 = objc_msgSend_diffuse(self, a2, color);

  objc_msgSend_setColor_(v4, v5, color);
}

- (id)color
{
  v3 = objc_msgSend_diffuse(self, a2, v2);

  return objc_msgSend_color(v3, v4, v5);
}

- (id)builtinProperties
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v7 = objc_msgSend_initWithCapacity_(v3, v4, 18);
  if (self->_diffuse)
  {
    v8 = objc_msgSend_diffuse(self, v5, v6);
    objc_msgSend_addObject_(v7, v9, v8);
  }

  if (self->_specular)
  {
    v10 = objc_msgSend_specular(self, v5, v6);
    objc_msgSend_addObject_(v7, v11, v10);
  }

  if (self->_emission)
  {
    v12 = objc_msgSend_emission(self, v5, v6);
    objc_msgSend_addObject_(v7, v13, v12);
  }

  if (self->_transparent)
  {
    v14 = objc_msgSend_transparent(self, v5, v6);
    objc_msgSend_addObject_(v7, v15, v14);
  }

  if (self->_reflective)
  {
    v16 = objc_msgSend_reflective(self, v5, v6);
    objc_msgSend_addObject_(v7, v17, v16);
  }

  if (self->_multiply)
  {
    v18 = objc_msgSend_multiply(self, v5, v6);
    objc_msgSend_addObject_(v7, v19, v18);
  }

  if (self->_normal)
  {
    v20 = objc_msgSend_normal(self, v5, v6);
    objc_msgSend_addObject_(v7, v21, v20);
  }

  if (self->_ambientOcclusion)
  {
    v22 = objc_msgSend_ambientOcclusion(self, v5, v6);
    objc_msgSend_addObject_(v7, v23, v22);
  }

  if (self->_selfIllumination)
  {
    v24 = objc_msgSend_selfIllumination(self, v5, v6);
    objc_msgSend_addObject_(v7, v25, v24);
  }

  if (self->_metalness)
  {
    v26 = objc_msgSend_metalness(self, v5, v6);
    objc_msgSend_addObject_(v7, v27, v26);
  }

  if (self->_roughness)
  {
    v28 = objc_msgSend_roughness(self, v5, v6);
    objc_msgSend_addObject_(v7, v29, v28);
  }

  if (self->_displacement)
  {
    v30 = objc_msgSend_displacement(self, v5, v6);
    objc_msgSend_addObject_(v7, v31, v30);
  }

  if (self->_clearCoat)
  {
    v32 = objc_msgSend_clearCoat(self, v5, v6);
    objc_msgSend_addObject_(v7, v33, v32);
  }

  if (self->_clearCoatRoughness)
  {
    v34 = objc_msgSend_clearCoatRoughness(self, v5, v6);
    objc_msgSend_addObject_(v7, v35, v34);
  }

  if (self->_clearCoatNormal)
  {
    v36 = objc_msgSend_clearCoatNormal(self, v5, v6);
    objc_msgSend_addObject_(v7, v37, v36);
  }

  if (self->_subsurface)
  {
    v38 = objc_msgSend_subsurface(self, v5, v6);
    objc_msgSend_addObject_(v7, v39, v38);
  }

  if (self->_subsurfaceRadius)
  {
    v40 = objc_msgSend_subsurfaceRadius(self, v5, v6);
    objc_msgSend_addObject_(v7, v41, v40);
  }

  if (self->_transmission)
  {
    v42 = objc_msgSend_transmission(self, v5, v6);
    objc_msgSend_addObject_(v7, v43, v42);
  }

  if (self->_transmissionColor)
  {
    v44 = objc_msgSend_transmissionColor(self, v5, v6);
    objc_msgSend_addObject_(v7, v45, v44);
  }

  return v7;
}

- (id)propertyWithName:(id)name
{
  v61 = *MEMORY[0x1E69E9840];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v5 = objc_msgSend_customMaterialProperties(self, a2, name, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v56, v60, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v57;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v57 != v11)
      {
        objc_enumerationMutation(v5);
      }

      v13 = *(*(&v56 + 1) + 8 * v12);
      v14 = objc_msgSend_propertyName(v13, v8, v9);
      if (objc_msgSend_isEqualToString_(v14, v15, name))
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v56, v60, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (objc_msgSend_isEqualToString_(name, v8, @"diffuse"))
    {
      return objc_msgSend_diffuse(self, v16, v17);
    }

    if (objc_msgSend_isEqualToString_(name, v16, @"specular"))
    {
      return objc_msgSend_specular(self, v19, v20);
    }

    if (objc_msgSend_isEqualToString_(name, v19, @"emission"))
    {
      return objc_msgSend_emission(self, v21, v22);
    }

    if (objc_msgSend_isEqualToString_(name, v21, @"transparent"))
    {
      return objc_msgSend_transparent(self, v23, v24);
    }

    if (objc_msgSend_isEqualToString_(name, v23, @"reflective"))
    {
      return objc_msgSend_reflective(self, v25, v26);
    }

    if (objc_msgSend_isEqualToString_(name, v25, @"multiply"))
    {
      return objc_msgSend_multiply(self, v27, v28);
    }

    if (objc_msgSend_isEqualToString_(name, v27, @"normal"))
    {
      return objc_msgSend_normal(self, v29, v30);
    }

    if (objc_msgSend_isEqualToString_(name, v29, @"ambientOcclusion"))
    {
      return objc_msgSend_ambientOcclusion(self, v31, v32);
    }

    if (objc_msgSend_isEqualToString_(name, v31, @"selfIllumination"))
    {
      return objc_msgSend_selfIllumination(self, v33, v34);
    }

    if (objc_msgSend_isEqualToString_(name, v33, @"metalness"))
    {
      return objc_msgSend_metalness(self, v35, v36);
    }

    if (objc_msgSend_isEqualToString_(name, v35, @"roughness"))
    {
      return objc_msgSend_roughness(self, v37, v38);
    }

    if (objc_msgSend_isEqualToString_(name, v37, @"displacement"))
    {
      return objc_msgSend_displacement(self, v39, v40);
    }

    if (objc_msgSend_isEqualToString_(name, v39, @"clearCoat"))
    {
      return objc_msgSend_clearCoat(self, v41, v42);
    }

    if (objc_msgSend_isEqualToString_(name, v41, @"clearCoatRoughness"))
    {
      return objc_msgSend_clearCoatRoughness(self, v43, v44);
    }

    if (objc_msgSend_isEqualToString_(name, v43, @"clearCoatNormal"))
    {
      return objc_msgSend_clearCoatNormal(self, v45, v46);
    }

    if (objc_msgSend_isEqualToString_(name, v45, @"subsurface"))
    {
      return objc_msgSend_subsurface(self, v47, v48);
    }

    if (objc_msgSend_isEqualToString_(name, v47, @"subsurfaceRadius"))
    {
      return objc_msgSend_subsurfaceRadius(self, v49, v50);
    }

    if (objc_msgSend_isEqualToString_(name, v49, @"transmission"))
    {
      return objc_msgSend_transmission(self, v51, v52);
    }

    if (!objc_msgSend_isEqualToString_(name, v51, @"transmissionColor"))
    {
      return 0;
    }

    return objc_msgSend_transmissionColor(self, v53, v54);
  }

  return v13;
}

- (id)properties
{
  v4 = objc_msgSend_builtinProperties(self, a2, v2);
  v7 = objc_msgSend_customMaterialProperties(self, v5, v6);
  if (!objc_msgSend_count(v7, v8, v9))
  {
    return v4;
  }

  return objc_msgSend_arrayByAddingObjectsFromArray_(v4, v10, v7);
}

- (id)_property:(id *)_property
{
  result = *_property;
  if (!*_property)
  {
    objc_msgSend__setupMaterialProperty_(self, a2, _property);
    result = *_property;
    if (self->_isPresentationObject)
    {
      objc_msgSend_flagAsPresentationObject(result, v6, v7);
      return *_property;
    }
  }

  return result;
}

- (void)setTransparencyMode:(int64_t)mode
{
  if (self->_transparencyMode != mode)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_transparencyMode = mode;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D56A8;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mode;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (int64_t)transparencyMode
{
  if (!self->_isPresentationObject)
  {
    return self->_transparencyMode;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_commonProfile(self, v5, v6);
  if (v8)
  {
    v10 = sub_1AF166C38(v8, v9);
    if (!v7)
    {
      return v10;
    }

    goto LABEL_9;
  }

  v10 = 0;
  if (v7)
  {
LABEL_9:
    sub_1AF1CEA9C(v7, v9);
  }

  return v10;
}

- (void)setShininess:(float)shininess
{
  if (self->_shininess != shininess)
  {
    v7 = v3;
    v8 = v4;
    self->_shininess = shininess;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D57FC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = shininess;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"shininess", v5);
  }
}

- (float)shininess
{
  if (!self->_isPresentationObject)
  {
    return self->_shininess;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_commonProfile(self, v5, v6);
  if (v8)
  {
    v10 = sub_1AF165BEC(v8, 19);
    if (!v7)
    {
      return v10;
    }

    goto LABEL_9;
  }

  v10 = 0.0;
  if (v7)
  {
LABEL_9:
    sub_1AF1CEA9C(v7, v9);
  }

  return v10;
}

- (void)setIndexOfRefraction:(float)refraction
{
  if (self->_indexOfRefraction != refraction)
  {
    v7 = v3;
    v8 = v4;
    self->_indexOfRefraction = refraction;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D5964;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = refraction;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"indexOfRefraction", v5);
  }
}

- (float)indexOfRefraction
{
  if (!self->_isPresentationObject)
  {
    return self->_indexOfRefraction;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_commonProfile(self, v5, v6);
  if (v8)
  {
    v10 = sub_1AF165BEC(v8, 20);
    if (!v7)
    {
      return v10;
    }

    goto LABEL_9;
  }

  v10 = 0.0;
  if (v7)
  {
LABEL_9:
    sub_1AF1CEA9C(v7, v9);
  }

  return v10;
}

- (void)setFresnelExponent:(float)exponent
{
  if (self->_fresnelExponent != exponent)
  {
    v7 = v3;
    v8 = v4;
    self->_fresnelExponent = exponent;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D5ACC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = exponent;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"fresnelExponent", v5);
  }
}

- (float)fresnelExponent
{
  if (!self->_isPresentationObject)
  {
    return self->_fresnelExponent;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_commonProfile(self, v5, v6);
  if (v8)
  {
    v10 = sub_1AF165BEC(v8, 21);
    if (!v7)
    {
      return v10;
    }

    goto LABEL_9;
  }

  v10 = 0.0;
  if (v7)
  {
LABEL_9:
    sub_1AF1CEA9C(v7, v9);
  }

  return v10;
}

- (void)setSelfIlluminationOcclusion:(float)occlusion
{
  if (self->_selfIlluminationOcclusion != occlusion)
  {
    v7 = v3;
    v8 = v4;
    self->_selfIlluminationOcclusion = occlusion;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D5C34;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = occlusion;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"selfIlluminationOcclusion", v5);
  }
}

- (float)selfIlluminationOcclusion
{
  if (!self->_isPresentationObject)
  {
    return self->_selfIlluminationOcclusion;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_commonProfile(self, v5, v6);
  if (v8)
  {
    v10 = sub_1AF166D0C(v8);
    if (!v7)
    {
      return v10;
    }

    goto LABEL_9;
  }

  v10 = 0.0;
  if (v7)
  {
LABEL_9:
    sub_1AF1CEA9C(v7, v9);
  }

  return v10;
}

- (void)setBlendMode:(int64_t)mode
{
  if (self->_blendMode != mode)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_blendMode = mode;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D5D88;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mode;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (int64_t)blendMode
{
  if (!self->_isPresentationObject)
  {
    return self->_blendMode;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_materialRef(self, v5, v6);
  v11 = sub_1AF1A1408(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (float)alphaCutoff
{
  if (!self->_isPresentationObject)
  {
    return self->_alphaCutoff;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_materialRef(self, v5, v6);
  v11 = sub_1AF1A1450(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v11;
}

- (void)setAlphaCutoff:(float)cutoff
{
  if (self->_isPresentationObject || self->_alphaCutoff != cutoff)
  {
    v7 = v3;
    v8 = v4;
    self->_alphaCutoff = cutoff;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D5F48;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = cutoff;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"alphaCutoff", v5);
  }
}

- (void)setShadingModel:(unint64_t)model
{
  if (self->_shadingModel != model)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_shadingModel = model;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D6014;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = model;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (unint64_t)shadingModel
{
  if (!self->_isPresentationObject)
  {
    return self->_shadingModel;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_commonProfile(self, v5, v6);
  v10 = sub_1AF165AE4(v8, v9);
  v13 = sub_1AF2D4900(v10, v11);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v12);
  }

  return v13;
}

- (void)setLitPerPixel:(BOOL)pixel
{
  if (self->_litPerPixel != pixel)
  {
    v7 = v3;
    v8 = v4;
    self->_litPerPixel = pixel;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D6174;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    pixelCopy = pixel;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"litPerPixel", v5);
  }
}

- (BOOL)isLitPerPixel
{
  if (self->_isPresentationObject)
  {
    v4 = objc_msgSend_worldRef(self, a2, v2);
    v7 = v4;
    if (v4)
    {
      sub_1AF1CEA20(v4, v5);
    }

    v8 = objc_msgSend_commonProfile(self, v5, v6);
    if (v8)
    {
      litPerPixel = sub_1AF166BF0(v8, v9);
      if (!v7)
      {
        return litPerPixel & 1;
      }

      goto LABEL_9;
    }

    litPerPixel = 0;
    if (v7)
    {
LABEL_9:
      sub_1AF1CEA9C(v7, v9);
    }
  }

  else
  {
    litPerPixel = self->_litPerPixel;
  }

  return litPerPixel & 1;
}

- (void)setAvoidsOverLighting:(BOOL)lighting
{
  if (self->_avoidsOverLighting != lighting)
  {
    v7 = v3;
    v8 = v4;
    self->_avoidsOverLighting = lighting;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D62C8;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    lightingCopy = lighting;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)avoidsOverLighting
{
  if (self->_isPresentationObject)
  {
    v4 = objc_msgSend_worldRef(self, a2, v2);
    v7 = v4;
    if (v4)
    {
      sub_1AF1CEA20(v4, v5);
    }

    v8 = objc_msgSend_commonProfile(self, v5, v6);
    if (v8)
    {
      avoidsOverLighting = sub_1AF166B30(v8, v9);
      if (!v7)
      {
        return avoidsOverLighting & 1;
      }

      goto LABEL_9;
    }

    avoidsOverLighting = 0;
    if (v7)
    {
LABEL_9:
      sub_1AF1CEA9C(v7, v9);
    }
  }

  else
  {
    avoidsOverLighting = self->_avoidsOverLighting;
  }

  return avoidsOverLighting & 1;
}

- (void)setWritesToDepthBuffer:(BOOL)buffer
{
  if (self->_writesToDepthBuffer != buffer)
  {
    v7 = v3;
    v8 = v4;
    self->_writesToDepthBuffer = buffer;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D6418;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    bufferCopy = buffer;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)writesToDepthBuffer
{
  if (!self->_isPresentationObject)
  {
    return self->_writesToDepthBuffer;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  if (v4)
  {
    v6 = v4;
    sub_1AF1CEA20(v4, v5);
    v8 = sub_1AF1A1650(self->_material, v7);
    sub_1AF1CEA9C(v6, v9);
    return v8;
  }

  else
  {
    material = self->_material;

    return sub_1AF1A1650(material, v5);
  }
}

- (void)setColorBufferWriteMask:(int64_t)mask
{
  if (self->_colorBufferWriteMask != mask)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_colorBufferWriteMask = mask;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D6564;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mask;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (int64_t)colorBufferWriteMask
{
  if (!self->_isPresentationObject)
  {
    return self->_colorBufferWriteMask;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  if (!v4)
  {
    return sub_1AF1A16A0(self->_material, v5);
  }

  v6 = v4;
  sub_1AF1CEA20(v4, v5);
  v8 = sub_1AF1A16A0(self->_material, v7);
  sub_1AF1CEA9C(v6, v9);
  return v8;
}

- (void)setReadsFromDepthBuffer:(BOOL)buffer
{
  if (self->_readsFromDepthBuffer != buffer)
  {
    v7 = v3;
    v8 = v4;
    self->_readsFromDepthBuffer = buffer;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D66A4;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    bufferCopy = buffer;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)readsFromDepthBuffer
{
  if (!self->_isPresentationObject)
  {
    return self->_readsFromDepthBuffer;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  if (v4)
  {
    v6 = v4;
    sub_1AF1CEA20(v4, v5);
    v8 = sub_1AF1A1768(self->_material, v7);
    sub_1AF1CEA9C(v6, v9);
    return v8;
  }

  else
  {
    material = self->_material;

    return sub_1AF1A1768(material, v5);
  }
}

- (id)contents
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  if (!self->_diffuse)
  {
    objc_msgSend__setupMaterialProperty_(self, v5, &self->_diffuse);
  }

  if (v7)
  {
    sub_1AF1CEA9C(v7, v5);
  }

  diffuse = self->_diffuse;

  return objc_msgSend_contents(diffuse, v5, v6);
}

- (void)setContents:(id)contents
{
  v4 = objc_msgSend_diffuse(self, a2, contents);

  objc_msgSend_setContents_(v4, v5, contents);
}

- (void)setDoubleSided:(BOOL)sided
{
  if (self->_doubleSided != sided)
  {
    v7 = v3;
    v8 = v4;
    self->_doubleSided = sided;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D68B4;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    sidedCopy = sided;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"doubleSided", v5);
  }
}

- (BOOL)isDoubleSided
{
  if (!self->_isPresentationObject)
  {
    return self->_doubleSided;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  if (v4)
  {
    v6 = v4;
    sub_1AF1CEA20(v4, v5);
    v8 = sub_1AF1A1224(self->_material, v7);
    sub_1AF1CEA9C(v6, v9);
    return v8;
  }

  else
  {
    material = self->_material;

    return sub_1AF1A1224(material, v5);
  }
}

- (void)setCullMode:(int64_t)mode
{
  if (self->_cullMode != mode)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_cullMode = mode;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D6A10;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mode;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"cullMode", v5);
  }
}

- (int64_t)cullMode
{
  if (!self->_isPresentationObject)
  {
    return self->_cullMode;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  if (!v4)
  {
    return sub_1AF1A1378(self->_material, v5);
  }

  v6 = v4;
  sub_1AF1CEA20(v4, v5);
  v8 = sub_1AF1A1378(self->_material, v7);
  sub_1AF1CEA9C(v6, v9);
  return v8;
}

- (void)setFillMode:(unint64_t)mode
{
  if (self->_fillMode != mode)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_fillMode = mode;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D6B54;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mode;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"fillMode", v5);
  }
}

- (unint64_t)fillMode
{
  if (!self->_isPresentationObject)
  {
    return self->_fillMode;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  if (!v4)
  {
    return sub_1AF1A13C0(self->_material, v5);
  }

  v6 = v4;
  sub_1AF1CEA20(v4, v5);
  v8 = sub_1AF1A13C0(self->_material, v7);
  sub_1AF1CEA9C(v6, v9);
  return v8;
}

- (NSString)description
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@: %p", v5, self);
  v10 = objc_msgSend_name(self, v8, v9);
  if (objc_msgSend_length(v10, v11, v12))
  {
    v15 = objc_msgSend_name(self, v13, v14);
    objc_msgSend_appendFormat_(v7, v16, @" '%@'", v15);
  }

  v17 = objc_msgSend_properties(self, v13, v14);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v30, v34, 16);
  if (v19)
  {
    v22 = v19;
    v23 = 0;
    v24 = *v31;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v17);
        }

        v26 = *(*(&v30 + 1) + 8 * i);
        if ((objc_msgSend__hasDefaultValues(v26, v20, v21) & 1) == 0)
        {
          v27 = objc_msgSend_propertyName(v26, v20, v21);
          objc_msgSend_appendFormat_(v7, v28, @"\n  %@=%@", v27, v26);
          v23 = 1;
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v30, v34, 16);
    }

    while (v22);
    if (v23)
    {
      objc_msgSend_appendString_(v7, v20, @"\n");
    }
  }

  objc_msgSend_appendString_(v7, v20, @">");
  return v7;
}

- (id)copyAnimationChannelForKeyPath:(id)path property:(id)property
{
  v6 = objc_msgSend_materialPropertyName(property, a2, path);
  if (objc_msgSend_isEqualToString_(path, v7, @"color") || objc_msgSend_isEqualToString_(path, v8, @"contents") || objc_msgSend_isEqualToString_(path, v8, @"content"))
  {
    v9 = objc_msgSend_stringByAppendingString_(v6, v8, @".contents");
  }

  else
  {
    v9 = objc_msgSend_stringByAppendingFormat_(v6, v8, @".%@", path);
  }

  return sub_1AF291EF0(self, v9, v10);
}

- (id)copyAnimationChannelForKeyPath:(id)path animation:(id)animation
{
  v38 = *MEMORY[0x1E69E9840];
  result = objc_msgSend_length(path, a2, path);
  if (result)
  {
    if (self->_shadableHelper)
    {
      os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
      v10 = objc_msgSend_objectForKey_(self->_valuesForUndefinedKeys, v9, path);
      os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
      if (!v10)
      {
        v14 = sub_1AF290E58(animation, v11);
        if (v14)
        {
          v17 = sub_1AF376904(v14, v15, v16);
          v20 = objc_msgSend_worldRef(self, v18, v19);
          if (v20)
          {
            v23 = v20;
            sub_1AF1CEA20(v20, v21);
            objc_msgSend_begin(VFXTransaction, v24, v25);
            objc_msgSend_setImmediateMode_(VFXTransaction, v26, 1);
            objc_msgSend_setValue_forUndefinedKey_(self, v27, v17, path);
            objc_msgSend_commitImmediate(VFXTransaction, v28, v29);
            sub_1AF1CEA9C(v23, v30);
          }

          else
          {
            objc_msgSend_begin(VFXTransaction, v21, v22);
            objc_msgSend_setImmediateMode_(VFXTransaction, v32, 1);
            objc_msgSend_setValue_forUndefinedKey_(self, v33, v17, path);
            objc_msgSend_commitImmediate(VFXTransaction, v34, v35);
          }
        }

        else
        {
          v31 = sub_1AF0D5194(v14, v15);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v36 = 138412290;
            pathCopy = path;
            _os_log_impl(&dword_1AF0CE000, v31, OS_LOG_TYPE_DEFAULT, "Warning: can't prepare shadable animation with path %@", &v36, 0xCu);
          }
        }
      }
    }

    result = sub_1AF291EF0(self, path, v8);
    if (!result)
    {
      v13 = sub_1AF0D5194(0, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF5A88();
      }

      return 0;
    }
  }

  return result;
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

    if (!self->_isPresentationObject)
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
    v16[2] = sub_1AF2D7264;
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
      sub_1AFDF45D0();
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
      sub_1AFDF4640();
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
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v14, self, v20, MEMORY[0x1E69E9820], 3221225472, sub_1AF2D75E8, &unk_1E7A7E1D0, self, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6]);
  }

  else
  {
    v17 = v16;
    v18 = objc_msgSend_timingFunction(VFXTransaction, v14, v15);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v19, self, v21, v20[0], v20[1], v20[2], v20[3], v20[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF2D75D8, &unk_1E7A7E2E8, self, v18, *&v17);
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
    v17[2] = sub_1AF2D76D8;
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
      v17[2] = sub_1AF2D7874;
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
    v21[2] = sub_1AF2D7C94;
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
  v8[2] = sub_1AF2D7DD8;
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
  v4[2] = sub_1AF2D7EA4;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)from
{
  v4 = objc_msgSend__vfxBindings(from, a2, from);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF2D7F50;
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
    v9[2] = sub_1AF2D8088;
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
  v4[2] = sub_1AF2D81C4;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_withContext_(self, v5, v4, 0);
  return v4;
}

- (void)copyTo:(id)to withContext:(id)context
{
  v117[1] = *MEMORY[0x1E69E9840];
  objc_msgSend_begin(VFXTransaction, a2, to);
  objc_msgSend_setImmediateMode_(VFXTransaction, v7, 1);
  v10 = objc_msgSend_name(self, v8, v9);
  objc_msgSend_setName_(to, v11, v10);
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v14 = objc_msgSend_copy(self->_valuesForUndefinedKeys, v12, v13);
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3221225472;
  v115[2] = sub_1AF2D8704;
  v115[3] = &unk_1E7A7E7E8;
  v115[4] = to;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v14, v15, v115);

  objc_msgSend_shininess(self, v16, v17);
  objc_msgSend_setShininess_(to, v18, v19);
  v22 = objc_msgSend_transparencyMode(self, v20, v21);
  objc_msgSend_setTransparencyMode_(to, v23, v22);
  v26 = objc_msgSend_shadingModel(self, v24, v25);
  objc_msgSend_setShadingModel_(to, v27, v26);
  isLitPerPixel = objc_msgSend_isLitPerPixel(self, v28, v29);
  objc_msgSend_setLitPerPixel_(to, v31, isLitPerPixel);
  isDoubleSided = objc_msgSend_isDoubleSided(self, v32, v33);
  objc_msgSend_setDoubleSided_(to, v35, isDoubleSided);
  v38 = objc_msgSend_cullMode(self, v36, v37);
  objc_msgSend_setCullMode_(to, v39, v38);
  v42 = objc_msgSend_program(self, v40, v41);
  objc_msgSend_setProgram_(to, v43, v42);
  v46 = objc_msgSend_avoidsOverLighting(self, v44, v45);
  objc_msgSend_setAvoidsOverLighting_(to, v47, v46);
  v50 = objc_msgSend_fillMode(self, v48, v49);
  objc_msgSend_setFillMode_(to, v51, v50);
  objc_msgSend_fresnelExponent(self, v52, v53);
  objc_msgSend_setFresnelExponent_(to, v54, v55);
  v58 = objc_msgSend_writesToDepthBuffer(self, v56, v57);
  objc_msgSend_setWritesToDepthBuffer_(to, v59, v58);
  v62 = objc_msgSend_readsFromDepthBuffer(self, v60, v61);
  objc_msgSend_setReadsFromDepthBuffer_(to, v63, v62);
  v66 = objc_msgSend_colorBufferWriteMask(self, v64, v65);
  objc_msgSend_setColorBufferWriteMask_(to, v67, v66);
  v70 = objc_msgSend_blendMode(self, v68, v69);
  objc_msgSend_setBlendMode_(to, v71, v70);
  objc_msgSend_alphaCutoff(self, v72, v73);
  objc_msgSend_setAlphaCutoff_(to, v74, v75);
  v78 = objc_msgSend_properties(self, v76, v77);
  v81 = objc_msgSend_count(v78, v79, v80);
  if (v81)
  {
    v84 = v81;
    for (i = 0; i != v84; ++i)
    {
      v86 = objc_msgSend_objectAtIndex_(v78, v82, i);
      v89 = objc_msgSend_propertyName(v86, v87, v88);
      v92 = objc_msgSend_propertyWithName_(to, v90, v89);
      if (!v92 && (byte_1EB658860 & 1) == 0)
      {
        byte_1EB658860 = 1;
        v93 = sub_1AF0D5194(0, v91);
        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF5AF8(&v113, v114, v93);
        }
      }

      objc_msgSend_copyPropertiesFrom_copyContext_(v92, v91, v86, context);
    }
  }

  if (objc_msgSend_behaviorGraph(self, v82, v83))
  {
    v96 = objc_msgSend_behaviorGraph(self, v94, v95);
    v99 = objc_msgSend_copy(v96, v97, v98);
    objc_msgSend_setBehaviorGraph_(to, v100, v99);
    v103 = objc_msgSend_entityObject(v99, v101, v102);
    v116 = objc_msgSend_identifier(self, v104, v105);
    v117[0] = to;
    v107 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v106, v117, &v116, 1);
    objc_msgSend_updateVFXObjectReferences_(v103, v108, v107);
  }

  objc_msgSend__copyAnimationsFrom_(to, v94, self);
  objc_msgSend__copyBindingsFrom_(to, v109, self);
  objc_msgSend_copyShaderModifiersAndLanguageVersionFrom_(to, v110, self);
  objc_msgSend_commitImmediate(VFXTransaction, v111, v112);
}

- (id)valueForUndefinedKey:(id)key
{
  if (self->_isPresentationObject)
  {
    v5 = sub_1AF1DB6D0(self->_material, key, 0);
    if (v5)
    {
      v7 = v5;
      if (sub_1AF1DE3A8(v5, v6))
      {
        v9 = sub_1AF1DE3A8(v7, v8);
        v11 = sub_1AF1DE538(v7, v10);
        v13 = sub_1AF376790(v9, v11, v12);
        CFRelease(v7);
        return v13;
      }

      CFRelease(v7);
    }
  }

  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v16 = objc_msgSend_objectForKey_(self->_valuesForUndefinedKeys, v15, key);
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);

  return v16;
}

- (void)_shadableSetValue:(id)value forUndefinedKey:(id)key
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v8 = objc_msgSend_objectForKey_(self->_valuesForUndefinedKeys, v7, key);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
    objc_msgSend_willChangeValueForKey_(self, v11, @"customMaterialProperties");
    objc_msgSend_willChangeValueForKey_(self, v12, @"customMaterialAttributes");
    os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  }

  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  if (value)
  {
    if (!valuesForUndefinedKeys)
    {
      valuesForUndefinedKeys = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_valuesForUndefinedKeys = valuesForUndefinedKeys;
    }

    objc_msgSend_setObject_forKey_(valuesForUndefinedKeys, v9, value, key);
  }

  else
  {
    objc_msgSend_removeObjectForKey_(valuesForUndefinedKeys, v9, key);
  }

  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  if ((isKindOfClass & 1) == 0)
  {
    objc_msgSend_didChangeValueForKey_(self, v14, @"customMaterialProperties");
    objc_msgSend_didChangeValueForKey_(self, v16, @"customMaterialAttributes");
  }

  v17 = objc_msgSend___CFObject(self, v14, v15);
  objc_opt_class();
  keyCopy = key;
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_unlinkCustomPropertyWithParent_(v8, v18, self);
    keyCopy = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_linkCustomPropertyWithParent_andCustomName_(value, v20, self, key);
    v23 = objc_msgSend_materialProperty(value, v21, v22);
    if (v23)
    {
      v25 = CFRetain(v23);
      keyCopy = 0;
      goto LABEL_23;
    }

    keyCopy = 0;
LABEL_22:
    v25 = 0;
    goto LABEL_23;
  }

  v25 = sub_1AF376D98(self, key);
  if (v25)
  {
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = sub_1AF37673C(value, v26, v27);
LABEL_18:
    if (!v25)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_22;
  }

  v35[0] = sub_1AF371798(value, 0);
  v35[1] = v32;
  v25 = sub_1AF1CD954(9, v32);
  sub_1AF1CDB88(v25, v35);
  if (!v25)
  {
    goto LABEL_23;
  }

LABEL_19:
  if (!v8)
  {
    v28 = sub_1AF1CDAAC(v25, v24);
    v30 = sub_1AF1CD9FC(v28, v29);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = sub_1AF2D8B50;
    v34[3] = &unk_1E7A7E5F0;
    v34[4] = key;
    v34[5] = v17;
    v34[6] = v30;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v31, self, v34);
  }

LABEL_23:
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1AF2D8BA4;
  v33[3] = &unk_1E7A7E810;
  v33[6] = v25;
  v33[7] = v17;
  v33[4] = key;
  v33[5] = value;
  objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v24, self, keyCopy, v33);
}

- (id)customMaterialPropertyNames
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v3 = MEMORY[0x1E695DF70];
  v6 = objc_msgSend_count(self->_valuesForUndefinedKeys, v4, v5);
  v8 = objc_msgSend_arrayWithCapacity_(v3, v7, v6);
  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1AF2D8CE0;
  v12[3] = &unk_1E7A7E7E8;
  v12[4] = v8;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(valuesForUndefinedKeys, v10, v12);
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  return v8;
}

- (id)customMaterialProperties
{
  v27 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v3 = MEMORY[0x1E695DF70];
  v6 = objc_msgSend_count(self->_valuesForUndefinedKeys, v4, v5);
  v8 = objc_msgSend_arrayWithCapacity_(v3, v7, v6);
  v11 = objc_msgSend_allKeys(self->_valuesForUndefinedKeys, v9, v10);
  v13 = objc_msgSend_sortedArrayUsingComparator_(v11, v12, &unk_1F24EC018);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v22, v26, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = objc_msgSend_valueForKey_(self->_valuesForUndefinedKeys, v16, *(*(&v22 + 1) + 8 * v19));
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_addObject_(v8, v16, v20);
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v22, v26, 16);
    }

    while (v17);
  }

  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  return v8;
}

- (id)customMaterialAttributeNames
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v3 = MEMORY[0x1E695DF70];
  v6 = objc_msgSend_count(self->_valuesForUndefinedKeys, v4, v5);
  v8 = objc_msgSend_arrayWithCapacity_(v3, v7, v6);
  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1AF2D8F78;
  v12[3] = &unk_1E7A7E7E8;
  v12[4] = v8;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(valuesForUndefinedKeys, v10, v12);
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  return v8;
}

- (id)customMaterialAttributes
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v3 = MEMORY[0x1E695DF70];
  v6 = objc_msgSend_count(self->_valuesForUndefinedKeys, v4, v5);
  v8 = objc_msgSend_arrayWithCapacity_(v3, v7, v6);
  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1AF2D9138;
  v12[3] = &unk_1E7A7E7E8;
  v12[4] = v8;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(valuesForUndefinedKeys, v10, v12);
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  return v8;
}

- (void)_setupShadableHelperIfNeeded
{
  if (!self->_shadableHelper)
  {
    v3 = [VFXShadableHelper alloc];
    self->_shadableHelper = objc_msgSend_initWithOwner_(v3, v4, self);
  }
}

- (void)setShaderModifiers:(id)modifiers
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_mutableCopy(modifiers, a2, modifiers);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = objc_msgSend_allKeys(modifiers, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v21, v25, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = objc_msgSend_objectForKeyedSubscript_(v5, v11, v16);
        if (!objc_msgSend_length(v17, v18, v19))
        {
          objc_msgSend_removeObjectForKey_(v5, v11, v16);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v21, v25, 16);
    }

    while (v13);
  }

  if (v5 && objc_msgSend_count(v5, v11, v12))
  {
    objc_msgSend__setupShadableHelperIfNeeded(self, v11, v20);
  }

  objc_msgSend_setShaderModifiers_(self->_shadableHelper, v11, v5);
}

- (void)copyShaderModifiersAndLanguageVersionFrom:(id)from
{
  if (objc_msgSend_shaderModifiers(from, a2, from))
  {
    objc_msgSend__setupShadableHelperIfNeeded(self, v5, v6);
  }

  v7 = objc_msgSend___shadableHelper(from, v5, v6);
  objc_msgSend_copyModifiersFrom_(self->_shadableHelper, v8, v7);
  v12 = objc_msgSend_minimumLanguageVersion(v7, v9, v10);
  shadableHelper = self->_shadableHelper;

  objc_msgSend_setMinimumLanguageVersion_(shadableHelper, v11, v12);
}

- (void)setMinimumLanguageVersion:(id)version
{
  if (version)
  {
    objc_msgSend__setupShadableHelperIfNeeded(self, a2, version);
  }

  shadableHelper = self->_shadableHelper;

  objc_msgSend_setMinimumLanguageVersion_(shadableHelper, a2, version);
}

- (id)shaderModifiersArgumentWithName:(id)name
{
  v4 = objc_msgSend_shaderModifiersArguments(self->_shadableHelper, a2, name);

  return objc_msgSend_objectForKeyedSubscript_(v4, v5, name);
}

- (void)setProgram:(id)program
{
  if (program)
  {
    programCopy = program;
    objc_msgSend__setupShadableHelperIfNeeded(self, a2, program);
    shadableHelper = self->_shadableHelper;
    program = programCopy;
  }

  else
  {
    shadableHelper = self->_shadableHelper;
  }

  objc_msgSend_setProgram_(shadableHelper, a2, program);
}

- (void)setBehaviorGraph:(id)graph
{
  if (objc_msgSend_behaviorGraph(self, a2, graph) != graph)
  {
    v7 = objc_msgSend_world(self, v5, v6);
    if (v7)
    {
      v9 = v7;
      objc_msgSend_removeWorldReference_(graph, v8, v7);

      self->_behaviorGraph = graph;
      objc_msgSend_addWorldReference_(graph, v10, v9);
    }

    else
    {

      self->_behaviorGraph = graph;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1AF2D9574;
    v12[3] = &unk_1E7A7E220;
    v12[4] = self;
    v12[5] = graph;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v11, self, v12);
  }
}

- (VFXBehaviorGraph)behaviorGraph
{
  result = self->_behaviorGraph;
  if (self->_isPresentationObject)
  {
    return (MEMORY[0x1EEE66B58])(result, sel_presentationBehaviorGraph);
  }

  return result;
}

- (void)_customDecodingOfVFXMaterial:(id)material
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v8 = objc_msgSend_setWithObject_(v5, v7, v6);
  v10 = sub_1AF373968(v8, v9);
  v12 = objc_msgSend_vfx_decodeDictionaryWithKeysOfClasses_objectsOfClasses_forKey_(material, v11, v8, v10, @"valuesForUndefinedKeys");
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1AF2D9698;
  v14[3] = &unk_1E7A7E7E8;
  v14[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v12, v13, v14);
}

- (void)_customEncodingOfVFXMaterial:(id)material
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  if (valuesForUndefinedKeys)
  {
    objc_msgSend_encodeObject_forKey_(material, v5, valuesForUndefinedKeys, @"valuesForUndefinedKeys");
  }

  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
}

- (void)encodeWithCoder:(id)coder
{
  v46 = *MEMORY[0x1E69E9840];
  if (self->_isPresentationObject)
  {
    objc_msgSend__updateModelFromPresentation(self, a2, coder);
  }

  objc_msgSend__customEncodingOfVFXMaterial_(self, a2, coder);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = objc_msgSend_builtinProperties(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v41, v45, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v42;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v41 + 1) + 8 * i);
        if ((objc_msgSend__hasDefaultValues(v15, v10, v11) & 1) == 0)
        {
          v16 = objc_msgSend_propertyName(v15, v10, v11);
          objc_msgSend_encodeObject_forKey_(coder, v17, v15, v16);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v41, v45, 16);
    }

    while (v12);
  }

  objc_msgSend_encodeObject_forKey_(coder, v10, self->_name, @"name");
  *&v18 = self->_shininess;
  objc_msgSend_encodeFloat_forKey_(coder, v19, @"shininess", v18);
  if (self->_alphaCutoff != -1.0)
  {
    objc_msgSend_encodeFloat_forKey_(coder, v20, @"alphaCutoff");
  }

  *&v21 = self->_indexOfRefraction;
  objc_msgSend_encodeFloat_forKey_(coder, v20, @"indexOfRefraction", v21);
  *&v22 = self->_fresnelExponent;
  objc_msgSend_encodeFloat_forKey_(coder, v23, @"fresnelExponent", v22);
  objc_msgSend_encodeInteger_forKey_(coder, v24, self->_transparencyMode, @"transparencyMode");
  shadingModel = self->_shadingModel;
  if (shadingModel)
  {
    objc_msgSend_encodeInteger_forKey_(coder, v25, shadingModel, @"shadingModel");
  }

  objc_msgSend_encodeInteger_forKey_(coder, v25, self->_cullMode, @"cullMode");
  shadableHelper = self->_shadableHelper;
  if (shadableHelper)
  {
    objc_msgSend_encodeObject_forKey_(coder, v27, shadableHelper, @"shadableHelper");
  }

  objc_msgSend_encodeBool_forKey_(coder, v27, self->_litPerPixel, @"litPerPixel");
  objc_msgSend_encodeBool_forKey_(coder, v29, self->_doubleSided, @"doubleSided");
  objc_msgSend_encodeBool_forKey_(coder, v30, self->_avoidsOverLighting, @"avoidsOverLighting");
  objc_msgSend_encodeBool_forKey_(coder, v31, self->_writesToDepthBuffer, @"writesToDepthBuffer");
  objc_msgSend_encodeBool_forKey_(coder, v32, self->_readsFromDepthBuffer, @"readsFromDepthBuffer");
  objc_msgSend_encodeInteger_forKey_(coder, v33, self->_colorBufferWriteMask, @"colorBufferWriteMask");
  objc_msgSend_encodeInteger_forKey_(coder, v34, qword_1AFE47898[self->_fillMode], @"fillMode");
  objc_msgSend_encodeInteger_forKey_(coder, v35, self->_blendMode, @"blendMode");
  *&v36 = self->_selfIlluminationOcclusion;
  objc_msgSend_encodeFloat_forKey_(coder, v37, @"selfIlluminationOcclusion", v36);
  behaviorGraph = self->_behaviorGraph;
  if (behaviorGraph)
  {
    objc_msgSend_encodeObject_forKey_(coder, v38, behaviorGraph, @"behaviorGraph");
  }

  sub_1AF372440(coder, self, behaviorGraph);
  sub_1AF3728B4(coder, self, v40);
}

- (VFXMaterial)initWithCoder:(id)coder
{
  v138.receiver = self;
  v138.super_class = VFXMaterial;
  v6 = [(VFXMaterial *)&v138 init];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    v9 = objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    v11 = sub_1AF1A0BFC(v9, v10);
    v6->_material = v11;
    if (v11)
    {
      sub_1AF16CDFC(v11, v6);
    }

    objc_msgSend__updateModelFromPresentation(v6, v12, v13);
    v6->_valuesForUndefinedKeysLock._os_unfair_lock_opaque = 0;
    objc_msgSend__customDecodingOfVFXMaterial_(v6, v14, coder);
    if (objc_msgSend_containsValueForKey_(coder, v15, @"diffuse"))
    {
      v17 = objc_opt_class();
      v6->_diffuse = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v18, v17, @"diffuse");
    }

    if (objc_msgSend_containsValueForKey_(coder, v16, @"specular"))
    {
      v20 = objc_opt_class();
      v6->_specular = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v21, v20, @"specular");
    }

    if (objc_msgSend_containsValueForKey_(coder, v19, @"emission"))
    {
      v23 = objc_opt_class();
      v6->_emission = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v24, v23, @"emission");
    }

    if (objc_msgSend_containsValueForKey_(coder, v22, @"transparent"))
    {
      v26 = objc_opt_class();
      v6->_transparent = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v27, v26, @"transparent");
    }

    if (objc_msgSend_containsValueForKey_(coder, v25, @"reflective"))
    {
      v29 = objc_opt_class();
      v6->_reflective = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v30, v29, @"reflective");
    }

    if (objc_msgSend_containsValueForKey_(coder, v28, @"multiply"))
    {
      v32 = objc_opt_class();
      v6->_multiply = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v33, v32, @"multiply");
    }

    if (objc_msgSend_containsValueForKey_(coder, v31, @"normal"))
    {
      v35 = objc_opt_class();
      v6->_normal = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v36, v35, @"normal");
    }

    if (objc_msgSend_containsValueForKey_(coder, v34, @"ambientOcclusion"))
    {
      v38 = objc_opt_class();
      v6->_ambientOcclusion = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v39, v38, @"ambientOcclusion");
    }

    if (objc_msgSend_containsValueForKey_(coder, v37, @"selfIllumination"))
    {
      v41 = objc_opt_class();
      v6->_selfIllumination = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v42, v41, @"selfIllumination");
    }

    if (objc_msgSend_containsValueForKey_(coder, v40, @"metalness"))
    {
      v44 = objc_opt_class();
      v6->_metalness = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v45, v44, @"metalness");
    }

    if (objc_msgSend_containsValueForKey_(coder, v43, @"roughness"))
    {
      v47 = objc_opt_class();
      v6->_roughness = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v48, v47, @"roughness");
    }

    if (objc_msgSend_containsValueForKey_(coder, v46, @"displacement"))
    {
      v50 = objc_opt_class();
      v6->_displacement = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v51, v50, @"displacement");
    }

    if (objc_msgSend_containsValueForKey_(coder, v49, @"clearCoat"))
    {
      v53 = objc_opt_class();
      v6->_clearCoat = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v54, v53, @"clearCoat");
    }

    if (objc_msgSend_containsValueForKey_(coder, v52, @"clearCoatRoughness"))
    {
      v56 = objc_opt_class();
      v6->_clearCoatRoughness = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v57, v56, @"clearCoatRoughness");
    }

    if (objc_msgSend_containsValueForKey_(coder, v55, @"clearCoatNormal"))
    {
      v59 = objc_opt_class();
      v6->_clearCoatNormal = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v60, v59, @"clearCoatNormal");
    }

    if (objc_msgSend_containsValueForKey_(coder, v58, @"subsurface"))
    {
      v62 = objc_opt_class();
      v6->_subsurface = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v63, v62, @"subsurface");
    }

    if (objc_msgSend_containsValueForKey_(coder, v61, @"subsurfaceRadius"))
    {
      v65 = objc_opt_class();
      v6->_subsurfaceRadius = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v66, v65, @"subsurfaceRadius");
    }

    if (objc_msgSend_containsValueForKey_(coder, v64, @"transmission"))
    {
      v68 = objc_opt_class();
      v6->_transmission = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v69, v68, @"transmission");
    }

    if (objc_msgSend_containsValueForKey_(coder, v67, @"transmissionColor"))
    {
      v71 = objc_opt_class();
      v6->_transmissionColor = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v72, v71, @"transmissionColor");
    }

    if (objc_msgSend_containsValueForKey_(coder, v70, @"alphaCutoff"))
    {
      objc_msgSend_decodeFloatForKey_(coder, v73, @"alphaCutoff");
      objc_msgSend_setAlphaCutoff_(v6, v74, v75);
    }

    v76 = objc_opt_class();
    v78 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v77, v76, @"name");
    objc_msgSend_setName_(v6, v79, v78);
    objc_msgSend_decodeFloatForKey_(coder, v80, @"shininess");
    objc_msgSend_setShininess_(v6, v81, v82);
    objc_msgSend_decodeFloatForKey_(coder, v83, @"indexOfRefraction");
    objc_msgSend_setIndexOfRefraction_(v6, v84, v85);
    objc_msgSend_decodeFloatForKey_(coder, v86, @"fresnelExponent");
    objc_msgSend_setFresnelExponent_(v6, v87, v88);
    v90 = objc_msgSend_decodeIntegerForKey_(coder, v89, @"transparencyMode");
    objc_msgSend_setTransparencyMode_(v6, v91, v90);
    v93 = objc_msgSend_decodeIntegerForKey_(coder, v92, @"shadingModel");
    objc_msgSend_setShadingModel_(v6, v94, v93);
    v96 = objc_msgSend_decodeIntegerForKey_(coder, v95, @"cullMode");
    objc_msgSend_setCullMode_(v6, v97, v96);
    v98 = objc_opt_class();
    v100 = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v99, v98, @"shadableHelper");
    v6->_shadableHelper = v100;
    if (objc_msgSend_owner(v100, v101, v102) != v6)
    {

      v6->_shadableHelper = 0;
    }

    v104 = objc_msgSend_decodeBoolForKey_(coder, v103, @"litPerPixel");
    objc_msgSend_setLitPerPixel_(v6, v105, v104);
    v107 = objc_msgSend_decodeBoolForKey_(coder, v106, @"doubleSided");
    objc_msgSend_setDoubleSided_(v6, v108, v107);
    v110 = objc_msgSend_decodeBoolForKey_(coder, v109, @"avoidsOverLighting");
    objc_msgSend_setAvoidsOverLighting_(v6, v111, v110);
    v113 = objc_msgSend_decodeBoolForKey_(coder, v112, @"writesToDepthBuffer");
    objc_msgSend_setWritesToDepthBuffer_(v6, v114, v113);
    if (objc_msgSend_containsValueForKey_(coder, v115, @"colorBufferWriteMask"))
    {
      v117 = objc_msgSend_decodeIntegerForKey_(coder, v116, @"colorBufferWriteMask");
      objc_msgSend_setColorBufferWriteMask_(v6, v118, v117);
    }

    v119 = objc_msgSend_decodeBoolForKey_(coder, v116, @"readsFromDepthBuffer");
    objc_msgSend_setReadsFromDepthBuffer_(v6, v120, v119);
    v122 = objc_msgSend_decodeIntegerForKey_(coder, v121, @"fillMode");
    v124 = 2;
    if (v122 < 2)
    {
      v124 = v122;
    }

    objc_msgSend_setFillMode_(v6, v123, qword_1AFE478A8[v124 & ~(v124 >> 63)]);
    v126 = objc_msgSend_decodeIntegerForKey_(coder, v125, @"blendMode");
    objc_msgSend_setBlendMode_(v6, v127, v126);
    objc_msgSend_decodeFloatForKey_(coder, v128, @"selfIlluminationOcclusion");
    objc_msgSend_setSelfIlluminationOcclusion_(v6, v129, v130);
    if (objc_msgSend_containsValueForKey_(coder, v131, @"behaviorGraph"))
    {
      v132 = objc_opt_class();
      v134 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v133, v132, @"behaviorGraph");
      objc_msgSend_setBehaviorGraph_(v6, v135, v134);
    }

    v6->_animationsLock._os_unfair_lock_opaque = 0;
    sub_1AF37249C(coder, v6);
    sub_1AF372B94(coder, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v136, v7);
  }

  return v6;
}

- (id)_integrateModelKitComputedMaps:(id)maps withModel:(id)model node:(id)node texturePathProvider:(id)provider vertexAttributeNamed:(id)named materialPropertyNamed:(id)propertyNamed filePath:(id)path
{
  isEqualToString = objc_msgSend_isEqualToString_(named, a2, *MEMORY[0x1E6974AD8]);
  v18 = objc_msgSend_propertyNamed_(maps, v17, propertyNamed);
  if (!v18)
  {
    return 0;
  }

  v21 = v18;
  if (!objc_msgSend_textureSamplerValue(v18, v19, v20))
  {
    return 0;
  }

  v24 = objc_msgSend_textureSamplerValue(v21, v22, v23);
  if (!objc_msgSend_texture(v24, v25, v26))
  {
    return 0;
  }

  if (provider)
  {
    v29 = (*(provider + 2))(provider, node);
  }

  else
  {
    v32 = MEMORY[0x1E696AEC0];
    v33 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v27, v28);
    v36 = objc_msgSend_UUIDString(v33, v34, v35);
    v29 = objc_msgSend_stringWithFormat_(v32, v37, @"/tmp/ModelKit_AO_%@.png", v36);
  }

  pathCopy = v29;
  if (objc_msgSend_isEqualToString_(path, v30, &stru_1F2575650))
  {
    v41 = objc_msgSend_textureSamplerValue(v21, v39, v40);
    v44 = objc_msgSend_texture(v41, v42, v43);
    v46 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v45, pathCopy);
    objc_msgSend_writeToURL_(v44, v47, v46);
    objc_msgSend_setString_(path, v48, pathCopy);
  }

  else
  {
    pathCopy = path;
  }

  v49 = objc_msgSend_modelSourcesForSemantic_(model, v39, @"kGeometrySourceSemanticTexcoord");
  v52 = objc_msgSend_count(v49, v50, v51);
  v55 = v52;
  if (v52 < 1)
  {
    v63 = 0;
  }

  else
  {
    v56 = 0;
    v57 = v52 & 0x7FFFFFFF;
    while (1)
    {
      v58 = objc_msgSend_objectAtIndexedSubscript_(v49, v53, v56);
      v61 = objc_msgSend_mkSemantic(v58, v59, v60);
      if (objc_msgSend_isEqualToString_(v61, v62, named))
      {
        break;
      }

      if (v57 == ++v56)
      {
        LODWORD(v56) = v55;
        break;
      }
    }

    v63 = v56;
  }

  if (isEqualToString)
  {
    v64 = objc_msgSend_ambientOcclusion(self, v53, v54);
    objc_msgSend_setMappingChannel_(v64, v65, v63);
    v68 = objc_msgSend_ambientOcclusion(self, v66, v67);
  }

  else
  {
    v70 = objc_msgSend_selfIllumination(self, v53, v54);
    objc_msgSend_setMappingChannel_(v70, v71, v63);
    v68 = objc_msgSend_selfIllumination(self, v72, v73);
  }

  objc_msgSend_setContents_(v68, v69, pathCopy);
  v75 = MEMORY[0x1E695DFF8];

  return objc_msgSend_fileURLWithPath_(v75, v74, pathCopy);
}

+ (id)materialWithMDLMaterial:(id)material options:(id)options
{
  if (!material)
  {
    return 0;
  }

  AssociatedObject = objc_getAssociatedObject(material, @"VFXMDLAssociatedObject");
  objc_msgSend_scatteringFunction(material, v8, v9);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = AssociatedObject;
  if (!AssociatedObject)
  {
    v13 = objc_msgSend_material(self, v10, v11);
    v16 = objc_msgSend_name(material, v14, v15);
    objc_msgSend_setName_(v13, v17, v16);
    objc_setAssociatedObject(material, @"VFXMDLAssociatedObject", v13, 0x301);
    objc_setAssociatedObject(v13, @"VFXMDLAssociatedObject", material, 0);
  }

  v18 = objc_msgSend_emission(v13, v10, v11);
  sub_1AF2F72F4(v18, material, 13, AssociatedObject == 0, options);
  v21 = objc_msgSend_diffuse(v13, v19, v20);
  sub_1AF2F72F4(v21, material, 0, AssociatedObject == 0, options);
  v24 = objc_msgSend_specular(v13, v22, v23);
  sub_1AF2F72F4(v24, material, 3, AssociatedObject == 0, options);
  v27 = objc_msgSend_reflective(v13, v25, v26);
  sub_1AF2F72F4(v27, material, 32769, AssociatedObject == 0, options);
  v30 = objc_msgSend_transparent(v13, v28, v29);
  sub_1AF2F72F4(v30, material, 15, AssociatedObject == 0, options);
  v33 = objc_msgSend_displacement(v13, v31, v32);
  sub_1AF2F72F4(v33, material, 20, AssociatedObject == 0, options);
  v36 = objc_msgSend_normal(v13, v34, v35);
  sub_1AF2F72F4(v36, material, 19, AssociatedObject == 0, options);
  v39 = objc_msgSend_ambientOcclusion(v13, v37, v38);
  sub_1AF2F72F4(v39, material, 22, AssociatedObject == 0, options);
  if (objc_msgSend_materialFace(material, v40, v41) == 2)
  {
    objc_msgSend_setDoubleSided_(v13, v42, 1);
  }

  if (isKindOfClass)
  {
    v44 = AssociatedObject == 0;
    v45 = objc_msgSend_metalness(v13, v42, v43);
    sub_1AF2F72F4(v45, material, 2, v44, options);
    v48 = objc_msgSend_roughness(v13, v46, v47);
    sub_1AF2F72F4(v48, material, 6, v44, options);
  }

  else
  {
    v49 = objc_msgSend_propertyWithSemantic_(material, v42, 6);
    objc_msgSend_floatValue(v49, v50, v51);
    *&v53 = (2.0 / (v52 * v52)) + -2.0;
    objc_msgSend_setShininess_(v13, v54, v55, v53);
  }

  return v13;
}

- (id)debugQuickLookObjectWithWorld:(id)world
{
  LODWORD(v3) = 1.0;
  v6 = objc_msgSend_sphereWithRadius_(VFXParametricModel, a2, world, v3);
  v9 = objc_msgSend_copy(self, v7, v8);
  objc_msgSend_setFirstMaterial_(v6, v10, v9);

  return MEMORY[0x1EEE66B58](v6, sel_debugQuickLookObjectWithWorld_, world);
}

- (id)debugQuickLookObject
{
  v4 = objc_msgSend_world(self, a2, v2);

  return MEMORY[0x1EEE66B58](self, sel_debugQuickLookObjectWithWorld_, v4);
}

- (id)debugQuickLookData
{
  v3 = objc_msgSend_debugQuickLookObject(self, a2, v2);

  return UIImagePNGRepresentation(v3);
}

- (NSArray)bridgedComponentNames
{
  v2 = sub_1AFDFD3F8();

  return v2;
}

@end