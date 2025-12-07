@interface TSTTableDataListCache
+ (id)cacheWithDataStore:(id)store;
- (TSTTableDataListCache)initWithDataStore:(id)store;
- (TSULocale)locale;
- (id)cellStyleHandleForKey:(unsigned int)key;
- (id)formatForKey:(unsigned int)key;
- (id)stringForKey:(unsigned int)key shouldWrap:(BOOL *)wrap;
- (id)textStyleHandleForKey:(unsigned int)key;
@end

@implementation TSTTableDataListCache

+ (id)cacheWithDataStore:(id)store
{
  storeCopy = store;
  v5 = [self alloc];
  v8 = objc_msgSend_initWithDataStore_(v5, v6, storeCopy, v7);

  return v8;
}

- (TSTTableDataListCache)initWithDataStore:(id)store
{
  storeCopy = store;
  v26.receiver = self;
  v26.super_class = TSTTableDataListCache;
  v6 = [(TSTTableDataListCache *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataStore, store);
    v11 = objc_msgSend_cache(TSTTableDataListItemCache, v8, v9, v10);
    formats = v7->_formats;
    v7->_formats = v11;

    v16 = objc_msgSend_cache(TSTTableDataListItemCache, v13, v14, v15);
    cellStyleHandles = v7->_cellStyleHandles;
    v7->_cellStyleHandles = v16;

    v21 = objc_msgSend_cache(TSTTableDataListItemCache, v18, v19, v20);
    textStyleHandles = v7->_textStyleHandles;
    v7->_textStyleHandles = v21;

    v23 = objc_alloc_init(MEMORY[0x277D81210]);
    strings = v7->_strings;
    v7->_strings = v23;
  }

  return v7;
}

- (TSULocale)locale
{
  locale = self->_locale;
  if (!locale)
  {
    v6 = objc_msgSend_documentRoot(self->_dataStore, a2, v2, v3);
    v10 = objc_msgSend_documentLocale(v6, v7, v8, v9);
    v11 = self->_locale;
    self->_locale = v10;

    locale = self->_locale;
  }

  return locale;
}

- (id)formatForKey:(unsigned int)key
{
  v4 = *&key;
  v8 = objc_msgSend_objectForKey_(self->_formats, a2, *&key, v3);
  if (!v8)
  {
    v8 = objc_msgSend_i_formatForDataListKey_(self->_dataStore, v6, v4, v7);
    if (v8)
    {
      objc_msgSend_setObject_forKey_(self->_formats, v9, v8, v4);
    }
  }

  return v8;
}

- (id)cellStyleHandleForKey:(unsigned int)key
{
  v4 = *&key;
  v8 = objc_msgSend_objectForKey_(self->_cellStyleHandles, a2, *&key, v3);
  if (!v8)
  {
    v8 = objc_msgSend_i_cellStyleHandleForDataListKey_(self->_dataStore, v6, v4, v7);
    if (v8)
    {
      objc_msgSend_setObject_forKey_(self->_cellStyleHandles, v9, v8, v4);
    }
  }

  return v8;
}

- (id)textStyleHandleForKey:(unsigned int)key
{
  v4 = *&key;
  v8 = objc_msgSend_objectForKey_(self->_textStyleHandles, a2, *&key, v3);
  if (!v8)
  {
    v8 = objc_msgSend_i_textStyleHandleForDataListKey_(self->_dataStore, v6, v4, v7);
    if (v8)
    {
      objc_msgSend_setObject_forKey_(self->_textStyleHandles, v9, v8, v4);
    }
  }

  return v8;
}

- (id)stringForKey:(unsigned int)key shouldWrap:(BOOL *)wrap
{
  v5 = *&key;
  v35 = 0;
  keyCopy = key;
  v8 = objc_msgSend_objectForKey_(self->_strings, a2, key, wrap);
  v12 = v8;
  if (v8)
  {
    v13 = objc_msgSend_first(v8, v9, v10, v11);
    v17 = objc_msgSend_second(v12, v14, v15, v16);
    HIBYTE(v35) = objc_msgSend_BOOLValue(v17, v18, v19, v20);
  }

  else
  {
    v21 = objc_msgSend_i_stringForDataListKey_outShouldWrap_outIsShared_(self->_dataStore, v9, v5, &v35 + 1, &v35);
    v13 = v21;
    v25 = v35 != 1 || v21 == 0;
    if (!v25 && (objc_msgSend_tsu_isTaggedPointer(v21, v22, v23, v24) & 1) == 0)
    {
      v30 = objc_msgSend_mutableCopy(v13, v26, v27, v28);
      strings = self->_strings;
      if (HIBYTE(v35))
      {
        objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v29, v30, MEMORY[0x277CBEC38]);
      }

      else
      {
        objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v29, v30, MEMORY[0x277CBEC28]);
      }
      v32 = ;
      objc_msgSend_setObject_forKey_(strings, v33, v32, keyCopy);

      v13 = v30;
    }
  }

  if (wrap)
  {
    *wrap = HIBYTE(v35);
  }

  return v13;
}

@end