@interface PXCuratedLibraryAssetCollectionSkimmingModel
- (PXCuratedLibraryAssetCollectionSkimmingModel)initWithViewModel:(id)model;
- (PXSimpleIndexPath)initialIndexPath;
- (PXSimpleIndexPath)skimmedIndexPath;
- (id)validatedAssetCollectionReference:(id)reference;
- (void)_prepareIndexesForAssetCollectionReference:(id)reference willStartSkimming:(BOOL)skimming willStartSlideshow:(BOOL)slideshow;
- (void)_updateViewModel;
- (void)persistSkimmingState;
- (void)setSkimmedIndexPath:(PXSimpleIndexPath *)path;
- (void)tearDownAfterSkimmingShowHints:(BOOL)hints persistState:(BOOL)state;
- (void)transitionToSkimming;
- (void)transitionToSlideshow;
@end

@implementation PXCuratedLibraryAssetCollectionSkimmingModel

- (PXSimpleIndexPath)skimmedIndexPath
{
  v3 = *&self[3].item;
  *&retstr->dataSourceIdentifier = *&self[3].dataSourceIdentifier;
  *&retstr->item = v3;
  return self;
}

- (PXSimpleIndexPath)initialIndexPath
{
  v3 = *&self[2].item;
  *&retstr->dataSourceIdentifier = *&self[2].dataSourceIdentifier;
  *&retstr->item = v3;
  return self;
}

- (void)persistSkimmingState
{
  if (self->_skimmingZoomLevel)
  {
    dataSourceIdentifier = self->_skimmedIndexPath.dataSourceIdentifier;
    v14 = *&self->_skimmedIndexPath.section;
    subitem = self->_skimmedIndexPath.subitem;
    assetsDataSourceManager = [(PXCuratedLibraryViewModel *)self->_viewModel assetsDataSourceManager];
    v5 = [assetsDataSourceManager dataSourceForZoomLevel:self->_skimmingZoomLevel];
    if ([v5 identifier] == dataSourceIdentifier)
    {
      v11 = dataSourceIdentifier;
      v12 = v14;
      v13 = subitem;
      v6 = [v5 keyAssetsInSectionIndexPath:&v11];
      firstObject = [v6 firstObject];

      if (firstObject)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __68__PXCuratedLibraryAssetCollectionSkimmingModel_persistSkimmingState__block_invoke;
        v8[3] = &unk_1E77410D0;
        v9 = firstObject;
        selfCopy = self;
        [assetsDataSourceManager performChanges:v8];
      }
    }
  }
}

void __68__PXCuratedLibraryAssetCollectionSkimmingModel_persistSkimmingState__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v7 = [v4 containingAssetCollectionReference];
  v6 = [v7 assetCollection];
  [v5 setTransientKeyAsset:v3 forAssetCollection:v6 zoomLevel:*(*(a1 + 40) + 16)];
}

- (void)_updateViewModel
{
  viewModel = self->_viewModel;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__PXCuratedLibraryAssetCollectionSkimmingModel__updateViewModel__block_invoke;
  v3[3] = &unk_1E7748B68;
  v3[4] = self;
  [(PXCuratedLibraryViewModel *)viewModel performChanges:v3];
}

void __64__PXCuratedLibraryAssetCollectionSkimmingModel__updateViewModel__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 56) count];
  v5 = [*(a1 + 32) isPlayingSlideshow];
  if (v4 > 1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 32) isInteractionInProgress];
  v8 = v7;
  if ((v6 & 1) != 0 || v7)
  {
    v9 = objc_alloc_init(PXCuratedLibraryAssetCollectionSkimmingInfo);
    [(PXCuratedLibraryAssetCollectionSkimmingInfo *)v9 setSlideshowStarted:v6];
    [(PXCuratedLibraryAssetCollectionSkimmingInfo *)v9 setTouchInteractionStarted:v8];
    v10 = [*(*(a1 + 32) + 48) assetCollection];
    [(PXCuratedLibraryAssetCollectionSkimmingInfo *)v9 setParentAssetCollection:v10];

    [(PXCuratedLibraryAssetCollectionSkimmingInfo *)v9 setChildCollectionsZoomLevel:*(*(a1 + 32) + 24)];
    [(PXCuratedLibraryAssetCollectionSkimmingInfo *)v9 setChildCollectionsIndexes:*(*(a1 + 32) + 56)];
    v11 = *(a1 + 32);
    v12 = *(v11 + 112);
    v13[0] = *(v11 + 96);
    v13[1] = v12;
    [(PXCuratedLibraryAssetCollectionSkimmingInfo *)v9 setCurrentChildCollectionIndexPath:v13];
  }

  else
  {
    v9 = 0;
  }

  [v3 setSkimmingInfo:v9];
}

