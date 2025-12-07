@interface QLTFileThumbnailRequest
- (QLTFileThumbnailRequest)initWithCoder:(id)coder;
- (QLTFileThumbnailRequest)initWithFileAtURL:(id)l size:(CGSize)size minimumDimension:(double)dimension scale:(double)scale iconMode:(BOOL)mode error:(id *)error shouldMakeSandboxWrapper:(BOOL)wrapper;
- (id)computeContentType;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QLTFileThumbnailRequest

- (QLTFileThumbnailRequest)initWithFileAtURL:(id)l size:(CGSize)size minimumDimension:(double)dimension scale:(double)scale iconMode:(BOOL)mode error:(id *)error shouldMakeSandboxWrapper:(BOOL)wrapper
{
  wrapperCopy = wrapper;
  modeCopy = mode;
  height = size.height;
  width = size.width;
  lCopy = l;
  v18 = _CFURLPromiseCopyPhysicalURL();
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = lCopy;
  }

  v21 = v20;

  v22 = [[QLCacheBasicFileIdentifier alloc] initWithFileURL:v21 error:error];
  if (v22)
  {
    v23 = [[QLThumbnailVersion alloc] initWithFileURL:lCopy automaticallyGenerated:1];
    v24 = [[QLCacheBasicVersionedFileIdentifier alloc] initWithFileIdentifier:v22 version:v23];
    dimension = [(QLTThumbnailRequest *)self initWithVersionedFileIdentifier:v24 size:modeCopy scale:0 iconMode:0 flavor:-1 wantsBaseline:width minimumDimension:height requestedTypes:scale, dimension];
    if (!dimension)
    {
LABEL_23:
      self = dimension;

      selfCopy = self;
      goto LABEL_24;
    }

    v51 = v23;
    v26 = objc_alloc_init(MEMORY[0x1E696ABF8]);
    v57 = 0;
    v58[0] = &v57;
    v58[1] = 0x3032000000;
    v58[2] = __Block_byref_object_copy__4;
    v58[3] = __Block_byref_object_dispose__4;
    v59 = 0;
    v55[4] = &v57;
    v56 = 0;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __113__QLTFileThumbnailRequest_initWithFileAtURL_size_minimumDimension_scale_iconMode_error_shouldMakeSandboxWrapper___block_invoke;
    v55[3] = &unk_1E836A988;
    v50 = v26;
    [v26 coordinateReadingItemAtURL:lCopy options:4 error:&v56 byAccessor:v55];
    v27 = v56;
    v28 = 0x1EC43D000;
    if (*(v58[0] + 40))
    {
      if (!wrapperCopy)
      {
        goto LABEL_17;
      }

      FPSandboxingURLWrapperClass = getFPSandboxingURLWrapperClass();
      v30 = *(v58[0] + 40);
      v54 = v27;
      v31 = [FPSandboxingURLWrapperClass wrapperWithURL:v30 extensionClass:"com.apple.quicklook.readonly" error:&v54];
      v32 = v54;

      quicklookSandboxWrapper = dimension->_quicklookSandboxWrapper;
      dimension->_quicklookSandboxWrapper = v31;

      v34 = getFPSandboxingURLWrapperClass();
      v35 = *(v58[0] + 40);
      v36 = *MEMORY[0x1E69E9BB0];
      v53 = v32;
      v37 = [v34 wrapperWithURL:v35 extensionClass:v36 error:&v53];
      v27 = v53;

      genericSandboxWrapper = dimension->_genericSandboxWrapper;
      dimension->_genericSandboxWrapper = v37;

      if (dimension->_genericSandboxWrapper)
      {
        v28 = 0x1EC43D000;
        goto LABEL_17;
      }

      v41 = _log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [QLTFileThumbnailRequest initWithFileAtURL:v58 size:? minimumDimension:? scale:? iconMode:? error:? shouldMakeSandboxWrapper:?];
      }

      v42 = getFPSandboxingURLWrapperClass();
      v43 = *(v58[0] + 40);
      v44 = *MEMORY[0x1E69E9BA8];
      v52 = v27;
      v45 = [v42 wrapperWithURL:v43 extensionClass:v44 error:&v52];
      v46 = v52;

      v40 = dimension->_genericSandboxWrapper;
      dimension->_genericSandboxWrapper = v45;
      v27 = v46;
      v28 = 0x1EC43D000uLL;
    }

    else
    {
      v40 = _log();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [QLTFileThumbnailRequest initWithFileAtURL:lCopy size:? minimumDimension:? scale:? iconMode:? error:? shouldMakeSandboxWrapper:?];
      }
    }

