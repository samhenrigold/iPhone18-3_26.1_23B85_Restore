void sub_1000019EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, NSErrorUserInfoKey a10, NSErrorUserInfoKey a11, NSErrorUserInfoKey a12, uint64_t a13, uint64_t a14, const __CFString *a15)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(exception_object);
    v17 = v16;
    if (v15)
    {
      a13 = v16;
      a10 = NSUnderlyingErrorKey;
      a11 = NSDebugDescriptionErrorKey;
      v18 = [v16 userInfo];
      v19 = v18;
      v20 = &__NSDictionary0__struct;
      if (v18)
      {
        v20 = v18;
      }

      a14 = v20;
      a12 = NSLocalizedFailureReasonErrorKey;
      v21 = [v17 reason];
      v22 = v21;
      v23 = @"???";
      if (v21)
      {
        v23 = v21;
      }

      a15 = v23;
      v24 = [NSDictionary dictionaryWithObjects:&a13 forKeys:&a10 count:3];

      v25 = [v17 name];
      *v15 = [NSError errorWithDomain:v25 code:0 userInfo:v24];
    }

    objc_end_catch();
    JUMPOUT(0x1000019A8);
  }

  _Unwind_Resume(exception_object);
}

void sub_100001BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, NSErrorUserInfoKey a10, NSErrorUserInfoKey a11, NSErrorUserInfoKey a12, uint64_t a13, uint64_t a14, const __CFString *a15)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(exception_object);
    v17 = v16;
    if (v15)
    {
      a13 = v16;
      a10 = NSUnderlyingErrorKey;
      a11 = NSDebugDescriptionErrorKey;
      v18 = [v16 userInfo];
      v19 = v18;
      v20 = &__NSDictionary0__struct;
      if (v18)
      {
        v20 = v18;
      }

      a14 = v20;
      a12 = NSLocalizedFailureReasonErrorKey;
      v21 = [v17 reason];
      v22 = v21;
      v23 = @"???";
      if (v21)
      {
        v23 = v21;
      }

      a15 = v23;
      v24 = [NSDictionary dictionaryWithObjects:&a13 forKeys:&a10 count:3];

      v25 = [v17 name];
      *v15 = [NSError errorWithDomain:v25 code:0 userInfo:v24];
    }

    objc_end_catch();
    JUMPOUT(0x100001B6CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100001CE8()
{
  v0 = type metadata accessor for Logger();
  sub_1000074E8(v0, qword_100058158);
  sub_100006C6C(v0, qword_100058158);
  sub_100029948();

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100001D84()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_1000075EC(0, &qword_100056860, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_100007BE0(&qword_100056868, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100001FDC(&qword_100056870, &qword_100045590);
  sub_100007C28(&qword_100056878, &qword_100056870, &qword_100045590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_100001FDC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002024(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000020BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 128) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10000211C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 128);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1000021B0;
}

void sub_1000021B0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 128) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_100002270(int a1)
{
  result = swift_beginAccess();
  *(v1 + 136) = a1;
  return result;
}

uint64_t sub_100002340(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_100002414(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 152) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1000024E4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 160) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1000025B4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 168) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_100002664@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_100002710(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10000276C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000027E0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10000282C()
{
  v1 = OBJC_IVAR____TtC14splunkloggingd11FileMonitor_state;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100002870(char a1)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd11FileMonitor_state;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100002920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1000067FC(a1, a2, a3);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_100002984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1000067FC(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1000029B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000029DC, v2, 0);
}

uint64_t sub_1000029DC()
{
  v1 = *(v0 + 24);
  v2 = *(**(v0 + 32) + 176);
  v3 = swift_unknownObjectRetain();
  v2(v3, v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100002A90()
{
  v1 = (*(**(v0 + 16) + 312))();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100002B18()
{
  v1 = v0;
  v2 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  if (qword_100058150 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006C6C(v5, qword_100058158);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v8 = 136446210;
    v10 = URL.absoluteString.getter();
    v12 = sub_10000604C(v10, v11, &v33);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "state = .initial %{public}s", v8, 0xCu);
    sub_100006D94(v9);
  }

  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC14splunkloggingd11FileMonitor_url);
  v14 = v13;
  [v13 fileSystemRepresentation];
  v15 = v14;
  v16 = open(_:_:)();
  v17 = *(*v1 + 200);
  v18 = v17(v16);
  v19 = *(*v1 + 192);
  if ((v19(v18) & 0x80000000) != 0)
  {
    URL._bridgeToObjectiveC()(OBJC_IVAR____TtC14splunkloggingd11FileMonitor_folderURL);
    v26 = v25;
    [v25 fileSystemRepresentation];
    v27 = v26;
    v28 = open(_:_:)();
    v29 = v17(v28);
    if ((v19(v29) & 0x80000000) != 0)
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    (*(*v1 + 320))(v30);
    v31 = *(*v1 + 392);

    return v31();
  }

  else
  {
    (*(*v1 + 320))(1);
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
    v21 = sub_100007BE0(&qword_100056888, type metadata accessor for FileMonitor, &unk_100045668);
    v22 = swift_allocObject();
    v22[2] = v1;
    v22[3] = v21;
    v22[4] = v1;
    swift_retain_n();
    sub_10000326C(0, 0, v4, &unk_100045848, v22);

    return (*(*v1 + 392))(v23);
  }
}

uint64_t sub_100002F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100002FA8, a4, 0);
}

uint64_t sub_100002FA8()
{
  v1 = (*(**(v0 + 24) + 168))();
  *(v0 + 32) = v1;
  if (v1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v9 = (*(v3 + 16) + **(v3 + 16));
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *v5 = v0;
    v5[1] = sub_100003140;
    v6 = *(v0 + 24);

    return v9(v6, ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100003140()
{
  v1 = *(*v0 + 24);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100007EC4, v1, 0);
}

uint64_t sub_10000326C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000071DC(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007E2C(v11, &qword_100056880, &qword_100046FE0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100001FDC(&unk_100056AE0, &qword_100045830);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100007E2C(a3, &qword_100056880, &qword_100046FE0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007E2C(a3, &qword_100056880, &qword_100046FE0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100001FDC(&unk_100056AE0, &qword_100045830);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100003570()
{
  v1 = v0;
  v41 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for OS_dispatch_source.FileSystemEvent();
  v4 = *(v40 - 8);
  __chkstk_darwin(v40);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100058150 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006C6C(v7, qword_100058158);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock = v11;
    *v10 = 136446210;
    v12 = URL.absoluteString.getter();
    v14 = sub_10000604C(v12, v13, &aBlock);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "state = .monitorFile %{public}s", v10, 0xCu);
    sub_100006D94(v11);
  }

  sub_1000075EC(0, &unk_100056C50, OS_dispatch_source_ptr);
  v15 = *(*v0 + 192);
  v39[1] = v15();
  sub_100001FDC(&qword_100056AF0, &qword_100045850);
  v16 = swift_allocObject();
  *(v16 + 1) = xmmword_100045570;
  static OS_dispatch_source.FileSystemEvent.attrib.getter();
  static OS_dispatch_source.FileSystemEvent.extend.getter();
  static OS_dispatch_source.FileSystemEvent.write.getter();
  aBlock = v16;
  sub_100007BE0(&qword_100056AF8, &type metadata accessor for OS_dispatch_source.FileSystemEvent, &protocol conformance descriptor for OS_dispatch_source.FileSystemEvent);
  sub_100001FDC(&qword_100056B00, &qword_100045858);
  sub_100007C28(&qword_100056B08, &qword_100056B00, &qword_100045858);
  v17 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = static OS_dispatch_source.makeFileSystemObjectSource(fileDescriptor:eventMask:queue:)();
  v19 = *(v4 + 8);
  v19(v6, v17);
  v20 = (*(*v1 + 224))(v18);
  (v15)(v20);
  static OS_dispatch_source.FileSystemEvent.delete.getter();
  v21 = static OS_dispatch_source.makeFileSystemObjectSource(fileDescriptor:eventMask:queue:)();
  v19(v6, v17);
  v22 = (*(*v1 + 248))(v21);
  v23 = *(*v1 + 216);
  v24 = v23(v22);
  v25 = v41;
  if (v24)
  {
    swift_getObjectType();
    v51 = sub_100007634;
    v52 = v1;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_1000040C8;
    v50 = &unk_100051618;
    v26 = _Block_copy(&aBlock);

    v27 = v42;
    static DispatchQoS.unspecified.getter();
    v28 = v44;
    sub_10000410C();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v26);
    swift_unknownObjectRelease();
    (*(v46 + 8))(v28, v25);
    (*(v43 + 8))(v27, v45);
  }

  v29 = *(*v1 + 240);
  v30 = v29(v24);
  if (v30)
  {
    swift_getObjectType();
    v40 = v29;
    v51 = sub_100007654;
    v52 = v1;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_1000040C8;
    v50 = &unk_100051640;
    v31 = _Block_copy(&aBlock);

    v32 = v23;
    v33 = v25;
    v34 = v42;
    static DispatchQoS.unspecified.getter();
    v35 = v44;
    sub_10000410C();
    v29 = v40;
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v31);
    swift_unknownObjectRelease();
    v36 = v33;
    v23 = v32;
    (*(v46 + 8))(v35, v36);
    (*(v43 + 8))(v34, v45);
  }

  v37 = v23(v30);
  if (v37)
  {
    swift_getObjectType();
    OS_dispatch_source.resume()();
    v37 = swift_unknownObjectRelease();
  }

  result = v29(v37);
  if (result)
  {
    swift_getObjectType();
    OS_dispatch_source.resume()();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100003D0C(uint64_t a1)
{
  v2 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  if (qword_100058150 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006C6C(v5, qword_100058158);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "didObserveChange in File", v8, 2u);
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = sub_100007BE0(&qword_100056888, type metadata accessor for FileMonitor, &unk_100045668);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v10;
  v11[4] = a1;
  swift_retain_n();
  sub_10000326C(0, 0, v4, &unk_100045870, v11);
}

uint64_t sub_100003F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100003F30, a4, 0);
}

uint64_t sub_100003F30()
{
  v1 = (*(**(v0 + 24) + 168))();
  *(v0 + 32) = v1;
  if (v1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v9 = (*(v3 + 8) + **(v3 + 8));
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *v5 = v0;
    v5[1] = sub_100003140;
    v6 = *(v0 + 24);

    return v9(v6, ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1000040C8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000410C()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007BE0(&unk_100056B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001FDC(&unk_100057C20, &qword_100045860);
  sub_100007C28(&qword_100056B20, &unk_100057C20, &qword_100045860);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1000041E4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v2 - 8);
  __chkstk_darwin(v2);
  v57 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_source.FileSystemEvent();
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v0 + 192);
  if (((v9)(v6) & 0x80000000) == 0)
  {
    v10 = v9();
    close(v10);
  }

  (*(*v0 + 224))(0);
  URL._bridgeToObjectiveC()(&unk_10005B000);
  v12 = v11;
  [v11 fileSystemRepresentation];
  v13 = v12;
  v14 = open(_:_:)();
  (*(*v1 + 200))(v14);
  if (qword_100058150 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006C6C(v15, qword_100058158);
  swift_retain_n();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  v18 = os_log_type_enabled(v16, v17);
  v54 = v2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock = v20;
    *v19 = 136446466;
    v21 = URL.absoluteString.getter();
    v23 = sub_10000604C(v21, v22, &aBlock);

    *(v19 + 4) = v23;
    *(v19 + 12) = 1026;
    v25 = (v9)(v24);

    *(v19 + 14) = v25;

    _os_log_impl(&_mh_execute_header, v16, v17, "state = .monitorEnclosingFolder %{public}s = %{public}d", v19, 0x12u);
    sub_100006D94(v20);
  }

  else
  {
  }

  if (((v9)(v26) & 0x80000000) != 0)
  {
    (*(*v1 + 320))(3);
    v50 = *(*v1 + 392);

    return v50();
  }

  else
  {
    sub_1000075EC(0, &unk_100056C50, OS_dispatch_source_ptr);
    v51[3] = v9();
    sub_100001FDC(&qword_100056AF0, &qword_100045850);
    v27 = v52;
    v28 = swift_allocObject();
    *(v28 + 1) = xmmword_100045580;
    static OS_dispatch_source.FileSystemEvent.extend.getter();
    static OS_dispatch_source.FileSystemEvent.write.getter();
    static OS_dispatch_source.FileSystemEvent.attrib.getter();
    static OS_dispatch_source.FileSystemEvent.link.getter();
    aBlock = v28;
    sub_100007BE0(&qword_100056AF8, &type metadata accessor for OS_dispatch_source.FileSystemEvent, &protocol conformance descriptor for OS_dispatch_source.FileSystemEvent);
    sub_100001FDC(&qword_100056B00, &qword_100045858);
    sub_100007C28(&qword_100056B08, &qword_100056B00, &qword_100045858);
    v29 = v53;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v30 = static OS_dispatch_source.makeFileSystemObjectSource(fileDescriptor:eventMask:queue:)();
    v31 = *(v27 + 8);
    v31(v8, v29);
    v32 = (*(*v1 + 272))(v30);
    (v9)(v32);
    static OS_dispatch_source.FileSystemEvent.delete.getter();
    v33 = static OS_dispatch_source.makeFileSystemObjectSource(fileDescriptor:eventMask:queue:)();
    v31(v8, v29);
    v34 = (*(*v1 + 248))(v33);
    v35 = (*v1 + 264);
    v36 = *v35;
    v37 = (*v35)(v34);
    v38 = v54;
    if (v37)
    {
      swift_getObjectType();
      v64 = sub_1000078D8;
      v65 = v1;
      aBlock = _NSConcreteStackBlock;
      v61 = 1107296256;
      v62 = sub_1000040C8;
      v63 = &unk_100051690;
      v39 = _Block_copy(&aBlock);

      v40 = v55;
      static DispatchQoS.unspecified.getter();
      v41 = v57;
      sub_10000410C();
      OS_dispatch_source.setEventHandler(qos:flags:handler:)();
      _Block_release(v39);
      swift_unknownObjectRelease();
      (*(v59 + 8))(v41, v38);
      (*(v56 + 8))(v40, v58);
    }

    v42 = *(*v1 + 240);
    v43 = v42(v37);
    if (v43)
    {
      swift_getObjectType();
      v53 = v42;
      v64 = sub_1000078E0;
      v65 = v1;
      aBlock = _NSConcreteStackBlock;
      v61 = 1107296256;
      v62 = sub_1000040C8;
      v63 = &unk_1000516B8;
      v44 = _Block_copy(&aBlock);

      v45 = v38;
      v46 = v55;
      static DispatchQoS.unspecified.getter();
      v47 = v57;
      sub_10000410C();
      v42 = v53;
      OS_dispatch_source.setEventHandler(qos:flags:handler:)();
      _Block_release(v44);
      swift_unknownObjectRelease();
      (*(v59 + 8))(v47, v45);
      (*(v56 + 8))(v46, v58);
    }

    v48 = v36(v43);
    if (v48)
    {
      swift_getObjectType();
      OS_dispatch_source.resume()();
      v48 = swift_unknownObjectRelease();
    }

    result = v42(v48);
    if (result)
    {
      swift_getObjectType();
      OS_dispatch_source.resume()();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100004B3C(uint64_t a1)
{
  v2 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  if (qword_100058150 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006C6C(v5, qword_100058158);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "didObserveChange in enclosing Folder", v8, 2u);
  }

  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC14splunkloggingd11FileMonitor_url);
  v10 = v9;
  [v9 fileSystemRepresentation];
  v11 = v10;
  result = open(_:_:)();
  if ((result & 0x80000000) == 0)
  {
    v13 = result;
    v14 = (*(*a1 + 192))();
    close(v14);
    (*(*a1 + 200))(v13);
    (*(*a1 + 320))(1);
    (*(*a1 + 272))(0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "didObserveChange in File", v17, 2u);
    }

    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    v19 = sub_100007BE0(&qword_100056888, type metadata accessor for FileMonitor, &unk_100045668);
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = v19;
    v20[4] = a1;
    swift_retain_n();
    sub_10000326C(0, 0, v4, &unk_100045880, v20);

    return (*(*a1 + 392))(v21);
  }

  return result;
}

uint64_t sub_100004EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100004F1C, a4, 0);
}

uint64_t sub_100004F1C()
{
  v1 = (*(**(v0 + 24) + 168))();
  *(v0 + 32) = v1;
  if (v1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v9 = (*(v3 + 8) + **(v3 + 8));
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *v5 = v0;
    v5[1] = sub_1000050B4;
    v6 = *(v0 + 24);

    return v9(v6, ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1000050B4()
{
  v1 = *(*v0 + 24);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1000051E0, v1, 0);
}

uint64_t sub_100005208()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v2 - 8);
  v53 = v2;
  __chkstk_darwin(v2);
  v50 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchQoS();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v45 = (v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DispatchTime();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = __chkstk_darwin(v7);
  v41 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v42 = v40 - v10;
  v11 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100058150 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006C6C(v15, qword_100058158);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136446210;
    v20 = URL.absoluteString.getter();
    v22 = sub_10000604C(v20, v21, aBlock);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "state = .periodicallyCheckForEnclosingFolder %{public}s", v18, 0xCu);
    sub_100006D94(v19);
  }

  sub_1000075EC(0, &unk_100056C50, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100007BE0(&qword_100056B28, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_100001FDC(&qword_100056B30, &unk_100045BF0);
  sub_100007C28(&qword_100056B38, &qword_100056B30, &unk_100045BF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v12 + 8))(v14, v11);
  v24 = (*(*v1 + 296))(v23);
  v25 = (*v1 + 288);
  v26 = *v25;
  if ((*v25)(v24))
  {
    swift_getObjectType();
    v27 = v41;
    static DispatchTime.now()();
    v40[0] = v26;
    v28 = v42;
    + infix(_:_:)();
    v40[1] = v25;
    v29 = v44;
    v30 = *(v43 + 8);
    v30(v27, v44);
    v32 = v45;
    v31 = v46;
    *v45 = 0;
    v33 = v47;
    (*(v31 + 104))(v32, enum case for DispatchTimeInterval.nanoseconds(_:), v47);
    OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
    swift_unknownObjectRelease();
    (*(v31 + 8))(v32, v33);
    v34 = v28;
    v26 = v40[0];
    v30(v34, v29);
  }

  v35 = v26();
  if (v35)
  {
    swift_getObjectType();
    aBlock[4] = sub_100007C7C;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000040C8;
    aBlock[3] = &unk_100051708;
    v36 = _Block_copy(aBlock);

    v37 = v48;
    static DispatchQoS.unspecified.getter();
    v38 = v50;
    sub_10000410C();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v36);
    swift_unknownObjectRelease();
    (*(v52 + 8))(v38, v53);
    (*(v49 + 8))(v37, v51);
  }

  result = (v26)(v35);
  if (result)
  {
    swift_getObjectType();
    OS_dispatch_source.activate()();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100005958()
{
  v1 = (*(*v0 + 312))();
  if (v1 > 1)
  {
    if (v1 == 2)
    {

      return sub_1000041E4();
    }

    else
    {

      return sub_100005208();
    }
  }

  else if (v1)
  {

    return sub_100003570();
  }

  else
  {

    return sub_100002B18();
  }
}

uint64_t sub_100005A08()
{
  v1 = v0;
  v2 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = (*(*v0 + 216))(v3);
  if (v6)
  {
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    v6 = swift_unknownObjectRelease();
  }

  v7 = (*(*v0 + 240))(v6);
  if (v7)
  {
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    v7 = swift_unknownObjectRelease();
  }

  if ((*(*v0 + 264))(v7))
  {
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  if (qword_100058150 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006C6C(v8, qword_100058158);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446210;
    type metadata accessor for URL();
    sub_100007BE0(&qword_100056890, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = sub_10000604C(v13, v14, &v21);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Stopped Monitoring file: %{public}s", v11, 0xCu);
    sub_100006D94(v12);
  }

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = sub_100007BE0(&qword_100056888, type metadata accessor for FileMonitor, &unk_100045668);
  v18 = swift_allocObject();
  v18[2] = v1;
  v18[3] = v17;
  v18[4] = v1;
  swift_retain_n();
  sub_10000326C(0, 0, v5, &unk_1000455B8, v18);
}

uint64_t sub_100005D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100005DB4, a4, 0);
}

uint64_t sub_100005DB4()
{
  v1 = (*(**(v0 + 24) + 168))();
  *(v0 + 32) = v1;
  if (v1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v9 = (*(v3 + 24) + **(v3 + 24));
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *v5 = v0;
    v5[1] = sub_100003140;
    v6 = *(v0 + 24);

    return v9(v6, ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100005F4C()
{
  sub_100006DE0(v0 + 120);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC14splunkloggingd11FileMonitor_folderURL;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14splunkloggingd11FileMonitor_url, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100006014()
{
  sub_100005F4C();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_10000604C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006118(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000717C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006D94(v11);
  return v7;
}

unint64_t sub_100006118(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100006224(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_100006224(uint64_t a1, unint64_t a2)
{
  v3 = sub_100006270(a1, a2);
  sub_1000063A0(&off_1000513F8);
  return v3;
}

void *sub_100006270(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10000648C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000648C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000063A0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100006500(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000648C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100001FDC(&qword_100056E90, &unk_1000468B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100006500(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001FDC(&qword_100056E90, &unk_1000468B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1000065F4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1000066E8;

  return v5(v2 + 32);
}

uint64_t sub_1000066E8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000067FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v29 = a2;
  v26 = a1;
  v4 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  __chkstk_darwin(v4 - 8);
  v27 = v21 - v5;
  v6 = type metadata accessor for URL();
  v23 = *(v6 - 8);
  v24 = v6;
  __chkstk_darwin(v6);
  v25 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  swift_defaultActor_initialize();
  v13 = sub_1000075EC(0, &qword_100056860, OS_dispatch_queue_ptr);
  v21[1] = &unk_1000436E0;
  v21[2] = v13;
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100007BE0(&qword_100056868, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100001FDC(&qword_100056870, &qword_100045590);
  sub_100007C28(&qword_100056878, &qword_100056870, &qword_100045590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  *(v3 + 112) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v3 + 128) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 136) = -1;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + OBJC_IVAR____TtC14splunkloggingd11FileMonitor_state) = 0;
  v14 = v23;
  v15 = v24;
  v16 = *(v23 + 16);
  v17 = v26;
  v16(v3 + OBJC_IVAR____TtC14splunkloggingd11FileMonitor_url, v26, v24);
  swift_beginAccess();
  *(v3 + 128) = v28;
  swift_unknownObjectWeakAssign();
  v18 = v27;
  v16(v27, v17, v15);
  (*(v14 + 56))(v18, 0, 1, v15);
  v19 = v25;
  URL.init(fileURLWithPath:relativeTo:)();
  (*(v14 + 8))(v17, v15);
  sub_100007E2C(v18, &unk_100056B40, &unk_100045890);
  (*(v14 + 32))(v3 + OBJC_IVAR____TtC14splunkloggingd11FileMonitor_folderURL, v19, v15);
  return v3;
}

uint64_t sub_100006C6C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for FileMonitor(uint64_t a1)
{
  result = qword_100058370;
  if (!qword_100058370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006CF4(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007EAC;

  return sub_100005D94(a1, v5, v6, v4);
}

uint64_t sub_100006D94(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_100006E0C()
{
  result = qword_100056898;
  if (!qword_100056898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056898);
  }

  return result;
}

__n128 sub_100006E6C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100006E80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100006EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100006F30(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FileMonitor.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FileMonitor.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000717C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000071DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000724C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007284(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007EAC;

  return sub_1000065F4(a1, v4);
}

uint64_t sub_10000733C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000073F4;

  return sub_1000065F4(a1, v4);
}

uint64_t sub_1000073F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t *sub_1000074E8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000754C(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007EAC;

  return sub_100002F88(a1, v5, v6, v4);
}

uint64_t sub_1000075EC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000763C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007654()
{
  v1 = v0;
  if (qword_100058150 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006C6C(v2, qword_100058158);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "monitored file was deleted", v5, 2u);
  }

  if ((*(*v1 + 216))())
  {
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  (*(*v1 + 200))(0xFFFFFFFFLL);
  (*(*v1 + 320))(2);
  (*(*v1 + 248))(0);
  v6 = *(*v1 + 392);

  return v6();
}

uint64_t sub_100007838(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007EAC;

  return sub_100003F10(a1, v5, v6, v4);
}

uint64_t sub_1000078E0()
{
  v1 = v0;
  if (qword_100058150 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006C6C(v2, qword_100058158);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "monitored folder was deleted", v5, 2u);
  }

  v6 = (*(*v1 + 264))();
  if (v6)
  {
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    v6 = swift_unknownObjectRelease();
  }

  v7 = (*(*v1 + 192))(v6);
  close(v7);
  (*(*v1 + 200))(0xFFFFFFFFLL);
  (*(*v1 + 320))(3);
  (*(*v1 + 248))(0);
  v8 = *(*v1 + 392);

  return v8();
}

uint64_t sub_100007B00()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007B40(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000073F4;

  return sub_100004EFC(a1, v5, v6, v4);
}

uint64_t sub_100007BE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007C28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002024(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007C7C()
{
  v1 = v0;
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC14splunkloggingd11FileMonitor_folderURL);
  v3 = v2;
  [v2 fileSystemRepresentation];
  v4 = v3;
  v5 = open(_:_:)();
  v6 = (*(*v1 + 200))(v5);
  result = (*(*v1 + 192))(v6);
  if ((result & 0x80000000) == 0)
  {
    if ((*(*v1 + 288))())
    {
      swift_getObjectType();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
    }

    (*(*v1 + 296))(0);
    (*(*v1 + 320))(2);
    v8 = *(*v1 + 392);

    return v8();
  }

  return result;
}

uint64_t sub_100007E2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001FDC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007F28(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100007F7C(uint64_t a1, unint64_t a2)
{
  v2 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  if (((a2 >> 60) & 3) == 0)
  {
    v2 = a2;
  }

  if (((a2 >> 60) & 3) <= 1)
  {
    v3 = v2;
  }

  else
  {
    v3 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  }

  sub_100008014(a1, a2, sub_100007F28);
  v6 = sub_10002CA28(a1, v3);
  sub_100008014(a1, a2, sub_10000803C);
  return v6;
}

uint64_t sub_100008014(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  v3 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  if (((a2 >> 60) & 3) == 0)
  {
    v3 = a2;
  }

  if (((a2 >> 60) & 3) <= 1)
  {
    v4 = v3;
  }

  else
  {
    v4 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  }

  return a3(a1, v4);
}

uint64_t sub_10000803C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100008090(uint64_t a1, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  v3 = 0x676F6C5F736FLL;
  v4 = 0x725F6D617374656ALL;
  if (v2 != 2)
  {
    v4 = 0x65725F63696E6170;
  }

  if (v2)
  {
    v3 = 0x65725F6873617263;
  }

  if (((a2 >> 60) & 3) <= 1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100008118()
{
  v1 = (*(v0 + 8) >> 60) & 3;
  v2 = 0x676F6C5F736FLL;
  v3 = 0x725F6D617374656ALL;
  if (v1 != 2)
  {
    v3 = 0x65725F63696E6170;
  }

  if (v1)
  {
    v2 = 0x65725F6873617263;
  }

  if (((*(v0 + 8) >> 60) & 3u) <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000081A4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_1000081CC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000081D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000081F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100008254()
{
  v0 = type metadata accessor for Logger();
  sub_1000074E8(v0, qword_100058408);
  sub_100006C6C(v0, qword_100058408);
  sub_100029948();

  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000082E0(char **a1)
{
  v213 = a1;
  v207 = sub_100001FDC(&qword_100056C10, &qword_100045BB8);
  v209 = *(v207 - 8);
  v1 = __chkstk_darwin(v207);
  v206 = &v174 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v214 = &v174 - v4;
  v5 = __chkstk_darwin(v3);
  v205 = &v174 - v6;
  __chkstk_darwin(v5);
  v177 = &v174 - v7;
  v8 = sub_100001FDC(&qword_100056C18, &qword_100045BC0);
  __chkstk_darwin(v8 - 8);
  *&v188 = &v174 - v9;
  v10 = sub_100001FDC(&unk_100056C20, &unk_100045BC8);
  __chkstk_darwin(v10 - 8);
  v191 = &v174 - v11;
  v190 = type metadata accessor for URLResourceValues();
  v208 = *(v190 - 1);
  __chkstk_darwin(v190);
  v197 = (&v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  __chkstk_darwin(v13 - 8);
  v204 = &v174 - v14;
  v222 = type metadata accessor for URL();
  v184 = *(v222 - 8);
  v15 = __chkstk_darwin(v222);
  v17 = &v174 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v174 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v174 - v22;
  v24 = __chkstk_darwin(v21);
  v220 = &v174 - v25;
  v26 = __chkstk_darwin(v24);
  v203 = &v174 - v27;
  __chkstk_darwin(v26);
  v216 = &v174 - v28;
  v181 = type metadata accessor for NSFastEnumerationIterator();
  v180 = *(v181 - 8);
  __chkstk_darwin(v181);
  v219 = &v174 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Date();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v195 = &v174 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v36 = (&v174 - v35);
  v37 = __chkstk_darwin(v34);
  v39 = &v174 - v38;
  v40 = __chkstk_darwin(v37);
  v182 = &v174 - v41;
  v42 = __chkstk_darwin(v40);
  v178 = &v174 - v43;
  v44 = __chkstk_darwin(v42);
  v46 = &v174 - v45;
  __chkstk_darwin(v44);
  v48 = &v174 - v47;
  v210 = [objc_opt_self() defaultManager];
  sub_100001FDC(&qword_100056C30, &qword_100045BD8);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_100045B50;
  *(v49 + 32) = NSURLCreationDateKey;
  v50 = NSURLCreationDateKey;
  static Date.now.getter();
  v196 = v48;
  Date.addingTimeInterval(_:)();
  v183 = v31;
  v51 = *(v31 + 1);
  v221 = v30;
  v217 = v31 + 8;
  v215 = v51;
  (v51)(v46, v30);
  if (qword_100058400 != -1)
  {
LABEL_65:
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  v211 = sub_100006C6C(v52, qword_100058408);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "Requested to prune crashes", v55, 2u);
  }

  v56 = v213;
  v57 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v58 = v197;
  if (v57)
  {
    v179 = v57;
    NSEnumerator.makeIterator()();
    NSFastEnumerationIterator.next()();
    v194 = v17;
    v193 = v23;
    v218 = v39;
    v192 = v36;
    if (!v225)
    {
      v213 = 0;
      v60 = _swiftEmptyArrayStorage;
      goto LABEL_35;
    }

    v213 = 0;
    v212 = v184 + 56;
    v202 = (v184 + 32);
    v201 = v208 + 7;
    v187 = v208 + 4;
    v186 = (v183 + 48);
    v185 = v208 + 1;
    v199 = (v184 + 16);
    v200 = v184 + 8;
    v176 = (v183 + 32);
    v175 = (v183 + 16);
    v60 = _swiftEmptyArrayStorage;
    *&v59 = 136446210;
    v189 = v59;
    v61 = v191;
    v62 = v190;
    v63 = v204;
    v64 = v216;
    v198 = v49;
    while (2)
    {
      v208 = v60;
      while (1)
      {
        v65 = swift_dynamicCast();
        v66 = *v212;
        if (v65)
        {
          break;
        }

        v66(v63, 1, 1, v222);
        sub_100007E2C(v63, &unk_100056B40, &unk_100045890);
LABEL_9:
        NSFastEnumerationIterator.next()();
        if (!v225)
        {
          v60 = v208;
          goto LABEL_35;
        }
      }

      v67 = v222;
      v66(v63, 0, 1, v222);
      (*v202)(v64, v63, v67);

      sub_1000108D0(v68);

      v69 = v213;
      URL.resourceValues(forKeys:)();
      if (v69)
      {

        (*v201)(v61, 1, 1, v62);
        sub_100007E2C(v61, &unk_100056C20, &unk_100045BC8);
        v213 = 0;
LABEL_15:
        v64 = v216;
        v71 = v203;
        v72 = v222;
        (*v199)(v203, v216, v222);
        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = v71;
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v223 = v77;
          *v76 = v189;
          v78 = URL.path(percentEncoded:)(1);
          v79 = *v200;
          (*v200)(v75, v72);
          v80 = sub_10000604C(v78._countAndFlagsBits, v78._object, &v223);
          v58 = v197;

          *(v76 + 4) = v80;
          _os_log_impl(&_mh_execute_header, v73, v74, "Failed to fetch creation date for crash at path %{public}s", v76, 0xCu);
          sub_100006D94(v77);
          v61 = v191;

          v79(v216, v72);
          v64 = v216;
          v62 = v190;
        }

        else
        {

          v81 = *v200;
          (*v200)(v71, v72);
          v81(v64, v72);
        }

        v39 = v218;
        v63 = v204;
        v49 = v198;
        goto LABEL_9;
      }

      v213 = 0;

      (*v201)(v61, 0, 1, v62);
      (*v187)(v58, v61, v62);
      v70 = v188;
      URLResourceValues.creationDate.getter();
      if ((*v186)(v70, 1, v221) == 1)
      {
        (*v185)(v58, v62);
        sub_100007E2C(v70, &qword_100056C18, &qword_100045BC0);
        goto LABEL_15;
      }

      (*v176)(v178, v70, v221);
      v64 = v216;
      if (URL.pathExtension.getter() == 7565417 && v82 == 0xE300000000000000)
      {

        goto LABEL_23;
      }

      v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v83)
      {
LABEL_23:
        v84 = *(v207 + 48);
        v85 = v177;
        (*v175)(v177, v178, v221);
        (*v199)((v85 + v84), v64, v222);
        v86 = v208;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_10000DCF4(0, v86[2] + 1, 1, v86);
        }

        v208 = v86;
        v88 = v86[2];
        v87 = v86[3];
        if (v88 >= v87 >> 1)
        {
          v208 = sub_10000DCF4((v87 > 1), v88 + 1, 1, v208);
        }

        (v215)(v178, v221);
        (*v185)(v58, v62);
        (*v200)(v64, v222);
        v89 = v208;
        v208[2] = v88 + 1;
        sub_10001098C(v177, v89 + ((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v88);
      }

      else
      {
        (v215)(v178, v221);
        (*v185)(v58, v62);
        (*v200)(v64, v222);
      }

      NSFastEnumerationIterator.next()();
      v63 = v204;
      v60 = v208;
      if (v225)
      {
        continue;
      }

      break;
    }

LABEL_35:
    (*(v180 + 8))(v219, v181);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = sub_100010594(v60);
    }

    v23 = v184;
    v17 = v183;
    v97 = v182;
    v98 = v60[2];
    v204 = v60 + ((*(v209 + 80) + 32) & ~*(v209 + 80));
    v224[0] = v204;
    v224[1] = v98;
    sub_10000E2A0(v224);
    v99 = v60[2];
    if (v99 <= 0x64)
    {
      v99 = 100;
    }

    v100 = (v99 - 100);
    v101 = *(v17 + 2);
    v203 = v17 + 16;
    v202 = v101;
    (v101)(v97, v196, v221);
    v36 = v60;
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v219 = v100;
      v105 = v104;
      v106 = swift_slowAlloc();
      v224[0] = v106;
      *v105 = 136446978;
      sub_100011094(&qword_100056C38, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v107 = v221;
      v108 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v109;
      v110 = v107;
      v39 = v218;
      (v215)(v97, v110);
      v111 = sub_10000604C(v108, v49, v224);

      *(v105 + 4) = v111;
      *(v105 + 12) = 2048;
      *(v105 + 14) = 100;
      *(v105 + 22) = 2048;
      *(v105 + 24) = v36[2];
      *(v105 + 32) = 2048;
      v112 = v219;
      *(v105 + 34) = v219;
      _os_log_impl(&_mh_execute_header, v102, v103, "Pruning crashes created before %{public}s or more than max crashes (%ld). Found %ld; deleting at least %ld", v105, 0x2Au);
      sub_100006D94(v106);
      v23 = v184;

      v20 = v112;
    }

    else
    {

      (v215)(v97, v221);
      v20 = v100;
    }

    v201 = v36[2];
    if (v201)
    {
      v200 = *(v207 + 48);
      v199 = (v17 + 32);
      v198 = (v23 + 32);
      v213 = (v23 + 8);
      v197 = (v23 + 16);

      v113 = 0;
      *&v114 = 136446466;
      v189 = v114;
      *&v114 = 136446722;
      v188 = v114;
      v208 = v36;
      while (1)
      {
        if (v113 >= v36[2])
        {
          __break(1u);
          goto LABEL_65;
        }

        v120 = *(v209 + 72);
        v212 = v113;
        v121 = v205;
        sub_10001102C(&v204[v120 * v113], v205, &qword_100056C10, &qword_100045BB8);
        v122 = v207;
        v123 = *(v207 + 48);
        v124 = *v199;
        v125 = v39;
        v126 = v214;
        (*v199)(v214, v121, v221);
        v219 = v20;
        v127 = *v198;
        v17 = v222;
        (*v198)(v126 + v123, &v200[v121], v222);
        v128 = v206;
        sub_10001102C(v126, v206, &qword_100056C10, &qword_100045BB8);
        v129 = *(v122 + 48);
        v130 = v125;
        v131 = v221;
        v124(v130, v128, v221);
        v216 = *v213;
        (v216)(v128 + v129, v17);
        sub_10001102C(v126, v128, &qword_100056C10, &qword_100045BB8);
        v127(v220, (v128 + *(v122 + 48)), v17);
        v132 = v219;
        (v215)(v128, v131);
        if (!v132)
        {
          sub_100011094(&qword_100056C48, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
          {

            (v216)(v220, v222);
            v172 = v221;
            v173 = v215;
            (v215)(v218, v221);
            sub_100007E2C(v214, &qword_100056C10, &qword_100045BB8);
            v173(v196, v172);
          }
        }

        URL._bridgeToObjectiveC()(v133);
        v135 = v134;
        v224[0] = 0;
        v136 = [v210 removeItemAtURL:v134 error:v224];

        v137 = v224[0];
        if (v136)
        {
          v138 = v193;
          (*v197)(v193, v220, v222);
          v139 = v192;
          v39 = v218;
          (v202)(v192, v218, v221);
          v140 = v137;
          v141 = Logger.logObject.getter();
          v142 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v141, v142))
          {
            v143 = swift_slowAlloc();
            v144 = v138;
            v23 = swift_slowAlloc();
            v224[0] = v23;
            *v143 = v189;
            v145 = URL.path(percentEncoded:)(1);
            v17 = v213;
            (v216)(v144, v222);
            v146 = sub_10000604C(v145._countAndFlagsBits, v145._object, v224);

            *(v143 + 4) = v146;
            *(v143 + 12) = 2082;
            sub_100011094(&qword_100056C38, &type metadata accessor for Date, &protocol conformance descriptor for Date);
            v147 = v221;
            v148 = dispatch thunk of CustomStringConvertible.description.getter();
            v49 = v149;
            v150 = v215;
            (v215)(v139, v147);
            v151 = sub_10000604C(v148, v49, v224);

            *(v143 + 14) = v151;
            _os_log_impl(&_mh_execute_header, v141, v142, "Removed crash at path %{public}s of age %{public}s", v143, 0x16u);
            swift_arrayDestroy();

            (v216)(v220, v222);
            v150(v218, v147);
            v39 = v218;
          }

          else
          {

            v115 = v221;
            v116 = v215;
            (v215)(v139, v221);
            v117 = v138;
            v118 = v222;
            v23 = v213;
            v49 = v216;
            (v216)(v117, v222);
            (v49)(v220, v118);
            v116(v39, v115);
          }
        }

        else
        {
          v152 = v224[0];
          _convertNSErrorToError(_:)();
          v17 = v220;
          v153 = v221;
          v154 = v218;

          swift_willThrow();
          v155 = v194;
          (*v197)(v194, v17, v222);
          v156 = v195;
          (v202)(v195, v154, v153);
          swift_errorRetain();
          v157 = Logger.logObject.getter();
          v158 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v157, v158))
          {

            v168 = v215;
            (v215)(v156, v153);
            v169 = v155;
            v170 = v222;
            v23 = v213;
            v49 = v216;
            (v216)(v169, v222);
            (v49)(v17, v170);
            v168(v154, v153);
            sub_100007E2C(v214, &qword_100056C10, &qword_100045BB8);
            v39 = v154;
            goto LABEL_46;
          }

          v159 = swift_slowAlloc();
          v190 = swift_slowAlloc();
          v191 = swift_slowAlloc();
          v224[0] = v191;
          *v159 = v188;
          v160 = URL.path(percentEncoded:)(1);
          v161 = v155;
          v23 = v213;
          (v216)(v161, v222);
          v162 = sub_10000604C(v160._countAndFlagsBits, v160._object, v224);

          *(v159 + 4) = v162;
          *(v159 + 12) = 2082;
          sub_100011094(&qword_100056C38, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v163 = dispatch thunk of CustomStringConvertible.description.getter();
          v49 = v164;
          v17 = v215;
          (v215)(v156, v153);
          v165 = sub_10000604C(v163, v49, v224);

          *(v159 + 14) = v165;
          *(v159 + 22) = 2114;
          swift_errorRetain();
          v166 = _swift_stdlib_bridgeErrorToNSError();
          *(v159 + 24) = v166;
          v167 = v190;
          *v190 = v166;
          _os_log_impl(&_mh_execute_header, v157, v158, "Failed to delete crash at path %{public}s of age %{public}s with error: %{public}@", v159, 0x20u);
          sub_100007E2C(v167, &qword_100056C40, &unk_100045BE0);

          swift_arrayDestroy();

          (v216)(v220, v222);
          v39 = v218;
          (v17)(v218, v153);
        }

        sub_100007E2C(v214, &qword_100056C10, &qword_100045BB8);
LABEL_46:
        v36 = v208;
        v113 = (v212 + 1);
        v119 = v219;
        if (v219 <= 1)
        {
          v119 = 1;
        }

        v20 = (v119 - 1);
        if (v201 == v113)
        {

          break;
        }
      }
    }

    (v215)(v196, v221);
  }

  else
  {

    v90 = v184;
    (*(v184 + 2))(v20, v56, v222);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v224[0] = v94;
      *v93 = 136446210;
      v95 = URL.path(percentEncoded:)(1);
      v90[1](v20, v222);
      v96 = sub_10000604C(v95._countAndFlagsBits, v95._object, v224);

      *(v93 + 4) = v96;
      _os_log_impl(&_mh_execute_header, v91, v92, "Failed to create enumerator at crash dir: %{public}s", v93, 0xCu);
      sub_100006D94(v94);
    }

    else
    {

      v90[1](v20, v222);
    }

    return (v215)(v196, v221);
  }
}

uint64_t sub_100009FE0(double a1)
{
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = a1;
  return result;
}

uint64_t sub_10000A018(double a1)
{
  result = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = a1;
  return result;
}

void sub_10000A028()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v79 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTimeInterval();
  v76 = *(v4 - 8);
  v77 = v4;
  __chkstk_darwin(v4);
  v75 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for DispatchTime();
  v73 = *(v74 - 8);
  v6 = __chkstk_darwin(v74);
  v71 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v72 = &v64 - v8;
  v9 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v83 = *(v9 - 8);
  v84 = v9;
  __chkstk_darwin(v9);
  v82 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v80 = *(v11 - 8);
  v81 = v11;
  __chkstk_darwin(v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14);
  v78 = type metadata accessor for DispatchQoS();
  v70 = *(v78 - 8);
  __chkstk_darwin(v78);
  v85 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL.DirectoryHint();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  __chkstk_darwin(v20 - 8);
  v22 = &v64 - v21;
  v23 = type metadata accessor for URL();
  isa = v23[-1].isa;
  v88 = v23;
  v24 = __chkstk_darwin(v23);
  v69 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v25;
  __chkstk_darwin(v24);
  v86 = &v64 - v26;
  if ((sub_10002BEAC() & 1) == 0)
  {
    if (qword_100058400 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100006C6C(v58, qword_100058408);
    v88 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v88, v59))
    {
      goto LABEL_23;
    }

    v60 = swift_slowAlloc();
    *v60 = 0;
    v61 = "Not configured to own crash deletion, so not setting deletion timer";
    goto LABEL_22;
  }

  v67 = v2;
  v65 = v1;
  v66 = v0;
  sub_10002C098();
  if (v27)
  {
    (*(isa + 7))(v22, 1, 1, v88);
    (*(v17 + 104))(v19, enum case for URL.DirectoryHint.inferFromPath(_:), v16);
    URL.init(filePath:directoryHint:relativeTo:)();
    v64 = sub_1000075EC(0, &qword_100056860, OS_dispatch_queue_ptr);
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100011094(&qword_100056868, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_100001FDC(&qword_100056870, &qword_100045590);
    sub_100007C28(&qword_100056878, &qword_100056870, &qword_100045590);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v80 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v81);
    v28 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    sub_1000075EC(0, &unk_100056C50, OS_dispatch_source_ptr);
    aBlock = _swiftEmptyArrayStorage;
    sub_100011094(&qword_100056B28, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
    sub_100001FDC(&qword_100056B30, &unk_100045BF0);
    sub_100007C28(&qword_100056B38, &qword_100056B30, &unk_100045BF0);
    v29 = v82;
    v30 = v84;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v31 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
    (*(v83 + 8))(v29, v30);
    v32 = v66;
    *(v66 + 24) = v31;
    swift_unknownObjectRelease();
    if (qword_100058400 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006C6C(v33, qword_100058408);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      *(v36 + 4) = *(v32 + 16);
      _os_log_impl(&_mh_execute_header, v34, v35, "Scheduling crash deletion for every %f seconds", v36, 0xCu);
    }

    if (*(v32 + 24) && (swift_getObjectType(), swift_unknownObjectRetain(), v37 = v71, static DispatchTime.now()(), v84 = v28, v38 = v72, + infix(_:_:)(), v39 = *(v73 + 8), v40 = v74, v39(v37, v74), v41 = v75, *v75 = 0, v43 = v76, v42 = v77, (*(v76 + 104))(v41, enum case for DispatchTimeInterval.nanoseconds(_:), v77), OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(), swift_unknownObjectRelease(), (*(v43 + 8))(v41, v42), v44 = v38, v28 = v84, v39(v44, v40), *(v32 + 24)) && (swift_getObjectType(), v45 = isa, v46 = v69, v47 = v88, (*(isa + 2))(v69, v86, v88), v48 = (*(v45 + 80) + 16) & ~*(v45 + 80), v49 = swift_allocObject(), (*(v45 + 4))(v49 + v48, v46, v47), v93 = sub_100010A84, v94 = v49, aBlock = _NSConcreteStackBlock, v90 = 1107296256, v91 = sub_1000040C8, v92 = &unk_100051810, v50 = _Block_copy(&aBlock), swift_unknownObjectRetain(), v51 = v85, static DispatchQoS.unspecified.getter(), v52 = v79, sub_10000AEDC(), OS_dispatch_source.setEventHandler(qos:flags:handler:)(), _Block_release(v50), swift_unknownObjectRelease(), v53 = *(v67 + 8), v67 += 8, v53(v52, v65), v54 = *(v70 + 8), v54(v51, v78), , *(v32 + 24)) && (swift_getObjectType(), v93 = sub_10000ADF4, v94 = 0, aBlock = _NSConcreteStackBlock, v90 = 1107296256, v91 = sub_1000040C8, v92 = &unk_100051838, v55 = _Block_copy(&aBlock), swift_unknownObjectRetain(), v56 = v85, static DispatchQoS.unspecified.getter(), v57 = v79, sub_10000AEDC(), OS_dispatch_source.setCancelHandler(qos:flags:handler:)(), _Block_release(v55), swift_unknownObjectRelease(), v53(v57, v65), v54(v56, v78), *(v32 + 24)))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.activate()();

      swift_unknownObjectRelease();
    }

    else
    {
    }

    (*(isa + 1))(v86, v88);
    return;
  }

  if (qword_100058400 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_100006C6C(v62, qword_100058408);
  v88 = Logger.logObject.getter();
  v59 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v88, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    v61 = "Failed to get crash dir from OSAnalytics, not setting deletion timer";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v88, v59, v61, v60, 2u);
  }

LABEL_23:
  v63 = v88;
}

void sub_10000ADF4()
{
  if (qword_100058400 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006C6C(v0, qword_100058408);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Crash deletion timer source cancelled", v2, 2u);
  }
}

uint64_t sub_10000AEDC()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100011094(&unk_100056B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001FDC(&unk_100057C20, &qword_100045860);
  sub_100007C28(&qword_100056B20, &unk_100057C20, &qword_100045860);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10000AFD4()
{
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10000B05C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14splunkloggingd12CrashMonitor_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10000B0C8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14splunkloggingd12CrashMonitor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10000B168;
}

void sub_10000B168(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_10000B200(uint64_t a1, unint64_t a2)
{
  v4 = sub_100001FDC(&qword_100056C18, &qword_100045BC0);
  __chkstk_darwin(v4 - 8);
  v67 = &v62 - v5;
  v6 = type metadata accessor for Date();
  v68 = *(v6 - 8);
  __chkstk_darwin(v6);
  v66 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v72 = *(v8 - 8);
  v73 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v70 = a1;
  v71 = &v62 - v12;
  URL.init(fileURLWithPath:)();
  if (qword_100058400 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006C6C(v13, qword_100058408);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v69 = v6;
  if (v16)
  {
    v17 = a2;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v74 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_10000604C(v70, v17, &v74);
    _os_log_impl(&_mh_execute_header, v14, v15, "Formatting crash report at path: %{public}s", v18, 0xCu);
    sub_100006D94(v19);

    a2 = v17;
  }

  type metadata accessor for CrashReport();
  (*(v72 + 16))(v11, v71, v73);
  if (!IPSReport.__allocating_init(reportPath:)())
  {
    v23 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v23, v26, "Failed to initialize crash report", v27, 2u);
    }

    goto LABEL_11;
  }

  dispatch thunk of CrashReport.prepareReportForSubmission()();

  v20 = dispatch thunk of IPSReport.reportData.getter();
  v22 = v21;

  if (v22 >> 60 == 15)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v23, v24))
    {

      goto LABEL_15;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Failed to redact crash report", v25, 2u);

LABEL_11:

LABEL_15:
    (*(v72 + 8))(v71, v73);
    return 0;
  }

  v28 = sub_10002CD18(v20, v22);
  v65 = v22;
  if (v28)
  {
    v29 = v28;
    goto LABEL_32;
  }

  if (qword_100058400 != -1)
  {
    swift_once();
  }

  sub_100006C6C(v13, qword_100058408);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  v33 = os_log_type_enabled(v31, v32);
  v63 = a2;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v74 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_10000604C(v70, a2, &v74);
    _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode crash report. Sending failure breadcrumb for path %s", v34, 0xCu);
    sub_100006D94(v35);

    v22 = v65;
  }

  if ((sub_10002ECA4() & 1) == 0)
  {
    v39 = sub_100010724(v20, v22);
    if (!v40)
    {
      v78 = v20;
      v79 = v22;
      sub_100007F28(v20, v22);
      sub_100001FDC(&unk_1000578A0, &unk_100045C10);
      if (swift_dynamicCast())
      {
        sub_100010C50(v76, &v74);
        sub_100010C68(&v74, v75);
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_100010C68(&v74, v75);
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          v38 = *(&v76[0] + 1);
          v37 = *&v76[0];
          sub_100006D94(&v74);
          goto LABEL_31;
        }

        sub_100006D94(&v74);
      }

      else
      {
        v77 = 0;
        memset(v76, 0, sizeof(v76));
        sub_100007E2C(v76, &qword_100056C90, &qword_1000471D0);
      }

      v39 = sub_10000FDA4(v20, v22);
    }

    v37 = v39;
    v38 = v40;
    goto LABEL_31;
  }

  *&v74 = 0;
  *(&v74 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(48);

  *&v74 = 0xD00000000000002ELL;
  *(&v74 + 1) = 0x8000000100043920;
  v36._countAndFlagsBits = v70;
  v36._object = v63;
  String.append(_:)(v36);
  v38 = *(&v74 + 1);
  v37 = v74;
LABEL_31:
  sub_100001FDC(&unk_100056C70, &unk_100046890);
  inited = swift_initStackObject();
  *(inited + 32) = 0x7065526873617263;
  v42 = inited + 32;
  *(inited + 16) = xmmword_100045B50;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEB0000000074726FLL;
  *(inited + 48) = v37;
  *(inited + 56) = v38;
  v29 = sub_100010AFC(inited);
  swift_setDeallocating();
  sub_100007E2C(v42, &unk_100056C80, &unk_1000468A0);
  a2 = v63;
LABEL_32:
  v43 = sub_10002BE40();
  v64 = v20;
  v45 = a2;
  if (v44)
  {
    v75 = &type metadata for String;
    *&v74 = v43;
    *(&v74 + 1) = v44;
    sub_100010C40(&v74, v76);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v29;
    sub_100010234(v76, 0x6C6169726573, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v29 = v78;
  }

  sub_100001FDC(&unk_100056C70, &unk_100046890);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_100045B60;
  *(v47 + 32) = 0x746E657665;
  *(v47 + 40) = 0xE500000000000000;
  v48 = sub_100001FDC(&qword_1000578B0, &unk_100045C00);
  *(v47 + 48) = v29;
  *(v47 + 72) = v48;
  *(v47 + 80) = 0x656372756F73;
  *(v47 + 120) = &type metadata for String;
  v49 = v70;
  *(v47 + 88) = 0xE600000000000000;
  *(v47 + 96) = v49;
  *(v47 + 104) = v45;

  v50 = sub_100010AFC(v47);
  swift_setDeallocating();
  sub_100001FDC(&unk_100056C80, &unk_1000468A0);
  swift_arrayDestroy();
  v51 = v67;
  sub_10002D128(v49, v45, v67);
  v53 = v68;
  v52 = v69;
  if ((*(v68 + 48))(v51, 1, v69) == 1)
  {
    sub_100007E2C(v51, &qword_100056C18, &qword_100045BC0);
  }

  else
  {
    v54 = v66;
    (*(v53 + 32))(v66, v51, v52);
    Date.timeIntervalSince1970.getter();
    v75 = &type metadata for Double;
    *&v74 = v55;
    sub_100010C40(&v74, v76);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v50;
    sub_100010234(v76, 1701669236, 0xE400000000000000, v56);
    (*(v53 + 8))(v54, v52);
    v50 = v78;
  }

  v57 = v64;
  v58 = v65;
  v59 = sub_10002C584(v50);
  v61 = v60;
  sub_100010C2C(v57, v58);

  (*(v72 + 8))(v71, v73);
  if (v61 >> 60 == 15)
  {
    return 0;
  }

  return v59;
}

uint64_t sub_10000BC14(uint64_t a1, unint64_t a2)
{
  v4 = sub_100001FDC(&qword_100056C18, &qword_100045BC0);
  __chkstk_darwin(v4 - 8);
  v64 = &v58 - v5;
  v6 = type metadata accessor for Date();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100058400 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100006C6C(v12, qword_100058408);

  v67 = v13;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = v9;
    v18 = v8;
    v19 = swift_slowAlloc();
    *&v72 = v19;
    *v16 = 136446210;
    *(v16 + 4) = sub_10000604C(a1, a2, &v72);
    _os_log_impl(&_mh_execute_header, v14, v15, "Formatting jetsam report at path: %{public}s", v16, 0xCu);
    sub_100006D94(v19);
    v8 = v18;
    v9 = v17;
  }

  URL.init(fileURLWithPath:)();
  v20 = Data.init(contentsOf:options:)();
  v61 = v21;
  v62 = v20;
  v22 = sub_10002CD18(v20, v21);
  if (v22)
  {
    v23 = v22;
    v24 = sub_10002BE40();
    if (!v25)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v67 = v9;
    v44 = v8;
    v45 = v43;
    *&v72 = v43;
    *v42 = 136446210;
    *(v42 + 4) = sub_10000604C(a1, a2, &v72);
    _os_log_impl(&_mh_execute_header, v40, v41, "Failed to decode jetsam report. Sending raw data for path %{public}s", v42, 0xCu);
    sub_100006D94(v45);
    v8 = v44;
    v9 = v67;
  }

  sub_100001FDC(&unk_100056C70, &unk_100046890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100045B50;
  *(inited + 32) = 0x65526D617374656ALL;
  v59 = inited + 32;
  v60 = inited;
  *(inited + 40) = 0xEC00000074726F70;
  v48 = v61;
  v47 = v62;
  sub_100007F28(v62, v61);
  v49 = sub_100010724(v47, v48);
  if (v50)
  {
    v51 = v50;
    v52 = v48;
    v53 = v49;
    sub_10000803C(v47, v52);
    goto LABEL_24;
  }

  v70 = v47;
  v71 = v48;
  sub_100007F28(v47, v48);
  sub_100001FDC(&unk_1000578A0, &unk_100045C10);
  if (swift_dynamicCast())
  {
    v67 = v8;
    sub_100010C50(v68, &v72);
    sub_100010C68(&v72, v73);
    if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
    {
      sub_10000803C(v62, v61);
      sub_100010C68(&v72, v73);
      dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
      v51 = *(&v68[0] + 1);
      v53 = *&v68[0];
      sub_100006D94(&v72);
      v8 = v67;
      goto LABEL_24;
    }

    sub_100006D94(&v72);
    v8 = v67;
    v48 = v61;
    v47 = v62;
  }

  else
  {
    v69 = 0;
    memset(v68, 0, sizeof(v68));
    sub_100007E2C(v68, &qword_100056C90, &qword_1000471D0);
  }

  v54 = sub_10000FDA4(v47, v48);
  v51 = v55;
  v56 = v48;
  v53 = v54;
  sub_10000803C(v47, v56);
LABEL_24:
  v57 = v60;
  *(v60 + 72) = &type metadata for String;
  *(v57 + 48) = v53;
  *(v57 + 56) = v51;
  v23 = sub_100010AFC(v57);
  swift_setDeallocating();
  sub_100007E2C(v59, &unk_100056C80, &unk_1000468A0);
  v24 = sub_10002BE40();
  if (v25)
  {
LABEL_7:
    v73 = &type metadata for String;
    *&v72 = v24;
    *(&v72 + 1) = v25;
    sub_100010C40(&v72, v68);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v23;
    sub_100010234(v68, 0x6C6169726573, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v23 = v70;
  }

LABEL_8:
  sub_100001FDC(&unk_100056C70, &unk_100046890);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_100045B60;
  *(v27 + 32) = 0x746E657665;
  *(v27 + 40) = 0xE500000000000000;
  v28 = sub_100001FDC(&qword_1000578B0, &unk_100045C00);
  *(v27 + 48) = v23;
  *(v27 + 72) = v28;
  *(v27 + 80) = 0x656372756F73;
  *(v27 + 120) = &type metadata for String;
  *(v27 + 88) = 0xE600000000000000;
  *(v27 + 96) = a1;
  *(v27 + 104) = a2;

  v29 = sub_100010AFC(v27);
  swift_setDeallocating();
  sub_100001FDC(&unk_100056C80, &unk_1000468A0);
  swift_arrayDestroy();
  v30 = v64;
  sub_10002D128(a1, a2, v64);
  v32 = v65;
  v31 = v66;
  if ((*(v65 + 48))(v30, 1, v66) == 1)
  {
    sub_100007E2C(v30, &qword_100056C18, &qword_100045BC0);
  }

  else
  {
    v33 = v63;
    (*(v32 + 32))(v63, v30, v31);
    Date.timeIntervalSince1970.getter();
    v73 = &type metadata for Double;
    *&v72 = v34;
    sub_100010C40(&v72, v68);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v29;
    sub_100010234(v68, 1701669236, 0xE400000000000000, v35);
    (*(v32 + 8))(v33, v31);
    v29 = v70;
  }

  v36 = sub_10002C584(v29);
  v38 = v37;

  sub_10000803C(v62, v61);
  (*(v9 + 8))(v11, v8);
  if (v38 >> 60 == 15)
  {
    return 0;
  }

  else
  {
    return v36;
  }
}

uint64_t sub_10000C5C4()
{
  v1 = v0;
  sub_100001FDC(&unk_100056C98, &unk_100045C20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100045B50;
  *(v2 + 32) = 3747891;
  *(v2 + 40) = 0xE300000000000000;
  if (sub_10002BC78())
  {
    v2 = sub_10000DFE8(1, 2, 1, v2);
    *(v2 + 16) = 2;
    *(v2 + 48) = 3684658;
    *(v2 + 56) = 0xE300000000000000;
  }

  if (qword_100058400 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006C6C(v3, qword_100058408);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;

    v8 = Array.description.getter();
    v10 = v9;

    v11 = sub_10000604C(v8, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Registering for logs of types: %s", v6, 0xCu);
    sub_100006D94(v7);
  }

  sub_10002C314(v1, v2);

  (*(**(v1 + OBJC_IVAR____TtC14splunkloggingd12CrashMonitor_deleter) + 128))(v12);
}

id sub_10000C804(double a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC14splunkloggingd12CrashMonitor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for CrashDeleter();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = a1;
  *&v3[OBJC_IVAR____TtC14splunkloggingd12CrashMonitor_deleter] = v4;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, "init");
}

id sub_10000C890(double a1)
{
  *&v1[OBJC_IVAR____TtC14splunkloggingd12CrashMonitor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for CrashDeleter();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = a1;
  *&v1[OBJC_IVAR____TtC14splunkloggingd12CrashMonitor_deleter] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CrashMonitor();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_10000C90C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_10000C9A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CrashMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000CA24(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, NSObject *a8)
{
  v64 = a3;
  v65 = a1;
  v13 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  __chkstk_darwin(v13 - 8);
  v60 = &v60 - v14;
  if (qword_100058400 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006C6C(v15, qword_100058408);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v66 = a8;
  v62 = a2;
  v63 = a5;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v19 = 136446466;
    *(v19 + 4) = sub_10000604C(v65, a2, &v67);
    *(v19 + 12) = 2082;
    if (a6)
    {
      v20 = a6;
    }

    else
    {
      a5 = 7104878;
      v20 = 0xE300000000000000;
    }

    v21 = sub_10000604C(a5, v20, &v67);

    *(v19 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v16, v17, "Received OSAnalyticsObserver callback with bugType: %{public}s, path: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v24 = 136446467;
    *(v24 + 4) = sub_10000604C(v64, a4, &v67);
    *(v24 + 12) = 2081;
    v25 = Dictionary.description.getter();
    v27 = sub_10000604C(v25, v26, &v67);

    *(v24 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "Additional args: logID: %{public}s, logInfo: %{private}s", v24, 0x16u);
    swift_arrayDestroy();
  }

  if (v66)
  {
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v67 = v31;
      *v30 = 136380675;
      swift_getErrorValue();
      v32 = Error.localizedDescription.getter();
      v34 = sub_10000604C(v32, v33, &v67);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Received error in OSAnalyticsObserver handler: %{private}s", v30, 0xCu);
      sub_100006D94(v31);
    }

    else
    {
    }

    return;
  }

  if (!a6)
  {
    return;
  }

  v35 = v62;
  if (v65 == 3684658 && v62 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (sub_10002BC78())
    {
      v36 = (*((swift_isaMask & *v61) + 0x88))(v63, a6);
      if (v38)
      {
        return;
      }

      v39 = v36;
      v40 = v37;
      v41 = type metadata accessor for TaskPriority();
      v42 = v60;
      (*(*(v41 - 8) + 56))(v60, 1, 1, v41);
      v43 = swift_allocObject();
      v43[2] = 0;
      v43[3] = 0;
      v44 = v61;
      v43[4] = v61;
      v43[5] = v39;
      v43[6] = v40;
      v45 = v44;
      v46 = &unk_100045C48;
LABEL_35:
      sub_10000326C(0, 0, v42, v46, v43);

      return;
    }

    v66 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "Received bug type 298 (Jetsam) on customer build!";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v66, v47, v49, v48, 2u);
    }
  }

  else
  {
    v51 = v63;
    if (v65 == 3747891 && v35 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v52 = (*((swift_isaMask & *v61) + 0x80))(v51, a6);
      if (v54)
      {
        return;
      }

      v55 = v52;
      v56 = v53;
      v57 = type metadata accessor for TaskPriority();
      v42 = v60;
      (*(*(v57 - 8) + 56))(v60, 1, 1, v57);
      v43 = swift_allocObject();
      v43[2] = 0;
      v43[3] = 0;
      v58 = v61;
      v43[4] = v61;
      v43[5] = v55;
      v43[6] = v56;
      v59 = v58;
      v46 = &unk_100045C38;
      goto LABEL_35;
    }

    v66 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "Received unexpected bugType, not handling";
      goto LABEL_26;
    }
  }

  v50 = v66;
}

uint64_t sub_10000D1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_10000D20C, 0, 0);
}

uint64_t sub_10000D20C()
{
  v1 = (*((swift_isaMask & **(v0 + 24)) + 0x60))();
  *(v0 + 48) = v1;
  if (v1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v10 = (*(v3 + 8) + **(v3 + 8));
    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    *v5 = v0;
    v5[1] = sub_10000D3B4;
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);

    return v10(v7, v6, ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10000D3B4()
{

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100011100, 0, 0);
}

uint64_t sub_10000D4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_10000D4F0, 0, 0);
}

uint64_t sub_10000D4F0()
{
  v1 = (*((swift_isaMask & **(v0 + 24)) + 0x60))();
  *(v0 + 48) = v1;
  if (v1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v10 = (*(v3 + 16) + **(v3 + 16));
    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    *v5 = v0;
    v5[1] = sub_10000D698;
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);

    return v10(v7, v6, ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10000D698()
{

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10000D7B0, 0, 0);
}

uint64_t sub_10000D8FC(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000D974(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000D9F4@<X0>(void *a3@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = String._bridgeToObjectiveC()();

  *a3 = v4;
  return result;
}

uint64_t sub_10000DA38(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_10000DA74(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000DAC8(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10000DB3C(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_10000DBC4@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10000DC0C@<X0>(uint64_t *a2@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000DC38(uint64_t a1)
{
  v2 = sub_100011094(&qword_100056E78, type metadata accessor for URLResourceKey, &unk_100045DD8);
  v3 = sub_100011094(&unk_100056E80, type metadata accessor for URLResourceKey, &unk_100045D78);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void *sub_10000DCF4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001FDC(&qword_100056E98, &qword_100045EA0);
  v10 = *(sub_100001FDC(&qword_100056C10, &qword_100045BB8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100001FDC(&qword_100056C10, &qword_100045BB8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10000DEE4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001FDC(&qword_100056EA8, &unk_100045EB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10000DFE8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001FDC(&unk_100056C98, &unk_100045C20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10000E0F4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_10000F818(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

Swift::Int sub_10000E2A0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100001FDC(&qword_100056C10, &qword_100045BB8);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_100001FDC(&qword_100056C10, &qword_100045BB8) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10000E624(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10000E3E4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10000E3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_100001FDC(&qword_100056C10, &qword_100045BB8);
  v8 = __chkstk_darwin(v35);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - v11;
  result = __chkstk_darwin(v10);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_10001102C(v22, v16, &qword_100056C10, &qword_100045BB8);
      sub_10001102C(v19, v12, &qword_100056C10, &qword_100045BB8);
      v23 = static Date.< infix(_:_:)();
      sub_100007E2C(v12, &qword_100056C10, &qword_100045BB8);
      result = sub_100007E2C(v16, &qword_100056C10, &qword_100045BB8);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_10001098C(v22, v34);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10001098C(v24, v19);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10000E624(unint64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v5;
  v101 = a1;
  v114 = sub_100001FDC(&qword_100056C10, &qword_100045BB8);
  v9 = *(v114 - 8);
  v10 = __chkstk_darwin(v114);
  v104 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v113 = &v97 - v13;
  v14 = __chkstk_darwin(v12);
  v116 = &v97 - v15;
  result = __chkstk_darwin(v14);
  v115 = &v97 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    a4 = *v101;
    if (!*v101)
    {
      goto LABEL_134;
    }

    v4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_128:
      result = sub_10000F498(v4);
    }

    v117 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      v93 = v9;
      while (*a3)
      {
        v94 = *(result + 16 * v4);
        v95 = result;
        v9 = *(result + 16 * (v4 - 1) + 40);
        sub_10000EF08(*a3 + *(v93 + 72) * v94, *a3 + *(v93 + 72) * *(result + 16 * (v4 - 1) + 32), *a3 + *(v93 + 72) * v9, a4);
        if (v6)
        {
        }

        if (v9 < v94)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_10000F498(v95);
        }

        if (v4 - 2 >= *(v95 + 2))
        {
          goto LABEL_122;
        }

        v96 = &v95[16 * v4];
        *v96 = v94;
        *(v96 + 1) = v9;
        v117 = v95;
        sub_10000F40C(v4 - 1);
        result = v117;
        v4 = *(v117 + 16);
        if (v4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v100 = a4;
  v102 = a3;
  v98 = v9;
  while (1)
  {
    v21 = v19 + 1;
    v105 = v20;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v22 = v19;
      v23 = *a3;
      v111 = v23;
      v24 = *(v9 + 72);
      v25 = v23 + v24 * v21;
      v26 = v115;
      sub_10001102C(v25, v115, &qword_100056C10, &qword_100045BB8);
      v27 = v23 + v24 * v22;
      v28 = v116;
      sub_10001102C(v27, v116, &qword_100056C10, &qword_100045BB8);
      LODWORD(v110) = static Date.< infix(_:_:)();
      sub_100007E2C(v28, &qword_100056C10, &qword_100045BB8);
      result = sub_100007E2C(v26, &qword_100056C10, &qword_100045BB8);
      v99 = v22;
      v4 = v22 + 2;
      v112 = v24;
      v29 = v111 + v24 * (v22 + 2);
      while (v18 != v4)
      {
        v30 = v115;
        v111 = v6;
        sub_10001102C(v29, v115, &qword_100056C10, &qword_100045BB8);
        v31 = v116;
        sub_10001102C(v25, v116, &qword_100056C10, &qword_100045BB8);
        v32 = static Date.< infix(_:_:)() & 1;
        sub_100007E2C(v31, &qword_100056C10, &qword_100045BB8);
        v6 = v111;
        result = sub_100007E2C(v30, &qword_100056C10, &qword_100045BB8);
        ++v4;
        v29 += v112;
        v25 += v112;
        if ((v110 & 1) != v32)
        {
          v18 = v4 - 1;
          break;
        }
      }

      v19 = v99;
      a4 = v100;
      a3 = v102;
      v9 = v98;
      if (v110)
      {
        if (v18 < v99)
        {
          goto LABEL_125;
        }

        if (v99 < v18)
        {
          v110 = v18;
          v111 = v6;
          v4 = v112 * (v18 - 1);
          v33 = v18 * v112;
          v34 = v18;
          v35 = v99;
          v36 = v99 * v112;
          do
          {
            if (v35 != --v34)
            {
              v37 = *v102;
              if (!*v102)
              {
                goto LABEL_131;
              }

              sub_10001098C(v37 + v36, v104);
              if (v36 < v4 || v37 + v36 >= (v37 + v33))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10001098C(v104, v37 + v4);
            }

            ++v35;
            v4 -= v112;
            v33 -= v112;
            v36 += v112;
          }

          while (v35 < v34);
          v18 = v110;
          v6 = v111;
          a3 = v102;
          v9 = v98;
          v19 = v99;
          a4 = v100;
        }
      }
    }

    v38 = a3[1];
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v19))
      {
        goto LABEL_124;
      }

      if (v18 - v19 < a4)
      {
        if (__OFADD__(v19, a4))
        {
          goto LABEL_126;
        }

        if (v19 + a4 < v38)
        {
          v38 = v19 + a4;
        }

        if (v38 < v19)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v18 != v38)
        {
          break;
        }
      }
    }

LABEL_41:
    if (v18 < v19)
    {
      goto LABEL_123;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = v105;
    }

    else
    {
      result = sub_10000DEE4(0, *(v105 + 2) + 1, 1, v105);
      v20 = result;
    }

    v4 = *(v20 + 2);
    v49 = *(v20 + 3);
    a4 = v4 + 1;
    if (v4 >= v49 >> 1)
    {
      result = sub_10000DEE4((v49 > 1), v4 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = a4;
    v50 = &v20[16 * v4];
    *(v50 + 4) = v19;
    *(v50 + 5) = v18;
    v106 = v18;
    if (!*v101)
    {
      goto LABEL_133;
    }

    if (v4)
    {
      v51 = *v101;
      while (1)
      {
        v52 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v53 = *(v20 + 4);
          v54 = *(v20 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_62:
          if (v56)
          {
            goto LABEL_112;
          }

          v69 = &v20[16 * a4];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_115;
          }

          v75 = &v20[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_119;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = a4 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v79 = &v20[16 * a4];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_76:
        if (v74)
        {
          goto LABEL_114;
        }

        v82 = &v20[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_117;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_83:
        v4 = v52 - 1;
        if (v52 - 1 >= a4)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v90 = v20;
        a4 = *&v20[16 * v4 + 32];
        v91 = *&v20[16 * v52 + 40];
        sub_10000EF08(*a3 + *(v9 + 72) * a4, *a3 + *(v9 + 72) * *&v20[16 * v52 + 32], *a3 + *(v9 + 72) * v91, v51);
        if (v6)
        {
        }

        if (v91 < a4)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_10000F498(v90);
        }

        if (v4 >= *(v90 + 2))
        {
          goto LABEL_109;
        }

        v92 = &v90[16 * v4];
        *(v92 + 4) = a4;
        *(v92 + 5) = v91;
        v117 = v90;
        v4 = &v117;
        result = sub_10000F40C(v52);
        v20 = v117;
        a4 = *(v117 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v20[16 * a4 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_110;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_111;
      }

      v64 = &v20[16 * a4];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_113;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_116;
      }

      if (v68 >= v60)
      {
        v86 = &v20[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_120;
        }

        if (v55 < v89)
        {
          v52 = a4 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v106;
    a4 = v100;
    if (v106 >= v18)
    {
      goto LABEL_94;
    }
  }

  v106 = v38;
  v39 = *a3;
  v40 = *(v9 + 72);
  v41 = *a3 + v40 * (v18 - 1);
  v42 = -v40;
  v99 = v19;
  v43 = v19 - v18;
  v111 = v6;
  v112 = v39;
  v103 = v40;
  a4 = v39 + v18 * v40;
LABEL_33:
  v109 = v41;
  v110 = v18;
  v107 = a4;
  v108 = v43;
  v44 = v41;
  while (1)
  {
    v4 = v115;
    sub_10001102C(a4, v115, &qword_100056C10, &qword_100045BB8);
    v45 = v116;
    sub_10001102C(v44, v116, &qword_100056C10, &qword_100045BB8);
    v46 = static Date.< infix(_:_:)();
    sub_100007E2C(v45, &qword_100056C10, &qword_100045BB8);
    result = sub_100007E2C(v4, &qword_100056C10, &qword_100045BB8);
    if ((v46 & 1) == 0)
    {
LABEL_32:
      v18 = v110 + 1;
      v41 = v109 + v103;
      v43 = v108 - 1;
      a4 = v107 + v103;
      if (v110 + 1 != v106)
      {
        goto LABEL_33;
      }

      v6 = v111;
      a3 = v102;
      v9 = v98;
      v19 = v99;
      v18 = v106;
      goto LABEL_41;
    }

    if (!v112)
    {
      break;
    }

    v47 = v113;
    sub_10001098C(a4, v113);
    swift_arrayInitWithTakeFrontToBack();
    sub_10001098C(v47, v44);
    v44 += v42;
    a4 += v42;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10000EF08(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = sub_100001FDC(&qword_100056C10, &qword_100045BB8);
  v8 = __chkstk_darwin(v43);
  v45 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v44 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_58;
          }

          v29 = a3;
          v37 = v23;
          a3 += v24;
          v30 = v25 + v24;
          v31 = v44;
          sub_10001102C(v30, v44, &qword_100056C10, &qword_100045BB8);
          v32 = v27;
          v33 = v45;
          sub_10001102C(v32, v45, &qword_100056C10, &qword_100045BB8);
          v34 = static Date.< infix(_:_:)();
          sub_100007E2C(v33, &qword_100056C10, &qword_100045BB8);
          sub_100007E2C(v31, &qword_100056C10, &qword_100045BB8);
          if (v34)
          {
            break;
          }

          v23 = v30;
          if (v29 < v25 || a3 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v42;
            a1 = v39;
          }

          else
          {
            v27 = v42;
            a1 = v39;
            if (v29 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_57;
          }
        }

        if (v29 < v41 || a3 >= v41)
        {
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (v29 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_57:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a3;
    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = v13;
        v20 = v44;
        sub_10001102C(a2, v44, &qword_100056C10, &qword_100045BB8);
        v21 = v45;
        sub_10001102C(a4, v45, &qword_100056C10, &qword_100045BB8);
        v22 = static Date.< infix(_:_:)();
        sub_100007E2C(v21, &qword_100056C10, &qword_100045BB8);
        sub_100007E2C(v20, &qword_100056C10, &qword_100045BB8);
        v13 = v19;
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v19;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v19;
          a4 += v19;
        }

        a1 += v19;
        v48 = a1;
      }

      while (a4 < v42 && a2 < v41);
    }
  }

LABEL_58:
  sub_10000F4AC(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_10000F40C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10000F498(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10000F4AC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_100001FDC(&qword_100056C10, &qword_100045BB8);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10000F59C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001FDC(&qword_100056EA0, &qword_100045EA8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v18 = Hasher._finalize()();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10000F818(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_10000F59C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_10000FA00();
      goto LABEL_16;
    }

    sub_10000FB50(v7 + 1);
  }

  v9 = *v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for URLResourceKey();
    do
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_10000FA00()
{
  v1 = v0;
  sub_100001FDC(&qword_100056EA0, &qword_100045EA8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000FB50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001FDC(&qword_100056EA0, &qword_100045EA8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v18 = v17;
      String.hash(into:)();
      v19 = Hasher._finalize()();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10000FDA4(uint64_t a1, unint64_t a2)
{
  sub_100007F28(a1, a2);
  sub_1000105A8(a1, a2);
  v4 = static String._fromUTF8Repairing(_:)();

  return v4;
}

uint64_t sub_10000FE10@<X0>(uint64_t *a3@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a3 = result;
  a3[1] = v5;
  return result;
}

unint64_t sub_10000FE4C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000FEC4(a1, a2, v4);
}

unint64_t sub_10000FEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

Swift::Int sub_10000FF7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001FDC(&qword_100057750, &unk_100045E90);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100010C40(v24, v34);
      }

      else
      {
        sub_10000717C(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100010C40(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void sub_100010234(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000FE4C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000103F0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10000FF7C(v16, a4 & 1);
    v11 = sub_10000FE4C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100006D94(v22);

    sub_100010C40(a1, v22);
  }

  else
  {
    sub_100010384(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_100010384(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100010C40(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_1000103F0()
{
  v1 = v0;
  sub_100001FDC(&qword_100057750, &unk_100045E90);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000717C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100010C40(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

void *sub_1000105A8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_10000803C(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_10000648C(v10, 0);
      v14 = Data._copyContents(initializing:)();
      sub_10000803C(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_100010724(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

uint64_t sub_1000108D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey();
  sub_100011094(&qword_100056E78, type metadata accessor for URLResourceKey, &unk_100045DD8);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10000E0F4(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10001098C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FDC(&qword_100056C10, &qword_100045BB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000109FC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100010A84()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1000082E0(v2);
}

uint64_t sub_100010AE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100010AFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001FDC(&qword_100057750, &unk_100045E90);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001102C(v4, &v13, &unk_100056C80, &unk_1000468A0);
      v5 = v13;
      v6 = v14;
      result = sub_10000FE4C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100010C40(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100010C2C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000803C(result, a2);
  }

  return result;
}

_OWORD *sub_100010C40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100010C50(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100010C68(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100010CF8(uint64_t a1, unint64_t a2)
{
  v2 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  if (((a2 >> 60) & 3) == 0)
  {
    v2 = a2;
  }

  if (((a2 >> 60) & 3) <= 1)
  {
    v3 = v2;
  }

  else
  {
    v3 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_10000803C(a1, v3);
}

uint64_t sub_100010D1C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000073F4;

  return sub_10000D4CC(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_100010DD0()
{
  swift_unknownObjectRelease();

  sub_100010CF8(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100010E18(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100007EAC;

  return sub_10000D1E8(a1, v7, v8, v4, v5, v6);
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_100056E58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100056E58);
    }
  }
}

uint64_t sub_100010FF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001102C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001FDC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100011094(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011104()
{
  v0 = type metadata accessor for Logger();
  sub_1000074E8(v0, qword_100058728);
  sub_100006C6C(v0, qword_100058728);
  sub_100029948();

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100011190(char a1)
{
  if (!a1)
  {
    return 0x6465776F6C6C41;
  }

  if (a1 == 1)
  {
    return 0x6465696E6544;
  }

  return 0x6574696475416E55;
}

uint64_t sub_1000111E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6465696E6544;
  if (v2 != 1)
  {
    v4 = 0x6574696475416E55;
    v3 = 0xE900000000000064;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6465776F6C6C41;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6465696E6544;
  if (*a2 != 1)
  {
    v8 = 0x6574696475416E55;
    v7 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6465776F6C6C41;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000112EC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100011390(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100011420(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000114C0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100013870(*a1);
  *a2 = result;
  return result;
}

void sub_1000114F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6465696E6544;
  if (v2 != 1)
  {
    v5 = 0x6574696475416E55;
    v4 = 0xE900000000000064;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6465776F6C6C41;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100011618(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

unint64_t sub_100011668(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100051990, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000116C8(char a1)
{
  if (!a1)
  {
    return 0x6174537469647541;
  }

  if (a1 == 1)
  {
    return 0x746E656D75677241;
  }

  return 0xD000000000000013;
}

uint64_t sub_100011734(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x746E656D75677241;
  v4 = 0xED000073656D614ELL;
  v5 = 0x8000000100043980;
  if (v2 != 1)
  {
    v3 = 0xD000000000000013;
    v4 = 0x8000000100043980;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6174537469647541;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEA00000000006574;
  }

  v8 = 0x746E656D75677241;
  if (*a2 == 1)
  {
    v5 = 0xED000073656D614ELL;
  }

  else
  {
    v8 = 0xD000000000000013;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6174537469647541;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEA00000000006574;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100011848()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100011900(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000119A4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100011A58@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100011668(*a1);
  *a2 = result;
  return result;
}

void sub_100011A88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006574;
  v4 = 0xED000073656D614ELL;
  v5 = 0x746E656D75677241;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x8000000100043980;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6174537469647541;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100011AFC()
{
  v1 = 0x746E656D75677241;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6174537469647541;
  }
}

unint64_t sub_100011B6C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100011668(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100011B94(uint64_t a1)
{
  v2 = sub_1000155A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100011BD0(uint64_t a1)
{
  v2 = sub_1000155A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100011C30@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000138BC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_100011C68(void *a1)
{
  result = sub_100013AD8(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100011CBC(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_100011CF0(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

unint64_t sub_100011D40(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000519F8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100011D8C(char a1)
{
  if (!a1)
  {
    return 0x745374616D726F46;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0xD000000000000012;
}

uint64_t sub_100011DFC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000012;
  v3 = *a1;
  v4 = 0x80000001000439B0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001000439B0;
  }

  else
  {
    v6 = 0x80000001000439D0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x745374616D726F46;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xED000073676E6972;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v4 = 0x80000001000439D0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x745374616D726F46;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xED000073676E6972;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100011EE4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100011FA0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100012048(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100012100@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100011D40(*a1);
  *a2 = result;
  return result;
}

void sub_100012130(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000073676E6972;
  v4 = 0x80000001000439B0;
  v5 = 0xD000000000000018;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001000439D0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x745374616D726F46;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1000121A8()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x745374616D726F46;
  }
}

unint64_t sub_10001221C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100011D40(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100012250(uint64_t a1)
{
  v2 = sub_10001554C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001228C(uint64_t a1)
{
  v2 = sub_10001554C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000122C8(void *a1)
{
  result = sub_100013D84(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1000122F0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100013D84(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_100012320(void *a1)
{
  result = sub_10001405C(a1);
  if (v1)
  {
    return v3 & 1;
  }

  return result;
}

uint64_t sub_100012350@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10001405C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_100012388(void *a1)
{
  result = sub_100014308(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1000123D8@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_100012444(uint64_t a1, char a2)
{
  result = sub_100015648(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

BOOL sub_100012488(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100051A60, v2);

  return v3 != 0;
}

BOOL sub_1000124D0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100051A98, v2);

  return v3 != 0;
}

Swift::Int sub_100012538()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000125A4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000125F4@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100051AD0, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100012664@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100051B08, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000126C8(uint64_t a1)
{
  v2 = sub_1000154F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100012704(uint64_t a1)
{
  v2 = sub_1000154F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100012740(void *a1)
{
  result = sub_1000145EC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void *sub_10001276C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000145EC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_1000127A0()
{
  v1 = *(v0 + 16);
  sub_1000145E0(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_1000127D8(char *a1)
{
  v2 = swift_allocObject();
  sub_100012828(a1);
  return v2;
}

void *sub_100012828(char *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100058720 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006C6C(v9, qword_100058728);
  (*(v6 + 16))(v8, a1, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v29 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v28 = v4;
    v26 = v14;
    v30 = v14;
    *v13 = 136446210;
    v15 = URL.path(percentEncoded:)(0);
    v27 = a1;
    v16 = *(v6 + 8);
    v16(v8, v5);
    v17 = sub_10000604C(v15._countAndFlagsBits, v15._object, &v30);
    a1 = v27;

    *(v13 + 4) = v17;
    v18 = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Creating audit table at path: %{public}s", v13, 0xCu);
    sub_100006D94(v26);

    v2 = v29;
  }

  else
  {

    v18 = *(v6 + 8);
    v18(v8, v5);
  }

  v19 = v32;
  v20 = Data.init(contentsOf:options:)();
  if (v19)
  {
    v18(a1, v5);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v22 = v20;
    v23 = v21;
    v32 = v18;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100014764();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v32(a1, v5);

    sub_10000803C(v22, v23);
    v25 = v31;
    v2[2] = v30;
    *(v2 + 24) = v25;
  }

  return v2;
}

uint64_t sub_100012BD4(void *a1)
{
  v2 = *(v1 + 16);
  if ((*(v1 + 24) & 1) == 0)
  {
    if (v2)
    {
      goto LABEL_10;
    }

LABEL_12:
    LOBYTE(v12) = 0;
    return v12 & 1;
  }

  v3 = a1[3];
  v4 = a1[4];
  sub_100010C68(a1, v3);
  v6 = (*(v4 + 16))(v3, v4);
  if (!v7)
  {
    goto LABEL_12;
  }

  if (!*(v2 + 16))
  {
LABEL_11:

    goto LABEL_12;
  }

  v8 = sub_10000FE4C(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    goto LABEL_12;
  }

  v11 = *(v2 + 56) + 32 * v8;
  v12 = *v11;
  if ((*(v11 + 24) & 1) == 0)
  {
    return v12 & 1;
  }

  v14 = *(v11 + 8);
  v13 = *(v11 + 16);
  if (v13)
  {

    if ((sub_1000147B8(a1, v13) & 1) == 0)
    {
LABEL_8:

      goto LABEL_11;
    }
  }

  else
  {
  }

  v16 = a1[3];
  v17 = a1[4];
  sub_100010C68(a1, v16);
  v18 = (*(v17 + 24))(v16, v17);
  if (!v19)
  {
LABEL_20:

    goto LABEL_8;
  }

  if (!*(v12 + 16))
  {

    goto LABEL_22;
  }

  v20 = sub_10000FE4C(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_22:
    v23 = 0;
    goto LABEL_23;
  }

  if (*(*(v12 + 56) + 16 * v20))
  {
    if (*(*(v12 + 56) + 16 * v20) == 1)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  v23 = 1;
LABEL_23:
  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_8;
  }

  if (!v14)
  {

    goto LABEL_28;
  }

  v25 = sub_1000147B8(a1, v14);

  if (v25)
  {
LABEL_10:
    LOBYTE(v12) = 1;
    return v12 & 1;
  }

LABEL_28:
  if (v23)
  {

    goto LABEL_10;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v26 & 1;
}

uint64_t sub_100012EA0(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_100010C68(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  if (v6)
  {
    v7 = v6;
    v8 = v5;
    v9 = a1[3];
    v10 = a1[4];
    sub_100010C68(a1, v9);
    v11 = (*(v10 + 24))(v9, v10);
    if (v12)
    {
      v13 = v12;
      if ((*(v1 + 24) & 1) != 0 && (v14 = *(v1 + 16), *(v14 + 16)))
      {
        v15 = v11;
        v16 = sub_10000FE4C(v8, v7);
        v18 = v17;

        if (v18)
        {
          v19 = (*(v14 + 56) + 32 * v16);
          if (v19[24] == 1)
          {
            v20 = *v19;
            if (*(*v19 + 16))
            {

              v21 = sub_10000FE4C(v15, v13);
              v23 = v22;

              if (v23)
              {
                v24 = *(*(v20 + 56) + 16 * v21);

                return v24;
              }
            }
          }
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

uint64_t sub_100013020(void *a1)
{
  v1 = sub_100012EA0(a1);
  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v4 = v1 >> 8;
    v5 = BYTE1(v1);
    sub_100014AC0(v1, v2);
    if (v4 == 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = v5 ^ 1;
    }
  }

  return v3 & 1;
}

void *sub_100013074(void *a1)
{
  v2 = sub_100012EA0(a1);
  if (v3 < 2)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;
  v6 = *(v3 + 16);
  v7 = a1[3];
  v8 = a1[4];
  sub_100010C68(a1, v7);
  v9 = (*(v8 + 56))(v7, v8);
  v10 = v9;
  if (v9 >= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v9;
  }

  v12 = sub_100014AD4(_swiftEmptyArrayStorage);
  if (v10 < 0)
  {
    goto LABEL_31;
  }

  v13 = v12;
  v45 = v4;
  if (!v11)
  {
    v15 = v5;
LABEL_24:
    sub_100014AC0(v45, v15);
    return v13;
  }

  v14 = 0;
  v15 = v5;
  v16 = (v5 + 40);
  v17 = a1;
  v46 = a1;
  v47 = v5;
  while (v14 < *(v15 + 16))
  {
    v20 = *(v16 - 1);
    v19 = *v16;
    v49 = v16;
    v21 = v17[3];
    v22 = v17[4];
    sub_100010C68(v17, v21);
    v23 = *(v22 + 72);

    v24 = v23(v14, v21, v22);
    if (!v25)
    {
      sub_100014AC0(v45, v47);

      return 0;
    }

    v48 = v25;
    v26 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v20;
    v30 = sub_10000FE4C(v20, v19);
    v31 = v13[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_29;
    }

    v34 = v29;
    v35 = v19;
    if (v13[3] >= v33)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v38 = v48;
        if (v29)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1000136F8();
        v38 = v48;
        if (v34)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_100013438(v33, isUniquelyReferenced_nonNull_native);
      v36 = sub_10000FE4C(v28, v19);
      if ((v34 & 1) != (v37 & 1))
      {
        goto LABEL_32;
      }

      v30 = v36;
      v38 = v48;
      if (v34)
      {
LABEL_8:

        v18 = (v13[7] + 16 * v30);
        *v18 = v26;
        v18[1] = v38;

        goto LABEL_9;
      }
    }

    v13[(v30 >> 6) + 8] |= 1 << v30;
    v39 = (v13[6] + 16 * v30);
    *v39 = v28;
    v39[1] = v35;
    v40 = (v13[7] + 16 * v30);
    *v40 = v26;
    v40[1] = v38;
    v41 = v13[2];
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (v42)
    {
      goto LABEL_30;
    }

    v13[2] = v43;
LABEL_9:
    ++v14;
    v16 = v49 + 2;
    v17 = v46;
    v15 = v47;
    if (v11 == v14)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100013350()
{
  sub_100015648(*(v0 + 16), *(v0 + 24));

  return _swift_deallocClassInstance(v0, 25, 7);
}

uint64_t sub_10001338C(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

Swift::Int sub_100013438(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001FDC(&unk_100057740, &unk_100046680);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1000136F8()
{
  v1 = v0;
  sub_100001FDC(&unk_100057740, &unk_100046680);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

unint64_t sub_100013870(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100051928, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000138BC(void *a1)
{
  v3 = sub_100001FDC(&qword_100057040, &unk_1000466C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-v5];
  sub_100010C68(a1, a1[3]);
  sub_1000155A0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100006D94(a1);
  }

  else
  {
    v11 = 0;
    sub_100015950();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v12;
    sub_100001FDC(&qword_100057030, &unk_1000469E0);
    v10[15] = 1;
    sub_1000158D4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10[14] = 2;
    v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    sub_100006D94(a1);
    return v7 | (v8 << 8);
  }
}

uint64_t sub_100013AD8(void *a1)
{
  v3 = type metadata accessor for DecodingError.Context();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100010C68(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    goto LABEL_5;
  }

  sub_100010C68(v12, v13);
  if ((dispatch thunk of SingleValueDecodingContainer.decode(_:)() & 1) == 0)
  {
    sub_100010C68(v12, v13);
    dispatch thunk of SingleValueDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v9 = v8;
    (*(v4 + 16))(v8, v6, v3);
    (*(*(v7 - 8) + 104))(v9, enum case for DecodingError.dataCorrupted(_:), v7);
    swift_willThrow();
    (*(v4 + 8))(v6, v3);
    sub_100006D94(v12);
LABEL_5:
    sub_100006D94(a1);
    return v7;
  }

  v7 = 1;
  sub_100006D94(v12);
  sub_100006D94(a1);
  return v7;
}

uint64_t sub_100013D84(void *a1)
{
  v2 = sub_100001FDC(&qword_100056FF8, &qword_1000466A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_100010C68(a1, a1[3]);
  sub_10001554C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_100001FDC(&qword_100057000, &qword_1000466A8);
  v9 = 0;
  sub_1000157FC(&qword_100057008, &qword_100057000, &qword_1000466A8, sub_1000157A8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v10;
  sub_100001FDC(&qword_100057018, &unk_1000466B0);
  v9 = 1;
  sub_1000157FC(&qword_100057020, &qword_100057018, &unk_1000466B0, sub_100015880);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v9 = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100006D94(a1);
  return v7;
}

uint64_t sub_10001405C(void *a1)
{
  v3 = type metadata accessor for DecodingError.Context();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  sub_100010C68(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    goto LABEL_5;
  }

  sub_100010C68(v12, v13);
  if ((dispatch thunk of SingleValueDecodingContainer.decode(_:)() & 1) == 0)
  {
    sub_100010C68(v12, v13);
    dispatch thunk of SingleValueDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v9 = v8;
    (*(v4 + 16))(v8, v6, v3);
    (*(*(v7 - 8) + 104))(v9, enum case for DecodingError.dataCorrupted(_:), v7);
    swift_willThrow();
    (*(v4 + 8))(v6, v3);
    sub_100006D94(v12);
LABEL_5:
    sub_100006D94(a1);
    return v3;
  }

  v3 = 1;
  sub_100006D94(v12);
  sub_100006D94(a1);
  return v3;
}

uint64_t sub_100014308(void *a1)
{
  v3 = type metadata accessor for DecodingError.Context();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100010C68(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    goto LABEL_5;
  }

  sub_100010C68(v12, v13);
  if ((dispatch thunk of SingleValueDecodingContainer.decode(_:)() & 1) == 0)
  {
    sub_100010C68(v12, v13);
    dispatch thunk of SingleValueDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v9 = v8;
    (*(v4 + 16))(v8, v6, v3);
    (*(*(v7 - 8) + 104))(v9, enum case for DecodingError.dataCorrupted(_:), v7);
    swift_willThrow();
    (*(v4 + 8))(v6, v3);
    sub_100006D94(v12);
LABEL_5:
    sub_100006D94(a1);
    return v7;
  }

  v7 = 1;
  sub_100006D94(v12);
  sub_100006D94(a1);
  return v7;
}

double sub_1000145E0(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

void *sub_1000145EC(void *a1)
{
  v3 = sub_100001FDC(&qword_100056FC8, &qword_100046690);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_100010C68(a1, a1[3]);
  sub_1000154F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100006D94(a1);
  }

  else
  {
    sub_1000156AC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_100006D94(a1);
  }

  return v7;
}

unint64_t sub_100014764()
{
  result = qword_100056EB0;
  if (!qword_100056EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056EB0);
  }

  return result;
}

uint64_t sub_1000147B8(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_100010C68(a1, v4);
  v6 = (*(v5 + 40))(v4, v5);
  if (!v7)
  {
    goto LABEL_18;
  }

  v38 = v6;
  v39 = v7;
  v40 = 42;
  v41 = 0xE100000000000000;
  if (!*(a2 + 16))
  {
    goto LABEL_17;
  }

  v8 = v6;
  v9 = v7;

  v10 = sub_10000FE4C(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_7;
  }

  v13 = *(a2 + 56) + 16 * v10;
  v14 = *v13;
  if ((*(v13 + 8) & 1) == 0)
  {
    goto LABEL_13;
  }

  v15 = a1[3];
  v16 = a1[4];
  sub_100010C68(a1, v15);
  v17 = *(v16 + 48);

  v18 = v17(v15, v16);
  if (!v19)
  {
    sub_100015648(v14, 1);
    if (!*(a2 + 16))
    {
      goto LABEL_17;
    }

LABEL_8:
    v21 = v40;
    v22 = v41;

    v23 = sub_10000FE4C(v21, v22);
    v25 = v24;

    if (v25)
    {
      v26 = *(a2 + 56) + 16 * v23;
      v14 = *v26;
      if (*(v26 + 8) == 1)
      {
        v27 = a1[3];
        v28 = a1[4];
        sub_100010C68(a1, v27);
        v29 = *(v28 + 48);

        v30 = v29(v27, v28);
        if (v31)
        {
          v36 = v30;
          v37 = v31;
          __chkstk_darwin(v30);
          v35 = &v36;
          v32 = sub_10001338C(sub_100015654, v34, v14);
          sub_100015648(v14, 1);

          if (v32)
          {
            goto LABEL_12;
          }
        }

        else
        {
          sub_100015648(v14, 1);
        }

        goto LABEL_17;
      }

LABEL_13:
      swift_arrayDestroy();
      return v14 & 1;
    }

LABEL_17:
    swift_arrayDestroy();
LABEL_18:
    LOBYTE(v14) = 0;
    return v14 & 1;
  }

  v36 = v18;
  v37 = v19;
  __chkstk_darwin(v18);
  v35 = &v36;
  v20 = sub_10001338C(sub_100015654, v34, v14);
  sub_100015648(v14, 1);

  if ((v20 & 1) == 0)
  {
LABEL_7:
    if (!*(a2 + 16))
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

LABEL_12:
  swift_arrayDestroy();
  LOBYTE(v14) = 1;
  return v14 & 1;
}

uint64_t sub_100014AC0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_100014AD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001FDC(&unk_100057740, &unk_100046680);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000FE4C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100014BEC()
{
  result = qword_100056EB8;
  if (!qword_100056EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056EB8);
  }

  return result;
}

unint64_t sub_100014C44()
{
  result = qword_100056EC0;
  if (!qword_100056EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056EC0);
  }

  return result;
}

unint64_t sub_100014C9C()
{
  result = qword_100056EC8;
  if (!qword_100056EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056EC8);
  }

  return result;
}

unint64_t sub_100014CF4()
{
  result = qword_100056ED0;
  if (!qword_100056ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056ED0);
  }

  return result;
}

unint64_t sub_100014D4C()
{
  result = qword_100056ED8;
  if (!qword_100056ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056ED8);
  }

  return result;
}

unint64_t sub_100014DA4()
{
  result = qword_100056EE0;
  if (!qword_100056EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056EE0);
  }

  return result;
}

unint64_t sub_100014DFC()
{
  result = qword_100056EE8;
  if (!qword_100056EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056EE8);
  }

  return result;
}

unint64_t sub_100014E54()
{
  result = qword_100056EF0;
  if (!qword_100056EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056EF0);
  }

  return result;
}

unint64_t sub_100014EAC()
{
  result = qword_100056EF8;
  if (!qword_100056EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056EF8);
  }

  return result;
}

unint64_t sub_100014F04()
{
  result = qword_100056F00;
  if (!qword_100056F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056F00);
  }

  return result;
}

uint64_t sub_100014F70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100014FCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100015048(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

__n128 sub_100015078(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001508C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000150D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s14splunkloggingd10AuditStateOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14splunkloggingd10AuditStateOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100015280(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100015294(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000152DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_100015354(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000153A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _AuditTable.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for _AuditTable.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000154F8()
{
  result = qword_100056FA8;
  if (!qword_100056FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056FA8);
  }

  return result;
}

unint64_t sub_10001554C()
{
  result = qword_100056FB0;
  if (!qword_100056FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056FB0);
  }

  return result;
}

unint64_t sub_1000155A0()
{
  result = qword_100056FB8;
  if (!qword_100056FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056FB8);
  }

  return result;
}

unint64_t sub_1000155F4()
{
  result = qword_100056FC0;
  if (!qword_100056FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056FC0);
  }

  return result;
}

uint64_t sub_100015648(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_100015654(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_1000156AC()
{
  result = qword_100056FD0;
  if (!qword_100056FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056FD0);
  }

  return result;
}

unint64_t sub_100015700()
{
  result = qword_100056FE8;
  if (!qword_100056FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056FE8);
  }

  return result;
}

unint64_t sub_100015754()
{
  result = qword_100056FF0;
  if (!qword_100056FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056FF0);
  }

  return result;
}

unint64_t sub_1000157A8()
{
  result = qword_100057010;
  if (!qword_100057010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057010);
  }

  return result;
}

uint64_t sub_1000157FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100002024(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100015880()
{
  result = qword_100057028;
  if (!qword_100057028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057028);
  }

  return result;
}

unint64_t sub_1000158D4()
{
  result = qword_100057038;
  if (!qword_100057038)
  {
    sub_100002024(&qword_100057030, &unk_1000469E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057038);
  }

  return result;
}

unint64_t sub_100015950()
{
  result = qword_100057048;
  if (!qword_100057048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057048);
  }

  return result;
}

double sub_1000159D0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_100015A08(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_100015AD4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_100015B64(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  sub_100015BC4(a1, a2, a3);
  return v6;
}

uint64_t sub_100015BC4(uint64_t result, uint64_t a2, double a3)
{
  *(v3 + 24) = 0;
  if ((result & 0x8000000000000000) == 0)
  {
    v6 = result;
    if (result)
    {
      sub_100001FDC(&qword_100057050, &qword_1000466D0);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
      bzero((v7 + 32), 8 * v6);
    }

    else
    {
      v6 = _swiftEmptyArrayStorage[2];
      if (!v6)
      {
LABEL_7:

        *(v3 + 16) = _swiftEmptyArrayStorage;
        return v3;
      }
    }

    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for SplunkEventBuffer();
    do
    {
      sub_1000306D0(a2, a3);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v6;
    }

    while (v6);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100015D00(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = *(*v2 + 96);
    v4 = swift_unknownObjectRetain();
    v5 = v3(v4);
    v6 = v5;
    if (v5 >> 62)
    {
      goto LABEL_15;
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      while (1)
      {
        v8 = 0;
        while ((v6 & 0xC000000000000001) != 0)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = result;
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_12:
            __break(1u);
            return result;
          }

LABEL_8:
          v11 = *(*v9 + 176);
          v12 = swift_unknownObjectRetain();
          v11(v12, a2);

          ++v8;
          if (v10 == v7)
          {
            goto LABEL_16;
          }
        }

        if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_15:
        v7 = _CocoaArrayWrapper.endIndex.getter();
        if (!v7)
        {
          goto LABEL_16;
        }
      }

      v9 = *(v6 + 8 * v8 + 32);

      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

LABEL_16:
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100015EA0()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100015ED8(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = *(*v2 + 120);
  v5 = *(*v2 + 96);
  v6 = v4();
  result = v5();
  if ((result & 0xC000000000000001) != 0)
  {
    goto LABEL_27;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v6 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_29:
    __break(1u);
    return result;
  }

  while (1)
  {

    if (sub_10003136C(a1, a2))
    {
      break;
    }

    v8 = *(*v3 + 128);
    while (1)
    {
      v9 = v4();
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v11 = v5();
      if (v11 >> 62)
      {
        v12 = _CocoaArrayWrapper.endIndex.getter();

        if (!v12)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v12)
        {
          goto LABEL_23;
        }
      }

      if (v10 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_26;
      }

      v8(v10 % v12);

      v14 = (v4)(v13);
      v15 = v5();
      if ((v15 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (v14 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }
      }

      if (sub_10003136C(a1, a2))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

LABEL_6:

  return 1;
}