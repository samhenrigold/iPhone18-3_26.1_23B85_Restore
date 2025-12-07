@interface VFXMaterialProperty
+ (VFXMaterialProperty)materialPropertyWithContents:(id)contents;
+ (__CFXImage)_createCFXImageFromImage:(id)image;
+ (__CFXImage)copyCFXImageFromImage:(id)image textureOptions:(unsigned __int8)options wasCached:(BOOL *)cached;
+ (id)captureDeviceOutputConsumerWithOptions:(id)options;
+ (id)precomputedLightingEnvironmentContentsWithData:(id)data error:(id *)error;
+ (id)precomputedLightingEnvironmentContentsWithURL:(id)l error:(id *)error;
+ (id)precomputedLightingEnvironmentDataForContents:(id)contents radianceTextureSize:(unint64_t)size device:(id)device error:(id *)error;
- ($42C19FAB4E3144CC06073197E1960D27)textureSampler;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (BOOL)_hasDefaultValues;
- (BOOL)isColorManaged;
- (CFXColor4)color4;
- (CGContext)copyBitmap;
- (CGImage)contentsAsCGImage;
- (NSArray)animationKeys;
- (NSString)description;
- (VFXMaterialProperty)init;
- (VFXMaterialProperty)initWithCoder:(id)coder;
- (VFXMaterialProperty)initWithParent:(id)parent andCustomName:(id)name;
- (VFXMaterialProperty)initWithParent:(id)parent propertyType:(char)type;
- (__CFXAnimationManager)animationManager;
- (__CFXMaterialProperty)materialPropertyCreateIfNeeded:(BOOL)needed;
- (__n128)contentsScale;
- (__n128)contentsTransform;
- (double)contentsOffset;
- (double)linearExtendedSRGBColor;
- (float)contentsRotation;
- (float)intensity;
- (id)UIView;
- (id)_animationPathForKey:(id)key;
- (id)_vfxAnimationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)assetValue;
- (id)avPlayer;
- (id)captureDevice;
- (id)captureDeviceOutputConsumerSource;
- (id)color;
- (id)contents;
- (id)contentsAbsoluteURL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)floatValue;
- (id)image;
- (id)initPresentationMaterialPropertyWithModelProperty:(id)property;
- (id)layer;
- (id)mtlTexture;
- (id)precomputedLightingEnvironment;
- (id)presentationMaterialProperty;
- (id)propertyName;
- (id)resolvedURLForContents:(id)contents;
- (id)textureProvider;
- (id)valueForKey:(id)key;
- (int64_t)_presentationMappingChannel;
- (int64_t)magnificationFilter;
- (int64_t)mappingChannel;
- (int64_t)minificationFilter;
- (int64_t)mipFilter;
- (int64_t)textureComponents;
- (int64_t)wrapS;
- (int64_t)wrapT;
- (uint64_t)setContentsTransform:(__n128)transform;
- (unint64_t)maxAnisotropy;
- (unsigned)_textureOptions;
- (void)__allocateContentTransformIfNeeded;
- (void)_clearContentsForDeallocation:(BOOL)deallocation;
- (void)_copyAnimationsFrom:(id)from;
- (void)_copyBindingsFrom:(id)from;
- (void)_customEncodingOfVFXMaterialProperty:(id)property;
- (void)_didDecodeVFXMaterialProperty:(id)property;
- (void)_layerDidChange:(id)change;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_setColor:(id)color;
- (void)_setImagePath:(id)path withResolvedURL:(id)l;
- (void)_setParent:(id)parent;
- (void)_setSourceObject:(id)object forBinding:(id)binding;
- (void)_syncObjCAnimations;
- (void)_updateCFXImageWithContents:(id)contents;
- (void)_updateMaterialAVPlayer:(id)player;
- (void)_updateMaterialAsset:(id)asset;
- (void)_updateMaterialCaptureDevice:(id)device;
- (void)_updateMaterialCaptureDeviceOutputConsumerSource:(id)source;
- (void)_updateMaterialColor:(id)color;
- (void)_updateMaterialImage:(id)image;
- (void)_updateMaterialLayer:(id)layer;
- (void)_updateMaterialMTLTexture:(id)texture;
- (void)_updateMaterialNumber:(id)number;
- (void)_updateMaterialTextureProvider:(id)provider;
- (void)_updateMaterialUIComponent:(id)component;
- (void)_updateModelFromPresentation;
- (void)_updatePrecomputedLightingEnvironment:(id)environment;
- (void)_updatePresentationFromModel;
- (void)_updateSampler;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addAnimationPlayer:(id)player forKey:(id)key;
- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options;
- (void)copyPropertiesFrom:(id)from copyContext:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAnimationReferencesUsingBlock:(id)block;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)getCFXImageRef;
- (void)linkCustomPropertyWithParent:(id)parent andCustomName:(id)name;
- (void)parentWillDie:(id)die;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)duration;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration;
- (void)setAssetValue:(id)value;
- (void)setAvPlayer:(id)player;
- (void)setCaptureDevice:(id)device;
- (void)setCaptureDeviceOutputConsumerSource:(id)source;
- (void)setColor:(id)color;
- (void)setColorManaged:(BOOL)managed;
- (void)setContents:(id)contents;
- (void)setContentsOffset:(VFXMaterialProperty *)self;
- (void)setContentsRotation:(float)rotation;
- (void)setContentsScale:(VFXMaterialProperty *)self;
- (void)setFloatValue:(id)value;
- (void)setImage:(id)image;
- (void)setIntensity:(float)intensity;
- (void)setLayer:(id)layer;
- (void)setLinearExtendedSRGBColor:(VFXMaterialProperty *)self;
- (void)setMagnificationFilter:(int64_t)filter;
- (void)setMappingChannel:(int64_t)channel;
- (void)setMaxAnisotropy:(unint64_t)anisotropy;
- (void)setMinificationFilter:(int64_t)filter;
- (void)setMipFilter:(int64_t)filter;
- (void)setMtlTexture:(id)texture;
- (void)setPrecomputedLightingEnvironment:(id)environment;
- (void)setTextureComponents:(int64_t)components;
- (void)setTextureProvider:(id)provider;
- (void)setUIView:(id)view;
- (void)setUIWindow:(id)window;
- (void)setValue:(id)value forKey:(id)key;
- (void)setWrapS:(int64_t)s;
- (void)setWrapT:(int64_t)t;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation VFXMaterialProperty

+ (id)precomputedLightingEnvironmentContentsWithURL:(id)l error:(id *)error
{
  v5 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x1E695DEF0], a2, l, 1, error);

  return MEMORY[0x1EEE66B58](self, sel_precomputedLightingEnvironmentContentsWithData_error_, v5);
}

+ (id)precomputedLightingEnvironmentContentsWithData:(id)data error:(id *)error
{
  if (!data)
  {
    return 0;
  }

  v6 = MEMORY[0x1E696ACD0];
  v8 = objc_opt_class();

  return objc_msgSend_unarchivedObjectOfClass_fromData_error_(v6, v7, v8, data, error);
}

+ (id)precomputedLightingEnvironmentDataForContents:(id)contents radianceTextureSize:(unint64_t)size device:(id)device error:(id *)error
{
  contentsCopy = contents;
  v75[1] = *MEMORY[0x1E69E9840];
  objc_msgSend_begin(VFXTransaction, a2, contents);
  objc_msgSend_setImmediateMode_(VFXTransaction, v10, 1);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    contentsCopy = objc_msgSend_copy(contentsCopy, v11, v12);
    objc_msgSend__forceSynchronousLoading(contentsCopy, v14, v15);
  }

  v16 = [VFXWorld alloc];
  v74 = @"VFXWorldLoaderDisableVFXCoreSupport";
  v75[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v17, (isKindOfClass & 1) == 0);
  v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, v75, &v74, 1);
  v21 = objc_msgSend_initWithOptions_(v16, v20, v19);
  v24 = v21;
  if (isKindOfClass)
  {
    v25 = objc_msgSend_assets(v21, v22, v23);
    v28 = objc_msgSend_rootNode(v25, v26, v27);
    v30 = objc_msgSend_assetNodeWithAsset_(VFXAssetNode, v29, contentsCopy);
    objc_msgSend_addChildNode_(v28, v31, v30);
  }

  v32 = objc_msgSend_lightingEnvironment(v24, v22, v23);
  objc_msgSend_setContents_(v32, v33, contentsCopy);
  v38 = objc_msgSend_materialProperty(v32, v34, v35);
  if (!v38)
  {
    v39 = sub_1AF0D5194(0, v36);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF3B20(v39);
    }
  }

  objc_msgSend_commit(VFXTransaction, v36, v37);
  if (sub_1AF166220(v38, v40))
  {
    v42 = objc_msgSend_rendererWithDevice_options_(VFXRenderer, v41, device, 0);
    objc_msgSend_setWorld_(v42, v43, v24);
    v48 = objc_msgSend__renderContextMetal(v42, v44, v45);
    if (isKindOfClass)
    {
      objc_msgSend_updateAtTime_(v42, v46, v47, 0.0);
    }

    objc_msgSend_beginFrame_(v48, v46, 0);
    v50 = objc_msgSend_textureForMaterialProperty_(v48, v49, v38);
    if (v50 && (v53 = v50, objc_msgSend_textureType(v50, v51, v52) == 5))
    {
      v57 = objc_msgSend_resourceManager(v48, v51, v54);
      if (size)
      {
        size = size;
      }

      else
      {
        size = 256;
      }

      v58 = objc_msgSend_engineContext(v48, v55, v56);
      v60 = objc_msgSend_newRadianceTextureForEnvironmentTexture_size_engineContext_cpuAccessible_(v57, v59, v53, size, v58, 0);
    }

    else
    {
      v60 = 0;
    }

    v64 = objc_msgSend_irradianceTextureForMaterialProperty_(v48, v51, v38);
    v73 = 5;
    objc_msgSend_endFrameWaitingUntilCompleted_status_error_(v48, v65, 1, &v73, error);
    v62 = 0;
    if (v60 && v64 && v73 == 4)
    {
      v66 = sub_1AF1F3328(v60, 1);
      v67 = sub_1AF1F3328(v64, 1);
      v62 = objc_alloc_init(VFXPrecomputedLightingEnvironment);
      objc_msgSend_setRadianceData_(v62, v68, v66);
      objc_msgSend_setIrradianceData_(v62, v69, v67);
    }
  }

  else
  {
    if (!sub_1AF1676A0(v38, v41))
    {

      return 0;
    }

    v62 = sub_1AF1676F4(v38, v61);
    v63 = v62;
  }

  if (!v62)
  {
    return 0;
  }

  v71 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v70, v62, 1, error);

  return v71;
}

- (VFXMaterialProperty)init
{
  v7.receiver = self;
  v7.super_class = VFXMaterialProperty;
  v2 = [(VFXMaterialProperty *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_parent = 0;
    v2->_propertyType = 28;
    *(v2 + 8) &= ~2u;
    v2->_customMaterialProperty = sub_1AF16578C(0, 28);
    v3->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v3, v4, v5);
  }

  return v3;
}

+ (VFXMaterialProperty)materialPropertyWithContents:(id)contents
{
  v4 = [self alloc];
  v6 = objc_msgSend_initWithParent_propertyType_(v4, v5, 0, 28);
  objc_msgSend_setContents_(v6, v7, contents);
  return v6;
}

- (VFXMaterialProperty)initWithParent:(id)parent propertyType:(char)type
{
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = VFXMaterialProperty;
  v6 = [(VFXMaterialProperty *)&v14 init];
  v8 = v6;
  if (v6)
  {
    if (v6 == parent)
    {
      objc_msgSend__setParent_(v6, v7, 0);
    }

    else
    {
      objc_msgSend__setParent_(v6, v7, parent);
    }

    v8->_propertyType = typeCopy;
    *(v8 + 8) = *(v8 + 8) & 0xFD | (2 * (typeCopy < 22));
    if (typeCopy <= 21)
    {
      v8->_commonProfile = objc_msgSend_commonProfile(v8->_parent, v9, v10);
    }

    if (!v8->_parent)
    {
      v8->_customMaterialProperty = sub_1AF16578C(0, 28);
    }

    v8->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v8, v9, v10);
    objc_msgSend__syncObjCAnimations(v8, v11, v12);
  }

  return v8;
}

