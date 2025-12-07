uint64_t sub_10001C8C8(uint64_t a1)
{
  v78 = v1;
  v2 = v1[38];
  v3 = v1[12];
  v4 = v1[8];
  v5 = v1[6];
  static Log.photos.getter();
  v2(v4, v3, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[38];
    v74 = v1[32];
    v68 = v1[13];
    v70 = v1[15];
    v72 = v1[12];
    v67 = v7;
    v9 = v1[10];
    v10 = v1[6];
    v11 = v1[8];
    v12 = v1[42];
    v13 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    log = swift_slowAlloc();
    v77[0] = log;
    *v13 = 136315394;
    v8(v9, v11, v10);
    v12(v11, v10);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v12(v9, v10);
    v17 = sub_100102F80(v14, v16, v77);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v63 = v18;
    _os_log_impl(&_mh_execute_header, v6, v67, "Failed to process face %s with error %@", v13, 0x16u);
    sub_10000C460(v63, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(log);

    v74(v70, v68);
    result = (v12)(v72, v10);
  }

  else
  {
    v75 = v1[32];
    v20 = v1[15];
    v22 = v1[12];
    v21 = v1[13];
    v23 = v1[6];
    v24 = v6;
    v25 = v1[42];
    v25(v1[8], v23);

    v75(v20, v21);
    result = v25(v22, v23);
  }

  v27 = v1[36];
  v26 = v1[37];
  v1[48] = v26;
  v28 = v1[35] + 1;
  if (v28 == v1[30])
  {

    v29 = swift_task_alloc();
    v1[33] = v29;
    *v29 = v1;
    v29[1] = sub_100015814;

    return sub_10002EC2C();
  }

  else
  {
    v1[36] = v27;
    v1[37] = v26;
    v1[35] = v28;
    v30 = v1[25];
    if (v28 >= *(v30 + 16))
    {
      __break(1u);
    }

    else
    {
      v31 = v1[12];
      v32 = v1[6];
      v33 = v1[7];
      v35 = *(v33 + 16);
      v33 += 16;
      v34 = v35;
      v36 = v30 + ((*(v33 + 64) + 32) & ~*(v33 + 64)) + *(v33 + 56) * v28;
      v1[38] = v35;
      v1[39] = v33 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v35(v31, v36, v32);
      static Task<>.checkCancellation()();
      v37 = v1[6];
      v39 = v1[11];
      v38 = v1[12];
      static Log.photos.getter();
      v35(v39, v38, v37);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v1[32];
      v44 = v1[17];
      v45 = v1[13];
      v46 = v1[11];
      if (v42)
      {
        v69 = v41;
        v47 = v1[10];
        v64 = v1[7];
        v73 = v1[17];
        v76 = v1[32];
        v48 = v1[6];
        loga = v40;
        v49 = swift_slowAlloc();
        v77[0] = swift_slowAlloc();
        *v49 = 136315394;
        v71 = v45;
        v50 = PhotosFaceType.description.getter();
        v52 = v51;

        v53 = sub_100102F80(v50, v52, v77);

        *(v49 + 4) = v53;
        *(v49 + 12) = 2080;
        v34(v47, v46, v48);
        v54 = *(v64 + 8);
        v54(v46, v48);
        sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = v56;
        v54(v47, v48);
        v58 = sub_100102F80(v55, v57, v77);

        *(v49 + 14) = v58;
        _os_log_impl(&_mh_execute_header, loga, v69, "Processing %s face %s", v49, 0x16u);
        swift_arrayDestroy();

        v76(v73, v71);
      }

      else
      {
        v54 = *(v1[7] + 8);
        v54(v1[11], v1[6]);

        v43(v44, v45);
      }

      v1[42] = v54;
      v59 = static TestProperties.bufferSize.getter();
      v60 = swift_task_alloc();
      v1[43] = v60;
      *v60 = v1;
      v60[1] = sub_10001B524;
      v61 = v1[12];
      v62 = v1[5];

      return sub_100021028(v62, v61, v59);
    }
  }

  return result;
}

uint64_t sub_10001D0C8()
{
  v1[2] = v0;
  v2 = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for AlbumID();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = type metadata accessor for CommunicationActor();
  v1[22] = static CommunicationActor.shared.getter();
  v1[23] = static CommunicationActor.shared.getter();
  v5 = type metadata accessor for AlbumDatabase();
  v6 = sub_1000438BC(&qword_10012A488, &type metadata accessor for AlbumDatabase, &protocol conformance descriptor for AlbumDatabase);
  v7 = swift_task_alloc();
  v1[24] = v7;
  *v7 = v1;
  v7[1] = sub_10001D364;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(v5, v6);
}

uint64_t sub_10001D364(uint64_t a1)
{
  v3 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  v3[27] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = sub_10001DDC4;
  }

  else
  {
    v6 = sub_10001D4F8;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10001D4F8()
{

  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 224) = v2;
  *(v0 + 232) = v1;

  return _swift_task_switch(sub_10001D584, v2, v1);
}

uint64_t sub_10001D584(uint64_t a1)
{
  v83 = v1;
  v2 = v1[25];
  v3 = *(v2 + 16);
  v1[30] = v3;
  if (!v3)
  {

    static Log.session.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v1[20];
    v27 = v1[13];
    v26 = v1[14];
    if (v24)
    {
      v80 = v1[20];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v82[0] = v29;
      *v28 = 136315138;
      v30 = PhotosFaceType.description.getter();
      v32 = v31;

      v33 = sub_100102F80(v30, v32, v82);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "No %s faces. Exiting.", v28, 0xCu);
      sub_10000C304(v29);

      (*(v26 + 8))(v80, v27);
    }

    else
    {

      (*(v26 + 8))(v25, v27);
    }

    v47 = v1[1];
    goto LABEL_14;
  }

  static Log.session.getter();
  swift_bridgeObjectRetain_n();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[19];
  v8 = v1[13];
  v9 = v1[14];
  if (v6)
  {
    v79 = v1[19];
    v10 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    *v10 = 134218498;
    *(v10 + 4) = *(v2 + 16);
    *(v10 + 12) = 2080;
    v11 = PhotosFaceType.description.getter();
    v77 = v8;
    v13 = v12;

    v14 = sub_100102F80(v11, v13, v82);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2080;
    v15 = Array.description.getter();
    v17 = v16;
    swift_bridgeObjectRelease_n();
    v18 = sub_100102F80(v15, v17, v82);

    *(v10 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Processing %ld %s: %s", v10, 0x20u);
    swift_arrayDestroy();

    v21 = *(v9 + 8);
    v20 = v9 + 8;
    v19 = v21;
    v21(v79, v77);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v34 = *(v9 + 8);
    v20 = v9 + 8;
    v19 = v34;
    v34(v7, v8);
  }

  v1[31] = v20;
  v1[32] = v19;
  v35 = v1[7];
  v36 = v1[25];
  v37 = v1[26];
  v1[36] = 0;
  v1[37] = 0;
  v1[35] = 0;
  v38 = *(v36 + 16);

  if (!v38)
  {
    __break(1u);
    return result;
  }

  v42 = *(v35 + 16);
  v41 = v35 + 16;
  v40 = v42;
  v43 = v1[12];
  v44 = v1[6];
  v45 = (*(v41 + 64) + 32) & ~*(v41 + 64);
  v1[38] = v42;
  v1[39] = v41 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v42(v43, result + v45, v44);
  static Task<>.checkCancellation()();
  v46 = v1[6];
  if (v37)
  {
    (*(v1[7] + 8))(v1[12], v1[6]);

    swift_bridgeObjectRelease_n();

    v47 = v1[1];
LABEL_14:

    return v47();
  }

  v49 = v1[11];
  v48 = v1[12];
  static Log.photos.getter();
  v40(v49, v48, v46);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  v52 = os_log_type_enabled(v50, v51);
  v53 = v1[32];
  v54 = v1[17];
  v55 = v1[13];
  v56 = v1[11];
  if (v52)
  {
    v75 = v51;
    v57 = v1[10];
    v73 = v1[7];
    v78 = v1[17];
    v81 = v1[32];
    v58 = v1[6];
    log = v50;
    v59 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    *v59 = 136315394;
    v76 = v55;
    v60 = PhotosFaceType.description.getter();
    v62 = v61;

    v63 = sub_100102F80(v60, v62, v82);

    *(v59 + 4) = v63;
    *(v59 + 12) = 2080;
    v40(v57, v56, v58);
    v64 = *(v73 + 8);
    v64(v56, v58);
    sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v66;
    v64(v57, v58);
    v68 = sub_100102F80(v65, v67, v82);

    *(v59 + 14) = v68;
    _os_log_impl(&_mh_execute_header, log, v75, "Processing %s face %s", v59, 0x16u);
    swift_arrayDestroy();

    v81(v78, v76);
  }

  else
  {
    v64 = *(v1[7] + 8);
    v64(v1[11], v1[6]);

    v53(v54, v55);
  }

  v1[42] = v64;
  v69 = static TestProperties.bufferSize.getter();
  v70 = swift_task_alloc();
  v1[43] = v70;
  *v70 = v1;
  v70[1] = sub_10001E724;
  v71 = v1[12];
  v72 = v1[5];

  return sub_1000215CC(v72, v71, v69);
}

uint64_t sub_10001DDC4()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001DE50, v1, v0);
}

uint64_t sub_10001DE50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001DF58()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {

    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_10001E224;
  }

  else
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_10001E074;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10001E074()
{
  v1 = swift_task_alloc();
  *(v0 + 320) = v1;
  *v1 = v0;
  v1[1] = sub_10001E108;

  return sub_10006254C();
}

