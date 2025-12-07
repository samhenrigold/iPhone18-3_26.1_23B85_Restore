@interface NSAttributedString(WebPrivacyExtras)
- (id)_wp_stringByRemovingTrackingInformationFromURLs;
- (void)_wp_removeTrackingInformationFromURLs:()WebPrivacyExtras;
@end

@implementation NSAttributedString(WebPrivacyExtras)

- (id)_wp_stringByRemovingTrackingInformationFromURLs
{
  v16 = *MEMORY[0x277D85DE8];
  string = [self string];
  checkForURLUsingFastPath(&v11, string);

  if (v11)
  {
    v3 = v12;
    if (v12)
    {
      v4 = [self length];
      _wp_urlByRemovingTrackingInformation = [v3 _wp_urlByRemovingTrackingInformation];
      absoluteString = [_wp_urlByRemovingTrackingInformation absoluteString];
      v14[0] = 0;
      v14[1] = v4;
      v15 = absoluteString;
      memset(v10, 0, sizeof(v10));
      std::vector<std::pair<_NSRange,NSString * {__strong}>>::__init_with_size[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}>*,std::pair<_NSRange,NSString * {__strong}>*>(v10, v14, &v16, 1uLL);
      selfCopy = WebPrivacy::applyOrderedReplacements<NSAttributedString>(self, v10);
      v13 = v10;
      std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v13);
    }

    else
    {
      string2 = [self string];
      WebPrivacy::findOrderedReplacementRanges(v10, string2);
      selfCopy = WebPrivacy::applyOrderedReplacements<NSAttributedString>(self, v10);
      v14[0] = v10;
      std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](v14);

      v3 = 0;
    }
  }

  else
  {
    selfCopy = self;
    v3 = v12;
  }

  return selfCopy;
}

- (void)_wp_removeTrackingInformationFromURLs:()WebPrivacyExtras
{
  v4 = a3;
  string = [self string];
  checkForURLUsingFastPath(&v13, string);

  if (v13)
  {
    v6 = v14;
    if (!v14)
    {
      string2 = [self string];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3321888768;
      v10[2] = __78__NSAttributedString_WebPrivacyExtras___wp_removeTrackingInformationFromURLs___block_invoke_2;
      v10[3] = &__block_descriptor_48_ea8_32c91_ZTSKZ78__NSAttributedString_WebPrivacyExtras___wp_removeTrackingInformationFromURLs__E3__4_e9_v16__0_v8l;
      v8 = MEMORY[0x2743DC460](v4);
      v9 = [self copy];
      v10[4] = MEMORY[0x2743DC460](v8);
      v10[5] = v9;
      WebPrivacy::findOrderedReplacementRanges(string2, v10);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __78__NSAttributedString_WebPrivacyExtras___wp_removeTrackingInformationFromURLs___block_invoke;
    v11[3] = &unk_279EAF380;
    v11[4] = self;
    v12 = v4;
    [v6 _wp_removeTrackingInformation:v11];
  }

  else
  {
    (*(v4 + 2))(v4, self);
    v6 = v14;
  }
}

@end