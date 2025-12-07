id sub_100002030()
{
  type metadata accessor for StringUtils();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1000E4B68 = result;
  return result;
}

uint64_t sub_1000020A8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC20, &unk_100083720);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for GeneralMapsWidget(0);
  v3 = (a1 + v2[6]);
  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v4 = qword_1000E4B68;
  v28._countAndFlagsBits = 0x8000000100090CD0;
  v34._countAndFlagsBits = 0x6974736567677553;
  v34._object = 0xEB00000000736E6FLL;
  v30._object = 0x8000000100090C90;
  v30._countAndFlagsBits = 0xD000000000000017;
  v32.value._countAndFlagsBits = 0;
  v32.value._object = 0;
  v5.super.isa = qword_1000E4B68;
  *v3 = sub_10007D258(v30, v32, v5, v34, 0xD000000000000028, v28);
  v3[1] = v6;
  v7 = (a1 + v2[7]);
  v29._countAndFlagsBits = 0x8000000100090D60;
  v31._object = 0x8000000100090CB0;
  v35._object = 0x8000000100090D00;
  v31._countAndFlagsBits = 0xD000000000000017;
  v33.value._countAndFlagsBits = 0;
  v33.value._object = 0;
  v8.super.isa = v4;
  v35._countAndFlagsBits = 0x1000000000000053;
  *v7 = sub_10007D258(v31, v33, v8, v35, 0xD00000000000001BLL, v29);
  v7[1] = v9;
  IsEnabled_VisitedPlaces = MapsFeature_IsEnabled_VisitedPlaces();
  sub_100015240(&qword_1000E2240, &qword_100085E90);
  v11 = sub_10007DFF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = (v12 + 104);
  v16 = 2 * v13;
  v17 = swift_allocObject();
  if (IsEnabled_VisitedPlaces)
  {
    *(v17 + 16) = xmmword_100085980;
    v18 = v17 + v14;
    v19 = *v15;
    (*v15)(v18, enum case for WidgetFamily.systemSmall(_:), v11);
    v19(v18 + v13, enum case for WidgetFamily.systemMedium(_:), v11);
    v19(v18 + v16, enum case for WidgetFamily.systemLarge(_:), v11);
    v20 = enum case for WidgetFamily.accessoryRectangular(_:);
    v21 = v18 + 3 * v13;
  }

  else
  {
    *(v17 + 16) = xmmword_100083D00;
    v22 = v17 + v14;
    v19 = *v15;
    (*v15)(v22, enum case for WidgetFamily.systemSmall(_:), v11);
    v19(v22 + v13, enum case for WidgetFamily.systemMedium(_:), v11);
    v20 = enum case for WidgetFamily.systemLarge(_:);
    v21 = v22 + v16;
  }

  v19(v21, v20, v11);
  *(a1 + v2[8]) = v17;
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v23 = sub_10007D5C8();
  sub_1000046BC(v23, qword_1000E4B28);
  v24 = sub_10007D5A8();
  v25 = sub_10007E288();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "GeneralMapsWidget: init", v26, 2u);
  }

  if (qword_1000DE278 != -1)
  {
    swift_once();
  }

  sub_100055CA8();
  [objc_opt_self() configureGEOServiceTraitsAndClientCapabilitiesHardwareIdentifier];
  type metadata accessor for GeneralMapsTimelineProvider(0);
  swift_allocObject();
  result = sub_10006CA2C();
  *(a1 + v2[5]) = result;
  return result;
}

void sub_100002548()
{
  v1 = v0;
  v2 = sub_10007DF48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = sub_10007DF68();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
LABEL_4:
    v8 = sub_10007D5C8();
    sub_1000046BC(v8, qword_1000E4B28);
    v9 = sub_10007D5A8();
    v10 = sub_10007E288();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "GeneralMapsStateCollector: skipped collectNavigationRoute (state collection cancelled)", v11, 2u);
    }

    goto LABEL_14;
  }

  if (*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled))
  {
    if (qword_1000DE268 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v12 = sub_10007D5C8();
  sub_1000046BC(v12, qword_1000E4B28);
  v13 = sub_10007D5A8();
  v14 = sub_10007E2C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "GeneralMapsStateCollector: collectNavigationRoute BEGIN", v15, 2u);
  }

  dispatch_group_enter(*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup));
  sub_100019908();
  v16 = objc_opt_self();
  v17 = [v16 sharedService];
  if (v17)
  {
    v18 = v17;
    [v17 registerObserver:v1];
  }

  v19 = [v16 sharedService];
  if (v19)
  {
    v9 = v19;
    [v19 openForClient:v1];
LABEL_14:
  }
}

uint64_t sub_100002850(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10007DEB8();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v41 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10007DED8();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10007D3B8();
  v11 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = v12;
  v37 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007DF48();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v17 = sub_10007D5C8();
  sub_1000046BC(v17, qword_1000E4B28);
  v18 = sub_10007D5A8();
  v19 = sub_10007E2C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = v4;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "GeneralMapsStateCollector: collect BEGIN", v20, 2u);
    v4 = v35;
  }

  v21 = *&v4[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue];
  *v16 = v21;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v21;
  LOBYTE(v21) = sub_10007DF68();
  result = (*(v14 + 8))(v16, v13);
  if (v21)
  {
    sub_10001A064();
    v24 = v37;
    v23 = v38;
    (*(v11 + 16))(v37, a1, v38);
    v25 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v4;
    (*(v11 + 32))(v26 + v25, v24, v23);
    v27 = v4;
    sub_100016FB0(a1, sub_100025AC4, v26);

    sub_100002548();
    v28 = swift_allocObject();
    v28[2] = a2;
    v28[3] = a3;
    v28[4] = v27;
    aBlock[4] = sub_100025B94;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000041A4;
    aBlock[3] = &unk_1000C88E8;
    v29 = _Block_copy(aBlock);
    v30 = v27;

    v31 = v39;
    sub_10007DEC8();
    v45 = _swiftEmptyArrayStorage;
    sub_100002E64();
    sub_100015240(&unk_1000DE980, &unk_1000835B0);
    sub_100002EBC();
    v32 = v41;
    v33 = v44;
    sub_10007E3F8();
    sub_10007E2E8();
    _Block_release(v29);
    (*(v43 + 8))(v32, v33);
    (*(v40 + 8))(v31, v42);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100002DE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002DF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002E04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002E14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002E24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002E34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002E44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002E54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100002E64()
{
  result = qword_1000DF520;
  if (!qword_1000DF520)
  {
    sub_10007DEB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF520);
  }

  return result;
}

unint64_t sub_100002EBC()
{
  result = qword_1000DF530;
  if (!qword_1000DF530)
  {
    sub_100015288(&unk_1000DE980, &unk_1000835B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF530);
  }

  return result;
}

uint64_t sub_100002F20(uint64_t a1, char *a2, void (*a3)(void), id a4)
{
  v107 = a3;
  v108 = a2;
  v6 = sub_100015240(&qword_1000E24F0, &qword_100085FF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v90 - v7;
  v9 = type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v100 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007DEB8();
  v105 = *(v12 - 8);
  v106 = v12;
  __chkstk_darwin(v12);
  v102 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10007DED8();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10007D3B8();
  v109 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v90 - v20;
  __chkstk_darwin(v19);
  v23 = &v90 - v22;
  v24 = *(a1 + 128);
  if (v24)
  {
    v93 = v10;
    v95 = v9;
    v98 = a1;
    v99 = a4;

    sub_10007D3A8();
    v25 = OBJC_IVAR____TtCC17GeneralMapsWidget27GeneralMapsTimelineProviderP33_E134A4B3F820D74145B932C0401CE63122StateCollectionSession_expiration;
    swift_beginAccess();
    v26 = v109;
    v27 = *(v109 + 16);
    v97 = v25;
    v94 = v27;
    v27(v21, (v24 + v25), v15);
    LOBYTE(v25) = sub_10007D2E8();
    v28 = *(v26 + 8);
    v28(v21, v15);
    v96 = v28;
    v28(v23, v15);
    if (v25)
    {
      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v29 = sub_10007D5C8();
      sub_1000046BC(v29, qword_1000E4B28);
      v30 = sub_10007D5A8();
      v31 = sub_10007E298();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "GeneralMapsTimelineProvider: refreshIfNeeded: was already refreshing", v32, 2u);
      }

      v33 = v94;
      v94(v23, (v24 + v97), v15);
      v34 = v108;
      v35 = sub_10007D2D8();
      v96(v23, v15);
      if (v35)
      {
        v33(v18, v34, v15);

        v36 = sub_10007D5A8();
        v37 = sub_10007E288();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 134349056;
          v39 = v33;
          v40 = v97;
          v39(v23, v24 + v97, v15);
          v41 = v37;
          sub_10007D2B8();
          v43 = v42;
          v44 = v96;
          v96(v23, v15);
          v44(v18, v15);
          *(v38 + 4) = v43;
          _os_log_impl(&_mh_execute_header, v36, v41, "GeneralMapsTimelineProvider: refreshIfNeeded: extending refresh session expiration by %{public}f seconds", v38, 0xCu);
          v34 = v108;
        }

        else
        {

          v96(v18, v15);
          v40 = v97;
        }

        swift_beginAccess();
        (*(v109 + 24))(v24 + v40, v34, v15);
        swift_endAccess();
      }

      v115 = v107;
      v116 = v99;
      aBlock = _NSConcreteStackBlock;
      v112 = 1107296256;
      v113 = sub_1000041A4;
      v114 = &unk_1000C9830;
      v86 = _Block_copy(&aBlock);

      v87 = v101;
      sub_10007DEC8();
      v117 = _swiftEmptyArrayStorage;
      sub_100077AB8(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100015240(&unk_1000DE980, &unk_1000835B0);
      sub_100077198(&qword_1000DF530, &unk_1000DE980, &unk_1000835B0);
      v88 = v102;
      v89 = v106;
      sub_10007E3F8();
      sub_10007E2E8();
      _Block_release(v86);
      (*(v105 + 8))(v88, v89);
      (*(v103 + 8))(v87, v104);
    }

    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v45 = sub_10007D5C8();
    sub_1000046BC(v45, qword_1000E4B28);

    v46 = sub_10007D5A8();
    v47 = sub_10007E288();

    v48 = os_log_type_enabled(v46, v47);
    v10 = v93;
    if (v48)
    {
      v49 = swift_slowAlloc();
      v92 = v47;
      v50 = v49;
      v91 = swift_slowAlloc();
      aBlock = v91;
      *v50 = 136446210;
      v94(v23, (v24 + v97), v15);
      sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v51 = sub_10007E588();
      v53 = v52;
      v96(v23, v15);
      v54 = sub_100051190(v51, v53, &aBlock);

      *(v50 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v46, v92, "GeneralMapsTimelineProvider: refreshIfNeeded: clearing expired refresh session (expired at %{public}s)", v50, 0xCu);
      sub_1000250AC(v91);
    }

    a4 = v99;
    v9 = v95;
    a1 = v98;
    if (*(v98 + 128))
    {

      sub_100016D30();
      v9 = v95;
    }

    *(a1 + 128) = 0;
  }

  v55 = OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_timeline;
  swift_beginAccess();
  sub_100026310(a1 + v55, v8, &qword_1000E24F0, &qword_100085FF0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000256C0(v8, &qword_1000E24F0, &qword_100085FF0);
LABEL_26:
    v64 = v108;
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v65 = sub_10007D5C8();
    sub_1000046BC(v65, qword_1000E4B28);
    v66 = sub_10007D5A8();
    v67 = sub_10007E298();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "GeneralMapsTimelineProvider: refreshIfNeeded: will refresh!", v68, 2u);
    }

    v69 = *(a1 + 120);
    v70 = objc_allocWithZone(type metadata accessor for GeneralMapsStateCollector());
    v99 = v69;
    sub_1000161A4(v99);
    v72 = v71;
    v73 = v109;
    (*(v109 + 16))(v23, v64, v15);
    type metadata accessor for GeneralMapsTimelineProvider.StateCollectionSession(0);
    v74 = swift_allocObject();
    v75 = a1;
    v76 = OBJC_IVAR____TtCC17GeneralMapsWidget27GeneralMapsTimelineProviderP33_E134A4B3F820D74145B932C0401CE63122StateCollectionSession_group;
    v77 = v72;
    v100 = v77;
    v78 = dispatch_group_create();
    *(v74 + v76) = v78;
    (*(v73 + 32))(v74 + OBJC_IVAR____TtCC17GeneralMapsWidget27GeneralMapsTimelineProviderP33_E134A4B3F820D74145B932C0401CE63122StateCollectionSession_expiration, v23, v15);
    *(v74 + OBJC_IVAR____TtCC17GeneralMapsWidget27GeneralMapsTimelineProviderP33_E134A4B3F820D74145B932C0401CE63122StateCollectionSession_collector) = v77;
    *(a1 + 128) = v74;
    v79 = v78;

    dispatch_group_enter(v79);

    v115 = v107;
    v116 = a4;
    aBlock = _NSConcreteStackBlock;
    v112 = 1107296256;
    v113 = sub_1000041A4;
    v114 = &unk_1000C97E0;
    v80 = _Block_copy(&aBlock);

    v81 = v101;
    sub_10007DEC8();
    v110 = _swiftEmptyArrayStorage;
    sub_100077AB8(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100015240(&unk_1000DE980, &unk_1000835B0);
    sub_100077198(&qword_1000DF530, &unk_1000DE980, &unk_1000835B0);
    v82 = v102;
    v83 = v106;
    sub_10007E3F8();
    sub_10007E2E8();
    _Block_release(v80);
    (*(v105 + 8))(v82, v83);
    (*(v103 + 8))(v81, v104);

    v84 = swift_allocObject();
    *(v84 + 16) = v75;
    *(v84 + 24) = v74;

    v85 = v100;
    sub_100002850(v108, sub_1000778D4, v84);
  }

  v56 = v100;
  sub_100077E94(v8, v100, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
  sub_10007D3A8();
  sub_10007D2B8();
  v58 = v57;
  (*(v109 + 8))(v23, v15);
  if (v58 >= 15.0)
  {
    sub_100077A58(v56, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
    goto LABEL_26;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v59 = sub_10007D5C8();
  sub_1000046BC(v59, qword_1000E4B28);
  v60 = sub_10007D5A8();
  v61 = sub_10007E298();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&_mh_execute_header, v60, v61, "GeneralMapsTimelineProvider: refreshIfNeeded: refresh not needed", v62, 2u);
  }

  v107();
  return sub_100077A58(v56, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
}

uint64_t sub_100003E7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003EBC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100003F48()
{
  v1 = *(sub_10007D3B8() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(sub_10007E0C8() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v2 + v7 + 16) & ~v2;
  v9 = *(v0 + 16);
  v10 = (v0 + v7);
  v11 = *v10;
  v12 = v10[1];

  sub_100075618(v9, v0 + v3, v0 + v6, v11, v12, v0 + v8);
}

uint64_t sub_100004058(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 16, v4 | 7);
}

uint64_t sub_10000413C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1000041AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a1;
  v34 = a2;
  v4 = sub_10007DEB8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10007DED8();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007DF48();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = [v3 dispatchQueue];
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = sub_10007DF68();
  v17 = *(v12 + 8);
  v16 = v12 + 8;
  v17(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  v16 = OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_waitForLocationGroup;
  v18 = *&v3[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_waitForLocationGroup];
  if (v18)
  {
LABEL_8:
    v27 = v18;
    v28 = [v3 dispatchQueue];
    v29 = swift_allocObject();
    v30 = v34;
    v29[2] = v33;
    v29[3] = v30;
    v29[4] = v3;
    aBlock[4] = sub_100004700;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000041A4;
    aBlock[3] = &unk_1000C8C68;
    v31 = _Block_copy(aBlock);

    v32 = v3;
    sub_10007DEC8();
    v36 = _swiftEmptyArrayStorage;
    sub_100002E64();
    sub_100015240(&unk_1000DE980, &unk_1000835B0);
    sub_100002EBC();
    sub_10007E3F8();
    sub_10007E2E8();
    _Block_release(v31);

    (*(v5 + 8))(v7, v4);
    (*(v8 + 8))(v10, v35);
  }

  v19 = dispatch_group_create();
  v20 = *&v3[v16];
  *&v3[v16] = v19;
  v21 = v19;

  dispatch_group_enter(v21);
  if (qword_1000DE268 != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v22 = sub_10007D5C8();
  sub_1000046BC(v22, qword_1000E4B28);
  v23 = sub_10007D5A8();
  v24 = sub_10007E2C8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "GeneralMapsLocationUpdater: singleLocationUpdate BEGIN", v25, 2u);
  }

  result = *&v3[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_locationManager];
  if (result)
  {
    result = [result requestLocation];
    v18 = *&v3[v16];
    if (v18)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100004650()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000046BC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_10000470C(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNavigationRouteCancellation;
  if (*(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNavigationRouteCancellation))
  {

    sub_10007DF18();
    *(a1 + v1) = 0;

    sub_100004864();
  }

  else
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v3 = sub_10007D5C8();
    sub_1000046BC(v3, qword_1000E4B28);
    oslog = sub_10007D5A8();
    v4 = sub_10007E2A8();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "GeneralMapsStateCollector: collectNavigationRoute was cancelled just before nav service callback", v5, 2u);
    }
  }
}

void sub_100004864()
{
  v1 = v0;
  v2 = sub_100015240(&qword_1000DEA40, &qword_1000829D8);
  v3 = __chkstk_darwin(v2);
  v5 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v126 - v6;
  v8 = sub_10007DF48();
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = (&v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = sub_10007DF68();
  (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_60:
    swift_once();
LABEL_5:
    v16 = sub_10007D5C8();
    sub_1000046BC(v16, qword_1000E4B28);
    v17 = sub_10007D5A8();
    v18 = sub_10007E2A8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "GeneralMapsStateCollector: collectNavigationRoute END (state collection cancelled)", v19, 2u);
    }

    [v8 unregisterObserver:v1];
    if (![v8 *(v14 + 96)])
    {
      goto LABEL_9;
    }

LABEL_8:
    [v8 closeForClient:v1];
LABEL_9:
    dispatch_group_leave(*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup));

    return;
  }

  v15 = [objc_opt_self() sharedService];
  if (v15)
  {
    v8 = v15;
    v14 = &selRef_ticketForCategoryListWithTraits_isFromNoQueryState_;
    if (*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled))
    {
      if (qword_1000DE268 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_60;
    }

    if ([v15 isOpenForClient:v1])
    {
      if ([v8 isInNavigatingState])
      {
        v20 = [v8 route];
        if (v20)
        {
          v138 = v20;
          v21 = v20;
          v22 = [v8 batteryChargeInfoForRoute:v21];
          v23 = [v8 displayETAInfoForRoute:v21];
          if (v23)
          {
            v24 = v23;
            v25 = [v8 remainingDistanceInfoForRoute:v21];
            if (v25)
            {
              v136 = v25;
              p_isa = v21;
              v26 = [v8 upcomingStop];
              v27 = [v26 timezone];

              v133 = v22;
              if (v27)
              {
                sub_10007D438();

                v28 = 0;
              }

              else
              {
                v28 = 1;
              }

              v41 = sub_10007D448();
              v42 = *(v41 - 8);
              v43 = *(v42 + 56);
              v129 = v42 + 56;
              v130 = v43;
              v43(v7, v28, 1, v41);
              v132 = [p_isa transportType];
              v44 = *(v42 + 48);
              v131 = v41;
              v45 = v44(v7, 1, v41);
              v134 = v133;
              v135 = v24;
              v136 = v136;
              isa = 0;
              if (v45 != 1)
              {
                isa = sub_10007D428().super.isa;
                (*(v42 + 8))(v7, v131);
              }

              v47 = objc_allocWithZone(GuidanceETA);
              v49 = v135;
              v48 = v136;
              v50 = v134;
              v51 = [v47 initWithDisplayETA:v135 remainingDistance:v136 batteryChargeInfo:v134 destinationTimeZone:isa transportType:v132];

              if (!v51)
              {
                v66 = p_isa;

                if (qword_1000DE268 != -1)
                {
                  swift_once();
                }

                v67 = sub_10007D5C8();
                sub_1000046BC(v67, qword_1000E4B28);
                v138 = v66;
                v68 = v134;
                v134 = v135;
                v69 = v136;
                v70 = v8;
                v71 = sub_10007D5A8();
                v72 = sub_10007E2A8();
                v135 = v70;

                p_isa = &v68->isa;
                v73 = v134;
                v136 = v69;

                v132 = v72;
                if (os_log_type_enabled(v71, v72))
                {
                  v128 = v71;
                  v74 = swift_slowAlloc();
                  v127 = swift_slowAlloc();
                  *&v156[0] = v127;
                  *v74 = 136381699;
                  v75 = v73;
                  v76 = [v75 description];
                  v77 = sub_10007E158();
                  v79 = v78;
                  v134 = v75;

                  v80 = sub_100051190(v77, v79, v156);

                  *(v74 + 4) = v80;
                  *(v74 + 12) = 2081;
                  v81 = v136;
                  v82 = [v81 description];
                  v83 = sub_10007E158();
                  v85 = v84;
                  v136 = v81;

                  v86 = sub_100051190(v83, v85, v156);

                  *(v74 + 14) = v86;
                  *(v74 + 22) = 2081;
                  *&v154[0] = v133;
                  p_isa = p_isa;
                  sub_100015240(&qword_1000DEA48, &qword_1000829E0);
                  v87 = sub_10007E168();
                  v89 = sub_100051190(v87, v88, v156);

                  *(v74 + 24) = v89;
                  *(v74 + 32) = 2081;
                  v90 = v135;
                  v91 = [v135 upcomingStop];
                  v92 = [v91 timezone];

                  if (v92)
                  {
                    sub_10007D438();

                    v93 = 0;
                  }

                  else
                  {
                    v93 = 1;
                  }

                  v119 = &selRef_ticketForCategoryListWithTraits_isFromNoQueryState_;
                  v120 = v138;
                  v130(v5, v93, 1, v131);
                  v121 = sub_10007E168();
                  v123 = sub_100051190(v121, v122, v156);

                  *(v74 + 34) = v123;
                  *(v74 + 42) = 1026;
                  v124 = [v120 transportType];

                  *(v74 + 44) = v124;
                  v125 = v128;
                  _os_log_impl(&_mh_execute_header, v128, v132, "GeneralMapsStateCollector: collectNavigationRoute END (failed to create GuidanceETA) - displayETA: %{private}s, remainingDistance: %{private}s, batteryChargeInfo: %{private}s, destinationTimeZone: %{private}s, transportType: %{public}d", v74, 0x30u);
                  swift_arrayDestroy();
                }

                else
                {

                  v118 = v138;
                  v119 = &selRef_ticketForCategoryListWithTraits_isFromNoQueryState_;
                  v90 = v135;
                }

                [v90 unregisterObserver:v1];
                v35 = [v90 v119[12]];
LABEL_28:
                if ((v35 & 1) == 0)
                {
                  goto LABEL_9;
                }

                goto LABEL_8;
              }

              sub_100015ECC(v156);
              v161[0] = v158;
              sub_1000256C0(v161, &qword_1000DEA50, &qword_1000829E8);
              v52 = v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state;
              v53 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80);
              v154[4] = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64);
              v154[5] = v53;
              v155 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96);
              v54 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16);
              v154[0] = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state);
              v154[1] = v54;
              v55 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48);
              v154[2] = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32);
              v154[3] = v55;
              v56 = v156[0];
              v57 = v156[1];
              v58 = v156[3];
              v59 = v157;
              *(v52 + 32) = v156[2];
              *(v52 + 48) = v58;
              *v52 = v56;
              *(v52 + 16) = v57;
              v60 = v138;
              *(v52 + 64) = v59;
              *(v52 + 72) = v60;
              *(v52 + 96) = v160;
              *(v52 + 80) = v159;
              sub_1000256C0(v154, &qword_1000DE950, &qword_100082918);
              v61 = [v51 arrivalAMPMTimeString];
              if (v61)
              {
                v62 = v61;
                v63 = sub_10007E158();
                v65 = v64;
              }

              else
              {
                v63 = 0;
                v65 = 0;
              }

              v94 = *(v52 + 48);
              v141 = *(v52 + 32);
              v142 = v94;
              v143 = *(v52 + 64);
              v95 = *(v52 + 16);
              v140[0] = *v52;
              v140[1] = v95;
              v96 = *(v52 + 80);
              v97 = *(v52 + 88);
              v98 = *(v52 + 96);
              v148 = v95;
              v149 = v141;
              v150 = v94;
              v151 = v143;
              v147 = v140[0];
              v144 = v96;
              v145 = v97;
              v146 = v98;
              sub_100025354(v140, v152);

              v99 = *(v52 + 80);
              v152[4] = *(v52 + 64);
              v152[5] = v99;
              v153 = *(v52 + 96);
              v100 = *(v52 + 16);
              v152[0] = *v52;
              v152[1] = v100;
              v101 = *(v52 + 48);
              v152[2] = *(v52 + 32);
              v152[3] = v101;
              v102 = v151;
              *(v52 + 48) = v150;
              *(v52 + 64) = v102;
              v103 = v149;
              *(v52 + 16) = v148;
              *(v52 + 32) = v103;
              *v52 = v147;
              *(v52 + 80) = v63;
              *(v52 + 88) = v65;
              *(v52 + 96) = v98;
              sub_1000256C0(v152, &qword_1000DE950, &qword_100082918);
              if (qword_1000DE268 != -1)
              {
                swift_once();
              }

              v104 = sub_10007D5C8();
              sub_1000046BC(v104, qword_1000E4B28);
              v105 = p_isa;
              v106 = v51;
              v107 = sub_10007D5A8();
              v108 = sub_10007E2C8();

              if (os_log_type_enabled(v107, v108))
              {
                v109 = swift_slowAlloc();
                p_isa = swift_slowAlloc();
                v139 = p_isa;
                *v109 = 67174915;
                *(v109 + 4) = [v105 expectedTime] / 0x3C;

                *(v109 + 8) = 2081;
                v110 = v106;
                v111 = [v110 description];
                v138 = v106;
                v112 = v111;
                v113 = sub_10007E158();
                LODWORD(v133) = v108;
                v114 = v105;
                v116 = v115;

                v117 = sub_100051190(v113, v116, &v139);
                v105 = v114;

                *(v109 + 10) = v117;
                v106 = v138;
                _os_log_impl(&_mh_execute_header, v107, v133, "GeneralMapsStateCollector: collectNavigationRoute END (route with expected travel time: %{private}u mins, ETA %{private}s)", v109, 0x12u);
                sub_1000250AC(p_isa);
              }

              else
              {
              }

              v14 = 0x1000DC000;
              sub_100019CA4();

