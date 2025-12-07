@interface TRIFlatbufferUtils
+ (id)_maAutoAssetReferencedInDir:(id)dir byFactorName:(id)name;
+ (id)clientTreatmentWithFactorLevels:(id)levels parentDir:(id)dir isRelativePath:(BOOL)path;
+ (id)convertFBFactorLevelToProtoFactorLevel:(id)level parentDir:(id)dir namespaceName:(id)name isRelativePath:(BOOL)path;
@end

@implementation TRIFlatbufferUtils

+ (id)convertFBFactorLevelToProtoFactorLevel:(id)level parentDir:(id)dir namespaceName:(id)name isRelativePath:(BOOL)path
{
  pathCopy = path;
  v107 = *MEMORY[0x277D85DE8];
  levelCopy = level;
  dirCopy = dir;
  nameCopy = name;
  v12 = objc_autoreleasePoolPush();
  v98 = objc_opt_new();
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  levelType = [levelCopy levelType];
  v16 = 0;
  v96 = v12;
  if (levelType > 2)
  {
    if (levelType <= 4)
    {
      if (levelType == 3)
      {
        levelAsInt64Val = [levelCopy levelAsInt64Val];
        [v13 setLongValue:{objc_msgSend(levelAsInt64Val, "val")}];

        v16 = 13;
      }

      else
      {
        levelAsDoubleVal = [levelCopy levelAsDoubleVal];
        [levelAsDoubleVal val];
        [v13 setDoubleValue:?];

        v16 = 15;
      }

      goto LABEL_64;
    }

    if (levelType != 5)
    {
      if (levelType == 6)
      {
        context = v13;
        v19 = objc_opt_new();
        levelAsMaRefVal = [levelCopy levelAsMaRefVal];
        if ([levelAsMaRefVal hasIsOnDemand])
        {
          [v19 setIsOnDemand:{objc_msgSend(levelAsMaRefVal, "isOnDemand")}];
        }

        if ([levelAsMaRefVal hasDownloadSize])
        {
          downloadSize = [levelAsMaRefVal downloadSize];
          asset = [v19 asset];
          [asset setSize:downloadSize];
        }

        v94 = dirCopy;
        assetName = [levelAsMaRefVal assetName];
        v24 = [assetName length];

        if (v24)
        {
          assetName2 = [levelAsMaRefVal assetName];
          asset2 = [v19 asset];
          [asset2 setName:assetName2];
        }

        v27 = objc_alloc(MEMORY[0x277CCACA8]);
        type = [levelAsMaRefVal type];
        specifier = [levelAsMaRefVal specifier];
        version = [levelAsMaRefVal version];
        v31 = [v27 initWithFormat:@"%@-%@-%@", type, specifier, version];
        asset3 = [v19 asset];
        [asset3 setAssetId:v31];

        name = [levelCopy name];
        dirCopy = v94;
        v34 = [self _maAutoAssetReferencedInDir:v94 byFactorName:name];

        if (v34)
        {
          [v19 setPath:v34];
        }

        if ([levelAsMaRefVal hasFileType] && objc_msgSend(levelAsMaRefVal, "fileType") == 1)
        {
          [context setFileValue:v19];
          v16 = 100;
        }

        else
        {
          [context setDirectoryValue:v19];
          v16 = 101;
        }

        v13 = context;
      }

      goto LABEL_64;
    }

    v95 = dirCopy;
    contexta = objc_autoreleasePoolPush();
    v37 = objc_opt_new();
    levelAsTrialAssetVal = [levelCopy levelAsTrialAssetVal];
    path = [levelAsTrialAssetVal path];
    v40 = [path length];

    if (v40)
    {
      path2 = [levelAsTrialAssetVal path];
      if (pathCopy)
      {
        v42 = [v95 stringByAppendingPathComponent:path2];
        [v37 setPath:v42];
      }

      else
      {
        [v37 setPath:path2];
      }
    }

    else
    {
      [v37 setHasPath:0];
    }

    if ([levelAsTrialAssetVal hasDownloadSize])
    {
      downloadSize2 = [levelAsTrialAssetVal downloadSize];
      asset4 = [v37 asset];
      [asset4 setSize:downloadSize2];
    }

    if ([levelAsTrialAssetVal hasOnDemandFlag])
    {
      [v37 setIsOnDemand:{objc_msgSend(levelAsTrialAssetVal, "isOnDemand")}];
    }

    assetName3 = [levelAsTrialAssetVal assetName];
    v47 = [assetName3 length];

    if (v47)
    {
      assetName4 = [levelAsTrialAssetVal assetName];
      asset5 = [v37 asset];
      [asset5 setName:assetName4];
    }

    assetId = [levelAsTrialAssetVal assetId];
    asset6 = [v37 asset];
    [asset6 setAssetId:assetId];

    cloudKitMetadataType = [levelAsTrialAssetVal cloudKitMetadataType];
    if (cloudKitMetadataType != 1)
    {
      if (cloudKitMetadataType)
      {
LABEL_60:
        if ([levelAsTrialAssetVal fileType] == 1)
        {
          [v13 setFileValue:v37];
          v16 = 100;
        }

        else
        {
          [v13 setDirectoryValue:v37];
          v16 = 101;
        }

        v65 = objc_autoreleasePoolPush();
        v66 = objc_alloc(MEMORY[0x277CBEB38]);
        metadata = [levelCopy metadata];
        v68 = [v66 initWithCapacity:{objc_msgSend(metadata, "count")}];

        metadata2 = [levelCopy metadata];
        v103[0] = MEMORY[0x277D85DD0];
        v103[1] = 3221225472;
        v103[2] = __100__TRIFlatbufferUtils_convertFBFactorLevelToProtoFactorLevel_parentDir_namespaceName_isRelativePath___block_invoke;
        v103[3] = &unk_27885ED68;
        v104 = v68;
        v70 = v68;
        [metadata2 enumerateObjectsUsingBlock:v103];

        [v13 setMetadata:v70];
        objc_autoreleasePoolPop(v65);

        objc_autoreleasePoolPop(contexta);
        dirCopy = v95;
        goto LABEL_64;
      }

      cloudKitMetadataAsTreatment = TRILogCategory_ClientFramework();
      if (!os_log_type_enabled(cloudKitMetadataAsTreatment, OS_LOG_TYPE_ERROR))
      {
LABEL_59:

        goto LABEL_60;
      }

      name2 = [levelCopy name];
      *buf = 138543362;
      v106 = name2;
      _os_log_error_impl(&dword_22EA6B000, cloudKitMetadataAsTreatment, OS_LOG_TYPE_ERROR, "CloudKit metadata type as none for: %{public}@", buf, 0xCu);
LABEL_58:

      goto LABEL_59;
    }

    cloudKitMetadataAsTreatment = [levelAsTrialAssetVal cloudKitMetadataAsTreatment];
    container = [cloudKitMetadataAsTreatment container];
    if (container == 2)
    {
      asset7 = [v37 asset];
      v56 = asset7;
      v59 = 2;
    }

    else
    {
      if (container != 1)
      {
        if (container)
        {
LABEL_54:
          if ([cloudKitMetadataAsTreatment hasCkIndex])
          {
            assetIndex = [cloudKitMetadataAsTreatment assetIndex];
            asset8 = [v37 asset];
            [asset8 setCloudKitIndex:assetIndex];
          }

          treatmentId = [cloudKitMetadataAsTreatment treatmentId];
          v63 = [treatmentId length];

          if (!v63)
          {
            goto LABEL_59;
          }

          name2 = [cloudKitMetadataAsTreatment treatmentId];
          asset9 = [v37 asset];
          [asset9 setTreatmentId:name2];

          goto LABEL_58;
        }

        v56 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          name3 = [levelCopy name];
          *buf = 138543362;
          v106 = name3;
          _os_log_impl(&dword_22EA6B000, v56, OS_LOG_TYPE_INFO, "CloudKit container unknown for: %{public}@", buf, 0xCu);
        }

LABEL_53:

        goto LABEL_54;
      }

      asset7 = [v37 asset];
      v56 = asset7;
      v59 = 1;
    }

    [asset7 setCloudKitContainer:v59];
    goto LABEL_53;
  }

  if (levelType)
  {
    if (levelType == 1)
    {
      levelAsBoolVal = [levelCopy levelAsBoolVal];
      [v13 setBooleanValue:{objc_msgSend(levelAsBoolVal, "val")}];

      v16 = 10;
    }

    else if (levelType == 2)
    {
      levelAsStringVal = [levelCopy levelAsStringVal];
      [v13 setStringValue:levelAsStringVal];

      v16 = 11;
    }
  }

  else
  {
    v35 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      name4 = [levelCopy name];
      *buf = 138543362;
      v106 = name4;
      _os_log_error_impl(&dword_22EA6B000, v35, OS_LOG_TYPE_ERROR, "Factor level type set to none: %{public}@", buf, 0xCu);
    }

    v16 = 0;
  }

