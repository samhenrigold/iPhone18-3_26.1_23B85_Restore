@interface VFXModel
+ (VFXModel)modelWithGeometry:(id)geometry;
+ (VFXModel)modelWithMDLMesh:(id)mesh;
+ (VFXModel)modelWithMDLMesh:(id)mesh options:(id)options context:(id)context;
+ (VFXModel)modelWithMDLMesh:(id)mesh submesh:(id)submesh options:(id)options;
+ (VFXModel)modelWithModelRef:(__CFXModel *)ref;
+ (VFXModel)modelWithSources:(id)sources elements:(id)elements;
+ (VFXModel)modelWithSources:(id)sources elements:(id)elements sourceChannels:(id)channels;
+ (id)capsuleWithRadius:(float)radius height:(float)height options:(id)options;
+ (id)coneWithHeight:(float)height topRadius:(float)radius bottomRadius:(float)bottomRadius options:(id)options;
+ (id)cubeWithWidth:(float)width height:(float)height length:(float)length cornerRadius:(float)radius options:(id)options;
+ (id)cylinderWithRadius:(float)radius height:(float)height options:(id)options;
+ (id)model;
+ (id)morpherWithMDLMesh:(id)mesh;
+ (id)planeWithWidth:(float)width height:(float)height options:(id)options;
+ (id)presentationModelWithModelRef:(__CFXModel *)ref;
+ (id)pyramidWithWidth:(float)width height:(float)height length:(float)length options:(id)options;
+ (id)sphereWithRadius:(float)radius options:(id)options;
+ (id)torusWithRingRadius:(float)radius pipeRadius:(float)pipeRadius options:(id)options;
+ (id)tubeWithInnerRadius:(float)radius outerRadius:(float)outerRadius height:(float)height options:(id)options;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (BOOL)getBoundingBoxMin:(VFXModel *)self max:(SEL)max;
- (BOOL)getBoundingSphereCenter:(VFXModel *)self radius:(SEL)radius;
- (BOOL)parseSpecialKey:(id)key withPath:(id)path intoDestination:(id *)destination remainingPath:(id *)remainingPath;
- (NSArray)animationKeys;
- (NSArray)bridgedComponentNames;
- (NSArray)materials;
- (NSString)description;
- (NSString)name;
- (VFXBehaviorGraph)behaviorGraph;
- (VFXGeometry)geometry;
- (VFXMaterial)firstMaterial;
- (VFXMesh)mesh;
- (VFXModel)init;
- (VFXModel)initWithCoder:(id)coder;
- (VFXModel)initWithModelRef:(__CFXModel *)ref;
- (VFXWorld)world;
- (__CFXAnimationManager)animationManager;
- (__CFXMaterial)materialRef;
- (__CFXMaterial)materialRefCreateIfNeeded;
- (__CFXWorld)worldRef;
- (double)boundingBox;
- (id)_firstMaterial;
- (id)_materialWithName:(id)name;
- (id)_renderableCopy;
- (id)_vfxAnimationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)copyAnimationChannelForKeyPath:(id)path animation:(id)animation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)customMaterialAttributeNames;
- (id)customMaterialAttributes;
- (id)customMaterialProperties;
- (id)customMaterialPropertyNames;
- (id)debugQuickLookData;
- (id)debugQuickLookObject;
- (id)debugQuickLookObjectWithWorld:(id)world;
- (id)getBoundingBox;
- (id)getBoundingSphere;
- (id)identifier;
- (id)initPresentationModelWithModelRef:(__CFXModel *)ref;
- (id)interleavedCopy;
- (id)materialWithName:(id)name;
- (id)modelDescription;
- (id)modelElementAtIndex:(int64_t)index;
- (id)modelElements;
- (id)modelSourceChannels;
- (id)modelSources;
- (id)modelSourcesForSemantic:(id)semantic;
- (id)presentationModel;
- (id)shaderModifiersArgumentWithName:(id)name;
- (id)valueForUndefinedKey:(id)key;
- (int64_t)modelElementCount;
- (uint64_t)__createCFObject;
- (void)_copyAnimationsFrom:(id)from;
- (void)_copyAttributesTo:(id)to;
- (void)_copyBindingsFrom:(id)from;
- (void)_customDecodingOfVFXModel:(id)model;
- (void)_customEncodingOfVFXModel:(id)model;
- (void)_meshForParametricModelHasChanged;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_recreateMeshFromPresentation;
- (void)_removeAllMaterials;
- (void)_resetMaterialsFromPresentation;
- (void)_setModelRef:(__CFXModel *)ref;
- (void)_setSourceObject:(id)object forBinding:(id)binding;
- (void)_setupObjCModelFrom:(id)from;
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
- (void)insertObject:(id)object inMaterialsAtIndex:(unint64_t)index;
- (void)makeUniqueID;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)duration;
- (void)removeAllBindings;
- (void)removeAllMaterials;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration;
- (void)removeMaterial:(id)material;
- (void)removeObjectFromMaterialsAtIndex:(unint64_t)index;
- (void)removeWorldReference:(id)reference;
- (void)replaceMaterial:(id)material with:(id)with;
- (void)replaceObjectInMaterialsAtIndex:(unint64_t)index withObject:(id)object;
- (void)setBehaviorGraph:(id)graph;
- (void)setBoundingBox:(float32x4_t)box;
- (void)setBoundingBoxMin:(VFXModel *)self max:(SEL)max;
- (void)setEdgeCreasesElement:(id)element;
- (void)setEdgeCreasesSource:(id)source;
- (void)setFirstMaterial:(id)material;
- (void)setGeometry:(id)geometry;
- (void)setIdentifier:(id)identifier;
- (void)setLevelsOfDetail:(id)detail;
- (void)setMaterials:(id)materials;
- (void)setMinimumLanguageVersion:(id)version;
- (void)setModelRef:(__CFXModel *)ref;
- (void)setName:(id)name;
- (void)setProgram:(id)program;
- (void)setShaderModifiers:(id)modifiers;
- (void)setSubdivisionLevel:(unint64_t)level;
- (void)setTessellator:(id)tessellator;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)setValueForKey:(id)key optionKey:(id)optionKey options:(id)options;
- (void)setWantsAdaptiveSubdivision:(BOOL)subdivision;
- (void)setWorld:(id)world;
- (void)set_subdivisionSettings:(id)settings;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation VFXModel

- (uint64_t)__createCFObject
{
  if (qword_1ED7346C8 != -1)
  {
    sub_1AFDDCF90();
  }

  v2 = sub_1AF0D160C(qword_1ED7346C0, 0xC0uLL);
  *(v2 + 80) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *(v2 + 120) = 0;
  *(v2 + 104) = 0;
  *(v2 + 200) = 0;
  sub_1AF17079C(v2);
  return v2;
}

- (VFXModel)init
{
  v11.receiver = self;
  v11.super_class = VFXModel;
  v2 = [(VFXModel *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_materials = v3;
    v5 = [VFXModel __createCFObject]_0(v3, v4);
    v2->_model = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v2);
    }

    v2->_animationsLock._os_unfair_lock_opaque = 0;
    v2->_valuesForUndefinedKeysLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v2, v6, v7);
    objc_msgSend_makeUniqueID(v2, v8, v9);
  }

  return v2;
}

- (VFXModel)initWithModelRef:(__CFXModel *)ref
{
  v13.receiver = self;
  v13.super_class = VFXModel;
  v4 = [(VFXModel *)&v13 init];
  if (v4)
  {
    v4->_materials = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = CFRetain(ref);
    v4->_model = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    v4->_valuesForUndefinedKeysLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v4, v6, v7);
    objc_msgSend__syncObjCAnimations(v4, v8, v9);
    objc_msgSend_makeUniqueID(v4, v10, v11);
  }

  return v4;
}

- (id)initPresentationModelWithModelRef:(__CFXModel *)ref
{
  v7.receiver = self;
  v7.super_class = VFXModel;
  v4 = [(VFXModel *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 16) |= 1u;
    v4->_model = CFRetain(ref);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
    v5->_valuesForUndefinedKeysLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (VFXModel)modelWithGeometry:(id)geometry
{
  v4 = objc_alloc_init(VFXModel);
  objc_msgSend_setGeometry_(v4, v5, geometry);
  v8 = objc_msgSend_material(VFXMaterial, v6, v7);
  objc_msgSend_setFirstMaterial_(v4, v9, v8);

  return v4;
}

+ (VFXModel)modelWithModelRef:(__CFXModel *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v8 = objc_msgSend_initWithModelRef_(v6, v7, ref);

    return v8;
  }

  return result;
}

+ (id)model
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)dealloc
{
  model = self->_model;
  if (model)
  {
    if ((*(self + 16) & 1) == 0)
    {
      sub_1AF16CDFC(self->_model, 0);
      model = self->_model;
    }

    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, a2, model);
  }

  objc_msgSend_clientWillDie_(self->_tessellator, a2, self);

  objc_msgSend_ownerWillDie(self->_shadableHelper, v4, v5);
  free(*self->_fixedBoundingBoxExtrema);
  v6.receiver = self;
  v6.super_class = VFXModel;
  [(VFXModel *)&v6 dealloc];
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
      v9[2] = sub_1AF2E73DC;
      v9[3] = &unk_1E7A7E220;
      v9[4] = self;
      v9[5] = name;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
    }
  }
}

