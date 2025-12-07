@interface TSTFontInfoCache
- (TSTFontInfoCache)initWithName:(id)name;
- (id).cxx_construct;
- (id)fontInfoForTextStyle:(id)style;
- (id)fontInfoForTextStyle:(id)style withString:(id)string;
- (id)resolvedTextStyleWithPropertyMap:(id)map;
- (void)dealloc;
- (void)p_didEnterBackground:(id)background;
- (void)p_didReceiveMemoryWarning:(id)warning;
@end

@implementation TSTFontInfoCache

- (TSTFontInfoCache)initWithName:(id)name
{
  v21.receiver = self;
  v21.super_class = TSTFontInfoCache;
  v3 = [(TSTFontInfoCache *)&v21 init];
  v4 = v3;
  if (v3)
  {
    pthread_rwlock_init(&v3->_rwlock, 0);
    v4->_resolvedTextStyleLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    v8 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7);
    strongReferences = v4->_strongReferences;
    v4->_strongReferences = v8;

    v13 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v10, v11, v12);
    propertyMapToTextStyleMap = v4->_propertyMapToTextStyleMap;
    v4->_propertyMapToTextStyleMap = v13;

    v15 = MEMORY[0x277D811B0];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_221406570;
    v19[3] = &unk_2784649F8;
    v20 = v4;
    objc_msgSend_performWithApplication_(v15, v16, v19, v17);
  }

  return v4;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_rwlock);
  v3.receiver = self;
  v3.super_class = TSTFontInfoCache;
  [(TSTFontInfoCache *)&v3 dealloc];
}

- (id)fontInfoForTextStyle:(id)style
{
  styleCopy = style;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = sub_2210BE30C(&self->_cache.__table_.__bucket_list_.__ptr_, &styleCopy);
  if (v5)
  {
    v6 = v5[3];
    pthread_rwlock_unlock(&self->_rwlock);
    v7 = v6;
  }

  else
  {
    pthread_rwlock_unlock(&self->_rwlock);
    if (objc_msgSend_canQuicklyMeasureParagraphStyle_(MEMORY[0x277D80F78], v8, style, v9))
    {
      pthread_rwlock_wrlock(&self->_rwlock);
      v10 = sub_2210BE30C(&self->_cache.__table_.__bucket_list_.__ptr_, &styleCopy);
      if (v10)
      {
        v7 = v10[3];
      }

      else
      {
        v13 = objc_msgSend_textMeasurerBundleForParagraphStyle_(MEMORY[0x277D80F78], v11, style, v12);
        v14 = [TSTFontInfoCacheEntry alloc];
        v7 = objc_msgSend_initWithTextMeasurerBundle_(v14, v15, v13, v16);
        v22 = &styleCopy;
        v17 = sub_221406DB0(&self->_cache.__table_.__bucket_list_.__ptr_, &styleCopy, &unk_2217E1BCC, &v22);
        objc_storeStrong(v17 + 3, v7);
        objc_msgSend_addObject_(self->_strongReferences, v18, style, v19);
      }

      pthread_rwlock_unlock(&self->_rwlock);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)fontInfoForTextStyle:(id)style withString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v9 = objc_msgSend_fontInfoForTextStyle_(self, v6, style, v7);
    v13 = v9;
    if (v9)
    {
      v14 = MEMORY[0x277D80F78];
      v15 = objc_msgSend_textMeasurerBundle(v9, v10, v11, v12);
      LODWORD(v14) = objc_msgSend_canQuicklyMeasureString_textMeasurerBundle_(v14, v16, stringCopy, v15);

      if (v14)
      {
        v13 = v13;
        v17 = v13;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = 0;
LABEL_7:

  return v17;
}

- (id)resolvedTextStyleWithPropertyMap:(id)map
{
  mapCopy = map;
  os_unfair_lock_lock(&self->_resolvedTextStyleLock);
  isVariation = objc_msgSend_objectForKey_(self->_propertyMapToTextStyleMap, v5, mapCopy, v6);
  if (!isVariation)
  {
    v8 = objc_alloc(MEMORY[0x277D80EC8]);
    isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v8, v9, 0, 0, mapCopy, 0);
    objc_msgSend_setObject_forKey_(self->_propertyMapToTextStyleMap, v10, isVariation, mapCopy);
  }

  os_unfair_lock_unlock(&self->_resolvedTextStyleLock);

  return isVariation;
}

- (void)p_didReceiveMemoryWarning:(id)warning
{
  pthread_rwlock_wrlock(&self->_rwlock);
  sub_2211A89A4(&self->_cache);
  pthread_rwlock_unlock(&self->_rwlock);
  os_unfair_lock_lock(&self->_resolvedTextStyleLock);
  objc_msgSend_removeAllObjects(self->_propertyMapToTextStyleMap, v4, v5, v6);

  os_unfair_lock_unlock(&self->_resolvedTextStyleLock);
}

- (void)p_didEnterBackground:(id)background
{
  pthread_rwlock_wrlock(&self->_rwlock);
  sub_2211A89A4(&self->_cache);
  pthread_rwlock_unlock(&self->_rwlock);
  os_unfair_lock_lock(&self->_resolvedTextStyleLock);
  objc_msgSend_removeAllObjects(self->_propertyMapToTextStyleMap, v4, v5, v6);

  os_unfair_lock_unlock(&self->_resolvedTextStyleLock);
}

- (id).cxx_construct
{
  *(self + 232) = 0u;
  *(self + 216) = 0u;
  *(self + 62) = 1065353216;
  return self;
}

@end