LABEL_64:
  v71 = objc_autoreleasePoolPush();
  v72 = [objc_opt_new() init];
  metadata3 = [levelCopy metadata];
  v101[0] = MEMORY[0x277D85DD0];
  v101[1] = 3221225472;
  v101[2] = __100__TRIFlatbufferUtils_convertFBFactorLevelToProtoFactorLevel_parentDir_namespaceName_isRelativePath___block_invoke_2;
  v101[3] = &unk_27885ED68;
  v74 = v72;
  v102 = v74;
  [metadata3 enumerateObjectsUsingBlock:v101];

  if ([v74 count])
  {
    [v13 setMetadata:v74];
  }

  objc_autoreleasePoolPop(v71);
  [v98 setLevel:v13];
  factorNamespaceName = [levelCopy factorNamespaceName];
  v76 = [factorNamespaceName length];

  if (v76)
  {
    factorNamespaceName2 = [levelCopy factorNamespaceName];
    [v14 setNamespaceName:factorNamespaceName2];

    v78 = nameCopy;
  }

  else
  {
    v78 = nameCopy;
    [v14 setNamespaceName:nameCopy];
  }

  if ([levelCopy hasNamespaceId])
  {
    [v14 setNamespaceId:{objc_msgSend(levelCopy, "namespaceId")}];
  }

  else
  {
    v79 = MEMORY[0x277D73B50];
    namespaceName = [v14 namespaceName];
    [v14 setNamespaceId:{objc_msgSend(v79, "namespaceIdFromName:", namespaceName)}];
  }

  name5 = [levelCopy name];
  [v14 setName:name5];

  alias = [levelCopy alias];
  [v14 setAlias:alias];

  [v14 setType:v16];
  factorId = [levelCopy factorId];
  v84 = [factorId length];

  if (v84)
  {
    factorId2 = [levelCopy factorId];
    [v14 setId_p:factorId2];
  }

  v86 = objc_autoreleasePoolPush();
  v87 = objc_opt_new();
  metadata4 = [levelCopy metadata];
  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __100__TRIFlatbufferUtils_convertFBFactorLevelToProtoFactorLevel_parentDir_namespaceName_isRelativePath___block_invoke_3;
  v99[3] = &unk_27885ED68;
  v100 = v87;
  v89 = v87;
  [metadata4 enumerateObjectsUsingBlock:v99];

  [v14 setMetadataKeysArray:v89];
  objc_autoreleasePoolPop(v86);
  [v98 setFactor:v14];

  objc_autoreleasePoolPop(v96);

  return v98;
}

