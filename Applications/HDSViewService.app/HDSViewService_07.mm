uint64_t sub_1000AADC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v4(a2, v5);
}

double sub_1000AAE60(unsigned int a1, unint64_t a2, uint64_t a3, const char *a4)
{
  sub_1000B4318(a1);
  v7 = String.init(cString:)();
  v9 = v8;
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100012AAC(v10, qword_100104988);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17[0] = v14;
    *v13 = 136315138;
    v15 = sub_1000B08A0(v7, v9, v17);

    *(v13 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v11, v12, a4, v13, 0xCu);
    sub_10000E70C(v14);
  }

  else
  {
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000A9170(a1, a2);
  }

  return result;
}

uint64_t sub_1000AB028(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100012AAC(v5, qword_100104988);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000B08A0(a1, a2, v13);
    _os_log_impl(&_mh_execute_header, v6, v7, "HomePodSetupInteractor SysDrop sysdropFinishedHandler: path = %s", v8, 0xCu);
    sub_10000E70C(v9);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 48);

    v12 = (v11 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_sysdropPath);
    *v12 = a1;
    v12[1] = a2;
  }

  return result;
}

uint64_t sub_1000AB1E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v2(v3, v5);
}

double sub_1000AB250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100012AAC(v12, qword_100104988);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: Prompt for AppleMusic", v15, 2u);
    }

    v16 = (*(v11 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceGUID);
    *v16 = a1;
    v16[1] = a2;

    v17 = (*(v11 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceSerialNumber);
    *v17 = a3;
    v17[1] = a4;

    if (swift_unknownObjectWeakLoadStrong())
    {

      sub_1000B36E0(v18);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000AB430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v3(v4, v6, v7, v9);
}

double sub_1000AB4C8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100012AAC(v5, qword_100104988);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    if (a1 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 4) = v9;

    _os_log_impl(&_mh_execute_header, v6, v7, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: Prompt for home (%ld) homes)", v8, 0xCu);
  }

  else
  {
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000AB648(a1, a2);
  }

  return result;
}

uint64_t sub_1000AB648(uint64_t a1, uint64_t a2)
{
  *(*(v2 + 48) + 40) = a1;

  *(*(v2 + 48) + 72) = a2;
  v4 = *(v2 + 80);
  sub_10003AE18(0, &qword_100104E00, HMHome_ptr);
  v5 = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v5 setAvailableHomes:isa];

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10007E65C(1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000AB744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  sub_10003AE18(0, &qword_100104E00, HMHome_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4(v5, a3);
}

double sub_1000AB7DC(uint64_t a1, int a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100012AAC(v7, qword_100104988);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: Prompt for home name creation", v10, 2u);
    }

    *(*(v6 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_namingIssue) = a2;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10007E65C(2);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_1000AB938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100012AAC(v8, qword_100104988);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: Prompt for home same location creation", v11, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = (*(v7 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_sameLocationHomeName);
      *v12 = a1;
      v12[1] = a2;

      sub_10007E65C(3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_1000ABACC(char a1, uint64_t a2)
{
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100104988);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: Prompt for Location Already Enabled", v6, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + 48);

    *(v9 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_userEnabledLocationForHomePod) = a1 & 1;
  }

  return result;
}

double sub_1000ABC10(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100012AAC(v4, qword_100104988);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: Prompt for PersonalRequests", v7, 2u);
    }

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = *(v3 + 80);
      v10 = *(v8 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_setupSession);
      *(v8 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_setupSession) = v9;
      v11 = v9;

      sub_10007E65C(11);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_1000ABD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100012AAC(v6, qword_100104988);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109376;
      *(v9 + 4) = v4;
      *(v9 + 8) = 1024;
      *(v9 + 10) = v3;
      _os_log_impl(&_mh_execute_header, v7, v8, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: Prompt for PINHandler with flags: %u throttle: %d", v9, 0xEu);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {

      sub_1000B41FC(v4, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_1000ABEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

double sub_1000ABF4C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a5;
  v11 = sub_10000E6C4(&unk_100104950, &qword_1000BD280);
  v12 = __chkstk_darwin(v11);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v39 - v15;
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100012AAC(v17, qword_100104988);
  sub_10000F25C(v45, v16, &unk_100104950, &qword_1000BD280);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v43 = a3;
  v44 = a4;
  v42 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v41 = a6;
    v22 = v21;
    v40 = swift_slowAlloc();
    v46[0] = v40;
    *v22 = 136315906;
    *(v22 + 4) = sub_1000B08A0(a1, a2, v46);
    *(v22 + 12) = 2080;
    v39[1] = v11;
    v23 = Array.description.getter();
    v25 = sub_1000B08A0(v23, v24, v46);

    *(v22 + 14) = v25;
    *(v22 + 22) = 2080;
    v26 = Array.description.getter();
    v28 = sub_1000B08A0(v26, v27, v46);

    *(v22 + 24) = v28;
    *(v22 + 32) = 2080;
    sub_10000F25C(v16, v14, &unk_100104950, &qword_1000BD280);
    v29 = String.init<A>(describing:)();
    v31 = v30;
    sub_10000EBA4(v16, &unk_100104950, &qword_1000BD280);
    v32 = sub_1000B08A0(v29, v31, v46);

    *(v22 + 34) = v32;
    _os_log_impl(&_mh_execute_header, v18, v19, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: Prompt for room in home %s, existingRooms: %s, suggestedRooms: %s, defaultIndexPath: %s", v22, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000EBA4(v16, &unk_100104950, &qword_1000BD280);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    v36 = (*(Strong + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeName);
    *v36 = v42;
    v36[1] = a2;

    *(*(v35 + 48) + 48) = v43;

    *(*(v35 + 48) + 56) = v44;

    v37 = *(v35 + 48);
    v38 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_defaultRoomIndexPath;
    swift_beginAccess();

    sub_10003A6F8(v45, v37 + v38, &unk_100104950, &qword_1000BD280);
    swift_endAccess();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10007E65C(4);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000AC398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10000E6C4(&unk_100104950, &qword_1000BD280);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = *(a1 + 32);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (a5)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = type metadata accessor for IndexPath();
    (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  }

  else
  {
    v17 = type metadata accessor for IndexPath();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  }

  v10(v11, v13, v14, v15, v9);

  return sub_10000EBA4(v9, &unk_100104950, &qword_1000BD280);
}

double sub_1000AC554(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100012AAC(v6, qword_100104988);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "<loom:ViewService:promptForWiFiPickerHandler> HomePodSetupInteractor: Prompt for WiFi picker", v9, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      if (a1)
      {

        v10 = a1;
      }

      else
      {
        sub_10000E6C4(&qword_100104DF8, &unk_1000BF1E0);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1000BD050;

        *(v10 + 32) = sub_10000D8A8(_swiftEmptyArrayStorage);
      }

      v11 = sub_10008C6B0(v10);

      *(*(v5 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_wifiOptions) = v11;

      sub_10007E65C(55);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000AC72C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_10000E6C4(&qword_1001020B0, &qword_1000BD170);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3(v2);
}

uint64_t sub_1000AC7B0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100012AAC(v3, qword_100104988);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: Prompt for Siri Enable", v6, 2u);
    }

    v7 = [*(v2 + 80) selectedSiriLanguageCode];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    sub_1000AC914(v9, v11);
  }

  return result;
}

uint64_t sub_1000AC914(uint64_t a1, uint64_t a2)
{
  v3 = (*(v2 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSiriLanguageCode);
  *v3 = a1;
  v3[1] = a2;

  v4 = *(v2 + 48);
  v5 = *(v2 + 80);

  v6 = [v5 isJSEnabled];
  *(v4 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_jsEnabled) = v6;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000B3910(v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1000AC9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100012AAC(v8, qword_100104988);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: Prompt for SiriLanguage", v11, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {

      sub_1000B39CC(v12, a1, a2, a3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000ACB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v3(v4, v5, v7);
}

double sub_1000ACBFC(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100012AAC(v2, qword_100104988);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: promptForTermsAndConditionsV2Disagree", v5, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRetain();
      sub_1000610CC(0, 1);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_1000ACD5C(uint64_t a1, const char *a2, int a3)
{
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100012AAC(v5, qword_100104988);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a2, v8, 2u);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_100081D10(a3);
      swift_unknownObjectRelease();
    }
  }
}

double sub_1000ACE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100012AAC(v9, qword_100104988);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: Prompt for SharedSettings", v12, 2u);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000AE118(a1, a2, a3, a4, 17);
  }

  return result;
}

