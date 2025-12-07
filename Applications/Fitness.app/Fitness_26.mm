id sub_100328D80()
{
  v1 = v0;
  *&v54 = type metadata accessor for Logger();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&unk_1008EAEF0, &unk_1006E9510);
  __chkstk_darwin(v4 - 8);
  v58 = &v48 - v5;
  v6 = sub_100140278(&unk_1008E4DA0, &unk_1006E3360);
  __chkstk_darwin(v6 - 8);
  v57 = &v48 - v7;
  v8 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  __chkstk_darwin(v8 - 8);
  v56 = &v48 - v9;
  v10 = sub_100140278(&qword_1008E4DB0, &qword_1006E3370);
  __chkstk_darwin(v10 - 8);
  v12 = &v48 - v11;
  v55 = type metadata accessor for MetricPage();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v51 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100140278(&qword_1008E8EA8, &unk_1006E9500);
  __chkstk_darwin(v14 - 8);
  v16 = &v48 - v15;
  v17 = type metadata accessor for WhatsNewSheet();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_whatsNewSheetConfiguraion;
  swift_beginAccess();
  sub_10001B104(v1 + v21, v16, &qword_1008E8EA8, &unk_1006E9500);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000EA04(v16, &qword_1008E8EA8, &unk_1006E9500);
    static Log.default.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "SeymourDiscoverySheetCoordinator: unexpected nil for what's new sheet configuration", v24, 2u);
    }

    (*(v52 + 1))(v3, v54);
    return 0;
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    v26 = sub_100517F78();
    v28 = v27;
    v49 = v12;
    v50 = v27;
    v30 = v29;
    v32 = v31;
    v33 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_eventHub;
    v52 = type metadata accessor for DiscoverySheetViewController(0);
    v34 = v26 & 1;
    v54 = *(v1 + v33);
    v35 = objc_allocWithZone(v52);
    *&v35[OBJC_IVAR____TtC10FitnessApp28DiscoverySheetViewController_delegate + 8] = 0;
    v36 = swift_unknownObjectWeakInit();
    v37 = &v35[OBJC_IVAR____TtC10FitnessApp28DiscoverySheetViewController_dataModel];
    *v37 = v34;
    *(v37 + 1) = v28;
    *(v37 + 2) = v30;
    *(v37 + 3) = v32;
    *(v36 + 8) = &off_100852E08;
    swift_unknownObjectWeakAssign();
    *&v35[OBJC_IVAR____TtC10FitnessApp28DiscoverySheetViewController_eventHub] = v54;
    v38 = enum case for MetricPageCategory.discovery(_:);
    v39 = type metadata accessor for MetricPageCategory();
    v40 = *(v39 - 8);
    v41 = v49;
    (*(v40 + 104))(v49, v38, v39);
    (*(v40 + 56))(v41, 0, 1, v39);
    v42 = type metadata accessor for URL();
    (*(*(v42 - 8) + 56))(v56, 1, 1, v42);
    v43 = type metadata accessor for MetricClickDestination();
    (*(*(v43 - 8) + 56))(v57, 1, 1, v43);
    v44 = type metadata accessor for MetricPlaybackEntitlement();
    (*(*(v44 - 8) + 56))(v58, 1, 1, v44);

    swift_unknownObjectRetain();
    v45 = v51;
    MetricPage.init(pageIdentifier:pageType:pageContext:pageUrl:pageName:contentType:entitlementRequired:)();
    (*(v53 + 32))(&v35[OBJC_IVAR____TtC10FitnessApp28DiscoverySheetViewController_metricPage], v45, v55);
    v35[OBJC_IVAR____TtC10FitnessApp28DiscoverySheetViewController_pageIdentifier] = 1;
    v46 = String._bridgeToObjectiveC()();

    v59.receiver = v35;
    v59.super_class = v52;
    v47 = objc_msgSendSuper2(&v59, "initWithTitle:detailText:icon:contentLayout:", v46, 0, 0, 2);

    (*(v18 + 8))(v20, v17);
    return v47;
  }
}

void sub_1003294E0()
{
  v1 = v0;
  v2 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v2 - 8);
  v4 = &v31[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v31[-v6];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Log.default.getter();
  v16._countAndFlagsBits = 0xD000000000000031;
  v16._object = 0x8000000100755B50;
  v17._countAndFlagsBits = 0xD000000000000015;
  v17._object = 0x8000000100755B90;
  Logger.trace(file:function:)(v16, v17);
  (*(v13 + 8))(v15, v12);
  v18 = *(v1 + OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_userDefaults);
  (*(v9 + 16))(v11, v1 + OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_firstAppLaunchDate, v8);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v20 = *(v9 + 8);
  v20(v11, v8);
  v21 = String._bridgeToObjectiveC()();
  [v18 setObject:isa forKey:v21];

  v22 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_lastIntroSheetViewDate;
  swift_beginAccess();
  sub_10001B104(v1 + v22, v7, &unk_1008F73A0, &unk_1006DB450);
  v23 = *(v9 + 48);
  v24 = 0;
  if (v23(v7, 1, v8) != 1)
  {
    v24 = Date._bridgeToObjectiveC()().super.isa;
    v20(v7, v8);
  }

  v25 = String._bridgeToObjectiveC()();
  [v18 setObject:v24 forKey:v25];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_lastWhatsNewSheetViewVersion + 8))
  {
    v26 = 0;
  }

  else
  {
    v26 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  v27 = String._bridgeToObjectiveC()();
  [v18 setObject:v26 forKey:v27];
  swift_unknownObjectRelease();

  v28 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_lastWhatsNewSheetViewDate;
  swift_beginAccess();
  sub_10001B104(v1 + v28, v4, &unk_1008F73A0, &unk_1006DB450);
  v29 = 0;
  if (v23(v4, 1, v8) != 1)
  {
    v29 = Date._bridgeToObjectiveC()().super.isa;
    v20(v4, v8);
  }

  v30 = String._bridgeToObjectiveC()();
  [v18 setObject:v29 forKey:v30];
  swift_unknownObjectRelease();
}

id sub_1003299A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeymourDiscoverySheetCoordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SeymourDiscoverySheetCoordinator(uint64_t a1)
{
  result = qword_1008E8E70;
  if (!qword_1008E8E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100329BC8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    sub_100329E64(319, &qword_1008E0E18, &type metadata accessor for Date);
    if (v3 <= 0x3F)
    {
      sub_100329E64(319, &qword_1008E8E80, &type metadata accessor for IntroSheet);
      if (v4 <= 0x3F)
      {
        sub_100329E64(319, &qword_1008E8E88, &type metadata accessor for WhatsNewSheet);
        if (v5 <= 0x3F)
        {
          sub_100329E64(319, &qword_1008E8E90, &type metadata accessor for ContentAvailability);
          if (v6 <= 0x3F)
          {
            sub_100329E64(319, &qword_1008E8E98, &type metadata accessor for NoticePrivacyPreference);
            if (v7 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_100329E64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100329EB8(char a1, __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for WhatsNewSheet();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008E8EA8, &unk_1006E9500);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v35 - v19;
  if (a1)
  {
    static Log.default.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v36 = v5;
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "SeymourDiscoverySheetCoordinator what's new sheet appeared", v23, 2u);
      v5 = v36;
    }

    (*(v15 + 8))(v17, v14);
    Date.init()();
    v24 = type metadata accessor for Date();
    (*(*(v24 - 8) + 56))(v13, 0, 1, v24);
    v25 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_lastWhatsNewSheetViewDate;
    swift_beginAccess();
    sub_100060E68(v13, v3 + v25, &unk_1008F73A0, &unk_1006DB450);
    swift_endAccess();
    v26 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_whatsNewSheetConfiguraion;
    swift_beginAccess();
    sub_10001B104(v3 + v26, v10, &qword_1008E8EA8, &unk_1006E9500);
    if ((*(v6 + 48))(v10, 1, v5))
    {
      sub_10000EA04(v10, &qword_1008E8EA8, &unk_1006E9500);
      v27 = 1;
    }

    else
    {
      v33 = v37;
      (*(v6 + 16))(v37, v10, v5);
      sub_10000EA04(v10, &qword_1008E8EA8, &unk_1006E9500);
      v27 = WhatsNewSheet.version.getter();
      (*(v6 + 8))(v33, v5);
    }

    v34 = v3 + OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_lastWhatsNewSheetViewVersion;
    *v34 = v27;
    *(v34 + 8) = 0;
    sub_1003294E0();
  }

  else
  {
    static Log.default.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "SeymourDiscoverySheetCoordinator: intro sheet appeared", v30, 2u);
    }

    (*(v15 + 8))(v20, v14);
    Date.init()();
    v31 = type metadata accessor for Date();
    (*(*(v31 - 8) + 56))(v13, 0, 1, v31);
    v32 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_lastIntroSheetViewDate;
    swift_beginAccess();
    sub_100060E68(v13, v3 + v32, &unk_1008F73A0, &unk_1006DB450);
    swift_endAccess();
    sub_1003294E0();
    [*(v3 + OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_badgingProvider) refreshBadgeCount];
  }
}

uint64_t sub_10032A418(void *a1)
{
  v44 = a1;
  v1 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v46 = *(v1 - 8);
  v47 = v1;
  __chkstk_darwin(v1);
  v45 = &v39 - v2;
  v3 = type metadata accessor for Logger();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NoticePrivacyPreference();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  static NoticePrivacyPreference.Version.current.getter();
  NoticePrivacyPreference.init(state:version:)();
  static Log.default.getter();
  v16 = *(v7 + 16);
  v42 = v15;
  v17 = v6;
  v16(v12, v15, v6);
  v39 = v5;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v48 = v21;
    *v20 = 136446210;
    v16(v9, v12, v17);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    v25 = v12;
    v26 = *(v7 + 8);
    v26(v25, v17);
    v27 = sub_10000AFDC(v22, v24, &v48);

    *(v20 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "SeymourDiscoverySheetCoordinator updating preference: %{public}s", v20, 0xCu);
    sub_100005A40(v21);
  }

  else
  {

    v28 = v12;
    v26 = *(v7 + 8);
    v26(v28, v6);
  }

  (*(v40 + 8))(v39, v41);
  sub_1000066AC((v43 + OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_privacyPreferenceClient), *(v43 + OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_privacyPreferenceClient + 24));
  v29 = v45;
  v30 = v42;
  dispatch thunk of PrivacyPreferenceClientProtocol.updateNoticePrivacyPreference(_:)();
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  v33 = v44;
  *(v32 + 16) = v44;
  *(v32 + 24) = v31;
  v34 = v33;
  v35 = v47;
  v36 = Promise.operation.getter();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_10032ACA0;
  *(v37 + 24) = v32;

  v36(sub_100173A1C, v37);

  (*(v46 + 8))(v29, v35);
  return (v26)(v30, v17);
}

void sub_10032A8EC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for DiscoverySheetPrivacyAcknowledged();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  if ((*(a1 + 8) & 1) == 0)
  {
    static Log.default.getter();
    v16 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v16, v20))
    {
      goto LABEL_8;
    }

    v28 = v6;
    v18 = a2;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v16, v20, "SeymourDiscoverySheetCoordinator updated Notice Privacy Preference", v21, 2u);
    goto LABEL_6;
  }

  static Log.default.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v28 = v6;
    v18 = a2;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "SeymourDiscoverySheetCoordinator error updating Notice Privacy Preference", v19, 2u);
    v15 = v12;
LABEL_6:

    a2 = v18;
    v6 = v28;
    goto LABEL_8;
  }

  v15 = v12;
LABEL_8:

  (*(v10 + 8))(v15, v9);
  [a2 dismissViewControllerAnimated:1 completion:0];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    swift_unknownObjectRetain();

    swift_getObjectType();
    DiscoverySheetPrivacyAcknowledged.init()();
    sub_10032B67C(&qword_1008E8EA0, &type metadata accessor for DiscoverySheetPrivacyAcknowledged, &protocol conformance descriptor for DiscoverySheetPrivacyAcknowledged);
    dispatch thunk of EventHubProtocol.publish<A>(_:)();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v8, v5);
  }

  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = swift_unknownObjectWeakLoadStrong();

    if (v26)
    {
      [v26 navigateToSeymourTab];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10032ACA8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v20 = a2;
  v21 = a4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  swift_errorRetain();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19[1] = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v19[0] = v6;
    v22 = v14;
    *v13 = 136446722;
    swift_getErrorValue();
    v15 = Error.logOutput.getter();
    v17 = sub_10000AFDC(v15, v16, &v22);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_10000AFDC(v20, a3, &v22);
    *(v13 + 22) = 2050;
    *(v13 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "Caught %{public}s at %{public}s:%{public}lu", v13, 0x20u);
    swift_arrayDestroy();

    return (*(v7 + 8))(v9, v19[0]);
  }

  else
  {

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_10032AEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  swift_errorRetain();

  return Promise.init(asyncOperation:)();
}

double sub_10032AF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v9 = Promise.operation.getter();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a4;
  v10[5] = a5;

  v9(sub_10032B658, v10);

  return result;
}

uint64_t sub_10032B068(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v8, a5);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  return sub_1000A7360(v6, 0);
}

uint64_t sub_10032B0FC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *, __n128), uint64_t a4, void (*a5)(uint64_t, __n128))
{
  v10 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v18 - v13;
  if (a2)
  {
    a5(a1, v12);
    v15 = Promise.operation.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;

    v15(sub_10006E584, v16);

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v18 = a1;
    v19 = 0;
    return a3(&v18, v12);
  }
}

unint64_t sub_10032B468()
{
  result = qword_1008DFEB8;
  if (!qword_1008DFEB8)
  {
    sub_100141EEC(&qword_1008DFEB0, qword_1006E9560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DFEB8);
  }

  return result;
}

uint64_t sub_10032B590(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_100140278(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_10032B67C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10032B6C4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v93 = a8;
  v95 = a7;
  v94 = a6;
  v103 = a5;
  v105 = a4;
  v92 = a1;
  v91 = type metadata accessor for Logger();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v96 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v90 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v88 = &v88 - v17;
  v18 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v18 - 8);
  v101 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v99 = &v88 - v21;
  __chkstk_darwin(v22);
  v24 = &v88 - v23;
  __chkstk_darwin(v25);
  v104 = &v88 - v26;
  v9[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_isActive] = 0;
  swift_unknownObjectWeakInit();
  v27 = *(v14 + 56);
  v97 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_lastIntroSheetViewDate;
  v27(&v9[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_lastIntroSheetViewDate], 1, 1, v13);
  v28 = &v9[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_lastWhatsNewSheetViewVersion];
  *v28 = 0;
  v98 = v28;
  v28[8] = 1;
  v100 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_lastWhatsNewSheetViewDate;
  v106 = v27;
  v107 = v14 + 56;
  v27(&v9[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_lastWhatsNewSheetViewDate], 1, 1, v13);
  v29 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_introSheetConfiguration;
  v30 = type metadata accessor for IntroSheet();
  (*(*(v30 - 8) + 56))(&v9[v29], 1, 1, v30);
  v31 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_whatsNewSheetConfiguraion;
  v32 = type metadata accessor for WhatsNewSheet();
  (*(*(v32 - 8) + 56))(&v9[v31], 1, 1, v32);
  v33 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_contentAvailablity;
  v34 = type metadata accessor for ContentAvailability();
  (*(*(v34 - 8) + 56))(&v9[v33], 1, 1, v34);
  v35 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_noticePrivacyPreference;
  v36 = type metadata accessor for NoticePrivacyPreference();
  (*(*(v36 - 8) + 56))(&v9[v35], 1, 1, v36);
  *&v9[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_badgingProvider] = v92;
  swift_unknownObjectWeakAssign();
  v37 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_userDefaults;
  v38 = v93;
  *&v9[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_userDefaults] = v93;
  v103 = a2;
  sub_100007C5C(a2, &v9[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_contentAvailabilityClient]);
  v102 = a3;
  sub_100007C5C(a3, &v9[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_engagementClient]);
  sub_100007C5C(v105, &v9[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_privacyPreferenceClient]);
  v39 = &v9[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_eventHub];
  v40 = v95;
  *v39 = v94;
  v39[1] = v40;
  swift_unknownObjectRetain();
  v41 = v38;
  swift_unknownObjectRetain();
  v42 = String._bridgeToObjectiveC()();
  v43 = [v41 objectForKey:v42];

  if (v43)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v109 = 0u;
    v110 = 0u;
  }

  v111 = v109;
  v112 = v110;
  v44 = v104;
  if (*(&v110 + 1))
  {
    v45 = swift_dynamicCast() ^ 1;
    v46 = v44;
  }

  else
  {
    sub_10000EA04(&v111, &qword_1008E51F0, qword_1006D50E0);
    v46 = v44;
    v45 = 1;
  }

  v106(v46, v45, 1, v13);
  sub_10001B104(v44, v24, &unk_1008F73A0, &unk_1006DB450);
  if ((*(v14 + 48))(v24, 1, v13) == 1)
  {
    sub_10000EA04(v24, &unk_1008F73A0, &unk_1006DB450);
    static Log.default.getter();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "SeymourDiscoverySheetCoordinator: fist app launch date not found, assume this is the first launch", v49, 2u);
      v44 = v104;
    }

    (*(v89 + 8))(v96, v91);
    v50 = v90;
    Date.init()();
    v51 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_firstAppLaunchDate;
    (*(v14 + 32))(&v9[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_firstAppLaunchDate], v50, v13);
    v52 = *&v9[v37];
    (*(v14 + 16))(v50, &v9[v51], v13);
    v53 = v52;
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v50, v13);
    v55 = String._bridgeToObjectiveC()();
    [v53 setObject:isa forKey:v55];
  }

  else
  {
    v56 = *(v14 + 32);
    v57 = v88;
    v56(v88, v24, v13);
    v56(&v9[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_firstAppLaunchDate], v57, v13);
  }

  v58 = *&v9[v37];
  v59 = String._bridgeToObjectiveC()();
  v60 = [v58 BOOLForKey:v59];

  v9[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_forceShowingIntroSheet] = v60;
  v61 = *&v9[v37];
  v62 = String._bridgeToObjectiveC()();
  v63 = [v61 BOOLForKey:v62];

  v9[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_forceShowingWhatsNewSheet] = v63;
  v64 = *&v9[v37];
  v65 = String._bridgeToObjectiveC()();
  v66 = [v64 BOOLForKey:v65];

  v9[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_hasVisitedSeymourTab] = v66;
  v67 = *&v9[v37];
  v68 = String._bridgeToObjectiveC()();
  v69 = [v67 objectForKey:v68];

  if (v69)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v109 = 0u;
    v110 = 0u;
  }

  v70 = v99;
  v111 = v109;
  v112 = v110;
  if (*(&v110 + 1))
  {
    v71 = swift_dynamicCast() ^ 1;
    v72 = v70;
  }

  else
  {
    sub_10000EA04(&v111, &qword_1008E51F0, qword_1006D50E0);
    v72 = v70;
    v71 = 1;
  }

  v106(v72, v71, 1, v13);
  v73 = v97;
  swift_beginAccess();
  sub_100060E68(v70, &v9[v73], &unk_1008F73A0, &unk_1006DB450);
  swift_endAccess();
  v74 = *&v9[v37];
  v75 = String._bridgeToObjectiveC()();
  v76 = [v74 integerForKey:v75];

  v77 = v98;
  *v98 = v76;
  *(v77 + 8) = 0;
  v78 = *&v9[v37];
  v79 = String._bridgeToObjectiveC()();
  v80 = [v78 objectForKey:v79];

  if (v80)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v109 = 0u;
    v110 = 0u;
  }

  v81 = v101;
  v111 = v109;
  v112 = v110;
  if (*(&v110 + 1))
  {
    v82 = swift_dynamicCast() ^ 1;
    v83 = v81;
  }

  else
  {
    sub_10000EA04(&v111, &qword_1008E51F0, qword_1006D50E0);
    v83 = v81;
    v82 = 1;
  }

  v106(v83, v82, 1, v13);
  v84 = v100;
  swift_beginAccess();
  sub_100060E68(v81, &v9[v84], &unk_1008F73A0, &unk_1006DB450);
  swift_endAccess();
  v85 = type metadata accessor for SeymourDiscoverySheetCoordinator(0);
  v108.receiver = v9;
  v108.super_class = v85;
  v86 = objc_msgSendSuper2(&v108, "init");
  sub_100005A40(v105);
  sub_100005A40(v102);
  sub_100005A40(v103);
  sub_10000EA04(v44, &unk_1008F73A0, &unk_1006DB450);
  return v86;
}

unint64_t sub_10032C290()
{
  result = qword_1008E8ED8;
  if (!qword_1008E8ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E8ED8);
  }

  return result;
}

uint64_t sub_10032C2E4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ImpressionMetrics();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

BOOL sub_10032C350(void *a1, void *a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  sub_1000066AC(a1, v6);
  v8 = (*(v7 + 16))(v6, v7);
  v10 = v9;
  LOBYTE(v7) = v11;
  v12 = *(a3 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager);
  v13 = sub_1005F58BC(v12, v8, v9, v11);
  sub_10001D4F8(v8, v10, v7);
  v14 = a2[3];
  v15 = a2[4];
  sub_1000066AC(a2, v14);
  v16 = (*(v15 + 16))(v14, v15);
  v18 = v17;
  LOBYTE(v15) = v19;
  v20 = sub_1005F58BC(v12, v16, v17, v19);
  sub_10001D4F8(v16, v18, v15);
  if (v13 != v20)
  {
    return v13 < v20;
  }

  v21 = a1[3];
  v22 = a1[4];
  sub_1000066AC(a1, v21);
  LODWORD(v22) = (*(v22 + 24))(v21, v22) & 1;
  v23 = a2[3];
  v24 = a2[4];
  sub_1000066AC(a2, v23);
  return ((*(v24 + 24))(v23, v24) & 1) < v22;
}

double sub_10032C4F0()
{
  v1 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = *(v0 + OBJC_IVAR___CHCloudDeviceProvider_activitySharingCloudDeviceProvider);
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v3, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v8 = v4;
  sub_10026E198(0, 0, v3, &unk_1006E9650, v7);

  v9 = *(v0 + OBJC_IVAR___CHCloudDeviceProvider_accountDeviceProvider);
  v10 = [objc_opt_self() defaultCenter];
  [v10 addObserver:v9 selector:"deviceListChangedWithNotification:" name:AKDeviceListChangedNotification object:0];

  v6(v3, 1, 1, v5);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;

  sub_10026E198(0, 0, v3, &unk_1006E9658, v11);

  return result;
}

char *sub_10032C6E0()
{
  v1 = *(*(v0 + OBJC_IVAR___CHCloudDeviceProvider_accountDeviceProvider) + 32);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  v3 = sub_100310154();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v42 = v4 & 0xFFFFFFFFFFFFFF8;
    v43 = v4 & 0xC000000000000001;
    v7 = _swiftEmptyArrayStorage;
    v41 = v4;
    while (1)
    {
      if (v43)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v42 + 16))
        {
          goto LABEL_29;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = sub_10032D27C(v8, v2);
      if (!v11[2])
      {

        v12 = static os_log_type_t.error.getter();
        v13 = HKLogActivity;
        if (os_log_type_enabled(HKLogActivity, v12))
        {
          v14 = v13;
          v15 = swift_slowAlloc();
          v16 = i;
          v17 = v2;
          v18 = swift_slowAlloc();
          *v15 = 138412290;
          *(v15 + 4) = v9;
          *v18 = v9;
          v19 = v9;
          _os_log_impl(&_mh_execute_header, v14, v12, "No device on account that match %@", v15, 0xCu);
          sub_10000EA04(v18, &unk_1008DB8B0, &unk_1006DBD30);
          v2 = v17;
          i = v16;
          v4 = v41;

          v9 = v14;
        }

        v11 = _swiftEmptyArrayStorage;
      }

      v20 = v11[2];
      v21 = *(v7 + 2);
      v22 = v21 + v20;
      if (__OFADD__(v21, v20))
      {
        goto LABEL_30;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v22 <= *(v7 + 3) >> 1)
      {
        if (v11[2])
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v21 <= v22)
        {
          v24 = v21 + v20;
        }

        else
        {
          v24 = v21;
        }

        v7 = sub_1001A2030(isUniquelyReferenced_nonNull_native, v24, 1, v7);
        if (v11[2])
        {
LABEL_23:
          if ((*(v7 + 3) >> 1) - *(v7 + 2) < v20)
          {
            goto LABEL_32;
          }

          swift_arrayInitWithCopy();

          if (v20)
          {
            v25 = *(v7 + 2);
            v26 = __OFADD__(v25, v20);
            v27 = v25 + v20;
            if (v26)
            {
              goto LABEL_33;
            }

            *(v7 + 2) = v27;
          }

          goto LABEL_5;
        }
      }

      if (v20)
      {
        goto LABEL_31;
      }

