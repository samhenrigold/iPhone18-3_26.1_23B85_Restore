@interface FlexSongMetadataReaderUtils
+ (id)addAnalysisMetadataToDictionary:(id)dictionary pathToRoot:(id)root;
@end

@implementation FlexSongMetadataReaderUtils

+ (id)addAnalysisMetadataToDictionary:(id)dictionary pathToRoot:(id)root
{
  v85 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  rootCopy = root;
  v72 = objc_opt_new();
  v73 = rootCopy;
  v71 = objc_msgSend_stringByAppendingPathComponent_(rootCopy, v6, @"ANALYSIS", v7, v8);
  v12 = objc_msgSend_stringByAppendingPathComponent_(v71, v9, @"ONSET", v10, v11);
  v17 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v13, v14, v15, v16);
  v20 = objc_msgSend_contentsOfDirectoryAtPath_error_(v17, v18, v12, 0, v19);

  v75 = objc_opt_new();
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v20;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v80, v84, 16);
  if (v22)
  {
    v26 = v22;
    v27 = *v81;
    v76 = *v81;
    do
    {
      v28 = 0;
      v77 = v26;
      do
      {
        if (*v81 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v80 + 1) + 8 * v28);
        v30 = objc_msgSend_stringByAppendingPathComponent_(v12, v23, v29, v24, v25);
        v79 = 0;
        v32 = objc_msgSend_stringWithContentsOfFile_encoding_error_(MEMORY[0x277CCACA8], v31, v30, 4, &v79);
        v36 = v79;
        if (!v36)
        {
          v37 = v12;
          v38 = objc_msgSend_componentsSeparatedByString_(v32, v33, @"\n", v34, v35);
          v43 = objc_msgSend_mutableCopy(v38, v39, v40, v41, v42);

          v47 = objc_msgSend_indexesOfObjectsPassingTest_(v43, v44, &unk_285EA0430, v45, v46);
          objc_msgSend_removeObjectsAtIndexes_(v43, v48, v47, v49, v50);
          v55 = objc_msgSend_stringByDeletingPathExtension(v29, v51, v52, v53, v54);
          v58 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v55, v56, @"_onset", &stru_285EA09B0, v57);

          if (v43)
          {
            v61 = v58 == 0;
          }

          else
          {
            v61 = 1;
          }

          if (!v61)
          {
            objc_msgSend_setObject_forKey_(v75, v59, v43, v58, v60);
          }

          v12 = v37;
          v27 = v76;
          v26 = v77;
        }

        ++v28;
      }

      while (v26 != v28);
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v80, v84, 16);
    }

    while (v26);
  }

  objc_msgSend_setObject_forKey_(v72, v62, v75, @"onsets", v63);
  v67 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEB38], v64, dictionaryCopy, v65, v66);
  objc_msgSend_setObject_forKey_(v67, v68, v72, @"analysis", v69);

  return v67;
}

@end