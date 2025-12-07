@interface NSMutableString
@end

@implementation NSMutableString

void __82__NSMutableString_WebPrivacyExtras___wp_removeTrackingInformationFromURLsInPlace___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained length];
    [v3 absoluteString];
    v9[0] = 0;
    v10 = v9[1] = v6;
    memset(v7, 0, sizeof(v7));
    std::vector<std::pair<_NSRange,NSString * {__strong}>>::__init_with_size[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}>*,std::pair<_NSRange,NSString * {__strong}>*>(v7, v9, &v11, 1uLL);
    WebPrivacy::applyOrderedReplacementsInPlace<NSMutableString>(v5, v7);
    v8 = v7;
    std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v8);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __82__NSMutableString_WebPrivacyExtras___wp_removeTrackingInformationFromURLsInPlace___block_invoke_2(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    WebPrivacy::applyOrderedReplacementsInPlace<NSMutableString>(WeakRetained, a2);
  }

  v6 = *(*(a1 + 32) + 16);

  return v6();
}

@end