LABEL_5:
      ++v6;
      if (v10 == i)
      {
        goto LABEL_36;
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
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_36:

  v28 = *(v7 + 2);
  if (v28)
  {
    v29 = 0;
    v30 = _swiftEmptyArrayStorage;
    v31 = v7 + 32;
    while (v29 < *(v7 + 2))
    {
      v32 = v31[1];
      v70[0] = *v31;
      v70[1] = v32;
      v33 = v31[2];
      v34 = v31[3];
      v35 = v31[5];
      v71 = v31[4];
      v72 = v35;
      v70[2] = v33;
      v70[3] = v34;
      v66 = v33;
      v67 = v34;
      v68 = v71;
      v69 = v35;
      v64 = v70[0];
      v65 = v32;
      sub_1001F34BC(v70, &v53);
      sub_10032CBD0(&v64, &v59);
      v55 = v66;
      v56 = v67;
      v57 = v68;
      v58 = v69;
      v53 = v64;
      v54 = v65;
      sub_1001F34F4(&v53);
      if (*(&v59 + 1))
      {
        v50 = v61;
        v51 = v62;
        v52 = v63;
        v48 = v59;
        v49 = v60;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_1001A2618(0, *(v30 + 2) + 1, 1, v30);
        }

        v37 = *(v30 + 2);
        v36 = *(v30 + 3);
        if (v37 >= v36 >> 1)
        {
          v30 = sub_1001A2618((v36 > 1), v37 + 1, 1, v30);
        }

        v47 = v52;
        v45 = v50;
        v46 = v51;
        v38 = v48;
        v44 = v49;
        *(v30 + 2) = v37 + 1;
        v39 = &v30[72 * v37];
        *(v39 + 2) = v38;
        *(v39 + 12) = v47;
        *(v39 + 4) = v45;
        *(v39 + 5) = v46;
        *(v39 + 3) = v44;
      }

      else
      {
        v50 = v61;
        v51 = v62;
        v52 = v63;
        v48 = v59;
        v49 = v60;
        sub_10000EA04(&v48, &qword_1008E8F20, "2L\v");
      }

      ++v29;
      v31 += 6;
      if (v28 == v29)
      {
        goto LABEL_48;
      }
    }

    __break(1u);

    v55 = v66;
    v56 = v67;
    v57 = v68;
    v58 = v69;
    v53 = v64;
    v54 = v65;
    sub_1001F34F4(&v53);

    __break(1u);
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_48:

    return v30;
  }

  return result;
}

void sub_10032CBD0(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v67 = a1[2];
  v68 = v4;
  v5 = a1[5];
  v69 = a1[4];
  v70 = v5;
  v6 = a1[1];
  v65 = *a1;
  v66 = v6;
  v7 = *(&v65 + 1);
  if (!*(&v65 + 1) || (v8 = *(&v66 + 1)) == 0 || !*(&v70 + 1))
  {
    v19 = static os_log_type_t.error.getter();
    v20 = HKLogActivity;
    if (!os_log_type_enabled(HKLogActivity, v19))
    {
LABEL_17:
      *(a2 + 64) = 0;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }

    v21 = v20;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v71 = v23;
    *v22 = 136315138;
    v24 = a1[3];
    v61 = a1[2];
    v62 = v24;
    v25 = a1[5];
    v63 = a1[4];
    v64 = v25;
    v26 = a1[1];
    v59 = *a1;
    v60 = v26;
    sub_1001F34BC(&v65, v58);
    v27 = String.init<A>(describing:)();
    v29 = sub_10000AFDC(v27, v28, &v71);

    *(v22 + 4) = v29;
    v30 = "Account device missing info %s";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v21, v19, v30, v22, 0xCu);
    sub_100005A40(v23);

    goto LABEL_17;
  }

  if (!*(&v68 + 1) || (v9 = *(&v69 + 1)) == 0)
  {
    v19 = static os_log_type_t.error.getter();
    v31 = HKLogActivity;
    if (!os_log_type_enabled(HKLogActivity, v19))
    {
      goto LABEL_17;
    }

    v21 = v31;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v71 = v23;
    *v22 = 136315138;
    v32 = a1[3];
    v61 = a1[2];
    v62 = v32;
    v33 = a1[5];
    v63 = a1[4];
    v64 = v33;
    v34 = a1[1];
    v59 = *a1;
    v60 = v34;
    sub_1001F34BC(&v65, v58);
    v35 = String.init<A>(describing:)();
    v37 = sub_10000AFDC(v35, v36, &v71);

    *(v22 + 4) = v37;
    v30 = "Account device missing operating system info %s";
    goto LABEL_16;
  }

  v57 = v65;
  if (v68 == __PAIR128__(0xE300000000000000, 5459817) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v10 = 0;
LABEL_9:
    v11 = v69;
    v12 = qword_1008DA898;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = qword_1009255A8;
    if (*(qword_1009255A8 + 16))
    {
      v14 = sub_100066F20(v70, *(&v70 + 1));
      if (v15)
      {
        v16 = *(v13 + 56) + 24 * v14;
        v18 = *v16;
        v17 = *(v16 + 8);
        LOBYTE(v16) = *(v16 + 16);
        *a2 = v66;
        *(a2 + 8) = v8;
        *(a2 + 16) = v57;
        *(a2 + 24) = v7;
        *(a2 + 32) = v18;
        *(a2 + 40) = v17;
        *(a2 + 48) = v10;
        *(a2 + 49) = v16;
        *(a2 + 56) = v11;
        *(a2 + 64) = v9;

        return;
      }
    }

    v38 = static os_log_type_t.error.getter();
    v39 = HKLogActivity;
    if (!os_log_type_enabled(HKLogActivity, v38))
    {
      goto LABEL_23;
    }

    v40 = v39;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v71 = v42;
    *v41 = 136315138;
    v43 = a1[3];
    v61 = a1[2];
    v62 = v43;
    v44 = a1[5];
    v63 = a1[4];
    v64 = v44;
    v45 = a1[1];
    v59 = *a1;
    v60 = v45;
    sub_1001F34BC(&v65, v58);
    v46 = String.init<A>(describing:)();
    v48 = sub_10000AFDC(v46, v47, &v71);

    *(v41 + 4) = v48;
    v49 = "Account device model doesn't match list %s";
    goto LABEL_22;
  }

  if (v68 == __PAIR128__(0xE700000000000000, 0x534F6863746177) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v10 = 1;
    goto LABEL_9;
  }

  v38 = static os_log_type_t.error.getter();
  v50 = HKLogActivity;
  if (!os_log_type_enabled(HKLogActivity, v38))
  {
    goto LABEL_23;
  }

  v40 = v50;
  v41 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  v71 = v42;
  *v41 = 136315138;
  v51 = a1[3];
  v61 = a1[2];
  v62 = v51;
  v52 = a1[5];
  v63 = a1[4];
  v64 = v52;
  v53 = a1[1];
  v59 = *a1;
  v60 = v53;
  sub_1001F34BC(&v65, v58);
  v54 = String.init<A>(describing:)();
  v56 = sub_10000AFDC(v54, v55, &v71);

  *(v41 + 4) = v56;
  v49 = "Account device isn't a phone or watch %s";
LABEL_22:
  _os_log_impl(&_mh_execute_header, v40, v38, v49, v41, 0xCu);
  sub_100005A40(v42);

LABEL_23:
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
}

id sub_10032D1D8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CloudDeviceProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10032D27C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = result;
  v4 = 0;
  v5 = a2 + 32;
  v6 = _swiftEmptyArrayStorage;
  v26 = a2 + 32;
  do
  {
    v27 = v6;
    v7 = (v5 + 96 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v2)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      v9 = v7[3];
      v31 = v7[2];
      v32 = v9;
      v10 = v7[5];
      v33 = v7[4];
      v34 = v10;
      v11 = v7[1];
      v29 = *v7;
      v30 = v11;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_26;
      }

      v12 = v33;
      sub_1001F34BC(&v29, v28);

      v13 = [v3 osVersion];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (!*(&v12 + 1))
      {
        sub_1001F34F4(&v29);

        goto LABEL_5;
      }

      if (v12 == v14 && *(&v12 + 1) == v16)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_16;
      }

      result = sub_1001F34F4(&v29);
LABEL_5:
      v7 += 6;
      if (v4 == v2)
      {
        return v27;
      }
    }

LABEL_16:
    v6 = v27;
    result = swift_isUniquelyReferenced_nonNull_native();
    v35 = v27;
    if ((result & 1) == 0)
    {
      result = sub_1001860FC(0, v27[2] + 1, 1);
      v6 = v35;
    }

    v5 = v26;
    v20 = v6[2];
    v19 = v6[3];
    if (v20 >= v19 >> 1)
    {
      result = sub_1001860FC((v19 > 1), v20 + 1, 1);
      v6 = v35;
    }

    v6[2] = v20 + 1;
    v21 = &v6[12 * v20];
    v22 = v30;
    v21[2] = v29;
    v21[3] = v22;
    v23 = v31;
    v24 = v32;
    v25 = v34;
    v21[6] = v33;
    v21[7] = v25;
    v21[4] = v23;
    v21[5] = v24;
  }

  while (v4 != v2);
  return v6;
}

uint64_t sub_10032D48C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BACC;

  return sub_1001F15E0();
}

uint64_t sub_10032D540(unint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a2 || !a1)
  {
    return a3(0);
  }

  v15 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_20:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v13 = _swiftEmptyArrayStorage;
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v9 = type metadata accessor for DownhillRunBridge();
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR___CHWorkoutDownhillRun_downhillRun] = v7;
    v14.receiver = v10;
    v14.super_class = v9;
    ++v5;
    if (objc_msgSendSuper2(&v14, "init"))
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = v15;
      v5 = v8;
    }
  }

  (a3)(v13, 0);
}

void sub_10032D7E0(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    type metadata accessor for DownhillRunBridge();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_10032D930()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10032D9A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

id sub_10032DA18(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v6 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008E8F98, &qword_1006E9758);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &ObjectType - v9;
  v11 = sub_100140278(&unk_1008F6FE0, &unk_1006E1A10);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &ObjectType - v13;
  *&v2[OBJC_IVAR____TtC10FitnessApp31WorkoutOnboardingCoordinatoriOS_workoutVoiceAvailabilityCancellable] = 0;
  v15 = OBJC_IVAR____TtC10FitnessApp31WorkoutOnboardingCoordinatoriOS__shouldShowOnboarding;
  LOBYTE(v35) = 0;
  Published.init(initialValue:)();
  (*(v12 + 32))(&v2[v15], v14, v11);
  v16 = OBJC_IVAR____TtC10FitnessApp31WorkoutOnboardingCoordinatoriOS__path;
  v35 = _swiftEmptyArrayStorage;
  sub_100140278(&qword_1008E8F88, &qword_1006E96A8);
  Published.init(initialValue:)();
  (*(v8 + 32))(&v2[v16], v10, v7);
  *&v2[OBJC_IVAR____TtC10FitnessApp31WorkoutOnboardingCoordinatoriOS_workoutVoiceAvailabilityProvider] = a1;
  v17 = type metadata accessor for WorkoutOnboardingCoordinatoriOS(0);
  v34.receiver = v2;
  v34.super_class = v17;
  v18 = a1;
  v19 = objc_msgSendSuper2(&v34, "init", ObjectType);
  static Log.default.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v35 = v23;
    *v22 = 136315650;
    v24 = _typeName(_:qualified:)();
    v26 = sub_10000AFDC(v24, v25, &v35);

    *(v22 + 4) = v26;
    *(v22 + 12) = 1024;
    v27 = [objc_opt_self() standardUserDefaults];
    v28 = String._bridgeToObjectiveC()();
    v29 = [v27 BOOLForKey:v28];

    *(v22 + 14) = v29;
    *(v22 + 18) = 1024;
    *(v22 + 20) = FIHasSeenWorkoutVoiceOnboarding();
    _os_log_impl(&_mh_execute_header, v20, v21, "%s initializing; current user defaults: hasCompletedWorkoutOnboardingOnPhoneKey: %{BOOL}d, HasSeenWorkoutVoiceOnboarding: %{BOOL}d", v22, 0x18u);
    sub_100005A40(v23);
  }

  (*(v32 + 8))(v6, v33);
  sub_10032E9B0();
  sub_10032E5E0();

  return v19;
}

uint64_t sub_10032DE40(int a1, int a2, int a3, uint64_t a4, int a5)
{
  v6 = v5;
  v38 = a5;
  v39 = a4;
  v35 = a2;
  v36 = a3;
  v33 = a1;
  swift_getObjectType();
  v37 = type metadata accessor for WorkoutOnboardingAnalyticsEvent();
  v34 = *(v37 - 8);
  __chkstk_darwin(v37);
  v32 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v40 = v15;
    *v14 = 136315138;
    v16 = _typeName(_:qualified:)();
    v18 = sub_10000AFDC(v16, v17, &v40);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s setting user default HasSeenWorkoutVoiceOnboarding to true", v14, 0xCu);
    sub_100005A40(v15);
  }

  (*(v9 + 8))(v11, v8);
  FISetHasSeenWorkoutVoiceOnboarding();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v40) = 0;
  v19 = v6;
  static Published.subscript.setter();
  v20 = [objc_opt_self() allActivityTypes];
  v21 = sub_10032F128();
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v40 = _swiftEmptyArrayStorage;
  if (v22 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v31[1] = v21;
    v24 = 0;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v25 = *(v22 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if ([v25 supportsWorkoutVoiceMotivation])
      {
        v21 = &v40;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v24;
      if (v27 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  isa = Array._bridgeToObjectiveC()().super.isa;

  FISetWorkoutVoiceIsEnabledForActivityTypes();

  v29 = v32;
  WorkoutOnboardingAnalyticsEvent.init(isWorkoutBuddyFeatureAvailable:canEnableWorkoutBuddy:didEnable:selectedVoiceIndex:)();
  WorkoutOnboardingAnalyticsEvent.send()();
  return (*(v34 + 8))(v29, v37);
}

void sub_10032E278()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25[0] = v9;
    *v8 = 136315138;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10000AFDC(v10, v11, v25);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s setting user default hasCompletedWorkoutOnboardingOnPhoneKey to true", v8, 0xCu);
    sub_100005A40(v9);
  }

  (*(v3 + 8))(v5, v2);
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = String._bridgeToObjectiveC()();
  [v13 setBool:1 forKey:v14];

  if ((FIHasSeenWorkoutVoiceOnboarding() & 1) != 0 || (v15 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter(), v16 = WorkoutVoiceAvailabilityProvider.State.isFeatureSupported.getter(), sub_10032F118(v15), (v16 & 1) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v25[0]) = 0;
    v24 = v1;
    static Published.subscript.setter();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = static Published.subscript.modify();
    v19 = v18;
    v20 = *v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v19 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_1001A2740(0, *(v20 + 2) + 1, 1, v20);
      *v19 = v20;
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1001A2740((v22 > 1), v23 + 1, 1, v20);
      *v19 = v20;
    }

    *(v20 + 2) = v23 + 1;
    v20[v23 + 32] = 1;
    v17(v25, 0);
  }
}

