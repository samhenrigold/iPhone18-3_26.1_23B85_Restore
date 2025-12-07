@interface IMTranscriptBubbleSizeCache
- (CGSize)sizeForMaximumWidth:(double)width;
- (IMTranscriptBubbleSizeCache)init;
- (id)_cacheEntryForMaximumWidth:(double)width getEffectiveIndex:(unint64_t *)index;
- (void)_insertCacheEntry:(id)entry;
- (void)setSize:(CGSize)size forMaximumWidth:(double)width;
@end

@implementation IMTranscriptBubbleSizeCache

- (IMTranscriptBubbleSizeCache)init
{
  v10.receiver = self;
  v10.super_class = IMTranscriptBubbleSizeCache;
  v5 = [(IMTranscriptBubbleSizeCache *)&v10 init];
  if (v5)
  {
    v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v2, v3, v6, v4);
    sizeCache = v5->_sizeCache;
    v5->_sizeCache = v7;
  }

  return v5;
}

- (CGSize)sizeForMaximumWidth:(double)width
{
  v16 = 0;
  v4 = objc_msgSend__cacheEntryForMaximumWidth_getEffectiveIndex_(self, a2, &v16, *&width, v3);
  v9 = v4;
  if (v4)
  {
    objc_msgSend_size(v4, v5, v6, v8, v7);
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v11 = *MEMORY[0x277CBF3A8];
    v13 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)setSize:(CGSize)size forMaximumWidth:(double)width
{
  height = size.height;
  width = size.width;
  v8 = [_IMTranscriptBubbleSizeCacheEntry alloc];
  v9.n128_f64[0] = width;
  v16 = objc_msgSend_initWithSize_maximumWidth_(v8, v10, v11, v9, v12, height, width);
  objc_msgSend__insertCacheEntry_(self, v13, v16, v15, v14);
}

- (void)_insertCacheEntry:(id)entry
{
  entryCopy = entry;
  if (objc_msgSend_count(self->_sizeCache, v5, v6, v8, v7))
  {
    v20 = 0;
    objc_msgSend_minimumWidth(entryCopy, v9, v10, v12, v11);
    v17 = objc_msgSend__cacheEntryForMaximumWidth_getEffectiveIndex_(self, v13, &v20, v15, v14);
    sizeCache = self->_sizeCache;
    if (v17)
    {
      objc_msgSend_replaceObjectAtIndex_withObject_(sizeCache, v16, v20, v18, entryCopy);
    }

    else
    {
      objc_msgSend_insertObject_atIndex_(sizeCache, v16, entryCopy, v18, v20);
    }
  }

  else
  {
    objc_msgSend_addObject_(self->_sizeCache, v9, entryCopy, v12, v11);
  }
}

- (id)_cacheEntryForMaximumWidth:(double)width getEffectiveIndex:(unint64_t *)index
{
  v8 = objc_msgSend_count(self->_sizeCache, a2, index, *&width, v4);
  if (v8)
  {
    v12 = v8;
    v13 = 0;
    while (1)
    {
      v14 = objc_msgSend_objectAtIndex_(self->_sizeCache, v9, (v12 + v13) >> 1, v11, v10);
      objc_msgSend_minimumWidth(v14, v15, v16, v18, v17);
      if (v22.n128_f64[0] <= width)
      {
        objc_msgSend_maximumWidth(v14, v19, v20, v22, v21);
        if (v23 >= width)
        {
          v13 = (v12 + v13) >> 1;
          goto LABEL_12;
        }

        v13 = ((v12 + v13) >> 1) + 1;
      }

      else
      {
        v12 = (v12 + v13) >> 1;
      }

      if (v13 >= v12)
      {
        goto LABEL_10;
      }
    }
  }

  v13 = 0;
LABEL_10:
  v14 = 0;
LABEL_12:
  *index = v13;

  return v14;
}

@end