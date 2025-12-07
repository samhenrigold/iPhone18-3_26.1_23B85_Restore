@interface NSMutableAttributedString
@end

@implementation NSMutableAttributedString

void __92__NSMutableAttributedString_WebPrivacyExtras___wp_removeTrackingInformationFromURLsInPlace___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) length];
    [v3 absoluteString];
    v8[0] = 0;
    v9 = v8[1] = v5;
    memset(v6, 0, sizeof(v6));
    std::vector<std::pair<_NSRange,NSString * {__strong}>>::__init_with_size[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}>*,std::pair<_NSRange,NSString * {__strong}>*>(v6, v8, &v10, 1uLL);
    WebPrivacy::applyOrderedReplacementsInPlace<NSMutableAttributedString>(WeakRetained, v6);
    v7 = v6;
    std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v7);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __92__NSMutableAttributedString_WebPrivacyExtras___wp_removeTrackingInformationFromURLsInPlace___block_invoke_2(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    WebPrivacy::applyOrderedReplacementsInPlace<NSMutableAttributedString>(WeakRetained, a2);
  }

  v6 = *(*(a1 + 32) + 16);

  return v6();
}

@end