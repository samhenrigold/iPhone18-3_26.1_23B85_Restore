@interface VFXKeyedArchiver
+ (id)archivedDataWithRootObject:(id)object options:(id)options;
- (void)dealloc;
- (void)encodeValueOfObjCType:(const char *)type at:(const void *)at;
@end

@implementation VFXKeyedArchiver

+ (id)archivedDataWithRootObject:(id)object options:(id)options
{
  v7 = objc_allocWithZone(MEMORY[0x1E695DF88]);
  v9 = objc_msgSend_initWithLength_(v7, v8, 0);
  v10 = objc_opt_new();
  v11 = objc_allocWithZone(self);
  v13 = objc_msgSend_initForWritingWithMutableData_(v11, v12, v9);
  objc_msgSend_setOptions_(v13, v14, options);
  objc_msgSend_encodeObject_forKey_(v13, v15, object, *MEMORY[0x1E696A508]);
  objc_msgSend_finishEncoding(v13, v16, v17);
  objc_msgSend_drain(v10, v18, v19);
  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXKeyedArchiver;
  [(VFXKeyedArchiver *)&v3 dealloc];
}

- (void)encodeValueOfObjCType:(const char *)type at:(const void *)at
{
  if (!strcmp(type, "{CATransform3D=dddddddddddddddd}"))
  {
    memset(v10, 0, sizeof(v10));
    *&v7 = *&sub_1AF3BAF14(v10, at);
    objc_msgSend_encodeBytes_length_(self, v8, v10, 64, v7);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = VFXKeyedArchiver;
    [(VFXKeyedArchiver *)&v9 encodeValueOfObjCType:type at:at];
  }
}

@end