uint64_t sub_10001E108()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {

    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_10001E61C;
  }

  else
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_10001E32C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10001E224()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001E32C()
{
  v23 = v0;

  static Log.session.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v21 = v0[32];
    v3 = v0[25];
    v20 = v0[18];
    v18 = v0[48];
    v19 = v0[13];
    v4 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v4 = 134218754;
    *(v4 + 4) = *(v3 + 16);
    *(v4 + 12) = 2080;
    v5 = PhotosFaceType.description.getter();
    v7 = v6;

    v8 = sub_100102F80(v5, v7, &v22);

    *(v4 + 14) = v8;
    *(v4 + 22) = 2048;
    *(v4 + 24) = v18;
    *(v4 + 32) = 2080;
    v9 = Array.description.getter();
    v11 = v10;
    swift_bridgeObjectRelease_n();
    v12 = sub_100102F80(v9, v11, &v22);

    *(v4 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Processed %ld %s faces: %ld photos in faces: %s", v4, 0x2Au);
    swift_arrayDestroy();

    v21(v20, v19);
  }

  else
  {
    v13 = v0[32];
    v14 = v0[18];
    v15 = v0[13];
    swift_bridgeObjectRelease_n();

    v13(v14, v15);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10001E61C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001E724()
{
  v2 = *v1;
  v2[44] = v0;

  if (v0)
  {
    v3 = v2[28];
    v4 = v2[29];

    return _swift_task_switch(sub_10001EA68, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[45] = v5;
    v6 = sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0, &protocol conformance descriptor for WrapperSequence<A, B>);
    *v5 = v2;
    v5[1] = sub_10001E8D8;
    v7 = v2[3];

    return AsyncSequence.collect()(v7, v6);
  }
}

uint64_t sub_10001E8D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[46] = a1;
  v4[47] = v1;

  (*(v3[4] + 8))(v3[5], v3[3]);
  v5 = v3[29];
  v6 = v3[28];
  if (v1)
  {
    v7 = sub_10001FAC8;
  }

  else
  {
    v7 = sub_10001F268;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10001EA68(uint64_t a1)
{
  v78 = v1;
  v2 = v1[38];
  v3 = v1[12];
  v4 = v1[8];
  v5 = v1[6];
  static Log.photos.getter();
  v2(v4, v3, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[38];
    v74 = v1[32];
    v68 = v1[13];
    v70 = v1[15];
    v72 = v1[12];
    v67 = v7;
    v9 = v1[10];
    v10 = v1[6];
    v11 = v1[8];
    v12 = v1[42];
    v13 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    log = swift_slowAlloc();
    v77[0] = log;
    *v13 = 136315394;
    v8(v9, v11, v10);
    v12(v11, v10);
    sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v12(v9, v10);
    v17 = sub_100102F80(v14, v16, v77);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v63 = v18;
    _os_log_impl(&_mh_execute_header, v6, v67, "Failed to process face %s with error %@", v13, 0x16u);
    sub_10000C460(v63, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(log);

    v74(v70, v68);
    result = (v12)(v72, v10);
  }

  else
  {
    v75 = v1[32];
    v20 = v1[15];
    v22 = v1[12];
    v21 = v1[13];
    v23 = v1[6];
    v24 = v6;
    v25 = v1[42];
    v25(v1[8], v23);

    v75(v20, v21);
    result = v25(v22, v23);
  }

  v27 = v1[36];
  v26 = v1[37];
  v1[48] = v26;
  v28 = v1[35] + 1;
  if (v28 == v1[30])
  {

    v29 = swift_task_alloc();
    v1[33] = v29;
    *v29 = v1;
    v29[1] = sub_10001DF58;

    return sub_10002F394();
  }

  else
  {
    v1[36] = v27;
    v1[37] = v26;
    v1[35] = v28;
    v30 = v1[25];
    if (v28 >= *(v30 + 16))
    {
      __break(1u);
    }

    else
    {
      v31 = v1[12];
      v32 = v1[6];
      v33 = v1[7];
      v35 = *(v33 + 16);
      v33 += 16;
      v34 = v35;
      v36 = v30 + ((*(v33 + 64) + 32) & ~*(v33 + 64)) + *(v33 + 56) * v28;
      v1[38] = v35;
      v1[39] = v33 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v35(v31, v36, v32);
      static Task<>.checkCancellation()();
      v37 = v1[6];
      v39 = v1[11];
      v38 = v1[12];
      static Log.photos.getter();
      v35(v39, v38, v37);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v1[32];
      v44 = v1[17];
      v45 = v1[13];
      v46 = v1[11];
      if (v42)
      {
        v69 = v41;
        v47 = v1[10];
        v64 = v1[7];
        v73 = v1[17];
        v76 = v1[32];
        v48 = v1[6];
        loga = v40;
        v49 = swift_slowAlloc();
        v77[0] = swift_slowAlloc();
        *v49 = 136315394;
        v71 = v45;
        v50 = PhotosFaceType.description.getter();
        v52 = v51;

        v53 = sub_100102F80(v50, v52, v77);

        *(v49 + 4) = v53;
        *(v49 + 12) = 2080;
        v34(v47, v46, v48);
        v54 = *(v64 + 8);
        v54(v46, v48);
        sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = v56;
        v54(v47, v48);
        v58 = sub_100102F80(v55, v57, v77);

        *(v49 + 14) = v58;
        _os_log_impl(&_mh_execute_header, loga, v69, "Processing %s face %s", v49, 0x16u);
        swift_arrayDestroy();

        v76(v73, v71);
      }

      else
      {
        v54 = *(v1[7] + 8);
        v54(v1[11], v1[6]);

        v43(v44, v45);
      }

      v1[42] = v54;
      v59 = static TestProperties.bufferSize.getter();
      v60 = swift_task_alloc();
      v1[43] = v60;
      *v60 = v1;
      v60[1] = sub_10001E724;
      v61 = v1[12];
      v62 = v1[5];

      return sub_1000215CC(v62, v61, v59);
    }
  }

  return result;
}

uint64_t sub_10001F268(uint64_t a1)
{
  v84 = v1;
  v2 = v1[38];
  v3 = v1[12];
  v4 = v1[9];
  v5 = v1[6];
  static Log.photos.getter();
  v2(v4, v3, v5);
  swift_bridgeObjectRetain_n();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  log = v6;
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[46];
  v81 = v1[42];
  if (v8)
  {
    v69 = v1[38];
    v77 = v1[32];
    v71 = v1[13];
    v73 = v1[16];
    v74 = v1[12];
    v11 = v1[9];
    v10 = v1[10];
    v12 = v1[6];
    v13 = swift_slowAlloc();
    v83[0] = swift_slowAlloc();
    *v13 = 136315650;
    v14 = PhotosFaceType.description.getter();
    v16 = v15;

    v17 = sub_100102F80(v14, v16, v83);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    LOBYTE(v16) = v7;
    v18 = *(v9 + 16);

    *(v13 + 14) = v18;

    *(v13 + 22) = 2080;
    v69(v10, v11, v12);
    v81(v11, v12);
    sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v81(v10, v12);
    v22 = sub_100102F80(v19, v21, v83);

    *(v13 + 24) = v22;
    _os_log_impl(&_mh_execute_header, log, v16, "Processed %s %ld photos from %s", v13, 0x20u);
    swift_arrayDestroy();

    v77(v73, v71);
    v81(v74, v12);
  }

  else
  {
    v78 = v1[32];
    v23 = v1[16];
    v25 = v1[12];
    v24 = v1[13];
    v26 = v1[9];
    v27 = v1[6];

    v81(v26, v27);

    v78(v23, v24);
    v81(v25, v27);
  }

  v28 = v1[36];
  v29 = *(v1[46] + 16);

  v31 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
    __break(1u);
    goto LABEL_21;
  }

  v32 = v1[47];
  v1[48] = v31;
  v33 = v1[35] + 1;
  if (v33 == v1[30])
  {

    v34 = swift_task_alloc();
    v1[33] = v34;
    *v34 = v1;
    v34[1] = sub_10001DF58;

    return sub_10002F394();
  }

  v1[36] = v31;
  v1[37] = v31;
  v1[35] = v33;
  v35 = v1[25];
  if (v33 >= *(v35 + 16))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v36 = v1[12];
  v37 = v1[6];
  v38 = v1[7];
  v40 = *(v38 + 16);
  v38 += 16;
  v39 = v40;
  v41 = v35 + ((*(v38 + 64) + 32) & ~*(v38 + 64)) + *(v38 + 56) * v33;
  v1[38] = v40;
  v1[39] = v38 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v40(v36, v41, v37);
  static Task<>.checkCancellation()();
  v42 = v1[6];
  if (v32)
  {
    (*(v1[7] + 8))(v1[12], v1[6]);

    swift_bridgeObjectRelease_n();

    v43 = v1[1];

    return v43();
  }

  else
  {
    v45 = v1[11];
    v44 = v1[12];
    static Log.photos.getter();
    v39(v45, v44, v42);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v1[32];
    v50 = v1[17];
    v51 = v1[13];
    v52 = v1[11];
    if (v48)
    {
      v75 = v47;
      v53 = v1[10];
      v70 = v1[7];
      loga = v1[17];
      v82 = v1[32];
      v54 = v1[6];
      v72 = v46;
      v55 = swift_slowAlloc();
      v83[0] = swift_slowAlloc();
      *v55 = 136315394;
      v76 = v51;
      v56 = PhotosFaceType.description.getter();
      v58 = v57;

      v59 = sub_100102F80(v56, v58, v83);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2080;
      v39(v53, v52, v54);
      v60 = *(v70 + 8);
      v60(v52, v54);
      sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      v60(v53, v54);
      v64 = sub_100102F80(v61, v63, v83);

      *(v55 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v72, v75, "Processing %s face %s", v55, 0x16u);
      swift_arrayDestroy();

      v82(loga, v76);
    }

    else
    {
      v60 = *(v1[7] + 8);
      v60(v1[11], v1[6]);

      v49(v50, v51);
    }

    v1[42] = v60;
    v65 = static TestProperties.bufferSize.getter();
    v66 = swift_task_alloc();
    v1[43] = v66;
    *v66 = v1;
    v66[1] = sub_10001E724;
    v67 = v1[12];
    v68 = v1[5];

    return sub_1000215CC(v68, v67, v65);
  }
}

uint64_t sub_10001FAC8(uint64_t a1)
{
  v78 = v1;
  v2 = v1[38];
  v3 = v1[12];
  v4 = v1[8];
  v5 = v1[6];
  static Log.photos.getter();
  v2(v4, v3, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[38];
    v74 = v1[32];
    v68 = v1[13];
    v70 = v1[15];
    v72 = v1[12];
    v67 = v7;
    v9 = v1[10];
    v10 = v1[6];
    v11 = v1[8];
    v12 = v1[42];
    v13 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    log = swift_slowAlloc();
    v77[0] = log;
    *v13 = 136315394;
    v8(v9, v11, v10);
    v12(v11, v10);
    sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v12(v9, v10);
    v17 = sub_100102F80(v14, v16, v77);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v63 = v18;
    _os_log_impl(&_mh_execute_header, v6, v67, "Failed to process face %s with error %@", v13, 0x16u);
    sub_10000C460(v63, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(log);

    v74(v70, v68);
    result = (v12)(v72, v10);
  }

  else
  {
    v75 = v1[32];
    v20 = v1[15];
    v22 = v1[12];
    v21 = v1[13];
    v23 = v1[6];
    v24 = v6;
    v25 = v1[42];
    v25(v1[8], v23);

    v75(v20, v21);
    result = v25(v22, v23);
  }

  v27 = v1[36];
  v26 = v1[37];
  v1[48] = v26;
  v28 = v1[35] + 1;
  if (v28 == v1[30])
  {

    v29 = swift_task_alloc();
    v1[33] = v29;
    *v29 = v1;
    v29[1] = sub_10001DF58;

    return sub_10002F394();
  }

  else
  {
    v1[36] = v27;
    v1[37] = v26;
    v1[35] = v28;
    v30 = v1[25];
    if (v28 >= *(v30 + 16))
    {
      __break(1u);
    }

    else
    {
      v31 = v1[12];
      v32 = v1[6];
      v33 = v1[7];
      v35 = *(v33 + 16);
      v33 += 16;
      v34 = v35;
      v36 = v30 + ((*(v33 + 64) + 32) & ~*(v33 + 64)) + *(v33 + 56) * v28;
      v1[38] = v35;
      v1[39] = v33 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v35(v31, v36, v32);
      static Task<>.checkCancellation()();
      v37 = v1[6];
      v39 = v1[11];
      v38 = v1[12];
      static Log.photos.getter();
      v35(v39, v38, v37);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v1[32];
      v44 = v1[17];
      v45 = v1[13];
      v46 = v1[11];
      if (v42)
      {
        v69 = v41;
        v47 = v1[10];
        v64 = v1[7];
        v73 = v1[17];
        v76 = v1[32];
        v48 = v1[6];
        loga = v40;
        v49 = swift_slowAlloc();
        v77[0] = swift_slowAlloc();
        *v49 = 136315394;
        v71 = v45;
        v50 = PhotosFaceType.description.getter();
        v52 = v51;

        v53 = sub_100102F80(v50, v52, v77);

        *(v49 + 4) = v53;
        *(v49 + 12) = 2080;
        v34(v47, v46, v48);
        v54 = *(v64 + 8);
        v54(v46, v48);
        sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = v56;
        v54(v47, v48);
        v58 = sub_100102F80(v55, v57, v77);

        *(v49 + 14) = v58;
        _os_log_impl(&_mh_execute_header, loga, v69, "Processing %s face %s", v49, 0x16u);
        swift_arrayDestroy();

        v76(v73, v71);
      }

      else
      {
        v54 = *(v1[7] + 8);
        v54(v1[11], v1[6]);

        v43(v44, v45);
      }

      v1[42] = v54;
      v59 = static TestProperties.bufferSize.getter();
      v60 = swift_task_alloc();
      v1[43] = v60;
      *v60 = v1;
      v60[1] = sub_10001E724;
      v61 = v1[12];
      v62 = v1[5];

      return sub_1000215CC(v62, v61, v59);
    }
  }

  return result;
}

uint64_t sub_1000202C8()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_100020334()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000CC84;

  return sub_100013738(v0);
}

uint64_t sub_1000203C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for ShuffleID();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v4[13] = *(v6 + 64);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v4[20] = static CommunicationActor.shared.getter();
  sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[21] = v9;
  v4[22] = v8;

  return _swift_task_switch(sub_100020568, v9, v8);
}

uint64_t sub_100020568()
{
  v45 = v0;
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[8];
  static Log.default.getter();
  v5 = *(v3 + 16);
  v5(v1, v4, v2);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  v10 = v0[19];
  v12 = v0[16];
  v11 = v0[17];
  if (v8)
  {
    v40 = v7;
    v13 = v0[15];
    log = v6;
    v42 = v0[18];
    v43 = v5;
    v15 = v0[11];
    v14 = v0[12];
    v16 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v16 = 136315650;
    *(v16 + 4) = sub_100102F80(0xD000000000000015, 0x8000000100107080, &v44);
    *(v16 + 12) = 2080;
    v39 = v10;
    v17 = PhotosFaceType.description.getter();
    v19 = v18;

    v20 = sub_100102F80(v17, v19, &v44);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2080;
    v43(v13, v12, v15);
    v21 = *(v14 + 8);
    v21(v12, v15);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v25 = v15;
    v5 = v43;
    v21(v13, v25);
    v26 = sub_100102F80(v22, v24, &v44);

    *(v16 + 24) = v26;
    _os_log_impl(&_mh_execute_header, log, v40, "%s type = %s, id = %s", v16, 0x20u);
    swift_arrayDestroy();

    (*(v42 + 8))(v39, v11);
  }

  else
  {
    (*(v0[12] + 8))(v0[16], v0[11]);

    (*(v9 + 8))(v10, v11);
  }

  v28 = v0[13];
  v27 = v0[14];
  v29 = v0[11];
  v30 = v0[12];
  v32 = v0[9];
  v31 = v0[10];
  v5(v27, v0[8], v29);
  v33 = (*(v30 + 80) + 24) & ~*(v30 + 80);
  v34 = (v28 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v0[23] = v35;
  *(v35 + 16) = v31;
  (*(v30 + 32))(v35 + v33, v27, v29);
  *(v35 + v34) = v32;

  v36 = swift_task_alloc();
  v0[24] = v36;
  *v36 = v0;
  v36[1] = sub_100020968;
  v37 = v0[8];

  return sub_100021E0C((v0 + 2), v37, &unk_100109108, v35);
}

uint64_t sub_100020968()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_100043E94;
  }

  else
  {

    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_100043E7C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100020A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for DailyID();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v4[13] = *(v6 + 64);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v4[20] = static CommunicationActor.shared.getter();
  sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[21] = v9;
  v4[22] = v8;

  return _swift_task_switch(sub_100020C28, v9, v8);
}

uint64_t sub_100020C28()
{
  v45 = v0;
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[8];
  static Log.default.getter();
  v5 = *(v3 + 16);
  v5(v1, v4, v2);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  v10 = v0[19];
  v12 = v0[16];
  v11 = v0[17];
  if (v8)
  {
    v40 = v7;
    v13 = v0[15];
    log = v6;
    v42 = v0[18];
    v43 = v5;
    v15 = v0[11];
    v14 = v0[12];
    v16 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v16 = 136315650;
    *(v16 + 4) = sub_100102F80(0xD000000000000015, 0x8000000100107080, &v44);
    *(v16 + 12) = 2080;
    v39 = v10;
    v17 = PhotosFaceType.description.getter();
    v19 = v18;

    v20 = sub_100102F80(v17, v19, &v44);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2080;
    v43(v13, v12, v15);
    v21 = *(v14 + 8);
    v21(v12, v15);
    sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v25 = v15;
    v5 = v43;
    v21(v13, v25);
    v26 = sub_100102F80(v22, v24, &v44);

    *(v16 + 24) = v26;
    _os_log_impl(&_mh_execute_header, log, v40, "%s type = %s, id = %s", v16, 0x20u);
    swift_arrayDestroy();

    (*(v42 + 8))(v39, v11);
  }

  else
  {
    (*(v0[12] + 8))(v0[16], v0[11]);

    (*(v9 + 8))(v10, v11);
  }

  v28 = v0[13];
  v27 = v0[14];
  v29 = v0[11];
  v30 = v0[12];
  v32 = v0[9];
  v31 = v0[10];
  v5(v27, v0[8], v29);
  v33 = (*(v30 + 80) + 24) & ~*(v30 + 80);
  v34 = (v28 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v0[23] = v35;
  *(v35 + 16) = v31;
  (*(v30 + 32))(v35 + v33, v27, v29);
  *(v35 + v34) = v32;

  v36 = swift_task_alloc();
  v0[24] = v36;
  *v36 = v0;
  v36[1] = sub_100020968;
  v37 = v0[8];

  return sub_100022978((v0 + 2), v37, &unk_100109210, v35);
}

uint64_t sub_100021028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for ShuffleID();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v4[13] = *(v6 + 64);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v4[20] = static CommunicationActor.shared.getter();
  sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[21] = v9;
  v4[22] = v8;

  return _swift_task_switch(sub_1000211CC, v9, v8);
}

uint64_t sub_1000211CC()
{
  v45 = v0;
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[8];
  static Log.default.getter();
  v5 = *(v3 + 16);
  v5(v1, v4, v2);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  v10 = v0[19];
  v12 = v0[16];
  v11 = v0[17];
  if (v8)
  {
    v40 = v7;
    v13 = v0[15];
    log = v6;
    v42 = v0[18];
    v43 = v5;
    v15 = v0[11];
    v14 = v0[12];
    v16 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v16 = 136315650;
    *(v16 + 4) = sub_100102F80(0xD000000000000015, 0x8000000100107080, &v44);
    *(v16 + 12) = 2080;
    v39 = v10;
    v17 = PhotosFaceType.description.getter();
    v19 = v18;

    v20 = sub_100102F80(v17, v19, &v44);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2080;
    v43(v13, v12, v15);
    v21 = *(v14 + 8);
    v21(v12, v15);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v25 = v15;
    v5 = v43;
    v21(v13, v25);
    v26 = sub_100102F80(v22, v24, &v44);

    *(v16 + 24) = v26;
    _os_log_impl(&_mh_execute_header, log, v40, "%s type = %s, id = %s", v16, 0x20u);
    swift_arrayDestroy();

    (*(v42 + 8))(v39, v11);
  }

  else
  {
    (*(v0[12] + 8))(v0[16], v0[11]);

    (*(v9 + 8))(v10, v11);
  }

  v28 = v0[13];
  v27 = v0[14];
  v29 = v0[11];
  v30 = v0[12];
  v32 = v0[9];
  v31 = v0[10];
  v5(v27, v0[8], v29);
  v33 = (*(v30 + 80) + 24) & ~*(v30 + 80);
  v34 = (v28 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v0[23] = v35;
  *(v35 + 16) = v31;
  (*(v30 + 32))(v35 + v33, v27, v29);
  *(v35 + v34) = v32;

  v36 = swift_task_alloc();
  v0[24] = v36;
  *v36 = v0;
  v36[1] = sub_100020968;
  v37 = v0[8];

  return sub_1000234E4((v0 + 2), v37, &unk_100109270, v35);
}

uint64_t sub_1000215CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for AlbumID();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v4[13] = *(v6 + 64);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v4[20] = static CommunicationActor.shared.getter();
  sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[21] = v9;
  v4[22] = v8;

  return _swift_task_switch(sub_100021770, v9, v8);
}

uint64_t sub_100021770()
{
  v45 = v0;
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[8];
  static Log.default.getter();
  v5 = *(v3 + 16);
  v5(v1, v4, v2);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  v10 = v0[19];
  v12 = v0[16];
  v11 = v0[17];
  if (v8)
  {
    v40 = v7;
    v13 = v0[15];
    log = v6;
    v42 = v0[18];
    v43 = v5;
    v15 = v0[11];
    v14 = v0[12];
    v16 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v16 = 136315650;
    *(v16 + 4) = sub_100102F80(0xD000000000000015, 0x8000000100107080, &v44);
    *(v16 + 12) = 2080;
    v39 = v10;
    v17 = PhotosFaceType.description.getter();
    v19 = v18;

    v20 = sub_100102F80(v17, v19, &v44);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2080;
    v43(v13, v12, v15);
    v21 = *(v14 + 8);
    v21(v12, v15);
    sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v25 = v15;
    v5 = v43;
    v21(v13, v25);
    v26 = sub_100102F80(v22, v24, &v44);

    *(v16 + 24) = v26;
    _os_log_impl(&_mh_execute_header, log, v40, "%s type = %s, id = %s", v16, 0x20u);
    swift_arrayDestroy();

    (*(v42 + 8))(v39, v11);
  }

  else
  {
    (*(v0[12] + 8))(v0[16], v0[11]);

    (*(v9 + 8))(v10, v11);
  }

  v28 = v0[13];
  v27 = v0[14];
  v29 = v0[11];
  v30 = v0[12];
  v32 = v0[9];
  v31 = v0[10];
  v5(v27, v0[8], v29);
  v33 = (*(v30 + 80) + 24) & ~*(v30 + 80);
  v34 = (v28 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v0[23] = v35;
  *(v35 + 16) = v31;
  (*(v30 + 32))(v35 + v33, v27, v29);
  *(v35 + v34) = v32;

  v36 = swift_task_alloc();
  v0[24] = v36;
  *v36 = v0;
  v36[1] = sub_100021B70;
  v37 = v0[8];

  return sub_100024050((v0 + 2), v37, &unk_1001092D0, v35);
}

uint64_t sub_100021B70()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_100021D64;
  }

  else
  {

    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_100021C8C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100021C8C()
{

  sub_10000C3CC(v0 + 2, v0[5]);
  AsyncSequence.generic.getter();
  sub_10000C304(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100021D64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100021E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v5[15] = FaceRequest;
  v7 = *(FaceRequest - 8);
  v5[16] = v7;
  v5[17] = *(v7 + 64);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  sub_10000560C(&qword_100129E70, &unk_100109CD0);
  v5[20] = swift_task_alloc();
  v8 = type metadata accessor for ShuffleID();
  v5[21] = v8;
  v9 = *(v8 - 8);
  v5[22] = v9;
  v5[23] = *(v9 + 64);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v5[26] = v10;
  v5[27] = *(v10 - 8);
  v5[28] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v5[29] = v11;
  v12 = *(v11 - 8);
  v5[30] = v12;
  v5[31] = *(v12 + 64);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = type metadata accessor for CommunicationActor();
  v5[35] = static CommunicationActor.shared.getter();
  v5[36] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[37] = v14;
  v5[38] = v13;

  return _swift_task_switch(sub_1000220C8, v14, v13);
}

uint64_t sub_1000220C8()
{
  v62 = v0;
  v1 = v0[14];
  sub_1000438BC(&qword_10012A2B0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
  dispatch thunk of PhotosFaceID.id.getter();
  swift_beginAccess();
  if (*(*(v1 + 112) + 16) && (sub_100057AFC(v0[33]), (v2 & 1) != 0))
  {
    v3 = v0[25];
    v4 = v0[21];
    v5 = v0[22];
    v6 = v0[11];
    swift_endAccess();
    static Log.session.getter();
    v7 = *(v5 + 16);
    v7(v3, v6, v4);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[27];
    v11 = v0[28];
    v13 = v0[25];
    v59 = v0[26];
    if (v10)
    {
      log = v8;
      v14 = v0[24];
      v57 = v0[28];
      v53 = v9;
      v16 = v0[21];
      v15 = v0[22];
      buf = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v61 = v51;
      *buf = 136315138;
      v7(v14, v13, v16);
      v17 = *(v15 + 8);
      v17(v13, v16);
      sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v17(v14, v16);
      v21 = sub_100102F80(v18, v20, &v61);

      *(buf + 4) = v21;
      _os_log_impl(&_mh_execute_header, log, v53, "Attempted to recompute face %s twice in parallel. This is unexpected but probably harmless.", buf, 0xCu);
      sub_10000C304(v51);

      (*(v12 + 8))(v57, v59);
    }

    else
    {
      (*(v0[22] + 8))(v13, v0[21]);

      (*(v12 + 8))(v11, v59);
    }

    v39 = v0[10];
    dispatch thunk of PhotosFaceID.id.getter();
    FetchFaceRequest.init(id:day:)();
    v39[3] = sub_10000560C(&qword_10012A3F8, &qword_100109178);
    v40 = type metadata accessor for StoredPhoto();
    v0[39] = v40;
    v0[9] = v40;
    v39[4] = swift_getOpaqueTypeConformance2();
    v0[40] = sub_10000C1AC(v39);
    v0[41] = static CommunicationActor.shared.getter();
    v42 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10002280C, v42, v41);
  }

  else
  {
    loga = v0[36];
    v22 = v0[33];
    v23 = v0[32];
    bufa = v0[31];
    v24 = v0[29];
    v45 = v0[30];
    v25 = v0[24];
    v52 = v0[23];
    v58 = v0[22];
    v60 = v0[21];
    v26 = v0[20];
    v44 = v26;
    v47 = v0[14];
    v48 = v0[13];
    v54 = v0[12];
    v46 = v0[11];
    v27 = v0[10];
    swift_endAccess();

    sub_10000560C(&qword_10012A3E8, &qword_100109118);
    v28 = BroadcastSequence.__allocating_init()();
    v27[3] = sub_10000560C(&qword_10012A3F0, &qword_100109120);
    v0[8] = type metadata accessor for StoredPhoto();
    v27[4] = swift_getOpaqueTypeConformance2();
    sub_10000C1AC(v27);
    dispatch thunk of BroadcastSequence.listen()();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    v43 = v28;
    sub_10005C0A0(v28, v22, isUniquelyReferenced_nonNull_native);
    *(v1 + 112) = v61;
    swift_endAccess();
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v26, 1, 1, v30);
    (*(v45 + 16))(v23, v22, v24);
    (*(v58 + 16))(v25, v46, v60);

    v31 = static CommunicationActor.shared.getter();
    v32 = (*(v45 + 80) + 40) & ~*(v45 + 80);
    v33 = &bufa[v32 + 7] & 0xFFFFFFFFFFFFFFF8;
    v34 = (*(v58 + 80) + v33 + 16) & ~*(v58 + 80);
    v35 = swift_allocObject();
    *(v35 + 2) = v31;
    *(v35 + 3) = loga;
    *(v35 + 4) = v47;
    (*(v45 + 32))(&v35[v32], v23, v24);
    v36 = &v35[v33];
    *v36 = v54;
    *(v36 + 1) = v48;
    (*(v58 + 32))(&v35[v34], v25, v60);
    *&v35[(v52 + v34 + 7) & 0xFFFFFFFFFFFFFFF8] = v43;
    sub_100005654(0, 0, v44, &unk_100109170, v35);

    (*(v0[30] + 8))(v0[33], v0[29]);

    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_10002280C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v5 = v0[14];
  v4 = v0[15];

  static CommunicationActor.shared.getter();
  (*(v3 + 16))(v2, v1, v4);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, v2, v4);

  swift_checkMetadataState();
  generateElements<A>(isolation:_:)();

  (*(v3 + 8))(v1, v4);
  v8 = v0[37];
  v9 = v0[38];

  return _swift_task_switch(sub_100043E90, v8, v9);
}

uint64_t sub_100022978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v5[15] = FaceRequest;
  v7 = *(FaceRequest - 8);
  v5[16] = v7;
  v5[17] = *(v7 + 64);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  sub_10000560C(&qword_100129E70, &unk_100109CD0);
  v5[20] = swift_task_alloc();
  v8 = type metadata accessor for DailyID();
  v5[21] = v8;
  v9 = *(v8 - 8);
  v5[22] = v9;
  v5[23] = *(v9 + 64);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v5[26] = v10;
  v5[27] = *(v10 - 8);
  v5[28] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v5[29] = v11;
  v12 = *(v11 - 8);
  v5[30] = v12;
  v5[31] = *(v12 + 64);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = type metadata accessor for CommunicationActor();
  v5[35] = static CommunicationActor.shared.getter();
  v5[36] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[37] = v14;
  v5[38] = v13;

  return _swift_task_switch(sub_100022C34, v14, v13);
}

uint64_t sub_100022C34()
{
  v62 = v0;
  v1 = v0[14];
  sub_1000438BC(&qword_10012A178, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
  dispatch thunk of PhotosFaceID.id.getter();
  swift_beginAccess();
  if (*(*(v1 + 112) + 16) && (sub_100057AFC(v0[33]), (v2 & 1) != 0))
  {
    v3 = v0[25];
    v4 = v0[21];
    v5 = v0[22];
    v6 = v0[11];
    swift_endAccess();
    static Log.session.getter();
    v7 = *(v5 + 16);
    v7(v3, v6, v4);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[27];
    v11 = v0[28];
    v13 = v0[25];
    v59 = v0[26];
    if (v10)
    {
      log = v8;
      v14 = v0[24];
      v57 = v0[28];
      v53 = v9;
      v16 = v0[21];
      v15 = v0[22];
      buf = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v61 = v51;
      *buf = 136315138;
      v7(v14, v13, v16);
      v17 = *(v15 + 8);
      v17(v13, v16);
      sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v17(v14, v16);
      v21 = sub_100102F80(v18, v20, &v61);

      *(buf + 4) = v21;
      _os_log_impl(&_mh_execute_header, log, v53, "Attempted to recompute face %s twice in parallel. This is unexpected but probably harmless.", buf, 0xCu);
      sub_10000C304(v51);

      (*(v12 + 8))(v57, v59);
    }

    else
    {
      (*(v0[22] + 8))(v13, v0[21]);

      (*(v12 + 8))(v11, v59);
    }

    v39 = v0[10];
    dispatch thunk of PhotosFaceID.id.getter();
    FetchFaceRequest.init(id:day:)();
    v39[3] = sub_10000560C(&qword_10012A3F8, &qword_100109178);
    v40 = type metadata accessor for StoredPhoto();
    v0[39] = v40;
    v0[9] = v40;
    v39[4] = swift_getOpaqueTypeConformance2();
    v0[40] = sub_10000C1AC(v39);
    v0[41] = static CommunicationActor.shared.getter();
    v42 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100023378, v42, v41);
  }

  else
  {
    loga = v0[36];
    v22 = v0[33];
    v23 = v0[32];
    bufa = v0[31];
    v24 = v0[29];
    v45 = v0[30];
    v25 = v0[24];
    v52 = v0[23];
    v58 = v0[22];
    v60 = v0[21];
    v26 = v0[20];
    v44 = v26;
    v47 = v0[14];
    v48 = v0[13];
    v54 = v0[12];
    v46 = v0[11];
    v27 = v0[10];
    swift_endAccess();

    sub_10000560C(&qword_10012A3E8, &qword_100109118);
    v28 = BroadcastSequence.__allocating_init()();
    v27[3] = sub_10000560C(&qword_10012A3F0, &qword_100109120);
    v0[8] = type metadata accessor for StoredPhoto();
    v27[4] = swift_getOpaqueTypeConformance2();
    sub_10000C1AC(v27);
    dispatch thunk of BroadcastSequence.listen()();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    v43 = v28;
    sub_10005C0A0(v28, v22, isUniquelyReferenced_nonNull_native);
    *(v1 + 112) = v61;
    swift_endAccess();
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v26, 1, 1, v30);
    (*(v45 + 16))(v23, v22, v24);
    (*(v58 + 16))(v25, v46, v60);

    v31 = static CommunicationActor.shared.getter();
    v32 = (*(v45 + 80) + 40) & ~*(v45 + 80);
    v33 = &bufa[v32 + 7] & 0xFFFFFFFFFFFFFFF8;
    v34 = (*(v58 + 80) + v33 + 16) & ~*(v58 + 80);
    v35 = swift_allocObject();
    *(v35 + 2) = v31;
    *(v35 + 3) = loga;
    *(v35 + 4) = v47;
    (*(v45 + 32))(&v35[v32], v23, v24);
    v36 = &v35[v33];
    *v36 = v54;
    *(v36 + 1) = v48;
    (*(v58 + 32))(&v35[v34], v25, v60);
    *&v35[(v52 + v34 + 7) & 0xFFFFFFFFFFFFFFF8] = v43;
    sub_100005654(0, 0, v44, &unk_100109238, v35);

    (*(v0[30] + 8))(v0[33], v0[29]);

    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_100023378()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v5 = v0[14];
  v4 = v0[15];

  static CommunicationActor.shared.getter();
  (*(v3 + 16))(v2, v1, v4);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, v2, v4);

  swift_checkMetadataState();
  generateElements<A>(isolation:_:)();

  (*(v3 + 8))(v1, v4);
  v8 = v0[37];
  v9 = v0[38];

  return _swift_task_switch(sub_100043E90, v8, v9);
}

uint64_t sub_1000234E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v5[15] = FaceRequest;
  v7 = *(FaceRequest - 8);
  v5[16] = v7;
  v5[17] = *(v7 + 64);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  sub_10000560C(&qword_100129E70, &unk_100109CD0);
  v5[20] = swift_task_alloc();
  v8 = type metadata accessor for ShuffleID();
  v5[21] = v8;
  v9 = *(v8 - 8);
  v5[22] = v9;
  v5[23] = *(v9 + 64);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v5[26] = v10;
  v5[27] = *(v10 - 8);
  v5[28] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v5[29] = v11;
  v12 = *(v11 - 8);
  v5[30] = v12;
  v5[31] = *(v12 + 64);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = type metadata accessor for CommunicationActor();
  v5[35] = static CommunicationActor.shared.getter();
  v5[36] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[37] = v14;
  v5[38] = v13;

  return _swift_task_switch(sub_1000237A0, v14, v13);
}

uint64_t sub_1000237A0()
{
  v62 = v0;
  v1 = v0[14];
  sub_1000438BC(&qword_10012A2B0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
  dispatch thunk of PhotosFaceID.id.getter();
  swift_beginAccess();
  if (*(*(v1 + 112) + 16) && (sub_100057AFC(v0[33]), (v2 & 1) != 0))
  {
    v3 = v0[25];
    v4 = v0[21];
    v5 = v0[22];
    v6 = v0[11];
    swift_endAccess();
    static Log.session.getter();
    v7 = *(v5 + 16);
    v7(v3, v6, v4);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[27];
    v11 = v0[28];
    v13 = v0[25];
    v59 = v0[26];
    if (v10)
    {
      log = v8;
      v14 = v0[24];
      v57 = v0[28];
      v53 = v9;
      v16 = v0[21];
      v15 = v0[22];
      buf = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v61 = v51;
      *buf = 136315138;
      v7(v14, v13, v16);
      v17 = *(v15 + 8);
      v17(v13, v16);
      sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v17(v14, v16);
      v21 = sub_100102F80(v18, v20, &v61);

      *(buf + 4) = v21;
      _os_log_impl(&_mh_execute_header, log, v53, "Attempted to recompute face %s twice in parallel. This is unexpected but probably harmless.", buf, 0xCu);
      sub_10000C304(v51);

      (*(v12 + 8))(v57, v59);
    }

    else
    {
      (*(v0[22] + 8))(v13, v0[21]);

      (*(v12 + 8))(v11, v59);
    }

    v39 = v0[10];
    dispatch thunk of PhotosFaceID.id.getter();
    FetchFaceRequest.init(id:day:)();
    v39[3] = sub_10000560C(&qword_10012A3F8, &qword_100109178);
    v40 = type metadata accessor for StoredPhoto();
    v0[39] = v40;
    v0[9] = v40;
    v39[4] = swift_getOpaqueTypeConformance2();
    v0[40] = sub_10000C1AC(v39);
    v0[41] = static CommunicationActor.shared.getter();
    v42 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100023EE4, v42, v41);
  }

  else
  {
    loga = v0[36];
    v22 = v0[33];
    v23 = v0[32];
    bufa = v0[31];
    v24 = v0[29];
    v45 = v0[30];
    v25 = v0[24];
    v52 = v0[23];
    v58 = v0[22];
    v60 = v0[21];
    v26 = v0[20];
    v44 = v26;
    v47 = v0[14];
    v48 = v0[13];
    v54 = v0[12];
    v46 = v0[11];
    v27 = v0[10];
    swift_endAccess();

    sub_10000560C(&qword_10012A3E8, &qword_100109118);
    v28 = BroadcastSequence.__allocating_init()();
    v27[3] = sub_10000560C(&qword_10012A3F0, &qword_100109120);
    v0[8] = type metadata accessor for StoredPhoto();
    v27[4] = swift_getOpaqueTypeConformance2();
    sub_10000C1AC(v27);
    dispatch thunk of BroadcastSequence.listen()();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    v43 = v28;
    sub_10005C0A0(v28, v22, isUniquelyReferenced_nonNull_native);
    *(v1 + 112) = v61;
    swift_endAccess();
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v26, 1, 1, v30);
    (*(v45 + 16))(v23, v22, v24);
    (*(v58 + 16))(v25, v46, v60);

    v31 = static CommunicationActor.shared.getter();
    v32 = (*(v45 + 80) + 40) & ~*(v45 + 80);
    v33 = &bufa[v32 + 7] & 0xFFFFFFFFFFFFFFF8;
    v34 = (*(v58 + 80) + v33 + 16) & ~*(v58 + 80);
    v35 = swift_allocObject();
    *(v35 + 2) = v31;
    *(v35 + 3) = loga;
    *(v35 + 4) = v47;
    (*(v45 + 32))(&v35[v32], v23, v24);
    v36 = &v35[v33];
    *v36 = v54;
    *(v36 + 1) = v48;
    (*(v58 + 32))(&v35[v34], v25, v60);
    *&v35[(v52 + v34 + 7) & 0xFFFFFFFFFFFFFFF8] = v43;
    sub_100005654(0, 0, v44, &unk_100109298, v35);

    (*(v0[30] + 8))(v0[33], v0[29]);

    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_100023EE4()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v5 = v0[14];
  v4 = v0[15];

  static CommunicationActor.shared.getter();
  (*(v3 + 16))(v2, v1, v4);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, v2, v4);

  swift_checkMetadataState();
  generateElements<A>(isolation:_:)();

  (*(v3 + 8))(v1, v4);
  v8 = v0[37];
  v9 = v0[38];

  return _swift_task_switch(sub_100043E90, v8, v9);
}

