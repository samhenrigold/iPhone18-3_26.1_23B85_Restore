uint64_t sub_1001C84F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BenefactorInfoRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C855C(uint64_t a1)
{
  v2 = type metadata accessor for BenefactorInfoRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001C85B8()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1001C8604(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001C861C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BenefactorInfoRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C8680()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001C86B8()
{
  v1 = (type metadata accessor for BenefactorInfoRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (v4 + v2 + v3) & ~v2;

  v6 = v0 + v3;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);

  v8(v6 + v1[9], v7);
  sub_100012324(*(v6 + v1[10]), *(v6 + v1[10] + 8));
  v8(v0 + v5, v7);

  v8(v0 + v5 + v1[9], v7);
  sub_100012324(*(v0 + v5 + v1[10]), *(v0 + v5 + v1[10] + 8));

  return _swift_deallocObject(v0, v5 + v4);
}

void sub_1001C8844(uint64_t a1)
{
  v3 = *(type metadata accessor for BenefactorInfoRecord(0) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  sub_1001C71DC(a1, v6, v1 + v5, v7);
}

uint64_t sub_1001C88E4()
{
  v1 = (type metadata accessor for BenefactorInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);

  v5(v0 + v2 + v1[9], v4);
  sub_100012324(*(v0 + v2 + v1[10]), *(v0 + v2 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

void sub_1001C8A14(uint64_t a1)
{
  v3 = *(type metadata accessor for BenefactorInfoRecord(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1001C7BAC(a1, v4, v5);
}

uint64_t sub_1001C8A88()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1001C8AD0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 136) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  sub_10000839C(v0 + 12);
  (*(v2 + 8))(&v0[v3], v1);

  if (*&v0[(v4 + 15) & 0xFFFFFFFFFFFFFFF8])
  {
  }

  return _swift_deallocObject(v0, ((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1001C8C4C()
{
  v1 = (type metadata accessor for BenefactorInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);

  v5(v0 + v2 + v1[9], v4);
  sub_100012324(*(v0 + v2 + v1[10]), *(v0 + v2 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001C8D84(uint64_t a1)
{
  v3 = *(type metadata accessor for BenefactorInfoRecord(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1001C7FC8(a1, v4, v5, v6, v7);
}

void sub_1001C8E0C(void *a1)
{
  v2 = [*(*sub_1000080F8(a1 + 2 a1[5]) + 16)];
  if (v2)
  {

    v3 = objc_allocWithZone(type metadata accessor for InheritanceMigrationAnalyticsEvent(0));
    sub_100309C2C(_swiftEmptyArrayStorage);
    v4 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
    v5 = swift_allocObject();
    v5[2] = a1;
    v5[3] = v4;
    v5[4] = OSTransaction.complete();
    v5[5] = 0;
    v6 = qword_1003D7F68;

    v7 = v4;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAB18);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Starting beneficiary manatee migration.", v11, 2u);
    }

    sub_1000080F8(a1 + 7, a1[10]);
    v12 = swift_allocObject();
    v12[2] = sub_1001CC5D0;
    v12[3] = v5;
    v12[4] = a1;

    sub_100216650(sub_1001CC5E0, v12);
  }

  else
  {
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAB18);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Not logged in to AppleAccount, Aborting migration!", v16, 2u);
    }

    type metadata accessor for InheritanceError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001CC2A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
  }
}

void sub_1001C917C(void (*a1)(), uint64_t a2)
{
  v3 = v2;
  v6 = [*(*sub_1000080F8((v2 + 16) *(v2 + 40)) + 16)];
  if (v6)
  {

    v7 = objc_allocWithZone(type metadata accessor for InheritanceMigrationAnalyticsEvent(0));
    sub_100309C2C(_swiftEmptyArrayStorage);
    v8 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v8;
    v9[4] = a1;
    v9[5] = a2;
    v10 = qword_1003D7F68;

    v11 = v8;

    if (v10 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAB18);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Starting beneficiary manatee migration.", v15, 2u);
    }

    sub_1000080F8((v3 + 56), *(v3 + 80));
    v16 = swift_allocObject();
    v16[2] = sub_1001CBD34;
    v16[3] = v9;
    v16[4] = v3;

    sub_100216650(sub_1001CBD40, v16);
  }

  else
  {
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAB18);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Not logged in to AppleAccount, Aborting migration!", v20, 2u);
    }

    type metadata accessor for InheritanceError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001CC2A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    a1();
  }
}

uint64_t sub_1001C94FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 112) <= 0)
  {
    if (!a1)
    {
      return a4(a1);
    }

    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    v6 = _convertErrorToNSError(_:)();
    goto LABEL_6;
  }

  v6 = 0;
LABEL_6:
  swift_beginAccess();
  if ((AAUnderTest.getter() & 1) == 0)
  {
    sub_100005814(&qword_1003E30D0, &unk_100340690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033E5C0;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x800000010032DFF0;
    *(inited + 48) = Int._bridgeToObjectiveC()();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x800000010032E010;
    *(inited + 72) = Int._bridgeToObjectiveC()();
    sub_1003093D0(inited);
    swift_setDeallocating();
    sub_100005814(&unk_1003E8C10, &unk_100344990);
    swift_arrayDestroy();
    dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();
  }

  return a4(a1);
}

uint64_t sub_1001C9694(void *a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v69 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v67 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DispatchQoS();
  v12 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v65 = *(v14 - 8);
  __chkstk_darwin(v14);
  v64 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BeneficiaryInfoRecord(0) - 8;
  v17 = __chkstk_darwin(v16);
  v73 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v22 = &v58 - v21;
  if (a2)
  {
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAB18);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v74 = a1;
      aBlock[0] = v27;
      *v26 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v28 = String.init<A>(describing:)();
      v30 = sub_10021145C(v28, v29, aBlock);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to fetch Beneficiaries. Aborting migration : %s", v26, 0xCu);
      sub_10000839C(v27);
    }

    return v69(a1);
  }

  else
  {
    v59 = v14;
    v60 = v12;
    v61 = v10;
    v62 = v9;
    v63 = a4;
    v32 = a1[2];
    v33 = v73;
    if (v32)
    {
      v34 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v35 = *(a5 + 96);
      v36 = *(v19 + 72);
      *&v20 = 136315138;
      v70 = v20;
      v71 = v36;
      v72 = a5;
      do
      {
        sub_1001CC4BC(v34, v22, type metadata accessor for BeneficiaryInfoRecord);
        if (qword_1003D7F68 != -1)
        {
          swift_once();
        }

        v45 = type metadata accessor for Logger();
        sub_100008D04(v45, qword_1003FAB18);
        sub_1001CC4BC(v22, v33, type metadata accessor for BeneficiaryInfoRecord);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          aBlock[0] = v38;
          *v37 = v70;
          type metadata accessor for UUID();
          v39 = v35;
          sub_1001CC2A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v40 = dispatch thunk of CustomStringConvertible.description.getter();
          v42 = v41;
          sub_1001CC524(v73, type metadata accessor for BeneficiaryInfoRecord);
          v43 = sub_10021145C(v40, v42, aBlock);
          v35 = v39;

          *(v37 + 4) = v43;
          _os_log_impl(&_mh_execute_header, v46, v47, "Migrating Records for beneficiaryID - %s.", v37, 0xCu);
          sub_10000839C(v38);
          v36 = v71;

          a5 = v72;
          v33 = v73;
        }

        else
        {

          sub_1001CC524(v33, type metadata accessor for BeneficiaryInfoRecord);
        }

        dispatch_group_enter(v35);
        v44 = swift_allocObject();
        swift_weakInit();
        sub_1001CBD50(v22, a5, v44);

        sub_1001CC524(v22, type metadata accessor for BeneficiaryInfoRecord);
        v34 += v36;
        --v32;
      }

      while (v32);
    }

    sub_100071C74();
    v49 = v64;
    v48 = v65;
    v50 = v59;
    (*(v65 + 104))(v64, enum case for DispatchQoS.QoSClass.default(_:), v59);
    v51 = static OS_dispatch_queue.global(qos:)();
    (*(v48 + 8))(v49, v50);
    v52 = swift_allocObject();
    v53 = v63;
    v52[2] = v69;
    v52[3] = v53;
    v52[4] = a5;
    aBlock[4] = sub_1001CC27C;
    aBlock[5] = v52;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003AD700;
    v54 = _Block_copy(aBlock);

    v55 = v66;
    static DispatchQoS.unspecified.getter();
    v74 = _swiftEmptyArrayStorage;
    sub_1001CC2A0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000383E4();
    v56 = v67;
    v57 = v62;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v54);

    (*(v61 + 8))(v56, v57);
    (*(v60 + 8))(v55, v68);
  }
}

uint64_t sub_1001C9EFC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAB18);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Beneficiary Manatee migration complete.", v8, 2u);
  }

  swift_beginAccess();
  v9 = *(a3 + 120);
  if (*(v9 + 16))
  {
    v10 = *(v9 + 32);
    swift_errorRetain();
  }

  else
  {
    v10 = 0;
  }

  a1(v10);
}

uint64_t sub_1001CA03C()
{
  sub_10000839C((v0 + 16));
  sub_10000839C((v0 + 56));

  v1 = OBJC_IVAR____TtC13appleaccountd26BeneficiaryManateeMigrator__accessKeyRepairHandler;
  v2 = sub_100005814(&unk_1003E1298, &unk_100344700);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BeneficiaryManateeMigrator(uint64_t a1)
{
  result = qword_1003E1A60;
  if (!qword_1003E1A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001CA158(uint64_t a1)
{
  sub_1001CA22C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001CA22C(uint64_t a1)
{
  if (!qword_1003E1180)
  {
    sub_100008CBC(&qword_1003E1188, &unk_100346930);
    v1 = type metadata accessor for Dependency();
    if (!v2)
    {
      atomic_store(v1, &qword_1003E1180);
    }
  }
}

uint64_t sub_1001CA2B4()
{
  v1 = v0;
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAB18);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Manatee status changed, fetching new manatee status.", v5, 2u);
  }

  sub_1000080F8((v1 + 56), *(v1 + 80));
  v6 = swift_allocObject();
  swift_weakInit();

  sub_10021E8F0(sub_1001CC5C4, v6);
}

void sub_1001CA3F8(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAB18);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20[0] = v7;
      *v6 = 136315138;
      v20[3] = a1;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v8 = String.init<A>(describing:)();
      v10 = sub_10021145C(v8, v9, v20);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Failed to fetch manatee status: %s", v6, 0xCu);
      sub_10000839C(v7);

      return;
    }

    goto LABEL_18;
  }

  if ((a1 & 1) == 0)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA88);
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v17, "Account is not manatee, skipping manatee migration.", v18, 2u);
    }

LABEL_18:

    return;
  }

  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAB18);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Account is now manatee, kicking off migration.", v14, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1001C8E0C(Strong);
  }
}

void sub_1001CA784(uint64_t a1, void (*a2)(uint64_t a1))
{
  v56 = type metadata accessor for UUID();
  v4 = *(v56 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v56);
  v6 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v7 - 8);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  __chkstk_darwin(v10);
  v12 = (v55 - v11);
  sub_100012D04(a1, v55 - v11, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAB18);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v58[0] = v18;
      *v17 = 136315138;
      v57 = v13;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v19 = String.init<A>(describing:)();
      v21 = sub_10021145C(v19, v20, v58);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error migrating BeneficiaryInfoRecord : %s", v17, 0xCu);
      sub_10000839C(v18);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v23 = *(Strong + 104);

      os_unfair_lock_lock(v23);
    }

    swift_beginAccess();
    v24 = swift_weakLoadStrong();
    if (v24)
    {
      v25 = v24;
      swift_beginAccess();
      v26 = *(v25 + 120);
      swift_errorRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 120) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_1003062A8(0, v26[2] + 1, 1, v26);
        *(v25 + 120) = v26;
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        v26 = sub_1003062A8((v28 > 1), v29 + 1, 1, v26);
      }

      v26[2] = v29 + 1;
      v26[v29 + 4] = v13;
      *(v25 + 120) = v26;
      swift_endAccess();
    }

    swift_beginAccess();
    v30 = swift_weakLoadStrong();
    if (v30)
    {
      v31 = *(v30 + 104);

      os_unfair_lock_unlock(v31);
    }

    swift_beginAccess();
    v32 = swift_weakLoadStrong();
    if (v32)
    {
      v33 = *(v32 + 96);

      dispatch_group_leave(v33);
    }

    else
    {
    }
  }

  else
  {
    sub_1001CC454(v12, v9, type metadata accessor for BeneficiaryInfoRecord);
    swift_beginAccess();
    v34 = swift_weakLoadStrong();
    if (v34)
    {
      v35 = *(v34 + 104);

      os_unfair_lock_lock(v35);
    }

    swift_beginAccess();
    v36 = swift_weakLoadStrong();
    if (v36)
    {
      v37 = *(v36 + 112);
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        __break(1u);
        return;
      }

      *(v36 + 112) = v39;
    }

    swift_beginAccess();
    v40 = swift_weakLoadStrong();
    if (v40)
    {
      v41 = *(v40 + 104);

      os_unfair_lock_unlock(v41);
    }

    swift_beginAccess();
    v42 = swift_weakLoadStrong();
    if (v42)
    {
      v43 = *(v42 + 80);
      v55[2] = v42;
      v55[1] = sub_1000080F8((v42 + 56), v43);
      v44 = swift_allocObject();
      swift_weakInit();
      v45 = v56;
      (*(v4 + 16))(v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v56);
      v46 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v47 = (v5 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v48 = swift_allocObject();
      (*(v4 + 32))(v48 + v46, v6, v45);
      v49 = (v48 + v47);
      *v49 = sub_1001CC2F0;
      v49[1] = a2;
      *(v48 + ((v47 + 23) & 0xFFFFFFFFFFFFFFF8)) = v44;
      swift_retain_n();

      sub_100214780(v9, sub_1001CC3A8, v48, v50, v51, v52, v53, v54, v55[0]);

      sub_1001CC524(v9, type metadata accessor for BeneficiaryInfoRecord);
    }

    else
    {
      sub_1001CC524(v9, type metadata accessor for BeneficiaryInfoRecord);
    }
  }
}

void sub_1001CAE18(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAB18);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v23[0] = v7;
      *v6 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v8 = String.init<A>(describing:)();
      v10 = sub_10021145C(v8, v9, v23);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error migrating other records : %s", v6, 0xCu);
      sub_10000839C(v7);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = *(Strong + 104);

      os_unfair_lock_lock(v12);
    }

    swift_beginAccess();
    v13 = swift_weakLoadStrong();
    if (v13)
    {
      v14 = v13;
      swift_beginAccess();
      v15 = *(v14 + 120);
      swift_errorRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v14 + 120) = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_1003062A8(0, v15[2] + 1, 1, v15);
        *(v14 + 120) = v15;
      }

      v18 = v15[2];
      v17 = v15[3];
      if (v18 >= v17 >> 1)
      {
        v15 = sub_1003062A8((v17 > 1), v18 + 1, 1, v15);
      }

      v15[2] = v18 + 1;
      v15[v18 + 4] = a1;
      *(v14 + 120) = v15;
      swift_endAccess();
    }

    swift_beginAccess();
    v19 = swift_weakLoadStrong();
    if (v19)
    {
      v20 = *(v19 + 104);

      os_unfair_lock_unlock(v20);
    }
  }

  swift_beginAccess();
  v21 = swift_weakLoadStrong();
  if (v21)
  {
    v22 = *(v21 + 96);

    dispatch_group_leave(v22);
  }
}

void sub_1001CB118(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v86 = a5;
  v90 = a3;
  v91 = a4;
  v84 = a2;
  v6 = type metadata accessor for InheritanceInvitationRecord(0);
  v7 = __chkstk_darwin(v6);
  v85 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v83 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v83 - v13;
  v15 = __chkstk_darwin(v12);
  v87 = (&v83 - v16);
  __chkstk_darwin(v15);
  v18 = &v83 - v17;
  v19 = type metadata accessor for UUID();
  v88 = *(v19 - 8);
  v89 = v19;
  __chkstk_darwin(v19);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  __chkstk_darwin(v22);
  v24 = (&v83 - v23);
  sub_100012D04(a1, &v83 - v23, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    v93[0] = *v24;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for InheritanceError(0);
    if (swift_dynamicCast())
    {
      v26 = v94;
      v92 = 3;
      v93[0] = v94;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001CC2A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v27 = v94;
      v92 = v94;
      v28 = static _BridgedStoredNSError.== infix(_:_:)();

      if (v28)
      {
        if (qword_1003D7F68 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_100008D04(v29, qword_1003FAB18);
        v30 = v88;
        v31 = v89;
        (*(v88 + 16))(v21, v84, v89);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v93[0] = v87;
          *v34 = 136315138;
          sub_1001CC2A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v35 = dispatch thunk of CustomStringConvertible.description.getter();
          v37 = v36;
          (*(v30 + 8))(v21, v31);
          v38 = sub_10021145C(v35, v37, v93);

          *(v34 + 4) = v38;
          _os_log_impl(&_mh_execute_header, v32, v33, "There is no InheritanceInvitationRecord for beneficiaryID - %s.", v34, 0xCu);
          sub_10000839C(v87);
        }

        else
        {

          (*(v30 + 8))(v21, v31);
        }

        v90(0);

        return;
      }
    }

    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_100008D04(v73, qword_1003FAB18);
    swift_errorRetain();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v93[0] = v77;
      *v76 = 136315138;
      v94 = v25;
      swift_errorRetain();
      v78 = String.init<A>(describing:)();
      v80 = sub_10021145C(v78, v79, v93);

      *(v76 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v74, v75, "Error fetching InheritanceInvitationRecord. Aborting migration - %s", v76, 0xCu);
      sub_10000839C(v77);
    }

    swift_errorRetain();
    v90(v25);
  }

  else
  {
    sub_1001CC454(v24, v18, type metadata accessor for InheritanceInvitationRecord);
    v39 = v18;
    if (v18[v6[11]])
    {
      if (qword_1003D7F68 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100008D04(v40, qword_1003FAB18);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "InheritanceInvitationRecord is already in Manatee.", v43, 2u);
      }

      v90(0);
      v44 = v18;
    }

    else
    {
      sub_1001CC4BC(v18, v14, type metadata accessor for InheritanceInvitationRecord);
      v45 = &v11[v6[6]];
      *v45 = 0;
      *(v45 + 1) = 0;
      v46 = &v11[v6[7]];
      *v46 = 0;
      *(v46 + 1) = 0;
      v47 = v89;
      v48 = *(v88 + 16);
      v48(v11, v14, v89);
      v48(&v11[v6[9]], &v14[v6[9]], v47);
      v49 = v6[10];
      v50 = *&v14[v49];
      v51 = *&v14[v49 + 8];
      v52 = &v11[v49];
      *v52 = v50;
      v52[1] = v51;
      v53 = v6[5];
      v54 = *&v14[v53];
      v55 = *&v14[v53 + 8];
      v56 = &v11[v53];
      *v56 = v54;
      *(v56 + 1) = v55;
      v57 = &v14[v6[6]];
      v58 = *(v57 + 1);
      if (v58)
      {
        *v45 = *v57;
        *(v45 + 1) = v58;
      }

      v59 = &v14[v6[7]];
      v60 = *(v59 + 1);
      if (v60)
      {
        *v46 = *v59;
        *(v46 + 1) = v60;
      }

      v61 = *&v14[v6[8]];
      sub_100015D6C(v50, v51);

      sub_1001CC524(v14, type metadata accessor for InheritanceInvitationRecord);
      *&v11[v6[8]] = v61;
      v11[v6[11]] = 1;
      v62 = v87;
      sub_1001CC454(v11, v87, type metadata accessor for InheritanceInvitationRecord);
      if (qword_1003D7F68 != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      sub_100008D04(v63, qword_1003FAB18);
      v64 = v85;
      sub_1001CC4BC(v62, v85, type metadata accessor for InheritanceInvitationRecord);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v93[0] = v68;
        *v67 = 136315138;
        v69 = sub_1001EEBA0();
        v71 = v70;
        sub_1001CC524(v64, type metadata accessor for InheritanceInvitationRecord);
        v72 = sub_10021145C(v69, v71, v93);

        *(v67 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v65, v66, "Created new InheritanceHealthRecord - %s", v67, 0xCu);
        sub_10000839C(v68);
      }

      else
      {

        sub_1001CC524(v64, type metadata accessor for InheritanceInvitationRecord);
      }

      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        sub_100040738(Strong + 56, v93);

        sub_1000080F8(v93, v93[3]);
        v82 = swift_allocObject();
        *(v82 + 16) = v90;
        *(v82 + 24) = v91;

        sub_100215214(v62, sub_1001CC5BC, v82);

        sub_1001CC524(v62, type metadata accessor for InheritanceInvitationRecord);
        sub_1001CC524(v39, type metadata accessor for InheritanceInvitationRecord);
        sub_10000839C(v93);
        return;
      }

      sub_1001CC524(v62, type metadata accessor for InheritanceInvitationRecord);
      v44 = v39;
    }

    sub_1001CC524(v44, type metadata accessor for InheritanceInvitationRecord);
  }
}

