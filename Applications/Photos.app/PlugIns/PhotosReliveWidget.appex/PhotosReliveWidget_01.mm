void sub_10001EB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100023FC4();
  v37 = v12;
  sub_100024130();
  v13 = sub_1000327C0();
  sub_100011D60();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100011DAC();
  v19 = v18 - v17;
  v20 = sub_100032800();
  sub_100011D60();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_100011DAC();
  sub_100024220();
  v24 = type metadata accessor for PhotosReliveWidgetSize(0);
  sub_100011D74();
  __chkstk_darwin(v25);
  sub_100011DAC();
  v28 = v27 - v26;
  (*(v22 + 16))(v9, v8, v20);
  sub_1000327D0();
  swift_getKeyPath();
  v29 = sub_1000327B0();

  v31 = *(v15 + 8);
  v30 = v15 + 8;
  v31(v19, v13);
  if (v29)
  {
    sub_100023EE0();
    if (v32)
    {
      v33 = *(v29 + 32);
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
    v30 = 1;
  }

  sub_1000327E0();
  sub_1000327A0();
  sub_10002410C();
  (*(v22 + 8))(v9, v20);
  v34 = (v28 + *(v24 + 20));
  *v34 = v10;
  v34[1] = v11;
  v35 = v28 + *(v24 + 24);
  *v35 = v33;
  *(v35 + 8) = v30;
  [objc_opt_self() placeholderEntryForContentType:v37];
  sub_100023D94();
  sub_100022A1C(v28, v36);
  sub_100023FE0();
}

void sub_10001ED7C(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  sub_10001EB20(a1, a3, a2, a3, a4, a5, a6, a7);
  *a8 = v9;
  *(a8 + 8) = 2;
  *(a8 + 10) = 0;
  *(a8 + 16) = 0;
}

uint64_t sub_10001EDB8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100023D38;

  return sub_10001BDA0();
}

uint64_t sub_10001EE64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100023D64;

  return sub_10001D680();
}

uint64_t sub_10001EF18(uint64_t *a1, uint64_t a2, double (*a3)(uint64_t *, __n128), uint64_t a4)
{
  v7 = *a1;
  v8 = a1[1];

  return sub_10001C8A4(v7, v8, a2, a3, a4);
}

uint64_t sub_10001EF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100023D64;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10001F04C()
{
  sub_1000230A4(0, &qword_100045428, OS_os_log_ptr);
  result = sub_100032B00();
  qword_100048348 = result;
  return result;
}