LABEL_27:
              [v8 unregisterObserver:v1];
              v35 = [v8 *(v14 + 96)];
              goto LABEL_28;
            }
          }

          if (qword_1000DE268 != -1)
          {
            swift_once();
          }

          v36 = sub_10007D5C8();
          sub_1000046BC(v36, qword_1000E4B28);
          v37 = v21;
          v38 = sub_10007D5A8();
          v39 = sub_10007E2A8();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 67174657;
            *(v40 + 4) = [v37 expectedTime]/ 0x3C;

            _os_log_impl(&_mh_execute_header, v38, v39, "GeneralMapsStateCollector: collectNavigationRoute END (route with expected travel time: %{private}u mins, but no ETA available)", v40, 8u);
          }

          else
          {

            v38 = v22;
            v22 = v37;
          }

          goto LABEL_27;
        }
      }

      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v34 = sub_10007D5C8();
      sub_1000046BC(v34, qword_1000E4B28);
      v30 = sub_10007D5A8();
      v31 = sub_10007E2C8();
      if (!os_log_type_enabled(v30, v31))
      {
LABEL_26:

        goto LABEL_27;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "GeneralMapsStateCollector: collectNavigationRoute END (not navigating)";
    }

    else
    {
      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v29 = sub_10007D5C8();
      sub_1000046BC(v29, qword_1000E4B28);
      v30 = sub_10007D5A8();
      v31 = sub_10007E2A8();
      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_26;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "GeneralMapsStateCollector: collectNavigationRoute END (nav service was closed for client)";
    }

    _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);

    goto LABEL_26;
  }

  __break(1u);
}

