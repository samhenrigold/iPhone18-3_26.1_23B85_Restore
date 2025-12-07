@interface CLCppEncodableDataContainer
+ (id)containerWithObject:(void *)object cppDataEncoder:(id)encoder destructor:(id)destructor binaryVersion:(unint64_t)version typeSize:(unint64_t)size;
- (CLCppEncodableDataContainer)initWithCoder:(id)coder;
- (CLCppEncodableDataContainer)initWithObject:(void *)object cppDataEncoder:(id)encoder destructor:(id)destructor binaryVersion:(unint64_t)version typeSize:(unint64_t)size;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLCppEncodableDataContainer

+ (id)containerWithObject:(void *)object cppDataEncoder:(id)encoder destructor:(id)destructor binaryVersion:(unint64_t)version typeSize:(unint64_t)size
{
  destructorCopy = destructor;
  encoderCopy = encoder;
  v13 = [CLCppEncodableDataContainer alloc];
  v15 = objc_msgSend_initWithObject_cppDataEncoder_destructor_binaryVersion_typeSize_(v13, v14, object, encoderCopy, destructorCopy, version, size);

  return v15;
}

- (CLCppEncodableDataContainer)initWithObject:(void *)object cppDataEncoder:(id)encoder destructor:(id)destructor binaryVersion:(unint64_t)version typeSize:(unint64_t)size
{
  encoderCopy = encoder;
  v17.receiver = self;
  v17.super_class = CLCppEncodableDataContainer;
  v13 = [(CLCppContainer *)&v17 initWithObject:object destructor:destructor binaryVersion:version typeSize:size];
  v15 = v13;
  if (v13)
  {
    objc_msgSend_setEncoder_(v13, v14, encoderCopy);
  }

  return v15;
}

- (void)dealloc
{
  objc_msgSend_setSerialized_(self, a2, 0);
  objc_msgSend_setCompatibilityInfo_(self, v3, 0);
  objc_msgSend_setEncoder_(self, v4, 0);
  v5.receiver = self;
  v5.super_class = CLCppEncodableDataContainer;
  [(CLCppContainer *)&v5 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_encoder(self, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_encoder(self, v7, v8);
    (v9)[2](v9, coderCopy);
  }
}

- (CLCppEncodableDataContainer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CLCppEncodableDataContainer;
  v6 = [(CLCppContainer *)&v13 initWithCoder:coderCopy];
  if (v6)
  {
    v7 = objc_msgSend_decodeObjectForKey_(coderCopy, v5, @"serialized");
    objc_msgSend_setSerialized_(v6, v8, v7);

    v10 = objc_msgSend_decodeObjectForKey_(coderCopy, v9, @"compatibilityInfo");
    objc_msgSend_setCompatibilityInfo_(v6, v11, v10);
  }

  return v6;
}

@end