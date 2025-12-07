@interface GetSupportedLanguagesIntent
- (GetSupportedLanguagesIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (GetSupportedLanguagesIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation GetSupportedLanguagesIntent

- (GetSupportedLanguagesIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    v5 = sub_269424118();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  storeCopy = store;
  return GetSupportedLanguagesIntent.init(identifier:backingStore:)(v5, v7, store);
}

- (GetSupportedLanguagesIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  v6 = sub_269424118();
  v8 = v7;
  sub_269424118();
  if (name)
  {
    sub_2694240A8();
  }

  return GetSupportedLanguagesIntent.init(domain:verb:parametersByName:)(v6, v8);
}

@end