@interface CDMTokenizer
+ (BOOL)registerTrialAsset:(id)asset;
+ (BOOL)syncTrialAsset:(id)asset;
+ (BOOL)trialAssetUpdate:(id)update;
+ (id)printableLocales:(id)locales;
+ (id)tokenizerForLocale:(id)locale;
+ (void)analyzerFactory;
+ (void)normalizerFactory;
+ (void)registerMorphunAssetsPathForLocale:(id)locale withPath:(id)path;
- (CDMTokenizer)initWithLocale:(id)locale;
- (CDMTokenizer)initWithLocale:(id)locale maxTokens:(int)tokens maxInputSize:(int)size;
- (id).cxx_construct;
- (id)createTokenChain:(id)chain;
@end

@implementation CDMTokenizer

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 4) = 0;
  return self;
}

+ (void)analyzerFactory
{
  {
    operator new();
  }

  return +[CDMTokenizer analyzerFactory]::factory;
}

+ (void)normalizerFactory
{
  {
    operator new();
  }

  return +[CDMTokenizer normalizerFactory]::factory;
}

- (id)createTokenChain:(id)chain
{
  chainCopy = chain;
  v5 = chainCopy;
  memset(&v66, 0, sizeof(v66));
  if (chainCopy)
  {
    Length = CFStringGetLength(chainCopy);
    std::basic_string<char16_t>::resize(&v66, Length, v7);
    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v66;
    }

    else
    {
      v8 = v66.__r_.__value_.__r.__words[0];
    }

    v68.location = 0;
    v68.length = Length;
    CFStringGetCharacters(v5, v68, v8);
  }

  v60 = v5;

  v9 = (*(*self->_tokenizer.__ptr_ + 24))(self->_tokenizer.__ptr_, &v66);
  v10 = (*(*self->_analyzer + 72))(self->_analyzer, v9);
  if (v9)
  {
    (*(*v9 + 16))(v9);
  }

  v11 = (*(*self->_normalizer + 72))(self->_normalizer, v10);
  v12 = [CDMTokenChain alloc];
  v61 = v11;
  (**self->_locale.__ptr_)(__p);
  if ((v65 & 0x80u) == 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if ((v65 & 0x80u) == 0)
  {
    v14 = v65;
  }

  else
  {
    v14 = __p[1];
  }

  v15 = [MEMORY[0x1E696AEC0] stringWithCharacters:v13 length:v14];
  v62 = [(CDMTokenChain *)v12 initWithString:v60 locale:v15];

  if (v65 < 0)
  {
    operator delete(__p[0]);
  }

  morphun::TokenIterator::TokenIterator();
  morphun::TokenIterator::TokenIterator();
  v63 = 0;
  v16 = 0;
  while (1)
  {
    v17 = v10[2];
    if (v17)
    {
      morphun::Token::getNext(v17);
    }

    morphun::TokenIterator::TokenIterator();
    if (!morphun::TokenIterator::operator!=())
    {
      break;
    }

    v18 = morphun::TokenIterator::operator->();
    if ((morphun::Token::isHead(v18) & 1) == 0)
    {
      v19 = morphun::TokenIterator::operator->();
      if ((morphun::Token::isTail(v19) & 1) == 0)
      {
        while (1)
        {
          v20 = morphun::TokenIterator::operator->();
          v21 = (*(*v20 + 24))(v20);
          v22 = morphun::TokenIterator::operator->();
          if (v21 >= (*(*v22 + 24))(v22))
          {
            v23 = morphun::TokenIterator::operator->();
            if (!morphun::Token::isHead(v23))
            {
              break;
            }
          }

          morphun::TokenIterator::operator++();
        }

        v24 = morphun::TokenIterator::operator*();
        Value = morphun::Token::getValue(v24);
        v26 = *(Value + 23);
        if (v26 >= 0)
        {
          v27 = Value;
        }

        else
        {
          v27 = *Value;
        }

        if (v26 >= 0)
        {
          v28 = *(Value + 23);
        }

        else
        {
          v28 = *(Value + 8);
        }

        v29 = [MEMORY[0x1E696AEC0] stringWithCharacters:v27 length:v28];
        CleanValue = morphun::Token::getCleanValue(v24);
        v31 = *(CleanValue + 23);
        if ((v31 & 0x80u) != 0)
        {
          v31 = *(CleanValue + 8);
        }

        if (v31)
        {
          v32 = morphun::Token::getCleanValue(v24);
          v33 = *(v32 + 23);
          if (v33 >= 0)
          {
            v34 = v32;
          }

          else
          {
            v34 = *v32;
          }

          if (v33 >= 0)
          {
            v35 = *(v32 + 23);
          }

          else
          {
            v35 = *(v32 + 8);
          }

          v36 = [MEMORY[0x1E696AEC0] stringWithCharacters:v34 length:v35];
        }

        else
        {
          v36 = 0;
        }

        v37 = [CDMToken alloc];
        v38 = (*(*v24 + 24))(v24);
        v39 = (*(*v24 + 32))(v24);
        isSignificant = morphun::Token::isSignificant(v24);
        v41 = [(CDMToken *)v37 initWithValue:v29 begin:v38 end:v39 significant:isSignificant whitespace:morphun::Token::isWhitespace(v24) cleanValue:v36 tokenIndex:v63 nonWhitespaceTokenIndex:v16];

        while (1)
        {
          v42 = morphun::TokenIterator::operator->();
          v43 = morphun::Token::getValue(v42);
          v44 = *(v43 + 23);
          v45 = v44 >= 0 ? v43 : *v43;
          v46 = v44 >= 0 ? *(v43 + 23) : *(v43 + 8);
          v47 = [MEMORY[0x1E696AEC0] stringWithCharacters:v45 length:v46];
          v48 = morphun::TokenIterator::operator->();
          v49 = (*(*v48 + 24))(v48);
          v50 = morphun::TokenIterator::operator->();
          v51 = [(CDMToken *)v41 hasValue:v47 from:v49 to:(*(*v50 + 32))(v50)];

          if (!v51)
          {
            break;
          }

          v52 = morphun::TokenIterator::operator->();
          v53 = morphun::Token::getCleanValue(v52);
          v54 = *(v53 + 23);
          if (v54 >= 0)
          {
            v55 = v53;
          }

          else
          {
            v55 = *v53;
          }

          if (v54 >= 0)
          {
            v56 = *(v53 + 23);
          }

          else
          {
            v56 = *(v53 + 8);
          }

          v57 = [MEMORY[0x1E696AEC0] stringWithCharacters:v55 length:v56];
          [(CDMToken *)v41 addNormalizedValue:v57];

          morphun::TokenIterator::operator++();
        }

        [(CDMTokenChain *)v62 addToken:v41];
        v58 = morphun::TokenIterator::operator->();
        ++v63;
        v16 += morphun::Token::isWhitespace(v58) ^ 1;

        v11 = v61;
      }
    }

    morphun::TokenIterator::operator++();
  }

  if (v11)
  {
    (*(*v11 + 16))(v11);
  }

  (*(*v10 + 16))(v10);
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  return v62;
}

