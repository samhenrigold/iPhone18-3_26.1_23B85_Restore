@interface SKRFlowExtensionContextHost
- (SKRFlowExtensionContextHost)init;
- (SKRFlowExtensionContextHost)initWithInputItems:(id)items contextUUID:(id)d;
- (SKRFlowExtensionContextHost)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
@end

@implementation SKRFlowExtensionContextHost

- (SKRFlowExtensionContextHost)init
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = [(SKRFlowExtensionContextHost *)self initWithInputItems:isa listenerEndpoint:0 contextUUID:0];

  return v4;
}

- (SKRFlowExtensionContextHost)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (d)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  endpointCopy = endpoint;
  specialized FlowExtensionContextHost.init(inputItems:listenerEndpoint:contextUUID:)(v10, endpoint, v9);
  v15 = v14;

  return v15;
}

- (SKRFlowExtensionContextHost)initWithInputItems:(id)items contextUUID:(id)d
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  if (d)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for UUID();
    v10 = 0;
    v9 = (*(v8 - 8) + 56);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = (*(v8 - 8) + 56);
    v10 = 1;
  }

  (*v9)(v7, v10, 1, v8);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end