- (NSString)name
{
  if ((*(self + 16) & 1) == 0)
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

- (void)_meshForParametricModelHasChanged
{
  geometry = self->_geometry;
  if (geometry)
  {
    world = self->_world;
    if (world)
    {
      objc_msgSend_removeWorldReference_(geometry, a2, world);
      geometry = self->_geometry;
    }

    self->_geometry = 0;
  }
}

- (void)_recreateMeshFromPresentation
{
  geometry = self->_geometry;
  if (geometry)
  {
    world = self->_world;
    if (world)
    {
      objc_msgSend_removeWorldReference_(geometry, a2, world);
      geometry = self->_geometry;
    }

    self->_geometry = 0;
  }

  v5 = sub_1AF1C3FAC(&self->_model->var0.var0.var0, a2);
  v7 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
  }

  v8 = sub_1AF1B1F84(self->_model, v6);
  if (v8)
  {
    self->_geometry = sub_1AF2C0F58(v8, v9);
  }

  if (v7)
  {
    sub_1AF1CEA9C(v7, v9);
  }

  v10 = self->_geometry;
  if (v10)
  {
    v11 = self->_world;
    if (v11)
    {

      objc_msgSend_addWorldReference_(v10, v9, v11);
    }
  }
}

- (VFXMesh)mesh
{
  if (*(self + 16))
  {
    result = self->_model;
    if (result)
    {
      result = sub_1AF1B2C1C(result, a2);
      if (result)
      {

        return objc_msgSend_meshWithMeshRef_(VFXMesh, v4, result);
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return self->_geometry;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (VFXGeometry)geometry
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_geometry;
  }

  result = sub_1AF1B1F84(self->_model, a2);
  if (result)
  {

    return sub_1AF2C0F58(result, v4);
  }

  return result;
}

- (void)setGeometry:(id)geometry
{
  geometry = self->_geometry;
  if (geometry != geometry)
  {
    world = self->_world;
    if (world)
    {
      objc_msgSend_removeWorldReference_(geometry, a2, world);
      geometry = self->_geometry;
    }

    self->_geometry = 0;
    if (geometry)
    {
      geometryCopy = geometry;
      self->_geometry = geometryCopy;
      v10 = self->_world;
      if (v10)
      {
        objc_msgSend_addWorldReference_(geometryCopy, v9, v10);
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF2E788C;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = geometry;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v11);
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1AF2E787C;
      v12[3] = &unk_1E7A7E1D0;
      v12[4] = self;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v12);
    }
  }
}

- (void)_updateModelFromPresentation
{
  objc_msgSend__updateEntityModelFromPresentation(self, a2, v2);
  objc_msgSend__recreateMeshFromPresentation(self, v4, v5);
  self->_subdivisionIsAdaptive = sub_1AF170AF4(self->_model);
  self->_subdivisionSettings = sub_1AF170B68(self->_model);

  self->_edgeCreasesSource = 0;
  v6 = sub_1AF170BF8(self->_model);
  if (v6)
  {
    v7 = v6;
    v8 = sub_1AF16CDEC(v6);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v10 = [VFXMeshSource alloc];
      v9 = objc_msgSend_initWithMeshSource_(v10, v11, v7);
    }

    self->_edgeCreasesSource = v9;
  }

  self->_edgeCreasesElement = 0;
  v12 = sub_1AF170C98(self->_model);
  if (v12)
  {
    v13 = v12;
    v14 = sub_1AF16CDEC(v12);
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v16 = [VFXMeshElement alloc];
      v15 = objc_msgSend_initWithMeshElement_(v16, v17, v13);
    }

    self->_edgeCreasesElement = v15;
  }
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2E7A10;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (id)modelDescription
{
  v4 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2);
  v7 = objc_msgSend_name(self, v5, v6);
  v10 = objc_msgSend_length(v7, v8, v9);
  v11 = objc_opt_class();
  v14 = NSStringFromClass(v11);
  if (v10)
  {
    v15 = objc_msgSend_name(self, v12, v13);
    v22 = objc_msgSend_mesh(self, v16, v17);
    objc_msgSend_appendFormat_(v4, v18, @"%@: %p '%@' - mesh: %@", v14, self, v15, v22);
  }

  else
  {
    v21 = objc_msgSend_mesh(self, v12, v13);
    objc_msgSend_appendFormat_(v4, v19, @"%@: %p - mesh: %@", v14, self, v21);
  }

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_modelDescription(self, a2, v2);
  return objc_msgSend_stringWithFormat_(v3, v5, @"<%@>", v4);
}

- (void)_setModelRef:(__CFXModel *)ref
{
  model = self->_model;
  if (!model)
  {
    if (!ref)
    {
      return;
    }

LABEL_8:
    v6 = CFRetain(ref);
    goto LABEL_9;
  }

  sub_1AF16CDFC(model, 0);
  v6 = self->_model;
  if (v6 == ref)
  {
    goto LABEL_10;
  }

  if (v6)
  {
    CFRelease(v6);
    self->_model = 0;
  }

  if (ref)
  {
    goto LABEL_8;
  }

  v6 = 0;
LABEL_9:
  self->_model = v6;
LABEL_10:
  if (v6)
  {

    sub_1AF16CDFC(v6, self);
  }
}

- (void)setModelRef:(__CFXModel *)ref
{
  if (self->_model != ref)
  {
    objc_msgSend__setModelRef_(self, a2, ref);
    objc_msgSend__recreateMeshFromPresentation(self, v4, v5);
    objc_msgSend_willChangeValueForKey_(self, v6, @"materials");
    objc_msgSend__removeAllMaterials(self, v7, v8);
    objc_msgSend_didChangeValueForKey_(self, v9, @"materials");
  }

  MEMORY[0x1EEE66B58](self, sel__resetMaterialsFromPresentation, ref);
}

- (id)presentationModel
{
  selfCopy = self;
  if ((*(self + 16) & 1) == 0)
  {
    v3 = objc_msgSend_presentationModelWithModelRef_(VFXModel, a2, self->_model);

    v3[18] = selfCopy->_behaviorGraph;
    return v3;
  }

  return selfCopy;
}

+ (id)presentationModelWithModelRef:(__CFXModel *)ref
{
  v4 = CFGetTypeID(ref);
  if (v4 == sub_1AF1BE9BC(v4, v5))
  {
    v6 = &off_1E7A77B68;
  }

  else
  {
    v7 = CFGetTypeID(ref);
    if (v7 == sub_1AF1C621C(v7, v8))
    {
      v6 = &off_1E7A77C58;
    }

    else
    {
      v9 = CFGetTypeID(ref);
      v11 = sub_1AF1C611C(v9, v10);
      v6 = &off_1E7A77B30;
      if (v9 == v11)
      {
        v6 = &off_1E7A77C20;
      }
    }
  }

  v12 = objc_alloc(*v6);
  inited = objc_msgSend_initPresentationModelWithModelRef_(v12, v13, ref);

  return inited;
}

- (void)setBehaviorGraph:(id)graph
{
  if (objc_msgSend_behaviorGraph(self, a2, graph) != graph)
  {
    world = self->_world;
    if (world)
    {
      objc_msgSend_removeWorldReference_(self->_behaviorGraph, v5, world);
    }

    graphCopy = graph;
    self->_behaviorGraph = graphCopy;
    v9 = self->_world;
    if (v9)
    {
      objc_msgSend_addWorldReference_(graphCopy, v8, v9);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF2E7DE8;
    v10[3] = &unk_1E7A7E220;
    v10[4] = self;
    v10[5] = graph;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v10);
  }
}

- (VFXBehaviorGraph)behaviorGraph
{
  result = self->_behaviorGraph;
  if (*(self + 16))
  {
    return (MEMORY[0x1EEE66B58])(result, sel_presentationBehaviorGraph);
  }

  return result;
}

- (BOOL)getBoundingBoxMin:(VFXModel *)self max:(SEL)max
{
  v4 = v3;
  v5 = v2;
  v6 = *self->_fixedBoundingBoxExtrema;
  if (!v6 || (*(self + 16) & 1) != 0)
  {
    v8 = objc_msgSend_geometry(self, max, v2);
    objc_msgSend_boundingBox(v8, v9, v10);
    if (v5)
    {
      *v5 = v11;
    }

    if (v4)
    {
      *v4 = v12;
    }

    v13 = vceqq_f32(v11, v12);
    v13.i32[3] = v13.i32[2];
    return (vminvq_u32(v13) & 0x80000000) == 0;
  }

  else
  {
    if (v2)
    {
      *v2 = *v6;
    }

    if (v3)
    {
      *v3 = *(*self->_fixedBoundingBoxExtrema + 16);
    }

    return 1;
  }
}

- (void)setBoundingBoxMin:(VFXModel *)self max:(SEL)max
{
  v5 = *self->_fixedBoundingBoxExtrema;
  if (v2 && (v6 = v3) != 0)
  {
    v7 = v2;
    if (v5)
    {
      v9 = VFXVector3EqualToVector3(*v2, *v5);
      v10 = *self->_fixedBoundingBoxExtrema;
      if (v9)
      {
        if (VFXVector3EqualToVector3(*v6, v10[1]))
        {
          return;
        }

        v10 = *self->_fixedBoundingBoxExtrema;
      }
    }

    else
    {
      v10 = malloc_type_malloc(0x20uLL, 0x1000040451B5BE8uLL);
      *self->_fixedBoundingBoxExtrema = v10;
    }

    *v10 = *v7;
    *(*self->_fixedBoundingBoxExtrema + 16) = *v6;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v12, MEMORY[0x1E69E9820], 3221225472, sub_1AF2E8060, &unk_1E7A7EA48, *v7, *v6, self, v16[0], v16[1], v16[2], v16[3], v16[4]);
  }

  else if (v5)
  {
    free(v5);
    *self->_fixedBoundingBoxExtrema = 0;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v11, self, v16, v12[0], v12[1], v12[2], v12[3], v13, v14, v15, MEMORY[0x1E69E9820], 3221225472, sub_1AF2E8050, &unk_1E7A7E1D0, self);
  }
}