- (VFXMaterialProperty)initWithParent:(id)parent andCustomName:(id)name
{
  v16.receiver = self;
  v16.super_class = VFXMaterialProperty;
  v6 = [(VFXMaterialProperty *)&v16 init];
  v8 = v6;
  if (v6)
  {
    if (v6 == parent)
    {
      objc_msgSend__setParent_(v6, v7, 0);
    }

    else
    {
      objc_msgSend__setParent_(v6, v7, parent);
    }

    v8->_propertyType = 28;
    v8->_customMaterialPropertyName = objc_msgSend_copy(name, v9, v10);
    *(v8 + 8) &= ~2u;
    v8->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v8, v11, v12);
    objc_msgSend__syncObjCAnimations(v8, v13, v14);
  }

  return v8;
}

- (id)initPresentationMaterialPropertyWithModelProperty:(id)property
{
  v18.receiver = self;
  v18.super_class = VFXMaterialProperty;
  v6 = [(VFXMaterialProperty *)&v18 init];
  if (v6)
  {
    if (objc_msgSend_parent(property, v4, v5) == v6)
    {
      objc_msgSend__setParent_(v6, v7, 0);
    }

    else
    {
      v9 = objc_msgSend_parent(property, v7, v8);
      objc_msgSend__setParent_(v6, v10, v9);
    }

    v13 = objc_msgSend_propertyType(property, v11, v12);
    v6->_propertyType = v13;
    v16 = *(v6 + 8) & 0xFD | (2 * (v13 < 22));
    *(v6 + 8) = v16;
    if (v13 <= 21)
    {
      v6->_commonProfile = objc_msgSend_commonProfile(v6->_parent, v14, v15);
      v16 = *(v6 + 8);
    }

    *(v6 + 8) = v16 | 1;
    v6->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (void)__allocateContentTransformIfNeeded
{
  if (!self->_contentTransform)
  {
    v4 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
    self->_contentTransform = v4;

    sub_1AF1CCF1C(v4);
  }
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend_removeObserver_(v4, v5, self);

  self->_runtimeResolvedURL = 0;
  objc_msgSend__clearContentsForDeallocation_(self, v6, 1);

  customMaterialProperty = self->_customMaterialProperty;
  if (customMaterialProperty)
  {
    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v7, customMaterialProperty);
  }

  commonProfile = self->_commonProfile;
  if (commonProfile)
  {
    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v7, commonProfile);
  }

  parentRef = self->_parentRef;
  if (parentRef)
  {
    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v7, parentRef);
  }

  free(self->_contentTransform);
  v11.receiver = self;
  v11.super_class = VFXMaterialProperty;
  [(VFXMaterialProperty *)&v11 dealloc];
}

- (id)contentsAbsoluteURL
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_msgSend_world(self, v3, v4);
    v8 = objc_msgSend_assetPathResolver(v5, v6, v7);
    v12 = objc_msgSend_filename(self->_contents, v9, v10);

    return objc_msgSend_absoluteURLForAssetPath_(v8, v11, v12);
  }

  runtimeResolvedURL = self->_runtimeResolvedURL;
  if (runtimeResolvedURL)
  {
    return runtimeResolvedURL;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  runtimeResolvedURL = self->_contents;
  if (isKindOfClass)
  {
    return runtimeResolvedURL;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v17 = MEMORY[0x1E695DFF8];
  contents = self->_contents;

  return objc_msgSend_fileURLWithPath_(v17, v16, contents);
}

- (void)_setParent:(id)parent
{
  self->_parent = parent;
  parentRef = self->_parentRef;
  if (parentRef != objc_msgSend___CFObject(parent, a2, parent))
  {
    v8 = self->_parentRef;
    if (v8)
    {
      CFRelease(v8);
      self->_parentRef = 0;
    }

    v9 = objc_msgSend___CFObject(parent, v6, v7);
    if (v9)
    {
      v9 = CFRetain(v9);
    }

    self->_parentRef = v9;
  }
}

- (void)linkCustomPropertyWithParent:(id)parent andCustomName:(id)name
{
  parentCopy = parent;
  if (parent == self)
  {
    parent = 0;
  }

  objc_msgSend__setParent_(self, a2, parent);

  v9 = objc_msgSend_copy(name, v7, v8);
  self->_customMaterialPropertyName = v9;
  self->_propertyType = 28;
  *(self + 8) &= ~2u;
  if (v9 && !self->_customMaterialProperty)
  {
    self->_customMaterialProperty = sub_1AF16578C(0, 28);
  }

  if (objc_msgSend___CFObject(parentCopy, v10, v11) == self)
  {
    v14 = 0;
  }

  else
  {
    v14 = objc_msgSend___CFObject(parentCopy, v12, v13);
  }

  self->_customMaterialProperty->var13 = v14;
}

- (__CFXMaterialProperty)materialPropertyCreateIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  propertyType = self->_propertyType;
  if (propertyType <= 0x19)
  {
    if (propertyType == 23)
    {
      parentRef = self->_parentRef;
      if (!parentRef)
      {
        return 0;
      }

      v23 = CFGetTypeID(parentRef);
      if (v23 != sub_1AF19AF4C(v23, v24))
      {
        return 0;
      }

      v25 = self->_parentRef;
      if (!v25)
      {
        return 0;
      }

      return sub_1AF19B4EC(v25, neededCopy);
    }

    else
    {
      if (propertyType != 25)
      {
LABEL_32:
        v26 = objc_msgSend_commonProfile(self, a2, needed);
        if (v26)
        {
          v27 = self->_propertyType;

          return sub_1AF1656E4(v26, v27, neededCopy);
        }

        return 0;
      }

      v7 = self->_parentRef;
      if (!v7)
      {
        return 0;
      }

      v8 = CFGetTypeID(v7);
      if (v8 != sub_1AF1CF31C(v8, v9))
      {
        return 0;
      }

      v10 = self->_parentRef;
      if (!v10)
      {
        return 0;
      }

      return sub_1AF1D0008(v10, neededCopy);
    }
  }

  else
  {
    if (propertyType != 26)
    {
      if (propertyType == 27)
      {
        v17 = self->_parentRef;
        if (v17)
        {
          v18 = CFGetTypeID(v17);
          if (v18 == sub_1AF162694(v18, v19))
          {
            v21 = self->_parentRef;
            if (v21)
            {
              v6 = sub_1AF162BF0(self->_parentRef, v20);
              if (!v6 && neededCopy)
              {
                v6 = sub_1AF16578C(v21, 27);
                sub_1AF162B68(v21, v6);
                CFRelease(v6);
              }

              return v6;
            }
          }
        }

        return 0;
      }

      if (propertyType == 28)
      {
        return self->_customMaterialProperty;
      }

      goto LABEL_32;
    }

    v12 = self->_parentRef;
    if (!v12)
    {
      return 0;
    }

    v13 = CFGetTypeID(v12);
    v15 = sub_1AF1CF31C(v13, v14);
    v16 = self->_parentRef;
    if (v13 == v15)
    {
      if (!v16)
      {
        return 0;
      }

      return sub_1AF1D005C(v16, neededCopy);
    }

    else
    {
      v28 = CFGetTypeID(v16);
      if (v28 != sub_1AF19AF4C(v28, v29))
      {
        return 0;
      }

      v30 = self->_parentRef;
      if (!v30)
      {
        return 0;
      }

      return sub_1AF19B558(v30, neededCopy);
    }
  }
}

- (id)_animationPathForKey:(id)key
{
  v4 = objc_msgSend_materialPropertyName(self, a2, key);
  v6 = objc_msgSend_stringByAppendingString_(v4, v5, @".");

  return objc_msgSend_stringByAppendingString_(v6, v7, key);
}

- (void)_clearContentsForDeallocation:(BOOL)deallocation
{
  contentType = self->_contentType;
  v5 = contentType > 0xA;
  v6 = (1 << contentType) & 0x794;
  if (!v5 && v6 != 0)
  {
    contents = self->_contents;
    if (contents)
    {
      v11[0] = 0;
      v11[1] = v11;
      v11[2] = 0x3052000000;
      v11[3] = sub_1AF2DAC84;
      v11[4] = sub_1AF2DAC94;
      v11[5] = contents;
      if (deallocation)
      {
        selfCopy = 0;
      }

      else
      {
        selfCopy = self;
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = sub_1AF2DACA0;
      v10[3] = &unk_1E7A7E858;
      v10[4] = v11;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, selfCopy, v10);
      _Block_object_dispose(v11, 8);
    }
  }

  self->_contents = 0;
}

- (void)_setColor:(id)color
{
  if (self->_contents != color)
  {
    self->_contents = color;
    self->_contentType = 0;
  }
}

- (void)setColor:(id)color
{
  if ((*(self + 8) & 1) != 0 || self->_contents != color)
  {
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0);
    self->_contents = color;
    self->_contentType = 0;
    if (color)
    {
      v6 = objc_msgSend__animationPathForKey_(self, v5, @"contents");
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2DAE00;
      v8[3] = &unk_1E7A7E220;
      v8[4] = self;
      v8[5] = color;
      objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v7, self, v6, v8);
    }
  }
}

- (id)color
{
  if (*(self + 8))
  {
    v5 = objc_msgSend_worldRef(self, a2, v2);
    v8 = v5;
    if (v5)
    {
      sub_1AF1CEA20(v5, v6);
    }

    v9 = objc_msgSend_materialProperty(self, v6, v7);
    if (v9 && (v11 = sub_1AF1660D8(v9, v10)) != 0)
    {
      v13 = v11;
      v14 = MEMORY[0x1E69DC888];
      isColorManaged = objc_msgSend_isColorManaged(self, v10, v12);
      v4 = objc_msgSend_vfx_colorWithCFXColor_ignoringColorSpace_(v14, v16, v13, isColorManaged ^ 1u);
      if (!v8)
      {
        return v4;
      }
    }

    else
    {
      v4 = 0;
      if (!v8)
      {
        return v4;
      }
    }

    sub_1AF1CEA9C(v8, v10);
    return v4;
  }

  if (self->_contentType)
  {
    return 0;
  }

  v18 = self->_contents;

  return v18;
}

- (double)linearExtendedSRGBColor
{
  v3 = objc_msgSend_color(self, a2, a3);

  return CFXColorGetLinearExtendedSRGBComponents(v3);
}

- (void)setLinearExtendedSRGBColor:(VFXMaterialProperty *)self
{
  v4 = sub_1AF16484C(self, a2, v2);
  v6 = objc_msgSend_colorWithCGColor_(MEMORY[0x1E69DC888], v5, v4);
  objc_msgSend_setColor_(self, v7, v6);
  if (v4)
  {

    CFRelease(v4);
  }
}

- (void)setFloatValue:(id)value
{
  contents = self->_contents;
  if (contents != value && (objc_msgSend_isEqual_(contents, a2, value) & 1) == 0)
  {
    objc_msgSend__clearContentsForDeallocation_(self, v6, 0);
    self->_contents = value;
    self->_contentType = 5;
    if (value)
    {
      v8 = objc_msgSend__animationPathForKey_(self, v7, @"contents");
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = sub_1AF2DB054;
      v10[3] = &unk_1E7A7E220;
      v10[4] = self;
      v10[5] = value;
      objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v9, self, v8, v10);
    }
  }
}

- (id)floatValue
{
  if (*(self + 8))
  {
    v6 = objc_msgSend_worldRef(self, a2, v2);
    v9 = v6;
    if (v6)
    {
      sub_1AF1CEA20(v6, v7);
    }

    v10 = objc_msgSend_materialProperty(self, v7, v8);
    if (v10)
    {
      v12 = v10;
      v13 = sub_1AF1660D8(v10, v11);
      if (v13)
      {
        v14 = sub_1AF167CD8(v12);
        v18 = 12;
        if (v14 != 4)
        {
          v18 = 0;
        }

        LODWORD(v17) = *&v13[v18];
        v13 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v15, v16, v17);
      }

      if (!v9)
      {
        return v13;
      }
    }

    else
    {
      v13 = 0;
      if (!v9)
      {
        return v13;
      }
    }

    sub_1AF1CEA9C(v9, v11);
    return v13;
  }

  if (self->_contentType != 5)
  {
    return 0;
  }

  v4 = self->_contents;

  return v4;
}