uint64_t sub_1000ACFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v3)
    {
LABEL_3:
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = v9;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:

  v4(v5, v7, v8, v3);
}

double sub_1000AD094(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100012AAC(v4, qword_100104988);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: Prompt for stereo role", v7, 2u);
    }

    v8 = *(v3 + 48);
    v9 = *(v3 + 80);

    v10 = [v9 stereoCounterpartColor];
    *(v8 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoCounterpartColor) = v10;

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10007E65C(20);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_1000AD208(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100012AAC(v6, qword_100104988);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      sub_10003AE18(0, &qword_100102080, HMAccessory_ptr);
      v11 = Array.description.getter();
      v13 = sub_1000B08A0(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: Prompt for stereo multiple: %s", v9, 0xCu);
      sub_10000E70C(v10);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      *(*(v5 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_availableAccessories) = a1;

      sub_10007E65C(22);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000AD410(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_10003AE18(0, &qword_100102080, HMAccessory_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

double sub_1000AD494(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100012AAC(v6, qword_100104988);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v7, v8, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: Prompt voice recognition after voice selection: %{BOOL}d", v9, 8u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(*(v5 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_voiceRecognitionEnabled) = a1 & 1;
    }
  }

  return result;
}

double sub_1000AD5E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v9 = Strong;
      if (qword_100101718 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100012AAC(v10, qword_100104988);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 67109120;
        *(v13 + 4) = a3 & 1;
        _os_log_impl(&_mh_execute_header, v11, v12, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: promptForWiFiSummaryHandler, showPicker %{BOOL}d", v13, 8u);
      }

      v14 = *(v9 + 48);

      v15 = (v14 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preferredSSID);
      *v15 = a1;
      v15[1] = a2;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000AD76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4(v5, v7, a3);
}

double sub_1000AD7F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (!a2)
    {
      goto LABEL_9;
    }

    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100012AAC(v10, qword_100104988);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: promptForWiFiFailedHandler", v13, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = (*(v9 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSSID);
      *v14 = a1;
      v14[1] = a2;

      *(*(v9 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_showPickerOption) = a3 & 1;
      sub_10007E65C(47);

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_9:
    }
  }

  return result;
}

double sub_1000AD9B4(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100012AAC(v10, qword_100104988);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v11, v12, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: Prompt for Siri Voice Selectio: %{BOOL}d", v13, 8u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {

      sub_1000A88B8(a1 & 1, a2, a3, a4);
      sub_10007E65C(21);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_1000ADB48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = a4;
  v6(a2, v7, v9, v10);
}

double sub_1000ADBE8(uint64_t a1, const char *a2, char a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100012AAC(v6, qword_100104988);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, a2, v9, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10007E65C(a3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000ADD30(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100012AAC(v9, qword_100104988);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: Prompt for WiFi setup complete", v12, 2u);
    }

    v13 = *(v8 + 48);
    *(v13 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_didUsePhonesNetwork) = a1 & 1;
    if (a3)
    {
    }

    else
    {
      a3 = 0xE100000000000000;
      a2 = 63;
    }

    v14 = (v13 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSSID);
    *v14 = a2;
    v14[1] = a3;
  }

  return result;
}

uint64_t sub_1000ADEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4(a2, v5, v7);
}

double sub_1000ADF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v26 = a4;
    v18 = type metadata accessor for Logger();
    sub_100012AAC(v18, qword_100104988);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: Prompt for DataAndPrivacy", v21, 2u);
    }

    v22 = *(v17 + 48);
    v23 = *(v22 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_termsAccount);
    *(v22 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_termsAccount) = a5;

    v24 = a5;

    v25 = (*(v17 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_termsInfo);
    *v25 = a6;
    v25[1] = a7;

    sub_1000AE118(a1, a2, a3, v26, 69);
  }

  return result;
}