uint64_t sub_1001CBC18(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  __chkstk_darwin(v4);
  v6 = (&v9 - v5);
  sub_100012D04(a1, &v9 - v5, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v6;
    swift_errorRetain();
    a2(v7);
  }

  else
  {
    a2(0);
    return sub_100008D3C(v6, &qword_1003E1290, &unk_1003444C0);
  }
}

uint64_t sub_1001CBD50(uint64_t a1, uint64_t a2, void (*a3)(uint64_t a1))
{
  v35 = a2;
  v5 = sub_100005814(&unk_1003E1298, &unk_100344700);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for BeneficiaryInfoRecord(0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + *(v13 + 48));
  v17 = qword_1003D7F68;

  if (v16 == 1)
  {
    if (v17 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAB18);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "BeneficiaryInfoRecord is already in Manatee.", v21, 2u);
    }

    sub_1001CC4BC(a1, v11, type metadata accessor for BeneficiaryInfoRecord);
    swift_storeEnumTagMultiPayload();
    sub_1001CA784(v11, a3);
    sub_100008D3C(v11, &unk_1003E10A0, &unk_100344480);
  }

  else
  {
    if (v17 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAB18);
    v34 = a1;
    sub_1001CC4BC(a1, v15, type metadata accessor for BeneficiaryInfoRecord);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = a3;
      v27 = v26;
      v36[0] = v26;
      *v25 = 136315138;
      type metadata accessor for UUID();
      sub_1001CC2A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      sub_1001CC524(v15, type metadata accessor for BeneficiaryInfoRecord);
      v31 = sub_10021145C(v28, v30, v36);

      *(v25 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "Migrating BeneficiaryInfoRecord with beneficiaryID %s...", v25, 0xCu);
      sub_10000839C(v27);
      a3 = v33;
    }

    else
    {

      sub_1001CC524(v15, type metadata accessor for BeneficiaryInfoRecord);
    }

    (*(v6 + 16))(v8, v35 + OBJC_IVAR____TtC13appleaccountd26BeneficiaryManateeMigrator__accessKeyRepairHandler, v5);
    Dependency.wrappedValue.getter();
    (*(v6 + 8))(v8, v5);
    sub_1000080F8(v36, v36[3]);
    sub_100195F94(v34, 1, sub_1001CC2E8, a3);
    sub_10000839C(v36);
  }
}

uint64_t sub_1001CC240()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001CC288(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001CC2A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001CC2F8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

void sub_1001CC3A8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = *(v7 + 8);

  sub_1001CB118(a1, v1 + v4, v9, v10, v8);
}

uint64_t sub_1001CC454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CC4BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CC524(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001CC584()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001CC5E4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a2)
  {
    return a2(a1);
  }

  return a1;
}

uint64_t sub_1001CC638(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (!a1)
  {
    return sub_1001CC868(a3, a4, a5);
  }

  swift_errorRetain();
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAA0);
  swift_errorRetain();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_10021145C(a6, a7, &v19);
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "Not Accepting CKShare from sender %s due to %@", v14, 0x16u);
    sub_100083380(v15);

    sub_10000839C(v16);
  }

  if (a4)
  {
    swift_errorRetain();
    a4(a1);
  }
}

uint64_t sub_1001CC868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for InheritanceAccessKeyMessage(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAA0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Accepting BeneficiaryInfoRecord Share...", v15, 2u);
  }

  sub_1000080F8((v4 + 16), *(v4 + 40));
  v16 = swift_allocObject();
  swift_weakInit();
  sub_1001CE0C4(a1, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InheritanceAccessKeyMessage);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  sub_1001CE298(v11, v19 + v17, type metadata accessor for InheritanceAccessKeyMessage);
  *(v19 + v18) = v16;
  sub_100083AA0(a2, a3);

  sub_1001F5D58(a1, sub_1001CE300, v19);
}

uint64_t sub_1001CCAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v29 = a5;
  v30 = a3;
  v27 = a4;
  v28 = a2;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAA0);
  (*(v9 + 16))(v11, a1, v8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136315138;
    sub_1001CE044(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v9 + 8))(v11, v8);
    v21 = sub_10021145C(v18, v20, &v31);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Checking for existing BenefactorInfoRecord with beneficiaryID - %s", v16, 0xCu);
    sub_10000839C(v17);

    a1 = v26;
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  sub_1000080F8((v6 + 56), *(v6 + 80));
  v22 = swift_allocObject();
  v23 = v28;
  v22[2] = v27;
  v24 = v30;
  v22[3] = v29;
  v22[4] = v23;
  v22[5] = v24;

  sub_10021B0E8(a1, sub_1001CDFC8, v22);
}

uint64_t sub_1001CCDDC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, unint64_t a5)
{
  v69 = a4;
  v70 = a2;
  v8 = type metadata accessor for BenefactorInfoRecord(0);
  v9 = __chkstk_darwin(v8);
  v11 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v67 - v13;
  __chkstk_darwin(v12);
  v16 = v67 - v15;
  v17 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  __chkstk_darwin(v17);
  v19 = (v67 - v18);
  sub_1001CDFD4(a1, v67 - v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v73 = *v19;
    v20 = v73;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for InheritanceError(0);
    if (swift_dynamicCast())
    {
      v21 = v72;
      v73 = v72;
      v71 = 3;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001CE044(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v22 = v72;
      v71 = v72;
      v23 = static _BridgedStoredNSError.== infix(_:_:)();

      if (v23)
      {
        if (qword_1003D7F40 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_100008D04(v24, qword_1003FAAA0);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "No existing BenefactorInfoRecord found.", v27, 2u);
        }

LABEL_38:
        swift_errorRetain();
        v70(v20);
      }
    }

    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_100008D04(v59, qword_1003FAAA0);
    swift_errorRetain();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v72 = v20;
      v73 = v63;
      *v62 = 136315138;
      swift_errorRetain();
      v64 = String.init<A>(describing:)();
      v66 = sub_10021145C(v64, v65, &v73);

      *(v62 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v60, v61, "Failed to fetch BenefactorInfoRecord: %s", v62, 0xCu);
      sub_10000839C(v63);
    }

    goto LABEL_38;
  }

  v68 = v8;
  sub_1001CE298(v19, v16, type metadata accessor for BenefactorInfoRecord);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_100008D04(v28, qword_1003FAAA0);
  sub_1001CE0C4(v16, v14, type metadata accessor for BenefactorInfoRecord);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  v32 = os_log_type_enabled(v30, v31);
  v67[1] = a3;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v67[0] = v29;
    v34 = v33;
    v35 = swift_slowAlloc();
    v73 = v35;
    *v34 = 136315138;
    v36 = sub_1001E2E64();
    v38 = v37;
    sub_1001CE3F4(v14, type metadata accessor for BenefactorInfoRecord);
    v39 = sub_10021145C(v36, v38, &v73);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v30, v31, "Found an existing BenefactorInfoRecord - %s", v34, 0xCu);
    sub_10000839C(v35);
  }

  else
  {

    sub_1001CE3F4(v14, type metadata accessor for BenefactorInfoRecord);
  }

  v40 = v68;
  sub_1001CE0C4(v16, v11, type metadata accessor for BenefactorInfoRecord);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v43 = 136315394;
    v44 = &v11[*(v40 + 20)];
    v45 = *v44;
    v46 = v44[1];

    sub_1001CE3F4(v11, type metadata accessor for BenefactorInfoRecord);
    v47 = sub_10021145C(v45, v46, &v73);
    v40 = v68;

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    v48 = v69;
    *(v43 + 14) = sub_10021145C(v69, a5, &v73);
    _os_log_impl(&_mh_execute_header, v41, v42, "Comparing handles from BenefactorInfoRecord: %s and IDS message: %s are same and not empty.", v43, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1001CE3F4(v11, type metadata accessor for BenefactorInfoRecord);
    v48 = v69;
  }

  v49 = &v16[*(v40 + 20)];
  v50 = *v49;
  v51 = *(v49 + 1);
  v52 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v52 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (!v52)
  {
    goto LABEL_28;
  }

  v53 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v53 = v48 & 0xFFFFFFFFFFFFLL;
  }

  if (v53 && (v50 == v48 && v51 == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && *&v16[*(v40 + 24)] == 2)
  {
    v70(0);
  }

  else
  {
LABEL_28:
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "⛔️ Cannot proceed. Beneficiary handle does not match incoming message from: handle", v56, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v72 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001CE044(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v57 = v73;
    v70(v73);
  }

  return sub_1001CE3F4(v16, type metadata accessor for BenefactorInfoRecord);
}

uint64_t sub_1001CD708(uint64_t result, void (*a2)(uint64_t), uint64_t a3, _BYTE *a4, uint64_t a5)
{
  if (result)
  {
    v7 = result;
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAA0);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18[0] = v12;
      *v11 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v13 = String.init<A>(describing:)();
      v15 = sub_10021145C(v13, v14, v18);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Error Accepting BeneficiaryInfoRecord Share : %s", v11, 0xCu);
      sub_10000839C(v12);
    }

    if (a2)
    {
      swift_errorRetain();
      a2(v7);
    }
  }

  else if (*a4 == 2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v17 = type metadata accessor for InheritanceAccessKeyMessage(0);
      sub_1001CD940(&a4[*(v17 + 20)], a2, a3);
    }
  }

  else if (a2)
  {
    return (a2)(0);
  }

  return result;
}

uint64_t sub_1001CD940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAAA0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Notifying Beneficiary about AccessKey change...", v11, 2u);
  }

  sub_1000080F8((v4 + 56), *(v4 + 80));
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v12;
  sub_100083AA0(a2, a3);

  sub_10021B0E8(a1, sub_1001CE3E8, v13);
}

uint64_t sub_1001CDAE0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v6 = type metadata accessor for TrustedContactUserNotification(0);
  __chkstk_darwin(v6);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for BenefactorInfoRecord(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  v15 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  __chkstk_darwin(v15);
  v17 = (&v34 - v16);
  sub_1001CDFD4(a1, &v34 - v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAA0);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37[0] = v23;
      *v22 = 136315138;
      v36[0] = v18;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v24 = String.init<A>(describing:)();
      v26 = sub_10021145C(v24, v25, v37);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error fetching Benefactor : %s", v22, 0xCu);
      sub_10000839C(v23);
    }

    if (a2)
    {
      swift_errorRetain();
      (a2)(v18);
    }
  }

  else
  {
    sub_1001CE298(v17, v14, type metadata accessor for BenefactorInfoRecord);
    sub_1001CE0C4(v14, v12, type metadata accessor for BenefactorInfoRecord);
    v28 = objc_allocWithZone(AABenefactorInfo);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v30 = String._bridgeToObjectiveC()();
    v31 = [v28 initWithBeneficiaryID:isa handle:v30 status:*&v12[*(v9 + 24)]];

    sub_1001CE3F4(v12, type metadata accessor for BenefactorInfoRecord);
    *v8 = v31;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_100040738(Strong + 96, v36);
      v33 = v31;

      sub_1000080F8(v36, v36[3]);
      sub_1002CA150(v37);
      sub_1002D2E28(v37, a2, v35);
      sub_1000C5460(v37);

      sub_1001CE3F4(v8, type metadata accessor for TrustedContactUserNotification);
      sub_1001CE3F4(v14, type metadata accessor for BenefactorInfoRecord);
      return sub_10000839C(v36);
    }

    else
    {
      sub_1001CE3F4(v8, type metadata accessor for TrustedContactUserNotification);
      return sub_1001CE3F4(v14, type metadata accessor for BenefactorInfoRecord);
    }
  }
}

uint64_t sub_1001CDF88()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1001CDFD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CE044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001CE08C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001CE0C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CE12C()
{
  v1 = type metadata accessor for InheritanceAccessKeyMessage(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  if (*(v0 + 16))
  {
  }

  v4 = (v2 + 32) & ~v2;
  v5 = (v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v7 = *(v1 + 20);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v6 + *(v1 + 24);
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = type metadata accessor for CloudShareInfo(0);

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_1001CE298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CE300(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceAccessKeyMessage(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_1001CD708(a1, v6, v7, (v1 + v4), v5);
}

uint64_t sub_1001CE3A0()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1001CE3F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001CE454(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v82 = a6;
  v83 = a7;
  v84 = a4;
  v85 = a3;
  v79 = type metadata accessor for InheritanceInvitationResponseMessage(0);
  v11 = __chkstk_darwin(v79);
  v80 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v76 - v13;
  v15 = type metadata accessor for InheritanceInvitationMessage(0);
  __chkstk_darwin(v15);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v76 - v20;
  v22 = *(v19 + 16);
  v81 = v7;
  v22(&v76 - v20, v7 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler__accountStore, v18);
  Dependency.wrappedValue.getter();
  (*(v19 + 8))(v21, v18);
  v23 = sub_1000080F8(v87, v87[3]);
  v24 = *v23;
  v25 = [*(*v23 + 16) aa_primaryAppleAccount];
  if (v25 && (v26 = *(v24 + 16), v27 = v25, v28 = a1, v29 = [v25 aa_altDSID], v30 = objc_msgSend(v26, "aa_authKitAccountForAltDSID:", v29), v27, v29, a1 = v28, v30) && (v31 = objc_msgSend(*(v24 + 24), "canBeBeneficiaryForAccount:", v30), v30, v31))
  {
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = swift_allocObject();
    v34 = v82;
    v35 = v83;
    v33[2] = v82;
    v33[3] = v35;
    v36 = v84;
    v33[4] = v32;
    v33[5] = v36;
    v33[6] = a5;
    sub_100083AA0(v34, v35);

    sub_1001CF4C0(v28, a2, v85, sub_1001D1CB8, v33);
  }

  else
  {
    v77 = a2;
    v78 = a5;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100008D04(v37, qword_1003FAAA0);
    sub_1001D1F10(a1, v17, type metadata accessor for InheritanceInvitationMessage);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v76 = a1;
      v42 = v41;
      v86 = v41;
      *v40 = 136315138;
      type metadata accessor for UUID();
      sub_1001CE044(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      sub_1001D1F78(v17, type metadata accessor for InheritanceInvitationMessage);
      v46 = sub_10021145C(v43, v45, &v86);

      *(v40 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v38, v39, "User is not eligible to be a beneficiary, replying rejected for beneficiaryID: %s", v40, 0xCu);
      sub_10000839C(v42);
      a1 = v76;
    }

    else
    {

      sub_1001D1F78(v17, type metadata accessor for InheritanceInvitationMessage);
    }

    v47 = sub_1000080F8((v81 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_messenger), *(v81 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_messenger + 24));
    v48 = *(v15 + 20);
    v49 = swift_allocObject();
    v51 = v82;
    v50 = v83;
    *(v49 + 16) = v82;
    *(v49 + 24) = v50;
    v52 = *v47;
    v53 = v79;
    v54 = *(v79 + 20);
    v55 = type metadata accessor for UUID();
    (*(*(v55 - 8) + 16))(&v14[v54], a1 + v48, v55);
    *v14 = 0;
    v14[*(v53 + 24)] = 0;
    v56 = v80;
    sub_1001D1F10(v14, v80, type metadata accessor for InheritanceInvitationResponseMessage);
    sub_100083AA0(v51, v50);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v86 = v60;
      *v59 = 136315138;
      v61 = sub_1001DB654();
      v62 = v56;
      v64 = v63;
      sub_1001D1F78(v62, type metadata accessor for InheritanceInvitationResponseMessage);
      v65 = sub_10021145C(v61, v64, &v86);

      *(v59 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v57, v58, "Created invitation response message - %s.\nResponding to invitation...", v59, 0xCu);
      sub_10000839C(v60);
    }

    else
    {

      sub_1001D1F78(v56, type metadata accessor for InheritanceInvitationResponseMessage);
    }

    v66 = v85;
    v67 = v78;
    v68 = sub_1000080F8((v52 + 16), *(v52 + 40));
    if (_swiftEmptyArrayStorage >> 62)
    {
      v73 = v68;
      v74 = _CocoaArrayWrapper.endIndex.getter();
      v70 = v77;
      if (v74)
      {
        sub_10013446C(_swiftEmptyArrayStorage);
        v69 = v75;
      }

      else
      {
        v69 = &_swiftEmptySetSingleton;
      }

      v68 = v73;
    }

    else
    {
      v69 = &_swiftEmptySetSingleton;
      v70 = v77;
    }

    v71 = *v68;

    sub_1002B4B0C(v14, v70, v66, v84, v67, v69, v71, sub_1001D1C2C, v49);

    sub_1001D1F78(v14, type metadata accessor for InheritanceInvitationResponseMessage);
  }

  return sub_10000839C(v87);
}

uint64_t sub_1001CEC18(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v83 = a4;
  v85 = a3;
  v10 = type metadata accessor for InheritanceInvitationResponseMessage(0);
  v11 = __chkstk_darwin(v10);
  v82 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v84 = &v77 - v13;
  v14 = type metadata accessor for BenefactorInfoRecord(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v77 - v18;
  v20 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  __chkstk_darwin(v20);
  v22 = (&v77 - v21);
  sub_1001CDFD4(a1, &v77 - v21);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001D1EA8(v22, v19, type metadata accessor for BenefactorInfoRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    v34 = sub_100008D04(v33, qword_1003FAAA0);
    sub_1001D1F10(v19, v17, type metadata accessor for BenefactorInfoRecord);
    v81 = v34;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    v37 = os_log_type_enabled(v35, v36);
    v79 = a5;
    v80 = a6;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v78 = a2;
      v39 = v38;
      v40 = swift_slowAlloc();
      v87[0] = v40;
      *v39 = 136315138;
      v41 = sub_1001E2E64();
      v43 = v42;
      sub_1001D1F78(v17, type metadata accessor for BenefactorInfoRecord);
      v44 = sub_10021145C(v41, v43, v87);

      *(v39 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v35, v36, "Saved Benefactor to storage - %s", v39, 0xCu);
      sub_10000839C(v40);

      a2 = v78;
    }

    else
    {

      sub_1001D1F78(v17, type metadata accessor for BenefactorInfoRecord);
    }

    if (*&v19[*(v14 + 24)] == 2)
    {
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Status is accepted. Responding to invitation.", v47, 2u);
      }

      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        sub_100040738(Strong + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_messenger, v87);

        v49 = sub_1000080F8(v87, v87[3]);
        v50 = &v19[*(v14 + 20)];
        v51 = *v50;
        v83 = v50[1];
        v52 = swift_allocObject();
        v53 = v85;
        *(v52 + 16) = a2;
        *(v52 + 24) = v53;
        v54 = *v49;
        v55 = *(v10 + 20);
        v56 = type metadata accessor for UUID();
        v57 = v84;
        (*(*(v56 - 8) + 16))(&v84[v55], v19, v56);
        *v57 = 0;
        v57[*(v10 + 24)] = 1;
        v58 = v82;
        sub_1001D1F10(v57, v82, type metadata accessor for InheritanceInvitationResponseMessage);
        sub_100083AA0(a2, v53);
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v85 = v54;
          v86 = v62;
          v63 = v62;
          *v61 = 136315138;
          v64 = sub_1001DB654();
          v65 = v51;
          v67 = v66;
          sub_1001D1F78(v58, type metadata accessor for InheritanceInvitationResponseMessage);
          v68 = sub_10021145C(v64, v67, &v86);
          v51 = v65;

          *(v61 + 4) = v68;
          _os_log_impl(&_mh_execute_header, v59, v60, "Created invitation response message - %s.\nResponding to invitation...", v61, 0xCu);
          sub_10000839C(v63);
          v54 = v85;
        }

        else
        {

          sub_1001D1F78(v58, type metadata accessor for InheritanceInvitationResponseMessage);
        }

        v70 = v79;
        v69 = v80;
        v71 = sub_1000080F8((v54 + 16), *(v54 + 40));
        if (_swiftEmptyArrayStorage >> 62)
        {
          v75 = v71;
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_10013446C(_swiftEmptyArrayStorage);
            v72 = v76;
          }

          else
          {
            v72 = &_swiftEmptySetSingleton;
          }

          v71 = v75;
        }

        else
        {
          v72 = &_swiftEmptySetSingleton;
        }

        v73 = *v71;

        v74 = v84;
        sub_1002B4B0C(v84, v51, v83, v70, v69, v72, v73, sub_1001D25D8, v52);

        sub_1001D1F78(v74, type metadata accessor for InheritanceInvitationResponseMessage);
        sub_1001D1F78(v19, type metadata accessor for BenefactorInfoRecord);
        return sub_10000839C(v87);
      }
    }

    else if (a2)
    {
      a2(0);
    }

    return sub_1001D1F78(v19, type metadata accessor for BenefactorInfoRecord);
  }

  v23 = *v22;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100008D04(v24, qword_1003FAAA0);
  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v87[0] = v28;
    *v27 = 136315138;
    v87[5] = v23;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v29 = String.init<A>(describing:)();
    v31 = sub_10021145C(v29, v30, v87);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "Unable to persist BenefactorInfoRecord: %s", v27, 0xCu);
    sub_10000839C(v28);
  }

  if (a2)
  {
    swift_errorRetain();
    a2(v23);
  }
}