- (void)setAssetValue:(id)value
{
  if (self->_contents != value)
  {
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0);
    self->_contents = value;
    self->_contentType = 6;
    if (value)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = objc_msgSend_rootLayer(value, v5, v6);
        if (v7)
        {
          objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v19, v18[0], v18[1], v18[2], v18[3], v18[4], v18[5], MEMORY[0x1E69E9820], 3221225472, sub_1AF2DB340, &unk_1E7A7E220, self, v7);
        }

        else
        {
          v17 = sub_1AF0D5194(0, v8);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDF5BC0();
          }
        }
      }

      else if (self->_propertyType == 26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v10 = objc_msgSend_filename(value, v5, v9), v13 = objc_msgSend_pathExtension(v10, v11, v12), objc_msgSend_isEqualToString_(v13, v14, @"vfxibl")) && (v15 = objc_msgSend_resolvedURLForContents_(self, v5, v10)) != 0 && (v16 = objc_msgSend_precomputedLightingEnvironmentContentsWithURL_error_(VFXMaterialProperty, v5, v15, 0)) != 0)
      {

        MEMORY[0x1EEE66B58](self, sel__updatePrecomputedLightingEnvironment_, v16);
      }

      else
      {
        objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v5, self, v18, MEMORY[0x1E69E9820], 3221225472, sub_1AF2DB34C, &unk_1E7A7E220, self, value, v19[0], v19[1], v19[2], v19[3], v19[4], v19[5]);
      }
    }
  }
}

- (id)assetValue
{
  if (*(self + 8))
  {
    v6 = objc_msgSend_worldRef(self, a2, v2);
    v9 = v6;
    if (v6)
    {
      sub_1AF1CEA20(v6, v7);
    }

    v10 = objc_msgSend_materialProperty(self, v7, v8);
    if (v10)
    {
      v12 = sub_1AF167054(v10, v11);
      if (!v9)
      {
        return v12;
      }
    }

    else
    {
      v12 = 0;
      if (!v9)
      {
        return v12;
      }
    }

    sub_1AF1CEA9C(v9, v11);
    return v12;
  }

  if (self->_contentType != 6)
  {
    return 0;
  }

  v4 = self->_contents;

  return v4;
}