uint64_t sub_10032E5E0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 BOOLForKey:v7];

  if (FIHasSeenWorkoutVoiceOnboarding())
  {
    v9 = 0;
  }

  else
  {
    v10 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();
    v9 = WorkoutVoiceAvailabilityProvider.State.isFeatureSupported.getter();
    sub_10032F118(v10);
  }

  v11 = type metadata accessor for WorkoutFeatures();
  v31[3] = v11;
  v31[4] = sub_100043B08();
  v12 = sub_100005994(v31);
  (*(*(v11 - 8) + 104))(v12, enum case for WorkoutFeatures.Kahana(_:), v11);
  LOBYTE(v11) = isFeatureEnabled(_:)();
  sub_100005A40(v31);
  if ((v11 & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
  {
    v13 = v8 ^ 1 | v9;
  }

  else
  {
    v13 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v31[0]) = v13 & 1;
  v14 = v1;
  static Published.subscript.setter();
  static WOLog.workoutVoice.getter();
  v15 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = v2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v27 = v8;
    v21 = v20;
    v31[0] = v20;
    *v19 = 136315906;
    v22 = _typeName(_:qualified:)();
    v24 = sub_10000AFDC(v22, v23, v31);

    *(v19 + 4) = v24;
    v28 = v5;
    *(v19 + 12) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v19 + 14) = v30;

    *(v19 + 18) = 1024;
    *(v19 + 20) = v27 ^ 1;
    *(v19 + 24) = 1024;
    *(v19 + 26) = v9 & 1;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s Setting shouldShowOnboarding to: %{BOOL}d. shouldShowWorkoutOnboarding: %{BOOL}d shouldShowWorkoutVoiceOnboarding: %{BOOL}d", v19, 0x1Eu);
    sub_100005A40(v21);

    return (*(v3 + 8))(v28, v29);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

double sub_10032E9B0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100140278(&qword_1008E8658, &unk_1006E8FB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - v5;
  v11[1] = WorkoutVoiceAvailabilityProvider.availabilityStatePublisher.getter();
  sub_100140278(&qword_1008E8660, &qword_1006E9760);
  sub_10014A6B0(&qword_1008E8668, &qword_1008E8660, &qword_1006E9760, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_100317B8C();
  Publisher<>.removeDuplicates()();

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = ObjectType;
  sub_10014A6B0(&qword_1008E8678, &qword_1008E8658, &unk_1006E8FB0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v9 = Publisher<>.sink(receiveValue:)();

  (*(v4 + 8))(v6, v3);
  *(v1 + OBJC_IVAR____TtC10FitnessApp31WorkoutOnboardingCoordinatoriOS_workoutVoiceAvailabilityCancellable) = v9;

  return result;
}

void sub_10032EBDC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    static WOLog.workoutVoice.getter();
    sub_10032F108(v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    sub_10032F118(v8);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v22 = v4;
      v14 = v13;
      v23 = swift_slowAlloc();
      *v14 = 136315394;
      v15 = _typeName(_:qualified:)();
      v17 = sub_10000AFDC(v15, v16, &v23);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      v18 = WorkoutVoiceAvailabilityProvider.State.description.getter();
      v20 = sub_10000AFDC(v18, v19, &v23);

      *(v14 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s Availability state changed to: %s, calling determineOnboardingState.", v14, 0x16u);
      swift_arrayDestroy();

      (*(v5 + 8))(v7, v22);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    sub_10032E5E0();
  }
}

id sub_10032EE54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutOnboardingCoordinatoriOS(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10032EF7C()
{
  result = qword_1008E8F90;
  if (!qword_1008E8F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E8F90);
  }

  return result;
}

uint64_t sub_10032EFD0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WorkoutOnboardingCoordinatoriOS(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_10032F010(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_10032F090(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

double sub_10032F108(unint64_t a1)
{
  if (a1 >= 2)
  {
  }

  return result;
}

unint64_t sub_10032F118(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_10032F128()
{
  result = qword_1008E8FA0;
  if (!qword_1008E8FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008E8FA0);
  }

  return result;
}

unint64_t sub_10032F178()
{
  result = qword_1008E8FA8;
  if (!qword_1008E8FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E8FA8);
  }

  return result;
}

unint64_t sub_10032F1D0()
{
  result = qword_1008E8FB0;
  if (!qword_1008E8FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E8FB0);
  }

  return result;
}

uint64_t sub_10032F224(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100202054;

  return sub_100330E40(a1);
}

unint64_t sub_10032F318()
{
  result = qword_1008E8FB8;
  if (!qword_1008E8FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E8FB8);
  }

  return result;
}

uint64_t sub_10032F36C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10020516C();
  *v5 = v2;
  v5[1] = sub_10002BACC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10032F420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v7 = *(v3 + 8);
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_10016200C;

  return sub_100330FCC(a2, a3, v7);
}

unsigned __int8 *sub_10032F4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_100331320();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_100214A08(result, v7);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10032FA84(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_100330118(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_10032FB50(uint64_t a1)
{
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DispatchTime();
  v43 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v42 = &v36 - v10;
  AppDependency.wrappedValue.getter();
  v11 = v48[0];
  v12 = *(v48[0] + OBJC_IVAR___CHHistoryDataProvider_lock);
  v47 = v48[0];
  v44 = sub_10028293C;
  v45 = &v46;
  os_unfair_lock_lock(v12 + 4);
  sub_1001DF0A8(v48);
  os_unfair_lock_unlock(v12 + 4);
  v13 = v48[0];

  if (*(v13 + 16) <= 1uLL)
  {
    v38 = 0;
    v39 = v6;
    v40 = v3;

    v14 = dispatch_semaphore_create(0);
    v41 = a1;
    AppDependency.wrappedValue.getter();
    v15 = v48[0];
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1003312FC;
    *(v17 + 24) = v16;
    v18 = OBJC_IVAR___CHHistoryDataProvider_onChangeHandlers;
    swift_beginAccess();
    v19 = *&v15[v18];
    v37 = v14;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v15[v18] = v19;
    v21 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_1001A1E7C(0, v19[2] + 1, 1, v19);
      *&v15[v18] = v19;
    }

    v23 = v19[2];
    v22 = v19[3];
    if (v23 >= v22 >> 1)
    {
      v19 = sub_1001A1E7C((v22 > 1), v23 + 1, 1, v19);
    }

    v19[2] = v23 + 1;
    v24 = &v19[2 * v23];
    v24[4] = sub_100077508;
    v24[5] = v17;
    *&v15[v18] = v19;
    swift_endAccess();

    static DispatchTime.now()();
    *v5 = 15;
    v25 = v40;
    (*(v40 + 104))(v5, enum case for DispatchTimeInterval.seconds(_:), v21);
    v26 = v42;
    + infix(_:_:)();
    (*(v25 + 8))(v5, v21);
    v27 = *(v43 + 8);
    v28 = v39;
    v27(v8, v39);
    v29 = v37;
    OS_dispatch_semaphore.wait(timeout:)();
    v27(v26, v28);
    v30 = AppDependency.wrappedValue.getter();
    v31 = v48[0];
    v32 = *(v48[0] + OBJC_IVAR___CHHistoryDataProvider_lock);
    __chkstk_darwin(v30);
    *(&v36 - 2) = v31;
    __chkstk_darwin(v33);
    *(&v36 - 2) = sub_100283180;
    *(&v36 - 1) = v34;
    os_unfair_lock_lock(v32 + 4);
    sub_1002831DC(v48);
    os_unfair_lock_unlock(v32 + 4);
    v13 = v48[0];
  }

  return v13;
}

uint64_t sub_10032FFD0()
{
  v1 = sub_10032FB50(*(v0 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1;
    sub_100185BE4(0, v2, 0);
    v4 = v3;
    v5 = 0;
    v6 = _swiftEmptyArrayStorage[2];
    v7 = 2 * v6;
    do
    {
      v8 = *(v4 + v5 * 8 + 32);
      v9 = *(v4 + v5 * 8 + 40);
      v10 = _swiftEmptyArrayStorage[3];
      v11 = v6 + 1;
      if (v6 >= v10 >> 1)
      {
        sub_100185BE4((v10 > 1), v6 + 1, 1);
        v4 = v3;
      }

      _swiftEmptyArrayStorage[2] = v11;
      v12 = &_swiftEmptyArrayStorage[v7 + v5];
      v12[4] = v8;
      *(v12 + 20) = v9;
      v5 += 2;
      v6 = v11;
      --v2;
    }

    while (v2);
  }

  v13 = *(v0 + 8);

  return v13(_swiftEmptyArrayStorage);
}

uint64_t sub_100330118(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_100214E00(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_100214E00(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_100214E00(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_100330584(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

unsigned __int8 *sub_1003305FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyRegexOutput.Element();
  v59 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v56 - v8;
  v10 = sub_100140278(&qword_1008E8FC0, &qword_1006E99E8);
  __chkstk_darwin(v10 - 8);
  v12 = v56 - v11;
  v13 = sub_100140278(&qword_1008E8FC8, &qword_1006E99F0);
  v14 = *(v13 - 8);
  v60 = v13;
  v61 = v14;
  __chkstk_darwin(v13);
  v16 = v56 - v15;
  v17 = sub_100140278(&qword_1008E8FD0, &qword_1006E99F8);
  __chkstk_darwin(v17 - 8);
  v19 = v56 - v18;
  v20 = sub_100140278(&qword_1008E8FD8, &qword_1006E9A00);
  __chkstk_darwin(v20);
  v24 = v56 - v23;
  if (a1 == 0x79726F74736968 && a2 == 0xE700000000000000)
  {
    return 0;
  }

  v57 = v22;
  v58 = v21;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 0;
  }

  if (a1 == 0xD000000000000010 && 0x800000010074D8E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x2F79726F74736968 && a2 == 0xED00007365766964 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0xD000000000000013 && 0x800000010074D8A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x2F79726F74736968 && a2 == 0xEE00736B63617473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  Regex<A>.init(_:)();
  (*(v57 + 56))(v19, 0, 1, v58);
  (*(v57 + 32))(v24, v19, v58);
  Regex.firstMatch(in:)();
  v56[4] = 0;
  v27 = v60;
  v26 = v61;
  if ((*(v61 + 48))(v12, 1, v60) == 1)
  {
    (*(v57 + 8))(v24, v58);
    sub_10000EA04(v12, &qword_1008E8FC0, &qword_1006E99E8);
    return 0;
  }

  (*(v26 + 32))(v16, v12, v27);
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  if (v62 != 3)
  {
    (*(v61 + 8))(v16, v27);
    goto LABEL_29;
  }

  __chkstk_darwin(v28);
  v56[-2] = 1;
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v29 = AnyRegexOutput.Element.range.getter();
  v56[2] = v30;
  v56[3] = v29;
  v32 = v31;
  v33 = *(v59 + 8);
  v34 = v33(v9, v4);
  if (v32 & 1) != 0 || (__chkstk_darwin(v34), v56[-2] = 2, swift_getKeyPath(), Regex.Match.subscript.getter(), , v59 = AnyRegexOutput.Element.range.getter(), v56[1] = v35, v37 = v36, v33(v6, v4), (v37))
  {
LABEL_27:
    (*(v61 + 8))(v16, v60);
LABEL_29:
    (*(v57 + 8))(v24, v58);
    return 0;
  }

  v38 = String.subscript.getter();
  v42 = v41;
  if (!((v38 ^ v39) >> 14))
  {

    goto LABEL_27;
  }

  v43 = v38;
  v44 = v39;
  v45 = v40;
  v46 = sub_10032FA84(v38, v39, v40, v41, 10);
  if ((v47 & 0x100) != 0)
  {
    v48 = sub_10032F4F4(v43, v44, v45, v42, 10);
    v51 = v50;

    if (v51)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v48 = v46;
    v49 = v47;

    if (v49)
    {
      goto LABEL_27;
    }
  }

  if ([objc_opt_self() historyFilterDisambiguatesLocationForActivityType:v48])
  {
    v52 = String.subscript.getter();
    sub_100330584(v52, v53, v54, v55, 0x726F6F646E69, 0xE600000000000000);
  }

  (*(v61 + 8))(v16, v60);
  (*(v57 + 8))(v24, v58);
  return v48;
}

void sub_100330E60()
{
  v1 = 0;
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  v4 = v2 + 40;
  v5 = _swiftEmptyArrayStorage;
LABEL_2:
  v6 = (v4 + 16 * v1);
  while (v3 != v1)
  {
    if (v1 >= v3)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_16;
    }

    v8 = *(v6 - 1);
    v9 = *v6;

    v10 = sub_1003305FC(v8, v9);
    v12 = v11;

    v6 += 2;
    ++v1;
    if ((v12 & 0xFF00) != 0x700)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1001A2EE8(0, *(v5 + 2) + 1, 1, v5);
      }

      v14 = *(v5 + 2);
      v13 = *(v5 + 3);
      if (v14 >= v13 >> 1)
      {
        v5 = sub_1001A2EE8((v13 > 1), v14 + 1, 1, v5);
      }

      *(v5 + 2) = v14 + 1;
      v15 = &v5[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 20) = v12;
      v1 = v7;
      goto LABEL_2;
    }
  }

  v16 = *(v0 + 8);

  v16(v5);
}

uint64_t sub_100330FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(sub_100330FF0, 0, 0);
}

uint64_t sub_100330FF0()
{
  v1 = sub_10032FB50(v0[8]);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v8 = v0[6];
      v7 = v0[7];
      v9 = *(v3 - 1);
      v10 = *v3;
      v0[2] = sub_1004477A4(v9, *v3);
      v0[3] = v11;
      v0[4] = v8;
      v0[5] = v7;
      sub_10000FCBC();
      LOBYTE(v7) = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();

      if (v7)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10018611C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v5 = _swiftEmptyArrayStorage[2];
        v4 = _swiftEmptyArrayStorage[3];
        if (v5 >= v4 >> 1)
        {
          sub_10018611C((v4 > 1), v5 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v5 + 1;
        v6 = &_swiftEmptyArrayStorage[2 * v5];
        v6[4] = v9;
        *(v6 + 20) = v10;
      }

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  v13 = _swiftEmptyArrayStorage[2];
  if (v13)
  {
    v14 = 0;
    v15 = &_swiftEmptyArrayStorage[5];
    v16 = _swiftEmptyArrayStorage[2];
    do
    {
      if (v14 >= v16)
      {
        __break(1u);
        return result;
      }

      v18 = v0[6];
      v17 = v0[7];
      v19 = *(v15 - 1);
      v20 = *v15;
      v0[2] = sub_1004477A4(v19, *v15);
      v0[3] = v21;
      v0[4] = v18;
      v0[5] = v17;
      sub_10000FCBC();
      v22 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();

      if (!v22)
      {

        sub_100140278(&qword_1008DE628, &qword_1006D9020);
        v33 = swift_allocObject();
        *(v33 + 1) = xmmword_1006D46C0;
        v33[4] = v19;
        *(v33 + 20) = v20;
        goto LABEL_23;
      }

      ++v14;
      v16 = _swiftEmptyArrayStorage[2];
      v15 += 8;
    }

    while (v13 != v14);
    if (!v16)
    {
      goto LABEL_21;
    }

    sub_100185BE4(0, v16, 0);
    v23 = 0;
    v24 = _swiftEmptyArrayStorage;
    v25 = _swiftEmptyArrayStorage[2];
    v26 = 2 * v25;
    do
    {
      v27 = _swiftEmptyArrayStorage[v23 + 4];
      v28 = _swiftEmptyArrayStorage[v23 + 5];
      v35 = v24;
      v29 = v24[3];
      v30 = v25 + 1;
      if (v25 >= v29 >> 1)
      {
        sub_100185BE4((v29 > 1), v25 + 1, 1);
        v24 = v35;
      }

      v24[2] = v30;
      v31 = &v24[v26 + v23];
      v31[4] = v27;
      *(v31 + 20) = v28;
      v23 += 2;
      v25 = v30;
      --v16;
    }

    while (v16);
    v32 = v24;

    v33 = v32;
  }

  else
  {
LABEL_21:

    v33 = _swiftEmptyArrayStorage;
  }

LABEL_23:
  v34 = v0[1];

  return v34(v33);
}

unint64_t sub_100331320()
{
  result = qword_1008E8FE0;
  if (!qword_1008E8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E8FE0);
  }

  return result;
}

uint64_t type metadata accessor for SeymourArtworkSizingBehavior(uint64_t a1)
{
  result = qword_1008E9058;
  if (!qword_1008E9058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003313C0(uint64_t a1)
{
  sub_100331434(319);
  if (v1 <= 0x3F)
  {
    sub_1003314A8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100331434(uint64_t a1)
{
  if (!qword_1008E9068)
  {
    type metadata accessor for CGSize(255);
    type metadata accessor for ArtworkDimension();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1008E9068);
    }
  }
}

void sub_1003314A8()
{
  if (!qword_1008E9070)
  {
    type metadata accessor for CGSize(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1008E9070);
    }
  }
}

uint64_t sub_100331528(void *a1, int a2)
{
  v4 = type metadata accessor for OvernightMetricsViewModel.Summary();
  v73 = *(v4 - 8);
  __chkstk_darwin(v4);
  v71 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OvernightMetricsViewModel.Summary.Variant();
  v72 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v69 = v58 - v10;
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for OvernightMetricsViewModel();
  v15 = *(v74 - 8);
  __chkstk_darwin(v74);
  v66 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v58 - v18;
  v68 = a2;
  v64 = v11;
  v65 = v4;
  v70 = v8;
  v67 = a1;
  if (a2)
  {
    v20 = a1;
    v21 = v12;
    v22 = v20;
  }

  else
  {

    v23 = static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v25 = sub_1000A73A4(a1, 0);
    v21 = v12;
    (*(v12 + 8))(v14, v11, v25);
    v22 = v75;
  }

  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

  v26 = OvernightMetricsViewModel.watchExperienceRequiresSetup.getter();
  v27 = *(v15 + 8);
  v28 = v74;
  v27(v19, v74);
  if (v26 == 2 || (v26 & 1) != 0 || ((v63 = v6, v58[0] = v21, (v68 & 1) == 0) ? (v30 = v67, , v31 = static os_log_type_t.fault.getter(), v32 = static Log.runtimeIssuesLog.getter(), os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage), v32, EnvironmentValues.init()(), swift_getAtKeyPath(), v33 = sub_1000A73A4(v30, 0), (*(v21 + 8))(v14, v64, v33), v29 = v75) : (v29 = v67), v35 = v65, v34 = v66, dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter(), v36 = v71, OvernightMetricsViewModel.summary.getter(), v27(v34, v28), v37 = v69, OvernightMetricsViewModel.Summary.variant.getter(), v29, v38 = *(v73 + 8), v73 += 8, v62 = v38, v38(v36, v35), v39 = v72, v40 = v70, v41 = v63, v60 = *(v72 + 104), v61 = v72 + 104, v60(v70, enum case for OvernightMetricsViewModel.Summary.Variant.noData(_:), v63), v58[1] = sub_1003360E8(&qword_1008E91B0, &type metadata accessor for OvernightMetricsViewModel.Summary.Variant, &protocol conformance descriptor for OvernightMetricsViewModel.Summary.Variant), LOBYTE(v36) = dispatch thunk of static Equatable.== infix(_:_:)(), v43 = *(v39 + 8), v42 = v39 + 8, v43(v40, v41), v59 = v43, v43(v37, v41), (v36 & 1) != 0))
  {
    v44 = 0;
  }

  else
  {
    v72 = v42;
    if (v68)
    {
      v46 = v67;
    }

    else
    {
      v47 = v67;

      v48 = static os_log_type_t.fault.getter();
      v49 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v49, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v50 = sub_1000A73A4(v47, 0);
      (*(v58[0] + 8))(v14, v64, v50);
      v46 = v75;
    }

    v51 = v66;
    dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();
    v52 = v71;
    OvernightMetricsViewModel.summary.getter();
    v27(v51, v74);
    v53 = v69;
    OvernightMetricsViewModel.Summary.variant.getter();

    v62(v52, v35);
    v54 = v70;
    v55 = v63;
    v60(v70, enum case for OvernightMetricsViewModel.Summary.Variant.insufficientData(_:), v63);
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    v57 = v59;
    v59(v54, v55);
    v57(v53, v55);
    v44 = v56 ^ 1;
  }

  return v44 & 1;
}

uint64_t sub_100331C44@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_100140278(&qword_1008E90A0, &qword_1006E9BA8);
  __chkstk_darwin(v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_100140278(&qword_1008E90A8, &qword_1006E9BB0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v38 - v11;
  v13 = sub_100140278(&qword_1008E90B0, &qword_1006E9BB8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v38 - v15;
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v17 = sub_100140278(&qword_1008E90B8, &qword_1006E9BC0);
  sub_100331F24(a1, a2 & 1, &v8[*(v17 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100015E80(v8, v12, &qword_1008E90A0, &qword_1006E9BA8);
  v18 = &v12[*(v10 + 44)];
  v19 = v47;
  *(v18 + 4) = v46;
  *(v18 + 5) = v19;
  *(v18 + 6) = v48;
  v20 = v43;
  *v18 = v42;
  *(v18 + 1) = v20;
  v21 = v45;
  *(v18 + 2) = v44;
  *(v18 + 3) = v21;
  LOBYTE(v8) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_100015E80(v12, v16, &qword_1008E90A8, &qword_1006E9BB0);
  v30 = &v16[*(v14 + 44)];
  *v30 = v8;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = static Alignment.center.getter();
  v33 = v32;
  sub_100335370(a1, a2 & 1, &v39);
  v34 = v39;
  v35 = v40;
  LOBYTE(v8) = v41;
  sub_100015E80(v16, a3, &qword_1008E90B0, &qword_1006E9BB8);
  result = sub_100140278(&qword_1008E90C0, &qword_1006E9BC8);
  v37 = a3 + *(result + 36);
  *v37 = v34;
  *(v37 + 8) = v35;
  *(v37 + 10) = v8;
  *(v37 + 16) = v31;
  *(v37 + 24) = v33;
  return result;
}

uint64_t sub_100331F24@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v3) = a2;
  v285 = a3;
  v5 = sub_100140278(&qword_1008E6E00, qword_1006E6F48);
  __chkstk_darwin(v5 - 8);
  v267 = &v255 - v6;
  v7 = sub_100140278(&qword_1008E90E0, &qword_1006E9BE0);
  __chkstk_darwin(v7 - 8);
  v270 = &v255 - v8;
  v264 = type metadata accessor for BalanceMetricsTimeScope();
  v263 = *(v264 - 8);
  __chkstk_darwin(v264);
  v269 = &v255 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_100140278(&qword_1008E90E8, &qword_1006E9BE8);
  __chkstk_darwin(v273);
  v268 = &v255 - v10;
  v271 = sub_100140278(&qword_1008E90F0, &qword_1006E9BF0);
  __chkstk_darwin(v271);
  v272 = (&v255 - v11);
  v283 = sub_100140278(&qword_1008E90F8, &qword_1006E9BF8);
  __chkstk_darwin(v283);
  v274 = &v255 - v12;
  v292 = type metadata accessor for OvernightMetricsViewModel.Summary();
  v301 = *(v292 - 8);
  __chkstk_darwin(v292);
  v290 = &v255 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = type metadata accessor for OvernightMetricsViewModel.Summary.Variant();
  v300 = *(v291 - 8);
  __chkstk_darwin(v291);
  v289 = &v255 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v288 = &v255 - v16;
  v280 = sub_100140278(&qword_1008E9100, &qword_1006E9C00);
  __chkstk_darwin(v280);
  v281 = (&v255 - v17);
  v286 = type metadata accessor for LocalizationFeature();
  v293 = *(v286 - 8);
  __chkstk_darwin(v286);
  v277 = &v255 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100140278(&qword_1008E9108, &qword_1006E9C08);
  __chkstk_darwin(v19 - 8);
  v284 = &v255 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v282 = &v255 - v22;
  v278 = sub_100140278(&qword_1008E9110, &qword_1006E9C10);
  __chkstk_darwin(v278);
  v24 = &v255 - v23;
  v25 = sub_100140278(&qword_1008E9118, &qword_1006E9C18);
  __chkstk_darwin(v25);
  v27 = (&v255 - v26);
  v28 = type metadata accessor for Font.Leading();
  v276 = *(v28 - 8);
  __chkstk_darwin(v28);
  v275 = &v255 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = type metadata accessor for EnvironmentValues();
  v296 = *(v297 - 8);
  __chkstk_darwin(v297);
  v295 = &v255 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for OvernightMetricsViewModel();
  v302 = *(v31 - 8);
  __chkstk_darwin(v31);
  v266 = &v255 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v265 = &v255 - v34;
  __chkstk_darwin(v35);
  v262 = &v255 - v36;
  __chkstk_darwin(v37);
  v261 = &v255 - v38;
  __chkstk_darwin(v39);
  v260 = &v255 - v40;
  __chkstk_darwin(v41);
  v287 = &v255 - v42;
  __chkstk_darwin(v43);
  v45 = &v255 - v44;
  __chkstk_darwin(v46);
  v48 = &v255 - v47;
  v49 = sub_100140278(&qword_1008E9120, &qword_1006E9C20);
  __chkstk_darwin(v49 - 8);
  v279 = &v255 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v53 = &v255 - v52;
  v54 = sub_100331528(a1, v3 & 1);
  v294 = v53;
  LODWORD(v299) = v3;
  v298 = v31;
  if ((v54 & 1) == 0)
  {
    v255 = v27;
    v257 = v25;
    v259 = a1;
    v258 = v45;
    v256 = v28;
    if (v3)
    {
      v64 = a1;
    }

    else
    {

      v65 = static os_log_type_t.fault.getter();
      v66 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v65, &_mh_execute_header, v66, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      v67 = v295;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v68 = sub_1000A73A4(a1, 0);
      (*(v296 + 8))(v67, v297, v68);
      v64 = v308;
    }

    dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

    v69 = OvernightMetricsViewModel.localizedTitle.getter();
    v71 = v70;
    (*(v302 + 8))(v48, v31);
    *&v308 = v69;
    *(&v308 + 1) = v71;
    sub_10000FCBC();
    v3 = Text.init<A>(_:)();
    v73 = v72;
    v75 = v74;
    v76 = [objc_opt_self() secondaryLabelColor];
    *&v308 = Color.init(_:)();
    v77 = Text.foregroundStyle<A>(_:)();
    v79 = v78;
    v81 = v80;
    sub_10004642C(v3, v73, v75 & 1);

    static Font.subheadline.getter();
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    v82 = v276;
    v83 = v275;
    v84 = v256;
    (*(v276 + 104))(v275, enum case for Font.Leading.tight(_:), v256);
    Font.leading(_:)();

    (*(v82 + 8))(v83, v84);
    v85 = Text.font(_:)();
    v87 = v86;
    LOBYTE(v82) = v88;
    v90 = v89;

    v91 = v81 & 1;
    v31 = v298;
    sub_10004642C(v77, v79, v91);

    v92 = v255;
    *v255 = v85;
    v92[1] = v87;
    *(v92 + 16) = v82 & 1;
    v92[3] = v90;
    swift_storeEnumTagMultiPayload();
    sub_1003359E0();
    _ConditionalContent<>.init(storage:)();
    a1 = v259;
    LOBYTE(v3) = v299;
    v45 = v258;
    if ((v299 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v63 = a1;
    goto LABEL_9;
  }

  *v24 = static HorizontalAlignment.leading.getter();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v55 = sub_100140278(&qword_1008E9160, &qword_1006E9C38);
  sub_100334180(a1, v3 & 1, &v24[*(v55 + 44)]);
  v56 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v58 = &v24[*(v278 + 36)];
  *v58 = KeyPath;
  v58[1] = v56;
  sub_10001B104(v24, v27, &qword_1008E9110, &qword_1006E9C10);
  swift_storeEnumTagMultiPayload();
  sub_1003359E0();
  _ConditionalContent<>.init(storage:)();
  sub_10000EA04(v24, &qword_1008E9110, &qword_1006E9C10);
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_3:

  v59 = static os_log_type_t.fault.getter();
  v60 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)(v59, &_mh_execute_header, v60, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

  v61 = v295;
  EnvironmentValues.init()();
  swift_getAtKeyPath();
  v62 = sub_1000A73A4(a1, 0);
  (*(v296 + 8))(v61, v297, v62);
  v63 = v308;
LABEL_9:

  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

  v93 = OvernightMetricsViewModel.watchExperienceRequiresSetup.getter();
  v94 = *(v302 + 8);
  v302 += 8;
  v94(v45, v31);
  if (v93 != 2 && (v93 & 1) != 0)
  {
    LODWORD(v302) = enum case for LocalizationFeature.workout(_:);
    v95 = v293;
    v96 = *(v293 + 104);
    v300 = v293 + 104;
    v301 = v96;
    v97 = v277;
    v98 = v286;
    v96(v277);
    v99 = static Localization.workoutUILocalizedString(_:feature:)();
    v101 = v100;
    v102 = *(v95 + 8);
    v293 = v95 + 8;
    v298 = v102;
    v102(v97, v98);
    *&v308 = v99;
    *(&v308 + 1) = v101;
    v299 = sub_10000FCBC();
    v131 = Text.init<A>(_:)();
    v104 = v103;
    v106 = v105;
    static Font.subheadline.getter();
    v107 = Text.font(_:)();
    v109 = v108;
    v111 = v110;

    sub_10004642C(v131, v104, v106 & 1);

    v112 = [objc_opt_self() secondaryLabelColor];
    *&v308 = Color.init(_:)();
    v113 = Text.foregroundStyle<A>(_:)();
    v115 = v114;
    LOBYTE(v131) = v116;
    v117 = v111 & 1;
    v118 = v294;
    sub_10004642C(v107, v109, v117);

    v119 = v286;
    (v301)(v97, v302, v286);
    v120 = static Localization.workoutUILocalizedString(_:feature:)();
    v122 = v121;
    v298(v97, v119);
    *&v308 = v120;
    *(&v308 + 1) = v122;
    v123 = Text.accessibilityLabel<A>(_:)();
    v125 = v124;
    LOBYTE(v97) = v126;
    v128 = v127;
    v129 = v113;
    v130 = v282;
    sub_10004642C(v129, v115, v131 & 1);

    LOBYTE(v131) = v97 & 1;
    v303 = v123;
    v304 = v125;
    v305 = v97 & 1;
    v306 = v128;
    v307 = 0;
LABEL_17:
    sub_10006965C(v123, v125, v131);

    _ConditionalContent<>.init(storage:)();
    v168 = v310;
    v169 = v309;
    v170 = v281;
    *v281 = v308;
    v170[1] = v169;
    *(v170 + 32) = v168;
    swift_storeEnumTagMultiPayload();
    sub_100140278(&qword_1008E36D0, &qword_1006F5920);
    sub_100335B80();
    sub_100335BFC();
    _ConditionalContent<>.init(storage:)();
    sub_10004642C(v123, v125, v131);

    goto LABEL_40;
  }

  if (v3)
  {
    v132 = a1;
  }

  else
  {

    v133 = static os_log_type_t.fault.getter();
    v134 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v133, &_mh_execute_header, v134, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v135 = v295;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v136 = sub_1000A73A4(a1, 0);
    (*(v296 + 8))(v135, v297, v136);
    v132 = v308;
  }

  v137 = v287;
  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();
  v138 = v290;
  OvernightMetricsViewModel.summary.getter();
  v278 = v94;
  v94(v137, v31);
  v139 = v288;
  OvernightMetricsViewModel.Summary.variant.getter();

  v140 = *(v301 + 1);
  v301 = (v301 + 8);
  v140(v138, v292);
  v141 = v300;
  v142 = *(v300 + 104);
  v143 = v289;
  v144 = v291;
  v142(v289, enum case for OvernightMetricsViewModel.Summary.Variant.noData(_:), v291);
  v145 = static OvernightMetricsViewModel.Summary.Variant.== infix(_:_:)();
  v146 = *(v141 + 8);
  v146(v143, v144);
  v300 = v141 + 8;
  v146(v139, v144);
  if (v145)
  {
    v147 = v293;
    v148 = v277;
    v149 = v286;
    (*(v293 + 104))(v277, enum case for LocalizationFeature.workout(_:), v286);
    v150 = static Localization.workoutUILocalizedString(_:feature:)();
    v152 = v151;
    (*(v147 + 8))(v148, v149);
    *&v308 = v150;
    *(&v308 + 1) = v152;
    sub_10000FCBC();
    v153 = Text.init<A>(_:)();
    v155 = v154;
    LOBYTE(v149) = v156;
    static Font.subheadline.getter();
    v157 = Text.font(_:)();
    v159 = v158;
    v161 = v160;

    sub_10004642C(v153, v155, v149 & 1);

    v162 = [objc_opt_self() secondaryLabelColor];
    *&v308 = Color.init(_:)();
    v123 = Text.foregroundStyle<A>(_:)();
    v125 = v163;
    v165 = v164;
    v167 = v166;
    sub_10004642C(v157, v159, v161 & 1);
    v118 = v294;

    v131 = v165 & 1;
    v130 = v282;
    v303 = v123;
    v304 = v125;
    v305 = v131;
    v306 = v167;
    v307 = 1;
    goto LABEL_17;
  }

  if (v299)
  {
    v171 = a1;
  }

  else
  {

    v172 = static os_log_type_t.fault.getter();
    v173 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v172, &_mh_execute_header, v173, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v174 = v295;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v175 = sub_1000A73A4(a1, 0);
    (*(v296 + 8))(v174, v297, v175);
    v171 = v308;
  }

  v176 = v278;
  v177 = v287;
  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();
  v178 = v290;
  OvernightMetricsViewModel.summary.getter();
  v176(v177, v298);
  v179 = v288;
  OvernightMetricsViewModel.Summary.variant.getter();

  v140(v178, v292);
  v180 = v289;
  v181 = v291;
  v142(v289, enum case for OvernightMetricsViewModel.Summary.Variant.insufficientData(_:), v291);
  v182 = static OvernightMetricsViewModel.Summary.Variant.== infix(_:_:)();
  v146(v180, v181);
  v146(v179, v181);
  if (v182)
  {
    v183 = v293;
    v184 = v277;
    v185 = v286;
    (*(v293 + 104))(v277, enum case for LocalizationFeature.workout(_:), v286);
    v186 = static Localization.workoutUILocalizedString(_:feature:)();
    v188 = v187;
    (*(v183 + 8))(v184, v185);
    *&v308 = v186;
    *(&v308 + 1) = v188;
    sub_10000FCBC();
    v189 = Text.init<A>(_:)();
    v191 = v190;
    LOBYTE(v185) = v192;
    static Font.subheadline.getter();
    v193 = Text.font(_:)();
    v195 = v194;
    v197 = v196;

    sub_10004642C(v189, v191, v185 & 1);

    v198 = [objc_opt_self() secondaryLabelColor];
    *&v308 = Color.init(_:)();
    v199 = Text.foregroundStyle<A>(_:)();
    v201 = v200;
    v203 = v202;
    v205 = v204;
    sub_10004642C(v193, v195, v197 & 1);

    v206 = v272;
    *v272 = v199;
    v206[1] = v201;
    LOBYTE(v183) = v203 & 1;
    *(v206 + 16) = v203 & 1;
    v206[3] = v205;
    swift_storeEnumTagMultiPayload();
    sub_10006965C(v199, v201, v203 & 1);
    sub_100335AC4();

    v207 = v274;
    _ConditionalContent<>.init(storage:)();
    sub_10001B104(v207, v281, &qword_1008E90F8, &qword_1006E9BF8);
    swift_storeEnumTagMultiPayload();
    sub_100140278(&qword_1008E36D0, &qword_1006F5920);
    sub_100335B80();
    sub_100335BFC();
    v130 = v282;
    v118 = v294;
    _ConditionalContent<>.init(storage:)();
    sub_10004642C(v199, v201, v183);

    v208 = v207;
    v209 = &qword_1008E90F8;
    v210 = &qword_1006E9BF8;
  }

  else
  {
    (*(v263 + 104))(v269, enum case for BalanceMetricsTimeScope.oneDay(_:), v264);
    if (v299)
    {
      v211 = a1;
      v212 = a1;
    }

    else
    {

      v213 = static os_log_type_t.fault.getter();
      v214 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v213, &_mh_execute_header, v214, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      v215 = v295;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v211 = a1;
      v216 = sub_1000A73A4(a1, 0);
      (*(v296 + 8))(v215, v297, v216);
      v212 = v308;
    }

    v130 = v282;
    v217 = v267;
    v118 = v294;
    v218 = v278;

    v219 = v260;
    dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

    OvernightMetricsViewModel.chartPoints.getter();
    v218(v219, v298);
    if (v299)
    {
      v220 = v211;
    }

    else
    {

      v221 = static os_log_type_t.fault.getter();
      v222 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v221, &_mh_execute_header, v222, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      v223 = v295;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v224 = sub_1000A73A4(v211, 0);
      (*(v296 + 8))(v223, v297, v224);
      v220 = v308;
    }

    v225 = v261;
    dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

    OvernightMetricsViewModel.emphasizedChartPoint.getter();
    v218(v225, v298);
    v226 = type metadata accessor for SleepingSampleDataType();
    (*(*(v226 - 8) + 56))(v217, 1, 1, v226);
    if (v299)
    {
      v227 = v211;
    }

    else
    {

      v228 = static os_log_type_t.fault.getter();
      v229 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v228, &_mh_execute_header, v229, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      v230 = v295;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v231 = sub_1000A73A4(v211, 0);
      (*(v296 + 8))(v230, v297, v231);
      v227 = v308;
    }

    v232 = v262;
    dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

    OvernightMetricsViewModel.medialRange.getter();
    v218(v232, v298);
    if (v299)
    {
      v233 = v211;
    }

    else
    {

      v234 = static os_log_type_t.fault.getter();
      v235 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v234, &_mh_execute_header, v235, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      v236 = v295;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v237 = sub_1000A73A4(v211, 0);
      (*(v296 + 8))(v236, v297, v237);
      v233 = v308;
    }

    v238 = v265;
    dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

    OvernightMetricsViewModel.visibleDataTypes.getter();
    v218(v238, v298);
    if (v299)
    {
      v239 = v211;
    }

    else
    {

      v240 = static os_log_type_t.fault.getter();
      v241 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v240, &_mh_execute_header, v241, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      v242 = v295;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v243 = sub_1000A73A4(v211, 0);
      (*(v296 + 8))(v242, v297, v243);
      v239 = v308;
    }

    v244 = v266;
    dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

    OvernightMetricsViewModel.keyDatesForTimeAxis.getter();
    v218(v244, v298);
    v245 = v268;
    OvernightMetricsChart.init(timeScope:chartPoints:emphasizedChartPoint:emphasizedDataType:medialRange:visibleDataTypes:keyDates:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v246 = (v245 + *(v273 + 36));
    v247 = v309;
    *v246 = v308;
    v246[1] = v247;
    v246[2] = v310;
    sub_10001B104(v245, v272, &qword_1008E90E8, &qword_1006E9BE8);
    swift_storeEnumTagMultiPayload();
    sub_100335AC4();
    v248 = v274;
    _ConditionalContent<>.init(storage:)();
    sub_10001B104(v248, v281, &qword_1008E90F8, &qword_1006E9BF8);
    swift_storeEnumTagMultiPayload();
    sub_100140278(&qword_1008E36D0, &qword_1006F5920);
    sub_100335B80();
    sub_100335BFC();
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v248, &qword_1008E90F8, &qword_1006E9BF8);
    v208 = v245;
    v209 = &qword_1008E90E8;
    v210 = &qword_1006E9BE8;
  }

  sub_10000EA04(v208, v209, v210);
LABEL_40:
  v249 = v279;
  sub_10001B104(v118, v279, &qword_1008E9120, &qword_1006E9C20);
  v250 = v284;
  sub_10001B104(v130, v284, &qword_1008E9108, &qword_1006E9C08);
  v251 = v285;
  sub_10001B104(v249, v285, &qword_1008E9120, &qword_1006E9C20);
  v252 = sub_100140278(&qword_1008E9158, &qword_1006E9C30);
  v253 = v251 + *(v252 + 48);
  *v253 = 0;
  *(v253 + 8) = 1;
  sub_10001B104(v250, v251 + *(v252 + 64), &qword_1008E9108, &qword_1006E9C08);
  sub_10000EA04(v130, &qword_1008E9108, &qword_1006E9C08);
  sub_10000EA04(v118, &qword_1008E9120, &qword_1006E9C20);
  sub_10000EA04(v250, &qword_1008E9108, &qword_1006E9C08);
  return sub_10000EA04(v249, &qword_1008E9120, &qword_1006E9C20);
}

uint64_t sub_100334180@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v124 = a3;
  v120 = sub_100140278(&qword_1008E9168, &qword_1006E9C70);
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = &v98 - v5;
  v6 = sub_100140278(&qword_1008E9170, &qword_1006E9C78);
  v122 = *(v6 - 8);
  v123 = v6;
  __chkstk_darwin(v6);
  v121 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v119 = &v98 - v9;
  v110 = type metadata accessor for AccessibilityTraits();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100140278(&qword_1008DC448, &qword_1006D48C0);
  __chkstk_darwin(v11 - 8);
  v126 = &v98 - v12;
  v106 = type metadata accessor for Font.Leading();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EnvironmentValues();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OvernightMetricsViewModel();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v111 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v98 - v23;
  v25 = sub_100140278(&qword_1008DC498, &qword_1006E6C70);
  __chkstk_darwin(v25 - 8);
  v116 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v125 = &v98 - v28;
  LODWORD(v114) = a2;
  v115 = a1;
  v100 = v15;
  v99 = v16;
  v98 = v18;
  if (a2)
  {
    v29 = a1;
  }

  else
  {

    v30 = static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v31, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v32 = sub_1000A73A4(a1, 0);
    (*(v16 + 8))(v18, v15, v32);
    v29 = v127;
  }

  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

  v33 = OvernightMetricsViewModel.localizedTitle.getter();
  v35 = v34;
  v36 = *(v20 + 8);
  v113 = v19;
  v112 = v20 + 8;
  v107 = v36;
  v36(v24, v19);
  *&v127 = v33;
  *(&v127 + 1) = v35;
  sub_10000FCBC();
  v37 = Text.init<A>(_:)();
  v39 = v38;
  v41 = v40;
  v42 = [objc_opt_self() secondaryLabelColor];
  *&v127 = Color.init(_:)();
  v43 = Text.foregroundStyle<A>(_:)();
  v45 = v44;
  v47 = v46;
  sub_10004642C(v37, v39, v41 & 1);

  static Font.subheadline.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v48 = v105;
  v49 = v106;
  (*(v105 + 104))(v14, enum case for Font.Leading.tight(_:), v106);
  Font.leading(_:)();

  (*(v48 + 8))(v14, v49);
  v50 = Text.font(_:)();
  v52 = v51;
  LOBYTE(v48) = v53;

  sub_10004642C(v43, v45, v47 & 1);

  v54 = enum case for Font.Design.rounded(_:);
  v55 = type metadata accessor for Font.Design();
  v56 = *(v55 - 8);
  v57 = *(v56 + 104);
  v58 = v126;
  LODWORD(v105) = v54;
  v104 = v56 + 104;
  v103 = v57;
  v57(v126, v54, v55);
  v59 = *(v56 + 56);
  v106 = v55;
  v102 = v59;
  v101 = v56 + 56;
  v59(v58, 0, 1, v55);
  v60 = Text.fontDesign(_:)();
  v62 = v61;
  LOBYTE(v55) = v63;
  v65 = v64;
  sub_10004642C(v50, v52, v48 & 1);

  sub_10000EA04(v58, &qword_1008DC448, &qword_1006D48C0);
  *&v127 = v60;
  *(&v127 + 1) = v62;
  LOBYTE(v128) = v55 & 1;
  v129 = v65;
  v66 = v108;
  static AccessibilityTraits.isHeader.getter();
  View.accessibilityAddTraits(_:)();
  (*(v109 + 8))(v66, v110);
  sub_10004642C(v60, v62, v55 & 1);

  LOBYTE(v52) = v114;
  v67 = v115;
  sub_100334E30(v115, v114 & 1, &v127);
  v68 = v127;
  v69 = v128;
  v70 = v129;
  v71 = v130;
  if (v52)
  {
    v137 = v67;
    v72 = v67;
  }

  else
  {

    v73 = static os_log_type_t.fault.getter();
    v74 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v74, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v75 = v98;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v76 = sub_1000A73A4(v67, 0);
    (*(v99 + 8))(v75, v100, v76);
    v72 = v137;
  }

  v77 = v111;
  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

  v78 = OvernightMetricsViewModel.primaryTintColor.getter();
  v115 = v78;
  v107(v77, v113);
  v79 = static Font.title2.getter();
  v114 = v79;
  KeyPath = swift_getKeyPath();
  v136 = v71;
  v127 = v68;
  v128 = v69;
  v129 = v70;
  v130 = v71;
  *v131 = *v135;
  *&v131[3] = *&v135[3];
  v132 = v78;
  v133 = KeyPath;
  v134 = v79;
  static Font.Weight.medium.getter();
  v113 = v69;
  v81 = sub_100140278(&qword_1008E9178, &qword_1006E9C80);
  v82 = sub_100335EF4();
  v83 = v117;
  View.fontWeight(_:)();
  sub_10017A8F0(v68, *(&v68 + 1), v113);

  v84 = v126;
  v85 = v106;
  v103(v126, v105, v106);
  v102(v84, 0, 1, v85);
  *&v127 = v81;
  *(&v127 + 1) = v82;
  swift_getOpaqueTypeConformance2();
  v86 = v119;
  v87 = v120;
  View.fontDesign(_:)();
  sub_10000EA04(v84, &qword_1008DC448, &qword_1006D48C0);
  (*(v118 + 8))(v83, v87);
  v88 = v125;
  v89 = v116;
  sub_10001B104(v125, v116, &qword_1008DC498, &qword_1006E6C70);
  v91 = v121;
  v90 = v122;
  v92 = *(v122 + 16);
  v93 = v123;
  v92(v121, v86, v123);
  v94 = v124;
  sub_10001B104(v89, v124, &qword_1008DC498, &qword_1006E6C70);
  v95 = sub_100140278(&qword_1008E91A8, &unk_1006E9CA0);
  v92((v94 + *(v95 + 48)), v91, v93);
  v96 = *(v90 + 8);
  v96(v86, v93);
  sub_10000EA04(v88, &qword_1008DC498, &qword_1006E6C70);
  v96(v91, v93);
  return sub_10000EA04(v89, &qword_1008DC498, &qword_1006E6C70);
}

double sub_100334E30@<D0>(void *a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v58 = a3;
  v6 = type metadata accessor for LocalizationFeature();
  v56 = *(v6 - 8);
  v57 = v6;
  __chkstk_darwin(v6);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OvernightMetricsViewModel();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v54 = a2;
  v52 = v8;
  v53 = v9;
  if (a2)
  {
    v19 = a1;
  }

  else
  {

    v20 = static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v22 = sub_1000A73A4(a1, 0);
    (*(v9 + 8))(v11, v8, v22);
    v19 = v64;
  }

  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

  v23 = OvernightMetricsViewModel.changeCountDescription.getter();
  v25 = v24;
  v26 = *(v13 + 8);
  v26(v18, v12);
  if (v25)
  {
    *&v64 = v23;
    *(&v64 + 1) = v25;
    sub_10000FCBC();
    v59 = Text.init<A>(_:)();
    v60 = v27;
    v61 = v28 & 1;
    v62 = v29;
    v63 = 0;
  }

  else
  {
    if (v54)
    {
      v30 = a1;
    }

    else
    {

      v31 = static os_log_type_t.fault.getter();
      v32 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v33 = sub_1000A73A4(a1, 0);
      (*(v53 + 8))(v11, v52, v33);
      v30 = v64;
    }

    dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

    v34 = OvernightMetricsViewModel.changeDetectedCountToday.getter();
    v36 = v35;
    v26(v15, v12);
    if (v36)
    {
      v37 = 0;
    }

    else
    {
      v37 = v34;
    }

    v39 = v55;
    v38 = v56;
    v40 = v57;
    (*(v56 + 104))(v55, enum case for LocalizationFeature.workout(_:), v57);
    static Localization.workoutUILocalizedString(_:feature:)();
    (*(v38 + 8))(v39, v40);
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1006D46C0;
    *(v41 + 56) = &type metadata for Int;
    *(v41 + 64) = &protocol witness table for Int;
    *(v41 + 32) = v37;
    v42 = static String.localizedStringWithFormat(_:_:)();
    v44 = v43;

    *&v64 = v42;
    *(&v64 + 1) = v44;
    sub_10000FCBC();
    v59 = Text.init<A>(_:)();
    v60 = v46;
    v61 = v45 & 1;
    v62 = v47;
    v63 = 1;
  }

  _ConditionalContent<>.init(storage:)();
  result = *&v64;
  v49 = v65;
  v50 = v66;
  v51 = v58;
  *v58 = v64;
  v51[1] = v49;
  *(v51 + 32) = v50;
  return result;
}

void *sub_100335370@<X0>(void *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v50 = a3;
  v6 = type metadata accessor for OvernightMetricsViewModel.Summary.Variant();
  v48 = *(v6 - 8);
  v49 = v6;
  __chkstk_darwin(v6);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for OvernightMetricsViewModel.Summary();
  v8 = *(v46 - 8);
  __chkstk_darwin(v46);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for OvernightMetricsViewModel();
  v15 = *(v51 - 8);
  __chkstk_darwin(v51);
  v44 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v42 - v18;
  v45 = a2;
  v42 = v12;
  v43 = v11;
  if (a2)
  {
    v20 = a1;
    v21 = a1;
  }

  else
  {

    v22 = static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v20 = a1;
    v24 = sub_1000A73A4(a1, 0);
    (*(v12 + 8))(v14, v11, v24);
    v21 = v55;
  }

  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

  OvernightMetricsViewModel.summary.getter();
  v25 = *(v15 + 8);
  v25(v19, v51);
  v26 = v47;
  OvernightMetricsViewModel.Summary.variant.getter();
  (*(v8 + 8))(v10, v46);
  v28 = v48;
  v27 = v49;
  v29 = (*(v48 + 88))(v26, v49);
  if (v29 == enum case for OvernightMetricsViewModel.Summary.Variant.allMetricsInRange(_:) || v29 == enum case for OvernightMetricsViewModel.Summary.Variant.someMetricsOutOfRange(_:))
  {
    if (v45)
    {
      v35 = v20;
    }

    else
    {

      v36 = static os_log_type_t.fault.getter();
      v37 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v37, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v38 = sub_1000A73A4(v20, 0);
      (*(v42 + 8))(v14, v43, v38);
      v35 = v55;
    }

    v39 = v44;
    dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

    v40 = OvernightMetricsViewModel.primaryTintColor.getter();
    v25(v39, v51);
    v52 = v40;
    v53 = 0;
    v54 = 0;
    sub_100140278(&qword_1008E90C8, &unk_1006E9BD0);
    sub_10033598C();
    sub_10014A6B0(&qword_1008E90D8, &qword_1008E90C8, &unk_1006E9BD0, &protocol conformance descriptor for _ShapeView<A, B>);
    result = _ConditionalContent<>.init(storage:)();
    v31 = v55;
    v32 = v56;
    v33 = v57;
  }

  else
  {
    v30 = [objc_opt_self() secondarySystemBackgroundColor];
    v52 = Color.init(_:)();
    v53 = 256;
    v54 = 1;
    sub_100140278(&qword_1008E90C8, &unk_1006E9BD0);
    sub_10033598C();
    sub_10014A6B0(&qword_1008E90D8, &qword_1008E90C8, &unk_1006E9BD0, &protocol conformance descriptor for _ShapeView<A, B>);
    _ConditionalContent<>.init(storage:)();
    v31 = v55;
    v32 = v56;
    v33 = v57;
    result = (*(v28 + 8))(v26, v27);
  }

  v41 = v50;
  *v50 = v31;
  *(v41 + 4) = v32;
  *(v41 + 10) = v33;
  return result;
}

unint64_t sub_10033598C()
{
  result = qword_1008E90D0;
  if (!qword_1008E90D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E90D0);
  }

  return result;
}

unint64_t sub_1003359E0()
{
  result = qword_1008E9128;
  if (!qword_1008E9128)
  {
    sub_100141EEC(&qword_1008E9110, &qword_1006E9C10);
    sub_10014A6B0(&qword_1008E9130, &qword_1008E9138, &qword_1006E9C28, &protocol conformance descriptor for VStack<A>);
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0, &qword_1006DC0F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9128);
  }

  return result;
}

unint64_t sub_100335AC4()
{
  result = qword_1008E9140;
  if (!qword_1008E9140)
  {
    sub_100141EEC(&qword_1008E90E8, &qword_1006E9BE8);
    sub_1003360E8(&qword_1008E9148, &type metadata accessor for OvernightMetricsChart, &protocol conformance descriptor for OvernightMetricsChart);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9140);
  }

  return result;
}

unint64_t sub_100335B80()
{
  result = qword_1008E36C8;
  if (!qword_1008E36C8)
  {
    sub_100141EEC(&qword_1008E36D0, &qword_1006F5920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E36C8);
  }

  return result;
}

unint64_t sub_100335BFC()
{
  result = qword_1008E9150;
  if (!qword_1008E9150)
  {
    sub_100141EEC(&qword_1008E90F8, &qword_1006E9BF8);
    sub_100335AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9150);
  }

  return result;
}

__n128 sub_100335C88@<Q0>(uint64_t a1@<X8>)
{
  sub_100140278(&qword_1008E8920, qword_1006E90E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D1F70;
  v3 = objc_opt_self();
  v4 = [v3 secondarySystemBackgroundColor];
  Color.init(_:)();
  v5 = Color.opacity(_:)();

  *(v2 + 32) = v5;
  v6 = [v3 secondarySystemBackgroundColor];
  Color.init(_:)();
  v7 = Color.opacity(_:)();

  *(v2 + 40) = v7;
  static UnitPoint.bottom.getter();
  static UnitPoint.top.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v8 = v23;
  sub_100140278(&qword_1008DF1F0, &qword_1006D8FA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006D64F0;
  Color.opacity(_:)();
  *(v9 + 32) = Gradient.Stop.init(color:location:)();
  *(v9 + 40) = v10;
  Color.opacity(_:)();
  *(v9 + 48) = Gradient.Stop.init(color:location:)();
  *(v9 + 56) = v11;
  Color.opacity(_:)();
  *(v9 + 64) = Gradient.Stop.init(color:location:)();
  *(v9 + 72) = v12;
  static UnitPoint.bottom.getter();
  static UnitPoint.top.getter();
  Gradient.init(stops:)();
  v20 = v25;
  v21 = v24;
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v13 = v26;
  v14 = static Alignment.center.getter();
  v16 = v15;
  v18 = v28;
  v19 = v27;
  sub_100336358(&v23, v22);
  sub_100336358(&v26, v22);
  sub_1003363B4(&v23);
  sub_1003363B4(&v26);
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v8;
  *(a1 + 40) = v20;
  *(a1 + 24) = v21;
  *(a1 + 56) = v13;
  result = v19;
  *(a1 + 64) = v19;
  *(a1 + 80) = v18;
  return result;
}

unint64_t sub_100335EF4()
{
  result = qword_1008E9180;
  if (!qword_1008E9180)
  {
    sub_100141EEC(&qword_1008E9178, &qword_1006E9C80);
    sub_100335FAC();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0, &qword_1006DC0F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9180);
  }

  return result;
}

unint64_t sub_100335FAC()
{
  result = qword_1008E9188;
  if (!qword_1008E9188)
  {
    sub_100141EEC(&qword_1008E9190, &qword_1006E9C88);
    sub_100336064();
    sub_10014A6B0(&qword_1008E0740, &qword_1008E0748, &unk_1006DC070, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9188);
  }

  return result;
}

unint64_t sub_100336064()
{
  result = qword_1008E9198;
  if (!qword_1008E9198)
  {
    sub_100141EEC(&qword_1008E91A0, &unk_1006E9C90);
    sub_100335B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9198);
  }

  return result;
}

uint64_t sub_1003360E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100336140()
{
  result = qword_1008E91B8;
  if (!qword_1008E91B8)
  {
    sub_100141EEC(&qword_1008E90C0, &qword_1006E9BC8);
    sub_1003361F8();
    sub_10014A6B0(&qword_1008E91D8, &qword_1008E91E0, "^O\v", &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E91B8);
  }

  return result;
}

unint64_t sub_1003361F8()
{
  result = qword_1008E91C0;
  if (!qword_1008E91C0)
  {
    sub_100141EEC(&qword_1008E90B0, &qword_1006E9BB8);
    sub_100336284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E91C0);
  }

  return result;
}

unint64_t sub_100336284()
{
  result = qword_1008E91C8;
  if (!qword_1008E91C8)
  {
    sub_100141EEC(&qword_1008E90A8, &qword_1006E9BB0);
    sub_10014A6B0(&qword_1008E91D0, &qword_1008E90A0, &qword_1006E9BA8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E91C8);
  }

  return result;
}

char *sub_100336430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v6 = OBJC_IVAR___CHStackListTableViewCell_fitnessPlusStackViewModel;
  v7 = type metadata accessor for FitnessPlusStackViewModel(0);
  (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  v8 = OBJC_IVAR___CHStackListTableViewCell_insetContentView;
  v9 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v8] = v9;
  v10 = OBJC_IVAR___CHStackListTableViewCell_iconImageView;
  v11 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = UIView.withContentMode(_:)();

  v13 = [v12 layer];
  [v13 setCornerRadius:3.0];

  [v12 setClipsToBounds:1];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v10] = v12;
  v14 = OBJC_IVAR___CHStackListTableViewCell_labelStackView;
  v15 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v15 setAxis:1];
  [v15 setDistribution:3];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v14] = v15;
  v16 = OBJC_IVAR___CHStackListTableViewCell_titleLabel;
  v17 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  LODWORD(v18) = 1148846080;
  [v17 setContentCompressionResistancePriority:1 forAxis:v18];
  if (qword_1008DA928 != -1)
  {
    swift_once();
  }

  v19 = UILabel.withFont(_:)();

  [v19 setLineBreakMode:0];
  [v19 setNumberOfLines:0];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v16] = v19;
  v20 = OBJC_IVAR___CHStackListTableViewCell_subtitleLabel;
  v21 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v20] = v21;
  v22 = OBJC_IVAR___CHStackListTableViewCell_dateLabel;
  v23 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1008DA930 != -1)
  {
    swift_once();
  }

  v24 = UILabel.withFont(_:)();

  v25 = [objc_opt_self() secondaryLabelColor];
  v26 = UILabel.withTextColor(_:)();

  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v22] = v26;
  if (a3)
  {
    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    v27 = 0;
  }

  v39.receiver = v4;
  v39.super_class = type metadata accessor for StackListTableViewCell(0);
  v28 = objc_msgSendSuper2(&v39, "initWithStyle:reuseIdentifier:", a1, v27);

  v29 = OBJC_IVAR___CHStackListTableViewCell_insetContentView;
  v30 = *&v28[OBJC_IVAR___CHStackListTableViewCell_insetContentView];
  v31 = v28;
  v32 = v30;
  v33 = sub_1004313A0();
  [v32 setBackgroundColor:v33];

  v34 = [*&v28[v29] layer];
  [v34 setCornerRadius:sub_10013A8DC(v34)];

  [*&v28[v29] addSubview:*&v31[OBJC_IVAR___CHStackListTableViewCell_iconImageView]];
  v35 = OBJC_IVAR___CHStackListTableViewCell_labelStackView;
  [*&v31[OBJC_IVAR___CHStackListTableViewCell_labelStackView] addArrangedSubview:*&v31[OBJC_IVAR___CHStackListTableViewCell_titleLabel]];
  [*&v31[v35] addArrangedSubview:*&v31[OBJC_IVAR___CHStackListTableViewCell_subtitleLabel]];
  [*&v28[v29] addSubview:*&v31[v35]];
  [*&v28[v29] addSubview:*&v31[OBJC_IVAR___CHStackListTableViewCell_dateLabel]];
  v36 = [v31 contentView];

  [v36 addSubview:*&v28[v29]];
  sub_1003369C0();

  return v31;
}

