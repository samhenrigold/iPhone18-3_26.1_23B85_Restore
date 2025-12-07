@interface SUUIFamilyCircleController
+ (id)sharedController;
- (SUUIFamilyCircleController)init;
- (id)profilePictureForFamilyMember:(id)member;
- (void)_accountStoreDidChange:(id)change;
- (void)_reloadDataWithPromptStyle:(int64_t)style;
- (void)_setITunesFamily:(id)family error:(id)error iCloudFamily:(id)cloudFamily error:(id)a6;
- (void)_setProfilePicture:(id)picture forMember:(id)member;
- (void)dealloc;
- (void)reloadData;
@end

@implementation SUUIFamilyCircleController

+ (id)sharedController
{
  if (sharedController_sOnce_0 != -1)
  {
    +[SUUIFamilyCircleController sharedController];
  }

  v3 = sharedController_sInstance;

  return v3;
}

uint64_t __46__SUUIFamilyCircleController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(SUUIFamilyCircleController);
  v1 = sharedController_sInstance;
  sharedController_sInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SUUIFamilyCircleController)init
{
  v9.receiver = self;
  v9.super_class = SUUIFamilyCircleController;
  v2 = [(SUUIFamilyCircleController *)&v9 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = *MEMORY[0x277D69D70];
    defaultStore = [MEMORY[0x277D69A20] defaultStore];
    [defaultCenter addObserver:v2 selector:sel__accountStoreDidChange_ name:v4 object:defaultStore];

    v6 = objc_alloc_init(MEMORY[0x277CBEA78]);
    imageCache = v2->_imageCache;
    v2->_imageCache = v6;

    v2->_reloadPromptStyle = -1;
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D69D70];
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  [defaultCenter removeObserver:self name:v4 object:defaultStore];

  v6.receiver = self;
  v6.super_class = SUUIFamilyCircleController;
  [(SUUIFamilyCircleController *)&v6 dealloc];
}

- (void)reloadData
{
  if ([(SUUIFamilyCircleController *)self reloadPromptStyle])
  {

    [(SUUIFamilyCircleController *)self _reloadDataWithPromptStyle:0];
  }
}

- (id)profilePictureForFamilyMember:(id)member
{
  imageCache = self->_imageCache;
  iCloudIdentifier = [member iCloudIdentifier];
  v5 = [(NSCache *)imageCache objectForKey:iCloudIdentifier];

  return v5;
}

- (void)_accountStoreDidChange:(id)change
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SUUIFamilyCircleController__accountStoreDidChange___block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_async(v4, block);
}

void __53__SUUIFamilyCircleController__accountStoreDidChange___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D69A20] defaultStore];
  v3 = [v2 activeAccount];
  v5 = [v3 uniqueIdentifier];

  v4 = [*(a1 + 32) lastAccountID];
  if (v5 != v4 && ([v5 isEqual:v4] & 1) == 0)
  {
    [*(a1 + 32) _reloadDataWithPromptStyle:1000];
  }
}

- (void)_reloadDataWithPromptStyle:(int64_t)style
{
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];
  uniqueIdentifier = [activeAccount uniqueIdentifier];
  [(SUUIFamilyCircleController *)self setLastAccountID:uniqueIdentifier];

  [(SUUIFamilyCircleController *)self setReloadPromptStyle:style];
  objc_initWeak(&location, self);
  uRLBag = [(SUUIClientContext *)self->_clientContext URLBag];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SUUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke;
  v9[3] = &unk_2798FC3A8;
  v10[1] = style;
  v9[4] = self;
  objc_copyWeak(v10, &location);
  [uRLBag loadValueForKey:@"shared-purchases-enabled" completionBlock:v9];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __57__SUUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v3 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SUUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke_2;
    block[3] = &unk_2798F8588;
    v4 = *(a1 + 32);
    v9[1] = *(a1 + 48);
    block[4] = v4;
    v5 = v9;
    objc_copyWeak(v9, (a1 + 40));
    dispatch_async(v3, block);
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__SUUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke_4;
    v6[3] = &unk_2798F7CA0;
    v6[4] = *(a1 + 32);
    v5 = &v7;
    objc_copyWeak(&v7, (a1 + 40));
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }

  objc_destroyWeak(v5);
}