- (CDMTokenizer)initWithLocale:(id)locale maxTokens:(int)tokens maxInputSize:(int)size
{
  v6 = *MEMORY[0x1E69E9840];
  [locale UTF8String];
  operator new();
}

- (CDMTokenizer)initWithLocale:(id)locale
{
  localeCopy = locale;
  v9.receiver = self;
  v9.super_class = CDMTokenizer;
  v5 = [(CDMTokenizer *)&v9 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.siri.mini.CDMTokenizer", 0);
    morphunForceUpdateQueue = v5->_morphunForceUpdateQueue;
    v5->_morphunForceUpdateQueue = v6;

    v5 = [(CDMTokenizer *)v5 initWithLocale:localeCopy maxTokens:25 maxInputSize:4096];
  }

  return v5;
}

+ (BOOL)registerTrialAsset:(id)asset
{
  assetCopy = asset;
  v5 = [MEMORY[0x1E69B2870] getAssetPathForLocale:assetCopy];
  if (v5 || ([self trialAssetUpdate:assetCopy] & 1) != 0)
  {
    v6 = [self syncTrialAsset:assetCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)registerMorphunAssetsPathForLocale:(id)locale withPath:(id)path
{
  v33 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  pathCopy = path;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    localeIdentifier = [localeCopy localeIdentifier];
    *buf = 136315650;
    v28 = "+[CDMTokenizer registerMorphunAssetsPathForLocale:withPath:]";
    v29 = 2112;
    v30 = localeIdentifier;
    v31 = 2112;
    v32 = pathCopy;
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s Attempting to register Morphun assets from Trial for locale: %@ with path: %@", buf, 0x20u);
  }

  localeIdentifier2 = [localeCopy localeIdentifier];
  v10 = localeIdentifier2;
  std::string::basic_string[abi:ne200100]<0>(&v25, [localeIdentifier2 UTF8String]);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  morphun::util::ULocale::ULocale();
  v11 = pathCopy;
  std::string::basic_string[abi:ne200100]<0>(&__p, [pathCopy UTF8String]);
  morphun::resources::DataRegistrationService::registerDataPathForLocale();
  if (v15 < 0)
  {
    operator delete(__p);
  }

  morphun::util::ULocale::~ULocale(buf);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v16);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v19);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v22);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  v12 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    localeIdentifier3 = [localeCopy localeIdentifier];
    *buf = 136315650;
    v28 = "+[CDMTokenizer registerMorphunAssetsPathForLocale:withPath:]";
    v29 = 2112;
    v30 = localeIdentifier3;
    v31 = 2112;
    v32 = pathCopy;
    _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s Registered Morphun assets from Trial for locale: %@ with path: %@", buf, 0x20u);
  }
}