- (void)setSkimmedIndexPath:(PXSimpleIndexPath *)path
{
  if (path->section != self->_skimmedIndexPath.section)
  {
    v3 = *&path->item;
    *&self->_skimmedIndexPath.dataSourceIdentifier = *&path->dataSourceIdentifier;
    *&self->_skimmedIndexPath.item = v3;
    [(PXCuratedLibraryAssetCollectionSkimmingModel *)self _updateViewModel];
  }
}

- (void)tearDownAfterSkimmingShowHints:(BOOL)hints persistState:(BOOL)state
{
  if (self->_skimmingZoomLevel)
  {
    if (state)
    {
      [(PXCuratedLibraryAssetCollectionSkimmingModel *)self persistSkimmingState];
    }

    if (self->_dataSourcePauseToken)
    {
      assetsDataSourceManager = [(PXCuratedLibraryViewModel *)self->_viewModel assetsDataSourceManager];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __92__PXCuratedLibraryAssetCollectionSkimmingModel_tearDownAfterSkimmingShowHints_persistState___block_invoke;
      v12[3] = &unk_1E77410A8;
      v12[4] = self;
      [assetsDataSourceManager performChanges:v12];

      dataSourcePauseToken = self->_dataSourcePauseToken;
      self->_dataSourcePauseToken = 0;
    }

    *&self->_isPlayingSlideshow = 0;
    if (!hints)
    {
      containingAssetCollectionReference = self->_containingAssetCollectionReference;
      self->_containingAssetCollectionReference = 0;

      v10 = *(off_1E7722228 + 1);
      v11 = *off_1E7722228;
      *&self->_skimmedIndexPath.dataSourceIdentifier = *off_1E7722228;
      *&self->_skimmedIndexPath.item = v10;
      indexPathSetForSkimming = self->_indexPathSetForSkimming;
      self->_indexPathSetForSkimming = 0;

      *&self->_initialIndexPath.dataSourceIdentifier = v11;
      *&self->_initialIndexPath.item = v10;
      self->_skimmingZoomLevel = 0;
    }

    [(PXCuratedLibraryAssetCollectionSkimmingModel *)self _updateViewModel:v10];
  }
}

