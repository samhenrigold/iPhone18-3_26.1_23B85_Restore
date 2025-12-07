@interface TRIFactorDownloadValidator
+ (BOOL)validateDownloadForFactors:(id)factors withNamespace:(id)namespace paths:(id)paths container:(int *)container factorsState:(id)state assetIndexesByTreatment:(id *)treatment experimentIds:(id *)ids assetIdsByFactorPack:(id *)self0 rolloutFactorNames:(id *)location rolloutDeployments:(id *)self2 error:(id *)self3;
@end

@implementation TRIFactorDownloadValidator

+ (BOOL)validateDownloadForFactors:(id)factors withNamespace:(id)namespace paths:(id)paths container:(int *)container factorsState:(id)state assetIndexesByTreatment:(id *)treatment experimentIds:(id *)ids assetIdsByFactorPack:(id *)self0 rolloutFactorNames:(id *)location rolloutDeployments:(id *)self2 error:(id *)self3
{
  v81[1] = *MEMORY[0x277D85DE8];
  factorsCopy = factors;
  namespaceCopy = namespace;
  pathsCopy = paths;
  stateCopy = state;
  context = objc_autoreleasePoolPush();
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__9;
  v70 = __Block_byref_object_dispose__9;
  v71 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v60 = 0;
  v61 = 0;
  obj = 0;
  v59 = 0;
  v56[4] = &v66;
  v57 = 0;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __203__TRIFactorDownloadValidator_validateDownloadForFactors_withNamespace_paths_container_factorsState_assetIndexesByTreatment_experimentIds_assetIdsByFactorPack_rolloutFactorNames_rolloutDeployments_error___block_invoke;
  v56[3] = &unk_27885F630;
  v21 = MEMORY[0x2318F2490](v56);
  errorCopy = error;
  if (![factorsCopy count])
  {
    v32 = objc_alloc(MEMORY[0x277CCA9B8]);
    v80 = *MEMORY[0x277CCA450];
    v81[0] = @"Factors must be non-empty.";
    namespaceCopy = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:&v80 count:1];
    v33 = [v32 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:namespaceCopy];
LABEL_12:
    v35 = v33;
LABEL_14:
    v29 = 0;
    goto LABEL_15;
  }

  if (!namespaceCopy)
  {
    v34 = objc_alloc(MEMORY[0x277CCA9B8]);
    v78 = *MEMORY[0x277CCA450];
    v79 = @"Namespace name must be non-nil.";
    namespaceCopy = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    v33 = [v34 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:namespaceCopy];
    goto LABEL_12;
  }

  if (![TRIXPCUtils validateSafeASCIISubsetIdentifier:namespaceCopy])
  {
    namespaceCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"namespaceName(%@) can only contain alphanumeric characters, underscore (_), hyphen (-) or period (.)", namespaceCopy];
    v36 = objc_alloc(MEMORY[0x277CCA9B8]);
    v76 = *MEMORY[0x277CCA450];
    v77 = namespaceCopy;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v35 = [v36 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v37];

    goto LABEL_14;
  }

  v23 = [[TRINamespaceResolver alloc] initWithPaths:pathsCopy factorsState:stateCopy];
  v24 = v23;
  if (v23)
  {
    v55 = 0;
    v25 = [(TRINamespaceResolver *)v23 resolveFactorProviderChainForNamespaceName:namespaceCopy faultOnMissingInstalledFactors:0 installedFactorsAccessible:&v55];
    v26 = v25;
    if ((v55 & 1) == 0)
    {
      v27 = [v25 _pas_filteredArrayWithTest:&__block_literal_global_19];

      v28 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v73 = namespaceCopy;
        _os_log_impl(&dword_22EA6B000, v28, OS_LOG_TYPE_DEFAULT, "encountered inaccessible installed factors during on-demand validation for namespace %@", buf, 0xCu);
      }

      v26 = v27;
    }

    v29 = [[TRINamespaceFactorProviderChain alloc] initWithNamespaceName:namespaceCopy typedProviderChain:v26 paths:pathsCopy];

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __203__TRIFactorDownloadValidator_validateDownloadForFactors_withNamespace_paths_container_factorsState_assetIndexesByTreatment_experimentIds_assetIdsByFactorPack_rolloutFactorNames_rolloutDeployments_error___block_invoke_110;
    v48[3] = &unk_27885F678;
    v51 = &v66;
    v53 = a2;
    selfCopy = self;
    v49 = namespaceCopy;
    v52 = &v62;
    v50 = v21;
    [(TRINamespaceFactorProviderChain *)v29 computeTreatmentAssetIndexes:&v61 withAssociatedExperimentIds:&v60 andFactorPackAssetIds:&v59 withAssociatedRolloutDeployments:&v57 withExperimentFactorNames:0 andRolloutFactorNames:&obj forFactors:factorsCopy usingFilter:v48];

    v30 = 0;
    namespaceCopy = 0;
  }

  else
  {
    stateCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unable to resolve namespaces for stale factorsState: %@", stateCopy];
    v40 = objc_alloc(MEMORY[0x277CCA9B8]);
    v74 = *MEMORY[0x277CCA450];
    v75 = stateCopy;
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    namespaceCopy = [v40 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v41];

    v29 = 0;
    v30 = 2;
  }

  [(TRINamespaceFactorProviderChain *)v29 dispose];
  if (v30 == 2)
  {
    v35 = namespaceCopy;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (location)
  {
    objc_storeStrong(location, obj);
  }

  v42 = v67[5];
  if (v42)
  {
    v35 = v42;
LABEL_15:

    if (!error)
    {
LABEL_17:
      namespaceCopy = v35;
      goto LABEL_18;
    }

LABEL_16:
    objc_storeStrong(error, v35);
    errorCopy = 0;
    goto LABEL_17;
  }

  if (error)
  {
    v43 = *error;
    *error = 0;
  }

  if (treatment)
  {
    objc_storeStrong(treatment, v61);
  }

  if (ids)
  {
    objc_storeStrong(ids, v60);
  }

  if (pack)
  {
    objc_storeStrong(pack, v59);
  }

  if (deployments)
  {
    objc_storeStrong(deployments, v57);
  }

  if (container)
  {
    *container = *(v63 + 6);
  }

  errorCopy = 1;
LABEL_18:

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v66, 8);

  objc_autoreleasePoolPop(context);
  return errorCopy & 1;
}