uint64_t sub_1000AE118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = (*(v5 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_iCloudId);
  *v9 = a1;
  v9[1] = a2;

  v10 = (*(v5 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_iTunesId);
  *v10 = a3;
  v10[1] = a4;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10007E65C(a5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000AE218(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a3;
  v8 = *(a1 + 32);
  if (a2)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v9 = 0;
  v11 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v13;
  if (a5)
  {
LABEL_4:
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v15;
    goto LABEL_8;
  }

LABEL_7:
  v14 = 0;
LABEL_8:

  v16 = a4;
  v8(v9, v11, v12, v7, a4, v14, a5);
}

void sub_1000AE320(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100012AAC(v7, qword_100104988);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: Prompt for Set language", v10, 2u);
    }

    if (*(*(v6 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSiriLanguageCode + 8))
    {
    }

    else
    {

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v20 = v14;
        *v13 = 136315138;
        if (a2)
        {
          v15 = a1;
        }

        else
        {
          v15 = 63;
        }

        if (a2)
        {
          v16 = a2;
        }

        else
        {
          v16 = 0xE100000000000000;
        }

        v17 = sub_1000B08A0(v15, v16, &v20);

        *(v13 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v11, v12, "Set Lang to %s", v13, 0xCu);
        sub_10000E70C(v14);
      }

      v18 = *(v6 + 48);

      v19 = (v18 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSiriLanguageCode);
      *v19 = a1;
      v19[1] = a2;
    }
  }
}

uint64_t sub_1000AE598(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
}

double sub_1000AE614(void **a1, unint64_t a2, uint64_t a3)
{
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100012AAC(v5, qword_100104988);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000B08A0(a1, a2, v11);
    _os_log_impl(&_mh_execute_header, v6, v7, "<loom:ViewService:matchInteractorPrompts> HomePodSetupInteractor: Prompt for deviceColorFoundHandler: %s", v8, 0xCu);
    sub_10000E70C(v9);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000A5B90(a1, a2);
  }

  return result;
}

double sub_1000AE7A0(char a1, uint64_t a2)
{
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100104988);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12[0] = v7;
    *v6 = 136315138;
    if (a1)
    {
      v8 = 0x73736563637553;
    }

    else
    {
      v8 = 1818845510;
    }

    if (a1)
    {
      v9 = 0xE700000000000000;
    }

    else
    {
      v9 = 0xE400000000000000;
    }

    v10 = sub_1000B08A0(v8, v9, v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "HomePodSetupInteractor: registered homepod serial number with results %s", v6, 0xCu);
    sub_10000E70C(v7);
  }

  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1000AE948();
    }
  }

  return result;
}

void sub_1000AE948()
{
  sub_10003AE18(0, &qword_1001035E8, AMSUIMarketingItemViewController_ptr);
  v0 = [swift_getObjCClassFromMetadata() createBagForSubProfile];
  if (v0)
  {
    v1 = v0;
    v2 = objc_allocWithZone(AMSMarketingItemTask);
    v3 = v1;
    v4 = String._bridgeToObjectiveC()();
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = String._bridgeToObjectiveC()();
    v8 = [v2 initWithBag:v3 clientIdentifier:v4 clientVersion:v5 placement:v6 serviceType:v7];

    v9 = [objc_opt_self() ams_sharedAccountStore];
    v10 = [v9 ams_activeiTunesAccount];

    [v8 setAccount:v10];
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100012AAC(v11, qword_100104988);
    v12 = v8;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "HomePodSetupInteractor: performing AMSMarketingItemTask: %@", v15, 0xCu);
      sub_10000EBA4(v16, &qword_100101E38, &unk_1000BCF80);
    }

    v18 = [v12 perform];
    v19 = swift_allocObject();
    swift_weakInit();
    v26 = sub_1000B3D68;
    v27 = v19;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_1000AF99C;
    v25 = &unk_1000F22A0;
    v20 = _Block_copy(&v22);

    [v18 addSuccessBlock:v20];
    _Block_release(v20);
    v26 = sub_1000AF9A4;
    v27 = 0;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_1000AFB3C;
    v25 = &unk_1000F22C8;
    v21 = _Block_copy(&v22);
    [v18 addErrorBlock:v21];
    _Block_release(v21);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000AED38()
{
  sub_1000A8B18(24, 70);
  [*(v0 + 80) invalidate];
  [*(v0 + 144) invalidate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_remoteViewController);
    if (v2)
    {
      v3 = String._bridgeToObjectiveC()();
      [v2 setIdleTimerDisabled:0 forReason:v3];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000AEE04(uint64_t a1)
{
  v2 = v1;
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100012AAC(v4, qword_100104988);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "HomePodSetupInteractor: updateProgress event:%u", v7, 8u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000B2018(v2, a1, result);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000AEF40(uint64_t a1, uint64_t a2, const char *a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100012AAC(v10, qword_100104988);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v11, v12, a3, v13, 8u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a4(v7, a1, a2, result);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000AF098(void *a1, uint64_t a2)
{
  v45 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v3 - 8);
  __chkstk_darwin(v3);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CharacterSet();
  v44 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100012AAC(v10, qword_100104988);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "HomePodSetupInteractor: AMSMarketingItemTask returned success with AMSMarketingItem: %@", v14, 0xCu);
    sub_10000EBA4(v15, &qword_100101E38, &unk_1000BCF80);
  }

  v17 = [v11 templateID];
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22._countAndFlagsBits = 0x3A636973756DLL;
    v22._object = 0xE600000000000000;
    if (String.hasPrefix(_:)(v22))
    {
      aBlock = v19;
      v53 = v21;
      v50 = 58;
      v51 = 0xE100000000000000;
      sub_10003DF20();
      v23 = StringProtocol.components<A>(separatedBy:)();
      if (v23[2] == 2)
      {
        v42 = v19;
        v43 = v3;
        v25 = v23[6];
        v24 = v23[7];

        aBlock = v25;
        v53 = v24;
        v26 = [objc_opt_self() whitespaceCharacterSet];
        static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

        StringProtocol.trimmingCharacters(in:)();
        (*(v44 + 8))(v9, v7);

        v27 = String._bridgeToObjectiveC()();

        v28 = String._bridgeToObjectiveC()();
        LOBYTE(v24) = [v27 isEqual:v28];

        if (v24)
        {

          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            aBlock = v32;
            *v31 = 136315138;
            v33 = sub_1000B08A0(v42, v21, &aBlock);

            *(v31 + 4) = v33;
            _os_log_impl(&_mh_execute_header, v29, v30, "HomePodSetupInteractor: Detected standard upsell, because template is '%s'", v31, 0xCu);
            sub_10000E70C(v32);
          }

          else
          {
          }

          return;
        }

        v3 = v43;
LABEL_18:
        sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
        v37 = static OS_dispatch_queue.main.getter();
        v38 = swift_allocObject();
        *(v38 + 16) = v45;
        *(v38 + 24) = v11;
        v56 = sub_1000B3DB0;
        v57 = v38;
        aBlock = _NSConcreteStackBlock;
        v53 = 1107296256;
        v54 = sub_100091194;
        v55 = &unk_1000F2318;
        v39 = _Block_copy(&aBlock);
        v40 = v11;

        static DispatchQoS.unspecified.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_100014530();
        sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
        sub_100014588();
        v41 = v47;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v39);

        (v49[1].isa)(v41, v3);
        (*(v46 + 8))(v6, v48);
        return;
      }
    }

    goto LABEL_18;
  }

  v49 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v49, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v49, v34, "HomePodSetupInteractor: AMSMarketingItemTask no templateID", v35, 2u);
  }

  v36 = v49;
}