uint64_t sub_10001F0C4()
{
  result = [objc_opt_self() isPreflightFeatureEnabled];
  if (result)
  {
    v1 = objc_allocWithZone(LSApplicationRecord);
    v2 = sub_100021064(0xD000000000000019, 0x8000000100036040, 0);
    sub_1000230A4(0, &qword_100045470, OS_dispatch_queue_ptr);
    v3 = sub_100032A90();
    v4 = [objc_allocWithZone(PDCPreflightManager) initWithTargetQueue:v3];

    if ([v4 requiresPreflightForApplicationRecord:v2])
    {
      v5 = sub_100032A40();
      if (qword_100044630 != -1)
      {
        swift_once();
      }

      sub_100031D30(v5, &_mh_execute_header, qword_100048348, "Photos requires privacy disclosure", 34, 2, &_swiftEmptyArrayStorage);

      return 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *sub_10001F348(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 24 * v1 + 8);

  v3 = v2;
  return v2;
}

uint64_t sub_10001F3D8(uint64_t a1, uint64_t *a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v69 = a1;
  v70 = a2;
  v9 = sub_100031C40();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v64 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v64 - v18;
  __chkstk_darwin(v17);
  v21 = &v64 - v20;
  if (!a3)
  {
    v25 = 0xE400000000000000;
    v23 = 1701736302;
    goto LABEL_5;
  }

  if (!a4)
  {
    v47 = a3;

    PhotosReliveWidgetEntry.date.getter(v47);
    sub_100031C30();
    v48 = sub_100031C00();
    v49 = v9;
    v52 = *(v10 + 8);
    v51 = v10 + 8;
    v50 = v52;
    v52(v19, v49);
    if ((v48 & 1) == 0)
    {
      sub_100032780();

      v61 = v21;
      v62 = v49;
      goto LABEL_16;
    }

    PhotosReliveWidgetEntry.endDate.getter(v47);
    sub_100031BE0();
    v54 = v53;
    v68 = v49;
    v50(v19, v49);
    if (v54 < 1200.0)
    {
      __break(1u);
    }

    else
    {
      v67 = v51;
      sub_100021D68(1200.0, v54);
      sub_100031BF0();
      v51 = sub_100032A40();
      if (qword_100044630 == -1)
      {
LABEL_14:
        v55 = qword_100048348;
        sub_10000D4FC(&qword_100045430, &qword_1000348D8);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_1000334B0;
        v57 = sub_100031BC0();
        v59 = v58;
        *(v56 + 56) = &type metadata for String;
        *(v56 + 64) = sub_100022B0C();
        *(v56 + 32) = v57;
        *(v56 + 40) = v59;
        *(v56 + 96) = &type metadata for Double;
        *(v56 + 104) = &protocol witness table for Double;
        *(v56 + 72) = v54;
        sub_100031D30(v51, &_mh_execute_header, v55, "next timeline reload at %@, last entry duration %.f", 51, 2, v56);

        sub_100032770();

        v60 = v68;
        v50(v19, v68);
        v61 = v21;
        v62 = v60;
LABEL_16:
        v50(v61, v62);
        v46 = type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration(0);
        v44 = v70;
        v45 = 1;
        return sub_10000D904(v44, v45, 1, v46);
      }
    }

    swift_once();
    goto LABEL_14;
  }

  v22 = [a3 localIdentifier];
  v23 = sub_100032910();
  v25 = v24;

LABEL_5:
  v68 = v23;
  v26 = sub_10001F99C(v23, v25, a6, 1200.0);
  sub_100021D68(0.0, 300.0);
  sub_100031C10();
  v27 = sub_100032A40();
  if (qword_100044630 != -1)
  {
    swift_once();
  }

  v28 = qword_100048348;
  v29 = *(v10 + 16);
  v29(v13, v16, v9);
  if (os_log_type_enabled(v28, v27))
  {
    v30 = swift_slowAlloc();
    v67 = v25;
    v31 = v30;
    v32 = swift_slowAlloc();
    v66 = v29;
    v33 = v32;
    v71 = v32;
    *v31 = 136315138;
    v34 = sub_100031BC0();
    v35 = v10;
    v36 = v9;
    v37 = v34;
    v39 = v38;
    v65 = v27;
    v40 = *(v35 + 8);
    v64 = v28;
    v40(v13, v36);
    v41 = sub_100021264(v37, v39, &v71);

    *(v31 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v64, v65, "scheduled timeline reload because content unavailable at %s", v31, 0xCu);
    sub_100022C1C(v33);
    v29 = v66;

    v25 = v67;
  }

  else
  {
    v40 = *(v10 + 8);
    v40(v13, v9);
    v36 = v9;
  }

  v42 = v70;
  *v70 = v68;
  v42[1] = v25;
  *(v42 + 2) = v26;
  v43 = type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration(0);
  v29(v42 + *(v43 + 24), v16, v36);
  sub_100032770();
  v40(v16, v36);
  v44 = v42;
  v45 = 0;
  v46 = v43;
  return sub_10000D904(v44, v45, 1, v46);
}

double sub_10001F99C(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_100031C40();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000D4FC(&qword_1000453E0, &qword_1000348B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - v13;
  v15 = type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration(0);
  __chkstk_darwin(v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014188(a3, v14);
  if (sub_10000D8C4(v14, 1, v15) == 1)
  {
    sub_100013B00(v14, &qword_1000453E0, &qword_1000348B0);
    return a4;
  }

  sub_100022904(v14, v17);
  v18 = *(v17 + 1);
  if (!v18 || (*v17 == a1 ? (v19 = v18 == a2) : (v19 = 0), !v19 && (sub_100032CD0() & 1) == 0))
  {
LABEL_15:
    sub_100022A1C(v17, type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration);
    return a4;
  }

  sub_100031C30();
  sub_10002283C(&qword_100045440, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v20 = sub_100032880();
  (*(v9 + 8))(v11, v8);
  if (v20)
  {
    v21 = sub_100032A10();
    if (qword_100044618 != -1)
    {
      swift_once();
    }

    v22 = qword_100045360;
    if (os_log_type_enabled(qword_100045360, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_100021264(a1, a2, &v28);
      _os_log_impl(&_mh_execute_header, v22, v21, "Not increasing reload delay for entry id %{public}s because reload occurred before scheduled time", v23, 0xCu);
      sub_100022C1C(v24);
    }

    a4 = *(v17 + 2);
    goto LABEL_15;
  }

  v25 = *(v17 + 2);
  sub_100022A1C(v17, type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration);
  if (v25 + v25 <= 3600.0)
  {
    return v25 + v25;
  }

  else
  {
    return 3600.0;
  }
}

void PhotosReliveFeaturedWidget.body.getter()
{
  sub_100011F0C();
  v79 = sub_10000D4FC(&qword_1000446A8, &unk_100033540);
  sub_100011D60();
  v77 = v0;
  sub_100011DBC();
  __chkstk_darwin(v1);
  sub_100011DFC();
  sub_100023F80(v2);
  sub_10000D4FC(&qword_1000446A0, &unk_100034400);
  sub_100011D60();
  sub_100011DBC();
  __chkstk_darwin(v3);
  sub_100011DFC();
  sub_100023F80(v4);
  v83 = sub_10000D4FC(&qword_100044698, &unk_100033530);
  sub_100011D60();
  v81 = v5;
  sub_100011DBC();
  __chkstk_darwin(v6);
  sub_100011DFC();
  sub_100023F80(v7);
  sub_10000D4FC(&qword_100044690, &unk_100034410);
  sub_100011D60();
  sub_100011DBC();
  __chkstk_darwin(v8);
  sub_100011DFC();
  v84 = sub_10000D4FC(&qword_1000446E8, &qword_100033570);
  sub_100011D60();
  v82 = v9;
  sub_100011DBC();
  __chkstk_darwin(v10);
  sub_100011DFC();
  v80 = v11;
  sub_10000D4FC(&qword_1000446E0, &qword_100034420);
  sub_100011D60();
  sub_100011DBC();
  __chkstk_darwin(v12);
  sub_100011DFC();
  v13 = objc_opt_self();
  sub_100021F20([v13 mainBundle]);
  if (v14)
  {
    sub_10000D4FC(&qword_100045370, &qword_100034428);
    v15 = sub_100032750();
    sub_100011D60();
    v17 = v16;
    v19 = *(v18 + 72);
    v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1000343E0;
    v21 = v75 + v20;
    v22 = *(v17 + 104);
    v22(v21, enum case for WidgetFamily.systemSmall(_:), v15);
    v22(v21 + v19, enum case for WidgetFamily.systemMedium(_:), v15);
    v22(v21 + 2 * v19, enum case for WidgetFamily.systemLarge(_:), v15);
    v22(v21 + 3 * v19, enum case for WidgetFamily.systemExtraLarge(_:), v15);
    v23 = sub_100032080();
    v25 = v24;
    LOBYTE(v17) = v26;
    v28 = v27;
    v72 = sub_100032080();
    LOBYTE(v21) = v29;
    v31 = v30;
    v33 = [v13 mainBundle];
    sub_1000241A0();
    LOWORD(v70) = 256;
    v37 = sub_100024074(v23, v25, v17 & 1, v28, v34, 0x8000000100034410, v35, v36, 0, v70);
    v74 = v38;
    v39 = [v13 mainBundle];
    sub_1000241A0();
    LOWORD(v72) = 256;
    sub_100024074(v72, v69, v21 & 1, v31, v40, 0x8000000100034410, v41, v42, 0, v72);
    v73 = v43;
    v45 = v44;
    type metadata accessor for PhotosReliveWidgetView(0);
    sub_100023EB0();
    v48 = sub_10002283C(v46, v47, &protocol conformance descriptor for PhotosReliveWidgetView);
    v71 = sub_100021F90();
    sub_100032790();
    sub_100023E3C();
    sub_100022D6C(v49, v50, v51, v52);
    sub_100032100();

    (*(v77 + 8))(v76, v79);
    sub_100023E24();
    sub_100024170(v53, v54);
    sub_100032130();
    v55 = sub_100023EF0();
    v56(v55);
    sub_100023E0C();
    sub_100024170(v57, v58);
    sub_1000320F0();
    (*(v81 + 8))(v78, v83);
    sub_100023DF4();
    sub_100024170(v59, v60);
    sub_100032140();
    v61 = sub_100023EF0();
    v62(v61);
    sub_100023DDC();
    sub_100024170(v63, v64);
    sub_1000240E8();
    sub_100032120();
    (*(v82 + 8))(v80, v84);
    sub_100023DC4();
    sub_100024170(v65, v66);
    sub_100032110();
    sub_1000230E4(&type metadata for PhotosReliveFeaturedWidgetEntryProvider, v73, v45 & 1, &_swift_release);

    sub_1000230E4(v71, v48, v74 & 1, &_swift_release);

    v67 = sub_100023EF0();
    v68(v67);
    sub_100011EF4();
  }

  else
  {
    __break(1u);
  }
}

void PhotosReliveCollectionsWidget.body.getter()
{
  sub_100011F0C();
  v82 = sub_10000D4FC(&qword_1000446D0, &unk_100033560);
  sub_100011D60();
  sub_100011DBC();
  __chkstk_darwin(v0);
  sub_100011DFC();
  sub_100023F80(v1);
  v86 = sub_10000D4FC(&qword_1000446C8, &unk_100034450);
  sub_100011D60();
  v83 = v2;
  sub_100011DBC();
  __chkstk_darwin(v3);
  sub_100011DFC();
  sub_100023F80(v4);
  v89 = sub_10000D4FC(&qword_1000446C0, &unk_100033550);
  sub_100011D60();
  sub_100011DBC();
  __chkstk_darwin(v5);
  sub_100011DFC();
  sub_100023F80(v6);
  v90 = sub_10000D4FC(&qword_1000446B8, &unk_100034460);
  sub_100011D60();
  v87 = v7;
  sub_100011DBC();
  __chkstk_darwin(v8);
  sub_100011DFC();
  v84 = v9;
  v91 = sub_10000D4FC(&qword_100044700, &qword_100033588);
  sub_100011D60();
  sub_100011DBC();
  __chkstk_darwin(v10);
  sub_100011DFC();
  v92 = sub_10000D4FC(&qword_1000446F8, &qword_100033580);
  sub_100011D60();
  v88 = v11;
  sub_100011DBC();
  __chkstk_darwin(v12);
  sub_100011DFC();
  v85 = v13;
  sub_10000D4FC(&qword_1000446F0, &qword_100033578);
  sub_100011D60();
  sub_100011DBC();
  __chkstk_darwin(v14);
  sub_100011DFC();
  v79 = objc_opt_self();
  sub_100021F20([v79 mainBundle]);
  if (v15)
  {

    v93._countAndFlagsBits = 0x7463656C6C6F632ELL;
    v93._object = 0xEC000000736E6F69;
    sub_100032950(v93);

    sub_10000D4FC(&qword_100045370, &qword_100034428);
    sub_100024130();
    v16 = sub_100032750();
    sub_100011D60();
    v18 = v17;
    v20 = *(v19 + 72);
    v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_1000343E0;
    v22 = v78 + v21;
    v23 = *(v18 + 104);
    v23(v22, enum case for WidgetFamily.systemSmall(_:), v16);
    v23(v22 + v20, enum case for WidgetFamily.systemMedium(_:), v16);
    v23(v22 + 2 * v20, enum case for WidgetFamily.systemLarge(_:), v16);
    v23(v22 + 3 * v20, enum case for WidgetFamily.systemExtraLarge(_:), v16);
    v24 = sub_100032080();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    sub_100032080();
    HIWORD(v70) = v31;
    LOBYTE(v22) = v32;
    v34 = v33;
    v35 = [v79 mainBundle];
    sub_1000241A0();
    LOWORD(v70) = 256;
    v77 = sub_100024074(v24, v26, v28 & 1, v30, v36, 0x8000000100034410, v37, v38, 0, v70);
    v76 = v39;
    v40 = [v79 mainBundle];
    sub_1000241A0();
    LOWORD(v74) = 256;
    sub_100024074(0, v71, v22 & 1, v34, v41, 0x8000000100034410, v42, v43, 0, v74);
    v80 = v44;
    type metadata accessor for PhotosReliveWidgetView(0);
    sub_100023EB0();
    v72 = sub_10002283C(v45, v46, &protocol conformance descriptor for PhotosReliveWidgetView);
    v73 = sub_100021FE4();
    sub_100032790();
    sub_100023E3C();
    sub_100022D6C(v47, v48, v49, v50);
    sub_100032100();

    v51 = sub_100024030();
    v52(v51, v82);
    sub_100023E24();
    sub_100024158(v53, v54);
    sub_100032130();
    (*(v83 + 8))(v81, v86);
    sub_100023E0C();
    sub_100024158(v55, v56);
    sub_1000320F0();
    v57 = sub_100024030();
    v58(v57, v89);
    sub_100023DF4();
    sub_100024158(v59, v60);
    sub_100032140();
    (*(v87 + 8))(v84, v90);
    sub_100023DDC();
    sub_100024158(v61, v62);
    sub_100032120();
    v63 = sub_100024030();
    v64(v63, v91);
    sub_100023DC4();
    sub_100024158(v65, v66);
    sub_1000320E0();
    v67 = (*(v88 + 8))(v85, v92);
    sub_100024158(v67, &opaque type descriptor for <<opaque return type of WidgetConfiguration.promptsForUserConfiguration()>>);
    sub_100032110();
    sub_1000230E4(v72, v80, v73 & 1, &_swift_release);

    sub_1000230E4(v77, v76, v75 & 1, &_swift_release);

    v68 = sub_100023EF0();
    v69(v68);
    sub_100011EF4();
  }

  else
  {
    __break(1u);
  }
}

id sub_100020EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 10);
  v6 = *(a1 + 16);
  v7 = *(type metadata accessor for PhotosReliveWidgetView(0) + 32);
  *(a2 + v7) = swift_getKeyPath();
  sub_10000D4FC(&qword_100044688, qword_100033510);
  swift_storeEnumTagMultiPayload();
  v8 = 256;
  if (!v4)
  {
    v8 = 0;
  }

  v9 = v8 | v3;
  v10 = 0x10000;
  if (!v5)
  {
    v10 = 0;
  }

  *a2 = v12;
  *(a2 + 8) = v9 | v10;
  *(a2 + 16) = v6;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
  *(a2 + 33) = v4;
  *(a2 + 34) = v5;
  swift_retain_n();

  return v12;
}

uint64_t PhotosReliveWidgetBundle.body.getter()
{
  v0 = sub_10000D4FC(&qword_100045390, &qword_100034470);

  return TupleWidget.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100022038();
  sub_100031E00();
  return 0;
}

id sub_100021064(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100032900();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_100031B10();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_100021144(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_100032C20();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_100021190(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a1 || (sub_10000D4FC(a4, a5), sub_100011D74(), a1 + *(v10 + 72) * a2 <= a3))
  {
    sub_10000D4FC(a4, a5);
    v12 = sub_1000241E0();

    _swift_arrayInitWithTakeFrontToBack(v12);
  }

  else if (a3 != a1)
  {
    v11 = sub_1000241E0();

    _swift_arrayInitWithTakeBackToFront(v11);
  }
}

unint64_t sub_100021264(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100021328(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100022884(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100022C1C(v11);
  return v7;
}

unint64_t sub_100021328(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100021428(a5, a6);
    *a1 = v9;
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
    result = sub_100032BF0();
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

char *sub_100021428(uint64_t a1, unint64_t a2)
{
  v3 = sub_100021474(a1, a2);
  sub_10002158C(&off_100041FF8);
  return v3;
}

char *sub_100021474(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_100032960())
  {
    result = sub_100021670(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_100032BB0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_100032BF0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

void sub_10002158C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v5 > *(v3 + 3) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    v3 = sub_1000216E0(isUniquelyReferenced_nonNull_native, v8, 1, v3);
  }

  if (!*(a1 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v9 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v10 = *(v3 + 2);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 2) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_100021670(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10000D4FC(&qword_1000453F0, &qword_1000348B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1000216E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000D4FC(&qword_1000453F0, &qword_1000348B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

char *sub_1000217D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100021854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000217F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002196C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100021814(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100021A74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100021834(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100021B8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100021854(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000D4FC(&qword_100045450, &qword_1000348E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10002196C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000D4FC(&qword_1000454B8, &unk_100034930);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100021A74(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000D4FC(&qword_1000454E0, &qword_100034960);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100021B8C(void *result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000D4FC(&qword_1000454E8, &qword_100034968);
  v10 = *(sub_10000D4FC(&qword_1000454D8, &qword_100034958) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000D4FC(&qword_1000454D8, &qword_100034958) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_100021190(a4 + v16, v8, v13 + v16, &qword_1000454D8, &qword_100034958);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_100021D68(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_100021DE0(0x20000000000001uLL);
  }
}

unint64_t sub_100021DE0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100021E6C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100032900();
  v5 = [a3 isValidCloudIdentifierStringValue:v4];

  return v5;
}

id sub_100021EB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_100032900();

  v7 = [a4 fallbackEntryForAlbumNotFoundWithLocalIdentifier:v6 size:a3];

  return v7;
}

uint64_t sub_100021F20(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_100032910();

  return v3;
}

unint64_t sub_100021F90()
{
  result = qword_100045380;
  if (!qword_100045380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045380);
  }

  return result;
}

unint64_t sub_100021FE4()
{
  result = qword_100045388;
  if (!qword_100045388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045388);
  }

  return result;
}

unint64_t sub_100022038()
{
  result = qword_100045398;
  if (!qword_100045398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045398);
  }

  return result;
}

__n128 sub_1000220E0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000220F4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100022134(uint64_t result, int a2, int a3)
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

uint64_t sub_1000221B4()
{
  v0 = sub_10000D57C(&qword_1000446E0, &qword_100034420);
  v1 = sub_10000D57C(&qword_1000446E8, &qword_100033570);
  v2 = sub_10000D57C(&qword_100044690, &unk_100034410);
  v3 = sub_10000D57C(&qword_100044698, &unk_100033530);
  v4 = sub_10000D57C(&qword_1000446A0, &unk_100034400);
  v5 = sub_10000D57C(&qword_1000446A8, &unk_100033540);
  sub_100023E3C();
  sub_100022D6C(v6, &qword_1000446A8, &unk_100033540, v7);
  sub_100023E24();
  sub_100023FFC(v8, v9, v10, v11, v12, v13, v14, v15, v5);
  sub_100023E0C();
  sub_100023FFC(v16, v17, v18, v19, v20, v21, v22, v23, v4);
  sub_100023DF4();
  sub_100023FFC(v24, v25, v26, v27, v28, v29, v30, v31, v3);
  sub_100023DDC();
  sub_100023FFC(v32, v33, v34, v35, v36, v37, v38, v39, v2);
  sub_100023DC4();
  v56 = sub_100023FFC(v40, v41, v42, v43, v44, v45, v46, v47, v1);
  return sub_100011DC8(v56, v48, v49, v50, v51, v52, v53, v54, v0);
}

uint64_t sub_1000222F4()
{
  v0 = sub_10000D57C(&qword_1000446F0, &qword_100033578);
  v1 = sub_10000D57C(&qword_1000446F8, &qword_100033580);
  v2 = sub_10000D57C(&qword_100044700, &qword_100033588);
  v3 = sub_10000D57C(&qword_1000446B8, &unk_100034460);
  v4 = sub_10000D57C(&qword_1000446C0, &unk_100033550);
  v5 = sub_10000D57C(&qword_1000446C8, &unk_100034450);
  v6 = sub_10000D57C(&qword_1000446D0, &unk_100033560);
  sub_100023E3C();
  sub_100022D6C(v7, &qword_1000446D0, &unk_100033560, v8);
  sub_100023E24();
  sub_100023FFC(v9, v10, v11, v12, v13, v14, v15, v16, v6);
  sub_100023E0C();
  sub_100023FFC(v17, v18, v19, v20, v21, v22, v23, v24, v5);
  sub_100023DF4();
  sub_100023FFC(v25, v26, v27, v28, v29, v30, v31, v32, v4);
  sub_100023DDC();
  sub_100023FFC(v33, v34, v35, v36, v37, v38, v39, v40, v3);
  sub_100023DC4();
  v49 = sub_100023FFC(v41, v42, v43, v44, v45, v46, v47, v48, v2);
  v65 = sub_100011DC8(v49, v50, v51, v52, v53, v54, v55, v56, v1);
  return sub_100011DC8(v65, v57, v58, v59, v60, v61, v62, v63, v0);
}

uint64_t getEnumTagSinglePayload for PhotosReliveWidgetEntryRole(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for PhotosReliveWidgetEntryRole(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100022610);
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

unint64_t sub_10002266C()
{
  result = qword_1000453B0;
  if (!qword_1000453B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000453B0);
  }

  return result;
}

unint64_t sub_1000226C4()
{
  result = qword_1000453B8;
  if (!qword_1000453B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000453B8);
  }

  return result;
}

unint64_t sub_10002271C()
{
  result = qword_1000453C0;
  if (!qword_1000453C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000453C0);
  }

  return result;
}

unint64_t sub_100022774()
{
  result = qword_1000453C8;
  if (!qword_1000453C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000453C8);
  }

  return result;
}

uint64_t sub_10002283C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100022884(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100022904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100022968()
{
  result = qword_100045400;
  if (!qword_100045400)
  {
    sub_10000D57C(&qword_1000453E0, &qword_1000348B0);
    sub_10002283C(&qword_100045408, type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration, &unk_100034A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045400);
  }

  return result;
}

uint64_t sub_100022A1C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100011D74();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100022A74(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void *sub_100022ACC(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100022B0C()
{
  result = qword_100045438;
  if (!qword_100045438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045438);
  }

  return result;
}

uint64_t sub_100022B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024130();
  v5(v4);
  sub_100011D74();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t *sub_100022BBC(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100022C1C(void *a1)
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

uint64_t sub_100022C68(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_100022CB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_100032C20();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_100022D54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100022D6C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000D57C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100022DE8()
{
  sub_100011F0C();
  v1 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  sub_100011D60();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_1000240E8();
  v9 = sub_10000D4FC(v7, v8);
  sub_100011D60();
  v11 = v10;
  v12 = (v4 + v6 + *(v10 + 80)) & ~*(v10 + 80);

  (*(v3 + 8))(v0 + v4, v1);
  (*(v11 + 8))(v0 + v12, v9);
  sub_100011EF4();

  return _swift_deallocObject(v13, v14, v15);
}

uint64_t sub_100022F54(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  sub_100023E68(v3);
  v4 = sub_1000240E8();
  v6 = sub_10000D4FC(v4, v5);
  sub_100011EE8(v6);
  v7 = sub_100024200();

  return a3(v7);
}

uint64_t sub_100023068@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_10001BC5C(a1, *(v2 + 16), v3 | *(v2 + 24), a2);
}

uint64_t sub_1000230A4(uint64_t a1, unint64_t *a2, void *a3)
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

double sub_1000230E4(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    a4(a1, a2);
  }

  else
  {
  }

  return result;
}

void *sub_100023138(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    v6 = *(a5 + 56) + 24 * a2;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    *result = *v6;
    result[1] = v8;
    *(result + 16) = v9;
    v10 = v5;
    sub_1000231DC(v7, v8, v9, v11);
    return v10;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1000231DC(uint64_t a1, uint64_t a2, char a3, __n128 a4)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_100023244()
{
  v0 = sub_10000D4FC(&qword_100045480, &qword_100034900);
  sub_100011EE8(v0);
  return sub_10001E100();
}

uint64_t sub_1000232F4()
{
  sub_100011F0C();
  v2 = v1;
  v4 = v3;
  v5 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  sub_100011D60();
  v7 = v6;
  v8 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v10 = *(v9 + 64);
  v11 = sub_10000D4FC(v4, v2);
  sub_100011D60();
  v13 = v12;
  v14 = (v8 + v10 + *(v12 + 80)) & ~*(v12 + 80);

  (*(v7 + 8))(v0 + v8, v5);
  (*(v13 + 8))(v0 + v14, v11);
  sub_100011EF4();

  return _swift_deallocObject(v15, v16, v17);
}

uint64_t sub_100023474(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  sub_100023E68(v3);
  v4 = sub_1000240E8();
  v6 = sub_10000D4FC(v4, v5);
  sub_100011EE8(v6);
  v7 = sub_100024200();

  return a3(v7);
}

uint64_t sub_100023560(uint64_t *a1, uint64_t *a2)
{
  sub_10000D4FC(a1, a2);
  sub_100011D74();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v2 + v5);

  return _swift_deallocObject(v2, v5 + v6, v4 | 7);
}

uint64_t sub_1000235E0(void *a1, int a2, uint64_t a3)
{
  v6 = sub_10000D4FC(&qword_1000454A0, &qword_100034918);
  sub_100011EE8(v6);
  return sub_10001C840(a1, a2 & 0x101FF, a3);
}

uint64_t sub_100023680(uint64_t a1, uint64_t a2)
{
  sub_100024130();
  v4 = sub_100032750();

  return sub_10000D8C4(v2, a2, v4);
}

uint64_t sub_1000236D8(uint64_t a1, uint64_t a2)
{
  sub_100024130();
  v4 = sub_100032750();

  return sub_10000D904(v2, a2, a2, v4);
}

void sub_100023720(uint64_t a1)
{
  sub_100032750();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319, v1, v2, v3);
    if (v4 <= 0x3F)
    {
      sub_1000239A4(319, &qword_100044EB8, &type metadata for CGFloat);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000237E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100031C40();
    v10 = a1 + *(a3 + 24);

    return sub_10000D8C4(v10, a2, v9);
  }
}

uint64_t sub_100023888(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100031C40();
    v8 = v5 + *(a4 + 24);

    return sub_10000D904(v8, a2, a2, v7);
  }

  return result;
}

void sub_100023908(uint64_t a1)
{
  sub_1000239A4(319, &unk_1000455F0, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_100031C40();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000239A4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_100032B10();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_1000239F0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100023A34()
{
  result = qword_100045630;
  if (!qword_100045630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045630);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosReliveWidgetViewModel.TitleLayout.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosReliveWidgetScheduledReloadConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100023BDCLL);
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

unint64_t sub_100023C28()
{
  result = qword_100045650;
  if (!qword_100045650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045650);
  }

  return result;
}

unint64_t sub_100023C80()
{
  result = qword_100045658;
  if (!qword_100045658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045658);
  }

  return result;
}

unint64_t sub_100023CD8()
{
  result = qword_100045660;
  if (!qword_100045660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045660);
  }

  return result;
}

uint64_t sub_100023F00(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100023F30(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100023F50(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100023FAC(uint64_t a1)
{
}

uint64_t sub_100023FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100024014()
{

  return PhotosSendableTransfer.init(wrappedValue:)(v0, v1);
}

uint64_t sub_10002403C(uint64_t a1)
{
}

uint64_t sub_100024074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_100032380();
}

uint64_t sub_1000240D0()
{

  return swift_task_alloc();
}

void sub_1000240F4()
{
  v4 = (v1 + *(v0 + 20));
  *v4 = v2;
  v4[1] = v3;
}

unint64_t sub_10002413C()
{

  return sub_100021264(v0, v1, (v2 - 144));
}

uint64_t sub_100024158(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100024170(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100024188()
{

  return swift_slowAlloc();
}

uint64_t sub_1000241CC()
{
  result = v1;
  *(v2 - 216) = *(v0 + 8);
  return result;
}

uint64_t sub_100024244(uint64_t a1, uint64_t a2)
{

  return sub_10000D904(a1, a2, 1, v2);
}

uint64_t sub_10002425C()
{

  return swift_slowAlloc();
}

unint64_t sub_100024274()
{
  result = qword_100045668;
  if (!qword_100045668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045668);
  }

  return result;
}

uint64_t sub_1000242CC()
{
  v0 = sub_100031B50();
  sub_100025688(v0, qword_100048350);
  sub_10000F4F4(v0, qword_100048350);
  return sub_100031B20();
}

uint64_t sub_10002439C()
{
  v0 = sub_1000317C0();
  sub_100011D60();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100011DAC();
  v6 = v5 - v4;
  sub_100031A20();
  sub_100011D60();
  __chkstk_darwin(v7);
  sub_100011DAC();
  (*(v10 + 104))(v9 - v8, enum case for EquatableComparisonOperator.equalTo(_:));
  (*(v2 + 104))(v6, enum case for IntentOrigin.local(_:), v0);
  sub_10000D4FC(&qword_1000456E8, &qword_100034DA0);
  sub_100024274();
  sub_1000256F0();
  sub_100022D6C(v11, &qword_1000456E8, &qword_100034DA0, v12);
  return sub_100031A50();
}

uint64_t sub_1000245A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100024354();
  *a1 = result;
  return result;
}

uint64_t sub_1000245D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100024378();
  *a1 = result;
  return result;
}

uint64_t sub_100024614(uint64_t a1)
{
  v1 = sub_10000D4FC(&qword_1000456E8, &qword_100034DA0);
  sub_100011D60();
  v3 = v2;
  v5 = __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  sub_100024274();
  sub_100031960();
  sub_1000256F0();
  sub_100022D6C(v10, &qword_1000456E8, &qword_100034DA0, v11);
  sub_100031990();
  v12 = *(v3 + 8);
  v12(v7, v1);
  sub_100031980();
  return (v12)(v9, v1);
}

uint64_t sub_1000247A4(uint64_t a1)
{
  swift_getKeyPath();
  sub_100024274();
  v1 = sub_100031950();

  swift_getKeyPath();

  v2 = sub_100031950();

  sub_10000D4FC(&qword_1000454C0, &qword_100035320);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100034B90;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;

  v4 = sub_100031940();

  return v4;
}

uint64_t sub_100024890@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100024330();
  *a1 = result;
  return result;
}

uint64_t sub_1000248BC()
{
  v0 = sub_10000D4FC(&qword_1000456A0, &qword_100034D68);
  v1 = sub_100011EE8(v0);
  __chkstk_darwin(v1);
  v87 = v81 - v2;
  sub_100023ED4();
  v86 = sub_1000319F0();
  sub_100011D60();
  v84 = v3;
  __chkstk_darwin(v4);
  sub_100011DAC();
  v85 = v6 - v5;
  sub_100023ED4();
  sub_100031B30();
  sub_100011D60();
  v100 = v7;
  v101 = v8;
  __chkstk_darwin(v7);
  sub_100011DAC();
  v97 = v10 - v9;
  sub_100023ED4();
  v11 = sub_100031C60();
  v12 = sub_100011EE8(v11);
  __chkstk_darwin(v12);
  sub_100011DAC();
  v96 = v14 - v13;
  sub_100023ED4();
  v15 = sub_1000328F0();
  v16 = sub_100011EE8(v15);
  __chkstk_darwin(v16);
  sub_100011DAC();
  v98 = v18 - v17;
  sub_100023ED4();
  v89 = sub_100031970();
  v19 = *(v89 - 8);
  __chkstk_darwin(v89);
  sub_100011DAC();
  v22 = v21 - v20;
  v23 = sub_10000D4FC(&qword_1000456A8, &unk_100034D70);
  v24 = sub_100011EE8(v23);
  v25 = __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  v27 = v81 - v26;
  v28 = sub_10000D4FC(&qword_1000456B0, &unk_1000352E0);
  v29 = sub_100011EE8(v28);
  __chkstk_darwin(v29);
  v30 = sub_100031B50();
  v91 = v30;
  __chkstk_darwin(v30);
  sub_100011DAC();
  sub_10000D4FC(&qword_1000456B8, &qword_100034D80);
  sub_100031B20();
  sub_100025708();
  sub_10000D904(v31, v32, v33, v30);
  LOBYTE(v102) = 0;
  v34 = sub_1000317B0();
  sub_100025708();
  sub_10000D904(v35, v36, v37, v34);
  sub_100025708();
  sub_10000D904(v38, v39, v40, v34);
  v99 = enum case for InputConnectionBehavior.default(_:);
  v41 = *(v19 + 104);
  v81[4] = v19 + 104;
  v90 = v41;
  v88 = v22;
  v41(v22);
  sub_1000255D4();
  v83 = sub_100031830();
  v82 = sub_10000D4FC(&qword_1000456C8, &qword_100034D88);
  v81[3] = "unexpected smart album type";
  sub_1000328A0();
  v92 = &unk_100034D00;
  sub_100031C50();
  v95 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v42 = *(v101 + 104);
  v101 += 104;
  v94 = v42;
  v42(v97);
  sub_100031B60();
  sub_100025708();
  v43 = v91;
  sub_10000D904(v44, v45, v46, v91);
  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  v81[1] = v27;
  sub_100025708();
  v93 = v34;
  sub_10000D904(v47, v48, v49, v34);
  sub_100025708();
  sub_10000D904(v50, v51, v52, v34);
  v54 = v89;
  v53 = v90;
  v90(v88, v99, v89);
  sub_100025628();
  v82 = sub_100031840();
  v81[2] = sub_10000D4FC(&qword_1000456D8, &qword_100034D90);
  sub_1000328A0();
  sub_100031C50();
  v55 = sub_100025744();
  v57 = v56(v55);
  sub_100025714(v57, v58, v92 | 0x8000000000000000);
  sub_100025708();
  sub_10000D904(v59, v60, v61, v43);
  (*(v84 + 104))(v85, enum case for _IntentPhotoItemCollection.PickerMode.albums(_:), v86);
  sub_100025708();
  sub_10000D904(v62, v63, v64, v93);
  v65 = v88;
  v53(v88, v99, v54);
  v86 = sub_100031820();
  sub_10000D4FC(&qword_1000456E0, &qword_100034D98);
  sub_1000328A0();
  sub_100031C50();
  v66 = sub_100025744();
  v68 = v67(v66);
  sub_100025714(v68, v69, v92 | 0x8000000000000000);
  sub_100025708();
  sub_10000D904(v70, v71, v72, v91);
  LOBYTE(v102) = 0;
  sub_1000329E0();
  sub_100025708();
  sub_10000D904(v73, v74, v75, v76);
  sub_100025708();
  sub_10000D904(v77, v78, v79, v93);
  v90(v65, v99, v89);
  sub_100031850();
  return v83;
}

unint64_t sub_1000250B0()
{
  result = qword_100045670;
  if (!qword_100045670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045670);
  }

  return result;
}

unint64_t sub_100025108()
{
  result = qword_100045678;
  if (!qword_100045678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045678);
  }

  return result;
}

unint64_t sub_100025160()
{
  result = qword_100045680;
  if (!qword_100045680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045680);
  }

  return result;
}

uint64_t sub_1000251D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100044638 != -1)
  {
    swift_once();
  }

  v2 = sub_100031B50();
  v3 = sub_10000F4F4(v2, qword_100048350);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100025290(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10002271C();
  *v4 = v2;
  v4[1] = sub_10002533C;

  return WidgetConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_10002533C()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100025444@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000248BC();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_100025470(uint64_t a1)
{
  v2 = sub_100025580();

  return static CustomIntentMigratedAppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000254AC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000254EC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_100025580()
{
  result = qword_100045698;
  if (!qword_100045698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045698);
  }

  return result;
}

unint64_t sub_1000255D4()
{
  result = qword_1000456C0;
  if (!qword_1000456C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000456C0);
  }

  return result;
}

unint64_t sub_100025628()
{
  result = qword_1000456D0;
  if (!qword_1000456D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000456D0);
  }

  return result;
}

uint64_t *sub_100025688(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100025714(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_100031B60();
}

BOOL sub_100025AAC(__int16 a1, uint64_t a2, char a3, __int16 a4, uint64_t a5, char a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    return (a6 & 1) == 0 && *&a2 == *&a5;
  }

  return (a6 & 1) != 0;
}

void sub_100025CA8()
{
  sub_100011F0C();
  v27 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for PhotosReliveWidgetSize(0);
  __chkstk_darwin(v13 - 8);
  sub_100011DAC();
  v16 = v15 - v14;
  v17 = sub_100032750();
  sub_100011D60();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_100011DAC();
  v23 = v22 - v21;
  if (v10 == 1)
  {
    type metadata accessor for PhotosReliveWidgetFallbackViewModel(0);
    v24 = sub_10002B1D8();
    v25(v24);
    v12;

    sub_100025AE8();
    goto LABEL_8;
  }

  if (v10 == 2)
  {
    goto LABEL_7;
  }

  if (v10 != 3)
  {
    type metadata accessor for PhotosReliveWidgetViewModel(0);
    sub_10002A4FC(v6, v16);
    v12 = v12;
    v26 = v2;

    if (!sub_100026518(v12, v10 & 0x101FF, v8, v16, v26, v27 & 1))
    {
LABEL_7:
      type metadata accessor for PhotosReliveWidgetPlaceholderViewModel(0);
      [v12 contentType];
      sub_10002A8E4(v12, &selRef_sourceIdentifier);
      (*(v19 + 16))(v23, v4, v17);
      sub_100025760();
    }

LABEL_8:
    sub_100011EF4();
    return;
  }

  sub_100032C10();
  __break(1u);
}

void sub_100025F70()
{
  sub_100011F0C();
  v1 = v0;
  v3 = v2;
  v4 = sub_100032750();
  sub_100011D60();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100011D9C();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for PhotosReliveWidgetSize(0);
  v15 = *(v14 + 24);
  v16 = *(v1 + *(v14 + 20));
  v28 = v16;
  if (*(v1 + v15 + 8))
  {
    v17 = [objc_opt_self() px_mainScreen];
    [v17 scale];
    v27 = v18;
  }

  else
  {
    v16.f64[0] = *(v1 + v15);
    v27 = v16;
  }

  (*(v6 + 16))(v13, v1, v4);
  v19 = *(v6 + 104);
  v19(v10, enum case for WidgetFamily.systemLarge(_:), v4);
  sub_10002B06C();
  sub_10002AB78(v20, v21, &protocol conformance descriptor for WidgetFamily);
  sub_10002B1D8();
  sub_100032970();
  sub_10002B1D8();
  sub_100032970();
  v22 = *(v6 + 8);
  v22(v10, v4);
  if (v30 == v29)
  {
    v23 = sub_10002B1E4();
    (v22)(v23);
  }

  else
  {
    v19(v10, enum case for WidgetFamily.systemExtraLarge(_:), v4);
    sub_10002B1D8();
    sub_100032970();
    sub_10002B1D8();
    sub_100032970();
    v22(v10, v4);
    v24 = sub_10002B1E4();
    (v22)(v24);
    if (v30 != v29)
    {
      v25 = v27.f64[0];
      goto LABEL_11;
    }
  }

  v25 = v27.f64[0];
  if (v27.f64[0] > 2.0)
  {
    v25 = 2.0;
  }

LABEL_11:
  v26 = v28;
  *v3 = vmulq_n_f64(v28, v25);
  v3[1] = v26;
  v3[2].f64[0] = v25;
  sub_100011EF4();
}

uint64_t sub_1000261F4()
{
  sub_1000230A4(0, &qword_100045428, OS_os_log_ptr);
  result = sub_100032B00();
  qword_100048368 = result;
  return result;
}

uint64_t sub_10002626C()
{
  v7 = sub_100032A80();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100032A70();
  __chkstk_darwin(v3);
  v4 = sub_1000326A0();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_1000230A4(0, &qword_100045470, OS_dispatch_queue_ptr);
  sub_100032690();
  v8 = &_swiftEmptyArrayStorage;
  sub_10002AB78(&qword_100045A18, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000D4FC(&qword_100045A20, &qword_100034FD0);
  sub_100022D6C(&qword_100045A28, &qword_100045A20, &qword_100034FD0, &protocol conformance descriptor for [A]);
  sub_100032B60();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  result = sub_100032AB0();
  qword_100048370 = result;
  return result;
}

int64_t sub_100026518(void *a1, int a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  LODWORD(v213) = a6;
  v225 = a4;
  v221 = a3;
  LODWORD(v208) = a2;
  v8 = sub_100031B90();
  __chkstk_darwin(v8 - 8);
  sub_100011DAC();
  v210 = v10 - v9;
  v216 = sub_100032750();
  sub_100011D60();
  v209 = v11;
  __chkstk_darwin(v12);
  sub_100011DAC();
  v215 = v14 - v13;
  v205 = type metadata accessor for PhotosReliveWidgetSize(0);
  sub_100011D74();
  __chkstk_darwin(v15);
  sub_100011D9C();
  v204 = v16 - v17;
  v19 = __chkstk_darwin(v18);
  v212 = &v194 - v20;
  __chkstk_darwin(v19);
  v22 = &v194 - v21;
  v220 = sub_100031D80();
  sub_100011D60();
  v219 = v23;
  __chkstk_darwin(v24);
  sub_100011DAC();
  v27 = v26 - v25;
  if (qword_100044640 != -1)
  {
    swift_once();
  }

  v28 = qword_100048368;
  v222 = a1;
  v29 = [v222 assetLocalIdentifier];
  v30 = sub_100032910();
  v32 = v31;

  v33 = v28;
  sub_100031D60();
  v34 = sub_100032AD0();
  sub_10000D4FC(&qword_100045430, &qword_1000348D8);
  v35 = swift_allocObject();
  v224 = xmmword_1000334C0;
  *(v35 + 16) = xmmword_1000334C0;
  *(v35 + 56) = &type metadata for String;
  *(v35 + 64) = sub_100022B0C();
  *(v35 + 32) = v30;
  *(v35 + 40) = v32;

  sub_100031D40(v34, &_mh_execute_header, v33, "FetchAsset", 10, 2, v27, "fetching asset with identifier %{public}s", 41, 2, v35);

  v223 = a5;
  v36 = [a5 librarySpecificFetchOptions];
  [v36 setIncludeGuestAssets:1];
  v37 = objc_opt_self();
  sub_10000D4FC(&qword_1000454B8, &unk_100034930);
  v38 = swift_allocObject();
  *(v38 + 16) = v224;
  v217 = v30;
  *(v38 + 32) = v30;
  *(v38 + 40) = v32;
  *&v224 = v32;

  isa = sub_100032990().super.isa;

  v218 = v36;
  v40 = [v37 fetchAssetsWithLocalIdentifiers:isa options:v36];

  v41 = [v40 firstObject];
  v42 = v27;
  if (!v41)
  {
    if (!v208)
    {
      v125 = sub_100032A20();
      if (os_log_type_enabled(v33, v125))
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        *&v228 = v127;
        *v126 = 136446210;
        v128 = sub_10002B0B8();
        v131 = sub_100021264(v128, *(v129 - 256), v130);

        *(v126 + 4) = v131;
        sub_10002B204(&_mh_execute_header, v132, v133, "Error fetching asset for identifier %{public}s");
        sub_100022C1C(v127);
        sub_100023FAC(v127);
        sub_100023FAC(v126);
      }

      else
      {
        sub_10002B23C();
      }

      sub_10002B224();

      v192 = v222;

      sub_10002A944(v225);
      sub_10002B1A0();
      v165 = v27;
      goto LABEL_40;
    }

    sub_10002B23C();
    sub_10002B224();

LABEL_35:
    v163 = v222;

    sub_10002A944(v225);
    sub_10002B1A0();
    v165 = v42;
LABEL_40:
    v164(v165, v220);
    return 0;
  }

  v43 = v41;
  sub_100032AC0();
  sub_100031D50();
  v44 = type metadata accessor for PhotosReliveWidgetViewModel(0);
  v45 = v225;
  sub_100025F70();
  v47 = *(&v228 + 1);
  *&v46 = v228;
  v203 = v229;
  v202 = v230;
  v201 = v231;
  v208 = v44;
  v48 = sub_100027A08(v43, *&v228, *(&v228 + 1));
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = sub_100032A40();
  v56 = sub_10002B1E4();
  sub_10002A4FC(v56, v57);
  v58 = v212;
  sub_10002A4FC(v45, v212);
  v59 = os_log_type_enabled(v33, v55);
  v214 = v27;
  v207 = v40;
  v206 = v43;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v226[0] = v61;
    *v60 = 136447234;
    v62 = sub_10002B0B8();
    *(v60 + 4) = sub_100021264(v62, *(v63 - 256), v64);
    *(v60 + 12) = 2082;
    v228 = __PAIR128__(*&v47, *&v46);
    type metadata accessor for CGSize(0, v65, v66, v67);
    v68 = sub_100032920();
    v70 = sub_100021264(v68, v69, v226);

    *(v60 + 14) = v70;
    *(v60 + 22) = 2082;
    *&v228 = v48;
    *(&v228 + 1) = v50;
    v229 = v52;
    v230 = v54;
    type metadata accessor for CGRect(0, v71, v72, v73);
    v74 = sub_100032920();
    v76 = sub_100021264(v74, v75, v226);

    *(v60 + 24) = v76;
    *(v60 + 32) = 2082;
    v228 = *&v22[SHIDWORD(v205[2].isa)];
    v77 = sub_100032920();
    v79 = v78;
    sub_10002A944(v22);
    v80 = sub_100021264(v77, v79, v226);

    *(v60 + 34) = v80;
    *(v60 + 42) = 2082;
    v40 = v207;
    sub_10002B06C();
    sub_10002AB78(v81, v82, &protocol conformance descriptor for WidgetFamily);
    v83 = sub_100032CB0();
    v85 = v84;
    sub_10002A944(v58);
    v86 = sub_100021264(v83, v85, v226);

    *(v60 + 44) = v86;
    v42 = v214;
    _os_log_impl(&_mh_execute_header, v33, v55, "crop rect for asset %{public}s for target size %{public}s is %{public}s for displaySize %{public}s widget family: %{public}s", v60, 0x34u);
    swift_arrayDestroy();
    v87 = v61;
    v43 = v206;
    sub_100023FAC(v87);
    sub_100023FAC(v60);
  }

  else
  {
    sub_10002A944(v58);
    sub_10002A944(v22);
  }

  v88 = v223;
  if (LOBYTE(v213))
  {
    v213 = v47;
    sub_10002B1F0();
    sub_100031C90();
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v205 = v95;
    v96 = sub_100031CA0();
    v97 = sub_100032A40();
    v98 = v97;
    if (v96)
    {
      v99 = os_log_type_enabled(v33, v97);
      v47 = v213;
      if (v99)
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *&v228 = v101;
        *v100 = 136446210;
        v102 = sub_10002B0B8();
        *(v100 + 4) = sub_100021264(v102, *(v103 - 256), v104);
        sub_10002B204(&_mh_execute_header, v105, v106, "not using spatial for asset %{public}s because it would result in cropping face");
        sub_100022C1C(v101);
        sub_100023FAC(v101);
        sub_100023FAC(v100);
      }

      LODWORD(v212) = 0;
      v42 = v214;
    }

    else
    {
      v107 = v204;
      sub_10002A4FC(v225, v204);
      if (os_log_type_enabled(v33, v98))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v226[0] = v109;
        *v108 = 136446722;
        v110 = sub_10002B0B8();
        *(v108 + 4) = sub_100021264(v110, *(v111 - 256), v112);
        *(v108 + 12) = 2082;
        *&v228 = v90;
        *(&v228 + 1) = v92;
        v229 = v94;
        v230 = v205;
        type metadata accessor for CGRect(0, v113, v114, v115);
        v116 = sub_100032920();
        v118 = sub_100021264(v116, v117, v226);

        *(v108 + 14) = v118;
        *(v108 + 22) = 2082;
        sub_10002B06C();
        sub_10002AB78(v119, v120, &protocol conformance descriptor for WidgetFamily);
        v121 = sub_100032CB0();
        v123 = v122;
        sub_10002A944(v107);
        v124 = sub_100021264(v121, v123, v226);
        v88 = v223;

        *(v108 + 24) = v124;
        _os_log_impl(&_mh_execute_header, v33, v98, "Adjusted crop rect for spatial asset %{public}s is %{public}s) for widget family: %{public}s", v108, 0x20u);
        swift_arrayDestroy();
        sub_100023FAC(v109);
        sub_100023FAC(v108);
      }

      else
      {
        sub_10002A944(v107);
      }

      sub_10002B184();
      v42 = v214;
      v47 = v213;
    }
  }

  else
  {
    LODWORD(v212) = 0;
  }

  v134 = objc_autoreleasePoolPush();
  v135 = sub_10002B1F0();
  v140 = sub_100027A8C(v136, v135, v137, v138, v139, v46, v47);
  LODWORD(v213) = v141;
  objc_autoreleasePoolPop(v134);
  if (!v140)
  {
    sub_10002B23C();
    sub_10002B224();

    goto LABEL_35;
  }

  v142 = v140;
  PFSharedFigDecodeSessionDiscardCachedBuffers();
  result = CGImageGetWidth(v142);
  v144 = v222;
  if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v46 <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v46 >= 9.22337204e18)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (result < v46)
  {
    goto LABEL_30;
  }

  result = CGImageGetHeight(v142);
  if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_45;
  }

  if (v47 <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v47 < 9.22337204e18)
  {
    if (result >= v47)
    {
LABEL_32:
      v208 = v140;
      if ([v144 contentType])
      {
        sub_10002B23C();
        v217 = 0;
        v205 = 0;
        v199 = 0;
        *&v224 = 0;
        v204 = 0;
        v198 = 0;
        v200 = 0;
        v161 = 1;
        LOBYTE(v228) = 1;
        LOBYTE(v226[0]) = 1;
        v197 = 2;
        v162 = 1;
        v196 = 2;
      }

      else
      {
        v166 = sub_10002A8E4(v144, &selRef_title);
        v195 = v142;
        v168 = v167;
        v169 = sub_10002A8E4(v144, &selRef_subtitle);
        v171 = v170;
        v172 = [v144 localIdentifier];
        v173 = sub_100032910();
        v175 = v174;

        sub_100027FA4(v166, v168, v169, v171, v217, v224, v173, v175, v225, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204);
        v176 = v226[0];
        v217 = v226[1];
        v178 = v226[2];
        v177 = v226[3];
        v205 = v226[4];
        v161 = v227;

        v142 = v195;

        v200 = v176 & 0xFFFFFFFFFFFF0000;
        v204 = v178 & 0xFFFFFFFFFFFFFF00;
        *&v224 = v177 & 0xFFFFFFFFFFFF0000;
        v198 = v176 & 0xFF00;
        v196 = v176;
        v199 = v177 & 0xFF00;
        v197 = v177;
        v162 = v178;
      }

      v179 = v142;
      v195 = [v144 contentType];
      v180 = v225;
      (*(v209 + 16))(v215, v225, v216);
      v181 = v206;
      v216 = v206;
      v182 = [v144 deeplink];
      v183 = v210;
      sub_100031B70();

      v209 = sub_10002A8E4(v144, &selRef_title);
      v194 = v184;
      v185 = sub_10002A8E4(v144, &selRef_subtitle);
      v187 = v186;
      *&v228 = v198 | v200 | v196;
      *(&v228 + 1) = v217;
      v229 = v204 | v162;
      v230 = (v199 | v224 | v197);
      v231 = v205;
      v232 = v161;
      v188 = *(v211 + 168);
      v189 = v179;
      LOBYTE(v193) = v212;
      v190 = v188(v195, v215, v181, v183, v209, v194, v185, v187, v208, LOBYTE(v213) & 1, v208, v203, v202, v201, &v228, v193);
      sub_10002B224();

      sub_10002A944(v180);
      sub_10002B1A0();
      v191(v214, v220);
      return v190;
    }

LABEL_30:
    v145 = sub_100032A40();
    if (os_log_type_enabled(v33, v145))
    {
      v146 = v142;
      v205 = v33;
      v147 = v146;
      v148 = swift_slowAlloc();
      v195 = v142;
      v149 = v148;
      v150 = swift_slowAlloc();
      v226[0] = v150;
      *v149 = 136446978;
      v151 = sub_10002B0B8();
      *(v149 + 4) = sub_100021264(v151, *(v152 - 256), v153);
      *(v149 + 12) = 2050;
      *(v149 + 14) = CGImageGetWidth(v147);
      *(v149 + 22) = 2050;
      *(v149 + 24) = CGImageGetHeight(v147);

      *(v149 + 32) = 2082;
      *&v228 = v46;
      *(&v228 + 1) = v47;
      type metadata accessor for CGSize(0, v154, v155, v156);
      v157 = sub_100032920();
      v159 = sub_100021264(v157, v158, v226);

      *(v149 + 34) = v159;
      _os_log_impl(&_mh_execute_header, v205, v145, "scaling up image for %{public}s because loaded size %{public}ld,%{public}ld is not targetSize %{public}s", v149, 0x2Au);
      swift_arrayDestroy();
      sub_100023FAC(v150);
      v160 = v149;
      v142 = v195;
      sub_100023FAC(v160);
    }

    goto LABEL_32;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1000276C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002B0C8(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = sub_10002B120();
  sub_100027718(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19, v20, v21, v22, v23, v24);
  return v8;
}

uint64_t sub_100027718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t *a14, char a15)
{
  v20 = *a14;
  v39 = a14[1];
  v50 = a14[2];
  v37 = a14[3];
  v49 = a14[4];
  v38 = *(a14 + 40);
  *(v15 + 16) = a1;
  v21 = OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily;
  v22 = sub_100032750();
  v23 = *(v22 - 8);
  v48 = a2;
  (*(v23 + 16))(v15 + v21, a2, v22);
  *(v15 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_asset) = a3;
  v24 = OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_destination;
  v25 = sub_100031B90();
  v26 = *(v25 - 8);
  v47 = a4;
  (*(v26 + 16))(v15 + v24, a4, v25);
  v27 = (v15 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_title);
  *v27 = a5;
  v27[1] = a6;
  v28 = (v15 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_subtitle);
  *v28 = a7;
  v28[1] = a8;
  *(v15 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_image) = a9;
  *(v15 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_imageIsDegraded) = a10;
  v29 = v15 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_layoutDescription;
  *v29 = a11;
  *(v29 + 16) = a12;
  *(v29 + 24) = a13;
  v30 = v20 & 0xFF00;
  if (v30 == 768)
  {
    v31 = 0;
    v49 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v30 = 0;
    v42 = 0;
    v32 = 1;
    v33 = 2;
    LOBYTE(v50) = 1;
    v34 = 2;
  }

  else
  {
    v42 = v20 & 0xFFFFFFFFFFFF0000;
    v45 = v50 & 0xFFFFFFFFFFFFFF00;
    v46 = v37 & 0xFFFFFFFFFFFF0000;
    v34 = v20;
    v44 = v37 & 0xFF00;
    v33 = v37;
    v31 = v39;
    v32 = v38;
  }

  (*(v26 + 8))(v47, v25);
  (*(v23 + 8))(v48, v22);
  v35 = v15 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout;
  *v35 = v30 | v34 | v42;
  *(v35 + 8) = v31;
  *(v35 + 16) = v45 | v50;
  *(v35 + 24) = v44 | v33 | v46;
  *(v35 + 32) = v49;
  *(v35 + 40) = v32;
  *(v15 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_useSpatialEffect) = a15 & 1;
  return v15;
}

double sub_100027A08(void *a1, double a2, double a3)
{
  v6 = [a1 pixelWidth];
  [a1 pixelHeight];
  [a1 suggestedCropForTargetSize:{a2, a3}];
  return v7 / v6;
}

void *sub_100027A8C(void *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = [a1 localIdentifier];
  v15 = sub_100032910();
  v17 = v16;

  v18 = sub_1000287E4(a1, a2, a3, a4, a5, a6, a7);
  v20 = v19;
  v21 = sub_100032A10();
  if (v18)
  {
    if (qword_100044640 != -1)
    {
      swift_once();
    }

    v22 = qword_100048368;
    if (os_log_type_enabled(qword_100048368, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v47 = v24;
      *v23 = 136446210;
      v25 = sub_100021264(v15, v17, &v47);

      *(v23 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v22, v21, "Loaded local image for asset %{public}s", v23, 0xCu);
      sub_100022C1C(v24);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100044640 != -1)
    {
      swift_once();
    }

    v26 = qword_100048368;
    if (os_log_type_enabled(qword_100048368, v21))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v47 = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_100021264(v15, v17, &v47);
      _os_log_impl(&_mh_execute_header, v26, v21, "Failed to load local image for asset %{public}s", v27, 0xCu);
      sub_100022C1C(v28);
    }

    v29 = sub_100032A10();
    v30 = os_log_type_enabled(v26, v29);
    if (v20)
    {
      if (v30)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v47 = v32;
        *v31 = 136446210;
        v33 = sub_100021264(v15, v17, &v47);

        *(v31 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v26, v29, "Attempting to load cloud image for asset %{public}s", v31, 0xCu);
        sub_100022C1C(v32);
      }

      else
      {
      }

      v37 = sub_100028EFC(a1, a2, a3, a4, a5, a6, a7);
      if (v37)
      {
        return v37;
      }
    }

    else if (v30)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v47 = v35;
      *v34 = 136446210;
      v36 = sub_100021264(v15, v17, &v47);

      *(v34 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v26, v29, "No cloud image available for asset %{public}s", v34, 0xCu);
      sub_100022C1C(v35);
    }

    else
    {
    }

    v38 = sub_100032A20();
    if (os_log_type_enabled(v26, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47 = v40;
      *v39 = 136446210;
      v41 = [a1 localIdentifier];
      v42 = sub_100032910();
      v44 = v43;

      v45 = sub_100021264(v42, v44, &v47);

      *(v39 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v26, v38, "Could not load any image for asset %{public}s", v39, 0xCu);
      sub_100022C1C(v40);
    }

    return 0;
  }

  return v18;
}