void __57__SUUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke_2(uint64_t a1)
{
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__70;
  v27[4] = __Block_byref_object_dispose__70;
  v28 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__70;
  v25[4] = __Block_byref_object_dispose__70;
  v26 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__70;
  v23[4] = __Block_byref_object_dispose__70;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__70;
  v21[4] = __Block_byref_object_dispose__70;
  v22 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_semaphore_create(0);
  v4 = objc_alloc_init(MEMORY[0x277D69B00]);
  [v4 setAuthenticationPromptStyle:*(a1 + 48)];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__SUUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke_49;
  v17[3] = &unk_2798FC330;
  v19 = v27;
  v20 = v25;
  v5 = v2;
  v18 = v5;
  v6 = [v4 startWithResponseBlock:v17];
  v8 = SUUIFamilyCircleFramework(v6, v7);
  v9 = objc_alloc_init(SUUIWeakLinkedClassForString(&cfstr_Fafetchfamilyc.isa, v8));
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__SUUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke_2_54;
  v13[3] = &unk_2798FC358;
  v15 = v23;
  v16 = v21;
  v10 = v3;
  v14 = v10;
  [v9 startRequestWithCompletionHandler:v13];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__SUUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke_3;
  v11[3] = &unk_2798FC380;
  v11[4] = *(a1 + 32);
  objc_copyWeak(&v12, (a1 + 40));
  v11[5] = v27;
  v11[6] = v25;
  v11[7] = v23;
  v11[8] = v21;
  dispatch_async(MEMORY[0x277D85CD0], v11);
  objc_destroyWeak(&v12);

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
}

void __57__SUUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 familyCircle];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __57__SUUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke_2_54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __57__SUUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setReloadPromptStyle:-1];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained _setITunesFamily:*(*(*(a1 + 40) + 8) + 40) error:*(*(*(a1 + 48) + 8) + 40) iCloudFamily:*(*(*(a1 + 56) + 8) + 40) error:*(*(*(a1 + 64) + 8) + 40)];
}

void __57__SUUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setReloadPromptStyle:-1];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setITunesFamily:0 error:0 iCloudFamily:0 error:0];
}

- (void)_setITunesFamily:(id)family error:(id)error iCloudFamily:(id)cloudFamily error:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  familyCopy = family;
  cloudFamilyCopy = cloudFamily;
  self->_hasLoaded = 1;
  objc_storeStrong(&self->_iTunesFamily, family);
  objc_storeStrong(&self->_iCloudFamily, cloudFamily);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SUUIFamilyCircleDidChangeNotification" object:self];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  familyMembers = [(SSFamilyCircle *)self->_iTunesFamily familyMembers];
  v11 = [familyMembers countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(familyMembers);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        imageCache = self->_imageCache;
        iCloudIdentifier = [v15 iCloudIdentifier];
        v18 = [(NSCache *)imageCache objectForKey:iCloudIdentifier];

        if (!v18)
        {
          objc_initWeak(&location, self);
          v19 = dispatch_get_global_queue(0, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __72__SUUIFamilyCircleController__setITunesFamily_error_iCloudFamily_error___block_invoke;
          block[3] = &unk_2798F7CA0;
          block[4] = v15;
          objc_copyWeak(&v23, &location);
          dispatch_async(v19, block);

          objc_destroyWeak(&v23);
          objc_destroyWeak(&location);
        }
      }

      v12 = [familyMembers countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }
}

void __72__SUUIFamilyCircleController__setITunesFamily_error_iCloudFamily_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) firstName];
  v3 = [*(a1 + 32) lastName];
  v4 = [*(a1 + 32) iCloudAccountName];
  v5 = [*(a1 + 32) iCloudIdentifier];
  v6 = SUUIGetFamilyMemberImage(v2, v3, v4, v5);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__SUUIFamilyCircleController__setITunesFamily_error_iCloudFamily_error___block_invoke_2;
  block[3] = &unk_2798F6530;
  objc_copyWeak(&v12, (a1 + 40));
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __72__SUUIFamilyCircleController__setITunesFamily_error_iCloudFamily_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setProfilePicture:*(a1 + 32) forMember:*(a1 + 40)];
}

- (void)_setProfilePicture:(id)picture forMember:(id)member
{
  imageCache = self->_imageCache;
  pictureCopy = picture;
  iCloudIdentifier = [member iCloudIdentifier];
  [(NSCache *)imageCache setObject:pictureCopy forKey:iCloudIdentifier];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SUUIFamilyCircleProfilePictureDidChangeNotification" object:self];
}

@end