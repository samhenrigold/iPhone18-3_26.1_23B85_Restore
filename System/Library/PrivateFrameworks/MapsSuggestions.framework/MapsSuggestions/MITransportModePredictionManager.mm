@interface MITransportModePredictionManager
- (MITransportModePredictionManager)init;
- (id)transportModeWithOrigin:(id)origin destination:(id)destination features:(id)features userHash4:(id)hash4;
@end

@implementation MITransportModePredictionManager

- (MITransportModePredictionManager)init
{
  v3 = objc_allocWithZone(type metadata accessor for MapsIntelligenceTransportModePredictionManager());
  *(&self->super.isa + OBJC_IVAR___MITransportModePredictionManager__manager) = MapsIntelligenceTransportModePredictionManager.init()();
  v5.receiver = self;
  v5.super_class = type metadata accessor for MITransportModePredictionManagerWrapper();
  return [(MITransportModePredictionManager *)&v5 init];
}

- (id)transportModeWithOrigin:(id)origin destination:(id)destination features:(id)features userHash4:(id)hash4
{
  var1 = destination.var1;
  var0 = destination.var0;
  v9 = origin.var1;
  v10 = origin.var0;
  if (hash4)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  featuresCopy = features;
  selfCopy = self;
  v17 = MITransportModePredictionManagerWrapper.transportMode(origin:destination:features:userHash4:)(featuresCopy, v12, v14, v10, v9, var0, var1);

  return v17;
}

@end