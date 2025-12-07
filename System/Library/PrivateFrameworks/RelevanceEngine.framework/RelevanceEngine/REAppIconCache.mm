@interface REAppIconCache
- (id)_init;
- (void)_loadIconForIdentifier:(id)identifier completion:(id)completion;
- (void)_loadRemoteIconForIdentifier:(id)identifier completion:(id)completion;
- (void)iconForApplicationWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation REAppIconCache

- (id)_init
{
  v9.receiver = self;
  v9.super_class = REAppIconCache;
  _init = [(RESingleton *)&v9 _init];
  if (_init)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.RelevanceEngine", v3);
    v5 = _init[2];
    _init[2] = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEA78]);
    v7 = _init[1];
    _init[1] = v6;
  }

  return _init;
}

- (void)iconForApplicationWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  IsRemote = REApplicationIsRemote(identifierCopy);
  v9 = [[_REAppKey alloc] initWithIdentifier:identifierCopy remote:IsRemote];
  v10 = [(NSCache *)self->_imageCache objectForKey:v9];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __62__REAppIconCache_iconForApplicationWithIdentifier_completion___block_invoke;
  v18[3] = &unk_2785FA6C0;
  v18[4] = self;
  v11 = v9;
  v19 = v11;
  v12 = completionCopy;
  v20 = v12;
  v13 = MEMORY[0x22AABC5E0](v18);
  if (v10)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__REAppIconCache_iconForApplicationWithIdentifier_completion___block_invoke_2;
    block[3] = &unk_2785FA150;
    v17 = v12;
    v16 = v10;
    dispatch_async(queue, block);
  }

  else if (IsRemote)
  {
    [(REAppIconCache *)self _loadRemoteIconForIdentifier:identifierCopy completion:v13];
  }

  else
  {
    [(REAppIconCache *)self _loadIconForIdentifier:identifierCopy completion:v13];
  }
}

void __62__REAppIconCache_iconForApplicationWithIdentifier_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [*(a1[4] + 8) setObject:v3 forKey:a1[5]];
  }

  (*(a1[6] + 16))();
}

- (void)_loadRemoteIconForIdentifier:(id)identifier completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v9 = completionCopy;
  v19 = 0;
  if (!RelevanceEngineUILibraryCore_frameworkLibrary)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __RelevanceEngineUILibraryCore_block_invoke;
    v23 = &__block_descriptor_40_e5_v8__0l;
    v24 = &v19;
    v25 = xmmword_2785FA720;
    v26 = 0;
    RelevanceEngineUILibraryCore_frameworkLibrary = _sl_dlopen();
    completionCopy = v19;
    if (RelevanceEngineUILibraryCore_frameworkLibrary)
    {
      if (!v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
      completionCopy = abort_report_np("%s", v19);
      __break(1u);
    }

    free(completionCopy);
  }

LABEL_4:
  v10 = REDeviceScreenScale(completionCopy, v8);
  *&v25 = 0;
  *(&v25 + 1) = &v25;
  v26 = 0x2050000000;
  v11 = getNanoResourceGrabberClass_softClass;
  v27 = getNanoResourceGrabberClass_softClass;
  if (!getNanoResourceGrabberClass_softClass)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getNanoResourceGrabberClass_block_invoke;
    v23 = &unk_2785F9BC0;
    v24 = &v25;
    __getNanoResourceGrabberClass_block_invoke(&v20);
    v11 = *(*(&v25 + 1) + 24);
  }

  if (v10 < 3.0)
  {
    v12 = 47;
  }

  else
  {
    v12 = 48;
  }

  v13 = v11;
  _Block_object_dispose(&v25, 8);
  sharedInstance = [v11 sharedInstance];
  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__REAppIconCache__loadRemoteIconForIdentifier_completion___block_invoke;
  v17[3] = &unk_2785FA6E8;
  v18 = v9;
  v16 = v9;
  [sharedInstance getIconForBundleID:identifierCopy iconVariant:v12 queue:queue block:v17 timeout:0.0];
}

void __58__REAppIconCache__loadRemoteIconForIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [REImage imageWithImage:a2];
  (*(*(a1 + 32) + 16))();
}

- (void)_loadIconForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__REAppIconCache__loadIconForIdentifier_completion___block_invoke;
  v9[3] = &unk_2785F9A40;
  v10 = identifierCopy;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __52__REAppIconCache__loadIconForIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = REDeviceScreenScale(a1, a2);
  v4 = _REIconDescriptionForDevice(0, 0, v3);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v5 = getISIconClass_softClass;
  v15 = getISIconClass_softClass;
  if (!getISIconClass_softClass)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getISIconClass_block_invoke;
    v11[3] = &unk_2785F9BC0;
    v11[4] = &v12;
    __getISIconClass_block_invoke(v11);
    v5 = v13[3];
  }

  v6 = v5;
  _Block_object_dispose(&v12, 8);
  v7 = [[v5 alloc] initWithBundleIdentifier:*(a1 + 32)];
  v8 = [v7 CGImageForImageDescriptor:v4];
  v10 = v8;
  if (v8)
  {
    v10 = [REImage imageWithCGImage:v8 scale:REDeviceScreenScale(v8, v9)];
  }

  (*(*(a1 + 40) + 16))();
}

@end