@interface IMDCoreSpotlightRichLinkIndexer
+ (CSCustomAttributeKey)lpDescriptionCustomKey;
+ (CSCustomAttributeKey)lpHasRichMediaCustomKey;
+ (CSCustomAttributeKey)lpPluginPathsCustomKey;
+ (CSCustomAttributeKey)lpTitleCustomKey;
+ (IMDCoreSpotlightRichLinkIndexer)defaultIndexer;
+ (id)_indexerForClassName:(id)name;
+ (id)indexerForMetadata:(id)metadata;
+ (void)insertLinkType:(id)type toAttributes:(id)attributes;
- (IMDCoreSpotlightRichLinkIndexer)initWithClass:(Class)class linkType:(id)type linkSubtype:(id)subtype prefix:(id)prefix;
- (id)_cleanedUpURLFromTransformer:(id)transformer;
- (id)_linkSubtypeForMetadata:(id)metadata;
- (id)_linkTypeForMetadata:(id)metadata;
- (id)_prefixFromMetadata:(id)metadata;
- (id)_transformerForMetadata:(id)metadata originalURL:(id)l;
- (void)_insertLinkName:(id)name prefix:(id)prefix toAttributes:(id)attributes;
- (void)_insertLinkName:(id)name toAttributes:(id)attributes;
- (void)_insertTypeInfoToSearchableAttributes:(id)attributes fromMetadata:(id)metadata;
- (void)_mapPropertiesFromMetadata:(id)metadata toAttributes:(id)attributes;
- (void)mapPropertiesFromMetadata:(id)metadata text:(id)text originalURL:(id)l attachmentPaths:(id)paths toAttributes:(id)attributes;
@end

@implementation IMDCoreSpotlightRichLinkIndexer

+ (IMDCoreSpotlightRichLinkIndexer)defaultIndexer
{
  if (qword_1EBA541F8 != -1)
  {
    sub_1B7CFA7FC();
  }

  v3 = qword_1EBA541F0;

  return v3;
}

+ (id)indexerForMetadata:(id)metadata
{
  metadataCopy = metadata;
  v8 = objc_msgSend_specialization(metadataCopy, v5, v6, v7);

  if (v8)
  {
    v12 = objc_msgSend_specialization(metadataCopy, v9, v10, v11);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v17 = objc_msgSend__indexerForClassName_(self, v15, v14, v16);

    if (v17 && (objc_msgSend_specialization(metadataCopy, v18, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_opt_class(), v23 = objc_opt_class(), LOBYTE(v22) = objc_msgSend_isEqual_(v22, v24, v23, v25), v21, (v22 & 1) != 0))
    {
      v26 = v17;
    }

    else
    {
      v26 = objc_msgSend_defaultIndexer(self, v18, v19, v20);
    }

    v27 = v26;
  }

  else
  {
    v27 = objc_msgSend_defaultIndexer(self, v9, v10, v11);
  }

  return v27;
}

+ (id)_indexerForClassName:(id)name
{
  v3 = qword_1EBA54208;
  nameCopy = name;
  if (v3 != -1)
  {
    sub_1B7CFA810();
  }

  v7 = objc_msgSend_objectForKeyedSubscript_(qword_1EBA54200, v4, nameCopy, v5);

  return v7;
}

- (IMDCoreSpotlightRichLinkIndexer)initWithClass:(Class)class linkType:(id)type linkSubtype:(id)subtype prefix:(id)prefix
{
  typeCopy = type;
  subtypeCopy = subtype;
  prefixCopy = prefix;
  v19.receiver = self;
  v19.super_class = IMDCoreSpotlightRichLinkIndexer;
  v14 = [(IMDCoreSpotlightRichLinkIndexer *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_class, class);
    v16 = NSStringFromClass(class);
    specializationClassName = v15->_specializationClassName;
    v15->_specializationClassName = v16;

    objc_storeStrong(&v15->_linkType, type);
    objc_storeStrong(&v15->_linkSubtype, subtype);
    objc_storeStrong(&v15->_prefix, prefix);
  }

  return v15;
}

+ (void)insertLinkType:(id)type toAttributes:(id)attributes
{
  typeCopy = type;
  attributesCopy = attributes;
  v9 = objc_msgSend_detectedEventTypes(attributesCopy, v6, v7, v8);
  v13 = objc_msgSend_mutableCopy(v9, v10, v11, v12);
  v16 = v13;
  if (v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v14, 1, v15);
  }

  v18 = v17;

  objc_msgSend_addObject_(v18, v19, typeCopy, v20);
  v24 = objc_msgSend_copy(v18, v21, v22, v23);
  objc_msgSend_setDetectedEventTypes_(attributesCopy, v25, v24, v26);

  v30 = objc_msgSend_mediaTypes(attributesCopy, v27, v28, v29);
  v34 = objc_msgSend_mutableCopy(v30, v31, v32, v33);
  v37 = v34;
  if (v34)
  {
    v38 = v34;
  }

  else
  {
    v38 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v35, 1, v36);
  }

  v39 = v38;

  objc_msgSend_addObject_(v39, v40, typeCopy, v41);
  v45 = objc_msgSend_copy(v39, v42, v43, v44);
  objc_msgSend_setMediaTypes_(attributesCopy, v46, v45, v47);

  objc_msgSend_setLinkType_(attributesCopy, v48, typeCopy, v49);
}

