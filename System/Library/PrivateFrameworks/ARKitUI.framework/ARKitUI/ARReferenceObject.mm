@interface ARReferenceObject
@end

@implementation ARReferenceObject

void __47__ARReferenceObject_ARKitAdditions__initialize__block_invoke(uint64_t a1)
{
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_writeToArchiveWithPreviewImage_error_);
  v3 = class_getInstanceMethod(v1, sel__writeToArchiveWithPreviewImage_error_);

  method_exchangeImplementations(v3, InstanceMethod);
}

@end