uint64_t sub_100005744(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100005854(uint64_t a1, int a2)
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

uint64_t sub_100005874(uint64_t result, int a2, int a3)
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

_DWORD *sub_1000058A8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *sub_1000058B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000058D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007D3B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = sub_100015240(&qword_1000DE638, &unk_1000826F0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_100005A2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10007D3B8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = sub_100015240(&qword_1000DE638, &unk_1000826F0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_100005B94()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100005C68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005CA0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100005CEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005D2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005D64()
{
  v1 = *(sub_100015240(&qword_1000DE928, &unk_100082900) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_10007D3B8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100005EB8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005F08()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100005FF8()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000060F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006130()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006170()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100006254()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100006330()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v3 + ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);

  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

uint64_t sub_10000643C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007D3B8();
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

uint64_t sub_1000064FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10007D3B8();
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

uint64_t sub_1000065C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NearbyEntryContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100015240(&qword_1000DEB40, qword_100082B10);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000066C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NearbyEntryContent(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100015240(&qword_1000DEB40, qword_100082B10);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000067CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007DD18();
  *a1 = result;
  return result;
}

uint64_t sub_100006880(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100015240(&qword_1000DEB40, qword_100082B10);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for NearbyEntryContent(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1000069F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100015240(&qword_1000DEB40, qword_100082B10);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for NearbyEntryContent(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100006B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyEntryContent(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100006BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyEntryContent(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100006C48()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000DEFF0, &qword_100082F88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NearbyButtonContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100006E7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NearbyButtonContent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100006F34()
{
  sub_100015288(&qword_1000DEEF0, &qword_100082E40);
  sub_100015288(&qword_1000DEEE8, &qword_100082E38);
  sub_100015288(&qword_1000DEF10, &qword_100082E60);
  sub_10002DDAC(&qword_1000DEF18, &qword_1000DEEE8, &qword_100082E38, &protocol conformance descriptor for ZStack<A>);
  sub_10002DDAC(&qword_1000DEF20, &qword_1000DEF10, &qword_100082E60, &unk_100083A08);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100007068()
{
  sub_100015288(&qword_1000DEFD0, &qword_100082F70);
  sub_10002DDAC(&qword_1000DEFE0, &qword_1000DEFD0, &qword_100082F70, &protocol conformance descriptor for HStack<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100007100()
{
  sub_100015288(&qword_1000DF060, &qword_100083010);
  sub_100015288(&qword_1000DF068, &qword_100083018);
  sub_100015288(&qword_1000DEF10, &qword_100082E60);
  sub_10002DDAC(&qword_1000DF070, &qword_1000DF068, &qword_100083018, &protocol conformance descriptor for ZStack<A>);
  sub_10002DDAC(&qword_1000DEF20, &qword_1000DEF10, &qword_100082E60, &unk_100083A08);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100007234()
{
  sub_100015288(&qword_1000DF080, &qword_100083028);
  sub_100015288(&qword_1000DF078, &qword_100083020);
  sub_100015288(&qword_1000DEF10, &qword_100082E60);
  sub_10002DDAC(&qword_1000DF090, &qword_1000DF078, &qword_100083020, &protocol conformance descriptor for ZStack<A>);
  sub_10002DDAC(&qword_1000DEF20, &qword_1000DEF10, &qword_100082E60, &unk_100083A08);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100007424()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100007464()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000074A4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000074DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CommuteWindowEntryContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100015240(&qword_1000DEB40, qword_100082B10);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100007614(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CommuteWindowEntryContent(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100015240(&qword_1000DEB40, qword_100082B10);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100007730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100015240(&qword_1000DEB40, qword_100082B10);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for CommuteWindowEntryContent(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_100007888(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100015240(&qword_1000DEB40, qword_100082B10);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for CommuteWindowEntryContent(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_100007A04()
{
  sub_100015288(&qword_1000DF828, &qword_1000838D8);
  sub_100015288(&qword_1000DF820, &qword_1000838D0);
  sub_100015288(&qword_1000DF850, &qword_1000838F8);
  sub_10002DDAC(&qword_1000DF858, &qword_1000DF820, &qword_1000838D0, &protocol conformance descriptor for VStack<A>);
  sub_10002DDAC(&qword_1000DF860, &qword_1000DF850, &qword_1000838F8, &unk_100083A08);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100007B38()
{
  type metadata accessor for CommuteWindowPlatterContent(255);
  sub_100035A8C(&qword_1000DF880, type metadata accessor for CommuteWindowPlatterContent, &unk_10008562C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100007BC0()
{
  sub_100015288(&qword_1000DF890, qword_100083990);
  sub_100015288(&qword_1000DF888, &qword_100083988);
  sub_100036114();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100007C84(uint64_t a1)
{
  v2 = sub_100015240(&qword_1000DF940, &qword_100083A78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000DF940, &qword_100083A78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007D88(uint64_t *a1)
{
  sub_100015288(&qword_1000DFA00, &qword_100083B58);
  sub_10007D6E8();
  swift_getTupleTypeMetadata2();
  sub_10007DE98();
  swift_getWitnessTable();
  sub_10007DE18();
  v1 = sub_10007D6E8();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for ContentSizeCategoryLimiter(255, v1, WitnessTable, v3);
  return swift_getWitnessTable();
}

uint64_t sub_100007EC8(uint64_t *a1)
{
  sub_100015288(&qword_1000DFAD0, &unk_100083C30);
  sub_10007D6E8();
  sub_10002DDAC(&qword_1000DFAD8, &qword_1000DFAD0, &unk_100083C30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  return swift_getWitnessTable();
}

uint64_t sub_100007F74()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100007FBC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007FF4()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000080B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000080F0()
{
  v1 = *(sub_100015240(&qword_1000DE928, &unk_100082900) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_10007D3B8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000821C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000DFF50, qword_100083D90);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100008294(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000DFF50, qword_100083D90);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100008310@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007D7D8();
  *a1 = result;
  return result;
}

uint64_t sub_100008368@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007D768();
  *a1 = result;
  return result;
}

uint64_t sub_1000083C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10007D7B8();
  *a1 = result;
  return result;
}

uint64_t sub_100008414@<X0>(uint64_t a1@<X8>)
{
  result = sub_10007D818();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100008510(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000E0418, &qword_1000843E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10007D3B8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100015240(&qword_1000DF810, &qword_1000838C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000087B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_10007D3B8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100015240(&qword_1000DF810, &qword_1000838C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000088E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007D3E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10007D238();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000089D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10007D3E8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10007D238();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100008AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007E0C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483645)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    v12 = v11 <= 0;
    if (v11 < 0)
    {
      v11 = -1;
    }

    if (v12)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    v13 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_100008C14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10007E0C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483645)
  {
    *(a1 + *(a4 + 20)) = (a2 + 1);
  }

  else
  {
    v11 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100008D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CommuteWindowEntryContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100008E04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CommuteWindowEntryContent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100008EBC()
{
  v1 = type metadata accessor for CommuteWindowEntryContentResolver(0);
  v22 = *(*(v1 - 8) + 80);
  v2 = (v22 + 16) & ~v22;
  v21 = *(*(v1 - 8) + 64);
  v23 = sub_10007E0C8();
  v3 = *(v23 - 8);
  v4 = *(v3 + 80);
  v20 = *(v3 + 64);
  v24 = sub_10007D288();
  v5 = *(v24 - 8);
  v6 = *(v5 + 80);
  v19 = *(v5 + 64);
  v7 = v0 + v2;
  v8 = *(v0 + v2);
  if (v8 != 1)
  {
  }

  v9 = type metadata accessor for CommuteWindowEntryContent(0);
  v10 = *(v9 + 36);
  v11 = sub_10007D3B8();
  (*(*(v11 - 8) + 8))(v7 + v10, v11);
  v12 = v7 + *(v9 + 40);
  v13 = type metadata accessor for CommuteWindowEntryContent.ResolvedContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    (*(v3 + 8))(v12, v23);
    v14 = (v12 + *(v13 + 20));
    if (*v14 != 1)
    {
    }

    v15 = *(v13 + 24);
    v2 = (v22 + 16) & ~v22;
    if (!(*(v5 + 48))(v12 + v15, 1, v24))
    {
      (*(v5 + 8))(v12 + v15, v24);
    }
  }

  v16 = (v2 + v21 + v4) & ~v4;
  v17 = (v16 + v20 + v6) & ~v6;

  (*(v3 + 8))(v0 + v16, v23);
  (*(v5 + 8))(v0 + v17, v24);

  return _swift_deallocObject(v0, ((v19 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v22 | v4 | v6 | 7);
}

uint64_t sub_100009224()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000925C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000929C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000092D4()
{
  v1 = sub_100015240(&qword_1000E0948, &qword_100084800);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100009368()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000093A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000093D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000941C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100015240(&qword_1000DEB40, qword_100082B10);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for NavigationETAEntryContent(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_10000958C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100015240(&qword_1000DEB40, qword_100082B10);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for NavigationETAEntryContent(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10000979C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000097D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100015240(&qword_1000DEB40, qword_100082B10);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000098D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100015240(&qword_1000DEB40, qword_100082B10);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100009A00()
{
  sub_100015288(&qword_1000E1048, &qword_100084F20);
  sub_100015288(&qword_1000E1040, &qword_100084F18);
  sub_100015288(&qword_1000E1068, &qword_100084F40);
  sub_10002DDAC(&qword_1000E1070, &qword_1000E1040, &qword_100084F18, &protocol conformance descriptor for VStack<A>);
  sub_10002DDAC(&qword_1000E1078, &qword_1000E1068, &qword_100084F40, &unk_100083A08);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100009B34()
{
  type metadata accessor for SuggestedDestinationAccessoryRectangularPlatterContent(255);
  sub_100059190(&qword_1000E1098, type metadata accessor for SuggestedDestinationAccessoryRectangularPlatterContent, &unk_1000854C0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100009BBC()
{
  sub_100015288(&qword_1000E10B0, &qword_100085018);
  sub_100015288(&qword_1000E10A8, &qword_100085010);
  sub_100015288(&qword_1000E1068, &qword_100084F40);
  sub_10002DDAC(&qword_1000E10C8, &qword_1000E10A8, &qword_100085010, &protocol conformance descriptor for VStack<A>);
  sub_10002DDAC(&qword_1000E1078, &qword_1000E1068, &qword_100084F40, &unk_100083A08);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100009D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NavigationETAEntryContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100015240(&qword_1000DEB40, qword_100082B10);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100009E04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NavigationETAEntryContent(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100015240(&qword_1000DEB40, qword_100082B10);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100009F38()
{
  sub_100015288(&qword_1000E1308, &qword_100085240);
  sub_100015288(&qword_1000E1300, &qword_100085238);
  sub_100015288(&qword_1000E1328, &qword_100085260);
  sub_10002DDAC(&qword_1000E1330, &qword_1000E1300, &qword_100085238, &protocol conformance descriptor for VStack<A>);
  sub_10002DDAC(&qword_1000E1338, &qword_1000E1328, &qword_100085260, &unk_100083A08);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000A06C()
{
  sub_100015288(&qword_1000E1368, &qword_100085330);
  sub_100015288(&qword_1000E1360, &qword_100085328);
  sub_100015288(&qword_1000E1328, &qword_100085260);
  sub_10002DDAC(&qword_1000E1378, &qword_1000E1360, &qword_100085328, &protocol conformance descriptor for VStack<A>);
  sub_10002DDAC(&qword_1000E1338, &qword_1000E1328, &qword_100085260, &unk_100083A08);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000A1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100015240(&qword_1000E14B0, &unk_1000853E0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10000A308(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100015240(&qword_1000E14B0, &unk_1000853E0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_10000A46C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000E15A8, &qword_100085578);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A570(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_100015240(&qword_1000E14B0, &unk_1000853E0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100015240(&qword_1000DEB40, qword_100082B10);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = type metadata accessor for CommuteWindowEntryContent(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_10000A734(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100015240(&qword_1000E14B0, &unk_1000853E0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_100015240(&qword_1000DEB40, qword_100082B10);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = type metadata accessor for CommuteWindowEntryContent(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8] + 8) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10000A94C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100015240(&qword_1000E1030, &qword_100085510);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000AA08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100015240(&qword_1000E1030, &qword_100085510);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000AAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007E0C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10000ABD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10007E0C8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10000ACEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100015240(&qword_1000DFD18, &unk_100083CF0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10000AE1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SuggestedDestinationEntryContent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = sub_100015240(&qword_1000DFD18, &unk_100083CF0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10000AF4C()
{
  v1 = type metadata accessor for SuggestedDestinationEntryContentResolver(0);
  v2 = *(*(v1 - 1) + 80);
  v25 = *(*(v1 - 1) + 64);
  v28 = sub_10007E0C8();
  v3 = *(v28 - 8);
  v24 = *(v3 + 80);
  v23 = *(v3 + 64);
  v27 = sub_10007D3B8();
  v4 = *(v27 - 8);
  v5 = *(v4 + 80);
  v22 = *(v4 + 64);
  v26 = (v2 + 16) & ~v2;
  v6 = v0 + v26;

  v7 = *(v0 + v26 + 56);
  if (v7 != 1)
  {
  }

  v8 = v6 + *(type metadata accessor for SuggestedDestinationEntryContent(0) + 40);
  v9 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v20 = v5;
    v21 = v2;
    (*(v3 + 8))(v8, v28);
    v10 = (v8 + *(v9 + 20));
    if (*v10 != 1)
    {
    }

    v11 = *(v9 + 28);
    v12 = sub_10007D288();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v8 + v11, 1, v12))
    {
      (*(v13 + 8))(v8 + v11, v12);
    }

    v5 = v20;
    v2 = v21;
  }

  v14 = v1[9];
  v15 = sub_10007D3E8();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v6 + v14, 1, v15))
  {
    (*(v16 + 8))(v6 + v14, v15);
  }

  v17 = (v26 + v25 + v24) & ~v24;
  v18 = (v17 + v23 + v5) & ~v5;
  (*(v3 + 8))(v0 + v17, v28);
  (*(v4 + 8))(v0 + v18, v27);

  return _swift_deallocObject(v0, ((v22 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | v24 | v5 | 7);
}

uint64_t sub_10000B354()
{
  v1 = type metadata accessor for SuggestedDestinationEntryContentResolver(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v23 = *(*(v1 - 1) + 64);
  v24 = sub_10007E0C8();
  v4 = *(v24 - 8);
  v5 = *(v4 + 80);
  v22 = *(v4 + 64);
  v6 = v0 + v3;

  v7 = *(v0 + v3 + 56);
  if (v7 != 1)
  {
  }

  v8 = v6 + *(type metadata accessor for SuggestedDestinationEntryContent(0) + 40);
  v9 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v20 = v2;
    v21 = (v2 + 16) & ~v2;
    (*(v4 + 8))(v8, v24);
    v10 = (v8 + *(v9 + 20));
    if (*v10 != 1)
    {
    }

    v11 = *(v9 + 28);
    v12 = sub_10007D288();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v8 + v11, 1, v12))
    {
      (*(v13 + 8))(v8 + v11, v12);
    }

    v2 = v20;
    v3 = v21;
  }

  v14 = v1[9];
  v15 = sub_10007D3E8();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v6 + v14, 1, v15))
  {
    (*(v16 + 8))(v6 + v14, v15);
  }

  v17 = (v3 + v23 + v5) & ~v5;
  v18 = (((((((v22 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v17, v24);

  return _swift_deallocObject(v0, v18 + 16, v2 | v5 | 7);
}

uint64_t sub_10000B764(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000E1F00, &qword_100085CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100015240(&qword_1000E1340, &qword_1000852A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000B920(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100015240(&qword_1000E1340, &qword_1000852A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000B9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007E0C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    v12 = v11 <= 0;
    if (v11 < 0)
    {
      v11 = -1;
    }

    if (v12)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }
}

uint64_t sub_10000BA98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10007E0C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 + 1);
  }

  return result;
}

uint64_t sub_10000BB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NavigationETAEntryContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000BC0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NavigationETAEntryContent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10000BCC4()
{
  v1 = type metadata accessor for NavigationETAEntryContentResolver(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*(v1 - 8) + 64);
  v4 = sub_10007E0C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v14 = *(v5 + 64);
  v7 = v0 + v3;
  v8 = *(v0 + v3);
  if (v8 != 1)
  {
  }

  v9 = v7 + *(type metadata accessor for NavigationETAEntryContent(0) + 36);
  v10 = type metadata accessor for NavigationETAEntryContent.ResolvedContent(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    (*(v5 + 8))(v9, v4);
    v11 = (v9 + *(v10 + 20));
    if (*v11 != 1)
    {
    }
  }

  v12 = (v3 + v15 + v6) & ~v6;

  (*(v5 + 8))(v0 + v12, v4);

  return _swift_deallocObject(v0, ((v14 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | v6 | 7);
}

uint64_t sub_10000BEEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000BF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100015240(&qword_1000DEB40, qword_100082B10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000BFEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100015240(&qword_1000DEB40, qword_100082B10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10000C0B0()
{
  sub_100015288(&qword_1000E2220, &qword_100085E48);
  sub_100015288(&qword_1000DE2B0, &qword_1000822B0);
  sub_100015288(&qword_1000DE2B8, &qword_1000822B8);
  sub_100015288(&qword_1000DE288, &qword_100082290);
  sub_100015288(&qword_1000DE290, &qword_100082298);
  sub_100015288(&qword_1000DE298, &qword_1000822A0);
  sub_100015288(&qword_1000DE2A0, &qword_1000822A8);
  sub_1000152D0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000C294(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10007D3B8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10000C340(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10007D3B8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000C3FC()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v13 = *(v2 + 64);
  v5 = sub_10007E0C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v13 + v7) & ~v7;
  v12 = v3 | v7;
  v9 = (v3 + ((*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v3;

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  (*(v6 + 8))(v0 + v8, v5);

  v10(v0 + v9, v1);

  return _swift_deallocObject(v0, v9 + v13, v12 | 7);
}

uint64_t sub_10000C5B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C5E8()
{
  v1 = (sub_100015240(&unk_1000E24B8, qword_100085F70) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_10007D3B8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  sub_1000250AC((v0 + v3 + v1[14]));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000C6EC()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_10007E0C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_10000C868()
{
  v1 = sub_100015240(&qword_1000E2528, &qword_100086008);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_10007E0C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10000C9D8()
{
  v12 = sub_10007D3B8();
  v1 = *(v12 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(v1 + 64);
  v4 = sub_10007E0C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (((v13 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6;
  v11 = v2 | v6;
  v8 = (v2 + 16 + ((*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v2;
  v9 = *(v1 + 8);
  v9(v0 + v3, v12);

  (*(v5 + 8))(v0 + v7, v4);

  v9(v0 + v8, v12);

  return _swift_deallocObject(v0, v8 + v13, v11 | 7);
}

uint64_t sub_10000CB84()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v48 = *(v2 + 80);
  v49 = (v48 + 16) & ~v48;
  v3 = (*(v2 + 64) + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_10007E0C8();
  v5 = *(v4 - 8);
  v47 = *(v5 + 80);
  v6 = (v3 + v47 + 8) & ~v47;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for GeneralMapsTimelineEntry(0);
  v46 = *(*(v8 - 1) + 80);
  v43 = *(*(v8 - 1) + 64);
  v44 = sub_100015240(&unk_1000E24B8, qword_100085F70);
  v41 = *(*(v44 - 8) + 80);
  v42 = *(*(v44 - 8) + 64);
  v9 = *(v2 + 8);
  v9(v0 + v49, v1);

  v40 = v4;
  v39 = *(v5 + 8);
  v39(v0 + v6, v4);

  v45 = (v7 + v46 + 16) & ~v46;
  v10 = v0 + v45;
  v9(v0 + v45, v1);
  v9(v0 + v45 + v8[5], v1);
  v11 = v0 + v45 + v8[6];
  v12 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        v18 = *(v11 + 56);
        if (v18 != 1)
        {
        }

        v19 = v11 + *(type metadata accessor for SuggestedDestinationEntryContent(0) + 40);
        v20 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
        if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
        {
          v39(v19, v40);
          v21 = (v19 + *(v20 + 20));
          if (*v21 != 1)
          {
          }

          v22 = *(v20 + 28);
          v23 = sub_10007D288();
          v24 = *(v23 - 8);
          if (!(*(v24 + 48))(v19 + v22, 1, v23))
          {
            (*(v24 + 8))(v19 + v22, v23);
          }
        }
      }

      goto LABEL_2;
    }

    v25 = v11 + *(type metadata accessor for NearbyEntryContent(0) + 20);
    v28 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
    if ((*(*(v28 - 8) + 48))(v25, 1, v28))
    {
      goto LABEL_2;
    }

    v39(v25, v40);

    v27 = *(v28 + 24);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (*v11 != 1)
    {
    }

    v31 = type metadata accessor for CommuteWindowEntryContent(0);
    v9(v11 + *(v31 + 36), v1);
    v32 = v11 + *(v31 + 40);
    v33 = type metadata accessor for CommuteWindowEntryContent.ResolvedContent(0);
    if (!(*(*(v33 - 8) + 48))(v32, 1, v33))
    {
      v39(v32, v40);
      v34 = (v32 + *(v33 + 20));
      if (*v34 != 1)
      {
      }

      v35 = *(v33 + 24);
      v36 = sub_10007D288();
      v37 = *(v36 - 8);
      if (!(*(v37 + 48))(v32 + v35, 1, v36))
      {
        (*(v37 + 8))(v32 + v35, v36);
      }
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    if (*v11 != 1)
    {
    }

    v25 = v11 + *(type metadata accessor for NavigationETAEntryContent(0) + 36);
    v26 = type metadata accessor for NavigationETAEntryContent.ResolvedContent(0);
    if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
    {
      v39(v25, v40);
      v27 = *(v26 + 20);
LABEL_26:
      v29 = v25 + v27;
      v30 = *(v25 + v27);
      if (v30 != 1)
      {
      }
    }
  }

LABEL_2:
  v13 = v8[7];
  v14 = sub_10007E098();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v10 + v13, 1, v14))
  {
    (*(v15 + 8))(v10 + v13, v14);
  }

  v16 = (v45 + v43 + v41) & ~v41;
  v9(v0 + v16, v1);
  sub_1000250AC((v0 + v16 + *(v44 + 48)));

  return _swift_deallocObject(v0, v16 + v42, v48 | v47 | v46 | v41 | 7);
}

uint64_t sub_10000D394()
{
  v1 = type metadata accessor for GeneralMapsTimelineEntry(0);
  v38 = *(*(v1 - 1) + 80);
  v35 = *(*(v1 - 1) + 64);
  v39 = sub_10007E0C8();
  v2 = *(v39 - 8);
  v3 = *(v2 + 80);
  v36 = *(v2 + 64);

  v37 = (v38 + 32) & ~v38;
  v4 = v0 + v37;
  v5 = sub_10007D3B8();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v37, v5);
  v6(v0 + v37 + v1[5], v5);
  v7 = v0 + v37 + v1[6];
  v8 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        v14 = *(v7 + 56);
        if (v14 != 1)
        {
        }

        v15 = v7 + *(type metadata accessor for SuggestedDestinationEntryContent(0) + 40);
        v16 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
        if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
        {
          (*(v2 + 8))(v15, v39);
          v17 = (v15 + *(v16 + 20));
          if (*v17 != 1)
          {
          }

          v18 = *(v16 + 28);
          v19 = sub_10007D288();
          v20 = *(v19 - 8);
          if (!(*(v20 + 48))(v15 + v18, 1, v19))
          {
            (*(v20 + 8))(v15 + v18, v19);
          }
        }
      }

      goto LABEL_2;
    }

    v21 = v7 + *(type metadata accessor for NearbyEntryContent(0) + 20);
    v24 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
    if ((*(*(v24 - 8) + 48))(v21, 1, v24))
    {
      goto LABEL_2;
    }

    (*(v2 + 8))(v21, v39);

    v23 = *(v24 + 24);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (*v7 != 1)
    {
    }

    v27 = type metadata accessor for CommuteWindowEntryContent(0);
    v6(v7 + *(v27 + 36), v5);
    v28 = v7 + *(v27 + 40);
    v29 = type metadata accessor for CommuteWindowEntryContent.ResolvedContent(0);
    if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
    {
      (*(v2 + 8))(v28, v39);
      v30 = (v28 + *(v29 + 20));
      if (*v30 != 1)
      {
      }

      v31 = *(v29 + 24);
      v32 = sub_10007D288();
      v33 = *(v32 - 8);
      if (!(*(v33 + 48))(v28 + v31, 1, v32))
      {
        (*(v33 + 8))(v28 + v31, v32);
      }
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    if (*v7 != 1)
    {
    }

    v21 = v7 + *(type metadata accessor for NavigationETAEntryContent(0) + 36);
    v22 = type metadata accessor for NavigationETAEntryContent.ResolvedContent(0);
    if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
    {
      (*(v2 + 8))(v21, v39);
      v23 = *(v22 + 20);
LABEL_26:
      v25 = v21 + v23;
      v26 = *(v21 + v23);
      if (v26 != 1)
      {
      }
    }
  }

LABEL_2:
  v9 = v1[7];
  v10 = sub_10007E098();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  v12 = (((v35 + v37 + 7) & 0xFFFFFFFFFFFFFFF8) + v3 + 8) & ~v3;

  (*(v2 + 8))(v0 + v12, v39);

  return _swift_deallocObject(v0, v12 + v36, v38 | v3 | 7);
}

uint64_t sub_10000DA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 8);
    if (v4 >= 2)
    {
      v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v5 = -2;
    }

    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100015240(&qword_1000DEF00, &qword_100082E50);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10000DB54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 8) = a2 + 2;
  }

  else
  {
    v7 = sub_100015240(&qword_1000DEF00, &qword_100082E50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000DC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007E0C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000DCBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10007E0C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10000DD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NearbyButtonAction(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000DE20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NearbyButtonAction(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000DEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NearbyEntryContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_100015240(&qword_1000DFD18, &unk_100083CF0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 36);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_10000E000(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NearbyEntryContent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = sub_100015240(&qword_1000DFD18, &unk_100083CF0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10000E130()
{
  v1 = type metadata accessor for NearbyEntryContentResolver(0);
  v2 = *(*(v1 - 8) + 80);
  v19 = *(*(v1 - 8) + 64);
  v21 = sub_10007E0C8();
  v3 = *(v21 - 8);
  v4 = *(v3 + 80);
  v18 = *(v3 + 64);
  v20 = sub_10007D3B8();
  v5 = *(v20 - 8);
  v6 = *(v5 + 80);
  v17 = *(v5 + 64);
  v7 = v0 + ((v2 + 16) & ~v2);
  v8 = v7 + *(type metadata accessor for NearbyEntryContent(0) + 20);
  v9 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    (*(v3 + 8))(v8, v21);

    v10 = (v8 + *(v9 + 24));
    if (*v10 != 1)
    {
    }
  }

  v11 = *(v1 + 36);
  v12 = sub_10007D3E8();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v7 + v11, 1, v12))
  {
    (*(v13 + 8))(v7 + v11, v12);
  }

  v14 = (((v2 + 16) & ~v2) + v19 + v4) & ~v4;
  v15 = (v14 + v18 + v6) & ~v6;
  (*(v3 + 8))(v0 + v14, v21);
  (*(v5 + 8))(v0 + v15, v20);

  return _swift_deallocObject(v0, ((v17 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | v4 | v6 | 7);
}

uint64_t sub_10000E440()
{
  v1 = type metadata accessor for NearbyEntryContentResolver(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(*(v1 - 8) + 64);
  v4 = sub_10007E0C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v17 = *(v5 + 64);
  v7 = v0 + v3;
  v8 = v0 + v3 + *(type metadata accessor for NearbyEntryContent(0) + 20);
  v9 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    (*(v5 + 8))(v8, v4);

    v10 = (v8 + *(v9 + 24));
    if (*v10 != 1)
    {
    }
  }

  v11 = *(v1 + 36);
  v12 = sub_10007D3E8();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v7 + v11, 1, v12))
  {
    (*(v13 + 8))(v7 + v11, v12);
  }

  v14 = (v3 + v18 + v6) & ~v6;
  v15 = (((v17 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v5 + 8))(v0 + v14, v4);

  return _swift_deallocObject(v0, v15 + 16, v2 | v6 | 7);
}

const __CFString *NSStringFromArrivalState(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unavailable";
  }

  else
  {
    return *(&off_1000B2030 + a1 - 1);
  }
}

void sub_10000F12C(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1000E2B40;
  qword_1000E2B40 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_1000E2B40 setLocale:v3];

  v4 = qword_1000E2B40;

  [v4 setLocalizedDateFormatFromTemplate:@"J:mm"];
}

void sub_10000F7B8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000E2B50;
  qword_1000E2B50 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_1000E2B50 setLocale:v3];

  v4 = qword_1000E2B50;

  [v4 setTimeStyle:1];
}

void sub_100011070(id a1)
{
  qword_1000E2B60 = objc_opt_new();

  _objc_release_x1();
}

void sub_1000110AC(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000E2B70;
  qword_1000E2B70 = v1;

  v3 = qword_1000E2B70;

  [v3 setUnitStyle:3];
}

void sub_100011430(uint64_t result, uint64_t a2)
{
  if (qword_1000E2B80[0] != -1)
  {
    sub_10007D178();
  }
}

id sub_100011504(id a1)
{
  v1 = +[GEOPlatform sharedPlatform];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 isInternalInstall]);

  return v2;
}

id sub_1000123DC(id a1)
{
  v1 = +[GEOPlatform sharedPlatform];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 isInternalInstall]);

  return v2;
}

id sub_10001378C(id a1)
{
  v1 = +[GEOCountryConfiguration sharedConfiguration];
  v2 = [v1 countryCode];
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 isEqualToString:@"CN"] ^ 1);

  return v3;
}

void sub_100014788(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[MKLocationManager sharedLocationManager];
    v3 = WeakRetained[1];
    WeakRetained[1] = v2;
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsMKLocationManagerAdapter.m";
      v7 = 1026;
      v8 = 37;
      v9 = 2082;
      v10 = "[MapsSuggestionsMKLocationManagerAdapter init]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_10001494C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained considerMyAllowanceAsLimited:{objc_msgSend(WeakRetained[1], "isAuthorizedForPreciseLocation") ^ 1}];
    [v2[1] startLocationUpdateWithObserver:v2];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"locationManagerApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsMKLocationManagerAdapter.m";
      v6 = 1026;
      v7 = 50;
      v8 = 2082;
      v9 = "[MapsSuggestionsMKLocationManagerAdapter onStartImplementation]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_100014B48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] stopLocationUpdateWithObserver:WeakRetained];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:v2 name:MKLocationManagerApprovalDidChangeNotification object:0];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsMKLocationManagerAdapter.m";
      v6 = 1026;
      v7 = 61;
      v8 = 2082;
      v9 = "[MapsSuggestionsMKLocationManagerAdapter onStopImplementation]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_100014F08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Fetching Place Inference", &v6, 2u);
    }

    [WeakRetained[1] fetchPlaceInferencesWithFidelityPolicy:*(a1 + 48) handler:*(a1 + 32)];
  }

  else
  {
    v5 = v3;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsMKLocationManagerAdapter.m";
      v8 = 1026;
      v9 = 107;
      v10 = 2082;
      v11 = "[MapsSuggestionsMKLocationManagerAdapter fetchPlaceInferencesWithFidelityPolicy:handler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

id sub_100015080()
{
  result = [objc_allocWithZone(sub_10007D468()) init];
  qword_1000E4AC8 = result;
  return result;
}

uint64_t sub_100015118(uint64_t a1)
{
  sub_100015240(&qword_1000DE288, &qword_100082290);
  sub_100015288(&qword_1000DE290, &qword_100082298);
  sub_100015288(&qword_1000DE298, &qword_1000822A0);
  sub_100015288(&qword_1000DE2A0, &qword_1000822A8);
  sub_1000152D0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_10007D9B8();
}

uint64_t sub_100015240(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100015288(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000152D0()
{
  result = qword_1000DE2A8;
  if (!qword_1000DE2A8)
  {
    sub_100015288(&qword_1000DE2A0, &qword_1000822A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE2A8);
  }

  return result;
}

uint64_t sub_100015334()
{
  sub_100015240(&qword_1000DE2B0, &qword_1000822B0);
  sub_100015288(&qword_1000DE2B8, &qword_1000822B8);
  sub_100015288(&qword_1000DE288, &qword_100082290);
  sub_100015288(&qword_1000DE290, &qword_100082298);
  sub_100015288(&qword_1000DE298, &qword_1000822A0);
  sub_100015288(&qword_1000DE2A0, &qword_1000822A8);
  sub_1000152D0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_10007D998();
}

uint64_t sub_1000154CC(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  if (sub_10007CC60(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10001553C(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  if (sub_10007CC60(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v2;
}

__n128 sub_1000155B8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100015638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E696E6964 && a2 == 0xE600000000000000;
  if (v4 || (sub_10007E598() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6576617274 && a2 == 0xE600000000000000 || (sub_10007E598() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65727574616ELL && a2 == 0xE600000000000000 || (sub_10007E598() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7469736E617274 && a2 == 0xE700000000000000 || (sub_10007E598() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7365636976726573 && a2 == 0xE800000000000000 || (sub_10007E598() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x676E6970706F6873 && a2 == 0xE800000000000000 || (sub_10007E598() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74696E756D6D6F63 && a2 == 0xE900000000000079 || (sub_10007E598() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x68746C616568 && a2 == 0xE600000000000000 || (sub_10007E598() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7365636966666FLL && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_10007E598();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 0;
    }
  }
}

__n128 sub_100015978(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100015984(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000159A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_100015A48(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_100015AF4(uint64_t a1)
{
  sub_10007D3B8();
  if (v1 <= 0x3F)
  {
    sub_100015C20(319, &qword_1000DE6A8, type metadata accessor for GeneralMapsTimelineEntryContent);
    if (v2 <= 0x3F)
    {
      sub_100015C20(319, &unk_1000DE6B0, &type metadata accessor for TimelineEntryRelevance);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100015BE8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100015C20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007E3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100015CC8(uint64_t a1)
{
  result = type metadata accessor for NearbyEntryContent(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SuggestedDestinationEntryContent(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for CommuteWindowEntryContent(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for NavigationETAEntryContent(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100015D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_10007D3B8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100015DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000DE638, &unk_1000826F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_100015ECC@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state);
  v4 = v3[5];
  *&v33[16] = v3[4];
  *&v33[32] = v4;
  v34 = *(v3 + 96);
  v5 = v3[1];
  v31 = *v3;
  *v32 = v5;
  v6 = v3[3];
  *&v32[16] = v3[2];
  *v33 = v6;
  v7 = v6;
  if (v6)
  {
    v8 = v34;
    v22 = *&v33[8];
    v23 = *&v33[24];
    v9 = *&v33[40];
    v10 = *&v32[24];
    v21 = *&v32[8];
    v11 = *v32;
    v12 = v31;
  }

  else
  {
    v27 = 0uLL;
    *v28 = 0;
    memset(&v28[8], 0, 24);
    *v29 = sub_100024AFC(_swiftEmptyArrayStorage);
    memset(&v29[8], 0, 40);
    v30 = 2;
    v13 = v3[5];
    v25[4] = v3[4];
    v25[5] = v13;
    v26 = *(v3 + 96);
    v14 = v3[1];
    v25[0] = *v3;
    v25[1] = v14;
    v15 = v3[3];
    v25[2] = v3[2];
    v25[3] = v15;
    *(v3 + 96) = 2;
    v16 = *&v29[32];
    v3[4] = *&v29[16];
    v3[5] = v16;
    v17 = *v28;
    *v3 = v27;
    v3[1] = v17;
    v18 = *v29;
    v3[2] = *&v28[16];
    v3[3] = v18;
    sub_100025354(&v27, v24);
    sub_1000256C0(v25, &qword_1000DE950, &qword_100082918);
    v8 = v30;
    v9 = *&v29[40];
    v22 = *&v29[8];
    v23 = *&v29[24];
    v10 = *&v28[24];
    v7 = *v29;
    v21 = *&v28[8];
    v11 = *v28;
    v12 = v27;
  }

  v20 = v12;
  sub_100026310(&v31, v25, &qword_1000DE950, &qword_100082918);
  *a1 = v20;
  *(a1 + 16) = v11;
  *(a1 + 24) = v21;
  *(a1 + 40) = v10;
  *(a1 + 48) = v7;
  result = v23;
  *(a1 + 56) = v22;
  *(a1 + 72) = v23;
  *(a1 + 88) = v9;
  *(a1 + 96) = v8;
  return result;
}

id sub_100016078()
{
  result = [objc_allocWithZone(GEOLocationShifter) init];
  qword_1000DE790 = result;
  return result;
}

Swift::Int sub_1000160C4()
{
  v1 = *v0;
  sub_10007E5D8();
  sub_10007E5E8(v1);
  return sub_10007E608();
}

Swift::Int sub_100016138(uint64_t a1)
{
  v2 = *v1;
  sub_10007E5D8();
  sub_10007E5E8(v2);
  return sub_10007E608();
}

void *sub_10001617C()
{
  result = sub_100024BF4(_swiftEmptyArrayStorage);
  off_1000DE798 = result;
  return result;
}

void sub_1000161A4(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_suggestionsEngine] = 0;
  v4 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_suggestionsNetworkRequester;
  *&v1[v4] = [objc_allocWithZone(MapsSuggestionsRealNetworkRequester) init];
  *&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_msgCommute] = 0;
  v5 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup;
  *&v2[v5] = dispatch_group_create();
  v6 = &v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state];
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[96] = 0;
  v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled] = 0;
  *&v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNearbyCategoriesCancellation] = 0;
  *&v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNavigationRouteCancellation] = 0;
  *&v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation] = 0;
  *&v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingCommuteStatusCancellation] = 0;
  *&v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue] = a1;
  v7 = objc_allocWithZone(type metadata accessor for GeneralMapsLocationUpdater());
  v8 = a1;
  sub_100030A98(v8);
  *&v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_locationUpdater] = v9;
  v10 = *&v2[v4];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 sharedPredictor];
  v14 = [objc_allocWithZone(MapsSuggestionsETARequirements) initWithMaxAge:1.79769313e308 maxDistance:1.79769313e308 minAccuracy:0.0];
  v15 = [objc_allocWithZone(MapsSuggestionsETARequester) initWithNetworkRequester:v12 transportModePredictor:v13 requirements:v14];

  *&v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_transportModePredictor] = v15;
  v45.receiver = v2;
  v45.super_class = type metadata accessor for GeneralMapsStateCollector();
  v16 = objc_msgSendSuper2(&v45, "init");
  v17 = objc_allocWithZone(MapsSuggestionsBlockFilter);
  aBlock[4] = sub_1000168C4;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100024774;
  aBlock[3] = &unk_1000C8208;
  v18 = _Block_copy(aBlock);
  v19 = [v17 initWithBlock:v18];
  _Block_release(v18);

  v20 = [objc_opt_self() forDevice];
  v21 = [v20 withoutTracker];

  v22 = [v21 withLocationUpdater:*&v16[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_locationUpdater]];
  sub_100015240(&qword_1000DE8F0, &qword_1000828E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100082810;
  aBlock[0] = [objc_allocWithZone(MapsSuggestionsShortcutFilter) init];
  sub_10002620C(0, &qword_1000DE8F8, MapsSuggestionsShortcutFilter_ptr);
  sub_1000247CC(&qword_1000DE900, &qword_1000DE8F8, MapsSuggestionsShortcutFilter_ptr);
  sub_10007E438();
  aBlock[0] = [objc_allocWithZone(MapsSuggestionsZeroWeightFilter) init];
  sub_10002620C(0, &qword_1000DE908, MapsSuggestionsZeroWeightFilter_ptr);
  sub_1000247CC(&qword_1000DE910, &qword_1000DE908, MapsSuggestionsZeroWeightFilter_ptr);
  sub_10007E438();
  sub_100041124(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = sub_10007E278().super.isa;

  v25 = [v22 withPreFilters:isa];

  if (GEOConfigGetBOOL())
  {
    sub_100015240(&qword_1000DE918, &qword_1000828F0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100082820;
    *(v26 + 32) = type metadata accessor for MapsSuggestionsCurrentLocationSource(0);
    sub_100015240(&qword_1000DE920, &qword_1000828F8);
    v27 = sub_10007E1C8().super.isa;

    v28 = [v25 withSourceClasses:v27];

    v25 = v28;
  }

  v29 = [v25 build];
  if (!v29)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v40 = sub_10007D5C8();
    sub_1000046BC(v40, qword_1000E4B28);
    v41 = sub_10007D5A8();
    v42 = sub_10007E2A8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "GeneralMapsStateCollector: could not build suggestions engine", v43, 2u);
    }

    goto LABEL_17;
  }

  v30 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_suggestionsEngine;
  v31 = *&v16[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_suggestionsEngine];
  *&v16[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_suggestionsEngine] = v29;
  v32 = v29;

  v33 = *&v16[v30];
  if (v33)
  {
    [v33 addAdditionalFilter:v19 forSink:v16];
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v34 = sub_10007D5C8();
  sub_1000046BC(v34, qword_1000E4B28);
  v35 = sub_10007D5A8();
  v36 = sub_10007E298();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "GeneralMapsStateCollector: Created MSgEngine", v37, 2u);
  }

  v38 = *&v16[v30];
  if (v38)
  {
    v39 = [objc_allocWithZone(MapsSuggestionsCommute) initWithResourceDepot:v38 callbackQueue:*&v16[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue]];

    v25 = *&v16[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_msgCommute];
    *&v16[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_msgCommute] = v39;
LABEL_17:

    return;
  }

  __break(1u);
}

uint64_t sub_1000168C4(void *a1)
{
  v2 = [a1 type];
  v3 = 0;
  if (v2 <= 0x19)
  {
    if (((1 << v2) & 0x189E918) != 0)
    {
      v4 = [a1 geoMapItem];
      if (v4)
      {

        if (([a1 BOOLeanForKey:@"MapsSuggestionsIsNotADestinationKey" is:1] & 1) == 0 && (objc_msgSend(a1, "hasExpired") & 1) == 0 && (objc_msgSend(a1, "BOOLeanForKey:is:", @"MapsSuggestionsAlreadyThereKey", 1) & 1) == 0)
        {
          if ([a1 type] != 1)
          {
            goto LABEL_27;
          }

          [a1 weight];
          if (v5 != 0.0)
          {
            goto LABEL_27;
          }
        }
      }

LABEL_20:
      v3 = 0;
      return v3 & 1;
    }

    if (((1 << v2) & 6) != 0)
    {
      if (!MapsFeature_IsEnabled_LocationIntelligenceMaps())
      {
        if (qword_1000DE268 != -1)
        {
          swift_once();
        }

        v14 = sub_10007D5C8();
        sub_1000046BC(v14, qword_1000E4B28);
        v15 = sub_10007D5A8();
        v16 = sub_10007E288();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v15, v16, "Looks like the LocIntel FF is disabled.", v17, 2u);
        }

        goto LABEL_27;
      }

      sub_10007E378();
      v6 = sub_10007E368();
      v7 = sub_10007E358();

      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v8 = sub_10007D5C8();
      sub_1000046BC(v8, qword_1000E4B28);
      v9 = sub_10007D5A8();
      v10 = sub_10007E298();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 67109376;
        *(v11 + 4) = v7 & 1;
        *(v11 + 8) = 1024;
        v3 = v7 ^ 1;
        *(v11 + 10) = (v7 ^ 1) & 1;
        _os_log_impl(&_mh_execute_header, v9, v10, "Are we OS Eligible? %{BOOL}d. Should show Home/Work entries in GMW? %{BOOL}d.", v11, 0xEu);
      }

      else
      {

        v3 = v7 ^ 1;
      }
    }

    else if (v2 == 25)
    {
      if (MapsFeature_IsEnabled_VisitedPlaces())
      {
        v12 = [a1 geoMapItem];
        if (v12)
        {

LABEL_27:
          v3 = 1;
          return v3 & 1;
        }
      }

      goto LABEL_20;
    }
  }

  return v3 & 1;
}

void sub_100016BDC(uint64_t a1, uint64_t a2)
{
  sub_10001A590();
  sub_10001AED0(a2);
  sub_10001E594(a2);
  sub_10002001C();
}

uint64_t sub_100016C18(void (*a1)(_BYTE *, __n128))
{
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v2 = sub_10007D5C8();
  sub_1000046BC(v2, qword_1000E4B28);
  v3 = sub_10007D5A8();
  v4 = sub_10007E2C8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "GeneralMapsStateCollector: collect END", v5, 2u);
  }

  v6 = sub_100015ECC(v8);
  a1(v8, v6);
  return sub_100024FF8(v8);
}

uint64_t sub_100016D30()
{
  v1 = v0;
  v2 = sub_10007DF48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v6 = sub_10007D5C8();
  sub_1000046BC(v6, qword_1000E4B28);
  v7 = sub_10007D5A8();
  v8 = sub_10007E288();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "GeneralMapsStateCollector: cancelling state collection", v9, 2u);
  }

  v10 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v5 = v10;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v11 = v10;
  LOBYTE(v10) = sub_10007DF68();
  result = (*(v3 + 8))(v5, v2);
  if (v10)
  {
    *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled) = 1;
    if (*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNearbyCategoriesCancellation))
    {

      sub_10007DF28();
      sub_10007DF18();
    }

    if (*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNavigationRouteCancellation))
    {

      sub_10007DF28();
      sub_10007DF18();
    }

    if (*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation))
    {

      sub_10007DF28();
      sub_10007DF18();
    }

    if (*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingCommuteStatusCancellation))
    {

      sub_10007DF28();
      sub_10007DF18();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100016FB0(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v46 = a1;
  v47 = a3;
  v45 = a2;
  v5 = sub_10007D3B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v43 - v10;
  __chkstk_darwin(v9);
  v13 = &v43 - v12;
  v14 = sub_10007DF48();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *&v4[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue];
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = sub_10007DF68();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled])
  {
    if (qword_1000DE268 == -1)
    {
LABEL_4:
      v20 = sub_10007D5C8();
      sub_1000046BC(v20, qword_1000E4B28);
      v21 = sub_10007D5A8();
      v22 = sub_10007E288();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "GeneralMapsStateCollector: skipped collectLocation (state collection cancelled)", v23, 2u);
      }

      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v24 = sub_10007D5C8();
  sub_1000046BC(v24, qword_1000E4B28);
  v25 = sub_10007D5A8();
  v26 = sub_10007E2C8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "GeneralMapsStateCollector: collectLocation BEGIN", v27, 2u);
  }

  dispatch_group_enter(*&v4[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup]);
  v44 = v13;
  sub_10007D3A8();
  v28 = swift_allocObject();
  v29 = v47;
  *(v28 + 2) = v45;
  *(v28 + 3) = v29;
  *(v28 + 4) = v4;
  v45 = *&v4[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_locationUpdater];
  v30 = *(v6 + 16);
  v30(v11, v13, v5);
  v30(v48, v46, v5);
  v31 = *(v6 + 80);
  v32 = (v31 + 24) & ~v31;
  v33 = (v7 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = v4;
  v35 = (v31 + v33 + 16) & ~v31;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  v37 = v5;
  v38 = *(v6 + 32);
  v39 = v11;
  v40 = v37;
  v38(v36 + v32, v39);
  v41 = (v36 + v33);
  *v41 = sub_1000258E8;
  v41[1] = v28;
  (v38)(v36 + v35, v48, v40);
  v42 = v34;

  sub_100030FA4(sub_100025934, v36);

  (*(v6 + 8))(v44, v40);
}

void sub_100017498(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v84 = a8;
  v90 = a7;
  v91 = a6;
  v89 = a5;
  v85 = a3;
  v87 = a2;
  v10 = sub_10007D3B8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v83 - v16;
  v18 = __chkstk_darwin(v15);
  v88 = &v83 - v19;
  __chkstk_darwin(v18);
  v86 = &v83 - v20;
  v21 = sub_10007DF48();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = (&v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(a4 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v24 = v25;
  (*(v22 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v21);
  v26 = v25;
  LOBYTE(v25) = sub_10007DF68();
  (*(v22 + 8))(v24, v21);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_28:
    swift_once();
LABEL_4:
    v27 = sub_10007D5C8();
    sub_1000046BC(v27, qword_1000E4B28);
    (*(v11 + 16))(v14, v89, v10);
    v28 = sub_10007D5A8();
    v29 = sub_10007E2A8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134349056;
      v31 = v88;
      sub_10007D3A8();
      sub_10007D2B8();
      v33 = v32;
      v34 = *(v11 + 8);
      v34(v31, v10);
      v34(v14, v10);
      *(v30 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v28, v29, "GeneralMapsStateCollector: collectLocation END (state collection cancelled, %{public}f seconds elapsed)", v30, 0xCu);
    }

    else
    {

      v35 = (*(v11 + 8))(v14, v10);
    }

LABEL_26:
    v91(v35);
    return;
  }

  if (*(a4 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled))
  {
    if (qword_1000DE268 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

  v36 = v10;
  if (!a1)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v70 = sub_10007D5C8();
    sub_1000046BC(v70, qword_1000E4B28);
    (*(v11 + 16))(v17, v89, v10);
    v71 = v85;
    swift_errorRetain();
    v72 = sub_10007D5A8();
    v73 = sub_10007E2A8();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v97[0] = v75;
      *v74 = 136446466;
      *&v95[0] = v71;
      swift_errorRetain();
      sub_100015240(&qword_1000DE938, &qword_100082910);
      v76 = sub_10007E178();
      v78 = sub_100051190(v76, v77, v97);

      *(v74 + 4) = v78;
      *(v74 + 12) = 2050;
      v79 = v88;
      sub_10007D3A8();
      sub_10007D2B8();
      v81 = v80;
      v82 = *(v11 + 8);
      v82(v79, v36);
      v82(v17, v36);
      *(v74 + 14) = v81;
      _os_log_impl(&_mh_execute_header, v72, v73, "GeneralMapsStateCollector: collectLocation END (no location; error: %{public}s, %{public}f seconds elapsed)", v74, 0x16u);
      sub_1000250AC(v75);
    }

    else
    {

      v35 = (*(v11 + 8))(v17, v10);
    }

    goto LABEL_26;
  }

  v37 = a1;
  if ([v37 referenceFrame] == 2 || (v38 = objc_opt_self(), objc_msgSend(v37, "coordinate"), GEOLocationCoordinate2DFromCLLocationCoordinate2D(), !objc_msgSend(v38, "isLocationShiftRequiredForCoordinate:")))
  {
    v44 = v37;
    sub_100015ECC(v97);
    v99 = v97[0];
    sub_1000256C0(&v99, &unk_1000DEA30, &qword_1000829C8);
    v45 = a4 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state;
    v46 = *(a4 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80);
    v95[4] = *(a4 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64);
    v95[5] = v46;
    v96 = *(a4 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96);
    v47 = *(a4 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16);
    v95[0] = *(a4 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state);
    v95[1] = v47;
    v48 = *(a4 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32);
    v95[3] = *(a4 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48);
    v95[2] = v48;
    v49 = v87;
    *v45 = a1;
    *(v45 + 8) = v49;
    v50 = v97[2];
    *(v45 + 16) = v97[1];
    *(v45 + 32) = v50;
    v51 = v97[3];
    v52 = v97[4];
    v53 = v97[5];
    *(v45 + 96) = v98;
    *(v45 + 64) = v52;
    *(v45 + 80) = v53;
    *(v45 + 48) = v51;
    sub_1000256C0(v95, &qword_1000DE950, &qword_100082918);
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v54 = sub_10007D5C8();
    sub_1000046BC(v54, qword_1000E4B28);
    v55 = v86;
    (*(v11 + 16))(v86, v89, v36);
    v56 = v44;
    v57 = sub_10007D5A8();
    v58 = sub_10007E2C8();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v94 = v60;
      *v59 = 136380931;
      v92 = v56;
      v93 = v49;
      v61 = v56;
      v62 = sub_10007E178();
      v64 = sub_100051190(v62, v63, &v94);

      *(v59 + 4) = v64;
      *(v59 + 12) = 2050;
      v65 = v88;
      sub_10007D3A8();
      sub_10007D2B8();
      v67 = v66;
      v68 = *(v11 + 8);
      v68(v65, v36);
      v68(v55, v36);
      *(v59 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v57, v58, "GeneralMapsStateCollector: collectLocation END (location: %{private}s, %{public}f seconds elapsed)", v59, 0x16u);
      sub_1000250AC(v60);
    }

    else
    {

      v69 = (*(v11 + 8))(v55, v36);
    }

    v91(v69);
  }

  else
  {
    v39 = v87;
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v40 = sub_10007D5C8();
    sub_1000046BC(v40, qword_1000E4B28);
    v41 = sub_10007D5A8();
    v42 = sub_10007E298();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "GeneralMapsStateCollector: collectLocation will shift location", v43, 2u);
    }

    sub_100017E54(v84, v37, v39, v89, v91, v90);
  }
}

void sub_100017E54(uint64_t a1, void *a2, void (*a3)(uint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  v68 = a4;
  v57 = a3;
  v66 = a2;
  v58 = a1;
  v13 = sub_10007D3B8();
  v60 = *(v13 - 8);
  v61 = v13;
  __chkstk_darwin(v13);
  v67 = v14;
  v59 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10007DEB8();
  __chkstk_darwin(v15);
  v16 = sub_10007DF48();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *&v6[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue];
  *v19 = v20;
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v21 = v20;
  v22 = sub_10007DF68();
  (*(v17 + 8))(v19, v16);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v56 = v21;
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = a5;
  v24[4] = a6;
  v74 = sub_100025760;
  v75 = v24;
  aBlock = _NSConcreteStackBlock;
  v9 = 1107296256;
  v71 = 1107296256;
  v65 = &v72;
  v72 = sub_1000041A4;
  v73 = &unk_1000C8730;
  _Block_copy(&aBlock);
  v69 = _swiftEmptyArrayStorage;
  sub_100002E64();

  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  v64 = a5;
  sub_100002EBC();
  sub_10007E3F8();
  sub_10007DF38();
  swift_allocObject();
  v25 = sub_10007DF08();

  *&v10[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation] = v25;

  v22 = v66;
  [v66 coordinate];
  GEOLocationCoordinate2DFromCLLocationCoordinate2D();
  v7 = v26;
  v8 = v27;
  v63 = a6;
  if (qword_1000DE218 != -1)
  {
LABEL_5:
    swift_once();
  }

  v55 = qword_1000DE790;
  [v22 horizontalAccuracy];
  v29 = v28;
  v31 = v59;
  v30 = v60;
  v62 = v60[2];
  v32 = v61;
  v62(v59, v68, v61);
  v33 = *(v30 + 80);
  v34 = (v33 + 40) & ~v33;
  v35 = &v67[v34 + 7] & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v36[2] = v10;
  v36[3] = v22;
  v36[4] = v57;
  v37 = v30[4];
  v37(v36 + v34, v31, v32);
  v57 = v37;
  v38 = (v36 + v35);
  v39 = v63;
  *v38 = v64;
  v38[1] = v39;
  v74 = sub_10002576C;
  v75 = v36;
  aBlock = _NSConcreteStackBlock;
  v71 = v9;
  v72 = sub_100018D60;
  v73 = &unk_1000C8780;
  v60 = _Block_copy(&aBlock);

  v40 = v10;
  v41 = v66;

  v62(v31, v58, v32);
  v42 = (v33 + 24) & ~v33;
  v43 = &v67[v42];
  v44 = swift_allocObject();
  *(v44 + 16) = v40;
  v37(v44 + v42, v31, v32);
  v74 = sub_10002582C;
  v75 = v44;
  aBlock = _NSConcreteStackBlock;
  v71 = v9;
  v72 = sub_1000041A4;
  v73 = &unk_1000C87D0;
  v67 = _Block_copy(&aBlock);
  v45 = v40;

  v62(v31, v68, v32);
  v46 = (v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  v57(v47 + v42, v31, v32);
  v48 = (v47 + v46);
  v49 = v63;
  *v48 = v64;
  v48[1] = v49;
  v74 = sub_100025844;
  v75 = v47;
  aBlock = _NSConcreteStackBlock;
  v71 = v9;
  v72 = sub_100019414;
  v73 = &unk_1000C8820;
  v50 = _Block_copy(&aBlock);

  v51 = v45;

  v52 = v55;
  v53 = v60;
  v54 = v67;
  [v55 shiftCoordinate:v60 accuracy:v67 withCompletionHandler:v50 mustGoToNetworkCallback:v56 errorHandler:v7 callbackQueue:{v8, v29}];
  _Block_release(v50);
  _Block_release(v54);
  _Block_release(v53);
}

uint64_t sub_100018580(uint64_t a1, uint64_t (*a2)(char *))
{
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v3 = sub_10007D5C8();
  sub_1000046BC(v3, qword_1000E4B28);
  v4 = sub_10007D5A8();
  v5 = sub_10007E2A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "GeneralMapsStateCollector: collectLocation END (shiftLocation cancelled)", v6, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation] = 0;
  }

  return a2(Strong);
}

void sub_1000186BC(uint64_t a1, id a2, char *a3, void *a4, void (*a5)(uint64_t), uint64_t a6, double a7, double a8)
{
  v71 = a6;
  v68 = a4;
  v14 = sub_10007D3B8();
  v69 = *(v14 - 8);
  v70 = v14;
  v15 = __chkstk_darwin(v14);
  v67 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v65 - v17;
  v19 = sub_10007DF48();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v22 = v23;
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v24 = v23;
  LOBYTE(v23) = sub_10007DF68();
  (*(v20 + 8))(v22, v19);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
LABEL_12:
    v49 = sub_10007D5C8();
    sub_1000046BC(v49, qword_1000E4B28);
    v50 = v69;
    v51 = v70;
    (*(v69 + 16))(v22, v68, v70);
    v52 = a2;
    v53 = sub_10007D5A8();
    v54 = sub_10007E2C8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v73 = v18;
      v74 = v68;
      *v55 = 136380931;
      v72 = v52;
      v56 = sub_10007E178();
      v58 = v51;
      v59 = sub_100051190(v56, v57, &v74);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2050;
      v60 = v67;
      sub_10007D3A8();
      sub_10007D2B8();
      v62 = v61;
      v63 = *(v50 + 8);
      v63(v60, v58);
      v63(v22, v58);
      *(v55 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v53, v54, "GeneralMapsStateCollector: collectLocation END (shifted location: %{private}s, %{public}f seconds elapsed)", v55, 0x16u);
      sub_1000250AC(v68);
    }

    else
    {

      v64 = (*(v50 + 8))(v22, v51);
    }

    v66(v64);

    return;
  }

  v25 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation;
  if (*(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation))
  {
    v66 = a5;

    sub_10007DF18();
    *(a1 + v25) = 0;

    [a2 clientLocation];
    v89 = *&v77[20];
    v90 = *&v77[36];
    v91 = *&v77[52];
    v87 = *&v77[68];
    v88 = *&v77[84];
    v86 = v80;
    v26 = *v77;
    v85 = v83;
    v84 = v82;
    [a2 rawCourse];
    v28 = v27;
    v29 = [a2 coarseMetaData];
    if (v29)
    {
      v30 = v29;
      v31 = sub_10007D2A8();
      v33 = v32;

      v34.super.isa = sub_10007D298().super.isa;
      sub_100005744(v31, v33);
    }

    else
    {
      v34.super.isa = 0;
    }

    v22 = v18;
    v39 = objc_allocWithZone(CLLocation);
    *&v77[20] = v89;
    *&v77[36] = v90;
    *&v77[60] = v28;
    *&v77[68] = v87;
    *&v77[4] = a7;
    *&v77[12] = a8;
    *&v77[52] = v91;
    *&v77[84] = v88;
    v78 = a7;
    v79 = a8;
    v80 = v86;
    *v77 = v26;
    v81 = 2;
    v83 = v85;
    v82 = v84;
    v40 = [v39 initWithClientLocation:v77 coarseMetaData:v34.super.isa];

    a2 = v40;
    sub_100015ECC(v77);
    v92 = *v77;
    sub_1000256C0(&v92, &unk_1000DEA30, &qword_1000829C8);
    v41 = a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state;
    v42 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80);
    v75[4] = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64);
    v75[5] = v42;
    v76 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96);
    v43 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16);
    v75[0] = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state);
    v75[1] = v43;
    v44 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48);
    v75[2] = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32);
    v75[3] = v44;
    *v41 = v40;
    *(v41 + 8) = a3;
    v18 = a3;
    v45 = *&v77[32];
    *(v41 + 16) = *&v77[16];
    *(v41 + 32) = v45;
    v46 = *&v77[48];
    v47 = *&v77[64];
    v48 = *&v77[80];
    *(v41 + 96) = v77[96];
    *(v41 + 64) = v47;
    *(v41 + 80) = v48;
    *(v41 + 48) = v46;
    sub_1000256C0(v75, &qword_1000DE950, &qword_100082918);
    if (qword_1000DE268 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v35 = sub_10007D5C8();
  sub_1000046BC(v35, qword_1000E4B28);
  v36 = sub_10007D5A8();
  v37 = sub_10007E288();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "GeneralMapsStateCollector: collectLocation was cancelled just before completion", v38, 2u);
  }
}

double sub_100018D60(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);

  v7(v8, a2, a3, a4);

  return result;
}

void sub_100018DCC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007DF48();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = sub_10007DF68();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    sub_100019480();
  }

  else
  {
    __break(1u);
  }
}

void sub_100018EEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v44 = a5;
  v45 = a4;
  v8 = sub_10007D3B8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v43 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v42 - v12;
  v14 = sub_10007DF48();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = sub_10007DF68();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation;
  if (*(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation))
  {

    sub_10007DF18();
    *(a2 + v20) = 0;

    if (qword_1000DE268 == -1)
    {
LABEL_4:
      v21 = sub_10007D5C8();
      sub_1000046BC(v21, qword_1000E4B28);
      (*(v9 + 16))(v13, a3, v8);
      swift_errorRetain();
      v22 = sub_10007D5A8();
      v23 = sub_10007E2A8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v46 = a1;
        v47 = v25;
        *v24 = 136446466;
        swift_errorRetain();
        sub_100015240(&qword_1000DE938, &qword_100082910);
        v26 = sub_10007E178();
        v28 = sub_100051190(v26, v27, &v47);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2050;
        v29 = v43;
        sub_10007D3A8();
        sub_10007D2B8();
        v31 = v30;
        v32 = *(v9 + 8);
        v32(v29, v8);
        v32(v13, v8);
        *(v24 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v22, v23, "GeneralMapsStateCollector: collectLocation END (location shift error: %{public}s, %{public}f seconds elapsed)", v24, 0x16u);
        sub_1000250AC(v25);
      }

      else
      {

        v33 = (*(v9 + 8))(v13, v8);
      }

      v45(v33);

      return;
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v34 = sub_10007D5C8();
  sub_1000046BC(v34, qword_1000E4B28);
  swift_errorRetain();
  v35 = sub_10007D5A8();
  v36 = sub_10007E2A8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v46 = a1;
    v47 = v38;
    *v37 = 136446210;
    swift_errorRetain();
    sub_100015240(&qword_1000DE938, &qword_100082910);
    v39 = sub_10007E178();
    v41 = sub_100051190(v39, v40, &v47);

    *(v37 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v35, v36, "GeneralMapsStateCollector: collectLocation was cancelled prior to error delivery (error: %{public}s)", v37, 0xCu);
    sub_1000250AC(v38);
  }
}

void sub_100019414(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_100019480()
{
  v1 = sub_10007DEF8();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v28 - v6;
  v8 = sub_10007DF48();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v28[1] = v12;
  LOBYTE(v12) = sub_10007DF68();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_10;
  }

  if (*(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingLocationShiftCancellation))
  {

    sub_10007D318();
    v14 = v13 + -10.0;
    if (v13 + -10.0 <= 0.0)
    {
      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v24 = sub_10007D5C8();
      sub_1000046BC(v24, qword_1000E4B28);
      v25 = sub_10007D5A8();
      v26 = sub_10007E2A8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "GeneralMapsStateCollector: could not schedule shiftLocation cancellation", v27, 2u);
      }
    }

    else
    {
      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v15 = sub_10007D5C8();
      sub_1000046BC(v15, qword_1000E4B28);
      v16 = sub_10007D5A8();
      v17 = sub_10007E2C8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 134349056;
        *(v18 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v16, v17, "GeneralMapsStateCollector: scheduled shiftLocation cancellation in %{public}f seconds", v18, 0xCu);
      }

      sub_10007DEE8();
      sub_10007DF58();
      v19 = *(v2 + 8);
      v19(v5, v1);
      sub_10007E308();

      v19(v7, v1);
    }

    return;
  }

  if (qword_1000DE268 != -1)
  {
    goto LABEL_19;
  }

LABEL_10:
  v20 = sub_10007D5C8();
  sub_1000046BC(v20, qword_1000E4B28);
  v21 = sub_10007D5A8();
  v22 = sub_10007E288();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "GeneralMapsStateCollector: shiftLocation completed before cancellation was scheduled", v23, 2u);
  }
}

uint64_t sub_100019908()
{
  v1 = v0;
  v20[0] = sub_10007DEF8();
  v2 = *(v20[0] - 8);
  v3 = __chkstk_darwin(v20[0]);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v20 - v6;
  v8 = sub_10007DEB8();
  __chkstk_darwin(v8);
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v9 = sub_10007D5C8();
  sub_1000046BC(v9, qword_1000E4B28);
  v10 = sub_10007D5A8();
  v11 = sub_10007E2C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    *(v12 + 4) = 0x4014000000000000;
    _os_log_impl(&_mh_execute_header, v10, v11, "GeneralMapsStateCollector: scheduled collectNavigationRoute cancellation in %{public}f seconds", v12, 0xCu);
  }

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100025720;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C86E0;
  _Block_copy(aBlock);
  v20[1] = _swiftEmptyArrayStorage;
  sub_100002E64();

  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  sub_10007E3F8();
  sub_10007DF38();
  swift_allocObject();
  v14 = sub_10007DF08();

  v15 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNavigationRouteCancellation;
  *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNavigationRouteCancellation) = v14;

  sub_10007DEE8();
  sub_10007DF58();
  v16 = *(v2 + 8);
  v17 = v5;
  v18 = v20[0];
  result = v16(v17, v20[0]);
  if (*(v1 + v15))
  {

    sub_10007E308();

    return v16(v7, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100019CA4()
{
  v1 = v0;
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v2 = sub_10007D5C8();
  sub_1000046BC(v2, qword_1000E4B28);
  v3 = sub_10007D5A8();
  v4 = sub_10007E2C8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "GeneralMapsStateCollector: collectShareETAAvailability BEGIN", v5, 2u);
  }

  dispatch_group_enter(*&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup]);
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    v11[4] = sub_1000256B8;
    v11[5] = v8;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100019FFC;
    v11[3] = &unk_1000C86B8;
    v9 = _Block_copy(v11);
    v10 = v1;

    [v7 performBlockAfterInitialSync:v9];
    _Block_release(v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_100019E70(uint64_t a1, uint64_t a2)
{
  v3 = MSPSharedTripSharingAvailable();
  sub_100015ECC(v16);
  v4 = a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state;
  v5 = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80);
  v17[4] = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64);
  v17[5] = v5;
  v18 = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96);
  v6 = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16);
  v17[0] = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state);
  v17[1] = v6;
  v7 = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48);
  v17[2] = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32);
  v17[3] = v7;
  v8 = v16[1];
  *v4 = v16[0];
  *(v4 + 16) = v8;
  v9 = v16[2];
  v10 = v16[3];
  v11 = v16[5];
  *(v4 + 64) = v16[4];
  *(v4 + 80) = v11;
  *(v4 + 32) = v9;
  *(v4 + 48) = v10;
  *(v4 + 96) = v3;
  sub_1000256C0(v17, &qword_1000DE950, &qword_100082918);
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v12 = sub_10007D5C8();
  sub_1000046BC(v12, qword_1000E4B28);
  v13 = sub_10007D5A8();
  v14 = sub_10007E2C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67240192;
    *(v15 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v13, v14, "GeneralMapsStateCollector: collectShareETAAvailability END (available: %{BOOL,public}d)", v15, 8u);
  }

  dispatch_group_leave(*(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup));
}

void sub_100019FFC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_10001A064()
{
  v1 = sub_10007DF48();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = sub_10007DF68();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
LABEL_4:
    v7 = sub_10007D5C8();
    sub_1000046BC(v7, qword_1000E4B28);
    v8 = sub_10007D5A8();
    v9 = sub_10007E288();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "GeneralMapsStateCollector: skipped collectMapsActivityMapType (state collection cancelled)";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v8, v9, v11, v10, 2u);

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (*(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled))
  {
    if (qword_1000DE268 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  v12 = objc_allocWithZone(NSUserDefaults);
  v13 = sub_10007E138();
  v14 = [v12 initWithSuiteName:v13];

  if (!v14)
  {
    if (qword_1000DE268 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  v8 = v14;
  v15 = sub_10007E138();
  v16 = [v8 integerForKey:v15];

  if (v16 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
LABEL_20:
    v30 = sub_10007D5C8();
    sub_1000046BC(v30, qword_1000E4B28);
    v8 = sub_10007D5A8();
    v9 = sub_10007E288();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "GeneralMapsStateCollector: collectMapsActivityMapType found no MapsLastActivityMapType in defaults";
      goto LABEL_22;
    }

LABEL_23:

    return;
  }

  if ((v16 - 1) > 1)
  {
    sub_100015ECC(v40);

    v31 = v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state;
    v32 = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80);
    v38[4] = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64);
    v38[5] = v32;
    v39 = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96);
    v33 = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16);
    v38[0] = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state);
    v38[1] = v33;
    v34 = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48);
    v38[2] = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32);
    v38[3] = v34;
    *v31 = *v40;
    *(v31 + 16) = v16;
    *(v31 + 20) = *&v40[5];
    v35 = *&v40[9];
    v36 = *&v40[13];
    v37 = v41[0];
    *(v31 + 81) = *(v41 + 13);
    *(v31 + 68) = v37;
    *(v31 + 52) = v36;
    *(v31 + 36) = v35;
    sub_1000256C0(v38, &qword_1000DE950, &qword_100082918);
  }

  else
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v17 = sub_10007D5C8();
    sub_1000046BC(v17, qword_1000E4B28);
    v18 = sub_10007D5A8();
    v19 = sub_10007E288();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_18;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v40 = v21;
    *v20 = 136446210;
    if (v16 == 2)
    {
      v22 = @"Hybrid";
    }

    else
    {
      v22 = @"Satellite";
    }

    v23 = v22;
    v24 = v22;
    if (v24)
    {
      v25 = v24;
      v26 = sub_10007E158();
      v28 = v27;

      v29 = sub_100051190(v26, v28, v40);

      *(v20 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s map type not supported in Maps widget", v20, 0xCu);
      sub_1000250AC(v21);

LABEL_18:

      goto LABEL_23;
    }

    __break(1u);
  }
}

void sub_10001A590()
{
  v1 = sub_10007DF48();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = sub_10007DF68();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (*(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled))
  {
    if (qword_1000DE268 == -1)
    {
LABEL_4:
      v7 = sub_10007D5C8();
      sub_1000046BC(v7, qword_1000E4B28);
      v8 = sub_10007D5A8();
      v9 = sub_10007E288();
      if (!os_log_type_enabled(v8, v9))
      {
LABEL_12:

        return;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "GeneralMapsStateCollector: skipped collectMapsActivityCamera (state collection cancelled)";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v8, v9, v11, v10, 2u);

      goto LABEL_12;
    }

LABEL_43:
    swift_once();
    goto LABEL_4;
  }

  v12 = v0;
  sub_100015ECC(v82);
  v83[0] = v82[0];
  sub_100026310(v83, v80, &unk_1000DEA30, &qword_1000829C8);
  sub_100024FF8(v82);
  if (*&v83[0])
  {
    sub_1000256C0(v83, &unk_1000DEA30, &qword_1000829C8);
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v13 = sub_10007D5C8();
    sub_1000046BC(v13, qword_1000E4B28);
    v8 = sub_10007D5A8();
    v9 = sub_10007E288();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "GeneralMapsStateCollector: collectMapsActivityCamera had location info";
    goto LABEL_11;
  }

  v14 = objc_allocWithZone(NSUserDefaults);
  v15 = sub_10007E138();
  v16 = [v14 initWithSuiteName:v15];

  if (v16)
  {
    v17 = v16;
    v18 = sub_10007E138();
    v19 = [v17 dataForKey:v18];

    if (v19)
    {
      v20 = sub_10007D2A8();
      v22 = v21;

      v23 = objc_allocWithZone(GEOURLCamera);
      sub_100025664(v20, v22);
      isa = sub_10007D298().super.isa;
      sub_100005744(v20, v22);
      v25 = [v23 initWithData:isa];

      if (v25)
      {
        v26 = v25;
        if ([v26 hasLatitude] && objc_msgSend(v26, "hasLongitude"))
        {
          v27 = [v26 hasAltitude];

          if (v27)
          {
            [v26 latitude];
            v29 = v28;
            [v26 longitude];
            if (fabs(v30) <= 180.0 && fabs(v29) <= 90.0)
            {
              if (qword_1000DE268 != -1)
              {
                swift_once();
              }

              v31 = sub_10007D5C8();
              sub_1000046BC(v31, qword_1000E4B28);
              v32 = v26;
              v33 = sub_10007D5A8();
              v34 = sub_10007E288();

              if (os_log_type_enabled(v33, v34))
              {
                v35 = swift_slowAlloc();
                v36 = swift_slowAlloc();
                v64 = v33;
                v37 = v36;
                *v35 = 138477827;
                *(v35 + 4) = v32;
                *v36 = v25;
                v38 = v32;
                _os_log_impl(&_mh_execute_header, v64, v34, "GeneralMapsStateCollector: collectMapsActivityCamera found valid camera (%{private}@)", v35, 0xCu);
                sub_1000256C0(v37, &qword_1000E0960, &qword_1000829D0);
                v33 = v64;
              }

              sub_100005744(v20, v22);
              v39 = v12 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state;
              v40 = *(v12 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80);
              v41 = *(v12 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48);
              v70 = *(v12 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64);
              v71 = v40;
              v42 = *(v12 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48);
              v68 = *(v12 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32);
              v69 = v42;
              v65 = *(v12 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state);
              v78 = v65;
              v43 = *(v12 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80);
              v75 = v70;
              v76 = v43;
              v44 = *(v12 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16);
              v45 = *(v12 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 24);
              v72 = *(v12 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96);
              v79 = v44;
              v77 = *(v12 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96);
              v73 = v68;
              v74 = v41;
              v66 = v44;
              v67 = v45;
              sub_100025354(&v65, v80);

              v46 = *(v39 + 80);
              v80[4] = *(v39 + 64);
              v80[5] = v46;
              v81 = *(v39 + 96);
              v47 = *(v39 + 16);
              v80[0] = *v39;
              v80[1] = v47;
              v48 = *(v39 + 48);
              v80[2] = *(v39 + 32);
              v80[3] = v48;
              *v39 = v78;
              *(v39 + 16) = v79;
              *(v39 + 24) = v25;
              v49 = v76;
              *(v39 + 64) = v75;
              *(v39 + 80) = v49;
              v50 = v74;
              *(v39 + 32) = v73;
              *(v39 + 48) = v50;
              *(v39 + 96) = v77;
              sub_1000256C0(v80, &qword_1000DE950, &qword_100082918);
              return;
            }

            if (qword_1000DE268 != -1)
            {
              swift_once();
            }

            v62 = sub_10007D5C8();
            sub_1000046BC(v62, qword_1000E4B28);
            v56 = v26;
            v8 = sub_10007D5A8();
            v57 = sub_10007E2A8();

            if (os_log_type_enabled(v8, v57))
            {
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              *v58 = 138477827;
              *(v58 + 4) = v56;
              *v59 = v25;
              v60 = v56;
              v61 = "GeneralMapsStateCollector: collectMapsActivityCamera camera (%{private}@) invalid coordinate";
              goto LABEL_36;
            }

            goto LABEL_41;
          }
        }

        else
        {
        }
      }

      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v55 = sub_10007D5C8();
      sub_1000046BC(v55, qword_1000E4B28);
      v56 = v25;
      v8 = sub_10007D5A8();
      v57 = sub_10007E2A8();

      if (os_log_type_enabled(v8, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 138477827;
        *(v58 + 4) = v56;
        *v59 = v25;
        v60 = v56;
        v61 = "GeneralMapsStateCollector: collectMapsActivityCamera camera (%{private}@) missing data";
LABEL_36:
        _os_log_impl(&_mh_execute_header, v8, v57, v61, v58, 0xCu);
        sub_1000256C0(v59, &qword_1000E0960, &qword_1000829D0);

        sub_100005744(v20, v22);
        return;
      }

LABEL_41:

      sub_100005744(v20, v22);
      goto LABEL_12;
    }
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v51 = sub_10007D5C8();
  sub_1000046BC(v51, qword_1000E4B28);
  v52 = sub_10007D5A8();
  v53 = sub_10007E288();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "GeneralMapsStateCollector: collectMapsActivityCamera found no MapsLastActivityCamera in defaults", v54, 2u);
  }
}

void sub_10001AED0(uint64_t a1)
{
  v312 = a1;
  v2 = sub_10007D418();
  v3 = *(v2 - 8);
  v318 = v2;
  v319 = v3;
  __chkstk_darwin(v2);
  v317 = &v297 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100015240(&qword_1000DE928, &unk_100082900);
  __chkstk_darwin(v5 - 8);
  v314 = &v297 - v6;
  v316 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot(0);
  v7 = *(v316 - 1);
  v8 = __chkstk_darwin(v316);
  v10 = &v297 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v306 = &v297 - v12;
  v13 = __chkstk_darwin(v11);
  v305 = &v297 - v14;
  v15 = __chkstk_darwin(v13);
  v309 = &v297 - v16;
  __chkstk_darwin(v15);
  v310 = &v297 - v17;
  v324 = sub_10007D3B8();
  v18 = *(v324 - 8);
  v19 = __chkstk_darwin(v324);
  v313 = &v297 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v321 = &v297 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = (&v297 - v24);
  v26 = __chkstk_darwin(v23);
  v311 = &v297 - v27;
  v308 = v28;
  __chkstk_darwin(v26);
  v322 = (&v297 - v29);
  v30 = sub_10007DF48();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = (&v297 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = *&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue];
  *v33 = v34;
  (*(v31 + 104))(v33, enum case for DispatchPredicate.onQueue(_:), v30);
  v35 = v34;
  LOBYTE(v34) = sub_10007DF68();
  (*(v31 + 8))(v33, v30);
  if ((v34 & 1) == 0)
  {
    __break(1u);
    goto LABEL_177;
  }

  if (v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled])
  {
    if (qword_1000DE268 == -1)
    {
LABEL_4:
      v36 = sub_10007D5C8();
      sub_1000046BC(v36, qword_1000E4B28);
      v37 = sub_10007D5A8();
      v38 = sub_10007E288();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "GeneralMapsStateCollector: skipped collectNearbyCategories (state collection cancelled)", v39, 2u);
      }

      return;
    }

LABEL_177:
    swift_once();
    goto LABEL_4;
  }

  v40 = [objc_opt_self() sharedService];
  if (!v40)
  {
    __break(1u);
    goto LABEL_180;
  }

  v41 = v40;
  v323 = v18;
  v42 = [v40 defaultTraits];

  if (!v42)
  {
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  v43 = swift_allocObject();
  [v42 setIsWidgetRequest:1];
  sub_100015ECC(v334);
  sub_100024FF8(v334);
  if ((v335 - 1) < 3)
  {
    v44 = (v335 + 1);
  }

  else
  {
    v44 = 1;
  }

  [v42 setMode:v44];
  v303 = v1;
  v45 = &v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state];
  v46 = *&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80];
  v332[4] = *&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64];
  v332[5] = v46;
  v333 = v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96];
  v47 = *&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16];
  v332[0] = *&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state];
  v332[1] = v47;
  v48 = *&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48];
  v332[2] = *&v1[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32];
  v332[3] = v48;
  v49 = *&v332[0];
  if (*&v332[0])
  {
    *v331 = *&v332[0];
    *&v331[40] = *(v45 + 40);
    *&v331[56] = *(v45 + 56);
    *&v331[72] = *(v45 + 72);
    *&v331[81] = *(v45 + 81);
    *&v331[8] = *(v45 + 8);
    *&v331[24] = *(v45 + 24);
    sub_100026310(v332, v330, &qword_1000DE950, &qword_100082918);
    v50 = v49;
    sub_100024FF8(v331);
    v51 = [objc_allocWithZone(GEOLocation) initWithCLLocation:v50];
    [v42 setDeviceLocation:v51];

    [v50 coordinate];
    MKMapRectMakeWithRadialDistance();
    nullsub_1();
    v56 = [objc_allocWithZone(GEOMapRegion) initWithMapRect:{v52, v53, v54, v55}];
    [v42 setMapRegion:v56];

    *(v43 + 16) = 0;
    goto LABEL_16;
  }

  *v330 = 0;
  *&v330[40] = *(v45 + 40);
  *&v330[56] = *(v45 + 56);
  *&v330[72] = *(v45 + 72);
  *&v330[81] = *(v45 + 81);
  *&v330[8] = *(v45 + 8);
  *&v330[24] = *(v45 + 24);
  v57 = *(v45 + 1);
  *v331 = *v45;
  *&v331[16] = v57;
  v58 = *(v45 + 2);
  v59 = *(v45 + 3);
  v60 = *(v45 + 4);
  v61 = *(v45 + 5);
  v331[96] = v45[96];
  *&v331[64] = v60;
  *&v331[80] = v61;
  *&v331[32] = v58;
  *&v331[48] = v59;
  sub_100025354(v331, &v325);
  sub_100024FF8(v330);
  v62 = *(v45 + 3);
  if (v62)
  {
    v63 = v62;
    [v63 latitude];
    v65 = v64;
    [v63 longitude];
    v67 = [objc_allocWithZone(GEOLocation) initWithLatitude:v65 longitude:v66];
    [v42 setDeviceLocation:v67];

    sub_100040B7C();
    nullsub_1();
    v72 = [objc_allocWithZone(GEOMapRegion) initWithMapRect:{v68, v69, v70, v71}];
    [v42 setMapRegion:v72];

    *(v43 + 16) = 1;
LABEL_16:
    sub_10007D3A8();
    v73 = [objc_opt_self() sharedConfiguration];
    if (v73)
    {
      v74 = v73;
      v315 = v25;
      v320 = v43;
      v75 = [v73 countryCode];

      if (v75)
      {
        v301 = v7;
        v302 = v10;
        v76 = sub_10007E158();
        v78 = v77;

        v304 = v42;
        v79 = [v42 deviceLocation];
        if (v79)
        {
          v80 = v79;
          v81 = v316;
          v307 = swift_allocBox();
          v83 = v82;
          v84 = GEOGetUserPreferredTransportType();
          v85 = *(v45 + 4);
          v299 = *(v323 + 32);
          v300 = v323 + 32;
          v299(v83, v322, v324);
          v86 = (v83 + v81[5]);
          *v86 = v76;
          v86[1] = v78;
          v298 = v86;
          v297 = v81[6];
          *(&v83->isa + v297) = v80;
          v87 = v81[7];
          *(&v83->isa + v87) = v84;
          v88 = v81[8];
          *(&v83->isa + v88) = v85;
          v89 = v81[9];
          v322 = v83;
          *(&v83->isa + v89) = 0;
          if (qword_1000DE220 != -1)
          {
            swift_once();
          }

          v90 = *(v320 + 16);
          swift_beginAccess();
          v91 = off_1000DE798;
          v92 = v319;
          v94 = v301;
          v93 = v302;
          if (*(off_1000DE798 + 2) && (v95 = sub_100077B50(v90), (v96 & 1) != 0))
          {
            v97 = v91[7] + *(v94 + 72) * v95;
            v98 = v309;
            sub_10002549C(v97, v309);
            v99 = v310;
            sub_100025500(v98, v310);
            swift_endAccess();
            v100 = *(v99 + v316[9]);
            if (v100)
            {
              v101 = *(&v322->isa + v87);
              v102 = v322;
              if (v101 == *(v99 + v316[7]))
              {
                if (*(&v322->isa + v88) == *(v99 + v316[8]))
                {
                  GEOConfigGetDouble();
                  v104 = v103;
                  v105 = v99;
                  v107 = v323;
                  v106 = v324;
                  v108 = v311;
                  (*(v323 + 16))(v311, v102, v324);
                  sub_10007D2B8();
                  v110 = v109;
                  (*(v107 + 8))(v108, v106);
                  if (v110 >= v104)
                  {
                    if (qword_1000DE268 != -1)
                    {
                      swift_once();
                    }

                    v233 = sub_10007D5C8();
                    sub_1000046BC(v233, qword_1000E4B28);
                    v234 = sub_10007D5A8();
                    v235 = sub_10007E288();
                    v236 = os_log_type_enabled(v234, v235);
                    v143 = v323;
                    v123 = v324;
                    if (v236)
                    {
                      v237 = swift_slowAlloc();
                      *v237 = 0;
                      _os_log_impl(&_mh_execute_header, v234, v235, "GeneralMapsStateCollector: collectNearbyCategories will not use cache: snapshot has expired", v237, 2u);
                    }

                    v238 = v310;
LABEL_122:
                    sub_100025564(v238);
                    v92 = v319;
                    goto LABEL_44;
                  }

                  v111 = v316;
                  v112 = (v105 + v316[5]);
                  v99 = v105;
                  if (*v298 == *v112 && v298[1] == v112[1] || (sub_10007E598() & 1) != 0)
                  {
                    GEOConfigGetDouble();
                    v114 = v113;
                    [*(&v322->isa + v297) coordinate];
                    v116 = v115;
                    v118 = v117;
                    v119 = [*(v105 + v111[6]) coordinate];
                    v122 = j__GEOCalculateDistance(v119, v116, v118, v120, v121);
                    v123 = v324;
                    if (v122 < v114)
                    {
                      v124 = *(v45 + 3);
                      *&v330[32] = *(v45 + 2);
                      *&v330[48] = v124;
                      v125 = *(v45 + 5);
                      *&v330[64] = *(v45 + 4);
                      *&v330[80] = v125;
                      v330[96] = v45[96];
                      v126 = *(v45 + 1);
                      *v330 = *v45;
                      *&v330[16] = v126;
                      v328 = *v330;
                      v329 = v126;
                      v127 = *(v45 + 40);
                      v128 = *(v45 + 56);
                      v129 = *(v45 + 72);
                      *(v327 + 9) = *(v45 + 81);
                      v326 = v128;
                      v327[0] = v129;
                      v325 = v127;

                      sub_100026310(v330, v331, &qword_1000DE950, &qword_100082918);

                      v130 = *(v45 + 5);
                      *&v331[64] = *(v45 + 4);
                      *&v331[80] = v130;
                      v331[96] = v45[96];
                      v131 = *(v45 + 1);
                      *v331 = *v45;
                      *&v331[16] = v131;
                      v132 = *(v45 + 3);
                      *&v331[32] = *(v45 + 2);
                      *&v331[48] = v132;
                      v133 = v329;
                      *v45 = v328;
                      *(v45 + 1) = v133;
                      *(v45 + 4) = v100;
                      v134 = v325;
                      v135 = v326;
                      v136 = v327[0];
                      *(v45 + 81) = *(v327 + 9);
                      *(v45 + 72) = v136;
                      *(v45 + 56) = v135;
                      *(v45 + 40) = v134;
                      sub_1000256C0(v331, &qword_1000DE950, &qword_100082918);
                      if (qword_1000DE268 != -1)
                      {
                        swift_once();
                      }

                      v137 = sub_10007D5C8();
                      sub_1000046BC(v137, qword_1000E4B28);

                      v138 = sub_10007D5A8();
                      v139 = sub_10007E288();
                      if (os_log_type_enabled(v138, v139))
                      {
                        v140 = swift_slowAlloc();
                        *v140 = 134349056;
                        if (v100 >> 62)
                        {
                          v141 = sub_10007E528();
                        }

                        else
                        {
                          v141 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        }

                        *(v140 + 4) = v141;

                        _os_log_impl(&_mh_execute_header, v138, v139, "GeneralMapsStateCollector: collectNearbyCategories will use %{public}ld categories from cache", v140, 0xCu);
                      }

                      else
                      {
                      }

                      sub_100025564(v310);

                      goto LABEL_86;
                    }

                    if (qword_1000DE268 != -1)
                    {
                      swift_once();
                    }

                    v240 = sub_10007D5C8();
                    sub_1000046BC(v240, qword_1000E4B28);
                    v241 = sub_10007D5A8();
                    v242 = sub_10007E288();
                    v243 = os_log_type_enabled(v241, v242);
                    v143 = v323;
                    if (v243)
                    {
                      v244 = swift_slowAlloc();
                      *v244 = 0;
                      _os_log_impl(&_mh_execute_header, v241, v242, "GeneralMapsStateCollector: collectNearbyCategories will not use cache: location has changed", v244, 2u);
                      v99 = v310;
                    }

                    v238 = v99;
                    goto LABEL_122;
                  }

                  v143 = v323;
                  if (qword_1000DE268 != -1)
                  {
                    swift_once();
                  }

                  v261 = sub_10007D5C8();
                  sub_1000046BC(v261, qword_1000E4B28);
                  v262 = v305;
                  sub_10002549C(v105, v305);

                  v263 = sub_10007D5A8();
                  v264 = sub_10007E288();

                  if (os_log_type_enabled(v263, v264))
                  {
                    v265 = swift_slowAlloc();
                    *v331 = swift_slowAlloc();
                    *v265 = 136380931;
                    v266 = (v262 + v111[5]);
                    v267 = *v266;
                    v268 = v266[1];

                    sub_100025564(v262);
                    v269 = sub_100051190(v267, v268, v331);

                    *(v265 + 4) = v269;
                    *(v265 + 12) = 2081;
                    v270 = v322;
                    swift_beginAccess();
                    v271 = (v270 + v111[5]);
                    v272 = *v271;
                    v273 = v271[1];

                    v274 = sub_100051190(v272, v273, v331);

                    *(v265 + 14) = v274;
                    _os_log_impl(&_mh_execute_header, v263, v264, "GeneralMapsStateCollector: collectNearbyCategories will not use cache: country code has changed (%{private}s -> %{private}s)", v265, 0x16u);
                    swift_arrayDestroy();

                    v99 = v310;
                  }

                  else
                  {

                    sub_100025564(v262);
                  }

                  v123 = v324;
                  v92 = v319;
                  goto LABEL_173;
                }

                if (qword_1000DE268 != -1)
                {
                  swift_once();
                }

                v224 = sub_10007D5C8();
                sub_1000046BC(v224, qword_1000E4B28);
                v225 = v306;
                sub_10002549C(v99, v306);

                v216 = sub_10007D5A8();
                v226 = sub_10007E288();
                v227 = os_log_type_enabled(v216, v226);
                v143 = v323;
                v123 = v324;
                if (v227)
                {
                  v228 = swift_slowAlloc();
                  v229 = swift_slowAlloc();
                  *v331 = v229;
                  *v228 = 136380931;
                  v230 = *(v225 + v316[8]);
                  v309 = v229;
                  if (v230 <= 1)
                  {
                    if (!v230)
                    {
                      v231 = @"Standard";
                      v277 = @"Standard";
                      goto LABEL_157;
                    }

                    if (v230 == 1)
                    {
                      v231 = @"Satellite";
                      v239 = @"Satellite";
                      goto LABEL_157;
                    }
                  }

                  else
                  {
                    switch(v230)
                    {
                      case 2:
                        v231 = @"Hybrid";
                        v275 = @"Hybrid";
                        goto LABEL_157;
                      case 3:
                        v231 = @"Transit";
                        v276 = @"Transit";
                        goto LABEL_157;
                      case 4:
                        v231 = @"Driving";
                        v232 = @"Driving";
                        goto LABEL_157;
                    }
                  }

                  v231 = [NSString stringWithFormat:@"(unknown: %i)", v230];
LABEL_157:
                  v278 = v231;
                  if (v278)
                  {
                    v279 = v278;
                    v280 = sub_10007E158();
                    v282 = v281;

                    sub_100025564(v225);
                    v283 = sub_100051190(v280, v282, v331);

                    *(v228 + 4) = v283;
                    *(v228 + 12) = 2081;
                    v284 = v322;
                    swift_beginAccess();
                    v285 = *(&v284->isa + v316[8]);
                    if (v285 <= 1)
                    {
                      v123 = v324;
                      if (!v285)
                      {
                        v286 = @"Standard";
                        v291 = @"Standard";
                        goto LABEL_170;
                      }

                      if (v285 == 1)
                      {
                        v286 = @"Satellite";
                        v288 = @"Satellite";
                        goto LABEL_170;
                      }
                    }

                    else
                    {
                      v123 = v324;
                      switch(v285)
                      {
                        case 2:
                          v286 = @"Hybrid";
                          v289 = @"Hybrid";
                          goto LABEL_170;
                        case 3:
                          v286 = @"Transit";
                          v290 = @"Transit";
                          goto LABEL_170;
                        case 4:
                          v286 = @"Driving";
                          v287 = @"Driving";
                          goto LABEL_170;
                      }
                    }

                    v286 = [NSString stringWithFormat:@"(unknown: %i)", *(&v284->isa + v316[8])];
LABEL_170:
                    v292 = v286;

                    if (v292)
                    {
                      v293 = sub_10007E158();
                      v295 = v294;

                      v296 = sub_100051190(v293, v295, v331);

                      *(v228 + 14) = v296;
                      _os_log_impl(&_mh_execute_header, v216, v226, "GeneralMapsStateCollector: collectNearbyCategories will not use cache: map type has changed (%{private}s -> %{private}s)", v228, 0x16u);
                      swift_arrayDestroy();

                      goto LABEL_172;
                    }

LABEL_187:
                    __break(1u);
                    return;
                  }

LABEL_186:

                  __break(1u);
                  goto LABEL_187;
                }

                sub_100025564(v225);
LABEL_173:
                sub_100025564(v99);
                goto LABEL_44;
              }

              if (qword_1000DE268 != -1)
              {
                swift_once();
              }

              v215 = sub_10007D5C8();
              sub_1000046BC(v215, qword_1000E4B28);
              sub_10002549C(v99, v93);

              v216 = sub_10007D5A8();
              v217 = v93;
              v218 = sub_10007E288();
              v219 = os_log_type_enabled(v216, v218);
              v143 = v323;
              v123 = v324;
              if (!v219)
              {

                sub_100025564(v217);
                goto LABEL_173;
              }

              v220 = swift_slowAlloc();
              v221 = swift_slowAlloc();
              *v331 = v221;
              *v220 = 136380931;
              v222 = *(v217 + v316[7]);
              v309 = v221;
              if (v222 > 2)
              {
                switch(v222)
                {
                  case 3:
                    v223 = @"PREFERRED_TRANSPORT_TYPE_TRANSIT";
                    goto LABEL_128;
                  case 4:
                    v223 = @"PREFERRED_TRANSPORT_TYPE_RIDESHARE";
                    goto LABEL_128;
                  case 5:
                    v223 = @"PREFERRED_TRANSPORT_TYPE_CYCLING";
                    goto LABEL_128;
                }
              }

              else
              {
                switch(v222)
                {
                  case 0:
                    v223 = @"PREFERRED_TRANSPORT_TYPE_NONE";
                    goto LABEL_128;
                  case 1:
                    v223 = @"PREFERRED_TRANSPORT_TYPE_DRIVING";
                    goto LABEL_128;
                  case 2:
                    v223 = @"PREFERRED_TRANSPORT_TYPE_WALKING";
LABEL_128:
                    v245 = v223;
LABEL_129:
                    v246 = v223;
                    if (v246)
                    {
                      v247 = v246;
                      v248 = sub_10007E158();
                      v250 = v249;

                      sub_100025564(v302);
                      v251 = sub_100051190(v248, v250, v331);

                      *(v220 + 4) = v251;
                      *(v220 + 12) = 2081;
                      v252 = v322;
                      swift_beginAccess();
                      v253 = *(&v252->isa + v316[7]);
                      if (v253 > 2)
                      {
                        v123 = v324;
                        switch(v253)
                        {
                          case 3:
                            v254 = @"PREFERRED_TRANSPORT_TYPE_TRANSIT";
                            goto LABEL_144;
                          case 4:
                            v254 = @"PREFERRED_TRANSPORT_TYPE_RIDESHARE";
                            goto LABEL_144;
                          case 5:
                            v254 = @"PREFERRED_TRANSPORT_TYPE_CYCLING";
                            goto LABEL_144;
                        }
                      }

                      else
                      {
                        v123 = v324;
                        switch(v253)
                        {
                          case 0:
                            v254 = @"PREFERRED_TRANSPORT_TYPE_NONE";
                            goto LABEL_144;
                          case 1:
                            v254 = @"PREFERRED_TRANSPORT_TYPE_DRIVING";
                            goto LABEL_144;
                          case 2:
                            v254 = @"PREFERRED_TRANSPORT_TYPE_WALKING";
LABEL_144:
                            v255 = v254;
LABEL_145:
                            v256 = v254;

                            if (v256)
                            {
                              v257 = sub_10007E158();
                              v259 = v258;

                              v260 = sub_100051190(v257, v259, v331);

                              *(v220 + 14) = v260;
                              _os_log_impl(&_mh_execute_header, v216, v218, "GeneralMapsStateCollector: collectNearbyCategories will not use cache: preferred transport type has changed (%{private}s -> %{private}s)", v220, 0x16u);
                              swift_arrayDestroy();

LABEL_172:

                              v92 = v319;
                              v99 = v310;
                              goto LABEL_173;
                            }

                            goto LABEL_185;
                        }
                      }

                      v254 = [NSString stringWithFormat:@"(unknown: %i)", *(&v252->isa + v316[7])];
                      goto LABEL_145;
                    }

LABEL_184:

                    __break(1u);
LABEL_185:
                    __break(1u);
                    goto LABEL_186;
                }
              }

              v223 = [NSString stringWithFormat:@"(unknown: %i)", v222];
              goto LABEL_129;
            }

            sub_100025564(v99);
          }

          else
          {
            swift_endAccess();
          }

          v142 = v320;
          v143 = v323;
          v123 = v324;
          if (qword_1000DE268 != -1)
          {
            swift_once();
          }

          v144 = sub_10007D5C8();
          sub_1000046BC(v144, qword_1000E4B28);

          v145 = sub_10007D5A8();
          v146 = sub_10007E288();
          if (os_log_type_enabled(v145, v146))
          {
            v147 = swift_slowAlloc();
            v148 = swift_slowAlloc();
            *v331 = v148;
            *v147 = 136446210;
            swift_beginAccess();
            v330[0] = *(v142 + 16);
            v149 = sub_10007E168();
            v151 = v150;

            v152 = sub_100051190(v149, v151, v331);

            *(v147 + 4) = v152;
            _os_log_impl(&_mh_execute_header, v145, v146, "GeneralMapsStateCollector: collectNearbyCategories will not use cache: no cached categories found for domain %{public}s", v147, 0xCu);
            sub_1000250AC(v148);

            v92 = v319;
          }

          else
          {
          }

LABEL_44:
          v153 = [objc_opt_self() standardUserDefaults];
          v154 = sub_10007E138();
          v155 = [v153 objectForKey:v154];

          if (v155)
          {
            sub_10007E3D8();
            swift_unknownObjectRelease();
          }

          else
          {
            memset(v330, 0, 32);
          }

          v156 = v314;
          *v331 = *v330;
          *&v331[16] = *&v330[16];
          if (*&v330[24])
          {
            v157 = swift_dynamicCast();
            (*(v143 + 56))(v156, v157 ^ 1u, 1, v123);
            if ((*(v143 + 48))(v156, 1, v123) != 1)
            {
              v299(v315, v156, v123);
              goto LABEL_53;
            }
          }

          else
          {
            sub_1000256C0(v331, &qword_1000DE930, &unk_100083CC0);
            (*(v143 + 56))(v156, 1, 1, v123);
          }

          sub_10007D3A8();
          if ((*(v143 + 48))(v156, 1, v123) != 1)
          {
            sub_1000256C0(v156, &qword_1000DE928, &unk_100082900);
          }

LABEL_53:
          v158 = sub_10007E138();
          v322 = v153;
          v159 = [v153 integerForKey:v158];

          Integer = GEOConfigGetInteger();
          v161 = v317;
          sub_10007D408();
          v162 = sub_10007D3F8();
          v163 = *(v92 + 8);
          v163(v161, v318);
          if ((v162 & 1) != 0 && v159 >= Integer)
          {
            if (qword_1000DE268 != -1)
            {
              swift_once();
            }

            v164 = sub_10007D5C8();
            sub_1000046BC(v164, qword_1000E4B28);
            v165 = sub_10007D5A8();
            v166 = sub_10007E288();
            v167 = os_log_type_enabled(v165, v166);
            v169 = v323;
            v168 = v324;
            v170 = v315;
            if (v167)
            {
              v171 = swift_slowAlloc();
              *v171 = 134349312;
              *(v171 + 4) = v159;
              *(v171 + 12) = 2050;
              *(v171 + 14) = Integer;
              _os_log_impl(&_mh_execute_header, v165, v166, "GeneralMapsStateCollector: collectNearbyCategories will not fetch categories: already issued %{public}ld requests (of daily maximum: %{public}ld)", v171, 0x16u);

              v172 = v304;
              v173 = v322;
            }

            else
            {
              v172 = v165;
              v165 = v322;
              v173 = v304;
            }

            (*(v169 + 8))(v170, v168);
            goto LABEL_85;
          }

          dispatch_group_enter(*&v303[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup]);
          sub_10007D3A8();
          v174 = v317;
          sub_10007D408();
          v175 = v315;
          v176 = sub_10007D3F8();
          v163(v174, v318);
          if (v176)
          {
            v177 = v159 + 1;
            v178 = v323;
            if (!__OFADD__(v159, 1))
            {
LABEL_64:
              v179 = v312;
              isa = sub_10007D2C8().super.isa;
              v181 = sub_10007E138();
              v182 = v322;
              [v322 setObject:isa forKey:v181];

              v183 = sub_10007E138();
              [v182 setInteger:v177 forKey:v183];

              if (qword_1000DE268 != -1)
              {
                swift_once();
              }

              v319 = v177;
              v184 = sub_10007D5C8();
              sub_1000046BC(v184, qword_1000E4B28);
              v185 = sub_10007D5A8();
              v186 = sub_10007E2C8();
              v187 = os_log_type_enabled(v185, v186);
              v188 = v324;
              if (v187)
              {
                v189 = swift_slowAlloc();
                *v189 = 134349056;
                *(v189 + 4) = v319;
                _os_log_impl(&_mh_execute_header, v185, v186, "GeneralMapsStateCollector: collectNearbyCategories BEGIN (daily request number %{public}ld)", v189, 0xCu);
              }

              v190 = [objc_opt_self() sharedService];
              v191 = v313;
              if (v190)
              {
                v192 = v190;
                v193 = [v190 ticketForCategoryListWithTraits:v304 isFromNoQueryState:0];

                v194 = v303;
                sub_10001DF60(v179, v193);
                if (v193)
                {
                  v195 = v311;
                  (*(v178 + 16))(v311, v321, v188);
                  v196 = (*(v178 + 80) + 24) & ~*(v178 + 80);
                  v197 = (v308 + v196 + 7) & 0xFFFFFFFFFFFFFFF8;
                  v198 = swift_allocObject();
                  *(v198 + 16) = v194;
                  v299((v198 + v196), v195, v324);
                  *(v198 + v197) = v307;
                  *(v198 + ((v197 + 15) & 0xFFFFFFFFFFFFFFF8)) = v320;
                  v178 = v323;
                  v188 = v324;
                  *&v331[32] = sub_1000253E0;
                  *&v331[40] = v198;
                  *v331 = _NSConcreteStackBlock;
                  *&v331[8] = 1107296256;
                  *&v331[16] = sub_10001DEC4;
                  *&v331[24] = &unk_1000C8618;
                  v199 = _Block_copy(v331);

                  swift_unknownObjectRetain();
                  v200 = v194;
                  v191 = v313;

                  [v193 submitWithHandler:v199 networkActivity:0];
                  swift_unknownObjectRelease();
                  _Block_release(v199);
                  v201 = v321;
                  v175 = v315;
                  goto LABEL_82;
                }

                v175 = v315;
              }

              else
              {
                sub_10001DF60(v179, 0);
              }

              v201 = v321;
LABEL_82:
              (*(v178 + 16))(v191, v201, v188);
              v206 = sub_10007D5A8();
              v207 = sub_10007E298();
              if (os_log_type_enabled(v206, v207))
              {
                v208 = v188;
                v209 = swift_slowAlloc();
                *v209 = 134349312;
                v210 = v311;
                sub_10007D3A8();
                sub_10007D2B8();
                v212 = v211;
                v213 = *(v178 + 8);
                v213(v210, v208);
                v213(v191, v208);
                *(v209 + 4) = v212;
                *(v209 + 12) = 2050;
                *(v209 + 14) = v319;
                _os_log_impl(&_mh_execute_header, v206, v207, "GeneralMapsStateCollector: collectNearbyCategories blocked caller for %{public}f seconds, request %{public}ld", v209, 0x16u);

                swift_unknownObjectRelease();

                v213(v321, v208);
                v213(v315, v208);
              }

              else
              {
                swift_unknownObjectRelease();

                v214 = *(v178 + 8);
                v214(v191, v188);
                v214(v201, v188);
                v214(v175, v188);
              }

LABEL_85:

LABEL_86:

              return;
            }

            __break(1u);
          }

          v177 = 1;
          v178 = v323;
          goto LABEL_64;
        }

LABEL_183:
        __break(1u);
        goto LABEL_184;
      }

LABEL_182:
      __break(1u);
      goto LABEL_183;
    }

LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v202 = sub_10007D5C8();
  sub_1000046BC(v202, qword_1000E4B28);
  v203 = sub_10007D5A8();
  v204 = sub_10007E2A8();
  if (os_log_type_enabled(v203, v204))
  {
    v205 = swift_slowAlloc();
    *v205 = 0;
    _os_log_impl(&_mh_execute_header, v203, v204, "GeneralMapsStateCollector: collectNearbyCategories had no location or region to work with", v205, 2u);
  }
}

double sub_10001D134(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v26 = a2;
  v33 = sub_10007DEB8();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v31 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10007DED8();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v27 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007D3B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *&a3[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue];
  (*(v12 + 16))(v14, a4, v11);
  v15 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = a3;
  *(v17 + 3) = a1;
  *(v17 + 4) = v26;
  (*(v12 + 32))(&v17[v15], v14, v11);
  v18 = v29;
  *&v17[v16] = v28;
  *&v17[(v16 + 15) & 0xFFFFFFFFFFFFFFF8] = v18;
  aBlock[4] = sub_1000255C4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C8668;
  v19 = _Block_copy(aBlock);
  v20 = a3;

  swift_errorRetain();

  v21 = v27;
  sub_10007DEC8();
  v36 = _swiftEmptyArrayStorage;
  sub_100002E64();
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  v22 = v31;
  v23 = v33;
  sub_10007E3F8();
  sub_10007E338();
  _Block_release(v19);
  (*(v35 + 8))(v22, v23);
  (*(v32 + 8))(v21, v34);

  return result;
}

void sub_10001D4E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v79 = a6;
  v83 = a4;
  v9 = sub_10007D3B8();
  isa = v9[-1].isa;
  v85 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v78 - v14;
  v16 = __chkstk_darwin(v13);
  v82 = &v78 - v17;
  __chkstk_darwin(v16);
  v80 = &v78 - v18;
  v19 = sub_100015240(&qword_1000DEA10, &unk_100083CE0);
  __chkstk_darwin(v19 - 8);
  v21 = &v78 - v20;
  v78 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot(0);
  v22 = swift_projectBox();
  v23 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNearbyCategoriesCancellation;
  if (*(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNearbyCategoriesCancellation))
  {

    sub_10007DF18();
    *(a1 + v23) = 0;

    v24 = a1;
    if (a2 && (v25 = sub_10003A4A0(a2)) != 0)
    {
      v26 = v25;
      v27 = v25 >> 62;
      if (v25 >> 62)
      {
        if (sub_10007E528())
        {
          goto LABEL_6;
        }
      }

      else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:

        sub_100015ECC(v88);
        v93[0] = v89;

        sub_1000256C0(v93, &qword_1000DEA18, &qword_1000829B0);
        v28 = a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state;
        v29 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80);
        v86[4] = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64);
        v86[5] = v29;
        v87 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96);
        v30 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16);
        v86[0] = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state);
        v86[1] = v30;
        v31 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48);
        v86[2] = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32);
        v86[3] = v31;
        v32 = v88[1];
        *v28 = v88[0];
        *(v28 + 16) = v32;
        *(v28 + 32) = v26;
        *(v28 + 81) = *(v92 + 9);
        *(v28 + 72) = v92[0];
        *(v28 + 56) = v91;
        *(v28 + 40) = v90;
        sub_1000256C0(v86, &qword_1000DE950, &qword_100082918);
        swift_beginAccess();
        v33 = v78;
        *(v22 + *(v78 + 36)) = v26;

        if (qword_1000DE220 != -1)
        {
          swift_once();
        }

        v34 = v79;
        swift_beginAccess();
        LOBYTE(v34) = *(v34 + 16);
        swift_beginAccess();
        sub_10002549C(v22, v21);
        (*(*(v33 - 8) + 56))(v21, 0, 1, v33);
        swift_beginAccess();
        sub_10003A7AC(v21, v34);
        swift_endAccess();
        v35 = isa;
        v36 = v80;
        if (qword_1000DE268 != -1)
        {
          swift_once();
        }

        v37 = sub_10007D5C8();
        sub_1000046BC(v37, qword_1000E4B28);
        v38 = v85;
        (*(v35 + 2))(v36, v83, v85);

        v39 = sub_10007D5A8();
        v40 = sub_10007E2C8();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 134349312;
          if (v27)
          {
            v42 = sub_10007E528();
          }

          else
          {
            v42 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v41 + 4) = v42;

          *(v41 + 12) = 2050;
          v61 = v82;
          sub_10007D3A8();
          sub_10007D2B8();
          v63 = v62;
          v64 = *(v35 + 1);
          v65 = v61;
          v66 = v85;
          v64(v65, v85);
          v64(v36, v66);
          *(v41 + 14) = v63;
          _os_log_impl(&_mh_execute_header, v39, v40, "GeneralMapsStateCollector: collectNearbyCategories END (%{public}ld categories, %{public}f seconds elapsed)", v41, 0x16u);
          goto LABEL_29;
        }

        swift_bridgeObjectRelease_n();
        (*(v35 + 1))(v36, v38);
