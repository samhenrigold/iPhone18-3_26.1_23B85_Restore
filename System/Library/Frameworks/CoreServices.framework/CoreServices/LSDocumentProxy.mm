@interface LSDocumentProxy
+ (id)_bindingEvaluatorResultFilterForBindingStyle:(unsigned __int8)style contentIsManaged:(BOOL)managed sourceAuditToken:(id *)token;
+ (id)documentProxyForName:(id)name type:(id)type MIMEType:(id)eType;
+ (id)documentProxyForName:(id)name type:(id)type MIMEType:(id)eType isContentManaged:(BOOL)managed sourceAuditToken:(id *)token;
+ (id)documentProxyForName:(id)name type:(id)type MIMEType:(id)eType managedSourceAuditToken:(id *)token;
+ (id)documentProxyForName:(id)name type:(id)type MIMEType:(id)eType sourceIsManaged:(BOOL)managed;
+ (id)documentProxyForURL:(id)l;
+ (id)documentProxyForURL:(id)l isContentManaged:(BOOL)managed sourceAuditToken:(id *)token;
+ (id)documentProxyForURL:(id)l managedSourceAuditToken:(id *)token;
+ (id)documentProxyForURL:(id)l sourceIsManaged:(BOOL)managed;
- (BOOL)isImageOrVideo;
- (BindingEvaluator)bindingEvaluatorForIconInfo;
- (LSDocumentProxy)initWithCoder:(id)coder;
- (LSDocumentProxy)initWithURL:(id)l name:(id)name type:(id)type MIMEType:(id)eType isContentManaged:(BOOL)managed sourceAuditToken:(id *)token;
- (id)_boundIconInfo;
- (id)applicationsAvailableForOpeningWithHandlerRanks:(id)ranks error:(id *)error;
- (id)applicationsAvailableForOpeningWithStyle:(unsigned __int8)style limit:(unint64_t)limit XPCConnection:(id)connection error:(id *)error;
- (id)applicationsOrClaimBindings:(BOOL)bindings availableForOpeningWithStyle:(unsigned __int8)style handlerRank:(id)rank limit:(unint64_t)limit XPCConnection:(id)connection error:(id *)error;
- (id)availableClaimBindingsForMode:(unsigned __int8)mode handlerRank:(id)rank error:(id *)error;
- (id)claimBindingsAvailableForOpeningWithStyle:(unsigned __int8)style handlerRank:(id)rank limit:(unint64_t)limit XPCConnection:(id)connection error:(id *)error;
- (id)debugDescription;
- (id)description;
- (id)iconDataForVariant:(int)variant withOptions:(int)options;
- (id)uniqueIdentifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSDocumentProxy

+ (id)documentProxyForURL:(id)l isContentManaged:(BOOL)managed sourceAuditToken:(id *)token
{
  managedCopy = managed;
  lCopy = l;
  v9 = [self alloc];
  path = [lCopy path];
  lastPathComponent = [path lastPathComponent];
  v12 = [v9 initWithURL:lCopy name:lastPathComponent type:0 MIMEType:0 isContentManaged:managedCopy sourceAuditToken:token];

  return v12;
}

+ (id)documentProxyForName:(id)name type:(id)type MIMEType:(id)eType isContentManaged:(BOOL)managed sourceAuditToken:(id *)token
{
  managedCopy = managed;
  nameCopy = name;
  typeCopy = type;
  eTypeCopy = eType;
  v15 = [[self alloc] initWithURL:0 name:nameCopy type:typeCopy MIMEType:eTypeCopy isContentManaged:managedCopy sourceAuditToken:token];

  return v15;
}

+ (id)documentProxyForURL:(id)l
{
  lCopy = l;
  v5 = [self alloc];
  path = [lCopy path];
  lastPathComponent = [path lastPathComponent];
  v8 = [v5 initWithURL:lCopy name:lastPathComponent type:0 MIMEType:0 isContentManaged:0 sourceAuditToken:0];

  return v8;
}

