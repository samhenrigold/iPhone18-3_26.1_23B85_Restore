uint64_t sub_100203964(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1002039D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (a4)
  {
LABEL_3:
    v8 = String._bridgeToObjectiveC()();
  }

LABEL_4:
  if (a5)
  {
    v10 = _convertErrorToNSError(_:)();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  (*(a6 + 16))(a6, v9, v8);
}

void sub_100203A90(void *a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v48 = a6;
  v49 = a3;
  v50 = a4;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v46 = a9;
    v18 = qword_1003D7F40;
    v19 = a1;
    if (v18 != -1)
    {
      swift_once();
    }

    v47 = a10;
    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAAA0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v45 = a5;
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Successfully created accessKey. Setting up beneficiary with IdMS...", v23, 2u);
      a5 = v45;
    }

    [a5 setAccessKey:v19];
    v24 = v19;
    v25 = v48;
    v26 = [v48 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.uuidString.getter();
    (*(v15 + 8))(v17, v14);
    v27 = String._bridgeToObjectiveC()();

    [a5 setBeneficiaryIdentifier:v27];

    [a5 setManifest:a7];
    v28 = String._bridgeToObjectiveC()();
    [a5 setBeneficiarySetupToken:v28];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = *(Strong + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_controller);
      v31 = Strong;
      swift_unknownObjectRetain();

      v32 = swift_allocObject();
      v32[2] = v25;
      v32[3] = v24;
      v33 = v50;
      v32[4] = v49;
      v32[5] = v33;
      aBlock[4] = sub_10020E54C;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020E828;
      aBlock[3] = &unk_1003AF8D8;
      v34 = _Block_copy(aBlock);
      v35 = v24;
      swift_unknownObjectRetain();

      [v30 setupBeneficiaryWithInheritanceContext:a5 completion:v34];
      swift_unknownObjectRelease();

      _Block_release(v34);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100008D04(v36, qword_1003FAAA0);
    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136315138;
      aBlock[6] = a2;
      swift_errorRetain();
      sub_100005814(&unk_1003E1090, &qword_100344600);
      v41 = String.init<A>(describing:)();
      v43 = sub_10021145C(v41, v42, aBlock);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "Error generating access key: %s", v39, 0xCu);
      sub_10000839C(v40);
    }

    v49(0, a2);
  }
}

uint64_t sub_100203F90(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a1)
  {
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
      v22 = a4;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = sub_10021145C(v13, v14, &v23);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Error persisting manifest with Inheritance Controller: %s", v11, 0xCu);
      sub_10000839C(v12);

      a4 = v22;
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAA0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Successfully setup up beneficiary with IdMS", v19, 2u);
    }
  }

  [a2 setAccessKey:{a3, v22}];
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  return a4(v20, a1);
}

uint64_t sub_100204238(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v10 - 8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  __chkstk_darwin(v13);
  v15 = (v28 - v14);
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAA0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unable to determine Manatee state - aborting benficiary creation...", v19, 2u);
    }

    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    sub_10020E61C(a1, 1);
    a3(v15);
    return sub_100008D3C(v15, &unk_1003E10A0, &unk_100344480);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAA0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67109120;
      *(v24 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v22, v23, "Saving BeneficiaryInfoRecord in manatee? %{BOOL}d", v24, 8u);
    }

    v25 = swift_unknownObjectRetain();
    sub_1001E3A24(v25, a1 & 1, v12);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      sub_100040738(Strong + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController, v28);

      sub_1000080F8(v28, v28[3]);
      sub_1002183D4(v12, a3, a4);
      sub_100209FF4(v12, type metadata accessor for BeneficiaryInfoRecord);
      return sub_10000839C(v28);
    }

    else
    {
      return sub_100209FF4(v12, type metadata accessor for BeneficiaryInfoRecord);
    }
  }
}

void sub_10020459C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v49 = a5;
  v50 = a4;
  v7 = type metadata accessor for InheritanceInvitationRecord(0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v48 - v11;
  v13 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v14 = __chkstk_darwin(v13);
  v16 = (&v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = (&v48 - v17);
  sub_100012D04(a1, &v48 - v17, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    v51[0] = *v18;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for InheritanceError(0);
    if (swift_dynamicCast())
    {
      v48 = a3;
      v20 = v53;
      v51[0] = v53;
      v52 = 3;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v21 = v53;
      v52 = v53;
      v22 = static _BridgedStoredNSError.== infix(_:_:)();

      if (v22)
      {
        if (qword_1003D7F40 != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_100008D04(v23, qword_1003FAAA0);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.info.getter();
        v26 = os_log_type_enabled(v24, v25);
        v27 = v48;
        if (v26)
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "No existing invitation found. Creating new Invitation...", v28, 2u);
        }

        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v30 = Strong;
          sub_100204C74(v27, v50, v49);
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

    v40 = type metadata accessor for Logger();
    sub_100008D04(v40, qword_1003FAAA0);
    swift_errorRetain();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v51[0] = v44;
      *v43 = 136315138;
      v53 = v19;
      swift_errorRetain();
      v45 = String.init<A>(describing:)();
      v47 = sub_10021145C(v45, v46, v51);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v41, v42, "Error fetching invitation - %s", v43, 0xCu);
      sub_10000839C(v44);
    }

    *v16 = v19;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v50(v16);

    sub_100008D3C(v16, &qword_1003E1290, &unk_1003444C0);
  }

  else
  {
    sub_100209F8C(v18, v12, type metadata accessor for InheritanceInvitationRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAAA0);
    sub_100209F24(v12, v10, type metadata accessor for InheritanceInvitationRecord);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v51[0] = v35;
      *v34 = 136315138;
      v36 = sub_1001EEBA0();
      v38 = v37;
      sub_100209FF4(v10, type metadata accessor for InheritanceInvitationRecord);
      v39 = sub_10021145C(v36, v38, v51);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "Found existing invitation - %s", v34, 0xCu);
      sub_10000839C(v35);
    }

    else
    {

      sub_100209FF4(v10, type metadata accessor for InheritanceInvitationRecord);
    }

    sub_100209F24(v12, v16, type metadata accessor for InheritanceInvitationRecord);
    swift_storeEnumTagMultiPayload();
    v50(v16);
    sub_100008D3C(v16, &qword_1003E1290, &unk_1003444C0);
    sub_100209FF4(v12, type metadata accessor for InheritanceInvitationRecord);
  }
}

void sub_100204C74(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 handle];
  if (v8)
  {
    v9 = v8;
    oslog = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    type metadata accessor for ContactsHelper(0);
    swift_allocObject();
    v12 = v9;
    sub_100005814(&unk_1003D9820, &unk_10033EFD0);
    Dependency.init(dependencyId:config:)();
    sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
    Dependency.wrappedValue.getter();
    v13 = [v23 contactForHandle:v12];

    swift_unknownObjectRelease();
    if (v13)
    {
      v14 = [objc_allocWithZone(AALocalContactInfo) initWithHandle:v12 contact:v13];
    }

    else
    {

      v14 = 0;
    }

    sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24));
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = a2;
    v19[3] = a3;
    v19[4] = a1;
    v19[5] = oslog;
    v19[6] = v11;
    v19[7] = v14;
    v19[8] = v18;
    v20 = v14;

    swift_unknownObjectRetain();
    sub_10021E8F0(sub_100209C50, v19);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAAA0);
    osloga = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(osloga, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, osloga, v16, "Unable to find the handle for the beneficiary.", v17, 2u);
    }
  }
}

uint64_t sub_100204F80(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v63 = a8;
  v64 = a6;
  v66 = a7;
  v65 = type metadata accessor for UUID();
  v14 = *(v65 - 8);
  __chkstk_darwin(v65);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for InheritanceInvitationRecord(0);
  v18 = __chkstk_darwin(v17);
  v67 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v60 - v20;
  v22 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  __chkstk_darwin(v22);
  v24 = (&v60 - v23);
  if (a2)
  {
    *v24 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a3(v24);
    return sub_100008D3C(v24, &qword_1003E1290, &unk_1003444C0);
  }

  else
  {
    v61 = a1;
    v62 = a3;
    v60 = a4;
    v26 = [a5 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = v63;
    if (v63)
    {
      v28 = [v63 firstName];
      if (v28)
      {
        v29 = v28;
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      v33 = v14;
      v34 = v32;
      v35 = [v27 lastName];
      if (v35)
      {
        v36 = v35;
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v37;
      }

      else
      {
        v63 = 0;
        v27 = 0;
      }
    }

    else
    {
      v33 = v14;
      v63 = 0;
      v30 = 0;
      v34 = 0;
    }

    v38 = &v21[v17[6]];
    v39 = &v21[v17[7]];
    v40 = v33;
    v41 = *(v33 + 16);
    v42 = v65;
    v41(v21, v16, v65);
    v43 = &v21[v17[5]];
    v44 = v66;
    *v43 = v64;
    v43[1] = v44;
    *v38 = v30;
    v38[1] = v34;
    *v39 = v63;
    *(v39 + 1) = v27;
    *&v21[v17[8]] = 1;

    UUID.init()();
    (*(v40 + 8))(v16, v42);
    *&v21[v17[10]] = xmmword_10033F8D0;
    v45 = v17[11];
    v46 = v61;
    v21[v45] = v61 & 1;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100008D04(v47, qword_1003FAAA0);
    v48 = v67;
    sub_100209F24(v21, v67, type metadata accessor for InheritanceInvitationRecord);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v68[0] = v52;
      *v51 = 136315394;
      v53 = sub_1001EEBA0();
      v55 = v54;
      sub_100209FF4(v48, type metadata accessor for InheritanceInvitationRecord);
      v56 = sub_10021145C(v53, v55, v68);

      *(v51 + 4) = v56;
      *(v51 + 12) = 1024;
      *(v51 + 14) = v46 & 1;
      _os_log_impl(&_mh_execute_header, v49, v50, "New invitation created - %s in manatee? %{BOOL}d", v51, 0x12u);
      sub_10000839C(v52);
    }

    else
    {

      sub_100209FF4(v48, type metadata accessor for InheritanceInvitationRecord);
    }

    v57 = v62;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v59 = Strong;
      sub_100040738(Strong + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController, v68);

      sub_1000080F8(v68, v68[3]);
      sub_100215214(v21, v57, v60);
      sub_100209FF4(v21, type metadata accessor for InheritanceInvitationRecord);
      return sub_10000839C(v68);
    }

    else
    {
      return sub_100209FF4(v21, type metadata accessor for InheritanceInvitationRecord);
    }
  }
}

uint64_t sub_100205508(uint64_t a1, char a2, uint64_t a3, void (*a4)(void *, void), uint64_t a5)
{
  v10 = type metadata accessor for BenefactorInfoRecord(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  if (a2)
  {
    v30 = a4;
    v17 = *(a3 + 16);
    v18 = _swiftEmptyArrayStorage;
    if (v17)
    {
      v31 = a5;
      v33 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v19 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v20 = *(v11 + 72);
      do
      {
        sub_100209F24(v19, v16, type metadata accessor for BenefactorInfoRecord);
        sub_100209F24(v16, v14, type metadata accessor for BenefactorInfoRecord);
        v21 = objc_allocWithZone(AABenefactorInfo);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v23 = String._bridgeToObjectiveC()();
        [v21 initWithBeneficiaryID:isa handle:v23 status:*&v14[*(v10 + 24)]];

        sub_100209FF4(v16, type metadata accessor for BenefactorInfoRecord);
        sub_100209FF4(v14, type metadata accessor for BenefactorInfoRecord);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v19 += v20;
        --v17;
      }

      while (v17);
      v18 = v33;
    }

    v30(v18, 0);
  }

  else
  {
    v25 = *(a3 + 16);
    v26 = _swiftEmptyArrayStorage;
    if (v25)
    {
      v31 = a5;
      v33 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v27 = (a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)));
      v28 = *(v11 + 72);
      do
      {
        sub_100205820(v27, a1, &v32);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v27 = (v27 + v28);
        --v25;
      }

      while (v25);
      v26 = v33;
    }

    a4(v26, 0);
  }
}

void sub_100205820(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v44 = a3;
  v5 = type metadata accessor for UUID();
  v53 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v42 - v8;
  v10 = type metadata accessor for BenefactorInfoRecord(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  sub_100209F24(a1, v13, type metadata accessor for BenefactorInfoRecord);
  v14 = objc_allocWithZone(AABenefactorInfo);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v16 = String._bridgeToObjectiveC()();
  v17 = [v14 initWithBeneficiaryID:isa handle:v16 status:*&v13[*(v11 + 32)]];

  sub_100209FF4(v13, type metadata accessor for BenefactorInfoRecord);
  v18 = [v17 beneficiaryID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(a2 + 16) && (v19 = sub_10031AF8C(v9), (v20 & 1) != 0))
  {
    v21 = (*(a2 + 56) + 16 * v19);
    v22 = *v21;
    v23 = v21[1];
    sub_100015D6C(*v21, v23);
    v24 = v53;
    v25 = *(v53 + 8);
    v25(v9, v5);
    sub_100015D6C(v22, v23);
    sub_1001E92AC(v22, v23, &v45);
    if (v47)
    {
      v49 = v45;
      v50 = v46;
      v51 = v47;
      v52 = v48;
      sub_100016034(0, &qword_1003E26D0, AKInheritanceAccessKey_ptr);
      v26 = v43;
      (*(v24 + 16))(v43, v42, v5);
      v27 = sub_1001E9490(v26);
      [v17 setAccessKey:v27];
      sub_100012324(v22, v23);
      sub_100008D3C(&v45, &unk_1003E1660, &qword_100344608);

      goto LABEL_11;
    }

    sub_100012324(v22, v23);
  }

  else
  {
    v25 = *(v53 + 8);
    v25(v9, v5);
  }

  v42 = v25;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100008D04(v28, qword_1003FAAA0);
  v29 = v17;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v49 = v33;
    *v32 = 136315138;
    v34 = [v29 beneficiaryID];
    v35 = v17;
    v36 = v43;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10020E6A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v40 = v36;
    v17 = v35;
    v42(v40, v5);
    v41 = sub_10021145C(v37, v39, &v49);

    *(v32 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v30, v31, "No InheritanceAccessKeyRecord for beneficiaryID - %s.", v32, 0xCu);
    sub_10000839C(v33);
  }

LABEL_11:
  *v44 = v17;
}

uint64_t sub_100205D04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAA0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Fetching AccessKey info from Shared BeneficiaryInfoRecords", v9, 2u);
  }

  sub_1000080F8(&v3[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController], *&v3[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24]);
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v3;

  v11 = v3;
  sub_100216064(sub_100209F14, v10);
}