void sub_1000AF800(uint64_t a1, void *a2)
{
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100104988);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "HomePodSetupInteractor: Able to get a marketing item.", v6, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 48);

    v9 = *(v8 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_amsMarketingItem);
    *(v8 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_amsMarketingItem) = a2;
    v10 = a2;
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = objc_allocWithZone(type metadata accessor for HomePodSetupAMSUpsellViewController(0));
    v14 = sub_10005DBB0(a2);
    v15 = *(v12 + 136);
    *(v12 + 136) = v14;
  }
}

void sub_1000AF9A4(uint64_t a1)
{
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100012AAC(v1, qword_100104988);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_1000B08A0(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v2, "HomePodSetupInteractor: AMSMarketingItemTask request failed with error: %s", v3, 0xCu);
    sub_10000E70C(v4);
  }

  else
  {
  }
}

void sub_1000AFB44(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

BOOL sub_1000AFBB0(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = static Hasher._hash(seed:bytes:count:)();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

void sub_1000AFC5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v10 - 8);
  v12 = &v42[-1] - v11;
  v13 = type metadata accessor for HomePodSetupViewModel(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v42[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100012AAC(v18, qword_100104988);
    swift_errorRetain();
    v41 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v43[0] = v21;
      *v20 = 136315138;
      v42[3] = a5;
      sub_10000E6C4(&unk_1001035D8, &unk_1000BDD90);
      v22 = Optional.debugDescription.getter();
      v24 = sub_1000B08A0(v22, v23, v43);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v41, v19, "Could not find asset: %s", v20, 0xCu);
      sub_10000E70C(v21);
    }

    else
    {
      v35 = v41;
    }
  }

  else
  {
    v41 = v15;
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100012AAC(v25, qword_100104988);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 16777472;
      v28[4] = a6;
      _os_log_impl(&_mh_execute_header, v26, v27, "Finished single stereo image lookup for %hhu", v28, 5u);
    }

    if (a1)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v30 = *(Strong + 48);
        v31 = a1;

        v32 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_assetBundles;
        swift_beginAccess();
        v33 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42[0] = *(v30 + v32);
        *(v30 + v32) = 0x8000000000000000;
        sub_100055248(v33, a6, isUniquelyReferenced_nonNull_native);
        *(v30 + v32) = v42[0];
        swift_endAccess();
      }

      else
      {
        v36 = a1;
      }

      swift_beginAccess();
      if (swift_weakLoadStrong() && (v37 = swift_unknownObjectWeakLoadStrong(), , v37))
      {
        v38 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_viewModel;
        swift_beginAccess();
        sub_10000F25C(v37 + v38, v12, &qword_100103420, &unk_1000BCE90);
        if ((*(v14 + 48))(v12, 1, v41) == 1)
        {

          swift_unknownObjectRelease();
          sub_10000EBA4(v12, &qword_100103420, &unk_1000BCE90);
        }

        else
        {
          sub_100016310(v12, v17);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v39 = *(v37 + 24);
            ObjectType = swift_getObjectType();
            (*(v39 + 32))(v37, &off_1000F0D90, v17, ObjectType, v39);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          sub_100016374(v17);
        }
      }

      else
      {
      }
    }
  }
}

void sub_1000B0198(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v7 - 8);
  v9 = &v39[-1] - v8;
  v10 = type metadata accessor for HomePodSetupViewModel(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v39[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100012AAC(v15, qword_100104988);
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v40[0] = v18;
      *v17 = 136315138;
      v39[3] = a2;
      sub_10000E6C4(&unk_1001035D8, &unk_1000BDD90);
      v19 = Optional.debugDescription.getter();
      v21 = sub_1000B08A0(v19, v20, v40);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v38, v16, "Could not download asset: %s", v17, 0xCu);
      sub_10000E70C(v18);
    }

    else
    {
      v32 = v38;
    }
  }

  else
  {
    v38 = v12;
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100012AAC(v22, qword_100104988);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 16777472;
      v25[4] = a3;
      _os_log_impl(&_mh_execute_header, v23, v24, "Finished download of single stereo image lookup for %hhu", v25, 5u);
    }

    if (a1)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v27 = *(Strong + 48);
        v28 = a1;

        v29 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_assetBundles;
        swift_beginAccess();
        v30 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39[0] = *(v27 + v29);
        *(v27 + v29) = 0x8000000000000000;
        sub_100055248(v30, a3, isUniquelyReferenced_nonNull_native);
        *(v27 + v29) = v39[0];
        swift_endAccess();
      }

      else
      {
        v33 = a1;
      }

      swift_beginAccess();
      if (swift_weakLoadStrong() && (v34 = swift_unknownObjectWeakLoadStrong(), , v34))
      {
        v35 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_viewModel;
        swift_beginAccess();
        sub_10000F25C(v34 + v35, v9, &qword_100103420, &unk_1000BCE90);
        if ((*(v11 + 48))(v9, 1, v38) == 1)
        {

          swift_unknownObjectRelease();
          sub_10000EBA4(v9, &qword_100103420, &unk_1000BCE90);
        }

        else
        {
          sub_100016310(v9, v14);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v36 = *(v34 + 24);
            ObjectType = swift_getObjectType();
            (*(v36 + 32))(v34, &off_1000F0D90, v14, ObjectType, v36);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          sub_100016374(v14);
        }
      }

      else
      {
      }
    }
  }
}

void sub_1000B06D4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1000B0760(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v13 = a2;
  v12 = a5;
  v8(a2, v9, v11, a4, a5);
}