void sub_100027FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_100011F0C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v61 = v27;
  v29 = v28;
  v31 = v30;
  v32 = sub_100032750();
  sub_100011D60();
  v34 = v33;
  __chkstk_darwin(v35);
  sub_100011DAC();
  v38 = v37 - v36;
  if (!v29 || !v22)
  {
    v52 = 0;
    v51 = 0;
    LOBYTE(v62) = 1;
    LOBYTE(v65) = 1;
    v47 = 2;
    v53 = 2;
LABEL_27:
    *v31 = v47;
    *(v31 + 1) = v52;
    *(v31 + 2) = v65;
    *(v31 + 6) = v66;
    *(v31 + 8) = 0;
    *(v31 + 16) = 1;
    *(v31 + 17) = v62;
    *(v31 + 20) = *(&v62 + 3);
    *(v31 + 24) = v53;
    *(v31 + 25) = v51;
    *(v31 + 30) = v64;
    *(v31 + 26) = v63;
    *(v31 + 32) = 0;
    *(v31 + 40) = 1;
    sub_100011EF4();
    return;
  }

  sub_1000230A4(0, &qword_100045A00, PHAssetCollection_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_10002A864(v24, v22, ObjCClassFromMetadata);
  if (!v40)
  {
    goto LABEL_31;
  }

  v41 = sub_100032900();
  v42 = sub_100032900();
  v43 = PXStoryTitleInternationalStyleForStringAndAssetCollectionUUID();

  switch(v43)
  {
    case 0:

LABEL_16:
      v51 = 0;
      v52 = 0;
      v53 = 2;
      v47 = 2;
      goto LABEL_26;
    case 2:
      v62 = v26;
      sub_10000EF70();
      v44 = sub_100032B30();
      if ((v44 & 0x8000000000000000) == 0 || (v45 = __OFSUB__(0, v44), v44 = -v44, !v45))
      {
        v46 = v44 % 4;
        v47 = v44 % 4 < 3;
        (*(v34 + 104))(v38, enum case for WidgetFamily.systemSmall(_:), v32);
        sub_10002B06C();
        sub_10002AB78(v48, v49, &protocol conformance descriptor for WidgetFamily);
        v50 = sub_100032890();
        (*(v34 + 8))(v38, v32);
        if (v61 && (v50 & 1) == 0)
        {
          v58 = sub_100032900();
          v59 = sub_100032900();

          v60 = PXStoryTitleInternationalStyleForStringAndAssetCollectionUUID() == 2;

          v51 = 2 * v60;
        }

        else
        {

          v51 = 0;
        }

        v52 = 2;
        if (v46 >= 3)
        {
          v53 = 2;
        }

        else
        {
          v53 = 3;
        }

        goto LABEL_26;
      }

      goto LABEL_29;
    case 1:
      if (v61)
      {
        v54 = sub_100032900();
        v55 = sub_100032900();

        v56 = PXStoryTitleInternationalStyleForStringAndAssetCollectionUUID();

        if (v56 != 1)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }

      v62 = v26;
      sub_10000EF70();
      v57 = sub_100032B30();
      if (v57 < 0)
      {
        v45 = __OFSUB__(0, v57);
        v57 = -v57;
        if (v45)
        {
          goto LABEL_30;
        }
      }

      if (v57 % 4 < 0)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        break;
      }

      v53 = *(&off_100042020 + v57 % 4 + 32);
      v51 = 1;
      v52 = 1;
      v47 = v53;
LABEL_26:
      LOBYTE(v62) = 1;
      LOBYTE(v65) = 1;
      goto LABEL_27;
  }

  sub_100032C10();
  __break(1u);
}