uint64_t sub_100205E68(uint64_t a1, char a2, char *a3, uint64_t a4, uint64_t a5)
{
  v82 = a5;
  v86 = type metadata accessor for UUID();
  v73 = *(v86 - 8);
  __chkstk_darwin(v86);
  v87 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v10 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = (&v71 - v11);
  v12 = type metadata accessor for BeneficiaryInfoRecord(0);
  v83 = *(v12 - 8);
  v84 = v12;
  v13 = __chkstk_darwin(v12);
  v85 = (&v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v75 = &v71 - v16;
  __chkstk_darwin(v15);
  v18 = &v71 - v17;
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      goto LABEL_45;
    }

    goto LABEL_3;
  }

  v71 = a4;
  v72 = a3;
  v26 = _swiftEmptyArrayStorage;
  v27 = sub_100309624(_swiftEmptyArrayStorage);
  v28 = *(a1 + 16);
  if (v28)
  {
    v29 = *(v83 + 72);
    v74 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    a1 += v74;
    v76 = (v10 + 8);
    v77 = (v10 + 16);
    a3 = v75;
    v78 = v29;
    v79 = OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager__accountStore;
    while (1)
    {
      sub_100209F24(a1, v18, type metadata accessor for BeneficiaryInfoRecord);
      v31 = &v18[*(v84 + 6)];
      v33 = *v31;
      v32 = *(v31 + 1);
      v34 = v81;
      v35 = v80;
      (*v77)(v80, v82 + v79, v81);

      Dependency.wrappedValue.getter();
      (*v76)(v35, v34);
      v36 = [*(*sub_1000080F8(v88 v88[3]) + 16)];
      if (!v36)
      {
        break;
      }

      v37 = v36;
      v38 = [v36 aa_altDSID];

      if (!v38)
      {
        break;
      }

      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      if (v33 == v39 && v32 == v41)
      {

        sub_10000839C(v88);
        a3 = v75;
      }

      else
      {
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_10000839C(v88);
        a3 = v75;
        if ((v43 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      sub_100209FF4(v18, type metadata accessor for BeneficiaryInfoRecord);
      v30 = v78;
LABEL_10:
      a1 += v30;
      if (!--v28)
      {
        goto LABEL_26;
      }
    }

    sub_10000839C(v88);
LABEL_20:
    sub_100209F8C(v18, v85, type metadata accessor for BeneficiaryInfoRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1002E0438(0, v26[2] + 1, 1);
      v26 = v89;
    }

    v46 = v26[2];
    v45 = v26[3];
    if (v46 >= v45 >> 1)
    {
      sub_1002E0438((v45 > 1), v46 + 1, 1);
      v26 = v89;
    }

    v26[2] = v46 + 1;
    v30 = v78;
    sub_100209F8C(v85, v26 + v74 + v46 * v78, type metadata accessor for BeneficiaryInfoRecord);
    goto LABEL_10;
  }

  a3 = v75;
LABEL_26:
  v82 = v26[2];
  if (!v82)
  {
LABEL_41:

    (v72)(v27, 0);
  }

  v47 = 0;
  v84 = &a3[*(v84 + 7)];
  v81 = v26 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
  v85 = (v73 + 16);
  v80 = (v73 + 8);
  while (v47 < v26[2])
  {
    sub_100209F24(v81 + *(v83 + 72) * v47, a3, type metadata accessor for BeneficiaryInfoRecord);
    v51 = *v85;
    v52 = v87;
    (*v85)(v87, a3, v86);
    v54 = *v84;
    v53 = *(v84 + 1);
    sub_100015D6C(*v84, v53);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v88[0] = v27;
    v56 = sub_10031AF8C(v52);
    v58 = v27[2];
    v59 = (v57 & 1) == 0;
    v60 = __OFADD__(v58, v59);
    v61 = v58 + v59;
    if (v60)
    {
      goto LABEL_43;
    }

    a1 = v57;
    if (v27[3] < v61)
    {
      sub_1002CE280(v61, v55);
      v56 = sub_10031AF8C(v87);
      if ((a1 & 1) != (v62 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_36:
      v27 = v88[0];
      if (a1)
      {
        goto LABEL_28;
      }

      goto LABEL_37;
    }

    if (v55)
    {
      goto LABEL_36;
    }

    v70 = v56;
    sub_1002D1054();
    v56 = v70;
    v27 = v88[0];
    if (a1)
    {
LABEL_28:
      v48 = (v27[7] + 16 * v56);
      v49 = *v48;
      v50 = v48[1];
      *v48 = v54;
      v48[1] = v53;
      sub_100012324(v49, v50);
      (*v80)(v87, v86);
      sub_100209FF4(a3, type metadata accessor for BeneficiaryInfoRecord);
      goto LABEL_29;
    }

LABEL_37:
    v27[(v56 >> 6) + 8] |= 1 << v56;
    v63 = v73;
    v64 = v56;
    a1 = v86;
    v65 = v87;
    v51(v27[6] + *(v73 + 72) * v56, v87, v86);
    v66 = (v27[7] + 16 * v64);
    *v66 = v54;
    v66[1] = v53;
    v67 = v65;
    a3 = v75;
    (*(v63 + 8))(v67, a1);
    sub_100209FF4(a3, type metadata accessor for BeneficiaryInfoRecord);
    v68 = v27[2];
    v60 = __OFADD__(v68, 1);
    v69 = v68 + 1;
    if (v60)
    {
      goto LABEL_44;
    }

    v27[2] = v69;
LABEL_29:
    if (v82 == ++v47)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  swift_once();
LABEL_3:
  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAAA0);
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  sub_1000399DC(a1, 1);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = _convertErrorToNSError(_:)();
    *(v22 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&_mh_execute_header, v20, v21, "Error fetching beneficiaries from storage: %@", v22, 0xCu);
    sub_100008D3C(v23, &unk_1003D9140, &qword_10033E640);
  }

  return (a3)(a1, 1);
}

void sub_1002066F8(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a1)
  {
    v6 = _convertErrorToNSError(_:)();
    if (AAUnderTest.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if ((AAUnderTest.getter() & 1) == 0)
  {
LABEL_3:
    sub_100005814(&qword_1003E30D0, &unk_100340690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033E5C0;
    strcpy((inited + 32), "inviteAction");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    String.init<A>(describing:)();
    v8 = String._bridgeToObjectiveC()();

    *(inited + 48) = v8;
    strcpy((inited + 56), "numOfRelation");
    *(inited + 70) = -4864;
    *(inited + 72) = Int._bridgeToObjectiveC()();
    sub_1003093D0(inited);
    swift_setDeallocating();
    sub_100005814(&unk_1003E8C10, &unk_100344990);
    swift_arrayDestroy();
    dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();
  }

LABEL_4:

  if (a4)
  {
    a4(a1);
  }
}

uint64_t sub_1002068A0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v135 = a8;
  v127 = a7;
  v133 = a6;
  v132 = a5;
  v131 = a4;
  v136 = a9;
  v137 = a3;
  v11 = type metadata accessor for InheritanceInvitationResponseMessage(0);
  v12 = __chkstk_darwin(v11);
  v134 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v122 - v15;
  v17 = __chkstk_darwin(v14);
  v128 = &v122 - v18;
  __chkstk_darwin(v17);
  v130 = &v122 - v19;
  v138 = type metadata accessor for UUID();
  v20 = *(v138 - 8);
  v21 = __chkstk_darwin(v138);
  v23 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v129 = &v122 - v24;
  v25 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  __chkstk_darwin(v25);
  v27 = (&v122 - v26);
  sub_100012D04(a1, &v122 - v26, &unk_1003E1DD0, &qword_1003444D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAA0);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = _convertErrorToNSError(_:)();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "Error responding to the invitation: %@", v32, 0xCu);
      sub_100008D3C(v33, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    (v135)(v28);
  }

  else
  {
    v125 = v11;
    v123 = type metadata accessor for BenefactorInfoRecord(0);
    v36 = swift_allocBox();
    v124 = v37;
    sub_100209F8C(v27, v37, type metadata accessor for BenefactorInfoRecord);
    v38 = sub_1000080F8(a2, a2[3]);
    v39 = *v38;
    v40 = [*(*v38 + 16) aa_primaryAppleAccount];
    v41 = a2;
    v126 = v36;
    if (v40 && (v42 = *(v39 + 16), v43 = v40, v44 = [v40 aa_altDSID], v45 = objc_msgSend(v42, "aa_authKitAccountForAltDSID:", v44), v43, v44, v45) && (v46 = objc_msgSend(*(v39 + 24), "canBeBeneficiaryForAccount:", v45), v45, v46))
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      v134 = sub_100008D04(v47, qword_1003FAAA0);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "Notifying owner of invitation response...", v50, 2u);
      }

      v51 = sub_1000080F8(a2 + 10, a2[13]);
      v52 = (v124 + *(v123 + 20));
      v54 = *v52;
      v53 = v52[1];
      v133 = v54;
      v132 = v53;
      v137 = v20;
      v55 = *(v20 + 16);
      v56 = v129;
      v57 = v138;
      v55(v129);
      sub_10016FFDC(v41, v140);
      v58 = swift_allocObject();
      v59 = v135;
      v60 = v136;
      *(v58 + 16) = v36;
      *(v58 + 24) = v59;
      *(v58 + 32) = v60;
      v61 = v127 & 1;
      *(v58 + 40) = v127 & 1;
      v62 = v140[5];
      *(v58 + 112) = v140[4];
      *(v58 + 128) = v62;
      *(v58 + 144) = v140[6];
      *(v58 + 160) = v141;
      v63 = v140[1];
      *(v58 + 48) = v140[0];
      *(v58 + 64) = v63;
      v64 = v140[3];
      *(v58 + 80) = v140[2];
      *(v58 + 96) = v64;
      v135 = *v51;
      v65 = v125;
      v66 = v130;
      (v55)(&v130[*(v125 + 20)], v56, v57);
      *v66 = 0;
      v66[*(v65 + 24)] = v61;
      v67 = v66;
      v68 = v132;
      v69 = v128;
      sub_100209F24(v67, v128, type metadata accessor for InheritanceInvitationResponseMessage);

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v139 = v73;
        *v72 = 136315138;
        v74 = sub_1001DB654();
        v76 = v75;
        sub_100209FF4(v69, type metadata accessor for InheritanceInvitationResponseMessage);
        v77 = sub_10021145C(v74, v76, &v139);

        *(v72 + 4) = v77;
        _os_log_impl(&_mh_execute_header, v70, v71, "Created invitation response message - %s.\nResponding to invitation...", v72, 0xCu);
        sub_10000839C(v73);
      }

      else
      {

        sub_100209FF4(v69, type metadata accessor for InheritanceInvitationResponseMessage);
      }

      v113 = sub_1000080F8((v135 + 16), *(v135 + 40));
      v114 = v138;
      if (_swiftEmptyArrayStorage >> 62)
      {
        v120 = v113;
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_10013446C(_swiftEmptyArrayStorage);
          v115 = v121;
        }

        else
        {
          v115 = &_swiftEmptySetSingleton;
        }

        v113 = v120;
        v114 = v138;
      }

      else
      {
        v115 = &_swiftEmptySetSingleton;
      }

      v116 = *v113;

      v117 = v130;
      sub_1002B4B0C(v130, v133, v68, 0, 0, v115, v116, sub_1002096A4, v58);

      sub_100209FF4(v117, type metadata accessor for InheritanceInvitationResponseMessage);
      (*(v137 + 8))(v129, v114);
    }

    else
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v78 = type metadata accessor for Logger();
      v79 = sub_100008D04(v78, qword_1003FAAA0);
      v80 = v138;
      v135 = *(v20 + 16);
      (v135)(v23, v137, v138);
      v136 = v79;
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v130 = v41;
        v84 = v83;
        v85 = swift_slowAlloc();
        *&v140[0] = v85;
        *v84 = 136315138;
        sub_10020E6A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v86 = dispatch thunk of CustomStringConvertible.description.getter();
        v88 = v87;
        (*(v20 + 8))(v23, v138);
        v89 = sub_10021145C(v86, v88, v140);
        v80 = v138;

        *(v84 + 4) = v89;
        _os_log_impl(&_mh_execute_header, v81, v82, "User is not eligible to be a beneficiary, replying rejected for beneficiaryID: %s", v84, 0xCu);
        sub_10000839C(v85);

        v41 = v130;
      }

      else
      {

        (*(v20 + 8))(v23, v80);
      }

      v90 = sub_1000080F8(v41 + 10, v41[13]);
      v91 = (v124 + *(v123 + 20));
      v92 = v91[1];
      v138 = *v91;
      v93 = swift_allocObject();
      v94 = v131;
      v95 = v132;
      v93[2] = v131;
      v93[3] = v95;
      v96 = v133;
      v93[4] = v133;
      v97 = *v90;
      v98 = v125;
      (v135)(&v16[*(v125 + 20)], v137, v80);
      *v16 = 0;
      v16[*(v98 + 24)] = 0;
      v99 = v134;
      sub_100209F24(v16, v134, type metadata accessor for InheritanceInvitationResponseMessage);

      v100 = v94;
      sub_100083AA0(v95, v96);
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v137 = v92;
        v105 = v104;
        *&v140[0] = v104;
        *v103 = 136315138;
        v106 = sub_1001DB654();
        v108 = v107;
        sub_100209FF4(v99, type metadata accessor for InheritanceInvitationResponseMessage);
        v109 = sub_10021145C(v106, v108, v140);

        *(v103 + 4) = v109;
        _os_log_impl(&_mh_execute_header, v101, v102, "Created invitation response message - %s.\nResponding to invitation...", v103, 0xCu);
        sub_10000839C(v105);
        v92 = v137;
      }

      else
      {

        sub_100209FF4(v99, type metadata accessor for InheritanceInvitationResponseMessage);
      }

      v110 = sub_1000080F8((v97 + 16), *(v97 + 40));
      if (_swiftEmptyArrayStorage >> 62)
      {
        v118 = v110;
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_10013446C(_swiftEmptyArrayStorage);
          v111 = v119;
        }

        else
        {
          v111 = &_swiftEmptySetSingleton;
        }

        v110 = v118;
      }

      else
      {
        v111 = &_swiftEmptySetSingleton;
      }

      v112 = *v110;

      sub_1002B4B0C(v16, v138, v92, 0, 0, v111, v112, sub_100208834, v93);

      sub_100209FF4(v16, type metadata accessor for InheritanceInvitationResponseMessage);
    }
  }
}

void sub_100207624(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1)
  {
    v5 = _convertErrorToNSError(_:)();
    if (AAUnderTest.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if ((AAUnderTest.getter() & 1) == 0)
  {
LABEL_3:
    sub_100005814(&qword_1003E30D0, &unk_100340690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033E5C0;
    strcpy((inited + 32), "inviteAction");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    String.init<A>(describing:)();
    v7 = String._bridgeToObjectiveC()();

    *(inited + 48) = v7;
    strcpy((inited + 56), "numOfRelation");
    *(inited + 70) = -4864;
    *(inited + 72) = Int._bridgeToObjectiveC()();
    sub_1003093D0(inited);
    swift_setDeallocating();
    sub_100005814(&unk_1003E8C10, &unk_100344990);
    swift_arrayDestroy();
    dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();
  }

LABEL_4:

  if (a3)
  {
    a3(a1);
  }
}

uint64_t sub_1002077C4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, char a5, uint64_t a6)
{
  v43 = a3;
  v44 = a4;
  v10 = type metadata accessor for BenefactorInfoRecord(0);
  __chkstk_darwin(v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_projectBox();
  if (a1)
  {
    swift_beginAccess();
    v14 = (v13 + *(v10 + 20));
    v15 = *v14;
    v16 = v14[1];
    v45 = 0xD000000000000028;
    v46 = 0x80000001003311C0;
    swift_errorRetain();
    v17._countAndFlagsBits = v15;
    v17._object = v16;
    String.append(_:)(v17);

    v18._countAndFlagsBits = 58;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);

    v19 = v45;
    v20 = v46;
    swift_getErrorValue();
    v21 = Error.localizedDescription.getter();
    v23 = v22;
    v45 = v19;
    v46 = v20;

    v24._countAndFlagsBits = v21;
    v24._object = v23;
    String.append(_:)(v24);

    v26 = v45;
    v25 = v46;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAA0);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45 = v31;
      *v30 = 136315138;
      v32 = sub_10021145C(v26, v25, &v45);

      *(v30 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s", v30, 0xCu);
      sub_10000839C(v31);
    }

    else
    {
    }

    swift_errorRetain();
    v43(a1);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAAA0);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Notified owner of invitation response.", v36, 2u);
    }

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Updating status of Benefactor...", v39, 2u);
    }

    if (a5)
    {
      v40 = 2;
    }

    else
    {
      v40 = 4;
    }

    swift_beginAccess();
    *(v13 + *(v10 + 24)) = v40;
    sub_1000080F8((a6 + 40), *(a6 + 64));
    swift_beginAccess();
    sub_100209F24(v13, v12, type metadata accessor for BenefactorInfoRecord);
    v41 = swift_allocObject();
    v41[2] = v43;
    v41[3] = v44;
    v41[4] = a2;

    sub_10021BA80(v12, sub_1002096B8, v41);

    return sub_100209FF4(v12, type metadata accessor for BenefactorInfoRecord);
  }
}

uint64_t sub_100207C98(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  __chkstk_darwin(v6);
  v8 = (&v26[-1] - v7);
  sub_100012D04(a1, &v26[-1] - v7, &unk_1003E1DD0, &qword_1003444D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAAA0);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v9;
      v26[0] = v14;
      *v13 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v15 = String.init<A>(describing:)();
      v17 = sub_10021145C(v15, v16, v26);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error updating Benefactor status - %s", v13, 0xCu);
      sub_10000839C(v14);
    }

    swift_errorRetain();
    a2(v9);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAA0);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      v23 = type metadata accessor for BenefactorInfoRecord(0);
      v24 = swift_projectBox();
      swift_beginAccess();
      *(v22 + 4) = *(v24 + *(v23 + 24));

      _os_log_impl(&_mh_execute_header, v20, v21, "Updated Benefactor status to %ld", v22, 0xCu);
    }

    else
    {
    }

    a2(0);
    return sub_100008D3C(v8, &unk_1003E1DD0, &qword_1003444D0);
  }
}

void sub_100208014(uint64_t a1, void (*a2)(Class, uint64_t), uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v7 = type metadata accessor for BenefactorInfoRecord(0);
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAAA0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Changing CK record status to declined...", v13, 2u);
  }

  v14 = objc_autoreleasePoolPush();
  v15 = sub_1002E1D08(*(a1 + *(v7 + 32)), *(a1 + *(v7 + 32) + 8));
  if (!v15)
  {
    v15 = sub_10017D26C(a1);
  }

  v31 = v15;
  v16 = v15;
  sub_1001E2B8C(&v31);
  objc_autoreleasePoolPop(v14);
  v17 = CKRecord.recordType.getter();
  v19 = v18;

  v20 = v17 == 0xD00000000000001FLL && 0x80000001003303D0 == v19;
  if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_100209F24(a1, v9, type metadata accessor for BenefactorInfoRecord);
    sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
    v21 = swift_allocObject();
    *(v21 + 16) = v29;
    *(v21 + 24) = a3;

    sub_1002799AC(v9, sub_10021EEC4, 0, 0, sub_10020E210, v21);

    sub_100209FF4(v9, type metadata accessor for BenefactorInfoRecord);
    return;
  }

  if (v17 == 0xD00000000000001BLL && 0x8000000100330380 == v19)
  {

    goto LABEL_17;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
LABEL_17:
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Invalid Record! Failed to change CKRecord trusted contact status to declined.";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v23, v24, v26, v25, 2u);

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Cannot recognize record type! Failed to change CKRecord trusted contact status to declined.";
    goto LABEL_21;
  }

LABEL_22:

  type metadata accessor for InheritanceError(0);
  v30 = 2;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
  _BridgedStoredNSError.init(_:userInfo:)();
  v27 = v31;
  v29(v31, 1);
}

uint64_t sub_10020847C(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = sub_100005814(a4, a5);
  __chkstk_darwin(v9);
  v11 = (&v24 - v10);
  sub_100012D04(a1, &v24 - v10, a4, a5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAAA0);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = _convertErrorToNSError(_:)();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to update CKRecord record status to removed: %@", v16, 0xCu);
      sub_100008D3C(v17, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    a2(v12, 1);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAAA0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Successfully to updated CKRecord record status!", v23, 2u);
    }

    [objc_opt_self() postInheritanceContactChangedNotification];
    a2(0, 0);
    return sub_100008D3C(v11, a4, a5);
  }
}

uint64_t sub_100208774()
{
  v0 = sub_100005814(&qword_1003E31F8, &qword_100346900);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1003E3200;
    v3 = &unk_100346908;
  }

  else
  {
    v2 = &unk_1003E4DE0;
    v3 = &qword_1003432F0;
  }

  return sub_100005814(v2, v3);
}

uint64_t sub_1002087EC()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100208840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[3] = type metadata accessor for InheritanceStorageController(0);
  v18[4] = &off_1003B0008;
  v18[0] = a1;
  v6 = type metadata accessor for DaemonFamilyRequester();
  v17[3] = v6;
  v17[4] = &off_1003B3A18;
  v17[0] = a2;
  sub_100040738(v18, a3 + OBJC_IVAR____TtC13appleaccountd24InheritanceFamilyManager_inheritanceStorage);
  sub_100040738(v17, v16);
  v7 = sub_10003E968(v16, v16[3]);
  __chkstk_darwin(v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v14 = v6;
  v15 = &off_1003B3A18;
  *&v13 = v11;
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_10000839C(v17);
  sub_10000839C(v18);
  sub_10003E950(&v13, a3 + 16);
  sub_10000839C(v16);
  return a3;
}