void sub_1003369C0()
{
  v1 = v0;
  swift_getObjectType();
  v58 = objc_opt_self();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006E1300;
  v3 = *&v0[OBJC_IVAR___CHStackListTableViewCell_insetContentView];
  v4 = [v3 topAnchor];
  v5 = [v0 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:sub_1004313D0()];
  *(v2 + 32) = v7;
  v8 = [v3 leadingAnchor];
  v9 = [v0 contentView];
  v10 = [v9 leadingAnchor];

  sub_1004313D0();
  v12 = [v8 constraintEqualToAnchor:v10 constant:v11];

  *(v2 + 40) = v12;
  v13 = [v3 trailingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 trailingAnchor];

  sub_1004313D0();
  v17 = [v13 constraintEqualToAnchor:v15 constant:-v16];

  *(v2 + 48) = v17;
  v18 = [v3 bottomAnchor];
  v19 = [v0 contentView];
  v20 = [v19 bottomAnchor];

  sub_1004313D0();
  v22 = [v18 constraintEqualToAnchor:v20 constant:-v21];

  *(v2 + 56) = v22;
  v23 = *&v1[OBJC_IVAR___CHStackListTableViewCell_iconImageView];
  v24 = [v23 leadingAnchor];
  v25 = [v3 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:16.0];

  *(v2 + 64) = v26;
  v27 = [v23 centerYAnchor];
  v28 = *&v1[OBJC_IVAR___CHStackListTableViewCell_labelStackView];
  v29 = [v28 centerYAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];

  *(v2 + 72) = v30;
  v31 = [v23 widthAnchor];
  v32 = [v31 constraintEqualToConstant:50.0];

  *(v2 + 80) = v32;
  v33 = [v23 heightAnchor];
  v34 = [v33 constraintEqualToConstant:50.0];

  *(v2 + 88) = v34;
  v35 = [v28 topAnchor];
  v36 = [v3 topAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:12.0];

  *(v2 + 96) = v37;
  v38 = [v28 leadingAnchor];
  v39 = [v23 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:9.0];

  *(v2 + 104) = v40;
  v41 = [v28 trailingAnchor];
  v42 = [v3 trailingAnchor];
  v43 = [v41 constraintLessThanOrEqualToAnchor:v42 constant:-16.0];

  *(v2 + 112) = v43;
  v44 = [v28 bottomAnchor];
  v45 = [v3 bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:-12.0];

  *(v2 + 120) = v46;
  v47 = *&v1[OBJC_IVAR___CHStackListTableViewCell_subtitleLabel];
  v48 = [v47 topAnchor];
  v49 = [*&v1[OBJC_IVAR___CHStackListTableViewCell_titleLabel] bottomAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v2 + 128) = v50;
  v51 = *&v1[OBJC_IVAR___CHStackListTableViewCell_dateLabel];
  v52 = [v51 trailingAnchor];
  v53 = [v3 trailingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:-16.0];

  *(v2 + 136) = v54;
  v55 = [v51 lastBaselineAnchor];
  v56 = [v47 lastBaselineAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  *(v2 + 144) = v57;
  sub_1000059F8(0, &qword_1008DC980, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v58 activateConstraints:isa];
}

void sub_100337110(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = objc_opt_self(), v4 = swift_allocObject(), *(v4 + 16) = v2, v5 = swift_allocObject(), *(v5 + 16) = sub_1003388FC, *(v5 + 24) = v4, aBlock[4] = sub_10007BD60, aBlock[5] = v5, aBlock[0] = _NSConcreteStackBlock, aBlock[1] = 1107296256, aBlock[2] = sub_1003579C0, aBlock[3] = &unk_100853740, v6 = _Block_copy(aBlock), v7 = v2, , , [v3 performWithoutAnimation:v6], _Block_release(v6), LOBYTE(v3) = swift_isEscapingClosureAtFileLocation(), v7, , , (v3 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      [v8 setNeedsLayout];
    }

    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      [v10 layoutIfNeeded];
    }
  }
}

