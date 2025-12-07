@interface ASDInstallManifestRequestOptions
- (ASDInstallManifestRequestOptions)initWithCoder:(id)coder;
- (ASDInstallManifestRequestOptions)initWithManifest:(id)manifest;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ASDInstallManifestRequestOptions

- (ASDInstallManifestRequestOptions)initWithManifest:(id)manifest
{
  v14 = *MEMORY[0x1E69E9840];
  manifestCopy = manifest;
  v11.receiver = self;
  v11.super_class = ASDInstallManifestRequestOptions;
  v5 = [(ASDInstallManifestRequestOptions *)&v11 init];
  if (v5)
  {
    if (manifestCopy)
    {
      v6 = [manifestCopy copy];
      p_super = &v5->_manifest->super;
      v5->_manifest = v6;
    }

    else
    {
      p_super = ASDLogHandleForCategory(13);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        *buf = 138543362;
        v13 = v9;
        v10 = v9;
        _os_log_error_impl(&dword_1B8220000, p_super, OS_LOG_TYPE_ERROR, "[%{public}@]: Request contained a nil manifest", buf, 0xCu);
      }
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ASDInstallManifestRequestOptions allocWithZone:zone];
  manifest = self->_manifest;

  return [(ASDInstallManifestRequestOptions *)v4 initWithManifest:manifest];
}

- (ASDInstallManifestRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASDInstallManifestRequestOptions *)self initWithManifest:0];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manifest"];
    manifest = v5->_manifest;
    v5->_manifest = v6;
  }

  return v5;
}

@end