@interface TSPDataAttributes
+ (id)_classRegistry;
+ (id)newDataAttributesWithMessage:(const void *)message;
+ (void)registerDataAttributesClass:(Class)class forExtensionNumber:(int)number;
- (TSPDataAttributes)initWithMessage:(const void *)message;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSPDataAttributes

+ (id)_classRegistry
{
  if (qword_280A529E0 != -1)
  {
    sub_276BD4CE8();
  }

  v3 = qword_280A529D8;

  return v3;
}

+ (void)registerDataAttributesClass:(Class)class forExtensionNumber:(int)number
{
  v4 = *&number;
  v7 = objc_opt_class();
  if ((objc_msgSend_isSubclassOfClass_(class, v8, v7) & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "+[TSPDataAttributes registerDataAttributesClass:forExtensionNumber:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataAttributes.mm");
    v14 = NSStringFromClass(class);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v19, v13, 26, 0, "Invalid TSPDataAttributes subclass: %{public}@", v14);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v20 = objc_msgSend__classRegistry(self, v9, v10);
  objc_msgSend_registerClass_forExtensionNumber_(v20, v18, class, v4);
}

+ (id)newDataAttributesWithMessage:(const void *)message
{
  v4 = objc_msgSend__classRegistry(self, a2, message);
  v6 = objc_msgSend_classForMessage_(v4, v5, message);

  v7 = [v6 alloc];

  return objc_msgSend_initWithMessage_(v7, v8, message);
}

- (TSPDataAttributes)initWithMessage:(const void *)message
{
  v4.receiver = self;
  v4.super_class = TSPDataAttributes;
  return [(TSPDataAttributes *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();

  return objc_opt_new();
}

@end