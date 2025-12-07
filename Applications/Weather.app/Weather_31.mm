uint64_t SavedLocationsMonitor.savedLocationsDidUpdate(manager:savedLocations:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v43 = v13;
  v44 = v12;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v16 = v15 - v14;
  v17 = type metadata accessor for Logger();
  sub_1000037C4();
  v42 = v18;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  v23 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v23 - 8);
  v25 = &v39 - v24;
  if ((*(v3 + 184) & 1) == 0 && !*(a2 + 16))
  {
    v41 = v7;
    type metadata accessor for SettingReader();
    static SettingReader.shared.getter();
    if (qword_100CA29A8 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (aBlock || v46 != 0xE000000000000000)
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v40 = v5;
    sub_1000161C0((v3 + 144), *(v3 + 168));
    dispatch thunk of LocationManagerType.currentLocation.getter();
    v28 = type metadata accessor for Location();
    v29 = sub_100024D10(v25, 1, v28);
    sub_1000180EC(v25, &qword_100CA65D8, &unk_100A3D9D0);
    if (v29 == 1)
    {
      static Logger.savedLocations.getter();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = sub_10000389C();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "No saved locations and no current location -- moving view back to location list", v32, 2u);
      }

      (*(v42 + 8))(v22, v17);
      sub_100040690();
      v33 = static OS_dispatch_queue.main.getter();
      v35 = *(v3 + 48);
      v34 = *(v3 + 56);
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      *(v36 + 24) = v34;
      v49 = sub_10033FEDC;
      v50 = v36;
      aBlock = _NSConcreteStackBlock;
      v46 = 1107296256;
      v47 = sub_1000742F0;
      v48 = &unk_100C4F318;
      v37 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_1000672DC(&qword_100CD81C0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
      sub_1000743E8();
      v38 = v40;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v37);

      (*(v41 + 8))(v11, v38);
      (*(v43 + 8))(v16, v44);
    }
  }

LABEL_3:
  *(v3 + 184) = 1;
  return sub_1000D7EE0(a2);
}

uint64_t sub_10033FDC4(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v4 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v4);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActivityAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EnvironmentAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_10004F034(v6, v8, a1, a2);
  sub_1000180EC(v8, &unk_100CD81B0, &unk_100A3B000);
  return sub_10033FF44(v6, type metadata accessor for MainAction);
}

uint64_t sub_10033FEE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10033FF44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10033FF9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6650, &unk_100A3FAB0);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_10033FFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CA6650, &unk_100A3FAB0);

  return sub_10001B350(a1, a2, a3, v6);
}

uint64_t sub_100340054(uint64_t a1, uint64_t a2)
{
  v96 = a1;
  v97 = a2;
  type metadata accessor for Location();
  sub_1000037C4();
  v94 = v3;
  v95 = v2;
  __chkstk_darwin(v2);
  sub_100003C38();
  v86 = (v4 - v5);
  __chkstk_darwin(v6);
  v87 = &v84 - v7;
  type metadata accessor for DetailCondition();
  sub_1000037C4();
  v92 = v9;
  v93 = v8;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v85 = (v11 - v10);
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v90 = v13;
  v91 = v12;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v84 = (v15 - v14);
  type metadata accessor for URL();
  sub_1000037C4();
  v88 = v17;
  v89 = v16;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v20 = (v19 - v18);
  type metadata accessor for LocationComponentAction(0);
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_100003C38();
  v24 = (v22 - v23);
  __chkstk_darwin(v25);
  v27 = &v84 - v26;
  __chkstk_darwin(v28);
  v30 = &v84 - v29;
  __chkstk_darwin(v31);
  v33 = &v84 - v32;
  __chkstk_darwin(v34);
  v36 = &v84 - v35;
  v37 = sub_10022C350(&qword_100CAE290, &qword_100A3DB18);
  __chkstk_darwin(v37 - 8);
  v39 = &v84 - v38;
  v41 = &v84 + *(v40 + 56) - v38;
  sub_100340A74(v96, &v84 - v38, type metadata accessor for LocationComponentAction);
  sub_100340A74(v97, v41, type metadata accessor for LocationComponentAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v72 = sub_10001E878();
      sub_100340A74(v72, v33, v73);
      if (sub_100014300() == 1)
      {
        v75 = v90;
        v74 = v91;
        v76 = v84;
        (*(v90 + 32))(v84, v41, v91);
        v71 = static WeatherMapOverlayKind.== infix(_:_:)();
        v77 = *(v75 + 8);
        v77(v76, v74);
        v77(v33, v74);
        goto LABEL_32;
      }

      (*(v90 + 8))(v33, v91);
      goto LABEL_26;
    case 2u:
      v59 = sub_10001E878();
      sub_100340A74(v59, v30, v60);
      v61 = *(sub_10022C350(&qword_100CA6690, &unk_100A5B6A0) + 48);
      v45 = v30[v61];
      if (sub_100014300() != 2)
      {
        (*(v92 + 8))(v30, v93);
        goto LABEL_26;
      }

      v62 = v41[v61];
      v64 = v92;
      v63 = v93;
      v65 = v85;
      (*(v92 + 32))(v85, v41, v93);
      v66 = static DetailCondition.== infix(_:_:)();
      v67 = *(v64 + 8);
      v67(v65, v63);
      v67(v30, v63);
      if ((v66 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_9;
    case 3u:
      v69 = sub_10001E878();
      sub_100340A74(v69, v27, v70);
      if (sub_100014300() != 3)
      {
        goto LABEL_26;
      }

      v68 = *v27 ^ *v41;
      goto LABEL_12;
    case 4u:
      v46 = sub_10001E878();
      sub_100340A74(v46, v24, v47);
      v48 = *(sub_10022C350(&qword_100CA6688, &unk_100A314A0) + 48);
      if (sub_100014300() != 4)
      {
        (*(v94 + 8))(&v24[v48], v95);
        goto LABEL_26;
      }

      v49 = *v24;
      v50 = *v41;
      v52 = v94;
      v51 = v95;
      v53 = *(v94 + 32);
      v54 = &v24[v48];
      v55 = v87;
      v53(v87, v54, v95);
      v56 = &v41[v48];
      v57 = v86;
      v53(v86, v56, v51);
      if (v49 != v50)
      {
        v58 = *(v52 + 8);
        v58(v57, v51);
        v58(v55, v51);
        goto LABEL_30;
      }

      v71 = static Location.== infix(_:_:)();
      v83 = *(v52 + 8);
      v83(v57, v51);
      v83(v55, v51);
LABEL_32:
      sub_100340A18(v39);
      return v71 & 1;
    case 5u:
      if (sub_100014300() != 5)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    case 6u:
      if (sub_100014300() != 6)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    case 7u:
      if (sub_100014300() != 7)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    case 8u:
      if (sub_100014300() != 8)
      {
        goto LABEL_26;
      }

LABEL_22:
      sub_100340A18(v39);
      v71 = 1;
      return v71 & 1;
    default:
      v42 = sub_10001E878();
      sub_100340A74(v42, v36, v43);
      v44 = *(sub_10022C350(&qword_100CA6680, &qword_100A3DB20) + 48);
      v45 = v36[v44];
      if (sub_100014300())
      {
        (*(v88 + 8))(v36, v89);
LABEL_26:
        sub_1003409B0(v39);
        goto LABEL_27;
      }

      v62 = v41[v44];
      v80 = v88;
      v79 = v89;
      (*(v88 + 32))(v20, v41, v89);
      v81 = static URL.== infix(_:_:)();
      v82 = *(v80 + 8);
      v82(v20, v79);
      v82(v36, v79);
      if ((v81 & 1) == 0)
      {
LABEL_30:
        sub_100340A18(v39);
LABEL_27:
        v71 = 0;
        return v71 & 1;
      }

LABEL_9:
      v68 = v45 ^ v62;
LABEL_12:
      sub_100340A18(v39);
      v71 = v68 ^ 1;
      return v71 & 1;
  }
}

uint64_t sub_100340760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100003C38();
  v10 = (v8 - v9);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = sub_10022C350(&qword_100CAE298, &qword_100A3DB28);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - v15;
  v18 = &v27 + *(v17 + 56) - v15;
  sub_100340A74(a1, &v27 - v15, type metadata accessor for LocationFooterAction);
  sub_100340A74(a2, v18, type metadata accessor for LocationFooterAction);
  v19 = *(sub_10022C350(&qword_100CA6650, &unk_100A3FAB0) + 48);
  v20 = *(v6 + 32);
  v20(v13, &v16[v19], v4);
  v20(v10, &v18[v19], v4);
  LOBYTE(v19) = static Location.== infix(_:_:)();
  v21 = type metadata accessor for Location();
  sub_1000037E8();
  v23 = *(v22 + 8);
  v23(v18, v21);
  v23(v16, v21);
  if (v19)
  {
    v24 = static LocationOfInterest.== infix(_:_:)();
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v6 + 8);
  v25(v10, v4);
  v25(v13, v4);
  return v24 & 1;
}

uint64_t sub_1003409B0(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAE290, &qword_100A3DB18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100340A18(uint64_t a1)
{
  v2 = type metadata accessor for LocationComponentAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100340A74(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100340AD4()
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2830 != -1)
  {
    swift_once();
  }

  v0 = SettingReader.isEnabled(_:with:)();

  return v0 & 1;
}

uint64_t getEnumTagSinglePayload for Map(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Map(uint64_t result, int a2, int a3)
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

uint64_t sub_100340BAC(uint64_t a1)
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

uint64_t sub_100340BC8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_100340BF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 185) = a4;
  *(v4 + 200) = a2;
  *(v4 + 208) = a3;
  *(v4 + 192) = a1;
  v5 = type metadata accessor for WeatherMapPerformanceTestConditions();
  *(v4 + 216) = v5;
  sub_100003AE8(v5);
  *(v4 + 224) = v6;
  *(v4 + 232) = swift_task_alloc();
  v7 = type metadata accessor for Location();
  *(v4 + 240) = v7;
  sub_100003AE8(v7);
  *(v4 + 248) = v8;
  *(v4 + 256) = swift_task_alloc();
  v9 = type metadata accessor for SavedLocation();
  *(v4 + 264) = v9;
  sub_100003AE8(v9);
  *(v4 + 272) = v10;
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  *(v4 + 296) = swift_task_alloc();
  sub_10022C350(&qword_100CAE2A0, qword_100A96750);
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 336) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100340E34, v12, v11);
}

uint64_t sub_100340E34()
{
  v61 = v0;

  if (qword_100CA2788 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000703C(v1, qword_100D90CF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 185);
    v6 = *(v0 + 200);
    v5 = *(v0 + 208);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v60 = v8;
    *v7 = 136315138;
    *(v0 + 168) = v6;
    *(v0 + 176) = v5;
    *(v0 + 184) = v4 & 1;
    v9 = String.init<A>(describing:)();
    v11 = sub_100078694(v9, v10, &v60);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing Map instruction: %s", v7, 0xCu);
    sub_100006F14(v8);
    sub_100003884(v8);
    sub_100003884(v7);
  }

  v12 = *(v0 + 320);
  v13 = *(v0 + 216);
  CurrentValueSubject.value.getter();
  v14 = sub_100024D10(v12, 1, v13);
  v15 = *(v0 + 320);
  if (v14 == 1)
  {
    v16 = *(v0 + 216);
    sub_10001B350(*(v0 + 296), 1, 1, *(v0 + 240));
    WeatherMapPerformanceTestConditions.init(location:zoomLevel:)();
    if (sub_100024D10(v15, 1, v16) != 1)
    {
      sub_10003FDF4(*(v0 + 320), &qword_100CAE2A0, qword_100A96750);
    }
  }

  else
  {
    (*(*(v0 + 224) + 32))(*(v0 + 328), *(v0 + 320), *(v0 + 216));
  }

  v17 = *(v0 + 185);
  sub_10001B350(*(v0 + 328), 0, 1, *(v0 + 216));
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  if ((v17 & 1) == 0)
  {
    if (v20)
    {
      v26 = *(v0 + 200);
      v25 = *(v0 + 208);
      v27 = swift_slowAlloc();
      *v27 = 134218240;
      *(v27 + 4) = v26;
      *(v27 + 12) = 2048;
      *(v27 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Set map location and zoomLevel. index=%ld, zoomLevel=%f", v27, 0x16u);
      sub_100003884(v27);
    }

    v28 = *(v0 + 200);

    v29 = *(sub_10000FC90() + 16);

    if (v29 <= v28)
    {
      sub_1003174D4(*(v0 + 192), v0 + 16);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = *(v0 + 200);
        v43 = swift_slowAlloc();
        *v43 = 134218240;
        *(v43 + 4) = v42;
        *(v43 + 12) = 2048;
        sub_1000161C0((v0 + 64), *(v0 + 88));
        v44 = *(dispatch thunk of SavedLocationsManagerType.savedLocations.getter() + 16);

        sub_100317530(v0 + 16);
        *(v43 + 14) = v44;
        _os_log_impl(&_mh_execute_header, v40, v41, "Cannot select location. index=%ld, count=%ld", v43, 0x16u);
        sub_100003884(v43);
      }

      else
      {
        sub_100317530(v0 + 16);
      }

      goto LABEL_27;
    }

    v30 = *(v0 + 200);
    result = sub_10000FC90();
    if (v30 < 0)
    {
      __break(1u);
    }

    else
    {
      v32 = *(v0 + 200);
      if (*(result + 16) > v32)
      {
        v34 = *(v0 + 280);
        v33 = *(v0 + 288);
        sub_1001A30C4(result + ((*(*(v0 + 272) + 80) + 32) & ~*(*(v0 + 272) + 80)) + *(*(v0 + 272) + 72) * v32, v33);

        sub_1001A30C4(v33, v34);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1002AB524(*(v0 + 280));
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = *(v0 + 200);
            v38 = swift_slowAlloc();
            *v38 = 134217984;
            *(v38 + 4) = v37;
            _os_log_impl(&_mh_execute_header, v35, v36, "Selected location was pending reverse geocode. index=%ld", v38, 0xCu);
            sub_100003884(v38);
          }

          v39 = *(v0 + 288);

          sub_1002AB524(v39);
          goto LABEL_27;
        }

        v46 = *(v0 + 328);
        v47 = *(v0 + 216);
        (*(*(v0 + 248) + 32))(*(v0 + 256), *(v0 + 280), *(v0 + 240));
        v48 = 1;
        if (!sub_100024D10(v46, 1, v47))
        {
          v49 = *(v0 + 296);
          v51 = *(v0 + 248);
          v50 = *(v0 + 256);
          v53 = *(v0 + 232);
          v52 = *(v0 + 240);
          v54 = *(v0 + 216);
          v55 = *(v0 + 224);
          (*(v55 + 16))(v53, *(v0 + 328), v54);
          (*(v51 + 16))(v49, v50, v52);
          sub_10001B350(v49, 0, 1, v52);
          WeatherMapPerformanceTestConditions.with(location:zoomLevel:)();
          sub_10003FDF4(v49, &qword_100CA65D8, &unk_100A3D9D0);
          (*(v55 + 8))(v53, v54);
          v48 = 0;
        }

        v56 = *(v0 + 328);
        v57 = *(v0 + 312);
        v58 = *(v0 + 288);
        v59 = *(v0 + 216);
        (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
        sub_1002AB524(v58);
        sub_10001B350(v57, v48, 1, v59);
        sub_100341638(v57, v56);
        goto LABEL_13;
      }
    }

    __break(1u);
    return result;
  }

  if (v20)
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Reset map conditions.", v21, 2u);
    sub_100003884(v21);
  }

  v22 = *(v0 + 328);
  v23 = *(v0 + 216);

  sub_10003FDF4(v22, &qword_100CAE2A0, qword_100A96750);
  sub_10001B350(v22, 1, 1, v23);
LABEL_13:
  v24 = *(v0 + 304);
  sub_1003416A8(*(v0 + 328), v24);
  sub_1007DAC54(v24);
  sub_10003FDF4(v24, &qword_100CAE2A0, qword_100A96750);
LABEL_27:
  sub_10003FDF4(*(v0 + 328), &qword_100CAE2A0, qword_100A96750);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_100341588(uint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000926F8;

  return sub_100340BF8(a1, v4, v5, v6);
}