LABEL_30:
        dispatch_group_leave(*(v24 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup));

        return;
      }

      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v67 = sub_10007D5C8();
      sub_1000046BC(v67, qword_1000E4B28);
      v68 = isa;
      v69 = v85;
      (*(isa + 2))(v15, v83, v85);
      swift_errorRetain();
      v39 = sub_10007D5A8();
      v46 = sub_10007E2A8();

      if (!os_log_type_enabled(v39, v46))
      {

        (*(v68 + 1))(v15, v69);
        goto LABEL_30;
      }

      v47 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v88[0] = v83;
      *v47 = 136446466;
      *&v86[0] = a3;
      swift_errorRetain();
      sub_100015240(&qword_1000DE938, &qword_100082910);
      v70 = sub_10007E178();
      v72 = v24;
      v73 = sub_100051190(v70, v71, v88);

      *(v47 + 4) = v73;
      v24 = v72;
      *(v47 + 12) = 2050;
      v74 = v82;
      sub_10007D3A8();
      sub_10007D2B8();
      v76 = v75;
      v77 = *(v68 + 1);
      v77(v74, v69);
      v77(v15, v69);
      *(v47 + 14) = v76;
      v56 = "GeneralMapsStateCollector: collectNearbyCategories END (no categories; error: %{public}s, %{public}f seconds elapsed)";
    }

    else
    {
      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v43 = sub_10007D5C8();
      sub_1000046BC(v43, qword_1000E4B28);
      v44 = isa;
      v45 = v85;
      (*(isa + 2))(v12, v83, v85);
      swift_errorRetain();
      v39 = sub_10007D5A8();
      v46 = sub_10007E2A8();

      if (!os_log_type_enabled(v39, v46))
      {

        (*(v44 + 1))(v12, v45);
        goto LABEL_30;
      }

      v47 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v88[0] = v83;
      *v47 = 136446466;
      *&v86[0] = a3;
      swift_errorRetain();
      sub_100015240(&qword_1000DE938, &qword_100082910);
      v48 = sub_10007E178();
      v50 = v24;
      v51 = sub_100051190(v48, v49, v88);

      *(v47 + 4) = v51;
      v24 = v50;
      *(v47 + 12) = 2050;
      v52 = v82;
      sub_10007D3A8();
      sub_10007D2B8();
      v54 = v53;
      v55 = *(v44 + 1);
      v55(v52, v45);
      v55(v12, v45);
      *(v47 + 14) = v54;
      v56 = "GeneralMapsStateCollector: collectNearbyCategories END (unexpected category type; error: %{public}s, %{public}f seconds elapsed)";
    }

    _os_log_impl(&_mh_execute_header, v39, v46, v56, v47, 0x16u);
    sub_1000250AC(v83);

