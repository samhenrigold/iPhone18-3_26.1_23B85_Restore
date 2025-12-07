uint64_t sub_1000017CC(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_100016924();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v2[18] = *(v4 + 64);
  v2[19] = swift_task_alloc();
  sub_100009F00(&qword_100020980, qword_100017570);
  v2[20] = swift_task_alloc();
  v5 = sub_1000168B4();
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_100001958, 0, 0);
}

uint64_t sub_100001958()
{
  v69 = v0;
  if (qword_100020750 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = sub_100016A24();
  v4 = v3;
  type metadata accessor for BiomeBookmarkProvider();
  inited = swift_initStackObject();
  v6 = objc_allocWithZone(NSUserDefaults);
  v7 = sub_100016DF4();
  v8 = [v6 initWithSuiteName:v7];

  inited[2] = v8;
  inited[3] = v2;
  inited[4] = v4;
  v68[0] = v2;
  v68[1] = v4;

  v71._object = 0x8000000100017BB0;
  v71._countAndFlagsBits = 0xD000000000000015;
  sub_100016E34(v71);
  inited[5] = v2;
  inited[6] = v4;
  sub_10000E8A8(v1);
  sub_1000168A4();
  if (qword_100020760 != -1)
  {
    swift_once();
  }

  v10 = v0[26];
  v9 = v0[27];
  v12 = v0[24];
  v11 = v0[25];
  v14 = v0[21];
  v13 = v0[22];
  v15 = sub_100016D94();
  sub_10000BD98(v15, qword_100020F88);
  v16 = *(v13 + 16);
  v16(v11, v9, v14);
  v67 = v16;
  v16(v12, v10, v14);
  v17 = sub_100016D74();
  v18 = sub_100016E64();
  v19 = os_log_type_enabled(v17, v18);
  v21 = v0[24];
  v20 = v0[25];
  v23 = v0[21];
  v22 = v0[22];
  if (v19)
  {
    v24 = swift_slowAlloc();
    v68[0] = swift_slowAlloc();
    *v24 = 136315394;
    v65 = v18;
    v25 = inited;
    v26 = sub_100016874();
    v28 = v27;
    log = v17;
    v29 = *(v22 + 8);
    v29(v20, v23);
    v30 = v26;
    inited = v25;
    v31 = sub_100015464(v30, v28, v68);

    *(v24 + 4) = v31;
    *(v24 + 12) = 2080;
    v32 = sub_100016874();
    v34 = v33;
    v35 = v23;
    v36 = v29;
    v29(v21, v35);
    v37 = sub_100015464(v32, v34, v68);

    *(v24 + 14) = v37;
    _os_log_impl(&_mh_execute_header, log, v65, "BMPublisherOptions Start date %s end date %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v38 = *(v22 + 8);
    v38(v21, v23);
    v39 = v23;
    v36 = v38;
    v38(v20, v39);
  }

  v41 = v0[21];
  v40 = v0[22];
  v42 = v0[20];
  v67(v42, v0[26], v41);
  (*(v40 + 56))(v42, 0, 1, v41);
  v43.super.isa = sub_100016884().super.isa;
  if ((*(v40 + 48))(v42, 1, v41) == 1)
  {
    isa = 0;
  }

  else
  {
    v45 = v0[21];
    v46 = v0[20];
    isa = sub_100016884().super.isa;
    v36(v46, v45);
  }

  v47 = [objc_allocWithZone(BMPublisherOptions) initWithStartDate:v43.super.isa endDate:isa maxEvents:0 lastN:0 reversed:0];

  sub_100016A34();
  sub_10000C49C(&qword_100020988, 255, &type metadata accessor for Library.Streams.GenerativeModels.GenerativeFunctions.Instrumentation, &protocol conformance descriptor for Library.Streams.GenerativeModels.GenerativeFunctions.Instrumentation);
  v48 = v47;
  sub_100016A44();
  v49 = v0[26];
  v63 = v0[27];
  v66 = v0[23];
  v50 = v0[21];
  v51 = v0[19];
  v62 = v36;
  v53 = v0[16];
  v52 = v0[17];
  v54 = v0[14];
  v55 = v0[15];

  sub_10000C4E4(v0 + 9, v0[12]);
  (*(v52 + 16))(v51, v54, v53);
  v61 = v48;
  v56 = inited;
  v57 = (*(v52 + 80) + 24) & ~*(v52 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = v55;
  (*(v52 + 32))(v58 + v57, v51, v53);

  sub_100016DA4();

  v67(v66, v49, v50);
  sub_10000EDE4(v66);
  swift_setDeallocating();

  v62(v49, v50);
  v62(v63, v50);
  sub_10000C658(v0 + 9);

  v59 = v0[1];

  return v59();
}

void sub_1000020DC(uint64_t *a1)
{
  if (!*a1)
  {
    if (qword_100020760 != -1)
    {
      swift_once();
    }

    v6 = sub_100016D94();
    sub_10000BD98(v6, qword_100020F88);
    oslog = sub_100016D74();
    v7 = sub_100016E64();
    if (!os_log_type_enabled(oslog, v7))
    {
      goto LABEL_11;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v7, "Polling biome stream has finished", v8, 2u);
LABEL_10:

LABEL_11:

    return;
  }

  if (qword_100020760 != -1)
  {
    swift_once();
  }

  v1 = sub_100016D94();
  sub_10000BD98(v1, qword_100020F88);
  swift_errorRetain();
  oslog = sub_100016D74();
  v2 = sub_100016E84();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Polling biome stream has failed: %@", v3, 0xCu);
    sub_10000C3E4(v4, &qword_100020950, &qword_100017550);

    goto LABEL_10;
  }
}

BOOL sub_100002304(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v6 = sub_100016D94();
  sub_10000BD98(v6, qword_100020FA0);

  v7 = sub_100016D74();
  v8 = sub_100016E74();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    if (a2)
    {
      v11 = a1;
    }

    else
    {
      v11 = 0x7974706D65;
    }

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v13 = sub_100015464(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "check  useCaseString%s", v9, 0xCu);
    sub_10000C658(v10);
  }

  result = 0;
  if (*(v3 + 16) == 1)
  {
    if (a2)
    {

      return sub_100016020(a1, a2) != 5;
    }
  }

  return result;
}

void sub_1000024C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v94 = a3;
  v108 = a1;
  v6 = sub_100009F00(&qword_100020900, &qword_100017528);
  __chkstk_darwin(v6 - 8);
  v93 = &v91 - v7;
  v8 = sub_100009F00(&qword_100020918, &qword_100017538);
  __chkstk_darwin(v8 - 8);
  v106 = (&v91 - v9);
  v10 = sub_100016954();
  v96 = *(v10 - 8);
  v97 = v10;
  __chkstk_darwin(v10);
  v95 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100016BD4();
  v99 = *(v12 - 8);
  v100 = v12;
  __chkstk_darwin(v12);
  v98 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100016904();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v101 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v91 - v18;
  v20 = sub_100016B14();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v103 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v91 - v24;
  v26 = a2;
  sub_100016B24();
  v27 = sub_100016AD4();
  v29 = v28;
  v30 = *(v21 + 8);
  v104 = v21 + 8;
  v105 = v20;
  v102 = v30;
  v30(v25, v20);
  if (v29)
  {
    v31 = v27;
  }

  else
  {
    v31 = 0x7974706D65;
  }

  if (!v29)
  {
    v29 = 0xE500000000000000;
  }

  v107 = v4;
  v32 = *(v4 + 80);
  v111[0] = v31;
  v111[1] = v29;
  v110 = v111;
  if (sub_10000A138(sub_10000C6B0, v109, v32))
  {

    v33 = *(v15 + 16);
    v33(v19, v108, v14);
    v34 = v98;
    v35 = v99;
    v36 = v26;
    v37 = v100;
    (*(v99 + 16))(v98, v36, v100);
    v38 = sub_100016BB4();
    v91 = v39;
    type metadata accessor for GFILinkingEvent(0);
    v40 = swift_allocObject();
    v92 = v15;
    (*(v15 + 32))(v40 + OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_requestIdentifier, v19, v14);
    (*(v35 + 32))(v40 + OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_event, v34, v37);
    v41 = v33;
    v42 = v108;
    *(v40 + OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_ingestor) = v107;
    v43 = (v40 + OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_eventType);
    v44 = v91;
    *v43 = v38;
    v43[1] = v44;
    v33(v19, v42, v14);
    swift_beginAccess();

    v107 = v40;
    sub_1000030E4(v45, v19, sub_10000C6AC, sub_10000C6AC);
    swift_endAccess();
    v46 = v14;
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v47 = sub_100016D94();
    sub_10000BD98(v47, qword_100020FA0);
    v48 = v101;
    v41(v101, v42, v14);
    v49 = sub_100016D74();
    v50 = sub_100016E74();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v111[0] = v52;
      *v51 = 136315138;
      sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v53 = sub_100016F84();
      v55 = v54;
      (*(v92 + 8))(v48, v46);
      v56 = sub_100015464(v53, v55, v111);

      *(v51 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v49, v50, "Created a new bufferForLinkingEvents event with modelMangerID %s", v51, 0xCu);
      sub_10000C658(v52);
    }

    else
    {

      (*(v92 + 8))(v48, v14);
    }

    v63 = v106;
    v64 = v103;
    sub_100016B24();
    sub_100016AE4();
    v66 = v65;
    v102(v64, v105);
    if (v66)
    {
      sub_1000168D4();
      sub_10000C6CC(46, 0x3Eu, v67, v63);

      v68 = sub_100009F00(&qword_100020778, &unk_1000176A0);
      if ((*(*(v68 - 8) + 48))(v63, 1, v68) != 1)
      {
        v69 = *v63;
        v71 = v95;
        v70 = v96;
        v72 = v63 + *(v68 + 48);
        v73 = v97;
        (*(v96 + 32))(v95, v72, v97);
        v74 = v93;
        (*(v70 + 16))(v93, v71, v73);
        (*(v70 + 56))(v74, 0, 1, v73);
        v75 = v69;
        sub_10000BECC(v69, v94, v74, "emit SELF requestLink %s", "requestLink is nil", "Failed to emit requestLink to data pool, %@");

        sub_10000C3E4(v74, &qword_100020900, &qword_100017528);
        v76 = v75;
        v77 = sub_100016D74();
        v78 = sub_100016E74();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v111[0] = v80;
          *v79 = 136315138;
          v81 = [v76 formattedJsonBody];
          if (v81)
          {
            v82 = v81;
            v83 = sub_100016E04();
            v85 = v84;
          }

          else
          {
            v85 = 0xE500000000000000;
            v83 = 0x7974706D65;
          }

          v90 = sub_100015464(v83, v85, v111);

          *(v79 + 4) = v90;
          _os_log_impl(&_mh_execute_header, v77, v78, "Added RequestLink for GFILinkingEvent event to the data pool :%s", v79, 0xCu);
          sub_10000C658(v80);

          (*(v96 + 8))(v95, v97);
        }

        else
        {

          (*(v70 + 8))(v71, v73);
        }

        return;
      }
    }

    else
    {
      v86 = sub_100009F00(&qword_100020778, &unk_1000176A0);
      (*(*(v86 - 8) + 56))(v63, 1, 1, v86);
    }

    sub_10000C3E4(v63, &qword_100020918, &qword_100017538);
    v87 = sub_100016D74();
    v88 = sub_100016E74();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&_mh_execute_header, v87, v88, "Request Link for GFILinkingEvent event is empty due to missing critical info", v89, 2u);
    }
  }

  else
  {
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v57 = sub_100016D94();
    sub_10000BD98(v57, qword_100020FA0);

    v58 = sub_100016D74();
    v59 = sub_100016E74();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v111[0] = v61;
      *v60 = 136315138;
      v62 = sub_100015464(v31, v29, v111);

      *(v60 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v58, v59, "GMS events type %s not matching usecase Filter for PCC Metrics Linking Event", v60, 0xCu);
      sub_10000C658(v61);
    }

    else
    {
    }
  }
}

uint64_t sub_1000030E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v35 = a3;
  v36 = a1;
  v6 = v4;
  v8 = sub_100016904();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v12 = v4[1];
  v14 = v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v15 = *(v12 + 16);
  if (!*v4)
  {
    if (v15)
    {
      v33 = v4;
      v34 = a4;
      v37 = a2;
      v16 = 0;
      v32 = v9;
      v28 = v9 + 16;
      v27 = *(v9 + 16);
      v29 = *(v9 + 72);
      while (1)
      {
        v27(v11, v14, v8);
        sub_10000C49C(&qword_100020958, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v30 = sub_100016DE4();
        (*(v28 - 8))(v11, v8);
        if (v30)
        {
          break;
        }

        ++v16;
        v14 += v29;
        if (v15 == v16)
        {
          v20 = 0;
          a2 = v37;
          v9 = v32;
          goto LABEL_14;
        }
      }

      v20 = 0;
      a2 = v37;
      v9 = v32;
      v6 = v33;
      v21 = v36;
      if (v36)
      {
        goto LABEL_4;
      }

LABEL_20:
      sub_10000A42C(v16, v20, v11);
      v31 = *(v9 + 8);
      v31(v11, v8);
      sub_10000A694(v16, v34);

      return (v31)(a2, v8);
    }

    v20 = 0;
    if (v36)
    {
      goto LABEL_15;
    }

    return (*(v9 + 8))(a2, v8);
  }

  v34 = a4;

  v16 = sub_10000B674(a2, v14, v15, (v13 + 16), v13 + 32);
  v18 = v17;
  v20 = v19;

  if (v18)
  {
LABEL_14:
    if (v36)
    {
LABEL_15:
      sub_10000A1E4(a2, v20);

      sub_100016F04();
      sub_100016F24();
      sub_100016F34();
      sub_100016F14();
    }

    return (*(v9 + 8))(a2, v8);
  }

  v21 = v36;
  if (!v36)
  {
    goto LABEL_20;
  }

LABEL_4:
  v24 = v6[2];
  v23 = v6 + 2;
  v22 = v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v23 = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = v35(v22);
    *v23 = v22;
  }

  result = (*(v9 + 8))(a2, v8);
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *(v22 + 16))
  {
    *(v22 + 8 * v16 + 32) = v21;

    return sub_100016F14();
  }

  __break(1u);
  return result;
}

uint64_t sub_100003444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v98 = a3;
  v121 = a1;
  v4 = sub_100009F00(&qword_100020900, &qword_100017528);
  __chkstk_darwin(v4 - 8);
  v96 = &v93 - v5;
  v114 = sub_100016A74();
  v112 = *(v114 - 8);
  v6 = __chkstk_darwin(v114);
  v108 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v109 = &v93 - v8;
  v9 = sub_100009F00(&qword_100020970, &qword_100017560);
  __chkstk_darwin(v9 - 8);
  v110 = (&v93 - v10);
  v100 = sub_100016954();
  v11 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_100016B14();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_100016BD4();
  v14 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100016D54();
  v116 = *(v16 - 8);
  v117 = v16;
  __chkstk_darwin(v16);
  v118 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100009F00(&qword_100020908, &unk_100017790);
  v19 = __chkstk_darwin(v18 - 8);
  v119 = (&v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v22 = &v93 - v21;
  v23 = sub_100016904();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v113 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v93 - v27;
  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v29 = sub_100016D94();
  v30 = sub_10000BD98(v29, qword_100020FA0);
  v31 = *(v24 + 16);
  v107 = v24 + 16;
  v106 = v31;
  v31(v28, v121, v23);
  v120 = v30;
  v32 = sub_100016D74();
  v33 = sub_100016E74();
  v34 = os_log_type_enabled(v32, v33);
  v99 = v11;
  v111 = v23;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v95 = a2;
    v36 = v35;
    v94 = swift_slowAlloc();
    v123 = v94;
    *v36 = 136315138;
    sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v37 = sub_100016F84();
    v38 = v14;
    v39 = v22;
    v41 = v40;
    (*(v24 + 8))(v28, v23);
    v42 = sub_100015464(v37, v41, &v123);
    v22 = v39;
    v14 = v38;

    *(v36 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v32, v33, "Deteced com.apple.privateCloud.metrics event with modelMangerID %s", v36, 0xCu);
    sub_10000C658(v94);
  }

  else
  {

    (*(v24 + 8))(v28, v23);
  }

  sub_100016BA4();
  v43 = sub_100016D64();
  v44 = *(v43 - 8);
  v45 = (*(v44 + 48))(v22, 1, v43);
  v46 = v119;
  if (v45 != 1)
  {
    sub_10000C37C(v22, v119, &qword_100020908, &unk_100017790);
    if ((*(v44 + 88))(v46, v43) == enum case for GenerativeFunctionsInstrumentationMetadata.privateCloudMetrics(_:))
    {
      (*(v44 + 96))(v46, v43);
      v47 = *v46;
      v48 = swift_projectBox();
      (*(v116 + 16))(v118, v48, v117);
      v49 = sub_100016D74();
      v50 = sub_100016E74();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Detected com.apple.privateCloud.metrics event contains PrivateCloudMetrics", v51, 2u);
      }

      v52 = v115;
      swift_beginAccess();
      v53 = v52[6];
      v54 = v52[7];
      v55 = v52[8];

      v56 = sub_1000042E0(v121, v53, v54, v55);

      if (v56)
      {
        v119 = v47;
        v57 = v101;
        v58 = v102;
        (*(v14 + 16))(v101, v56 + OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_event, v102);
        v59 = v103;
        sub_100016B24();
        (*(v14 + 8))(v57, v58);
        v60 = sub_100016AD4();
        v62 = v61;
        (*(v104 + 8))(v59, v105);
        if (v62)
        {
          v63 = v62;
        }

        else
        {
          v63 = 0xE000000000000000;
        }

        v64 = sub_100016D74();
        v65 = sub_100016E74();

        if (os_log_type_enabled(v64, v65))
        {
          if (!v62)
          {
            v60 = 0;
          }

          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v122[0] = v67;
          *v66 = 136315138;
          v68 = sub_100015464(v60, v63, v122);

          *(v66 + 4) = v68;
          _os_log_impl(&_mh_execute_header, v64, v65, "Detected the linking parent event for com.apple.privateCloud.metrics event with useCaseIdentifier %s", v66, 0xCu);
          sub_10000C658(v67);
        }

        else
        {
        }

        v73 = v109;
        sub_100016BC4();
        v74 = sub_10000D060();
        v75 = objc_allocWithZone(SISchemaUUID);
        isa = sub_1000168E4().super.isa;
        v77 = [v75 initWithNSUUID:isa];

        v78 = sub_10000BDEC(v77);
        [v78 setGmsPrivateCloudMetricsReceived:v74];
        v79 = sub_100009F00(&qword_100020978, &qword_100017568);
        v80 = v110;
        *v110 = v78;
        v81 = v112;
        v82 = v114;
        (*(v112 + 16))(v108, v73, v114);
        sub_100016944();

        v83 = *(v79 - 8);
        (*(v83 + 56))(v80, 0, 1, v79);

        (*(v81 + 8))(v73, v82);
        if ((*(v83 + 48))(v80, 1, v79) == 1)
        {
          sub_10000C3E4(v80, &qword_100020970, &qword_100017560);
        }

        else
        {
          v84 = *v80;
          v85 = v99;
          v86 = v97;
          v87 = v100;
          (*(v99 + 32))(v97, v80 + *(v79 + 48), v100);
          v88 = v96;
          (*(v85 + 16))(v96, v86, v87);
          (*(v85 + 56))(v88, 0, 1, v87);
          sub_10000BECC(v84, v98, v88, "emit SELF event %s", "emit nil SELF event", "Failed to emit SELF event to data pool, %@");
          sub_10000C3E4(v88, &qword_100020900, &qword_100017528);
          v89 = sub_100016D74();
          v90 = sub_100016E74();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            *v91 = 0;
            _os_log_impl(&_mh_execute_header, v89, v90, "Emitted SELF GMSSchemaGMSPrivateCloudMetricsReceived event", v91, 2u);
          }

          (*(v85 + 8))(v86, v87);
        }

        v92 = v113;
        v106(v113, v121, v111);
        swift_beginAccess();
        sub_1000030E4(0, v92, sub_10000C6AC, sub_10000C6AC);
        swift_endAccess();

        (*(v116 + 8))(v118, v117);
      }

      else
      {
        (*(v116 + 8))(v118, v117);
      }

      return sub_10000C3E4(v22, &qword_100020908, &unk_100017790);
    }

    (*(v44 + 8))(v46, v43);
  }

  v69 = sub_100016D74();
  v70 = sub_100016E74();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&_mh_execute_header, v69, v70, "Detected com.apple.privateCloud.metrics event does not contain PrivateCloudMetrics, skipping...", v71, 2u);
  }

  return sub_10000C3E4(v22, &qword_100020908, &unk_100017790);
}