- (double)boundingBox
{
  v4 = 0u;
  v5 = 0u;
  if (objc_msgSend_getBoundingBoxMin_max_(self, v1, &v4, &v5))
  {
    v2 = -1;
  }

  else
  {
    v2 = 0;
  }

  *&result = vbslq_s8(vdupq_n_s32(v2), v4, VFXNullBoundingBox).u64[0];
  return result;
}

- (void)setBoundingBox:(float32x4_t)box
{
  v6 = a2;
  boxCopy = box;
  if (!VFXBoundingBoxIsNull(a2, box))
  {
    return objc_msgSend_setBoundingBoxMin_max_(self, v4, &v6, &boxCopy);
  }

  return objc_msgSend_setBoundingBoxMin_max_(self, v4, 0, 0);
}

- (BOOL)getBoundingSphereCenter:(VFXModel *)self radius:(SEL)radius
{
  v4 = v3;
  v5 = v2;
  v7 = objc_msgSend_worldRef(self, radius, v2);
  v10 = v7;
  if (v7)
  {
    sub_1AF1CEA20(v7, v8);
  }

  v11 = objc_msgSend_modelRef(self, v8, v9);
  v15 = 0uLL;
  if (!v11 || !sub_1AF1C39FC(v11, 1, &v15))
  {
    v13 = 0;
    if (!v10)
    {
      return v13;
    }

LABEL_12:
    sub_1AF1CEA9C(v10, v12);
    return v13;
  }

  if (v5)
  {
    *v5 = v15;
  }

  if (v4)
  {
    *v4 = HIDWORD(v15);
  }

  v13 = 1;
  if (v10)
  {
    goto LABEL_12;
  }

  return v13;
}

- (id)getBoundingSphere
{
  v11 = 0;
  v10 = 0.0;
  v9 = 0;
  if (!objc_msgSend_getBoundingSphereCenter_radius_(self, a2, &v10, &v9))
  {
    return 0;
  }

  v2 = objc_alloc_init(VFXBoundingSphere);
  objc_msgSend_setCenter_(v2, v3, v4, v10);
  LODWORD(v5) = v9;
  objc_msgSend_setRadius_(v2, v6, v7, v5);
  return v2;
}

- (id)getBoundingBox
{
  objc_msgSend_boundingBox(self, a2, v2);
  v11 = *v3.i64;
  v12 = *v4.i64;
  v3.i32[3] = 0;
  v4.i32[3] = 0;
  if (VFXBoundingBoxIsNull(v3, v4))
  {
    return 0;
  }

  v6 = objc_alloc_init(VFXBoundingBox);
  objc_msgSend_setMin_(v6, v7, v8, v11);
  objc_msgSend_setMax_(v6, v9, v10, v12);

  return v6;
}

- (void)_setupObjCModelFrom:(id)from
{
  objc_msgSend_begin(VFXTransaction, a2, from);
  objc_msgSend_setImmediateMode_(VFXTransaction, v5, 1);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = objc_msgSend_mesh(from, v6, v7);
    objc_msgSend_setMesh_(self, v9, v8);
  }

  v10 = objc_msgSend_levelsOfDetail(from, v6, v7);
  objc_msgSend_setLevelsOfDetail_(self, v11, v10);
  v14 = objc_msgSend_materials(from, v12, v13);
  objc_msgSend_setMaterials_(self, v15, v14);
  v18 = objc_msgSend_edgeCreasesSource(from, v16, v17);
  objc_msgSend_setEdgeCreasesSource_(self, v19, v18);
  v22 = objc_msgSend_edgeCreasesElement(from, v20, v21);
  objc_msgSend_setEdgeCreasesElement_(self, v23, v22);
  v26 = objc_msgSend_subdivisionLevel(from, v24, v25);
  objc_msgSend_setSubdivisionLevel_(self, v27, v26);
  v30 = objc_msgSend_wantsAdaptiveSubdivision(from, v28, v29);
  objc_msgSend_setWantsAdaptiveSubdivision_(self, v31, v30);
  v34 = objc_msgSend__subdivisionSettings(from, v32, v33);
  objc_msgSend_set_subdivisionSettings_(self, v35, v34);
  objc_msgSend__copyAnimationsFrom_(self, v36, from);
  objc_msgSend__copyBindingsFrom_(self, v37, from);
  os_unfair_lock_lock(from + 40);
  v38 = *(from + 19);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = sub_1AF2E84C0;
  v46[3] = &unk_1E7A7E7E8;
  v46[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v38, v39, v46);
  os_unfair_lock_unlock(from + 40);
  v42 = objc_msgSend_tessellator(from, v40, v41);
  objc_msgSend_setTessellator_(self, v43, v42);
  objc_msgSend_commitImmediate(VFXTransaction, v44, v45);
}

- (void)_copyAttributesTo:(id)to
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v7 = objc_msgSend_copy(self->_valuesForUndefinedKeys, v5, v6);
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF2E8580;
  v10[3] = &unk_1E7A7E7E8;
  v10[4] = to;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v7, v8, v10);

  objc_msgSend_copyShaderModifiersAndLanguageVersionFrom_(to, v9, self);
}

- (void)copyTo:(id)to withContext:(id)context
{
  v48[1] = *MEMORY[0x1E69E9840];
  objc_msgSend__setupObjCModelFrom_(to, a2, self);
  if (objc_msgSend_behaviorGraph(self, v7, v8))
  {
    v11 = objc_msgSend_behaviorGraph(self, v9, v10);
    v14 = objc_msgSend_copy(v11, v12, v13);
    objc_msgSend_setBehaviorGraph_(to, v15, v14);
    v18 = objc_msgSend_entityObject(v14, v16, v17);
    v47 = objc_msgSend_identifier(self, v19, v20);
    v48[0] = to;
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v21, v48, &v47, 1);
    objc_msgSend_updateVFXObjectReferences_(v18, v23, v22);
  }

  objc_msgSend__copyAttributesTo_(self, v9, to);
  v26 = objc_msgSend_materials(self, v24, v25);
  v27 = objc_alloc(MEMORY[0x1E695DF70]);
  v30 = objc_msgSend_count(v26, v28, v29);
  v32 = objc_msgSend_initWithCapacity_(v27, v31, v30);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v33, &v42, v46, 16);
  if (v34)
  {
    v36 = v34;
    v37 = *v43;
    do
    {
      v38 = 0;
      do
      {
        if (*v43 != v37)
        {
          objc_enumerationMutation(v26);
        }

        v39 = sub_1AF2BED30(*(*(&v42 + 1) + 8 * v38), context);
        objc_msgSend_addObject_(v32, v40, v39);
        ++v38;
      }

      while (v36 != v38);
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v41, &v42, v46, 16);
    }

    while (v36);
  }

  objc_msgSend_setMaterials_(to, v35, v32);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend__setupObjCModelFrom_(v4, v5, self);
  if (objc_msgSend_behaviorGraph(self, v6, v7))
  {
    v10 = objc_msgSend_behaviorGraph(self, v8, v9);
    v13 = objc_msgSend_copy(v10, v11, v12);
    objc_msgSend_setBehaviorGraph_(v4, v14, v13);
    v17 = objc_msgSend_entityObject(v13, v15, v16);
    v24 = objc_msgSend_identifier(self, v18, v19);
    v25[0] = v4;
    v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v20, v25, &v24, 1);
    objc_msgSend_updateVFXObjectReferences_(v17, v22, v21);
  }

  objc_msgSend__copyAttributesTo_(self, v8, v4);
  return v4;
}

- (id)interleavedCopy
{
  v3 = objc_msgSend_copy(self, a2, v2);
  v6 = objc_msgSend_mesh(v3, v4, v5);
  v9 = objc_msgSend_interleavedCopy(v6, v7, v8);
  objc_msgSend_setMesh_(v3, v10, v9);
  return v3;
}

- (id)_renderableCopy
{
  v3 = objc_msgSend_copy(self, a2, v2);
  v6 = objc_msgSend_mesh(v3, v4, v5);
  v9 = objc_msgSend__renderableCopy(v6, v7, v8);
  objc_msgSend_setMesh_(v3, v10, v9);
  return v3;
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = objc_msgSend_materials(self, a2, operation);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v16, v20, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        (*(block + 2))(block, *(*(&v16 + 1) + 8 * v11++), 1, 0);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v12, &v16, v20, 16);
    }

    while (v9);
  }

  geometry = self->_geometry;
  if (geometry)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1AF2E8AB0;
    v15[3] = &unk_1E7A7C0C8;
    v15[4] = self;
    (*(block + 2))(block, geometry, 1, v15);
  }

  behaviorGraph = self->_behaviorGraph;
  if (behaviorGraph)
  {
    (*(block + 2))(block, behaviorGraph, 0, 0);
  }

  objc_msgSend_enumerateAnimationReferencesUsingBlock_(self, behaviorGraph, block);
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
      v9[2] = sub_1AF2E8CA0;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2E8D00;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 16) & 1) == 0)
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