- (CGImage)contentsAsCGImage
{
  result = self->_contents;
  if (result)
  {
    v4 = CFGetTypeID(result);
    if (v4 == CGImageGetTypeID())
    {
      return self->_contents;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (CGContext)copyBitmap
{
  v3 = objc_msgSend_contentsAbsoluteURL(self, a2, v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = objc_opt_class();
  v7 = objc_msgSend_copyCFXImageFromImage_(v5, v6, v4);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = sub_1AF197BC0(v7, 1);
  CFRelease(v8);
  return v9;
}

- (CFXColor4)color4
{
  v15 = 0;
  v3 = objc_msgSend_color(self, a2, v2);
  v4 = sub_1AF3710D4(v3);
  v6 = objc_msgSend_vfx_CFXColorIgnoringColorSpace_success_(v4, v5, 0, &v15);
  if (v15)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v15)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v15)
  {
    v11 = HIDWORD(v6);
  }

  else
  {
    v11 = 0;
  }

  if (v15)
  {
    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  v13 = v9 | (v10 << 32);
  v14 = v12 | (v11 << 32);
  *&result.var0.var1.var2 = v13;
  *result.var0.var0 = v14;
  return result;
}

- (int64_t)minificationFilter
{
  if ((*(self + 8) & 1) == 0)
  {
    return *(self + 74) & 3;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (!v5)
  {
    return objc_msgSend_textureSampler(self, v6, v7);
  }

  v8 = v5;
  sub_1AF1CEA20(v5, v6);
  v4 = objc_msgSend_textureSampler(self, v9, v10);
  sub_1AF1CEA9C(v8, v11);
  return v4;
}

- (int64_t)magnificationFilter
{
  if ((*(self + 8) & 1) == 0)
  {
    return (*(self + 74) >> 2) & 3;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (!v5)
  {
    return (objc_msgSend_textureSampler(self, v6, v7) >> 8);
  }

  v8 = v5;
  sub_1AF1CEA20(v5, v6);
  v4 = (objc_msgSend_textureSampler(self, v9, v10) >> 8);
  sub_1AF1CEA9C(v8, v11);
  return v4;
}

- (int64_t)mipFilter
{
  if ((*(self + 8) & 1) == 0)
  {
    return (*(self + 74) >> 4) & 3;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (!v5)
  {
    return (objc_msgSend_textureSampler(self, v6, v7) >> 16);
  }

  v8 = v5;
  sub_1AF1CEA20(v5, v6);
  v4 = (objc_msgSend_textureSampler(self, v9, v10) >> 16);
  sub_1AF1CEA9C(v8, v11);
  return v4;
}

- (void)setMinificationFilter:(int64_t)filter
{
  v5 = *(self + 74);
  if ((v5 & 3) != filter)
  {
    v6[5] = v3;
    v6[6] = v4;
    *(self + 74) = v5 & 0xFC | filter & 3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2DB6F0;
    v6[3] = &unk_1E7A7E1D0;
    v6[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (void)setMagnificationFilter:(int64_t)filter
{
  v5 = *(self + 74);
  if (((v5 >> 2) & 3) != filter)
  {
    v6[5] = v3;
    v6[6] = v4;
    *(self + 74) = v5 & 0xF3 | (4 * (filter & 3));
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2DB79C;
    v6[3] = &unk_1E7A7E1D0;
    v6[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (void)setMipFilter:(int64_t)filter
{
  v5 = *(self + 74);
  if (((v5 >> 4) & 3) != filter)
  {
    v6[5] = v3;
    v6[6] = v4;
    *(self + 74) = v5 & 0xCF | (16 * (filter & 3));
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2DB848;
    v6[3] = &unk_1E7A7E1D0;
    v6[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (int64_t)_presentationMappingChannel
{
  v3 = objc_msgSend_materialProperty(self, a2, v2);
  if (!v3)
  {
    return -1;
  }

  return sub_1AF1666D4(v3, v4);
}

- (int64_t)mappingChannel
{
  if ((*(self + 8) & 1) == 0)
  {
    return self->_mappingChannel;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v8 = v5;
    sub_1AF1CEA20(v5, v6);
    v11 = objc_msgSend__presentationMappingChannel(self, v9, v10);
    sub_1AF1CEA9C(v8, v12);
    return v11;
  }

  else
  {

    return objc_msgSend__presentationMappingChannel(self, v6, v7);
  }
}

- (void)setMappingChannel:(int64_t)channel
{
  if (self->_mappingChannel != channel)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_mappingChannel = channel;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2DB994;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = channel;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (int64_t)textureComponents
{
  if (*(self + 8))
  {
    v5 = objc_msgSend_worldRef(self, a2, v2);
    v8 = v5;
    if (v5)
    {
      sub_1AF1CEA20(v5, v6);
    }

    v9 = objc_msgSend_materialProperty(self, v6, v7);
    if (v9)
    {
      v4 = sub_1AF167B64(v9, v10);
      if (!v8)
      {
        return v4;
      }
    }

    else
    {
      v4 = 15;
      if (!v8)
      {
        return v4;
      }
    }

    sub_1AF1CEA9C(v8, v10);
    return v4;
  }

  return *(self + 76) & 0xF;
}

- (void)setTextureComponents:(int64_t)components
{
  v5 = *(self + 76);
  if ((v5 & 0xF) != components)
  {
    v6[6] = v3;
    v6[7] = v4;
    *(self + 76) = v5 & 0xF0 | components & 0xF;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2DBB00;
    v6[3] = &unk_1E7A7E248;
    v6[4] = self;
    v6[5] = components;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (void)setIntensity:(float)intensity
{
  if ((*(self + 8) & 1) != 0 || self->_intensity != intensity)
  {
    self->_intensity = intensity;
    v5 = objc_msgSend__animationPathForKey_(self, a2, @"intensity");
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF2DBC20;
    v7[3] = &unk_1E7A7E270;
    v7[4] = self;
    intensityCopy = intensity;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v6, self, v5, v7);
  }
}

- (float)intensity
{
  if (*(self + 8))
  {
    v5 = objc_msgSend_worldRef(self, a2, v2);
    v8 = v5;
    if (v5)
    {
      sub_1AF1CEA20(v5, v6);
    }

    v9 = objc_msgSend_materialProperty(self, v6, v7);
    if (v9)
    {
      v4 = sub_1AF166598(v9, v10);
      if (!v8)
      {
        return v4;
      }
    }

    else
    {
      v4 = 0.0;
      if (!v8)
      {
        return v4;
      }
    }

    sub_1AF1CEA9C(v8, v10);
    return v4;
  }

  return self->_intensity;
}

- (int64_t)wrapS
{
  if ((*(self + 8) & 1) == 0)
  {
    return *(self + 75) & 7;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (!v5)
  {
    return (objc_msgSend_textureSampler(self, v6, v7) >> 24) + 1;
  }

  v8 = v5;
  sub_1AF1CEA20(v5, v6);
  v4 = (objc_msgSend_textureSampler(self, v9, v10) >> 24) + 1;
  sub_1AF1CEA9C(v8, v11);
  return v4;
}

- (void)setWrapS:(int64_t)s
{
  if ((s - 5) > 0xFFFFFFFFFFFFFFFBLL)
  {
    v4 = *(self + 75);
    if ((v4 & 7) != s)
    {
      *(self + 75) = v4 & 0xF8 | s;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = sub_1AF2DBE34;
      v5[3] = &unk_1E7A7E1D0;
      v5[4] = self;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
    }
  }

  else
  {
    v3 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF5BFC();
    }
  }
}

- (int64_t)wrapT
{
  if ((*(self + 8) & 1) == 0)
  {
    return (*(self + 75) >> 3) & 7;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  v8 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
  }

  v4 = (objc_msgSend_textureSampler(self, v6, v7) >> 32) + 1;
  if (v8)
  {
    sub_1AF1CEA9C(v8, v9);
  }

  return v4;
}

- (void)setWrapT:(int64_t)t
{
  if ((t - 5) > 0xFFFFFFFFFFFFFFFBLL)
  {
    v4 = *(self + 75);
    if (((v4 >> 3) & 7) != t)
    {
      *(self + 75) = v4 & 0xC7 | (8 * t);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = sub_1AF2DBF7C;
      v5[3] = &unk_1E7A7E1D0;
      v5[4] = self;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
    }
  }

  else
  {
    v3 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF5C70();
    }
  }
}

- (BOOL)isColorManaged
{
  v3 = *(self + 8);
  if (v3)
  {
    selfCopy = self;
    v5 = objc_msgSend_worldRef(self, a2, v2);
    v8 = v5;
    if (v5)
    {
      sub_1AF1CEA20(v5, v6);
    }

    v9 = objc_msgSend_materialProperty(selfCopy, v6, v7);
    LOBYTE(selfCopy) = sub_1AF167CE0(v9);
    if (v8)
    {
      sub_1AF1CEA9C(v8, v10);
    }
  }

  else
  {
    LODWORD(selfCopy) = (v3 >> 2) & 1;
  }

  return selfCopy;
}

- (void)setColorManaged:(BOOL)managed
{
  v3 = *(self + 8);
  if (((((v3 & 4) == 0) ^ managed) & 1) == 0)
  {
    if (managed)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *(self + 8) = v3 & 0xFB | v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2DC098;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    managedCopy = managed;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (unsigned)_textureOptions
{
  IfNeeded = objc_msgSend_materialPropertyCreateIfNeeded_(self, a2, 0);
  if (IfNeeded)
  {
    v6 = IfNeeded;
    v7 = objc_msgSend_worldRef(self, v4, v5);
    if (v7)
    {
      v9 = v7;
      sub_1AF1CEA20(v7, v8);
      v10 = sub_1AF1678F4(v6);
      sub_1AF1CEA9C(v9, v11);
      return v10;
    }

    else
    {

      return sub_1AF1678F4(v6);
    }
  }

  else
  {
    propertyType = self->_propertyType;
    v14 = (*(self + 8) >> 2) & 1;

    return sub_1AF167D24(propertyType, v14);
  }
}

- (id)resolvedURLForContents:(id)contents
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v7 = objc_msgSend_world(self, v5, v6), (v10 = objc_msgSend_assetPathResolver(v7, v8, v9)) == 0) || (result = objc_msgSend_absoluteURLForAssetPath_(v10, v11, contents)) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return contents;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_updateCFXImageWithContents:(id)contents
{
  contentsCopy = contents;
  v5 = objc_msgSend_resolvedURLForContents_(self, a2, contents);
  if (v5)
  {
    v8 = v5;

    self->_runtimeResolvedURL = v8;
    contentsCopy = v8;
  }

  v9 = objc_msgSend__textureOptions(self, v6, v7);
  v11 = objc_msgSend_copyCFXImageFromImage_textureOptions_(VFXMaterialProperty, v10, contentsCopy, v9);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1AF2DC2E4;
  v13[3] = &unk_1E7A7E220;
  v13[4] = self;
  v13[5] = v11;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, self, v13);
}

- (void)setImage:(id)image
{
  if (self->_contents != image)
  {
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0);
    self->_contents = image;
    self->_contentType = 1;

    objc_msgSend__updateCFXImageWithContents_(self, v6, image);
  }
}

- (id)image
{
  if (self->_contentType == 1)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setLayer:(id)layer
{
  if (self->_contents != layer)
  {
    v8[8] = v3;
    v8[9] = v4;
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0);
    self->_contents = layer;
    self->_contentType = 2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF2DC420;
    v8[3] = &unk_1E7A7E220;
    v8[4] = self;
    v8[5] = layer;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
  }
}

- (id)layer
{
  if (self->_contentType == 2)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setAvPlayer:(id)player
{
  if (self->_contents != player)
  {
    v8[8] = v3;
    v8[9] = v4;
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0);
    self->_contents = player;
    self->_contentType = 7;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF2DC4F8;
    v8[3] = &unk_1E7A7E220;
    v8[4] = self;
    v8[5] = player;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
  }
}

- (id)avPlayer
{
  if (self->_contentType == 7)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setCaptureDevice:(id)device
{
  if (self->_contents != device)
  {
    v8[8] = v3;
    v8[9] = v4;
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0);
    self->_contents = device;
    self->_contentType = 8;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF2DC5D0;
    v8[3] = &unk_1E7A7E220;
    v8[4] = self;
    v8[5] = device;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
  }
}

- (id)captureDevice
{
  if (self->_contentType == 8)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setCaptureDeviceOutputConsumerSource:(id)source
{
  if (self->_contents != source)
  {
    v8[8] = v3;
    v8[9] = v4;
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0);
    self->_contents = source;
    self->_contentType = 9;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF2DC6A8;
    v8[3] = &unk_1E7A7E220;
    v8[4] = self;
    v8[5] = source;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
  }
}

- (id)captureDeviceOutputConsumerSource
{
  if (self->_contentType == 9)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setTextureProvider:(id)provider
{
  if (self->_contents != provider)
  {
    v8[8] = v3;
    v8[9] = v4;
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0);
    self->_contents = provider;
    self->_contentType = 10;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF2DC780;
    v8[3] = &unk_1E7A7E220;
    v8[4] = self;
    v8[5] = provider;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
  }
}

- (id)textureProvider
{
  if (self->_contentType == 10)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setPrecomputedLightingEnvironment:(id)environment
{
  if (self->_contents != environment)
  {
    v8[8] = v3;
    v8[9] = v4;
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0);
    self->_contents = environment;
    self->_contentType = 11;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF2DC858;
    v8[3] = &unk_1E7A7E220;
    v8[4] = self;
    v8[5] = environment;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
  }
}

- (id)precomputedLightingEnvironment
{
  if (self->_contentType == 11)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)_updateMaterialUIComponent:(id)component
{
  v5 = objc_msgSend_materialProperty(self, a2, component);
  if (v5)
  {
    v8 = v5;
    if (component)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_1AF2DC9C8;
      v18[3] = &unk_1E7A7E880;
      v18[4] = component;
      v9 = sub_1AF37174C(component, v18);
      v12 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v10, v11);
      v14 = sub_1AF276608(v9, v13);
      objc_msgSend_addObserver_selector_name_object_(v12, v15, self, sel__layerDidChange_, @"VFXUITreeDidChange", v14);
      sub_1AF1679CC(v8, v9);
    }

    else
    {
      v16 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v6, v7);
      objc_msgSend_removeObserver_name_object_(v16, v17, self, @"VFXUITreeDidChange", 0);

      sub_1AF1679CC(v8, 0);
    }
  }
}

- (void)setUIView:(id)view
{
  if (self->_contents != view)
  {
    v8[8] = v3;
    v8[9] = v4;
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0);
    self->_contents = view;
    self->_contentType = 4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF2DCB08;
    v8[3] = &unk_1E7A7E220;
    v8[4] = self;
    v8[5] = view;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
  }
}

- (id)UIView
{
  if (self->_contentType == 4)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setUIWindow:(id)window
{
  if (self->_contents != window)
  {
    v8[8] = v3;
    v8[9] = v4;
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0);
    self->_contents = window;
    self->_contentType = 4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF2DCBE0;
    v8[3] = &unk_1E7A7E220;
    v8[4] = self;
    v8[5] = window;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
  }
}

- (void)setContents:(id)contents
{
  if ((*(self + 8) & 1) == 0 && objc_msgSend_contents(self, a2, contents) == contents)
  {
    return;
  }

  self->_runtimeResolvedURL = 0;
  v5 = sub_1AF3710D4(contents);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_setColor_(self, v6, v5);
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_setLayer_(self, v10, v5);
  }

  else if (objc_msgSend_conformsToProtocol_(v5, v10, &unk_1F2629960))
  {
    objc_msgSend_setMtlTexture_(self, v11, v5);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_setUIView_(self, v12, v5);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_setUIWindow_(self, v13, v5);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_setFloatValue_(self, v14, v5);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_setAssetValue_(self, v15, v5);
          }

          else
          {
            NSClassFromString(&cfstr_Avplayer.isa);
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_setAvPlayer_(self, v16, v5);
            }

            else
            {
              NSClassFromString(&cfstr_Avcapturedevic.isa);
              if (objc_opt_isKindOfClass())
              {
                objc_msgSend_setCaptureDevice_(self, v17, v5);
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  objc_msgSend_setCaptureDeviceOutputConsumerSource_(self, v18, v5);
                }

                else if (objc_msgSend_conformsToProtocol_(v5, v18, &unk_1F262AD98))
                {
                  objc_msgSend_setTextureProvider_(self, v19, v5);
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
LABEL_8:
                    objc_msgSend_setImage_(self, v7, v5);
                    goto LABEL_9;
                  }

                  objc_msgSend_setPrecomputedLightingEnvironment_(self, v7, v5);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_9:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    parent = self->_parent;

    MEMORY[0x1EEE66B58](parent, sel__updateProbeStamp, v8);
  }
}

- (id)contents
{
  if (*(self + 8))
  {
    contentType = self->_contentType;
    if (contentType == 5 || contentType == 0)
    {
      v6 = objc_msgSend_worldRef(self, a2, v2);
      v8 = v6;
      if (v6)
      {
        sub_1AF1CEA20(v6, v7);
      }

      IfNeeded = objc_msgSend_materialPropertyCreateIfNeeded_(self, v7, 0);
      v11 = sub_1AF1660D8(IfNeeded, v10);
      if (v11)
      {
        v13 = sub_1AF371814(v11, v12);
        if (!v8)
        {
          return v13;
        }
      }

      else
      {
        v13 = 0;
        if (!v8)
        {
          return v13;
        }
      }

      sub_1AF1CEA9C(v8, v12);
      return v13;
    }
  }

  v15 = self->_contents;

  return v15;
}

- (void)_setImagePath:(id)path withResolvedURL:(id)l
{
  objc_msgSend__updateCFXImageWithContents_(self, a2, l);
  objc_msgSend__clearContentsForDeallocation_(self, v7, 0);
  self->_contents = path;
  self->_contentType = 1;
  runtimeResolvedURL = self->_runtimeResolvedURL;
  if (runtimeResolvedURL != l)
  {

    self->_runtimeResolvedURL = l;
  }
}

- (unint64_t)maxAnisotropy
{
  if ((*(self + 8) & 1) == 0)
  {
    return *(self + 77) & 0x1F;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (!v5)
  {
    return (objc_msgSend_textureSampler(self, v6, v7) >> 56) & 0x7F;
  }

  v8 = v5;
  sub_1AF1CEA20(v5, v6);
  v4 = (objc_msgSend_textureSampler(self, v9, v10) >> 56) & 0x7F;
  sub_1AF1CEA9C(v8, v11);
  return v4;
}

- (void)setMaxAnisotropy:(unint64_t)anisotropy
{
  anisotropyCopy = 16;
  if (anisotropy < 0x10)
  {
    anisotropyCopy = anisotropy;
  }

  if (anisotropyCopy <= 1)
  {
    anisotropyCopy = 1;
  }

  v6 = *(self + 77);
  if (anisotropyCopy != (v6 & 0x1F))
  {
    v7[5] = v3;
    v7[6] = v4;
    *(self + 77) = v6 & 0xE0 | anisotropyCopy;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF2DD130;
    v7[3] = &unk_1E7A7E1D0;
    v7[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v7);
  }
}

- (void)setMtlTexture:(id)texture
{
  if (self->_contents != texture)
  {
    v8[8] = v3;
    v8[9] = v4;
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0);
    self->_contents = texture;
    self->_contentType = 3;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF2DD1E8;
    v8[3] = &unk_1E7A7E220;
    v8[4] = self;
    v8[5] = texture;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
  }
}

- (id)mtlTexture
{
  if (self->_contentType == 3)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)setContentsTransform:(__n128)transform
{
  v29 = a2;
  transformCopy = transform;
  v31 = a4;
  v32 = a5;
  v7 = self[13];
  if (!v7 || (v8 = sub_1AF1CBF20(v7, v5), result = VFXMatrix4EqualToMatrix4(a2, transform, a4, a5, v8, v9, v10, v11), (result & 1) == 0))
  {
    if (VFXMatrix4IsIdentity(a2, transform, a4, a5))
    {
      result = self[13];
      if (!result)
      {
        return result;
      }

      free(result);
      self[13] = 0;
    }

    else
    {
      objc_msgSend___allocateContentTransformIfNeeded(self, v13, v14);
      *&v16 = sub_1AF1CBF04(self[13], &v29).n128_u64[0];
    }

    v17 = objc_msgSend__animationPathForKey_(self, v15, @"contentsTransform", v16, *&a2, *&transform, *&a4, *&a5);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1AF2DD33C;
    v23[3] = &unk_1E7A7E578;
    selfCopy = self;
    v24 = v29;
    v25 = transformCopy;
    v26 = v31;
    v27 = v32;
    return objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v18, self, v17, v23);
  }

  return result;
}

- (__n128)contentsTransform
{
  result = VFXMatrix4Identity;
  if ((*(self + 8) & 1) == 0)
  {
    v5 = *(self + 104);
    if (v5)
    {
      return sub_1AF1CBF20(v5, v1);
    }

    return result;
  }

  v6 = objc_msgSend_worldRef(self, v1, v2);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_materialProperty(self, v7, v8);
  if (!v10)
  {
    result = VFXMatrix4Identity;
    if (!v9)
    {
      return result;
    }

    goto LABEL_10;
  }

  v12 = sub_1AF167220(v10, v11);
  result = VFXMatrix4Identity;
  if (v12)
  {
    result = *v12;
  }

  if (v9)
  {
LABEL_10:
    v13 = result;
    sub_1AF1CEA9C(v9, v11);
    return v13;
  }

  return result;
}

- (void)setContentsOffset:(VFXMaterialProperty *)self
{
  v15 = v3;
  contentTransform = self->_contentTransform;
  if (!contentTransform || (v6 = sub_1AF1CCB30(contentTransform), (VFXVector3EqualToVector3(v15, v6) & 1) == 0))
  {
    objc_msgSend___allocateContentTransformIfNeeded(self, a2, v2, *&v15);
    sub_1AF1CCB38(self->_contentTransform, v16);
    v7 = self->_contentTransform;
    v8 = *(v7 + 3);
    v27 = *(v7 + 2);
    v28 = v8;
    v9 = *(v7 + 5);
    v29 = *(v7 + 4);
    v30 = v9;
    v10 = *(v7 + 1);
    v25 = *v7;
    v26 = v10;
    if (sub_1AF1CCE54(v7, v11))
    {
      free(self->_contentTransform);
      self->_contentTransform = 0;
    }

    v13 = objc_msgSend__animationPathForKey_(self, v12, @"contentsTransform");
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1AF2DD580;
    v17[3] = &unk_1E7A7E8A8;
    selfCopy = self;
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v14, self, v13, v17);
  }
}

- (double)contentsOffset
{
  if (*(self + 8))
  {
    v6 = objc_msgSend_worldRef(self, a2, a3);
    v9 = v6;
    if (v6)
    {
      sub_1AF1CEA20(v6, v7);
    }

    v10 = objc_msgSend_materialProperty(self, v7, v8);
    result = 0.0;
    if (v10)
    {
      v12 = sub_1AF167270(v10, v11);
      result = 0.0;
      if (v12)
      {
        *&result = sub_1AF1CCB30(v12).n128_u64[0];
      }
    }

    if (v9)
    {
      v13 = result;
      sub_1AF1CEA9C(v9, v11);
      return v13;
    }
  }

  else
  {
    v4 = *(self + 104);
    if (v4)
    {
      *&result = sub_1AF1CCB30(v4).n128_u64[0];
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

- (void)setContentsScale:(VFXMaterialProperty *)self
{
  v22 = v3;
  contentTransform = self->_contentTransform;
  if (!contentTransform || (v12 = sub_1AF1CCB48(contentTransform, a2, *v3.i64, v4, v5, v6, v7, v8, v9), (VFXVector3EqualToVector3(v22, v12) & 1) == 0))
  {
    objc_msgSend___allocateContentTransformIfNeeded(self, a2, v2, *&v22);
    sub_1AF1CCB7C(self->_contentTransform, v13, v23);
    v14 = self->_contentTransform;
    v15 = *(v14 + 3);
    v34 = *(v14 + 2);
    v35 = v15;
    v16 = *(v14 + 5);
    v36 = *(v14 + 4);
    v37 = v16;
    v17 = *(v14 + 1);
    v32 = *v14;
    v33 = v17;
    if (sub_1AF1CCE54(v14, v18))
    {
      free(self->_contentTransform);
      self->_contentTransform = 0;
    }

    v20 = objc_msgSend__animationPathForKey_(self, v19, @"contentsTransform");
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1AF2DD784;
    v24[3] = &unk_1E7A7E8A8;
    selfCopy = self;
    v27 = v34;
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v25 = v32;
    v26 = v33;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v21, self, v20, v24);
  }
}

- (__n128)contentsScale
{
  if (*(self + 8))
  {
    v13 = objc_msgSend_worldRef(self, a2, a10, a3, a4, a5, a6, a7, a8, *a9.i64);
    v16 = v13;
    if (v13)
    {
      sub_1AF1CEA20(v13, v14);
    }

    v17 = objc_msgSend_materialProperty(self, v14, v15);
    __asm { FMOV            V0.4S, #1.0 }

    if (v17)
    {
      v30 = result;
      v23 = sub_1AF167270(v17, v18);
      result = v30;
      if (v23)
      {
        result = sub_1AF1CCB48(v23, v18, v30.n128_f64[0], v24, v25, v26, v27, v28, v29);
      }
    }

    if (v16)
    {
      v31 = result;
      sub_1AF1CEA9C(v16, v18);
      return v31;
    }
  }

  else
  {
    v11 = *(self + 104);
    if (v11)
    {
      result.n128_u64[0] = sub_1AF1CCB48(v11, a2, a3, a4, a5, a6, a7, a8, a9).n128_u64[0];
    }

    else
    {
      __asm { FMOV            V0.4S, #1.0 }
    }
  }

  return result;
}

- (void)setContentsRotation:(float)rotation
{
  v10.i64[0] = 0;
  LODWORD(v4) = 1.0;
  v10.i64[1] = __PAIR64__(LODWORD(rotation), 1.0);
  v22 = v10;
  contentTransform = self->_contentTransform;
  if (!contentTransform || (sub_1AF1CC9D8(contentTransform, a2, *&rotation, v4, 0.0, v5, v6, v7, v8), (VFXVector4EqualToVector4(v22, v12) & 1) == 0))
  {
    objc_msgSend___allocateContentTransformIfNeeded(self, a2, v3, *&v22);
    sub_1AF1CCAD8(self->_contentTransform, v13, v23);
    v14 = self->_contentTransform;
    v15 = *(v14 + 3);
    v34 = *(v14 + 2);
    v35 = v15;
    v16 = *(v14 + 5);
    v36 = *(v14 + 4);
    v37 = v16;
    v17 = *(v14 + 1);
    v32 = *v14;
    v33 = v17;
    if (sub_1AF1CCE54(v14, v18))
    {
      free(self->_contentTransform);
      self->_contentTransform = 0;
    }

    v20 = objc_msgSend__animationPathForKey_(self, v19, @"contentsTransform");
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1AF2DD9A0;
    v24[3] = &unk_1E7A7E8A8;
    selfCopy = self;
    v27 = v34;
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v25 = v32;
    v26 = v33;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v21, self, v20, v24);
  }
}

- (float)contentsRotation
{
  if (*(self + 8))
  {
    v14 = objc_msgSend_worldRef(self, a2, v2);
    v17 = v14;
    if (v14)
    {
      sub_1AF1CEA20(v14, v15);
    }

    v18 = objc_msgSend_materialProperty(self, v15, v16);
    v13 = 0.0;
    if (v18)
    {
      v20 = sub_1AF167270(v18, v19);
      if (v20)
      {
        sub_1AF1CC9D8(v20, v19, v21, v22, v23, v24, v25, v26, v27);
        v13 = v28;
      }
    }

    if (v17)
    {
      sub_1AF1CEA9C(v17, v19);
    }
  }

  else
  {
    contentTransform = self->_contentTransform;
    if (contentTransform)
    {
      sub_1AF1CC9D8(contentTransform, a2, v3, v4, v5, v6, v7, v8, v9);
      return v12;
    }

    else
    {
      return 0.0;
    }
  }

  return v13;
}

- (id)propertyName
{
  objc_msgSend_propertyType(self, a2, v2);
  result = @"diffuse";
  switch(@"diffuse")
  {
    case 0u:
      result = @"emission";
      break;
    case 1u:
      return result;
    case 2u:
      result = @"specular";
      break;
    case 3u:
      result = @"reflective";
      break;
    case 4u:
      result = @"transparent";
      break;
    case 5u:
      result = @"multiply";
      break;
    case 6u:
      result = @"normal";
      break;
    case 7u:
      result = @"ambientOcclusion";
      break;
    case 8u:
      result = @"selfIllumination";
      break;
    case 9u:
      result = @"metalness";
      break;
    case 0xAu:
      result = @"roughness";
      break;
    case 0xBu:
      result = @"clearCoat";
      break;
    case 0xCu:
      result = @"clearCoatRoughness";
      break;
    case 0xDu:
      result = @"clearCoatNormal";
      break;
    case 0xEu:
      result = @"subsurface";
      break;
    case 0xFu:
      result = @"subsurfaceRadius";
      break;
    case 0x10u:
      result = @"transmission";
      break;
    case 0x11u:
      result = @"transmissionColor";
      break;
    case 0x12u:
      result = @"displacement";
      break;
    case 0x17u:
      result = @"gobo";
      break;
    case 0x18u:
      result = @"ies";
      break;
    case 0x19u:
      result = @"background";
      break;
    case 0x1Au:
      objc_msgSend_parent(self, v4, v5);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        result = @"probeEnvironment";
      }

      else
      {
        result = @"environment";
      }

      break;
    case 0x1Bu:
      result = @"colorGrading";
      break;
    case 0x1Cu:
      result = self->_customMaterialPropertyName;
      break;
    default:
      v7 = sub_1AF0D5194(@"diffuse", v4);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF5CE4(self, v7, v8);
      }

      result = 0;
      break;
  }

  return result;
}

- (NSString)description
{
  v4 = objc_msgSend_contents(self, a2, v2);
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v10 = objc_msgSend_propertyName(self, v8, v9);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"<data %p>", v4);
  }

  return objc_msgSend_stringWithFormat_(v5, v11, @"<%@: %p | %@ contents=%@>", v7, self, v10, v4);
}

+ (__CFXImage)_createCFXImageFromImage:(id)image
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v4, image);
    if (objc_msgSend_scheme(v5, v6, v7))
    {
      imageCopy = v5;
LABEL_6:

      return sub_1AF195FC0(imageCopy, v8);
    }

    return sub_1AF196E08(image, v8, v9);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      imageCopy = image;
      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_1AF196004(image, v12);
    }

    else
    {
      v13 = CFGetTypeID(image);
      if (v13 == CGImageGetTypeID())
      {

        return sub_1AF196CC4(image, v14);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          return sub_1AF196DC4(image, v15);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            return sub_1AF2ED094(image, v16, v17);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

+ (__CFXImage)copyCFXImageFromImage:(id)image textureOptions:(unsigned __int8)options wasCached:(BOOL *)cached
{
  v39[7] = *MEMORY[0x1E69E9840];
  if (!image)
  {
    return 0;
  }

  optionsCopy = options;
  v8 = CFGetTypeID(image);
  if (v8 != sub_1AF195EF4(v8, v9))
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    v15 = isKindOfClass ^ 1;
    if (objc_opt_isKindOfClass())
    {
      v16 = objc_msgSend_count(image, v13, v14);
      if (v16 != 6)
      {
        v28 = sub_1AF0D5194(v16, v17);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF5D70();
        }

        v11 = 0;
        if (!cached)
        {
          goto LABEL_35;
        }

        v27 = 0;
        goto LABEL_34;
      }

      v18 = 0;
      memset(v39, 0, 48);
      v29 = 0x8400102uLL;
      do
      {
        v19 = objc_msgSend_objectAtIndexedSubscript_(image, v17, v18, v29);
        v21 = objc_msgSend_copyCFXImageFromImage_textureOptions_wasCached_(self, v20, v19, optionsCopy, 0);
        if (!v21)
        {
          v22 = sub_1AF0D5194(0, v17);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = objc_msgSend_objectAtIndexedSubscript_(image, v17, v18);
            *buf = v29;
            v38 = v23;
            _os_log_impl(&dword_1AF0CE000, v22, OS_LOG_TYPE_DEFAULT, "Warning: copyCFXImageFromImage: invalid sub-image %@\n", buf, 0xCu);
          }
        }

        v39[v18++] = v21;
      }

      while (v18 != 6);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = sub_1AF2DE274;
      v32[3] = &unk_1E7A7E8D0;
      v32[4] = &v33;
      v32[5] = v39;
      v11 = sub_1AF198494(image, v15 & 1, v32);
      for (i = 0; i != 6; ++i)
      {
        v26 = v39[i];
        if (v26)
        {
          CFRelease(v26);
          v39[i] = 0;
        }
      }

      if (!v11)
      {
LABEL_28:
        if (!cached)
        {
LABEL_35:
          _Block_object_dispose(&v33, 8);
          return v11;
        }

        v27 = (v34[3] & 1) == 0;
LABEL_34:
        *cached = v27;
        goto LABEL_35;
      }
    }

    else
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = sub_1AF2DE288;
      v31[3] = &unk_1E7A7E8F8;
      v31[4] = self;
      v31[5] = image;
      v31[6] = &v33;
      v11 = sub_1AF198494(image, (isKindOfClass ^ 1) & 1, v31);
      if (!v11)
      {
        goto LABEL_28;
      }
    }

    if (*(v34 + 24) == 1)
    {
      if ((optionsCopy & 2) != 0)
      {
        sub_1AF197FCC();
      }

      if ((optionsCopy & 8) != 0)
      {
        sub_1AF197F40(v11, v24);
      }
    }

    goto LABEL_28;
  }

  if (cached)
  {
    *cached = 1;
  }

  return image;
}

- (void)getCFXImageRef
{
  v4 = objc_msgSend_contents(self, a2, v2);
  v7 = objc_msgSend__textureOptions(self, v5, v6);
  v9 = objc_msgSend_copyCFXImageFromImage_textureOptions_(VFXMaterialProperty, v8, v4, v7);

  return v9;
}

- (void)parentWillDie:(id)die
{
  if (self->_parent != die)
  {
    v4 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF5DAC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  self->_parent = 0;
}

- ($42C19FAB4E3144CC06073197E1960D27)textureSampler
{
  v3 = objc_msgSend_materialProperty(self, a2, v2);
  if (v3)
  {

    return sub_1AF16679C(v3, v4);
  }

  else
  {

    return sub_1AF1C4F6C();
  }
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
  v13 = objc_msgSend_animation(v8, v9, v10) == animation;
  if (v13)
  {
    v14 = objc_msgSend_world(self, v11, v12);
    objc_msgSend_removeWorldReference_(v8, v15, v14);
    objc_msgSend_removeObjectForKey_(self->_animations, v16, key);
    v19 = objc_msgSend___CFObject(self, v17, v18);
    v20 = sub_1AF16D234(v19);
    if ((v20 & 1) == 0)
    {
      v22 = sub_1AF0D5194(v20, v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF4558(v22, v23, v24, v25, v26, v27, v28, v29);
      }
    }

    sub_1AF16D870(v19, key, 1);
  }

  os_unfair_lock_unlock(&self->_animationsLock);
  return v13;
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

    if ((*(self + 8) & 1) == 0)
    {
      os_unfair_lock_lock(&self->_animationsLock);
      v12 = objc_msgSend_world(self, v10, v11);
      objc_msgSend_addWorldReference_(player, v13, v12);
      animations = self->_animations;
      if (!animations)
      {
        animations = objc_alloc_init(VFXOrderedDictionary);
        self->_animations = animations;
      }

      objc_msgSend_setObject_forKey_(animations, v14, player, keyCopy);
      os_unfair_lock_unlock(&self->_animationsLock);
    }

    v16 = objc_msgSend_timingFunction(VFXTransaction, a2, player);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1AF2DE61C;
    v19[3] = &unk_1E7A7E2C0;
    v19[4] = player;
    v19[5] = self;
    v19[6] = keyCopy;
    v19[7] = v16;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v17, self, v19);
  }

  else
  {
    v18 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4E4C();
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
      sub_1AFDF4EC0();
    }
  }
}

- (void)removeAllAnimations
{
  v29 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_animationsLock);
  v5 = objc_msgSend_world(self, v3, v4);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  animations = self->_animations;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(animations, v7, &v24, v28, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(animations);
        }

        objc_msgSend_removeWorldReference_(*(*(&v24 + 1) + 8 * i), v9, v5);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(animations, v9, &v24, v28, 16);
    }

    while (v11);
  }

  objc_msgSend_removeAllObjects(self->_animations, v9, v10);
  os_unfair_lock_unlock(&self->_animationsLock);
  objc_msgSend_duration(VFXTransaction, v14, v15);
  if (v18 <= 0.0)
  {
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v16, self, v22, MEMORY[0x1E69E9820], 3221225472, sub_1AF2DE9B0, &unk_1E7A7E1D0, self, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6]);
  }

  else
  {
    v19 = v18;
    v20 = objc_msgSend_timingFunction(VFXTransaction, v16, v17);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v21, self, v23, v22[0], v22[1], v22[2], v22[3], v22[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF2DE9A0, &unk_1E7A7E2E8, self, v20, *&v19);
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
      v10 = objc_msgSend_world(self, v8, v9);
      objc_msgSend_removeWorldReference_(v7, v11, v10);
      objc_msgSend_removeObjectForKey_(self->_animations, v12, key);
    }

    os_unfair_lock_unlock(&self->_animationsLock);
    v15 = objc_msgSend_timingFunction(VFXTransaction, v13, v14);
    objc_msgSend_animationDuration(VFXTransaction, v16, v17);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1AF2DEAB0;
    v20[3] = &unk_1E7A7E310;
    v20[7] = v18;
    v20[4] = self;
    v20[5] = key;
    v20[6] = v15;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v19, self, v20);
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
      v23[2] = sub_1AF2DEC4C;
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
    v21[2] = sub_1AF2DF06C;
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
  v8[2] = sub_1AF2DF1B0;
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
  v4[2] = sub_1AF2DF27C;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)from
{
  v4 = objc_msgSend__vfxBindings(from, a2, from);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF2DF328;
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
    v9[2] = sub_1AF2DF460;
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
  v4[2] = sub_1AF2DF59C;
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
  v6 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v7 = sub_1AF1C4F78();
  IfNeeded = objc_msgSend_materialPropertyCreateIfNeeded_(self, v8, 0);
  if (IfNeeded)
  {
    v11 = IfNeeded;
    v7 = sub_1AF16679C(IfNeeded, v10);
    self->_intensity = sub_1AF166598(v11, v12);
    self->_mappingChannel = sub_1AF1666D4(v11, v13);
    *(self + 76) = *(self + 76) & 0xF0 | sub_1AF167B64(v11, v14) & 0xF;
    if (sub_1AF167CE0(v11))
    {
      v15 = 4;
    }

    else
    {
      v15 = 0;
    }

    *(self + 8) = *(self + 8) & 0xFB | v15;
    if (sub_1AF167434(v11))
    {
      objc_msgSend___allocateContentTransformIfNeeded(self, v16, v17);
      contentTransform = self->_contentTransform;
      v20 = sub_1AF167270(v11, v19);
      v22 = v20[1];
      *contentTransform = *v20;
      *(contentTransform + 1) = v22;
      v23 = v20[5];
      v25 = v20[2];
      v24 = v20[3];
      *(contentTransform + 4) = v20[4];
      *(contentTransform + 5) = v23;
      *(contentTransform + 2) = v25;
      *(contentTransform + 3) = v24;
    }

    else
    {
      free(self->_contentTransform);
      self->_contentTransform = 0;
    }
  }

  else
  {
    self->_intensity = 1.0;
    *(self + 76) = *(self + 76) & 0xF0 | sub_1AF167B50(self->_propertyType) & 0xF;
    if (sub_1AF167CB8(self->_propertyType))
    {
      v26 = 4;
    }

    else
    {
      v26 = 0;
    }

    *(self + 8) = *(self + 8) & 0xFB | v26;
  }

  *(self + 74) = *(self + 74) & 0xC0 | v7 & 3 | (v7 >> 6) & 0xC | (v7 >> 12) & 0x30;
  *(self + 75) = *(self + 75) & 0xC0 | (BYTE3(v7) + 1) & 7 | ((v7 >> 29) + 8) & 0x38;
  *(self + 77) = *(self + 77) & 0xE0 | HIBYTE(v7) & 0x1F;
  if (v6)
  {

    sub_1AF1CEA9C(v6, v21);
  }
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2DF980;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)copyPropertiesFrom:(id)from copyContext:(id)context
{
  if (*(from + 14) && (objc_msgSend_contents(from, a2, from), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = objc_msgSend_contents(from, a2, from);
    objc_msgSend__setImagePath_withResolvedURL_(self, v8, v7, *(from + 14));
  }

  else
  {
    if (context && *(from + 72) == 6)
    {
      v11 = objc_msgSend_contents(from, a2, from);
      v12 = sub_1AF2BED30(v11, context);
    }

    else
    {
      v12 = objc_msgSend_contents(from, a2, from);
    }

    objc_msgSend_setContents_(self, v13, v12);
  }

  v14 = objc_msgSend_minificationFilter(from, v9, v10);
  objc_msgSend_setMinificationFilter_(self, v15, v14);
  v18 = objc_msgSend_magnificationFilter(from, v16, v17);
  objc_msgSend_setMagnificationFilter_(self, v19, v18);
  v22 = objc_msgSend_mipFilter(from, v20, v21);
  objc_msgSend_setMipFilter_(self, v23, v22);
  objc_msgSend_contentsTransform(from, v24, v25);
  objc_msgSend_setContentsTransform_(self, v26, v27);
  v30 = objc_msgSend_wrapS(from, v28, v29);
  objc_msgSend_setWrapS_(self, v31, v30);
  v34 = objc_msgSend_wrapT(from, v32, v33);
  objc_msgSend_setWrapT_(self, v35, v34);
  objc_msgSend_intensity(from, v36, v37);
  objc_msgSend_setIntensity_(self, v38, v39);
  isColorManaged = objc_msgSend_isColorManaged(from, v40, v41);
  objc_msgSend_setColorManaged_(self, v43, isColorManaged);
  v46 = objc_msgSend_mappingChannel(from, v44, v45);
  objc_msgSend_setMappingChannel_(self, v47, v46);
  v50 = objc_msgSend_textureComponents(from, v48, v49);
  objc_msgSend_setTextureComponents_(self, v51, v50);
  objc_msgSend__copyAnimationsFrom_(self, v52, from);

  objc_msgSend__copyBindingsFrom_(self, v53, from);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  v6 = objc_msgSend_materialPropertyWithContents_(v4, v5, 0);
  v6[9] = self->_propertyType;
  v7 = v6;
  objc_msgSend_copyPropertiesFrom_copyContext_(v6, v8, self, 0);
  return v6;
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  if (self->_contentType == 6)
  {
    v7[5] = v4;
    v7[6] = v5;
    contents = self->_contents;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF2DFCB0;
    v7[3] = &unk_1E7A7C0C8;
    v7[4] = self;
    (*(block + 2))(block, contents, 1, v7);
  }
}

- (id)presentationMaterialProperty
{
  selfCopy = self;
  if ((*(self + 8) & 1) == 0)
  {
    v3 = [VFXMaterialProperty alloc];
    inited = objc_msgSend_initPresentationMaterialPropertyWithModelProperty_(v3, v4, selfCopy);

    return inited;
  }

  return self;
}

- (void)_updateSampler
{
  v4 = objc_msgSend_materialProperty(self, a2, v2);
  if (v4)
  {
    v5 = *(self + 74) & 3 | (((*(self + 74) >> 2) & 3) << 8) & 0xFFFFFFFF00FFFFFFLL | (((*(self + 74) >> 4) & 3) << 16) & 0xFFFFFFFF00FFFFFFLL | (((*(self + 75) & 7) - 1) << 24) | ((((*(self + 75) >> 3) & 7) - 1) << 32) | ((*(self + 77) & 0x1F) << 56);

    sub_1AF1667E4(v4, v5);
  }
}

- (void)_layerDidChange:(id)change
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, change);
  v8 = objc_msgSend_worldRef(self, v5, v6);

  objc_msgSend_postNotificationName_object_(v4, v7, @"kCFXWorldDidUpdateNotification", v8);
}

