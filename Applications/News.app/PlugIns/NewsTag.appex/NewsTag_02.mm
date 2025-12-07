uint64_t sub_10002E850@<X0>(char *a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_1000A28C0();
  *(a2 + 1) = v5;
  v6 = sub_100017A54(&qword_1000E5B10, &qword_1000AB118);
  return sub_10002E614(v4, &a2[*(v6 + 44)]);
}

unint64_t sub_10002E8AC()
{
  result = qword_1000E5B28;
  if (!qword_1000E5B28)
  {
    sub_100017A9C(&unk_1000E5B30, &unk_1000AB160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5B28);
  }

  return result;
}

uint64_t sub_10002E950@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_10002E9A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100018688(a1, a1[3]);
  sub_100017A54(&unk_1000E5C10, &unk_1000AF040);
  result = sub_1000A1A00();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for SessionReporter();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_1000D8080;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10002EA34(void *a1)
{
  sub_100018688(a1, a1[3]);
  sub_100017A54(&unk_1000E5BF0, &unk_1000AB1C8);
  result = sub_1000A1A10();
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_100018688(a1, a1[3]);
  sub_10002F1A8();
  result = sub_1000A1A00();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  sub_100018688(a1, a1[3]);
  sub_100017A54(&unk_1000E5C00, &qword_1000AB1D8);
  result = sub_1000A1A00();
  if (result)
  {
    v4 = result;
    v5 = sub_10002F1F4(v21, v22);
    __chkstk_darwin(v5);
    v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = *v7;
    v10 = type metadata accessor for TelemetryEnablement();
    v20[3] = v10;
    v20[4] = &off_1000D8F90;
    v20[0] = v9;
    type metadata accessor for TelemetryManager(0);
    v11 = swift_allocObject();
    v12 = sub_10002F1F4(v20, v10);
    __chkstk_darwin(v12);
    v14 = (&v19[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v19[3] = v10;
    v19[4] = &off_1000D8F90;
    v19[0] = v16;
    _s7NewsTag16TelemetryManagerC13lastFlushDate33_4E4017AC2BCC1D1AC48C0D84A0E547E910Foundation0G0Vvpfi_0();
    sub_10002F244(v19, v11 + 16);
    *(v11 + 56) = v3;
    v17 = [objc_allocWithZone(NSSNewsAnalyticsTelemetryAnnotator) initWithUserIDProvider:v4];
    swift_unknownObjectRelease();
    sub_100018720(v19);
    *(v11 + 64) = v17;
    sub_100018720(v20);
    sub_100018720(v21);
    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_10002ED1C()
{
  sub_100017A54(&unk_1000E5BF0, &unk_1000AB1C8);
  sub_1000A1AE0();

  return result;
}

uint64_t sub_10002ED88@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100018688(a1, a1[3]);
  sub_100017A54(&qword_1000E5A20, &unk_1000AB018);
  result = sub_1000A1A00();
  if (result)
  {
    v5 = result;
    sub_100018688(a1, a1[3]);
    sub_100017A54(&unk_1000E5C00, &qword_1000AB1D8);
    result = sub_1000A1A00();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for TelemetryEnablement();
      result = swift_allocObject();
      *(result + 16) = v5;
      *(result + 24) = v6;
      a2[3] = v7;
      a2[4] = &off_1000D8F90;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_10002EE94()
{
  v0 = sub_1000A1B50();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A1A60();
  sub_100017A54(&qword_1000E5BD8, &qword_1000AB1B0);
  sub_1000A1AE0();

  v4 = enum case for Scope.singleton(_:);
  v5 = *(v1 + 104);
  v5(v3, enum case for Scope.singleton(_:), v0);
  sub_1000A1960();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_1000A1A60();
  sub_100017A54(&qword_1000E5BE0, &qword_1000AB1B8);
  sub_1000A1AE0();

  v5(v3, v4, v0);
  sub_1000A1960();

  v6(v3, v0);
  sub_1000A1A60();
  sub_100017A54(&qword_1000E5BE8, &qword_1000AB1C0);
  sub_1000A1AE0();

  sub_1000A1A60();
  type metadata accessor for TelemetryManager(0);
  sub_1000A1AD0();

  v5(v3, v4, v0);
  sub_1000A1960();

  v6(v3, v0);
  sub_1000A1A70();
  sub_1000A1AC0();

  return result;
}

unint64_t sub_10002F1A8()
{
  result = qword_1000E5A28;
  if (!qword_1000E5A28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000E5A28);
  }

  return result;
}

uint64_t sub_10002F1F4(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_10002F244(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002F2A8(void *a1, void *a2)
{
  v5 = sub_1000A1810();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v66[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v66[-1] - v10;
  if (![a2 hasIdentifier])
  {
    if (qword_1000E46F0 != -1)
    {
      swift_once();
    }

    v37 = sub_1000A1DF0();
    sub_10002FDC4(v37, static Logger.todayWidgetBanner);
    v13 = sub_1000A1DD0();
    v38 = sub_1000A3070();
    if (!os_log_type_enabled(v13, v38))
    {
      goto LABEL_30;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "TodayBannerValidator will not validate banner with no identifier";
LABEL_28:
    v41 = v38;
    v42 = v13;
    v43 = v39;
    v44 = 2;
    goto LABEL_29;
  }

  if ([a2 hasIsEnabled] && (objc_msgSend(a2, "isEnabled") & 1) == 0)
  {
    if (qword_1000E46F0 != -1)
    {
      swift_once();
    }

    v46 = sub_1000A1DF0();
    sub_10002FDC4(v46, static Logger.todayWidgetBanner);
    v13 = sub_1000A1DD0();
    v38 = sub_1000A3090();
    if (!os_log_type_enabled(v13, v38))
    {
      goto LABEL_30;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "TodayBannerValidator will suppress banner due to isEnabled=false";
    goto LABEL_28;
  }

  if (![a2 hasDaysVisibleToNewSubscribers] || !objc_msgSend(a2, "daysVisibleToNewSubscribers"))
  {
    goto LABEL_18;
  }

  v12 = [a1 bundleSubscription];
  if (!v12)
  {
    if (qword_1000E46F0 != -1)
    {
      swift_once();
    }

    v47 = sub_1000A1DF0();
    sub_10002FDC4(v47, static Logger.todayWidgetBanner);
    v13 = sub_1000A1DD0();
    v38 = sub_1000A3070();
    if (!os_log_type_enabled(v13, v38))
    {
      goto LABEL_30;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    goto LABEL_28;
  }

  v13 = v12;
  if (![v12 isSubscribed])
  {
    if (qword_1000E46F0 != -1)
    {
      swift_once();
    }

    v48 = sub_1000A1DF0();
    sub_10002FDC4(v48, static Logger.todayWidgetBanner);
    v49 = sub_1000A1DD0();
    v50 = sub_1000A3090();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_68;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    goto LABEL_67;
  }

  v14 = [v13 initialPurchaseTimestamp];
  if (!v14)
  {
    if (qword_1000E46F0 != -1)
    {
      swift_once();
    }

    v60 = sub_1000A1DF0();
    sub_10002FDC4(v60, static Logger.todayWidgetBanner);
    v49 = sub_1000A1DD0();
    v50 = sub_1000A3070();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_68;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
LABEL_67:
    _os_log_impl(&_mh_execute_header, v49, v50, v52, v51, 2u);

LABEL_68:

    goto LABEL_30;
  }

  v15 = v14;
  [v14 doubleValue];
  sub_1000A17C0();
  sub_1000A1800();
  sub_1000A1760();
  v17 = v16;
  v18 = v9;
  v19 = *(v6 + 8);
  v19(v18, v5);
  v20 = v17 / 86400.0;
  if (COERCE__INT64(fabs(v17 / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_75;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v21 = v20;
  v22 = [a2 daysVisibleToNewSubscribers];
  if (v21 >= 1 && v22 < v21)
  {
    if (qword_1000E46F0 != -1)
    {
      swift_once();
    }

    v61 = sub_1000A1DF0();
    sub_10002FDC4(v61, static Logger.todayWidgetBanner);
    v62 = sub_1000A1DD0();
    v63 = sub_1000A3090();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 134217984;
      *(v64 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v62, v63, "TodayBannerValidator will suppress banner due to daysVisibleToNewSubscribers limit reached. daysSubscribed=%lld", v64, 0xCu);
    }

    v19(v11, v5);
    return 0;
  }

  v19(v11, v5);

LABEL_18:
  sub_10002F244(v2 + 16, v66);
  sub_100018688(v66, v66[3]);
  result = [a2 identifier];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v25 = result;
  v26 = sub_1000A2D40();
  v28 = v27;

  v5 = sub_100065928(v26, v28);
  v30 = v29;
  LOBYTE(v25) = v31;

  sub_100018720(v66);
  if (v25)
  {
    if (qword_1000E46F0 != -1)
    {
      swift_once();
    }

    v32 = sub_1000A1DF0();
    sub_10002FDC4(v32, static Logger.todayWidgetBanner);
    v33 = sub_1000A1DD0();
    v34 = sub_1000A3090();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_42;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "TodayBannerValidator validating banner due to no state";
LABEL_41:
    _os_log_impl(&_mh_execute_header, v33, v34, v36, v35, 2u);

LABEL_42:

    return 1;
  }

  if ([a2 hasNumberOfAppearancesToHide] && objc_msgSend(a2, "numberOfAppearancesToHide") && v5 >= objc_msgSend(a2, "numberOfAppearancesToHide"))
  {
    if (qword_1000E46F0 == -1)
    {
LABEL_56:
      v53 = sub_1000A1DF0();
      sub_10002FDC4(v53, static Logger.todayWidgetBanner);
      v13 = sub_1000A1DD0();
      v54 = sub_1000A3090();
      if (!os_log_type_enabled(v13, v54))
      {
        goto LABEL_30;
      }

      v55 = swift_slowAlloc();
      *v55 = 134217984;
      *(v55 + 4) = v5;
      v40 = "TodayBannerValidator will suppress banner due to numberOfAppearancesToHide reached. numberOfAppearances=%lu";
      v41 = v54;
      v42 = v13;
      v43 = v55;
      v44 = 12;
LABEL_29:
      _os_log_impl(&_mh_execute_header, v42, v41, v40, v43, v44);

LABEL_30:

      return 0;
    }

LABEL_77:
    swift_once();
    goto LABEL_56;
  }

  if (![a2 hasNumberOfTapsToHide] || !objc_msgSend(a2, "numberOfTapsToHide") || v30 < objc_msgSend(a2, "numberOfTapsToHide"))
  {
    if (qword_1000E46F0 != -1)
    {
      swift_once();
    }

    v45 = sub_1000A1DF0();
    sub_10002FDC4(v45, static Logger.todayWidgetBanner);
    v33 = sub_1000A1DD0();
    v34 = sub_1000A3090();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_42;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "TodayBannerValidator validated bannerConfig";
    goto LABEL_41;
  }

  if (qword_1000E46F0 != -1)
  {
    swift_once();
  }

  v56 = sub_1000A1DF0();
  sub_10002FDC4(v56, static Logger.todayWidgetBanner);
  v57 = sub_1000A1DD0();
  v58 = sub_1000A3090();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 134217984;
    *(v59 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v57, v58, "TodayBannerValidator will suppress banner due to numberOfTapsToHide reached. numberOfTaps=%lu", v59, 0xCu);
  }

  return 0;
}

uint64_t sub_10002FD68()
{
  sub_100018720((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10002FDC4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10002FDFC()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_10002FE58(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a5 + 16);
  if (v13)
  {
    v14 = *(a6 + 16);
    v15 = *(type metadata accessor for Session(0) - 8);
    v16 = a5 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v17 = *(v15 + 72);

    do
    {
      sub_100030070(v16, a7);
      v16 += v17;
      --v13;
    }

    while (v13);
    sub_100028E34(0, &qword_1000E76B0, OS_os_log_ptr);
    v18 = sub_1000A3190();
    v19 = sub_1000A3090();
    sub_1000A1DB0("session reporter will submit, if needed", 39, 2, &_mh_execute_header, v18, v19, _swiftEmptyArrayStorage);

    v20 = swift_allocObject();
    *(v20 + 16) = sub_1000312C8;
    *(v20 + 24) = v12;
    v23[4] = sub_1000312F0;
    v23[5] = v20;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = sub_1000311D0;
    v23[3] = &unk_1000D80E0;
    v21 = _Block_copy(v23);

    [v14 submitEventsIfNeededWithCompletion:v21];
    _Block_release(v21);
  }

  else
  {

    a1(v22);
  }
}

void sub_100030070(uint64_t a1, void *a2)
{
  v138 = a2;
  v3 = sub_100017A54(&unk_1000E5DD0, &unk_1000AB260);
  __chkstk_darwin(v3 - 8);
  v137 = &v105 - v4;
  v113 = type metadata accessor for EngagementEvent(0);
  v115 = *(v113 - 8);
  __chkstk_darwin(v113);
  v106 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for VisibleRectChangedEvent(0);
  v122 = *(v119 - 8);
  __chkstk_darwin(v119);
  v133 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100017A54(&qword_1000E5818, &unk_1000AAE00);
  v8 = __chkstk_darwin(v7 - 8);
  v120 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v135 = &v105 - v10;
  v11 = type metadata accessor for DisappearanceEvent(0);
  __chkstk_darwin(v11 - 8);
  v114 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for AppearanceEvent(0);
  v13 = __chkstk_darwin(v136);
  v125 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v105 - v15;
  v17 = sub_1000A1810();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = NTSharedLog();
  if (!v134)
  {
LABEL_74:
    __break(1u);
    return;
  }

  sub_100017A54(&unk_1000E5270, &unk_1000AAC10);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000AA7D0;
  v131 = type metadata accessor for AppearanceEvent;
  sub_100032A10(a1, v16, type metadata accessor for AppearanceEvent);
  v128 = a1;
  v132 = *(v18 + 32);
  (v132)(v20, v16, v17);
  sub_100032AD8(&qword_1000E5810, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v22 = sub_1000A3550();
  v24 = v23;
  v25 = *(v18 + 8);
  v25(v20, v17);
  *(v21 + 56) = &type metadata for String;
  v26 = sub_10001A97C();
  *(v21 + 64) = v26;
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  v27 = type metadata accessor for Session(0);
  v107 = *(v27 + 28);
  v28 = v114;
  sub_100032A10(v128 + v107, v114, type metadata accessor for DisappearanceEvent);
  (v132)(v20, v28, v17);
  v29 = v128;
  v30 = sub_1000A3550();
  v32 = v31;
  v121 = v17;
  v109 = v18 + 8;
  v108 = v25;
  v25(v20, v17);
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v26;
  *(v21 + 72) = v30;
  *(v21 + 80) = v32;
  v132 = v27;
  v111 = *(v27 + 24);
  v33 = v135;
  sub_100028B94(v29 + v111, v135, &qword_1000E5818, &unk_1000AAE00);
  v34 = v115 + 48;
  v110 = *(v115 + 48);
  v35 = v110(v33, 1, v113);
  sub_10001FE6C(v33, &qword_1000E5818, &unk_1000AAE00);
  v36 = 1702195828;
  if (v35 == 1)
  {
    v36 = 0x65736C6166;
  }

  v37 = 0xE400000000000000;
  *(v21 + 136) = &type metadata for String;
  *(v21 + 144) = v26;
  if (v35 == 1)
  {
    v37 = 0xE500000000000000;
  }

  *(v21 + 112) = v36;
  *(v21 + 120) = v37;
  v38 = sub_1000A3090();
  v39 = v134;
  sub_1000A1DB0("reporting widget session, appearedAt=%{public}@, disappearedAt=%{public}@, enagaged=%{public}@", 94, 2, &_mh_execute_header, v134, v38, v21);

  v40 = v138 + *(type metadata accessor for NewsTimelineEntry(0) + 20);
  v41 = *&v40[*(type metadata accessor for TodayContent(0) + 40)];
  v42 = *(v41 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_results);
  v43 = objc_autoreleasePoolPush();
  v44 = sub_100068B9C();
  objc_autoreleasePoolPop(v43);
  v45 = [v42 sections];
  v46 = [v45 array];

  v47 = sub_1000A2F10();
  v48 = sub_1000509C0(v47);

  v138 = sub_1000325DC(v48, v44);
  v134 = 0;

  swift_bridgeObjectRelease_n();
  v49 = v125;
  sub_100032A10(v29, v125, v131);
  memset(v143, 0, sizeof(v143));
  v144 = 1;
  v50 = *(v49 + *(v136 + 20));
  v51 = *(v49 + *(v136 + 24));
  v124 = *(v49 + *(v136 + 20));
  v123 = v51;
  v127 = v41;
  v52 = sub_100031310(v143, v50, v51);
  v53 = v126;
  if ([v126 respondsToSelector:"widgetDidAppearAtDate:withTrackableWidgetState:"])
  {

    isa = sub_1000A1770().super.isa;
    [v53 widgetDidAppearAtDate:isa withTrackableWidgetState:v52];
  }

  v112 = v52;
  v115 = v34;
  v55 = *(v29 + *(v132 + 20));
  v56 = &selRef_colorWithRed_green_blue_alpha_;
  v118 = *(v55 + 16);
  if (v118)
  {
    v57 = 0;
    v58 = 0;
    v117 = v55 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
    v59 = v137;
    v116 = v55;
    while (1)
    {
      v60 = v138;
      if (v58 >= *(v55 + 16))
      {
        break;
      }

      v129 = v57;
      v61 = v133;
      sub_100032A10(v117 + *(v122 + 72) * v58, v133, type metadata accessor for VisibleRectChangedEvent);
      v62 = (v61 + *(v119 + 20));
      v63 = v62[1];
      v141[0] = *v62;
      v141[1] = v63;
      v142 = 0;
      v64 = sub_100031310(v141, v124, v123);
      v65 = *(v64 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_results);
      v66 = objc_autoreleasePoolPush();
      v67 = sub_100068B9C();
      objc_autoreleasePoolPop(v66);
      v68 = [v65 sections];
      v69 = [v68 array];

      v70 = sub_1000A2F10();
      v71 = sub_1000509C0(v70);

      v72 = v134;
      v73 = sub_1000325DC(v71, v67);

      swift_bridgeObjectRelease_n();
      if (v60 >> 62)
      {
        v74 = sub_1000A33D0();
      }

      else
      {
        v74 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v134 = v72;
      v130 = v64;
      v75 = v73 & 0xFFFFFFFFFFFFFF8;
      if (v73 >> 62)
      {
        v76 = sub_1000A33D0();
      }

      else
      {
        v76 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v77 = 0;
      v78 = 0;
      v131 = (v58 + 1);
      v136 = v60 & 0xC000000000000001;
      v135 = v60 & 0xFFFFFFFFFFFFFF8;
      v132 = v60;
      v79 = (v60 + 32);
      v138 = v73;
      v80 = v73 & 0xC000000000000001;
      while (1)
      {
        if (v78 == v74)
        {
          if (v76 == v77)
          {
            goto LABEL_48;
          }

          v81 = 0;
          v78 = v74;
        }

        else
        {
          if (v136)
          {
            v81 = sub_1000A32D0();
            v82 = __OFADD__(v78++, 1);
            if (v82)
            {
              goto LABEL_71;
            }
          }

          else
          {
            if ((v78 & 0x8000000000000000) != 0)
            {
              goto LABEL_70;
            }

            if (v78 >= *(v135 + 16))
            {
              goto LABEL_72;
            }

            v81 = v79[v78];
            swift_unknownObjectRetain();
            v82 = __OFADD__(v78++, 1);
            if (v82)
            {
              goto LABEL_71;
            }
          }

          if (v76 == v77)
          {
            if (!v81)
            {
LABEL_48:

              goto LABEL_49;
            }

            goto LABEL_43;
          }
        }

        if (v80)
        {
          v83 = sub_1000A32D0();
          if (__OFADD__(v77, 1))
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (v77 >= *(v75 + 16))
          {
            goto LABEL_69;
          }

          v83 = v138[v77 + 4];
          swift_unknownObjectRetain();
          if (__OFADD__(v77, 1))
          {
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }
        }

        if (!v81)
        {
          break;
        }

        if (!v83)
        {
          v59 = v137;
LABEL_43:
          swift_unknownObjectRelease();
LABEL_44:

          v53 = v126;
          v29 = v128;
          v49 = v125;
          v85 = v121;
LABEL_45:
          v86 = v120;
          v56 = &selRef_colorWithRed_green_blue_alpha_;
          goto LABEL_46;
        }

        v84 = [v81 isEqual:v83];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v77;
        v59 = v137;
        if ((v84 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      if (v83)
      {
        swift_unknownObjectRelease();
        v53 = v126;
        v29 = v128;
        v49 = v125;
        v85 = v121;
        v59 = v137;
        goto LABEL_45;
      }

LABEL_49:
      v53 = v126;
      v29 = v128;
      v49 = v125;
      v85 = v121;
      v59 = v137;
      v86 = v120;
      v56 = &selRef_colorWithRed_green_blue_alpha_;
      if (v129)
      {
LABEL_10:
        sub_100032A78(v133, type metadata accessor for VisibleRectChangedEvent);

        goto LABEL_11;
      }

LABEL_46:
      if (([v53 respondsToSelector:v56[305]] & 1) == 0)
      {
        goto LABEL_10;
      }

      v87 = v130;

      v88 = v133;
      v89 = sub_1000A1770().super.isa;
      [v53 v56[305]];

      sub_100032A78(v88, type metadata accessor for VisibleRectChangedEvent);
LABEL_11:
      v58 = v131;
      v57 = 1;
      v55 = v116;
      if (v131 == v118)
      {
        goto LABEL_54;
      }
    }

LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v85 = v121;
  v59 = v137;
  v86 = v120;
LABEL_54:

  sub_100028B94(v29 + v111, v86, &qword_1000E5818, &unk_1000AAE00);
  if (v110(v86, 1, v113) == 1)
  {
    sub_10001FE6C(v86, &qword_1000E5818, &unk_1000AAE00);
  }

  else
  {
    v90 = v106;
    sub_100032944(v86, v106, type metadata accessor for EngagementEvent);
    if ([v53 respondsToSelector:"userEngagedWithWidgetAtDate:actionURL:trackableWidgetState:"])
    {
      v91 = *(v113 + 20);
      v92.super.isa = sub_1000A1770().super.isa;
      sub_100028B94(v90 + v91, v59, &unk_1000E5DD0, &unk_1000AB260);
      v93 = sub_1000A1700();
      v94 = *(v93 - 8);
      v96 = 0;
      if ((*(v94 + 48))(v59, 1, v93) != 1)
      {
        sub_1000A1670(v95);
        v96 = v97;
        (*(v94 + 8))(v59, v93);
      }

      [v53 userEngagedWithWidgetAtDate:v92.super.isa actionURL:v96 trackableWidgetState:v127];

      v98 = v106;
    }

    else
    {
      v98 = v90;
    }

    sub_100032A78(v98, type metadata accessor for EngagementEvent);
    v29 = v128;
    v56 = &selRef_colorWithRed_green_blue_alpha_;
  }

  v140 = 0;
  memset(v139, 0, sizeof(v139));
  v99 = sub_100031310(v139, v124, v123);
  v100 = [v53 respondsToSelector:v56[305]];
  v101 = v114;
  if (v100)
  {
    sub_100032A10(v29 + v107, v114, type metadata accessor for DisappearanceEvent);

    v102 = sub_1000A1770().super.isa;
    [v53 v56[305]];

    v101 = v114;
    v108(v114, v85);
  }

  if ([v53 respondsToSelector:"widgetDidDisappearAtDate:withTrackableWidgetState:"])
  {
    sub_100032A10(v29 + v107, v101, type metadata accessor for DisappearanceEvent);
    v103 = v101;
    v104 = sub_1000A1770().super.isa;
    [v53 widgetDidDisappearAtDate:v104 withTrackableWidgetState:v127];

    sub_100032A78(v49, type metadata accessor for AppearanceEvent);
    v108(v103, v85);
  }

  else
  {

    sub_100032A78(v49, type metadata accessor for AppearanceEvent);
  }
}

uint64_t sub_100031140(uint64_t (*a1)(void))
{
  sub_100028E34(0, &qword_1000E76B0, OS_os_log_ptr);
  v2 = sub_1000A3190();
  v3 = sub_1000A3090();
  sub_1000A1DB0("session reporter did submit, if needed", 38, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);

  return a1();
}

double sub_1000311D0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_100031214(uint64_t a1, uint64_t a2)
{
  sub_100017A54(&unk_1000E5DC0, &qword_1000AADE8);
  swift_allocObject();
  return sub_1000A1BD0();
}

uint64_t sub_100031290()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000312F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100031310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v33 = a1;
  v5 = sub_1000A1810();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LayoutContext(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_entryID + 8);
  v30 = *(v4 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_entryID);
  v13 = *(v4 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_results);
  v14 = *(v4 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_fetchInfo);
  sub_100032A10(v4 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_layoutContext, v11, type metadata accessor for LayoutContext);
  v15 = *(v4 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_contentID);
  v16 = *(v4 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_contentID + 8);
  v28 = *(v4 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_appearanceType);
  v29 = v15;
  v31 = v31;
  v32 = v32;

  v17 = v13;
  v18 = v14;
  sub_1000A1800();
  v19 = swift_allocObject();
  (*(v6 + 32))(v19 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_contentFetchDate, v8, v5);
  v20 = (v19 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_entryID);
  *v20 = v30;
  v20[1] = v12;
  *(v19 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_results) = v17;
  *(v19 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_fetchInfo) = v18;
  sub_100032944(v11, v19 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_layoutContext, type metadata accessor for LayoutContext);
  v21 = (v19 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_contentID);
  v22 = v28;
  *v21 = v29;
  v21[1] = v16;
  *(v19 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_appearanceType) = v22;
  v23 = v19 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_visibleRect;
  v24 = v33;
  *(v23 + 32) = *(v33 + 32);
  v25 = v24[1];
  *v23 = *v24;
  *(v23 + 16) = v25;
  v26 = v32;
  *(v19 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_stackKind) = v31;
  *(v19 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_stackLocation) = v26;
  return v19;
}

unint64_t sub_100031620(uint64_t a1)
{
  sub_1000A3390();
  v2 = sub_1000A2C70();

  return sub_100031AB4(a1, v2);
}

unint64_t sub_100031684(uint64_t a1)
{
  v2 = sub_1000A1700();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageStore.Key(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A35F0();
  sub_100032A10(a1, v8, type metadata accessor for ImageStore.Key);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1000A3600(1uLL);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1000A3600(0);
    sub_100032AD8(&qword_1000E8870, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    sub_1000A2C80();
    (*(v3 + 8))(v5, v2);
  }

  v9 = sub_1000A3620();
  return sub_100031C4C(a1, v9);
}

unint64_t sub_10003188C(uint64_t a1)
{
  sub_1000A2D40();
  sub_1000A35F0();
  sub_1000A2DD0();
  v2 = sub_1000A3620();

  return sub_1000320C4(a1, v2);
}

unint64_t sub_10003191C(uint64_t a1, uint64_t a2)
{
  sub_1000A35F0();
  sub_1000A2DD0();
  v4 = sub_1000A3620();

  return sub_1000321C8(a1, a2, v4);
}

unint64_t sub_100031994(uint64_t a1)
{
  sub_1000A1700();
  sub_100032AD8(&qword_1000E8870, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v2 = sub_1000A2C70();

  return sub_100032280(a1, v2);
}

unint64_t sub_100031A2C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000A3250(*(v2 + 40));

  return sub_100032440(a1, v4);
}

unint64_t sub_100031A70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000A3170(*(v2 + 40));

  return sub_100032508(a1, v4);
}

unint64_t sub_100031AB4(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1000A3390();
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_1000A2CE0();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_100031C4C(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v4 = sub_1000A1700();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v39 = &v34 - v8;
  v43 = sub_100017A54(&qword_1000E5E00, &unk_1000AB280);
  __chkstk_darwin(v43);
  v10 = &v34 - v9;
  v11 = type metadata accessor for ImageStore.Key(0) - 8;
  v12 = __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v17 = &v34 - v16;
  v45 = v2;
  v18 = *(v2 + 32);
  v19 = v2 + 64;
  v20 = -1 << v18;
  v21 = a2 & ~v20;
  if ((*(v19 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v22 = *(v15 + 72);
    v41 = ~v20;
    v42 = v22;
    v23 = (v5 + 48);
    v36 = (v5 + 32);
    v37 = v19;
    v24 = (v5 + 8);
    v38 = v14;
    v35 = v24;
    while (1)
    {
      sub_100032A10(*(v45 + 48) + v42 * v21, v17, type metadata accessor for ImageStore.Key);
      v25 = *(v43 + 48);
      sub_100032A10(v17, v10, type metadata accessor for ImageStore.Key);
      sub_100032A10(v44, &v10[v25], type metadata accessor for ImageStore.Key);
      v26 = *v23;
      if ((*v23)(v10, 1, v4) == 1)
      {
        break;
      }

      sub_100032A10(v10, v14, type metadata accessor for ImageStore.Key);
      if (v26(&v10[v25], 1, v4) == 1)
      {
        sub_100032A78(v17, type metadata accessor for ImageStore.Key);
        (*v24)(v14, v4);
LABEL_4:
        sub_10001FE6C(v10, &qword_1000E5E00, &unk_1000AB280);
        goto LABEL_5;
      }

      v27 = *v36;
      v28 = v39;
      (*v36)(v39, v14, v4);
      v29 = v40;
      v27(v40, &v10[v25], v4);
      v24 = v35;
      LOBYTE(v27) = sub_1000A16B0();
      v30 = *v24;
      v31 = v29;
      v14 = v38;
      (*v24)(v31, v4);
      v32 = v28;
      v19 = v37;
      v30(v32, v4);
      sub_100032A78(v17, type metadata accessor for ImageStore.Key);
      sub_100032A78(v10, type metadata accessor for ImageStore.Key);
      if (v27)
      {
        return v21;
      }

LABEL_5:
      v21 = (v21 + 1) & v41;
      if (((*(v19 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        return v21;
      }
    }

    sub_100032A78(v17, type metadata accessor for ImageStore.Key);
    if (v26(&v10[v25], 1, v4) == 1)
    {
      sub_100032A78(v10, type metadata accessor for ImageStore.Key);
      return v21;
    }

    goto LABEL_4;
  }

  return v21;
}

unint64_t sub_1000320C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1000A2D40();
      v8 = v7;
      if (v6 == sub_1000A2D40() && v8 == v9)
      {
        break;
      }

      v11 = sub_1000A3560();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000321C8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000A3560())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100032280(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1000A1700();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_100032AD8(&qword_1000E7B60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v15 = sub_1000A2CE0();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_100032440(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100032B20(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000A3260();
      sub_100032B7C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100032508(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100028E34(0, &qword_1000E5DF0, NTSection_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1000A3180();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_1000325DC(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_50;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v5 = _swiftEmptyArrayStorage;
    v29 = a2;
    v30 = v3;
    while (1)
    {
      if (v34)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1000A32D0();
      }

      else
      {
        if (v4 >= *(v33 + 16))
        {
          goto LABEL_45;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v32 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      if (*(a2 + 16) && (v8 = sub_100031A70(isUniquelyReferenced_nonNull_bridgeObject), (v9 & 1) != 0))
      {
        v10 = *(*(a2 + 56) + 8 * v8);
      }

      else
      {
        v10 = _swiftEmptyArrayStorage;
      }

      v11 = v10 >> 62;
      if (v10 >> 62)
      {
        v12 = sub_1000A33D0();
      }

      else
      {
        v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = v5 >> 62;
      if (v5 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1000A33D0();
        v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
        {
LABEL_43:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
        {
          goto LABEL_43;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v13)
        {
          goto LABEL_25;
        }

LABEL_24:
        sub_1000A33D0();
        goto LABEL_25;
      }

      if (v13)
      {
        goto LABEL_24;
      }

      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v14 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = v5;
        goto LABEL_26;
      }

LABEL_25:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1000A32E0();
      v36 = isUniquelyReferenced_nonNull_bridgeObject;
      v15 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_26:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v11)
      {
        v19 = v15;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1000A33D0();
        v15 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_30:
          if (((v17 >> 1) - v16) < v12)
          {
            goto LABEL_47;
          }

          v20 = v15 + 8 * v16 + 32;
          v31 = v15;
          if (v11)
          {
            if (v18 < 1)
            {
              goto LABEL_49;
            }

            sub_1000329AC();
            for (i = 0; i != v18; ++i)
            {
              sub_100017A54(&qword_1000E5DE0, &qword_1000AB278);
              v22 = sub_100051484(v35, i, v10);
              v24 = *v23;
              swift_unknownObjectRetain();
              (v22)(v35, 0);
              *(v20 + 8 * i) = v24;
            }
          }

          else
          {
            sub_100017A54(&unk_1000E6020, &qword_1000AB270);
            swift_arrayInitWithCopy();
          }

          a2 = v29;
          v3 = v30;
          v5 = v36;
          if (v12 >= 1)
          {
            v25 = *(v31 + 16);
            v7 = __OFADD__(v25, v12);
            v26 = v25 + v12;
            if (v7)
            {
              goto LABEL_48;
            }

            *(v31 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_30;
        }
      }

      v5 = v36;
      if (v12 > 0)
      {
        goto LABEL_46;
      }

LABEL_5:
      if (v4 == v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_1000A33D0();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100032944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000329AC()
{
  result = qword_1000E5DE8;
  if (!qword_1000E5DE8)
  {
    sub_100017A9C(&qword_1000E5DE0, &qword_1000AB278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5DE8);
  }

  return result;
}

uint64_t sub_100032A10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100032A78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100032AD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100032BD8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100032C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100017A54(&unk_1000E5DD0, &unk_1000AB260);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100017A54(&qword_1000E52B0, &qword_1000AA890);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100032DA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100017A54(&unk_1000E5DD0, &unk_1000AB260);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100017A54(&qword_1000E52B0, &qword_1000AA890);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for Section(uint64_t a1)
{
  result = qword_1000E5F08;
  if (!qword_1000E5F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100032F28(uint64_t a1)
{
  sub_10003309C(319);
  if (v1 <= 0x3F)
  {
    sub_100028E34(319, &qword_1000E5DF0, NTSection_ptr);
    if (v2 <= 0x3F)
    {
      sub_100033104(319, &unk_1000E5F30, type metadata accessor for Item, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_100033104(319, &qword_1000E8E60, &type metadata accessor for URL, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100033104(319, &unk_1000E5F40, &type metadata accessor for Date, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10003309C(uint64_t a1)
{
  if (!qword_1000E5F18)
  {
    sub_100028E34(255, &unk_1000E5F20, UIColor_ptr);
    v1 = sub_1000A31A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1000E5F18);
    }
  }
}

void sub_100033104(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100033168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a2;
  v52 = a5;
  v53 = type metadata accessor for Item(0);
  v9 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v49);
  v12 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100017A54(&unk_1000E5DD0, &unk_1000AB260);
  __chkstk_darwin(v13 - 8);
  v15 = &v48 - v14;
  sub_10001B390(a1, v55);
  sub_100017A54(&unk_1000E6020, &qword_1000AB270);
  swift_dynamicCast();
  v16 = v55[6];
  sub_10002F244(a3, v55);
  v17 = [v16 identifier];
  v18 = sub_1000A2D40();
  v20 = v19;

  if (!*(a4 + 16))
  {

    goto LABEL_5;
  }

  v21 = sub_10003191C(v18, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_5:
    v26 = 0;
    v25 = 0;
    goto LABEL_6;
  }

  v24 = *(a4 + 56) + 16 * v21;
  v26 = *v24;
  v25 = *(v24 + 8);
  v27 = *v24;
  v28 = v25;
LABEL_6:
  if ([swift_unknownObjectRetain() itemType] || (v54 = &OBJC_PROTOCOL___NTHeadlineProviding, (v30 = swift_dynamicCastObjCProtocolConditional()) == 0))
  {
    swift_unknownObjectRelease();
    sub_1000350F4(v26, v25);
    swift_unknownObjectRelease();
LABEL_8:
    sub_100018720(v55);
    return (*(v9 + 56))(v52, 1, 1, v53);
  }

  v31 = v30;
  v48 = v5;
  swift_unknownObjectRetain();
  v32 = [v31 title];
  if (!v32)
  {
    v41 = sub_1000A3080();
    sub_100017A54(&unk_1000E5270, &unk_1000AAC10);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1000AA7C0;
    v43 = [v31 identifier];
    v44 = sub_1000A2D40();
    v46 = v45;

    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = sub_10001A97C();
    *(v42 + 32) = v44;
    *(v42 + 40) = v46;
    sub_100028E34(0, &qword_1000E76B0, OS_os_log_ptr);
    v47 = sub_1000A3190();
    sub_1000A1DB0("Cannot create an item without a title, identifier=%{public}@", 60, 2, &_mh_execute_header, v47, v41, v42);
    swift_unknownObjectRelease_n();
    sub_1000350F4(v26, v25);
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  v33 = [objc_allocWithZone(FTHeadlineRowOpenURLEngagementDescriptor) initWithHeadline:v31];
  sub_100018688(v55, v55[3]);
  v34 = v33;
  sub_10007BB48(v34, v15);

  swift_unknownObjectRelease_n();
  *v12 = v31;
  v12[1] = v51;
  v35 = v49;
  sub_100027904(v15, v12 + *(v49 + 24), &unk_1000E5DD0, &unk_1000AB260);
  v36 = (v12 + *(v35 + 28));
  *v36 = v26;
  v36[1] = v25;
  v37 = v50;
  sub_100035134(v12, v50, type metadata accessor for Item.Headline);
  v38 = v53;
  swift_storeEnumTagMultiPayload();
  v39 = v37;
  v40 = v52;
  sub_100035134(v39, v52, type metadata accessor for Item);
  (*(v9 + 56))(v40, 0, 1, v38);

  return sub_100018720(v55);
}

uint64_t sub_10003366C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000A1700();
  v22 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = [a1 nameActionURL];
  if (v12)
  {
    v13 = v12;
    sub_1000A16C0();

    (*(v22 + 32))(v11, v9, v6);
    v14 = objc_opt_self();
    sub_1000A1670(v15);
    v17 = v16;
    v18 = [v14 engagementDescriptorWithTargetURL:v16];

    sub_100018688(a2, a2[3]);
    sub_10007BB48(v18, a3);
    swift_unknownObjectRelease();
    return (*(v22 + 8))(v11, v6);
  }

  else
  {
    v20 = *(v22 + 56);

    return v20(a3, 1, 1, v6);
  }
}

uint64_t sub_100033858()
{
  v1 = v0;
  v2 = *(v0 + 8);
  v3 = [v2 nameColorLight];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1000A2D40();
    v7 = v6;

    sub_100028E34(0, &unk_1000E5F20, UIColor_ptr);
    v8._countAndFlagsBits = v5;
    v8._object = v7;
    v9.super.isa = UIColor.init(hex:)(v8).super.isa;
  }

  else if (*v0)
  {
    v9.super.isa = *v0;
  }

  else
  {
    v9.super.isa = [objc_opt_self() labelColor];
  }

  isa = v9.super.isa;
  v11 = [v2 nameColorDark];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1000A2D40();
    v15 = v14;

    sub_100028E34(0, &unk_1000E5F20, UIColor_ptr);
    v16._countAndFlagsBits = v13;
    v16._object = v15;
    v17.super.isa = UIColor.init(hex:)(v16).super.isa;
  }

  else if (*v1)
  {
    v17.super.isa = *v1;
  }

  else
  {
    v17.super.isa = [objc_opt_self() labelColor];
  }

  v18 = v17.super.isa;
  v19 = swift_allocObject();
  *(v19 + 16) = isa;
  *(v19 + 24) = v18;
  v20 = objc_allocWithZone(UIColor);
  v26[4] = sub_100035710;
  v26[5] = v19;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 1107296256;
  v26[2] = sub_10004FE08;
  v26[3] = &unk_1000D8268;
  v21 = _Block_copy(v26);
  v22 = isa;
  v23 = v18;
  [v20 initWithDynamicProvider:v21];
  _Block_release(v21);

  v24 = sub_1000A2740();

  return v24;
}

id sub_100033A90@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Item(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 16);
  if (v11[2])
  {

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v12 = v11[2];
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = sub_100070414(v11);
      v12 = v11[2];
      if (v12)
      {
LABEL_4:
        v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v8 = *(v8 + 72) * (v12 - 1);
        sub_10003519C(v11 + v21 + v8, type metadata accessor for Item);
        v11[2] = v12 - 1;
        *v10 = a1;
        v10[1] = a2;
        swift_storeEnumTagMultiPayload();
        a1 = v11[3];

        if (v12 <= a1 >> 1)
        {
LABEL_5:
          v11[2] = v12;
          sub_100035134(v10, v11 + v21 + v8, type metadata accessor for Item);
          v13 = *v3;
          v21 = *(v3 + 8);
          v14 = type metadata accessor for Section(0);
          sub_100028B94(v3 + *(v14 + 32), a3 + *(v14 + 32), &unk_1000E5DD0, &unk_1000AB260);
          v15 = *(v3 + 24);
          sub_100028B94(v3 + *(v14 + 36), a3 + *(v14 + 36), &qword_1000E52B0, &qword_1000AA890);
          v16 = v21;
          *a3 = v13;
          *(a3 + 8) = v16;
          *(a3 + 16) = v11;
          *(a3 + 24) = v15;
          v17 = v13;
          v18 = v21;

          return v18;
        }

LABEL_13:
        v11 = sub_100084D18((a1 > 1), v12, 1, v11);
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return sub_100034DC4(v3, a3);
}

unint64_t sub_100033D04()
{
  v1 = *v0;
  v2 = 0x6F6974636553746ELL;
  v3 = 0xD000000000000019;
  v4 = 0x69746341656D616ELL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x736D657469;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_100033DE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000354BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100033E18(uint64_t a1)
{
  v2 = sub_100034AAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100033E54(uint64_t a1)
{
  v2 = sub_100034AAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100033E90(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = sub_100017A54(&qword_1000E52B0, &qword_1000AA890);
  __chkstk_darwin(v39);
  v40 = &v32 - v3;
  v41 = sub_100017A54(&unk_1000E5DD0, &unk_1000AB260);
  __chkstk_darwin(v41);
  v5 = &v32 - v4;
  v6 = sub_100017A54(&qword_1000E5F80, &qword_1000AB348);
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for Section(0);
  __chkstk_darwin(v9);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100018688(a1, a1[3]);
  sub_100034AAC();
  v12 = v43;
  sub_1000A3640();
  if (v12)
  {
    v15 = a1;
LABEL_4:
    sub_100018720(v15);
    return;
  }

  v37 = v5;
  v43 = v9;
  v13 = v11;
  v14 = v42;
  v46 = 0;
  sub_100034B00();
  sub_1000A3470();
  v36 = a1;
  if (v45 >> 60 == 15)
  {
    v16 = 0;
    goto LABEL_7;
  }

  v17 = v44;
  v18 = v45;
  sub_100028E34(0, &unk_1000E7DD0, NSKeyedUnarchiver_ptr);
  sub_100028E34(0, &unk_1000E5F20, UIColor_ptr);
  v19 = sub_1000A30A0();
  if (!v19)
  {
    sub_100034B54();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
    sub_100034E28(v17, v18);
    (*(v14 + 8))(v8, v6);
    v15 = v36;
    goto LABEL_4;
  }

  v24 = v19;
  sub_100034E28(v17, v18);
  v16 = v24;
LABEL_7:
  v35 = v16;
  *v11 = v16;
  v46 = 1;
  sub_1000A34B0();
  v20 = v8;
  v21 = v44;
  v22 = v45;
  sub_100028E34(0, &unk_1000E7DD0, NSKeyedUnarchiver_ptr);
  sub_100028E34(0, &qword_1000E5DF0, NTSection_ptr);
  v23 = sub_1000A30A0();
  v33 = v21;
  v34 = v22;
  if (v23)
  {
    *(v13 + 8) = v23;
    sub_100017A54(&qword_1000E5FA8, &qword_1000AB350);
    v46 = 2;
    sub_100034BA8();
    v25 = v20;
    sub_1000A34B0();
    v26 = v33;
    *(v13 + 16) = v44;
    LOBYTE(v44) = 3;
    v29 = sub_1000A3490();
    v30 = v43;
    *(v13 + 24) = v29 & 1;
    LOBYTE(v44) = 4;
    sub_100034C5C();
    v31 = v37;
    sub_1000A34B0();
    sub_100027904(v31, v13 + *(v30 + 32), &unk_1000E5DD0, &unk_1000AB260);
    LOBYTE(v44) = 5;
    sub_100034D10();
    sub_1000A34B0();
    (*(v14 + 8))(v25, v6);
    sub_10001AA1C(v26, v34);
    sub_100027904(v40, v13 + *(v30 + 36), &qword_1000E52B0, &qword_1000AA890);
    sub_100034DC4(v13, v38);
    sub_100018720(v36);
    sub_10003519C(v13, type metadata accessor for Section);
  }

  else
  {
    sub_100034B54();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();
    sub_10001AA1C(v33, v34);
    (*(v14 + 8))(v20, v6);
    sub_100018720(v36);
  }
}

uint64_t sub_1000345A4(void *a1)
{
  v3 = v1;
  v5 = sub_100017A54(&unk_1000E5FE0, &qword_1000AB358);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  sub_100018688(a1, a1[3]);
  sub_100034AAC();
  sub_1000A3660();
  v9 = *v3;
  if (*v3)
  {
    v10 = objc_opt_self();
    v32 = 0;
    v11 = v9;
    v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v32];
    v13 = v32;
    if (!v12)
    {
      v19 = v13;
      sub_1000A1600();

      swift_willThrow();
      return (*(v6 + 8))(v8, v5);
    }

    v30 = v3;
    v14 = sub_1000A1730();
    v16 = v15;

    v32 = v14;
    v33 = v16;
    v31 = 0;
    sub_100034E3C();
    sub_1000A3520();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);

      v17 = v14;
      v18 = v16;
      return sub_10001AA1C(v17, v18);
    }

    sub_10001AA1C(v14, v16);
    v3 = v30;
  }

  v20 = objc_opt_self();
  v21 = *(v3 + 8);
  v32 = 0;
  v22 = [v20 archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v32];
  v23 = v32;
  if (v22)
  {
    v30 = v3;
    v24 = sub_1000A1730();
    v26 = v25;

    v32 = v24;
    v33 = v26;
    v31 = 1;
    sub_100034E3C();
    sub_1000A3520();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);
      v17 = v24;
      v18 = v26;
    }

    else
    {
      v32 = v24;
      v33 = v26;
      v31 = 1;
      sub_1000A3520();
      v32 = *(v30 + 16);
      v31 = 2;

      sub_100017A54(&qword_1000E5FA8, &qword_1000AB350);
      sub_100034E90();
      sub_1000A3520();

      LOBYTE(v32) = 3;
      sub_1000A34F0();
      v29 = v26;
      type metadata accessor for Section(0);
      LOBYTE(v32) = 4;
      sub_100017A54(&unk_1000E5DD0, &unk_1000AB260);
      sub_100034F44();
      sub_1000A3520();
      LOBYTE(v32) = 5;
      sub_100017A54(&qword_1000E52B0, &qword_1000AA890);
      sub_100034FF8();
      sub_1000A3520();
      (*(v6 + 8))(v8, v5);
      v17 = v24;
      v18 = v29;
    }

    return sub_10001AA1C(v17, v18);
  }

  v28 = v23;
  sub_1000A1600();

  swift_willThrow();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100034AAC()
{
  result = qword_1000E5F88;
  if (!qword_1000E5F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5F88);
  }

  return result;
}

unint64_t sub_100034B00()
{
  result = qword_1000E5F90;
  if (!qword_1000E5F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5F90);
  }

  return result;
}

unint64_t sub_100034B54()
{
  result = qword_1000E5FA0;
  if (!qword_1000E5FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5FA0);
  }

  return result;
}

unint64_t sub_100034BA8()
{
  result = qword_1000E5FB0;
  if (!qword_1000E5FB0)
  {
    sub_100017A9C(&qword_1000E5FA8, &qword_1000AB350);
    sub_1000350AC(&qword_1000E5FB8, type metadata accessor for Item, &unk_1000AF2B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5FB0);
  }

  return result;
}

unint64_t sub_100034C5C()
{
  result = qword_1000E5FC0;
  if (!qword_1000E5FC0)
  {
    sub_100017A9C(&unk_1000E5DD0, &unk_1000AB260);
    sub_1000350AC(&qword_1000E5FC8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5FC0);
  }

  return result;
}

unint64_t sub_100034D10()
{
  result = qword_1000E5FD0;
  if (!qword_1000E5FD0)
  {
    sub_100017A9C(&qword_1000E52B0, &qword_1000AA890);
    sub_1000350AC(&qword_1000E4CB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5FD0);
  }

  return result;
}

uint64_t sub_100034DC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Section(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100034E28(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001AA1C(result, a2);
  }

  return result;
}

unint64_t sub_100034E3C()
{
  result = qword_1000E7A20;
  if (!qword_1000E7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7A20);
  }

  return result;
}

unint64_t sub_100034E90()
{
  result = qword_1000E5FF0;
  if (!qword_1000E5FF0)
  {
    sub_100017A9C(&qword_1000E5FA8, &qword_1000AB350);
    sub_1000350AC(&qword_1000E5FF8, type metadata accessor for Item, &unk_1000AF290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5FF0);
  }

  return result;
}

unint64_t sub_100034F44()
{
  result = qword_1000E6000;
  if (!qword_1000E6000)
  {
    sub_100017A9C(&unk_1000E5DD0, &unk_1000AB260);
    sub_1000350AC(&qword_1000E7A50, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6000);
  }

  return result;
}

unint64_t sub_100034FF8()
{
  result = qword_1000E6010;
  if (!qword_1000E6010)
  {
    sub_100017A9C(&qword_1000E52B0, &qword_1000AA890);
    sub_1000350AC(&qword_1000E4CC8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6010);
  }

  return result;
}

uint64_t sub_1000350AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000350F4(void *a1, void *a2)
{
  if (a2)
  {
  }
}

uint64_t sub_100035134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003519C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for Section.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Section.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100035360()
{
  result = qword_1000E6030;
  if (!qword_1000E6030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6030);
  }

  return result;
}

unint64_t sub_1000353B8()
{
  result = qword_1000E6038;
  if (!qword_1000E6038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6038);
  }

  return result;
}

unint64_t sub_100035410()
{
  result = qword_1000E6040;
  if (!qword_1000E6040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6040);
  }

  return result;
}

unint64_t sub_100035468()
{
  result = qword_1000E6048;
  if (!qword_1000E6048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6048);
  }

  return result;
}

uint64_t sub_1000354BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001000B3BA0 == a2;
  if (v3 || (sub_1000A3560() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6974636553746ELL && a2 == 0xED0000617461446ELL || (sub_1000A3560() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1000A3560() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001000B3BC0 == a2 || (sub_1000A3560() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69746341656D616ELL && a2 == 0xED00006C72556E6FLL || (sub_1000A3560() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000B30F0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1000A3560();

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

uint64_t sub_1000356D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100035718(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100035730()
{
  result = [objc_allocWithZone(type metadata accessor for TodayIntent()) init];
  qword_1000F1B90 = result;
  *algn_1000F1B98 = &off_1000D8290;
  return result;
}

id sub_100035770()
{
  result = [objc_allocWithZone(NTPBTodayModuleContentRequest) init];
  if (result)
  {
    v1 = result;
    [result setModuleDescriptorType:0];
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000357D0()
{
  if (qword_1000E46C8 != -1)
  {
    swift_once();
  }

  v0 = qword_1000F1B90;
  v1 = qword_1000F1B90;
  return v0;
}

uint64_t sub_100035834@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() nss_NewsURLForForYou];
  if (v2)
  {
    v3 = v2;
    sub_1000A16C0();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_1000A1700();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

id sub_1000358E0()
{
  result = [objc_allocWithZone(NTPBTodayModuleContentRequest) init];
  if (result)
  {
    v2 = result;
    [result setModuleDescriptorType:1];
    v3 = [v0 tag];
    if (v3)
    {
      v4 = v3;
      v5 = [v4 identifier];
      v6 = v4;
      if (v5)
      {
        v7 = v5;
        [v2 setTagID:v5];

        v8 = [v4 displayString];
        if (!v8)
        {
          sub_1000A2D40();
          v8 = sub_1000A2D10();
        }

        [v2 setName:v8];

        v9 = [v4 nameColorLight];
        [v2 setNameColorLight:v9];

        v6 = [v4 nameColorDark];
        [v2 setNameColorDark:v6];
      }
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100035A5C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 tag];
  if (v3 && (v4 = v3, v5 = [v3 identifier], v4, v5))
  {
    sub_1000A2D40();

    v6 = objc_opt_self();
    v7 = sub_1000A2D10();

    v8 = [v6 nss_NewsURLForTagID:v7];

    sub_1000A16C0();
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_1000A1700();
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, v9, 1, v10);
}

uint64_t sub_100035B90()
{
  v1 = 1701736302;
  v2 = [v0 tag];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 identifier];

    if (v4)
    {
      v1 = sub_1000A2D40();
    }
  }

  return v1;
}

id sub_100035C20()
{
  if (qword_1000E46D0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000F1BA0;
  v1 = objc_allocWithZone(type metadata accessor for TagIntent());
  v2 = v0;
  v3 = [v1 init];
  [v3 setTag:v2];

  return v3;
}

void sub_100035CD0()
{

  v0 = NSSNewsTagWidgetPlaceholderName();
  if (v0)
  {
    v1 = v0;
    type metadata accessor for Tag();
    v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v3 = sub_1000A2D10();

    v4 = [v2 initWithIdentifier:v3 displayString:v1];

    qword_1000F1BA0 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t _s7NewsTag0B6IntentC14equalInContent3lhs3rhsSbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = [a1 tag];
  if (v3 && (v4 = v3, v5 = [v3 identifier], v4, v5))
  {
    v6 = sub_1000A2D40();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [a2 tag];
  if (!v9 || (v10 = v9, v11 = [v9 identifier], v10, !v11))
  {
    v12 = 0;
    v14 = 0;
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_11:
    if (v14)
    {
      if (v6 == v12 && v8 == v14)
      {

        v15 = 1;
      }

      else
      {
        v15 = sub_1000A3560();
      }
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_17;
  }

  v12 = sub_1000A2D40();
  v14 = v13;

  if (v8)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (!v14)
  {
    v15 = 1;
    return v15 & 1;
  }

  v15 = 0;
LABEL_17:

  return v15 & 1;
}

uint64_t sub_100035FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000A1810();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10003608C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000A1810();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

uint64_t sub_100036164(uint64_t a1)
{
  result = sub_1000A1810();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StackKind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StackKind(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100036370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000A1810();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10003643C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000A1810();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_100036514(uint64_t a1)
{
  result = sub_1000A1810();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10003659C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A1810();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003661C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A1810();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000366D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000A1810();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100017A54(&unk_1000E5DD0, &unk_1000AB260);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000367E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000A1810();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100017A54(&unk_1000E5DD0, &unk_1000AB260);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100036928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1000A1810();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1000369B4(uint64_t a1)
{
  if (!qword_1000E8E60)
  {
    sub_1000A1700();
    v1 = sub_1000A31A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1000E8E60);
    }
  }
}

unint64_t sub_100036AB0()
{
  result = qword_1000E62B0;
  if (!qword_1000E62B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E62B0);
  }

  return result;
}

unint64_t sub_100036B08()
{
  result = qword_1000E62B8;
  if (!qword_1000E62B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E62B8);
  }

  return result;
}

unint64_t sub_100036B5C()
{
  result = qword_1000E62C0;
  if (!qword_1000E62C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E62C0);
  }

  return result;
}

uint64_t sub_100036BFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_100036C44(uint64_t a1, uint64_t a2)
{
  if ((sub_1000A17E0() & 1) != 0 && (v4 = type metadata accessor for AppearanceEvent(0), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

BOOL sub_100036CBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A1700();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100017A54(&unk_1000E5DD0, &unk_1000AB260);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_100017A54(&qword_1000E62D0, &unk_1000AD0B0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  if ((sub_1000A17E0() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for EngagementEvent(0) + 20);
  v15 = *(v11 + 48);
  sub_10001AA70(a1 + v14, v13);
  sub_10001AA70(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_10001FE6C(v13, &unk_1000E5DD0, &unk_1000AB260);
      return 1;
    }

    goto LABEL_7;
  }

  sub_10001AA70(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_10001FE6C(v13, &qword_1000E62D0, &unk_1000AD0B0);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_100036BFC(&qword_1000E7B60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v18 = sub_1000A2CE0();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_10001FE6C(v13, &unk_1000E5DD0, &unk_1000AB260);
  return (v18 & 1) != 0;
}

uint64_t sub_100037018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100017A54(&qword_1000E52F0, &unk_1000AA900);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000370E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_100017A54(&qword_1000E52F0, &unk_1000AA900);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SourceView(uint64_t a1)
{
  result = qword_1000E6330;
  if (!qword_1000E6330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000371D8(uint64_t a1)
{
  sub_100037274();
  if (v1 <= 0x3F)
  {
    sub_100022218(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100037274()
{
  if (!qword_1000E5360)
  {
    v0 = sub_1000A1E30();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E5360);
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for MediaIndicatorDisplayStyle(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000372E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10003732C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1000373B8@<X0>(void *a1@<X8>)
{
  v3 = sub_1000A2140();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100017A54(&qword_1000E5408, &qword_1000AAA10);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SourceView(0);
  sub_100037C54(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000A2A50();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1000A3080();
    v13 = sub_1000A2360();
    sub_1000A1DC0();

    sub_1000A2130();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1000375A8()
{
  v1 = sub_1000A2A50();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = sub_1000A2140();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_1000A3080();
    v14 = sub_1000A2360();
    v21 = v0;
    v15 = v2;
    v16 = v14;
    sub_1000A1DC0();

    v2 = v15;
    sub_1000A2130();
    swift_getAtKeyPath();
    v17 = sub_100028064(v12, 0);
    (*(v9 + 8))(v11, v8, v17);
    if (v22)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1000373B8(v7);
    sub_1000A2A40();
    v18 = sub_1000A2A30();
    v19 = *(v2 + 8);
    v19(v5, v1);
    v19(v7, v1);
    v13 = v18 ^ 1;
    return v13 & 1;
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = 0;
  return v13 & 1;
}

void sub_100037808(uint64_t *a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_1000A2770();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SourceView(0);
  v8 = v2 + *(v7 + 24);
  v10 = *v8;
  v9 = *(v8 + 8);
  if (*(v8 + 16))
  {
    sub_100028BFC(v10, v9, 1);
    v11 = v10;
    sub_1000A2750();
    (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
    v12 = sub_1000A27D0();

    (*(v4 + 8))(v6, v3);
    sub_1000375A8();
    sub_1000A28C0();
    sub_1000A1E90();
    *&v40[38] = v44;
    *&v40[6] = v42;
    *&v40[22] = v43;
    *v38 = *v40;
    v41 = 1;
    v35 = v12;
    v36 = 0;
    v37 = 1;
    *&v38[16] = *&v40[16];
    *v39 = *&v40[32];
    *&v39[14] = *(&v44 + 1);
    sub_100017A54(&qword_1000E54B0, &qword_1000AAB00);
    sub_100027AD4();
    v13 = sub_1000A2820();
    sub_100028E24(v10, v9, 1);
    *v34 = v13;
  }

  else
  {
    v35 = *v8;
    v36 = v9;
    sub_10001B33C();
    *&v42 = sub_1000A31D0();
    *(&v42 + 1) = v14;
    v15 = sub_1000A2550();
    v17 = v16;
    v19 = v18;
    v20 = [objc_opt_self() systemFontOfSize:*(v2 + *(v7 + 28) + 8) weight:UIFontWeightBlack];
    sub_1000A2430();
    v21 = sub_1000A24C0();
    v23 = v22;
    v25 = v24;

    sub_100028640(v15, v17, v19 & 1);

    v26 = sub_1000A24E0();
    v28 = v27;
    LOBYTE(v15) = v29;
    v31 = v30;
    sub_100028640(v21, v23, v25 & 1);

    KeyPath = swift_getKeyPath();
    v35 = v26;
    v36 = v28;
    LOBYTE(v37) = v15 & 1;
    *&v38[6] = v31;
    *&v38[14] = KeyPath;
    *&v38[22] = 1;
    v38[30] = 0;
    sub_100017A54(&qword_1000E5710, &unk_1000AAD50);
    sub_100028F98();
    *v34 = sub_1000A2820();
  }
}

uint64_t sub_100037C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017A54(&qword_1000E5408, &qword_1000AAA10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100037CD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100037D18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_100037D84@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1000A28C0();
  v5 = v4;
  sub_1000A26B0();
  v6 = sub_1000A2700();

  KeyPath = swift_getKeyPath();
  sub_1000A28C0();
  sub_1000A1E90();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = v6;
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  result = *&v11;
  *(a2 + 64) = v11;
  return result;
}

unint64_t sub_100037E3C()
{
  result = qword_1000E6370;
  if (!qword_1000E6370)
  {
    sub_100017A9C(&qword_1000E6378, &qword_1000ABAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6370);
  }

  return result;
}

id sub_100037EA0()
{
  result = [objc_opt_self() mainBundle];
  qword_1000E6380 = result;
  return result;
}

void sub_100037EDC()
{
  if (qword_1000E46D8 != -1)
  {
    swift_once();
  }

  v0 = qword_1000E6380;
  v1 = sub_1000A2D10();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    v3 = [v2 imageWithRenderingMode:2];

    qword_1000F1BA8 = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_100037FC8()
{
  if (qword_1000E46D8 != -1)
  {
    swift_once();
  }

  v0 = qword_1000E6380;
  v1 = sub_1000A2D10();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1000F1BB0 = v2;
  }

  else
  {
    __break(1u);
  }
}

id Images.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Images.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Images();
  return objc_msgSendSuper2(&v2, "init");
}

id Images.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Images();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_100038198(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1000381C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_10003820C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100038288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100017A54(&qword_1000E52F0, &unk_1000AA900);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Item.Headline(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000383B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100017A54(&qword_1000E52F0, &unk_1000AA900);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Item.Headline(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000384E8(uint64_t a1)
{
  sub_100038BC0(319, &qword_1000E5370, &type metadata accessor for WidgetRenderingMode);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Item.Headline(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_1000385AC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1000385C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000385E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_100038634(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100017A54(&qword_1000E6450, &unk_1000AC830);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_100017A54(&qword_1000E52F0, &unk_1000AA900);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_100017A54(&qword_1000E6458, qword_1000ABB80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = type metadata accessor for Item.Headline(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[9];
    goto LABEL_11;
  }

  v16 = type metadata accessor for TodayContent(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[10];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[11]);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_100038850(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100017A54(&qword_1000E6450, &unk_1000AC830);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100017A54(&qword_1000E52F0, &unk_1000AA900);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_100017A54(&qword_1000E6458, qword_1000ABB80);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = type metadata accessor for Item.Headline(0);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[9];
        }

        else
        {
          result = type metadata accessor for TodayContent(0);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[11]) = (a2 - 1);
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[10];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_100038A74(uint64_t a1)
{
  sub_100038BC0(319, &qword_1000E64C8, &type metadata accessor for RedactionReasons);
  if (v1 <= 0x3F)
  {
    sub_100038BC0(319, &qword_1000E5370, &type metadata accessor for WidgetRenderingMode);
    if (v2 <= 0x3F)
    {
      sub_100038BC0(319, &qword_1000E64D0, &type metadata accessor for WidgetFamily);
      if (v3 <= 0x3F)
      {
        sub_100038C14();
        if (v4 <= 0x3F)
        {
          type metadata accessor for Item.Headline(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for TodayContent(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100038BC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000A1E30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100038C14()
{
  if (!qword_1000E64D8)
  {
    v0 = sub_1000A2810();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E64D8);
    }
  }
}

uint64_t sub_100038C80@<X0>(void *a1@<X8>)
{
  v3 = sub_1000A2140();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100017A54(&qword_1000E5408, &qword_1000AAA10);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for HeadlineCell(0);
  sub_100028B94(v1 + *(v10 + 20), v9, &qword_1000E5408, &qword_1000AAA10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000A2A50();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1000A3080();
    v13 = sub_1000A2360();
    sub_1000A1DC0();

    sub_1000A2130();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100038E88@<X0>(void *a1@<X8>)
{
  v3 = sub_1000A2140();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100017A54(&qword_1000E6570, &qword_1000ABCA0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for HeadlineCell(0);
  sub_100028B94(v1 + *(v10 + 24), v9, &qword_1000E6570, &qword_1000ABCA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000A2B10();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1000A3080();
    v13 = sub_1000A2360();
    sub_1000A1DC0();

    sub_1000A2130();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100039090()
{
  v1 = sub_1000A21D0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100017A54(&qword_1000E6528, &qword_1000ABC28);
  __chkstk_darwin(v2);
  v4 = &v24 - v3;
  *v4 = sub_1000A2280();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = sub_100017A54(&qword_1000E6530, &qword_1000ABC30);
  sub_1000393C4(v0, &v4[*(v5 + 44)]);
  sub_1000A21C0();
  v6 = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_1000A21B0(v25);
  v7 = *(v0 + *(type metadata accessor for HeadlineCell(0) + 36));
  v8 = [v7 sourceName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1000A2D40();
    v6 = v11;
  }

  else
  {
    v10 = 0;
  }

  v26._countAndFlagsBits = v10;
  v26._object = v6;
  sub_1000A21A0(v26);

  v27._countAndFlagsBits = 8236;
  v27._object = 0xE200000000000000;
  sub_1000A21B0(v27);
  v12 = [v7 title];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1000A2D40();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v28._countAndFlagsBits = v14;
  v28._object = v16;
  sub_1000A21A0(v28);

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_1000A21B0(v29);
  sub_1000A21F0();
  if (qword_1000E46C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = static NSBundle.newsToday2;
  v18 = sub_1000A2540();
  v20 = v19;
  v22 = v21;
  sub_100029050(&qword_1000E6538, &qword_1000E6528, &qword_1000ABC28, &protocol conformance descriptor for VStack<A>);
  sub_1000A25B0();
  sub_100028640(v18, v20, v22 & 1);

  return sub_10001FE6C(v4, &qword_1000E6528, &qword_1000ABC28);
}

uint64_t sub_1000393C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100017A54(&qword_1000E6540, &qword_1000ABC38);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v22[-v9];
  type metadata accessor for HeadlineCell(0);
  sub_1000A28C0();
  sub_1000A1E90();
  v31 = v32;
  v30 = v34;
  v29 = v36;
  v28 = v37;
  v49 = 1;
  v48 = v33;
  v47 = v35;
  *v10 = sub_1000A2170();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_100017A54(&qword_1000E6548, &qword_1000ABC40);
  sub_100039704(a1, &v10[*(v11 + 44)]);
  sub_1000A28C0();
  sub_1000A1E90();
  v12 = &v10[*(v5 + 44)];
  v13 = v39;
  *v12 = v38;
  v12[1] = v13;
  v12[2] = v40;
  sub_1000A28C0();
  sub_1000A1E90();
  v27 = v41;
  v26 = v43;
  v25 = v45;
  v24 = v46;
  v52 = 1;
  v51 = v42;
  v50 = v44;
  v14 = v49;
  LOBYTE(v5) = v48;
  v15 = v47;
  sub_100028B94(v10, v8, &qword_1000E6540, &qword_1000ABC38);
  LOBYTE(a1) = v52;
  v16 = v51;
  v23 = v50;
  *a2 = 0;
  *(a2 + 8) = v14;
  *(a2 + 16) = v31;
  *(a2 + 24) = v5;
  *(a2 + 32) = v30;
  *(a2 + 40) = v15;
  v17 = v28;
  *(a2 + 48) = v29;
  *(a2 + 56) = v17;
  v18 = sub_100017A54(&qword_1000E6550, &qword_1000ABC48);
  sub_100028B94(v8, a2 + *(v18 + 48), &qword_1000E6540, &qword_1000ABC38);
  v19 = a2 + *(v18 + 64);
  *v19 = 0;
  *(v19 + 8) = a1;
  *(v19 + 16) = v27;
  *(v19 + 24) = v16;
  *(v19 + 32) = v26;
  *(v19 + 40) = v23;
  v20 = v24;
  *(v19 + 48) = v25;
  *(v19 + 56) = v20;
  sub_10001FE6C(v10, &qword_1000E6540, &qword_1000ABC38);
  return sub_10001FE6C(v8, &qword_1000E6540, &qword_1000ABC38);
}

uint64_t sub_100039704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for ThumbnailView(0);
  v4 = (v3 - 8);
  v5 = __chkstk_darwin(v3);
  v31 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = (&v31 - v7);
  v9 = sub_100017A54(&qword_1000E6558, &qword_1000ABC50);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = (&v31 - v13);
  *v14 = sub_1000A2880();
  v14[1] = v15;
  v16 = sub_100017A54(&qword_1000E6560, &qword_1000ABC58);
  sub_100039A0C(a1, v14 + *(v16 + 44));
  v17 = type metadata accessor for HeadlineCell(0);
  sub_10003CBBC(a1 + v17[9], v8 + v4[7], type metadata accessor for Item.Headline);
  v18 = a1 + v17[11];
  v19 = *(v18 + 8);
  v21 = *(v18 + 16);
  v20 = *(v18 + 24);
  v22 = *(v18 + 32);
  v23 = sub_100061A50();
  v24 = v17[13];
  LOBYTE(v17) = *(a1 + v17[12]);
  LOBYTE(a1) = *(a1 + v24);
  *v8 = swift_getKeyPath();
  sub_100017A54(&qword_1000E5408, &qword_1000AAA10);
  swift_storeEnumTagMultiPayload();
  v25 = v8 + v4[8];
  *v25 = v19;
  *(v25 + 1) = v21;
  *(v25 + 2) = v20;
  v25[24] = v22;
  *(v8 + v4[9]) = v23;
  *(v8 + v4[10]) = v17;
  *(v8 + v4[11]) = a1;
  sub_100028B94(v14, v12, &qword_1000E6558, &qword_1000ABC50);
  v26 = v31;
  sub_10003CBBC(v8, v31, type metadata accessor for ThumbnailView);
  v27 = v32;
  sub_100028B94(v12, v32, &qword_1000E6558, &qword_1000ABC50);
  v28 = sub_100017A54(&qword_1000E6568, &qword_1000ABC98);
  v29 = v27 + *(v28 + 48);
  *v29 = 0;
  *(v29 + 8) = 1;
  sub_10003CBBC(v26, v27 + *(v28 + 64), type metadata accessor for ThumbnailView);
  sub_10003D3F8(v8, type metadata accessor for ThumbnailView);
  sub_10001FE6C(v14, &qword_1000E6558, &qword_1000ABC50);
  sub_10003D3F8(v26, type metadata accessor for ThumbnailView);
  return sub_10001FE6C(v12, &qword_1000E6558, &qword_1000ABC50);
}

double sub_100039A0C@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100017A54(&qword_1000E56A8, &qword_1000AACE0);
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = __chkstk_darwin(v4);
  v36 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = type metadata accessor for HeadlineCell(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  sub_10003BCAC(&v37);
  v12 = v37;
  sub_10003CBBC(a1, &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeadlineCell);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v33 = swift_allocObject();
  sub_10003D390(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v13, type metadata accessor for HeadlineCell);
  v14 = sub_1000A28C0();
  v31 = v15;
  v32 = v14;
  v29 = v8;
  sub_100039DA8(v8);
  sub_10003CBBC(a1, &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeadlineCell);
  v30 = swift_allocObject();
  sub_10003D390(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v13, type metadata accessor for HeadlineCell);
  sub_10003CBBC(a1, &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeadlineCell);
  v16 = swift_allocObject();
  sub_10003D390(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v13, type metadata accessor for HeadlineCell);
  v18 = v34;
  v17 = v35;
  v19 = *(v34 + 16);
  v20 = v36;
  v19(v36, v8, v35);
  *a2 = v12;
  *(a2 + 1) = sub_10003D8D8;
  *(a2 + 2) = 0;
  *(a2 + 3) = sub_10003CC28;
  v21 = v32;
  *(a2 + 4) = v33;
  *(a2 + 5) = v21;
  *(a2 + 6) = v31;
  v22 = sub_100017A54(&qword_1000E6578, &qword_1000ABCA8);
  v19(&a2[v22[12]], v20, v17);
  v23 = &a2[v22[16]];
  v24 = v30;
  *v23 = sub_10003D0E0;
  *(v23 + 1) = v24;
  v25 = &a2[v22[20]];
  *v25 = sub_10003D108;
  *(v25 + 1) = v16;
  v26 = *(v18 + 8);

  v26(v29, v17);

  v26(v36, v17);

  return result;
}

uint64_t sub_100039DA8@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = sub_1000A2B10();
  v37 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v39 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v38 = &v35[-v5];
  v40 = sub_100017A54(&qword_1000E56A0, &qword_1000AACD8);
  __chkstk_darwin(v40);
  v7 = &v35[-v6];
  v8 = type metadata accessor for HeadlineCell(0);
  v9 = *(v8 + 36);
  v10 = sub_1000907C8();
  v11 = *(v1 + v9);
  if (v10)
  {
    [v11 sourceNameImageScale];
    v13 = v12;
    v14 = v10;
  }

  else
  {
    v15 = [v11 sourceName];
    if (v15)
    {
      v16 = v15;
      v14 = sub_1000A2D40();
      v13 = v17;
    }

    else
    {
      v14 = 0;
      v13 = 0xE000000000000000;
    }
  }

  v18 = v10 != 0;
  v19 = v1 + *(v8 + 44);
  v20 = *(v19 + 80);
  v21 = *(v19 + 88);
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = type metadata accessor for SourceView(0);
  *&v7[v24[5]] = v23;
  sub_100017A54(&qword_1000E5408, &qword_1000AAA10);
  swift_storeEnumTagMultiPayload();
  *v7 = KeyPath;
  v7[8] = 0;
  v25 = &v7[v24[6]];
  *v25 = v14;
  *(v25 + 1) = v13;
  v36 = v18;
  v25[16] = v18;
  v26 = &v7[v24[7]];
  *v26 = v20;
  v26[1] = v21;
  sub_100028BFC(v14, v13, v18);
  v27 = sub_1000A2720();
  v28 = swift_getKeyPath();
  v29 = &v7[*(v40 + 36)];
  *v29 = v28;
  v29[1] = v27;
  v30 = v38;
  sub_100038E88(v38);
  v31 = v37;
  v32 = v39;
  (*(v37 + 104))(v39, enum case for WidgetFamily.systemSmall(_:), v2);
  sub_10003D730(&qword_1000E6630, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_1000A2EC0();
  sub_1000A2EC0();
  v33 = *(v31 + 8);
  v33(v32, v2);
  v33(v30, v2);
  sub_100028C74();
  sub_1000A2560();
  sub_100028E24(v14, v13, v36);
  return sub_10001FE6C(v7, &qword_1000E56A0, &qword_1000AACD8);
}

uint64_t sub_10003A148@<X0>(uint64_t a2@<X8>)
{
  v32 = sub_100017A54(&qword_1000E6588, &qword_1000ABCB8);
  v25 = *(v32 - 8);
  v3 = v25;
  v4 = __chkstk_darwin(v32);
  v31 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  type metadata accessor for HeadlineCell(0);
  sub_1000A28C0();
  sub_1000A1E90();
  v29 = v37;
  v30 = v35;
  v27 = v40;
  v28 = v39;
  v44 = 1;
  v43 = v36;
  v42 = v38;
  sub_1000A1EA0();
  v26 = v7;
  sub_10003A470(0, 1, v7);
  sub_10003AA80(v41);
  v8 = *&v41[0];
  sub_1000A28C0();
  sub_1000A1F60();
  *&v33[55] = v41[3];
  *&v33[71] = v41[4];
  *&v33[87] = v41[5];
  *&v33[103] = v41[6];
  *&v33[7] = v41[0];
  *&v33[23] = v41[1];
  v34 = 1;
  *&v33[39] = v41[2];
  v9 = v44;
  v10 = v43;
  v11 = v42;
  v12 = *(v3 + 16);
  v13 = v31;
  v14 = v7;
  v15 = v32;
  v12(v31, v14, v32);
  *a2 = 0;
  *(a2 + 8) = v9;
  v16 = v29;
  *(a2 + 16) = v30;
  *(a2 + 24) = v10;
  *(a2 + 32) = v16;
  *(a2 + 40) = v11;
  v17 = v27;
  *(a2 + 48) = v28;
  *(a2 + 56) = v17;
  v18 = sub_100017A54(&qword_1000E65C8, &qword_1000ABD28);
  v12((a2 + v18[12]), v13, v15);
  *(a2 + v18[16]) = v8;
  v19 = a2 + v18[20];
  v20 = *&v33[80];
  *(v19 + 73) = *&v33[64];
  *(v19 + 89) = v20;
  *(v19 + 105) = *&v33[96];
  v21 = *&v33[16];
  *(v19 + 9) = *v33;
  *(v19 + 25) = v21;
  v22 = *&v33[48];
  *(v19 + 41) = *&v33[32];
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v19 + 120) = *&v33[111];
  *(v19 + 57) = v22;
  v23 = *(v25 + 8);

  v23(v26, v15);

  return (v23)(v13, v15);
}

uint64_t sub_10003A470@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v70) = a2;
  v69 = a1;
  v72 = a3;
  v4 = sub_1000A1870();
  v73 = *(v4 - 8);
  v74 = v4;
  __chkstk_darwin(v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1000A1F40();
  v66 = *(v68 - 8);
  v7 = __chkstk_darwin(v68);
  v65 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v62 - v9;
  v10 = type metadata accessor for HeadlineCell(0);
  v11 = *(v3 + *(v10 + 44));
  v75 = sub_1000A2430();
  sub_100017A54(&unk_1000E5270, &unk_1000AAC10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000AA7D0;
  v13 = *(v10 + 36);
  v67 = v3;
  v14 = *(v3 + v13);
  v15 = [v14 identifier];
  v16 = sub_1000A2D40();
  v18 = v17;

  *(v12 + 56) = &type metadata for String;
  v19 = sub_10001A97C();
  *(v12 + 64) = v19;
  *(v12 + 32) = v16;
  *(v12 + 40) = v18;
  v20 = [v14 title];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1000A2D40();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v19;
  *(v12 + 72) = v22;
  *(v12 + 80) = v24;
  v76 = 0;
  v77 = 0xE000000000000000;
  v25 = [v14 language];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1000A2D40();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v85 = v27;
  v86 = v29;
  sub_100017A54(&unk_1000E7E10, &qword_1000ADB20);
  sub_1000A3370();

  v30 = v76;
  v31 = v77;
  *(v12 + 136) = &type metadata for String;
  *(v12 + 144) = v19;
  *(v12 + 112) = v30;
  *(v12 + 120) = v31;
  sub_10001A9D0();
  v32 = sub_1000A3190();
  v33 = sub_1000A3090();
  sub_1000A1DB0("creating titleView for headline with identifier: %@, with title: %@, with language: %@", 86, 2, &_mh_execute_header, v32, v33, v12);

  v34 = [v14 title];
  v71 = v6;
  v63 = v14;
  if (v34)
  {
    v35 = v34;
    sub_1000A2D40();
  }

  v36 = sub_1000A24C0();
  v38 = v37;
  v40 = v39;

  sub_1000A2710();
  v41 = sub_1000A2480();
  v43 = v42;
  v45 = v44;
  v47 = v46;

  sub_100028640(v36, v38, v40 & 1);

  v48 = v64;
  sub_10004A684(v64);
  v49 = v65;
  sub_1000A1F30();
  sub_10003D730(&qword_1000E53D8, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
  v50 = v68;
  v51 = sub_1000A3220();
  v52 = *(v66 + 8);
  v52(v49, v50);
  v52(v48, v50);
  if (v51)
  {
    v53 = 3;
  }

  else
  {
    v53 = v69;
  }

  v54 = v70 & ~v51;
  KeyPath = swift_getKeyPath();
  LODWORD(v68) = v45;
  LOBYTE(v85) = v45 & 1;
  v84 = v54 & 1;
  v69 = v41;
  v70 = v47;
  v76 = v41;
  v77 = v43;
  v78 = v45 & 1;
  v79 = v47;
  v80 = KeyPath;
  v81 = v53;
  v82 = v54 & 1;
  v83 = 0x4059000000000000;
  v56 = v63;
  v57 = [v63 language];
  if (v57)
  {
    v58 = v57;
    sub_1000A2D40();
  }

  v59 = v71;
  sub_1000A1860();
  v60 = [v56 language];
  if (v60)
  {
  }

  sub_100017A54(&qword_1000E65A0, &unk_1000ABD00);
  sub_10003D268();
  sub_1000A2610();

  (*(v73 + 8))(v59, v74);
  sub_100028640(v69, v43, v68 & 1);
}

uint64_t sub_10003AA80@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000A2A50();
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v63 - v8;
  v10 = sub_1000A21D0();
  __chkstk_darwin(v10 - 8);
  v71 = sub_100017A54(&qword_1000E65D0, &qword_1000ABD30);
  v11 = __chkstk_darwin(v71);
  v70 = (&v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v14 = &v63 - v13;
  v15 = type metadata accessor for HeadlineCell(0);
  v16 = (v1 + v15[8]);
  v17 = *v16;
  v18 = v16[1];
  *&v72 = v17;
  *(&v72 + 1) = v18;
  sub_100017A54(&qword_1000E6598, &qword_1000ABCC8);
  sub_1000A27F0();
  v19 = *v84;
  v20 = (v1 + v15[7]);
  v21 = *v20;
  v22 = v20[1];
  *&v72 = v21;
  *(&v72 + 1) = v22;
  sub_1000A27F0();
  if (*v84 > v19)
  {
    result = sub_1000A2820();
    *a1 = result;
    return result;
  }

  v67 = a1;
  v24 = v15[9];
  v25 = *(v1 + v24);
  if ([*(v2 + v24) isAIGenerated])
  {
    sub_1000A21C0();
    v85._object = 0x80000001000B3C90;
    v85._countAndFlagsBits = 0xD000000000000010;
    sub_1000A21B0(v85);
    v86._countAndFlagsBits = sub_100090984();
    sub_1000A21A0(v86);

    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    sub_1000A21B0(v87);
    sub_1000A21F0();
    if (qword_1000E46C0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v26 = static NSBundle.newsToday2;
    v27 = sub_1000A2540();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = sub_1000A2720();
    v35 = *(v2 + v15[11] + 64);
    v36 = sub_1000A2430();
    *v14 = sub_1000A2270();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v37 = sub_100017A54(&qword_1000E65F8, &qword_1000ABD48);
    sub_10003B660(v27, v29, v31 & 1, v33, v36, v34, &v14[*(v37 + 44)]);

    sub_100028640(v27, v29, v31 & 1);

    sub_100029050(&qword_1000E6600, &qword_1000E65D0, &qword_1000ABD30, &protocol conformance descriptor for VStack<A>);
LABEL_7:
    result = sub_1000A2820();
    *v67 = result;
    return result;
  }

  v38 = [v25 storyType];
  if (!v38)
  {
    if ([v25 isBundlePaid])
    {
      v51 = *(v2 + v15[11] + 64);
      sub_1000A2430();
      v52 = sub_1000A2270();
      v77 = 1;
      sub_10003B96C(0x654EAF80E2BFA3EFLL, 0xAB000000002B7377, v2, &v72);
      v80 = *&v73[16];
      v81 = *&v73[32];
      v82 = *&v73[48];
      v83 = *&v73[64];
      v78 = v72;
      v79 = *v73;
      v84[2] = *&v73[16];
      v84[3] = *&v73[32];
      v84[4] = *&v73[48];
      v84[5] = *&v73[64];
      v84[0] = v72;
      v84[1] = *v73;
      sub_100028B94(&v78, &v75, &qword_1000E65D8, &qword_1000ABD38);
      sub_10001FE6C(v84, &qword_1000E65D8, &qword_1000ABD38);

      *&v76[87] = v83;
      *&v76[71] = v82;
      *&v76[55] = v81;
      *&v76[39] = v80;
      *&v76[23] = v79;
      *&v76[7] = v78;
      *&v73[49] = *&v76[48];
      *&v73[65] = *&v76[64];
      *v74 = *&v76[80];
      *&v73[1] = *v76;
      *&v73[17] = *&v76[16];
      v72 = v52;
      v73[0] = v77;
      *&v74[15] = *(&v83 + 1);
      *&v73[33] = *&v76[32];
      sub_100017A54(&qword_1000E65E0, &qword_1000ABD40);
      sub_100029050(&qword_1000E65E8, &qword_1000E65E0, &qword_1000ABD40, &protocol conformance descriptor for VStack<A>);
    }

    goto LABEL_7;
  }

  v63 = v24;
  v39 = v38;
  v40 = sub_1000A2D40();
  v42 = v41;

  *&v72 = v40;
  *(&v72 + 1) = v42;
  sub_10001B33C();
  v43 = sub_1000A2550();
  v64 = v44;
  v65 = v43;
  v46 = v45;
  v66 = v47;
  sub_100038C80(v9);
  sub_1000A2A40();
  sub_10003D730(&qword_1000E65F0, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  v48 = v69;
  LOBYTE(v39) = sub_1000A2CE0();
  v49 = *(v68 + 8);
  v49(v7, v48);
  v49(v9, v48);
  if (v39)
  {
    v50 = sub_1000A2720();
  }

  else
  {
    v50 = sub_100090B18();
  }

  v53 = v50;
  v54 = v2;
  v55 = v67;
  v56 = *(v54 + v15[11] + 64);
  v57 = sub_1000A2430();
  v58 = sub_1000A2270();
  v59 = v70;
  *v70 = v58;
  v59[1] = 0;
  *(v59 + 16) = 1;
  v60 = sub_100017A54(&qword_1000E65F8, &qword_1000ABD48);
  v62 = v64;
  v61 = v65;
  sub_10003B660(v65, v64, v46 & 1, v66, v57, v53, v59 + *(v60 + 44));

  sub_100028640(v61, v62, v46 & 1);

  sub_100029050(&qword_1000E6600, &qword_1000E65D0, &qword_1000ABD30, &protocol conformance descriptor for VStack<A>);
  result = sub_1000A2820();
  *v55 = result;
  return result;
}

uint64_t sub_10003B268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  *a6 = sub_1000A2280();
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  sub_100017A54(a3, a4);
  return a5(a2, a1);
}

uint64_t sub_10003B2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HeadlineCell(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v39 = sub_100017A54(&qword_1000E6588, &qword_1000ABCB8);
  v30 = *(v39 - 8);
  v7 = v30;
  v8 = __chkstk_darwin(v39);
  v38 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  sub_1000A28C0();
  sub_1000A1E90();
  v36 = v42;
  v37 = v40;
  v34 = v45;
  v35 = v44;
  v48 = 1;
  v47 = v41;
  v46 = v43;
  sub_1000A1EA0();
  v33 = v11;
  sub_10003A470(2, 0, v11);
  v12 = sub_1000A26D0();
  sub_10003CBBC(a1, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeadlineCell);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_10003D390(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for HeadlineCell);
  v15 = sub_1000A28C0();
  v31 = v16;
  v32 = v15;
  LOBYTE(v13) = v48;
  v17 = v47;
  v18 = v46;
  v19 = *(v7 + 16);
  v20 = v38;
  v21 = v39;
  v19(v38, v11, v39);
  *a2 = 0;
  *(a2 + 8) = v13;
  v22 = v36;
  *(a2 + 16) = v37;
  *(a2 + 24) = v17;
  *(a2 + 32) = v22;
  *(a2 + 40) = v18;
  v23 = v34;
  *(a2 + 48) = v35;
  *(a2 + 56) = v23;
  v24 = sub_100017A54(&qword_1000E6590, &qword_1000ABCC0);
  v19((a2 + *(v24 + 48)), v20, v21);
  v25 = (a2 + *(v24 + 64));
  *v25 = v12;
  v25[1] = sub_10003D8D8;
  v25[2] = 0;
  v25[3] = sub_10003D1C4;
  v26 = v31;
  v27 = v32;
  v25[4] = v14;
  v25[5] = v27;
  v25[6] = v26;
  v28 = *(v30 + 8);

  v28(v33, v21);

  return (v28)(v20, v21);
}

uint64_t sub_10003B660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a5;
  v34 = a6;
  v32 = a3;
  v36 = a7;
  v10 = sub_100017A54(&qword_1000E6608, &qword_1000ABD50);
  v11 = v10 - 8;
  v12 = __chkstk_darwin(v10);
  v35 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v31[-v14];
  v16 = &v31[*(sub_100017A54(&qword_1000E6610, &qword_1000ABD58) + 36) - v14];
  v17 = *(sub_100017A54(&qword_1000E6618, &qword_1000ABD60) + 28);
  v18 = enum case for Text.Case.uppercase(_:);
  v19 = sub_1000A24B0();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v16 + v17, v18, v19);
  (*(v20 + 56))(v16 + v17, 0, 1, v19);
  *v16 = swift_getKeyPath();
  *v15 = a1;
  *(v15 + 1) = a2;
  LOBYTE(v19) = v32 & 1;
  v15[16] = v32 & 1;
  *(v15 + 3) = a4;
  KeyPath = swift_getKeyPath();
  v22 = &v15[*(sub_100017A54(&qword_1000E6620, &qword_1000ABDC8) + 36)];
  *v22 = KeyPath;
  v23 = v34;
  v22[1] = v33;
  *&v15[*(v11 + 44)] = v23;
  sub_100028630(a1, a2, v19);

  sub_1000A28C0();
  sub_1000A1E90();
  v33 = v39;
  v34 = v37;
  v24 = v41;
  v25 = v42;
  v45 = 1;
  v44 = v38;
  v43 = v40;
  v26 = v35;
  sub_100028B94(v15, v35, &qword_1000E6608, &qword_1000ABD50);
  LOBYTE(v17) = v45;
  LOBYTE(v20) = v44;
  LOBYTE(a2) = v43;
  v27 = v36;
  sub_100028B94(v26, v36, &qword_1000E6608, &qword_1000ABD50);
  v28 = v27 + *(sub_100017A54(&qword_1000E6628, &unk_1000ABDD0) + 48);
  *v28 = 0;
  *(v28 + 8) = v17;
  v29 = v33;
  *(v28 + 16) = v34;
  *(v28 + 24) = v20;
  *(v28 + 32) = v29;
  *(v28 + 40) = a2;
  *(v28 + 48) = v24;
  *(v28 + 56) = v25;
  sub_10001FE6C(v15, &qword_1000E6608, &qword_1000ABD50);
  return sub_10001FE6C(v26, &qword_1000E6608, &qword_1000ABD50);
}

uint64_t sub_10003B96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42[1] = a4;
  v8 = sub_1000A2A50();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v42 - v13;
  v51 = a1;
  v52 = a2;
  sub_10001B33C();
  v49 = sub_1000A31E0();
  v50 = v15;
  v16 = sub_1000A2550();
  v18 = v17;
  LOBYTE(a1) = v19;
  v20 = sub_1000A24C0();
  v43 = v21;
  v44 = v20;
  v23 = v22;
  v45 = v24;
  sub_100028640(v16, v18, a1 & 1);

  sub_100038C80(v14);
  sub_1000A2A40();
  sub_10003D730(&qword_1000E65F0, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  LOBYTE(v16) = sub_1000A2CE0();
  v25 = *(v9 + 8);
  v25(v12, v8);
  v25(v14, v8);
  if (v16)
  {
    v26 = sub_1000A2720();
  }

  else
  {
    v27 = [objc_opt_self() systemPinkColor];
    v26 = sub_1000A2740();
  }

  v51 = v26;
  v29 = v43;
  v28 = v44;
  v30 = sub_1000A2490();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_100028640(v28, v29, v23 & 1);

  sub_1000A28C0();
  sub_1000A1E90();
  v37 = v51;
  v38 = v52;
  v39 = v53;
  v40 = v54;
  LOBYTE(v49) = 1;
  v48 = v52;
  v47 = v54;
  v46 = v34 & 1;
  *a5 = v30;
  *(a5 + 8) = v32;
  *(a5 + 16) = v34 & 1;
  *(a5 + 24) = v36;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  *(a5 + 48) = v37;
  *(a5 + 56) = v38;
  *(a5 + 64) = v39;
  *(a5 + 72) = v40;
  *(a5 + 80) = v55;
  sub_100028630(v30, v32, v34 & 1);

  sub_100028640(v30, v32, v34 & 1);
}

uint64_t sub_10003BCAC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100017A54(&qword_1000E65D0, &qword_1000ABD30);
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v6 = type metadata accessor for HeadlineCell(0);
  v7 = *(v1 + *(v6 + 36));
  if ([v7 isAIGenerated] || !objc_msgSend(v7, "isBundlePaid"))
  {
    v10 = sub_1000A2720();
    v11 = *(v1 + *(v6 + 44) + 64);
    v12 = sub_1000A2430();
    *v5 = sub_1000A2270();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v13 = sub_100017A54(&qword_1000E65F8, &qword_1000ABD48);
    sub_10003B660(65, 0xE100000000000000, 0, _swiftEmptyArrayStorage, v12, v10, &v5[*(v13 + 44)]);

    sub_100029050(&qword_1000E6600, &qword_1000E65D0, &qword_1000ABD30, &protocol conformance descriptor for VStack<A>);
  }

  else
  {
    v8 = *(v1 + *(v6 + 44) + 64);
    sub_1000A2430();
    v9 = sub_1000A2270();
    v21 = 1;
    sub_10003B96C(0x654EAF80E2BFA3EFLL, 0xAB000000002B7377, v1, &v16);
    v24 = *&v17[16];
    v25 = *&v17[32];
    v26 = *&v17[48];
    v27 = *&v17[64];
    v22 = v16;
    v23 = *v17;
    v28[2] = *&v17[16];
    v28[3] = *&v17[32];
    v28[4] = *&v17[48];
    v28[5] = *&v17[64];
    v28[0] = v16;
    v28[1] = *v17;
    sub_100028B94(&v22, &v19, &qword_1000E65D8, &qword_1000ABD38);
    sub_10001FE6C(v28, &qword_1000E65D8, &qword_1000ABD38);

    *&v20[87] = v27;
    *&v20[71] = v26;
    *&v20[55] = v25;
    *&v20[39] = v24;
    *&v20[23] = v23;
    *&v20[7] = v22;
    *&v17[49] = *&v20[48];
    *&v17[65] = *&v20[64];
    *v18 = *&v20[80];
    *&v17[1] = *v20;
    *&v17[17] = *&v20[16];
    v16 = v9;
    v17[0] = v21;
    *&v18[15] = *(&v27 + 1);
    *&v17[33] = *&v20[32];
    sub_100017A54(&qword_1000E65E0, &qword_1000ABD40);
    sub_100029050(&qword_1000E65E8, &qword_1000E65E0, &qword_1000ABD40, &protocol conformance descriptor for VStack<A>);
  }

  result = sub_1000A2820();
  *a1 = result;
  return result;
}

uint64_t sub_10003BFBC(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for HeadlineCell(0);
  sub_100017A54(&qword_1000E6598, &qword_1000ABCC8);
  return sub_1000A2800();
}

uint64_t sub_10003C034@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000A26C0();
  result = sub_1000A1EA0();
  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_10003C074(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for HeadlineCell(0);
  sub_100017A54(&qword_1000E6598, &qword_1000ABCC8);
  return sub_1000A2800();
}

void *sub_10003C0F8(double *a1, void *(*a2)(double *__return_ptr))
{
  v3 = *a1;
  result = a2(&v6);
  v5 = v6;
  if (v3 > v6)
  {
    v5 = v3;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_10003C154@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ThumbnailView(0);
  if ((sub_100090618() & 1) == 0)
  {
    if (*(v1 + v4[9]) != 1)
    {
      sub_10003C304(&v18);
      goto LABEL_9;
    }

    v6 = sub_1000A28C0();
    v8 = v7;
    sub_10003C304(&v18);
    v9 = v18;
    v10 = *(v1 + v4[8]);
    *&v18 = v6;
    *(&v18 + 1) = v8;
    *&v19 = v9;
    *(&v19 + 1) = 0xD000000000000017;
    v20 = 0x80000001000B3CF0;
    v21 = v10;
    goto LABEL_7;
  }

  sub_10003C7DC(v1);
  if ((v5 & 1) == 0)
  {
    v11 = sub_1000A28C0();
    v13 = v12;
    sub_10003C9AC(v2, &v18);
    v14 = v18;
    v15 = v19;
    v16 = BYTE8(v19);
    *&v18 = v11;
    *(&v18 + 1) = v13;
    v19 = v14;
    v20 = v15;
    v21 = v16;
LABEL_7:
    sub_100017A54(&qword_1000E6650, &unk_1000ABE50);
    sub_100029050(&qword_1000E6658, &qword_1000E6650, &unk_1000ABE50, &protocol conformance descriptor for ZStack<A>);
    goto LABEL_9;
  }

  *&v18 = *(v1 + v4[7]);
  sub_10003D33C();

LABEL_9:
  result = sub_1000A2820();
  *a1 = result;
  return result;
}

uint64_t sub_10003C304@<X0>(uint64_t *a1@<X8>)
{
  v36 = a1;
  v2 = sub_100017A54(&qword_1000E6660, &unk_1000AC920);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - v3;
  v5 = sub_1000A2770();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100017A54(&qword_1000E6668, &qword_1000ABE60);
  v8 = __chkstk_darwin(v34);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v31 - v10;
  v12 = sub_100017A54(&qword_1000E6670, &qword_1000ABE68);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - v13;
  v15 = type metadata accessor for ImageStore.Key(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(type metadata accessor for ThumbnailView(0) + 20);
  v35 = v1;
  v20 = v1 + v19;
  sub_10009108C(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10001FE6C(v14, &qword_1000E6670, &qword_1000ABE68);
LABEL_5:
    result = sub_1000A2820();
    goto LABEL_6;
  }

  sub_10003D390(v14, v18, type metadata accessor for ImageStore.Key);
  v21 = sub_1000758B8(v18, *(v20 + 8));
  sub_10003D3F8(v18, type metadata accessor for ImageStore.Key);
  if (!v21)
  {
    goto LABEL_5;
  }

  v22 = v21;
  sub_1000A2750();
  v23 = v32;
  (*(v32 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v5);
  sub_1000A27D0();

  (*(v23 + 8))(v7, v5);
  sub_1000A2A60();
  v24 = sub_1000A2A70();
  (*(*(v24 - 8) + 56))(v4, 0, 1, v24);
  sub_1000A27C0();

  sub_10001FE6C(v4, &qword_1000E6660, &unk_1000AC920);
  v25 = &v11[*(sub_100017A54(&qword_1000E6678, &unk_1000ABE70) + 36)];
  *v25 = 0;
  *(v25 + 4) = 257;
  sub_1000A28C0();
  sub_1000A1E90();
  v26 = v33;
  v27 = &v11[*(v34 + 36)];
  v28 = v38;
  *v27 = v37;
  *(v27 + 1) = v28;
  *(v27 + 2) = v39;
  sub_100028B94(v11, v26, &qword_1000E6668, &qword_1000ABE60);
  sub_10003D458();
  v29 = sub_1000A2820();

  sub_10001FE6C(v11, &qword_1000E6668, &qword_1000ABE60);
  result = v29;
LABEL_6:
  *v36 = result;
  return result;
}

uint64_t sub_10003C7DC(uint64_t a1)
{
  v2 = sub_100017A54(&qword_1000E6670, &qword_1000ABE68);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for ImageStore.Key(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ThumbnailView(0);
  v10 = a1 + *(v9 + 20);
  sub_10009108C(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10001FE6C(v4, &qword_1000E6670, &qword_1000ABE68);
  }

  else
  {
    sub_10003D390(v4, v8, type metadata accessor for ImageStore.Key);
    v11 = sub_1000758B8(v8, *(v10 + 8));
    sub_10003D3F8(v8, type metadata accessor for ImageStore.Key);
    if (v11)
    {

      return *(a1 + *(v9 + 24) + 8);
    }
  }

  return 0;
}

void sub_10003C9AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10003C304(&v11);
  v4 = v11;
  v5 = type metadata accessor for ThumbnailView(0);
  v6 = [*(a1 + *(v5 + 20)) identifier];
  v7 = sub_1000A2D40();
  v9 = v8;

  v10 = *(a1 + *(v5 + 32));
  *a2 = v4;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
}

uint64_t sub_10003CA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10003C154(v20);
  v19 = v20[0];
  sub_1000A28C0();
  sub_1000A1E90();
  v3 = v20[1];
  v4 = v21;
  v5 = v22;
  v6 = v23;
  v7 = v24;
  v8 = v25;
  v9 = (a2 + *(sub_100017A54(&qword_1000E6638, &qword_1000ABE40) + 36));
  v10 = *(sub_1000A1F50() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = sub_1000A2200();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  __asm { FMOV            V0.2D, #8.0 }

  *v9 = _Q0;
  result = sub_100017A54(&qword_1000E6640, &qword_1000ABE48);
  *&v9[*(result + 36)] = 256;
  *a2 = v19;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_10003CBBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003CC40()
{
  v1 = v0;
  v2 = type metadata accessor for HeadlineCell(0);
  v27 = *(*(v2 - 1) + 80);
  v25 = *(*(v2 - 1) + 64);
  v26 = (v27 + 16) & ~v27;
  v3 = v0 + v26;
  sub_100017A54(&qword_1000E5410, &unk_1000AC8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1000A1F40();
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  else
  {
  }

  v5 = v2[5];
  sub_100017A54(&qword_1000E5408, &qword_1000AAA10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000A2A50();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  v7 = v2[6];
  sub_100017A54(&qword_1000E6570, &qword_1000ABCA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1000A2B10();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  v9 = v3 + v2[9];
  swift_unknownObjectRelease();

  v10 = type metadata accessor for Item.Headline(0);
  v11 = *(v10 + 24);
  v12 = sub_1000A1700();
  v13 = *(v12 - 8);
  v28 = *(v13 + 48);
  if (!v28(v9 + v11, 1, v12))
  {
    (*(v13 + 8))(v9 + v11, v12);
  }

  v14 = (v9 + *(v10 + 28));
  if (v14[1])
  {
  }

  v15 = (v3 + v2[10]);

  v16 = type metadata accessor for TodayContent(0);
  v17 = v15 + *(v16 + 20);
  v18 = type metadata accessor for Banner(0);
  if (!(*(*(v18 - 1) + 48))(v17, 1, v18))
  {
    v24 = v1;

    v19 = v18[7];
    if (!v28(&v17[v19], 1, v12))
    {
      (*(v13 + 8))(&v17[v19], v12);
    }

    v20 = *&v17[v18[9]];
    if (v20 != 1)
    {
    }

    sub_10002C2D8(*&v17[v18[10]], *&v17[v18[10] + 8]);
    v1 = v24;
  }

  swift_unknownObjectRelease();
  v21 = *(v16 + 36);
  if (!v28(v15 + v21, 1, v12))
  {
    (*(v13 + 8))(v15 + v21, v12);
  }

  v22 = (v3 + v2[11]);

  return _swift_deallocObject(v1, v26 + v25, v27 | 7);
}

uint64_t sub_10003D1DC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for HeadlineCell(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_10003D268()
{
  result = qword_1000E65A8;
  if (!qword_1000E65A8)
  {
    sub_100017A9C(&qword_1000E65A0, &unk_1000ABD00);
    sub_100028F98();
    sub_100029050(&qword_1000E65B0, &qword_1000E65B8, &qword_1000ABD18, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E65A8);
  }

  return result;
}

unint64_t sub_10003D33C()
{
  result = qword_1000E6648;
  if (!qword_1000E6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6648);
  }

  return result;
}

uint64_t sub_10003D390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003D3F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10003D458()
{
  result = qword_1000E6680;
  if (!qword_1000E6680)
  {
    sub_100017A9C(&qword_1000E6668, &qword_1000ABE60);
    sub_10003D4E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6680);
  }

  return result;
}

unint64_t sub_10003D4E4()
{
  result = qword_1000E6688;
  if (!qword_1000E6688)
  {
    sub_100017A9C(&qword_1000E6678, &unk_1000ABE70);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6688);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaIndicatorDisplayStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MediaIndicatorDisplayStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_10003D5F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003D614(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

unint64_t sub_10003D648()
{
  result = qword_1000E6690;
  if (!qword_1000E6690)
  {
    sub_100017A9C(&qword_1000E6698, &qword_1000ABF00);
    sub_100029050(&qword_1000E6538, &qword_1000E6528, &qword_1000ABC28, &protocol conformance descriptor for VStack<A>);
    sub_10003D730(&qword_1000E54F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6690);
  }

  return result;
}

uint64_t sub_10003D730(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10003D77C()
{
  result = qword_1000E66A0;
  if (!qword_1000E66A0)
  {
    sub_100017A9C(&qword_1000E6638, &qword_1000ABE40);
    sub_10003D834();
    sub_100029050(&qword_1000E66B8, &qword_1000E6640, &qword_1000ABE48, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E66A0);
  }

  return result;
}

unint64_t sub_10003D834()
{
  result = qword_1000E66A8;
  if (!qword_1000E66A8)
  {
    sub_100017A9C(&qword_1000E66B0, qword_1000ABF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E66A8);
  }

  return result;
}

unint64_t sub_10003D8E8()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_10003D924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001000B3D40 == a2 || (sub_1000A3560() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001000B3D60 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1000A3560();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_10003DA08(uint64_t a1)
{
  v2 = sub_10003E314();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003DA44(uint64_t a1)
{
  v2 = sub_10003E314();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003DA80(void *a1, void *a2, uint64_t a3)
{
  v29 = a3;
  v6 = sub_100017A54(&qword_1000E6770, &qword_1000AC098);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  sub_100018688(a1, a1[3]);
  sub_10003E314();
  sub_1000A3660();
  if (a2)
  {
    v10 = objc_opt_self();
    v31 = 0;
    v11 = a2;
    v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v31];
    v13 = v31;
    if (!v12)
    {
      v19 = v13;
      sub_1000A1600();

      swift_willThrow();
      return (*(v7 + 8))(v9, v6);
    }

    v14 = sub_1000A1730();
    v16 = v15;

    v31 = v14;
    v32 = v16;
    v30 = 0;
    sub_100034E3C();
    sub_1000A3520();
    if (v3)
    {
      (*(v7 + 8))(v9, v6);

      v17 = v14;
      v18 = v16;
      return sub_10001AA1C(v17, v18);
    }

    sub_10001AA1C(v14, v16);
  }

  v20 = objc_opt_self();
  v31 = 0;
  v21 = [v20 archivedDataWithRootObject:v29 requiringSecureCoding:1 error:&v31];
  v22 = v31;
  if (v21)
  {
    v23 = sub_1000A1730();
    v25 = v24;

    v31 = v23;
    v32 = v25;
    v30 = 1;
    sub_100034E3C();
    sub_1000A3520();
    (*(v7 + 8))(v9, v6);
    v17 = v23;
    v18 = v25;
    return sub_10001AA1C(v17, v18);
  }

  v27 = v22;
  sub_1000A1600();

  swift_willThrow();
  return (*(v7 + 8))(v9, v6);
}

void *sub_10003DD94@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10003DF0C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10003DE78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003DEC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_10003DF0C(void *a1)
{
  v3 = sub_100017A54(&qword_1000E6758, &qword_1000AC090);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - v5;
  v7 = a1[4];
  sub_100018688(a1, a1[3]);
  sub_10003E314();
  sub_1000A3640();
  if (v1)
  {
    goto LABEL_3;
  }

  v21 = 0;
  sub_100034B00();
  sub_1000A3470();
  v10 = v19;
  v9 = v20;
  v18 = v20;
  if (v20 >> 60 == 15)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v16[1] = sub_100028E34(0, &unk_1000E7DD0, NSKeyedUnarchiver_ptr);
  sub_100028E34(0, &unk_1000E5F20, UIColor_ptr);
  sub_10003E3BC(v10, v9);
  v7 = sub_1000A30A0();
  v13 = v18;
  sub_100034E28(v10, v18);
  if (!v7)
  {
    sub_10003E368();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    sub_100034E28(v10, v13);
    (*(v4 + 8))(v6, v3);
LABEL_3:
    sub_100018720(a1);
    return v7;
  }

LABEL_7:
  v17 = v10;
  v21 = 1;
  sub_1000A34B0();
  v12 = v19;
  v11 = v20;
  sub_100028E34(0, &unk_1000E7DD0, NSKeyedUnarchiver_ptr);
  sub_100028E34(0, &unk_1000E5F20, UIColor_ptr);
  if (sub_1000A30A0())
  {
    (*(v4 + 8))(v6, v3);
    sub_100034E28(v17, v18);
    sub_10001AA1C(v12, v11);
    sub_100018720(a1);
  }

  else
  {
    sub_10003E368();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    sub_10001AA1C(v12, v11);
    sub_100034E28(v17, v18);
    (*(v4 + 8))(v6, v3);
    sub_100018720(a1);
  }

  return v7;
}

unint64_t sub_10003E314()
{
  result = qword_1000E6760;
  if (!qword_1000E6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6760);
  }

  return result;
}

unint64_t sub_10003E368()
{
  result = qword_1000E6768;
  if (!qword_1000E6768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6768);
  }

  return result;
}

uint64_t sub_10003E3BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_10003E43C()
{
  result = qword_1000E6778;
  if (!qword_1000E6778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6778);
  }

  return result;
}

unint64_t sub_10003E494()
{
  result = qword_1000E6780;
  if (!qword_1000E6780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6780);
  }

  return result;
}

unint64_t sub_10003E4EC()
{
  result = qword_1000E6788;
  if (!qword_1000E6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6788);
  }

  return result;
}

unint64_t sub_10003E544()
{
  result = qword_1000E6790[0];
  if (!qword_1000E6790[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000E6790);
  }

  return result;
}

uint64_t sub_10003E5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10003E5F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003E638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003E6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_1000A19D0();
  __chkstk_darwin(v13 - 8);
  v15 = type metadata accessor for NewsTimelineProvider(255, a5, a6, v14);
  sub_1000A1B30();
  swift_bridgeObjectRetain_n();
  sub_1000A19C0();
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a1;
  v16[7] = a2;

  sub_1000A1B20();
  WitnessTable = swift_getWitnessTable();
  TodayIntentResponseCode.rawValue.getter();
  type metadata accessor for ContentView(0);
  type metadata accessor for LazyIntentTimelineProvider(0, v15, WitnessTable, v18);
  sub_10003EA2C();
  swift_getWitnessTable();
  return sub_1000A2B30();
}

void *sub_10003E8C0@<X0>(void (*a1)(void *__return_ptr)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  a1(v16);
  sub_100018688(v16, v16[3]);
  sub_100017A54(&unk_1000E9240, &qword_1000AC310);
  result = sub_1000A1A10();
  if (v15[3])
  {
    type metadata accessor for NewsTimelineProvider(0, a4, a5, v12);
    sub_10002F244(v16, v14);

    v13 = sub_10008BE5C(a2, a3, v15, v14);

    *a6 = v13;
    return sub_100018720(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003E9DC()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_10003EA2C()
{
  result = qword_1000E6818[0];
  if (!qword_1000E6818[0])
  {
    type metadata accessor for ContentView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000E6818);
  }

  return result;
}

uint64_t sub_10003EAB4(uint64_t *a1)
{
  type metadata accessor for ContentView(255);
  sub_10003EA2C();
  sub_1000A2B40();

  return swift_getWitnessTable();
}

NSString *sub_10003EB20()
{
  v1 = v0;
  v2 = sub_1000A2250();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for ContentSizeCategory.extraSmall(_:))
  {
    v7 = &UIContentSizeCategoryExtraSmall;
  }

  else if (v6 == enum case for ContentSizeCategory.small(_:))
  {
    v7 = &UIContentSizeCategorySmall;
  }

  else if (v6 == enum case for ContentSizeCategory.medium(_:))
  {
    v7 = &UIContentSizeCategoryMedium;
  }

  else if (v6 == enum case for ContentSizeCategory.large(_:))
  {
    v7 = &UIContentSizeCategoryLarge;
  }

  else if (v6 == enum case for ContentSizeCategory.extraLarge(_:))
  {
    v7 = &UIContentSizeCategoryExtraLarge;
  }

  else if (v6 == enum case for ContentSizeCategory.extraExtraLarge(_:))
  {
    v7 = &UIContentSizeCategoryExtraExtraLarge;
  }

  else if (v6 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    v7 = &UIContentSizeCategoryExtraExtraExtraLarge;
  }

  else if (v6 == enum case for ContentSizeCategory.accessibilityMedium(_:))
  {
    v7 = &UIContentSizeCategoryAccessibilityMedium;
  }

  else if (v6 == enum case for ContentSizeCategory.accessibilityLarge(_:))
  {
    v7 = &UIContentSizeCategoryAccessibilityLarge;
  }

  else if (v6 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
  {
    v7 = &UIContentSizeCategoryAccessibilityExtraLarge;
  }

  else if (v6 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
  {
    v7 = &UIContentSizeCategoryAccessibilityExtraExtraLarge;
  }

  else
  {
    if (v6 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      v10 = *(v3 + 8);
      v11 = UIContentSizeCategoryUnspecified;
      v10(v5, v2);
      return v11;
    }

    v7 = &UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  }

  v8 = *v7;

  return v8;
}

uint64_t sub_10003EDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v43 = a1;
  v44 = a3;
  v4 = sub_1000A2250();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v45 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  v10 = *(v5 + 16);
  v40 = v3;
  v46 = v10;
  v10(&v29 - v8, v3, v4);
  v33 = v5;
  v42 = *(v5 + 88);
  v11 = v42(v9, v4);
  v12 = v11;
  v41 = enum case for ContentSizeCategory.extraSmall(_:);
  v38 = enum case for ContentSizeCategory.small(_:);
  v14 = v11 == enum case for ContentSizeCategory.extraSmall(_:) || v11 == enum case for ContentSizeCategory.small(_:);
  v36 = v14;
  v37 = enum case for ContentSizeCategory.medium(_:);
  if (v11 == enum case for ContentSizeCategory.medium(_:))
  {
    v14 = 1;
  }

  v15 = 1;
  v34 = v14;
  v35 = enum case for ContentSizeCategory.large(_:);
  if (v14)
  {
    v16 = 1;
    v17 = 1;
    v18 = 1;
    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
  }

  else
  {
    v16 = 1;
    v17 = 1;
    v18 = 1;
    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
    if (v11 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_28;
    }

    if (v11 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      goto LABEL_26;
    }

    if (v11 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
LABEL_25:
      v21 = 0;
LABEL_26:
      v22 = 0;
      goto LABEL_28;
    }

    if (v11 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
LABEL_24:
      v20 = 0;
      goto LABEL_25;
    }

    if (v11 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
LABEL_23:
      v19 = 0;
      goto LABEL_24;
    }

    if (v11 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
LABEL_22:
      v18 = 0;
      goto LABEL_23;
    }

    if (v11 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
LABEL_21:
      v17 = 0;
      goto LABEL_22;
    }

    if (v11 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
LABEL_20:
      v16 = 0;
      goto LABEL_21;
    }

    if (v11 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      v15 = 0;
      goto LABEL_20;
    }

    (*(v33 + 8))(v9, v4);
    v15 = 1;
    v16 = 1;
    v17 = 1;
    v18 = 1;
  }

LABEL_28:
  v31 = v17;
  v32 = v18;
  v29 = v15;
  v30 = v16;
  v23 = v45;
  v24 = v43;
  v46(v45, v43, v4);
  v25 = v42(v23, v4);
  if (v25 != v41)
  {
    if (v25 == v38)
    {
      if (v12 == v41)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else if (v25 == v37)
    {
      if (v36)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else if (v25 == v35)
    {
      if (v34)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else if (v25 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      if (v22)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else if (v25 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      if (v21)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else if (v25 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      if (v20)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else if (v25 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      if (v19)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else if (v25 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      if (v32)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else if (v25 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      if (v31)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else if (v25 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      if (v30)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else if (v25 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      if (v29)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else
    {
      (*(v33 + 8))(v45, v4);
      if (v34)
      {
        return (v46)(v44, v24, v4);
      }
    }
  }

  v27 = v39;
  v26 = v40;
  if (sub_10003F284(v40, v39))
  {
    v24 = v27;
  }

  else
  {
    v24 = v26;
  }

  return (v46)(v44, v24, v4);
}

BOOL sub_10003F284(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = sub_1000A2250();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a2, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v12 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v12 == enum case for ContentSizeCategory.small(_:))
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.medium(_:))
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v12 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v13 = 4;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v13 = 5;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v13 = 6;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v13 = 7;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v13 = 8;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v13 = 9;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v13 = 10;
    }

    else
    {
      if (v12 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == enum case for ContentSizeCategory.small(_:))
  {
    v16 = 1;
  }

  else if (v15 == enum case for ContentSizeCategory.medium(_:))
  {
    v16 = 2;
  }

  else
  {
    if (v15 != enum case for ContentSizeCategory.large(_:))
    {
      if (v15 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v16 = 4;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v16 = 5;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v16 = 6;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v16 = 7;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v16 = 8;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v16 = 9;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v16 = 10;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v16 = 11;
        return v13 < v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 < v16;
}

double Type3Widget.body.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v8 = *(a1 + 24);
  *(v7 + 16) = *(a1 + 16);
  *(v7 + 24) = v8;
  (*(v4 + 32))(v7 + v6, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_100017A9C(&qword_1000E6640, &qword_1000ABE48);
  sub_1000A1F20();
  sub_1000A1F20();
  sub_1000A1F20();
  v9 = sub_10003FF50();
  v20 = v8;
  v21 = v9;
  WitnessTable = swift_getWitnessTable();
  v19 = &protocol witness table for _FrameLayout;
  v16 = swift_getWitnessTable();
  v17 = &protocol witness table for _PositionLayout;
  swift_getWitnessTable();
  v14 = sub_1000A1ED0();
  v15 = v10;
  v11 = sub_1000A1EE0();
  swift_getWitnessTable();
  v12 = *(*(v11 - 8) + 16);
  v12(v22, &v14, v11);

  v14 = v22[0];
  v15 = v22[1];
  v12(a2, &v14, v11);

  return result;
}

uint64_t sub_10003F934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v34 = a2;
  v39 = a5;
  v40 = a1;
  v6 = sub_1000A1F50();
  __chkstk_darwin(v6);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100017A9C(&qword_1000E6640, &qword_1000ABE48);
  v9 = sub_1000A1F20();
  v36 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = sub_1000A1F20();
  v38 = *(v12 - 8);
  __chkstk_darwin(v12);
  v32 = &v31 - v13;
  v14 = sub_1000A1F20();
  v37 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v33 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v35 = &v31 - v17;
  v18 = *(v6 + 20);
  v19 = enum case for RoundedCornerStyle.continuous(_:);
  v20 = sub_1000A2200();
  (*(*(v20 - 8) + 104))(&v8->i8[v18], v19, v20);
  *v8 = vdupq_n_s64(0x4044000000000000uLL);
  sub_1000404D4();
  sub_1000A2670();
  sub_10004052C(v8);
  sub_1000A1EA0();
  sub_1000A28C0();
  v21 = sub_10003FF50();
  v45 = a4;
  v46 = v21;
  WitnessTable = swift_getWitnessTable();
  v23 = v32;
  sub_1000A2640();
  (*(v36 + 8))(v11, v9);
  sub_1000A1EA0();
  sub_1000A1EA0();
  v43 = WitnessTable;
  v44 = &protocol witness table for _FrameLayout;
  v24 = swift_getWitnessTable();
  v25 = v33;
  sub_1000A2650();
  (*(v38 + 8))(v23, v12);
  v41 = v24;
  v42 = &protocol witness table for _PositionLayout;
  swift_getWitnessTable();
  v26 = v37;
  v27 = *(v37 + 16);
  v28 = v35;
  v27(v35, v25, v14);
  v29 = *(v26 + 8);
  v29(v25, v14);
  v27(v39, v28, v14);
  return (v29)(v28, v14);
}

uint64_t sub_10003FDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for Type3Widget(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(v6 + 64);
  (*(*(v5 - 8) + 8))(v4 + v8, v5);

  return _swift_deallocObject(v4, v8 + v9, v7 | 7);
}

uint64_t sub_10003FEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v6 = *(v3 + 24);
  v7 = *(type metadata accessor for Type3Widget(0, *(v3 + 16), v6, a2) - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_10003F934(a1, v8, v6, a3);
}

unint64_t sub_10003FF50()
{
  result = qword_1000E66B8;
  if (!qword_1000E66B8)
  {
    sub_100017A9C(&qword_1000E6640, &qword_1000ABE48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E66B8);
  }

  return result;
}

uint64_t sub_100040004(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100040074(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1000401B4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1000403BC(uint64_t *a1)
{
  sub_100017A9C(&qword_1000E6640, &qword_1000ABE48);
  sub_1000A1F20();
  sub_1000A1F20();
  sub_1000A1F20();
  sub_10003FF50();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1000A1EE0();
  return swift_getWitnessTable();
}

unint64_t sub_1000404D4()
{
  result = qword_1000E68A0;
  if (!qword_1000E68A0)
  {
    sub_1000A1F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E68A0);
  }

  return result;
}

uint64_t sub_10004052C(uint64_t a1)
{
  v2 = sub_1000A1F50();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004059C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100017A54(&qword_1000E68A8, &unk_1000AC390);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5] + 32);
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = type metadata accessor for TodayContent(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  v15 = type metadata accessor for LayoutContext(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_10004072C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100017A54(&qword_1000E68A8, &unk_1000AC390);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5] + 32) = -a2;
    return result;
  }

  v13 = type metadata accessor for TodayContent(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = type metadata accessor for LayoutContext(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for RegularContentView(uint64_t a1)
{
  result = qword_1000E6908;
  if (!qword_1000E6908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000408F8(uint64_t a1)
{
  sub_1000409AC(319);
  if (v1 <= 0x3F)
  {
    sub_100040A04();
    if (v2 <= 0x3F)
    {
      type metadata accessor for TodayContent(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for LayoutContext(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000409AC(uint64_t a1)
{
  if (!qword_1000E6918)
  {
    sub_1000A1E20();
    v1 = sub_1000A1E30();
    if (!v2)
    {
      atomic_store(v1, &qword_1000E6918);
    }
  }
}

void sub_100040A04()
{
  if (!qword_1000E5368)
  {
    v0 = sub_1000A1E30();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E5368);
    }
  }
}

uint64_t sub_100040A70@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000A2140();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100017A54(&qword_1000E6990, &qword_1000AC438);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100028B94(v2, &v14 - v9, &qword_1000E6990, &qword_1000AC438);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000A1E20();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1000A3080();
    v13 = sub_1000A2360();
    sub_1000A1DC0();

    sub_1000A2130();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_100040C70()
{
  v1 = sub_1000A2140();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for RegularContentView(0) + 20);
  v7 = *v5;
  v6 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (*(v5 + 32) == 1)
  {
    return *v5;
  }

  sub_1000A3080();
  v11 = sub_1000A2360();
  sub_1000A1DC0();

  sub_1000A2130();
  swift_getAtKeyPath();
  v12 = sub_100043264(v7, v6, v9, v8, 0);
  (*(v2 + 8))(v4, v1, v12);
  return v13;
}

uint64_t sub_100040DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_100017A54(&qword_1000E69B8, &qword_1000AC458);
  v4 = __chkstk_darwin(v3 - 8);
  v53 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = (&v46 - v6);
  v48 = sub_1000A2420();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100017A54(&qword_1000E69C0, &qword_1000AC460);
  v10 = *(v9 - 8);
  v49 = v9;
  v50 = v10;
  __chkstk_darwin(v9);
  v12 = (&v46 - v11);
  v13 = sub_100017A54(&unk_1000E8800, &qword_1000AC420);
  __chkstk_darwin(v13 - 8);
  v15 = &v46 - v14;
  v16 = type metadata accessor for Banner(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100017A54(&qword_1000E69C8, &qword_1000AC468);
  v21 = __chkstk_darwin(v20 - 8);
  v51 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v46 - v23;
  v25 = a1;
  v26 = a1 + *(type metadata accessor for RegularContentView(0) + 24);
  v27 = type metadata accessor for TodayContent(0);
  sub_100028B94(v26 + *(v27 + 20), v15, &unk_1000E8800, &qword_1000AC420);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10001FE6C(v15, &unk_1000E8800, &qword_1000AC420);
    v28 = 1;
    v29 = v49;
  }

  else
  {
    sub_1000438AC(v15, v19, type metadata accessor for Banner);
    v30 = sub_1000413F0();
    v32 = v31;
    v33 = type metadata accessor for BannerView(0);
    sub_1000439DC(v19, v12 + *(v33 + 20), type metadata accessor for Banner);
    *v12 = v30;
    v12[1] = v32;
    *&v54 = 0x4028000000000000;
    (*(v46 + 104))(v47, enum case for Font.TextStyle.caption(_:), v48);
    sub_100043460();
    v34 = sub_1000A1E50();
    sub_100045A9C(v34);
    sub_1000A28C0();
    sub_1000A1E90();
    sub_100043A44(v19, type metadata accessor for Banner);
    v35 = v49;
    v36 = (v12 + *(v49 + 36));
    v37 = v55;
    *v36 = v54;
    v36[1] = v37;
    v36[2] = v56;
    sub_1000434B4(v12, v24);
    v28 = 0;
    v29 = v35;
  }

  (*(v50 + 56))(v24, v28, 1, v29);
  *v7 = sub_1000A28A0();
  v7[1] = v38;
  v39 = v7 + *(sub_100017A54(&qword_1000E69D0, &qword_1000AC470) + 44);
  *v39 = sub_1000A2280();
  *(v39 + 1) = 0;
  v39[16] = 0;
  v40 = sub_100017A54(&qword_1000E69D8, &qword_1000AC478);
  sub_1000415BC(v25, &v39[*(v40 + 44)]);
  v41 = v51;
  sub_100028B94(v24, v51, &qword_1000E69C8, &qword_1000AC468);
  v42 = v53;
  sub_100028B94(v7, v53, &qword_1000E69B8, &qword_1000AC458);
  v43 = v52;
  sub_100028B94(v41, v52, &qword_1000E69C8, &qword_1000AC468);
  v44 = sub_100017A54(&qword_1000E69E0, &qword_1000AC480);
  sub_100028B94(v42, v43 + *(v44 + 48), &qword_1000E69B8, &qword_1000AC458);
  sub_10001FE6C(v7, &qword_1000E69B8, &qword_1000AC458);
  sub_10001FE6C(v24, &qword_1000E69C8, &qword_1000AC468);
  sub_10001FE6C(v42, &qword_1000E69B8, &qword_1000AC458);
  return sub_10001FE6C(v41, &qword_1000E69C8, &qword_1000AC468);
}

uint64_t sub_1000413F0()
{
  v0 = sub_1000A1E20();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v15 - v5;
  sub_100040A70((&v15 - v5));
  v7 = enum case for ColorScheme.dark(_:);
  v8 = *(v1 + 104);
  v8(v4, enum case for ColorScheme.dark(_:), v0);
  v9 = sub_1000A1E10();
  v10 = *(v1 + 8);
  v10(v4, v0);
  v10(v6, v0);
  if (v9)
  {
    v11 = sub_1000A26B0();
  }

  else
  {
    v11 = sub_1000A26E0();
  }

  v12 = v11;
  sub_100040A70(v6);
  v8(v4, v7, v0);
  v13 = sub_1000A1E10();
  v10(v4, v0);
  v10(v6, v0);
  if (v13)
  {
    sub_1000A26E0();
  }

  else
  {
    sub_1000A26B0();
  }

  return v12;
}

uint64_t sub_1000415BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for RegularContentView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100017A54(&qword_1000E69F0, &qword_1000AC488);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v13 = &v24[-v12 - 8];
  type metadata accessor for TodayContent(0);
  sub_1000439DC(a1, &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for RegularContentView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_1000438AC(&v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v15 + v14, type metadata accessor for RegularContentView);
  type metadata accessor for SectionView(0);
  sub_100043994(&qword_1000E69F8, type metadata accessor for SectionView, &unk_1000ACE18);
  sub_1000A2840();
  sub_1000A28C0();
  sub_1000A1F60();
  *&v24[55] = v29;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[103] = v32;
  *&v24[7] = v26;
  *&v24[23] = v27;
  v25 = 1;
  *&v24[39] = v28;
  v16 = *(v8 + 16);
  v16(v11, v13, v7);
  v16(a2, v11, v7);
  v17 = &a2[*(sub_100017A54(&qword_1000E6A00, &qword_1000AC490) + 48)];
  v18 = *&v24[80];
  *(v17 + 73) = *&v24[64];
  *(v17 + 89) = v18;
  *(v17 + 105) = *&v24[96];
  v19 = *&v24[16];
  *(v17 + 9) = *v24;
  *(v17 + 25) = v19;
  v20 = *&v24[48];
  *(v17 + 41) = *&v24[32];
  *v17 = 0;
  v17[8] = 1;
  *(v17 + 15) = *&v24[111];
  *(v17 + 57) = v20;
  v21 = *(v8 + 8);
  v21(v13, v7);
  return (v21)(v11, v7);
}

uint64_t sub_100041988@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Section(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for RegularContentView(0) + 24);
  result = type metadata accessor for TodayContent(0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = a2 + v10;
    v13 = *(v12 + *(result + 24));
    if (*(v13 + 16) > a1)
    {
      v14 = v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a1;
      sub_1000439DC(v14, a3, type metadata accessor for Section);
      v15 = type metadata accessor for SectionView(0);
      sub_1000439DC(v12, a3 + v15[5], type metadata accessor for TodayContent);
      sub_1000439DC(v14, v9, type metadata accessor for Section);
      sub_100041BC0(a1, v24);
      sub_100043A44(v9, type metadata accessor for Section);
      KeyPath = swift_getKeyPath();
      *(a3 + v15[8]) = swift_getKeyPath();
      sub_100017A54(&qword_1000E6990, &qword_1000AC438);
      result = swift_storeEnumTagMultiPayload();
      v17 = a3 + v15[6];
      v18 = v24[7];
      *(v17 + 96) = v24[6];
      *(v17 + 112) = v18;
      *(v17 + 128) = v24[8];
      *(v17 + 144) = v25;
      v19 = v24[3];
      *(v17 + 32) = v24[2];
      *(v17 + 48) = v19;
      v20 = v24[5];
      *(v17 + 64) = v24[4];
      *(v17 + 80) = v20;
      v21 = v24[1];
      *v17 = v24[0];
      *(v17 + 16) = v21;
      v22 = a3 + v15[7];
      *v22 = KeyPath;
      *(v22 + 8) = 0;
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_100041BC0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = type metadata accessor for RegularContentView(0);
    v6 = v2 + *(v5 + 24);
    v7 = v3 != *(*(v6 + *(type metadata accessor for TodayContent(0) + 24)) + 16);
    v8 = (v2 + *(v5 + 28));
    sub_1000474D0();
    v10 = v9;
    sub_100047FDC();
    v12 = v11;
    v13 = *(v8 + *(type metadata accessor for LayoutContext(0) + 40));
    sub_100047FDC();
    v15 = v13 * v14;
    sub_1000474D0();
    v17 = v15 - (v16 + v16);
    sub_1000474D0();
    v19 = v17 + (v13 + v13) * v18;
    sub_100047FDC();
    v21 = v10 + v12 * (sub_100047C84() * (v19 / v20));
    sub_1000474D0();
    v23 = v22 + v21;
    v24 = sub_100047118();
    [v24 nt_scaledValueForValue:1.0];
    v26 = v25;

    v27 = v26 * 12.0 + *v8 + 6.0;
    v28 = sub_100047118();
    sub_100045B80(v34);
    v29 = v8[1];
    sub_1000474D0();
    *a2 = v7;
    *(a2 + 8) = v23;
    *(a2 + 16) = 0x402E000000000000;
    *(a2 + 24) = v27;
    *(a2 + 32) = v28;
    v31 = v34[2];
    *(a2 + 88) = v34[3];
    v32 = v34[5];
    *(a2 + 104) = v34[4];
    *(a2 + 120) = v32;
    *(a2 + 136) = v35;
    v33 = v34[1];
    *(a2 + 40) = v34[0];
    *(a2 + 56) = v33;
    *(a2 + 72) = v31;
    *(a2 + 144) = v29 - v30;
  }
}

__n128 sub_100041D58@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1000A2270();
  sub_100041DEC(a1, v8);
  *&v7[55] = v8[3];
  *&v7[39] = v8[2];
  *&v7[23] = v8[1];
  *&v7[7] = v8[0];
  *(a3 + 33) = *&v7[16];
  result = *&v7[32];
  *(a3 + 49) = *&v7[32];
  *(a3 + 65) = *&v7[48];
  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 80) = *&v7[63];
  *(a3 + 17) = *v7;
  return result;
}

void sub_100041DEC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100017A54(&unk_1000E8800, &qword_1000AC420);
  __chkstk_darwin(v4 - 8);
  v6 = v23 - v5;
  v7 = a1 + *(type metadata accessor for RegularContentView(0) + 24);
  v8 = type metadata accessor for TodayContent(0);
  sub_100028B94(v7 + *(v8 + 20), v6, &unk_1000E8800, &qword_1000AC420);
  v9 = type metadata accessor for Banner(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    sub_10001FE6C(v6, &unk_1000E8800, &qword_1000AC420);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v17 = &v6[*(v9 + 40)];
    v18 = *v17;
    v19 = *(v17 + 1);
    v20 = v17[16];
    v24 = v19;
    v25 = v18;
    v23[1] = v20;
    sub_10004322C(v18, v19);
    sub_100043A44(v6, type metadata accessor for Banner);
    v21 = sub_10004203C(v18, v19, v20, v26);
    v10 = v26[0];
    sub_100045A9C(v21);
    sub_100040C70();
    sub_1000A28C0();
    sub_1000A1E90();
    v11 = v26[1];
    v12 = v27;
    v13 = v28;
    v14 = v29;
    v15 = v30;
    v16 = v31;
    sub_10002C2D8(v25, v24);
  }

  sub_10004282C(v26);
  v22 = v26[0];
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v13;
  a2[4] = v14;
  a2[5] = v15;
  a2[6] = v16;
  a2[7] = v22;
}

uint64_t sub_10004203C@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v49 = a2;
  v55 = a1;
  v56 = a4;
  v5 = sub_100017A54(&qword_1000E6978, &qword_1000AC428);
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v51 = &v47 - v6;
  v52 = sub_100017A54(&qword_1000E6980, &qword_1000AC430);
  __chkstk_darwin(v52);
  v50 = &v47 - v7;
  v8 = sub_1000A2680();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000A1E20();
  v13 = __chkstk_darwin(v12);
  v47 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v47 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v47 - v19;
  __chkstk_darwin(v18);
  v22 = &v47 - v21;
  v48 = v23;
  v24 = (v23 + 88);
  if (a3)
  {
    sub_100040A70(v20);
    v25 = *v24;
    v26 = (*v24)(v20, v12);
    v27 = enum case for ColorScheme.light(_:);
    if (v26 == enum case for ColorScheme.light(_:))
    {
      v28 = v55;
      v29 = v55;
    }

    else
    {
      v28 = v55;
      if (v26 != enum case for ColorScheme.dark(_:))
      {
        v35 = v55;
        sub_10007B424(v35);

        (*(v48 + 8))(v20, v12);
        goto LABEL_13;
      }

      v29 = v49;
    }

    v32 = v29;
    sub_10007B424(v29);

LABEL_13:
    sub_100040A70(v17);
    v36 = v25(v17, v12);
    if (v36 == v27)
    {
      [v28 startPoint];
      [v28 startPoint];
    }

    else if (v36 == enum case for ColorScheme.dark(_:))
    {
      v37 = v49;
      [v49 startPoint];
      [v37 startPoint];
    }

    else
    {
      [v28 startPoint];
      [v28 startPoint];
      (*(v48 + 8))(v17, v12);
    }

    v40 = v47;
    sub_100040A70(v47);
    v41 = v25(v40, v12);
    if (v41 == v27)
    {
      [v28 endPoint];
      [v28 endPoint];
    }

    else if (v41 == enum case for ColorScheme.dark(_:))
    {
      v42 = v49;
      [v49 endPoint];
      [v42 endPoint];
    }

    else
    {
      [v28 endPoint];
      [v28 endPoint];
      (*(v48 + 8))(v40, v12);
    }

    sub_1000A1EF0();
    v57 = v60[0];
    v58 = v60[1];
    v59 = v61;
    v43 = sub_100043270();
    v44 = v51;
    sub_1000A25A0();
    sub_1000432C4(v60);
    *&v57 = &type metadata for LinearGradient;
    *(&v57 + 1) = v43;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = v54;
    sub_1000A2560();
    (*(v53 + 8))(v44, v46);
    *&v57 = v46;
    *(&v57 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    goto LABEL_25;
  }

  sub_100040A70((&v47 - v21));
  v30 = (*v24)(v22, v12);
  if (v30 == enum case for ColorScheme.light(_:))
  {
    v31 = v55;
    [v55 red];
    [v31 green];
    [v31 blue];
    (*(v9 + 104))(v11, enum case for Color.RGBColorSpace.sRGB(_:), v8);
  }

  else
  {
    v33 = (v9 + 104);
    if (v30 != enum case for ColorScheme.dark(_:))
    {
      v38 = v55;
      [v55 red];
      [v38 green];
      [v38 blue];
      (*v33)(v11, enum case for Color.RGBColorSpace.sRGB(_:), v8);
      *&v60[0] = sub_1000A2730();
      *v56 = sub_1000A2820();
      return (*(v48 + 8))(v22, v12);
    }

    v34 = v49;
    [v49 red];
    [v34 green];
    [v34 blue];
    (*v33)(v11, enum case for Color.RGBColorSpace.sRGB(_:), v8);
  }

  *&v60[0] = sub_1000A2730();
LABEL_25:
  result = sub_1000A2820();
  *v56 = result;
  return result;
}

uint64_t sub_10004282C@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v2 = sub_100017A54(&qword_1000E6998, &qword_1000AC440);
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v4 = v31 - v3;
  v32 = sub_100017A54(&qword_1000E69A0, &unk_1000AC448);
  __chkstk_darwin(v32);
  v31[1] = v31 - v5;
  v6 = sub_100017A54(&unk_1000E5DD0, &unk_1000AB260);
  __chkstk_darwin(v6 - 8);
  v8 = v31 - v7;
  v9 = sub_1000A1700();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v31 - v14;
  v16 = v1 + *(type metadata accessor for RegularContentView(0) + 24);
  v17 = type metadata accessor for TodayContent(0);
  sub_100028B94(v16 + *(v17 + 36), v8, &unk_1000E5DD0, &unk_1000AB260);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10001FE6C(v8, &unk_1000E5DD0, &unk_1000AB260);
    v18 = [*(v16 + *(v17 + 28)) widgetConfig];
    v19 = sub_100042EB0(v18, &selRef_backgroundColorLight);
    v20 = sub_100042EB0(v18, &selRef_backgroundColorDark);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    v22 = objc_allocWithZone(UIColor);
    aBlock[4] = sub_100035710;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10004FE08;
    aBlock[3] = &unk_1000D8C58;
    v23 = _Block_copy(aBlock);
    v24 = v19;
    v25 = v20;
    [v22 initWithDynamicProvider:v23];
    _Block_release(v23);

    v26 = sub_1000A2740();

    aBlock[0] = v26;
    result = sub_1000A2820();
    v28 = result;
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    v29 = (*(v10 + 16))(v13, v15, v9);
    __chkstk_darwin(v29);
    v31[-2] = v1;
    sub_1000A2440();
    sub_100029050(&qword_1000E69A8, &qword_1000E6998, &qword_1000AC440, &protocol conformance descriptor for Link<A>);
    v30 = v34;
    sub_1000A25F0();
    (*(v33 + 8))(v4, v30);
    sub_100043378();
    v28 = sub_1000A2820();
    result = (*(v10 + 8))(v15, v9);
  }

  *v35 = v28;
  return result;
}

void sub_100042D34(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for RegularContentView(0) + 24);
  v4 = [*(v3 + *(type metadata accessor for TodayContent(0) + 28)) widgetConfig];
  v5 = sub_100042EB0(v4, &selRef_backgroundColorLight);
  v6 = sub_100042EB0(v4, &selRef_backgroundColorDark);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = objc_allocWithZone(UIColor);
  v13[4] = sub_100043BD0;
  v13[5] = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10004FE08;
  v13[3] = &unk_1000D8CA8;
  v9 = _Block_copy(v13);
  v10 = v5;
  v11 = v6;
  [v8 initWithDynamicProvider:v9];
  _Block_release(v9);

  v12 = sub_1000A2740();

  *a2 = v12;
}

id sub_100042EB0(void *a1, SEL *a2)
{
  if (a1 && (v2 = [a1 *a2]) != 0)
  {
    v3 = v2;
    v4 = [objc_opt_self() colorWithHexString:v2];

    [v4 red];
    v6 = v5;
    [v4 green];
    v8 = v7;
    [v4 blue];
    v10 = v9;
    [v4 alpha];
    v12 = [objc_allocWithZone(UIColor) initWithRed:v6 green:v8 blue:v10 alpha:v11];

    return v12;
  }

  else
  {
    v14 = [objc_opt_self() systemBackgroundColor];

    return v14;
  }
}

uint64_t sub_100042FE8@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v12 = sub_1000A2340();
  v2 = *(v12 - 8);
  __chkstk_darwin(v12);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100017A54(&qword_1000E6950, &qword_1000AC408);
  __chkstk_darwin(v10);
  v6 = &v9 - v5;
  *v6 = sub_1000A2280();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = sub_100017A54(&qword_1000E6958, &qword_1000AC410);
  sub_100040DFC(v1, &v6[*(v7 + 44)]);
  sub_1000A2330();
  v13 = v1;
  sub_1000A28C0();
  sub_100017A54(&qword_1000E6960, &qword_1000AC418);
  sub_100029050(&qword_1000E6968, &qword_1000E6950, &qword_1000AC408, &protocol conformance descriptor for VStack<A>);
  sub_100029050(&qword_1000E6970, &qword_1000E6960, &qword_1000AC418, &protocol conformance descriptor for VStack<A>);
  sub_1000A2600();
  (*(v2 + 8))(v4, v12);
  return sub_10001FE6C(v6, &qword_1000E6950, &qword_1000AC408);
}

id sub_10004322C(void *a1, void *a2)
{
  v2 = a1;

  return a2;
}

double sub_100043264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100043270()
{
  result = qword_1000E6988;
  if (!qword_1000E6988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6988);
  }

  return result;
}

uint64_t sub_100043318()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100043358(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100043378()
{
  result = qword_1000E69B0;
  if (!qword_1000E69B0)
  {
    sub_100017A9C(&qword_1000E69A0, &unk_1000AC448);
    sub_100029050(&qword_1000E69A8, &qword_1000E6998, &qword_1000AC440, &protocol conformance descriptor for Link<A>);
    sub_100043994(&qword_1000E54F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E69B0);
  }

  return result;
}

unint64_t sub_100043460()
{
  result = qword_1000E69E8;
  if (!qword_1000E69E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E69E8);
  }

  return result;
}

uint64_t sub_1000434B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017A54(&qword_1000E69C0, &qword_1000AC460);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043524()
{
  v1 = v0;
  v2 = type metadata accessor for RegularContentView(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v24 = *(*(v2 - 1) + 64);
  v5 = v0 + v4;
  sub_100017A54(&qword_1000E6990, &qword_1000AC438);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000A1E20();
    (*(*(v6 - 8) + 8))(v0 + v4, v6);
  }

  else
  {
  }

  v7 = v5 + v2[5];
  sub_100043264(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));
  v8 = (v5 + v2[6]);

  v9 = type metadata accessor for TodayContent(0);
  v10 = v8 + *(v9 + 20);
  v11 = type metadata accessor for Banner(0);
  if (!(*(*(v11 - 1) + 48))(v10, 1, v11))
  {
    v23 = v0;

    v12 = v11[7];
    v13 = sub_1000A1700();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(&v10[v12], 1, v13))
    {
      (*(v14 + 8))(&v10[v12], v13);
    }

    v15 = *&v10[v11[9]];
    if (v15 != 1)
    {
    }

    sub_10002C2D8(*&v10[v11[10]], *&v10[v11[10] + 8]);
    v4 = (v3 + 16) & ~v3;
    v1 = v23;
  }

  swift_unknownObjectRelease();
  v16 = *(v9 + 36);
  v17 = sub_1000A1700();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v8 + v16, 1, v17))
  {
    (*(v18 + 8))(v8 + v16, v17);
  }

  v19 = v2[7];
  v20 = v19 + *(type metadata accessor for LayoutContext(0) + 32);
  v21 = sub_1000A2250();
  (*(*(v21 - 8) + 8))(v5 + v20, v21);

  return _swift_deallocObject(v1, v4 + v24, v3 | 7);
}

uint64_t sub_1000438AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100043914@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RegularContentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100041988(a1, v6, a2);
}

uint64_t sub_100043994(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000439DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100043A44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100043AD8()
{
  sub_100017A9C(&qword_1000E6950, &qword_1000AC408);
  sub_100017A9C(&qword_1000E6960, &qword_1000AC418);
  sub_100029050(&qword_1000E6968, &qword_1000E6950, &qword_1000AC408, &protocol conformance descriptor for VStack<A>);
  sub_100029050(&qword_1000E6970, &qword_1000E6960, &qword_1000AC418, &protocol conformance descriptor for VStack<A>);
  return swift_getOpaqueTypeConformance2();
}

void sub_100043BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100017A54(&unk_1000E5270, &unk_1000AAC10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000AA7C0;
  type metadata accessor for EntryRequest(0);
  sub_1000A3370();
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_10001A97C();
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  sub_100028E34(0, &qword_1000E76B0, OS_os_log_ptr);
  v11 = sub_1000A3190();
  v12 = sub_1000A3090();
  sub_1000A1DB0("fetching entry for request %{public}@", 37, 2, &_mh_execute_header, v11, v12, v10);

  type metadata accessor for TodayContent(0);
  sub_1000A1BF0();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  v14 = sub_1000A1B60();
  sub_1000A1B80();

  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;

  v16 = sub_1000A1B60();
  sub_1000A1B90();
}

uint64_t sub_100043E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentServiceRequest(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100018688((a1 + 16), *(a1 + 40));
  v8 = sub_100044848();
  v9 = type metadata accessor for EntryRequest(0);
  sub_100044E5C(a2 + *(v9 + 20), v7 + *(v5 + 28), type metadata accessor for LayoutContext);
  v10 = (a2 + *(v9 + 24));
  v11 = *(v10 + 4);
  *v7 = v8;
  v12 = v7 + *(v5 + 32);
  v13 = *v10;
  v14 = v10[1];
  *v12 = *v10;
  *(v12 + 1) = v14;
  *(v12 + 4) = v11;
  v15 = v13;
  type metadata accessor for ContentService();
  v16 = v15;

  v17 = sub_100084548(v7);
  sub_100044EC4(v7, type metadata accessor for ContentServiceRequest);
  return v17;
}

uint64_t sub_100043F7C(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for NewsTimelineEntry(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044E5C(a1, &v7[*(v5 + 28)], type metadata accessor for TodayContent);
  sub_1000A1800();
  a2(v7);
  return sub_100044EC4(v7, type metadata accessor for NewsTimelineEntry);
}

uint64_t sub_100044058(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_1000A3070();
  sub_100017A54(&unk_1000E5270, &unk_1000AAC10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000AA7C0;
  sub_100017A54(&unk_1000E52C0, &qword_1000AA8A0);
  sub_1000A3370();
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10001A97C();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_100028E34(0, &qword_1000E76B0, OS_os_log_ptr);
  v6 = sub_1000A3190();
  sub_1000A1DB0("encountered %{public}@ while fetching entry", 43, 2, &_mh_execute_header, v6, v4, v5);

  return a2(a1);
}

uint64_t sub_10004419C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[0] = a2;
  v4 = sub_1000A1880();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000A2D00();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for ContentServiceRequest(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = (v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for TodayContent(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = (v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = (v29 - v14);
  sub_100018688((v2 + 16), *(v2 + 40));
  v16 = sub_100044848();
  v17 = type metadata accessor for EntryRequest(0);
  sub_100044E5C(a1 + *(v17 + 20), v9 + *(v7 + 28), type metadata accessor for LayoutContext);
  v18 = (a1 + *(v17 + 24));
  v19 = *(v18 + 4);
  *v9 = v16;
  v20 = v9 + *(v7 + 32);
  v21 = *v18;
  v22 = v18[1];
  *v20 = *v18;
  *(v20 + 1) = v22;
  *(v20 + 4) = v19;
  v23 = v21;

  sub_1000A2CF0();
  sub_1000A1850();
  v24 = sub_1000A2D80();
  v26 = v25;
  sub_100080B88(v9, 2, v13);
  sub_100062320(v24, v26, v15);

  sub_100044EC4(v13, type metadata accessor for TodayContent);
  sub_100044EC4(v9, type metadata accessor for ContentServiceRequest);
  v27 = type metadata accessor for NewsTimelineEntry(0);
  sub_100044E5C(v15, v29[0] + *(v27 + 20), type metadata accessor for TodayContent);
  sub_1000A1800();
  return sub_100044EC4(v15, type metadata accessor for TodayContent);
}

uint64_t sub_1000444A8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ContentServiceRequest(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for TodayContent(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = (&v31 - v14);
  sub_100018688((v3 + 16), *(v3 + 40));
  v16 = sub_100044848();
  v17 = type metadata accessor for EntryRequest(0);
  sub_100044E5C(a1 + *(v17 + 20), v9 + *(v7 + 28), type metadata accessor for LayoutContext);
  v18 = (a1 + *(v17 + 24));
  v19 = *(v18 + 4);
  *v9 = v16;
  v20 = v9 + *(v7 + 32);
  v21 = *v18;
  v22 = v18[1];
  *v20 = *v18;
  *(v20 + 1) = v22;
  *(v20 + 4) = v19;
  v23 = v21;

  v24 = sub_1000A15F0();
  v25 = sub_1000834F4(v24);
  v27 = v26;
  sub_100080B88(v9, v28, v13);
  sub_100062320(v25, v27, v15);

  sub_100044EC4(v13, type metadata accessor for TodayContent);
  sub_100044EC4(v9, type metadata accessor for ContentServiceRequest);
  v29 = type metadata accessor for NewsTimelineEntry(0);
  sub_100044E5C(v15, a3 + *(v29 + 20), type metadata accessor for TodayContent);
  sub_1000A1800();
  return sub_100044EC4(v15, type metadata accessor for TodayContent);
}

uint64_t sub_100044710(uint64_t a1)
{
  sub_100017A54(&qword_1000E6AA8, &qword_1000AC540);
  swift_allocObject();
  return sub_1000A1BD0();
}

uint64_t type metadata accessor for EntryRequest(uint64_t a1)
{
  result = qword_1000E6B10;
  if (!qword_1000E6B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000447EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100044848()
{
  v1 = v0;
  v2 = sub_1000A1700();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(NTPBSectionSlotCostInfo) init];
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v7 = result;
  result = [objc_allocWithZone(NTPBTodayResultOperationInfo) init];
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v8 = result;
  v9 = v0 + *(type metadata accessor for EntryRequest(0) + 20);
  v10 = *(v9 + 32);
  [v8 setSlotsLimit:v10];
  [v8 setRespectsWidgetSlotsLimit:1];
  [v8 setRespectsWidgetVisibleSectionsPerQueueLimit:1];
  v11 = v9;
  v12 = sub_100045CD8();
  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  [v8 setSourceNameImageSizePreset:v12];
  [v8 setFetchWidgetConfig:1];
  result = FCURLForContainerizedUserAccountCachesDirectory();
  if (result)
  {
    v13 = result;
    sub_1000A16C0();

    sub_1000A1670(v14);
    v16 = v15;
    (*(v3 + 8))(v5, v2);
    [v8 setAssetsDirectoryFileURL:v16];

    [v8 setThumbnailSizePreset:3];
    v17 = *(v9 + 16);
    if (v17 > 2)
    {
      if (v17 == 3)
      {
        v18 = 3;
        goto LABEL_17;
      }

      if (v17 == 6)
      {
        v18 = 4;
        goto LABEL_17;
      }
    }

    else
    {
      if (v17 == 1)
      {
        [v8 setWidgetSize:1];
        goto LABEL_15;
      }

      if (v17 == 2)
      {
        v18 = 2;
LABEL_17:
        [v8 setWidgetSize:v18];
LABEL_18:
        v21 = sub_100047118();
        [v21 nt_scaledValueForValue:1.0];
        v23 = v22;

        [v7 setSectionTitleSlotCost:v23 * 12.0 + *v9 + 6.0];
        v24 = *(v9 + 8);
        sub_1000474D0();
        [v7 setSectionFooterSlotCost:v24 - v25];
        sub_1000474D0();
        v27 = v26;
        sub_100047FDC();
        v29 = v28;
        v30 = type metadata accessor for LayoutContext(0);
        v31 = *(v9 + *(v30 + 40));
        sub_100047FDC();
        v33 = v31 * v32;
        sub_1000474D0();
        v35 = v33 - (v34 + v34);
        sub_1000474D0();
        v37 = v35 + (v31 + v31) * v36;
        sub_100047FDC();
        v39 = v27 + v29 * (sub_100047C84() * (v37 / v38));
        sub_1000474D0();
        [v7 setHeadlineSlotCost:v40 + v39];
        [v8 setDynamicThumbnailSizeMinimumSizeInPixels:{*(v9 + *(v30 + 36)) * 128.0, *(v9 + *(v30 + 36)) * 128.0}];
        sub_100045D34([v8 setAllowSectionTitles:1]);
        sub_100045D34([v8 setMinHeadlineScale:?]);
        [v8 setBannerSlotCost:{sub_100045A9C(objc_msgSend(v8, "setMaxHeadlineScale:"))}];
LABEL_19:
        [v8 setSectionSlotCostInfo:v7];
        [v8 setQualityOfService:25];
        v41 = [objc_opt_self() mainScreen];
        [v41 scale];
        v43 = v42;

        [v8 setScale:v43];
        v44 = [objc_opt_self() activeInputModes];
        sub_100028E34(0, &qword_1000E6AB0, UITextInputMode_ptr);
        v11 = sub_1000A2F10();

        if (!(v11 >> 62))
        {
          result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
LABEL_21:
            if ((v11 & 0xC000000000000001) != 0)
            {
              v45 = sub_1000A32D0();
LABEL_24:
              v46 = v45;

              v47 = [v46 primaryLanguage];

              if (v47)
              {
LABEL_30:
                [v8 setKeyboardInputMode:v47];

                [v8 setRequest:*v1];
                return v8;
              }

LABEL_29:
              v47 = 0;
              goto LABEL_30;
            }

            if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v45 = *(v11 + 32);
              goto LABEL_24;
            }

            __break(1u);
            goto LABEL_33;
          }

LABEL_28:

          goto LABEL_29;
        }

LABEL_27:
        result = sub_1000A33D0();
        if (result)
        {
          goto LABEL_21;
        }

        goto LABEL_28;
      }
    }

    [v8 setWidgetSize:0];
    if (v17 != 11)
    {
      goto LABEL_18;
    }

LABEL_15:
    [v7 setSectionTitleSlotCost:0.0];
    [v7 setSectionFooterSlotCost:0.0];
    [v8 slotsLimit];
    [v7 setHeadlineSlotCost:?];
    v19 = *(v9 + 24);
    v20 = *(v9 + *(type metadata accessor for LayoutContext(0) + 36));
    [v8 setDynamicThumbnailSizeMinimumSizeInPixels:{v19 * v20, v10 * v20}];
    [v8 setAllowSectionTitles:0];
    goto LABEL_19;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100044E5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100044EC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100044F38(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100044FF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004509C(uint64_t a1)
{
  result = sub_100028E34(319, &unk_1000E6B20, NTPBTodayModuleContentRequest_ptr);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LayoutContext(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100045150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000A2250();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44));
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

uint64_t sub_100045234(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000A2250();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for LayoutContext(uint64_t a1)
{
  result = qword_1000E6BB0;
  if (!qword_1000E6BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004533C(uint64_t a1)
{
  type metadata accessor for CHSWidgetFamily(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_1000A2250();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id sub_1000453FC()
{
  v0 = sub_1000A2250();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v20 - v6;
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = objc_opt_self();
  v21 = v10;
  type metadata accessor for LayoutContext(0);
  sub_100046E98(v7);
  sub_100046FD8(v4);
  sub_10003EDE0(v7, v4, v9);
  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v7, v0);
  v12 = sub_10003EB20();
  v11(v9, v0);
  v13 = [v10 nt_preferredFontForCondensedTextStyle:2 contentSizeCategory:v12];

  [v13 nt_scaledValueForValue:1.0];
  v15 = v14;

  sub_100046E98(v7);
  sub_100046FD8(v4);
  sub_10003EDE0(v7, v4, v9);
  v11(v4, v0);
  v11(v7, v0);
  v16 = sub_10003EB20();
  v11(v9, v0);
  v17 = [v21 nt_preferredFontForCondensedTextStyle:2 contentSizeCategory:v16];

  v18 = [v17 fontWithSize:v15 * 15.0];
  return v18;
}

void sub_1000456A0()
{
  v1 = *(v0 + 16) - 1;
  if (v1 >= 0xB || ((0x427u >> v1) & 1) == 0)
  {
    sub_1000A32B0(38);
    v2._object = 0x80000001000B3FF0;
    v2._countAndFlagsBits = 0xD000000000000024;
    sub_1000A2E10(v2);
    type metadata accessor for CHSWidgetFamily(0);
    sub_1000A3370();
    sub_1000A33B0();
    __break(1u);
  }
}

uint64_t sub_100045790(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x696772614D706F74;
  if (a1 <= 3u)
  {
    v4 = 0x6C696D6146736863;
    v5 = 0xEC000000746E4979;
    if (a1 != 2)
    {
      v4 = 0x5379616C70736964;
      v5 = 0xEB00000000657A69;
    }

    v8 = 0x614D6D6F74746F62;
    v9 = 0xEC0000006E696772;
    if (!a1)
    {
      v8 = 0x696772614D706F74;
      v9 = 0xE90000000000006ELL;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0x696C64616548746ELL;
    v5 = 0xEF656C616353656ELL;
    v6 = 0x686563616C507369;
    v7 = 0xED00007265646C6FLL;
    if (a1 != 7)
    {
      v6 = 0x6569766572507369;
      v7 = 0xE900000000000077;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0xD00000000000001BLL;
    v9 = 0x80000001000B3090;
    if (a1 != 4)
    {
      v8 = 0x5379616C70736964;
      v9 = 0xEC000000656C6163;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v2 = 0xEB00000000657A69;
        if (v11 != 0x5379616C70736964)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }

      v13 = 0x6C696D6146736863;
      v14 = 1953384825;
    }

    else
    {
      if (!a2)
      {
        goto LABEL_39;
      }

      v13 = 0x614D6D6F74746F62;
      v14 = 1852401522;
    }
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEF656C616353656ELL;
        if (v11 != 0x696C64616548746ELL)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }

      if (a2 == 7)
      {
        v2 = 0xED00007265646C6FLL;
        if (v11 != 0x686563616C507369)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }

      v3 = 0x6569766572507369;
      v2 = 0xE900000000000077;
LABEL_39:
      if (v11 != v3)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    if (a2 == 4)
    {
      v2 = 0x80000001000B3090;
      if (v11 != 0xD00000000000001BLL)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v13 = 0x5379616C70736964;
    v14 = 1701601635;
  }

  v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v11 != v13)
  {
LABEL_45:
    v15 = sub_1000A3560();
    goto LABEL_46;
  }

LABEL_43:
  if (v12 != v2)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

double sub_100045A9C(uint64_t a1)
{
  v2 = sub_100047118();
  [v2 nt_scaledValueForValue:1.0];
  v4 = v3;

  v5 = v4 * 12.0 + *v1 + 6.0;
  sub_1000474D0();
  v7 = v6;
  sub_100047FDC();
  v9 = v8;
  v10 = *(v1 + *(type metadata accessor for LayoutContext(0) + 40));
  sub_100047FDC();
  v12 = v10 * v11;
  sub_1000474D0();
  v14 = v12 - (v13 + v13);
  sub_1000474D0();
  v16 = v14 + (v10 + v10) * v15;
  sub_100047FDC();
  v18 = v7 + v9 * (sub_100047C84() * (v16 / v17));
  sub_1000474D0();
  v20 = v5 + v19 + v18;
  v21 = v1[1];
  sub_1000474D0();
  return v21 - v22 + v20;
}

void sub_100045B80(uint64_t a1@<X8>)
{
  v3 = sub_1000453FC();
  sub_100047FDC();
  v5 = v4;
  v6 = *(v1 + *(type metadata accessor for LayoutContext(0) + 40));
  sub_100047FDC();
  v8 = v6 * v7;
  sub_1000474D0();
  v10 = v8 - (v9 + v9);
  sub_1000474D0();
  v12 = v10 + (v6 + v6) * v11;
  sub_100047FDC();
  v14 = v5 * (sub_100047C84() * (v12 / v13));
  v15 = sub_100047BEC();
  v17 = v16;
  v19 = v18;
  sub_10004765C();
  v21 = v20;
  sub_1000456A0();
  v23 = v22;
  sub_1000477DC();
  v25 = v24;
  v26 = sub_1000479B8();
  v27 = [objc_opt_self() nt_preferredFontForCondensedTextStyle:2 contentSizeCategory:UIContentSizeCategoryLarge];
  sub_10004765C();
  v29 = v28;
  sub_10004765C();
  v31 = v30 + 3.0;
  sub_1000474D0();
  *a1 = v3;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15;
  *(a1 + 24) = v17;
  *(a1 + 32) = v19 & 1;
  *(a1 + 40) = v21;
  *(a1 + 48) = v23;
  *(a1 + 56) = v25;
  *(a1 + 64) = v26;
  *(a1 + 72) = v27;
  *(a1 + 80) = v29;
  *(a1 + 88) = v31;
  *(a1 + 96) = v32;
}

uint64_t sub_100045CD8()
{
  v1 = *(v0 + *(type metadata accessor for LayoutContext(0) + 36));
  sub_10004765C();
  v3 = v1 * v2;
  v4 = v3 >= 24.0 || v3 < 22.0;
  v5 = 1;
  if (v4)
  {
    v5 = 2;
  }

  if (v3 >= 22.0 || v3 < 0.0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void sub_100045D34(uint64_t a1)
{
  sub_1000474D0();
  sub_1000474D0();
  v2 = *(v1 + 16);
  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      return;
    }

    if (v2 != 2)
    {
LABEL_13:
      sub_1000A32B0(43);
      v4._object = 0x80000001000B3EE0;
      v4._countAndFlagsBits = 0xD000000000000029;
      sub_1000A2E10(v4);
      type metadata accessor for CHSWidgetFamily(0);
      sub_1000A3370();
      sub_1000A33B0();
      __break(1u);
      return;
    }

LABEL_10:
    sub_100047C84();
    return;
  }

  if (v2 == 3 || v2 == 6)
  {
    goto LABEL_10;
  }

  if (v2 != 11)
  {
    goto LABEL_13;
  }
}

unint64_t sub_100045E8C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x696772614D706F74;
    v6 = 0x6C696D6146736863;
    if (a1 != 2)
    {
      v6 = 0x5379616C70736964;
    }

    if (a1)
    {
      v5 = 0x614D6D6F74746F62;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696C64616548746ELL;
    v2 = 0x686563616C507369;
    if (a1 != 7)
    {
      v2 = 0x6569766572507369;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001BLL;
    if (a1 != 4)
    {
      v3 = 0x5379616C70736964;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_100045FF4()
{
  v1 = *v0;
  sub_1000A35F0();
  sub_100046044(v3, v1);
  return sub_1000A3620();
}

uint64_t sub_100046044(uint64_t a1, unsigned __int8 a2)
{
  sub_1000A2DD0();
}

Swift::Int sub_1000461D4(uint64_t a1)
{
  v2 = *v1;
  sub_1000A35F0();
  sub_100046044(v4, v2);
  return sub_1000A3620();
}

unint64_t sub_100046218@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004882C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100046248@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100045E8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}