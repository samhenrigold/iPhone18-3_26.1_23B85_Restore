void sub_10016E94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = (v6 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck);
  v10 = *(v6 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck);
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  sub_100183C98(a1, a2, a3, a4);
  sub_100183CD8(v10, v11, v12, v13);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100366FC0(v7);
    swift_unknownObjectRelease();
  }

  v14 = sub_100168088(&qword_1005736A8, &qword_100400C00);
  v15 = objc_allocWithZone(v14);
  v16 = &v15[*((swift_isaMask & *v15) + 0x180)];
  *v16 = 0;
  v16[8] = 2;
  v17 = &v15[*((swift_isaMask & *v15) + 0x188)];
  *v17 = sub_100183D18;
  *(v17 + 1) = v7;
  v137.receiver = v15;
  v137.super_class = v14;

  v124.super_class = objc_msgSendSuper2(&v137, "init");
  v18 = sub_100168088(&qword_1005736B0, &qword_100400C08);
  v19 = objc_allocWithZone(v18);
  v20 = &v19[*((swift_isaMask & *v19) + 0x180)];
  *v20 = 0;
  *(v20 + 1) = 0;
  *(v20 + 8) = 512;
  v21 = &v19[*((swift_isaMask & *v19) + 0x188)];
  *v21 = sub_100183D20;
  v21[1] = v7;
  v136.receiver = v19;
  v136.super_class = v18;

  v22 = objc_msgSendSuper2(&v136, "init");
  v23 = sub_100168088(&unk_10057A690, &unk_100400AC0);
  v24 = objc_allocWithZone(v23);
  v25 = &v24[*((swift_isaMask & *v24) + 0x180)];
  *v25 = 0;
  v25[8] = 2;
  v26 = &v24[*((swift_isaMask & *v24) + 0x188)];
  *v26 = sub_100183D3C;
  v26[1] = v7;
  v135.receiver = v24;
  v135.super_class = v23;

  v124.receiver = objc_msgSendSuper2(&v135, "init");
  v27 = OBJC_IVAR____TtC8Podcasts11JobPipeline_jobStorage;
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);

  v125 = *(v7 + v27);
  swift_unknownObjectRetain();
  v28 = static OS_os_log.downloads.getter();
  v29 = sub_100168088(&qword_1005736B8, &qword_100400C10);
  v30 = objc_allocWithZone(v29);
  v31 = &v30[*((swift_isaMask & *v30) + 0x198)];
  *v31 = 0;
  v31[8] = 2;
  v32 = &v30[*((swift_isaMask & *v30) + 0x1A8)];
  *v32 = sub_100183D58;
  v32[1] = v7;
  *&v30[*((swift_isaMask & *v30) + 0x1A0)] = v125;
  *&v30[*((swift_isaMask & *v30) + 0x1B0)] = v28;
  v134.receiver = v30;
  v134.super_class = v29;
  v121 = objc_msgSendSuper2(&v134, "init");
  v33 = sub_100168088(&qword_1005736C0, &qword_100400C18);
  v34 = objc_allocWithZone(v33);
  sub_100168088(&qword_100581890, &qword_100400C20);
  swift_storeEnumTagMultiPayload();
  v35 = (v34 + *((swift_isaMask & *v34) + 0x188));
  *v35 = sub_100183D60;
  v35[1] = v7;
  v133.receiver = v34;
  v133.super_class = v33;

  v120 = objc_msgSendSuper2(&v133, "init");
  v36 = swift_allocObject();
  *(v36 + 2) = v7;
  *(v36 + 3) = a5;
  *(v36 + 4) = a6;
  v37 = sub_100168088(&qword_1005736C8, &qword_100400C28);
  v38 = objc_allocWithZone(v37);
  swift_storeEnumTagMultiPayload();
  v39 = (v38 + *((swift_isaMask & *v38) + 0x188));
  *v39 = sub_100183DBC;
  v39[1] = v36;

  v118 = a6;
  sub_100013CB4(a5, a6);
  v132.receiver = v38;
  v132.super_class = v37;
  v119 = objc_msgSendSuper2(&v132, "init");
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = (v124.super_class + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v42 = *(v124.super_class + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v43 = *(v124.super_class + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
  *v41 = sub_100183DDC;
  v41[1] = v40;

  sub_1000112B4(v42, v43);

  ObjectType = swift_getObjectType();
  v45 = swift_conformsToProtocol2();
  if (!v45)
  {
    __break(1u);
    goto LABEL_10;
  }

  v46 = v45;
  v47 = swift_allocObject();
  *(v47 + 24) = v46;
  swift_unknownObjectWeakInit();
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = v47;
  v50 = *(v46 + 72);
  v51 = v124.super_class;

  v50(sub_10003B6A0, v49, ObjectType, v46);

  v131.receiver = v22;
  v131.super_class = type metadata accessor for BaseOperation();
  v124.super_class = v131.super_class;
  objc_msgSendSuper2(&v131, "addDependency:", v51);

  v117 = v51;
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = &v22[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v54 = *&v22[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v55 = *&v22[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
  *v53 = sub_100182704;
  v53[1] = v52;
  v56 = v22;

  sub_1000112B4(v54, v55);

  v57 = swift_getObjectType();
  v58 = swift_conformsToProtocol2();
  if (!v58)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v59 = v58;
  v60 = swift_allocObject();
  *(v60 + 24) = v59;
  swift_unknownObjectWeakInit();
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = swift_allocObject();
  *(v62 + 16) = v61;
  *(v62 + 24) = v60;
  v63 = *(v59 + 72);
  v64 = v56;

  v63(sub_10003B6A0, v62, v57, v59);

  v130 = v124;
  objc_msgSendSuper2(&v130, "addDependency:", v64);

  v65 = v124.receiver;
  v124.receiver = v64;

  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = &v65[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v68 = *&v65[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v69 = *&v65[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
  *v67 = sub_100182A20;
  v67[1] = v66;

  sub_1000112B4(v68, v69);

  v70 = swift_getObjectType();
  v71 = swift_conformsToProtocol2();
  if (!v71)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v72 = v71;
  v73 = swift_allocObject();
  *(v73 + 24) = v72;
  swift_unknownObjectWeakInit();
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = swift_allocObject();
  *(v75 + 16) = v74;
  *(v75 + 24) = v73;
  v76 = *(v72 + 72);
  v77 = v65;

  v76(sub_10003B6A0, v75, v70, v72);

  v129.receiver = v121;
  v129.super_class = v124.super_class;
  objc_msgSendSuper2(&v129, "addDependency:", v77);

  v78 = v121;
  v122 = v77;

  v79 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = &v78[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v81 = *&v78[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v82 = *&v78[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
  *v80 = sub_100183DE4;
  v80[1] = v79;

  sub_1000112B4(v81, v82);

  v83 = swift_getObjectType();
  v84 = swift_conformsToProtocol2();
  if (!v84)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v85 = v84;
  v86 = swift_allocObject();
  *(v86 + 24) = v85;
  swift_unknownObjectWeakInit();
  v87 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v88 = swift_allocObject();
  *(v88 + 16) = v87;
  *(v88 + 24) = v86;
  v89 = *(v85 + 72);
  v90 = v78;

  v89(sub_10003B6A0, v88, v83, v85);

  v128.receiver = v120;
  v128.super_class = v124.super_class;
  objc_msgSendSuper2(&v128, "addDependency:", v90);

  v91 = v120;
  v92 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v93 = &v91[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v94 = *&v91[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v95 = *&v91[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
  *v93 = sub_100183DE4;
  v93[1] = v92;

  sub_1000112B4(v94, v95);

  v96 = swift_getObjectType();
  v97 = swift_conformsToProtocol2();
  if (v97)
  {
    v98 = v97;
    v99 = swift_allocObject();
    *(v99 + 24) = v98;
    swift_unknownObjectWeakInit();
    v100 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v101 = swift_allocObject();
    *(v101 + 16) = v100;
    *(v101 + 24) = v99;
    v102 = *(v98 + 72);
    v103 = v91;

    v102(sub_10003B6A0, v101, v96, v98);

    v127.receiver = v119;
    v127.super_class = v124.super_class;
    objc_msgSendSuper2(&v127, "addDependency:", v103);

    v104 = v119;
    v105 = swift_allocObject();
    *(v105 + 16) = a5;
    *(v105 + 24) = v118;
    v106 = &v104[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    v107 = *&v104[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    v108 = *&v104[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError + 8];
    *v106 = sub_100183E2C;
    v106[1] = v105;
    sub_100013CB4(a5, v118);
    sub_1000112B4(v107, v108);

    v126 = sub_10016E37C();
    sub_100168088(&unk_100574680, &qword_100401740);
    v109 = swift_allocObject();
    *(v109 + 16) = xmmword_100400780;
    *(v109 + 32) = v117;
    *(v109 + 40) = v124.receiver;
    *(v109 + 48) = v122;
    *(v109 + 56) = v90;
    *(v109 + 64) = v103;
    *(v109 + 72) = v104;
    sub_100009F1C(0, &unk_10057A6A0, NSOperation_ptr);
    v110 = v117;
    v111 = v124.receiver;
    v112 = v122;
    v113 = v90;
    v114 = v103;
    v115 = v104;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v126 addOperations:isa waitUntilFinished:0];

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_10016F7C4(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = (a4 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck);
  v9 = *(a4 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck);
  if (v9)
  {
    v11 = v8[2];
    v10 = v8[3];
    v12 = v8[1];

    sub_100183C98(v9, v12, v11, v10);
    v13 = swift_unknownObjectRetain();
    sub_100183CD8(v13, v12, v11, v10);

    sub_100347F30(v9, sub_1001841EC, v7);
    swift_unknownObjectRelease();
  }

  else
  {

    v15[0] = 0;
    v15[1] = 0;
    v16 = 64;
    return a2(v15);
  }
}

uint64_t sub_10016F904@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = v4 >> 6;
  if (v4 >> 6 > 1)
  {
    if (v5 == 2)
    {
      v14 = static os_log_type_t.default.getter();
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      v15 = static OS_os_log.downloads.getter();
      sub_100168088(&unk_100574670, &qword_100400AB0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100400790;
      swift_getErrorValue();
      v17 = Error.localizedDescription.getter();
      v19 = v18;
      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = sub_100022C18();
      *(v16 + 32) = v17;
      *(v16 + 40) = v19;
      os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Failed to fetch episode size. Download will be started anyways, error: %{public}s", 81, 2, v16);
    }

    else
    {
      v20 = static os_log_type_t.default.getter();
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      v21 = static OS_os_log.downloads.getter();
      os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Preflight request failed. Server response has been bad.", 55, 2, _swiftEmptyArrayStorage);
    }

    goto LABEL_14;
  }

  if (v5)
  {
LABEL_14:
    result = 0;
    v23 = 0;
    goto LABEL_17;
  }

  v6 = a1[1];
  if (v4 == 2 && v3 == 1 && v6 == 0)
  {
    sub_1001841D0(1, 0, 2);
    sub_100182A04(1, 0, 2);
    v24 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v25 = static OS_os_log.downloads.getter();
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "Preflight check has been cancelled.", 35, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    sub_1001841D0(*a1, v6, v4);
    v27 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v9 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100400790;
    sub_100181AE8();
    v11 = Error.localizedDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100022C18();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v9, "Download didn't pass preflight check, error: %{public}s", 55, 2, v10);

    sub_100180208(v3, v6, v4);
  }

  sub_100181AE8();
  result = swift_allocError();
  *v26 = v3;
  *(v26 + 8) = v6;
  *(v26 + 16) = v4;
  v23 = 1;
LABEL_17:
  *a2 = result;
  *(a2 + 8) = v23;
  return result;
}

uint64_t sub_10016FC68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck);
  v4 = *(a1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck);
  if (v4)
  {
    v6 = v3[2];
    v7 = v3[3];
    v8 = v3[1];

    sub_100183C98(v4, v8, v6, v7);
    sub_100183CD8(v4, v8, v6, v7);
    v9 = v6(a1);
    v11 = v10;
    v13 = v12;
    v14 = ~v12;

    if (v14)
    {
      v24 = static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      v23 = static OS_os_log.downloads.getter();
      sub_100168088(&unk_100574670, &qword_100400AB0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_100400790;
      sub_100181AE8();
      v16 = Error.localizedDescription.getter();
      v17 = v9;
      v19 = v18;
      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = sub_100022C18();
      *(v15 + 32) = v16;
      *(v15 + 40) = v19;
      os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v23, "Download did pass take off check, error: %{public}s", 51, 2, v15);

      sub_100180208(v17, v11, v13);
      result = swift_allocError();
      *v21 = v17;
      *(v21 + 8) = v11;
      *(v21 + 16) = v13;
      v22 = 1;
    }

    else
    {
      result = 0;
      v22 = 0;
    }
  }

  else
  {
    result = 0;
    v22 = 0;
  }

  *a2 = result;
  *(a2 + 8) = v22;
  return result;
}

uint64_t sub_10016FE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a5 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  sub_1001BB608(v9, a3, a4);
  return sub_10018270C(v9, type metadata accessor for DownloadJob);
}

uint64_t sub_10016FF78(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v8 = *(type metadata accessor for DownloadJob(0) - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  sub_100168088(&qword_100581890, &qword_100400C20);
  __chkstk_darwin();
  v11 = &v17 - v10;
  v12 = *(a4 + OBJC_IVAR____TtC8Podcasts11JobPipeline_assetPrefetchBlock);
  if (v12)
  {
    v13 = *(a4 + OBJC_IVAR____TtC8Podcasts11JobPipeline_assetPrefetchBlock + 8);
    sub_100182784(a1, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DownloadJob);
    v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v15 = swift_allocObject();
    v15[2] = a4;
    v15[3] = a2;
    v15[4] = a3;
    sub_100182EF4(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for DownloadJob);
    sub_100013CB4(v12, v13);

    v12(sub_1001840E4, v15);
    sub_1000112B4(v12, v13);
  }

  else
  {
    sub_100182784(a1, v11, type metadata accessor for DownloadJob);
    swift_storeEnumTagMultiPayload();
    a2(v11);
    return sub_100009104(v11, &qword_100581890, &qword_100400C20);
  }
}

uint64_t sub_1001701BC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  sub_100168088(&qword_100581890, &qword_100400C20);
  __chkstk_darwin();
  v9 = (&v13 - v8);
  if (a1)
  {
    swift_errorRetain();
    swift_errorRetain();
    sub_100180208(a1, 0, 1);
    sub_100181AE8();
    v10 = swift_allocError();
    *v11 = a1;
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
    *v9 = v10;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a3(v9);
  }

  else
  {
    sub_100182784(a5, &v13 - v8, type metadata accessor for DownloadJob);
    swift_storeEnumTagMultiPayload();
    a3(v9);
  }

  return sub_100009104(v9, &qword_100581890, &qword_100400C20);
}

uint64_t sub_100170340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a4;
  v57 = a3;
  v59 = a5;
  v63 = type metadata accessor for DownloadJob(0);
  v60 = *(v63 - 8);
  v8 = *(v60 + 64);
  __chkstk_darwin();
  v61 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v62 = &v52 - v9;
  __chkstk_darwin();
  v11 = &v52 - v10;
  __chkstk_darwin();
  v13 = &v52 - v12;
  v14 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v15 = static OS_os_log.downloads.getter();
  sub_100182784(a1, v13, type metadata accessor for DownloadJob);
  v58 = a1;
  sub_100182784(a1, v11, type metadata accessor for DownloadJob);
  v16 = &qword_100573000;
  if (os_log_type_enabled(v15, v14))
  {
    v17 = swift_slowAlloc();
    v54 = v14;
    v18 = v17;
    v55 = swift_slowAlloc();
    v68 = v55;
    *v18 = 136446722;
    v19 = *(a2 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    sub_100168088(&qword_100574900, &unk_100400AA0);
    OS_dispatch_queue.sync<A>(execute:)();
    v52 = v5;

    v53 = v15;
    v21 = v65;
    v20 = v66;
    sub_1000044A0(aBlock, v65);
    v22 = (*(v20 + 7))(v21, v20);
    v24 = v23;
    sub_100004590(aBlock);
    v25 = sub_1000153E0(v22, v24, &v68);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    v26 = &v13[*(v63 + 20)];
    v27 = *v26;
    v28 = v26[1];

    sub_10018270C(v13, type metadata accessor for DownloadJob);
    v29 = sub_1000153E0(v27, v28, &v68);

    *(v18 + 14) = v29;
    *(v18 + 22) = 2080;
    type metadata accessor for EpisodeMetadata(0);
    v30 = URL.absoluteString.getter();
    v32 = v31;
    sub_10018270C(v11, type metadata accessor for DownloadJob);
    v33 = sub_1000153E0(v30, v32, &v68);

    *(v18 + 24) = v33;
    v16 = &qword_100573000;
    v34 = v53;
    _os_log_impl(&_mh_execute_header, v53, v54, "Start download task %{public}s for episode %s at %s", v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10018270C(v11, type metadata accessor for DownloadJob);
    sub_10018270C(v13, type metadata accessor for DownloadJob);
  }

  v35 = v16[77];
  v36 = *(a2 + v35);
  sub_100168088(&qword_100574900, &unk_100400AA0);
  OS_dispatch_queue.sync<A>(execute:)();

  v37 = v65;
  v38 = v66;
  sub_1000044A0(aBlock, v65);
  (*(v38 + 14))(v37, v38);
  sub_100004590(aBlock);
  v39 = *(a2 + v35);
  v41 = v62;
  v40 = v63;
  OS_dispatch_queue.sync<A>(execute:)();

  v42 = v41 + *(v40 + 40);
  sub_10018276C(*v42, *(v42 + 8), *(v42 + 16), *(v42 + 24));
  *v42 = 0;
  *(v42 + 8) = 0;
  *(v42 + 16) = 0;
  *(v42 + 24) = 2;
  *(v42 + 32) = 0;
  *(v42 + 40) = 0;
  *(v42 + 48) = 0;
  v43 = *(a2 + v35);
  v44 = v61;
  sub_100182784(v41, v61, type metadata accessor for DownloadJob);
  v45 = (*(v60 + 80) + 24) & ~*(v60 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = a2;
  sub_100182EF4(v44, v46 + v45, type metadata accessor for DownloadJob);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_100184608;
  *(v47 + 24) = v46;
  v66 = sub_10002D950;
  v67 = v47;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  v65 = &unk_1004E1370;
  v48 = _Block_copy(aBlock);

  v49 = v43;

  dispatch_sync(v49, v48);
  _Block_release(v48);

  sub_10018270C(v41, type metadata accessor for DownloadJob);
  LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

  if (v48)
  {
    __break(1u);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_100360268(a2);
      Strong = swift_unknownObjectRelease();
    }

    if (v57)
    {
      v57(Strong);
    }

    sub_100182784(v58, v59, type metadata accessor for DownloadJob);
    sub_100168088(&qword_100581890, &qword_100400C20);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_100170A58(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_errorRetain();
  sub_100168088(&qword_100575C50, &unk_100402650);
  if (!swift_dynamicCast())
  {
    v4 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v5 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100400790;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_100022C18();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Failed to start pipeline due to error: %{public}s", 49, 2, v6);

    if (!a2)
    {
      return result;
    }

    return a2(result);
  }

  result = sub_1001829A0(v10, v11, v12);
  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_100170BCC()
{
  v1 = v0;
  v2 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v3 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = v5;
    *v4 = 136446210;
    v6 = *(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    sub_100168088(&qword_100574900, &unk_100400AA0);
    OS_dispatch_queue.sync<A>(execute:)();

    v7 = v28;
    v8 = v29;
    sub_1000044A0(v27, v28);
    v9 = (*(v8 + 56))(v7, v8);
    v11 = v10;
    sub_100004590(v27);
    v12 = sub_1000153E0(v9, v11, &v26);

    *(v4 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v2, "Cancel download task %{public}s", v4, 0xCu);
    sub_100004590(v5);
  }

  v13 = (v1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck);
  v14 = *(v1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck);
  if (v14)
  {
    v16 = v13[2];
    v15 = v13[3];
    v17 = v13[1];
    sub_100183C98(*(v1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck), v17, v16, v15);
    v18 = swift_unknownObjectRetain();
    sub_100183CD8(v18, v17, v16, v15);
    v19 = static os_log_type_t.default.getter();
    v20 = static OS_os_log.downloads.getter();
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "Cancel preflight validator task if running.", 43, 2, _swiftEmptyArrayStorage);

    v21 = *(v14 + 56);
    [v21 cancel];

    swift_unknownObjectRelease();
  }

  v22 = *(v1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  sub_100168088(&qword_100574900, &unk_100400AA0);
  OS_dispatch_queue.sync<A>(execute:)();

  v23 = v28;
  v24 = v29;
  sub_1000044A0(v27, v28);
  (*(v24 + 120))(v23, v24);
  return sub_100004590(v27);
}

uint64_t sub_100170EBC()
{
  v1 = v0;
  v2 = type metadata accessor for DownloadJob(0);
  v167 = *(v2 - 8);
  v3 = *(v167 + 64);
  __chkstk_darwin();
  v168 = &v161 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v161 - v4;
  v6 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v7 = *(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  sub_100168088(&qword_100574900, &unk_100400AA0);
  OS_dispatch_queue.sync<A>(execute:)();

  v8 = v171;
  v9 = v172;
  sub_1000044A0(v170, v171);
  v10 = (*(v9 + 8))(v8, v9);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v85 = static os_log_type_t.default.getter();
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      v12 = static OS_os_log.downloads.getter();
      if (os_log_type_enabled(v12, v85))
      {
        v86 = swift_slowAlloc();
        LODWORD(v167) = v85;
        v14 = v86;
        v168 = swift_slowAlloc();
        v169[0] = v168;
        *v14 = 136446466;
        v87 = *(v1 + v6);
        OS_dispatch_queue.sync<A>(execute:)();

        v88 = v2;
        v89 = v5;
        v90 = v176;
        v91 = v177;
        sub_1000044A0(&aBlock, v176);
        v92 = (*(v91 + 7))(v90, v91);
        v94 = v93;
        sub_100004590(&aBlock);
        v95 = sub_1000153E0(v92, v94, v169);

        *(v14 + 4) = v95;
        *(v14 + 12) = 2082;
        v96 = *(v1 + v6);
        OS_dispatch_queue.sync<A>(execute:)();

        v97 = (v89 + *(v88 + 20));
        v98 = *v97;
        v99 = v97[1];

        sub_10018270C(v89, type metadata accessor for DownloadJob);
        v100 = sub_1000153E0(v98, v99, v169);

        *(v14 + 14) = v100;
        v29 = "Attempt to resume task which is being canceled, doing nothing %{public}s episode: %{public}s";
        goto LABEL_26;
      }

      goto LABEL_40;
    }

    if (v10 == 3)
    {
      v30 = static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      v12 = static OS_os_log.downloads.getter();
      if (os_log_type_enabled(v12, v30))
      {
        v31 = swift_slowAlloc();
        LODWORD(v167) = v30;
        v14 = v31;
        v168 = swift_slowAlloc();
        v169[0] = v168;
        *v14 = 136446466;
        v32 = *(v1 + v6);
        OS_dispatch_queue.sync<A>(execute:)();

        v33 = v2;
        v34 = v5;
        v35 = v176;
        v36 = v177;
        sub_1000044A0(&aBlock, v176);
        v37 = (*(v36 + 7))(v35, v36);
        v39 = v38;
        sub_100004590(&aBlock);
        v40 = sub_1000153E0(v37, v39, v169);

        *(v14 + 4) = v40;
        *(v14 + 12) = 2082;
        v41 = *(v1 + v6);
        OS_dispatch_queue.sync<A>(execute:)();

        v42 = (v34 + *(v33 + 20));
        v43 = *v42;
        v44 = v42[1];

        sub_10018270C(v34, type metadata accessor for DownloadJob);
        v45 = sub_1000153E0(v43, v44, v169);

        *(v14 + 14) = v45;
        v29 = "Attempt to resume task, which has been completed already %{public}s episode: %{public}s";
        goto LABEL_26;
      }

LABEL_40:

      return sub_100004590(v170);
    }

LABEL_10:
    v46 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v12 = static OS_os_log.downloads.getter();
    if (!os_log_type_enabled(v12, v46))
    {
      goto LABEL_40;
    }

    LODWORD(v168) = v46;
    v165 = v2;
    v164 = v5;
    v47 = 0xE900000000000064;
    v48 = swift_slowAlloc();
    v167 = swift_slowAlloc();
    v169[0] = v167;
    *v48 = 136446722;
    v49 = v6;
    v50 = *(v1 + v6);
    OS_dispatch_queue.sync<A>(execute:)();

    v52 = v176;
    v51 = v177;
    sub_1000044A0(&aBlock, v176);
    v53 = (*(v51 + 1))(v52, v51);
    sub_100004590(&aBlock);
    if (v53 > 1)
    {
      if (v53 == 2)
      {
        v47 = 0xE900000000000067;
        v54 = 0x6E696C65636E6163;
        goto LABEL_38;
      }

      if (v53 == 3)
      {
        v54 = 0x6574656C706D6F63;
        goto LABEL_38;
      }
    }

    else
    {
      if (!v53)
      {
        v47 = 0xE700000000000000;
        v54 = 0x676E696E6E7572;
        goto LABEL_38;
      }

      if (v53 == 1)
      {
        v54 = 0x65646E6570737573;
LABEL_38:
        v127 = sub_1000153E0(v54, v47, v169);

        *(v48 + 4) = v127;
        *(v48 + 12) = 2082;
        v128 = *(v1 + v49);
        OS_dispatch_queue.sync<A>(execute:)();

        v129 = v176;
        v130 = v177;
        sub_1000044A0(&aBlock, v176);
        v131 = (*(v130 + 7))(v129, v130);
        v133 = v132;
        sub_100004590(&aBlock);
        v134 = sub_1000153E0(v131, v133, v169);

        *(v48 + 14) = v134;
        *(v48 + 22) = 2082;
        v135 = *(v1 + v49);
        v136 = v164;
        v137 = v165;
        OS_dispatch_queue.sync<A>(execute:)();

        v138 = (v136 + *(v137 + 20));
        v139 = *v138;
        v140 = v138[1];

        sub_10018270C(v136, type metadata accessor for DownloadJob);
        v141 = sub_1000153E0(v139, v140, v169);

        *(v48 + 24) = v141;
        _os_log_impl(&_mh_execute_header, v12, v168, "Not resuming task, which is in state: %{public}s task: %{public}s episode: %{public}s", v48, 0x20u);
        swift_arrayDestroy();

        goto LABEL_39;
      }
    }

    v47 = 0xE700000000000000;
    v54 = 0x6E776F6E6B6E75;
    goto LABEL_38;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      v11 = static os_log_type_t.default.getter();
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      v12 = static OS_os_log.downloads.getter();
      if (os_log_type_enabled(v12, v11))
      {
        v13 = swift_slowAlloc();
        LODWORD(v167) = v11;
        v14 = v13;
        v168 = swift_slowAlloc();
        v169[0] = v168;
        *v14 = 136446466;
        v15 = *(v1 + v6);
        OS_dispatch_queue.sync<A>(execute:)();

        v16 = v2;
        v17 = v5;
        v18 = v176;
        v19 = v177;
        sub_1000044A0(&aBlock, v176);
        v20 = (*(v19 + 7))(v18, v19);
        v22 = v21;
        sub_100004590(&aBlock);
        v23 = sub_1000153E0(v20, v22, v169);

        *(v14 + 4) = v23;
        *(v14 + 12) = 2082;
        v24 = *(v1 + v6);
        OS_dispatch_queue.sync<A>(execute:)();

        v25 = (v17 + *(v16 + 20));
        v26 = *v25;
        v27 = v25[1];

        sub_10018270C(v17, type metadata accessor for DownloadJob);
        v28 = sub_1000153E0(v26, v27, v169);

        *(v14 + 14) = v28;
        v29 = "Resuming suspended task %{public}s episode: %{public}s";
LABEL_26:
        _os_log_impl(&_mh_execute_header, v12, v167, v29, v14, 0x16u);
        swift_arrayDestroy();

LABEL_39:

        goto LABEL_40;
      }

      goto LABEL_40;
    }

    goto LABEL_10;
  }

  v55 = *(v1 + v6);
  OS_dispatch_queue.sync<A>(execute:)();

  sub_100009F1C(0, &qword_1005736A0, AVAggregateAssetDownloadTask_ptr);
  if (swift_dynamicCast() || (v56 = *(v1 + v6), OS_dispatch_queue.sync<A>(execute:)(), v56, sub_100009F1C(0, &qword_100577200, AVAssetDownloadTask_ptr), swift_dynamicCast()))
  {

    v166 = 0;
  }

  else
  {
    v101 = *(v1 + v6);
    OS_dispatch_queue.sync<A>(execute:)();

    v102 = v176;
    v103 = v177;
    sub_1000044A0(&aBlock, v176);
    v104 = (*(v103 + 2))(v102, v103);
    sub_100004590(&aBlock);
    v166 = v104;
    v105 = v104;
    v106 = &stru_100555000;
    if ([v105 completedUnitCount] >= 1 && objc_msgSend(v105, "totalUnitCount") >= 1)
    {
      v165 = v2;
      v107 = v5;
      v108 = static os_log_type_t.default.getter();
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      v109 = static OS_os_log.downloads.getter();
      v110 = os_log_type_enabled(v109, v108);
      v164 = v107;
      if (v110)
      {
        v111 = swift_slowAlloc();
        v162 = v108;
        v112 = v111;
        v163 = swift_slowAlloc();
        v169[0] = v163;
        *v112 = 136446466;
        v113 = *(v1 + v6);
        v161 = v109;
        v114 = v113;
        OS_dispatch_queue.sync<A>(execute:)();

        v116 = v176;
        v115 = v177;
        sub_1000044A0(&aBlock, v176);
        v117 = (*(v115 + 7))(v116, v115);
        v119 = v118;
        sub_100004590(&aBlock);
        v120 = sub_1000153E0(v117, v119, v169);

        *(v112 + 4) = v120;
        *(v112 + 12) = 2082;
        v121 = *(v1 + v6);
        v122 = v165;
        OS_dispatch_queue.sync<A>(execute:)();

        v123 = (v107 + *(v122 + 20));
        v124 = *v123;
        v125 = v123[1];

        sub_10018270C(v107, type metadata accessor for DownloadJob);
        v126 = sub_1000153E0(v124, v125, v169);
        v106 = &stru_100555000;

        *(v112 + 14) = v126;
        v109 = v161;
        _os_log_impl(&_mh_execute_header, v161, v162, "Update task state and set current progress %{public}s episode: %{public}s", v112, 0x16u);
        swift_arrayDestroy();
      }

      v142 = *(v1 + v6);
      v143 = v168;
      OS_dispatch_queue.sync<A>(execute:)();

      v144 = [v105 totalUnitCount];
      v145 = [v105 v106[152].name];
      v146 = sub_100210480();
      v148 = v147;
      [v105 fractionCompleted];
      v150 = v149;
      v151 = NSProgress.estimatedTimeRemaining.getter();
      aBlock = v144;
      v174 = v145;
      v175 = v146;
      v176 = v148;
      v177 = v150;
      v178 = v151;
      v179 = v152 & 1;
      v153 = v164;
      sub_10020EF18(&aBlock, 0, v164);

      sub_10018270C(v143, type metadata accessor for DownloadJob);
      v154 = *(v1 + v6);
      v155 = v153;
      sub_100182784(v153, v143, type metadata accessor for DownloadJob);
      v156 = (*(v167 + 80) + 24) & ~*(v167 + 80);
      v157 = swift_allocObject();
      *(v157 + 16) = v1;
      sub_100182EF4(v143, v157 + v156, type metadata accessor for DownloadJob);
      v158 = swift_allocObject();
      v158[2] = sub_100184608;
      v158[3] = v157;
      v169[4] = sub_10002D950;
      v169[5] = v158;
      v169[0] = _NSConcreteStackBlock;
      v169[1] = 1107296256;
      v169[2] = sub_10002D904;
      v169[3] = &unk_1004E1118;
      v159 = _Block_copy(v169);

      v160 = v154;

      dispatch_sync(v160, v159);
      _Block_release(v159);

      sub_10018270C(v155, type metadata accessor for DownloadJob);
      LOBYTE(v142) = swift_isEscapingClosureAtFileLocation();

      if ((v142 & 1) == 0)
      {
        goto LABEL_21;
      }

      __break(1u);
      goto LABEL_44;
    }
  }

  v57 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v58 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v58, v57))
  {
    v59 = swift_slowAlloc();
    v162 = v57;
    v60 = v59;
    v163 = swift_slowAlloc();
    v169[0] = v163;
    *v60 = 136446466;
    v61 = *(v1 + v6);
    OS_dispatch_queue.sync<A>(execute:)();

    v165 = v6;
    v62 = v2;
    v63 = v5;
    v65 = v176;
    v64 = v177;
    sub_1000044A0(&aBlock, v176);
    v66 = (*(v64 + 7))(v65, v64);
    v68 = v67;
    sub_100004590(&aBlock);
    v69 = sub_1000153E0(v66, v68, v169);

    *(v60 + 4) = v69;
    *(v60 + 12) = 2082;
    v70 = *(v1 + v165);
    OS_dispatch_queue.sync<A>(execute:)();

    v71 = (v63 + *(v62 + 20));
    v72 = *v71;
    v73 = v71[1];

    sub_10018270C(v63, type metadata accessor for DownloadJob);
    v74 = sub_1000153E0(v72, v73, v169);
    v5 = v63;
    v2 = v62;
    v6 = v165;

    *(v60 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v58, v162, "Update task state to running, download progress is not determined %{public}s episode: %{public}s", v60, 0x16u);
    swift_arrayDestroy();
  }

  v75 = *(v1 + v6);
  OS_dispatch_queue.sync<A>(execute:)();

  v76 = &v5[*(v2 + 40)];
  sub_10018276C(*v76, *(v76 + 1), *(v76 + 2), *(v76 + 3));
  *v76 = 0;
  *(v76 + 1) = 0;
  *(v76 + 2) = 0;
  *(v76 + 3) = 2;
  *(v76 + 4) = 0;
  *(v76 + 5) = 0;
  *(v76 + 24) = 0;
  v77 = *(v1 + v6);
  v78 = v168;
  sub_100182784(v5, v168, type metadata accessor for DownloadJob);
  v79 = (*(v167 + 80) + 24) & ~*(v167 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = v1;
  sub_100182EF4(v78, v80 + v79, type metadata accessor for DownloadJob);
  v81 = swift_allocObject();
  *(v81 + 16) = sub_100184608;
  *(v81 + 24) = v80;
  v177 = sub_10002D950;
  v178 = v81;
  aBlock = _NSConcreteStackBlock;
  v174 = 1107296256;
  v175 = sub_10002D904;
  v176 = &unk_1004E10A0;
  v82 = _Block_copy(&aBlock);

  v83 = v77;

  dispatch_sync(v83, v82);
  _Block_release(v82);

  sub_10018270C(v5, type metadata accessor for DownloadJob);
  LOBYTE(v77) = swift_isEscapingClosureAtFileLocation();

  if ((v77 & 1) == 0)
  {
LABEL_21:
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100360268(v1);
      swift_unknownObjectRelease();
    }

    return sub_100004590(v170);
  }

LABEL_44:
  __break(1u);
  return result;
}

void sub_1001723C8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v3 = *(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  sub_100168088(&qword_100574900, &unk_100400AA0);
  OS_dispatch_queue.sync<A>(execute:)();

  v4 = v22;
  v5 = v23;
  sub_1000044A0(v21, v22);
  v6 = (*(v5 + 8))(v4, v5);
  sub_100004590(v21);
  if (v6 == 1)
  {
    sub_1001729B4();
  }

  else if (v6)
  {
    v7 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v8 = static OS_os_log.downloads.getter();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = 0xE900000000000064;
      v10 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v10 = 136446466;
      v11 = *(v1 + v2);
      OS_dispatch_queue.sync<A>(execute:)();

      v12 = v22;
      v13 = v23;
      sub_1000044A0(v21, v22);
      v14 = (*(v13 + 56))(v12, v13);
      v16 = v15;
      sub_100004590(v21);
      v17 = sub_1000153E0(v14, v16, v20);

      *(v10 + 4) = v17;
      *(v10 + 12) = 2082;
      if (v6 == 2)
      {
        v9 = 0xE900000000000067;
        v18 = 0x6E696C65636E6163;
      }

      else if (v6 == 3)
      {
        v18 = 0x6574656C706D6F63;
      }

      else
      {
        v9 = 0xE700000000000000;
        v18 = 0x6E776F6E6B6E75;
      }

      v19 = sub_1000153E0(v18, v9, v20);

      *(v10 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v7, "Invalid state. Attempt to pause or resume task %{public}s) which is in state: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    sub_1001726A0();
  }
}

uint64_t sub_1001726A0()
{
  v1 = v0;
  v2 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v3 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22[0] = v5;
    *v4 = 136446210;
    v6 = *(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    sub_100168088(&qword_100574900, &unk_100400AA0);
    OS_dispatch_queue.sync<A>(execute:)();

    v7 = v24;
    v8 = v25;
    sub_1000044A0(v23, v24);
    v9 = (*(v8 + 56))(v7, v8);
    v11 = v10;
    sub_100004590(v23);
    v12 = sub_1000153E0(v9, v11, v22);

    *(v4 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v2, "Pause download task %{public}s", v4, 0xCu);
    sub_100004590(v5);
  }

  v13 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v14 = *(v1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  sub_100168088(&qword_100574900, &unk_100400AA0);
  OS_dispatch_queue.sync<A>(execute:)();

  sub_100009F1C(0, &qword_100577200, AVAssetDownloadTask_ptr);
  if (swift_dynamicCast())
  {

    v15 = *(v1 + v13);
    OS_dispatch_queue.sync<A>(execute:)();

    v16 = v24;
    v17 = v25;
    sub_1000044A0(v23, v24);
    (*(v17 + 120))(v16, v17);
  }

  else
  {
    v18 = *(v1 + v13);
    OS_dispatch_queue.sync<A>(execute:)();

    v19 = v24;
    v20 = v25;
    sub_1000044A0(v23, v24);
    (*(v20 + 128))(v19, v20);
  }

  return sub_100004590(v23);
}

void sub_1001729B4()
{
  v1 = v0;
  v2 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v3 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18[0] = v5;
    *v4 = 136446210;
    v6 = *(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    sub_100168088(&qword_100574900, &unk_100400AA0);
    OS_dispatch_queue.sync<A>(execute:)();

    v7 = v20;
    v8 = v21;
    sub_1000044A0(v19, v20);
    v9 = (*(v8 + 56))(v7, v8);
    v11 = v10;
    sub_100004590(v19);
    v12 = sub_1000153E0(v9, v11, v18);

    *(v4 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v2, "Resume download task %{public}s", v4, 0xCu);
    sub_100004590(v5);
  }

  v13 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v14 = *(v1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  sub_100168088(&qword_100574900, &unk_100400AA0);
  OS_dispatch_queue.sync<A>(execute:)();

  sub_100009F1C(0, &qword_100577200, AVAssetDownloadTask_ptr);
  if (swift_dynamicCast())
  {
  }

  else
  {
    v15 = *(v1 + v13);
    OS_dispatch_queue.sync<A>(execute:)();

    v16 = v20;
    v17 = v21;
    sub_1000044A0(v19, v20);
    (*(v17 + 112))(v16, v17);
    sub_100004590(v19);
  }
}

uint64_t sub_100172C64(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v127 = a7;
  v126 = a6;
  v124 = a4;
  v123 = a3;
  v122 = a2;
  *&v140 = a1;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v138 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v12;
  __chkstk_darwin();
  v137 = &v118 - v13;
  v128 = type metadata accessor for DownloadJob(0);
  v130 = *(v128 - 8);
  __chkstk_darwin();
  v136 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v14;
  __chkstk_darwin();
  v16 = &v118 - v15;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v18 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v118 - v19;
  LODWORD(v134) = static os_log_type_t.default.getter();
  v125 = sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v120 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004007A0;
  v139 = v11;
  v129 = a5;
  v121 = v10;
  if (!a5)
  {
    v24 = v7;
LABEL_8:
    v25 = 0;
    v26 = 0;
    goto LABEL_10;
  }

  v22 = [a5 URL];
  if (v22)
  {
    v23 = v22;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v11 + 56))(v18, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v18, 1, 1, v10);
  }

  sub_100010498(v18, v20, &qword_100574040, &unk_100400AD0);
  v24 = v8;
  if ((*(v11 + 48))(v20, 1, v10) == 1)
  {
    sub_100009104(v20, &qword_100574040, &unk_100400AD0);
    goto LABEL_8;
  }

  v25 = URL.absoluteString.getter();
  v26 = v27;
  (*(v11 + 8))(v20, v10);
LABEL_10:
  *(v21 + 56) = &type metadata for String;
  v28 = sub_100022C18();
  *(v21 + 64) = v28;
  if (v26)
  {
    v29 = v25;
  }

  else
  {
    v29 = 0;
  }

  v30 = 0xE000000000000000;
  if (v26)
  {
    v30 = v26;
  }

  *(v21 + 32) = v29;
  *(v21 + 40) = v30;
  v31 = URL.absoluteString.getter();
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v28;
  *(v21 + 72) = v31;
  *(v21 + 80) = v32;
  *(v21 + 136) = &type metadata for Int64;
  *(v21 + 144) = &protocol witness table for Int64;
  v33 = v124;
  *(v21 + 112) = v124;
  v34 = sub_100173980();
  *(v21 + 176) = &type metadata for UInt64;
  *(v21 + 184) = &protocol witness table for UInt64;
  if (v35)
  {
    v34 = 0;
  }

  *(v21 + 152) = v34;
  v36 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v37 = *(v24 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  v118 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v38 = v37;
  v39 = v128;
  OS_dispatch_queue.sync<A>(execute:)();

  v40 = &v16[*(v39 + 20)];
  v42 = *v40;
  v41 = *(v40 + 1);

  v119 = type metadata accessor for DownloadJob;
  sub_10018270C(v16, type metadata accessor for DownloadJob);
  *(v21 + 216) = &type metadata for String;
  *(v21 + 224) = v28;
  *(v21 + 192) = v42;
  *(v21 + 200) = v41;
  v43 = v120;
  os_log(_:dso:log:_:_:)(v134, &_mh_execute_header, v120, "Asset download completed from %@ to a temp location: %s, bytesReceived: %{iec-bytes}d, file size on disk: %{iec-bytes}d, episode uuid: %@", 137, 2, v21);

  v44 = v24;
  v45 = *(v24 + v36);
  OS_dispatch_queue.sync<A>(execute:)();

  v120 = OBJC_IVAR____TtC8Podcasts11JobPipeline_assetsFolder;
  v46 = swift_allocObject();
  v134 = v46;
  v47 = v126;
  *(v46 + 16) = v24;
  *(v46 + 24) = v47;
  v48 = v127;
  v49 = v122;
  *(v46 + 32) = v127;
  *(v46 + 40) = v49;
  *(v46 + 48) = v123 & 1;
  *(v46 + 56) = v33;
  v50 = *(v39 + 36);
  v51 = v50 + *(type metadata accessor for EpisodeMetadata(0) + 44);

  sub_100013CB4(v47, v48);
  v127 = URL.pathExtension.getter();
  v126 = v52;
  v53 = v16;
  v133 = v16;
  v54 = *(v139 + 16);
  v55 = v137;
  v56 = v121;
  v54(v137, v140, v121);
  v57 = v138;
  v54(v138, &v53[v51], v56);
  v58 = *(v44 + v118);
  v59 = v136;
  v135 = v44;
  OS_dispatch_queue.sync<A>(execute:)();

  v60 = (v59 + *(v39 + 20));
  v61 = *v60;
  v62 = v60[1];

  sub_10018270C(v59, v119);
  v63 = type metadata accessor for ValidateOperation(0);
  v64 = objc_allocWithZone(v63);
  v65 = &v64[OBJC_IVAR____TtC8Podcasts17ValidateOperation_input];
  *v65 = 0;
  v65[8] = 2;
  v54(&v64[OBJC_IVAR____TtC8Podcasts17ValidateOperation_source], v55, v56);
  v54(&v64[OBJC_IVAR____TtC8Podcasts17ValidateOperation_origin], v57, v56);
  v66 = &v64[OBJC_IVAR____TtC8Podcasts17ValidateOperation_originalExtension];
  v67 = v126;
  *v66 = v127;
  v66[1] = v67;
  v68 = v129;
  *&v64[OBJC_IVAR____TtC8Podcasts17ValidateOperation_response] = v129;
  v69 = &v64[OBJC_IVAR____TtC8Podcasts17ValidateOperation_episodeUuid];
  *v69 = v61;
  *(v69 + 1) = v62;
  v70 = v68;
  *&v64[OBJC_IVAR____TtC8Podcasts17ValidateOperation_log] = static OS_os_log.default.getter();
  v143.receiver = v64;
  v143.super_class = v63;
  v129 = objc_msgSendSuper2(&v143, "init");
  v71 = v139;
  v72 = *(v139 + 8);
  v72(v57, v56);
  v72(v55, v56);
  v54(v55, v140, v56);
  v54(v57, &v120[v44], v56);
  v73 = v136;
  sub_100182784(v133, v136, type metadata accessor for DownloadJob);
  v74 = *(v71 + 80);
  v75 = (v74 + 16) & ~v74;
  v76 = (v132 + v74 + v75) & ~v74;
  v77 = (v132 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = (*(v130 + 80) + v77 + 16) & ~*(v130 + 80);
  v79 = (v131 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = *(v71 + 32);
  v81(v80 + v75, v137, v56);
  v81(v80 + v76, v138, v56);
  v82 = (v80 + v77);
  v83 = v134;
  *v82 = sub_100183A58;
  v82[1] = v83;
  sub_100182EF4(v73, v80 + v78, type metadata accessor for DownloadJob);
  *(v80 + v79) = v135;
  v84 = sub_100168088(&qword_100573668, &qword_100400BD8);
  v85 = objc_allocWithZone(v84);
  sub_100168088(&qword_100573670, &qword_100400BE0);
  swift_storeEnumTagMultiPayload();
  v86 = (v85 + *((swift_isaMask & *v85) + 0x188));
  *v86 = sub_100183A6C;
  v86[1] = v80;
  v142.receiver = v85;
  v142.super_class = v84;

  v87 = objc_msgSendSuper2(&v142, "init");
  v88 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v89 = v129;
  v90 = &v129[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v91 = *&v129[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v92 = *&v129[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
  *v90 = sub_100183B9C;
  v90[1] = v88;

  sub_1000112B4(v91, v92);

  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v95 = result;
    v96 = swift_allocObject();
    *(v96 + 24) = v95;
    swift_unknownObjectWeakInit();
    v97 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v98 = swift_allocObject();
    *(v98 + 16) = v97;
    *(v98 + 24) = v96;
    v99 = *(v95 + 72);
    v100 = v89;

    v99(sub_10003B6A0, v98, ObjectType, v95);

    v101 = type metadata accessor for BaseOperation();
    v141.receiver = v87;
    v141.super_class = v101;
    objc_msgSendSuper2(&v141, "addDependency:", v100);

    v102 = swift_allocObject();
    v103 = v134;
    *(v102 + 16) = sub_100183A58;
    *(v102 + 24) = v103;
    v104 = &v87[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    v105 = *&v87[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    v106 = *&v87[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError + 8];
    *v104 = sub_100183BA4;
    v104[1] = v102;

    v107 = v87;
    sub_1000112B4(v105, v106);

    v108 = v135;
    v109 = sub_10016E37C();
    sub_100168088(&unk_100574680, &qword_100401740);
    v110 = swift_allocObject();
    v140 = xmmword_1004007B0;
    *(v110 + 16) = xmmword_1004007B0;
    *(v110 + 32) = v100;
    sub_100009F1C(0, &unk_10057A6A0, NSOperation_ptr);
    v111 = v100;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v109 addOperations:isa waitUntilFinished:1];

    v113 = *(v108 + OBJC_IVAR____TtC8Podcasts11JobPipeline____lazy_storage___operationQueue);
    v114 = swift_allocObject();
    *(v114 + 16) = v140;
    *(v114 + 32) = v107;
    v115 = v107;
    v116 = v113;
    v117 = Array._bridgeToObjectiveC()().super.isa;

    [v116 addOperations:v117 waitUntilFinished:0];

    return sub_10018270C(v133, type metadata accessor for DownloadJob);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100173980()
{
  v0 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v1 = String._bridgeToObjectiveC()();

  v16[0] = 0;
  v2 = [v0 attributesOfItemAtPath:v1 error:v16];

  v3 = v16[0];
  if (v2)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_100182DE8(&qword_1005730E0, type metadata accessor for FileAttributeKey, &unk_10040007C);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v3;

    if (*(v4 + 16) && (v6 = sub_100202D0C(), (v7 & 1) != 0))
    {
      sub_10001B944(*(v4 + 56) + 32 * v6, v16);

      if (swift_dynamicCast())
      {
        return v15;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v9 = v16[0];
    v10 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v16[0] = v10;
    swift_errorRetain();
    sub_100168088(&qword_100575C50, &unk_100402650);
    sub_100009F1C(0, &qword_100573598, NSError_ptr);
    if (swift_dynamicCast())
    {

      v11 = static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      v12 = static OS_os_log.downloads.getter();
      sub_100168088(&unk_100574670, &qword_100400AB0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100400790;
      v14 = [v15 code];
      *(v13 + 56) = &type metadata for Int;
      *(v13 + 64) = &protocol witness table for Int;
      *(v13 + 32) = v14;
      os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Can't get file size due to error: %{errno}d", 43, 2, v13);

      return 0;
    }

    else
    {
    }
  }
}

uint64_t sub_100173CA0(void (*a1)(char *, char *, uint64_t), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, objc_class *a5, int a6, objc_class *a7)
{
  v51 = a7;
  v52 = a6;
  v53 = a5;
  v54 = a1;
  v56 = a4;
  v57 = a2;
  v58 = a3;
  v49 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v55 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v45 - v11;
  __chkstk_darwin();
  v14 = (&v45 - v13);
  v47 = sub_100168088(&qword_100582810, &unk_100408800);
  __chkstk_darwin();
  v48 = (&v45 - v15);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v17 = (&v45 - v16);
  sub_100168088(&qword_100573678, &qword_100400BE8);
  __chkstk_darwin();
  v19 = (&v45 - v18);
  sub_100010430(v54, &v45 - v18, &qword_100573678, &qword_100400BE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    v21 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v22 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100400790;
    swift_getErrorValue();
    v24 = Error.localizedDescription.getter();
    v25 = v8;
    v27 = v26;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_100022C18();
    *(v23 + 32) = v24;
    *(v23 + 40) = v27;
    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "Post download file validation failed, error: %{public}s", 55, 2, v23);

    (*(v9 + 56))(v17, 1, 1, v25);
    swift_errorRetain();
    sub_10017DCE8(v20, 0, 128, v17);

    sub_100009104(v17, &qword_100574040, &unk_100400AD0);
    v28 = v58;
    if (v58)
    {
      v29 = v48;
      *v48 = v20;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v28(v29);

      return sub_100009104(v29, &qword_100582810, &unk_100408800);
    }

    else
    {
    }
  }

  else
  {
    v31 = *(sub_100168088(&qword_100573680, &unk_100400BF0) + 48);
    v32 = *(v9 + 32);
    v54 = v32;
    v46 = v14;
    v32(v14, v19, v8);
    v45 = v12;
    v32(v12, v19 + v31, v8);
    v33 = *(v57 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    OS_dispatch_queue.sync<A>(execute:)();

    v34 = swift_allocObject();
    swift_weakInit();
    v35 = v50;
    (*(v9 + 16))(v50, v12, v8);
    v36 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v37 = swift_allocObject();
    v38 = v58;
    *(v37 + 2) = v34;
    *(v37 + 3) = v38;
    v39 = v9;
    v40 = v56;
    *(v37 + 4) = v56;
    v54(&v37[v36], v35, v8);

    sub_100013CB4(v38, v40);
    v41 = v55;
    v43 = v45;
    v42 = v46;
    sub_1001758BC(v55, v46, v45, v53, v52 & 1, v51, sub_100183C00, v37);

    sub_10018270C(v41, type metadata accessor for DownloadJob);
    v44 = *(v39 + 8);
    v44(v43, v8);
    v44(v42, v8);
  }
}

uint64_t sub_1001742C4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v51 = a4;
  v52 = a3;
  v6 = type metadata accessor for DownloadJob(0);
  v7 = *(v6 - 8);
  v45 = v6;
  v46 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v42 - v9;
  v49 = sub_100168088(&qword_100582810, &unk_100408800);
  __chkstk_darwin();
  v50 = (&v42 - v10);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v12 = (&v42 - v11);
  v44 = type metadata accessor for JobPipelineError(0);
  __chkstk_darwin();
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v16 = &v42 - v15;
  sub_100168088(&qword_100573640, &qword_100400BB8);
  __chkstk_darwin();
  v18 = &v42 - v17;
  sub_100010430(a1, &v42 - v17, &qword_100573640, &qword_100400BB8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v26 = result;
      sub_1001749FC();
      v27 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
      v28 = *(v26 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
      v29 = v48;
      v30 = v45;
      OS_dispatch_queue.sync<A>(execute:)();

      v31 = v29 + *(v30 + 40);
      sub_10018276C(*v31, *(v31 + 8), *(v31 + 16), *(v31 + 24));
      *v31 = 0;
      *(v31 + 8) = 0;
      *(v31 + 16) = 0;
      *(v31 + 24) = 3;
      *(v31 + 32) = 0;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      v32 = *(v26 + v27);
      v33 = v47;
      sub_100182784(v29, v47, type metadata accessor for DownloadJob);
      v34 = (*(v46 + 80) + 24) & ~*(v46 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = v26;
      sub_100182EF4(v33, v35 + v34, type metadata accessor for DownloadJob);
      v36 = swift_allocObject();
      *(v36 + 16) = sub_100184608;
      *(v36 + 24) = v35;
      aBlock[4] = sub_10002D950;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002D904;
      aBlock[3] = &unk_1004E1028;
      v37 = _Block_copy(aBlock);
      v38 = v32;

      dispatch_sync(v38, v37);
      _Block_release(v37);

      sub_10018270C(v29, type metadata accessor for DownloadJob);
      LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

      if (v37)
      {
        __break(1u);
        return result;
      }

      if (!swift_unknownObjectWeakLoadStrong())
      {

        v39 = v52;
        if (!v52)
        {
          return result;
        }

LABEL_12:
        v40 = type metadata accessor for URL();
        v41 = v50;
        (*(*(v40 - 8) + 16))(v50, v43, v40);
        swift_storeEnumTagMultiPayload();
        v39(v41);
        return sub_100009104(v41, &qword_100582810, &unk_100408800);
      }

      sub_100368020(v26);

      result = swift_unknownObjectRelease();
    }

    v39 = v52;
    if (!v52)
    {
      return result;
    }

    goto LABEL_12;
  }

  sub_100182EF4(v18, v16, type metadata accessor for JobPipelineError);
  sub_100182784(v16, v14, type metadata accessor for JobPipelineError);
  v19 = *v14;
  v20 = sub_100168088(&qword_100573648, &qword_100400BC0);
  sub_100010498(v14 + *(v20 + 48), v12, &qword_100574040, &unk_100400AD0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_errorRetain();
    sub_10017DCE8(v19, 0, 128, v12);
  }

  sub_100009104(v12, &qword_100574040, &unk_100400AD0);
  v21 = v52;
  if (v52)
  {
    sub_100182DE8(&qword_100573698, type metadata accessor for JobPipelineError, &unk_100400DE8);
    v22 = swift_allocError();
    sub_100182784(v16, v23, type metadata accessor for JobPipelineError);
    v24 = v50;
    *v50 = v22;
    swift_storeEnumTagMultiPayload();
    v21(v24);
    sub_100009104(v24, &qword_100582810, &unk_100408800);
  }

  return sub_10018270C(v16, type metadata accessor for JobPipelineError);
}

void sub_1001749FC()
{
  v1 = v0;
  sub_100168088(&qword_100574760, &unk_1003FEB60);
  __chkstk_darwin();
  v3 = &v16[-v2];
  v4 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  v8 = &v6[*(v4 + 20)];
  v9 = *v8;
  v10 = v8[1];

  sub_10018270C(v6, type metadata accessor for DownloadJob);
  sub_100174C3C(v9, v10, 2);

  v11 = v1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_metadata;
  v12 = type metadata accessor for EpisodeMetadata(0);
  sub_100010430(v11 + *(v12 + 60), v3, &qword_100574760, &unk_1003FEB60);
  v13 = type metadata accessor for Date();
  LODWORD(v11) = (*(*(v13 - 8) + 48))(v3, 1, v13);
  sub_100009104(v3, &qword_100574760, &unk_1003FEB60);
  if (v11 != 1)
  {
    v14 = *(v1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_analyticsChannel);
    type metadata accessor for AnalyticsEvent();
    swift_unknownObjectRetain();
    v15 = AnalyticsEvent.__allocating_init(cacheDeletedFilesRestored:failed:)();
    [v14 sendEvent:v15];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100174C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v27 = a3;
  v28 = a2;
  v3 = type metadata accessor for BugReportFrequency();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin();
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BugReport.Domain();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BugReport.ErrorKind();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PodcastsSystem();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = os_feature_enabled_download_consistency_checks();
  if (result)
  {
    (*(v15 + 104))(v17, enum case for PodcastsSystem.downloads(_:), v14);
    (*(v11 + 104))(v13, enum case for BugReport.ErrorKind.duplicateDownloads(_:), v10);
    (*(v7 + 104))(v9, enum case for BugReport.Domain.podcasts(_:), v6);
    v19 = objc_allocWithZone(type metadata accessor for BugReport());
    v20 = BugReport.init(domain:system:errorKind:forceSubmissionAttempt:)();
    sub_100004428(v25[1] + OBJC_IVAR____TtC8Podcasts11JobPipeline_bugReporter, v31);
    sub_1000044A0(v31, v31[3]);
    v22 = v29;
    v21 = v30;
    (*(v29 + 104))(v5, enum case for BugReportFrequency.hourly(_:), v30);
    v23 = swift_allocObject();
    v24 = v27;
    v23[2] = v26;
    v23[3] = v28;
    v23[4] = v24;

    dispatch thunk of BugReporter.prepare(bugReport:maximumFrequency:checkBlock:)();

    (*(v22 + 8))(v5, v21);
    return sub_100004590(v31);
  }

  return result;
}

void sub_100174FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 loggingContext];

  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a1;
  v12[7] = a2;
  v15[4] = sub_100183A18;
  v15[5] = v12;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10000F038;
  v15[3] = &unk_1004E0E98;
  v13 = _Block_copy(v15);
  v14 = v11;

  [v14 performBlock:v13];
  _Block_release(v13);
}

void sub_100175134(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v57 = a4;
  v58 = a5;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v52 - v14;
  v16 = String._bridgeToObjectiveC()();
  v17 = [a1 episodeForUuid:v16];

  if (v17)
  {
    v18 = [v17 podcast];
    if (v18)
    {
      v19 = v18;
      v54 = a6;
      v20 = [v18 uuid];
      if (v20)
      {
        v21 = v20;
        v53 = v10;
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v22;
        sub_100009F1C(0, &qword_100573660, MTEpisode_ptr);
        v56 = [swift_getObjCClassFromMetadata() fetchRequest];
        v23 = objc_opt_self();
        v24 = [v23 predicateForDownloadBehavior:2];
        v25 = [v23 predicateForDownloadBehavior:4];
        v26 = [v24 OR:v25];

        v27 = v26;
        v28 = [v23 predicateForDownloadedEpisodesOnPodcastUuid:v21];

        v29 = [v26 NOT];
        v30 = [v28 AND:v29];

        v31 = v56;
        [v31 setPredicate:v30];

        v59 = 0;
        v32 = [a1 countForFetchRequest:v31 error:&v59];
        v33 = v59;
        if (v59)
        {
          swift_willThrow();
          v34 = v33;
          static Logger.downloads.getter();
          v35 = v55;

          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v58 = v34;
            v40 = v39;
            v59 = v39;
            *v38 = 136446210;
            v41 = sub_1000153E0(v52, v35, &v59);
            v42 = v27;
            v43 = v41;

            *(v38 + 4) = v43;
            _os_log_impl(&_mh_execute_header, v36, v37, "Failed to count downloaded episodes for podcast: %{public}s, unable to assess excessive downloads.", v38, 0xCu);
            sub_100004590(v40);
          }

          else
          {
          }

          (*(v11 + 8))(v13, v53);
        }

        else
        {
          v48 = v32;

          [v19 episodeLimitResolvedValue];
          v49 = swift_allocObject();
          v51 = v57;
          v50 = v58;
          v49[2] = v48;
          v49[3] = v51;
          v49[4] = v50;
          v49[5] = v54;

          MTPodcastEpisodeLimit.countValue(in:completionHandler:)();
        }

        return;
      }
    }

    else
    {
      v19 = v17;
    }
  }

  static Logger.downloads.getter();

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v59 = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_1000153E0(a2, a3, &v59);
    _os_log_impl(&_mh_execute_header, v44, v45, "Unable to assess for excessive download, episode or podcast not found for episodeUUID: %s", v46, 0xCu);
    sub_100004590(v47);
  }

  (*(v11 + 8))(v15, v10);
}

unint64_t sub_1001756F0(unint64_t result, char a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(unint64_t))
{
  if ((a2 & 1) == 0)
  {
    if (is_mul_ok(a5, result))
    {
      if (a4 >= 1 && a5 * result < a4)
      {
        v6 = result;
        sub_100168088(&qword_100573618, &qword_100400B78);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1004007C0;
        AnyHashable.init<A>(_:)();
        v10 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:v6];
        v11 = sub_100009F1C(0, &qword_1005742A0, NSNumber_ptr);
        *(inited + 96) = v11;
        *(inited + 72) = v10;
        AnyHashable.init<A>(_:)();
        v12 = [objc_allocWithZone(NSNumber) initWithInteger:a4];
        *(inited + 168) = v11;
        *(inited + 144) = v12;
        v13 = sub_10016A0DC(inited);
        swift_setDeallocating();
        sub_100168088(&qword_100578590, &qword_100400B80);
        swift_arrayDestroy();
        a6(v13);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1001758BC(objc_class *a1, objc_class *a2, void *a3, objc_class *a4, int a5, objc_class *a6, uint64_t a7, uint64_t a8)
{
  v297 = a3;
  v284 = a7;
  v285 = a8;
  v281 = a6;
  LODWORD(v288) = a5;
  v287 = a4;
  v300 = a1;
  v269 = type metadata accessor for DownloadJob(0);
  v290 = *(v269 - 8);
  v289 = v290[8];
  __chkstk_darwin();
  v301 = (&v268 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for URL();
  v299 = *(v11 - 1);
  v12 = v299;
  v295 = v299[8];
  __chkstk_darwin();
  v14 = &v268 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin();
  v17 = &v268 - v16;
  v18 = v12[2];
  v277 = a2;
  v18(&v268 - v16, a2, v11, v15);
  (v18)(v14, a3, v11);
  v291 = sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v19 = static OS_os_log.downloads.getter();
  v20 = type metadata accessor for MoveFileOperation(0);
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC8Podcasts17MoveFileOperation_input];
  *v22 = 0;
  v22[8] = 2;
  (v18)(&v21[OBJC_IVAR____TtC8Podcasts17MoveFileOperation_destination], v14, v11);
  (v18)(&v21[OBJC_IVAR____TtC8Podcasts17MoveFileOperation_source], v17, v11);
  *&v21[OBJC_IVAR____TtC8Podcasts17MoveFileOperation_log] = v19;
  v323.receiver = v21;
  v323.super_class = v20;
  v278 = [(objc_class *)&v323 init];
  v23 = v299[1];
  v286 = v23;
  (v23)(v14, v11);
  (v23)(v17, v11);
  (v18)(v17, v297, v11);
  v292 = v18;
  v293 = v12 + 2;
  type metadata accessor for FairPlayRolloutController();
  v24 = static FairPlayRolloutController.shared.getter();
  LOBYTE(v14) = FairPlayRolloutController.isEnabled()();

  type metadata accessor for FairPlayKeyLoader();
  v25 = FairPlayKeyLoader.__allocating_init()();
  FairPlayKeyOperation = type metadata accessor for FetchFairPlayKeyOperation(0);
  v27 = objc_allocWithZone(FairPlayKeyOperation);
  v28 = &v27[OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_input];
  *v28 = 0;
  v28[8] = 2;
  v29 = &v27[OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation____lazy_storage___logPrefix];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v27[OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_episodeAdamID];
  *v30 = v287;
  v30[8] = v288 & 1;
  v294 = v17;
  v296 = v11;
  (v18)(&v27[OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_episodeLocation], v17, v11);
  *&v27[OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_fairPlayKeyLoader] = v25;
  v27[OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_iTunesCloudFairPlayOfflineEnabled] = v14 & 1;
  v322.receiver = v27;
  v322.super_class = FairPlayKeyOperation;
  v279 = [(objc_class *)&v322 init];
  v286(v17, v11);
  v288 = type metadata accessor for DownloadJob;
  v31 = v300;
  v32 = v301;
  sub_100182784(v300, v301, type metadata accessor for DownloadJob);
  v33 = *(v290 + 80);
  v34 = (v33 + 16) & ~v33;
  v35 = &v289[v34];
  v290 = (v33 | 7);
  v36 = swift_allocObject();
  v282 = type metadata accessor for DownloadJob;
  sub_100182EF4(v32, v36 + v34, type metadata accessor for DownloadJob);
  v37 = sub_100168088(&qword_100573620, &qword_100400B88);
  v38 = objc_allocWithZone(v37);
  v39 = &v38[*((swift_isaMask & *v38) + 0x180)];
  *v39 = 0;
  v39[8] = 2;
  v40 = &v38[*((swift_isaMask & *v38) + 0x188)];
  *v40 = sub_100183118;
  v40[1] = v36;
  v321.receiver = v38;
  v321.super_class = v37;
  v272 = [(objc_class *)&v321 init];
  v41 = sub_100168088(&qword_100573628, &qword_100400B90);
  v42 = objc_allocWithZone(v41);
  sub_100168088(&unk_100581880, &qword_100400B98);
  swift_storeEnumTagMultiPayload();
  v43 = (v42 + *((swift_isaMask & *v42) + 0x188));
  *v43 = sub_100177CDC;
  v43[1] = 0;
  v320.receiver = v42;
  v320.super_class = v41;
  v287 = [(objc_class *)&v320 init];
  v44 = v31;
  v45 = v31;
  v46 = v301;
  sub_100182784(v45, v301, v288);
  v47 = swift_allocObject();
  v48 = v46;
  sub_100182EF4(v46, v47 + v34, type metadata accessor for DownloadJob);
  v49 = sub_100168088(&qword_100573630, &qword_100400BA0);
  v50 = objc_allocWithZone(v49);
  v51 = &v50[*((swift_isaMask & *v50) + 0x180)];
  *v51 = 0;
  v51[8] = 2;
  v52 = &v50[*((swift_isaMask & *v50) + 0x188)];
  *v52 = sub_100183374;
  v52[1] = v47;
  v319.receiver = v50;
  v319.super_class = v49;
  v271 = [(objc_class *)&v319 init];
  v53 = sub_100168088(&qword_100573638, &qword_100400BA8);
  v54 = objc_allocWithZone(v53);
  v55 = &v54[*((swift_isaMask & *v54) + 0x180)];
  *v55 = 0;
  v55[8] = 2;
  v56 = &v54[*((swift_isaMask & *v54) + 0x188)];
  *v56 = sub_100178824;
  *(v56 + 1) = 0;
  v318.receiver = v54;
  v318.super_class = v53;
  v286 = [(objc_class *)&v318 init];
  v57 = v298;
  v270 = sub_100181388(v44, 1);
  v58 = *(v57 + OBJC_IVAR____TtC8Podcasts11JobPipeline_episodeStorage);
  v289 = *(v57 + OBJC_IVAR____TtC8Podcasts11JobPipeline_episodeStorage + 8);
  swift_unknownObjectRetain();
  v280 = static OS_os_log.downloads.getter();
  sub_100182784(v44, v46, v288);
  v59 = v294;
  v60 = v296;
  v292(v294, v297, v296);
  v61 = v299;
  v62 = *(v299 + 80);
  v283 = ~v62;
  v275 = v35;
  v63 = &v35[v62] & ~v62;
  v64 = (v295 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v288 = v62;
  v65 = swift_allocObject();
  v276 = v34;
  sub_100182EF4(v48, v65 + v34, v282);
  v66 = v61[4];
  v299 = v61 + 4;
  v282 = v66;
  (v66)(v65 + v63, v59, v60);
  *(v65 + v64) = v281;
  v67 = sub_100168088(&qword_1005735B0, &unk_100400AE0);
  v68 = objc_allocWithZone(v67);
  v69 = &v68[*((swift_isaMask & *v68) + 0x198)];
  *v69 = 0;
  v69[8] = 2;
  v70 = &v68[*((swift_isaMask & *v68) + 0x1A8)];
  *v70 = sub_100183428;
  v70[1] = v65;
  v71 = &v68[*((swift_isaMask & *v68) + 0x1A0)];
  v72 = v289;
  *v71 = v58;
  *(v71 + 1) = v72;
  *&v68[*((swift_isaMask & *v68) + 0x1B0)] = v280;
  v317.receiver = v68;
  v317.super_class = v67;
  v273 = v67;
  v274 = v58;
  swift_unknownObjectRetain();
  v73 = v298;
  v281 = [(objc_class *)&v317 init];
  sub_100010430(v73 + OBJC_IVAR____TtC8Podcasts11JobPipeline_mediaLibraryClient, &v314, &unk_1005817C0, &qword_100400BB0);
  if (v315)
  {
    sub_1000109E4(&v314, v316);
    v74 = *(v73 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    v75 = v301;
    v76 = v269;
    OS_dispatch_queue.sync<A>(execute:)();

    v77 = (&v75->Flags + *(v76 + 20));
    v78 = *v77;
    v79 = v77[1];

    sub_10018270C(v75, type metadata accessor for DownloadJob);
    sub_100009F1C(0, &qword_10057AB20, off_1004D1A70);
    v80 = [swift_getObjCClassFromMetadata() sharedInstance];
    v81 = [v80 activeDsid];

    v82 = sub_10017A7E8(v78, v79, v81, v316);

    sub_100004590(v316);
  }

  else
  {
    sub_100009104(&v314, &unk_1005817C0, &qword_100400BB0);
    v83 = static OS_os_log.default.getter();
    v84 = objc_allocWithZone(type metadata accessor for GroupOperation());
    v82 = sub_100394FF8(_swiftEmptyArrayStorage, 0, v83);
  }

  v280 = v82;
  v85 = static OS_os_log.downloads.getter();
  v86 = v301;
  sub_100182784(v300, v301, type metadata accessor for DownloadJob);
  v87 = v294;
  v88 = v296;
  v292(v294, v277, v296);
  v89 = (v275 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = (v288 + v89 + 8) & v283;
  v91 = swift_allocObject();
  sub_100182EF4(v86, v276 + v91, type metadata accessor for DownloadJob);
  *(v91 + v89) = v73;
  (v282)(v91 + v90, v87, v88);
  v92 = v273;
  v93 = objc_allocWithZone(v273);
  v94 = &v93[*((swift_isaMask & *v93) + 0x198)];
  *v94 = 0;
  v94[8] = 2;
  v95 = &v93[*((swift_isaMask & *v93) + 0x1A8)];
  *v95 = sub_100183550;
  v95[1] = v91;
  v96 = &v93[*((swift_isaMask & *v93) + 0x1A0)];
  v97 = v289;
  *v96 = v274;
  *(v96 + 1) = v97;
  *&v93[*((swift_isaMask & *v93) + 0x1B0)] = v85;
  v313.receiver = v93;
  v313.super_class = v92;

  v291 = [(objc_class *)&v313 init];
  v98 = swift_allocObject();
  v100 = v284;
  v99 = v285;
  *(v98 + 16) = v284;
  *(v98 + 24) = v99;
  v101 = sub_100168088(&unk_10057A690, &unk_100400AC0);
  v102 = objc_allocWithZone(v101);
  v103 = v102 + *((swift_isaMask & *v102) + 0x180);
  *v103 = 0;
  v103[8] = 2;
  v104 = (v102 + *((swift_isaMask & *v102) + 0x188));
  *v104 = sub_10018365C;
  v104[1] = v98;
  sub_100013CB4(v100, v99);
  v312.receiver = v102;
  v312.super_class = v101;
  v277 = [(objc_class *)&v312 init];
  v105 = swift_allocObject();
  v106 = v279;
  swift_unknownObjectWeakInit();
  v107 = v278;
  v108 = (v278 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v109 = *(v278 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v110 = *(v278 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
  *v108 = sub_100183678;
  v108[1] = v105;

  sub_1000112B4(v109, v110);

  ObjectType = swift_getObjectType();
  v301 = &protocol descriptor for PodcastsOperation;
  v112 = swift_conformsToProtocol2();
  if (!v112)
  {
    __break(1u);
    goto LABEL_16;
  }

  v113 = v112;
  v114 = swift_allocObject();
  *(v114 + 24) = v113;
  swift_unknownObjectWeakInit();
  v115 = v107;
  v116 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v117 = swift_allocObject();
  *(v117 + 16) = v116;
  *(v117 + 24) = v114;
  v118 = *(v113 + 72);
  v119 = v115;

  v118(sub_10003B6A0, v117, ObjectType, v113);

  v120 = type metadata accessor for BaseOperation();
  v311.receiver = v106;
  v311.super_class = v120;
  v300 = v120;
  [(objc_class *)&v311 addDependency:v119];

  v278 = v119;
  v121 = swift_allocObject();
  v122 = v272;
  swift_unknownObjectWeakInit();
  v123 = (v106 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v124 = *(v106 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v125 = *(v106 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
  *v123 = sub_100182704;
  v123[1] = v121;

  sub_1000112B4(v124, v125);

  v290 = swift_getObjectType();
  v126 = swift_conformsToProtocol2();
  if (!v126)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v127 = v126;
  v128 = swift_allocObject();
  *(v128 + 24) = v127;
  swift_unknownObjectWeakInit();
  v129 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v130 = swift_allocObject();
  *(v130 + 16) = v129;
  *(v130 + 24) = v128;
  v131 = *(v127 + 72);
  v132 = v106;

  v131(sub_10003B6A0, v130, v290, v127);

  v310.receiver = v122;
  v310.super_class = v300;
  [(objc_class *)&v310 addDependency:v132];

  v279 = v132;
  v133 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v134 = (v122 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v135 = *(v122 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v136 = *(v122 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
  *v134 = sub_100183680;
  v134[1] = v133;

  sub_1000112B4(v135, v136);

  v137 = swift_getObjectType();
  v138 = swift_conformsToProtocol2();
  if (!v138)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v139 = v138;
  v140 = swift_allocObject();
  *(v140 + 24) = v139;
  swift_unknownObjectWeakInit();
  v141 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v142 = swift_allocObject();
  *(v142 + 16) = v141;
  *(v142 + 24) = v140;
  v143 = *(v139 + 72);
  v144 = v122;

  v143(sub_10003B6A0, v142, v137, v139);
  v145 = v287;

  v309.receiver = v145;
  v309.super_class = v300;
  [(objc_class *)&v309 addDependency:v144];

  v276 = v144;
  v146 = swift_allocObject();
  v147 = v271;
  swift_unknownObjectWeakInit();
  v148 = (v145 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v149 = *(v145 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v150 = *(v145 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
  *v148 = sub_100182704;
  v148[1] = v146;

  sub_1000112B4(v149, v150);

  v151 = swift_getObjectType();
  v152 = swift_conformsToProtocol2();
  if (!v152)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v153 = v152;
  v154 = swift_allocObject();
  *(v154 + 24) = v153;
  swift_unknownObjectWeakInit();
  v155 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v156 = swift_allocObject();
  *(v156 + 16) = v155;
  *(v156 + 24) = v154;
  v157 = *(v153 + 72);
  v158 = v145;

  v157(sub_10003B6A0, v156, v151, v153);

  v308.receiver = v147;
  v308.super_class = v300;
  [(objc_class *)&v308 addDependency:v158];

  v287 = v158;
  v159 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v160 = (v147 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v161 = *(v147 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v162 = *(v147 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
  *v160 = sub_100183688;
  v160[1] = v159;

  sub_1000112B4(v161, v162);

  v163 = swift_getObjectType();
  v164 = swift_conformsToProtocol2();
  if (!v164)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v165 = v164;
  v166 = swift_allocObject();
  *(v166 + 24) = v165;
  swift_unknownObjectWeakInit();
  v167 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v168 = swift_allocObject();
  *(v168 + 16) = v167;
  *(v168 + 24) = v166;
  v169 = *(v165 + 72);
  v170 = v147;

  v169(sub_10003B6A0, v168, v163, v165);
  v171 = v286;

  v307.receiver = v171;
  v307.super_class = v300;
  [(objc_class *)&v307 addDependency:v170];

  v275 = v170;
  v172 = swift_allocObject();
  v173 = v270;
  swift_unknownObjectWeakInit();
  v174 = (v171 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v175 = *(v171 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v176 = *(v171 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
  *v174 = sub_100182A20;
  v174[1] = v172;

  sub_1000112B4(v175, v176);

  v177 = swift_getObjectType();
  v178 = swift_conformsToProtocol2();
  if (!v178)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v179 = v178;
  v180 = swift_allocObject();
  *(v180 + 24) = v179;
  swift_unknownObjectWeakInit();
  v181 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v182 = swift_allocObject();
  *(v182 + 16) = v181;
  *(v182 + 24) = v180;
  v183 = *(v179 + 72);
  v184 = v171;

  v183(sub_10003B6A0, v182, v177, v179);

  v306.receiver = v173;
  v306.super_class = v300;
  [(objc_class *)&v306 addDependency:v184];

  v286 = v184;
  v185 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v186 = &v173[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v187 = *&v173[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v188 = *&v173[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
  *v186 = sub_100182A20;
  v186[1] = v185;

  sub_1000112B4(v187, v188);

  v189 = swift_getObjectType();
  v190 = swift_conformsToProtocol2();
  if (!v190)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v191 = v190;
  v192 = swift_allocObject();
  *(v192 + 24) = v191;
  swift_unknownObjectWeakInit();
  v193 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v194 = swift_allocObject();
  *(v194 + 16) = v193;
  *(v194 + 24) = v192;
  v195 = *(v191 + 72);
  v196 = v173;

  v195(sub_10003B6A0, v194, v189, v191);
  v197 = v281;

  v198 = v300;
  v305.receiver = v197;
  v305.super_class = v300;
  [(objc_class *)&v305 addDependency:v196];

  v274 = v196;
  v199 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v200 = (v197 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v201 = *(v197 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v202 = *(v197 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
  *v200 = sub_100182A18;
  v200[1] = v199;

  sub_1000112B4(v201, v202);

  v203 = swift_getObjectType();
  v204 = swift_conformsToProtocol2();
  if (!v204)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v205 = v204;
  v206 = swift_allocObject();
  *(v206 + 24) = v205;
  swift_unknownObjectWeakInit();
  v207 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v208 = swift_allocObject();
  *(v208 + 16) = v207;
  *(v208 + 24) = v206;
  v209 = *(v205 + 72);
  v210 = v197;

  v209(sub_10003B6A0, v208, v203, v205);

  v211 = v280;

  v304.receiver = v211;
  v304.super_class = v198;
  [(objc_class *)&v304 addDependency:v210];

  v290 = v210;
  v212 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v213 = &v211[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v214 = *&v211[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v215 = *&v211[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
  *v213 = sub_100182A20;
  v213[1] = v212;

  sub_1000112B4(v214, v215);

  v216 = swift_getObjectType();
  v217 = swift_conformsToProtocol2();
  if (!v217)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v218 = v217;
  v219 = swift_allocObject();
  *(v219 + 24) = v218;
  swift_unknownObjectWeakInit();
  v220 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v221 = swift_allocObject();
  v222 = v211;
  v223 = v221;
  *(v221 + 16) = v220;
  *(v221 + 24) = v219;
  v224 = *(v218 + 72);
  v225 = v222;

  v224(sub_10003B6A0, v223, v216, v218);

  v226 = v291;

  v303.receiver = v226;
  v303.super_class = v198;
  [(objc_class *)&v303 addDependency:v225];

  v289 = v225;
  v227 = swift_allocObject();
  v228 = v277;
  swift_unknownObjectWeakInit();
  v229 = (v226 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v230 = *(v226 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v231 = *(v226 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
  *v229 = sub_100182704;
  v229[1] = v227;

  sub_1000112B4(v230, v231);

  v281 = swift_getObjectType();
  v232 = swift_conformsToProtocol2();
  if (v232)
  {
    v233 = v232;
    v234 = swift_allocObject();
    *(v234 + 24) = v233;
    swift_unknownObjectWeakInit();
    v235 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v236 = swift_allocObject();
    *(v236 + 16) = v235;
    *(v236 + 24) = v234;
    v237 = *(v233 + 72);
    v238 = v226;
    v239 = v228;

    v237(sub_10003B6A0, v236, v281, v233);

    v302.receiver = v239;
    v302.super_class = v300;
    v301 = v238;
    [(objc_class *)&v302 addDependency:v238];

    v240 = v294;
    v241 = v296;
    v292(v294, v297, v296);
    v242 = (v288 + 32) & v283;
    v243 = swift_allocObject();
    v245 = v284;
    v244 = v285;
    *(v243 + 16) = v284;
    *(v243 + 24) = v244;
    (v282)(v243 + v242, v240, v241);
    v246 = (v239 + OBJC_IVAR____TtC8Podcasts13BaseOperation_onError);
    v247 = *(v239 + OBJC_IVAR____TtC8Podcasts13BaseOperation_onError);
    v248 = *(v239 + OBJC_IVAR____TtC8Podcasts13BaseOperation_onError + 8);
    *v246 = sub_100183690;
    v246[1] = v243;
    sub_100013CB4(v245, v244);
    sub_1000112B4(v247, v248);

    v299 = sub_10016E37C();
    sub_100168088(&unk_100574680, &qword_100401740);
    v249 = swift_allocObject();
    *(v249 + 16) = xmmword_1004007D0;
    v250 = v278;
    v251 = v279;
    *(v249 + 32) = v278;
    *(v249 + 40) = v251;
    v252 = v275;
    v253 = v276;
    v254 = v286;
    v255 = v287;
    *(v249 + 48) = v276;
    *(v249 + 56) = v255;
    *(v249 + 64) = v252;
    *(v249 + 72) = v254;
    v256 = v274;
    v258 = v289;
    v257 = v290;
    *(v249 + 80) = v274;
    *(v249 + 88) = v257;
    v259 = v301;
    *(v249 + 96) = v258;
    *(v249 + 104) = v259;
    *(v249 + 112) = v239;
    v295 = sub_100009F1C(0, &unk_10057A6A0, NSOperation_ptr);
    v300 = v250;
    v298 = v251;
    v297 = v253;
    v296 = v255;
    v260 = v252;
    v261 = v254;
    v262 = v256;
    v263 = v290;
    v264 = v301;
    v265 = v239;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v267 = v299;
    [v299 addOperations:isa waitUntilFinished:0];

    return;
  }

LABEL_24:
  __break(1u);
}

void sub_100177750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(type metadata accessor for DownloadJob(0) - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 privateQueueContext];

  sub_100182784(a4, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DownloadJob);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  sub_100182EF4(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for DownloadJob);
  v13 = (v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = a2;
  v13[1] = a3;
  aBlock[4] = sub_100183978;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E0E20;
  v14 = _Block_copy(aBlock);
  v15 = v10;

  [v15 performBlock:v14];
  _Block_release(v14);
}

uint64_t sub_100177964(void *a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v22[2] = a4;
  v23 = a3;
  v22[1] = sub_100168088(&unk_100581880, &qword_100400B98);
  __chkstk_darwin();
  v6 = v22 - v5;
  v22[0] = type metadata accessor for AssetLifetime();
  v7 = *(v22[0] - 8);
  __chkstk_darwin();
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NetworkTaskPriority();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100573658, &qword_100400BD0);
  __chkstk_darwin();
  v15 = v22 - v14;
  type metadata accessor for DownloadJob(0);
  v16 = String._bridgeToObjectiveC()();
  v17 = [a1 episodeForUuid:v16];

  if (v17)
  {
    (*(v11 + 104))(v13, enum case for NetworkTaskPriority.background(_:), v10);
    v18 = v22[0];
    (*(v7 + 104))(v9, enum case for AssetLifetime.opportunistic(_:), v22[0]);
    v19 = v17;
    MTEpisode.transcriptRequest(priority:lifetime:)();

    (*(v7 + 8))(v9, v18);
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v20 = type metadata accessor for TranscriptRequest();
    (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  }

  sub_100010430(v15, v6, &qword_100573658, &qword_100400BD0);
  swift_storeEnumTagMultiPayload();
  v23(v6);

  sub_100009104(v6, &unk_100581880, &qword_100400B98);
  return sub_100009104(v15, &qword_100573658, &qword_100400BD0);
}

uint64_t sub_100177CDC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  v14 = type metadata accessor for TimeBombedTranscriptProvider();
  v3 = *(v14 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100573658, &qword_100400BD0);
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = type metadata accessor for TranscriptRequest();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010430(a1, v7, &qword_100573658, &qword_100400BD0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = sub_100009104(v7, &qword_100573658, &qword_100400BD0);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    static TimeBombedTranscriptProvider.background.getter();
    TimeBombedTranscriptProvider.prefetch(request:)();

    (*(v3 + 8))(v5, v14);
    result = (*(v9 + 8))(v11, v8);
  }

  v13 = v15;
  *v15 = 0;
  *(v13 + 8) = 0;
  return result;
}

void sub_100177F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(type metadata accessor for DownloadJob(0) - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = objc_opt_self();

  v11 = [v10 sharedInstance];
  v12 = [v11 privateQueueContext];

  sub_100182784(a4, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DownloadJob);
  v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v14[2] = sub_10002DD38;
  v14[3] = v9;
  v14[4] = v12;
  sub_100182EF4(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for DownloadJob);
  aBlock[4] = sub_100183910;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E0DD0;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  [v16 performBlock:v15];
  _Block_release(v15);
}

uint64_t sub_100178174(uint64_t (*a1)(void *, void), uint64_t a2, void *a3)
{
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v47 = &v38 - v7;
  __chkstk_darwin();
  v9 = &v38 - v8;
  v10 = type metadata accessor for ArtworkModel();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v45 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v44 = &v38 - v13;
  __chkstk_darwin();
  v42 = &v38 - v14;
  __chkstk_darwin();
  v41 = &v38 - v15;
  __chkstk_darwin();
  v17 = &v38 - v16;
  __chkstk_darwin();
  v19 = &v38 - v18;
  type metadata accessor for DownloadJob(0);
  v20 = String._bridgeToObjectiveC()();
  v21 = [a3 episodeForUuid:v20];

  if (!v21)
  {
    return a1(_swiftEmptyArrayStorage, 0);
  }

  v40 = a2;
  MTEpisode.artworkModel.getter();
  v46 = *(v11 + 48);
  if (v46(v9, 1, v10) == 1)
  {
    sub_100009104(v9, &unk_100578C10, &qword_100400B60);
    v22 = _swiftEmptyArrayStorage;
  }

  else
  {
    v24 = v10;
    v39 = a1;
    sub_100182EF4(v9, v19, &type metadata accessor for ArtworkModel);
    sub_100182784(v19, v17, &type metadata accessor for ArtworkModel);
    v22 = sub_10024310C(0, 1, 1, _swiftEmptyArrayStorage);
    v26 = v22[2];
    v25 = v22[3];
    if (v26 >= v25 >> 1)
    {
      v22 = sub_10024310C((v25 > 1), v26 + 1, 1, v22);
    }

    sub_10018270C(v19, &type metadata accessor for ArtworkModel);
    v22[2] = v26 + 1;
    sub_100182EF4(v17, v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v26, &type metadata accessor for ArtworkModel);
    a1 = v39;
    v10 = v24;
  }

  v27 = [v21 podcast];
  v28 = v47;
  if (v27)
  {
    v29 = v27;
    MTEpisode.artworkModel.getter();
    if (v46(v28, 1, v10) == 1)
    {
      sub_100009104(v28, &unk_100578C10, &qword_100400B60);
      v30 = v43;
    }

    else
    {
      v32 = v41;
      sub_100182EF4(v28, v41, &type metadata accessor for ArtworkModel);
      sub_100182784(v32, v42, &type metadata accessor for ArtworkModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_10024310C(0, v22[2] + 1, 1, v22);
      }

      v30 = v43;
      v34 = v22[2];
      v33 = v22[3];
      if (v34 >= v33 >> 1)
      {
        v22 = sub_10024310C((v33 > 1), v34 + 1, 1, v22);
      }

      sub_10018270C(v41, &type metadata accessor for ArtworkModel);
      v22[2] = v34 + 1;
      sub_100182EF4(v42, v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v34, &type metadata accessor for ArtworkModel);
    }

    MTPodcast.uberBackgroundArtworkModel.getter();
    if (v46(v30, 1, v10) == 1)
    {

      sub_100009104(v30, &unk_100578C10, &qword_100400B60);
    }

    else
    {
      v35 = v44;
      sub_100182EF4(v30, v44, &type metadata accessor for ArtworkModel);
      sub_100182784(v35, v45, &type metadata accessor for ArtworkModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_10024310C(0, v22[2] + 1, 1, v22);
      }

      v37 = v22[2];
      v36 = v22[3];
      if (v37 >= v36 >> 1)
      {
        v22 = sub_10024310C((v36 > 1), v37 + 1, 1, v22);
      }

      sub_10018270C(v44, &type metadata accessor for ArtworkModel);
      v22[2] = v37 + 1;
      sub_100182EF4(v45, v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v37, &type metadata accessor for ArtworkModel);
    }

    v31 = v22;
  }

  else
  {

    v31 = v22;
  }

  a1(v31, 0);
}

uint64_t sub_100178824@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for Logger();
  v35 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArtworkRequest();
  v29 = *(v6 - 8);
  __chkstk_darwin();
  v32 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v26 - v8;
  v10 = *(type metadata accessor for ArtworkModel() - 8);
  __chkstk_darwin();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for LibraryImageProvider();
  v27 = *(v34 - 8);
  __chkstk_darwin();
  v14 = *a1;
  v33 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LibraryImageProvider.background.getter();
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);
    v30 = (v35 + 8);
    v31 = v17;
    ++v29;
    v37 = v9;
    do
    {
      v35 = v15;
      sub_100182784(v16, v12, &type metadata accessor for ArtworkModel);
      v18 = v32;
      ArtworkModel.preferredRequest.getter();
      sub_10018270C(v12, &type metadata accessor for ArtworkModel);
      static Logger.artwork.getter();
      static os_log_type_t.info.getter();
      SignpostAndLogTrace(domain:level:)();
      (*v30)(v5, v3);
      Traceable.traced(by:)();
      sub_100004590(v36);
      v19 = v5;
      v20 = v3;
      v21 = *v29;
      v22 = v18;
      v23 = v37;
      (*v29)(v22, v6);
      ImageProvider.prefetch(artwork:)();
      v21(v23, v6);
      v3 = v20;
      v5 = v19;
      v16 += v31;
      v15 = v35 - 1;
    }

    while (v35 != 1);
  }

  result = (*(v27 + 8))(v33, v34);
  v25 = v28;
  *v28 = 0;
  *(v25 + 8) = 0;
  return result;
}

void sub_100178BEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a6;
  v39 = a7;
  v36 = type metadata accessor for URL();
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = swift_allocObject();
  v37 = v15;
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = (a5 + *(type metadata accessor for DownloadJob(0) + 20));
  v17 = *v16;
  v34 = v16[1];
  v18 = v34;
  v35 = v17;

  static Date.timeIntervalSinceReferenceDate.getter();
  v20 = v19;
  v21 = *(v14 + 16);

  v23 = v21(v22);

  v24 = v36;
  (*(v11 + 16))(v13, v38, v36);
  v25 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v26 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v35;
  *(v28 + 2) = v23;
  *(v28 + 3) = v29;
  *(v28 + 4) = v18;
  (*(v11 + 32))(&v28[v25], v13, v24);
  *&v28[v26] = v20;
  v30 = &v28[v27];
  v31 = v37;
  *v30 = sub_100184690;
  *(v30 + 1) = v31;
  *&v28[(v27 + 23) & 0xFFFFFFFFFFFFFFF8] = v39;
  aBlock[4] = sub_100183860;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E0D58;
  v32 = _Block_copy(aBlock);
  v33 = v23;

  [v33 performBlock:v32];
  _Block_release(v32);
}

void sub_100178E94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v15 = *a1;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = (a5 + *(type metadata accessor for DownloadJob(0) + 20));
  v18 = *v17;
  v31 = v17[1];
  v32 = v18;
  (*(v13 + 16))(&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v12);
  v19 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v33;
  (*(v13 + 32))(v20 + v19, &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v21 = (v20 + ((v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_100184690;
  v21[1] = v16;
  v22 = *(v15 + 16);

  v24 = v22(v23);

  v25 = swift_allocObject();
  v27 = v31;
  v26 = v32;
  v25[2] = v24;
  v25[3] = v26;
  v25[4] = v27;
  v25[5] = sub_100183704;
  v25[6] = v20;
  aBlock[4] = sub_1001837F0;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E0CE0;
  v28 = _Block_copy(aBlock);
  v29 = v24;

  [v29 performBlock:v28];
  _Block_release(v28);
}

uint64_t sub_100179144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void), uint64_t a5)
{
  v32 = a5;
  v33 = a4;
  v29[1] = a2;
  v6 = type metadata accessor for Logger();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin();
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100573650, &qword_100400BC8);
  __chkstk_darwin();
  v14 = (v29 - v13);
  sub_100010430(a1, v29 - v13, &qword_100573650, &qword_100400BC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    static Logger.downloads.getter();
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v15;
      v35 = v19;
      *v18 = 136315138;
      swift_errorRetain();
      v20 = String.init<A>(describing:)();
      v22 = sub_1000153E0(v20, v21, &v35);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to fetch job asset URL for iPod library check: %s", v18, 0xCu);
      sub_100004590(v19);
    }

    else
    {
    }

    (*(v30 + 8))(v8, v31);
  }

  else
  {
    (*(v10 + 32))(v12, v14, v9);
    v23 = URL.path.getter();
    v25 = v24;
    v26 = URL.path.getter();
    sub_100179990(v23, v25, v26, v27);

    (*(v10 + 8))(v12, v9);
  }

  return v33(0, 0);
}

void sub_1001794BC(void (*a1)(char *)@<X1>, uint64_t a2@<X8>)
{
  sub_100168088(&qword_100573640, &qword_100400BB8);
  __chkstk_darwin();
  v5 = &v9 - v4;
  v6 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v7 = static OS_os_log.downloads.getter();
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "Download completed successfully", 31, 2, _swiftEmptyArrayStorage);

  v8 = [objc_opt_self() defaultCenter];
  [v8 postNotificationName:PFMediaDownloadDidCompleteNotification object:0];

  if (a1)
  {
    swift_storeEnumTagMultiPayload();
    a1(v5);
    sub_100009104(v5, &qword_100573640, &qword_100400BB8);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
}

uint64_t sub_100179640(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v22[0] = a4;
  v22[2] = a3;
  v22[1] = sub_100168088(&qword_100573640, &qword_100400BB8);
  __chkstk_darwin();
  v7 = v22 - v6;
  type metadata accessor for MoveOperationError(0);
  __chkstk_darwin();
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static os_log_type_t.error.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v11 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100400790;
  swift_getErrorValue();
  v13 = Error.localizedDescription.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100022C18();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "Finalize job failed with error %{public}s", 41, 2, v12);

  v22[3] = a1;
  swift_errorRetain();
  sub_100168088(&qword_100575C50, &unk_100402650);
  result = swift_dynamicCast();
  if (result)
  {
    result = sub_10018270C(v9, type metadata accessor for MoveOperationError);
    if (!a2)
    {
      return result;
    }

    v17 = *(sub_100168088(&qword_100573648, &qword_100400BC0) + 48);
    *v7 = a1;
    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 56))(&v7[v17], 1, 1, v18);
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v19 = *(sub_100168088(&qword_100573648, &qword_100400BC0) + 48);
    *v7 = a1;
    v20 = type metadata accessor for URL();
    v21 = *(v20 - 8);
    (*(v21 + 16))(&v7[v19], v22[0], v20);
    (*(v21 + 56))(&v7[v19], 0, 1, v20);
  }

  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  a2(v7);
  return sub_100009104(v7, &qword_100573640, &qword_100400BB8);
}

uint64_t sub_100179990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v6 = type metadata accessor for Date();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin();
  v39 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BugReportFrequency();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin();
  v42 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for BugReport.Domain();
  v36 = *(v38 - 8);
  __chkstk_darwin();
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for BugReport.ErrorKind();
  v11 = *(v35 - 8);
  __chkstk_darwin();
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PodcastsSystem();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[0] = a1;
  v48[1] = a2;
  strcpy(v49, "ipod-library");
  BYTE5(v49[1]) = 0;
  HIWORD(v49[1]) = -5120;
  sub_100183070();
  sub_1001830C4();
  result = BidirectionalCollection<>.starts<A>(with:)();
  if (result)
  {
    v19 = *(v45 + OBJC_IVAR____TtC8Podcasts11JobPipeline_analyticsChannel);
    type metadata accessor for AnalyticsEvent();
    swift_unknownObjectRetain();
    v33 = a2;
    v34 = a1;
    v20 = static AnalyticsEvent.downloadedFileHasiPodLibraryURL(discoveryPoint:path:source:)();
    [v19 sendEvent:v20];
    swift_unknownObjectRelease();

    (*(v15 + 104))(v17, enum case for PodcastsSystem.downloads(_:), v14);
    (*(v11 + 104))(v13, enum case for BugReport.ErrorKind.downloadediPodLibraryFile(_:), v35);
    (*(v36 + 104))(v37, enum case for BugReport.Domain.podcasts(_:), v38);
    v21 = objc_allocWithZone(type metadata accessor for BugReport());
    v22 = BugReport.init(domain:system:errorKind:forceSubmissionAttempt:)();
    sub_100004428(v45 + OBJC_IVAR____TtC8Podcasts11JobPipeline_bugReporter, v48);
    v45 = v48[4];
    sub_1000044A0(v48, v48[3]);
    v24 = v42;
    v23 = v43;
    v25 = v44;
    (*(v43 + 104))(v42, enum case for BugReportFrequency.daily(_:), v44);
    sub_100168088(&qword_100573618, &qword_100400B78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007E0;
    v49[0] = 0x6E696769724FLL;
    v49[1] = 0xE600000000000000;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    v27 = v33;
    *(inited + 72) = v34;
    *(inited + 80) = v27;
    strcpy(v49, "Destination");
    HIDWORD(v49[1]) = -352321536;

    AnyHashable.init<A>(_:)();
    *(inited + 168) = &type metadata for String;
    v28 = v47;
    *(inited + 144) = v46;
    *(inited + 152) = v28;
    v49[0] = 1701669204;
    v49[1] = 0xE400000000000000;

    AnyHashable.init<A>(_:)();
    v29 = v39;
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v31 = v30;
    (*(v40 + 8))(v29, v41);
    v32 = [objc_allocWithZone(NSNumber) initWithDouble:v31];
    *(inited + 240) = sub_100009F1C(0, &qword_1005742A0, NSNumber_ptr);
    *(inited + 216) = v32;
    sub_10016A0DC(inited);
    swift_setDeallocating();
    sub_100168088(&qword_100578590, &qword_100400B80);
    swift_arrayDestroy();
    dispatch thunk of BugReporter.submit(bugReport:maximumFrequency:userInfo:)();

    (*(v23 + 8))(v24, v25);
    return sub_100004590(v48);
  }

  return result;
}

uint64_t sub_100179FD8@<X0>(char *a1@<X0>, uint64_t a2@<X2>, void (*a3)(uint64_t *)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v49 = a6;
  v50 = a5;
  v54 = a4;
  v55 = a2;
  v56 = a3;
  v59 = a7;
  v51 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v48 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100168088(&qword_100573678, &qword_100400BE8);
  __chkstk_darwin();
  v53 = (&v46 - v13);
  sub_100168088(&qword_100573680, &unk_100400BF0);
  __chkstk_darwin();
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v46 - v16;
  if (URL.isPackagedMedia()())
  {
    v18 = type metadata accessor for ValidateOperation.Result(0);
    (*(v10 + 16))(v17, &a1[*(v18 + 20)], v9);
    URL.lastPathComponent.getter();
    URL.appendingPathComponent(_:)();

    v19 = v56;
    if (v56)
    {
      v20 = v53;
      sub_100010430(v17, v53, &qword_100573680, &unk_100400BF0);
      swift_storeEnumTagMultiPayload();
      v19(v20);
      sub_100009104(v20, &qword_100573678, &qword_100400BE8);
    }

    v21 = v17;
LABEL_16:
    result = sub_100009104(v21, &qword_100573680, &unk_100400BF0);
    goto LABEL_17;
  }

  v47 = v9;
  v22 = *(a1 + 1);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = &a1[*(type metadata accessor for ValidateOperation.Result(0) + 20)];
    v25 = v47;
    (*(v10 + 16))(v15, v24, v47);
    URL.appendingPathComponent(_:)();
    URL.appendingPathExtension(_:)();
    (*(v10 + 8))(v12, v25);
    v26 = v56;
    if (v56)
    {
      v27 = v53;
      sub_100010430(v15, v53, &qword_100573680, &unk_100400BF0);
      swift_storeEnumTagMultiPayload();
      v26(v27);
      sub_100009104(v27, &qword_100573678, &qword_100400BE8);
    }

    v21 = v15;
    goto LABEL_16;
  }

  v28 = static os_log_type_t.error.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v29 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100400790;
  v31 = *(v49 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  v32 = v48;
  v33 = v51;
  OS_dispatch_queue.sync<A>(execute:)();

  v34 = (v32 + *(v33 + 20));
  v36 = *v34;
  v35 = v34[1];

  sub_10018270C(v32, type metadata accessor for DownloadJob);
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = sub_100022C18();
  *(v30 + 32) = v36;
  *(v30 + 40) = v35;
  os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v29, "No file extension in episode url, episode uuid: %{public}s. Downloaded file most likely will not be playable.", 109, 2, v30);

  v38 = v56;
  if (v56)
  {
    v57 = 0;
    v58 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v57 = 0xD000000000000021;
    v58 = 0x8000000100465710;
    type metadata accessor for EpisodeMetadata(0);
    sub_100182DE8(&qword_100573688, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v39._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v39);

    v40 = v57;
    v41 = v58;
    sub_100183BAC();
    v42 = swift_allocError();
    *v43 = v40;
    v43[1] = v41;
    v44 = v53;
    *v53 = v42;
    swift_storeEnumTagMultiPayload();
    v38(v44);
    result = sub_100009104(v44, &qword_100573678, &qword_100400BE8);
  }

LABEL_17:
  v45 = v59;
  *v59 = 0;
  *(v45 + 8) = 0;
  return result;
}

uint64_t sub_10017A630(uint64_t a1, void (*a2)(void *))
{
  sub_100168088(&qword_100573678, &qword_100400BE8);
  __chkstk_darwin();
  v5 = (&v13 - v4);
  v6 = static os_log_type_t.error.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v7 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100400790;
  swift_getErrorValue();
  v9 = Error.localizedDescription.getter();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100022C18();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "Validation failed with error %{public}s", 39, 2, v8);

  if (a2)
  {
    *v5 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v5);
    return sub_100009104(v5, &qword_100573678, &qword_100400BE8);
  }

  return result;
}

id sub_10017A7E8(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v126 = a4;
  v124 = *(sub_100168088(&qword_100578010, &qword_100401F60) - 8);
  v123 = *(v124 + 8);
  __chkstk_darwin();
  v121 = v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v120 = v118 - v9;
  v11 = *(v4 + OBJC_IVAR____TtC8Podcasts11JobPipeline_episodeStorage);
  v119 = *(v4 + OBJC_IVAR____TtC8Podcasts11JobPipeline_episodeStorage + 8);
  v10 = v119;
  v127 = sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  swift_unknownObjectRetain();
  v12 = static OS_os_log.downloads.getter();
  v13 = swift_allocObject();
  *(v13 + 2) = a3;
  *(v13 + 3) = a1;
  *(v13 + 4) = a2;
  v14 = sub_100168088(&qword_1005735B8, &qword_100400AF0);
  v15 = objc_allocWithZone(v14);
  v16 = &v15[*((swift_isaMask & *v15) + 0x198)];
  *v16 = 0;
  v16[8] = 2;
  v17 = &v15[*((swift_isaMask & *v15) + 0x1A8)];
  *v17 = sub_100182A40;
  v17[1] = v13;
  v18 = &v15[*((swift_isaMask & *v15) + 0x1A0)];
  *v18 = v11;
  *(v18 + 1) = v10;
  *&v15[*((swift_isaMask & *v15) + 0x1B0)] = v12;
  v137.receiver = v15;
  v137.super_class = v14;
  swift_unknownObjectRetain();
  v19 = a3;

  ObjectType = objc_msgSendSuper2(&v137, "init");
  sub_100004428(v126, v136);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  sub_1000109E4(v136, v20 + 32);
  v21 = sub_100168088(&qword_1005735C0, &qword_100400AF8);
  v22 = objc_allocWithZone(v21);
  v23 = &v22[*((swift_isaMask & *v22) + 0x180)];
  *v23 = 0;
  v23[8] = 2;
  v24 = &v22[*((swift_isaMask & *v22) + 0x188)];
  *v24 = sub_100182A4C;
  v24[1] = v20;
  v135.receiver = v22;
  v135.super_class = v21;

  v122 = objc_msgSendSuper2(&v135, "init");
  v25 = static OS_os_log.downloads.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  v27 = sub_100168088(&qword_1005735C8, &unk_100400B00);
  v28 = objc_allocWithZone(v27);
  v118[1] = sub_100168088(&qword_1005735D0, &qword_10040F6F0);
  swift_storeEnumTagMultiPayload();
  v29 = (v28 + *((swift_isaMask & *v28) + 0x1A8));
  *v29 = sub_100182A58;
  v29[1] = v26;
  v30 = (v28 + *((swift_isaMask & *v28) + 0x1A0));
  v31 = v119;
  *v30 = v11;
  v30[1] = v31;
  *(v28 + *((swift_isaMask & *v28) + 0x1B0)) = v25;
  v134.receiver = v28;
  v134.super_class = v27;

  v119 = objc_msgSendSuper2(&v134, "init");
  v32 = v120;
  static TaskPriority.utility.getter();
  v33 = type metadata accessor for TaskPriority();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  v34 = swift_allocObject();
  v118[0] = a1;
  *(v34 + 16) = a1;
  *(v34 + 24) = a2;
  v35 = v121;
  sub_100010430(v32, v121, &qword_100578010, &qword_100401F60);
  v36 = (v124[80] + 16) & ~v124[80];
  v37 = &v123[v36 + 7] & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  sub_100010498(v35, v38 + v36, &qword_100578010, &qword_100401F60);
  v39 = (v38 + v37);
  *v39 = &unk_100400B18;
  v39[1] = v34;
  v40 = sub_100168088(&qword_1005735D8, &qword_100400B20);
  v41 = objc_allocWithZone(v40);
  swift_storeEnumTagMultiPayload();
  v42 = (v41 + *((swift_isaMask & *v41) + 0x188));
  *v42 = sub_100182B14;
  v42[1] = v38;
  v133.receiver = v41;
  v133.super_class = v40;
  v121 = a2;

  v43 = objc_msgSendSuper2(&v133, "init");
  sub_100009104(v32, &qword_100578010, &qword_100401F60);
  sub_100004428(v126, v136);
  v44 = swift_allocObject();
  sub_1000109E4(v136, v44 + 16);
  v45 = sub_100168088(&qword_1005735E0, &qword_100400B28);
  v46 = objc_allocWithZone(v45);
  sub_100168088(&unk_100581860, &qword_100400B30);
  swift_storeEnumTagMultiPayload();
  v47 = (v46 + *((swift_isaMask & *v46) + 0x188));
  *v47 = sub_100182BD8;
  v47[1] = v44;
  v132.receiver = v46;
  v132.super_class = v45;
  v48 = objc_msgSendSuper2(&v132, "init");
  sub_100168088(&unk_100574680, &qword_100401740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007F0;
  v50 = ObjectType;
  *(inited + 32) = ObjectType;
  v51 = v122;
  v52 = v119;
  *(inited + 40) = v122;
  *(inited + 48) = v52;
  *(inited + 56) = v43;
  *(inited + 64) = v48;
  v123 = v48;
  v53 = v50;
  v54 = v51;
  v126 = v52;
  v124 = v43;
  v55 = static OS_os_log.downloads.getter();
  v56 = objc_allocWithZone(type metadata accessor for GroupOperation());
  v122 = sub_100394FF8(inited, 1, v55);
  swift_setDeallocating();
  swift_arrayDestroy();
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v58 = (v53 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v59 = *(v53 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v60 = *(v53 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
  *v58 = sub_100182BE0;
  v58[1] = v57;

  sub_1000112B4(v59, v60);

  ObjectType = swift_getObjectType();
  v127 = &protocol descriptor for PodcastsOperation;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v62 = result;
  v63 = swift_allocObject();
  *(v63 + 24) = v62;
  swift_unknownObjectWeakInit();
  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = swift_allocObject();
  *(v65 + 16) = v64;
  *(v65 + 24) = v63;
  v66 = v54;
  v67 = *(v62 + 72);
  v68 = v53;

  v67(sub_10003B6A0, v65, ObjectType, v62);
  v69 = v66;

  v70 = type metadata accessor for BaseOperation();
  v131.receiver = v66;
  v131.super_class = v70;
  ObjectType = v70;
  objc_msgSendSuper2(&v131, "addDependency:", v68);

  v120 = v68;
  v71 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v72 = &v66[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v73 = *&v66[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v74 = v72[1];
  *v72 = sub_100182BE8;
  v72[1] = v71;

  sub_1000112B4(v73, v74);

  v75 = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v76 = result;
  v77 = swift_allocObject();
  *(v77 + 24) = v76;
  swift_unknownObjectWeakInit();
  v78 = swift_allocObject();
  v79 = v69;
  v80 = v126;
  swift_unknownObjectWeakInit();
  v81 = swift_allocObject();
  *(v81 + 16) = v78;
  *(v81 + 24) = v77;
  v82 = *(v76 + 72);
  v83 = v79;

  v82(sub_10003B6A0, v81, v75, v76);

  v130.receiver = v80;
  v130.super_class = ObjectType;
  objc_msgSendSuper2(&v130, "addDependency:", v83);

  v119 = v83;
  v84 = swift_allocObject();
  v85 = v124;
  swift_unknownObjectWeakInit();
  v86 = &v80[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v87 = *&v80[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v88 = *&v80[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
  *v86 = sub_100182BF0;
  v86[1] = v84;

  sub_1000112B4(v87, v88);

  v89 = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v90 = result;
  v91 = swift_allocObject();
  *(v91 + 24) = v90;
  v92 = v126;
  swift_unknownObjectWeakInit();
  v93 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v94 = swift_allocObject();
  *(v94 + 16) = v93;
  *(v94 + 24) = v91;
  v95 = *(v90 + 72);
  v96 = v92;

  v95(sub_10003B6A0, v94, v89, v90);

  v129.receiver = v85;
  v129.super_class = ObjectType;
  objc_msgSendSuper2(&v129, "addDependency:", v96);

  v126 = v96;
  v97 = swift_allocObject();
  v98 = v123;
  swift_unknownObjectWeakInit();
  v99 = &v85[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v100 = *&v85[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v101 = *&v85[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
  *v99 = sub_100182BF8;
  v99[1] = v97;

  sub_1000112B4(v100, v101);

  v102 = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v103 = result;
    v104 = swift_allocObject();
    *(v104 + 24) = v103;
    swift_unknownObjectWeakInit();
    v105 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v106 = swift_allocObject();
    *(v106 + 16) = v105;
    *(v106 + 24) = v104;
    v107 = v85;
    v108 = v98;
    v109 = *(v103 + 72);
    v110 = v107;

    v109(sub_10003B6A0, v106, v102, v103);

    v128.receiver = v98;
    v128.super_class = ObjectType;
    objc_msgSendSuper2(&v128, "addDependency:", v110);

    v111 = swift_allocObject();
    v112 = v121;
    v113 = v122;
    *(v111 + 2) = v118[0];
    *(v111 + 3) = v112;
    *(v111 + 4) = v113;
    v114 = &v108[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    v115 = *&v108[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    v116 = *&v108[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError + 8];
    *v114 = sub_100182C00;
    v114[1] = v111;

    v117 = v113;
    sub_1000112B4(v115, v116);

    return v117;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_10017B67C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  if (!a5)
  {
    v14 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v15 = static OS_os_log.downloads.getter();
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Fetching Media Library item by episode uuids, no active dsid provided.", 70, 2, _swiftEmptyArrayStorage);
  }

  v16 = *(v12 + 16);

  v18 = v16(v17);

  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a6;
  v19[4] = a7;
  v19[5] = a5;
  v19[6] = sub_100183054;
  v19[7] = v13;
  v23[4] = sub_100183058;
  v23[5] = v19;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_10000F038;
  v23[3] = &unk_1004E0830;
  v20 = _Block_copy(v23);
  v21 = a5;

  v22 = v18;

  [v22 performBlock:v20];
  _Block_release(v20);
}

uint64_t sub_10017B85C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v11 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v12 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1000153E0(a4, a5, &v17);
    _os_log_impl(&_mh_execute_header, v12, v11, "Add episode to media library. EpisodeUUID %s", v13, 0xCu);
    sub_100004590(v14);
  }

  sub_1000044A0(a6, a6[3]);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;

  dispatch thunk of MediaLibraryClientProtocol.addEpisode(_:completion:)();
}

uint64_t sub_10017B9F8(uint64_t a1, void (*a2)(char *))
{
  sub_100168088(&qword_100573600, &qword_100400B70);
  __chkstk_darwin();
  v5 = &v9 - v4;
  sub_100168088(&qword_1005735D0, &qword_10040F6F0);
  __chkstk_darwin();
  v7 = &v9 - v6;
  sub_100010430(a1, v5, &qword_100573600, &qword_100400B70);
  sub_10017BB28(v5, v7);
  a2(v7);
  return sub_100009104(v7, &qword_1005735D0, &qword_10040F6F0);
}

uint64_t sub_10017BB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100168088(&qword_1005735D0, &qword_10040F6F0);
  __chkstk_darwin();
  v5 = (v14 - v4);
  sub_100168088(&qword_100573600, &qword_100400B70);
  __chkstk_darwin();
  v7 = (v14 - v6);
  sub_100010430(a1, v14 - v6, &qword_100573600, &qword_100400B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    v14[1] = v8;
    swift_errorRetain();
    sub_100168088(&qword_100575C50, &unk_100402650);
    v9 = _getErrorEmbeddedNSError<A>(_:)();
    if (v9)
    {
      v10 = v9;

      sub_100009104(a1, &qword_100573600, &qword_100400B70);
    }

    else
    {
      v10 = swift_allocError();
      *v13 = v8;

      sub_100009104(a1, &qword_100573600, &qword_100400B70);
    }

    *v5 = v10;
    swift_storeEnumTagMultiPayload();
    return sub_100010498(v5, a2, &qword_1005735D0, &qword_10040F6F0);
  }

  else
  {
    sub_100009104(a1, &qword_100573600, &qword_100400B70);
    v11 = type metadata accessor for MediaLibraryPid();
    (*(*(v11 - 8) + 32))(a2, v7, v11);
    return swift_storeEnumTagMultiPayload();
  }
}

void sub_10017BD8C(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v45 = a5;
  v46 = a6;
  v42 = a3;
  v9 = type metadata accessor for MediaLibraryPid();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v44 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = &v36 - v12;
  v43 = v13;
  __chkstk_darwin();
  v15 = &v36 - v14;
  v40 = *a1;
  v16 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v17 = static OS_os_log.downloads.getter();
  v18 = a2;
  v47 = *(v10 + 16);
  v39 = v10 + 16;
  v47(v15, a2, v9);
  if (os_log_type_enabled(v17, v16))
  {
    v19 = swift_slowAlloc();
    v37 = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 134218242;
    v22 = MediaLibraryPid.value.getter();
    (*(v10 + 8))(v15, v9);
    *(v20 + 4) = v22;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1000153E0(v45, v46, aBlock);
    _os_log_impl(&_mh_execute_header, v17, v16, "Update episode with media library persistent id %lld. EpisodeUUID %s.", v20, 0x16u);
    sub_100004590(v21);

    a4 = v37;
  }

  else
  {
    (*(v10 + 8))(v15, v9);
  }

  v23 = v41;
  v38 = v18;
  v47(v41, v18, v9);
  v24 = *(v10 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v42;
  *(v25 + 24) = a4;
  v42 = *(v10 + 32);
  v42(v25 + ((v24 + 32) & ~v24), v23, v9);
  v26 = *(v40 + 16);

  v28 = v26(v27);

  v29 = v44;
  v47(v44, v38, v9);
  v30 = (v24 + 56) & ~v24;
  v31 = swift_allocObject();
  v32 = v45;
  v33 = v46;
  v31[2] = v28;
  v31[3] = v32;
  v31[4] = v33;
  v31[5] = sub_100182F5C;
  v31[6] = v25;
  v42(v31 + v30, v29, v9);
  aBlock[4] = sub_100182FE0;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E0790;
  v34 = _Block_copy(aBlock);

  v35 = v28;

  [v35 performBlock:v34];
  _Block_release(v34);
}

uint64_t sub_10017C1D4(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  sub_100168088(&qword_1005735F8, &qword_100400B68);
  __chkstk_darwin();
  v10 = (&v13 - v9);
  if (a2)
  {
    *v10 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
  }

  else
  {
    v11 = type metadata accessor for MediaLibraryPid();
    (*(*(v11 - 8) + 16))(v10, a5, v11);
    swift_storeEnumTagMultiPayload();
  }

  a3(v10);
  return sub_100009104(v10, &qword_1005735F8, &qword_100400B68);
}

uint64_t sub_10017C308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  v4[6] = swift_task_alloc();
  type metadata accessor for NetworkTaskPriority();
  v4[7] = swift_task_alloc();
  sub_100168088(&unk_100582DE0, &qword_100406530);
  v4[8] = swift_task_alloc();
  v5 = type metadata accessor for ArtworkRequest();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for ArtworkModel();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = sub_100168088(&unk_100578C10, &qword_100400B60);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v8 = type metadata accessor for CachingImageContentProvider();
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_10017C5D0, 0, 0);
}

uint64_t sub_10017C5D0()
{
  static CachingImageContentProvider.shared.getter();
  sub_100009F1C(0, &qword_1005735F0, MTDB_ptr);
  v1 = static MTDB.shared.getter();
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v1;
  v8 = [v1 privateQueueContext];
  v0[25] = v8;

  v0[26] = kMTPreferredArtworkSize;
  v9 = swift_allocObject();
  v0[27] = v9;
  v9[2] = v8;
  v9[3] = v6;
  v9[4] = v5;
  (*(v3 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);
  v8;

  v10 = swift_task_alloc();
  v0[28] = v10;
  *v10 = v0;
  v10[1] = sub_10017C840;
  v11 = v0[21];
  v12 = v0[18];
  v13 = v0[19];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v11, v12, sub_100182ED4, v9, v13);
}

uint64_t sub_10017C840()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = v2[18];
  v4 = v2[17];
  v5 = v2[16];
  if (v0)
  {
    (*(v4 + 8))(v2[18], v2[16]);

    v6 = sub_10017D0C4;
  }

  else
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_10017C9F4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10017C9F4()
{
  v1 = v0[20];
  v2 = v0[12];
  v3 = v0[13];
  sub_100010430(v0[21], v1, &unk_100578C10, &qword_100400B60);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[24];
    v5 = v0[25];
    v6 = v0[22];
    v7 = v0[23];
    v8 = v0[21];
    sub_100009104(v0[20], &unk_100578C10, &qword_100400B60);
    CachingImageContentProvider.placeholderURL(for:generatePlaceholder:)();

    sub_100009104(v8, &unk_100578C10, &qword_100400B60);
    (*(v7 + 8))(v4, v6);
    v9 = *(sub_100168088(&qword_1005735E8, &qword_100400B38) + 48);
    v10 = v0[2];
    v11 = v0[3];
    v12 = type metadata accessor for MediaLibraryPid();
    (*(*(v12 - 8) + 16))(v10 + v9, v11, v12);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[14];
    v16 = v0[15];
    v17 = v0[8];
    sub_100182EF4(v0[20], v16, &type metadata accessor for ArtworkModel);
    sub_100182784(v16, v15, &type metadata accessor for ArtworkModel);
    v18 = type metadata accessor for CropCode();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    static NetworkTaskPriority.dispatchQueuePriority()();
    ArtworkRequest.init(model:targetSize:displayScale:retainAspectRatio:cropCodeOverride:destination:effects:priority:trace:)();
    v19 = swift_task_alloc();
    v0[30] = v19;
    *v19 = v0;
    v19[1] = sub_10017CD7C;
    v20 = v0[22];
    v21 = v0[11];
    v22 = v0[6];

    return ImageContentProvider.url(for:)(v22, v21, v20, &protocol witness table for CachingImageContentProvider);
  }
}

uint64_t sub_10017CD7C()
{

  if (v0)
  {

    v1 = sub_10017D1D4;
  }

  else
  {
    v1 = sub_10017CE94;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10017CE94()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(v0 + 120);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = *(v0 + 72);
  v9 = *(v0 + 48);
  v17 = *(v0 + 16);

  (*(v6 + 8))(v7, v8);
  sub_10018270C(v5, &type metadata accessor for ArtworkModel);
  sub_100009104(v4, &unk_100578C10, &qword_100400B60);
  (*(v3 + 8))(v1, v2);
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = *(sub_100168088(&qword_1005735E8, &qword_100400B38) + 48);
  sub_100010498(v9, v17, &qword_100574040, &unk_100400AD0);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = type metadata accessor for MediaLibraryPid();
  (*(*(v14 - 8) + 16))(v12 + v11, v13, v14);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10017D0C4()
{
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017D1D4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(v0 + 120);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = *(v0 + 72);
  v9 = *(v0 + 48);
  v17 = *(v0 + 16);

  (*(v6 + 8))(v7, v8);
  sub_10018270C(v5, &type metadata accessor for ArtworkModel);
  sub_100009104(v4, &unk_100578C10, &qword_100400B60);
  (*(v3 + 8))(v1, v2);
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = *(sub_100168088(&qword_1005735E8, &qword_100400B38) + 48);
  sub_100010498(v9, v17, &qword_100574040, &unk_100400AD0);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = type metadata accessor for MediaLibraryPid();
  (*(*(v14 - 8) + 16))(v12 + v11, v13, v14);

  v15 = *(v0 + 8);

  return v15();
}

void sub_10017D404(uint64_t a3@<X8>)
{
  v5 = NSManagedObjectContext.episode(for:)();
  if (!v3)
  {
    if (v5 && (v6 = v5, v7 = [v5 podcast], v6, v7))
    {
      MTPodcast.artworkModel.getter();
    }

    else
    {
      v8 = type metadata accessor for ArtworkModel();
      (*(*(v8 - 8) + 56))(a3, 1, 1, v8);
    }
  }
}

uint64_t sub_10017D4C4(double a1)
{
  v1 = [objc_opt_self() defaultPodcastArtworkWithWidth:a1];
  if (static ArtworkFormat.heicEncodingSupported()())
  {
    if (v1)
    {
      v2 = UIImageHEICRepresentation(v1);
      if (v2)
      {
LABEL_4:
        v3 = v2;
        v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

        return v4;
      }

      goto LABEL_7;
    }
  }

  else if (v1)
  {
    v2 = UIImagePNGRepresentation(v1);
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
  }

  return 0;
}

uint64_t sub_10017D584(char *a1, void (*a2)(uint64_t *), uint64_t a3, void *a4)
{
  v33 = a4;
  v42 = a1;
  v6 = type metadata accessor for URL();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin();
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100168088(&qword_1005735E8, &qword_100400B38) - 8;
  __chkstk_darwin();
  v10 = &v33 - v9;
  v11 = type metadata accessor for MediaLibraryPid();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v33 - v17;
  v19 = swift_allocObject();
  v34 = a2;
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v38 = a3;
  v36 = v19;
  sub_100010430(v42, v10, &qword_1005735E8, &qword_100400B38);
  v20 = *(v8 + 56);
  v21 = v39;
  sub_100010498(v10, v18, &qword_100574040, &unk_100400AD0);
  v37 = v12;
  v22 = *(v12 + 32);
  v23 = v11;
  v24 = v40;
  v41 = v23;
  v22(v14, &v10[v20]);
  v42 = v18;
  sub_100010430(v18, v16, &qword_100574040, &unk_100400AD0);
  if ((*(v21 + 48))(v16, 1, v24) == 1)
  {

    sub_100009104(v16, &qword_100574040, &unk_100400AD0);
    v25 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v26 = static OS_os_log.downloads.getter();
    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v26, "Media Library might be missing both artwork and placeholder for the episode.", 76, 2, _swiftEmptyArrayStorage, v33);

    v43 = 0;
    v44 = 0;
    v34(&v43);
  }

  else
  {
    v27 = v35;
    (*(v21 + 32))(v35, v16, v24);

    v28 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v29 = static OS_os_log.downloads.getter();
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v29, "Update media library episode with artwork.", 42, 2, _swiftEmptyArrayStorage);

    sub_1000044A0(v33, v33[3]);
    v30 = swift_allocObject();
    v31 = v36;
    *(v30 + 16) = sub_10002DD30;
    *(v30 + 24) = v31;
    dispatch thunk of MediaLibraryClientProtocol.addArtwork(withFileUrl:toEpisodeWithPersistentId:completion:)();

    (*(v21 + 8))(v27, v24);
  }

  (*(v37 + 8))(v14, v41);
  return sub_100009104(v42, &qword_100574040, &unk_100400AD0);
}

uint64_t sub_10017DA7C(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    sub_100168088(&qword_100575C50, &unk_100402650);
    v5 = _getErrorEmbeddedNSError<A>(_:)();
    if (v5)
    {
      v6 = v5;
      sub_100182C18(a1, 1);
    }

    else
    {
      v6 = swift_allocError();
      *v8 = a1;
    }

    v7 = 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  a3(v6, v7);
  return sub_10003163C(v6, v7);
}

uint64_t sub_10017DB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = static os_log_type_t.error.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v8 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004007C0;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_100022C18();
  *(v9 + 64) = v10;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  swift_getErrorValue();

  v11 = Error.localizedDescription.getter();
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v10;
  *(v9 + 72) = v11;
  *(v9 + 80) = v12;
  os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v8, "Failed to update media library for episode %@, error: %{public}s", 64, 2, v9);

  v13 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  v14 = *(a4 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock);
  swift_errorRetain();
  [v14 lock];
  *(a4 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error) = a1;
  swift_errorRetain();

  [*(a4 + v13) unlock];
}

void sub_10017DCE8(uint64_t a1, void *a2, int a3, ProtocolDescriptor *a4)
{
  v194 = a4;
  v184 = *(sub_100168088(&qword_100574040, &unk_100400AD0) - 8);
  __chkstk_darwin();
  v186 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v7;
  __chkstk_darwin();
  v179 = &v175 - v8;
  v182 = type metadata accessor for URL();
  v181 = *(v182 - 8);
  __chkstk_darwin();
  v175 = &v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v180 = &v175 - v10;
  v176 = type metadata accessor for UUID();
  v11 = *(v176 - 8);
  __chkstk_darwin();
  v13 = &v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v193 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v191 = &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574760, &unk_1003FEB60);
  __chkstk_darwin();
  v16 = &v175 - v15;
  v17 = static os_log_type_t.error.getter();
  v190 = sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v18 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100400790;
  v187 = a1;
  v205 = a1;
  v206 = a2;
  v188 = a2;
  LODWORD(v189) = a3;
  v207 = a3;
  sub_100182864();
  v20 = Error.localizedDescription.getter();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100022C18();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Download failed with error: %s", v175);

  v23 = v192;

  v24 = v23 + OBJC_IVAR____TtC8Podcasts11JobPipeline_metadata;
  v25 = type metadata accessor for EpisodeMetadata(0);
  sub_100010430(v24 + *(v25 + 60), v16, &qword_100574760, &unk_1003FEB60);
  v26 = type metadata accessor for Date();
  LODWORD(v24) = (*(*(v26 - 8) + 48))(v16, 1, v26);
  sub_100009104(v16, &qword_100574760, &unk_1003FEB60);
  if (v24 != 1)
  {
    v27 = *(v23 + OBJC_IVAR____TtC8Podcasts11JobPipeline_analyticsChannel);
    type metadata accessor for AnalyticsEvent();
    swift_unknownObjectRetain();
    v28 = AnalyticsEvent.__allocating_init(cacheDeletedFilesRestored:failed:)();
    [v27 sendEvent:v28];
    swift_unknownObjectRelease();
  }

  v178 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v29 = *(v23 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  v30 = v191;
  OS_dispatch_queue.sync<A>(execute:)();
  v177 = 0;

  v31 = v176;
  (*(v11 + 16))(v13, v30, v176);
  sub_10018270C(v30, type metadata accessor for DownloadJob);
  v183 = sub_100181388(v13, 0);
  (*(v11 + 8))(v13, v31);
  v32 = v179;
  sub_100010430(v194, v179, &qword_100574040, &unk_100400AD0);
  v33 = v181;
  v34 = v182;
  v35 = &selRef_handleNotification_;
  if ((*(v181 + 48))(v32, 1, v182) == 1)
  {
    sub_100009104(v32, &qword_100574040, &unk_100400AD0);
    v36 = static OS_os_log.default.getter();
    v37 = objc_allocWithZone(type metadata accessor for GroupOperation());
    v38 = sub_100394FF8(_swiftEmptyArrayStorage, 0, v36);
  }

  else
  {
    v39 = v180;
    (*(v33 + 32))(v180, v32, v34);
    sub_100168088(&unk_100574680, &qword_100401740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007B0;
    v41 = *(v33 + 16);
    v42 = v175;
    v41(v175, v39, v34);
    v43 = static OS_os_log.downloads.getter();
    v44 = type metadata accessor for DeleteFileOperation(0);
    v45 = objc_allocWithZone(v44);
    v46 = &v45[OBJC_IVAR____TtC8Podcasts19DeleteFileOperation_input];
    *v46 = 0;
    v46[8] = 2;
    *&v45[OBJC_IVAR____TtC8Podcasts19DeleteFileOperation_log] = v43;
    v41(&v45[OBJC_IVAR____TtC8Podcasts19DeleteFileOperation_file], v42, v34);
    v35 = &selRef_handleNotification_;
    v45[OBJC_IVAR____TtC8Podcasts19DeleteFileOperation_proceedOnFailure] = 1;
    v195.receiver = v45;
    v195.super_class = v44;
    v47 = objc_msgSendSuper2(&v195, "init");
    v48 = *(v33 + 8);
    v48(v42, v34);
    *(inited + 32) = v47;
    v49 = static OS_os_log.downloads.getter();
    v50 = objc_allocWithZone(type metadata accessor for GroupOperation());
    v38 = sub_100394FF8(inited, 1, v49);
    swift_setDeallocating();
    swift_arrayDestroy();
    v48(v180, v34);
  }

  v51 = v192;
  v52 = *(v192 + v178);
  v190 = v38;
  v53 = v52;
  v54 = v191;
  v55 = v193;
  OS_dispatch_queue.sync<A>(execute:)();

  v56 = &v54[*(v55 + 20)];
  v58 = *v56;
  v57 = *(v56 + 1);

  sub_10018270C(v54, type metadata accessor for DownloadJob);
  v59 = OBJC_IVAR____TtC8Podcasts11JobPipeline_episodeStorage;
  v60 = swift_allocObject();
  *(v60 + 16) = v58;
  *(v60 + 24) = v57;
  v193 = *(v51 + v59);
  swift_unknownObjectRetain();
  v61 = static OS_os_log.downloads.getter();
  v62 = sub_100168088(&qword_1005735B0, &unk_100400AE0);
  v63 = objc_allocWithZone(v62);
  v64 = &v63[*((swift_isaMask & *v63) + 0x198)];
  *v64 = 0;
  v64[8] = 2;
  v65 = &v63[*((swift_isaMask & *v63) + 0x1A8)];
  *v65 = sub_1001828B8;
  v65[1] = v60;
  *&v63[*((swift_isaMask & *v63) + 0x1A0)] = v193;
  *&v63[*((swift_isaMask & *v63) + 0x1B0)] = v61;
  v204.receiver = v63;
  v204.super_class = v62;
  v182 = objc_msgSendSuper2(&v204, v35[168]);
  v66 = swift_allocObject();
  swift_weakInit();
  v67 = v186;
  sub_100010430(v194, v186, &qword_100574040, &unk_100400AD0);
  v68 = v35;
  v69 = (*(v184 + 80) + 16) & ~*(v184 + 80);
  v70 = (v185 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  sub_100010498(v67, v71 + v69, &qword_100574040, &unk_100400AD0);
  *(v71 + v70) = v66;
  v72 = sub_100168088(&unk_10057A690, &unk_100400AC0);
  v73 = objc_allocWithZone(v72);
  v74 = &v73[*((swift_isaMask & *v73) + 0x180)];
  *v74 = 0;
  v74[8] = 2;
  v75 = &v73[*((swift_isaMask & *v73) + 0x188)];
  *v75 = sub_1001828C0;
  *(v75 + 1) = v71;
  v203.receiver = v73;
  v203.super_class = v72;
  v76 = v68;
  v77 = objc_msgSendSuper2(&v203, v68[168]);
  v78 = swift_allocObject();
  swift_weakInit();
  v79 = objc_allocWithZone(v72);
  v80 = &v79[*((swift_isaMask & *v79) + 0x180)];
  *v80 = 0;
  v80[8] = 2;
  v81 = &v79[*((swift_isaMask & *v79) + 0x188)];
  *v81 = sub_1001826D4;
  v81[1] = v78;
  v202.receiver = v79;
  v202.super_class = v72;
  v191 = objc_msgSendSuper2(&v202, v68[168]);
  v82 = swift_allocObject();
  swift_weakInit();
  v83 = swift_allocObject();
  v84 = v187;
  *(v83 + 16) = v82;
  *(v83 + 24) = v84;
  v85 = v188;
  *(v83 + 32) = v188;
  LOBYTE(v71) = v189;
  *(v83 + 40) = v189;
  v86 = objc_allocWithZone(v72);
  v87 = v86 + *((swift_isaMask & *v86) + 0x180);
  *v87 = 0;
  v87[8] = 2;
  v88 = (v86 + *((swift_isaMask & *v86) + 0x188));
  *v88 = sub_1001829B4;
  v88[1] = v83;
  sub_1001829D8(v84, v85, v71);
  v201.receiver = v86;
  v201.super_class = v72;
  v189 = objc_msgSendSuper2(&v201, v76[168]);
  v89 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v90 = v183;
  v91 = &v183[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v92 = *&v183[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v93 = *&v183[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
  *v91 = sub_100184654;
  v91[1] = v89;

  v94 = v90;
  sub_1000112B4(v92, v93);

  ObjectType = swift_getObjectType();
  v194 = &protocol descriptor for PodcastsOperation;
  v96 = swift_conformsToProtocol2();
  if (!v96)
  {
    __break(1u);
    goto LABEL_13;
  }

  v97 = v96;
  v98 = swift_allocObject();
  *(v98 + 24) = v97;
  swift_unknownObjectWeakInit();
  v99 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v100 = swift_allocObject();
  *(v100 + 16) = v99;
  *(v100 + 24) = v98;
  v101 = *(v97 + 72);
  v102 = v94;
  v103 = v77;

  v101(sub_10003B6A0, v100, ObjectType, v97);

  v104 = type metadata accessor for BaseOperation();
  v200.receiver = v103;
  v200.super_class = v104;
  *&v193 = v104;
  objc_msgSendSuper2(&v200, "addDependency:", v102);

  v188 = v102;
  v105 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v106 = &v103[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v107 = *&v103[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v108 = *&v103[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
  *v106 = sub_100182A18;
  v106[1] = v105;

  sub_1000112B4(v107, v108);

  v109 = swift_getObjectType();
  v110 = swift_conformsToProtocol2();
  if (!v110)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v111 = v110;
  v112 = swift_allocObject();
  *(v112 + 24) = v111;
  swift_unknownObjectWeakInit();
  v113 = swift_allocObject();
  v114 = v190;
  swift_unknownObjectWeakInit();
  v115 = swift_allocObject();
  *(v115 + 16) = v113;
  *(v115 + 24) = v112;
  v116 = *(v111 + 72);
  v117 = v103;
  v118 = v114;
  v119 = v117;

  v116(sub_10003B6A0, v115, v109, v111);

  v199.receiver = v118;
  v199.super_class = v193;
  objc_msgSendSuper2(&v199, "addDependency:", v119);

  v190 = v119;
  v120 = swift_allocObject();
  v121 = v191;
  swift_unknownObjectWeakInit();
  v122 = &v118[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v123 = *&v118[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v124 = *&v118[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
  *v122 = sub_100182704;
  v122[1] = v120;

  sub_1000112B4(v123, v124);

  v125 = swift_getObjectType();
  v126 = swift_conformsToProtocol2();
  if (!v126)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v127 = v126;
  v128 = swift_allocObject();
  *(v128 + 24) = v127;
  swift_unknownObjectWeakInit();
  v129 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v130 = swift_allocObject();
  *(v130 + 16) = v129;
  *(v130 + 24) = v128;
  v131 = *(v127 + 72);
  v132 = v118;
  v133 = v121;

  v131(sub_10003B6A0, v130, v125, v127);

  v198.receiver = v133;
  v198.super_class = v193;
  objc_msgSendSuper2(&v198, "addDependency:", v132);

  v191 = v132;
  v134 = swift_allocObject();
  v135 = v189;
  swift_unknownObjectWeakInit();
  v136 = &v133[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v137 = *&v133[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v138 = *&v133[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
  *v136 = sub_100184654;
  v136[1] = v134;

  sub_1000112B4(v137, v138);

  v139 = swift_getObjectType();
  v140 = swift_conformsToProtocol2();
  if (!v140)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v141 = v140;
  v142 = swift_allocObject();
  *(v142 + 24) = v141;
  swift_unknownObjectWeakInit();
  v143 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v144 = swift_allocObject();
  *(v144 + 16) = v143;
  *(v144 + 24) = v142;
  v145 = *(v141 + 72);
  v146 = v133;
  v147 = v135;

  v145(sub_10003B6A0, v144, v139, v141);

  v197.receiver = v147;
  v197.super_class = v193;
  objc_msgSendSuper2(&v197, "addDependency:", v146);

  v189 = v146;
  v148 = swift_allocObject();
  v149 = v182;
  swift_unknownObjectWeakInit();
  v150 = &v147[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v151 = *&v147[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v152 = *&v147[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
  *v150 = sub_100182A20;
  v150[1] = v148;

  sub_1000112B4(v151, v152);

  v153 = swift_getObjectType();
  v154 = swift_conformsToProtocol2();
  if (v154)
  {
    v155 = v154;
    v156 = swift_allocObject();
    *(v156 + 24) = v155;
    swift_unknownObjectWeakInit();
    v157 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v158 = v149;
    v159 = swift_allocObject();
    *(v159 + 16) = v157;
    *(v159 + 24) = v156;
    v160 = *(v155 + 72);
    v161 = v147;
    v162 = v158;
    v163 = v161;
    v164 = v162;

    v160(sub_10003B6A0, v159, v153, v155);

    v196.receiver = v164;
    v196.super_class = v193;
    objc_msgSendSuper2(&v196, "addDependency:", v163);

    v165 = &v164[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    v166 = *&v164[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    v167 = *&v164[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError + 8];
    *v165 = sub_10017FB78;
    v165[1] = 0;
    sub_1000112B4(v166, v167);

    sub_100168088(&unk_100574680, &qword_100401740);
    v168 = swift_allocObject();
    *(v168 + 16) = xmmword_100400780;
    v169 = v188;
    v170 = v190;
    *(v168 + 32) = v188;
    *(v168 + 40) = v170;
    v171 = v191;

    *(v168 + 48) = v171;
    *(v168 + 56) = v164;
    v172 = v189;
    *(v168 + 64) = v189;
    *(v168 + 72) = v163;
    v173 = sub_10016E37C();
    sub_100009F1C(0, &unk_10057A6A0, NSOperation_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v173 addOperations:isa waitUntilFinished:0];

    return;
  }

LABEL_16:
  __break(1u);
}

void sub_10017F2CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = *(v10 + 16);

  v14 = v12(v13);

  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = sub_100184690;
  v15[6] = v11;
  v18[4] = sub_100182A28;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10000F038;
  v18[3] = &unk_1004E03A8;
  v16 = _Block_copy(v18);
  v17 = v14;

  [v17 performBlock:v16];
  _Block_release(v16);
}

void sub_10017F444(uint64_t a1@<X1>, void *a3@<X8>)
{
  v28 = a3;
  v4 = type metadata accessor for Logger();
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin();
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v8 = &v26 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010430(a1, v8, &qword_100574040, &unk_100400AD0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100009104(v8, &qword_100574040, &unk_100400AD0);
LABEL_11:
    v25 = v28;
    *v28 = 0;
    *(v25 + 8) = 0;
    return;
  }

  (*(v10 + 32))(v12, v8, v9);
  type metadata accessor for FairPlayRolloutController();
  v13 = static FairPlayRolloutController.shared.getter();
  v14 = FairPlayRolloutController.isEnabled()();

  if (!v14)
  {
LABEL_10:
    (*(v10 + 8))(v12, v9);
    goto LABEL_11;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + OBJC_IVAR____TtC8Podcasts11JobPipeline_fairPlayInvalidationManager);
    swift_unknownObjectRetain();

    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    [v16 markKeyForInvalidationAt:v18 shouldRemove:0];

    swift_unknownObjectRelease();
  }

  static Logger.fairPlay.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
  }

  (*(v26 + 8))(v6, v27);
  v23 = [objc_opt_self() activeAccount];
  v24 = [objc_opt_self() controllerWithUserIdentity:v23];

  if (v24)
  {
    [v24 processPendingKeyInvalidations];

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_10017F808@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, unsigned int a4@<W4>, uint64_t a5@<X8>)
{
  v27 = a4;
  v24 = a2;
  v25 = a3;
  v6 = type metadata accessor for DownloadJob(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v23 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_7:
    *a5 = 0;
    *(a5 + 8) = 0;
    return result;
  }

  v13 = result;
  v23 = a5;
  v14 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v15 = *(result + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  v16 = &v11[*(v6 + 40)];
  sub_10018276C(*v16, *(v16 + 1), *(v16 + 2), *(v16 + 3));
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *(v16 + 3) = 4;
  *(v16 + 4) = 0;
  *(v16 + 5) = 0;
  *(v16 + 24) = 0;
  v17 = *(v13 + v14);
  sub_100182784(v11, v9, type metadata accessor for DownloadJob);
  v18 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  sub_100182EF4(v9, v19 + v18, type metadata accessor for DownloadJob);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_100184608;
  *(v20 + 24) = v19;
  aBlock[4] = sub_10002D950;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004E0330;
  v21 = _Block_copy(aBlock);
  v22 = v17;

  dispatch_sync(v22, v21);
  _Block_release(v21);

  sub_10018270C(v11, type metadata accessor for DownloadJob);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if ((v21 & 1) == 0)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100368838(v13, v24, v25, v27);

      result = swift_unknownObjectRelease();
    }

    else
    {
    }

    a5 = v23;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10017FB88(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v6 = a4;
  v52 = a4;
  v10 = type metadata accessor for DownloadJob(0);
  v54 = *(v10 - 8);
  v53 = *(v54 + 64);
  __chkstk_darwin();
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v47 - v13;
  v51 = static os_log_type_t.debug.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v50 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1004007A0;
  *(v15 + 56) = &type metadata for Double;
  *(v15 + 64) = &protocol witness table for Double;
  *(v15 + 32) = a3 / a2;
  *(v15 + 96) = &type metadata for Int64;
  *(v15 + 104) = &protocol witness table for Int64;
  *(v15 + 72) = a3;
  *(v15 + 136) = &type metadata for Int64;
  *(v15 + 144) = &protocol witness table for Int64;
  *(v15 + 112) = a2;
  v16 = sub_100022C18();
  v17 = v16;
  v18 = 28526;
  if (v6)
  {
    v18 = 7562617;
  }

  v19 = 0xE200000000000000;
  if (v6)
  {
    v19 = 0xE300000000000000;
  }

  *(v15 + 176) = &type metadata for String;
  *(v15 + 184) = v16;
  *(v15 + 152) = v18;
  *(v15 + 160) = v19;
  v47 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v20 = *(v4 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  v21 = *(v10 + 20);
  v48 = v14;
  v22 = &v14[v21];
  v24 = *v22;
  v23 = *(v22 + 1);

  v49 = type metadata accessor for DownloadJob;
  sub_10018270C(v14, type metadata accessor for DownloadJob);
  *(v15 + 216) = &type metadata for String;
  *(v15 + 224) = v17;
  *(v15 + 192) = v24;
  *(v15 + 200) = v23;
  v25 = v50;
  os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, v50, "Download update: %.2lf percent complete, received %d total %d paused: %{public}s, episodeUuid: %{public}s", 105, 2, v15);

  v26 = v47;
  v27 = *(v5 + v47);
  OS_dispatch_queue.sync<A>(execute:)();

  v28 = [a1 totalUnitCount];
  v29 = [a1 completedUnitCount];
  v30 = sub_100210480();
  v32 = v31;
  [a1 fractionCompleted];
  v34 = v33;
  v35 = NSProgress.estimatedTimeRemaining.getter();
  v56[0] = v28;
  v56[1] = v29;
  v56[2] = v30;
  v56[3] = v32;
  v56[4] = v34;
  v56[5] = v35;
  v57 = v36 & 1;
  v37 = v48;
  sub_10020EF18(v56, v52, v48);

  v38 = v49;
  sub_10018270C(v12, v49);
  v39 = *(v5 + v26);
  v40 = v37;
  sub_100182784(v37, v12, type metadata accessor for DownloadJob);
  v41 = (*(v54 + 80) + 24) & ~*(v54 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v5;
  sub_100182EF4(v12, v42 + v41, type metadata accessor for DownloadJob);
  v43 = swift_allocObject();
  *(v43 + 16) = sub_100184608;
  *(v43 + 24) = v42;
  aBlock[4] = sub_10002D950;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004E00D8;
  v44 = _Block_copy(aBlock);
  v45 = v39;

  dispatch_sync(v45, v44);
  _Block_release(v44);

  sub_10018270C(v40, v38);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if (v39)
  {
    __break(1u);
  }

  else
  {

    sub_1002EE4A0(sub_100182854, v5);
  }

  return result;
}

void sub_1001800D8(uint64_t a1)
{
  v2 = sub_10016E37C();
  v4[4] = sub_10018285C;
  v4[5] = a1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10000F038;
  v4[3] = &unk_1004E0100;
  v3 = _Block_copy(v4);

  [v2 addOperationWithBlock:v3];
  _Block_release(v3);
}

uint64_t sub_1001801A8(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100360268(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100180208(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v25 = a3;
  v26 = a1;
  v27 = a2;
  v5 = type metadata accessor for DownloadJob(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v24[-v9];
  v11 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v12 = *(v3 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  v13 = &v10[*(v5 + 40)];
  sub_10018276C(*v13, *(v13 + 1), *(v13 + 2), *(v13 + 3));
  *v13 = 0;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *(v13 + 3) = 4;
  *(v13 + 4) = 0;
  *(v13 + 5) = 0;
  *(v13 + 24) = 0;
  v14 = *(v4 + v11);
  sub_100182784(v10, v8, type metadata accessor for DownloadJob);
  v15 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  sub_100182EF4(v8, v16 + v15, type metadata accessor for DownloadJob);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100184608;
  *(v17 + 24) = v16;
  v30 = sub_10002D950;
  v31 = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  v29 = &unk_1004E0060;
  v18 = _Block_copy(aBlock);
  v19 = v14;

  dispatch_sync(v19, v18);
  _Block_release(v18);

  sub_10018270C(v10, type metadata accessor for DownloadJob);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    v21 = *(v4 + v11);
    sub_100168088(&qword_100574900, &unk_100400AA0);
    OS_dispatch_queue.sync<A>(execute:)();

    v22 = v29;
    v23 = v30;
    sub_1000044A0(aBlock, v29);
    (*(v23 + 15))(v22, v23);
    sub_100004590(aBlock);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100368838(v4, v26, v27, v25 | 0x40);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1001805A4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v9 = static OS_os_log.downloads.getter();
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Download has been cancelled", 27, 2, _swiftEmptyArrayStorage);

  v10 = *(v1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  (*(v3 + 16))(v5, v7, v2);
  sub_10018270C(v7, type metadata accessor for DownloadJob);
  v11 = sub_100181388(v5, 0);
  (*(v3 + 8))(v5, v2);
  v12 = sub_100168088(&unk_10057A690, &unk_100400AC0);
  v13 = objc_allocWithZone(v12);
  v14 = &v13[*((swift_isaMask & *v13) + 0x180)];
  *v14 = 0;
  v14[8] = 2;
  v15 = &v13[*((swift_isaMask & *v13) + 0x188)];
  *v15 = sub_1001826B8;
  *(v15 + 1) = v1;
  v68.receiver = v13;
  v68.super_class = v12;

  v64 = objc_msgSendSuper2(&v68, "init");
  v16 = swift_allocObject();
  v62 = v1;
  swift_weakInit();
  v17 = objc_allocWithZone(v12);
  v18 = &v17[*((swift_isaMask & *v17) + 0x180)];
  *v18 = 0;
  v18[8] = 2;
  v19 = &v17[*((swift_isaMask & *v17) + 0x188)];
  *v19 = sub_1001826D4;
  v19[1] = v16;
  v67.receiver = v17;
  v67.super_class = v12;
  v20 = objc_msgSendSuper2(&v67, "init");
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = &v11[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v23 = *&v11[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v24 = *&v11[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
  *v22 = sub_100182704;
  v22[1] = v21;

  v25 = v11;
  sub_1000112B4(v23, v24);

  ObjectType = swift_getObjectType();
  v63 = &protocol descriptor for PodcastsOperation;
  v27 = swift_conformsToProtocol2();
  if (v27)
  {
    v28 = v27;
    v29 = swift_allocObject();
    *(v29 + 24) = v28;
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = v29;
    v32 = *(v28 + 72);
    v33 = v25;
    v34 = v20;

    v32(sub_1000319D0, v31, ObjectType, v28);

    v35 = type metadata accessor for BaseOperation();
    v66.receiver = v34;
    v66.super_class = v35;
    v60 = v35;
    objc_msgSendSuper2(&v66, "addDependency:", v33);

    v61 = v33;
    v36 = swift_allocObject();
    v37 = v64;
    swift_unknownObjectWeakInit();
    v38 = &v34[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
    v39 = *&v34[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
    v40 = *&v34[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
    *v38 = sub_100182704;
    v38[1] = v36;

    sub_1000112B4(v39, v40);

    v59 = swift_getObjectType();
    v41 = swift_conformsToProtocol2();
    if (v41)
    {
      v42 = v41;
      v43 = swift_allocObject();
      *(v43 + 24) = v42;
      swift_unknownObjectWeakInit();
      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = swift_allocObject();
      *(v45 + 16) = v44;
      *(v45 + 24) = v43;
      v46 = *(v42 + 72);
      v47 = v34;
      v48 = v37;
      v49 = v47;
      v50 = v48;

      v46(sub_10003B6A0, v45, v59, v42);

      v65.receiver = v50;
      v65.super_class = v60;
      objc_msgSendSuper2(&v65, "addDependency:", v49);

      v51 = &v50[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
      v52 = *&v50[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
      v53 = *&v50[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError + 8];
      *v51 = sub_100181268;
      v51[1] = 0;
      sub_1000112B4(v52, v53);

      sub_100168088(&unk_100574680, &qword_100401740);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_100400800;
      v55 = v61;
      *(v54 + 32) = v61;
      *(v54 + 40) = v49;
      *(v54 + 48) = v50;
      v56 = sub_10016E37C();
      sub_100009F1C(0, &unk_10057A6A0, NSOperation_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v56 addOperations:isa waitUntilFinished:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100180D10@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for DownloadJob(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = aBlock - v7;
  v9 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v10 = *(a1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  v11 = v8 + *(v3 + 40);
  sub_10018276C(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24));
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 3;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  v12 = *(a1 + v9);
  sub_100182784(v8, v6, type metadata accessor for DownloadJob);
  v13 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  sub_100182EF4(v6, v14 + v13, type metadata accessor for DownloadJob);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1001827EC;
  *(v15 + 24) = v14;
  aBlock[4] = sub_10002D7F0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004DFFE8;
  v16 = _Block_copy(aBlock);
  v17 = v12;

  dispatch_sync(v17, v16);
  _Block_release(v16);

  sub_10018270C(v8, type metadata accessor for DownloadJob);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100367C64(a1);
      result = swift_unknownObjectRelease();
    }

    v19 = v21;
    *v21 = 0;
    *(v19 + 8) = 0;
  }

  return result;
}

void sub_100181034(uint64_t a3@<X8>)
{
  type metadata accessor for EpisodeMetadata(0);
  __chkstk_darwin();
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for FairPlayRolloutController();
  v9 = static FairPlayRolloutController.shared.getter();
  v10 = FairPlayRolloutController.isEnabled()();

  if (!v10)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = *(Strong + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
      OS_dispatch_queue.sync<A>(execute:)();

      sub_100182784(&v8[*(v6 + 36)], v5, type metadata accessor for EpisodeMetadata);
      sub_10018270C(v8, type metadata accessor for DownloadJob);
      v13 = v5[40];
      sub_10018270C(v5, type metadata accessor for EpisodeMetadata);
      if ((v13 & 1) == 0)
      {
        swift_beginAccess();
        v14 = swift_weakLoadStrong();
        if (v14)
        {
          v15 = *(v14 + OBJC_IVAR____TtC8Podcasts11JobPipeline_secureDownloadRenewalManager);

          dispatch thunk of SecureDownloadRenewalManager.requestSecureDeletion(of:completionHandler:)();
        }
      }
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
}

uint64_t sub_100181278(uint64_t a1, const char *a2, uint64_t a3, ...)
{
  v5 = static os_log_type_t.error.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v6 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100400790;
  swift_getErrorValue();
  v8 = Error.localizedDescription.getter();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100022C18();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, a2, a3, 2, v7);
}

id sub_100181388(uint64_t a1, char a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v8 = OBJC_IVAR____TtC8Podcasts11JobPipeline_jobStorage;
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v17 = *(v2 + v8);
  swift_unknownObjectRetain();
  v9 = static OS_os_log.downloads.getter();
  (*(v6 + 16))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v11 + v10 + v7) = a2;
  v12 = sub_100168088(&qword_1005735A0, &qword_100400AB8);
  v13 = objc_allocWithZone(v12);
  v14 = &v13[*((swift_isaMask & *v13) + 0x198)];
  *v14 = 0;
  v14[8] = 2;
  v15 = &v13[*((swift_isaMask & *v13) + 0x1A8)];
  *v15 = sub_100182604;
  v15[1] = v11;
  *&v13[*((swift_isaMask & *v13) + 0x1A0)] = v17;
  *&v13[*((swift_isaMask & *v13) + 0x1B0)] = v9;
  v18.receiver = v13;
  v18.super_class = v12;
  return objc_msgSendSuper2(&v18, "init");
}

uint64_t sub_1001815D0()
{
  sub_10018270C(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_metadata, type metadata accessor for EpisodeMetadata);
  sub_100184228(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_delegate);
  sub_10018270C(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline__job, type metadata accessor for DownloadJob);
  sub_100004590((v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline__task));
  sub_1000112B4(*(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_assetPrefetchBlock), *(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_assetPrefetchBlock + 8));
  v1 = OBJC_IVAR____TtC8Podcasts11JobPipeline_assetsFolder;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_mediaLibraryClient, &unk_1005817C0, &qword_100400BB0);
  sub_100004590((v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_dsidProvider));
  sub_100004590((v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_artworkStorage));
  swift_unknownObjectRelease();

  sub_100183CD8(*(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck), *(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck + 8), *(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck + 16), *(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck + 24));
  swift_unknownObjectRelease();
  sub_100004590((v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_bugReporter));
  return v0;
}

uint64_t sub_1001817A4()
{
  sub_1001815D0();

  return swift_deallocClassInstance();
}

uint64_t sub_100181824(uint64_t a1)
{
  result = type metadata accessor for EpisodeMetadata(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DownloadJob(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for URL();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1001819AC(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1001819C8(uint64_t a1, unsigned int a2)
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

uint64_t sub_100181A10(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100181A54(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_100181A90()
{
  result = qword_100573588;
  if (!qword_100573588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100573588);
  }

  return result;
}

unint64_t sub_100181AE8()
{
  result = qword_100573590;
  if (!qword_100573590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100573590);
  }

  return result;
}

uint64_t sub_100181B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v21 = a4;
  v22 = a1;
  v8 = type metadata accessor for MediaLibraryPid();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v13 = &v21 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  sub_100010430(v21, v13, &qword_100578010, &qword_100401F60);
  (*(v9 + 16))(v11, v22, v8);
  v15 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  v18 = v24;
  *(v17 + 4) = v23;
  *(v17 + 5) = v18;
  (*(v9 + 32))(&v17[v15], v11, v8);
  v19 = &v17[v16];
  *v19 = sub_100182C24;
  v19[1] = v14;

  sub_100217A04(0, 0, v13, &unk_100400B48, v17);
}

uint64_t sub_100181D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = a3;
  v19 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v22 = *(v6 - 8);
  v23 = v6;
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(sub_100168088(&unk_100581860, &qword_100400B30) - 8);
  __chkstk_darwin();
  v11 = &v18 - v10;
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.localAssetSupportWorkQueue.getter();
  sub_100010430(v19, v11, &unk_100581860, &qword_100400B30);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  v15 = v21;
  *(v14 + 16) = v20;
  *(v14 + 24) = v15;
  sub_100010498(v11, v14 + v13, &unk_100581860, &qword_100400B30);
  aBlock[4] = sub_100182D74;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E06F0;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100182DE8(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0, &unk_100400B50);
  sub_100182E30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v24 + 8))(v5, v3);
  (*(v22 + 8))(v8, v23);
}

uint64_t sub_10018211C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v8[4] = sub_100168088(&unk_100581860, &qword_100400B30);
  v8[5] = swift_task_alloc();
  sub_100168088(&qword_1005735E8, &qword_100400B38);
  v11 = swift_task_alloc();
  v8[6] = v11;
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  v8[7] = v12;
  *v12 = v8;
  v12[1] = sub_1001822A0;

  return v14(v11, a6);
}

uint64_t sub_1001822A0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1001824A8;
  }

  else
  {
    v2 = sub_1001823B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001823B4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  sub_100010430(v1, v2, &qword_1005735E8, &qword_100400B38);
  swift_storeEnumTagMultiPayload();
  v3(v2);
  sub_100009104(v2, &unk_100581860, &qword_100400B30);
  sub_100009104(v1, &qword_1005735E8, &qword_100400B38);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001824A8()
{
  v1 = v0[5];
  v2 = v0[2];
  *v1 = v0[8];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v2(v1);

  sub_100009104(v1, &unk_100581860, &qword_100400B30);

  v3 = v0[1];

  return v3();
}

uint64_t *sub_100182568(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1001825CC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_100182604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));
  sub_1001BC9A0(v8, *(v8 + *(v7 + 64)), a3, a4);
}

uint64_t sub_10018270C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10018276C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 - 1) >= 4)
  {
  }

  return result;
}

uint64_t sub_100182784(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001827F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadJob(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100182864()
{
  result = qword_1005735A8;
  if (!qword_1005735A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005735A8);
  }

  return result;
}

uint64_t sub_100182974(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 == 2)
    {
    }
  }

  else
  {
    if (!(a3 >> 6))
    {
    }

    return sub_1001829A0(result, a2, a3 & 0x3F);
  }

  return result;
}

uint64_t sub_1001829A0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return v3;
}

uint64_t sub_1001829D8(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 == 2)
    {
      return swift_errorRetain();
    }
  }

  else
  {
    if (!(a3 >> 6))
    {
      return swift_errorRetain();
    }

    return sub_100182A04(result, a2, a3 & 0x3F);
  }

  return result;
}

uint64_t sub_100182A04(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return swift_errorRetain();
  }

  return v3;
}

uint64_t sub_100182A60(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001C51C;

  return sub_10017C308(a1, a2, v7, v6);
}

uint64_t sub_100182B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_100168088(&qword_100578010, &qword_100401F60) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_100181B74(a1, a2, a3, v3 + v8, v10, v11);
}

uint64_t sub_100182C18(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_100182C2C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MediaLibraryPid() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10001C51C;

  return sub_10018211C(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_100182DE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100182E30()
{
  result = qword_10057D390;
  if (!qword_10057D390)
  {
    sub_100168310(&unk_100575CD0, &unk_100400B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D390);
  }

  return result;
}

uint64_t sub_100182E94()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100182EF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100182F5C(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for MediaLibraryPid() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_10017C1D4(a1, a2 & 1, v6, v7, v8);
}

void sub_100182FE0()
{
  v1 = *(type metadata accessor for MediaLibraryPid() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  sub_1003A4A00(v2, v3, v4, v5, v6, v7);
}

unint64_t sub_100183070()
{
  result = qword_100573608;
  if (!qword_100573608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100573608);
  }

  return result;
}

unint64_t sub_1001830C4()
{
  result = qword_100573610;
  if (!qword_100573610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100573610);
  }

  return result;
}

uint64_t sub_100183130()
{
  v1 = type metadata accessor for DownloadJob(0);
  v2 = *(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
  v16 = (v2 + 16) & ~v2;
  v17 = v0;
  v3 = v0 + v16;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v16, v4);

  v5 = v1[6];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v3 + v5, v6);

  v9 = v3 + v1[9];

  v10 = type metadata accessor for EpisodeMetadata(0);
  v11 = *(v10 + 44);
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 8))(v9 + v11, v12);
  v13 = *(v10 + 60);
  if (!(*(v7 + 48))(v9 + v13, 1, v6))
  {
    v8(v9 + v13, v6);
  }

  if ((*(v3 + v1[10] + 24) - 1) >= 4)
  {
  }

  return _swift_deallocObject(v17, v16 + v15, v2 | 7);
}

uint64_t sub_10018338C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(type metadata accessor for DownloadJob(0) - 8);
  v9 = v4 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a4(a1, a2, a3, v9);
}

void sub_100183428(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for DownloadJob(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for URL() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v4 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100178BEC(a1, a2, a3, a4, v4 + v10, v4 + v13, v14);
}

void sub_100183550(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for DownloadJob(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(type metadata accessor for URL() - 8);
  v13 = *(v4 + v11);
  v14 = v4 + ((v11 + *(v12 + 80) + 8) & ~*(v12 + 80));

  sub_100178E94(a1, a2, a3, a4, v4 + v10, v13, v14);
}

uint64_t sub_100183690(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100179640(a1, v4, v5, v6);
}

uint64_t sub_100183704(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_100179144(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_1001837A8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100183820(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

void sub_100183860()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = *(v0 + v3);
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);
  v11 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_1003A4464(v5, v6, v7, v0 + v2, v9, v10, v11, v8);
}

uint64_t sub_100183910()
{
  type metadata accessor for DownloadJob(0);
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return sub_100178174(v1, v2, v3);
}

uint64_t sub_100183978()
{
  v1 = *(type metadata accessor for DownloadJob(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_100177964(v3, v0 + v2, v5, v6);
}

uint64_t sub_100183A6C@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = (v7 + v6 + ((v6 + 16) & ~v6)) & ~v6;
  v9 = (v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for DownloadJob(0) - 8);
  v11 = (*(v10 + 80) + v9 + 16) & ~*(v10 + 80);
  return sub_100179FD8(a1, v2 + v8, *(v2 + v9), *(v2 + v9 + 8), v2 + v11, *(v2 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

unint64_t sub_100183BAC()
{
  result = qword_100573690;
  if (!qword_100573690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100573690);
  }

  return result;
}

uint64_t sub_100183C00(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1001742C4(a1, v4, v5, v6, v7);
}

uint64_t sub_100183C98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_100183CD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100183D68(uint64_t a1)
{

  if (*(v1 + 24))
  {
  }

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100183DEC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100183E34()
{
  v1 = type metadata accessor for DownloadJob(0);
  v2 = *(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);

  v16 = v0;
  v3 = v0 + ((v2 + 24) & ~v2);
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v3, v4);

  v5 = v1[6];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v3 + v5, v6);

  v9 = v3 + v1[9];

  v10 = type metadata accessor for EpisodeMetadata(0);
  v11 = *(v10 + 44);
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 8))(v9 + v11, v12);
  v13 = *(v10 + 60);
  if (!(*(v7 + 48))(v9 + v13, 1, v6))
  {
    v8(v9 + v13, v6);
  }

  if ((*(v3 + v1[10] + 24) - 1) >= 4)
  {
  }

  return _swift_deallocObject(v16, ((v2 + 24) & ~v2) + v15, v2 | 7);
}

uint64_t sub_100184080()
{
  v1 = *(type metadata accessor for DownloadJob(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10016E2E0(v2, v3);
}

uint64_t sub_1001840E4(uint64_t a1)
{
  v3 = *(type metadata accessor for DownloadJob(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1001701BC(a1, v4, v5, v6, v7);
}

uint64_t sub_10018415C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts11JobPipeline__job;
  swift_beginAccess();
  return sub_100182784(v1 + v3, a1, type metadata accessor for DownloadJob);
}

uint64_t sub_1001841D0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 >> 6 == 2)
  {
    return swift_errorRetain();
  }

  if (!(a3 >> 6))
  {
    return sub_100182A04(result, a2, a3);
  }

  return result;
}

uint64_t sub_1001841EC(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3;
  return v4(v6);
}

uint64_t sub_100184250(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100573648, &qword_100400BC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001842C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100168088(&qword_100573648, &qword_100400BC0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_100184350(uint64_t a1)
{
  sub_100184424(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    sub_100012E4C(319);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v8;
    }
  }

  return v3;
}

void sub_100184424(uint64_t a1)
{
  if (!qword_100573750)
  {
    sub_100168310(&qword_100575C50, &unk_100402650);
    sub_100168310(&qword_100574040, &unk_100400AD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100573750);
    }
  }
}

uint64_t sub_1001844BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 17))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10018450C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

id sub_100184694()
{
  result = [objc_allocWithZone(type metadata accessor for CarPlayMigrationBridge(0)) init];
  qword_100593220 = result;
  return result;
}

uint64_t sub_1001847A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100184888@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100184908(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

id sub_100184A88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlayMigrationBridge(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CarPlayMigrationBridge(uint64_t a1)
{
  result = qword_1005737A8;
  if (!qword_1005737A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100184B8C(uint64_t a1)
{
  sub_100184C1C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100184C1C()
{
  if (!qword_1005737B8)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1005737B8);
    }
  }
}

uint64_t getEnumTagSinglePayload for DeleteHiddenShowsMigrator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DeleteHiddenShowsMigrator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

void sub_100184D14()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    [v0 immediatelyDeleteAllHiddenPodcasts];
  }

  else
  {
    __break(1u);
  }
}

void sub_100184D84()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 privateQueueContext];

  v3[4] = sub_100184D14;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10000F038;
  v3[3] = &unk_1004E15D0;
  v2 = _Block_copy(v3);
  [v1 performBlockAndWaitWithSave:v2];
  _Block_release(v2);
}

uint64_t PodcastsStateTransitionsExternalEffects.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void PodcastsStateTransitionsExternalEffects.unsafeUpdateFeed(for:shouldFetchPlayState:)(void *a1, char a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 uuid];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    v15 = [a1 managedObjectContext];
    if (v15)
    {
      v16 = v15;
      [v15 saveInCurrentBlock];
      v17 = [a1 title];
      v60 = v12;
      if (v17)
      {
        v18 = v17;
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
      }

      else
      {
        v59 = 0;
        v20 = 0;
      }

      v30 = a2;
      v31 = [a1 storeCollectionId];
      v32 = [a1 feedURL];
      if (v32)
      {
        v33 = v32;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
      }

      else
      {
        v34 = 0;
        v36 = 0;
      }

      v37 = *(v2 + 24);
      v38 = swift_allocObject();
      v39 = v60;
      *(v38 + 16) = v59;
      *(v38 + 24) = v20;
      *(v38 + 32) = v39;
      *(v38 + 40) = v14;
      *(v38 + 48) = v31;
      *(v38 + 56) = v34;
      *(v38 + 64) = v36;
      *(v38 + 72) = v30 & 1;
      *(v38 + 80) = v2;
      aBlock[4] = sub_100186220;
      aBlock[5] = v38;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100185CE0;
      aBlock[3] = &unk_1004E1620;
      v40 = _Block_copy(aBlock);

      [v37 updatePodcastWithUUID:v11 userInitiated:1 forced:1 forceBootstrap:0 source:21 completion:v40];
      _Block_release(v40);

      return;
    }
  }

  static Logger.podcastsStatesCoordination.getter();
  v21 = a1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    HIDWORD(v58) = v23;
    v60 = v5;
    v24 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v24 = 136381699;
    v25 = [v21 title];
    if (v25)
    {
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
    }

    else
    {
      v29 = 0xEA00000000003E65;
      v27 = 0x6C746974206F6E3CLL;
    }

    v41 = 0x3E7974706D653CLL;
    v42 = sub_1000153E0(v27, v29, aBlock);

    *(v24 + 4) = v42;
    *(v24 + 12) = 2080;
    v43 = [v21 uuid];
    if (v43)
    {
      v44 = v43;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;
    }

    else
    {
      v46 = 0xE700000000000000;
    }

    v47 = sub_1000153E0(v41, v46, aBlock);

    *(v24 + 14) = v47;
    *(v24 + 22) = 2080;
    aBlock[6] = [v21 managedObjectContext];
    sub_100168088(&qword_1005737C8, &qword_100400FD0);
    v48 = String.init<A>(describing:)();
    v50 = sub_1000153E0(v48, v49, aBlock);

    *(v24 + 24) = v50;
    *(v24 + 32) = 2049;
    v51 = [v21 storeCollectionId];

    *(v24 + 34) = v51;
    *(v24 + 42) = 2081;
    v52 = [v21 feedURL];
    if (v52)
    {
      v53 = v52;
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;
    }

    else
    {
      v56 = 0xE700000000000000;
      v54 = 0x3E7974706D653CLL;
    }

    v57 = sub_1000153E0(v54, v56, aBlock);

    *(v24 + 44) = v57;
    _os_log_impl(&_mh_execute_header, v22, BYTE4(v58), "We cannot update feed for podcast without UUID and/or managedObjectContext. Podcast %{private}s, uuid: %s, MOC: %s, adamID: %{private}lld, feedURL: %{private}s.", v24, 0x34u);
    swift_arrayDestroy();

    (*(v6 + 8))(v9, v60);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }
}

void sub_1001854A8(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v72 = a8;
  v68 = a5;
  v69 = a7;
  v67 = a3;
  v70 = a2;
  v14 = a10;
  v15 = a9;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  __chkstk_darwin();
  v21 = &v63 - v20;
  __chkstk_darwin();
  v24 = &v63 - v23;
  v71 = v19;
  if (a1)
  {
    LODWORD(v70) = a10;
    static Logger.podcastsStatesCoordination.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = Logger.logObject.getter();
    if (os_log_type_enabled(v26, v25))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v65 = v17;
      v73[0] = v28;
      *v27 = 136381443;
      v66 = v16;
      if (a4)
      {
        v29 = v67;
      }

      else
      {
        v29 = 0x6C746974206F6E3CLL;
      }

      if (a4)
      {
        v30 = a4;
      }

      else
      {
        v30 = 0xEA00000000003E65;
      }

      v31 = sub_1000153E0(v29, v30, v73);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_1000153E0(v68, a6, v73);
      *(v27 + 22) = 2049;
      *(v27 + 24) = v69;
      *(v27 + 32) = 2081;
      v32 = v72;
      if (a9)
      {
        v33 = v72;
      }

      else
      {
        v33 = 0x3E7974706D653CLL;
      }

      if (a9)
      {
        v34 = a9;
      }

      else
      {
        v34 = 0xE700000000000000;
      }

      v35 = sub_1000153E0(v33, v34, v73);
      v16 = v66;

      *(v27 + 34) = v35;
      _os_log_impl(&_mh_execute_header, v26, v25, "Feed update completed for Podcast %{private}s, uuid: %s, adamID: %{private}lld, feedURL: %{private}s.", v27, 0x2Au);
      swift_arrayDestroy();
      v36 = v65;

      v15 = a9;
      v37 = *(v36 + 8);
      v37(v24, v16);
    }

    else
    {

      v37 = *(v17 + 8);
      v37(v24, v16);
      v32 = v72;
      v15 = a9;
    }

    v19 = v71;
    v14 = v70;
    goto LABEL_38;
  }

  v66 = v22;
  static Logger.podcastsStatesCoordination.getter();

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v38, v39))
  {

    v37 = *(v17 + 8);
    v37(v21, v16);
    v32 = v72;
    if (!v70)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  v40 = swift_slowAlloc();
  v63 = a6;
  v64 = v39;
  v41 = v40;
  v65 = swift_slowAlloc();
  v73[0] = v65;
  *v41 = 136381443;
  if (a4)
  {
    v42 = v67;
  }

  else
  {
    v42 = 0x6C746974206F6E3CLL;
  }

  if (a4)
  {
    v43 = a4;
  }

  else
  {
    v43 = 0xEA00000000003E65;
  }

  v44 = v42;
  v15 = a9;
  v14 = a10;
  v45 = sub_1000153E0(v44, v43, v73);

  *(v41 + 4) = v45;
  *(v41 + 12) = 2080;
  *(v41 + 14) = sub_1000153E0(v68, v63, v73);
  *(v41 + 22) = 2049;
  *(v41 + 24) = v69;
  *(v41 + 32) = 2081;
  v32 = v72;
  if (a9)
  {
    v46 = v72;
  }

  else
  {
    v46 = 0x3E7974706D653CLL;
  }

  if (a9)
  {
    v47 = a9;
  }

  else
  {
    v47 = 0xE700000000000000;
  }

  v48 = sub_1000153E0(v46, v47, v73);

  *(v41 + 34) = v48;
  v19 = v71;
  _os_log_impl(&_mh_execute_header, v38, v64, "Unable to complete feed update for Podcast %{private}s, uuid: %s, adamID: %{private}lld, feedURL: %{private}s.", v41, 0x2Au);
  swift_arrayDestroy();

  v37 = *(v17 + 8);
  v37(v21, v16);
  if (v70)
  {
LABEL_34:
    swift_errorRetain();
    static Logger.podcastsStatesCoordination.getter();
    swift_errorRetain();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = v14;
      v53 = swift_slowAlloc();
      *v51 = 138412290;
      v54 = _convertErrorToNSError(_:)();
      *(v51 + 4) = v54;
      *v53 = v54;
      _os_log_impl(&_mh_execute_header, v49, v50, "Feed Update Error: %@", v51, 0xCu);
      sub_100186264(v53);
      v14 = v52;
      v32 = v72;

      v19 = v71;
    }

    else
    {
    }

    v37(v66, v16);
  }

LABEL_38:
  if ((v14 & 1) != 0 && v15)
  {

    static Logger.podcastsStatesCoordination.getter();
    v55 = static os_log_type_t.default.getter();
    v56 = Logger.logObject.getter();
    if (os_log_type_enabled(v56, v55))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v73[0] = v58;
      *v57 = 136380675;
      *(v57 + 4) = sub_1000153E0(v32, v15, v73);
      sub_100004590(v58);

      v59 = v71;
    }

    else
    {

      v59 = v19;
    }

    v37(v59, v16);
    v60 = *(a11 + 32);
    sub_100168088(&unk_100573880, &unk_100401080);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100400790;
    v73[0] = v32;
    v73[1] = v15;
    AnyHashable.init<A>(_:)();
    sub_10016AFD8(inited);
    swift_setDeallocating();
    sub_10016BE9C(inited + 32);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v60 scheduleVeryHighPriorityEpisodeStateGetWithFeedUrls:isa];
  }
}

void sub_100185CE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void PodcastsStateTransitionsExternalEffects.unsafeDelete(_:)(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 managedObjectContext];
  if (v8)
  {
    v9 = v8;
    v10 = *(v1 + 16);
    v39 = v9;
    [v10 _markAsHiddenPodcast:a1 inContext:?];
    [v39 saveInCurrentBlock];
    v11 = v39;
  }

  else
  {
    static Logger.podcastsStatesCoordination.getter();
    v12 = a1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      LODWORD(v39) = v14;
      v15 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v41 = v38;
      *v15 = 136381699;
      v16 = [v12 title];
      if (v16)
      {
        v17 = v16;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
      }

      else
      {
        v20 = 0xEA00000000003E65;
        v18 = 0x6C746974206F6E3CLL;
      }

      v21 = sub_1000153E0(v18, v20, &v41);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2080;
      v22 = [v12 uuid];
      if (v22)
      {
        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v26 = 0xE700000000000000;
        v24 = 0x3E7974706D653CLL;
      }

      v27 = sub_1000153E0(v24, v26, &v41);

      *(v15 + 14) = v27;
      *(v15 + 22) = 2080;
      v40 = [v12 managedObjectContext];
      sub_100168088(&qword_1005737C8, &qword_100400FD0);
      v28 = String.init<A>(describing:)();
      v30 = sub_1000153E0(v28, v29, &v41);

      *(v15 + 24) = v30;
      *(v15 + 32) = 2049;
      v31 = [v12 storeCollectionId];

      *(v15 + 34) = v31;
      *(v15 + 42) = 2081;
      v32 = [v12 feedURL];
      if (v32)
      {
        v33 = v32;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
      }

      else
      {
        v36 = 0xE700000000000000;
        v34 = 0x3E7974706D653CLL;
      }

      v37 = sub_1000153E0(v34, v36, &v41);

      *(v15 + 44) = v37;
      _os_log_impl(&_mh_execute_header, v13, v39, "We cannot delete podcast without a valid managedObjectContext. Podcast %{private}s, uuid: %s, MOC: %s, adamID: %{private}lld, feedURL: %{private}s.", v15, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v4 + 8))(v7, v3);
  }
}

void *sub_1001861D0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1001861F0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100186264(uint64_t a1)
{
  v2 = sub_100168088(&qword_100575B20, &qword_100401F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001862CC()
{
  v1 = OBJC_IVAR____TtC8Podcasts19LibraryDataProvider____lazy_storage___actionController;
  if (*(v0 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider____lazy_storage___actionController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider____lazy_storage___actionController);
  }

  else
  {
    type metadata accessor for LibraryActionController();

    BaseObjectGraph.inject<A>(_:)();

    v2 = v4;
    *(v0 + v1) = v4;
  }

  return v2;
}

uint64_t LibraryDataProvider.libraryActionController.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts19LibraryDataProvider____lazy_storage___libraryActionController;
  swift_beginAccess();
  sub_100010430(v1 + v3, &v6, &qword_100573898, &unk_100401090);
  if (v7)
  {
    return sub_1000109E4(&v6, a1);
  }

  sub_100009104(&v6, &qword_100573898, &unk_100401090);
  v5 = sub_1001862CC();
  a1[3] = type metadata accessor for LibraryActionController();
  a1[4] = sub_10000F084(&qword_1005738A0, type metadata accessor for LibraryActionController, &unk_100410110);
  *a1 = v5;
  sub_100004428(a1, &v6);
  swift_beginAccess();
  sub_100016A14(&v6, v1 + v3, &qword_100573898, &unk_100401090);
  return swift_endAccess();
}

uint64_t LibraryDataProvider.libraryActionController.setter(__int128 *a1)
{
  sub_1000109E4(a1, v4);
  v2 = OBJC_IVAR____TtC8Podcasts19LibraryDataProvider____lazy_storage___libraryActionController;
  swift_beginAccess();
  sub_100016A14(v4, v1 + v2, &qword_100573898, &unk_100401090);
  return swift_endAccess();
}

void (*LibraryDataProvider.libraryActionController.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v3[13] = v1;
  LibraryDataProvider.libraryActionController.getter(v3);
  return sub_10018658C;
}

void sub_10018658C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    sub_100004428(*a1, (v2 + 5));
    v4 = OBJC_IVAR____TtC8Podcasts19LibraryDataProvider____lazy_storage___libraryActionController;
    swift_beginAccess();
    sub_100016A14((v2 + 5), v3 + v4, &qword_100573898, &unk_100401090);
    swift_endAccess();
    sub_100004590(v2);
  }

  else
  {
    sub_1000109E4(*a1, (v2 + 5));
    v5 = OBJC_IVAR____TtC8Podcasts19LibraryDataProvider____lazy_storage___libraryActionController;
    swift_beginAccess();
    sub_100016A14((v2 + 5), v3 + v5, &qword_100573898, &unk_100401090);
    swift_endAccess();
  }

  free(v2);
}

void (*LibraryDataProvider.__allocating_init(asPartOf:)(void (*a1)(uint64_t, _BYTE *, uint64_t)))(uint64_t, _BYTE *, uint64_t)
{
  sub_100168088(&unk_1005738E0, &qword_1004010A0);
  BaseObjectGraph.inject<A>(_:)();
  sub_100009F1C(0, &qword_10057AFF0, MTLegacyDownloadNotifier_ptr);
  BaseObjectGraph.inject<A>(_:)();
  v3 = objc_allocWithZone(v1);
  v4 = sub_10000B6F4(v7, v6, a1);

  return v4;
}

void (*LibraryDataProvider.__allocating_init(contextProvider:downloadsNotifier:objectGraph:)(void (*a1)(uint64_t, _BYTE *, uint64_t), void *a2, void (*a3)(uint64_t, _BYTE *, uint64_t)))(uint64_t, _BYTE *, uint64_t)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_10000B6F4(a1, a2, a3);

  return v8;
}

void (*LibraryDataProvider.init(contextProvider:downloadsNotifier:objectGraph:)(void (*a1)(uint64_t, _BYTE *, uint64_t), void *a2, void (*a3)(uint64_t, _BYTE *, uint64_t)))(uint64_t, _BYTE *, uint64_t)
{
  v3 = sub_10000B6F4(a1, a2, a3);

  return v3;
}

uint64_t sub_100186868@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() defaultMediaLibrary];
  result = sub_100009F1C(0, &qword_100574428, MPMediaLibrary_ptr);
  a1[3] = result;
  a1[4] = &off_1004EE5A0;
  *a1 = v2;
  return result;
}

id AppCoreSpotlightEntityAnnotator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarPlaySceneDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t LibraryDataProvider.fetchEpisode(with:)(uint64_t a1, uint64_t a2)
{
  sub_100168088(&unk_100573A50, &qword_100401138);
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  static OS_os_log.libraryLoadingSignpost.getter();
  v2 = Promise.init(signpost:log:metadata:logResult:)();
  type metadata accessor for CoreDataFetcher();

  static CoreDataFetcher.fetchEpisode(with:completion:)();

  return v2;
}

uint64_t LibraryDataProvider.fetchEpisodeBlocking(with:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CoreDataFetcher();
  sub_100168088(&qword_100573A60, &qword_100401140);
  static CoreDataFetcher.performAndWaitOnEpisode<A>(with:block:)();
  return v3;
}

uint64_t sub_100186D00(uint64_t a1)
{
  sub_100168088(&qword_100573A68, &qword_100401148);
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  static OS_os_log.libraryLoadingSignpost.getter();
  v1 = Promise.init(signpost:log:metadata:logResult:)();
  type metadata accessor for CoreDataFetcher();

  static CoreDataFetcher.episodeUuid(for:completion:)();

  return v1;
}

uint64_t LibraryDataProvider.episodeUuid(for:)(uint64_t a1)
{
  sub_100168088(&qword_100573A68, &qword_100401148);
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  static OS_os_log.libraryLoadingSignpost.getter();
  v1 = Promise.init(signpost:log:metadata:logResult:)();
  type metadata accessor for CoreDataFetcher();

  static CoreDataFetcher.episodeUuid(for:completion:)();

  return v1;
}

id LibraryDataProvider.fetchEpisodeLockupBlocking(with:)(uint64_t a1)
{
  sub_100168088(&qword_100573A78, &qword_10040FDF0);
  __chkstk_darwin();
  v4 = &v15 - v3;
  sub_100168088(&unk_100573A80, &unk_100401160);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = &v15 - v6;
  result = [*(v1 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) mainOrPrivateContext];
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = [result episodeForStoreTrackID:a1];

    if (v10)
    {
      type metadata accessor for Episode();
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      v11 = v10;
      if (Episode.__allocating_init(from:clickAction:wantsListenNowReason:)())
      {
        v12 = type metadata accessor for EpisodeListSettings();
        (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
        v13 = type metadata accessor for SectionContext();
        (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
        static MetricsDataConfiguration.default.getter();
        v14 = dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)();
        v21 = v15;
        sub_100009104(&v21, &unk_100574650, &unk_1004023C0);
        v20 = v16;
        sub_100009104(&v20, &unk_100573A90, &unk_100401170);
        v19 = *(&v16 + 1);
        sub_100009104(&v19, &unk_100574660, &unk_1004023D0);
        sub_1000112B4(v17, v18);

        sub_100009104(v4, &qword_100573A78, &qword_10040FDF0);
        sub_100009104(v7, &unk_100573A80, &unk_100401160);
        return v14;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100187270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, void, uint64_t))
{
  v13 = [*(v7 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) mainOrPrivateContext];
  v14 = sub_100168088(a4, a5);
  v15 = a7(a1, a6, 0, v14);

  return v15;
}

uint64_t sub_100187340(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void, uint64_t))
{
  v11 = [*(v5 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) mainOrPrivateContext];
  v12 = sub_100168088(a2, a3);
  v13 = a5(a1, a4, 0, v12);

  return v13;
}

uint64_t sub_1001873D4(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) mainOrPrivateContext];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v5 = v3;

  v6 = static OS_dispatch_queue.main.getter();
  sub_100168088(&qword_100573AB0, &qword_100401190);
  v7 = NSManagedObjectContext.performAndPublish<A>(queue:_:)();

  return v7;
}

uint64_t LibraryDataProvider.fetchCategoryLockups(with:)(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) mainOrPrivateContext];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v5 = v3;

  v6 = static OS_dispatch_queue.main.getter();
  sub_100168088(&qword_100573AB0, &qword_100401190);
  v7 = NSManagedObjectContext.performAndPublish<A>(queue:_:)();

  return v7;
}

uint64_t LibraryDataProvider.unlimitedShowsPublisher<A>(listType:sortBy:transform:updateRequiredComparator:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v31 = a6;
  v32 = a5;
  v33 = a4;
  sub_100009F1C(255, &qword_100573AC0, MTPodcast_ptr);
  v25 = a8;
  v12 = type metadata accessor for FetchedResultsListPublisher();
  v35 = *(v12 - 8);
  __chkstk_darwin();
  v26 = v24 - v13;
  type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v29 = type metadata accessor for Publishers.MapKeyPath();
  v34 = *(v29 - 8);
  __chkstk_darwin();
  v15 = v24 - v14;
  v24[2] = sub_100029130(a1, a2 & 1);
  v24[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = sub_10002929C(a1, a2 & 1);
  ShowsSortType.sortDescriptors.getter(a3);
  v17 = [*(v27 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  v19 = v25;
  v20 = v26;
  static FetchedResultsListPublisher.unsafeUnlimitedListPublisher(identifier:entityName:predicate:sortDescriptors:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();

  v36 = v19;
  swift_getKeyPath();
  Publisher.map<A>(_:)();

  (*(v35 + 8))(v20, v12);
  v21 = v29;
  swift_getWitnessTable();
  v22 = Publisher.eraseToAnyPublisher()();
  (*(v34 + 8))(v15, v21);
  return v22;
}

uint64_t LibraryDataProvider.channelSubscribedPublisher(channelAdamId:)(uint64_t a1, char a2)
{
  v5 = sub_100168088(&qword_100573AE8, &qword_1004011F8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v21 - v7;
  v9 = sub_100168088(&qword_100573AF0, &qword_100401200);
  v22 = *(v9 - 8);
  __chkstk_darwin();
  v11 = v21 - v10;
  v12 = sub_100168088(&qword_100573AF8, &qword_100401208);
  v23 = *(v12 - 8);
  __chkstk_darwin();
  v14 = v21 - v13;
  if (a2 & 1) != 0 || (result = AdamID.isEmpty.getter(), (result))
  {
    LOBYTE(v25) = 0;
    Just.init(_:)();
    sub_100009FAC(&qword_100573B00, &qword_100573AE8, &qword_1004011F8, &protocol conformance descriptor for Just<A>);
    v16 = Publisher.eraseToAnyPublisher()();
    (*(v6 + 8))(v8, v5);
    return v16;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v25 = 0xD00000000000001BLL;
    v26 = 0x8000000100465B40;
    v24 = a1;
    sub_10019BAC4();
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v21[2] = v26;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21[1] = v18;
    v19 = [objc_opt_self() predicateForChannelWithStoreId:a1];
    v20 = [*(v2 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
    sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.main.getter();
    sub_100009F1C(0, &qword_100573B10, MTChannel_ptr);
    FetchedResultsSingleItemPublisher.init(identifier:entityName:predicate:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
    sub_100009FAC(&qword_100573B18, &qword_100573AF0, &qword_100401200, &protocol conformance descriptor for FetchedResultsSingleItemPublisher<A, B>);
    Publisher.map<A>(_:)();
    (*(v22 + 8))(v11, v9);
    sub_100009FAC(&qword_100573B20, &qword_100573AF8, &qword_100401208, &protocol conformance descriptor for Publishers.Map<A, B>);
    v16 = Publisher.eraseToAnyPublisher()();
    (*(v23 + 8))(v14, v12);
    return v16;
  }

  __break(1u);
  return result;
}

uint64_t LibraryDataProvider.libraryChannelsPaginatedPublisher(sortBy:pageSize:)(uint64_t a1, uint64_t a2)
{
  v12[1] = a2;
  v3 = sub_100168088(&qword_100573B28, &qword_100401210);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v12 - v5;
  v12[0] = "channelSubscribedPublisher ";
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = [objc_opt_self() predicateForLibraryChannel];
  v8 = *(v2 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider);

  v9 = [v8 privateQueueContext];
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  static OS_dispatch_queue.main.getter();
  type metadata accessor for LegacyChannelLockup();
  sub_100009F1C(0, &qword_100573B10, MTChannel_ptr);
  FetchedResultsListPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
  sub_100009FAC(&qword_100573B30, &qword_100573B28, &qword_100401210, &protocol conformance descriptor for FetchedResultsListPublisher<A, B>);
  v10 = PaginatedPublisher.eraseToAnyPaginatedPublisher()();
  (*(v4 + 8))(v6, v3);
  return v10;
}

uint64_t sub_1001880B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  sub_100168088(&qword_100573B38, &qword_100401218);
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  static OS_os_log.libraryLoadingSignpost.getter();
  v8 = Promise.init(signpost:log:metadata:logResult:)();
  v9 = [*(v7 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  v12[4] = a3;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10000F038;
  v12[3] = a4;
  v10 = _Block_copy(v12);

  [v9 performBlock:v10];
  _Block_release(v10);

  return v8;
}

uint64_t LibraryDataProvider.fetchDownloadCountObserver(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100168088(&qword_100573B38, &qword_100401218);
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  static OS_os_log.libraryLoadingSignpost.getter();
  v6 = Promise.init(signpost:log:metadata:logResult:)();
  v7 = [*(v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v6;
  v11[4] = sub_10019BB38;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000F038;
  v11[3] = &unk_1004E17F8;
  v9 = _Block_copy(v11);

  [v7 performBlock:v9];
  _Block_release(v9);

  return v6;
}

uint64_t LibraryDataProvider.fetchEpisodeCountObserver(for:)(uint64_t a1)
{
  v2 = type metadata accessor for EpisodeListSettings();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10019BB44(a1, v11);
  EpisodeListSettings.init(_:sort:pubDateLimit:hidePlayedEpisodes:hideTrailers:hideVideoEpisodes:hideUnentitledContent:)();
  v6 = EpisodeListSettings.predicate.getter();
  v7 = EpisodeListType.importantKeys.getter();
  v8 = sub_10018CF74(v6, v7);

  (*(v3 + 8))(v5, v2);
  return v8;
}

uint64_t sub_1001885A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 predicateForPodcastUUID:v10];

  type metadata accessor for CoreDataFetcher();
  sub_100168088(a5, a6);
  static CoreDataFetcher.performAndWaitOnPodcast<A>(with:block:)();

  return v13;
}

uint64_t sub_100188698(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = objc_opt_self();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 predicateForPodcastUUID:v8];

  type metadata accessor for CoreDataFetcher();
  sub_100168088(a3, a4);
  static CoreDataFetcher.performAndWaitOnPodcast<A>(with:block:)();

  return v11;
}

uint64_t sub_100188760(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_100168088(&qword_100573B50, &qword_100401230);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t LibraryDataProvider.fetchShowEpisodeCountHeaderData(for:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_100168088(&qword_100573B50, &qword_100401230);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t LibraryDataProvider.showDetailPublisher(uuid:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_100168088(&qword_100573B58, &qword_100401238);
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  __chkstk_darwin();
  v9 = &v31 - v8;
  v10 = sub_100168088(&qword_100573B60, &qword_100401240);
  v11 = *(v10 - 8);
  v37 = v10;
  v38 = v11;
  __chkstk_darwin();
  v32 = &v31 - v12;
  v40 = sub_100168088(&qword_100573B68, &qword_100401248);
  v42 = *(v40 - 8);
  __chkstk_darwin();
  v33 = &v31 - v13;
  v39 = sub_100168088(&unk_100573B70, &unk_100401250);
  v41 = *(v39 - 8);
  __chkstk_darwin();
  v34 = &v31 - v14;
  v15 = MTPodcastHidesPlayedEpisodesAppWideUserDefaults();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = NSUserDefaults.BOOLPublisher(forKey:)();

  v43 = 0;
  v44 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v43 = 0xD000000000000015;
  v44 = 0x8000000100465C30;
  v16._countAndFlagsBits = a1;
  v16._object = a2;
  String.append(_:)(v16);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = objc_opt_self();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 predicateForPodcastUUID:v18];

  v20 = [*(v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  static OS_dispatch_queue.main.getter();
  type metadata accessor for PodcastDetail();
  sub_100009F1C(0, &qword_100573AC0, MTPodcast_ptr);
  FetchedResultsSingleItemPublisher.init(identifier:entityName:predicate:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
  v43 = v31;
  sub_100168088(&unk_1005783E0, &unk_100405860);
  sub_100009FAC(&unk_100573B80, &qword_100573B58, &qword_100401238, &protocol conformance descriptor for FetchedResultsSingleItemPublisher<A, B>);
  sub_100009FAC(&qword_10057DE80, &unk_1005783E0, &unk_100405860, &protocol conformance descriptor for AnyPublisher<A, B>);
  v21 = v32;
  v22 = v35;
  Publisher.combineLatest<A>(_:)();
  (*(v36 + 8))(v9, v22);
  swift_getKeyPath();
  sub_100009FAC(&qword_100573B90, &qword_100573B60, &qword_100401240, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v23 = v33;
  v24 = v37;
  Publisher.map<A>(_:)();

  (*(v38 + 8))(v21, v24);
  sub_100009FAC(&qword_100573B98, &qword_100573B68, &qword_100401248, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
  v25 = v34;
  v26 = v40;
  Publisher.tryMap<A>(_:)();
  (*(v42 + 8))(v23, v26);
  sub_100009FAC(&qword_100573BA0, &unk_100573B70, &unk_100401250, &protocol conformance descriptor for Publishers.TryMap<A, B>);
  v27 = v39;
  v28 = Publisher.bufferedMulticast()();
  (*(v41 + 8))(v25, v27);
  v43 = v28;
  sub_100168088(&qword_100573BA8, &qword_100401280);
  sub_100009FAC(&qword_100573BB0, &qword_100573BA8, &qword_100401280, &protocol conformance descriptor for AnyPublisher<A, B>);
  v29 = Publisher.eraseToAnyPublisher()();

  return v29;
}

uint64_t LibraryDataProvider.allAvailableEpisodeUserFiltersPublisher(forShow:)(uint64_t a1, void *a2)
{
  v5 = sub_100168088(&qword_100573BB8, &qword_100401288);
  v6 = *(v5 - 8);
  v58 = v5;
  v59 = v6;
  __chkstk_darwin();
  v55 = v45 - v7;
  v57 = sub_100168088(&unk_100573BC0, &unk_100401290);
  v60 = *(v57 - 8);
  __chkstk_darwin();
  v56 = v45 - v8;
  v49 = type metadata accessor for FetchedResultsCountPublisher();
  v63 = *(v49 - 8);
  __chkstk_darwin();
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100168088(&qword_100575D10, &qword_100402E90);
  v53 = *(v11 - 8);
  v54 = v11;
  __chkstk_darwin();
  v52 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = v45 - v13;
  __chkstk_darwin();
  v50 = v45 - v14;
  *&v15 = __chkstk_darwin().n128_u64[0];
  v64 = v45 - v16;
  v17 = [*(v2 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  strcpy(v65, "hasBookmarks ");
  HIWORD(v65[1]) = -4864;
  v61 = a1;
  v18._countAndFlagsBits = a1;
  v18._object = a2;
  String.append(_:)(v18);
  v47 = kMTEpisodeEntityName;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = objc_opt_self();
  v46 = v19;
  v20 = a2;
  v21 = String._bridgeToObjectiveC()();
  v22 = [v19 predicateForBookmarkedEpisodesOnPodcastUuid:v21];

  v48 = sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v23 = v17;
  static OS_dispatch_queue.main.getter();
  v62 = v23;
  FetchedResultsCountPublisher.init(identifier:entityName:predicate:managedObjectContext:fetchLimit:receiveOn:)();
  v45[1] = sub_10000F084(&qword_100573BD0, &type metadata accessor for FetchedResultsCountPublisher, &protocol conformance descriptor for FetchedResultsCountPublisher);
  v24 = v49;
  Publisher.map<A>(_:)();
  v25 = *(v63 + 8);
  v63 += 8;
  v25(v10, v24);
  v65[0] = 0;
  v65[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v65, "hasSubscriber ");
  HIBYTE(v65[1]) = -18;
  v26._countAndFlagsBits = v61;
  v45[0] = v20;
  v26._object = v20;
  String.append(_:)(v26);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = String._bridgeToObjectiveC()();
  v28 = [v46 predicateForAllEpisodesOnPodcastUuid:v27];

  v29 = EpisodeUserFilter.basePredicate.getter();
  v30 = [v28 AND:v29];

  static OS_dispatch_queue.main.getter();
  FetchedResultsCountPublisher.init(identifier:entityName:predicate:managedObjectContext:fetchLimit:receiveOn:)();
  v31 = v50;
  Publisher.map<A>(_:)();
  v25(v10, v24);
  type metadata accessor for CoreDataFetcher();
  v32 = static OS_dispatch_queue.main.getter();
  sub_100168088(&qword_100573BD8, &qword_1004012A0);
  v33 = static CoreDataFetcher.performAndPublishOnPodcast<A>(with:queue:block:)();

  v65[0] = v33;
  v35 = v53;
  v34 = v54;
  v36 = *(v53 + 16);
  v36(v51, v64, v54);
  v36(v52, v31, v34);

  sub_100168088(&qword_100573BE0, &qword_1004012A8);
  sub_100009FAC(&qword_100573BE8, &qword_100573BE0, &qword_1004012A8, &protocol conformance descriptor for Future<A, B>);
  sub_100009FAC(&qword_100573BF0, &qword_100575D10, &qword_100402E90, &protocol conformance descriptor for Publishers.Map<A, B>);
  v37 = v55;
  v38 = v34;
  Publishers.CombineLatest3.init(_:_:_:)();
  sub_100168088(&qword_100573BF8, &qword_1004012B0);
  sub_100009FAC(&qword_100573C00, &qword_100573BB8, &qword_100401288, &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>);
  v39 = v56;
  v40 = v58;
  Publisher.map<A>(_:)();
  (*(v59 + 8))(v37, v40);
  sub_100009FAC(&qword_100573C08, &unk_100573BC0, &unk_100401290, &protocol conformance descriptor for Publishers.Map<A, B>);
  v41 = v57;
  v42 = Publisher.eraseToAnyPublisher()();

  (*(v60 + 8))(v39, v41);
  v43 = *(v35 + 8);
  v43(v31, v38);
  v43(v64, v38);
  return v42;
}

uint64_t LibraryDataProvider.episodeListCountPublisher(settings:)(__n128 a1)
{
  v2 = type metadata accessor for FetchedResultsCountPublisher();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v13[1] = 0xD00000000000001ALL;
  v13[2] = 0x8000000100465C90;
  EpisodeListSettings.listType.getter();
  v6 = EpisodeListType.description.getter();
  v8 = v7;
  sub_100018888(v14);
  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  EpisodeListSettings.predicate.getter();
  v10 = [*(v1 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  static OS_dispatch_queue.main.getter();
  FetchedResultsCountPublisher.init(identifier:entityName:predicate:managedObjectContext:fetchLimit:receiveOn:)();
  sub_10000F084(&qword_100573BD0, &type metadata accessor for FetchedResultsCountPublisher, &protocol conformance descriptor for FetchedResultsCountPublisher);
  v11 = Publisher.eraseToAnyPublisher()();
  (*(v3 + 8))(v5, v2);
  return v11;
}

uint64_t LibraryDataProvider.seeAllEpisodesShelfPublisher(settings:pageSize:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_100168088(&qword_100573C28, &qword_1004012C0);
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v16 - v8;
  v10 = [*&v2[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider] privateQueueContext];
  v17 = a1;
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = a2;
  v11[4] = v10;
  v12 = v2;
  v16 = v10;
  sub_100168088(&unk_100573C30, &qword_1004012C8);
  sub_100168088(&qword_10057FA80, &qword_1004012D0);
  sub_100009FAC(&qword_100573C40, &unk_100573C30, &qword_1004012C8, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  sub_100009FAC(&qword_100573C48, &qword_100573C28, &qword_1004012C0, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_100009FAC(&qword_100573C50, &qword_10057FA80, &qword_1004012D0, &protocol conformance descriptor for AnyPaginatedPublisher<A, B>);
  v13 = Publisher<>.paginatedSwitchToLatest()();
  (*(v6 + 8))(v9, v5);
  v17 = v13;
  v14 = PaginatedPublisher.paginatedBufferedMulticast()();

  return v14;
}

uint64_t LibraryDataProvider.episodeListSettingsPublisher(listType:)(uint64_t a1)
{
  v26 = sub_100168088(&qword_100573C58, &qword_1004012D8);
  v29 = *(v26 - 8);
  __chkstk_darwin();
  v21 = &v20 - v2;
  v3 = sub_100168088(&qword_100573C60, &qword_1004012E0);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  __chkstk_darwin();
  v22 = &v20 - v5;
  v6 = sub_100190528(a1);
  LibraryDataProvider.libraryActionController.getter(v30);
  sub_1000044A0(v30, v31);
  v7 = dispatch thunk of LibraryActionControllerProtocol.pubDateLimitPublisher(forListType:)();
  sub_100004590(v30);
  LibraryDataProvider.libraryActionController.getter(v30);
  sub_1000044A0(v30, v31);
  v8 = dispatch thunk of LibraryActionControllerProtocol.hidesPlayedEpisodesPublisher(forListType:)();
  v23 = v8;
  sub_100004590(v30);
  v24 = v7;
  v25 = v6;
  v30[0] = v6;
  v32 = v8;
  v33 = v7;

  v20 = sub_100168088(&qword_100573C68, &qword_1004012E8);
  sub_100168088(&qword_100573C70, &qword_1004012F0);
  sub_100168088(&unk_1005783E0, &unk_100405860);
  sub_100009FAC(&qword_100573C78, &qword_100573C68, &qword_1004012E8, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100009FAC(&qword_100573C80, &qword_100573C70, &qword_1004012F0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100009FAC(&qword_10057DE80, &unk_1005783E0, &unk_100405860, &protocol conformance descriptor for AnyPublisher<A, B>);
  v9 = v21;
  Publishers.CombineLatest3.init(_:_:_:)();
  v10 = swift_allocObject();
  v11 = *(a1 + 48);
  *(v10 + 48) = *(a1 + 32);
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a1 + 64);
  v12 = *(a1 + 16);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10019C1D0;
  *(v13 + 24) = v10;
  sub_10019BB44(a1, v30);
  type metadata accessor for EpisodeListSettings();
  sub_100009FAC(&qword_100573C88, &qword_100573C58, &qword_1004012D8, &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>);
  v14 = v22;
  v15 = v26;
  Publisher.map<A>(_:)();

  (*(v29 + 8))(v9, v15);
  sub_100009FAC(&qword_100573C90, &qword_100573C60, &qword_1004012E0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v16 = v27;
  v17 = Publisher.bufferedMulticast()();
  (*(v28 + 8))(v14, v16);
  v30[0] = v17;
  sub_100168088(&unk_100573C30, &qword_1004012C8);
  sub_100009FAC(&qword_100573C40, &unk_100573C30, &qword_1004012C8, &protocol conformance descriptor for AnyPublisher<A, B>);
  v18 = Publisher.eraseToAnyPublisher()();

  return v18;
}

uint64_t LibraryDataProvider.episodeListShelfPublisher(episodeSettingsPublisher:pageSize:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100168088(&qword_100573C98, &qword_1004012F8);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v23 - v8;
  v10 = sub_100168088(&qword_100573CA0, &qword_100401300);
  v11 = *(v10 - 8);
  v24 = v10;
  v25 = v11;
  *&v12 = __chkstk_darwin().n128_u64[0];
  v14 = &v23 - v13;
  v15 = [*(v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  v26 = a1;
  sub_100168088(&unk_100573C30, &qword_1004012C8);
  sub_100009FAC(&qword_100573C40, &unk_100573C30, &qword_1004012C8, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10000F084(&qword_100573CA8, &type metadata accessor for EpisodeListSettings, &protocol conformance descriptor for EpisodeListSettings);
  Publisher<>.removeDuplicates()();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = v15;
  v18 = v15;
  sub_100168088(&qword_10057FA80, &qword_1004012D0);
  sub_100009FAC(&qword_100573CB0, &qword_100573C98, &qword_1004012F8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  Publisher.compactMap<A>(_:)();

  (*(v7 + 8))(v9, v6);
  sub_100009FAC(&qword_100573CB8, &qword_100573CA0, &qword_100401300, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_100009FAC(&qword_100573C50, &qword_10057FA80, &qword_1004012D0, &protocol conformance descriptor for AnyPaginatedPublisher<A, B>);
  v19 = v24;
  v20 = Publisher<>.paginatedSwitchToLatest()();
  (*(v25 + 8))(v14, v19);
  v26 = v20;
  v21 = PaginatedPublisher.paginatedBufferedMulticast()();

  return v21;
}

uint64_t sub_10018A4F8(uint64_t a1, uint64_t a2)
{
  sub_100168088(&qword_100573CC0, &qword_100401308);
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  static OS_os_log.libraryLoadingSignpost.getter();
  v2 = Promise.init(signpost:log:metadata:logResult:)();
  type metadata accessor for CoreDataFetcher();

  static CoreDataFetcher.fetchStation(with:completion:)();

  return v2;
}

uint64_t LibraryDataProvider.fetchStationDetail(with:)(uint64_t a1, uint64_t a2)
{
  sub_100168088(&qword_100573CC0, &qword_100401308);
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  static OS_os_log.libraryLoadingSignpost.getter();
  v2 = Promise.init(signpost:log:metadata:logResult:)();
  type metadata accessor for CoreDataFetcher();

  static CoreDataFetcher.fetchStation(with:completion:)();

  return v2;
}

uint64_t LibraryDataProvider.fetchStationDetailObserver(with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100168088(&qword_100573CC8, &qword_100401310);
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  static OS_os_log.libraryLoadingSignpost.getter();
  v6 = Promise.init(signpost:log:metadata:logResult:)();
  v7 = [*(v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v6;
  v11[4] = sub_10019C28C;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000F038;
  v11[3] = &unk_1004E1960;
  v9 = _Block_copy(v11);

  [v7 performBlock:v9];
  _Block_release(v9);

  return v6;
}

uint64_t LibraryDataProvider.stationDetailPublisher(uuid:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v24 = sub_100168088(&qword_100573CD0, &qword_100401318);
  v6 = *(v24 - 8);
  __chkstk_darwin();
  v8 = v22 - v7;
  v23 = sub_100168088(&qword_100573CD8, &qword_100401320);
  v9 = *(v23 - 8);
  __chkstk_darwin();
  v11 = v22 - v10;
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v25 = 0xD000000000000018;
  v26 = 0x8000000100465D00;
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  String.append(_:)(v12);
  v22[0] = v26;
  v22[1] = v25;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = objc_opt_self();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 predicateForVisiblePlaylistWithUUID:v14];

  v16 = [*(v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  static OS_dispatch_queue.main.getter();
  type metadata accessor for StationDetail();
  sub_100009F1C(0, &qword_100573CE0, MTPlaylist_ptr);
  FetchedResultsSingleItemPublisher.init(identifier:entityName:predicate:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
  sub_100009FAC(&qword_100573CE8, &qword_100573CD0, &qword_100401318, &protocol conformance descriptor for FetchedResultsSingleItemPublisher<A, B>);
  v17 = v24;
  Publisher.tryMap<A>(_:)();
  (*(v6 + 8))(v8, v17);
  sub_100009FAC(&qword_100573CF0, &qword_100573CD8, &qword_100401320, &protocol conformance descriptor for Publishers.TryMap<A, B>);
  v18 = v23;
  v19 = Publisher.bufferedMulticast()();
  (*(v9 + 8))(v11, v18);
  v25 = v19;
  sub_100168088(&qword_100573CF8, &qword_100401328);
  sub_100009FAC(&qword_100573D00, &qword_100573CF8, &qword_100401328, &protocol conformance descriptor for AnyPublisher<A, B>);
  v20 = Publisher.eraseToAnyPublisher()();

  return v20;
}

uint64_t LibraryDataProvider.stationDetailEpisodesPublisher(stationPublisher:pageSize:)(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v30 = sub_100168088(&qword_100573D08, &qword_100401330);
  v4 = *(v30 - 8);
  __chkstk_darwin();
  v6 = &v29 - v5;
  v32 = sub_100168088(&qword_100573D10, &qword_100401338);
  v34 = *(v32 - 8);
  __chkstk_darwin();
  v8 = &v29 - v7;
  v33 = sub_100168088(&qword_100573D18, &qword_100401340);
  v35 = *(v33 - 8);
  __chkstk_darwin();
  v10 = &v29 - v9;
  v11 = sub_100168088(&qword_100573D20, &qword_100401348);
  v12 = *(v11 - 8);
  v36 = v11;
  v37 = v12;
  *&v13 = __chkstk_darwin().n128_u64[0];
  v15 = &v29 - v14;
  v16 = [*(v2 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  v38 = a1;
  sub_100168088(&qword_100573D28, &qword_100401350);
  type metadata accessor for LibraryDataProvider._Station(0);
  sub_100009FAC(&qword_100573D30, &qword_100573D28, &qword_100401350, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();
  sub_100009FAC(&qword_100573D38, &qword_100573D08, &qword_100401330, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_10000F084(&qword_100573D40, type metadata accessor for LibraryDataProvider._Station, &unk_1004016DC);
  v17 = v30;
  Publisher<>.removeDuplicates()();
  (*(v4 + 8))(v6, v17);
  v18 = swift_allocObject();
  v19 = v29;
  v20 = v31;
  v18[2] = v29;
  v18[3] = v20;
  v18[4] = v16;
  v21 = v19;
  v22 = v16;
  sub_100168088(&qword_100573D48, &qword_100401358);
  sub_100009FAC(&qword_100573D50, &qword_100573D10, &qword_100401338, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v23 = v32;
  Publisher.compactMap<A>(_:)();

  (*(v34 + 8))(v8, v23);
  sub_100168088(&qword_100573D58, &qword_100401360);
  v24 = v33;
  Publishers.CompactMap.map<A>(_:)();
  (*(v35 + 8))(v10, v24);
  sub_100009FAC(&qword_100573D60, &qword_100573D20, &qword_100401348, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_100009FAC(&qword_100573D68, &qword_100573D58, &qword_100401360, &protocol conformance descriptor for AnyPaginatedPublisher<A, B>);
  v25 = v36;
  v26 = Publisher<>.paginatedSwitchToLatest()();
  (*(v37 + 8))(v15, v25);
  v38 = v26;
  v27 = PaginatedPublisher.paginatedBufferedMulticast()();

  return v27;
}

uint64_t LibraryDataProvider.fetchGroupedSearchResults(term:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100168088(&unk_100573D70, &qword_100401368);
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  static OS_os_log.libraryLoadingSignpost.getter();
  v6 = Promise.init(signpost:log:metadata:logResult:)();
  v7 = [*(v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v6;
  v11[4] = sub_10019C304;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000F038;
  v11[3] = &unk_1004E19D8;
  v9 = _Block_copy(v11);

  [v7 performBlock:v9];
  _Block_release(v9);

  return v6;
}

Swift::Bool __swiftcall LibraryDataProvider.hasFollowedShows()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) mainOrPrivateContext];
  v2 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  v3 = [objc_opt_self() predicateForSubscribedAndNotHidden];
  [v2 setPredicate:v3];

  [v2 setFetchLimit:1];
  NSManagedObjectContext.performAndWait<A>(_:)();

  return v5;
}

uint64_t LibraryDataProvider.addApplicationBackgroundDependencies(to:)()
{
  sub_100168088(&unk_10057AAC0, &qword_100401370);
  v13 = v0;
  v14 = sub_10000F084(&qword_100573D80, type metadata accessor for LibraryDataProvider, &protocol conformance descriptor for LibraryDataProvider);
  v1 = v0;
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&qword_100573D88, &qword_100401378);
  v13 = *&v1[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_episodeBookmarkStateController];

  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&unk_100573D90, &unk_100401380);
  v13 = *&v1[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_episodeDownloadStateController];

  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&unk_10057A4A0, &qword_100409850);
  v13 = *&v1[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_episodePlayStateController];

  BaseObjectGraph.satisfying<A>(_:with:)();

  type metadata accessor for PodcastStateController();
  v13 = *&v1[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_podcastStateController];

  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&qword_100573DA0, &qword_100401390);
  if (qword_100572820 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static PodcastsStateCoordinator.shared;
  v15 = type metadata accessor for PodcastsStateCoordinator();
  v16 = sub_10000F084(&qword_100573DA8, type metadata accessor for PodcastsStateCoordinator, &protocol conformance descriptor for PodcastsStateCoordinator);
  v13 = v2;
  v3 = v2;
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100004590(&v13);
  v13 = static PodcastsStateCoordinator.shared;
  v4 = static PodcastsStateCoordinator.shared;
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&qword_100573DB0, &qword_100401398);
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&qword_100573DB8, &unk_1004013A0);
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&qword_100573DC0, &unk_1004013B0);
  v13 = *&v1[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_episodeDownloadStateControllerProvider];
  v5 = v13;
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&unk_100573DD0, &unk_1004104A0);
  v13 = *&v1[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_hudPresenter];
  v14 = &off_1004F1118;

  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&unk_10057AAD0, &qword_1004013C0);
  sub_100009F1C(0, &qword_100573DE0, off_1004D1AD8);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v13 = v6;
  v14 = &off_1004EBEC8;
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&qword_100573DE8, &qword_1004013C8);
  sub_100009F1C(0, &unk_100573DF0, off_1004D1B48);
  v7 = [swift_getObjCClassFromMetadata() sharedInstance];
  v13 = v7;
  v14 = &off_1004E8B18;
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&unk_10057AAE0, &qword_1004013D0);
  sub_100009F1C(0, &qword_100573E00, off_1004D1B18);
  v8 = [swift_getObjCClassFromMetadata() sharedInstance];
  v9 = sub_100024384(&qword_10057AC50, &qword_100573E00, off_1004D1B18, &protocol conformance descriptor for MTNotificationManager);
  v13 = v8;
  v14 = v9;
  BaseObjectGraph.satisfying<A>(_:with:)();

  type metadata accessor for TranscriptReportConcernURLBuilder();
  v13 = swift_allocObject();
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&unk_100573E10, &qword_1004013D8);
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&unk_10057AAF0, &unk_1004013E0);
  sub_100009F1C(0, &unk_100573E20, off_1004D1B80);
  v10 = [swift_getObjCClassFromMetadata() sharedInstance];
  v13 = v10;
  v14 = &off_1004EE0B0;
  BaseObjectGraph.satisfying<A>(_:with:)();

  type metadata accessor for LibraryActionController();
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&qword_10057E670, &unk_100405FE0);
  v11 = BaseObjectGraph.satisfying<A>(_:with:)();

  *&v1[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_objectGraph] = v11;

  return v11;
}

void sub_10018BBCC(unint64_t a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  sub_100168088(&qword_100573A78, &qword_10040FDF0);
  __chkstk_darwin();
  v16 = &v16 - v3;
  sub_100168088(&unk_100573A80, &unk_100401160);
  __chkstk_darwin();
  v5 = &v16 - v4;
  v21 = _swiftEmptyArrayStorage;
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_20:
    v8 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

LABEL_19:
  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_3:
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  do
  {
    v9 = v7;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for Episode();
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      v12 = v11;
      if (Episode.__allocating_init(from:clickAction:wantsListenNowReason:)())
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_21;
      }
    }

    v13 = type metadata accessor for EpisodeListSettings();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    v14 = type metadata accessor for SectionContext();
    v15 = v16;
    (*(*(v14 - 8) + 56))(v16, 1, 1, v14);
    static MetricsDataConfiguration.search.getter();
    dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)();
    v29 = v22;
    sub_100009104(&v29, &unk_100574650, &unk_1004023C0);
    v28 = v23;
    sub_100009104(&v28, &unk_100573A90, &unk_100401170);
    v27 = v24;
    sub_100009104(&v27, &unk_100574660, &unk_1004023D0);
    sub_1000112B4(v25, v26);

    sub_100009104(v15, &qword_100573A78, &qword_10040FDF0);
    sub_100009104(v5, &unk_100573A80, &unk_100401160);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v8 = v21;
  }

  while (v7 != v6);
LABEL_21:
  *v17 = v8;
}

void sub_10018BF30(unint64_t a1@<X0>, void *a2@<X8>)
{
  v11 = a2;
  type metadata accessor for ShowLockupStyle();
  __chkstk_darwin();
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v12 = _swiftEmptyArrayStorage;
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    type metadata accessor for LibraryShowLockup();
    static MetricsDataConfiguration.search.getter();
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v19 = -1;
    ShowLockupStyle.init(includesOfferButton:defaultSubtitle:unfollowedSubtitle:groupedEpisodesListType:)();
    ++v6;
    if (sub_100032D90(v8, v4, v14))
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v12 = v13;
      v6 = v9;
    }
  }

  *v11 = v12;
}

unint64_t sub_10018C10C@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  v2 = result;
  if (result >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v9 = a2;
      v5 = 0;
      a2 = &unk_1004023D0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v6 = *(v2 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        type metadata accessor for LegacyChannelLockup();
        static MetricsDataConfiguration.search.getter();
        sub_100357920(v7, 1, &v10);
        v17 = v10;
        sub_100009104(&v17, &unk_100574650, &unk_1004023C0);
        v16 = v11;
        sub_100009104(&v16, &unk_100573A90, &unk_100401170);
        v15 = v12;
        sub_100009104(&v15, &unk_100574660, &unk_1004023D0);
        sub_1000112B4(v13, v14);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v5;
        if (v8 == v4)
        {
          a2 = v9;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      result = _CocoaArrayWrapper.endIndex.getter();
      v4 = result;
    }

    while (result);
  }

LABEL_16:
  *a2 = _swiftEmptyArrayStorage;
  return result;
}

unint64_t sub_10018C2EC@<X0>(Swift::OpaquePointer a1@<0:X1>, void *a2@<X8>)
{
  result = NSManagedObjectContext.unsafeCategories(for:)(a1);
  v4 = _swiftEmptyArrayStorage;
  if (result)
  {
    v5 = result;
    v11 = _swiftEmptyArrayStorage;
    v6 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v8 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v6 + 16))
          {
            goto LABEL_17;
          }

          v9 = *(v5 + 8 * v8 + 32);
        }

        v4 = v9;
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        type metadata accessor for LegacyCategoryLockup();
        static MetricsDataConfiguration.search.getter();
        LegacyCategoryLockup.__allocating_init(from:configuration:)();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v4 = &v11;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v8;
        if (v10 == i)
        {
          v4 = v11;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_14:
  }

  *a2 = v4;
  return result;
}

uint64_t sub_10018C514()
{
  sub_100168088(&qword_100574338, &qword_100401920);
  sub_100168088(&qword_100574340, &qword_100401928);
  FRPOutput.content.getter();
  FRPOutput.content.getter();
  return RecommendationsMetadata.Categories.init(from:dislikedInterests:)();
}

uint64_t sub_10018C5AC(uint64_t *a1)
{
  sub_100168088(&qword_100574328, &qword_100401910);

  sub_100168088(&qword_100574330, &qword_100401918);
  FRPOutput.content.getter();
  FRPOutput.content.getter();
  return RecommendationsMetadata.Channels.init(from:favoritedChannels:dislikedChannels:)();
}

uint64_t sub_10018C664(unint64_t a1)
{
  v1 = sub_10037F7E0(a1);
  if (!v1)
  {
    v1 = _swiftEmptyArrayStorage;
  }

  return RecommendationsMetadata.Episodes.init(from:)(v1);
}

uint64_t sub_10018C6AC(uint64_t *a1)
{
  sub_100168088(&qword_100574300, &qword_1004018F0);

  sub_100168088(&qword_100574308, &qword_1004018F8);
  FRPOutput.content.getter();
  return RecommendationsMetadata.Shows.init(from:dislikedPodcasts:)();
}

void *sub_10018C734@<X0>(void *a3@<X8>)
{
  type metadata accessor for Array();
  type metadata accessor for FRPOutput();
  result = FRPOutput.content.getter();
  *a3 = v6;
  return result;
}

uint64_t sub_10018C78C(uint64_t a1)
{
  type metadata accessor for StationListOptions();
  v2 = __chkstk_darwin();
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1, v2);
  v6 = objc_allocWithZone(type metadata accessor for StationListObserver(0));
  v7 = sub_100037C20(v4);
  v11 = v7;
  sub_10000F084(&qword_1005742F8, type metadata accessor for StationListObserver, &unk_10040F458);
  v8 = Observer.eraseToAnyObserver()();

  v11 = v8;
  Promise.resolve(_:)();
}

void *sub_10018C8D8@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    v3 = result;
    type metadata accessor for ChannelDetail();
    v4 = v3;
    result = ChannelDetail.__allocating_init(from:)();
  }

  *a2 = result;
  return result;
}

uint64_t sub_10018C924()
{
  v0 = [objc_allocWithZone(type metadata accessor for ChannelListObserver()) init];
  sub_10000F084(&qword_1005742F0, type metadata accessor for ChannelListObserver, &unk_100401B48);
  Observer.eraseToAnyObserver()();

  Promise.resolve(_:)();
}

id sub_10018C9DC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 subscriptionActive];
  *a2 = result;
  return result;
}

void sub_10018CA30(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for LegacyChannelLockup();
  v4 = a1;
  static MetricsDataConfiguration.default.getter();
  sub_100357920(v4, 256, &v7);
  v6 = v5;
  v14 = v7;
  sub_100009104(&v14, &unk_100574650, &unk_1004023C0);
  v13 = v8;
  sub_100009104(&v13, &unk_100573A90, &unk_100401170);
  v12 = v9;
  sub_100009104(&v12, &unk_100574660, &unk_1004023D0);
  sub_1000112B4(v10, v11);

  *a2 = v6;
}

uint64_t sub_10018CB08(uint64_t a1, char a2)
{
  type metadata accessor for ShowCountObserver();
  swift_allocObject();
  sub_1000319E0(a1, a2 & 1);
  sub_10000F084(&qword_1005742E8, type metadata accessor for ShowCountObserver, &unk_1004094D4);
  Observer.eraseToAnyObserver()();

  Promise.resolve(_:)();
}

uint64_t sub_10018CBDC()
{
  type metadata accessor for StationCountObserver();
  swift_allocObject();
  sub_1002A97A4();
  sub_10000F084(&qword_1005742E0, type metadata accessor for StationCountObserver, &unk_100409298);
  Observer.eraseToAnyObserver()();

  Promise.resolve(_:)();
}

uint64_t sub_10018CC9C()
{
  v0 = type metadata accessor for DownloadCountObserver();
  sub_100009F1C(0, &qword_1005742D0, MTLegacyDownloadManagerProvider_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [ObjCClassFromMetadata sharedInstance];
  v3 = [v2 downloadManager];

  ObjectType = swift_getObjectType();
  v5 = [ObjCClassFromMetadata sharedInstance];
  v6 = [v5 downloadsNotifier];

  v7 = sub_10034E790(v3, v6, 0, 0, v0, ObjectType);
  sub_10000F084(&qword_1005742D8, type metadata accessor for DownloadCountObserver, &unk_10040E9D8);
  Observer.eraseToAnyObserver()();

  Promise.resolve(_:)();
}

uint64_t sub_10018CDFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadCountObserver();
  sub_100009F1C(0, &qword_1005742D0, MTLegacyDownloadManagerProvider_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [ObjCClassFromMetadata sharedInstance];
  v7 = [v6 downloadManager];

  ObjectType = swift_getObjectType();
  v9 = [ObjCClassFromMetadata sharedInstance];
  v10 = [v9 downloadsNotifier];

  v11 = sub_10034E790(v7, v10, a1, a2, v4, ObjectType);
  sub_10000F084(&qword_1005742D8, type metadata accessor for DownloadCountObserver, &unk_10040E9D8);
  Observer.eraseToAnyObserver()();

  Promise.resolve(_:)();
}

uint64_t sub_10018CF74(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_100168088(&qword_100573B38, &qword_100401218);
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  static OS_os_log.libraryLoadingSignpost.getter();
  v6 = Promise.init(signpost:log:metadata:logResult:)();
  v7 = [*(v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v6;
  v12[4] = sub_1001A077C;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10000F038;
  v12[3] = &unk_1004E1EB0;
  v9 = _Block_copy(v12);
  v10 = a1;

  [v7 performBlock:v9];
  _Block_release(v9);

  return v6;
}

uint64_t sub_10018D100(void *a1, uint64_t a2)
{
  type metadata accessor for EpisodeCountObserver();
  swift_allocObject();

  sub_1002C22B8(a1, a2);
  sub_10000F084(&qword_1005742C8, type metadata accessor for EpisodeCountObserver, &unk_10040A3A8);
  Observer.eraseToAnyObserver()();

  Promise.resolve(_:)();
}

id sub_10018D1E4@<X0>(id result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = [result smartPlayEpisode];
    if (result)
    {
      type metadata accessor for Episode();
      result = Episode.__allocating_init(from:clickAction:wantsListenNowReason:)();
    }
  }

  *a2 = result;
  return result;
}

void sub_10018D25C(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  if (a1)
  {
    type metadata accessor for PodcastDetail();
    v4 = v2;
    v2 = static PodcastDetail.fullPodcastDetails(from:)();
  }

  *a2 = v2;
}

uint64_t sub_10018D2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CoreDataFetcher();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  static CoreDataFetcher.fetchPodcast(with:completion:)();
}

uint64_t sub_10018D368(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v52 = a4;
  v62 = a3;
  v63 = a2;
  v6 = type metadata accessor for ShowEpisodeCountHeaderData();
  v60 = *(v6 - 8);
  v61 = v6;
  __chkstk_darwin();
  v59 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v58 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowDestinationPageHeader();
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin();
  v57 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FlowPresentationContext();
  v50 = *(v11 - 8);
  v51 = v11;
  __chkstk_darwin();
  v65 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for FlowDestination();
  v48 = *(v49 - 8);
  __chkstk_darwin();
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v16 = &v44 - v15;
  v17 = type metadata accessor for ArtworkModel();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v53 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v44 - v20;
  Entity = type metadata accessor for FetchEntityError.ErrorDomain();
  v22 = *(Entity - 8);
  __chkstk_darwin();
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100168088(&qword_1005742A8, &unk_1004018E0);
  v26 = __chkstk_darwin();
  v28 = &v44 - v27;
  if (a1)
  {
    v47 = v25;
    v29 = a1;
    v30 = [v29 title];
    if (v30)
    {
      v31 = v30;
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v45 = 0;
    }

    MTPodcast.artworkModel.getter();
    v33 = *(v18 + 48);
    v34 = v33(v16, 1, v17);
    v46 = v29;
    if (v34 == 1)
    {
      static ArtworkModel.placeholder.getter();
      if (v33(v16, 1, v17) != 1)
      {
        sub_100009104(v16, &unk_100578C10, &qword_100400B60);
      }
    }

    else
    {
      sub_1001A06C0(v16, v64, &type metadata accessor for ArtworkModel);
    }

    v35 = v54;
    *v14 = v52;
    v14[1] = v35;
    (*(v48 + 104))(v14, enum case for FlowDestination.podcastUUID(_:), v49);
    (*(v50 + 104))(v65, enum case for FlowPresentationContext.infer(_:), v51);
    sub_100168088(&qword_1005742B0, &qword_100406C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007C0;

    v37 = static Link.Presentation.textFollowsTintColor.getter();
    *(inited + 32) = v37;
    v38 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(inited + 33) = v38;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v37)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v38)
    {
      Link.Presentation.init(rawValue:)();
    }

    v39 = v63;
    (*(v55 + 104))(v57, enum case for FlowDestinationPageHeader.standard(_:), v56);
    static ActionMetrics.notInstrumented.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();

    FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
    v40 = v64;
    sub_1001A05FC(v64, v53, &type metadata accessor for ArtworkModel);

    v41 = v59;
    ShowEpisodeCountHeaderData.init(title:artwork:action:)();
    v43 = v60;
    v42 = v61;
    (*(v60 + 16))(v28, v41, v61);
    swift_storeEnumTagMultiPayload();
    v39(v28);

    sub_100009104(v28, &qword_1005742A8, &unk_1004018E0);
    (*(v43 + 8))(v41, v42);
    return sub_1001A0664(v40);
  }

  else
  {
    (*(v22 + 104))(v24, enum case for FetchEntityError.ErrorDomain.fetchShowEpisodeCountHeaderData(_:), Entity, v26);
    FetchEntityError.init(domain:)();
    swift_storeEnumTagMultiPayload();
    v63(v28);
    return sub_100009104(v28, &qword_1005742A8, &unk_1004018E0);
  }
}

void *sub_10018DB84@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    v3 = result;
    type metadata accessor for PodcastDetail();
    v4 = v3;
    result = PodcastDetail.__allocating_init(from:episodes:episodeToPlay:seasonToShow:)();
  }

  *a2 = result;
  return result;
}