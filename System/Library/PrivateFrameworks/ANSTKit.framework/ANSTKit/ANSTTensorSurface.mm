@interface ANSTTensorSurface
+ (ANSTTensorSurface)new;
- (ANSTTensorSurface)init;
- (ANSTTensorSurface)initWithDescriptor:(id)descriptor ioSurface:(__IOSurface *)surface error:(id *)p_isa;
- (BOOL)_performDataAccessWithIOSurfaceLockOptions:(unsigned int)options usingBlock:(id)block error:(id *)error;
- (void)dealloc;
@end

@implementation ANSTTensorSurface

- (ANSTTensorSurface)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (ANSTTensorSurface)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTTensorSurface)initWithDescriptor:(id)descriptor ioSurface:(__IOSurface *)surface error:(id *)p_isa
{
  v27[1] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  AllocSize = IOSurfaceGetAllocSize(surface);
  if (AllocSize >= objc_msgSend_sizeInBytes(descriptorCopy, v10, v11))
  {
    v25.receiver = self;
    v25.super_class = ANSTTensorSurface;
    v21 = [(ANSTTensorSurface *)&v25 init];
    if (v21)
    {
      v22 = objc_msgSend_copy(descriptorCopy, v19, v20);
      tensorDescriptor = v21->_tensorDescriptor;
      v21->_tensorDescriptor = v22;

      v21->_surfaceRef = surface;
      CFRetain(surface);
    }

    self = v21;
    p_isa = &self->super.isa;
  }

  else if (p_isa)
  {
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"Given IOSurface's alloc size smaller than the given tensor descriptor's required size in bytes.");
    v14 = _ANSTLoggingGetOSLogForCategoryANSTKit(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22E65C9B0();
    }

    v15 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA068];
    v27[0] = v13;
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v27, &v26, 1);
    *p_isa = objc_msgSend_errorWithDomain_code_userInfo_(v15, v18, @"ANSTErrorDomain", 2, v17);

    p_isa = 0;
  }

  return p_isa;
}

- (void)dealloc
{
  surfaceRef = self->_surfaceRef;
  if (surfaceRef)
  {
    CFRelease(surfaceRef);
  }

  v4.receiver = self;
  v4.super_class = ANSTTensorSurface;
  [(ANSTTensorSurface *)&v4 dealloc];
}

- (BOOL)_performDataAccessWithIOSurfaceLockOptions:(unsigned int)options usingBlock:(id)block error:(id *)error
{
  v6 = *&options;
  v27[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v9 = IOSurfaceLock(self->_surfaceRef, v6, 0);
  if (v9)
  {
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"IOSurfaceLock (with lock options = %ud) failed with return code %d", v6, v9);
    v12 = _ANSTLoggingGetOSLogForCategoryANSTKit(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_22E65CA24();
    }

    if (!error)
    {
      goto LABEL_12;
    }

    v14 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA068];
    v27[0] = v11;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v27, &v26, 1);
    goto LABEL_11;
  }

  BaseAddress = IOSurfaceGetBaseAddress(self->_surfaceRef);
  blockCopy[2](blockCopy, BaseAddress);
  v16 = IOSurfaceUnlock(self->_surfaceRef, v6, 0);
  if (!v16)
  {
    v22 = 1;
    goto LABEL_13;
  }

  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"IOSurfaceUnlock (with lock options = %ud) failed with return code %d", v6, v16);
  v18 = _ANSTLoggingGetOSLogForCategoryANSTKit(v11);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_22E65CA24();
  }

  if (error)
  {
    v14 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA068];
    v25 = v11;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, &v25, &v24, 1);
    v20 = LABEL_11:;
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v14, v21, @"ANSTErrorDomain", 19, v20);
  }

LABEL_12:

  v22 = 0;
LABEL_13:

  return v22;
}

@end