- (void)_resetMaterialsFromPresentation
{
  self->_materials = 0;
  objc_msgSend_willChangeValueForKey_(self, v3, @"materials");
  v6 = objc_msgSend_modelRef(self, v4, v5);
  v8 = sub_1AF1B1FE0(v6, v7);
  v9 = objc_alloc(MEMORY[0x1E695DF70]);
  self->_materials = objc_msgSend_initWithCapacity_(v9, v10, v8);
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      v14 = objc_msgSend_modelRef(self, v11, v12);
      v15 = sub_1AF1B2030(v14, i);
      if (v15)
      {
        v16 = objc_msgSend_materialWithMaterialRef_(VFXMaterial, v11, v15);
        v18 = v16;
        world = self->_world;
        if (world)
        {
          objc_msgSend_addWorldReference_(v16, v17, world);
        }

        objc_msgSend_addObject_(self->_materials, v17, v18);
      }
    }
  }

  objc_msgSend_didChangeValueForKey_(self, v11, @"materials");
}

- (id)_materialWithName:(id)name
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = objc_msgSend_materials(self, a2, name, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
  if (!v6)
  {
    return 0;
  }

  v9 = v6;
  v10 = *v17;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v17 != v10)
    {
      objc_enumerationMutation(v4);
    }

    v12 = *(*(&v16 + 1) + 8 * v11);
    v13 = objc_msgSend_name(v12, v7, v8);
    if (objc_msgSend_isEqualToString_(v13, v14, name))
    {
      return v12;
    }

    if (v9 == ++v11)
    {
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v16, v20, 16);
      if (v9)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)materialWithName:(id)name
{
  result = objc_msgSend__materialWithName_(self, a2, name);
  if (*(self + 16))
  {

    return objc_msgSend_presentationMaterial(result, v5, v6);
  }

  return result;
}

- (void)insertObject:(id)object inMaterialsAtIndex:(unint64_t)index
{
  if (!object)
  {
    v7 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF6700(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  objc_msgSend_insertObject_atIndex_(self->_materials, a2, object, index);
  world = self->_world;
  if (world)
  {
    objc_msgSend_addWorldReference_(object, v14, world);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1AF2E9100;
  v16[3] = &unk_1E7A7E2E8;
  v16[4] = self;
  v16[5] = object;
  v16[6] = index;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v14, self, v16);
}

- (void)removeObjectFromMaterialsAtIndex:(unint64_t)index
{
  v5 = objc_msgSend_count(self->_materials, a2, index);
  if (v5 <= index)
  {
    v7 = sub_1AF0D5194(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF6778(v7, v6, v8, v9, v10, v11, v12, v13);
    }
  }

  if (self->_world)
  {
    v14 = objc_msgSend_objectAtIndex_(self->_materials, v6, index);
    objc_msgSend_removeWorldReference_(v14, v15, self->_world);
  }

  objc_msgSend_removeObjectAtIndex_(self->_materials, v6, index);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1AF2E9230;
  v17[3] = &unk_1E7A7E248;
  v17[4] = self;
  v17[5] = index;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v16, self, v17);
}

- (void)replaceObjectInMaterialsAtIndex:(unint64_t)index withObject:(id)object
{
  if (!object)
  {
    v7 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF6700(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1AF2E932C;
  v19[3] = &unk_1E7A7E2E8;
  v19[4] = self;
  v19[5] = object;
  v19[6] = index;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v19);
  world = self->_world;
  if (world)
  {
    objc_msgSend_addWorldReference_(object, v14, world);
    v17 = objc_msgSend_objectAtIndex_(self->_materials, v16, index);
    objc_msgSend_removeWorldReference_(v17, v18, self->_world);
  }

  objc_msgSend_replaceObjectAtIndex_withObject_(self->_materials, v14, index, object);
}

- (NSArray)materials
{
  v4 = *(self + 16);
  materials = self->_materials;
  if (v4)
  {
    v10 = objc_msgSend_count(materials, a2, v2);
    v11 = objc_alloc(MEMORY[0x1E695DF70]);
    v6 = objc_msgSend_initWithCapacity_(v11, v12, v10);
    if (v10 >= 1)
    {
      for (i = 0; i != v10; ++i)
      {
        v16 = objc_msgSend_objectAtIndex_(self->_materials, v13, i);
        v19 = objc_msgSend_presentationMaterial(v16, v17, v18);
        objc_msgSend_addObject_(v6, v20, v19);
      }
    }

    v9 = objc_msgSend_count(v6, v13, v14);
  }

  else
  {
    v6 = objc_msgSend_copy(materials, a2, v2);
    v9 = objc_msgSend_count(v6, v7, v8);
  }

  if (v9)
  {
    return v6;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)_firstMaterial
{
  v3 = objc_msgSend_materials(self, a2, v2);

  return objc_msgSend_firstObject(v3, v4, v5);
}

- (VFXMaterial)firstMaterial
{
  result = objc_msgSend__firstMaterial(self, a2, v2);
  if (*(self + 16))
  {

    return objc_msgSend_presentationMaterial(result, v5, v6);
  }

  return result;
}

- (void)setFirstMaterial:(id)material
{
  v5 = objc_msgSend_materials(self, a2, material);
  v8 = objc_msgSend_count(v5, v6, v7);
  if (material)
  {
    if (v8)
    {

      MEMORY[0x1EEE66B58](self, sel_replaceObjectInMaterialsAtIndex_withObject_, 0);
    }

    else
    {

      objc_msgSend_insertMaterial_atIndex_(self, v9, material, 0);
    }
  }

  else if (v8)
  {

    MEMORY[0x1EEE66B58](self, sel_removeMaterialAtIndex_, 0);
  }
}

- (void)removeMaterial:(id)material
{
  v5 = objc_msgSend_materials(self, a2, material);
  v7 = objc_msgSend_indexOfObject_(v5, v6, material);
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {

    MEMORY[0x1EEE66B58](self, sel_removeObjectFromMaterialsAtIndex_, v7);
  }
}

- (void)replaceMaterial:(id)material with:(id)with
{
  v6 = objc_msgSend_materials(self, a2, material);
  v8 = objc_msgSend_indexOfObject_(v6, v7, material);
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {

    MEMORY[0x1EEE66B58](self, sel_replaceObjectInMaterialsAtIndex_withObject_, v8);
  }
}

- (void)_removeAllMaterials
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_world)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    materials = self->_materials;
    v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(materials, a2, &v9, v13, 16);
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(materials);
          }

          objc_msgSend_removeWorldReference_(*(*(&v9 + 1) + 8 * i), a2, self->_world);
        }

        v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(materials, a2, &v9, v13, 16);
      }

      while (v6);
    }
  }

  objc_msgSend_removeAllObjects(self->_materials, a2, v2);
}

- (void)removeAllMaterials
{
  objc_msgSend__removeAllMaterials(self, a2, v2);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF2E97A8;
  v5[3] = &unk_1E7A7E1D0;
  v5[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v4, self, v5);
}

- (void)setMaterials:(id)materials
{
  objc_msgSend_removeAllMaterials(self, a2, materials);
  v7 = objc_msgSend_count(materials, v5, v6);
  if (v7)
  {
    v9 = v7;
    for (i = 0; i != v9; ++i)
    {
      v11 = objc_msgSend_objectAtIndex_(materials, v8, i);
      objc_msgSend_insertMaterial_atIndex_(self, v12, v11, i);
    }
  }
}

- (BOOL)parseSpecialKey:(id)key withPath:(id)path intoDestination:(id *)destination remainingPath:(id *)remainingPath
{
  v54 = *MEMORY[0x1E69E9840];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D4708, a2, &v49, v53, 16);
  if (v10)
  {
    v12 = v10;
    remainingPathCopy = remainingPath;
    destinationCopy = destination;
    v13 = *v50;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v50 != v13)
        {
          objc_enumerationMutation(&unk_1F25D4708);
        }

        v15 = *(*(&v49 + 1) + 8 * v14);
        v16 = objc_msgSend_stringByAppendingString_(v15, v11, @"[");
        if (objc_msgSend_hasPrefix_(key, v17, v16))
        {
          v19 = objc_msgSend_length(v16, v11, v18);
          v22 = objc_msgSend_length(path, v20, v21);
          v24 = objc_msgSend_substringWithRange_(path, v23, v19, v22 - v19);
          v26 = objc_msgSend_rangeOfString_(v24, v25, @"]");
          if (v11 == 1)
          {
            v27 = v26;
            v28 = objc_msgSend_substringWithRange_(v24, 1, 0, v26);
            v31 = objc_msgSend_intValue(v28, v29, v30);
            v33 = objc_msgSend_valueForKey_(self, v32, v15);
            if (objc_msgSend_count(v33, v34, v35) > v31)
            {
              v38 = objc_msgSend_objectAtIndex_(v33, v11, v31);
              if (remainingPathCopy)
              {
                v39 = v19 + v27 + 2;
                if (v39 >= objc_msgSend_length(path, v36, v37))
                {
                  v44 = 0;
                }

                else
                {
                  v42 = objc_msgSend_length(path, v40, v41);
                  v44 = objc_msgSend_substringWithRange_(path, v43, v39, v42 - v39);
                }

                *remainingPathCopy = v44;
              }

              *destinationCopy = v38;
              LOBYTE(v10) = 1;
              return v10;
            }
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D4708, v11, &v49, v53, 16);
      v12 = v10;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  return v10;
}

