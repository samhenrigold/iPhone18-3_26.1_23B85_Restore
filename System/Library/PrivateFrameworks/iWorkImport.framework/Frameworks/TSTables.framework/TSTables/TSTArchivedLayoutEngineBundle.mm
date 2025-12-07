@interface TSTArchivedLayoutEngineBundle
+ (id)widthHeightCacheFromBundle:(id)bundle withNumberOfRows:(unsigned int)rows andNumberOfColumns:(unsigned int)columns;
- (TSTArchivedLayoutEngineBundle)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSTArchivedLayoutEngineBundle)initWithLayoutEngine:(id)engine;
@end

@implementation TSTArchivedLayoutEngineBundle

- (TSTArchivedLayoutEngineBundle)initWithLayoutEngine:(id)engine
{
  engineCopy = engine;
  v12.receiver = self;
  v12.super_class = TSTArchivedLayoutEngineBundle;
  v8 = [(TSTArchivedLayoutEngineBundle *)&v12 init];
  if (v8)
  {
    v9 = objc_msgSend_widthHeightCache(engineCopy, v5, v6, v7);
    widthHeightCache = v8->_widthHeightCache;
    v8->_widthHeightCache = v9;
  }

  return v8;
}

- (TSTArchivedLayoutEngineBundle)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v15.receiver = self;
  v15.super_class = TSTArchivedLayoutEngineBundle;
  v7 = [(TSTArchivedLayoutEngineBundle *)&v15 init];
  if (v7 && (*(archive + 16) & 1) != 0)
  {
    v8 = [TSTWidthHeightCache alloc];
    if (*(archive + 3))
    {
      v10 = objc_msgSend_initWithArchive_unarchiver_(v8, v9, *(archive + 3), unarchiverCopy);
    }

    else
    {
      v10 = objc_msgSend_initWithArchive_unarchiver_(v8, v9, &TST::_WidthHeightCache_default_instance_, unarchiverCopy);
    }

    v13 = v10;
    objc_msgSend_setWidthHeightCache_(v7, v11, v10, v12);
  }

  return v7;
}

+ (id)widthHeightCacheFromBundle:(id)bundle withNumberOfRows:(unsigned int)rows andNumberOfColumns:(unsigned int)columns
{
  v5 = *&columns;
  v6 = *&rows;
  bundleCopy = bundle;
  v14 = objc_msgSend_widthHeightCache(bundleCopy, v8, v9, v10);
  if (v14)
  {
    v15 = objc_msgSend_widthHeightCache(bundleCopy, v11, v12, v13);
    if (objc_msgSend_numberOfRows(v15, v16, v17, v18) == v6)
    {
      v22 = objc_msgSend_widthHeightCache(bundleCopy, v19, v20, v21);
      v26 = objc_msgSend_numberOfColumns(v22, v23, v24, v25);

      if (v26 == v5)
      {
        v30 = objc_msgSend_widthHeightCache(bundleCopy, v27, v28, v29);
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v31 = [TSTWidthHeightCache alloc];
  v30 = objc_msgSend_initWithNumRows_andNumColumns_(v31, v32, v6, v5);
LABEL_7:
  v33 = v30;

  return v33;
}

@end