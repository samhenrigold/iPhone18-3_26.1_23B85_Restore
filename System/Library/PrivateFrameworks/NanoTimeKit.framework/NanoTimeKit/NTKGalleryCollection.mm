@interface NTKGalleryCollection
+ (id)_blackcombFacesForDevice:(id)device;
+ (id)_newFacesExcludingRestrictedForDevice:(id)device;
+ (id)_newFacesForDevice:(id)device;
+ (id)_photoFacesForDevice:(id)device;
+ (id)_whistlerSubdialsFacesForDevice:(id)device;
+ (id)galleryCollectionsForDevice:(id)device;
- (NTKGalleryCollectionDelegate)delegate;
- (id)faceAtIndex:(unint64_t)index;
- (id)identifierForFaceAtIndex:(unint64_t)index;
- (unint64_t)indexOfFace:(id)face;
- (unint64_t)numberOfFaces;
- (void)enumerateFaceNamesUsingBlock:(id)block;
@end

@implementation NTKGalleryCollection

+ (id)galleryCollectionsForDevice:(id)device
{
  v81 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = objc_opt_new();
  v6 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    pairingID = [deviceCopy pairingID];
    *buf = 138412290;
    v80 = pairingID;
    _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Adding galleryCollectionsForDevice with uuid:%@", buf, 0xCu);
  }

  v66 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.NanoTimeKit.face"];
  v8 = [v66 BOOLForKey:@"ShowInternalFaces"];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__NTKGalleryCollection_galleryCollectionsForDevice___block_invoke;
  aBlock[3] = &unk_278784078;
  v9 = deviceCopy;
  v76 = v9;
  v77 = v8;
  v10 = _Block_copy(aBlock);
  if ([v9 isRunningGraceOrLater] && objc_msgSend(v9, "deviceCategory") != 1)
  {
    v11 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "Adding Subdials/California/FullScreen faces collection", buf, 2u);
    }

    v12 = [self _whistlerSubdialsFacesForDevice:v9];
    [v5 addObject:v12];

    v13 = [self _blackcombFacesForDevice:v9];
    [v5 addObject:v13];
  }

  v14 = +[NTKFaceBundleManager sharedManager];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __52__NTKGalleryCollection_galleryCollectionsForDevice___block_invoke_6;
  v71[3] = &unk_2787840A0;
  v15 = v9;
  v72 = v15;
  v16 = v10;
  v74 = v16;
  v17 = v5;
  v73 = v17;
  [v14 enumerateFaceBundlesOnDevice:v15 includingLegacy:1 withBlock:v71];

  if ([v15 isPaired])
  {
    v18 = [v15 supportsPDRCapability:4067975928];
    v19 = _os_feature_enabled_impl();
    if (!v18 || (v19 & 1) == 0)
    {
      v20 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D9C5000, v20, OS_LOG_TYPE_DEFAULT, "Adding Photos faces collection", buf, 2u);
      }

      v21 = [self _photoFacesForDevice:v15];
      [v17 addObject:v21];
    }
  }

  [v17 sortUsingComparator:&__block_literal_global_115];
  collectionType = [v15 collectionType];
  if (collectionType == 5 || NTKShowHardwareSpecificFaces(collectionType, v23))
  {
    selfCopy = self;
    v24 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v24, OS_LOG_TYPE_DEFAULT, "Adding Zeus faces collection", buf, 2u);
    }

    v25 = +[NTKFaceBundleManager sharedManager];
    v26 = [v25 faceBundleForFaceStyle:14 onDevice:v15];

    if (v26)
    {
      v27 = (*(v16 + 2))(v16, v26);
      if (v27)
      {
        [v17 insertObject:v27 atIndex:0];
      }
    }

    isZeusBlack = [v15 isZeusBlack];
    if (((isZeusBlack & 1) != 0 || NTKShowHardwareSpecificFaces(isZeusBlack, v29)) && [v15 isRunningGraceOrLater])
    {
      v30 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D9C5000, v30, OS_LOG_TYPE_DEFAULT, "Adding SpectrumZeus faces collection", buf, 2u);
      }

      v31 = +[NTKFaceBundleManager sharedManager];
      v32 = [v31 faceBundleForFaceStyle:42 onDevice:v15];

      if (v32)
      {
        v33 = (*(v16 + 2))(v16, v32);
        if (v33)
        {
          [v17 insertObject:v33 atIndex:0];
        }
      }
    }

    v34 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v34, OS_LOG_TYPE_DEFAULT, "Adding Poodle faces collection", buf, 2u);
    }

    v35 = +[NTKFaceBundleManager sharedManager];
    v36 = [v35 faceBundleForBundleIdentifier:@"com.apple.NTKPoodleFaceBundle" onDevice:v15];

    if (v36)
    {
      v37 = (*(v16 + 2))(v16, v36);
      if (v37)
      {
        [v17 insertObject:v37 atIndex:0];
      }
    }

    v38 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v38, OS_LOG_TYPE_DEFAULT, "Adding Hades faces collection", buf, 2u);
    }

    v39 = +[NTKFaceBundleManager sharedManager];
    v40 = [v39 faceBundleForBundleIdentifier:@"com.apple.NTKHadesFaceBundle" onDevice:v15];

    if (v40)
    {
      v41 = (*(v16 + 2))(v16, v40);
      if (v41)
      {
        [v17 insertObject:v41 atIndex:0];
      }
    }

    v42 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v42, OS_LOG_TYPE_DEFAULT, "Adding Secretariat faces collection", buf, 2u);
    }

    v43 = +[NTKFaceBundleManager sharedManager];
    v44 = [v43 faceBundleForBundleIdentifier:@"com.apple.NTKSecretariatFaceBundle" onDevice:v15];

    if (v44)
    {
      v45 = (*(v16 + 2))(v16, v44);
      if (v45)
      {
        [v17 insertObject:v45 atIndex:0];
      }
    }

    v46 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v46, OS_LOG_TYPE_DEFAULT, "Adding Bellona faces collection", buf, 2u);
    }

    v47 = +[NTKFaceBundleManager sharedManager];
    v48 = [v47 faceBundleForBundleIdentifier:@"com.apple.NTKBellonaFaceBundle" onDevice:v15];

    if (v48)
    {
      v49 = (*(v16 + 2))(v16, v48);
      if (v49)
      {
        [v17 insertObject:v49 atIndex:0];
      }
    }

    v50 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v50, OS_LOG_TYPE_DEFAULT, "Adding Squall faces collection", buf, 2u);
    }

    v51 = +[NTKFaceBundleManager sharedManager];
    v52 = [v51 faceBundleForBundleIdentifier:@"com.apple.NTKSquallFaceBundle" onDevice:v15];

    if (v52)
    {
      v53 = (*(v16 + 2))(v16, v52);
      if (v53)
      {
        [v17 insertObject:v53 atIndex:0];
      }
    }

    self = v65;
  }

  if (NTKGizmoOrCompanionAreRussian(v15))
  {
    v54 = [self _newFacesExcludingRestrictedForDevice:v15];
  }

  else
  {
    v54 = [self _newFacesForDevice:v15];
  }

  v55 = v54;
  if ([v54 hasNewFaces])
  {
    [v17 insertObject:v55 atIndex:0];
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v56 = v17;
  v57 = [v56 countByEnumeratingWithState:&v67 objects:v78 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v68;
    do
    {
      v60 = 0;
      do
      {
        if (*v68 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v61 = *(*(&v67 + 1) + 8 * v60);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v61 loadFaces];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v61 loadFacesWithCompletion:0];
          }
        }

        ++v60;
      }

      while (v58 != v60);
      v58 = [v56 countByEnumeratingWithState:&v67 objects:v78 count:16];
    }

    while (v58);
  }

  v62 = v56;
  return v56;
}