uint64_t sub_1001CF4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v42 = a3;
  v43 = a5;
  v40 = a2;
  v41 = a4;
  v8 = type metadata accessor for InheritanceInvitationMessage(0);
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  v10 = __chkstk_darwin(v8);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v37 - v12;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAA0);
  sub_1001D1F10(a1, v13, type metadata accessor for InheritanceInvitationMessage);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v37 = v5;
    v19 = v18;
    v44 = v18;
    *v17 = 136315138;
    type metadata accessor for UUID();
    v38 = a1;
    sub_1001CE044(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_1001D1F78(v13, type metadata accessor for InheritanceInvitationMessage);
    v23 = sub_10021145C(v20, v22, &v44);

    *(v17 + 4) = v23;
    a1 = v38;
    _os_log_impl(&_mh_execute_header, v15, v16, "Checking for existing BenefactorInfoRecord with beneficiaryID - %s", v17, 0xCu);
    sub_10000839C(v19);
    v6 = v37;
  }

  else
  {

    sub_1001D1F78(v13, type metadata accessor for InheritanceInvitationMessage);
  }

  sub_1000080F8((v6 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_storageController), *(v6 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_storageController + 24));
  v24 = *(v8 + 20);
  v25 = swift_allocObject();
  swift_weakInit();
  sub_1001D1F10(a1, v11, type metadata accessor for InheritanceInvitationMessage);
  v26 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v27 = (v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = a1;
  v30 = swift_allocObject();
  *(v30 + 16) = v25;
  sub_1001D1EA8(v11, v30 + v26, type metadata accessor for InheritanceInvitationMessage);
  v31 = (v30 + v27);
  v32 = v41;
  v34 = v42;
  v33 = v43;
  *v31 = v40;
  v31[1] = v34;
  v35 = (v30 + v28);
  *v35 = v32;
  v35[1] = v33;

  sub_10021B0E8(v29 + v24, sub_1001D1DF4, v30);
}

uint64_t sub_1001CF8A8()
{
  v1 = OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_storageController));
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_messenger));
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_familyManager));
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_messageUtil));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InheritanceInvitationHandler(uint64_t a1)
{
  result = qword_1003E1CC0;
  if (!qword_1003E1CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001CF9E4(uint64_t a1)
{
  sub_1001CFA84(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001CFA84(uint64_t a1)
{
  if (!qword_1003DA6C0[0])
  {
    sub_100008CBC(&unk_1003DA2A0, &unk_10033BDA0);
    v1 = type metadata accessor for Dependency();
    if (!v2)
    {
      atomic_store(v1, qword_1003DA6C0);
    }
  }
}

void sub_1001CFAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v61 = a6;
  v62 = a7;
  v59 = a3;
  v60 = a4;
  v10 = type metadata accessor for BenefactorInfoRecord(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v57 - v14;
  v16 = type metadata accessor for InheritanceInvitationMessage(0);
  v58 = *(v16 - 8);
  v17 = *(v58 + 64);
  __chkstk_darwin(v16 - 8);
  v18 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v20 = __chkstk_darwin(v19);
  v22 = (v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v24 = (v57 - v23);
  sub_1001CDFD4(a1, v57 - v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    v63[0] = *v24;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for InheritanceError(0);
    if (swift_dynamicCast())
    {
      v57[0] = a5;
      v57[1] = a2;
      v26 = v65;
      v63[0] = v65;
      v64 = 3;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001CE044(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v27 = v65;
      v64 = v65;
      v28 = static _BridgedStoredNSError.== infix(_:_:)();

      if (v28)
      {
        if (qword_1003D7F40 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_100008D04(v29, qword_1003FAAA0);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v30, v31, "No existing record found.", v32, 2u);
        }

        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          sub_1000080F8((Strong + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_storageController), *(Strong + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_storageController + 24));
          v34 = swift_allocObject();
          swift_weakInit();
          sub_1001D1F10(v59, v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InheritanceInvitationMessage);
          v35 = (*(v58 + 80) + 56) & ~*(v58 + 80);
          v36 = swift_allocObject();
          v37 = v61;
          v38 = v62;
          v36[2] = v34;
          v36[3] = v37;
          v39 = v60;
          v36[4] = v38;
          v36[5] = v39;
          v36[6] = v57[0];
          sub_1001D1EA8(v18, v36 + v35, type metadata accessor for InheritanceInvitationMessage);

          sub_10021E8F0(sub_1001D20E8, v36);
        }

        else
        {
        }

        return;
      }
    }

    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100008D04(v49, qword_1003FAAA0);
    swift_errorRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v63[0] = v53;
      *v52 = 136315138;
      v65 = v25;
      swift_errorRetain();
      v54 = String.init<A>(describing:)();
      v56 = sub_10021145C(v54, v55, v63);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v50, v51, "Failed to fetch BenefactorInfoRecord: %s", v52, 0xCu);
      sub_10000839C(v53);
    }

    *v22 = v25;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v61(v22);

    sub_100008D3C(v22, &unk_1003E1DD0, &qword_1003444D0);
  }

  else
  {
    sub_1001D1EA8(v24, v15, type metadata accessor for BenefactorInfoRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100008D04(v40, qword_1003FAAA0);
    sub_1001D1F10(v15, v13, type metadata accessor for BenefactorInfoRecord);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v63[0] = v44;
      *v43 = 136315138;
      v45 = sub_1001E2E64();
      v47 = v46;
      sub_1001D1F78(v13, type metadata accessor for BenefactorInfoRecord);
      v48 = sub_10021145C(v45, v47, v63);

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v41, v42, "Found an existing BenefactorInfoRecord - %s", v43, 0xCu);
      sub_10000839C(v44);
    }

    else
    {

      sub_1001D1F78(v13, type metadata accessor for BenefactorInfoRecord);
    }

    sub_1001D1F10(v15, v22, type metadata accessor for BenefactorInfoRecord);
    swift_storeEnumTagMultiPayload();
    v61(v22);
    sub_100008D3C(v22, &unk_1003E1DD0, &qword_1003444D0);
    sub_1001D1F78(v15, type metadata accessor for BenefactorInfoRecord);
  }
}

uint64_t sub_1001D0328(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), void (*a5)(uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a6;
  v41 = a7;
  v42 = a1;
  v12 = type metadata accessor for InheritanceInvitationMessage(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  __chkstk_darwin(v15);
  v17 = (&v38 - v16);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    type metadata accessor for InheritanceError(0);
    v43 = 14;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001CE044(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v17 = v44;
    swift_storeEnumTagMultiPayload();
    a4(v17);
    return sub_100008D3C(v17, &unk_1003E1DD0, &qword_1003444D0);
  }

  v19 = Strong;
  v38 = v15;
  v39 = a5;
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAAA0);
    v21 = v42;
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    sub_1000A6B60(v21, 1);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v43 = v21;
      v44 = v25;
      *v24 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v26 = String.init<A>(describing:)();
      v28 = sub_10021145C(v26, v27, &v44);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to fetch checkManateeStorageAvailability: %s", v24, 0xCu);
      sub_10000839C(v25);
    }

    *v17 = v21;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a4(v17);

    return sub_100008D3C(v17, &unk_1003E1DD0, &qword_1003444D0);
  }

  sub_1001D1F10(a8, &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InheritanceInvitationMessage);
  v30 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v31 = (v30 + v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = v19;
  sub_1001D1EA8(&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v30, type metadata accessor for InheritanceInvitationMessage);
  v33 = v32 + ((v30 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v35 = v40;
  v34 = v41;
  *v33 = v40;
  *(v33 + 8) = v34;
  *(v33 + 16) = v42 & 1;
  v36 = (v32 + v31);
  v37 = v39;
  *v36 = a4;
  v36[1] = v37;

  sub_1001D0C74(v35, v34, sub_1001D22A0, v32);
}

uint64_t sub_1001D0790(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v61 = a2;
  v62 = a8;
  v60 = a7;
  v53 = a3;
  v54 = a4;
  v11 = type metadata accessor for BenefactorInfoRecord(0);
  v57 = *(v11 - 1);
  v12 = __chkstk_darwin(v11);
  v59 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v56 = &v51[-v15];
  v16 = __chkstk_darwin(v14);
  v55 = &v51[-v17];
  v58 = v18;
  __chkstk_darwin(v16);
  v20 = &v51[-v19];
  v52 = a1;
  if (a6 & a1)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  v22 = *(type metadata accessor for InheritanceInvitationMessage(0) + 20);
  v23 = v11[7];
  v24 = type metadata accessor for UUID();
  v25 = *(*(v24 - 8) + 16);
  v25(&v20[v23], v53 + v22, v24);
  v25(v20, &v20[v23], v24);
  v26 = &v20[v11[5]];
  *v26 = v54;
  v26[1] = a5;
  *&v20[v11[6]] = v21;
  *&v20[v11[8]] = xmmword_10033F8D0;
  v27 = v11[9];
  LODWORD(v54) = a6;
  v20[v27] = a6;
  v28 = qword_1003D7F40;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100008D04(v29, qword_1003FAAA0);
  v30 = v55;
  sub_1001D1F10(v20, v55, type metadata accessor for BenefactorInfoRecord);
  v31 = v56;
  sub_1001D1F10(v20, v56, type metadata accessor for BenefactorInfoRecord);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v63 = v35;
    *v34 = 136315906;
    v36 = sub_1001E2E64();
    v37 = v30;
    v39 = v38;
    sub_1001D1F78(v37, type metadata accessor for BenefactorInfoRecord);
    v40 = sub_10021145C(v36, v39, &v63);
    v41 = v31;
    v42 = v40;

    *(v34 + 4) = v42;
    *(v34 + 12) = 1024;
    *(v34 + 14) = v54 & 1;
    *(v34 + 18) = 1024;
    *(v34 + 20) = v52 & 1;
    *(v34 + 24) = 2048;
    v43 = *(v41 + v11[6]);
    sub_1001D1F78(v41, type metadata accessor for BenefactorInfoRecord);
    *(v34 + 26) = v43;
    _os_log_impl(&_mh_execute_header, v32, v33, "Saving BenefactorInfoRecord %s in manatee? %{BOOL}d autoAccept? %{BOOL}d with status %ld", v34, 0x22u);
    sub_10000839C(v35);
  }

  else
  {
    sub_1001D1F78(v31, type metadata accessor for BenefactorInfoRecord);

    sub_1001D1F78(v30, type metadata accessor for BenefactorInfoRecord);
  }

  v44 = v61;
  sub_1000080F8((v61 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_storageController), *(v61 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_storageController + 24));
  v45 = v59;
  sub_1001D1F10(v20, v59, type metadata accessor for BenefactorInfoRecord);
  v46 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v47 = (v58 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v49 = v62;
  *(v48 + 16) = v60;
  *(v48 + 24) = v49;
  sub_1001D1EA8(v45, v48 + v46, type metadata accessor for BenefactorInfoRecord);
  *(v48 + v47) = v44;

  sub_10021BA80(v20, sub_1001D2500, v48);

  return sub_1001D1F78(v20, type metadata accessor for BenefactorInfoRecord);
}

uint64_t sub_1001D0C74(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if ([objc_opt_self() isLCInviteAcceptanceEnabled])
  {
    v41 = a3;
    v40 = v4;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAAA0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "LCInvite: Feature flag is enabled.", v12, 2u);
    }

    type metadata accessor for ContactsHelper(0);
    v13 = swift_allocObject();
    sub_100005814(&unk_1003D9820, &unk_10033EFD0);
    Dependency.init(dependencyId:config:)();
    v14 = sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
    Dependency.wrappedValue.getter();
    v15 = String._bridgeToObjectiveC()();
    v16 = [v42[0] contactForHandle:v15];

    swift_unknownObjectRelease();
    if (v16)
    {
      v17 = objc_allocWithZone(AALocalContactInfo);
      v18 = v16;
      v19 = String._bridgeToObjectiveC()();
      v20 = [v17 initWithHandle:v19 contact:v18];

      swift_setDeallocating();
      (*(*(v14 - 8) + 8))(v13 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v14);
      swift_deallocClassInstance();
      if (v20)
      {

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v42[0] = v24;
          *v23 = 136315138;
          *(v23 + 4) = sub_10021145C(a1, a2, v42);
          v25 = "Handle:%s found in Contacts. Auto Accepting.";
LABEL_19:
          _os_log_impl(&_mh_execute_header, v21, v22, v25, v23, 0xCu);
          sub_10000839C(v24);

          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }

    else
    {
      swift_setDeallocating();
      (*(*(v14 - 8) + 8))(v13 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v14);
      swift_deallocClassInstance();
    }

    v31 = sub_1002B64E0(a1, a2);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    v32 = os_log_type_enabled(v21, v22);
    if (v31)
    {
      if (v32)
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v42[0] = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_10021145C(a1, a2, v42);
        v25 = "Handle:%s is a Known Sender to IDS. Auto Accepting.";
        goto LABEL_19;
      }

LABEL_20:

      return v41(1);
    }

    if (v32)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v42[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_10021145C(a1, a2, v42);
      _os_log_impl(&_mh_execute_header, v21, v22, "Checking if handle:%s is a family member.", v33, 0xCu);
      sub_10000839C(v34);
    }

    v35 = swift_allocObject();
    *(v35 + 16) = v41;
    *(v35 + 24) = a4;
    sub_100040738(v40 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_familyManager, v42);
    v36 = v43;
    v37 = v44;
    sub_1000080F8(v42, v43);
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1001D2390;
    *(v38 + 24) = v35;
    v39 = *(v37 + 8);

    v39(a1, a2, sub_1001D23B8, v38, v36, v37);

    return sub_10000839C(v42);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAA0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "LCInvite: Feature flag not enabled. Auto accepting.", v29, 2u);
    }

    return a3(1);
  }
}

uint64_t sub_1001D1340(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA88);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (!os_log_type_enabled(v6, v7))
    {
      LOBYTE(a1) = 0;
      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = _convertErrorToNSError(_:)();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to fetch family circle: %@", v8, 0xCu);
    sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);

    LOBYTE(a1) = 0;
    goto LABEL_10;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAA88);
  v6 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v6, v12, "Family circle fetch successful.", v13, 2u);
LABEL_10:
  }

LABEL_12:

  return a3(a1 & 1);
}

uint64_t sub_1001D1550(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v55 = a4;
  v8 = sub_100005814(&unk_1003E1DE0, &qword_1003444D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for BenefactorInfoRecord(0);
  v53 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  v17 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v18 = __chkstk_darwin(v17);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v22 = (&v46 - v21);
  sub_1001CDFD4(a1, &v46 - v21);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001D1EA8(v22, v16, type metadata accessor for BenefactorInfoRecord);
    sub_1001D1F10(v16, v20, type metadata accessor for BenefactorInfoRecord);
    swift_storeEnumTagMultiPayload();
    a2(v20);
    sub_100008D3C(v20, &unk_1003E1DD0, &qword_1003444D0);
    return sub_1001D1F78(v16, type metadata accessor for BenefactorInfoRecord);
  }

  v23 = *v22;
  swift_getErrorValue();
  if ((sub_1002DED90(v57[7]) & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_getErrorValue();
  v24 = sub_1002DE99C(v57[3]);
  if (!v24)
  {
    goto LABEL_18;
  }

  v25 = v24;
  if (!sub_1002DECC8(v24))
  {

LABEL_18:
    *v20 = v23;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v20);

    return sub_100008D3C(v20, &unk_1003E1DD0, &qword_1003444D0);
  }

  v52 = v25;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_100008D04(v26, qword_1003FAAA0);
  swift_errorRetain();
  v51 = v27;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  LODWORD(v50) = v29;
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v49 = v30;
    v48 = swift_slowAlloc();
    v56 = v23;
    v57[0] = v48;
    *v30 = 136315138;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v31 = String.init<A>(describing:)();
    v47 = v28;
    v33 = sub_10021145C(v31, v32, v57);

    v34 = v49;
    *(v49 + 4) = v33;
    v28 = v47;
    _os_log_impl(&_mh_execute_header, v47, v50, "Conflict while saving BenefactorInfoRecord : %s", v34, 0xCu);
    sub_10000839C(v48);
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  v37 = os_log_type_enabled(v35, v36);
  v50 = a2;
  if (v37)
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Trying to grab Server Record from returned Error", v38, 2u);
    a2 = v50;
  }

  v39 = v52;
  v40 = sub_1002DEE74(v52);
  if (v40)
  {
    v41 = *(v55 + *(v11 + 36));
    v49 = v40;
    sub_1001E17B0(v49, v41, v10);
    (*(v53 + 56))(v10, 0, 1, v11);
    sub_1001D1EA8(v10, v14, type metadata accessor for BenefactorInfoRecord);
    sub_1001D1F10(v14, v20, type metadata accessor for BenefactorInfoRecord);
    swift_storeEnumTagMultiPayload();
    v50(v20);

    sub_100008D3C(v20, &unk_1003E1DD0, &qword_1003444D0);
    return sub_1001D1F78(v14, type metadata accessor for BenefactorInfoRecord);
  }

  else
  {
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Trying to fetch BenefactorInfoRecord from Server", v44, 2u);
      a2 = v50;
    }

    sub_1000080F8((v54 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_storageController), *(v54 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_storageController + 24));
    sub_100219E78(v55, a2, a3);
  }
}