- (void)_prepareIndexesForAssetCollectionReference:(id)reference willStartSkimming:(BOOL)skimming willStartSlideshow:(BOOL)slideshow
{
  slideshowCopy = slideshow;
  v69 = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  zoomLevel = [(PXCuratedLibraryViewModel *)self->_viewModel zoomLevel];
  self->_zoomLevel = zoomLevel;
  if (zoomLevel == 1)
  {
    assetCollection = [referenceCopy assetCollection];
    px_highlightKind = [assetCollection px_highlightKind];

    if (px_highlightKind != 2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      assetCollection2 = [referenceCopy assetCollection];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySkimmingController.m" lineNumber:546 description:{@"Expected Year highlight, received %@", assetCollection2}];
    }

    self->_skimmingZoomLevel = 2;
  }

  else if ((zoomLevel - 2) < 3 || zoomLevel == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySkimmingController.m" lineNumber:554 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  objc_storeStrong(&self->_containingAssetCollectionReference, reference);
  assetsDataSourceManager = [(PXCuratedLibraryViewModel *)self->_viewModel assetsDataSourceManager];
  skimmingZoomLevel = self->_skimmingZoomLevel;
  v67 = 0;
  v16 = [assetsDataSourceManager assetCollectionReferencesInDataSourceForZoomLevel:skimmingZoomLevel withParentAssetCollectionReference:referenceCopy assetCollectionReferenceWithSameKeyAssetAsParent:&v67];
  v17 = v67;
  v18 = objc_alloc_init(off_1E77217C8);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v19 = v16;
  v20 = [v19 countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v20)
  {
    v21 = *v64;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v64 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v63 + 1) + 8 * i);
        if (v23)
        {
          objc_msgSend_indexPath(v23);
        }

        else
        {
          v61 = 0u;
          v62 = 0u;
        }

        [v18 addIndexPath:&v61];
      }

      v20 = [v19 countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v20);
  }

  v24 = [v18 copy];
  indexPathSetForSkimming = self->_indexPathSetForSkimming;
  self->_indexPathSetForSkimming = v24;

  if (skimming || slideshowCopy)
  {
    v26 = self->_indexPathSetForSkimming;
    *&v61 = 0;
    *(&v61 + 1) = &v61;
    *&v62 = 0x2020000000;
    BYTE8(v62) = 0;
    if ([(PXIndexPathSet *)v26 count]>= 1)
    {
      if (v26)
      {
        objc_msgSend_anySectionIndexPath(v26);
        v27 = v59;
      }

      else
      {
        v27 = 0;
        v59 = 0u;
        v60 = 0u;
      }

      v28 = [(PXIndexPathSet *)v26 sectionIndexSetForDataSourceIdentifier:v27];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __128__PXCuratedLibraryAssetCollectionSkimmingModel__prepareIndexesForAssetCollectionReference_willStartSkimming_willStartSlideshow___block_invoke;
      v55[3] = &unk_1E7741080;
      v58 = &v61;
      v29 = v28;
      v56 = v29;
      selfCopy = self;
      [assetsDataSourceManager performChanges:v55];
    }

    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __128__PXCuratedLibraryAssetCollectionSkimmingModel__prepareIndexesForAssetCollectionReference_willStartSkimming_willStartSlideshow___block_invoke_2;
    v54[3] = &unk_1E77410A8;
    v54[4] = self;
    [assetsDataSourceManager performChanges:v54];
    _Block_object_dispose(&v61, 8);
  }

  v61 = 0u;
  v62 = 0u;
  if (v17)
  {
    objc_msgSend_indexPath(v17);
  }

  else
  {
    v30 = *(off_1E7722228 + 1);
    v61 = *off_1E7722228;
    v62 = v30;
  }

  if (v61 == *off_1E7721F68)
  {
    v31 = [assetsDataSourceManager dataSourceForZoomLevel:self->_skimmingZoomLevel];
    v32 = [v31 objectReferenceNearestToObjectReference:referenceCopy];
    if (v32)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        v44 = objc_opt_class();
        v46 = NSStringFromClass(v44);
        px_descriptionForAssertionMessage = [v32 px_descriptionForAssertionMessage];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySkimmingController.m" lineNumber:594 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[dataSource objectReferenceNearestToObjectReference:assetCollectionReference]", v46, px_descriptionForAssertionMessage}];
      }
    }

    if (v31)
    {
      objc_msgSend_indexPathForAssetCollectionReference_(v31);
    }

    else
    {
      v52 = 0u;
      v53 = 0u;
    }

    v61 = v52;
    v62 = v53;
    if (([(PXIndexPathSet *)self->_indexPathSetForSkimming containsIndexPath:&v52]& 1) == 0)
    {
      v52 = 0u;
      v53 = 0u;
      v33 = self->_indexPathSetForSkimming;
      if (v33)
      {
        v34 = *&self->_initialIndexPath.item;
        v50 = *&self->_initialIndexPath.dataSourceIdentifier;
        v51 = v34;
        objc_msgSend_indexPathLessThanIndexPath_(v33);
        v33 = self->_indexPathSetForSkimming;
      }

      v50 = v52;
      v51 = v53;
      if ([(PXIndexPathSet *)v33 containsIndexPath:&v50])
      {
        v35 = v52;
        v36 = v53;
      }

      else
      {
        v37 = self->_indexPathSetForSkimming;
        if (v37)
        {
          objc_msgSend_indexPathGreaterThanIndexPath_(v37);
        }

        else
        {
          v50 = 0u;
          v51 = 0u;
        }

        v35 = v50;
        v36 = v51;
      }

      v61 = v35;
      v62 = v36;
    }
  }

  v38 = self->_indexPathSetForSkimming;
  v52 = v61;
  v53 = v62;
  if (([(PXIndexPathSet *)v38 containsIndexPath:&v52]& 1) == 0)
  {
    v39 = self->_indexPathSetForSkimming;
    if (v39)
    {
      objc_msgSend_anySectionIndexPath(v39);
    }

    else
    {
      v52 = 0u;
      v53 = 0u;
    }

    v61 = v52;
    v62 = v53;
  }

  v40 = v61;
  v41 = v62;
  *&self->_initialIndexPath.dataSourceIdentifier = v61;
  *&self->_initialIndexPath.item = v41;
  self->_isPlayingSlideshow = slideshowCopy;
  self->_isInteractionInProgress = skimming;
  *&self->_skimmedIndexPath.dataSourceIdentifier = v40;
  *&self->_skimmedIndexPath.item = v41;
  [(PXCuratedLibraryAssetCollectionSkimmingModel *)self _updateViewModel];
}