id sub_1000283B8(id result)
{
  if (result)
  {
    return [result CGImage];
  }

  return result;
}

void sub_1000283E4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v19 = sub_100032910();
    sub_100032BA0();
    sub_100028780(a3, v22, v21);
    sub_10002AAC8(v21);
    if (v23)
    {
      if (swift_dynamicCast() && (v19 & 1) != 0)
      {
        v6 = sub_100032A10();
        if (qword_100044640 != -1)
        {
          swift_once();
        }

        v7 = qword_100048368;
        if (os_log_type_enabled(qword_100048368, v6))
        {
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v21[0] = v9;
          *v8 = 136446210;
          *(v8 + 4) = sub_100021264(a1, a2, v21);
          _os_log_impl(&_mh_execute_header, v7, v6, "Cancelled image load for asset %{public}s", v8, 0xCu);
          sub_100022C1C(v9);
        }
      }
    }

    else
    {
      sub_10002AA60(v22);
    }

    v20 = sub_100032910();
    sub_100032BA0();
    sub_100028780(a3, v22, v21);
    sub_10002AAC8(v21);
    if (v23)
    {
      sub_1000230A4(0, &qword_100045A10, NSError_ptr);
      if (swift_dynamicCast())
      {
        v10 = sub_100032A20();
        if (qword_100044640 != -1)
        {
          swift_once();
        }

        v11 = qword_100048368;
        if (os_log_type_enabled(qword_100048368, v10))
        {
          v12 = swift_slowAlloc();
          v21[0] = swift_slowAlloc();
          *v12 = 136446466;
          *(v12 + 4) = sub_100021264(a1, a2, v21);
          *(v12 + 12) = 2082;
          v13 = v20;
          v14 = [v13 description];
          v15 = sub_100032910();
          v17 = v16;

          v18 = sub_100021264(v15, v17, v21);

          *(v12 + 14) = v18;
          _os_log_impl(&_mh_execute_header, v11, v10, "Error loading image for asset %{public}s: %{public}s", v12, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }
      }
    }

    else
    {
      sub_10002AA60(v22);
    }
  }
}