uint64_t sub_1001D1C30()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001D1C68()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1001D1CC8()
{
  v1 = (type metadata accessor for InheritanceInvitationMessage(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return _swift_deallocObject(v0, v3 + 16);
}

void sub_1001D1DF4(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceInvitationMessage(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + v5);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);

  sub_1001CFAE8(a1, v7, v1 + v4, v9, v10, v11, v12);
}

uint64_t sub_1001D1EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D1F10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D1F78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001D1FD8()
{
  v1 = (type metadata accessor for InheritanceInvitationMessage(0) - 8);
  v2 = (*(*v1 + 80) + 56) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001D20E8(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for InheritanceInvitationMessage(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_1001D0328(a1, a2 & 1, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1001D2174()
{
  v1 = (type metadata accessor for InheritanceInvitationMessage(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (v2 + *(*v1 + 64) + 31) & 0xFFFFFFFFFFFFFFF8;

  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1001D22A0(int a1)
{
  v3 = *(type metadata accessor for InheritanceInvitationMessage(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + 16);
  v7 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = (v1 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_1001D0790(a1, v6, v1 + v4, v8, v9, v10, v12, v13);
}

uint64_t sub_1001D2358()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001D23C4()
{
  v1 = (type metadata accessor for BenefactorInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);

  v6(v4 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_1001D2500(uint64_t a1)
{
  v3 = *(type metadata accessor for BenefactorInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_1001D1550(a1, v6, v7, v1 + v4, v5);
}

uint64_t sub_1001D25A0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1001D25DC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v71 = a7;
  v72 = a8;
  v70 = a6;
  v73 = a4;
  v74 = a3;
  v11 = type metadata accessor for InheritanceInvitationResponseMessage(0);
  v69 = *(v11 - 8);
  v12 = *(v69 + 64);
  __chkstk_darwin(v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for InheritanceInvitationRecord(0);
  __chkstk_darwin(v14);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  __chkstk_darwin(v17);
  v19 = (&v67 - v18);
  sub_1001D31F8(a1, &v67 - v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001D32D0(v19, v16, type metadata accessor for InheritanceInvitationRecord);
    if (*(a2 + *(v11 + 24)) == 1)
    {
      if (*&v16[*(v14 + 32)] == 1)
      {
        if (qword_1003D7F40 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_100008D04(v29, qword_1003FAAA0);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v30, v31, "The invitation was accepted.", v32, 2u);
        }

        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          sub_100040738(Strong + 56, v75);

          v34 = v77;
          v68 = v76;
          v67 = sub_1000080F8(v75, v76);
          sub_1001D3268(a2, &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
          v35 = (*(v69 + 80) + 32) & ~*(v69 + 80);
          v36 = (v12 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
          v37 = swift_allocObject();
          v38 = v70;
          *(v37 + 16) = a5;
          *(v37 + 24) = v38;
          sub_1001D32D0(v13, v37 + v35, type metadata accessor for InheritanceInvitationResponseMessage);
          v39 = (v37 + v36);
          v40 = v72;
          *v39 = v71;
          v39[1] = v40;
          v41 = (v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8));
          v42 = v73;
          v43 = v74;
          *v41 = v74;
          v41[1] = v42;
          v44 = *(v34 + 8);

          sub_100083AA0(v43, v42);
          v45 = sub_1001D34D8;
          v46 = a2;
LABEL_23:
          v44(v46, v16, v45, v37, v68, v34);

          sub_1001D3360(v16);
          return sub_10000839C(v75);
        }
      }

      else
      {
        if (qword_1003D7F40 != -1)
        {
          swift_once();
        }

        v61 = type metadata accessor for Logger();
        sub_100008D04(v61, qword_1003FAAA0);
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.info.getter();
        v64 = os_log_type_enabled(v62, v63);
        v65 = v74;
        if (v64)
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&_mh_execute_header, v62, v63, "LCInvite: The invitation was not pending. Must have been accepted or declined already. Returning without accepting.", v66, 2u);
        }

        if (v65)
        {
          v65(0);
        }
      }
    }

    else
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_100008D04(v47, qword_1003FAAA0);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "The invitation was declined.", v50, 2u);
      }

      swift_beginAccess();
      v51 = swift_weakLoadStrong();
      if (v51)
      {
        sub_100040738(v51 + 96, v75);

        v34 = v77;
        v68 = v76;
        v67 = sub_1000080F8(v75, v76);
        sub_1001D3268(a2, &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
        v52 = (*(v69 + 80) + 32) & ~*(v69 + 80);
        v53 = (v12 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
        v37 = swift_allocObject();
        v54 = v70;
        *(v37 + 16) = a5;
        *(v37 + 24) = v54;
        sub_1001D32D0(v13, v37 + v52, type metadata accessor for InheritanceInvitationResponseMessage);
        v55 = (v37 + v53);
        v56 = a2;
        v57 = v72;
        *v55 = v71;
        v55[1] = v57;
        v58 = (v37 + ((v53 + 23) & 0xFFFFFFFFFFFFFFF8));
        v59 = v73;
        v60 = v74;
        *v58 = v74;
        v58[1] = v59;
        v44 = *(v34 + 8);

        sub_100083AA0(v60, v59);
        v45 = sub_1001D3338;
        v46 = v56;
        goto LABEL_23;
      }
    }

    return sub_1001D3360(v16);
  }

  v20 = *v19;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100008D04(v21, qword_1003FAAA0);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    v26 = _convertErrorToNSError(_:)();
    *(v24 + 4) = v26;
    *v25 = v26;
    _os_log_impl(&_mh_execute_header, v22, v23, "Error processing invitation %@", v24, 0xCu);
    sub_100083380(v25);
  }

  v27 = v74;
  if (v74)
  {
    swift_errorRetain();
    v27(v20);
  }
}

uint64_t sub_1001D2D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8, const char *a9, uint64_t a10, uint64_t a11)
{
  v57 = a5;
  v58 = a6;
  v59 = a4;
  v15 = type metadata accessor for InheritanceInvitationResponseMessage(0);
  v16 = *(v15 - 8);
  v54 = v15;
  v55 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v56 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAAA0);
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v53 = v17;
    v21 = a3;
    v22 = a7;
    v23 = a8;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = v26;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    *(v24 + 4) = v26;
    *v25 = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, a9, v24, 0xCu);
    sub_100083380(v25);

    a8 = v23;
    a7 = v22;
    a3 = v21;
    v17 = v53;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    if (a1)
    {
      swift_getErrorValue();
      v29 = v61;
      swift_errorRetain();
      if ((sub_1002DED90(v29) & 1) != 0 && (swift_getErrorValue(), (v30 = sub_1002DE99C(v60)) != 0))
      {
        v31 = v30;
        v32 = sub_1002DECC8(v30);

        if (v32 && a3 <= 1)
        {
          swift_beginAccess();
          result = swift_weakLoadStrong();
          if (result)
          {
            v53 = a11;
            v51 = a3 + 1;
            v54 = *(v54 + 20);
            v33 = *(result + 40);
            v52 = result;
            v50[1] = sub_1000080F8((result + 16), v33);
            v34 = swift_allocObject();
            swift_weakInit();
            v35 = v56;
            sub_1001D3268(v59, v56);
            v36 = a8;
            v37 = (*(v55 + 80) + 16) & ~*(v55 + 80);
            v38 = (v17 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
            v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
            v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
            v41 = swift_allocObject();
            sub_1001D32D0(v35, v41 + v37, type metadata accessor for InheritanceInvitationResponseMessage);
            v42 = (v41 + v38);
            *v42 = a7;
            v42[1] = v36;
            *(v41 + v39) = v34;
            *(v41 + v40) = v51;
            v43 = (v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8));
            v44 = v58;
            *v43 = v57;
            v43[1] = v44;
            sub_100083AA0(a7, v36);

            sub_100214780(v59 + v54, v53, v41, v45, v46, v47, v48, v49, v50[0]);
          }

          return result;
        }
      }

      else
      {
      }
    }
  }

  if (a7)
  {
    return a7(a1);
  }

  return result;
}

uint64_t sub_1001D31F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D3268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InheritanceInvitationResponseMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D32D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D3360(uint64_t a1)
{
  v2 = type metadata accessor for InheritanceInvitationRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001D33BC()
{
  v1 = (type metadata accessor for InheritanceInvitationResponseMessage(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v1[7];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4 + v2, v5);

  if (*(v0 + v3))
  {
  }

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1001D3500(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, ...)
{
  v9 = *(type metadata accessor for InheritanceInvitationResponseMessage(0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1001D2D84(a1, *(v4 + 16), *(v4 + 24), v4 + v10, *(v4 + v11), *(v4 + v11 + 8), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), a2, a3, a4);
}

uint64_t sub_1001D35D4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001D3614()
{
  v1 = type metadata accessor for InheritanceInvitationResponseMessage(0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + *(v1 + 20);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5 + v3, v6);
  if (*(v0 + v4))
  {
  }

  return _swift_deallocObject(v0, ((((((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1001D373C(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceInvitationResponseMessage(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1 + v5;
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *v8;
  v12 = *(v8 + 8);
  v13 = (v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  return sub_1001D25DC(a1, v1 + v4, v11, v12, v9, v10, v14, v15);
}

uint64_t sub_1001D3810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for InheritanceInvitationRecord(0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a3;
  v13[4] = a4;
  sub_1001D72C4(a2, v11, type metadata accessor for InheritanceInvitationRecord);
  *&v11[*(v9 + 40)] = 2;
  sub_1000080F8((v4 + 16), *(v4 + 40));

  sub_100215214(v11, sub_1001D4F00, v13);

  sub_1001D71FC(v11, type metadata accessor for InheritanceInvitationRecord);
}

uint64_t sub_1001D396C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v36 = a3;
  v37 = a4;
  v5 = type metadata accessor for InheritanceInvitationRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5 - 8);
  v9 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  v12 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  __chkstk_darwin(v12);
  v14 = (&v36 - v13);
  sub_100012D04(a1, &v36 - v13, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAA0);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = _convertErrorToNSError(_:)();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error updating Inheritance invitation %@", v19, 0xCu);
      sub_100008D3C(v20, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    v36(v15);
  }

  else
  {
    sub_1001D725C(v14, v11, type metadata accessor for InheritanceInvitationRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAAA0);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Inheritance invitation updated!", v26, 2u);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      v29 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      sub_1001D72C4(v11, v9, type metadata accessor for InheritanceInvitationRecord);
      v30 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v31 = (v7 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
      v33 = swift_allocObject();
      sub_1001D725C(v9, v33 + v30, type metadata accessor for InheritanceInvitationRecord);
      v34 = (v33 + v31);
      v35 = v37;
      *v34 = v36;
      v34[1] = v35;
      *(v33 + v32) = v29;
      sub_1000080F8((v28 + 16), *(v28 + 40));

      sub_100217018(v11, sub_1001D6B80, v33);

      sub_1001D71FC(v11, type metadata accessor for InheritanceInvitationRecord);
    }

    else
    {
      return sub_1001D71FC(v11, type metadata accessor for InheritanceInvitationRecord);
    }
  }
}

uint64_t sub_1001D3E68(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v73 = a5;
  v74 = a3;
  v75 = a4;
  v72 = type metadata accessor for BeneficiaryInfoRecord(0);
  v70 = *(v72 - 8);
  v7 = *(v70 + 64);
  v8 = __chkstk_darwin(v72);
  v71 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v69 = &v68 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v68 - v12;
  __chkstk_darwin(v11);
  v15 = &v68 - v14;
  v16 = type metadata accessor for InheritanceInvitationRecord(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  __chkstk_darwin(v19);
  v21 = (&v68 - v20);
  sub_100012D04(a1, &v68 - v20, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001D725C(v21, v15, type metadata accessor for BeneficiaryInfoRecord);
    v32 = v15;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAAA0);
    sub_1001D72C4(v15, v13, type metadata accessor for BeneficiaryInfoRecord);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v73;
    if (v36)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v68 = v32;
      v40 = v39;
      v76[0] = v39;
      *v38 = 136315138;
      v41 = sub_1001E6794();
      v43 = v42;
      sub_1001D71FC(v13, type metadata accessor for BeneficiaryInfoRecord);
      v44 = sub_10021145C(v41, v43, v76);

      *(v38 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v34, v35, "Successfully fetched Beneficiary - %s", v38, 0xCu);
      sub_10000839C(v40);
      v32 = v68;
    }

    else
    {

      sub_1001D71FC(v13, type metadata accessor for BeneficiaryInfoRecord);
    }

    v46 = (v32 + *(v72 + 20));
    v47 = v46[1];
    if (v47)
    {
      v48 = *v46;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v72 = type metadata accessor for BeneficiaryInfoRecord;
        v49 = v71;
        sub_1001D72C4(v32, v71, type metadata accessor for BeneficiaryInfoRecord);
        v50 = (*(v70 + 80) + 40) & ~*(v70 + 80);
        v51 = v32;
        v52 = (v7 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
        v53 = swift_allocObject();
        v54 = v75;
        v53[2] = v74;
        v53[3] = v54;
        v53[4] = v37;
        sub_1001D725C(v49, v53 + v50, type metadata accessor for BeneficiaryInfoRecord);
        v55 = (v53 + v52);
        *v55 = v48;
        v55[1] = v47;

        sub_1001D4BAC(v51, v48, v47, sub_1001D6E1C, v53);

        v56 = v51;
        v57 = v72;
        return sub_1001D71FC(v56, v57);
      }
    }

    else
    {
      v58 = v69;
      sub_1001D72C4(v32, v69, type metadata accessor for BeneficiaryInfoRecord);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v76[0] = v62;
        *v61 = 136315138;
        v63 = sub_1001E6794();
        v65 = v64;
        sub_1001D71FC(v58, type metadata accessor for BeneficiaryInfoRecord);
        v66 = sub_10021145C(v63, v65, v76);

        *(v61 + 4) = v66;
        _os_log_impl(&_mh_execute_header, v59, v60, "Cannot proceed. Beneficiary handle is nil - %s", v61, 0xCu);
        sub_10000839C(v62);
      }

      else
      {

        sub_1001D71FC(v58, type metadata accessor for BeneficiaryInfoRecord);
      }

      type metadata accessor for InheritanceError(0);
      v76[3] = 2;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001A19EC(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v67 = v76[0];
      v74(v76[0]);
    }

    v57 = type metadata accessor for BeneficiaryInfoRecord;
    v56 = v32;
    return sub_1001D71FC(v56, v57);
  }

  v22 = *v21;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100008D04(v23, qword_1003FAAA0);
  sub_1001D72C4(a2, v18, type metadata accessor for InheritanceInvitationRecord);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v76[0] = v27;
    *v26 = 136315138;
    type metadata accessor for UUID();
    sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    sub_1001D71FC(v18, type metadata accessor for InheritanceInvitationRecord);
    v31 = sub_10021145C(v28, v30, v76);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "Failed to fetch Beneficiary Record with beneficiaryID - %s", v26, 0xCu);
    sub_10000839C(v27);
  }

  else
  {

    sub_1001D71FC(v18, type metadata accessor for InheritanceInvitationRecord);
  }

  swift_errorRetain();
  v74(v22);
}

uint64_t sub_1001D4710(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAAA0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to share Beneficiary Record.", v13, 2u);
    }

    swift_errorRetain();
    a2(a1);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAA0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Successfully shared BeneficiaryRecord. Creating Health Record...", v21, 2u);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = a2;
      *(v22 + 24) = a3;
      v23 = swift_allocObject();
      swift_weakInit();
      v24 = swift_allocObject();
      v24[2] = sub_1001D718C;
      v24[3] = v22;
      v24[4] = v23;
      v24[5] = a6;
      v24[6] = a7;

      sub_1001D5B40(a5, sub_1001D71E4, v24);
    }
  }

  return result;
}

uint64_t sub_1001D4A2C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAAA0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      v10 = v9;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *(v7 + 4) = v9;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Finished sharing health record. Error: %@", v7, 0xCu);
    sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);
  }

  return a2(a1);
}

uint64_t sub_1001D4BAC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v25 = a5;
  v26 = a2;
  v10 = type metadata accessor for BeneficiaryInfoRecord(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008D04(v13, qword_1003FAAA0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Sharing Cloud Record...", v16, 2u);
  }

  sub_1000080F8((v6 + 96), *(v6 + 120));
  v17 = swift_allocObject();
  swift_weakInit();
  sub_1001D72C4(a1, &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeneficiaryInfoRecord);
  v18 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v19 = swift_allocObject();
  v20 = a1;
  v21 = v26;
  v19[2] = v17;
  v19[3] = v21;
  v19[4] = a3;
  sub_1001D725C(&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for BeneficiaryInfoRecord);
  v22 = (v19 + ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v25;
  *v22 = a4;
  v22[1] = v23;

  sub_100083AA0(a4, v23);
  sub_1001F58C8(v20, v21, a3, sub_1001D70AC, v19);
}

uint64_t sub_1001D4E88()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001D4EC0()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1001D4F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v75 = a7;
  v76 = a6;
  v74 = a5;
  v70 = a3;
  v71 = a4;
  v72 = a2;
  v8 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v8 - 8);
  v10 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for InheritanceAccessKeyMessage(0);
  v12 = __chkstk_darwin(v11);
  v73 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v69 - v14;
  v16 = type metadata accessor for CloudShareInfo(0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v69 - v20;
  v22 = sub_100005814(&unk_1003E1070, &unk_100344CE0);
  __chkstk_darwin(v22);
  v24 = (v69 - v23);
  sub_100012D04(a1, v69 - v23, &unk_1003E1070, &unk_100344CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAA0);
    sub_1001D72C4(v74, v10, type metadata accessor for BeneficiaryInfoRecord);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v78[0] = v30;
      *v29 = 136315138;
      type metadata accessor for UUID();
      sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      sub_1001D71FC(v10, type metadata accessor for BeneficiaryInfoRecord);
      v34 = sub_10021145C(v31, v33, v78);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to share accessKey for beneficiaryID - %s", v29, 0xCu);
      sub_10000839C(v30);

      v35 = v76;
      if (!v76)
      {
      }
    }

    else
    {

      sub_1001D71FC(v10, type metadata accessor for BeneficiaryInfoRecord);
      v35 = v76;
      if (!v76)
      {
      }
    }

    swift_errorRetain();
    v35(v25);
  }

  sub_1001D725C(v24, v21, type metadata accessor for CloudShareInfo);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  v37 = sub_100008D04(v36, qword_1003FAAA0);
  sub_1001D72C4(v21, v19, type metadata accessor for CloudShareInfo);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v69[1] = v37;
    v42 = v41;
    v78[0] = v41;
    *v40 = 136315138;
    type metadata accessor for URL();
    sub_1001A19EC(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    sub_1001D71FC(v19, type metadata accessor for CloudShareInfo);
    v46 = sub_10021145C(v43, v45, v78);

    *(v40 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v38, v39, "Successfully shared record with URL - %s", v40, 0xCu);
    sub_10000839C(v42);
  }

  else
  {

    sub_1001D71FC(v19, type metadata accessor for CloudShareInfo);
  }

  v48 = v76;
  v49 = v73;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_1001D71FC(v21, type metadata accessor for CloudShareInfo);
  }

  sub_100040738(Strong + 56, v78);

  v51 = *sub_1000080F8(v78, v78[3]);
  v52 = *(v11 + 20);
  v53 = type metadata accessor for UUID();
  (*(*(v53 - 8) + 16))(&v15[v52], v74, v53);
  sub_1001D72C4(v21, &v15[*(v11 + 24)], type metadata accessor for CloudShareInfo);
  *v15 = 1;
  sub_1001D72C4(v15, v49, type metadata accessor for InheritanceAccessKeyMessage);
  v54 = v75;
  sub_100083AA0(v48, v75);
  sub_100083AA0(v48, v54);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v77 = v58;
    *v57 = 136315138;
    v59 = sub_1001D9780();
    v60 = v49;
    v62 = v61;
    sub_1001D71FC(v60, type metadata accessor for InheritanceAccessKeyMessage);
    v63 = sub_10021145C(v59, v62, &v77);

    *(v57 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v55, v56, "Created share accessKey message - %s.\nSending....", v57, 0xCu);
    sub_10000839C(v58);

    v48 = v76;
  }

  else
  {

    sub_1001D71FC(v49, type metadata accessor for InheritanceAccessKeyMessage);
  }

  v64 = sub_1000080F8((v51 + 16), *(v51 + 40));
  if (_swiftEmptyArrayStorage >> 62)
  {
    v67 = v64;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_10013446C(_swiftEmptyArrayStorage);
      v65 = v68;
    }

    else
    {
      v65 = &_swiftEmptySetSingleton;
    }

    v64 = v67;
  }

  else
  {
    v65 = &_swiftEmptySetSingleton;
  }

  v66 = *v64;
  sub_100083AA0(v48, v54);
  sub_1002B5198(v15, v70, v71, 0, 0, v65, v66, v48, v54);
  sub_100083B0C(v48, v54);

  sub_1001D71FC(v15, type metadata accessor for InheritanceAccessKeyMessage);
  sub_100083B0C(v48, v54);
  sub_100083B0C(v48, v54);
  sub_1001D71FC(v21, type metadata accessor for CloudShareInfo);
  return sub_10000839C(v78);
}

uint64_t sub_1001D5818(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v32 = a3;
  v8 = type metadata accessor for InheritanceHealthRecord(0);
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v11 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v27 - v12;
  v14 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  __chkstk_darwin(v14);
  v16 = (v27 - v15);
  sub_100012D04(a1, v27 - v15, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    if (a2)
    {
      swift_errorRetain();
      a2(v17);
    }
  }

  else
  {
    sub_1001D725C(v16, v13, type metadata accessor for InheritanceHealthRecord);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      v21 = swift_allocObject();
      v22 = v32;
      *(v21 + 16) = a2;
      *(v21 + 24) = v22;
      v27[1] = sub_1000080F8((v20 + 96), *(v20 + 120));
      v28 = type metadata accessor for InheritanceHealthRecord;
      sub_1001D72C4(v13, v11, type metadata accessor for InheritanceHealthRecord);
      v23 = (*(v29 + 80) + 48) & ~*(v29 + 80);
      v24 = swift_allocObject();
      v25 = v30;
      v26 = v31;
      v24[2] = v30;
      v24[3] = v26;
      v24[4] = sub_1001D25A0;
      v24[5] = v21;
      sub_1001D725C(v11, v24 + v23, type metadata accessor for InheritanceHealthRecord);
      sub_100083AA0(a2, v22);

      sub_1001F6770(v13, v25, v26, sub_1001D74E0, v24);

      sub_1001D71FC(v13, v28);
    }

    else
    {
      return sub_1001D71FC(v13, type metadata accessor for InheritanceHealthRecord);
    }
  }
}

uint64_t sub_1001D5B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for InheritanceHealthRecord(0);
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v33);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008D04(v13, qword_1003FAAA0);
  sub_1001D72C4(a1, v12, type metadata accessor for BeneficiaryInfoRecord);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31 = a2;
    v19 = v18;
    v34 = v18;
    *v17 = 136315138;
    type metadata accessor for UUID();
    v30 = a1;
    v20 = v3;
    sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_1001D71FC(v12, type metadata accessor for BeneficiaryInfoRecord);
    v24 = sub_10021145C(v21, v23, &v34);
    v4 = v20;
    a1 = v30;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "Creating Inheritance Health Record for beneficiaryID - %s", v17, 0xCu);
    sub_10000839C(v19);
    a2 = v31;

    a3 = v32;
  }

  else
  {

    sub_1001D71FC(v12, type metadata accessor for BeneficiaryInfoRecord);
  }

  v25 = type metadata accessor for UUID();
  (*(*(v25 - 8) + 16))(v10, a1, v25);
  Date.init(timeIntervalSince1970:)();
  UUID.init()();
  v26 = *(a1 + *(v33 + 40));
  *&v10[v8[6]] = xmmword_10033F8D0;
  *&v10[v8[8]] = xmmword_10033F8D0;
  v10[v8[9]] = v26;
  sub_1000080F8((v4 + 16), *(v4 + 40));
  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  *(v27 + 24) = a3;

  sub_10021DAF0(v10, sub_1001D71F4, v27);

  return sub_1001D71FC(v10, type metadata accessor for InheritanceHealthRecord);
}