uint64_t sub_100208A08(uint64_t a1, uint64_t a2)
{
  v19 = type metadata accessor for InheritanceStorageController(0);
  v20 = &off_1003B0008;
  v18[0] = a1;
  v16 = type metadata accessor for DaemonFamilyRequester();
  v17 = &off_1003B3A18;
  v15[0] = a2;
  type metadata accessor for InheritanceFamilyManager(0);
  v4 = swift_allocObject();
  v5 = sub_10003E968(v18, v19);
  __chkstk_darwin(v5);
  v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_10003E968(v15, v16);
  __chkstk_darwin(v9);
  v11 = (v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_100208840(*v7, *v11, v4);
  sub_10000839C(v15);
  sub_10000839C(v18);
  return v13;
}

void sub_100208BDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6, uint64_t a7)
{
  v14 = sub_1001FA348();
  if (v14)
  {
    v15 = v14;
    v35 = a6;
    v16 = a5;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAA0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Creating AccessKey...", v20, 2u);
    }

    v21 = *(a7 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_securityManager);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v16;
    v23[3] = v35;
    v23[4] = v15;
    v23[5] = a2;
    v23[6] = a1;
    v23[7] = a3;
    v23[8] = a4;
    v23[9] = v22;
    aBlock[4] = sub_10020E4D0;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100015858;
    aBlock[3] = &unk_1003AF888;
    v24 = _Block_copy(aBlock);

    v25 = v15;
    swift_unknownObjectRetain();
    v26 = a1;

    [v21 createInheritanceAccessKeyForContact:a2 completion:v24];
    _Block_release(v24);
  }

  else
  {
    type metadata accessor for InheritanceError(0);
    aBlock[6] = 5;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAA0);
    v28 = aBlock[0];
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      v33 = v28;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&_mh_execute_header, v29, v30, "Error creating inheritanceContext: %@", v31, 0xCu);
      sub_100008D3C(v32, &unk_1003D9140, &qword_10033E640);
    }

    v25 = v28;
    a5(0, v28);
  }
}

void sub_100208FC0(void *a1, uint64_t (*a2)(uint64_t))
{
  if (a1)
  {
    v18 = a1;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for InheritanceError(0);
    if (swift_dynamicCast())
    {
      v18 = v17;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v4 = static _BridgedStoredNSError.== infix(_:_:)();

      if (v4)
      {
        if (qword_1003D7F40 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        sub_100008D04(v5, qword_1003FAAA0);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, v7, "CleanupBeneficiary completed.", v8, 2u);
        }

        [objc_opt_self() postInheritanceContactChangedNotification];
        sub_1001FD8EC(0, a2);

        return;
      }
    }
  }

  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAAA0);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    swift_errorRetain();
    sub_100005814(&unk_1003E1090, &qword_100344600);
    v14 = String.init<A>(describing:)();
    v16 = sub_10021145C(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "CleanupBeneficiary completed with error : %s", v12, 0xCu);
    sub_10000839C(v13);
  }

  [objc_opt_self() postInheritanceContactChangedNotification];
  sub_1001FD8EC(a1, a2);
}

uint64_t sub_100209344(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v26 = a4;
  v27 = a1;
  v29 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v28 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005814(&qword_1003E30D8, &qword_1003468D8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v16 = qword_1003D7F40;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAA0);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v25 = a3;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Starting cleaning up beneficiary...", v20, 2u);
    a3 = v25;
  }

  (*(v13 + 16))(v15, v26 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager__cleanupController, v12);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v15, v12);
  v21 = v30;
  v22 = [v27 beneficiaryID];
  v23 = v28;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001F44D0(v23, v29, a3, v21, a5, a6);

  (*(v10 + 8))(v23, v9);
}

uint64_t sub_10020964C()
{

  sub_10000839C(v0 + 6);
  sub_10000839C(v0 + 11);
  sub_10000839C(v0 + 16);

  return _swift_deallocObject(v0, 168);
}

uint64_t sub_1002096D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002096EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100209770()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002097B8()
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

uint64_t sub_1002098D8()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100209940()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100209978()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002099B8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

uint64_t sub_1002099EC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100209AB0(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100200D58(a1, v4, v5, v6);
}

uint64_t sub_100209B50()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100209BA4()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100209BF8()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_100209C88()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);

  v6(v4 + v1[11], v5);
  sub_100012324(*(v4 + v1[12]), *(v4 + v1[12] + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100209DE0(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceInvitationRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002001D8(a1, v1 + v4, v5);
}

uint64_t sub_100209F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100209F8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100209FF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_10020A08C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v14 = sub_100005814(&unk_1003E3220, &qword_100346928);
  v80 = *(v14 - 8);
  v81 = v14;
  __chkstk_darwin(v14);
  v79 = &v78 - v15;
  v86 = type metadata accessor for DependencyRegistry.Entry();
  v93 = *(v86 - 8);
  __chkstk_darwin(v86);
  v17 = (&v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v108 = type metadata accessor for InheritanceStorageController(0);
  v109 = &off_1003B0008;
  v107[0] = a2;
  v106[3] = type metadata accessor for DaemonIDSMessenger();
  v106[4] = &off_1003B2BB0;
  v106[0] = a4;
  v104 = type metadata accessor for InheritanceSetupMessenger();
  v105 = &off_1003AE2A0;
  v103[0] = a5;
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  type metadata accessor for InheritanceCleanupController(0);
  Dependency.init(dependencyId:config:)();
  type metadata accessor for BeneficiaryDeclinedStatusHandler();
  Dependency.init(dependencyId:config:)();
  type metadata accessor for InheritanceInvitationResponseHandler();
  Dependency.init(dependencyId:config:)();
  type metadata accessor for InheritanceInvitationHandler(0);
  Dependency.init(dependencyId:config:)();
  type metadata accessor for InheritanceAccessKeyMessageHandler();
  Dependency.init(dependencyId:config:)();
  type metadata accessor for BeneficiaryRemovedMessageHandler();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E03B0, &qword_100343D98);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E0390, &qword_100346800);
  Dependency.init(dependencyId:config:)();
  v18 = &a7[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_ownerHandle];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&a7[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_controller] = a1;
  sub_100040738(v107, &a7[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController]);
  *&a7[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_securityController] = a6;
  *&a7[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_messagingService] = a3;
  sub_100040738(v106, &a7[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_idsMessenger]);
  sub_100040738(v103, &a7[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_setupMessenger]);
  v84 = type metadata accessor for InheritanceCloudSharingController(0);
  v19 = swift_allocObject();
  v20 = a1;

  swift_unknownObjectRetain();
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  Dependency.init(dependencyId:config:)();
  v83 = OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_cloudSharingController;
  v87 = a7;
  *&a7[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_cloudSharingController] = v19;
  type metadata accessor for InheritanceSecurityManager();
  v21 = swift_allocObject();
  *(v21 + 16) = a6;
  v85 = a6;
  v82 = OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_securityManager;
  *&a7[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_securityManager] = v21;
  v92 = type metadata accessor for DependencyRegistry();
  sub_100005814(&qword_1003E0F80, &unk_100344570);
  v17[3] = swift_getObjectType();
  *v17 = v20;
  v91 = enum case for DependencyRegistry.Entry.exact(_:);
  v22 = v93;
  v23 = *(v93 + 104);
  v89 = v93 + 104;
  v24 = v86;
  v23(v17);
  v78 = v20;

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v88 = *(v22 + 8);
  v25 = v24;
  v88(v17, v24);
  v26 = v22 + 8;
  sub_100005814(&unk_1003E01A0, &qword_1003443F0);
  v27 = v108;
  v28 = sub_1000080F8(v107, v108);
  v17[3] = v27;
  v29 = sub_10000DBEC(v17);
  (*(*(v27 - 8) + 16))(v29, v28, v27);
  v30 = v91;
  v90 = v23;
  (v23)(v17, v91, v25);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v31 = v25;
  v32 = v25;
  v33 = v88;
  v88(v17, v31);
  type metadata accessor for InheritanceSecurityController(0);
  v34 = v85;
  v17[3] = swift_getObjectType();
  *v17 = v34;
  (v23)(v17, v30, v32);

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v33(v17, v32);
  v93 = v26;
  sub_100005814(&unk_1003E0220, &unk_100344580);
  v35 = v104;
  v36 = sub_1000080F8(v103, v104);
  v17[3] = v35;
  v37 = sub_10000DBEC(v17);
  (*(*(v35 - 8) + 16))(v37, v36, v35);
  v38 = v91;
  v39 = v86;
  v40 = v90;
  (v90)(v17, v91, v86);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v88(v17, v39);
  sub_100005814(&unk_1003E0210, &qword_100343D90);
  v41 = v87;
  v42 = *&v87[v82];
  v17[3] = swift_getObjectType();
  *v17 = v42;
  v40(v17, v38, v39);
  swift_unknownObjectRetain();
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v43 = v39;
  v44 = v39;
  v45 = v88;
  v88(v17, v44);
  sub_100005814(&qword_1003E0F90, &unk_100343CF0);
  v46 = *&v41[v83];
  v17[3] = v84;
  *v17 = v46;
  (v90)(v17, v38, v43);

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v45(v17, v43);
  sub_100005814(&qword_1003E1188, &unk_100346930);
  v47 = type metadata accessor for BeneficiaryAccessKeyRepairHandlerFactory();
  v48 = swift_allocObject();
  v17[3] = v47;
  v17[4] = sub_10020E6A0(&qword_1003E3230, type metadata accessor for BeneficiaryAccessKeyRepairHandlerFactory, &unk_100343BF4);
  *v17 = v48;
  v49 = v90;
  (v90)(v17, enum case for DependencyRegistry.Entry.factory(_:), v43);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v45(v17, v43);
  sub_100005814(&unk_1003E1198, &qword_100344650);
  v50 = type metadata accessor for BeneficiaryInfoVerifier();
  v51 = swift_allocObject();
  v17[3] = v50;
  *v17 = v51;
  (v49)(v17, v91, v43);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v45(v17, v43);
  sub_100040738(v107, &v98);
  type metadata accessor for DaemonFamilyRequester();
  v52 = swift_allocObject();
  v53 = sub_10003E968(&v98, *(&v99 + 1));
  __chkstk_darwin(v53);
  v55 = (&v78 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = sub_100208A08(*v55, v52);
  sub_10000839C(&v98);
  v58 = v87;
  v59 = &v87[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_familyManager];
  v59[3] = type metadata accessor for InheritanceFamilyManager(0);
  v59[4] = &off_1003B3860;
  *v59 = v57;
  v60 = [objc_allocWithZone(AATrustedContactFlowPresenter) init];
  v61 = v58;
  *&v58[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_flowPresenter] = v60;
  v62 = type metadata accessor for DaemonAccountStore();
  v63 = swift_allocObject();
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v65 = result;

    *(v63 + 16) = v65;
    *(v63 + 24) = [objc_opt_self() sharedInstance];
    v96 = v62;
    v97 = &off_1003AB0B8;
    *&v95 = v63;
    sub_100040738(v107, v100 + 8);
    sub_100040738(v103, v101);
    sub_10003E950(&v95, &v98);
    v66 = &v61[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_invitationResponder];
    v67 = v101[0];
    v68 = v101[1];
    *(v66 + 4) = v100[2];
    *(v66 + 5) = v67;
    *(v66 + 6) = v68;
    *(v66 + 14) = v102;
    v69 = v99;
    *v66 = v98;
    *(v66 + 1) = v69;
    v70 = v100[1];
    *(v66 + 2) = v100[0];
    *(v66 + 3) = v70;
    v71 = type metadata accessor for InheritanceRequestManager(0);
    v94.receiver = v61;
    v94.super_class = v71;
    v72 = objc_msgSendSuper2(&v94, "init");
    v73 = *&v72[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_messagingService];
    v75 = v79;
    v74 = v80;
    v76 = v81;
    (*(v80 + 16))(v79, &v72[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager__messageProcessor], v81);
    v77 = v72;
    swift_unknownObjectRetain();
    Dependency.wrappedValue.getter();
    (*(v74 + 8))(v75, v76);
    [v73 setInheritanceDelegate:v98];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_10000839C(v106);
    sub_10000839C(v103);
    sub_10000839C(v107);
    return v77;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10020ACEC(void *a1)
{
  sub_100208774();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10033E5C0;
  *(inited + 32) = sub_100016034(0, &qword_1003E0C40, AABeneficiaryInfo_ptr);
  *(inited + 40) = sub_100016034(0, &qword_1003D9250, NSString_ptr);
  sub_100256FF4(inited);
  v2 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArray:isa];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10020C62C(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = sub_1001FA348();
  if (v5)
  {
    v6 = v5;
    v7 = *(a1 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_controller);
    v8 = swift_allocObject();
    v8[2] = sub_10005B8DC;
    v8[3] = v4;
    aBlock[4] = sub_10020E628;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E7C0;
    aBlock[3] = &unk_1003AF9A0;
    v9 = _Block_copy(aBlock);

    [v7 fetchManifestOptionsWithInheritanceContext:v6 completion:v9];
    _Block_release(v9);
  }

  else
  {
    type metadata accessor for InheritanceError(0);
    aBlock[6] = 5;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v10 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v10);
  }
}

void sub_10020C81C(void *a1, void *a2, void *a3, uint64_t a4, char *a5, void (**a6)(const void *, void, void *))
{
  v52 = a3;
  v53 = a5;
  v54 = a1;
  v55 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = swift_allocObject();
  *(v56 + 16) = a6;
  v51 = a6;
  _Block_copy(a6);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100008D04(v12, qword_1003FAAA0);
  swift_unknownObjectRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v16 = 136315394;
    v57 = type metadata accessor for InheritanceRequestManager(0);
    sub_100005814(&unk_1003E30E0, qword_1003468E0);
    v17 = String.init<A>(describing:)();
    v19 = sub_10021145C(v17, v18, &v58);
    *&v50 = v13;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = [a2 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10020E6A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v9 + 8))(v11, v8);
    v25 = sub_10021145C(v22, v24, &v58);

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s - Setup Beneficiary with UUID - %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  v26 = objc_allocWithZone(type metadata accessor for InheritanceInviteAnalyticsEvent(0));
  sub_100005814(&qword_1003E30D0, &unk_100340690);
  inited = swift_initStackObject();
  v50 = xmmword_10033EB30;
  *(inited + 16) = xmmword_10033EB30;
  *(inited + 32) = 0x766F6D6552736177;
  *(inited + 40) = 0xEF6E6F6974634165;
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  sub_1003093D0(inited);
  swift_setDeallocating();
  sub_100008D3C(inited + 32, &unk_1003E8C10, &unk_100344990);
  v28 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = sub_10005A77C;
  v29[4] = v56;

  v30 = v28;
  v31 = [a2 handle];
  if (v31)
  {
    v32 = v31;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = v53;
    sub_1000080F8(&v53[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController], *&v53[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24]);
    v37 = swift_allocObject();
    v37[2] = sub_10020E394;
    v37[3] = v29;
    v38 = v54;
    v37[4] = v36;
    v37[5] = v38;
    v39 = v52;
    v37[6] = a2;
    v37[7] = v39;
    v52 = v30;
    v37[8] = v55;
    v40 = swift_allocObject();
    v40[2] = v33;
    v40[3] = v35;
    v40[4] = sub_10020E3F8;
    v40[5] = v37;
    swift_unknownObjectRetain();

    v41 = v36;
    v42 = v38;

    sub_100216650(sub_10020E44C, v40);
  }

  else
  {
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Contact handle is nil.", v45, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v57 = 2108;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v46 = v58;
    v47 = _convertErrorToNSError(_:)();
    if ((AAUnderTest.getter() & 1) == 0)
    {
      v48 = swift_initStackObject();
      *(v48 + 16) = v50;
      strcpy((v48 + 32), "numOfRelation");
      *(v48 + 46) = -4864;
      *(v48 + 48) = Int._bridgeToObjectiveC()();
      sub_1003093D0(v48);
      swift_setDeallocating();
      sub_100008D3C(v48 + 32, &unk_1003E8C10, &unk_100344990);
      dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();
    }

    v49 = _convertErrorToNSError(_:)();
    v51[2](v51, 0, v49);
  }
}

void sub_10020CF50(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  v7 = sub_1001FA348();
  if (v7)
  {
    v8 = v7;
    [v7 setManifest:a1];
    v9 = *(a2 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_controller);
    v10 = swift_allocObject();
    v10[2] = sub_10005B8F8;
    v10[3] = v6;
    aBlock[4] = sub_10020E330;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E828;
    aBlock[3] = &unk_1003AF770;
    v11 = _Block_copy(aBlock);

    [v9 updateBeneficiaryWithInheritanceContext:v8 completion:v11];
    _Block_release(v11);
  }

  else
  {
    type metadata accessor for InheritanceError(0);
    aBlock[6] = 5;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v12 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v12);
  }
}

void sub_10020D150(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  v7 = sub_1001FA348();
  if (v7)
  {
    v8 = v7;
    v9 = *(a2 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_securityManager);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    v11[2] = sub_10005B8F8;
    v11[3] = v6;
    v11[4] = v8;
    v11[5] = v10;
    aBlock[4] = sub_10020E300;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100015858;
    aBlock[3] = &unk_1003AF6A8;
    v12 = _Block_copy(aBlock);

    v13 = v8;

    [v9 createInheritanceAccessKeyForContact:a1 completion:v12];
    _Block_release(v12);
  }

  else
  {
    type metadata accessor for InheritanceError(0);
    aBlock[6] = 5;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v14 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v14);
  }
}