double sub_100028780@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_10002A560(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_100022884(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *sub_1000287E4(void *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = sub_100031D80();
  v55 = *(v14 - 8);
  v56 = v14;
  v15 = __chkstk_darwin(v14);
  v54 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v47 - v17;
  v53 = a1;
  v19 = [a1 localIdentifier];
  v20 = sub_100032910();
  v22 = v21;

  v23 = swift_allocObject();
  v48 = v23;
  *(v23 + 16) = 0;
  v52 = v23 + 16;
  v24 = swift_allocObject();
  v47 = v24;
  *(v24 + 16) = 0;
  v51 = v24 + 16;
  v49 = [objc_opt_self() defaultManager];
  v25 = [objc_allocWithZone(PHImageRequestOptions) init];
  [v25 setSynchronous:1];
  [v25 setNetworkAccessAllowed:0];
  [v25 setNormalizedCropRect:{a2, a3, a4, a5}];
  [v25 setResizeMode:2];
  [v25 setDeliveryMode:1];
  [v25 setLoadingMode:14680064];
  if (qword_100044640 != -1)
  {
    swift_once();
  }

  v26 = qword_100048368;
  sub_100031D60();
  v27 = sub_100032AD0();
  sub_10000D4FC(&qword_100045430, &qword_1000348D8);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1000334B0;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_100022B0C();
  *(v28 + 64) = v29;
  *(v28 + 32) = v20;
  *(v28 + 40) = v22;
  aBlock = *&a6;
  v58 = *&a7;
  type metadata accessor for CGSize(0, v30, v31, v32);

  v33 = sub_100032920();
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 72) = v33;
  *(v28 + 80) = v34;
  v35 = v18;
  sub_100031D40(v27, &_mh_execute_header, v26, "RequestLocalImage", 17, 2, v18, "Requesting local image for asset %{public}s with target size %{public}s", 71, 2, v28);

  v36 = swift_allocObject();
  v36[2] = v50;
  v36[3] = v20;
  v37 = v48;
  v36[4] = v22;
  v36[5] = v37;
  v36[6] = v47;
  v61 = sub_10002AC08;
  v62 = v36;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100028E50;
  v60 = &unk_100042CE8;
  v38 = _Block_copy(&aBlock);
  v39 = v25;

  v40 = v49;
  [v49 requestImageForAsset:v53 targetSize:1 contentMode:v39 options:v38 resultHandler:{a6, a7}];
  _Block_release(v38);

  sub_100032AC0();
  v41 = v54;
  sub_100031D70();
  sub_100031D50();

  v42 = v56;
  v43 = *(v55 + 8);
  v43(v41, v56);
  v43(v35, v42);
  swift_beginAccess();
  v44 = *(v37 + 16);
  swift_beginAccess();
  v45 = v44;

  return v44;
}

uint64_t sub_100028D1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1000283E4(a4, a5, a2);
  v11 = sub_1000283B8(a1);
  swift_beginAccess();
  v12 = *(a6 + 16);
  *(a6 + 16) = v11;

  if (!a2)
  {
    v17 = 0u;
    v18 = 0u;
    goto LABEL_6;
  }

  *&v17 = sub_100032910();
  *(&v17 + 1) = v13;
  sub_100032BA0();
  sub_100028780(a2, &v17, v16);
  sub_10002AAC8(v16);
  if (!*(&v18 + 1))
  {
LABEL_6:
    sub_10002AA60(&v17);
    goto LABEL_7;
  }

  if (!swift_dynamicCast())
  {
LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v14 = v16[0];
LABEL_8:
  result = swift_beginAccess();
  *(a7 + 16) = v14;
  return result;
}

double sub_100028E50(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_100032860();
  }

  else
  {
    v5 = 0;
  }

  v6 = a2;
  v4(a2, v5);

  return result;
}

