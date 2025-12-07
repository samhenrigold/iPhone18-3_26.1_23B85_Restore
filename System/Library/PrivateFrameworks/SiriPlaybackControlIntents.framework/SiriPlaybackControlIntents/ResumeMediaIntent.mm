@interface ResumeMediaIntent
- (ResumeMediaIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (ResumeMediaIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation ResumeMediaIntent

- (ResumeMediaIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    v5 = sub_268B37BF4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  storeCopy = store;
  return ResumeMediaIntent.init(identifier:backingStore:)(v5, v7, store);
}

- (ResumeMediaIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  v6 = sub_268B37BF4();
  v8 = v7;
  sub_268B37BF4();
  if (name)
  {
    sub_268B37B64();
  }

  return ResumeMediaIntent.init(domain:verb:parametersByName:)(v6, v8);
}

@end