uint64_t sub_100024050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v5[15] = FaceRequest;
  v7 = *(FaceRequest - 8);
  v5[16] = v7;
  v5[17] = *(v7 + 64);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  sub_10000560C(&qword_100129E70, &unk_100109CD0);
  v5[20] = swift_task_alloc();
  v8 = type metadata accessor for AlbumID();
  v5[21] = v8;
  v9 = *(v8 - 8);
  v5[22] = v9;
  v5[23] = *(v9 + 64);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v5[26] = v10;
  v5[27] = *(v10 - 8);
  v5[28] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v5[29] = v11;
  v12 = *(v11 - 8);
  v5[30] = v12;
  v5[31] = *(v12 + 64);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = type metadata accessor for CommunicationActor();
  v5[35] = static CommunicationActor.shared.getter();
  v5[36] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[37] = v14;
  v5[38] = v13;

  return _swift_task_switch(sub_10002430C, v14, v13);
}

uint64_t sub_10002430C()
{
  v62 = v0;
  v1 = v0[14];
  sub_1000438BC(&qword_10012A048, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
  dispatch thunk of PhotosFaceID.id.getter();
  swift_beginAccess();
  if (*(*(v1 + 112) + 16) && (sub_100057AFC(v0[33]), (v2 & 1) != 0))
  {
    v3 = v0[25];
    v4 = v0[21];
    v5 = v0[22];
    v6 = v0[11];
    swift_endAccess();
    static Log.session.getter();
    v7 = *(v5 + 16);
    v7(v3, v6, v4);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[27];
    v11 = v0[28];
    v13 = v0[25];
    v59 = v0[26];
    if (v10)
    {
      log = v8;
      v14 = v0[24];
      v57 = v0[28];
      v53 = v9;
      v16 = v0[21];
      v15 = v0[22];
      buf = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v61 = v51;
      *buf = 136315138;
      v7(v14, v13, v16);
      v17 = *(v15 + 8);
      v17(v13, v16);
      sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v17(v14, v16);
      v21 = sub_100102F80(v18, v20, &v61);

      *(buf + 4) = v21;
      _os_log_impl(&_mh_execute_header, log, v53, "Attempted to recompute face %s twice in parallel. This is unexpected but probably harmless.", buf, 0xCu);
      sub_10000C304(v51);

      (*(v12 + 8))(v57, v59);
    }

    else
    {
      (*(v0[22] + 8))(v13, v0[21]);

      (*(v12 + 8))(v11, v59);
    }

    v39 = v0[10];
    dispatch thunk of PhotosFaceID.id.getter();
    FetchFaceRequest.init(id:day:)();
    v39[3] = sub_10000560C(&qword_10012A3F8, &qword_100109178);
    v40 = type metadata accessor for StoredPhoto();
    v0[39] = v40;
    v0[9] = v40;
    v39[4] = swift_getOpaqueTypeConformance2();
    v0[40] = sub_10000C1AC(v39);
    v0[41] = static CommunicationActor.shared.getter();
    v42 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100024A50, v42, v41);
  }

  else
  {
    loga = v0[36];
    v22 = v0[33];
    v23 = v0[32];
    bufa = v0[31];
    v24 = v0[29];
    v45 = v0[30];
    v25 = v0[24];
    v52 = v0[23];
    v58 = v0[22];
    v60 = v0[21];
    v26 = v0[20];
    v44 = v26;
    v47 = v0[14];
    v48 = v0[13];
    v54 = v0[12];
    v46 = v0[11];
    v27 = v0[10];
    swift_endAccess();

    sub_10000560C(&qword_10012A3E8, &qword_100109118);
    v28 = BroadcastSequence.__allocating_init()();
    v27[3] = sub_10000560C(&qword_10012A3F0, &qword_100109120);
    v0[8] = type metadata accessor for StoredPhoto();
    v27[4] = swift_getOpaqueTypeConformance2();
    sub_10000C1AC(v27);
    dispatch thunk of BroadcastSequence.listen()();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    v43 = v28;
    sub_10005C0A0(v28, v22, isUniquelyReferenced_nonNull_native);
    *(v1 + 112) = v61;
    swift_endAccess();
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v26, 1, 1, v30);
    (*(v45 + 16))(v23, v22, v24);
    (*(v58 + 16))(v25, v46, v60);

    v31 = static CommunicationActor.shared.getter();
    v32 = (*(v45 + 80) + 40) & ~*(v45 + 80);
    v33 = &bufa[v32 + 7] & 0xFFFFFFFFFFFFFFF8;
    v34 = (*(v58 + 80) + v33 + 16) & ~*(v58 + 80);
    v35 = swift_allocObject();
    *(v35 + 2) = v31;
    *(v35 + 3) = loga;
    *(v35 + 4) = v47;
    (*(v45 + 32))(&v35[v32], v23, v24);
    v36 = &v35[v33];
    *v36 = v54;
    *(v36 + 1) = v48;
    (*(v58 + 32))(&v35[v34], v25, v60);
    *&v35[(v52 + v34 + 7) & 0xFFFFFFFFFFFFFFF8] = v43;
    sub_100005654(0, 0, v44, &unk_1001092F8, v35);

    (*(v0[30] + 8))(v0[33], v0[29]);

    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_100024A50()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v5 = v0[14];
  v4 = v0[15];

  static CommunicationActor.shared.getter();
  (*(v3 + 16))(v2, v1, v4);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, v2, v4);

  swift_checkMetadataState();
  generateElements<A>(isolation:_:)();

  (*(v3 + 8))(v1, v4);
  v8 = v0[37];
  v9 = v0[38];

  return _swift_task_switch(sub_100024BBC, v8, v9);
}

uint64_t sub_100024BBC()
{

  (*(v0[30] + 8))(v0[33], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100024CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  sub_10000560C(&qword_10012A400, &qword_100109190);
  v4[16] = swift_task_alloc();
  v4[17] = sub_10000560C(&qword_10012A3F0, &qword_100109120);
  v4[18] = swift_task_alloc();
  v5 = sub_10000560C(&qword_10012A408, &qword_100109198);
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v6 = type metadata accessor for StoredPhoto();
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v4[26] = FaceRequest;
  v4[27] = *(FaceRequest - 8);
  v4[28] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[29] = v8;
  v4[30] = *(v8 - 8);
  v4[31] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v4[32] = v9;
  v4[33] = *(v9 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();

  return _swift_task_switch(sub_100024F94, 0, 0);
}

uint64_t sub_100024F94()
{
  v1 = *(v0[14] + 80);
  v0[8] = v1;
  v0[39] = v1;

  FetchFaceRequest.id.getter();
  Face = FetchFaceRequest.day.getter();
  if (v3)
  {
    Face = static TimeUtilities.currentEpoch.getter();
  }

  v4 = Face;
  v5 = type metadata accessor for GalleryDatabase();
  v0[40] = v5;
  v6 = sub_1000438BC(&qword_10012A3D0, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
  v0[41] = v6;
  v7 = swift_task_alloc();
  v0[42] = v7;
  *v7 = v0;
  v7[1] = sub_1000250C8;
  v8 = v0[38];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.query(id:day:)(v8, v4, v5, v6);
}

uint64_t sub_1000250C8(uint64_t a1)
{
  v3 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  if (v1)
  {
    (*(v3[33] + 8))(v3[38], v3[32]);

    v4 = sub_1000254B8;
  }

  else
  {
    v5 = v3[38];
    v6 = v3[32];
    v7 = v3[33];
    v8 = *(v7 + 8);
    v3[45] = v8;
    v3[46] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v6);

    v4 = sub_100025228;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100025228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[43];
  if (!*(v4 + 2))
  {
    FetchFaceRequest.id.getter();
    type metadata accessor for CommunicationActor();
    v3[47] = static CommunicationActor.shared.getter();
    sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    v14 = sub_1000255C0;
    goto LABEL_9;
  }

  v3[52] = v4;
  v5 = *(v4 + 2);
  v3[53] = v5;
  if (!v5)
  {

    FetchFaceRequest.id.getter();
    v3[57] = type metadata accessor for CommunicationActor();
    v3[58] = static CommunicationActor.shared.getter();
    v3[59] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v15;
    v14 = sub_10002633C;
LABEL_9:
    v4 = v14;
    a2 = v11;
    a3 = v13;

    return _swift_task_switch(v4, a2, a3);
  }

  v6 = v3[23];
  v7 = v3[12];
  v3[54] = 0;
  if (!*(v4 + 2))
  {
    __break(1u);
    return _swift_task_switch(v4, a2, a3);
  }

  (*(v6 + 16))(v3[25], v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v3[22]);
  v16 = (v7 + *v7);
  v8 = swift_task_alloc();
  v3[55] = v8;
  *v8 = v3;
  v8[1] = sub_1000261EC;
  v9 = v3[25];

  return v16(v9);
}

uint64_t sub_1000254B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000255C0()
{
  v1 = v0[14];

  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = sub_100057AFC(v0[37]);
    v4 = v0[45];
    v5 = v0[37];
    v6 = v0[32];
    if (v7)
    {
      v0[48] = *(*(v2 + 56) + 8 * v3);
      swift_endAccess();

      v4(v5, v6);
      v8 = sub_10002579C;
    }

    else
    {
      swift_endAccess();
      v4(v5, v6);
      v8 = sub_100043E80;
    }
  }

  else
  {
    v9 = v0[45];
    v10 = v0[37];
    v11 = v0[32];
    swift_endAccess();
    v9(v10, v11);
    v8 = sub_1000256F0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000256F0(uint64_t a1)
{
  FetchFaceRequest.id.getter();
  v2 = swift_task_alloc();
  v1[49] = v2;
  *v2 = v1;
  v2[1] = sub_1000259AC;
  v3 = v1[40];
  v4 = v1[41];
  v5 = v1[36];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v5, v3, v4);
}

uint64_t sub_10002579C()
{

  v3 = v0[43];
  v0[52] = v3;
  v4 = *(v3 + 2);
  v0[53] = v4;
  if (!v4)
  {

    FetchFaceRequest.id.getter();
    v0[57] = type metadata accessor for CommunicationActor();
    v0[58] = static CommunicationActor.shared.getter();
    v0[59] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    v3 = sub_10002633C;
    v1 = v10;
    v2 = v12;

    return _swift_task_switch(v3, v1, v2);
  }

  v5 = v0[23];
  v6 = v0[12];
  v0[54] = 0;
  if (!*(v3 + 2))
  {
    __break(1u);
    return _swift_task_switch(v3, v1, v2);
  }

  (*(v5 + 16))(v0[25], v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v0[22]);
  v13 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[55] = v7;
  *v7 = v0;
  v7[1] = sub_1000261EC;
  v8 = v0[25];

  return v13(v8);
}

uint64_t sub_1000259AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[50] = a1;
  v4[51] = v1;

  (v3[45])(v4[36], v4[32]);
  if (v1)
  {

    v5 = sub_1000260E4;
  }

  else
  {
    v5 = sub_100025B1C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100025B1C()
{
  v53 = v0;
  v1 = *(v0[50] + 16);

  v3 = sub_10002D644(v2);
  v5 = v4;

  if (v5)
  {

    v9 = v0[43];
  }

  else
  {

    if (static PhotosFaceIDDatabaseFix.hourValueLowerBound()() < v3)
    {
      v11 = v0[27];
      v10 = v0[28];
      v12 = v0[26];
      v13 = v0[15];
      static Log.session.getter();
      (*(v11 + 16))(v10, v13, v12);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v47 = v0[45];
        v16 = v0[35];
        v17 = v0[32];
        v48 = v0[30];
        v49 = v0[29];
        v50 = v0[31];
        v46 = v15;
        v18 = v0[27];
        v44 = v0[28];
        v45 = v0[26];
        v19 = swift_slowAlloc();
        v52[0] = swift_slowAlloc();
        *v19 = 136315906;
        *(v19 + 4) = sub_100102F80(0xD000000000000013, 0x80000001001070A0, v52);
        *(v19 + 12) = 2080;
        FetchFaceRequest.id.getter();
        sub_1000438BC(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v21;
        v47(v16, v17);
        (*(v18 + 8))(v44, v45);
        v23 = sub_100102F80(v20, v22, v52);

        *(v19 + 14) = v23;
        *(v19 + 22) = 2048;
        *(v19 + 24) = v3;
        *(v19 + 32) = 2048;
        *(v19 + 34) = static TimeUtilities.currentEpoch.getter();
        _os_log_impl(&_mh_execute_header, v14, v46, "%s: queryByDay(%s) returned photos for day %ld; current day = %ld", v19, 0x2Au);
        swift_arrayDestroy();

        (*(v48 + 8))(v50, v49);
      }

      else
      {
        v25 = v0[30];
        v24 = v0[31];
        v27 = v0[28];
        v26 = v0[29];
        v28 = v0[26];
        v29 = v0[27];

        (*(v29 + 8))(v27, v28);
        (*(v25 + 8))(v24, v26);
      }
    }

    v6 = static TimeUtilities.currentEpoch.getter();
    v30 = v6 - v3;
    if (__OFSUB__(v6, v3))
    {
      goto LABEL_24;
    }

    v31 = __OFSUB__(v30, 1);
    v32 = v30 - 1;
    if (v31)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v32 < 0)
    {
      v31 = __OFSUB__(0, v32);
      v32 = -v32;
      if (v31)
      {
        goto LABEL_29;
      }
    }

    if (!v1)
    {
      goto LABEL_26;
    }

    v33 = v32 % v1;
    v0[11] = v0[50];
    sub_10000560C(&qword_10012A410, &qword_1001091A0);
    sub_10000CC24(&qword_10012A418, &qword_10012A410, &qword_1001091A0, &protocol conformance descriptor for [A : B]);
    v34 = Sequence.sorted<A>(_:)();

    if ((v33 & 0x8000000000000000) != 0)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v33 >= *(v34 + 16))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return _swift_task_switch(v6, v7, v8);
    }

    v9 = *(v34 + 16 * v33 + 40);
  }

  v0[52] = v9;
  v35 = *(v9 + 16);
  v0[53] = v35;
  if (!v35)
  {

    FetchFaceRequest.id.getter();
    v0[57] = type metadata accessor for CommunicationActor();
    v0[58] = static CommunicationActor.shared.getter();
    v0[59] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v41 = dispatch thunk of Actor.unownedExecutor.getter();
    v43 = v42;
    v6 = sub_10002633C;
    v7 = v41;
    v8 = v43;

    return _swift_task_switch(v6, v7, v8);
  }

  v36 = v0[23];
  v37 = v0[12];
  v0[54] = 0;
  if (!*(v9 + 16))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  (*(v36 + 16))(v0[25], v9 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v0[22]);
  v51 = (v37 + *v37);
  v38 = swift_task_alloc();
  v0[55] = v38;
  *v38 = v0;
  v38[1] = sub_1000261EC;
  v39 = v0[25];

  return v51(v39);
}

uint64_t sub_1000260E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000261EC()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  (*(v2[23] + 8))(v2[25], v2[22]);
  if (v0)
  {

    v3 = sub_100026658;
  }

  else
  {
    v3 = sub_100026448;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002633C()
{
  v1 = v0[14];

  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_100057AFC(v0[34]), (v4 & 1) != 0))
  {
    v5 = v0[45];
    v6 = v0[34];
    v7 = v0[32];
    v0[60] = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();

    v5(v6, v7);
    v8 = sub_100026760;
  }

  else
  {
    v9 = v0[45];
    v10 = v0[34];
    v11 = v0[32];
    swift_endAccess();
    v9(v10, v11);
    v8 = sub_100026984;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100026448(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[54] + 1;
  if (v4 == v3[53])
  {

    FetchFaceRequest.id.getter();
    v3[57] = type metadata accessor for CommunicationActor();
    v3[58] = static CommunicationActor.shared.getter();
    v3[59] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    a1 = sub_10002633C;
    a2 = v5;
    a3 = v7;

    return _swift_task_switch(a1, a2, a3);
  }

  v3[54] = v4;
  v8 = v3[52];
  if (v4 >= *(v8 + 16))
  {
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v9 = v3[12];
  (*(v3[23] + 16))(v3[25], v8 + ((*(v3[23] + 80) + 32) & ~*(v3[23] + 80)) + *(v3[23] + 72) * v4, v3[22]);
  v13 = (v9 + *v9);
  v10 = swift_task_alloc();
  v3[55] = v10;
  *v10 = v3;
  v10[1] = sub_1000261EC;
  v11 = v3[25];

  return v13(v11);
}

uint64_t sub_100026658()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100026760(uint64_t a1)
{
  *(v1 + 488) = static CommunicationActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000267F4, v3, v2);
}

uint64_t sub_1000267F4()
{

  dispatch thunk of BroadcastSequence.listen()();

  return _swift_task_switch(sub_100026868, 0, 0);
}

uint64_t sub_100026868()
{
  v0[9] = v0[22];
  v0[62] = swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[63] = v2;
  *v2 = v0;
  v2[1] = sub_100026A84;
  v3 = v0[19];
  v4 = v0[16];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 10, v3, AssociatedConformanceWitness);
}

uint64_t sub_100026984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100026A84()
{

  if (v0)
  {
    v1 = sub_100026DE0;
  }

  else
  {
    v1 = sub_100026B94;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100026B94()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[16];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[12];
    (*(v2 + 32))(v0[24], v3, v1);
    v9 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[64] = v7;
    *v7 = v0;
    v7[1] = sub_100026F10;
    v8 = v0[24];

    return v9(v8);
  }
}

uint64_t sub_100026DE0()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100026F10()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_100027110;
  }

  else
  {
    v2 = sub_100027024;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100027024()
{
  (*(v0[23] + 8))(v0[24], v0[22]);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[63] = v2;
  *v2 = v0;
  v2[1] = sub_100026A84;
  v3 = v0[19];
  v4 = v0[16];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 10, v3, AssociatedConformanceWitness);
}

