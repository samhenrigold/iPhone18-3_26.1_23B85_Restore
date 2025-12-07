@interface VFXMetalLibraryProvider
- (id)iniWithBlock:(id)block;
- (id)iniWithLibrary:(id)library;
- (id)iniWithLibraryURL:(id)l;
- (id)libraryForDevice:(id)device;
- (unint64_t)_libraryHash;
- (void)dealloc;
@end

@implementation VFXMetalLibraryProvider

- (void)dealloc
{
  _Block_release(self->_block);
  v3.receiver = self;
  v3.super_class = VFXMetalLibraryProvider;
  [(VFXMetalLibraryProvider *)&v3 dealloc];
}

- (id)iniWithLibrary:(id)library
{
  v6.receiver = self;
  v6.super_class = VFXMetalLibraryProvider;
  v4 = [(VFXMetalLibraryProvider *)&v6 init];
  if (v4)
  {
    v4->_library = library;
  }

  return v4;
}

- (id)iniWithLibraryURL:(id)l
{
  v6.receiver = self;
  v6.super_class = VFXMetalLibraryProvider;
  v4 = [(VFXMetalLibraryProvider *)&v6 init];
  if (v4)
  {
    v4->_libraryURL = l;
  }

  return v4;
}

- (id)iniWithBlock:(id)block
{
  v6.receiver = self;
  v6.super_class = VFXMetalLibraryProvider;
  v4 = [(VFXMetalLibraryProvider *)&v6 init];
  if (v4)
  {
    v4->_block = _Block_copy(block);
  }

  return v4;
}

- (id)libraryForDevice:(id)device
{
  v5 = objc_msgSend_device(self->_library, a2, device);
  v8 = objc_msgSend_registryID(v5, v6, v7);
  if (v8 == objc_msgSend_registryID(device, v9, v10))
  {
    return self->_library;
  }

  result = self->_block;
  if (!result || (result = (*(result + 2))(result, device)) == 0)
  {
    libraryURL = self->_libraryURL;
    if (libraryURL)
    {
      v18 = 0;
      v14 = objc_msgSend_newLibraryWithURL_error_(device, v11, libraryURL, &v18);
      if (v14)
      {
        return v14;
      }

      v16 = sub_1AF0D5194(0, v15);
      result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_1AFDF860C();
      }
    }

    v17 = sub_1AF0D5194(result, v11);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF8684();
    }

    return 0;
  }

  return result;
}

- (unint64_t)_libraryHash
{
  library = self->_library;
  if (library || (library = self->_block) != 0 || (library = self->_libraryURL) != 0)
  {

    return CFHash(library);
  }

  else
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF86F8();
    }

    return 0;
  }
}

@end