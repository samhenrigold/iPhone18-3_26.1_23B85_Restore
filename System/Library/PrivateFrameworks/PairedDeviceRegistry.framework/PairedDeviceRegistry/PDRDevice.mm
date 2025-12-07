@interface PDRDevice
- (BOOL)isActive;
- (BOOL)isAltAccount;
- (BOOL)isArchived;
- (BOOL)isPaired;
- (BOOL)isSetup;
- (NSUUID)pairingID;
- (PDRDevice)init;
- (id)bluetoothIdentifier;
- (id)lastActiveDate;
- (id)pairingStorePath;
- (id)propertyNames;
- (id)valueForProperty:(id)property;
@end

@implementation PDRDevice

- (BOOL)isAltAccount
{
  selfCopy = self;
  v3 = PDRDevice.isPaired()(PDRDevicePropertyKeyIsAltAccount);

  return v3 & 1;
}

- (PDRDevice)init
{
  v3.receiver = self;
  v3.super_class = PDRDevice;
  return [(PDRDevice *)&v3 init];
}

- (BOOL)isArchived
{
  selfCopy = self;
  v3 = PDRDevice.isPaired()(PDRDevicePropertyKeyIsArchived);

  return v3 & 1;
}

- (BOOL)isActive
{
  selfCopy = self;
  v3 = PDRDevice.isPaired()(PDRDevicePropertyKeyIsActive);

  return v3 & 1;
}

- (id)pairingStorePath
{
  selfCopy = self;
  v3 = PDRDevice.localPairingDataStorePath.getter();
  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x2318DF040](v3, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isPaired
{
  selfCopy = self;
  v3 = PDRDevice.isPaired()(PDRDevicePropertyKeyIsPaired);

  return v3 & 1;
}

- (BOOL)isSetup
{
  selfCopy = self;
  v3 = PDRDevice.isPaired()(PDRDevicePropertyKeyIsSetup);

  return v3 & 1;
}

- (id)lastActiveDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  PDRDevice.lastActiveDate()(v5);

  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
    v10 = isa;
  }

  return v10;
}

- (id)bluetoothIdentifier
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  PDRDevice.bluetoothIdentifier()(v6);

  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v8.super.isa;
}

- (NSUUID)pairingID
{
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_0(v2);
  return 0;
}

- (id)valueForProperty:(id)property
{
  v3 = objc_opt_class();
  OUTLINED_FUNCTION_0(v3);
  return 0;
}

- (id)propertyNames
{
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_0(v2);
  return 0;
}

@end