NTKFacesBundleArrayGalleryCollection *__52__NTKGalleryCollection_galleryCollectionsForDevice___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 galleryTitleForDevice:*(a1 + 32)];
  if ([v4 length])
  {
    v5 = [v3 faceClass];
    if ((*(a1 + 40) & 1) != 0 || ![v5 _isInternalOnlyForDevice:*(a1 + 32)])
    {
      v10 = [[NTKFacesBundleArrayGalleryCollection alloc] initWithDevice:*(a1 + 32) faceBundle:v3];
      goto LABEL_11;
    }

    v6 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v13 = 138412290;
      v14 = v8;
      v9 = "Skipping internal bundle: %@";
LABEL_9:
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, v9, &v13, 0xCu);
    }
  }

  else
  {
    v6 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v8 = NSStringFromClass(v11);
      v13 = 138412290;
      v14 = v8;
      v9 = "Skipping bundle: %@";
      goto LABEL_9;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

void __52__NTKGalleryCollection_galleryCollectionsForDevice___block_invoke_6(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isHardwareSpecific] & 1) == 0)
  {
    v4 = [v3 galleryTitleForDevice:*(a1 + 32)];
    v5 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Adding bundled faces collection %@", &v7, 0xCu);
    }

    v6 = (*(*(a1 + 48) + 16))();
    if (v6)
    {
      [*(a1 + 40) addObject:v6];
    }
  }
}