void sub_100337310(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v68 = a6;
  v67 = a5;
  v63[0] = a4;
  v69 = a1;
  v8 = type metadata accessor for FitnessPlusStackViewModel(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v64 = v10;
  v70 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100140278(&qword_1008E9278, "RO\v");
  __chkstk_darwin(v11);
  v13 = v63 - v12;
  v14 = sub_100140278(&qword_1008E0BC0, &qword_1006DC7C0);
  __chkstk_darwin(v14 - 8);
  v16 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v63 - v18;
  __chkstk_darwin(v20);
  v22 = v63 - v21;
  swift_beginAccess();
  v63[1] = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v25 = OBJC_IVAR___CHStackListTableViewCell_fitnessPlusStackViewModel;
    swift_beginAccess();
    sub_100306D50(v24 + v25, v22);
  }

  else
  {
    (*(v9 + 56))(v22, 1, 1, v8);
  }

  v66 = a3;
  sub_1001AB4EC(a3, v19);
  (*(v9 + 56))(v19, 0, 1, v8);
  v26 = *(v11 + 48);
  sub_100306D50(v22, v13);
  sub_100306D50(v19, &v13[v26]);
  v65 = v9;
  v27 = *(v9 + 48);
  if (v27(v13, 1, v8) != 1)
  {
    sub_100306D50(v13, v16);
    if (v27(&v13[v26], 1, v8) != 1)
    {
      v28 = v70;
      sub_100306E28(&v13[v26], v70);
      v29 = static UUID.== infix(_:_:)();
      sub_1001AB550(v28);
      sub_10000EA04(v19, &qword_1008E0BC0, &qword_1006DC7C0);
      sub_10000EA04(v22, &qword_1008E0BC0, &qword_1006DC7C0);
      sub_1001AB550(v16);
      sub_10000EA04(v13, &qword_1008E0BC0, &qword_1006DC7C0);
      if ((v29 & 1) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    sub_10000EA04(v19, &qword_1008E0BC0, &qword_1006DC7C0);
    sub_10000EA04(v22, &qword_1008E0BC0, &qword_1006DC7C0);
    sub_1001AB550(v16);
LABEL_9:
    sub_10000EA04(v13, &qword_1008E9278, "RO\v");
    return;
  }

  sub_10000EA04(v19, &qword_1008E0BC0, &qword_1006DC7C0);
  sub_10000EA04(v22, &qword_1008E0BC0, &qword_1006DC7C0);
  if (v27(&v13[v26], 1, v8) != 1)
  {
    goto LABEL_9;
  }

  sub_10000EA04(v13, &qword_1008E0BC0, &qword_1006DC7C0);
LABEL_11:
  v30 = v69;
  if (v69)
  {
    v31 = *&v69[OBJC_IVAR___CHCatalogItemViewModel_title];
    v32 = objc_allocWithZone(NSMutableAttributedString);
    v33 = v30;
    v34 = [v32 initWithAttributedString:{v31, v63[0]}];
    v35 = [v34 length];
    sub_100140278(&unk_1008E7FB0, &unk_1006D6940);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006D1F70;
    *(inited + 32) = NSForegroundColorAttributeName;
    v37 = objc_opt_self();
    v38 = NSForegroundColorAttributeName;
    v39 = [v37 whiteColor];
    v40 = sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
    *(inited + 40) = v39;
    *(inited + 64) = v40;
    *(inited + 72) = NSFontAttributeName;
    v41 = qword_1008DA928;
    v42 = NSFontAttributeName;
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = qword_1008E91F8;
    *(inited + 104) = sub_1000059F8(0, &qword_1008F73C0, UIFont_ptr);
    *(inited + 80) = v43;
    v44 = v43;
    sub_1004C9200(inited);
    swift_setDeallocating();
    sub_100140278(&unk_1008EE730, &unk_1006D8460);
    swift_arrayDestroy();
    type metadata accessor for Key(0);
    sub_10017597C();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v34 addAttributes:isa range:{0, v35}];

    swift_beginAccess();
    v46 = swift_unknownObjectWeakLoadStrong();
    v47 = v66;
    if (v46)
    {
      v48 = v46;
      v49 = *(v46 + OBJC_IVAR___CHStackListTableViewCell_titleLabel);

      [v49 setAttributedText:v34];
    }

    v50 = swift_allocObject();
    swift_beginAccess();
    v51 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v52 = v70;
    sub_1001AB4EC(v47, v70);
    v53 = (*(v65 + 80) + 24) & ~*(v65 + 80);
    v54 = (v64 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    *(v55 + 16) = v50;
    sub_100306E28(v52, v55 + v53);
    v56 = (v55 + v54);
    v57 = v67;
    v58 = v68;
    *v56 = v67;
    v56[1] = v58;

    sub_10000B210(v57, v58);
    sub_100419358(v33, sub_100338858, v55, 50.0, 50.0);
  }

  else
  {
    v59 = static os_log_type_t.error.getter();
    v60 = HKLogActivity;
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1006D46C0;
    *(v61 + 56) = &type metadata for String;
    *(v61 + 64) = sub_10000A788();
    *(v61 + 32) = 0xD000000000000043;
    *(v61 + 40) = 0x8000000100754E50;
    v62 = v60;
    os_log(_:dso:log:_:_:)(v59, &_mh_execute_header, v62, "%@ failed to fetch catalog item view model for stack", 52, 2, v61, v63[0]);
  }
}

void sub_100337B90(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v35 = a5;
  v36 = a4;
  v34 = a1;
  v7 = type metadata accessor for FitnessPlusStackViewModel(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v33[0] = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&qword_1008E9278, "RO\v");
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  v13 = sub_100140278(&qword_1008E0BC0, &qword_1006DC7C0);
  __chkstk_darwin(v13 - 8);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v33 - v17;
  __chkstk_darwin(v19);
  v21 = v33 - v20;
  swift_beginAccess();
  v33[1] = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = OBJC_IVAR___CHStackListTableViewCell_fitnessPlusStackViewModel;
    swift_beginAccess();
    sub_100306D50(v23 + v24, v21);
  }

  else
  {
    (*(v8 + 56))(v21, 1, 1, v7);
  }

  sub_1001AB4EC(a3, v18);
  (*(v8 + 56))(v18, 0, 1, v7);
  v25 = *(v10 + 48);
  sub_100306D50(v21, v12);
  sub_100306D50(v18, &v12[v25]);
  v26 = *(v8 + 48);
  if (v26(v12, 1, v7) == 1)
  {
    sub_10000EA04(v18, &qword_1008E0BC0, &qword_1006DC7C0);
    sub_10000EA04(v21, &qword_1008E0BC0, &qword_1006DC7C0);
    if (v26(&v12[v25], 1, v7) == 1)
    {
      v27 = sub_10000EA04(v12, &qword_1008E0BC0, &qword_1006DC7C0);
      v28 = v34;
      if (!v34)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

LABEL_10:
    v27 = sub_10000EA04(v12, &qword_1008E9278, "RO\v");
    goto LABEL_15;
  }

  sub_100306D50(v12, v15);
  if (v26(&v12[v25], 1, v7) == 1)
  {
    sub_10000EA04(v18, &qword_1008E0BC0, &qword_1006DC7C0);
    sub_10000EA04(v21, &qword_1008E0BC0, &qword_1006DC7C0);
    sub_1001AB550(v15);
    goto LABEL_10;
  }

  v29 = v33[0];
  sub_100306E28(&v12[v25], v33[0]);
  v30 = static UUID.== infix(_:_:)();
  sub_1001AB550(v29);
  sub_10000EA04(v18, &qword_1008E0BC0, &qword_1006DC7C0);
  sub_10000EA04(v21, &qword_1008E0BC0, &qword_1006DC7C0);
  sub_1001AB550(v15);
  v27 = sub_10000EA04(v12, &qword_1008E0BC0, &qword_1006DC7C0);
  v28 = v34;
  if ((v30 & 1) == 0 || !v34)
  {
    goto LABEL_15;
  }

LABEL_13:
  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v31 = v27;
    v32 = *(v27 + OBJC_IVAR___CHStackListTableViewCell_iconImageView);

    [v32 setImage:v28];
  }

LABEL_15:
  if (v36)
  {
    v36(v27);
  }
}

id sub_10033816C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StackListTableViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StackListTableViewCell(uint64_t a1)
{
  result = qword_1008E9268;
  if (!qword_1008E9268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003382A4(uint64_t a1)
{
  sub_100306CEC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10033834C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a3;
  v45 = a4;
  v43 = a2;
  v7 = type metadata accessor for FitnessPlusStackViewModel(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100140278(&qword_1008E0BC0, &qword_1006DC7C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v41 - v12;
  sub_1001AB4EC(a1, &v41 - v12);
  (*(v8 + 56))(v13, 0, 1, v7);
  v14 = OBJC_IVAR___CHStackListTableViewCell_fitnessPlusStackViewModel;
  swift_beginAccess();
  sub_10029FD5C(v13, v5 + v14);
  swift_endAccess();
  v15 = *(v5 + OBJC_IVAR___CHStackListTableViewCell_titleLabel);
  v16 = sub_100409AF0();
  [v15 setAttributedText:v16];

  v17 = *(v5 + OBJC_IVAR___CHStackListTableViewCell_subtitleLabel);
  sub_100409544(a1);
  v19 = v18;
  [v17 setAttributedText:v18];

  v20 = String._bridgeToObjectiveC()();
  v21 = [objc_opt_self() smm_systemImageNamed:v20];

  if (v21)
  {
    [*(v5 + OBJC_IVAR___CHStackListTableViewCell_iconImageView) setImage:v21];
  }

  v22 = objc_opt_self();
  v23.super.isa = Date._bridgeToObjectiveC()().super.isa;
  if (qword_1008DAAD8 != -1)
  {
    swift_once();
  }

  v24 = [v22 formattedListStringForDate:v23.super.isa font:qword_1008ECA68];
  v42 = v24;

  v25 = objc_allocWithZone(NSAttributedString);
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 initWithString:v26];
  v41 = v27;

  v28 = [objc_allocWithZone(NSMutableAttributedString) init];
  [v28 appendAttributedString:v24];
  [v28 appendAttributedString:v27];
  [*(v5 + OBJC_IVAR___CHStackListTableViewCell_dateLabel) setAttributedText:v28];
  v29 = v43;
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1001AB4EC(a1, &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v8 + 80);
  v32 = a1;
  v33 = v29;
  v34 = (v31 + 24) & ~v31;
  v35 = (v9 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v30;
  sub_100306E28(v10, v36 + v34);
  *(v36 + v35) = v33;
  v37 = (v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8));
  v39 = v44;
  v38 = v45;
  *v37 = v44;
  v37[1] = v38;

  v40 = v33;
  sub_10000B210(v39, v38);
  sub_100417014(v32, sub_1003387A8, v36);
}

void sub_1003387A8(char *a1)
{
  v3 = *(type metadata accessor for FitnessPlusStackViewModel(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + v5);
  v8 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  sub_100337310(a1, v6, v1 + v4, v7, v9, v10);
}

void sub_100338858(uint64_t a1)
{
  v3 = *(type metadata accessor for FitnessPlusStackViewModel(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  sub_100337B90(a1, v5, v1 + v4, v7, v8);
}

void sub_10033890C()
{
  v1 = v0;
  v2 = OBJC_IVAR___CHStackListTableViewCell_fitnessPlusStackViewModel;
  v3 = type metadata accessor for FitnessPlusStackViewModel(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR___CHStackListTableViewCell_insetContentView;
  v5 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v4) = v5;
  v6 = OBJC_IVAR___CHStackListTableViewCell_iconImageView;
  v7 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = UIView.withContentMode(_:)();

  v9 = [v8 layer];
  [v9 setCornerRadius:3.0];

  [v8 setClipsToBounds:1];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v6) = v8;
  v10 = OBJC_IVAR___CHStackListTableViewCell_labelStackView;
  v11 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v11 setAxis:1];
  [v11 setDistribution:3];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v10) = v11;
  v12 = OBJC_IVAR___CHStackListTableViewCell_titleLabel;
  v13 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  LODWORD(v14) = 1148846080;
  [v13 setContentCompressionResistancePriority:1 forAxis:v14];
  if (qword_1008DA928 != -1)
  {
    swift_once();
  }

  v15 = UILabel.withFont(_:)();

  [v15 setLineBreakMode:0];
  [v15 setNumberOfLines:0];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v12) = v15;
  v16 = OBJC_IVAR___CHStackListTableViewCell_subtitleLabel;
  v17 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v16) = v17;
  v18 = OBJC_IVAR___CHStackListTableViewCell_dateLabel;
  v19 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1008DA930 != -1)
  {
    swift_once();
  }

  v20 = UILabel.withFont(_:)();

  v21 = [objc_opt_self() secondaryLabelColor];
  v22 = UILabel.withTextColor(_:)();

  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v18) = v22;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100338D14(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [*(v2 + *a2) heightAnchor];
    v7 = [v6 constraintEqualToConstant:177.0];

    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

char *sub_100338DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_leftAchievement] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_middleAchievement] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_rightAchievement] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_activeEnergyUnit] = 0;
  v4[OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_isWheelchairUser] = 2;
  v8 = OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_insetContentView;
  v9 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v8] = v9;
  v10 = OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_leftCellContentView;
  v11 = [objc_allocWithZone(CHAchievementsCellContentView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v10] = v11;
  v12 = OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_middleCellContentView;
  v13 = [objc_allocWithZone(CHAchievementsCellContentView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v12] = v13;
  v14 = OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_rightCellContentView;
  v15 = [objc_allocWithZone(CHAchievementsCellContentView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v14] = v15;
  *&v4[OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile____lazy_storage___insetContentViewHeightAnchor] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile____lazy_storage___leftCellContentViewHeightAnchor] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile____lazy_storage___middleCellContentViewHeightAnchor] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile____lazy_storage___rightCellContentViewHeightAnchor] = 0;
  v16 = &v4[OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_onDidTapAchievement];
  *v16 = 0;
  v16[1] = 0;
  if (a3)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  v28.receiver = v4;
  v28.super_class = type metadata accessor for AwardsActivityTile();
  v18 = objc_msgSendSuper2(&v28, "initWithStyle:reuseIdentifier:", a1, v17);

  v19 = OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_insetContentView;
  v20 = *&v18[OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_insetContentView];
  v21 = v18;
  v22 = v20;
  v23 = sub_1004313A0();
  [v22 setBackgroundColor:v23];

  v24 = [*&v18[v19] layer];
  [v24 setCornerRadius:sub_1004313CC(ObjectType)];

  [*&v18[v19] addSubview:*&v21[OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_leftCellContentView]];
  [*&v18[v19] addSubview:*&v21[OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_middleCellContentView]];
  [*&v18[v19] addSubview:*&v21[OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_rightCellContentView]];
  v25 = [v21 contentView];
  [v25 addSubview:*&v18[v19]];

  v26 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v21 action:"didTapAchievementWithTapGestureRecognizer:"];
  [*&v18[v19] addGestureRecognizer:v26];
  sub_100339194();

  return v21;
}

void sub_100339194()
{
  v1 = v0;
  swift_getObjectType();
  v53 = objc_opt_self();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006E9D90;
  v3 = *&v0[OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_insetContentView];
  v4 = [v3 topAnchor];
  v5 = [v0 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:sub_1004313D0()];
  *(v2 + 32) = v7;
  v8 = [v3 leadingAnchor];
  v9 = [v0 contentView];
  v10 = [v9 leadingAnchor];

  sub_1004313D0();
  v12 = [v8 constraintEqualToAnchor:v10 constant:v11];

  *(v2 + 40) = v12;
  v13 = [v3 trailingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 trailingAnchor];

  sub_1004313D0();
  v17 = [v13 constraintEqualToAnchor:v15 constant:-v16];

  *(v2 + 48) = v17;
  v18 = [v3 bottomAnchor];
  v19 = [v0 contentView];
  v20 = [v19 bottomAnchor];

  sub_1004313D0();
  v22 = [v18 constraintEqualToAnchor:v20 constant:-v21];

  *(v2 + 56) = v22;
  *(v2 + 64) = sub_100338CC4();
  v23 = *&v1[OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_leftCellContentView];
  v24 = [v23 topAnchor];
  v25 = [v3 topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:10.0];

  *(v2 + 72) = v26;
  v27 = [v23 leadingAnchor];
  v28 = [v3 leadingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:10.0];

  *(v2 + 80) = v29;
  v30 = [v23 widthAnchor];
  v31 = *&v1[OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_middleCellContentView];
  v32 = [v31 widthAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];

  *(v2 + 88) = v33;
  *(v2 + 96) = sub_100338CD8();
  v34 = [v31 topAnchor];
  v35 = [v3 topAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:10.0];

  *(v2 + 104) = v36;
  v37 = [v31 leadingAnchor];
  v38 = [v23 trailingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:10.0];

  *(v2 + 112) = v39;
  *(v2 + 120) = sub_100338CEC();
  v40 = *&v1[OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_rightCellContentView];
  v41 = [v40 topAnchor];
  v42 = [v3 topAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:10.0];

  *(v2 + 128) = v43;
  v44 = [v40 leadingAnchor];
  v45 = [v31 trailingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:10.0];

  *(v2 + 136) = v46;
  v47 = [v40 widthAnchor];
  v48 = [v31 widthAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v2 + 144) = v49;
  v50 = [v40 trailingAnchor];
  v51 = [v3 trailingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:-10.0];

  *(v2 + 152) = v52;
  *(v2 + 160) = sub_100338D00();
  sub_1000059F8(0, &qword_1008DC980, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v53 activateConstraints:isa];
}

double sub_100339874()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  Width = CGRectGetWidth(v17);
  v11 = [v0 mainScreen];
  [v11 nativeScale];
  v13 = v12;

  sub_1004313D0();
  return (Width / v13 - v14 - v15 + -40.0) / 3.0;
}

