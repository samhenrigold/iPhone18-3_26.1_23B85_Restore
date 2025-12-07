@interface RatchetCoolOffFactory
+ (id)makeViewControllerWith:(id)with delegate:(id)delegate;
- (_TtC28LocalAuthenticationUIService21RatchetCoolOffFactory)init;
@end

@implementation RatchetCoolOffFactory

- (_TtC28LocalAuthenticationUIService21RatchetCoolOffFactory)init
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (id)makeViewControllerWith:(id)with delegate:(id)delegate
{
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for RatchetCoolOffContentViewModel(0);
  swift_unknownObjectRetain_n();
  v6 = RatchetCoolOffContentViewModel.__allocating_init(with:delegate:)(v5, delegate);
  type metadata accessor for RatchetCoolOffContentViewController();
  v7 = lazy protocol witness table accessor for type RatchetCoolOffContentViewModel and conformance RatchetCoolOffContentViewModel();
  v8 = v6;
  v9 = RatchetCoolOffContentViewController.__allocating_init(viewModel:)(v8, v7);

  swift_unknownObjectRelease();

  return v9;
}

@end