uint64_t sub_1000042E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100016904();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v13 = *(a3 + 16);
  if (!a2)
  {
LABEL_5:
    if (v13)
    {
      v14 = 0;
      v19 = *(v9 + 16);
      v18 = v9 + 16;
      v17 = v19;
      v20 = *(v18 + 56);
      v23 = a4;
      v24 = v20;
      while (1)
      {
        v17(v11, v12, v8);
        sub_10000C49C(&qword_100020958, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v21 = a1;
        v22 = sub_100016DE4();
        result = (*(v18 - 8))(v11, v8);
        if (v22)
        {
          break;
        }

        ++v14;
        v12 += v24;
        a1 = v21;
        if (v13 == v14)
        {
          return 0;
        }
      }

      a4 = v23;
      goto LABEL_11;
    }

    return 0;
  }

  v14 = sub_10000B674(a1, v12, v13, (a2 + 16), a2 + 32);
  v8 = v15;

  if (v8)
  {
    return 0;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_11:
  if (v14 < *(a4 + 16))
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_1000044E0(void *a1, uint64_t a2)
{
  v660 = a2;
  v3 = sub_100009F00(&qword_1000208F8, &qword_100017520);
  v4 = __chkstk_darwin(v3 - 8);
  v601 = &v585[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v4);
  v600 = &v585[-v7];
  __chkstk_darwin(v6);
  v606 = &v585[-v8];
  v9 = sub_100009F00(&qword_100020900, &qword_100017528);
  __chkstk_darwin(v9 - 8);
  v611 = &v585[-v10];
  v613 = sub_100016954();
  v612 = *(v613 - 8);
  v11 = __chkstk_darwin(v613);
  v594 = &v585[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v593 = &v585[-v14];
  v15 = __chkstk_darwin(v13);
  v596 = &v585[-v16];
  __chkstk_darwin(v15);
  v605 = &v585[-v17];
  v629 = sub_100009F00(&qword_100020908, &unk_100017790);
  __chkstk_darwin(v629);
  v630 = &v585[-v18];
  v651 = sub_100016B84();
  v647 = *(v651 - 8);
  __chkstk_darwin(v651);
  v633 = &v585[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v644 = sub_100009F00(&qword_100020910, &qword_100017530);
  v20 = __chkstk_darwin(v644);
  v609 = &v585[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v607 = &v585[-v23];
  v24 = __chkstk_darwin(v22);
  v610 = &v585[-v25];
  v26 = __chkstk_darwin(v24);
  v619 = &v585[-v27];
  __chkstk_darwin(v26);
  v650 = &v585[-v28];
  v29 = sub_100009F00(&qword_100020918, &qword_100017538);
  v30 = __chkstk_darwin(v29 - 8);
  v604 = &v585[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v637 = &v585[-v32];
  v33 = sub_100009F00(&qword_100020920, &unk_1000175F0);
  v34 = __chkstk_darwin(v33 - 8);
  v646 = &v585[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34);
  v656 = &v585[-v36];
  v37 = sub_100009F00(&qword_100020928, &qword_100017540);
  v38 = __chkstk_darwin(v37 - 8);
  v597 = &v585[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = __chkstk_darwin(v38);
  v616 = &v585[-v41];
  v42 = __chkstk_darwin(v40);
  v608 = &v585[-v43];
  v44 = __chkstk_darwin(v42);
  v595 = &v585[-v45];
  v46 = __chkstk_darwin(v44);
  v614 = &v585[-v47];
  v48 = __chkstk_darwin(v46);
  v615 = &v585[-v49];
  v50 = __chkstk_darwin(v48);
  v598 = &v585[-v51];
  v52 = __chkstk_darwin(v50);
  v617 = &v585[-v53];
  v54 = __chkstk_darwin(v52);
  v618 = &v585[-v55];
  v56 = __chkstk_darwin(v54);
  v603 = &v585[-v57];
  v58 = __chkstk_darwin(v56);
  v620 = &v585[-v59];
  v60 = __chkstk_darwin(v58);
  v621 = &v585[-v61];
  v62 = __chkstk_darwin(v60);
  v638 = &v585[-v63];
  v64 = __chkstk_darwin(v62);
  v652 = &v585[-v65];
  v66 = __chkstk_darwin(v64);
  v653 = &v585[-v67];
  __chkstk_darwin(v66);
  v655 = &v585[-v68];
  v674 = sub_100016BD4();
  v676 = *(v674 - 1);
  v69 = __chkstk_darwin(v674);
  v654 = &v585[-((v70 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = __chkstk_darwin(v69);
  v624 = &v585[-v72];
  v73 = __chkstk_darwin(v71);
  v623 = &v585[-v74];
  v75 = __chkstk_darwin(v73);
  v627 = &v585[-v76];
  v77 = __chkstk_darwin(v75);
  v626 = &v585[-v78];
  v79 = __chkstk_darwin(v77);
  v634 = &v585[-v80];
  v81 = __chkstk_darwin(v79);
  v632 = &v585[-v82];
  v83 = __chkstk_darwin(v81);
  v648 = &v585[-v84];
  v85 = __chkstk_darwin(v83);
  v666 = &v585[-v86];
  v87 = __chkstk_darwin(v85);
  v665 = &v585[-v88];
  __chkstk_darwin(v87);
  v664 = &v585[-v89];
  v90 = sub_100009F00(&qword_100020930, &qword_100017770);
  v91 = __chkstk_darwin(v90 - 8);
  v641 = &v585[-((v92 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v91);
  v94 = &v585[-v93];
  v95 = sub_100016B14();
  v96 = *(v95 - 8);
  v97 = __chkstk_darwin(v95);
  v628 = &v585[-((v98 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = __chkstk_darwin(v97);
  v645 = &v585[-v100];
  v101 = __chkstk_darwin(v99);
  v661 = &v585[-v102];
  v103 = __chkstk_darwin(v101);
  v658 = &v585[-v104];
  v105 = __chkstk_darwin(v103);
  v657 = &v585[-v106];
  __chkstk_darwin(v105);
  v108 = &v585[-v107];
  v109 = sub_100016904();
  v110 = *(v109 - 8);
  v111 = __chkstk_darwin(v109);
  v640 = &v585[-((v112 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v113 = __chkstk_darwin(v111);
  v115 = &v585[-v114];
  v116 = __chkstk_darwin(v113);
  v599 = &v585[-v117];
  v118 = __chkstk_darwin(v116);
  v622 = &v585[-v119];
  v120 = __chkstk_darwin(v118);
  v625 = &v585[-v121];
  v122 = __chkstk_darwin(v120);
  v631 = &v585[-v123];
  v124 = __chkstk_darwin(v122);
  v639 = &v585[-v125];
  v126 = __chkstk_darwin(v124);
  v635 = &v585[-v127];
  v128 = __chkstk_darwin(v126);
  v130 = &v585[-v129];
  v131 = __chkstk_darwin(v128);
  v636 = &v585[-v132];
  v133 = __chkstk_darwin(v131);
  v672 = &v585[-v134];
  v135 = __chkstk_darwin(v133);
  v663 = &v585[-v136];
  __chkstk_darwin(v135);
  v138 = &v585[-v137];
  v675 = a1;
  sub_100016B24();
  sub_100016B04();
  v139 = *(v96 + 8);
  v673 = v95;
  v670 = v139;
  v671 = v96 + 8;
  v139(v108, v95);
  v140 = *(v110 + 48);
  if (v140(v94, 1, v109) == 1)
  {
    return sub_10000C3E4(v94, &qword_100020930, &qword_100017770);
  }

  v590 = v140;
  v589 = v115;
  v592 = v130;
  (*(v110 + 32))(v138, v94, v109);
  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v142 = sub_100016D94();
  v143 = sub_10000BD98(v142, qword_100020FA0);
  v144 = v676;
  v145 = *(v676 + 16);
  v146 = v664;
  v147 = v674;
  v668 = v676 + 16;
  v662 = v145;
  (v145)(v664, v675, v674);
  v148 = *(v110 + 16);
  v149 = v663;
  v659 = v138;
  v643 = v110 + 16;
  v642 = v148;
  v148(v663, v138, v109);
  v667 = v143;
  v150 = sub_100016D74();
  v151 = sub_100016E74();
  v152 = os_log_type_enabled(v150, v151);
  v649 = v109;
  v602 = v110;
  v591 = v110 + 48;
  if (v152)
  {
    v153 = v146;
    v154 = swift_slowAlloc();
    v588 = swift_slowAlloc();
    v679[0] = v588;
    *v154 = 136315394;
    LODWORD(v587) = v151;
    v155 = sub_100016BB4();
    v156 = v109;
    v158 = v157;
    v664 = *(v144 + 8);
    (v664)(v153, v147);
    v159 = sub_100015464(v155, v158, v679);

    *(v154 + 4) = v159;
    *(v154 + 12) = 2080;
    sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v160 = sub_100016F84();
    v162 = v161;
    v663 = *(v110 + 8);
    (v663)(v149, v156);
    v163 = sub_100015464(v160, v162, v679);

    *(v154 + 14) = v163;
    _os_log_impl(&_mh_execute_header, v150, v587, "GMSSELFIngestor.processEvent() event type: %s modelManagerID %s", v154, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v663 = *(v110 + 8);
    (v663)(v149, v109);
    v664 = *(v144 + 8);
    (v664)(v146, v147);
  }

  v164 = v665;
  v165 = v675;
  v166 = v662;
  (v662)(v665, v675, v147);
  v167 = v666;
  v166(v666, v165, v147);
  v168 = sub_100016D74();
  v169 = sub_100016E74();
  if (os_log_type_enabled(v168, v169))
  {
    v170 = swift_slowAlloc();
    v588 = swift_slowAlloc();
    v679[0] = v588;
    *v170 = 136315394;
    v587 = v168;
    v171 = v657;
    v586 = v169;
    sub_100016B24();
    v172 = sub_100016AD4();
    v174 = v173;
    v175 = v673;
    v176 = v670;
    v670(v171, v673);
    if (!v174)
    {
      v172 = 0x7974706D65;
      v174 = 0xE500000000000000;
    }

    v657 = (v676 + 8);
    v177 = v164;
    v178 = v664;
    (v664)(v177, v147);
    v179 = sub_100015464(v172, v174, v679);

    *(v170 + 4) = v179;
    *(v170 + 12) = 2080;
    v180 = v658;
    sub_100016B24();
    v181 = sub_100016AE4();
    v183 = v182;
    v176(v180, v175);
    if (!v183)
    {
      v181 = 0x7974706D65;
      v183 = 0xE500000000000000;
    }

    v165 = v675;
    v184 = v147;
    v178(v167, v147);
    v185 = sub_100015464(v181, v183, v679);

    *(v170 + 14) = v185;
    v186 = v587;
    _os_log_impl(&_mh_execute_header, v587, v586, "GMSSELFIngestor.processEvent() useCaseIdentifier: %s clientRequestIdentifier: %s", v170, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v187 = v664;
    (v664)(v167, v147);
    v184 = v147;
    v187(v164, v147);
  }

  v188 = v659;
  v189 = v669;
  v190 = v672;
  if (sub_100016BB4() == 0xD000000000000021 && 0x80000001000177C0 == v191)
  {
  }

  else
  {
    v192 = sub_100016F94();

    if ((v192 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v193 = v661;
  sub_100016B24();
  v194 = sub_100016AD4();
  v196 = v195;
  v670(v193, v673);
  if (!v196 || sub_100016020(v194, v196) == 5)
  {
LABEL_21:
    if (sub_100016BB4() == 0xD000000000000021 && 0x80000001000177C0 == v197)
    {

LABEL_25:
      sub_1000024C4(v188, v165, v660);
      goto LABEL_26;
    }

    v198 = sub_100016F94();

    if (v198)
    {
      goto LABEL_25;
    }

    if (sub_100016BB4() == 0xD00000000000001ELL && 0x8000000100017AE0 == v245)
    {
    }

    else
    {
      v268 = sub_100016F94();

      if ((v268 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    sub_100003444(v188, v165, v660);
LABEL_26:
    v199 = v189[9];
    v679[0] = sub_100016BB4();
    v679[1] = v200;
    __chkstk_darwin(v679[0]);
    *&v585[-16] = v679;
    LOBYTE(v199) = sub_10000A138(sub_10000BDD0, &v585[-32], v199);

    if ((v199 & 1) == 0)
    {
      v209 = v654;
      v210 = v674;
      (v662)(v654, v165, v674);
      v211 = sub_100016D74();
      v212 = sub_100016E74();
      if (os_log_type_enabled(v211, v212))
      {
        v213 = swift_slowAlloc();
        v214 = swift_slowAlloc();
        v679[0] = v214;
        *v213 = 136315138;
        v215 = sub_100016BB4();
        v216 = v188;
        v218 = v217;
        (v664)(v209, v210);
        v219 = sub_100015464(v215, v218, v679);

        *(v213 + 4) = v219;
        _os_log_impl(&_mh_execute_header, v211, v212, "GMS events type %s not matching event Filter", v213, 0xCu);
        sub_10000C658(v214);

        v220 = v216;
      }

      else
      {

        (v664)(v209, v210);
        v220 = v188;
      }

      v246 = v649;
      return (v663)(v220, v246);
    }

    swift_beginAccess();
    v201 = v189[3];
    v202 = v189[4];
    v203 = v189[5];

    v204 = sub_1000042E0(v188, v201, v202, v203);

    v672 = v204;
    if (!v204)
    {
      v247 = v640;
      v248 = v649;
      v642(v640, v188, v649);
      v249 = sub_100016D74();
      v250 = sub_100016E74();
      if (os_log_type_enabled(v249, v250))
      {
        v251 = swift_slowAlloc();
        v252 = swift_slowAlloc();
        v678 = v252;
        *v251 = 136315138;
        sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v253 = sub_100016F84();
        v254 = v188;
        v256 = v255;
        v257 = v247;
        v258 = v663;
        (v663)(v257, v248);
        v259 = sub_100015464(v253, v256, &v678);

        *(v251 + 4) = v259;
        _os_log_impl(&_mh_execute_header, v249, v250, "GMS events with modelManagerID %s not found in buffer", v251, 0xCu);
        sub_10000C658(v252);

        return v258(v254, v248);
      }

      else
      {

        v305 = v663;
        (v663)(v247, v248);
        return v305(v188, v248);
      }
    }

    v205 = sub_100016BB4();
    v671 = 0x80000001000177F0;
    if (v205 == 0xD000000000000031 && 0x80000001000177F0 == v206)
    {

      v207 = v653;
      v208 = v652;
    }

    else
    {
      v260 = sub_100016F94();

      v207 = v653;
      v208 = v652;
      if ((v260 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    sub_100016B94();
    v261 = v647;
    v262 = v651;
    (*(v647 + 104))(v208, enum case for GenerativeFunctionsInstrumentationEvent.Subtype.start(_:), v651);
    (*(v261 + 56))(v208, 0, 1, v262);
    v263 = *(v644 + 48);
    v264 = v650;
    sub_10000C37C(v207, v650, &qword_100020928, &qword_100017540);
    v265 = v262;
    sub_10000C37C(v208, &v264[v263], &qword_100020928, &qword_100017540);
    v266 = *(v261 + 48);
    if (v266(v264, 1, v262) == 1)
    {
      sub_10000C3E4(v208, &qword_100020928, &qword_100017540);
      v267 = v650;
      sub_10000C3E4(v207, &qword_100020928, &qword_100017540);
      if (v266(&v267[v263], 1, v651) == 1)
      {
        sub_10000C3E4(v267, &qword_100020928, &qword_100017540);
        v188 = v659;
LABEL_67:
        v313 = v635;
        v314 = v649;
        v642(v635, v188, v649);
        v315 = sub_100016D74();
        v316 = sub_100016E74();
        if (os_log_type_enabled(v315, v316))
        {
          v317 = swift_slowAlloc();
          v318 = swift_slowAlloc();
          v678 = v318;
          *v317 = 136315138;
          sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v319 = sub_100016F84();
          v321 = v320;
          v322 = v313;
          v323 = v663;
          (v663)(v322, v314);
          v324 = sub_100015464(v319, v321, &v678);
          v325 = v659;

          *(v317 + 4) = v324;
          _os_log_impl(&_mh_execute_header, v315, v316, "com.apple.inferenceRequest.completePromptTemplate.start event modelManagerID %s", v317, 0xCu);
          sub_10000C658(v318);
          v326 = v323;
        }

        else
        {

          v325 = v188;
          v326 = v663;
          (v663)(v313, v314);
        }

        v332 = v674;
        v333 = v656;
        (v662)(v656, v675, v674);
        (*(v676 + 56))(v333, 0, 1, v332);
        v334 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_promptRequestStartEvent;
        v335 = v672;
        swift_beginAccess();
        sub_10000C29C(v333, &v335[v334]);
        swift_endAccess();
        v336 = &v335[v334];
        v337 = v646;
        sub_10000C37C(v336, v646, &qword_100020920, &unk_1000175F0);
        sub_10001619C(0xD000000000000011, 0x8000000100017B40, v337);

        sub_10000C3E4(v337, &qword_100020920, &unk_1000175F0);
        sub_10000C3E4(v333, &qword_100020920, &unk_1000175F0);
        return v326(v325, v314);
      }

      goto LABEL_54;
    }

    v269 = v638;
    sub_10000C37C(v264, v638, &qword_100020928, &qword_100017540);
    if (v266(&v264[v263], 1, v262) == 1)
    {
      sub_10000C3E4(v652, &qword_100020928, &qword_100017540);
      v267 = v650;
      sub_10000C3E4(v653, &qword_100020928, &qword_100017540);
      (*(v647 + 8))(v269, v651);
LABEL_54:
      sub_10000C3E4(v267, &qword_100020910, &qword_100017530);
      v188 = v659;
      goto LABEL_55;
    }

    v307 = v647;
    v308 = v264;
    v309 = v633;
    (*(v647 + 32))(v633, &v264[v263], v265);
    sub_10000C49C(&qword_100020948, 255, &type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype, &protocol conformance descriptor for GenerativeFunctionsInstrumentationEvent.Subtype);
    v310 = v265;
    v311 = sub_100016DE4();
    v312 = *(v307 + 8);
    v312(v309, v310);
    sub_10000C3E4(v652, &qword_100020928, &qword_100017540);
    sub_10000C3E4(v653, &qword_100020928, &qword_100017540);
    v312(v269, v310);
    sub_10000C3E4(v308, &qword_100020928, &qword_100017540);
    v188 = v659;
    if (v311)
    {
      goto LABEL_67;
    }

LABEL_55:
    if (sub_100016BB4() == 0xD000000000000028 && 0x8000000100017830 == v270)
    {

      v271 = v676;
      goto LABEL_60;
    }

    v272 = sub_100016F94();

    v271 = v676;
    if (v272)
    {
LABEL_60:
      v273 = v656;
      v274 = v674;
      (v662)(v656, v165, v674);
      (*(v271 + 56))(v273, 0, 1, v274);
      v275 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_firstTokenEvent;
      v276 = v672;
      swift_beginAccess();
      sub_10000C29C(v273, &v276[v275]);
      swift_endAccess();
      v277 = &v276[v275];
      v278 = v646;
      sub_10000C37C(v277, v646, &qword_100020920, &unk_1000175F0);
      sub_10001619C(0x6B6F547473726966, 0xEF746E6576456E65, v278);
      sub_10000C3E4(v278, &qword_100020920, &unk_1000175F0);
      sub_10000C3E4(v273, &qword_100020920, &unk_1000175F0);
      v279 = v639;
      v280 = v649;
      v642(v639, v188, v649);
      v281 = sub_100016D74();
      v282 = sub_100016E74();
      if (os_log_type_enabled(v281, v282))
      {
        v283 = swift_slowAlloc();
        v284 = swift_slowAlloc();
        v678 = v284;
        *v283 = 136315138;
        sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v285 = sub_100016F84();
        v287 = v286;
        v288 = v663;
        (v663)(v279, v280);
        v289 = sub_100015464(v285, v287, &v678);

        *(v283 + 4) = v289;
        _os_log_impl(&_mh_execute_header, v281, v282, "modelManagerID %s saved firstTokenEvent", v283, 0xCu);
        sub_10000C658(v284);

        return v288(v659, v280);
      }

      else
      {

        v306 = v663;
        (v663)(v279, v280);
        return v306(v188, v280);
      }
    }

    if (sub_100016BB4() == 0xD00000000000003BLL && 0x8000000100017860 == v327)
    {

LABEL_77:
      v339 = v188;
      v340 = v656;
      v341 = v674;
      v342 = v662;
      (v662)(v656, v165, v674);
      (*(v676 + 56))(v340, 0, 1, v341);
      v343 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_modelInfoEvent;
      v344 = v672;
      swift_beginAccess();
      sub_10000C29C(v340, &v344[v343]);
      swift_endAccess();
      v345 = &v344[v343];
      v346 = v341;
      v347 = v646;
      sub_10000C37C(v345, v646, &qword_100020920, &unk_1000175F0);
      sub_10001619C(0x666E496C65646F6DLL, 0xEE00746E6576456FLL, v347);
      sub_10000C3E4(v347, &qword_100020920, &unk_1000175F0);
      sub_10000C3E4(v340, &qword_100020920, &unk_1000175F0);
      v348 = v631;
      v349 = v649;
      v642(v631, v339, v649);
      v350 = v632;
      v342(v632, v165, v346);
      v342(v634, v165, v346);
      v351 = sub_100016D74();
      v352 = sub_100016E74();
      if (os_log_type_enabled(v351, v352))
      {
        v353 = swift_slowAlloc();
        v675 = swift_slowAlloc();
        v678 = v675;
        *v353 = 136315650;
        sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v354 = sub_100016F84();
        v356 = v355;
        v671 = v602 + 8;
        (v663)(v348, v349);
        v357 = sub_100015464(v354, v356, &v678);

        *(v353 + 4) = v357;
        *(v353 + 12) = 2080;
        v358 = v630;
        sub_100016BA4();
        v359 = sub_100016EA4();
        v361 = v360;
        sub_10000C3E4(v358, &qword_100020908, &unk_100017790);
        v362 = v350;
        v363 = v674;
        v364 = v664;
        (v664)(v362, v674);
        v365 = sub_100015464(v359, v361, &v678);

        *(v353 + 14) = v365;
        *(v353 + 22) = 2080;
        v366 = v634;
        sub_100016B24();
        v367 = sub_100016E14();
        v369 = v368;
        v364(v366, v363);
        v370 = sub_100015464(v367, v369, &v678);

        *(v353 + 24) = v370;
        _os_log_impl(&_mh_execute_header, v351, v352, "modelManagerID %s saved modelInfoEvent %s %s", v353, 0x20u);
        swift_arrayDestroy();

        return (v663)(v659, v349);
      }

      v371 = v664;
      (v664)(v634, v346);
      v371(v350, v346);
      v372 = v663;
      (v663)(v348, v349);
      v373 = v339;
      return v372(v373, v349);
    }

    v338 = sub_100016F94();

    if (v338)
    {
      goto LABEL_77;
    }

    if (sub_100016BB4() == 0xD000000000000024 && 0x80000001000178A0 == v374)
    {

      v375 = v676;
LABEL_85:
      v377 = v656;
      v378 = v674;
      v379 = v662;
      (v662)(v656, v165, v674);
      (*(v375 + 56))(v377, 0, 1, v378);
      v380 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_signedInStatusEvent;
      v381 = v672;
      swift_beginAccess();
      sub_10000C29C(v377, &v381[v380]);
      swift_endAccess();
      v382 = &v381[v380];
      v383 = v378;
      v384 = v646;
      sub_10000C37C(v382, v646, &qword_100020920, &unk_1000175F0);
      sub_10001619C(0xD000000000000013, 0x8000000100017B20, v384);
      sub_10000C3E4(v384, &qword_100020920, &unk_1000175F0);
      sub_10000C3E4(v377, &qword_100020920, &unk_1000175F0);
      v385 = v625;
      v349 = v649;
      v642(v625, v659, v649);
      v386 = v626;
      v379(v626, v165, v383);
      v387 = v627;
      v379(v627, v165, v383);
      v388 = sub_100016D74();
      v389 = sub_100016E74();
      if (os_log_type_enabled(v388, v389))
      {
        v390 = swift_slowAlloc();
        v678 = swift_slowAlloc();
        *v390 = 136315650;
        sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        LODWORD(v671) = v389;
        v391 = sub_100016F84();
        v393 = v392;
        v675 = (v602 + 8);
        (v663)(v385, v349);
        v394 = sub_100015464(v391, v393, &v678);

        *(v390 + 4) = v394;
        *(v390 + 12) = 2080;
        v395 = v630;
        sub_100016BA4();
        v396 = sub_100016EA4();
        v398 = v397;
        sub_10000C3E4(v395, &qword_100020908, &unk_100017790);
        v399 = v386;
        v400 = v674;
        v401 = v664;
        (v664)(v399, v674);
        v402 = sub_100015464(v396, v398, &v678);

        *(v390 + 14) = v402;
        *(v390 + 22) = 2080;
        v403 = v627;
        sub_100016B24();
        v404 = sub_100016E14();
        v406 = v405;
        v401(v403, v400);
        v407 = sub_100015464(v404, v406, &v678);

        *(v390 + 24) = v407;
        _os_log_impl(&_mh_execute_header, v388, v671, "modelManagerID %s saved blackpowder.SignedInStatusEvent  %s %s", v390, 0x20u);
        swift_arrayDestroy();

        return (v663)(v659, v349);
      }

      v408 = v664;
      (v664)(v387, v383);
      v408(v386, v383);
      v372 = v663;
      (v663)(v385, v349);
      v373 = v659;
      return v372(v373, v349);
    }

    v376 = sub_100016F94();

    v375 = v676;
    if (v376)
    {
      goto LABEL_85;
    }

    if (sub_100016BB4() == 0xD000000000000025 && 0x80000001000178D0 == v409)
    {

      v410 = v624;
      v411 = v623;
      v412 = v622;
LABEL_92:
      v414 = v649;
      v642(v412, v188, v649);
      v415 = v674;
      v416 = v662;
      (v662)(v411, v165, v674);
      v416(v410, v165, v415);
      v417 = sub_100016D74();
      v418 = sub_100016E74();
      if (os_log_type_enabled(v417, v418))
      {
        v419 = swift_slowAlloc();
        v671 = swift_slowAlloc();
        v678 = v671;
        *v419 = 136315650;
        sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        LODWORD(v670) = v418;
        v420 = sub_100016F84();
        v422 = v421;
        v423 = v663;
        (v663)(v412, v649);
        v424 = sub_100015464(v420, v422, &v678);

        *(v419 + 4) = v424;
        *(v419 + 12) = 2080;
        v425 = v630;
        sub_100016BA4();
        v426 = sub_100016EA4();
        v428 = v427;
        sub_10000C3E4(v425, &qword_100020908, &unk_100017790);
        v429 = v676;
        v430 = v664;
        (v664)(v411, v674);
        v431 = sub_100015464(v426, v428, &v678);

        *(v419 + 14) = v431;
        *(v419 + 22) = 2080;
        sub_100016B24();
        v432 = sub_100016E14();
        v434 = v433;
        v435 = v410;
        v436 = v423;
        v430(v435, v674);
        v437 = sub_100015464(v432, v434, &v678);
        v414 = v649;
        v438 = v659;

        *(v419 + 24) = v437;
        v439 = v429;
        _os_log_impl(&_mh_execute_header, v417, v670, "modelManagerID %s saved webSearchStatusEvent  %s %s", v419, 0x20u);
        swift_arrayDestroy();

        v415 = v674;
      }

      else
      {

        v439 = v676;
        v440 = v188;
        v441 = v411;
        v442 = v664;
        (v664)(v410, v415);
        v443 = v441;
        v438 = v440;
        v442(v443, v415);
        v436 = v663;
        (v663)(v412, v414);
      }

      v444 = v656;
      (v662)(v656, v675, v415);
      (*(v439 + 56))(v444, 0, 1, v415);
      v445 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_webSearchStatusEvent;
      v446 = v672;
      swift_beginAccess();
      sub_10000C29C(v444, &v446[v445]);
      swift_endAccess();
      v447 = &v446[v445];
      v448 = v646;
      sub_10000C37C(v447, v646, &qword_100020920, &unk_1000175F0);
      sub_10001619C(0xD000000000000014, 0x8000000100017B00, v448);

      sub_10000C3E4(v448, &qword_100020920, &unk_1000175F0);
      sub_10000C3E4(v444, &qword_100020920, &unk_1000175F0);
      return v436(v438, v414);
    }

    v413 = sub_100016F94();

    v410 = v624;
    v411 = v623;
    v412 = v622;
    if (v413)
    {
      goto LABEL_92;
    }

    if (sub_100016BB4() == 0xD000000000000031 && v671 == v449)
    {

      v450 = v619;
      v451 = v621;
      v452 = v620;
    }

    else
    {
      v453 = v188;
      v454 = sub_100016F94();

      v450 = v619;
      v451 = v621;
      v452 = v620;
      if ((v454 & 1) == 0)
      {
        v470 = v453;
LABEL_115:
        (v663)(v470, v649);
      }
    }

    sub_100016B94();
    v455 = v647;
    v456 = *(v647 + 104);
    LODWORD(v666) = enum case for GenerativeFunctionsInstrumentationEvent.Subtype.end(_:);
    v457 = v651;
    v676 = v647 + 104;
    v674 = v456;
    v456(v452);
    v670 = *(v455 + 56);
    v671 = v455 + 56;
    (v670)(v452, 0, 1, v457);
    v458 = *(v644 + 48);
    sub_10000C37C(v451, v450, &qword_100020928, &qword_100017540);
    v459 = v457;
    sub_10000C37C(v452, v450 + v458, &qword_100020928, &qword_100017540);
    v460 = v455 + 48;
    v461 = *(v455 + 48);
    v462 = v461(v450, 1, v457);
    v668 = v460;
    v673 = v461;
    if (v462 == 1)
    {
      sub_10000C3E4(v452, &qword_100020928, &qword_100017540);
      sub_10000C3E4(v451, &qword_100020928, &qword_100017540);
      if (v461(v450 + v458, 1, v457) == 1)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v463 = v603;
      sub_10000C37C(v450, v603, &qword_100020928, &qword_100017540);
      if (v461(v450 + v458, 1, v459) != 1)
      {
        v472 = v463;
        v473 = v647;
        v474 = v633;
        (*(v647 + 32))(v633, v450 + v458, v459);
        sub_10000C49C(&qword_100020948, 255, &type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype, &protocol conformance descriptor for GenerativeFunctionsInstrumentationEvent.Subtype);
        v475 = v459;
        v476 = sub_100016DE4();
        v477 = *(v473 + 8);
        v477(v474, v475);
        sub_10000C3E4(v620, &qword_100020928, &qword_100017540);
        sub_10000C3E4(v621, &qword_100020928, &qword_100017540);
        v477(v472, v475);
        sub_10000C3E4(v450, &qword_100020928, &qword_100017540);
        if (v476)
        {
          goto LABEL_119;
        }

        goto LABEL_106;
      }

      sub_10000C3E4(v620, &qword_100020928, &qword_100017540);
      sub_10000C3E4(v621, &qword_100020928, &qword_100017540);
      (*(v647 + 8))(v463, v459);
    }

    sub_10000C3E4(v450, &qword_100020910, &qword_100017530);
LABEL_106:
    v464 = v618;
    sub_100016B94();
    v465 = v617;
    v466 = v651;
    (v674)(v617, enum case for GenerativeFunctionsInstrumentationEvent.Subtype.fail(_:), v651);
    (v670)(v465, 0, 1, v466);
    v467 = *(v644 + 48);
    v468 = v610;
    sub_10000C37C(v464, v610, &qword_100020928, &qword_100017540);
    sub_10000C37C(v465, &v468[v467], &qword_100020928, &qword_100017540);
    v469 = v673;
    if (v673(v468, 1, v466) == 1)
    {
      sub_10000C3E4(v617, &qword_100020928, &qword_100017540);
      sub_10000C3E4(v618, &qword_100020928, &qword_100017540);
      if (v469(&v468[v467], 1, v466) == 1)
      {
        v450 = v468;
LABEL_109:
        sub_10000C3E4(v450, &qword_100020928, &qword_100017540);
        goto LABEL_119;
      }

      goto LABEL_113;
    }

    v471 = v598;
    sub_10000C37C(v468, v598, &qword_100020928, &qword_100017540);
    if (v469(&v468[v467], 1, v466) == 1)
    {
      sub_10000C3E4(v617, &qword_100020928, &qword_100017540);
      sub_10000C3E4(v618, &qword_100020928, &qword_100017540);
      (*(v647 + 8))(v471, v466);
LABEL_113:
      sub_10000C3E4(v468, &qword_100020910, &qword_100017530);
LABEL_114:
      v470 = v659;
      goto LABEL_115;
    }

    v478 = v647;
    v479 = v633;
    (*(v647 + 32))(v633, &v468[v467], v466);
    sub_10000C49C(&qword_100020948, 255, &type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype, &protocol conformance descriptor for GenerativeFunctionsInstrumentationEvent.Subtype);
    v480 = sub_100016DE4();
    v481 = *(v478 + 8);
    v481(v479, v466);
    sub_10000C3E4(v617, &qword_100020928, &qword_100017540);
    sub_10000C3E4(v618, &qword_100020928, &qword_100017540);
    v481(v471, v466);
    sub_10000C3E4(v468, &qword_100020928, &qword_100017540);
    if ((v480 & 1) == 0)
    {
      goto LABEL_114;
    }

LABEL_119:
    v482 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_requestLinkAndMonoTimeStamp;
    v483 = v672;
    swift_beginAccess();
    v484 = &v483[v482];
    v485 = v604;
    sub_10000C37C(v484, v604, &qword_100020918, &qword_100017538);
    v486 = sub_100009F00(&qword_100020778, &unk_1000176A0);
    if ((*(*(v486 - 8) + 48))(v485, 1, v486) == 1)
    {
      sub_10000C3E4(v485, &qword_100020918, &qword_100017538);
      v487 = sub_100016D74();
      v488 = sub_100016E74();
      if (os_log_type_enabled(v487, v488))
      {
        v489 = swift_slowAlloc();
        *v489 = 0;
        _os_log_impl(&_mh_execute_header, v487, v488, "Request Link is empty due to missing critical info", v489, 2u);
      }

      v490 = v607;
      v491 = v606;
    }

    else
    {
      v492 = *v485;
      v493 = *(v486 + 48);
      v494 = v612;
      v495 = v485 + v493;
      v496 = v605;
      v497 = v613;
      (*(v612 + 32))(v605, v495, v613);
      v498 = v611;
      (*(v494 + 16))(v611, v496, v497);
      (*(v494 + 56))(v498, 0, 1, v497);
      v499 = v492;
      sub_10000BECC(v492, v660, v498, "emit SELF requestLink %s", "requestLink is nil", "Failed to emit requestLink to data pool, %@");

      sub_10000C3E4(v498, &qword_100020900, &qword_100017528);
      v500 = v499;
      v501 = sub_100016D74();
      v502 = sub_100016E74();

      if (os_log_type_enabled(v501, v502))
      {
        v503 = swift_slowAlloc();
        v504 = swift_slowAlloc();
        v677 = v504;
        *v503 = 136315138;
        v505 = [v500 formattedJsonBody];
        if (v505)
        {
          v506 = v505;
          v507 = sub_100016E04();
          v509 = v508;
        }

        else
        {
          v507 = 0x7974706D65;
          v509 = 0xE500000000000000;
        }

        v510 = sub_100015464(v507, v509, &v677);

        *(v503 + 4) = v510;
        _os_log_impl(&_mh_execute_header, v501, v502, "Add RequestLink to the data pool :%s", v503, 0xCu);
        sub_10000C658(v504);
      }

      else
      {
      }

      (*(v612 + 8))(v605, v613);
      v490 = v607;
      v491 = v606;
    }

    v511 = v633;
    v512 = v651;
    (v674)(v633, enum case for GenerativeFunctionsInstrumentationEvent.Subtype.start(_:), v651);
    sub_10000E018(v675, v511, v491);
    v665 = *(v647 + 8);
    v664 = (v647 + 8);
    (v665)(v511, v512);
    v513 = sub_100009F00(&qword_100020940, &qword_100017548);
    v514 = *(v513 - 8);
    v515 = *(v514 + 48);
    v662 = v513;
    v661 = v515;
    v658 = (v514 + 48);
    if ((v515)(v491, 1) == 1)
    {
      sub_10000C3E4(v491, &qword_1000208F8, &qword_100017520);
    }

    else
    {
      v516 = *v491;
      v517 = v612;
      v518 = v596;
      v519 = v613;
      (*(v612 + 32))(v596, v491 + v662[12], v613);
      v520 = v611;
      (*(v517 + 16))(v611, v518, v519);
      (*(v517 + 56))(v520, 0, 1, v519);
      v521 = v516;
      sub_10000BECC(v516, v660, v520, "emit SELF event %s", "emit nil SELF event", "Failed to emit SELF event to data pool, %@");

      sub_10000C3E4(v520, &qword_100020900, &qword_100017528);
      (*(v517 + 8))(v518, v519);
    }

    v522 = v615;
    sub_100016B94();
    v523 = v614;
    v524 = v651;
    (v674)(v614, v666, v651);
    (v670)(v523, 0, 1, v524);
    v525 = *(v644 + 48);
    sub_10000C37C(v522, v490, &qword_100020928, &qword_100017540);
    sub_10000C37C(v523, v490 + v525, &qword_100020928, &qword_100017540);
    v526 = v673;
    if (v673(v490, 1, v524) == 1)
    {
      sub_10000C3E4(v614, &qword_100020928, &qword_100017540);
      sub_10000C3E4(v615, &qword_100020928, &qword_100017540);
      if (v526(v490 + v525, 1, v524) == 1)
      {
        sub_10000C3E4(v490, &qword_100020928, &qword_100017540);
LABEL_140:
        v642(v599, v659, v649);
        v533 = sub_100016D74();
        v534 = sub_100016E74();
        if (os_log_type_enabled(v533, v534))
        {
          v535 = swift_slowAlloc();
          v536 = swift_slowAlloc();
          v677 = v536;
          *v535 = 136315138;
          sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v537 = v599;
          v538 = v649;
          v539 = sub_100016F84();
          v541 = v540;
          (v663)(v537, v538);
          v542 = sub_100015464(v539, v541, &v677);

          *(v535 + 4) = v542;
          _os_log_impl(&_mh_execute_header, v533, v534, "End event modelManagerID %s", v535, 0xCu);
          sub_10000C658(v536);
        }

        else
        {

          (v663)(v599, v649);
        }

        v543 = v633;
        v544 = v651;
        (v674)(v633, v666, v651);
        v545 = v600;
        sub_10000E018(v675, v543, v600);
        (v665)(v543, v544);
        if ((v661)(v545, 1, v662) == 1)
        {
          sub_10000C3E4(v600, &qword_1000208F8, &qword_100017520);
        }

        else
        {
          v546 = *v600;
          v547 = v612;
          v548 = v593;
          v549 = v613;
          (*(v612 + 32))(v593, v600 + v662[12], v613);
          v550 = v611;
          (*(v547 + 16))(v611, v548, v549);
          (*(v547 + 56))(v550, 0, 1, v549);
          v551 = v546;
          sub_10000BECC(v546, v660, v550, "emit SELF event %s", "emit nil SELF event", "Failed to emit SELF event to data pool, %@");

          sub_10000C3E4(v550, &qword_100020900, &qword_100017528);
          (*(v547 + 8))(v548, v549);
        }

LABEL_146:
        v552 = v608;
        sub_100016B94();
        v553 = enum case for GenerativeFunctionsInstrumentationEvent.Subtype.fail(_:);
        v554 = v616;
        v555 = v651;
        (v674)(v616, enum case for GenerativeFunctionsInstrumentationEvent.Subtype.fail(_:), v651);
        (v670)(v554, 0, 1, v555);
        v556 = *(v644 + 48);
        v557 = v609;
        sub_10000C37C(v552, v609, &qword_100020928, &qword_100017540);
        sub_10000C37C(v554, &v557[v556], &qword_100020928, &qword_100017540);
        v558 = v673;
        if (v673(v557, 1, v555) == 1)
        {
          sub_10000C3E4(v616, &qword_100020928, &qword_100017540);
          sub_10000C3E4(v552, &qword_100020928, &qword_100017540);
          if (v558(&v557[v556], 1, v555) == 1)
          {
            sub_10000C3E4(v557, &qword_100020928, &qword_100017540);
            v559 = v659;
LABEL_153:
            v642(v589, v559, v649);
            v564 = sub_100016D74();
            v565 = sub_100016E74();
            if (os_log_type_enabled(v564, v565))
            {
              v566 = swift_slowAlloc();
              v567 = swift_slowAlloc();
              v677 = v567;
              *v566 = 136315138;
              sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v568 = v589;
              v569 = v649;
              v570 = sub_100016F84();
              v572 = v571;
              (v663)(v568, v569);
              v573 = sub_100015464(v570, v572, &v677);

              *(v566 + 4) = v573;
              _os_log_impl(&_mh_execute_header, v564, v565, "Failed event modelManagerID %s", v566, 0xCu);
              sub_10000C658(v567);
            }

            else
            {

              (v663)(v589, v649);
            }

            v574 = v633;
            v575 = v651;
            (v674)(v633, v553, v651);
            v576 = v601;
            sub_10000E018(v675, v574, v601);
            (v665)(v574, v575);
            if ((v661)(v576, 1, v662) == 1)
            {
              sub_10000C3E4(v601, &qword_1000208F8, &qword_100017520);
            }

            else
            {
              v577 = *v601;
              v578 = v612;
              v579 = v594;
              v580 = v613;
              (*(v612 + 32))(v594, v601 + v662[12], v613);
              v581 = v611;
              (*(v578 + 16))(v611, v579, v580);
              (*(v578 + 56))(v581, 0, 1, v580);
              v582 = v577;
              sub_10000BECC(v577, v660, v581, "emit SELF event %s", "emit nil SELF event", "Failed to emit SELF event to data pool, %@");

              sub_10000C3E4(v581, &qword_100020900, &qword_100017528);
              (*(v578 + 8))(v579, v580);
            }

            goto LABEL_159;
          }
        }

        else
        {
          v560 = v597;
          sub_10000C37C(v557, v597, &qword_100020928, &qword_100017540);
          if (v558(&v557[v556], 1, v555) != 1)
          {
            v561 = v633;
            (*(v647 + 32))(v633, &v557[v556], v555);
            sub_10000C49C(&qword_100020948, 255, &type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype, &protocol conformance descriptor for GenerativeFunctionsInstrumentationEvent.Subtype);
            v562 = sub_100016DE4();
            v563 = v665;
            (v665)(v561, v555);
            sub_10000C3E4(v616, &qword_100020928, &qword_100017540);
            sub_10000C3E4(v552, &qword_100020928, &qword_100017540);
            v563(v560, v555);
            sub_10000C3E4(v557, &qword_100020928, &qword_100017540);
            v559 = v659;
            if ((v562 & 1) == 0)
            {
LABEL_160:
              v583 = v592;
              v584 = v649;
              v642(v592, v559, v649);
              swift_beginAccess();
              sub_1000030E4(0, v583, sub_10000C6AC, sub_10000C6AC);
              swift_endAccess();

              v220 = v559;
              v246 = v584;
              return (v663)(v220, v246);
            }

            goto LABEL_153;
          }

          sub_10000C3E4(v616, &qword_100020928, &qword_100017540);
          sub_10000C3E4(v552, &qword_100020928, &qword_100017540);
          (v665)(v560, v555);
        }

        sub_10000C3E4(v557, &qword_100020910, &qword_100017530);
LABEL_159:
        v559 = v659;
        goto LABEL_160;
      }
    }

    else
    {
      v527 = v595;
      sub_10000C37C(v490, v595, &qword_100020928, &qword_100017540);
      if (v526(v490 + v525, 1, v524) != 1)
      {
        v528 = v490 + v525;
        v529 = v633;
        (*(v647 + 32))(v633, v528, v524);
        sub_10000C49C(&qword_100020948, 255, &type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype, &protocol conformance descriptor for GenerativeFunctionsInstrumentationEvent.Subtype);
        v530 = sub_100016DE4();
        v531 = v529;
        v532 = v665;
        (v665)(v531, v524);
        sub_10000C3E4(v614, &qword_100020928, &qword_100017540);
        sub_10000C3E4(v615, &qword_100020928, &qword_100017540);
        v532(v527, v524);
        sub_10000C3E4(v490, &qword_100020928, &qword_100017540);
        if ((v530 & 1) == 0)
        {
          goto LABEL_146;
        }

        goto LABEL_140;
      }

      sub_10000C3E4(v614, &qword_100020928, &qword_100017540);
      sub_10000C3E4(v615, &qword_100020928, &qword_100017540);
      (v665)(v527, v524);
    }

    sub_10000C3E4(v490, &qword_100020910, &qword_100017530);
    goto LABEL_146;
  }

  v221 = sub_100016D74();
  v222 = sub_100016E74();
  if (os_log_type_enabled(v221, v222))
  {
    v223 = swift_slowAlloc();
    *v223 = 0;
    _os_log_impl(&_mh_execute_header, v221, v222, "GMSSELFIngestor.processEvent() event type: com.apple.mm.executeRequest.begin", v223, 2u);
  }

  v224 = v649;
  v642(v190, v188, v649);
  v225 = v648;
  v226 = v662;
  (v662)(v648, v165, v184);
  v675 = sub_100016BB4();
  v227 = v184;
  v666 = v228;
  v229 = v655;
  sub_100016B94();
  type metadata accessor for PartnerCloudRequestEvents(0);
  v230 = swift_allocObject();
  v231 = *(v676 + 56);
  v231(v230 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_promptRequestStartEvent, 1, 1, v184);
  v231(v230 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_firstTokenEvent, 1, 1, v184);
  v231(v230 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_modelInfoEvent, 1, 1, v184);
  v231(v230 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_signedInStatusEvent, 1, 1, v184);
  v231(v230 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_webSearchStatusEvent, 1, 1, v184);
  v232 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_requestLinkAndMonoTimeStamp;
  v233 = sub_100009F00(&qword_100020778, &unk_1000176A0);
  (*(*(v233 - 8) + 56))(v230 + v232, 1, 1, v233);
  v642((v230 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_requestIdentifier), v672, v224);
  *(v230 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_inferenceRequestType) = 5;
  v226(v230 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_clientRequestStartEvent, v225, v227);
  *(v230 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_ingestor) = v669;
  v234 = (v230 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_eventType);
  v235 = v666;
  *v234 = v675;
  v234[1] = v235;
  sub_10000C37C(v229, v230 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_eventSubType, &qword_100020928, &qword_100017540);
  v236 = v656;
  v226(v656, v225, v227);
  v231(v236, 0, 1, v227);

  sub_10001619C(0xD000000000000017, 0x8000000100017B60, v236);
  sub_10000C3E4(v236, &qword_100020920, &unk_1000175F0);
  v237 = v645;
  sub_100016B24();
  v238 = sub_100016AE4();
  v240 = v239;
  v670(v237, v673);
  if (v240)
  {
    v241 = v641;
    sub_1000168C4();
    v242 = v649;
    if (v590(v241, 1, v649) == 1)
    {

      sub_10000C3E4(v655, &qword_100020928, &qword_100017540);
      (v664)(v225, v674);
      v243 = v663;
      (v663)(v672, v242);
      sub_10000C3E4(v241, &qword_100020930, &qword_100017770);
      v244 = v242;
    }

    else
    {
      sub_10000C3E4(v241, &qword_100020930, &qword_100017770);
      v290 = v672;
      sub_1000168D4();
      v291 = v637;
      sub_10000F204(46, 0x3Eu, v292, v637);

      v293 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_requestLinkAndMonoTimeStamp;
      swift_beginAccess();
      sub_10000C30C(v291, v230 + v293);
      swift_endAccess();
      v294 = v636;
      v642(v636, v290, v242);

      v295 = sub_100016D74();
      v296 = sub_100016E74();

      if (os_log_type_enabled(v295, v296))
      {
        v297 = swift_slowAlloc();
        v675 = swift_slowAlloc();
        v679[0] = v675;
        *v297 = 136315394;
        v298 = sub_100015464(v238, v240, v679);

        *(v297 + 4) = v298;
        *(v297 + 12) = 2080;
        v299 = sub_1000168D4();
        v301 = v300;
        v302 = v294;
        v244 = v649;
        v303 = v663;
        (v663)(v302, v649);
        v304 = sub_100015464(v299, v301, v679);

        *(v297 + 14) = v304;
        _os_log_impl(&_mh_execute_header, v295, v296, "RequestLink sourceID:%s sourceComponent: COMPONENTNAME_TRACE, targetID %s targetComponent: COMPONENTNAME_GMS", v297, 0x16u);
        swift_arrayDestroy();

        v243 = v303;

        sub_10000C3E4(v655, &qword_100020928, &qword_100017540);
        (v664)(v648, v674);
        v303(v672, v244);
      }

      else
      {

        v328 = v294;
        v244 = v649;
        v243 = v663;
        (v663)(v328, v649);
        sub_10000C3E4(v655, &qword_100020928, &qword_100017540);
        (v664)(v648, v674);
        v243(v290, v244);
      }
    }
  }

  else
  {
    sub_10000C3E4(v655, &qword_100020928, &qword_100017540);
    (v664)(v225, v227);
    v244 = v649;
    v243 = v663;
    (v663)(v672, v649);
  }

  v329 = v592;
  v330 = v659;
  v642(v592, v659, v244);
  swift_beginAccess();

  sub_1000030E4(v331, v329, sub_10000C6AC, sub_10000C6AC);
  swift_endAccess();

  return (v243)(v330, v244);
}

uint64_t sub_100009A28()
{

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t sub_100009AB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100009B48;

  return sub_1000017CC(a1);
}

uint64_t sub_100009B48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100009C3C()
{
  v0 = type metadata accessor for GMSSELFIngestor();
  v2 = sub_10000C49C(&qword_1000208C8, v1, type metadata accessor for GMSSELFIngestor, &unk_100017498);

  return IngestionExtension.configuration.getter(v0, v2);
}

char *sub_100009CBC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GMSSELFIngestor();
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  v3 = sub_10000A09C(&_swiftEmptyArrayStorage, sub_10000BBB4);
  *(v2 + 24) = 0;
  *(v2 + 32) = &_swiftEmptyArrayStorage;
  *(v2 + 40) = v3;
  result = sub_10000A09C(&_swiftEmptyArrayStorage, sub_10000B9D8);
  *(v2 + 48) = 0;
  *(v2 + 56) = &_swiftEmptyArrayStorage;
  *(v2 + 64) = result;
  *(v2 + 72) = &off_10001C970;
  *(v2 + 80) = &off_10001C9F0;
  *a1 = v2;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for GMSSELFIngestor();
  sub_10000C49C(&qword_100020770, v3, type metadata accessor for GMSSELFIngestor, &unk_1000174C8);
  sub_100016A14();
  return 0;
}

uint64_t sub_100009E1C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100016BD4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of PartnerCloudRequestEvents.requestLinkAndMonoTimeStamp@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100009F00(&qword_100020778, &unk_1000176A0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100009F00(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_10000A014(uint64_t a1, uint64_t a2)
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

  sub_100009F00(&qword_1000208E0, &qword_100017510);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

char *sub_10000A09C(unint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = sub_100016F44();
  if (!v5)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_10000A014(v5, 0);
  a2(v7 + 32, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10000A138(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

      v9 = a1(v12);

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

uint64_t sub_10000A1E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100016904();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = v2 + 1;
  v9 = v2[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[1] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10000B654(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_10000B654((v11 > 1), v12 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v7, v4);
  v2[1] = v9;
  if (*v2)
  {
    swift_beginAccess();
    if (sub_1000169C4() > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v14 = *v2;
      if ((result & 1) == 0)
      {
        if (!v14)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v15 = sub_1000169E4();

        *v2 = v15;
        v14 = v15;
      }

      if (v14)
      {
        return sub_100016984();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_10000A728();
}

uint64_t sub_10000A42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3[1];
  v7 = *(v6 + 16);
  v8 = *v3;
  if (!*v3)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    return sub_10000A590(a1, a3);
  }

  swift_beginAccess();
  if ((*(v8 + 16) & 0x3FLL) == (*(v8 + 24) & 0x3FLL))
  {
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (v7 <= sub_1000169D4())
  {
LABEL_16:
    sub_10000A590(a1, a3);
    return sub_10000A728();
  }

  result = swift_isUniquelyReferenced_native();
  v11 = *v3;
  if ((result & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = sub_1000169E4();

    *v3 = v12;
    v11 = v12;
  }

  if (v11)
  {

    result = sub_10000A9C8(a2, (v11 + 16), v11 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_10000AD20(a1, a1 + 1, v6, (v11 + 16), v11 + 32);

      return sub_10000A590(a1, a3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000A590@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10000A7C8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_100016904();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10000A694(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
    *v2 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 8 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 40), 8 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    sub_100016F14();
    return v10;
  }

  return result;
}

uint64_t sub_10000A728()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = sub_1000169F4();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_10000B31C(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

void *sub_10000A7F0(void *result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009F00(&qword_100020968, &qword_100017558);
  v10 = *(sub_100016904() - 8);
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
  v15 = *(sub_100016904() - 8);
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

unint64_t sub_10000A9C8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v7 = sub_100016904();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100016964();
  *&v23 = a2;
  *(&v23 + 1) = a3;
  *&v24 = a1;
  *(&v24 + 1) = v11;
  *&v25 = v12;
  *(&v25 + 1) = v13;
  v26 = 0;
  sub_1000169B4();
  if (*(&v24 + 1))
  {
    v21[0] = a3;
    v14 = sub_100016974();
    v21[1] = v8 + 16;
    while (1)
    {
      v31 = v23;
      v32 = v24;
      v33 = v25;
      v34 = v26;
      result = sub_100016994();
      if (v16)
      {
LABEL_21:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v17 = *(v22 + 8);
      if (result >= *(v17 + 16))
      {
        goto LABEL_19;
      }

      (*(v8 + 16))(v10, v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);
      sub_10000C49C(&qword_100020960, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = sub_100016DC4();
      result = (*(v8 + 8))(v10, v7);
      v19 = 1 << *a2;
      if (__OFSUB__(v19, 1))
      {
        goto LABEL_20;
      }

      v20 = (v19 - 1) & v18;
      if (a1 >= v14)
      {
        if (v20 < v14)
        {
          goto LABEL_3;
        }
      }

      else if (v20 >= v14)
      {
        goto LABEL_13;
      }

      if (a1 >= v20)
      {
LABEL_13:
        v27 = v23;
        v28 = v24;
        v29 = v25;
        v30 = v26;
        sub_100016994();
        a1 = v28;
        sub_100016984();
      }

LABEL_3:
      sub_1000169B4();
      if (!*(&v24 + 1))
      {
        return sub_100016984();
      }
    }
  }

  return sub_100016984();
}

void sub_10000AD20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_100016904();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v59 - v15;
  v17 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v17 >= 1)
  {
    v18 = *(a3 + 16);
    if (a1 >= (v18 - v17) / 2)
    {
      v60 = a3;
      if (__OFSUB__(v18, a2))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v65 = v18;
      if ((v18 - a2) >= sub_1000169C4() / 3)
      {
LABEL_51:
        v54 = sub_100016964();
        *&v66 = a4;
        *(&v66 + 1) = a5;
        *&v67 = 0;
        *(&v67 + 1) = v54;
        *&v68 = v55;
        *(&v68 + 1) = v56;
        v69 = 0;
        while (1)
        {
          v70 = v66;
          v71 = v67;
          v72 = v68;
          v73 = v69;
          v57 = sub_100016994();
          if ((v58 & 1) == 0 && v57 >= a2)
          {
            if (__OFSUB__(v57, v17))
            {
              goto LABEL_59;
            }

            sub_1000169A4();
          }

          sub_1000169B4();
          if (!v67)
          {
            return;
          }
        }
      }

      if (v65 < a2)
      {
        goto LABEL_69;
      }

      if ((a2 & 0x8000000000000000) != 0)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (v65 != a2)
      {
        if (v65 <= a2)
        {
LABEL_71:
          __break(1u);
          return;
        }

        v63 = v60 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v36 = *(v11 + 16);
        v35 = v11 + 16;
        v61 = *(v35 + 56);
        v62 = v36;
        v64 = v35;
        v37 = (v35 - 8);

        while (1)
        {
          v62(v14, v63 + v61 * a2, v10);
          sub_10000C49C(&qword_100020960, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v38 = sub_100016DC4();
          (*v37)(v14, v10);
          v39 = 1 << *a4;
          v23 = __OFSUB__(v39, 1);
          v40 = v39 - 1;
          if (v23)
          {
            goto LABEL_60;
          }

          v41 = v40 & v38;
          v42 = sub_100016964();
          *&v66 = a4;
          *(&v66 + 1) = a5;
          *&v67 = v41;
          *(&v67 + 1) = v42;
          *&v68 = v43;
          *(&v68 + 1) = v44;
          v69 = 0;
          while (*(&v67 + 1))
          {
            v70 = v66;
            v71 = v67;
            v72 = v68;
            v73 = v69;
            v45 = sub_100016994();
            if ((v46 & 1) == 0 && v45 == a2)
            {
              break;
            }

            sub_1000169B4();
          }

          v47 = (a2 + 1);
          v48 = __OFADD__(a2, 1);
          if (__OFSUB__(a2, v17))
          {
            goto LABEL_61;
          }

          sub_1000169A4();
          if (v48)
          {
            goto LABEL_62;
          }

          ++a2;
          if (v47 == v65)
          {

            return;
          }
        }
      }
    }

    else
    {
      a2 = *(a3 + 16);
      if (sub_1000169C4() / 3 <= a1)
      {
        v49 = sub_100016964();
        *&v66 = a4;
        *(&v66 + 1) = a5;
        *&v67 = 0;
        *(&v67 + 1) = v49;
        *&v68 = v50;
        *(&v68 + 1) = v51;
        v69 = 0;
        while (1)
        {
          v70 = v66;
          v71 = v67;
          v72 = v68;
          v73 = v69;
          v52 = sub_100016994();
          if ((v53 & 1) == 0 && v52 < a1)
          {
            if (__OFADD__(v52, v17))
            {
              __break(1u);
              goto LABEL_51;
            }

            sub_1000169A4();
          }

          sub_1000169B4();
          if (!v67)
          {
            goto LABEL_18;
          }
        }
      }

      if (a1 < 0)
      {
        goto LABEL_67;
      }

      if (a2 < a1)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      if (a1)
      {
        v19 = *(v11 + 16);
        v64 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v65 = v19;
        v63 = *(v11 + 72);
        v60 = a3;

        v20 = 0;
        while (1)
        {
          v65(v16, v64 + v63 * v20, v10);
          sub_10000C49C(&qword_100020960, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v21 = sub_100016DC4();
          (*(v11 + 8))(v16, v10);
          v22 = 1 << *a4;
          v23 = __OFSUB__(v22, 1);
          v24 = v22 - 1;
          if (v23)
          {
            break;
          }

          v25 = v24 & v21;
          v26 = sub_100016964();
          *&v66 = a4;
          *(&v66 + 1) = a5;
          *&v67 = v25;
          *(&v67 + 1) = v26;
          *&v68 = v27;
          *(&v68 + 1) = v28;
          v69 = 0;
          while (*(&v67 + 1))
          {
            v70 = v66;
            v71 = v67;
            v72 = v68;
            v73 = v69;
            v29 = sub_100016994();
            if ((v30 & 1) == 0 && v29 == v20)
            {
              break;
            }

            sub_1000169B4();
          }

          if (__OFADD__(v20, v17))
          {
            goto LABEL_58;
          }

          ++v20;
          sub_1000169A4();
          if (v20 == a1)
          {

            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_18:
      v31 = a4[1];
      if (__OFSUB__(v31 >> 6, v17))
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v32 = 1 << *a4;
      v23 = __OFSUB__(v32, 1);
      v33 = v32 - 1;
      if (v23)
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v34 = (v33 & (((v31 >> 6) - v17) >> 63)) + (v31 >> 6) - v17;
      if (v34 < v33)
      {
        v33 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v34 - v33) << 6);
    }
  }
}

uint64_t sub_10000B31C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = sub_1000169F4();
  result = 0;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v9 = sub_100016A04();
    sub_10000B39C(a1, (v9 + 16), v9 + 32);
    return v9;
  }

  return result;
}

uint64_t sub_10000B438(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v29 = a4;
  v30 = a1;
  v6 = sub_100016904();
  result = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2;
  if (a2)
  {
    if ((v38 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v13 = *(v8 + 16);
      v12 = v8 + 16;
      v26 = *(v12 + 56);
      v27 = v13;
      v28 = v12;
      v25 = (v12 - 8);
      v13(v10, v30, v6);
      while (1)
      {
        sub_10000C49C(&qword_100020960, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        result = sub_100016DC4();
        v14 = 1 << *a3;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
          break;
        }

        v17 = v16 & result;
        v18 = v29;
        v19 = sub_100016964();
        v21 = v20;
        v23 = v22;
        (*v25)(v10, v6);
        v31 = a3;
        v32 = v18;
        v33 = v17;
        v34 = v19;
        v35 = v21;
        v36 = v23;
        v37 = 0;
        while (v34)
        {
          sub_1000169B4();
        }

        result = sub_1000169A4();
        if (++v11 == v38)
        {
          return result;
        }

        v27(v10, v30 + v26 * v11, v6);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void *sub_10000B654(void *a1, int64_t a2, char a3)
{
  result = sub_10000A7F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10000B674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v30 = a2;
  v8 = sub_100016904();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C49C(&qword_100020960, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v29[1] = a1;
  result = sub_100016DC4();
  v13 = 1 << *a4;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = v15 & result;
    v17 = sub_100016964();
    *&v35 = a4;
    *(&v35 + 1) = a5;
    *&v36 = v16;
    *(&v36 + 1) = v17;
    *&v37 = v18;
    *(&v37 + 1) = v19;
    v38 = 0;
    v20 = sub_100016994();
    if ((v21 & 1) == 0)
    {
      v24 = *(v9 + 16);
      v22 = v9 + 16;
      v23 = v24;
      v25 = *(v22 + 56);
      v26 = (v22 - 8);
      do
      {
        v23(v11, v30 + v25 * v20, v8);
        sub_10000C49C(&qword_100020958, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v27 = sub_100016DE4();
        (*v26)(v11, v8);
        if (v27)
        {
          break;
        }

        sub_1000169B4();
        v31 = v35;
        v32 = v36;
        v33 = v37;
        v34 = v38;
        v20 = sub_100016994();
      }

      while ((v28 & 1) == 0);
    }

    return v20;
  }

  return result;
}

uint64_t (*sub_10000B8D0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100016EE4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_10000B950;
  }

  __break(1u);
  return result;
}

uint64_t *sub_10000B958(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100016EE4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_10000C6A8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000B9D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100016F44();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100016F44();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000BD44(&qword_1000208D8, &qword_1000208D0, &qword_100017508);
          for (i = 0; i != v6; ++i)
          {
            sub_100009F00(&qword_1000208D0, &qword_100017508);
            v9 = sub_10000B8D0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for GFILinkingEvent(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000BB68(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000BBB4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100016F44();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100016F44();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000BD44(&qword_1000208F0, &qword_1000208E8, &qword_100017518);
          for (i = 0; i != v6; ++i)
          {
            sub_100009F00(&qword_1000208E8, &qword_100017518);
            v9 = sub_10000B958(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PartnerCloudRequestEvents(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000BD44(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000BB68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000BD98(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_10000BDEC(uint64_t a1)
{
  v2 = [objc_allocWithZone(GMSSchemaGMSClientEvent) init];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_allocWithZone(GMSSchemaGMSClientEventMetadata) init];
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    [v4 setGmsId:a1];
    [v3 setEventMetadata:v6];
    v7 = [objc_allocWithZone(GMSSchemaGMSModelRequestContext) init];
    [v3 setGmsModelRequestContext:v7];

    v3 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_10000BECC(void *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, ...)
{
  if (a1)
  {
    v6 = a1;
    sub_100016914();
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v11 = sub_100016D94();
    sub_10000BD98(v11, qword_100020FA0);
    v12 = v6;
    oslog = sub_100016D74();
    v13 = sub_100016E74();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      v16 = [v12 formattedJsonBody];
      if (v16)
      {
        v17 = v16;
        v18 = sub_100016E04();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0xE000000000000000;
      }

      v21 = sub_100015464(v18, v20, &v23);

      *(v14 + 4) = v21;
      _os_log_impl(&_mh_execute_header, oslog, v13, a4, v14, 0xCu);
      sub_10000C658(v15);
    }
  }

  else
  {
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v8 = sub_100016D94();
    sub_10000BD98(v8, qword_100020FA0);
    oslog = sub_100016D74();
    v9 = sub_100016E74();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, a5, v10, 2u);
    }
  }
}

uint64_t sub_10000C29C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F00(&qword_100020920, &unk_1000175F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C30C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F00(&qword_100020918, &qword_100017538);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C37C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100009F00(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000C3E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100009F00(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000C444(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100016F94() & 1;
  }
}

uint64_t sub_10000C49C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10000C4E4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000C528()
{
  v1 = sub_100016924();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000C658(void *a1)
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

uint64_t sub_10000C6CC@<X0>(int a3@<W2>, unsigned int a4@<W3>, void *a6@<X5>, void *a7@<X8>)
{
  v92 = a6;
  LODWORD(v89) = a3;
  v10 = sub_100016A74();
  __chkstk_darwin(v10 - 8);
  v90 = &v84[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_100009F00(&qword_100020930, &qword_100017770);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v84[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v84[-v16];
  v18 = sub_100016904();
  v95 = *(v18 - 8);
  v96 = v18;
  v19 = __chkstk_darwin(v18);
  v91 = &v84[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v93 = &v84[-v21];
  v22 = [objc_allocWithZone(SISchemaRequestLink) init];
  if (!v22)
  {
    goto LABEL_13;
  }

  v23 = v22;
  v94 = a7;
  v24 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
  if (!v24)
  {
    a7 = v94;
LABEL_12:

LABEL_13:
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v36 = sub_100016D94();
    sub_10000BD98(v36, qword_100020FA0);
    v37 = sub_100016D74();
    v38 = sub_100016E84();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to emit RequestLink, either RequestLink or RequestLinkInfo is nil", v39, 2u);
    }

    v40 = sub_100009F00(&qword_100020778, &unk_1000176A0);
    v41 = *(*(v40 - 8) + 56);

    return v41(a7, 1, 1, v40);
  }

  v88 = v24;
  v25 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
  if (!v25)
  {

    a7 = v94;
    v23 = v88;
    goto LABEL_12;
  }

  v87 = v25;
  sub_1000168C4();
  v27 = v95;
  v26 = v96;
  v28 = *(v95 + 48);
  if (v28(v17, 1, v96) == 1)
  {
    sub_10000C3E4(v17, &qword_100020930, &qword_100017770);
    v29 = v94;
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v30 = sub_100016D94();
    sub_10000BD98(v30, qword_100020FA0);
    v31 = sub_100016D74();
    v32 = sub_100016E84();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v87;
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to emit RequestLink, source ID is nil", v35, 2u);
    }

LABEL_32:
    v78 = sub_100009F00(&qword_100020778, &unk_1000176A0);
    return (*(*(v78 - 8) + 56))(v29, 1, 1, v78);
  }

  v85 = a4;
  v86 = v7;
  v43 = v17;
  v44 = *(v27 + 32);
  v44(v93, v43, v26);
  v45 = objc_allocWithZone(SISchemaUUID);
  isa = sub_1000168E4().super.isa;
  v47 = v96;
  v48 = [v45 initWithNSUUID:isa];

  sub_1000168C4();
  if (v28(v15, 1, v47) == 1)
  {
    sub_10000C3E4(v15, &qword_100020930, &qword_100017770);
    v29 = v94;
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v49 = sub_100016D94();
    sub_10000BD98(v49, qword_100020FA0);
    v50 = sub_100016D74();
    v51 = sub_100016E84();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v95;
    v54 = v87;
    if (v52)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Failed to emit RequestLink, target ID is nil", v55, 2u);

      v56 = v48;
      v57 = v88;
    }

    else
    {
      v56 = v50;
      v57 = v87;
      v54 = v48;
      v50 = v23;
      v23 = v88;
    }

    (*(v53 + 8))(v93, v47);
    goto LABEL_32;
  }

  v58 = v91;
  v59 = v47;
  v44(v91, v15, v47);
  v60 = objc_allocWithZone(SISchemaUUID);
  v61 = sub_1000168E4().super.isa;
  v62 = [v60 initWithNSUUID:v61];

  v63 = v88;
  [v88 setComponent:v89];
  [v63 setUuid:v48];
  [v23 setSource:v63];
  v64 = v87;
  [v87 setComponent:v85];
  v92 = v62;
  [v64 setUuid:v62];
  [v23 setTarget:v64];
  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v65 = sub_100016D94();
  sub_10000BD98(v65, qword_100020FA0);
  v66 = v23;
  v67 = sub_100016D74();
  v68 = sub_100016E74();

  v69 = os_log_type_enabled(v67, v68);
  v70 = v94;
  if (v69)
  {
    v89 = v48;
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v97 = v72;
    *v71 = 136315138;
    v73 = [v66 formattedJsonBody];
    if (v73)
    {
      v74 = v73;
      v75 = sub_100016E04();
      v77 = v76;

      v58 = v91;
    }

    else
    {
      v75 = 0;
      v77 = 0xE000000000000000;
    }

    v80 = sub_100015464(v75, v77, &v97);

    *(v71 + 4) = v80;
    _os_log_impl(&_mh_execute_header, v67, v68, "Return Request Link %s", v71, 0xCu);
    sub_10000C658(v72);

    v79 = v96;
    v48 = v89;
  }

  else
  {

    v79 = v59;
  }

  v81 = sub_100009F00(&qword_100020778, &unk_1000176A0);
  *v70 = v66;
  v82 = v66;
  sub_100016BC4();
  sub_100016944();

  v83 = *(v95 + 8);
  v83(v58, v79);
  v83(v93, v79);
  return (*(*(v81 - 8) + 56))(v70, 0, 1, v81);
}

id sub_10000D060()
{
  v0 = sub_100009F00(&qword_100020930, &qword_100017770);
  __chkstk_darwin(v0 - 8);
  v98 = &v96 - v1;
  v2 = sub_100016904();
  v99 = *(v2 - 8);
  __chkstk_darwin(v2);
  v97 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_100016B14();
  v4 = *(v107 - 8);
  v5 = __chkstk_darwin(v107);
  v105 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v104 = &v96 - v7;
  v8 = sub_100009F00(&qword_100020A58, &qword_1000175B8);
  v9 = __chkstk_darwin(v8 - 8);
  v103 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v102 = &v96 - v12;
  v13 = __chkstk_darwin(v11);
  v101 = &v96 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v96 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v96 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v96 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v96 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v96 - v28;
  __chkstk_darwin(v27);
  v110 = &v96 - v30;
  v31 = [objc_allocWithZone(GMSSchemaGMSPrivateCloudMetrics) init];
  v32 = sub_100016D44();
  if (v33)
  {
    v34 = sub_100016D34();
    if (v35)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [v31 setTokenRate:*&v32];
    v34 = sub_100016D34();
    if (v46)
    {
LABEL_3:
      v36 = sub_100016D24();
      if (v37)
      {
        goto LABEL_4;
      }

LABEL_12:
      [v31 setExtendLatencyMillis:*&v36];
      v38 = sub_100016D14();
      if (v48)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  [v31 setTimeToFirstTokenMillis:*&v34];
  v36 = sub_100016D24();
  if ((v47 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  v38 = sub_100016D14();
  if ((v39 & 1) == 0)
  {
LABEL_5:
    [v31 setOutputTokensCount:v38];
  }

LABEL_6:
  v106 = v4;
  v100 = v2;
  v40 = sub_100016D04();
  if ((v41 & 1) == 0)
  {
    [v31 setInputTokensCount:v40];
  }

  v108 = v31;
  v109 = [objc_allocWithZone(GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics) init];
  v42 = v110;
  sub_100016C64();
  sub_10000DFA8(v42, v29);
  v43 = sub_100016CF4();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  if (v45(v29, 1, v43) == 1)
  {
    sub_10000C3E4(v29, &qword_100020A58, &qword_1000175B8);
  }

  else
  {
    v49 = sub_100016C74();
    (*(v44 + 8))(v29, v43);
    if ((v49 & 0x100000000) == 0)
    {
      LODWORD(v50) = v49;
      [v109 setSpeculativeDecodingAcceptanceRate:v50];
    }
  }

  sub_10000DFA8(v110, v26);
  if (v45(v26, 1, v43) == 1)
  {
    sub_10000C3E4(v26, &qword_100020A58, &qword_1000175B8);
  }

  else
  {
    v51 = sub_100016CB4();
    (*(v44 + 8))(v26, v43);
    if ((v51 & 0x100000000) == 0)
    {
      [v109 setDraftModelInferenceCallCount:v51];
    }
  }

  v52 = v110;
  sub_10000DFA8(v110, v23);
  if (v45(v23, 1, v43) == 1)
  {
    sub_10000C3E4(v23, &qword_100020A58, &qword_1000175B8);
  }

  else
  {
    v53 = sub_100016CC4();
    (*(v44 + 8))(v23, v43);
    if ((v53 & 0x100000000) == 0)
    {
      [v109 setTargetModelInferenceCallCount:v53];
    }
  }

  sub_10000DFA8(v52, v20);
  if (v45(v20, 1, v43) == 1)
  {
    sub_10000C3E4(v20, &qword_100020A58, &qword_1000175B8);
  }

  else
  {
    v54 = sub_100016C94();
    (*(v44 + 8))(v20, v43);
    if ((v54 & 0x100000000) == 0)
    {
      [v109 setDraftOutputTokenCount:v54];
    }
  }

  sub_10000DFA8(v52, v17);
  v55 = v45(v17, 1, v43);
  v56 = v101;
  if (v55 == 1)
  {
    sub_10000C3E4(v17, &qword_100020A58, &qword_1000175B8);
  }

  else
  {
    v57 = sub_100016CA4();
    (*(v44 + 8))(v17, v43);
    if ((v57 & 0x100000000) == 0)
    {
      [v109 setTargetOutputTokenCount:v57];
    }
  }

  sub_10000DFA8(v52, v56);
  if (v45(v56, 1, v43) == 1)
  {
    sub_10000C3E4(v56, &qword_100020A58, &qword_1000175B8);
  }

  else
  {
    v58 = sub_100016CD4();
    v60 = v59;
    (*(v44 + 8))(v56, v43);
    if ((v60 & 1) == 0)
    {
      [v109 setDraftModelTotalInferenceLatencyMillis:v58];
    }
  }

  v61 = v102;
  sub_10000DFA8(v52, v102);
  if (v45(v61, 1, v43) == 1)
  {
    sub_10000C3E4(v61, &qword_100020A58, &qword_1000175B8);
  }

  else
  {
    v62 = sub_100016CE4();
    v64 = v63;
    (*(v44 + 8))(v61, v43);
    if ((v64 & 1) == 0)
    {
      [v109 setTargetModelTotalInferenceLatencyMillis:v62];
    }
  }

  v65 = v52;
  v66 = v103;
  sub_10000DFA8(v65, v103);
  if (v45(v66, 1, v43) == 1)
  {
    sub_10000C3E4(v66, &qword_100020A58, &qword_1000175B8);
    v67 = v106;
    v68 = v107;
  }

  else
  {
    v69 = sub_100016C84();
    v71 = v70;
    (*(v44 + 8))(v66, v43);
    v67 = v106;
    v68 = v107;
    if ((v71 & 1) == 0)
    {
      [v109 setDraftSteps:v69];
    }
  }

  v72 = v108;
  [v108 setGmsPrivateCloudSpeculativeDecodingMetrics:v109];
  v73 = [objc_allocWithZone(GMSSchemaGMSPrivateCloudMetricsReceived) init];
  [v73 setGmsPrivateCloudMetrics:v72];
  v74 = v104;
  sub_100016B24();
  v75 = sub_100016AD4();
  v77 = v76;
  v78 = *(v67 + 8);
  v78(v74, v68);
  if (!v77)
  {
    goto LABEL_62;
  }

  if (v75 == 0xD000000000000021 && 0x8000000100017C50 == v77 || (sub_100016F94() & 1) != 0)
  {

    v79 = 1;
    goto LABEL_63;
  }

  if (v75 == 0xD000000000000022 && 0x8000000100017900 == v77 || (sub_100016F94() & 1) != 0)
  {

    v79 = 2;
    goto LABEL_63;
  }

  if (v75 == 0xD000000000000022 && 0x8000000100017930 == v77 || (sub_100016F94() & 1) != 0)
  {

    v79 = 4;
    goto LABEL_63;
  }

  if (v75 == 0xD00000000000001ALL && 0x8000000100017960 == v77)
  {

    v79 = 5;
    goto LABEL_63;
  }

  v80 = sub_100016F94();

  if (v80)
  {
    v79 = 5;
  }

  else
  {
LABEL_62:
    v79 = 0;
  }

LABEL_63:
  [v73 setGmsCaller:v79];

  v81 = v105;
  sub_100016B24();
  sub_100016AE4();
  v83 = v82;
  v78(v81, v68);
  if (v83)
  {
    v84 = v98;
    sub_1000168C4();

    v86 = v99;
    v85 = v100;
    if ((*(v99 + 48))(v84, 1, v100) == 1)
    {
      sub_10000C3E4(v110, &qword_100020A58, &qword_1000175B8);

      v87 = &qword_100020930;
      v88 = &qword_100017770;
      v89 = v84;
    }

    else
    {
      v90 = v97;
      (*(v86 + 32))(v97, v84, v85);
      if (v73)
      {
        v91 = objc_allocWithZone(SISchemaUUID);
        v92 = v73;
        isa = sub_1000168E4().super.isa;
        v94 = [v91 initWithNSUUID:isa];

        [v92 setClientTraceId:v94];
      }

      else
      {
      }

      (*(v86 + 8))(v90, v85);
      v87 = &qword_100020A58;
      v88 = &qword_1000175B8;
      v89 = v110;
    }

    sub_10000C3E4(v89, v87, v88);
  }

  else
  {
    sub_10000C3E4(v110, &qword_100020A58, &qword_1000175B8);
  }

  return v73;
}

uint64_t GFILinkingEvent.deinit()
{
  v1 = OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_requestIdentifier;
  v2 = sub_100016904();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_event;
  v4 = sub_100016BD4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t GFILinkingEvent.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_requestIdentifier;
  v2 = sub_100016904();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_event;
  v4 = sub_100016BD4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for GFILinkingEvent(uint64_t a1)
{
  result = qword_1000209B8;
  if (!qword_1000209B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000DEC4(uint64_t a1)
{
  result = sub_100016904();
  if (v2 <= 0x3F)
  {
    result = sub_100016BD4();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10000DFA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F00(&qword_100020A58, &qword_1000175B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v56 = a1;
  v58 = a3;
  v53 = sub_100009F00(&qword_100020908, &unk_100017790);
  __chkstk_darwin(v53);
  v4 = sub_100016BD4();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100016B84();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v52 - v13;
  __chkstk_darwin(v12);
  v16 = &v52 - v15;
  v17 = *(v8 + 16);
  v17(&v52 - v15, a2, v7);
  v18 = (*(v8 + 88))(v16, v7);
  if (v18 == enum case for GenerativeFunctionsInstrumentationEvent.Subtype.unknown(_:))
  {
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v19 = sub_100016D94();
    sub_10000BD98(v19, qword_100020FA0);
    v17(v14, a2, v7);
    v20 = sub_100016D74();
    v21 = sub_100016E84();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v59 = v23;
      *v22 = 136315138;
      v24 = sub_100016B74();
      v26 = v25;
      (*(v8 + 8))(v14, v7);
      v27 = sub_100015464(v24, v26, &v59);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "GenerativeFunctionsInstrumentationEvent.subtype not supported %s", v22, 0xCu);
      sub_10000C658(v23);
    }

    else
    {

      (*(v8 + 8))(v14, v7);
    }

LABEL_9:
    v29 = sub_100009F00(&qword_100020940, &qword_100017548);
    return (*(*(v29 - 8) + 56))(v58, 1, 1, v29);
  }

  if (v18 == enum case for GenerativeFunctionsInstrumentationEvent.Subtype.start(_:))
  {
    return sub_100011D60(v58);
  }

  if (v18 == enum case for GenerativeFunctionsInstrumentationEvent.Subtype.end(_:))
  {
    return sub_10000FB98(v56, v58);
  }

  if (v18 == enum case for GenerativeFunctionsInstrumentationEvent.Subtype.fail(_:))
  {
    return sub_100010B20(v56, v58);
  }

  if (v18 == enum case for GenerativeFunctionsInstrumentationEvent.Subtype.info(_:))
  {
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v30 = sub_100016D94();
    sub_10000BD98(v30, qword_100020FA0);
    v32 = v54;
    v31 = v55;
    (*(v54 + 16))(v6, v56, v55);
    v33 = sub_100016D74();
    v34 = sub_100016E84();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v59 = v36;
      *v35 = 136315138;
      sub_100016BA4();
      v37 = sub_100016E14();
      v39 = v38;
      (*(v32 + 8))(v6, v31);
      v40 = sub_100015464(v37, v39, &v59);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "GenerativeFunctionsInstrumentationEvent.subtype.info not supported %s", v35, 0xCu);
      sub_10000C658(v36);
    }

    else
    {

      (*(v32 + 8))(v6, v31);
    }

    goto LABEL_9;
  }

  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v41 = sub_100016D94();
  sub_10000BD98(v41, qword_100020FA0);
  v17(v11, a2, v7);
  v42 = sub_100016D74();
  v43 = sub_100016E84();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v59 = v57;
    *v44 = 136315138;
    v56 = sub_100016B74();
    v46 = v45;
    v47 = *(v8 + 8);
    v47(v11, v7);
    v48 = v47;
    v49 = sub_100015464(v56, v46, &v59);

    *(v44 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v42, v43, "GenerativeFunctionsInstrumentationEvent.subtype not supported %s", v44, 0xCu);
    sub_10000C658(v57);

    v50 = v48;
  }

  else
  {

    v50 = *(v8 + 8);
    v50(v11, v7);
  }

  v51 = sub_100009F00(&qword_100020940, &qword_100017548);
  (*(*(v51 - 8) + 56))(v58, 1, 1, v51);
  return (v50)(v16, v7);
}

uint64_t sub_10000E830(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100016D94();
  sub_1000166D8(v5, a2);
  sub_10000BD98(v5, a2);
  return sub_100016D84();
}

uint64_t sub_10000E8A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000168B4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v38 - v9;
  sub_100016894();
  v11 = *(v1 + 16);
  if (v11)
  {

    v12 = sub_100016DF4();

    v13 = [v11 valueForKey:v12];

    if (v13)
    {
      sub_100016EC4();
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
    }

    v42 = v40;
    v43 = v41;
    if (*(&v41 + 1))
    {
      sub_10000C3E4(&v42, &qword_100020C70, &qword_100017768);

      v14 = sub_100016DF4();

      [v11 doubleForKey:v14];
      v16 = v15;

      if (qword_100020760 != -1)
      {
        swift_once();
      }

      v17 = sub_100016D94();
      sub_10000BD98(v17, qword_100020F88);

      v18 = sub_100016D74();
      v19 = sub_100016E74();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *&v42 = v21;
        *v20 = 136315394;
        v39 = v4;
        v22 = a1;
        v24 = *(v2 + 40);
        v23 = *(v2 + 48);

        v25 = sub_100015464(v24, v23, &v42);

        *(v20 + 4) = v25;
        a1 = v22;
        v4 = v39;
        *(v20 + 12) = 2048;
        *(v20 + 14) = v16;
        _os_log_impl(&_mh_execute_header, v18, v19, "The userdefault has key %s with the value %f", v20, 0x16u);
        sub_10000C658(v21);
      }

      sub_100016854();
      sub_1000167B0(&qword_100020C78, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v26 = sub_100016DD4();
      v27 = *(v5 + 8);
      v28 = (v5 + 32);
      if (v26)
      {
        v27(v10, v4);
        return (*v28)(a1, v8, v4);
      }

      else
      {
        v27(v8, v4);
        return (*v28)(a1, v10, v4);
      }
    }
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  sub_10000C3E4(&v42, &qword_100020C70, &qword_100017768);
  if (qword_100020760 != -1)
  {
    swift_once();
  }

  v30 = sub_100016D94();
  sub_10000BD98(v30, qword_100020F88);

  v31 = sub_100016D74();
  v32 = sub_100016E74();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v42 = v34;
    *v33 = 136315138;
    v36 = *(v2 + 40);
    v35 = *(v2 + 48);

    v37 = sub_100015464(v36, v35, &v42);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "The userdefault contained no value for %s", v33, 0xCu);
    sub_10000C658(v34);
  }

  return (*(v5 + 32))(a1, v10, v4);
}

uint64_t sub_10000EDE4(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[3] & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (!v4)
  {
    if (qword_100020760 != -1)
    {
      swift_once();
    }

    v20 = sub_100016D94();
    sub_10000BD98(v20, qword_100020F88);
    v21 = sub_100016D74();
    v22 = sub_100016E74();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_17;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Skip userDefault set due to empty identifier", v23, 2u);
    goto LABEL_16;
  }

  v5 = v1;
  sub_100016864();
  v7 = v6;
  if (qword_100020760 != -1)
  {
    swift_once();
  }

  v8 = sub_100016D94();
  sub_10000BD98(v8, qword_100020F88);

  v9 = sub_100016D74();
  v10 = sub_100016E74();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136315394;
    v13 = v1[5];
    v14 = v1[6];

    v15 = sub_100015464(v13, v14, &v33);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v9, v10, "Set key %s to %f", v11, 0x16u);
    sub_10000C658(v12);
  }

  v16 = v1[2];
  if (v16)
  {
    v17 = v16;
    isa = sub_100016E54().super.super.isa;

    v19 = sub_100016DF4();

    [v17 setValue:isa forKey:v19];

    goto LABEL_18;
  }

  v21 = sub_100016D74();
  v24 = sub_100016E74();

  if (os_log_type_enabled(v21, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33 = v26;
    *v25 = 136315138;
    v28 = v5[5];
    v27 = v5[6];

    v29 = sub_100015464(v28, v27, &v33);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v24, "Fail to set key %s due to empty userdefaults", v25, 0xCu);
    sub_10000C658(v26);

LABEL_16:
  }

LABEL_17:

LABEL_18:
  v30 = sub_1000168B4();
  v31 = *(*(v30 - 8) + 8);

  return v31(a1, v30);
}

uint64_t sub_10000F1BC()
{

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_10000F204@<X0>(int a3@<W2>, unsigned int a4@<W3>, void *a6@<X5>, void *a7@<X8>)
{
  v92 = a6;
  LODWORD(v89) = a3;
  v10 = sub_100016A74();
  __chkstk_darwin(v10 - 8);
  v90 = &v84[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_100009F00(&qword_100020930, &qword_100017770);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v84[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v84[-v16];
  v18 = sub_100016904();
  v95 = *(v18 - 8);
  v96 = v18;
  v19 = __chkstk_darwin(v18);
  v91 = &v84[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v93 = &v84[-v21];
  v22 = [objc_allocWithZone(SISchemaRequestLink) init];
  if (!v22)
  {
    goto LABEL_13;
  }

  v23 = v22;
  v94 = a7;
  v24 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
  if (!v24)
  {
    a7 = v94;
LABEL_12:

LABEL_13:
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v36 = sub_100016D94();
    sub_10000BD98(v36, qword_100020FA0);
    v37 = sub_100016D74();
    v38 = sub_100016E84();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to emit RequestLink, either RequestLink or RequestLinkInfo is nil", v39, 2u);
    }

    v40 = sub_100009F00(&qword_100020778, &unk_1000176A0);
    v41 = *(*(v40 - 8) + 56);

    return v41(a7, 1, 1, v40);
  }

  v88 = v24;
  v25 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
  if (!v25)
  {

    a7 = v94;
    v23 = v88;
    goto LABEL_12;
  }

  v87 = v25;
  sub_1000168C4();
  v27 = v95;
  v26 = v96;
  v28 = *(v95 + 48);
  if (v28(v17, 1, v96) == 1)
  {
    sub_10000C3E4(v17, &qword_100020930, &qword_100017770);
    v29 = v94;
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v30 = sub_100016D94();
    sub_10000BD98(v30, qword_100020FA0);
    v31 = sub_100016D74();
    v32 = sub_100016E84();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v87;
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to emit RequestLink, source ID is nil", v35, 2u);
    }

LABEL_32:
    v78 = sub_100009F00(&qword_100020778, &unk_1000176A0);
    return (*(*(v78 - 8) + 56))(v29, 1, 1, v78);
  }

  v85 = a4;
  v86 = v7;
  v43 = v17;
  v44 = *(v27 + 32);
  v44(v93, v43, v26);
  v45 = objc_allocWithZone(SISchemaUUID);
  isa = sub_1000168E4().super.isa;
  v47 = v96;
  v48 = [v45 initWithNSUUID:isa];

  sub_1000168C4();
  if (v28(v15, 1, v47) == 1)
  {
    sub_10000C3E4(v15, &qword_100020930, &qword_100017770);
    v29 = v94;
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v49 = sub_100016D94();
    sub_10000BD98(v49, qword_100020FA0);
    v50 = sub_100016D74();
    v51 = sub_100016E84();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v95;
    v54 = v87;
    if (v52)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Failed to emit RequestLink, target ID is nil", v55, 2u);

      v56 = v48;
      v57 = v88;
    }

    else
    {
      v56 = v50;
      v57 = v87;
      v54 = v48;
      v50 = v23;
      v23 = v88;
    }

    (*(v53 + 8))(v93, v47);
    goto LABEL_32;
  }

  v58 = v91;
  v59 = v47;
  v44(v91, v15, v47);
  v60 = objc_allocWithZone(SISchemaUUID);
  v61 = sub_1000168E4().super.isa;
  v62 = [v60 initWithNSUUID:v61];

  v63 = v88;
  [v88 setComponent:v89];
  [v63 setUuid:v48];
  [v23 setSource:v63];
  v64 = v87;
  [v87 setComponent:v85];
  v92 = v62;
  [v64 setUuid:v62];
  [v23 setTarget:v64];
  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v65 = sub_100016D94();
  sub_10000BD98(v65, qword_100020FA0);
  v66 = v23;
  v67 = sub_100016D74();
  v68 = sub_100016E74();

  v69 = os_log_type_enabled(v67, v68);
  v70 = v94;
  if (v69)
  {
    v89 = v48;
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v97 = v72;
    *v71 = 136315138;
    v73 = [v66 formattedJsonBody];
    if (v73)
    {
      v74 = v73;
      v75 = sub_100016E04();
      v77 = v76;

      v58 = v91;
    }

    else
    {
      v75 = 0;
      v77 = 0xE000000000000000;
    }

    v80 = sub_100015464(v75, v77, &v97);

    *(v71 + 4) = v80;
    _os_log_impl(&_mh_execute_header, v67, v68, "Return Request Link %s", v71, 0xCu);
    sub_10000C658(v72);

    v79 = v96;
    v48 = v89;
  }

  else
  {

    v79 = v59;
  }

  v81 = sub_100009F00(&qword_100020778, &unk_1000176A0);
  *v70 = v66;
  v82 = v66;
  sub_100016BC4();
  sub_100016944();

  v83 = *(v95 + 8);
  v83(v58, v79);
  v83(v93, v79);
  return (*(*(v81 - 8) + 56))(v70, 0, 1, v81);
}

uint64_t sub_10000FB98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v119 = a1;
  v122 = a2;
  v4 = sub_100016A74();
  __chkstk_darwin(v4 - 8);
  v116 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009F00(&qword_100020908, &unk_100017790);
  __chkstk_darwin(v6 - 8);
  v117 = &v107 - v7;
  v113 = sub_100016C04();
  v115 = *(v113 - 8);
  __chkstk_darwin(v113);
  v114 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100016B14();
  v118 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009F00(&qword_100020920, &unk_1000175F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v107 - v13;
  v15 = sub_100016BD4();
  v120 = *(v15 - 8);
  v121 = v15;
  v16 = __chkstk_darwin(v15);
  v112 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v107 - v18;
  v20 = *(v2 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_ingestor);
  v21 = objc_allocWithZone(SISchemaUUID);
  isa = sub_1000168E4().super.isa;
  v23 = [v21 initWithNSUUID:isa];

  v24 = sub_10000BDEC(v23);
  if (!v24)
  {
    goto LABEL_8;
  }

  v25 = [objc_allocWithZone(GMSSchemaGMSModelRequestEnded) init];
  if (!v25)
  {

    goto LABEL_8;
  }

  v111 = v25;
  v110 = v19;
  v26 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_promptRequestStartEvent;
  swift_beginAccess();
  sub_10000C37C(v3 + v26, v14, &qword_100020920, &unk_1000175F0);
  v28 = v120;
  v27 = v121;
  v108 = *(v120 + 48);
  if (v108(v14, 1, v121) == 1)
  {

    sub_10000C3E4(v14, &qword_100020920, &unk_1000175F0);
LABEL_8:
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v32 = sub_100016D94();
    sub_10000BD98(v32, qword_100020FA0);

    v33 = sub_100016D74();
    v34 = sub_100016E84();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v123[0] = v36;
      *v35 = 136315138;
      sub_100016904();
      sub_1000167B0(&qword_100020938, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = sub_100016F84();
      v39 = sub_100015464(v37, v38, v123);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v33, v34, "Failed to compute latency for request due to critical event missing %s", v35, 0xCu);
      sub_10000C658(v36);
    }

    goto LABEL_13;
  }

  v109 = v24;
  v29 = v110;
  (*(v28 + 32))(v110, v14, v27);
  v30 = GenerativeFunctionsInstrumentationEvent.latency(since:)(v29);
  if (v31)
  {
    (*(v28 + 8))(v29, v27);

    goto LABEL_8;
  }

  v107 = *&v30;
  sub_100016B24();
  v42 = sub_100016AD4();
  v44 = v43;
  (*(v118 + 8))(v11, v9);
  if (!v44)
  {
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v58 = sub_100016D94();
    sub_10000BD98(v58, qword_100020FA0);

    v47 = sub_100016D74();
    v59 = sub_100016E84();

    v60 = os_log_type_enabled(v47, v59);
    v50 = v120;
    if (v60)
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v123[0] = v62;
      *v61 = 136315138;
      sub_100016904();
      sub_1000167B0(&qword_100020938, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v63 = sub_100016F84();
      v65 = sub_100015464(v63, v64, v123);

      *(v61 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v47, v59, "Usecase Identifier missing for request %s", v61, 0xCu);
      sub_10000C658(v62);

      goto LABEL_28;
    }

LABEL_39:
    goto LABEL_40;
  }

  if (*(v20 + 16) == 1)
  {

    v45 = sub_100002304(v42, v44);

    if (!v45 && (*(v20 + 16) & 1) != 0)
    {
      if (qword_100020768 != -1)
      {
        swift_once();
      }

      v46 = sub_100016D94();
      sub_10000BD98(v46, qword_100020FA0);

      v47 = sub_100016D74();
      v48 = sub_100016E84();

      v49 = os_log_type_enabled(v47, v48);
      v50 = v120;
      if (v49)
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v123[0] = v52;
        *v51 = 136315138;
        v53 = sub_100015464(v42, v44, v123);

        *(v51 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v47, v48, "Should not log for this useCaseString: %s", v51, 0xCu);
        sub_10000C658(v52);

LABEL_28:

LABEL_40:
        (*(v50 + 8))(v110, v121);
LABEL_13:
        v40 = sub_100009F00(&qword_100020940, &qword_100017548);
        return (*(*(v40 - 8) + 56))(v122, 1, 1, v40);
      }

      goto LABEL_39;
    }
  }

  v54 = v117;
  sub_100016BA4();
  v55 = sub_100016D64();
  v56 = *(v55 - 8);
  if ((*(v56 + 48))(v54, 1, v55) != 1)
  {
    if ((*(v56 + 88))(v54, v55) != enum case for GenerativeFunctionsInstrumentationMetadata.tgiExecuteRequest(_:))
    {
      (*(v56 + 8))(v54, v55);
      v57 = v120;
      goto LABEL_50;
    }

    (*(v56 + 96))(v54, v55);
    v66 = swift_projectBox();
    v67 = v113;
    (*(v115 + 16))(v114, v66, v113);

    v68 = sub_100016BF4();
    if (v69)
    {
      v70 = 0;
    }

    else
    {
      v70 = v68 & ~(v68 >> 63);
    }

    v71 = sub_100016BE4();
    if (v72)
    {
      v73 = 0;
    }

    else
    {
      v73 = v71 & ~(v71 >> 63);
    }

    v74 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_firstTokenEvent;
    swift_beginAccess();
    v75 = v121;
    v76 = 0.0;
    if (v108((v3 + v74), 1, v121))
    {
      v57 = v120;
    }

    else
    {
      v57 = v120;
      v77 = v112;
      (*(v120 + 16))(v112, v3 + v74, v75);
      *&v78 = COERCE_DOUBLE(GenerativeFunctionsInstrumentationEvent.latency(since:)(v110));
      v80 = v79;
      (*(v57 + 8))(v77, v75);
      if ((v80 & 1) == 0)
      {
        v76 = *&v78;
      }
    }

    if (HIDWORD(v70))
    {
      __break(1u);
    }

    else
    {
      v81 = v111;
      [v111 setResponseTokensCount:v70];
      if (!HIDWORD(v73))
      {
        v82 = v107;
        [v81 setImageCount:v73];
        v83 = v82;
        *&v84 = (v73 * 1000.0) / v83;
        [v81 setImagePerSecond:v84];
        [v81 setTimeToFirstTokenInSeconds:v76 / 1000.0];
        [v81 setTimeToLastTokenInSeconds:v82 / 1000.0];
        [v81 setTokensPerSecond:v70 * 1000.0 / v82];
        if (qword_100020768 == -1)
        {
LABEL_47:
          v85 = sub_100016D94();
          sub_10000BD98(v85, qword_100020FA0);
          v86 = sub_100016D74();
          v87 = sub_100016E74();
          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            *v88 = 134218752;
            *(v88 + 4) = v70;
            *(v88 + 12) = 2048;
            *(v88 + 14) = v73;
            *(v88 + 22) = 2048;
            *(v88 + 24) = v76;
            *(v88 + 32) = 2048;
            *(v88 + 34) = v107;
            _os_log_impl(&_mh_execute_header, v86, v87, "outputTokens: %lld, outputImages: %lld, timeToFirstToken: %f, timeToLastToken: %f", v88, 0x2Au);
          }

          (*(v115 + 8))(v114, v67);
          goto LABEL_50;
        }

LABEL_60:
        swift_once();
        goto LABEL_47;
      }
    }

    __break(1u);
    goto LABEL_60;
  }

  sub_10000C3E4(v54, &qword_100020908, &unk_100017790);
  v57 = v120;
LABEL_50:
  v89 = [v109 gmsModelRequestContext];
  if (v89)
  {
    v90 = v89;
    [v89 setEnded:v111];
  }

  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v91 = sub_100016D94();
  sub_10000BD98(v91, qword_100020FA0);
  v92 = v111;
  v93 = sub_100016D74();
  v94 = sub_100016E74();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v124 = v96;
    *v95 = 136315138;
    v97 = v92;
    v98 = [v97 description];
    v99 = sub_100016E04();
    v101 = v100;

    v102 = sub_100015464(v99, v101, &v124);

    *(v95 + 4) = v102;
    _os_log_impl(&_mh_execute_header, v93, v94, "SELF EndEvent: %s", v95, 0xCu);
    sub_10000C658(v96);
  }

  v103 = sub_100009F00(&qword_100020940, &qword_100017548);
  v104 = v122;
  v105 = v109;
  *v122 = v109;
  v106 = v105;
  sub_100016BC4();
  sub_100016944();

  (*(v57 + 8))(v110, v121);
  return (*(*(v103 - 8) + 56))(v104, 0, 1, v103);
}

uint64_t sub_100010B20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v141 = a1;
  v4 = sub_100016A74();
  __chkstk_darwin(v4 - 8);
  v128 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100016AB4();
  v124 = *(v6 - 8);
  v125 = v6;
  __chkstk_darwin(v6);
  v123 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009F00(&qword_100020C98, &unk_1000177A0);
  __chkstk_darwin(v8 - 8);
  v129 = &v122 - v9;
  v10 = sub_100016AC4();
  v131 = *(v10 - 8);
  v132 = v10;
  v11 = __chkstk_darwin(v10);
  v126 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v127 = &v122 - v13;
  v14 = sub_100016B14();
  v134 = *(v14 - 8);
  v135 = v14;
  __chkstk_darwin(v14);
  v133 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100016B84();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v136 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100009F00(&qword_100020910, &qword_100017530);
  __chkstk_darwin(v19);
  v21 = &v122 - v20;
  v22 = sub_100009F00(&qword_100020928, &qword_100017540);
  v23 = __chkstk_darwin(v22 - 8);
  v138 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v122 - v26;
  __chkstk_darwin(v25);
  v29 = &v122 - v28;
  v130 = *(v2 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_ingestor);
  v30 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_requestIdentifier;
  v31 = objc_allocWithZone(SISchemaUUID);
  v142 = v2;
  v140 = v30;
  v32 = a2;
  isa = sub_1000168E4().super.isa;
  v34 = [v31 initWithNSUUID:isa];

  v35 = sub_10000BDEC(v34);
  if (!v35)
  {
    goto LABEL_20;
  }

  v139 = v35;
  v137 = a2;
  sub_100016B94();
  (*(v17 + 104))(v27, enum case for GenerativeFunctionsInstrumentationEvent.Subtype.fail(_:), v16);
  (*(v17 + 56))(v27, 0, 1, v16);
  v36 = *(v19 + 48);
  sub_10000C37C(v29, v21, &qword_100020928, &qword_100017540);
  sub_10000C37C(v27, &v21[v36], &qword_100020928, &qword_100017540);
  v37 = *(v17 + 48);
  if (v37(v21, 1, v16) == 1)
  {
    sub_10000C3E4(v27, &qword_100020928, &qword_100017540);
    sub_10000C3E4(v29, &qword_100020928, &qword_100017540);
    v38 = v37(&v21[v36], 1, v16);
    v32 = v137;
    if (v38 == 1)
    {
      sub_10000C3E4(v21, &qword_100020928, &qword_100017540);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v39 = v138;
  sub_10000C37C(v21, v138, &qword_100020928, &qword_100017540);
  if (v37(&v21[v36], 1, v16) == 1)
  {
    sub_10000C3E4(v27, &qword_100020928, &qword_100017540);
    sub_10000C3E4(v29, &qword_100020928, &qword_100017540);
    (*(v17 + 8))(v39, v16);
    v32 = v137;
LABEL_7:
    sub_10000C3E4(v21, &qword_100020910, &qword_100017530);
LABEL_19:

LABEL_20:
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v58 = sub_100016D94();
    sub_10000BD98(v58, qword_100020FA0);

    v59 = sub_100016D74();
    v60 = sub_100016E84();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v144[0] = v62;
      *v61 = 136315138;
      sub_100016904();
      sub_1000167B0(&qword_100020938, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v63 = sub_100016F84();
      v65 = sub_100015464(v63, v64, v144);

      *(v61 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v59, v60, "Failed to create event for request %s", v61, 0xCu);
      sub_10000C658(v62);
    }

    goto LABEL_25;
  }

  v40 = v136;
  (*(v17 + 32))(v136, &v21[v36], v16);
  sub_1000167B0(&qword_100020948, &type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype, &protocol conformance descriptor for GenerativeFunctionsInstrumentationEvent.Subtype);
  v41 = v39;
  v42 = sub_100016DE4();
  v43 = *(v17 + 8);
  v43(v40, v16);
  sub_10000C3E4(v27, &qword_100020928, &qword_100017540);
  sub_10000C3E4(v29, &qword_100020928, &qword_100017540);
  v43(v41, v16);
  sub_10000C3E4(v21, &qword_100020928, &qword_100017540);
  v32 = v137;
  if ((v42 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  v44 = [objc_allocWithZone(GMSSchemaGMSModelRequestFailed) init];
  if (!v44)
  {
    goto LABEL_19;
  }

  v45 = v44;
  v46 = v133;
  sub_100016B24();
  v47 = sub_100016AD4();
  v49 = v48;
  (*(v134 + 8))(v46, v135);
  if (!v49)
  {
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v71 = sub_100016D94();
    sub_10000BD98(v71, qword_100020FA0);

    v72 = sub_100016D74();
    v73 = sub_100016E84();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v144[0] = v75;
      *v74 = 136315138;
      sub_100016904();
      sub_1000167B0(&qword_100020938, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v76 = sub_100016F84();
      v78 = sub_100015464(v76, v77, v144);

      *(v74 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v72, v73, "UseCaseIdentifier missing for request %s", v74, 0xCu);
      sub_10000C658(v75);
    }

    goto LABEL_33;
  }

  v50 = v130;
  if (*(v130 + 16) == 1)
  {

    v51 = sub_100002304(v47, v49);

    if (!v51 && (*(v50 + 16) & 1) != 0)
    {
      if (qword_100020768 != -1)
      {
        swift_once();
      }

      v52 = sub_100016D94();
      sub_10000BD98(v52, qword_100020FA0);

      v53 = sub_100016D74();
      v54 = sub_100016E84();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v144[0] = v56;
        *v55 = 136315138;
        v57 = sub_100015464(v47, v49, v144);

        *(v55 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v53, v54, "Should not log for this useCaseString: %s", v55, 0xCu);
        sub_10000C658(v56);
      }

      else
      {
      }

LABEL_33:
LABEL_25:
      v66 = sub_100009F00(&qword_100020940, &qword_100017548);
      return (*(*(v66 - 8) + 56))(v32, 1, 1, v66);
    }
  }

  v68 = v129;
  sub_100016B64();
  v70 = v131;
  v69 = v132;
  if ((*(v131 + 48))(v68, 1, v132) != 1)
  {
    v79 = v127;
    (*(v70 + 32))(v127, v68, v69);
    v80 = v126;
    (*(v70 + 16))(v126, v79, v69);
    if ((*(v70 + 88))(v80, v69) == enum case for GenerativeFunctionsInstrumentationError.genericError(_:))
    {
      (*(v70 + 96))(v80, v69);
      v81 = swift_projectBox();
      v83 = v124;
      v82 = v125;
      v84 = v123;
      (*(v124 + 16))(v123, v81, v125);

      sub_100016AA4();
      if (v85)
      {
        v86 = sub_100016DF4();

        [v45 setErrorDomainString:v86];

        result = sub_100016A94();
        if (v87)
        {
          v88 = 0;
LABEL_43:
          [v45 setErrorCode:v88];
          (*(v83 + 8))(v84, v82);
          goto LABEL_44;
        }

        v88 = result;
        if (result < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (result <= 0x7FFFFFFF)
        {
          goto LABEL_43;
        }

        __break(1u);
        return result;
      }

      (*(v83 + 8))(v84, v82);
    }

    else
    {
      (*(v70 + 8))(v80, v69);
    }

    v89 = sub_100016DF4();
    [v45 setErrorDomainString:v89];

    [v45 setErrorCode:0];
LABEL_44:
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v90 = sub_100016D94();
    sub_10000BD98(v90, qword_100020FA0);
    v91 = v45;
    v92 = sub_100016D74();
    v93 = sub_100016E84();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v144[0] = swift_slowAlloc();
      *v94 = 136315394;
      v95 = [v91 errorDomainString];
      if (v95)
      {
        v96 = v95;
        v97 = sub_100016E04();
        v99 = v98;

        v32 = v137;
      }

      else
      {
        v97 = 0;
        v99 = 0xE000000000000000;
      }

      v100 = sub_100015464(v97, v99, v144);

      *(v94 + 4) = v100;
      *(v94 + 12) = 2080;
      v143 = [v91 errorCode];
      v101 = sub_100016F84();
      v103 = sub_100015464(v101, v102, v144);

      *(v94 + 14) = v103;
      _os_log_impl(&_mh_execute_header, v92, v93, "GMS Error emitted, domain: %s,code: %s", v94, 0x16u);
      swift_arrayDestroy();

      (*(v131 + 8))(v127, v132);
    }

    else
    {

      (*(v70 + 8))(v127, v69);
    }

    goto LABEL_52;
  }

  sub_10000C3E4(v68, &qword_100020C98, &unk_1000177A0);
LABEL_52:
  v104 = [v139 gmsModelRequestContext];
  if (v104)
  {
    v105 = v104;
    [v104 setFailed:v45];
  }

  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v106 = sub_100016D94();
  sub_10000BD98(v106, qword_100020FA0);
  v107 = v45;
  v108 = sub_100016D74();
  v109 = sub_100016E74();

  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v144[0] = v111;
    *v110 = 136315138;
    v112 = v107;
    v113 = [v112 description];
    v114 = sub_100016E04();
    v116 = v115;

    v117 = v114;
    v32 = v137;
    v118 = sub_100015464(v117, v116, v144);

    *(v110 + 4) = v118;
    _os_log_impl(&_mh_execute_header, v108, v109, "SELF FailEvent: %s", v110, 0xCu);
    sub_10000C658(v111);
  }

  v119 = sub_100009F00(&qword_100020940, &qword_100017548);
  v120 = v139;
  *v32 = v139;
  v121 = v120;
  sub_100016BC4();
  sub_100016944();

  return (*(*(v119 - 8) + 56))(v32, 0, 1, v119);
}

uint64_t sub_100011D60@<X0>(void *a1@<X8>)
{
  v3 = sub_100016A74();
  __chkstk_darwin(v3 - 8);
  v290 = v260 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F00(&qword_100020930, &qword_100017770);
  __chkstk_darwin(v5 - 8);
  v294 = v260 - v6;
  v295 = sub_100016904();
  v286 = *(v295 - 8);
  __chkstk_darwin(v295);
  v285 = v260 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009F00(&qword_100020CA0, &qword_1000177B0);
  v9 = __chkstk_darwin(v8 - 8);
  v281 = v260 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v273 = v260 - v12;
  v13 = __chkstk_darwin(v11);
  v288 = v260 - v14;
  __chkstk_darwin(v13);
  v271 = v260 - v15;
  v16 = sub_100009F00(&qword_100020CA8, &qword_1000177B8);
  __chkstk_darwin(v16 - 8);
  v267 = v260 - v17;
  v264 = sub_100016C14();
  v265 = *(v264 - 8);
  v18 = __chkstk_darwin(v264);
  v261 = v260 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v262 = v260 - v20;
  v277 = sub_100016C54();
  v278 = *(v277 - 8);
  v21 = __chkstk_darwin(v277);
  v292 = v260 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v269 = v260 - v24;
  v25 = __chkstk_darwin(v23);
  v263 = v260 - v26;
  __chkstk_darwin(v25);
  v274 = (v260 - v27);
  v28 = sub_100009F00(&qword_100020908, &unk_100017790);
  v29 = __chkstk_darwin(v28 - 8);
  v268 = (v260 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __chkstk_darwin(v29);
  v291 = v260 - v32;
  v33 = __chkstk_darwin(v31);
  v287 = v260 - v34;
  __chkstk_darwin(v33);
  v36 = v260 - v35;
  v37 = sub_100016B14();
  v38 = *(v37 - 8);
  v39 = __chkstk_darwin(v37);
  v289 = v260 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v280 = v260 - v42;
  v43 = __chkstk_darwin(v41);
  v272 = v260 - v44;
  v45 = __chkstk_darwin(v43);
  v279 = v260 - v46;
  v47 = __chkstk_darwin(v45);
  v270 = v260 - v48;
  __chkstk_darwin(v47);
  v50 = v260 - v49;
  v51 = *&v1[OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_ingestor];
  v52 = objc_allocWithZone(SISchemaUUID);
  v53 = v1;
  isa = sub_1000168E4().super.isa;
  v55 = [v52 initWithNSUUID:isa];

  v56 = sub_10000BDEC(v55);
  v57 = &GMSSELFIngestor;
  v297 = v56;
  if (!v56)
  {
    goto LABEL_16;
  }

  v282 = a1;
  v296 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_clientRequestStartEvent;
  sub_100016B24();
  v58 = sub_100016AD4();
  v60 = v59;
  v62 = *(v38 + 8);
  v61 = v38 + 8;
  v293 = v62;
  v62(v50, v37);
  if (!v60)
  {

    a1 = v282;
    v57 = &GMSSELFIngestor;
LABEL_16:
    if (v57[26].name != -1)
    {
      swift_once();
    }

    v77 = sub_100016D94();
    sub_10000BD98(v77, qword_100020FA0);

    v78 = sub_100016D74();
    v79 = sub_100016E84();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v299 = v81;
      *v80 = 136315138;
      sub_1000167B0(&qword_100020938, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v82 = sub_100016F84();
      v84 = sub_100015464(v82, v83, &v299);

      *(v80 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v78, v79, "useCaseIdentifier missing for request %s", v80, 0xCu);
      sub_10000C658(v81);
    }

    v85 = sub_100009F00(&qword_100020940, &qword_100017548);
    v86 = *(*(v85 - 8) + 56);
    v87 = a1;
    goto LABEL_21;
  }

  v283 = v61;
  v284 = v37;
  if (*(v51 + 16))
  {

    v63 = sub_100002304(v58, v60);

    if (!v63 && (*(v51 + 16) & 1) != 0)
    {
      if (qword_100020768 != -1)
      {
        swift_once();
      }

      v64 = sub_100016D94();
      sub_10000BD98(v64, qword_100020FA0);

      v65 = sub_100016D74();
      v66 = sub_100016E84();

      v67 = os_log_type_enabled(v65, v66);
      v68 = v297;
      if (v67)
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v299 = v70;
        *v69 = 136315138;
        v71 = sub_100015464(v58, v60, &v299);

        *(v69 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v65, v66, "Should not log for this useCaseString: %s", v69, 0xCu);
        sub_10000C658(v70);
      }

      else
      {
      }

      v85 = sub_100009F00(&qword_100020940, &qword_100017548);
      v86 = *(*(v85 - 8) + 56);
      v87 = v282;
LABEL_21:
      v88 = 1;
      return v86(v87, v88, 1, v85);
    }
  }

  v72 = [objc_allocWithZone(GMSSchemaGMSModelRequestStarted) init];
  v73 = sub_100016020(v58, v60);
  v266 = v72;
  if (v73 <= 2)
  {
    v74 = v294;
    v75 = v36;
    if (v73)
    {
      if (v73 == 1)
      {
        if (v72)
        {
          v76 = 2;
LABEL_32:
          [v72 setUseCase:v76];
          goto LABEL_33;
        }
      }

      else if (v72)
      {
        v76 = 3;
        goto LABEL_32;
      }
    }

    else if (v72)
    {
      v76 = 1;
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v74 = v294;
  if (v73 == 3)
  {
    v75 = v36;
    if (v72)
    {
      v76 = 4;
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v73 == 4)
  {
    v75 = v36;
    if (v72)
    {
      v76 = 0;
      goto LABEL_32;
    }

LABEL_33:
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v89 = sub_100016D94();
    sub_10000BD98(v89, qword_100020FA0);
    v90 = v72;
    v91 = sub_100016D74();
    v92 = sub_100016E74();
    v93 = os_log_type_enabled(v91, v92);
    v94 = v287;
    if (v93)
    {
      v95 = swift_slowAlloc();
      *v95 = 67109120;
      if (v90)
      {
        v96 = [v90 useCase];
      }

      else
      {
        v96 = 0;
      }

      *(v95 + 4) = v96;

      _os_log_impl(&_mh_execute_header, v91, v92, "Usecase set to: %d", v95, 8u);

      v72 = v266;
    }

    else
    {
    }

    goto LABEL_46;
  }

  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v97 = sub_100016D94();
  sub_10000BD98(v97, qword_100020FA0);
  v98 = v53;

  v99 = sub_100016D74();
  v100 = sub_100016E84();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v299 = v102;
    *v101 = 136315138;
    sub_1000167B0(&qword_100020938, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v103 = sub_100016F84();
    v105 = sub_100015464(v103, v104, &v299);

    *(v101 + 4) = v105;
    _os_log_impl(&_mh_execute_header, v99, v100, "Unknown or missing useCase for request %s", v101, 0xCu);
    sub_10000C658(v102);

    v74 = v294;
  }

  v72 = v266;
  v75 = v36;
  v53 = v98;
  v94 = v287;
LABEL_46:
  v106 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_signedInStatusEvent;
  swift_beginAccess();
  v107 = sub_100016BD4();
  v108 = *(v107 - 8);
  v109 = *(v108 + 48);
  v287 = v107;
  v276 = v109;
  v275 = v108 + 48;
  v110 = &GMSSELFIngestor;
  if (!(v109)(&v53[v106], 1))
  {
    sub_100016BA4();
    swift_endAccess();
    v112 = sub_100016D64();
    v113 = *(v112 - 8);
    if ((*(v113 + 48))(v75, 1, v112) == 1)
    {
      goto LABEL_57;
    }

    sub_10000C37C(v75, v94, &qword_100020908, &unk_100017790);
    if ((*(v113 + 88))(v94, v112) != enum case for GenerativeFunctionsInstrumentationMetadata.partnerCloudRequest(_:))
    {
      (*(v113 + 8))(v94, v112);
      goto LABEL_57;
    }

    (*(v113 + 96))(v94, v112);
    v260[0] = *v94;
    v114 = swift_projectBox();
    v115 = *(v278 + 16);
    v116 = v274;
    v117 = v277;
    v115(v274, v114, v277);
    if (v72)
    {
      v118 = v72;
      [v118 setIsUserSignedIn:sub_100016C24() & 1];
    }

    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v119 = sub_100016D94();
    v120 = sub_10000BD98(v119, qword_100020FA0);
    v121 = v263;
    v115(v263, v116, v117);
    v122 = sub_100016D74();
    v123 = sub_100016E74();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v299 = v125;
      *v124 = 136315138;
      LOBYTE(v298) = sub_100016C24();
      sub_100009F00(&qword_100020CB8, &qword_1000177C8);
      v126 = sub_100016EA4();
      v127 = v121;
      v129 = v128;
      v263 = *(v278 + 8);
      (v263)(v127, v117);
      v130 = sub_100015464(v126, v129, &v299);

      *(v124 + 4) = v130;
      _os_log_impl(&_mh_execute_header, v122, v123, "isUserSignedIn set to: %s", v124, 0xCu);
      sub_10000C658(v125);

      v72 = v266;
    }

    else
    {

      v263 = *(v278 + 8);
      (v263)(v121, v117);
    }

    v74 = v294;
    v138 = v292;
    v235 = v264;
    sub_100016C34();
    v236 = v267;
    v237 = v265;
    v238 = (*(v265 + 48))(v267, 1, v235);
    v110 = &GMSSELFIngestor;
    v260[1] = v120;
    if (v238 == 1)
    {
      sub_10000C3E4(v236, &qword_100020CA8, &qword_1000177B8);
      v239 = sub_100016D74();
      v240 = sub_100016E74();
      if (os_log_type_enabled(v239, v240))
      {
        v241 = swift_slowAlloc();
        *v241 = 0;
        _os_log_impl(&_mh_execute_header, v239, v240, "accountType field is missing", v241, 2u);
        v138 = v292;
      }

      v135 = v297;
      if (v72)
      {
        [v72 setAccountType:3];
      }
    }

    else
    {
      v243 = v236;
      v244 = v262;
      (*(v237 + 32))(v262, v243, v235);
      v245 = v261;
      (*(v237 + 16))(v261, v244, v235);
      v246 = (*(v237 + 88))(v245, v235);
      if (v246 == enum case for GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.PartnerCloudAccountType.free(_:))
      {
        v135 = v297;
        if (v72)
        {
          [v72 setAccountType:1];
        }
      }

      else
      {
        v135 = v297;
        if (v246 != enum case for GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.PartnerCloudAccountType.premium(_:))
        {
          v247 = sub_100016D74();
          v248 = sub_100016E74();
          if (os_log_type_enabled(v247, v248))
          {
            v249 = swift_slowAlloc();
            *v249 = 0;
            _os_log_impl(&_mh_execute_header, v247, v248, "account type absent or not applicable)", v249, 2u);
            v138 = v292;
          }

          if (v72)
          {
            [v72 setAccountType:0];
          }

          v250 = *(v265 + 8);
          v250(v262, v235);
          v250(v261, v235);
          goto LABEL_147;
        }

        if (v72)
        {
          [v72 setAccountType:2];
        }
      }

      (*(v237 + 8))(v244, v235);
    }

LABEL_147:
    v251 = v72;
    v252 = sub_100016D74();
    v253 = sub_100016E74();

    if (os_log_type_enabled(v252, v253))
    {
      v254 = swift_slowAlloc();
      v255 = swift_slowAlloc();
      v299 = v255;
      *v254 = 136315138;
      if (v72)
      {
        [v251 accountType];
        v256 = sub_100016E94();
        v258 = v257;
      }

      else
      {
        v258 = 0xE700000000000000;
        v256 = 0x6E776F6E6B6E75;
      }

      v259 = sub_100015464(v256, v258, &v299);

      *(v254 + 4) = v259;
      _os_log_impl(&_mh_execute_header, v252, v253, "isUserSignedIn.accountType set to: %s", v254, 0xCu);
      sub_10000C658(v255);

      (v263)(v274, v277);

      v72 = v266;
      v110 = &GMSSELFIngestor;
      v136 = v291;
      v138 = v292;
    }

    else
    {

      (v263)(v274, v277);

      v136 = v291;
    }

    goto LABEL_62;
  }

  swift_endAccess();
  v111 = sub_100016D64();
  (*(*(v111 - 8) + 56))(v75, 1, 1, v111);
LABEL_57:
  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v131 = sub_100016D94();
  sub_10000BD98(v131, qword_100020FA0);
  v132 = sub_100016D74();
  v133 = sub_100016E74();
  v134 = os_log_type_enabled(v132, v133);
  v135 = v297;
  v136 = v291;
  if (v134)
  {
    v137 = swift_slowAlloc();
    *v137 = 0;
    _os_log_impl(&_mh_execute_header, v132, v133, "signedInStatusEvent.metadata: no match", v137, 2u);
  }

  v138 = v292;
LABEL_62:
  sub_10000C3E4(v75, &qword_100020908, &unk_100017790);
  v139 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_webSearchStatusEvent;
  swift_beginAccess();
  if (v276(&v53[v139], 1, v287))
  {
    swift_endAccess();
    v140 = sub_100016D64();
    (*(*(v140 - 8) + 56))(v136, 1, 1, v140);
LABEL_73:
    if (v110[26].name != -1)
    {
      swift_once();
    }

    v163 = sub_100016D94();
    sub_10000BD98(v163, qword_100020FA0);
    v164 = sub_100016D74();
    v165 = sub_100016E74();
    if (os_log_type_enabled(v164, v165))
    {
      v166 = swift_slowAlloc();
      *v166 = 0;
      _os_log_impl(&_mh_execute_header, v164, v165, "webSearchStatusEvent.metadata: not match", v166, 2u);
    }

    v167 = v288;
    goto LABEL_78;
  }

  sub_100016BA4();
  swift_endAccess();
  v141 = sub_100016D64();
  v142 = *(v141 - 8);
  if ((*(v142 + 48))(v136, 1, v141) == 1)
  {
    goto LABEL_73;
  }

  v143 = v268;
  sub_10000C37C(v136, v268, &qword_100020908, &unk_100017790);
  if ((*(v142 + 88))(v143, v141) != enum case for GenerativeFunctionsInstrumentationMetadata.partnerCloudRequest(_:))
  {
    (*(v142 + 8))(v143, v141);
    goto LABEL_73;
  }

  (*(v142 + 96))(v143, v141);
  v144 = *v143;
  v145 = swift_projectBox();
  v146 = *(v278 + 16);
  v147 = v269;
  v146(v269, v145, v277);
  if (v72)
  {
    v148 = v72;
    [v148 setIsWebSearchUsed:sub_100016C44() & 1];

    v138 = v292;
  }

  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v149 = sub_100016D94();
  sub_10000BD98(v149, qword_100020FA0);
  v150 = v147;
  v151 = v277;
  v146(v138, v150, v277);
  v152 = v138;
  v153 = sub_100016D74();
  v154 = sub_100016E74();
  if (os_log_type_enabled(v153, v154))
  {
    v155 = swift_slowAlloc();
    v268 = v155;
    v274 = swift_slowAlloc();
    v299 = v274;
    *v155 = 136315138;
    LOBYTE(v298) = sub_100016C44();
    sub_100009F00(&qword_100020CB8, &qword_1000177C8);
    v156 = sub_100016EA4();
    v158 = v157;
    v292 = v144;
    v159 = *(v278 + 8);
    v159(v152, v151);
    v160 = v159;
    v161 = sub_100015464(v156, v158, &v299);
    v74 = v294;

    v162 = v268;
    *(v268 + 4) = v161;
    _os_log_impl(&_mh_execute_header, v153, v154, "isUserSignedIn set to: %s", v162, 0xCu);
    sub_10000C658(v274);
    v72 = v266;

    v160(v269, v151);
  }

  else
  {

    v242 = *(v278 + 8);
    v242(v152, v151);
    v242(v269, v151);
  }

  v110 = &GMSSELFIngestor;
  v167 = v288;
  v136 = v291;
LABEL_78:
  sub_10000C3E4(v136, &qword_100020908, &unk_100017790);
  if (!v72)
  {
    goto LABEL_96;
  }

  v168 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_modelInfoEvent;
  swift_beginAccess();
  v169 = v276(&v53[v168], 1, v287);
  v170 = v72;
  if (!v169)
  {
    v171 = v270;
    sub_100016B24();
    v172 = v271;
    sub_100016AF4();
    v293(v171, v284);
    v173 = sub_100016B54();
    if (!(*(*(v173 - 8) + 48))(v172, 1, v173))
    {
      sub_100016B34();
      sub_10000C3E4(v172, &qword_100020CA0, &qword_1000177B0);
      swift_endAccess();
      v135 = v297;
      goto LABEL_86;
    }

    sub_10000C3E4(v172, &qword_100020CA0, &qword_1000177B0);
    v135 = v297;
  }

  swift_endAccess();
  v174 = v279;
  sub_100016B24();
  sub_100016AF4();
  v293(v174, v284);
  v175 = sub_100016B54();
  v176 = *(v175 - 8);
  if ((*(v176 + 48))(v167, 1, v175) == 1)
  {
    sub_10000C3E4(v167, &qword_100020CA0, &qword_1000177B0);
    v177 = 0;
    v72 = v266;
    goto LABEL_87;
  }

  sub_100016B34();
  (*(v176 + 8))(v167, v175);
  v72 = v266;
LABEL_86:
  v177 = sub_100016DF4();

LABEL_87:
  [v170 setModelName:v177];

  swift_beginAccess();
  v178 = v276(&v53[v168], 1, v287);
  v179 = v170;
  v180 = v281;
  if (!v178)
  {
    v181 = v272;
    sub_100016B24();
    v182 = v273;
    sub_100016AF4();
    v293(v181, v284);
    v183 = sub_100016B54();
    if (!(*(*(v183 - 8) + 48))(v182, 1, v183))
    {
      sub_100016B44();
      sub_10000C3E4(v182, &qword_100020CA0, &qword_1000177B0);
      swift_endAccess();
      goto LABEL_94;
    }

    sub_10000C3E4(v182, &qword_100020CA0, &qword_1000177B0);
  }

  swift_endAccess();
  v184 = v280;
  sub_100016B24();
  sub_100016AF4();
  v293(v184, v284);
  v185 = sub_100016B54();
  v186 = *(v185 - 8);
  if ((*(v186 + 48))(v180, 1, v185) != 1)
  {
    sub_100016B44();
    (*(v186 + 8))(v180, v185);
LABEL_94:
    v187 = sub_100016DF4();

    goto LABEL_95;
  }

  sub_10000C3E4(v180, &qword_100020CA0, &qword_1000177B0);
  v187 = 0;
LABEL_95:
  v110 = &GMSSELFIngestor;
  [v179 setModelVersion:v187];

LABEL_96:
  if (v110[26].name != -1)
  {
    swift_once();
  }

  v188 = sub_100016D94();
  sub_10000BD98(v188, qword_100020FA0);
  v189 = v72;
  v190 = sub_100016D74();
  v191 = sub_100016E74();

  if (os_log_type_enabled(v190, v191))
  {
    v292 = v53;
    v192 = 0x7974706D65;
    v193 = swift_slowAlloc();
    v299 = swift_slowAlloc();
    *v193 = 136315394;
    if (v72)
    {
      v194 = [v189 modelName];
      if (v194)
      {
        v195 = v194;
        v196 = sub_100016E04();
        v198 = v197;
      }

      else
      {
        v198 = 0xE500000000000000;
        v196 = 0x7974706D65;
      }

      v201 = sub_100015464(v196, v198, &v299);

      *(v193 + 4) = v201;
      *(v193 + 12) = 2080;
      v202 = [v189 modelVersion];
      if (v202)
      {
        v203 = v202;
        v192 = sub_100016E04();
        v199 = v204;
      }

      else
      {
        v199 = 0xE500000000000000;
      }

      v135 = v297;
    }

    else
    {
      v199 = 0xE500000000000000;
      v200 = sub_100015464(0x7974706D65, 0xE500000000000000, &v299);

      *(v193 + 4) = v200;
      *(v193 + 12) = 2080;
    }

    v205 = sub_100015464(v192, v199, &v299);

    *(v193 + 14) = v205;
    _os_log_impl(&_mh_execute_header, v190, v191, "ModelName: %s, modelVersion: %s", v193, 0x16u);
    swift_arrayDestroy();

    v74 = v294;
    v72 = v266;
    if (!v266)
    {
      goto LABEL_112;
    }
  }

  else
  {

    if (!v72)
    {
      goto LABEL_112;
    }
  }

  [v189 setGenAIAgentUsed:2];
LABEL_112:
  v206 = v289;
  sub_100016B24();
  v207 = sub_100016AE4();
  v209 = v208;
  v293(v206, v284);
  if (v209)
  {
    sub_1000168C4();
    v210 = v286;
    v211 = v295;
    if ((*(v286 + 48))(v74, 1, v295) == 1)
    {

      sub_10000C3E4(v74, &qword_100020930, &qword_100017770);
    }

    else
    {
      (*(v210 + 32))(v285, v74, v211);
      if (v72)
      {
        v212 = objc_allocWithZone(SISchemaUUID);
        v213 = v189;
        v214 = sub_1000168E4().super.isa;
        v215 = [v212 initWithNSUUID:v214];

        [v213 setGmsClientRequestIdentifier:v215];
      }

      v216 = sub_100016D74();
      v217 = sub_100016E74();

      if (os_log_type_enabled(v216, v217))
      {
        v218 = swift_slowAlloc();
        v219 = swift_slowAlloc();
        v299 = v219;
        *v218 = 136315138;
        v220 = sub_100015464(v207, v209, &v299);

        *(v218 + 4) = v220;
        _os_log_impl(&_mh_execute_header, v216, v217, "GMSClientRequestIdentifier set to: %s", v218, 0xCu);
        sub_10000C658(v219);
      }

      else
      {
      }

      (*(v286 + 8))(v285, v295);
      v72 = v266;
    }
  }

  v221 = [v135 gmsModelRequestContext];
  [v221 setStarted:v189];

  v222 = v189;
  v223 = sub_100016D74();
  v224 = sub_100016E74();

  if (os_log_type_enabled(v223, v224))
  {
    v225 = swift_slowAlloc();
    v226 = swift_slowAlloc();
    v298 = v72;
    v299 = v226;
    *v225 = 136315138;
    v227 = v222;
    sub_100009F00(&qword_100020CB0, &qword_1000177C0);
    v228 = sub_100016E14();
    v230 = sub_100015464(v228, v229, &v299);

    *(v225 + 4) = v230;
    _os_log_impl(&_mh_execute_header, v223, v224, "StartEvent: %s", v225, 0xCu);
    sub_10000C658(v226);
  }

  v231 = v282;
  v232 = sub_100009F00(&qword_100020940, &qword_100017548);
  *v231 = v135;
  v233 = v135;
  sub_100016BC4();
  sub_100016944();

  v86 = *(*(v232 - 8) + 56);
  v87 = v231;
  v88 = 0;
  v85 = v232;
  return v86(v87, v88, 1, v85);
}

uint64_t GenerativeFunctionsInstrumentationEvent.latency(since:)(uint64_t a1)
{
  v127 = a1;
  v2 = sub_100016BD4();
  v123 = *(v2 - 8);
  v124 = v2;
  v3 = __chkstk_darwin(v2);
  v118 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v117 = &v111 - v6;
  v7 = __chkstk_darwin(v5);
  v115 = &v111 - v8;
  __chkstk_darwin(v7);
  v114 = &v111 - v9;
  v116 = sub_100009F00(&qword_100020A60, &unk_1000175E0);
  __chkstk_darwin(v116);
  v119 = &v111 - v10;
  v120 = sub_100016A84();
  v125 = *(v120 - 8);
  v11 = __chkstk_darwin(v120);
  v112 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v113 = (&v111 - v14);
  v15 = __chkstk_darwin(v13);
  v121 = &v111 - v16;
  __chkstk_darwin(v15);
  v122 = &v111 - v17;
  v18 = sub_100016904();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v111 - v23;
  v25 = sub_100016A74();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = &v111 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v111 - v30;
  v126 = v1;
  sub_100016BC4();
  sub_100016A54();
  v32 = *(v26 + 8);
  v32(v31, v25);
  sub_100016BC4();
  sub_100016A54();
  v32(v29, v25);
  v33 = sub_1000168F4();
  v34 = *(v19 + 8);
  v34(v22, v18);
  v34(v24, v18);
  if ((v33 & 1) == 0)
  {
    v59 = v126;
    v58 = v127;
    if (qword_100020758 != -1)
    {
      swift_once();
    }

    v60 = sub_100016D94();
    sub_10000BD98(v60, qword_100020F70);
    v62 = v123;
    v61 = v124;
    v63 = *(v123 + 16);
    v64 = v117;
    v63(v117, v59, v124);
    v65 = v118;
    v63(v118, v58, v61);
    v66 = sub_100016D74();
    v67 = sub_100016E84();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      *v68 = 136315394;
      v69 = sub_100016BB4();
      v70 = v64;
      v72 = v71;
      v73 = *(v62 + 8);
      v73(v70, v61);
      v74 = sub_100015464(v69, v72, &v128);

      *(v68 + 4) = v74;
      *(v68 + 12) = 2080;
      v75 = sub_100016BB4();
      v77 = v76;
      v73(v65, v61);
      v78 = sub_100015464(v75, v77, &v128);

      *(v68 + 14) = v78;
      _os_log_impl(&_mh_execute_header, v66, v67, "DataProcessors: mismatched boot sessions, ignoring events of type %s and %s", v68, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v88 = *(v62 + 8);
      v88(v65, v61);
      v88(v64, v61);
    }

    return 0;
  }

  sub_100016BC4();
  v35 = v122;
  sub_100016A64();
  v32(v31, v25);
  sub_100016BC4();
  v36 = v121;
  sub_100016A64();
  v32(v31, v25);
  v37 = *(v116 + 48);
  v38 = v125;
  v39 = v125[2];
  v41 = v119;
  v40 = v120;
  v39(v119, v35, v120);
  v39(v41 + v37, v36, v40);
  v42 = v38[11];
  v43 = v42(v41, v40);
  v44 = v43;
  if (v43 == enum case for MonotonicTimestampValue.suspendingNanosecondsSinceBoot(_:))
  {
    v45 = v113;
    v39(v113, v41, v40);
    v46 = v125;
    v47 = v41;
    v48 = v125[12];
    v48(v45, v40);
    v118 = *v45;
    v117 = *(v118 + 2);
    v49 = v42(v47 + v37, v40);
    v50 = v40;
    v51 = v123;
    v52 = v124;
    if (v49 == v44)
    {
      v48((v47 + v37), v50);
      v53 = sub_1000151F4(v117, *(*(v47 + v37) + 16));
      v55 = v54;
      v56 = v46[1];
      v56(v121, v50, v53);
      (v56)(v122, v50);

      (v56)(v47, v50);
      return v55;
    }

LABEL_15:

    v35 = v122;
    goto LABEL_16;
  }

  v51 = v123;
  v52 = v124;
  if (v43 == enum case for MonotonicTimestampValue.continuousNanosecondsSinceBoot(_:))
  {
    v79 = v112;
    v81 = v119;
    v80 = v120;
    v39(v112, v119, v120);
    v82 = v125[12];
    v82(v79, v80);
    v83 = *(*v79 + 16);
    if (v42(v81 + v37, v80) == v44)
    {
      v82((v81 + v37), v80);
      v84 = sub_1000151F4(v83, *(*(v81 + v37) + 16));
      v86 = v85;
      v87 = v125[1];
      v87(v121, v80, v84);
      (v87)(v122, v80);

      (v87)(v81, v80);
      return v86;
    }

    v51 = v123;
    v52 = v124;
    goto LABEL_15;
  }

LABEL_16:
  if (qword_100020758 != -1)
  {
    swift_once();
  }

  v89 = sub_100016D94();
  sub_10000BD98(v89, qword_100020F70);
  v90 = *(v51 + 16);
  v91 = v114;
  v90(v114, v126, v52);
  v92 = v115;
  v90(v115, v127, v52);
  v93 = sub_100016D74();
  v94 = sub_100016E84();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    LODWORD(v127) = v94;
    v96 = v95;
    v128 = swift_slowAlloc();
    *v96 = 136315394;
    v97 = sub_100016BB4();
    v98 = v92;
    v100 = v99;
    v101 = *(v51 + 8);
    v101(v91, v52);
    v102 = sub_100015464(v97, v100, &v128);

    *(v96 + 4) = v102;
    *(v96 + 12) = 2080;
    v103 = sub_100016BB4();
    v105 = v104;
    v101(v98, v52);
    v106 = sub_100015464(v103, v105, &v128);

    *(v96 + 14) = v106;
    _os_log_impl(&_mh_execute_header, v93, v127, "DataProcessors: mismatched timestamp clock, ignoring events of type %s and %s", v96, 0x16u);
    swift_arrayDestroy();

    v107 = v125[1];
    v108 = v120;
    v107(v121, v120);
    v109 = v122;
  }

  else
  {

    v110 = *(v51 + 8);
    v110(v92, v52);
    v110(v91, v52);
    v107 = v125[1];
    v108 = v120;
    v107(v121, v120);
    v109 = v35;
  }

  v107(v109, v108);
  sub_10000C3E4(v119, &qword_100020A60, &unk_1000175E0);
  return 0;
}

uint64_t PartnerCloudRequestEvents.deinit()
{
  v1 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_requestIdentifier;
  v2 = sub_100016904();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000C3E4(v0 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_eventSubType, &qword_100020928, &qword_100017540);
  v3 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_clientRequestStartEvent;
  v4 = sub_100016BD4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_10000C3E4(v0 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_promptRequestStartEvent, &qword_100020920, &unk_1000175F0);
  sub_10000C3E4(v0 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_firstTokenEvent, &qword_100020920, &unk_1000175F0);
  sub_10000C3E4(v0 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_modelInfoEvent, &qword_100020920, &unk_1000175F0);
  sub_10000C3E4(v0 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_signedInStatusEvent, &qword_100020920, &unk_1000175F0);
  sub_10000C3E4(v0 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_webSearchStatusEvent, &qword_100020920, &unk_1000175F0);
  sub_10000C3E4(v0 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_requestLinkAndMonoTimeStamp, &qword_100020918, &qword_100017538);
  return v0;
}

uint64_t PartnerCloudRequestEvents.__deallocating_deinit()
{
  PartnerCloudRequestEvents.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

Swift::Int sub_100015104()
{
  v1 = *v0;
  sub_100016FA4();
  sub_100016FB4(v1);
  return sub_100016FC4();
}

Swift::Int sub_100015178(uint64_t a1)
{
  v2 = *v1;
  sub_100016FA4();
  sub_100016FB4(v2);
  return sub_100016FC4();
}

unint64_t sub_1000151BC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000166C8(*a1);
  *a2 = result;
  return result;
}

double sub_1000151F4(unint64_t a1, unint64_t a2)
{
  if (!a1 || !a2)
  {
    if (qword_100020758 != -1)
    {
      swift_once();
    }

    v7 = sub_100016D94();
    sub_10000BD98(v7, qword_100020F70);
    v3 = sub_100016D74();
    v4 = sub_100016E84();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "DataProcessors: start or end timestamp value is 0";
    goto LABEL_12;
  }

  if (a2 < a1)
  {
    if (qword_100020758 != -1)
    {
      swift_once();
    }

    v2 = sub_100016D94();
    sub_10000BD98(v2, qword_100020F70);
    v3 = sub_100016D74();
    v4 = sub_100016E84();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "DataProcessors: start timestamp value is greater than end timestamp value";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);

LABEL_13:

    return result;
  }

  return (a2 - a1) / 1000000.0;
}

uint64_t sub_100015394(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100015408(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100015464(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100015464(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100015530(v11, 0, 0, 1, a1, a2);
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
    sub_1000167F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000C658(v11);
  return v7;
}

unint64_t sub_100015530(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001563C(a5, a6);
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
    result = sub_100016EF4();
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

char *sub_10001563C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100015688(a1, a2);
  sub_1000157B8(&off_10001CA40);
  return v3;
}

char *sub_100015688(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000158A4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100016EF4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100016E44();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000158A4(v10, 0);
        result = sub_100016ED4();
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

uint64_t sub_1000157B8(uint64_t result)
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

  result = sub_100015918(result, v11, 1, v3);
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

void *sub_1000158A4(uint64_t a1, uint64_t a2)
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

  sub_100009F00(&unk_100020CC0, &unk_1000177D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100015918(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009F00(&unk_100020CC0, &unk_1000177D0);
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

_BYTE **sub_100015A0C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t type metadata accessor for PartnerCloudRequestEvents(uint64_t a1)
{
  result = qword_100020B70;
  if (!qword_100020B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100015A94(uint64_t a1)
{
  sub_100016904();
  if (v1 <= 0x3F)
  {
    sub_100015C70(319, &qword_100020B80, &type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype);
    if (v2 <= 0x3F)
    {
      sub_100016BD4();
      if (v3 <= 0x3F)
      {
        sub_100015C70(319, &qword_100020B88, &type metadata accessor for GenerativeFunctionsInstrumentationEvent);
        if (v4 <= 0x3F)
        {
          sub_100015CC4(319);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_100015C70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100016EB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100015CC4(uint64_t a1)
{
  if (!qword_100020B90)
  {
    sub_10000BB68(&qword_100020778, &unk_1000176A0);
    v1 = sub_100016EB4();
    if (!v2)
    {
      atomic_store(v1, &qword_100020B90);
    }
  }
}

uint64_t getEnumTagSinglePayload for InferenceRequestType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InferenceRequestType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100015E9C()
{
  result = qword_100020C68;
  if (!qword_100020C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020C68);
  }

  return result;
}

unint64_t sub_100015EF0(uint64_t a1, uint64_t a2)
{
  sub_100016FA4();
  sub_100016E24();
  v4 = sub_100016FC4();

  return sub_100015F68(a1, a2, v4);
}

unint64_t sub_100015F68(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100016F94())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100016020(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10001CA68;
  v6._object = a2;
  v4 = sub_100016F64(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10001606C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009F00(&qword_100020C90, &qword_100017788);
    v3 = sub_100016F54();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000C37C(v4, &v13, &qword_100020C88, &qword_100017780);
      v5 = v13;
      v6 = v14;
      result = sub_100015EF0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000167A0(&v15, (v3[7] + 32 * result));
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

void sub_10001619C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_100009F00(&qword_100020920, &unk_1000175F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_100016BD4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C37C(a3, v8, &qword_100020920, &unk_1000175F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000C3E4(v8, &qword_100020920, &unk_1000175F0);
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v13 = sub_100016D94();
    sub_10000BD98(v13, qword_100020FA0);

    v14 = sub_100016D74();
    v15 = sub_100016E74();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_100015464(a1, a2, &v30);
      _os_log_impl(&_mh_execute_header, v14, v15, "PartnerCloudRequestEvents%s was set to nil.", v16, 0xCu);
      sub_10000C658(v17);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_100009F00(&qword_100020C80, &qword_100017778);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000175D0;
    *(inited + 32) = 0x696669746E656469;
    *(inited + 40) = 0xEB00000000737265;
    *(inited + 72) = sub_100016B14();
    sub_10001673C((inited + 48));
    sub_100016B24();
    *(inited + 80) = 0x707954746E657665;
    *(inited + 88) = 0xE900000000000065;
    v19 = sub_100016BB4();
    *(inited + 120) = &type metadata for String;
    *(inited + 96) = v19;
    *(inited + 104) = v20;
    sub_10001606C(inited);
    swift_setDeallocating();
    sub_100009F00(&qword_100020C88, &qword_100017780);
    swift_arrayDestroy();
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v21 = sub_100016D94();
    sub_10000BD98(v21, qword_100020FA0);

    v22 = sub_100016D74();
    v23 = sub_100016E74();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v24 = 136315394;
      *(v24 + 4) = sub_100015464(a1, a2, &v30);
      *(v24 + 12) = 2080;
      v25 = sub_100016DB4();
      v27 = v26;

      v28 = sub_100015464(v25, v27, &v30);

      *(v24 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "PartnerCloudRequestEvents %s: %s", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v10 + 8))(v12, v9);
  }
}

unint64_t sub_1000166C8(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t *sub_1000166D8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t *sub_10001673C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_1000167A0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000167B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000167F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}