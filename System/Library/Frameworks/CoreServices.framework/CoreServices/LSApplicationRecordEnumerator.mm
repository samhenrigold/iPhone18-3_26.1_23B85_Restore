@interface LSApplicationRecordEnumerator
@end

@implementation LSApplicationRecordEnumerator

void __60___LSApplicationRecordEnumerator__prepareWithContext_error___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v4 = a2;
  v3 = *(a1 + 32);
  if (*(a3 + 168) == *(v3 + 136))
  {
    std::vector<unsigned int>::push_back[abi:nn200100]((v3 + 112), &v4);
  }
}

void __60___LSApplicationRecordEnumerator__prepareWithContext_error___block_invoke_2(uint64_t a1, int a2)
{
  v2 = a2;
  if (a2)
  {
    std::vector<unsigned int>::push_back[abi:nn200100]((*(a1 + 32) + 112), &v2);
  }
}

void __96___LSApplicationRecordEnumerator_Private___applicationRecordWithContext_bundleIdentifierOrUnit___block_invoke(uint64_t a1, uint64_t a2, LaunchServices::AppRecordEnumeration *this, LSContext *a4)
{
  v5 = *(a1 + 32);
  if (*(v5 + 96))
  {
    v8 = std::__throw_bad_variant_access[abi:nn200100]();
    LaunchServices::AppRecordEnumeration::findAppByIdentifierForEnumerator(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v7 = *(v5 + 104);

    LaunchServices::AppRecordEnumeration::evaluateBundleNoIOCommon(this, a4, v7, a4);
  }
}

@end