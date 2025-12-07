@interface GCUIScreenRecorderService
@end

@implementation GCUIScreenRecorderService

uint64_t __44___GCUIScreenRecorderService_sharedInstance__block_invoke()
{
  sharedInstance_Shared = objc_alloc_init(_GCUIScreenRecorderService);

  return MEMORY[0x2821F96F8]();
}

void __75___GCUIScreenRecorderService_stopRecordingWithPreviewIn_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  object = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(a1 + 48);
    if (!v6)
    {
      goto LABEL_17;
    }

    v7 = *(v6 + 16);
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = *(a1 + 32);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [*(a1 + 32) windows];
        v11 = [v10 firstObject];
        v9 = [v11 rootViewController];

        if (v9)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_13;
    }

    v8 = [*(a1 + 32) rootViewController];
  }

  v9 = v8;
  if (v8)
  {
LABEL_14:
    if (*(a1 + 48))
    {
      v15 = MEMORY[0x20F32E600]();
      objc_setAssociatedObject(object, "Handler", v15, 0x303);
    }

    [object setPreviewControllerDelegate:*(a1 + 40)];
    [v9 presentViewController:object animated:0 completion:0];

    goto LABEL_17;
  }

LABEL_13:
  v12 = [MEMORY[0x277D75128] sharedApplication];
  v13 = [v12 windows];
  v14 = [v13 firstObject];
  v9 = [v14 rootViewController];

  if (v9)
  {
    goto LABEL_14;
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v7 = *(v16 + 16);
LABEL_4:
    v7();
  }

LABEL_17:
}

void __57___GCUIScreenRecorderService_previewControllerDidFinish___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dismissModalViewControllerAnimated:0];
  v2 = objc_getAssociatedObject(*(a1 + 32), "Handler");
  if (v2)
  {
    v3 = v2;
    v2[2](v2, 0);
    v2 = v3;
  }
}

@end