void sub_10020D370(void *a1, char *a2, void (**a3)(const void *, void *))
{
  v73 = a2;
  v5 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v70 = &v65 - v7;
  v68 = type metadata accessor for UUID();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v66 = a3;
  _Block_copy(a3);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v72 = v10;
  v11 = type metadata accessor for Logger();
  v12 = sub_100008D04(v11, qword_1003FAAA0);
  v13 = a1;
  v69 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v75[0] = v71;
    *v16 = 136315394;
    v74 = type metadata accessor for InheritanceRequestManager(0);
    sub_100005814(&unk_1003E30E0, qword_1003468E0);
    v17 = String.init<A>(describing:)();
    v19 = sub_10021145C(v17, v18, v75);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = [v13 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10020E6A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = v6;
    v22 = v5;
    v23 = v13;
    v24 = v9;
    v25 = v68;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = v24;
    v30 = v25;
    v9 = v24;
    v13 = v23;
    v5 = v22;
    v6 = v21;
    (*(v67 + 8))(v29, v30);
    v31 = sub_10021145C(v26, v28, v75);

    *(v16 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s - Removing Beneficiary with beneficiaryID: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  v32 = objc_allocWithZone(type metadata accessor for InheritanceInviteAnalyticsEvent(0));
  sub_100005814(&qword_1003E30D0, &unk_100340690);
  inited = swift_initStackObject();
  v65 = xmmword_10033EB30;
  *(inited + 16) = xmmword_10033EB30;
  *(inited + 32) = 0x766F6D6552736177;
  *(inited + 40) = 0xEF6E6F6974634165;
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  sub_1003093D0(inited);
  swift_setDeallocating();
  sub_100008D3C(inited + 32, &unk_1003E8C10, &unk_100344990);
  v34 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
  v35 = swift_allocObject();
  v35[2] = v34;
  v35[3] = sub_10005B8F8;
  v35[4] = v72;
  v36 = v70;
  (*(v6 + 16))(v70, &v73[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager__accountStore], v5);

  v71 = v34;
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v36, v5);
  v37 = [*(*sub_1000080F8(v75 v75[3]) + 16)];
  if (v37 && (v38 = v37, v39 = [v37 aa_altDSID], v38, v39))
  {
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    sub_10000839C(v75);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Fetching beneficiary to delete...", v45, 2u);
    }

    v46 = v73;
    sub_1000080F8(&v73[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController], *&v73[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24]);
    v47 = [v13 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = swift_allocObject();
    v48[2] = v46;
    v48[3] = v13;
    v48[4] = v40;
    v48[5] = v42;
    v48[6] = sub_10020E290;
    v48[7] = v35;
    v49 = v13;
    v50 = v46;

    sub_100214780(v9, sub_10020E2EC, v48, v51, v52, v53, v54, v55, v65);

    (*(v67 + 8))(v9, v68);
  }

  else
  {
    sub_10000839C(v75);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Error removing the beneficiary. No altDSID for owner found.", v58, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v74 = 5;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v59 = v75[0];
    v60 = _convertErrorToNSError(_:)();
    v61 = AAUnderTest.getter();
    v62 = v71;
    if ((v61 & 1) == 0)
    {
      v63 = swift_initStackObject();
      *(v63 + 16) = v65;
      strcpy((v63 + 32), "numOfRelation");
      *(v63 + 46) = -4864;
      *(v63 + 48) = Int._bridgeToObjectiveC()();
      sub_1003093D0(v63);
      swift_setDeallocating();
      sub_100008D3C(v63 + 32, &unk_1003E8C10, &unk_100344990);
      dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();
    }

    v64 = _convertErrorToNSError(_:)();
    v66[2](v66, v64);
  }
}

void sub_10020DC74(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  _Block_copy(a3);
  v11 = sub_1001FA348();
  if (v11)
  {
    v12 = v11;
    v13 = [a1 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = objc_allocWithZone(AKInheritanceAccessKey);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v16 = [v14 initWithBeneficiairyIdentifier:isa];

    (*(v7 + 8))(v9, v6);
    [v12 setAccessKey:v16];

    v17 = *(a2 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_controller);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_10005B8F8;
    *(v18 + 24) = v10;
    aBlock[4] = sub_10020DF78;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E828;
    aBlock[3] = &unk_1003AF4C8;
    v19 = _Block_copy(aBlock);

    [v17 removeBeneficiaryWithInheritanceContext:v12 completion:v19];
    _Block_release(v19);
  }

  else
  {
    type metadata accessor for InheritanceError(0);
    aBlock[6] = 5;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v20 = aBlock[0];
    v12 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v12);
  }
}

uint64_t sub_10020DFAC()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10020E000()
{
  v1 = (type metadata accessor for BenefactorInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);

  v7(v5 + v1[9], v6);
  sub_100012324(*(v5 + v1[10]), *(v5 + v1[10] + 8));

  return _swift_deallocObject(v0, v4 + 8);
}

void sub_10020E154(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for BenefactorInfoRecord(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + v7);
  v11 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1001FE578(a1, a2 & 1, v8, v9, v2 + v6, v10, v11);
}

uint64_t sub_10020E23C()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10020E29C()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10020E354()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10020E3A0()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10020E40C()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10020E470()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_10020E504()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10020E558()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10020E5A4()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10020E61C(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_10020E648(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40);
}

uint64_t sub_10020E6A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10020E7C4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_10020E828(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t InheritanceSecurityController.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);
  Dependency.init(dependencyId:config:)();
  *(v0 + 16) = [objc_allocWithZone(CDPInheritanceTrustController) init];
  return v0;
}

uint64_t InheritanceSecurityManager.__allocating_init(controller:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t InheritanceSecurityManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void InheritanceSecurityManager.preflightInheritanceRecovery(for:accessKey:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10020E828;
  v11[3] = &unk_1003AFAB8;
  v10 = _Block_copy(v11);

  [v8 preflightInheritanceRecoveryForBeneficiaryID:isa accessKey:a2 completion:v10];
  _Block_release(v10);
}

void sub_10020EE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v10 = *(v5 + 16);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13[4] = a2;
  v13[5] = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10020E828;
  v13[3] = a4;
  v12 = _Block_copy(v13);

  [v10 *a5];
  _Block_release(v12);
}

uint64_t sub_10020EF44(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = *(a1 + 16);

  isa = UUID._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a6;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020E828;
  aBlock[3] = a7;
  v21 = _Block_copy(aBlock);

  [v19 *a8];
  _Block_release(v21);

  (*(v14 + 8))(v16, v13);
}

void sub_10020F11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = *(v5 + 16);
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100015858;
  v10[3] = a4;
  v9 = _Block_copy(v10);

  [v8 *a5];
  _Block_release(v9);
}

uint64_t InheritanceSecurityController.init()()
{
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);
  Dependency.init(dependencyId:config:)();
  *(v0 + 16) = [objc_allocWithZone(CDPInheritanceTrustController) init];
  return v0;
}

uint64_t sub_10020F3A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void InheritanceSecurityController.createAccessKey(for:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(CDPContext) init];
  v13 = [a1 beneficiaryID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v11, v8);
  [v12 setBeneficiaryIdentifier:isa];

  v15 = *(v4 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  aBlock[4] = sub_100213E64;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003AFB58;
  v17 = _Block_copy(aBlock);

  [v15 createInheritanceKeyWithContext:v12 completion:v17];
  _Block_release(v17);
}

uint64_t sub_10020F5B8()
{

  return _swift_deallocObject(v0, 32);
}

void InheritanceSecurityController.recreateInheritanceKey(with:completion:)(uint64_t a1, void (*a2)(void, uint64_t), uint64_t a3)
{
  v49 = a1;
  v50 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v44 - v10;
  v12 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v44 - v14;
  v16 = *(v13 + 16);
  v48 = v3;
  v16(&v44 - v14, v3 + OBJC_IVAR____TtC13appleaccountd29InheritanceSecurityController__accountStore, v12);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v15, v12);
  v17 = [*(*sub_1000080F8(aBlock v52) + 16)];
  sub_10000839C(aBlock);
  if (v17)
  {
    sub_100212434(v17);
    if (v18)
    {
      v47 = v18;
      UUID.init()();
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100008D04(v19, qword_1003FAA40);
      (*(v6 + 16))(v9, v11, v5);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v45 = a3;
        aBlock[0] = v44;
        *v22 = 136315138;
        sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        v26 = *(v6 + 8);
        v46 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v27 = v9;
        v28 = v5;
        v29 = v26;
        v26(v27, v28);
        v30 = sub_10021145C(v23, v25, aBlock);

        *(v22 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v20, v21, "Setting beneficiaryIdentifier to new otPeerID: %s", v22, 0xCu);
        sub_10000839C(v44);
        a3 = v45;
      }

      else
      {

        v36 = *(v6 + 8);
        v46 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v37 = v9;
        v28 = v5;
        v29 = v36;
        v36(v37, v28);
      }

      isa = UUID._bridgeToObjectiveC()().super.isa;
      v39 = v47;
      [v47 setBeneficiaryIdentifier:isa];

      v40 = *(v48 + 16);
      v41 = UUID._bridgeToObjectiveC()().super.isa;
      v42 = swift_allocObject();
      *(v42 + 16) = v50;
      *(v42 + 24) = a3;
      v53 = sub_100212814;
      v54 = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100015858;
      v52 = &unk_1003AFBA8;
      v43 = _Block_copy(aBlock);

      [v40 recreateInheritanceKeyWithContext:v39 newOTPeerID:v41 inheritanceKey:v49 completion:v43];
      _Block_release(v43);

      v29(v11, v28);
    }

    else
    {
      v50(0, 0);
    }
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAA40);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Not logged in to AppleAccount, unable to fetch. Preflight Inheritance Recovery aborted.", v34, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v55 = 10;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001F4E78(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v35 = aBlock[0];
    v50(0, aBlock[0]);
  }
}

void InheritanceSecurityController.removeAccessKey(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [objc_allocWithZone(CDPContext) init];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v7 setBeneficiaryIdentifier:isa];

  v9 = *(v4 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v12[4] = sub_1000D8510;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10020FEA8;
  v12[3] = &unk_1003AFBF8;
  v11 = _Block_copy(v12);

  [v9 deleteInheritanceAccessKeyWithContext:v7 completion:v11];
  _Block_release(v11);
}

void sub_10020FEA8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void InheritanceSecurityController.preflightInheritanceRecovery(for:accessKey:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v53 = a2;
  v54 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v51 = v11;
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v46 - v12;
  v14 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v46 - v16;
  (*(v15 + 16))(&v46 - v16, v5 + OBJC_IVAR____TtC13appleaccountd29InheritanceSecurityController__accountStore, v14);
  Dependency.wrappedValue.getter();
  (*(v15 + 8))(v17, v14);
  v18 = [*(*sub_1000080F8(aBlock v56) + 16)];
  sub_10000839C(aBlock);
  if (v18)
  {
    v50 = v5;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAA0);
    v48 = *(v9 + 16);
    v48(v13, a1, v8);
    v20 = Logger.logObject.getter();
    v21 = v9;
    v22 = static os_log_type_t.info.getter();
    v23 = os_log_type_enabled(v20, v22);
    v49 = a1;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v46 = v18;
      v25 = v24;
      v26 = swift_slowAlloc();
      v47 = a4;
      v27 = v26;
      aBlock[0] = v26;
      *v25 = 136315138;
      sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v28 = v21;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      (*(v28 + 8))(v13, v8);
      v32 = sub_10021145C(v29, v31, aBlock);

      *(v25 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v20, v22, "Preflighting Inheritance Recovery for beneficiaryID: %s", v25, 0xCu);
      sub_10000839C(v27);
      a4 = v47;

      v18 = v46;

      v33 = v28;
    }

    else
    {

      (*(v21 + 8))(v13, v8);
      v33 = v21;
    }

    sub_100212434(v18);
    if (v39)
    {
      v40 = v39;
      v41 = *(v50 + 16);
      v42 = v52;
      v48(v52, v49, v8);
      v43 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = v54;
      *(v44 + 24) = a4;
      (*(v33 + 32))(v44 + v43, v42, v8);
      v57 = sub_100212840;
      v58 = v44;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020E828;
      v56 = &unk_1003AFC48;
      v45 = _Block_copy(aBlock);

      [v41 validateAccessKey:v53 withContext:v40 completion:v45];
      _Block_release(v45);
    }

    else
    {
      v54();
    }
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100008D04(v34, qword_1003FAA40);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Not logged in to AppleAccount, unable to fetch. Preflight Inheritance Recovery aborted.", v37, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v59 = 10;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001F4E78(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v38 = aBlock[0];
    (v54)(aBlock[0]);
  }
}

uint64_t sub_100210698(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    a2(a1);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAA0);
    (*(v8 + 16))(v10, a4, v7);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v15 = 136315138;
      sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v8 + 8))(v10, v7);
      v19 = sub_10021145C(v16, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Inheritance Preflight successful for beneficiaryID: %s", v15, 0xCu);
      sub_10000839C(v20);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    return (a2)(0);
  }
}

void InheritanceSecurityController.checkInheritanceKey(for:completion:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v7 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &aBlock[-1] - v9;
  (*(v8 + 16))(&aBlock[-1] - v9, v4 + OBJC_IVAR____TtC13appleaccountd29InheritanceSecurityController__accountStore, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v10, v7);
  v11 = [*(*sub_1000080F8(aBlock v29) + 16)];
  sub_10000839C(aBlock);
  if (!v11)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA40);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Not logged in to AppleAccount, unable to fetch. checkInheritanceKey aborted.", v22, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v32 = 10;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001F4E78(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v11 = aBlock[0];
    v12 = aBlock[0];
    goto LABEL_10;
  }

  sub_100212434(v11);
  if (!v12)
  {
LABEL_10:
    a2(v12);

    return;
  }

  v13 = v12;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v13 setBeneficiaryIdentifier:isa];

  v15 = *(v4 + 16);
  if ([v15 respondsToSelector:Selector.init(_:)()])
  {
    v16 = UUID._bridgeToObjectiveC()().super.isa;
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    v30 = sub_100212844;
    v31 = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E828;
    v29 = &unk_1003AFC98;
    v18 = _Block_copy(aBlock);

    [v15 checkInheritanceKey:v13 inheritanceKeyUUID:v16 completion:v18];
    _Block_release(v18);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAAB8);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "checkInheritanceKey spi not found on InheritanceTrustController", v26, 2u);
    }

    a2(0);
  }
}

uint64_t sub_100210F44(uint64_t a1, uint64_t (*a2)(uint64_t))
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
    _os_log_impl(&_mh_execute_header, v5, v6, "Inheritance Check Inheritance Key results: %@", v7, 0xCu);
    sub_100083380(v8);
  }

  return a2(a1);
}

uint64_t InheritanceSecurityController.deinit()
{
  v1 = OBJC_IVAR____TtC13appleaccountd29InheritanceSecurityController__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd29InheritanceSecurityController__urlBagProvider;
  v4 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t InheritanceSecurityController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13appleaccountd29InheritanceSecurityController__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd29InheritanceSecurityController__urlBagProvider;
  v4 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_10021138C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100211400(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_10021145C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_10021145C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100211528(v11, 0, 0, 1, a1, a2);
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
    sub_10000DB1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000839C(v11);
  return v7;
}

unint64_t sub_100211528(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100211634(a5, a6);
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

void *sub_100211634(uint64_t a1, unint64_t a2)
{
  v3 = sub_100211680(a1, a2);
  sub_1002117B0(&off_1003A3720);
  return v3;
}

void *sub_100211680(uint64_t a1, unint64_t a2)
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

  v6 = sub_10007BAB8(v5, 0);
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
        v7 = sub_10007BAB8(v10, 0);
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

uint64_t sub_1002117B0(uint64_t result)
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

  result = sub_10021189C(result, v11, 1, v3);
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

char *sub_10021189C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005814(&unk_1003DA8C0, &qword_10033EA30);
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

_BYTE **sub_100211990(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unsigned __int8 *sub_1002119A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100211F2C(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100211F2C(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_100211FAC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100211FAC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10007BAB8(v9, 0), v12 = sub_100212104(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100212104(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10018F0F0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10018F0F0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_100212324(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005814(&qword_1003E3460, qword_1003469E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100213DB0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1003084DC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100070AF0(&v15, (v3[7] + 32 * result));
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

void sub_100212434(void *a1)
{
  v2 = [a1 aa_altDSID];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_opt_self() contextForAccountWithAltDSID:v4];

  if (v5)
  {
    v6 = [a1 aa_personID];
    if (!v6)
    {
LABEL_78:
      __break(1u);
      return;
    }

    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    v12 = v8 & 0xFFFFFFFFFFFFLL;
    if ((v10 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v10) & 0xF;
    }

    else
    {
      v13 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13)
    {

      return;
    }

    if ((v10 & 0x1000000000000000) != 0)
    {
      v38 = 0;
      v16 = sub_1002119A0(v8, v10, 10);
      v34 = v36;
LABEL_68:

      if ((v34 & 1) == 0)
      {
        v35 = [objc_allocWithZone(NSNumber) initWithInteger:v16];
        [v5 setDsid:v35];
      }

      return;
    }

    if ((v10 & 0x2000000000000000) != 0)
    {
      v37[0] = v8;
      v37[1] = v10 & 0xFFFFFFFFFFFFFFLL;
      if (v8 == 43)
      {
        if (v11)
        {
          if (--v11)
          {
            v16 = 0;
            v26 = v37 + 1;
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                break;
              }

              v28 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                break;
              }

              ++v26;
              if (!--v11)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_66;
        }

        goto LABEL_77;
      }

      if (v8 != 45)
      {
        if (v11)
        {
          v16 = 0;
          v31 = v37;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v11)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }

      if (v11)
      {
        if (--v11)
        {
          v16 = 0;
          v20 = v37 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              break;
            }

            ++v20;
            if (!--v11)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }
    }

    else
    {
      if ((v8 & 0x1000000000000000) != 0)
      {
        v14 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v14 = _StringObject.sharedUTF8.getter();
      }

      v15 = *v14;
      if (v15 == 43)
      {
        if (v12 >= 1)
        {
          v11 = v12 - 1;
          if (v12 != 1)
          {
            v16 = 0;
            if (v14)
            {
              v23 = v14 + 1;
              while (1)
              {
                v24 = *v23 - 48;
                if (v24 > 9)
                {
                  goto LABEL_66;
                }

                v25 = 10 * v16;
                if ((v16 * 10) >> 64 != (10 * v16) >> 63)
                {
                  goto LABEL_66;
                }

                v16 = v25 + v24;
                if (__OFADD__(v25, v24))
                {
                  goto LABEL_66;
                }

                ++v23;
                if (!--v11)
                {
                  goto LABEL_67;
                }
              }
            }

            goto LABEL_58;
          }

          goto LABEL_66;
        }

        goto LABEL_76;
      }

      if (v15 != 45)
      {
        if (v12)
        {
          v16 = 0;
          if (v14)
          {
            while (1)
            {
              v29 = *v14 - 48;
              if (v29 > 9)
              {
                goto LABEL_66;
              }

              v30 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                goto LABEL_66;
              }

              v16 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                goto LABEL_66;
              }

              ++v14;
              if (!--v12)
              {
                goto LABEL_58;
              }
            }
          }

          goto LABEL_58;
        }

LABEL_66:
        v16 = 0;
        LOBYTE(v11) = 1;
        goto LABEL_67;
      }

      if (v12 >= 1)
      {
        v11 = v12 - 1;
        if (v12 != 1)
        {
          v16 = 0;
          if (v14)
          {
            v17 = v14 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                goto LABEL_66;
              }

              v19 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                goto LABEL_66;
              }

              v16 = v19 - v18;
              if (__OFSUB__(v19, v18))
              {
                goto LABEL_66;
              }

              ++v17;
              if (!--v11)
              {
                goto LABEL_67;
              }
            }
          }

LABEL_58:
          LOBYTE(v11) = 0;
LABEL_67:
          v38 = v11;
          v34 = v11;
          goto LABEL_68;
        }

        goto LABEL_66;
      }

      __break(1u);
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }
}

uint64_t type metadata accessor for InheritanceSecurityController(uint64_t a1)
{
  result = qword_1003E3338;
  if (!qword_1003E3338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002128C4(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &qword_1003DB6F0, &qword_1003D7FD0, &unk_10033FB30);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002129CC(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v52 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v47 - v10;
  v12 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v47 - v14;
  v53 = swift_allocObject();
  *(v53 + 16) = a3;
  v16 = *(v13 + 16);
  v51 = a2;
  v16(v15, a2 + OBJC_IVAR____TtC13appleaccountd29InheritanceSecurityController__accountStore, v12);
  _Block_copy(a3);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v15, v12);
  v17 = [*(*sub_1000080F8(aBlock v55) + 16)];
  sub_10000839C(aBlock);
  if (v17)
  {
    sub_100212434(v17);
    if (v18)
    {
      v50 = v18;
      UUID.init()();
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100008D04(v19, qword_1003FAA40);
      (*(v6 + 16))(v9, v11, v5);
      v20 = Logger.logObject.getter();
      v21 = v5;
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v20, v22))
      {
        v23 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        aBlock[0] = v48;
        *v23 = 136315138;
        sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v21;
        v27 = v26;
        v28 = *(v6 + 8);
        v49 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = v9;
        v30 = v25;
        v28(v29, v25);
        v31 = sub_10021145C(v24, v27, aBlock);

        *(v23 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v20, v22, "Setting beneficiaryIdentifier to new otPeerID: %s", v23, 0xCu);
        sub_10000839C(v48);

        v32 = v28;
      }

      else
      {

        v32 = *(v6 + 8);
        v49 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v39 = v9;
        v30 = v21;
        v32(v39, v21);
      }

      isa = UUID._bridgeToObjectiveC()().super.isa;
      v41 = v50;
      [v50 setBeneficiaryIdentifier:isa];

      v42 = *(v51 + 16);
      v43 = UUID._bridgeToObjectiveC()().super.isa;
      v44 = swift_allocObject();
      v45 = v53;
      *(v44 + 16) = sub_1000080F0;
      *(v44 + 24) = v45;
      v56 = sub_100213E64;
      v57 = v44;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100015858;
      v55 = &unk_1003AFE28;
      v46 = _Block_copy(aBlock);

      [v42 recreateInheritanceKeyWithContext:v41 newOTPeerID:v43 inheritanceKey:v52 completion:v46];
      _Block_release(v46);

      v32(v11, v30);
    }

    else
    {
      a3[2](a3, 0, 0);
    }
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAA40);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Not logged in to AppleAccount, unable to fetch. Preflight Inheritance Recovery aborted.", v36, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v58 = 10;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001F4E78(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v37 = aBlock[0];
    v38 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v38);
  }
}

