@interface MDLTextureFilter
- (MDLTextureFilter)init;
@end

@implementation MDLTextureFilter

- (MDLTextureFilter)init
{
  v35.receiver = self;
  v35.super_class = MDLTextureFilter;
  v2 = [(MDLTextureFilter *)&v35 init];
  v13 = v2;
  if (v2)
  {
    objc_msgSend_setMagFilter_(v2, v3, 1, v4, v9, v10, v11, v12, v5, v6, v7, v8);
    objc_msgSend_setMinFilter_(v13, v14, 1, v15, v20, v21, v22, v23, v16, v17, v18, v19);
    objc_msgSend_setMipFilter_(v13, v24, 1, v25, v30, v31, v32, v33, v26, v27, v28, v29);
  }

  return v13;
}

@end