+ (BOOL)syncTrialAsset:(id)asset
{
  v29 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    localeIdentifier = [assetCopy localeIdentifier];
    *buf = 136315394;
    v24 = "+[CDMTokenizer syncTrialAsset:]";
    v25 = 2112;
    v26 = localeIdentifier;
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Issuing a blocking synchronous API call to get Morphun assets path using MorphunAssets for locale: %@.", buf, 0x16u);
  }

  v22 = 0;
  v6 = [MEMORY[0x1E69B2870] getAssetPathForLocale:assetCopy withError:&v22];
  v7 = v22;
  v8 = v7;
  if (!v7)
  {
    path = [v6 path];
    if (path)
    {
      v13 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        localeIdentifier2 = [assetCopy localeIdentifier];
        *buf = 136315650;
        v24 = "+[CDMTokenizer syncTrialAsset:]";
        v25 = 2112;
        v26 = path;
        v27 = 2112;
        v28 = localeIdentifier2;
        _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s MorphunAssets returns path: %@ for locale: %@", buf, 0x20u);
      }

      [self registerMorphunAssetsPathForLocale:assetCopy withPath:path];
      goto LABEL_12;
    }

    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      localeIdentifier3 = [assetCopy localeIdentifier];
      *buf = 136315394;
      v24 = "+[CDMTokenizer syncTrialAsset:]";
      v25 = 2112;
      v26 = localeIdentifier3;
      _os_log_error_impl(&dword_1DC287000, v17, OS_LOG_TYPE_ERROR, "%s [ERR]: CDM get nil Morphun assets path with no error returned from MorphunAssets for locale: %@.", buf, 0x16u);
    }

    path = 0;
LABEL_23:
    v11 = 0;
    goto LABEL_24;
  }

  code = [v7 code];
  if (!code)
  {
    if ([MEMORY[0x1E69B2870] isLocaleEmbedded:assetCopy])
    {
      path = CDMOSLoggerForCategory(0);
      v11 = 1;
      if (!os_log_type_enabled(path, OS_LOG_TYPE_INFO))
      {
        goto LABEL_24;
      }

      localeIdentifier4 = [assetCopy localeIdentifier];
      *buf = 136315650;
      v24 = "+[CDMTokenizer syncTrialAsset:]";
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = localeIdentifier4;
      _os_log_impl(&dword_1DC287000, path, OS_LOG_TYPE_INFO, "%s [WARN]: [Not Critical] CDM gets Morphun assets path with error: %@ for embedded locale: %@. Skip following code to register Morphun assets path.", buf, 0x20u);

      goto LABEL_12;
    }

    path = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(path, OS_LOG_TYPE_ERROR))
    {
      localeIdentifier5 = [assetCopy localeIdentifier];
      *buf = 136315650;
      v24 = "+[CDMTokenizer syncTrialAsset:]";
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = localeIdentifier5;
      _os_log_error_impl(&dword_1DC287000, path, OS_LOG_TYPE_ERROR, "%s [ERR]: CDM gets Morphun assets path with error: %@ for non-embedded locale: %@.", buf, 0x20u);
    }

    goto LABEL_23;
  }

  if (code != 1)
  {
    path = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(path, OS_LOG_TYPE_ERROR))
    {
      localeIdentifier6 = [assetCopy localeIdentifier];
      *buf = 136315650;
      v24 = "+[CDMTokenizer syncTrialAsset:]";
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = localeIdentifier6;
      _os_log_error_impl(&dword_1DC287000, path, OS_LOG_TYPE_ERROR, "%s [ERR]: CDM gets Morphun assets path with error: %@ for locale: %@.", buf, 0x20u);
    }

    goto LABEL_23;
  }

  path = CDMOSLoggerForCategory(0);
  v11 = 1;
  if (os_log_type_enabled(path, OS_LOG_TYPE_INFO))
  {
    localeIdentifier7 = [assetCopy localeIdentifier];
    *buf = 136315650;
    v24 = "+[CDMTokenizer syncTrialAsset:]";
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = localeIdentifier7;
    _os_log_impl(&dword_1DC287000, path, OS_LOG_TYPE_INFO, "%s [WARN]: CDM gets Morphun assets path with error: %@ for locale: %@. The error code indicates the locale is not supported by MorphunAssets. Skip following code to register Morphun assets path. Morphun will fallback to use assets provided by CoreFoundation / ICU.", buf, 0x20u);

LABEL_12:
    v11 = 1;
  }

