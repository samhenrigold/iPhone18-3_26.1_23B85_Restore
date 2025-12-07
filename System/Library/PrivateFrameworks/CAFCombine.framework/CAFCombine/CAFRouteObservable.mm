@interface CAFRouteObservable
- (NSString)description;
- (void)routeService:(id)service didUpdateApplicationEnabled:(BOOL)enabled;
- (void)routeService:(id)service didUpdateDestination:(id)destination;
- (void)routeService:(id)service didUpdateGeodeticSystem:(unsigned __int8)system;
- (void)routeService:(id)service didUpdateLegs:(id)legs;
- (void)routeService:(id)service didUpdateOrigin:(id)origin;
- (void)routeService:(id)service didUpdateRouteState:(unsigned __int8)state;
- (void)routeService:(id)service didUpdateUserEnabled:(BOOL)enabled;
- (void)routeService:(id)service didUpdateUserVisibleApplicationName:(id)name;
- (void)routeService:(id)service didUpdateVehicleEnabled:(BOOL)enabled;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFRouteObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFRouteObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)routeService:(id)service didUpdateRouteState:(unsigned __int8)state
{
  stateCopy = state;
  serviceCopy = service;
  selfCopy = self;
  CAFRouteObservable.routeService(_:didUpdateRouteState:)(selfCopy, stateCopy);
}

- (void)routeService:(id)service didUpdateUserVisibleApplicationName:(id)name
{
  if (name)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  serviceCopy = service;
  selfCopy = self;
  CAFRouteObservable.routeService(_:didUpdateUserVisibleApplicationName:)(selfCopy, v6, v8);
}

- (void)routeService:(id)service didUpdateApplicationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  serviceCopy = service;
  selfCopy = self;
  CAFRouteObservable.routeService(_:didUpdateApplicationEnabled:)(selfCopy, enabledCopy);
}

- (void)routeService:(id)service didUpdateUserEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  serviceCopy = service;
  selfCopy = self;
  CAFRouteObservable.routeService(_:didUpdateUserEnabled:)(selfCopy, enabledCopy);
}

- (void)routeService:(id)service didUpdateVehicleEnabled:(BOOL)enabled
{
  serviceCopy = service;
  selfCopy = self;
  CAFRouteObservable.routeService(_:didUpdateVehicleEnabled:)(selfCopy, enabled);
}

- (void)routeService:(id)service didUpdateGeodeticSystem:(unsigned __int8)system
{
  systemCopy = system;
  serviceCopy = service;
  selfCopy = self;
  CAFRouteObservable.routeService(_:didUpdateGeodeticSystem:)(selfCopy, systemCopy);
}

- (void)routeService:(id)service didUpdateOrigin:(id)origin
{
  serviceCopy = service;
  originCopy = origin;
  selfCopy = self;
  CAFRouteObservable.routeService(_:didUpdateOrigin:)(selfCopy, origin, v8, v9);
}

- (void)routeService:(id)service didUpdateDestination:(id)destination
{
  serviceCopy = service;
  destinationCopy = destination;
  selfCopy = self;
  CAFRouteObservable.routeService(_:didUpdateDestination:)(selfCopy, destination, v8, v9);
}

- (void)routeService:(id)service didUpdateLegs:(id)legs
{
  serviceCopy = service;
  legsCopy = legs;
  selfCopy = self;
  CAFRouteObservable.routeService(_:didUpdateLegs:)(selfCopy, legs);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFRouteObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFRouteObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFRouteObservable.serviceDidFinishGroupUpdate(_:)();
}

@end