LABEL_29:

    goto LABEL_30;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v57 = sub_10007D5C8();
  sub_1000046BC(v57, qword_1000E4B28);
  v85 = sub_10007D5A8();
  v58 = sub_10007E2A8();
  if (os_log_type_enabled(v85, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v85, v58, "GeneralMapsStateCollector: collectNearbyCategories was cancelled just before completion", v59, 2u);
  }

  v60 = v85;
}

uint64_t sub_10001DEC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_10007E1D8();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_10001DF60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10007DEF8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  v13 = sub_10007DEB8();
  result = __chkstk_darwin(v13);
  if (a2)
  {
    v33 = v7;
    v34 = v6;
    v15 = swift_allocObject();
    v35 = a1;
    v16 = v15;
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = v16;
    aBlock[4] = sub_10002538C;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000041A4;
    aBlock[3] = &unk_1000C85A0;
    _Block_copy(aBlock);
    v36 = _swiftEmptyArrayStorage;
    sub_100002E64();
    swift_unknownObjectRetain_n();

    sub_100015240(&unk_1000DE980, &unk_1000835B0);
    sub_100002EBC();
    sub_10007E3F8();
    sub_10007DF38();
    swift_allocObject();
    v18 = sub_10007DF08();

    v19 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNearbyCategoriesCancellation;
    *(v3 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNearbyCategoriesCancellation) = v18;

    sub_10007D318();
    v21 = v20 + -10.0;
    if (v20 + -10.0 <= 0.0)
    {
      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v29 = sub_10007D5C8();
      sub_1000046BC(v29, qword_1000E4B28);
      v30 = sub_10007D5A8();
      v31 = sub_10007E2A8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "GeneralMapsStateCollector: could not schedule collectNearbyCategories cancellation", v32, 2u);
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v22 = sub_10007D5C8();
      sub_1000046BC(v22, qword_1000E4B28);
      v23 = sub_10007D5A8();
      v24 = sub_10007E2C8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134349056;
        *(v25 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v23, v24, "GeneralMapsStateCollector: scheduled collectNearbyCategories cancellation in %{public}f seconds", v25, 0xCu);
      }

      sub_10007DEE8();
      sub_10007DF58();
      v26 = *(v33 + 8);
      v27 = v10;
      v28 = v34;
      result = v26(v27, v34);
      if (*(v3 + v19))
      {

        sub_10007E308();
        swift_unknownObjectRelease();

        return v26(v12, v28);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_10001E410(void *a1, uint64_t a2)
{
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v3 = sub_10007D5C8();
  sub_1000046BC(v3, qword_1000E4B28);
  v4 = sub_10007D5A8();
  v5 = sub_10007E2A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "GeneralMapsStateCollector: collectNearbyCategories END (cancelled)", v6, 2u);
  }

  [a1 cancel];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingNearbyCategoriesCancellation] = 0;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = *(v8 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup);

    dispatch_group_leave(v10);
  }
}