- (id)_linkTypeForMetadata:(id)metadata
{
  metadataCopy = metadata;
  v8 = objc_msgSend_linkType(self, v5, v6, v7);
  v12 = objc_msgSend_length(v8, v9, v10, v11);

  if (v12)
  {
    v16 = objc_msgSend_linkType(self, v13, v14, v15);
  }

  else
  {
    v17 = objc_msgSend_infoForLinkMetadata_(_IMDOpenGraphSpotlightMappingInfo, v13, metadataCopy, v15);
    v21 = objc_msgSend_linkType(v17, v18, v19, v20);
    v25 = objc_msgSend_length(v21, v22, v23, v24);

    if (v25)
    {
      v29 = objc_msgSend_linkType(v17, v26, v27, v28);
    }

    else
    {
      v29 = *MEMORY[0x1E6963B38];
    }

    v16 = v29;
  }

  return v16;
}

- (id)_linkSubtypeForMetadata:(id)metadata
{
  metadataCopy = metadata;
  v8 = objc_msgSend_linkSubtype(self, v5, v6, v7);
  v11 = v8;
  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v13 = objc_msgSend_infoForLinkMetadata_(_IMDOpenGraphSpotlightMappingInfo, v9, metadataCopy, v10);
    v12 = objc_msgSend_linkSubType(v13, v14, v15, v16);
  }

  return v12;
}

- (id)_prefixFromMetadata:(id)metadata
{
  v4 = objc_msgSend_infoForLinkMetadata_(_IMDOpenGraphSpotlightMappingInfo, a2, metadata, v3);
  v8 = objc_msgSend_prefix(v4, v5, v6, v7);

  return v8;
}

- (void)_insertTypeInfoToSearchableAttributes:(id)attributes fromMetadata:(id)metadata
{
  attributesCopy = attributes;
  metadataCopy = metadata;
  v11 = objc_msgSend__linkTypeForMetadata_(self, v7, metadataCopy, v8);
  if (v11)
  {
    objc_msgSend_insertLinkType_toAttributes_(IMDCoreSpotlightRichLinkIndexer, v9, v11, attributesCopy);
  }

  v14 = objc_msgSend__linkSubtypeForMetadata_(self, v9, metadataCopy, v10);
  if (v14)
  {
    objc_msgSend_setLinkSubType_(attributesCopy, v12, v14, v13);
  }
}