void *sub_100028EFC(void *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  p_isa = sub_100032650();
  v78 = *(p_isa - 1);
  __chkstk_darwin(p_isa);
  v73 = (&v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = sub_1000326C0();
  v85 = *(v87 - 8);
  v15 = __chkstk_darwin(v87);
  v77 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v84 = &v73 - v17;
  v83 = sub_100031D80();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a1;
  v20 = [a1 localIdentifier];
  v21 = sub_100032910();
  v23 = v22;

  v24 = swift_allocObject();
  v86 = v24;
  *(v24 + 16) = 0;
  v80 = (v24 + 16);
  v89 = [objc_opt_self() defaultManager];
  v74 = dispatch_semaphore_create(0);
  if (qword_100044640 != -1)
  {
    swift_once();
  }

  v25 = qword_100048368;
  sub_100031D60();
  v26 = sub_100032AD0();
  sub_10000D4FC(&qword_100045430, &qword_1000348D8);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000334B0;
  *(v27 + 56) = &type metadata for String;
  v28 = sub_100022B0C();
  *(v27 + 64) = v28;
  *(v27 + 32) = v21;
  *(v27 + 40) = v23;
  aBlock = *&a6;
  v92 = *&a7;
  type metadata accessor for CGSize(0, v29, v30, v31);

  v32 = sub_100032920();
  *(v27 + 96) = &type metadata for String;
  *(v27 + 104) = v28;
  *(v27 + 72) = v32;
  *(v27 + 80) = v33;
  v81 = v19;
  sub_100031D40(v26, &_mh_execute_header, v25, "RequestNetworkImage", 19, 2, v19, "Requesting cloud image for asset %{public}s with target size %{public}s", 71, 2, v27);

  v34 = [objc_allocWithZone(PHImageRequestOptions) init];
  [v34 setSynchronous:0];
  [v34 setNetworkAccessAllowed:1];
  [v34 setNormalizedCropRect:{a2, a3, a4, a5}];
  [v34 setResizeMode:2];
  [v34 setDeliveryMode:0];
  [v34 setAllowSecondaryDegradedImage:1];
  if (qword_100044648 != -1)
  {
    swift_once();
  }

  [v34 setResultHandlerQueue:qword_100048370];
  [v34 setDownloadIntent:1];
  [v34 setLoadingMode:14680064];
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  v36 = sub_100032A10();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1000334C0;
  *(v37 + 56) = &type metadata for String;
  *(v37 + 64) = v28;
  *(v37 + 32) = v21;
  *(v37 + 40) = v23;

  v88 = v25;
  sub_100031D30(v36, &_mh_execute_header, v25, "Spawned background task to load cloud image for asset %{public}s", 64, 2, v37);

  v38 = swift_allocObject();
  v38[2] = v75;
  v38[3] = v21;
  v75 = v21;
  v39 = v74;
  v38[4] = v23;
  v38[5] = v39;
  v38[6] = v86;
  v38[7] = v35;
  v95 = sub_10002AA38;
  v96 = v38;
  aBlock = _NSConcreteStackBlock;
  v92 = 1107296256;
  v93 = sub_100028E50;
  v94 = &unk_100042C98;
  v40 = _Block_copy(&aBlock);

  v41 = v34;
  v42 = v39;

  v43 = [v89 requestImageForAsset:v76 targetSize:1 contentMode:v41 options:v40 resultHandler:{a6, a7}];
  _Block_release(v40);
  v76 = v41;

  v44 = v77;
  sub_1000326B0();
  v45 = v73;
  *v73 = 10;
  v46 = v78;
  v47 = p_isa;
  (*(v78 + 104))(v45, enum case for DispatchTimeInterval.seconds(_:), p_isa);
  v48 = v84;
  sub_1000326D0();
  (*(v46 + 8))(v45, v47);
  v49 = v85 + 8;
  v78 = *(v85 + 8);
  (v78)(v44, v87);
  p_isa = &v42->isa;
  sub_100032AE0();
  v50 = sub_100032660();
  v51 = v80;
  if (v50)
  {
    v52 = sub_100032A20();
    if (os_log_type_enabled(v88, v52))
    {
      v53 = v49;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      aBlock = v55;
      *v54 = 136446210;
      *(v54 + 4) = sub_100021264(v75, v23, &aBlock);
      _os_log_impl(&_mh_execute_header, v88, v52, "Timed out loading cloud image for asset %{public}s", v54, 0xCu);
      sub_100022C1C(v55);

      v49 = v53;
      v48 = v84;
    }

    [v89 cancelImageRequest:v43];
  }

  swift_beginAccess();
  if (*(v35 + 16))
  {

    v56 = v81;
  }

  else
  {
    v77 = v35;
    swift_beginAccess();
    v57 = *v51;
    if (*v51)
    {
      v85 = v49;
      v58 = v57;
      v59 = sub_100032A20();
      v60 = v88;
      if (os_log_type_enabled(v88, v59))
      {
        v58 = v58;
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v90[0] = v62;
        *v61 = 136446722;
        v63 = sub_100021264(v75, v23, v90);

        *(v61 + 4) = v63;
        *(v61 + 12) = 2050;
        *(v61 + 14) = CGImageGetWidth(v58);
        *(v61 + 22) = 2050;
        v48 = v84;
        *(v61 + 24) = CGImageGetHeight(v58);

        _os_log_impl(&_mh_execute_header, v60, v59, "Using degraded quality for asset %{public}s; variant %{public}ld x %{public}ld", v61, 0x20u);
        sub_100022C1C(v62);
      }

      else
      {
      }
    }

    else
    {
      v64 = sub_100032A20();
      v65 = v88;
      if (os_log_type_enabled(v88, v64))
      {
        v66 = swift_slowAlloc();
        v85 = v49;
        v67 = v66;
        v68 = swift_slowAlloc();
        v90[0] = v68;
        *v67 = 136446210;
        v69 = sub_100021264(v75, v23, v90);

        *(v67 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v65, v64, "No degraded quality available for asset %{public}s;", v67, 0xCu);
        sub_100022C1C(v68);
      }

      else
      {
      }
    }

    v56 = v81;
  }

  sub_100032AC0();
  sub_100031D50();

  (v78)(v48, v87);
  (*(v82 + 8))(v56, v83);
  swift_beginAccess();
  v70 = *v51;
  if (*v51)
  {
    v71 = v70;
  }

  return v70;
}

void sub_100029A80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1000283E4(a4, a5, a2);
  if (a1)
  {
    v14 = sub_1000283B8(a1);
    swift_beginAccess();
    v15 = *(a7 + 16);
    *(a7 + 16) = v14;

    if (!v14)
    {
      return;
    }

    if (a2)
    {
      sub_100032910();
      v16 = v14;
      sub_100032BA0();
      sub_100028780(a2, &v32, v31);
      sub_10002AAC8(v31);
      if (*(&v33 + 1))
      {
        if (swift_dynamicCast() && (v31[0] & 1) != 0)
        {
          v17 = sub_100032A10();
          if (qword_100044640 != -1)
          {
            swift_once();
          }

          v18 = qword_100048368;
          if (os_log_type_enabled(qword_100048368, v17))
          {
            v19 = v16;
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            v31[0] = v21;
            *v20 = 134349570;
            *(v20 + 4) = CGImageGetWidth(v19);
            *(v20 + 12) = 2050;
            *(v20 + 14) = CGImageGetHeight(v19);

            *(v20 + 22) = 2082;
            *(v20 + 24) = sub_100021264(a4, a5, v31);
            _os_log_impl(&_mh_execute_header, v18, v17, "Recieved degraded quality (%{public}ld x %{public}ld) cloud image for asset %{public}s", v20, 0x20u);
            sub_100022C1C(v21);
          }

          else
          {
          }

          return;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v26 = v14;
    }

    sub_10002AA60(&v32);
LABEL_18:
    swift_beginAccess();
    *(a8 + 16) = 1;
    v27 = sub_100032A10();
    if (qword_100044640 != -1)
    {
      swift_once();
    }

    v28 = qword_100048368;
    if (os_log_type_enabled(qword_100048368, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v32 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_100021264(a4, a5, &v32);
      _os_log_impl(&_mh_execute_header, v28, v27, "Recieved final cloud image for asset %{public}s", v29, 0xCu);
      sub_100022C1C(v30);
    }

    sub_100032AF0();

    return;
  }

  v22 = sub_100032A10();
  if (qword_100044640 != -1)
  {
    swift_once();
  }

  v23 = qword_100048368;
  if (os_log_type_enabled(qword_100048368, v22))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31[0] = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_100021264(a4, a5, v31);
    _os_log_impl(&_mh_execute_header, v23, v22, "Recieved callback but no cloud image for asset %{public}s", v24, 0xCu);
    sub_100022C1C(v25);
  }

  sub_100032AF0();
}

uint64_t sub_100029ED8()
{
  v1 = OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily;
  sub_100032750();
  sub_100011D74();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_destination;
  sub_100031B90();
  sub_100011D74();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t sub_100029FE8(uint64_t a1)
{
  result = sub_100032750();
  if (v2 <= 0x3F)
  {
    result = sub_100031B90();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10002A0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002B0C8(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = sub_10002B120();
  sub_10002A18C(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
  return v8;
}

void sub_10002A18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, __int128 a23, uint64_t a24, uint64_t a25, uint64_t *a26, char a27)
{
  sub_100011F0C();
  v57 = v27;
  v58 = v28;
  v55 = v29;
  v56 = v30;
  v32 = v31;
  v53 = v33;
  v54 = v34;
  v36 = v35;
  v37 = sub_100031B90();
  sub_100011D60();
  v39 = v38;
  __chkstk_darwin(v40);
  sub_100011DAC();
  v43 = v42 - v41;
  v44 = sub_100032750();
  sub_100011D60();
  v46 = v45;
  __chkstk_darwin(v47);
  sub_100011DAC();
  v50 = v49 - v48;
  (*(v46 + 16))(v49 - v48, v36, v44);
  v51 = sub_10002B1E4();
  v52(v51);
  sub_100027718(v53, v50, v54, v43, v55, v56, v57, v58, a21, a22, a23, a24, a25, a26, a27);
  (*(v39 + 8))(v32, v37);
  (*(v46 + 8))(v36, v44);
  sub_100011EF4();
}

uint64_t sub_10002A380()
{
  sub_100029ED8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

__n128 sub_10002A43C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002A450(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 41))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 1);
      v4 = v3 >= 3;
      v2 = v3 - 3;
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

uint64_t sub_10002A48C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_10002A4FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosReliveWidgetSize(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002A560(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100032B80(*(v2 + 40));

  return sub_10002A688(a1, v4);
}

unint64_t sub_10002A5A4(char a1)
{
  sub_100032D00();
  sub_100032D10(a1 & 1);
  v2 = sub_100032D20();

  return sub_10002A74C(a1 & 1, v2);
}

unint64_t sub_10002A610(uint64_t a1, uint64_t a2)
{
  sub_100032D00();
  sub_100032940();
  v4 = sub_100032D20();

  return sub_10002A7B0(a1, a2, v4);
}

unint64_t sub_10002A688(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_10002AB1C(*(v2 + 48) + 40 * i, v7);
    v5 = sub_100032B90();
    sub_10002AAC8(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_10002A74C(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

unint64_t sub_10002A7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_100032CD0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10002A864(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100032900();
  v5 = [a3 uuidFromLocalIdentifier:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_100032910();

  return v6;
}

uint64_t sub_10002A8E4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_100032910();

  return v4;
}

uint64_t sub_10002A944(uint64_t a1)
{
  v2 = type metadata accessor for PhotosReliveWidgetSize(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002A9A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002A9E8()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002AA48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002AA60(uint64_t a1)
{
  v2 = sub_10000D4FC(&qword_1000453F8, &qword_1000348C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002AB78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002ABC0()
{

  return _swift_deallocObject(v0, 56, 7);
}

__n128 initializeBufferWithCopyOfBuffer for PhotosReliveWidgetViewModel.TitleLayout(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotosReliveWidgetViewModel.TitleLayout(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 1);
      v4 = v3 >= 3;
      v2 = v3 - 3;
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

uint64_t storeEnumTagSinglePayload for PhotosReliveWidgetViewModel.TitleLayout(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 1) = a2 + 2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosReliveWidgetViewModel.TitleLayout.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10002AD88);
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

uint64_t getEnumTagSinglePayload for PhotosReliveWidgetViewModel.TitleLayout.Position(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for PhotosReliveWidgetViewModel.TitleLayout.Position(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10002AF14);
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

unint64_t sub_10002AF94()
{
  result = qword_100045A40;
  if (!qword_100045A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A40);
  }

  return result;
}

unint64_t sub_10002AFEC()
{
  result = qword_100045A48;
  if (!qword_100045A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A48);
  }

  return result;
}

uint64_t sub_10002B0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 96) = a8;

  return swift_allocObject();
}

uint64_t sub_10002B1B0(uint64_t a1)
{
  *(v1 - 120) = 0u;
  *(v1 - 104) = 0u;
  *(v1 - 88) = 0;

  return swift_allocObject();
}

void sub_10002B204(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

void sub_10002B224()
{
  v2 = *(v0 - 336);
}

double sub_10002B23C()
{

  return result;
}

unint64_t sub_10002B2B8()
{
  result = qword_100045A50;
  if (!qword_100045A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A50);
  }

  return result;
}

unint64_t sub_10002B310()
{
  result = qword_100045A58;
  if (!qword_100045A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A58);
  }

  return result;
}

unint64_t sub_10002B368()
{
  result = qword_100045A60;
  if (!qword_100045A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A60);
  }

  return result;
}

uint64_t sub_10002B3D8()
{
  v0 = sub_100031B50();
  sub_100025688(v0, qword_1000483C8);
  sub_10000F4F4(v0, qword_1000483C8);
  return sub_100031B20();
}

uint64_t sub_10002B460()
{
  v0 = sub_1000317C0();
  sub_100011D60();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100011DAC();
  v6 = v5 - v4;
  sub_100031A20();
  sub_100011D60();
  __chkstk_darwin(v7);
  sub_100011DAC();
  (*(v10 + 104))(v9 - v8, enum case for EquatableComparisonOperator.equalTo(_:));
  (*(v2 + 104))(v6, enum case for IntentOrigin.local(_:), v0);
  sub_10000D4FC(&qword_100045A78, &qword_1000352F0);
  sub_10002B2B8();
  sub_1000256F0();
  sub_100022D6C(v11, &qword_100045A78, &qword_1000352F0, v12);
  return sub_100031A50();
}

uint64_t sub_10002B65C()
{
  swift_getKeyPath();
  sub_10002B2B8();
  v0 = sub_100031950();

  swift_getKeyPath();

  v1 = sub_100031950();

  sub_10000D4FC(&qword_1000454C0, &qword_100035320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100034B90;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;

  v3 = sub_100031940();

  return v3;
}

uint64_t sub_10002B750@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002B43C();
  *a1 = result;
  return result;
}

uint64_t sub_10002B794(uint64_t a1)
{
  v1 = sub_10000D4FC(&qword_100045A78, &qword_1000352F0);
  sub_100011D60();
  v3 = v2;
  v5 = __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  sub_10002B2B8();
  sub_100031960();
  sub_1000256F0();
  sub_100022D6C(v10, &qword_100045A78, &qword_1000352F0, v11);
  sub_100031990();
  v12 = *(v3 + 8);
  v12(v7, v1);
  sub_100031980();
  return (v12)(v9, v1);
}

uint64_t sub_10002B918()
{
  swift_getKeyPath();
  sub_10002B2B8();
  v0 = sub_100031950();

  sub_10000D4FC(&qword_1000454C0, &qword_100035320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000343D0;
  *(v1 + 32) = v0;

  v2 = sub_100031940();

  return v2;
}

uint64_t sub_10002B9D4()
{
  sub_100031970();
  sub_100011D60();
  v65 = v0;
  v66 = v1;
  __chkstk_darwin(v0);
  sub_100011DAC();
  v64 = v3 - v2;
  v4 = sub_10000D4FC(&qword_1000456A8, &unk_100034D70);
  v5 = sub_100011EE8(v4);
  __chkstk_darwin(v5);
  v63 = &v47 - v6;
  v7 = sub_10000D4FC(&qword_1000456A0, &qword_100034D68);
  v8 = sub_100011EE8(v7);
  __chkstk_darwin(v8);
  v62 = &v47 - v9;
  v10 = sub_10000D4FC(&qword_1000456B0, &unk_1000352E0);
  v11 = sub_100011EE8(v10);
  __chkstk_darwin(v11);
  v61 = &v47 - v12;
  v59 = sub_100031B30();
  v13 = *(v59 - 8);
  __chkstk_darwin(v59);
  sub_100011DAC();
  v16 = v15 - v14;
  v17 = sub_100031C60();
  v18 = sub_100011EE8(v17);
  __chkstk_darwin(v18);
  sub_100011DAC();
  v19 = sub_1000328F0();
  v20 = sub_100011EE8(v19);
  __chkstk_darwin(v20);
  sub_100011DAC();
  v21 = sub_100031B50();
  v55 = v21;
  __chkstk_darwin(v21);
  sub_100011DAC();
  v53 = sub_10000D4FC(&qword_1000456E0, &qword_100034D98);
  sub_1000328A0();
  v57 = &unk_100035270;
  sub_100031C50();
  v56 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v22 = *(v13 + 104);
  v58 = v13 + 104;
  v60 = v22;
  v50 = v16;
  v22(v16);
  sub_10002C15C();
  sub_100031B60();
  sub_100025708();
  sub_10000D904(v23, v24, v25, v21);
  v68 = 0;
  v54 = sub_1000329E0();
  sub_100025708();
  sub_10000D904(v26, v27, v28, v29);
  v52 = sub_1000317B0();
  sub_100025708();
  sub_10000D904(v30, v31, v32, v33);
  v49 = enum case for InputConnectionBehavior.default(_:);
  v34 = v65;
  v35 = *(v66 + 104);
  v66 += 104;
  v48 = v35;
  v36 = v64;
  v35(v64);
  sub_10002C144();
  v51 = sub_100031850();
  sub_1000328A0();
  sub_100031C50();
  v60(v50, v56, v59);
  sub_10002C15C();
  sub_100031B60();
  sub_100025708();
  sub_10000D904(v37, v38, v39, v55);
  v67 = 1;
  sub_100025708();
  sub_10000D904(v40, v41, v42, v54);
  sub_100025708();
  sub_10000D904(v43, v44, v45, v52);
  v48(v36, v49, v34);
  sub_10002C144();
  sub_100031850();
  return v51;
}

uint64_t sub_10002BEB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100044650 != -1)
  {
    swift_once();
  }

  v2 = sub_100031B50();
  v3 = sub_10000F4F4(v2, qword_1000483C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10002BF5C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100022774();
  *v4 = v2;
  v4[1] = sub_10002533C;

  return WidgetConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_10002C008@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002B9D4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002C030(uint64_t a1)
{
  v2 = sub_10002B2B8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10002C06C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10002C0AC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10002C174()
{
  v0 = sub_10000D4FC(&qword_1000456B0, &unk_1000352E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_100031B50();
  __chkstk_darwin(v3);
  v4 = sub_1000319D0();
  sub_100025688(v4, qword_1000483E0);
  sub_10000F4F4(v4, qword_1000483E0);
  sub_100031B20();
  sub_10000D904(v2, 1, 1, v3);
  return sub_1000319C0();
}

uint64_t sub_10002C2AC()
{
  sub_10000D4FC(&qword_100045AF0, "*U");
  sub_10000D4FC(&qword_100045AF8, qword_100035610);
  *(swift_allocObject() + 16) = xmmword_1000334C0;
  sub_1000318E0();
  sub_100031920();
  sub_10002C9C4();
  result = sub_100032870();
  qword_1000483F8 = result;
  return result;
}

BOOL sub_10002C3A8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100042098;
  v6._object = a2;
  v4 = sub_100032C40(v3, v6);

  return v4 != 0;
}

unint64_t sub_10002C3F8()
{
  result = qword_100045A88;
  if (!qword_100045A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A88);
  }

  return result;
}

Swift::Int sub_10002C450()
{
  sub_100032D00();
  sub_100032940();
  return sub_100032D20();
}

Swift::Int sub_10002C4BC(uint64_t a1)
{
  sub_100032D00();
  sub_100032940();
  return sub_100032D20();
}

BOOL sub_10002C508@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002C3A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10002C558()
{
  result = qword_100045A90;
  if (!qword_100045A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A90);
  }

  return result;
}

unint64_t sub_10002C5B0()
{
  result = qword_100045A98;
  if (!qword_100045A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A98);
  }

  return result;
}

unint64_t sub_10002C608()
{
  result = qword_100045AA0;
  if (!qword_100045AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AA0);
  }

  return result;
}

unint64_t sub_10002C66C()
{
  result = qword_100045AA8;
  if (!qword_100045AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AA8);
  }

  return result;
}

unint64_t sub_10002C6C4()
{
  result = qword_100045AB0;
  if (!qword_100045AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AB0);
  }

  return result;
}

unint64_t sub_10002C71C()
{
  result = qword_100045AB8;
  if (!qword_100045AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AB8);
  }

  return result;
}

unint64_t sub_10002C774()
{
  result = qword_100045AC0;
  if (!qword_100045AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AC0);
  }

  return result;
}

uint64_t sub_10002C7CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100044658 != -1)
  {
    swift_once();
  }

  v2 = sub_1000319D0();
  v3 = sub_10000F4F4(v2, qword_1000483E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10002C8C4(uint64_t a1)
{
  v2 = sub_1000255D4();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10002C914()
{
  result = qword_100045AC8;
  if (!qword_100045AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AC8);
  }

  return result;
}

unint64_t sub_10002C96C()
{
  result = qword_100045AD0;
  if (!qword_100045AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AD0);
  }

  return result;
}

unint64_t sub_10002C9C4()
{
  result = qword_100045AD8;
  if (!qword_100045AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AD8);
  }

  return result;
}