- (id)copyAnimationChannelForKeyPath:(id)path animation:(id)animation
{
  v60 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_length(path, a2, path))
  {
    return 0;
  }

  v56 = 0;
  v57 = 0;
  sub_1AF3716AC(path, &v57, &v56);
  v54 = 0;
  v55 = 0;
  if (objc_msgSend_parseSpecialKey_withPath_intoDestination_remainingPath_(self, v7, v57, path, &v54, &v55))
  {
    v9 = objc_msgSend_copyAnimationChannelForKeyPath_animation_(v54, v8, v55, animation);
    if (v9)
    {
      v10 = objc_alloc(MEMORY[0x1E695DF70]);
      v13 = objc_msgSend_count(v9, v11, v12);
      v15 = objc_msgSend_initWithCapacity_(v10, v14, v13 + 1);
      objc_msgSend_addObject_(v15, v16, v57);
      objc_msgSend_addObjectsFromArray_(v15, v17, v9);

      return v15;
    }

    return 0;
  }

  v54 = objc_msgSend_valueForKey_(self, v8, v57);
  if ((objc_opt_respondsToSelector() & 1) != 0 && (v20 = objc_msgSend_copyAnimationChannelForKeyPath_animation_(v54, v18, v56, animation)) != 0)
  {
    v21 = objc_alloc(MEMORY[0x1E695DF70]);
    v24 = objc_msgSend_count(v20, v22, v23);
    v15 = objc_msgSend_initWithCapacity_(v21, v25, v24 + 1);
    objc_msgSend_addObject_(v15, v26, v57);
    objc_msgSend_addObjectsFromArray_(v15, v27, v20);
  }

  else
  {
    if (self->_shadableHelper)
    {
      os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
      v29 = objc_msgSend_objectForKey_(self->_valuesForUndefinedKeys, v28, path);
      os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
      if (!v29)
      {
        v32 = sub_1AF290E58(animation, v30);
        if (v32)
        {
          v35 = sub_1AF376904(v32, v33, v34);
          v38 = objc_msgSend_worldRef(self, v36, v37);
          v41 = v38;
          if (v38)
          {
            sub_1AF1CEA20(v38, v39);
            objc_msgSend_begin(VFXTransaction, v42, v43);
            objc_msgSend_setImmediateMode_(VFXTransaction, v44, 1);
            objc_msgSend_setValue_forUndefinedKey_(self, v45, v35, path);
            objc_msgSend_commitImmediate(VFXTransaction, v46, v47);
            sub_1AF1CEA9C(v41, v48);
          }

          else
          {
            objc_msgSend_begin(VFXTransaction, v39, v40);
            objc_msgSend_setImmediateMode_(VFXTransaction, v50, 1);
            objc_msgSend_setValue_forUndefinedKey_(self, v51, v35, path);
            objc_msgSend_commitImmediate(VFXTransaction, v52, v53);
          }
        }

        else
        {
          v49 = sub_1AF0D5194(v32, v33);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            pathCopy = path;
            _os_log_impl(&dword_1AF0CE000, v49, OS_LOG_TYPE_DEFAULT, "Warning: can't prepare shadable animation with path %@", buf, 0xCu);
          }
        }
      }
    }

    return sub_1AF291EF0(self, path, v19);
  }

  return v15;
}

- (void)setLevelsOfDetail:(id)detail
{
  levelsOfDetail = self->_levelsOfDetail;
  if (levelsOfDetail != detail)
  {
    v13[8] = v3;
    v13[9] = v4;

    self->_levelsOfDetail = objc_msgSend_copy(detail, v8, v9);
    v11 = objc_msgSend_sortedArrayUsingComparator_(detail, v10, &unk_1F24EC058);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1AF2E9E68;
    v13[3] = &unk_1E7A7E220;
    v13[4] = v11;
    v13[5] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, self, v13);
  }
}

- (void)setTessellator:(id)tessellator
{
  tessellator = self->_tessellator;
  if (tessellator != tessellator)
  {
    objc_msgSend_removeClient_(tessellator, a2, self);

    tessellatorCopy = tessellator;
    self->_tessellator = tessellatorCopy;

    MEMORY[0x1EEE66B58](tessellatorCopy, sel_addClient_, self);
  }
}

- (void)set_subdivisionSettings:(id)settings
{
  settingsCopy = settings;
  if (settings != *&self->_subdivisionSettings)
  {
    self->_subdivisionSettings = settings;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1AF2EA068;
    v3[3] = &unk_1E7A7E270;
    v3[4] = self;
    settingsCopy2 = settings;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
  }
}

- (void)setSubdivisionLevel:(unint64_t)level
{
  if (level <= 0x7FFFFFFFFFFFFFFELL)
  {
    v8[8] = v3;
    v8[9] = v4;
    if (self->_subdivisionLevel != level)
    {
      self->_subdivisionLevel = level;
      tessellator = self->_tessellator;
      if (tessellator)
      {
        objc_msgSend_tessellatorValueDidChangeForClient_(tessellator, a2, self);
      }

      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2EA174;
      v8[3] = &unk_1E7A7E248;
      v8[4] = self;
      v8[5] = level;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v8);
    }
  }
}

- (void)setWantsAdaptiveSubdivision:(BOOL)subdivision
{
  if (self->_subdivisionIsAdaptive != subdivision)
  {
    v7 = v3;
    v8 = v4;
    self->_subdivisionIsAdaptive = subdivision;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2EA25C;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    subdivisionCopy = subdivision;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (void)setEdgeCreasesElement:(id)element
{
  edgeCreasesElement = self->_edgeCreasesElement;
  if (edgeCreasesElement != element)
  {
    v12[7] = v3;
    v12[8] = v4;
    if (!element)
    {
LABEL_5:

      self->_edgeCreasesElement = element;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1AF2EA390;
      v12[3] = &unk_1E7A7E1D0;
      v12[4] = self;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v12);
      return;
    }

    v8 = objc_msgSend_primitiveType(element, a2, element);
    if (v8 == 2)
    {
      edgeCreasesElement = self->_edgeCreasesElement;
      goto LABEL_5;
    }

    v11 = sub_1AF0D5194(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF67F0();
    }
  }
}

- (void)setEdgeCreasesSource:(id)source
{
  edgeCreasesSource = self->_edgeCreasesSource;
  if (edgeCreasesSource != source)
  {
    v14[7] = v3;
    v14[8] = v4;
    if (!source)
    {
LABEL_5:

      self->_edgeCreasesSource = source;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1AF2EA4E4;
      v14[3] = &unk_1E7A7E1D0;
      v14[4] = self;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, self, v14);
      return;
    }

    v8 = objc_msgSend_semantic(source, a2, source);
    isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"kGeometrySourceSemanticEdgeCrease");
    if (isEqualToString)
    {
      edgeCreasesSource = self->_edgeCreasesSource;
      goto LABEL_5;
    }

    v13 = sub_1AF0D5194(isEqualToString, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF6830();
    }
  }
}

- (__CFXMaterial)materialRefCreateIfNeeded
{
  v3 = objc_msgSend_modelRef(self, a2, v2);
  v5 = sub_1AF15B294(v3);
  if (!v5)
  {
    v6 = sub_1AF1B1FE0(v3, v4);
    if (v6 >= 1 && (v6 = sub_1AF1B2030(v3, 0)) != 0)
    {
      v8 = sub_1AF1A0D14(v6, v7);
    }

    else
    {
      v8 = sub_1AF1A0BFC(v6, v7);
    }

    v5 = v8;
    sub_1AF1B3970(v3, v8);
    CFRelease(v5);
  }

  return v5;
}

- (__CFXMaterial)materialRef
{
  v3 = objc_msgSend_modelRef(self, a2, v2);

  return sub_1AF15B294(v3);
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  if (objc_msgSend_hasPrefix_(key, a2, @"materials["))
  {
    v9 = 0;
    if (objc_msgSend_parseSpecialKey_withPath_intoDestination_remainingPath_(self, v7, key, key, &v9, 0) && v9)
    {
      if (value)
      {
        objc_msgSend_replaceMaterial_with_(self, v8, v9, value);
      }

      else
      {
        objc_msgSend_removeMaterial_(self, v8, v9);
      }
    }
  }

  else
  {

    objc_msgSend__shadableSetValue_forUndefinedKey_(self, v7, value, key);
  }
}

- (id)valueForUndefinedKey:(id)key
{
  if (*(self + 16))
  {
    v7 = objc_msgSend_worldRef(self, a2, key);
    v9 = v7;
    if (v7)
    {
      sub_1AF1CEA20(v7, v8);
    }

    v10 = sub_1AF16E3F4(self->_model, key);
    v6 = v10;
    if (v10)
    {
      v12 = sub_1AF1CDA60(v10, v11);
      v14 = sub_1AF1CDAAC(v6, v13);
      v6 = sub_1AF376790(v12, v14, v15);
    }

    if (v9)
    {
      sub_1AF1CEA9C(v9, v11);
    }

    if (v6)
    {
      return v6;
    }

    v16 = sub_1AF1DB6D0(self->_model, key, 0);
    if (v16)
    {
      v18 = v16;
      if (sub_1AF1DE3A8(v16, v17))
      {
        v20 = sub_1AF1DE3A8(v18, v19);
        v22 = sub_1AF1DE538(v18, v21);
        v24 = sub_1AF376790(v20, v22, v23);
        CFRelease(v18);
        return v24;
      }

      CFRelease(v18);
    }
  }

  v29 = 0;
  v30 = 0;
  v28 = 0;
  sub_1AF3716AC(key, &v29, &v28);
  if (objc_msgSend_parseSpecialKey_withPath_intoDestination_remainingPath_(self, v5, v29, key, &v30, 0))
  {
    return v30;
  }

  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v27 = objc_msgSend_objectForKey_(self->_valuesForUndefinedKeys, v26, key);
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  return v27;
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
    v34[2] = sub_1AF2EAB14;
    v34[3] = &unk_1E7A7E5F0;
    v34[4] = key;
    v34[5] = v17;
    v34[6] = v30;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v31, self, v34);
  }