- (void)_updateMaterialMTLTexture:(id)texture
{
  v4 = objc_msgSend_materialProperty(self, a2, texture);
  if (v4)
  {

    sub_1AF167934(v4, texture);
  }
}

- (void)_updateMaterialLayer:(id)layer
{
  v5 = objc_msgSend_materialProperty(self, a2, layer);
  if (v5)
  {
    v8 = v5;
    if (layer)
    {
      v9 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v6, v7);
      objc_msgSend_addObserver_selector_name_object_(v9, v10, self, sel__layerDidChange_, @"VFXLayerTreeDidChange", layer);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_1AF2DFF8C;
      v16[3] = &unk_1E7A7E880;
      v16[4] = layer;
      v11 = sub_1AF37174C(layer, v16);
      sub_1AF1679CC(v8, v11);
    }

    else
    {
      sub_1AF1679CC(v5, 0);
      v14 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v12, v13);

      objc_msgSend_removeObserver_name_object_(v14, v15, self, @"VFXLayerTreeDidChange", 0);
    }
  }
}

- (void)_updateMaterialAVPlayer:(id)player
{
  v4 = objc_msgSend_materialProperty(self, a2, player);
  if (v4)
  {
    v5 = v4;
    if (player)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_1AF2E00AC;
      v7[3] = &unk_1E7A7E880;
      v7[4] = player;
      v6 = sub_1AF37174C(player, v7);
      sub_1AF1679CC(v5, v6);
    }

    else
    {

      sub_1AF1679CC(v4, 0);
    }
  }
}

