@interface NSError(BusinessMetadata)
+ (void)ed_isNoBusinessMetadataFoundError:()BusinessMetadata;
@end

@implementation NSError(BusinessMetadata)

+ (void)ed_isNoBusinessMetadataFoundError:()BusinessMetadata
{
  v3 = a3;
  domain = [v3 domain];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v5 = getBCSErrorDomainSymbolLoc_ptr;
  v17 = getBCSErrorDomainSymbolLoc_ptr;
  if (!getBCSErrorDomainSymbolLoc_ptr)
  {
    v6 = BusinessChatServiceLibrary();
    v15[3] = dlsym(v6, "BCSErrorDomain");
    getBCSErrorDomainSymbolLoc_ptr = v15[3];
    v5 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (v5)
  {
    v7 = *v5;
    if (![domain isEqualToString:v7])
    {
      goto LABEL_8;
    }

    [v3 code];
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v8 = getBCSErrorReturnedNoDataCodeSymbolLoc_ptr;
    v17 = getBCSErrorReturnedNoDataCodeSymbolLoc_ptr;
    if (!getBCSErrorReturnedNoDataCodeSymbolLoc_ptr)
    {
      v9 = BusinessChatServiceLibrary();
      v15[3] = dlsym(v9, "BCSErrorReturnedNoDataCode");
      getBCSErrorReturnedNoDataCodeSymbolLoc_ptr = v15[3];
      v8 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v8)
    {
LABEL_8:

      return;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getBCSErrorDomain(void)"];
    [currentHandler handleFailureInFunction:v11 file:@"NSError+BusinessMetadata.m" lineNumber:16 description:{@"%s", dlerror()}];

    __break(1u);
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSInteger getBCSErrorReturnedNoDataCode(void)"];
  [currentHandler2 handleFailureInFunction:v13 file:@"NSError+BusinessMetadata.m" lineNumber:15 description:{@"%s", dlerror()}];

  __break(1u);
}

@end