uint64_t sub_1000B0844(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1000B08A0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1000B08A0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000B096C(v11, 0, 0, 1, a1, a2);
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
    sub_10000EA58(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000E70C(v11);
  return v7;
}

unint64_t sub_1000B096C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000B0A78(a5, a6);
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

id *sub_1000B0A78(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000B0AC4(a1, a2);
  sub_1000B0BF4(&off_1000EE248);
  return v3;
}

id *sub_1000B0AC4(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000B0CE0(v5, 0);
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
        v7 = sub_1000B0CE0(v10, 0);
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

uint64_t sub_1000B0BF4(uint64_t result)
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

  result = sub_1000B0D54(result, v11, 1, v3);
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

id *sub_1000B0CE0(uint64_t a1, uint64_t a2)
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

  sub_10000E6C4(&qword_100104DD0, &qword_1000BF1B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

id *sub_1000B0D54(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000E6C4(&qword_100104DD0, &qword_1000BF1B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1000B0E48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B0E60()
{
  v0 = String.subscript.getter();
  v4 = sub_1000B0EE0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1000B0EE0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_1000B0CE0(v9, 0), v12 = sub_1000B1038(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
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

unint64_t sub_1000B1038(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1000B1258(v12, a6, a7);
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

    result = sub_1000B1258(v12, a6, a7);
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

unint64_t sub_1000B1258(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_1000B12D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000B0E60();
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
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
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOBYTE(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
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
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
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
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 8));
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

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 >> 8))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOBYTE(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 >> 8))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000B18A8(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:bytes:count:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1000B1BC0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_1000B1990(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000E6C4(&qword_100104DD8, &qword_1000BF1C0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      v18 = static Hasher._hash(seed:bytes:count:)();
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
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
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
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1000B1BC0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000B1990(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1000B1CE4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000B1E24(v5 + 1);
  }

  v8 = *v3;
  v9 = static Hasher._hash(seed:bytes:count:)();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000B1CE4()
{
  v1 = v0;
  sub_10000E6C4(&qword_100104DD8, &qword_1000BF1C0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1000B1E24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000E6C4(&qword_100104DD8, &qword_1000BF1C0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      v17 = static Hasher._hash(seed:bytes:count:)();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

uint64_t sub_1000B2018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v6 - 8);
  v8 = &v26[-1] - v7;
  sub_1000B4318(v4);
  v9 = String.init(cString:)();
  v11 = v10;
  if (qword_1001016D0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100012AAC(v12, qword_100103DD0);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v15 = 136315394;
    v16 = sub_1000B08A0(v9, v11, v26);

    *(v15 + 4) = v16;
    *(v15 + 12) = 2080;
    v17 = sub_10007869C(*(a3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state));
    v19 = sub_1000B08A0(v17, v18, v26);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "<loom:ViewService:matchHomePodSetupPresenter> HomePodSetupPresenter interactor: setting up event = %s | state = %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  *(*(a1 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_progressEvent) = v4;
  sub_10007E65C(5);
  v20 = *(a3 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state);

  LOBYTE(v26[0]) = 0;
  sub_1000185F0(v21, v20, v4, 0, v8);

  v22 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v22 - 8) + 56))(v8, 0, 1, v22);
  v23 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_viewModel;
  swift_beginAccess();
  sub_10003A6F8(v8, a3 + v23, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  sub_100079428();
  return sub_10000EBA4(v8, &qword_100103420, &unk_1000BCE90);
}

uint64_t sub_1000B2350(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  sub_1000B4318(v6);
  v11 = String.init(cString:)();
  v13 = v12;
  if (qword_1001016D0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100012AAC(v14, qword_100103DD0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v37 = a1;
    v38 = v6;
    v17 = swift_slowAlloc();
    v39[0] = swift_slowAlloc();
    *v17 = 136315650;
    v18 = sub_1000B08A0(v11, v13, v39);

    *(v17 + 4) = v18;
    *(v17 + 12) = 2080;
    v19 = sub_10007869C(*(a4 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state));
    v21 = sub_1000B08A0(v19, v20, v39);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2080;
    if (!a3)
    {
      sub_10000D8A8(_swiftEmptyArrayStorage);
    }

    v22 = Dictionary.description.getter();
    v24 = v23;

    v25 = sub_1000B08A0(v22, v24, v39);

    *(v17 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "<loom:ViewService:matchHomePodSetupPresenter> HomePodSetupPresenter interactor: setting up event = %s | state = %s | dict = %s", v17, 0x20u);
    swift_arrayDestroy();

    v6 = v38;
    a1 = v37;
  }

  else
  {
  }

  *(*(a1 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_progressEvent) = v6;
  v26 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state;
  if (sub_10007869C(*(a4 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state)) == 0xD000000000000016 && 0x80000001000C0830 == v27)
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
      sub_10007E65C(6);
    }
  }

  v30 = *(a1 + 48);
  v31 = *(a4 + v26);

  v32 = a3;
  if (!a3)
  {
    v32 = sub_10000D8A8(_swiftEmptyArrayStorage);
  }

  LOBYTE(v39[0]) = 0;
  sub_1000185F0(v30, v31, v6, v32, v10);

  v33 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v33 - 8) + 56))(v10, 0, 1, v33);
  v34 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_viewModel;
  swift_beginAccess();
  sub_10003A6F8(v10, a4 + v34, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  sub_100079428();
  return sub_10000EBA4(v10, &qword_100103420, &unk_1000BCE90);
}

uint64_t sub_1000B27AC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v8 - 8);
  v43 = &v41 - v9;
  sub_1000B4318(v6);
  v10 = String.init(cString:)();
  v12 = v11;
  if (qword_1001016D0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100012AAC(v13, qword_100103DD0);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v41 = a1;
    v42 = v6;
    v16 = swift_slowAlloc();
    v46[0] = swift_slowAlloc();
    *v16 = 136315650;
    v17 = sub_1000B08A0(v10, v12, v46);

    *(v16 + 4) = v17;
    *(v16 + 12) = 2080;
    v18 = sub_10007869C(*(a4 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state));
    v20 = sub_1000B08A0(v18, v19, v46);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2080;
    v21 = a4;
    if (!a3)
    {
      sub_10000D8A8(_swiftEmptyArrayStorage);
    }

    v22 = Dictionary.description.getter();
    v24 = v23;

    v25 = sub_1000B08A0(v22, v24, v46);

    *(v16 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "<loom:ViewService:matchHomePodSetupPresenter> HomePodSetupPresenter interactor: setting up event = %s | state = %s | dict = %s", v16, 0x20u);
    swift_arrayDestroy();

    v6 = v42;
    a1 = v41;
  }

  else
  {

    v21 = a4;
  }

  if (!a3)
  {
    v34 = *(a1 + 48);
    v35 = *(v21 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state);

    v36 = sub_10000D8A8(_swiftEmptyArrayStorage);
    goto LABEL_21;
  }

  v44 = 0x655F64615F6473;
  v45 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a3 + 16) || (v26 = sub_100053B3C(v46), (v27 & 1) == 0))
  {
    sub_10000EA04(v46);
    goto LABEL_19;
  }

  sub_10000EA58(*(a3 + 56) + 32 * v26, v47);
  sub_10000EA04(v46);
  result = swift_dynamicCast();
  if (!result)
  {
    goto LABEL_19;
  }

  v29 = v44;
  if (!HIDWORD(v44))
  {
    v30 = sub_10007869C(*(v21 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state));
    if (v29 == 5)
    {
      if (v30 != 0x73736572676F7270 || v31 != 0xEA00000000004955)
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v32 & 1) == 0)
        {
          v33 = 5;
LABEL_27:
          sub_10007E65C(v33);
          goto LABEL_19;
        }

        goto LABEL_19;
      }

LABEL_24:

      goto LABEL_19;
    }

    if (v30 == 0xD000000000000019 && 0x80000001000C0D70 == v31)
    {
      goto LABEL_24;
    }

    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v40 & 1) == 0)
    {
      v33 = 59;
      goto LABEL_27;
    }