uint64_t sub_100341638(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAE2A0, qword_100A96750);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003416A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAE2A0, qword_100A96750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100341718(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAE2A8, &unk_100A3DBC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100341780()
{
  result = qword_100CAE2B8;
  if (!qword_100CAE2B8)
  {
    v3 = type metadata accessor for SessionEndData();
    result = swift_getWitnessTable(&protocol conformance descriptor for SessionEndData, v3, v0, v1);
    atomic_store(result, &qword_100CAE2B8);
  }

  return result;
}

uint64_t SessionScenePhaseObserver.deinit()
{

  sub_100006F14((v0 + 24));
  sub_100006F14((v0 + 64));
  return v0;
}

uint64_t SessionScenePhaseObserver.__deallocating_deinit()
{
  SessionScenePhaseObserver.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_10034183C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C431B8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100341888(char a1)
{
  result = 0x696C617551726961;
  switch(a1)
  {
    case 1:
      result = 0x7469706963657270;
      break;
    case 2:
      result = 0x74617265706D6574;
      break;
    case 3:
      result = 1684957559;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100341940@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10034183C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100341970@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100341888(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for NotificationAuthorizationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LocationViewDescription.NotableCondition(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100341B10()
{
  result = qword_100CAE370;
  if (!qword_100CAE370)
  {
    result = swift_getWitnessTable(byte_100A3DD4C, &type metadata for LocationViewDescription.NotableCondition, v0, v1);
    atomic_store(result, &qword_100CAE370);
  }

  return result;
}

uint64_t sub_100341B64(uint64_t a1)
{
  v2 = sub_100341C68();

  return static RawRepresentable<>.dataType.getter(a1, v2, &protocol witness table for String);
}

uint64_t sub_100341BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100341C68();

  return static RawRepresentable<>.convert(from:)(a1, a2, v4, &protocol witness table for String);
}

uint64_t sub_100341C14(uint64_t a1)
{
  v2 = sub_100341C68();

  return RawRepresentable<>.toData()(a1, v2, &protocol witness table for String);
}

unint64_t sub_100341C68()
{
  result = qword_100CAE378;
  if (!qword_100CAE378)
  {
    result = swift_getWitnessTable(asc_100A3DCD4, &type metadata for LocationViewDescription.NotableCondition, v0, v1);
    atomic_store(result, &qword_100CAE378);
  }

  return result;
}

uint64_t sub_100341CC0(uint64_t a1)
{
  result = static Solarium.isEnabled.getter();
  v2 = 20.0;
  if (result)
  {
    v2 = 18.0;
  }

  qword_100D8FB60 = *&v2;
  return result;
}

uint64_t sub_100341CF0()
{
  v0 = type metadata accessor for RoundedCornerStyle();
  sub_100007074(v0, qword_100D8FB68);
  v1 = sub_10000703C(v0, qword_100D8FB68);
  v2 = enum case for RoundedCornerStyle.continuous(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100341DA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000022 && 0x8000000100AC0EF0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_100341EBC(char a1)
{
  if (!a1)
  {
    return 0x7470697263736564;
  }

  if (a1 == 1)
  {
    return 0x79726F6765746163;
  }

  return 0xD000000000000022;
}

uint64_t sub_100341F20()
{
  if ((static WeatherDescription.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
  sub_100005824(*(v0 + 20));
  v3 = v3 && v1 == v2;
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_100005824(*(v0 + 24));
  if (v3 && v4 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100341FBC(void *a1)
{
  v3 = sub_10022C350(&qword_100CAE430, &qword_100A3DE58);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_1003425D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  type metadata accessor for WeatherDescription();
  sub_1003426E8(&qword_100CAE438, &protocol conformance descriptor for WeatherDescription);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_10034218C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v33 = v5;
  __chkstk_darwin(v6);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10022C350(&qword_100CAE418, &qword_100A3DE50);
  sub_1000037C4();
  v32 = v8;
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
  __chkstk_darwin(v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_1003425D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v16 = v32;
  v15 = v33;
  v29 = v12;
  v30 = v14;
  v38 = 0;
  sub_1003426E8(&qword_100CAE428, &protocol conformance descriptor for WeatherDescription);
  v18 = v34;
  v17 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 32))(v30, v18, v4);
  v37 = 1;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = &v30[*(v29 + 20)];
  *v20 = v19;
  v20[1] = v21;
  v36 = 2;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v23;
  (*(v16 + 8))(v11, v17);
  v25 = v30;
  v26 = &v30[*(v29 + 24)];
  *v26 = v22;
  v26[1] = v24;
  sub_100342628(v25, v31);
  sub_100006F14(a1);
  return sub_10034268C(v25);
}

uint64_t sub_100342500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100341DA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100342528(uint64_t a1)
{
  v2 = sub_1003425D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100342564(uint64_t a1)
{
  v2 = sub_1003425D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1003425D4()
{
  result = qword_100CAE420;
  if (!qword_100CAE420)
  {
    result = swift_getWitnessTable(byte_100A3DF24, &type metadata for UVIndexComponentPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CAE420);
  }

  return result;
}

uint64_t sub_100342628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034268C(uint64_t a1)
{
  v2 = type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003426E8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for WeatherDescription();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UVIndexComponentPreprocessedDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10034280C()
{
  result = qword_100CAE440;
  if (!qword_100CAE440)
  {
    result = swift_getWitnessTable(byte_100A3DEFC, &type metadata for UVIndexComponentPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CAE440);
  }

  return result;
}

unint64_t sub_100342864()
{
  result = qword_100CAE448;
  if (!qword_100CAE448)
  {
    result = swift_getWitnessTable(aU_38, &type metadata for UVIndexComponentPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CAE448);
  }

  return result;
}

unint64_t sub_1003428BC()
{
  result = qword_100CAE450;
  if (!qword_100CAE450)
  {
    result = swift_getWitnessTable(asc_100A3DE94, &type metadata for UVIndexComponentPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CAE450);
  }

  return result;
}

void *sub_100342910@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAE4F0, &qword_100A3E008);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    v4 = sub_10002D7F8(v20, v21);
    v5 = __chkstk_darwin(v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for MessageCoverInteractor();
    v19[3] = v10;
    v19[4] = &off_100C5D680;
    v19[0] = v9;
    v11 = type metadata accessor for MessageCoverModule();
    v12 = swift_allocObject();
    v13 = sub_10002D7F8(v19, v10);
    v14 = __chkstk_darwin(v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_100C5D680;
    v12[2] = v18;
    sub_100006F14(v19);
    result = sub_100006F14(v20);
    a2[3] = v11;
    a2[4] = &off_100C75090;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100342B34()
{
  sub_10022C350(&qword_100CAE4F0, &qword_100A3E008);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_100342BA0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MessageCoverInteractor();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_100C5D680;
  *a1 = result;
  return result;
}

uint64_t sub_100342BF8@<X0>(uint64_t a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for LocationViewComponentContainerDescriptor(0, a2, a3, a4);
  v6 = sub_100588E2C(v5);
  if (v6)
  {
    sub_1001B3B30(v6 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, a1);

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for LocationComponentContainerViewModel(0);

  return sub_10001B350(a1, v7, 1, v8);
}

BOOL sub_100342C88()
{
  v1 = type metadata accessor for AppStoreReviewConfiguration();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(v0 + 2, v0[5]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.appStoreReview.getter();
  (*(v9 + 8))(v12, v7);
  AppStoreReviewConfiguration.reviewPromptSamplingRate.getter();
  v14 = v13;
  (*(v3 + 8))(v6, v1);
  v15 = v14;
  sub_1000161C0(v0 + 7, v0[10]);
  v16 = PrivacySamplerType.canRecord(samplingRate:)(v15);
  if (qword_100CA2688 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000703C(v17, qword_100D90A00);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67240448;
    *(v20 + 4) = v16;
    *(v20 + 8) = 2050;
    *(v20 + 10) = v15;
    _os_log_impl(&_mh_execute_header, v18, v19, "App Store Review Privacy Sampler evinced result %{BOOL,public}d for sampling rate : %{public}f", v20, 0x12u);
  }

  return v16;
}

uint64_t type metadata accessor for PrecipitationAveragesDetailInput(uint64_t a1)
{
  result = qword_100CAE698;
  if (!qword_100CAE698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100342F94(uint64_t a1)
{
  type metadata accessor for PrecipitationAveragesHeroChartInput(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MonthlyAveragesChartInput(319);
    if (v2 <= 0x3F)
    {
      sub_1002F1934();
      if (v3 <= 0x3F)
      {
        type metadata accessor for NewsDataModel(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Calendar();
          if (v5 <= 0x3F)
          {
            type metadata accessor for Date();
            if (v6 <= 0x3F)
            {
              type metadata accessor for Location();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100343098(uint64_t a1, uint64_t a2)
{
  if (!sub_10038BFE4(a1, a2))
  {
    goto LABEL_13;
  }

  v4 = type metadata accessor for PrecipitationAveragesDetailInput(0);
  v5 = sub_100003C48(v4[5]);
  if ((sub_1008B4E08(v5, v6) & 1) == 0)
  {
    goto LABEL_13;
  }

  v7 = v4[6];
  v8 = *(a2 + v7);
  if (*(a1 + v7))
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    sub_1009EE7CC();
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v8)
  {
LABEL_13:
    v17 = 0;
    return v17 & 1;
  }

  v11 = sub_100003C48(v4[7]);
  if ((sub_1009D82EC(v11, v12) & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_100003C48(v4[8]);
  if ((static Calendar.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_100003C48(v4[9]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_100003C48(v4[10]);
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  v13 = (a1 + v4[11]);
  v14 = v13[2];
  v19[1] = v13[1];
  v19[2] = v14;
  v19[0] = *v13;
  v15 = (a2 + v4[11]);
  v16 = v15[2];
  v20[1] = v15[1];
  v20[2] = v16;
  v20[0] = *v15;
  v17 = sub_1000B8A2C(v19, v20);
  return v17 & 1;
}

id sub_1003431C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v188 = a4;
  v194 = a2;
  v202 = a5;
  type metadata accessor for Location();
  sub_1000037C4();
  v200 = v8;
  v201 = v7;
  __chkstk_darwin(v7);
  v192 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v187 = &v168 - v11;
  sub_1000038CC();
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v190 = v13;
  v191 = v12;
  __chkstk_darwin(v12);
  sub_1000038E4();
  v189 = v14;
  sub_1000038CC();
  v180 = type metadata accessor for WeatherDataModel();
  sub_1000037C4();
  v179 = v15;
  __chkstk_darwin(v16);
  sub_1000038E4();
  v178 = v17;
  v18 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  v21 = &v168 - v20;
  v22 = sub_10022C350(&qword_100CABD00, &qword_100A3ABA0);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  v181 = &v168 - v24;
  sub_1000038CC();
  v182 = type metadata accessor for HistoricalFacts();
  sub_1000037C4();
  v176 = v25;
  __chkstk_darwin(v26);
  sub_1000038E4();
  v175 = v27;
  v28 = sub_1000038CC();
  v29 = type metadata accessor for AppConfigurationState(v28);
  v30 = sub_100003810(v29);
  __chkstk_darwin(v30);
  v32 = &v168 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for Locale();
  sub_1000037C4();
  v184 = v33;
  __chkstk_darwin(v34);
  sub_1000038E4();
  v183 = v35;
  v36 = sub_1000038CC();
  v185 = type metadata accessor for MonthlyAveragesChartInput(v36);
  sub_1000037E8();
  __chkstk_darwin(v37);
  sub_1000038E4();
  v197 = v38;
  v39 = sub_1000038CC();
  v40 = type metadata accessor for TimeState(v39);
  v41 = sub_100003810(v40);
  __chkstk_darwin(v41);
  sub_1000038E4();
  v198 = v42;
  v43 = sub_1000038CC();
  v44 = type metadata accessor for PrecipitationAveragesHeroChartInput(v43);
  sub_1000037E8();
  __chkstk_darwin(v45);
  sub_1000038E4();
  v196 = v46;
  v47 = sub_1000038CC();
  v48 = type metadata accessor for NewsDataModel(v47);
  v49 = sub_100003810(v48);
  __chkstk_darwin(v49);
  sub_1000038E4();
  v195 = v50;
  v51 = sub_1000038CC();
  v52 = type metadata accessor for WeatherData(v51);
  sub_1000037E8();
  __chkstk_darwin(v53);
  sub_1000038E4();
  v193 = v54;
  v55 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  v56 = sub_100003810(v55);
  __chkstk_darwin(v56);
  v58 = &v168 - v57;
  v59 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v60);
  v62 = &v168 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v65 = &v168 - v64;
  v199 = a1;
  v66 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v203 = a3;
  v67 = Location.id.getter();
  sub_1000864C0(v67, v68, v66);

  if (sub_100024D10(v58, 1, v59) == 1)
  {
    sub_1000180EC(v58, &qword_100CA37B0, &unk_100A2D740);
    if (qword_100CA2728 != -1)
    {
      sub_100022914(&qword_100CA2728);
    }

    v69 = type metadata accessor for Logger();
    sub_10000703C(v69, qword_100D90BD0);
    v71 = v200;
    v70 = v201;
    v72 = v192;
    (*(v200 + 16))(v192, v203, v201);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v204 = v76;
      *v75 = 141558275;
      *(v75 + 4) = 1752392040;
      *(v75 + 12) = 2081;
      sub_1002F33A8();
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v78;
      (*(v71 + 8))(v72, v70);
      v80 = sub_100078694(v77, v79, &v204);

      *(v75 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v73, v74, "Failed to create averages detail input due to missing weather data; location=%{private,mask.hash}s", v75, 0x16u);
      sub_100006F14(v76);
      sub_100003884(v76);
      sub_100003884(v75);
    }

    else
    {

      (*(v71 + 8))(v72, v70);
    }

LABEL_19:
    v133 = type metadata accessor for PrecipitationAveragesDetailInput(0);
    return sub_10001B350(v202, 1, 1, v133);
  }

  sub_100106FE4(v58, v65);
  sub_1001AF660(v65, v62);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10001E894();
    sub_100105F38(v62, v117);
    if (qword_100CA2728 != -1)
    {
      sub_100022914(&qword_100CA2728);
    }

    v118 = type metadata accessor for Logger();
    sub_10000703C(v118, qword_100D90BD0);
    v120 = v200;
    v119 = v201;
    v121 = v187;
    (*(v200 + 16))(v187, v203, v201);
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = v65;
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v204 = v126;
      *v125 = 141558275;
      *(v125 + 4) = 1752392040;
      *(v125 + 12) = 2081;
      sub_1002F33A8();
      v127 = dispatch thunk of CustomStringConvertible.description.getter();
      v129 = v128;
      (*(v120 + 8))(v121, v119);
      v130 = sub_100078694(v127, v129, &v204);

      *(v125 + 14) = v130;
      _os_log_impl(&_mh_execute_header, v122, v123, "Failed to create averages detail input due to missing weather data; location=%{private,mask.hash}s", v125, 0x16u);
      sub_100006F14(v126);
      sub_100003884(v126);
      sub_100003884(v125);

      sub_10001E894();
      v132 = v124;
    }

    else
    {

      (*(v120 + 8))(v121, v119);
      sub_10001E894();
      v132 = v65;
    }

    sub_100105F38(v132, v131);
    goto LABEL_19;
  }

  v173 = v21;
  v174 = v65;
  v81 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
  v82 = *(v81 + 48);
  v83 = *(v81 + 64);
  sub_100106FE4(v62, v193);
  sub_100106FE4(&v62[v83], v195);
  sub_100105F38(&v62[v82], type metadata accessor for PreprocessedWeatherData);
  v192 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_time;
  sub_1000081E4();
  v171 = v84;
  v85 = v198;
  v87 = v199;
  sub_1001AF660(v199 + v86, v198);
  v88 = v52;
  v89 = type metadata accessor for Date();
  sub_1000037E8();
  v170 = *(v90 + 32);
  v172 = v32;
  v187 = (v90 + 32);
  v91 = v196;
  v170(v196, v85, v89);
  v92 = v44[5];
  type metadata accessor for WeatherStatisticsModel();
  sub_1000037E8();
  (*(v93 + 16))(v91 + v92, v194);
  v169 = v88;
  WeatherDataModel.dailyForecast.getter();
  Location.timeZone.getter();
  v94 = v87 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v95 = type metadata accessor for EnvironmentState(0);
  v96 = v184;
  v97 = *(v184 + 16);
  v98 = v186;
  v97(v91 + v44[8], v94 + *(v95 + 32), v186);
  sub_1002ED164(v188, v91 + v44[9]);
  v99 = v183;
  v97(v183, v94 + *(v95 + 32), v98);
  v100 = v197;
  Locale.calendar.getter();
  (*(v96 + 8))(v99, v98);
  v102 = v198;
  v101 = v199;
  sub_1001AF660(&v192[v199], v198);
  v103 = v185;
  v104 = v100 + *(v185 + 20);
  v188 = v89;
  v105 = v89;
  v106 = v170;
  v170(v104, v102, v105);
  v107 = v101 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration;
  v108 = v172;
  sub_1001AF660(v107, v172);
  AppConfiguration.temperatureScale.getter();
  type metadata accessor for AppConfiguration();
  sub_1000037E8();
  (*(v109 + 8))(v108);
  WeatherStatisticsModel.monthlyTemperatureStatistics.getter();
  WeatherStatisticsModel.monthlyPrecipitationStatistics.getter();
  v184 = v95;
  v110 = *(v95 + 32);
  v111 = v100 + *(v103 + 36);
  v194 = v94;
  v97(v111, v94 + v110, v98);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA24D8 != -1)
  {
    swift_once();
  }

  v112 = SettingReader.isEnabled(_:with:)();

  v113 = v200;
  v114 = v173;
  if (v112)
  {
    sub_1001A0D3C();
    v115 = v169;
    if (sub_100024D10(v114, 1, v169) == 1)
    {
      sub_1000180EC(v114, &qword_100CA3898, &qword_100A314D0);
      v116 = v181;
      sub_10001B350(v181, 1, 1, v182);
    }

    else
    {
      v135 = v179;
      v136 = v114 + *(v115 + 24);
      v137 = v178;
      v138 = v180;
      (*(v179 + 16))(v178, v136, v180);
      sub_100014318();
      sub_100105F38(v114, v139);
      v116 = v181;
      WeatherDataModel.historicalFacts.getter();
      (*(v135 + 8))(v137, v138);
      v140 = v182;
      if (sub_100024D10(v116, 1, v182) != 1)
      {
        v166 = v176;
        v167 = v175;
        (*(v176 + 32))(v175, v116, v140);
        sub_1000161C0((v177 + 80), *(v177 + 104));
        v141 = sub_1006283E8(v167);
        (*(v166 + 8))(v167, v140);
        goto LABEL_23;
      }
    }

    sub_1000180EC(v116, &qword_100CABD00, &qword_100A3ABA0);
  }

  v141 = 0;
LABEL_23:
  v142 = v196;
  v143 = v202;
  sub_1001AF660(v196, v202);
  v144 = type metadata accessor for PrecipitationAveragesDetailInput(0);
  v145 = v197;
  sub_1001AF660(v197, v143 + v144[5]);
  v146 = v195;
  sub_1001AF660(v195, v143 + v144[7]);
  v147 = v189;
  v148 = v203;
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  (*(v190 + 8))(v147, v191);
  sub_100105F38(v145, type metadata accessor for MonthlyAveragesChartInput);
  sub_100105F38(v142, type metadata accessor for PrecipitationAveragesHeroChartInput);
  sub_100105F38(v146, type metadata accessor for NewsDataModel);
  sub_100014318();
  sub_100105F38(v193, v149);
  sub_10001E894();
  sub_100105F38(v174, v150);
  sub_1000081E4();
  v151 = v198;
  sub_1001AF660(&v192[v199], v198);
  v106(v143 + v144[9], v151, v188);
  (*(v113 + 16))(v143 + v144[10], v148, v201);
  v152 = v194 + *(v184 + 72);
  v153 = *v152;
  v154 = *(v152 + 8);
  v155 = *(v152 + 16);
  v156 = *(v152 + 24);
  v158 = *(v152 + 40);
  v203 = *(v152 + 32);
  v157 = v203;
  *(v143 + v144[6]) = v141;
  v159 = (v143 + v144[11]);
  *v159 = v153;
  v159[1] = v154;
  v159[2] = v155;
  v159[3] = v156;
  v159[4] = v157;
  v159[5] = v158;
  sub_10001B350(v143, 0, 1, v144);
  v160 = v158;
  v161 = v153;
  v162 = v154;
  v163 = v155;
  v164 = v156;
  v165 = v203;

  return v165;
}

uint64_t sub_100344244(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && a1[48])
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 4;
      v2 = v3 - 4;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100344280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1003442FC(uint64_t a1)
{
  v232 = *v1;
  v3 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  v234 = &v219 - v5;
  sub_1000038CC();
  v6 = type metadata accessor for CurrentWeather();
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000037D8();
  v233 = v9 - v8;
  v10 = sub_10022C350(&qword_100CABD10, &qword_100A3ABB0);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  v225 = &v219 - v12;
  v13 = sub_1000038CC();
  HourPrecipitationComponentParameters = type metadata accessor for NextHourPrecipitationComponentParameters(v13);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_1000037D8();
  v245 = v17 - v16;
  sub_1000038CC();
  type metadata accessor for WeatherAlert.Prominence();
  sub_1000037C4();
  v241 = v19;
  v242 = v18;
  __chkstk_darwin(v18);
  sub_1000037D8();
  v240 = v21 - v20;
  v22 = sub_10022C350(&qword_100CAE820, &unk_100A3E370);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  sub_100003848();
  v226 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v229 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v228 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_10000E70C();
  v239 = v30;
  v31 = sub_1000038CC();
  v249 = type metadata accessor for LocationViewComponent(v31);
  sub_1000037C4();
  v231 = v32;
  __chkstk_darwin(v33);
  sub_100003848();
  v222 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v224 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  v39 = &v219 - v38;
  __chkstk_darwin(v40);
  sub_100003878();
  v223 = v41;
  sub_10000386C();
  __chkstk_darwin(v42);
  sub_10000E70C();
  v221 = v43;
  v44 = sub_1000038CC();
  v250 = type metadata accessor for PreprocessedWeatherData(v44);
  sub_1000037E8();
  __chkstk_darwin(v45);
  sub_1000037D8();
  v48 = v47 - v46;
  v49 = type metadata accessor for WeatherData(0);
  v50 = v49 - 8;
  __chkstk_darwin(v49);
  sub_1000037D8();
  v53 = v52 - v51;
  type metadata accessor for Location();
  sub_1000037C4();
  v55 = v54;
  __chkstk_darwin(v56);
  sub_1000037D8();
  v59 = v58 - v57;
  v236 = v55;
  v60 = *(v55 + 16);
  v246 = v61;
  v237 = v60;
  v238 = v55 + 16;
  (v60)(v59, a1);
  v62 = type metadata accessor for LocationViewConfigurationInputs(0);
  sub_100014330();
  sub_100111344(a1 + v63, v53, v64);
  sub_10000E92C();
  v256 = v48;
  sub_100111344(a1 + v65, v48, v66);
  v67 = v62[9];
  LODWORD(v247) = *(a1 + v62[8]);
  v244 = *(a1 + v67);
  v68 = v62[10];
  v69 = v62[11];
  v70 = v53;
  v71 = v249;
  LODWORD(v243) = *(a1 + v68);
  v230 = a1;
  v227 = *(a1 + v69);
  type metadata accessor for LocationViewConfigurationBuilder();
  inited = swift_initStackObject();
  *(inited + 16) = _swiftEmptyArrayStorage;
  v235 = inited + 16;
  v254 = inited;
  *(inited + 24) = &_swiftEmptySetSingleton;
  v251 = *(v50 + 32);
  v73 = WeatherDataModel.weatherAlerts.getter();
  v255 = v70;
  v252 = v59;
  v248 = v39;
  if (v73)
  {
    v220 = HourPrecipitationComponentParameters;
    Array<A>.filteredEvents.getter();

    sub_100020188();
    v75 = v240;
    v74 = v241;
    v76 = v242;
    (*(v241 + 104))(v240, enum case for WeatherAlert.Prominence.high(_:), v242);
    v77 = v239;
    sub_1008BB370(v239);

    (*(v74 + 8))(v75, v76);
    sub_1000038B4(v77, 1, v249);
    if (v78)
    {
      sub_1000180EC(v239, &qword_100CAE820, &unk_100A3E370);
    }

    else
    {
      sub_10001E8AC();
      v79 = v221;
      sub_1001A0FF8(v239, v221, v80);
      sub_1001AAF0C(v79);
      sub_10001BE50();
      sub_1001AEE5C(v79, v81);
    }

    v39 = v248;
    v71 = v249;
    v70 = v255;
    v59 = v252;
    HourPrecipitationComponentParameters = v220;
  }

  v82 = v245;
  v237(v245, v59, v246);
  sub_100014330();
  sub_100111344(v70, v82 + v83, v84);
  *(v82 + *(HourPrecipitationComponentParameters + 24)) = _swiftEmptyArrayStorage;
  *(v82 + *(HourPrecipitationComponentParameters + 28)) = v243;
  sub_10002FE28();
  v85 = v228;
  sub_1008BA700(v82, v228);
  sub_1000038B4(v85, 1, v71);
  v86 = v71;
  v87 = v229;
  if (v78)
  {
    sub_1000180EC(v85, &qword_100CAE820, &unk_100A3E370);
    v92 = v254;
    v88 = v227;
  }

  else
  {
    sub_10001E8AC();
    v89 = v85;
    v90 = v223;
    sub_1001A0FF8(v89, v223, v91);
    v92 = v254;
    sub_1001AAF0C(v90);
    v88 = v227;
    if (v227 & 1) != 0 || (v247)
    {
      sub_10001BE50();
      v94 = v90;
    }

    else
    {
      v237(v39, v252, v246);
      sub_100011498();
      swift_storeEnumTagMultiPayload();
      sub_100041920();
      sub_1001AEE5C(v39, type metadata accessor for LocationViewComponent);
      v94 = v90;
      v93 = type metadata accessor for LocationViewComponent;
    }

    sub_1001AEE5C(v94, v93);
  }

  v95 = sub_10051A880();
  v96 = v95;
  v97 = v88 ^ 1 | v247;
  if ((v97 & 1) == 0 && !v95)
  {
    sub_100011498();
    swift_storeEnumTagMultiPayload();
    sub_100041920();
    sub_10001BE50();
    sub_1001AEE5C(v39, v98);
  }

  sub_1000161C0((v253 + 16), *(v253 + 40));
  sub_1008BA000(v70, _swiftEmptyArrayStorage, v87);
  sub_1000038B4(v87, 1, v86);
  if (v78)
  {
    sub_1000180EC(v87, &qword_100CAE820, &unk_100A3E370);
  }

  else
  {
    sub_10001E8AC();
    v99 = v87;
    v100 = v224;
    sub_1001A0FF8(v99, v224, v101);
    sub_1001AAF0C(v100);
    sub_10001BE50();
    sub_1001AEE5C(v100, v102);
  }

  if (!(v97 & 1 | !v96))
  {
    sub_100011498();
    swift_storeEnumTagMultiPayload();
    sub_100041920();
    sub_10001BE50();
    sub_1001AEE5C(v39, v103);
  }

  v104 = v256;
  sub_1003456E0(v256, 1, v243, v39);
  sub_100041920();
  sub_1001AEE5C(v39, type metadata accessor for LocationViewComponent);
  WeatherDataModel.currentWeather.getter();
  v105 = *(v104 + v250[5]);
  *&v39[*(type metadata accessor for DailyForecastComponent(0) + 20)] = v105;
  sub_100011498();
  swift_storeEnumTagMultiPayload();

  sub_100041920();
  sub_1001AEE5C(v39, type metadata accessor for LocationViewComponent);
  if (!v244)
  {
    *v39 = 0;
    sub_100011498();
    swift_storeEnumTagMultiPayload();
    sub_100041920();
    sub_10001BE50();
    sub_1001AEE5C(v39, v106);
  }

  if ((v247 & 1) == 0)
  {
    v107 = enum case for WeatherMapOverlayKind.airQuality(_:);
    type metadata accessor for WeatherMapOverlayKind();
    sub_100003A9C();
    (*(v108 + 104))(v39, v107);
    type metadata accessor for MapComponent(0);
    sub_100014330();
    sub_100111344(v70, &v39[v109], v110);
    sub_100011498();
    swift_storeEnumTagMultiPayload();
    sub_100041920();
    sub_10001BE50();
    sub_1001AEE5C(v39, v111);
  }

  if (WeatherDataModel.weatherAlerts.getter())
  {
    v112 = v86;
    sub_1000161C0((v253 + 16), *(v253 + 40));
    v114 = v240;
    v113 = v241;
    v115 = v242;
    (*(v241 + 104))(v240, enum case for WeatherAlert.Prominence.low(_:), v242);
    v116 = v226;
    sub_1008BB370(v226);

    (*(v113 + 8))(v114, v115);
    sub_1000038B4(v116, 1, v112);
    if (v78)
    {
      sub_1000180EC(v116, &qword_100CAE820, &unk_100A3E370);
      v92 = v254;
    }

    else
    {
      sub_10001E8AC();
      v117 = v116;
      v118 = v222;
      sub_1001A0FF8(v117, v222, v119);
      v92 = v254;
      sub_1001AAF0C(v118);
      sub_10001BE50();
      sub_1001AEE5C(v118, v120);
    }
  }

  if (qword_100CA29D0 != -1)
  {
    swift_once();
  }

  sub_100346F4C();
  Configurable.setting<A>(_:)();
  if (v259[0] == 1)
  {
    goto LABEL_33;
  }

  v167 = v225;
  WeatherDataModel.historicalComparisons.getter();
  v168 = type metadata accessor for HistoricalComparisons();
  sub_1000038B4(v167, 1, v168);
  if (v78)
  {
    sub_1000180EC(v167, &qword_100CABD10, &qword_100A3ABB0);
  }

  else
  {
    v169 = HistoricalComparisons.hasDeviationsFromTrend.getter();
    (*(*(v168 - 8) + 8))(v167, v168);
    if (v169)
    {
LABEL_33:
      v121 = sub_10022C350(&qword_100CAE830, &unk_100A9F120);
      v122 = *(v231 + 72);
      v242 = *(v231 + 80);
      *&v243 = v121;
      v240 = ((v242 + 32) & ~v242) + 2 * v122;
      v241 = v122;
      v123 = v122;
      v124 = (v242 + 32) & ~v242;
      v253 = v124;
      v125 = swift_allocObject();
      v247 = xmmword_100A2D320;
      *(v125 + 16) = xmmword_100A2D320;
      WeatherDataModel.historicalComparisons.getter();
      swift_storeEnumTagMultiPayload();
      v126 = v250;
      v127 = sub_10000C9D4(v250[6]);
      v129 = v128;
      sub_100111344(v127, v125 + v124 + v123, v130);
      swift_storeEnumTagMultiPayload();
      sub_1001AB364(v125);
      swift_setDeallocating();
      sub_1001AEBE4();
      v131 = v248;
      WeatherDataModel.currentWeather.getter();
      v132 = v126[13];
      memcpy(v259, (v129 + v132), sizeof(v259));
      v133 = type metadata accessor for WindComponent(0);
      memcpy(&v131[*(v133 + 20)], (v129 + v132), 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_1001A86C8(v259, v258);
      sub_100041920();
      sub_10001BE50();
      v239 = v134;
      sub_1001AEE5C(v131, v135);
      v136 = swift_allocObject();
      sub_1000213C0(v136);
      sub_10003B964();
      v137 = v126[10];
      type metadata accessor for UVIndexComponent(0);
      sub_10002C60C();
      sub_100111344(v129 + v137, v92 + v138, v139);
      WeatherDataModel.dailyForecast.getter();
      WeatherDataModel.hourlyForecast.getter();
      swift_storeEnumTagMultiPayload();
      WeatherDataModel.currentWeather.getter();
      WeatherDataModel.dailyForecast.getter();
      v140 = v241;
      SunriseSunsetModel.init(currentWeather:dailyForecast:)();
      swift_storeEnumTagMultiPayload();
      sub_1001AB364(v136);
      swift_setDeallocating();
      sub_1001AEBE4();
      v141 = swift_allocObject();
      sub_1000213C0(v141);
      v144 = (v142 + v143);
      v145 = v250;
      v146 = v250[9];
      v147 = v256;
      memcpy(v258, (v256 + v146), 0x80uLL);
      memcpy(v144, (v256 + v146), 0x80uLL);
      swift_storeEnumTagMultiPayload();
      v148 = &v144[v140];
      sub_1001AEF0C(v258, v257);
      WeatherDataModel.currentWeather.getter();
      v149 = (v147 + v145[11]);
      v151 = *v149;
      v150 = v149[1];
      v152 = v149[2];
      v153 = v149[3];
      v155 = v149[4];
      v154 = v149[5];
      v156 = &v148[*(type metadata accessor for VisibilityComponent(0) + 20)];
      *v156 = v151;
      *(v156 + 1) = v150;
      *(v156 + 2) = v152;
      *(v156 + 3) = v153;
      *(v156 + 4) = v155;
      *(v156 + 5) = v154;
      v157 = v256;
      v158 = v254;
      swift_storeEnumTagMultiPayload();

      v159 = v255;

      sub_1001AB364(v141);
      swift_setDeallocating();
      sub_1001AEBE4();
      sub_100014330();
      v160 = v248;
      sub_100111344(v159, v248, v161);
      swift_storeEnumTagMultiPayload();
      sub_1001AAF0C(v160);
      sub_1001AEE5C(v160, v239);
      v162 = swift_allocObject();
      sub_1000213C0(v162);
      v165 = v163 + v164;
      WeatherDataModel.currentWeather.getter();
      swift_storeEnumTagMultiPayload();
      v166 = v241;
      goto LABEL_39;
    }
  }

  v170 = sub_10022C350(&qword_100CAE830, &unk_100A9F120);
  v171 = *(v231 + 72);
  v240 = *(v231 + 80);
  v241 = v170;
  v172 = v171;
  v242 = v171;
  v253 = ((v240 + 32) & ~v240) + 2 * v171;
  v173 = (v240 + 32) & ~v240;
  *&v247 = v173;
  v174 = swift_allocObject();
  v243 = xmmword_100A2D320;
  *(v174 + 16) = xmmword_100A2D320;
  v175 = v174 + v173;
  v176 = v250;
  v177 = sub_10000C9D4(v250[6]);
  v179 = v178;
  sub_100111344(v177, v175, v180);
  swift_storeEnumTagMultiPayload();
  v181 = v175 + v172;
  WeatherDataModel.currentWeather.getter();
  v182 = v176[10];
  type metadata accessor for UVIndexComponent(0);
  sub_10002C60C();
  sub_100111344(v179 + v182, v181 + v183, v184);
  WeatherDataModel.dailyForecast.getter();
  WeatherDataModel.hourlyForecast.getter();
  swift_storeEnumTagMultiPayload();
  sub_1001AB364(v174);
  swift_setDeallocating();
  sub_1001AEBE4();
  v185 = v248;
  WeatherDataModel.currentWeather.getter();
  v186 = v176[13];
  memcpy(v259, (v179 + v186), sizeof(v259));
  v187 = type metadata accessor for WindComponent(0);
  memcpy(&v185[*(v187 + 20)], (v179 + v186), 0xE8uLL);
  swift_storeEnumTagMultiPayload();
  sub_1001A86C8(v259, v258);
  sub_1001AAF0C(v185);
  sub_10001BE50();
  v239 = v188;
  sub_1001AEE5C(v185, v189);
  v190 = swift_allocObject();
  sub_10003BD58(v190);
  v193 = v191 + v192;
  WeatherDataModel.currentWeather.getter();
  WeatherDataModel.dailyForecast.getter();
  SunriseSunsetModel.init(currentWeather:dailyForecast:)();
  swift_storeEnumTagMultiPayload();
  v194 = v176[9];
  memcpy(v258, (v256 + v194), 0x80uLL);
  memcpy((v193 + v242), (v256 + v194), 0x80uLL);
  swift_storeEnumTagMultiPayload();
  sub_1001AEF0C(v258, v257);
  sub_1001AB364(v190);
  swift_setDeallocating();
  sub_1001AEBE4();
  v195 = swift_allocObject();
  sub_10003BD58(v195);
  sub_10003B964();
  v196 = (v256 + v176[11]);
  v198 = *v196;
  v197 = v196[1];
  v199 = v196[2];
  v200 = v196[3];
  v202 = v196[4];
  v201 = v196[5];
  v203 = (v193 + *(type metadata accessor for VisibilityComponent(0) + 20));
  *v203 = v198;
  v203[1] = v197;
  v157 = v256;
  v203[2] = v199;
  v203[3] = v200;
  v203[4] = v202;
  v203[5] = v201;
  swift_storeEnumTagMultiPayload();

  v159 = v255;

  WeatherDataModel.currentWeather.getter();
  v158 = v254;
  swift_storeEnumTagMultiPayload();
  sub_1001AB364(v195);
  swift_setDeallocating();
  sub_1001AEBE4();
  sub_100014330();
  v204 = v248;
  sub_100111344(v159, v248, v205);
  swift_storeEnumTagMultiPayload();
  sub_1001AAF0C(v204);
  sub_1001AEE5C(v204, v239);
  v162 = swift_allocObject();
  sub_10003BD58(v162);
  v165 = v206 + v207;
  WeatherDataModel.historicalComparisons.getter();
  swift_storeEnumTagMultiPayload();
  v166 = v242;
LABEL_39:
  v208 = v165 + v166;
  WeatherDataModel.currentWeather.getter();
  v209 = v250[12];
  v210 = type metadata accessor for PressureComponent(0);
  sub_100111344(v157 + v209, v208 + *(v210 + 20), type metadata accessor for PressureComponentPreprocessedDataModel);
  swift_storeEnumTagMultiPayload();
  sub_1001AB364(v162);
  swift_setDeallocating();
  sub_1001AEBE4();
  v211 = v245;
  v212 = v252;
  if (v244 == 1)
  {
    v213 = v248;
    *v248 = 1;
    swift_storeEnumTagMultiPayload();
    sub_100041920();
    sub_10001BE50();
    sub_1001AEE5C(v213, v214);
  }

  sub_1000081FC();
  sub_1001AEE5C(v211, v215);
  sub_10000FCCC();
  sub_1001AEE5C(v157, v216);
  sub_1001AEE5C(v159, type metadata accessor for WeatherData);
  (*(v236 + 8))(v212, v246);
  swift_beginAccess();
  v217 = *(v158 + 16);
  swift_setDeallocating();

  sub_1001AF5DC();
  swift_deallocClassInstance();
  return v217;
}

uint64_t sub_1003456E0@<X0>(uint64_t a1@<X3>, char a2@<W4>, char a3@<W6>, uint64_t a4@<X8>)
{
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  v8 = *(type metadata accessor for PreprocessedWeatherData(0) + 28);
  v9 = type metadata accessor for HourlyForecastComponent(0);
  sub_100111344(a1 + v8, a4 + v9[5], type metadata accessor for HourlyForecastComponentPreprocessedDataModel);
  WeatherDataModel.hourlyForecast.getter();
  WeatherDataModel.dailyForecast.getter();
  WeatherDataModel.weatherChanges.getter();
  *(a4 + v9[9]) = a2;
  *(a4 + v9[10]) = a3;
  type metadata accessor for LocationViewComponent(0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1003457E0(uint64_t a1)
{
  HourPrecipitationComponentParameters = type metadata accessor for NextHourPrecipitationComponentParameters(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_100003848();
  v249 = v3;
  sub_10000386C();
  __chkstk_darwin(v4);
  sub_10000E70C();
  v251 = v5;
  sub_1000038CC();
  type metadata accessor for WeatherAlert.Prominence();
  sub_1000037C4();
  v258 = v7;
  v259 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v257 = v9 - v8;
  v10 = sub_10022C350(&qword_100CAE820, &unk_100A3E370);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v12);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v13);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_100003878();
  v255 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v17);
  v19 = &v236 - v18;
  __chkstk_darwin(v20);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_10000E70C();
  v264 = v22;
  v23 = sub_1000038CC();
  v265 = type metadata accessor for LocationViewComponent(v23);
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v26);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v27);
  sub_100003878();
  v250 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  v31 = &v236 - v30;
  __chkstk_darwin(v32);
  v34 = &v236 - v33;
  __chkstk_darwin(v35);
  sub_100003878();
  v248 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_100003878();
  v256 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  sub_100003878();
  v262 = v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v42);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v43);
  sub_10000E70C();
  v252 = v44;
  v45 = sub_1000038CC();
  v46 = type metadata accessor for PreprocessedWeatherData(v45);
  v47 = sub_100003810(v46);
  __chkstk_darwin(v47);
  sub_1000037D8();
  v50 = v49 - v48;
  v51 = type metadata accessor for WeatherData(0);
  v52 = v51 - 8;
  __chkstk_darwin(v51);
  sub_1000037D8();
  v55 = (v54 - v53);
  type metadata accessor for Location();
  sub_1000037C4();
  v57 = v56;
  __chkstk_darwin(v58);
  sub_1000037D8();
  v61 = v60 - v59;
  v260 = v57;
  v62 = *(v57 + 16);
  v263 = v63;
  v253 = v62;
  v62(v60 - v59, a1);
  v64 = type metadata accessor for LocationViewConfigurationInputs(0);
  sub_100014330();
  sub_100111344(a1 + v65, v55, v66);
  sub_10000E92C();
  v267 = v50;
  sub_100111344(a1 + v67, v50, v68);
  v69 = *(v64 + 40);
  v261 = a1;
  v266 = *(a1 + v69);
  v70 = *(v52 + 32);
  if (WeatherDataModel.weatherAlerts.getter())
  {
    v239 = v70;
    v238 = v19;
    v236 = v31;
    v237 = v34;
    sub_100020188();
    v72 = v257;
    v71 = v258;
    v73 = v259;
    (*(v258 + 104))(v257, enum case for WeatherAlert.Prominence.high(_:), v259);
    v74 = v264;
    sub_1008BB370(v264);

    (*(v71 + 8))(v72, v73);
    v75 = v265;
    sub_1000038B4(v74, 1, v265);
    if (!v76)
    {
      sub_10001E8AC();
      sub_1001A0FF8(v264, v252, v129);
      v130 = v251;
      sub_100071C60();
      v131();
      v132 = HourPrecipitationComponentParameters;
      sub_100014330();
      v133 = sub_1000183A4();
      sub_100111344(v133, v134, v135);
      *(v130 + *(v132 + 24)) = _swiftEmptyArrayStorage;
      *(v130 + *(v132 + 28)) = v266;
      sub_10002FE28();
      v136 = v244;
      sub_1008BA700(v130, v244);
      v137 = sub_100024D10(v136, 1, v75);
      if (v137 == 1)
      {
        sub_1000180EC(v136, &qword_100CAE820, &unk_100A3E370);
        sub_10006A720();
        sub_100020680(_swiftEmptyArrayStorage, &v268);
        v138 = sub_10000C834();
        sub_1000038B4(v138, v139, v75);
        if (v76)
        {
          sub_1000180EC(v61, &qword_100CAE820, &unk_100A3E370);
          sub_100028264();
          sub_1000081FC();
          sub_1001AEE5C(v251, v140);
          sub_10000FCCC();
          sub_1001AEE5C(v136, v141);
          v142 = sub_100013680();
          v143(v142);
          type metadata accessor for WeatherMapOverlayKind();
          sub_100003A9C();
          v144 = sub_10003C35C();
          v145(v144);
          type metadata accessor for MapComponent(0);
          sub_10000583C();
          v146 = sub_1000183A4();
          sub_1001A0FF8(v146, v147, v148);
          sub_100031520();
          sub_10001E8AC();
          sub_1001A0FF8(v252, v256, v149);
          v150 = type metadata accessor for LocationNoAqiSevereConfiguration._Storage(0);
          sub_100003B6C(v150);
          sub_10000C90C();
          v98 = sub_1002C9E08(v151);
          v102 = 0x9000000000000000;
        }

        else
        {
          sub_100019454();
          v209 = v61;
          v210 = v236;
          sub_1001A0FF8(v209, v236, v211);
          sub_100028264();
          sub_1000081FC();
          sub_1001AEE5C(v251, v212);
          sub_10000FCCC();
          sub_1001AEE5C(v136, v213);
          v214 = sub_100013680();
          v215(v214);
          type metadata accessor for WeatherMapOverlayKind();
          sub_100003A9C();
          v216 = sub_100037A18();
          v217(v216);
          type metadata accessor for MapComponent(0);
          sub_10000583C();
          sub_1000D3E48(v218, v219);
          sub_10002409C();
          sub_1000250CC(v210);
          sub_10003A160(v252);
          v220 = type metadata accessor for LocationElevatedAqiSevereConfiguration._Storage(0);
          sub_100003B6C(v220);
          v221 = sub_10002462C();
          v98 = sub_1002C4940(v221);
          v102 = 0x2000000000000000;
        }
      }

      else
      {
        sub_10001E8AC();
        sub_1001A0FF8(v136, v245, v169);
        sub_10006A720();
        sub_100020680(_swiftEmptyArrayStorage, &v267);
        v170 = sub_10000C834();
        sub_1000038B4(v170, v171, v75);
        if (v76)
        {
          sub_1000180EC(v61, &qword_100CAE820, &unk_100A3E370);
          sub_100028264();
          sub_1000081FC();
          sub_1001AEE5C(v251, v172);
          sub_10000FCCC();
          sub_1001AEE5C(v136, v173);
          v174 = sub_100013680();
          v175(v174);
          type metadata accessor for WeatherMapOverlayKind();
          sub_100003A9C();
          v176 = sub_10003C35C();
          v177(v176);
          type metadata accessor for MapComponent(0);
          sub_10000583C();
          v178 = sub_1000183A4();
          sub_1001A0FF8(v178, v179, v180);
          sub_100031520();
          sub_1001A0FF8(v252, v256, type metadata accessor for LocationViewComponent);
          sub_1001A0FF8(v245, v248, type metadata accessor for LocationViewComponent);
          v181 = type metadata accessor for LocationNoAqiSevereNhpConfiguration._Storage(0);
          v98 = sub_100003B6C(v181);
          sub_10000C90C();
          sub_1002CB010(v182);
          sub_100036CB0();
          v102 = v183 & 0xFFFFFFFFFFFFLL | 0x4000000000000000;
        }

        else
        {
          sub_100019454();
          v222 = v61;
          v223 = v240;
          sub_1001A0FF8(v222, v240, v224);
          sub_100028264();
          sub_1000081FC();
          sub_1001AEE5C(v251, v225);
          sub_10000FCCC();
          sub_1001AEE5C(v136, v226);
          v227 = sub_100013680();
          v228(v227);
          type metadata accessor for WeatherMapOverlayKind();
          sub_100003A9C();
          v229 = sub_100037A18();
          v230(v229);
          type metadata accessor for MapComponent(0);
          sub_10000583C();
          sub_1000D3E48(v231, v232);
          sub_10002409C();
          sub_1000250CC(v252);
          sub_10003A160(v245);
          sub_1001A0FF8(v223, v237, v130);
          v233 = type metadata accessor for LocationSevereNhpAqiConfiguration._Storage(0);
          sub_100003B6C(v233);
          sub_10002462C();
          sub_1002CD61C();
          v98 = v234;
          v102 = 0x6000000000000000;
        }
      }

      return v102 | v98;
    }

    sub_1000180EC(v264, &qword_100CAE820, &unk_100A3E370);
    v70 = v239;
  }

  sub_10002FE28();
  v77 = v255;
  sub_1008BA000(v55, _swiftEmptyArrayStorage, v255);
  v78 = v265;
  sub_1000038B4(v77, 1, v265);
  if (!v76)
  {
    sub_10001E8AC();
    v103 = v77;
    v104 = v250;
    sub_1001A0FF8(v103, v250, v105);
    v106 = WeatherDataModel.weatherAlerts.getter();
    v107 = v263;
    v108 = v61;
    v109 = v267;
    if (v106)
    {
      sub_100020188();
      v110 = v78;
      v111 = v257;
      v112 = v258;
      v113 = v259;
      (*(v258 + 104))(v257, enum case for WeatherAlert.Prominence.low(_:), v259);
      v114 = v243;
      v264 = v55;
      sub_1008BB370(v243);

      (*(v112 + 8))(v111, v113);
      v115 = sub_10000C834();
      sub_1000038B4(v115, v116, v110);
      if (!v76)
      {
        sub_100019454();
        v184 = v242;
        sub_1001A0FF8(v114, v242, v185);
        v186 = v267;
        sub_100346890(v264, v261, v108, v267, v266, 0);
        v188 = v187;
        sub_10000FCCC();
        sub_1001AEE5C(v186, v189);
        (*(v260 + 8))(v108, v263);
        type metadata accessor for WeatherMapOverlayKind();
        sub_100003A9C();
        v190 = sub_100037A18();
        v191(v190);
        type metadata accessor for MapComponent(0);
        sub_10000583C();
        sub_1000D3E48(v192, v193);
        sub_10002409C();
        sub_1000250CC(v184);
        sub_10003A160(v250);
        v194 = type metadata accessor for LocationElevatedAqiMinorAlertConfiguration._Storage(0);
        sub_100003B6C(v194);
        v98 = sub_1002C3B90(v188);
        v102 = 0xC000000000000000;
        return v102 | v98;
      }

      sub_1000180EC(v114, &qword_100CAE820, &unk_100A3E370);
      v107 = v263;
      v55 = v264;
      v104 = v250;
      v109 = v267;
    }

    sub_100346890(v55, v261, v108, v109, v266, 0);
    sub_10000FCCC();
    sub_1001AEE5C(v109, v117);
    (*(v260 + 8))(v108, v107);
    type metadata accessor for WeatherMapOverlayKind();
    sub_100003A9C();
    v118 = sub_10003C35C();
    v119(v118);
    type metadata accessor for MapComponent(0);
    sub_10000583C();
    v120 = sub_1000183A4();
    sub_1001A0FF8(v120, v121, v122);
    sub_100031520();
    sub_10001E8AC();
    sub_1001A0FF8(v104, v256, v123);
    v124 = type metadata accessor for LocationElevatedAqiConfiguration._Storage(0);
    v98 = sub_100003B6C(v124);
    sub_10000C90C();
    sub_1002C3484(v125, v126, v127);
    sub_100036CB0();
    v102 = v128 & 0xFFFFFFFFFFFFLL | 0x8000000000000000;
    return v102 | v98;
  }

  sub_1000180EC(v77, &qword_100CAE820, &unk_100A3E370);
  v79 = v249;
  sub_100071C60();
  v80();
  v81 = HourPrecipitationComponentParameters;
  sub_100014330();
  sub_100111344(v55, v79 + v82, v83);
  *(v79 + *(v81 + 24)) = _swiftEmptyArrayStorage;
  v84 = v266;
  *(v79 + *(v81 + 28)) = v266;
  sub_10002FE28();
  v85 = v246;
  sub_1008BA700(v79, v246);
  sub_1000038B4(v85, 1, v78);
  v86 = v61;
  if (v76)
  {
    sub_1000180EC(v85, &qword_100CAE820, &unk_100A3E370);
    v87 = v267;
    sub_100346890(v55, v261, v61, v267, v84, 1);
    v89 = v88;
    sub_1000081FC();
    sub_1001AEE5C(v79, v90);
    sub_10000FCCC();
    sub_1001AEE5C(v87, v91);
    (*(v260 + 8))(v86, v70);
    type metadata accessor for WeatherMapOverlayKind();
    sub_100003A9C();
    v92 = sub_10003C35C();
    v93(v92);
    type metadata accessor for MapComponent(0);
    sub_10000583C();
    v94 = sub_1000183A4();
    sub_1001A0FF8(v94, v95, v96);
    sub_100031520();
    v97 = type metadata accessor for LocationNoAqiConfiguration._Storage(0);
    v98 = sub_100003B6C(v97);
    *(v98 + 16) = v89;
    sub_10001E8AC();
    sub_1001A0FF8(v87, v99 + v100, v101);
    v102 = 0xA000000000000000;
  }

  else
  {
    sub_10001E8AC();
    sub_1001A0FF8(v85, v247, v152);
    sub_10006A720();
    sub_100020680(_swiftEmptyArrayStorage, &v269);
    v153 = sub_10000C834();
    v155 = sub_100024D10(v153, v154, v78);
    if (v155 == 1)
    {
      sub_1000180EC(v61, &qword_100CAE820, &unk_100A3E370);
      sub_100028264();
      sub_1000081FC();
      sub_1001AEE5C(v249, v156);
      sub_10000FCCC();
      sub_1001AEE5C(v79, v157);
      v158 = sub_100013680();
      v159(v158);
      type metadata accessor for WeatherMapOverlayKind();
      sub_100003A9C();
      v160 = sub_10003C35C();
      v161(v160);
      type metadata accessor for MapComponent(0);
      sub_10000583C();
      v162 = sub_1000183A4();
      sub_1001A0FF8(v162, v163, v164);
      sub_100031520();
      sub_10001E8AC();
      sub_1001A0FF8(v247, v256, v165);
      v166 = type metadata accessor for LocationNoAqiNhpConfiguration._Storage(0);
      v98 = sub_100003B6C(v166);
      sub_10000C90C();
      sub_1002C8DFC(v167);
      sub_100036CB0();
      v102 = v168 & 0xFFFFFFFFFFFFLL | 0x9000000000000000;
    }

    else
    {
      sub_100019454();
      v195 = v61;
      v196 = v241;
      sub_1001A0FF8(v195, v241, v197);
      sub_100028264();
      sub_1000081FC();
      sub_1001AEE5C(v249, v198);
      sub_10000FCCC();
      sub_1001AEE5C(v79, v199);
      v200 = sub_100013680();
      v201(v200);
      v98 = enum case for WeatherMapOverlayKind.airQuality(_:);
      type metadata accessor for WeatherMapOverlayKind();
      sub_100003A9C();
      v202 = sub_100037A18();
      v203(v202);
      type metadata accessor for MapComponent(0);
      sub_10000583C();
      sub_1000D3E48(v204, v205);
      sub_10002409C();
      sub_1000250CC(v247);
      sub_10003A160(v196);
      v206 = type metadata accessor for LocationNhpConfiguration._Storage(0);
      sub_100003B6C(v206);
      v207 = sub_10002462C();
      sub_1002C62D4(v207);
      sub_100036CB0();
      v102 = v208 & 0xFFFFFFFFFFFFLL | 0x1000000000000000;
    }
  }

  return v102 | v98;
}

void sub_100346890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v63 = a6;
  LODWORD(v64) = a5;
  v8 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  __chkstk_darwin(v8 - 8);
  v66 = &v61 - v9;
  v10 = type metadata accessor for CurrentWeather();
  __chkstk_darwin(v10 - 8);
  v65 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for LocationViewComponent(0);
  __chkstk_darwin(v74);
  v73 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v72 = &v61 - v14;
  __chkstk_darwin(v15);
  v70 = &v61 - v16;
  __chkstk_darwin(v17);
  v79 = &v61 - v18;
  __chkstk_darwin(v19);
  v78 = &v61 - v20;
  __chkstk_darwin(v21);
  v77 = &v61 - v22;
  __chkstk_darwin(v23);
  v76 = &v61 - v24;
  __chkstk_darwin(v25);
  v75 = &v61 - v26;
  __chkstk_darwin(v27);
  v29 = &v61 - v28;
  __chkstk_darwin(v30);
  v32 = &v61 - v31;
  __chkstk_darwin(v33);
  v35 = &v61 - v34;
  __chkstk_darwin(v36);
  v71 = &v61 - v37;
  sub_1003456E0(a4, v63, v64, &v61 - v37);
  type metadata accessor for WeatherData(0);
  v38 = a1;
  WeatherDataModel.currentWeather.getter();
  v39 = type metadata accessor for PreprocessedWeatherData(0);
  v40 = *(a4 + v39[5]);
  v41 = *(type metadata accessor for DailyForecastComponent(0) + 20);
  v69 = v35;
  *&v35[v41] = v40;
  swift_storeEnumTagMultiPayload();

  v68 = v32;
  WeatherDataModel.currentWeather.getter();
  v42 = v39[10];
  v43 = type metadata accessor for UVIndexComponent(0);
  sub_100111344(a4 + v42, &v32[*(v43 + 20)], type metadata accessor for UVIndexComponentPreprocessedDataModel);
  WeatherDataModel.dailyForecast.getter();
  WeatherDataModel.hourlyForecast.getter();
  swift_storeEnumTagMultiPayload();
  WeatherDataModel.currentWeather.getter();
  WeatherDataModel.dailyForecast.getter();
  v67 = v29;
  SunriseSunsetModel.init(currentWeather:dailyForecast:)();
  swift_storeEnumTagMultiPayload();
  v44 = v75;
  WeatherDataModel.currentWeather.getter();
  v45 = v39[13];
  memcpy(v81, (a4 + v45), sizeof(v81));
  v46 = type metadata accessor for WindComponent(0);
  memcpy(&v44[*(v46 + 20)], (a4 + v45), 0xE8uLL);
  swift_storeEnumTagMultiPayload();
  v47 = v39[9];
  memcpy(__dst, (a4 + v47), 0x80uLL);
  memcpy(v76, (a4 + v47), 0x80uLL);
  swift_storeEnumTagMultiPayload();
  v48 = v39[6];
  v64 = v39;
  v62 = a4;
  sub_100111344(a4 + v48, v77, type metadata accessor for FeelsLikeComponentPreprocessedDataModel);
  swift_storeEnumTagMultiPayload();
  sub_1001A86C8(v81, v80);
  sub_1001AEF0C(__dst, v80);
  WeatherDataModel.currentWeather.getter();
  swift_storeEnumTagMultiPayload();
  v49 = v79;
  WeatherDataModel.currentWeather.getter();
  v50 = (a4 + v39[11]);
  v52 = *v50;
  v51 = v50[1];
  v53 = v50[2];
  v54 = v50[3];
  v55 = v50[4];
  v56 = v50[5];
  v57 = &v49[*(type metadata accessor for VisibilityComponent(0) + 20)];
  *v57 = v52;
  *(v57 + 1) = v51;
  *(v57 + 2) = v53;
  *(v57 + 3) = v54;
  *(v57 + 4) = v55;
  *(v57 + 5) = v56;
  swift_storeEnumTagMultiPayload();

  v58 = v70;
  WeatherDataModel.currentWeather.getter();
  v59 = v64[12];
  v60 = type metadata accessor for PressureComponent(0);
  sub_100111344(v62 + v59, &v58[*(v60 + 20)], type metadata accessor for PressureComponentPreprocessedDataModel);
  swift_storeEnumTagMultiPayload();
  WeatherDataModel.historicalComparisons.getter();
  swift_storeEnumTagMultiPayload();
  sub_100111344(v38, v73, type metadata accessor for WeatherData);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LocationCommonConfigurationComponents._Storage(0);
  swift_allocObject();
  sub_1002C0078();
}

unint64_t sub_100346F4C()
{
  result = qword_100CAE828;
  if (!qword_100CAE828)
  {
    v3 = type metadata accessor for AlternativeLocationViewConfigurationFactory();
    result = swift_getWitnessTable(byte_100A3E31C, v3, v0, v1);
    atomic_store(result, &qword_100CAE828);
  }

  return result;
}

uint64_t sub_100346FA0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_100013188(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

uint64_t sub_100346FDC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v249 = a1;
  v258 = a2;
  v245 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  sub_1000037C4();
  v248 = v2;
  __chkstk_darwin(v3);
  v255 = &v216 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v244 = &v216 - v6;
  v7 = sub_1000038CC();
  v243 = type metadata accessor for ConditionDetailMapViewModel(v7);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = (v10 - v9);
  type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v256 = v13;
  v257 = v12;
  __chkstk_darwin(v12);
  sub_1000038E4();
  v254 = v14;
  sub_10022C350(&qword_100CACDF8, &unk_100A3E410);
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v216 - v16;
  sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  sub_1000037C4();
  v240 = v19;
  v241 = v18;
  sub_100003828();
  __chkstk_darwin(v20);
  v239 = &v216 - v21;
  v238 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
  sub_1000037C4();
  v23 = v22;
  sub_100003828();
  __chkstk_darwin(v24);
  v236 = &v216 - v25;
  sub_1000038CC();
  v237 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v235 = v26;
  __chkstk_darwin(v27);
  sub_1000038E4();
  v234 = v28;
  sub_10022C350(&qword_100CAE8E8, &unk_100A49400);
  sub_100003828();
  __chkstk_darwin(v29);
  v253 = &v216 - v30;
  sub_1000038CC();
  v233 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v232 = v31;
  __chkstk_darwin(v32);
  sub_1000038E4();
  v231 = v33;
  sub_1000038CC();
  HourPrecipitationChartPlacement = type metadata accessor for NextHourPrecipitationChartPlacement();
  sub_1000037C4();
  v229 = v34;
  __chkstk_darwin(v35);
  sub_1000038E4();
  v228 = v36;
  sub_1000038CC();
  type metadata accessor for NextHourPrecipitationChartViewModel();
  sub_1000037C4();
  v246 = v38;
  v247 = v37;
  __chkstk_darwin(v37);
  sub_1000038E4();
  v252 = v39;
  sub_1000038CC();
  v40 = type metadata accessor for Date();
  sub_1000037C4();
  v42 = v41;
  __chkstk_darwin(v43);
  sub_1000037D8();
  v46 = v45 - v44;
  HourPrecipitationDetailInput = type metadata accessor for NextHourPrecipitationDetailInput(0);
  __chkstk_darwin(HourPrecipitationDetailInput - 8);
  sub_1000037D8();
  v50 = v49 - v48;
  HourPrecipitationDetail = type metadata accessor for NextHourPrecipitationDetailInput.Input(0);
  sub_1000037E8();
  __chkstk_darwin(v52);
  sub_1000038E4();
  v54 = v53;
  sub_1003484F8(v249, v50, type metadata accessor for NextHourPrecipitationDetailInput);
  if (sub_100024D10(v50, 1, HourPrecipitationDetail) == 1)
  {
    sub_100348558(v50, type metadata accessor for NextHourPrecipitationDetailInput);
    type metadata accessor for NextHourPrecipitationDetailViewModel.Model(0);
    sub_100003934();
    sub_10001B350(v55, v56, v57, v58);
    type metadata accessor for NextHourPrecipitationDetailViewModel(0);
  }

  else
  {
    v221 = v23;
    v59 = v54;
    sub_100348498(v50, v54, type metadata accessor for NextHourPrecipitationDetailInput.Input);
    v220 = v17;
    v60 = v250;
    v218 = *(v250 + 56);
    v249 = v11;
    v219 = HourPrecipitationDetail;
    v242 = *(HourPrecipitationDetail + 20);
    static WeatherClock.date.getter();
    v61 = NextHourPrecipitationStringBuilder.buildShortString(from:referenceDate:)();
    v63 = v62;
    v217 = *(v42 + 8);
    v226 = v40;
    v217(v46, v40);
    if (v63)
    {
      v64 = v61;
    }

    else
    {
      v64 = 0;
    }

    v225 = v64;
    v65 = 0xE000000000000000;
    if (v63)
    {
      v65 = v63;
    }

    v224 = v65;
    v227 = objc_opt_self();
    v66 = [v227 mainBundle];
    sub_10001946C();
    sub_100003CD0();
    v67.super.isa = v66;
    v223 = sub_100028290(v68, v69, v70, v71, v67, v72, v73, v74);
    v222 = v75;

    sub_1000161C0((v60 + 16), *(v60 + 40));
    v76 = v229;
    v77 = v228;
    v78 = HourPrecipitationChartPlacement;
    (*(v229 + 104))(v228, enum case for NextHourPrecipitationChartPlacement.detailView(_:), HourPrecipitationChartPlacement);
    static WeatherClock.date.getter();
    v251 = v59;
    dispatch thunk of NextHourPrecipitationChartViewModelFactoryType.makeViewModel(for:precipitation:placement:currentTime:minutesToConsider:)();
    v79 = v217;
    v217(v46, v226);
    (*(v76 + 8))(v77, v78);
    v80 = [v227 mainBundle];
    sub_10001946C();
    sub_100003CD0();
    v81.super.isa = v80;
    HourPrecipitationChartPlacement = sub_100028290(v82, v83, v84, v85, v81, v86, v87, v88);
    v229 = v89;

    v90 = v231;
    v91 = v251;
    Location.timeZone.getter();
    static WeatherClock.date.getter();
    v92 = v91;
    v93 = NextHourPrecipitationStringBuilder.buildLongString(from:timeZone:referenceDate:)();
    v95 = v94;
    v79(v46, v226);
    v218 = *(v232 + 8);
    v96 = v233;
    v218(v90, v233);
    if (v95)
    {
      v97 = v93;
    }

    else
    {
      v97 = 0;
    }

    v228 = v97;
    v98 = 0xE000000000000000;
    if (v95)
    {
      v98 = v95;
    }

    v226 = v98;
    v217 = *(v250 + 64);
    v232 = v92 + *(v219 + 24);
    v250 = type metadata accessor for WeatherData(0);
    v99 = v234;
    WeatherDataModel.currentWeather.getter();
    v100 = v236;
    WeatherDataModel.hourlyForecast.getter();
    v101 = v239;
    WeatherDataModel.dailyForecast.getter();
    v102 = v220;
    WeatherDataModel.weatherChanges.getter();
    Location.timeZone.getter();
    v103 = v253;
    WeatherForecastDescriptionStringBuilder.buildWeatherDescription(from:hourlyForecast:dailyForecast:weatherChanges:timeZone:)();
    v218(v90, v96);
    sub_1000180EC(v102, &qword_100CACDF8, &unk_100A3E410);
    (*(v240 + 8))(v101, v241);
    (*(v221 + 8))(v100, v238);
    (*(v235 + 8))(v99, v237);
    v104 = v254;
    sub_1003480CC(v103, v228, v226, v254);

    v105 = v227;
    v106 = [v227 mainBundle];
    sub_10001946C();
    v259._object = 0x8000000100AC1180;
    sub_100003CD0();
    v110 = NSLocalizedString(_:tableName:bundle:value:comment:)(v107, v108, v106, v109, v259);

    v111 = v243;
    v112 = *(v243 + 20);
    type metadata accessor for Location();
    sub_1000037E8();
    v114 = v249;
    (*(v113 + 16))(v249 + v112, v251);
    sub_1003484F8(v232, v114 + v111[6], type metadata accessor for WeatherData);
    sub_10000E7B0();
    sub_10001B350(v115, v116, v117, v250);
    v118 = [v105 mainBundle];
    sub_100003CD0();
    v119.super.isa = v118;
    v127 = sub_100028290(v120, v121, v122, v123, v119, v124, v125, v126);
    v129 = v128;

    v130 = v111[8];
    v131 = enum case for WeatherMapPrecipitationOverlayKind.auto(_:);
    type metadata accessor for WeatherMapPrecipitationOverlayKind();
    sub_1000037E8();
    (*(v132 + 104))(v114 + v130, v131);
    v133 = enum case for WeatherMapOverlayKind.precipitation(_:);
    type metadata accessor for WeatherMapOverlayKind();
    sub_1000037E8();
    (*(v134 + 104))(v114 + v130, v133);
    v135 = v114;
    v136 = v257;
    *v135 = v110;
    v137 = (&v135->_countAndFlagsBits + v111[7]);
    *v137 = v127;
    v137[1] = v129;
    *(&v135->_countAndFlagsBits + v111[9]) = 1;
    v138 = v244;
    v139 = v245;
    sub_100003934();
    sub_10001B350(v140, v141, v142, v136);
    (*(v256 + 16))(v138 + v139[7], v104, v136);
    v143 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    swift_storeEnumTagMultiPayload();
    sub_100003934();
    sub_10001B350(v144, v145, v146, v143);
    *v138 = 0;
    *(v138 + 8) = 0;
    *(v138 + 16) = 2;
    v147 = v229;
    *(v138 + 24) = HourPrecipitationChartPlacement;
    *(v138 + 32) = v147;
    *(v138 + v139[9]) = 0;
    *(v138 + v139[10]) = 0;
    sub_10069EC8C();
    v149 = v148;
    v150 = *(v148 + 16);
    if (v150 >= *(v148 + 24) >> 1)
    {
      sub_10069EC8C();
      v149 = v214;
    }

    *(v149 + 16) = v150 + 1;
    v250 = (*(v248 + 80) + 32) & ~*(v248 + 80);
    v248 = *(v248 + 72);
    sub_100008214();
    sub_100348498(v138, v151, v152);
    v153 = [v105 mainBundle];
    sub_10001946C();
    sub_100003CD0();
    v154.super.isa = v153;
    v244 = sub_100028290(v155, v156, v157, v158, v154, v159, v160, v161);
    v163 = v162;

    v164 = v139;
    v165 = v255;
    sub_100003934();
    sub_10001B350(v166, v167, v168, v136);
    v169 = &v165[v164[7]];
    v170 = [v105 mainBundle];
    sub_10001946C();
    sub_100003CD0();
    v171.super.isa = v170;
    v179 = sub_100028290(v172, v173, v174, v175, v171, v176, v177, v178);
    v181 = v180;

    *v169 = v179;
    v169[1] = v181;
    swift_storeEnumTagMultiPayload();
    sub_100003934();
    sub_10001B350(v182, v183, v184, v143);
    sub_10001946C();
    *v165 = v185;
    *(v165 + 1) = 0x8000000100AC1220;
    v165[16] = 0;
    *(v165 + 3) = v244;
    *(v165 + 4) = v163;
    v165[v164[9]] = 0;
    v165[v164[10]] = 0;
    v186 = *(v149 + 16);
    if (v186 >= *(v149 + 24) >> 1)
    {
      sub_10069EC8C();
      v149 = v215;
    }

    v187 = v258;
    v188 = v249;
    v189 = v254;
    v190 = v252;
    *(v149 + 16) = v186 + 1;
    sub_100008214();
    sub_100348498(v191, v192, v193);
    HourPrecipitationDetailView = type metadata accessor for NextHourPrecipitationDetailViewModel.Model(0);
    v196 = v246;
    v195 = v247;
    (*(v246 + 16))(&v187[HourPrecipitationDetailView[7]], v190, v247);
    sub_1003484F8(v188, &v187[HourPrecipitationDetailView[8]], type metadata accessor for ConditionDetailMapViewModel);
    v197 = v251;
    Location.timeZone.getter();
    sub_100348558(v188, type metadata accessor for ConditionDetailMapViewModel);
    (*(v256 + 8))(v189, v257);
    sub_1000180EC(v253, &qword_100CAE8E8, &unk_100A49400);
    (*(v196 + 8))(v190, v195);
    v198 = HourPrecipitationDetailView[10];
    v199 = sub_10022C350(&qword_100CAE8F0, &qword_100A3E420);
    sub_1000037E8();
    (*(v200 + 16))(&v187[v198], v197 + v242, v199);
    sub_100348558(v197, type metadata accessor for NextHourPrecipitationDetailInput.Input);
    sub_10000E7B0();
    sub_10001B350(v201, v202, v203, v199);
    v204 = v224;
    *v187 = v225;
    *(v187 + 1) = v204;
    v205 = v222;
    *(v187 + 2) = v223;
    *(v187 + 3) = v205;
    *(v187 + 4) = v149;
    sub_10000E7B0();
    sub_10001B350(v206, v207, v208, HourPrecipitationDetailView);
    type metadata accessor for NextHourPrecipitationDetailViewModel(0);
  }

  sub_10000E7B0();
  return sub_10001B350(v209, v210, v211, v212);
}

uint64_t sub_1003480CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10022C350(&qword_100CAE8E8, &unk_100A49400);
  __chkstk_darwin(v8 - 8);
  v10 = v28 - v9;
  v11 = type metadata accessor for WeatherDescription();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003485B0(a1, v10);
  if (sub_100024D10(v10, 1, v11) == 1)
  {
    sub_1000180EC(v10, &qword_100CAE8E8, &unk_100A49400);
    return static WeatherDescription.string(_:)();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v16 = [objc_opt_self() mainBundle];
    v28[3] = a4;
    v17 = v16;
    v29._object = 0x8000000100AC14B0;
    v18._countAndFlagsBits = 0x4025204025;
    v19._object = 0x8000000100AC1480;
    v29._countAndFlagsBits = 0xD0000000000000E4;
    v19._countAndFlagsBits = 0xD000000000000029;
    v18._object = 0xE500000000000000;
    v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v17, v18, v29);
    v28[1] = v20._object;
    v28[2] = v20._countAndFlagsBits;

    sub_10022C350(&qword_100CA5408, &unk_100A533E0);
    v21 = type metadata accessor for WeatherDescription.Argument();
    v22 = *(v21 - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100A2D320;
    v26 = (v25 + v24);
    *v26 = a2;
    *(v26 + 1) = a3;
    v27 = *(v22 + 104);
    v27(v26, enum case for WeatherDescription.Argument.string(_:), v21);
    (*(v12 + 16))(&v26[v23], v14, v11);
    v27(&v26[v23], enum case for WeatherDescription.Argument.description(_:), v21);

    WeatherDescription.init(format:_:)();
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_100348410()
{
  sub_100006F14((v0 + 16));

  return v0;
}

uint64_t sub_100348440()
{
  sub_100348410();

  return swift_deallocClassInstance();
}

uint64_t sub_100348498(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1003484F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100348558(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1003485B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAE8E8, &unk_100A49400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ForegroundEffectViewMask(uint64_t a1, int a2)
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

uint64_t sub_100348654()
{
  sub_100003B08();
  v0[12] = v1;
  v0[13] = v2;
  v0[10] = v3;
  v0[11] = v4;
  v0[14] = type metadata accessor for MainActor();
  v0[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[16] = v6;
  v0[17] = v5;

  return _swift_task_switch(sub_1003486F0, v6, v5);
}

uint64_t sub_1003486F0()
{
  v28 = v0;
  if (qword_100CA2788 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000703C(v1, qword_100D90CF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[12];
    v4 = v0[13];
    v7 = v0[10];
    v6 = v0[11];
    v8 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v8 = 136315394;
    v30.width = v7;
    v30.height = v6;
    v9 = NSStringFromCGSize(v30);
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_100078694(v10, v12, v27);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v31.width = v5;
    v31.height = v4;
    v14 = NSStringFromCGSize(v31);
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_100078694(v15, v17, v27);

    *(v8 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing resize test with minimum %s, maximum %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v19 = [objc_opt_self() sharedApplication];
  v20 = UIApplication.maybeWindow.getter();
  *(v0 + 18) = v20;

  if (v20)
  {
    v21 = static MainActor.shared.getter();
    *(v0 + 19) = v21;
    if (v21)
    {
      swift_getObjectType();
      v22 = dispatch thunk of Actor.unownedExecutor.getter();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    return _swift_task_switch(sub_1003489F0, v22, v24);
  }

  else
  {

    sub_100348DEC();
    swift_allocError();
    swift_willThrow();
    v25 = *(v0 + 1);

    return v25();
  }
}

uint64_t sub_1003489F0()
{
  v1 = *(v0 + 18);
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  *(v0 + 2) = v0;
  *(v0 + 3) = sub_100348AC0;
  v6 = swift_continuation_init();
  sub_100348C2C(v6, v1, v5, v4, v3, v2);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100348AC0()
{
  sub_100003B08();
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);

  return _swift_task_switch(sub_100348BC4, v2, v1);
}

uint64_t sub_100348BC4()
{
  sub_100003B08();
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

void sub_100348C2C(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = objc_allocWithZone(RPTResizeTestParameters);
  v14 = sub_100348E40(0, 0, a2, sub_100348F3C, v12);
  [v14 setMinimumWindowSize:{a3, a4}];
  [v14 setMaximumWindowSize:{a5, a6}];
  [objc_opt_self() runTestWithParameters:v14];
}

uint64_t sub_100348D38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10033B470;

  return sub_100348654();
}

unint64_t sub_100348DEC()
{
  result = qword_100CAE8F8;
  if (!qword_100CAE8F8)
  {
    result = swift_getWitnessTable(byte_100A3E4E0, &type metadata for ResizeMacWindow.Errors, v0, v1);
    atomic_store(result, &qword_100CAE8F8);
  }

  return result;
}

id sub_100348E40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000742F0;
  v13[3] = &unk_100C4F880;
  v10 = _Block_copy(v13);

LABEL_6:
  v11 = [v5 initWithTestName:v9 window:a3 completionHandler:v10];
  _Block_release(v10);

  return v11;
}

_BYTE *storeEnumTagSinglePayload for ResizeMacWindow.Errors(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100348FF4()
{
  result = qword_100CAE900;
  if (!qword_100CAE900)
  {
    result = swift_getWitnessTable(aI_29, &type metadata for ResizeMacWindow.Errors, v0, v1);
    atomic_store(result, &qword_100CAE900);
  }

  return result;
}

void sub_100349048()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = sub_10022C350(&qword_100CA65B8, &unk_100A313D0);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  sub_100003CB4();
  v12 = sub_10022C350(&qword_100CAEB78, &qword_100A3E648);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v20 - v14;
  if (*v4 != *v2)
  {
    goto LABEL_11;
  }

  v21 = type metadata accessor for ActiveLocationInput(0);
  v16 = *(v21 + 20);
  v17 = *(v12 + 48);
  sub_100035AD0(&v4[v16], v15, &qword_100CA65B8, &unk_100A313D0);
  sub_100035AD0(&v2[v16], &v15[v17], &qword_100CA65B8, &unk_100A313D0);
  sub_1000038B4(v15, 1, active);
  if (v18)
  {
    sub_1000038B4(&v15[v17], 1, active);
    if (v18)
    {
      sub_1000180EC(v15, &qword_100CA65B8, &unk_100A313D0);
LABEL_13:
      sub_1000B9770();
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_100035AD0(v15, v0, &qword_100CA65B8, &unk_100A313D0);
  sub_1000038B4(&v15[v17], 1, active);
  if (v18)
  {
    sub_10000822C();
LABEL_10:
    sub_1000180EC(v15, &qword_100CAEB78, &qword_100A3E648);
    goto LABEL_11;
  }

  sub_100349588(&v15[v17], v9);
  v19 = sub_1000BAF7C(v0, v9);
  sub_1000E8348(v9, type metadata accessor for LocationViewerActiveLocationState);
  sub_1000E8348(v0, type metadata accessor for LocationViewerActiveLocationState);
  sub_1000180EC(v15, &qword_100CA65B8, &unk_100A313D0);
  if (v19)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_10000536C();
}

void sub_1003492B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for Location.Identifier();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  sub_1000037D8();
  v31 = v30 - v29;
  v32 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  sub_100003810(v32);
  sub_100003828();
  __chkstk_darwin(v33);
  sub_100003CB4();
  v34 = sub_10022C350(&qword_100CADD58, &unk_100A3E650);
  sub_100003810(v34);
  sub_100003828();
  __chkstk_darwin(v35);
  v37 = &a9 - v36;
  v39 = *(v38 + 56);
  sub_100035AD0(v26, &a9 - v36, &qword_100CADBA0, &qword_100A3D250);
  sub_100035AD0(v24, &v37[v39], &qword_100CADBA0, &qword_100A3D250);
  sub_1000038B4(v37, 1, v27);
  if (v40)
  {
    sub_1000038B4(&v37[v39], 1, v27);
    if (v40)
    {
      sub_1000180EC(v37, &qword_100CADBA0, &qword_100A3D250);
LABEL_12:
      type metadata accessor for ActiveLocationModel(0);
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_100035AD0(v37, v20, &qword_100CADBA0, &qword_100A3D250);
  sub_1000038B4(&v37[v39], 1, v27);
  if (v40)
  {
    (*(v28 + 8))(v20, v27);
LABEL_9:
    sub_1000180EC(v37, &qword_100CADD58, &unk_100A3E650);
    goto LABEL_10;
  }

  (*(v28 + 32))(v31, &v37[v39], v27);
  sub_1000E8FAC();
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = *(v28 + 8);
  v42(v31, v27);
  v42(v20, v27);
  sub_1000180EC(v37, &qword_100CADBA0, &qword_100A3D250);
  if (v41)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_10000536C();
}

uint64_t sub_100349588(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  (*(*(active - 8) + 32))(a2, a1, active);
  return a2;
}

uint64_t sub_1003495F0@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a2;
  v17 = a1;
  v5 = type metadata accessor for ExtremaResult();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
  __chkstk_darwin(v9 - 8);
  v11 = v16 - v10;
  sub_100095588();
  v12 = 1;
  if (sub_100024D10(v11, 1, v5) == 1)
  {
    v13 = a3;
LABEL_5:
    v14 = sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
    return sub_10001B350(v13, v12, 1, v14);
  }

  (*(v6 + 32))(v8, v11, v5);
  v13 = a3;
  v17(v8);
  if (!v3)
  {
    (*(v6 + 8))(v8, v5);
    v12 = 0;
    goto LABEL_5;
  }

  result = (*(v6 + 8))(v8, v5);
  __break(1u);
  return result;
}

uint64_t sub_1003497F8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a2;
  v21 = a1;
  v5 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = v20 - v14;
  sub_100095588();
  v16 = 1;
  if (sub_100024D10(v15, 1, v5) == 1)
  {
    v17 = a3;
LABEL_5:
    v18 = type metadata accessor for Date();
    return sub_10001B350(v17, v16, 1, v18);
  }

  (*(v7 + 32))(v11, v15, v5);
  v17 = a3;
  v21(v11);
  if (!v3)
  {
    (*(v7 + 8))(v11, v5);
    v16 = 0;
    goto LABEL_5;
  }

  result = (*(v7 + 8))(v11, v5);
  __break(1u);
  return result;
}

__n128 *sub_1003499D8(void *a1, uint64_t a2, char *a3, uint64_t a4, int w4_0)
{
  v404 = w4_0;
  v402[6] = a4;
  v432 = a3;
  v409 = a2;
  v430 = a1;
  v5 = sub_10022C350(&qword_100CAEC90, &unk_100A5CFE0);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v407 = v7;
  v8 = sub_10022C350(&qword_100CA71A0, &unk_100A322C0);
  v427 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v9);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v12);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v13);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v15);
  sub_100003878();
  v429 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v19);
  v21 = v402 - v20;
  __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  v25 = v402 - v24;
  v26 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v30);
  v32 = v402 - v31;
  __chkstk_darwin(v33);
  sub_10000E70C();
  v421 = v34;
  v35 = sub_1000038CC();
  v36 = type metadata accessor for DetailComponentContainerViewModel(v35);
  sub_1000037E8();
  __chkstk_darwin(v37);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_100003878();
  v423 = v41;
  sub_10000386C();
  __chkstk_darwin(v42);
  sub_10000E70C();
  v415 = v43;
  v44 = sub_1000038CC();
  v45 = type metadata accessor for ConditionDetailPlatterViewModel(v44);
  sub_1000037C4();
  v433 = v46;
  __chkstk_darwin(v47);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v51);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v54);
  sub_100003878();
  v428 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v58);
  v60 = v402 - v59;
  __chkstk_darwin(v61);
  sub_100003878();
  v435 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_100003878();
  v422 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v66);
  sub_100003878();
  v420 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  sub_10000E70C();
  v419 = v69;
  sub_1000038CC();
  v70 = type metadata accessor for DetailCondition();
  sub_1000037C4();
  v72 = v71;
  __chkstk_darwin(v73);
  sub_1000037D8();
  v76 = (v75 - v74);
  (*(v72 + 16))(v75 - v74, v430, v70);
  v424 = v76;
  *&v425 = v72;
  v78 = *(v72 + 88);
  v77 = (v72 + 88);
  v426 = v70;
  v79 = v78(v76, v70);
  v434 = v45;
  if (v79 == enum case for DetailCondition.conditions(_:))
  {
    sub_10034C028(v25);
    sub_10000E7B0();
    sub_10001B350(v80, v81, v82, v45);
    sub_100095588();
    sub_1000038B4(v32, 1, v36);
    if (v83)
    {
      sub_1000180EC(v32, &qword_100CA7188, &qword_100A35360);
      sub_10022C350(&qword_100CAECA0, &unk_100A3E7C0);
      sub_100024644();
      v86 = v85 & ~v84;
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      sub_100095588();
      sub_1000131DC();
      sub_100095588();
      sub_1000131DC();
      sub_100051BBC();
      sub_1000038B4(v86, 1, v45);
      if (v83)
      {
        sub_1000180EC(v86, &qword_100CA71A0, &unk_100A322C0);
        v121 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10001E8C4();
        sub_1003529E4();
        v121 = _swiftEmptyArrayStorage;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000240B8();
          v121 = v397;
        }

        v165 = v121[1].n128_u64[0];
        v164 = v121[1].n128_u64[1];
        if (v165 >= v164 >> 1)
        {
          sub_100031C84(v164);
          sub_100016340();
          sub_10069EC8C();
          v121 = v398;
        }

        v121[1].n128_u64[0] = v165 + 1;
        sub_10003C36C();
        sub_10001E8C4();
        sub_1003529E4();
      }

      sub_1000180EC(v25, &qword_100CA71A0, &unk_100A322C0);
      swift_setDeallocating();
      sub_1005C1ED0();
    }

    else
    {
      sub_100003F04();
      sub_1003529E4();
      v102 = [objc_opt_self() mainBundle];
      sub_1000AF51C();
      v441._object = 0x8000000100AC20A0;
      sub_100003CD0();
      v103._countAndFlagsBits = 1937204558;
      v103._object = 0xE400000000000000;
      v106 = NSLocalizedString(_:tableName:bundle:value:comment:)(v104, v105, v102, v103, v441);

      type metadata accessor for WeatherDescription();
      v107 = v422;
      sub_100003934();
      sub_10001B350(v108, v109, v110, v111);
      sub_100352AC0();
      v112 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
      swift_storeEnumTagMultiPayload();
      sub_100003934();
      sub_10001B350(v113, v114, v115, v112);
      *v107 = xmmword_100A2C400;
      *(v107 + 16) = 2;
      *(v107 + 24) = v106;
      sub_1000201A8();
      sub_10022C350(&qword_100CAECA0, &unk_100A3E7C0);
      sub_1000183B0();
      v116 = swift_allocObject();
      *(v116 + 16) = xmmword_100A2D320;
      v431 = v116;
      sub_100005870();
      sub_100352AC0();
      sub_10000E7B0();
      sub_10001B350(v117, v118, v119, v45);
      v432 = v25;
      sub_100095588();
      v120 = 0;
      v121 = _swiftEmptyArrayStorage;
      v122 = v45;
      do
      {
        v123 = v120;
        sub_100095588();
        sub_100051BBC();
        sub_1000038B4(v21, 1, v122);
        if (v83)
        {
          sub_1000180EC(v21, &qword_100CA71A0, &unk_100A322C0);
        }

        else
        {
          sub_10001E8C4();
          sub_1003529E4();
          v124 = swift_isUniquelyReferenced_nonNull_native();
          if ((v124 & 1) == 0)
          {
            sub_1000240B8();
            v121 = v127;
          }

          v126 = v121[1].n128_u64[0];
          v125 = v121[1].n128_u64[1];
          if (v126 >= v125 >> 1)
          {
            sub_100031C84(v125);
            sub_100016340();
            sub_10069EC8C();
            v121 = v128;
          }

          v121[1].n128_u64[0] = v126 + 1;
          sub_10003C36C();
          sub_10001E8C4();
          sub_1003529E4();
          v122 = v434;
        }

        v120 = 1;
      }

      while ((v123 & 1) == 0);
      swift_setDeallocating();
      sub_1005C1ED0();
      sub_100014348();
      sub_100352B18(v422, v161);
      sub_100008254();
      sub_100352B18(v423, v162);
      sub_1000180EC(v432, &qword_100CA71A0, &unk_100A322C0);
    }

    (*(v425 + 8))(v424, v426);
    return v121;
  }

  v435 = v36;
  if (v79 == enum case for DetailCondition.humidity(_:))
  {
    sub_10002C57C();
    v87 = objc_opt_self();
    v88 = [v87 mainBundle];
    v428 = v77;
    sub_1000080F4();
    v429 = sub_1000519FC(v89, v90, v91, v92, v436, v93, v94);
    v430 = v95;

    sub_10000C70C(0, &qword_100CA72F8, NSNumberFormatter_ptr);
    v96 = static NSNumberFormatter.percent.getter();
    sub_10000C70C(0, &qword_100CAECA8, NSNumber_ptr);
    isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
    v98 = [v96 stringFromNumber:isa];

    if (v98)
    {
      v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v100;
    }

    else
    {
      v99 = 0;
      v101 = 0xE000000000000000;
    }

    v200 = v419;
    sub_10008654C();
    v424 = v25;
    v201 = [v87 mainBundle];
    v444._object = v25;
    sub_100003CD0();
    sub_100003F1C();
    NSLocalizedString(_:tableName:bundle:value:comment:)(v202, v203, v204, v205, v444);

    v206 = sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v207 = sub_100019478(v206);
    v425 = xmmword_100A2C3F0;
    *(v207 + 16) = xmmword_100A2C3F0;
    *(v207 + 56) = &type metadata for String;
    v208 = sub_100035744();
    *(v207 + 64) = v208;
    *(v207 + 32) = v99;
    *(v207 + 40) = v101;

    v209 = static String.localizedStringWithFormat(_:_:)();
    v426 = v210;

    v211 = [v87 mainBundle];
    sub_100003CD0();
    sub_100003F1C();
    v218 = sub_1000519FC(v212, v213, v214, v215, v438, v216, v217);
    v427 = v219;
    v428 = v218;

    v220 = [v87 mainBundle];
    v445._object = v424;
    sub_1000AF51C();
    sub_100003CD0();
    sub_100003F1C();
    NSLocalizedString(_:tableName:bundle:value:comment:)(v221, v222, v223, v224, v445);

    v225 = sub_100019478(v206);
    *(v225 + 16) = v425;
    *(v225 + 56) = &type metadata for String;
    *(v225 + 64) = v208;
    *(v225 + 32) = v99;
    *(v225 + 40) = v101;
    v226 = static String.localizedStringWithFormat(_:_:)();
    v228 = v227;

    v229 = v434;
    v230 = type metadata accessor for WeatherDescription();
    sub_100003934();
    sub_10001B350(v231, v232, v233, v230);
    v234 = (v200 + v229[7]);
    v235 = v426;
    *v234 = v209;
    v234[1] = v235;
    v236 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    swift_storeEnumTagMultiPayload();
    sub_100003934();
    sub_10001B350(v237, v238, v239, v236);
    *v200 = xmmword_100A3E660;
    *(v200 + 16) = 0;
    v240 = v430;
    *(v200 + 24) = v429;
    *(v200 + 32) = v240;
    *(v200 + v229[9]) = 0;
    *(v200 + v229[10]) = 0;
    v241 = v420;
    sub_100003934();
    sub_10001B350(v242, v243, v244, v230);
    v245 = (v241 + v229[7]);
    *v245 = v226;
    v245[1] = v228;
    swift_storeEnumTagMultiPayload();
    sub_100003934();
    sub_10001B350(v246, v247, v248, v236);
    *v241 = xmmword_100A3E670;
    *(v241 + 16) = 0;
    v249 = v427;
    *(v241 + 24) = v428;
    *(v241 + 32) = v249;
    *(v241 + v229[9]) = 0;
    *(v241 + v229[10]) = 0;
    v250 = v421;
    sub_100095588();
    sub_100087D84(v250);
    if (v83)
    {
      sub_1000180EC(v250, &qword_100CA7188, &qword_100A35360);
      sub_10022C350(&qword_100CAEC98, &qword_100A76590);
      sub_1000B98E8();
      v121 = swift_allocObject();
      v121[1] = xmmword_100A2D320;
      sub_100005870();
      sub_100003940();
      sub_100352AC0();
      sub_10001E8C4();
      sub_1003529E4();
      sub_100014348();
      v258 = v200;
    }

    else
    {
      sub_100003F04();
      v251 = v415;
      sub_1003529E4();
      v252 = v418;
      sub_10034BEBC(v418);
      sub_10022C350(&qword_100CAEC98, &qword_100A76590);
      sub_1000B98E8();
      v121 = swift_allocObject();
      v121[1] = xmmword_100A3BBA0;
      sub_100352AC0();
      sub_100352AC0();
      sub_100352AC0();
      sub_100352B18(v252, type metadata accessor for ConditionDetailPlatterViewModel);
      sub_100008254();
      sub_100352B18(v251, v253);
      sub_100352B18(v241, type metadata accessor for ConditionDetailPlatterViewModel);
      v258 = sub_100003940();
    }

    goto LABEL_58;
  }

  if (v79 == enum case for DetailCondition.pressure(_:))
  {
    sub_10002C57C();
    v129 = objc_opt_self();
    v130 = [v129 mainBundle];
    sub_100003CD0();
    sub_100003F1C();
    sub_1000519FC(v131, v132, v133, v134, v437, v135, v136);
    sub_10012CC6C();

    sub_10008654C();
    v137 = [v129 mainBundle];
    v401 = v25;
LABEL_22:
    sub_1000080F4();
    v142 = NSLocalizedString(_:tableName:bundle:value:comment:)(v138, v139, v140, v141, *(&v401 - 1));
    countAndFlagsBits = v142._countAndFlagsBits;
    object = v142._object;

LABEL_23:
    v145 = DetailCondition.rawValue.getter();
    v147 = v146;
    v148 = v434;
    type metadata accessor for WeatherDescription();
    v149 = v417;
    sub_100003934();
    sub_10001B350(v150, v151, v152, v153);
    v154 = (v149 + v148[7]);
    *v154 = countAndFlagsBits;
    v154[1] = object;
    v155 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    swift_storeEnumTagMultiPayload();
    sub_100003934();
    sub_10001B350(v156, v157, v158, v155);
    *v149 = v145;
    *(v149 + 8) = v147;
    *(v149 + 16) = 0;
    *(v149 + 24) = v77;
    *(v149 + 32) = v60;
    *(v149 + v148[9]) = 0;
    *(v149 + v148[10]) = 0;
    v159 = v416;
    sub_100095588();
    sub_100087D84(v159);
    if (v83)
    {
      sub_1000180EC(v159, &qword_100CA7188, &qword_100A35360);
      sub_10022C350(&qword_100CAEC98, &qword_100A76590);
      sub_100024644();
      v121 = sub_10007169C();
      v121[1] = xmmword_100A2C3F0;
      sub_100005870();
      sub_100352AC0();
      sub_100014348();
      v258 = v149;
LABEL_58:
      sub_100352B18(v258, v160);
      return v121;
    }

    sub_100003F04();
    v254 = v413;
    sub_1003529E4();
    v255 = v418;
    sub_10034BEBC(v418);
    sub_10022C350(&qword_100CAEC98, &qword_100A76590);
    sub_1000183B0();
    v121 = swift_allocObject();
    sub_10000FCE4(v121, xmmword_100A2D320);
    sub_100352AC0();
    sub_100352AC0();
    sub_1000282A8();
    sub_100352B18(v255, v256);
    sub_100008254();
    sub_100352B18(v254, v257);
    v258 = v149;
LABEL_57:
    v160 = v159;
    goto LABEL_58;
  }

  if (v79 == enum case for DetailCondition.precipitationTotal(_:))
  {
    sub_10002C57C();
    sub_1000282C0();
    v166 = objc_opt_self();
    v167 = [v166 mainBundle];
    v442._object = v60;
    sub_100003CD0();
    sub_100003F1C();
    v172 = NSLocalizedString(_:tableName:bundle:value:comment:)(v168, v169, v170, v171, v442);
    v430 = v172._object;

    type metadata accessor for WeatherDescription();
    v173 = v414;
    sub_100003934();
    sub_10001B350(v174, v175, v176, v177);
    v178 = (v173 + v434[7]);
    v179 = [v166 mainBundle];
    v443._object = 0x8000000100AC1420;
    sub_100003CD0();
    sub_100003F1C();
    v184 = NSLocalizedString(_:tableName:bundle:value:comment:)(v180, v181, v182, v183, v443);

    *v178 = v184;
    v185 = v173;
    v186 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    swift_storeEnumTagMultiPayload();
    sub_100003934();
    sub_10001B350(v187, v188, v189, v186);
    *v173 = 0xD00000000000001DLL;
    *(v173 + 8) = v77;
    *(v173 + 16) = 0;
    v190 = v430;
    *(v173 + 24) = v172._countAndFlagsBits;
    *(v173 + 32) = v190;
    v191 = v434;
    *(v185 + v434[9]) = 0;
    *(v185 + *(v191 + 40)) = 0;
    v192 = v410;
    sub_100095588();
    sub_100087D84(v192);
    if (v83)
    {
      sub_1000180EC(v192, &qword_100CA7188, &qword_100A35360);
      sub_10022C350(&qword_100CAECA0, &unk_100A3E7C0);
      sub_100024644();
      v193 = v191;
      v196 = v195 & ~v194;
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      sub_100005870();
      sub_100352AC0();
      sub_10000E7B0();
      sub_10001B350(v197, v198, v199, v193);
      sub_10003257C();
      sub_100095588();
      sub_10003257C();
      sub_100051BBC();
      sub_1000038B4(v196, 1, v193);
      if (v83)
      {
        sub_1000180EC(v196, &qword_100CA71A0, &unk_100A322C0);
        v121 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10001E8C4();
        sub_1003529E4();
        v121 = _swiftEmptyArrayStorage;
        v300 = swift_isUniquelyReferenced_nonNull_native();
        if ((v300 & 1) == 0)
        {
          sub_1000240B8();
          v121 = v399;
        }

        v302 = v121[1].n128_u64[0];
        v301 = v121[1].n128_u64[1];
        if (v302 >= v301 >> 1)
        {
          sub_100031C84(v301);
          sub_100016340();
          sub_10069EC8C();
          v121 = v400;
        }

        v121[1].n128_u64[0] = v302 + 1;
        sub_10003C36C();
        sub_10001E8C4();
        sub_1003529E4();
      }

      sub_100014348();
      sub_100352B18(v185, v303);
      swift_setDeallocating();
      sub_1005C1ED0();
      return v121;
    }

    sub_100003F04();
    v159 = v412;
    sub_1003529E4();
    sub_10034BEBC(v411);
    sub_10022C350(&qword_100CAECA0, &unk_100A3E7C0);
    sub_1000183B0();
    v275 = swift_allocObject();
    sub_10000FCE4(v275, xmmword_100A2D320);
    sub_100352AC0();
    sub_10000E7B0();
    sub_10001B350(v276, v277, v278, v191);
    sub_100352AC0();
    sub_10000E7B0();
    sub_10001B350(v279, v280, v281, v191);
    v282 = 0;
    v121 = _swiftEmptyArrayStorage;
    v283 = v408;
    do
    {
      v284 = v282;
      sub_100095588();
      sub_100051BBC();
      sub_1000038B4(v283, 1, v434);
      if (v83)
      {
        sub_1000180EC(v283, &qword_100CA71A0, &unk_100A322C0);
      }

      else
      {
        sub_10001E8C4();
        sub_1003529E4();
        v285 = swift_isUniquelyReferenced_nonNull_native();
        if ((v285 & 1) == 0)
        {
          sub_1000240B8();
          v121 = v288;
        }

        v287 = v121[1].n128_u64[0];
        v286 = v121[1].n128_u64[1];
        if (v287 >= v286 >> 1)
        {
          sub_100031C84(v286);
          sub_100016340();
          sub_10069EC8C();
          v121 = v289;
        }

        v121[1].n128_u64[0] = v287 + 1;
        sub_10003C36C();
        sub_10001E8C4();
        sub_1003529E4();
      }

      v282 = 1;
    }

    while ((v284 & 1) == 0);
    swift_setDeallocating();
    sub_1005C1ED0();
    sub_1000282A8();
    sub_100352B18(v411, v297);
    sub_100008254();
    sub_100352B18(v412, v298);
    v258 = v414;
    goto LABEL_57;
  }

  if (v79 == enum case for DetailCondition.uvIndex(_:))
  {
    v77 = "bove 10 km is considered clear.";
    sub_1000282C0();
    v259 = objc_opt_self();
    v260 = [v259 mainBundle];
    sub_100003CD0();
    sub_100003F1C();
    sub_1000519FC(v261, v262, v263, v264, v439, v265, v266);
    sub_10012CC6C();

    sub_10008654C();
    v267 = [v259 mainBundle];
    v440._object = v25;
    sub_1000080F4();
    NSLocalizedString(_:tableName:bundle:value:comment:)(v268, v269, v270, v271, v440);

    v272 = sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v273 = sub_100019478(v272);
    *(v273 + 16) = xmmword_100A2C3F0;
    *(v273 + 56) = &type metadata for Int;
    *(v273 + 64) = &protocol witness table for Int;
    *(v273 + 32) = 3;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
    object = v274;

    goto LABEL_23;
  }

  if (v79 == enum case for DetailCondition.visibility(_:))
  {
    v77 = "beaufort explainer";
    sub_1000282C0();
    v290 = objc_opt_self();
    v291 = [v290 mainBundle];
    v446._object = v60;
    sub_1000080F4();
    NSLocalizedString(_:tableName:bundle:value:comment:)(v292, v293, v294, v295, v446);
    sub_10012CC6C();

    v296 = ConditionUnits.visibility.getter();
    NSUnitLength.isMetricVisibility.getter();

    v137 = [v290 mainBundle];
    v401 = 0x8000000100AC1D00;
    goto LABEL_22;
  }

  if (v79 == enum case for DetailCondition.wind(_:))
  {
    if ((v404 & 1) == 0)
    {
      return _swiftEmptyArrayStorage;
    }

    sub_1000282C0();
    v304 = objc_opt_self();
    v305 = [v304 mainBundle];
    v447._object = v60;
    sub_1000080F4();
    v310 = NSLocalizedString(_:tableName:bundle:value:comment:)(v306, v307, v308, v309, v447);
    v428 = v310._object;
    v429 = v310._countAndFlagsBits;

    v311 = v45;
    v312 = [v304 mainBundle];
    sub_1000AF51C();
    v448._object = 0x8000000100AC1880;
    sub_1000080F4();
    v317 = NSLocalizedString(_:tableName:bundle:value:comment:)(v313, v314, v315, v316, v448);

    v427 = v304;
    v318 = [v304 mainBundle];
    v449._object = 0x8000000100AC1960;
    sub_1000080F4();
    NSLocalizedString(_:tableName:bundle:value:comment:)(v319, v320, v321, v322, v449);

    v323 = sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v324 = sub_100019478(v323);
    *(v324 + 16) = xmmword_100A2C3F0;
    *(v324 + 56) = &type metadata for Int;
    *(v324 + 64) = &protocol witness table for Int;
    *(v324 + 32) = 20;
    v325 = static String.localizedStringWithFormat(_:_:)();
    v327 = v326;

    v328 = DetailCondition.rawValue.getter();
    v330 = v329;
    v159 = type metadata accessor for WeatherDescription();
    v331 = v406;
    sub_100003934();
    sub_10001B350(v332, v333, v334, v159);
    v335 = (v331 + v311[7]);
    *v335 = v325;
    v335[1] = v327;
    v336 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    swift_storeEnumTagMultiPayload();
    sub_100003934();
    v340 = sub_10001B350(v337, v338, v339, v336);
    *v331 = v328;
    *(v331 + 8) = v330;
    *(v331 + 16) = 0;
    *(v331 + 24) = v317;
    *(v331 + v311[9]) = 0;
    *(v331 + v311[10]) = 0;
    __chkstk_darwin(v340);
    sub_100003F28();
    *(v341 - 16) = v409;
    v342 = v407;
    sub_1003495F0(sub_1003528E8, v343, v407);
    v344 = sub_10034C26C(v342);
    v346 = v345;
    v348 = v347;
    v349 = v405;
    sub_100003934();
    v430 = v159;
    sub_10001B350(v350, v351, v352, v159);
    v353 = (v349 + v311[7]);
    *v353 = v344;
    v353[1] = v346;
    v353[2] = v348;
    type metadata accessor for ConditionDetailDynamicContentIdentifier(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_100003934();
    sub_10001B350(v354, v355, v356, v336);
    sub_1000AF51C();
    *v349 = v357 - 19;
    *(v349 + 8) = 0x8000000100AC19A0;
    *(v349 + 16) = 1;
    v358 = v428;
    *(v349 + 24) = v429;
    *(v349 + 32) = v358;
    *(v349 + v311[9]) = 1;
    *(v349 + v311[10]) = 0;
    v359 = v402[5];
    sub_100095588();
    sub_100087D84(v359);
    if (v83)
    {
      sub_1000180EC(v359, &qword_100CA7188, &qword_100A35360);
      sub_1000522F0();
      v360 = v403;
    }

    else
    {
      sub_100003F04();
      sub_1000131DC();
      sub_1003529E4();
      v360 = v403;
      sub_10034BEBC(v403);
      sub_100008254();
      sub_100352B18(v349, v361);
      sub_1000522F0();
    }

    v363 = v434;
    sub_10001B350(v360, v362, 1, v434);
    sub_100051BBC();
    v364 = ConditionUnits.windSpeed.getter();
    v365 = NSUnitSpeed.isBeaufort.getter();

    if (v365)
    {
      v366 = v402[3];
      sub_100095588();
      sub_1000038B4(v366, 1, v363);
      if (!v83)
      {
        sub_10001E8C4();
        sub_1000131DC();
        sub_1003529E4();
        sub_10022C350(&qword_100CAEC98, &qword_100A76590);
        sub_1000183B0();
        v121 = swift_allocObject();
        sub_10000FCE4(v121, xmmword_100A3BBA0);
        v390 = v406;
        sub_100352AC0();
        sub_100352AC0();
        v391 = v405;
        sub_100352AC0();
        sub_1000282A8();
        sub_100352B18(v349, v392);
        sub_1000180EC(0x8000000100AC19A0, &qword_100CA71A0, &unk_100A322C0);
        v393 = v391;
LABEL_80:
        sub_100352B18(v393, v159);
        sub_1000180EC(v407, &qword_100CAEC90, &unk_100A5CFE0);
        v258 = v390;
        goto LABEL_57;
      }

      sub_10001775C(v366);
      sub_10022C350(&qword_100CAEC98, &qword_100A76590);
      sub_1000B98E8();
      v121 = swift_allocObject();
      sub_100041938(v121, xmmword_100A2D320);
      v367 = v406;
      sub_100352AC0();
      v368 = v405;
      sub_100352AC0();
      sub_10001775C(0x8000000100AC19A0);
      v159 = type metadata accessor for ConditionDetailPlatterViewModel;
      v369 = v368;
    }

    else
    {
      sub_1000282C0();
      v370 = v427;
      v371 = [v427 mainBundle];
      v450._object = v365;
      sub_100003CD0();
      sub_100003F1C();
      v376 = NSLocalizedString(_:tableName:bundle:value:comment:)(v372, v373, v374, v375, v450);

      sub_10008654C();
      v159 = [v370 mainBundle];
      v451._object = v311;
      sub_100003CD0();
      sub_100003F1C();
      v381 = NSLocalizedString(_:tableName:bundle:value:comment:)(v377, v378, v379, v380, v451);

      sub_10002C57C();
      sub_100003934();
      sub_10001B350(v382, v383, v384, v430);
      *(v344 + *(v363 + 28)) = v381;
      swift_storeEnumTagMultiPayload();
      sub_100003934();
      sub_10001B350(v385, v386, v387, v336);
      *v344 = 0xD000000000000012;
      *(v344 + 8) = v159;
      *(v344 + 16) = 0;
      *(v344 + 24) = v376;
      sub_1000201A8();
      v388 = v402[4];
      sub_100095588();
      sub_1000038B4(v388, 1, v363);
      if (!v83)
      {
        sub_10001E8C4();
        v394 = v402[1];
        sub_1003529E4();
        sub_10022C350(&qword_100CAEC98, &qword_100A76590);
        sub_1000183B0();
        v121 = swift_allocObject();
        sub_10000FCE4(v121, xmmword_100A3B020);
        v390 = v406;
        sub_100352AC0();
        sub_100352AC0();
        v395 = v405;
        sub_100352AC0();
        sub_100352AC0();
        sub_1000282A8();
        sub_100352B18(v394, v396);
        sub_100352B18(v344, v159);
        sub_1000180EC(0x8000000100AC19A0, &qword_100CA71A0, &unk_100A322C0);
        v393 = v395;
        goto LABEL_80;
      }

      sub_10001775C(v388);
      sub_10022C350(&qword_100CAEC98, &qword_100A76590);
      sub_1000B98E8();
      v121 = swift_allocObject();
      sub_100041938(v121, xmmword_100A3BBA0);
      v367 = v406;
      sub_100352AC0();
      v389 = v405;
      sub_100352AC0();
      sub_10001E8C4();
      sub_1003529E4();
      sub_10001775C(0x8000000100AC19A0);
      v159 = type metadata accessor for ConditionDetailPlatterViewModel;
      v369 = v389;
    }

    sub_100352B18(v369, type metadata accessor for ConditionDetailPlatterViewModel);
    sub_1000180EC(v407, &qword_100CAEC90, &unk_100A5CFE0);
    v258 = v367;
    goto LABEL_57;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

double sub_10034BEBC@<D0>(uint64_t a2@<X8>)
{
  v3 = [objc_opt_self() mainBundle];
  v12._object = 0x8000000100AC20A0;
  v4._object = 0x8000000100AC2080;
  v12._countAndFlagsBits = 0xD000000000000021;
  v4._countAndFlagsBits = 0xD000000000000014;
  v5._countAndFlagsBits = 1937204558;
  v5._object = 0xE400000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v12);

  v7 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  v8 = v7[6];
  v9 = type metadata accessor for WeatherDescription();
  sub_10001B350(a2 + v8, 1, 1, v9);
  sub_100352AC0();
  v10 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(a2 + v7[8], 1, 1, v10);
  *&result = 1;
  *a2 = xmmword_100A2C400;
  *(a2 + 16) = 2;
  *(a2 + 24) = v6;
  *(a2 + v7[9]) = 0;
  *(a2 + v7[10]) = 0;
  return result;
}

uint64_t sub_10034C028@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v17._object = 0x8000000100AC2540;
  v17._countAndFlagsBits = 0xD000000000000052;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  v4._object = 0x8000000100AC2520;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v17);

  v7 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  v8 = v7[6];
  v9 = type metadata accessor for WeatherDescription();
  sub_10001B350(a1 + v8, 1, 1, v9);
  v10 = (a1 + v7[7]);
  v11 = [v2 mainBundle];
  v18._object = 0x8000000100AC2650;
  v12._countAndFlagsBits = 0xD0000000000000A6;
  v12._object = 0x8000000100AC25A0;
  v18._countAndFlagsBits = 0xD00000000000004DLL;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v18);

  *v10 = v14;
  v15 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  swift_storeEnumTagMultiPayload();
  result = sub_10001B350(a1 + v7[8], 1, 1, v15);
  *a1 = 0xD00000000000001CLL;
  *(a1 + 8) = 0x8000000100AC2520;
  *(a1 + 16) = 0;
  *(a1 + 24) = v6;
  *(a1 + v7[9]) = 0;
  *(a1 + v7[10]) = 0;
  return result;
}

uint64_t sub_10034C1EC(uint64_t a1)
{
  ExtremaResult.maxValue.getter();
  ConditionUnits.windSpeed.getter();
  sub_10000C70C(0, &qword_100CAC428, NSUnitSpeed_ptr);
  return Measurement.init(value:unit:)();
}

uint64_t sub_10034C26C(uint64_t a1)
{
  v97 = a1;
  v84 = type metadata accessor for Beaufort.Category.Range();
  v89 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Beaufort.Category();
  v98 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10022C350(&qword_100CAEC90, &unk_100A5CFE0);
  __chkstk_darwin(v3 - 8);
  countAndFlagsBits = v71 - v4;
  v5 = type metadata accessor for WeatherFormatPlaceholder();
  v94 = *(v5 - 8);
  object = v5;
  __chkstk_darwin(v5);
  v93 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  __chkstk_darwin(v7 - 8);
  v9 = v71 - v8;
  v90 = type metadata accessor for NSUnitSpeed.WeatherFormatUsage();
  v10 = *(v90 - 8);
  __chkstk_darwin(v90);
  v12 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle();
  v13 = *(v92 - 8);
  __chkstk_darwin(v92);
  v15 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  v91 = *(v16 - 8);
  __chkstk_darwin(v16);
  v88 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v71 - v19;
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v21 = UnitManager.windGust.getter();

  v22 = sub_10000C70C(0, &qword_100CAC428, NSUnitSpeed_ptr);
  v87 = v21;
  v81 = v22;
  Measurement.init(value:unit:)();
  static Set<>.unit.getter();
  v23 = v90;
  (*(v10 + 104))(v12, enum case for NSUnitSpeed.WeatherFormatUsage.windGust(_:), v90);
  v24 = type metadata accessor for Locale();
  sub_10001B350(v9, 1, 1, v24);
  static WeatherFormatStyle<>.weather(_:usage:locale:)();

  sub_1000180EC(v9, &qword_100CAA9F0, qword_100A44F50);
  v25 = v16;
  (*(v10 + 8))(v12, v23);
  v26 = v93;
  v27 = v94;
  v28 = object;
  (*(v94 + 104))(v93, enum case for WeatherFormatPlaceholder.none(_:), object);
  static UnitManager.standard.getter();
  sub_10035297C(&qword_100CAECB0, &type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitSpeed.BaseWeatherFormatStyle);
  v29 = v92;
  v30 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v31 = countAndFlagsBits;
  v72 = v30;
  v71[1] = v32;

  v33 = v28;
  v34 = v91;
  (*(v27 + 8))(v26, v33);
  (*(v13 + 8))(v15, v29);
  v35 = v34[1];
  v82 = v20;
  v35(v20, v25);
  sub_100095588();
  v36 = sub_100024D10(v31, 1, v25);
  v80 = v35;
  if (v36 == 1)
  {
    sub_1000180EC(v31, &qword_100CAEC90, &unk_100A5CFE0);
    v37 = v98;
  }

  else
  {
    v38 = v88;
    (v34[4])(v88, v31, v25);
    v39 = v35;
    v40 = v85;
    Measurement<>.beaufortCategory(useExtendedScale:)();
    v41 = Beaufort.Category.level.getter();
    v37 = v98;
    (*(v98 + 8))(v40, v86);
    v42 = static Beaufort.maxLevel.getter();
    v39(v38, v25);
    if (v42 < v41)
    {
      v79 = 1;
      result = static Beaufort.maxExtendedLevel.getter();
      v44 = result;
      goto LABEL_6;
    }
  }

  result = static Beaufort.maxLevel.getter();
  v44 = result;
  v79 = 0;
LABEL_6:
  if (v44 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v45 = v44 + 1;
  if (!__OFADD__(v44, 1))
  {
    v100 = _swiftEmptyArrayStorage;
    result = sub_1006A7C04(0, v45 & ~(v45 >> 63), 0);
    if (v45 < 0)
    {
      goto LABEL_23;
    }

    v77 = (v34 + 1);
    v78 = v25;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = v100;
    v74 = (v89 + 8);
    v73 = (v37 + 8);
    v76 = v44;
    v75 = v44 + 1;
    while (!__OFADD__(v46, 1))
    {
      v98 = v46 + 1;
      if (v48)
      {
        goto LABEL_24;
      }

      v97 = v47;
      static NSUnitSpeed.beaufort.getter();
      v50 = v82;
      Measurement.init(value:unit:)();
      v51 = v85;
      Measurement<>.beaufortCategory(useExtendedScale:)();
      v99 = Beaufort.Category.level.getter();
      sub_100352908();
      v52 = BinaryInteger.formatted()();
      object = v52._object;
      countAndFlagsBits = v52._countAndFlagsBits;
      v53 = Beaufort.Category.name.getter();
      v93 = v54;
      v94 = v53;
      v55 = v83;
      Beaufort.Category.range(in:)();
      v56 = Beaufort.Category.Range.formattedRange(forAccessibility:)(0);
      v91 = v56._object;
      v92 = v56._countAndFlagsBits;
      v57 = *v74;
      v58 = v84;
      (*v74)(v55, v84);
      Beaufort.Category.range(in:)();
      v59 = Beaufort.Category.Range.formattedRange(forAccessibility:includeUnit:)(0, 1);
      v89 = v59._object;
      v90 = v59._countAndFlagsBits;
      v57(v55, v58);
      Beaufort.Category.range(in:)();
      v60 = Beaufort.Category.Range.formattedRange(forAccessibility:)(1);
      v88 = v60._object;
      v57(v55, v58);
      v61 = Beaufort.Category.color.getter();
      (*v73)(v51, v86);
      result = v80(v50, v78);
      v100 = v49;
      v63 = v49[2];
      v62 = v49[3];
      if (v63 >= v62 >> 1)
      {
        result = sub_1006A7C04((v62 > 1), v63 + 1, 1);
        v49 = v100;
      }

      v49[2] = v63 + 1;
      v64 = &v49[11 * v63];
      v65 = object;
      v64[4] = countAndFlagsBits;
      v64[5] = v65;
      v66 = v93;
      v64[6] = v94;
      v64[7] = v66;
      v67 = v91;
      v64[8] = v92;
      v64[9] = v67;
      v68 = v89;
      v64[10] = v90;
      v64[11] = v68;
      v69 = v88;
      v64[12] = v60._countAndFlagsBits;
      v64[13] = v69;
      v64[14] = v61;
      v48 = v97 == v76;
      if (v97 == v76)
      {
        v47 = 0;
        v70 = v75;
      }

      else
      {
        v47 = v97 + 1;
        v70 = v75;
        if (__OFADD__(v97, 1))
        {
          goto LABEL_20;
        }
      }

      ++v46;
      if (v98 == v70)
      {

        return v72;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_10034CC74(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v323 = a4;
  v316 = a3;
  v319 = a2;
  v312 = type metadata accessor for ConditionDetailMapViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v314 = v6;
  v7 = sub_1000038CC();
  v325 = type metadata accessor for ConditionDetailPlatterViewModel(v7);
  sub_1000037C4();
  v326 = v8;
  __chkstk_darwin(v9);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_10000E70C();
  v317 = v11;
  sub_1000038CC();
  v338 = type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v321 = v12;
  __chkstk_darwin(v13);
  sub_1000038E4();
  v320 = v14;
  sub_1000038CC();
  v341 = type metadata accessor for DetailCondition();
  sub_1000037C4();
  v340 = v15;
  __chkstk_darwin(v16);
  sub_1000038E4();
  v339 = v17;
  sub_1000038CC();
  v327 = type metadata accessor for Calendar();
  sub_1000037C4();
  v328 = v18;
  __chkstk_darwin(v19);
  sub_1000038E4();
  v353 = v20;
  v21 = sub_10022C350(&qword_100CACDF8, &unk_100A3E410);
  sub_100003810(v21);
  sub_100003828();
  __chkstk_darwin(v22);
  sub_1000039BC();
  v345 = v23;
  v24 = sub_1000038CC();
  v311 = type metadata accessor for WeatherData(v24);
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_1000038E4();
  v354 = v26;
  v355 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
  sub_1000037C4();
  v346 = v27;
  sub_100003828();
  __chkstk_darwin(v28);
  sub_1000039BC();
  v358 = v29;
  sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  sub_1000037C4();
  v347 = v30;
  v348 = v31;
  sub_100003828();
  __chkstk_darwin(v32);
  sub_1000039BC();
  v356 = v33;
  sub_1000038CC();
  type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v350 = v34;
  v351 = v35;
  __chkstk_darwin(v34);
  sub_1000038E4();
  v357 = v36;
  sub_1000038CC();
  v349 = type metadata accessor for DayWeather();
  sub_1000037C4();
  v352 = v37;
  __chkstk_darwin(v38);
  sub_1000037D8();
  v41 = v40 - v39;
  v331 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v332 = v42;
  __chkstk_darwin(v43);
  sub_1000037D8();
  v46 = v45 - v44;
  v47 = type metadata accessor for Location();
  sub_1000037C4();
  v49 = v48;
  __chkstk_darwin(v50);
  sub_1000037D8();
  v53 = (v52 - v51);
  v54 = type metadata accessor for Date();
  sub_1000037C4();
  v56 = v55;
  __chkstk_darwin(v57);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v58);
  v60 = &v310 - v59;
  v61 = type metadata accessor for ConditionDetailInput.Input(0);
  v62 = *(v61 + 40);
  v335 = v56;
  v63 = *(v56 + 16);
  v344 = v60;
  v334 = v54;
  v315 = v63;
  v63(v60, &a1[v62], v54);
  v64 = *(v61 + 52);
  v333 = v49;
  v66 = *(v49 + 16);
  v65 = v49 + 16;
  v336 = v53;
  v337 = v47;
  v310 = v66;
  v66(v53, &a1[v64], v47);
  Location.timeZone.getter();
  sub_1000794A4();
  v330 = v41;
  v67(v41);
  sub_1000794A4();
  v68(v357);
  sub_1000794A4();
  v69(v356);
  sub_1000794A4();
  v70(v358);
  sub_1000213D0();
  sub_100352AC0();
  sub_100095588();
  v343 = v46;
  static Calendar.currentCalendar(with:)();
  sub_1000282C0();
  v71 = objc_opt_self();
  v72 = [v71 mainBundle];
  v363._object = a1;
  sub_1000080F4();
  v77 = NSLocalizedString(_:tableName:bundle:value:comment:)(v73, v74, v75, v76, v363);

  v342 = swift_allocObject();
  *(v342 + 16) = 2;
  v78 = swift_allocObject();
  *(v78 + 16) = 2;
  v79 = v340;
  sub_1000794A4();
  v80 = v339;
  v81 = v341;
  v82(v339);
  v83 = (*(v79 + 11))(v80, v81);
  v329 = v78;
  if (v83 == enum case for DetailCondition.conditions(_:))
  {
    v84 = sub_1000D41CC();
    if (sub_10034E5F8(v84, a1))
    {

      v85 = [v71 mainBundle];
      v364._object = 0x8000000100AC2820;
      sub_100003CD0();
      sub_100003F1C();
      v364._countAndFlagsBits = 0xD000000000000035;
      v90 = NSLocalizedString(_:tableName:bundle:value:comment:)(v86, v87, v88, v89, v364);
      countAndFlagsBits = v90._countAndFlagsBits;
      object = v90._object;

      sub_100036CBC();
      v92 = *(v91 + 40);
      sub_1000213E8((v91 + 16));
      sub_1000BCE00();
      v93 = v330;
      v94 = v345;
      dispatch thunk of ConditionsPlatterStringBuilderType.makeForecastPlatterWeatherDescription(from:timeZone:dayWeather:currentWeather:hourlyForecast:dailyForecast:weatherChanges:units:)();
    }

    else
    {
      object = v77._object;
      sub_100036CBC();
      v92 = *(v122 + 40);
      sub_1000213E8((v122 + 16));
      sub_10034E664(v78, a1);
      sub_1000BCE00();
      v93 = v330;
      dispatch thunk of ConditionsPlatterStringBuilderType.makeDailySummaryPlatterWeatherDescription(from:timeZone:hourlyForecast:dayWeather:isYesterday:units:)();
      v94 = v345;
      sub_1000C8974();
    }

    sub_10022C350(&qword_100CAEC98, &qword_100A76590);
    sub_1000747FC();
    v101 = sub_10007169C();
    *(v101 + 16) = xmmword_100A2C3F0;
    v123 = v101 + v92;
    v124 = v325;
    sub_100003934();
    v125 = v338;
    sub_10001B350(v126, v127, v128, v338);
    v129 = v321;
    (*(v321 + 16))(v101 + v92 + v124[7], v65, v125);
    v130 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    swift_storeEnumTagMultiPayload();
    sub_100003934();
    sub_10001B350(v131, v132, v133, v130);
    *v123 = 0;
    *(v123 + 8) = 0;
    *(v123 + 16) = 2;
    sub_1000114A4();
    *(v123 + 24) = v135;
    *(v123 + 32) = v134;
    *(v123 + v124[9]) = 0;
    *(v123 + v124[10]) = 0;
    (*(v129 + 8))(v65, v125);
    v136 = sub_100013690();
    v137(v136);
    sub_1000180EC(v94, &qword_100CACDF8, &unk_100A3E410);
    sub_10001BE90();
    sub_100352B18(v354, v138);
    v139 = sub_100031C70();
    v140(v139);
    v141 = sub_1000370F0();
    v142(v141);
    sub_1000B01C0();
    v143(v357);
    (*(v352 + 8))(v93, v349);
    sub_10000E73C();
    v144(v343, v331);
    v145 = sub_10002C628();
    v146(v145);
    sub_10000E73C();
    v147(v344, v334);
    sub_10000E73C();
    v149 = v339;
    v150 = &v362;
    goto LABEL_35;
  }

  object = v77._object;
  if (v83 == enum case for DetailCondition.humidity(_:))
  {
    sub_100036CBC();
    v96 = *(v95 + 160);
    sub_1000161C0((v95 + 136), v96);
    sub_1000C8974();
    v97 = v358;
    v98 = v355;
    Forecast.forecast.getter();
    v99 = v330;
    v100 = v353;
    dispatch thunk of HumidityPlatterStringBuilderType.makeL2SummaryString(hourlyForecast:dayWeather:date:calendar:timeZone:units:)();
    sub_100017750();

    sub_10022C350(&qword_100CAEC98, &qword_100A76590);
    sub_1000747FC();
    v101 = sub_100086558();
    *(v101 + 16) = xmmword_100A2C3F0;
    v102 = &a1[v101];
    v103 = v325;
    v104 = sub_1000206A8(*(v325 + 24));
    sub_10001B350(v104, v105, v106, v338);
    v107 = sub_1000C8330(v103[7]);
    sub_100071C74(v107);
    v108 = sub_1000206A8(v103[8]);
    sub_10001B350(v108, v109, v110, v96);
    sub_10006A740();
    sub_1000114A4();
    *(v102 + 3) = v112;
    *(v102 + 4) = v111;
    v102[v103[9]] = 0;
    v102[v103[10]] = 0;
    sub_10000C9F4();
    v113(v100, v327);
    sub_1000180EC(v345, &qword_100CACDF8, &unk_100A3E410);
    sub_10001BE90();
    sub_100352B18(v354, v114);
    (*(v346 + 8))(v97, v98);
    v115 = sub_1000370F0();
    v116(v115);
    sub_1000B01C0();
    v117(v357);
    v118 = *(v352 + 8);
    v119 = v99;
LABEL_6:
    v118(v119, v349);
    sub_10000E73C();
    v121 = v343;
LABEL_34:
    v120(v121, v331);
    v255 = sub_10002C628();
    v256(v255);
    sub_10000E73C();
    v149 = v344;
    v150 = &v361;
LABEL_35:
    v148(v149, *(v150 - 32));
LABEL_36:
    sub_1000D41CC();

    return v101;
  }

  if (v83 == enum case for DetailCondition.pressure(_:))
  {
    sub_1000C8974();
    v151 = sub_1000D41CC();
    v152 = sub_10034E5F8(v151, a1);
    v153 = v355;
    v154 = v338;
    if (v152)
    {
      sub_100036CBC();
      v156 = sub_1000EFF20(v155);
      v157 = v357;
      v158 = v343;
      sub_10003153C();
      v159 = dispatch thunk of PressurePlatterStringBuilderType.makeTodayString(from:hourlyForecast:extrema:timeZone:units:)();
      v161 = v160;
    }

    else
    {
      v172 = sub_10034E664(v78, a1);
      sub_100036CBC();
      v156 = sub_1000EFF20(v173);
      v158 = v343;
      sub_10003153C();
      if (v172)
      {
        v174 = dispatch thunk of PressurePlatterStringBuilderType.makeYesterdayString(for:hourlyForecast:extrema:timeZone:units:)();
      }

      else
      {
        v174 = dispatch thunk of PressurePlatterStringBuilderType.makeFutureDayString(for:hourlyForecast:extrema:timeZone:units:)();
      }

      v159 = v174;
      v161 = v175;
      v157 = v357;
      v153 = v355;
    }

    sub_10022C350(&qword_100CAEC98, &qword_100A76590);
    sub_1000747FC();
    v101 = sub_10007169C();
    *(v101 + 16) = xmmword_100A2C3F0;
    v183 = v101 + v156;
    v184 = v325;
    v185 = sub_1000206A8(*(v325 + 24));
    sub_10001B350(v185, v186, v187, v154);
    v188 = (v101 + v156 + v184[7]);
    *v188 = v159;
    v188[1] = v161;
    v189 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    sub_100003940();
    swift_storeEnumTagMultiPayload();
    v190 = sub_1000206A8(v184[8]);
    sub_10001B350(v190, v191, v192, v189);
    sub_10006A740();
    sub_1000114A4();
    *(v183 + 24) = v194;
    *(v183 + 32) = v193;
    *(v183 + v184[9]) = 0;
    *(v183 + v184[10]) = 0;
    v195 = sub_100013690();
    v196(v195);
    sub_1000180EC(v345, &qword_100CACDF8, &unk_100A3E410);
    sub_10001BE90();
    sub_100352B18(v354, v197);
    (*(v346 + 8))(v358, v153);
    v198 = sub_1000370F0();
    v199(v198);
    sub_1000B01C0();
    v200(v157);
    v201 = sub_10003B984();
    v202(v201, v349);
    sub_10000E73C();
    v121 = v158;
    goto LABEL_34;
  }

  v162 = v338;
  if (v83 == enum case for DetailCondition.precipitationTotal(_:))
  {
    v163 = sub_1000D41CC();
    sub_10034E5F8(v163, a1);
    v164 = v343;
    sub_1000C8974();
    if (v165)
    {
      sub_100036CBC();
      sub_100035B30(v166 + 256, &v359);
      v167 = v360;
      sub_1000161C0(&v359, v360);
      sub_1001A5104();
      v168 = v330;
      if (v169)
      {
      }

      v170 = v356;
      v171 = v357;
      dispatch thunk of PrecipitationPlatterStringBuilderType.makeTodayString(from:dayWeather:dailyForecast:hourlyForecast:timeZone:currentWeatherLacksPeriodPrecipitationAmounts:)();
      sub_100017750();
      sub_100006F14(&v359);
    }

    else
    {
      v181 = sub_10034E664(v78, a1);
      sub_100036CBC();
      v167 = *(v182 + 280);
      sub_1000213E8((v182 + 256));
      v168 = v330;
      if (v181)
      {
        dispatch thunk of PrecipitationPlatterStringBuilderType.makeYesterdayString(for:dayWeather:timeZone:units:)();
      }

      else
      {
        dispatch thunk of PrecipitationPlatterStringBuilderType.makeFutureDayString(for:dayWeather:timeZone:units:)();
      }

      sub_100017750();
      v170 = v356;
      v171 = v357;
    }

    v237 = v164;
    sub_10022C350(&qword_100CAEC98, &qword_100A76590);
    sub_1000747FC();
    v101 = sub_100086558();
    *(v101 + 16) = xmmword_100A2C3F0;
    v238 = &a1[v101];
    v239 = v325;
    v240 = sub_1000206A8(*(v325 + 24));
    sub_10001B350(v240, v241, v242, v338);
    v243 = sub_1000C8330(v239[7]);
    sub_100071C74(v243);
    v244 = sub_1000206A8(v239[8]);
    sub_10001B350(v244, v245, v246, v167);
    sub_10006A740();
    sub_1000114A4();
    *(v238 + 3) = v248;
    *(v238 + 4) = v247;
    v238[v239[9]] = 0;
    v238[v239[10]] = 0;
    v249 = sub_100013690();
    v250(v249);
    sub_1000180EC(v345, &qword_100CACDF8, &unk_100A3E410);
    sub_10001BE90();
    sub_100352B18(v354, v251);
    v252 = sub_100031C70();
    v253(v252);
    (*(v348 + 8))(v170, v347);
    sub_1000B01C0();
    v254(v171);
    (*(v352 + 8))(v168, v349);
    sub_10000E73C();
    v121 = v237;
    goto LABEL_34;
  }

  if (v83 == enum case for DetailCondition.uvIndex(_:))
  {

    v176 = sub_1000D41CC();
    if (sub_10034E5F8(v176, a1))
    {
      v177 = v345;
      v178 = v318;
      v179 = v357;
      CurrentWeather.date.getter();
      v180 = v334;
    }

    else
    {
      v177 = v345;
      v178 = v318;
      v180 = v334;
      v315(v318, v344, v334);
      v179 = v357;
    }

    v223 = v356;
    sub_10022C350(&qword_100CAEC98, &qword_100A76590);
    sub_1000747FC();
    v101 = sub_100086558();
    *(v101 + 16) = xmmword_100A2C3F0;
    sub_100036CBC();
    sub_1000161C0((v224 + 56), *(v224 + 80));
    v225 = v343;
    v226 = v358;
    sub_10026FDB8(&a1[v101]);
    v227 = *(v335 + 8);
    v227(v178, v180);
    v228 = sub_100013690();
    v229(v228);
    sub_1000180EC(v177, &qword_100CACDF8, &unk_100A3E410);
    sub_10001BE90();
    sub_100352B18(v354, v230);
    (*(v346 + 8))(v226, v355);
    (*(v348 + 8))(v223, v347);
    sub_1000B01C0();
    v231(v179);
    v232 = sub_10003B984();
    v233(v232, v349);
    sub_10000E73C();
    v234(v225, v331);
    v235 = sub_10002C628();
    v236(v235);
    v227(v344, v180);
    goto LABEL_36;
  }

  if (v83 == enum case for DetailCondition.visibility(_:))
  {
    sub_100036CBC();
    v204 = *(v203 + 200);
    sub_1000213E8((v203 + 176));
    v205 = v357;
    v206 = v353;
    dispatch thunk of VisibilityPlatterStringBuilderType.makeSummaryString(currentWeather:extrema:date:calendar:timeZone:units:)();
    sub_100017750();
    sub_10022C350(&qword_100CAEC98, &qword_100A76590);
    sub_1000747FC();
    v101 = sub_100086558();
    *(v101 + 16) = xmmword_100A2C3F0;
    v207 = &a1[v101];
    v208 = v325;
    v209 = sub_1000206A8(*(v325 + 24));
    sub_10001B350(v209, v210, v211, v162);
    v212 = sub_1000C8330(v208[7]);
    sub_100071C74(v212);
    v213 = sub_1000206A8(v208[8]);
    sub_10001B350(v213, v214, v215, v204);
    sub_10006A740();
    v216 = object;
    *(v207 + 3) = v77._countAndFlagsBits;
    *(v207 + 4) = v216;
    v207[v208[9]] = 0;
    v207[v208[10]] = 0;
    sub_10000C9F4();
    v217(v206, v327);
    sub_1000180EC(v345, &qword_100CACDF8, &unk_100A3E410);
    sub_10001BE90();
    sub_100352B18(v354, v218);
    v219 = sub_100031C70();
    v220(v219);
    v221 = sub_1000370F0();
    v222(v221);
    (*(v351 + 8))(v205, v350);
LABEL_42:
    v119 = sub_10003B984();
    goto LABEL_6;
  }

  v340 = a1;
  if (v83 == enum case for DetailCondition.wind(_:))
  {
    sub_100036CBC();
    v259 = *(v258 + 120);
    sub_1000213E8((v258 + 96));
    v260 = v353;
    dispatch thunk of WindPlatterStringBuilderType.makeSummaryString(currentWeather:extrema:secondaryValueExtrema:date:calendar:timeZone:units:)();
    sub_100017750();
    v261 = v325;
    v262 = v317;
    sub_100003934();
    sub_10001B350(v263, v264, v265, v162);
    v266 = (v262 + v261[7]);
    *v266 = v259;
    v266[1] = v81;
    v267 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    sub_100071C74(v267);
    sub_100003934();
    sub_10001B350(v268, v269, v270, v259);
    *v262 = 0;
    *(v262 + 8) = 0;
    *(v262 + 16) = 2;
    v271 = object;
    *(v262 + 24) = v77._countAndFlagsBits;
    *(v262 + 32) = v271;
    sub_1000201A8();
    v272 = sub_1000D41CC();
    if (sub_10034E5F8(v272, v340))
    {
      v273 = [v71 mainBundle];
      v274 = v162;
      v275 = v273;
      v365._object = 0x8000000100AC27D0;
      sub_100003CD0();
      v276._countAndFlagsBits = 7364941;
      v276._object = 0xE300000000000000;
      v279 = NSLocalizedString(_:tableName:bundle:value:comment:)(v277, v278, v275, v276, v365);
      v341 = v279._object;

      v280 = v312;
      v281 = v314;
      v282 = v262;
      v283 = v274;
      v310(&v314[*(v312 + 20)], v336, v337);
      sub_1000213D0();
      v284 = v354;
      sub_100352AC0();
      sub_10000E7B0();
      sub_10001B350(v285, v286, v287, v311);
      v288 = v280[8];
      v289 = LODWORD(enum case for WeatherMapOverlayKind.wind(_:)[0]);
      type metadata accessor for WeatherMapOverlayKind();
      sub_1000037E8();
      (*(v290 + 104))(&v281[v288], v289);
      *v281 = 0;
      *(v281 + 1) = 0;
      v291 = &v281[v280[7]];
      *v291 = 0;
      *(v291 + 1) = 0xE000000000000000;
      v281[v280[9]] = 0;
      v292 = v313;
      sub_100003934();
      sub_10001B350(v293, v294, v295, v283);
      sub_100352AC0();
      type metadata accessor for ConditionDetailDynamicContentIdentifier(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_100003934();
      sub_10001B350(v296, v297, v298, v259);
      *v292 = xmmword_100A3E680;
      *(v292 + 16) = 1;
      v299 = v341;
      *(v292 + 24) = v279._countAndFlagsBits;
      *(v292 + 32) = v299;
      *(v292 + v261[9]) = 1;
      *(v292 + v261[10]) = 0;
      sub_10022C350(&qword_100CAEC98, &qword_100A76590);
      sub_1000183B0();
      v101 = swift_allocObject();
      sub_10000FCE4(v101, xmmword_100A2D320);
      sub_100352AC0();
      sub_10001E8C4();
      sub_1003529E4();
      sub_100352B18(v281, type metadata accessor for ConditionDetailMapViewModel);
      sub_100014348();
      sub_100352B18(v282, v300);
      v301 = sub_100013690();
      v302(v301);
      sub_1000180EC(v345, &qword_100CACDF8, &unk_100A3E410);
      sub_10001BE90();
      v304 = v284;
    }

    else
    {
      sub_10022C350(&qword_100CAEC98, &qword_100A76590);
      sub_1000747FC();
      v101 = sub_10007169C();
      *(v101 + 16) = xmmword_100A2C3F0;
      sub_10001E8C4();
      sub_1003529E4();
      sub_10000C9F4();
      v305(v260, v327);
      sub_1000180EC(v345, &qword_100CACDF8, &unk_100A3E410);
      sub_10001BE90();
      v304 = v354;
    }

    sub_100352B18(v304, v303);
    v306 = sub_100031C70();
    v307(v306);
    v308 = sub_1000370F0();
    v309(v308);
    (*(v351 + 8))(v357, v350);
    goto LABEL_42;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10034E5F8(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16);
  v3 = *(a1 + 16);
  if (v3 == 2)
  {
    LOBYTE(v3) = *(a2 + *(type metadata accessor for ConditionDetailInput.Input(0) + 44));
    swift_beginAccess();
    *v2 = v3;
  }

  return v3 & 1;
}

uint64_t sub_10034E664(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16);
  v3 = *(a1 + 16);
  if (v3 == 2)
  {
    type metadata accessor for ConditionDetailInput.Input(0);
    LOBYTE(v3) = static Date.== infix(_:_:)();
    swift_beginAccess();
    *v2 = v3 & 1;
  }

  return v3 & 1;
}

uint64_t sub_10034E6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v181 = a6;
  v185 = a4;
  v186 = a5;
  v183 = a2;
  v184 = a3;
  v191 = a7;
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v167 = v9;
  v168 = v8;
  __chkstk_darwin(v8);
  sub_1000038E4();
  v164 = v10;
  sub_1000038CC();
  type metadata accessor for Date();
  sub_1000037C4();
  v165 = v12;
  v166 = v11;
  __chkstk_darwin(v11);
  sub_1000038E4();
  v163 = v13;
  v14 = sub_1000038CC();
  v169 = type metadata accessor for PastDataComparisonTextContext(v14);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_1000038E4();
  v170 = v16;
  sub_1000038CC();
  v179 = type metadata accessor for HourWeather();
  sub_1000037C4();
  v190 = v17;
  __chkstk_darwin(v18);
  sub_100003848();
  v175 = v19;
  sub_10000386C();
  __chkstk_darwin(v20);
  sub_10000E70C();
  v173 = v21;
  sub_1000038CC();
  v189 = type metadata accessor for Precipitation();
  sub_1000037C4();
  v182 = v22;
  __chkstk_darwin(v23);
  sub_100003848();
  v188 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v187 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v171 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_10000E70C();
  v172 = v30;
  v31 = sub_1000038CC();
  v178 = type metadata accessor for ConditionDetailChartInputs(v31);
  sub_1000037C4();
  v176 = v32;
  __chkstk_darwin(v33);
  sub_100003848();
  v174 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_10000E70C();
  v177 = v36;
  sub_1000038CC();
  v37 = type metadata accessor for DetailCondition();
  sub_1000037C4();
  v39 = v38;
  __chkstk_darwin(v40);
  sub_1000037D8();
  v43 = v42 - v41;
  v44 = type metadata accessor for ConditionDetailInput.Input(0);
  if (*(a1 + *(v44 + 44)) != 1)
  {
    goto LABEL_27;
  }

  v45 = a1;
  v46 = *(v44 + 32);
  v47 = *(v39 + 104);
  v161 = v44;
  v47(v43, enum case for DetailCondition.pressure(_:), v37);
  sub_10035297C(&qword_100CAECC0, &type metadata accessor for DetailCondition, &protocol conformance descriptor for DetailCondition);
  v162 = v46;
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  v49 = *(v39 + 8);
  v50 = sub_100042210();
  v49(v50);
  if (v48)
  {
    goto LABEL_27;
  }

  v51 = enum case for DetailCondition.precipitationTotal(_:);
  v47(v43, enum case for DetailCondition.precipitationTotal(_:), v37);
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
  v53 = sub_100042210();
  v54 = (v49)(v53);
  if (v52)
  {
    goto LABEL_27;
  }

  v159 = v49;
  v160 = v155;
  __chkstk_darwin(v54);
  sub_100003F28();
  v157 = v45;
  *(v55 - 16) = v45;
  v57 = v56;
  v59 = sub_1008EF8B0(sub_10035295C, v58, v56);
  if ((v60 & 1) != 0 || (v61 = v59, v156 = v59 - 1, v59 < 1))
  {
    if (qword_100CA2700 != -1)
    {
LABEL_34:
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    sub_10000703C(v78, qword_100D90B68);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "Not enough data to compare weather data from yesterday and today. Comparison platter will not be shown.", v81, 2u);
    }

    goto LABEL_27;
  }

  v155[1] = 0;
  v47(v43, v51, v37);
  v62 = v157;
  v63 = v162;
  v64 = static DetailCondition.== infix(_:_:)();
  v65 = sub_100042210();
  result = v159(v65);
  if ((v64 & 1) == 0)
  {
LABEL_26:
    v113 = v61;
    v114 = v180;
    v115 = v181;
    sub_10034F738(v62, v113, v156, v183, v184, v185, v186, v181, v202);
    if (HIBYTE(v204) <= 0xFEu)
    {
      LODWORD(v190) = v204;
      v198 = v202[0];
      v199 = v202[1];
      v200 = v202[2];
      v201 = v203;
      sub_100351098(v62 + v63, v197);
      sub_100095588();
      if (v196)
      {
        sub_100013188(&v195, v192);
        v120 = v161;
        CurrentWeather.date.getter();
        v121 = v164;
        Location.timeZone.getter();
        v122 = v170;
        Date.midnight(timeZone:)();
        (*(v167 + 8))(v121, v168);
        v124 = v165;
        v123 = v166;
        v125 = sub_100042210();
        v126(v125);
        v127 = v169;
        (*(v124 + 16))(v122 + *(v169 + 20), v62 + *(v120 + 48), v123);
        Location.timeZone.getter();
        sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
        v128 = Forecast.forecast.getter();
        sub_10022C350(&qword_100CA7030, &qword_100A32000);
        v129 = Forecast.forecast.getter();
        v130 = v127[9];
        type metadata accessor for ConditionUnits();
        sub_1000037E8();
        (*(v131 + 16))(v122 + v130, v115);
        v115 = &unk_100A3B140;
        sub_100044D8C(v183, v122 + v127[10]);
        sub_100044D8C(v184, v122 + v127[11]);
        sub_100044D8C(v185, v122 + v127[12]);
        sub_100044D8C(v186, v122 + v127[13]);
        *(v122 + v127[7]) = v128;
        *(v122 + v127[8]) = v129;
        v63 = v193;
        v62 = v194;
        v114 = sub_1000161C0(v192, v193);
        (*(v62 + 8))(v122, v63, v62);
        sub_10008837C();
        sub_100352B18(v122, type metadata accessor for PastDataComparisonTextContext);
        sub_100006F14(v192);
      }

      else
      {
        sub_1000180EC(&v195, &qword_100CAECC8, &qword_100A3E7E0);
        v132 = LocalizedStringKey.init(stringLiteral:)();
        Text.init(_:tableName:bundle:comment:)(v132, v134, v133 & 1, v135, 0, 0, 0, 0, 0, 256);
        sub_10008837C();
      }

      v189 = v115 & 1;
      v136 = objc_opt_self();
      sub_10010CD54(v114, v63, v115 & 1);

      sub_100095588();
      v137 = [v136 mainBundle];
      v205._object = 0x8000000100AC26C0;
      sub_100003CD0();
      sub_100003F1C();
      v142 = NSLocalizedString(_:tableName:bundle:value:comment:)(v138, v139, v140, v141, v205);

      sub_1000180EC(v202, &qword_100CAECD0, &qword_100A3E7E8);
      sub_10010CD64(v114, v63, v115 & 1);

      sub_1000180EC(v197, &qword_100CAECC8, &qword_100A3E7E0);
      v143 = type metadata accessor for ConditionDetailPlatterViewModel(0);
      type metadata accessor for WeatherDescription();
      v144 = v191;
      sub_100003934();
      sub_10001B350(v145, v146, v147, v148);
      v149 = v144 + v143[7];
      *v149 = v114;
      *(v149 + 8) = v63;
      *(v149 + 16) = v189;
      *(v149 + 24) = v62;
      v150 = v199;
      *(v149 + 32) = v198;
      *(v149 + 48) = v150;
      *(v149 + 64) = v200;
      *(v149 + 80) = v201;
      *(v149 + 88) = v190;
      v151 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
      sub_100042210();
      swift_storeEnumTagMultiPayload();
      sub_100003934();
      sub_10001B350(v152, v153, v154, v151);
      *v144 = xmmword_100A2F600;
      *(v144 + 16) = 2;
      *(v144 + 24) = v142;
      *(v144 + v143[9]) = 0;
      *(v144 + v143[10]) = 0;
      sub_10000E7B0();
      v119 = v143;
      return sub_10001B350(v116, v117, v118, v119);
    }

LABEL_27:
    type metadata accessor for ConditionDetailPlatterViewModel(0);
    sub_100003934();
    return sub_10001B350(v116, v117, v118, v119);
  }

  if (v61 > *(v57 + 16))
  {
    __break(1u);
  }

  else
  {
    v67 = v57;
    v68 = v61;
    v69 = v177;
    sub_100011468();
    sub_100020EAC();
    sub_100352AC0();
    v71 = v178;
    v70 = v179;
    v72 = *(v69 + *(v178 + 20));
    if (*(v72 + 16))
    {
      v73 = type metadata accessor for ConditionDetailChartInput(0);
      sub_100003810(v73);
      sub_100011468();
      v76 = v72 + v75 + *(v74 + 28);
      v77 = *(v76 + *(type metadata accessor for ConditionDetailChartDataInput(0) + 44));
    }

    else
    {
      v77 = _swiftEmptyArrayStorage;
    }

    sub_10003BD68();
    result = sub_100352B18(v69, v82);
    if (v68 < *(v67 + 16))
    {
      sub_100020EAC();
      v83 = v174;
      sub_100352AC0();
      v84 = *(v83 + *(v71 + 20));
      v85 = *(v84 + 16);
      v155[0] = v68;
      if (v85)
      {
        v86 = type metadata accessor for ConditionDetailChartInput(0);
        sub_100003810(v86);
        sub_100011468();
        v89 = v84 + v88 + *(v87 + 28);
        v90 = *(v89 + *(type metadata accessor for ConditionDetailChartDataInput(0) + 44));
      }

      else
      {
        v90 = _swiftEmptyArrayStorage;
      }

      sub_10003BD68();
      sub_100352B18(v83, v91);
      *&v202[0] = v77;
      sub_10035D958(v90);
      v92 = 0;
      v93 = *&v202[0];
      v178 = *(*&v202[0] + 16);
      v160 = (v190 + 16);
      LODWORD(v159) = enum case for Precipitation.none(_:);
      v158 = (v182 + 104);
      v176 = *&v202[0];
      v177 = v182 + 8;
      v174 = (v190 + 8);
      v94 = v175;
      v95 = (v182 + 8);
      while (1)
      {
        if (v178 == v92)
        {

          goto LABEL_27;
        }

        if (v92 >= *(v93 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        sub_100011468();
        (*(v98 + 16))(v94, v96 + v97 + *(v98 + 72) * v92, v70);
        v99 = v187;
        HourWeather.precipitation.getter();
        v101 = v188;
        v100 = v189;
        (*v158)(v188, v159, v189);
        sub_10035297C(&qword_100CAECD8, &type metadata accessor for Precipitation, &protocol conformance descriptor for Precipitation);
        v102 = dispatch thunk of static Equatable.== infix(_:_:)();
        v103 = *v95;
        (*v95)(v101, v100);
        v103(v99, v100);
        if ((v102 & 1) == 0)
        {
          break;
        }

        ++v92;
        (*v174)(v94, v70);
        v93 = v176;
      }

      v104 = v190 + 32;
      v105 = v173;
      (*(v190 + 32))(v173, v94, v70);
      v106 = v171;
      HourWeather.precipitation.getter();
      (*(v104 - 24))(v105, v70);
      v107 = v172;
      v108 = v106;
      v109 = v189;
      v110 = (*(v182 + 32))(v172, v108, v189);
      __chkstk_darwin(v110);
      sub_100003F28();
      *(v111 - 16) = v107;
      LOBYTE(v105) = sub_10069A75C(sub_1003529C4, v112, v176);

      v103(v107, v109);
      v62 = v157;
      v63 = v162;
      v61 = v155[0];
      if ((v105 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10034F5A8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Precipitation();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v13 - v8;
  HourWeather.precipitation.getter();
  LOBYTE(a2) = sub_1001CA754(v9, a2);
  v10 = *(v4 + 8);
  v10(v9, v3);
  if (a2)
  {
    v11 = 1;
  }

  else
  {
    HourWeather.precipitation.getter();
    (*(v4 + 104))(v6, enum case for Precipitation.none(_:), v3);
    v11 = sub_1001CA754(v9, v6);
    v10(v6, v3);
    v10(v9, v3);
  }

  return v11 & 1;
}

uint64_t sub_10034F738@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t *a9@<X8>)
{
  v222 = a8;
  v205 = a7;
  v212 = a6;
  object = a5;
  *&v226 = a4;
  v206 = a3;
  countAndFlagsBits = a2;
  v227 = a9;
  v220 = type metadata accessor for Date();
  v219 = *(v220 - 8);
  __chkstk_darwin(v220);
  v217 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v218 = &v176 - v12;
  v211 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
  __chkstk_darwin(v211);
  v202 = &v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v199 = &v176 - v15;
  v16 = sub_10022C350(qword_100CA5418, &qword_100A2F670);
  __chkstk_darwin(v16 - 8);
  v195 = &v176 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v197 = &v176 - v19;
  __chkstk_darwin(v20);
  v194 = &v176 - v21;
  __chkstk_darwin(v22);
  v189 = &v176 - v23;
  __chkstk_darwin(v24);
  v190 = &v176 - v25;
  __chkstk_darwin(v26);
  v188 = &v176 - v27;
  v201 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
  __chkstk_darwin(v201);
  v196 = &v176 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v191 = &v176 - v30;
  v221 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v200 = *(v221 - 8);
  __chkstk_darwin(v221);
  v192 = &v176 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v193 = &v176 - v33;
  __chkstk_darwin(v34);
  v186 = &v176 - v35;
  __chkstk_darwin(v36);
  v187 = &v176 - v37;
  __chkstk_darwin(v38);
  v210 = &v176 - v39;
  v40 = type metadata accessor for TemperatureScaleConfiguration.Gradient();
  __chkstk_darwin(v40 - 8);
  v184 = &v176 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for TemperatureScaleConfiguration();
  v182 = *(v183 - 8);
  __chkstk_darwin(v183);
  v180 = &v176 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for AppConfiguration();
  v178 = *(v179 - 8);
  __chkstk_darwin(v179);
  v44 = &v176 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
  __chkstk_darwin(v45 - 8);
  v185 = &v176 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v181 = &v176 - v48;
  __chkstk_darwin(v49);
  v51 = &v176 - v50;
  __chkstk_darwin(v52);
  v54 = &v176 - v53;
  v55 = type metadata accessor for ExtremaResult();
  v204 = *(v55 - 8);
  __chkstk_darwin(v55);
  v208 = &v176 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v207 = &v176 - v58;
  __chkstk_darwin(v59);
  v203 = &v176 - v60;
  __chkstk_darwin(v61);
  v209 = &v176 - v62;
  v63 = type metadata accessor for DetailCondition();
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v66 = &v176 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v69 = &v176 - v68;
  v70 = type metadata accessor for ConditionDetailInput.Input(0);
  v71 = *(v70 + 32);
  v72 = *(v64 + 16);
  v223 = a1;
  v198 = v71;
  v72(v69, a1 + v71, v63);
  v224 = v64;
  v73 = *(v64 + 88);
  v216 = v69;
  v225 = v63;
  result = v73(v69, v63);
  if (result == enum case for DetailCondition.conditions(_:))
  {
    sub_100095588();
    if (sub_100024D10(v54, 1, v55) == 1)
    {
      v51 = v54;
    }

    else
    {
      v112 = v55;
      v113 = v204;
      v114 = *(v204 + 32);
      v115 = v209;
      v114(v209, v54, v112);
      sub_100095588();
      if (sub_100024D10(v51, 1, v112) != 1)
      {
        v114(v203, v51, v112);
        sub_1000161C0((v213 + 536), *(v213 + 560));
        dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
        v116 = v180;
        AppConfiguration.temperatureScale.getter();
        (*(v178 + 8))(v44, v179);
        v117 = v184;
        TemperatureScaleConfiguration.gradient.getter();
        (*(v182 + 8))(v116, v183);
        v220 = sub_100100224(v117);
        CurrentWeather.temperature.getter();
        v118 = v181;
        sub_100095588();
        if (sub_100024D10(v118, 1, v112) == 1)
        {
          v119 = v114;
          (*(v113 + 16))(v207, v115, v112);
          v120 = sub_100024D10(v118, 1, v112);
          v121 = v221;
          v122 = v187;
          v123 = v186;
          v124 = v185;
          if (v120 != 1)
          {
            sub_1000180EC(v118, &qword_100CAC1B0, &unk_100A3B140);
          }
        }

        else
        {
          v119 = v114;
          v114(v207, v118, v112);
          v121 = v221;
          v122 = v187;
          v123 = v186;
          v124 = v185;
        }

        sub_100095588();
        v145 = sub_100024D10(v124, 1, v112);
        v177 = v112;
        if (v145 == 1)
        {
          (*(v113 + 16))(v208, v203, v112);
          if (sub_100024D10(v124, 1, v112) != 1)
          {
            sub_1000180EC(v124, &qword_100CAC1B0, &unk_100A3B140);
          }
        }

        else
        {
          v119(v208, v124, v112);
        }

        sub_10022C350(&qword_100CAECE8, &qword_100A3E808);
        v223 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
        v146 = (*(*(v223 - 8) + 80) + 32) & ~*(*(v223 - 8) + 80);
        v218 = *(*(v223 - 8) + 72);
        v147 = swift_allocObject();
        *(v147 + 16) = xmmword_100A2D320;
        v219 = v147;
        *&v226 = v147 + v146;
        v217 = objc_opt_self();
        v148 = [v217 mainBundle];
        v238._object = 0x8000000100AC2710;
        v149._countAndFlagsBits = 0x7961646F54;
        v238._countAndFlagsBits = 0xD000000000000031;
        v149._object = 0xE500000000000000;
        v150._countAndFlagsBits = 0;
        v150._object = 0xE000000000000000;
        v151 = NSLocalizedString(_:tableName:bundle:value:comment:)(v149, 0, v148, v150, v238);
        countAndFlagsBits = v151._countAndFlagsBits;
        object = v151._object;

        ExtremaResult.minValue.getter();
        ConditionUnits.temperature.getter();
        sub_10000C70C(0, &qword_100CA51B0, NSUnitTemperature_ptr);
        Measurement.init(value:unit:)();
        ExtremaResult.maxValue.getter();
        ConditionUnits.temperature.getter();
        Measurement.init(value:unit:)();
        v152 = v200;
        v153 = v188;
        (*(v200 + 16))(v188, v210, v121);
        sub_10001B350(v153, 0, 1, v121);
        Measurement<>.converted(rounded:)();
        Measurement<>.converted(rounded:)();
        v154 = v189;
        sub_100095588();
        if (sub_100024D10(v154, 1, v121) == 1)
        {
          sub_1000180EC(v153, qword_100CA5418, &qword_100A2F670);
          v155 = *(v152 + 8);
          v155(v123, v221);
          v155(v122, v221);
          v121 = v221;
          sub_1000180EC(v154, qword_100CA5418, &qword_100A2F670);
          v156 = 1;
          v157 = v190;
        }

        else
        {
          v157 = v190;
          Measurement<>.converted(rounded:)();
          sub_1000180EC(v153, qword_100CA5418, &qword_100A2F670);
          v155 = *(v152 + 8);
          v155(v123, v121);
          v155(v122, v121);
          v155(v154, v121);
          v156 = 0;
        }

        sub_10001B350(v157, v156, 1, v121);
        sub_100051BBC();
        sub_1003529E4();
        swift_storeEnumTagMultiPayload();
        v158 = v226;
        v159 = object;
        *v226 = countAndFlagsBits;
        *(v158 + 8) = v159;
        *(v158 + 16) = 0u;
        *(v158 + 32) = 0u;
        v129 = v223;
        sub_1003529E4();
        *(v158 + *(v129 + 24)) = 0;
        v160 = [v217 mainBundle];
        v239._object = 0x8000000100AC2750;
        v161._countAndFlagsBits = 0x6164726574736559;
        v161._object = 0xE900000000000079;
        v162._countAndFlagsBits = 0;
        v162._object = 0xE000000000000000;
        v239._countAndFlagsBits = 0xD00000000000002BLL;
        v163 = NSLocalizedString(_:tableName:bundle:value:comment:)(v161, 0, v160, v162, v239);
        v217 = v163._countAndFlagsBits;
        countAndFlagsBits = v163._object;

        ExtremaResult.minValue.getter();
        ConditionUnits.temperature.getter();
        v164 = v193;
        Measurement.init(value:unit:)();
        ExtremaResult.maxValue.getter();
        ConditionUnits.temperature.getter();
        v165 = v192;
        Measurement.init(value:unit:)();
        v166 = v194;
        sub_10001B350(v194, 1, 1, v221);
        Measurement<>.converted(rounded:)();
        Measurement<>.converted(rounded:)();
        v167 = v195;
        v168 = v221;
        sub_100095588();
        if (sub_100024D10(v167, 1, v168) == 1)
        {
          sub_1000180EC(v166, qword_100CA5418, &qword_100A2F670);
          v155(v165, v168);
          v155(v164, v168);
          v113 = v204;
          sub_1000180EC(v167, qword_100CA5418, &qword_100A2F670);
          v169 = 1;
          v170 = v197;
        }

        else
        {
          v170 = v197;
          Measurement<>.converted(rounded:)();
          sub_1000180EC(v166, qword_100CA5418, &qword_100A2F670);
          v155(v165, v168);
          v155(v164, v168);
          v155(v167, v168);
          v169 = 0;
        }

        sub_10001B350(v170, v169, 1, v168);
        v171 = &v218[v226];
        sub_100051BBC();
        sub_1003529E4();
        swift_storeEnumTagMultiPayload();
        v172 = countAndFlagsBits;
        *v171 = v217;
        *(v171 + 1) = v172;
        *(v171 + 1) = 0u;
        *(v171 + 2) = 0u;
        sub_1003529E4();
        v171[*(v129 + 24)] = 0;
        sub_10064C8F0(0, v219, v220, &v229);
        v173 = *(v113 + 8);
        v174 = v177;
        v173(v208, v177);
        v173(v207, v174);
        v155(v210, v168);
        v173(v203, v174);
        v173(v209, v174);
        v126 = v230;
        if (v230)
        {
          *&v175 = v233;
          v226 = v175;
          v127 = v231;
          v128 = v232;
          LOBYTE(v130) = v229;
          v228 = 0;
          result = (*(v224 + 8))(v216, v225);
          v132 = v226;
          v133 = 0;
          v131 = 0;
        }

        else
        {
          result = (*(v224 + 8))(v216, v225);
          v127 = 0;
          v128 = 0;
          v129 = 0;
          LOBYTE(v130) = 0;
          v131 = 0;
          v133 = -256;
          v132 = 0uLL;
        }

        goto LABEL_33;
      }

      (*(v113 + 8))(v115, v112);
    }

    sub_1000180EC(v51, &qword_100CAC1B0, &unk_100A3B140);
    result = (*(v224 + 8))(v216, v225);
    goto LABEL_32;
  }

  v75 = countAndFlagsBits;
  if (result != enum case for DetailCondition.humidity(_:))
  {
    if (result == enum case for DetailCondition.pressure(_:))
    {
      goto LABEL_32;
    }

    if (result != enum case for DetailCondition.precipitationTotal(_:) && result != enum case for DetailCondition.uvIndex(_:) && result != enum case for DetailCondition.visibility(_:) && result != enum case for DetailCondition.wind(_:))
    {
      goto LABEL_53;
    }
  }

  if ((countAndFlagsBits & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_51;
  }

  v79 = *(v70 + 28);
  v80 = v223;
  v81 = *(v223 + v79);
  v82 = *(v81 + 16);
  if (v82 <= countAndFlagsBits)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v83 = *(type metadata accessor for ConditionDetailChartInputs(0) - 8);
  v84 = v81 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
  v85 = *(v83 + 72);
  v86 = v84 + v85 * v75;
  v87 = v219;
  v88 = *(v219 + 16);
  v89 = v218;
  v90 = v220;
  v88(v218, v86, v220);
  if (v82 > v206)
  {
    v91 = v84 + v85 * v206;
    v92 = v217;
    v88(v217, v91, v90);
    v93 = v222;
    v94 = sub_10035128C(v80, v89, v226, object, v222);
    if (v95)
    {
      v97 = v95;
      v221 = v96;
      *&v226 = v94;
      v98 = sub_10035128C(v80, v92, v212, v205, v93);
      if (v99)
      {
        v101 = v98;
        v216 = v100;
        v222 = v99;
        sub_10022C350(&qword_100CAECE0, &qword_100A3E800);
        v102 = swift_allocObject();
        *(v102 + 16) = xmmword_100A2D320;
        v103 = objc_opt_self();
        v104.super.isa = [v103 mainBundle];
        v236._object = 0x8000000100AC2710;
        v105._countAndFlagsBits = 0x7961646F54;
        v236._countAndFlagsBits = 0xD000000000000031;
        v105._object = 0xE500000000000000;
        v106._countAndFlagsBits = 0;
        v106._object = 0xE000000000000000;
        v107 = NSLocalizedString(_:tableName:bundle:value:comment:)(v105, 0, v104, v106, v236);

        v109 = v224;
        v108 = v225;
        (*(v224 + 104))(v66, enum case for DetailCondition.precipitationTotal(_:), v225);
        LOBYTE(v104.super.isa) = static DetailCondition.== infix(_:_:)();
        (*(v109 + 8))(v66, v108);
        v110 = v101;
        if (v104.super.isa)
        {
          v111 = static Color.teal.getter();
        }

        else
        {
          v111 = static Color.white.getter();
        }

        *(v102 + 32) = v107;
        *(v102 + 48) = v226;
        *(v102 + 56) = v97;
        *(v102 + 64) = v221;
        *(v102 + 72) = v111;
        *(v102 + 80) = 1;
        v135 = [v103 mainBundle];
        v237._object = 0x8000000100AC2750;
        v136._countAndFlagsBits = 0x6164726574736559;
        v136._object = 0xE900000000000079;
        v137._countAndFlagsBits = 0;
        v137._object = 0xE000000000000000;
        v237._countAndFlagsBits = 0xD00000000000002BLL;
        v138 = NSLocalizedString(_:tableName:bundle:value:comment:)(v136, 0, v135, v137, v237);

        v139 = [objc_opt_self() systemFillColor];
        v140 = Color.init(uiColor:)();
        *(v102 + 88) = v138;
        v141 = v222;
        *(v102 + 104) = v110;
        *(v102 + 112) = v141;
        *(v102 + 120) = v216;
        *(v102 + 128) = v140;
        *(v102 + 136) = 0;
        sub_10074663C(v102, &v229);
        v130 = v229;
        v126 = v230;
        v127 = v231;
        v128 = v232;
        v226 = v233;
        v129 = v234;
        v142 = v235;
        v143 = *(v219 + 8);
        v144 = v220;
        v143(v217, v220);
        result = (v143)(v218, v144);
        v132 = v226;
        v131 = v130 & 0xFFFFFFFFFFFFFF00;
        v133 = v142 | 0x100;
        goto LABEL_33;
      }
    }

    v125 = *(v87 + 8);
    v125(v92, v90);
    result = (v125)(v89, v90);
LABEL_32:
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v129 = 0;
    LOBYTE(v130) = 0;
    v131 = 0;
    v132 = 0uLL;
    v133 = -256;
LABEL_33:
    v134 = v227;
    *v227 = v131 | v130;
    v134[1] = v126;
    v134[2] = v127;
    v134[3] = v128;
    *(v134 + 2) = v132;
    v134[6] = v129;
    *(v134 + 28) = v133;
    return result;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100351098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DetailCondition();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  result = (*(v6 + 88))(v9, v5);
  if (result == enum case for DetailCondition.conditions(_:))
  {
    sub_100035B30(v2 + 296, a2);
    return (*(v6 + 8))(v9, v5);
  }

  if (result == enum case for DetailCondition.humidity(_:))
  {
    v11 = v2 + 336;
    return sub_100035B30(v11, a2);
  }

  if (result == enum case for DetailCondition.pressure(_:) || result == enum case for DetailCondition.precipitationTotal(_:))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else if (result == enum case for DetailCondition.uvIndex(_:))
  {
    *(a2 + 24) = &type metadata for UVIndexComparisonTextBuilder;
    *(a2 + 32) = &off_100C7AD30;
  }

  else
  {
    if (result == enum case for DetailCondition.visibility(_:))
    {
      v11 = v2 + 376;
      return sub_100035B30(v11, a2);
    }

    if (result == enum case for DetailCondition.wind(_:))
    {
      v11 = v2 + 416;
      return sub_100035B30(v11, a2);
    }

    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10035128C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v124 = a5;
  v121 = a4;
  v138 = a3;
  v147 = a2;
  v109 = type metadata accessor for WeatherFormatPlaceholder();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  __chkstk_darwin(v7 - 8);
  v101 = &v97 - v8;
  v102 = type metadata accessor for NSUnitSpeed.WeatherFormatUsage();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v99 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v123 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v122 = &v97 - v11;
  v117 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_10022C350(&qword_100CAECF0, &unk_100A3E810);
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v113 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v114 = &v97 - v15;
  v16 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
  __chkstk_darwin(v16 - 8);
  v111 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v110 = &v97 - v19;
  __chkstk_darwin(v20);
  v128 = &v97 - v21;
  v144 = type metadata accessor for ExtremaResult();
  v136 = *(v144 - 8);
  __chkstk_darwin(v144);
  v120 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v97 = &v97 - v24;
  __chkstk_darwin(v25);
  v112 = &v97 - v26;
  v135 = type metadata accessor for Locale();
  v132 = *(v135 - 8);
  __chkstk_darwin(v135);
  v137 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for RoundedPrecipitation();
  v133 = *(v28 - 8);
  v134 = v28;
  __chkstk_darwin(v28);
  v131 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v126 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v127 = &v97 - v32;
  v33 = sub_10022C350(&qword_100CAB9B0, &qword_100A3A820);
  __chkstk_darwin(v33 - 8);
  v139 = &v97 - v34;
  v143 = type metadata accessor for DayWeather();
  v125 = *(v143 - 8);
  __chkstk_darwin(v143);
  v140 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Calendar();
  v141 = *(v36 - 8);
  v142 = v36;
  __chkstk_darwin(v36);
  v145 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TimeZone();
  v146 = *(v38 - 8);
  __chkstk_darwin(v38);
  v40 = &v97 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v97 - v43;
  v45 = type metadata accessor for DetailCondition();
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v48 = &v97 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for ConditionDetailInput.Input(0);
  (*(v46 + 16))(v48, a1 + *(v49 + 32), v45);
  v50 = (*(v46 + 88))(v48, v45);
  if (v50 == enum case for DetailCondition.conditions(_:))
  {
    (*(v46 + 8))(v48, v45);
    return 0;
  }

  if (v50 == enum case for DetailCondition.humidity(_:))
  {
    type metadata accessor for WeatherData(0);
    WeatherDataModel.dailyForecast.getter();
    Location.timeZone.getter();
    Forecast<>.humidity(for:timeZone:)();
    v54 = v53;
    (*(v146 + 8))(v40, v38);
    (*(v42 + 8))(v44, v41);
    if ((v54 & 1) == 0)
    {
      sub_10000C70C(0, &qword_100CA72F8, NSNumberFormatter_ptr);
      v64 = static NSNumberFormatter.percent.getter();
      isa = Double._bridgeToObjectiveC()().super.super.isa;
      v66 = [v64 stringFromNumber:isa];

      if (!v66)
      {
        return 0;
      }

      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v51;
    }

    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_10000703C(v55, qword_100D90B68);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Failed to get dayWeather when make comparison chart value", v58, 2u);
    }

    return 0;
  }

  if (v50 == enum case for DetailCondition.pressure(_:))
  {
    return 0;
  }

  if (v50 == enum case for DetailCondition.precipitationTotal(_:))
  {
    Location.timeZone.getter();
    v59 = v145;
    static Calendar.currentCalendar(with:)();
    v60 = (*(v146 + 8))(v40, v38);
    __chkstk_darwin(v60);
    v61 = v147;
    *(&v97 - 2) = v59;
    *(&v97 - 1) = v61;
    v62 = v139;
    sub_1001190BC();
    v63 = v143;
    if (sub_100024D10(v62, 1, v143) != 1)
    {
      v77 = v125;
      (*(v125 + 32))(v140, v62, v63);
      v78 = v127;
      DayWeather.precipitationAmount.getter();
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      v79 = v137;
      static Locale.current.getter();
      v80 = v131;
      Measurement<>.convertAndRoundPrecipitation(unitManager:locale:)();

      (*(v132 + 8))(v79, v135);
      v51 = RoundedPrecipitation.formattedString.getter();
      v81 = v126;
      RoundedPrecipitation.measurement.getter();
      v82 = v130;
      Measurement.value.getter();
      v83 = *(v129 + 8);
      v83(v81, v82);
      (*(v133 + 8))(v80, v134);
      v83(v78, v82);
      (*(v77 + 8))(v140, v63);
      (*(v141 + 8))(v145, v142);
      return v51;
    }

    sub_1000180EC(v62, &qword_100CAB9B0, &qword_100A3A820);
    (*(v141 + 8))(v59, v142);
    return 0;
  }

  if (v50 == enum case for DetailCondition.uvIndex(_:))
  {
    v67 = v128;
    sub_100095588();
    v68 = v144;
    if (sub_100024D10(v67, 1, v144) != 1)
    {
      v69 = v136;
      v70 = v112;
      (*(v136 + 32))(v112, v67, v68);
      ExtremaResult.maxValue.getter();
      v148 = round(v71);
      static Locale.autoupdatingCurrent.getter();
      sub_10014AB54();
      v72 = v113;
      FloatingPointFormatStyle.init(locale:)();
      v73 = v115;
      static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
      v74 = v114;
      v75 = v119;
      FloatingPointFormatStyle.precision(_:)();
      (*(v116 + 8))(v73, v117);
      v76 = *(v118 + 8);
      v76(v72, v75);
      sub_100352A3C();
      BinaryFloatingPoint.formatted<A>(_:)();
      v76(v74, v75);
      (*(v69 + 8))(v70, v68);
      return v149;
    }

    goto LABEL_28;
  }

  v84 = v144;
  if (v50 == enum case for DetailCondition.visibility(_:))
  {
    v67 = v110;
    sub_100095588();
    if (sub_100024D10(v67, 1, v84) != 1)
    {
      v85 = v136;
      v86 = v97;
      (*(v136 + 32))(v97, v67, v84);
      ExtremaResult.maxValue.getter();
      sub_1000161C0((v98 + 176), *(v98 + 200));
      v51 = dispatch thunk of VisibilityPlatterStringBuilderType.makeVisibilityWithUnitString(visibility:units:)();
      (*(v85 + 8))(v86, v84);
      return v51;
    }

    goto LABEL_28;
  }

  if (v50 == enum case for DetailCondition.wind(_:))
  {
    v67 = v111;
    sub_100095588();
    if (sub_100024D10(v67, 1, v84) != 1)
    {
      (*(v136 + 32))(v120, v67, v84);
      ExtremaResult.maxValue.getter();
      ConditionUnits.windGust.getter();
      sub_10000C70C(0, &qword_100CAC428, NSUnitSpeed_ptr);
      Measurement.init(value:unit:)();
      v87 = v100;
      v88 = v99;
      v89 = v102;
      (*(v100 + 104))(v99, enum case for NSUnitSpeed.WeatherFormatUsage.windGust(_:), v102);
      v90 = v101;
      sub_10001B350(v101, 1, 1, v135);
      static Set<>.full.getter();
      static WeatherFormatStyle<>.weather(_:usage:locale:)();

      sub_1000180EC(v90, &qword_100CAA9F0, qword_100A44F50);
      (*(v87 + 8))(v88, v89);
      v91 = v108;
      v92 = v107;
      v93 = v109;
      (*(v108 + 104))(v107, enum case for WeatherFormatPlaceholder.none(_:), v109);
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_10035297C(&qword_100CAECB0, &type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitSpeed.BaseWeatherFormatStyle);
      v94 = v104;
      v95 = v106;
      v96 = v122;
      v51 = Measurement.formatted<A>(_:placeholder:unitManager:)();

      (*(v91 + 8))(v92, v93);
      (*(v105 + 8))(v123, v95);
      (*(v103 + 8))(v96, v94);
      (*(v136 + 8))(v120, v84);
      return v51;
    }

LABEL_28:
    sub_1000180EC(v67, &qword_100CAC1B0, &unk_100A3B140);
    return 0;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10035270C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  DayWeather.date.getter();
  v7 = Calendar.isDate(_:inSameDayAs:)();
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

void *sub_100352808()
{
  sub_100006F14(v0 + 2);
  sub_100006F14(v0 + 7);
  sub_100006F14(v0 + 12);
  sub_100006F14(v0 + 17);
  sub_100006F14(v0 + 22);
  sub_100006F14(v0 + 27);
  sub_100006F14(v0 + 32);
  sub_100006F14(v0 + 37);
  sub_100006F14(v0 + 42);
  sub_100006F14(v0 + 47);
  sub_100006F14(v0 + 52);
  sub_100006F14(v0 + 57);
  sub_100006F14(v0 + 62);
  sub_100006F14(v0 + 67);
  return v0;
}

uint64_t sub_100352890()
{
  sub_100352808();

  return swift_deallocClassInstance();
}

unint64_t sub_100352908()
{
  result = qword_100CAECB8;
  if (!qword_100CAECB8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Int, &type metadata for Int, v0, v1);
    atomic_store(result, &qword_100CAECB8);
  }

  return result;
}

uint64_t sub_10035297C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003529E4()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

unint64_t sub_100352A3C()
{
  result = qword_100CAECF8;
  if (!qword_100CAECF8)
  {
    v3 = sub_10022E824(&qword_100CAECF0, &unk_100A3E810);
    result = swift_getWitnessTable(&protocol conformance descriptor for FloatingPointFormatStyle<A>, v3, v0, v1);
    atomic_store(result, &qword_100CAECF8);
  }

  return result;
}

uint64_t sub_100352AC0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100352B18(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100352B70(_WORD *a1, _WORD *a2)
{
  v4 = type metadata accessor for Location();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v58 - v12;
  v14 = sub_10022C350(&qword_100CAEE78, &qword_100A3E918);
  sub_1000037E8();
  __chkstk_darwin(v15);
  v17 = &v58 - v16;
  v18 = *a2;
  if (*a1 == 2)
  {
    if (v18 != 2)
    {
      goto LABEL_48;
    }

    goto LABEL_7;
  }

  if (v18 == 2)
  {
    goto LABEL_48;
  }

  v19 = 0;
  v20 = *a2 ^ *a1;
  if ((v20 & 1) == 0 && ((v20 >> 8) & 1) == 0)
  {
LABEL_7:
    sub_1000B9728();
    if ((v21 & 1) == 0)
    {
      goto LABEL_48;
    }

    sub_1000B9728();
    if ((v22 & 1) == 0)
    {
      goto LABEL_48;
    }

    v59 = v6;
    v60 = v4;
    v61 = type metadata accessor for NotificationSettingsInput(0);
    type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
    sub_1000BA4DC(&qword_100CAEE80, 255, &type metadata accessor for PredictedLocationsNotificationSubscription.Kind, &protocol conformance descriptor for PredictedLocationsNotificationSubscription.Kind);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v63 != v62)
    {
      goto LABEL_48;
    }

    v23 = v61;
    if ((sub_1000BA238() & 1) == 0)
    {
      goto LABEL_48;
    }

    v24 = v23[9];
    v25 = *(a2 + v24);
    v26 = PredictedLocationsAuthorizationState.rawValue.getter(*(a1 + v24));
    v28 = v27;
    v29 = PredictedLocationsAuthorizationState.rawValue.getter(v25);
    v31 = v26 == v29 && v28 == v30;
    if (v31)
    {
    }

    else
    {
      v32 = sub_100019490(v29);

      if ((v32 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v33 = v61[10];
    v34 = *(a2 + v33);
    v35 = LocationAuthorizationState.rawValue.getter(*(a1 + v33));
    v37 = v36;
    v38 = LocationAuthorizationState.rawValue.getter(v34);
    if (v35 == v38 && v37 == v39)
    {
    }

    else
    {
      v41 = sub_100019490(v38);

      if ((v41 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v42 = v61[11];
    v43 = *(v14 + 48);
    sub_100035AD0(a1 + v42, v17, &qword_100CA65D8, &unk_100A3D9D0);
    sub_100035AD0(a2 + v42, &v17[v43], &qword_100CA65D8, &unk_100A3D9D0);
    v44 = v60;
    if (sub_100024D10(v17, 1, v60) == 1)
    {
      if (sub_100024D10(&v17[v43], 1, v44) == 1)
      {
        sub_1000180EC(v17, &qword_100CA65D8, &unk_100A3D9D0);
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    sub_100035AD0(v17, v13, &qword_100CA65D8, &unk_100A3D9D0);
    if (sub_100024D10(&v17[v43], 1, v44) == 1)
    {
      (*(v59 + 8))(v13, v44);
LABEL_30:
      sub_1000180EC(v17, &qword_100CAEE78, &qword_100A3E918);
      goto LABEL_48;
    }

    v45 = v59;
    (*(v59 + 32))(v10, &v17[v43], v44);
    sub_1000BA4DC(&qword_100CA3A00, 255, &type metadata accessor for Location, &protocol conformance descriptor for Location);
    v46 = dispatch thunk of static Equatable.== infix(_:_:)();
    v47 = *(v45 + 8);
    v47(v10, v44);
    v47(v13, v44);
    sub_1000180EC(v17, &qword_100CA65D8, &unk_100A3D9D0);
    if (v46)
    {
LABEL_32:
      v48 = v61;
      sub_1000B9728();
      if (v49)
      {
        sub_10000826C();
        if (v31)
        {
          sub_10000826C();
          if (v31)
          {
            sub_10000826C();
            if (v31 && sub_1001AEF68(*(a1 + v48[16]) | (*(a1 + v48[16] + 2) << 16), *(a2 + v48[16]) | (*(a2 + v48[16] + 2) << 16)))
            {
              v50 = v48[17];
              v51 = *(a1 + v50);
              v52 = *(a1 + v50 + 8);
              v53 = (a2 + v50);
              v54 = v51 == *v53 && v52 == v53[1];
              if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                sub_1000BCFBC();
                if (v55)
                {
                  sub_1000BD330();
                  if (v56)
                  {
                    sub_10000826C();
                    if (v31)
                    {
                      v19 = *(a1 + v61[19]) ^ *(a2 + v61[19]) ^ 1;
                      return v19 & 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_48:
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_100353138@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v144 = a2;
  v3 = type metadata accessor for SavedLocation();
  v129[1] = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  sub_1000037D8();
  v156 = v5 - v4;
  v6 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  v159 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  sub_100003C38();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v130 = v129 - v11;
  sub_10000386C();
  __chkstk_darwin(v12);
  v158 = v129 - v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  v148 = v129 - v15;
  v147 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
  sub_1000037C4();
  v146 = v16;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v145 = v19 - v18;
  type metadata accessor for NotificationSubscription.Location();
  sub_1000037C4();
  v160 = v21;
  v161 = v20;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = type metadata accessor for Location();
  sub_1000037C4();
  v162 = v26;
  __chkstk_darwin(v27);
  sub_100003C38();
  v157 = v28 - v29;
  sub_10000386C();
  __chkstk_darwin(v30);
  v134 = v129 - v31;
  sub_10000386C();
  __chkstk_darwin(v32);
  v133 = v129 - v33;
  v34 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  __chkstk_darwin(v34 - 8);
  sub_100003C38();
  v37 = v35 - v36;
  __chkstk_darwin(v38);
  v151 = v129 - v39;
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v40);
  sub_1000037D8();
  v43 = (v42 - v41);
  sub_1000BC784(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v42 - v41, type metadata accessor for ModalViewState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v136 = v37;
  if (EnumCaseMultiPayload == 1)
  {
    if (v43[1])
    {
      v45 = 256;
    }

    else
    {
      v45 = 0;
    }

    v46 = v45 | *v43;
  }

  else
  {
    sub_1000DFE28(v43, type metadata accessor for ModalViewState);
    v46 = 2;
  }

  v139 = v46;
  v47 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v140 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v48 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v49 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v135 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  sub_100035AD0(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v151, &unk_100CE49F0, &unk_100A3AFA0);

  v142 = v48;

  v141 = v49;

  v51 = sub_10058D62C(v50);
  v143 = v47;
  v138 = v51;
  if ((v51 & 0xFE) == 2)
  {
    v52 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn;
    v54 = *(v52 + *(type metadata accessor for NotificationsOptInState(0) + 60));
    if (v54 != 1)
    {
      if (qword_100CA1F78 != -1)
      {
        swift_once();
      }

      sub_1000BA4DC(&qword_100CAEE88, v53, type metadata accessor for NotificationSettingsInputFactory, aE_25);
      Configurable.setting<A>(_:)();
      v54 = v165 ^ 1;
    }

    v137 = v54;
  }

  else
  {
    v137 = 0;
  }

  v149 = a1;
  v150 = (a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
  v55 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications + 8);
  v56 = *(v55 + 16);
  v152 = v9;
  v163 = v25;
  if (v56)
  {
    v165 = _swiftEmptyArrayStorage;

    sub_100014360();
    sub_100079CD4();
    v57 = v165;
    v155 = *(v160 + 16);
    v58 = (*(v160 + 80) + 32) & ~*(v160 + 80);
    v132 = v55;
    v59 = v55 + v58;
    v60 = *(v160 + 72);
    v61 = (v160 + 8);
    v153 = (v162 + 32);
    v154 = v60;
    v62 = v133;
    do
    {
      v63 = v161;
      v155(v24, v59, v161);
      NotificationSubscription.Location.location.getter();
      (*v61)(v24, v63);
      v165 = v57;
      v64 = v57[2];
      if (v64 >= v57[3] >> 1)
      {
        sub_100022934();
        v57 = v165;
      }

      v57[2] = v64 + 1;
      sub_10000C7B8();
      (*(v66 + 32))(v57 + v65 + *(v66 + 72) * v64, v62);
      v59 += v154;
      --v56;
    }

    while (v56);
    v153 = v57;

    v9 = v152;
    v67 = v163;
  }

  else
  {
    v67 = v25;
    v153 = _swiftEmptyArrayStorage;
  }

  v68 = *(v150 + 2);
  v69 = *(v68 + 2);
  if (v69)
  {
    v165 = _swiftEmptyArrayStorage;

    sub_100014360();
    sub_100079CD4();
    v70 = v165;
    v155 = *(v160 + 16);
    v71 = (*(v160 + 80) + 32) & ~*(v160 + 80);
    v133 = v68;
    v72 = &v68[v71];
    v154 = *(v160 + 72);
    v160 += 16;
    v73 = (v160 - 8);
    v74 = v134;
    do
    {
      v75 = v161;
      v155(v24, v72, v161);
      NotificationSubscription.Location.location.getter();
      (*v73)(v24, v75);
      v165 = v70;
      v76 = v70[2];
      if (v76 >= v70[3] >> 1)
      {
        sub_100022934();
        v70 = v165;
      }

      v70[2] = v76 + 1;
      sub_10000C7B8();
      (*(v78 + 32))(v70 + v77 + *(v78 + 72) * v76, v74);
      v72 += v154;
      --v69;
    }

    while (v69);
    v155 = v70;

    v9 = v152;
    v67 = v163;
  }

  else
  {
    v155 = _swiftEmptyArrayStorage;
  }

  v79 = type metadata accessor for NotificationsState(0);
  v80 = v150;
  (*(v146 + 16))(v145, &v150[*(v79 + 28)], v147);
  v81 = *v80;
  v82 = v149 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v83 = *(v82 + 2);
  LODWORD(v80) = *(v82 + 1);
  v84 = v136;
  sub_100035AD0(v151, v136, &unk_100CE49F0, &unk_100A3AFA0);
  v85 = type metadata accessor for CurrentLocation();
  v86 = sub_100024D10(v84, 1, v85);
  v154 = v79;
  LODWORD(v134) = v80;
  LODWORD(v133) = v83;
  v132 = v82;
  v131 = v81;
  if (v86 == 1)
  {
    sub_1000180EC(v84, &unk_100CE49F0, &unk_100A3AFA0);
    sub_10001B350(v148, 1, 1, v67);
  }

  else
  {
    CurrentLocation.location.getter();
    sub_1000DFE28(v84, &type metadata accessor for CurrentLocation);
  }

  v87 = v135;
  v88 = *(v87 + *(type metadata accessor for LocationsState(0) + 20));
  v89 = *(v88 + 16);
  v90 = _swiftEmptyArrayStorage;
  if (v89)
  {
    v164 = _swiftEmptyArrayStorage;

    sub_100014360();
    sub_1006A7C24();
    v90 = v164;
    sub_10000C7B8();
    v92 = v88 + v91;
    v94 = *(v93 + 72);
    v95 = v130;
    do
    {
      v96 = v156;
      sub_1000BC784(v92, v156, &type metadata accessor for SavedLocation);
      SavedLocation.location.getter();
      sub_1000DFE28(v96, &type metadata accessor for SavedLocation);
      v164 = v90;
      v97 = v90[2];
      if (v97 >= v90[3] >> 1)
      {
        sub_1006A7C24();
        v90 = v164;
      }

      v90[2] = v97 + 1;
      sub_10000C7B8();
      sub_1003541A8(v95, v90 + v98 + *(v99 + 72) * v97);
      v92 += v94;
      --v89;
    }

    while (v89);

    v67 = v163;
  }

  v100 = v90[2];
  if (v100)
  {
    v101 = v67;
    sub_10000C7B8();
    v103 = v90 + v102;
    v105 = *(v104 + 72);
    v160 = v162 + 32;
    v161 = v105;
    v106 = _swiftEmptyArrayStorage;
    do
    {
      v107 = v158;
      sub_100035AD0(v103, v158, &qword_100CA65D8, &unk_100A3D9D0);
      sub_1003541A8(v107, v9);
      if (sub_100024D10(v9, 1, v101) == 1)
      {
        sub_1000180EC(v9, &qword_100CA65D8, &unk_100A3D9D0);
      }

      else
      {
        v108 = *v160;
        (*v160)(v157, v9, v101);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10003C154();
          v106 = v112;
        }

        v109 = v106[2];
        if (v109 >= v106[3] >> 1)
        {
          sub_10003C154();
          v106 = v113;
        }

        v106[2] = v109 + 1;
        v101 = v163;
        sub_10000C7B8();
        v108(v106 + v110 + *(v111 + 72) * v109, v157, v101);
        v9 = v152;
      }

      v103 += v161;
      --v100;
    }

    while (v100);
  }

  else
  {

    v106 = _swiftEmptyArrayStorage;
  }

  sub_1000180EC(v151, &unk_100CE49F0, &unk_100A3AFA0);
  v114 = v149 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn;
  v115 = type metadata accessor for NotificationsOptInState(0);
  v116 = *(v114 + *(v115 + 64));
  v117 = *(v114 + *(v115 + 68));
  v118 = *(v132 + *(type metadata accessor for EnvironmentState(0) + 64));
  v119 = v150[*(v154 + 32)];
  v120 = v144;
  *v144 = v139;
  v121 = v155;
  *(v120 + 8) = v153;
  *(v120 + 16) = v121;
  v122 = type metadata accessor for NotificationSettingsInput(0);
  (*(v146 + 32))(v120 + v122[7], v145, v147);
  *(v120 + v122[8]) = v131;
  *(v120 + v122[9]) = v133;
  *(v120 + v122[10]) = v134;
  sub_1003541A8(v148, v120 + v122[11]);
  *(v120 + v122[12]) = v106;
  *(v120 + v122[13]) = v116;
  *(v120 + v122[14]) = v117;
  *(v120 + v122[15]) = v137 & 1;
  v123 = v120 + v122[16];
  v124 = v138;
  *(v123 + 2) = BYTE2(v138);
  *v123 = v124;
  v125 = (v120 + v122[17]);
  v126 = v143;
  *v125 = v140;
  v125[1] = v126;
  v127 = v141;
  v125[2] = v142;
  v125[3] = v127;
  *(v120 + v122[18]) = v118;
  *(v120 + v122[19]) = v119;
  return sub_10001B350(v120, 0, 1, v122);
}

uint64_t type metadata accessor for NotificationSettingsInput(uint64_t a1)
{
  result = qword_100CAEDF0;
  if (!qword_100CAEDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100353FA8(uint64_t a1)
{
  sub_1003540F8();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_100354148(319, &qword_100CAEE08, &type metadata accessor for Array);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      v6 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_100354148(319, &qword_100CAEE10, &type metadata accessor for Optional);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_1003540F8()
{
  if (!qword_100CAEE00)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CAEE00);
    }
  }
}

void sub_100354148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Location();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1003541A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100354288@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NewsArticleComponentContentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  type metadata accessor for NewsArticleComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  sub_100355208(v2, v11 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10035526C(v12, v8);
    v13 = *(v4 + 28);
    v14 = type metadata accessor for URL();
    sub_1000037E8();
    (*(v15 + 16))(a1, v8 + v13, v14);
    sub_10001E8DC();
    sub_1003552D0(v8, v16);
    v17 = a1;
    v18 = 0;
    v19 = v14;
  }

  else
  {
    v19 = type metadata accessor for URL();
    v17 = a1;
    v18 = 1;
  }

  return sub_10001B350(v17, v18, 1, v19);
}

uint64_t sub_1003543DC()
{
  v2 = type metadata accessor for NewsArticleComponentContentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  sub_100022958();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_100074814(v5);
  v6 = 0;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10035526C(v1, v0);
    v6 = *(v0 + *(v2 + 24));

    sub_10001E8DC();
    sub_1003552D0(v0, v7);
  }

  return v6;
}

uint64_t sub_1003544C8()
{
  v2 = type metadata accessor for NewsArticleComponentContentViewModel(0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  sub_100022958();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  sub_100355208(v1, v6 - v5);
  v8 = 0;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10035526C(v7, v0);
    v8 = *v0;

    sub_10001E8DC();
    sub_1003552D0(v0, v9);
  }

  return v8;
}

uint64_t sub_1003545AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticleComponentContentViewModel(0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = (v7 - v6);
  type metadata accessor for NewsArticleComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_100003C38();
  v12 = (v10 - v11);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  v16 = sub_10022C350(&qword_100CAEFF0, &qword_100A3EA38);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  v19 = &v26 - v18;
  v21 = *(v20 + 56);
  sub_100355208(a1, &v26 - v18);
  sub_100355208(a2, &v19[v21]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100355208(v19, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = *v15 ^ v19[v21];
      sub_100014370();
      v22 = v23 ^ 1;
      return v22 & 1;
    }

LABEL_7:
    sub_1000180EC(v19, &qword_100CAEFF0, &qword_100A3EA38);
    v22 = 0;
    return v22 & 1;
  }

  sub_100355208(v19, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10001E8DC();
    sub_1003552D0(v12, v24);
    goto LABEL_7;
  }

  sub_10035526C(&v19[v21], v8);
  v22 = sub_1003548C0(v12, v8);
  sub_1003552D0(v8, type metadata accessor for NewsArticleComponentContentViewModel);
  sub_1003552D0(v12, type metadata accessor for NewsArticleComponentContentViewModel);
  sub_100014370();
  return v22 & 1;
}

void sub_1003547CC(uint64_t a1)
{
  v4 = type metadata accessor for NewsArticleComponentContentViewModel(0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_100022958();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  sub_100074814(v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10035526C(v2, v1);
    Hasher._combine(_:)(1uLL);
    sub_100354D80(a1);
    sub_10001E8DC();
    sub_1003552D0(v1, v8);
  }

  else
  {
    v9 = *v2;
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v9);
  }
}

uint64_t sub_1003548C0(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_100003C38();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = &v59 - v17;
  v19 = sub_10022C350(qword_100CAD4D0, &unk_100A3EA40);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_100003C38();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  v26 = &v59 - v25;
  v27 = *a1 == *a2 && a1[1] == a2[1];
  if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  v62 = v15;
  v63 = v23;
  v64 = v10;
  v28 = type metadata accessor for NewsArticleComponentContentViewModel(0);
  v29 = v28[5];
  v30 = *(v19 + 48);
  sub_1000E594C(a1 + v29, v26);
  sub_1000E594C(a2 + v29, &v26[v30]);
  sub_100003A40(v26);
  if (v27)
  {
    sub_100003A40(&v26[v30]);
    if (v27)
    {
      v61 = v6;
      sub_1000180EC(v26, &qword_100CB3AB0, &unk_100A2FB80);
      goto LABEL_19;
    }

LABEL_14:
    v32 = v26;
LABEL_15:
    sub_1000180EC(v32, qword_100CAD4D0, &unk_100A3EA40);
    goto LABEL_16;
  }

  sub_1000E594C(v26, v18);
  sub_100003A40(&v26[v30]);
  if (v31)
  {
    (*(v6 + 8))(v18, v4);
    goto LABEL_14;
  }

  v35 = *(v6 + 32);
  v60 = v28;
  v36 = v64;
  v35(v64, &v26[v30], v4);
  sub_10001BEA8();
  sub_1003551C0(v37, v38, &protocol conformance descriptor for URL);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v61 = v6;
  v40 = *(v6 + 8);
  v41 = v36;
  v28 = v60;
  v40(v41, v4);
  v40(v18, v4);
  sub_1000180EC(v26, &qword_100CB3AB0, &unk_100A2FB80);
  if ((v39 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v42 = v28[6];
  v43 = *(a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = v43 == *v45 && v44 == v45[1];
  if (!v46 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  v47 = v28;
  v48 = v28[8];
  v49 = *(v19 + 48);
  v50 = v63;
  sub_1000E594C(a1 + v48, v63);
  sub_1000E594C(a2 + v48, v50 + v49);
  sub_100003A40(v50);
  if (v27)
  {
    sub_100003A40(v50 + v49);
    if (v27)
    {
      sub_1000180EC(v50, &qword_100CB3AB0, &unk_100A2FB80);
LABEL_35:
      v33 = *(a1 + v47[9]) ^ *(a2 + v47[9]) ^ 1;
      return v33 & 1;
    }

    goto LABEL_33;
  }

  v51 = v62;
  sub_1000E594C(v50, v62);
  sub_100003A40(v50 + v49);
  if (v52)
  {
    (*(v61 + 8))(v51, v4);
LABEL_33:
    v32 = v50;
    goto LABEL_15;
  }

  v53 = v61;
  v54 = v64;
  (*(v61 + 32))(v64, v50 + v49, v4);
  sub_10001BEA8();
  sub_1003551C0(v55, v56, &protocol conformance descriptor for URL);
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  v58 = *(v53 + 8);
  v58(v54, v4);
  v58(v51, v4);
  sub_1000180EC(v50, &qword_100CB3AB0, &unk_100A2FB80);
  if (v57)
  {
    goto LABEL_35;
  }

LABEL_16:
  v33 = 0;
  return v33 & 1;
}

void sub_100354D80(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for URL();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_100003C38();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v23 - v16;
  String.hash(into:)();
  v18 = type metadata accessor for NewsArticleComponentContentViewModel(0);
  sub_1000E594C(v2 + v18[5], v17);
  if (sub_100024D10(v17, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v9, v17, v3);
    Hasher._combine(_:)(1u);
    sub_10001BEA8();
    sub_1003551C0(v19, v20, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v9, v3);
  }

  String.hash(into:)();
  sub_10001BEA8();
  sub_1003551C0(v21, v22, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  sub_1000E594C(v2 + v18[8], v14);
  if (sub_100024D10(v14, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v9, v14, v3);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v9, v3);
  }

  Hasher._combine(_:)(*(v2 + v18[9]));
}

Swift::Int sub_100355054(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int sub_100355134(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_1003551C0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100355208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticleComponentViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10035526C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticleComponentContentViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003552D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

Weather::LocationAuthorizationState_optional __swiftcall LocationAuthorizationState.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C43238, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

Weather::LocationAuthorizationState_optional sub_1003553B0@<W0>(Swift::String *a1@<X0>, Weather::LocationAuthorizationState_optional *a2@<X8>)
{
  result.value = LocationAuthorizationState.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t sub_1003553E0@<X0>(unint64_t *a1@<X8>)
{
  result = LocationAuthorizationState.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t LocationAuthorizationState.locationAccessData.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = **(&off_100C4FA40 + a1);
  v4 = type metadata accessor for LocationAccessData();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

unint64_t sub_100355554()
{
  result = qword_100CAF010;
  if (!qword_100CAF010)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationAuthorizationState, &type metadata for LocationAuthorizationState, v0, v1);
    atomic_store(result, &qword_100CAF010);
  }

  return result;
}

uint64_t sub_1003555A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = static PredictedLocationsAuthorizationState.read(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PredictedLocationsAuthorizationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LocationAuthorizationState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100355744()
{
  result = qword_100CAF028[0];
  if (!qword_100CAF028[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationAuthorizationState, &type metadata for LocationAuthorizationState, v0, v1);
    atomic_store(result, qword_100CAF028);
  }

  return result;
}

uint64_t sub_100355798()
{
  StubLocalSearchRequestService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100355844(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  while (v5)
  {
    v6 = v2;
LABEL_10:
    v7 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(a2 + 56) + (v7 | (v6 << 6))) == (result & 1))
    {
      return 1;
    }
  }

  while (1)
  {
    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v6 >= ((v3 + 63) >> 6))
    {
      return 0;
    }

    v5 = *(a2 + 64 + 8 * v6);
    ++v2;
    if (v5)
    {
      v2 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void *sub_1003558E0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___stateManager;
  swift_beginAccess();
  sub_1000955E0(v1 + v3, &v7, &qword_100CAF450, &qword_100A3EDB0);
  if (v8)
  {
    return sub_100013188(&v7, a1);
  }

  sub_1000180EC(&v7, &qword_100CAF450, &qword_100A3EDB0);
  sub_1000359CC(&v7);
  sub_1000161C0(&v7, v8);
  sub_10022C350(&qword_100CAF458, &qword_100A3EDB8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    sub_100013188(&v5, a1);
    sub_100006F14(&v7);
    sub_100035B30(a1, &v7);
    swift_beginAccess();
    sub_100035B94(&v7, v1 + v3, &qword_100CAF450, &qword_100A3EDB0);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100355A30@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___windowFocusManager;
  swift_beginAccess();
  sub_1000955E0(v1 + v3, &v7, &unk_100CB3D50, &qword_100A3ED98);
  if (v8)
  {
    return sub_100013188(&v7, a1);
  }

  sub_1000180EC(&v7, &unk_100CB3D50, &qword_100A3ED98);
  sub_1000359CC(&v7);
  sub_1000161C0(&v7, v8);
  sub_10022C350(&qword_100CAF430, &unk_100A9F4C0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    sub_100013188(&v5, a1);
    sub_100006F14(&v7);
    sub_100035B30(a1, &v7);
    swift_beginAccess();
    sub_100035B94(&v7, v1 + v3, &unk_100CB3D50, &qword_100A3ED98);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100355B80@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___debugPresenter;
  swift_beginAccess();
  sub_1000955E0(v1 + v3, &v7, &qword_100CAF438, &qword_100A3EDA0);
  if (v8)
  {
    return sub_100013188(&v7, a1);
  }

  sub_1000180EC(&v7, &qword_100CAF438, &qword_100A3EDA0);
  sub_1000359CC(&v7);
  sub_1000161C0(&v7, v8);
  sub_10022C350(&unk_100CAF440, &qword_100A3EDA8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    sub_100013188(&v5, a1);
    sub_100006F14(&v7);
    sub_100035B30(a1, &v7);
    swift_beginAccess();
    sub_100035B94(&v7, v1 + v3, &qword_100CAF438, &qword_100A3EDA0);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100355CD0()
{
  v1 = OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___testManager;
  if (*(v0 + OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___testManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___testManager);
LABEL_5:

    return v2;
  }

  v3 = v0;
  sub_1000359CC(v5);
  sub_1000161C0(v5, v5[3]);
  type metadata accessor for PerformanceTestManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v2 = result;
    sub_100006F14(v5);
    *(v3 + v1) = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id LocalSearchCompleterManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100355F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();

  return Configurable.setting<A>(_:)();
}

uint64_t sub_100355F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();

  return Configurable.setting<A>(_:_:)(a1, a2, a3, ObjectType, a7);
}

uint64_t sub_100355FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return Configurable.setting<A>(_:defaultValue:_:)(a1, a2, a3, a4, ObjectType, a8);
}

uint64_t sub_100356078()
{
  v1 = v0;
  v20 = type metadata accessor for EndReason();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SessionEndData();
  sub_1000037C4();
  v21 = v7;
  __chkstk_darwin(v8);
  sub_100005888();
  sub_10000C70C(0, &qword_100CA2E40, OS_os_log_ptr);
  v9 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  sub_1000167F8("Application will terminate");
  os_log(_:dso:log:type:_:)(v10);

  v11 = OBJC_IVAR____TtC7Weather11AppDelegate_sessionManager;
  if (!*(v1 + OBJC_IVAR____TtC7Weather11AppDelegate_sessionManager) || !*(v1 + OBJC_IVAR____TtC7Weather11AppDelegate_appSessionManager))
  {
    if (qword_100CA26C8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000703C(v12, qword_100D90AC0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Terminating app without session managers", v15, 2u);
    }
  }

  sub_100074834();
  sub_1000161C0(v22, v23);
  sub_10022C350(&unk_100CAF460, &unk_100A3EDC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  sub_100006F14(v22);
  sub_1006ACB80();
  if (*(v1 + v11))
  {

    SessionManager.tracker.getter();

    (*(v3 + 104))(v6, enum case for EndReason.forceQuit(_:), v20);
    SessionEndData.init(endReason:)();
    sub_100015F40(&qword_100CAE2B8, 255, &type metadata accessor for SessionEndData, &protocol conformance descriptor for SessionEndData);
    Tracker.push<A>(data:traits:file:line:)();

    v17 = sub_100003984();
    v18(v17);
  }

  sub_100074834();
  sub_1000161C0(v22, v23);
  sub_1000038D8();
  type metadata accessor for LazyEventProcessor();
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (!result)
  {
    goto LABEL_16;
  }

  LazyEventProcessor.resolve()();

  sub_100006F14(v22);
  if (*(v1 + OBJC_IVAR____TtC7Weather11AppDelegate_appSessionManager))
  {

    AppSessionManager.appSessionDidTerminate(timeout:)(1.0);
  }
}

uint64_t sub_100356530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();

  return Updatable.save<A>(setting:value:)();
}

uint64_t sub_100356588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return Updatable.reset<A>(setting:)(a1, ObjectType, a5);
}

uint64_t sub_1003565D8(uint64_t a1)
{
  swift_getObjectType();

  return Updatable.apply(preset:)();
}

uint64_t sub_100356628@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ContainerScope();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_100005888();
  sub_100015EDC();
  v3 = sub_1000194B4();
  v4(v3);
  v5 = ContainerManager.container(for:)();

  v6 = sub_100003984();
  v7(v6);
  result = type metadata accessor for Container();
  a1[3] = result;
  *a1 = v5;
  return result;
}

uint64_t sub_1003567D4(uint64_t a1)
{
  sub_100355A30(v5);
  v2 = v6;
  v3 = v7;
  sub_1000161C0(v5, v6);
  (*(v3 + 8))(a1, v2, v3);
  return sub_100006F14(v5);
}

uint64_t sub_100356894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100355CD0();
  LOBYTE(a3) = sub_1009AA050(a2, a3);

  return a3 & 1;
}

void sub_100356990(void *a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "buildMenuWithBuilder:", a1);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA24E0 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  if (v8 == 1)
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == 1)
    {
      sub_10000C70C(0, &unk_100CAF420, UIMenuSystem_ptr);
      v5 = [a1 system];
      v6 = [objc_opt_self() mainSystem];
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        sub_100003F38();
        sub_100003F38();
        sub_100003F38();
        sub_100003F38();
        sub_100003F38();
        sub_100003F38();
        if ((static Solarium.isEnabled.getter() & 1) == 0)
        {
          sub_100003F38();
        }

        sub_100003F38();
        sub_100003F38();
      }
    }
  }
}

void sub_100356C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();

  [a5 resetLocationAuthorizationForBundleId:v6 orBundlePath:v7];
}

uint64_t sub_100356CF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_100042FB0(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100013188(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_100356DCC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 121))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100356E0C(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100356E7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100356EBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_100356F34(uint64_t a1)
{
  sub_100008298(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((*(v2 + 32) ^ *(v1 + 32)) & 1) != 0)
  {
    return 0;
  }

  v8 = *(v2 + 48);
  v9 = *(v1 + 48);
  if (v8)
  {
    if (v9)
    {
      v10 = *(v2 + 40) == *(v1 + 40) && v8 == v9;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v9;
}

uint64_t sub_100356FE0(uint64_t a1)
{
  sub_100008298(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v6 = *(v2 + 24);
  v7 = *(v1 + 24);
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_17;
    }

    v8 = *(v2 + 16) == *(v1 + 16) && v6 == v7;
    if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v7)
  {
LABEL_17:
    v9 = 0;
    return v9 & 1;
  }

  if (!sub_100356F34(v2 + 32))
  {
    goto LABEL_17;
  }

  v9 = *(v2 + 88) ^ *(v1 + 88) ^ 1;
  return v9 & 1;
}

uint64_t sub_10035707C(uint64_t a1)
{
  sub_100008298(a1);
  v5 = v5 && v3 == v4;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(v2 + 16) == *(v1 + 16) ? (v6 = *(v2 + 24) == *(v1 + 24)) : (v6 = 0), (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(v2 + 32) == *(v1 + 32) ? (v7 = *(v2 + 40) == *(v1 + 40)) : (v7 = 0), (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(v2 + 48) == *(v1 + 48) ? (v8 = *(v2 + 56) == *(v1 + 56)) : (v8 = 0), (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && sub_100356F34(v2 + 64)))))
  {
    v9 = *(v2 + 120) ^ *(v1 + 120) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_100357140(uint64_t a1, uint64_t a2)
{
  if ((static WeatherDescription.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for LocationComponentHeaderViewModel.Description(0), v5 = a1 + *(v4 + 20), v6 = *(v5 + 32), v11[1] = *(v5 + 16), v11[2] = v6, v12 = *(v5 + 48), v11[0] = *v5, v7 = (a2 + *(v4 + 20)), v16 = *(v7 + 6), v8 = v7[2], v14 = v7[1], v15 = v8, v13 = *v7, sub_100356F34(v11)))
  {
    v9 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_1003571F8()
{
  sub_10000C778();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v11 = *(v1 + 40);
  v10 = *(v1 + 48);
  v12 = *v0 == *v1 && *(v0 + 8) == *(v1 + 8);
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v13 = v2 == v7 && v3 == v8;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v4 ^ v9) & 1) == 0 && v5 && v10 && (v6 != v11 || v5 != v10))
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  sub_10000536C();
}

uint64_t sub_1003572E4()
{
  v1 = type metadata accessor for LocationComponentHeaderViewModel.Description(0);
  __chkstk_darwin(v1 - 8);
  sub_1000037D8();
  v4 = v3 - v2;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = (v7 - v6);
  sub_1001CCDB8(v0, v7 - v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v9 = *v8;

      goto LABEL_5;
    case 2u:
      memcpy(__dst, v8, 0x79uLL);
      v9 = __dst[0];

      sub_10035802C(__dst);
      break;
    case 3u:
      sub_100357FC8(v8, v4);
      v9 = WeatherDescription.string.getter();
      sub_10001E8F4();
      sub_100188358(v4, v10);
      break;
    default:
      v9 = *v8;

LABEL_5:

      break;
  }

  return v9;
}

void sub_100357470()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for LocationComponentHeaderViewModel.Description(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = (v11 - v10);
  sub_1001CCDB8(v1, v11 - v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v13 = v12[4];
      v14 = v12[5];
      v15 = v12[6];
      v16 = v12[7];
      v17 = *(v12 + 64);
      v18 = v12[9];
      v19 = v12[10];

      break;
    case 2u:
      memcpy(v22, v12, 0x79uLL);
      v13 = v22[8];
      v14 = v22[9];
      v15 = v22[10];
      v16 = v22[11];
      v17 = LOBYTE(v22[12]);
      v18 = v22[13];
      v19 = v22[14];

      sub_10035802C(v22);
      break;
    case 3u:
      sub_100357FC8(v12, v8);
      v20 = v8 + *(v4 + 20);
      v13 = *v20;
      v14 = *(v20 + 8);
      v15 = *(v20 + 16);
      v16 = *(v20 + 24);
      v17 = *(v20 + 32);
      v18 = *(v20 + 40);
      v19 = *(v20 + 48);

      sub_10001E8F4();
      sub_100188358(v8, v21);
      break;
    case 4u:
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      v16 = v12[3];
      v17 = *(v12 + 32);
      v18 = v12[5];
      v19 = v12[6];
      break;
    default:
      sub_100188358(v12, type metadata accessor for LocationComponentHeaderViewModel);
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      break;
  }

  *v3 = v13;
  v3[1] = v14;
  v3[2] = v15;
  v3[3] = v16;
  v3[4] = v17;
  v3[5] = v18;
  v3[6] = v19;
  sub_10000536C();
}