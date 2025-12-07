@interface RegistryCrux
- (void)xpcDeviceID:(id)d needsPasscode:(id)passcode;
- (void)xpcHasNewOOBKey:(id)key;
@end

@implementation RegistryCrux

- (void)xpcDeviceID:(id)d needsPasscode:(id)passcode
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  if (d)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  specialized RegistryCrux.xpcDeviceID(_:needsPasscode:)();
  outlined destroy of UUID?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

- (void)xpcHasNewOOBKey:(id)key
{
  keyCopy = key;
  if (key)
  {

    v4 = keyCopy;
    keyCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {

    v6 = 0xF000000000000000;
  }

  closure #2 in RegistryCrux.connectionLocked()("RegistryCrux: xpcHasNewOOBKey");
  outlined consume of Data?(keyCopy, v6);
}

@end