void __203__TRIFactorDownloadValidator_validateDownloadForFactors_withNamespace_paths_container_factorsState_assetIndexesByTreatment_experimentIds_assetIdsByFactorPack_rolloutFactorNames_rolloutDeployments_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = a2;
    v7 = [v5 alloc];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a3 userInfo:v8];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

uint64_t __203__TRIFactorDownloadValidator_validateDownloadForFactors_withNamespace_paths_container_factorsState_assetIndexesByTreatment_experimentIds_assetIdsByFactorPack_rolloutFactorNames_rolloutDeployments_error___block_invoke_110(void *a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v31 = [v9 localizedDescription];
      *buf = 138412290;
      v34 = v31;
      _os_log_error_impl(&dword_22EA6B000, v10, OS_LOG_TYPE_ERROR, "Error downloading on-demand asset, %@", buf, 0xCu);
    }

    v11 = *(a1[6] + 8);
    v13 = *(v11 + 40);
    v12 = (v11 + 40);
    if (!v13)
    {
      objc_storeStrong(v12, a4);
    }

    goto LABEL_25;
  }

  if ([v8 isOnDemand])
  {
    if (![v8 hasPath])
    {
      goto LABEL_16;
    }

    v14 = [MEMORY[0x277CCAA00] defaultManager];
    v15 = [v8 path];
    if (!v15)
    {
      v32 = [MEMORY[0x277CCA890] currentHandler];
      [v32 handleFailureInMethod:a1[8] object:a1[9] file:@"TRIFactorDownloadValidator.m" lineNumber:146 description:{@"Expression was unexpectedly nil/false: %@", @"fileLevel.path"}];
    }

    v16 = [v14 fileExistsAtPath:v15];

    if (!v16)
    {
LABEL_16:
      v22 = [v8 asset];
      v23 = [v22 hasCloudKitContainer];

      if (v23)
      {
        v24 = [v8 asset];
        v25 = [v24 cloudKitContainer];
      }

      else
      {
        v25 = 1;
      }

      v26 = *(a1[7] + 8);
      v27 = *(v26 + 24);
      if (v27)
      {
        if (v27 != v25)
        {
          v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Factor %@ in namespace %@ has mismatched cloudKitContainer (%d, %d) and cannot be downloaded on-demand.", v7, a1[4], *(*(a1[7] + 8) + 24), v25];
          v28 = TRILogCategory_ClientFramework();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v34 = v17;
            _os_log_error_impl(&dword_22EA6B000, v28, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }

          (*(a1[5] + 16))();
          goto LABEL_24;
        }
      }

      else
      {
        *(v26 + 24) = v25;
      }

      v29 = 1;
      goto LABEL_26;
    }

    v17 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = a1[4];
      v19 = [v8 path];
      *buf = 138412802;
      v34 = v7;
      v35 = 2112;
      v36 = v18;
      v37 = 2112;
      v38 = v19;
      v20 = "Skipping on-demand fetch of factor %@ in namespace %@ which already has local path: %@";
LABEL_15:
      _os_log_impl(&dword_22EA6B000, v17, OS_LOG_TYPE_DEFAULT, v20, buf, 0x20u);
    }
  }

  else
  {
    v17 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v21 = a1[4];
      v19 = [v8 path];
      *buf = 138412802;
      v34 = v7;
      v35 = 2112;
      v36 = v21;
      v37 = 2112;
      v38 = v19;
      v20 = "Skipping on-demand fetch of factor %@ in namespace %@ which is not on-demand: %@";
      goto LABEL_15;
    }
  }

LABEL_24:

LABEL_25:
  v29 = 0;
LABEL_26:

  return v29;
}

@end