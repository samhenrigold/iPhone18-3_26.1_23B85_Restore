@interface _LSRemotePlaceholderEnumerator
- (id)_applicationRecordWithContext:(LSContext *)context bundleIdentifierOrUnit:(unsigned int)unit;
@end

@implementation _LSRemotePlaceholderEnumerator

- (id)_applicationRecordWithContext:(LSContext *)context bundleIdentifierOrUnit:(unsigned int)unit
{
  v5 = *&unit;
  v32 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v29 = 0;
  _enumerateAllBundles = [(_LSApplicationRecordEnumerator *)self _enumerateAllBundles];
  db = context->db;
  if (_enumerateAllBundles)
  {
    v10 = _LSBundleGet(db, v5);
    v29 = v10;
    if (!v10)
    {
      goto LABEL_17;
    }

    if (self->super._volumeContainerAdapter.volumeURLOrContainerOrError.__impl_.__index)
    {
      v27 = std::__throw_bad_variant_access[abi:nn200100]();

      _Unwind_Resume(v27);
    }

    if (!LaunchServices::AppRecordEnumeration::evaluateBundleNoIOCommon(v5, v10, self->super._options, v11))
    {
      v10 = 0;
      goto LABEL_17;
    }

    v30 = v5;
    v12 = 1;
  }

  else
  {
    [(_LSDatabase *)db store];
    v5 = _CSStringCopyCFString();
    if (v5)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __87___LSRemotePlaceholderEnumerator__applicationRecordWithContext_bundleIdentifierOrUnit___block_invoke;
      v28[3] = &unk_1E6A18FF0;
      v28[4] = self;
      v13 = MEMORY[0x1865D71B0](v28);
      memset(v31, 0, sizeof(v31));
      bundleClass = [(_LSApplicationRecordEnumerator *)self bundleClass];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      LOBYTE(bundleClass) = _LSBundleFindWithInfoAndNo_IOFilter(context, 0, v5, 0, v31, bundleClass, 33792, v16, v13, &v30, &v29, 0);

      if ((bundleClass & 1) == 0)
      {
        v17 = _LSEnumeratorLog;
        if (os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_DEBUG))
        {
          LaunchServices::AppRecordEnumeration::findAppByIdentifierForEnumerator(v5, v17, v18, v19, v20, v21, v22, v23);
        }
      }
    }

    else
    {
      v24 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10817, 0, "[_LSRemotePlaceholderEnumerator _applicationRecordWithContext:bundleIdentifierOrUnit:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/Enumerator/LSApplicationRecordEnumerator.mm", 294);
      _LSEnumeratorFireErrorHandler(self, v24);
    }

    LODWORD(v5) = v30;
    v12 = v29 != 0;
  }

  v10 = 0;
  if (v5 && v12)
  {
    v25 = [LSApplicationRecord alloc];
    v10 = [(LSApplicationRecord *)v25 _initWithContext:context bundleID:v30 bundleData:v29 error:0];
  }

LABEL_17:

  return v10;
}

@end