+ (id)documentProxyForName:(id)name type:(id)type MIMEType:(id)eType
{
  nameCopy = name;
  typeCopy = type;
  eTypeCopy = eType;
  v11 = [[self alloc] initWithURL:0 name:nameCopy type:typeCopy MIMEType:eTypeCopy isContentManaged:0 sourceAuditToken:0];

  return v11;
}

- (LSDocumentProxy)initWithURL:(id)l name:(id)name type:(id)type MIMEType:(id)eType isContentManaged:(BOOL)managed sourceAuditToken:(id *)token
{
  lCopy = l;
  nameCopy = name;
  typeCopy = type;
  eTypeCopy = eType;
  if (nameCopy)
  {
    v19 = nameCopy;
  }

  else
  {
    v19 = @"untitled";
  }

  v32.receiver = self;
  v32.super_class = LSDocumentProxy;
  v20 = [(LSResourceProxy *)&v32 _initWithLocalizedName:v19];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(v20 + 9, l);
    v22 = [(__CFString *)v19 copy];
    v23 = v21[10];
    v21[10] = v22;

    v24 = [typeCopy copy];
    v25 = v21[11];
    v21[11] = v24;

    v26 = [eTypeCopy copy];
    v27 = v21[12];
    v21[12] = v26;

    *(v21 + 64) = managed;
    if (!token)
    {
      token = _LSGetAuditTokenForSelf(v28, v29);
    }

    v30 = *&token->var0[4];
    *(v21 + 2) = *token->var0;
    *(v21 + 3) = v30;
  }

  return v21;
}

- (BOOL)isImageOrVideo
{
  v17 = *MEMORY[0x1E69E9840];
  name = [(LSDocumentProxy *)self name];
  pathExtension = [name pathExtension];

  if (pathExtension)
  {
    v4 = [UTTypeRecord typeRecordsWithTag:pathExtension ofClass:@"public.filename-extension"];
    if ([LSDocumentProxy isImageOrVideo]::once != -1)
    {
      [LSDocumentProxy isImageOrVideo];
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          pedigree = [*(*(&v12 + 1) + 8 * i) pedigree];
          v10 = [pedigree intersectsSet:-[LSDocumentProxy isImageOrVideo]::imageAndVideoTypes];

          if (v10)
          {
            LOBYTE(v6) = 1;
            goto LABEL_14;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

void __33__LSDocumentProxy_isImageOrVideo__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"public.image", @"public.video", @"public.movie", 0}];
  v1 = [LSDocumentProxy isImageOrVideo]::imageAndVideoTypes;
  [LSDocumentProxy isImageOrVideo]::imageAndVideoTypes = v0;
}

- (id)availableClaimBindingsForMode:(unsigned __int8)mode handlerRank:(id)rank error:(id *)error
{
  v5 = [(LSDocumentProxy *)self claimBindingsAvailableForOpeningWithStyle:mode handlerRank:rank limit:-1 XPCConnection:0 error:error];

  return v5;
}

- (id)applicationsAvailableForOpeningWithHandlerRanks:(id)ranks error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  ranksCopy = ranks;
  v7 = objc_autoreleasePoolPush();
  if (!ranksCopy)
  {
    ranksCopy = _LSCopyAllHandlerRankStrings();
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = ranksCopy;
  v10 = [(__CFSet *)v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v10)
  {
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [[_LSDocumentProxyBindingQuery alloc] initWithDocumentProxy:self style:0 handlerRank:*(*(&v28 + 1) + 8 * i)];
        if (v13)
        {
          [v8 addObject:v13];
        }
      }

      v10 = [(__CFSet *)v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v10);
  }

  v14 = +[_LSQueryContext defaultContext];
  v27 = 0;
  v15 = [v14 resolveQueries:v8 error:&v27];
  v16 = v27;

  if (v15)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __73__LSDocumentProxy_applicationsAvailableForOpeningWithHandlerRanks_error___block_invoke;
    v25[3] = &unk_1E6A1C788;
    v19 = v18;
    v26 = v19;
    [v15 enumerateKeysAndObjectsUsingBlock:v25];
    v20 = v26;
  }

  else
  {
    v20 = _LSDefaultLog(v17);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      allObjects = [(__CFSet *)v9 allObjects];
      v22 = [allObjects componentsJoinedByString:{@", "}];
      *buf = 138412802;
      selfCopy = self;
      v34 = 2112;
      v35 = v22;
      v36 = 2112;
      v37 = v16;
      _os_log_impl(&dword_18162D000, v20, OS_LOG_TYPE_DEFAULT, "Could not find apps for %@ (ranks %@): %@.", buf, 0x20u);
    }

    v19 = 0;
  }

  objc_autoreleasePoolPop(v7);
  if (error && !v19)
  {
    v23 = v16;
    *error = v16;
  }

  return v19;
}