uint64_t sub_100027110()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v6 = v0[20];

  (*(v2 + 8))(v1, v3);
  (*(v6 + 8))(v4, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10002725C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v4[16] = FaceRequest;
  v4[17] = *(FaceRequest - 8);
  v4[18] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  sub_10000560C(&qword_10012A400, &qword_100109190);
  v4[22] = swift_task_alloc();
  v4[23] = sub_10000560C(&qword_10012A3F0, &qword_100109120);
  v4[24] = swift_task_alloc();
  v7 = sub_10000560C(&qword_10012A408, &qword_100109198);
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  v8 = type metadata accessor for StoredPhoto();
  v4[28] = v8;
  v4[29] = *(v8 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v4[32] = v9;
  v4[33] = *(v9 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();

  return _swift_task_switch(sub_10002754C, 0, 0);
}

uint64_t sub_10002754C()
{
  v1 = *(v0[14] + 80);
  v0[8] = v1;
  v0[39] = v1;

  FetchFaceRequest.id.getter();
  Face = FetchFaceRequest.day.getter();
  if (v3)
  {
    Face = static TimeUtilities.currentEpoch.getter();
  }

  v4 = Face;
  v5 = type metadata accessor for DailyDatabase();
  v0[40] = v5;
  v6 = sub_1000438BC(&qword_10012A468, &type metadata accessor for DailyDatabase, &protocol conformance descriptor for DailyDatabase);
  v0[41] = v6;
  v7 = swift_task_alloc();
  v0[42] = v7;
  *v7 = v0;
  v7[1] = sub_100027680;
  v8 = v0[38];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.query(id:day:)(v8, v4, v5, v6);
}

uint64_t sub_100027680(uint64_t a1)
{
  v3 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  if (v1)
  {
    (*(v3[33] + 8))(v3[38], v3[32]);

    v4 = sub_100043E78;
  }

  else
  {
    v5 = v3[38];
    v6 = v3[32];
    v7 = v3[33];
    v8 = *(v7 + 8);
    v3[45] = v8;
    v3[46] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v6);

    v4 = sub_1000277E0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000277E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[43];
  if (!*(v4 + 2))
  {
    FetchFaceRequest.id.getter();
    type metadata accessor for CommunicationActor();
    v3[47] = static CommunicationActor.shared.getter();
    sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    v14 = sub_100027A70;
    goto LABEL_9;
  }

  v3[51] = v4;
  v5 = *(v4 + 2);
  v3[52] = v5;
  if (!v5)
  {

    FetchFaceRequest.id.getter();
    v3[53] = type metadata accessor for CommunicationActor();
    v3[54] = static CommunicationActor.shared.getter();
    v3[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v15;
    v14 = sub_100027D10;
LABEL_9:
    v4 = v14;
    a2 = v11;
    a3 = v13;

    return _swift_task_switch(v4, a2, a3);
  }

  v6 = v3[29];
  v7 = v3[12];
  v3[56] = 0;
  if (!*(v4 + 2))
  {
    __break(1u);
    return _swift_task_switch(v4, a2, a3);
  }

  (*(v6 + 16))(v3[31], v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v3[28]);
  v16 = (v7 + *v7);
  v8 = swift_task_alloc();
  v3[57] = v8;
  *v8 = v3;
  v8[1] = sub_100027E1C;
  v9 = v3[31];

  return v16(v9);
}

uint64_t sub_100027A70()
{
  v1 = v0[14];

  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = sub_100057AFC(v0[37]);
    v4 = v0[45];
    v5 = v0[37];
    v6 = v0[32];
    if (v7)
    {
      v0[65] = *(*(v2 + 56) + 8 * v3);
      swift_endAccess();

      v4(v5, v6);
      v8 = sub_100028EC4;
    }

    else
    {
      swift_endAccess();
      v4(v5, v6);
      v8 = sub_1000290D4;
    }
  }

  else
  {
    v9 = v0[45];
    v10 = v0[37];
    v11 = v0[32];
    swift_endAccess();
    v9(v10, v11);
    v8 = sub_100043E84;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100027BA0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[49] = a1;
  v4[50] = v1;

  (v3[45])(v4[36], v4[32]);
  if (v1)
  {

    v5 = sub_100043E18;
  }

  else
  {
    v5 = sub_1000288FC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100027D10()
{
  v1 = v0[14];

  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_100057AFC(v0[35]), (v4 & 1) != 0))
  {
    v5 = v0[45];
    v6 = v0[35];
    v7 = v0[32];
    v0[59] = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();

    v5(v6, v7);
    v8 = sub_100027F6C;
  }

  else
  {
    v9 = v0[45];
    v10 = v0[35];
    v11 = v0[32];
    swift_endAccess();
    v9(v10, v11);
    v8 = sub_100043E9C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100027E1C()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  (*(v2[29] + 8))(v2[31], v2[28]);
  if (v0)
  {

    v3 = sub_100043E14;
  }

  else
  {
    v3 = sub_1000286E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100027F6C(uint64_t a1)
{
  *(v1 + 480) = static CommunicationActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100028000, v3, v2);
}

uint64_t sub_100028000()
{

  dispatch thunk of BroadcastSequence.listen()();

  return _swift_task_switch(sub_100028074, 0, 0);
}

uint64_t sub_100028074()
{
  v0[9] = v0[28];
  v0[61] = swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[62] = v2;
  *v2 = v0;
  v2[1] = sub_100028190;
  v3 = v0[25];
  v4 = v0[22];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 10, v3, AssociatedConformanceWitness);
}

uint64_t sub_100028190()
{

  if (v0)
  {
    v1 = sub_100043E74;
  }

  else
  {
    v1 = sub_1000282A0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000282A0()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[22];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(v0[26] + 8))(v0[27], v0[25]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[12];
    (*(v2 + 32))(v0[30], v3, v1);
    v9 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[63] = v7;
    *v7 = v0;
    v7[1] = sub_1000284E8;
    v8 = v0[30];

    return v9(v8);
  }
}

uint64_t sub_1000284E8()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_100043E20;
  }

  else
  {
    v2 = sub_1000285FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000285FC()
{
  (*(v0[29] + 8))(v0[30], v0[28]);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[62] = v2;
  *v2 = v0;
  v2[1] = sub_100028190;
  v3 = v0[25];
  v4 = v0[22];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 10, v3, AssociatedConformanceWitness);
}

uint64_t sub_1000286E8(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[56] + 1;
  if (v4 == v3[52])
  {

    FetchFaceRequest.id.getter();
    v3[53] = type metadata accessor for CommunicationActor();
    v3[54] = static CommunicationActor.shared.getter();
    v3[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    a1 = sub_100027D10;
    a2 = v5;
    a3 = v7;

    return _swift_task_switch(a1, a2, a3);
  }

  v3[56] = v4;
  v8 = v3[51];
  if (v4 >= *(v8 + 16))
  {
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v9 = v3[12];
  (*(v3[29] + 16))(v3[31], v8 + ((*(v3[29] + 80) + 32) & ~*(v3[29] + 80)) + *(v3[29] + 72) * v4, v3[28]);
  v13 = (v9 + *v9);
  v10 = swift_task_alloc();
  v3[57] = v10;
  *v10 = v3;
  v10[1] = sub_100027E1C;
  v11 = v3[31];

  return v13(v11);
}

uint64_t sub_1000288FC()
{
  v53 = v0;
  v1 = *(v0[49] + 16);

  v3 = sub_10002D644(v2);
  v5 = v4;

  if (v5)
  {

    v9 = v0[43];
  }

  else
  {

    if (static PhotosFaceIDDatabaseFix.hourValueLowerBound()() < v3)
    {
      v11 = v0[17];
      v10 = v0[18];
      v13 = v0[15];
      v12 = v0[16];
      static Log.session.getter();
      (*(v11 + 16))(v10, v13, v12);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v47 = v0[45];
        v16 = v0[34];
        v17 = v0[32];
        v48 = v0[20];
        v49 = v0[19];
        v50 = v0[21];
        v46 = v15;
        v18 = v0[17];
        v44 = v0[18];
        v45 = v0[16];
        v19 = swift_slowAlloc();
        v52[0] = swift_slowAlloc();
        *v19 = 136315906;
        *(v19 + 4) = sub_100102F80(0xD000000000000013, 0x80000001001070A0, v52);
        *(v19 + 12) = 2080;
        FetchFaceRequest.id.getter();
        sub_1000438BC(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v21;
        v47(v16, v17);
        (*(v18 + 8))(v44, v45);
        v23 = sub_100102F80(v20, v22, v52);

        *(v19 + 14) = v23;
        *(v19 + 22) = 2048;
        *(v19 + 24) = v3;
        *(v19 + 32) = 2048;
        *(v19 + 34) = static TimeUtilities.currentEpoch.getter();
        _os_log_impl(&_mh_execute_header, v14, v46, "%s: queryByDay(%s) returned photos for day %ld; current day = %ld", v19, 0x2Au);
        swift_arrayDestroy();

        (*(v48 + 8))(v50, v49);
      }

      else
      {
        v25 = v0[20];
        v24 = v0[21];
        v27 = v0[18];
        v26 = v0[19];
        v28 = v0[16];
        v29 = v0[17];

        (*(v29 + 8))(v27, v28);
        (*(v25 + 8))(v24, v26);
      }
    }

    v6 = static TimeUtilities.currentEpoch.getter();
    v30 = v6 - v3;
    if (__OFSUB__(v6, v3))
    {
      goto LABEL_24;
    }

    v31 = __OFSUB__(v30, 1);
    v32 = v30 - 1;
    if (v31)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v32 < 0)
    {
      v31 = __OFSUB__(0, v32);
      v32 = -v32;
      if (v31)
      {
        goto LABEL_29;
      }
    }

    if (!v1)
    {
      goto LABEL_26;
    }

    v33 = v32 % v1;
    v0[11] = v0[49];
    sub_10000560C(&qword_10012A410, &qword_1001091A0);
    sub_10000CC24(&qword_10012A418, &qword_10012A410, &qword_1001091A0, &protocol conformance descriptor for [A : B]);
    v34 = Sequence.sorted<A>(_:)();

    if ((v33 & 0x8000000000000000) != 0)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v33 >= *(v34 + 16))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return _swift_task_switch(v6, v7, v8);
    }

    v9 = *(v34 + 16 * v33 + 40);
  }

  v0[51] = v9;
  v35 = *(v9 + 16);
  v0[52] = v35;
  if (!v35)
  {

    FetchFaceRequest.id.getter();
    v0[53] = type metadata accessor for CommunicationActor();
    v0[54] = static CommunicationActor.shared.getter();
    v0[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v41 = dispatch thunk of Actor.unownedExecutor.getter();
    v43 = v42;
    v6 = sub_100027D10;
    v7 = v41;
    v8 = v43;

    return _swift_task_switch(v6, v7, v8);
  }

  v36 = v0[29];
  v37 = v0[12];
  v0[56] = 0;
  if (!*(v9 + 16))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  (*(v36 + 16))(v0[31], v9 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v0[28]);
  v51 = (v37 + *v37);
  v38 = swift_task_alloc();
  v0[57] = v38;
  *v38 = v0;
  v38[1] = sub_100027E1C;
  v39 = v0[31];

  return v51(v39);
}

uint64_t sub_100028EC4()
{

  v3 = v0[43];
  v0[51] = v3;
  v4 = *(v3 + 2);
  v0[52] = v4;
  if (!v4)
  {

    FetchFaceRequest.id.getter();
    v0[53] = type metadata accessor for CommunicationActor();
    v0[54] = static CommunicationActor.shared.getter();
    v0[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    v3 = sub_100027D10;
    v1 = v10;
    v2 = v12;

    return _swift_task_switch(v3, v1, v2);
  }

  v5 = v0[29];
  v6 = v0[12];
  v0[56] = 0;
  if (!*(v3 + 2))
  {
    __break(1u);
    return _swift_task_switch(v3, v1, v2);
  }

  (*(v5 + 16))(v0[31], v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v0[28]);
  v13 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[57] = v7;
  *v7 = v0;
  v7[1] = sub_100027E1C;
  v8 = v0[31];

  return v13(v8);
}

uint64_t sub_1000290D4(uint64_t a1)
{
  FetchFaceRequest.id.getter();
  v2 = swift_task_alloc();
  v1[48] = v2;
  *v2 = v1;
  v2[1] = sub_100027BA0;
  v3 = v1[40];
  v4 = v1[41];
  v5 = v1[36];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v5, v3, v4);
}

uint64_t sub_100029180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v4[16] = FaceRequest;
  v4[17] = *(FaceRequest - 8);
  v4[18] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  sub_10000560C(&qword_10012A400, &qword_100109190);
  v4[22] = swift_task_alloc();
  v4[23] = sub_10000560C(&qword_10012A3F0, &qword_100109120);
  v4[24] = swift_task_alloc();
  v7 = sub_10000560C(&qword_10012A408, &qword_100109198);
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  v8 = type metadata accessor for StoredPhoto();
  v4[28] = v8;
  v4[29] = *(v8 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v4[32] = v9;
  v4[33] = *(v9 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();

  return _swift_task_switch(sub_100029470, 0, 0);
}

uint64_t sub_100029470()
{
  v1 = *(v0[14] + 80);
  v0[8] = v1;
  v0[39] = v1;

  FetchFaceRequest.id.getter();
  Face = FetchFaceRequest.day.getter();
  if (v3)
  {
    Face = static TimeUtilities.currentEpoch.getter();
  }

  v4 = Face;
  v5 = type metadata accessor for ShuffleDatabase();
  v0[40] = v5;
  v6 = sub_1000438BC(&qword_10012A478, &type metadata accessor for ShuffleDatabase, &protocol conformance descriptor for ShuffleDatabase);
  v0[41] = v6;
  v7 = swift_task_alloc();
  v0[42] = v7;
  *v7 = v0;
  v7[1] = sub_1000295A4;
  v8 = v0[38];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.query(id:day:)(v8, v4, v5, v6);
}

uint64_t sub_1000295A4(uint64_t a1)
{
  v3 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  if (v1)
  {
    (*(v3[33] + 8))(v3[38], v3[32]);

    v4 = sub_100043E78;
  }

  else
  {
    v5 = v3[38];
    v6 = v3[32];
    v7 = v3[33];
    v8 = *(v7 + 8);
    v3[45] = v8;
    v3[46] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v6);

    v4 = sub_100029704;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100029704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[43];
  if (!*(v4 + 2))
  {
    FetchFaceRequest.id.getter();
    type metadata accessor for CommunicationActor();
    v3[47] = static CommunicationActor.shared.getter();
    sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    v14 = sub_100029994;
    goto LABEL_9;
  }

  v3[51] = v4;
  v5 = *(v4 + 2);
  v3[52] = v5;
  if (!v5)
  {

    FetchFaceRequest.id.getter();
    v3[53] = type metadata accessor for CommunicationActor();
    v3[54] = static CommunicationActor.shared.getter();
    v3[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v15;
    v14 = sub_100029C34;
LABEL_9:
    v4 = v14;
    a2 = v11;
    a3 = v13;

    return _swift_task_switch(v4, a2, a3);
  }

  v6 = v3[29];
  v7 = v3[12];
  v3[56] = 0;
  if (!*(v4 + 2))
  {
    __break(1u);
    return _swift_task_switch(v4, a2, a3);
  }

  (*(v6 + 16))(v3[31], v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v3[28]);
  v16 = (v7 + *v7);
  v8 = swift_task_alloc();
  v3[57] = v8;
  *v8 = v3;
  v8[1] = sub_100029D40;
  v9 = v3[31];

  return v16(v9);
}

uint64_t sub_100029994()
{
  v1 = v0[14];

  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = sub_100057AFC(v0[37]);
    v4 = v0[45];
    v5 = v0[37];
    v6 = v0[32];
    if (v7)
    {
      v0[65] = *(*(v2 + 56) + 8 * v3);
      swift_endAccess();

      v4(v5, v6);
      v8 = sub_10002ADE8;
    }

    else
    {
      swift_endAccess();
      v4(v5, v6);
      v8 = sub_10002AFF8;
    }
  }

  else
  {
    v9 = v0[45];
    v10 = v0[37];
    v11 = v0[32];
    swift_endAccess();
    v9(v10, v11);
    v8 = sub_100043E88;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100029AC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[49] = a1;
  v4[50] = v1;

  (v3[45])(v4[36], v4[32]);
  if (v1)
  {

    v5 = sub_100043E18;
  }

  else
  {
    v5 = sub_10002A820;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100029C34()
{
  v1 = v0[14];

  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_100057AFC(v0[35]), (v4 & 1) != 0))
  {
    v5 = v0[45];
    v6 = v0[35];
    v7 = v0[32];
    v0[59] = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();

    v5(v6, v7);
    v8 = sub_100029E90;
  }

  else
  {
    v9 = v0[45];
    v10 = v0[35];
    v11 = v0[32];
    swift_endAccess();
    v9(v10, v11);
    v8 = sub_100043E9C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100029D40()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  (*(v2[29] + 8))(v2[31], v2[28]);
  if (v0)
  {

    v3 = sub_100043E14;
  }

  else
  {
    v3 = sub_10002A60C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100029E90(uint64_t a1)
{
  *(v1 + 480) = static CommunicationActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100029F24, v3, v2);
}

uint64_t sub_100029F24()
{

  dispatch thunk of BroadcastSequence.listen()();

  return _swift_task_switch(sub_100029F98, 0, 0);
}

uint64_t sub_100029F98()
{
  v0[9] = v0[28];
  v0[61] = swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[62] = v2;
  *v2 = v0;
  v2[1] = sub_10002A0B4;
  v3 = v0[25];
  v4 = v0[22];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 10, v3, AssociatedConformanceWitness);
}

uint64_t sub_10002A0B4()
{

  if (v0)
  {
    v1 = sub_100043E74;
  }

  else
  {
    v1 = sub_10002A1C4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10002A1C4()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[22];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(v0[26] + 8))(v0[27], v0[25]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[12];
    (*(v2 + 32))(v0[30], v3, v1);
    v9 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[63] = v7;
    *v7 = v0;
    v7[1] = sub_10002A40C;
    v8 = v0[30];

    return v9(v8);
  }
}

uint64_t sub_10002A40C()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_100043E20;
  }

  else
  {
    v2 = sub_10002A520;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002A520()
{
  (*(v0[29] + 8))(v0[30], v0[28]);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[62] = v2;
  *v2 = v0;
  v2[1] = sub_10002A0B4;
  v3 = v0[25];
  v4 = v0[22];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 10, v3, AssociatedConformanceWitness);
}

uint64_t sub_10002A60C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[56] + 1;
  if (v4 == v3[52])
  {

    FetchFaceRequest.id.getter();
    v3[53] = type metadata accessor for CommunicationActor();
    v3[54] = static CommunicationActor.shared.getter();
    v3[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    a1 = sub_100029C34;
    a2 = v5;
    a3 = v7;

    return _swift_task_switch(a1, a2, a3);
  }

  v3[56] = v4;
  v8 = v3[51];
  if (v4 >= *(v8 + 16))
  {
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v9 = v3[12];
  (*(v3[29] + 16))(v3[31], v8 + ((*(v3[29] + 80) + 32) & ~*(v3[29] + 80)) + *(v3[29] + 72) * v4, v3[28]);
  v13 = (v9 + *v9);
  v10 = swift_task_alloc();
  v3[57] = v10;
  *v10 = v3;
  v10[1] = sub_100029D40;
  v11 = v3[31];

  return v13(v11);
}

uint64_t sub_10002A820()
{
  v53 = v0;
  v1 = *(v0[49] + 16);

  v3 = sub_10002D644(v2);
  v5 = v4;

  if (v5)
  {

    v9 = v0[43];
  }

  else
  {

    if (static PhotosFaceIDDatabaseFix.hourValueLowerBound()() < v3)
    {
      v11 = v0[17];
      v10 = v0[18];
      v13 = v0[15];
      v12 = v0[16];
      static Log.session.getter();
      (*(v11 + 16))(v10, v13, v12);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v47 = v0[45];
        v16 = v0[34];
        v17 = v0[32];
        v48 = v0[20];
        v49 = v0[19];
        v50 = v0[21];
        v46 = v15;
        v18 = v0[17];
        v44 = v0[18];
        v45 = v0[16];
        v19 = swift_slowAlloc();
        v52[0] = swift_slowAlloc();
        *v19 = 136315906;
        *(v19 + 4) = sub_100102F80(0xD000000000000013, 0x80000001001070A0, v52);
        *(v19 + 12) = 2080;
        FetchFaceRequest.id.getter();
        sub_1000438BC(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v21;
        v47(v16, v17);
        (*(v18 + 8))(v44, v45);
        v23 = sub_100102F80(v20, v22, v52);

        *(v19 + 14) = v23;
        *(v19 + 22) = 2048;
        *(v19 + 24) = v3;
        *(v19 + 32) = 2048;
        *(v19 + 34) = static TimeUtilities.currentEpoch.getter();
        _os_log_impl(&_mh_execute_header, v14, v46, "%s: queryByDay(%s) returned photos for day %ld; current day = %ld", v19, 0x2Au);
        swift_arrayDestroy();

        (*(v48 + 8))(v50, v49);
      }

      else
      {
        v25 = v0[20];
        v24 = v0[21];
        v27 = v0[18];
        v26 = v0[19];
        v28 = v0[16];
        v29 = v0[17];

        (*(v29 + 8))(v27, v28);
        (*(v25 + 8))(v24, v26);
      }
    }

    v6 = static TimeUtilities.currentEpoch.getter();
    v30 = v6 - v3;
    if (__OFSUB__(v6, v3))
    {
      goto LABEL_24;
    }

    v31 = __OFSUB__(v30, 1);
    v32 = v30 - 1;
    if (v31)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v32 < 0)
    {
      v31 = __OFSUB__(0, v32);
      v32 = -v32;
      if (v31)
      {
        goto LABEL_29;
      }
    }

    if (!v1)
    {
      goto LABEL_26;
    }

    v33 = v32 % v1;
    v0[11] = v0[49];
    sub_10000560C(&qword_10012A410, &qword_1001091A0);
    sub_10000CC24(&qword_10012A418, &qword_10012A410, &qword_1001091A0, &protocol conformance descriptor for [A : B]);
    v34 = Sequence.sorted<A>(_:)();

    if ((v33 & 0x8000000000000000) != 0)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v33 >= *(v34 + 16))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return _swift_task_switch(v6, v7, v8);
    }

    v9 = *(v34 + 16 * v33 + 40);
  }

  v0[51] = v9;
  v35 = *(v9 + 16);
  v0[52] = v35;
  if (!v35)
  {

    FetchFaceRequest.id.getter();
    v0[53] = type metadata accessor for CommunicationActor();
    v0[54] = static CommunicationActor.shared.getter();
    v0[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v41 = dispatch thunk of Actor.unownedExecutor.getter();
    v43 = v42;
    v6 = sub_100029C34;
    v7 = v41;
    v8 = v43;

    return _swift_task_switch(v6, v7, v8);
  }

  v36 = v0[29];
  v37 = v0[12];
  v0[56] = 0;
  if (!*(v9 + 16))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  (*(v36 + 16))(v0[31], v9 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v0[28]);
  v51 = (v37 + *v37);
  v38 = swift_task_alloc();
  v0[57] = v38;
  *v38 = v0;
  v38[1] = sub_100029D40;
  v39 = v0[31];

  return v51(v39);
}

uint64_t sub_10002ADE8()
{

  v3 = v0[43];
  v0[51] = v3;
  v4 = *(v3 + 2);
  v0[52] = v4;
  if (!v4)
  {

    FetchFaceRequest.id.getter();
    v0[53] = type metadata accessor for CommunicationActor();
    v0[54] = static CommunicationActor.shared.getter();
    v0[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    v3 = sub_100029C34;
    v1 = v10;
    v2 = v12;

    return _swift_task_switch(v3, v1, v2);
  }

  v5 = v0[29];
  v6 = v0[12];
  v0[56] = 0;
  if (!*(v3 + 2))
  {
    __break(1u);
    return _swift_task_switch(v3, v1, v2);
  }

  (*(v5 + 16))(v0[31], v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v0[28]);
  v13 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[57] = v7;
  *v7 = v0;
  v7[1] = sub_100029D40;
  v8 = v0[31];

  return v13(v8);
}

uint64_t sub_10002AFF8(uint64_t a1)
{
  FetchFaceRequest.id.getter();
  v2 = swift_task_alloc();
  v1[48] = v2;
  *v2 = v1;
  v2[1] = sub_100029AC4;
  v3 = v1[40];
  v4 = v1[41];
  v5 = v1[36];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v5, v3, v4);
}

uint64_t sub_10002B0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v4[16] = FaceRequest;
  v4[17] = *(FaceRequest - 8);
  v4[18] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  sub_10000560C(&qword_10012A400, &qword_100109190);
  v4[22] = swift_task_alloc();
  v4[23] = sub_10000560C(&qword_10012A3F0, &qword_100109120);
  v4[24] = swift_task_alloc();
  v7 = sub_10000560C(&qword_10012A408, &qword_100109198);
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  v8 = type metadata accessor for StoredPhoto();
  v4[28] = v8;
  v4[29] = *(v8 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v4[32] = v9;
  v4[33] = *(v9 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();

  return _swift_task_switch(sub_10002B394, 0, 0);
}

uint64_t sub_10002B394()
{
  v1 = *(v0[14] + 80);
  v0[8] = v1;
  v0[39] = v1;

  FetchFaceRequest.id.getter();
  Face = FetchFaceRequest.day.getter();
  if (v3)
  {
    Face = static TimeUtilities.currentEpoch.getter();
  }

  v4 = Face;
  v5 = type metadata accessor for AlbumDatabase();
  v0[40] = v5;
  v6 = sub_1000438BC(&qword_10012A488, &type metadata accessor for AlbumDatabase, &protocol conformance descriptor for AlbumDatabase);
  v0[41] = v6;
  v7 = swift_task_alloc();
  v0[42] = v7;
  *v7 = v0;
  v7[1] = sub_10002B4C8;
  v8 = v0[38];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.query(id:day:)(v8, v4, v5, v6);
}

uint64_t sub_10002B4C8(uint64_t a1)
{
  v3 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  if (v1)
  {
    (*(v3[33] + 8))(v3[38], v3[32]);

    v4 = sub_10002B8B8;
  }

  else
  {
    v5 = v3[38];
    v6 = v3[32];
    v7 = v3[33];
    v8 = *(v7 + 8);
    v3[45] = v8;
    v3[46] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v6);

    v4 = sub_10002B628;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002B628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[43];
  if (!*(v4 + 2))
  {
    FetchFaceRequest.id.getter();
    type metadata accessor for CommunicationActor();
    v3[47] = static CommunicationActor.shared.getter();
    sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    v14 = sub_10002B9BC;
    goto LABEL_9;
  }

  v3[51] = v4;
  v5 = *(v4 + 2);
  v3[52] = v5;
  if (!v5)
  {

    FetchFaceRequest.id.getter();
    v3[53] = type metadata accessor for CommunicationActor();
    v3[54] = static CommunicationActor.shared.getter();
    v3[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v15;
    v14 = sub_10002BC5C;
LABEL_9:
    v4 = v14;
    a2 = v11;
    a3 = v13;

    return _swift_task_switch(v4, a2, a3);
  }

  v6 = v3[29];
  v7 = v3[12];
  v3[56] = 0;
  if (!*(v4 + 2))
  {
    __break(1u);
    return _swift_task_switch(v4, a2, a3);
  }

  (*(v6 + 16))(v3[31], v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v3[28]);
  v16 = (v7 + *v7);
  v8 = swift_task_alloc();
  v3[57] = v8;
  *v8 = v3;
  v8[1] = sub_10002BD68;
  v9 = v3[31];

  return v16(v9);
}

uint64_t sub_10002B8B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002B9BC()
{
  v1 = v0[14];

  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = sub_100057AFC(v0[37]);
    v4 = v0[45];
    v5 = v0[37];
    v6 = v0[32];
    if (v7)
    {
      v0[65] = *(*(v2 + 56) + 8 * v3);
      swift_endAccess();

      v4(v5, v6);
      v8 = sub_10002D388;
    }

    else
    {
      swift_endAccess();
      v4(v5, v6);
      v8 = sub_10002D598;
    }
  }

  else
  {
    v9 = v0[45];
    v10 = v0[37];
    v11 = v0[32];
    swift_endAccess();
    v9(v10, v11);
    v8 = sub_100043E8C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10002BAEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[49] = a1;
  v4[50] = v1;

  (v3[45])(v4[36], v4[32]);
  if (v1)
  {

    v5 = sub_10002D284;
  }

  else
  {
    v5 = sub_10002CCBC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10002BC5C()
{
  v1 = v0[14];

  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_100057AFC(v0[35]), (v4 & 1) != 0))
  {
    v5 = v0[45];
    v6 = v0[35];
    v7 = v0[32];
    v0[59] = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();

    v5(v6, v7);
    v8 = sub_10002BFB4;
  }

  else
  {
    v9 = v0[45];
    v10 = v0[35];
    v11 = v0[32];
    swift_endAccess();
    v9(v10, v11);
    v8 = sub_10002BEB8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10002BD68()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  (*(v2[29] + 8))(v2[31], v2[28]);
  if (v0)
  {

    v3 = sub_10002CBB8;
  }

  else
  {
    v3 = sub_10002C9A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002BEB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002BFB4(uint64_t a1)
{
  *(v1 + 480) = static CommunicationActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002C048, v3, v2);
}

uint64_t sub_10002C048()
{

  dispatch thunk of BroadcastSequence.listen()();

  return _swift_task_switch(sub_10002C0BC, 0, 0);
}

uint64_t sub_10002C0BC()
{
  v0[9] = v0[28];
  v0[61] = swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[62] = v2;
  *v2 = v0;
  v2[1] = sub_10002C1D8;
  v3 = v0[25];
  v4 = v0[22];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 10, v3, AssociatedConformanceWitness);
}

uint64_t sub_10002C1D8()
{

  if (v0)
  {
    v1 = sub_10002C530;
  }

  else
  {
    v1 = sub_10002C2E8;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10002C2E8()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[22];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(v0[26] + 8))(v0[27], v0[25]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[12];
    (*(v2 + 32))(v0[30], v3, v1);
    v9 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[63] = v7;
    *v7 = v0;
    v7[1] = sub_10002C65C;
    v8 = v0[30];

    return v9(v8);
  }
}

uint64_t sub_10002C530()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002C65C()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_10002C85C;
  }

  else
  {
    v2 = sub_10002C770;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002C770()
{
  (*(v0[29] + 8))(v0[30], v0[28]);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[62] = v2;
  *v2 = v0;
  v2[1] = sub_10002C1D8;
  v3 = v0[25];
  v4 = v0[22];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 10, v3, AssociatedConformanceWitness);
}

uint64_t sub_10002C85C()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[25];
  v6 = v0[26];

  (*(v2 + 8))(v1, v3);
  (*(v6 + 8))(v4, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10002C9A4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[56] + 1;
  if (v4 == v3[52])
  {

    FetchFaceRequest.id.getter();
    v3[53] = type metadata accessor for CommunicationActor();
    v3[54] = static CommunicationActor.shared.getter();
    v3[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    a1 = sub_10002BC5C;
    a2 = v5;
    a3 = v7;

    return _swift_task_switch(a1, a2, a3);
  }

  v3[56] = v4;
  v8 = v3[51];
  if (v4 >= *(v8 + 16))
  {
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v9 = v3[12];
  (*(v3[29] + 16))(v3[31], v8 + ((*(v3[29] + 80) + 32) & ~*(v3[29] + 80)) + *(v3[29] + 72) * v4, v3[28]);
  v13 = (v9 + *v9);
  v10 = swift_task_alloc();
  v3[57] = v10;
  *v10 = v3;
  v10[1] = sub_10002BD68;
  v11 = v3[31];

  return v13(v11);
}

uint64_t sub_10002CBB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002CCBC()
{
  v53 = v0;
  v1 = *(v0[49] + 16);

  v3 = sub_10002D644(v2);
  v5 = v4;

  if (v5)
  {

    v9 = v0[43];
  }

  else
  {

    if (static PhotosFaceIDDatabaseFix.hourValueLowerBound()() < v3)
    {
      v11 = v0[17];
      v10 = v0[18];
      v13 = v0[15];
      v12 = v0[16];
      static Log.session.getter();
      (*(v11 + 16))(v10, v13, v12);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v47 = v0[45];
        v16 = v0[34];
        v17 = v0[32];
        v48 = v0[20];
        v49 = v0[19];
        v50 = v0[21];
        v46 = v15;
        v18 = v0[17];
        v44 = v0[18];
        v45 = v0[16];
        v19 = swift_slowAlloc();
        v52[0] = swift_slowAlloc();
        *v19 = 136315906;
        *(v19 + 4) = sub_100102F80(0xD000000000000013, 0x80000001001070A0, v52);
        *(v19 + 12) = 2080;
        FetchFaceRequest.id.getter();
        sub_1000438BC(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v21;
        v47(v16, v17);
        (*(v18 + 8))(v44, v45);
        v23 = sub_100102F80(v20, v22, v52);

        *(v19 + 14) = v23;
        *(v19 + 22) = 2048;
        *(v19 + 24) = v3;
        *(v19 + 32) = 2048;
        *(v19 + 34) = static TimeUtilities.currentEpoch.getter();
        _os_log_impl(&_mh_execute_header, v14, v46, "%s: queryByDay(%s) returned photos for day %ld; current day = %ld", v19, 0x2Au);
        swift_arrayDestroy();

        (*(v48 + 8))(v50, v49);
      }

      else
      {
        v25 = v0[20];
        v24 = v0[21];
        v27 = v0[18];
        v26 = v0[19];
        v28 = v0[16];
        v29 = v0[17];

        (*(v29 + 8))(v27, v28);
        (*(v25 + 8))(v24, v26);
      }
    }

    v6 = static TimeUtilities.currentEpoch.getter();
    v30 = v6 - v3;
    if (__OFSUB__(v6, v3))
    {
      goto LABEL_24;
    }

    v31 = __OFSUB__(v30, 1);
    v32 = v30 - 1;
    if (v31)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v32 < 0)
    {
      v31 = __OFSUB__(0, v32);
      v32 = -v32;
      if (v31)
      {
        goto LABEL_29;
      }
    }

    if (!v1)
    {
      goto LABEL_26;
    }

    v33 = v32 % v1;
    v0[11] = v0[49];
    sub_10000560C(&qword_10012A410, &qword_1001091A0);
    sub_10000CC24(&qword_10012A418, &qword_10012A410, &qword_1001091A0, &protocol conformance descriptor for [A : B]);
    v34 = Sequence.sorted<A>(_:)();

    if ((v33 & 0x8000000000000000) != 0)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v33 >= *(v34 + 16))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return _swift_task_switch(v6, v7, v8);
    }

    v9 = *(v34 + 16 * v33 + 40);
  }

  v0[51] = v9;
  v35 = *(v9 + 16);
  v0[52] = v35;
  if (!v35)
  {

    FetchFaceRequest.id.getter();
    v0[53] = type metadata accessor for CommunicationActor();
    v0[54] = static CommunicationActor.shared.getter();
    v0[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v41 = dispatch thunk of Actor.unownedExecutor.getter();
    v43 = v42;
    v6 = sub_10002BC5C;
    v7 = v41;
    v8 = v43;

    return _swift_task_switch(v6, v7, v8);
  }

  v36 = v0[29];
  v37 = v0[12];
  v0[56] = 0;
  if (!*(v9 + 16))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  (*(v36 + 16))(v0[31], v9 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v0[28]);
  v51 = (v37 + *v37);
  v38 = swift_task_alloc();
  v0[57] = v38;
  *v38 = v0;
  v38[1] = sub_10002BD68;
  v39 = v0[31];

  return v51(v39);
}

uint64_t sub_10002D284()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002D388()
{

  v3 = v0[43];
  v0[51] = v3;
  v4 = *(v3 + 2);
  v0[52] = v4;
  if (!v4)
  {

    FetchFaceRequest.id.getter();
    v0[53] = type metadata accessor for CommunicationActor();
    v0[54] = static CommunicationActor.shared.getter();
    v0[55] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    v3 = sub_10002BC5C;
    v1 = v10;
    v2 = v12;

    return _swift_task_switch(v3, v1, v2);
  }

  v5 = v0[29];
  v6 = v0[12];
  v0[56] = 0;
  if (!*(v3 + 2))
  {
    __break(1u);
    return _swift_task_switch(v3, v1, v2);
  }

  (*(v5 + 16))(v0[31], v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v0[28]);
  v13 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[57] = v7;
  *v7 = v0;
  v7[1] = sub_10002BD68;
  v8 = v0[31];

  return v13(v8);
}

uint64_t sub_10002D598(uint64_t a1)
{
  FetchFaceRequest.id.getter();
  v2 = swift_task_alloc();
  v1[48] = v2;
  *v2 = v1;
  v2[1] = sub_10002BAEC;
  v3 = v1[40];
  v4 = v1[41];
  v5 = v1[36];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v5, v3, v4);
}

uint64_t sub_10002D644(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 48);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (result <= v16)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(a1 + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_10002D750()
{
  v1[11] = v0;
  v2 = type metadata accessor for Logger();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = type metadata accessor for CommunicationActor();
  v1[16] = static CommunicationActor.shared.getter();
  v1[17] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v4;
  v1[19] = v3;

  return _swift_task_switch(sub_10002D87C, v4, v3);
}

uint64_t sub_10002D87C()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  *(v0 + 312) = v2;
  sub_100103EAC(v2);
  *(v0 + 160) = *(v1 + 120);
  *(v0 + 168) = static CommunicationActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 176) = v4;
  *(v0 + 184) = v3;

  return _swift_task_switch(sub_10002D928, v4, v3);
}

uint64_t sub_10002D928()
{
  v1 = sub_1000865F0();
  v0[24] = v1;
  if (v1)
  {
    swift_beginAccess();
    v2 = swift_task_alloc();
    v0[25] = v2;
    *v2 = v0;
    v2[1] = sub_10002DA24;

    return sub_100041074();
  }

  else
  {

    v4 = v0[18];
    v5 = v0[19];

    return _swift_task_switch(sub_100043E68, v4, v5);
  }
}

uint64_t sub_10002DA24(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  *(*v1 + 313) = a1;

  swift_endAccess();

  v4 = *(v2 + 184);
  v5 = *(v2 + 176);

  return _swift_task_switch(sub_10002DB74, v5, v4);
}

uint64_t sub_10002DB74()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return _swift_task_switch(sub_10002DBD8, v1, v2);
}

uint64_t sub_10002DBD8(uint64_t a1)
{
  v1[26] = static CommunicationActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[27] = v3;
  v1[28] = v2;

  return _swift_task_switch(sub_10002DC6C, v3, v2);
}

uint64_t sub_10002DC6C()
{
  v1 = sub_1000865F0();
  v0[29] = v1;
  if (v1)
  {
    swift_beginAccess();
    v2 = swift_task_alloc();
    v0[30] = v2;
    *v2 = v0;
    v2[1] = sub_10002DD68;

    return sub_100041074();
  }

  else
  {

    v4 = v0[18];
    v5 = v0[19];

    return _swift_task_switch(sub_100043E68, v4, v5);
  }
}

uint64_t sub_10002DD68(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  *(*v1 + 314) = a1;

  swift_endAccess();

  v4 = *(v2 + 224);
  v5 = *(v2 + 216);

  return _swift_task_switch(sub_10002DEB8, v5, v4);
}

uint64_t sub_10002DEB8()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return _swift_task_switch(sub_10002DF1C, v1, v2);
}

uint64_t sub_10002DF1C(uint64_t a1)
{
  v1[31] = static CommunicationActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[32] = v3;
  v1[33] = v2;

  return _swift_task_switch(sub_10002DFB0, v3, v2);
}

uint64_t sub_10002DFB0()
{
  v1 = sub_1000865F0();
  v0[34] = v1;
  if (v1)
  {
    swift_beginAccess();
    v2 = swift_task_alloc();
    v0[35] = v2;
    *v2 = v0;
    v2[1] = sub_10002E0AC;

    return sub_100041074();
  }

  else
  {

    v4 = v0[18];
    v5 = v0[19];

    return _swift_task_switch(sub_100043E68, v4, v5);
  }
}

uint64_t sub_10002E0AC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  *(*v1 + 315) = a1;

  swift_endAccess();

  v4 = *(v2 + 264);
  v5 = *(v2 + 256);

  return _swift_task_switch(sub_10002E1FC, v5, v4);
}

uint64_t sub_10002E1FC()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return _swift_task_switch(sub_10002E260, v1, v2);
}

