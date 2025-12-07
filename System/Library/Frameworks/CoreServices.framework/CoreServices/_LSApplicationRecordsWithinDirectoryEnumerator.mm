@interface _LSApplicationRecordsWithinDirectoryEnumerator
- (BOOL)_getObject:(id *)object atIndex:(unint64_t)index context:(LSContext *)context;
- (BOOL)_preflightPathOfBundleWithContext:(LSContext *)context bundleUnit:(unsigned int)unit bundleData:(const LSBundleData *)data;
- (BOOL)_prepareWithContext:(LSContext *)context error:(id *)error;
- (_LSApplicationRecordsWithinDirectoryEnumerator)initWithContext:(LSContext *)context directoryURL:(id)l volumeURL:(id)rL enumerationOptions:(unint64_t)options filteringOptions:(unint64_t)filteringOptions;
- (expected<LSApplicationRecord)_createPostflightedApplicationRecordWithContext:(LSContext *)context bundleUnit:(unsigned int)unit bundleData:(const LSBundleData *)data;
- (id).cxx_construct;
@end

@implementation _LSApplicationRecordsWithinDirectoryEnumerator

- (_LSApplicationRecordsWithinDirectoryEnumerator)initWithContext:(LSContext *)context directoryURL:(id)l volumeURL:(id)rL enumerationOptions:(unint64_t)options filteringOptions:(unint64_t)filteringOptions
{
  v16.receiver = self;
  v16.super_class = _LSApplicationRecordsWithinDirectoryEnumerator;
  v11 = [(_LSDBEnumerator *)&v16 _initWithContext:context];
  v12 = v11;
  if (v11)
  {
    rLCopy = rL;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned int,NSURL * {__strong},NSError * {__strong}>>::__assign_alt[abi:nn200100]<1ul,NSURL * {__strong},NSURL * const {__strong}&>((v11 + 11), v11 + 11, &rLCopy);
    v13 = [l copy];
    directoryURL = v12->_directoryURL;
    v12->_directoryURL = v13;

    v12->_enumerationOptions = options;
    v12->_filteringOptions = filteringOptions;
  }

  return v12;
}

- (BOOL)_prepareWithContext:(LSContext *)context error:(id *)error
{
  self->_bundleIdentifiersOrUnits.__end_ = self->_bundleIdentifiersOrUnits.__begin_;
  v7 = LaunchServices::AppRecordEnumeration::VolumeContainerResolutionAdapter::resolve(&self->_volumeContainerAdapter, context);
  v8 = v7;
  if (v7)
  {
    if (error)
    {
      v9 = v7;
      *error = v8;
    }
  }

  else
  {
    v10 = ~LODWORD(self->_enumerationOptions) & 0xD0;
    [(_LSDatabase *)context->db store];
    [(_LSDatabase *)context->db schema];
    if (v10)
    {
      _CSStringBindingEnumerateAllBindings();
    }

    else
    {
      _CSStoreEnumerateUnits();
    }

    v11 = [[FSNode alloc] initWithURL:self->_directoryURL flags:34 error:error];
    v12 = v11;
    if (v11)
    {
      v13 = [(FSNode *)v11 URL];
      v14 = [v13 copy];
      directoryURL = self->_directoryURL;
      self->_directoryURL = v14;
    }
  }

  return v8 == 0;
}

- (BOOL)_preflightPathOfBundleWithContext:(LSContext *)context bundleUnit:(unsigned int)unit bundleData:(const LSBundleData *)data
{
  if (self->_filteringOptions)
  {
    v14 = 0;
    v9 = _LSBundleCopyNode(context->db, *&unit, 0, 0, &v14);
    if (v9)
    {
      v7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v9, 0, "[_LSApplicationRecordsWithinDirectoryEnumerator _preflightPathOfBundleWithContext:bundleUnit:bundleData:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/Enumerator/LSApplicationRecordEnumerator.mm", 520);
    }

    else
    {
      v13 = 0;
      v8 = [v14 pathWithError:&v13];
      v7 = v13;

      if (v8)
      {
        goto LABEL_8;
      }
    }

LABEL_9:
    _LSEnumeratorFireErrorHandler(self, v7);
    v11 = 0;
    goto LABEL_10;
  }

  v6 = _LSAliasGetPath(context->db, data->base.bookmark);
  if (!v6)
  {
    v7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "[_LSApplicationRecordsWithinDirectoryEnumerator _preflightPathOfBundleWithContext:bundleUnit:bundleData:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/Enumerator/LSApplicationRecordEnumerator.mm", 526);
    goto LABEL_9;
  }

  v7 = 0;
  v8 = v6;