uint64_t sub_1001D5F14(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v37 = a2;
  v5 = type metadata accessor for InheritanceHealthRecord(0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v36 - v9;
  v11 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  v12 = __chkstk_darwin(v11);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = (&v36 - v15);
  sub_100012D04(a1, &v36 - v15, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAA0);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v38 = v17;
      v39 = v22;
      *v21 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v23 = String.init<A>(describing:)();
      v25 = sub_10021145C(v23, v24, &v39);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error saving health Record: - %s", v21, 0xCu);
      sub_10000839C(v22);
    }

    *v14 = v17;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v37(v14);

    return sub_100008D3C(v14, &unk_1003E10C0, &qword_100346A70);
  }

  else
  {
    v36 = a3;
    sub_1001D725C(v16, v10, type metadata accessor for InheritanceHealthRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAA0);
    sub_1001D72C4(v10, v8, type metadata accessor for InheritanceHealthRecord);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      type metadata accessor for UUID();
      sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_1001D71FC(v8, type metadata accessor for InheritanceHealthRecord);
      v35 = sub_10021145C(v32, v34, &v39);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Successfully created health record for beneficiaryID - %s", v30, 0xCu);
      sub_10000839C(v31);
    }

    else
    {

      sub_1001D71FC(v8, type metadata accessor for InheritanceHealthRecord);
    }

    sub_1001D72C4(v10, v14, type metadata accessor for InheritanceHealthRecord);
    swift_storeEnumTagMultiPayload();
    v37(v14);
    sub_100008D3C(v14, &unk_1003E10C0, &qword_100346A70);
    return sub_1001D71FC(v10, type metadata accessor for InheritanceHealthRecord);
  }
}

uint64_t sub_1001D6450(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v40[1] = a5;
  v41 = a4;
  v40[0] = a2;
  v9 = type metadata accessor for InheritanceHealthRecord(0);
  __chkstk_darwin(v9 - 8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CloudShareInfo(0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v40 - v16;
  v18 = sub_100005814(&unk_1003E1070, &unk_100344CE0);
  __chkstk_darwin(v18);
  v20 = (v40 - v19);
  sub_100012D04(a1, v40 - v19, &unk_1003E1070, &unk_100344CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAA0);
    sub_1001D72C4(a6, v11, type metadata accessor for InheritanceHealthRecord);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v42 = v26;
      *v25 = 136315138;
      type metadata accessor for UUID();
      sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_1001D71FC(v11, type metadata accessor for InheritanceHealthRecord);
      v30 = sub_10021145C(v27, v29, &v42);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to share health record for beneficiaryID - %s", v25, 0xCu);
      sub_10000839C(v26);
    }

    else
    {

      sub_1001D71FC(v11, type metadata accessor for InheritanceHealthRecord);
    }

    swift_errorRetain();
    v41(v21);
  }

  else
  {
    sub_1001D725C(v20, v17, type metadata accessor for CloudShareInfo);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAAA0);
    sub_1001D72C4(v17, v15, type metadata accessor for CloudShareInfo);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v34 = 136315394;
      *(v34 + 4) = sub_10021145C(v40[0], a3, &v42);
      *(v34 + 12) = 2080;
      type metadata accessor for URL();
      sub_1001A19EC(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      sub_1001D71FC(v15, type metadata accessor for CloudShareInfo);
      v38 = sub_10021145C(v35, v37, &v42);

      *(v34 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Successfully shared health record with %s. URL - %s", v34, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001D71FC(v15, type metadata accessor for CloudShareInfo);
    }

    v41(0);
    return sub_1001D71FC(v17, type metadata accessor for CloudShareInfo);
  }
}

uint64_t sub_1001D6A10()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);

  v6(v4 + v1[11], v5);
  sub_100012324(*(v4 + v1[12]), *(v4 + v1[12] + 8));

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_1001D6B80(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceInvitationRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = *(v7 + 8);

  return sub_1001D3E68(a1, v1 + v4, v9, v10, v8);
}