void sub_100339968(void *a1, objc_class *a2, void *a3, uint64_t a4, void *a5, int a6)
{
  v7 = v6;
  v106 = a6;
  v101 = a5;
  v102 = a3;
  v104 = a2;
  v105 = a4;
  swift_getObjectType();
  v103 = type metadata accessor for AppEntityVisualState();
  __chkstk_darwin(v103);
  v96 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v10 - 8);
  v95 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_leftAchievement;
  v13 = *(v6 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_leftAchievement);
  if (v13)
  {
    sub_1000059F8(0, &qword_1008E8750, ACHAchievement_ptr);
    v14 = v13;
    v15 = a1;
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      v17 = *(v6 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_middleAchievement);
      if (v17)
      {
        if (!v104)
        {
          goto LABEL_20;
        }

        v18 = v17;
        v19 = v104;
        v20 = static NSObject.== infix(_:_:)();

        if ((v20 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else if (v104)
      {
        goto LABEL_20;
      }

      v21 = *(v6 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_rightAchievement);
      if (v21)
      {
        if (!v102)
        {
          goto LABEL_20;
        }

        v22 = v21;
        v23 = v102;
        v24 = static NSObject.== infix(_:_:)();

        if ((v24 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else if (v102)
      {
        goto LABEL_20;
      }

      v25 = *(v7 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_activeEnergyUnit);
      v26 = v25;
      v27 = [v101 achUnitManager];
      if (v27)
      {
        v28 = [v27 userActiveEnergyBurnedUnit];
        swift_unknownObjectRelease();
        if (v25)
        {
          if (v28)
          {
            sub_1000059F8(0, &qword_1008DEED0, HKUnit_ptr);
            v29 = static NSObject.== infix(_:_:)();

            if ((v29 & 1) == 0)
            {
              goto LABEL_20;
            }

LABEL_41:
            v89 = *(v7 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_isWheelchairUser);
            v90 = [v101 wheelchairUser];
            if (v89 != 2 && ((v90 ^ v89) & 1) == 0)
            {
              return;
            }

            goto LABEL_20;
          }
        }

        else
        {
          v26 = v28;
          if (!v28)
          {
            goto LABEL_41;
          }
        }
      }

      else if (!v25)
      {
        goto LABEL_41;
      }
    }
  }

LABEL_20:
  v30 = *(v7 + v12);
  *(v7 + v12) = a1;
  v31 = a1;

  v32 = *(v7 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_middleAchievement);
  v33 = v104;
  *(v7 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_middleAchievement) = v104;
  v34 = v33;

  v35 = *(v7 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_rightAchievement);
  v36 = v102;
  *(v7 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_rightAchievement) = v102;
  v37 = v36;

  v38 = v101;
  v39 = [v101 achUnitManager];
  v94 = v37;
  v100 = v34;
  if (v39)
  {
    v40 = [v39 userActiveEnergyBurnedUnit];
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0;
  }

  v41 = *(v7 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_activeEnergyUnit);
  *(v7 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_activeEnergyUnit) = v40;

  v42 = [v38 wheelchairUser];
  *(v7 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_isWheelchairUser) = v42;
  v43 = sub_100339874();
  v44 = *(v7 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_leftCellContentView);
  [v44 setPreferredWidth:?];
  v99 = *(v7 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_middleCellContentView);
  [v99 setPreferredWidth:v43];
  v91[2] = v7;
  v93 = *(v7 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_rightCellContentView);
  [v93 setPreferredWidth:v43];
  [v44 configureWithAchievement:v31 badgeImageFactory:v105 locProvider:v38 shouldShowProgressBar:0 formatForFriend:v106 & 1];
  v91[1] = sub_100140278(&unk_1008F8F40, &unk_1006D50D0);
  v45 = v31;
  LocalizedStringResource.init(stringLiteral:)();
  v46 = EntityProperty<>.init(title:)();
  v47 = v45;

  LOBYTE(v107) = [v47 unearned] ^ 1;
  EntityProperty.wrappedValue.setter();

  v107 = _swiftEmptyArrayStorage;
  v48 = v38;
  v49 = sub_10033A70C();
  v50 = sub_100140278(&unk_1008F8F50, &unk_1006E9DF0);
  v97 = sub_10033A764();
  v98 = v49;
  v51 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v107 = v46;
  v108 = v47;
  v92 = v47;
  v52 = type metadata accessor for AppEntityViewAnnotation();
  v53 = objc_allocWithZone(v52);
  v54 = sub_10007151C();
  v55 = AppEntityViewAnnotation.init<A>(entity:state:)();
  UIView.annotate(with:)();

  v56 = v100;
  [v99 configureWithAchievement:v100 badgeImageFactory:v105 locProvider:v48 shouldShowProgressBar:0 formatForFriend:v106 & 1];
  if (v104)
  {
    v57 = v56;
    LocalizedStringResource.init(stringLiteral:)();
    v58 = EntityProperty<>.init(title:)();
    v59 = v57;

    LOBYTE(v107) = [(objc_class *)v59 unearned]^ 1;
    EntityProperty.wrappedValue.setter();

    v107 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v107 = v58;
    v108 = v59;
    v51 = v101;
    v60 = objc_allocWithZone(v52);
    v61 = AppEntityViewAnnotation.init<A>(entity:state:)();
    UIView.annotate(with:)();

    v56 = v100;
  }

  v101 = v54;
  v104 = v52;
  v99 = v50;
  v62 = v94;
  [v93 configureWithAchievement:v94 badgeImageFactory:v105 locProvider:v51 shouldShowProgressBar:0 formatForFriend:v106 & 1];
  if (v102)
  {
    v63 = v62;
    LocalizedStringResource.init(stringLiteral:)();
    v64 = EntityProperty<>.init(title:)();
    v65 = v63;

    LOBYTE(v107) = [v65 unearned] ^ 1;
    EntityProperty.wrappedValue.setter();

    v107 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v107 = v64;
    v108 = v65;
    v66 = objc_allocWithZone(v104);
    v67 = AppEntityViewAnnotation.init<A>(entity:state:)();
    UIView.annotate(with:)();
  }

  v68 = objc_opt_self();
  v69 = v106;
  [v68 cellHeightForAchievement:v92 preferredWidth:0 appliesLargeCellInsets:v51 locProvider:0 withProgressBar:v106 & 1 formatForFriend:v43];
  v71 = v70;
  [v68 cellHeightForAchievement:v56 preferredWidth:0 appliesLargeCellInsets:v51 locProvider:0 withProgressBar:v69 & 1 formatForFriend:v43];
  v73 = v72;
  [v68 cellHeightForAchievement:v62 preferredWidth:0 appliesLargeCellInsets:v51 locProvider:0 withProgressBar:v69 & 1 formatForFriend:v43];
  v75 = v74;
  sub_100140278(&qword_1008DE450, &qword_1006DE3B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D64F0;
  *(inited + 32) = v71;
  *(inited + 40) = v73;
  *(inited + 48) = v75;
  v77 = COERCE_DOUBLE(sub_100062430(inited));
  v79 = v78;
  swift_setDeallocating();
  if (v79)
  {
    v80 = 177.0;
  }

  else
  {
    v80 = v77;
  }

  v81 = AAUIShouldUseNewTrophyCase();
  v82 = sub_100338CD8();
  v83 = v82;
  if (v81)
  {
    v84 = v80;
  }

  else
  {
    v84 = v71;
  }

  if (v81)
  {
    v85 = v80;
  }

  else
  {
    v85 = v73;
  }

  if (v81)
  {
    v75 = v80;
  }

  [v82 setConstant:v84];

  v86 = sub_100338CEC();
  [v86 setConstant:v85];

  v87 = sub_100338D00();
  [v87 setConstant:v75];

  v88 = sub_100338CC4();
  [v88 setConstant:v80 + 20.0];
}

void sub_10033A2EC(void *a1)
{
  [a1 locationInView:*(v1 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_insetContentView)];
  v3 = v2;
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_leftCellContentView);
  [v6 frame];
  v15.x = v3;
  v15.y = v5;
  if (CGRectContainsPoint(v18, v15))
  {
    v7 = &OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_leftAchievement;
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_middleCellContentView);
    [v6 frame];
    v16.x = v3;
    v16.y = v5;
    if (CGRectContainsPoint(v19, v16))
    {
      v7 = &OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_middleAchievement;
    }

    else
    {
      v6 = *(v1 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_rightCellContentView);
      [v6 frame];
      v17.x = v3;
      v17.y = v5;
      if (!CGRectContainsPoint(v20, v17))
      {
        return;
      }

      v7 = &OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_rightAchievement;
    }
  }

  v8 = *(v1 + *v7);
  v9 = v8;
  v10 = v6;
  if (v8)
  {
    v11 = *(v1 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_onDidTapAchievement);
    if (v11)
    {
      v12 = *(v1 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_onDidTapAchievement + 8);
      v13 = v10;

      [v13 badgeRect];
      v11(v9, v13);

      sub_1001D3C1C(v11, v12);
      v10 = v13;
    }

    else
    {

      v10 = v9;
    }
  }
}

id sub_10033A5B4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AwardsActivityTile();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10033A70C()
{
  result = qword_1008DC918;
  if (!qword_1008DC918)
  {
    type metadata accessor for AppEntityVisualState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC918);
  }

  return result;
}

unint64_t sub_10033A764()
{
  result = qword_1008DC920;
  if (!qword_1008DC920)
  {
    sub_100141EEC(&unk_1008F8F50, &unk_1006E9DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC920);
  }

  return result;
}

void sub_10033A7C8()
{
  *(v0 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_leftAchievement) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_middleAchievement) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_rightAchievement) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_activeEnergyUnit) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_isWheelchairUser) = 2;
  v1 = OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_insetContentView;
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_leftCellContentView;
  v4 = [objc_allocWithZone(CHAchievementsCellContentView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_middleCellContentView;
  v6 = [objc_allocWithZone(CHAchievementsCellContentView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v5) = v6;
  v7 = OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_rightCellContentView;
  v8 = [objc_allocWithZone(CHAchievementsCellContentView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v7) = v8;
  *(v0 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile____lazy_storage___insetContentViewHeightAnchor) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile____lazy_storage___leftCellContentViewHeightAnchor) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile____lazy_storage___middleCellContentViewHeightAnchor) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile____lazy_storage___rightCellContentViewHeightAnchor) = 0;
  v9 = (v0 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_onDidTapAchievement);
  *v9 = 0;
  v9[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10033A9B4()
{
  type metadata accessor for TrainingLoadOnboardingStateHandler(0);
  v0 = swift_allocObject();
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3 && (FIHasSeenTrainingLoadOnboarding() & 1) == 0)
  {
    FISetHasSeenTrainingLoadOnboarding();
  }

  *(v0 + 16) = v3;
  ObservationRegistrar.init()();
  qword_100925688 = v0;
}

uint64_t sub_10033AA84()
{
  swift_getKeyPath();
  sub_10033AF08();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

void sub_10033AAF4(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
    swift_getKeyPath();
    sub_10033AF08();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = *(v1 + 16);
    v4 = [objc_opt_self() standardUserDefaults];
    v5 = String._bridgeToObjectiveC()();
    [v4 setBool:v3 forKey:v5];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10033AF08();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_10033AC7C(uint64_t a1, char a2)
{
  *(a1 + 16) = a2;
  swift_getKeyPath();
  sub_10033AF08();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(a1 + 16);
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  [v4 setBool:v3 forKey:v5];
}

uint64_t sub_10033AD5C()
{
  v1 = OBJC_IVAR____TtC10FitnessApp34TrainingLoadOnboardingStateHandler___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrainingLoadOnboardingStateHandler(uint64_t a1)
{
  result = qword_1008E9348;
  if (!qword_1008E9348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10033AE4C(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_10033AF08()
{
  result = qword_1008E9438;
  if (!qword_1008E9438)
  {
    type metadata accessor for TrainingLoadOnboardingStateHandler(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9438);
  }

  return result;
}

id sub_10033AF60()
{
  [*(*(*&v0[OBJC_IVAR____TtC10FitnessApp26TodayActivityTileDataModel_activityDataProvider] + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_activitySummaryListener) + OBJC_IVAR____TtC10FitnessApp29ActivitySummaryChangeListener_observers) removeObject:v0];
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp26TodayActivityTileDataModel_observers];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v1 + 32;

    do
    {
      sub_10000B1B4(v4, v8);
      v5 = [v3 defaultCenter];
      sub_1000066AC(v8, v8[3]);
      [v5 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      sub_100005A40(v8);
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for TodayActivityTileDataModel();
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_10033B138()
{
  result = sub_10013AA50();
  if ((result & 1) == 0)
  {
    v2 = objc_opt_self();
    v3 = [v2 defaultCenter];
    v4 = objc_opt_self();
    v5 = [v4 mainQueue];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = sub_10033BF88;
    v27 = v6;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100026F8C;
    v25 = &unk_1008537C8;
    v7 = _Block_copy(&aBlock);

    v21 = [v3 addObserverForName:UIApplicationSignificantTimeChangeNotification object:0 queue:v5 usingBlock:v7];
    _Block_release(v7);

    v8 = [v2 defaultCenter];
    if (qword_1008DA5A0 != -1)
    {
      swift_once();
    }

    v9 = qword_100925168;
    v10 = [v4 mainQueue];
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = sub_10033BF90;
    v27 = v11;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100026F8C;
    v25 = &unk_1008537F0;
    v12 = _Block_copy(&aBlock);

    v13 = [v8 addObserverForName:v9 object:0 queue:v10 usingBlock:v12];
    _Block_release(v12);

    v14 = [v2 defaultCenter];
    v15 = kFIUIFitnessUnitPreferencesDidChangeNotification;
    v16 = [v4 mainQueue];
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = sub_10033BF98;
    v27 = v17;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100026F8C;
    v25 = &unk_100853818;
    v18 = _Block_copy(&aBlock);

    v19 = [v14 addObserverForName:v15 object:0 queue:v16 usingBlock:v18];
    _Block_release(v18);

    sub_100140278(&qword_1008E7590, qword_1006D5360);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1006D64F0;
    *(v20 + 56) = swift_getObjectType();
    *(v20 + 32) = v21;
    *(v20 + 88) = swift_getObjectType();
    *(v20 + 64) = v13;
    *(v20 + 120) = swift_getObjectType();
    *(v20 + 96) = v19;
    *(v0 + OBJC_IVAR____TtC10FitnessApp26TodayActivityTileDataModel_observers) = v20;
  }

  return result;
}

void sub_10033B56C(uint64_t a1, uint64_t a2)
{
  v2 = static os_log_type_t.default.getter();
  v3 = HKLogActivity;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "TodayActivityTileDataModel did receive significantTimeChangeNotification notification", 85, 2, _swiftEmptyArrayStorage);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10033B9DC();
  }
}

void sub_10033B614(uint64_t a1, uint64_t a2)
{
  v2 = Notification.userInfo.getter();
  if (v2)
  {
    v3 = v2;
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16) && (v4 = sub_1004C5BC0(v19), (v5 & 1) != 0))
    {
      sub_10000B1B4(*(v3 + 56) + 32 * v4, v20);
      sub_100282EF8(v19);

      if (swift_dynamicCast())
      {
        v6 = static os_log_type_t.default.getter();
        v7 = HKLogActivity;
        os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "TodayActivityTileDataModel did receive WheelchairUseDidChange notification", 74, 2, _swiftEmptyArrayStorage);

        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v9 = Strong;
          v10 = swift_unknownObjectWeakLoadStrong();

          if (v10)
          {
            sub_1001B79A0(16);
          }
        }

        swift_beginAccess();
        v11 = swift_unknownObjectWeakLoadStrong();
        if (v11)
        {
          v12 = v11;
          v13 = swift_unknownObjectWeakLoadStrong();

          if (v13)
          {
            swift_beginAccess();
            v14 = swift_unknownObjectWeakLoadStrong();
            if (v14 && (v15 = *(v14 + OBJC_IVAR____TtC10FitnessApp26TodayActivityTileDataModel_activitySummary), v16 = v14, v17 = v15, v16, v15))
            {
              v18 = v17;
              sub_1001B6B84(v15, 16, 0, 0, 2);
            }

            else
            {
            }
          }
        }
      }
    }

    else
    {

      sub_100282EF8(v19);
    }
  }
}

void sub_10033B850(uint64_t a1, uint64_t a2)
{
  v2 = static os_log_type_t.default.getter();
  v3 = HKLogActivity;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "TodayActivityTileDataModel did receive fiuiFitnessUnitPreferencesDidChange notification", 87, 2, _swiftEmptyArrayStorage);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      swift_beginAccess();
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7 && (v8 = *(v7 + OBJC_IVAR____TtC10FitnessApp26TodayActivityTileDataModel_activitySummary), v9 = v7, v10 = v8, v9, v8))
      {
        swift_beginAccess();
        v11 = swift_unknownObjectWeakLoadStrong();
        if (v11)
        {
          v12 = v11;
          v13 = *(v11 + OBJC_IVAR____TtC10FitnessApp26TodayActivityTileDataModel_activityDataProvider);

          LODWORD(v12) = v13[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser];
          v14 = v10;
          sub_1001B6B84(v8, v12, 0, 0, 2);

          v6 = v14;
        }
      }

      else
      {
        v10 = v6;
      }
    }
  }
}

uint64_t sub_10033B9DC()
{
  v1 = v0;
  v2 = type metadata accessor for Calendar();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v41[-v11];
  static Calendar.current.getter();
  Date.init()();
  Calendar.startOfDay(for:)();
  v13 = *(v7 + 8);
  v13(v9, v6);
  (*(v3 + 8))(v5, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = *(v1 + OBJC_IVAR____TtC10FitnessApp26TodayActivityTileDataModel_activityDataProvider);
    v17 = [*(v16 + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_summaryCache) activitySummaryForCacheIndex:sub_1001E9F44()];
    if (v17)
    {
      v18 = v17;
      v19 = OBJC_IVAR____TtC10FitnessApp26TodayActivityTileDataModel_activitySummary;
      v20 = *(v1 + OBJC_IVAR____TtC10FitnessApp26TodayActivityTileDataModel_activitySummary);
      if (v20 && ([v20 _allFieldsAreEqual:v18] & 1) != 0)
      {
        v21 = static os_log_type_t.default.getter();
        v22 = HKLogActivity;
        os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "TodayActivityTileDataModel received updated activitySummary, but fields did not change. Not updating UI", 103, 2, _swiftEmptyArrayStorage);
      }

      else
      {
        v42 = static os_log_type_t.default.getter();
        v44 = v13;
        v24 = HKLogActivity;
        sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
        v25 = swift_allocObject();
        v43 = v16;
        v26 = v25;
        *(v25 + 16) = xmmword_1006D46C0;
        *(v25 + 56) = sub_10033BEE4();
        *(v26 + 64) = sub_10033BF30();
        *(v26 + 32) = v18;
        v27 = v24;
        v28 = v18;
        os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, v27, "TodayActivityTileDataModel did update activitySummary: %@", 57, 2, v26);

        v13 = v44;

        v29 = *(v1 + v19);
        *(v1 + v19) = v18;
        v30 = v28;

        sub_1001B6B84(v18, *(v43 + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser), 0, 0, 2);
      }
    }

    else
    {
      v44 = v13;
      LODWORD(v43) = static os_log_type_t.default.getter();
      v31 = HKLogActivity;
      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1006D46C0;
      v33 = v31;
      v34 = Date.description.getter();
      v36 = v35;
      *(v32 + 56) = &type metadata for String;
      *(v32 + 64) = sub_10000A788();
      *(v32 + 32) = v34;
      *(v32 + 40) = v36;
      os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v33, "TodayActivityTileDataModel did not find activitySummary for %{public}@", 70, 2, v32);

      v37 = *(v1 + OBJC_IVAR____TtC10FitnessApp26TodayActivityTileDataModel_activitySummary);
      *(v1 + OBJC_IVAR____TtC10FitnessApp26TodayActivityTileDataModel_activitySummary) = 0;

      v38 = swift_unknownObjectWeakLoadStrong();
      if (v38)
      {
        v39 = v38;
        sub_1001B81C8();
      }

      v13 = v44;
    }
  }

  else
  {
    v23 = static os_log_type_t.default.getter();
    v15 = HKLogActivity;
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v15, "TodayActivityTileDataModel attempted to configure today cell, but it was nil", 76, 2, _swiftEmptyArrayStorage);
  }

  return (v13)(v12, v6);
}

unint64_t sub_10033BEE4()
{
  result = qword_1008E3098;
  if (!qword_1008E3098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008E3098);
  }

  return result;
}

unint64_t sub_10033BF30()
{
  result = qword_1008E9488;
  if (!qword_1008E9488)
  {
    sub_10033BEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9488);
  }

  return result;
}

unint64_t sub_10033BFB0()
{
  result = qword_1008E9490;
  if (!qword_1008E9490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9490);
  }

  return result;
}

uint64_t sub_10033C004()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_100925690);
  sub_10001AC90(v0, qword_100925690);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_10033C068()
{
  v0 = sub_100140278(&qword_1008E94E8, qword_1006EA0B0);
  __chkstk_darwin(v0);
  v1 = sub_100140278(&qword_1008E94E0, &qword_1006EA0A8);
  sub_100163368(v1, qword_1009256A8);
  sub_10001AC90(v1, qword_1009256A8);
  sub_10033BFB0();
  IntentURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x80000001007490A0;
  v2._countAndFlagsBits = 0xD000000000000016;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_100140278(&qword_1008E94D8, &qword_1006EA0A0);
  IntentURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v3);
  return IntentURLRepresentation.init(stringInterpolation:)();
}

uint64_t sub_10033C1CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DA948 != -1)
  {
    swift_once();
  }

  v2 = sub_100140278(&qword_1008E94E0, &qword_1006EA0A8);
  v3 = sub_10001AC90(v2, qword_1009256A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10033C284()
{
  result = qword_1008E9498;
  if (!qword_1008E9498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9498);
  }

  return result;
}

unint64_t sub_10033C2DC()
{
  result = qword_1008E94A0;
  if (!qword_1008E94A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E94A0);
  }

  return result;
}

uint64_t sub_10033C34C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DA940 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10001AC90(v2, qword_100925690);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10033C3F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_100140278(&qword_1008E94C8, &qword_1006EA068);
  __chkstk_darwin(v2 - 8);
  v3 = sub_100140278(&qword_1008E94D0, &qword_1006EA070);
  __chkstk_darwin(v3);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x80000001007565E0;
  v4._countAndFlagsBits = 0xD000000000000011;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  sub_100140278(&qword_1008E94D8, &qword_1006EA0A0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10033C58C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10033CA2C();
  *v4 = v2;
  v4[1] = sub_1001628E8;

  return URLRepresentableIntent.perform()(a2, v5);
}

uint64_t sub_10033C638@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10033C710();
  *a1 = result;
  return result;
}

uint64_t sub_10033C660(uint64_t a1)
{
  v2 = sub_10033BFB0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10033C6AC()
{
  result = qword_1008E94A8;
  if (!qword_1008E94A8)
  {
    sub_100141EEC(&qword_1008E94B0, "0M\v");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E94A8);
  }

  return result;
}

uint64_t sub_10033C710()
{
  v17 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100140278(&qword_1008DD130, &unk_1006DB9F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = sub_100140278(&qword_1008DD138, &qword_1006D5CC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100140278(&qword_1008E94B8, &qword_1006EA060);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 0, 1, v12);
  v18 = 0;
  v14 = type metadata accessor for IntentDialog();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v5, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_100177EC8();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

unint64_t sub_10033CA2C()
{
  result = qword_1008E94C0;
  if (!qword_1008E94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E94C0);
  }

  return result;
}

uint64_t sub_10033CA80@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100341530(&qword_1008E96B8, type metadata accessor for EffortHolder, &unk_1006EA198);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC10FitnessApp12EffortHolder__effort;
  swift_beginAccess();
  return sub_10001B104(v5 + v3, a1, &qword_1008DF280, &qword_1006DC840);
}

uint64_t sub_10033CB58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100341530(&qword_1008E96B8, type metadata accessor for EffortHolder, &unk_1006EA198);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC10FitnessApp12EffortHolder__effort;
  swift_beginAccess();
  return sub_10001B104(v3 + v4, a2, &qword_1008DF280, &qword_1006DC840);
}

uint64_t sub_10033CC30(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DF280, &qword_1006DC840);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10001B104(a1, &v6 - v3, &qword_1008DF280, &qword_1006DC840);
  return sub_10033CCDC(v4);
}

uint64_t sub_10033CCDC(uint64_t a1)
{
  v3 = sub_100140278(&qword_1008DF280, &qword_1006DC840);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC10FitnessApp12EffortHolder__effort;
  swift_beginAccess();
  sub_10001B104(v1 + v6, v5, &qword_1008DF280, &qword_1006DC840);
  v7 = sub_100341B70(v5, a1);
  sub_10000EA04(v5, &qword_1008DF280, &qword_1006DC840);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_100341530(&qword_1008E96B8, type metadata accessor for EffortHolder, &unk_1006EA198);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_10001B104(a1, v5, &qword_1008DF280, &qword_1006DC840);
    swift_beginAccess();
    sub_100341FE0(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_10000EA04(a1, &qword_1008DF280, &qword_1006DC840);
}

uint64_t sub_10033CEE4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10FitnessApp12EffortHolder__effort;
  swift_beginAccess();
  sub_10034206C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_10033CF50()
{
  sub_10000EA04(v0 + OBJC_IVAR____TtC10FitnessApp12EffortHolder__effort, &qword_1008DF280, &qword_1006DC840);
  v1 = OBJC_IVAR____TtC10FitnessApp12EffortHolder___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EffortHolder(uint64_t a1)
{
  result = qword_1008E9528;
  if (!qword_1008E9528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10033D060(uint64_t a1)
{
  sub_10033D12C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10033D12C(uint64_t a1)
{
  if (!qword_1008E9538)
  {
    type metadata accessor for AppleExertionScale();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1008E9538);
    }
  }
}

id sub_10033D184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_effortController] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_effortView] = 0;
  v6 = OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_effortHolder;
  type metadata accessor for EffortHolder(0);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC10FitnessApp12EffortHolder__effort;
  v9 = type metadata accessor for AppleExertionScale();
  v10 = *(*(v9 - 8) + 56);
  v10(v7 + v8, 1, 1, v9);
  v10(v7 + v8, 1, 1, v9);
  ObservationRegistrar.init()();
  *&v3[v6] = v7;
  *&v3[OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_dataCalculator] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_workout] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_workoutActivity] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_noteSink] = 0;
  if (a3)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v21.receiver = v3;
  v21.super_class = type metadata accessor for WorkoutDetailEffortTableViewCell();
  v12 = objc_msgSendSuper2(&v21, "initWithStyle:reuseIdentifier:", a1, v11);

  v13 = objc_opt_self();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006D4E70;
  v15 = v12;
  v16 = [v15 contentView];
  v17 = [v16 heightAnchor];

  v18 = [v17 constraintGreaterThanOrEqualToConstant:74.0];
  *(v14 + 32) = v18;
  sub_1000059F8(0, &qword_1008DC980, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 activateConstraints:isa];

  return v15;
}

void sub_10033D474()
{
  v1 = *(v0 + OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_dataCalculator);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_workout);
    v3 = *(v0 + OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_workoutActivity);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9[4] = sub_100341B60;
    v9[5] = v4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_100644714;
    v9[3] = &unk_1008538E0;
    v5 = _Block_copy(v9);
    v6 = v3;
    v7 = v1;
    v8 = v2;

    [v7 effortForWorkout:v8 workoutActivity:v6 completion:v5];
    _Block_release(v5);
  }
}

uint64_t sub_10033D5AC(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = a1;
  aBlock[4] = sub_100341B68;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100853930;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100341530(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50, &qword_1006D8190, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v18 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v17);
}

void sub_10033D8EC(uint64_t a1, void *a2)
{
  v3 = sub_100140278(&qword_1008DF280, &qword_1006DC840);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a2)
    {
      v8 = a2;
      AppleExertionScale.init(quantity:)();
    }

    else
    {
      v9 = type metadata accessor for AppleExertionScale();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    }

    sub_10033CCDC(v5);
  }
}

