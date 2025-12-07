@interface SMHandleFormatting
+ (id)canonicalIDSAddressForAddress:(id)address;
@end

@implementation SMHandleFormatting

+ (id)canonicalIDSAddressForAddress:(id)address
{
  addressCopy = address;
  if (IMSharedUtilitiesLibraryCore(0) && getIMChatCanonicalIDSIDsForAddressSymbolLoc())
  {
    v4 = addressCopy;
    IMChatCanonicalIDSIDsForAddressSymbolLoc = getIMChatCanonicalIDSIDsForAddressSymbolLoc();
    if (!IMChatCanonicalIDSIDsForAddressSymbolLoc)
    {
      v10 = dlerror();
      v11 = abort_report_np("%s", v10);
      return IMSharedUtilitiesLibraryCore(v11);
    }

    v6 = IMChatCanonicalIDSIDsForAddressSymbolLoc(v4);

    _stripFZIDPrefix = [v6 _stripFZIDPrefix];

    if (_stripFZIDPrefix && ([_stripFZIDPrefix isEqualToString:@"(null)"] & 1) == 0)
    {
      v8 = _stripFZIDPrefix;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end