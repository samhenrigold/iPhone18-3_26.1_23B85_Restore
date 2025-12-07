@interface VFXNode
+ (VFXNode)nodeWithMDLAsset:(id)asset;
+ (VFXNode)nodeWithMDLObject:(id)object;
+ (VFXNode)nodeWithMDLObject:(id)object masterObjects:(id)objects worldNodes:(id)nodes skinnedMeshes:(id)meshes skelNodesMap:(void *)map asset:(id)asset options:(id)options context:(id)self0 mpuScale:(float)self1;
+ (VFXNode)nodeWithMDLObject:(id)object options:(id)options context:(id)context;
+ (VFXNode)nodeWithModel:(id)model;
+ (VFXNode)nodeWithNodeRef:(__CFXNode *)ref;
+ (VFXNode)nodeWithSceneKitNode:(id)node options:(id)options;
+ (id)_dumpNodeTree:(id)tree tab:(id)tab;
+ (id)localFrontValue;
+ (id)localRightValue;
+ (id)localUpValue;
+ (id)node;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (BOOL)_childNodesPassingTest:(id)test recursively:(BOOL)recursively output:(id)output;
- (BOOL)_enumerateChildNodesUsingBlock:(id)block;
- (BOOL)_isEffectivelyHidden;
- (BOOL)canAddChildNode:(id)node;
- (BOOL)castsShadow;
- (BOOL)getBoundingBoxMin:(VFXNode *)self max:(SEL)max;
- (BOOL)getBoundingSphereCenter:(VFXNode *)self radius:(SEL)radius;
- (BOOL)getFrustum:(id *)frustum withViewport:;
- (BOOL)hasAncestor:(id)ancestor;
- (BOOL)hasPhysicBody;
- (BOOL)isHidden;
- (BOOL)isHiddenOrHasHiddenAncestor;
- (BOOL)parseSpecialKey:(id)key withPath:(id)path intoDestination:(id *)destination;
- (BOOL)rawFloat3ForKey:(id)key value:;
- (BOOL)rawFloat4ForKey:(id)key value:;
- (BOOL)usesDepthPrePass;
- (CGRect)_focusFrameInView:(id)view;
- (NSArray)animationKeys;
- (NSArray)bridgedComponentNames;
- (NSArray)childNodes;
- (NSArray)constraints;
- (NSArray)states;
- (NSString)description;
- (NSString)name;
- (VFXBehaviorGraph)behaviorGraph;
- (VFXForceField)forceField;
- (VFXNode)init;
- (VFXNode)initWithCoder:(id)coder;
- (VFXNode)initWithNodeRef:(__CFXNode *)ref;
- (VFXNode)parentNode;
- (VFXNode)presentationNode;
- (VFXState)state;
- (VFXWorld)world;
- (__CFXAnimationManager)animationManager;
- (__CFXWorld)worldRef;
- (__n128)rotation;
- (double)_euler;
- (double)_quaternion;
- (double)boundingBox;
- (double)convertPosition:(const char *)position fromNode:(void *)node;
- (double)convertPosition:(const char *)position toNode:(void *)node;
- (double)convertTransform:(__n128)transform fromNode:(__n128)node;
- (double)convertVector:(const char *)vector fromNode:(void *)node;
- (double)convertVector:(const char *)vector toNode:(void *)node;
- (double)eulerAngles;
- (double)pivot;
- (double)position;
- (double)scale;
- (double)transform;
- (double)worldFront;
- (double)worldOrientation;
- (double)worldRight;
- (double)worldUp;
- (float)opacity;
- (float32x4_t)convertTransform:(__n128)transform toNode:(__n128)node;
- (float32x4_t)setTransform:(float32x4_t)transform;
- (float32x4_t)worldTransform;
- (id)__camera;
- (id)__light;
- (id)__model;
- (id)__morpher;
- (id)_audioPlayers;
- (id)_cloneWithOption:(unint64_t)option copyContext:(id)context;
- (id)_copyRecursively:(unint64_t)recursively copyContext:(id)context;
- (id)_dumpTree;
- (id)_findComponentWithType:(int64_t)type;
- (id)_subdividedCopyWithSubdivisionLevel:(int64_t)level;
- (id)_valueForSimdVectorKeyPath:(id)path;
- (id)_vfxAnimationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)childNodeWithName:(id)name recursively:(BOOL)recursively;
- (id)childNodesPassingTest:(id)test recursively:(BOOL)recursively;
- (id)childNodesWithAttribute:(Class)attribute recursively:(BOOL)recursively;
- (id)cloneWithOption:(unint64_t)option;
- (id)convertPositionValue:(id)value fromNode:(id)node;
- (id)convertPositionValue:(id)value toNode:(id)node;
- (id)convertTransformValue:(id)value fromNode:(id)node;
- (id)convertTransformValue:(id)value toNode:(id)node;
- (id)convertVectorValue:(id)value fromNode:(id)node;
- (id)convertVectorValue:(id)value toNode:(id)node;
- (id)copyAnimationChannelForKeyPath:(id)path animation:(id)animation;
- (id)copyWithOptions:(unint64_t)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)coreEntityManager;
- (id)debugQuickLookData;
- (id)debugQuickLookObject;
- (id)debugQuickLookObjectWithWorld:(id)world;
- (id)deepClone;
- (id)deepCloneWithContext:(id)context;
- (id)deformers;
- (id)eulerAnglesValue;
- (id)flattenedClone;
- (id)flattenedCopy;
- (id)getBoundingBox;
- (id)getBoundingSphere;
- (id)hitTestWithSegmentFrom:(id)from toPoint:(id)point options:(id)options;
- (id)hitTestWithSegmentFromPoint:(VFXNode *)self toPoint:(SEL)point options:(id)options;
- (id)identifier;
- (id)initPresentationNodeWithNodeRef:(__CFXNode *)ref;
- (id)objectInAudioPlayersAtIndex:(unint64_t)index;
- (id)objectInChildNodesAtIndex:(unint64_t)index;
- (id)objectInChildNodesWithAttribute:(id)attribute firstOnly:(BOOL)only;
- (id)orientationValue;
- (id)pivotValue;
- (id)positionValue;
- (id)rotationValue;
- (id)scaleValue;
- (id)script_rootNode;
- (id)valueForKey:(id)key;
- (id)valueForKeyPath:(id)path;
- (id)valueForUndefinedKey:(id)key;
- (id)worldFrontValue;
- (id)worldOrientationValue;
- (id)worldPositionValue;
- (id)worldRightValue;
- (id)worldTransformValue;
- (id)worldUpValue;
- (int64_t)authoringCameraType;
- (int64_t)coreEntity;
- (int64_t)renderingOrder;
- (unint64_t)categoryBitMask;
- (unint64_t)countOfAudioPlayers;
- (unint64_t)indexOfChildNode:(id)node;
- (unsigned)drawCallCount;
- (void)_addSkinnerWithMDLMesh:(id)mesh worldNodes:(id)nodes;
- (void)_appendFocusableNodesInRect:(CGRect)rect ofView:(id)view toFocusItems:(id)items;
- (void)_assignComponent:(id)component toContainerWithType:(int64_t)type;
- (void)_bakeNodes:(id)nodes folderPath:(id)path inVertex:(BOOL)vertex bakeAO:(BOOL)o quality:(float)quality attenuation:(float)attenuation geomSetter:(id)setter terminateSetter:(id)self0;
- (void)_childNodesWithAttribute:(Class)attribute output:(id)output recursively:(BOOL)recursively;
- (void)_copyAnimationsFrom:(id)from;
- (void)_copyBindingsFrom:(id)from;
- (void)_copyWithOptions:(unint64_t)options to:(id)to copyContext:(id)context;
- (void)_customDecodingOfVFXNode:(id)node;
- (void)_customEncodingOfVFXNode:(id)node usePresentationObject:(BOOL)object;
- (void)_didDecodeVFXNode:(id)node;
- (void)_dump:(id)_dump;
- (void)_encodeNodePropertiesWithCoder:(id)coder;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_propagatePhysicsBodyCountChange:(int)change;
- (void)_remapNodeReferences:(id)references nullifyIfAbsent:(BOOL)absent;
- (void)_removeComponentWithType:(int64_t)type;
- (void)_setAttributes:(id)attributes;
- (void)_setComponent:(id)component withType:(int64_t)type;
- (void)_setHasFocusableChild;
- (void)_setPausedOrPausedByInheritance:(BOOL)inheritance;
- (void)_setPosition:(VFXNode *)self;
- (void)_setQuaternion:(float32x4_t *)quaternion;
- (void)_setScale:(VFXNode *)self;
- (void)_setSourceObject:(id)object forBinding:(id)binding;
- (void)_syncObjCAnimations;
- (void)_updateAffine;
- (void)_updateEntityModelFromPresentation;
- (void)_updateEntityPresentationFromModel;
- (void)_updateFocusableCache;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)_updateTransform;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addAnimationAsset:(id)asset forKey:(id)key;
- (void)addAnimationPlayer:(id)player forKey:(id)key;
- (void)addAudioPlayer:(id)player;
- (void)addChildNode:(id)node;
- (void)addWorldReference:(id)reference;
- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options;
- (void)dealloc;
- (void)dump;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAnimationReferencesUsingBlock:(id)block;
- (void)enumerateChildNodesUsingBlock:(id)block;
- (void)enumerateDrawCallsUsingBlock:(id)block context:(id *)context;
- (void)enumerateHierarchyUsingBlock:(id)block;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)insertObject:(id)object inAudioPlayersAtIndex:(unint64_t)index;
- (void)insertObject:(id)object inChildNodesAtIndex:(unint64_t)index;
- (void)localRotateBy:(void *)by;
- (void)localRotateByValue:(id)value;
- (void)localTranslateBy:(VFXNode *)self;
- (void)localTranslateByValue:(id)value;
- (void)lookAt:(VFXNode *)self;
- (void)lookAt:(VFXNode *)self up:(SEL)up localFront:;
- (void)lookAtLocation:(id)location;
- (void)lookAtLocation:(id)location up:(id)up localFront:(id)front;
- (void)makeUniqueID;
- (void)modelChanged;
- (void)orientation;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)duration;
- (void)removeAllAudioPlayers;
- (void)removeAllBindings;
- (void)removeAllChilds;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration;
- (void)removeAudioPlayer:(id)player;
- (void)removeFromParentNode;
- (void)removeObjectFromAudioPlayersAtIndex:(unint64_t)index;
- (void)replaceChildNode:(id)node with:(id)with;
- (void)replaceObjectInAudioPlayerAtIndex:(unint64_t)index withObject:(id)object;
- (void)replaceObjectInChildNodesAtIndex:(unint64_t)index withObject:(id)object;
- (void)resetPhysicsBodyTransformInHierarchy;
- (void)rotateBy:(float32x4_t)by aroundTarget:;
- (void)rotateBy:(id)by around:(id)around;
- (void)setAuthoringCameraType:(int64_t)type;
- (void)setBehaviorGraph:(id)graph;
- (void)setBoundingBox:(float32x4_t)box;
- (void)setBoundingBoxMin:(VFXNode *)self max:(SEL)max;
- (void)setCamera:(id)camera;
- (void)setCastsShadow:(BOOL)shadow;
- (void)setCategoryBitMask:(unint64_t)mask;
- (void)setConstraints:(id)constraints;
- (void)setDeformers:(id)deformers;
- (void)setEditorLocked:(BOOL)locked;
- (void)setEulerAngles:(VFXNode *)self;
- (void)setEulerAnglesValue:(id)value;
- (void)setFocusBehavior:(int64_t)behavior;
- (void)setForceField:(id)field;
- (void)setGizmo:(BOOL)gizmo;
- (void)setHidden:(BOOL)hidden;
- (void)setIdentifier:(id)identifier;
- (void)setIsAuthoring:(BOOL)authoring;
- (void)setIsEyeSightFrame:(BOOL)frame;
- (void)setIsHandTrackingRoot:(BOOL)root;
- (void)setIsJoint:(BOOL)joint;
- (void)setLight:(id)light;
- (void)setModel:(id)model;
- (void)setMorpher:(id)morpher;
- (void)setName:(id)name;
- (void)setOpacity:(float)opacity;
- (void)setOrientation:(__n128)orientation;
- (void)setOrientationValue:(id)value;
- (void)setParticleCollider:(id)collider;
- (void)setParticleEmitter:(id)emitter;
- (void)setPaused:(BOOL)paused;
- (void)setPhysicsBody:(id)body;
- (void)setPivot:(float32x4_t)pivot;
- (void)setPivotValue:(id)value;
- (void)setPosition:(VFXNode *)self;
- (void)setPositionValue:(id)value;
- (void)setRenderingOrder:(int64_t)order;
- (void)setRotation:(VFXNode *)self;
- (void)setRotationValue:(id)value;
- (void)setScale:(VFXNode *)self;
- (void)setScaleValue:(id)value;
- (void)setSkinner:(id)skinner;
- (void)setState:(id)state;
- (void)setStateNamed:(id)named;
- (void)setUsesDepthPrePass:(BOOL)pass;
- (void)setValue:(id)value forKey:(id)key;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)setWorld:(id)world;
- (void)setWorldOrientation:(void *)orientation;
- (void)setWorldOrientationValue:(id)value;
- (void)setWorldPosition:(VFXNode *)self;
- (void)setWorldPositionValue:(id)value;
- (void)setWorldTransform:(double)transform;
- (void)setWorldTransformValue:(id)value;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation VFXNode

- (int64_t)authoringCameraType
{
  AssociatedObject = objc_getAssociatedObject(self, sel_authoringCameraType);

  return objc_msgSend_integerValue(AssociatedObject, v3, v4);
}

- (void)setAuthoringCameraType:(int64_t)type
{
  v4 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, type);

  objc_setAssociatedObject(self, sel_authoringCameraType, v4, 0x301);
}

- (unsigned)drawCallCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF2C0B94;
  v4[3] = &unk_1E7A7E710;
  v4[4] = &v5;
  objc_msgSend_enumerateHierarchyUsingBlock_(self, a2, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)enumerateDrawCallsUsingBlock:(id)block context:(id *)context
{
  v5 = objc_msgSend_world(self, a2, block);
  v8 = objc_msgSend_worldRef(v5, v6, v7);
  v10 = *(sub_1AF1D00B0(v8, v9) + 160);

  sub_1AF1475D0(v10, sub_1AF2C0C2C, context);
}

- (id)positionValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_position(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_position(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_position(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (void)setPositionValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v21 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v20 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);

  objc_msgSend_setPosition_(self, v18, v19, COERCE_DOUBLE(__PAIR64__(v20, v21)));
}

- (id)rotationValue
{
  v29[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_rotation(self, a2, v2);
  v29[0] = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v7 = MEMORY[0x1E696AD98];
  objc_msgSend_rotation(self, v8, v9);
  LODWORD(v10) = HIDWORD(v10);
  v29[1] = objc_msgSend_numberWithFloat_(v7, v11, v12, v10);
  v13 = MEMORY[0x1E696AD98];
  objc_msgSend_rotation(self, v14, v15);
  LODWORD(v17) = v16;
  v29[2] = objc_msgSend_numberWithFloat_(v13, v18, v19, v17);
  v20 = MEMORY[0x1E696AD98];
  objc_msgSend_rotation(self, v21, v22);
  LODWORD(v24) = v23;
  v29[3] = objc_msgSend_numberWithFloat_(v20, v25, v26, v24);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 4);
}

- (void)setRotationValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v25 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v24 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);
  v19 = objc_msgSend_objectAtIndexedSubscript_(value, v18, 3);
  objc_msgSend_floatValue(v19, v20, v21);

  objc_msgSend_setRotation_(self, v22, v23, COERCE_DOUBLE(__PAIR64__(v24, v25)));
}

- (id)orientationValue
{
  v29[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_orientation(self, a2, v2);
  v29[0] = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v7 = MEMORY[0x1E696AD98];
  objc_msgSend_orientation(self, v8, v9);
  LODWORD(v10) = HIDWORD(v10);
  v29[1] = objc_msgSend_numberWithFloat_(v7, v11, v12, v10);
  v13 = MEMORY[0x1E696AD98];
  objc_msgSend_orientation(self, v14, v15);
  LODWORD(v17) = v16;
  v29[2] = objc_msgSend_numberWithFloat_(v13, v18, v19, v17);
  v20 = MEMORY[0x1E696AD98];
  objc_msgSend_orientation(self, v21, v22);
  LODWORD(v24) = v23;
  v29[3] = objc_msgSend_numberWithFloat_(v20, v25, v26, v24);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 4);
}

- (void)setOrientationValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v25 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v24 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);
  v19 = objc_msgSend_objectAtIndexedSubscript_(value, v18, 3);
  objc_msgSend_floatValue(v19, v20, v21);

  objc_msgSend_setOrientation_(self, v22, v23, COERCE_DOUBLE(__PAIR64__(v24, v25)));
}

- (id)worldOrientationValue
{
  v29[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_worldOrientation(self, a2, v2);
  v29[0] = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v7 = MEMORY[0x1E696AD98];
  objc_msgSend_worldOrientation(self, v8, v9);
  LODWORD(v10) = HIDWORD(v10);
  v29[1] = objc_msgSend_numberWithFloat_(v7, v11, v12, v10);
  v13 = MEMORY[0x1E696AD98];
  objc_msgSend_worldOrientation(self, v14, v15);
  LODWORD(v17) = v16;
  v29[2] = objc_msgSend_numberWithFloat_(v13, v18, v19, v17);
  v20 = MEMORY[0x1E696AD98];
  objc_msgSend_worldOrientation(self, v21, v22);
  LODWORD(v24) = v23;
  v29[3] = objc_msgSend_numberWithFloat_(v20, v25, v26, v24);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 4);
}

- (void)setWorldOrientationValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v25 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v24 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);
  v19 = objc_msgSend_objectAtIndexedSubscript_(value, v18, 3);
  objc_msgSend_floatValue(v19, v20, v21);

  objc_msgSend_setWorldOrientation_(self, v22, v23, COERCE_DOUBLE(__PAIR64__(v24, v25)));
}

- (id)eulerAnglesValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_eulerAngles(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_eulerAngles(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_eulerAngles(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (void)setEulerAnglesValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v21 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v20 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);

  objc_msgSend_setEulerAngles_(self, v18, v19, COERCE_DOUBLE(__PAIR64__(v20, v21)));
}

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

- (id)worldPositionValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_worldPosition(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_worldPosition(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_worldPosition(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (void)setWorldPositionValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v21 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v20 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);

  objc_msgSend_setWorldPosition_(self, v18, v19, COERCE_DOUBLE(__PAIR64__(v20, v21)));
}

- (id)pivotValue
{
  v110[16] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, a2, v2);
  v110[0] = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v7 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v8, v9);
  LODWORD(v10) = HIDWORD(v10);
  v110[1] = objc_msgSend_numberWithFloat_(v7, v11, v12, v10);
  v13 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v14, v15);
  LODWORD(v17) = v16;
  v110[2] = objc_msgSend_numberWithFloat_(v13, v18, v19, v17);
  v20 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v21, v22);
  LODWORD(v24) = v23;
  v110[3] = objc_msgSend_numberWithFloat_(v20, v25, v26, v24);
  v27 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v28, v29);
  v110[4] = objc_msgSend_numberWithFloat_(v27, v30, v31, v32);
  v33 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v34, v35);
  LODWORD(v37) = v36;
  v110[5] = objc_msgSend_numberWithFloat_(v33, v38, v39, v37);
  v40 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v41, v42);
  LODWORD(v44) = v43;
  v110[6] = objc_msgSend_numberWithFloat_(v40, v45, v46, v44);
  v47 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v48, v49);
  LODWORD(v51) = v50;
  v110[7] = objc_msgSend_numberWithFloat_(v47, v52, v53, v51);
  v54 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v55, v56);
  v110[8] = objc_msgSend_numberWithFloat_(v54, v57, v58, v59);
  v60 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v61, v62);
  LODWORD(v64) = v63;
  v110[9] = objc_msgSend_numberWithFloat_(v60, v65, v66, v64);
  v67 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v68, v69);
  LODWORD(v71) = v70;
  v110[10] = objc_msgSend_numberWithFloat_(v67, v72, v73, v71);
  v74 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v75, v76);
  LODWORD(v78) = v77;
  v110[11] = objc_msgSend_numberWithFloat_(v74, v79, v80, v78);
  v81 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v82, v83);
  v110[12] = objc_msgSend_numberWithFloat_(v81, v84, v85, v86);
  v87 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v88, v89);
  LODWORD(v91) = v90;
  v110[13] = objc_msgSend_numberWithFloat_(v87, v92, v93, v91);
  v94 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v95, v96);
  LODWORD(v98) = v97;
  v110[14] = objc_msgSend_numberWithFloat_(v94, v99, v100, v98);
  v101 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v102, v103);
  LODWORD(v105) = v104;
  v110[15] = objc_msgSend_numberWithFloat_(v101, v106, v107, v105);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v108, v110, 16);
}

- (void)setPivotValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v87 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v84 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);
  v19 = objc_msgSend_objectAtIndexedSubscript_(value, v18, 3);
  objc_msgSend_floatValue(v19, v20, v21);
  v88 = COERCE_DOUBLE(__PAIR64__(v84, v87));
  v23 = objc_msgSend_objectAtIndexedSubscript_(value, v22, 4);
  objc_msgSend_floatValue(v23, v24, v25);
  v85 = v26;
  v28 = objc_msgSend_objectAtIndexedSubscript_(value, v27, 5);
  objc_msgSend_floatValue(v28, v29, v30);
  v81 = v31;
  v33 = objc_msgSend_objectAtIndexedSubscript_(value, v32, 6);
  objc_msgSend_floatValue(v33, v34, v35);
  v37 = objc_msgSend_objectAtIndexedSubscript_(value, v36, 7);
  objc_msgSend_floatValue(v37, v38, v39);
  v86 = COERCE_DOUBLE(__PAIR64__(v81, v85));
  v41 = objc_msgSend_objectAtIndexedSubscript_(value, v40, 8);
  objc_msgSend_floatValue(v41, v42, v43);
  v82 = v44;
  v46 = objc_msgSend_objectAtIndexedSubscript_(value, v45, 9);
  objc_msgSend_floatValue(v46, v47, v48);
  v79 = v49;
  v51 = objc_msgSend_objectAtIndexedSubscript_(value, v50, 10);
  objc_msgSend_floatValue(v51, v52, v53);
  v55 = objc_msgSend_objectAtIndexedSubscript_(value, v54, 11);
  objc_msgSend_floatValue(v55, v56, v57);
  v83 = COERCE_DOUBLE(__PAIR64__(v79, v82));
  v59 = objc_msgSend_objectAtIndexedSubscript_(value, v58, 12);
  objc_msgSend_floatValue(v59, v60, v61);
  v80 = v62;
  v64 = objc_msgSend_objectAtIndexedSubscript_(value, v63, 13);
  objc_msgSend_floatValue(v64, v65, v66);
  v78 = v67;
  v69 = objc_msgSend_objectAtIndexedSubscript_(value, v68, 14);
  objc_msgSend_floatValue(v69, v70, v71);
  v73 = objc_msgSend_objectAtIndexedSubscript_(value, v72, 15);
  objc_msgSend_floatValue(v73, v74, v75);

  objc_msgSend_setPivot_(self, v76, v77, v88, v86, v83, COERCE_DOUBLE(__PAIR64__(v78, v80)));
}

- (id)worldTransformValue
{
  v110[16] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, a2, v2);
  v110[0] = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v7 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v8, v9);
  LODWORD(v10) = HIDWORD(v10);
  v110[1] = objc_msgSend_numberWithFloat_(v7, v11, v12, v10);
  v13 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v14, v15);
  LODWORD(v17) = v16;
  v110[2] = objc_msgSend_numberWithFloat_(v13, v18, v19, v17);
  v20 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v21, v22);
  LODWORD(v24) = v23;
  v110[3] = objc_msgSend_numberWithFloat_(v20, v25, v26, v24);
  v27 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v28, v29);
  v110[4] = objc_msgSend_numberWithFloat_(v27, v30, v31, v32);
  v33 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v34, v35);
  LODWORD(v37) = v36;
  v110[5] = objc_msgSend_numberWithFloat_(v33, v38, v39, v37);
  v40 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v41, v42);
  LODWORD(v44) = v43;
  v110[6] = objc_msgSend_numberWithFloat_(v40, v45, v46, v44);
  v47 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v48, v49);
  LODWORD(v51) = v50;
  v110[7] = objc_msgSend_numberWithFloat_(v47, v52, v53, v51);
  v54 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v55, v56);
  v110[8] = objc_msgSend_numberWithFloat_(v54, v57, v58, v59);
  v60 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v61, v62);
  LODWORD(v64) = v63;
  v110[9] = objc_msgSend_numberWithFloat_(v60, v65, v66, v64);
  v67 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v68, v69);
  LODWORD(v71) = v70;
  v110[10] = objc_msgSend_numberWithFloat_(v67, v72, v73, v71);
  v74 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v75, v76);
  LODWORD(v78) = v77;
  v110[11] = objc_msgSend_numberWithFloat_(v74, v79, v80, v78);
  v81 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v82, v83);
  v110[12] = objc_msgSend_numberWithFloat_(v81, v84, v85, v86);
  v87 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v88, v89);
  LODWORD(v91) = v90;
  v110[13] = objc_msgSend_numberWithFloat_(v87, v92, v93, v91);
  v94 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v95, v96);
  LODWORD(v98) = v97;
  v110[14] = objc_msgSend_numberWithFloat_(v94, v99, v100, v98);
  v101 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v102, v103);
  LODWORD(v105) = v104;
  v110[15] = objc_msgSend_numberWithFloat_(v101, v106, v107, v105);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v108, v110, 16);
}

- (void)setWorldTransformValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v87 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v84 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);
  v19 = objc_msgSend_objectAtIndexedSubscript_(value, v18, 3);
  objc_msgSend_floatValue(v19, v20, v21);
  v88 = COERCE_DOUBLE(__PAIR64__(v84, v87));
  v23 = objc_msgSend_objectAtIndexedSubscript_(value, v22, 4);
  objc_msgSend_floatValue(v23, v24, v25);
  v85 = v26;
  v28 = objc_msgSend_objectAtIndexedSubscript_(value, v27, 5);
  objc_msgSend_floatValue(v28, v29, v30);
  v81 = v31;
  v33 = objc_msgSend_objectAtIndexedSubscript_(value, v32, 6);
  objc_msgSend_floatValue(v33, v34, v35);
  v37 = objc_msgSend_objectAtIndexedSubscript_(value, v36, 7);
  objc_msgSend_floatValue(v37, v38, v39);
  v86 = COERCE_DOUBLE(__PAIR64__(v81, v85));
  v41 = objc_msgSend_objectAtIndexedSubscript_(value, v40, 8);
  objc_msgSend_floatValue(v41, v42, v43);
  v82 = v44;
  v46 = objc_msgSend_objectAtIndexedSubscript_(value, v45, 9);
  objc_msgSend_floatValue(v46, v47, v48);
  v79 = v49;
  v51 = objc_msgSend_objectAtIndexedSubscript_(value, v50, 10);
  objc_msgSend_floatValue(v51, v52, v53);
  v55 = objc_msgSend_objectAtIndexedSubscript_(value, v54, 11);
  objc_msgSend_floatValue(v55, v56, v57);
  v83 = COERCE_DOUBLE(__PAIR64__(v79, v82));
  v59 = objc_msgSend_objectAtIndexedSubscript_(value, v58, 12);
  objc_msgSend_floatValue(v59, v60, v61);
  v80 = v62;
  v64 = objc_msgSend_objectAtIndexedSubscript_(value, v63, 13);
  objc_msgSend_floatValue(v64, v65, v66);
  v78 = v67;
  v69 = objc_msgSend_objectAtIndexedSubscript_(value, v68, 14);
  objc_msgSend_floatValue(v69, v70, v71);
  v73 = objc_msgSend_objectAtIndexedSubscript_(value, v72, 15);
  objc_msgSend_floatValue(v73, v74, v75);

  objc_msgSend_setWorldTransform_(self, v76, v77, v88, v86, v83, COERCE_DOUBLE(__PAIR64__(v78, v80)));
}

- (id)convertPositionValue:(id)value toNode:(id)node
{
  v71[3] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AD98];
  v8 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v8, v9, v10);
  v68 = v11;
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v12, 1);
  objc_msgSend_floatValue(v13, v14, v15);
  v65 = v16;
  v18 = objc_msgSend_objectAtIndexedSubscript_(value, v17, 2);
  objc_msgSend_floatValue(v18, v19, v20);
  objc_msgSend_convertPosition_toNode_(self, v21, node, COERCE_DOUBLE(__PAIR64__(v65, v68)));
  v71[0] = objc_msgSend_numberWithFloat_(v7, v22, v23);
  v24 = MEMORY[0x1E696AD98];
  v26 = objc_msgSend_objectAtIndexedSubscript_(value, v25, 0);
  objc_msgSend_floatValue(v26, v27, v28);
  v69 = v29;
  v31 = objc_msgSend_objectAtIndexedSubscript_(value, v30, 1);
  objc_msgSend_floatValue(v31, v32, v33);
  v66 = v34;
  v36 = objc_msgSend_objectAtIndexedSubscript_(value, v35, 2);
  objc_msgSend_floatValue(v36, v37, v38);
  objc_msgSend_convertPosition_toNode_(self, v39, node, COERCE_DOUBLE(__PAIR64__(v66, v69)));
  LODWORD(v40) = HIDWORD(v40);
  v71[1] = objc_msgSend_numberWithFloat_(v24, v41, v42, v40);
  v43 = MEMORY[0x1E696AD98];
  v45 = objc_msgSend_objectAtIndexedSubscript_(value, v44, 0);
  objc_msgSend_floatValue(v45, v46, v47);
  v70 = v48;
  v50 = objc_msgSend_objectAtIndexedSubscript_(value, v49, 1);
  objc_msgSend_floatValue(v50, v51, v52);
  v67 = v53;
  v55 = objc_msgSend_objectAtIndexedSubscript_(value, v54, 2);
  objc_msgSend_floatValue(v55, v56, v57);
  objc_msgSend_convertPosition_toNode_(self, v58, node, COERCE_DOUBLE(__PAIR64__(v67, v70)));
  LODWORD(v60) = v59;
  v71[2] = objc_msgSend_numberWithFloat_(v43, v61, v62, v60);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v63, v71, 3);
}

- (id)convertPositionValue:(id)value fromNode:(id)node
{
  v71[3] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AD98];
  v8 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v8, v9, v10);
  v68 = v11;
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v12, 1);
  objc_msgSend_floatValue(v13, v14, v15);
  v65 = v16;
  v18 = objc_msgSend_objectAtIndexedSubscript_(value, v17, 2);
  objc_msgSend_floatValue(v18, v19, v20);
  objc_msgSend_convertPosition_fromNode_(self, v21, node, COERCE_DOUBLE(__PAIR64__(v65, v68)));
  v71[0] = objc_msgSend_numberWithFloat_(v7, v22, v23);
  v24 = MEMORY[0x1E696AD98];
  v26 = objc_msgSend_objectAtIndexedSubscript_(value, v25, 0);
  objc_msgSend_floatValue(v26, v27, v28);
  v69 = v29;
  v31 = objc_msgSend_objectAtIndexedSubscript_(value, v30, 1);
  objc_msgSend_floatValue(v31, v32, v33);
  v66 = v34;
  v36 = objc_msgSend_objectAtIndexedSubscript_(value, v35, 2);
  objc_msgSend_floatValue(v36, v37, v38);
  objc_msgSend_convertPosition_fromNode_(self, v39, node, COERCE_DOUBLE(__PAIR64__(v66, v69)));
  LODWORD(v40) = HIDWORD(v40);
  v71[1] = objc_msgSend_numberWithFloat_(v24, v41, v42, v40);
  v43 = MEMORY[0x1E696AD98];
  v45 = objc_msgSend_objectAtIndexedSubscript_(value, v44, 0);
  objc_msgSend_floatValue(v45, v46, v47);
  v70 = v48;
  v50 = objc_msgSend_objectAtIndexedSubscript_(value, v49, 1);
  objc_msgSend_floatValue(v50, v51, v52);
  v67 = v53;
  v55 = objc_msgSend_objectAtIndexedSubscript_(value, v54, 2);
  objc_msgSend_floatValue(v55, v56, v57);
  objc_msgSend_convertPosition_fromNode_(self, v58, node, COERCE_DOUBLE(__PAIR64__(v67, v70)));
  LODWORD(v60) = v59;
  v71[2] = objc_msgSend_numberWithFloat_(v43, v61, v62, v60);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v63, v71, 3);
}

- (id)convertVectorValue:(id)value toNode:(id)node
{
  v71[3] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AD98];
  v8 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v8, v9, v10);
  v68 = v11;
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v12, 1);
  objc_msgSend_floatValue(v13, v14, v15);
  v65 = v16;
  v18 = objc_msgSend_objectAtIndexedSubscript_(value, v17, 2);
  objc_msgSend_floatValue(v18, v19, v20);
  objc_msgSend_convertVector_toNode_(self, v21, node, COERCE_DOUBLE(__PAIR64__(v65, v68)));
  v71[0] = objc_msgSend_numberWithFloat_(v7, v22, v23);
  v24 = MEMORY[0x1E696AD98];
  v26 = objc_msgSend_objectAtIndexedSubscript_(value, v25, 0);
  objc_msgSend_floatValue(v26, v27, v28);
  v69 = v29;
  v31 = objc_msgSend_objectAtIndexedSubscript_(value, v30, 1);
  objc_msgSend_floatValue(v31, v32, v33);
  v66 = v34;
  v36 = objc_msgSend_objectAtIndexedSubscript_(value, v35, 2);
  objc_msgSend_floatValue(v36, v37, v38);
  objc_msgSend_convertVector_toNode_(self, v39, node, COERCE_DOUBLE(__PAIR64__(v66, v69)));
  LODWORD(v40) = HIDWORD(v40);
  v71[1] = objc_msgSend_numberWithFloat_(v24, v41, v42, v40);
  v43 = MEMORY[0x1E696AD98];
  v45 = objc_msgSend_objectAtIndexedSubscript_(value, v44, 0);
  objc_msgSend_floatValue(v45, v46, v47);
  v70 = v48;
  v50 = objc_msgSend_objectAtIndexedSubscript_(value, v49, 1);
  objc_msgSend_floatValue(v50, v51, v52);
  v67 = v53;
  v55 = objc_msgSend_objectAtIndexedSubscript_(value, v54, 2);
  objc_msgSend_floatValue(v55, v56, v57);
  objc_msgSend_convertVector_toNode_(self, v58, node, COERCE_DOUBLE(__PAIR64__(v67, v70)));
  LODWORD(v60) = v59;
  v71[2] = objc_msgSend_numberWithFloat_(v43, v61, v62, v60);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v63, v71, 3);
}

- (id)convertVectorValue:(id)value fromNode:(id)node
{
  v71[3] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AD98];
  v8 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v8, v9, v10);
  v68 = v11;
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v12, 1);
  objc_msgSend_floatValue(v13, v14, v15);
  v65 = v16;
  v18 = objc_msgSend_objectAtIndexedSubscript_(value, v17, 2);
  objc_msgSend_floatValue(v18, v19, v20);
  objc_msgSend_convertVector_fromNode_(self, v21, node, COERCE_DOUBLE(__PAIR64__(v65, v68)));
  v71[0] = objc_msgSend_numberWithFloat_(v7, v22, v23);
  v24 = MEMORY[0x1E696AD98];
  v26 = objc_msgSend_objectAtIndexedSubscript_(value, v25, 0);
  objc_msgSend_floatValue(v26, v27, v28);
  v69 = v29;
  v31 = objc_msgSend_objectAtIndexedSubscript_(value, v30, 1);
  objc_msgSend_floatValue(v31, v32, v33);
  v66 = v34;
  v36 = objc_msgSend_objectAtIndexedSubscript_(value, v35, 2);
  objc_msgSend_floatValue(v36, v37, v38);
  objc_msgSend_convertVector_fromNode_(self, v39, node, COERCE_DOUBLE(__PAIR64__(v66, v69)));
  LODWORD(v40) = HIDWORD(v40);
  v71[1] = objc_msgSend_numberWithFloat_(v24, v41, v42, v40);
  v43 = MEMORY[0x1E696AD98];
  v45 = objc_msgSend_objectAtIndexedSubscript_(value, v44, 0);
  objc_msgSend_floatValue(v45, v46, v47);
  v70 = v48;
  v50 = objc_msgSend_objectAtIndexedSubscript_(value, v49, 1);
  objc_msgSend_floatValue(v50, v51, v52);
  v67 = v53;
  v55 = objc_msgSend_objectAtIndexedSubscript_(value, v54, 2);
  objc_msgSend_floatValue(v55, v56, v57);
  objc_msgSend_convertVector_fromNode_(self, v58, node, COERCE_DOUBLE(__PAIR64__(v67, v70)));
  LODWORD(v60) = v59;
  v71[2] = objc_msgSend_numberWithFloat_(v43, v61, v62, v60);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v63, v71, 3);
}

- (id)convertTransformValue:(id)value toNode:(id)node
{
  v1351[16] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AD98];
  v8 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v8, v9, v10);
  v1334 = v11;
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v12, 1);
  objc_msgSend_floatValue(v13, v14, v15);
  v1316 = v16;
  v18 = objc_msgSend_objectAtIndexedSubscript_(value, v17, 2);
  objc_msgSend_floatValue(v18, v19, v20);
  v22 = objc_msgSend_objectAtIndexedSubscript_(value, v21, 3);
  objc_msgSend_floatValue(v22, v23, v24);
  *&v1335 = __PAIR64__(v1316, v1334);
  v26 = objc_msgSend_objectAtIndexedSubscript_(value, v25, 4);
  objc_msgSend_floatValue(v26, v27, v28);
  v1317 = v29;
  v31 = objc_msgSend_objectAtIndexedSubscript_(value, v30, 5);
  objc_msgSend_floatValue(v31, v32, v33);
  v1298 = v34;
  v36 = objc_msgSend_objectAtIndexedSubscript_(value, v35, 6);
  objc_msgSend_floatValue(v36, v37, v38);
  v40 = objc_msgSend_objectAtIndexedSubscript_(value, v39, 7);
  objc_msgSend_floatValue(v40, v41, v42);
  *&v1318 = __PAIR64__(v1298, v1317);
  v44 = objc_msgSend_objectAtIndexedSubscript_(value, v43, 8);
  objc_msgSend_floatValue(v44, v45, v46);
  v1299 = v47;
  v49 = objc_msgSend_objectAtIndexedSubscript_(value, v48, 9);
  objc_msgSend_floatValue(v49, v50, v51);
  v1266 = v52;
  v54 = objc_msgSend_objectAtIndexedSubscript_(value, v53, 10);
  objc_msgSend_floatValue(v54, v55, v56);
  v58 = objc_msgSend_objectAtIndexedSubscript_(value, v57, 11);
  objc_msgSend_floatValue(v58, v59, v60);
  *&v1300 = __PAIR64__(v1266, v1299);
  v62 = objc_msgSend_objectAtIndexedSubscript_(value, v61, 12);
  objc_msgSend_floatValue(v62, v63, v64);
  v1267 = v65;
  v67 = objc_msgSend_objectAtIndexedSubscript_(value, v66, 13);
  objc_msgSend_floatValue(v67, v68, v69);
  v1250 = v70;
  v72 = objc_msgSend_objectAtIndexedSubscript_(value, v71, 14);
  objc_msgSend_floatValue(v72, v73, v74);
  v76 = objc_msgSend_objectAtIndexedSubscript_(value, v75, 15);
  objc_msgSend_floatValue(v76, v77, v78);
  objc_msgSend_convertTransform_toNode_(self, v79, node, v1335, v1318, v1300, COERCE_DOUBLE(__PAIR64__(v1250, v1267)));
  v1351[0] = objc_msgSend_numberWithFloat_(v7, v80, v81);
  v82 = MEMORY[0x1E696AD98];
  v84 = objc_msgSend_objectAtIndexedSubscript_(value, v83, 0);
  objc_msgSend_floatValue(v84, v85, v86);
  LODWORD(v1335) = v87;
  v89 = objc_msgSend_objectAtIndexedSubscript_(value, v88, 1);
  objc_msgSend_floatValue(v89, v90, v91);
  LODWORD(v1318) = v92;
  v94 = objc_msgSend_objectAtIndexedSubscript_(value, v93, 2);
  objc_msgSend_floatValue(v94, v95, v96);
  v98 = objc_msgSend_objectAtIndexedSubscript_(value, v97, 3);
  objc_msgSend_floatValue(v98, v99, v100);
  *&v1336 = __PAIR64__(LODWORD(v1318), LODWORD(v1335));
  v102 = objc_msgSend_objectAtIndexedSubscript_(value, v101, 4);
  objc_msgSend_floatValue(v102, v103, v104);
  LODWORD(v1318) = v105;
  v107 = objc_msgSend_objectAtIndexedSubscript_(value, v106, 5);
  objc_msgSend_floatValue(v107, v108, v109);
  LODWORD(v1300) = v110;
  v112 = objc_msgSend_objectAtIndexedSubscript_(value, v111, 6);
  objc_msgSend_floatValue(v112, v113, v114);
  v116 = objc_msgSend_objectAtIndexedSubscript_(value, v115, 7);
  objc_msgSend_floatValue(v116, v117, v118);
  *&v1319 = __PAIR64__(LODWORD(v1300), LODWORD(v1318));
  v120 = objc_msgSend_objectAtIndexedSubscript_(value, v119, 8);
  objc_msgSend_floatValue(v120, v121, v122);
  LODWORD(v1300) = v123;
  v125 = objc_msgSend_objectAtIndexedSubscript_(value, v124, 9);
  objc_msgSend_floatValue(v125, v126, v127);
  v1268 = v128;
  v130 = objc_msgSend_objectAtIndexedSubscript_(value, v129, 10);
  objc_msgSend_floatValue(v130, v131, v132);
  v134 = objc_msgSend_objectAtIndexedSubscript_(value, v133, 11);
  objc_msgSend_floatValue(v134, v135, v136);
  *&v1301 = __PAIR64__(v1268, LODWORD(v1300));
  v138 = objc_msgSend_objectAtIndexedSubscript_(value, v137, 12);
  objc_msgSend_floatValue(v138, v139, v140);
  v1269 = v141;
  v143 = objc_msgSend_objectAtIndexedSubscript_(value, v142, 13);
  objc_msgSend_floatValue(v143, v144, v145);
  v1251 = v146;
  v148 = objc_msgSend_objectAtIndexedSubscript_(value, v147, 14);
  objc_msgSend_floatValue(v148, v149, v150);
  v152 = objc_msgSend_objectAtIndexedSubscript_(value, v151, 15);
  objc_msgSend_floatValue(v152, v153, v154);
  objc_msgSend_convertTransform_toNode_(self, v155, node, v1336, v1319, v1301, COERCE_DOUBLE(__PAIR64__(v1251, v1269)));
  LODWORD(v156) = HIDWORD(v156);
  v1351[1] = objc_msgSend_numberWithFloat_(v82, v157, v158, v156);
  v159 = MEMORY[0x1E696AD98];
  v161 = objc_msgSend_objectAtIndexedSubscript_(value, v160, 0);
  objc_msgSend_floatValue(v161, v162, v163);
  LODWORD(v1336) = v164;
  v166 = objc_msgSend_objectAtIndexedSubscript_(value, v165, 1);
  objc_msgSend_floatValue(v166, v167, v168);
  LODWORD(v1319) = v169;
  v171 = objc_msgSend_objectAtIndexedSubscript_(value, v170, 2);
  objc_msgSend_floatValue(v171, v172, v173);
  v175 = objc_msgSend_objectAtIndexedSubscript_(value, v174, 3);
  objc_msgSend_floatValue(v175, v176, v177);
  *&v1337 = __PAIR64__(LODWORD(v1319), LODWORD(v1336));
  v179 = objc_msgSend_objectAtIndexedSubscript_(value, v178, 4);
  objc_msgSend_floatValue(v179, v180, v181);
  LODWORD(v1319) = v182;
  v184 = objc_msgSend_objectAtIndexedSubscript_(value, v183, 5);
  objc_msgSend_floatValue(v184, v185, v186);
  LODWORD(v1301) = v187;
  v189 = objc_msgSend_objectAtIndexedSubscript_(value, v188, 6);
  objc_msgSend_floatValue(v189, v190, v191);
  v193 = objc_msgSend_objectAtIndexedSubscript_(value, v192, 7);
  objc_msgSend_floatValue(v193, v194, v195);
  *&v1320 = __PAIR64__(LODWORD(v1301), LODWORD(v1319));
  v197 = objc_msgSend_objectAtIndexedSubscript_(value, v196, 8);
  objc_msgSend_floatValue(v197, v198, v199);
  LODWORD(v1301) = v200;
  v202 = objc_msgSend_objectAtIndexedSubscript_(value, v201, 9);
  objc_msgSend_floatValue(v202, v203, v204);
  v1270 = v205;
  v207 = objc_msgSend_objectAtIndexedSubscript_(value, v206, 10);
  objc_msgSend_floatValue(v207, v208, v209);
  v211 = objc_msgSend_objectAtIndexedSubscript_(value, v210, 11);
  objc_msgSend_floatValue(v211, v212, v213);
  *&v1302 = __PAIR64__(v1270, LODWORD(v1301));
  v215 = objc_msgSend_objectAtIndexedSubscript_(value, v214, 12);
  objc_msgSend_floatValue(v215, v216, v217);
  v1271 = v218;
  v220 = objc_msgSend_objectAtIndexedSubscript_(value, v219, 13);
  objc_msgSend_floatValue(v220, v221, v222);
  v1252 = v223;
  v225 = objc_msgSend_objectAtIndexedSubscript_(value, v224, 14);
  objc_msgSend_floatValue(v225, v226, v227);
  v229 = objc_msgSend_objectAtIndexedSubscript_(value, v228, 15);
  objc_msgSend_floatValue(v229, v230, v231);
  objc_msgSend_convertTransform_toNode_(self, v232, node, v1337, v1320, v1302, COERCE_DOUBLE(__PAIR64__(v1252, v1271)));
  LODWORD(v234) = v233;
  v1351[2] = objc_msgSend_numberWithFloat_(v159, v235, v236, v234);
  v237 = MEMORY[0x1E696AD98];
  v239 = objc_msgSend_objectAtIndexedSubscript_(value, v238, 0);
  objc_msgSend_floatValue(v239, v240, v241);
  LODWORD(v1337) = v242;
  v244 = objc_msgSend_objectAtIndexedSubscript_(value, v243, 1);
  objc_msgSend_floatValue(v244, v245, v246);
  LODWORD(v1320) = v247;
  v249 = objc_msgSend_objectAtIndexedSubscript_(value, v248, 2);
  objc_msgSend_floatValue(v249, v250, v251);
  v253 = objc_msgSend_objectAtIndexedSubscript_(value, v252, 3);
  objc_msgSend_floatValue(v253, v254, v255);
  *&v1338 = __PAIR64__(LODWORD(v1320), LODWORD(v1337));
  v257 = objc_msgSend_objectAtIndexedSubscript_(value, v256, 4);
  objc_msgSend_floatValue(v257, v258, v259);
  LODWORD(v1320) = v260;
  v262 = objc_msgSend_objectAtIndexedSubscript_(value, v261, 5);
  objc_msgSend_floatValue(v262, v263, v264);
  LODWORD(v1302) = v265;
  v267 = objc_msgSend_objectAtIndexedSubscript_(value, v266, 6);
  objc_msgSend_floatValue(v267, v268, v269);
  v271 = objc_msgSend_objectAtIndexedSubscript_(value, v270, 7);
  objc_msgSend_floatValue(v271, v272, v273);
  *&v1321 = __PAIR64__(LODWORD(v1302), LODWORD(v1320));
  v275 = objc_msgSend_objectAtIndexedSubscript_(value, v274, 8);
  objc_msgSend_floatValue(v275, v276, v277);
  LODWORD(v1302) = v278;
  v280 = objc_msgSend_objectAtIndexedSubscript_(value, v279, 9);
  objc_msgSend_floatValue(v280, v281, v282);
  v1272 = v283;
  v285 = objc_msgSend_objectAtIndexedSubscript_(value, v284, 10);
  objc_msgSend_floatValue(v285, v286, v287);
  v289 = objc_msgSend_objectAtIndexedSubscript_(value, v288, 11);
  objc_msgSend_floatValue(v289, v290, v291);
  *&v1303 = __PAIR64__(v1272, LODWORD(v1302));
  v293 = objc_msgSend_objectAtIndexedSubscript_(value, v292, 12);
  objc_msgSend_floatValue(v293, v294, v295);
  v1273 = v296;
  v298 = objc_msgSend_objectAtIndexedSubscript_(value, v297, 13);
  objc_msgSend_floatValue(v298, v299, v300);
  v1253 = v301;
  v303 = objc_msgSend_objectAtIndexedSubscript_(value, v302, 14);
  objc_msgSend_floatValue(v303, v304, v305);
  v307 = objc_msgSend_objectAtIndexedSubscript_(value, v306, 15);
  objc_msgSend_floatValue(v307, v308, v309);
  objc_msgSend_convertTransform_toNode_(self, v310, node, v1338, v1321, v1303, COERCE_DOUBLE(__PAIR64__(v1253, v1273)));
  LODWORD(v312) = v311;
  v1351[3] = objc_msgSend_numberWithFloat_(v237, v313, v314, v312);
  v315 = MEMORY[0x1E696AD98];
  v317 = objc_msgSend_objectAtIndexedSubscript_(value, v316, 0);
  objc_msgSend_floatValue(v317, v318, v319);
  LODWORD(v1338) = v320;
  v322 = objc_msgSend_objectAtIndexedSubscript_(value, v321, 1);
  objc_msgSend_floatValue(v322, v323, v324);
  LODWORD(v1321) = v325;
  v327 = objc_msgSend_objectAtIndexedSubscript_(value, v326, 2);
  objc_msgSend_floatValue(v327, v328, v329);
  v331 = objc_msgSend_objectAtIndexedSubscript_(value, v330, 3);
  objc_msgSend_floatValue(v331, v332, v333);
  *&v1339 = __PAIR64__(LODWORD(v1321), LODWORD(v1338));
  v335 = objc_msgSend_objectAtIndexedSubscript_(value, v334, 4);
  objc_msgSend_floatValue(v335, v336, v337);
  LODWORD(v1321) = v338;
  v340 = objc_msgSend_objectAtIndexedSubscript_(value, v339, 5);
  objc_msgSend_floatValue(v340, v341, v342);
  LODWORD(v1303) = v343;
  v345 = objc_msgSend_objectAtIndexedSubscript_(value, v344, 6);
  objc_msgSend_floatValue(v345, v346, v347);
  v349 = objc_msgSend_objectAtIndexedSubscript_(value, v348, 7);
  objc_msgSend_floatValue(v349, v350, v351);
  *&v1322 = __PAIR64__(LODWORD(v1303), LODWORD(v1321));
  v353 = objc_msgSend_objectAtIndexedSubscript_(value, v352, 8);
  objc_msgSend_floatValue(v353, v354, v355);
  LODWORD(v1303) = v356;
  v358 = objc_msgSend_objectAtIndexedSubscript_(value, v357, 9);
  objc_msgSend_floatValue(v358, v359, v360);
  v1274 = v361;
  v363 = objc_msgSend_objectAtIndexedSubscript_(value, v362, 10);
  objc_msgSend_floatValue(v363, v364, v365);
  v367 = objc_msgSend_objectAtIndexedSubscript_(value, v366, 11);
  objc_msgSend_floatValue(v367, v368, v369);
  *&v1304 = __PAIR64__(v1274, LODWORD(v1303));
  v371 = objc_msgSend_objectAtIndexedSubscript_(value, v370, 12);
  objc_msgSend_floatValue(v371, v372, v373);
  v1275 = v374;
  v376 = objc_msgSend_objectAtIndexedSubscript_(value, v375, 13);
  objc_msgSend_floatValue(v376, v377, v378);
  v1254 = v379;
  v381 = objc_msgSend_objectAtIndexedSubscript_(value, v380, 14);
  objc_msgSend_floatValue(v381, v382, v383);
  v385 = objc_msgSend_objectAtIndexedSubscript_(value, v384, 15);
  objc_msgSend_floatValue(v385, v386, v387);
  objc_msgSend_convertTransform_toNode_(self, v388, node, v1339, v1322, v1304, COERCE_DOUBLE(__PAIR64__(v1254, v1275)));
  v1351[4] = objc_msgSend_numberWithFloat_(v315, v389, v390, v391);
  v392 = MEMORY[0x1E696AD98];
  v394 = objc_msgSend_objectAtIndexedSubscript_(value, v393, 0);
  objc_msgSend_floatValue(v394, v395, v396);
  LODWORD(v1339) = v397;
  v399 = objc_msgSend_objectAtIndexedSubscript_(value, v398, 1);
  objc_msgSend_floatValue(v399, v400, v401);
  LODWORD(v1322) = v402;
  v404 = objc_msgSend_objectAtIndexedSubscript_(value, v403, 2);
  objc_msgSend_floatValue(v404, v405, v406);
  v408 = objc_msgSend_objectAtIndexedSubscript_(value, v407, 3);
  objc_msgSend_floatValue(v408, v409, v410);
  *&v1340 = __PAIR64__(LODWORD(v1322), LODWORD(v1339));
  v412 = objc_msgSend_objectAtIndexedSubscript_(value, v411, 4);
  objc_msgSend_floatValue(v412, v413, v414);
  LODWORD(v1322) = v415;
  v417 = objc_msgSend_objectAtIndexedSubscript_(value, v416, 5);
  objc_msgSend_floatValue(v417, v418, v419);
  LODWORD(v1304) = v420;
  v422 = objc_msgSend_objectAtIndexedSubscript_(value, v421, 6);
  objc_msgSend_floatValue(v422, v423, v424);
  v426 = objc_msgSend_objectAtIndexedSubscript_(value, v425, 7);
  objc_msgSend_floatValue(v426, v427, v428);
  *&v1323 = __PAIR64__(LODWORD(v1304), LODWORD(v1322));
  v430 = objc_msgSend_objectAtIndexedSubscript_(value, v429, 8);
  objc_msgSend_floatValue(v430, v431, v432);
  LODWORD(v1304) = v433;
  v435 = objc_msgSend_objectAtIndexedSubscript_(value, v434, 9);
  objc_msgSend_floatValue(v435, v436, v437);
  v1276 = v438;
  v440 = objc_msgSend_objectAtIndexedSubscript_(value, v439, 10);
  objc_msgSend_floatValue(v440, v441, v442);
  v444 = objc_msgSend_objectAtIndexedSubscript_(value, v443, 11);
  objc_msgSend_floatValue(v444, v445, v446);
  *&v1305 = __PAIR64__(v1276, LODWORD(v1304));
  v448 = objc_msgSend_objectAtIndexedSubscript_(value, v447, 12);
  objc_msgSend_floatValue(v448, v449, v450);
  v1277 = v451;
  v453 = objc_msgSend_objectAtIndexedSubscript_(value, v452, 13);
  objc_msgSend_floatValue(v453, v454, v455);
  v1255 = v456;
  v458 = objc_msgSend_objectAtIndexedSubscript_(value, v457, 14);
  objc_msgSend_floatValue(v458, v459, v460);
  v462 = objc_msgSend_objectAtIndexedSubscript_(value, v461, 15);
  objc_msgSend_floatValue(v462, v463, v464);
  objc_msgSend_convertTransform_toNode_(self, v465, node, v1340, v1323, v1305, COERCE_DOUBLE(__PAIR64__(v1255, v1277)));
  LODWORD(v467) = v466;
  v1351[5] = objc_msgSend_numberWithFloat_(v392, v468, v469, v467);
  v470 = MEMORY[0x1E696AD98];
  v472 = objc_msgSend_objectAtIndexedSubscript_(value, v471, 0);
  objc_msgSend_floatValue(v472, v473, v474);
  LODWORD(v1340) = v475;
  v477 = objc_msgSend_objectAtIndexedSubscript_(value, v476, 1);
  objc_msgSend_floatValue(v477, v478, v479);
  LODWORD(v1323) = v480;
  v482 = objc_msgSend_objectAtIndexedSubscript_(value, v481, 2);
  objc_msgSend_floatValue(v482, v483, v484);
  v486 = objc_msgSend_objectAtIndexedSubscript_(value, v485, 3);
  objc_msgSend_floatValue(v486, v487, v488);
  *&v1341 = __PAIR64__(LODWORD(v1323), LODWORD(v1340));
  v490 = objc_msgSend_objectAtIndexedSubscript_(value, v489, 4);
  objc_msgSend_floatValue(v490, v491, v492);
  LODWORD(v1323) = v493;
  v495 = objc_msgSend_objectAtIndexedSubscript_(value, v494, 5);
  objc_msgSend_floatValue(v495, v496, v497);
  LODWORD(v1305) = v498;
  v500 = objc_msgSend_objectAtIndexedSubscript_(value, v499, 6);
  objc_msgSend_floatValue(v500, v501, v502);
  v504 = objc_msgSend_objectAtIndexedSubscript_(value, v503, 7);
  objc_msgSend_floatValue(v504, v505, v506);
  *&v1324 = __PAIR64__(LODWORD(v1305), LODWORD(v1323));
  v508 = objc_msgSend_objectAtIndexedSubscript_(value, v507, 8);
  objc_msgSend_floatValue(v508, v509, v510);
  LODWORD(v1305) = v511;
  v513 = objc_msgSend_objectAtIndexedSubscript_(value, v512, 9);
  objc_msgSend_floatValue(v513, v514, v515);
  v1278 = v516;
  v518 = objc_msgSend_objectAtIndexedSubscript_(value, v517, 10);
  objc_msgSend_floatValue(v518, v519, v520);
  v522 = objc_msgSend_objectAtIndexedSubscript_(value, v521, 11);
  objc_msgSend_floatValue(v522, v523, v524);
  *&v1306 = __PAIR64__(v1278, LODWORD(v1305));
  v526 = objc_msgSend_objectAtIndexedSubscript_(value, v525, 12);
  objc_msgSend_floatValue(v526, v527, v528);
  v1279 = v529;
  v531 = objc_msgSend_objectAtIndexedSubscript_(value, v530, 13);
  objc_msgSend_floatValue(v531, v532, v533);
  v1256 = v534;
  v536 = objc_msgSend_objectAtIndexedSubscript_(value, v535, 14);
  objc_msgSend_floatValue(v536, v537, v538);
  v540 = objc_msgSend_objectAtIndexedSubscript_(value, v539, 15);
  objc_msgSend_floatValue(v540, v541, v542);
  objc_msgSend_convertTransform_toNode_(self, v543, node, v1341, v1324, v1306, COERCE_DOUBLE(__PAIR64__(v1256, v1279)));
  LODWORD(v545) = v544;
  v1351[6] = objc_msgSend_numberWithFloat_(v470, v546, v547, v545);
  v548 = MEMORY[0x1E696AD98];
  v550 = objc_msgSend_objectAtIndexedSubscript_(value, v549, 0);
  objc_msgSend_floatValue(v550, v551, v552);
  LODWORD(v1341) = v553;
  v555 = objc_msgSend_objectAtIndexedSubscript_(value, v554, 1);
  objc_msgSend_floatValue(v555, v556, v557);
  LODWORD(v1324) = v558;
  v560 = objc_msgSend_objectAtIndexedSubscript_(value, v559, 2);
  objc_msgSend_floatValue(v560, v561, v562);
  v564 = objc_msgSend_objectAtIndexedSubscript_(value, v563, 3);
  objc_msgSend_floatValue(v564, v565, v566);
  *&v1342 = __PAIR64__(LODWORD(v1324), LODWORD(v1341));
  v568 = objc_msgSend_objectAtIndexedSubscript_(value, v567, 4);
  objc_msgSend_floatValue(v568, v569, v570);
  LODWORD(v1324) = v571;
  v573 = objc_msgSend_objectAtIndexedSubscript_(value, v572, 5);
  objc_msgSend_floatValue(v573, v574, v575);
  LODWORD(v1306) = v576;
  v578 = objc_msgSend_objectAtIndexedSubscript_(value, v577, 6);
  objc_msgSend_floatValue(v578, v579, v580);
  v582 = objc_msgSend_objectAtIndexedSubscript_(value, v581, 7);
  objc_msgSend_floatValue(v582, v583, v584);
  *&v1325 = __PAIR64__(LODWORD(v1306), LODWORD(v1324));
  v586 = objc_msgSend_objectAtIndexedSubscript_(value, v585, 8);
  objc_msgSend_floatValue(v586, v587, v588);
  LODWORD(v1306) = v589;
  v591 = objc_msgSend_objectAtIndexedSubscript_(value, v590, 9);
  objc_msgSend_floatValue(v591, v592, v593);
  v1280 = v594;
  v596 = objc_msgSend_objectAtIndexedSubscript_(value, v595, 10);
  objc_msgSend_floatValue(v596, v597, v598);
  v600 = objc_msgSend_objectAtIndexedSubscript_(value, v599, 11);
  objc_msgSend_floatValue(v600, v601, v602);
  *&v1307 = __PAIR64__(v1280, LODWORD(v1306));
  v604 = objc_msgSend_objectAtIndexedSubscript_(value, v603, 12);
  objc_msgSend_floatValue(v604, v605, v606);
  v1281 = v607;
  v609 = objc_msgSend_objectAtIndexedSubscript_(value, v608, 13);
  objc_msgSend_floatValue(v609, v610, v611);
  v1257 = v612;
  v614 = objc_msgSend_objectAtIndexedSubscript_(value, v613, 14);
  objc_msgSend_floatValue(v614, v615, v616);
  v618 = objc_msgSend_objectAtIndexedSubscript_(value, v617, 15);
  objc_msgSend_floatValue(v618, v619, v620);
  objc_msgSend_convertTransform_toNode_(self, v621, node, v1342, v1325, v1307, COERCE_DOUBLE(__PAIR64__(v1257, v1281)));
  LODWORD(v623) = v622;
  v1351[7] = objc_msgSend_numberWithFloat_(v548, v624, v625, v623);
  v626 = MEMORY[0x1E696AD98];
  v628 = objc_msgSend_objectAtIndexedSubscript_(value, v627, 0);
  objc_msgSend_floatValue(v628, v629, v630);
  LODWORD(v1342) = v631;
  v633 = objc_msgSend_objectAtIndexedSubscript_(value, v632, 1);
  objc_msgSend_floatValue(v633, v634, v635);
  LODWORD(v1325) = v636;
  v638 = objc_msgSend_objectAtIndexedSubscript_(value, v637, 2);
  objc_msgSend_floatValue(v638, v639, v640);
  v642 = objc_msgSend_objectAtIndexedSubscript_(value, v641, 3);
  objc_msgSend_floatValue(v642, v643, v644);
  *&v1343 = __PAIR64__(LODWORD(v1325), LODWORD(v1342));
  v646 = objc_msgSend_objectAtIndexedSubscript_(value, v645, 4);
  objc_msgSend_floatValue(v646, v647, v648);
  LODWORD(v1325) = v649;
  v651 = objc_msgSend_objectAtIndexedSubscript_(value, v650, 5);
  objc_msgSend_floatValue(v651, v652, v653);
  LODWORD(v1307) = v654;
  v656 = objc_msgSend_objectAtIndexedSubscript_(value, v655, 6);
  objc_msgSend_floatValue(v656, v657, v658);
  v660 = objc_msgSend_objectAtIndexedSubscript_(value, v659, 7);
  objc_msgSend_floatValue(v660, v661, v662);
  *&v1326 = __PAIR64__(LODWORD(v1307), LODWORD(v1325));
  v664 = objc_msgSend_objectAtIndexedSubscript_(value, v663, 8);
  objc_msgSend_floatValue(v664, v665, v666);
  LODWORD(v1307) = v667;
  v669 = objc_msgSend_objectAtIndexedSubscript_(value, v668, 9);
  objc_msgSend_floatValue(v669, v670, v671);
  v1282 = v672;
  v674 = objc_msgSend_objectAtIndexedSubscript_(value, v673, 10);
  objc_msgSend_floatValue(v674, v675, v676);
  v678 = objc_msgSend_objectAtIndexedSubscript_(value, v677, 11);
  objc_msgSend_floatValue(v678, v679, v680);
  *&v1308 = __PAIR64__(v1282, LODWORD(v1307));
  v682 = objc_msgSend_objectAtIndexedSubscript_(value, v681, 12);
  objc_msgSend_floatValue(v682, v683, v684);
  v1283 = v685;
  v687 = objc_msgSend_objectAtIndexedSubscript_(value, v686, 13);
  objc_msgSend_floatValue(v687, v688, v689);
  v1258 = v690;
  v692 = objc_msgSend_objectAtIndexedSubscript_(value, v691, 14);
  objc_msgSend_floatValue(v692, v693, v694);
  v696 = objc_msgSend_objectAtIndexedSubscript_(value, v695, 15);
  objc_msgSend_floatValue(v696, v697, v698);
  objc_msgSend_convertTransform_toNode_(self, v699, node, v1343, v1326, v1308, COERCE_DOUBLE(__PAIR64__(v1258, v1283)));
  v1351[8] = objc_msgSend_numberWithFloat_(v626, v700, v701, v702);
  v703 = MEMORY[0x1E696AD98];
  v705 = objc_msgSend_objectAtIndexedSubscript_(value, v704, 0);
  objc_msgSend_floatValue(v705, v706, v707);
  LODWORD(v1343) = v708;
  v710 = objc_msgSend_objectAtIndexedSubscript_(value, v709, 1);
  objc_msgSend_floatValue(v710, v711, v712);
  LODWORD(v1326) = v713;
  v715 = objc_msgSend_objectAtIndexedSubscript_(value, v714, 2);
  objc_msgSend_floatValue(v715, v716, v717);
  v719 = objc_msgSend_objectAtIndexedSubscript_(value, v718, 3);
  objc_msgSend_floatValue(v719, v720, v721);
  *&v1344 = __PAIR64__(LODWORD(v1326), LODWORD(v1343));
  v723 = objc_msgSend_objectAtIndexedSubscript_(value, v722, 4);
  objc_msgSend_floatValue(v723, v724, v725);
  LODWORD(v1326) = v726;
  v728 = objc_msgSend_objectAtIndexedSubscript_(value, v727, 5);
  objc_msgSend_floatValue(v728, v729, v730);
  LODWORD(v1308) = v731;
  v733 = objc_msgSend_objectAtIndexedSubscript_(value, v732, 6);
  objc_msgSend_floatValue(v733, v734, v735);
  v737 = objc_msgSend_objectAtIndexedSubscript_(value, v736, 7);
  objc_msgSend_floatValue(v737, v738, v739);
  *&v1327 = __PAIR64__(LODWORD(v1308), LODWORD(v1326));
  v741 = objc_msgSend_objectAtIndexedSubscript_(value, v740, 8);
  objc_msgSend_floatValue(v741, v742, v743);
  LODWORD(v1308) = v744;
  v746 = objc_msgSend_objectAtIndexedSubscript_(value, v745, 9);
  objc_msgSend_floatValue(v746, v747, v748);
  v1284 = v749;
  v751 = objc_msgSend_objectAtIndexedSubscript_(value, v750, 10);
  objc_msgSend_floatValue(v751, v752, v753);
  v755 = objc_msgSend_objectAtIndexedSubscript_(value, v754, 11);
  objc_msgSend_floatValue(v755, v756, v757);
  *&v1309 = __PAIR64__(v1284, LODWORD(v1308));
  v759 = objc_msgSend_objectAtIndexedSubscript_(value, v758, 12);
  objc_msgSend_floatValue(v759, v760, v761);
  v1285 = v762;
  v764 = objc_msgSend_objectAtIndexedSubscript_(value, v763, 13);
  objc_msgSend_floatValue(v764, v765, v766);
  v1259 = v767;
  v769 = objc_msgSend_objectAtIndexedSubscript_(value, v768, 14);
  objc_msgSend_floatValue(v769, v770, v771);
  v773 = objc_msgSend_objectAtIndexedSubscript_(value, v772, 15);
  objc_msgSend_floatValue(v773, v774, v775);
  objc_msgSend_convertTransform_toNode_(self, v776, node, v1344, v1327, v1309, COERCE_DOUBLE(__PAIR64__(v1259, v1285)));
  LODWORD(v778) = v777;
  v1351[9] = objc_msgSend_numberWithFloat_(v703, v779, v780, v778);
  v781 = MEMORY[0x1E696AD98];
  v783 = objc_msgSend_objectAtIndexedSubscript_(value, v782, 0);
  objc_msgSend_floatValue(v783, v784, v785);
  LODWORD(v1344) = v786;
  v788 = objc_msgSend_objectAtIndexedSubscript_(value, v787, 1);
  objc_msgSend_floatValue(v788, v789, v790);
  LODWORD(v1327) = v791;
  v793 = objc_msgSend_objectAtIndexedSubscript_(value, v792, 2);
  objc_msgSend_floatValue(v793, v794, v795);
  v797 = objc_msgSend_objectAtIndexedSubscript_(value, v796, 3);
  objc_msgSend_floatValue(v797, v798, v799);
  *&v1345 = __PAIR64__(LODWORD(v1327), LODWORD(v1344));
  v801 = objc_msgSend_objectAtIndexedSubscript_(value, v800, 4);
  objc_msgSend_floatValue(v801, v802, v803);
  LODWORD(v1327) = v804;
  v806 = objc_msgSend_objectAtIndexedSubscript_(value, v805, 5);
  objc_msgSend_floatValue(v806, v807, v808);
  LODWORD(v1309) = v809;
  v811 = objc_msgSend_objectAtIndexedSubscript_(value, v810, 6);
  objc_msgSend_floatValue(v811, v812, v813);
  v815 = objc_msgSend_objectAtIndexedSubscript_(value, v814, 7);
  objc_msgSend_floatValue(v815, v816, v817);
  *&v1328 = __PAIR64__(LODWORD(v1309), LODWORD(v1327));
  v819 = objc_msgSend_objectAtIndexedSubscript_(value, v818, 8);
  objc_msgSend_floatValue(v819, v820, v821);
  LODWORD(v1309) = v822;
  v824 = objc_msgSend_objectAtIndexedSubscript_(value, v823, 9);
  objc_msgSend_floatValue(v824, v825, v826);
  v1286 = v827;
  v829 = objc_msgSend_objectAtIndexedSubscript_(value, v828, 10);
  objc_msgSend_floatValue(v829, v830, v831);
  v833 = objc_msgSend_objectAtIndexedSubscript_(value, v832, 11);
  objc_msgSend_floatValue(v833, v834, v835);
  *&v1310 = __PAIR64__(v1286, LODWORD(v1309));
  v837 = objc_msgSend_objectAtIndexedSubscript_(value, v836, 12);
  objc_msgSend_floatValue(v837, v838, v839);
  v1287 = v840;
  v842 = objc_msgSend_objectAtIndexedSubscript_(value, v841, 13);
  objc_msgSend_floatValue(v842, v843, v844);
  v1260 = v845;
  v847 = objc_msgSend_objectAtIndexedSubscript_(value, v846, 14);
  objc_msgSend_floatValue(v847, v848, v849);
  v851 = objc_msgSend_objectAtIndexedSubscript_(value, v850, 15);
  objc_msgSend_floatValue(v851, v852, v853);
  objc_msgSend_convertTransform_toNode_(self, v854, node, v1345, v1328, v1310, COERCE_DOUBLE(__PAIR64__(v1260, v1287)));
  LODWORD(v856) = v855;
  v1351[10] = objc_msgSend_numberWithFloat_(v781, v857, v858, v856);
  v859 = MEMORY[0x1E696AD98];
  v861 = objc_msgSend_objectAtIndexedSubscript_(value, v860, 0);
  objc_msgSend_floatValue(v861, v862, v863);
  LODWORD(v1345) = v864;
  v866 = objc_msgSend_objectAtIndexedSubscript_(value, v865, 1);
  objc_msgSend_floatValue(v866, v867, v868);
  LODWORD(v1328) = v869;
  v871 = objc_msgSend_objectAtIndexedSubscript_(value, v870, 2);
  objc_msgSend_floatValue(v871, v872, v873);
  v875 = objc_msgSend_objectAtIndexedSubscript_(value, v874, 3);
  objc_msgSend_floatValue(v875, v876, v877);
  *&v1346 = __PAIR64__(LODWORD(v1328), LODWORD(v1345));
  v879 = objc_msgSend_objectAtIndexedSubscript_(value, v878, 4);
  objc_msgSend_floatValue(v879, v880, v881);
  LODWORD(v1328) = v882;
  v884 = objc_msgSend_objectAtIndexedSubscript_(value, v883, 5);
  objc_msgSend_floatValue(v884, v885, v886);
  LODWORD(v1310) = v887;
  v889 = objc_msgSend_objectAtIndexedSubscript_(value, v888, 6);
  objc_msgSend_floatValue(v889, v890, v891);
  v893 = objc_msgSend_objectAtIndexedSubscript_(value, v892, 7);
  objc_msgSend_floatValue(v893, v894, v895);
  *&v1329 = __PAIR64__(LODWORD(v1310), LODWORD(v1328));
  v897 = objc_msgSend_objectAtIndexedSubscript_(value, v896, 8);
  objc_msgSend_floatValue(v897, v898, v899);
  LODWORD(v1310) = v900;
  v902 = objc_msgSend_objectAtIndexedSubscript_(value, v901, 9);
  objc_msgSend_floatValue(v902, v903, v904);
  v1288 = v905;
  v907 = objc_msgSend_objectAtIndexedSubscript_(value, v906, 10);
  objc_msgSend_floatValue(v907, v908, v909);
  v911 = objc_msgSend_objectAtIndexedSubscript_(value, v910, 11);
  objc_msgSend_floatValue(v911, v912, v913);
  *&v1311 = __PAIR64__(v1288, LODWORD(v1310));
  v915 = objc_msgSend_objectAtIndexedSubscript_(value, v914, 12);
  objc_msgSend_floatValue(v915, v916, v917);
  v1289 = v918;
  v920 = objc_msgSend_objectAtIndexedSubscript_(value, v919, 13);
  objc_msgSend_floatValue(v920, v921, v922);
  v1261 = v923;
  v925 = objc_msgSend_objectAtIndexedSubscript_(value, v924, 14);
  objc_msgSend_floatValue(v925, v926, v927);
  v929 = objc_msgSend_objectAtIndexedSubscript_(value, v928, 15);
  objc_msgSend_floatValue(v929, v930, v931);
  objc_msgSend_convertTransform_toNode_(self, v932, node, v1346, v1329, v1311, COERCE_DOUBLE(__PAIR64__(v1261, v1289)));
  LODWORD(v934) = v933;
  v1351[11] = objc_msgSend_numberWithFloat_(v859, v935, v936, v934);
  v937 = MEMORY[0x1E696AD98];
  v939 = objc_msgSend_objectAtIndexedSubscript_(value, v938, 0);
  objc_msgSend_floatValue(v939, v940, v941);
  LODWORD(v1346) = v942;
  v944 = objc_msgSend_objectAtIndexedSubscript_(value, v943, 1);
  objc_msgSend_floatValue(v944, v945, v946);
  LODWORD(v1329) = v947;
  v949 = objc_msgSend_objectAtIndexedSubscript_(value, v948, 2);
  objc_msgSend_floatValue(v949, v950, v951);
  v953 = objc_msgSend_objectAtIndexedSubscript_(value, v952, 3);
  objc_msgSend_floatValue(v953, v954, v955);
  *&v1347 = __PAIR64__(LODWORD(v1329), LODWORD(v1346));
  v957 = objc_msgSend_objectAtIndexedSubscript_(value, v956, 4);
  objc_msgSend_floatValue(v957, v958, v959);
  LODWORD(v1329) = v960;
  v962 = objc_msgSend_objectAtIndexedSubscript_(value, v961, 5);
  objc_msgSend_floatValue(v962, v963, v964);
  LODWORD(v1311) = v965;
  v967 = objc_msgSend_objectAtIndexedSubscript_(value, v966, 6);
  objc_msgSend_floatValue(v967, v968, v969);
  v971 = objc_msgSend_objectAtIndexedSubscript_(value, v970, 7);
  objc_msgSend_floatValue(v971, v972, v973);
  *&v1330 = __PAIR64__(LODWORD(v1311), LODWORD(v1329));
  v975 = objc_msgSend_objectAtIndexedSubscript_(value, v974, 8);
  objc_msgSend_floatValue(v975, v976, v977);
  LODWORD(v1311) = v978;
  v980 = objc_msgSend_objectAtIndexedSubscript_(value, v979, 9);
  objc_msgSend_floatValue(v980, v981, v982);
  v1290 = v983;
  v985 = objc_msgSend_objectAtIndexedSubscript_(value, v984, 10);
  objc_msgSend_floatValue(v985, v986, v987);
  v989 = objc_msgSend_objectAtIndexedSubscript_(value, v988, 11);
  objc_msgSend_floatValue(v989, v990, v991);
  *&v1312 = __PAIR64__(v1290, LODWORD(v1311));
  v993 = objc_msgSend_objectAtIndexedSubscript_(value, v992, 12);
  objc_msgSend_floatValue(v993, v994, v995);
  v1291 = v996;
  v998 = objc_msgSend_objectAtIndexedSubscript_(value, v997, 13);
  objc_msgSend_floatValue(v998, v999, v1000);
  v1262 = v1001;
  v1003 = objc_msgSend_objectAtIndexedSubscript_(value, v1002, 14);
  objc_msgSend_floatValue(v1003, v1004, v1005);
  v1007 = objc_msgSend_objectAtIndexedSubscript_(value, v1006, 15);
  objc_msgSend_floatValue(v1007, v1008, v1009);
  objc_msgSend_convertTransform_toNode_(self, v1010, node, v1347, v1330, v1312, COERCE_DOUBLE(__PAIR64__(v1262, v1291)));
  v1351[12] = objc_msgSend_numberWithFloat_(v937, v1011, v1012, v1013);
  v1014 = MEMORY[0x1E696AD98];
  v1016 = objc_msgSend_objectAtIndexedSubscript_(value, v1015, 0);
  objc_msgSend_floatValue(v1016, v1017, v1018);
  LODWORD(v1347) = v1019;
  v1021 = objc_msgSend_objectAtIndexedSubscript_(value, v1020, 1);
  objc_msgSend_floatValue(v1021, v1022, v1023);
  LODWORD(v1330) = v1024;
  v1026 = objc_msgSend_objectAtIndexedSubscript_(value, v1025, 2);
  objc_msgSend_floatValue(v1026, v1027, v1028);
  v1030 = objc_msgSend_objectAtIndexedSubscript_(value, v1029, 3);
  objc_msgSend_floatValue(v1030, v1031, v1032);
  *&v1348 = __PAIR64__(LODWORD(v1330), LODWORD(v1347));
  v1034 = objc_msgSend_objectAtIndexedSubscript_(value, v1033, 4);
  objc_msgSend_floatValue(v1034, v1035, v1036);
  LODWORD(v1330) = v1037;
  v1039 = objc_msgSend_objectAtIndexedSubscript_(value, v1038, 5);
  objc_msgSend_floatValue(v1039, v1040, v1041);
  LODWORD(v1312) = v1042;
  v1044 = objc_msgSend_objectAtIndexedSubscript_(value, v1043, 6);
  objc_msgSend_floatValue(v1044, v1045, v1046);
  v1048 = objc_msgSend_objectAtIndexedSubscript_(value, v1047, 7);
  objc_msgSend_floatValue(v1048, v1049, v1050);
  *&v1331 = __PAIR64__(LODWORD(v1312), LODWORD(v1330));
  v1052 = objc_msgSend_objectAtIndexedSubscript_(value, v1051, 8);
  objc_msgSend_floatValue(v1052, v1053, v1054);
  LODWORD(v1312) = v1055;
  v1057 = objc_msgSend_objectAtIndexedSubscript_(value, v1056, 9);
  objc_msgSend_floatValue(v1057, v1058, v1059);
  v1292 = v1060;
  v1062 = objc_msgSend_objectAtIndexedSubscript_(value, v1061, 10);
  objc_msgSend_floatValue(v1062, v1063, v1064);
  v1066 = objc_msgSend_objectAtIndexedSubscript_(value, v1065, 11);
  objc_msgSend_floatValue(v1066, v1067, v1068);
  *&v1313 = __PAIR64__(v1292, LODWORD(v1312));
  v1070 = objc_msgSend_objectAtIndexedSubscript_(value, v1069, 12);
  objc_msgSend_floatValue(v1070, v1071, v1072);
  v1293 = v1073;
  v1075 = objc_msgSend_objectAtIndexedSubscript_(value, v1074, 13);
  objc_msgSend_floatValue(v1075, v1076, v1077);
  v1263 = v1078;
  v1080 = objc_msgSend_objectAtIndexedSubscript_(value, v1079, 14);
  objc_msgSend_floatValue(v1080, v1081, v1082);
  v1084 = objc_msgSend_objectAtIndexedSubscript_(value, v1083, 15);
  objc_msgSend_floatValue(v1084, v1085, v1086);
  objc_msgSend_convertTransform_toNode_(self, v1087, node, v1348, v1331, v1313, COERCE_DOUBLE(__PAIR64__(v1263, v1293)));
  LODWORD(v1089) = v1088;
  v1351[13] = objc_msgSend_numberWithFloat_(v1014, v1090, v1091, v1089);
  v1092 = MEMORY[0x1E696AD98];
  v1094 = objc_msgSend_objectAtIndexedSubscript_(value, v1093, 0);
  objc_msgSend_floatValue(v1094, v1095, v1096);
  LODWORD(v1348) = v1097;
  v1099 = objc_msgSend_objectAtIndexedSubscript_(value, v1098, 1);
  objc_msgSend_floatValue(v1099, v1100, v1101);
  LODWORD(v1331) = v1102;
  v1104 = objc_msgSend_objectAtIndexedSubscript_(value, v1103, 2);
  objc_msgSend_floatValue(v1104, v1105, v1106);
  v1108 = objc_msgSend_objectAtIndexedSubscript_(value, v1107, 3);
  objc_msgSend_floatValue(v1108, v1109, v1110);
  *&v1349 = __PAIR64__(LODWORD(v1331), LODWORD(v1348));
  v1112 = objc_msgSend_objectAtIndexedSubscript_(value, v1111, 4);
  objc_msgSend_floatValue(v1112, v1113, v1114);
  LODWORD(v1331) = v1115;
  v1117 = objc_msgSend_objectAtIndexedSubscript_(value, v1116, 5);
  objc_msgSend_floatValue(v1117, v1118, v1119);
  LODWORD(v1313) = v1120;
  v1122 = objc_msgSend_objectAtIndexedSubscript_(value, v1121, 6);
  objc_msgSend_floatValue(v1122, v1123, v1124);
  v1126 = objc_msgSend_objectAtIndexedSubscript_(value, v1125, 7);
  objc_msgSend_floatValue(v1126, v1127, v1128);
  *&v1332 = __PAIR64__(LODWORD(v1313), LODWORD(v1331));
  v1130 = objc_msgSend_objectAtIndexedSubscript_(value, v1129, 8);
  objc_msgSend_floatValue(v1130, v1131, v1132);
  LODWORD(v1313) = v1133;
  v1135 = objc_msgSend_objectAtIndexedSubscript_(value, v1134, 9);
  objc_msgSend_floatValue(v1135, v1136, v1137);
  v1294 = v1138;
  v1140 = objc_msgSend_objectAtIndexedSubscript_(value, v1139, 10);
  objc_msgSend_floatValue(v1140, v1141, v1142);
  v1144 = objc_msgSend_objectAtIndexedSubscript_(value, v1143, 11);
  objc_msgSend_floatValue(v1144, v1145, v1146);
  *&v1314 = __PAIR64__(v1294, LODWORD(v1313));
  v1148 = objc_msgSend_objectAtIndexedSubscript_(value, v1147, 12);
  objc_msgSend_floatValue(v1148, v1149, v1150);
  v1295 = v1151;
  v1153 = objc_msgSend_objectAtIndexedSubscript_(value, v1152, 13);
  objc_msgSend_floatValue(v1153, v1154, v1155);
  v1264 = v1156;
  v1158 = objc_msgSend_objectAtIndexedSubscript_(value, v1157, 14);
  objc_msgSend_floatValue(v1158, v1159, v1160);
  v1162 = objc_msgSend_objectAtIndexedSubscript_(value, v1161, 15);
  objc_msgSend_floatValue(v1162, v1163, v1164);
  objc_msgSend_convertTransform_toNode_(self, v1165, node, v1349, v1332, v1314, COERCE_DOUBLE(__PAIR64__(v1264, v1295)));
  LODWORD(v1167) = v1166;
  v1351[14] = objc_msgSend_numberWithFloat_(v1092, v1168, v1169, v1167);
  v1170 = MEMORY[0x1E696AD98];
  v1172 = objc_msgSend_objectAtIndexedSubscript_(value, v1171, 0);
  objc_msgSend_floatValue(v1172, v1173, v1174);
  LODWORD(v1349) = v1175;
  v1177 = objc_msgSend_objectAtIndexedSubscript_(value, v1176, 1);
  objc_msgSend_floatValue(v1177, v1178, v1179);
  LODWORD(v1332) = v1180;
  v1182 = objc_msgSend_objectAtIndexedSubscript_(value, v1181, 2);
  objc_msgSend_floatValue(v1182, v1183, v1184);
  v1186 = objc_msgSend_objectAtIndexedSubscript_(value, v1185, 3);
  objc_msgSend_floatValue(v1186, v1187, v1188);
  v1350 = COERCE_DOUBLE(__PAIR64__(LODWORD(v1332), LODWORD(v1349)));
  v1190 = objc_msgSend_objectAtIndexedSubscript_(value, v1189, 4);
  objc_msgSend_floatValue(v1190, v1191, v1192);
  LODWORD(v1332) = v1193;
  v1195 = objc_msgSend_objectAtIndexedSubscript_(value, v1194, 5);
  objc_msgSend_floatValue(v1195, v1196, v1197);
  LODWORD(v1314) = v1198;
  v1200 = objc_msgSend_objectAtIndexedSubscript_(value, v1199, 6);
  objc_msgSend_floatValue(v1200, v1201, v1202);
  v1204 = objc_msgSend_objectAtIndexedSubscript_(value, v1203, 7);
  objc_msgSend_floatValue(v1204, v1205, v1206);
  v1333 = COERCE_DOUBLE(__PAIR64__(LODWORD(v1314), LODWORD(v1332)));
  v1208 = objc_msgSend_objectAtIndexedSubscript_(value, v1207, 8);
  objc_msgSend_floatValue(v1208, v1209, v1210);
  LODWORD(v1314) = v1211;
  v1213 = objc_msgSend_objectAtIndexedSubscript_(value, v1212, 9);
  objc_msgSend_floatValue(v1213, v1214, v1215);
  v1296 = v1216;
  v1218 = objc_msgSend_objectAtIndexedSubscript_(value, v1217, 10);
  objc_msgSend_floatValue(v1218, v1219, v1220);
  v1222 = objc_msgSend_objectAtIndexedSubscript_(value, v1221, 11);
  objc_msgSend_floatValue(v1222, v1223, v1224);
  v1315 = COERCE_DOUBLE(__PAIR64__(v1296, LODWORD(v1314)));
  v1226 = objc_msgSend_objectAtIndexedSubscript_(value, v1225, 12);
  objc_msgSend_floatValue(v1226, v1227, v1228);
  v1297 = v1229;
  v1231 = objc_msgSend_objectAtIndexedSubscript_(value, v1230, 13);
  objc_msgSend_floatValue(v1231, v1232, v1233);
  v1265 = v1234;
  v1236 = objc_msgSend_objectAtIndexedSubscript_(value, v1235, 14);
  objc_msgSend_floatValue(v1236, v1237, v1238);
  v1240 = objc_msgSend_objectAtIndexedSubscript_(value, v1239, 15);
  objc_msgSend_floatValue(v1240, v1241, v1242);
  objc_msgSend_convertTransform_toNode_(self, v1243, node, v1350, v1333, v1315, COERCE_DOUBLE(__PAIR64__(v1265, v1297)));
  LODWORD(v1245) = v1244;
  v1351[15] = objc_msgSend_numberWithFloat_(v1170, v1246, v1247, v1245);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v1248, v1351, 16);
}

- (id)convertTransformValue:(id)value fromNode:(id)node
{
  v1351[16] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AD98];
  v8 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v8, v9, v10);
  v1334 = v11;
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v12, 1);
  objc_msgSend_floatValue(v13, v14, v15);
  v1316 = v16;
  v18 = objc_msgSend_objectAtIndexedSubscript_(value, v17, 2);
  objc_msgSend_floatValue(v18, v19, v20);
  v22 = objc_msgSend_objectAtIndexedSubscript_(value, v21, 3);
  objc_msgSend_floatValue(v22, v23, v24);
  *&v1335 = __PAIR64__(v1316, v1334);
  v26 = objc_msgSend_objectAtIndexedSubscript_(value, v25, 4);
  objc_msgSend_floatValue(v26, v27, v28);
  v1317 = v29;
  v31 = objc_msgSend_objectAtIndexedSubscript_(value, v30, 5);
  objc_msgSend_floatValue(v31, v32, v33);
  v1298 = v34;
  v36 = objc_msgSend_objectAtIndexedSubscript_(value, v35, 6);
  objc_msgSend_floatValue(v36, v37, v38);
  v40 = objc_msgSend_objectAtIndexedSubscript_(value, v39, 7);
  objc_msgSend_floatValue(v40, v41, v42);
  *&v1318 = __PAIR64__(v1298, v1317);
  v44 = objc_msgSend_objectAtIndexedSubscript_(value, v43, 8);
  objc_msgSend_floatValue(v44, v45, v46);
  v1299 = v47;
  v49 = objc_msgSend_objectAtIndexedSubscript_(value, v48, 9);
  objc_msgSend_floatValue(v49, v50, v51);
  v1266 = v52;
  v54 = objc_msgSend_objectAtIndexedSubscript_(value, v53, 10);
  objc_msgSend_floatValue(v54, v55, v56);
  v58 = objc_msgSend_objectAtIndexedSubscript_(value, v57, 11);
  objc_msgSend_floatValue(v58, v59, v60);
  *&v1300 = __PAIR64__(v1266, v1299);
  v62 = objc_msgSend_objectAtIndexedSubscript_(value, v61, 12);
  objc_msgSend_floatValue(v62, v63, v64);
  v1267 = v65;
  v67 = objc_msgSend_objectAtIndexedSubscript_(value, v66, 13);
  objc_msgSend_floatValue(v67, v68, v69);
  v1250 = v70;
  v72 = objc_msgSend_objectAtIndexedSubscript_(value, v71, 14);
  objc_msgSend_floatValue(v72, v73, v74);
  v76 = objc_msgSend_objectAtIndexedSubscript_(value, v75, 15);
  objc_msgSend_floatValue(v76, v77, v78);
  objc_msgSend_convertTransform_fromNode_(self, v79, node, v1335, v1318, v1300, COERCE_DOUBLE(__PAIR64__(v1250, v1267)));
  v1351[0] = objc_msgSend_numberWithFloat_(v7, v80, v81);
  v82 = MEMORY[0x1E696AD98];
  v84 = objc_msgSend_objectAtIndexedSubscript_(value, v83, 0);
  objc_msgSend_floatValue(v84, v85, v86);
  LODWORD(v1335) = v87;
  v89 = objc_msgSend_objectAtIndexedSubscript_(value, v88, 1);
  objc_msgSend_floatValue(v89, v90, v91);
  LODWORD(v1318) = v92;
  v94 = objc_msgSend_objectAtIndexedSubscript_(value, v93, 2);
  objc_msgSend_floatValue(v94, v95, v96);
  v98 = objc_msgSend_objectAtIndexedSubscript_(value, v97, 3);
  objc_msgSend_floatValue(v98, v99, v100);
  *&v1336 = __PAIR64__(LODWORD(v1318), LODWORD(v1335));
  v102 = objc_msgSend_objectAtIndexedSubscript_(value, v101, 4);
  objc_msgSend_floatValue(v102, v103, v104);
  LODWORD(v1318) = v105;
  v107 = objc_msgSend_objectAtIndexedSubscript_(value, v106, 5);
  objc_msgSend_floatValue(v107, v108, v109);
  LODWORD(v1300) = v110;
  v112 = objc_msgSend_objectAtIndexedSubscript_(value, v111, 6);
  objc_msgSend_floatValue(v112, v113, v114);
  v116 = objc_msgSend_objectAtIndexedSubscript_(value, v115, 7);
  objc_msgSend_floatValue(v116, v117, v118);
  *&v1319 = __PAIR64__(LODWORD(v1300), LODWORD(v1318));
  v120 = objc_msgSend_objectAtIndexedSubscript_(value, v119, 8);
  objc_msgSend_floatValue(v120, v121, v122);
  LODWORD(v1300) = v123;
  v125 = objc_msgSend_objectAtIndexedSubscript_(value, v124, 9);
  objc_msgSend_floatValue(v125, v126, v127);
  v1268 = v128;
  v130 = objc_msgSend_objectAtIndexedSubscript_(value, v129, 10);
  objc_msgSend_floatValue(v130, v131, v132);
  v134 = objc_msgSend_objectAtIndexedSubscript_(value, v133, 11);
  objc_msgSend_floatValue(v134, v135, v136);
  *&v1301 = __PAIR64__(v1268, LODWORD(v1300));
  v138 = objc_msgSend_objectAtIndexedSubscript_(value, v137, 12);
  objc_msgSend_floatValue(v138, v139, v140);
  v1269 = v141;
  v143 = objc_msgSend_objectAtIndexedSubscript_(value, v142, 13);
  objc_msgSend_floatValue(v143, v144, v145);
  v1251 = v146;
  v148 = objc_msgSend_objectAtIndexedSubscript_(value, v147, 14);
  objc_msgSend_floatValue(v148, v149, v150);
  v152 = objc_msgSend_objectAtIndexedSubscript_(value, v151, 15);
  objc_msgSend_floatValue(v152, v153, v154);
  objc_msgSend_convertTransform_fromNode_(self, v155, node, v1336, v1319, v1301, COERCE_DOUBLE(__PAIR64__(v1251, v1269)));
  LODWORD(v156) = HIDWORD(v156);
  v1351[1] = objc_msgSend_numberWithFloat_(v82, v157, v158, v156);
  v159 = MEMORY[0x1E696AD98];
  v161 = objc_msgSend_objectAtIndexedSubscript_(value, v160, 0);
  objc_msgSend_floatValue(v161, v162, v163);
  LODWORD(v1336) = v164;
  v166 = objc_msgSend_objectAtIndexedSubscript_(value, v165, 1);
  objc_msgSend_floatValue(v166, v167, v168);
  LODWORD(v1319) = v169;
  v171 = objc_msgSend_objectAtIndexedSubscript_(value, v170, 2);
  objc_msgSend_floatValue(v171, v172, v173);
  v175 = objc_msgSend_objectAtIndexedSubscript_(value, v174, 3);
  objc_msgSend_floatValue(v175, v176, v177);
  *&v1337 = __PAIR64__(LODWORD(v1319), LODWORD(v1336));
  v179 = objc_msgSend_objectAtIndexedSubscript_(value, v178, 4);
  objc_msgSend_floatValue(v179, v180, v181);
  LODWORD(v1319) = v182;
  v184 = objc_msgSend_objectAtIndexedSubscript_(value, v183, 5);
  objc_msgSend_floatValue(v184, v185, v186);
  LODWORD(v1301) = v187;
  v189 = objc_msgSend_objectAtIndexedSubscript_(value, v188, 6);
  objc_msgSend_floatValue(v189, v190, v191);
  v193 = objc_msgSend_objectAtIndexedSubscript_(value, v192, 7);
  objc_msgSend_floatValue(v193, v194, v195);
  *&v1320 = __PAIR64__(LODWORD(v1301), LODWORD(v1319));
  v197 = objc_msgSend_objectAtIndexedSubscript_(value, v196, 8);
  objc_msgSend_floatValue(v197, v198, v199);
  LODWORD(v1301) = v200;
  v202 = objc_msgSend_objectAtIndexedSubscript_(value, v201, 9);
  objc_msgSend_floatValue(v202, v203, v204);
  v1270 = v205;
  v207 = objc_msgSend_objectAtIndexedSubscript_(value, v206, 10);
  objc_msgSend_floatValue(v207, v208, v209);
  v211 = objc_msgSend_objectAtIndexedSubscript_(value, v210, 11);
  objc_msgSend_floatValue(v211, v212, v213);
  *&v1302 = __PAIR64__(v1270, LODWORD(v1301));
  v215 = objc_msgSend_objectAtIndexedSubscript_(value, v214, 12);
  objc_msgSend_floatValue(v215, v216, v217);
  v1271 = v218;
  v220 = objc_msgSend_objectAtIndexedSubscript_(value, v219, 13);
  objc_msgSend_floatValue(v220, v221, v222);
  v1252 = v223;
  v225 = objc_msgSend_objectAtIndexedSubscript_(value, v224, 14);
  objc_msgSend_floatValue(v225, v226, v227);
  v229 = objc_msgSend_objectAtIndexedSubscript_(value, v228, 15);
  objc_msgSend_floatValue(v229, v230, v231);
  objc_msgSend_convertTransform_fromNode_(self, v232, node, v1337, v1320, v1302, COERCE_DOUBLE(__PAIR64__(v1252, v1271)));
  LODWORD(v234) = v233;
  v1351[2] = objc_msgSend_numberWithFloat_(v159, v235, v236, v234);
  v237 = MEMORY[0x1E696AD98];
  v239 = objc_msgSend_objectAtIndexedSubscript_(value, v238, 0);
  objc_msgSend_floatValue(v239, v240, v241);
  LODWORD(v1337) = v242;
  v244 = objc_msgSend_objectAtIndexedSubscript_(value, v243, 1);
  objc_msgSend_floatValue(v244, v245, v246);
  LODWORD(v1320) = v247;
  v249 = objc_msgSend_objectAtIndexedSubscript_(value, v248, 2);
  objc_msgSend_floatValue(v249, v250, v251);
  v253 = objc_msgSend_objectAtIndexedSubscript_(value, v252, 3);
  objc_msgSend_floatValue(v253, v254, v255);
  *&v1338 = __PAIR64__(LODWORD(v1320), LODWORD(v1337));
  v257 = objc_msgSend_objectAtIndexedSubscript_(value, v256, 4);
  objc_msgSend_floatValue(v257, v258, v259);
  LODWORD(v1320) = v260;
  v262 = objc_msgSend_objectAtIndexedSubscript_(value, v261, 5);
  objc_msgSend_floatValue(v262, v263, v264);
  LODWORD(v1302) = v265;
  v267 = objc_msgSend_objectAtIndexedSubscript_(value, v266, 6);
  objc_msgSend_floatValue(v267, v268, v269);
  v271 = objc_msgSend_objectAtIndexedSubscript_(value, v270, 7);
  objc_msgSend_floatValue(v271, v272, v273);
  *&v1321 = __PAIR64__(LODWORD(v1302), LODWORD(v1320));
  v275 = objc_msgSend_objectAtIndexedSubscript_(value, v274, 8);
  objc_msgSend_floatValue(v275, v276, v277);
  LODWORD(v1302) = v278;
  v280 = objc_msgSend_objectAtIndexedSubscript_(value, v279, 9);
  objc_msgSend_floatValue(v280, v281, v282);
  v1272 = v283;
  v285 = objc_msgSend_objectAtIndexedSubscript_(value, v284, 10);
  objc_msgSend_floatValue(v285, v286, v287);
  v289 = objc_msgSend_objectAtIndexedSubscript_(value, v288, 11);
  objc_msgSend_floatValue(v289, v290, v291);
  *&v1303 = __PAIR64__(v1272, LODWORD(v1302));
  v293 = objc_msgSend_objectAtIndexedSubscript_(value, v292, 12);
  objc_msgSend_floatValue(v293, v294, v295);
  v1273 = v296;
  v298 = objc_msgSend_objectAtIndexedSubscript_(value, v297, 13);
  objc_msgSend_floatValue(v298, v299, v300);
  v1253 = v301;
  v303 = objc_msgSend_objectAtIndexedSubscript_(value, v302, 14);
  objc_msgSend_floatValue(v303, v304, v305);
  v307 = objc_msgSend_objectAtIndexedSubscript_(value, v306, 15);
  objc_msgSend_floatValue(v307, v308, v309);
  objc_msgSend_convertTransform_fromNode_(self, v310, node, v1338, v1321, v1303, COERCE_DOUBLE(__PAIR64__(v1253, v1273)));
  LODWORD(v312) = v311;
  v1351[3] = objc_msgSend_numberWithFloat_(v237, v313, v314, v312);
  v315 = MEMORY[0x1E696AD98];
  v317 = objc_msgSend_objectAtIndexedSubscript_(value, v316, 0);
  objc_msgSend_floatValue(v317, v318, v319);
  LODWORD(v1338) = v320;
  v322 = objc_msgSend_objectAtIndexedSubscript_(value, v321, 1);
  objc_msgSend_floatValue(v322, v323, v324);
  LODWORD(v1321) = v325;
  v327 = objc_msgSend_objectAtIndexedSubscript_(value, v326, 2);
  objc_msgSend_floatValue(v327, v328, v329);
  v331 = objc_msgSend_objectAtIndexedSubscript_(value, v330, 3);
  objc_msgSend_floatValue(v331, v332, v333);
  *&v1339 = __PAIR64__(LODWORD(v1321), LODWORD(v1338));
  v335 = objc_msgSend_objectAtIndexedSubscript_(value, v334, 4);
  objc_msgSend_floatValue(v335, v336, v337);
  LODWORD(v1321) = v338;
  v340 = objc_msgSend_objectAtIndexedSubscript_(value, v339, 5);
  objc_msgSend_floatValue(v340, v341, v342);
  LODWORD(v1303) = v343;
  v345 = objc_msgSend_objectAtIndexedSubscript_(value, v344, 6);
  objc_msgSend_floatValue(v345, v346, v347);
  v349 = objc_msgSend_objectAtIndexedSubscript_(value, v348, 7);
  objc_msgSend_floatValue(v349, v350, v351);
  *&v1322 = __PAIR64__(LODWORD(v1303), LODWORD(v1321));
  v353 = objc_msgSend_objectAtIndexedSubscript_(value, v352, 8);
  objc_msgSend_floatValue(v353, v354, v355);
  LODWORD(v1303) = v356;
  v358 = objc_msgSend_objectAtIndexedSubscript_(value, v357, 9);
  objc_msgSend_floatValue(v358, v359, v360);
  v1274 = v361;
  v363 = objc_msgSend_objectAtIndexedSubscript_(value, v362, 10);
  objc_msgSend_floatValue(v363, v364, v365);
  v367 = objc_msgSend_objectAtIndexedSubscript_(value, v366, 11);
  objc_msgSend_floatValue(v367, v368, v369);
  *&v1304 = __PAIR64__(v1274, LODWORD(v1303));
  v371 = objc_msgSend_objectAtIndexedSubscript_(value, v370, 12);
  objc_msgSend_floatValue(v371, v372, v373);
  v1275 = v374;
  v376 = objc_msgSend_objectAtIndexedSubscript_(value, v375, 13);
  objc_msgSend_floatValue(v376, v377, v378);
  v1254 = v379;
  v381 = objc_msgSend_objectAtIndexedSubscript_(value, v380, 14);
  objc_msgSend_floatValue(v381, v382, v383);
  v385 = objc_msgSend_objectAtIndexedSubscript_(value, v384, 15);
  objc_msgSend_floatValue(v385, v386, v387);
  objc_msgSend_convertTransform_fromNode_(self, v388, node, v1339, v1322, v1304, COERCE_DOUBLE(__PAIR64__(v1254, v1275)));
  v1351[4] = objc_msgSend_numberWithFloat_(v315, v389, v390, v391);
  v392 = MEMORY[0x1E696AD98];
  v394 = objc_msgSend_objectAtIndexedSubscript_(value, v393, 0);
  objc_msgSend_floatValue(v394, v395, v396);
  LODWORD(v1339) = v397;
  v399 = objc_msgSend_objectAtIndexedSubscript_(value, v398, 1);
  objc_msgSend_floatValue(v399, v400, v401);
  LODWORD(v1322) = v402;
  v404 = objc_msgSend_objectAtIndexedSubscript_(value, v403, 2);
  objc_msgSend_floatValue(v404, v405, v406);
  v408 = objc_msgSend_objectAtIndexedSubscript_(value, v407, 3);
  objc_msgSend_floatValue(v408, v409, v410);
  *&v1340 = __PAIR64__(LODWORD(v1322), LODWORD(v1339));
  v412 = objc_msgSend_objectAtIndexedSubscript_(value, v411, 4);
  objc_msgSend_floatValue(v412, v413, v414);
  LODWORD(v1322) = v415;
  v417 = objc_msgSend_objectAtIndexedSubscript_(value, v416, 5);
  objc_msgSend_floatValue(v417, v418, v419);
  LODWORD(v1304) = v420;
  v422 = objc_msgSend_objectAtIndexedSubscript_(value, v421, 6);
  objc_msgSend_floatValue(v422, v423, v424);
  v426 = objc_msgSend_objectAtIndexedSubscript_(value, v425, 7);
  objc_msgSend_floatValue(v426, v427, v428);
  *&v1323 = __PAIR64__(LODWORD(v1304), LODWORD(v1322));
  v430 = objc_msgSend_objectAtIndexedSubscript_(value, v429, 8);
  objc_msgSend_floatValue(v430, v431, v432);
  LODWORD(v1304) = v433;
  v435 = objc_msgSend_objectAtIndexedSubscript_(value, v434, 9);
  objc_msgSend_floatValue(v435, v436, v437);
  v1276 = v438;
  v440 = objc_msgSend_objectAtIndexedSubscript_(value, v439, 10);
  objc_msgSend_floatValue(v440, v441, v442);
  v444 = objc_msgSend_objectAtIndexedSubscript_(value, v443, 11);
  objc_msgSend_floatValue(v444, v445, v446);
  *&v1305 = __PAIR64__(v1276, LODWORD(v1304));
  v448 = objc_msgSend_objectAtIndexedSubscript_(value, v447, 12);
  objc_msgSend_floatValue(v448, v449, v450);
  v1277 = v451;
  v453 = objc_msgSend_objectAtIndexedSubscript_(value, v452, 13);
  objc_msgSend_floatValue(v453, v454, v455);
  v1255 = v456;
  v458 = objc_msgSend_objectAtIndexedSubscript_(value, v457, 14);
  objc_msgSend_floatValue(v458, v459, v460);
  v462 = objc_msgSend_objectAtIndexedSubscript_(value, v461, 15);
  objc_msgSend_floatValue(v462, v463, v464);
  objc_msgSend_convertTransform_fromNode_(self, v465, node, v1340, v1323, v1305, COERCE_DOUBLE(__PAIR64__(v1255, v1277)));
  LODWORD(v467) = v466;
  v1351[5] = objc_msgSend_numberWithFloat_(v392, v468, v469, v467);
  v470 = MEMORY[0x1E696AD98];
  v472 = objc_msgSend_objectAtIndexedSubscript_(value, v471, 0);
  objc_msgSend_floatValue(v472, v473, v474);
  LODWORD(v1340) = v475;
  v477 = objc_msgSend_objectAtIndexedSubscript_(value, v476, 1);
  objc_msgSend_floatValue(v477, v478, v479);
  LODWORD(v1323) = v480;
  v482 = objc_msgSend_objectAtIndexedSubscript_(value, v481, 2);
  objc_msgSend_floatValue(v482, v483, v484);
  v486 = objc_msgSend_objectAtIndexedSubscript_(value, v485, 3);
  objc_msgSend_floatValue(v486, v487, v488);
  *&v1341 = __PAIR64__(LODWORD(v1323), LODWORD(v1340));
  v490 = objc_msgSend_objectAtIndexedSubscript_(value, v489, 4);
  objc_msgSend_floatValue(v490, v491, v492);
  LODWORD(v1323) = v493;
  v495 = objc_msgSend_objectAtIndexedSubscript_(value, v494, 5);
  objc_msgSend_floatValue(v495, v496, v497);
  LODWORD(v1305) = v498;
  v500 = objc_msgSend_objectAtIndexedSubscript_(value, v499, 6);
  objc_msgSend_floatValue(v500, v501, v502);
  v504 = objc_msgSend_objectAtIndexedSubscript_(value, v503, 7);
  objc_msgSend_floatValue(v504, v505, v506);
  *&v1324 = __PAIR64__(LODWORD(v1305), LODWORD(v1323));
  v508 = objc_msgSend_objectAtIndexedSubscript_(value, v507, 8);
  objc_msgSend_floatValue(v508, v509, v510);
  LODWORD(v1305) = v511;
  v513 = objc_msgSend_objectAtIndexedSubscript_(value, v512, 9);
  objc_msgSend_floatValue(v513, v514, v515);
  v1278 = v516;
  v518 = objc_msgSend_objectAtIndexedSubscript_(value, v517, 10);
  objc_msgSend_floatValue(v518, v519, v520);
  v522 = objc_msgSend_objectAtIndexedSubscript_(value, v521, 11);
  objc_msgSend_floatValue(v522, v523, v524);
  *&v1306 = __PAIR64__(v1278, LODWORD(v1305));
  v526 = objc_msgSend_objectAtIndexedSubscript_(value, v525, 12);
  objc_msgSend_floatValue(v526, v527, v528);
  v1279 = v529;
  v531 = objc_msgSend_objectAtIndexedSubscript_(value, v530, 13);
  objc_msgSend_floatValue(v531, v532, v533);
  v1256 = v534;
  v536 = objc_msgSend_objectAtIndexedSubscript_(value, v535, 14);
  objc_msgSend_floatValue(v536, v537, v538);
  v540 = objc_msgSend_objectAtIndexedSubscript_(value, v539, 15);
  objc_msgSend_floatValue(v540, v541, v542);
  objc_msgSend_convertTransform_fromNode_(self, v543, node, v1341, v1324, v1306, COERCE_DOUBLE(__PAIR64__(v1256, v1279)));
  LODWORD(v545) = v544;
  v1351[6] = objc_msgSend_numberWithFloat_(v470, v546, v547, v545);
  v548 = MEMORY[0x1E696AD98];
  v550 = objc_msgSend_objectAtIndexedSubscript_(value, v549, 0);
  objc_msgSend_floatValue(v550, v551, v552);
  LODWORD(v1341) = v553;
  v555 = objc_msgSend_objectAtIndexedSubscript_(value, v554, 1);
  objc_msgSend_floatValue(v555, v556, v557);
  LODWORD(v1324) = v558;
  v560 = objc_msgSend_objectAtIndexedSubscript_(value, v559, 2);
  objc_msgSend_floatValue(v560, v561, v562);
  v564 = objc_msgSend_objectAtIndexedSubscript_(value, v563, 3);
  objc_msgSend_floatValue(v564, v565, v566);
  *&v1342 = __PAIR64__(LODWORD(v1324), LODWORD(v1341));
  v568 = objc_msgSend_objectAtIndexedSubscript_(value, v567, 4);
  objc_msgSend_floatValue(v568, v569, v570);
  LODWORD(v1324) = v571;
  v573 = objc_msgSend_objectAtIndexedSubscript_(value, v572, 5);
  objc_msgSend_floatValue(v573, v574, v575);
  LODWORD(v1306) = v576;
  v578 = objc_msgSend_objectAtIndexedSubscript_(value, v577, 6);
  objc_msgSend_floatValue(v578, v579, v580);
  v582 = objc_msgSend_objectAtIndexedSubscript_(value, v581, 7);
  objc_msgSend_floatValue(v582, v583, v584);
  *&v1325 = __PAIR64__(LODWORD(v1306), LODWORD(v1324));
  v586 = objc_msgSend_objectAtIndexedSubscript_(value, v585, 8);
  objc_msgSend_floatValue(v586, v587, v588);
  LODWORD(v1306) = v589;
  v591 = objc_msgSend_objectAtIndexedSubscript_(value, v590, 9);
  objc_msgSend_floatValue(v591, v592, v593);
  v1280 = v594;
  v596 = objc_msgSend_objectAtIndexedSubscript_(value, v595, 10);
  objc_msgSend_floatValue(v596, v597, v598);
  v600 = objc_msgSend_objectAtIndexedSubscript_(value, v599, 11);
  objc_msgSend_floatValue(v600, v601, v602);
  *&v1307 = __PAIR64__(v1280, LODWORD(v1306));
  v604 = objc_msgSend_objectAtIndexedSubscript_(value, v603, 12);
  objc_msgSend_floatValue(v604, v605, v606);
  v1281 = v607;
  v609 = objc_msgSend_objectAtIndexedSubscript_(value, v608, 13);
  objc_msgSend_floatValue(v609, v610, v611);
  v1257 = v612;
  v614 = objc_msgSend_objectAtIndexedSubscript_(value, v613, 14);
  objc_msgSend_floatValue(v614, v615, v616);
  v618 = objc_msgSend_objectAtIndexedSubscript_(value, v617, 15);
  objc_msgSend_floatValue(v618, v619, v620);
  objc_msgSend_convertTransform_fromNode_(self, v621, node, v1342, v1325, v1307, COERCE_DOUBLE(__PAIR64__(v1257, v1281)));
  LODWORD(v623) = v622;
  v1351[7] = objc_msgSend_numberWithFloat_(v548, v624, v625, v623);
  v626 = MEMORY[0x1E696AD98];
  v628 = objc_msgSend_objectAtIndexedSubscript_(value, v627, 0);
  objc_msgSend_floatValue(v628, v629, v630);
  LODWORD(v1342) = v631;
  v633 = objc_msgSend_objectAtIndexedSubscript_(value, v632, 1);
  objc_msgSend_floatValue(v633, v634, v635);
  LODWORD(v1325) = v636;
  v638 = objc_msgSend_objectAtIndexedSubscript_(value, v637, 2);
  objc_msgSend_floatValue(v638, v639, v640);
  v642 = objc_msgSend_objectAtIndexedSubscript_(value, v641, 3);
  objc_msgSend_floatValue(v642, v643, v644);
  *&v1343 = __PAIR64__(LODWORD(v1325), LODWORD(v1342));
  v646 = objc_msgSend_objectAtIndexedSubscript_(value, v645, 4);
  objc_msgSend_floatValue(v646, v647, v648);
  LODWORD(v1325) = v649;
  v651 = objc_msgSend_objectAtIndexedSubscript_(value, v650, 5);
  objc_msgSend_floatValue(v651, v652, v653);
  LODWORD(v1307) = v654;
  v656 = objc_msgSend_objectAtIndexedSubscript_(value, v655, 6);
  objc_msgSend_floatValue(v656, v657, v658);
  v660 = objc_msgSend_objectAtIndexedSubscript_(value, v659, 7);
  objc_msgSend_floatValue(v660, v661, v662);
  *&v1326 = __PAIR64__(LODWORD(v1307), LODWORD(v1325));
  v664 = objc_msgSend_objectAtIndexedSubscript_(value, v663, 8);
  objc_msgSend_floatValue(v664, v665, v666);
  LODWORD(v1307) = v667;
  v669 = objc_msgSend_objectAtIndexedSubscript_(value, v668, 9);
  objc_msgSend_floatValue(v669, v670, v671);
  v1282 = v672;
  v674 = objc_msgSend_objectAtIndexedSubscript_(value, v673, 10);
  objc_msgSend_floatValue(v674, v675, v676);
  v678 = objc_msgSend_objectAtIndexedSubscript_(value, v677, 11);
  objc_msgSend_floatValue(v678, v679, v680);
  *&v1308 = __PAIR64__(v1282, LODWORD(v1307));
  v682 = objc_msgSend_objectAtIndexedSubscript_(value, v681, 12);
  objc_msgSend_floatValue(v682, v683, v684);
  v1283 = v685;
  v687 = objc_msgSend_objectAtIndexedSubscript_(value, v686, 13);
  objc_msgSend_floatValue(v687, v688, v689);
  v1258 = v690;
  v692 = objc_msgSend_objectAtIndexedSubscript_(value, v691, 14);
  objc_msgSend_floatValue(v692, v693, v694);
  v696 = objc_msgSend_objectAtIndexedSubscript_(value, v695, 15);
  objc_msgSend_floatValue(v696, v697, v698);
  objc_msgSend_convertTransform_fromNode_(self, v699, node, v1343, v1326, v1308, COERCE_DOUBLE(__PAIR64__(v1258, v1283)));
  v1351[8] = objc_msgSend_numberWithFloat_(v626, v700, v701, v702);
  v703 = MEMORY[0x1E696AD98];
  v705 = objc_msgSend_objectAtIndexedSubscript_(value, v704, 0);
  objc_msgSend_floatValue(v705, v706, v707);
  LODWORD(v1343) = v708;
  v710 = objc_msgSend_objectAtIndexedSubscript_(value, v709, 1);
  objc_msgSend_floatValue(v710, v711, v712);
  LODWORD(v1326) = v713;
  v715 = objc_msgSend_objectAtIndexedSubscript_(value, v714, 2);
  objc_msgSend_floatValue(v715, v716, v717);
  v719 = objc_msgSend_objectAtIndexedSubscript_(value, v718, 3);
  objc_msgSend_floatValue(v719, v720, v721);
  *&v1344 = __PAIR64__(LODWORD(v1326), LODWORD(v1343));
  v723 = objc_msgSend_objectAtIndexedSubscript_(value, v722, 4);
  objc_msgSend_floatValue(v723, v724, v725);
  LODWORD(v1326) = v726;
  v728 = objc_msgSend_objectAtIndexedSubscript_(value, v727, 5);
  objc_msgSend_floatValue(v728, v729, v730);
  LODWORD(v1308) = v731;
  v733 = objc_msgSend_objectAtIndexedSubscript_(value, v732, 6);
  objc_msgSend_floatValue(v733, v734, v735);
  v737 = objc_msgSend_objectAtIndexedSubscript_(value, v736, 7);
  objc_msgSend_floatValue(v737, v738, v739);
  *&v1327 = __PAIR64__(LODWORD(v1308), LODWORD(v1326));
  v741 = objc_msgSend_objectAtIndexedSubscript_(value, v740, 8);
  objc_msgSend_floatValue(v741, v742, v743);
  LODWORD(v1308) = v744;
  v746 = objc_msgSend_objectAtIndexedSubscript_(value, v745, 9);
  objc_msgSend_floatValue(v746, v747, v748);
  v1284 = v749;
  v751 = objc_msgSend_objectAtIndexedSubscript_(value, v750, 10);
  objc_msgSend_floatValue(v751, v752, v753);
  v755 = objc_msgSend_objectAtIndexedSubscript_(value, v754, 11);
  objc_msgSend_floatValue(v755, v756, v757);
  *&v1309 = __PAIR64__(v1284, LODWORD(v1308));
  v759 = objc_msgSend_objectAtIndexedSubscript_(value, v758, 12);
  objc_msgSend_floatValue(v759, v760, v761);
  v1285 = v762;
  v764 = objc_msgSend_objectAtIndexedSubscript_(value, v763, 13);
  objc_msgSend_floatValue(v764, v765, v766);
  v1259 = v767;
  v769 = objc_msgSend_objectAtIndexedSubscript_(value, v768, 14);
  objc_msgSend_floatValue(v769, v770, v771);
  v773 = objc_msgSend_objectAtIndexedSubscript_(value, v772, 15);
  objc_msgSend_floatValue(v773, v774, v775);
  objc_msgSend_convertTransform_fromNode_(self, v776, node, v1344, v1327, v1309, COERCE_DOUBLE(__PAIR64__(v1259, v1285)));
  LODWORD(v778) = v777;
  v1351[9] = objc_msgSend_numberWithFloat_(v703, v779, v780, v778);
  v781 = MEMORY[0x1E696AD98];
  v783 = objc_msgSend_objectAtIndexedSubscript_(value, v782, 0);
  objc_msgSend_floatValue(v783, v784, v785);
  LODWORD(v1344) = v786;
  v788 = objc_msgSend_objectAtIndexedSubscript_(value, v787, 1);
  objc_msgSend_floatValue(v788, v789, v790);
  LODWORD(v1327) = v791;
  v793 = objc_msgSend_objectAtIndexedSubscript_(value, v792, 2);
  objc_msgSend_floatValue(v793, v794, v795);
  v797 = objc_msgSend_objectAtIndexedSubscript_(value, v796, 3);
  objc_msgSend_floatValue(v797, v798, v799);
  *&v1345 = __PAIR64__(LODWORD(v1327), LODWORD(v1344));
  v801 = objc_msgSend_objectAtIndexedSubscript_(value, v800, 4);
  objc_msgSend_floatValue(v801, v802, v803);
  LODWORD(v1327) = v804;
  v806 = objc_msgSend_objectAtIndexedSubscript_(value, v805, 5);
  objc_msgSend_floatValue(v806, v807, v808);
  LODWORD(v1309) = v809;
  v811 = objc_msgSend_objectAtIndexedSubscript_(value, v810, 6);
  objc_msgSend_floatValue(v811, v812, v813);
  v815 = objc_msgSend_objectAtIndexedSubscript_(value, v814, 7);
  objc_msgSend_floatValue(v815, v816, v817);
  *&v1328 = __PAIR64__(LODWORD(v1309), LODWORD(v1327));
  v819 = objc_msgSend_objectAtIndexedSubscript_(value, v818, 8);
  objc_msgSend_floatValue(v819, v820, v821);
  LODWORD(v1309) = v822;
  v824 = objc_msgSend_objectAtIndexedSubscript_(value, v823, 9);
  objc_msgSend_floatValue(v824, v825, v826);
  v1286 = v827;
  v829 = objc_msgSend_objectAtIndexedSubscript_(value, v828, 10);
  objc_msgSend_floatValue(v829, v830, v831);
  v833 = objc_msgSend_objectAtIndexedSubscript_(value, v832, 11);
  objc_msgSend_floatValue(v833, v834, v835);
  *&v1310 = __PAIR64__(v1286, LODWORD(v1309));
  v837 = objc_msgSend_objectAtIndexedSubscript_(value, v836, 12);
  objc_msgSend_floatValue(v837, v838, v839);
  v1287 = v840;
  v842 = objc_msgSend_objectAtIndexedSubscript_(value, v841, 13);
  objc_msgSend_floatValue(v842, v843, v844);
  v1260 = v845;
  v847 = objc_msgSend_objectAtIndexedSubscript_(value, v846, 14);
  objc_msgSend_floatValue(v847, v848, v849);
  v851 = objc_msgSend_objectAtIndexedSubscript_(value, v850, 15);
  objc_msgSend_floatValue(v851, v852, v853);
  objc_msgSend_convertTransform_fromNode_(self, v854, node, v1345, v1328, v1310, COERCE_DOUBLE(__PAIR64__(v1260, v1287)));
  LODWORD(v856) = v855;
  v1351[10] = objc_msgSend_numberWithFloat_(v781, v857, v858, v856);
  v859 = MEMORY[0x1E696AD98];
  v861 = objc_msgSend_objectAtIndexedSubscript_(value, v860, 0);
  objc_msgSend_floatValue(v861, v862, v863);
  LODWORD(v1345) = v864;
  v866 = objc_msgSend_objectAtIndexedSubscript_(value, v865, 1);
  objc_msgSend_floatValue(v866, v867, v868);
  LODWORD(v1328) = v869;
  v871 = objc_msgSend_objectAtIndexedSubscript_(value, v870, 2);
  objc_msgSend_floatValue(v871, v872, v873);
  v875 = objc_msgSend_objectAtIndexedSubscript_(value, v874, 3);
  objc_msgSend_floatValue(v875, v876, v877);
  *&v1346 = __PAIR64__(LODWORD(v1328), LODWORD(v1345));
  v879 = objc_msgSend_objectAtIndexedSubscript_(value, v878, 4);
  objc_msgSend_floatValue(v879, v880, v881);
  LODWORD(v1328) = v882;
  v884 = objc_msgSend_objectAtIndexedSubscript_(value, v883, 5);
  objc_msgSend_floatValue(v884, v885, v886);
  LODWORD(v1310) = v887;
  v889 = objc_msgSend_objectAtIndexedSubscript_(value, v888, 6);
  objc_msgSend_floatValue(v889, v890, v891);
  v893 = objc_msgSend_objectAtIndexedSubscript_(value, v892, 7);
  objc_msgSend_floatValue(v893, v894, v895);
  *&v1329 = __PAIR64__(LODWORD(v1310), LODWORD(v1328));
  v897 = objc_msgSend_objectAtIndexedSubscript_(value, v896, 8);
  objc_msgSend_floatValue(v897, v898, v899);
  LODWORD(v1310) = v900;
  v902 = objc_msgSend_objectAtIndexedSubscript_(value, v901, 9);
  objc_msgSend_floatValue(v902, v903, v904);
  v1288 = v905;
  v907 = objc_msgSend_objectAtIndexedSubscript_(value, v906, 10);
  objc_msgSend_floatValue(v907, v908, v909);
  v911 = objc_msgSend_objectAtIndexedSubscript_(value, v910, 11);
  objc_msgSend_floatValue(v911, v912, v913);
  *&v1311 = __PAIR64__(v1288, LODWORD(v1310));
  v915 = objc_msgSend_objectAtIndexedSubscript_(value, v914, 12);
  objc_msgSend_floatValue(v915, v916, v917);
  v1289 = v918;
  v920 = objc_msgSend_objectAtIndexedSubscript_(value, v919, 13);
  objc_msgSend_floatValue(v920, v921, v922);
  v1261 = v923;
  v925 = objc_msgSend_objectAtIndexedSubscript_(value, v924, 14);
  objc_msgSend_floatValue(v925, v926, v927);
  v929 = objc_msgSend_objectAtIndexedSubscript_(value, v928, 15);
  objc_msgSend_floatValue(v929, v930, v931);
  objc_msgSend_convertTransform_fromNode_(self, v932, node, v1346, v1329, v1311, COERCE_DOUBLE(__PAIR64__(v1261, v1289)));
  LODWORD(v934) = v933;
  v1351[11] = objc_msgSend_numberWithFloat_(v859, v935, v936, v934);
  v937 = MEMORY[0x1E696AD98];
  v939 = objc_msgSend_objectAtIndexedSubscript_(value, v938, 0);
  objc_msgSend_floatValue(v939, v940, v941);
  LODWORD(v1346) = v942;
  v944 = objc_msgSend_objectAtIndexedSubscript_(value, v943, 1);
  objc_msgSend_floatValue(v944, v945, v946);
  LODWORD(v1329) = v947;
  v949 = objc_msgSend_objectAtIndexedSubscript_(value, v948, 2);
  objc_msgSend_floatValue(v949, v950, v951);
  v953 = objc_msgSend_objectAtIndexedSubscript_(value, v952, 3);
  objc_msgSend_floatValue(v953, v954, v955);
  *&v1347 = __PAIR64__(LODWORD(v1329), LODWORD(v1346));
  v957 = objc_msgSend_objectAtIndexedSubscript_(value, v956, 4);
  objc_msgSend_floatValue(v957, v958, v959);
  LODWORD(v1329) = v960;
  v962 = objc_msgSend_objectAtIndexedSubscript_(value, v961, 5);
  objc_msgSend_floatValue(v962, v963, v964);
  LODWORD(v1311) = v965;
  v967 = objc_msgSend_objectAtIndexedSubscript_(value, v966, 6);
  objc_msgSend_floatValue(v967, v968, v969);
  v971 = objc_msgSend_objectAtIndexedSubscript_(value, v970, 7);
  objc_msgSend_floatValue(v971, v972, v973);
  *&v1330 = __PAIR64__(LODWORD(v1311), LODWORD(v1329));
  v975 = objc_msgSend_objectAtIndexedSubscript_(value, v974, 8);
  objc_msgSend_floatValue(v975, v976, v977);
  LODWORD(v1311) = v978;
  v980 = objc_msgSend_objectAtIndexedSubscript_(value, v979, 9);
  objc_msgSend_floatValue(v980, v981, v982);
  v1290 = v983;
  v985 = objc_msgSend_objectAtIndexedSubscript_(value, v984, 10);
  objc_msgSend_floatValue(v985, v986, v987);
  v989 = objc_msgSend_objectAtIndexedSubscript_(value, v988, 11);
  objc_msgSend_floatValue(v989, v990, v991);
  *&v1312 = __PAIR64__(v1290, LODWORD(v1311));
  v993 = objc_msgSend_objectAtIndexedSubscript_(value, v992, 12);
  objc_msgSend_floatValue(v993, v994, v995);
  v1291 = v996;
  v998 = objc_msgSend_objectAtIndexedSubscript_(value, v997, 13);
  objc_msgSend_floatValue(v998, v999, v1000);
  v1262 = v1001;
  v1003 = objc_msgSend_objectAtIndexedSubscript_(value, v1002, 14);
  objc_msgSend_floatValue(v1003, v1004, v1005);
  v1007 = objc_msgSend_objectAtIndexedSubscript_(value, v1006, 15);
  objc_msgSend_floatValue(v1007, v1008, v1009);
  objc_msgSend_convertTransform_fromNode_(self, v1010, node, v1347, v1330, v1312, COERCE_DOUBLE(__PAIR64__(v1262, v1291)));
  v1351[12] = objc_msgSend_numberWithFloat_(v937, v1011, v1012, v1013);
  v1014 = MEMORY[0x1E696AD98];
  v1016 = objc_msgSend_objectAtIndexedSubscript_(value, v1015, 0);
  objc_msgSend_floatValue(v1016, v1017, v1018);
  LODWORD(v1347) = v1019;
  v1021 = objc_msgSend_objectAtIndexedSubscript_(value, v1020, 1);
  objc_msgSend_floatValue(v1021, v1022, v1023);
  LODWORD(v1330) = v1024;
  v1026 = objc_msgSend_objectAtIndexedSubscript_(value, v1025, 2);
  objc_msgSend_floatValue(v1026, v1027, v1028);
  v1030 = objc_msgSend_objectAtIndexedSubscript_(value, v1029, 3);
  objc_msgSend_floatValue(v1030, v1031, v1032);
  *&v1348 = __PAIR64__(LODWORD(v1330), LODWORD(v1347));
  v1034 = objc_msgSend_objectAtIndexedSubscript_(value, v1033, 4);
  objc_msgSend_floatValue(v1034, v1035, v1036);
  LODWORD(v1330) = v1037;
  v1039 = objc_msgSend_objectAtIndexedSubscript_(value, v1038, 5);
  objc_msgSend_floatValue(v1039, v1040, v1041);
  LODWORD(v1312) = v1042;
  v1044 = objc_msgSend_objectAtIndexedSubscript_(value, v1043, 6);
  objc_msgSend_floatValue(v1044, v1045, v1046);
  v1048 = objc_msgSend_objectAtIndexedSubscript_(value, v1047, 7);
  objc_msgSend_floatValue(v1048, v1049, v1050);
  *&v1331 = __PAIR64__(LODWORD(v1312), LODWORD(v1330));
  v1052 = objc_msgSend_objectAtIndexedSubscript_(value, v1051, 8);
  objc_msgSend_floatValue(v1052, v1053, v1054);
  LODWORD(v1312) = v1055;
  v1057 = objc_msgSend_objectAtIndexedSubscript_(value, v1056, 9);
  objc_msgSend_floatValue(v1057, v1058, v1059);
  v1292 = v1060;
  v1062 = objc_msgSend_objectAtIndexedSubscript_(value, v1061, 10);
  objc_msgSend_floatValue(v1062, v1063, v1064);
  v1066 = objc_msgSend_objectAtIndexedSubscript_(value, v1065, 11);
  objc_msgSend_floatValue(v1066, v1067, v1068);
  *&v1313 = __PAIR64__(v1292, LODWORD(v1312));
  v1070 = objc_msgSend_objectAtIndexedSubscript_(value, v1069, 12);
  objc_msgSend_floatValue(v1070, v1071, v1072);
  v1293 = v1073;
  v1075 = objc_msgSend_objectAtIndexedSubscript_(value, v1074, 13);
  objc_msgSend_floatValue(v1075, v1076, v1077);
  v1263 = v1078;
  v1080 = objc_msgSend_objectAtIndexedSubscript_(value, v1079, 14);
  objc_msgSend_floatValue(v1080, v1081, v1082);
  v1084 = objc_msgSend_objectAtIndexedSubscript_(value, v1083, 15);
  objc_msgSend_floatValue(v1084, v1085, v1086);
  objc_msgSend_convertTransform_fromNode_(self, v1087, node, v1348, v1331, v1313, COERCE_DOUBLE(__PAIR64__(v1263, v1293)));
  LODWORD(v1089) = v1088;
  v1351[13] = objc_msgSend_numberWithFloat_(v1014, v1090, v1091, v1089);
  v1092 = MEMORY[0x1E696AD98];
  v1094 = objc_msgSend_objectAtIndexedSubscript_(value, v1093, 0);
  objc_msgSend_floatValue(v1094, v1095, v1096);
  LODWORD(v1348) = v1097;
  v1099 = objc_msgSend_objectAtIndexedSubscript_(value, v1098, 1);
  objc_msgSend_floatValue(v1099, v1100, v1101);
  LODWORD(v1331) = v1102;
  v1104 = objc_msgSend_objectAtIndexedSubscript_(value, v1103, 2);
  objc_msgSend_floatValue(v1104, v1105, v1106);
  v1108 = objc_msgSend_objectAtIndexedSubscript_(value, v1107, 3);
  objc_msgSend_floatValue(v1108, v1109, v1110);
  *&v1349 = __PAIR64__(LODWORD(v1331), LODWORD(v1348));
  v1112 = objc_msgSend_objectAtIndexedSubscript_(value, v1111, 4);
  objc_msgSend_floatValue(v1112, v1113, v1114);
  LODWORD(v1331) = v1115;
  v1117 = objc_msgSend_objectAtIndexedSubscript_(value, v1116, 5);
  objc_msgSend_floatValue(v1117, v1118, v1119);
  LODWORD(v1313) = v1120;
  v1122 = objc_msgSend_objectAtIndexedSubscript_(value, v1121, 6);
  objc_msgSend_floatValue(v1122, v1123, v1124);
  v1126 = objc_msgSend_objectAtIndexedSubscript_(value, v1125, 7);
  objc_msgSend_floatValue(v1126, v1127, v1128);
  *&v1332 = __PAIR64__(LODWORD(v1313), LODWORD(v1331));
  v1130 = objc_msgSend_objectAtIndexedSubscript_(value, v1129, 8);
  objc_msgSend_floatValue(v1130, v1131, v1132);
  LODWORD(v1313) = v1133;
  v1135 = objc_msgSend_objectAtIndexedSubscript_(value, v1134, 9);
  objc_msgSend_floatValue(v1135, v1136, v1137);
  v1294 = v1138;
  v1140 = objc_msgSend_objectAtIndexedSubscript_(value, v1139, 10);
  objc_msgSend_floatValue(v1140, v1141, v1142);
  v1144 = objc_msgSend_objectAtIndexedSubscript_(value, v1143, 11);
  objc_msgSend_floatValue(v1144, v1145, v1146);
  *&v1314 = __PAIR64__(v1294, LODWORD(v1313));
  v1148 = objc_msgSend_objectAtIndexedSubscript_(value, v1147, 12);
  objc_msgSend_floatValue(v1148, v1149, v1150);
  v1295 = v1151;
  v1153 = objc_msgSend_objectAtIndexedSubscript_(value, v1152, 13);
  objc_msgSend_floatValue(v1153, v1154, v1155);
  v1264 = v1156;
  v1158 = objc_msgSend_objectAtIndexedSubscript_(value, v1157, 14);
  objc_msgSend_floatValue(v1158, v1159, v1160);
  v1162 = objc_msgSend_objectAtIndexedSubscript_(value, v1161, 15);
  objc_msgSend_floatValue(v1162, v1163, v1164);
  objc_msgSend_convertTransform_fromNode_(self, v1165, node, v1349, v1332, v1314, COERCE_DOUBLE(__PAIR64__(v1264, v1295)));
  LODWORD(v1167) = v1166;
  v1351[14] = objc_msgSend_numberWithFloat_(v1092, v1168, v1169, v1167);
  v1170 = MEMORY[0x1E696AD98];
  v1172 = objc_msgSend_objectAtIndexedSubscript_(value, v1171, 0);
  objc_msgSend_floatValue(v1172, v1173, v1174);
  LODWORD(v1349) = v1175;
  v1177 = objc_msgSend_objectAtIndexedSubscript_(value, v1176, 1);
  objc_msgSend_floatValue(v1177, v1178, v1179);
  LODWORD(v1332) = v1180;
  v1182 = objc_msgSend_objectAtIndexedSubscript_(value, v1181, 2);
  objc_msgSend_floatValue(v1182, v1183, v1184);
  v1186 = objc_msgSend_objectAtIndexedSubscript_(value, v1185, 3);
  objc_msgSend_floatValue(v1186, v1187, v1188);
  v1350 = COERCE_DOUBLE(__PAIR64__(LODWORD(v1332), LODWORD(v1349)));
  v1190 = objc_msgSend_objectAtIndexedSubscript_(value, v1189, 4);
  objc_msgSend_floatValue(v1190, v1191, v1192);
  LODWORD(v1332) = v1193;
  v1195 = objc_msgSend_objectAtIndexedSubscript_(value, v1194, 5);
  objc_msgSend_floatValue(v1195, v1196, v1197);
  LODWORD(v1314) = v1198;
  v1200 = objc_msgSend_objectAtIndexedSubscript_(value, v1199, 6);
  objc_msgSend_floatValue(v1200, v1201, v1202);
  v1204 = objc_msgSend_objectAtIndexedSubscript_(value, v1203, 7);
  objc_msgSend_floatValue(v1204, v1205, v1206);
  v1333 = COERCE_DOUBLE(__PAIR64__(LODWORD(v1314), LODWORD(v1332)));
  v1208 = objc_msgSend_objectAtIndexedSubscript_(value, v1207, 8);
  objc_msgSend_floatValue(v1208, v1209, v1210);
  LODWORD(v1314) = v1211;
  v1213 = objc_msgSend_objectAtIndexedSubscript_(value, v1212, 9);
  objc_msgSend_floatValue(v1213, v1214, v1215);
  v1296 = v1216;
  v1218 = objc_msgSend_objectAtIndexedSubscript_(value, v1217, 10);
  objc_msgSend_floatValue(v1218, v1219, v1220);
  v1222 = objc_msgSend_objectAtIndexedSubscript_(value, v1221, 11);
  objc_msgSend_floatValue(v1222, v1223, v1224);
  v1315 = COERCE_DOUBLE(__PAIR64__(v1296, LODWORD(v1314)));
  v1226 = objc_msgSend_objectAtIndexedSubscript_(value, v1225, 12);
  objc_msgSend_floatValue(v1226, v1227, v1228);
  v1297 = v1229;
  v1231 = objc_msgSend_objectAtIndexedSubscript_(value, v1230, 13);
  objc_msgSend_floatValue(v1231, v1232, v1233);
  v1265 = v1234;
  v1236 = objc_msgSend_objectAtIndexedSubscript_(value, v1235, 14);
  objc_msgSend_floatValue(v1236, v1237, v1238);
  v1240 = objc_msgSend_objectAtIndexedSubscript_(value, v1239, 15);
  objc_msgSend_floatValue(v1240, v1241, v1242);
  objc_msgSend_convertTransform_fromNode_(self, v1243, node, v1350, v1333, v1315, COERCE_DOUBLE(__PAIR64__(v1265, v1297)));
  LODWORD(v1245) = v1244;
  v1351[15] = objc_msgSend_numberWithFloat_(v1170, v1246, v1247, v1245);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v1248, v1351, 16);
}

- (id)hitTestWithSegmentFrom:(id)from toPoint:(id)point options:(id)options
{
  v9 = objc_msgSend_objectAtIndexedSubscript_(from, a2, 0);
  objc_msgSend_floatValue(v9, v10, v11);
  v41 = v12;
  v14 = objc_msgSend_objectAtIndexedSubscript_(from, v13, 1);
  objc_msgSend_floatValue(v14, v15, v16);
  v39 = v17;
  v19 = objc_msgSend_objectAtIndexedSubscript_(from, v18, 2);
  objc_msgSend_floatValue(v19, v20, v21);
  v42 = COERCE_DOUBLE(__PAIR64__(v39, v41));
  v23 = objc_msgSend_objectAtIndexedSubscript_(point, v22, 0);
  objc_msgSend_floatValue(v23, v24, v25);
  v40 = v26;
  v28 = objc_msgSend_objectAtIndexedSubscript_(point, v27, 1);
  objc_msgSend_floatValue(v28, v29, v30);
  v38 = v31;
  v33 = objc_msgSend_objectAtIndexedSubscript_(point, v32, 2);
  objc_msgSend_floatValue(v33, v34, v35);

  return objc_msgSend_hitTestWithSegmentFromPoint_toPoint_options_(self, v36, options, v42, COERCE_DOUBLE(__PAIR64__(v38, v40)));
}

+ (id)localRightValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_localRight(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_localRight(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_localRight(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

+ (id)localFrontValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_localFront(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_localFront(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_localFront(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

+ (id)localUpValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_localUp(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_localUp(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_localUp(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (id)worldRightValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_worldRight(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_worldRight(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_worldRight(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (id)worldFrontValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_worldFront(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_worldFront(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_worldFront(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (id)worldUpValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_worldUp(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_worldUp(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_worldUp(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (void)lookAtLocation:(id)location
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(location, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v9 = objc_msgSend_objectAtIndexedSubscript_(location, v8, 1);
  objc_msgSend_floatValue(v9, v10, v11);
  v13 = objc_msgSend_objectAtIndexedSubscript_(location, v12, 2);
  objc_msgSend_floatValue(v13, v14, v15);

  MEMORY[0x1EEE66B58](self, sel_lookAt_, v16);
}

- (void)lookAtLocation:(id)location up:(id)up localFront:(id)front
{
  v9 = objc_msgSend_objectAtIndexedSubscript_(location, a2, 0);
  objc_msgSend_floatValue(v9, v10, v11);
  v13 = objc_msgSend_objectAtIndexedSubscript_(location, v12, 1);
  objc_msgSend_floatValue(v13, v14, v15);
  v17 = objc_msgSend_objectAtIndexedSubscript_(location, v16, 2);
  objc_msgSend_floatValue(v17, v18, v19);
  v21 = objc_msgSend_objectAtIndexedSubscript_(up, v20, 0);
  objc_msgSend_floatValue(v21, v22, v23);
  v25 = objc_msgSend_objectAtIndexedSubscript_(up, v24, 1);
  objc_msgSend_floatValue(v25, v26, v27);
  v29 = objc_msgSend_objectAtIndexedSubscript_(up, v28, 2);
  objc_msgSend_floatValue(v29, v30, v31);
  v33 = objc_msgSend_objectAtIndexedSubscript_(front, v32, 0);
  objc_msgSend_floatValue(v33, v34, v35);
  v37 = objc_msgSend_objectAtIndexedSubscript_(front, v36, 1);
  objc_msgSend_floatValue(v37, v38, v39);
  v41 = objc_msgSend_objectAtIndexedSubscript_(front, v40, 2);
  objc_msgSend_floatValue(v41, v42, v43);

  MEMORY[0x1EEE66B58](self, sel_lookAt_up_localFront_, v44);
}

- (void)localTranslateByValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v9 = objc_msgSend_objectAtIndexedSubscript_(value, v8, 1);
  objc_msgSend_floatValue(v9, v10, v11);
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v12, 2);
  objc_msgSend_floatValue(v13, v14, v15);

  MEMORY[0x1EEE66B58](self, sel_localTranslateBy_, v16);
}

- (void)localRotateByValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v9 = objc_msgSend_objectAtIndexedSubscript_(value, v8, 1);
  objc_msgSend_floatValue(v9, v10, v11);
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v12, 2);
  objc_msgSend_floatValue(v13, v14, v15);
  v17 = objc_msgSend_objectAtIndexedSubscript_(value, v16, 3);
  objc_msgSend_floatValue(v17, v18, v19);

  MEMORY[0x1EEE66B58](self, sel_localRotateBy_, v20);
}

- (void)rotateBy:(id)by around:(id)around
{
  v7 = objc_msgSend_objectAtIndexedSubscript_(by, a2, 0);
  objc_msgSend_floatValue(v7, v8, v9);
  v43 = v10;
  v12 = objc_msgSend_objectAtIndexedSubscript_(by, v11, 1);
  objc_msgSend_floatValue(v12, v13, v14);
  v41 = v15;
  v17 = objc_msgSend_objectAtIndexedSubscript_(by, v16, 2);
  objc_msgSend_floatValue(v17, v18, v19);
  v21 = objc_msgSend_objectAtIndexedSubscript_(by, v20, 3);
  objc_msgSend_floatValue(v21, v22, v23);
  v44 = COERCE_DOUBLE(__PAIR64__(v41, v43));
  v25 = objc_msgSend_objectAtIndexedSubscript_(around, v24, 0);
  objc_msgSend_floatValue(v25, v26, v27);
  v42 = v28;
  v30 = objc_msgSend_objectAtIndexedSubscript_(around, v29, 1);
  objc_msgSend_floatValue(v30, v31, v32);
  v40 = v33;
  v35 = objc_msgSend_objectAtIndexedSubscript_(around, v34, 2);
  objc_msgSend_floatValue(v35, v36, v37);

  objc_msgSend_rotateBy_aroundTarget_(self, v38, v39, v44, COERCE_DOUBLE(__PAIR64__(v40, v42)));
}

+ (VFXNode)nodeWithMDLAsset:(id)asset
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(self);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(asset, v5, &v18, v22, 16);
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
          objc_enumerationMutation(asset);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8);
        v15 = objc_msgSend_nodeWithMDLObject_options_context_(VFXNode, v14, v12, 0, v13);
        objc_msgSend_addChildNode_(v4, v16, v15);
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(asset, v7, &v18, v22, 16);
    }

    while (v9);
  }

  return v4;
}

+ (VFXNode)nodeWithMDLObject:(id)object
{
  v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, object);

  return objc_msgSend_nodeWithMDLObject_options_context_(self, v5, object, 0, v6);
}

+ (VFXNode)nodeWithMDLObject:(id)object options:(id)options context:(id)context
{
  v107 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_node(self, a2, object);
  v11 = objc_msgSend_name(object, v9, v10);
  objc_msgSend_setName_(v8, v12, v11);
  if (objc_msgSend_transform(object, v13, v14))
  {
    v17 = objc_msgSend_transform(object, v15, v16);
    objc_msgSend_matrix(v17, v18, v19);
    objc_msgSend_setTransform_(v8, v20, v21);
    objc_msgSend_transform(object, v22, v23);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v27 = objc_msgSend_transform(object, v25, v26);
    if (isKindOfClass)
    {
LABEL_5:
      v32 = objc_msgSend_transformAnimation(v27, v28, v29);
      if (v32)
      {
        v35 = v32;
        objc_msgSend_duration(v32, v33, v34);
        if (v37 != 0.0)
        {
          objc_msgSend_addAnimation_forKey_(v8, v36, v35, @"transform");
        }
      }

      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = objc_msgSend_transform(object, v30, v31);
      goto LABEL_5;
    }
  }

LABEL_8:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_29;
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v40 = objc_msgSend_submeshes(object, v38, v39);
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v100, v106, 16);
  if (!v42)
  {
    goto LABEL_29;
  }

  v45 = v42;
  v46 = 0;
  v47 = *v101;
  while (2)
  {
    for (i = 0; i != v45; ++i)
    {
      if (*v101 != v47)
      {
        objc_enumerationMutation(v40);
      }

      v49 = *(*(&v100 + 1) + 8 * i);
      if (objc_msgSend_faceIndexing(v49, v43, v44) && objc_msgSend_geometryType(v49, v50, v51) != 5)
      {
        return 0;
      }

      if (objc_msgSend_faceIndexing(v49, v50, v51))
      {
        ++v46;
      }
    }

    v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v43, &v100, v106, 16);
    if (v45)
    {
      continue;
    }

    break;
  }

  if (v46 >= 2)
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = objc_msgSend_submeshes(object, v43, v44);
    v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v52, &v96, v105, 16);
    if (v53)
    {
      v56 = v53;
      v57 = *v97;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v97 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v59 = *(*(&v96 + 1) + 8 * j);
          v60 = objc_msgSend_node(self, v54, v55);
          v61 = MEMORY[0x1E696AEC0];
          v64 = objc_msgSend_name(object, v62, v63);
          v66 = objc_msgSend_stringWithFormat_(v61, v65, @"%@_%d", v64, 0);
          objc_msgSend_setName_(v60, v67, v66);
          v69 = objc_msgSend_modelWithMDLMesh_submesh_options_(VFXModel, v68, object, v59, options);
          objc_msgSend_setModel_(v60, v70, v69);
          objc_msgSend_addChildNode_(v8, v71, v60);
        }

        v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v54, &v96, v105, 16);
      }

      while (v56);
    }
  }

  else
  {
LABEL_29:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v73 = objc_msgSend_modelWithMDLMesh_options_context_(VFXModel, v72, object, options, context);
      objc_msgSend_setModel_(v8, v74, v73);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v76 = objc_msgSend_lightWithMDLLight_(VFXLight, v75, object);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v88 = objc_msgSend_cameraWithMDLCamera_(VFXCamera, v54, object);
            objc_msgSend_setCamera_(v8, v89, v88);
          }

          goto LABEL_37;
        }

        v76 = objc_msgSend_lightWithMDLLightProbe_(VFXLight, v78, object);
      }

      objc_msgSend_setLight_(v8, v77, v76);
    }
  }

LABEL_37:
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v79 = objc_msgSend_children(object, v54, v55);
  v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v80, &v92, v104, 16);
  if (v81)
  {
    v83 = v81;
    v84 = *v93;
    do
    {
      for (k = 0; k != v83; ++k)
      {
        if (*v93 != v84)
        {
          objc_enumerationMutation(v79);
        }

        v86 = objc_msgSend_nodeWithMDLObject_options_context_(VFXNode, v82, *(*(&v92 + 1) + 8 * k), options, context);
        if (v86)
        {
          objc_msgSend_addChildNode_(v8, v82, v86);
        }
      }

      v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v82, &v92, v104, 16);
    }

    while (v83);
  }

  return v8;
}

+ (VFXNode)nodeWithMDLObject:(id)object masterObjects:(id)objects worldNodes:(id)nodes skinnedMeshes:(id)meshes skelNodesMap:(void *)map asset:(id)asset options:(id)options context:(id)self0 mpuScale:(float)self1
{
  v148 = *MEMORY[0x1E69E9840];
  v15 = objc_msgSend_node(self, a2, object);
  if (objc_msgSend_transform(object, v16, v17))
  {
    v20 = objc_msgSend_transform(object, v18, v19);
    objc_msgSend_matrix(v20, v21, v22);
    objc_msgSend_setTransform_(v15, v23, v24);
    objc_msgSend_transform(object, v25, v26);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v32 = objc_msgSend_transform(object, v28, v29);
    if ((isKindOfClass & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_18;
      }

      v32 = objc_msgSend_transform(object, v18, v19);
    }

    v33 = objc_msgSend_transformAnimation(v32, v30, v31);
    if (v33)
    {
      v34 = v33;
      objc_msgSend_duration(v33, v18, v19);
      if (v35 != 0.0)
      {
        v36 = objc_msgSend_valueForKey_(options, v18, @"kSceneSourceAnimationLoadingMode");
        if (v36)
        {
          v40 = v36;
          objc_msgSend_setRemovedOnCompletion_(v34, v37, 1);
          isEqualToString = objc_msgSend_isEqualToString_(v40, v41, @"playRepeatedly");
          LODWORD(v45) = 2139095040;
          if (!isEqualToString)
          {
            *&v45 = 0.0;
          }

          objc_msgSend_setRepeatCount_(v34, v43, v44, v45);
          v47 = objc_msgSend_isEqualToString_(v40, v46, @"playRepeatedly") ^ 1;
          objc_msgSend_setRemovedOnCompletion_(v34, v48, v47);
        }

        else
        {
          LODWORD(v39) = 2139095040;
          objc_msgSend_setRepeatCount_(v34, v37, v38, v39);
          objc_msgSend_setRemovedOnCompletion_(v34, v51, 0);
        }

        objc_msgSend_endTime(asset, v49, v50);
        v53 = v52;
        objc_msgSend_startTime(asset, v54, v55);
        v59 = v53 - v58;
        if (v53 - v58 > 0.0)
        {
          objc_msgSend_duration(v34, v56, v57);
          v61 = v60;
          objc_msgSend_beginTime(v34, v62, v63);
          if (v61 < v59 - v65)
          {
            objc_msgSend_beginTime(v34, v56, v64);
            objc_msgSend_setDuration_(v34, v67, v68, v59 - v66);
          }
        }

        if (scale != 1.0)
        {
          sub_1AF2F36F8(v34, v56, scale);
        }

        objc_msgSend_addAnimation_forKey_(v15, v56, v34, @"transform");
      }
    }
  }

LABEL_18:
  v69 = objc_msgSend_name(object, v18, v19);
  objc_msgSend_setName_(v15, v70, v69);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v73 = objc_msgSend_path(object, v71, v72);
    v75 = objc_msgSend_objectForKey_(objects, v74, v73);
    if (v75)
    {
      objc_msgSend_setModel_(v15, v76, v75);
    }

    else
    {
      v83 = objc_msgSend_modelWithMDLMesh_options_context_(VFXModel, v76, object, options, context);
      objc_msgSend_setModel_(v15, v84, v83);
      v86 = objc_msgSend_componentConformingToProtocol_(object, v85, &unk_1F262ADF8);
      if (v86)
      {
        v88 = v86;
        v89 = sub_1AF2EDE80(v86);
        objc_msgSend_setMorpher_(v15, v90, v89);
        sub_1AF2EE224(v88, v15, options);
      }

      if (objc_msgSend_componentConformingToProtocol_(object, v87, &unk_1F262AE58))
      {
        objc_msgSend_addObject_(meshes, v91, object);
      }

      if (objc_msgSend_subdivisionScheme(object, v91, v92))
      {
        v95 = objc_msgSend_valueForKey_(options, v93, @"VFXWorldLoaderConformToSubdivisionScheme");
        if (objc_msgSend_BOOLValue(v95, v96, v97))
        {
          v98 = objc_msgSend_model(v15, v93, v94);
          objc_msgSend_setSubdivisionLevel_(v98, v99, 1);
          v102 = objc_msgSend_model(v15, v100, v101);
          objc_msgSend_setWantsAdaptiveSubdivision_(v102, v103, 1);
          v104 = objc_opt_new();
          v107 = objc_msgSend_model(v15, v105, v106);
          objc_msgSend_setTessellator_(v107, v108, v104);
        }
      }

      v109 = objc_msgSend_model(v15, v93, v94);
      objc_msgSend_setObject_forKey_(objects, v110, v109, v73);
    }

    goto LABEL_38;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v80 = objc_msgSend_lightWithMDLLight_(VFXLight, v79, object);
LABEL_25:
    objc_msgSend_setLight_(v15, v81, v80);
    goto LABEL_38;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v80 = objc_msgSend_lightWithMDLLightProbe_(VFXLight, v82, object);
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v112 = objc_msgSend_cameraWithMDLCamera_(VFXCamera, v111, object);
    objc_msgSend_setCamera_(v15, v113, v112);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_1AF2F38A8(v15, object, map);
    }
  }

LABEL_38:
  if (objc_msgSend_instance(object, v77, v78))
  {
    v116 = objc_msgSend_instance(object, v114, v115);
    *&v117 = scale;
    v119 = objc_msgSend_nodeWithMDLObject_masterObjects_worldNodes_skinnedMeshes_skelNodesMap_asset_options_context_mpuScale_(VFXNode, v118, v116, objects, nodes, meshes, map, asset, v117, options, context);
    objc_msgSend_addChildNode_(v15, v120, v119);
  }

  v121 = objc_msgSend_path(object, v114, v115);
  v122 = v15;
  objc_msgSend_setObject_forKey_(nodes, v123, v15, v121);
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  objectCopy = object;
  v126 = objc_msgSend_children(object, v124, v125);
  v128 = objc_msgSend_countByEnumeratingWithState_objects_count_(v126, v127, &v143, v147, 16);
  if (v128)
  {
    v132 = v128;
    v133 = *v144;
    do
    {
      for (i = 0; i != v132; ++i)
      {
        if (*v144 != v133)
        {
          objc_enumerationMutation(v126);
        }

        *&v131 = scale;
        v135 = objc_msgSend_nodeWithMDLObject_masterObjects_worldNodes_skinnedMeshes_skelNodesMap_asset_options_context_mpuScale_(VFXNode, v129, *(*(&v143 + 1) + 8 * i), objects, nodes, meshes, map, asset, v131, options, context);
        if (v135)
        {
          objc_msgSend_addChildNode_(v122, v129, v135);
        }
      }

      v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v126, v129, &v143, v147, 16);
    }

    while (v132);
  }

  v136 = objc_msgSend_hidden(objectCopy, v129, v130);
  objc_msgSend_setHidden_(v122, v137, v136);
  return v122;
}

- (void)_addSkinnerWithMDLMesh:(id)mesh worldNodes:(id)nodes
{
  v7 = objc_msgSend_componentConformingToProtocol_(mesh, a2, &unk_1F262AE58);
  if (v7)
  {
    v10 = v7;
    v11 = objc_msgSend_model(self, v8, v9);
    v14 = objc_msgSend_geometry(v11, v12, v13);
    v16 = sub_1AF2EDAB8(v10, nodes, v15);
    v17 = sub_1AF2EDBF8(v10);
    v20 = sub_1AF2F3D64(mesh, v18, v19);
    v23 = sub_1AF2F3E10(mesh, v21, v22);
    v26 = objc_msgSend_skinnerWithBaseGeometry_bones_boneInverseBindTransforms_boneWeights_boneIndices_(VFXSkinner, v24, v14, v16, v17, v20, v23);

    objc_msgSend_setSkinner_(self, v25, v26);
  }
}

- (void)_bakeNodes:(id)nodes folderPath:(id)path inVertex:(BOOL)vertex bakeAO:(BOOL)o quality:(float)quality attenuation:(float)attenuation geomSetter:(id)setter terminateSetter:(id)self0
{
  v31[1] = *MEMORY[0x1E69E9840];
  v31[0] = self;
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v31, 1);
  v19 = VFXNodesToMDLAsset(v18);
  v20 = VFXNodesToMDLAsset(nodes);
  v21 = sub_1AF2ED370(v20);
  v22 = sub_1AF2ED370(v19);
  v23 = sub_1AF2ED690(v19);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_1AF2F405C;
  v30[3] = &unk_1E7A7EAA0;
  v30[4] = path;
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF2F40DC;
  block[3] = &unk_1E7A7EB18;
  oCopy = o;
  vertexCopy = vertex;
  qualityCopy = quality;
  attenuationCopy = attenuation;
  block[4] = v21;
  block[5] = v22;
  block[6] = v23;
  block[7] = v20;
  block[8] = v30;
  block[9] = setter;
  block[10] = terminateSetter;
  dispatch_async(global_queue, block);
}

- (VFXNode)init
{
  v9.receiver = self;
  v9.super_class = VFXNode;
  v2 = [(VFXNode *)&v9 init];
  v4 = v2;
  if (v2)
  {
    v5 = sub_1AF1B8588(v2, v3);
    v4->_node = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    v4->_valueForKeyLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v4, v6, v7);
  }

  return v4;
}

- (id)initPresentationNodeWithNodeRef:(__CFXNode *)ref
{
  v7.receiver = self;
  v7.super_class = VFXNode;
  v4 = [(VFXNode *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 48) |= 1u;
    v4->_node = CFRetain(ref);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
    v5->_valueForKeyLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (VFXNode)initWithNodeRef:(__CFXNode *)ref
{
  v17.receiver = self;
  v17.super_class = VFXNode;
  v4 = [(VFXNode *)&v17 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    *(v4 + 1) = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    *(v4 + 52) = 0;
    *(v4 + 64) = 0;
    objc_msgSend__updateModelFromPresentation(v4, v6, v7);
    objc_msgSend__syncObjCAnimations(v4, v8, v9);
    v10 = sub_1AF1B9410(*(v4 + 1));
    if (v10)
    {
      v11 = v10;
      v12 = objc_alloc(MEMORY[0x1E695DF70]);
      *(v4 + 4) = objc_msgSend_initWithCapacity_(v12, v13, v11);
      v14 = *(v4 + 1);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_1AF3005BC;
      v16[3] = &unk_1E7A7EC78;
      v16[4] = v4;
      sub_1AF1B7E14(v14, v16);
    }
  }

  return v4;
}

+ (id)node
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (VFXNode)nodeWithModel:(id)model
{
  v4 = objc_msgSend_node(self, a2, model);
  objc_msgSend_setModel_(v4, v5, model);
  return v4;
}

- (void)dealloc
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(self + 48) & 1) == 0)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    childNodes = self->_childNodes;
    v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(childNodes, a2, &v19, v23, 16);
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(childNodes);
          }

          objc_msgSend__setParent_(*(*(&v19 + 1) + 8 * i), a2, 0);
        }

        v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(childNodes, a2, &v19, v23, 16);
      }

      while (v6);
    }
  }

  if (objc_msgSend_hasPhysicBody(self, a2, v2))
  {
    v11 = objc_msgSend_physicsBody(self, v9, v10);
    objc_msgSend__ownerWillDie(v11, v12, v13);
  }

  if ((*(self + 48) & 1) == 0)
  {
    v14 = objc_msgSend_stateManager(self, v9, v10);
    objc_msgSend_setOwner_(v14, v15, 0);
  }

  self->_components = 0;
  node = self->_node;
  if (node)
  {
    if ((*(self + 48) & 1) == 0)
    {
      sub_1AF16CDFC(self->_node, 0);
      node = self->_node;
    }

    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v16, node);
  }

  free(*self->_fixedBoundingBoxExtrema);
  v18.receiver = self;
  v18.super_class = VFXNode;
  [(VFXNode *)&v18 dealloc];
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
      v9[2] = sub_1AF3008D4;
      v9[3] = &unk_1E7A7E220;
      v9[4] = self;
      v9[5] = name;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
    }
  }
}

- (NSString)name
{
  if ((*(self + 48) & 1) == 0)
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

- (void)_updateModelFromPresentation
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  v6 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  *&v7 = sub_1AF1B7F84(self->_node, v5);
  *self->_anon_40 = v7;
  *&self->_anon_40[16] = v8;
  *&self->_anon_40[32] = v9;
  *&self->_anon_40[48] = v10;
  *(self + 48) = *(self + 48) & 0xE7 | 0x10;
  self->_opacity = sub_1AF1B8A30(self->_node, v11);
  self->_renderingOrder = sub_1AF1BAC2C(self->_node, v12);
  if (sub_1AF1B7348(self->_node, v13))
  {
    v15 = 16;
  }

  else
  {
    v15 = 0;
  }

  *(self + 49) = *(self + 49) & 0xEF | v15;
  if (sub_1AF1BAD78(self->_node, v14))
  {
    v17 = 32;
  }

  else
  {
    v17 = 0;
  }

  *(self + 49) = *(self + 49) & 0xDF | v17;
  self->_categoryBitMask = sub_1AF1BAF14(self->_node, v16);
  if (sub_1AF1BAFFC(self->_node))
  {
    v18 = 64;
  }

  else
  {
    v18 = 0;
  }

  *(self + 48) = *(self + 48) & 0xBF | v18;
  *(self + 49) = *(self + 49) & 0xFE | sub_1AF1BB028(self->_node);
  if (sub_1AF1BB080(self->_node))
  {
    v20 = 2;
  }

  else
  {
    v20 = 0;
  }

  *(self + 49) = *(self + 49) & 0xFD | v20;
  if (sub_1AF1B8774(self->_node, v19))
  {
    v21 = 32;
  }

  else
  {
    v21 = 0;
  }

  *(self + 48) = *(self + 48) & 0xDF | v21;
  if (sub_1AF1BB054(self->_node))
  {
    v24 = 0x80;
  }

  else
  {
    v24 = 0;
  }

  *(self + 48) = v24 & 0x80 | *(self + 48) & 0x7F;
  objc_msgSend__updateEntityModelFromPresentation(self, v22, v23);
  if (v6)
  {

    sub_1AF1CEA9C(v6, v25);
  }
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF300CAC;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (VFXNode)presentationNode
{
  selfCopy = self;
  if ((*(self + 48) & 1) == 0)
  {
    self = self->_presentationObject;
    if (!self)
    {
      v3 = [VFXNode alloc];
      self = objc_msgSend_initPresentationNodeWithNodeRef_(v3, v4, selfCopy->_node);
      selfCopy->_presentationObject = self;
    }
  }

  return self;
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  v78 = *MEMORY[0x1E69E9840];
  for (i = self->_components; i; i = objc_msgSend_next(i, v8, v9))
  {
    v7 = objc_msgSend_type(i, a2, operation);
    if (v7 - 3 >= 2 && v7 <= 0xC && ((1 << v7) & 0x1D07) != 0)
    {
      v12 = objc_msgSend_component(i, v8, v9);
      (*(block + 2))(block, v12, 0, 0);
    }
  }

  v13 = objc_msgSend_constraints(self, a2, operation);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v71, v77, 16);
  if (v17)
  {
    v18 = *v72;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v72 != v18)
        {
          objc_enumerationMutation(v13);
        }

        (*(block + 2))(block, *(*(&v71 + 1) + 8 * j), 0, 0);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, &v71, v77, 16);
    }

    while (v17);
  }

  v21 = objc_msgSend_physicsBody(self, v15, v16);
  if (v21)
  {
    (*(block + 2))(block, v21, 0, 0);
  }

  v23 = objc_msgSend_skinner(self, v21, v22);
  if (v23)
  {
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = sub_1AF301338;
    v70[3] = &unk_1E7A7C0C8;
    v70[4] = self;
    (*(block + 2))(block, v23, 0, v70);
  }

  v25 = objc_msgSend_morpher(self, v23, v24);
  if (v25)
  {
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = sub_1AF301344;
    v69[3] = &unk_1E7A7C0C8;
    v69[4] = self;
    (*(block + 2))(block, v25, 0, v69);
  }

  v29 = objc_msgSend_deformers(self, v25, v26);
  if (v29)
  {
    v30 = objc_alloc(MEMORY[0x1E695DF70]);
    v33 = objc_msgSend_count(v29, v31, v32);
    v35 = objc_msgSend_initWithCapacity_(v30, v34, v33);
    v65 = 0;
    v66 = &v65;
    v67 = 0x2020000000;
    v68 = 0;
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = sub_1AF301350;
    v64[3] = &unk_1E7A7ECC8;
    v64[5] = block;
    v64[6] = &v65;
    v64[4] = v35;
    objc_msgSend_enumerateObjectsUsingBlock_(v29, v36, v64);
    if (*(v66 + 24) == 1)
    {
      objc_msgSend_setDeformers_(self, v37, v35);
    }

    _Block_object_dispose(&v65, 8);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v38 = objc_msgSend_allValues(self->_animations, v27, v28);
  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v60, v76, 16);
  if (v41)
  {
    v42 = *v61;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v61 != v42)
        {
          objc_enumerationMutation(v38);
        }

        (*(block + 2))(block, *(*(&v60 + 1) + 8 * k), 0, 0);
      }

      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v44, &v60, v76, 16);
    }

    while (v41);
  }

  objc_msgSend_enumerateAnimationReferencesUsingBlock_(self, v40, block);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  childNodes = self->_childNodes;
  v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(childNodes, v46, &v56, v75, 16);
  if (v49)
  {
    v50 = *v57;
    do
    {
      for (m = 0; m != v49; ++m)
      {
        if (*v57 != v50)
        {
          objc_enumerationMutation(childNodes);
        }

        (*(block + 2))(block, *(*(&v56 + 1) + 8 * m), 0, 0);
      }

      v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(childNodes, v52, &v56, v75, 16);
    }

    while (v49);
  }

  if (objc_msgSend_stateManager(self, v47, v48))
  {
    v55 = objc_msgSend_stateManager(self, v53, v54);
    (*(block + 2))(block, v55, 0, 0);
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
      v9[2] = sub_1AF301598;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF3015F8;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 48) & 1) == 0)
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

- (void)_dump:(id)_dump
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_defaultCStringEncoding(MEMORY[0x1E696AEC0], a2, _dump);
  v7 = objc_msgSend_cStringUsingEncoding_(_dump, v6, v5);
  v10 = objc_msgSend_description(self, v8, v9);
  v13 = objc_msgSend_defaultCStringEncoding(MEMORY[0x1E696AEC0], v11, v12);
  v15 = objc_msgSend_cStringUsingEncoding_(v10, v14, v13);
  printf("%s%s {\n", v7, v15);
  v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16, @"\t%@", _dump);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = objc_msgSend_childNodes(self, v18, v19);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v31, v35, 16);
  if (v22)
  {
    v25 = v22;
    v26 = *v32;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v20);
        }

        objc_msgSend__dump_(*(*(&v31 + 1) + 8 * i), v23, v17);
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v31, v35, 16);
    }

    while (v25);
  }

  v28 = objc_msgSend_defaultCStringEncoding(MEMORY[0x1E696AEC0], v23, v24);
  v30 = objc_msgSend_cStringUsingEncoding_(_dump, v29, v28);
  printf("%s}\n", v30);
}

- (void)dump
{
  v4 = objc_msgSend_name(self, a2, v2);
  NSLog(&cfstr_DumpNodeTree.isa, v4);
  objc_msgSend__dump_(self, v5, &stru_1F2575650);
  NSLog(&stru_1F25869F0.isa);
}

+ (id)_dumpNodeTree:(id)tree tab:(id)tab
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AEC0];
  if (objc_msgSend_name(tree, a2, tree))
  {
    v10 = objc_msgSend_name(tree, v8, v9);
  }

  else
  {
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, @"<%p>", tree);
  }

  v12 = objc_msgSend_stringWithFormat_(v7, v11, @"%@%@\n", tab, v10);
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"\t%@", tab);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = objc_msgSend_childNodes(tree, v15, v16);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v27, v31, 16);
  if (v19)
  {
    v21 = v19;
    v22 = *v28;
    do
    {
      v23 = 0;
      do
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = objc_msgSend__dumpNodeTree_tab_(self, v20, *(*(&v27 + 1) + 8 * v23), v14);
        v12 = objc_msgSend_stringByAppendingString_(v12, v25, v24);
        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v27, v31, 16);
    }

    while (v21);
  }

  return v12;
}

- (id)_dumpTree
{
  v3 = objc_opt_class();

  return objc_msgSend__dumpNodeTree_tab_(v3, v4, self, &stru_1F2575650);
}

- (void)_setAttributes:(id)attributes
{
  os_unfair_lock_lock(&self->_valueForKeyLock);

  self->_valueForKey = attributes;

  os_unfair_lock_unlock(&self->_valueForKeyLock);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(VFXCopyContext);
  v5 = objc_alloc_init(objc_opt_class());
  sub_1AFDF50C8(v4, self, v5);
  objc_msgSend__copyWithOptions_to_copyContext_(self, v6, 0, v5, v4);
  sub_1AFDF51FC(v4, v5);

  return v5;
}

- (id)copyWithOptions:(unint64_t)options
{
  objc_msgSend_begin(VFXTransaction, a2, options);
  objc_msgSend_setImmediateMode_(VFXTransaction, v5, 1);
  v6 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyWithOptions_to_(self, v7, options, v6);
  objc_msgSend_commitImmediate(VFXTransaction, v8, v9);
  return v6;
}

- (void)_copyWithOptions:(unint64_t)options to:(id)to copyContext:(id)context
{
  optionsCopy = options;
  v229[1] = *MEMORY[0x1E69E9840];
  v11 = sub_1AFDF4FDC(context);
  if (*(self + 48))
  {
    v12 = *(to + 1);
    if (v12)
    {
      sub_1AF16CDFC(v12, 0);
    }

    *(to + 48) |= 1u;
  }

  v13 = objc_msgSend_name(self, v9, v10);
  objc_msgSend_setName_(to, v14, v13);
  if ((*(self + 48) & 8) != 0)
  {
    objc_msgSend_position(self, v15, v16);
    objc_msgSend_setPosition_(to, v52, v53);
    objc_msgSend_scale(self, v54, v55);
    objc_msgSend_setScale_(to, v56, v57);
    v58 = (*(self + 49) >> 2) & 3;
    if (v58 > 1)
    {
      if (v58 == 2)
      {
        objc_msgSend_orientation(self, v19, v20);
        objc_msgSend_setOrientation_(to, v210, v211);
      }
    }

    else if (v58)
    {
      objc_msgSend_rotation(self, v19, v20);
      objc_msgSend_setRotation_(to, v212, v213);
    }

    else
    {
      objc_msgSend_eulerAngles(self, v19, v20);
      objc_msgSend_setEulerAngles_(to, v59, v60);
    }
  }

  else
  {
    objc_msgSend_transform(self, v15, v16);
    objc_msgSend_setTransform_(to, v17, v18);
  }

  if ((*(self + 48) & 0x20) != 0)
  {
    objc_msgSend_pivot(self, v19, v20);
    objc_msgSend_setPivot_(to, v21, v22);
  }

  isHidden = objc_msgSend_isHidden(self, v19, v20);
  objc_msgSend_setHidden_(to, v24, isHidden);
  objc_msgSend_opacity(self, v25, v26);
  objc_msgSend_setOpacity_(to, v27, v28);
  v31 = objc_msgSend_renderingOrder(self, v29, v30);
  objc_msgSend_setRenderingOrder_(to, v32, v31);
  v35 = objc_msgSend_categoryBitMask(self, v33, v34);
  objc_msgSend_setCategoryBitMask_(to, v36, v35);
  v39 = objc_msgSend_light(self, v37, v38);
  v42 = objc_msgSend_type(v39, v40, v41);
  v45 = objc_msgSend_light(self, v43, v44);
  v47 = v45;
  if (v42 == 4)
  {
    v48 = objc_msgSend_copy(v45, v46, v45);
    objc_msgSend_setLight_(to, v49, v48);

    if ((optionsCopy & 2) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

  if ((optionsCopy & 4) != 0)
  {
    v47 = sub_1AF2BED30(v45, context);
  }

  objc_msgSend_setLight_(to, v46, v47);
  if ((optionsCopy & 2) == 0)
  {
LABEL_18:
    v61 = objc_msgSend_particleEmitter(self, v50, v51);
    v62 = sub_1AF2BED30(v61, context);
    objc_msgSend_setParticleEmitter_(to, v63, v62);
    v66 = objc_msgSend_particleCollider(self, v64, v65);
    v67 = sub_1AF2BED30(v66, context);
    objc_msgSend_setParticleCollider_(to, v68, v67);
    v71 = objc_msgSend_behaviorGraph(self, v69, v70);
    if (v71)
    {
      v72 = v71;
      if (objc_msgSend_particleEmitter(to, v50, v51) || objc_msgSend_particleCollider(to, v73, v74))
      {
        v75 = objc_msgSend_particleCollider(to, v73, v74);
        v79 = objc_msgSend_coreEntityHandle(v75, v76, v77);
        if (!v79)
        {
          v80 = objc_msgSend_particleEmitter(to, v78, 0);
          v79 = objc_msgSend_coreEntityHandle(v80, v81, v82);
        }

        v83 = objc_msgSend_behaviorGraphWithEntityHandle_(VFXBehaviorGraph, v78, v79);
      }

      else
      {
        v214 = objc_msgSend_behaviorGraph(self, v73, v74);
        v83 = sub_1AF2BED30(v214, context);
      }

      v86 = v83;
      if (v83)
      {
        objc_msgSend_setBehaviorGraph_(to, v84, v83);
        if (v11)
        {
          CFDictionarySetValue(v11, v72, v86);
        }
      }

      v87 = objc_msgSend_behaviorGraph(to, v84, v85);
      v90 = objc_msgSend_entityObject(v87, v88, v89);
      v228 = objc_msgSend_identifier(self, v91, v92);
      v229[0] = to;
      v94 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v93, v229, &v228, 1);
      objc_msgSend_updateVFXObjectReferences_(v90, v95, v94);
    }
  }

LABEL_28:
  v96 = objc_msgSend_camera(self, v50, v51);
  v98 = v96;
  if ((optionsCopy & 4) != 0)
  {
    v98 = sub_1AF2BED30(v96, context);
  }

  objc_msgSend_setCamera_(to, v97, v98);
  v101 = objc_msgSend_forceField(self, v99, v100);
  v104 = objc_msgSend_copy(v101, v102, v103);
  objc_msgSend_setForceField_(to, v105, v104);
  v108 = objc_msgSend_castsShadow(self, v106, v107);
  objc_msgSend_setCastsShadow_(to, v109, v108);
  v112 = objc_msgSend_usesDepthPrePass(self, v110, v111);
  objc_msgSend_setUsesDepthPrePass_(to, v113, v112);
  v116 = objc_msgSend_constraints(self, v114, v115);
  if (objc_msgSend_count(v116, v117, v118))
  {
    v215 = optionsCopy;
    toCopy = to;
    v121 = objc_alloc(MEMORY[0x1E695DF70]);
    v124 = objc_msgSend_count(v116, v122, v123);
    v126 = objc_msgSend_initWithCapacity_(v121, v125, v124);
    v222 = 0u;
    v223 = 0u;
    v224 = 0u;
    v225 = 0u;
    v128 = objc_msgSend_countByEnumeratingWithState_objects_count_(v116, v127, &v222, v227, 16);
    if (v128)
    {
      v131 = v128;
      v132 = *v223;
      do
      {
        for (i = 0; i != v131; ++i)
        {
          if (*v223 != v132)
          {
            objc_enumerationMutation(v116);
          }

          v134 = *(*(&v222 + 1) + 8 * i);
          v136 = objc_msgSend_copy(v134, v129, v130);
          if (v11)
          {
            CFDictionarySetValue(v11, v134, v136);
          }

          objc_msgSend_addObject_(v126, v135, v136);
        }

        v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v116, v129, &v222, v227, 16);
      }

      while (v131);
    }

    to = toCopy;
    objc_msgSend_setConstraints_(toCopy, v129, v126);

    optionsCopy = v215;
  }

  v137 = objc_msgSend_deformers(self, v119, v120);
  if (objc_msgSend_count(v137, v138, v139))
  {
    v142 = objc_alloc(MEMORY[0x1E695DF70]);
    v145 = objc_msgSend_count(v137, v143, v144);
    v147 = objc_msgSend_initWithCapacity_(v142, v146, v145);
    v218 = 0u;
    v219 = 0u;
    v220 = 0u;
    v221 = 0u;
    v149 = objc_msgSend_countByEnumeratingWithState_objects_count_(v137, v148, &v218, v226, 16);
    if (v149)
    {
      v151 = v149;
      v152 = *v219;
      do
      {
        for (j = 0; j != v151; ++j)
        {
          if (*v219 != v152)
          {
            objc_enumerationMutation(v137);
          }

          v154 = sub_1AF2BED30(*(*(&v218 + 1) + 8 * j), context);
          objc_msgSend_addObject_(v147, v155, v154);
        }

        v151 = objc_msgSend_countByEnumeratingWithState_objects_count_(v137, v156, &v218, v226, 16);
      }

      while (v151);
    }

    objc_msgSend_setDeformers_(to, v150, v147);
  }

  isAuthoring = objc_msgSend_isAuthoring(self, v140, v141);
  objc_msgSend_setIsAuthoring_(to, v158, isAuthoring);
  v161 = objc_msgSend_editorLocked(self, v159, v160);
  objc_msgSend_setEditorLocked_(to, v162, v161);
  v165 = objc_msgSend_focusBehavior(self, v163, v164);
  objc_msgSend_setFocusBehavior_(to, v166, v165);
  if (objc_msgSend_isAuthoring(self, v167, v168) && objc_msgSend_authoringTargetNode(self, v169, v170))
  {
    v171 = objc_msgSend_authoringTargetNode(self, v169, v170);
    objc_msgSend_setAuthoringTargetNode_(to, v172, v171);
  }

  isGizmo = objc_msgSend_isGizmo(self, v169, v170);
  objc_msgSend_setGizmo_(to, v174, isGizmo);
  os_unfair_lock_lock(&self->_valueForKeyLock);
  valueForKey = self->_valueForKey;
  v217[0] = MEMORY[0x1E69E9820];
  v217[1] = 3221225472;
  v217[2] = sub_1AF30234C;
  v217[3] = &unk_1E7A7E7E8;
  v217[4] = to;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(valueForKey, v176, v217);
  os_unfair_lock_unlock(&self->_valueForKeyLock);
  if ((optionsCopy & 1) == 0)
  {
    objc_msgSend__copyAnimationsFrom_(to, v177, self);
  }

  objc_msgSend__copyBindingsFrom_(to, v177, self);
  v180 = objc_msgSend_model(self, v178, v179);
  if (v180)
  {
    v183 = v180;
    if ((optionsCopy & 4) != 0)
    {
      v183 = sub_1AF2BED30(v180, context);
    }

    objc_msgSend_setModel_(to, v181, v183);
  }

  v184 = objc_msgSend_morpher(self, v181, v182);
  if (v184)
  {
    v187 = sub_1AF2BED30(v184, context);
    objc_msgSend_setMorpher_(to, v188, v187);
  }

  v189 = objc_msgSend_skinner(self, v185, v186);
  if (v189)
  {
    v192 = sub_1AF2BED30(v189, context);
    objc_msgSend_setSkinner_(to, v193, v192);
  }

  v194 = objc_msgSend_physicsBody(self, v190, v191);
  if (v194)
  {
    v197 = v194;
    v198 = sub_1AF2BED30(v194, context);
    objc_msgSend_setPhysicsBody_(to, v199, v198);
    if (v11)
    {
      CFDictionarySetValue(v11, v197, v198);
    }
  }

  if (objc_msgSend_prefab(self, v195, v196))
  {
    v202 = objc_msgSend_prefab(self, v200, v201);
    v203 = sub_1AF2BED30(v202, context);
    objc_msgSend_setPrefab_(to, v204, v203);
  }

  v205 = objc_msgSend_stateManager(self, v200, v201);
  if (v205)
  {
    v207 = sub_1AF2BED30(v205, context);
    objc_msgSend_setStateManager_(to, v208, v207);
  }

  *(to + 48) = *(to + 48) & 0xBF | *(self + 48) & 0x40;
  objc_msgSend_setIsEyeSightFrame_(to, v206, *(self + 49) & 1);
  objc_msgSend_setIsHandTrackingRoot_(to, v209, (*(self + 49) >> 1) & 1);
}

- (id)_copyRecursively:(unint64_t)recursively copyContext:(id)context
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(objc_opt_class());
  if (context)
  {
    v9 = sub_1AFDF4FDC(context);
    CFDictionarySetValue(v9, self, v8);
  }

  objc_msgSend__copyWithOptions_to_copyContext_(self, v7, recursively, v8, context);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = objc_msgSend_childNodes(self, v10, v11, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v24, v28, 16);
  if (v14)
  {
    v17 = v14;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v24 + 1) + 8 * i);
        if ((objc_msgSend_isGizmo(v20, v15, v16) & 1) == 0)
        {
          v21 = objc_msgSend__copyRecursively_copyContext_(v20, v15, recursively, context);
          objc_msgSend_addChildNode_(v8, v22, v21);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v24, v28, 16);
    }

    while (v17);
  }

  return v8;
}

- (id)_cloneWithOption:(unint64_t)option copyContext:(id)context
{
  objc_msgSend_begin(VFXTransaction, a2, option);
  objc_msgSend_setImmediateMode_(VFXTransaction, v7, 1);
  v9 = objc_msgSend__copyRecursively_copyContext_(self, v8, option | 1, context);
  objc_msgSend_commitImmediate(VFXTransaction, v10, v11);
  sub_1AF302550(self, v9);

  return v9;
}

- (id)cloneWithOption:(unint64_t)option
{
  v5 = objc_alloc_init(VFXCopyContext);
  v7 = objc_msgSend__cloneWithOption_copyContext_(self, v6, option, v5);
  sub_1AFDF51FC(v5, v7);

  return v7;
}

- (id)deepCloneWithContext:(id)context
{
  v4 = objc_msgSend__deepCloneWithContext_(self, a2, context);
  sub_1AFDF51FC(context, v4);
  return v4;
}

- (id)deepClone
{
  v3 = objc_alloc_init(VFXCopyContext);
  v5 = objc_msgSend_deepCloneWithContext_(self, v4, v3);

  return v5;
}

+ (VFXNode)nodeWithNodeRef:(__CFXNode *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v8 = objc_msgSend_initWithNodeRef_(v6, v7, ref);

    return v8;
  }

  return result;
}

- (id)childNodeWithName:(id)name recursively:(BOOL)recursively
{
  recursivelyCopy = recursively;
  v34 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_childNodes(self, a2, name);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v28, v33, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v29;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v29 != v12)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v28 + 1) + 8 * v13);
      v15 = objc_msgSend_name(v14, v9, v10);
      if (objc_msgSend_isEqualToString_(v15, v16, name))
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v28, v33, 16);
        if (v11)
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
    v14 = 0;
  }

  if (!v14 && recursivelyCopy)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v24, v32, 16);
    if (v17)
    {
      v19 = v17;
      v20 = *v25;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v6);
          }

          v22 = objc_msgSend_childNodeWithName_recursively_(*(*(&v24 + 1) + 8 * i), v18, name, 1);
          if (v22)
          {
            return v22;
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v18, &v24, v32, 16);
        v14 = 0;
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      return 0;
    }
  }

  return v14;
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

- (void)_childNodesWithAttribute:(Class)attribute output:(id)output recursively:(BOOL)recursively
{
  recursivelyCopy = recursively;
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = objc_msgSend_childNodes(self, a2, attribute, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v25, v29, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        if (objc_opt_class() == attribute && objc_msgSend_camera(v14, v15, v16) || objc_opt_class() == attribute && objc_msgSend_light(v14, v17, v18) || objc_opt_class() == attribute && objc_msgSend_model(v14, v19, v20) || objc_opt_class() == attribute && objc_msgSend_morpher(v14, v21, v22) || objc_opt_class() == attribute && objc_msgSend_skinner(v14, v23, v24))
        {
          objc_msgSend_addObject_(output, v23, v14);
        }

        if (recursivelyCopy)
        {
          objc_msgSend__childNodesWithAttribute_output_recursively_(v14, v23, attribute, output, 1);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v23, &v25, v29, 16);
    }

    while (v11);
  }
}

- (id)childNodesWithAttribute:(Class)attribute recursively:(BOOL)recursively
{
  recursivelyCopy = recursively;
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, attribute);
  objc_msgSend__childNodesWithAttribute_output_recursively_(self, v8, attribute, v7, recursivelyCopy);
  return v7;
}

- (id)objectInChildNodesWithAttribute:(id)attribute firstOnly:(BOOL)only
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  onlyCopy = only;
  v6 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, attribute);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF303148;
  v9[3] = &unk_1E7A7ECF0;
  v9[4] = attribute;
  v9[5] = v10;
  objc_msgSend__childNodesPassingTest_recursively_output_(self, v7, v9, 1, v6);
  _Block_object_dispose(v10, 8);
  return v6;
}

- (int64_t)coreEntity
{
  if (*(self + 48))
  {
    result = sub_1AF1BC054(self->_node);
    if (result)
    {

      return sub_1AF16AC70(result, v5, v6);
    }
  }

  else
  {
    v3 = objc_msgSend_behaviorGraph(self, a2, v2);

    return MEMORY[0x1EEE66B58](v3, sel_entity, v4);
  }

  return result;
}

- (id)coreEntityManager
{
  if (*(self + 48))
  {
    result = sub_1AF1BC054(self->_node);
    if (result)
    {
      v7 = sub_1AF16A4C8(result, v5, v6);

      return objc_msgSend_opaqueEntityManager(v7, v8, v9);
    }
  }

  else
  {
    v3 = objc_msgSend_behaviorGraph(self, a2, v2);

    return MEMORY[0x1EEE66B58](v3, sel_entityManager, v4);
  }

  return result;
}

- (id)_findComponentWithType:(int64_t)type
{
  v47 = *MEMORY[0x1E69E9840];
  if (*(self + 48))
  {
    switch(type)
    {
      case 0:
        v8 = sub_1AF1B75E8(self->_node, a2);
        if (!v8)
        {
          return 0;
        }

        return MEMORY[0x1EEE66B58](VFXLight, sel_presentationLightWithLightRef_, v8);
      case 1:
        v38 = sub_1AF1BB260(self->_node, a2);
        if (!v38)
        {
          return 0;
        }

        return MEMORY[0x1EEE66B58](VFXCamera, sel_presentationCameraWithCameraRef_, v38);
      case 2:
        v36 = sub_1AF1B75A0(self->_node, a2);
        if (!v36)
        {
          return 0;
        }

        return objc_msgSend_presentationModelWithModelRef_(VFXModel, v37, v36);
      case 3:
        v35 = sub_1AF1B92C8(self->_node, a2);
        if (!v35)
        {
          return 0;
        }

        return MEMORY[0x1EEE66B58](VFXSkinner, sel_skinnerWithSkinnerRef_, v35);
      case 4:
        v9 = sub_1AF1B9158(self->_node, a2);
        if (!v9)
        {
          return 0;
        }

        return MEMORY[0x1EEE66B58](VFXMorpher, sel_presentationMorpherWithMorpherRef_, v9);
      case 6:
        v13 = sub_1AF1BBBCC(self->_node, a2);
        if (!v13)
        {
          return 0;
        }

        v16 = v13;
        v17 = MEMORY[0x1E695DF70];
        v18 = objc_msgSend_count(v13, v14, v15);
        components = objc_msgSend_arrayWithCapacity_(v17, v19, v18);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v20, &v42, v46, 16);
        if (v21)
        {
          v23 = v21;
          v24 = *v43;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v43 != v24)
              {
                objc_enumerationMutation(v16);
              }

              v26 = objc_msgSend_presentationConstraintWithConstraintRef_(VFXConstraint, v22, *(*(&v42 + 1) + 8 * i));
              objc_msgSend_addObject_(components, v27, v26);
            }

            v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v22, &v42, v46, 16);
          }

          while (v23);
        }

        return components;
      case 7:
        components = sub_1AF1BBDF8(self->_node, a2);
        if (!components)
        {
          return 0;
        }

        return components;
      case 8:
        v39 = sub_1AF1BBFEC(self->_node, a2);
        if (!v39)
        {
          return 0;
        }

        return MEMORY[0x1EEE66B58](VFXForceField, sel_presentationForceFieldWithForceFieldRef_, v39);
      case 9:
        node = self->_node;

        return sub_1AF1BB398(node, a2);
      case 10:
        v28 = sub_1AF1BC054(self->_node);
        if (!v28)
        {
          goto LABEL_35;
        }

        v29 = objc_msgSend_presentationHandleWithCFXCoreEntityHandle_(VFXCoreEntityHandle, a2, v28);

        return MEMORY[0x1EEE66B58](VFXBehaviorGraph, sel_presentationBehaviorGraphWithEntityHandle_, v29);
      case 11:
        goto LABEL_39;
      case 12:
LABEL_35:
        v30 = sub_1AF1BC05C(self->_node, a2);
        if (v30)
        {
          v31 = objc_msgSend_presentationHandleWithCFXCoreEntityHandle_(VFXCoreEntityHandle, a2, v30);

          result = MEMORY[0x1EEE66B58](VFXParticleCollider, sel_presentationParticleColliderWithEntityHandle_, v31);
        }

        else
        {
LABEL_39:
          v32 = sub_1AF1B83E8(self->_node, a2);
          if (!v32)
          {
            return 0;
          }

          v34 = objc_msgSend_presentationHandleWithCFXCoreEntityHandle_(VFXCoreEntityHandle, v33, v32);

          result = MEMORY[0x1EEE66B58](VFXParticleEmitter, sel_presentationParticleEmitterWithEntityHandle_, v34);
        }

        break;
      case 14:
        v10 = objc_msgSend_nodeWithNodeRef_(VFXNode, a2, self->_node);

        return objc_msgSend_stateManager(v10, v11, v12);
      default:
        return 0;
    }

    return result;
  }

  if ((((*(self + 26) & 0x7FFFu) >> type) & 1) == 0)
  {
    return 0;
  }

  components = self->_components;
  if (!components)
  {
    return components;
  }

  while (objc_msgSend_type(components, a2, type) != type)
  {
    components = objc_msgSend_next(components, v6, v7);
    if (!components)
    {
      return components;
    }
  }

  return objc_msgSend_component(components, v6, v7);
}

- (void)_removeComponentWithType:(int64_t)type
{
  components = self->_components;
  if (components)
  {
    if (objc_msgSend_type(self->_components, a2, type) == type)
    {
      v8 = 0;
LABEL_7:
      v13 = objc_msgSend_type(components, v6, v7);
      v16 = v13 > 0xC || ((1 << v13) & 0x1D1F) == 0;
      if (!v16 && self->_world)
      {
        v17 = objc_msgSend_component(components, v14, v15);
        objc_msgSend_removeWorldReference_(v17, v18, self->_world);
      }

      v19 = objc_msgSend_next(components, v14, v15);
      if (v8)
      {
        objc_msgSend_setNext_(v8, v20, v19);
      }

      else
      {
        self->_components = v19;
      }

      *(self + 26) &= ~(1 << type) | 0x8000;
    }

    else
    {
      v9 = components;
      while (1)
      {
        v10 = objc_msgSend_next(v9, v6, v7);
        if (!v10)
        {
          break;
        }

        components = v10;
        v8 = v9;
        v9 = v10;
        if (objc_msgSend_type(v10, v11, v12) == type)
        {
          goto LABEL_7;
        }
      }
    }
  }
}

- (void)_assignComponent:(id)component toContainerWithType:(int64_t)type
{
  v7 = (type < 0x10) & (0x1D1Fu >> type);
  v8 = 1 << type;
  if ((*(self + 26) & (1 << type) & 0x7FFF) != 0 && (components = self->_components) != 0)
  {
    while (objc_msgSend_type(components, a2, component) != type)
    {
      components = objc_msgSend_next(components, v10, v11);
      if (!components)
      {
        goto LABEL_5;
      }
    }

    if (v7)
    {
      if (self->_world)
      {
        v18 = objc_msgSend_component(components, v10, v11);
        objc_msgSend_removeWorldReference_(v18, v19, self->_world);
      }

      objc_msgSend_setComponent_(components, v10, component);
      world = self->_world;
      if (world)
      {

        objc_msgSend_addWorldReference_(component, v20, world);
      }
    }

    else
    {

      objc_msgSend_setComponent_(components, v10, component);
    }
  }

  else
  {
LABEL_5:
    v12 = [VFXNodeComponent alloc];
    v14 = objc_msgSend_initWithType_component_(v12, v13, type, component);
    objc_msgSend_setNext_(v14, v15, self->_components);

    self->_components = v14;
    if (v7)
    {
      v17 = self->_world;
      if (v17)
      {
        objc_msgSend_addWorldReference_(component, v16, v17);
      }
    }

    *(self + 26) |= v8 & 0x7FFF;
  }
}

- (id)__light
{
  result = objc_msgSend__findComponentWithType_(self, a2, 0);
  if (*(self + 48))
  {

    return objc_msgSend_presentationLight(result, v4, v5);
  }

  return result;
}

- (id)__camera
{
  result = objc_msgSend__findComponentWithType_(self, a2, 1);
  if (*(self + 48))
  {

    return objc_msgSend_presentationCamera(result, v4, v5);
  }

  return result;
}

- (id)__model
{
  result = objc_msgSend__findComponentWithType_(self, a2, 2);
  if (*(self + 48))
  {

    return objc_msgSend_presentationModel(result, v4, v5);
  }

  return result;
}

- (id)__morpher
{
  result = objc_msgSend__findComponentWithType_(self, a2, 4);
  if (*(self + 48))
  {

    return objc_msgSend_presentationObject(result, v4, v5);
  }

  return result;
}

- (id)hitTestWithSegmentFromPoint:(VFXNode *)self toPoint:(SEL)point options:(id)options
{
  v29 = v3;
  v30 = v4;
  v7 = objc_msgSend_worldRef(self, point, options);
  if (v7)
  {
    v10 = v7;
    sub_1AF1CEA20(v7, v8);
    memset(v33, 0, sizeof(v33));
    if (options)
    {
      if (objc_msgSend_objectForKey_(options, v11, @"kHitTestRootNode"))
      {
        objc_msgSend_objectForKey_(options, v13, @"kHitTestRootNode");
      }

      v15 = objc_msgSend_mutableCopy(options, v13, v14);
    }

    else
    {
      v15 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v11, v12);
    }

    v19 = v15;
    objc_msgSend_convertPosition_toNode_(self, v16, 0, v29);
    v32 = v20;
    objc_msgSend_convertPosition_toNode_(self, v21, 0, v30);
    v31 = v22;
    sub_1AF1DA1B4(v33, &v32, &v31);
    v23 = sub_1AF286358(v10, v33, v19);
    v17 = objc_msgSend_hitTestResultsFromHitTestResultRef_(VFXHitTestResult, v24, v23);
    if (v23)
    {
      CFRelease(v23);
    }

    sub_1AF1CEA9C(v10, v25);
    v18 = objc_msgSend_count(v17, v26, v27);
  }

  else
  {
    v17 = 0;
    v18 = objc_msgSend_count(0, v8, v9);
  }

  if (v18)
  {
    return v17;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)_updateTransform
{
  if ((*(self + 48) & 8) == 0)
  {
    v3 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF745C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = (*(self + 49) >> 2) & 3;
  if (v11 > 1)
  {
    v24 = 0uLL;
    v25 = 0uLL;
    v27 = 0uLL;
    v26 = 0;
    if (v11 != 2)
    {
      goto LABEL_15;
    }

    v28 = *self->_anon_90;
    v29 = vmulq_f32(v28, v28);
    v30 = vmulq_laneq_f32(v28, v28, 3);
    v31 = vmuls_lane_f32(v28.f32[0], *v28.f32, 1);
    v32 = vmuls_lane_f32(COERCE_FLOAT(HIDWORD(*self->_anon_90)), v28, 2);
    v33 = vmuls_lane_f32(v28.f32[0], v28, 2);
    v34 = v29.f32[1];
    v35.i32[3] = 0;
    v35.f32[0] = (0.5 - v29.f32[1]) - v29.f32[2];
    v36.i32[3] = 0;
    v35.f32[1] = v31 + v30.f32[2];
    v35.f32[2] = v33 - v30.f32[1];
    v24 = vaddq_f32(v35, v35);
    v37 = 0.5 - v29.f32[0];
    v38.i32[3] = 0;
    v38.f32[0] = v31 - v30.f32[2];
    v38.f32[1] = (0.5 - v29.f32[0]) - v29.f32[2];
    v38.f32[2] = v32 + v30.f32[0];
    v25 = vaddq_f32(v38, v38);
    v36.f32[0] = v33 + v30.f32[1];
    v36.f32[1] = v32 - v30.f32[0];
    v36.f32[2] = v37 - v34;
    v27 = vaddq_f32(v36, v36);
LABEL_14:
    v26 = 1065353216;
    goto LABEL_15;
  }

  if (v11)
  {
    v39 = *self->_anon_90;
    v40 = vmulq_f32(v39, v39);
    v40.f32[0] = v40.f32[2] + vaddv_f32(*v40.f32);
    v41 = vdupq_lane_s32(*v40.f32, 0);
    v41.i32[3] = 0;
    v42 = vrsqrteq_f32(v41);
    v43 = vmulq_f32(v42, vrsqrtsq_f32(v41, vmulq_f32(v42, v42)));
    v44 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v40.f32[0] != 0.0)), 0x1FuLL));
    v44.i32[3] = 0;
    v71 = vbslq_s8(vcltzq_s32(v44), vmulq_f32(v39, vmulq_f32(v43, vrsqrtsq_f32(v41, vmulq_f32(v43, v43)))), v39);
    v45 = __sincosf_stret(v39.f32[3]);
    v46 = v71;
    v47 = vmulq_f32(v46, v46);
    __asm { FMOV            V2.4S, #1.0 }

    v53 = vmlaq_n_f32(v47, vsubq_f32(_Q2, v47), v45.__cosval);
    v54 = (1.0 - v45.__cosval) * vmuls_lane_f32(v46.f32[0], *v46.f32, 1);
    v55 = (1.0 - v45.__cosval) * vmuls_lane_f32(v46.f32[0], v46, 2);
    v56 = (1.0 - v45.__cosval) * vmuls_lane_f32(v71.f32[1], v71, 2);
    v57 = vmulq_n_f32(v71, -v45.__sinval);
    v46.f32[0] = v54 - v57.f32[2];
    *&v58 = v55 + v57.f32[1];
    *&v59 = v54 + v57.f32[2];
    *&v60 = v56 - v57.f32[0];
    v27.f32[0] = v55 - v57.f32[1];
    v27.f32[1] = v56 + v57.f32[0];
    v27.i64[1] = v53.u32[2];
    v24.i64[0] = __PAIR64__(v46.u32[0], v53.u32[0]);
    v24.i64[1] = v58;
    v25.i64[0] = __PAIR64__(v53.u32[1], v59);
    v25.i64[1] = v60;
    goto LABEL_14;
  }

  v70 = *self->_anon_90;
  v12 = __sincosf_stret(*&v70);
  v13.i32[0] = 0;
  v13.i32[1] = LODWORD(v12.__cosval);
  v13.i64[1] = LODWORD(v12.__sinval);
  v14.i32[0] = 0;
  v14.f32[1] = -v12.__sinval;
  v14.i64[1] = LODWORD(v12.__cosval);
  v68 = v14;
  v69 = v13;
  v15 = __sincosf_stret(*(&v70 + 1));
  v16.i32[3] = 0;
  v16.i64[0] = LODWORD(v15.__cosval);
  v16.f32[2] = -v15.__sinval;
  v17.i64[0] = LODWORD(v15.__sinval);
  v17.i64[1] = LODWORD(v15.__cosval);
  v66 = v17;
  v67 = v16;
  v18 = __sincosf_stret(*(&v70 + 2));
  v19 = 0;
  v20.i32[1] = 0;
  v20.i64[1] = 0;
  v72 = xmmword_1AFE20150;
  v73 = v69;
  v74 = v68;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  do
  {
    *(&v75 + v19) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, COERCE_FLOAT(*(&v72 + v19))), xmmword_1AFE20160, *(&v72 + v19), 1), v66, *(&v72 + v19), 2);
    v19 += 16;
  }

  while (v19 != 48);
  v21 = 0;
  cosval_low = LODWORD(v18.__cosval);
  cosval_low.i32[1] = LODWORD(v18.__sinval);
  cosval_low.i32[2] = 0;
  v20.f32[0] = -v18.__sinval;
  v23 = v20;
  v23.i32[1] = LODWORD(v18.__cosval);
  v23.i32[2] = 0;
  v72 = v75;
  v73 = v76;
  v74 = v77;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  do
  {
    *(&v75 + v21) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(cosval_low, COERCE_FLOAT(*(&v72 + v21))), v23, *(&v72 + v21), 1), xmmword_1AFE20180, *(&v72 + v21), 2);
    v21 += 16;
  }

  while (v21 != 48);
  v24 = v75;
  v25 = v76;
  v27 = v77;
  v24.i32[3] = 0;
  v25.i32[3] = 0;
  v26 = 1065353216;
  v27.i32[3] = 0;
LABEL_15:
  v61 = *self->_scale;
  v62 = vmulq_n_f32(v24, v61.f32[0]);
  v63 = vmulq_lane_f32(v25, *v61.f32, 1);
  v64 = vmulq_laneq_f32(v27, v61, 2);
  v65 = *self->_position;
  HIDWORD(v65) = v26;
  *self->_anon_40 = v62;
  *&self->_anon_40[16] = v63;
  *&self->_anon_40[32] = v64;
  *&self->_anon_40[48] = v65;
  *(self + 48) |= 0x10u;
}

- (void)_updateAffine
{
  if ((*(self + 48) & 0x10) == 0)
  {
    v3 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF74D4(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  sub_1AF3041C0(self->_anon_90, self->_position, self->_scale, *self->_anon_40, *&self->_anon_40[16], *&self->_anon_40[32], *&self->_anon_40[48]);
  *(self + 48) |= 8u;
  *(self + 49) = *(self + 49) & 0xF3 | 8;
}

- (double)_quaternion
{
  if ((self[3].i8[0] & 8) == 0)
  {
    objc_msgSend__updateAffine(self, v1, v2);
  }

  v4 = (self[3].u8[1] >> 2) & 3;
  if (v4 > 1)
  {
    v13.i64[0] = 0;
    if (v4 != 3)
    {
      v13 = self[9];
    }
  }

  else if (v4)
  {
    objc_msgSend_rotation(self, v1, v2);
    v15 = vmulq_f32(v14, v14);
    v15.f32[0] = v15.f32[2] + vaddv_f32(*v15.f32);
    v16 = vdupq_lane_s32(*v15.f32, 0);
    v16.i32[3] = 0;
    v17 = vrsqrteq_f32(v16);
    v18 = vmulq_f32(v17, vrsqrtsq_f32(v16, vmulq_f32(v17, v17)));
    v19 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v15.f32[0] != 0.0)), 0x1FuLL));
    v19.i32[3] = 0;
    v13.i64[0] = vmulq_n_f32(vbslq_s8(vcltzq_s32(v19), vmulq_f32(v14, vmulq_f32(v18, vrsqrtsq_f32(v16, vmulq_f32(v18, v18)))), v14), __sincosf_stret(vmuls_lane_f32(0.5, v14, 3)).__sinval).u64[0];
  }

  else
  {
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    v6 = vmulq_f32(self[9], v5);
    v6.i32[3] = 0;
    x = v6;
    v22 = _simd_cos_f4(v6);
    v13 = _simd_sin_f4(x);
    v7 = vextq_s8(v22, v22, 4uLL);
    v8 = vmulq_f32(vzip1q_s32(vrev64q_s32(v22), v22), vextq_s8(vzip1q_s32(v7, v13), v7, 8uLL));
    v9 = vzip2q_s32(vzip1q_s32(v22, v13), v13);
    v9.f32[3] = -v13.f32[0];
    v10 = vextq_s8(v13, v13, 8uLL);
    v11 = vtrn1q_s32(v13, vextq_s8(v22, v22, 8uLL));
    v13.i32[3] = v13.i32[1];
    v12 = vtrn1q_s32(v10, v22);
    v12.f32[1] = -v22.f32[0];
    v13.i64[0] = vmlaq_f32(vrev64q_s32(vmulq_f32(vmulq_f32(v13, v9), v12)), v11, v8).u64[0];
  }

  return *v13.i64;
}

- (void)_setQuaternion:(float32x4_t *)quaternion
{
  if ((quaternion[3].i8[0] & 8) == 0)
  {
    objc_msgSend__updateAffine(quaternion, v2, v3);
  }

  result = objc_msgSend__quaternion(quaternion, v2, v3, *&a2);
  if ((vminvq_u32(vceqq_f32(v11, v7)) & 0x80000000) == 0)
  {
    objc_msgSend_willChangeValueForKey_(quaternion, v6, @"orientation");
    quaternion[3].i8[0] &= ~0x10u;
    quaternion[9] = v11;
    quaternion[3].i8[1] = quaternion[3].i8[1] & 0xF3 | 8;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1AF304870;
    v12[3] = &unk_1E7A7E5C8;
    quaternionCopy = quaternion;
    v13 = v11;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v8, quaternion, @"orientation", v12);
    return objc_msgSend_didChangeValueForKey_(quaternion, v9, @"orientation");
  }

  return result;
}

- (double)_euler
{
  if ((*(self + 48) & 8) == 0)
  {
    objc_msgSend__updateAffine(self, a2, a3);
  }

  if ((*(self + 49) & 0xC) != 0)
  {
    objc_msgSend__quaternion(self, a2, a3);
    _Q2 = v4;
    v6 = vmulq_f32(v4, v4);
    v7 = vaddv_f32(vadd_f32(*v6.i8, *&vextq_s8(v6, v6, 8uLL)));
    *&v8 = 0;
    if (v7 != 0.0)
    {
      v9 = _Q2.f32[3];
      _S9 = _Q2.f32[1];
      v11 = _Q2.f32[2];
      __asm { FMLA            S1, S9, V2.S[3] }

      v17 = _S1 / v7;
      v18 = (_S1 / v7);
      if (v18 <= 0.4999)
      {
        if (v18 >= -0.4999)
        {
          v22 = *&v6.i32[1];
          v23 = v6.i64[1];
          v25 = _Q2.f32[0];
          v26 = *v6.i32;
          v28 = atan2f(((_Q2.f32[0] * _Q2.f32[3]) + (_Q2.f32[1] * _Q2.f32[2])) + ((_Q2.f32[0] * _Q2.f32[3]) + (_Q2.f32[1] * _Q2.f32[2])), *&v6.i32[3] + (*&v6.i32[2] + (-*v6.i32 - *&v6.i32[1])));
          v27 = asinf(v17 + v17);
          atan2f(((v11 * v9) + (v25 * _S9)) + ((v11 * v9) + (v25 * _S9)), *(&v23 + 1) + ((v26 - v22) - *&v23));
          *&v8 = __PAIR64__(LODWORD(v27), LODWORD(v28));
          return *&v8;
        }

        v21 = atan2f(_Q2.f32[0], _Q2.f32[3]);
        *&v8 = v21 + v21;
        v20 = &dword_1AFE21DB8;
      }

      else
      {
        v19 = atan2f(_Q2.f32[0], _Q2.f32[3]);
        *&v8 = v19 + v19;
        v20 = &dword_1AFE21AFC;
      }

      DWORD1(v8) = *v20;
    }
  }

  else
  {
    v8 = *(self + 144);
  }

  return *&v8;
}

- (void)_setPosition:(VFXNode *)self
{
  v8 = v3;
  if ((*(self + 48) & 8) == 0)
  {
    objc_msgSend__updateAffine(self, a2, v2);
    v3 = v8;
  }

  v5 = vceqq_f32(*self->_position, v3);
  v5.i32[3] = v5.i32[2];
  if ((vminvq_u32(v5) & 0x80000000) == 0)
  {
    objc_msgSend_willChangeValueForKey_(self, a2, @"position");
    *(self + 48) &= ~0x10u;
    *self->_position = v8;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF304B00;
    v9[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v10 = v8;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"translation", v9);
    objc_msgSend_didChangeValueForKey_(self, v7, @"position");
  }
}

- (void)_setScale:(VFXNode *)self
{
  v8 = v3;
  if ((*(self + 48) & 8) == 0)
  {
    objc_msgSend__updateAffine(self, a2, v2);
    v3 = v8;
  }

  v5 = vceqq_f32(*self->_scale, v3);
  v5.i32[3] = v5.i32[2];
  if ((vminvq_u32(v5) & 0x80000000) == 0)
  {
    objc_msgSend_willChangeValueForKey_(self, a2, @"scale");
    *(self + 48) &= ~0x10u;
    *self->_scale = v8;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF304C0C;
    v9[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v10 = v8;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"scale", v9);
    objc_msgSend_didChangeValueForKey_(self, v7, @"scale");
  }
}

- (BOOL)castsShadow
{
  if (*(self + 48))
  {
    v5 = objc_msgSend_worldRef(self, a2, v2);
    if (v5)
    {
      v7 = v5;
      sub_1AF1CEA20(v5, v6);
      v9 = sub_1AF1BAD78(self->_node, v8);
      sub_1AF1CEA9C(v7, v10);
      LOBYTE(v4) = v9;
    }

    else
    {
      node = self->_node;

      LOBYTE(v4) = sub_1AF1BAD78(node, v6);
    }
  }

  else
  {
    return (*(self + 49) >> 5) & 1;
  }

  return v4;
}

- (void)setCastsShadow:(BOOL)shadow
{
  v5 = *(self + 49);
  if ((v5 & 0x20) == 0) == shadow || (*(self + 48))
  {
    v9 = v3;
    v10 = v4;
    if (shadow)
    {
      v6 = 32;
    }

    else
    {
      v6 = 0;
    }

    *(self + 49) = v5 & 0xDF | v6;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF304F08;
    v7[3] = &unk_1E7A7E298;
    v7[4] = self;
    shadowCopy = shadow;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v7);
  }
}

- (BOOL)usesDepthPrePass
{
  if (*(self + 48))
  {
    v5 = objc_msgSend_worldRef(self, a2, v2);
    if (v5)
    {
      v7 = v5;
      sub_1AF1CEA20(v5, v6);
      v9 = sub_1AF1B8420(self->_node, v8);
      sub_1AF1CEA9C(v7, v10);
      LOBYTE(v4) = v9;
    }

    else
    {
      node = self->_node;

      LOBYTE(v4) = sub_1AF1B8420(node, v6);
    }
  }

  else
  {
    return (*(self + 49) >> 6) & 1;
  }

  return v4;
}

- (void)setUsesDepthPrePass:(BOOL)pass
{
  v3 = *(self + 49);
  if (((((v3 & 0x40) == 0) ^ pass) & 1) == 0)
  {
    if (pass)
    {
      v4 = 64;
    }

    else
    {
      v4 = 0;
    }

    *(self + 49) = v3 & 0xBF | v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF30504C;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    passCopy = pass;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (unint64_t)categoryBitMask
{
  if ((*(self + 48) & 1) == 0)
  {
    return self->_categoryBitMask;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF1BAF14(self->_node, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    node = self->_node;

    return sub_1AF1BAF14(node, v6);
  }
}

- (void)setCategoryBitMask:(unint64_t)mask
{
  if (self->_categoryBitMask != mask)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_categoryBitMask = mask;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF30516C;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mask;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)isHidden
{
  if (*(self + 48))
  {
    v5 = objc_msgSend_worldRef(self, a2, v2);
    if (v5)
    {
      v7 = v5;
      sub_1AF1CEA20(v5, v6);
      v9 = sub_1AF1B7348(self->_node, v8);
      sub_1AF1CEA9C(v7, v10);
      LOBYTE(v4) = v9;
    }

    else
    {
      node = self->_node;

      LOBYTE(v4) = sub_1AF1B7348(node, v6);
    }
  }

  else
  {
    return (*(self + 49) >> 4) & 1;
  }

  return v4;
}

- (void)setHidden:(BOOL)hidden
{
  v5 = *(self + 49);
  if ((v5 & 0x10) == 0) == hidden || (*(self + 48))
  {
    v9 = v3;
    v10 = v4;
    if (hidden)
    {
      v6 = 16;
    }

    else
    {
      v6 = 0;
    }

    *(self + 49) = v5 & 0xEF | v6;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF3052B8;
    v7[3] = &unk_1E7A7E298;
    v7[4] = self;
    hiddenCopy = hidden;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"hidden", v7);
  }
}

- (BOOL)isHiddenOrHasHiddenAncestor
{
  if (objc_msgSend_isHidden(self, a2, v2))
  {
    return 1;
  }

  v7 = objc_msgSend_parentNode(self, v4, v5);

  return MEMORY[0x1EEE66B58](v7, sel_isHiddenOrHasHiddenAncestor, v8);
}

- (float)opacity
{
  if ((*(self + 48) & 1) == 0)
  {
    return self->_opacity;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF1B8A30(self->_node, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    node = self->_node;

    return sub_1AF1B8A30(node, v6);
  }
}

- (void)setOpacity:(float)opacity
{
  opacityCopy = opacity;
  if (opacityCopy > 1.0)
  {
    opacityCopy = 1.0;
  }

  v6 = fmax(opacityCopy, 0.0);
  if (self->_opacity != v6 || (*(self + 48) & 1) != 0)
  {
    v9 = v3;
    v10 = v4;
    self->_opacity = v6;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF305460;
    v7[3] = &unk_1E7A7E270;
    v7[4] = self;
    *&v8 = v6;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"opacity", v7);
  }
}

- (int64_t)renderingOrder
{
  if ((*(self + 48) & 1) == 0)
  {
    return self->_renderingOrder;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF1BAC2C(self->_node, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    node = self->_node;

    return sub_1AF1BAC2C(node, v6);
  }
}

- (void)setRenderingOrder:(int64_t)order
{
  if (self->_renderingOrder != order || (*(self + 48) & 1) != 0)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_renderingOrder = order;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF305588;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = order;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (VFXNode)parentNode
{
  if (*(self + 48))
  {
    v5 = objc_msgSend_worldRef(self, a2, v2);
    v7 = v5;
    if (v5)
    {
      sub_1AF1CEA20(v5, v6);
    }

    v8 = sub_1AF1B9A6C(self->_node, v6);
    if (v8)
    {
      v4 = objc_msgSend_nodeWithNodeRef_(VFXNode, v9, v8);
      if (!v7)
      {
        return v4;
      }
    }

    else
    {
      v4 = 0;
      if (!v7)
      {
        return v4;
      }
    }

    sub_1AF1CEA9C(v7, v9);
    return v4;
  }

  return self->_parent;
}

- (NSArray)childNodes
{
  if (*(self + 48))
  {
    v8 = objc_msgSend_worldRef(self, a2, v2);
    v10 = v8;
    if (v8)
    {
      sub_1AF1CEA20(v8, v9);
    }

    v11 = sub_1AF1B9410(self->_node);
    v7 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v12, v11);
    node = self->_node;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1AF305714;
    v16[3] = &unk_1E7A7EC78;
    v16[4] = v7;
    sub_1AF1B7E14(node, v16);
    if (v10)
    {
      sub_1AF1CEA9C(v10, v14);
    }
  }

  else
  {
    v4 = objc_msgSend_copy(self->_childNodes, a2, v2);
    if (objc_msgSend_count(v4, v5, v6))
    {
      return v4;
    }

    else
    {
      return MEMORY[0x1E695E0F0];
    }
  }

  return v7;
}

- (void)_setComponent:(id)component withType:(int64_t)type
{
  if (component)
  {
    objc_msgSend__assignComponent_toContainerWithType_(self, a2, component, type);
  }

  else
  {
    objc_msgSend__removeComponentWithType_(self, a2, type);
  }
}

- (void)setLight:(id)light
{
  if (objc_msgSend_light(self, a2, light) != light)
  {
    objc_msgSend__setComponent_withType_(self, v5, light, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF30581C;
    v7[3] = &unk_1E7A7E220;
    v7[4] = self;
    v7[5] = light;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v7);
  }
}

- (void)setIsJoint:(BOOL)joint
{
  if (joint)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 48) = *(self + 48) & 0xBF | v3;
}

- (void)setIsEyeSightFrame:(BOOL)frame
{
  *(self + 49) = *(self + 49) & 0xFE | frame;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF30592C;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  frameCopy = frame;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setGizmo:(BOOL)gizmo
{
  v3 = *(self + 48);
  if ((((v3 >= 0) ^ gizmo) & 1) == 0)
  {
    if (gizmo)
    {
      v4 = 0x80;
    }

    else
    {
      v4 = 0;
    }

    *(self + 48) = v4 & 0x80 | v3 & 0x7F;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF3059F8;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    gizmoCopy = gizmo;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (void)setIsHandTrackingRoot:(BOOL)root
{
  if (root)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 49) = *(self + 49) & 0xFD | v3;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF305AB4;
  v4[3] = &unk_1E7A7E298;
  v4[4] = self;
  rootCopy = root;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v4);
}

- (void)setSkinner:(id)skinner
{
  if (objc_msgSend_skinner(self, a2, skinner) != skinner)
  {
    v7 = objc_msgSend_model(self, v5, v6);
    if (v7)
    {
      v10 = objc_msgSend_geometry(v7, v8, v9);
      objc_msgSend__setBaseGeometry_(skinner, v11, v10);
    }

    objc_msgSend__setComponent_withType_(self, v8, skinner, 3);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1AF305B98;
    v13[3] = &unk_1E7A7E220;
    v13[4] = self;
    v13[5] = skinner;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, self, v13);
  }
}

- (void)setMorpher:(id)morpher
{
  if (objc_msgSend_morpher(self, a2, morpher) != morpher)
  {
    objc_msgSend__setComponent_withType_(self, v5, morpher, 4);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF305C80;
    v7[3] = &unk_1E7A7E220;
    v7[4] = morpher;
    v7[5] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v7);
  }
}

- (id)deformers
{
  result = objc_msgSend__findComponentWithType_(self, a2, 9);
  if (!result)
  {
    return MEMORY[0x1E695E0F0];
  }

  return result;
}

- (void)setDeformers:(id)deformers
{
  if (objc_msgSend_deformers(self, a2, deformers) != deformers)
  {
    v7 = objc_msgSend_copy(deformers, v5, v6);
    objc_msgSend__setComponent_withType_(self, v8, v7, 9);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF305DD0;
    v10[3] = &unk_1E7A7E220;
    v10[4] = self;
    v10[5] = v7;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v10);
  }
}

- (void)setCamera:(id)camera
{
  if (objc_msgSend_camera(self, a2, camera) != camera)
  {
    objc_msgSend__setComponent_withType_(self, v5, camera, 1);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF305E80;
    v7[3] = &unk_1E7A7E220;
    v7[4] = self;
    v7[5] = camera;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v7);
  }
}

- (void)setModel:(id)model
{
  if (objc_msgSend_model(self, a2, model) != model)
  {
    objc_msgSend__setComponent_withType_(self, v5, model, 2);
    v8 = objc_msgSend_skinner(self, v6, v7);
    if (v8)
    {
      v11 = v8;
      v12 = objc_msgSend_geometry(model, v9, v10);
      objc_msgSend__setBaseGeometry_(v11, v13, v12);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1AF305FB8;
    v22[3] = &unk_1E7A7E220;
    v22[4] = self;
    v22[5] = model;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v22);
    v16 = objc_msgSend_physicsBody(self, v14, v15);
    if (v16)
    {
      v19 = v16;
      if (objc_msgSend_hasDefaultShape(v16, v17, v18))
      {
        objc_msgSend_updateDefaultShape(v19, v20, v21);
      }
    }
  }
}

- (void)modelChanged
{
  v3 = objc_msgSend_physicsBody(self, a2, v2);
  if (v3)
  {
    v6 = v3;
    if (objc_msgSend_hasDefaultShape(v3, v4, v5))
    {

      objc_msgSend_updateDefaultShape(v6, v7, v8);
    }
  }
}

- (void)setBehaviorGraph:(id)graph
{
  if (objc_msgSend_behaviorGraph(self, a2, graph) != graph)
  {
    objc_msgSend__setComponent_withType_(self, v5, graph, 10);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF3060EC;
    v7[3] = &unk_1E7A7E220;
    v7[4] = self;
    v7[5] = graph;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v7);
  }
}

- (VFXBehaviorGraph)behaviorGraph
{
  ComponentWithType = objc_msgSend__findComponentWithType_(self, a2, 10);
  objc_msgSend_setOwnerNode_(ComponentWithType, v4, self);
  if ((*(self + 48) & 1) == 0)
  {
    return ComponentWithType;
  }

  return MEMORY[0x1EEE66B58](ComponentWithType, sel_presentationBehaviorGraph, v5);
}

- (void)setParticleEmitter:(id)emitter
{
  if (objc_msgSend_particleEmitter(self, a2, emitter) != emitter)
  {
    objc_msgSend__setComponent_withType_(self, v5, emitter, 11);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF30623C;
    v7[3] = &unk_1E7A7E220;
    v7[4] = self;
    v7[5] = emitter;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v7);
  }
}

- (void)setParticleCollider:(id)collider
{
  if (objc_msgSend_particleCollider(self, a2, collider) != collider)
  {
    objc_msgSend__setComponent_withType_(self, v5, collider, 12);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF306328;
    v7[3] = &unk_1E7A7E220;
    v7[4] = self;
    v7[5] = collider;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v7);
  }
}

- (NSString)description
{
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

  objc_msgSend_position(self, v13, v14);
  if (*&v19 != 0.0 || *(&v19 + 1) != 0.0 || v20 != 0.0)
  {
    objc_msgSend_appendFormat_(v7, v17, @" pos(%f %f %f)", *&v19, *(&v19 + 1), v20);
  }

  objc_msgSend_rotation(self, v17, v18);
  v26 = *&v24 == 0.0 && *(&v23 + 1) == 0.0 && *&v23 == 0.0;
  if (!v26 && *(&v24 + 1) != 0.0)
  {
    objc_msgSend_appendFormat_(v7, v21, @" rot(%f %f %f %f)", *&v23, *(&v23 + 1), *&v24, *(&v24 + 1));
  }

  objc_msgSend_scale(self, v21, v22);
  if (*&v29 != 1.0 || *(&v29 + 1) != 1.0 || v30 != 1.0)
  {
    objc_msgSend_appendFormat_(v7, v27, @" scale(%f %f %f)", *&v29, *(&v29 + 1), v30);
  }

  if (objc_msgSend_light(self, v27, v28) || objc_msgSend_camera(self, v31, v32) || objc_msgSend_model(self, v31, v33))
  {
    objc_msgSend_appendString_(v7, v31, @" |");
  }

  if (objc_msgSend_light(self, v31, v34))
  {
    v37 = objc_msgSend_light(self, v35, v36);
    objc_msgSend_appendFormat_(v7, v38, @" light=%@", v37);
  }

  if (objc_msgSend_camera(self, v35, v36))
  {
    v41 = objc_msgSend_camera(self, v39, v40);
    objc_msgSend_appendFormat_(v7, v42, @" camera=%@", v41);
  }

  if (objc_msgSend_model(self, v39, v40))
  {
    v45 = objc_msgSend_model(self, v43, v44);
    objc_msgSend_appendFormat_(v7, v46, @" model=%@", v45);
  }

  v47 = objc_msgSend_childNodes(self, v43, v44);
  v50 = objc_msgSend_count(v47, v48, v49);
  if (v50 == 1)
  {
    objc_msgSend_appendString_(v7, v51, @" | 1 child");
  }

  else if (v50)
  {
    objc_msgSend_appendFormat_(v7, v51, @" | %d children", v50);
  }

  else
  {
    objc_msgSend_appendString_(v7, v51, @" | no child");
  }

  objc_msgSend_appendString_(v7, v52, @">");
  return v7;
}

- (BOOL)parseSpecialKey:(id)key withPath:(id)path intoDestination:(id *)destination
{
  if (!objc_msgSend_hasPrefix_(key, a2, @"/", path))
  {
    v15 = objc_msgSend_rangeOfString_(key, v8, @"[");
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }

    v18 = v15;
    v19 = v15 + 1;
    if (v15 + 1 >= objc_msgSend_length(key, v16, v17))
    {
      goto LABEL_12;
    }

    v21 = objc_msgSend_substringToIndex_(key, v20, v18);
    v23 = objc_msgSend_substringFromIndex_(key, v22, v19);
    v25 = objc_msgSend_rangeOfString_(v23, v24, @"]");
    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }

    v27 = objc_msgSend_substringToIndex_(v23, v26, v25);
    v30 = objc_msgSend_intValue(v27, v28, v29);
    if ((objc_msgSend_isEqualToString_(v21, v31, &stru_1F2575650) & 1) != 0 || objc_msgSend_isEqualToString_(v21, v32, @"nodes"))
    {
      v21 = @"childNodes";
    }

    v33 = objc_msgSend_valueForKey_(self, v32, v21);
    if (objc_msgSend_count(v33, v34, v35) <= v30)
    {
LABEL_12:
      LOBYTE(v14) = 0;
      return v14;
    }

    v14 = objc_msgSend_objectAtIndex_(v33, v36, v30);
    goto LABEL_3;
  }

  v10 = objc_msgSend_length(key, v8, v9);
  v12 = objc_msgSend_substringWithRange_(key, v11, 1, v10 - 1);
  v14 = objc_msgSend_childNodeWithName_recursively_(self, v13, v12, 1);
  if (v14)
  {
LABEL_3:
    *destination = v14;
    LOBYTE(v14) = 1;
  }

  return v14;
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"transform"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_transform(self, v5, v6);
LABEL_3:

    return objc_msgSend_valueWithVFXMatrix4_(v7, v8, v9);
  }

  if (objc_msgSend_isEqualToString_(key, v5, @"position"))
  {
    v13 = MEMORY[0x1E696B098];
    objc_msgSend_position(self, v11, v12);
LABEL_17:

    return objc_msgSend_valueWithVFXFloat3_(v13, v14, v15);
  }

  if (objc_msgSend_isEqualToString_(key, v11, @"scale"))
  {
    v13 = MEMORY[0x1E696B098];
    objc_msgSend_scale(self, v16, v17);
    goto LABEL_17;
  }

  if (objc_msgSend_isEqualToString_(key, v16, @"orientation"))
  {
    v20 = MEMORY[0x1E696B098];
    objc_msgSend_orientation(self, v18, v19);
  }

  else
  {
    if (objc_msgSend_isEqualToString_(key, v18, @"eulerAngles"))
    {
      goto LABEL_16;
    }

    if (objc_msgSend_isEqualToString_(key, v23, @"rotation"))
    {
      v20 = MEMORY[0x1E696B098];
      objc_msgSend_rotation(self, v25, v26);
      goto LABEL_12;
    }

    if (objc_msgSend_isEqualToString_(key, v25, @"euler"))
    {
LABEL_16:
      v13 = MEMORY[0x1E696B098];
      objc_msgSend_eulerAngles(self, v23, v24);
      goto LABEL_17;
    }

    if (objc_msgSend_isEqualToString_(key, v23, @"pivot"))
    {
      v7 = MEMORY[0x1E696B098];
      objc_msgSend_pivot(self, v27, v28);
      goto LABEL_3;
    }

    if (objc_msgSend_isEqualToString_(key, v27, @"worldTransform"))
    {
      v7 = MEMORY[0x1E696B098];
      objc_msgSend_worldTransform(self, v29, v30);
      goto LABEL_3;
    }

    if (objc_msgSend_isEqualToString_(key, v29, @"worldPosition"))
    {
      v13 = MEMORY[0x1E696B098];
      objc_msgSend_worldPosition(self, v31, v32);
      goto LABEL_17;
    }

    if (!objc_msgSend_isEqualToString_(key, v31, @"worldOrientation"))
    {
      v35.receiver = self;
      v35.super_class = VFXNode;
      return [(VFXNode *)&v35 valueForKey:key];
    }

    v20 = MEMORY[0x1E696B098];
    objc_msgSend_worldOrientation(self, v33, v34);
  }

LABEL_12:

  return objc_msgSend_valueWithVFXFloat4_(v20, v21, v22);
}

- (BOOL)rawFloat4ForKey:(id)key value:
{
  v4 = v3;
  if (objc_msgSend_isEqualToString_(key, a2, @"orientation"))
  {
    objc_msgSend_orientation(self, v7, v8);
LABEL_7:
    *v4 = v9;
    LOBYTE(isEqualToString) = 1;
    return isEqualToString;
  }

  if (objc_msgSend_isEqualToString_(key, v7, @"rotation"))
  {
    objc_msgSend_rotation(self, v10, v11);
    goto LABEL_7;
  }

  isEqualToString = objc_msgSend_isEqualToString_(key, v10, @"worldOrientation");
  if (isEqualToString)
  {
    objc_msgSend_worldOrientation(self, v13, v14);
    goto LABEL_7;
  }

  return isEqualToString;
}

- (BOOL)rawFloat3ForKey:(id)key value:
{
  v4 = v3;
  if (objc_msgSend_isEqualToString_(key, a2, @"position"))
  {
    objc_msgSend_position(self, v7, v8);
  }

  else if (objc_msgSend_isEqualToString_(key, v7, @"scale"))
  {
    objc_msgSend_scale(self, v10, v11);
  }

  else if (objc_msgSend_isEqualToString_(key, v10, @"eulerAngles") || objc_msgSend_isEqualToString_(key, v12, @"euler"))
  {
    objc_msgSend_eulerAngles(self, v12, v13);
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(key, v12, @"worldPosition");
    if (!isEqualToString)
    {
      return isEqualToString;
    }

    objc_msgSend_worldPosition(self, v15, v16);
  }

  *v4 = v9;
  LOBYTE(isEqualToString) = 1;
  return isEqualToString;
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"transform"))
  {
    objc_msgSend_VFXMatrix4Value(value, v7, v8);

    objc_msgSend_setTransform_(self, v9, v10);
    return;
  }

  if (objc_msgSend_isEqualToString_(key, v7, @"position"))
  {
    objc_msgSend_VFXFloat3Value(value, v11, v12);

    objc_msgSend_setPosition_(self, v13, v14);
    return;
  }

  if (objc_msgSend_isEqualToString_(key, v11, @"scale"))
  {
    objc_msgSend_VFXFloat3Value(value, v15, v16);

    objc_msgSend_setScale_(self, v17, v18);
    return;
  }

  if (objc_msgSend_isEqualToString_(key, v15, @"orientation"))
  {
    objc_msgSend_VFXFloat4Value(value, v19, v20);

    objc_msgSend_setOrientation_(self, v21, v22);
    return;
  }

  if (objc_msgSend_isEqualToString_(key, v19, @"eulerAngles"))
  {
    goto LABEL_18;
  }

  if (objc_msgSend_isEqualToString_(key, v23, @"rotation"))
  {
    objc_msgSend_VFXFloat4Value(value, v27, v28);

    objc_msgSend_setRotation_(self, v29, v30);
  }

  else
  {
    if (objc_msgSend_isEqualToString_(key, v27, @"euler"))
    {
LABEL_18:
      objc_msgSend_VFXFloat3Value(value, v23, v24);

      objc_msgSend_setEulerAngles_(self, v25, v26);
      return;
    }

    if (objc_msgSend_isEqualToString_(key, v23, @"pivot"))
    {
      objc_msgSend_VFXMatrix4Value(value, v31, v32);

      objc_msgSend_setPivot_(self, v33, v34);
    }

    else if (objc_msgSend_isEqualToString_(key, v31, @"worldTransform"))
    {
      objc_msgSend_VFXMatrix4Value(value, v35, v36);

      objc_msgSend_setWorldTransform_(self, v37, v38);
    }

    else if (objc_msgSend_isEqualToString_(key, v35, @"worldPosition"))
    {
      objc_msgSend_VFXFloat3Value(value, v39, v40);

      objc_msgSend_setWorldPosition_(self, v41, v42);
    }

    else if (objc_msgSend_isEqualToString_(key, v39, @"worldOrientation"))
    {
      objc_msgSend_VFXFloat4Value(value, v43, v44);

      objc_msgSend_setWorldOrientation_(self, v45, v46);
    }

    else
    {
      v47.receiver = self;
      v47.super_class = VFXNode;
      [(VFXNode *)&v47 setValue:value forKey:key];
    }
  }
}

- (id)copyAnimationChannelForKeyPath:(id)path animation:(id)animation
{
  if (!objc_msgSend_length(path, a2, path))
  {
    return 0;
  }

  v31 = 0;
  v32 = 0;
  v30 = 0;
  sub_1AF3716AC(path, &v31, &v30);
  if (objc_msgSend_parseSpecialKey_withPath_intoDestination_(self, v7, v31, path, &v32) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = objc_msgSend_copyAnimationChannelForKeyPath_animation_(v32, v8, v30, animation);
    if (v9)
    {
      v10 = v9;
      v11 = objc_alloc(MEMORY[0x1E695DF70]);
      v14 = objc_msgSend_count(v10, v12, v13);
      v16 = objc_msgSend_initWithCapacity_(v11, v15, v14 + 1);
      objc_msgSend_addObject_(v16, v17, v31);
      objc_msgSend_addObjectsFromArray_(v16, v18, v10);

      return v16;
    }

    return 0;
  }

  v32 = objc_msgSend_valueForKey_(self, v8, v31);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return sub_1AF291EF0(self, path, v20);
  }

  v21 = objc_msgSend_copyAnimationChannelForKeyPath_animation_(v32, v19, v30, animation);
  if (!v21)
  {
    return sub_1AF291EF0(self, path, v20);
  }

  v22 = objc_alloc(MEMORY[0x1E695DF70]);
  v25 = objc_msgSend_count(v21, v23, v24);
  v16 = objc_msgSend_initWithCapacity_(v22, v26, v25 + 1);
  objc_msgSend_addObject_(v16, v27, v31);
  objc_msgSend_addObjectsFromArray_(v16, v28, v21);

  return v16;
}

- (id)valueForKeyPath:(id)path
{
  if (!path)
  {
    return 0;
  }

  result = objc_msgSend__valueForSimdVectorKeyPath_(self, a2, path);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = VFXNode;
    return [(VFXNode *)&v6 valueForKeyPath:path];
  }

  return result;
}

- (id)_valueForSimdVectorKeyPath:(id)path
{
  v34 = 0;
  v33 = 0;
  sub_1AF3716AC(path, &v34, &v33);
  if (qword_1ED73B330 != -1)
  {
    sub_1AFDF754C();
  }

  if (!v33 || !objc_msgSend_containsObject_(qword_1ED73B328, v4, v33))
  {
    return 0;
  }

  v32 = 0;
  v31 = 0;
  if (objc_msgSend_rawFloat3ForKey_value_(self, v5, v34, &v31))
  {
    if (objc_msgSend_isEqualToString_(v33, v6, @"x"))
    {
      LODWORD(v9) = v31;
      return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v7, v8, v9);
    }

    if (objc_msgSend_isEqualToString_(v33, v7, @"y"))
    {
      LODWORD(v13) = HIDWORD(v31);
      return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v11, v12, v13);
    }

    if (objc_msgSend_isEqualToString_(v33, v11, @"z"))
    {
      LODWORD(v15) = v32;
      return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v6, v14, v15);
    }
  }

  v29 = 0;
  v30 = 0;
  if (!objc_msgSend_rawFloat4ForKey_value_(self, v6, v34, &v29))
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(v33, v16, @"x"))
  {
    LODWORD(v19) = v29;
    return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v17, v18, v19);
  }

  if (objc_msgSend_isEqualToString_(v33, v17, @"y"))
  {
    LODWORD(v22) = HIDWORD(v29);
    return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v20, v21, v22);
  }

  if (objc_msgSend_isEqualToString_(v33, v20, @"z"))
  {
    LODWORD(v25) = v30;
    return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v23, v24, v25);
  }

  if (!objc_msgSend_isEqualToString_(v33, v23, @"w"))
  {
    return 0;
  }

  LODWORD(v28) = HIDWORD(v30);
  return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v26, v27, v28);
}

- (id)valueForUndefinedKey:(id)key
{
  if ((*(self + 48) & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = objc_msgSend_worldRef(self, a2, key);
  v7 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
  }

  v8 = sub_1AF16E3F4(self->_node, key);
  v9 = v8;
  if (v8)
  {
    v10 = sub_1AF1CDA60(v8, a2);
    v12 = sub_1AF1CDAAC(v9, v11);
    v9 = sub_1AF376790(v10, v12, v13);
  }

  if (v7)
  {
    sub_1AF1CEA9C(v7, a2);
  }

  if (!v9)
  {
LABEL_9:
    v17 = 0;
    if (objc_msgSend_parseSpecialKey_withPath_intoDestination_(self, a2, key, key, &v17))
    {
      return v17;
    }

    else
    {
      os_unfair_lock_lock(&self->_valueForKeyLock);
      v15 = objc_msgSend_objectForKey_(self->_valueForKey, v14, key);
      os_unfair_lock_unlock(&self->_valueForKeyLock);
      if (v15)
      {
        return v15;
      }

      else
      {
        return 0;
      }
    }
  }

  return v9;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  v7 = sub_1AF376D98(self, key);
  os_unfair_lock_lock(&self->_valueForKeyLock);
  valueForKey = self->_valueForKey;
  if (value)
  {
    if (!valueForKey)
    {
      valueForKey = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_valueForKey = valueForKey;
    }

    objc_msgSend_setObject_forKey_(valueForKey, v8, value, key);
  }

  else
  {
    objc_msgSend_removeObjectForKey_(valueForKey, v8, key);
  }

  os_unfair_lock_unlock(&self->_valueForKeyLock);
  v10 = sub_1AF376D98(self, key);
  v11 = v10;
  if (v7 && v10)
  {
    node = self->_node;
    sub_1AF16E2D4(node, key, v7);
    v14 = objc_msgSend_stringByAppendingString_(@"customProperty", v13, @".");
    v16 = objc_msgSend_stringByAppendingString_(v14, v15, key);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1AF30746C;
    v18[3] = &unk_1E7A7E2E8;
    v18[5] = v11;
    v18[6] = node;
    v18[4] = key;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v17, self, v16, v18);
LABEL_10:
    CFRelease(v7);
    goto LABEL_11;
  }

  if (v7)
  {
    goto LABEL_10;
  }

LABEL_11:
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

    if ((*(self + 48) & 1) == 0)
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
    v16[2] = sub_1AF3076BC;
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
    if (objc_msgSend_isPausedOrPausedByInheritance(self, v15, v16))
    {

      objc_msgSend__pauseAnimation_forKey_pausedByNode_(self, v17, 1, keyCopy, 1);
    }
  }

  else
  {
    v18 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
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
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v14, self, v20, MEMORY[0x1E69E9820], 3221225472, sub_1AF307A60, &unk_1E7A7E1D0, self, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6]);
  }

  else
  {
    v17 = v16;
    v18 = objc_msgSend_timingFunction(VFXTransaction, v14, v15);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v19, self, v21, v20[0], v20[1], v20[2], v20[3], v20[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF307A50, &unk_1E7A7E2E8, self, v18, *&v17);
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
    v17[2] = sub_1AF307B50;
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
      v23[2] = sub_1AF307CEC;
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
    v21[2] = sub_1AF30810C;
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
  v8[2] = sub_1AF308250;
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
  v4[2] = sub_1AF30831C;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)from
{
  v4 = objc_msgSend__vfxBindings(from, a2, from);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF3083C8;
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
    v9[2] = sub_1AF308500;
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
  v4[2] = sub_1AF30863C;
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

- (id)objectInChildNodesAtIndex:(unint64_t)index
{
  objc_sync_enter(self);
  v6 = objc_msgSend_objectAtIndex_(self->_childNodes, v5, index);
  objc_sync_exit(self);
  return v6;
}

- (BOOL)canAddChildNode:(id)node
{
  for (i = self == 0; self; i = self == 0)
  {
    if (self == node)
    {
      break;
    }

    self = objc_msgSend_parentNode(self, a2, node);
  }

  return i;
}

- (void)addChildNode:(id)node
{
  objc_sync_enter(self);
  v7 = objc_msgSend_countOfChildNodes(self, v5, v6);
  objc_msgSend_insertObject_inChildNodesAtIndex_(self, v8, node, v7);

  objc_sync_exit(self);
}

- (void)insertObject:(id)object inChildNodesAtIndex:(unint64_t)index
{
  if (object)
  {
    objc_sync_enter(self);
    if (!self->_childNodes)
    {
      self->_childNodes = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    canAddChildNode = objc_msgSend_canAddChildNode_(self, v7, object);
    if (canAddChildNode)
    {
      if (objc_msgSend_parentNode(object, v9, v10) != self)
      {
        objectCopy = object;
        v14 = objc_msgSend_world(self, v12, v13);
        v19 = objc_msgSend_world(object, v15, v16);
        if (v14 == v19)
        {
          sub_1AF308AC8(object, v17, v18);
        }

        else
        {
          objc_msgSend_removeFromParentNode(object, v17, v18);
        }

        objc_msgSend__setParent_(object, v20, self);
        if (*(object + 27))
        {
          objc_msgSend__propagatePhysicsBodyCountChange_(self, v22, *(object + 27));
        }

        if (v14 != v19)
        {
          world = self->_world;
          if (world)
          {
            objc_msgSend_addWorldReference_(object, v22, world);
          }
        }

        objc_msgSend_insertObject_atIndex_(self->_childNodes, v22, object, index);
        if ((*(object + 50) & 2) != 0)
        {
          objc_msgSend__setHasFocusableChild(self, v24, v25);
        }

        if (index)
        {
          v26 = objc_msgSend_objectAtIndex_(self->_childNodes, v24, index - 1);
        }

        else
        {
          v26 = 0;
        }

        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = sub_1AF308C0C;
        v28[3] = &unk_1E7A7E310;
        v28[4] = v26;
        v28[5] = self;
        v28[6] = object;
        v28[7] = index;
        objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v24, self, v28);
        if ((*(self + 48) & 4) != 0)
        {
          objc_msgSend__setPausedOrPausedByInheritance_(object, v27, 1);
        }
      }
    }

    else
    {
      v21 = sub_1AF0D5194(canAddChildNode, v9);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF7574();
      }
    }

    objc_sync_exit(self);
  }
}

- (void)replaceObjectInChildNodesAtIndex:(unint64_t)index withObject:(id)object
{
  objc_sync_enter(self);
  if (object)
  {
    canAddChildNode = objc_msgSend_canAddChildNode_(self, v7, object);
    if (canAddChildNode)
    {
      v11 = objc_msgSend_objectAtIndex_(self->_childNodes, v9, index);
      if (v11)
      {
        objectCopy = object;
        objc_msgSend_removeFromParentNode(object, v13, v14);
        objc_msgSend__setParent_(v11, v15, 0);
        objc_msgSend__setParent_(object, v16, self);
        objc_msgSend_addWorldReference_(object, v17, self->_world);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = sub_1AF30900C;
        v22[3] = &unk_1E7A7E3B0;
        v22[4] = v11;
        v22[5] = object;
        v22[6] = self;
        objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v18, self, v22);
        objc_msgSend_replaceObjectAtIndex_withObject_(self->_childNodes, v19, index, object);
      }

      else
      {
        v21 = sub_1AF0D5194(0, v10);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF76E8();
        }
      }
    }

    else
    {
      v20 = sub_1AF0D5194(canAddChildNode, v9);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF7664();
      }
    }
  }

  else
  {
    objc_msgSend_removeObjectFromChildNodesAtIndex_(self, v7, index);
  }

  objc_sync_exit(self);
}

- (void)removeFromParentNode
{
  if (*(self + 48))
  {
    v8 = objc_msgSend_worldRef(self, a2, v2);
    if (v8)
    {
      v10 = v8;
      sub_1AF1CEA20(v8, v9);
      v11 = objc_msgSend_nodeWithNodeRef_(VFXNode, self, self->_node);
      sub_1AF1CEA9C(v10, v12);
    }

    else
    {
      v11 = objc_msgSend_nodeWithNodeRef_(VFXNode, self, self->_node);
    }

    objc_msgSend_removeFromParentNode(v11, v13, v14);
  }

  else if (self->_parent)
  {
    world = self->_world;
    selfCopy = self;
    sub_1AF308AC8(&self->super.isa, v5, v6);
    objc_msgSend_removeWorldReference_(self, v7, world);
  }
}

- (unint64_t)indexOfChildNode:(id)node
{
  childNodes = self->_childNodes;
  v5 = objc_msgSend_count(childNodes, a2, node);
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v5;
  v8 = 0;
  while (objc_msgSend_objectAtIndex_(childNodes, v6, v8) != node)
  {
    if (v7 == ++v8)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v8;
}

- (void)removeAllChilds
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = objc_msgSend_childNodes(self, a2, v2, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v11, v15, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_removeFromParentNode(*(*(&v11 + 1) + 8 * v10++), v6, v7);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v11, v15, 16);
    }

    while (v8);
  }
}

- (BOOL)hasAncestor:(id)ancestor
{
  v4 = objc_msgSend_parentNode(self, a2, ancestor);
  for (i = v4 != 0; v4 != ancestor && v4; i = v4 != 0)
  {
    v4 = objc_msgSend_parentNode(v4, v5, v6);
  }

  return i;
}

- (void)replaceChildNode:(id)node with:(id)with
{
  v5 = objc_msgSend_indexOfChildNode_(self, a2, node);
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {

    MEMORY[0x1EEE66B58](self, sel_replaceObjectInChildNodesAtIndex_withObject_, v5);
  }
}

- (NSArray)states
{
  v3 = objc_msgSend_stateManager(self, a2, v2);

  return objc_msgSend_states(v3, v4, v5);
}

- (VFXState)state
{
  v3 = objc_msgSend_stateManager(self, a2, v2);

  return objc_msgSend_activeState(v3, v4, v5);
}

- (void)setState:(id)state
{
  v4 = objc_msgSend_stateManager(self, a2, state);

  objc_msgSend_setActiveState_(v4, v5, state);
}

- (void)setStateNamed:(id)named
{
  v25 = *MEMORY[0x1E69E9840];
  if (named && objc_msgSend_length(named, a2, named))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = objc_msgSend_states(self, a2, named, 0);
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v20, v24, 16);
    if (v7)
    {
      v10 = v7;
      v11 = *v21;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v5);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = objc_msgSend_name(v13, v8, v9);
          if (objc_msgSend_isEqualToString_(v14, v15, named))
          {
            v18 = objc_msgSend_stateManager(self, v8, v9);
            objc_msgSend_setActiveState_(v18, v19, v13);
            return;
          }
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v20, v24, 16);
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v16 = objc_msgSend_stateManager(self, a2, named);

    objc_msgSend_setActiveState_(v16, v17, 0);
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

- (BOOL)getBoundingBoxMin:(VFXNode *)self max:(SEL)max
{
  v64 = *MEMORY[0x1E69E9840];
  if (!self->_node || (*(self + 49) & 0x10) != 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = v2;
  v57.i32[2] = 0;
  v57.i64[0] = 0;
  v56.i32[2] = 0;
  v56.i64[0] = 0;
  if (*(self + 48))
  {
    v9 = objc_msgSend_worldRef(self, max, v2);
    if (v9)
    {
      v11 = v9;
      sub_1AF1CEA20(v9, v10);
      v12 = sub_1AF1C3958(self->_node, 1, &v57, &v56);
      sub_1AF1CEA9C(v11, v13);
      if (v12)
      {
LABEL_11:
        if (v6)
        {
          *v6 = v57;
        }

        if (!v5)
        {
          return 1;
        }

        v8 = v56;
        goto LABEL_15;
      }
    }

    else if (sub_1AF1C3958(self->_node, 1, &v57, &v56))
    {
      goto LABEL_11;
    }

    return 0;
  }

  v55.i32[2] = 0;
  v55.i64[0] = 0;
  v54.i32[2] = 0;
  v54.i64[0] = 0;
  v7 = *self->_fixedBoundingBoxExtrema;
  if (v7)
  {
    if (v2)
    {
      *v2 = *v7;
    }

    if (!v3)
    {
      return 1;
    }

    v8 = *(*self->_fixedBoundingBoxExtrema + 16);
LABEL_15:
    *v5 = v8;
    return 1;
  }

  v15 = objc_msgSend_model(self, max, v2);
  if (v15 && objc_msgSend_getBoundingBoxMin_max_(v15, v16, v6, v5))
  {
    if (v6)
    {
      v57 = *v6;
    }

    if (v5)
    {
      v56 = *v5;
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v19 = objc_msgSend_childNodes(self, v16, v17);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v50, v63, 16);
  if (v21)
  {
    v23 = v21;
    v24 = *v51;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v51 != v24)
        {
          objc_enumerationMutation(v19);
        }

        v26 = *(*(&v50 + 1) + 8 * i);
        if (objc_msgSend_getBoundingBoxMin_max_(v26, v22, &v55, &v54))
        {
          v48 = v54;
          v49 = v55;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          objc_msgSend_pivot(v26, v22, v27);
          v66 = __invert_f4(v65);
          v42 = v66.columns[1];
          v43 = v66.columns[0];
          v40 = v66.columns[3];
          v41 = v66.columns[2];
          objc_msgSend_transform(v26, v28, v29);
          v30 = 0;
          v58[0] = v31;
          v58[1] = v32;
          v58[2] = v33;
          v58[3] = v34;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          do
          {
            *(&v59 + v30 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(v58[v30])), v42, *&v58[v30], 1), v41, v58[v30], 2), v40, v58[v30], 3);
            ++v30;
          }

          while (v30 != 4);
          v44 = v59;
          v45 = v60;
          v46 = v61;
          v47 = v62;
          sub_1AF1B7A68(&v49, &v48, &v49, &v48, &v44);
          v35 = v49;
          if (v14)
          {
            v37 = v56;
            v36 = v57;
            v35.i32[3] = 0;
            v36.i32[3] = 0;
            v35 = vminnmq_f32(v35, v36);
            v38 = v48;
            v38.i32[3] = 0;
            v37.i32[3] = 0;
            v39 = vmaxnmq_f32(v38, v37);
          }

          else
          {
            v39 = v48;
          }

          v56 = v39;
          v57 = v35;
          v14 = 1;
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v50, v63, 16);
    }

    while (v23);
  }

  if (v14)
  {
    if (v6)
    {
      *v6 = v57;
    }

    if (v5)
    {
      *v5 = v56;
    }
  }

  return v14;
}

- (void)setBoundingBoxMin:(VFXNode *)self max:(SEL)max
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
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v12, MEMORY[0x1E69E9820], 3221225472, sub_1AF309B58, &unk_1E7A7EA48, *v7, *v6, self, v16[0], v16[1], v16[2], v16[3], v16[4]);
  }

  else if (v5)
  {
    free(v5);
    *self->_fixedBoundingBoxExtrema = 0;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v11, self, v16, v12[0], v12[1], v12[2], v12[3], v13, v14, v15, MEMORY[0x1E69E9820], 3221225472, sub_1AF309B44, &unk_1E7A7E1D0, self);
  }
}

- (BOOL)getFrustum:(id *)frustum withViewport:
{
  v57 = v3;
  v60 = v3;
  if (objc_msgSend_isPresentationObject(self, a2, frustum))
  {
    v8 = objc_msgSend_nodeRef(self, v6, v7);

    LOBYTE(v9) = sub_1AF27EE18(v8, frustum, v57);
  }

  else
  {
    v9 = objc_msgSend_camera(self, v6, v7);
    if (v9)
    {
      v12 = objc_msgSend_cameraRef(v9, v10, v11);
      v14 = sub_1AF15E428(v12, v13);
      v16 = v14[1];
      v15 = v14[2];
      v59[0] = *v14;
      v59[1] = v16;
      v59[2] = v15;
      v17 = v14[6];
      v19 = v14[3];
      v18 = v14[4];
      v59[5] = v14[5];
      v59[6] = v17;
      v59[3] = v19;
      v59[4] = v18;
      v20 = v14[10];
      v22 = v14[7];
      v21 = v14[8];
      v59[9] = v14[9];
      v59[10] = v20;
      v59[7] = v22;
      v59[8] = v21;
      v23 = sub_1AF15E62C(v59, &v60);
      v56 = *(v23 + 1);
      v58 = *v23;
      v54 = *(v23 + 3);
      v55 = *(v23 + 2);
      objc_msgSend_worldTransform(self, v24, v25);
      v68 = __invert_f4(v67);
      v30 = 0;
      v61 = v68;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      do
      {
        *(&v62 + v30 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, COERCE_FLOAT(*&v61.columns[v30])), v56, *v61.columns[v30].f32, 1), v55, v61.columns[v30], 2), v54, v61.columns[v30], 3);
        ++v30;
      }

      while (v30 != 4);
      v26.f32[0] = *&v62.i32[3] - *v62.i32;
      v26.f32[1] = *&v63.i32[3] - *v63.i32;
      v26.f32[2] = *(&v64 + 3) - *&v64;
      v31 = vmulq_f32(v26, v26);
      v26.f32[3] = *(&v65 + 3) - *&v65;
      v27.f32[0] = *&v62.i32[3] + *v62.i32;
      v27.f32[1] = *&v63.i32[3] + *v63.i32;
      v27.f32[2] = *(&v64 + 3) + *&v64;
      v32 = vmulq_f32(v27, v27);
      v27.f32[3] = *(&v65 + 3) + *&v65;
      v28.f32[0] = *&v62.i32[3] + *&v62.i32[1];
      v28.f32[1] = *&v63.i32[3] + *&v63.i32[1];
      v28.f32[2] = *(&v64 + 3) + *(&v64 + 1);
      v33 = v28;
      v33.f32[3] = *(&v65 + 3) + *(&v65 + 1);
      v34 = vmulq_f32(v28, v28);
      v29.f32[0] = *&v62.i32[3] - *&v62.i32[1];
      v29.f32[1] = *&v63.i32[3] - *&v63.i32[1];
      v29.f32[2] = *(&v64 + 3) - *(&v64 + 1);
      v35 = v29;
      v35.f32[3] = *(&v65 + 3) - *(&v65 + 1);
      v36 = vmulq_f32(v29, v29);
      v37 = vextq_s8(v63, v63, 8uLL);
      v38 = vextq_s8(v62, v62, 8uLL).u64[0];
      *v37.f32 = vsub_f32(vzip2_s32(v38, *v37.f32), vzip1_s32(v38, *v37.f32));
      v37.f32[2] = *(&v64 + 3) - *(&v64 + 2);
      v39 = v37;
      v39.f32[3] = *(&v65 + 3) - *(&v65 + 2);
      v40 = vzip2q_s32(v62, v63);
      v40.i32[2] = DWORD2(v64);
      v41 = vmulq_f32(v37, v37);
      v42 = vmulq_f32(v40, v40);
      v43 = v40;
      v43.i32[3] = DWORD2(v65);
      v44 = vaddv_f32(*v31.f32);
      *v40.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v31.f32[2] + v44));
      *v40.f32 = vmul_f32(*v40.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v31.f32[2] + v44), vmul_f32(*v40.f32, *v40.f32)));
      v45 = vmulq_n_f32(v26, vmul_f32(*v40.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v31.f32[2] + v44), vmul_f32(*v40.f32, *v40.f32))).f32[0]);
      v31.f32[0] = v32.f32[2] + vaddv_f32(*v32.f32);
      v46 = vrsqrte_f32(v31.u32[0]);
      v47 = vmul_f32(v46, vrsqrts_f32(v31.u32[0], vmul_f32(v46, v46)));
      v48 = vmulq_n_f32(v27, vmul_f32(v47, vrsqrts_f32(v31.u32[0], vmul_f32(v47, v47))).f32[0]);
      *&v49 = v34.f32[2] + vaddv_f32(*v34.f32);
      *v31.f32 = vrsqrte_f32(v49);
      *v31.f32 = vmul_f32(*v31.f32, vrsqrts_f32(v49, vmul_f32(*v31.f32, *v31.f32)));
      v50 = vmulq_n_f32(v33, vmul_f32(*v31.f32, vrsqrts_f32(v49, vmul_f32(*v31.f32, *v31.f32))).f32[0]);
      v33.f32[0] = v36.f32[2] + vaddv_f32(*v36.f32);
      *v36.f32 = vrsqrte_f32(v33.u32[0]);
      *v36.f32 = vmul_f32(*v36.f32, vrsqrts_f32(v33.u32[0], vmul_f32(*v36.f32, *v36.f32)));
      v51 = vmulq_n_f32(v35, vmul_f32(*v36.f32, vrsqrts_f32(v33.u32[0], vmul_f32(*v36.f32, *v36.f32))).f32[0]);
      v36.f32[0] = v42.f32[2] + vaddv_f32(*v42.f32);
      *v42.f32 = vrsqrte_f32(v36.u32[0]);
      *v42.f32 = vmul_f32(*v42.f32, vrsqrts_f32(v36.u32[0], vmul_f32(*v42.f32, *v42.f32)));
      *&v52 = v41.f32[2] + vaddv_f32(*v41.f32);
      *v41.f32 = vrsqrte_f32(v52);
      *v41.f32 = vmul_f32(*v41.f32, vrsqrts_f32(v52, vmul_f32(*v41.f32, *v41.f32)));
      *frustum = v45;
      *(frustum + 1) = v48;
      *(frustum + 2) = v50;
      *(frustum + 3) = v51;
      *(frustum + 4) = vmulq_n_f32(v43, vmul_f32(*v42.f32, vrsqrts_f32(v36.u32[0], vmul_f32(*v42.f32, *v42.f32))).f32[0]);
      *(frustum + 5) = vmulq_n_f32(v39, vmul_f32(*v41.f32, vrsqrts_f32(v52, vmul_f32(*v41.f32, *v41.f32))).f32[0]);
      LOBYTE(v9) = 1;
    }
  }

  return v9;
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

- (id)flattenedClone
{
  v4 = objc_msgSend_copy(self, a2, v2);
  v5 = objc_alloc_init(VFXModel);
  objc_msgSend_setModel_(v4, v6, v5);
  node = self->_node;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF30A0E0;
  v10[3] = &unk_1E7A7E3B0;
  v10[4] = node;
  v10[5] = v4;
  v10[6] = v5;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, v4, v10);
  return v4;
}

- (id)flattenedCopy
{
  v3 = objc_msgSend_flattenedClone(self, a2, v2);

  return v3;
}

- (id)_subdividedCopyWithSubdivisionLevel:(int64_t)level
{
  levelCopy = level;
  v5 = objc_msgSend_worldRef(self, a2, level);
  v7 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
  }

  v8 = sub_1AF1B8E1C(self->_node, levelCopy);
  v12 = objc_msgSend_nodeWithNodeRef_(VFXNode, v9, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  if (objc_msgSend_skinner(v12, v10, v11))
  {
    v15 = objc_msgSend_skinner(self, v13, v14);
    v18 = objc_msgSend_skeleton(v15, v16, v17);
    v21 = objc_msgSend_skinner(v12, v19, v20);
    objc_msgSend_setSkeleton_(v21, v22, v18);
  }

  objc_msgSend__copyAnimationsFrom_(v12, v13, self);
  objc_msgSend__copyBindingsFrom_(v12, v23, self);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v24);
  }

  return v12;
}

- (void)_setPausedOrPausedByInheritance:(BOOL)inheritance
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(self + 48);
  if (((((v3 & 4) == 0) ^ inheritance) & 1) == 0)
  {
    inheritanceCopy = inheritance;
    v6 = inheritance ? 4 : 0;
    *(self + 48) = v3 & 0xFB | v6;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1AF30A3CC;
    v22[3] = &unk_1E7A7E298;
    v22[4] = self;
    inheritanceCopy2 = inheritance;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v22);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = objc_msgSend_childNodes(self, v7, v8, 0);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v18, v24, 16);
    if (v11)
    {
      v14 = v11;
      v15 = *v19;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v9);
          }

          v17 = *(*(&v18 + 1) + 8 * i);
          if ((objc_msgSend_isPaused(v17, v12, v13) & 1) == 0)
          {
            objc_msgSend__setPausedOrPausedByInheritance_(v17, v12, inheritanceCopy);
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v18, v24, 16);
      }

      while (v14);
    }
  }
}

- (void)setPaused:(BOOL)paused
{
  v6 = *(self + 48);
  if (((((v6 & 2) == 0) ^ paused) & 1) == 0)
  {
    v15 = v4;
    v16 = v3;
    pausedCopy = paused;
    if (paused)
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    *(self + 48) = v6 & 0xFD | v9;
    v10 = objc_msgSend_parentNode(self, a2, paused, v15, v16);
    v14 = objc_msgSend_isPausedOrPausedByInheritance(v10, v11, v12) | pausedCopy;

    objc_msgSend__setPausedOrPausedByInheritance_(self, v13, v14);
  }
}

- (CGRect)_focusFrameInView:(id)view
{
  v36 = *MEMORY[0x1E69E9840];
  DWORD2(v34) = 0;
  *&v34 = 0;
  DWORD2(v33) = 0;
  *&v33 = 0;
  if (objc_msgSend_getBoundingBoxMin_max_(self, a2, &v34, &v33))
  {
    v7 = v34;
    v8 = v34;
    DWORD1(v8) = DWORD1(v33);
    v35[0] = v34;
    v35[2] = v8;
    v9 = v33;
    DWORD2(v9) = DWORD2(v34);
    v10 = v33;
    DWORD1(v10) = DWORD1(v34);
    v11 = v33;
    LODWORD(v11) = v34;
    v12 = v34;
    LODWORD(v7) = v33;
    v35[1] = v7;
    DWORD2(v12) = DWORD2(v33);
    v35[3] = v9;
    v35[4] = v12;
    v35[5] = v10;
    v35[6] = v11;
    v35[7] = v33;
    objc_msgSend_worldTransform(self, v5, v6);
    v31 = v16;
    v32 = v15;
    v29 = v18;
    v30 = v17;
    for (i = 0; i != 8; ++i)
    {
      objc_msgSend_projectPoint_(view, v13, v14, *vaddq_f32(v29, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(v35[i])), v31, *&v35[i], 1), v30, v35[i], 2)).i64, *&v29, *&v30, *&v31, *&v32);
      v35[i] = v20;
    }

    v21 = vcvtq_f64_f32(*&v35[0]);
    v22 = 1;
    v23 = v21.f64[0];
    v24 = v21;
    do
    {
      v25 = vcvtq_f64_f32(*&v35[v22]);
      v24 = vbslq_s8(vcgtq_f64(v25, v24), v24, v25);
      if (v23 < *v25.i64)
      {
        v23 = *v25.i64;
      }

      ++v22;
    }

    while (v22 != 8);
    v26 = v23 - *v24.i64;
    v27 = *&v24.i64[1];
    v28 = vsubq_f64(v21, *&v24).f64[1];
  }

  else
  {
    v24.i64[0] = 0;
    v27 = 0.0;
    v26 = 0.0;
    v28 = 0.0;
  }

  result.origin.x = *v24.i64;
  result.size.height = v28;
  result.size.width = v26;
  result.origin.y = v27;
  return result;
}

- (void)_appendFocusableNodesInRect:(CGRect)rect ofView:(id)view toFocusItems:(id)items
{
  v25 = *MEMORY[0x1E69E9840];
  if ((*(self + 50) & 2) != 0)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    if (objc_msgSend_isFocusInteractionEnabled(self, a2, view))
    {
      if ((objc_msgSend__isEffectivelyHidden(self, v12, v13) & 1) == 0)
      {
        objc_msgSend__focusFrameInView_(self, v12, view);
        v27.origin.x = x;
        v27.origin.y = y;
        v27.size.width = width;
        v27.size.height = height;
        if (CGRectIntersectsRect(v26, v27))
        {
          objc_msgSend_addObject_(items, v12, self);
        }
      }
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    childNodes = self->_childNodes;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(childNodes, v12, &v20, v24, 16);
    if (v15)
    {
      v17 = v15;
      v18 = *v21;
      do
      {
        v19 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(childNodes);
          }

          objc_msgSend__appendFocusableNodesInRect_ofView_toFocusItems_(*(*(&v20 + 1) + 8 * v19++), v16, view, items, x, y, width, height);
        }

        while (v17 != v19);
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(childNodes, v16, &v20, v24, 16);
      }

      while (v17);
    }
  }
}

- (void)_setHasFocusableChild
{
  if ((*(self + 50) & 2) == 0)
  {
    *(self + 50) |= 2u;
    objc_msgSend__setHasFocusableChild(self->_parent, a2, v2);
  }
}

- (void)_updateFocusableCache
{
  v23 = *MEMORY[0x1E69E9840];
  if ((*(self + 50) & 2) == 0)
  {
    v4 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF7760(v4, a2, v2, v5, v6, v7, v8, v9);
    }
  }

  if ((*(self + 49) & 0x180) == 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = objc_msgSend_childNodes(self, a2, v2, 0);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v18, v22, 16);
    if (v12)
    {
      v15 = v12;
      v16 = *v19;
      while (2)
      {
        v17 = 0;
        do
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v10);
          }

          if ((*(*(*(&v18 + 1) + 8 * v17) + 50) & 2) != 0)
          {
            objc_msgSend__setHasFocusableChild(self, v13, v14);
            return;
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v18, v22, 16);
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    *(self + 50) &= ~2u;
    objc_msgSend__updateFocusableCache(self->_parent, v13, v14);
  }
}

- (void)setFocusBehavior:(int64_t)behavior
{
  v3 = *(self + 49);
  if (((v3 >> 7) & 3) != behavior)
  {
    v4 = v3 & 0xFE7F | ((behavior & 3) << 7);
    *(self + 49) = v4;
    if ((behavior & 3) != 0)
    {
      *(self + 50) = HIBYTE(v4) | 2;
      objc_msgSend__setHasFocusableChild(self->_parent, a2, behavior);
    }

    else
    {
      objc_msgSend__updateFocusableCache(self, a2, behavior);
    }
  }
}

- (BOOL)_isEffectivelyHidden
{
  v4 = objc_msgSend_parentNode(self, a2, v2);
  if (objc_msgSend__isEffectivelyHidden(v4, v5, v6) & 1) != 0 || (objc_msgSend_isHidden(self, v7, v8))
  {
    return 1;
  }

  objc_msgSend_opacity(self, v9, v10);
  return v12 <= 0.00000011921;
}

- (NSArray)constraints
{
  ComponentWithType = objc_msgSend__findComponentWithType_(self, a2, 6);
  v5 = objc_msgSend_copy(ComponentWithType, v3, v4);

  return v5;
}

- (void)setConstraints:(id)constraints
{
  v30 = *MEMORY[0x1E69E9840];
  ComponentWithType = objc_msgSend__findComponentWithType_(self, a2, 6);
  if (ComponentWithType != constraints)
  {
    v8 = ComponentWithType;
    if (ComponentWithType)
    {
      if (self->_world)
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(ComponentWithType, v6, &v24, v29, 16);
        if (v9)
        {
          v10 = v9;
          v11 = *v25;
          do
          {
            v12 = 0;
            do
            {
              if (*v25 != v11)
              {
                objc_enumerationMutation(v8);
              }

              objc_msgSend_removeWorldReference_(*(*(&v24 + 1) + 8 * v12++), v6, self->_world);
            }

            while (v10 != v12);
            v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v6, &v24, v29, 16);
          }

          while (v10);
        }
      }

      objc_msgSend__removeComponentWithType_(self, v6, 6);
    }

    if (constraints)
    {
      v13 = objc_msgSend_mutableCopy(constraints, v6, v7);
      objc_msgSend__assignComponent_toContainerWithType_(self, v14, v13, 6);
      if (self->_world)
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(constraints, v6, &v20, v28, 16);
        if (v15)
        {
          v16 = v15;
          v17 = *v21;
          do
          {
            v18 = 0;
            do
            {
              if (*v21 != v17)
              {
                objc_enumerationMutation(constraints);
              }

              objc_msgSend_addWorldReference_(*(*(&v20 + 1) + 8 * v18++), v6, self->_world);
            }

            while (v16 != v18);
            v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(constraints, v6, &v20, v28, 16);
          }

          while (v16);
        }
      }
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1AF30ACCC;
    v19[3] = &unk_1E7A7E220;
    v19[4] = constraints;
    v19[5] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v19);
  }
}

- (void)setPhysicsBody:(id)body
{
  v5 = objc_msgSend_physicsBody(self, a2, body);
  if (v5 != body)
  {
    v8 = v5;
    if (v5)
    {
      v9 = objc_msgSend__owner(v5, v6, v7);
      if (v9 != self)
      {
        v12 = sub_1AF0D5194(v9, v10);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF77D8(v8, self, v12);
        }
      }

      objc_msgSend__removeOwner(v8, v10, v11);
      objc_msgSend__removeComponentWithType_(self, v13, 7);
      objc_msgSend_transform(self, v14, v15);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_1AF30AFD4;
      v27[3] = &unk_1E7A7E578;
      selfCopy = self;
      v28 = v16;
      v29 = v17;
      v30 = v18;
      v31 = v19;
      objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v20, self, @"transform", v27);
      v8 = 0xFFFFFFFFLL;
    }

    if (body)
    {
      v8 = (v8 + 1);
      v21 = objc_msgSend__owner(body, v6, v7);
      if (v21)
      {
        v23 = sub_1AF0D5194(v21, v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF7860(body, self, v23);
        }
      }

      objc_msgSend__assignComponent_toContainerWithType_(self, v22, body, 7);
      objc_msgSend__setOwner_(body, v24, self);
      objc_msgSend_resetTransform(body, v25, v26);
    }

    if (v8)
    {
      objc_msgSend__propagatePhysicsBodyCountChange_(self, v6, v8);
    }
  }
}

- (VFXForceField)forceField
{
  result = objc_msgSend__findComponentWithType_(self, a2, 8);
  if (*(self + 48))
  {

    return objc_msgSend_presentationObject(result, v4, v5);
  }

  return result;
}

- (void)setForceField:(id)field
{
  if (objc_msgSend_forceField(self, a2, field) != field)
  {
    objc_msgSend__setComponent_withType_(self, v5, field, 8);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF30B0D8;
    v7[3] = &unk_1E7A7E220;
    v7[4] = self;
    v7[5] = field;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v7);
  }
}

- (id)_audioPlayers
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_nodeRef(self, v5, v6);
  if (!v8)
  {
    v13 = 0;
    if (!v7)
    {
      return v13;
    }

    goto LABEL_5;
  }

  v10 = sub_1AF1BB518(v8, v9);
  v13 = objc_msgSend_copy(v10, v11, v12);
  if (v7)
  {
LABEL_5:
    sub_1AF1CEA9C(v7, v9);
  }

  return v13;
}

- (void)addAudioPlayer:(id)player
{
  if (player)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF30B238;
    v4[3] = &unk_1E7A7E220;
    v4[4] = player;
    v4[5] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v4);
  }

  else
  {
    v3 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF78E8();
    }
  }
}

- (void)removeAllAudioPlayers
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF30B318;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)removeAudioPlayer:(id)player
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF30B3C0;
  v3[3] = &unk_1E7A7E220;
  v3[4] = self;
  v3[5] = player;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (unint64_t)countOfAudioPlayers
{
  v3 = objc_msgSend_audioPlayers(self, a2, v2);

  return objc_msgSend_count(v3, v4, v5);
}

- (id)objectInAudioPlayersAtIndex:(unint64_t)index
{
  v4 = objc_msgSend_audioPlayers(self, a2, index);

  return objc_msgSend_objectAtIndex_(v4, v5, index);
}

- (void)insertObject:(id)object inAudioPlayersAtIndex:(unint64_t)index
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF30B4E8;
  v4[3] = &unk_1E7A7E2E8;
  v4[4] = self;
  v4[5] = object;
  v4[6] = index;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v4);
}

- (void)removeObjectFromAudioPlayersAtIndex:(unint64_t)index
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF30B5A0;
  v3[3] = &unk_1E7A7E248;
  v3[4] = self;
  v3[5] = index;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)replaceObjectInAudioPlayerAtIndex:(unint64_t)index withObject:(id)object
{
  if (!object)
  {
    v7 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF7958(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1AF30B69C;
  v14[3] = &unk_1E7A7E2E8;
  v14[4] = self;
  v14[5] = object;
  v14[6] = index;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v14);
}

- (void)_customEncodingOfVFXNode:(id)node usePresentationObject:(BOOL)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    nodeCopy = node;
  }

  else
  {
    nodeCopy = 0;
  }

  if ((*(self + 48) & 8) == 0)
  {
    objc_msgSend__updateAffine(self, v7, v8);
  }

  if ((*(self + 50) & 8) != 0)
  {
    v10 = objc_msgSend_editorLocked(self, v7, v8);
    objc_msgSend_encodeBool_forKey_(node, v11, v10, @"locked");
  }

  if ((objc_msgSend__isAReference(self, v7, v8) & 1) == 0)
  {
    if (objc_msgSend_light(self, v12, v13))
    {
      v16 = objc_msgSend_light(self, v14, v15);
      v18 = v16;
      if (objectCopy)
      {
        v18 = objc_msgSend_presentationLight(v16, v17, v16);
      }

      objc_msgSend_encodeObject_forKey_(node, v17, v18, @"light");
    }

    if (objc_msgSend_model(self, v14, v15))
    {
      v21 = objc_msgSend_model(self, v19, v20);
      v23 = v21;
      if (objectCopy)
      {
        v23 = objc_msgSend_presentationModel(v21, v22, v21);
      }

      objc_msgSend_encodeObject_forKey_(node, v22, v23, @"model");
    }

    if (objc_msgSend_camera(self, v19, v20))
    {
      v26 = objc_msgSend_camera(self, v24, v25);
      v28 = v26;
      if (objectCopy)
      {
        v28 = objc_msgSend_presentationCamera(v26, v27, v26);
      }

      objc_msgSend_encodeObject_forKey_(node, v27, v28, @"camera");
    }

    if (objc_msgSend_skinner(self, v24, v25))
    {
      v31 = objc_msgSend_skinner(self, v29, v30);
      objc_msgSend_encodeObject_forKey_(node, v32, v31, @"skinner");
    }

    if (objc_msgSend_morpher(self, v29, v30))
    {
      if (nodeCopy && (v35 = objc_msgSend_options(nodeCopy, v33, v34), v37 = objc_msgSend_objectForKeyedSubscript_(v35, v36, @"VFXWorldExportCompressMorphTargets"), objc_msgSend_BOOLValue(v37, v38, v39)) && sub_1AF2FF684(node, self, v34))
      {
        objc_msgSend_setSkipMorphTargets_(nodeCopy, v33, 1);
        v42 = objc_msgSend_morpher(self, v40, v41);
        objc_msgSend_encodeObject_forKey_(node, v43, v42, @"morpher");
        objc_msgSend_setSkipMorphTargets_(nodeCopy, v44, 0);
      }

      else
      {
        v45 = objc_msgSend_morpher(self, v33, v34);
        objc_msgSend_encodeObject_forKey_(node, v46, v45, @"morpher");
      }
    }

    v47 = objc_msgSend_deformers(self, v33, v34);
    if (v47)
    {
      objc_msgSend_encodeObject_forKey_(node, v48, v47, @"deformers");
    }

    if (objc_msgSend_constraints(self, v48, v49))
    {
      v52 = objc_msgSend_constraints(self, v50, v51);
      objc_msgSend_encodeObject_forKey_(node, v53, v52, @"constraints");
    }

    if (objc_msgSend_physicsBody(self, v50, v51))
    {
      v56 = objc_msgSend_physicsBody(self, v54, v55);
      objc_msgSend_encodeObject_forKey_(node, v57, v56, @"physicsBody");
    }

    if (objc_msgSend_forceField(self, v54, v55))
    {
      v60 = objc_msgSend_forceField(self, v58, v59);
      objc_msgSend_encodeObject_forKey_(node, v61, v60, @"forceField");
    }

    if (objc_msgSend_behaviorGraph(self, v58, v59))
    {
      v64 = objc_msgSend_behaviorGraph(self, v62, v63);
      objc_msgSend_encodeObject_forKey_(node, v65, v64, @"behaviorGraph");
    }

    if (objc_msgSend_particleEmitter(self, v62, v63))
    {
      v68 = objc_msgSend_particleEmitter(self, v66, v67);
      objc_msgSend_encodeObject_forKey_(node, v69, v68, @"emitter");
    }

    if (objc_msgSend_particleCollider(self, v66, v67))
    {
      v72 = objc_msgSend_particleCollider(self, v70, v71);
      objc_msgSend_encodeObject_forKey_(node, v73, v72, @"collider");
    }

    if (objc_msgSend_stateManager(self, v70, v71))
    {
      v76 = objc_msgSend_stateManager(self, v74, v75);
      objc_msgSend_encodeObject_forKey_(node, v77, v76, @"stateManager");
    }

    if (objc_msgSend_prefab(self, v74, v75))
    {
      v80 = objc_msgSend_prefab(self, v78, v79);
      objc_msgSend_encodeObject_forKey_(node, v81, v80, @"prefab");
    }

    v82 = *self->_fixedBoundingBoxExtrema;
    if (v82)
    {
      v83 = objc_msgSend_valueWithVFXFloat3_(MEMORY[0x1E696B098], v78, v79, *v82);
      objc_msgSend_encodeObject_forKey_(node, v84, v83, @"fixedBoundingBoxExtrema[0]");
      v87 = objc_msgSend_valueWithVFXFloat3_(MEMORY[0x1E696B098], v85, v86, *(*self->_fixedBoundingBoxExtrema + 16));
      objc_msgSend_encodeObject_forKey_(node, v88, v87, @"fixedBoundingBoxExtrema[1]");
    }

    objc_msgSend_encodeBool_forKey_(node, v78, (*(self + 48) >> 1) & 1, @"paused");
    v90 = (*(self + 49) >> 7) & 3;
    if (v90)
    {
      objc_msgSend_encodeInt_forKey_(node, v89, v90, @"focusBehavior");
    }

    if ((*(self + 48) & 0x20) != 0)
    {
      selfCopy = self;
      if (objectCopy)
      {
        selfCopy = objc_msgSend_presentationNode(self, v89, v90);
      }

      v92 = objc_msgSend_valueForKey_(selfCopy, v89, @"kPivotKey");
      if (v92)
      {
        objc_msgSend_VFXMatrix4Value(v92, v93, v94);
        sub_1AF371B50(node, @"pivot", v95, v96, v97, v98);
      }
    }
  }

  os_unfair_lock_lock(&self->_valueForKeyLock);
  if (objc_msgSend_count(self->_valueForKey, v99, v100))
  {
    v103 = objc_msgSend_mutableCopy(self->_valueForKey, v101, v102);
    objc_msgSend_removeObjectForKey_(v103, v104, @"kPivotKey");
    if (objc_msgSend_count(v103, v105, v106))
    {
      objc_msgSend_encodeObject_forKey_(node, v107, v103, @"clientAttributes");
    }
  }

  os_unfair_lock_unlock(&self->_valueForKeyLock);
  v112 = 0;
  if (objc_msgSend__isAReference(self, v108, v109) && nodeCopy)
  {
    v113 = objc_msgSend_options(nodeCopy, v110, v111);
    v115 = objc_msgSend_objectForKeyedSubscript_(v113, v114, @"VFXWorldExportEmbedReferences");
    v112 = objc_msgSend_BOOLValue(v115, v116, v117);
  }

  if (objc_msgSend_childNodes(self, v110, v111) && v112 & 1 | ((objc_msgSend__isAReference(self, v118, v119) & 1) == 0))
  {
    v122 = objc_msgSend_childNodes(self, v120, v121);
    v125 = objc_msgSend_options(nodeCopy, v123, v124);
    v127 = objc_msgSend_objectForKeyedSubscript_(v125, v126, @"VFXWorldExportOptimize");
    if (objc_msgSend_BOOLValue(v127, v128, v129))
    {
      v122 = objc_msgSend_VFX_compactMapObjectsUsingBlock_(v122, v130, &unk_1F24EC178);
    }

    objc_msgSend_encodeObject_forKey_(node, v130, v122, @"childNodes");
  }
}

- (void)_customDecodingOfVFXNode:(id)node
{
  v167 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_containsValueForKey_(node, a2, @"paused"))
  {
    if (objc_msgSend_decodeBoolForKey_(node, v5, @"paused"))
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *(self + 48) = *(self + 48) & 0xFD | v6;
  }

  v7 = objc_msgSend_decodeIntForKey_(node, v5, @"focusBehavior");
  objc_msgSend_setFocusBehavior_(self, v8, v7);
  v10 = objc_msgSend_decodeBoolForKey_(node, v9, @"locked");
  objc_msgSend_setEditorLocked_(self, v11, v10);
  *self->_anon_40 = xmmword_1AFE20150;
  *&self->_anon_40[16] = xmmword_1AFE20160;
  *&self->_anon_40[32] = xmmword_1AFE20180;
  *&self->_anon_40[48] = xmmword_1AFE201A0;
  *(self + 48) |= 0x10u;
  if (objc_msgSend_containsValueForKey_(node, v12, @"fixedBoundingBoxExtrema[0]"))
  {
    v13 = objc_opt_class();
    v15 = objc_msgSend_decodeObjectOfClass_forKey_(node, v14, v13, @"fixedBoundingBoxExtrema[0]");
    objc_msgSend_VFXFloat3Value(v15, v16, v17);
    v165 = v18;
    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(node, v20, v19, @"fixedBoundingBoxExtrema[1]");
    objc_msgSend_VFXFloat3Value(v21, v22, v23);
    v166 = v24;
    objc_msgSend_setBoundingBoxMin_max_(self, v25, &v165, &v166);
  }

  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v29 = objc_msgSend_vfx_decodeDictionaryWithKeysOfClass_objectsOfClass_forKey_(node, v28, v26, v27, @"whatever");
  v31 = sub_1AF37287C(v29, v30);
  v33 = objc_msgSend_decodeObjectOfClasses_forKey_(node, v32, v31, @"clientAttributes");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = objc_msgSend_mutableCopy(v33, v34, v35);
    objc_msgSend__setAttributes_(self, v37, v36);
  }

  if (objc_msgSend_containsValueForKey_(node, v34, @"pivot"))
  {
    *&v38 = sub_1AF371C4C(node, @"pivot").n128_u64[0];
    objc_msgSend_setPivot_(self, v39, v40, v38);
  }

  v41 = objc_opt_class();
  v43 = objc_msgSend_vfx_decodeObjectOfClass_forKey_(node, v42, v41, @"light");
  objc_msgSend_setLight_(self, v44, v43);
  v45 = objc_opt_class();
  v47 = objc_msgSend_vfx_decodeObjectOfClass_forKey_(node, v46, v45, @"model");
  objc_msgSend_setModel_(self, v48, v47);
  v49 = objc_opt_class();
  v51 = objc_msgSend_vfx_decodeObjectOfClass_forKey_(node, v50, v49, @"camera");
  objc_msgSend_setCamera_(self, v52, v51);
  v53 = objc_opt_class();
  v55 = objc_msgSend_vfx_decodeObjectOfClass_forKey_(node, v54, v53, @"skinner");
  objc_msgSend_setSkinner_(self, v56, v55);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v57 = sub_1AF2FFDB4(node, self);
    objc_msgSend_setAllTargetsFromAnimCodec_(node, v58, v57);
    v59 = objc_opt_class();
    v61 = objc_msgSend_vfx_decodeObjectOfClass_forKey_(node, v60, v59, @"morpher");
    objc_msgSend_setMorpher_(self, v62, v61);
    objc_msgSend_setAllTargetsFromAnimCodec_(node, v63, 0);
  }

  else
  {
    v64 = objc_opt_class();
    v66 = objc_msgSend_vfx_decodeObjectOfClass_forKey_(node, v65, v64, @"morpher");
    objc_msgSend_setMorpher_(self, v67, v66);
  }

  v68 = objc_opt_class();
  v70 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(node, v69, v68, @"deformers");
  objc_msgSend_setDeformers_(self, v71, v70);
  v72 = objc_opt_class();
  v74 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(node, v73, v72, @"constraints");
  objc_msgSend_setConstraints_(self, v75, v74);
  v76 = objc_opt_class();
  v78 = objc_msgSend_vfx_decodeObjectOfClass_forKey_(node, v77, v76, @"forceField");
  objc_msgSend_setForceField_(self, v79, v78);
  if (objc_msgSend_containsValueForKey_(node, v80, @"effect"))
  {
    v81 = objc_opt_class();
    v83 = objc_msgSend_decodeObjectOfClass_forKey_(node, v82, v81, @"effect");
    v84 = [VFXBehaviorGraph alloc];
    v87 = objc_msgSend_tag(v83, v85, v86);
    v89 = objc_msgSend_initWithTag_(v84, v88, v87);
    objc_msgSend_setBehaviorGraph_(self, v90, v89);
    v91 = [VFXParticleEmitter alloc];
    v94 = objc_msgSend_tag(v83, v92, v93);
    v96 = objc_msgSend_initWithTag_(v91, v95, v94);
    objc_msgSend_setParticleEmitter_(self, v97, v96);
  }

  else
  {
    v98 = objc_opt_class();
    v100 = objc_msgSend_decodeObjectOfClass_forKey_(node, v99, v98, @"behaviorGraph");
    objc_msgSend_setBehaviorGraph_(self, v101, v100);
    v102 = objc_opt_class();
    v104 = objc_msgSend_decodeObjectOfClass_forKey_(node, v103, v102, @"emitter");
    v105 = objc_opt_class();
    v107 = objc_msgSend_decodeObjectOfClass_forKey_(node, v106, v105, @"collider");
    if (objc_msgSend_behaviorGraph(self, v108, v109))
    {
      if (v104)
      {
        v112 = objc_msgSend_coreEntityHandle(v104, v110, v111);
        v115 = objc_msgSend_behaviorGraph(self, v113, v114);
        v118 = objc_msgSend_coreEntityHandle(v115, v116, v117);
        if (v112 != v118)
        {
          v119 = sub_1AF0D5194(v118, v110);
          if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDF79D0();
          }

          v122 = objc_msgSend_behaviorGraph(self, v120, v121);
          v125 = objc_msgSend_coreEntityHandle(v122, v123, v124);
          objc_msgSend__patchCoreEntityHandle_(v104, v126, v125);
        }
      }

      if (v107)
      {
        v127 = objc_msgSend_coreEntityHandle(v107, v110, v111);
        v130 = objc_msgSend_particleCollider(self, v128, v129);
        v133 = objc_msgSend_coreEntityHandle(v130, v131, v132);
        if (v127 != v133)
        {
          v134 = sub_1AF0D5194(v133, v110);
          if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDF79D0();
          }

          v137 = objc_msgSend_behaviorGraph(self, v135, v136);
          v140 = objc_msgSend_coreEntityHandle(v137, v138, v139);
          objc_msgSend__patchCoreEntityHandle_(v107, v141, v140);
        }
      }
    }

    objc_msgSend_setParticleEmitter_(self, v110, v104);
    objc_msgSend_setParticleCollider_(self, v142, v107);
  }

  v143 = objc_opt_class();
  v145 = objc_msgSend_decodeObjectOfClass_forKey_(node, v144, v143, @"stateManager");
  objc_msgSend_setStateManager_(self, v146, v145);
  v147 = objc_opt_class();
  v149 = objc_msgSend_decodeObjectOfClass_forKey_(node, v148, v147, @"prefab");
  if (v149)
  {
    objc_msgSend_setPrefab_(self, v150, v149);
  }

  v151 = objc_opt_class();
  v153 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(node, v152, v151, @"childNodes");
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v155 = objc_msgSend_countByEnumeratingWithState_objects_count_(v153, v154, &v160, v164, 16);
  if (v155)
  {
    v157 = v155;
    v158 = *v161;
    do
    {
      for (i = 0; i != v157; ++i)
      {
        if (*v161 != v158)
        {
          objc_enumerationMutation(v153);
        }

        objc_msgSend_addChildNode_(self, v156, *(*(&v160 + 1) + 8 * i));
      }

      v157 = objc_msgSend_countByEnumeratingWithState_objects_count_(v153, v156, &v160, v164, 16);
    }

    while (v157);
  }
}

- (void)_didDecodeVFXNode:(id)node
{
  if (!objc_msgSend_behaviorGraph(self, a2, node))
  {
    v6 = objc_msgSend_particleEmitter(self, v4, v5);
    v9 = objc_msgSend_tag(v6, v7, v8);
    if (v9 || (v12 = objc_msgSend_particleCollider(self, v10, v11), (v9 = objc_msgSend_tag(v12, v13, v14)) != 0) || (v9 = objc_msgSend_valueForUndefinedKey_(self, v15, @"_entityTagIdentifier")) != 0)
    {
      v16 = v9;
      v17 = [VFXBehaviorGraph alloc];
      v20 = objc_msgSend_initWithTag_(v17, v18, v16);

      objc_msgSend_setBehaviorGraph_(self, v19, v20);
    }
  }
}

- (void)_encodeNodePropertiesWithCoder:(id)coder
{
  sub_1AF371A8C(coder, @"position", *self->_position);
  v7 = (*(self + 49) >> 2) & 3;
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_8;
    }

    v8 = *self->_anon_90;
    v9 = @"orientation";
  }

  else
  {
    if (!v7)
    {
      sub_1AF371A8C(coder, @"eulerAngles", *self->_anon_90);
      goto LABEL_8;
    }

    v8 = *self->_anon_90;
    v9 = @"rotation";
  }

  sub_1AF371AF4(coder, v9, v8);
LABEL_8:
  if ((*(self + 49) & 0xC) != 4)
  {
    objc_msgSend_rotation(self, v5, v6);
    sub_1AF371AF4(coder, @"rotation", v10);
  }

  sub_1AF371A8C(coder, @"scale", *self->_scale);
  *&v11 = self->_opacity;
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"opacity", v11);
  objc_msgSend_encodeInteger_forKey_(coder, v13, self->_categoryBitMask, @"categoryBitMask");
  objc_msgSend_encodeInteger_forKey_(coder, v14, self->_renderingOrder, @"renderingOrder");
  name = self->_name;
  if (name)
  {
    objc_msgSend_encodeObject_forKey_(coder, v15, name, @"name");
  }

  objc_msgSend_encodeBool_forKey_(coder, v15, (*(self + 49) >> 4) & 1, @"hidden");
  objc_msgSend_encodeBool_forKey_(coder, v17, (*(self + 49) >> 5) & 1, @"castsShadow");
  objc_msgSend_encodeBool_forKey_(coder, v18, (*(self + 49) >> 6) & 1, @"depthPrePass");
  objc_msgSend_encodeBool_forKey_(coder, v19, *(self + 49) & 1, @"isEyesightFrame");
  v21 = (*(self + 49) >> 1) & 1;

  objc_msgSend_encodeBool_forKey_(coder, v20, v21, @"isHandTrackingRoot");
}

- (void)encodeWithCoder:(id)coder
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = objc_msgSend_options(coder, v5, v6), v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"VFXWorldExportPresentationTree"), objc_msgSend_BOOLValue(v9, v10, v11)))
  {
    v13 = objc_msgSend_presentationNode(self, v5, v12);
    objc_msgSend__updateModelFromPresentation(v13, v14, v15);
    objc_msgSend__updateAffine(v13, v16, v17);
    objc_msgSend__customEncodingOfVFXNode_usePresentationObject_(self, v18, coder, 1);
    objc_msgSend__encodeNodePropertiesWithCoder_(v13, v19, coder);

    sub_1AF372440(coder, self, v20);
  }

  else
  {
    objc_msgSend__customEncodingOfVFXNode_usePresentationObject_(self, v5, coder, 0);
    objc_msgSend__encodeNodePropertiesWithCoder_(self, v21, coder);
    sub_1AF372440(coder, self, v22);

    sub_1AF3728B4(coder, self, v23);
  }
}

- (VFXNode)initWithCoder:(id)coder
{
  v70.receiver = self;
  v70.super_class = VFXNode;
  v6 = [(VFXNode *)&v70 init];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    v9 = objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    v11 = sub_1AF1B8588(v9, v10);
    v6->_node = v11;
    if (v11)
    {
      sub_1AF16CDFC(v11, v6);
    }

    v6->_valueForKeyLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v6, v12, v13);
    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v15, v14, @"name");
    objc_msgSend_setName_(v6, v17, v16);
    objc_msgSend__customDecodingOfVFXNode_(v6, v18, coder);
    v19 = sub_1AF371BC4(coder, @"position");
    objc_msgSend_setPosition_(v6, v20, v21, v19);
    if (objc_msgSend_containsValueForKey_(coder, v22, @"orientation"))
    {
      *&v24 = sub_1AF371C0C(coder, @"orientation").n128_u64[0];
      objc_msgSend_setOrientation_(v6, v25, v26, v24);
    }

    else if (objc_msgSend_containsValueForKey_(coder, v23, @"eulerAngles"))
    {
      v27 = sub_1AF371BC4(coder, @"eulerAngles");
      objc_msgSend_setEulerAngles_(v6, v28, v29, v27);
    }

    else
    {
      *&v30 = sub_1AF371C0C(coder, @"rotation").n128_u64[0];
      objc_msgSend_setRotation_(v6, v31, v32, v30);
    }

    v33 = sub_1AF371BC4(coder, @"scale");
    objc_msgSend_setScale_(v6, v34, v35, v33);
    objc_msgSend_decodeFloatForKey_(coder, v36, @"opacity");
    objc_msgSend_setOpacity_(v6, v37, v38);
    v40 = objc_msgSend_decodeIntegerForKey_(coder, v39, @"categoryBitMask");
    objc_msgSend_setCategoryBitMask_(v6, v41, v40);
    v43 = objc_msgSend_decodeIntegerForKey_(coder, v42, @"renderingOrder");
    objc_msgSend_setRenderingOrder_(v6, v44, v43);
    v46 = objc_msgSend_decodeBoolForKey_(coder, v45, @"hidden");
    objc_msgSend_setHidden_(v6, v47, v46);
    v49 = objc_msgSend_decodeBoolForKey_(coder, v48, @"castsShadow");
    objc_msgSend_setCastsShadow_(v6, v50, v49);
    if (objc_msgSend_containsValueForKey_(coder, v51, @"isEyesightFrame"))
    {
      v53 = objc_msgSend_decodeBoolForKey_(coder, v52, @"isEyesightFrame");
      objc_msgSend_setIsEyeSightFrame_(v6, v54, v53);
    }

    else
    {
      objc_msgSend_setIsEyeSightFrame_(v6, v52, 0);
    }

    if (objc_msgSend_containsValueForKey_(coder, v55, @"isHandTrackingRoot"))
    {
      v57 = objc_msgSend_decodeBoolForKey_(coder, v56, @"isHandTrackingRoot");
      objc_msgSend_setIsHandTrackingRoot_(v6, v58, v57);
    }

    else
    {
      objc_msgSend_setIsHandTrackingRoot_(v6, v56, 0);
    }

    if (objc_msgSend_containsValueForKey_(coder, v59, @"depthPrePass"))
    {
      v61 = objc_msgSend_decodeBoolForKey_(coder, v60, @"depthPrePass");
      objc_msgSend_setUsesDepthPrePass_(v6, v62, v61);
    }

    v63 = objc_opt_class();
    v65 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v64, v63, @"physicsBody");
    objc_msgSend_setPhysicsBody_(v6, v66, v65);
    v6->_animationsLock._os_unfair_lock_opaque = 0;
    sub_1AF37249C(coder, v6);
    sub_1AF372B94(coder, v6);
    objc_msgSend__didDecodeVFXNode_(v6, v67, coder);
    objc_msgSend_setImmediateMode_(VFXTransaction, v68, v7);
  }

  return v6;
}

- (void)setIsAuthoring:(BOOL)authoring
{
  if (authoring)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 50) = *(self + 50) & 0xFB | v3;
  if (authoring)
  {
    objc_msgSend_setCastsShadow_(self, a2, 0);
  }
}

- (void)setEditorLocked:(BOOL)locked
{
  v3 = *(self + 50);
  if (((((v3 & 8) == 0) ^ locked) & 1) == 0)
  {
    if (locked)
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    *(self + 50) = v3 & 0xF7 | v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF30CAE0;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    lockedCopy = locked;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)getBoundingSphereCenter:(VFXNode *)self radius:(SEL)radius
{
  v72 = *MEMORY[0x1E69E9840];
  if (self->_node)
  {
    v4 = v3;
    v5 = v2;
    v65 = 0uLL;
    if (*(self + 48))
    {
      v13 = objc_msgSend_worldRef(self, radius, v2);
      v15 = v13;
      if (v13)
      {
        sub_1AF1CEA20(v13, v14);
      }

      v11 = sub_1AF1C39FC(self->_node, 1, &v65);
      if (v5)
      {
        *v5 = v65;
      }

      if (v4)
      {
        *v4 = v65.i32[3];
      }

      if (v15)
      {
        sub_1AF1CEA9C(v15, v16);
      }
    }

    else
    {
      v48 = v3;
      v64 = 0uLL;
      v7 = objc_msgSend_model(self, radius, v2);
      v63.i32[2] = 0;
      v63.i64[0] = 0;
      v62 = 0;
      if (v7)
      {
        v67.i32[2] = 0;
        v67.i64[0] = 0;
        v66.columns[0].i32[0] = 0;
        BoundingSphereCenter_radius = objc_msgSend_getBoundingSphereCenter_radius_(v7, v8, &v67, &v66);
        v11 = BoundingSphereCenter_radius;
        if (BoundingSphereCenter_radius)
        {
          v12 = v67;
          v12.i32[3] = v66.columns[0].i32[0];
          v65 = v12;
        }
      }

      else
      {
        v11 = 0;
      }

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v17 = objc_msgSend_childNodes(self, v8, v9);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v58, v71, 16);
      if (v19)
      {
        v22 = v19;
        v23 = *v59;
        v21.i32[0] = -1;
        v49 = v21;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v59 != v23)
            {
              objc_enumerationMutation(v17);
            }

            v25 = *(*(&v58 + 1) + 8 * i);
            v26 = objc_msgSend_getBoundingSphereCenter_radius_(v25, v20, &v63, &v62);
            v28 = v63;
            v28.i32[3] = v62;
            v64 = v28;
            if (v26)
            {
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              objc_msgSend_transform(v25, v20, v27);
              v52 = v30;
              v53 = v29;
              v50 = v32;
              v51 = v31;
              objc_msgSend_pivot(v25, v33, v34);
              v74 = __invert_f4(v73);
              v35 = 0;
              v66 = v74;
              v67 = 0u;
              v68 = 0u;
              v69 = 0u;
              v70 = 0u;
              do
              {
                *(&v67 + v35 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, COERCE_FLOAT(*&v66.columns[v35])), v52, *v66.columns[v35].f32, 1), v51, v66.columns[v35], 2), v50, v66.columns[v35], 3);
                ++v35;
              }

              while (v35 != 4);
              v54 = v67;
              v55 = v68;
              v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL), vnegq_f32(v68)), v69, vextq_s8(vuzp1q_s32(v55, v55), v68, 0xCuLL));
              v37 = vmulq_f32(v67, vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL));
              v38 = vaddv_f32(*v37.f32);
              v39 = vmulq_f32(v54, v54);
              v40 = vmulq_f32(v55, v55);
              v41 = vadd_f32(vzip1_s32(*v39.i8, *v40.i8), vzip2_s32(*v39.i8, *v40.i8));
              if ((v37.f32[2] + v38) >= 0.0)
              {
                v42 = 1.0;
              }

              else
              {
                v42 = -1.0;
              }

              v43 = vextq_s8(v39, v39, 8uLL);
              *v43.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v43.f32, *&vextq_s8(v40, v40, 8uLL)), v41));
              v44 = vmulq_f32(v69, v69);
              v43.i32[2] = sqrtf(v44.f32[2] + vaddv_f32(*v44.f32));
              v45 = vmulq_n_f32(v43, v42);
              v46 = vmvnq_s8(vorrq_s8(vcltzq_f32(v45), vcgezq_f32(v45)));
              v46.i32[3] = v46.i32[2];
              v56 = v69;
              v57 = v70;
              v46.i32[0] = vmaxvq_u32(v46);
              sub_1AF27A190(&v64, &v54, &v64, vandq_s8(v45, vdupq_lane_s32(*&vcgtq_s32(v46, v49), 0)));
              if (v11)
              {
                sub_1AF1DA274(&v65, &v64, &v65);
              }

              else
              {
                v65 = v64;
              }

              v11 = 1;
            }
          }

          v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v58, v71, 16);
        }

        while (v22);
      }

      if (v11)
      {
        if (v5)
        {
          *v5 = v65;
        }

        if (v48)
        {
          *v48 = v65.i32[3];
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (double)pivot
{
  if (*(self + 48))
  {
    v8 = objc_msgSend_worldRef(self, v1, v2);
    if (v8)
    {
      v10 = v8;
      sub_1AF1CEA20(v8, v9);
      *&v13 = sub_1AF1B887C(*(self + 8), v11).n128_u64[0];
      sub_1AF1CEA9C(v10, v12);
      return v13;
    }

    else
    {
      *&result = sub_1AF1B887C(*(self + 8), v9).n128_u64[0];
    }
  }

  else
  {
    *&result = 1065353216;
    if ((*(self + 48) & 0x20) != 0)
    {
      v5 = objc_msgSend_valueForKey_(self, v1, @"kPivotKey");
      *&result = 1065353216;
      if (v5)
      {
        objc_msgSend_VFXMatrix4Value(v5, v6, v7, COERCE_DOUBLE(1065353216), 0.0078125, 0.0, 0.0);
      }
    }
  }

  return result;
}

- (BOOL)hasPhysicBody
{
  if (*(self + 48))
  {
    LOBYTE(v2) = sub_1AF1BBE50(self->_node, a2);
  }

  else
  {
    return (*(self + 26) >> 7) & 1;
  }

  return v2;
}

- (void)resetPhysicsBodyTransformInHierarchy
{
  v4 = objc_msgSend_physicsBody(self, a2, v2);
  objc_msgSend_resetTransform(v4, v5, v6);

  objc_msgSend_enumerateChildNodesUsingBlock_(self, v7, &unk_1F24EC198);
}

- (void)_propagatePhysicsBodyCountChange:(int)change
{
  if (self)
  {
    changeCopy = change;
    do
    {
      self->_physicsBodyCountInHierarchy += changeCopy;
      self = objc_msgSend_parentNode(self, a2, *&change);
    }

    while (self);
  }
}

- (void)setPivot:(float32x4_t)pivot
{
  result = objc_msgSend_valueForKey_(self, v5, @"kPivotKey");
  if (result)
  {
    result = objc_msgSend_VFXMatrix4Value(result, v8, v9);
  }

  else
  {
    v12 = xmmword_1AFE47B00;
    v13 = unk_1AFE47B10;
    v10 = xmmword_1AFE47AE0;
    v11 = unk_1AFE47AF0;
  }

  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v10, a2), vceqq_f32(v11, pivot)), vandq_s8(vceqq_f32(v12, a4), vceqq_f32(v13, a5)))) & 0x80000000) == 0)
  {
    objc_msgSend_willChangeValueForKey_(self, v8, @"pivot");
    v16 = vdupq_n_s32(0x3727C5ACu);
    v17 = vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v16, vabdq_f32(pivot, *(MEMORY[0x1E69E9B18] + 16))), vcgeq_f32(v16, vabdq_f32(a2, *MEMORY[0x1E69E9B18]))), vandq_s8(vcgeq_f32(v16, vabdq_f32(a4, *(MEMORY[0x1E69E9B18] + 32))), vcgeq_f32(v16, vabdq_f32(a5, *(MEMORY[0x1E69E9B18] + 48))))));
    *(self + 48) = *(self + 48) & 0xDF | (32 * (v17 >= 0));
    if (v17 < 0)
    {
      objc_msgSend_setValue_forKey_(self, v14, 0, @"kPivotKey");
    }

    else
    {
      v18 = objc_msgSend_valueWithVFXMatrix4_(MEMORY[0x1E696B098], v14, v15);
      objc_msgSend_setValue_forKey_(self, v19, v18, @"kPivotKey");
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1AF30D258;
    v27[3] = &unk_1E7A7E578;
    selfCopy = self;
    v28 = a2;
    pivotCopy = pivot;
    v30 = a4;
    v31 = a5;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v20, self, @"pivot", v27);
    if (*(self + 54))
    {
      objc_msgSend_resetPhysicsBodyTransformInHierarchy(self, v21, v22);
    }

    return objc_msgSend_didChangeValueForKey_(self, v21, @"pivot");
  }

  return result;
}

- (double)transform
{
  if (*(self + 48))
  {
    v5 = objc_msgSend_worldRef(self, v1, v2);
    if (v5)
    {
      v7 = v5;
      sub_1AF1CEA20(v5, v6);
      v11 = sub_1AF1B7F84(*(self + 8), v8);
      sub_1AF1CEA9C(v7, v9);
      *&v4 = v11;
    }

    else
    {
      *&v4 = sub_1AF1B7F84(*(self + 8), v6);
    }
  }

  else
  {
    if ((*(self + 48) & 0x10) == 0)
    {
      objc_msgSend__updateTransform(self, v1, v2);
    }

    v4 = *(self + 64);
  }

  *&result = v4;
  return result;
}

- (float32x4_t)setTransform:(float32x4_t)transform
{
  v7 = result;
  v40 = a2;
  transformCopy = transform;
  v42 = a4;
  v43 = a5;
  if (result[3].i8[0])
  {
    v15 = objc_msgSend_worldRef(result, v5, v6);
    if (v15)
    {
      v23 = v15;
      sub_1AF1CEA20(v15, v16);
      sub_1AF1BA204(v7->i64[1], &v40, v24, v25, v26, v27, v28, v29);
      return sub_1AF1CEA9C(v23, v30);
    }

    else
    {
      return sub_1AF1BA204(v7->i64[1], &v40, v17, v18, v19, v20, v21, v22);
    }
  }

  else if ((result[3].i8[0] & 0x10) == 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(transform, result[5]), vceqq_f32(a2, result[4])), vandq_s8(vceqq_f32(a4, result[6]), vceqq_f32(a5, result[7])))) & 0x80000000) == 0)
  {
    objc_msgSend_willChangeValueForKey_(result, v5, @"transform", *&a2, *&transform, *&a4, *&a5);
    v39.i32[2] = 0;
    v39.i64[0] = 0;
    v38.i32[2] = 0;
    v38.i64[0] = 0;
    v37 = 0uLL;
    sub_1AF3041C0(&v37, &v39, &v38, v33, v34, v35, v36);
    v9 = v40;
    v11 = v37;
    v10 = v38;
    v7[8] = v39;
    v7[9] = v11;
    v7[10] = v10;
    v12 = v7[3].i8[0];
    v7[3].i8[1] = v7[3].i8[1] & 0xF3 | 8;
    v13 = transformCopy;
    v7[4] = v9;
    v7[5] = v13;
    v14 = v43;
    v7[6] = v42;
    v7[7] = v14;
    v7[3].i8[0] = v12 | 0x18;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v8, v7, @"transform");
    if (v7[3].i16[3])
    {
      objc_msgSend_resetPhysicsBodyTransformInHierarchy(v7, v31, v32);
    }

    return objc_msgSend_didChangeValueForKey_(v7, v31, @"transform");
  }

  return result;
}

- (double)position
{
  if (result[6])
  {
    v5 = objc_msgSend_worldRef(result, a2, a3);
    if (v5)
    {
      v7 = v5;
      sub_1AF1CEA20(v5, v6);
      v11 = sub_1AF1B9F08(result[1]);
      sub_1AF1CEA9C(v7, v8);
      *&v4 = v11;
    }

    else
    {
      v9 = result[1];

      *&v4 = sub_1AF1B9F08(v9);
    }
  }

  else
  {
    if ((result[6] & 8) == 0)
    {
      objc_msgSend__updateAffine(result, a2, a3);
    }

    v4 = *(result + 8);
  }

  return *&v4;
}

- (void)setPosition:(VFXNode *)self
{
  if (*(self + 48))
  {
    v12 = v3;
    v7 = objc_msgSend_worldRef(self, a2, v2);
    if (v7)
    {
      v9 = v7;
      sub_1AF1CEA20(v7, v8);
      sub_1AF1B9F10(self->_node, v12);

      sub_1AF1CEA9C(v9, v10);
    }

    else
    {
      node = self->_node;

      sub_1AF1B9F10(node, v12);
    }
  }

  else
  {
    objc_msgSend__setPosition_(self, a2, v2);
    if (self->_physicsBodyCountInHierarchy)
    {

      objc_msgSend_resetPhysicsBodyTransformInHierarchy(self, v5, v6);
    }
  }
}

- (__n128)rotation
{
  if (self[3].i8[0])
  {
    v28 = objc_msgSend_worldRef(self, a2, a3);
    if (v28)
    {
      v37 = v28;
      sub_1AF1CEA20(v28, v29);
      sub_1AF1BA0FC(self->i64[1], v38, v39, v40, v41, v42, v43, v44, v45);
      v59 = v46;
      sub_1AF1CEA9C(v37, v47);
      return v59;
    }

    else
    {
      v55 = self->i64[1];

      sub_1AF1BA0FC(v55, v29, v30, v31, v32, v33, v34, v35, v36);
    }
  }

  else
  {
    if ((self[3].i8[0] & 8) == 0)
    {
      objc_msgSend__updateAffine(self, a2, a3);
    }

    v5 = (self[3].u8[1] >> 2) & 3;
    if (v5 > 1)
    {
      result.n128_u64[0] = 0;
      if (v5 != 2)
      {
        return result;
      }

      v48 = self[9];
      v49 = vmulq_f32(v48, v48);
      v49.f32[0] = v49.f32[2] + vaddv_f32(*v49.f32);
      v50 = vdupq_lane_s32(*v49.f32, 0);
      v50.i32[3] = 0;
      v51 = vrsqrteq_f32(v50);
      v52 = vmulq_f32(v51, vrsqrtsq_f32(v50, vmulq_f32(v51, v51)));
      v53 = vmulq_f32(v48, vmulq_f32(v52, vrsqrtsq_f32(v50, vmulq_f32(v52, v52))));
      v54 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v49.f32[0] != 0.0)), 0x1FuLL));
      v54.i32[3] = 0;
      v58 = vbslq_s8(vcltzq_s32(v54), v53, v48).u64[0];
      v27 = sqrtf(v49.f32[0]);
      v20 = v48.f32[3];
      goto LABEL_11;
    }

    if (!v5)
    {
      v6.i64[0] = 0x3F0000003F000000;
      v6.i64[1] = 0x3F0000003F000000;
      v7 = vmulq_f32(self[9], v6);
      v7.i32[3] = 0;
      x = v7;
      v57 = _simd_cos_f4(v7);
      _Q0 = _simd_sin_f4(x);
      _D2 = vextq_s8(v57, v57, 8uLL).u64[0];
      v10 = vmul_f32(*v57.f32, vext_s8(*_Q0.f32, _D2, 4uLL));
      v11 = vdup_laneq_s32(_Q0, 2);
      v11.f32[0] = -v57.f32[0];
      v12.i32[0] = vextq_s8(_Q0, _Q0, 8uLL).u32[0];
      v12.i32[1] = _Q0.i32[0];
      v13 = vmul_f32(vzip2_s32(*_Q0.f32, *v57.f32), v12);
      *v14.f32 = vmla_f32(vmul_f32(v13, v11), vrev64_s32(v10), vzip1_s32(*_Q0.f32, _D2));
      *_D2.i32 = vmuls_lane_f32(v57.f32[0], *v57.f32, 1);
      __asm { FMLA            S4, S2, V0.S[2] }

      v20 = vmuls_n_f32(_Q0.f32[0], v13.f32[0]) + (v57.f32[0] * *&v10.i32[1]);
      v14.i32[2] = _S4;
      v21 = vmulq_f32(v14, v14);
      v21.f32[0] = v21.f32[2] + vaddv_f32(*v21.f32);
      v22 = vdupq_lane_s32(*v21.f32, 0);
      v22.i32[3] = 0;
      v23 = vrsqrteq_f32(v22);
      v24 = vmulq_f32(v23, vrsqrtsq_f32(v22, vmulq_f32(v23, v23)));
      v25 = vmulq_f32(vmulq_f32(v24, vrsqrtsq_f32(v22, vmulq_f32(v24, v24))), v14);
      v26 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v21.f32[0] != 0.0)), 0x1FuLL));
      v26.i32[3] = 0;
      v58 = vbslq_s8(vcltzq_s32(v26), v25, v14).u64[0];
      v27 = sqrtf(v21.f32[0]);
LABEL_11:
      atan2f(v27, v20);
      result.n128_u64[0] = v58;
      return result;
    }

    return self[9];
  }

  return result;
}

- (void)setRotation:(VFXNode *)self
{
  v12 = v3;
  if ((*(self + 48) & 8) == 0)
  {
    objc_msgSend__updateAffine(self, a2, v2);
    v3 = v12;
  }

  if ((*(self + 49) & 0xC) != 4 || (vminvq_u32(vceqq_f32(*self->_anon_90, v3)) & 0x80000000) == 0)
  {
    objc_msgSend_willChangeValueForKey_(self, a2, @"rotation", *&v12);
    *(self + 48) &= ~0x10u;
    *self->_anon_90 = v13;
    *(self + 49) = *(self + 49) & 0xF3 | 4;
    v6 = vceqzq_f32(v13);
    v6.i32[3] = v6.i32[2];
    if ((vminvq_u32(v6) & 0x80000000) != 0)
    {
      v9 = v13;
    }

    else
    {
      v7 = vmulq_f32(v13, v13);
      *&v8 = v7.f32[2] + vaddv_f32(*v7.f32);
      *v7.f32 = vrsqrte_f32(v8);
      *v7.f32 = vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32)));
      v9 = vmulq_n_f32(v13, vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32))).f32[0]);
    }

    v9.i32[3] = v13.i32[3];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1AF30DBE0;
    v14[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v15 = v9;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v5, self, @"rotation", v14);
    if (self->_physicsBodyCountInHierarchy)
    {
      objc_msgSend_resetPhysicsBodyTransformInHierarchy(self, v10, v11);
    }

    objc_msgSend_didChangeValueForKey_(self, v10, @"rotation");
  }
}

- (void)orientation
{
  if ((*(self + 48) & 1) == 0)
  {
    return objc_msgSend__quaternion(self, v1, v2);
  }

  v5 = objc_msgSend_worldRef(self, v1, v2);
  if (v5)
  {
    v14 = v5;
    sub_1AF1CEA20(v5, v6);
    sub_1AF1BA0F4(*(self + 8), v15, v16, v17, v18, v19, v20, v21, v22);
    return sub_1AF1CEA9C(v14, v23);
  }

  else
  {
    sub_1AF1BA0F4(*(self + 8), v6, v7, v8, v9, v10, v11, v12, v13);
  }

  return result;
}

- (void)setOrientation:(__n128)orientation
{
  if (*(self + 48))
  {
    if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(orientation, orientation))) & 0x80000000) != 0)
    {
      if ((byte_1EB658CB1 & 1) == 0)
      {
        byte_1EB658CB1 = 1;
        v24 = sub_1AF0D5194(self, a2);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF7A40();
        }
      }
    }

    else
    {
      v7 = objc_msgSend_worldRef(self, a2, v3);
      if (v7)
      {
        v15 = v7;
        sub_1AF1CEA20(v7, v8);
        sub_1AF1BA184(*(self + 8), orientation, v16, v17, v18, v19, v20, v21, v22);

        sub_1AF1CEA9C(v15, v23);
      }

      else
      {
        v25 = *(self + 8);

        sub_1AF1BA184(v25, orientation, v8, v9, v10, v11, v12, v13, v14);
      }
    }
  }

  else
  {
    objc_msgSend__setQuaternion_(self, a2, v3, orientation.n128_f64[0]);
    if (*(self + 54))
    {

      objc_msgSend_resetPhysicsBodyTransformInHierarchy(self, v5, v6);
    }
  }
}

- (double)eulerAngles
{
  if (*(self + 48))
  {
    v5 = objc_msgSend_worldRef(self, a2, a3);
    if (v5)
    {
      v14 = v5;
      sub_1AF1CEA20(v5, v6);
      v25 = sub_1AF1BA140(*(self + 8), v15, v16, v17, v18, v19, v20, v21, v22);
      sub_1AF1CEA9C(v14, v23);
      return v25;
    }

    else
    {
      v24 = *(self + 8);

      return sub_1AF1BA140(v24, v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {

    objc_msgSend__euler(self, a2, a3);
  }

  return result;
}

- (void)setEulerAngles:(VFXNode *)self
{
  v17 = v3;
  if (*(self + 48))
  {
    v11 = objc_msgSend_worldRef(self, a2, v2);
    if (v11)
    {
      v13 = v11;
      sub_1AF1CEA20(v11, v12);
      sub_1AF1BA148(self->_node, v14, v17);

      sub_1AF1CEA9C(v13, v15);
    }

    else
    {
      node = self->_node;

      sub_1AF1BA148(node, v12, v17);
    }
  }

  else
  {
    if ((*(self + 48) & 8) == 0)
    {
      objc_msgSend__updateAffine(self, a2, v2);
    }

    objc_msgSend__euler(self, a2, v2, *&v17);
    v7 = vceqq_f32(v6, v18);
    v7.i32[3] = v7.i32[2];
    if ((vminvq_u32(v7) & 0x80000000) == 0)
    {
      objc_msgSend_willChangeValueForKey_(self, v5, @"eulerAngles");
      *(self + 48) &= ~0x10u;
      *self->_anon_90 = v18;
      *(self + 49) &= 0xF3u;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1AF30DFB0;
      v19[3] = &unk_1E7A7E5C8;
      selfCopy = self;
      v20 = v18;
      objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v8, self, @"eulerAngles", v19);
      if (self->_physicsBodyCountInHierarchy)
      {
        objc_msgSend_resetPhysicsBodyTransformInHierarchy(self, v9, v10);
      }

      objc_msgSend_didChangeValueForKey_(self, v9, @"eulerAngles");
    }
  }
}

- (double)scale
{
  if (result[6])
  {
    v5 = objc_msgSend_worldRef(result, a2, a3);
    if (v5)
    {
      v14 = v5;
      sub_1AF1CEA20(v5, v6);
      v26 = sub_1AF1BA070(result[1], v15, v16, v17, v18, v19, v20, v21, v22);
      sub_1AF1CEA9C(v14, v23);
      *&v4 = v26;
    }

    else
    {
      v24 = result[1];

      *&v4 = sub_1AF1BA070(v24, v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    if ((result[6] & 8) == 0)
    {
      objc_msgSend__updateAffine(result, a2, a3);
    }

    v4 = *(result + 10);
  }

  return *&v4;
}

- (void)setScale:(VFXNode *)self
{
  if (*(self + 48))
  {
    v25 = v3;
    v7 = objc_msgSend_worldRef(self, a2, v2);
    if (v7)
    {
      v15 = v7;
      sub_1AF1CEA20(v7, v8);
      sub_1AF1BA078(self->_node, v25, v16, v17, v18, v19, v20, v21, v22);

      sub_1AF1CEA9C(v15, v23);
    }

    else
    {
      node = self->_node;

      sub_1AF1BA078(node, v25, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  else
  {
    objc_msgSend__setScale_(self, a2, v2);
    if (self->_physicsBodyCountInHierarchy)
    {

      objc_msgSend_resetPhysicsBodyTransformInHierarchy(self, v5, v6);
    }
  }
}

- (void)setWorldPosition:(VFXNode *)self
{
  v11 = v3;
  if (objc_msgSend_parentNode(self, a2, v2))
  {
    v7 = objc_msgSend_parentNode(self, v5, v6);
    objc_msgSend_worldTransform(v7, v8, v9);
    v14 = __invert_f4(v13);
    *&v10 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v14.columns[3], v14.columns[2], v11, 2), v14.columns[1], *v11.f32, 1), v14.columns[0], v11.f32[0]).u64[0];
  }

  else
  {
    v10 = *v11.i64;
  }

  objc_msgSend_setPosition_(self, v5, v6, v10);
}

- (double)worldOrientation
{
  objc_msgSend_worldTransform(self, v1, v2);
  v4 = vmulq_f32(v3, v3);
  v6 = vmulq_f32(v5, v5);
  v8 = vmulq_f32(v7, v7);
  v9 = vzip2q_s32(v4, v8);
  v10 = vzip1q_s32(vzip1q_s32(v4, v8), v6);
  v11 = vtrn2q_s32(v4, v6);
  v11.i32[2] = v8.i32[1];
  v12 = vaddq_f32(vzip1q_s32(v9, vdupq_laneq_s32(v6, 2)), vaddq_f32(v10, v11));
  v11.i64[0] = 0x80000000800000;
  v11.i64[1] = 0x80000000800000;
  v13 = vcgeq_f32(v11, v12);
  v12.i32[3] = 0;
  v14 = vrsqrteq_f32(v12);
  v15 = vmulq_f32(v14, vrsqrtsq_f32(v12, vmulq_f32(v14, v14)));
  v16 = v13;
  v16.i32[3] = 0;
  v17 = vbslq_s8(vcltzq_s32(v16), v12, vmulq_f32(v15, vrsqrtsq_f32(v12, vmulq_f32(v15, v15))));
  v18 = vmulq_n_f32(v3, v17.f32[0]);
  v19 = vmulq_lane_f32(v5, *v17.f32, 1);
  v20 = vmulq_laneq_f32(v7, v17, 2);
  v21 = vuzp1q_s32(v20, v20);
  v22 = vuzp1q_s32(v19, v19);
  v23 = v18;
  if (v13.i32[0])
  {
    v24 = vmlaq_f32(vmulq_f32(vextq_s8(v21, v20, 0xCuLL), vnegq_f32(v19)), v20, vextq_s8(v22, v19, 0xCuLL));
    v23 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
  }

  v25 = vuzp1q_s32(v18, v18);
  v26 = v19;
  if (v13.i32[1])
  {
    v27 = vmlaq_f32(vmulq_f32(vextq_s8(v25, v18, 0xCuLL), vnegq_f32(v20)), v18, vextq_s8(v21, v20, 0xCuLL));
    v26 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
  }

  if (v13.i32[2])
  {
    v28 = vmlaq_f32(vmulq_f32(vextq_s8(v22, v19, 0xCuLL), vnegq_f32(v18)), v19, vextq_s8(v25, v18, 0xCuLL));
    v20 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
  }

  v29 = (*v23.i32 + *&v26.i32[1]) + v20.f32[2];
  if (v29 > 0.0)
  {
    v30 = sqrtf(v29 + 1.0);
    *v31.f32 = vsub_f32(*&vzip2q_s32(v26, vuzp1q_s32(v26, v20)), *&vtrn2q_s32(v20, vzip2q_s32(v20, v23)));
    v31.f32[2] = *&v23.i32[1] - *v26.i32;
    v31.f32[3] = v30 * v30;
    v32 = 0.5 / v30;
LABEL_9:
    *&result = vmulq_n_f32(v31, v32).u64[0];
    return result;
  }

  if (*v23.i32 < *&v26.i32[1] || *v23.i32 < v20.f32[2])
  {
    if (*&v26.i32[1] <= v20.f32[2])
    {
      v41 = vzip2q_s32(v23, v26).u64[0];
      v42 = __PAIR64__(v23.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v20.f32[2] + 1.0) - *v23.i32) - *&v26.i32[1])));
      v43 = vdup_lane_s32(*v26.i8, 0);
      v44 = vsub_f32(*v23.i8, v43);
      v43.i32[0] = v42.i32[0];
      v43.i32[0] = vmul_f32(v42, v43).u32[0];
      v43.i32[1] = v44.i32[1];
      *v31.f32 = vadd_f32(v41, *v20.f32);
      *&v31.u32[2] = v43;
      v32 = 0.5 / v42.f32[0];
      goto LABEL_9;
    }

    v36 = sqrtf(((*&v26.i32[1] + 1.0) - *v23.i32) - v20.f32[2]);
    v40.f32[0] = *&v23.i32[1] + *v26.i32;
    v35 = vzip2q_s32(v23, v26).u64[0];
    v40.f32[1] = v36 * v36;
    *&v40.u32[2] = vext_s8(vadd_f32(*v20.f32, v35), vsub_f32(*v20.f32, v35), 4uLL);
  }

  else
  {
    v36 = sqrtf(((*v23.i32 + 1.0) - *&v26.i32[1]) - v20.f32[2]);
    v40.f32[0] = v36 * v36;
    v37 = *&v23.i32[1] + *v26.i32;
    v38 = vzip2q_s32(v23, v26).u64[0];
    LODWORD(v39) = vadd_f32(v38, *v20.f32).u32[0];
    HIDWORD(v39) = vsub_f32(v38, *&v20).i32[1];
    v40.f32[1] = v37;
    v40.i64[1] = v39;
  }

  *&result = vmulq_n_f32(v40, 0.5 / v36).u64[0];
  return result;
}

- (void)setWorldOrientation:(void *)orientation
{
  if (!objc_msgSend_parentNode(orientation, v2, v3))
  {
    v36 = a2.i64[0];
    goto LABEL_21;
  }

  v7 = objc_msgSend_parentNode(orientation, v5, v6);
  objc_msgSend_worldTransform(v7, v8, v9);
  v59 = __invert_f4(v58);
  v59.columns[3] = vmulq_f32(v59.columns[0], v59.columns[0]);
  v10 = vmulq_f32(v59.columns[1], v59.columns[1]);
  v11 = vmulq_f32(v59.columns[2], v59.columns[2]);
  v12 = vzip2q_s32(v59.columns[3], v11);
  v13 = vzip1q_s32(vzip1q_s32(v59.columns[3], v11), v10);
  v59.columns[3] = vtrn2q_s32(v59.columns[3], v10);
  v59.columns[3].i32[2] = v11.i32[1];
  v14 = vaddq_f32(vzip1q_s32(v12, vdupq_laneq_s32(v10, 2)), vaddq_f32(v13, v59.columns[3]));
  v59.columns[3].i64[0] = 0x80000000800000;
  v59.columns[3].i64[1] = 0x80000000800000;
  v15 = vcgeq_f32(v59.columns[3], v14);
  v14.i32[3] = 0;
  v16 = vrsqrteq_f32(v14);
  v17 = vmulq_f32(v16, vrsqrtsq_f32(v14, vmulq_f32(v16, v16)));
  v18 = v15;
  v18.i32[3] = 0;
  v19 = vbslq_s8(vcltzq_s32(v18), v14, vmulq_f32(v17, vrsqrtsq_f32(v14, vmulq_f32(v17, v17))));
  v20 = vmulq_n_f32(v59.columns[0], v19.f32[0]);
  v21 = vmulq_lane_f32(v59.columns[1], *v19.f32, 1);
  v22 = vmulq_laneq_f32(v59.columns[2], v19, 2);
  v23 = vuzp1q_s32(v22, v22);
  v24 = vuzp1q_s32(v21, v21);
  v25 = v20;
  if (v15.i32[0])
  {
    v26 = vmlaq_f32(vmulq_f32(vextq_s8(v23, v22, 0xCuLL), vnegq_f32(v21)), v22, vextq_s8(v24, v21, 0xCuLL));
    v25 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
  }

  v27 = vuzp1q_s32(v20, v20);
  v28 = v21;
  if (v15.i32[1])
  {
    v29 = vmlaq_f32(vmulq_f32(vextq_s8(v27, v20, 0xCuLL), vnegq_f32(v22)), v20, vextq_s8(v23, v22, 0xCuLL));
    v28 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
  }

  if (v15.i32[2])
  {
    v30 = vmlaq_f32(vmulq_f32(vextq_s8(v24, v21, 0xCuLL), vnegq_f32(v20)), v21, vextq_s8(v27, v20, 0xCuLL));
    v22 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
  }

  v31 = (*v25.i32 + *&v28.i32[1]) + v22.f32[2];
  if (v31 <= 0.0)
  {
    _NF = *v25.i32 < *&v28.i32[1] || *v25.i32 < v22.f32[2];
    v35 = a2;
    if (_NF)
    {
      if (*&v28.i32[1] <= v22.f32[2])
      {
        v44 = vzip2q_s32(v25, v28).u64[0];
        v45 = __PAIR64__(v25.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v22.f32[2] + 1.0) - *v25.i32) - *&v28.i32[1])));
        v46 = vdup_lane_s32(*v28.i8, 0);
        v47 = vsub_f32(*v25.i8, v46);
        v46.i32[0] = v45.i32[0];
        v46.i32[0] = vmul_f32(v45, v46).u32[0];
        v46.i32[1] = v47.i32[1];
        *v48.f32 = vadd_f32(v44, *v22.f32);
        *&v48.u32[2] = v46;
        _Q1 = vmulq_n_f32(v48, 0.5 / v45.f32[0]);
        goto LABEL_20;
      }

      v39 = sqrtf(((*&v28.i32[1] + 1.0) - *v25.i32) - v22.f32[2]);
      v43.f32[0] = *&v25.i32[1] + *v28.i32;
      v38 = vzip2q_s32(v25, v28).u64[0];
      v43.f32[1] = v39 * v39;
      *&v43.u32[2] = vext_s8(vadd_f32(*v22.f32, v38), vsub_f32(*v22.f32, v38), 4uLL);
    }

    else
    {
      v39 = sqrtf(((*v25.i32 + 1.0) - *&v28.i32[1]) - v22.f32[2]);
      v43.f32[0] = v39 * v39;
      v40 = *&v25.i32[1] + *v28.i32;
      v41 = vzip2q_s32(v25, v28).u64[0];
      LODWORD(v42) = vadd_f32(v41, *v22.f32).u32[0];
      HIDWORD(v42) = vsub_f32(v41, *&v22).i32[1];
      v43.f32[1] = v40;
      v43.i64[1] = v42;
    }

    _Q1 = vmulq_n_f32(v43, 0.5 / v39);
  }

  else
  {
    v32 = sqrtf(v31 + 1.0);
    *v33.f32 = vsub_f32(*&vzip2q_s32(v28, vuzp1q_s32(v28, v22)), *&vtrn2q_s32(v22, vzip2q_s32(v22, v25)));
    v33.f32[2] = *&v25.i32[1] - *v28.i32;
    v33.f32[3] = v32 * v32;
    _Q1 = vmulq_n_f32(v33, 0.5 / v32);
    v35 = a2;
  }

LABEL_20:
  _S2 = v35.i32[3];
  v50 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), vnegq_f32(_Q1)), v35, vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL));
  v36 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(_Q1, v35, 3), v35, _Q1, 3), vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL)).u64[0];
  __asm { FMLA            S3, S2, V1.S[3] }

LABEL_21:

  return objc_msgSend_setOrientation_(orientation, v5, v6, *&v36);
}

- (float32x4_t)worldTransform
{
  if (*(self + 48))
  {
    v20 = objc_msgSend_worldRef(self, a2, v2);
    v22 = v20;
    if (v20)
    {
      sub_1AF1CEA20(v20, v21);
    }

    v23 = sub_1AF1B9B04(*(self + 8), v21);
    result = *v23;
    if (v22)
    {
      v33 = *v23;
      sub_1AF1CEA9C(v22, v24);
      return v33;
    }
  }

  else
  {
    objc_msgSend_transform(self, a2, v2);
    v29 = v7;
    v31 = v6;
    v25 = v9;
    v27 = v8;
    if ((*(self + 48) & 0x20) != 0)
    {
      objc_msgSend_pivot(self, v4, v5);
      v43 = __invert_f4(v42);
      v10 = 0;
      v34 = v31;
      v35 = v29;
      v36 = v27;
      v37 = v25;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      do
      {
        *(&v38 + v10) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43.columns[0], COERCE_FLOAT(*(&v34 + v10))), v43.columns[1], *&v34.f32[v10 / 4], 1), v43.columns[2], *(&v34 + v10), 2), v43.columns[3], *(&v34 + v10), 3);
        v10 += 16;
      }

      while (v10 != 64);
      v29 = v39;
      v31 = v38;
      v25 = v41;
      v27 = v40;
    }

    v11 = objc_msgSend_parentNode(self, v4, v5, v25, v27, v29, *&v31, *&v34, v35, v36, v37);
    if (v11)
    {
      objc_msgSend_worldTransform(v11, v12, v13);
      v18 = 0;
      v34 = v32;
      v35 = v30;
      v36 = v28;
      v37 = v26;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      do
      {
        *(&v38 + v18) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(*(&v34 + v18))), v15, *&v34.f32[v18 / 4], 1), v16, *(&v34 + v18), 2), v17, *(&v34 + v18), 3);
        v18 += 16;
      }

      while (v18 != 64);
      return v38;
    }

    else
    {
      return v32;
    }
  }

  return result;
}

- (void)setWorldTransform:(double)transform
{
  if (objc_msgSend_parentNode(self, v5, v6))
  {
    v10 = objc_msgSend_parentNode(self, v8, v9);
    objc_msgSend_convertTransform_fromNode_(v10, v11, 0, a2, transform, a4, a5);
  }

  else
  {
    v15 = a5;
    transformCopy = transform;
    v14 = a4;
    v12 = a2;
  }

  return objc_msgSend_setTransform_(self, v8, v9, v12, transformCopy, v14, v15);
}

- (double)convertPosition:(const char *)position toNode:(void *)node
{
  v5.columns[3].i64[0] = a2.i64[0];
  nodeCopy = node;
  if (!node)
  {
    v8 = objc_msgSend_world(self, position, 0);
    nodeCopy = objc_msgSend_rootNode(v8, v9, v10);
    v5.columns[3].i64[0] = a2.i64[0];
  }

  if (nodeCopy != self)
  {
    objc_msgSend_worldTransform(self, position, node);
    v5.columns[3] = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v5.columns[3], v5.columns[2], a2, 2), v5.columns[1], *a2.f32, 1), v5.columns[0], a2.f32[0]);
    if (node)
    {
      v15 = v5.columns[3];
      objc_msgSend_worldTransform(node, v11, v12);
      v5 = __invert_f4(v16);
      v5.columns[3].i64[0] = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v5.columns[3], v5.columns[2], v15, 2), v5.columns[1], *v15.f32, 1), v5.columns[0], v15.f32[0]).u64[0];
    }
  }

  return *v5.columns[3].i64;
}

- (double)convertPosition:(const char *)position fromNode:(void *)node
{
  nodeCopy = node;
  if (!node)
  {
    v7 = objc_msgSend_world(self, position, 0);
    nodeCopy = objc_msgSend_rootNode(v7, v8, v9);
  }

  if (nodeCopy == self)
  {
    return *a2.i64;
  }

  objc_msgSend_worldTransform(self, position, node);
  v25 = __invert_f4(v24);
  v12 = v25.columns[3];
  if (node)
  {
    v21 = v25.columns[3];
    v22 = v25.columns[0];
    v19 = v25.columns[2];
    v20 = v25.columns[1];
    objc_msgSend_worldTransform(node, v10, v11);
    v16 = vmlaq_lane_f32(vmlaq_laneq_f32(v14, v13, a2, 2), v15, *a2.f32, 1);
    v25.columns[1] = v20;
    v12 = v21;
    v25.columns[3] = vmlaq_n_f32(v16, v17, a2.f32[0]);
    v25.columns[2] = v19;
    v25.columns[0] = v22;
  }

  else
  {
    v25.columns[3] = a2;
  }

  *&result = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v12, v25.columns[2], v25.columns[3], 2), v25.columns[1], *v25.columns[3].f32, 1), v25.columns[0], v25.columns[3].f32[0]).u64[0];
  return result;
}

- (double)convertVector:(const char *)vector toNode:(void *)node
{
  v5.columns[2].i64[0] = a2.i64[0];
  nodeCopy = node;
  if (!node)
  {
    v8 = objc_msgSend_world(self, vector, 0);
    nodeCopy = objc_msgSend_rootNode(v8, v9, v10);
    v5.columns[2].i64[0] = a2.i64[0];
  }

  if (nodeCopy != self)
  {
    objc_msgSend_worldTransform(self, vector, node);
    v5.columns[2] = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v5.columns[2], a2, 2), v5.columns[1], *a2.f32, 1), v5.columns[0], a2.f32[0]);
    if (node)
    {
      v15 = v5.columns[2];
      objc_msgSend_worldTransform(node, v11, v12);
      v5 = __invert_f4(v16);
      v5.columns[2].i64[0] = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v5.columns[2], v15, 2), v5.columns[1], *v15.f32, 1), v5.columns[0], v15.f32[0]).u64[0];
    }
  }

  return *v5.columns[2].i64;
}

- (double)convertVector:(const char *)vector fromNode:(void *)node
{
  nodeCopy = node;
  if (!node)
  {
    v7 = objc_msgSend_world(self, vector, 0);
    nodeCopy = objc_msgSend_rootNode(v7, v8, v9);
  }

  if (nodeCopy == self)
  {
    return *a2.i64;
  }

  objc_msgSend_worldTransform(self, vector, node);
  v12 = __invert_f4(v20);
  v12.columns[3] = v12.columns[0];
  if (node)
  {
    v17 = v12.columns[1];
    v18 = v12.columns[0];
    v16 = v12.columns[2];
    objc_msgSend_worldTransform(node, v10, v11);
    v13 = vmlaq_lane_f32(vmulq_laneq_f32(v12.columns[2], a2, 2), v12.columns[1], *a2.f32, 1);
    v12.columns[2] = v16;
    v12.columns[1] = v17;
    v14 = vmlaq_n_f32(v13, v12.columns[0], a2.f32[0]);
    v12.columns[3] = v18;
  }

  else
  {
    v14 = a2;
  }

  *&result = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v12.columns[2], v14, 2), v12.columns[1], *v14.f32, 1), v12.columns[3], v14.f32[0]).u64[0];
  return result;
}

- (float32x4_t)convertTransform:(__n128)transform toNode:(__n128)node
{
  if (a7)
  {
    if (a7 == self)
    {
      return result;
    }

    v30 = result;
    transformCopy2 = transform;
    nodeCopy2 = node;
    v33 = a5;
    objc_msgSend_worldTransform(self, a6, a7);
    v28 = v10;
    v29 = v9;
    v26 = v12;
    v27 = v11;
    objc_msgSend_worldTransform(a7, v13, v14);
    v43 = __invert_f4(v42);
    v15 = 0;
    v34 = v29;
    v35 = v28;
    v36 = v27;
    v37 = v26;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    do
    {
      *(&v38 + v15) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43.columns[0], COERCE_FLOAT(*(&v34 + v15))), v43.columns[1], *&v34.f32[v15 / 4], 1), v43.columns[2], *(&v34 + v15), 2), v43.columns[3], *(&v34 + v15), 3);
      v15 += 16;
    }

    while (v15 != 64);
    v16 = v38;
    v17 = v39;
    v18 = v40;
    v19 = v41;
  }

  else
  {
    v30 = result;
    transformCopy2 = transform;
    nodeCopy2 = node;
    v33 = a5;
    v20 = objc_msgSend_world(self, a6, 0);
    if (objc_msgSend_rootNode(v20, v21, v22) == self)
    {
      return v30;
    }

    objc_msgSend_worldTransform(self, v23, v24);
  }

  v25 = 0;
  v34 = v30;
  v35 = transformCopy2;
  v36 = nodeCopy2;
  v37 = v33;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  do
  {
    *(&v38 + v25) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*(&v34 + v25))), v17, *&v34.f32[v25 / 4], 1), v18, *(&v34 + v25), 2), v19, *(&v34 + v25), 3);
    v25 += 16;
  }

  while (v25 != 64);
  return v38;
}

- (double)convertTransform:(__n128)transform fromNode:(__n128)node
{
  v9 = a7;
  v27 = a2;
  if (!a7)
  {
    v10 = objc_msgSend_world(self, a6, 0);
    v9 = objc_msgSend_rootNode(v10, v11, v12);
    a2.n128_u64[0] = v27.n128_u64[0];
  }

  if (v9 != self)
  {
    objc_msgSend_worldTransform(self, a6, a7);
    v40 = __invert_f4(v39);
    v15 = v40.columns[2];
    if (a7)
    {
      v25 = v40.columns[1];
      v26 = v40.columns[0];
      v23 = v40.columns[3];
      v24 = v40.columns[2];
      objc_msgSend_worldTransform(a7, v13, v14);
      v16 = 0;
      v31 = v17;
      transformCopy = v18;
      nodeCopy = v19;
      v34 = v20;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      do
      {
        *(&v35 + v16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(*(&v31 + v16))), v25, v31.n128_u64[v16 / 8], 1), v24, *(&v31 + v16), 2), v23, *(&v31 + v16), 3);
        v16 += 16;
      }

      while (v16 != 64);
      v40.columns[0] = v35;
      v40.columns[1] = v36;
      v15 = v37;
      v40.columns[3] = v38;
    }

    v21 = 0;
    v31 = v27;
    transformCopy = transform;
    nodeCopy = node;
    v34 = a5;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    do
    {
      *(&v35 + v21) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40.columns[0], COERCE_FLOAT(*(&v31 + v21))), v40.columns[1], v31.n128_u64[v21 / 8], 1), v15, *(&v31 + v21), 2), v40.columns[3], *(&v31 + v21), 3);
      v21 += 16;
    }

    while (v21 != 64);
    a2.n128_u64[0] = v35.i64[0];
  }

  return a2.n128_f64[0];
}

- (double)worldUp
{
  objc_msgSend_worldOrientation(self, a2, a3);
  v19 = v3;
  v4 = objc_opt_class();
  objc_msgSend_localUp(v4, v5, v6);
  v7 = vmulq_f32(v19, xmmword_1AFE21390);
  v8 = vnegq_f32(v7);
  v9 = vtrn2q_s32(v7, vtrn1q_s32(v7, v8));
  v11 = vmulq_lane_f32(vextq_s8(v7, v8, 8uLL), *v10.f32, 1);
  v12 = vrev64q_s32(v7);
  v12.i32[0] = v8.i32[1];
  v12.i32[3] = v8.i32[2];
  v13 = vmlaq_laneq_f32(vmlaq_n_f32(v11, vextq_s8(v9, v9, 8uLL), v10.f32[0]), v12, v10, 2);
  v14 = vnegq_f32(v13);
  v15 = vtrn2q_s32(v13, vtrn1q_s32(v13, v14));
  v16 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v13, v14, 8uLL), *v19.f32, 1), vextq_s8(v15, v15, 8uLL), v19.f32[0]);
  v17 = vrev64q_s32(v13);
  v17.i32[0] = v14.i32[1];
  v17.i32[3] = v14.i32[2];
  *&result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v13, v19, 3), v17, v19, 2), v16).u64[0];
  return result;
}

- (double)worldRight
{
  objc_msgSend_worldOrientation(self, a2, a3);
  v19 = v3;
  v4 = objc_opt_class();
  objc_msgSend_localRight(v4, v5, v6);
  v7 = vmulq_f32(v19, xmmword_1AFE21390);
  v8 = vnegq_f32(v7);
  v9 = vtrn2q_s32(v7, vtrn1q_s32(v7, v8));
  v11 = vmulq_lane_f32(vextq_s8(v7, v8, 8uLL), *v10.f32, 1);
  v12 = vrev64q_s32(v7);
  v12.i32[0] = v8.i32[1];
  v12.i32[3] = v8.i32[2];
  v13 = vmlaq_laneq_f32(vmlaq_n_f32(v11, vextq_s8(v9, v9, 8uLL), v10.f32[0]), v12, v10, 2);
  v14 = vnegq_f32(v13);
  v15 = vtrn2q_s32(v13, vtrn1q_s32(v13, v14));
  v16 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v13, v14, 8uLL), *v19.f32, 1), vextq_s8(v15, v15, 8uLL), v19.f32[0]);
  v17 = vrev64q_s32(v13);
  v17.i32[0] = v14.i32[1];
  v17.i32[3] = v14.i32[2];
  *&result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v13, v19, 3), v17, v19, 2), v16).u64[0];
  return result;
}

- (double)worldFront
{
  objc_msgSend_worldOrientation(self, a2, a3);
  v19 = v3;
  v4 = objc_opt_class();
  objc_msgSend_localFront(v4, v5, v6);
  v7 = vmulq_f32(v19, xmmword_1AFE21390);
  v8 = vnegq_f32(v7);
  v9 = vtrn2q_s32(v7, vtrn1q_s32(v7, v8));
  v11 = vmulq_lane_f32(vextq_s8(v7, v8, 8uLL), *v10.f32, 1);
  v12 = vrev64q_s32(v7);
  v12.i32[0] = v8.i32[1];
  v12.i32[3] = v8.i32[2];
  v13 = vmlaq_laneq_f32(vmlaq_n_f32(v11, vextq_s8(v9, v9, 8uLL), v10.f32[0]), v12, v10, 2);
  v14 = vnegq_f32(v13);
  v15 = vtrn2q_s32(v13, vtrn1q_s32(v13, v14));
  v16 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v13, v14, 8uLL), *v19.f32, 1), vextq_s8(v15, v15, 8uLL), v19.f32[0]);
  v17 = vrev64q_s32(v13);
  v17.i32[0] = v14.i32[1];
  v17.i32[3] = v14.i32[2];
  *&result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v13, v19, 3), v17, v19, 2), v16).u64[0];
  return result;
}

- (void)lookAt:(VFXNode *)self
{
  objc_msgSend_worldUp(self, a2, v2);
  objc_msgSend_localFront(VFXNode, v4, v5);

  MEMORY[0x1EEE66B58](self, sel_lookAt_up_localFront_, v6);
}

- (void)lookAt:(VFXNode *)self up:(SEL)up localFront:
{
  v112 = v5;
  v114 = v4;
  v117 = v3;
  objc_msgSend_worldPosition(self, up, v2);
  v8 = vcgeq_f32(vdupq_n_s32(0x3727C5ACu), vabdq_f32(v117, v7));
  v8.i32[3] = v8.i32[2];
  if ((vminvq_u32(v8) & 0x80000000) == 0)
  {
    v9 = vsubq_f32(v117, v7);
    v11 = vmulq_f32(v9, v9);
    v10 = vaddv_f32(*v11.f32);
    v11.i32[1] = 0;
    *&v12 = v11.f32[2] + v10;
    v13 = vrsqrte_f32(COERCE_UNSIGNED_INT(v11.f32[2] + v10));
    v14 = vmul_f32(v13, vrsqrts_f32(v12, vmul_f32(v13, v13)));
    v15 = vmulq_n_f32(v9, vmul_f32(v14, vrsqrts_f32(v12, vmul_f32(v14, v14))).f32[0]);
    v16 = vmulq_f32(v112, v15);
    if ((v16.f32[2] + vaddv_f32(*v16.f32)) >= 0.0)
    {
      v47 = vaddq_f32(v112, v15);
      v48 = vmulq_f32(v47, v47);
      v11.f32[0] = v48.f32[2] + vaddv_f32(*v48.f32);
      *v48.f32 = vrsqrte_f32(*v11.f32);
      *v48.f32 = vmul_f32(*v48.f32, vrsqrts_f32(*v11.f32, vmul_f32(*v48.f32, *v48.f32)));
      v49 = vmulq_n_f32(v47, vmul_f32(*v48.f32, vrsqrts_f32(*v11.f32, vmul_f32(*v48.f32, *v48.f32))).f32[0]);
      v50 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL), vnegq_f32(v112)), v49, vextq_s8(vuzp1q_s32(v112, v112), v112, 0xCuLL));
      v46 = vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL);
      v51 = vmulq_f32(v112, v49);
      v46.f32[3] = v51.f32[2] + vaddv_f32(*v51.f32);
      v20 = vmulq_f32(v15, v15);
      v20.f32[0] = v20.f32[2] + vaddv_f32(*v20.f32);
    }

    else
    {
      v17 = vmulq_f32(v112, v112);
      *&v18 = v17.f32[2] + vaddv_f32(*v17.f32);
      *v17.f32 = vrsqrte_f32(v18);
      *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32)));
      v19 = vmulq_n_f32(v112, vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32))).f32[0]);
      v20 = vmulq_f32(v15, v15);
      v20.f32[0] = v20.f32[2] + vaddv_f32(*v20.f32);
      v11.f32[0] = v20.f32[0];
      v21 = vrsqrte_f32(*v11.f32);
      v22 = vmul_f32(v21, vrsqrts_f32(*v11.f32, vmul_f32(v21, v21)));
      v23 = vaddq_f32(v19, vmulq_n_f32(v15, vmul_f32(v22, vrsqrts_f32(*v11.f32, vmul_f32(v22, v22))).f32[0]));
      v24 = vmulq_f32(v23, v23);
      v25 = v24.f32[2] + vaddv_f32(*v24.f32);
      if (v25 <= 1.4211e-14)
      {
        v52 = vabsq_f32(v112);
        v53 = v52.f32[1];
        v54 = v52.f32[2];
        if (v52.f32[0] > v52.f32[1] || v52.f32[0] > v52.f32[2])
        {
          v55 = vextq_s8(vuzp1q_s32(v112, v112), v112, 0xCuLL);
          if (v53 <= v54)
          {
            v56 = vmulq_f32(v112, xmmword_1AFE213B0);
            v57 = xmmword_1AFE20160;
          }

          else
          {
            v56 = vmulq_f32(v112, xmmword_1AFE213A0);
            v57 = xmmword_1AFE20180;
          }
        }

        else
        {
          v55 = vextq_s8(vuzp1q_s32(v112, v112), v112, 0xCuLL);
          v56 = vmulq_f32(v112, xmmword_1AFE213C0);
          v57 = xmmword_1AFE20150;
        }

        v58 = vmlaq_f32(v56, v57, v55);
        v59 = vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL);
        v60 = vmulq_f32(v58, v58);
        *&v61 = v60.f32[1] + (v60.f32[2] + v60.f32[0]);
        *v60.f32 = vrsqrte_f32(v61);
        *v60.f32 = vmul_f32(*v60.f32, vrsqrts_f32(v61, vmul_f32(*v60.f32, *v60.f32)));
        v46 = vmulq_n_f32(v59, vmul_f32(*v60.f32, vrsqrts_f32(v61, vmul_f32(*v60.f32, *v60.f32))).f32[0]);
        v46.i32[3] = 0;
      }

      else
      {
        v26 = LODWORD(v25);
        v27 = vrsqrte_f32(LODWORD(v25));
        v28 = vmul_f32(v27, vrsqrts_f32(v26, vmul_f32(v27, v27)));
        v29 = vmulq_n_f32(v23, vmul_f32(v28, vrsqrts_f32(v26, vmul_f32(v28, v28))).f32[0]);
        v30 = vaddq_f32(v112, v29);
        v31 = vmulq_f32(v30, v30);
        *&v32 = v31.f32[2] + vaddv_f32(*v31.f32);
        *v31.f32 = vrsqrte_f32(v32);
        *v31.f32 = vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32)));
        v33 = vmulq_n_f32(v30, vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32))).f32[0]);
        v34 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), vnegq_f32(v112)), v33, vextq_s8(vuzp1q_s32(v112, v112), v112, 0xCuLL));
        v35 = vmulq_f32(v112, v33);
        v36 = vaddq_f32(v15, v29);
        v37 = vmulq_f32(v36, v36);
        *&v38 = v37.f32[2] + vaddv_f32(*v37.f32);
        *v37.f32 = vrsqrte_f32(v38);
        *v37.f32 = vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32)));
        v39 = vmulq_n_f32(v36, vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32))).f32[0]);
        v40 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), vnegq_f32(v29)), v39, vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL));
        v41 = vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL);
        v42 = vmulq_f32(v29, v39);
        v41.f32[3] = v42.f32[2] + vaddv_f32(*v42.f32);
        v43 = vnegq_f32(v41);
        v44 = vtrn2q_s32(v41, vtrn1q_s32(v41, v43));
        v45 = vrev64q_s32(v41);
        v45.i32[0] = v43.i32[1];
        v45.i32[3] = v43.i32[2];
        v46 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v41, v35.f32[2] + vaddv_f32(*v35.f32)), v45, *v34.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v41, v43, 8uLL), v34.f32[0]), vextq_s8(v44, v44, 8uLL), v34, 2));
      }
    }

    v62 = vmulq_f32(v46, xmmword_1AFE21390);
    v63 = v46;
    v118 = v46;
    v64 = vnegq_f32(v62);
    v65 = vtrn2q_s32(v62, vtrn1q_s32(v62, v64));
    v66 = vmlaq_f32(vextq_s8(v62, v64, 8uLL), 0, vextq_s8(v65, v65, 8uLL));
    v67 = vrev64q_s32(v62);
    v67.i32[0] = v64.i32[1];
    v67.i32[3] = v64.i32[2];
    v68 = vmlaq_f32(v66, 0, v67);
    v69 = vnegq_f32(v68);
    v70 = vtrn2q_s32(v68, vtrn1q_s32(v68, v69));
    v71 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v68, v69, 8uLL), *v63.f32, 1), vextq_s8(v70, v70, 8uLL), v63.f32[0]);
    v72 = vrev64q_s32(v68);
    v72.i32[0] = v69.i32[1];
    v72.i32[3] = v69.i32[2];
    v73 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v68, v63, 3), v72, v63, 2), v71);
    v74 = vmulq_f32(v15, v73);
    v74.f32[0] = v74.f32[2] + vaddv_f32(*v74.f32);
    v75 = vmlsq_lane_f32(v73, v15, *v74.f32, 0);
    v76 = vmulq_f32(v75, v75);
    v76.f32[0] = v76.f32[2] + vaddv_f32(*v76.f32);
    v77 = vdupq_lane_s32(*v76.f32, 0);
    v77.i32[3] = 0;
    v78 = vrsqrteq_f32(v77);
    v79 = vmulq_f32(v78, vrsqrtsq_f32(v77, vmulq_f32(v78, v78)));
    v80 = vmulq_f32(v79, vrsqrtsq_f32(v77, vmulq_f32(v79, v79)));
    v81 = vmulq_f32(v15, v114);
    v81.f32[0] = v81.f32[2] + vaddv_f32(*v81.f32);
    v82 = vmlsq_lane_f32(v114, v15, *v81.f32, 0);
    v83 = vmulq_f32(v82, v82);
    v83.f32[0] = v83.f32[2] + vaddv_f32(*v83.f32);
    v84 = vdupq_lane_s32(*v83.f32, 0);
    v84.i32[3] = 0;
    v85 = vrsqrteq_f32(v84);
    v86 = vmulq_f32(v85, vrsqrtsq_f32(v84, vmulq_f32(v85, v85)));
    v87 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v83.f32[0] != 0.0)), 0x1FuLL));
    v87.i32[3] = 0;
    v88 = vbslq_s8(vcltzq_s32(v87), vmulq_f32(v82, vmulq_f32(v86, vrsqrtsq_f32(v84, vmulq_f32(v86, v86)))), v82);
    v89 = vdupq_lane_s32(*v20.f32, 0);
    v89.i32[3] = 0;
    v90 = vrsqrteq_f32(v89);
    v111 = v15;
    v91 = vmulq_f32(v90, vrsqrtsq_f32(v89, vmulq_f32(v90, v90)));
    v76.i32[1] = v20.i32[0];
    v113 = vmvn_s8(vceqz_f32(*v76.f32));
    v92 = vmovl_s16(vdup_lane_s16(v113, 0));
    v92.i32[3] = 0;
    v115 = vmulq_f32(v15, vmulq_f32(v91, vrsqrtsq_f32(v89, vmulq_f32(v91, v91))));
    v93 = vbslq_s8(vcltzq_s32(v92), vmulq_f32(v80, v75), v75);
    v94 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL), vnegq_f32(v93)), v88, vextq_s8(vuzp1q_s32(v93, v93), v93, 0xCuLL));
    v110 = vextq_s8(vuzp1q_s32(v94, v94), v94, 0xCuLL);
    v95 = vmulq_f32(v88, v93);
    v96 = acosf(fminf(fmaxf(v95.f32[2] + vaddv_f32(*v95.f32), -1.0), 1.0));
    v97 = vmulq_f32(v111, v110);
    if ((v97.f32[2] + vaddv_f32(*v97.f32)) <= 0.0)
    {
      v96 = -v96;
    }

    v98 = vmovl_s16(vdup_lane_s16(v113, 2));
    v98.i32[3] = 0;
    v116 = vbslq_s8(vcltzq_s32(v98), v115, v111);
    _KR00_8 = __sincosf_stret(v96 * 0.5);
    _Q2 = vmulq_n_f32(v116, _KR00_8.__sinval);
    _Q6 = v118;
    v104 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q6, _Q6), v118, 0xCuLL), vnegq_f32(_Q2)), v118, vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL));
    *&v105 = vaddq_f32(vmlaq_n_f32(vmulq_laneq_f32(_Q2, v118, 3), v118, _KR00_8.__cosval), vextq_s8(vuzp1q_s32(v104, v104), v104, 0xCuLL)).u64[0];
    __asm { FMLA            S2, S1, V6.S[3] }

    objc_msgSend_setWorldOrientation_(self, v99, *&v100, v105);
  }
}

- (void)localTranslateBy:(VFXNode *)self
{
  v21 = v3;
  objc_msgSend_orientation(self, a2, v2);
  v6 = vmulq_f32(v5, xmmword_1AFE21390);
  v7 = vnegq_f32(v6);
  v8 = vtrn2q_s32(v6, vtrn1q_s32(v6, v7));
  v9 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v6, v7, 8uLL), *v21.f32, 1), vextq_s8(v8, v8, 8uLL), v21.f32[0]);
  v10 = vrev64q_s32(v6);
  v10.i32[0] = v7.i32[1];
  v10.i32[3] = v7.i32[2];
  v11 = vmlaq_laneq_f32(v9, v10, v21, 2);
  v12 = vnegq_f32(v11);
  v13 = vtrn2q_s32(v11, vtrn1q_s32(v11, v12));
  v14 = vrev64q_s32(v11);
  v14.i32[0] = v12.i32[1];
  v14.i32[3] = v12.i32[2];
  v22 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v11, v5, 3), v14, v5, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v11, v12, 8uLL), *v5.f32, 1), vextq_s8(v13, v13, 8uLL), v5.f32[0]));
  objc_msgSend_position(self, v15, v16);
  *&v20 = vaddq_f32(v19, v22).u64[0];

  objc_msgSend_setPosition_(self, v17, v18, v20);
}

- (void)localRotateBy:(void *)by
{
  objc_msgSend_orientation(by, v2, v3);
  _S2 = a2.i32[3];
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL), vnegq_f32(_Q0)), a2, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
  *&v10 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(_Q0, a2, 3), a2, _Q0, 3), vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL)).u64[0];
  __asm { FMLA            S3, S2, V0.S[3] }

  return objc_msgSend_setOrientation_(by, v5, v6, v10);
}

- (void)rotateBy:(float32x4_t)by aroundTarget:
{
  v6 = 0;
  v7 = vmulq_f32(a2, a2);
  v8 = vmulq_laneq_f32(a2, a2, 3);
  v9 = vmuls_lane_f32(a2.f32[0], *a2.f32, 1);
  v10 = vmuls_lane_f32(a2.f32[0], a2, 2);
  v11.i32[3] = 0;
  v11.f32[0] = (0.5 - v7.f32[1]) - v7.f32[2];
  v11.f32[1] = v9 + v8.f32[2];
  v11.f32[2] = v10 - v8.f32[1];
  v12 = vmuls_lane_f32(a2.f32[1], a2, 2);
  v7.f32[0] = 0.5 - v7.f32[0];
  v13.i32[3] = 0;
  v13.f32[0] = v9 - v8.f32[2];
  v13.f32[1] = v7.f32[0] - v7.f32[2];
  v13.f32[2] = v12 + v8.f32[0];
  v14 = v12 - v8.f32[0];
  v8.i32[3] = 0;
  v8.f32[0] = v10 + v8.f32[1];
  v8.f32[1] = v14;
  v8.f32[2] = v7.f32[0] - v7.f32[1];
  v15 = vnegq_f32(by);
  v15.i32[3] = 1.0;
  v16 = vaddq_f32(v11, v11);
  v17 = vaddq_f32(v13, v13);
  v18 = vaddq_f32(v8, v8);
  v36 = xmmword_1AFE20150;
  v37 = xmmword_1AFE20160;
  v38 = xmmword_1AFE20180;
  v39 = v15;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  do
  {
    *(&v40 + v6) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*(&v36 + v6))), v17, *(&v36 + v6), 1), v18, *(&v36 + v6), 2), xmmword_1AFE201A0, *(&v36 + v6), 3);
    v6 += 16;
  }

  while (v6 != 64);
  v19 = 0;
  by.i32[3] = 1.0;
  v36 = v40;
  v37 = v41;
  v38 = v42;
  v39 = v43;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  do
  {
    *(&v40 + v19) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(&v36 + v19))), xmmword_1AFE20160, *(&v36 + v19), 1), xmmword_1AFE20180, *(&v36 + v19), 2), by, *(&v36 + v19), 3);
    v19 += 16;
  }

  while (v19 != 64);
  v34 = v41;
  v35 = v40;
  v32 = v43;
  v33 = v42;
  objc_msgSend_worldTransform(self, v3, v4);
  v22 = 0;
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  do
  {
    *(&v40 + v22) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*(&v36 + v22))), v34, *(&v36 + v22), 1), v33, *(&v36 + v22), 2), v32, *(&v36 + v22), 3);
    v22 += 16;
  }

  while (v22 != 64);
  v27 = *&v42;
  v28 = *v43.i64;
  v29 = *&v40;
  v30 = *&v41;

  return objc_msgSend_setWorldTransform_(self, v20, v21, v29, v30, v27, v28);
}

- (void)_remapNodeReferences:(id)references nullifyIfAbsent:(BOOL)absent
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF30FA6C;
  v4[3] = &unk_1E7A7ED40;
  v4[4] = references;
  absentCopy = absent;
  sub_1AF345368(self, 0, v4);
}

+ (VFXNode)nodeWithSceneKitNode:(id)node options:(id)options
{
  v6 = objc_autoreleasePoolPush();
  Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
  objc_msgSend_begin(VFXTransaction, v8, v9);
  objc_msgSend_setImmediateMode_(VFXTransaction, v10, 1);
  v12 = objc_msgSend_objectForKeyedSubscript_(options, v11, @"VFXSceneKitBridgeOptionOriginalURL");
  PathComponent = objc_msgSend_URLByDeletingLastPathComponent(v12, v13, v14);
  objc_msgSend_setValue_forKey_(VFXTransaction, v16, PathComponent, @"VFXWorldDecodingCurrentEnclosingFolder");
  v18 = objc_msgSend_objectForKeyedSubscript_(options, v17, @"VFXSceneKitBridgeOptionSkipLightIntensityRemapping");
  v21 = objc_msgSend_BOOLValue(v18, v19, v20);
  v23 = objc_msgSend_objectForKeyedSubscript_(options, v22, @"VFXSceneKitBridgeOptionOriginalURL");
  v24 = sub_1AF3264A4(node, Mutable, v21, v23);
  sub_1AF327760(node, Mutable);
  objc_msgSend_commit(VFXTransaction, v25, v26);
  CFRelease(Mutable);
  objc_autoreleasePoolPop(v6);

  return v24;
}

- (id)script_rootNode
{
  v3 = objc_msgSend_world(self, a2, v2);

  return objc_msgSend_rootNode(v3, v4, v5);
}

- (void)addAnimationAsset:(id)asset forKey:(id)key
{
  v6 = objc_msgSend_asset(asset, a2, asset);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_msgSend_nodeRef(self, v7, v8);
    v11 = objc_msgSend_nodeWithNodeRef_(VFXNode, v10, v9);
    v15 = objc_msgSend_animation(v6, v12, v13);

    objc_msgSend_addAnimation_forKey_(v11, v14, v15, key);
  }
}

- (id)debugQuickLookObjectWithWorld:(id)world
{
  v4 = objc_msgSend_deepClone(self, a2, world);
  objc_msgSend_setHidden_(v4, v5, 0);
  v8 = objc_msgSend_world(VFXWorld, v6, v7);
  v11 = objc_msgSend_assetRegistry(world, v9, v10);
  v14 = objc_msgSend_rootNode(v11, v12, v13);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1AF3B45B8;
  v28[3] = &unk_1E7A7F3C0;
  v28[4] = v8;
  objc_msgSend_enumerateHierarchyUsingBlock_(v14, v15, v28);
  v20 = objc_msgSend_assetPathResolver(world, v16, v17);
  if (v20)
  {
    objc_msgSend_setAssetPathResolver_(v8, v18, v20);
  }

  v21 = objc_msgSend_rootNode(v8, v18, v19);
  objc_msgSend_addChildNode_(v21, v22, v4);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1AF3B466C;
  v27[3] = &unk_1E7A79810;
  v27[4] = v20;
  objc_msgSend_enumerateHierarchyUsingBlock_(v4, v23, v27);
  return objc_msgSend_debugQuickLookObject(v8, v24, v25);
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
  selfCopy = self;
  sub_1AFC50994();

  v3 = sub_1AFDFD3F8();

  return v3;
}

@end