uint64_t sub_10002E260(uint64_t a1)
{
  if (*(v1 + 313) == 1 && *(v1 + 314) == 1 && *(v1 + 315) == 1)
  {
    static Log.session.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Device is ready for a sync. Notifying it of the new data.", v4, 2u);
    }

    v5 = *(v1 + 112);
    v6 = *(v1 + 96);
    v7 = *(v1 + 104);
    v8 = *(v1 + 88);

    (*(v7 + 8))(v5, v6);
    *(v1 + 288) = *(v8 + 96);
    *(v1 + 296) = static CommunicationActor.shared.getter();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10002E418, v10, v9);
  }

  else
  {

    v11 = *(v1 + 8);

    return v11();
  }
}

uint64_t sub_10002E418()
{
  v1 = *(v0 + 312);

  sub_100012994(0x3010200u >> (8 * v1), 0, 0xC000000000000000);
  *(v0 + 304) = 0;
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  return _swift_task_switch(sub_100043E68, v2, v3);
}

uint64_t sub_10002E4C4()
{
  v1[11] = v0;
  v2 = type metadata accessor for Logger();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = type metadata accessor for CommunicationActor();
  v1[16] = static CommunicationActor.shared.getter();
  v1[17] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v4;
  v1[19] = v3;

  return _swift_task_switch(sub_10002E5F0, v4, v3);
}

uint64_t sub_10002E5F0()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  *(v0 + 312) = v2;
  sub_100103EAC(v2);
  *(v0 + 160) = *(v1 + 120);
  *(v0 + 168) = static CommunicationActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 176) = v4;
  *(v0 + 184) = v3;

  return _swift_task_switch(sub_10002E69C, v4, v3);
}

uint64_t sub_10002E69C()
{
  v1 = sub_1000865F0();
  v0[24] = v1;
  if (v1)
  {
    swift_beginAccess();
    v2 = swift_task_alloc();
    v0[25] = v2;
    *v2 = v0;
    v2[1] = sub_10002E798;

    return sub_100041074();
  }

  else
  {

    v4 = v0[18];
    v5 = v0[19];

    return _swift_task_switch(sub_100043E68, v4, v5);
  }
}

uint64_t sub_10002E798(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  *(*v1 + 313) = a1;

  swift_endAccess();

  v4 = *(v2 + 184);
  v5 = *(v2 + 176);

  return _swift_task_switch(sub_10002E8E8, v5, v4);
}

uint64_t sub_10002E8E8()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return _swift_task_switch(sub_10002E94C, v1, v2);
}

uint64_t sub_10002E94C(uint64_t a1)
{
  v1[26] = static CommunicationActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[27] = v3;
  v1[28] = v2;

  return _swift_task_switch(sub_10002E9E0, v3, v2);
}

uint64_t sub_10002E9E0()
{
  v1 = sub_1000865F0();
  v0[29] = v1;
  if (v1)
  {
    swift_beginAccess();
    v2 = swift_task_alloc();
    v0[30] = v2;
    *v2 = v0;
    v2[1] = sub_10002EADC;

    return sub_100041074();
  }

  else
  {

    v4 = v0[18];
    v5 = v0[19];

    return _swift_task_switch(sub_100043E68, v4, v5);
  }
}

uint64_t sub_10002EADC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  *(*v1 + 314) = a1;

  swift_endAccess();

  v4 = *(v2 + 224);
  v5 = *(v2 + 216);

  return _swift_task_switch(sub_10002DEB8, v5, v4);
}

uint64_t sub_10002EC2C()
{
  v1[11] = v0;
  v2 = type metadata accessor for Logger();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = type metadata accessor for CommunicationActor();
  v1[16] = static CommunicationActor.shared.getter();
  v1[17] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v4;
  v1[19] = v3;

  return _swift_task_switch(sub_10002ED58, v4, v3);
}

uint64_t sub_10002ED58()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  *(v0 + 312) = v2;
  sub_100103EAC(v2);
  *(v0 + 160) = *(v1 + 120);
  *(v0 + 168) = static CommunicationActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 176) = v4;
  *(v0 + 184) = v3;

  return _swift_task_switch(sub_10002EE04, v4, v3);
}

uint64_t sub_10002EE04()
{
  v1 = sub_1000865F0();
  v0[24] = v1;
  if (v1)
  {
    swift_beginAccess();
    v2 = swift_task_alloc();
    v0[25] = v2;
    *v2 = v0;
    v2[1] = sub_10002EF00;

    return sub_100041074();
  }

  else
  {

    v4 = v0[18];
    v5 = v0[19];

    return _swift_task_switch(sub_100043E68, v4, v5);
  }
}

uint64_t sub_10002EF00(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  *(*v1 + 313) = a1;

  swift_endAccess();

  v4 = *(v2 + 184);
  v5 = *(v2 + 176);

  return _swift_task_switch(sub_10002F050, v5, v4);
}

uint64_t sub_10002F050()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return _swift_task_switch(sub_10002F0B4, v1, v2);
}

uint64_t sub_10002F0B4(uint64_t a1)
{
  v1[26] = static CommunicationActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[27] = v3;
  v1[28] = v2;

  return _swift_task_switch(sub_10002F148, v3, v2);
}

uint64_t sub_10002F148()
{
  v1 = sub_1000865F0();
  v0[29] = v1;
  if (v1)
  {
    swift_beginAccess();
    v2 = swift_task_alloc();
    v0[30] = v2;
    *v2 = v0;
    v2[1] = sub_10002F244;

    return sub_100041074();
  }

  else
  {

    v4 = v0[18];
    v5 = v0[19];

    return _swift_task_switch(sub_100043E68, v4, v5);
  }
}

uint64_t sub_10002F244(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  *(*v1 + 314) = a1;

  swift_endAccess();

  v4 = *(v2 + 224);
  v5 = *(v2 + 216);

  return _swift_task_switch(sub_10002DEB8, v5, v4);
}

uint64_t sub_10002F394()
{
  v1[11] = v0;
  v2 = type metadata accessor for Logger();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = type metadata accessor for CommunicationActor();
  v1[16] = static CommunicationActor.shared.getter();
  v1[17] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v4;
  v1[19] = v3;

  return _swift_task_switch(sub_10002F4C0, v4, v3);
}

uint64_t sub_10002F4C0()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  *(v0 + 312) = v2;
  sub_100103EAC(v2);
  *(v0 + 160) = *(v1 + 120);
  *(v0 + 168) = static CommunicationActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 176) = v4;
  *(v0 + 184) = v3;

  return _swift_task_switch(sub_10002F56C, v4, v3);
}

uint64_t sub_10002F56C()
{
  v1 = sub_1000865F0();
  v0[24] = v1;
  if (v1)
  {
    swift_beginAccess();
    v2 = swift_task_alloc();
    v0[25] = v2;
    *v2 = v0;
    v2[1] = sub_10002F668;

    return sub_100041074();
  }

  else
  {

    v4 = v0[18];
    v5 = v0[19];

    return _swift_task_switch(sub_10002FCF0, v4, v5);
  }
}

uint64_t sub_10002F668(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  *(*v1 + 313) = a1;

  swift_endAccess();

  v4 = *(v2 + 184);
  v5 = *(v2 + 176);

  return _swift_task_switch(sub_10002F7B8, v5, v4);
}

uint64_t sub_10002F7B8()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return _swift_task_switch(sub_10002F81C, v1, v2);
}

uint64_t sub_10002F81C(uint64_t a1)
{
  v1[26] = static CommunicationActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[27] = v3;
  v1[28] = v2;

  return _swift_task_switch(sub_10002F8B0, v3, v2);
}

uint64_t sub_10002F8B0()
{
  v1 = sub_1000865F0();
  v0[29] = v1;
  if (v1)
  {
    swift_beginAccess();
    v2 = swift_task_alloc();
    v0[30] = v2;
    *v2 = v0;
    v2[1] = sub_10002F9AC;

    return sub_100041074();
  }

  else
  {

    v4 = v0[18];
    v5 = v0[19];

    return _swift_task_switch(sub_100043E68, v4, v5);
  }
}

uint64_t sub_10002F9AC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  *(*v1 + 314) = a1;

  swift_endAccess();

  v4 = *(v2 + 224);
  v5 = *(v2 + 216);

  return _swift_task_switch(sub_10002FAFC, v5, v4);
}

uint64_t sub_10002FAFC()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return _swift_task_switch(sub_10002FB60, v1, v2);
}

uint64_t sub_10002FB60(uint64_t a1)
{
  v1[31] = static CommunicationActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[32] = v3;
  v1[33] = v2;

  return _swift_task_switch(sub_10002FBF4, v3, v2);
}

uint64_t sub_10002FBF4()
{
  v1 = sub_1000865F0();
  v0[34] = v1;
  if (v1)
  {
    swift_beginAccess();
    v2 = swift_task_alloc();
    v0[35] = v2;
    *v2 = v0;
    v2[1] = sub_10002FD5C;

    return sub_100041074();
  }

  else
  {

    v4 = v0[18];
    v5 = v0[19];

    return _swift_task_switch(sub_100043E68, v4, v5);
  }
}

uint64_t sub_10002FCF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002FD5C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  *(*v1 + 315) = a1;

  swift_endAccess();

  v4 = *(v2 + 264);
  v5 = *(v2 + 256);

  return _swift_task_switch(sub_10002FEAC, v5, v4);
}

uint64_t sub_10002FEAC()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return _swift_task_switch(sub_10002FF10, v1, v2);
}

uint64_t sub_10002FF10(uint64_t a1)
{
  if (*(v1 + 313) == 1 && *(v1 + 314) == 1 && *(v1 + 315) == 1)
  {
    static Log.session.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Device is ready for a sync. Notifying it of the new data.", v4, 2u);
    }

    v5 = *(v1 + 112);
    v6 = *(v1 + 96);
    v7 = *(v1 + 104);
    v8 = *(v1 + 88);

    (*(v7 + 8))(v5, v6);
    *(v1 + 288) = *(v8 + 96);
    *(v1 + 296) = static CommunicationActor.shared.getter();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1000300C8, v10, v9);
  }

  else
  {

    v11 = *(v1 + 8);

    return v11();
  }
}

uint64_t sub_1000300C8()
{
  v1 = *(v0 + 312);

  sub_100012994(0x3010200u >> (8 * v1), 0, 0xC000000000000000);
  *(v0 + 304) = 0;
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  return _swift_task_switch(sub_100043E68, v2, v3);
}