void sub_10033DA00(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v80 = a4;
  v9 = sub_100140278(&qword_1008E98A8, &unk_100704390);
  __chkstk_darwin(v9 - 8);
  v11 = &v80 - v10;
  v12 = type metadata accessor for NSNotificationCenter.Publisher();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100140278(&qword_1008E98B0, &qword_1006EA410);
  v17 = *(v16 - 8);
  v81 = v16;
  v82 = v17;
  __chkstk_darwin(v16);
  v19 = &v80 - v18;
  v20 = *&v5[OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_workout];
  *&v5[OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_workout] = a1;
  v21 = a1;

  v22 = *&v5[OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_workoutActivity];
  *&v5[OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_workoutActivity] = a2;
  v23 = a2;

  v24 = *&v5[OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_dataCalculator];
  *&v5[OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_dataCalculator] = a3;
  v25 = a3;

  v26 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v27 = static OS_dispatch_queue.main.getter();
  v83 = v27;
  v28 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
  sub_100341530(&qword_1008E98B8, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  sub_100341AF0();
  Publisher.subscribe<A>(on:options:)();
  sub_10000EA04(v11, &qword_1008E98A8, &unk_100704390);

  (*(v13 + 8))(v15, v12);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = v21;
  *(v30 + 24) = v29;
  sub_10014A6B0(&qword_1008E98C8, &qword_1008E98B0, &qword_1006EA410, &protocol conformance descriptor for Publishers.SubscribeOn<A, B>);
  v31 = v21;
  v32 = v81;
  v33 = Publisher<>.sink(receiveValue:)();

  (*(v82 + 8))(v19, v32);
  *&v5[OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_noteSink] = v33;

  sub_10033D474();
  v34 = *&v5[OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_effortHolder];
  *&v5[OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_effortView] = v34;
  swift_retain_n();

  v35 = OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_effortController;
  v36 = *&v5[OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_effortController];
  if (v36)
  {
    v83 = v34;

    v37 = v36;
    dispatch thunk of UIHostingController.rootView.setter();
    v38 = [v37 view];
    if (v38)
    {
      v39 = v38;
LABEL_12:
      [v39 layoutIfNeeded];

      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  v83 = v34;
  v40 = objc_allocWithZone(sub_100140278(&qword_1008E98D0, &qword_1006EA418));

  v41 = UIHostingController.init(rootView:)();
  v42 = *&v5[v35];
  *&v5[v35] = v41;
  v43 = v41;

  v37 = v43;
  v44 = [v37 view];
  if (!v44)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v45 = v44;
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];

  v46 = [v37 view];
  v47 = v80;
  if (!v46)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v48 = v46;
  v49 = [objc_opt_self() clearColor];
  [v48 setBackgroundColor:v49];

  v50 = [v5 contentView];
  v51 = [v37 view];
  if (!v51)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v52 = v51;
  [v50 addSubview:v51];

  [v47 addChildViewController:v37];
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1006D5300;
  v54 = [v37 view];
  if (!v54)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v55 = v54;
  v56 = [v54 topAnchor];

  v57 = [v5 contentView];
  v58 = [v57 topAnchor];

  v59 = [v56 constraintEqualToAnchor:v58 constant:12.0];
  *(v53 + 32) = v59;
  v60 = [v37 view];
  if (!v60)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v61 = v60;
  v62 = [v60 leadingAnchor];

  v63 = [v5 contentView];
  v64 = [v63 leadingAnchor];

  v65 = [v62 constraintEqualToAnchor:v64 constant:sub_1000B7B88()];
  *(v53 + 40) = v65;
  v66 = [v37 view];
  if (!v66)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v67 = v66;
  v68 = [v66 trailingAnchor];

  v69 = [v5 contentView];
  v70 = [v69 trailingAnchor];

  v71 = [v68 constraintEqualToAnchor:v70 constant:-sub_1000B7B88()];
  *(v53 + 48) = v71;
  v72 = [v37 view];
  if (!v72)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v73 = v72;
  v74 = objc_opt_self();
  v75 = [v73 bottomAnchor];

  v76 = [v5 contentView];
  v77 = [v76 bottomAnchor];

  v78 = [v75 constraintEqualToAnchor:v77 constant:-12.0];
  *(v53 + 56) = v78;
  sub_1000059F8(0, &qword_1008DC980, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v74 activateConstraints:isa];

  [v37 didMoveToParentViewController:v80];
  v39 = [v37 view];

  if (v39)
  {
    goto LABEL_12;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_10033E334(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_100140278(&unk_1008DB8A0, qword_1006DBA20);
  __chkstk_darwin(v4 - 8);
  v6 = v25 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v25 - v12;
  v14 = Notification.userInfo.getter();
  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = v14;
  v25[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25[2] = v16;
  AnyHashable.init<A>(_:)();
  if (!*(v15 + 16) || (v17 = sub_1004C5BC0(v26), (v18 & 1) == 0))
  {

    sub_100282EF8(v26);
LABEL_11:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_12;
  }

  sub_10000B1B4(*(v15 + 56) + 32 * v17, &v27);
  sub_100282EF8(v26);

  if (!*(&v28 + 1))
  {
LABEL_12:
    sub_10000EA04(&v27, &qword_1008E51F0, qword_1006D50E0);
    (*(v8 + 56))(v6, 1, 1, v7);
    return sub_10000EA04(v6, &unk_1008DB8A0, qword_1006DBA20);
  }

  v19 = swift_dynamicCast();
  (*(v8 + 56))(v6, v19 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000EA04(v6, &unk_1008DB8A0, qword_1006DBA20);
  }

  (*(v8 + 32))(v13, v6, v7);
  v20 = [a2 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v20) = static UUID.== infix(_:_:)();
  v21 = *(v8 + 8);
  v21(v10, v7);
  if (v20)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      sub_10033D474();
    }
  }

  return (v21)(v13, v7);
}

id sub_10033E718(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WorkoutDetailEffortTableViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10033E838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = type metadata accessor for AccessibilityTraits();
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v19 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AccessibilityChildBehavior();
  v4 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008E9680, &qword_1006EA1B8);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = sub_100140278(&qword_1008E9688, &qword_1006EA1C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - v12;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v14 = sub_100140278(&qword_1008E9690, &unk_1006EA1C8);
  sub_10033EB78(a1, &v9[*(v14 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v15 = sub_10014A6B0(&qword_1008E9698, &qword_1008E9680, &qword_1006EA1B8, &protocol conformance descriptor for HStack<A>);
  View.accessibilityElement(children:)();
  (*(v4 + 8))(v6, v20);
  sub_10000EA04(v9, &qword_1008E9680, &qword_1006EA1B8);
  v16 = v19;
  static AccessibilityTraits.isButton.getter();
  v24 = v7;
  v25 = v15;
  swift_getOpaqueTypeConformance2();
  View.accessibilityAddTraits(_:)();
  (*(v21 + 8))(v16, v23);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10033EB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008DF280, &qword_1006DC840);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_100140278(&qword_1008E96A0, &qword_1006EA1D8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = sub_100140278(&qword_1008E96A8, &qword_1006EA1E0);
  __chkstk_darwin(v14 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  *v19 = static HorizontalAlignment.center.getter();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = sub_100140278(&qword_1008E96B0, &qword_1006EA1E8);
  sub_10033EF18(a1, &v19[*(v20 + 44)]);
  swift_getKeyPath();
  *&v30 = a1;
  sub_100341530(&qword_1008E96B8, type metadata accessor for EffortHolder, &unk_1006EA198);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = OBJC_IVAR____TtC10FitnessApp12EffortHolder__effort;
  swift_beginAccess();
  sub_10001B104(a1 + v21, v6, &qword_1008DF280, &qword_1006DC840);
  EffortMiniGraph.init(effort:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v22 = &v13[*(sub_100140278(&qword_1008E96C0, &qword_1006EA218) + 36)];
  v23 = v31;
  *v22 = v30;
  *(v22 + 1) = v23;
  *(v22 + 2) = v32;
  v24 = static Edge.Set.trailing.getter();
  v25 = &v13[*(v8 + 44)];
  *v25 = v24;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  v25[40] = 1;
  sub_100090B28(v19, v16);
  sub_10001B104(v13, v10, &qword_1008E96A0, &qword_1006EA1D8);
  sub_100090B28(v16, a2);
  v26 = sub_100140278(&qword_1008E96C8, &unk_1006EA220);
  v27 = a2 + *(v26 + 48);
  *v27 = 0;
  *(v27 + 8) = 1;
  sub_10001B104(v10, a2 + *(v26 + 64), &qword_1008E96A0, &qword_1006EA1D8);
  sub_10000EA04(v13, &qword_1008E96A0, &qword_1006EA1D8);
  sub_10000EA04(v19, &qword_1008E96A8, &qword_1006EA1E0);
  sub_10000EA04(v10, &qword_1008E96A0, &qword_1006EA1D8);
  return sub_10000EA04(v16, &qword_1008E96A8, &qword_1006EA1E0);
}

uint64_t sub_10033EF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_100140278(&qword_1008DC448, &qword_1006D48C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v40 - v4;
  v41 = sub_100140278(&qword_1008E96D0, &qword_1006EA230);
  __chkstk_darwin(v41);
  v7 = &v40 - v6;
  v8 = sub_100140278(&qword_1008E96D8, &qword_1006EA238);
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  v11 = sub_100140278(&qword_1008E96E0, &qword_1006EA240);
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v44 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v40 - v14;
  v16 = sub_100140278(&qword_1008E96E8, &qword_1006EA248);
  __chkstk_darwin(v16 - 8);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v40 - v20;
  *v21 = static VerticalAlignment.center.getter();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = &v21[*(sub_100140278(&qword_1008E96F0, &qword_1006EA250) + 44)];
  v40 = v21;
  sub_10033F414(v22);
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v23 = sub_100140278(&qword_1008E96F8, &qword_1006EA258);
  sub_10033F730(a1, &v7[*(v23 + 44)]);
  static Font.Weight.medium.getter();
  sub_10014A6B0(&qword_1008E9700, &qword_1008E96D0, &qword_1006EA230, &protocol conformance descriptor for HStack<A>);
  View.fontWeight(_:)();
  sub_10000EA04(v7, &qword_1008E96D0, &qword_1006EA230);
  v24 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  v26 = &v10[*(v8 + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = enum case for Font.Design.rounded(_:);
  v28 = type metadata accessor for Font.Design();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v5, v27, v28);
  (*(v29 + 56))(v5, 0, 1, v28);
  sub_100340F44();
  View.fontDesign(_:)();
  sub_10000EA04(v5, &qword_1008DC448, &qword_1006D48C0);
  sub_10000EA04(v10, &qword_1008E96D8, &qword_1006EA238);
  v30 = v21;
  v31 = v18;
  sub_10001B104(v30, v18, &qword_1008E96E8, &qword_1006EA248);
  v33 = v42;
  v32 = v43;
  v34 = *(v42 + 16);
  v35 = v44;
  v34(v44, v15, v43);
  v36 = v45;
  sub_10001B104(v31, v45, &qword_1008E96E8, &qword_1006EA248);
  v37 = sub_100140278(&qword_1008E9710, &qword_1006EA298);
  v34((v36 + *(v37 + 48)), v35, v32);
  v38 = *(v33 + 8);
  v38(v15, v32);
  sub_10000EA04(v40, &qword_1008E96E8, &qword_1006EA248);
  v38(v35, v32);
  return sub_10000EA04(v31, &qword_1008E96E8, &qword_1006EA248);
}

uint64_t sub_10033F414@<X0>(uint64_t a1@<X8>)
{
  v26 = sub_100140278(&qword_1008E9888, &qword_1006EA3E8);
  __chkstk_darwin(v26);
  v3 = &v23[-v2];
  v4 = sub_100140278(&qword_1008E9890, &unk_1006EA3F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v23[-v8];
  LocalizedStringKey.init(stringLiteral:)();
  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v24 = v13;
  v25 = v14;
  v15 = Image.init(systemName:)();
  v16 = (v3 + *(sub_100140278(&qword_1008E9840, &qword_1006F5A30) + 36));
  v17 = *(sub_100140278(&qword_1008E97F8, &qword_1006EA330) + 28);
  v18 = enum case for Image.Scale.small(_:);
  v19 = type metadata accessor for Image.Scale();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  *v3 = v15;
  *(v3 + *(v26 + 36)) = static HierarchicalShapeStyle.secondary.getter();
  sub_100341A38();
  View.accessibilityHidden(_:)();
  sub_10000EA04(v3, &qword_1008E9888, &qword_1006EA3E8);
  sub_10001B104(v9, v6, &qword_1008E9890, &unk_1006EA3F0);
  *a1 = v10;
  *(a1 + 8) = v12;
  LOBYTE(v3) = v24 & 1;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v25;
  v20 = sub_100140278(&qword_1008E98A0, &unk_1006EA400);
  sub_10001B104(v6, a1 + *(v20 + 48), &qword_1008E9890, &unk_1006EA3F0);
  v21 = a1 + *(v20 + 64);
  *v21 = 0;
  *(v21 + 8) = 1;
  sub_10006965C(v10, v12, v3);

  sub_10000EA04(v9, &qword_1008E9890, &unk_1006EA3F0);
  sub_10000EA04(v6, &qword_1008E9890, &unk_1006EA3F0);
  sub_10004642C(v10, v12, v3);
}

uint64_t sub_10033F730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v82 = sub_100140278(&qword_1008E9718, &qword_1006EA2A0);
  __chkstk_darwin(v82);
  v72 = &v66[-v3];
  v92 = sub_100140278(&qword_1008E9720, &qword_1006EA2A8);
  __chkstk_darwin(v92);
  v74 = &v66[-v4];
  v76 = type metadata accessor for ExertionValue();
  v71 = *(v76 - 8);
  __chkstk_darwin(v76);
  v70 = &v66[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v75 = &v66[-v7];
  v90 = sub_100140278(&qword_1008E9728, &qword_1006EA2B0);
  __chkstk_darwin(v90);
  v91 = &v66[-v8];
  v79 = sub_100140278(&qword_1008E9730, &qword_1006EA2B8);
  __chkstk_darwin(v79);
  v80 = &v66[-v9];
  v89 = sub_100140278(&qword_1008E9738, &qword_1006EA2C0);
  __chkstk_darwin(v89);
  v81 = &v66[-v10];
  v78 = sub_100140278(&qword_1008E9740, &qword_1006EA2C8);
  __chkstk_darwin(v78);
  v73 = &v66[-v11];
  v12 = type metadata accessor for AppleExertionScale();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v77 = &v66[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_100140278(&qword_1008E9748, &qword_1006EA2D0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v66[-v17];
  v19 = sub_100140278(&qword_1008DF280, &qword_1006DC840);
  __chkstk_darwin(v19 - 8);
  v69 = &v66[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v84 = &v66[-v22];
  __chkstk_darwin(v23);
  v25 = &v66[-v24];
  __chkstk_darwin(v26);
  v28 = &v66[-v27];
  v29 = sub_100140278(&qword_1008E9750, &qword_1006EA2D8);
  __chkstk_darwin(v29 - 8);
  v88 = &v66[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v87 = &v66[-v32];
  swift_getKeyPath();
  v33 = OBJC_IVAR____TtC10FitnessApp12EffortHolder___observationRegistrar;
  v95 = a1;
  v34 = sub_100341530(&qword_1008E96B8, type metadata accessor for EffortHolder, &unk_1006EA198);
  v83 = v33;
  v86 = v34;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35 = OBJC_IVAR____TtC10FitnessApp12EffortHolder__effort;
  swift_beginAccess();
  (*(v13 + 104))(v28, enum case for AppleExertionScale.skipped(_:), v12);
  (*(v13 + 56))(v28, 0, 1, v12);
  v36 = *(v16 + 56);
  v85 = a1;
  sub_10001B104(a1 + v35, v18, &qword_1008DF280, &qword_1006DC840);
  sub_10001B104(v28, &v18[v36], &qword_1008DF280, &qword_1006DC840);
  v37 = *(v13 + 48);
  if (v37(v18, 1, v12) == 1)
  {
    sub_10000EA04(v28, &qword_1008DF280, &qword_1006DC840);
    if (v37(&v18[v36], 1, v12) == 1)
    {
      sub_10000EA04(v18, &qword_1008DF280, &qword_1006DC840);
LABEL_10:
      v53 = v73;
      sub_100340448(v73);
      *&v53[*(v78 + 36)] = static Color.gray.getter();
      v45 = &qword_1008E9740;
      v46 = &qword_1006EA2C8;
      sub_10001B104(v53, v80, &qword_1008E9740, &qword_1006EA2C8);
      swift_storeEnumTagMultiPayload();
      sub_1003410F8();
      sub_100341260();
      v54 = v81;
      _ConditionalContent<>.init(storage:)();
      sub_10001B104(v54, v91, &qword_1008E9738, &qword_1006EA2C0);
      swift_storeEnumTagMultiPayload();
      sub_10034106C();
      sub_1003413C8();
      v47 = v87;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v54, &qword_1008E9738, &qword_1006EA2C0);
      v48 = v53;
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  sub_10001B104(v18, v25, &qword_1008DF280, &qword_1006DC840);
  if (v37(&v18[v36], 1, v12) == 1)
  {
    sub_10000EA04(v28, &qword_1008DF280, &qword_1006DC840);
    (*(v13 + 8))(v25, v12);
LABEL_6:
    sub_10000EA04(v18, &qword_1008E9748, &qword_1006EA2D0);
    goto LABEL_7;
  }

  v49 = *(v13 + 32);
  v68 = v35;
  v50 = v77;
  v49(v77, &v18[v36], v12);
  sub_100341530(&qword_1008E97E0, &type metadata accessor for AppleExertionScale, &protocol conformance descriptor for AppleExertionScale);
  v67 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v13 + 8);
  v52 = v50;
  v35 = v68;
  v51(v52, v12);
  sub_10000EA04(v28, &qword_1008DF280, &qword_1006DC840);
  v51(v25, v12);
  sub_10000EA04(v18, &qword_1008DF280, &qword_1006DC840);
  if (v67)
  {
    goto LABEL_10;
  }

LABEL_7:
  swift_getKeyPath();
  v38 = v85;
  v94 = v85;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = v38 + v35;
  v40 = v35;
  v41 = v84;
  sub_10001B104(v39, v84, &qword_1008DF280, &qword_1006DC840);
  if (!v37(v41, 1, v12))
  {
    v55 = v77;
    (*(v13 + 16))(v77, v41, v12);
    sub_10000EA04(v41, &qword_1008DF280, &qword_1006DC840);
    v56 = v70;
    AppleExertionScale.exertionValue.getter();
    (*(v13 + 8))(v55, v12);
    v57 = v81;
    v58 = v71;
    (*(v71 + 32))(v75, v56, v76);
    v59 = v72;
    sub_1003407EC(v72);
    swift_getKeyPath();
    v94 = v38;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v60 = v69;
    sub_10001B104(v38 + v40, v69, &qword_1008DF280, &qword_1006DC840);
    v61 = static EffortColors.textColor(exertion:)();
    sub_10000EA04(v60, &qword_1008DF280, &qword_1006DC840);
    *&v59[*(v82 + 36)] = v61;
    sub_10001B104(v59, v80, &qword_1008E9718, &qword_1006EA2A0);
    swift_storeEnumTagMultiPayload();
    sub_1003410F8();
    sub_100341260();
    _ConditionalContent<>.init(storage:)();
    sub_10001B104(v57, v91, &qword_1008E9738, &qword_1006EA2C0);
    swift_storeEnumTagMultiPayload();
    sub_10034106C();
    sub_1003413C8();
    v47 = v87;
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v57, &qword_1008E9738, &qword_1006EA2C0);
    sub_10000EA04(v59, &qword_1008E9718, &qword_1006EA2A0);
    (*(v58 + 8))(v75, v76);
    goto LABEL_13;
  }

  sub_10000EA04(v41, &qword_1008DF280, &qword_1006DC840);
  v42 = v74;
  sub_100340C54(v74);
  v43 = static Color.gray.getter();
  v44 = v91;
  *&v42[*(v92 + 36)] = v43;
  v45 = &qword_1008E9720;
  v46 = &qword_1006EA2A8;
  sub_10001B104(v42, v44, &qword_1008E9720, &qword_1006EA2A8);
  swift_storeEnumTagMultiPayload();
  sub_10034106C();
  sub_1003413C8();
  v47 = v87;
  _ConditionalContent<>.init(storage:)();
  v48 = v42;
LABEL_11:
  sub_10000EA04(v48, v45, v46);
LABEL_13:
  v62 = v88;
  sub_10001B104(v47, v88, &qword_1008E9750, &qword_1006EA2D8);
  v63 = v93;
  sub_10001B104(v62, v93, &qword_1008E9750, &qword_1006EA2D8);
  v64 = v63 + *(sub_100140278(&qword_1008E97D8, &qword_1006EA318) + 48);
  *v64 = 0;
  *(v64 + 8) = 1;
  sub_10000EA04(v47, &qword_1008E9750, &qword_1006EA2D8);
  return sub_10000EA04(v62, &qword_1008E9750, &qword_1006EA2D8);
}

uint64_t sub_100340448@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = type metadata accessor for LocalizationFeature();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008E97E8, &qword_1006EA320);
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v8 = sub_100140278(&qword_1008E97F0, &qword_1006EA328);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = Image.init(_internalSystemName:)();
  v15 = &v7[*(v5 + 36)];
  v16 = *(sub_100140278(&qword_1008E97F8, &qword_1006EA330) + 28);
  v17 = enum case for Image.Scale.small(_:);
  v18 = type metadata accessor for Image.Scale();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *v7 = v14;
  v7[8] = 1;
  sub_100341664();
  View.accessibilityHidden(_:)();
  sub_10000EA04(v7, &qword_1008E97E8, &qword_1006EA320);
  v19 = v32;
  (*(v2 + 104))(v4, enum case for LocalizationFeature.workout(_:), v32);
  v20 = static Localization.workoutUILocalizedString(_:feature:)();
  v22 = v21;
  (*(v2 + 8))(v4, v19);
  v34 = v20;
  v35 = v22;
  sub_10000FCBC();
  v23 = Text.init<A>(_:)();
  v25 = v24;
  LOBYTE(v16) = v26;
  v28 = v27;
  sub_10001B104(v13, v10, &qword_1008E97F0, &qword_1006EA328);
  v29 = v33;
  sub_10001B104(v10, v33, &qword_1008E97F0, &qword_1006EA328);
  v30 = v29 + *(sub_100140278(&qword_1008E9828, &qword_1006EA370) + 48);
  *v30 = v23;
  *(v30 + 8) = v25;
  LOBYTE(v16) = v16 & 1;
  *(v30 + 16) = v16;
  *(v30 + 24) = v28;
  sub_10006965C(v23, v25, v16);

  sub_10000EA04(v13, &qword_1008E97F0, &qword_1006EA328);
  sub_10004642C(v23, v25, v16);

  return sub_10000EA04(v10, &qword_1008E97F0, &qword_1006EA328);
}

uint64_t sub_1003407EC@<X0>(uint64_t a1@<X8>)
{
  v33[0] = a1;
  v1 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008E9830, &qword_1006EA378);
  __chkstk_darwin(v2);
  v4 = (v33 - v3);
  v5 = sub_100140278(&qword_1008E9838, &unk_1006EA380);
  __chkstk_darwin(v5 - 8);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v33 - v9;
  v33[1] = ExertionValue.level.getter();
  v34 = dispatch thunk of CustomStringConvertible.description.getter();
  v35 = v11;
  v12._countAndFlagsBits = 0x2E656C637269632ELL;
  v12._object = 0xEC0000006C6C6966;
  String.append(_:)(v12);
  v13 = Image.init(systemName:)();
  v14 = (v4 + *(sub_100140278(&qword_1008E9840, &qword_1006F5A30) + 36));
  v15 = *(sub_100140278(&qword_1008E97F8, &qword_1006EA330) + 28);
  v16 = enum case for Image.Scale.medium(_:);
  v17 = type metadata accessor for Image.Scale();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = swift_getKeyPath();
  *v4 = v13;
  v18 = (v4 + *(v2 + 36));
  v19 = *(sub_100140278(&qword_1008E9848, &qword_1006EA390) + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v20 = type metadata accessor for SymbolRenderingMode();
  (*(*(v20 - 8) + 56))(v18 + v19, 0, 1, v20);
  *v18 = swift_getKeyPath();
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
  v34 = ExertionValue.level.getter();
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v22);
  LocalizedStringKey.init(stringInterpolation:)();
  sub_1003418C8();
  View.accessibilityLabel(_:)();

  sub_10000EA04(v4, &qword_1008E9830, &qword_1006EA378);
  v34 = ExertionValue.shortDescription.getter();
  v35 = v23;
  sub_10000FCBC();
  v24 = Text.init<A>(_:)();
  v26 = v25;
  LOBYTE(v14) = v27;
  v29 = v28;
  sub_10001B104(v10, v7, &qword_1008E9838, &unk_1006EA380);
  v30 = v33[0];
  sub_10001B104(v7, v33[0], &qword_1008E9838, &unk_1006EA380);
  v31 = v30 + *(sub_100140278(&qword_1008E9868, &qword_1006EA3C8) + 48);
  *v31 = v24;
  *(v31 + 8) = v26;
  LOBYTE(v14) = v14 & 1;
  *(v31 + 16) = v14;
  *(v31 + 24) = v29;
  sub_10006965C(v24, v26, v14);

  sub_10000EA04(v10, &qword_1008E9838, &unk_1006EA380);
  sub_10004642C(v24, v26, v14);

  return sub_10000EA04(v7, &qword_1008E9838, &unk_1006EA380);
}

uint64_t sub_100340C54@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100140278(&qword_1008E9840, &qword_1006F5A30);
  __chkstk_darwin(v2);
  v4 = &v24[-v3];
  v5 = sub_100140278(&qword_1008E9878, &qword_1006EA3D8);
  __chkstk_darwin(v5 - 8);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v24[-v9];
  v11 = Image.init(systemName:)();
  v12 = (v4 + *(v2 + 36));
  v13 = *(sub_100140278(&qword_1008E97F8, &qword_1006EA330) + 28);
  v14 = enum case for Image.Scale.small(_:);
  v15 = type metadata accessor for Image.Scale();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  *v4 = v11;
  sub_100341980();
  View.accessibilityHidden(_:)();
  sub_10000EA04(v4, &qword_1008E9840, &qword_1006F5A30);
  LocalizedStringKey.init(stringLiteral:)();
  v16 = Text.init(_:tableName:bundle:comment:)();
  v18 = v17;
  LOBYTE(v12) = v19;
  v21 = v20;
  sub_10001B104(v10, v7, &qword_1008E9878, &qword_1006EA3D8);
  sub_10001B104(v7, a1, &qword_1008E9878, &qword_1006EA3D8);
  v22 = a1 + *(sub_100140278(&qword_1008E9880, &qword_1006EA3E0) + 48);
  *v22 = v16;
  *(v22 + 8) = v18;
  *(v22 + 16) = v12 & 1;
  *(v22 + 24) = v21;
  sub_10006965C(v16, v18, v12 & 1);

  sub_10000EA04(v10, &qword_1008E9878, &qword_1006EA3D8);
  sub_10004642C(v16, v18, v12 & 1);

  return sub_10000EA04(v7, &qword_1008E9878, &qword_1006EA3D8);
}

unint64_t sub_100340F44()
{
  result = qword_1008E9708;
  if (!qword_1008E9708)
  {
    sub_100141EEC(&qword_1008E96D8, &qword_1006EA238);
    sub_100141EEC(&qword_1008E96D0, &qword_1006EA230);
    sub_10014A6B0(&qword_1008E9700, &qword_1008E96D0, &qword_1006EA230, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0, &qword_1006DC0F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9708);
  }

  return result;
}

unint64_t sub_10034106C()
{
  result = qword_1008E9758;
  if (!qword_1008E9758)
  {
    sub_100141EEC(&qword_1008E9738, &qword_1006EA2C0);
    sub_1003410F8();
    sub_100341260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9758);
  }

  return result;
}

unint64_t sub_1003410F8()
{
  result = qword_1008E9760;
  if (!qword_1008E9760)
  {
    sub_100141EEC(&qword_1008E9740, &qword_1006EA2C8);
    sub_1003411B0();
    sub_10014A6B0(&qword_1008E0740, &qword_1008E0748, &unk_1006DC070, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9760);
  }

  return result;
}

unint64_t sub_1003411B0()
{
  result = qword_1008E9768;
  if (!qword_1008E9768)
  {
    sub_100141EEC(&qword_1008E9770, &qword_1006EA2E0);
    sub_10014A6B0(&qword_1008E9778, &qword_1008E9780, &unk_1006EA2E8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9768);
  }

  return result;
}

unint64_t sub_100341260()
{
  result = qword_1008E9788;
  if (!qword_1008E9788)
  {
    sub_100141EEC(&qword_1008E9718, &qword_1006EA2A0);
    sub_100341318();
    sub_10014A6B0(&qword_1008E0740, &qword_1008E0748, &unk_1006DC070, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9788);
  }

  return result;
}

unint64_t sub_100341318()
{
  result = qword_1008E9790;
  if (!qword_1008E9790)
  {
    sub_100141EEC(&qword_1008E9798, &qword_1006EA2F8);
    sub_10014A6B0(&qword_1008E97A0, &qword_1008E97A8, &qword_1006EA300, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9790);
  }

  return result;
}

unint64_t sub_1003413C8()
{
  result = qword_1008E97B0;
  if (!qword_1008E97B0)
  {
    sub_100141EEC(&qword_1008E9720, &qword_1006EA2A8);
    sub_100341480();
    sub_10014A6B0(&qword_1008E0740, &qword_1008E0748, &unk_1006DC070, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E97B0);
  }

  return result;
}

unint64_t sub_100341480()
{
  result = qword_1008E97B8;
  if (!qword_1008E97B8)
  {
    sub_100141EEC(&qword_1008E97C0, &qword_1006EA308);
    sub_10014A6B0(&qword_1008E97C8, &qword_1008E97D0, &qword_1006EA310, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E97B8);
  }

  return result;
}

uint64_t sub_100341530(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10034159C(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.imageScale.setter();
}

unint64_t sub_100341664()
{
  result = qword_1008E9800;
  if (!qword_1008E9800)
  {
    sub_100141EEC(&qword_1008E97E8, &qword_1006EA320);
    sub_10034171C();
    sub_10014A6B0(&qword_1008E9820, &qword_1008E97F8, &qword_1006EA330, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9800);
  }

  return result;
}

unint64_t sub_10034171C()
{
  result = qword_1008E9808;
  if (!qword_1008E9808)
  {
    sub_100141EEC(&qword_1008E9810, &qword_100704700);
    sub_1003417A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9808);
  }

  return result;
}

unint64_t sub_1003417A8()
{
  result = qword_1008E9818;
  if (!qword_1008E9818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9818);
  }

  return result;
}

uint64_t sub_100341820(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E9870, &qword_1006EA3D0);
  __chkstk_darwin(v2 - 8);
  sub_10001B104(a1, &v5 - v3, &qword_1008E9870, &qword_1006EA3D0);
  return EnvironmentValues.symbolRenderingMode.setter();
}

unint64_t sub_1003418C8()
{
  result = qword_1008E9850;
  if (!qword_1008E9850)
  {
    sub_100141EEC(&qword_1008E9830, &qword_1006EA378);
    sub_100341980();
    sub_10014A6B0(&qword_1008E9860, &qword_1008E9848, &qword_1006EA390, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9850);
  }

  return result;
}

unint64_t sub_100341980()
{
  result = qword_1008E9858;
  if (!qword_1008E9858)
  {
    sub_100141EEC(&qword_1008E9840, &qword_1006F5A30);
    sub_10014A6B0(&qword_1008E9820, &qword_1008E97F8, &qword_1006EA330, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9858);
  }

  return result;
}

unint64_t sub_100341A38()
{
  result = qword_1008E9898;
  if (!qword_1008E9898)
  {
    sub_100141EEC(&qword_1008E9888, &qword_1006EA3E8);
    sub_100341980();
    sub_10014A6B0(&qword_1008DD728, &qword_1008DD730, &qword_1006DCAE0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9898);
  }

  return result;
}

unint64_t sub_100341AF0()
{
  result = qword_1008E98C0;
  if (!qword_1008E98C0)
  {
    sub_1000059F8(255, &qword_1008E3FD0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E98C0);
  }

  return result;
}

uint64_t sub_100341B70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleExertionScale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008DF280, &qword_1006DC840);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100140278(&qword_1008E9748, &qword_1006EA2D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_10001B104(a1, &v21 - v12, &qword_1008DF280, &qword_1006DC840);
  sub_10001B104(a2, &v13[v15], &qword_1008DF280, &qword_1006DC840);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10001B104(v13, v10, &qword_1008DF280, &qword_1006DC840);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_100341530(&qword_1008E97E0, &type metadata accessor for AppleExertionScale, &protocol conformance descriptor for AppleExertionScale);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_10000EA04(v13, &qword_1008DF280, &qword_1006DC840);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_10000EA04(v13, &qword_1008E9748, &qword_1006EA2D0);
    v17 = 1;
    return v17 & 1;
  }

  sub_10000EA04(v13, &qword_1008DF280, &qword_1006DC840);
  v17 = 0;
  return v17 & 1;
}

void sub_100341E90()
{
  *(v0 + OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_effortController) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_effortView) = 0;
  v1 = OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_effortHolder;
  type metadata accessor for EffortHolder(0);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC10FitnessApp12EffortHolder__effort;
  v4 = type metadata accessor for AppleExertionScale();
  v5 = *(*(v4 - 8) + 56);
  v5(v2 + v3, 1, 1, v4);
  v5(v2 + v3, 1, 1, v4);
  ObservationRegistrar.init()();
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_dataCalculator) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_workout) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_workoutActivity) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailEffortTableViewCell_noteSink) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100341FE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DF280, &qword_1006DC840);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034206C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DF280, &qword_1006DC840);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003420DC()
{
  result = qword_1008E98D8;
  if (!qword_1008E98D8)
  {
    sub_100141EEC(&unk_1008E98E0, qword_1006EA420);
    sub_100141EEC(&qword_1008E9680, &qword_1006EA1B8);
    sub_10014A6B0(&qword_1008E9698, &qword_1008E9680, &qword_1006EA1B8, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100341530(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E98D8);
  }

  return result;
}

id sub_100342234()
{
  sub_100007C5C(v0 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_achievementDataProvider, v4);
  sub_1000066AC(v4, v4[3]);
  sub_100045DD0(&unk_1008E99D0, type metadata accessor for TrophyCaseSectionViewController, &unk_1006EA490);
  v1 = v0;
  dispatch thunk of AAUIAwardsDataProviding.remove(observer:)();

  sub_100005A40(v4);
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TrophyCaseSectionViewController(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for TrophyCaseSectionViewController(uint64_t a1)
{
  result = qword_1008E99A8;
  if (!qword_1008E99A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100342638(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_transitionAnimatorFromViewController];
  *&v1[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_transitionAnimatorFromViewController] = 0;

  v4 = *&v1[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_transitionAnimator];
  *&v1[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_transitionAnimator] = 0;

  v5 = [v1 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 setDelegate:v1];
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for TrophyCaseSectionViewController(0);
  return objc_msgSendSuper2(&v8, "viewDidAppear:", a1 & 1);
}

id sub_100342850()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  v4 = OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_numberOfCellPerRow;
  *&v0[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_numberOfCellPerRow] = v3;
  result = [v0 view];
  if (result)
  {
    v6 = result;
    [result bounds];
    v8 = v7;

    *&v0[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_cellWidth] = floor((v8 - (10 * v3 + 10)) / *&v0[v4]);
    v9 = *&v0[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_cellHeightsCache];

    return [v9 removeAllObjects];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100342970(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v88 = a3;
  v86 = a2;
  v14 = type metadata accessor for IndexPath();
  v84 = *(v14 - 8);
  v85 = v14;
  __chkstk_darwin(v14);
  v87 = v15;
  v83 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AAUIAwardsDataProviderSection();
  v17 = *(v16 - 8);
  *&v18 = __chkstk_darwin(v16).n128_u64[0];
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a1;
  if ([a1 unearned])
  {
    LODWORD(v81) = 0;
  }

  else
  {
    (*(v17 + 104))(v20, enum case for AAUIAwardsDataProviderSection.goForIt(_:), v16);
    sub_100045DD0(&unk_1008E4DE0, &type metadata accessor for AAUIAwardsDataProviderSection, &protocol conformance descriptor for AAUIAwardsDataProviderSection);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v17 + 8))(v20, v16);
    LODWORD(v81) = v21 ^ 1;
  }

  v79 = type metadata accessor for TrophyCaseAwardDetailViewController();
  v22 = *&v8[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_healthStore];
  v23 = *&v8[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_friendListManager];
  sub_100007C5C(&v8[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_achievementDataProvider], &aBlock);
  v24 = *&v8[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_badgeImageFactory];
  v25 = *&v8[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_resourceProvider];
  v26 = *&v8[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_formattingManager];
  v72 = *&v8[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_localizationProvider];
  v75 = v8;
  v73 = *&v8[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_pauseRingsCoordinator];
  v74 = *&v8[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_fitnessAppContext];
  v76 = *&v8[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_workoutFormattingManager];
  v77 = *&v8[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_workoutDataProvider];
  v27 = v92;
  v78 = v93;
  v28 = sub_1001DF03C(&aBlock, v92);
  v80 = &v68;
  v29 = __chkstk_darwin(v28);
  v31 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31, v29);
  v71 = v22;
  v70 = v23;
  v69 = v24;
  v33 = v25;
  v34 = v26;
  v35 = v72;
  v36 = v73;
  v37 = v74;
  v74 = v37;
  v38 = v76;
  v39 = v77;
  v40 = v82;
  v67 = v27;
  LODWORD(v82) = v81 & 1;
  v65 = v36;
  v66 = v37;
  v41 = v36;
  v42 = v71;
  v43 = v70;
  v44 = v31;
  v45 = v69;
  sub_1006524C4(v40, v71, v70, v44, v69, v33, v34, v35, v65, v66, v38, v39, 0, 0, v81 & 1, 1, 0, v79, v67, v78);
  v81 = v46;

  sub_100005A40(&aBlock);
  v47 = swift_allocObject();
  v48 = v75;
  swift_unknownObjectWeakInit();
  v49 = v83;
  v50 = v84;
  v80 = *(v84 + 16);
  v51 = v85;
  (v80)(v83, v88, v85);
  v52 = (*(v50 + 80) + 24) & ~*(v50 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = v47;
  v54 = *(v50 + 32);
  v54(v53 + v52, v49, v51);
  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (v80)(v49, v88, v51);
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  v54(v56 + v52, v49, v51);
  v57 = objc_allocWithZone(AAUIAchievementDetailTransitionAnimator);
  v93 = sub_100344ACC;
  v94 = v53;
  aBlock = _NSConcreteStackBlock;
  v90 = 1107296256;
  v91 = sub_1000449A8;
  v92 = &unk_1008539F8;
  v58 = _Block_copy(&aBlock);
  v59 = v81;

  v93 = sub_100344AD4;
  v94 = v56;
  aBlock = _NSConcreteStackBlock;
  v90 = 1107296256;
  v91 = sub_1000449A8;
  v92 = &unk_100853A20;
  v60 = _Block_copy(&aBlock);

  v61 = [v57 initWithPresentingViewController:v48 detailViewController:v59 shouldPlayFlipInAnimation:v82 initialBadgeFrame:v86 conversionView:v58 didStartAnimationBlock:v60 didFinishAnimationBlock:{a4, a5, a6, a7}];
  _Block_release(v60);
  _Block_release(v58);

  v62 = *&v48[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_transitionAnimator];
  *&v48[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_transitionAnimator] = v61;

  v63 = [v48 navigationController];
  if (v63)
  {
    v64 = v63;
    [v63 pushViewController:v59 animated:1];
  }
}

void sub_100343134(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong collectionView];

    if (v6)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v8 = [v6 cellForItemAtIndexPath:isa];

      if (v8)
      {
        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (v9)
        {
          [v9 setBadgeHidden:a3 & 1];
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100343278(uint64_t a1)
{
  result = type metadata accessor for AAUIAwardsDataProviderSection();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100343358(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_pauseRingsCoordinator);
    v4 = *(Strong + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_localizationProvider);
    [v4 setPaused:{objc_msgSend(v3, "isPaused")}];

    sub_1000066AC(&v2[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_achievementDataProvider], *&v2[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_achievementDataProvider + 24]);
    *&v2[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_achievements] = dispatch thunk of AAUIAwardsDataProviding.achievements(forSection:)();

    sub_100342850();
    v5 = [v2 collectionView];
    if (v5)
    {
      v6 = v5;
      [v5 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_1003434BC(void *a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithReuseIdentifier:v4 forIndexPath:isa];

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v6;
  }

  result = IndexPath.row.getter();
  v10 = *(v1 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_achievements);
  if ((v10 & 0xC000000000000001) != 0)
  {

    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 8 * result + 32);
    if (!v7)
    {
LABEL_8:

      return v6;
    }

LABEL_7:
    [v7 setPreferredWidth:*(v2 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_cellWidth)];
    v12 = *(v2 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_badgeImageFactory);
    v13 = *(v2 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_localizationProvider);
    sub_1000066AC((v2 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_achievementDataProvider), *(v2 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_achievementDataProvider + 24));
    v14 = v7;
    [v14 configureWithAchievement:v11 badgeImageFactory:v12 locProvider:v13 shouldShowProgressBar:dispatch thunk of AAUIAwardsDataProviding.shouldShowProgressBar(for:)() & 1 formatForFriend:0];

    v11 = v14;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_10034379C(void *a1, uint64_t a2, uint64_t a3)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v5 == a3)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      v8 = objc_allocWithZone(UICollectionReusableView);

      return [v8 init];
    }
  }

  v10 = UICollectionElementKindSectionHeader;
  v11 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = [a1 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:isa];

  type metadata accessor for TrophyCaseSectionHeaderView();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = *(v14 + OBJC_IVAR____TtC10FitnessApp27TrophyCaseSectionHeaderView_titleLabel);
    v16 = v14;
    v13 = v13;
    v17 = sub_10065DD08();
    [v15 setAttributedText:v17];

    v18 = *(v16 + OBJC_IVAR____TtC10FitnessApp27TrophyCaseSectionHeaderView_descriptionLabel);
    v19 = sub_10065DEA0();
    [v18 setAttributedText:v19];
  }

  return v13;
}

void sub_100343AA0(void *a1, uint64_t a2)
{
  v3 = v2;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];

  v7 = IndexPath.row.getter();
  v8 = *(v3 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_achievements);
  if ((v8 & 0xC000000000000001) != 0)
  {

    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_5;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    __break(1u);
    return;
  }

  v18 = *(v8 + 8 * v7 + 32);
LABEL_5:
  v9 = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = [a1 cellForItemAtIndexPath:v9];

  if (v10)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      [v11 badgeRect];
      sub_100342970(v18, v12, a2, v13, v14, v15, v16);
      v17 = v10;
    }

    else
    {
      v17 = v18;
      v18 = v10;
    }
  }
}