void __73__LSDocumentProxy_applicationsAvailableForOpeningWithHandlerRanks_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = [a2 _handlerRank];
  if (v6 && v5)
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }
}

- (LSDocumentProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = LSDocumentProxy;
  v5 = [(LSResourceProxy *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"typeIdentifier"];
    typeIdentifier = v5->_typeIdentifier;
    v5->_typeIdentifier = v10;

    v12 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"MIMEType"];
    MIMEType = v5->_MIMEType;
    v5->_MIMEType = v12;

    v5->_isContentManaged = [coderCopy decodeBoolForKey:@"contentManaged"];
    v14 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"sourceAuditToken"];
    v15 = v14;
    if (v14)
    {
      if ([v14 length] == 32)
      {
        bytes = [v15 bytes];
        v17 = bytes[1];
        *v5->_sourceAuditToken.val = *bytes;
        *&v5->_sourceAuditToken.val[4] = v17;
      }

      else
      {
        v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4864, 0, "[LSDocumentProxy initWithCoder:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSDocumentProxy.mm", 271);
        [coderCopy failWithError:v18];
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = LSDocumentProxy;
  [(LSResourceProxy *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_URL forKey:@"URL"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_typeIdentifier forKey:@"typeIdentifier"];
  [coderCopy encodeObject:self->_MIMEType forKey:@"MIMEType"];
  [coderCopy encodeBool:self->_isContentManaged forKey:@"contentManaged"];
  v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_sourceAuditToken length:32];
  [coderCopy encodeObject:v5 forKey:@"sourceAuditToken"];
}

- (id)uniqueIdentifier
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  name = [(LSDocumentProxy *)self name];

  if (name)
  {
    name2 = [(LSDocumentProxy *)self name];
    v6 = [name2 dataUsingEncoding:4];
    [v3 appendData:v6];
  }

  typeIdentifier = [(LSDocumentProxy *)self typeIdentifier];

  if (typeIdentifier)
  {
    typeIdentifier2 = [(LSDocumentProxy *)self typeIdentifier];
    v9 = [typeIdentifier2 dataUsingEncoding:4];
    [v3 appendData:v9];
  }

  mIMEType = [(LSDocumentProxy *)self MIMEType];

  if (mIMEType)
  {
    mIMEType2 = [(LSDocumentProxy *)self MIMEType];
    v12 = [mIMEType2 dataUsingEncoding:4];
    [v3 appendData:v12];
  }

  isContentManaged = [(LSDocumentProxy *)self isContentManaged];
  [v3 appendBytes:&isContentManaged length:1];
  v13 = [MEMORY[0x1E696AFB0] _LS_UUIDWithData:v3 digestType:2];

  return v13;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  localizedName = [(LSResourceProxy *)self localizedName];
  typeIdentifier = [(LSDocumentProxy *)self typeIdentifier];
  mIMEType = [(LSDocumentProxy *)self MIMEType];
  v7 = [v3 initWithFormat:@"LSDocumentProxy: Name=%@ UTI=%@ MIMEType=%@", localizedName, typeIdentifier, mIMEType];

  return v7;
}

