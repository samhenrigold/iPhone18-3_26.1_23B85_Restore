@interface WFRemovePhotoFromAlbumAction
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFRemovePhotoFromAlbumAction

- (void)runAsynchronouslyWithInput:(id)input
{
  v21[2] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v5 = [(WFRemovePhotoFromAlbumAction *)self parameterValueForKey:@"WFRemoveAlbumSelectedGroup" ofClass:objc_opt_class()];
  v6 = WFPHAssetCollectionMatchingDescriptor(v5);
  if (v6)
  {
    mEMORY[0x277CFC520] = [MEMORY[0x277CFC520] sharedLibrary];
    v19 = 0;
    v8 = [mEMORY[0x277CFC520] fetchOptionsWithError:&v19];
    v9 = v19;

    if (v8)
    {
      [v8 setWantsIncrementalChangeDetails:0];
      v10 = [getPHAssetClass() fetchAssetsInAssetCollection:v6 options:v8];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __59__WFRemovePhotoFromAlbumAction_runAsynchronouslyWithInput___block_invoke;
      v16[3] = &unk_278C1A3E8;
      v16[4] = self;
      v17 = v6;
      v18 = v10;
      v11 = v10;
      [inputCopy getObjectRepresentations:v16 forClass:getPHAssetClass()];
    }

    else
    {
      [(WFRemovePhotoFromAlbumAction *)self finishRunningWithError:v9];
    }
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D7CB30];
    v20[0] = *MEMORY[0x277CCA470];
    v9 = WFLocalizedString(@"Unknown Album");
    v21[0] = v9;
    v20[1] = *MEMORY[0x277CCA450];
    v8 = WFLocalizedString(@"The photo album that was selected does not exist.");
    v21[1] = v8;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v15 = [v12 errorWithDomain:v13 code:5 userInfo:v14];
    [(WFRemovePhotoFromAlbumAction *)self finishRunningWithError:v15];
  }
}

void __59__WFRemovePhotoFromAlbumAction_runAsynchronouslyWithInput___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    [a1[4] finishRunningWithError:v9];
  }

  else
  {
    v10 = [MEMORY[0x277CFC520] sharedLibrary];
    v21 = 0;
    v11 = [v10 systemPhotoLibraryWithError:&v21];
    v12 = v21;

    if (v11)
    {
      v19[0] = 0;
      v19[1] = v19;
      v19[2] = 0x3032000000;
      v19[3] = __Block_byref_object_copy__10669;
      v19[4] = __Block_byref_object_dispose__10670;
      v20 = 0;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __59__WFRemovePhotoFromAlbumAction_runAsynchronouslyWithInput___block_invoke_187;
      v14[3] = &unk_278C1DFF0;
      v15 = a1[5];
      v18 = v19;
      v16 = v7;
      v17 = a1[6];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __59__WFRemovePhotoFromAlbumAction_runAsynchronouslyWithInput___block_invoke_3;
      v13[3] = &unk_278C21128;
      v13[4] = a1[4];
      v13[5] = v19;
      [v11 performChanges:v14 completionHandler:v13];

      _Block_object_dispose(v19, 8);
    }

    else
    {
      [a1[4] finishRunningWithError:v12];
    }
  }
}

void __59__WFRemovePhotoFromAlbumAction_runAsynchronouslyWithInput___block_invoke_187(uint64_t a1)
{
  if ([*(a1 + 32) canPerformEditOperation:2])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v2 = getPHAssetCollectionChangeRequestClass_softClass;
    v18 = getPHAssetCollectionChangeRequestClass_softClass;
    if (!getPHAssetCollectionChangeRequestClass_softClass)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __getPHAssetCollectionChangeRequestClass_block_invoke;
      v14[3] = &unk_278C222B8;
      v14[4] = &v15;
      __getPHAssetCollectionChangeRequestClass_block_invoke(v14);
      v2 = v16[3];
    }

    v3 = v2;
    _Block_object_dispose(&v15, 8);
    v4 = [v2 changeRequestForAssetCollection:*(a1 + 32)];
  }

  else
  {
    v4 = 0;
  }

  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __59__WFRemovePhotoFromAlbumAction_runAsynchronouslyWithInput___block_invoke_2;
  v12 = &unk_278C1A3C0;
  v5 = *(a1 + 40);
  v13 = *(a1 + 48);
  v6 = [v5 if_objectsPassingTest:&v9];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [v4 removeAssets:{*(*(*(a1 + 56) + 8) + 40), v9, v10, v11, v12}];
}

void __59__WFRemovePhotoFromAlbumAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [*(a1 + 32) output];
        [v11 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) finishRunningWithError:v4];
}

@end