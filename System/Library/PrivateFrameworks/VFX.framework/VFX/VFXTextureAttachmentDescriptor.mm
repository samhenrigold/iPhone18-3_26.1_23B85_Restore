@interface VFXTextureAttachmentDescriptor
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation VFXTextureAttachmentDescriptor

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v7 = objc_msgSend_width(self, v5, v6);
  if (v7 != objc_msgSend_width(equal, v8, v9))
  {
    return 0;
  }

  v12 = objc_msgSend_height(self, v10, v11);
  if (v12 != objc_msgSend_height(equal, v13, v14))
  {
    return 0;
  }

  v17 = objc_msgSend_pixelFormat(self, v15, v16);
  if (v17 != objc_msgSend_pixelFormat(equal, v18, v19))
  {
    return 0;
  }

  v22 = objc_msgSend_arrayLength(self, v20, v21);
  return v22 == objc_msgSend_arrayLength(equal, v23, v24);
}

- (unint64_t)hash
{
  v4 = MEMORY[0x1E696AD98];
  v5 = objc_msgSend_width(self, a2, v2);
  v7 = objc_msgSend_numberWithInteger_(v4, v6, v5);
  v10 = objc_msgSend_hash(v7, v8, v9);
  v11 = MEMORY[0x1E696AD98];
  v14 = objc_msgSend_height(self, v12, v13);
  v16 = objc_msgSend_numberWithInteger_(v11, v15, v14);
  v19 = objc_msgSend_hash(v16, v17, v18) ^ v10;
  v20 = MEMORY[0x1E696AD98];
  v23 = objc_msgSend_pixelFormat(self, v21, v22);
  v25 = objc_msgSend_numberWithUnsignedInteger_(v20, v24, v23);
  v28 = objc_msgSend_hash(v25, v26, v27);
  v29 = MEMORY[0x1E696AD98];
  v32 = objc_msgSend_arrayLength(self, v30, v31);
  v34 = objc_msgSend_numberWithInteger_(v29, v33, v32);
  return v19 ^ v28 ^ objc_msgSend_hash(v34, v35, v36);
}

@end