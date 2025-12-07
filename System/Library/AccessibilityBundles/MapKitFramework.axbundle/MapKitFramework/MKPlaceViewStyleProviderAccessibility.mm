@interface MKPlaceViewStyleProviderAccessibility
+ (id)attributionStringWithTitle:(id)title displayName:(id)name logo:(id)logo isSnippetLogo:(BOOL)snippetLogo;
@end

@implementation MKPlaceViewStyleProviderAccessibility

+ (id)attributionStringWithTitle:(id)title displayName:(id)name logo:(id)logo isSnippetLogo:(BOOL)snippetLogo
{
  snippetLogoCopy = snippetLogo;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___MKPlaceViewStyleProviderAccessibility;
  v11 = objc_msgSendSuper2(&v14, sel_attributionStringWithTitle_displayName_logo_isSnippetLogo_, title, nameCopy, logo, snippetLogoCopy);
  v12 = v11;
  if (nameCopy)
  {
    [v11 addAttribute:@"AXAttributeDisplayName" value:nameCopy range:{0, objc_msgSend(v11, "length")}];
  }

  return v12;
}

@end