void __100__TRIFlatbufferUtils_convertFBFactorLevelToProtoFactorLevel_parentDir_namespaceName_isRelativePath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 val];
  v4 = [v3 key];

  [v2 setObject:v5 forKey:v4];
}

void __100__TRIFlatbufferUtils_convertFBFactorLevelToProtoFactorLevel_parentDir_namespaceName_isRelativePath___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 val];
  v4 = [v3 key];

  [v2 setObject:v5 forKey:v4];
}

void __100__TRIFlatbufferUtils_convertFBFactorLevelToProtoFactorLevel_parentDir_namespaceName_isRelativePath___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 key];
  [v2 addObject:v3];
}

+ (id)_maAutoAssetReferencedInDir:(id)dir byFactorName:(id)name
{
  v26 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  nameCopy = name;
  v7 = objc_autoreleasePoolPush();
  triFilenameForFactorName = [nameCopy triFilenameForFactorName];
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/maRefs/%@", dirCopy, triFilenameForFactorName];
  v21 = 0;
  v10 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v9 encoding:4 error:&v21];
  v11 = v21;
  triTrim = [v10 triTrim];

  if (!triTrim)
  {
    if (v11)
    {
      domain = [v11 domain];
      if ([domain isEqualToString:*MEMORY[0x277CCA050]])
      {
        code = [v11 code];

        if (code == 260)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    v19 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v23 = v9;
      v24 = 2112;
      v25 = v11;
      _os_log_error_impl(&dword_22EA6B000, v19, OS_LOG_TYPE_ERROR, "Unable to read MA path from reference path: %{public}@: %@", buf, 0x16u);
    }

LABEL_17:

LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  if (![triTrim length])
  {
    v19 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = nameCopy;
      _os_log_impl(&dword_22EA6B000, v19, OS_LOG_TYPE_DEFAULT, "Path for factor %{public}@ is empty. This usually means that the level is about to be deleted.", buf, 0xCu);
    }

    goto LABEL_17;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [defaultManager fileExistsAtPath:triTrim];

  if ((v14 & 1) == 0)
  {
    v15 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = triTrim;
      _os_log_error_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_ERROR, "Trial asset path does not exist on disk: %{public}@.", buf, 0xCu);
    }
  }

  v16 = triTrim;
LABEL_19:

  objc_autoreleasePoolPop(v7);

  return v16;
}

+ (id)clientTreatmentWithFactorLevels:(id)levels parentDir:(id)dir isRelativePath:(BOOL)path
{
  pathCopy = path;
  v29 = *MEMORY[0x277D85DE8];
  levelsCopy = levels;
  dirCopy = dir;
  v21 = objc_alloc_init(MEMORY[0x277D73AF0]);
  v8 = objc_alloc(MEMORY[0x277CBEB18]);
  levels = [levelsCopy levels];
  v10 = [v8 initWithCapacity:{objc_msgSend(levels, "count")}];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = levelsCopy;
  obj = [levelsCopy levels];
  v12 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        namespaceName = [v11 namespaceName];
        v19 = [TRIFlatbufferUtils convertFBFactorLevelToProtoFactorLevel:v16 parentDir:dirCopy namespaceName:namespaceName isRelativePath:pathCopy];

        [v10 addObject:v19];
        objc_autoreleasePoolPop(v17);
      }

      v13 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  [v21 setFactorLevelArray:v10];

  return v21;
}

@end