uint64_t __52__NTKGalleryCollection_galleryCollectionsForDevice___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 title];
  v6 = [v4 title];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

+ (id)_newFacesExcludingRestrictedForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NTKWhatsNewFacesGalleryCollectionExcludingRestricted alloc] initWithDevice:deviceCopy];

  return v4;
}

+ (id)_newFacesForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NTKWhatsNewFacesGalleryCollection alloc] initWithDevice:deviceCopy];

  return v4;
}

+ (id)_photoFacesForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NTKCPhotoFaceCollectionGalleryCollection alloc] initForDevice:deviceCopy];

  return v4;
}

+ (id)_whistlerSubdialsFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy deviceCategory] == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NTKDeviceSpecificFacesArrayGalleryCollection *)[NTKWhistlerSubdialsFacesGalleryCollection alloc] initWithDevice:deviceCopy];
  }

  return v4;
}

+ (id)_blackcombFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy deviceCategory] == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NTKDeviceSpecificFacesArrayGalleryCollection *)[NTKBlackcombFacesGalleryCollection alloc] initWithDevice:deviceCopy];
  }

  return v4;
}

- (void)enumerateFaceNamesUsingBlock:(id)block
{
  blockCopy = block;
  if ([(NTKGalleryCollection *)self numberOfFaces])
  {
    v4 = 0;
    do
    {
      calloutName = [(NTKGalleryCollection *)self calloutName];

      if (calloutName)
      {
        calloutName2 = [(NTKGalleryCollection *)self calloutName];
        v7 = [(NTKGalleryCollection *)self faceAtIndex:v4];
        v8 = (calloutName2)[2](calloutName2, v7);
        blockCopy[2](blockCopy, v8);
      }

      ++v4;
    }

    while (v4 < [(NTKGalleryCollection *)self numberOfFaces]);
  }
}

- (id)identifierForFaceAtIndex:(unint64_t)index
{
  v3 = [(NTKGalleryCollection *)self faceAtIndex:index];
  v4 = v3;
  if (v3)
  {
    if ([v3 faceStyle] == 44)
    {
      [v4 bundleIdentifier];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"face%lld", objc_msgSend(v4, "faceStyle")];
    }
    v6 = ;
    configuration = [v4 configuration];
    validationString = [configuration validationString];
    v9 = [validationString copy];

    resourceDirectory = [v4 resourceDirectory];
    v11 = [resourceDirectory copy];

    v12 = @"<nil>";
    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = @"<nil>";
    }

    if (v11)
    {
      v12 = v11;
    }

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@", v6, v13, v12];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NTKGalleryCollectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (unint64_t)numberOfFaces
{
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_0_5(v2);
  return 0;
}

- (id)faceAtIndex:(unint64_t)index
{
  v3 = objc_opt_class();
  OUTLINED_FUNCTION_0_5(v3);
  return 0;
}

- (unint64_t)indexOfFace:(id)face
{
  v3 = objc_opt_class();
  OUTLINED_FUNCTION_0_5(v3);
  return 0;
}

@end