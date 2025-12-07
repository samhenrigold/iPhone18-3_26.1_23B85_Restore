@interface CESRRawSpeechProfileTools
+ (id)convertRawSpeechProfile:(id)profile deviceId:(id)id userId:(id)userId omitItemTypes:(id)types error:(id *)error;
+ (id)itemWithType:(int64_t)type itemId:(id)id fieldType:(int64_t)fieldType value:(id)value;
+ (id)mergeMultiUserPrimaryProfile:(id)profile withCompanionProfiles:(id)profiles error:(id *)error;
+ (id)placeholderItemIdWithCategoryName:(id)name;
+ (id)vocabularyItemsOfType:(int64_t)type fromRawSpeechProfile:(id)profile error:(id *)error;
@end

@implementation CESRRawSpeechProfileTools

+ (id)itemWithType:(int64_t)type itemId:(id)id fieldType:(int64_t)fieldType value:(id)value
{
  idCopy = id;
  valueCopy = value;
  v11 = objc_alloc_init(MEMORY[0x277D22D28]);
  v12 = [v11 setItemType:type itemId:idCopy error:0];
  v13 = [v11 addFieldWithType:fieldType value:valueCopy error:0];
  v14 = [v11 buildItemWithError:0];

  return v14;
}

+ (id)placeholderItemIdWithCategoryName:(id)name
{
  nameCopy = name;
  if (placeholderItemIdWithCategoryName__onceToken != -1)
  {
    dispatch_once(&placeholderItemIdWithCategoryName__onceToken, &__block_literal_global_2150);
  }

  if (!nameCopy)
  {
    nameCopy = @"unspecified";
  }

  v4 = [placeholderItemIdWithCategoryName__categoryCounts objectForKey:nameCopy];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_283952CC0;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "integerValue") + 1}];

  [placeholderItemIdWithCategoryName__categoryCounts setObject:v6 forKey:nameCopy];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@", @"speechprofile", nameCopy, v6];

  return v7;
}

