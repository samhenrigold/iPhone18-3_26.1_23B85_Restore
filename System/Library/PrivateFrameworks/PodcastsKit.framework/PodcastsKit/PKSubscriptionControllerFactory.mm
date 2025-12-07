@interface PKSubscriptionControllerFactory
+ (id)platformInstance;
- (PKSubscriptionControllerFactory)init;
@end

@implementation PKSubscriptionControllerFactory

+ (id)platformInstance
{
  if ([objc_opt_self() supportsBlueMoon])
  {
    type metadata accessor for MediaAPISubscriptionController();
    v2 = swift_allocObject();
    sub_25EA1E538();
    swift_allocObject();
    v3 = sub_25EA1E528();
    v4 = v2;
    *(v2 + 16) = v3;
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for MediaRemoteSubscriptionController()) init];
  }

  return v4;
}

- (PKSubscriptionControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SubscriptionControllerFactory();
  return [(PKSubscriptionControllerFactory *)&v3 init];
}

@end