void sub_100343F74()
{
  *(v0 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_transitionAnimator) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_transitionAnimatorFromViewController) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_numberOfCellPerRow) = 3;
  *(v0 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_cellWidth) = 0;
  v1 = OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_cellHeightsCache;
  *(v0 + v1) = [objc_allocWithZone(NSCache) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10034402C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v3 = *(v10 - 8);
  __chkstk_darwin(v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v6 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100344324;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100853980;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100045DD0(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50, &qword_1006D8190, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

void *sub_10034432C(void *result, void *a2, void *a3)
{
  if (result)
  {
    if (result == 2)
    {
      v9 = *(v3 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_transitionAnimatorFromViewController);
      if (!v9)
      {
        return 0;
      }

      v10 = v3;
      sub_1000059F8(0, &qword_1008E4DD0, UIViewController_ptr);
      v11 = v9;
      v12 = a3;
      v13 = static NSObject.== infix(_:_:)();

      if ((v13 & 1) == 0)
      {
        return 0;
      }

      v8 = *(v10 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_transitionAnimator);
      if (!v8)
      {
        return 0;
      }
    }

    else
    {
      if (result != 1)
      {
        v16 = static os_log_type_t.fault.getter();
        v17 = HKLogActivity;
        if (os_log_type_enabled(HKLogActivity, v16))
        {
          v18 = v17;
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v21 = v20;
          *v19 = 136315138;
          *(v19 + 4) = sub_10000AFDC(0xD000000000000037, 0x8000000100750B90, &v21);
          _os_log_impl(&_mh_execute_header, v18, v16, "%s found unexpected UINavigationController.Operation; skipping transition", v19, 0xCu);
          sub_100005A40(v20);
        }

        return 0;
      }

      type metadata accessor for TrophyCaseAwardDetailViewController();
      if (![a3 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        return 0;
      }

      type metadata accessor for TrophyCaseSectionViewController(0);
      if (![a2 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        return 0;
      }

      v6 = *(v3 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_transitionAnimatorFromViewController);
      *(v3 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_transitionAnimatorFromViewController) = a2;
      v7 = a2;

      v8 = *(v3 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_transitionAnimator);
      if (!v8)
      {
        return 0;
      }
    }

    v14 = v8;
    v15 = v8;
    return v14;
  }

  return result;
}

void sub_100344534(unint64_t a1)
{
  v4 = v2;
  v6 = IndexPath.row.getter();
  v7 = IndexPath.row.getter();
  v8 = OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_numberOfCellPerRow;
  v9 = *(v4 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_numberOfCellPerRow);
  if (!v9)
  {
    goto LABEL_53;
  }

  if (v7 != 0x8000000000000000 || v9 != -1)
  {
    v3 = v6 - v7 % v9;
    if (__OFSUB__(v6, v7 % v9))
    {
      goto LABEL_54;
    }

    v10 = __OFSUB__(v9, 1);
    v11 = v9 - 1;
    if (v10)
    {
      goto LABEL_55;
    }

    a1 = v3 + v11;
    if (__OFADD__(v3, v11))
    {
      goto LABEL_56;
    }

    v1 = OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_achievements;
    v12 = *(v4 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_achievements);
    if (v12 >> 62)
    {
      goto LABEL_57;
    }

    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v13 - 1;
    if (!__OFSUB__(v13, 1))
    {
      goto LABEL_9;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    if (_CocoaArrayWrapper.endIndex.getter() >= v3)
    {
      while ((v3 & 0x8000000000000000) == 0)
      {
        if (v1)
        {
          v15 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v15 <= v6)
        {
          goto LABEL_64;
        }

        v16 = v6 + 1;
        if ((a1 & 0xC000000000000001) == 0 || v3 == v16)
        {
          swift_bridgeObjectRetain_n();
        }

        else
        {
          sub_1000059F8(0, &qword_1008E8750, ACHAchievement_ptr);
          swift_bridgeObjectRetain_n();
          v17 = v3;
          do
          {
            v18 = v17 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v17);
            v17 = v18;
          }

          while (v16 != v18);
        }

        if (v1)
        {
          _CocoaArrayWrapper.subscript.getter();
          v54 = v19;
          v3 = v20;
          v22 = v21;

          v16 = v22 >> 1;
        }

        else
        {
          v54 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
        }

        v23 = v16 - v3;
        if (__OFSUB__(v16, v3))
        {
          goto LABEL_65;
        }

        v52 = v8;
        v56 = v16 - v3;
        if (!v23)
        {
          swift_unknownObjectRetain();
          v8 = _swiftEmptyArrayStorage;
LABEL_42:
          v57 = v8;
          sub_100140278(&unk_1008E99C0, &unk_1006D2070);
          sub_10014A6B0(&qword_1008E8760, &unk_1008E99C0, &unk_1006D2070, &protocol conformance descriptor for [A]);
          BidirectionalCollection<>.joined(separator:)();

          v33 = String._bridgeToObjectiveC()();

          v34 = OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_cellHeightsCache;
          v35 = [*(v4 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_cellHeightsCache) objectForKey:v33];
          if (v35)
          {
            v36 = v35;
            swift_unknownObjectRelease();
            [v36 doubleValue];
            swift_unknownObjectRelease();

            return;
          }

          v37 = 0.0;
          v38 = v4;
          if (v3 != v16)
          {
            v39 = objc_opt_self();
            if (v3 >= v16)
            {
              goto LABEL_68;
            }

            v40 = v39;
            v41 = OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_cellWidth;
            v42 = *(v4 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_localizationProvider);
            v43 = (v54 + 8 * v3);
            v44 = v56;
            do
            {
              v45 = *v43++;
              [v40 cellHeightForAchievement:v45 preferredWidth:*(v52 + v38) < 3 appliesLargeCellInsets:v42 locProvider:*(v38 + v41)];
              if (v46 > v37)
              {
                v37 = v46;
              }

              --v44;
            }

            while (v44);
          }

          swift_unknownObjectRelease();
          v47 = *(v38 + v34);
          v48 = objc_allocWithZone(NSNumber);
          v49 = v47;
          v50 = [v48 initWithDouble:v37];
          [v49 setObject:v50 forKey:v33];

          swift_unknownObjectRelease();
          return;
        }

        v57 = _swiftEmptyArrayStorage;
        swift_unknownObjectRetain();
        a1 = &v57;
        sub_100073020(0, v23 & ~(v23 >> 63), 0);
        if (v23 < 0)
        {
          goto LABEL_66;
        }

        v53 = v4;
        v4 = 0;
        v8 = v57;
        v55 = v54 + 8 * v3;
        while (1)
        {
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            break;
          }

          if ((v3 + v4) >= v16 || v4 >= v23)
          {
            goto LABEL_52;
          }

          v24 = v16;
          v1 = v3;
          a1 = *(v55 + 8 * v4);
          v25 = [a1 template];
          v26 = [v25 uniqueName];

          if (!v26)
          {
            goto LABEL_69;
          }

          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          v57 = v8;
          v31 = v8[2];
          v30 = v8[3];
          if (v31 >= v30 >> 1)
          {
            a1 = &v57;
            sub_100073020((v30 > 1), v31 + 1, 1);
            v8 = v57;
          }

          v8[2] = v31 + 1;
          v32 = &v8[2 * v31];
          v32[4] = v27;
          v32[5] = v29;
          ++v4;
          v23 = v56;
          v3 = v1;
          v16 = v24;
          if (v6 == v56)
          {
            v4 = v53;
            goto LABEL_42;
          }
        }

        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        v51 = _CocoaArrayWrapper.endIndex.getter();
        v14 = v51 - 1;
        if (__OFSUB__(v51, 1))
        {
          goto LABEL_59;
        }

LABEL_9:
        if (v14 >= a1)
        {
          v6 = a1;
        }

        else
        {
          v6 = v14;
        }

        if (v6 < v3)
        {
          goto LABEL_60;
        }

        a1 = *(v4 + v1);
        v1 = a1 >> 62;
        if (a1 >> 62)
        {
          goto LABEL_61;
        }

        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < v3)
        {
          goto LABEL_62;
        }
      }
    }

    else
    {
LABEL_62:
      __break(1u);
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

uint64_t sub_100344B54(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  type metadata accessor for MetricIdentifier();
  v3[10] = swift_task_alloc();
  sub_100140278(&qword_1008E99E0, &unk_1006FD450);
  v3[11] = swift_task_alloc();
  sub_100140278(&qword_1008E99E8, &qword_1006EA4C0);
  v3[12] = swift_task_alloc();
  sub_100140278(&qword_1008E99F0, &unk_1006FD460);
  v3[13] = swift_task_alloc();
  sub_100140278(&qword_1008E99F8, &qword_1006EA4C8);
  v3[14] = swift_task_alloc();
  sub_100140278(&qword_1008E9A00, &unk_1006FD470);
  v3[15] = swift_task_alloc();
  v4 = type metadata accessor for MetricClickStreamType();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v5 = type metadata accessor for MetricClickStream();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  sub_100140278(&qword_1008E9A08, &qword_1006EA4D0);
  v3[23] = swift_task_alloc();
  v6 = type metadata accessor for MetricClickAction();
  v3[24] = v6;
  v3[25] = *(v6 - 8);
  v3[26] = swift_task_alloc();
  sub_100140278(&qword_1008E9A10, &qword_1006EA4D8);
  v3[27] = swift_task_alloc();
  v7 = type metadata accessor for MetricClick();
  v3[28] = v7;
  v3[29] = *(v7 - 8);
  v3[30] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v3[31] = v8;
  v3[32] = *(v8 - 8);
  v3[33] = swift_task_alloc();
  v9 = type metadata accessor for ImpressionsTrackerFormat();
  v3[34] = v9;
  v3[35] = *(v9 - 8);
  v3[36] = swift_task_alloc();
  sub_100140278(&unk_1008EAEF0, &unk_1006E9510);
  v3[37] = swift_task_alloc();
  sub_100140278(&unk_1008E4DA0, &unk_1006E3360);
  v3[38] = swift_task_alloc();
  sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  sub_100140278(&qword_1008E4DB0, &qword_1006E3370);
  v3[41] = swift_task_alloc();
  v10 = type metadata accessor for MetricPage();
  v3[42] = v10;
  v3[43] = *(v10 - 8);
  v3[44] = swift_task_alloc();
  v11 = type metadata accessor for MetricClickElement();
  v3[45] = v11;
  v3[46] = *(v11 - 8);
  v3[47] = swift_task_alloc();
  v12 = type metadata accessor for MetricLocation();
  v3[48] = v12;
  v3[49] = *(v12 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[53] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[54] = v13;
  v3[55] = v14;

  return _swift_task_switch(sub_100345224, v13, v14);
}

uint64_t sub_100345224()
{
  v1 = [*(v0 + 72) collectionView];
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v4 = [v2 cellForItemAtIndexPath:isa];
  *(v0 + 448) = v4;

  if (!v4)
  {
    goto LABEL_11;
  }

  type metadata accessor for SeymourWorkoutRecommendationCollectionViewCell();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_11:

    goto LABEL_15;
  }

  v6 = (v5 + OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_recommendation);
  if (*(v5 + OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_recommendation + 8))
  {
    v19 = *(v0 + 408);
    v7 = *(v0 + 392);
    v20 = *(v0 + 384);
    v21 = *(v0 + 416);
    v8 = *(v0 + 368);
    v9 = *(v0 + 376);
    swift_bridgeObjectRetain_n();
    IndexPath.row.getter();
    *(v0 + 504) = enum case for MetricClickElement.lockup(_:);
    v10 = *(v8 + 104);
    *(v0 + 456) = v10;
    *(v0 + 464) = (v8 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v10(v9);
    sub_1004A8614(_swiftEmptyArrayStorage);
    MetricLocation.init(identifier:identifierType:index:name:elementType:entitlementRequired:contentType:metadata:)();
    (*(v7 + 32))(v21, v19, v20);
    *(v0 + 472) = *v6;
    v11 = v6[1];
    *(v0 + 480) = v11;
    if (v11)
    {

      v12 = swift_task_alloc();
      *(v0 + 488) = v12;
      *v12 = v0;
      v12[1] = sub_100345688;
      v14 = *(v0 + 64);

      return sub_100346840(v14, v13);
    }

    (*(*(v0 + 392) + 8))(*(v0 + 416), *(v0 + 384));
  }

LABEL_15:
  v16 = *(v0 + 56);
  v17 = type metadata accessor for MetricClickStreamOccurred();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100345688()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {

    v3 = *(v2 + 432);
    v4 = *(v2 + 440);
    v5 = sub_100346644;
  }

  else
  {
    v3 = *(v2 + 432);
    v4 = *(v2 + 440);
    v5 = sub_1003457D8;
  }

  return _swift_task_switch(v5, v3, v4);
}