uint64_t sub_10002CA18()
{
  if (qword_100044660 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10002CA74(uint64_t a1)
{
  v2 = sub_10002C774();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10002CAC4()
{
  result = qword_100045AE0;
  if (!qword_100045AE0)
  {
    sub_10000D57C(&qword_100045AE8, &qword_1000355A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosReliveWidgetType(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for PhotosReliveWidgetType(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x10002CC28);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10002CC74()
{
  result = qword_100045B00;
  if (!qword_100045B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B00);
  }

  return result;
}

uint64_t sub_10002CCC8()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_10002CCF8()
{
  v0 = sub_10000D4FC(&qword_1000456B0, &unk_1000352E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_100031B50();
  __chkstk_darwin(v3);
  v4 = sub_1000319D0();
  sub_100025688(v4, qword_100048400);
  sub_10000F4F4(v4, qword_100048400);
  sub_100031B20();
  sub_10000D904(v2, 1, 1, v3);
  return sub_1000319C0();
}

Swift::Int sub_10002CE68(char a1)
{
  sub_100032D00();
  sub_100032D10(a1 & 1);
  return sub_100032D20();
}

uint64_t sub_10002CECC()
{
  sub_1000230A4(0, &qword_100045428, OS_os_log_ptr);
  result = sub_100032B00();
  qword_100048418 = result;
  return result;
}

uint64_t sub_10002CF44()
{
  sub_100023EC8();
  v0[4] = v1;
  v2 = sub_10000D4FC(&qword_100045B30, qword_1000356E0);
  v0[5] = v2;
  sub_100023E68(v2);
  v0[6] = v3;
  v0[7] = sub_1000240D0();
  v4 = sub_100023E90();

  return _swift_task_switch(v4);
}

void sub_10002CFF4()
{
  v24 = v0 + 2;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_10002D250(v2);
  v4 = sub_1000318C0();
  (*(v1 + 8))(v2, v3);
  v5 = 0;
  v26 = *(v4 + 16);
  v22 = &_swiftEmptyArrayStorage;
  v23 = v4;
LABEL_2:
  v6 = 40 * v5;
  while (v26 != v5)
  {
    if (v5 >= *(v4 + 16))
    {
      __break(1u);
      return;
    }

    v7 = v5;
    v8 = v25[4];
    v10 = *(v4 + v6 + 32);
    v9 = *(v4 + v6 + 40);
    v12 = *(v4 + v6 + 48);
    v11 = *(v4 + v6 + 56);
    v13 = *(v4 + v6 + 64);
    v25[2] = v9;
    v25[3] = v12;
    v14 = swift_task_alloc();
    *(v14 + 16) = v24;
    swift_bridgeObjectRetain_n();

    LOBYTE(v8) = sub_100030A24(sub_100030D6C, v14, v8);

    if (v8)
    {
      v15 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100021814(0, v22[2] + 1, 1);
        v15 = v22;
      }

      v16 = v7;
      v17 = v11;
      v19 = v15[2];
      v18 = v15[3];
      if (v19 >= v18 >> 1)
      {
        sub_100021814((v18 > 1), v19 + 1, 1);
        v17 = v11;
        v16 = v7;
        v15 = v22;
      }

      v5 = v16 + 1;
      v15[2] = v19 + 1;
      v22 = v15;
      v20 = &v15[5 * v19];
      v20[4] = v10;
      v20[5] = v9;
      v20[6] = v12;
      v20[7] = v17;
      v20[8] = v13;
      v4 = v23;
      goto LABEL_2;
    }

    v6 += 40;
    v5 = v7 + 1;
    v4 = v23;
  }

  v21 = v25[1];

  v21(v22);
}

uint64_t sub_10002D250@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v1 = sub_10000D4FC(&qword_1000456B0, &unk_1000352E0);
  __chkstk_darwin(v1 - 8);
  v69 = &v63 - v2;
  v79 = sub_10000D4FC(&qword_1000454D0, &qword_100034950);
  v86 = *(v79 - 8);
  __chkstk_darwin(v79);
  v91 = &v63 - v3;
  v85 = sub_100031B30();
  v4 = *(v85 - 8);
  __chkstk_darwin(v85);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100031C60();
  __chkstk_darwin(v7 - 8);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000328F0();
  __chkstk_darwin(v10 - 8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100031B50();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v90 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v88 = &v63 - v17;
  v78 = sub_10000D4FC(&qword_1000454D8, &qword_100034958);
  v76 = *(v78 - 8);
  v18 = __chkstk_darwin(v78);
  v66 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v77 = &v63 - v20;
  if ([objc_opt_self() systemPhotoLibraryIsObtainable])
  {
    v21 = sub_10001A5E8();
    if (v21)
    {
      v87 = v21;
      v22 = sub_10002DEB0(v21);
      v23 = 0;
      v24 = 0;
      v63 = "Photo library is not obtainable";
      v67 = (v76 + 32);
      v65 = "PHOTOS_WIDGET_ALBUM_TYPE_USER";
      v73 = &unk_1000359C0;
      v72 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v71 = (v4 + 104);
      v64 = "BUM_PICKER_PROMPT";
      v74 = (v14 + 16);
      v75 = (v14 + 8);
      v68 = v86 + 32;
      v25 = &_swiftEmptyArrayStorage;
      v84 = v13;
      v83 = v6;
      v82 = v9;
      v81 = v12;
      v80 = v22;
      while (1)
      {
        v26 = v23;
        if (!v22[2])
        {
          goto LABEL_33;
        }

        v94 = v23;
        v27 = *(&off_1000420F8 + v24 + 32);
        v28 = sub_10002A5A4(*(&off_1000420F8 + v24 + 32));
        if ((v29 & 1) == 0)
        {
          goto LABEL_32;
        }

        v92 = v25;
        v30 = *(v22[7] + 8 * v28);

        v89 = v27;
        v31 = sub_10002E1D0(v87, v27, v30);
        v32 = sub_100021140(v30);
        v33 = 0;
        v97 = v30 & 0xC000000000000001;
        v98 = v32;
        v96 = v30 & 0xFFFFFFFFFFFFFF8;
        v93 = &_swiftEmptyArrayStorage;
        v95 = v31;
        while (v98 != v33)
        {
          if (v97)
          {
            v34 = sub_100032BE0();
          }

          else
          {
            if (v33 >= *(v96 + 16))
            {
              goto LABEL_39;
            }

            v34 = *(v30 + 8 * v33 + 32);
          }

          v35 = v34;
          v36 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          v37 = [v34 localIdentifier];
          v38 = sub_100032910();
          v13 = v39;

          if (!v31[2])
          {
            goto LABEL_16;
          }

          v40 = sub_10002A610(v38, v13);
          v42 = v41;

          if ((v42 & 1) == 0)
          {
            goto LABEL_17;
          }

          v43 = v30;
          v44 = (v31[7] + 16 * v40);
          v45 = *v44;
          v13 = v44[1];

          v46 = sub_100030CC4(v35);
          if (v47)
          {
            v48 = v46;
            v49 = v47;
            sub_10000D4FC(&qword_100045B88, &qword_100035A60);

            sub_100031B20();
            v50 = sub_1000317F0();
            v99 = v45;
            v100 = v13;
            sub_1000317E0();
            v99 = v50;
            v100 = v45;
            v101 = v13;
            v102 = v48;
            v103 = v49;
            sub_10002FAC4();

            v51 = v66;
            sub_100031780();

            v52 = *v67;
            (*v67)(v77, v51, v78);
            v53 = v93;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v53 = sub_1000307C8(0, *(v53 + 2) + 1, 1, v53);
            }

            v30 = v43;
            v13 = *(v53 + 2);
            v54 = *(v53 + 3);
            v93 = v53;
            v31 = v95;
            if (v13 >= v54 >> 1)
            {
              v93 = sub_1000307C8((v54 > 1), v13 + 1, 1, v93);
            }

            v55 = v93;
            *(v93 + 2) = v13 + 1;
            v52(&v55[((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v13], v77, v78);
            v33 = v36;
          }

          else
          {
            v30 = v43;
            v31 = v95;
LABEL_16:

LABEL_17:

            ++v33;
          }
        }

        if (*(v93 + 2))
        {
          v13 = v84;
          v6 = v83;
          v25 = v92;
          v22 = v80;
          sub_1000328A0();
          sub_100031C50();
          (*v71)(v6, v72, v85);
          v56 = v90;
          sub_100031B60();
          (*v74)(v88, v56, v13);
          sub_10002FAC4();
          sub_1000318A0();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v25 = sub_1000306A8(0, *(v25 + 2) + 1, 1, v25);
          }

          v59 = *(v25 + 2);
          v58 = *(v25 + 3);
          if (v59 >= v58 >> 1)
          {
            v25 = sub_1000306A8((v58 > 1), v59 + 1, 1, v25);
          }

          (*v75)(v90, v13);
          *(v25 + 2) = v59 + 1;
          (*(v86 + 32))(&v25[((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v59], v91, v79);
        }

        else
        {

          v13 = v84;
          v6 = v83;
          v25 = v92;
          v22 = v80;
        }

LABEL_32:
        v26 = v94;
LABEL_33:
        v23 = 1;
        v24 = &_mh_execute_header.magic + 1;
        if (v26)
        {

          sub_1000328A0();
          sub_100031C50();
          (*v71)(v6, v72, v85);
          v60 = v88;
          sub_100031B60();
          v61 = v69;
          (*v74)(v69, v60, v13);
          sub_10000D904(v61, 0, 1, v13);
          sub_10002FAC4();
          sub_1000318B0();

          return (*v75)(v60, v13);
        }
      }
    }
  }

  else
  {
    v33 = sub_100032A20();
    if (qword_100044670 != -1)
    {
LABEL_40:
      swift_once();
    }

    sub_100031D30(v33, &_mh_execute_header, qword_100048418, "Photo library is not obtainable", 31, 2, &_swiftEmptyArrayStorage, v63, v64, v65);
  }

  sub_10000D904(v69, 1, 1, v13);
  sub_10002FAC4();
  return sub_1000318B0();
}

uint64_t sub_10002DE2C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = sub_100023E90();
  return _swift_task_switch(v2);
}

uint64_t sub_10002DE54()
{
  sub_100023EC8();
  sub_10002D250(*(v0 + 16));
  sub_100024238();

  return v1();
}

void *sub_10002DEB0(void *a1)
{
  v1 = [a1 librarySpecificFetchOptions];
  v2 = objc_opt_self();
  v3 = [v2 fetchAssetCollectionsWithType:2 subtype:203 options:v1];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = v4;
    sub_100032980();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000329C0();
    }

    sub_1000329D0();
  }

  v6 = [v2 fetchAssetCollectionsWithType:2 subtype:212 options:v1];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = v7;
    sub_100032980();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000329C0();
    }

    sub_1000329D0();
  }

  if (sub_100021140(&_swiftEmptyArrayStorage))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100030AD4(&_swiftEmptyArrayStorage, 0, isUniquelyReferenced_nonNull_native);
  }

  else
  {
  }

  sub_10000D4FC(&qword_1000454C0, &qword_100035320);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000343D0;
  v11 = objc_allocWithZone(NSSortDescriptor);
  *(v10 + 32) = sub_10003063C(0x657A696C61636F6CLL, 0xEE00656C74695464, 1, v12);
  sub_100030C40(v10, v1);
  v13 = [v2 fetchAssetCollectionsWithType:1 subtype:2 options:v1];
  v14 = [v13 fetchedObjects];

  if (!v14)
  {
    goto LABEL_16;
  }

  sub_1000230A4(0, &qword_100045A00, PHAssetCollection_ptr);
  v15 = sub_1000329A0();

  if (!sub_100021140(v15))
  {

LABEL_16:

    return &_swiftEmptyDictionarySingleton;
  }

  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_100030AD4(v15, 1, v16);

  return &_swiftEmptyDictionarySingleton;
}

unint64_t *sub_10002E1D0(char a1, char a2, unint64_t a3)
{
  v3 = a3;
  LOBYTE(v4) = a2;
  LOBYTE(v5) = a1;
  if (a3 >> 62)
  {
    goto LABEL_73;
  }

  v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (1)
    {
      v106 = v3;
      if ((v4 & 1) == 0)
      {
        break;
      }

      v7 = sub_100021144(v3);
      if (v7)
      {
        v8 = v7;
        v110 = &_swiftEmptyArrayStorage;
        sub_1000217F4(0, v7 & ~(v7 >> 63), 0);
        if (v8 < 0)
        {
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          sub_100032CE0();
          __break(1u);
LABEL_80:
          result = sub_100032C10();
          __break(1u);
          return result;
        }

        v9 = 0;
        v10 = v110;
        v11 = v3 & 0xC000000000000001;
        do
        {
          if (v11)
          {
            v12 = sub_100032BE0();
          }

          else
          {
            v12 = *(v3 + 8 * v9 + 32);
          }

          v13 = v12;
          v14 = [v12 localIdentifier];
          v15 = sub_100032910();
          v17 = v16;

          v110 = v10;
          v19 = *(v10 + 16);
          v18 = *(v10 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_1000217F4((v18 > 1), v19 + 1, 1);
            v10 = v110;
          }

          ++v9;
          *(v10 + 16) = v19 + 1;
          v20 = v10 + 16 * v19;
          *(v20 + 32) = v15;
          *(v20 + 40) = v17;
          v3 = v106;
        }

        while (v8 != v9);
      }

      LOBYTE(v4) = v5;
      v58 = sub_100032A50();

      v59 = 0;
      v3 = v58 + 64;
      v60 = 1 << *(v58 + 32);
      v61 = -1;
      if (v60 < 64)
      {
        v61 = ~(-1 << v60);
      }

      v62 = v61 & *(v58 + 64);
      v63 = (v60 + 63) >> 6;
      v5 = &_swiftEmptyDictionarySingleton;
      v103 = v63;
      for (i = v58; v62; v59 = v64)
      {
        v64 = v59;
LABEL_47:
        v65 = __clz(__rbit64(v62));
        v62 &= v62 - 1;
        v66 = (v64 << 10) | (16 * v65);
        v67 = (*(v58 + 48) + v66);
        v68 = v67[1];
        v107 = *v67;
        v69 = *(v58 + 56) + v66;
        v70 = *v69;
        LOBYTE(v4) = *(v69 + 8);

        v109 = v70;
        if (v4)
        {
          sub_100030D28(v70, 1, v71);
          v72 = sub_100032A20();
          if (qword_100044670 != -1)
          {
            swift_once();
          }

          v73 = qword_100048418;
          if (os_log_type_enabled(qword_100048418, v72))
          {
            v74 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            *v74 = 136315394;
            v75 = sub_100021264(v107, v68, &v110);
            v76 = v3;
            v77 = v75;

            *(v74 + 4) = v77;
            v3 = v76;
            *(v74 + 12) = 2080;
            swift_getErrorValue();
            v78 = sub_100032CF0();
            LOBYTE(v4) = v79;
            v80 = sub_100021264(v78, v79, &v110);

            *(v74 + 14) = v80;
            _os_log_impl(&_mh_execute_header, v73, v72, "could not get cloud identifier for album %s with error %s", v74, 0x16u);
            swift_arrayDestroy();
            v63 = v103;

            v58 = i;
          }

          else
          {
          }

          sub_100030D34(v109, 1);
        }

        else
        {
          sub_100030D28(v70, 0, v71);
          v81 = [v70 stringValue];
          v82 = sub_100032910();
          v100 = v83;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v110 = v5;
          v85 = sub_10002A610(v107, v68);
          v87 = v5[2];
          v88 = (v86 & 1) == 0;
          v89 = v87 + v88;
          if (__OFADD__(v87, v88))
          {
            goto LABEL_77;
          }

          v90 = v85;
          v91 = v86;
          sub_10000D4FC(&qword_100045B98, &unk_100035A80);
          v4 = &v110;
          if (sub_100032C00(isUniquelyReferenced_nonNull_native, v89))
          {
            LOBYTE(v4) = v110;
            v92 = sub_10002A610(v107, v68);
            if ((v91 & 1) != (v93 & 1))
            {
              goto LABEL_79;
            }

            v90 = v92;
          }

          if (v91)
          {

            v5 = v110;
            v94 = (v110[7] + 16 * v90);
            *v94 = v82;
            v94[1] = v100;

            sub_100030D34(v109, 0);
          }

          else
          {
            v5 = v110;
            v110[(v90 >> 6) + 8] |= 1 << v90;
            v95 = (v5[6] + 16 * v90);
            *v95 = v107;
            v95[1] = v68;
            v96 = (v5[7] + 16 * v90);
            *v96 = v82;
            v96[1] = v100;
            sub_100030D34(v109, 0);
            v97 = v5[2];
            v41 = __OFADD__(v97, 1);
            v98 = v97 + 1;
            if (v41)
            {
              goto LABEL_78;
            }

            v5[2] = v98;
          }

          v63 = v103;
          v58 = i;
        }
      }

      while (1)
      {
        v64 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          break;
        }

        if (v64 >= v63)
        {

          return v5;
        }

        v62 = *(v3 + 8 * v64);
        ++v59;
        if (v62)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_67:
      __break(1u);
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
LABEL_73:
      v6 = sub_100032C20();
      if (!v6)
      {
        return &_swiftEmptyDictionarySingleton;
      }
    }

    v21 = 0;
    v102 = v3 & 0xFFFFFFFFFFFFFF8;
    v104 = v3 & 0xC000000000000001;
    v5 = &_swiftEmptyDictionarySingleton;
    v101 = v6;
    while (1)
    {
      if (v6 == v21)
      {
        return v5;
      }

      if (v104)
      {
        v22 = sub_100032BE0();
      }

      else
      {
        if (v21 >= *(v102 + 16))
        {
          goto LABEL_68;
        }

        v22 = *(v3 + 8 * v21 + 32);
      }

      v4 = v22;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_67;
      }

      v23 = [v22 assetCollectionSubtype];
      v108 = v4;
      if (v23 == 203)
      {
        v4 = [v4 localIdentifier];
        v24 = sub_100032910();
        v26 = v25;

        v27 = sub_100032910();
        v29 = v28;
        v30 = swift_isUniquelyReferenced_nonNull_native();
        v110 = v5;
        LOBYTE(v4) = v5;
        v31 = sub_10002A610(v24, v26);
        v33 = v5[2];
        v34 = (v32 & 1) == 0;
        v5 = (v33 + v34);
        if (__OFADD__(v33, v34))
        {
          goto LABEL_70;
        }

        v35 = v31;
        v3 = v32;
        sub_10000D4FC(&qword_100045B98, &unk_100035A80);
        v4 = &v110;
        if (sub_100032C00(v30, v5))
        {
          LOBYTE(v4) = v110;
          v36 = sub_10002A610(v24, v26);
          if ((v3 & 1) != (v37 & 1))
          {
            goto LABEL_79;
          }

          v35 = v36;
        }

        if (v3)
        {
          goto LABEL_35;
        }

        v5 = v110;
        v110[(v35 >> 6) + 8] |= 1 << v35;
        v38 = (v5[6] + 16 * v35);
        *v38 = v24;
        v38[1] = v26;
        v39 = (v5[7] + 16 * v35);
        *v39 = v27;
        v39[1] = v29;

        v40 = v5[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_72;
        }
      }

      else
      {
        if (v23 != 212)
        {
          goto LABEL_80;
        }

        v4 = [v4 localIdentifier];
        v43 = sub_100032910();
        v45 = v44;

        v27 = sub_100032910();
        v29 = v46;
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v110 = v5;
        LOBYTE(v4) = v5;
        v48 = sub_10002A610(v43, v45);
        v50 = v5[2];
        v51 = (v49 & 1) == 0;
        v5 = (v50 + v51);
        if (__OFADD__(v50, v51))
        {
          goto LABEL_69;
        }

        v35 = v48;
        v3 = v49;
        sub_10000D4FC(&qword_100045B98, &unk_100035A80);
        v4 = &v110;
        if (sub_100032C00(v47, v5))
        {
          LOBYTE(v4) = v110;
          v52 = sub_10002A610(v43, v45);
          if ((v3 & 1) != (v53 & 1))
          {
            goto LABEL_79;
          }

          v35 = v52;
        }

        if (v3)
        {
LABEL_35:

          v5 = v110;
          v54 = (v110[7] + 16 * v35);
          v4 = v54[1];
          *v54 = v27;
          v54[1] = v29;

          goto LABEL_38;
        }

        v5 = v110;
        v110[(v35 >> 6) + 8] |= 1 << v35;
        v55 = (v5[6] + 16 * v35);
        *v55 = v43;
        v55[1] = v45;
        v56 = (v5[7] + 16 * v35);
        *v56 = v27;
        v56[1] = v29;

        v57 = v5[2];
        v41 = __OFADD__(v57, 1);
        v42 = v57 + 1;
        if (v41)
        {
          goto LABEL_71;
        }
      }

      v5[2] = v42;
LABEL_38:
      v3 = v106;
      v6 = v101;
      ++v21;
    }
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_10002EA98()
{
  sub_100023EC8();
  v0[12] = v1;
  v0[13] = v2;
  v0[11] = v3;
  v4 = sub_10000D4FC(&qword_100045BB0, &qword_100035AA8);
  sub_100011EE8(v4);
  v0[14] = sub_1000240D0();
  v5 = sub_10000D4FC(&qword_1000456B0, &unk_1000352E0);
  sub_100011EE8(v5);
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v6 = sub_100031B50();
  v0[17] = v6;
  sub_100023E68(v6);
  v0[18] = v7;
  v0[19] = sub_1000240D0();
  v8 = sub_10000D4FC(&qword_1000454D8, &qword_100034958);
  v0[20] = v8;
  sub_100023E68(v8);
  v0[21] = v9;
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v10 = sub_10000D4FC(&qword_1000454D0, &qword_100034950);
  v0[24] = v10;
  sub_100023E68(v10);
  v0[25] = v11;
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v12 = sub_10000D4FC(&qword_100045B30, qword_1000356E0);
  v0[28] = v12;
  sub_100023E68(v12);
  v0[29] = v13;
  v0[30] = sub_1000240D0();
  v14 = sub_100023E90();

  return _swift_task_switch(v14);
}

void sub_10002ECDC()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  sub_10002D250(v2);
  v4 = sub_1000318D0();
  (*(v1 + 8))(v2, v3);
  v50 = *(v4 + 16);
  if (v50)
  {
    v5 = 0;
    v6 = v0[25];
    v7 = v0[21];
    v45 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v48 = v4 + v45;
    v56 = (v7 + 8);
    v57 = v7;
    v52 = (v7 + 32);
    v43 = (v0[18] + 32);
    v46 = (v6 + 8);
    v8 = &_swiftEmptyArrayStorage;
    v49 = v6;
    v44 = (v6 + 32);
    v47 = v4;
    while (v5 < *(v4 + 16))
    {
      v53 = v5 + 1;
      v54 = v8;
      v51 = *(v49 + 72);
      (*(v49 + 16))(v0[27], v48 + v51 * v5, v0[24]);
      v9 = sub_100031890();
      v10 = 0;
      v58 = *(v9 + 16);
      v55 = &_swiftEmptyArrayStorage;
      while (v58 != v10)
      {
        if (v10 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v11 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v12 = *(v57 + 72);
        (*(v57 + 16))(v0[23], v9 + v11 + v12 * v10, v0[20]);
        sub_100031770();

        v13 = sub_100032930();
        v15 = v14;

        v0[7] = v13;
        v0[8] = v15;
        v0[9] = sub_100032930();
        v0[10] = v16;
        sub_10000EF70();
        LOBYTE(v13) = sub_100032B40();

        if (v13)
        {
          v17 = *v52;
          (*v52)(v0[22], v0[23], v0[20]);
          v18 = v55;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100021834(0, v55[2] + 1, 1);
            v18 = v55;
          }

          v20 = v18[2];
          v19 = v18[3];
          if (v20 >= v19 >> 1)
          {
            sub_100021834((v19 > 1), v20 + 1, 1);
            v18 = v55;
          }

          ++v10;
          v21 = v0[22];
          v22 = v0[20];
          v18[2] = v20 + 1;
          v55 = v18;
          v17(v18 + v11 + v20 * v12, v21, v22);
        }

        else
        {
          (*v56)(v0[23], v0[20]);
          ++v10;
        }
      }

      if (v55[2])
      {
        v23 = v0[14];
        sub_100031880();
        v24 = sub_100031920();
        v25 = sub_10000D8C4(v23, 1, v24);
        v26 = v0[19];
        v27 = v0[16];
        v28 = v0[17];
        v29 = v0[14];
        if (v25 == 1)
        {
          sub_100030D8C(v0[14], &qword_100045BB0, &qword_100035AA8);
          sub_100025708();
          sub_10000D904(v30, v31, v32, v28);
          sub_100031B20();
          if (sub_10000D8C4(v27, 1, v28) != 1)
          {
            sub_100030D8C(v0[16], &qword_1000456B0, &unk_1000352E0);
          }
        }

        else
        {
          sub_100031900();
          (*(*(v24 - 8) + 8))(v29, v24);
          sub_10000D904(v27, 0, 1, v28);
          (*v43)(v26, v27, v28);
        }

        sub_10002FAC4();
        sub_1000318A0();
        v8 = v54;
        v4 = v47;
        v33 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1000306A8(0, *(v54 + 16) + 1, 1, v54);
        }

        v35 = *(v8 + 2);
        v34 = *(v8 + 3);
        if (v35 >= v34 >> 1)
        {
          v8 = sub_1000306A8((v34 > 1), v35 + 1, 1, v8);
        }

        v36 = v0[26];
        v37 = v0[24];
        (*v46)(v0[27], v37);
        *(v8 + 2) = v35 + 1;
        (*v44)(&v8[v45 + v35 * v51], v36, v37);
      }

      else
      {
        (*v46)(v0[27], v0[24]);

        v4 = v47;
        v33 = v53;
        v8 = v54;
      }

      v5 = v33;
      if (v33 == v50)
      {
        goto LABEL_26;
      }
    }

LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_26:

    sub_100025708();
    sub_10000D904(v38, v39, v40, v41);
    sub_10002FAC4();
    sub_1000318B0();

    sub_100024238();

    v42();
  }
}

