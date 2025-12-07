@interface PRPeerActivityEntry
+ (id)entryWithActivityType:(int)type;
+ (id)entryWithActivityType:(int)type timestamp:(double)timestamp;
@end

@implementation PRPeerActivityEntry

+ (id)entryWithActivityType:(int)type
{
  v3 = *&type;
  v4 = sub_100005288();

  return [PRPeerActivityEntry entryWithActivityType:v3 timestamp:v4];
}

+ (id)entryWithActivityType:(int)type timestamp:(double)timestamp
{
  v5 = *&type;
  v6 = objc_opt_new();
  [v6 setLatestActivityType:v5];
  [v6 setLatestActivityTimestamp:timestamp];

  return v6;
}

@end