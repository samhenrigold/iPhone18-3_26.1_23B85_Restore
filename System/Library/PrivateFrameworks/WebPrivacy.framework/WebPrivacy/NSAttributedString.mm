@interface NSAttributedString
@end

@implementation NSAttributedString

void __78__NSAttributedString_WebPrivacyExtras___wp_removeTrackingInformationFromURLs___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = a1 + 32;
  v5 = *(a1 + 32);
  v4 = *(v6 + 8);
  v7 = [v5 length];
  [v3 absoluteString];
  v11[0] = 0;
  v12 = v11[1] = v7;
  memset(v9, 0, sizeof(v9));
  std::vector<std::pair<_NSRange,NSString * {__strong}>>::__init_with_size[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}>*,std::pair<_NSRange,NSString * {__strong}>*>(v9, v11, &v13, 1uLL);
  v8 = WebPrivacy::applyOrderedReplacements<NSAttributedString>(v5, v9);
  (*(v4 + 16))(v4, v8);

  v10 = v9;
  std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v10);
}

void __78__NSAttributedString_WebPrivacyExtras___wp_removeTrackingInformationFromURLs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = WebPrivacy::applyOrderedReplacements<objc_object>(*(a1 + 40), a2);
  (*(v2 + 16))(v2);
}

@end