void *__128__PXCuratedLibraryAssetCollectionSkimmingModel__prepareIndexesForAssetCollectionReference_willStartSkimming_willStartSlideshow___block_invoke(void *a1, void *a2)
{
  result = [a2 forceAccurateSectionsIfNeeded:a1[4] inZoomLevel:*(a1[5] + 24)];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void __128__PXCuratedLibraryAssetCollectionSkimmingModel__prepareIndexesForAssetCollectionReference_willStartSkimming_willStartSlideshow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 pauseChangeDeliveryWithTimeout:@"PXCuratedLibrarySkimmingController" identifier:180.0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = v3;
}

- (void)transitionToSkimming
{
  if (!self->_isInteractionInProgress)
  {
    *&self->_isPlayingSlideshow = 256;
    [(PXCuratedLibraryAssetCollectionSkimmingModel *)self _updateViewModel];
  }
}

- (void)transitionToSlideshow
{
  if (!self->_isPlayingSlideshow)
  {
    *&self->_isPlayingSlideshow = 1;
    [(PXCuratedLibraryAssetCollectionSkimmingModel *)self _updateViewModel];
  }
}

- (id)validatedAssetCollectionReference:(id)reference
{
  referenceCopy = reference;
  assetCollection = [referenceCopy assetCollection];
  if ([assetCollection px_highlightKind] == 2)
  {
    v6 = referenceCopy;
  }

  else
  {
    zoomLevel = [(PXCuratedLibraryViewModel *)self->_viewModel zoomLevel];

    v6 = referenceCopy;
    if (zoomLevel != 1)
    {
      goto LABEL_6;
    }

    assetsDataSourceManager = [(PXCuratedLibraryViewModel *)self->_viewModel assetsDataSourceManager];
    assetCollection = [assetsDataSourceManager dataSourceForZoomLevel:{-[PXCuratedLibraryViewModel zoomLevel](self->_viewModel, "zoomLevel")}];

    v6 = [assetCollection assetCollectionReferenceNearestToObjectReference:referenceCopy];
  }

LABEL_6:

  return v6;
}

- (PXCuratedLibraryAssetCollectionSkimmingModel)initWithViewModel:(id)model
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = PXCuratedLibraryAssetCollectionSkimmingModel;
  v6 = [(PXCuratedLibraryAssetCollectionSkimmingModel *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, model);
    v7->_zoomLevel = 0;
    v8 = *off_1E7722228;
    v9 = *(off_1E7722228 + 1);
    *&v7->_skimmedIndexPath.dataSourceIdentifier = *off_1E7722228;
    *&v7->_skimmedIndexPath.item = v9;
    *&v7->_initialIndexPath.dataSourceIdentifier = v8;
    *&v7->_initialIndexPath.item = v9;
  }

  return v7;
}

@end