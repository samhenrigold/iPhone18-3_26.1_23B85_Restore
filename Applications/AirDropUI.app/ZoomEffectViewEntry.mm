@interface ZoomEffectViewEntry
- (BOOL)shouldAnimateProperty:(id)property;
- (_TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A19ZoomEffectViewEntry)init;
- (void)applyRequestedEffectToView:(id)view;
@end

@implementation ZoomEffectViewEntry

- (BOOL)shouldAnimateProperty:(id)property
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v3;
  if (v4 == 1836019578 && v3 == 0xE400000000000000)
  {
    0xE400000000000000, 0xE400000000000000, 0x6D6F6F7A, v5, v6, v7, v8, v9;
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v10, v12, v13, v14, v15, v16, v17, v18;
  }

  return v11 & 1;
}

- (void)applyRequestedEffectToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  layer = [(ZoomEffectViewEntry *)viewCopy layer];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    [v6 setZoom:*&selfCopy->_UIVisualEffectViewEntry_opaque[OBJC_IVAR____TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A19ZoomEffectViewEntry_zoomAmount]];
    v7 = layer;
  }

  else
  {
    v7 = viewCopy;
    viewCopy = selfCopy;
    selfCopy = layer;
  }
}

- (_TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A19ZoomEffectViewEntry)init
{
  *&self->_UIVisualEffectViewEntry_opaque[OBJC_IVAR____TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A19ZoomEffectViewEntry_zoomAmount] = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ZoomEffectViewEntry();
  return [(ZoomEffectViewEntry *)&v3 init];
}

@end