void sub_100213084(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v58 = a1;
  v59 = type metadata accessor for UUID();
  v7 = *(v59 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v59);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  v12 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = swift_allocObject();
  v56 = a3;
  v57 = v16;
  *(v16 + 16) = a4;
  (*(v13 + 16))(v15, a3 + OBJC_IVAR____TtC13appleaccountd29InheritanceSecurityController__accountStore, v12);
  _Block_copy(a4);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v15, v12);
  v17 = [*(*sub_1000080F8(aBlock v61) + 16)];
  sub_10000839C(aBlock);
  if (v17)
  {
    v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v55 = a2;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAA0);
    v19 = v59;
    v52 = *(v7 + 16);
    v52(v11, v58, v59);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    v22 = os_log_type_enabled(v20, v21);
    v54 = v7;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v51 = a4;
      v24 = v23;
      v25 = swift_slowAlloc();
      v50 = v17;
      v26 = v25;
      aBlock[0] = v25;
      *v24 = 136315138;
      sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v7 + 8))(v11, v59);
      v30 = sub_10021145C(v27, v29, aBlock);
      v19 = v59;

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v20, v21, "Preflighting Inheritance Recovery for beneficiaryID: %s", v24, 0xCu);
      sub_10000839C(v26);
      v17 = v50;

      a4 = v51;
    }

    else
    {

      (*(v7 + 8))(v11, v19);
    }

    sub_100212434(v17);
    if (v37)
    {
      v38 = v37;
      v39 = *(v56 + 16);
      v40 = v53;
      v52(v53, v58, v19);
      v41 = v54;
      v42 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v43 = swift_allocObject();
      v44 = v19;
      v45 = v43;
      v46 = v17;
      v47 = v57;
      *(v43 + 16) = sub_10005B8F8;
      *(v43 + 24) = v47;
      (*(v41 + 32))(v43 + v42, v40, v44);
      v62 = sub_100213EEC;
      v63 = v45;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020E828;
      v61 = &unk_1003AFD88;
      v48 = _Block_copy(aBlock);

      [v39 validateAccessKey:v55 withContext:v38 completion:v48];
      _Block_release(v48);
    }

    else
    {
      a4[2](a4, 0);
    }
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAA40);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Not logged in to AppleAccount, unable to fetch. Preflight Inheritance Recovery aborted.", v34, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v64 = 10;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001F4E78(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v35 = aBlock[0];
    v36 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v36);
  }
}

void sub_100213728(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &aBlock[-1] - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  (*(v6 + 16))(v8, a2 + OBJC_IVAR____TtC13appleaccountd29InheritanceSecurityController__accountStore, v5);
  _Block_copy(a3);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v8, v5);
  v10 = [*(*sub_1000080F8(aBlock v29) + 16)];
  sub_10000839C(aBlock);
  if (!v10)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA40);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Not logged in to AppleAccount, unable to fetch. checkInheritanceKey aborted.", v21, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v32 = 10;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001F4E78(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v22 = aBlock[0];
    v10 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v10);

    goto LABEL_11;
  }

  sub_100212434(v10);
  if (!v11)
  {
    a3[2](a3, 0);

LABEL_11:

    return;
  }

  v12 = v11;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v12 setBeneficiaryIdentifier:isa];

  v14 = *(a2 + 16);
  if ([v14 respondsToSelector:Selector.init(_:)()])
  {
    v15 = UUID._bridgeToObjectiveC()().super.isa;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_100008DD4;
    *(v16 + 24) = v9;
    v30 = sub_100213EF0;
    v31 = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E828;
    v29 = &unk_1003AFD10;
    v17 = _Block_copy(aBlock);

    [v14 checkInheritanceKey:v12 inheritanceKeyUUID:v15 completion:v17];
    _Block_release(v17);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAAB8);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "checkInheritanceKey spi not found on InheritanceTrustController", v26, 2u);
    }

    a3[2](a3, 0);
  }
}

uint64_t sub_100213C40()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100213D04(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100210698(a1, v4, v5, v6);
}

uint64_t sub_100213D78()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100213DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DB0B0, &unk_10033E710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100213F74@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v10 = a3(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v15 = *(a2 + 16);
  if (v15)
  {
    v22 = v12;
    v23 = a5;
    v16 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = *(v11 + 72);
    while (1)
    {
      sub_10023FBA0(v16, v14, a4);
      v18 = a1(v14);
      if (v5)
      {
        return sub_10023FC08(v14, a4);
      }

      if (v18)
      {
        break;
      }

      sub_10023FC08(v14, a4);
      v16 += v17;
      if (!--v15)
      {
        v19 = 1;
        a5 = v23;
        goto LABEL_10;
      }
    }

    a5 = v23;
    sub_10023FC6C(v14, v23, a4);
    v19 = 0;
LABEL_10:
    v12 = v22;
  }

  else
  {
    v19 = 1;
  }

  return (*(v11 + 56))(a5, v19, 1, v12);
}

void *sub_10021418C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CustodianRecoverySession(0);
    sub_10023F3A0(&qword_1003DE4B8, type metadata accessor for CustodianRecoverySession, &unk_100342D00);
    result = Set.Iterator.init(_cocoa:)();
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
  }

  else
  {
    v11 = -1 << *(a3 + 32);
    v7 = a3 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a3 + 56);

    v9 = 0;
  }

  v21 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (v18)
    {
      while (1)
      {
        v27 = v18;
        v19 = a1(&v27);
        if (v4)
        {
          break;
        }

        if (v19)
        {
          goto LABEL_23;
        }

        v9 = v16;
        v10 = v17;
        v5 = v21;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_20;
        }

        type metadata accessor for CustodianRecoverySession(0);
        swift_dynamicCast();
        v18 = v27;
        v16 = v9;
        v17 = v10;
        if (!v27)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      sub_10005A1DC(v21);
    }

    else
    {
LABEL_21:
      v5 = v21;
LABEL_20:
      sub_10005A1DC(v5);
      return 0;
    }

    return v18;
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100214428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a1;
  v26 = a2;
  v4 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v27 = type metadata accessor for URL();
  v8 = *(v27 - 8);
  v9 = __chkstk_darwin(v27);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAA0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Fetching stored InheritanceInvitationRecords...", v17, 2u);
  }

  v18 = sub_1000080F8((v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v19 = *(v8 + 8);
  v20 = v11;
  v21 = v27;
  v19(v20, v27);
  v22 = swift_allocObject();
  v23 = v26;
  *(v22 + 16) = v25;
  *(v22 + 24) = v23;
  (*(v5 + 16))(v7, *v18 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v4);

  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v7, v4);
  sub_1000080F8(v28, v28[3]);
  sub_100032934(v13, sub_10023ED30, v22);

  v19(v13, v21);
  return sub_10000839C(v28);
}

uint64_t sub_1002147BC(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v79 = a5;
  v80 = a4;
  v77 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  __chkstk_darwin(v77);
  v78 = (&v72 - v8);
  v9 = type metadata accessor for UUID();
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v72 - v14;
  __chkstk_darwin(v13);
  v17 = &v72 - v16;
  v18 = type metadata accessor for InheritanceInvitationRecord(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100005814(&qword_1003E4F40, &unk_1003446D0);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAA0);
    v28 = v75;
    v29 = v76;
    (*(v75 + 16))(v12, a3, v76);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v32 = 136315394;
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v28 + 8))(v12, v29);
      v36 = sub_10021145C(v33, v35, &v82);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v81 = a1;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v37 = String.init<A>(describing:)();
      v39 = sub_10021145C(v37, v38, &v82);

      *(v32 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "Error fetching InheritanceInvitationRecord with\nbeneficiaryID: %s. Error: %s", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v28 + 8))(v12, v29);
    }

    v53 = v78;
    *v78 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v80(v53);
    v54 = &qword_1003E1290;
    v55 = &unk_1003444C0;
    v56 = v53;
  }

  else
  {
    __chkstk_darwin(v26);
    v73 = a3;
    *(&v72 - 2) = a3;
    v41 = v40;
    sub_100213F74(sub_100240E5C, a1, type metadata accessor for InheritanceInvitationRecord, type metadata accessor for InheritanceInvitationRecord, v40);
    v74 = v41;
    sub_100012D04(v41, v25, &qword_1003E4F40, &unk_1003446D0);
    if ((*(v19 + 48))(v25, 1, v18) == 1)
    {
      sub_100008D3C(v25, &qword_1003E4F40, &unk_1003446D0);
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_100008D04(v42, qword_1003FAAA0);
      v43 = v75;
      v44 = v76;
      (*(v75 + 16))(v17, v73, v76);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v82 = v48;
        *v47 = 136315138;
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        (*(v43 + 8))(v17, v44);
        v52 = sub_10021145C(v49, v51, &v82);

        *(v47 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v45, v46, "No InheritanceInvitationRecord found with beneficiaryID: %s", v47, 0xCu);
        sub_10000839C(v48);
      }

      else
      {

        (*(v43 + 8))(v17, v44);
      }

      type metadata accessor for InheritanceError(0);
      v81 = 3;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10023F3A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v69 = v78;
      *v78 = v82;
      swift_storeEnumTagMultiPayload();
      v80(v69);
      sub_100008D3C(v69, &qword_1003E1290, &unk_1003444C0);
    }

    else
    {
      v57 = v21;
      sub_10023FC6C(v25, v21, type metadata accessor for InheritanceInvitationRecord);
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_100008D04(v58, qword_1003FAAA0);
      v60 = v75;
      v59 = v76;
      (*(v75 + 16))(v15, v73, v76);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v82 = v64;
        *v63 = 136315138;
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v65 = dispatch thunk of CustomStringConvertible.description.getter();
        v67 = v66;
        (*(v60 + 8))(v15, v59);
        v68 = sub_10021145C(v65, v67, &v82);

        *(v63 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v61, v62, "Found InheritanceInvitationRecord with beneficiaryID: %s", v63, 0xCu);
        sub_10000839C(v64);
      }

      else
      {

        (*(v60 + 8))(v15, v59);
      }

      v70 = v78;
      sub_10023FBA0(v57, v78, type metadata accessor for InheritanceInvitationRecord);
      swift_storeEnumTagMultiPayload();
      v80(v70);
      sub_100008D3C(v70, &qword_1003E1290, &unk_1003444C0);
      sub_10023FC08(v57, type metadata accessor for InheritanceInvitationRecord);
    }

    v54 = &qword_1003E4F40;
    v55 = &unk_1003446D0;
    v56 = v74;
  }

  return sub_100008D3C(v56, v54, v55);
}

uint64_t sub_100215214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for InheritanceInvitationRecord(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAA0);
  sub_10023FBA0(a1, v10, type metadata accessor for InheritanceInvitationRecord);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    type metadata accessor for UUID();
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_10023FC08(v10, type metadata accessor for InheritanceInvitationRecord);
    v20 = sub_10021145C(v17, v19, &v24);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Saving InheritanceInvitationRecord with beneficiaryID - %s...", v15, 0xCu);
    sub_10000839C(v16);

    a2 = v23;
  }

  else
  {

    sub_10023FC08(v10, type metadata accessor for InheritanceInvitationRecord);
  }

  sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;

  sub_100232310(a1, sub_10023EAB0, v21);
}

uint64_t sub_1002154DC(uint64_t a1, void (*a2)(void *))
{
  v4 = type metadata accessor for InheritanceInvitationRecord(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v8 = __chkstk_darwin(v7);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = (&v26 - v11);
  sub_100012D04(a1, &v26 - v11, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAAA0);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v13;
      v29 = v27;
      *v17 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v18 = String.init<A>(describing:)();
      v20 = sub_10021145C(v18, v19, &v29);

      *(v17 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error saving InheritanceInvitationRecord : %s", v17, 0xCu);
      sub_10000839C(v27);
    }

    *v10 = v13;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v10);

    return sub_100008D3C(v10, &qword_1003E1290, &unk_1003444C0);
  }

  else
  {
    sub_10023FC6C(v12, v6, type metadata accessor for InheritanceInvitationRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAA0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Successfully saved InheritanceInvitationRecord.", v25, 2u);
    }

    [objc_opt_self() postInheritanceContactChangedNotification];
    sub_10023FBA0(v6, v10, type metadata accessor for InheritanceInvitationRecord);
    swift_storeEnumTagMultiPayload();
    a2(v10);
    sub_100008D3C(v10, &qword_1003E1290, &unk_1003444C0);
    return sub_10023FC08(v6, type metadata accessor for InheritanceInvitationRecord);
  }
}

uint64_t sub_100215918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for InheritanceInvitationRecord(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAA0);
  sub_10023FBA0(a1, v10, type metadata accessor for InheritanceInvitationRecord);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315138;
    type metadata accessor for UUID();
    v25 = a2;
    v16 = a3;
    v17 = a1;
    v18 = v3;
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_10023FC08(v10, type metadata accessor for InheritanceInvitationRecord);
    v22 = sub_10021145C(v19, v21, &v26);
    v4 = v18;
    a1 = v17;
    a3 = v16;
    a2 = v25;

    *(v14 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "Deleting InheritanceInvitationRecord with beneficiaryID - %s...", v14, 0xCu);
    sub_10000839C(v15);
  }

  else
  {

    sub_10023FC08(v10, type metadata accessor for InheritanceInvitationRecord);
  }

  sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  sub_100083AA0(a2, a3);
  sub_100238798(a1, sub_10023E8F4, v23);
}

uint64_t sub_100215BFC(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v30[1] = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v10 = __chkstk_darwin(v9);
  v12 = (v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = (v30 - v13);
  sub_100012D04(a1, v30 - v13, &unk_1003D9220, &unk_10033E8C0);
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
      v30[2] = v15;
      v31 = v20;
      *v19 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v21 = String.init<A>(describing:)();
      v23 = a2;
      v24 = sub_10021145C(v21, v22, &v31);

      *(v19 + 4) = v24;
      a2 = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error deleting InheritanceInvitationRecord : %s", v19, 0xCu);
      sub_10000839C(v20);
    }

    if (a2)
    {
      *v12 = v15;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      a2(v12);

      return sub_100008D3C(v12, &unk_1003D9220, &unk_10033E8C0);
    }

    else
    {
    }
  }

  else
  {
    (*(v6 + 32))(v8, v14, v5);
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
      _os_log_impl(&_mh_execute_header, v27, v28, "Successfully deleted InheritanceInvitationRecord.", v29, 2u);
    }

    if (a2)
    {
      (*(v6 + 16))(v12, v8, v5);
      swift_storeEnumTagMultiPayload();
      a2(v12);
      sub_100008D3C(v12, &unk_1003D9220, &unk_10033E8C0);
    }

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100216064(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a1;
  v26 = a2;
  v4 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v27 = type metadata accessor for URL();
  v8 = *(v27 - 8);
  v9 = __chkstk_darwin(v27);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAA0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Fetching stored BeneficiaryInfoRecords...", v17, 2u);
  }

  v18 = sub_1000080F8((v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v19 = *(v8 + 8);
  v20 = v11;
  v21 = v27;
  v19(v20, v27);
  v22 = swift_allocObject();
  v23 = v26;
  *(v22 + 16) = v25;
  *(v22 + 24) = v23;
  (*(v5 + 16))(v7, *v18 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v4);

  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v7, v4);
  sub_1000080F8(v28, v28[3]);
  sub_10003290C(v13, sub_10023E884, v22);

  v19(v13, v21);
  return sub_10000839C(v28);
}

uint64_t sub_1002163BC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, const char *a5, const char *a6)
{
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAAA0);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v12 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v14 = String.init<A>(describing:)();
      v16 = sub_10021145C(v14, v15, &v25);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, a5, v12, 0xCu);
      sub_10000839C(v13);
    }

    v17 = a1;
    v18 = 1;
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAAA0);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = *(a1 + 16);
      sub_1000399DC(a1, 0);
      _os_log_impl(&_mh_execute_header, v21, v22, a6, v23, 0xCu);
    }

    else
    {
      sub_1000399DC(a1, 0);
    }

    v17 = a1;
    v18 = 0;
  }

  return a3(v17, v18);
}

