@interface LSSharedWebCredentialsAppLinkPlugIn
@end

@implementation LSSharedWebCredentialsAppLinkPlugIn

uint64_t __101___LSSharedWebCredentialsAppLinkPlugIn_bindingWithContext_forServiceDetails_callingBundleIdentifier___block_invoke(uint64_t a1, id *a2, uint64_t a3)
{
  v3 = *(*(a3 + 8) + 189);
  if (v3 & 0x100000) != 0 || (v3)
  {
    return 0;
  }

  [(_LSDatabase *)*a2 store];
  v8 = _CSStringCopyCFString();
  v9 = v8;
  if (v8 && ([v8 isEqual:*(a1 + 32)] & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v10 = [_LSLazyPropertyList lazyPropertyListWithContext:a2 unit:*(*(a3 + 8) + 140)];
    v11 = [v10 _applicationIdentifier];
    v4 = [v11 isEqual:*(a1 + 40)];
  }

  return v4;
}

void __74___LSSharedWebCredentialsAppLinkPlugIn_appLinksWithContext_forSWCResults___block_invoke(uint64_t a1, unsigned int *a2, void *a3)
{
  v5 = a3;
  v6 = [[LSApplicationRecord alloc] _initWithContext:*(a1 + 56) bundleID:*a2 bundleData:*(a2 + 1) error:0];
  if (v6)
  {
    v7 = [*(a1 + 32) URLComponents];
    v8 = [v7 URL];
    v9 = [(LSAppLink *)_LSSharedWebCredentialsAppLink _appLinkWithURL:v8 applicationRecord:v6 plugInClass:objc_opt_class()];

    if (v9)
    {
      v10 = *(a2 + 1);
      *(v9 + 32) = *a2;
      *(v9 + 48) = v10;
      objc_storeStrong((v9 + 64), *(a2 + 4));
      objc_storeStrong((v9 + 72), *(a2 + 5));
      *(v9 + 80) = *(a2 + 6);
      [v9 setServiceDetails:v5];
      [*(a1 + 40) addObject:v9];
      v11 = *(*(a1 + 48) + 8);
      v13 = v11[7];
      v12 = v11[8];
      if (v13 >= v12)
      {
        v15 = v11[6];
        v16 = (v13 - v15) >> 3;
        if ((v16 + 1) >> 61)
        {
          std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
        }

        v17 = v12 - v15;
        v18 = v17 >> 2;
        if (v17 >> 2 <= (v16 + 1))
        {
          v18 = v16 + 1;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18;
        }

        v21[4] = v11 + 6;
        if (v19)
        {
          std::allocator<LSApplicationRecord * {__strong}>::allocate_at_least[abi:nn200100]((v11 + 6), v19);
        }

        v20 = (8 * v16);
        v21[0] = 0;
        v21[1] = v20;
        v21[3] = 0;
        *v20 = v6;
        v21[2] = v20 + 1;
        std::vector<LSApplicationRecord * {__strong}>::__swap_out_circular_buffer((v11 + 6), v21);
        v14 = v11[7];
        std::__split_buffer<LSApplicationRecord * {__strong}>::~__split_buffer(v21);
      }

      else
      {
        *v13 = v6;
        v14 = v13 + 1;
      }

      v11[7] = v14;
    }
  }
}

void __66___LSSharedWebCredentialsAppLinkPlugIn_appLinksWithContext_error___block_invoke(uint64_t a1)
{
  v9 = *(a1 + 56);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get(&v9, v2, 0);

  if (v3)
  {
    v4 = [*(a1 + 32) appLinksWithContext:v3 forSWCResults:*(a1 + 40)];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);
  }

  if (v9 && v11 == 1)
  {
    _LSContextDestroy(v9);
  }

  v7 = v10;
  v9 = 0;
  v10 = 0;

  v11 = 0;
  v8 = v12;
  v12 = 0;
}

@end