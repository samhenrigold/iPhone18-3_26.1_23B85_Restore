@interface OSEligibilityQuery
- (OSEligibilityQuery)init;
- (OSEligibilityQuery)initWithDomain:(unint64_t)domain bundleID:(id)d persona:(id)persona error:(id *)error;
- (OS_xpc_object)context;
- (OS_xpc_object)status;
@end

@implementation OSEligibilityQuery

- (OS_xpc_object)status
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (OS_xpc_object)context
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (OSEligibilityQuery)initWithDomain:(unint64_t)domain bundleID:(id)d persona:(id)persona error:(id *)error
{
  v8 = sub_25D168444();
  v10 = v9;
  if (persona)
  {
    v11 = sub_25D168444();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  return sub_25D167C38(domain, v8, v10, v11, v13);
}

- (OSEligibilityQuery)init
{
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return sub_25D168314();
}

@end