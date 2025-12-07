@interface NTKParmesanResourceDirectoryEditor
+ (id)linkParmesanAsset:(id)asset from:(id)from to:(id)to;
+ (void)transcodeAssetsWithIdentifiers:(id)identifiers to:(id)to completion:(id)completion;
@end

@implementation NTKParmesanResourceDirectoryEditor

+ (id)linkParmesanAsset:(id)asset from:(id)from to:(id)to
{
  v36 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  fromCopy = from;
  toCopy = to;
  v12 = objc_msgSend_logObject(NTKParmesanFaceBundle, v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = assetCopy;
    v34 = 2112;
    v35 = toCopy;
    _os_log_impl(&dword_23BF0C000, v12, OS_LOG_TYPE_DEFAULT, "linkParmesanAsset: linking existing photo %@ into the new resource directory %@", buf, 0x16u);
  }

  v15 = objc_msgSend_copy(assetCopy, v13, v14);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = objc_msgSend_layouts(assetCopy, v16, v17, 0);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v27, v31, 16);
  if (v20)
  {
    v22 = v20;
    v23 = *v28;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v18);
        }

        if (!objc_msgSend_linkFromSrcDirectory_toDstDirectory_(*(*(&v27 + 1) + 8 * i), v21, fromCopy, toCopy))
        {

          v25 = 0;
          goto LABEL_13;
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v27, v31, 16);
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v25 = v15;
LABEL_13:

  return v25;
}

+ (void)transcodeAssetsWithIdentifiers:(id)identifiers to:(id)to completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  toCopy = to;
  completionCopy = completion;
  v12 = objc_msgSend_logObject(NTKParmesanFaceBundle, v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v24 = objc_msgSend_count(identifiersCopy, v13, v14);
    v25 = 2112;
    v26 = toCopy;
    v27 = 2112;
    v28 = identifiersCopy;
    _os_log_impl(&dword_23BF0C000, v12, OS_LOG_TYPE_DEFAULT, "transcodeAssetsWithIdentifiers: transcoding %ld new assets to %@\x04\n%@", buf, 0x20u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23BF1C684;
  v19[3] = &unk_278BA6C88;
  v21 = identifiersCopy;
  v22 = completionCopy;
  v20 = toCopy;
  v15 = identifiersCopy;
  v16 = completionCopy;
  v17 = toCopy;
  objc_msgSend_processAssetsWithIdentifiers_dstDir_completion_(NTKParmesanPhotoProcessor, v18, v15, v17, v19);
}

@end