LABEL_19:
    v34 = *(a1 + 48);
    v35 = *(v21 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state);

    v36 = a3;
LABEL_21:

    LOBYTE(v46[0]) = 0;
    v37 = v43;
    sub_1000185F0(v34, v35, v6, v36, v43);

    v38 = type metadata accessor for HomePodSetupViewModel(0);
    (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
    v39 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_viewModel;
    swift_beginAccess();
    sub_10003A6F8(v37, v21 + v39, &qword_100103420, &unk_1000BCE90);
    swift_endAccess();
    sub_100079428();
    return sub_10000EBA4(v37, &qword_100103420, &unk_1000BCE90);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B2D1C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  sub_1000B4318(v6);
  v11 = String.init(cString:)();
  v13 = v12;
  if (qword_1001016D0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100012AAC(v14, qword_100103DD0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v37 = a1;
    v38 = v6;
    v17 = swift_slowAlloc();
    v39[0] = swift_slowAlloc();
    *v17 = 136315650;
    v18 = sub_1000B08A0(v11, v13, v39);

    *(v17 + 4) = v18;
    *(v17 + 12) = 2080;
    v19 = sub_10007869C(*(a4 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state));
    v21 = sub_1000B08A0(v19, v20, v39);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2080;
    if (!a3)
    {
      sub_10000D8A8(_swiftEmptyArrayStorage);
    }

    v22 = Dictionary.description.getter();
    v24 = v23;

    v25 = sub_1000B08A0(v22, v24, v39);

    *(v17 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "<loom:ViewService:matchHomePodSetupPresenter> HomePodSetupPresenter interactor: setting up event = %s | state = %s | dict = %s", v17, 0x20u);
    swift_arrayDestroy();

    v6 = v38;
    a1 = v37;
  }

  else
  {
  }

  v26 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state;
  if (sub_10007869C(*(a4 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state)) == 0xD000000000000015 && 0x80000001000C0D50 == v27)
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
      sub_10007E65C(58);
    }
  }

  v30 = *(a1 + 48);
  v31 = *(a4 + v26);

  v32 = a3;
  if (!a3)
  {
    v32 = sub_10000D8A8(_swiftEmptyArrayStorage);
  }

  LOBYTE(v39[0]) = 0;
  sub_1000185F0(v30, v31, v6, v32, v10);

  v33 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v33 - 8) + 56))(v10, 0, 1, v33);
  v34 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_viewModel;
  swift_beginAccess();
  sub_10003A6F8(v10, a4 + v34, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  sub_100079428();
  return sub_10000EBA4(v10, &qword_100103420, &unk_1000BCE90);
}

uint64_t sub_1000B3164(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v8 - 8);
  v42 = &v40 - v9;
  sub_1000B4318(v6);
  v10 = String.init(cString:)();
  v12 = v11;
  if (qword_1001016D0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100012AAC(v13, qword_100103DD0);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v40 = a1;
    v41 = v6;
    v16 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v16 = 136315650;
    v17 = sub_1000B08A0(v10, v12, v45);

    *(v16 + 4) = v17;
    *(v16 + 12) = 2080;
    v18 = sub_10007869C(*(a4 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state));
    v20 = sub_1000B08A0(v18, v19, v45);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2080;
    v21 = a4;
    if (!a3)
    {
      sub_10000D8A8(_swiftEmptyArrayStorage);
    }

    v22 = Dictionary.description.getter();
    v24 = v23;

    v25 = sub_1000B08A0(v22, v24, v45);

    *(v16 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "<loom:ViewService:matchHomePodSetupPresenter> interactorSysDropRPFileTransfer: setting up event = %s | state = %s | dict = %s", v16, 0x20u);
    swift_arrayDestroy();

    v6 = v41;
    a1 = v40;
  }

  else
  {

    v21 = a4;
  }

  if (!a3)
  {
    v32 = *(a1 + 48);
    v33 = *(v21 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state);

    v34 = sub_10000D8A8(_swiftEmptyArrayStorage);
    goto LABEL_21;
  }

  v43 = 0x655F70725F6473;
  v44 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a3 + 16) || (v26 = sub_100053B3C(v45), (v27 & 1) == 0))
  {
    sub_10000EA04(v45);
    goto LABEL_19;
  }

  sub_10000EA58(*(a3 + 56) + 32 * v26, v46);
  sub_10000EA04(v45);
  result = swift_dynamicCast();
  if (!result)
  {
    goto LABEL_19;
  }

  if (!HIDWORD(v43))
  {
    if (v43 < 2)
    {
      if (sub_10007869C(*(v21 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state)) != 0xD000000000000018 || 0x80000001000C0D90 != v29)
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v30 & 1) == 0)
        {
          v31 = 60;
LABEL_28:
          sub_10007E65C(v31);
          goto LABEL_19;
        }

        goto LABEL_19;
      }

LABEL_25:

      goto LABEL_19;
    }

    if (v43 != 2)
    {
      goto LABEL_19;
    }

    if (sub_10007869C(*(v21 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state)) == 0xD000000000000014 && 0x80000001000C0DB0 == v38)
    {
      goto LABEL_25;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v39 & 1) == 0)
    {
      v31 = 61;
      goto LABEL_28;
    }