LABEL_23:
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1AF2EAB68;
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
  v12[2] = sub_1AF2EACA4;
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
  v13 = objc_msgSend_sortedArrayUsingComparator_(v11, v12, &unk_1F24EC078);
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
  v12[2] = sub_1AF2EAF3C;
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
  v12[2] = sub_1AF2EB040;
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
        sub_1AFDF4558(v19, v20, v21, v22, v23, v24, v25, v26);
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

    if ((*(self + 16) & 1) == 0)
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
    v16[2] = sub_1AF2EB5D0;
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
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v14, self, v20, MEMORY[0x1E69E9820], 3221225472, sub_1AF2EB954, &unk_1E7A7E1D0, self, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6]);
  }

  else
  {
    v17 = v16;
    v18 = objc_msgSend_timingFunction(VFXTransaction, v14, v15);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v19, self, v21, v20[0], v20[1], v20[2], v20[3], v20[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF2EB944, &unk_1E7A7E2E8, self, v18, *&v17);
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
    v17[2] = sub_1AF2EBA44;
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
        sub_1AFDF46B0(v14, v13, v15, v16, v17, v18, v19, v20);
      }
    }

    v21 = sub_1AF16D614(v11, v13);
    if (v21)
    {
      v22 = v21;
      os_unfair_lock_lock(&self->_animationsLock);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_1AF2EBBE0;
      v23[3] = &unk_1E7A7E338;
      v23[4] = self;
      sub_1AF375240(v22, v23);
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
    v21[2] = sub_1AF2EC000;
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
  v8[2] = sub_1AF2EC144;
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
  v4[2] = sub_1AF2EC210;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)from
{
  v4 = objc_msgSend__vfxBindings(from, a2, from);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF2EC2BC;
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
    v9[2] = sub_1AF2EC3F4;
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
  v4[2] = sub_1AF2EC530;
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

- (void)_customEncodingOfVFXModel:(id)model
{
  v5 = *self->_fixedBoundingBoxExtrema;
  if (v5)
  {
    v6 = objc_msgSend_valueWithVFXFloat3_(MEMORY[0x1E696B098], a2, model, *v5);
    objc_msgSend_encodeObject_forKey_(model, v7, v6, @"fixedBoundingBoxExtrema[0]");
    v10 = objc_msgSend_valueWithVFXFloat3_(MEMORY[0x1E696B098], v8, v9, *(*self->_fixedBoundingBoxExtrema + 16));
    objc_msgSend_encodeObject_forKey_(model, v11, v10, @"fixedBoundingBoxExtrema[1]");
  }

  sub_1AF2C1024(model, self->_geometry);
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  if (valuesForUndefinedKeys)
  {
    objc_msgSend_encodeObject_forKey_(model, v12, valuesForUndefinedKeys, @"valuesForUndefinedKeys");
  }

  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
}

- (void)_customDecodingOfVFXModel:(id)model
{
  v33 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_containsValueForKey_(model, a2, @"fixedBoundingBoxExtrema[0]"))
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(model, v7, v6, @"fixedBoundingBoxExtrema[0]");
    objc_msgSend_VFXFloat3Value(v8, v9, v10);
    v31 = v11;
    v12 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(model, v13, v12, @"fixedBoundingBoxExtrema[1]");
    objc_msgSend_VFXFloat3Value(v14, v15, v16);
    v32 = v17;
    objc_msgSend_setBoundingBoxMin_max_(self, v18, &v31, &v32);
  }

  v19 = sub_1AF2C10E0(model, v5);
  objc_msgSend_setGeometry_(self, v20, v19);
  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v24 = objc_msgSend_setWithObject_(v21, v23, v22);
  v26 = sub_1AF373968(v24, v25);
  v28 = objc_msgSend_vfx_decodeDictionaryWithKeysOfClasses_objectsOfClasses_forKey_(model, v27, v24, v26, @"valuesForUndefinedKeys");
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_1AF2EC948;
  v30[3] = &unk_1E7A7E7E8;
  v30[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v28, v29, v30);
}

- (void)encodeWithCoder:(id)coder
{
  if (*(self + 16))
  {
    objc_msgSend__updateModelFromPresentation(self, a2, coder);
  }

  objc_msgSend__customEncodingOfVFXModel_(self, a2, coder);
  materials = self->_materials;
  if (materials)
  {
    objc_msgSend_encodeObject_forKey_(coder, v5, materials, @"materials");
  }

  levelsOfDetail = self->_levelsOfDetail;
  if (levelsOfDetail)
  {
    objc_msgSend_encodeObject_forKey_(coder, v5, levelsOfDetail, @"levelsOfDetail");
  }

  objc_msgSend_encodeInteger_forKey_(coder, v5, self->_subdivisionLevel, @"subdivisionLevel");
  objc_msgSend_encodeBool_forKey_(coder, v8, self->_subdivisionIsAdaptive, @"wantsAdaptiveSubdivision");
  edgeCreasesSource = self->_edgeCreasesSource;
  if (edgeCreasesSource)
  {
    objc_msgSend_encodeObject_forKey_(coder, v9, edgeCreasesSource, @"edgeCreasesSource");
  }

  edgeCreasesElement = self->_edgeCreasesElement;
  if (edgeCreasesElement)
  {
    objc_msgSend_encodeObject_forKey_(coder, v9, edgeCreasesElement, @"edgeCreasesElement");
  }

  shadableHelper = self->_shadableHelper;
  if (shadableHelper)
  {
    objc_msgSend_encodeObject_forKey_(coder, v9, shadableHelper, @"shadableHelper");
  }

  objc_msgSend_encodeBytes_length_forKey_(coder, v9, &self->_subdivisionSettings, 4, @"subdivisionSettings");
  name = self->_name;
  if (name)
  {
    objc_msgSend_encodeObject_forKey_(coder, v13, name, @"name");
  }

  sub_1AF372440(coder, self, name);
  sub_1AF3728B4(coder, self, v15);
  tessellator = self->_tessellator;

  objc_msgSend_encodeObject_forKey_(coder, v16, tessellator, @"tessellator");
}

- (VFXModel)initWithCoder:(id)coder
{
  v55.receiver = self;
  v55.super_class = VFXModel;
  v6 = [(VFXModel *)&v55 init];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    *(v6 + 6) = objc_alloc_init(MEMORY[0x1E695DF70]);
    CFObject = objc_msgSend___createCFObject(v6, v9, v10);
    *(v6 + 1) = CFObject;
    if (CFObject)
    {
      sub_1AF16CDFC(CFObject, v6);
    }

    objc_msgSend__updateModelFromPresentation(v6, v12, v13);
    *(v6 + 40) = 0;
    objc_msgSend__customDecodingOfVFXModel_(v6, v14, coder);
    v15 = objc_opt_class();
    v17 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_containingNestedContainersForKey_(coder, v16, v15, @"materials");
    objc_msgSend_setMaterials_(v6, v18, v17);
    v19 = objc_opt_class();
    v21 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v20, v19, @"levelsOfDetail");
    objc_msgSend_setLevelsOfDetail_(v6, v22, v21);
    v24 = objc_msgSend_decodeIntegerForKey_(coder, v23, @"subdivisionLevel");
    objc_msgSend_setSubdivisionLevel_(v6, v25, v24);
    v27 = objc_msgSend_decodeBoolForKey_(coder, v26, @"wantsAdaptiveSubdivision");
    objc_msgSend_setWantsAdaptiveSubdivision_(v6, v28, v27);
    v29 = objc_opt_class();
    v31 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v30, v29, @"edgeCreasesSource");
    objc_msgSend_setEdgeCreasesSource_(v6, v32, v31);
    v33 = objc_opt_class();
    v35 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v34, v33, @"edgeCreasesElement");
    objc_msgSend_setEdgeCreasesElement_(v6, v36, v35);
    v37 = objc_opt_class();
    v39 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v38, v37, @"shadableHelper");
    *(v6 + 15) = v39;
    if (objc_msgSend_owner(v39, v40, v41) != v6)
    {

      *(v6 + 15) = 0;
    }

    v54 = 0;
    v43 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v42, @"subdivisionSettings", &v54);
    if (v54 == 4)
    {
      *(v6 + 97) = *v43;
    }

    v44 = objc_opt_class();
    v46 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v45, v44, @"name");
    objc_msgSend_setName_(v6, v47, v46);
    *(v6 + 14) = 0;
    sub_1AF37249C(coder, v6);
    sub_1AF372B94(coder, v6);
    v48 = objc_opt_class();
    v50 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v49, v48, @"tessellator");
    objc_msgSend_setTessellator_(v6, v51, v50);
    objc_msgSend_setImmediateMode_(VFXTransaction, v52, v7);
  }

  return v6;
}

+ (VFXModel)modelWithSources:(id)sources elements:(id)elements
{
  v5 = objc_msgSend_meshWithSources_elements_(VFXMesh, a2, sources, elements);

  return objc_msgSend_modelWithMesh_(VFXModel, v4, v5);
}

+ (VFXModel)modelWithSources:(id)sources elements:(id)elements sourceChannels:(id)channels
{
  v6 = objc_msgSend_meshWithSources_elements_sourceChannels_(VFXMesh, a2, sources, elements, channels);

  return objc_msgSend_modelWithMesh_(VFXModel, v5, v6);
}