- (void)_updateMaterialCaptureDevice:(id)device
{
  v4 = objc_msgSend_materialProperty(self, a2, device);
  if (v4)
  {
    v5 = v4;
    if (device)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_1AF2E01CC;
      v7[3] = &unk_1E7A7E880;
      v7[4] = device;
      v6 = sub_1AF37174C(device, v7);
      sub_1AF1679CC(v5, v6);
    }

    else
    {

      sub_1AF1679CC(v4, 0);
    }
  }
}

- (void)_updateMaterialCaptureDeviceOutputConsumerSource:(id)source
{
  v4 = objc_msgSend_materialProperty(self, a2, source);
  if (v4)
  {
    v5 = v4;
    if (source)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_1AF2E02EC;
      v7[3] = &unk_1E7A7E880;
      v7[4] = source;
      v6 = sub_1AF37174C(source, v7);
      sub_1AF1679CC(v5, v6);
    }

    else
    {

      sub_1AF1679CC(v4, 0);
    }
  }
}

- (void)_updateMaterialTextureProvider:(id)provider
{
  v4 = objc_msgSend_materialProperty(self, a2, provider);
  if (v4)
  {
    v5 = v4;
    if (provider)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_1AF2E03E8;
      v7[3] = &unk_1E7A7E880;
      v7[4] = provider;
      v6 = sub_1AF37174C(provider, v7);
      sub_1AF1679CC(v5, v6);
    }

    else
    {

      sub_1AF1679CC(v4, 0);
    }
  }
}

