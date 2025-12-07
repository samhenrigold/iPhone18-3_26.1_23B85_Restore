@interface _LTHybridEndpointerAssetInfo
- (BOOL)endpointerIsAvailableWithContext:(id)context;
- (_LTHybridEndpointerAssetInfo)initWithAvailableAssets:(id)assets context:(id)context;
- (id)caesuraModelURL;
- (id)endpointerModelURL:(id)l;
- (id)getPreferredAsset:(id)asset orAsset:(id)orAsset withLocale:(id)locale;
- (id)selectAsset:(id)asset withLocale:(id)locale;
@end

@implementation _LTHybridEndpointerAssetInfo

- (_LTHybridEndpointerAssetInfo)initWithAvailableAssets:(id)assets context:(id)context
{
  *&v50[5] = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  contextCopy = context;
  v48.receiver = self;
  v48.super_class = _LTHybridEndpointerAssetInfo;
  v8 = [(_LTHybridEndpointerAssetInfo *)&v48 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_21;
  }

  hybridepAssetFile = v8->_hybridepAssetFile;
  v8->_hybridepAssetFile = @"hybridendpointer.json";

  spgAssetFile = v9->_spgAssetFile;
  v9->_spgAssetFile = @"hybridendpointer.json";

  if (!assetsCopy)
  {
    v42 = _LTOSLogSpeech(v12, v13);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
LABEL_21:
      v41 = 0;
      goto LABEL_22;
    }

    *buf = 0;
    v43 = "No available endpointer assets";
LABEL_18:
    _os_log_impl(&dword_232E53000, v42, OS_LOG_TYPE_INFO, v43, buf, 2u);
    goto LABEL_21;
  }

  v14 = [(_LTHybridEndpointerAssetInfo *)v9 endpointerIsAvailableWithContext:contextCopy];
  if ((v14 & 1) == 0)
  {
    v44 = _LTOSLogSpeech(v14, v15);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = v44;
      localePair = [contextCopy localePair];
      *buf = 138543362;
      *v50 = localePair;
      _os_log_impl(&dword_232E53000, v45, OS_LOG_TYPE_INFO, "HEP endpointing is not supported for the requested locale pair: %{public}@", buf, 0xCu);
    }

    goto LABEL_21;
  }

  objc_storeStrong(&v9->_context, context);
  spgAsset = v9->_spgAsset;
  v9->_spgAsset = 0;

  sourceLanguageAsset = v9->_sourceLanguageAsset;
  v9->_sourceLanguageAsset = 0;

  targetLanguageAsset = v9->_targetLanguageAsset;
  v9->_targetLanguageAsset = 0;

  v21 = _LTOSLogSpeech(v19, v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = v21;
    v23 = [assetsCopy count];
    *buf = 134217984;
    *v50 = v23;
    _os_log_impl(&dword_232E53000, v22, OS_LOG_TYPE_INFO, "Number of HEP assets %zu", buf, 0xCu);
  }

  localePair2 = [contextCopy localePair];
  sourceLocale = [localePair2 sourceLocale];
  v26 = [(_LTHybridEndpointerAssetInfo *)v9 selectAsset:assetsCopy withLocale:sourceLocale];
  v27 = v9->_sourceLanguageAsset;
  v9->_sourceLanguageAsset = v26;

  v28 = v9->_sourceLanguageAsset;
  if (v28)
  {
    objc_storeStrong(&v9->_spgAsset, v28);
  }

  autodetectLanguage = [contextCopy autodetectLanguage];
  if (autodetectLanguage)
  {
    localePair3 = [contextCopy localePair];
    targetLocale = [localePair3 targetLocale];
    v33 = [(_LTHybridEndpointerAssetInfo *)v9 selectAsset:assetsCopy withLocale:targetLocale];
    v34 = v9->_targetLanguageAsset;
    v9->_targetLanguageAsset = v33;

    v35 = v9->_targetLanguageAsset;
    if (v35)
    {
      v36 = [(_LTHybridEndpointerAssetInfo *)v9 getPreferredAsset:v9->_spgAsset orAsset:v35 withLocale:0];
      v37 = v9->_spgAsset;
      v9->_spgAsset = v36;
    }
  }

  if (!v9->_sourceLanguageAsset && !v9->_targetLanguageAsset)
  {
    v42 = _LTOSLogSpeech(autodetectLanguage, v30);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v43 = "Could not find suitable HEP asset for any language";
    goto LABEL_18;
  }

  v38 = _LTOSLogSpeech(autodetectLanguage, v30);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = v9->_sourceLanguageAsset != 0;
    v40 = v9->_targetLanguageAsset != 0;
    *buf = 67109376;
    v50[0] = v39;
    LOWORD(v50[1]) = 1024;
    *(&v50[1] + 2) = v40;
    _os_log_impl(&dword_232E53000, v38, OS_LOG_TYPE_INFO, "Found asset for source %{BOOL}i, for target %{BOOL}i", buf, 0xEu);
  }

  v41 = v9;