LABEL_17:
    v47 = *(&dimension->super.super.isa + *(v28 + 3744));
    v23 = v51;
    if (!v47 || !dimension->_quicklookSandboxWrapper)
    {

      v48 = _log();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        [QLTFileThumbnailRequest initWithFileAtURL:lCopy size:? minimumDimension:? scale:? iconMode:? error:? shouldMakeSandboxWrapper:?];
      }

      dimension = 0;
    }

    _Block_object_dispose(&v57, 8);
    goto LABEL_23;
  }

  selfCopy = 0;
LABEL_24:

  return selfCopy;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  genericSandboxWrapper = [(QLTFileThumbnailRequest *)self genericSandboxWrapper];
  v7 = [genericSandboxWrapper url];
  lastPathComponent = [v7 lastPathComponent];
  [(QLTThumbnailRequest *)self size];
  v10 = v9;
  [(QLTThumbnailRequest *)self size];
  v12 = [v3 initWithFormat:@"<%@:%p %@ {%g, %g}>", v5, self, lastPathComponent, v10, v11];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  quicklookSandboxWrapper = self->_quicklookSandboxWrapper;
  coderCopy = coder;
  [coderCopy encodeObject:quicklookSandboxWrapper forKey:@"quicklookSandboxWrapper"];
  [coderCopy encodeObject:self->_genericSandboxWrapper forKey:@"genericSandboxWrapper"];
  v6.receiver = self;
  v6.super_class = QLTFileThumbnailRequest;
  [(QLTThumbnailRequest *)&v6 encodeWithCoder:coderCopy];
}

- (QLTFileThumbnailRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = QLTFileThumbnailRequest;
  v5 = [(QLTThumbnailRequest *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    getFPSandboxingURLWrapperClass();
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"quicklookSandboxWrapper"];
    quicklookSandboxWrapper = v5->_quicklookSandboxWrapper;
    v5->_quicklookSandboxWrapper = v6;

    getFPSandboxingURLWrapperClass();
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"genericSandboxWrapper"];
    genericSandboxWrapper = v5->_genericSandboxWrapper;
    v5->_genericSandboxWrapper = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = QLTFileThumbnailRequest;
  v4 = [(QLTThumbnailRequest *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 12, self->_quicklookSandboxWrapper);
  objc_storeStrong(v4 + 13, self->_genericSandboxWrapper);
  return v4;
}

- (id)computeContentType
{
  genericSandboxWrapper = [(QLTFileThumbnailRequest *)self genericSandboxWrapper];
  v3 = [genericSandboxWrapper url];
  v4 = [QLUTIAnalyzer UTIForURL:v3];

  return v4;
}

- (void)initWithFileAtURL:(uint64_t)a1 size:minimumDimension:scale:iconMode:error:shouldMakeSandboxWrapper:.cold.1(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(*a1 + 40);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v1, v2, "Could not create FPSandboxingURLWrapper with write extension for %@ with error %@, thumbnail additions can not be added to this file, falling back to read only", v3, DWORD2(v3));
}

- (void)initWithFileAtURL:(uint64_t)a1 size:minimumDimension:scale:iconMode:error:shouldMakeSandboxWrapper:.cold.2(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v1, v2, "Will not create a FPSandboxingURLWrapper for thumbnail request because no URL was obtained using coordinateReadingItemAtURL for url: %@ (%@).", v3, DWORD2(v3));
}

- (void)initWithFileAtURL:(uint64_t)a1 size:minimumDimension:scale:iconMode:error:shouldMakeSandboxWrapper:.cold.3(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v1, v2, "Could not create FPSandboxingURLWrapper with url: %@, error: %@", v3, DWORD2(v3));
}

@end