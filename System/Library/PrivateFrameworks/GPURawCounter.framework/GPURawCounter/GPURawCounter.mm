uint64_t GRCCopyAllCounterSourceGroup()
{
  v2 = 0;
  v0 = GRCCopyAllCounterSourceGroupWithError(&v2);
  if (v2)
  {
    NSLog(&stru_2860A08A8.isa, v2);
  }

  return v0;
}

uint64_t GRCCopyAllCounterSourceGroupWithError(uint64_t a1)
{
  if (GRCCopyAllCounterSourceGroupWithError::onceToken != -1)
  {
    GRCCopyAllCounterSourceGroupWithError_cold_1();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __GRCCopyAllCounterSourceGroupWithError_block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(copyAllCounterSourceDispatchQueue, block);
  return [allSourceManagers copy];
}

dispatch_queue_t __GRCCopyAllCounterSourceGroupWithError_block_invoke()
{
  result = dispatch_queue_create("com.GPURawCounter.CopyAllCounterSourceDispatchQueue", 0);
  copyAllCounterSourceDispatchQueue = result;
  return result;
}

void __GRCCopyAllCounterSourceGroupWithError_block_invoke_2(uint64_t a1)
{
  v40[1] = *MEMORY[0x277D85DE8];
  if (!allSourceManagers)
  {
    allSourceManagers = objc_alloc_init(MEMORY[0x277CBEB18]);
    v38 = 0;
    if (MEMORY[0x25302EE20](*MEMORY[0x277D85F18], &v38) || (existing = 0, v2 = v38, v3 = IOServiceMatching("IOAcceleratorES"), IOServiceGetMatchingServices(v2, v3, &existing)))
    {

      allSourceManagers = 0;
      return;
    }

    v4 = IOIteratorNext(existing);
    if (v4)
    {
      v5 = v4;
      v6 = *MEMORY[0x277CCA450];
      v7 = 0x277CCA000uLL;
      do
      {
        v8 = *(a1 + 32);
        v9 = objc_autoreleasePoolPush();
        v10 = getenv("CTR_OVERRIDE_BUNDLE");
        if (v10)
        {
          CFProperty = CFStringCreateWithCString(0, v10, 0x8000100u);
        }

        else
        {
          CFProperty = IORegistryEntryCreateCFProperty(v5, @"GPURawCounterBundleName", 0, 0);
        }

        v12 = CFProperty;
        if (CFProperty && (v13 = CFGetTypeID(CFProperty), v13 == CFStringGetTypeID()))
        {
          v14 = v6;
          v15 = [objc_msgSend(@"/System/Library/Extensions" stringByAppendingPathComponent:{v12), "stringByAppendingString:", @".bundle"}];
          v16 = [MEMORY[0x277CCA8D8] bundleWithPath:v15];
          if (v16)
          {
            v17 = v16;
            v18 = getenv("CTR_OVERRIDE_CLASS");
            if (v18)
            {
              v19 = CFStringCreateWithCString(0, v18, 0x8000100u);
            }

            else
            {
              v19 = IORegistryEntryCreateCFProperty(v5, @"GPURawCounterPluginClassName", 0, 0);
            }

            v25 = v19;
            if (v19 && (v26 = CFGetTypeID(v19), v26 == CFStringGetTypeID()) && (v27 = [v17 classNamed:v25]) != 0 && (v28 = v27, -[objc_class isSubclassOfClass:](v27, "isSubclassOfClass:", objc_opt_class())))
            {
              v29 = [v28 alloc];
              if (objc_opt_respondsToSelector())
              {
                v30 = [v29 initWithAcceleratorPort:v5 error:v8];
                v6 = v14;
                if (!v30)
                {
                  v21 = 0;
                  goto LABEL_50;
                }

LABEL_49:
                [allSourceManagers addObject:v30];
                v21 = 1;
LABEL_50:
                v7 = 0x277CCA000;
              }

              else
              {
                v34 = [v29 initWithAcceleratorPort:v5];
                v6 = v14;
                if (v34)
                {
                  v30 = v34;
                  goto LABEL_49;
                }

                v7 = 0x277CCA000uLL;
                if (v8)
                {
                  v35 = MEMORY[0x277CCA9B8];
                  v39 = v6;
                  v40[0] = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to instantiate %@", v25, 0];
                  v36 = [v35 errorWithDomain:@"GPURawCounterErrorDomain" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v40, &v39, 1)}];
                  v21 = 0;
                  v30 = 0;
                  *v8 = v36;
                }

                else
                {
                  v21 = 0;
                  v30 = 0;
                }
              }

LABEL_35:
              CFRelease(v25);
            }

            else
            {
              v6 = v14;
              v7 = 0x277CCA000uLL;
              if (v8)
              {
                v31 = MEMORY[0x277CCA9B8];
                v39 = v6;
                v40[0] = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to find %@ in bundle at %@!\n", v25, v15, 0];
                *v8 = [v31 errorWithDomain:@"GPURawCounterErrorDomain" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v40, &v39, 1)}];
              }

              v21 = 0;
              v30 = 0;
              if (v25)
              {
                goto LABEL_35;
              }
            }

            goto LABEL_37;
          }

          if (v8)
          {
            v24 = MEMORY[0x277CCA9B8];
            v39 = v6;
            v7 = 0x277CCA000uLL;
            v40[0] = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to load bundle at %@!\n", v15, 0];
            v21 = 0;
            *v8 = [v24 errorWithDomain:@"GPURawCounterErrorDomain" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v40, &v39, 1)}];
          }

          else
          {
            v21 = 0;
            v7 = 0x277CCA000;
          }
        }

        else
        {
          if (v8)
          {
            v20 = MEMORY[0x277CCA9B8];
            v39 = v6;
            v40[0] = [*(v7 + 3240) stringWithFormat:@"Invalid counter bundle name!\n", 0];
            *v8 = [v20 errorWithDomain:@"GPURawCounterErrorDomain" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v40, &v39, 1)}];
          }

          v21 = 0;
          if (!v12)
          {
            if (v8)
            {
              goto LABEL_20;
            }

            goto LABEL_38;
          }
        }

LABEL_37:
        CFRelease(v12);
        if (v8)
        {
LABEL_20:
          v22 = *v8;
          objc_autoreleasePoolPop(v9);
          v23 = *v8;
          if ((v21 & 1) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_44;
        }

LABEL_38:
        objc_autoreleasePoolPop(v9);
        if ((v21 & 1) == 0)
        {
LABEL_39:
          v32 = *(a1 + 32);
          if (v32 && *v32)
          {
            v33 = [objc_msgSend(*v32 "description")];
          }

          else
          {
            v33 = "no vendor error info";
          }

          NSLog(&cfstr_ErrorRegistrin.isa, v5, v33);
        }

LABEL_44:
        v5 = IOIteratorNext(existing);
      }

      while (v5);
    }
  }
}

void GRCReleaseAllCounterSourceGroup()
{
  if (copyAllCounterSourceDispatchQueue)
  {
    dispatch_sync(copyAllCounterSourceDispatchQueue, &__block_literal_global_9);
  }
}