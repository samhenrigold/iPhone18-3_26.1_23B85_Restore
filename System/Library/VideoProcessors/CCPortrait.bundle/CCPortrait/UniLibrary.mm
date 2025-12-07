@interface UniLibrary
- (UniLibrary)initWithDevice:(id)device metalOnly:(BOOL)only;
@end

@implementation UniLibrary

- (UniLibrary)initWithDevice:(id)device metalOnly:(BOOL)only
{
  deviceCopy = device;
  v26.receiver = self;
  v26.super_class = UniLibrary;
  v7 = [(UniLibrary *)&v26 init];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = MEMORY[0x29EDB9F48];
  v9 = objc_opt_class();
  v11 = objc_msgSend_bundleForClass_(v8, v10, v9);
  if (!only)
  {
    v12 = objc_opt_new();
    objc_msgSend_setCoreImageLibrary_(v7, v13, v12);

    v16 = objc_msgSend_coreImageLibrary(v7, v14, v15);
    if (!v16)
    {
      sub_2956CEFA4();
    }
  }

  v17 = objc_alloc(MEMORY[0x29EDC0A40]);
  inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v17, v18, v11, 0);
  metalContext = v7->metalContext;
  v7->metalContext = inited;

  if (v7->metalContext)
  {

LABEL_7:
    v22 = v7;
    goto LABEL_11;
  }

  v23 = uni_logger_compile(v21);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_2956CEFD0(v11, v23, v24);
  }

  v22 = 0;
LABEL_11:

  return v22;
}

@end