@interface _StandardPostalAddressLocalizer
- (id)localizedStringForPostalAddressString:(id)string returningNilIfNotFound:(BOOL)found;
@end

@implementation _StandardPostalAddressLocalizer

- (id)localizedStringForPostalAddressString:(id)string returningNilIfNotFound:(BOOL)found
{
  foundCopy = found;
  v5 = GetBundle_cn_once_token_1;
  stringCopy = string;
  if (v5 != -1)
  {
    [_StandardPostalAddressLocalizer localizedStringForPostalAddressString:returningNilIfNotFound:];
  }

  v7 = GetBundle_cn_once_object_1;
  v8 = [CNLocalization localizedStringForString:stringCopy bundle:v7 table:@"CNPostalAddressValues" returningNilIfNotFound:foundCopy];

  return v8;
}

@end