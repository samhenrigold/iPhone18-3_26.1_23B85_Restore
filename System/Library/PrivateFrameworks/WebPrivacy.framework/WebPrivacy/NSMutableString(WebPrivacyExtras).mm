@interface NSMutableString(WebPrivacyExtras)
- (void)_wp_removeTrackingInformationFromURLs;
- (void)_wp_removeTrackingInformationFromURLsInPlace:()WebPrivacyExtras;
@end

@implementation NSMutableString(WebPrivacyExtras)

- (void)_wp_removeTrackingInformationFromURLs
{
  v12 = *MEMORY[0x277D85DE8];
  checkForURLUsingFastPath(&v7, self);
  v2 = v8;
  if (v7 == 1)
  {
    if (v8)
    {
      v3 = [(NSString *)self length];
      _wp_urlByRemovingTrackingInformation = [v2 _wp_urlByRemovingTrackingInformation];
      absoluteString = [_wp_urlByRemovingTrackingInformation absoluteString];
      v10[0] = 0;
      v10[1] = v3;
      v11 = absoluteString;
      memset(v6, 0, sizeof(v6));
      std::vector<std::pair<_NSRange,NSString * {__strong}>>::__init_with_size[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}>*,std::pair<_NSRange,NSString * {__strong}>*>(v6, v10, &v12, 1uLL);
      WebPrivacy::applyOrderedReplacementsInPlace<NSMutableString>(self, v6);
      v9 = v6;
      std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v9);
    }

    else
    {
      WebPrivacy::findOrderedReplacementRanges(v6, self);
      WebPrivacy::applyOrderedReplacementsInPlace<NSMutableString>(self, v6);
      v10[0] = v6;
      std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](v10);
    }
  }
}

- (void)_wp_removeTrackingInformationFromURLsInPlace:()WebPrivacyExtras
{
  v4 = a3;
  checkForURLUsingFastPath(&v14, self);
  if (v14)
  {
    v5 = v15;
    if (!v15)
    {
      objc_initWeak(&from, self);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3321888768;
      v8[2] = __82__NSMutableString_WebPrivacyExtras___wp_removeTrackingInformationFromURLsInPlace___block_invoke_2;
      v8[3] = &__block_descriptor_48_ea8_32c95_ZTSKZ82__NSMutableString_WebPrivacyExtras___wp_removeTrackingInformationFromURLsInPlace__E3__5_e9_v16__0_v8l;
      location = MEMORY[0x2743DC460](v4);
      objc_copyWeak(&v7, &from);
      v8[4] = MEMORY[0x2743DC460](location);
      objc_copyWeak(&v9, &v7);
      WebPrivacy::findOrderedReplacementRanges(self, v8);
    }

    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __82__NSMutableString_WebPrivacyExtras___wp_removeTrackingInformationFromURLsInPlace___block_invoke;
    v11[3] = &unk_279EAF3A8;
    objc_copyWeak(&v13, &location);
    v12 = v4;
    [v5 _wp_removeTrackingInformation:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v4[2](v4);
    v5 = v15;
  }
}

@end