@interface _GreenTeaPostalAddressLocalizer
- (id)localizedStringForPostalAddressString:(id)string returningNilIfNotFound:(BOOL)found;
@end

@implementation _GreenTeaPostalAddressLocalizer

- (id)localizedStringForPostalAddressString:(id)string returningNilIfNotFound:(BOOL)found
{
  foundCopy = found;
  stringCopy = string;
  if (GetBundle_cn_once_token_1 != -1)
  {
    [_StandardPostalAddressLocalizer localizedStringForPostalAddressString:returningNilIfNotFound:];
  }

  v6 = [CNLocalization localizedStringForString:stringCopy bundle:GetBundle_cn_once_object_1 table:@"CNPostalAddressValues_cn" returningNilIfNotFound:1];
  v7 = v6;
  if (!v6)
  {
    if (GetBundle_cn_once_token_1 != -1)
    {
      [_StandardPostalAddressLocalizer localizedStringForPostalAddressString:returningNilIfNotFound:];
    }

    v7 = [CNLocalization localizedStringForString:stringCopy bundle:GetBundle_cn_once_object_1 table:@"CNPostalAddressValues" returningNilIfNotFound:foundCopy];
  }

  return v7;
}

@end