uint64_t sub_100216650(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a1;
  v27 = a2;
  v28 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v4 = *(v28 - 8);
  __chkstk_darwin(v28);
  v6 = &v25 - v5;
  v29 = type metadata accessor for URL();
  v7 = *(v29 - 8);
  v8 = __chkstk_darwin(v29);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
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
    _os_log_impl(&_mh_execute_header, v14, v15, "Fetching stored BeneficiaryInfoRecords...", v16, 2u);
  }

  v17 = sub_1000080F8((v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v18 = *(v7 + 8);
  v19 = v29;
  v18(v10, v29);
  v20 = swift_allocObject();
  v21 = v27;
  v20[2] = v26;
  v20[3] = v21;
  v20[4] = v3;
  v22 = *v17 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage;
  v23 = v28;
  (*(v4 + 16))(v6, v22, v28);

  Dependency.wrappedValue.getter();
  (*(v4 + 8))(v6, v23);
  sub_1000080F8(v30, v30[3]);
  sub_10003290C(v12, sub_10023E874, v20);

  v18(v12, v19);
  return sub_10000839C(v30);
}

uint64_t sub_1002169B8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v55 = a1;
  v56 = type metadata accessor for BeneficiaryInfoRecord(0);
  v9 = *(v56 - 8);
  v10 = __chkstk_darwin(v56);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v52 - v13;
  v15 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v52 - v17;
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAA0);
    v20 = v55;
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    sub_1000399DC(v20, 1);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v59 = v20;
      v60[0] = v24;
      *v23 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v25 = String.init<A>(describing:)();
      v27 = sub_10021145C(v25, v26, v60);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Error fetching BeneficiaryInfoRecords : %s", v23, 0xCu);
      sub_10000839C(v24);
    }

    return a3(v20, 1);
  }

  else
  {
    (*(v16 + 16))(v18, a5 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController__accountStore, v15);
    Dependency.wrappedValue.getter();
    (*(v16 + 8))(v18, v15);
    v29 = [*(*sub_1000080F8(v60 v60[3]) + 16)];
    if (v29 && (v30 = v29, v31 = [v29 aa_altDSID], v30, v31))
    {
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    v35 = v56;
    sub_10000839C(v60);
    v36 = *(v55 + 16);
    v54 = v36;
    if (v36)
    {
      v52[1] = a4;
      v53 = a3;
      v37 = *(v9 + 72);
      v57 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v38 = v55 + v57;
      v39 = _swiftEmptyArrayStorage;
      v40 = v36;
      v58 = v12;
      do
      {
        sub_10023FBA0(v38, v14, type metadata accessor for BeneficiaryInfoRecord);
        if (v34 && ((v41 = &v14[*(v35 + 24)], *v41 == v32) ? (v42 = v34 == *(v41 + 1)) : (v42 = 0), v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          sub_10023FC6C(v14, v12, type metadata accessor for BeneficiaryInfoRecord);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v60[0] = v39;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1002E0438(0, v39[2] + 1, 1);
            v35 = v56;
            v39 = v60[0];
          }

          v45 = v39[2];
          v44 = v39[3];
          if (v45 >= v44 >> 1)
          {
            sub_1002E0438((v44 > 1), v45 + 1, 1);
            v35 = v56;
            v39 = v60[0];
          }

          v39[2] = v45 + 1;
          v46 = v39 + v57 + v45 * v37;
          v12 = v58;
          sub_10023FC6C(v58, v46, type metadata accessor for BeneficiaryInfoRecord);
        }

        else
        {
          sub_10023FC08(v14, type metadata accessor for BeneficiaryInfoRecord);
        }

        v38 += v37;
        --v40;
      }

      while (v40);
      a3 = v53;
    }

    else
    {
      v39 = _swiftEmptyArrayStorage;
    }

    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100008D04(v47, qword_1003FAAA0);
    v48 = v55;
    sub_1000BCBF4(v55, 0);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134218240;
      *(v51 + 4) = v54;
      sub_1000399DC(v48, 0);
      *(v51 + 12) = 2048;
      *(v51 + 14) = v39[2];

      _os_log_impl(&_mh_execute_header, v49, v50, "Successfully fetched %ld\nBeneficiaryInfoRecords of which %ld are beneficiaries", v51, 0x16u);
    }

    else
    {

      sub_1000399DC(v48, 0);
    }

    a3(v39, 0);
  }
}

uint64_t sub_100217054(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, void *a5, uint64_t a6, void (*a7)(void, void), ...)
{
  v37 = a4;
  v43 = a3;
  v42 = a2;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v39 = v14;
  v40 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v35 - v15;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAA0);
  v18 = *(v12 + 16);
  v41 = a1;
  v38 = v18;
  v18(v16, a1, v11);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = a7;
    v22 = v21;
    v35[0] = swift_slowAlloc();
    v44 = v35[0];
    *v22 = 136315138;
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v35[1] = a5;
    v24 = a6;
    v26 = v25;
    (*(v12 + 8))(v16, v11);
    v27 = sub_10021145C(v23, v26, &v44);
    a6 = v24;

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, v37, v22, 0xCu);
    sub_10000839C(v35[0]);

    a7 = v36;
  }

  else
  {

    (*(v12 + 8))(v16, v11);
  }

  v28 = v40;
  v38(v40, v41, v11);
  v29 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v30 = (v39 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v12 + 32))(v31 + v29, v28, v11);
  v32 = (v31 + v30);
  v33 = v43;
  *v32 = v42;
  v32[1] = v33;

  a7(a6, v31);
}

uint64_t sub_1002173B8(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v75 = a5;
  v76 = a4;
  v74 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  __chkstk_darwin(v74);
  v9 = (&v68 - v8);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v72 = v10;
  v73 = v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v68 - v15;
  v17 = type metadata accessor for BeneficiaryInfoRecord(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100005814(&unk_1003E4F30, &unk_1003444E0);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAA0);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v77 = a1;
      v78 = v30;
      *v29 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v31 = String.init<A>(describing:)();
      v33 = sub_10021145C(v31, v32, &v78);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Error fetching BeneficiaryInfoRecord : %s", v29, 0xCu);
      sub_10000839C(v30);
    }

    *v9 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v76(v9);
    v34 = &unk_1003E10A0;
    v35 = &unk_100344480;
    v36 = v9;
  }

  else
  {
    v70 = v9;
    __chkstk_darwin(v25);
    v69 = a3;
    *(&v68 - 2) = a3;
    v38 = v37;
    sub_100213F74(sub_100240E5C, a1, type metadata accessor for BeneficiaryInfoRecord, type metadata accessor for BeneficiaryInfoRecord, v37);
    v71 = v38;
    sub_100012D04(v38, v24, &unk_1003E4F30, &unk_1003444E0);
    if ((*(v18 + 48))(v24, 1, v17) == 1)
    {
      sub_100008D3C(v24, &unk_1003E4F30, &unk_1003444E0);
      v39 = v72;
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100008D04(v40, qword_1003FAAA0);
      v41 = v73;
      (*(v73 + 16))(v16, v69, v39);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v70;
      if (v44)
      {
        v46 = swift_slowAlloc();
        v47 = v41;
        v48 = swift_slowAlloc();
        v78 = v48;
        *v46 = 136315138;
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        (*(v47 + 8))(v16, v39);
        v52 = sub_10021145C(v49, v51, &v78);

        *(v46 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v42, v43, "No BeneficiaryInfoRecord found with beneficiaryID: %s", v46, 0xCu);
        sub_10000839C(v48);
      }

      else
      {

        (*(v41 + 8))(v16, v39);
      }

      type metadata accessor for InheritanceError(0);
      v77 = 3;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10023F3A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      *v45 = v78;
      swift_storeEnumTagMultiPayload();
      v76(v45);
      sub_100008D3C(v45, &unk_1003E10A0, &unk_100344480);
    }

    else
    {
      sub_10023FC6C(v24, v20, type metadata accessor for BeneficiaryInfoRecord);
      v53 = v72;
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      sub_100008D04(v54, qword_1003FAAA0);
      v55 = v73;
      (*(v73 + 16))(v14, v69, v53);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.info.getter();
      v58 = os_log_type_enabled(v56, v57);
      v59 = v70;
      if (v58)
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v78 = v61;
        *v60 = 136315138;
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v55;
        v65 = v64;
        (*(v63 + 8))(v14, v53);
        v66 = sub_10021145C(v62, v65, &v78);

        *(v60 + 4) = v66;
        _os_log_impl(&_mh_execute_header, v56, v57, "Found BeneficiaryInfoRecord with beneficiaryID: %s", v60, 0xCu);
        sub_10000839C(v61);
      }

      else
      {

        (*(v55 + 8))(v14, v53);
      }

      sub_10023FBA0(v20, v59, type metadata accessor for BeneficiaryInfoRecord);
      swift_storeEnumTagMultiPayload();
      v76(v59);
      sub_100008D3C(v59, &unk_1003E10A0, &unk_100344480);
      sub_10023FC08(v20, type metadata accessor for BeneficiaryInfoRecord);
    }

    v34 = &unk_1003E4F30;
    v35 = &unk_1003444E0;
    v36 = v71;
  }

  return sub_100008D3C(v36, v34, v35);
}

void sub_100217D14(uint64_t a1, char a2, uint64_t a3, unint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v12 = type metadata accessor for BeneficiaryInfoRecord(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100005814(&unk_1003E4F30, &unk_1003444E0);
  __chkstk_darwin(v16 - 8);
  v18 = v47 - v17;
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAA0);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v48 = a1;
      v49 = v23;
      *v22 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v24 = String.init<A>(describing:)();
      v26 = sub_10021145C(v24, v25, &v49);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error fetching BeneficiaryInfoRecord : %s", v22, 0xCu);
      sub_10000839C(v23);
    }

    type metadata accessor for InheritanceError(0);
    v48 = 2107;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10023F3A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v27 = v49;
    a5(v49);
  }

  else
  {
    v47[1] = a6;
    v28 = a5;
    v29 = *(a1 + 16);
    if (v29)
    {
      v30 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v31 = *(v13 + 72);
      while (1)
      {
        sub_10023FBA0(v30, v15, type metadata accessor for BeneficiaryInfoRecord);
        v32 = &v15[*(v12 + 20)];
        v33 = *(v32 + 1);
        if (v33)
        {
          v34 = *v32 == a3 && v33 == a4;
          if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }

        sub_10023FC08(v15, type metadata accessor for BeneficiaryInfoRecord);
        v30 += v31;
        if (!--v29)
        {
          goto LABEL_21;
        }
      }

      sub_10023FC6C(v15, v18, type metadata accessor for BeneficiaryInfoRecord);
      (*(v13 + 56))(v18, 0, 1, v12);
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_100008D04(v35, qword_1003FAAA0);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v49 = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_10021145C(a3, a4, &v49);
        _os_log_impl(&_mh_execute_header, v36, v37, "Found BeneficiaryInfoRecord with handle: %s", v38, 0xCu);
        sub_10000839C(v39);
      }

      type metadata accessor for InheritanceError(0);
      v40 = 6;
    }

    else
    {
LABEL_21:
      (*(v13 + 56))(v18, 1, 1, v12);
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_100008D04(v41, qword_1003FAAA0);

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v49 = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_10021145C(a3, a4, &v49);
        _os_log_impl(&_mh_execute_header, v42, v43, "No BeneficiaryInfoRecord found with handle: %s", v44, 0xCu);
        sub_10000839C(v45);
      }

      type metadata accessor for InheritanceError(0);
      v40 = 3;
    }

    v48 = v40;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10023F3A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v46 = v49;
    v28(v49);

    sub_100008D3C(v18, &unk_1003E4F30, &unk_1003444E0);
  }
}

uint64_t sub_1002183D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAA0);
  sub_10023FBA0(a1, v10, type metadata accessor for BeneficiaryInfoRecord);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    type metadata accessor for UUID();
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_10023FC08(v10, type metadata accessor for BeneficiaryInfoRecord);
    v20 = sub_10021145C(v17, v19, &v24);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Saving BeneficiaryInfoRecord with beneficiaryID - %s...", v15, 0xCu);
    sub_10000839C(v16);

    a2 = v23;
  }

  else
  {

    sub_10023FC08(v10, type metadata accessor for BeneficiaryInfoRecord);
  }

  sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;

  sub_100231638(a1, sub_10023E5F4, v21);
}

uint64_t sub_10021869C(uint64_t a1, void (*a2)(void *))
{
  v4 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v8 = __chkstk_darwin(v7);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = (&v26 - v11);
  sub_100012D04(a1, &v26 - v11, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAAA0);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v13;
      v29 = v27;
      *v17 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v18 = String.init<A>(describing:)();
      v20 = sub_10021145C(v18, v19, &v29);

      *(v17 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error saving BeneficiaryInfoRecord : %s", v17, 0xCu);
      sub_10000839C(v27);
    }

    *v10 = v13;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v10);

    return sub_100008D3C(v10, &unk_1003E10A0, &unk_100344480);
  }

  else
  {
    sub_10023FC6C(v12, v6, type metadata accessor for BeneficiaryInfoRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAA0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Successfully saved BeneficiaryInfoRecord.", v25, 2u);
    }

    [objc_opt_self() postInheritanceContactChangedNotification];
    sub_10023FBA0(v6, v10, type metadata accessor for BeneficiaryInfoRecord);
    swift_storeEnumTagMultiPayload();
    a2(v10);
    sub_100008D3C(v10, &unk_1003E10A0, &unk_100344480);
    return sub_10023FC08(v6, type metadata accessor for BeneficiaryInfoRecord);
  }
}

uint64_t sub_100218AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAA0);
  sub_10023FBA0(a1, v10, type metadata accessor for BeneficiaryInfoRecord);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    type metadata accessor for UUID();
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_10023FC08(v10, type metadata accessor for BeneficiaryInfoRecord);
    v20 = sub_10021145C(v17, v19, &v24);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Deleting BeneficiaryInfoRecord with beneficiaryID - %s...", v15, 0xCu);
    sub_10000839C(v16);

    a2 = v23;
  }

  else
  {

    sub_10023FC08(v10, type metadata accessor for BeneficiaryInfoRecord);
  }

  sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;

  sub_100238260(a1, sub_10023E38C, v21);
}

uint64_t sub_100218DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a3;
  v38 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v36 = v10;
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAAA0);
  sub_10023FBA0(a1, v14, type metadata accessor for BeneficiaryInfoRecord);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = a1;
    v19 = v18;
    v33 = swift_slowAlloc();
    v34 = a2;
    v39 = v33;
    *v19 = 136315138;
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v8;
    v22 = v11;
    v23 = v5;
    v25 = v24;
    sub_10023FC08(v14, type metadata accessor for BeneficiaryInfoRecord);
    v26 = sub_10021145C(v20, v25, &v39);
    v5 = v23;
    v11 = v22;
    v8 = v21;

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "Adding OTPeerID to BeneficiaryInfoRecord with beneficiaryID - %s...", v19, 0xCu);
    sub_10000839C(v33);
    a2 = v34;

    a1 = v35;
  }

  else
  {

    sub_10023FC08(v14, type metadata accessor for BeneficiaryInfoRecord);
  }

  (*(v9 + 16))(v11, a2, v8);
  v27 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v28 = swift_allocObject();
  (*(v9 + 32))(v28 + v27, v11, v8);
  sub_1000080F8((v5 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v5 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v29 = swift_allocObject();
  v30 = v38;
  *(v29 + 16) = v37;
  *(v29 + 24) = v30;

  sub_100278BBC(a1, sub_10023E304, v28, 0, sub_10023E384, v29);
}

id sub_100219190@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v98 = a2;
  v90 = a3;
  v4 = type metadata accessor for Date.ISO8601FormatStyle();
  v82 = *(v4 - 8);
  v83 = v4;
  __chkstk_darwin(v4);
  v81 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v80 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v92 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v13 = __chkstk_darwin(v12 - 8);
  v94 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v78 - v15;
  v17 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v18 = __chkstk_darwin(v17 - 8);
  v91 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v78 - v20;
  v22 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v22);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10023FBA0(a1, v24, type metadata accessor for BeneficiaryInfoRecord);
  v25 = *(v10 + 16);
  v25(v21, v98, v9);
  v93 = v10;
  v26 = v10;
  v27 = v9;
  v28 = *(v26 + 56);
  v98 = v21;
  v96 = v26 + 56;
  v28(v21, 0, 1, v27);
  Date.init()();
  v95 = v7;
  v29 = *(v7 + 56);
  v97 = v16;
  v30 = v6;
  v29(v16, 0, 1, v6);
  result = [objc_opt_self() currentInfo];
  if (result)
  {
    v32 = result;
    v33 = [result buildVersion];

    v89 = v30;
    if (v33)
    {
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v35;
      v88 = v34;
    }

    else
    {
      v87 = 0;
      v88 = 0;
    }

    v36 = v90;
    v37 = v91;
    v91 = v22[11];
    v79 = v28;
    v28(&v90[v91], 1, 1, v27);
    v25(v36, v24, v27);
    v38 = v22[6];
    v40 = *&v24[v38];
    v39 = *&v24[v38 + 8];
    v41 = &v36[v38];
    *v41 = v40;
    *(v41 + 1) = v39;
    v86 = v39;
    v25(&v36[v22[8]], &v24[v22[8]], v27);
    v42 = v22[9];
    v44 = *&v24[v42];
    v43 = *&v24[v42 + 8];
    v45 = &v36[v42];
    *v45 = v44;
    v45[1] = v43;
    v46 = v22[5];
    v47 = *&v24[v46];
    v48 = *&v24[v46 + 8];
    v49 = &v36[v46];
    *v49 = v47;
    *(v49 + 1) = v48;
    v50 = v22[7];
    v52 = *&v24[v50];
    v51 = *&v24[v50 + 8];
    v53 = &v36[v50];
    v84 = v51;
    v85 = v52;
    *v53 = v52;
    v53[1] = v51;
    v36[v22[10]] = v24[v22[10]];
    sub_100012D04(v98, v37, &qword_1003D8B60, &unk_10033F210);
    v54 = v93;
    if ((*(v93 + 48))(v37, 1, v27) == 1)
    {

      sub_100015D6C(v44, v43);

      sub_100015D6C(v85, v84);
      sub_100008D3C(v37, &qword_1003D8B60, &unk_10033F210);
      sub_10009585C(&v24[v22[11]], &v36[v91]);
    }

    else
    {
      v55 = *(v54 + 32);
      v55(v92, v37, v27);

      sub_100015D6C(v44, v43);

      sub_100015D6C(v85, v84);
      v56 = v91;
      sub_100008D3C(&v36[v91], &qword_1003D8B60, &unk_10033F210);
      v55(&v36[v56], v92, v27);
      v79(&v36[v56], 0, 1, v27);
    }

    v57 = v36;
    v58 = &v36[v22[12]];
    v59 = v97;
    v60 = v94;
    sub_100012D04(v97, v94, &qword_1003DA110, &qword_10033F230);
    v61 = v95;
    v62 = v89;
    if ((*(v95 + 48))(v60, 1, v89) == 1)
    {
      sub_100008D3C(v59, &qword_1003DA110, &qword_10033F230);
      sub_100008D3C(v98, &qword_1003D8B60, &unk_10033F210);
      sub_100008D3C(v60, &qword_1003DA110, &qword_10033F230);
      v63 = &v24[v22[12]];
      v64 = *v63;
      v65 = v63[1];
    }

    else
    {
      v66 = v80;
      (*(v61 + 32))(v80, v60, v62);
      v67 = v81;
      sub_100195ACC(v81);
      v64 = Date.ISO8601Format(_:)();
      v65 = v68;
      (*(v82 + 8))(v67, v83);
      (*(v61 + 8))(v66, v62);
      sub_100008D3C(v97, &qword_1003DA110, &qword_10033F230);
      sub_100008D3C(v98, &qword_1003D8B60, &unk_10033F210);
    }

    *v58 = v64;
    v58[1] = v65;
    v69 = v22[14];
    v70 = &v57[v69];
    v71 = v87;
    v72 = v88;
    if (!v87)
    {
      v72 = *&v24[v69];
    }

    *v70 = v72;
    v70[1] = v71;
    v73 = v22[13];
    v74 = *&v24[v73];
    v75 = v24[v73 + 8];
    result = sub_10023FC08(v24, type metadata accessor for BeneficiaryInfoRecord);
    if (v75)
    {
      v76 = 1;
LABEL_16:
      v77 = &v57[v73];
      *v77 = v76;
      v77[8] = 0;
      return result;
    }

    v76 = v74 + 1;
    if (v74 != -1)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100219978(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for BeneficiaryInfoRecord(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v37 - v10;
  v12 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v13 = __chkstk_darwin(v12);
  v15 = (v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v17 = (v37 - v16);
  sub_100012D04(a1, v37 - v16, &unk_1003E10A0, &unk_100344480);
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
      v23 = a2;
      v24 = swift_slowAlloc();
      *v22 = 138412290;
      v25 = _convertErrorToNSError(_:)();
      *(v22 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "CKRecord record was not updated with otPeerID %@", v22, 0xCu);
      sub_100008D3C(v24, &unk_1003D9140, &qword_10033E640);
      a2 = v23;
    }

    *v15 = v18;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v15);

    return sub_100008D3C(v15, &unk_1003E10A0, &unk_100344480);
  }

  else
  {
    sub_10023FC6C(v17, v11, type metadata accessor for BeneficiaryInfoRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v37[2] = v12;
    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAA0);
    sub_10023FBA0(v11, v9, type metadata accessor for BeneficiaryInfoRecord);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136315138;
      v32 = sub_1001E6794();
      v37[1] = a3;
      v33 = a2;
      v35 = v34;
      sub_10023FC08(v9, type metadata accessor for BeneficiaryInfoRecord);
      v36 = sub_10021145C(v32, v35, &v38);
      a2 = v33;

      *(v30 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "CKRecord record updated with otPeerID. %s!", v30, 0xCu);
      sub_10000839C(v31);
    }

    else
    {

      sub_10023FC08(v9, type metadata accessor for BeneficiaryInfoRecord);
    }

    [objc_opt_self() postInheritanceContactChangedNotification];
    sub_10023FBA0(v11, v15, type metadata accessor for BeneficiaryInfoRecord);
    swift_storeEnumTagMultiPayload();
    a2(v15);
    sub_100008D3C(v15, &unk_1003E10A0, &unk_100344480);
    return sub_10023FC08(v11, type metadata accessor for BeneficiaryInfoRecord);
  }
}