- (id)debugDescription
{
  isContentManaged = [(LSDocumentProxy *)self isContentManaged];
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:-[LSDocumentProxy sourceAuditToken](self length:{"sourceAuditToken"), 32}];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = objc_opt_class();
  v7 = [(LSDocumentProxy *)self URL];
  name = [(LSDocumentProxy *)self name];
  typeIdentifier = [(LSDocumentProxy *)self typeIdentifier];
  mIMEType = [(LSDocumentProxy *)self MIMEType];
  v11 = [v4 description];
  v12 = v11;
  v13 = "no";
  if (isContentManaged)
  {
    v13 = "yes";
  }

  v14 = [v5 initWithFormat:@"<%@ %p> { URL: %@, Name: %@, UTI: %@, MIMEType: %@, isContentManaged: %s, sourceAuditToken: %@ }", v6, self, v7, name, typeIdentifier, mIMEType, v13, v11];

  return v14;
}

+ (id)documentProxyForURL:(id)l managedSourceAuditToken:(id *)token
{
  v4 = [self documentProxyForURL:l isContentManaged:token != 0 sourceAuditToken:token];

  return v4;
}

+ (id)documentProxyForURL:(id)l sourceIsManaged:(BOOL)managed
{
  v4 = [self documentProxyForURL:l isContentManaged:managed sourceAuditToken:0];

  return v4;
}

+ (id)documentProxyForName:(id)name type:(id)type MIMEType:(id)eType managedSourceAuditToken:(id *)token
{
  v6 = [self documentProxyForName:name type:type MIMEType:eType isContentManaged:token != 0 sourceAuditToken:token];

  return v6;
}

+ (id)documentProxyForName:(id)name type:(id)type MIMEType:(id)eType sourceIsManaged:(BOOL)managed
{
  v6 = [self documentProxyForName:name type:type MIMEType:eType isContentManaged:managed sourceAuditToken:0];

  return v6;
}

+ (id)_bindingEvaluatorResultFilterForBindingStyle:(unsigned __int8)style contentIsManaged:(BOOL)managed sourceAuditToken:(id *)token
{
  v18 = *MEMORY[0x1E69E9840];
  if (token)
  {
    v7 = token->var0[0];
    v17[0] = *(token->var0 + 1);
    *(v17 + 15) = *&token->var0[4];
    v8 = 1;
  }

  else
  {
    v9 = _LSDefaultLog(self);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [LSDocumentProxy(Binding) _bindingEvaluatorResultFilterForBindingStyle:v9 contentIsManaged:? sourceAuditToken:?];
    }

    v7 = 0;
    v8 = 0;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __107__LSDocumentProxy_Binding___bindingEvaluatorResultFilterForBindingStyle_contentIsManaged_sourceAuditToken___block_invoke;
  v12[3] = &__block_descriptor_77_e27_v16__0__BindingResult_____8l;
  v13 = v7;
  *v14 = v17[0];
  *&v14[15] = *(v17 + 15);
  v15 = v8;
  v12[4] = self;
  managedCopy = managed;
  v10 = [v12 copy];

  return v10;
}