LABEL_19:
    v32 = *(a1 + 48);
    v33 = *(v21 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state);

    v34 = a3;
LABEL_21:

    LOBYTE(v45[0]) = 0;
    v35 = v42;
    sub_1000185F0(v32, v33, v6, v34, v42);

    v36 = type metadata accessor for HomePodSetupViewModel(0);
    (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
    v37 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_viewModel;
    swift_beginAccess();
    sub_10003A6F8(v35, v21 + v37, &qword_100103420, &unk_1000BCE90);
    swift_endAccess();
    sub_100079428();
    return sub_10000EBA4(v35, &qword_100103420, &unk_1000BCE90);
  }

  __break(1u);
  return result;
}

void sub_1000B36E0(uint64_t a1)
{
  if (qword_1001016D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100103DD0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupPresenter: interactorNeedsAppleMusicApproval called", v5, 2u);
  }

  if (*(*(a1 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_subscribedToMusicService) == 1)
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
LABEL_9:

      sub_1000A70E8();
      return;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "HomePodSetupPresenter: interactorNeedsAppleMusicApproval user has subscription so not showing music promotion";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 2u);

    goto LABEL_9;
  }

  v14 = &type metadata for SharingFeatureFlags;
  v10 = sub_100082468();
  v15 = v10;
  LOBYTE(v13[0]) = 0;
  v11 = isFeatureEnabled(_:)();
  sub_10000E70C(v13);
  if (v11)
  {
    v14 = &type metadata for SharingFeatureFlags;
    v15 = v10;
    LOBYTE(v13[0]) = 1;
    v12 = isFeatureEnabled(_:)();
    sub_10000E70C(v13);
    if ((v12 & 1) == 0)
    {
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_9;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "HomePodSetupPresenter: interactorNeedsAppleMusicApproval need to show music promotion at end of setup steps";
      goto LABEL_8;
    }
  }

  sub_10007E65C(26);
}

void sub_1000B3910(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 80);

  v3 = [v2 selectedSiriLanguageCode];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = (v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSiriLanguageCode);
  if (*(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSiriLanguageCode + 8))
  {
  }

  else
  {
    *v8 = v5;
    v8[1] = v7;
  }

  sub_10007E65C(13);
}

void sub_1000B39CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 48);

  sub_100057A3C(a2);
  *(v8 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_availableSiriLanguages) = v9;

  v10 = (*(a1 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preferredSiriLanguageCode);
  *v10 = a3;
  v10[1] = a4;

  sub_10007E65C(24);
}