uint64_t sub_100219E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v62 = a2;
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v7 - 8);
  v61 = v51 - v8;
  v9 = type metadata accessor for BenefactorInfoRecord(0);
  v10 = *(v9 - 8);
  v57 = v9;
  v58 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v59 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = v51 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v51 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = v51 - v20;
  __chkstk_darwin(v19);
  v23 = v51 - v22;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100008D04(v24, qword_1003FAAA0);
  sub_10023FBA0(a1, v23, type metadata accessor for BenefactorInfoRecord);
  sub_10023FBA0(a1, v21, type metadata accessor for BenefactorInfoRecord);
  sub_10023FBA0(a1, v18, type metadata accessor for BenefactorInfoRecord);
  v60 = a1;
  sub_10023FBA0(a1, v15, type metadata accessor for BenefactorInfoRecord);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v56 = a3;
    v28 = v27;
    v54 = swift_slowAlloc();
    v63 = v54;
    *v28 = 136315906;
    v51[1] = type metadata accessor for UUID();
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v55 = v4;
    v53 = v25;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v26;
    v31 = v30;
    sub_10023FC08(v23, type metadata accessor for BenefactorInfoRecord);
    v32 = sub_10021145C(v29, v31, &v63);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    v33 = v57;
    v34 = &v21[*(v57 + 20)];
    v35 = *v34;
    v36 = v34[1];

    sub_10023FC08(v21, type metadata accessor for BenefactorInfoRecord);
    v37 = sub_10021145C(v35, v36, &v63);

    *(v28 + 14) = v37;
    *(v28 + 22) = 2080;
    v4 = v55;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    sub_10023FC08(v18, type metadata accessor for BenefactorInfoRecord);
    v41 = sub_10021145C(v38, v40, &v63);

    *(v28 + 24) = v41;
    *(v28 + 32) = 2048;
    v42 = *&v15[*(v33 + 24)];
    sub_10023FC08(v15, type metadata accessor for BenefactorInfoRecord);
    *(v28 + 34) = v42;
    v43 = v53;
    _os_log_impl(&_mh_execute_header, v53, v52, "Fetching stored BenefactorInfoRecord with beneficiaryID: %s\nhandle: %s\nrecordID: %s\nstatus: %ld", v28, 0x2Au);
    swift_arrayDestroy();

    a3 = v56;
  }

  else
  {
    sub_10023FC08(v15, type metadata accessor for BenefactorInfoRecord);

    sub_10023FC08(v18, type metadata accessor for BenefactorInfoRecord);
    sub_10023FC08(v21, type metadata accessor for BenefactorInfoRecord);
    sub_10023FC08(v23, type metadata accessor for BenefactorInfoRecord);
  }

  v44 = type metadata accessor for TaskPriority();
  v45 = v61;
  (*(*(v44 - 8) + 56))(v61, 1, 1, v44);
  v46 = v59;
  sub_10023FBA0(v60, v59, type metadata accessor for BenefactorInfoRecord);
  v47 = (*(v58 + 80) + 40) & ~*(v58 + 80);
  v48 = swift_allocObject();
  v48[2] = 0;
  v48[3] = 0;
  v48[4] = v4;
  sub_10023FC6C(v46, v48 + v47, type metadata accessor for BenefactorInfoRecord);
  v49 = (v48 + ((v11 + v47 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v49 = v62;
  v49[1] = a3;

  sub_1000BCD5C(0, 0, v45, &unk_100346A80, v48);
}

uint64_t sub_10021A42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[7] = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v7[8] = swift_task_alloc();
  v7[9] = type metadata accessor for BenefactorInfoRecord(0);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return _swift_task_switch(sub_10021A530, 0, 0);
}

uint64_t sub_10021A530()
{
  sub_1000080F8((v0[3] + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v0[3] + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_10021A5F8;
  v2 = v0[14];
  v3 = v0[4];

  return sub_10022E8B0(v2, v3);
}

uint64_t sub_10021A5F8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_10021AB4C;
  }

  else
  {
    v2 = sub_10021A70C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10021A70C()
{
  v36 = v0;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[4];
  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAA0);
  sub_10023FBA0(v5, v2, type metadata accessor for BenefactorInfoRecord);
  sub_10023FBA0(v5, v1, type metadata accessor for BenefactorInfoRecord);
  sub_10023FBA0(v5, v3, type metadata accessor for BenefactorInfoRecord);
  sub_10023FBA0(v5, v4, type metadata accessor for BenefactorInfoRecord);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[11];
  if (v9)
  {
    v32 = v0[9];
    v34 = v0[10];
    v13 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v13 = 136315906;
    type metadata accessor for UUID();
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v33 = v8;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_10023FC08(v10, type metadata accessor for BenefactorInfoRecord);
    v17 = sub_10021145C(v14, v16, &v35);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = (v11 + *(v32 + 20));
    v19 = *v18;
    v20 = v18[1];

    sub_10023FC08(v11, type metadata accessor for BenefactorInfoRecord);
    v21 = sub_10021145C(v19, v20, &v35);

    *(v13 + 14) = v21;
    *(v13 + 22) = 2080;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    sub_10023FC08(v12, type metadata accessor for BenefactorInfoRecord);
    v25 = sub_10021145C(v22, v24, &v35);

    *(v13 + 24) = v25;
    *(v13 + 32) = 2048;
    v26 = *(v34 + *(v32 + 24));
    sub_10023FC08(v34, type metadata accessor for BenefactorInfoRecord);
    *(v13 + 34) = v26;
    _os_log_impl(&_mh_execute_header, v7, v33, "Successfully fetched BenefactorInfoRecord with beneficiaryID: %s\nhandle: %s\nrecordID: %s\nstatus: %ld", v13, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v0[10], type metadata accessor for BenefactorInfoRecord);

    sub_10023FC08(v12, type metadata accessor for BenefactorInfoRecord);
    sub_10023FC08(v11, type metadata accessor for BenefactorInfoRecord);
    sub_10023FC08(v10, type metadata accessor for BenefactorInfoRecord);
  }

  v27 = v0[14];
  v28 = v0[8];
  v29 = v0[5];
  sub_10023FBA0(v27, v28, type metadata accessor for BenefactorInfoRecord);
  swift_storeEnumTagMultiPayload();
  v29(v28);
  sub_100008D3C(v28, &unk_1003E1DD0, &qword_1003444D0);
  sub_10023FC08(v27, type metadata accessor for BenefactorInfoRecord);

  v30 = v0[1];

  return v30();
}

uint64_t sub_10021AB4C()
{
  v15 = v0;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[16];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v0[2] = v4;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v7 = String.init<A>(describing:)();
    v9 = sub_10021145C(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error fetching BenefactorInfoRecord : %s", v5, 0xCu);
    sub_10000839C(v6);
  }

  v10 = v0[8];
  v11 = v0[5];
  *v10 = v0[16];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v11(v10);

  sub_100008D3C(v10, &unk_1003E1DD0, &qword_1003444D0);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10021AD90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a1;
  v26 = a2;
  v4 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v27 = type metadata accessor for URL();
  v8 = *(v27 - 8);
  v9 = __chkstk_darwin(v27);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAA0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Fetching stored BenefactorInfoRecords...", v17, 2u);
  }

  v18 = sub_1000080F8((v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v19 = *(v8 + 8);
  v20 = v11;
  v21 = v27;
  v19(v20, v27);
  v22 = swift_allocObject();
  v23 = v26;
  *(v22 + 16) = v25;
  *(v22 + 24) = v23;
  (*(v5 + 16))(v7, *v18 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v4);

  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v7, v4);
  sub_1000080F8(v28, v28[3]);
  sub_1000328E4(v13, sub_10023DD00, v22);

  v19(v13, v21);
  return sub_10000839C(v28);
}

uint64_t sub_10021B124(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v75 = a5;
  v76 = a4;
  v74 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  __chkstk_darwin(v74);
  v9 = (&v68 - v8);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v72 = v10;
  v73 = v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v68 - v15;
  v17 = type metadata accessor for BenefactorInfoRecord(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100005814(&unk_1003E1DE0, &qword_1003444D8);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAA0);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v77 = a1;
      v78 = v30;
      *v29 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v31 = String.init<A>(describing:)();
      v33 = sub_10021145C(v31, v32, &v78);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Error fetching BenefactorInfoRecord : %s", v29, 0xCu);
      sub_10000839C(v30);
    }

    *v9 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v76(v9);
    v34 = &unk_1003E1DD0;
    v35 = &qword_1003444D0;
    v36 = v9;
  }

  else
  {
    v70 = v9;
    __chkstk_darwin(v25);
    v69 = a3;
    *(&v68 - 2) = a3;
    v38 = v37;
    sub_100213F74(sub_10023DCD0, a1, type metadata accessor for BenefactorInfoRecord, type metadata accessor for BenefactorInfoRecord, v37);
    v71 = v38;
    sub_100012D04(v38, v24, &unk_1003E1DE0, &qword_1003444D8);
    if ((*(v18 + 48))(v24, 1, v17) == 1)
    {
      sub_100008D3C(v24, &unk_1003E1DE0, &qword_1003444D8);
      v39 = v72;
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100008D04(v40, qword_1003FAAA0);
      v41 = v73;
      (*(v73 + 16))(v16, v69, v39);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v70;
      if (v44)
      {
        v46 = swift_slowAlloc();
        v47 = v41;
        v48 = swift_slowAlloc();
        v78 = v48;
        *v46 = 136315138;
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        (*(v47 + 8))(v16, v39);
        v52 = sub_10021145C(v49, v51, &v78);

        *(v46 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v42, v43, "No BenefactorInfoRecord found with beneficiaryID: %s", v46, 0xCu);
        sub_10000839C(v48);
      }

      else
      {

        (*(v41 + 8))(v16, v39);
      }

      type metadata accessor for InheritanceError(0);
      v77 = 3;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10023F3A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      *v45 = v78;
      swift_storeEnumTagMultiPayload();
      v76(v45);
      sub_100008D3C(v45, &unk_1003E1DD0, &qword_1003444D0);
    }

    else
    {
      sub_10023FC6C(v24, v20, type metadata accessor for BenefactorInfoRecord);
      v53 = v72;
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      sub_100008D04(v54, qword_1003FAAA0);
      v55 = v73;
      (*(v73 + 16))(v14, v69, v53);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.info.getter();
      v58 = os_log_type_enabled(v56, v57);
      v59 = v70;
      if (v58)
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v78 = v61;
        *v60 = 136315138;
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v55;
        v65 = v64;
        (*(v63 + 8))(v14, v53);
        v66 = sub_10021145C(v62, v65, &v78);

        *(v60 + 4) = v66;
        _os_log_impl(&_mh_execute_header, v56, v57, "Found BenefactorInfoRecord with beneficiaryID: %s", v60, 0xCu);
        sub_10000839C(v61);
      }

      else
      {

        (*(v55 + 8))(v14, v53);
      }

      sub_10023FBA0(v20, v59, type metadata accessor for BenefactorInfoRecord);
      swift_storeEnumTagMultiPayload();
      v76(v59);
      sub_100008D3C(v59, &unk_1003E1DD0, &qword_1003444D0);
      sub_10023FC08(v20, type metadata accessor for BenefactorInfoRecord);
    }

    v34 = &unk_1003E1DE0;
    v35 = &qword_1003444D8;
    v36 = v71;
  }

  return sub_100008D3C(v36, v34, v35);
}

uint64_t sub_10021BA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for BenefactorInfoRecord(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAA0);
  sub_10023FBA0(a1, v10, type metadata accessor for BenefactorInfoRecord);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    type metadata accessor for UUID();
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_10023FC08(v10, type metadata accessor for BenefactorInfoRecord);
    v20 = sub_10021145C(v17, v19, &v24);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Saving BenefactorInfoRecord with beneficiaryID - %s...", v15, 0xCu);
    sub_10000839C(v16);

    a2 = v23;
  }

  else
  {

    sub_10023FC08(v10, type metadata accessor for BenefactorInfoRecord);
  }

  sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;

  sub_10023297C(a1, sub_10023DB34, v21);
}

uint64_t sub_10021BD48(uint64_t a1, void (*a2)(void *))
{
  v4 = type metadata accessor for BenefactorInfoRecord(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v8 = __chkstk_darwin(v7);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = (&v26 - v11);
  sub_100012D04(a1, &v26 - v11, &unk_1003E1DD0, &qword_1003444D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAAA0);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v13;
      v29 = v27;
      *v17 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v18 = String.init<A>(describing:)();
      v20 = sub_10021145C(v18, v19, &v29);

      *(v17 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error saving BenefactorInfoRecord : %s", v17, 0xCu);
      sub_10000839C(v27);
    }

    *v10 = v13;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v10);

    return sub_100008D3C(v10, &unk_1003E1DD0, &qword_1003444D0);
  }

  else
  {
    sub_10023FC6C(v12, v6, type metadata accessor for BenefactorInfoRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAA0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Successfully saved BenefactorInfoRecord.", v25, 2u);
    }

    [objc_opt_self() postInheritanceContactChangedNotification];
    sub_10023FBA0(v6, v10, type metadata accessor for BenefactorInfoRecord);
    swift_storeEnumTagMultiPayload();
    a2(v10);
    sub_100008D3C(v10, &unk_1003E1DD0, &qword_1003444D0);
    return sub_10023FC08(v6, type metadata accessor for BenefactorInfoRecord);
  }
}

uint64_t sub_10021C184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for BenefactorInfoRecord(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAA0);
  sub_10023FBA0(a1, v10, type metadata accessor for BenefactorInfoRecord);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    type metadata accessor for UUID();
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_10023FC08(v10, type metadata accessor for BenefactorInfoRecord);
    v20 = sub_10021145C(v17, v19, &v24);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Deleting BenefactorInfoRecord with beneficiaryID - %s...", v15, 0xCu);
    sub_10000839C(v16);

    a2 = v23;
  }

  else
  {

    sub_10023FC08(v10, type metadata accessor for BenefactorInfoRecord);
  }

  sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;

  sub_100237D28(a1, sub_10023D974, v21);
}

uint64_t sub_10021C44C(uint64_t a1, void (*a2)(void *), uint64_t a3, const char *a4, const char *a5)
{
  v32 = a5;
  v33 = a3;
  v34 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v12 = __chkstk_darwin(v11);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = (&v31 - v15);
  sub_100012D04(a1, &v31 - v15, &unk_1003D9220, &unk_10033E8C0);
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
      v35 = v17;
      v36 = v22;
      *v21 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v23 = String.init<A>(describing:)();
      v25 = sub_10021145C(v23, v24, &v36);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, a4, v21, 0xCu);
      sub_10000839C(v22);
    }

    *v14 = v17;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v34(v14);

    return sub_100008D3C(v14, &unk_1003D9220, &unk_10033E8C0);
  }

  else
  {
    (*(v8 + 32))(v10, v16, v7);
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
      _os_log_impl(&_mh_execute_header, v28, v29, v32, v30, 2u);
    }

    [objc_opt_self() postInheritanceContactChangedNotification];
    (*(v8 + 16))(v14, v10, v7);
    swift_storeEnumTagMultiPayload();
    v34(v14);
    sub_100008D3C(v14, &unk_1003D9220, &unk_10033E8C0);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_10021C8A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a1;
  v26 = a2;
  v4 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v27 = type metadata accessor for URL();
  v8 = *(v27 - 8);
  v9 = __chkstk_darwin(v27);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAA0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Fetching stored InheritanceHealthRecords...", v17, 2u);
  }

  v18 = sub_1000080F8((v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v19 = *(v8 + 8);
  v20 = v11;
  v21 = v27;
  v19(v20, v27);
  v22 = swift_allocObject();
  v23 = v26;
  *(v22 + 16) = v25;
  *(v22 + 24) = v23;
  (*(v5 + 16))(v7, *v18 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v4);

  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v7, v4);
  sub_1000080F8(v28, v28[3]);
  sub_10003295C(v13, sub_10023D944, v22);

  v19(v13, v21);
  return sub_10000839C(v28);
}