- (id)_transformerForMetadata:(id)metadata originalURL:(id)l
{
  metadataCopy = metadata;
  lCopy = l;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2050000000;
  v10 = qword_1EBA542E0;
  v38 = qword_1EBA542E0;
  if (!qword_1EBA542E0)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = sub_1B7BC0480;
    v34[3] = &unk_1E7CB6EA8;
    v34[4] = &v35;
    sub_1B7BC0480(v34, v6, v7, v8);
    v10 = v36[3];
  }

  v11 = v10;
  _Block_object_dispose(&v35, 8);
  v12 = objc_alloc_init(v10);
  objc_msgSend_setMetadata_(v12, v13, metadataCopy, v14);
  objc_msgSend_setComplete_(v12, v15, 1, v16);
  objc_msgSend_setPreferredSizeClass_(v12, v17, 5, v18);
  v22 = objc_msgSend_URL(metadataCopy, v19, v20, v21);
  v26 = v22;
  if (v22)
  {
    v27 = v22;
  }

  else
  {
    v28 = objc_msgSend_originalURL(metadataCopy, v23, v24, v25);
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = lCopy;
    }

    v27 = v30;
  }

  objc_msgSend_setURL_(v12, v31, v27, v32);

  return v12;
}

- (id)_cleanedUpURLFromTransformer:(id)transformer
{
  v4 = objc_msgSend_originalURL(transformer, a2, transformer, v3);
  v8 = v4;
  if (v4)
  {
    v9 = objc_msgSend_scheme(v4, v5, v6, v7);
    v13 = objc_msgSend_length(v9, v10, v11, v12);

    if (!v13)
    {
      v17 = MEMORY[0x1E695DFF8];
      v18 = objc_msgSend_absoluteString(v8, v14, v15, v16);
      v21 = objc_msgSend_stringByAppendingString_(@"https://", v19, v18, v20);
      v24 = objc_msgSend_URLWithString_(v17, v22, v21, v23);

      v8 = v24;
    }
  }

  return v8;
}

- (void)mapPropertiesFromMetadata:(id)metadata text:(id)text originalURL:(id)l attachmentPaths:(id)paths toAttributes:(id)attributes
{
  metadataCopy = metadata;
  textCopy = text;
  lCopy = l;
  pathsCopy = paths;
  attributesCopy = attributes;
  objc_msgSend__insertTypeInfoToSearchableAttributes_fromMetadata_(self, v17, attributesCopy, metadataCopy);
  v23 = objc_msgSend_summary(metadataCopy, v18, v19, v20);
  if (v23)
  {
    objc_msgSend_setTextContent_(attributesCopy, v21, v23, v22);
    goto LABEL_10;
  }

  if (textCopy)
  {
    objc_msgSend_setTextContent_(attributesCopy, v21, textCopy, v22);
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_10;
    }

    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, "Link metadata summary was nil, using payload text as text content.", buf, 2u);
    }
  }

  else
  {
    v27 = IMLogHandleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFA824(v27);
    }
  }

LABEL_10:
  v28 = objc_msgSend_lpDescriptionCustomKey(IMDCoreSpotlightRichLinkIndexer, v24, v25, v26);
  v59 = textCopy;
  objc_msgSend_setValue_forCustomKey_(attributesCopy, v29, textCopy, v28);

  objc_msgSend_setMessageType_(attributesCopy, v30, @"lnk", v31);
  v32 = lCopy;
  v34 = objc_msgSend__transformerForMetadata_originalURL_(self, v33, metadataCopy, lCopy);
  if (objc_msgSend_hasMedia(v34, v35, v36, v37))
  {
    v41 = objc_msgSend_lpHasRichMediaCustomKey(IMDCoreSpotlightRichLinkIndexer, v38, v39, v40);
    objc_msgSend_setValue_forCustomKey_(attributesCopy, v42, MEMORY[0x1E695E118], v41);

    v46 = objc_msgSend_lpPluginPathsCustomKey(IMDCoreSpotlightRichLinkIndexer, v43, v44, v45);
    objc_msgSend_setValue_forCustomKey_(attributesCopy, v47, pathsCopy, v46);
  }

  v48 = pathsCopy;
  v52 = objc_msgSend__cleanedUpURLFromTransformer_(self, v38, v34, v40);
  if (v52)
  {
    objc_msgSend_setURL_(attributesCopy, v49, v52, v51);
  }

  v56 = objc_msgSend_title(metadataCopy, v49, v50, v51);
  if (v56)
  {
    v57 = objc_msgSend_lpTitleCustomKey(IMDCoreSpotlightRichLinkIndexer, v53, v54, v55);
    objc_msgSend_setValue_forCustomKey_(attributesCopy, v58, v56, v57);
  }

  if (metadataCopy)
  {
    objc_msgSend__mapPropertiesFromMetadata_toAttributes_(self, v53, metadataCopy, attributesCopy);
  }
}

