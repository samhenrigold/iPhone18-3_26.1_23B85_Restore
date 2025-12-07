@interface NSString
@end

@implementation NSString

void __68__NSString_ContactsFoundationPhoneNumbers___cn_LTRControlCharacters__block_invoke()
{
  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"\u202A\u202C\u202D"];
  v0 = [v2 copy];
  v1 = _cn_LTRControlCharacters_cn_once_object_2;
  _cn_LTRControlCharacters_cn_once_object_2 = v0;
}

void __83__NSString_ContactsFoundationPhoneNumbers___cn_whitespaceExceptAscii32CharacterSet__block_invoke()
{
  v2 = [MEMORY[0x1E696AD48] whitespaceCharacterSet];
  [v2 removeCharactersInRange:{32, 1}];
  v0 = [v2 copy];
  v1 = _cn_whitespaceExceptAscii32CharacterSet_cn_once_object_3;
  _cn_whitespaceExceptAscii32CharacterSet_cn_once_object_3 = v0;
}

void __74__NSString_ContactsFoundation___cn_rangeOfCommonPrefixWithString_options___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v11 = a3 + a4;
  if (a3 + a4 <= [*(a1 + 32) length])
  {
    v12 = [*(a1 + 32) substringWithRange:{a3, a4}];
    if (![*(a1 + 40) compare:? options:? range:?])
    {
      *(*(*(a1 + 48) + 8) + 24) = v11;
    }
  }

  else
  {
    *a7 = 1;
  }
}

uint64_t __70__NSString_ContactsFoundation___cn_rangeOfAnchoredCharacters_options___block_invoke(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return [*(a1 + 32) length];
  }

  else
  {
    return 0;
  }
}

uint64_t __70__NSString_ContactsFoundation___cn_rangeOfAnchoredCharacters_options___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    a3 = -1;
  }

  return a2 + a3;
}

void __44__NSString_ContactsFoundation___cn_flatMap___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  v4 = v2;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &stru_1EF441028;
  }

  [v1 appendString:v3];
}

void __76__NSString_ContactsFoundationPhoneNumbers___cn_phoneNumberInvalidCharacters__block_invoke(uint64_t a1)
{
  v1 = [objc_opt_class() _cn_LTRControlCharacters];
  v5 = [v1 mutableCopy];

  v2 = [objc_opt_class() _cn_whitespaceExceptAscii32CharacterSet];
  [v5 formUnionWithCharacterSet:v2];

  v3 = [v5 copy];
  v4 = _cn_phoneNumberInvalidCharacters_cn_once_object_1;
  _cn_phoneNumberInvalidCharacters_cn_once_object_1 = v3;
}

@end