uint64_t __63__CESRRawSpeechProfileTools_placeholderItemIdWithCategoryName___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = placeholderItemIdWithCategoryName__categoryCounts;
  placeholderItemIdWithCategoryName__categoryCounts = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)mergeMultiUserPrimaryProfile:(id)profile withCompanionProfiles:(id)profiles error:(id *)error
{
  v124[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  profilesCopy = profiles;
  v8 = profilesCopy;
  v80 = profileCopy;
  v81 = profilesCopy;
  if (!profileCopy || ![profilesCopy count])
  {
    v49 = MEMORY[0x277CCA9B8];
    v123 = *MEMORY[0x277CCA450];
    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing required primary/companion profile data (primary: %@ companion: %@)", profileCopy, v8];
    v124[0] = v50;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:&v123 count:1];
    v52 = [v49 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:9 userInfo:v51];
    if (error && v52)
    {
      v52 = v52;
      *error = v52;
    }

    v48 = 0;
    goto LABEL_70;
  }

  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = __Block_byref_object_copy__2166;
  v109 = __Block_byref_object_dispose__2167;
  v110 = 0;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = (v106 + 5);
  obj = v106[5];
  v102[0] = MEMORY[0x277D85DD0];
  v102[1] = 3221225472;
  v102[2] = __86__CESRRawSpeechProfileTools_mergeMultiUserPrimaryProfile_withCompanionProfiles_error___block_invoke;
  v102[3] = &unk_27857F8A0;
  v11 = v9;
  v103 = v11;
  v12 = [profileCopy enumerateDatasetsWithError:&obj usingBlock:v102];
  objc_storeStrong(v10, obj);
  if ((v12 & 1) == 0)
  {
    if (error)
    {
      v53 = v106[5];
      if (v53)
      {
        *error = v53;
      }
    }

    v48 = 0;
    v13 = v103;
    goto LABEL_69;
  }

  v79 = [v11 count];
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v13 = v81;
  v14 = [v13 countByEnumeratingWithState:&v98 objects:v122 count:16];
  if (v14)
  {
    v15 = *v99;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v99 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v98 + 1) + 8 * i);
        v18 = (v106 + 5);
        v97 = v106[5];
        v95[0] = MEMORY[0x277D85DD0];
        v95[1] = 3221225472;
        v95[2] = __86__CESRRawSpeechProfileTools_mergeMultiUserPrimaryProfile_withCompanionProfiles_error___block_invoke_2;
        v95[3] = &unk_27857F8A0;
        v96 = v11;
        LOBYTE(v17) = [v17 enumerateDatasetsWithError:&v97 usingBlock:v95];
        objc_storeStrong(v18, v97);
        if ((v17 & 1) == 0)
        {
          if (error)
          {
            v54 = v106[5];
            if (v54)
            {
              *error = v54;
            }
          }

          v48 = 0;
          goto LABEL_69;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v98 objects:v122 count:16];
    }

    while (v14);
  }

  v19 = MEMORY[0x277D22D48];
  v20 = [v11 count];
  v21 = (v106 + 5);
  v94 = v106[5];
  v13 = [v19 syntheticWithDatasetCount:v20 error:&v94];
  objc_storeStrong(v21, v94);
  if (!v13)
  {
    if (error)
    {
      v55 = v106[5];
      v48 = 0;
      if (v55)
      {
        v13 = 0;
        v48 = 0;
        *error = v55;
      }
    }

    else
    {
      v48 = 0;
    }

    goto LABEL_69;
  }

  v22 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v119 = "+[CESRRawSpeechProfileTools mergeMultiUserPrimaryProfile:withCompanionProfiles:error:]";
    v120 = 2112;
    v121 = v13;
    _os_log_impl(&dword_225EEB000, v22, OS_LOG_TYPE_INFO, "%s Preparing to merge with profileInfo: %@", buf, 0x16u);
  }

  v23 = (v106 + 5);
  v93 = v106[5];
  v78 = [MEMORY[0x277D22D40] builderWithProfileInfo:v13 format:1 error:&v93];
  objc_storeStrong(v23, v93);
  if (!v78)
  {
    v48 = 0;
    if (error)
    {
      v56 = v106[5];
      if (v56)
      {
        v48 = 0;
        *error = v56;
      }
    }

    goto LABEL_68;
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v75 = v11;
  v24 = [v75 countByEnumeratingWithState:&v89 objects:v117 count:16];
  if (!v24)
  {
    goto LABEL_32;
  }

  v25 = 0;
  v77 = *v90;
  while (2)
  {
    v26 = 0;
    v27 = v25 + 1;
    v72 = v25 + v24;
    v76 = v24;
    do
    {
      if (*v90 != v77)
      {
        objc_enumerationMutation(v75);
      }

      v28 = *(*(&v89 + 1) + 8 * v26);
      datasetInfo = [v28 datasetInfo];
      v30 = datasetInfo;
      if (v27 <= v79)
      {
        goto LABEL_28;
      }

      deviceId = [datasetInfo deviceId];
      v32 = v30;
      v33 = [deviceId length] == 0;

      if (v33)
      {
        v58 = MEMORY[0x277CCA9B8];
        v115 = *MEMORY[0x277CCA450];
        v59 = MEMORY[0x277CCACA8];
        deviceId2 = [v32 deviceId];
        v61 = [v59 stringWithFormat:@"Companion profile has invalid deviceId: %@ in dataset: %@", deviceId2, v32];
        v116 = v61;
        v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
        v63 = [v58 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:7 userInfo:v62];
        goto LABEL_61;
      }

      userId = [v32 userId];
      v35 = [userId length] == 0;

      if (v35)
      {
        v64 = MEMORY[0x277CCA9B8];
        v113 = *MEMORY[0x277CCA450];
        v65 = MEMORY[0x277CCACA8];
        deviceId2 = [v32 userId];
        v61 = [v65 stringWithFormat:@"Companion profile has invalid userId: %@ in dataset: %@", deviceId2, v32];
        v114 = v61;
        v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
        v63 = [v64 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:8 userInfo:v62];
LABEL_61:
        if (error && v63)
        {
          v63 = v63;
          *error = v63;
        }

        goto LABEL_65;
      }

      v30 = v32;
      itemType = [v32 itemType];
      if (itemType > 0x15)
      {
        goto LABEL_76;
      }

      if (((1 << itemType) & 0x20000E) != 0)
      {
        goto LABEL_28;
      }

      if (((1 << itemType) & 0x10020) == 0)
      {
LABEL_76:
        v68 = MEMORY[0x277CCA9B8];
        v111 = *MEMORY[0x277CCA450];
        deviceId2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dataset: %@ not applicable from companion profile", v32];
        v112 = deviceId2;
        v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
        v69 = [v68 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:9 userInfo:v61];
        v62 = v69;
        if (error && v69)
        {
          v70 = v69;
          *error = v62;
        }

LABEL_65:

LABEL_66:
LABEL_67:

        v48 = 0;
        goto LABEL_68;
      }

      v73 = objc_alloc(MEMORY[0x277D22D08]);
      itemType2 = [v32 itemType];
      originAppId = [v32 originAppId];
      userId2 = [v32 userId];
      itemCount = [v32 itemCount];
      v40 = (v106 + 5);
      v88 = v106[5];
      LODWORD(v71) = itemCount;
      v41 = [v73 initWithItemType:itemType2 originAppId:originAppId deviceId:0 userId:userId2 lastModifiedTime:0 capturedTime:0 itemCount:v71 error:&v88];
      objc_storeStrong(v40, v88);

      v30 = v41;
      if (!v41)
      {
        if (error)
        {
          v67 = v106[5];
          if (v67)
          {
            *error = v67;
          }
        }

        goto LABEL_67;
      }

LABEL_28:
      v42 = (v106 + 5);
      v87 = v106[5];
      v32 = v30;
      v43 = [v78 addDataset:v30 error:&v87];
      objc_storeStrong(v42, v87);
      v45 = (v106 + 5);
      v44 = v106[5];
      if (!v43)
      {
        if (error && v44)
        {
          *error = v44;
        }

        goto LABEL_66;
      }

      v86 = v106[5];
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __86__CESRRawSpeechProfileTools_mergeMultiUserPrimaryProfile_withCompanionProfiles_error___block_invoke_35;
      v83[3] = &unk_27857F8C8;
      v46 = v43;
      v84 = v46;
      v85 = &v105;
      v47 = [v28 enumerateItemsWithError:&v86 usingBlock:v83];
      objc_storeStrong(v45, v86);
      if ((v47 & 1) == 0)
      {
        if (error)
        {
          v57 = v106[5];
          if (v57)
          {
            *error = v57;
          }
        }

        goto LABEL_66;
      }

      ++v26;
      ++v27;
    }

    while (v76 != v26);
    v24 = [v75 countByEnumeratingWithState:&v89 objects:v117 count:16];
    v25 = v72;
    if (v24)
    {
      continue;
    }

    break;
  }

LABEL_32:

  v48 = [v78 buildWithError:error];
LABEL_68:

LABEL_69:
  _Block_object_dispose(&v105, 8);

LABEL_70:

  return v48;
}

