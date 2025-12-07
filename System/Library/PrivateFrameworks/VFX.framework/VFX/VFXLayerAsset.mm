@interface VFXLayerAsset
- (CALayer)rootLayer;
- (VFXLayerAsset)initWithCoder:(id)coder;
- (id)stateController;
- (void)copyTo:(id)to withContext:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setActiveStateName:(id)name;
- (void)updateActiveState;
@end

@implementation VFXLayerAsset

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXLayerAsset;
  [(VFXFileAsset *)&v3 dealloc];
}

- (id)stateController
{
  result = self->_stateController;
  if (!result)
  {
    v4 = objc_alloc(MEMORY[0x1E69794D0]);
    v7 = objc_msgSend_rootLayer(self, v5, v6);
    result = objc_msgSend_initWithLayer_(v4, v8, v7);
    self->_stateController = result;
  }

  return result;
}

- (void)updateActiveState
{
  if (objc_msgSend_world(self, a2, v2))
  {
    v6 = objc_msgSend_world(self, v4, v5);
    v9 = objc_msgSend_clock(v6, v7, v8);
    objc_msgSend_speed(v9, v10, v11);
  }

  if (self->_activeStateName)
  {
    v12 = objc_msgSend_rootLayer(self, v4, v5);
    v14 = objc_msgSend_stateWithName_(v12, v13, self->_activeStateName);
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_msgSend_stateController(self, v4, v5);
  objc_msgSend_rootLayer(self, v16, v17);

  MEMORY[0x1EEE66B58](v15, sel_setState_ofLayer_transitionSpeed_, v14);
}

- (CALayer)rootLayer
{
  if (!self->_loaded)
  {
    self->_loaded = 1;
    v4 = objc_msgSend_world(self, a2, v2);
    v9 = objc_msgSend_assetPathResolver(v4, v5, v6);
    if (!v9)
    {
      v10 = objc_msgSend_valueForKey_(VFXTransaction, v7, @"VFXWorldLoadingContextKey");
      v9 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"VFXWorldLoaderAssetPathResolver");
    }

    v12 = objc_msgSend_filename(self, v7, v8);
    v14 = objc_msgSend_absoluteURLForAssetPath_(v9, v13, v12);
    if (v14)
    {
      v17 = objc_msgSend_packageWithContentsOfURL_type_options_error_(MEMORY[0x1E6979400], v15, v14, *MEMORY[0x1E6979EF8], 0, 0);
      self->_rootLayer = objc_msgSend_rootLayer(v17, v18, v19);
    }

    objc_msgSend_updateActiveState(self, v15, v16);
  }

  return self->_rootLayer;
}

- (void)copyTo:(id)to withContext:(id)context
{
  v5.receiver = self;
  v5.super_class = VFXLayerAsset;
  [(VFXFileAsset *)&v5 copyTo:to withContext:context];
  *(to + 56) = 0;
}

- (void)setActiveStateName:(id)name
{
  if (self->_activeStateName != name)
  {
    nameCopy = name;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      nameCopy = 0;
    }

    self->_activeStateName = nameCopy;

    objc_msgSend_updateActiveState(self, v5, v6);
  }
}

- (VFXLayerAsset)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = VFXLayerAsset;
  v4 = [(VFXFileAsset *)&v10 initWithCoder:?];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"activeStateName");
    objc_msgSend_setActiveStateName_(v4, v8, v7);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  if (objc_msgSend_activeStateName(self, a2, coder))
  {
    active = objc_msgSend_activeStateName(self, v5, v6);
    objc_msgSend_encodeObject_forKey_(coder, v8, active, @"activeStateName");
  }

  v9.receiver = self;
  v9.super_class = VFXLayerAsset;
  [(VFXFileAsset *)&v9 encodeWithCoder:coder];
}

@end