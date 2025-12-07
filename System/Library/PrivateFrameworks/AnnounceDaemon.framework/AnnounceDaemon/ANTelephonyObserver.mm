@interface ANTelephonyObserver
- (ANTelephonyObserver)init;
- (ANTelephonyObserver)initWithQueue:(id)queue;
- (ANTelephonyObserverDelegate)delegate;
- (BOOL)hasCalls;
- (void)dealloc;
@end

@implementation ANTelephonyObserver

- (BOOL)hasCalls
{
  selfCopy = self;
  v3 = sub_23F57FD88();

  return v3 & 1;
}

- (ANTelephonyObserverDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (ANTelephonyObserver)initWithQueue:(id)queue
{
  v5 = sub_23F5881D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  queueCopy = queue;
  sub_23F5881C4();
  (*(v6 + 32))(self + OBJC_IVAR___ANTelephonyObserver_logger, v8, v5);
  v10 = type metadata accessor for TelephonyObserver(0);
  v13.receiver = self;
  v13.super_class = v10;
  v11 = [(ANTelephonyObserver *)&v13 init];
  sub_23F580278(queue);

  return v11;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  v6 = *MEMORY[0x277D26B50];
  sharedAVSystemController = [objc_opt_self() sharedAVSystemController];
  [defaultCenter removeObserver:selfCopy name:v6 object:sharedAVSystemController];

  v8.receiver = selfCopy;
  v8.super_class = type metadata accessor for TelephonyObserver(0);
  [(ANTelephonyObserver *)&v8 dealloc];
}

- (ANTelephonyObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end