uint64_t __86__CESRRawSpeechProfileTools_mergeMultiUserPrimaryProfile_withCompanionProfiles_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 datasetInfo];
  v5 = [v4 itemType];

  if (v5 == 4)
  {
    [*(a1 + 32) addObject:v3];
  }

  return 1;
}

uint64_t __86__CESRRawSpeechProfileTools_mergeMultiUserPrimaryProfile_withCompanionProfiles_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 datasetInfo];
  v5 = [v4 itemType];

  if (v5 <= 0x15 && ((1 << v5) & 0x21002E) != 0)
  {
    [*(a1 + 32) addObject:v3];
  }

  return 1;
}

BOOL __86__CESRRawSpeechProfileTools_mergeMultiUserPrimaryProfile_withCompanionProfiles_error___block_invoke_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 addItem:a2 error:&obj];
  objc_storeStrong((v3 + 40), obj);

  return v4 != 0;
}

+ (id)convertRawSpeechProfile:(id)profile deviceId:(id)id userId:(id)userId omitItemTypes:(id)types error:(id *)error
{
  v94 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  idCopy = id;
  userIdCopy = userId;
  typesCopy = types;
  v68 = KVItemTypeToNumber();
  v89[0] = v68;
  v12 = KVItemTypeToNumber();
  v89[1] = v12;
  v13 = KVItemTypeToNumber();
  v89[2] = v13;
  v14 = KVItemTypeToNumber();
  v89[3] = v14;
  v15 = KVItemTypeToNumber();
  v89[4] = v15;
  v16 = KVItemTypeToNumber();
  v89[5] = v16;
  v17 = KVItemTypeToNumber();
  v89[6] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:7];
  v19 = typesCopy;
  v20 = v18;
  errorCopy = error;
  if ([v19 count])
  {
    v21 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v20, "count")}];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ___applyItemTypeFilter_block_invoke;
    v91 = &unk_27857F8F0;
    v92 = v19;
    v22 = v21;
    v93 = v22;
    [v20 enumerateObjectsUsingBlock:buf];
    v23 = v93;
    v24 = v22;

    error = errorCopy;
  }

  else
  {
    v24 = v20;
  }

  v63 = v19;
  v25 = MEMORY[0x277D22D40];
  v26 = [MEMORY[0x277D22D48] syntheticWithDatasetCount:objc_msgSend(v24 error:{"count"), error}];
  v86 = 0;
  v27 = [v25 builderWithProfileInfo:v26 format:1 error:&v86];
  v28 = v86;

  if (!v27)
  {
    v52 = 0;
    if (error)
    {
      v54 = v63;
      if (v28)
      {
        v55 = v28;
        v52 = 0;
        *error = v28;
      }
    }

    else
    {
      v54 = v63;
    }

    goto LABEL_57;
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v62 = v24;
  obj = v24;
  v67 = [obj countByEnumeratingWithState:&v82 objects:v88 count:16];
  if (!v67)
  {
    goto LABEL_32;
  }

  v69 = *v83;
  v64 = v27;
  while (2)
  {
    for (i = 0; i != v67; ++i)
    {
      if (*v83 != v69)
      {
        objc_enumerationMutation(obj);
      }

      v30 = KVItemTypeFromNumber();
      v31 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
      {
        v49 = v31;
        v50 = KVItemTypeDescription();
        *buf = 136315394;
        *&buf[4] = "+[CESRRawSpeechProfileTools convertRawSpeechProfile:deviceId:userId:omitItemTypes:error:]";
        *&buf[12] = 2112;
        *&buf[14] = v50;
        _os_log_debug_impl(&dword_225EEB000, v49, OS_LOG_TYPE_DEBUG, "%s Extracting and converting vocabulary items of type: %@ from rawSpeechProfile", buf, 0x16u);
      }

      v81 = v28;
      v32 = [CESRRawSpeechProfileTools vocabularyItemsOfType:v30 fromRawSpeechProfile:profileCopy error:&v81];
      v33 = v81;

      if (!v32)
      {
        if (error)
        {
          v24 = v62;
          v54 = v63;
          if (v33)
          {
            v56 = v33;
            *error = v33;
          }

          v37 = v33;
          goto LABEL_51;
        }

        v37 = v33;
LABEL_50:
        v24 = v62;
        v54 = v63;
LABEL_51:

        v52 = 0;
        v28 = v37;
        goto LABEL_57;
      }

      v34 = objc_alloc(MEMORY[0x277D22D08]);
      v35 = [v32 count];
      v80 = v33;
      LODWORD(v61) = v35;
      v36 = [v34 initWithItemType:v30 originAppId:0 deviceId:idCopy userId:userIdCopy lastModifiedTime:0 capturedTime:0 itemCount:v61 error:&v80];
      v37 = v80;

      if (!v36)
      {
        if (error && v37)
        {
          v57 = v37;
          *error = v37;
        }

        goto LABEL_50;
      }

      v79 = v37;
      v38 = [v27 addDataset:v36 error:&v79];
      v28 = v79;

      if (!v38)
      {
        if (error && v28)
        {
          v58 = v28;
          *error = v28;
        }

LABEL_49:
        v37 = v28;
        goto LABEL_50;
      }

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v39 = v32;
      v40 = [v39 countByEnumeratingWithState:&v75 objects:v87 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v76;
LABEL_17:
        v43 = 0;
        v44 = v28;
        while (1)
        {
          if (*v76 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v45 = *(*(&v75 + 1) + 8 * v43);
          v74 = v44;
          v46 = [v38 addItem:v45 error:&v74];
          v28 = v74;

          if (!v46)
          {
            break;
          }

          ++v43;
          v44 = v28;
          if (v41 == v43)
          {
            v41 = [v39 countByEnumeratingWithState:&v75 objects:v87 count:16];
            if (v41)
            {
              goto LABEL_17;
            }

            v47 = 1;
            error = errorCopy;
            goto LABEL_28;
          }
        }

        v47 = 0;
        error = errorCopy;
        if (!errorCopy)
        {
LABEL_28:
          v27 = v64;
          goto LABEL_29;
        }

        v27 = v64;
        if (v28)
        {
          v48 = v28;
          v47 = 0;
          *errorCopy = v28;
        }
      }

      else
      {
        v47 = 1;
      }

LABEL_29:

      if (!v47)
      {
        goto LABEL_49;
      }
    }

    v67 = [obj countByEnumeratingWithState:&v82 objects:v88 count:16];
    if (v67)
    {
      continue;
    }

    break;
  }

LABEL_32:
  v51 = v28;

  v73 = v28;
  v52 = [v27 buildWithError:&v73];
  v28 = v73;

  if (v52)
  {
    v53 = v52;
    v24 = v62;
    v54 = v63;
  }

  else
  {
    v24 = v62;
    v54 = v63;
    if (error && v28)
    {
      v59 = v28;
      *error = v28;
    }
  }

LABEL_57:

  return v52;
}

+ (id)vocabularyItemsOfType:(int64_t)type fromRawSpeechProfile:(id)profile error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  if (type <= 3)
  {
    switch(type)
    {
      case 1:
        v8 = off_27857E040;
        break;
      case 2:
        v8 = off_27857E038;
        break;
      case 3:
        v8 = off_27857E030;
        break;
      default:
        goto LABEL_21;
    }
  }

  else if (type > 15)
  {
    if (type == 16)
    {
      v8 = off_27857E060;
    }

    else
    {
      if (type != 21)
      {
        goto LABEL_21;
      }

      v8 = off_27857E048;
    }
  }

  else if (type == 4)
  {
    v8 = off_27857E050;
  }

  else
  {
    if (type != 5)
    {
      goto LABEL_21;
    }

    v8 = off_27857E058;
  }

  v9 = objc_alloc_init(*v8);
  if (v9)
  {
    v10 = v9;
    v11 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      v19 = v11;
      v20 = KVItemTypeDescription();
      *buf = 136315394;
      v22 = "+[CESRRawSpeechProfileTools vocabularyItemsOfType:fromRawSpeechProfile:error:]";
      v23 = 2112;
      v24 = v20;
      _os_log_debug_impl(&dword_225EEB000, v19, OS_LOG_TYPE_DEBUG, "%s Extracting vocabulary items of type: %@ from rawSpeechProfile.", buf, 0x16u);
    }

    v12 = [CESRRawSpeechProfileExtractor extractItemsFromRawSpeechProfile:profileCopy converter:v10 error:error];
    goto LABEL_25;
  }

LABEL_21:
  v13 = MEMORY[0x277CCA9B8];
  v25 = *MEMORY[0x277CCA450];
  v14 = MEMORY[0x277CCACA8];
  v10 = KVItemTypeDescription();
  v15 = [v14 stringWithFormat:@"Target item type: %@ not supported.", v10];
  v26[0] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v17 = [v13 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:4 userInfo:v16];
  if (error && v17)
  {
    v17 = v17;
    *error = v17;
  }

  v12 = 0;
LABEL_25:

  return v12;
}

@end