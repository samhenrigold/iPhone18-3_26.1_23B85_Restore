@interface ANXPCManager
- (ANXPCManager)init;
- (ANXPCManager)initWithMachServiceName:(id)name remoteObjectInterface:(id)interface exportedInterface:(id)exportedInterface exportedObject:(id)object;
- (NSXPCConnection)connection;
- (void)addCheckInObserver:(id)observer;
- (void)dealloc;
@end

@implementation ANXPCManager

- (ANXPCManager)initWithMachServiceName:(id)name remoteObjectInterface:(id)interface exportedInterface:(id)exportedInterface exportedObject:(id)object
{
  v9 = sub_223800FE0();
  v11 = v10;
  interfaceCopy = interface;
  exportedInterfaceCopy = exportedInterface;
  swift_unknownObjectRetain();
  return XPCManager.init(machServiceName:remoteObjectInterface:exportedInterface:exportedObject:)(v9, v11, interfaceCopy, exportedInterfaceCopy, object);
}

- (void)dealloc
{
  v3 = *(self + OBJC_IVAR___ANXPCManager__connection);
  selfCopy = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for XPCManager(0);
  [(ANXPCManager *)&v5 dealloc];
}

- (void)addCheckInObserver:(id)observer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2237FEA1C(observer);
  swift_unknownObjectRelease();
}

- (NSXPCConnection)connection
{
  selfCopy = self;
  v3 = sub_2237FEBE0();

  return v3;
}

- (ANXPCManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end