void __107__LSDocumentProxy_Binding___bindingEvaluatorResultFilterForBindingStyle_contentIsManaged_sourceAuditToken___block_invoke(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72))
  {
    v4 = (a1 + 40);
  }

  else
  {
    v4 = 0;
  }

  v5 = +[LSApplicationRestrictionsManager sharedInstance];
  v6 = [(LSApplicationRestrictionsManager *)v5 isOpenInRestrictionInEffect];

  if (v6)
  {
    v7 = _LSCopyBundleIdentifierForAuditToken(v4, 1);
    v8 = _LSDefaultLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138478083;
      v26 = v9;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "open in restriction in effect, binding %{private}@ source is %@", buf, 0x16u);
    }

    if (v7)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __107__LSDocumentProxy_Binding___bindingEvaluatorResultFilterForBindingStyle_contentIsManaged_sourceAuditToken___block_invoke_142;
      v23[3] = &unk_1E6A1C7B0;
      v11 = v10;
      v24 = v11;
      (*(*a2 + 8))(a2, v23);
      v12 = +[LSApplicationRestrictionsManager sharedInstance];
      v13 = [(LSApplicationRestrictionsManager *)v12 allowedOpenInAppBundleIDsAfterApplyingFilterToAppBundleIDs:v11 originatingAppBundleID:v7 originatingAccountIsManaged:*(a1 + 76)];

      v15 = _LSDefaultLog(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v11 count];
        v17 = [v13 count];
        v18 = *(a1 + 76);
        *buf = 134219266;
        v26 = v16;
        v27 = 2048;
        v28 = v17;
        v29 = 2112;
        v30 = v7;
        v31 = 1024;
        v32 = v18;
        v33 = 2112;
        v34 = v11;
        v35 = 2112;
        v36 = v13;
        _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEFAULT, "Filtered %zu original bundle IDs to %zu for %@ (managed? %d) (%@) -> (%@)", buf, 0x3Au);
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __107__LSDocumentProxy_Binding___bindingEvaluatorResultFilterForBindingStyle_contentIsManaged_sourceAuditToken___block_invoke_144;
      v21[3] = &unk_1E6A1C7B0;
      v22 = v13;
      v19 = *(*a2 + 8);
      v20 = v13;
      v19(a2, v21);
    }
  }
}

uint64_t __107__LSDocumentProxy_Binding___bindingEvaluatorResultFilterForBindingStyle_contentIsManaged_sourceAuditToken___block_invoke_142(uint64_t a1, id *a2, uint64_t a3)
{
  [(_LSDatabase *)*a2 store];
  v4 = _CSStringCopyCFString();
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  return 1;
}