LABEL_8:
  path = [(NSURL *)self->_directoryURL path];
  v11 = _LSPathMatchesPath_NoIO(path, v8, 1);

LABEL_10:
  return v11;
}

- (expected<LSApplicationRecord)_createPostflightedApplicationRecordWithContext:(LSContext *)context bundleUnit:(unsigned int)unit bundleData:(const LSBundleData *)data
{
  v7 = v5;
  v16 = 0;
  v8 = [[LSApplicationRecord alloc] _initWithContext:context bundleID:*&unit bundleData:data error:&v16];
  v9 = v16;
  v10 = v9;
  if (v8)
  {
    v11 = [v8 URL];
    path = [(NSURL *)self->_directoryURL path];
    path2 = [v11 path];
    if ((_LSPathMatchesPath_NoIO(path, path2, 1) & 1) == 0)
    {

      v8 = 0;
    }

    *v7 = v8;
    *(v7 + 8) = 1;
  }

  else
  {
    *v7 = v9;
    *(v7 + 8) = 0;
  }

  *&result.var0.var0.var1 = v15;
  result.var0.var0.var0.var0 = v14;
  return result;
}

- (BOOL)_getObject:(id *)object atIndex:(unint64_t)index context:(LSContext *)context
{
  begin = self->_bundleIdentifiersOrUnits.__begin_;
  v7 = self->_bundleIdentifiersOrUnits.__end_ - begin;
  if (v7 > index)
  {
    v11 = ~LODWORD(self->_enumerationOptions);
    v12 = begin[index];
    db = context->db;
    if ((v11 & 0xD0) == 0)
    {
      v14 = _LSBundleGet(db, begin[index]);
      if (!v14)
      {
LABEL_15:
        v17 = 0;
LABEL_21:
        v24 = *object;
        *object = v17;

        return v7 > index;
      }

      if (!self->_volumeContainerAdapter.volumeURLOrContainerOrError.__impl_.__index)
      {
        v16 = v14;
        if (LaunchServices::AppRecordEnumeration::evaluateBundleNoIOCommon(v12, v14, self->_enumerationOptions, v15) && [(_LSApplicationRecordsWithinDirectoryEnumerator *)self _preflightPathOfBundleWithContext:context bundleUnit:v12 bundleData:v16])
        {
          objc_msgSend__createPostflightedApplicationRecordWithContext_bundleUnit_bundleData_(self);
          if (v31 == 1)
          {
            v17 = v30;
          }

          else
          {
            _LSEnumeratorFireErrorHandler(self, v30);
            v17 = 0;
          }

          goto LABEL_21;
        }

        goto LABEL_15;
      }

LABEL_25:
      v26 = std::__throw_bad_variant_access[abi:nn200100]();

      _Unwind_Resume(v26);
    }

    [(_LSDatabase *)db store];
    v18 = _CSStringCopyCFString();
    if (v18)
    {
      v29 = 0;
      v27[4] = self;
      v28 = 0;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __77___LSApplicationRecordsWithinDirectoryEnumerator__getObject_atIndex_context___block_invoke;
      v27[3] = &unk_1E6A18FF0;
      v19 = MEMORY[0x1865D71B0](v27);
      if (self->_volumeContainerAdapter.volumeURLOrContainerOrError.__impl_.__index)
      {
        goto LABEL_25;
      }

      v20 = v19;
      enumerationOptions = self->_enumerationOptions;
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      LaunchServices::AppRecordEnumeration::findAppByIdentifierForEnumerator(context, v18, 2, enumerationOptions, v23, v20, &v29, &v28);

      v17 = 0;
      if (v29 && v28)
      {
        objc_msgSend__createPostflightedApplicationRecordWithContext_bundleUnit_bundleData_(self);
        if (v31 == 1)
        {
          v17 = v30;
        }

        else
        {
          _LSEnumeratorFireErrorHandler(self, v30);
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_21;
  }

  return v7 > index;
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 24) = 1;
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 14) = 0;
  return self;
}

@end