- (id)modelSources
{
  v3 = objc_msgSend_mesh(self, a2, v2);

  return objc_msgSend_meshSources(v3, v4, v5);
}

- (id)modelSourcesForSemantic:(id)semantic
{
  v4 = objc_msgSend_mesh(self, a2, semantic);

  return objc_msgSend_meshSourcesForSemantic_(v4, v5, semantic);
}

- (id)modelElements
{
  v3 = objc_msgSend_mesh(self, a2, v2);

  return objc_msgSend_meshElements(v3, v4, v5);
}

- (int64_t)modelElementCount
{
  v3 = objc_msgSend_mesh(self, a2, v2);

  return objc_msgSend_meshElementCount(v3, v4, v5);
}

- (id)modelElementAtIndex:(int64_t)index
{
  v4 = objc_msgSend_mesh(self, a2, index);

  return objc_msgSend_meshElementAtIndex_(v4, v5, index);
}

- (id)modelSourceChannels
{
  v3 = objc_msgSend_mesh(self, a2, v2);

  return objc_msgSend_meshSourceChannels(v3, v4, v5);
}

+ (VFXModel)modelWithMDLMesh:(id)mesh submesh:(id)submesh options:(id)options
{
  v5 = 0;
  if (mesh && submesh)
  {
    if (objc_msgSend_indexCount(submesh, a2, mesh))
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = objc_msgSend_modelElementWithMDLSubmesh_(VFXMeshElement, v13, submesh);
      if (v14)
      {
        objc_msgSend_addObject_(v9, v15, v14);
      }

      v17 = objc_msgSend_material(submesh, v15, v16);
      if (v17)
      {
        v19 = objc_msgSend_materialWithMDLMaterial_options_(VFXMaterial, v18, v17, options);
        if (v19)
        {
          objc_msgSend_addObject_(v10, v20, v19);
        }
      }

      v46[0] = 0;
      v46[1] = 0;
      v44[1] = 0;
      v45 = v46;
      v43 = v44;
      v44[0] = 0;
      sub_1AF2F4F6C(submesh, &v45, &v43);
      sub_1AF2F5118(v11, v12, mesh, options);
      v41 = 0;
      v42 = 0;
      sub_1AF2F533C(v11, &v43, mesh);
      sub_1AF2F54E4(&v45, &v42, &v41);
      v22 = objc_msgSend_meshWithSources_elements_(VFXMesh, v21, v11, v9);
      v25 = objc_msgSend_name(mesh, v23, v24);
      objc_msgSend_setName_(v22, v26, v25);
      v5 = objc_msgSend_modelWithMesh_(VFXModel, v27, v22);
      v30 = objc_msgSend_name(mesh, v28, v29);
      objc_msgSend_setName_(v5, v31, v30);
      v34 = objc_msgSend_name(v5, v32, v33);
      objc_msgSend_setName_(v22, v35, v34);
      objc_msgSend_setSubdivisionLevel_(v5, v36, 0);
      objc_msgSend_setEdgeCreasesElement_(v5, v37, v41);
      objc_msgSend_setEdgeCreasesSource_(v5, v38, v42);
      objc_msgSend_setMaterials_(v5, v39, v10);

      sub_1AF112128(&v43, v44[0]);
      sub_1AF112128(&v45, v46[0]);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

+ (VFXModel)modelWithMDLMesh:(id)mesh
{
  v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, mesh);

  return objc_msgSend_modelWithMDLMesh_options_context_(self, v5, mesh, 0, v6);
}

+ (VFXModel)modelWithMDLMesh:(id)mesh options:(id)options context:(id)context
{
  v129 = *MEMORY[0x1E69E9840];
  if (!mesh)
  {
    return 0;
  }

  v112 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v110 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v108 = objc_alloc_init(MEMORY[0x1E695DF70]);
  obj = objc_alloc_init(MEMORY[0x1E695DF70]);
  v127._meshElement = 0;
  v127._world = 0;
  v126 = 0;
  v127.super.isa = &v127._meshElement;
  v124 = &v125;
  v125 = 0;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  meshCopy = mesh;
  v9 = objc_msgSend_submeshes(mesh, v7, v8);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v120, v128, 16);
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = *v121;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v121 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v120 + 1) + 8 * i);
      if (objc_msgSend_indexCount(v16, v11, v12, v108))
      {
        v18 = objc_msgSend_modelElementWithMDLSubmesh_(VFXMeshElement, v11, v16);
        if (v18)
        {
          objc_msgSend_addObject_(v112, v17, v18);
        }

        v19 = objc_msgSend_material(v16, v17, v18);
        v22 = v19;
        if (v19)
        {
          v23 = objc_msgSend_name(v19, v20, v21);
          if (v23)
          {
            v24 = objc_msgSend_valueForKey_(context, v20, v23);
            if (v24)
            {
LABEL_15:
              objc_msgSend_setValue_forKey_(context, v20, v24, v23);
              goto LABEL_16;
            }
          }

          v24 = objc_msgSend_materialWithMDLMaterial_options_(VFXMaterial, v20, v22, options);
          if (v24)
          {
            if (v23)
            {
              goto LABEL_15;
            }

LABEL_16:
            objc_msgSend_addObject_(v110, v20, v24);
          }
        }

        objc_msgSend_topology(v16, v20, v21);
        sub_1AF2F4F6C(v16, &v127, &v124);
        continue;
      }
    }

    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v120, v128, 16);
  }

  while (v13);
LABEL_20:
  v25 = v108;
  v26 = meshCopy;
  sub_1AF2F5118(v108, obj, meshCopy, options);
  v118 = 0;
  v119 = 0;
  sub_1AF2F533C(v108, &v124, meshCopy);
  sub_1AF2F54E4(&v127, &v119, &v118);
  v29 = objc_msgSend_submeshes(meshCopy, v27, v28);
  if (objc_msgSend_count(v29, v30, v31))
  {
    v34 = 0;
    v35 = *MEMORY[0x1E6974B28];
    while (1)
    {
      v36 = objc_msgSend_vertexDescriptor(meshCopy, v32, v33, v108);
      v39 = objc_msgSend_attributes(v36, v37, v38);
      v44 = v34;
      if (objc_msgSend_count(v39, v40, v41) <= v34)
      {
        break;
      }

      v45 = objc_msgSend_vertexDescriptor(meshCopy, v42, v43);
      v48 = objc_msgSend_attributes(v45, v46, v47);
      v50 = objc_msgSend_objectAtIndexedSubscript_(v48, v49, v34);
      v53 = objc_msgSend_name(v50, v51, v52);
      ++v34;
      if (objc_msgSend_containsString_(v53, v54, v35))
      {
        goto LABEL_28;
      }
    }

    v44 = 0;
LABEL_28:
    v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v62, &v114, &v127._worldReferenceCounter, 16);
    if (v65)
    {
      v66 = *v115;
      do
      {
        for (j = 0; j != v65; ++j)
        {
          if (*v115 != v66)
          {
            objc_enumerationMutation(obj);
          }

          v68 = *(*(&v114 + 1) + 8 * j);
          v69 = objc_msgSend_unsignedLongValue(v68, v63, v64);
          v72 = objc_msgSend_submeshes(meshCopy, v70, v71);
          v74 = objc_msgSend_objectAtIndexedSubscript_(v72, v73, 0);
          v77 = objc_msgSend_faceIndexing(v74, v75, v76);
          if (v69 >= objc_msgSend_count(v77, v78, v79))
          {
            v92 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v80, v44);
          }

          else
          {
            v82 = objc_msgSend_submeshes(meshCopy, v80, v81);
            v84 = objc_msgSend_objectAtIndexedSubscript_(v82, v83, 0);
            v87 = objc_msgSend_faceIndexing(v84, v85, v86);
            v90 = objc_msgSend_integerValue(v68, v88, v89);
            v92 = objc_msgSend_objectAtIndexedSubscript_(v87, v91, v90);
          }

          objc_msgSend_addObject_(v61, v93, v92);
        }

        v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v63, &v114, &v127._worldReferenceCounter, 16);
      }

      while (v65);
    }

    v25 = v108;
    if (v126)
    {
      v94 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v63, v44);
      objc_msgSend_addObject_(v61, v95, v94);
    }

    v56 = objc_msgSend_meshWithSources_elements_sourceChannels_(VFXMesh, v63, v108, v112, v61);

    v26 = meshCopy;
    v58 = objc_msgSend_modelWithMesh_(VFXModel, v96, v56, v108);
  }

  else
  {
    v56 = objc_msgSend_meshWithSources_elements_(VFXMesh, v32, v108, v112);
    v58 = objc_msgSend_modelWithMesh_(VFXModel, v57, v56, v108);
  }

  v55 = v58;
  v97 = objc_msgSend_name(v26, v59, v60);
  objc_msgSend_setName_(v55, v98, v97);
  v101 = objc_msgSend_name(v55, v99, v100);
  objc_msgSend_setName_(v56, v102, v101);
  objc_msgSend_setSubdivisionLevel_(v55, v103, 0);
  objc_msgSend_setEdgeCreasesElement_(v55, v104, v118);
  objc_msgSend_setEdgeCreasesSource_(v55, v105, v119);
  objc_msgSend_setMaterials_(v55, v106, v110);

  sub_1AF112128(&v124, v125);
  sub_1AF112128(&v127, &v127._meshElement->var0.var0.var0);
  return v55;
}