uint64_t sub_100030174()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000301E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a8;
  v8[19] = v18;
  v8[16] = a4;
  v8[17] = a5;
  v10 = type metadata accessor for UUID();
  v8[20] = v10;
  v8[21] = *(v10 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v11 = type metadata accessor for ShuffleID();
  v8[24] = v11;
  v8[25] = *(v11 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v8[28] = v12;
  v8[29] = *(v12 - 8);
  v8[30] = swift_task_alloc();
  v13 = type metadata accessor for StoredPhoto();
  v8[31] = v13;
  v8[32] = *(v13 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  sub_10000560C(&qword_10012A420, &qword_1001091A8);
  v8[35] = swift_task_alloc();
  v8[36] = type metadata accessor for CommunicationActor();
  v8[37] = static CommunicationActor.shared.getter();
  v16 = (a6 + *a6);
  v14 = swift_task_alloc();
  v8[38] = v14;
  *v14 = v8;
  v14[1] = sub_1000304D8;

  return v16(v8 + 2);
}

uint64_t sub_1000304D8()
{
  v2 = *v1;
  v2[39] = v0;

  v2[40] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[41] = v4;
  v2[42] = v3;
  if (v0)
  {
    v5 = sub_10003084C;
  }

  else
  {
    v5 = sub_100030678;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100030678()
{
  v1 = v0[5];
  v2 = sub_10000C3CC(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000C1AC(v0 + 7);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v5 = v0[40];
  v6 = static CommunicationActor.shared.getter();
  v0[43] = v6;
  v7 = v0[10];
  v8 = v0[11];
  sub_10000C410((v0 + 7), v7);
  v9 = swift_task_alloc();
  v0[44] = v9;
  *v9 = v0;
  v9[1] = sub_100030984;
  v10 = v0[35];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v10, v6, v5, v0 + 15, v7, v8);
}

uint64_t sub_10003084C()
{

  swift_errorRetain();
  dispatch thunk of BroadcastSequence.finish(throwing:)();

  v1 = *(v0 + 136);
  swift_beginAccess();
  sub_100041774(v1);
  swift_endAccess();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100030984()
{
  v2 = *v1;

  v3 = *(v2 + 328);
  v4 = *(v2 + 336);
  if (v0)
  {
    v5 = sub_100031274;
  }

  else
  {
    v5 = sub_100030AA4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100030AA4()
{
  v77 = v0;
  v1 = v0[35];
  v2 = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {

    sub_10000C304(v0 + 7);
    dispatch thunk of BroadcastSequence.finish(throwing:)();
    sub_10000C304(v0 + 2);
    v3 = v0[17];
    swift_beginAccess();
    sub_100041774(v3);
    swift_endAccess();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[33];
    v6 = v0[34];
    v8 = v0[31];
    v9 = v0[32];
    v74 = v0[27];
    v10 = v0[25];
    v73 = v0[24];
    v11 = v0[18];
    v12 = *v1;
    v0[45] = *v1;
    v13 = *(v2 + 48);
    v14 = v12;
    (*(v9 + 32))(v6, &v1[v13], v8);
    static Log.default.getter();
    (*(v9 + 16))(v7, v6, v8);
    v72 = *(v10 + 16);
    v72(v74, v11, v73);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[32];
    v19 = v0[33];
    v20 = v0[30];
    v75 = v0[31];
    v22 = v0[28];
    v21 = v0[29];
    v23 = v0[27];
    if (v17)
    {
      v64 = v0[26];
      v65 = v0[25];
      v63 = v0[24];
      v69 = v0[29];
      v70 = v0[30];
      v24 = v0[23];
      v71 = v14;
      v25 = v0[20];
      v26 = v0[21];
      v68 = v0[28];
      v27 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v27 = 136315650;
      log = v15;
      StoredPhoto.localIdentifier.getter();
      sub_1000438BC(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v16;
      v30 = v29;
      (*(v26 + 8))(v24, v25);
      v31 = *(v18 + 8);
      v31(v19, v75);
      v32 = sub_100102F80(v28, v30, &v76);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      v72(v64, v23, v63);
      v33 = *(v65 + 8);
      v34 = v23;
      v35 = v31;
      v33(v34, v63);
      sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      v33(v64, v63);
      v39 = sub_100102F80(v36, v38, &v76);

      *(v27 + 14) = v39;
      *(v27 + 22) = 2080;
      v14 = v71;
      v40 = Array.description.getter();
      v42 = sub_100102F80(v40, v41, &v76);

      *(v27 + 24) = v42;
      _os_log_impl(&_mh_execute_header, log, v66, "Relating photo %s for %s on days %s", v27, 0x20u);
      swift_arrayDestroy();

      v43 = (*(v69 + 8))(v70, v68);
    }

    else
    {
      (*(v0[25] + 8))(v0[27], v0[24]);

      v35 = *(v18 + 8);
      v35(v19, v75);
      v43 = (*(v21 + 8))(v20, v22);
    }

    v0[46] = v35;
    v48 = *(v14 + 16);
    v0[47] = v48;
    if (v48)
    {
      v0[48] = 0;
      v49 = v0[45];
      if (*(v49 + 16))
      {
        v50 = *(v49 + 32);
        sub_10000560C(&qword_10012A430, &qword_1001093D0);
        v51 = swift_allocObject();
        v0[49] = v51;
        *(v51 + 16) = xmmword_1001089C0;
        StoredPhoto.localIdentifier.getter();
        sub_1000438BC(&qword_10012A2B0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
        dispatch thunk of PhotosFaceID.id.getter();
        v52 = type metadata accessor for GalleryDatabase();
        v53 = sub_1000438BC(&qword_10012A438, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
        v54 = swift_task_alloc();
        v0[50] = v54;
        *v54 = v0;
        v54[1] = sub_1000313BC;
        v44 = v0[22];
        v43 = v51;
        v45 = v50;
        v46 = v52;
        v47 = v53;
      }

      else
      {
        __break(1u);
      }

      return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(v43, v44, v45, v46, v47);
    }

    else
    {
      v55 = v0[34];
      v56 = v0[31];

      dispatch thunk of BroadcastSequence.yield(_:)();
      v35(v55, v56);
      v57 = v0[40];
      v58 = static CommunicationActor.shared.getter();
      v0[43] = v58;
      v59 = v0[10];
      v60 = v0[11];
      sub_10000C410((v0 + 7), v59);
      v61 = swift_task_alloc();
      v0[44] = v61;
      *v61 = v0;
      v61[1] = sub_100030984;
      v62 = v0[35];

      return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v62, v58, v57, v0 + 15, v59, v60);
    }
  }
}

uint64_t sub_100031274()
{

  sub_10000C304(v0 + 7);
  sub_10000C304(v0 + 2);
  swift_errorRetain();
  dispatch thunk of BroadcastSequence.finish(throwing:)();

  v1 = v0[17];
  swift_beginAccess();
  sub_100041774(v1);
  swift_endAccess();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000313BC()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  (*(v2[21] + 8))(v2[22], v2[20]);

  if (v0)
  {

    v3 = v2[41];
    v4 = v2[42];
    v5 = sub_100031804;
  }

  else
  {
    v3 = v2[41];
    v4 = v2[42];
    v5 = sub_100031538;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100031538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5[48] + 1;
  if (v6 == v5[47])
  {
    v7 = v5[46];
    v8 = v5[34];
    v9 = v5[31];

    dispatch thunk of BroadcastSequence.yield(_:)();
    v7(v8, v9);
    v10 = v5[40];
    v11 = static CommunicationActor.shared.getter();
    v5[43] = v11;
    v12 = v5[10];
    v13 = v5[11];
    sub_10000C410((v5 + 7), v12);
    v14 = swift_task_alloc();
    v5[44] = v14;
    *v14 = v5;
    v14[1] = sub_100030984;
    v15 = v5[35];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v15, v11, v10, v5 + 15, v12, v13);
  }

  else
  {
    v5[48] = v6;
    v16 = v5[45];
    if (v6 >= *(v16 + 16))
    {
      __break(1u);
    }

    else
    {
      v17 = *(v16 + 8 * v6 + 32);
      sub_10000560C(&qword_10012A430, &qword_1001093D0);
      v18 = swift_allocObject();
      v5[49] = v18;
      *(v18 + 16) = xmmword_1001089C0;
      StoredPhoto.localIdentifier.getter();
      sub_1000438BC(&qword_10012A2B0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
      dispatch thunk of PhotosFaceID.id.getter();
      v19 = type metadata accessor for GalleryDatabase();
      v20 = sub_1000438BC(&qword_10012A438, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
      v21 = swift_task_alloc();
      v5[50] = v21;
      *v21 = v5;
      v21[1] = sub_1000313BC;
      a2 = v5[22];
      a1 = v18;
      a3 = v17;
      a4 = v19;
      a5 = v20;
    }

    return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_100031804()
{
  v1 = v0[46];
  v2 = v0[34];
  v3 = v0[31];

  v1(v2, v3);
  sub_10000C304(v0 + 7);
  sub_10000C304(v0 + 2);
  swift_errorRetain();
  dispatch thunk of BroadcastSequence.finish(throwing:)();

  v4 = v0[17];
  swift_beginAccess();
  sub_100041774(v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100031970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v18;
  v8[13] = a4;
  v8[14] = a5;
  v10 = type metadata accessor for UUID();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v11 = type metadata accessor for DailyID();
  v8[21] = v11;
  v8[22] = *(v11 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v8[25] = v12;
  v8[26] = *(v12 - 8);
  v8[27] = swift_task_alloc();
  v13 = type metadata accessor for StoredPhoto();
  v8[28] = v13;
  v8[29] = *(v13 - 8);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  sub_10000560C(&qword_10012A420, &qword_1001091A8);
  v8[32] = swift_task_alloc();
  v8[33] = type metadata accessor for CommunicationActor();
  v8[34] = static CommunicationActor.shared.getter();
  v16 = (a6 + *a6);
  v14 = swift_task_alloc();
  v8[35] = v14;
  *v14 = v8;
  v14[1] = sub_100031C64;

  return v16(v8 + 2);
}

uint64_t sub_100031C64()
{
  v2 = *v1;
  v2[36] = v0;

  v2[37] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[38] = v4;
  v2[39] = v3;
  if (v0)
  {
    v5 = sub_100043E98;
  }

  else
  {
    v5 = sub_100031E04;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100031E04()
{
  v1 = v0[5];
  v2 = sub_10000C3CC(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000C1AC(v0 + 7);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v5 = v0[37];
  v6 = static CommunicationActor.shared.getter();
  v0[40] = v6;
  v7 = v0[10];
  v8 = v0[11];
  sub_10000C410((v0 + 7), v7);
  v9 = swift_task_alloc();
  v0[41] = v9;
  *v9 = v0;
  v9[1] = sub_100031FD8;
  v10 = v0[32];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v10, v6, v5, v0 + 12, v7, v8);
}

uint64_t sub_100031FD8()
{
  v2 = *v1;

  v3 = *(v2 + 304);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_100043E30;
  }

  else
  {
    v5 = sub_1000320F8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000320F8()
{
  v76 = v0;
  v1 = v0[32];
  v2 = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {

    sub_10000C304(v0 + 7);
    dispatch thunk of BroadcastSequence.finish(throwing:)();
    sub_10000C304(v0 + 2);
    sub_1000356EC(v0[13], v0[14]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[30];
    v5 = v0[31];
    v7 = v0[28];
    v8 = v0[29];
    v73 = v0[24];
    v9 = v0[22];
    v72 = v0[21];
    v10 = v0[15];
    v11 = *v1;
    v0[42] = *v1;
    v12 = *(v2 + 48);
    v13 = v11;
    (*(v8 + 32))(v5, &v1[v12], v7);
    static Log.default.getter();
    (*(v8 + 16))(v6, v5, v7);
    v71 = *(v9 + 16);
    v71(v73, v10, v72);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[29];
    v18 = v0[30];
    v19 = v0[27];
    v74 = v0[28];
    v21 = v0[25];
    v20 = v0[26];
    v22 = v0[24];
    if (v16)
    {
      v63 = v0[23];
      v64 = v0[22];
      v62 = v0[21];
      v68 = v0[26];
      v69 = v0[27];
      v23 = v0[20];
      v70 = v13;
      v24 = v0[17];
      v25 = v0[18];
      v67 = v0[25];
      v26 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v26 = 136315650;
      log = v14;
      StoredPhoto.localIdentifier.getter();
      sub_1000438BC(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v15;
      v29 = v28;
      (*(v25 + 8))(v23, v24);
      v30 = *(v17 + 8);
      v30(v18, v74);
      v31 = sub_100102F80(v27, v29, &v75);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v71(v63, v22, v62);
      v32 = *(v64 + 8);
      v33 = v22;
      v34 = v30;
      v32(v33, v62);
      sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v32(v63, v62);
      v38 = sub_100102F80(v35, v37, &v75);

      *(v26 + 14) = v38;
      *(v26 + 22) = 2080;
      v13 = v70;
      v39 = Array.description.getter();
      v41 = sub_100102F80(v39, v40, &v75);

      *(v26 + 24) = v41;
      _os_log_impl(&_mh_execute_header, log, v65, "Relating photo %s for %s on days %s", v26, 0x20u);
      swift_arrayDestroy();

      v42 = (*(v68 + 8))(v69, v67);
    }

    else
    {
      (*(v0[22] + 8))(v0[24], v0[21]);

      v34 = *(v17 + 8);
      v34(v18, v74);
      v42 = (*(v20 + 8))(v19, v21);
    }

    v0[43] = v34;
    v47 = *(v13 + 16);
    v0[44] = v47;
    if (v47)
    {
      v0[45] = 0;
      v48 = v0[42];
      if (*(v48 + 16))
      {
        v49 = *(v48 + 32);
        sub_10000560C(&qword_10012A430, &qword_1001093D0);
        v50 = swift_allocObject();
        v0[46] = v50;
        *(v50 + 16) = xmmword_1001089C0;
        StoredPhoto.localIdentifier.getter();
        sub_1000438BC(&qword_10012A178, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
        dispatch thunk of PhotosFaceID.id.getter();
        v51 = type metadata accessor for DailyDatabase();
        v52 = sub_1000438BC(&qword_10012A470, &type metadata accessor for DailyDatabase, &protocol conformance descriptor for DailyDatabase);
        v53 = swift_task_alloc();
        v0[47] = v53;
        *v53 = v0;
        v53[1] = sub_100032894;
        v43 = v0[19];
        v42 = v50;
        v44 = v49;
        v45 = v51;
        v46 = v52;
      }

      else
      {
        __break(1u);
      }

      return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(v42, v43, v44, v45, v46);
    }

    else
    {
      v54 = v0[31];
      v55 = v0[28];

      dispatch thunk of BroadcastSequence.yield(_:)();
      v34(v54, v55);
      v56 = v0[37];
      v57 = static CommunicationActor.shared.getter();
      v0[40] = v57;
      v58 = v0[10];
      v59 = v0[11];
      sub_10000C410((v0 + 7), v58);
      v60 = swift_task_alloc();
      v0[41] = v60;
      *v60 = v0;
      v60[1] = sub_100031FD8;
      v61 = v0[32];

      return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v61, v57, v56, v0 + 12, v58, v59);
    }
  }
}

uint64_t sub_100032894()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  (*(v2[18] + 8))(v2[19], v2[17]);

  if (v0)
  {

    v3 = v2[38];
    v4 = v2[39];
    v5 = sub_100043E2C;
  }

  else
  {
    v3 = v2[38];
    v4 = v2[39];
    v5 = sub_100032A10;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100032A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5[45] + 1;
  if (v6 == v5[44])
  {
    v7 = v5[43];
    v8 = v5[31];
    v9 = v5[28];

    dispatch thunk of BroadcastSequence.yield(_:)();
    v7(v8, v9);
    v10 = v5[37];
    v11 = static CommunicationActor.shared.getter();
    v5[40] = v11;
    v12 = v5[10];
    v13 = v5[11];
    sub_10000C410((v5 + 7), v12);
    v14 = swift_task_alloc();
    v5[41] = v14;
    *v14 = v5;
    v14[1] = sub_100031FD8;
    v15 = v5[32];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v15, v11, v10, v5 + 12, v12, v13);
  }

  else
  {
    v5[45] = v6;
    v16 = v5[42];
    if (v6 >= *(v16 + 16))
    {
      __break(1u);
    }

    else
    {
      v17 = *(v16 + 8 * v6 + 32);
      sub_10000560C(&qword_10012A430, &qword_1001093D0);
      v18 = swift_allocObject();
      v5[46] = v18;
      *(v18 + 16) = xmmword_1001089C0;
      StoredPhoto.localIdentifier.getter();
      sub_1000438BC(&qword_10012A178, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
      dispatch thunk of PhotosFaceID.id.getter();
      v19 = type metadata accessor for DailyDatabase();
      v20 = sub_1000438BC(&qword_10012A470, &type metadata accessor for DailyDatabase, &protocol conformance descriptor for DailyDatabase);
      v21 = swift_task_alloc();
      v5[47] = v21;
      *v21 = v5;
      v21[1] = sub_100032894;
      a2 = v5[19];
      a1 = v18;
      a3 = v17;
      a4 = v19;
      a5 = v20;
    }

    return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_100032CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v18;
  v8[13] = a4;
  v8[14] = a5;
  v10 = type metadata accessor for UUID();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v11 = type metadata accessor for ShuffleID();
  v8[21] = v11;
  v8[22] = *(v11 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v8[25] = v12;
  v8[26] = *(v12 - 8);
  v8[27] = swift_task_alloc();
  v13 = type metadata accessor for StoredPhoto();
  v8[28] = v13;
  v8[29] = *(v13 - 8);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  sub_10000560C(&qword_10012A420, &qword_1001091A8);
  v8[32] = swift_task_alloc();
  v8[33] = type metadata accessor for CommunicationActor();
  v8[34] = static CommunicationActor.shared.getter();
  v16 = (a6 + *a6);
  v14 = swift_task_alloc();
  v8[35] = v14;
  *v14 = v8;
  v14[1] = sub_100032FD0;

  return v16(v8 + 2);
}

uint64_t sub_100032FD0()
{
  v2 = *v1;
  v2[36] = v0;

  v2[37] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[38] = v4;
  v2[39] = v3;
  if (v0)
  {
    v5 = sub_100043E98;
  }

  else
  {
    v5 = sub_100033170;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100033170()
{
  v1 = v0[5];
  v2 = sub_10000C3CC(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000C1AC(v0 + 7);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v5 = v0[37];
  v6 = static CommunicationActor.shared.getter();
  v0[40] = v6;
  v7 = v0[10];
  v8 = v0[11];
  sub_10000C410((v0 + 7), v7);
  v9 = swift_task_alloc();
  v0[41] = v9;
  *v9 = v0;
  v9[1] = sub_100033344;
  v10 = v0[32];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v10, v6, v5, v0 + 12, v7, v8);
}

uint64_t sub_100033344()
{
  v2 = *v1;

  v3 = *(v2 + 304);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_100043E30;
  }

  else
  {
    v5 = sub_100033464;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100033464()
{
  v76 = v0;
  v1 = v0[32];
  v2 = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {

    sub_10000C304(v0 + 7);
    dispatch thunk of BroadcastSequence.finish(throwing:)();
    sub_10000C304(v0 + 2);
    sub_1000356EC(v0[13], v0[14]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[30];
    v5 = v0[31];
    v7 = v0[28];
    v8 = v0[29];
    v73 = v0[24];
    v9 = v0[22];
    v72 = v0[21];
    v10 = v0[15];
    v11 = *v1;
    v0[42] = *v1;
    v12 = *(v2 + 48);
    v13 = v11;
    (*(v8 + 32))(v5, &v1[v12], v7);
    static Log.default.getter();
    (*(v8 + 16))(v6, v5, v7);
    v71 = *(v9 + 16);
    v71(v73, v10, v72);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[29];
    v18 = v0[30];
    v19 = v0[27];
    v74 = v0[28];
    v21 = v0[25];
    v20 = v0[26];
    v22 = v0[24];
    if (v16)
    {
      v63 = v0[23];
      v64 = v0[22];
      v62 = v0[21];
      v68 = v0[26];
      v69 = v0[27];
      v23 = v0[20];
      v70 = v13;
      v24 = v0[17];
      v25 = v0[18];
      v67 = v0[25];
      v26 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v26 = 136315650;
      log = v14;
      StoredPhoto.localIdentifier.getter();
      sub_1000438BC(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v15;
      v29 = v28;
      (*(v25 + 8))(v23, v24);
      v30 = *(v17 + 8);
      v30(v18, v74);
      v31 = sub_100102F80(v27, v29, &v75);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v71(v63, v22, v62);
      v32 = *(v64 + 8);
      v33 = v22;
      v34 = v30;
      v32(v33, v62);
      sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v32(v63, v62);
      v38 = sub_100102F80(v35, v37, &v75);

      *(v26 + 14) = v38;
      *(v26 + 22) = 2080;
      v13 = v70;
      v39 = Array.description.getter();
      v41 = sub_100102F80(v39, v40, &v75);

      *(v26 + 24) = v41;
      _os_log_impl(&_mh_execute_header, log, v65, "Relating photo %s for %s on days %s", v26, 0x20u);
      swift_arrayDestroy();

      v42 = (*(v68 + 8))(v69, v67);
    }

    else
    {
      (*(v0[22] + 8))(v0[24], v0[21]);

      v34 = *(v17 + 8);
      v34(v18, v74);
      v42 = (*(v20 + 8))(v19, v21);
    }

    v0[43] = v34;
    v47 = *(v13 + 16);
    v0[44] = v47;
    if (v47)
    {
      v0[45] = 0;
      v48 = v0[42];
      if (*(v48 + 16))
      {
        v49 = *(v48 + 32);
        sub_10000560C(&qword_10012A430, &qword_1001093D0);
        v50 = swift_allocObject();
        v0[46] = v50;
        *(v50 + 16) = xmmword_1001089C0;
        StoredPhoto.localIdentifier.getter();
        sub_1000438BC(&qword_10012A2B0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
        dispatch thunk of PhotosFaceID.id.getter();
        v51 = type metadata accessor for ShuffleDatabase();
        v52 = sub_1000438BC(&qword_10012A480, &type metadata accessor for ShuffleDatabase, &protocol conformance descriptor for ShuffleDatabase);
        v53 = swift_task_alloc();
        v0[47] = v53;
        *v53 = v0;
        v53[1] = sub_100033C00;
        v43 = v0[19];
        v42 = v50;
        v44 = v49;
        v45 = v51;
        v46 = v52;
      }

      else
      {
        __break(1u);
      }

      return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(v42, v43, v44, v45, v46);
    }

    else
    {
      v54 = v0[31];
      v55 = v0[28];

      dispatch thunk of BroadcastSequence.yield(_:)();
      v34(v54, v55);
      v56 = v0[37];
      v57 = static CommunicationActor.shared.getter();
      v0[40] = v57;
      v58 = v0[10];
      v59 = v0[11];
      sub_10000C410((v0 + 7), v58);
      v60 = swift_task_alloc();
      v0[41] = v60;
      *v60 = v0;
      v60[1] = sub_100033344;
      v61 = v0[32];

      return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v61, v57, v56, v0 + 12, v58, v59);
    }
  }
}

uint64_t sub_100033C00()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  (*(v2[18] + 8))(v2[19], v2[17]);

  if (v0)
  {

    v3 = v2[38];
    v4 = v2[39];
    v5 = sub_100043E2C;
  }

  else
  {
    v3 = v2[38];
    v4 = v2[39];
    v5 = sub_100033D7C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100033D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5[45] + 1;
  if (v6 == v5[44])
  {
    v7 = v5[43];
    v8 = v5[31];
    v9 = v5[28];

    dispatch thunk of BroadcastSequence.yield(_:)();
    v7(v8, v9);
    v10 = v5[37];
    v11 = static CommunicationActor.shared.getter();
    v5[40] = v11;
    v12 = v5[10];
    v13 = v5[11];
    sub_10000C410((v5 + 7), v12);
    v14 = swift_task_alloc();
    v5[41] = v14;
    *v14 = v5;
    v14[1] = sub_100033344;
    v15 = v5[32];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v15, v11, v10, v5 + 12, v12, v13);
  }

  else
  {
    v5[45] = v6;
    v16 = v5[42];
    if (v6 >= *(v16 + 16))
    {
      __break(1u);
    }

    else
    {
      v17 = *(v16 + 8 * v6 + 32);
      sub_10000560C(&qword_10012A430, &qword_1001093D0);
      v18 = swift_allocObject();
      v5[46] = v18;
      *(v18 + 16) = xmmword_1001089C0;
      StoredPhoto.localIdentifier.getter();
      sub_1000438BC(&qword_10012A2B0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
      dispatch thunk of PhotosFaceID.id.getter();
      v19 = type metadata accessor for ShuffleDatabase();
      v20 = sub_1000438BC(&qword_10012A480, &type metadata accessor for ShuffleDatabase, &protocol conformance descriptor for ShuffleDatabase);
      v21 = swift_task_alloc();
      v5[47] = v21;
      *v21 = v5;
      v21[1] = sub_100033C00;
      a2 = v5[19];
      a1 = v18;
      a3 = v17;
      a4 = v19;
      a5 = v20;
    }

    return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_100034048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v18;
  v8[13] = a4;
  v8[14] = a5;
  v10 = type metadata accessor for UUID();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v11 = type metadata accessor for AlbumID();
  v8[21] = v11;
  v8[22] = *(v11 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v8[25] = v12;
  v8[26] = *(v12 - 8);
  v8[27] = swift_task_alloc();
  v13 = type metadata accessor for StoredPhoto();
  v8[28] = v13;
  v8[29] = *(v13 - 8);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  sub_10000560C(&qword_10012A420, &qword_1001091A8);
  v8[32] = swift_task_alloc();
  v8[33] = type metadata accessor for CommunicationActor();
  v8[34] = static CommunicationActor.shared.getter();
  v16 = (a6 + *a6);
  v14 = swift_task_alloc();
  v8[35] = v14;
  *v14 = v8;
  v14[1] = sub_10003433C;

  return v16(v8 + 2);
}

uint64_t sub_10003433C()
{
  v2 = *v1;
  v2[36] = v0;

  v2[37] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[38] = v4;
  v2[39] = v3;
  if (v0)
  {
    v5 = sub_1000346B0;
  }

  else
  {
    v5 = sub_1000344DC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000344DC()
{
  v1 = v0[5];
  v2 = sub_10000C3CC(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000C1AC(v0 + 7);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v5 = v0[37];
  v6 = static CommunicationActor.shared.getter();
  v0[40] = v6;
  v7 = v0[10];
  v8 = v0[11];
  sub_10000C410((v0 + 7), v7);
  v9 = swift_task_alloc();
  v0[41] = v9;
  *v9 = v0;
  v9[1] = sub_1000347AC;
  v10 = v0[32];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v10, v6, v5, v0 + 12, v7, v8);
}

uint64_t sub_1000346B0()
{

  swift_errorRetain();
  dispatch thunk of BroadcastSequence.finish(throwing:)();

  sub_1000356EC(v0[13], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000347AC()
{
  v2 = *v1;

  v3 = *(v2 + 304);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_100035068;
  }

  else
  {
    v5 = sub_1000348CC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000348CC()
{
  v76 = v0;
  v1 = v0[32];
  v2 = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {

    sub_10000C304(v0 + 7);
    dispatch thunk of BroadcastSequence.finish(throwing:)();
    sub_10000C304(v0 + 2);
    sub_1000356EC(v0[13], v0[14]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[30];
    v5 = v0[31];
    v7 = v0[28];
    v8 = v0[29];
    v73 = v0[24];
    v9 = v0[22];
    v72 = v0[21];
    v10 = v0[15];
    v11 = *v1;
    v0[42] = *v1;
    v12 = *(v2 + 48);
    v13 = v11;
    (*(v8 + 32))(v5, &v1[v12], v7);
    static Log.default.getter();
    (*(v8 + 16))(v6, v5, v7);
    v71 = *(v9 + 16);
    v71(v73, v10, v72);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[29];
    v18 = v0[30];
    v19 = v0[27];
    v74 = v0[28];
    v21 = v0[25];
    v20 = v0[26];
    v22 = v0[24];
    if (v16)
    {
      v63 = v0[23];
      v64 = v0[22];
      v62 = v0[21];
      v68 = v0[26];
      v69 = v0[27];
      v23 = v0[20];
      v70 = v13;
      v24 = v0[17];
      v25 = v0[18];
      v67 = v0[25];
      v26 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v26 = 136315650;
      log = v14;
      StoredPhoto.localIdentifier.getter();
      sub_1000438BC(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v15;
      v29 = v28;
      (*(v25 + 8))(v23, v24);
      v30 = *(v17 + 8);
      v30(v18, v74);
      v31 = sub_100102F80(v27, v29, &v75);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v71(v63, v22, v62);
      v32 = *(v64 + 8);
      v33 = v22;
      v34 = v30;
      v32(v33, v62);
      sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v32(v63, v62);
      v38 = sub_100102F80(v35, v37, &v75);

      *(v26 + 14) = v38;
      *(v26 + 22) = 2080;
      v13 = v70;
      v39 = Array.description.getter();
      v41 = sub_100102F80(v39, v40, &v75);

      *(v26 + 24) = v41;
      _os_log_impl(&_mh_execute_header, log, v65, "Relating photo %s for %s on days %s", v26, 0x20u);
      swift_arrayDestroy();

      v42 = (*(v68 + 8))(v69, v67);
    }

    else
    {
      (*(v0[22] + 8))(v0[24], v0[21]);

      v34 = *(v17 + 8);
      v34(v18, v74);
      v42 = (*(v20 + 8))(v19, v21);
    }

    v0[43] = v34;
    v47 = *(v13 + 16);
    v0[44] = v47;
    if (v47)
    {
      v0[45] = 0;
      v48 = v0[42];
      if (*(v48 + 16))
      {
        v49 = *(v48 + 32);
        sub_10000560C(&qword_10012A430, &qword_1001093D0);
        v50 = swift_allocObject();
        v0[46] = v50;
        *(v50 + 16) = xmmword_1001089C0;
        StoredPhoto.localIdentifier.getter();
        sub_1000438BC(&qword_10012A048, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
        dispatch thunk of PhotosFaceID.id.getter();
        v51 = type metadata accessor for AlbumDatabase();
        v52 = sub_1000438BC(&qword_10012A490, &type metadata accessor for AlbumDatabase, &protocol conformance descriptor for AlbumDatabase);
        v53 = swift_task_alloc();
        v0[47] = v53;
        *v53 = v0;
        v53[1] = sub_100035174;
        v43 = v0[19];
        v42 = v50;
        v44 = v49;
        v45 = v51;
        v46 = v52;
      }

      else
      {
        __break(1u);
      }

      return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(v42, v43, v44, v45, v46);
    }

    else
    {
      v54 = v0[31];
      v55 = v0[28];

      dispatch thunk of BroadcastSequence.yield(_:)();
      v34(v54, v55);
      v56 = v0[37];
      v57 = static CommunicationActor.shared.getter();
      v0[40] = v57;
      v58 = v0[10];
      v59 = v0[11];
      sub_10000C410((v0 + 7), v58);
      v60 = swift_task_alloc();
      v0[41] = v60;
      *v60 = v0;
      v60[1] = sub_1000347AC;
      v61 = v0[32];

      return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v61, v57, v56, v0 + 12, v58, v59);
    }
  }
}

uint64_t sub_100035068()
{

  sub_10000C304(v0 + 7);
  sub_10000C304(v0 + 2);
  swift_errorRetain();
  dispatch thunk of BroadcastSequence.finish(throwing:)();

  sub_1000356EC(v0[13], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100035174()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  (*(v2[18] + 8))(v2[19], v2[17]);

  if (v0)
  {

    v3 = v2[38];
    v4 = v2[39];
    v5 = sub_1000355BC;
  }

  else
  {
    v3 = v2[38];
    v4 = v2[39];
    v5 = sub_1000352F0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000352F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5[45] + 1;
  if (v6 == v5[44])
  {
    v7 = v5[43];
    v8 = v5[31];
    v9 = v5[28];

    dispatch thunk of BroadcastSequence.yield(_:)();
    v7(v8, v9);
    v10 = v5[37];
    v11 = static CommunicationActor.shared.getter();
    v5[40] = v11;
    v12 = v5[10];
    v13 = v5[11];
    sub_10000C410((v5 + 7), v12);
    v14 = swift_task_alloc();
    v5[41] = v14;
    *v14 = v5;
    v14[1] = sub_1000347AC;
    v15 = v5[32];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v15, v11, v10, v5 + 12, v12, v13);
  }

  else
  {
    v5[45] = v6;
    v16 = v5[42];
    if (v6 >= *(v16 + 16))
    {
      __break(1u);
    }

    else
    {
      v17 = *(v16 + 8 * v6 + 32);
      sub_10000560C(&qword_10012A430, &qword_1001093D0);
      v18 = swift_allocObject();
      v5[46] = v18;
      *(v18 + 16) = xmmword_1001089C0;
      StoredPhoto.localIdentifier.getter();
      sub_1000438BC(&qword_10012A048, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
      dispatch thunk of PhotosFaceID.id.getter();
      v19 = type metadata accessor for AlbumDatabase();
      v20 = sub_1000438BC(&qword_10012A490, &type metadata accessor for AlbumDatabase, &protocol conformance descriptor for AlbumDatabase);
      v21 = swift_task_alloc();
      v5[47] = v21;
      *v21 = v5;
      v21[1] = sub_100035174;
      a2 = v5[19];
      a1 = v18;
      a3 = v17;
      a4 = v19;
      a5 = v20;
    }

    return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_1000355BC()
{
  v1 = v0[43];
  v2 = v0[31];
  v3 = v0[28];

  v1(v2, v3);
  sub_10000C304(v0 + 7);
  sub_10000C304(v0 + 2);
  swift_errorRetain();
  dispatch thunk of BroadcastSequence.finish(throwing:)();

  sub_1000356EC(v0[13], v0[14]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000356EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = sub_100057AFC(a2);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a1 + 112);
    *(a1 + 112) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100058768();
    }

    v9 = *(v8 + 48);
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v6, v10);

    sub_10004183C(v6, v8);
    *(a1 + 112) = v8;
  }

  return swift_endAccess();
}

uint64_t sub_1000357D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for ShuffleID();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for CommunicationActor();
  v4[12] = static CommunicationActor.shared.getter();
  v4[13] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100035910, v8, v7);
}

uint64_t sub_100035910()
{
  v1 = v0[10];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];

  static CommunicationActor.shared.getter();
  (*(v3 + 16))(v1, v7, v5);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  (*(v3 + 32))(v10 + v9, v1, v5);
  *(v10 + ((v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  v8[3] = sub_10000560C(&qword_10012A440, &unk_1001091D0);
  v0[2] = sub_10000A990(&qword_10012A428, &unk_1001091B0);
  v8[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(v8);

  generateElements<A>(isolation:_:)();

  v11 = v0[1];

  return v11();
}

uint64_t sub_100035AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for DailyID();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for CommunicationActor();
  v4[12] = static CommunicationActor.shared.getter();
  v4[13] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100035C08, v8, v7);
}

uint64_t sub_100035C08()
{
  v1 = v0[10];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];

  static CommunicationActor.shared.getter();
  (*(v3 + 16))(v1, v7, v5);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  (*(v3 + 32))(v10 + v9, v1, v5);
  *(v10 + ((v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  v8[3] = sub_10000560C(&qword_10012A440, &unk_1001091D0);
  v0[2] = sub_10000A990(&qword_10012A428, &unk_1001091B0);
  v8[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(v8);

  generateElements<A>(isolation:_:)();

  v11 = v0[1];

  return v11();
}

uint64_t sub_100035DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for ShuffleID();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for CommunicationActor();
  v4[12] = static CommunicationActor.shared.getter();
  v4[13] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100035F00, v8, v7);
}

uint64_t sub_100035F00()
{
  v1 = v0[10];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];

  static CommunicationActor.shared.getter();
  (*(v3 + 16))(v1, v7, v5);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  (*(v3 + 32))(v10 + v9, v1, v5);
  *(v10 + ((v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  v8[3] = sub_10000560C(&qword_10012A440, &unk_1001091D0);
  v0[2] = sub_10000A990(&qword_10012A428, &unk_1001091B0);
  v8[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(v8);

  generateElements<A>(isolation:_:)();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000360C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for AlbumID();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for CommunicationActor();
  v4[12] = static CommunicationActor.shared.getter();
  v4[13] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000361F8, v8, v7);
}

uint64_t sub_1000361F8()
{
  v1 = v0[10];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];

  static CommunicationActor.shared.getter();
  (*(v3 + 16))(v1, v7, v5);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  (*(v3 + 32))(v10 + v9, v1, v5);
  *(v10 + ((v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  v8[3] = sub_10000560C(&qword_10012A440, &unk_1001091D0);
  v0[2] = sub_10000A990(&qword_10012A428, &unk_1001091B0);
  v8[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(v8);

  generateElements<A>(isolation:_:)();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000363B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v5[18] = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  v5[19] = swift_task_alloc();
  sub_10000560C(&qword_10012A400, &qword_100109190);
  v5[20] = swift_task_alloc();
  v6 = sub_10000560C(&qword_10012A448, &unk_100109550);
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v7 = type metadata accessor for StoredPhoto();
  v5[27] = v7;
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v8 = type metadata accessor for ShuffleID();
  v5[31] = v8;
  v5[32] = *(v8 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[36] = v9;
  v5[37] = *(v9 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v5[41] = v10;
  v5[42] = *(v10 - 8);
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();

  return _swift_task_switch(sub_10003670C, 0, 0);
}

uint64_t sub_10003670C()
{
  v0[49] = sub_1000438BC(&qword_10012A2B0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
  dispatch thunk of PhotosFaceID.id.getter();
  v1 = type metadata accessor for GalleryDatabase();
  v0[50] = v1;
  v2 = sub_1000438BC(&qword_10012A3D0, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
  v3 = swift_task_alloc();
  v0[51] = v3;
  *v3 = v0;
  v3[1] = sub_100036854;
  v4 = v0[48];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v4, v1, v2);
}

uint64_t sub_100036854(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[52] = a1;
  v4[53] = v1;

  v5 = v3[48];
  v6 = v3[42];
  v7 = v3[41];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v1)
  {
    v9(v5, v7);
    v11 = sub_100043E6C;
  }

  else
  {
    v4[54] = v9;
    v4[55] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v11 = sub_1000369DC;
  }

  return _swift_task_switch(v11, 0, 0);
}

void *sub_1000369DC(uint64_t a1)
{
  v80 = v1;
  v2 = v1[35];
  v3 = v1[31];
  v4 = v1[32];
  v5 = v1[16];
  static Log.default.getter();
  v6 = *(v4 + 16);
  v1[56] = v6;
  v1[57] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v1[31];
  v10 = v1[32];
  if (v9)
  {
    v65 = v8;
    log = v7;
    v76 = v1[52];
    v77 = v1[42];
    v12 = v1[34];
    v13 = v1[35];
    v70 = v1[28];
    v14 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v14 = 136315394;
    v6(v12, v13, v11);
    v15 = *(v10 + 8);
    v15(v13, v11);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v66 = v15;
    v15(v12, v11);
    v19 = sub_100102F80(v16, v18, &v78);

    *(v14 + 4) = v19;
    buf = v14;
    *(v14 + 12) = 2080;
    sub_10000560C(&qword_10012A300, &qword_100108FF8);
    result = static _DictionaryStorage.copy(original:)();
    v21 = result;
    v22 = 0;
    v23 = *(v76 + 64);
    v24 = 1 << *(v76 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & v23;
    v27 = (v24 + 63) >> 6;
    v71 = result + 8;
    v68 = v27;
    v69 = result;
    if ((v25 & v23) != 0)
    {
      while (1)
      {
        v28 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
LABEL_12:
        v31 = v28 | (v22 << 6);
        v32 = *(v76 + 48);
        v33 = *(v32 + 8 * v31);
        v34 = *(*(v76 + 56) + 8 * v31);
        v35 = *(v34 + 16);
        if (v35)
        {
          v72 = *(v32 + 8 * v31);
          v73 = v31;
          v74 = v26;
          v75 = v22;
          v79 = _swiftEmptyArrayStorage;

          sub_10005C508(0, v35, 0);
          v36 = v79;
          v37 = v34 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
          v38 = *(v70 + 72);
          v39 = *(v70 + 16);
          do
          {
            v40 = v1[30];
            v41 = v1[27];
            v39(v40, v37, v41);
            StoredPhoto.localIdentifier.getter();
            (*(v70 + 8))(v40, v41);
            v79 = v36;
            v43 = v36[2];
            v42 = v36[3];
            if (v43 >= v42 >> 1)
            {
              sub_10005C508((v42 > 1), v43 + 1, 1);
              v36 = v79;
            }

            v44 = v1[47];
            v45 = v1[41];
            v36[2] = v43 + 1;
            (*(v77 + 32))(v36 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v43, v44, v45);
            v37 += v38;
            --v35;
          }

          while (v35);

          v27 = v68;
          v21 = v69;
          v26 = v74;
          v22 = v75;
          v33 = v72;
          v31 = v73;
        }

        else
        {
          v36 = _swiftEmptyArrayStorage;
        }

        *(v71 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        *(v21[6] + 8 * v31) = v33;
        *(v21[7] + 8 * v31) = v36;
        v46 = v21[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          break;
        }

        v21[2] = v48;
        if (!v26)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v29 = v22;
      while (1)
      {
        v22 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v22 >= v27)
        {
          v54 = v1[40];
          v56 = v1[36];
          v55 = v1[37];
          sub_10000560C(&qword_100129E80, &unk_1001091F0);
          v57 = Dictionary.description.getter();
          v59 = v58;

          v60 = sub_100102F80(v57, v59, &v78);

          *(buf + 14) = v60;
          _os_log_impl(&_mh_execute_header, log, v65, "Before processing, photos for %s: %s", buf, 0x16u);
          swift_arrayDestroy();

          v53 = *(v55 + 8);
          v53(v54, v56);
          v52 = v66;
          goto LABEL_24;
        }

        v30 = *(v76 + 64 + 8 * v22);
        ++v29;
        if (v30)
        {
          v28 = __clz(__rbit64(v30));
          v26 = (v30 - 1) & v30;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v49 = v1[40];
    v50 = v1[36];
    v51 = v1[37];
    v52 = *(v10 + 8);
    v52(v1[35], v1[31]);

    v53 = *(v51 + 8);
    v53(v49, v50);
LABEL_24:
    v1[58] = v53;
    v1[59] = v52;
    v61 = swift_task_alloc();
    v1[60] = v61;
    *v61 = v1;
    v61[1] = sub_100036FD4;
    v63 = v1[16];
    v62 = v1[17];

    return sub_100011914(v63, v62);
  }

  return result;
}

uint64_t sub_100036FD4(uint64_t a1)
{
  v3 = *v2;
  v3[61] = a1;
  v3[62] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100037220, 0, 0);
  }
}

uint64_t sub_100037220()
{
  v136 = v0;
  v1 = v0[61];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v122 = v0[42];
  v5 = -1;
  v6 = -1 << *(v0[61] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v129 = v0[61];

  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  v120 = v3;
  while (v7)
  {
LABEL_10:
    v15 = *(*(v129 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v7)))));
    v16 = *(v15 + 16);
    v17 = v13[2];
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_78;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v18 > v13[3] >> 1)
    {
      if (v17 <= v18)
      {
        v19 = v17 + v16;
      }

      else
      {
        v19 = v17;
      }

      isUniquelyReferenced_nonNull_native = sub_1000FFFC8(isUniquelyReferenced_nonNull_native, v19, 1, v13);
      v13 = isUniquelyReferenced_nonNull_native;
    }

    v3 = v120;
    v7 &= v7 - 1;
    if (*(v15 + 16))
    {
      if ((v13[3] >> 1) - v13[2] < v16)
      {
        goto LABEL_83;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v20 = v13[2];
        v21 = __OFADD__(v20, v16);
        v22 = v20 + v16;
        if (v21)
        {
          goto LABEL_85;
        }

        v13[2] = v22;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_79;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_76;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v14);
    ++v12;
    if (v7)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  v23 = v0[61];
  v24 = v0[42];
  v124 = v0[22];
  v133 = v0[21];

  v25 = sub_10006C038(v13);

  v0[63] = sub_100013078(v25);

  v26 = -1;
  v27 = -1 << *(v129 + 32);
  if (-v27 < 64)
  {
    v26 = ~(-1 << -v27);
  }

  v28 = v26 & *(v129 + 64);
  v29 = (63 - v27) >> 6;
  v131 = (v24 + 16);
  v115 = v23;

  v30 = 0;
  v31 = _swiftEmptyArrayStorage;
  v114 = v29;
  while (1)
  {
    v0[64] = v31;
    if (!v28)
    {
      break;
    }

LABEL_31:
    v126 = v28;
    v33 = (v30 << 9) | (8 * __clz(__rbit64(v28)));
    v34 = *(*(v129 + 56) + v33);
    v35 = *(v34 + 16);
    if (v35)
    {
      v118 = v31;
      v36 = *(*(v115 + 48) + v33);
      v135 = _swiftEmptyArrayStorage;

      sub_10005C654(0, v35, 0);
      v37 = _swiftEmptyArrayStorage;
      v38 = v34 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
      v39 = *(v122 + 72);
      v40 = *v131;
      do
      {
        v41 = v0[26];
        v40(v41 + *(v133 + 48), v38, v0[41]);
        *v41 = v36;
        v135 = v37;
        v43 = v37[2];
        v42 = v37[3];
        if (v43 >= v42 >> 1)
        {
          sub_10005C654((v42 > 1), v43 + 1, 1);
          v37 = v135;
        }

        v44 = v0[26];
        v37[2] = v43 + 1;
        sub_100042590(v44, v37 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v43);
        v38 += v39;
        --v35;
      }

      while (v35);

      v31 = v118;
      v3 = v120;
      v29 = v114;
    }

    else
    {
      v37 = _swiftEmptyArrayStorage;
    }

    v45 = v37[2];
    v46 = v31[2];
    v47 = v46 + v45;
    if (__OFADD__(v46, v45))
    {
      goto LABEL_80;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v47 > v31[3] >> 1)
    {
      if (v46 <= v47)
      {
        v48 = v46 + v45;
      }

      else
      {
        v48 = v46;
      }

      isUniquelyReferenced_nonNull_native = sub_1000FFFA4(isUniquelyReferenced_nonNull_native, v48, 1, v31);
      v31 = isUniquelyReferenced_nonNull_native;
    }

    v28 = (v126 - 1) & v126;
    if (v37[2])
    {
      if ((v31[3] >> 1) - v31[2] < v45)
      {
        goto LABEL_84;
      }

      swift_arrayInitWithCopy();

      if (v45)
      {
        v49 = v31[2];
        v21 = __OFADD__(v49, v45);
        v50 = v49 + v45;
        if (v21)
        {
          goto LABEL_86;
        }

        v31[2] = v50;
      }
    }

    else
    {

      if (v45)
      {
        goto LABEL_81;
      }
    }
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v29)
    {
      v51 = v0[42];

      v53 = sub_100042600(v52);

      sub_10000560C(&qword_10012A450, &unk_1001091E0);
      isUniquelyReferenced_nonNull_native = static _DictionaryStorage.copy(original:)();
      v54 = isUniquelyReferenced_nonNull_native;
      v55 = 0;
      v0[65] = isUniquelyReferenced_nonNull_native;
      v109 = v53 + 8;
      v56 = 1 << *(v53 + 32);
      v57 = -1;
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      v58 = (v56 + 63) >> 6;
      v59 = (v51 + 32);
      v60 = v57 & v53[8];
      v130 = v59;
      v112 = v53;
      v113 = isUniquelyReferenced_nonNull_native + 8;
      v110 = v58;
      v111 = isUniquelyReferenced_nonNull_native;
      if (!v60)
      {
LABEL_54:
        v62 = v55;
        while (1)
        {
          v55 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_77;
          }

          if (v55 >= v58)
          {
            v86 = v0[56];
            v87 = v0[33];
            v88 = v0[31];
            v89 = v0[16];

            static Log.default.getter();
            v86(v87, v89, v88);
            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.debug.getter();
            v92 = os_log_type_enabled(v90, v91);
            v94 = v0[58];
            v93 = v0[59];
            if (v92)
            {
              v123 = v0[56];
              v134 = v0[39];
              v132 = v0[36];
              v125 = v91;
              v96 = v0[33];
              v95 = v0[34];
              v97 = v0[31];
              v128 = v0[58];
              v98 = swift_slowAlloc();
              v99 = swift_slowAlloc();
              v135 = v99;
              *v98 = 136315138;
              v123(v95, v96, v97);
              v93(v96, v97);
              sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
              v100 = dispatch thunk of CustomStringConvertible.description.getter();
              v102 = v101;
              v93(v95, v97);
              v103 = sub_100102F80(v100, v102, &v135);

              *(v98 + 4) = v103;
              _os_log_impl(&_mh_execute_header, v90, v125, "Clearing photos for id: %s", v98, 0xCu);
              sub_10000C304(v99);

              v128(v134, v132);
            }

            else
            {
              v104 = v0[39];
              v105 = v0[36];
              v93(v0[33], v0[31]);

              v94(v104, v105);
            }

            dispatch thunk of PhotosFaceID.id.getter();
            v106 = sub_1000438BC(&qword_10012A438, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
            v107 = swift_task_alloc();
            v0[66] = v107;
            *v107 = v0;
            v107[1] = sub_100037CA0;
            v10 = v0[50];
            isUniquelyReferenced_nonNull_native = v0[44];
            v11 = v106;

            return dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)(isUniquelyReferenced_nonNull_native, v10, v11);
          }

          v63 = v109[v55];
          ++v62;
          if (v63)
          {
            v61 = __clz(__rbit64(v63));
            v60 = (v63 - 1) & v63;
            goto LABEL_59;
          }
        }
      }

      while (1)
      {
        v61 = __clz(__rbit64(v60));
        v60 &= v60 - 1;
LABEL_59:
        v64 = v61 | (v55 << 6);
        v66 = v0[45];
        v65 = v0[46];
        v67 = v0[41];
        v119 = *(v122 + 72) * v64;
        (*v131)(v65, v53[6] + v119, v67);
        v121 = v64;
        v68 = *(v53[7] + 8 * v64);
        v127 = *v130;
        (*v130)(v66, v65, v67);
        v69 = *(v68 + 16);
        if (v69)
        {
          v116 = v60;
          v117 = v55;
          v135 = _swiftEmptyArrayStorage;

          sub_10005C5B0(0, v69, 0);
          v70 = v68;
          v71 = _swiftEmptyArrayStorage;
          v72 = v70 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
          v73 = *(v124 + 72);
          do
          {
            v74 = v0[41];
            v75 = v0[24];
            v76 = v0[25];
            v77 = v0[23];
            sub_100042A80(v72, v76);
            sub_100042A80(v76, v75);
            v78 = *v75;
            v79 = *(v133 + 48);
            *v77 = *v75;
            v127(v77 + v79, v75 + v79, v74);
            sub_10000C460(v77, &qword_10012A448, &unk_100109550);
            sub_10000C460(v76, &qword_10012A448, &unk_100109550);
            v135 = v71;
            v81 = v71[2];
            v80 = v71[3];
            if (v81 >= v80 >> 1)
            {
              sub_10005C5B0((v80 > 1), v81 + 1, 1);
              v71 = v135;
            }

            v71[2] = v81 + 1;
            v71[v81 + 4] = v78;
            v72 += v73;
            --v69;
          }

          while (v69);

          v54 = v111;
          v53 = v112;
          v60 = v116;
          v55 = v117;
          v58 = v110;
        }

        else
        {
          v71 = _swiftEmptyArrayStorage;
        }

        v82 = v0[45];
        v83 = v0[41];
        *(v113 + ((v121 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v121;
        isUniquelyReferenced_nonNull_native = (v127)(v54[6] + v119, v82, v83);
        *(v54[7] + 8 * v121) = v71;
        v84 = v54[2];
        v21 = __OFADD__(v84, 1);
        v85 = v84 + 1;
        if (v21)
        {
          goto LABEL_82;
        }

        v54[2] = v85;
        if (!v60)
        {
          goto LABEL_54;
        }
      }
    }

    v28 = *(v3 + 8 * v32);
    ++v30;
    if (v28)
    {
      v30 = v32;
      goto LABEL_31;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)(isUniquelyReferenced_nonNull_native, v10, v11);
}

uint64_t sub_100037CA0()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  (*(v2 + 432))(*(v2 + 352), *(v2 + 328));
  if (v0)
  {

    v3 = sub_100043E70;
  }

  else
  {
    v3 = sub_100037E1C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100037E1C(uint64_t a1)
{
  v23 = v1;
  static Log.default.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v20 = v1[58];
    v4 = v1[38];
    v5 = v1[36];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    v8 = Array.description.getter();
    v10 = sub_100102F80(v8, v9, &v22);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Processing photos: %s", v6, 0xCu);
    sub_10000C304(v7);

    v20(v4, v5);
  }

  else
  {
    v11 = v1[58];
    v12 = v1[38];
    v13 = v1[36];

    v11(v12, v13);
  }

  v14 = v1[15];
  v15 = v14[8];
  v16 = v14[9];
  sub_10000C3CC(v14 + 5, v15);
  v21 = (*(v16 + 16) + **(v16 + 16));
  v17 = swift_task_alloc();
  v1[68] = v17;
  *v17 = v1;
  v17[1] = sub_1000380B8;
  v18 = v1[63];

  return v21(v1 + 2, v18, 0, 0, v15, v16);
}

uint64_t sub_1000380B8()
{
  *(*v1 + 552) = v0;

  if (v0)
  {

    v2 = sub_100043EA4;
  }

  else
  {
    v2 = sub_100038210;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100038210()
{
  v1 = v0[5];
  v2 = sub_10000C3CC(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000C1AC(v0 + 7);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v5 = v0[10];
  v6 = v0[11];
  sub_10000C410((v0 + 7), v5);
  v7 = swift_task_alloc();
  v0[70] = v7;
  *v7 = v0;
  v7[1] = sub_1000383CC;
  v8 = v0[20];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v8, 0, 0, v0 + 12, v5, v6);
}

uint64_t sub_1000383CC()
{

  if (v0)
  {

    v1 = sub_100043EA8;
  }

  else
  {
    v1 = sub_100038520;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100038520()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[20];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10000C304(v0 + 7);
    sub_10000C304(v0 + 2);

    v4 = v0[1];

    return v4();
  }

  v6 = v0[65];
  (*(v2 + 32))(v0[29], v3, v1);
  result = StoredPhoto.localIdentifier.getter();
  if (!*(v6 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_100057AFC(v0[43]);
  if ((v7 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = v0[54];
  v9 = v0[43];
  v10 = v0[41];
  v11 = v0[28];
  v18 = v0[27];
  v19 = v0[29];
  v13 = v0[18];
  v12 = v0[19];
  v14 = v0[13];
  v15 = *(*(v0[65] + 56) + 8 * result);

  v8(v9, v10);
  *v12 = v15;
  (*(v11 + 16))(&v12[*(v13 + 48)], v19, v18);
  v20 = (v14 + *v14);
  v16 = swift_task_alloc();
  v0[71] = v16;
  *v16 = v0;
  v16[1] = sub_100038888;
  v17 = v0[19];

  return v20(v17);
}

uint64_t sub_100038888()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  sub_10000C460(*(v2 + 152), &qword_10012A428, &unk_1001091B0);
  if (v0)
  {

    v3 = sub_100043EA0;
  }

  else
  {
    v3 = sub_100038A14;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100038A14()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  v1 = v0[10];
  v2 = v0[11];
  sub_10000C410((v0 + 7), v1);
  v3 = swift_task_alloc();
  v0[70] = v3;
  *v3 = v0;
  v3[1] = sub_1000383CC;
  v4 = v0[20];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 12, v1, v2);
}

uint64_t sub_100038AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v4[17] = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  v4[18] = swift_task_alloc();
  sub_10000560C(&qword_10012A400, &qword_100109190);
  v4[19] = swift_task_alloc();
  v5 = sub_10000560C(&qword_10012A448, &unk_100109550);
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v6 = type metadata accessor for StoredPhoto();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v7 = type metadata accessor for DailyID();
  v4[30] = v7;
  v4[31] = *(v7 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[35] = v8;
  v4[36] = *(v8 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v4[40] = v9;
  v4[41] = *(v9 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();

  return _swift_task_switch(sub_100038E44, 0, 0);
}

uint64_t sub_100038E44()
{
  v0[48] = sub_1000438BC(&qword_10012A178, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
  dispatch thunk of PhotosFaceID.id.getter();
  v1 = type metadata accessor for DailyDatabase();
  v0[49] = v1;
  v2 = sub_1000438BC(&qword_10012A468, &type metadata accessor for DailyDatabase, &protocol conformance descriptor for DailyDatabase);
  v3 = swift_task_alloc();
  v0[50] = v3;
  *v3 = v0;
  v3[1] = sub_100038F8C;
  v4 = v0[47];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v4, v1, v2);
}

uint64_t sub_100038F8C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[51] = a1;
  v4[52] = v1;

  v5 = v3[47];
  v6 = v3[41];
  v7 = v3[40];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v1)
  {
    v9(v5, v7);
    v11 = sub_100039724;
  }

  else
  {
    v4[53] = v9;
    v4[54] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v11 = sub_100039114;
  }

  return _swift_task_switch(v11, 0, 0);
}

void *sub_100039114(uint64_t a1)
{
  v79 = v1;
  v2 = v1[34];
  v3 = v1[30];
  v4 = v1[31];
  v5 = v1[16];
  static Log.default.getter();
  v6 = *(v4 + 16);
  v1[55] = v6;
  v1[56] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v1[30];
  v10 = v1[31];
  if (v9)
  {
    v64 = v8;
    log = v7;
    v75 = v1[51];
    v76 = v1[41];
    v12 = v1[33];
    v13 = v1[34];
    v69 = v1[27];
    v14 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v14 = 136315394;
    v6(v12, v13, v11);
    v15 = *(v10 + 8);
    v15(v13, v11);
    sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v65 = v15;
    v15(v12, v11);
    v19 = sub_100102F80(v16, v18, &v77);

    *(v14 + 4) = v19;
    buf = v14;
    *(v14 + 12) = 2080;
    sub_10000560C(&qword_10012A300, &qword_100108FF8);
    result = static _DictionaryStorage.copy(original:)();
    v21 = result;
    v22 = 0;
    v23 = *(v75 + 64);
    v24 = 1 << *(v75 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & v23;
    v27 = (v24 + 63) >> 6;
    v70 = result + 8;
    v67 = v27;
    v68 = result;
    if ((v25 & v23) != 0)
    {
      while (1)
      {
        v28 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
LABEL_12:
        v31 = v28 | (v22 << 6);
        v32 = *(v75 + 48);
        v33 = *(v32 + 8 * v31);
        v34 = *(*(v75 + 56) + 8 * v31);
        v35 = *(v34 + 16);
        if (v35)
        {
          v71 = *(v32 + 8 * v31);
          v72 = v31;
          v73 = v26;
          v74 = v22;
          v78 = _swiftEmptyArrayStorage;

          sub_10005C508(0, v35, 0);
          v36 = v78;
          v37 = v34 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
          v38 = *(v69 + 72);
          v39 = *(v69 + 16);
          do
          {
            v40 = v1[29];
            v41 = v1[26];
            v39(v40, v37, v41);
            StoredPhoto.localIdentifier.getter();
            (*(v69 + 8))(v40, v41);
            v78 = v36;
            v43 = v36[2];
            v42 = v36[3];
            if (v43 >= v42 >> 1)
            {
              sub_10005C508((v42 > 1), v43 + 1, 1);
              v36 = v78;
            }

            v44 = v1[46];
            v45 = v1[40];
            v36[2] = v43 + 1;
            (*(v76 + 32))(v36 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v43, v44, v45);
            v37 += v38;
            --v35;
          }

          while (v35);

          v27 = v67;
          v21 = v68;
          v26 = v73;
          v22 = v74;
          v33 = v71;
          v31 = v72;
        }

        else
        {
          v36 = _swiftEmptyArrayStorage;
        }

        *(v70 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        *(v21[6] + 8 * v31) = v33;
        *(v21[7] + 8 * v31) = v36;
        v46 = v21[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          break;
        }

        v21[2] = v48;
        if (!v26)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v29 = v22;
      while (1)
      {
        v22 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v22 >= v27)
        {
          v54 = v1[39];
          v56 = v1[35];
          v55 = v1[36];
          sub_10000560C(&qword_100129E80, &unk_1001091F0);
          v57 = Dictionary.description.getter();
          v59 = v58;

          v60 = sub_100102F80(v57, v59, &v77);

          *(buf + 14) = v60;
          _os_log_impl(&_mh_execute_header, log, v64, "Before processing, photos for %s: %s", buf, 0x16u);
          swift_arrayDestroy();

          v53 = *(v55 + 8);
          v53(v54, v56);
          v52 = v65;
          goto LABEL_24;
        }

        v30 = *(v75 + 64 + 8 * v22);
        ++v29;
        if (v30)
        {
          v28 = __clz(__rbit64(v30));
          v26 = (v30 - 1) & v30;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v49 = v1[39];
    v51 = v1[35];
    v50 = v1[36];
    v52 = *(v10 + 8);
    v52(v1[34], v1[30]);

    v53 = *(v50 + 8);
    v53(v49, v51);
LABEL_24:
    v1[57] = v53;
    v1[58] = v52;
    v1[59] = *(v1[15] + 32);
    v61 = swift_task_alloc();
    v1[60] = v61;
    *v61 = v1;
    v61[1] = sub_100039884;
    v62 = v1[16];

    return sub_1000105AC(v62);
  }

  return result;
}

uint64_t sub_100039724()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100039884(uint64_t a1)
{
  v3 = *v2;
  v3[61] = a1;
  v3[62] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100039AD0, 0, 0);
  }
}

uint64_t sub_100039AD0()
{
  v136 = v0;
  v1 = v0[61];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v122 = v0[41];
  v5 = -1;
  v6 = -1 << *(v0[61] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v129 = v0[61];

  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  v120 = v3;
  while (v7)
  {
LABEL_10:
    v15 = *(*(v129 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v7)))));
    v16 = *(v15 + 16);
    v17 = v13[2];
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_78;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v18 > v13[3] >> 1)
    {
      if (v17 <= v18)
      {
        v19 = v17 + v16;
      }

      else
      {
        v19 = v17;
      }

      isUniquelyReferenced_nonNull_native = sub_1000FFFC8(isUniquelyReferenced_nonNull_native, v19, 1, v13);
      v13 = isUniquelyReferenced_nonNull_native;
    }

    v3 = v120;
    v7 &= v7 - 1;
    if (*(v15 + 16))
    {
      if ((v13[3] >> 1) - v13[2] < v16)
      {
        goto LABEL_83;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v20 = v13[2];
        v21 = __OFADD__(v20, v16);
        v22 = v20 + v16;
        if (v21)
        {
          goto LABEL_85;
        }

        v13[2] = v22;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_79;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_76;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v14);
    ++v12;
    if (v7)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  v23 = v0[61];
  v24 = v0[41];
  v124 = v0[21];
  v133 = v0[20];

  v25 = sub_10006C038(v13);

  v0[63] = sub_100013078(v25);

  v26 = -1;
  v27 = -1 << *(v129 + 32);
  if (-v27 < 64)
  {
    v26 = ~(-1 << -v27);
  }

  v28 = v26 & *(v129 + 64);
  v29 = (63 - v27) >> 6;
  v131 = (v24 + 16);
  v115 = v23;

  v30 = 0;
  v31 = _swiftEmptyArrayStorage;
  v114 = v29;
  while (1)
  {
    v0[64] = v31;
    if (!v28)
    {
      break;
    }

LABEL_31:
    v126 = v28;
    v33 = (v30 << 9) | (8 * __clz(__rbit64(v28)));
    v34 = *(*(v129 + 56) + v33);
    v35 = *(v34 + 16);
    if (v35)
    {
      v118 = v31;
      v36 = *(*(v115 + 48) + v33);
      v135 = _swiftEmptyArrayStorage;

      sub_10005C654(0, v35, 0);
      v37 = _swiftEmptyArrayStorage;
      v38 = v34 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
      v39 = *(v122 + 72);
      v40 = *v131;
      do
      {
        v41 = v0[25];
        v40(v41 + *(v133 + 48), v38, v0[40]);
        *v41 = v36;
        v135 = v37;
        v43 = v37[2];
        v42 = v37[3];
        if (v43 >= v42 >> 1)
        {
          sub_10005C654((v42 > 1), v43 + 1, 1);
          v37 = v135;
        }

        v44 = v0[25];
        v37[2] = v43 + 1;
        sub_100042590(v44, v37 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v43);
        v38 += v39;
        --v35;
      }

      while (v35);

      v31 = v118;
      v3 = v120;
      v29 = v114;
    }

    else
    {
      v37 = _swiftEmptyArrayStorage;
    }

    v45 = v37[2];
    v46 = v31[2];
    v47 = v46 + v45;
    if (__OFADD__(v46, v45))
    {
      goto LABEL_80;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v47 > v31[3] >> 1)
    {
      if (v46 <= v47)
      {
        v48 = v46 + v45;
      }

      else
      {
        v48 = v46;
      }

      isUniquelyReferenced_nonNull_native = sub_1000FFFA4(isUniquelyReferenced_nonNull_native, v48, 1, v31);
      v31 = isUniquelyReferenced_nonNull_native;
    }

    v28 = (v126 - 1) & v126;
    if (v37[2])
    {
      if ((v31[3] >> 1) - v31[2] < v45)
      {
        goto LABEL_84;
      }

      swift_arrayInitWithCopy();

      if (v45)
      {
        v49 = v31[2];
        v21 = __OFADD__(v49, v45);
        v50 = v49 + v45;
        if (v21)
        {
          goto LABEL_86;
        }

        v31[2] = v50;
      }
    }

    else
    {

      if (v45)
      {
        goto LABEL_81;
      }
    }
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v29)
    {
      v51 = v0[41];

      v53 = sub_100042600(v52);

      sub_10000560C(&qword_10012A450, &unk_1001091E0);
      isUniquelyReferenced_nonNull_native = static _DictionaryStorage.copy(original:)();
      v54 = isUniquelyReferenced_nonNull_native;
      v55 = 0;
      v0[65] = isUniquelyReferenced_nonNull_native;
      v109 = v53 + 8;
      v56 = 1 << *(v53 + 32);
      v57 = -1;
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      v58 = (v56 + 63) >> 6;
      v59 = (v51 + 32);
      v60 = v57 & v53[8];
      v130 = v59;
      v112 = v53;
      v113 = isUniquelyReferenced_nonNull_native + 8;
      v110 = v58;
      v111 = isUniquelyReferenced_nonNull_native;
      if (!v60)
      {
LABEL_54:
        v62 = v55;
        while (1)
        {
          v55 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_77;
          }

          if (v55 >= v58)
          {
            v86 = v0[55];
            v87 = v0[32];
            v88 = v0[30];
            v89 = v0[16];

            static Log.default.getter();
            v86(v87, v89, v88);
            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.debug.getter();
            v92 = os_log_type_enabled(v90, v91);
            v94 = v0[57];
            v93 = v0[58];
            if (v92)
            {
              v123 = v0[55];
              v134 = v0[38];
              v132 = v0[35];
              v125 = v91;
              v96 = v0[32];
              v95 = v0[33];
              v97 = v0[30];
              v128 = v0[57];
              v98 = swift_slowAlloc();
              v99 = swift_slowAlloc();
              v135 = v99;
              *v98 = 136315138;
              v123(v95, v96, v97);
              v93(v96, v97);
              sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
              v100 = dispatch thunk of CustomStringConvertible.description.getter();
              v102 = v101;
              v93(v95, v97);
              v103 = sub_100102F80(v100, v102, &v135);

              *(v98 + 4) = v103;
              _os_log_impl(&_mh_execute_header, v90, v125, "Clearing photos for id: %s", v98, 0xCu);
              sub_10000C304(v99);

              v128(v134, v132);
            }

            else
            {
              v104 = v0[38];
              v105 = v0[35];
              v93(v0[32], v0[30]);

              v94(v104, v105);
            }

            dispatch thunk of PhotosFaceID.id.getter();
            v106 = sub_1000438BC(&qword_10012A470, &type metadata accessor for DailyDatabase, &protocol conformance descriptor for DailyDatabase);
            v107 = swift_task_alloc();
            v0[66] = v107;
            *v107 = v0;
            v107[1] = sub_10003A550;
            v10 = v0[49];
            isUniquelyReferenced_nonNull_native = v0[43];
            v11 = v106;

            return dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)(isUniquelyReferenced_nonNull_native, v10, v11);
          }

          v63 = v109[v55];
          ++v62;
          if (v63)
          {
            v61 = __clz(__rbit64(v63));
            v60 = (v63 - 1) & v63;
            goto LABEL_59;
          }
        }
      }

      while (1)
      {
        v61 = __clz(__rbit64(v60));
        v60 &= v60 - 1;
LABEL_59:
        v64 = v61 | (v55 << 6);
        v66 = v0[44];
        v65 = v0[45];
        v67 = v0[40];
        v119 = *(v122 + 72) * v64;
        (*v131)(v65, v53[6] + v119, v67);
        v121 = v64;
        v68 = *(v53[7] + 8 * v64);
        v127 = *v130;
        (*v130)(v66, v65, v67);
        v69 = *(v68 + 16);
        if (v69)
        {
          v116 = v60;
          v117 = v55;
          v135 = _swiftEmptyArrayStorage;

          sub_10005C5B0(0, v69, 0);
          v70 = v68;
          v71 = _swiftEmptyArrayStorage;
          v72 = v70 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
          v73 = *(v124 + 72);
          do
          {
            v74 = v0[40];
            v75 = v0[23];
            v76 = v0[24];
            v77 = v0[22];
            sub_100042A80(v72, v76);
            sub_100042A80(v76, v75);
            v78 = *v75;
            v79 = *(v133 + 48);
            *v77 = *v75;
            v127(v77 + v79, v75 + v79, v74);
            sub_10000C460(v77, &qword_10012A448, &unk_100109550);
            sub_10000C460(v76, &qword_10012A448, &unk_100109550);
            v135 = v71;
            v81 = v71[2];
            v80 = v71[3];
            if (v81 >= v80 >> 1)
            {
              sub_10005C5B0((v80 > 1), v81 + 1, 1);
              v71 = v135;
            }

            v71[2] = v81 + 1;
            v71[v81 + 4] = v78;
            v72 += v73;
            --v69;
          }

          while (v69);

          v54 = v111;
          v53 = v112;
          v60 = v116;
          v55 = v117;
          v58 = v110;
        }

        else
        {
          v71 = _swiftEmptyArrayStorage;
        }

        v82 = v0[44];
        v83 = v0[40];
        *(v113 + ((v121 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v121;
        isUniquelyReferenced_nonNull_native = (v127)(v54[6] + v119, v82, v83);
        *(v54[7] + 8 * v121) = v71;
        v84 = v54[2];
        v21 = __OFADD__(v84, 1);
        v85 = v84 + 1;
        if (v21)
        {
          goto LABEL_82;
        }

        v54[2] = v85;
        if (!v60)
        {
          goto LABEL_54;
        }
      }
    }

    v28 = *(v3 + 8 * v32);
    ++v30;
    if (v28)
    {
      v30 = v32;
      goto LABEL_31;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)(isUniquelyReferenced_nonNull_native, v10, v11);
}

uint64_t sub_10003A550()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  (*(v2 + 424))(*(v2 + 344), *(v2 + 320));
  if (v0)
  {

    v3 = sub_10003A98C;
  }

  else
  {
    v3 = sub_10003A6CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003A6CC(uint64_t a1)
{
  v25 = v1;
  static Log.default.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v23 = v1[57];
    v4 = v1[37];
    v5 = v1[35];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    v8 = Array.description.getter();
    v10 = sub_100102F80(v8, v9, &v24);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Processing photos: %s", v6, 0xCu);
    sub_10000C304(v7);

    v23(v4, v5);
  }

  else
  {
    v11 = v1[57];
    v12 = v1[37];
    v13 = v1[35];

    v11(v12, v13);
  }

  v14 = v1[59];
  v15 = v1[15];
  v16 = v15[8];
  v17 = v15[9];
  sub_10000C3CC(v15 + 5, v16);
  v18 = *(v17 + 16);

  v22 = (v18 + *v18);
  v19 = swift_task_alloc();
  v1[68] = v19;
  *v19 = v1;
  v19[1] = sub_10003AAEC;
  v20 = v1[63];

  return (v22)(v1 + 2, v20, sub_100042D9C, v14, v16, v17);
}