void sub_10001E594(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10007DF48();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue];
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = sub_10007DF68();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled])
  {
    if (qword_1000DE268 == -1)
    {
LABEL_4:
      v9 = sub_10007D5C8();
      sub_1000046BC(v9, qword_1000E4B28);
      v10 = sub_10007D5A8();
      v11 = sub_10007E288();
      if (!os_log_type_enabled(v10, v11))
      {
LABEL_22:

        return;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "GeneralMapsStateCollector: skipped collectCommuteStatus (state collection cancelled)";
      v14 = v11;
      v15 = v10;
      v16 = v12;
      v17 = 2;
LABEL_21:
      _os_log_impl(&_mh_execute_header, v15, v14, v13, v16, v17);

      goto LABEL_22;
    }

LABEL_25:
    swift_once();
    goto LABEL_4;
  }

  sub_10007E378();
  v18 = sub_10007E368();
  v19 = sub_10007E358();

  if (!MapsFeature_IsEnabled_LocationIntelligenceMaps() || (v19 & 1) == 0)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v32 = sub_10007D5C8();
    sub_1000046BC(v32, qword_1000E4B28);
    v10 = sub_10007D5A8();
    v33 = sub_10007E288();
    if (!os_log_type_enabled(v10, v33))
    {
      goto LABEL_22;
    }

    v34 = swift_slowAlloc();
    *v34 = 67109120;
    *(v34 + 1) = v19 & 1;
    v13 = "GeneralMapsStateCollector: skipped collectCommuteStatus (feature flag not enabled and/or device is not eligible: eligibility=%{BOOL}d)";
    v14 = v33;
    v15 = v10;
    v16 = v34;
    v17 = 8;
    goto LABEL_21;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v20 = sub_10007D5C8();
  sub_1000046BC(v20, qword_1000E4B28);
  v21 = sub_10007D5A8();
  v22 = sub_10007E2C8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "GeneralMapsStateCollector: collectCommuteStatus BEGIN", v23, 2u);
  }

  dispatch_group_enter(*&v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup]);
  sub_10001F848();
  v24 = *&v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_msgCommute];
  if (v24)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v2;
    aBlock[4] = sub_100025224;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001F6B0;
    aBlock[3] = &unk_1000C8500;
    v26 = _Block_copy(aBlock);
    v27 = v24;
    v2;

    v28 = [v27 isDeviceInCommuteWindow:v26];
    _Block_release(v26);

    if (v28 != 1)
    {
      v29 = sub_10007D5A8();
      v30 = sub_10007E2A8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "GeneralMapsStateCollector: collectCommuteStatus error occurred and isDeviceInCommuteWindow returned .willNotCallBack", v31, 2u);
      }

      sub_10001FE14();
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_10001EA70(int a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char *a6)
{
  v34 = a5;
  v35 = a4;
  v33 = a3;
  v32 = a1;
  v8 = sub_10007DEB8();
  v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10007DED8();
  v37 = *(v11 - 8);
  v38 = v11;
  __chkstk_darwin(v11);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_100015240(&qword_1000DE928, &unk_100082900);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v18 = &v31[-v17];
  v36 = *&a6[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue];
  sub_100026310(a2, &v31[-v17], &qword_1000DE928, &unk_100082900);
  v19 = (*(v15 + 80) + 25) & ~*(v15 + 80);
  v20 = (v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a6;
  *(v22 + 24) = v32;
  sub_10002522C(v18, v22 + v19);
  v23 = v33;
  *(v22 + v20) = v33;
  v25 = v34;
  v24 = v35;
  *(v22 + v21) = v34;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  aBlock[4] = sub_10002529C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C8550;
  v26 = _Block_copy(aBlock);
  v27 = a6;
  v28 = v23;
  v29 = v25;
  swift_errorRetain();
  sub_10007DEC8();
  v40 = _swiftEmptyArrayStorage;
  sub_100002E64();
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  sub_10007E3F8();
  sub_10007E338();
  _Block_release(v26);
  (*(v39 + 8))(v10, v8);
  (*(v37 + 8))(v13, v38);

  return result;
}

double sub_10001EDF4(uint64_t a1, int a2, uint64_t a3, NSObject *a4, void *a5, uint64_t a6)
{
  v105 = a4;
  v11 = sub_100015240(&qword_1000DE928, &unk_100082900);
  v12 = __chkstk_darwin(v11);
  v14 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v17 = &v94 - v16;
  v18 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingCommuteStatusCancellation;
  if (*(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingCommuteStatusCancellation))
  {
    v97 = v15;
    v104 = a2;

    sub_10007DF18();
    *(a1 + v18) = 0;

    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v19 = sub_10007D5C8();
    v20 = sub_1000046BC(v19, qword_1000E4B28);
    sub_100026310(a3, v17, &qword_1000DE928, &unk_100082900);
    v21 = v105;
    v22 = v105;
    v23 = a5;
    swift_errorRetain();
    v102 = v20;
    v24 = sub_10007D5A8();
    v100 = a5;
    v25 = v24;
    v26 = sub_10007E298();
    v101 = v23;

    v98 = v26;
    if (os_log_type_enabled(v25, v26))
    {
      v96 = v25;
      v99 = a1;
      v27 = v22;
      v28 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *&v118[0] = v95;
      *v28 = 136316162;
      if (v104)
      {
        v29 = 7562585;
      }

      else
      {
        v29 = 28494;
      }

      if (v104)
      {
        v30 = 0xE300000000000000;
      }

      else
      {
        v30 = 0xE200000000000000;
      }

      v31 = v21;
      v32 = sub_100051190(v29, v30, v118);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      sub_100026310(v17, v14, &qword_1000DE928, &unk_100082900);
      v33 = sub_10007E168();
      v35 = v34;
      sub_1000256C0(v17, &qword_1000DE928, &unk_100082900);
      v36 = sub_100051190(v33, v35, v118);

      *(v28 + 14) = v36;
      *(v28 + 22) = 2080;
      *&v120[0] = v31;
      v37 = v27;
      sub_100015240(&qword_1000DE9A0, &qword_100082990);
      v38 = sub_10007E168();
      v40 = sub_100051190(v38, v39, v118);

      *(v28 + 24) = v40;
      *(v28 + 32) = 2080;
      v41 = v100;
      *&v120[0] = v100;
      v42 = v101;
      sub_100015240(&qword_1000DE9A8, qword_100082998);
      v43 = sub_10007E168();
      v45 = sub_100051190(v43, v44, v118);

      *(v28 + 34) = v45;
      *(v28 + 42) = 2080;
      if (a6)
      {
        swift_getErrorValue();
        v46 = sub_10007E5C8();
      }

      else
      {
        v46 = 0;
        v47 = 0;
      }

      *&v120[0] = v46;
      *(&v120[0] + 1) = v47;
      sub_100015240(&unk_1000DE990, &qword_100082980);
      v53 = sub_10007E168();
      v55 = sub_100051190(v53, v54, v118);

      *(v28 + 44) = v55;
      v56 = v96;
      _os_log_impl(&_mh_execute_header, v96, v98, "GeneralMapsStateCollector: collectCommuteStatus isInWindow? %s, entryTime: %s, nextLikelyDestination: %s, routeSet: %s, error: %s", v28, 0x34u);
      swift_arrayDestroy();

      a1 = v99;
      v21 = v105;
      v22 = v27;
      if ((v104 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v41 = v100;

      sub_1000256C0(v17, &qword_1000DE928, &unk_100082900);
      if ((v104 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    if (v21 && v41)
    {
      v57 = v41;
      v58 = v22;
      v59 = v101;
      v60 = sub_10007D5A8();
      v61 = sub_10007E2C8();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v99 = a1;
        *&v120[0] = v63;
        *v62 = 136315394;
        *&v118[0] = v21;
        v64 = v58;
        sub_100015240(&qword_1000DE9A0, &qword_100082990);
        v65 = sub_10007E168();
        v67 = sub_100051190(v65, v66, v120);

        *(v62 + 4) = v67;
        *(v62 + 12) = 2080;
        *&v118[0] = v57;
        v68 = v59;
        sub_100015240(&qword_1000DE9A8, qword_100082998);
        v69 = sub_10007E168();
        v71 = sub_100051190(v69, v70, v120);

        *(v62 + 14) = v71;
        _os_log_impl(&_mh_execute_header, v60, v61, "GeneralMapsStateCollector: collectCommuteStatus collectCommuteStatus received a commute window, destination: %s, and route set: %s", v62, 0x16u);
        swift_arrayDestroy();
        a1 = v99;

        v72 = v105;
      }

      else
      {

        v72 = v21;
      }

      v76 = v58;
      sub_100015ECC(v120);

      v126[0] = v122;
      sub_1000256C0(v126, &qword_1000DE9A0, &qword_100082990);
      v77 = a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state;
      v78 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80);
      v106[4] = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64);
      v106[5] = v78;
      v107 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96);
      v79 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16);
      v106[0] = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state);
      v106[1] = v79;
      v80 = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48);
      v106[2] = *(a1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32);
      v106[3] = v80;
      v81 = v120[0];
      v82 = v120[2];
      v83 = v121;
      *(v77 + 16) = v120[1];
      *(v77 + 32) = v82;
      *v77 = v81;
      *(v77 + 48) = v83;
      *(v77 + 56) = v72;
      *(v77 + 96) = v125;
      v84 = v124;
      *(v77 + 64) = v123;
      *(v77 + 80) = v84;
      sub_1000256C0(v106, &qword_1000DE950, &qword_100082918);
      v85 = *(v77 + 16);
      v108[0] = *v77;
      v108[1] = v85;
      v86 = *(v77 + 48);
      v109 = *(v77 + 32);
      v110 = v86;
      v87 = *(v77 + 64);
      v112[0] = *(v77 + 72);
      v88 = v112[0];
      *(v112 + 9) = *(v77 + 81);
      v116 = v109;
      v117 = v86;
      v114 = v108[0];
      v115 = v85;
      v113[0] = v88;
      *(v113 + 9) = *(v112 + 9);
      v111 = v87;
      sub_100025354(v108, v118);

      v89 = *(v77 + 80);
      v118[4] = *(v77 + 64);
      v118[5] = v89;
      v119 = *(v77 + 96);
      v90 = *(v77 + 16);
      v118[0] = *v77;
      v118[1] = v90;
      v91 = *(v77 + 48);
      v118[2] = *(v77 + 32);
      v118[3] = v91;
      v92 = v115;
      *v77 = v114;
      *(v77 + 16) = v92;
      v93 = v117;
      *(v77 + 32) = v116;
      *(v77 + 48) = v93;
      *(v77 + 64) = v57;
      *(v77 + 81) = *(v113 + 9);
      *(v77 + 72) = v113[0];
      sub_1000256C0(v118, &qword_1000DE950, &qword_100082918);
LABEL_33:
      sub_10001FE14();

      return result;
    }

LABEL_28:
    v73 = sub_10007D5A8();
    v74 = sub_10007E2C8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "GeneralMapsStateCollector: collectCommuteStatus did not have a commute window, destination, or route set", v75, 2u);
    }

    goto LABEL_33;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v48 = sub_10007D5C8();
  sub_1000046BC(v48, qword_1000E4B28);
  v105 = sub_10007D5A8();
  v49 = sub_10007E2A8();
  if (os_log_type_enabled(v105, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v105, v49, "GeneralMapsStateCollector: collectCommuteStatus was cancelled just before commute route set was received", v50, 2u);
  }

  v51 = v105;

  return result;
}