uint64_t sub_10002F354()
{
  sub_100023EC8();
  *(v0 + 32) = v1;
  v2 = sub_100031B50();
  sub_100011EE8(v2);
  *(v0 + 40) = sub_1000240D0();
  v3 = sub_100023E90();

  return _swift_task_switch(v3);
}

uint64_t sub_10002F3CC()
{
  if ([objc_opt_self() systemPhotoLibraryIsObtainable])
  {
    v1 = sub_10001A5E8();
    if (v1)
    {
      v2 = v1;
      v3 = [v1 librarySpecificFetchOptions];
      v4 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:203 options:v3];
      v5 = [v4 firstObject];

      if (v5)
      {
        v6 = [v5 localizedTitle];
        if (v6)
        {
          v7 = v6;
          v8 = sub_100032910();
          v10 = v9;

          goto LABEL_13;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    v11 = sub_100032A20();
    if (qword_100044670 != -1)
    {
      swift_once();
    }

    sub_100031D30(v11, &_mh_execute_header, qword_100048418, "Photo library is not obtainable", 31, 2, &_swiftEmptyArrayStorage);
  }

  v8 = 0;
  v10 = 0xE000000000000000;
LABEL_13:
  v12 = v0[4];
  v13 = sub_100032910();
  v15 = v14;
  sub_10000D4FC(&qword_100045B88, &qword_100035A60);
  sub_100031B20();
  v16 = sub_1000317F0();
  v0[2] = sub_100032910();
  v0[3] = v17;
  sub_1000317E0();

  *v12 = v16;
  v12[1] = v13;
  v12[2] = v15;
  v12[3] = v8;
  v12[4] = v10;
  sub_100024238();

  return v18();
}

uint64_t sub_10002F624()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100030FDC;

  return sub_10002EA98();
}

unint64_t sub_10002F6D8()
{
  result = qword_100045B08;
  if (!qword_100045B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B08);
  }

  return result;
}

unint64_t sub_10002F730()
{
  result = qword_100045B10;
  if (!qword_100045B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B10);
  }

  return result;
}

uint64_t sub_10002F788()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100030FF0;

  return sub_10002CF44();
}

uint64_t sub_10002F81C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100030FDC;

  return sub_10002DE2C(a1);
}

uint64_t sub_10002F8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10002F974;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10002F974()
{
  sub_100023EC8();
  v3 = v2;
  v4 = *v1;
  sub_100023EA0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

unint64_t sub_10002FA6C()
{
  result = qword_100045B18;
  if (!qword_100045B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B18);
  }

  return result;
}

unint64_t sub_10002FAC4()
{
  result = qword_100045B20;
  if (!qword_100045B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B20);
  }

  return result;
}

uint64_t sub_10002FB5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10002CC74();
  *v5 = v2;
  v5[1] = sub_10002FC10;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10002FC10()
{
  sub_100023EC8();
  v1 = *v0;
  sub_100023EA0();
  *v2 = v1;

  sub_100024238();

  return v3();
}

uint64_t sub_10002FCF4(uint64_t a1)
{
  *(v1 + 56) = a1;
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_10002FD8C;

  return sub_10002F354();
}

uint64_t sub_10002FD8C()
{
  v1 = *v0;
  v2 = *v0;
  sub_100023EA0();
  *v3 = v2;
  v4 = *(v1 + 56);
  v5 = *v0;
  *v3 = *v0;

  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  *(v4 + 32) = *(v1 + 48);
  *v4 = v6;
  *(v4 + 16) = v7;
  v8 = *(v5 + 8);

  return v8();
}

unint64_t sub_10002FEBC()
{
  result = qword_100045B38;
  if (!qword_100045B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B38);
  }

  return result;
}

unint64_t sub_10002FF14()
{
  result = qword_100045B40;
  if (!qword_100045B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B40);
  }

  return result;
}

unint64_t sub_10002FF6C()
{
  result = qword_100045B48;
  if (!qword_100045B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B48);
  }

  return result;
}

uint64_t sub_10002FFCC()
{
  v1 = sub_10000D4FC(&qword_100045B80, "dR");
  v2 = sub_100011EE8(v1);
  __chkstk_darwin(v2);
  v3 = sub_10000D4FC(&qword_1000456B0, &unk_1000352E0);
  v4 = sub_100011EE8(v3);
  __chkstk_darwin(v4);
  v5 = sub_100031B50();
  __chkstk_darwin(v5);
  v6 = sub_1000328E0();
  v7 = sub_100011EE8(v6);
  __chkstk_darwin(v7);
  sub_1000328D0();
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_1000328C0(v16);
  sub_1000328B0(*(v0 + 24));
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_1000328C0(v17);
  sub_100031B40();
  sub_100025708();
  sub_10000D904(v8, v9, v10, v5);
  sub_1000318F0();
  sub_100025708();
  sub_10000D904(v11, v12, v13, v14);
  return sub_100031910();
}

unint64_t sub_1000301A4()
{
  result = qword_100045B50;
  if (!qword_100045B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B50);
  }

  return result;
}

unint64_t sub_1000301FC()
{
  result = qword_100045B58;
  if (!qword_100045B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B58);
  }

  return result;
}

unint64_t sub_100030254()
{
  result = qword_100045B60;
  if (!qword_100045B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B60);
  }

  return result;
}

uint64_t sub_1000302B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002CCC8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000302DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100044668 != -1)
  {
    swift_once();
  }

  v2 = sub_1000319D0();
  v3 = sub_10000F4F4(v2, qword_100048400);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000303C8(uint64_t a1)
{
  v2 = sub_100025628();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100030418()
{
  result = qword_100045B78;
  if (!qword_100045B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B78);
  }

  return result;
}

uint64_t sub_100030470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10002FC10;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100030534(uint64_t a1)
{
  v2 = sub_100030254();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_100030580(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100030594(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000305D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10003063C(uint64_t a1, uint64_t a2, char a3, double a4)
{
  if (a2)
  {
    v6 = sub_100032900();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 initWithKey:v6 ascending:a3 & 1];

  return v7;
}

char *sub_1000306A8(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1000308E8(v9, a2, &qword_100045B90, &unk_100035A70, &qword_1000454D0, &qword_100034950);
  v11 = *(sub_10000D4FC(&qword_1000454D0, &qword_100034950) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_100021168(a4 + v12, v9, &v10[v12]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000307C8(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1000308E8(v9, a2, &qword_1000454E8, &qword_100034968, &qword_1000454D8, &qword_100034958);
  v11 = *(sub_10000D4FC(&qword_1000454D8, &qword_100034958) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_10002117C(a4 + v12, v9, &v10[v12]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000308E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000D4FC(a3, a4);
  v10 = sub_10000D4FC(a5, a6);
  sub_100023E68(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  result = j__malloc_size(v15);
  if (v12)
  {
    if (&result[-v14] != 0x8000000000000000 || v12 != -1)
    {
      v15[2] = a1;
      v15[3] = 2 * (&result[-v14] / v12);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000309E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_100032CD0() & 1;
  }
}

BOOL sub_100030A24(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_100030AD4(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10002A5A4(a2 & 1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  sub_10000D4FC(&qword_100045BA8, &qword_100035A90);
  if (!sub_100032C00(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = sub_10002A5A4(a2 & 1);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    sub_100032CE0();
    __break(1u);
    return;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(v18[7] + 8 * v14) = a1;
  }

  else
  {

    sub_100030BF8(v14, a2 & 1, a1, v18);
  }
}

unint64_t sub_100030BF8(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void sub_100030C40(uint64_t a1, void *a2)
{
  sub_1000230A4(0, &qword_100045BA0, NSSortDescriptor_ptr);
  isa = sub_100032990().super.isa;

  [a2 setSortDescriptors:isa];
}

uint64_t sub_100030CC4(void *a1)
{
  v1 = [a1 localizedTitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100032910();

  return v3;
}

id sub_100030D28(void *a1, char a2, __n128 a3)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_100030D34(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100030D8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000D4FC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for PhotosReliveWidgetAlbum.PhotoReliveWidgetAlbumOptionsProvider.PhotosWidgetAlbumType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosReliveWidgetAlbum.PhotoReliveWidgetAlbumOptionsProvider.PhotosWidgetAlbumType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x100030F40);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100030F88()
{
  result = qword_100045BB8;
  if (!qword_100045BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045BB8);
  }

  return result;
}

id sub_1000310E0()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100045BC0 = result;
  return result;
}

uint64_t sub_100031138()
{
  v0 = sub_100031D20();
  sub_100025688(v0, qword_100048420);
  sub_10000F4F4(v0, qword_100048420);
  if (qword_100044678 != -1)
  {
    swift_once();
  }

  v1 = qword_100045BC0;
  return sub_100031D10();
}

uint64_t sub_1000311E8(int a1, int a2, int a3, int a4)
{
  if (qword_100048328 == -1)
  {
    if (qword_100048330)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000316B0();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100048330)
    {
      return _availability_version_check();
    }
  }

  if (qword_100048320 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1000316C8();
    a3 = v10;
    a4 = v9;
    v8 = dword_100048310 < v11;
    if (dword_100048310 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100048314 > a3)
      {
        return 1;
      }

      if (dword_100048314 >= a3)
      {
        return dword_100048318 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100048310 < a2;
  if (dword_100048310 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10003137C(uint64_t result)
{
  v1 = qword_100048330;
  if (qword_100048330)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100048330 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100048310, &dword_100048314, &dword_100048318);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}