LABEL_22:

  return v41;
}

- (id)selectAsset:(id)asset withLocale:(id)locale
{
  v20 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  localeCopy = locale;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [assetCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(assetCopy);
        }

        v10 = [(_LTHybridEndpointerAssetInfo *)self getPreferredAsset:v13 orAsset:*(*(&v15 + 1) + 8 * v12) withLocale:localeCopy];

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [assetCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)getPreferredAsset:(id)asset orAsset:(id)orAsset withLocale:(id)locale
{
  assetCopy = asset;
  orAssetCopy = orAsset;
  localeCopy = locale;
  v10 = localeCopy;
  v11 = orAssetCopy;
  if (assetCopy)
  {
    if (!localeCopy || (v12 = [assetCopy supportsLocale:localeCopy], v13 = objc_msgSend(orAssetCopy, "supportsLocale:", v10), (v12 & 1) != 0) || (v11 = orAssetCopy, !v13))
    {
      contentVersion = [assetCopy contentVersion];
      contentVersion2 = [orAssetCopy contentVersion];
      v11 = orAssetCopy;
      if (contentVersion >= contentVersion2)
      {
        if (contentVersion != contentVersion2 || (v16 = [assetCopy isPremiumTextLID], v17 = objc_msgSend(orAssetCopy, "isPremiumTextLID"), v11 = orAssetCopy, v16) && (!v17 || (v18 = objc_msgSend(assetCopy, "state"), v11 = orAssetCopy, v18 != 4)))
        {
          v11 = assetCopy;
        }
      }
    }
  }

  v19 = v11;

  return v19;
}

- (id)caesuraModelURL
{
  getLocalFileUrl = [(_LTDAssetModel *)self->_spgAsset getLocalFileUrl];
  v4 = [getLocalFileUrl URLByAppendingPathComponent:self->_spgAssetFile];

  return v4;
}

- (id)endpointerModelURL:(id)l
{
  lCopy = l;
  p_sourceLanguageAsset = &self->_sourceLanguageAsset;
  if (self->_sourceLanguageAsset && (-[_LTTranslationContext localePair](self->_context, "localePair"), v6 = objc_claimAutoreleasedReturnValue(), [v6 sourceLocale], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7 == lCopy) || (p_sourceLanguageAsset = &self->_targetLanguageAsset, self->_targetLanguageAsset) && (-[_LTTranslationContext localePair](self->_context, "localePair"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "targetLocale"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 == lCopy))
  {
    getLocalFileUrl = [(_LTDAssetModel *)*p_sourceLanguageAsset getLocalFileUrl];
    v10 = [getLocalFileUrl URLByAppendingPathComponent:self->_hybridepAssetFile];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)endpointerIsAvailableWithContext:(id)context
{
  contextCopy = context;
  localePair = [contextCopy localePair];
  sourceLocale = [localePair sourceLocale];
  if ([contextCopy autodetectLanguage])
  {
    localePair2 = [contextCopy localePair];
    targetLocale = [localePair2 targetLocale];
    v8 = _LTPreferencesHybridEndpointerEnabledForLocales(sourceLocale, targetLocale);
  }

  else
  {
    v8 = _LTPreferencesHybridEndpointerEnabledForLocales(sourceLocale, 0);
  }

  return v8;
}

@end