- (void)_mapPropertiesFromMetadata:(id)metadata toAttributes:(id)attributes
{
  metadataCopy = metadata;
  attributesCopy = attributes;
  objc_msgSend_setMessageType_(attributesCopy, v7, @"lnk", v8);
  v12 = objc_msgSend_title(metadataCopy, v9, v10, v11);
  objc_msgSend_setUrlDescription_(attributesCopy, v13, v12, v14);

  v18 = objc_msgSend_summary(metadataCopy, v15, v16, v17);
  objc_msgSend_setContentDescription_(attributesCopy, v19, v18, v20);

  v27 = objc_msgSend_title(metadataCopy, v21, v22, v23);
  v28 = v27;
  if (!v27)
  {
    v28 = objc_msgSend_siteName(metadataCopy, v24, v25, v26);
  }

  v29 = objc_msgSend__prefixFromMetadata_(self, v24, metadataCopy, v26);
  objc_msgSend__insertLinkName_prefix_toAttributes_(self, v30, v28, v29, attributesCopy);

  if (!v27)
  {
  }
}

- (void)_insertLinkName:(id)name prefix:(id)prefix toAttributes:(id)attributes
{
  nameCopy = name;
  prefixCopy = prefix;
  attributesCopy = attributes;
  if (objc_msgSend_length(nameCopy, v9, v10, v11))
  {
    if (objc_msgSend_length(prefixCopy, v12, v13, v14))
    {
      v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], nameCopy, @"%@ : %@", v16, prefixCopy, nameCopy);

      v18 = v17;
    }

    else
    {
      v18 = nameCopy;
    }

    nameCopy = v18;
    objc_msgSend_setLinkName_(attributesCopy, v15, v18, v16);
  }
}

- (void)_insertLinkName:(id)name toAttributes:(id)attributes
{
  attributesCopy = attributes;
  nameCopy = name;
  v12 = objc_msgSend_prefix(self, v8, v9, v10);
  objc_msgSend__insertLinkName_prefix_toAttributes_(self, v11, nameCopy, v12, attributesCopy);
}

+ (CSCustomAttributeKey)lpTitleCustomKey
{
  if (qword_1EBA54218 != -1)
  {
    sub_1B7CFA868();
  }

  v3 = qword_1EBA54210;

  return v3;
}

+ (CSCustomAttributeKey)lpHasRichMediaCustomKey
{
  if (qword_1EBA54228 != -1)
  {
    sub_1B7CFA87C();
  }

  v3 = qword_1EBA54220;

  return v3;
}

+ (CSCustomAttributeKey)lpPluginPathsCustomKey
{
  if (qword_1EBA54238 != -1)
  {
    sub_1B7CFA890();
  }

  v3 = qword_1EBA54230;

  return v3;
}

+ (CSCustomAttributeKey)lpDescriptionCustomKey
{
  if (qword_1EBA54248 != -1)
  {
    sub_1B7CFA8A4();
  }

  v3 = qword_1EBA54240;

  return v3;
}

@end