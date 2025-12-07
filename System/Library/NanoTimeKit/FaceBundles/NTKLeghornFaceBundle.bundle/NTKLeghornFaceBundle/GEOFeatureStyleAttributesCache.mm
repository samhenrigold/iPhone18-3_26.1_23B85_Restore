@interface GEOFeatureStyleAttributesCache
+ (GEOFeatureStyleAttributesCache)sharedInstance;
- (GEOFeatureStyleAttributesCache)init;
- (id)fillColorForStyleAttributes:(id)attributes key:(id)key;
- (id)glyphColorForStyleAttributes:(id)attributes key:(id)key;
- (id)imageForStyleAttributes:(id)attributes key:(id)key;
- (void)imageAndColorsForStyleAttributes:(id)attributes image:(id *)image glyphColor:(id *)color fillColor:(id *)fillColor;
- (void)imageAndColorsForStyleAttributes:(id)attributes key:(id)key image:(id *)image glyphColor:(id *)color fillColor:(id *)fillColor;
@end

@implementation GEOFeatureStyleAttributesCache

- (GEOFeatureStyleAttributesCache)init
{
  v16.receiver = self;
  v16.super_class = GEOFeatureStyleAttributesCache;
  v2 = [(GEOFeatureStyleAttributesCache *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    imageCache = v2->_imageCache;
    v2->_imageCache = v3;

    v5 = objc_opt_new();
    glyphColorCache = v2->_glyphColorCache;
    v2->_glyphColorCache = v5;

    v7 = objc_opt_new();
    fillColorCache = v2->_fillColorCache;
    v2->_fillColorCache = v7;

    v11 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v9, v10);
    objc_msgSend_scale(v11, v12, v13);
    v2->_screenScale = v14;
  }

  return v2;
}

+ (GEOFeatureStyleAttributesCache)sharedInstance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&qword_27E1DF5A8);
  if (!WeakRetained)
  {
    WeakRetained = objc_opt_new();
    objc_storeWeak(&qword_27E1DF5A8, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

- (id)imageForStyleAttributes:(id)attributes key:(id)key
{
  attributesCopy = attributes;
  keyCopy = key;
  v9 = keyCopy;
  if (attributesCopy && keyCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v13 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_imageCache, v11, v9);
    if (!v13)
    {
      v13 = objc_msgSend_imageForStyle_size_forScale_format_transparent_(MEMORY[0x277CD4E08], v12, attributesCopy, 0, 1, 1, selfCopy->_screenScale);
      if (v13)
      {
        objc_msgSend_setObject_forKeyedSubscript_(selfCopy->_imageCache, v14, v13, v9);
      }
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v15 = NTKFoghornFaceBundleLogObject(keyCopy, v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE70EC();
    }

    v13 = 0;
  }

  return v13;
}

- (id)glyphColorForStyleAttributes:(id)attributes key:(id)key
{
  attributesCopy = attributes;
  keyCopy = key;
  v9 = keyCopy;
  if (attributesCopy && keyCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v13 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_glyphColorCache, v11, v9);
    if (!v13)
    {
      v14 = objc_msgSend_newGlyphColorForStyleAttributes_forScale_(MEMORY[0x277CD4E08], v12, attributesCopy, selfCopy->_screenScale);
      v13 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D75348], v15, v14);
      if (v13)
      {
        objc_msgSend_setObject_forKeyedSubscript_(selfCopy->_glyphColorCache, v16, v13, v9);
      }
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v17 = NTKFoghornFaceBundleLogObject(keyCopy, v8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE7160();
    }

    v13 = 0;
  }

  return v13;
}

- (id)fillColorForStyleAttributes:(id)attributes key:(id)key
{
  attributesCopy = attributes;
  keyCopy = key;
  v9 = keyCopy;
  if (attributesCopy && keyCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v13 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_fillColorCache, v11, v9);
    if (!v13)
    {
      v14 = objc_msgSend_newFillColorForStyleAttributes_forScale_(MEMORY[0x277CD4E08], v12, attributesCopy, selfCopy->_screenScale);
      v13 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D75348], v15, v14);
      if (v13)
      {
        objc_msgSend_setObject_forKeyedSubscript_(selfCopy->_fillColorCache, v16, v13, v9);
      }
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v17 = NTKFoghornFaceBundleLogObject(keyCopy, v8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE71D4();
    }

    v13 = 0;
  }

  return v13;
}

- (void)imageAndColorsForStyleAttributes:(id)attributes key:(id)key image:(id *)image glyphColor:(id *)color fillColor:(id *)fillColor
{
  attributesCopy = attributes;
  keyCopy = key;
  v15 = keyCopy;
  if (attributesCopy && keyCopy)
  {
    screenScale = self->_screenScale;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v20 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_imageCache, v18, v15);
    if (!v20)
    {
      v20 = objc_msgSend_imageForStyle_size_forScale_format_transparent_(MEMORY[0x277CD4E08], v19, attributesCopy, 0, 1, 1, screenScale);
      if (v20)
      {
        objc_msgSend_setObject_forKeyedSubscript_(selfCopy->_imageCache, v19, v20, v15);
      }
    }

    v22 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_fillColorCache, v19, v15);
    if (!v22)
    {
      v23 = objc_msgSend_newFillColorForStyleAttributes_forScale_(MEMORY[0x277CD4E08], v21, attributesCopy, screenScale);
      v22 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D75348], v24, v23);
      if (v22)
      {
        objc_msgSend_setObject_forKeyedSubscript_(selfCopy->_fillColorCache, v21, v22, v15);
      }
    }

    v26 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_glyphColorCache, v21, v15);
    if (!v26)
    {
      v27 = objc_msgSend_newGlyphColorForStyleAttributes_forScale_(MEMORY[0x277CD4E08], v25, attributesCopy, screenScale);
      v26 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D75348], v28, v27);
      if (v26)
      {
        objc_msgSend_setObject_forKeyedSubscript_(selfCopy->_glyphColorCache, v29, v26, v15);
      }
    }

    objc_sync_exit(selfCopy);

    if (image)
    {
      v30 = v20;
      *image = v20;
    }

    if (color)
    {
      v31 = v26;
      *color = v26;
    }

    if (fillColor)
    {
      v32 = v22;
      *fillColor = v22;
    }
  }

  else
  {
    v33 = NTKFoghornFaceBundleLogObject(keyCopy, v14);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE7248();
    }
  }
}

- (void)imageAndColorsForStyleAttributes:(id)attributes image:(id *)image glyphColor:(id *)color fillColor:(id *)fillColor
{
  attributesCopy = attributes;
  v12 = objc_msgSend_keyForStyleAttributes_(GEOFeatureStyleAttributesCache, v11, attributesCopy);
  v15 = v12;
  if (v12 && (v12 = objc_msgSend_length(v12, v13, v14)) != 0)
  {
    objc_msgSend_imageAndColorsForStyleAttributes_key_image_glyphColor_fillColor_(self, v13, attributesCopy, v15, image, color, fillColor);
  }

  else
  {
    v16 = NTKFoghornFaceBundleLogObject(v12, v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE72BC();
    }
  }
}

@end