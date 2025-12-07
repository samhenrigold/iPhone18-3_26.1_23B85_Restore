@interface WatchSportsEventIntent
- (WatchSportsEventIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (WatchSportsEventIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation WatchSportsEventIntent

- (WatchSportsEventIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    v5 = sub_269854A94();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  storeCopy = store;
  return WatchSportsEventIntent.init(identifier:backingStore:)(v5, v7, store);
}

- (WatchSportsEventIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  v6 = sub_269854A94();
  v8 = v7;
  sub_269854A94();
  if (name)
  {
    sub_2698549E4();
  }

  return WatchSportsEventIntent.init(domain:verb:parametersByName:)(v6, v8);
}

@end