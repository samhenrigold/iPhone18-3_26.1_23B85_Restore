@interface SKAccountPageBagProvider
+ (id)sharedBag;
@end

@implementation SKAccountPageBagProvider

+ (id)sharedBag
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SKAccountPageBagProvider_sharedBag__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedBag_onceToken != -1)
  {
    dispatch_once(&sharedBag_onceToken, block);
  }

  v2 = sharedBag__shared;

  return v2;
}

void __37__SKAccountPageBagProvider_sharedBag__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v1 = getISLoadURLBagOperationClass_softClass;
  v23 = getISLoadURLBagOperationClass_softClass;
  if (!getISLoadURLBagOperationClass_softClass)
  {
    *v24 = MEMORY[0x1E69E9820];
    *&v24[8] = 3221225472;
    *&v24[16] = __getISLoadURLBagOperationClass_block_invoke;
    v25 = &unk_1E7B279A8;
    v26 = &v20;
    __getISLoadURLBagOperationClass_block_invoke(v24);
    v1 = v21[3];
  }

  v2 = v1;
  _Block_object_dispose(&v20, 8);
  v3 = objc_alloc_init(v1);
  [v3 start];
  v4 = [v3 success];
  v5 = [v3 error];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  if ((v6 & 1) == 0)
  {
    v7 = [MEMORY[0x1E69D4938] sharediTunesStoreConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x1E69D4938] sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = v8 | 2;
    }

    else
    {
      LODWORD(v9) = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      *v24 = 138543618;
      *&v24[4] = v11;
      *&v24[12] = 2114;
      *&v24[14] = v5;
      v12 = v11;
      v13 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1B23EF000, v10, 16, "%{public}@: Failed to load URL bag with error: %{public}@", v24, 22, v20);

      if (!v13)
      {
LABEL_19:

        goto LABEL_20;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:4];
      free(v13);
      SSFileLog();
    }

    goto LABEL_19;
  }

LABEL_20:
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v14 = getISAMSBagShimClass_softClass;
  v23 = getISAMSBagShimClass_softClass;
  if (!getISAMSBagShimClass_softClass)
  {
    *v24 = MEMORY[0x1E69E9820];
    *&v24[8] = 3221225472;
    *&v24[16] = __getISAMSBagShimClass_block_invoke;
    v25 = &unk_1E7B279A8;
    v26 = &v20;
    __getISAMSBagShimClass_block_invoke(v24);
    v14 = v21[3];
  }

  v15 = v14;
  _Block_object_dispose(&v20, 8);
  v16 = [v14 alloc];
  v17 = [v3 URLBag];
  v18 = [v16 initWithURLBag:v17];
  v19 = sharedBag__shared;
  sharedBag__shared = v18;
}

@end