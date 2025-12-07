@interface AccessoryHandler
- (void)accessoryConnectionDetached:(id)detached;
- (void)accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol properties:(id)properties forConnection:(id)connection;
@end

@implementation AccessoryHandler

- (void)accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol properties:(id)properties forConnection:(id)connection
{
  propertiesCopy = properties;
  v9 = *&protocol;
  if (attached)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    if (!propertiesCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0;
  v14 = 0;
  if (properties)
  {
LABEL_3:
    propertiesCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  if (connection)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    connection = v16;
  }

  else
  {
    v15 = 0;
  }

  selfCopy = self;
  sub_1000A13A8(v12, v14, type, v9, propertiesCopy, v15, connection);
}

- (void)accessoryConnectionDetached:(id)detached
{
  if (detached)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1000A18F0(v4, v6);
}

@end