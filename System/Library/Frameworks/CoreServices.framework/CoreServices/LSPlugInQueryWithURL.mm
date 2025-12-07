@interface LSPlugInQueryWithURL
- (BOOL)isEqual:(id)equal;
- (LSPlugInQueryWithURL)initWithCoder:(id)coder;
- (id)_initWithURL:(id)l;
- (unint64_t)hash;
- (void)_enumerateWithXPCConnection:(id)connection block:(id)block;
@end

@implementation LSPlugInQueryWithURL

- (id)_initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = LSPlugInQueryWithURL;
  _init = [(LSPlugInQuery *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 2, l);
  }

  return v7;
}

- (void)_enumerateWithXPCConnection:(id)connection block:(id)block
{
  connectionCopy = connection;
  blockCopy = block;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3812000000;
  v17 = __Block_byref_object_copy__41;
  v18 = __Block_byref_object_dispose__41;
  v19 = 256;
  v20 = 0;
  v13 = 0;
  inited = _LSContextInitReturningError(&v20, &v13);
  v9 = v13;
  if (inited)
  {
    v10 = CFURLCopyFileSystemPath(self->_bundleURL, kCFURLPOSIXPathStyle);
    if (v10)
    {
      [(_LSDatabase *)v15[6] store];
      [(_LSDatabase *)v15[6] schema];
      v11 = v10;
      v12 = blockCopy;
      _CSStoreEnumerateUnits();
    }

    _LSContextDestroy(v15 + 6);
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0, v9);
  }

  _Block_object_dispose(&v14, 8);
}

void __58__LSPlugInQueryWithURL__enumerateWithXPCConnection_block___block_invoke(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, _BYTE *a5)
{
  v6 = a3[1];
  if (v6)
  {
    v10 = _LSContainerGet(*(*(*(a1 + 48) + 8) + 48), v6);
    if (v10)
    {
      v16 = 0;
      v11 = !_LSContainerCheckState(*(*(*(a1 + 48) + 8) + 48), a3[1], v10, &v16, 0) && v16 == 1;
      if (v11 && _LSAliasMatchesPath_NoIO(*(*(*(a1 + 48) + 8) + 48), *a3, *(a1 + 32), 0))
      {
        v12 = [LSPlugInKitProxy plugInKitProxyForPlugin:a2 withContext:*(*(a1 + 48) + 8) + 48];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
          v15 = 0;
        }

        else
        {
          v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "[LSPlugInQueryWithURL _enumerateWithXPCConnection:block:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSPlugInQueryWithURL.m", 67);
        }

        (*(*(a1 + 40) + 16))();
        *a5 = 1;
      }
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = LSPlugInQueryWithURL;
  if ([(LSPlugInQuery *)&v12 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bundleURL = self->_bundleURL;
    v6 = equalCopy;
    path = [(NSURL *)bundleURL path];
    _bundleURL = [v6 _bundleURL];

    path2 = [_bundleURL path];
    v10 = [path isEqualToString:path2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  path = [(NSURL *)self->_bundleURL path];
  v4 = [path hash];
  v7.receiver = self;
  v7.super_class = LSPlugInQueryWithURL;
  v5 = [(LSPlugInQuery *)&v7 hash];

  return v5 ^ v4;
}

- (LSPlugInQueryWithURL)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];

  v6 = [(LSPlugInQueryWithURL *)self _initWithURL:v5];
  return v6;
}

@end