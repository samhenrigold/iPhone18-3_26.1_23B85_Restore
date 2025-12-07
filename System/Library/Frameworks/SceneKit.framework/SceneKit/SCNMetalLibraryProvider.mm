@interface SCNMetalLibraryProvider
- (id)iniWithBlock:(id)block;
- (id)iniWithLibrary:(id)library;
- (id)iniWithLibraryURL:(id)l;
- (id)libraryForDevice:(id)device;
- (unint64_t)_libraryHash;
- (void)_libraryHash;
- (void)dealloc;
@end

@implementation SCNMetalLibraryProvider

- (void)dealloc
{
  _Block_release(self->_block);
  v3.receiver = self;
  v3.super_class = SCNMetalLibraryProvider;
  [(SCNMetalLibraryProvider *)&v3 dealloc];
}

- (id)iniWithLibrary:(id)library
{
  v6.receiver = self;
  v6.super_class = SCNMetalLibraryProvider;
  v4 = [(SCNMetalLibraryProvider *)&v6 init];
  if (v4)
  {
    v4->_library = library;
  }

  return v4;
}

- (id)iniWithLibraryURL:(id)l
{
  v6.receiver = self;
  v6.super_class = SCNMetalLibraryProvider;
  v4 = [(SCNMetalLibraryProvider *)&v6 init];
  if (v4)
  {
    v4->_libraryURL = l;
  }

  return v4;
}

- (id)iniWithBlock:(id)block
{
  v6.receiver = self;
  v6.super_class = SCNMetalLibraryProvider;
  v4 = [(SCNMetalLibraryProvider *)&v6 init];
  if (v4)
  {
    v4->_block = _Block_copy(block);
  }

  return v4;
}

- (id)libraryForDevice:(id)device
{
  if ([(MTLLibrary *)self->_library device]== device)
  {
    return self->_library;
  }

  result = self->_block;
  if (!result || (result = (*(result + 2))(result, device)) == 0)
  {
    libraryURL = self->_libraryURL;
    if (libraryURL)
    {
      v12 = 0;
      v8 = [device newLibraryWithURL:libraryURL error:&v12];
      if (v8)
      {
        return v8;
      }

      v10 = scn_default_log(0, v9);
      result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (result)
      {
        [SCNMetalLibraryProvider libraryForDevice:];
      }
    }

    v11 = scn_default_log(result, v5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SCNMetalLibraryProvider libraryForDevice:];
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
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNMetalLibraryProvider _libraryHash];
    }

    return 0;
  }
}

- (void)_libraryHash
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end