@interface NESMProviderManager
- (NESMProviderManager)init;
@end

@implementation NESMProviderManager

- (NESMProviderManager)init
{
  v13.receiver = self;
  v13.super_class = NESMProviderManager;
  v2 = [(NESMProviderManager *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("NESMProviderManager queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = xpc_event_publisher_create();
    eventPublisher = v2->_eventPublisher;
    v2->_eventPublisher = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    registrationMap = v2->_registrationMap;
    v2->_registrationMap = v8;

    v10 = objc_alloc_init(NSMutableArray);
    extensionsBeingUpdated = v2->_extensionsBeingUpdated;
    v2->_extensionsBeingUpdated = v10;
  }

  return v2;
}

@end