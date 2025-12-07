@interface CDPDFirstUnlockObserver
- (BOOL)currentDeviceUnlockedForTheFirstTime;
- (CDPDFirstUnlockObserver)init;
- (CDPDFirstUnlockObserver)initWithUserDefaults:(id)defaults localDevice:(id)device bootSessionID:(id)d;
- (CDPDFirstUnlockObserver)initWithUserDefaults:(id)defaults urlBag:(id)bag localDevice:(id)device bootSessionID:(id)d;
- (NSArray)listeners;
- (NSUUID)bootSessionID;
- (NSUUID)savedBootSessionID;
- (void)reactTo:(const char *)to;
- (void)registerListener:(id)listener;
- (void)setListeners:(id)listeners;
@end

@implementation CDPDFirstUnlockObserver

- (NSArray)listeners
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0C590, &qword_24519A1B8);
  v2 = sub_245193904();

  return v2;
}

- (void)setListeners:(id)listeners
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0C590, &qword_24519A1B8);
  *(self + OBJC_IVAR___CDPDFirstUnlockObserver_listeners) = sub_245193914();
}

- (NSUUID)bootSessionID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C508, &qword_24519A198);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  sub_245183998(*(self + OBJC_IVAR___CDPDFirstUnlockObserver_bootSessionIDWrapper) + OBJC_IVAR____TtC15CoreCDPInternalP33_CCDB1C447E12AE43C6597553DD12C27C11UUIDWrapper_value, &v12 - v4, &qword_27EE0C508, &qword_24519A198);
  v6 = sub_2451937C4();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = sub_2451937A4();
    (*(v7 + 8))(v5, v6);
    v9 = v10;
  }

  return v9;
}

- (CDPDFirstUnlockObserver)initWithUserDefaults:(id)defaults localDevice:(id)device bootSessionID:(id)d
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C508, &qword_24519A198);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  if (d)
  {
    sub_2451937B4();
    v11 = sub_2451937C4();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_2451937C4();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  defaultsCopy = defaults;
  deviceCopy = device;
  v15 = sub_245183A70(defaultsCopy, deviceCopy, v10);

  return v15;
}

- (CDPDFirstUnlockObserver)initWithUserDefaults:(id)defaults urlBag:(id)bag localDevice:(id)device bootSessionID:(id)d
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C508, &qword_24519A198);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  if (d)
  {
    sub_2451937B4();
    v13 = sub_2451937C4();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = sub_2451937C4();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  return sub_245180064(defaults, bag, device, v12);
}

- (void)registerListener:(id)listener
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2451802F8(listener);
  swift_unknownObjectRelease();
}

- (void)reactTo:(const char *)to
{
  selfCopy = self;
  sub_245180484(to);
}

- (BOOL)currentDeviceUnlockedForTheFirstTime
{
  selfCopy = self;
  v3 = sub_2451818B4();

  return v3 & 1;
}

- (NSUUID)savedBootSessionID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C508, &qword_24519A198);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  sub_2451823E8(v5);

  v7 = sub_2451937C4();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_2451937A4();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (CDPDFirstUnlockObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end