BOOL sub_1000B3A88(void *a1)
{
  v1 = [a1 accessories];
  sub_10003AE18(0, &qword_100102080, HMAccessory_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 category];
      v9 = [v8 categoryType];

      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
      {
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_6:
      ++v4;
      if (v7 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = _swiftEmptyArrayStorage[2];
  }

  return v16 != 0;
}

uint64_t sub_1000B3CDC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B3D14()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B3D70()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B3DB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B3E24()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000B41FC(int a1, int a2)
{
  if (qword_1001016D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100012AAC(v4, qword_100103DD0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = a1;
    *(v7 + 8) = 1024;
    *(v7 + 10) = a2;
    _os_log_impl(&_mh_execute_header, v5, v6, "HomePodSetupPresenter: interactorNeedsPINCodeEntered called with a flags:%u and inThrottleSeconds:%d", v7, 0xEu);
  }

  if ((a1 & 0x800) != 0)
  {
    v8 = 62;
  }

  else
  {
    v8 = 19;
  }

  sub_10007E65C(v8);
}

const char *sub_1000B4318(int a1)
{
  if (a1 > 279)
  {
    if (a1 <= 709)
    {
      if (a1 <= 499)
      {
        if (a1 > 400)
        {
          if (a1 > 419)
          {
            switch(a1)
            {
              case 420:
                return "FileTransferReady";
              case 430:
                return "eSimExternal2FAStart";
              case 431:
                return "eSimExternal2FAStop";
            }
          }

          else
          {
            switch(a1)
            {
              case 401:
                return "PINPair";
              case 410:
                return "MigrateStart";
              case 411:
                return "MigrateStop";
            }
          }
        }

        else if (a1 > 299)
        {
          switch(a1)
          {
            case 300:
              return "BackupProgress";
            case 310:
              return "SyncProgress";
            case 400:
              return "StopSetup";
          }
        }

        else
        {
          switch(a1)
          {
            case 280:
              return "TVLCalFailed";
            case 281:
              return "TVLCalTryAgain";
            case 282:
              return "TVLCalFinal";
          }
        }
      }

      else if (a1 <= 554)
      {
        if (a1 > 529)
        {
          switch(a1)
          {
            case 530:
              return "SiriDialogBHome";
            case 540:
              return "SiriDialogBNews";
            case 550:
              return "SiriDialogBWeather";
          }
        }

        else
        {
          switch(a1)
          {
            case 500:
              return "SiriWelcome";
            case 510:
              return "SiriDialogA";
            case 520:
              return "SiriDialogBStart";
          }
        }
      }

      else if (a1 <= 569)
      {
        switch(a1)
        {
          case 555:
            return "SiriDialogBClock";
          case 558:
            return "SiriDialogBMusic";
          case 560:
            return "SiriDialogCMusic";
        }
      }

      else if (a1 > 599)
      {
        if (a1 == 600)
        {
          return "SiriSkipDemo";
        }

        if (a1 == 700)
        {
          return "StopSetupLEDs";
        }
      }

      else
      {
        if (a1 == 570)
        {
          return "SiriDialogCNews";
        }

        if (a1 == 580)
        {
          return "SiriDialogCWeather";
        }
      }

      return "?";
    }

    if (a1 <= 899)
    {
      if (a1 <= 802)
      {
        if (a1 == 710)
        {
          return "AudioPasscodeEnded";
        }

        if (a1 == 800)
        {
          return "AuthAccountsStart";
        }
      }

      else
      {
        switch(a1)
        {
          case 803:
            return "AuthAccountsiCloudProgress";
          case 804:
            return "AuthAccountsStoreProgress";
          case 805:
            return "AuthAccountsGameCenterProgress";
        }
      }

      return "?";
    }

    if (a1 > 999)
    {
      if (a1 <= 1099)
      {
        if (a1 == 1000)
        {
          return "SecureIntentStart";
        }

        if (a1 == 1001)
        {
          return "SecureIntentFinish";
        }
      }

      else
      {
        switch(a1)
        {
          case 1100:
            return "OneTimeCodeDetected";
          case 2000:
            return "DependentStart";
          case 2001:
            return "DependentEnd";
        }
      }

      return "?";
    }

    switch(a1)
    {
      case 900:
        result = "SU-No-SetupScanAttempt";
        break;
      case 901:
        result = "SU-No-SetupStatusUpdate";
        break;
      case 902:
        result = "SU-No-SetupWipeWifi";
        break;
      case 903:
        result = "SU-No-SetupCancelled";
        break;
      case 904:
        result = "SU-No-SetupObliterate";
        break;
      case 905:
        result = "SU-No-SetupCannotCancel";
        break;
      case 906:
        result = "SysDrop AirDrop Event";
        break;
      case 907:
        result = "SysDrop Sysdiagnose Event";
        break;
      case 908:
        result = "SysDrop Cancel Event";
        break;
      case 909:
        result = "File Transfer Progress Event";
        break;
      case 910:
        result = "File Transfer Completed Event";
        break;
      case 911:
        result = "iOSWiFiSetup";
        break;
      case 912:
        result = "HKPrimaryResidentSSIDFetchStart";
        break;
      case 913:
        result = "LoggingProfileTransfer";
        break;
      default:
        return "?";
    }
  }

  else
  {
    if (a1 > 121)
    {
      if (a1 <= 239)
      {
        if (a1 > 209)
        {
          if (a1 > 229)
          {
            switch(a1)
            {
              case 230:
                return "HomeKitStart";
              case 234:
                return "HomeKitSetupStart";
              case 236:
                return "CDPSetupStart";
            }
          }

          else
          {
            switch(a1)
            {
              case 210:
                return "ActivationStart";
              case 220:
                return "iCloudStart";
              case 224:
                return "AppleIDSetupStart";
            }
          }
        }

        else if (a1 > 139)
        {
          switch(a1)
          {
            case 140:
              return "RecognizeVoice";
            case 150:
              return "SiriForEveryone";
            case 200:
              return "WiFiStart";
          }
        }

        else
        {
          switch(a1)
          {
            case 122:
              return "CheckingAppleMusic";
            case 124:
              return "CheckingAccount";
            case 130:
              return "WiFiPoweredOff";
          }
        }
      }

      else if (a1 <= 269)
      {
        if (a1 > 249)
        {
          switch(a1)
          {
            case 250:
              return "ReportSuccess";
            case 260:
              return "TVLSStart";
            case 264:
              return "TVLSFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 240:
              return "BuddyStarting";
            case 241:
              return "BuddyProgress";
            case 242:
              return "BuddyFinished";
          }
        }
      }

      else
      {
        if (a1 > 275)
        {
          if (a1 > 277)
          {
            if (a1 == 278)
            {
              return "TVLCalStart";
            }

            else
            {
              return "TVLCalStep";
            }
          }

          else if (a1 == 276)
          {
            return "TVLSTryAgain";
          }

          else
          {
            return "TVLSToneBegan";
          }
        }

        switch(a1)
        {
          case 270:
            return "TVLSEstimateStart";
          case 272:
            return "TVLSEstimateFinal";
          case 274:
            return "TVLSEstimateFailed";
        }
      }

      return "?";
    }

    if (a1 > 69)
    {
      if (a1 <= 95)
      {
        if (a1 > 91)
        {
          switch(a1)
          {
            case '\\':
              return "StepStart";
            case '^':
              return "StepFinish";
            case '_':
              return "PreFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 'F':
              return "SecurityFinish";
            case 'P':
              return "BasicConfigStart";
            case 'Z':
              return "BasicConfigFinish";
          }
        }

        return "?";
      }

      if (a1 > 98)
      {
        switch(a1)
        {
          case 'c':
            return "SetupPeerSWUpdate";
          case 'd':
            return "Finished";
          case 'x':
            return "CheckingiCloud";
        }

        return "?";
      }

      if (a1 == 96)
      {
        return "SetupFinished";
      }

      else if (a1 == 97)
      {
        return "SetupResumed";
      }

      else
      {
        return "SetupSuspend";
      }
    }

    else
    {
      if (a1 > 32)
      {
        if (a1 > 49)
        {
          switch(a1)
          {
            case '2':
              return "PreAuthFinish";
            case '<':
              return "SecurityStart";
            case 'A':
              return "SecurityAPCLoopStart";
          }
        }

        else
        {
          switch(a1)
          {
            case '!':
              return "SessionSecured";
            case '#':
              return "ConnectStart";
            case '(':
              return "PreAuthStart";
          }
        }

        return "?";
      }

      if (a1 <= 29)
      {
        switch(a1)
        {
          case 0:
            return "Invalid";
          case 10:
            return "Start";
          case 20:
            return "Final";
        }

        return "?";
      }

      if (a1 == 30)
      {
        return "Error";
      }

      else if (a1 == 31)
      {
        return "SessionStarted";
      }

      else
      {
        return "SessionEnded";
      }
    }
  }

  return result;
}

void sub_1000B4DC4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"Matcher.m" lineNumber:87 description:@"Error reading file. Number of elements not as expected."];
}

void sub_1000B4E4C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = [NSString stringWithUTF8String:"NSString * _Nonnull SVSLocalizedStringV(NSString * _Nonnull __strong, NSString *__strong _Nonnull, va_list)"];
  [v4 handleFailureInFunction:v5 file:@"Utilities.m" lineNumber:109 description:{@"nil localized string for %@ key - %@", a1, a2}];
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

CMTime __swiftcall CMTime.init(value:timescale:)(Swift::Int64 value, Swift::Int32 timescale)
{
  v2 = CMTime.init(value:timescale:)(value, *&timescale);
  result.epoch = v4;
  result.timescale = v3;
  result.flags = HIDWORD(v3);
  result.value = v2;
  return result;
}

UIImage_optional __swiftcall UIImage.init(systemName:variableValue:configuration:)(Swift::String systemName, Swift::Double variableValue, UIImageConfiguration_optional configuration)
{
  v3 = UIImage.init(systemName:variableValue:configuration:)(systemName._countAndFlagsBits, systemName._object, configuration.value.super.isa, *&configuration.is_nil, variableValue);
  result.value.super.isa = v3;
  result.is_nil = v4;
  return result;
}