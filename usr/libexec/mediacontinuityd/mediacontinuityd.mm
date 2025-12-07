uint64_t sub_100001278()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v3 = (&async function pointer to dispatch thunk of CoexServerXPCListener.activate() + async function pointer to dispatch thunk of CoexServerXPCListener.activate());
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10000133C;

  return v3();
}

uint64_t sub_10000133C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100001478, v1, v0);
}

uint64_t sub_100001478()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000014D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100001FAC(&qword_100008300, &qword_100002C18);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_100002214(a3, v24 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100002284(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_100002284(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100002284(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_100001798(uint64_t a1)
{
  swift_getObjectType();
  OS_dispatch_source.cancel()();
  exit(0);
}

uint64_t sub_1000017BC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100001800()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100002534();
  sub_100001FAC(&qword_100008380, &qword_100002C50);
  sub_10000258C();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1000018B4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000019AC;

  return v6(a1);
}

uint64_t sub_1000019AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100001AA4(uint64_t a1)
{
  v1 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = SIG_IGN.getter();
  signal(v1, v10);
  sub_100002494(0, &qword_100008308, OS_dispatch_source_ptr);
  sub_100002494(0, &qword_100008310, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  aBlock[4] = sub_100002514;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000017BC;
  aBlock[3] = &unk_100004338;
  v14 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  sub_100001800();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v14);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);

  OS_dispatch_source.resume()();
  return swift_unknownObjectRelease();
}

void sub_100001D4C()
{
  sub_100001FAC(&qword_100008300, &qword_100002C18);
  __chkstk_darwin();
  v1 = &v12 - v0;
  if (qword_100008260 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100001FF4(v2, qword_100008450);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting mediacontinuityd", v5, 2u);
  }

  v6 = [objc_allocWithZone(type metadata accessor for CoexServerXPCListener()) init];
  sub_100001AA4(15);
  sub_100001AA4(2);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = v6;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_1000014D8(0, 0, v1, &unk_100002C28, v10);

  v11 = [objc_opt_self() mainRunLoop];
  [v11 run];
}

uint64_t sub_100001FAC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001FF4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000202C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000206C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002120;

  return sub_100001278();
}

uint64_t sub_100002120()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002214(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FAC(&qword_100008300, &qword_100002C18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002284(uint64_t a1)
{
  v2 = sub_100001FAC(&qword_100008300, &qword_100002C18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000022EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002324(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000263C;

  return sub_1000018B4(a1, v4);
}

uint64_t sub_1000023DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002120;

  return sub_1000018B4(a1, v4);
}

uint64_t sub_100002494(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000024DC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000251C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100002534()
{
  result = qword_100008378;
  if (!qword_100008378)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008378);
  }

  return result;
}

unint64_t sub_10000258C()
{
  result = qword_100008388;
  if (!qword_100008388)
  {
    sub_1000025F0(&qword_100008380, &qword_100002C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008388);
  }

  return result;
}

uint64_t sub_1000025F0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002640()
{
  v0 = type metadata accessor for Logger();
  sub_1000026B4(v0, qword_100008450);
  sub_100001FF4(v0, qword_100008450);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_1000026B4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}