- (void)_updatePrecomputedLightingEnvironment:(id)environment
{
  v4 = objc_msgSend_materialProperty(self, a2, environment);
  if (v4)
  {

    sub_1AF167A88(v4, environment);
  }
}

- (void)_updateMaterialImage:(id)image
{
  v4 = objc_msgSend_materialProperty(self, a2, image);
  if (v4)
  {

    sub_1AF1664F4(v4, image);
  }
}

- (void)_updateMaterialAsset:(id)asset
{
  if (!asset)
  {
    v5 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF5E24(v5, a2, asset, v6, v7, v8, v9, v10);
    }
  }

  v11 = objc_msgSend_materialProperty(self, a2, asset);
  if (v11)
  {
    sub_1AF1670B0(v11, asset);
  }
}

- (void)_updateMaterialNumber:(id)number
{
  if (!number)
  {
    v5 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFA20(v5, a2, number, v6, v7, v8, v9, v10);
    }
  }

  v11 = objc_msgSend_materialProperty(self, a2, number);
  if (v11)
  {
    v14 = v11;
    objc_msgSend_floatValue(number, v12, v13);
    v22 = v15;
    if (sub_1AF167CD8(v14) == 4)
    {
      v16 = vdupq_lane_s32(v22, 0);
    }

    else
    {
      __asm { FMOV            V0.4S, #1.0 }

      _Q0.i32[0] = v22.i32[0];
      v16 = vzip1q_s32(_Q0, _Q0);
      v16.i32[2] = v22.i32[0];
    }

    v23 = v16;
    sub_1AF165848(v14, v23.i32);
  }
}

- (void)_updateMaterialColor:(id)color
{
  if (!color)
  {
    v5 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6F14(v5, a2, color, v6, v7, v8, v9, v10);
    }
  }

  v11 = objc_msgSend_materialProperty(self, a2, color);
  if (v11)
  {
    v12 = v11;
    v13 = sub_1AF167CD8(v11);
    v14 = sub_1AF167D58(v13);
    v16[0] = sub_1AF371798(color, v14);
    v16[1] = v15;
    sub_1AF165848(v12, v16);
  }
}

+ (id)captureDeviceOutputConsumerWithOptions:(id)options
{
  v4 = [VFXCaptureDeviceOutputConsumerSource alloc];
  v6 = objc_msgSend_initWithOptions_(v4, v5, options);

  return v6;
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"contentsTransform"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_contentsTransform(self, v5, v6);

    return objc_msgSend_valueWithVFXMatrix4_(v7, v8, v9);
  }

  if (objc_msgSend_isEqualToString_(key, v5, @"contentsOffset"))
  {
    v13 = MEMORY[0x1E696B098];
    objc_msgSend_contentsOffset(self, v11, v12);
LABEL_9:

    return objc_msgSend_valueWithVFXFloat3_(v13, v14, v15);
  }

  if (objc_msgSend_isEqualToString_(key, v11, @"contentsScale"))
  {
    v13 = MEMORY[0x1E696B098];
    objc_msgSend_contentsScale(self, v16, v17);
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(key, v16, @"linearExtendedSRGBColor"))
  {
    v20 = MEMORY[0x1E696B098];
    objc_msgSend_linearExtendedSRGBColor(self, v18, v19);

    return objc_msgSend_valueWithVFXFloat4_(v20, v21, v22);
  }

  else
  {
    v23.receiver = self;
    v23.super_class = VFXMaterialProperty;
    return [(VFXMaterialProperty *)&v23 valueForKey:key];
  }
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"contentsTransform"))
  {
    objc_msgSend_VFXMatrix4Value(value, v7, v8);

    objc_msgSend_setContentsTransform_(self, v9, v10);
  }

  else if (objc_msgSend_isEqualToString_(key, v7, @"contentsOffset"))
  {
    objc_msgSend_VFXFloat3Value(value, v11, v12);

    MEMORY[0x1EEE66B58](self, sel_setContentsOffset_, v13);
  }

  else if (objc_msgSend_isEqualToString_(key, v11, @"contentsScale"))
  {
    objc_msgSend_VFXFloat3Value(value, v14, v15);

    MEMORY[0x1EEE66B58](self, sel_setContentsScale_, v16);
  }

  else if (objc_msgSend_isEqualToString_(key, v14, @"linearExtendedSRGBColor"))
  {
    objc_msgSend_VFXFloat4Value(value, v17, v18);

    MEMORY[0x1EEE66B58](self, sel_setLinearExtendedSRGBColor_, v19);
  }

  else
  {
    v20.receiver = self;
    v20.super_class = VFXMaterialProperty;
    [(VFXMaterialProperty *)&v20 setValue:value forKey:key];
  }
}

- (void)_customEncodingOfVFXMaterialProperty:(id)property
{
  contentTransform = self->_contentTransform;
  if (contentTransform)
  {
    v57 = sub_1AF1CCB30(contentTransform);
    v58 = sub_1AF1CCB48(self->_contentTransform, v6, v57.n128_f64[0], v7, v8, v9, v10, v11, v12);
    sub_1AF1CC9D8(self->_contentTransform, v13, v58.n128_f64[0], v14, v15, v16, v17, v18, v19);
    v59 = v20;
    sub_1AF371A8C(property, @"tr_p", v57);
    sub_1AF371A8C(property, @"tr_s", v58);
    sub_1AF371AF4(property, @"tr_a", v59);
  }

  p_contents = &self->_contents;
  if (self->_contents)
  {
    contentType = self->_contentType;
    if (contentType == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        sub_1AF3741F8(property, *p_contents, @"imageArray");
        goto LABEL_18;
      }
    }

    else if (contentType == 6)
    {
      objc_msgSend_encodeObject_forKey_(property, a2, self->_contents, @"asset", *&v57);
      goto LABEL_18;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v27 = objc_msgSend_options(property, v25, v26), v29 = objc_msgSend_objectForKeyedSubscript_(v27, v28, @"VFXWorldExportEmbedImages"), !objc_msgSend_BOOLValue(v29, v30, v31)) || (runtimeResolvedURL = self->_runtimeResolvedURL) == 0)
    {
      runtimeResolvedURL = *p_contents;
    }

    goto LABEL_16;
  }

  runtimeResolvedURL = *p_contents;
  if (!*p_contents)
  {
    goto LABEL_18;
  }

  v40 = self->_contentType;
  if (v40 <= 2)
  {
    if (self->_contentType)
    {
      if (v40 == 1)
      {
LABEL_16:
        propertyCopy3 = property;
LABEL_17:
        sub_1AF373CD8(propertyCopy3, runtimeResolvedURL, @"image");
        goto LABEL_18;
      }

      if (v40 == 2)
      {
        sub_1AF37266C(property, runtimeResolvedURL, @"layer");
        goto LABEL_18;
      }

      goto LABEL_38;
    }

    v42 = @"color";
LABEL_37:
    objc_msgSend_encodeObject_forKey_(property, runtimeResolvedURL, *p_contents, v42, *&v57);
    goto LABEL_18;
  }

  if (self->_contentType > 9u)
  {
    if (v40 == 10)
    {
      sub_1AF37448C(property, runtimeResolvedURL, @"data");
      goto LABEL_18;
    }

    if (v40 != 11)
    {
      goto LABEL_38;
    }

    v42 = @"precomputedLightingEnvironment";
    goto LABEL_37;
  }

  if (v40 == 3)
  {
    propertyCopy4 = property;
LABEL_41:
    sub_1AF372510(propertyCopy4, runtimeResolvedURL, 0, @"data");
    goto LABEL_18;
  }

  if (v40 == 5)
  {
    objc_msgSend_floatValue(*p_contents, runtimeResolvedURL, v24);
    objc_msgSend_encodeFloat_forKey_(property, v41, @"float");
    goto LABEL_18;
  }

LABEL_38:
  v43 = objc_msgSend_replacementObjectForCoder_(*p_contents, runtimeResolvedURL, property, *&v57);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    propertyCopy3 = property;
    runtimeResolvedURL = v43;
    goto LABEL_17;
  }

  if (objc_msgSend_conformsToProtocol_(v43, v44, &unk_1F2629960))
  {
    propertyCopy4 = property;
    runtimeResolvedURL = v43;
    goto LABEL_41;
  }

  v47 = objc_msgSend_conformsToProtocol_(*p_contents, v46, &unk_1F25D6CB0);
  if (v47)
  {
    v50 = objc_msgSend_classForCoder(*p_contents, v48, v49);
    v51 = objc_opt_class();
    isSubclassOfClass = objc_msgSend_isSubclassOfClass_(v50, v52, v51);
    if (isSubclassOfClass)
    {
      objc_msgSend_encodeObject_forKey_(property, v54, *p_contents, @"image", *&v57);
    }

    else
    {
      v56 = sub_1AF0D5194(isSubclassOfClass, v54);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF5F14(v50, &self->_contents, v56);
      }
    }
  }

  else
  {
    v55 = sub_1AF0D5194(v47, v48);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF5E9C();
    }
  }

LABEL_18:
  objc_msgSend_encodeInteger_forKey_(property, runtimeResolvedURL, self->_mappingChannel, @"mappingChannel", *&v57);
  v34 = *(self + 76);
  if ((v34 & 0xF) != 0xF)
  {
    objc_msgSend_encodeInteger_forKey_(property, v33, v34 & 0xF, @"textureComponents");
  }

  v35 = *(self + 77);
  if ((v35 & 0x1F) != 0x10)
  {
    objc_msgSend_encodeInteger_forKey_(property, v33, v35 & 0x1F, @"anisotropy");
  }

  objc_msgSend_encodeInteger_forKey_(property, v33, *(self + 74) & 3, @"minificationFilter");
  objc_msgSend_encodeInteger_forKey_(property, v36, (*(self + 74) >> 2) & 3, @"magnificationFilter");
  objc_msgSend_encodeInteger_forKey_(property, v37, (*(self + 74) >> 4) & 3, @"mipFilter");
  objc_msgSend_encodeInteger_forKey_(property, v38, *(self + 75) & 7, @"wrapS");
  objc_msgSend_encodeInteger_forKey_(property, v39, (*(self + 75) >> 3) & 7, @"wrapT");
}

- (void)_didDecodeVFXMaterialProperty:(id)property
{
  v100 = *MEMORY[0x1E69E9840];
  if (self->_customMaterialPropertyName && !self->_customMaterialProperty)
  {
    self->_customMaterialProperty = sub_1AF16578C(0, 28);
  }

  v5 = sub_1AF373644(property, @"image");
  if (v5)
  {
    v7 = v5;
    v8 = objc_msgSend_valueForKey_(VFXTransaction, v6, @"VFXWorldLoadingContextKey");
    v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"VFXWorldLoaderAssetPathResolver");
    if (v10)
    {
      v11 = v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = objc_msgSend_absoluteURLForAssetPath_(v11, v12, v7);
        if (v13)
        {
          objc_msgSend__setImagePath_withResolvedURL_(self, v14, v7, v13);
          goto LABEL_30;
        }
      }
    }

    v16 = sub_1AF2CBA78(property);
    if (v16)
    {
      v18 = VFXResolveImageContents(v7, v16);
      if (v18)
      {
        v19 = v18;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v20, v19);
        }

        objc_msgSend__setImagePath_withResolvedURL_(self, v20, v7, v19);
        goto LABEL_30;
      }
    }