uint64_t sub_10001F6B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = sub_100015240(&qword_1000DE928, &unk_100082900);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = *(a1 + 32);
  if (a3)
  {
    sub_10007D388();
    v16 = sub_10007D3B8();
    (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
  }

  else
  {
    v17 = sub_10007D3B8();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  }

  v18 = a4;
  v19 = a5;
  v20 = a6;
  v15(a2, v14, a4, a5, a6);

  return sub_1000256C0(v14, &qword_1000DE928, &unk_100082900);
}

void sub_10001F848()
{
  v1 = v0;
  v2 = sub_10007DEF8();
  v26 = *(v2 - 8);
  v27 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v25 - v6;
  v8 = sub_10007DEB8();
  __chkstk_darwin(v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000251E4;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C84B0;
  _Block_copy(aBlock);
  v28 = _swiftEmptyArrayStorage;
  sub_100002E64();

  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  sub_10007E3F8();
  sub_10007DF38();
  swift_allocObject();
  v10 = sub_10007DF08();

  v11 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingCommuteStatusCancellation;
  *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingCommuteStatusCancellation) = v10;

  sub_10007D318();
  v13 = v12 + -10.0;
  if (v12 + -10.0 <= 0.0)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v21 = sub_10007D5C8();
    sub_1000046BC(v21, qword_1000E4B28);
    v22 = sub_10007D5A8();
    v23 = sub_10007E2A8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "GeneralMapsStateCollector: could not schedule collectCommuteStatus cancellation", v24, 2u);
    }
  }

  else
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v14 = sub_10007D5C8();
    sub_1000046BC(v14, qword_1000E4B28);
    v15 = sub_10007D5A8();
    v16 = sub_10007E2C8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134349056;
      *(v17 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v15, v16, "GeneralMapsStateCollector: scheduled collectCommuteStatus cancellation in %{public}f seconds", v17, 0xCu);
    }

    sub_10007DEE8();
    sub_10007DF58();
    v18 = *(v26 + 8);
    v19 = v5;
    v20 = v27;
    v18(v19, v27);
    if (*(v1 + v11))
    {

      sub_10007E308();

      v18(v7, v20);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10001FCB0(uint64_t a1, const char *a2, void *a3, void (*a4)(void))
{
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v7 = sub_10007D5C8();
  sub_1000046BC(v7, qword_1000E4B28);
  v8 = sub_10007D5A8();
  v9 = sub_10007E2A8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, a2, v10, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[*a3] = 0;
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    a4();
  }
}

