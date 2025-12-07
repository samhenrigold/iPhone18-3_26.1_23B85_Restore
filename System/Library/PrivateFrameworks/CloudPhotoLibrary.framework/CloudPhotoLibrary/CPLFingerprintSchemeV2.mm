@interface CPLFingerprintSchemeV2
- (CPLFingerprintSchemeV2)initWithBoundaryKey:(id)key;
- (NSString)boundaryKeyDescription;
@end

@implementation CPLFingerprintSchemeV2

- (NSString)boundaryKeyDescription
{
  if (os_variant_has_internal_content())
  {
    boundaryKey = [(CPLFingerprintSchemeV2 *)self boundaryKey];
    if (boundaryKey)
    {
      v4 = +[CPLFingerprintScheme fingerprintSchemeForStableHash];
      v5 = [v4 fingerPrintForData:boundaryKey error:0];
    }

    else
    {
      v5 = @"nil";
    }
  }

  else
  {
    v5 = @"redacted";
  }

  return v5;
}

- (CPLFingerprintSchemeV2)initWithBoundaryKey:(id)key
{
  v16 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v13.receiver = self;
  v13.super_class = CPLFingerprintSchemeV2;
  v6 = [(CPLFingerprintScheme *)&v13 init];
  if (v6)
  {
    v7 = [keyCopy copy];
    boundaryKey = v6->_boundaryKey;
    v6->_boundaryKey = v7;

    if ([keyCopy length] != 32)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v15 = keyCopy;
          _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Invalid boundary key %@", buf, 0xCu);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLFingerprintScheme.m"];
      [currentHandler handleFailureInMethod:a2 object:v6 file:v12 lineNumber:355 description:{@"Invalid boundary key %@", keyCopy}];

      abort();
    }
  }

  return v6;
}

@end