+ (id)morpherWithMDLMesh:(id)mesh
{
  v113 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_vertexDescriptor(mesh, a2, mesh);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v9 = objc_msgSend_attributes(v4, v7, v8);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v104, v112, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v105;
    v16 = *MEMORY[0x1E6974B28];
    v17 = *MEMORY[0x1E6974B18];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v105 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v19 = *(*(&v104 + 1) + 8 * i);
        if (objc_msgSend_format(v19, v12, v13))
        {
          v20 = objc_msgSend_name(v19, v12, v13);
          if (objc_msgSend_containsString_(v20, v21, v16))
          {
            objc_msgSend_addObject_(v5, v22, v19);
          }

          v24 = objc_msgSend_name(v19, v22, v23);
          if (objc_msgSend_containsString_(v24, v25, v17))
          {
            objc_msgSend_addObject_(v6, v12, v19);
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v104, v112, 16);
    }

    while (v14);
  }

  if (objc_msgSend_count(v5, v12, v13))
  {
    v26 = objc_alloc(MEMORY[0x1E695DF70]);
    v29 = objc_msgSend_count(v5, v27, v28);
    v31 = objc_msgSend_initWithCapacity_(v26, v30, v29);
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v32, &v100, v111, 16);
    if (v33)
    {
      v35 = v33;
      v36 = *v101;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v101 != v36)
          {
            objc_enumerationMutation(v5);
          }

          v38 = objc_msgSend_meshSourceWithMDLVertexAttribute_mesh_(VFXMeshSource, v34, *(*(&v100 + 1) + 8 * j), mesh);
          objc_msgSend_addObject_(v31, v39, v38);
        }

        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v34, &v100, v111, 16);
      }

      while (v35);
    }

    v40 = objc_alloc(MEMORY[0x1E695DF70]);
    v43 = objc_msgSend_count(v6, v41, v42);
    v45 = objc_msgSend_initWithCapacity_(v40, v44, v43);
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v46, &v96, v110, 16);
    if (v47)
    {
      v49 = v47;
      v50 = *v97;
      do
      {
        for (k = 0; k != v49; ++k)
        {
          if (*v97 != v50)
          {
            objc_enumerationMutation(v6);
          }

          v52 = objc_msgSend_meshSourceWithMDLVertexAttribute_mesh_(VFXMeshSource, v48, *(*(&v96 + 1) + 8 * k), mesh);
          objc_msgSend_addObject_(v45, v53, v52);
        }

        v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v48, &v96, v110, 16);
      }

      while (v49);
    }

    v54 = objc_msgSend_modelWithMDLMesh_(self, v48, mesh);
    v55 = objc_alloc(MEMORY[0x1E695DF70]);
    v58 = objc_msgSend_count(v31, v56, v57);
    v60 = objc_msgSend_initWithCapacity_(v55, v59, v58);
    if (objc_msgSend_count(v5, v61, v62) == 1)
    {
      v65 = objc_msgSend_mesh(v54, v63, v64);
      objc_msgSend_addObject_(v60, v66, v65);
    }

    else
    {
      v68 = objc_msgSend_count(v31, v63, v64);
      v71 = objc_msgSend_count(v45, v69, v70);
      v74 = objc_msgSend_count(v31, v72, v73);
      if (v68 == v71)
      {
        if (v74)
        {
          v76 = 0;
          do
          {
            v109[0] = objc_msgSend_objectAtIndexedSubscript_(v31, v75, v76);
            v109[1] = objc_msgSend_objectAtIndexedSubscript_(v45, v77, v76);
            v79 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v78, v109, 2);
            v81 = objc_msgSend_meshWithSources_elements_(VFXMesh, v80, v79, 0);
            objc_msgSend_addObject_(v60, v82, v81);
            ++v76;
          }

          while (v76 < objc_msgSend_count(v31, v83, v84));
        }
      }

      else if (v74)
      {
        v85 = 0;
        do
        {
          v108 = objc_msgSend_objectAtIndexedSubscript_(v31, v75, v85);
          v87 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v86, &v108, 1);
          v89 = objc_msgSend_meshWithSources_elements_(VFXMesh, v88, v87, 0);
          objc_msgSend_addObject_(v60, v90, v89);
          ++v85;
        }

        while (v85 < objc_msgSend_count(v31, v91, v92));
      }
    }

    v93 = objc_alloc_init(VFXMorpher);
    objc_msgSend_setTargets_(v93, v94, v60);

    return v93;
  }

  else
  {

    return 0;
  }
}

- (void)setValueForKey:(id)key optionKey:(id)optionKey options:(id)options
{
  v7 = objc_msgSend_objectForKey_(options, a2, optionKey);
  if (v7)
  {

    objc_msgSend_setValue_forKey_(self, v8, v7, key);
  }
}

+ (id)planeWithWidth:(float)width height:(float)height options:(id)options
{
  v6 = objc_msgSend_planeWithWidth_height_(VFXParametricModel, a2, options);
  objc_msgSend_setValueForKey_optionKey_options_(v6, v7, @"widthSegmentCount", @"kPrimitiveWidthSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v6, v8, @"heightSegmentCount", @"kPrimitiveHeightSegments", options);
  return v6;
}

+ (id)cubeWithWidth:(float)width height:(float)height length:(float)length cornerRadius:(float)radius options:(id)options
{
  v8 = objc_msgSend_cubeWithWidth_height_length_chamferRadius_(VFXParametricModel, a2, options);
  objc_msgSend_setValueForKey_optionKey_options_(v8, v9, @"widthSegmentCount", @"kPrimitiveWidthSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v8, v10, @"heightSegmentCount", @"kPrimitiveHeightSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v8, v11, @"lengthSegmentCount", @"kPrimitiveLengthSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v8, v12, @"chamferSegmentCount", @"kPrimitiveChamferSegments", options);
  return v8;
}

+ (id)pyramidWithWidth:(float)width height:(float)height length:(float)length options:(id)options
{
  v7 = objc_msgSend_pyramidWithWidth_height_length_(VFXParametricModel, a2, options);
  objc_msgSend_setValueForKey_optionKey_options_(v7, v8, @"widthSegmentCount", @"kPrimitiveWidthSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v7, v9, @"heightSegmentCount", @"kPrimitiveHeightSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v7, v10, @"lengthSegmentCount", @"kPrimitiveLengthSegments", options);
  return v7;
}

+ (id)sphereWithRadius:(float)radius options:(id)options
{
  v5 = objc_msgSend_sphereWithRadius_(VFXParametricModel, a2, options);
  objc_msgSend_setValueForKey_optionKey_options_(v5, v6, @"segmentCount", @"kPrimitiveRotationSegments", options);
  v8 = objc_msgSend_objectForKey_(options, v7, @"kPrimitiveSphereType");
  if (v8)
  {
    isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"kPrimitiveTypeGeosphere");
    objc_msgSend_setGeodesic_(v5, v11, isEqualToString);
  }

  return v5;
}

+ (id)cylinderWithRadius:(float)radius height:(float)height options:(id)options
{
  v6 = objc_msgSend_cylinderWithRadius_height_(VFXParametricModel, a2, options);
  objc_msgSend_setValueForKey_optionKey_options_(v6, v7, @"radialSegmentCount", @"kPrimitiveRotationSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v6, v8, @"heightSegmentCount", @"kPrimitiveHeightSegments", options);
  return v6;
}

+ (id)coneWithHeight:(float)height topRadius:(float)radius bottomRadius:(float)bottomRadius options:(id)options
{
  *&v8 = radius;
  *&v9 = bottomRadius;
  *&v10 = height;
  v11 = objc_msgSend_coneWithTopRadius_bottomRadius_height_(VFXParametricModel, a2, options, v8, v9, v10);
  objc_msgSend_setValueForKey_optionKey_options_(v11, v12, @"radialSegmentCount", @"kPrimitiveRotationSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v11, v13, @"heightSegmentCount", @"kPrimitiveHeightSegments", options);
  return v11;
}

+ (id)tubeWithInnerRadius:(float)radius outerRadius:(float)outerRadius height:(float)height options:(id)options
{
  v7 = objc_msgSend_tubeWithInnerRadius_outerRadius_height_(VFXParametricModel, a2, options);
  objc_msgSend_setValueForKey_optionKey_options_(v7, v8, @"radialSegmentCount", @"kPrimitiveRotationSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v7, v9, @"heightSegmentCount", @"kPrimitiveHeightSegments", options);
  return v7;
}

+ (id)capsuleWithRadius:(float)radius height:(float)height options:(id)options
{
  v6 = objc_msgSend_capsuleWithCapRadius_height_(VFXParametricModel, a2, options);
  objc_msgSend_setValueForKey_optionKey_options_(v6, v7, @"radialSegmentCount", @"kPrimitiveRotationSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v6, v8, @"heightSegmentCount", @"kPrimitiveHeightSegments", options);
  return v6;
}

+ (id)torusWithRingRadius:(float)radius pipeRadius:(float)pipeRadius options:(id)options
{
  v6 = objc_msgSend_torusWithRingRadius_pipeRadius_(VFXParametricModel, a2, options);
  objc_msgSend_setValueForKey_optionKey_options_(v6, v7, @"radialSegmentCount", @"kPrimitiveRotationSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v6, v8, @"pipeSegmentCount", @"kPrimitivePipeSegments", options);
  return v6;
}

- (id)debugQuickLookObjectWithWorld:(id)world
{
  v4 = objc_msgSend_copy(self, a2, world);
  v6 = objc_msgSend_nodeWithModel_(VFXNode, v5, v4);

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