void sub_10001FE14()
{
  v1 = v0;
  v2 = sub_10007DF48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = sub_10007DF68();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v8 = OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingCommuteStatusCancellation;
  if (*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_pendingCommuteStatusCancellation))
  {

    sub_10007DF18();

    *(v1 + v8) = 0;
  }

  if (qword_1000DE268 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = sub_10007D5C8();
  sub_1000046BC(v9, qword_1000E4B28);
  v10 = sub_10007D5A8();
  v11 = sub_10007E2C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "GeneralMapsStateCollector: collectCommuteStatus END", v12, 2u);
  }

  dispatch_group_leave(*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup));
}

void sub_10002001C()
{
  v1 = sub_10007DF48();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = sub_10007DF68();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v0 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_cancelled))
  {
    if (qword_1000DE268 == -1)
    {
LABEL_4:
      v7 = sub_10007D5C8();
      sub_1000046BC(v7, qword_1000E4B28);
      v8 = sub_10007D5A8();
      v9 = sub_10007E288();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "GeneralMapsStateCollector: skipped collectSuggestions (state collection cancelled)", v10, 2u);
      }

      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  v11 = v0;
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v12 = sub_10007D5C8();
  sub_1000046BC(v12, qword_1000E4B28);
  v13 = sub_10007D5A8();
  v14 = sub_10007E2C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "GeneralMapsStateCollector: collectSuggestions BEGIN", v15, 2u);
  }

  dispatch_group_enter(*(v11 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup));
  sub_10002033C();
}

double sub_10002033C()
{
  v1 = v0;
  v2 = sub_10007DEB8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007DED8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v10 = sub_10007D5C8();
  sub_1000046BC(v10, qword_1000E4B28);
  v11 = sub_10007D5A8();
  v12 = sub_10007E298();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "GeneralMapsStateCollector: fetchSuggestionEntries", v13, 2u);
  }

  v14 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_suggestionsEngine);
  if (v14)
  {
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = sub_1000251DC;
    v27 = v15;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100020EEC;
    v25 = &unk_1000C8488;
    v16 = _Block_copy(&aBlock);
    v17 = v14;

    [v17 oneShotTopSuggestionsForSink:v1 count:3 transportType:4 callback:v16 onQueue:*(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue)];
    _Block_release(v16);
  }

  else
  {
    v21[0] = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = sub_1000251D4;
    v27 = v19;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_1000041A4;
    v25 = &unk_1000C8460;
    v20 = _Block_copy(&aBlock);

    sub_10007DEC8();
    v21[1] = _swiftEmptyArrayStorage;
    sub_100002E64();
    sub_100015240(&unk_1000DE980, &unk_1000835B0);
    sub_100002EBC();
    sub_10007E3F8();
    sub_10007E338();
    _Block_release(v20);
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }

  return result;
}

void sub_10002076C(uint64_t a1)
{
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v1 = sub_10007D5C8();
  sub_1000046BC(v1, qword_1000E4B28);
  v2 = sub_10007D5A8();
  v3 = sub_10007E2A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "GeneralMapsStateCollector: fetchSuggestionEntries error: No engine", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100020F90();
  }

  else
  {
    v6 = sub_10007D5A8();
    v7 = sub_10007E2A8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "GeneralMapsStateCollector: fetchSuggestionEntries : self went away", v8, 2u);
    }
  }
}

void sub_1000208F4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = sub_10007D3B8();
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && !a2)
  {
    v46[2] = a3;
    v19 = qword_1000DE268;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_10007D5C8();
    v21 = sub_1000046BC(v20, qword_1000E4B28);

    v22 = sub_10007D5A8();
    v23 = sub_10007E298();
    v24 = os_log_type_enabled(v22, v23);
    v25 = a1 >> 62;
    v46[1] = v21;
    if (!v24)
    {

      goto LABEL_16;
    }

    v26 = swift_slowAlloc();
    *v26 = 134349056;
    if (v25)
    {
      goto LABEL_34;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10007E528())
    {
      *(v26 + 4) = i;

      _os_log_impl(&_mh_execute_header, v22, v23, "GeneralMapsStateCollector: fetchSuggestionEntries received %{public}ld entries", v26, 0xCu);

LABEL_16:
      if (v25)
      {
        v26 = sub_10007E528();
        if (!v26)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          goto LABEL_27;
        }
      }

      if (v26 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_34:
      ;
    }

    v28 = 0;
    v47 = GEOConfigMapsSuggestionsCurrentLocationOfInterestExpiryDurationForWidget;
    v46[3] = *(&GEOConfigMapsSuggestionsCurrentLocationOfInterestExpiryDurationForWidget + 1);
    v29 = (v6 + 8);
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v30 = sub_10007E468();
      }

      else
      {
        v30 = *(a1 + 8 * v28 + 32);
      }

      v31 = v30;
      if ([v30 type] == 25)
      {
        v6 = v6 & 0xFFFFFFFF00000000 | v47;
        GEOConfigGetDouble();
        sub_10007D308();
        isa = sub_10007D2C8().super.isa;
        (*v29)(v8, v48);
        [v31 setExpires:isa];
      }

      ++v28;
    }

    while (v26 != v28);
LABEL_27:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v34 = Strong;
      sub_100015ECC(v51);
      v58 = v53;
      sub_1000256C0(&v58, &unk_1000DE970, &unk_100082970);
      v35 = &v34[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state];
      v36 = *&v34[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state];
      v37 = *&v34[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16];
      v49[2] = *&v34[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32];
      v49[1] = v37;
      v49[0] = v36;
      v38 = *&v34[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48];
      v39 = *&v34[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64];
      v40 = *&v34[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80];
      v50 = v34[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96];
      v49[5] = v40;
      v49[4] = v39;
      v49[3] = v38;
      *(v35 + 4) = v52;
      *(v35 + 1) = v51[1];
      *v35 = v51[0];
      *(v35 + 5) = a1;
      v41 = v54;
      v42 = v55;
      v43 = v56;
      v35[96] = v57;
      *(v35 + 4) = v42;
      *(v35 + 5) = v43;
      *(v35 + 3) = v41;
      sub_1000256C0(v49, &qword_1000DE950, &qword_100082918);
      sub_100020F90();

      return;
    }

    goto LABEL_30;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v9 = sub_10007D5C8();
  sub_1000046BC(v9, qword_1000E4B28);
  swift_errorRetain();
  v10 = sub_10007D5A8();
  v11 = sub_10007E2A8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v51[0] = v13;
    *v12 = 136446210;
    *&v49[0] = a2;
    swift_errorRetain();
    sub_100015240(&qword_1000DE938, &qword_100082910);
    v14 = sub_10007E178();
    v16 = sub_100051190(v14, v15, v51);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "GeneralMapsStateCollector: fetchSuggestionEntries error: %{public}s", v12, 0xCu);
    sub_1000250AC(v13);
  }

  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
LABEL_30:
    v18 = sub_10007D5A8();
    v44 = sub_10007E2A8();
    if (os_log_type_enabled(v18, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v18, v44, "GeneralMapsStateCollector: fetchSuggestionEntries : self went away", v45, 2u);
    }

    goto LABEL_32;
  }

  v18 = v17;
  sub_100020F90();
LABEL_32:
}

uint64_t sub_100020EEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
    v4 = sub_10007E1D8();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_100020F90()
{
  v63 = sub_10007DEB8();
  v1 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10007DED8();
  v3 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007DF48();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = v0;
  v9 = *&v0[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue];
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v59 = v9;
  LOBYTE(v9) = sub_10007DF68();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    goto LABEL_32;
  }

  if (qword_1000DE268 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v10 = sub_10007D5C8();
    v54 = sub_1000046BC(v10, qword_1000E4B28);
    v11 = sub_10007D5A8();
    v12 = sub_10007E298();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "GeneralMapsStateCollector: finalizeSuggestionEntries", v13, 2u);
    }

    sub_100015ECC(v81);
    v83 = v82;
    sub_100026310(&v83, &aBlock, &unk_1000DE970, &unk_100082970);
    sub_100024FF8(v81);
    p_base_meths = (&GeneralMapsTimelineProvider + 32);
    if (!v83)
    {
      break;
    }

    v15 = v83;
    v53 = v83 >> 62;
    if (v83 >> 62)
    {
      if (sub_10007E528() < 1)
      {
LABEL_37:
        sub_1000256C0(&v83, &unk_1000DE970, &unk_100082970);
        p_base_meths = &GeneralMapsTimelineProvider.base_meths;
        break;
      }

      v70 = sub_10007E528();
      if (!v70)
      {
LABEL_23:
        sub_100026310(&v83, &aBlock, &unk_1000DE970, &unk_100082970);
        v46 = sub_10007D5A8();
        v47 = sub_10007E2C8();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 134349056;
          if (v53)
          {
            v49 = sub_10007E528();
          }

          else
          {
            v49 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          sub_1000256C0(&v83, &unk_1000DE970, &unk_100082970);
          *(v48 + 4) = v49;
          sub_1000256C0(&v83, &unk_1000DE970, &unk_100082970);
          _os_log_impl(&_mh_execute_header, v46, v47, "GeneralMapsStateCollector: collectSuggestions END (%{public}ld entries)", v48, 0xCu);
        }

        else
        {
          sub_1000256C0(&v83, &unk_1000DE970, &unk_100082970);
          sub_1000256C0(&v83, &unk_1000DE970, &unk_100082970);
        }

        p_base_meths = (&GeneralMapsTimelineProvider + 32);
        goto LABEL_40;
      }
    }

    else
    {
      v70 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v70)
      {
        goto LABEL_37;
      }
    }

    v16 = 0;
    v69 = *&v71[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup];
    v66 = *&v71[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_suggestionsNetworkRequester];
    v67 = v15 & 0xC000000000000001;
    v55 = v15 & 0xFFFFFFFFFFFFFF8;
    v72 = &v77;
    v57 = (v1 + 1);
    v56 = (v3 + 1);
    v68 = 1;
    v58 = v15;
    while (1)
    {
      if (v67)
      {
        v17 = sub_10007E468();
      }

      else
      {
        if (v16 >= *(v55 + 16))
        {
          goto LABEL_31;
        }

        v17 = *(v15 + 8 * v16 + 32);
      }

      v18 = v17;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v73 = v16 + 1;
      dispatch_group_enter(v69);
      v19 = dispatch_group_create();
      dispatch_group_enter(v19);
      v1 = swift_allocObject();
      v20 = v71;
      v1[2] = v18;
      v1[3] = v20;
      v1[4] = v19;
      v3 = swift_allocObject();
      v3[2] = v20;
      v3[3] = v18;
      v3[4] = sub_100025124;
      v3[5] = v1;
      v79 = sub_100025130;
      v80 = v3;
      aBlock = _NSConcreteStackBlock;
      v76 = 1107296256;
      v77 = sub_100026438;
      v78 = &unk_1000C8320;
      v21 = _Block_copy(&aBlock);
      v22 = v18;
      v23 = v20;
      v24 = v22;
      v25 = v19;

      LODWORD(v19) = GEOMapItemFromMapsSuggestionsEntry();
      _Block_release(v21);
      if (!v19)
      {
        v26 = swift_allocObject();
        v26[2] = v23;
        v26[3] = v24;
        v26[4] = sub_100025124;
        v26[5] = v1;
        v79 = sub_100025180;
        v80 = v26;
        aBlock = _NSConcreteStackBlock;
        v76 = 1107296256;
        v77 = sub_1000041A4;
        v78 = &unk_1000C83C0;
        v64 = _Block_copy(&aBlock);
        v27 = v23;
        v28 = v24;

        v65 = v23;
        v29 = v60;
        sub_10007DEC8();
        v74 = _swiftEmptyArrayStorage;
        sub_100002E64();
        sub_100015240(&unk_1000DE980, &unk_1000835B0);
        sub_100002EBC();
        v30 = v62;
        v31 = v25;
        v32 = v63;
        sub_10007E3F8();
        v33 = v64;
        sub_10007E338();
        _Block_release(v33);
        v34 = v30;
        v15 = v58;
        v35 = v32;
        v25 = v31;
        (*v57)(v34, v35);
        v36 = v29;
        v23 = v65;
        (*v56)(v36, v61);
      }

      if ((v68 & sub_100022734() & 1) != 0 && ([v24 BOOLeanForKey:@"MapsSuggestionsRoutingNotAvailableKey" is:1] & 1) == 0 && objc_msgSend(v24, "containsKey:", @"MapsSuggestionsNeedsETATrackingKey") && objc_msgSend(v24, "BOOLeanForKey:", @"MapsSuggestionsNeedsETATrackingKey"))
      {
        dispatch_group_enter(v69);
        v37 = swift_allocObject();
        *(v37 + 16) = v23;
        *(v37 + 24) = v24;
        v79 = sub_10002513C;
        v80 = v37;
        aBlock = _NSConcreteStackBlock;
        v76 = 1107296256;
        v77 = sub_1000041A4;
        v78 = &unk_1000C8370;
        v38 = _Block_copy(&aBlock);
        v39 = v23;
        v40 = v24;
        v41 = v60;
        sub_10007DEC8();
        v74 = _swiftEmptyArrayStorage;
        sub_100002E64();
        sub_100015240(&unk_1000DE980, &unk_1000835B0);
        sub_100002EBC();
        v42 = v62;
        v43 = v25;
        v44 = v63;
        sub_10007E3F8();
        sub_10007E2E8();
        _Block_release(v38);

        v45 = v42;
        v15 = v58;
        (*v57)(v45, v44);
        (*v56)(v41, v61);

        v68 = 0;
        v16 = v73;
        if (v73 == v70)
        {
          goto LABEL_23;
        }
      }

      else
      {

        ++v16;
        if (v73 == v70)
        {
          goto LABEL_23;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  v46 = sub_10007D5A8();
  v50 = sub_10007E2C8();
  if (os_log_type_enabled(v46, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v46, v50, "GeneralMapsStateCollector: collectSuggestions END (no entries)", v51, 2u);
  }

LABEL_40:

  dispatch_group_leave(*(p_base_meths[250] + v71));
}

void sub_100021B40(void *a1, id a2, uint64_t a3, NSObject *a4)
{
  p_base_meths = &GeneralMapsTimelineProvider.base_meths;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v9 = sub_10007D5C8();
    sub_1000046BC(v9, qword_1000E4B28);
    swift_errorRetain();
    v10 = sub_10007D5A8();
    v11 = sub_10007E2A8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v33[0] = v13;
      *v12 = 136446210;
      v34 = a1;
      swift_errorRetain();
      sub_100015240(&unk_1000DF540, &qword_100082988);
      v14 = sub_10007E178();
      v16 = sub_100051190(v14, v15, v33);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "GeneralMapsStateCollector: could not determine transport type: %{public}s", v12, 0xCu);
      sub_1000250AC(v13);

      p_base_meths = (&GeneralMapsTimelineProvider + 32);
    }

    else
    {
    }
  }

  if ([a2 containsKey:@"MapsSuggestionsTransportTypeKey"])
  {
    v17 = [a2 integerForKey:@"MapsSuggestionsTransportTypeKey"];
    if (v17 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v17 <= 0x7FFFFFFF)
    {
      if (v17 <= 2)
      {
        switch(v17)
        {
          case 0:
            v18 = @"AUTOMOBILE";
            goto LABEL_27;
          case 1:
            v18 = @"TRANSIT";
            goto LABEL_27;
          case 2:
            v18 = @"WALKING";
LABEL_27:
            v21 = v18;
LABEL_28:
            v22 = v18;
            if (v22)
            {
              v23 = v22;
              v20 = sub_10007E158();
              v19 = v24;
            }

            else
            {
              v20 = 0;
              v19 = 0;
            }

            goto LABEL_31;
        }
      }

      else
      {
        if (v17 <= 4)
        {
          if (v17 == 3)
          {
            v18 = @"BICYCLE";
          }

          else
          {
            v18 = @"UNKNOWN_TRANSPORT_TYPE";
          }

          goto LABEL_27;
        }

        if (v17 == 5)
        {
          v18 = @"FERRY";
          goto LABEL_27;
        }

        if (v17 == 6)
        {
          v18 = @"RIDESHARE";
          goto LABEL_27;
        }
      }

      v18 = [NSString stringWithFormat:@"(unknown: %i)", v17, v33[0]];
      goto LABEL_28;
    }

    __break(1u);
    return;
  }

  v19 = 0xE700000000000000;
  v20 = 0x6E776F6E6B6E75;
LABEL_31:
  if (p_base_meths[77] != -1)
  {
    swift_once();
  }

  v25 = sub_10007D5C8();
  sub_1000046BC(v25, qword_1000E4B28);

  v26 = sub_10007D5A8();
  v27 = sub_10007E298();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v33[1] = v19;
    v34 = v29;
    *v28 = 136315138;
    v33[0] = v20;
    sub_100015240(&unk_1000DE990, &qword_100082980);
    v30 = sub_10007E178();
    v32 = sub_100051190(v30, v31, &v34);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "GeneralMapsStateCollector: determineTransportType complete, determined=%s", v28, 0xCu);
    sub_1000250AC(v29);
  }

  else
  {
  }

  dispatch_group_leave(*(a3 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup));
  dispatch_group_leave(a4);
}