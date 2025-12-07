@interface LNLinkEnumerationValueType
@end

@implementation LNLinkEnumerationValueType

uint64_t __148__LNLinkEnumerationValueType_ContentItem__wf_contentItemFromLinkValue_appBundleIdentifier_displayedBundleIdentifier_teamIdentifier_disclosureLevel___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  isEqualToString = objc_msgSend_isEqualToString_(v2);

  return isEqualToString;
}

@end