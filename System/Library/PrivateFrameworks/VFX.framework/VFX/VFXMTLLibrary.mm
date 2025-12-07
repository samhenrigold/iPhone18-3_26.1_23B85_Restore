@interface VFXMTLLibrary
- (VFXMTLLibrary)initWithPath:(id)path manager:(id)manager;
- (void)_load;
- (void)dealloc;
@end

@implementation VFXMTLLibrary

- (VFXMTLLibrary)initWithPath:(id)path manager:(id)manager
{
  v20.receiver = self;
  v20.super_class = VFXMTLLibrary;
  v7 = [(VFXMTLLibrary *)&v20 init];
  if (v7)
  {
    if (path)
    {
      v8 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v6, path);
    }

    else
    {
      v8 = 0;
    }

    v7->_libraryURL = v8;
    objc_storeWeak(&v7->_manager, manager);
    v19 = 0;
    v11 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v9, v10);
    v13 = objc_msgSend_attributesOfItemAtPath_error_(v11, v12, path, &v19);
    v15 = objc_msgSend_objectForKey_(v13, v14, *MEMORY[0x1E696A350]);
    if (v19 || !v15)
    {
      v15 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], v16, v17);
    }

    v7->_lastModificationDate = v15;
    objc_msgSend__load(v7, v16, v17);
  }

  return v7;
}

- (void)dealloc
{
  objc_storeWeak(&self->_manager, 0);

  v3.receiver = self;
  v3.super_class = VFXMTLLibrary;
  [(VFXMTLLibrary *)&v3 dealloc];
}

- (void)_load
{
  p_libraryURL = &self->_libraryURL;
  libraryURL = self->_libraryURL;
  self->_library = 0;
  if (libraryURL)
  {
    v11 = 0;
    v6 = objc_msgSend_device(self->_manager, a2, v2);
    v8 = objc_msgSend_newLibraryWithURL_error_(v6, v7, self->_libraryURL, &v11);
    self->_library = v8;
    if (!v8)
    {
      v10 = sub_1AF0D5194(0, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE5B1C(p_libraryURL, &v11, v10);
      }
    }
  }
}

@end