uint64_t sub_10021CBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = a3;
  v54 = a2;
  v53 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v56 = *(v53 - 8);
  __chkstk_darwin(v53);
  v55 = &v46 - v6;
  v7 = type metadata accessor for URL();
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = __chkstk_darwin(v7);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v52 = &v46 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v47 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v14;
  __chkstk_darwin(v13);
  v16 = &v46 - v15;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAA0);
  v49 = *(v12 + 16);
  v49(v16, a1, v11);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  v20 = os_log_type_enabled(v18, v19);
  v48 = v11;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v46 = v3;
    v22 = a1;
    v23 = v21;
    v24 = swift_slowAlloc();
    v60[0] = v24;
    *v23 = 136315138;
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v11;
    v28 = v27;
    (*(v12 + 8))(v16, v26);
    v29 = sub_10021145C(v25, v28, v60);

    *(v23 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "Fetching stored InheritanceHealthRecord with beneficiaryID: %s...", v23, 0xCu);
    sub_10000839C(v24);

    a1 = v22;
    v4 = v46;
  }

  else
  {

    (*(v12 + 8))(v16, v11);
  }

  v46 = sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  type metadata accessor for LocalCache();
  v30 = v51;
  sub_100307F40();
  v31 = v52;
  URL.appendingPathComponent(_:isDirectory:)();
  v32 = *(v58 + 8);
  v33 = v30;
  v34 = v59;
  v32(v33, v59);
  v36 = v47;
  v35 = v48;
  v49(v47, a1, v48);
  v37 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v38 = (v50 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  (*(v12 + 32))(v39 + v37, v36, v35);
  v40 = (v39 + v38);
  v41 = v55;
  v42 = v56;
  v43 = v57;
  *v40 = v54;
  v40[1] = v43;
  v44 = v53;
  (*(v42 + 16))(v41, *v46 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v53);

  Dependency.wrappedValue.getter();
  (*(v42 + 8))(v41, v44);
  sub_1000080F8(v60, v60[3]);
  sub_10003295C(v31, sub_10023D92C, v39);

  v32(v31, v34);
  return sub_10000839C(v60);
}

uint64_t sub_10021D194(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v75 = a5;
  v76 = a4;
  v74 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  __chkstk_darwin(v74);
  v9 = (&v68 - v8);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v72 = v10;
  v73 = v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v68 - v15;
  v17 = type metadata accessor for InheritanceHealthRecord(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100005814(&qword_1003E0E20, &qword_100344490);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAA0);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v77 = a1;
      v78 = v30;
      *v29 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v31 = String.init<A>(describing:)();
      v33 = sub_10021145C(v31, v32, &v78);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Error fetching InheritanceHealthRecord : %s", v29, 0xCu);
      sub_10000839C(v30);
    }

    *v9 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v76(v9);
    v34 = &unk_1003E10C0;
    v35 = &qword_100346A70;
    v36 = v9;
  }

  else
  {
    v70 = v9;
    __chkstk_darwin(v25);
    v69 = a3;
    *(&v68 - 2) = a3;
    v38 = v37;
    sub_100213F74(sub_100240E5C, a1, type metadata accessor for InheritanceHealthRecord, type metadata accessor for InheritanceHealthRecord, v37);
    v71 = v38;
    sub_100012D04(v38, v24, &qword_1003E0E20, &qword_100344490);
    if ((*(v18 + 48))(v24, 1, v17) == 1)
    {
      sub_100008D3C(v24, &qword_1003E0E20, &qword_100344490);
      v39 = v72;
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100008D04(v40, qword_1003FAAA0);
      v41 = v73;
      (*(v73 + 16))(v16, v69, v39);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v70;
      if (v44)
      {
        v46 = swift_slowAlloc();
        v47 = v41;
        v48 = swift_slowAlloc();
        v78 = v48;
        *v46 = 136315138;
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        (*(v47 + 8))(v16, v39);
        v52 = sub_10021145C(v49, v51, &v78);

        *(v46 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v42, v43, "No InheritanceHealthRecord found with beneficiaryID: %s", v46, 0xCu);
        sub_10000839C(v48);
      }

      else
      {

        (*(v41 + 8))(v16, v39);
      }

      type metadata accessor for InheritanceError(0);
      v77 = 3;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10023F3A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      *v45 = v78;
      swift_storeEnumTagMultiPayload();
      v76(v45);
      sub_100008D3C(v45, &unk_1003E10C0, &qword_100346A70);
    }

    else
    {
      sub_10023FC6C(v24, v20, type metadata accessor for InheritanceHealthRecord);
      v53 = v72;
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      sub_100008D04(v54, qword_1003FAAA0);
      v55 = v73;
      (*(v73 + 16))(v14, v69, v53);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.info.getter();
      v58 = os_log_type_enabled(v56, v57);
      v59 = v70;
      if (v58)
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v78 = v61;
        *v60 = 136315138;
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v55;
        v65 = v64;
        (*(v63 + 8))(v14, v53);
        v66 = sub_10021145C(v62, v65, &v78);

        *(v60 + 4) = v66;
        _os_log_impl(&_mh_execute_header, v56, v57, "Found InheritanceHealthRecord with beneficiaryID: %s", v60, 0xCu);
        sub_10000839C(v61);
      }

      else
      {

        (*(v55 + 8))(v14, v53);
      }

      sub_10023FBA0(v20, v59, type metadata accessor for InheritanceHealthRecord);
      swift_storeEnumTagMultiPayload();
      v76(v59);
      sub_100008D3C(v59, &unk_1003E10C0, &qword_100346A70);
      sub_10023FC08(v20, type metadata accessor for InheritanceHealthRecord);
    }

    v34 = &qword_1003E0E20;
    v35 = &qword_100344490;
    v36 = v71;
  }

  return sub_100008D3C(v36, v34, v35);
}

uint64_t sub_10021DAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for InheritanceHealthRecord(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAA0);
  sub_10023FBA0(a1, v10, type metadata accessor for InheritanceHealthRecord);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    type metadata accessor for UUID();
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_10023FC08(v10, type metadata accessor for InheritanceHealthRecord);
    v20 = sub_10021145C(v17, v19, &v24);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Saving BenefactorInfoRecord with beneficiaryID - %s...", v15, 0xCu);
    sub_10000839C(v16);

    a2 = v23;
  }

  else
  {

    sub_10023FC08(v10, type metadata accessor for InheritanceHealthRecord);
  }

  sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;

  sub_100231CA4(a1, sub_10023D76C, v21);
}

uint64_t sub_10021DDB8(uint64_t a1, void (*a2)(void *))
{
  v4 = type metadata accessor for InheritanceHealthRecord(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  v8 = __chkstk_darwin(v7);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = (&v26 - v11);
  sub_100012D04(a1, &v26 - v11, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAAA0);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v13;
      v29 = v27;
      *v17 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v18 = String.init<A>(describing:)();
      v20 = sub_10021145C(v18, v19, &v29);

      *(v17 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error saving InheritanceHealthRecord : %s", v17, 0xCu);
      sub_10000839C(v27);
    }

    *v10 = v13;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v10);

    return sub_100008D3C(v10, &unk_1003E10C0, &qword_100346A70);
  }

  else
  {
    sub_10023FC6C(v12, v6, type metadata accessor for InheritanceHealthRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAA0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Successfully saved InheritanceHealthRecord.", v25, 2u);
    }

    sub_10023FBA0(v6, v10, type metadata accessor for InheritanceHealthRecord);
    swift_storeEnumTagMultiPayload();
    a2(v10);
    sub_100008D3C(v10, &unk_1003E10C0, &qword_100346A70);
    return sub_10023FC08(v6, type metadata accessor for InheritanceHealthRecord);
  }
}

uint64_t sub_10021E1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for InheritanceHealthRecord(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAA0);
  sub_10023FBA0(a1, v10, type metadata accessor for InheritanceHealthRecord);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    type metadata accessor for UUID();
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_10023FC08(v10, type metadata accessor for InheritanceHealthRecord);
    v20 = sub_10021145C(v17, v19, &v24);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Deleting InheritanceHealthRecord with beneficiaryID - %s...", v15, 0xCu);
    sub_10000839C(v16);

    a2 = v23;
  }

  else
  {

    sub_10023FC08(v10, type metadata accessor for InheritanceHealthRecord);
  }

  sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;

  sub_100238CD0(a1, sub_10023D58C, v21);
}

uint64_t sub_10021E49C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v30[1] = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v10 = __chkstk_darwin(v9);
  v12 = (v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = (v30 - v13);
  sub_100012D04(a1, v30 - v13, &unk_1003D9220, &unk_10033E8C0);
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
      v30[2] = v15;
      v31 = v20;
      *v19 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v21 = String.init<A>(describing:)();
      v23 = a2;
      v24 = sub_10021145C(v21, v22, &v31);

      *(v19 + 4) = v24;
      a2 = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error deleting InheritanceHealthRecord : %s", v19, 0xCu);
      sub_10000839C(v20);
    }

    *v12 = v15;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v12);

    return sub_100008D3C(v12, &unk_1003D9220, &unk_10033E8C0);
  }

  else
  {
    (*(v6 + 32))(v8, v14, v5);
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
      _os_log_impl(&_mh_execute_header, v27, v28, "Successfully deleted InheritanceHealthRecord.", v29, 2u);
    }

    (*(v6 + 16))(v12, v8, v5);
    swift_storeEnumTagMultiPayload();
    a2(v12);
    sub_100008D3C(v12, &unk_1003D9220, &unk_10033E8C0);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10021E8F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock[-1] - v8;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAAA0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Checking manatee status...", v13, 2u);
  }

  v14 = sub_1000080F8((v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  (*(v7 + 16))(v9, *v14 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v6);

  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (qword_1003D7EC0 != -1)
  {
    swift_once();
  }

  v16 = sub_1002E2BC4(qword_1003FA9D0, qword_1003FA9D8);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10023D568;
  *(v17 + 24) = v15;
  aBlock[4] = sub_100016014;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003B0120;
  v18 = _Block_copy(aBlock);

  [v16 accountInfoWithCompletionHandler:v18];
  _Block_release(v18);

  return sub_10000839C(v22);
}

uint64_t sub_10021EC50(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAAA0);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v10 = String.init<A>(describing:)();
      v12 = sub_10021145C(v10, v11, &v20);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error fetching manatee status : %s", v8, 0xCu);
      sub_10000839C(v9);
    }

    v13 = a1;
    v14 = 1;
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAAA0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      *(v18 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v16, v17, "Successfully fetched Manatee status - %{BOOL}d.", v18, 8u);
    }

    v13 = a1 & 1;
    v14 = 0;
  }

  return a3(v13, v14);
}

uint64_t sub_10021EEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BenefactorInfoRecord(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10023FBA0(a1, v7, type metadata accessor for BenefactorInfoRecord);
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 16);
  v9(a2, v7, v8);
  v9(a2 + v5[9], &v7[v5[9]], v8);
  v10 = v5[10];
  v11 = *&v7[v10];
  v12 = *&v7[v10 + 8];
  v13 = (a2 + v10);
  *v13 = v11;
  v13[1] = v12;
  v14 = v5[7];
  v15 = *&v7[v14];
  v16 = *&v7[v14 + 8];
  v17 = (a2 + v14);
  *v17 = v15;
  v17[1] = v16;
  *(a2 + v5[8]) = 4;
  LOBYTE(v9) = v7[v5[11]];
  sub_100015D6C(v11, v12);

  result = sub_10023FC08(v7, type metadata accessor for BenefactorInfoRecord);
  *(a2 + v5[11]) = v9;
  return result;
}

uint64_t sub_10021F028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InheritanceInvitationRecord(0);
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10023FBA0(a1, v6, type metadata accessor for InheritanceInvitationRecord);
  v7 = (a2 + v4[6]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v4[7]);
  v9 = type metadata accessor for UUID();
  *v8 = 0;
  v8[1] = 0;
  v10 = *(*(v9 - 8) + 16);
  v10(a2, v6, v9);
  v10(a2 + v4[9], &v6[v4[9]], v9);
  v11 = v4[10];
  v12 = *&v6[v11];
  v13 = *&v6[v11 + 8];
  v14 = (a2 + v11);
  *v14 = v12;
  v14[1] = v13;
  v15 = v4[5];
  v16 = *&v6[v15];
  v17 = *&v6[v15 + 8];
  v18 = (a2 + v15);
  *v18 = v16;
  v18[1] = v17;
  v19 = &v6[v4[6]];
  v20 = *(v19 + 1);
  if (v20)
  {
    *v7 = *v19;
    v7[1] = v20;
  }

  v21 = &v6[v4[7]];
  v22 = *(v21 + 1);
  if (v22)
  {
    *v8 = *v21;
    v8[1] = v22;
  }

  *(a2 + v4[8]) = 4;
  v23 = v6[v4[11]];
  sub_100015D6C(v12, v13);

  result = sub_10023FC08(v6, type metadata accessor for InheritanceInvitationRecord);
  *(a2 + v4[11]) = v23;
  return result;
}

uint64_t sub_10021F1F4()
{
  v1 = OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InheritanceStorageController(uint64_t a1)
{
  result = qword_1003E3498;
  if (!qword_1003E3498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10021F300(uint64_t a1)
{
  sub_1001CFA84(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10021F398(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = type metadata accessor for CustodianshipInfoRecord(0);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10021F48C, 0, 0);
}

uint64_t sub_10021F48C()
{
  v38 = v0;
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(*(v0 + 24) + *(*(v0 + 64) + 36)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1003FA9C0;
  }

  v3 = *v1;
  v2 = v1[1];

  v4 = sub_1002E2BC4(v3, v2);

  v5 = [v4 privateCloudDatabase];
  *(v0 + 80) = v5;

  v6 = UUID.uuidString.getter();
  v8 = sub_1002E2EE0(v6, v7);
  *(v0 + 88) = v8;

  sub_10023E004();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  v12 = v8;
  v13._countAndFlagsBits = v9;
  v13._object = v11;
  v14.super.isa = CKRecordID.init(recordName:zoneID:)(v13, v12).super.isa;
  *(v0 + 96) = v14;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 72);
  v16 = *(v0 + 24);
  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAA58);
  sub_10023FBA0(v16, v15, type metadata accessor for CustodianshipInfoRecord);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 72);
  if (v20)
  {
    isa = v14.super.isa;
    v23 = *(v0 + 48);
    v22 = *(v0 + 56);
    v24 = *(v0 + 40);
    v25 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v25 = 136315394;
    *(v25 + 4) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, &v37);
    *(v25 + 12) = 2080;
    (*(v23 + 16))(v22, v21, v24);
    sub_10023FC08(v21, type metadata accessor for CustodianshipInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v23 + 8))(v22, v24);
    v14.super.isa = isa;
    v29 = sub_10021145C(v26, v28, &v37);

    *(v25 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s recordID:%s one-off record fetch", v25, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(*(v0 + 72), type metadata accessor for CustodianshipInfoRecord);
  }

  v30 = swift_task_alloc();
  *(v0 + 104) = v30;
  v31 = *(v0 + 24);
  *(v30 + 16) = v5;
  *(v30 + 24) = v14;
  *(v30 + 32) = v31;
  v32 = swift_task_alloc();
  *(v0 + 112) = v32;
  *v32 = v0;
  v32[1] = sub_10021F95C;
  v33 = *(v0 + 64);
  v34 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v34, 0, 0, 0x3A5F286863746566, 0xE900000000000029, sub_10023F718, v30, v33);
}

uint64_t sub_10021F95C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100240EAC;
  }

  else
  {

    v2 = sub_100240EA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10021FA78(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = type metadata accessor for CustodianRecord(0);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10021FB6C, 0, 0);
}

uint64_t sub_10021FB6C()
{
  v36 = v0;
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(*(v0 + 24) + *(*(v0 + 64) + 48)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1003FA9C0;
  }

  v2 = *v1;
  v3 = v1[1];

  v4 = sub_1002E2BC4(v2, v3);

  v5 = [v4 privateCloudDatabase];
  *(v0 + 80) = v5;

  v6 = sub_1002E2EE0(0xD000000000000011, 0x8000000100330430);
  *(v0 + 88) = v6;
  sub_10023E004();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  v10 = v6;
  v11._countAndFlagsBits = v7;
  v11._object = v9;
  v12.super.isa = CKRecordID.init(recordName:zoneID:)(v11, v10).super.isa;
  *(v0 + 96) = v12;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 72);
  v14 = *(v0 + 24);
  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAA58);
  sub_10023FBA0(v14, v13, type metadata accessor for CustodianRecord);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 72);
  if (v18)
  {
    isa = v12.super.isa;
    v21 = *(v0 + 48);
    v20 = *(v0 + 56);
    v22 = *(v0 + 40);
    v23 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v23 = 136315394;
    *(v23 + 4) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, &v35);
    *(v23 + 12) = 2080;
    (*(v21 + 16))(v20, v19, v22);
    sub_10023FC08(v19, type metadata accessor for CustodianRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v21 + 8))(v20, v22);
    v12.super.isa = isa;
    v27 = sub_10021145C(v24, v26, &v35);

    *(v23 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s recordID:%s one-off record fetch", v23, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(*(v0 + 72), type metadata accessor for CustodianRecord);
  }

  v28 = swift_task_alloc();
  *(v0 + 104) = v28;
  v29 = *(v0 + 24);
  *(v28 + 16) = v5;
  *(v28 + 24) = v12;
  *(v28 + 32) = v29;
  v30 = swift_task_alloc();
  *(v0 + 112) = v30;
  *v30 = v0;
  v30[1] = sub_10021F95C;
  v31 = *(v0 + 64);
  v32 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v32, 0, 0, 0x3A5F286863746566, 0xE900000000000029, sub_100240998, v28, v31);
}