uint64_t sub_1001D6C2C()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v9 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  return _swift_deallocObject(v0, ((v9 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1001D6E1C(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1001D4710(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_1001D6EC4()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = (*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v4, v5);

  sub_100012324(*(v4 + v1[7]), *(v4 + v1[7] + 8));
  v7(v4 + v1[8], v5);
  sub_100012324(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v8 = v1[11];
  if (!(*(v6 + 48))(v4 + v8, 1, v5))
  {
    v7(v4 + v8, v5);
  }

  if (*(v0 + v3))
  {
  }

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1001D70AC(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_1001D4F0C(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_1001D7154()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001D7194()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1001D71FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001D725C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D72C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D732C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001D736C()
{
  v1 = (type metadata accessor for InheritanceHealthRecord(0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2, v5);
  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  sub_100012324(*(v4 + v1[8]), *(v4 + v1[8] + 8));
  v6(v0 + v2 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001D74E0(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceHealthRecord(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1001D6450(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001D755C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v28 = a3;
  v29 = a4;
  v25 = a1;
  v5 = type metadata accessor for InheritanceInvitationRecord(0);
  v6 = v5 - 8;
  v26 = *(v5 - 8);
  v7 = *(v26 + 64);
  v8 = __chkstk_darwin(v5);
  v27 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v22 = &v22 - v9;
  v11 = type metadata accessor for InheritanceInvitationResponseMessage(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  swift_weakInit();
  sub_1001D7DF4(v25, v14, type metadata accessor for InheritanceInvitationResponseMessage);
  sub_1001D7DF4(a2, v10, type metadata accessor for InheritanceInvitationRecord);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = (v13 + *(v26 + 80) + v16) & ~*(v26 + 80);
  v18 = swift_allocObject();
  v19 = v29;
  *(v18 + 16) = v28;
  *(v18 + 24) = v19;
  sub_1001D803C(v14, v18 + v16, type metadata accessor for InheritanceInvitationResponseMessage);
  sub_1001D803C(v22, v18 + v17, type metadata accessor for InheritanceInvitationRecord);
  *(v18 + ((v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v20 = v27;
  sub_1001D7DF4(v23, v27, type metadata accessor for InheritanceInvitationRecord);
  *(v20 + *(v6 + 40)) = 1;
  sub_1000080F8((v24 + 16), *(v24 + 40));

  sub_100215214(v20, sub_1001D80A4, v18);

  sub_1001D8248(v20, type metadata accessor for InheritanceInvitationRecord);
}

uint64_t sub_1001D782C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for TrustedContactUserNotification(0);
  __chkstk_darwin(v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  __chkstk_darwin(v14);
  v16 = (&v41 - v15);
  sub_1001D31F8(a1, &v41 - v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAA0);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44[0] = v22;
      *v21 = 136315138;
      v43[0] = v17;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v23 = String.init<A>(describing:)();
      v25 = sub_10021145C(v23, v24, v44);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to update invitation with error : %s", v21, 0xCu);
      sub_10000839C(v22);
    }

    swift_errorRetain();
    a2(v17);
  }

  else
  {
    v42 = a2;
    sub_1001D81A8(v16);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAA0);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Not cleaning up LC access keys and CK records of beneficiary on the organizer device. Older devices would still attempt to remove the keys", v30, 2u);
    }

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Posting CFU...", v33, 2u);
    }

    v34 = &v13[*(sub_100005814(&qword_1003E2030, qword_100344D60) + 48)];
    v35 = *(type metadata accessor for InheritanceInvitationResponseMessage(0) + 20);
    v36 = type metadata accessor for UUID();
    (*(*(v36 - 8) + 16))(v13, a4 + v35, v36);
    v37 = (a5 + *(type metadata accessor for InheritanceInvitationRecord(0) + 20));
    v38 = v37[1];
    *v34 = *v37;
    *(v34 + 1) = v38;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_100040738(Strong + 96, v43);

      sub_1000080F8(v43, v43[3]);
      sub_1002CA150(v44);
      v40 = swift_allocObject();
      *(v40 + 16) = v42;
      *(v40 + 24) = a3;

      sub_1002D2E28(v44, sub_1000D8510, v40);

      sub_1000C5460(v44);
      sub_1001D8248(v13, type metadata accessor for TrustedContactUserNotification);
      return sub_10000839C(v43);
    }

    else
    {

      return sub_1001D8248(v13, type metadata accessor for TrustedContactUserNotification);
    }
  }
}

uint64_t sub_1001D7DBC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001D7DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D7E5C()
{
  v1 = (type metadata accessor for InheritanceInvitationResponseMessage(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for InheritanceInvitationRecord(0) - 8);
  v5 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = (*(*v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  v7 = v0 + v1[7];
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9(v7 + v2, v8);
  v9(v0 + v5, v8);

  v9(v0 + v5 + v4[11], v8);
  sub_100012324(*(v0 + v5 + v4[12]), *(v0 + v5 + v4[12] + 8));

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_1001D803C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D80A4(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceInvitationResponseMessage(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for InheritanceInvitationRecord(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001D782C(a1, v8, v9, v1 + v4, v1 + v7, v10);
}

uint64_t sub_1001D81A8(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001D8210()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001D8248(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001D82A8(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E20D0, &qword_100344E38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000080F8(a1, a1[3]);
  sub_1001D8D28();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = *v3;
  v10[14] = 0;
  sub_1001D8D7C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for BeneficiaryRemovedMessage(0);
    v10[13] = 1;
    type metadata accessor for UUID();
    sub_1001D8E24(&unk_1003DDA80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001D8478@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = type metadata accessor for UUID();
  v20 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100005814(&qword_1003E20E0, &qword_100344E40);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v17 - v6;
  v8 = type metadata accessor for BeneficiaryRemovedMessage(0);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000080F8(a1, a1[3]);
  sub_1001D8D28();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = v10;
    v19 = v8;
    v12 = v22;
    v13 = v23;
    v26 = 0;
    sub_1001D8DD0();
    v14 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v11;
    *v11 = v27;
    v25 = 1;
    sub_1001D8E24(&unk_1003DD720, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v12 + 8))(v7, v14);
    v15 = v18;
    (*(v20 + 32))(&v18[*(v19 + 20)], v5, v13);
    sub_1001D8E6C(v15, v21);
  }

  return sub_10000839C(a1);
}

uint64_t sub_1001D8780()
{
  if (*v0)
  {
    return 0x69636966656E6562;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1001D87C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69636966656E6562 && a2 == 0xED00004449797261)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001D88A4(uint64_t a1)
{
  v2 = sub_1001D8D28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D88E0(uint64_t a1)
{
  v2 = sub_1001D8D28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D894C()
{
  _StringGuts.grow(_:)(23);
  type metadata accessor for BeneficiaryRemovedMessage(0);
  sub_100005814(&qword_1003E2038, qword_100344D98);
  v0 = String.init<A>(describing:)();

  v1._object = 0x8000000100330AB0;
  v1._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v1);
  type metadata accessor for UUID();
  sub_1001D8E24(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return v0;
}

uint64_t type metadata accessor for BeneficiaryRemovedMessage(uint64_t a1)
{
  result = qword_1003E2098;
  if (!qword_1003E2098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001D8AD0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1001D8B88(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D8C28(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001D8CA4(uint64_t a1)
{
  *(a1 + 8) = sub_1001D8E24(&qword_1003E2450, type metadata accessor for BeneficiaryRemovedMessage, &unk_100344DE8);
  result = sub_1001D8E24(&qword_1003E6960, type metadata accessor for BeneficiaryRemovedMessage, &unk_100344E10);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001D8D28()
{
  result = qword_1003E20D8;
  if (!qword_1003E20D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E20D8);
  }

  return result;
}

unint64_t sub_1001D8D7C()
{
  result = qword_1003E24C0;
  if (!qword_1003E24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E24C0);
  }

  return result;
}

unint64_t sub_1001D8DD0()
{
  result = qword_1003E24B0;
  if (!qword_1003E24B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E24B0);
  }

  return result;
}

uint64_t sub_1001D8E24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001D8E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeneficiaryRemovedMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001D8EE4()
{
  result = qword_1003E20E8;
  if (!qword_1003E20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E20E8);
  }

  return result;
}

unint64_t sub_1001D8F3C()
{
  result = qword_1003E20F0;
  if (!qword_1003E20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E20F0);
  }

  return result;
}

unint64_t sub_1001D8F94()
{
  result = qword_1003E20F8;
  if (!qword_1003E20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E20F8);
  }

  return result;
}

uint64_t sub_1001D8FE8(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E21B0, &qword_100345028);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000080F8(a1, a1[3]);
  sub_1001D9C6C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = *v3;
  v10[14] = 0;
  sub_1001D8D7C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for InheritanceAccessKeyMessage(0);
    v10[13] = 1;
    type metadata accessor for UUID();
    sub_1001D9CC0(&unk_1003DDA80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[12] = 2;
    type metadata accessor for CloudShareInfo(0);
    sub_1001D9CC0(&qword_1003E21C0, type metadata accessor for CloudShareInfo, &unk_1003477E0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001D9230@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = type metadata accessor for CloudShareInfo(0);
  __chkstk_darwin(v23);
  v26 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100005814(&qword_1003E21C8, &qword_100345030);
  v24 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = &v20 - v7;
  v9 = type metadata accessor for InheritanceAccessKeyMessage(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000080F8(a1, a1[3]);
  sub_1001D9C6C();
  v27 = v8;
  v12 = v29;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return sub_10000839C(a1);
  }

  v13 = v11;
  v29 = a1;
  v15 = v24;
  v14 = v25;
  v16 = v26;
  v32 = 0;
  sub_1001D8DD0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v13;
  *v13 = v33;
  v31 = 1;
  sub_1001D9CC0(&unk_1003DD720, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v14 + 32);
  v18 = v21;
  v20 = *(v9 + 20);
  v17(&v21[v20], v6, v4);
  v30 = 2;
  sub_1001D9CC0(&qword_1003E21D0, type metadata accessor for CloudShareInfo, &unk_100347808);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 8))(v27, v28);
  sub_1001D9D08(v16, v18 + *(v9 + 24));
  sub_1001D9D6C(v18, v22);
  sub_10000839C(v29);
  return sub_1001D9DD0(v18);
}

uint64_t sub_1001D964C()
{
  v1 = 0x69636966656E6562;
  if (*v0 != 1)
  {
    v1 = 0x666E496572616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1001D96B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001D9F44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001D96D8(uint64_t a1)
{
  v2 = sub_1001D9C6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D9714(uint64_t a1)
{
  v2 = sub_1001D9C6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D9780()
{
  _StringGuts.grow(_:)(23);
  type metadata accessor for InheritanceAccessKeyMessage(0);
  sub_100005814(&qword_1003E2100, qword_100344F88);
  v0 = String.init<A>(describing:)();

  v1._object = 0x8000000100330AB0;
  v1._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v1);
  type metadata accessor for UUID();
  sub_1001D9CC0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return v0;
}

uint64_t type metadata accessor for InheritanceAccessKeyMessage(uint64_t a1)
{
  result = qword_1003E2160;
  if (!qword_1003E2160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001D9904(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 20)];

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for CloudShareInfo(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = &a1[*(a3 + 24)];

      return v14(v15, a2, v13);
    }
  }
}

_BYTE *sub_1001D9A34(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for CloudShareInfo(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1001D9B54(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CloudShareInfo(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001D9BE8(uint64_t a1)
{
  *(a1 + 8) = sub_1001D9CC0(&qword_1003E21A0, type metadata accessor for InheritanceAccessKeyMessage, &unk_100344FD8);
  result = sub_1001D9CC0(&qword_1003E21A8, type metadata accessor for InheritanceAccessKeyMessage, &unk_100345000);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001D9C6C()
{
  result = qword_1003E21B8;
  if (!qword_1003E21B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E21B8);
  }

  return result;
}

uint64_t sub_1001D9CC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001D9D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudShareInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D9D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InheritanceAccessKeyMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D9DD0(uint64_t a1)
{
  v2 = type metadata accessor for InheritanceAccessKeyMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001D9E40()
{
  result = qword_1003E21D8;
  if (!qword_1003E21D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E21D8);
  }

  return result;
}

unint64_t sub_1001D9E98()
{
  result = qword_1003E21E0;
  if (!qword_1003E21E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E21E0);
  }

  return result;
}

unint64_t sub_1001D9EF0()
{
  result = qword_1003E21E8;
  if (!qword_1003E21E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E21E8);
  }

  return result;
}

uint64_t sub_1001D9F44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69636966656E6562 && a2 == 0xED00004449797261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E496572616873 && a2 == 0xE90000000000006FLL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1001DA06C(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E2290, &qword_100345220);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000080F8(a1, a1[3]);
  sub_1001DABC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = *v3;
  v10[14] = 0;
  sub_1001D8D7C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for InheritanceInvitationMessage(0);
    v10[13] = 1;
    type metadata accessor for UUID();
    sub_1001DAC18(&unk_1003DDA80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[12] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001DA270@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v29 = type metadata accessor for UUID();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100005814(&qword_1003E22A0, &qword_100345228);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v23 - v6;
  v8 = type metadata accessor for InheritanceInvitationMessage(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000080F8(a1, a1[3]);
  sub_1001DABC4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000839C(a1);
  }

  v25 = a1;
  v11 = v10;
  v12 = v28;
  v13 = v29;
  v33 = 0;
  sub_1001D8DD0();
  v14 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v11;
  *v11 = v34;
  v32 = 1;
  sub_1001DAC18(&unk_1003DD720, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = *(v27 + 32);
  v23 = *(v8 + 20);
  v15(&v24[v23], v5, v13);
  v31 = 2;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  (*(v12 + 8))(v7, v14);
  v19 = *(v8 + 24);
  v20 = v24;
  v21 = &v24[v19];
  *v21 = v16;
  v21[1] = v18;
  sub_1001DAC60(v20, v26);
  sub_10000839C(v25);
  return sub_1001DACC4(v20);
}

unint64_t sub_1001DA634()
{
  v1 = 0x69636966656E6562;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1001DA698@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001DAE38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001DA6C0(uint64_t a1)
{
  v2 = sub_1001DABC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001DA6FC(uint64_t a1)
{
  v2 = sub_1001DABC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001DA768()
{
  _StringGuts.grow(_:)(46);
  v1 = type metadata accessor for InheritanceInvitationMessage(0);
  sub_100005814(&qword_1003E21F0, qword_100345178);
  v2 = String.init<A>(describing:)();

  v3._object = 0x8000000100330AB0;
  v3._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v3);
  type metadata accessor for UUID();
  sub_1001DAC18(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0xD000000000000015;
  v5._object = 0x8000000100330AD0;
  String.append(_:)(v5);
  String.append(_:)(*(v0 + *(v1 + 24)));
  return v2;
}

uint64_t type metadata accessor for InheritanceInvitationMessage(uint64_t a1)
{
  result = qword_1003E2250;
  if (!qword_1003E2250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001DA924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1001DA9FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001DAABC(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001DAB40(uint64_t a1)
{
  *(a1 + 8) = sub_1001DAC18(&unk_1003E2430, type metadata accessor for InheritanceInvitationMessage, &unk_1003451CC);
  result = sub_1001DAC18(&unk_1003E6950, type metadata accessor for InheritanceInvitationMessage, &unk_1003451F4);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001DABC4()
{
  result = qword_1003E2298;
  if (!qword_1003E2298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2298);
  }

  return result;
}

uint64_t sub_1001DAC18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001DAC60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InheritanceInvitationMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DACC4(uint64_t a1)
{
  v2 = type metadata accessor for InheritanceInvitationMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001DAD34()
{
  result = qword_1003E22A8;
  if (!qword_1003E22A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E22A8);
  }

  return result;
}

unint64_t sub_1001DAD8C()
{
  result = qword_1003E22B0;
  if (!qword_1003E22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E22B0);
  }

  return result;
}

unint64_t sub_1001DADE4()
{
  result = qword_1003E22B8;
  if (!qword_1003E22B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E22B8);
  }

  return result;
}

uint64_t sub_1001DAE38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69636966656E6562 && a2 == 0xED00004449797261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100330AF0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1001DAF60(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E2368, &qword_100345428);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000080F8(a1, a1[3]);
  sub_1001DBAE8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = *v3;
  v10[14] = 0;
  sub_1001D8D7C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for InheritanceInvitationResponseMessage(0);
    v10[13] = 1;
    type metadata accessor for UUID();
    sub_1001DBB3C(&unk_1003DDA80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[12] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001DB160@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v26 = type metadata accessor for UUID();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100005814(&qword_1003E2378, &qword_100345430);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v20 - v6;
  v8 = type metadata accessor for InheritanceInvitationResponseMessage(0);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000080F8(a1, a1[3]);
  sub_1001DBAE8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000839C(a1);
  }

  v22 = a1;
  v11 = v10;
  v12 = v25;
  v13 = v26;
  v30 = 0;
  sub_1001D8DD0();
  v14 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v11;
  *v11 = v31;
  v29 = 1;
  sub_1001DBB3C(&unk_1003DD720, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v15 = v5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = *(v24 + 32);
  v17 = v21;
  v20 = *(v8 + 20);
  v16(&v21[v20], v15, v13);
  v28 = 2;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v12 + 8))(v7, v14);
  *(v17 + *(v8 + 24)) = v18 & 1;
  sub_1001D3268(v17, v23);
  sub_10000839C(v22);
  return sub_1001DBB84(v17);
}

uint64_t sub_1001DB524()
{
  v1 = 0x69636966656E6562;
  if (*v0 != 1)
  {
    v1 = 0x6465747065636361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1001DB584@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001DBCF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001DB5AC(uint64_t a1)
{
  v2 = sub_1001DBAE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001DB5E8(uint64_t a1)
{
  v2 = sub_1001DBAE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001DB654()
{
  _StringGuts.grow(_:)(37);
  v1 = type metadata accessor for InheritanceInvitationResponseMessage(0);
  sub_100005814(&qword_1003E22C0, qword_100345378);
  v2 = String.init<A>(describing:)();

  v3._object = 0x8000000100330AB0;
  v3._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v3);
  type metadata accessor for UUID();
  sub_1001DBB3C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x657470656363610ALL;
  v5._object = 0xEC000000202D2064;
  String.append(_:)(v5);
  if (*(v0 + *(v1 + 24)))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + *(v1 + 24)))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  return v2;
}

uint64_t type metadata accessor for InheritanceInvitationResponseMessage(uint64_t a1)
{
  result = qword_1003E2320;
  if (!qword_1003E2320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001DB840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1001DB924(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1001DB9E0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001DBA64(uint64_t a1)
{
  *(a1 + 8) = sub_1001DBB3C(&unk_1003E2440, type metadata accessor for InheritanceInvitationResponseMessage, &unk_1003453D4);
  result = sub_1001DBB3C(&qword_1003E2360, type metadata accessor for InheritanceInvitationResponseMessage, &unk_1003453FC);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001DBAE8()
{
  result = qword_1003E2370;
  if (!qword_1003E2370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2370);
  }

  return result;
}

uint64_t sub_1001DBB3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001DBB84(uint64_t a1)
{
  v2 = type metadata accessor for InheritanceInvitationResponseMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001DBBF4()
{
  result = qword_1003E2380;
  if (!qword_1003E2380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2380);
  }

  return result;
}

unint64_t sub_1001DBC4C()
{
  result = qword_1003E2388;
  if (!qword_1003E2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2388);
  }

  return result;
}

unint64_t sub_1001DBCA4()
{
  result = qword_1003E2390;
  if (!qword_1003E2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2390);
  }

  return result;
}

uint64_t sub_1001DBCF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69636966656E6562 && a2 == 0xED00004449797261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465747065636361 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

Swift::Int sub_1001DBE3C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1003456A0[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1001DBEC4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1003456A0[v2]);
  return Hasher._finalize()();
}

uint64_t sub_1001DBF10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DC06C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1001DC018()
{
  result = qword_1003E2398;
  if (!qword_1003E2398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2398);
  }

  return result;
}

uint64_t sub_1001DC06C(uint64_t a1)
{
  if (a1 <= 102)
  {
    if (a1 == 101)
    {
      return 0;
    }

    if (a1 == 102)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 200:
        return 4;
      case 104:
        return 3;
      case 103:
        return 2;
    }
  }

  return 5;
}

unint64_t sub_1001DC0CC()
{
  result = qword_1003E23A0;
  if (!qword_1003E23A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E23A0);
  }

  return result;
}

uint64_t sub_1001DC120@<X0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for CustodianRecoveryKeys(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1001DFC8C(&qword_1003E2460, type metadata accessor for CustodianRecoveryKeys, &unk_100342B20);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_1001DFC24(v7, a3, type metadata accessor for CustodianRecoveryKeys);
  return (*(v5 + 56))(a3, 0, 1, v4);
}

uint64_t sub_1001DC3DC@<X0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for BeneficiaryRemovedMessage(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1001DFC8C(&qword_1003E2450, type metadata accessor for BeneficiaryRemovedMessage, &unk_100344DE8);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_1001DFC24(v7, a3, type metadata accessor for BeneficiaryRemovedMessage);
  return (*(v5 + 56))(a3, 0, 1, v4);
}

uint64_t sub_1001DC698@<X0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for InheritanceAccessKeyMessage(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1001DFC8C(&qword_1003E21A0, type metadata accessor for InheritanceAccessKeyMessage, &unk_100344FD8);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_1001DFC24(v7, a3, type metadata accessor for InheritanceAccessKeyMessage);
  return (*(v5 + 56))(a3, 0, 1, v4);
}

uint64_t sub_1001DC954@<X0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for InheritanceInvitationResponseMessage(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1001DFC8C(&unk_1003E2440, type metadata accessor for InheritanceInvitationResponseMessage, &unk_1003453D4);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_1001DFC24(v7, a3, type metadata accessor for InheritanceInvitationResponseMessage);
  return (*(v5 + 56))(a3, 0, 1, v4);
}

uint64_t sub_1001DCC10@<X0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for InheritanceInvitationMessage(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1001DFC8C(&unk_1003E2430, type metadata accessor for InheritanceInvitationMessage, &unk_1003451CC);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_1001DFC24(v7, a3, type metadata accessor for InheritanceInvitationMessage);
  return (*(v5 + 56))(a3, 0, 1, v4);
}

uint64_t sub_1001DCECC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for InheritanceAccessKeyMessage(0) + 24);
  v5 = (v4 + *(type metadata accessor for CloudShareInfo(0) + 20));
  if (v2 == *v5 && v3 == v5[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

id sub_1001DD088(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for InheritanceMessageProcessor();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001DD150(void *a1, char a2)
{
  v4 = sub_100005814(&qword_1003E24B8, &qword_100345800);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_1000080F8(a1, a1[3]);
  sub_1001DFED8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = a2;
  sub_1001D8D7C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1001DD298(uint64_t a1)
{
  v2 = sub_1001DFED8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001DD2D4(uint64_t a1)
{
  v2 = sub_1001DFED8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001DD310@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1001DFD68(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001DD3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  a4(0);
  sub_1001DFC8C(a5, a6, a7);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  return v12;
}

uint64_t sub_1001DD700(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1001DFBD0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  return v3;
}

void sub_1001DD8C8(NSObject *a1, uint64_t a2, uint64_t a3, const char *a4, void (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v252 = a5;
  v253 = a6;
  v269 = a3;
  v270 = a1;
  v10 = sub_100005814(&qword_1003E2408, &qword_100345740);
  __chkstk_darwin(v10 - 8);
  v262 = &v236 - v11;
  v12 = type metadata accessor for BeneficiaryRemovedMessage(0);
  v260 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v250 = &v236 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v251 = &v236 - v15;
  v16 = sub_100005814(&qword_1003E2410, &qword_100345748);
  v17 = __chkstk_darwin(v16 - 8);
  v259 = &v236 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v258 = &v236 - v19;
  v268 = type metadata accessor for InheritanceAccessKeyMessage(0);
  v20 = *(v268 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v268);
  v240 = &v236 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = &v236 - v24;
  v26 = __chkstk_darwin(v23);
  v247 = &v236 - v27;
  v28 = __chkstk_darwin(v26);
  v267 = &v236 - v29;
  v30 = __chkstk_darwin(v28);
  v239 = &v236 - v31;
  v32 = __chkstk_darwin(v30);
  v243 = &v236 - v33;
  v34 = __chkstk_darwin(v32);
  v241 = &v236 - v35;
  v36 = __chkstk_darwin(v34);
  v246 = &v236 - v37;
  __chkstk_darwin(v36);
  v266 = &v236 - v38;
  v39 = sub_100005814(&qword_1003E2418, &qword_100345750);
  __chkstk_darwin(v39 - 8);
  v257 = &v236 - v40;
  v261 = type metadata accessor for InheritanceInvitationResponseMessage(0);
  v263 = *(v261 - 8);
  v41 = __chkstk_darwin(v261);
  v249 = &v236 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v245 = &v236 - v44;
  v248 = v45;
  __chkstk_darwin(v43);
  v265 = &v236 - v46;
  v47 = sub_100005814(&unk_1003E2420, &unk_100345758);
  __chkstk_darwin(v47 - 8);
  v256 = &v236 - v48;
  v49 = type metadata accessor for InheritanceInvitationMessage(0);
  v254 = *(v49 - 8);
  v255 = v49;
  v50 = __chkstk_darwin(v49);
  v244 = &v236 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v264 = &v236 - v52;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  v54 = sub_100008D04(v53, qword_1003FAAA0);

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.info.getter();

  v57 = os_log_type_enabled(v55, v56);
  v242 = v25;
  if (v57)
  {
    v58 = a4;
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v238 = a2;
    v61 = v21;
    v62 = v12;
    v63 = v20;
    v64 = v7;
    v65 = v60;
    v271 = v60;
    *v59 = 136315138;
    *(v59 + 4) = sub_10021145C(v269, v58, &v271);
    _os_log_impl(&_mh_execute_header, v55, v56, "Inheritance message processor will process message from %s.", v59, 0xCu);
    sub_10000839C(v65);
    v7 = v64;
    v20 = v63;
    v12 = v62;
    v21 = v61;
    a2 = v238;

    a4 = v58;
  }

  v66 = [*(*sub_1000080F8((&v7->isa + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_accountStore) *(&v7[3].isa + OBJC:"aa_primaryAppleAccount" IVAR:? :? :? :? TtC13appleaccountd27InheritanceMessageProcessor:?accountStore)) + 16)];
  v67 = v270;
  if (!v66)
  {
    v270 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v270, v75))
    {
LABEL_33:
      v85 = v270;

      return;
    }

    v76 = swift_slowAlloc();
    *v76 = 0;
    v77 = "Not logged in to AppleAccount, unable to process message.";
LABEL_32:
    _os_log_impl(&_mh_execute_header, v270, v75, v77, v76, 2u);

    goto LABEL_33;
  }

  v271 = 0;
  v68 = sub_1001DD700(v67, a2);

  if (v68 > 2u)
  {
    if (v68 == 3)
    {
      v271 = 0;
      v82 = v262;
      sub_1001DC3DC(v262);

      if ((*(v260 + 48))(v82, 1, v12) == 1)
      {
        sub_100008D3C(v82, &qword_1003E2408, &qword_100345740);
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          v74 = "Unable to decode Beneficiary Removed message";
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      v100 = v7;
      v101 = v251;
      sub_1001DFC24(v82, v251, type metadata accessor for BeneficiaryRemovedMessage);
      v102 = v250;
      sub_1001DFB08(v101, v250, type metadata accessor for BeneficiaryRemovedMessage);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = v12;
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v271 = v107;
        *v106 = 136315138;
        v108 = sub_1001D894C();
        v109 = v102;
        v111 = v110;
        sub_1001DFB70(v109, type metadata accessor for BeneficiaryRemovedMessage);
        v112 = sub_10021145C(v108, v111, &v271);

        *(v106 + 4) = v112;
        _os_log_impl(&_mh_execute_header, v103, v104, "Received Beneficiary Removed Message - %s", v106, 0xCu);
        sub_10000839C(v107);

        v12 = v105;
      }

      else
      {

        sub_1001DFB70(v102, type metadata accessor for BeneficiaryRemovedMessage);
      }

      v166 = sub_1000080F8((&v100->isa + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_beneficiaryRemovedMessageHandler), *(&v100[3].isa + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_beneficiaryRemovedMessageHandler));
      sub_1000080F8((*v166 + 16), *(*v166 + 40));
      v167 = *(v12 + 20);
      v168 = swift_allocObject();
      *(v168 + 16) = 0;
      *(v168 + 24) = 0;
      v169 = swift_allocObject();
      *(v169 + 16) = sub_1001DF700;
      *(v169 + 24) = v168;

      sub_1001F037C(v101 + v167, sub_1001DF740, v169);

      v170 = type metadata accessor for BeneficiaryRemovedMessage;
      v171 = v101;
      goto LABEL_76;
    }

    if (v68 == 4)
    {
      v271 = 0;
      v78 = v256;
      sub_1001DCC10(v256);

      if ((*(v254 + 48))(v78, 1, v255) == 1)
      {
        sub_100008D3C(v78, &unk_1003E2420, &unk_100345758);
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          v74 = "Unable to decode Inheritance invitation!";
          goto LABEL_28;
        }

LABEL_29:

        return;
      }

      v125 = v78;
      v126 = v264;
      sub_1001DFC24(v125, v264, type metadata accessor for InheritanceInvitationMessage);
      v127 = v126;
      v128 = v244;
      sub_1001DFB08(v127, v244, type metadata accessor for InheritanceInvitationMessage);
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = v7;
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v271 = v133;
        *v132 = 136315138;
        v134 = sub_1001DA768();
        v136 = v135;
        sub_1001DFB70(v128, type metadata accessor for InheritanceInvitationMessage);
        v137 = sub_10021145C(v134, v136, &v271);

        *(v132 + 4) = v137;
        _os_log_impl(&_mh_execute_header, v129, v130, "Received Inheritance invitation message - %s", v132, 0xCu);
        sub_10000839C(v133);

        v7 = v131;
      }

      else
      {

        sub_1001DFB70(v128, type metadata accessor for InheritanceInvitationMessage);
      }

      sub_1000080F8((&v7->isa + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_invitationHandler), *(&v7[3].isa + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_invitationHandler));
      v183 = v264;
      sub_1001CE454(v264, v269, a4, v252, v253, 0, 0);
      v170 = type metadata accessor for InheritanceInvitationMessage;
      v171 = v183;
      goto LABEL_76;
    }

    v270 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v270, v75))
    {
      goto LABEL_33;
    }

    v76 = swift_slowAlloc();
    *v76 = 0;
    v77 = "Failed to decode data, unable to process message";
    goto LABEL_32;
  }

  if (v68)
  {
    if (v68 == 1)
    {
      v271 = 0;
      v69 = v258;
      sub_1001DC698(v258);

      v70 = v268;
      if ((*(v20 + 48))(v69, 1, v268) == 1)
      {
        sub_100008D3C(v69, &qword_1003E2410, &qword_100345748);
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          v74 = "Unable to decode Inheritance Access Key message";
LABEL_28:
          _os_log_impl(&_mh_execute_header, v71, v72, v74, v73, 2u);

          goto LABEL_29;
        }

        goto LABEL_29;
      }

      v270 = v7;
      v113 = v266;
      sub_1001DFC24(v69, v266, type metadata accessor for InheritanceAccessKeyMessage);
      v114 = v246;
      sub_1001DFB08(v113, v246, type metadata accessor for InheritanceAccessKeyMessage);
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.info.getter();
      v117 = os_log_type_enabled(v115, v116);
      v237 = v20;
      if (v117)
      {
        v118 = swift_slowAlloc();
        v119 = v54;
        v120 = swift_slowAlloc();
        v271 = v120;
        *v118 = 136315138;
        v121 = sub_1001D9780();
        v123 = v122;
        sub_1001DFB70(v114, type metadata accessor for InheritanceAccessKeyMessage);
        v124 = sub_10021145C(v121, v123, &v271);
        v113 = v266;

        *(v118 + 4) = v124;
        _os_log_impl(&_mh_execute_header, v115, v116, "Received Access Key Message - %s", v118, 0xCu);
        sub_10000839C(v120);
        v54 = v119;

        v70 = v268;
      }

      else
      {

        sub_1001DFB70(v114, type metadata accessor for InheritanceAccessKeyMessage);
      }

      v172 = v241;
      sub_1001DFB08(v113, v241, type metadata accessor for InheritanceAccessKeyMessage);
      v173 = Logger.logObject.getter();
      v174 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v173, v174))
      {
        v175 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        v265 = v54;
        v177 = v176;
        v271 = v176;
        *v175 = 136315138;
        type metadata accessor for URL();
        sub_1001DFC8C(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v178 = dispatch thunk of CustomStringConvertible.description.getter();
        v180 = v179;
        sub_1001DFB70(v172, type metadata accessor for InheritanceAccessKeyMessage);
        v181 = sub_10021145C(v178, v180, &v271);
        v113 = v266;

        *(v175 + 4) = v181;
        _os_log_impl(&_mh_execute_header, v173, v174, "Share URL - %s", v175, 0xCu);
        sub_10000839C(v177);
      }

      else
      {

        v182 = sub_1001DFB70(v172, type metadata accessor for InheritanceAccessKeyMessage);
      }

      v195 = v270;
      v196 = v237;
      if (qword_1003D7EF0 != -1)
      {
        v182 = swift_once();
      }

      __chkstk_darwin(v182);
      *(&v236 - 2) = v113;
      if (sub_1002D9820(sub_1001E0048, (&v236 - 4), v197))
      {
        v198 = *sub_1000080F8((v195 + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_accessKeyMessageHandler), *(v195 + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_accessKeyMessageHandler + 24));
        v199 = *(v70 + 20);
        v200 = v243;
        sub_1001DFB08(v113, v243, type metadata accessor for InheritanceAccessKeyMessage);
        v201 = (*(v196 + 80) + 24) & ~*(v196 + 80);
        v202 = v21 + v201 + 7;
        v203 = v113;
        v204 = v202 & 0xFFFFFFFFFFFFFFF8;
        v205 = ((v202 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
        v206 = swift_allocObject();
        *(v206 + 16) = v198;
        sub_1001DFC24(v200, v206 + v201, type metadata accessor for InheritanceAccessKeyMessage);
        v207 = (v206 + v204);
        v208 = (v206 + v205);
        *v207 = 0;
        v207[1] = 0;
        v209 = v269;
        *v208 = v269;
        v208[1] = a4;

        v210 = sub_1001E0064;
LABEL_68:
        sub_1001CCAC4(&v203[v199], v209, a4, v210, v206);

        v171 = v203;
        v170 = type metadata accessor for InheritanceAccessKeyMessage;
LABEL_76:
        sub_1001DFB70(v171, v170);
        return;
      }

      v222 = v239;
      sub_1001DFB08(v113, v239, type metadata accessor for InheritanceAccessKeyMessage);
      v223 = Logger.logObject.getter();
      v224 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v223, v224))
      {
        v225 = swift_slowAlloc();
        v226 = swift_slowAlloc();
        v271 = v226;
        *v225 = 136315138;
        v227 = *(v70 + 24);
        v228 = (v222 + v227 + *(type metadata accessor for CloudShareInfo(0) + 20));
        v229 = *v228;
        v230 = v228[1];

        sub_1001DFB70(v222, type metadata accessor for InheritanceAccessKeyMessage);
        v231 = sub_10021145C(v229, v230, &v271);
        v113 = v266;
LABEL_73:

        *(v225 + 4) = v231;
        _os_log_impl(&_mh_execute_header, v223, v224, "Invalid container ID received %s", v225, 0xCu);
        sub_10000839C(v226);

LABEL_75:
        v170 = type metadata accessor for InheritanceAccessKeyMessage;
        v171 = v113;
        goto LABEL_76;
      }
    }

    else
    {
      v271 = 0;
      v83 = v259;
      sub_1001DC698(v259);

      v84 = v268;
      if ((*(v20 + 48))(v83, 1, v268) == 1)
      {
        sub_100008D3C(v83, &qword_1003E2410, &qword_100345748);
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          v74 = "Unable to decode Update Inheritance Access Key message";
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      v270 = v7;
      v113 = v267;
      sub_1001DFC24(v83, v267, type metadata accessor for InheritanceAccessKeyMessage);
      v138 = v247;
      sub_1001DFB08(v113, v247, type metadata accessor for InheritanceAccessKeyMessage);
      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.info.getter();
      v141 = os_log_type_enabled(v139, v140);
      v237 = v20;
      if (v141)
      {
        v142 = swift_slowAlloc();
        v143 = v54;
        v144 = swift_slowAlloc();
        v271 = v144;
        *v142 = 136315138;
        v145 = sub_1001D9780();
        v147 = v146;
        sub_1001DFB70(v138, type metadata accessor for InheritanceAccessKeyMessage);
        v148 = sub_10021145C(v145, v147, &v271);
        v113 = v267;

        *(v142 + 4) = v148;
        _os_log_impl(&_mh_execute_header, v139, v140, "Received Access Key Changed Message - %s", v142, 0xCu);
        sub_10000839C(v144);
        v54 = v143;

        v84 = v268;
      }

      else
      {

        sub_1001DFB70(v138, type metadata accessor for InheritanceAccessKeyMessage);
      }

      v184 = v242;
      sub_1001DFB08(v113, v242, type metadata accessor for InheritanceAccessKeyMessage);
      v185 = Logger.logObject.getter();
      v186 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v185, v186))
      {
        v187 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        v265 = v54;
        v189 = v188;
        v271 = v188;
        *v187 = 136315138;
        type metadata accessor for URL();
        sub_1001DFC8C(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v190 = dispatch thunk of CustomStringConvertible.description.getter();
        v192 = v191;
        sub_1001DFB70(v184, type metadata accessor for InheritanceAccessKeyMessage);
        v193 = sub_10021145C(v190, v192, &v271);
        v113 = v267;

        *(v187 + 4) = v193;
        _os_log_impl(&_mh_execute_header, v185, v186, "Share URL - %s", v187, 0xCu);
        sub_10000839C(v189);
      }

      else
      {

        v194 = sub_1001DFB70(v184, type metadata accessor for InheritanceAccessKeyMessage);
      }

      v211 = v270;
      v212 = v237;
      if (qword_1003D7EF0 != -1)
      {
        v194 = swift_once();
      }

      __chkstk_darwin(v194);
      *(&v236 - 2) = v113;
      if (sub_1002D9820(sub_1001DF748, (&v236 - 4), v213))
      {
        v214 = *sub_1000080F8((v211 + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_accessKeyMessageHandler), *(v211 + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_accessKeyMessageHandler + 24));
        v199 = *(v84 + 20);
        v215 = v243;
        sub_1001DFB08(v113, v243, type metadata accessor for InheritanceAccessKeyMessage);
        v216 = (*(v212 + 80) + 24) & ~*(v212 + 80);
        v217 = v21 + v216 + 7;
        v203 = v113;
        v218 = v217 & 0xFFFFFFFFFFFFFFF8;
        v219 = ((v217 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
        v206 = swift_allocObject();
        *(v206 + 16) = v214;
        sub_1001DFC24(v215, v206 + v216, type metadata accessor for InheritanceAccessKeyMessage);
        v220 = (v206 + v218);
        v221 = (v206 + v219);
        *v220 = 0;
        v220[1] = 0;
        v209 = v269;
        *v221 = v269;
        v221[1] = a4;

        v210 = sub_1001DF768;
        goto LABEL_68;
      }

      v222 = v240;
      sub_1001DFB08(v113, v240, type metadata accessor for InheritanceAccessKeyMessage);
      v223 = Logger.logObject.getter();
      v224 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v223, v224))
      {
        v225 = swift_slowAlloc();
        v226 = swift_slowAlloc();
        v271 = v226;
        *v225 = 136315138;
        v232 = *(v84 + 24);
        v233 = (v222 + v232 + *(type metadata accessor for CloudShareInfo(0) + 20));
        v234 = *v233;
        v235 = v233[1];

        sub_1001DFB70(v222, type metadata accessor for InheritanceAccessKeyMessage);
        v231 = sub_10021145C(v234, v235, &v271);
        v113 = v267;
        goto LABEL_73;
      }
    }

    sub_1001DFB70(v222, type metadata accessor for InheritanceAccessKeyMessage);
    goto LABEL_75;
  }

  v271 = 0;
  v79 = v257;
  sub_1001DC954(v257);

  v80 = v263;
  v81 = v261;
  if ((*(v263 + 48))(v79, 1, v261) == 1)
  {
    sub_100008D3C(v79, &qword_1003E2418, &qword_100345750);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      v74 = "Unable to decode Inheritance invitation response";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v86 = v79;
  v87 = v265;
  sub_1001DFC24(v86, v265, type metadata accessor for InheritanceInvitationResponseMessage);
  v88 = v245;
  sub_1001DFB08(v87, v245, type metadata accessor for InheritanceInvitationResponseMessage);
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.info.getter();
  v91 = os_log_type_enabled(v89, v90);
  v236 = a4;
  if (v91)
  {
    v92 = swift_slowAlloc();
    v93 = v7;
    v94 = swift_slowAlloc();
    v271 = v94;
    *v92 = 136315138;
    v95 = sub_1001DB654();
    v96 = v88;
    v98 = v97;
    sub_1001DFB70(v96, type metadata accessor for InheritanceInvitationResponseMessage);
    v99 = sub_10021145C(v95, v98, &v271);

    *(v92 + 4) = v99;
    _os_log_impl(&_mh_execute_header, v89, v90, "Received Inheritance invitation response message - %s", v92, 0xCu);
    sub_10000839C(v94);
    v7 = v93;
  }

  else
  {

    sub_1001DFB70(v88, type metadata accessor for InheritanceInvitationResponseMessage);
  }

  v149 = *sub_1000080F8((&v7->isa + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_invitationResponseHandler), *(&v7[3].isa + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_invitationResponseHandler));
  v270 = *(v81 + 20);
  v268 = sub_1000080F8((v149 + 16), *(v149 + 40));
  v150 = swift_allocObject();
  swift_weakInit();
  v151 = v265;
  v152 = v249;
  sub_1001DFB08(v265, v249, type metadata accessor for InheritanceInvitationResponseMessage);
  v153 = (*(v80 + 80) + 16) & ~*(v80 + 80);
  v154 = (v248 + v153 + 7) & 0xFFFFFFFFFFFFFFF8;
  v155 = (v154 + 23) & 0xFFFFFFFFFFFFFFF8;
  v156 = (v155 + 15) & 0xFFFFFFFFFFFFFFF8;
  v157 = swift_allocObject();
  sub_1001DFC24(v152, v157 + v153, type metadata accessor for InheritanceInvitationResponseMessage);
  v158 = (v157 + v154);
  *v158 = 0;
  v158[1] = 0;
  *(v157 + v155) = v150;
  *(v157 + v156) = 0;
  v159 = (v157 + ((v156 + 15) & 0xFFFFFFFFFFFFFFF8));
  v160 = v236;
  *v159 = v269;
  v159[1] = v160;

  sub_100214780(v151 + v270, sub_1001D373C, v157, v161, v162, v163, v164, v165, v236);

  sub_1001DFB70(v151, type metadata accessor for InheritanceInvitationResponseMessage);
}

uint64_t sub_1001DF6C0()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001DF708()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001DF770()
{
  v1 = (type metadata accessor for InheritanceAccessKeyMessage(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v4 + v1[8];
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for CloudShareInfo(0);

  if (*(v0 + v3))
  {
  }

  return _swift_deallocObject(v0, ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1001DF8F4(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceAccessKeyMessage(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = v1 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);

  return sub_1001CC638(a1, v7, v1 + v4, v9, v10, v11, v12);
}

uint64_t sub_1001DF9A8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001DF9E0()
{
  v1 = type metadata accessor for InheritanceInvitationResponseMessage(0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + *(v1 + 20);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5 + v3, v6);
  if (*(v0 + v4))
  {
  }

  return _swift_deallocObject(v0, ((((((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1001DFB08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001DFB70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001DFBD0()
{
  result = qword_1003E2458;
  if (!qword_1003E2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2458);
  }

  return result;
}

uint64_t sub_1001DFC24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001DFC8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001DFCE4(uint64_t a1)
{
  *(a1 + 8) = sub_1001DFBD0();
  result = sub_1001DFD14();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001DFD14()
{
  result = qword_1003E2498;
  if (!qword_1003E2498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2498);
  }

  return result;
}

void *sub_1001DFD68(void *a1)
{
  v3 = sub_100005814(&qword_1003E24A0, &qword_1003457F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_1000080F8(a1, a1[3]);
  sub_1001DFED8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000839C(a1);
  }

  else
  {
    sub_1001D8DD0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    sub_10000839C(a1);
  }

  return v7;
}

unint64_t sub_1001DFED8()
{
  result = qword_1003E24A8;
  if (!qword_1003E24A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E24A8);
  }

  return result;
}

unint64_t sub_1001DFF40()
{
  result = qword_1003E24C8;
  if (!qword_1003E24C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E24C8);
  }

  return result;
}

unint64_t sub_1001DFF98()
{
  result = qword_1003E24D0;
  if (!qword_1003E24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E24D0);
  }

  return result;
}

unint64_t sub_1001DFFF0()
{
  result = qword_1003E24D8;
  if (!qword_1003E24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E24D8);
  }

  return result;
}

uint64_t sub_1001E0068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  v41 = a4;
  v11 = type metadata accessor for InheritanceInvitationMessage(0);
  v12 = v11 - 8;
  v13 = __chkstk_darwin(v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  v18 = *(v12 + 28);
  v19 = type metadata accessor for UUID();
  (*(*(v19 - 8) + 16))(&v17[v18], a1, v19);
  *v17 = 4;
  v20 = &v17[*(v12 + 32)];
  *v20 = a2;
  v20[1] = a3;
  v21 = qword_1003D7F40;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100008D04(v22, qword_1003FAAA0);
  sub_1001E16E8(v17, v15, type metadata accessor for InheritanceInvitationMessage);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v42 = v26;
    *v25 = 136315138;
    v27 = sub_1001DA768();
    v40 = a5;
    v28 = v6;
    v29 = a1;
    v31 = v30;
    sub_1001E1750(v15, type metadata accessor for InheritanceInvitationMessage);
    v32 = sub_10021145C(v27, v31, &v42);
    a1 = v29;
    v6 = v28;
    a5 = v40;

    *(v25 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "Created invitation message - %s.\nSending...", v25, 0xCu);
    sub_10000839C(v26);
  }

  else
  {

    sub_1001E1750(v15, type metadata accessor for InheritanceInvitationMessage);
  }

  v33 = sub_1000080F8((v6 + 16), *(v6 + 40));
  v34 = (a1 + *(type metadata accessor for InheritanceInvitationRecord(0) + 20));
  v35 = *v34;
  v36 = v34[1];
  v37 = *v33;

  sub_1002B5858(v17, v35, v36, 0, 0, &_swiftEmptySetSingleton, v37, v41, a5);

  return sub_1001E1750(v17, type metadata accessor for InheritanceInvitationMessage);
}

uint64_t sub_1001E039C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAAA0);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v5, v6))
    {

      return a2(a1);
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v9 = String.init<A>(describing:)();
    v11 = sub_10021145C(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error sending IDS Message for Inheritance Invitation: %s", v7, 0xCu);
    sub_10000839C(v8);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAA0);
    v5 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v5, v13, "Sent IDS Message for Inheritance Invitation successfully.", v14, 2u);
    }
  }

  return a2(a1);
}

void sub_1001E061C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  if (!a1)
  {
LABEL_6:
    if (!a2)
    {
      return;
    }

    goto LABEL_7;
  }

  swift_errorRetain();
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAA0);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v11 = String.init<A>(describing:)();
    v13 = sub_10021145C(v11, v12, &v14);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error sending IDS Message for Share Access Key: %s", v9, 0xCu);
    sub_10000839C(v10);

    goto LABEL_6;
  }

  if (!a2)
  {
    return;
  }

LABEL_7:
  a2(a1);
  sub_100083B0C(a2, a3);
}

uint64_t sub_1001E07FC(uint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t, const char *), uint64_t a3, const char *a4, ...)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAAA0);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v12 = String.init<A>(describing:)();
      v14 = sub_10021145C(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, a4, v10, 0xCu);
      sub_10000839C(v11);
    }

    else
    {
    }
  }

  return a2(a1, a2, a3, a4);
}

uint64_t sub_1001E09EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v12 = a2;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAAA0);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    v30 = a3;
    v31 = a4;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = v29;
      *v16 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v17 = String.init<A>(describing:)();
      v19 = a7;
      v20 = a5;
      v21 = a6;
      v22 = sub_10021145C(v17, v18, &v33);

      *(v16 + 4) = v22;
      a6 = v21;
      a5 = v20;
      a7 = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error sending IDS Message for Beneficiary Removed: %s", v16, 0xCu);
      sub_10000839C(v29);
    }

    else
    {
    }

    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Error while sending beneficiary removed IDS message %@", v25, 0xCu);
      sub_100083380(v26);
    }

    else
    {
    }

    a4 = v31;
    v12 = a2;
    a3 = v30;
  }

  sub_100209344(a3, a4, a5, v12, a6, a7);
}

void sub_1001E0CD4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t), uint64_t a10)
{
  v96 = a7;
  v93 = a2;
  v94 = a3;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v89 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BeneficiaryRemovedMessage(0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v88 - v23;
  v25 = *(v22 + 28);
  v90 = v16;
  v91 = v15;
  (*(v16 + 16))(&v88 + v25 - v23, a1, v15);
  *v24 = 3;
  v26 = qword_1003D7F40;
  v27 = a5;
  v92 = a6;

  v97 = a10;

  if (v26 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100008D04(v28, qword_1003FAAA0);
  v98 = v24;
  sub_1001E16E8(v24, v21, type metadata accessor for BeneficiaryRemovedMessage);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v95 = v28;
    v32 = v27;
    v33 = a8;
    v34 = v31;
    v35 = swift_slowAlloc();
    v99 = v35;
    *v34 = 136315138;
    v36 = sub_1001D894C();
    v38 = v37;
    sub_1001E1750(v21, type metadata accessor for BeneficiaryRemovedMessage);
    v39 = sub_10021145C(v36, v38, &v99);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v29, v30, "Created beneficiary removed message - %s.\nSending....", v34, 0xCu);
    sub_10000839C(v35);

    a8 = v33;
    v27 = v32;
    v28 = v95;
  }

  else
  {

    sub_1001E1750(v21, type metadata accessor for BeneficiaryRemovedMessage);
  }

  v95 = a9;
  v40 = sub_1000080F8((a4 + 16), *(a4 + 40));
  v41 = v97;
  if (_swiftEmptyArrayStorage >> 62)
  {
    v86 = v40;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_10013446C(_swiftEmptyArrayStorage);
      v42 = v87;
    }

    else
    {
      v42 = &_swiftEmptySetSingleton;
    }

    v40 = v86;
  }

  else
  {
    v42 = &_swiftEmptySetSingleton;
  }

  v43 = *v40;
  v44 = v27;
  v45 = v92;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v46 = v44;
  v47 = v45;
  v48 = v46;
  v49 = v47;
  v50 = v48;
  v51 = v49;
  v52 = sub_1000E9F18();
  if ((v53 & 1) == 0)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v94 = v42;
    sub_100008D04(v28, qword_1003FAA40);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Destination is valid!", v63, 2u);
    }

    v64 = sub_1002B41BC(v98);
    if (v65 >> 60 == 15)
    {
      v66 = [objc_allocWithZone(NSError) initWithDomain:AAMessagingErrorDomain code:4 userInfo:0];
      swift_willThrow();
    }

    else
    {
      v93 = a8;
      v67 = *(v43 + 16);
      v68 = v64;
      v69 = v65;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_1003431D0;
      *(v71 + 32) = v52;
      sub_100016034(0, &unk_1003E6930, AAMessagingDestination_ptr);
      v72 = v52;
      v73 = Array._bridgeToObjectiveC()().super.isa;

      sub_100016034(0, &qword_1003DEC20, AAMessagingCapability_ptr);
      sub_1001E1680();
      v74 = Set._bridgeToObjectiveC()().super.isa;
      v99 = 0;
      v75 = [v67 sendMessage:isa destinations:v73 sendFromHandleUri:0 responseIdentifier:0 fireAndForget:0 requiredCapabilities:v74 lackingCapabilities:0 error:&v99];

      v76 = v99;
      if (v75)
      {
        v77 = v89;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v76;
        sub_100015D58(v68, v69);

        (*(v90 + 8))(v77, v91);
        v79 = v50;
        v80 = v51;
        v81 = v93;

        v82 = v97;

        sub_100209344(v80, v96, v81, v79, v95, v82);

        sub_10005A40C(v52, 0);
        goto LABEL_24;
      }

      v83 = v99;
      v66 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100015D58(v68, v69);
      a8 = v93;
      v41 = v97;
    }

    v84 = v50;
    v85 = v51;

    swift_errorRetain();
    sub_1001E09EC(v66, v84, v85, v96, a8, v95, v41);

    sub_10005A40C(v52, 0);

    goto LABEL_24;
  }

  swift_errorRetain();
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  sub_100008D04(v28, qword_1003FAA40);
  swift_errorRetain();
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();
  sub_10005A40C(v52, 1);
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v56 = 138412290;
    v58 = _convertErrorToNSError(_:)();
    *(v56 + 4) = v58;
    *v57 = v58;
    _os_log_impl(&_mh_execute_header, v54, v55, "error building destination: %@", v56, 0xCu);
    sub_100083380(v57);
  }

  v59 = v50;
  v60 = v51;

  sub_100135D08(v52, 1);
  sub_1001E09EC(v52, v59, v60, v96, a8, v95, v41);

  sub_10005A40C(v52, 1);
  sub_10005A40C(v52, 1);

LABEL_24:

  swift_bridgeObjectRelease_n();
  sub_1001E1750(v98, type metadata accessor for BeneficiaryRemovedMessage);
}

unint64_t sub_1001E1680()
{
  result = qword_1003E6940;
  if (!qword_1003E6940)
  {
    sub_100016034(255, &qword_1003DEC20, AAMessagingCapability_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6940);
  }

  return result;
}

uint64_t sub_1001E16E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001E1750(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1001E17B0(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v75 = a3;
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v68 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v77 = &v68 - v15;
  if (CKRecord.recordType.getter() == 0xD00000000000001FLL && 0x80000001003303D0 == v16)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
LABEL_7:
      type metadata accessor for InheritanceError(0);
      v80 = 2;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001E3138(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      return;
    }
  }

  v73 = v14;
  v18 = [a1 recordID];
  v19 = [v18 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v20 = v11;
  v21 = *(v11 + 48);
  if (v21(v9, 1, v10) == 1)
  {
    sub_100008D3C(v9, &qword_1003D8B60, &unk_10033F210);
    goto LABEL_7;
  }

  v72 = v20;
  v22 = *(v20 + 32);
  v74 = v10;
  v70 = v22;
  (v22)(v77, v9);
  v23 = [a1 encryptedValuesByKey];
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 objectForKeyedSubscript:v24];

  if (!v25)
  {
    goto LABEL_12;
  }

  v71 = v23;
  v80 = v25;
  sub_100005814(&unk_1003E2770, &qword_100341F50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  UUID.init(uuidString:)();

  v26 = v74;
  if (v21(v7, 1, v74) != 1)
  {
    v36 = v70;
    v70(v73, v7, v26);
    v37 = String._bridgeToObjectiveC()();
    v38 = [v71 objectForKeyedSubscript:v37];

    v39 = v72;
    if (v38 && (v80 = v38, (swift_dynamicCast() & 1) != 0))
    {
      v40 = v78;
      v69 = v79;
      v41 = String._bridgeToObjectiveC()();
      v42 = [v71 objectForKeyedSubscript:v41];

      if (v42)
      {
        v78 = v42;
        type metadata accessor for Status(0);
        if (swift_dynamicCast())
        {
          v72 = v80;
          v43 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
          [a1 encodeSystemFieldsWithCoder:v43];
          [v43 finishEncoding];
          v44 = [v43 encodedData];
          v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v40;
          v48 = v47;
          swift_unknownObjectRelease();

          v49 = type metadata accessor for BenefactorInfoRecord(0);
          v50 = v75;
          v51 = (v75 + v49[8]);
          *v51 = v45;
          v51[1] = v48;
          v52 = v74;
          v36(v50 + v49[7], v77, v74);
          v36(v50, v73, v52);
          v53 = (v50 + v49[5]);
          v54 = v69;
          *v53 = v46;
          v53[1] = v54;
          *(v50 + v49[6]) = v72;
          *(v50 + v49[9]) = v76 & 1;
          return;
        }
      }

      v60 = v74;
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      sub_100008D04(v65, qword_1003FAAA0);
      v56 = a1;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v57, v58))
      {
        goto LABEL_31;
      }

      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412290;
      *(v61 + 4) = v56;
      *v62 = v56;
      v66 = v56;
      v64 = "Missing TrustedContactStatus - %@";
    }

    else
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_100008D04(v55, qword_1003FAAA0);
      v56 = a1;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();

      v59 = os_log_type_enabled(v57, v58);
      v60 = v74;
      if (!v59)
      {
        goto LABEL_31;
      }

      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412290;
      *(v61 + 4) = v56;
      *v62 = v56;
      v63 = v56;
      v64 = "Missing Inheritance Handle - %@";
    }

    _os_log_impl(&_mh_execute_header, v57, v58, v64, v61, 0xCu);
    sub_100008D3C(v62, &unk_1003D9140, &qword_10033E640);

LABEL_31:

    type metadata accessor for InheritanceError(0);
    v80 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001E3138(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    v67 = *(v39 + 8);
    v67(v73, v60);
    v67(v77, v60);
    return;
  }

  sub_100008D3C(v7, &qword_1003D8B60, &unk_10033F210);
LABEL_12:
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100008D04(v27, qword_1003FAAA0);
  v28 = a1;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  v31 = os_log_type_enabled(v29, v30);
  v32 = v74;
  if (v31)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v28;
    *v34 = v28;
    v35 = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "Missing Inheritance beneficiaryID - %@", v33, 0xCu);
    sub_100008D3C(v34, &unk_1003D9140, &qword_10033E640);
  }

  type metadata accessor for InheritanceError(0);
  v80 = 2;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1001E3138(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  swift_unknownObjectRelease();
  (*(v72 + 8))(v77, v32);
}

unint64_t sub_1001E2234()
{
  v1 = *v0;
  v2 = 0x69636966656E6562;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x737574617473;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C646E6168;
  if (v1 != 1)
  {
    v5 = 0x444964726F636572;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001E22F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001E34E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001E2320(uint64_t a1)
{
  v2 = sub_1001E30E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E235C(uint64_t a1)
{
  v2 = sub_1001E30E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E2398@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = type metadata accessor for UUID();
  v28 = *(v31 - 8);
  v3 = __chkstk_darwin(v31);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v26 - v6;
  v8 = sub_100005814(&qword_1003E25C8, &qword_100345A40);
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin(v8);
  v10 = v26 - v9;
  v11 = type metadata accessor for BenefactorInfoRecord(0);
  __chkstk_darwin(v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000080F8(a1, a1[3]);
  sub_1001E30E4();
  v32 = v10;
  v14 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return sub_10000839C(a1);
  }

  v33 = v5;
  v15 = v13;
  LOBYTE(v34) = 0;
  v16 = sub_1001E3138(&unk_1003DD720, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26[2] = v16;
  v17 = *(v28 + 32);
  v17(v15, v7, v31);
  LOBYTE(v34) = 1;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v11;
  v20 = (v15 + *(v11 + 20));
  *v20 = v18;
  v20[1] = v21;
  LOBYTE(v34) = 5;
  v26[1] = 0;
  *(v15 + *(v11 + 24)) = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v34) = 2;
  v22 = v33;
  v23 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17(v15 + v19[7], v22, v23);
  v35 = 3;
  sub_1000EE61C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v15 + v19[8]) = v34;
  LOBYTE(v34) = 4;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v29 + 8))(v32, v30);
  *(v15 + v19[9]) = v24 & 1;
  sub_1001C84F8(v15, v27);
  sub_10000839C(a1);
  return sub_1001C855C(v15);
}

uint64_t sub_1001E28E0(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E25D8, &qword_100345A48);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000080F8(a1, a1[3]);
  sub_1001E30E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for UUID();
  sub_1001E3138(&unk_1003DDA80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for BenefactorInfoRecord(0);
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = (v3 + *(v9 + 32));
    v11 = v10[1];
    v13 = *v10;
    v14 = v11;
    v15 = 3;
    sub_100015D6C(v13, v11);
    sub_1000EE774();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100012324(v13, v14);
    LOBYTE(v13) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001E2B8C(id *a1)
{
  [*a1 encryptedValuesByKey];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v2 = UUID.uuidString.getter();
  if (!v14)
  {

    goto LABEL_7;
  }

  if (v13 != v2 || v14 != v3)
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      goto LABEL_8;
    }

LABEL_7:
    v13 = UUID.uuidString.getter();
    v14 = v5;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_8;
  }

LABEL_8:
  CKRecordKeyValueSetting.subscript.getter();
  v6 = type metadata accessor for BenefactorInfoRecord(0);
  v7 = (v1 + *(v6 + 20));
  v9 = *v7;
  v8 = v7[1];
  if (!v14)
  {
    goto LABEL_14;
  }

  if (v13 == v9 && v14 == v8)
  {

    goto LABEL_16;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v11 & 1) == 0)
  {
LABEL_14:
    v13 = v9;
    LOBYTE(v14) = v8;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_16:
  CKRecordKeyValueSetting.subscript.getter();
  if ((v14 & 1) != 0 || v13 != *(v1 + *(v6 + 24)))
  {
    CKRecordKeyValueSetting.subscript.setter();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1001E2E64()
{
  _StringGuts.grow(_:)(36);
  v1 = type metadata accessor for BenefactorInfoRecord(0);
  sub_100005814(&unk_1003E25E0, &qword_100345A50);
  v2 = String.init<A>(describing:)();

  v3._object = 0x8000000100330C00;
  v3._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v3);
  type metadata accessor for UUID();
  sub_1001E3138(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x656C646E61680A2CLL;
  v5._object = 0xEB00000000202D20;
  String.append(_:)(v5);
  String.append(_:)(*(v0 + *(v1 + 20)));
  return v2;
}

uint64_t sub_1001E2FBC(uint64_t a1)
{
  *(a1 + 8) = sub_1001E3138(&unk_1003E25B0, type metadata accessor for BenefactorInfoRecord, &unk_1003459E0);
  result = sub_1001E3138(&unk_1003E0E80, type metadata accessor for BenefactorInfoRecord, &unk_1003459B8);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for BenefactorInfoRecord(uint64_t a1)
{
  result = qword_1003E2648;
  if (!qword_1003E2648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E308C(uint64_t a1)
{
  result = sub_1001E3138(&qword_1003E25C0, type metadata accessor for BenefactorInfoRecord, &unk_100345A08);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001E30E4()
{
  result = qword_1003E25D0;
  if (!qword_1003E25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E25D0);
  }

  return result;
}

uint64_t sub_1001E3138(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001E31A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001E3278(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1001E3334(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Status(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1001E33DC()
{
  result = qword_1003E2690;
  if (!qword_1003E2690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2690);
  }

  return result;
}

unint64_t sub_1001E3434()
{
  result = qword_1003E2698;
  if (!qword_1003E2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2698);
  }

  return result;
}

unint64_t sub_1001E348C()
{
  result = qword_1003E26A0;
  if (!qword_1003E26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E26A0);
  }

  return result;
}

uint64_t sub_1001E34E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69636966656E6562 && a2 == 0xED00004449797261;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x444964726F636572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010032E7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010032E810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

id sub_1001E36E8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = type metadata accessor for BeneficiaryInfoRecord(0);
  v10 = String._bridgeToObjectiveC()();
  if (*(a1 + v9[5] + 8))
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  sub_1000F2504(a1 + v9[11], v7);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v7, v2);
  }

  if (*(a1 + v9[12] + 8))
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  v26 = v2;
  v14 = (a1 + v9[13]);
  if (*(v14 + 8))
  {
    v15 = 0;
  }

  else
  {
    v15 = *v14;
  }

  if (*(a1 + v9[14] + 8))
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBeneficiaryID:v8.super.isa benefactorAltDSID:v10 handle:v11 otPeerID:isa repairDate:v13 repairCount:v15 recordBuildVersion:v16];

  v18 = (a1 + v9[7]);
  v19 = *v18;
  v20 = v18[1];
  sub_100015D6C(*v18, v20);
  sub_1001E92AC(v19, v20, &v27);
  if (v29)
  {
    v31 = v27;
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_1001E6A48();
    v21 = v25;
    (*(v3 + 16))(v25, a1, v26);
    v22 = sub_1001E9490(v21);
    [v17 setAccessKey:v22];
    sub_100008D3C(&v27, &unk_1003E1660, &qword_100344608);
  }

  sub_1001BCA80(a1);
  return v17;
}

uint64_t sub_1001E3A24@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for BeneficiaryInfoRecord(0);
  v7 = v6[11];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = (a3 + v6[12]);
  *v9 = 0;
  v9[1] = 0;
  v10 = a3 + v6[13];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (a3 + v6[14]);
  *v11 = 0;
  v11[1] = 0;
  v12 = [a1 accessKey];
  if (v12)
  {
    v13 = v12;
    sub_1001E960C(v13, &v38);
    if (v39)
    {
      v14 = [a1 beneficiaryID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      sub_1001A23F4();
      v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v17 = v16;

      v18 = (a3 + v6[7]);
      *v18 = v15;
      v18[1] = v17;
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v20 = v19;
        swift_unknownObjectRetain();
        v21 = [v20 handle];
        if (v21)
        {
          v22 = v21;
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
          v23 = 0;
          v25 = 0;
        }

        v27 = (a3 + v6[5]);
        *v27 = v23;
        v27[1] = v25;
      }

      else
      {
        v26 = (a3 + v6[5]);
        *v26 = 0;
        v26[1] = 0;
      }

      v28 = [a1 benefactorAltDSID];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = (a3 + v6[6]);
      *v32 = v29;
      v32[1] = v31;
      UUID.init()();

      sub_100008D3C(&v38, &unk_1003E1660, &qword_100344608);
      result = swift_unknownObjectRelease();
      *(a3 + v6[9]) = xmmword_10033F8D0;
      *(a3 + v6[10]) = a2 & 1;
      return result;
    }
  }

  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100008D04(v34, qword_1003FAAA0);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "The beneficiary does not have accessKey created yet. Cannot proceed to create a BeneficiaryInfoRecord", v37, 2u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_1001E3E34(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x656C646E6168;
    v7 = 0x654B737365636361;
    v8 = 0xD000000000000011;
    if (a1 != 3)
    {
      v8 = 0x444964726F636572;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x69636966656E6562;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6144726961706572;
    v2 = 0x6F43726961706572;
    if (a1 != 9)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    v4 = 0xD000000000000013;
    if (a1 != 6)
    {
      v4 = 0x444972656550746FLL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1001E3FCC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001E6FE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001E3FF4(uint64_t a1)
{
  v2 = sub_1001E6A94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E4030(uint64_t a1)
{
  v2 = sub_1001E6A94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E406C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v3 - 8);
  v49 = v44 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = v44 - v10;
  v11 = sub_100005814(&qword_1003E26F8, &qword_100345C60);
  v51 = *(v11 - 8);
  v52 = v11;
  __chkstk_darwin(v11);
  v13 = v44 - v12;
  v14 = type metadata accessor for BeneficiaryInfoRecord(0);
  v16 = *(__chkstk_darwin(v14) + 44);
  v17 = *(v6 + 56);
  v55 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v16;
  v17(&v55[v16], 1, 1, v5);
  sub_1000080F8(a1, a1[3]);
  sub_1001E6A94();
  v53 = v13;
  v18 = v54;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    sub_10000839C(a1);
    sub_100008D3C(&v55[v56], &qword_1003D8B60, &unk_10033F210);
  }

  else
  {
    v45 = v9;
    v46 = v14;
    v47 = v6;
    v54 = a1;
    LOBYTE(v57) = 1;
    v19 = sub_1001E6AE8(&unk_1003DD720, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = v50;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = *(v47 + 32);
    v22 = v55;
    v21(v55, v20, v5);
    LOBYTE(v57) = 0;
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v44[1] = v19;
    v24 = v46;
    v25 = &v22[v46[5]];
    *v25 = v23;
    v25[1] = v26;
    v58 = 2;
    sub_1000EE61C();
    v50 = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v22[v24[7]] = v57;
    LOBYTE(v57) = 3;
    v27 = KeyedDecodingContainer.decode(_:forKey:)();
    v28 = &v22[v24[6]];
    *v28 = v27;
    v28[1] = v29;
    LOBYTE(v57) = 4;
    v30 = v45;
    v44[0] = v5;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21(&v22[v24[8]], v30, v44[0]);
    v58 = 5;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v22[v24[9]] = v57;
    LOBYTE(v57) = 6;
    v22[v24[10]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v57) = 7;
    v31 = v49;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000F244C(v31, &v22[v56]);
    LOBYTE(v57) = 8;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = &v22[v46[12]];
    *v33 = v32;
    v33[1] = v34;
    LOBYTE(v57) = 9;
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = &v55[v46[13]];
    *v36 = v35;
    v36[8] = v37 & 1;
    LOBYTE(v57) = 10;
    v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = v39;
    v41 = v55;
    v42 = &v55[v46[14]];
    (*(v51 + 8))(v53, v52);
    *v42 = v38;
    v42[1] = v40;
    sub_100168334(v41, v48);
    sub_10000839C(v54);
    return sub_1001BCA80(v41);
  }
}

uint64_t sub_1001E48F0(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E2708, &unk_100345C68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_1000080F8(a1, a1[3]);
  sub_1001E6A94();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = 1;
  type metadata accessor for UUID();
  sub_1001E6AE8(&unk_1003DDA80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for BeneficiaryInfoRecord(0);
    LOBYTE(v20) = 0;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = (v3 + *(v9 + 28));
    v11 = *v10;
    v12 = v10[1];
    v19 = v9;
    v20 = v11;
    v21 = v12;
    v22 = 2;
    sub_100015D6C(v11, v12);
    v13 = sub_1000EE774();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = v13;
    sub_100012324(v20, v21);
    v14 = v19;
    LOBYTE(v20) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v20) = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = (v3 + *(v14 + 36));
    v17 = v16[1];
    v20 = *v16;
    v21 = v17;
    v22 = 5;
    sub_100015D6C(v20, v17);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100012324(v20, v21);
    LOBYTE(v20) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v20) = 7;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v20) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v20) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001E4CD8@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v127 = a2;
  v5 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v6 = __chkstk_darwin(v5 - 8);
  v123 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v115 - v9;
  __chkstk_darwin(v8);
  v12 = &v115 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v122 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v128 = &v115 - v18;
  __chkstk_darwin(v17);
  v130 = &v115 - v19;
  v20 = type metadata accessor for BeneficiaryInfoRecord(0);
  v131 = v20[11];
  v132 = v14;
  v21 = *(v14 + 56);
  v133 = v13;
  v121 = v21;
  v21(a3 + v131, 1, 1, v13);
  v22 = (a3 + v20[12]);
  *v22 = 0;
  v22[1] = 0;
  v125 = v22;
  v23 = a3 + v20[13];
  *v23 = 0;
  v126 = v23;
  *(v23 + 8) = 1;
  v24 = (a3 + v20[14]);
  *v24 = 0;
  v24[1] = 0;
  v124 = v24;
  v134 = a1;
  if (CKRecord.recordType.getter() == 0xD000000000000020 && 0x8000000100330350 == v25)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      type metadata accessor for InheritanceError(0);
      v137 = 2;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001E6AE8(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      return sub_100008D3C(a3 + v131, &qword_1003D8B60, &unk_10033F210);
    }
  }

  v129 = a3;
  v27 = v134;
  v28 = [v134 recordID];
  v29 = [v28 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v31 = v132;
  v30 = v133;
  v32 = *(v132 + 48);
  if (v32(v12, 1, v133) == 1)
  {
    sub_100008D3C(v12, &qword_1003D8B60, &unk_10033F210);
    type metadata accessor for InheritanceError(0);
    v137 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001E6AE8(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    a3 = v129;
    return sub_100008D3C(a3 + v131, &qword_1003D8B60, &unk_10033F210);
  }

  v33 = *(v31 + 32);
  v119 = v31 + 32;
  v120 = v32;
  v118 = v33;
  v33(v130, v12, v30);
  v34 = [v27 encryptedValuesByKey];
  v35 = String._bridgeToObjectiveC()();
  v36 = [v34 objectForKeyedSubscript:v35];

  if (!v36 || (v137 = v36, sub_100005814(&unk_1003E2770, &qword_100341F50), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100008D04(v38, qword_1003FAAA0);
    v39 = v134;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    v42 = os_log_type_enabled(v40, v41);
    a3 = v129;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v39;
      *v44 = v39;
      v45 = v39;
      _os_log_impl(&_mh_execute_header, v40, v41, "Missing Inheritance beneficiaryID - %@", v43, 0xCu);
      sub_100008D3C(v44, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for InheritanceError(0);
    v137 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001E6AE8(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v132 + 8))(v130, v133);
    return sub_100008D3C(a3 + v131, &qword_1003D8B60, &unk_10033F210);
  }

  UUID.init(uuidString:)();

  v37 = v133;
  if (v120(v10, 1, v133) == 1)
  {
    sub_100008D3C(v10, &qword_1003D8B60, &unk_10033F210);
    goto LABEL_11;
  }

  v118(v128, v10, v37);
  v47 = String._bridgeToObjectiveC()();
  v117 = v34;
  v48 = [v34 objectForKeyedSubscript:v47];

  if (!v48 || (v137 = v48, (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_100008D04(v57, qword_1003FAAA0);
    v58 = v134;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    v61 = os_log_type_enabled(v59, v60);
    a3 = v129;
    if (v61)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      *(v62 + 4) = v58;
      *v63 = v58;
      v64 = v58;
      _os_log_impl(&_mh_execute_header, v59, v60, "Missing Inheritance accessKey - %@", v62, 0xCu);
      sub_100008D3C(v63, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for InheritanceError(0);
    v137 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001E6AE8(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    goto LABEL_36;
  }

  v49 = v135;
  v50 = v136;
  v51 = String._bridgeToObjectiveC()();
  v52 = [v117 objectForKeyedSubscript:v51];

  if (!v52 || (v137 = v52, (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_100008D04(v65, qword_1003FAAA0);
    v58 = v134;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    v68 = os_log_type_enabled(v66, v67);
    a3 = v129;
    if (v68)
    {
      v69 = swift_slowAlloc();
      v70 = v49;
      v71 = swift_slowAlloc();
      *v69 = 138412290;
      *(v69 + 4) = v58;
      *v71 = v58;
      v72 = v58;
      _os_log_impl(&_mh_execute_header, v66, v67, "Missing benefactorAltDSID - %@", v69, 0xCu);
      sub_100008D3C(v71, &unk_1003D9140, &qword_10033E640);
      v49 = v70;
    }

    type metadata accessor for InheritanceError(0);
    v137 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001E6AE8(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    sub_100012324(v49, v50);
LABEL_36:

    swift_unknownObjectRelease();
    v73 = v133;
    v74 = *(v132 + 8);
    v74(v128, v133);
    v74(v130, v73);
    return sub_100008D3C(a3 + v131, &qword_1003D8B60, &unk_10033F210);
  }

  v116 = v135;
  v115 = v136;
  v53 = String._bridgeToObjectiveC()();
  v54 = [v117 objectForKeyedSubscript:v53];

  if (v54)
  {
    v137 = v54;
    if (swift_dynamicCast())
    {
      v55 = v123;
      UUID.init(uuidString:)();

      v56 = v133;
      if (v120(v55, 1, v133) == 1)
      {
        sub_100008D3C(v55, &qword_1003D8B60, &unk_10033F210);
      }

      else
      {
        v75 = v118;
        v118(v122, v55, v56);
        v76 = v56;
        v77 = v129;
        v78 = v131;
        sub_100008D3C(v129 + v131, &qword_1003D8B60, &unk_10033F210);
        v75(v77 + v78, v122, v76);
        v121(v77 + v78, 0, 1, v76);
      }
    }
  }

  v79 = String._bridgeToObjectiveC()();
  v80 = [v117 objectForKeyedSubscript:v79];

  if (v80)
  {
    v137 = v80;
    if (swift_dynamicCast())
    {
      v81 = v136;
      v82 = v124;
      *v124 = v135;
      v82[1] = v81;
    }
  }

  v124 = v49;
  v83 = String._bridgeToObjectiveC()();
  v84 = [v117 objectForKeyedSubscript:v83];

  v85 = v129;
  v86 = v134;
  if (v84)
  {
    v137 = v84;
    if (swift_dynamicCast())
    {
      v87 = v136;
      v88 = v125;
      *v125 = v135;
      v88[1] = v87;
    }
  }

  v131 = v50;
  v89 = String._bridgeToObjectiveC()();
  v90 = [v117 objectForKeyedSubscript:v89];

  if (v90)
  {
    v135 = v90;
    if (swift_dynamicCast())
    {
      v91 = v126;
      *v126 = v137;
      *(v91 + 8) = 0;
    }
  }

  v92 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [v86 encodeSystemFieldsWithCoder:v92];
  [v92 finishEncoding];
  v93 = [v92 encodedData];
  v94 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = v95;

  v97 = (v85 + v20[9]);
  *v97 = v94;
  v97[1] = v96;
  v99 = v132;
  v98 = v133;
  v100 = *(v132 + 16);
  v101 = v130;
  v100(v85 + v20[8], v130, v133);
  v102 = v128;
  v100(v85, v128, v98);
  v103 = String._bridgeToObjectiveC()();
  v104 = [v117 objectForKeyedSubscript:v103];

  swift_unknownObjectRelease();
  v105 = *(v99 + 8);
  v105(v102, v98);
  result = (v105)(v101, v98);
  if (v104)
  {
    v137 = v104;
    result = swift_dynamicCast();
    v106 = v135;
    v107 = v136;
    if (!result)
    {
      v106 = 0;
      v107 = 0;
    }
  }

  else
  {
    v106 = 0;
    v107 = 0;
  }

  v108 = v131;
  v109 = v124;
  v110 = v129;
  v111 = (v129 + v20[5]);
  *v111 = v106;
  v111[1] = v107;
  v112 = (v110 + v20[7]);
  *v112 = v109;
  v112[1] = v108;
  v113 = (v110 + v20[6]);
  v114 = v115;
  *v113 = v116;
  v113[1] = v114;
  *(v110 + v20[10]) = v127 & 1;
  return result;
}