uint64_t __107__LSDocumentProxy_Binding___bindingEvaluatorResultFilterForBindingStyle_contentIsManaged_sourceAuditToken___block_invoke_144(uint64_t a1, id *a2, uint64_t a3)
{
  [(_LSDatabase *)*a2 store];
  v4 = _CSStringCopyCFString();
  if (v4)
  {
    v5 = [*(a1 + 32) containsObject:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BindingEvaluator)bindingEvaluatorForIconInfo
{
  v4 = [[LSClaimBindingConfiguration alloc] initWithDocumentProxy:self bindingStyle:0];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_bindingEvaluatorForAuditToken_(v4);
  }

  else
  {
    *&retstr->var15 = 0u;
    *&retstr->var17 = 0u;
    *&retstr->var13.var0 = 0u;
    *&retstr->var13.var2 = 0u;
    *&retstr->var7 = 0u;
    *&retstr->var10 = 0u;
    *retstr->var6._opaque = 0u;
    *&retstr->var6._opaque[16] = 0u;
    *&retstr->var2 = 0u;
    *&retstr->var4 = 0u;
    *&retstr->var0 = 0u;
  }

  return result;
}

- (id)_boundIconInfo
{
  v54 = *MEMORY[0x1E69E9840];
  if (IconServicesLibrary(void)::frameworkLibrary || (IconServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__25;
    v38 = __Block_byref_object_dispose__25;
    v39 = 0;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v33.receiver = selfCopy;
    v33.super_class = LSDocumentProxy;
    _boundIconInfo = [(LSResourceProxy *)&v33 _boundIconInfo];
    applicationIdentifier = [_boundIconInfo applicationIdentifier];
    v6 = applicationIdentifier == 0;

    if (v6)
    {
      if (_LSCurrentProcessMayMapDatabase())
      {
        v32 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        if (!LaunchServices::Database::Context::status(&v29))
        {
          v7 = +[_LSDServiceDomain defaultServiceDomain];
          v8 = LaunchServices::Database::Context::_get(&v29, v7, 0);

          [(_LSBoundIconInfo *)_boundIconInfo setDocumentAllowOverride:?];
          [(_LSBoundIconInfo *)_boundIconInfo setPrerendered:?];
          objc_msgSend_bindingEvaluatorForIconInfo(selfCopy);
          LaunchServices::BindingEvaluator::BindingEvaluator(v52, &v46);
          v53 = 1;
          LaunchServices::BindingEvaluator::~BindingEvaluator(&v46);
          if (v53 == 1)
          {
            LaunchServices::BindingEvaluator::setLimit(v52, 1uLL);
            v9 = LaunchServices::BindingEvaluator::getCalculatedUTI(v52, v8);
            if (v9)
            {
              v28 = 0;
              active = _UTGetActiveTypeForCFStringIdentifier(v8->db, v9, &v28);
              v11 = active;
              if (!active || (*(active + 9) & 2) != 0)
              {
                [(_LSBoundIconInfo *)_boundIconInfo setFileNames:?];
                [(_LSBoundIconInfo *)_boundIconInfo setIconsDictionary:?];
                [_boundIconInfo setApplicationIdentifier:@"com.apple.mobilecoretypes"];
                [(_LSBoundIconInfo *)_boundIconInfo setContainerURL:?];
                v21 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/System/Library/CoreServices/MobileCoreTypes.bundle" isDirectory:1];
                [_boundIconInfo setResourcesDirectoryURL:v21];

                [(_LSBoundIconInfo *)_boundIconInfo setDocumentAllowOverride:?];
              }

              else
              {
                v46 = 0;
                v47 = &v46;
                v48 = 0x3032000000;
                v49 = __Block_byref_object_copy__25;
                v50 = __Block_byref_object_dispose__25;
                v51 = 0;
                v26[0] = 0;
                v26[1] = v26;
                v26[2] = 0x3032000000;
                v26[3] = __Block_byref_object_copy__25;
                v26[4] = __Block_byref_object_dispose__25;
                v27 = 0;
                v40[0] = MEMORY[0x1E69E9820];
                v40[1] = 3321888768;
                v40[2] = __42__LSDocumentProxy_Binding___boundIconInfo__block_invoke;
                v40[3] = &unk_1EEF63008;
                v43 = &v46;
                v44 = v8;
                v42 = v26;
                v12 = _boundIconInfo;
                v41 = v12;
                std::__optional_copy_base<LaunchServices::BindingEvaluator,false>::__optional_copy_base[abi:nn200100](v45, v52);
                v13 = MEMORY[0x1865D71B0](v40);
                if ((v13[2](v13, v11) & 1) != 0 || (v14 = _UTGetActiveTypeWithIconForNSStringIdentifier(v8->db, v9, &v28), v13[2](v13, v14)))
                {
                  bundleIdentifier = [v47[5] bundleIdentifier];
                  [v12 setApplicationIdentifier:bundleIdentifier];

                  containerURL = [v47[5] containerURL];
                  [(_LSBoundIconInfo *)v12 setContainerURL:containerURL];

                  _boundIconInfo2 = [v47[5] _boundIconInfo];
                  resourcesDirectoryURL = [_boundIconInfo2 resourcesDirectoryURL];
                  [v12 setResourcesDirectoryURL:resourcesDirectoryURL];

                  [(_LSBoundIconInfo *)v12 setBadge:?];
                }

                if (v45[176] == 1)
                {
                  LaunchServices::BindingEvaluator::~BindingEvaluator(v45);
                }

                _Block_object_dispose(v26, 8);
                _Block_object_dispose(&v46, 8);
              }
            }

            objc_storeStrong(v35 + 5, _boundIconInfo);
            if (v53)
            {
              LaunchServices::BindingEvaluator::~BindingEvaluator(v52);
            }
          }
        }

        if (v29 && v31 == 1)
        {
          _LSContextDestroy(v29);
        }

        v22 = v30;
        v29 = 0;
        v30 = 0;

        v31 = 0;
        v23 = v32;
        v32 = 0;
      }

      else
      {
        v20 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __42__LSDocumentProxy_Binding___boundIconInfo__block_invoke_161;
        v25[3] = &unk_1E6A1C7F8;
        v25[4] = selfCopy;
        v25[5] = &v34;
        [v20 getBoundIconInfoForDocumentProxy:selfCopy completionHandler:v25];
      }
    }

    else
    {
      objc_storeStrong(v35 + 5, _boundIconInfo);
    }

    objc_sync_exit(selfCopy);
    v19 = v35[5];
    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

uint64_t __42__LSDocumentProxy_Binding___boundIconInfo__block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_23;
  }

  v3 = a2;
  if (_UTTypeHasIcon(a2))
  {
    goto LABEL_3;
  }

  [(_LSDatabase *)**(a1 + 56) store];
  v7 = _CSStringCopyCFString();
  v34 = 0;
  active = _UTGetActiveTypeWithIconForNSStringIdentifier(**(a1 + 56), v7, &v34);
  v3 = active;
  if (!active)
  {

LABEL_23:
    v20 = 0;
LABEL_24:
    LaunchServices::BindingEvaluator::getBestBinding((a1 + 64), *(a1 + 56), 0, &v34);
    if (v39 == 1)
    {
      v21 = [LSApplicationRecord alloc];
      v22 = [(LSApplicationRecord *)v21 _initWithContext:*(a1 + 56) bundleID:v34 bundleData:v35 error:0];
      v23 = *(*(a1 + 40) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;

      v25 = [*(*(*(a1 + 40) + 8) + 40) compatibilityObject];
      v26 = *(*(a1 + 48) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      if (v36 && (*(v36 + 28) || *(v36 + 60)))
      {
        v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (*(v36 + 60))
        {
          [(_LSDatabase *)**(a1 + 56) store];
          v29 = _CSStringCopyCFString();
          [v28 addObject:v29];
        }

        else
        {
          for (i = 28; i != 60; i += 4)
          {
            if (!*(v36 + i))
            {
              break;
            }

            [(_LSDatabase *)**(a1 + 56) store];
            v32 = _CSStringCopyCFString();
            [v28 addObject:v32];
          }
        }

        v30 = [v28 copy];
        [(_LSBoundIconInfo *)*(a1 + 32) setFileNames:v30];
      }

      else
      {
        v28 = [*(*(*(a1 + 48) + 8) + 40) _boundIconInfo];
        v30 = [(_LSBoundIconInfo *)v28 iconsDictionary];
        [(_LSBoundIconInfo *)*(a1 + 32) setIconsDictionary:v30];
      }

      v20 = 1;
    }

    if (v39 == 1)
    {
    }

    return v20;
  }

  v9 = *(active + 8);

  if ((v9 & 0x200) != 0)
  {
    goto LABEL_23;
  }

LABEL_3:
  if ((*(v3 + 9) & 0x20) != 0)
  {
    v6 = [[LSApplicationExtensionRecord alloc] _initWithContext:*(a1 + 56) pluginID:*(v3 + 20) pluginData:0 error:0];
    v10 = [v6 containingBundleRecord];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v10);
    }
  }

  else
  {
    v4 = [[LSApplicationRecord alloc] _initWithContext:*(a1 + 56) bundleID:*(v3 + 20) bundleData:0 error:0];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v11 = [*(*(*(a1 + 40) + 8) + 40) compatibilityObject];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = _UTTypeGetIconNames(**(a1 + 56), v3);
  if ((*(v3 + 8) & 0x20) != 0)
  {
    [(_LSBoundIconInfo *)*(a1 + 32) setDocumentAllowOverride:?];
  }

  [(_LSBoundIconInfo *)*(a1 + 32) setFileNames:v14];
  v15 = _UTTypeGetIconName(**(a1 + 56), v3);
  v16 = _UTTypeGetGlyphName(**(a1 + 56), v3);
  if (v15 | v16)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = v17;
    if (v15)
    {
      [v17 setObject:v15 forKeyedSubscript:@"UTTypeIconName"];
    }

    if (v16)
    {
      [v18 setObject:v15 forKeyedSubscript:@"UTTypeGlyphName"];
    }

    v19 = [_LSLazyPropertyList lazyPropertyListWithPropertyList:v18];
    [(_LSBoundIconInfo *)*(a1 + 32) setIconsDictionary:v19];
  }

  else
  {
    [(_LSBoundIconInfo *)*(a1 + 32) setIconsDictionary:?];
  }

  v20 = 1;
  if ([(_LSBoundIconInfo *)*(a1 + 32) documentAllowOverride])
  {
    goto LABEL_24;
  }

  return v20;
}

void __42__LSDocumentProxy_Binding___boundIconInfo__block_invoke_161(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = *(*(a1 + 40) + 8);
    objc_storeStrong((v5 + 40), a2);
    v6 = *(v5 + 40);
    v7.receiver = *(a1 + 32);
    v7.super_class = LSDocumentProxy;
    objc_msgSendSuper2(&v7, sel__setBoundIconInfo_, v6);
  }
}

- (id)applicationsOrClaimBindings:(BOOL)bindings availableForOpeningWithStyle:(unsigned __int8)style handlerRank:(id)rank limit:(unint64_t)limit XPCConnection:(id)connection error:(id *)error
{
  styleCopy = style;
  bindingsCopy = bindings;
  v44 = *MEMORY[0x1E69E9840];
  rankCopy = rank;
  connectionCopy = connection;
  v15 = objc_autoreleasePoolPush();
  v31 = rankCopy;
  v38 = [[_LSDocumentProxyBindingQuery alloc] initWithDocumentProxy:self style:styleCopy handlerRank:rankCopy];
  [(_LSDocumentProxyBindingQuery *)v38 setYieldClaimBindings:bindingsCopy];
  v16 = +[_LSQueryContext defaultContext];
  v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v38 count:1];
  if (connectionCopy)
  {
    v37 = 0;
    v18 = [v16 _resolveQueries:v17 XPCConnection:connectionCopy error:&v37];
    v19 = v37;
    allValues = [v18 allValues];
    firstObject = [allValues firstObject];
  }

  else
  {
    v36 = 0;
    v18 = [v16 resolveQueries:v17 error:&v36];
    v19 = v36;
    allValues = [v18 allValues];
    firstObject = [allValues firstObject];
  }

  v22 = firstObject;

  if (v22)
  {
    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v25 = v22;
    v26 = [v25 countByEnumeratingWithState:&v32 objects:v43 count:16];
    if (v26)
    {
      v27 = *v33;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(v25);
          }

          [v24 addObject:*(*(&v32 + 1) + 8 * i)];
        }

        v26 = [v25 countByEnumeratingWithState:&v32 objects:v43 count:16];
      }

      while (v26);
    }
  }

  else
  {
    v25 = _LSDefaultLog(v23);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v41 = 2112;
      v42 = v19;
      _os_log_impl(&dword_18162D000, v25, OS_LOG_TYPE_DEFAULT, "Could not find apps for %@: %@.", buf, 0x16u);
    }

    v24 = 0;
  }

  objc_autoreleasePoolPop(v15);
  if (error && !v24)
  {
    v29 = v19;
    *error = v19;
  }

  return v24;
}

- (id)applicationsAvailableForOpeningWithStyle:(unsigned __int8)style limit:(unint64_t)limit XPCConnection:(id)connection error:(id *)error
{
  v6 = [(LSDocumentProxy *)self applicationsOrClaimBindings:0 availableForOpeningWithStyle:style handlerRank:0 limit:limit XPCConnection:connection error:error];

  return v6;
}

- (id)claimBindingsAvailableForOpeningWithStyle:(unsigned __int8)style handlerRank:(id)rank limit:(unint64_t)limit XPCConnection:(id)connection error:(id *)error
{
  v7 = [(LSDocumentProxy *)self applicationsOrClaimBindings:1 availableForOpeningWithStyle:style handlerRank:rank limit:limit XPCConnection:connection error:error];

  return v7;
}

- (id)iconDataForVariant:(int)variant withOptions:(int)options
{
  v4 = softLink_ISIconDataForResourceProxy(self, *&variant, *&options);

  return v4;
}

@end