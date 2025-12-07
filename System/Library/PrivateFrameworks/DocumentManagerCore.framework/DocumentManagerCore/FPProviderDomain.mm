@interface FPProviderDomain
@end

@implementation FPProviderDomain

void __81__FPProviderDomain_DOCDomainCache__allowedFileProviderBundleIdentifiersFiltered___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v7 = docLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __81__FPProviderDomain_DOCDomainCache__allowedFileProviderBundleIdentifiersFiltered___block_invoke_cold_1(v6, v7);
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v5 allValues];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 supportsEnumeration] && objc_msgSend(v13, "isEnabled") && (*(*(a1 + 48) + 16))())
          {
            v14 = *(a1 + 32);
            v15 = [v13 providerID];
            [v14 addObject:v15];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __81__FPProviderDomain_DOCDomainCache__allowedFileProviderBundleIdentifiersFiltered___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_249340000, a2, OS_LOG_TYPE_ERROR, "Error while trying to search sources. Error: %@", &v2, 0xCu);
}

@end