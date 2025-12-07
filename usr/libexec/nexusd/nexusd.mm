uint64_t sub_100000D28@<X0>(uint64_t *a1@<X8>)
{
  v23 = a1;
  v21 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v21);
  v20 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CUEnvironmentValues();
  v6 = *(v22 - 8);
  v7 = __chkstk_darwin(v22);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  type metadata accessor for MainActor();
  v19 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static NXConstants.daemonBundleID.getter();
  static NXConstants.logSubsystem.getter();
  String.utf8CString.getter();

  String.utf8CString.getter();

  v12 = CUEnterSandbox();

  if (!v12)
  {
    exit(1);
  }

  v13 = SIG_IGN.getter();
  signal(13, v13);
  CUEnvironmentValues.init()();
  sub_1000011D8();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v18);
  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_100001224();
  sub_10000127C(&qword_100008010, ":");
  sub_1000012C4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  CUEnvironmentValues.dispatchQueue.setter();
  CUEnvironmentValues.dispatchQueue.getter();
  v14 = v22;
  (*(v6 + 16))(v9, v11, v22);
  type metadata accessor for NXDaemon();
  swift_allocObject();
  v15 = NXDaemon.init(dispatchQueue:environment:)();
  NXDaemon.activate()();
  (*(v6 + 8))(v11, v14);

  *v23 = v15;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  sub_100000D28(&v5);
  objc_autoreleasePoolPop(v3);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  dispatch_main();
}

unint64_t sub_1000011D8()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008000);
  }

  return result;
}

unint64_t sub_100001224()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    type metadata accessor for OS_dispatch_queue_serial.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}

uint64_t sub_10000127C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000012C4()
{
  result = qword_100008018;
  if (!qword_100008018)
  {
    sub_100001328(&qword_100008010, ":");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008018);
  }

  return result;
}

uint64_t sub_100001328(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}