LABEL_29:
    objc_msgSend_setContents_(self, v17, v7);
    goto LABEL_30;
  }

  v21 = objc_opt_class();
  v23 = objc_msgSend_decodeObjectOfClass_forKey_(property, v22, v21, @"asset");
  if (v23 || (v25 = objc_opt_class(), (v23 = objc_msgSend_decodeObjectOfClass_forKey_(property, v26, v25, @"data")) != 0))
  {
    objc_msgSend_setContents_(self, v24, v23);
    goto LABEL_30;
  }

  v27 = sub_1AF374344(property, @"imageArray");
  if (v27)
  {
    v7 = v27;
    v28 = sub_1AF2CBA78(property);
    if (v28)
    {
      v29 = v28;
      v30 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v17, 6);
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v31, &v95, v99, 16);
      if (!v32)
      {
LABEL_28:
        objc_msgSend__updateCFXImageWithContents_(self, v33, v30);
        objc_msgSend__clearContentsForDeallocation_(self, v39, 0);
        self->_contents = v7;
        self->_contentType = 1;
        goto LABEL_30;
      }

      v34 = v32;
      v35 = *v96;
LABEL_22:
      v36 = 0;
      while (1)
      {
        if (*v96 != v35)
        {
          objc_enumerationMutation(v7);
        }

        v37 = VFXResolveImageContents(*(*(&v95 + 1) + 8 * v36), v29);
        if (!v37)
        {
          break;
        }

        objc_msgSend_addObject_(v30, v17, v37);
        if (v34 == ++v36)
        {
          v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v38, &v95, v99, 16);
          if (v34)
          {
            goto LABEL_22;
          }

          goto LABEL_28;
        }
      }
    }

    goto LABEL_29;
  }

  v64 = objc_opt_class();
  v66 = objc_msgSend_decodeObjectOfClass_forKey_(property, v65, v64, @"color");
  if (v66)
  {
    objc_msgSend_setColor_(self, v67, v66);
  }

  else
  {
    v70 = pthread_main_np();
    if (!v70)
    {
      objc_msgSend_begin(MEMORY[0x1E6979518], v68, v69);
      objc_msgSend_activateBackground_(MEMORY[0x1E6979518], v71, 1);
    }

    v72 = MEMORY[0x1E695DFD8];
    v73 = objc_opt_class();
    v75 = objc_msgSend_setWithObject_(v72, v74, v73);
    v76 = sub_1AF3726E8(property, @"layer", v75);
    if (v76)
    {
      objc_msgSend_setLayer_(self, v77, v76);
      if (!v70)
      {
        objc_msgSend_commit(MEMORY[0x1E6979518], v15, v79);
      }
    }

    else
    {
      if (!v70)
      {
        objc_msgSend_commit(MEMORY[0x1E6979518], v77, v78);
      }

      if (objc_msgSend_containsValueForKey_(property, v77, @"float"))
      {
        objc_msgSend_decodeFloatForKey_(property, v80, @"float");
        v83 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v81, v82);
        objc_msgSend_setFloatValue_(self, v84, v83);
      }

      else if (objc_msgSend_containsValueForKey_(property, v80, @"precomputedLightingEnvironment"))
      {
        v85 = MEMORY[0x1E695DFD8];
        v86 = objc_opt_class();
        v88 = objc_msgSend_setWithObject_(v85, v87, v86);
        v89 = sub_1AF3726E8(property, @"precomputedLightingEnvironment", v88);
        objc_msgSend_setPrecomputedLightingEnvironment_(self, v90, v89);
      }
    }
  }

LABEL_30:
  v40 = objc_msgSend_decodeIntegerForKey_(property, v15, @"mappingChannel");
  if (v40 != -1)
  {
    objc_msgSend_setMappingChannel_(self, v41, v40);
  }

  if (objc_msgSend_containsValueForKey_(property, v41, @"textureComponents"))
  {
    v43 = objc_msgSend_decodeIntegerForKey_(property, v42, @"textureComponents");
    objc_msgSend_setTextureComponents_(self, v44, v43);
  }

  *(self + 74) = *(self + 74) & 0xFC | objc_msgSend_decodeIntegerForKey_(property, v42, @"minificationFilter") & 3;
  *(self + 74) = (4 * (objc_msgSend_decodeIntegerForKey_(property, v45, @"magnificationFilter") & 3)) | *(self + 74) & 0xF3;
  *(self + 74) = (16 * (objc_msgSend_decodeIntegerForKey_(property, v46, @"mipFilter") & 3)) | *(self + 74) & 0xCF;
  *(self + 75) = *(self + 75) & 0xF8 | objc_msgSend_decodeIntegerForKey_(property, v47, @"wrapS") & 7;
  *(self + 75) = (8 * (objc_msgSend_decodeIntegerForKey_(property, v48, @"wrapT") & 7)) | *(self + 75) & 0xC7;
  objc_msgSend__updateSampler(self, v49, v50);
  *(self + 77) = *(self + 77) & 0xE0 | 0x10;
  if (objc_msgSend_containsValueForKey_(property, v51, @"anisotropy"))
  {
    v53 = objc_msgSend_decodeIntegerForKey_(property, v52, @"anisotropy");
    objc_msgSend_setMaxAnisotropy_(self, v54, v53);
  }

  if (objc_msgSend_containsValueForKey_(property, v52, @"contentsTransform"))
  {
    v58 = sub_1AF371C4C(property, @"contentsTransform").n128_u64[0];
  }

  else
  {
    if (!objc_msgSend_containsValueForKey_(property, v55, @"tr_p"))
    {
      return;
    }

    v59.n128_f64[0] = sub_1AF371BC4(property, @"tr_p");
    v93 = v59;
    v60.n128_f64[0] = sub_1AF371BC4(property, @"tr_s");
    v92 = v60;
    v91 = sub_1AF371C0C(property, @"tr_a");
    memset(v94, 0, sizeof(v94));
    sub_1AF1CCEE0(v94);
    sub_1AF1CCB38(v94, v93);
    sub_1AF1CCB7C(v94, v61, v92);
    sub_1AF1CCAD8(v94, v62, v91);
    v58 = sub_1AF1CBF20(v94, v63).n128_u64[0];
  }

  objc_msgSend_setContentsTransform_(self, v56, v57, *&v58, *&v91);
}

- (BOOL)_hasDefaultValues
{
  if ((*(self + 8) & 2) != 0)
  {
    v17 = v3;
    v18 = v4;
    if (!self->_customMaterialPropertyName && !objc_msgSend_count(self->_animations, a2, v2) && !self->_contentType && !self->_mappingChannel && self->_intensity == 1.0)
    {
      v7 = sub_1AF1C4F78();
      v8 = *(self + 74);
      if ((v8 & 3) == v7 && ((v8 >> 2) & 3) == BYTE1(v7) && ((v8 >> 4) & 3) == BYTE2(v7))
      {
        v9 = *(self + 75);
        if (BYTE3(v7) + 1 == (v9 & 7) && BYTE4(v7) + 1 == ((v9 >> 3) & 7) && (HIBYTE(v7) & 0x7F) == (*(self + 77) & 0x1F) && !self->_contentTransform)
        {
          v10 = *(self + 76) & 0xF;
          if (v10 == sub_1AF167B50(self->_propertyType))
          {
            if (!self->_contents)
            {
              goto LABEL_20;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = sub_1AF1656B8(self->_propertyType);
              v16 = 1;
              v15[0] = objc_msgSend_vfx_CFXColorIgnoringColorSpace_success_(self->_contents, v12, 1, &v16);
              v15[1] = v13;
              if (v16 == 1)
              {
                v5 = sub_1AF163EE0(v15, v11);
                if (!v5)
                {
                  return v5;
                }

LABEL_20:
                LOBYTE(v5) = 1;
                return v5;
              }
            }
          }
        }
      }
    }

    LOBYTE(v5) = 0;
    return v5;
  }

  LOBYTE(v5) = 0;
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  if (*(self + 8))
  {
    objc_msgSend__updateModelFromPresentation(self, a2, coder);
  }

  objc_msgSend__customEncodingOfVFXMaterialProperty_(self, a2, coder);
  v6 = objc_msgSend_encodeInt_forKey_(coder, v5, (*(self + 8) >> 1) & 1, @"isCommonProfileProperty");
  parent = self->_parent;
  if (parent)
  {
    v6 = objc_msgSend_encodeObject_forKey_(coder, v7, parent, @"parent");
  }

  propertyType = self->_propertyType;
  if (propertyType < 0x1D && ((0x1F87FFFFu >> propertyType) & 1) != 0)
  {
    objc_msgSend_encodeInteger_forKey_(coder, v7, qword_1AFE478F0[self->_propertyType], @"propertyType");
  }

  else
  {
    v12 = sub_1AF0D5194(v6, v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF5FB4();
    }

    objc_msgSend_encodeInteger_forKey_(coder, v13, 0, @"propertyType");
  }

  customMaterialPropertyName = self->_customMaterialPropertyName;
  if (customMaterialPropertyName)
  {
    objc_msgSend_encodeObject_forKey_(coder, v10, customMaterialPropertyName, @"customMaterialPropertyName");
  }

  *&v11 = self->_intensity;
  objc_msgSend_encodeFloat_forKey_(coder, v10, @"intensity", v11);
  if (objc_msgSend_materialPropertyCreateIfNeeded_(self, v15, 0))
  {
    isColorManaged = objc_msgSend_isColorManaged(self, v16, v17);
    objc_msgSend_encodeBool_forKey_(coder, v19, isColorManaged, @"isColorManaged");
  }

  sub_1AF3728B4(coder, self, v17);
}

- (VFXMaterialProperty)initWithCoder:(id)coder
{
  v41[6] = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = VFXMaterialProperty;
  v6 = [(VFXMaterialProperty *)&v40 init];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    *(v6 + 8) |= 8u;
    v10 = objc_msgSend_decodeIntegerForKey_(coder, v9, @"propertyType");
    if (v10 < 0x1A && ((0x3FFFFFDu >> v10) & 1) != 0)
    {
      v12 = byte_1AFE479D8[v10];
    }

    else
    {
      v13 = sub_1AF0D5194(v10, v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF5FF0();
      }

      v12 = 0;
    }

    v6->_propertyType = v12;
    v14 = MEMORY[0x1E695DFD8];
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v41[2] = objc_opt_class();
    v41[3] = objc_opt_class();
    v41[4] = objc_opt_class();
    v41[5] = objc_opt_class();
    v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v15, v41, 6);
    v18 = objc_msgSend_setWithArray_(v14, v17, v16);
    v20 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v19, v18, @"parent");
    if (v20 == v6)
    {
      objc_msgSend__setParent_(v6, v21, 0);
    }

    else
    {
      objc_msgSend__setParent_(v6, v21, v20);
    }

    objc_msgSend__customDecodingOfVFXMaterialProperty_(v6, v22, coder);
    v24 = objc_msgSend_decodeIntForKey_(coder, v23, @"isCommonProfileProperty");
    *(v6 + 8) = (2 * (v24 & 1)) | *(v6 + 8) & 0xFD;
    if (v24)
    {
      v6->_commonProfile = objc_msgSend_commonProfile(v6->_parent, v25, v26);
    }

    v27 = objc_opt_class();
    v6->_customMaterialPropertyName = objc_msgSend_decodeObjectOfClass_forKey_(coder, v28, v27, @"customMaterialPropertyName");
    objc_msgSend_decodeFloatForKey_(coder, v29, @"intensity");
    objc_msgSend_setIntensity_(v6, v30, v31);
    v32 = @"sRGB";
    if ((objc_msgSend_containsValueForKey_(coder, v33, @"sRGB") & 1) != 0 || (v32 = @"colorManaged", objc_msgSend_containsValueForKey_(coder, v34, @"colorManaged")))
    {
      v35 = objc_msgSend_decodeBoolForKey_(coder, v34, v32);
      objc_msgSend_setColorManaged_(v6, v36, v35);
    }

    v6->_animationsLock._os_unfair_lock_opaque = 0;
    sub_1AF372B94(coder, v6);
    objc_msgSend__didDecodeVFXMaterialProperty_(v6, v37, coder);
    *(v6 + 8) &= ~8u;
    objc_msgSend_setImmediateMode_(VFXTransaction, v38, v7);
  }

  return v6;
}

@end