LABEL_24:

  return v11;
}

+ (BOOL)trialAssetUpdate:(id)update
{
  v27[2] = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    localeIdentifier = [updateCopy localeIdentifier];
    v22 = 136315394;
    v23 = "+[CDMTokenizer trialAssetUpdate:]";
    v24 = 2112;
    v25 = localeIdentifier;
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Triggering Morphun assets downloading via MorphunAssets API for locale: %@.", &v22, 0x16u);
  }

  if ([MEMORY[0x1E69B2870] isLocaleDownloadSupported:updateCopy])
  {
    if ([MEMORY[0x1E69B2870] isLocaleEmbedded:updateCopy])
    {
      [MEMORY[0x1E69B2870] onDemandDownloadForLocale:updateCopy withProgress:0 withCompletion:0];
      v6 = CDMOSLoggerForCategory(0);
      v7 = 1;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        localeIdentifier2 = [updateCopy localeIdentifier];
        embeddedLocales = [MEMORY[0x1E69B2870] EmbeddedLocales];
        v10 = [self printableLocales:embeddedLocales];
        v22 = 136315650;
        v23 = "+[CDMTokenizer trialAssetUpdate:]";
        v24 = 2112;
        v25 = localeIdentifier2;
        v26 = 2112;
        v27[0] = v10;
        _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s Issued an non-blocking Morphun Trial asset downloading for %@ as it's part of Morphun embedded locales: %@", &v22, 0x20u);

LABEL_9:
        v7 = 1;
      }
    }

    else
    {
      v6 = [MEMORY[0x1E69B2870] blockingOnDemandDownloadForLocale:updateCopy withTimeout:dispatch_time(0 withProgress:{180000000000), 0}];
      v14 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        localeIdentifier3 = [updateCopy localeIdentifier];
        embeddedLocales2 = [MEMORY[0x1E69B2870] EmbeddedLocales];
        v17 = [self printableLocales:embeddedLocales2];
        v22 = 136315906;
        v23 = "+[CDMTokenizer trialAssetUpdate:]";
        v24 = 2112;
        v25 = localeIdentifier3;
        v26 = 1024;
        LODWORD(v27[0]) = 180;
        WORD2(v27[0]) = 2112;
        *(v27 + 6) = v17;
        _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s Issued a blocking Morphun Trial asset downloading for %@, with timeout of %d secs. This language is NOT part of Morphun embedded locales: %@", &v22, 0x26u);
      }

      if (!v6)
      {
        v7 = 1;
        goto LABEL_17;
      }

      v18 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        localeIdentifier4 = [updateCopy localeIdentifier];
        v22 = 136315650;
        v23 = "+[CDMTokenizer trialAssetUpdate:]";
        v24 = 2112;
        v25 = localeIdentifier4;
        v26 = 2112;
        v27[0] = v6;
        _os_log_error_impl(&dword_1DC287000, v18, OS_LOG_TYPE_ERROR, "%s [ERR]: Morphun Trial asset downloading timed out for: %@, with error: %@", &v22, 0x20u);
      }

      v7 = 0;
    }
  }

  else
  {
    v6 = CDMOSLoggerForCategory(0);
    v7 = 1;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      localeIdentifier5 = [updateCopy localeIdentifier];
      supportedLocales = [MEMORY[0x1E69B2870] SupportedLocales];
      v13 = [self printableLocales:supportedLocales];
      v22 = 136315650;
      v23 = "+[CDMTokenizer trialAssetUpdate:]";
      v24 = 2112;
      v25 = localeIdentifier5;
      v26 = 2112;
      v27[0] = v13;
      _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s [WARN]: Current locale: %@ is NOT in MorphunAssets download supported list: %@. Return TRUE so that Morphun will fallback to use Morphun assets provided by CoreFoundation / ICU on device for this locale.", &v22, 0x20u);

      goto LABEL_9;
    }
  }

LABEL_17:
  return v7;
}

+ (id)printableLocales:(id)locales
{
  localesCopy = locales;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(localesCopy, "count")}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__CDMTokenizer_printableLocales___block_invoke;
  v7[3] = &unk_1E862F8E0;
  v5 = v4;
  v8 = v5;
  [localesCopy enumerateObjectsUsingBlock:v7];

  return v5;
}

void __33__CDMTokenizer_printableLocales___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 localeIdentifier];
  [v2 addObject:?];
}

+ (id)tokenizerForLocale:(id)locale
{
  localeCopy = locale;
  v4 = [[CDMTokenizer alloc] initWithLocale:localeCopy];

  return v4;
}

@end