uint64_t sub_10012CF58()
{
  v62 = v0;

  v1 = *(v0 + 416);
  v2 = *(v0 + 384);
  *(v0 + 424) = v1;
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 120);

  sub_10013AEFC(v5, v3, type metadata accessor for InheritanceHealthRecord);
  sub_10013AEFC(v5, v4, type metadata accessor for InheritanceHealthRecord);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 296);
  v9 = *(v0 + 304);
  if (v8)
  {
    v58 = v7;
    v11 = *(v0 + 232);
    v12 = *(v0 + 240);
    log = v6;
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v54 = *(v0 + 128);
    v55 = *(v0 + 136);
    v15 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v15 = 138413058;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v16;
    *v53 = v16;
    *(v15 + 12) = 2080;
    (*(v13 + 16))(v11, v9 + *(v12 + 28), v14);
    sub_10013AF64(v9, type metadata accessor for InheritanceHealthRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_10021145C(v17, v19, v61);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2080;
    v21 = UUID.uuidString.getter();
    v23 = v22;
    sub_10013AF64(v10, type metadata accessor for InheritanceHealthRecord);
    v24 = sub_10021145C(v21, v23, v61);

    *(v15 + 24) = v24;
    *(v15 + 32) = 2080;
    *(v15 + 34) = sub_10021145C(v54, v55, v61);
    _os_log_impl(&_mh_execute_header, log, v58, "Error occured when creating a CKShare %@, recordID: %s, zone: %s, participant: %s", v15, 0x2Au);
    sub_100008D3C(v53, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(*(v0 + 304), type metadata accessor for InheritanceHealthRecord);

    sub_10013AF64(v10, type metadata accessor for InheritanceHealthRecord);
  }

  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v25 = *(v0 + 72);
    *(v0 + 432) = v25;
    if (sub_1002DECC8(v25))
    {
      v26 = *(v0 + 280);
      v27 = *(v0 + 120);
      sub_10013AEFC(v27, *(v0 + 288), type metadata accessor for InheritanceHealthRecord);
      sub_10013AEFC(v27, v26, type metadata accessor for InheritanceHealthRecord);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      v30 = os_log_type_enabled(v28, v29);
      v31 = *(v0 + 280);
      v32 = *(v0 + 288);
      if (v30)
      {
        loga = v29;
        v33 = *(v0 + 232);
        v34 = *(v0 + 240);
        v36 = *(v0 + 216);
        v35 = *(v0 + 224);
        v56 = *(v0 + 128);
        v57 = *(v0 + 136);
        v37 = swift_slowAlloc();
        v61[0] = swift_slowAlloc();
        *v37 = 136315650;
        (*(v35 + 16))(v33, v32 + *(v34 + 28), v36);
        sub_10013AF64(v32, type metadata accessor for InheritanceHealthRecord);
        sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v40 = v39;
        (*(v35 + 8))(v33, v36);
        v41 = sub_10021145C(v38, v40, v61);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2080;
        v42 = UUID.uuidString.getter();
        v44 = v43;
        sub_10013AF64(v31, type metadata accessor for InheritanceHealthRecord);
        v45 = sub_10021145C(v42, v44, v61);

        *(v37 + 14) = v45;
        *(v37 + 22) = 2080;
        *(v37 + 24) = sub_10021145C(v56, v57, v61);
        _os_log_impl(&_mh_execute_header, v28, loga, "Error is client-server conflict, so checking if the record is already shared recordID: %s, zone: %s, participant: %s", v37, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10013AF64(*(v0 + 288), type metadata accessor for InheritanceHealthRecord);

        sub_10013AF64(v31, type metadata accessor for InheritanceHealthRecord);
      }

      v51 = swift_task_alloc();
      *(v0 + 440) = v51;
      *v51 = v0;
      v51[1] = sub_10012D7A4;
      v52 = *(v0 + 120);

      return sub_10013A278(v52);
    }
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Error is not of client-server conflict, so not fetching the existing share from server", v48, 2u);
  }

  swift_getErrorValue();
  sub_100255F6C(-7065, *(v0 + 24), *(v0 + 32));
  swift_willThrow();

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_10012D7A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {
    v4 = sub_10013B030;
  }

  else
  {
    v4 = sub_10012D8B8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10012D8B8()
{
  v137 = v0;
  v1 = *(v0 + 448);
  if (v1)
  {
    v2 = *(v0 + 264);
    v3 = *(v0 + 120);
    sub_10013AEFC(v3, *(v0 + 272), type metadata accessor for InheritanceHealthRecord);
    sub_10013AEFC(v3, v2, type metadata accessor for InheritanceHealthRecord);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 264);
    v8 = *(v0 + 272);
    if (v6)
    {
      v130 = v5;
      v9 = *(v0 + 232);
      v10 = *(v0 + 240);
      v12 = *(v0 + 216);
      v11 = *(v0 + 224);
      v119 = *(v0 + 128);
      v122 = *(v0 + 136);
      v13 = swift_slowAlloc();
      v136[0] = swift_slowAlloc();
      *v13 = 136315650;
      (*(v11 + 16))(v9, v8 + *(v10 + 28), v12);
      sub_10013AF64(v8, type metadata accessor for InheritanceHealthRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v11 + 8))(v9, v12);
      v17 = sub_10021145C(v14, v16, v136);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = UUID.uuidString.getter();
      v20 = v19;
      sub_10013AF64(v7, type metadata accessor for InheritanceHealthRecord);
      v21 = sub_10021145C(v18, v20, v136);

      *(v13 + 14) = v21;
      *(v13 + 22) = 2080;
      *(v13 + 24) = sub_10021145C(v119, v122, v136);
      _os_log_impl(&_mh_execute_header, v4, v130, "Found existing CKShare, recordID: %s, zone: %s, participant: %s", v13, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10013AF64(*(v0 + 272), type metadata accessor for InheritanceHealthRecord);

      sub_10013AF64(v7, type metadata accessor for InheritanceHealthRecord);
    }

    v41 = v1;
    v42 = [v41 participants];
    sub_100016034(0, &unk_1003DEBE0, CKShareParticipant_ptr);
    v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v43 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v45 = 0;
      while (1)
      {
        if ((v43 & 0xC000000000000001) != 0)
        {
          v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v45 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v46 = *(v43 + 8 * v45 + 32);
        }

        v47 = v46;
        v48 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        if (([v46 isCurrentUser] & 1) == 0)
        {

          goto LABEL_25;
        }

        ++v45;
        if (v48 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_24:

    v47 = 0;
LABEL_25:

    v51 = *(v0 + 456);
    v52 = v47;
    v53 = sub_100253D68(v47);

    if (v51)
    {
    }

    else
    {

      v56 = [v41 URL];
      if (v56)
      {
        log = v53;
        v57 = *(v0 + 464);
        v59 = *(v0 + 200);
        v58 = *(v0 + 208);
        v61 = *(v0 + 184);
        v60 = *(v0 + 192);
        v62 = v56;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v60 + 16))(v59, v58, v61);
        if (v57 == 1)
        {
          v132 = v41;
          v134 = v52;
          if (qword_1003D7ED8 != -1)
          {
            swift_once();
          }

          v63 = &qword_1003FAA00;
        }

        else
        {
          v132 = v41;
          v134 = v52;
          if (qword_1003D7ED0 != -1)
          {
            swift_once();
          }

          v63 = &qword_1003FA9F0;
        }

        v85 = *(v0 + 200);
        v86 = *(v0 + 184);
        v113 = *(v0 + 176);
        v117 = *(v0 + 168);
        v87 = *(v0 + 152);
        v121 = *(v0 + 160);
        v88 = *(v0 + 112);
        v90 = *v63;
        v89 = v63[1];
        v91 = *(*(v0 + 192) + 32);

        v91(v88, v85, v86);
        v92 = (v88 + *(v87 + 20));
        *v92 = v90;
        v92[1] = v89;
        v111 = v87;
        *(v88 + *(v87 + 24)) = log;
        sub_10013AEFC(v88, v113, type metadata accessor for CloudShareInfo);
        sub_10013AEFC(v88, v117, type metadata accessor for CloudShareInfo);
        sub_10013AEFC(v88, v121, type metadata accessor for CloudShareInfo);

        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.default.getter();

        v95 = os_log_type_enabled(v93, v94);
        loga = *(v0 + 208);
        v96 = *(v0 + 184);
        v97 = *(v0 + 192);
        v99 = *(v0 + 168);
        v98 = *(v0 + 176);
        v100 = *(v0 + 160);
        if (v95)
        {
          v114 = *(v0 + 128);
          v118 = *(v0 + 136);
          v101 = swift_slowAlloc();
          v136[0] = swift_slowAlloc();
          *v101 = 136315906;
          sub_10013AFC4(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v110 = v94;
          v102 = dispatch thunk of CustomStringConvertible.description.getter();
          v125 = v96;
          v104 = v103;
          sub_10013AF64(v98, type metadata accessor for CloudShareInfo);
          v105 = sub_10021145C(v102, v104, v136);

          *(v101 + 4) = v105;
          *(v101 + 12) = 2080;
          v106 = (v99 + *(v111 + 20));
          v108 = *v106;
          v107 = v106[1];

          sub_10013AF64(v99, type metadata accessor for CloudShareInfo);
          v109 = sub_10021145C(v108, v107, v136);

          *(v101 + 14) = v109;
          *(v101 + 22) = 2080;
          *(v101 + 24) = sub_10021145C(v114, v118, v136);
          *(v101 + 32) = 1024;
          LODWORD(v109) = *(v100 + *(v111 + 24)) != 0;
          sub_10013AF64(v100, type metadata accessor for CloudShareInfo);
          *(v101 + 34) = v109;
          _os_log_impl(&_mh_execute_header, v93, v110, "Returning share information with shareURL: %s, container: %s, participant: %s, hasToken: %{BOOL}d", v101, 0x26u);
          swift_arrayDestroy();

          (*(v97 + 8))(loga, v125);
        }

        else
        {
          sub_10013AF64(*(v0 + 160), type metadata accessor for CloudShareInfo);

          sub_10013AF64(v99, type metadata accessor for CloudShareInfo);
          sub_10013AF64(v98, type metadata accessor for CloudShareInfo);
          (*(v97 + 8))(loga, v96);
        }
      }

      else
      {
        v133 = v41;
        v64 = *(v0 + 312);
        v65 = *(v0 + 120);
        sub_10013AEFC(v65, *(v0 + 320), type metadata accessor for InheritanceHealthRecord);
        sub_10013AEFC(v65, v64, type metadata accessor for InheritanceHealthRecord);

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.error.getter();

        v68 = os_log_type_enabled(v66, v67);
        v70 = *(v0 + 312);
        v69 = *(v0 + 320);
        if (v68)
        {
          logc = v66;
          v124 = v67;
          v72 = *(v0 + 232);
          v71 = *(v0 + 240);
          v135 = v52;
          v74 = *(v0 + 216);
          v73 = *(v0 + 224);
          v112 = *(v0 + 128);
          v116 = *(v0 + 136);
          v75 = swift_slowAlloc();
          v136[0] = swift_slowAlloc();
          *v75 = 136315650;
          (*(v73 + 16))(v72, v69 + *(v71 + 28), v74);
          sub_10013AF64(v69, type metadata accessor for InheritanceHealthRecord);
          sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v76 = dispatch thunk of CustomStringConvertible.description.getter();
          v78 = v77;
          v79 = v74;
          v52 = v135;
          (*(v73 + 8))(v72, v79);
          v80 = sub_10021145C(v76, v78, v136);

          *(v75 + 4) = v80;
          *(v75 + 12) = 2080;
          v81 = UUID.uuidString.getter();
          v83 = v82;
          sub_10013AF64(v70, type metadata accessor for InheritanceHealthRecord);
          v84 = sub_10021145C(v81, v83, v136);

          *(v75 + 14) = v84;
          *(v75 + 22) = 2080;
          *(v75 + 24) = sub_10021145C(v112, v116, v136);
          _os_log_impl(&_mh_execute_header, logc, v124, "Share URL missing in CKShare, recordID: %s, zone: %s, participant: %s", v75, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
          sub_10013AF64(*(v0 + 320), type metadata accessor for InheritanceHealthRecord);

          sub_10013AF64(v70, type metadata accessor for InheritanceHealthRecord);
        }

        type metadata accessor for AACustodianError(0);
        *(v0 + 104) = -7067;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
        _BridgedStoredNSError.init(_:userInfo:)();
        swift_willThrow();
      }
    }
  }

  else
  {
    v22 = *(v0 + 248);
    v23 = *(v0 + 120);
    sub_10013AEFC(v23, *(v0 + 256), type metadata accessor for InheritanceHealthRecord);
    sub_10013AEFC(v23, v22, type metadata accessor for InheritanceHealthRecord);

    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 256);
      v115 = *(v0 + 248);
      v131 = v25;
      v27 = *(v0 + 232);
      v28 = *(v0 + 240);
      v30 = *(v0 + 216);
      v29 = *(v0 + 224);
      v123 = *(v0 + 128);
      logb = *(v0 + 136);
      v31 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v136[0] = swift_slowAlloc();
      *v31 = 138413058;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v32;
      *v120 = v32;
      *(v31 + 12) = 2080;
      (*(v29 + 16))(v27, v26 + *(v28 + 28), v30);
      sub_10013AF64(v26, type metadata accessor for InheritanceHealthRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v29 + 8))(v27, v30);
      v36 = sub_10021145C(v33, v35, v136);

      *(v31 + 14) = v36;
      *(v31 + 22) = 2080;
      v37 = UUID.uuidString.getter();
      v39 = v38;
      sub_10013AF64(v115, type metadata accessor for InheritanceHealthRecord);
      v40 = sub_10021145C(v37, v39, v136);

      *(v31 + 24) = v40;
      *(v31 + 32) = 2080;
      *(v31 + 34) = sub_10021145C(v123, logb, v136);
      _os_log_impl(&_mh_execute_header, v24, v131, "Couldn't find existing share, so throwing the same error %@, recordID: %s, zone: %s, participant: %s", v31, 0x2Au);
      sub_100008D3C(v120, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      v49 = *(v0 + 248);
      sub_10013AF64(*(v0 + 256), type metadata accessor for InheritanceHealthRecord);

      sub_10013AF64(v49, type metadata accessor for InheritanceHealthRecord);
    }

    v50 = *(v0 + 432);
    swift_getErrorValue();
    sub_100255F6C(-7065, *(v0 + 48), *(v0 + 56));
    swift_willThrow();
  }

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_10012E928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = v17;
  v8[3] = v18;
  v8[4] = sub_100005814(&unk_1003E1070, &unk_100344CE0);
  v8[5] = swift_task_alloc();
  type metadata accessor for CloudShareInfo(0);
  v13 = swift_task_alloc();
  v8[6] = v13;
  v14 = swift_task_alloc();
  v8[7] = v14;
  *v14 = v8;
  v14[1] = sub_10012EA84;

  return sub_100123608(v13, a5, a6, a7, a8);
}

uint64_t sub_10012EA84()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10013B038;
  }

  else
  {
    v2 = sub_10013B018;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012EB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = v17;
  v8[3] = v18;
  v8[4] = sub_100005814(&unk_1003E1070, &unk_100344CE0);
  v8[5] = swift_task_alloc();
  type metadata accessor for CloudShareInfo(0);
  v13 = swift_task_alloc();
  v8[6] = v13;
  v14 = swift_task_alloc();
  v8[7] = v14;
  *v14 = v8;
  v14[1] = sub_10012ECF4;

  return sub_100127340(v13, a5, a6, a7, a8);
}

uint64_t sub_10012ECF4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10012EEFC;
  }

  else
  {
    v2 = sub_10012EE08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012EE08()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  sub_10013AEFC(v1, v2, type metadata accessor for CloudShareInfo);
  swift_storeEnumTagMultiPayload();
  v3(v2);
  sub_100008D3C(v2, &unk_1003E1070, &unk_100344CE0);
  sub_10013AF64(v1, type metadata accessor for CloudShareInfo);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10012EEFC()
{
  v1 = v0[5];
  v2 = v0[2];
  *v1 = v0[8];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v2(v1);

  sub_100008D3C(v1, &unk_1003E1070, &unk_100344CE0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10012EFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = v17;
  v8[3] = v18;
  v8[4] = sub_100005814(&unk_1003E1070, &unk_100344CE0);
  v8[5] = swift_task_alloc();
  type metadata accessor for CloudShareInfo(0);
  v13 = swift_task_alloc();
  v8[6] = v13;
  v14 = swift_task_alloc();
  v8[7] = v14;
  *v14 = v8;
  v14[1] = sub_10012EA84;

  return sub_10012AEEC(v13, a5, a6, a7, a8);
}

uint64_t sub_10012F118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = v10;
  v8[23] = v11;
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[16] = a3;
  v8[17] = a4;
  v8[15] = a2;
  return _swift_task_switch(sub_10012F150, 0, 0);
}

uint64_t sub_10012F150()
{
  v22 = v2;
  v3 = v2[15];
  v4 = swift_beginAccess();
  v5 = *(v3 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_19;
  }

  v8 = v2[16];
  *(v2[15] + 16) = v7;
  if (v8)
  {
    v0 = (v2[16])(v4);
  }

  else
  {
    v0 = 0;
  }

  v2[24] = v0;
  v1 = v2[19];
  if (v1)
  {
    if (qword_1003D7F20 == -1)
    {
LABEL_7:
      v9 = type metadata accessor for Logger();
      sub_100008D04(v9, qword_1003FAA40);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = v2[18];
        v13 = v2[15];
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v21 = v15;
        *v14 = 136315394;
        *(v14 + 4) = sub_10021145C(v12, v1, &v21);
        *(v14 + 12) = 2048;
        swift_beginAccess();
        *(v14 + 14) = *(v13 + 16);

        _os_log_impl(&_mh_execute_header, v10, v11, "Performing: %s, attempt: %ld...", v14, 0x16u);
        sub_10000839C(v15);
      }

      else
      {
      }

      goto LABEL_11;
    }

LABEL_19:
    swift_once();
    goto LABEL_7;
  }

LABEL_11:
  if (v0)
  {
    v16 = v0;
    v0 = [v16 eventName];
    if (!v0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v0 = String._bridgeToObjectiveC()();
    }
  }

  sub_100257274(v0);
  v17 = v2[20];

  v20 = (v17 + *v17);
  v18 = swift_task_alloc();
  v2[25] = v18;
  *v18 = v2;
  v18[1] = sub_10012F6E0;

  return v20();
}

uint64_t sub_10012F6E0()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_10012FA20;
  }

  else
  {
    v2 = sub_10012F7F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012F7F4()
{
  v14 = v0;
  v1 = v0[19];
  if (v1)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA40);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[18];
      v6 = v0[15];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315394;
      *(v7 + 4) = sub_10021145C(v5, v1, &v13);
      *(v7 + 12) = 2048;
      swift_beginAccess();
      *(v7 + 14) = *(v6 + 16);

      _os_log_impl(&_mh_execute_header, v3, v4, "✅ %s - successfully completed after %ld attempts!", v7, 0x16u);
      sub_10000839C(v8);
    }

    else
    {
    }
  }

  v9 = v0[24];
  if (v9)
  {
    [v9 updateTaskResultWithError:0];
    v10 = v0[24];
    if (!v0[22])
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = 0;
  if (v0[22])
  {
LABEL_10:
    swift_getObjectType();
    sub_100246FA8(v10);
    v10 = v0[24];
  }

LABEL_11:

  v11 = v0[1];

  return v11();
}

uint64_t sub_10012FA20(uint64_t a1)
{
  v21 = v1;
  v2 = v1[19];
  if (v2)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAA40);

    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v1[23];
      v7 = v1[18];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v8 = 136315650;
      *(v8 + 4) = sub_10021145C(v7, v2, &v20);
      *(v8 + 12) = 2048;
      *(v8 + 14) = v6;
      *(v8 + 22) = 2112;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 24) = v11;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "❌ %s - failed with error after %ld retries: %@", v8, 0x20u);
      sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v10);
    }
  }

  v12 = v1[24];
  if (v12)
  {
    swift_getErrorValue();
    v13 = v1[6];
    v14 = v1[7];
    v15 = v12;
    sub_1002DEA80(v13, v14);
    v16 = _convertErrorToNSError(_:)();

    [v15 updateTaskResultWithError:v16];

    v17 = v1[24];
    if (!v1[22])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v17 = 0;
  if (v1[22])
  {
LABEL_9:
    swift_getObjectType();
    sub_100246FA8(v17);
    v17 = v1[24];
  }

LABEL_10:
  swift_willThrow();

  v18 = v1[1];

  return v18();
}

uint64_t sub_10012FCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = v10;
  v8[24] = v11;
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[17] = a3;
  v8[18] = a4;
  v8[15] = a1;
  v8[16] = a2;
  return _swift_task_switch(sub_10012FD10, 0, 0);
}

uint64_t sub_10012FD10()
{
  v23 = v2;
  v3 = v2[16];
  v4 = swift_beginAccess();
  v5 = *(v3 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_19;
  }

  v8 = v2[17];
  *(v2[16] + 16) = v7;
  if (v8)
  {
    v0 = (v2[17])(v4);
  }

  else
  {
    v0 = 0;
  }

  v2[25] = v0;
  v1 = v2[20];
  if (v1)
  {
    if (qword_1003D7F20 == -1)
    {
LABEL_7:
      v9 = type metadata accessor for Logger();
      sub_100008D04(v9, qword_1003FAA40);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = v2[19];
        v13 = v2[16];
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v22 = v15;
        *v14 = 136315394;
        *(v14 + 4) = sub_10021145C(v12, v1, &v22);
        *(v14 + 12) = 2048;
        swift_beginAccess();
        *(v14 + 14) = *(v13 + 16);

        _os_log_impl(&_mh_execute_header, v10, v11, "Performing: %s, attempt: %ld...", v14, 0x16u);
        sub_10000839C(v15);
      }

      else
      {
      }

      goto LABEL_11;
    }

LABEL_19:
    swift_once();
    goto LABEL_7;
  }

LABEL_11:
  if (v0)
  {
    v16 = v0;
    v0 = [v16 eventName];
    if (!v0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v0 = String._bridgeToObjectiveC()();
    }
  }

  sub_100257274(v0);
  v17 = v2[21];

  v21 = (v17 + *v17);
  v18 = swift_task_alloc();
  v2[26] = v18;
  *v18 = v2;
  v18[1] = sub_1001302A8;
  v19 = v2[15];

  return v21(v19);
}

uint64_t sub_1001302A8()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1001305E8;
  }

  else
  {
    v2 = sub_1001303BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001303BC()
{
  v14 = v0;
  v1 = v0[20];
  if (v1)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA40);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[19];
      v6 = v0[16];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315394;
      *(v7 + 4) = sub_10021145C(v5, v1, &v13);
      *(v7 + 12) = 2048;
      swift_beginAccess();
      *(v7 + 14) = *(v6 + 16);

      _os_log_impl(&_mh_execute_header, v3, v4, "✅ %s - successfully completed after %ld attempts!", v7, 0x16u);
      sub_10000839C(v8);
    }

    else
    {
    }
  }

  v9 = v0[25];
  if (v9)
  {
    [v9 updateTaskResultWithError:0];
    v10 = v0[25];
    if (!v0[23])
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = 0;
  if (v0[23])
  {
LABEL_10:
    swift_getObjectType();
    sub_100246FA8(v10);
    v10 = v0[25];
  }

LABEL_11:

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001305E8(uint64_t a1)
{
  v21 = v1;
  v2 = v1[20];
  if (v2)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAA40);

    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v1[24];
      v7 = v1[19];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v8 = 136315650;
      *(v8 + 4) = sub_10021145C(v7, v2, &v20);
      *(v8 + 12) = 2048;
      *(v8 + 14) = v6;
      *(v8 + 22) = 2112;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 24) = v11;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "❌ %s - failed with error after %ld retries: %@", v8, 0x20u);
      sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v10);
    }
  }

  v12 = v1[25];
  if (v12)
  {
    swift_getErrorValue();
    v13 = v1[6];
    v14 = v1[7];
    v15 = v12;
    sub_1002DEA80(v13, v14);
    v16 = _convertErrorToNSError(_:)();

    [v15 updateTaskResultWithError:v16];

    v17 = v1[25];
    if (!v1[23])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v17 = 0;
  if (v1[23])
  {
LABEL_9:
    swift_getObjectType();
    sub_100246FA8(v17);
    v17 = v1[25];
  }

LABEL_10:
  swift_willThrow();

  v18 = v1[1];

  return v18();
}

uint64_t sub_1001308A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = v10;
  v8[24] = v11;
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[17] = a3;
  v8[18] = a4;
  v8[15] = a1;
  v8[16] = a2;
  return _swift_task_switch(sub_1001308D8, 0, 0);
}

uint64_t sub_1001308D8()
{
  v23 = v2;
  v3 = v2[16];
  v4 = swift_beginAccess();
  v5 = *(v3 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_19;
  }

  v8 = v2[17];
  *(v2[16] + 16) = v7;
  if (v8)
  {
    v0 = (v2[17])(v4);
  }

  else
  {
    v0 = 0;
  }

  v2[25] = v0;
  v1 = v2[20];
  if (v1)
  {
    if (qword_1003D7F20 == -1)
    {
LABEL_7:
      v9 = type metadata accessor for Logger();
      sub_100008D04(v9, qword_1003FAA40);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = v2[19];
        v13 = v2[16];
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v22 = v15;
        *v14 = 136315394;
        *(v14 + 4) = sub_10021145C(v12, v1, &v22);
        *(v14 + 12) = 2048;
        swift_beginAccess();
        *(v14 + 14) = *(v13 + 16);

        _os_log_impl(&_mh_execute_header, v10, v11, "Performing: %s, attempt: %ld...", v14, 0x16u);
        sub_10000839C(v15);
      }

      else
      {
      }

      goto LABEL_11;
    }

LABEL_19:
    swift_once();
    goto LABEL_7;
  }

LABEL_11:
  if (v0)
  {
    v16 = v0;
    v0 = [v16 eventName];
    if (!v0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v0 = String._bridgeToObjectiveC()();
    }
  }

  sub_100257274(v0);
  v17 = v2[21];

  v21 = (v17 + *v17);
  v18 = swift_task_alloc();
  v2[26] = v18;
  *v18 = v2;
  v18[1] = sub_100130E70;
  v19 = v2[15];

  return v21(v19);
}

uint64_t sub_100130E70()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_10013B03C;
  }

  else
  {
    v2 = sub_10013B028;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100130F84(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v75 = a2;
  v76 = a5;
  v74 = a4;
  v7 = sub_100005814(&unk_1003E1070, &unk_100344CE0);
  __chkstk_darwin(v7);
  v9 = (v61 - v8);
  v10 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v10 - 8);
  v68 = v61 - v11;
  v71 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v13 = v61 - v12;
  v14 = type metadata accessor for UUID();
  v63 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v65 = *(v17 - 8);
  v18 = *(v65 + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v67 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v66 = v61 - v21;
  __chkstk_darwin(v20);
  v23 = v61 - v22;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  sub_100008D04(v64, qword_1003FAA88);
  v73 = a1;
  sub_10013AEFC(a1, v23, type metadata accessor for CustodianRecoveryInfoRecord);

  v24 = Logger.logObject.getter();
  v25 = a3;
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v24, v26);
  v69 = v25;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v61[2] = v7;
    v29 = v28;
    v30 = swift_slowAlloc();
    v62 = v9;
    v61[1] = v30;
    v80[0] = v30;
    *v29 = 136315650;
    *(v29 + 4) = sub_10021145C(v75, v25, v80);
    *(v29 + 12) = 2080;
    v31 = v63;
    (*(v63 + 16))(v16, v23, v14);
    sub_10013AF64(v23, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v31 + 8))(v16, v14);
    v35 = sub_10021145C(v32, v34, v80);

    *(v29 + 14) = v35;
    *(v29 + 22) = 2080;
    *(v29 + 24) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, v80);
    _os_log_impl(&_mh_execute_header, v24, v26, "Storage Controller: Attempting to share a record zone with participant: %s, recordID: %s, type: %s", v29, 0x20u);
    swift_arrayDestroy();
    v9 = v62;
  }

  else
  {
    sub_10013AF64(v23, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v36 = v70;
  v37 = v71;
  (*(v70 + 16))(v13, v72 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v71);
  Dependency.wrappedValue.getter();
  (*(v36 + 8))(v13, v37);
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  v38 = swift_dynamicCast();
  v39 = v73;
  if (v38)
  {
    sub_10003E950(v77, v80);
    v72 = sub_1000080F8(v80, v80[3]);
    v40 = v66;
    sub_10013AEFC(v39, v66, type metadata accessor for CustodianRecoveryInfoRecord);
    v41 = *(v65 + 80);
    v42 = (v41 + 32) & ~v41;
    v43 = v18 + 7;
    v44 = swift_allocObject();
    v45 = v69;
    *(v44 + 16) = v75;
    *(v44 + 24) = v45;
    sub_100135E20(v40, v44 + v42, type metadata accessor for CustodianRecoveryInfoRecord);
    v46 = (v44 + ((v43 + v42) & 0xFFFFFFFFFFFFFFF8));
    v47 = v76;
    *v46 = v74;
    v46[1] = v47;
    v74 = *v72;
    v48 = type metadata accessor for TaskPriority();
    v49 = v68;
    (*(*(v48 - 8) + 56))(v68, 1, 1, v48);
    v50 = v39;
    v51 = v67;
    sub_10013AEFC(v50, v67, type metadata accessor for CustodianRecoveryInfoRecord);
    v52 = (v41 + 40) & ~v41;
    v53 = (v43 + v52) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    v54[2] = 0;
    v54[3] = 0;
    v54[4] = v74;
    sub_100135E20(v51, v54 + v52, type metadata accessor for CustodianRecoveryInfoRecord);
    v55 = (v54 + v53);
    *v55 = v75;
    v55[1] = v45;
    v55[2] = 3;
    v56 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
    *v56 = sub_100134058;
    v56[1] = v44;
    swift_bridgeObjectRetain_n();

    sub_1000BCD5C(0, 0, v49, &unk_1003432C0, v54);

    return sub_10000839C(v80);
  }

  else
  {
    v78 = 0;
    memset(v77, 0, sizeof(v77));
    sub_100008D3C(v77, &unk_1003DB050, &qword_10033FA60);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    sub_100008D04(v64, qword_1003FAAE8);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Storage Controller: This is unexpected! Cloud storage does not conform to CloudKitSharing protocol.", v60, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v79 = -7000;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v9 = v80[0];
    swift_storeEnumTagMultiPayload();
    v74(v9);
    return sub_100008D3C(v9, &unk_1003E1070, &unk_100344CE0);
  }
}

uint64_t sub_100131914(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v57 = a6;
  v58 = a5;
  v53 = a2;
  v55 = type metadata accessor for UUID();
  v9 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v50 - v15;
  v17 = type metadata accessor for CloudShareInfo(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100005814(&unk_1003E1070, &unk_100344CE0);
  v21 = __chkstk_darwin(v20);
  v23 = (&v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v25 = (&v50 - v24);
  sub_100135DB0(a1, &v50 - v24);
  v56 = v20;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v25;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAA88);
    sub_10013AEFC(a4, v14, type metadata accessor for CustodianRecoveryInfoRecord);

    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v59 = v52;
      *v30 = 136315906;
      *(v30 + 4) = sub_10021145C(v53, a3, &v59);
      *(v30 + 12) = 2080;
      v31 = v54;
      v32 = v55;
      (*(v9 + 16))(v54, v14, v55);
      sub_10013AF64(v14, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v9 + 8))(v31, v32);
      v36 = sub_10021145C(v33, v35, &v59);

      *(v30 + 14) = v36;
      *(v30 + 22) = 2080;
      *(v30 + 24) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, &v59);
      *(v30 + 32) = 2112;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 34) = v37;
      v38 = v51;
      *v51 = v37;
      _os_log_impl(&_mh_execute_header, v28, v29, "Storage Controller: Failed to shared a record zone with participant: %s, recordID: %s, type: %s, error: %@", v30, 0x2Au);
      sub_100008D3C(v38, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10013AF64(v14, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    *v23 = v26;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v58(v23);

    return sub_100008D3C(v23, &unk_1003E1070, &unk_100344CE0);
  }

  else
  {
    sub_100135E20(v25, v19, type metadata accessor for CloudShareInfo);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100008D04(v39, qword_1003FAA88);
    sub_10013AEFC(a4, v16, type metadata accessor for CustodianRecoveryInfoRecord);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v59 = v52;
      *v42 = 136315650;
      *(v42 + 4) = sub_10021145C(v53, a3, &v59);
      *(v42 + 12) = 2080;
      v43 = v54;
      v44 = v55;
      (*(v9 + 16))(v54, v16, v55);
      sub_10013AF64(v16, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      (*(v9 + 8))(v43, v44);
      v48 = sub_10021145C(v45, v47, &v59);

      *(v42 + 14) = v48;
      *(v42 + 22) = 2080;
      *(v42 + 24) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, &v59);
      _os_log_impl(&_mh_execute_header, v40, v41, "Storage Controller: Successfully shared a record zone with participant: %s, recordID: %s, type: %s", v42, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10013AF64(v16, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    sub_10013AEFC(v19, v23, type metadata accessor for CloudShareInfo);
    swift_storeEnumTagMultiPayload();
    v58(v23);
    sub_100008D3C(v23, &unk_1003E1070, &unk_100344CE0);
    return sub_10013AF64(v19, type metadata accessor for CloudShareInfo);
  }
}

uint64_t sub_100132128(uint64_t (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

uint64_t sub_100132164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_100005814(&unk_1003DEBD0, &qword_1003432B0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  sub_100130F84(a3, a4, a5, sub_100133DF4, v14);
}

uint64_t sub_1001322D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a4;
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1000082A8;

  return sub_10012E928(a1, a2, a3, v15, a5, a6, a7, a8);
}

void *sub_1001323C8(uint64_t a1)
{
  v2 = type metadata accessor for EntityIdentifier();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100005814(&qword_1003DEC48, &qword_100343370);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10013AFC4(&qword_1003DEC50, &type metadata accessor for EntityIdentifier, &protocol conformance descriptor for EntityIdentifier);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_10013AFC4(&qword_1003DEC58, &type metadata accessor for EntityIdentifier, &protocol conformance descriptor for EntityIdentifier);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1001326E8(uint64_t a1)
{
  v1[31] = a1;
  v2 = type metadata accessor for UUID();
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();

  return _swift_task_switch(sub_1001327D8, 0, 0);
}

uint64_t sub_1001327D8()
{
  v1 = v0[38];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v5 = *(v3 + 16);
  v0[39] = v5;
  v0[40] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v0[41] = UUID.uuidString.getter();
  v0[42] = v7;
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(v0[31] + *(v6 + 40)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9C0;
  }

  v9 = *v8;
  v10 = v8[1];

  v11 = sub_1002E2BC4(v9, v10);

  v12 = [v11 privateCloudDatabase];
  v0[43] = v12;

  sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
  v13 = UUID.uuidString.getter();
  v15 = v14;
  v16._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16._object = v17;
  v18._countAndFlagsBits = v13;
  v18._object = v15;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v18, v16).super.isa;
  v0[44] = isa;
  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  v23 = isa;
  v24._countAndFlagsBits = v20;
  v24._object = v22;
  v25 = CKRecordID.init(recordName:zoneID:)(v24, v23).super.isa;
  v0[45] = v25;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_100132B00;
  v26 = swift_continuation_init();
  v0[17] = sub_100005814(&qword_1003DEC10, &qword_1003432F8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000B070;
  v0[13] = &unk_1003AA700;
  v0[14] = v26;
  [v12 fetchRecordWithID:v25 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100132B00()
{
  v1 = *(*v0 + 48);
  *(*v0 + 368) = v1;
  if (v1)
  {
    v2 = sub_10013B02C;
  }

  else
  {
    v2 = sub_10013B034;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100132C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 280) = a6;
  *(v7 + 128) = a5;
  *(v7 + 136) = v6;
  *(v7 + 112) = a3;
  *(v7 + 120) = a4;
  *(v7 + 96) = a1;
  *(v7 + 104) = a2;
  *(v7 + 144) = type metadata accessor for FetchRecoveryRecordsRequest(0);
  *(v7 + 152) = swift_task_alloc();
  v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v7 + 160) = v8;
  *(v7 + 168) = *(v8 - 8);
  *(v7 + 176) = swift_task_alloc();
  type metadata accessor for CustodianRecoveryInfoRecord(0);
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();
  v9 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  *(v7 + 200) = v9;
  *(v7 + 208) = *(v9 - 8);
  *(v7 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_100132DB8, 0, 0);
}

uint64_t sub_100132DB8()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  (*(v2 + 16))(v1, *(v0 + 136) + OBJC_IVAR____TtC13appleaccountd21AcceptedStatusHandler__accountStore, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v4 = [*(*sub_1000080F8((v0 + 16) *(v0 + 40)) + 16)];
  if (v4 && (v5 = v4, v6 = [v4 aa_altDSID], v5, v6))
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v11 = *(v0 + 168);
  v10 = *(v0 + 176);
  v12 = *(v0 + 160);
  v13 = *(v0 + 136);
  v14 = *(v0 + 112);
  v15 = *(v0 + 120);
  sub_10000839C((v0 + 16));
  v16 = kAAAnalyticsEventCustodianSetupProcessAcceptFetchRecoveryInfo;
  (*(v11 + 16))(v10, v13 + OBJC_IVAR____TtC13appleaccountd21AcceptedStatusHandler__analyticsReporter, v12);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v10, v12);
  *(v0 + 224) = *(v0 + 80);
  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);

  v17 = v16;

  v18 = sub_100245D38(v17, v7, v9, v14, v15);
  *(v0 + 232) = v18;
  if (v18)
  {
    v19 = *(v0 + 280);
    v20 = *(v0 + 128);
    v21 = v18;
    sub_100245E08(v20, v19 & 1);
  }

  sub_100257274(v17);
  v23 = *(v0 + 144);
  v22 = *(v0 + 152);
  v24 = *(v0 + 136);
  v25 = *(v0 + 112);
  v37 = *(v0 + 120);
  v26 = *(v0 + 96);
  v27 = type metadata accessor for CustodianRecord(0);
  *(v0 + 240) = v27;
  v28 = *(v27 + 20);
  v29 = type metadata accessor for UUID();
  (*(*(v29 - 8) + 16))(v22, v26 + v28, v29);
  *(v22 + v23[5]) = 1;
  v30 = v22 + v23[6];
  *v30 = 0;
  *(v30 + 8) = 1;
  *(v22 + v23[7]) = 1;
  v31 = (v22 + v23[8]);
  *v31 = v7;
  v31[1] = v9;
  v32 = (v22 + v23[9]);
  *v32 = v25;
  v32[1] = v37;
  sub_1000080F8((v24 + 56), *(v24 + 80));

  v33 = swift_task_alloc();
  *(v0 + 248) = v33;
  *v33 = v0;
  v33[1] = sub_100133250;
  v34 = *(v0 + 184);
  v35 = *(v0 + 152);

  return sub_100021548(v34, v35, 0, 0);
}

uint64_t sub_100133250()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1001334DC;
  }

  else
  {
    v2 = sub_100133364;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100133364()
{
  v1 = *(v0 + 232);
  sub_10013AF64(*(v0 + 152), type metadata accessor for FetchRecoveryRecordsRequest);
  if (v1)
  {
    v2 = *(v0 + 232);
    [v2 updateTaskResultWithError:0];
    swift_getObjectType();
    v3 = v2;
    sub_100246FA8(v2);
  }

  v4 = *(v0 + 240);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 280);
  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  swift_unknownObjectRelease();
  sub_100135E20(v5, v6, type metadata accessor for CustodianRecoveryInfoRecord);
  v10 = (v9 + *(v4 + 24));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v0 + 264) = v13;
  *v13 = v0;
  v13[1] = sub_100133674;
  v14 = *(v0 + 192);
  v15 = *(v0 + 128);
  v16 = *(v0 + 112);
  v17 = *(v0 + 120);

  return sub_100120D40(v14, v11, v12, v8 == 1, v16, v17, v15, v7 & 1);
}

uint64_t sub_1001334DC()
{
  sub_10013AF64(v0[19], type metadata accessor for FetchRecoveryRecordsRequest);
  v1 = v0[29];
  swift_getErrorValue();
  sub_1002DEA80(v0[8], v0[9]);
  if (v1)
  {
    v2 = v0[29];
    v3 = v2;
    swift_errorRetain();
    v4 = _convertErrorToNSError(_:)();
    [v3 updateTaskResultWithError:v4];

    swift_getObjectType();
    v5 = v3;
    sub_100246FA8(v2);
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_100133674()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_100133914;
  }

  else
  {
    v2 = sub_100133788;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100133788()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Processing custodian accepted complete", v4, 2u);
  }

  v5 = *(v0 + 192);

  [objc_opt_self() postRecoveryContactChangedNotification];
  sub_10013AF64(v5, type metadata accessor for CustodianRecoveryInfoRecord);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100133914()
{
  sub_10013AF64(*(v0 + 192), type metadata accessor for CustodianRecoveryInfoRecord);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001339D0()
{

  return _swift_deallocObject(v0, 49);
}

uint64_t sub_100133A20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000082A8;

  return sub_100122468(a1, v4, v5, v7, v6);
}

uint64_t sub_100133AF0(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000EF88;

  return sub_10012FCD8(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100133BE4()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32);
}

Swift::Int sub_100133C24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005814(&qword_1003DEBC8, &qword_1003432A8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100133D60()
{
  v1 = sub_100005814(&unk_1003DEBD0, &qword_1003432B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100133DF4(uint64_t a1)
{
  sub_100005814(&unk_1003DEBD0, &qword_1003432B0);

  return sub_10030B6D0(a1);
}

uint64_t sub_100133E70()
{
  v1 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v11 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v6(v0 + v2 + v1[5], v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v7 = (v0 + v2 + v1[8]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v9 = v1[11];
  if (!(*(v5 + 48))(v3 + v9, 1, v4))
  {
    v6(v3 + v9, v4);
  }

  return _swift_deallocObject(v0, ((v11 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100134058(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecoveryInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_100131914(a1, v5, v6, v1 + v4, v8, v9);
}

uint64_t sub_1001340FC()
{
  v1 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v11 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v6(v0 + v2 + v1[5], v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v7 = (v0 + v2 + v1[8]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v9 = v1[11];
  if (!(*(v5 + 48))(v3 + v9, 1, v4))
  {
    v6(v3 + v9, v4);
  }

  return _swift_deallocObject(v0, ((((v11 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
}

void sub_100134300()
{
  type metadata accessor for CustodianRecoveryInfoRecord(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000082A8;

  JUMPOUT(0x1001322D0);
}

uint64_t sub_100134490(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = type metadata accessor for UUID();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  sub_100005814(&qword_1003E7500, &qword_10033EC30);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1001345E8, 0, 0);
}

uint64_t sub_1001345E8()
{
  v1 = v0[11];
  sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
  v2 = UUID.uuidString.getter();
  v4 = v3;
  v5._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5._object = v6;
  v7._countAndFlagsBits = v2;
  v7._object = v4;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v7, v5).super.isa;
  v0[22] = isa;
  v9 = [objc_allocWithZone(CKShare) initWithRecordZoneID:isa];
  v0[23] = v9;
  [v9 addParticipant:v1];
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(v0[10] + *(v0[17] + 40)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v10 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v10 = &qword_1003FA9C0;
  }

  v11 = *v10;
  v12 = v10[1];

  v13 = sub_1002E2BC4(v11, v12);

  v0[24] = [v13 privateCloudDatabase];

  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v14 = swift_allocObject();
  v0[25] = v14;
  *(v14 + 16) = xmmword_1003431D0;
  *(v14 + 32) = v9;
  v15 = v9;
  v16 = swift_task_alloc();
  v0[26] = v16;
  *v16 = v0;
  v16[1] = sub_10013487C;

  return CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)(v14, _swiftEmptyArrayStorage, 0, 1);
}

uint64_t sub_10013487C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[27] = a1;
  v4[28] = a2;
  v4[29] = v2;

  if (v2)
  {
    v5 = sub_100135980;
  }

  else
  {

    v5 = sub_10013499C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10013499C()
{
  v130 = v0;
  v2 = v0[27];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[27] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v126 = v0[27];

  v10 = 0;
  v128 = v0;
  if (!v8)
  {
    while (1)
    {
LABEL_5:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = *(v4 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA58);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Saved share record not found.", v22, 2u);
    }

    v23 = v0[23];
    v24 = v0[24];
    v25 = v0[22];

    type metadata accessor for AACustodianError(0);
    v0[9] = -7066;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    goto LABEL_16;
  }

  while (1)
  {
    v11 = v10;
LABEL_8:
    v12 = v0[23];
    v13 = __clz(__rbit64(v8)) | (v11 << 6);
    v14 = *(v126[6] + 8 * v13);
    v15 = v126[7] + 16 * v13;
    v16 = *v15;
    v17 = *(v15 + 8);
    sub_100016034(0, &qword_1003DEC00, NSObject_ptr);
    v1 = v14;
    sub_100135D08(v16, v17);
    v18 = [v12 recordID];
    LOBYTE(v12) = static NSObject.== infix(_:_:)();

    if (v12)
    {
      break;
    }

    v8 &= v8 - 1;
    sub_10005A40C(v16, v17);
    v10 = v11;
    v0 = v128;
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v126 = v16;
  v0 = v128;

  if (v17)
  {
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v45 = v128[21];
    v46 = v128[10];
    v47 = type metadata accessor for Logger();
    sub_100008D04(v47, qword_1003FAA58);
    sub_10013AEFC(v46, v45, type metadata accessor for CustodianRecoveryInfoRecord);
    swift_errorRetain();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    sub_10005A40C(v126, 1);
    v50 = os_log_type_enabled(v48, v49);
    v51 = v128[21];
    if (v50)
    {
      v52 = v128[13];
      v53 = v128[14];
      v54 = v128[12];
      v55 = swift_slowAlloc();
      loga = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v129[0] = v125;
      *v55 = 138412546;
      swift_errorRetain();
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 4) = v56;
      loga->isa = v56;
      *(v55 + 12) = 2080;
      (*(v52 + 16))(v53, v51, v54);
      sub_10013AF64(v51, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      v0 = v128;
      (*(v52 + 8))(v53, v54);
      v60 = sub_10021145C(v57, v59, v129);

      *(v55 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v48, v49, "Error creating CKShare: %@, recordID: %s", v55, 0x16u);
      sub_100008D3C(loga, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v125);
    }

    else
    {
      sub_10013AF64(v128[21], type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v75 = v0[23];
    v74 = v0[24];
    v76 = v0[22];
    swift_willThrow();
    sub_10005A40C(v126, 1);

LABEL_16:
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v26 = v0[18];
    v27 = v0[10];
    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAA58);
    sub_10013AEFC(v27, v26, type metadata accessor for CustodianRecoveryInfoRecord);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[18];
    if (v31)
    {
      v34 = v0[13];
      v33 = v0[14];
      v35 = v0[12];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v129[0] = v127;
      *v36 = 136315394;
      (*(v34 + 16))(v33, v32, v35);
      sub_10013AF64(v32, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (*(v34 + 8))(v33, v35);
      v41 = sub_10021145C(v38, v40, v129);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2112;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v42;
      *v37 = v42;
      _os_log_impl(&_mh_execute_header, v29, v30, "Error performing modify operation when sharing record with recordID: %s, error: %@", v36, 0x16u);
      sub_100008D3C(v37, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v127);
    }

    else
    {
      sub_10013AF64(v0[18], type metadata accessor for CustodianRecoveryInfoRecord);
    }

    swift_getErrorValue();
    sub_1002DEA80(v0[3], v0[4]);
    swift_willThrow();

    v43 = v0[1];

    return v43();
  }

  objc_opt_self();
  v61 = swift_dynamicCastObjCClass();
  v62 = qword_1003D7F28;
  if (!v61)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_100008D04(v77, qword_1003FAA58);
    v78 = v126;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    sub_10005A40C(v126, 0);
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v129[0] = v82;
      *v81 = 136315138;
      swift_getObjectType();
      v83 = _typeName(_:qualified:)();
      v85 = sub_10021145C(v83, v84, v129);

      *(v81 + 4) = v85;
      _os_log_impl(&_mh_execute_header, v79, v80, "Saved share record is of unexpected type. Expected CKShare, but found %s.", v81, 0xCu);
      sub_10000839C(v82);
    }

    v86 = v128[23];
    v87 = v128[24];
    v88 = v128[22];
    type metadata accessor for AACustodianError(0);
    v128[7] = -7083;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    sub_10005A40C(v126, 0);
    goto LABEL_16;
  }

  v124 = v61;
  v63 = v126;
  if (v62 != -1)
  {
    swift_once();
  }

  v65 = v128[19];
  v64 = v128[20];
  v66 = v128[10];
  v67 = type metadata accessor for Logger();
  sub_100008D04(v67, qword_1003FAA58);
  sub_10013AEFC(v66, v64, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_10013AEFC(v66, v65, type metadata accessor for CustodianRecoveryInfoRecord);
  v68 = v63;
  v1 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();
  sub_10005A40C(v126, 0);
  if (os_log_type_enabled(v1, v69))
  {
    v121 = v69;
    v9 = swift_slowAlloc();
    v129[0] = swift_slowAlloc();
    *v9 = 136315650;
    v70 = [v124 URL];
    if (v70)
    {
      v71 = v128;
      v72 = v70;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v73 = 0;
    }

    else
    {
LABEL_44:
      v73 = 1;
      v71 = v128;
    }

    v95 = v71[15];
    v94 = v71[16];
    v96 = type metadata accessor for URL();
    v97 = *(v96 - 8);
    (*(v97 + 56))(v95, v73, 1, v96);
    sub_100135D14(v95, v94);
    v98 = (*(v97 + 48))(v94, 1, v96);
    v99 = v71[16];
    log = v1;
    if (v98 == 1)
    {
      sub_100008D3C(v99, &qword_1003E7500, &qword_10033EC30);
      v100 = 0xE500000000000000;
      v101 = 0x3E6C696E3CLL;
    }

    else
    {
      v101 = URL.absoluteString.getter();
      v100 = v102;
      (*(v97 + 8))(v99, v96);
    }

    v119 = v71[23];
    v120 = v71[24];
    v118 = v71[22];
    v103 = v71[20];
    v104 = v128[19];
    v105 = v128[14];
    v106 = v128[13];
    v107 = v128[12];
    v108 = sub_10021145C(v101, v100, v129);

    *(v9 + 4) = v108;
    *(v9 + 12) = 2080;
    (*(v106 + 16))(v105, v103, v107);
    sub_10013AF64(v103, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v109 = dispatch thunk of CustomStringConvertible.description.getter();
    v111 = v110;
    (*(v106 + 8))(v105, v107);
    v112 = sub_10021145C(v109, v111, v129);

    *(v9 + 14) = v112;
    *(v9 + 22) = 2080;
    v113 = UUID.uuidString.getter();
    v115 = v114;
    v93 = v128;
    sub_10013AF64(v104, type metadata accessor for CustodianRecoveryInfoRecord);
    v116 = sub_10021145C(v113, v115, v129);

    *(v9 + 24) = v116;
    _os_log_impl(&_mh_execute_header, log, v121, "Successfully created CKShare %s for recordID: %s, zone: %s", v9, 0x20u);
    swift_arrayDestroy();

    sub_10005A40C(v126, 0);
  }

  else
  {
    v89 = v128[23];
    v90 = v128[24];
    v91 = v128[22];
    v92 = v128[19];
    sub_10013AF64(v128[20], type metadata accessor for CustodianRecoveryInfoRecord);

    sub_10005A40C(v126, 0);
    sub_10013AF64(v92, type metadata accessor for CustodianRecoveryInfoRecord);
    v93 = v128;
  }

  v117 = v93[1];

  return v117(v124);
}

uint64_t sub_100135980()
{
  v25 = v0;
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];

  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v4 = v0[18];
  v5 = v0[10];
  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAA58);
  sub_10013AEFC(v5, v4, type metadata accessor for CustodianRecoveryInfoRecord);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  if (v9)
  {
    v11 = v0[13];
    v12 = v0[14];
    v13 = v0[12];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v14 = 136315394;
    (*(v11 + 16))(v12, v10, v13);
    sub_10013AF64(v10, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v11 + 8))(v12, v13);
    v19 = sub_10021145C(v16, v18, &v24);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v20;
    *v15 = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error performing modify operation when sharing record with recordID: %s, error: %@", v14, 0x16u);
    sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v23);
  }

  else
  {
    sub_10013AF64(v0[18], type metadata accessor for CustodianRecoveryInfoRecord);
  }

  swift_getErrorValue();
  sub_1002DEA80(v0[3], v0[4]);
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

id sub_100135D08(void *a1, char a2)
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

uint64_t sub_100135D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100135DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&unk_1003E1070, &unk_100344CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100135E20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100135E88(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = type metadata accessor for UUID();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  sub_100005814(&qword_1003E7500, &qword_10033EC30);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for BeneficiaryInfoRecord(0);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100135FE0, 0, 0);
}

uint64_t sub_100135FE0()
{
  v1 = v0[11];
  sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
  v2 = UUID.uuidString.getter();
  v4 = v3;
  v5._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5._object = v6;
  v7._countAndFlagsBits = v2;
  v7._object = v4;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v7, v5).super.isa;
  v0[22] = isa;
  v9 = [objc_allocWithZone(CKShare) initWithRecordZoneID:isa];
  v0[23] = v9;
  [v9 addParticipant:v1];
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(v0[10] + *(v0[17] + 40)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v10 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v10 = &qword_1003FA9F0;
  }

  v11 = *v10;
  v12 = v10[1];

  v13 = sub_1002E2BC4(v11, v12);

  v0[24] = [v13 privateCloudDatabase];

  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v14 = swift_allocObject();
  v0[25] = v14;
  *(v14 + 16) = xmmword_1003431D0;
  *(v14 + 32) = v9;
  v15 = v9;
  v16 = swift_task_alloc();
  v0[26] = v16;
  *v16 = v0;
  v16[1] = sub_100136268;

  return CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)(v14, _swiftEmptyArrayStorage, 0, 1);
}

uint64_t sub_100136268(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[27] = a1;
  v4[28] = a2;
  v4[29] = v2;

  if (v2)
  {
    v5 = sub_100137364;
  }

  else
  {

    v5 = sub_100136388;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100136388()
{
  v133 = v0;
  v1 = v0[27];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(v0[27] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v129 = v0[27];

  v9 = 0;
  v131 = v0;
  if (!v7)
  {
    while (1)
    {
LABEL_5:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v3 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA58);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Saved share record not found.", v22, 2u);
    }

    v23 = v0[23];
    v24 = v0[24];
    v25 = v0[22];

    type metadata accessor for AACustodianError(0);
    v0[9] = -7066;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    goto LABEL_16;
  }

  while (1)
  {
    v10 = v9;
LABEL_8:
    v11 = v0[23];
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = *(v129[6] + 8 * v12);
    v14 = v129[7] + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    sub_100016034(0, &qword_1003DEC00, NSObject_ptr);
    v17 = v13;
    sub_100135D08(v15, v16);
    v18 = [v11 recordID];
    LOBYTE(v11) = static NSObject.== infix(_:_:)();

    if (v11)
    {
      break;
    }

    v7 &= v7 - 1;
    sub_10005A40C(v15, v16);
    v9 = v10;
    v0 = v131;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v129 = v15;
  v0 = v131;

  if (v16)
  {
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v45 = v131[21];
    v46 = v131[10];
    v47 = type metadata accessor for Logger();
    sub_100008D04(v47, qword_1003FAA58);
    sub_10013AEFC(v46, v45, type metadata accessor for BeneficiaryInfoRecord);
    swift_errorRetain();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    sub_10005A40C(v129, 1);
    v50 = os_log_type_enabled(v48, v49);
    v51 = v131[21];
    if (v50)
    {
      v52 = v131[17];
      v53 = v131[13];
      v54 = v131[14];
      v55 = v131[12];
      v56 = swift_slowAlloc();
      logb = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v132[0] = v128;
      *v56 = 138412546;
      swift_errorRetain();
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 4) = v57;
      logb->isa = v57;
      *(v56 + 12) = 2080;
      (*(v53 + 16))(v54, v51 + *(v52 + 32), v55);
      sub_10013AF64(v51, type metadata accessor for BeneficiaryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v0 = v131;
      (*(v53 + 8))(v54, v55);
      v61 = sub_10021145C(v58, v60, v132);

      *(v56 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v48, v49, "Error creating CKShare: %@, recordID: %s", v56, 0x16u);
      sub_100008D3C(logb, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v128);
    }

    else
    {
      sub_10013AF64(v131[21], type metadata accessor for BeneficiaryInfoRecord);
    }

    v75 = v0[23];
    v74 = v0[24];
    v76 = v0[22];
    swift_willThrow();
    sub_10005A40C(v129, 1);

LABEL_16:
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v26 = v0[18];
    v27 = v0[10];
    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAA58);
    sub_10013AEFC(v27, v26, type metadata accessor for BeneficiaryInfoRecord);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[18];
    if (v31)
    {
      v33 = v0[17];
      v35 = v0[13];
      v34 = v0[14];
      v36 = v0[12];
      v37 = swift_slowAlloc();
      loga = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v132[0] = v130;
      *v37 = 136315394;
      (*(v35 + 16))(v34, v32 + *(v33 + 32), v36);
      sub_10013AF64(v32, type metadata accessor for BeneficiaryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (*(v35 + 8))(v34, v36);
      v41 = sub_10021145C(v38, v40, v132);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2112;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v42;
      loga->isa = v42;
      _os_log_impl(&_mh_execute_header, v29, v30, "Error performing modify operation when sharing record with recordID: %s, error: %@", v37, 0x16u);
      sub_100008D3C(loga, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v130);
    }

    else
    {
      sub_10013AF64(v0[18], type metadata accessor for BeneficiaryInfoRecord);
    }

    swift_getErrorValue();
    sub_1002DEA80(v0[3], v0[4]);
    swift_willThrow();

    v43 = v0[1];

    return v43();
  }

  objc_opt_self();
  v62 = swift_dynamicCastObjCClass();
  v63 = qword_1003D7F28;
  if (!v62)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_100008D04(v77, qword_1003FAA58);
    v78 = v129;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    sub_10005A40C(v129, 0);
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v132[0] = v82;
      *v81 = 136315138;
      swift_getObjectType();
      v83 = _typeName(_:qualified:)();
      v85 = sub_10021145C(v83, v84, v132);

      *(v81 + 4) = v85;
      _os_log_impl(&_mh_execute_header, v79, v80, "Saved share record is of unexpected type. Expected CKShare, but found %s.", v81, 0xCu);
      sub_10000839C(v82);
    }

    v86 = v131[23];
    v87 = v131[24];
    v88 = v131[22];
    type metadata accessor for AACustodianError(0);
    v131[7] = -7083;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    sub_10005A40C(v129, 0);
    goto LABEL_16;
  }

  v127 = v62;
  v64 = v129;
  if (v63 != -1)
  {
    swift_once();
  }

  v65 = v131[19];
  v10 = v131[20];
  v66 = v131[10];
  v67 = type metadata accessor for Logger();
  sub_100008D04(v67, qword_1003FAA58);
  sub_10013AEFC(v66, v10, type metadata accessor for BeneficiaryInfoRecord);
  sub_10013AEFC(v66, v65, type metadata accessor for BeneficiaryInfoRecord);
  v68 = v64;
  v69 = Logger.logObject.getter();
  LOBYTE(v10) = static os_log_type_t.default.getter();
  sub_10005A40C(v129, 0);
  if (os_log_type_enabled(v69, v10))
  {
    v8 = swift_slowAlloc();
    v132[0] = swift_slowAlloc();
    *v8 = 136315650;
    v70 = [v127 URL];
    log = v69;
    if (v70)
    {
      v71 = v131;
      v72 = v70;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v73 = 0;
    }

    else
    {
LABEL_44:
      v73 = 1;
      v71 = v131;
    }

    v95 = v71[15];
    v94 = v71[16];
    v96 = v71;
    v97 = type metadata accessor for URL();
    v98 = *(v97 - 8);
    (*(v98 + 56))(v95, v73, 1, v97);
    sub_100135D14(v95, v94);
    v99 = (*(v98 + 48))(v94, 1, v97);
    v100 = v96[16];
    v123 = v10;
    if (v99 == 1)
    {
      sub_100008D3C(v100, &qword_1003E7500, &qword_10033EC30);
      v101 = 0xE500000000000000;
      v102 = 0x3E6C696E3CLL;
    }

    else
    {
      v102 = URL.absoluteString.getter();
      v101 = v103;
      (*(v98 + 8))(v100, v97);
    }

    v93 = v131;
    v121 = v131[23];
    v122 = v131[24];
    v120 = v131[22];
    v105 = v131[19];
    v104 = v131[20];
    v106 = v131[17];
    v108 = v131[13];
    v107 = v131[14];
    v109 = v131[12];
    v110 = sub_10021145C(v102, v101, v132);

    *(v8 + 4) = v110;
    *(v8 + 12) = 2080;
    (*(v108 + 16))(v107, v104 + *(v106 + 32), v109);
    sub_10013AF64(v104, type metadata accessor for BeneficiaryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v111 = dispatch thunk of CustomStringConvertible.description.getter();
    v113 = v112;
    (*(v108 + 8))(v107, v109);
    v114 = sub_10021145C(v111, v113, v132);

    *(v8 + 14) = v114;
    *(v8 + 22) = 2080;
    v115 = UUID.uuidString.getter();
    v117 = v116;
    sub_10013AF64(v105, type metadata accessor for BeneficiaryInfoRecord);
    v118 = sub_10021145C(v115, v117, v132);

    *(v8 + 24) = v118;
    _os_log_impl(&_mh_execute_header, log, v123, "Successfully created CKShare %s for recordID: %s, zone: %s", v8, 0x20u);
    swift_arrayDestroy();

    sub_10005A40C(v129, 0);
  }

  else
  {
    v89 = v131[23];
    v90 = v131[24];
    v91 = v131[22];
    v92 = v131[19];
    sub_10013AF64(v131[20], type metadata accessor for BeneficiaryInfoRecord);

    sub_10005A40C(v129, 0);
    sub_10013AF64(v92, type metadata accessor for BeneficiaryInfoRecord);
    v93 = v131;
  }

  v119 = v93[1];

  return v119(v127);
}

uint64_t sub_100137364()
{
  v26 = v0;
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];

  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v4 = v0[18];
  v5 = v0[10];
  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAA58);
  sub_10013AEFC(v5, v4, type metadata accessor for BeneficiaryInfoRecord);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  if (v9)
  {
    v11 = v0[17];
    v12 = v0[13];
    v13 = v0[14];
    v14 = v0[12];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v15 = 136315394;
    (*(v12 + 16))(v13, v10 + *(v11 + 32), v14);
    sub_10013AF64(v10, type metadata accessor for BeneficiaryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v12 + 8))(v13, v14);
    v20 = sub_10021145C(v17, v19, &v25);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v21;
    *v16 = v21;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error performing modify operation when sharing record with recordID: %s, error: %@", v15, 0x16u);
    sub_100008D3C(v16, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v24);
  }

  else
  {
    sub_10013AF64(v0[18], type metadata accessor for BeneficiaryInfoRecord);
  }

  swift_getErrorValue();
  sub_1002DEA80(v0[3], v0[4]);
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_1001376F4(uint64_t a1)
{
  v1[31] = a1;
  v2 = type metadata accessor for UUID();
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();

  return _swift_task_switch(sub_1001377E4, 0, 0);
}

uint64_t sub_1001377E4()
{
  v1 = v0[38];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v5 = type metadata accessor for BeneficiaryInfoRecord(0);
  v6 = *(v5 + 32);
  v7 = *(v3 + 16);
  v0[39] = v7;
  v0[40] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4 + v6, v2);
  v0[41] = UUID.uuidString.getter();
  v0[42] = v8;
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(v0[31] + *(v5 + 40)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v9 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v9 = &qword_1003FA9F0;
  }

  v10 = *v9;
  v11 = v9[1];

  v12 = sub_1002E2BC4(v10, v11);

  v13 = [v12 privateCloudDatabase];
  v0[43] = v13;

  sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
  v14 = UUID.uuidString.getter();
  v16 = v15;
  v17._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17._object = v18;
  v19._countAndFlagsBits = v14;
  v19._object = v16;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v19, v17).super.isa;
  v0[44] = isa;
  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  v24 = isa;
  v25._countAndFlagsBits = v21;
  v25._object = v23;
  v26 = CKRecordID.init(recordName:zoneID:)(v25, v24).super.isa;
  v0[45] = v26;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_100137B14;
  v27 = swift_continuation_init();
  v0[17] = sub_100005814(&qword_1003DEC10, &qword_1003432F8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000B070;
  v0[13] = &unk_1003AA750;
  v0[14] = v27;
  [v13 fetchRecordWithID:v26 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100137B14()
{
  v1 = *(*v0 + 48);
  *(*v0 + 368) = v1;
  if (v1)
  {
    v2 = sub_1001382A8;
  }

  else
  {
    v2 = sub_100137C24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100137C24()
{
  v73 = v0;
  v1 = *(v0 + 192);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 312);
    v6 = *(v0 + 296);
    v5 = *(v0 + 304);
    v7 = *(v0 + 256);
    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAA58);
    v4(v6, v5, v7);
    v9 = v1;

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 352);
    v14 = *(v0 + 336);
    v15 = *(v0 + 344);
    if (v12)
    {
      v61 = *(v0 + 328);
      v70 = *(v0 + 304);
      v64 = v11;
      v16 = *(v0 + 296);
      v17 = *(v0 + 256);
      v58 = *(v0 + 264);
      v66 = *(v0 + 360);
      v68 = *(v0 + 352);
      v18 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v18 = 138412802;
      *(v18 + 4) = v3;
      v59->isa = v3;
      *(v18 + 12) = 2080;
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v65 = v15;
      v19 = v9;
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      v23 = *(v58 + 8);
      v23(v16, v17);
      v24 = sub_10021145C(v20, v22, &v72);

      *(v18 + 14) = v24;
      *(v18 + 22) = 2080;
      v25 = sub_10021145C(v61, v14, &v72);

      *(v18 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v10, v64, "Found an existing share %@, recordID: %s - zone: %s", v18, 0x20u);
      sub_100008D3C(v59, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

      v23(v70, v17);
    }

    else
    {
      v47 = *(v0 + 296);
      v46 = *(v0 + 304);
      v48 = *(v0 + 256);
      v49 = *(v0 + 264);

      v50 = *(v49 + 8);
      v50(v47, v48);
      v50(v46, v48);
    }
  }

  else
  {

    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 312);
    v27 = *(v0 + 304);
    v28 = *(v0 + 288);
    v29 = *(v0 + 256);
    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAA58);
    v26(v28, v27, v29);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 352);
    v35 = *(v0 + 336);
    v36 = *(v0 + 344);
    if (v33)
    {
      v71 = *(v0 + 304);
      v37 = *(v0 + 288);
      v38 = *(v0 + 256);
      v62 = *(v0 + 264);
      v63 = *(v0 + 328);
      v67 = *(v0 + 360);
      v69 = *(v0 + 352);
      v39 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v39 = 136315394;
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      v60 = v31;
      v43 = *(v62 + 8);
      v43(v37, v38);
      v44 = sub_10021145C(v40, v42, &v72);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2080;
      v45 = sub_10021145C(v63, v35, &v72);

      *(v39 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v60, v32, "Existing share not found, recordID: %s - zone: %s", v39, 0x16u);
      swift_arrayDestroy();

      v43(v71, v38);
    }

    else
    {
      v51 = *(v0 + 304);
      v52 = *(v0 + 288);
      v53 = *(v0 + 256);
      v54 = *(v0 + 264);

      v55 = *(v54 + 8);
      v55(v52, v53);
      v55(v51, v53);
    }

    v3 = 0;
  }

  v56 = *(v0 + 8);

  return v56(v3);
}

uint64_t sub_1001382A8(uint64_t a1)
{
  v68 = v1;
  v2 = *(v1 + 368);
  swift_willThrow();
  *(v1 + 200) = v2;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v1 + 208);
    *(v1 + 232) = v3;
    sub_10013AFC4(&qword_1003DA8D0, type metadata accessor for CKError, &unk_10033DE84);
    _BridgedStoredNSError.code.getter();
    if (*(v1 + 240) == 11)
    {
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v4 = *(v1 + 312);
      v5 = *(v1 + 304);
      v6 = *(v1 + 280);
      v7 = *(v1 + 256);
      v8 = type metadata accessor for Logger();
      sub_100008D04(v8, qword_1003FAA58);
      v4(v6, v5, v7);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v1 + 352);
      v65 = *(v1 + 344);
      v13 = *(v1 + 336);
      if (v11)
      {
        v58 = *(v1 + 328);
        v63 = *(v1 + 304);
        v59 = v10;
        v14 = *(v1 + 280);
        log = v9;
        v16 = *(v1 + 256);
        v15 = *(v1 + 264);
        v61 = *(v1 + 360);
        v62 = *(v1 + 352);
        v17 = swift_slowAlloc();
        v67[0] = swift_slowAlloc();
        *v17 = 136315394;
        sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v18 = dispatch thunk of CustomStringConvertible.description.getter();
        v20 = v19;
        v21 = *(v15 + 8);
        v21(v14, v16);
        v22 = sub_10021145C(v18, v20, v67);

        *(v17 + 4) = v22;
        *(v17 + 12) = 2080;
        v23 = sub_10021145C(v58, v13, v67);

        *(v17 + 14) = v23;
        _os_log_impl(&_mh_execute_header, log, v59, "The record is not shared, recordID: %s - zone: %s", v17, 0x16u);
        swift_arrayDestroy();

        v21(v63, v16);
      }

      else
      {
        v52 = *(v1 + 304);
        v53 = *(v1 + 280);
        v55 = *(v1 + 256);
        v54 = *(v1 + 264);

        v56 = *(v54 + 8);
        v56(v53, v55);
        v56(v52, v55);
      }

      v57 = *(v1 + 8);

      return v57(0);
    }
  }

  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v24 = *(v1 + 312);
  v25 = *(v1 + 304);
  v26 = *(v1 + 272);
  v27 = *(v1 + 256);
  v28 = type metadata accessor for Logger();
  sub_100008D04(v28, qword_1003FAA58);
  v24(v26, v25, v27);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v1 + 336);
  if (v31)
  {
    v64 = *(v1 + 328);
    v33 = *(v1 + 264);
    v34 = *(v1 + 272);
    v35 = *(v1 + 256);
    v36 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    *v36 = 136315394;
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v66 = *(v33 + 8);
    v66(v34, v35);
    v40 = sub_10021145C(v37, v39, v67);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2080;
    v41 = sub_10021145C(v64, v32, v67);

    *(v36 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v29, v30, "Error checking for existing, recordID: %s - zone: %s", v36, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v42 = *(v1 + 264);
    v43 = *(v1 + 272);
    v44 = *(v1 + 256);

    v66 = *(v42 + 8);
    v66(v43, v44);
  }

  v45 = *(v1 + 360);
  v47 = *(v1 + 344);
  v46 = *(v1 + 352);
  v48 = *(v1 + 304);
  v49 = *(v1 + 256);
  swift_getErrorValue();
  sub_1002DEA80(*(v1 + 152), *(v1 + 160));
  swift_getErrorValue();
  sub_100255F6C(-7084, *(v1 + 176), *(v1 + 184));

  swift_willThrow();

  v66(v48, v49);

  v50 = *(v1 + 8);

  return v50();
}

uint64_t sub_100138A0C(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = type metadata accessor for UUID();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  sub_100005814(&qword_1003E7500, &qword_10033EC30);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for InheritanceHealthRecord(0);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100138B64, 0, 0);
}

uint64_t sub_100138B64()
{
  v1 = v0[11];
  sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
  v2 = UUID.uuidString.getter();
  v4 = v3;
  v5._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5._object = v6;
  v7._countAndFlagsBits = v2;
  v7._object = v4;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v7, v5).super.isa;
  v0[22] = isa;
  v9 = [objc_allocWithZone(CKShare) initWithRecordZoneID:isa];
  v0[23] = v9;
  [v9 addParticipant:v1];
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(v0[10] + *(v0[17] + 36)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v10 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v10 = &qword_1003FA9F0;
  }

  v11 = *v10;
  v12 = v10[1];

  v13 = sub_1002E2BC4(v11, v12);

  v0[24] = [v13 privateCloudDatabase];

  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v14 = swift_allocObject();
  v0[25] = v14;
  *(v14 + 16) = xmmword_1003431D0;
  *(v14 + 32) = v9;
  v15 = v9;
  v16 = swift_task_alloc();
  v0[26] = v16;
  *v16 = v0;
  v16[1] = sub_100138DEC;

  return CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)(v14, _swiftEmptyArrayStorage, 0, 1);
}

uint64_t sub_100138DEC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[27] = a1;
  v4[28] = a2;
  v4[29] = v2;

  if (v2)
  {
    v5 = sub_100139EE8;
  }

  else
  {

    v5 = sub_100138F0C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100138F0C()
{
  v133 = v0;
  v1 = v0[27];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(v0[27] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v129 = v0[27];

  v9 = 0;
  v131 = v0;
  if (!v7)
  {
    while (1)
    {
LABEL_5:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v3 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA58);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Saved share record not found.", v22, 2u);
    }

    v23 = v0[23];
    v24 = v0[24];
    v25 = v0[22];

    type metadata accessor for AACustodianError(0);
    v0[9] = -7066;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    goto LABEL_16;
  }

  while (1)
  {
    v10 = v9;
LABEL_8:
    v11 = v0[23];
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = *(v129[6] + 8 * v12);
    v14 = v129[7] + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    sub_100016034(0, &qword_1003DEC00, NSObject_ptr);
    v17 = v13;
    sub_100135D08(v15, v16);
    v18 = [v11 recordID];
    LOBYTE(v11) = static NSObject.== infix(_:_:)();

    if (v11)
    {
      break;
    }

    v7 &= v7 - 1;
    sub_10005A40C(v15, v16);
    v9 = v10;
    v0 = v131;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v129 = v15;
  v0 = v131;

  if (v16)
  {
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v45 = v131[21];
    v46 = v131[10];
    v47 = type metadata accessor for Logger();
    sub_100008D04(v47, qword_1003FAA58);
    sub_10013AEFC(v46, v45, type metadata accessor for InheritanceHealthRecord);
    swift_errorRetain();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    sub_10005A40C(v129, 1);
    v50 = os_log_type_enabled(v48, v49);
    v51 = v131[21];
    if (v50)
    {
      v52 = v131[17];
      v53 = v131[13];
      v54 = v131[14];
      v55 = v131[12];
      v56 = swift_slowAlloc();
      logb = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v132[0] = v128;
      *v56 = 138412546;
      swift_errorRetain();
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 4) = v57;
      logb->isa = v57;
      *(v56 + 12) = 2080;
      (*(v53 + 16))(v54, v51 + *(v52 + 28), v55);
      sub_10013AF64(v51, type metadata accessor for InheritanceHealthRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v0 = v131;
      (*(v53 + 8))(v54, v55);
      v61 = sub_10021145C(v58, v60, v132);

      *(v56 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v48, v49, "Error creating CKShare: %@, recordID: %s", v56, 0x16u);
      sub_100008D3C(logb, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v128);
    }

    else
    {
      sub_10013AF64(v131[21], type metadata accessor for InheritanceHealthRecord);
    }

    v75 = v0[23];
    v74 = v0[24];
    v76 = v0[22];
    swift_willThrow();
    sub_10005A40C(v129, 1);

LABEL_16:
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v26 = v0[18];
    v27 = v0[10];
    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAA58);
    sub_10013AEFC(v27, v26, type metadata accessor for InheritanceHealthRecord);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[18];
    if (v31)
    {
      v33 = v0[17];
      v35 = v0[13];
      v34 = v0[14];
      v36 = v0[12];
      v37 = swift_slowAlloc();
      loga = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v132[0] = v130;
      *v37 = 136315394;
      (*(v35 + 16))(v34, v32 + *(v33 + 28), v36);
      sub_10013AF64(v32, type metadata accessor for InheritanceHealthRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (*(v35 + 8))(v34, v36);
      v41 = sub_10021145C(v38, v40, v132);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2112;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v42;
      loga->isa = v42;
      _os_log_impl(&_mh_execute_header, v29, v30, "Error performing modify operation when sharing record with recordID: %s, error: %@", v37, 0x16u);
      sub_100008D3C(loga, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v130);
    }

    else
    {
      sub_10013AF64(v0[18], type metadata accessor for InheritanceHealthRecord);
    }

    swift_getErrorValue();
    sub_1002DEA80(v0[3], v0[4]);
    swift_willThrow();

    v43 = v0[1];

    return v43();
  }

  objc_opt_self();
  v62 = swift_dynamicCastObjCClass();
  v63 = qword_1003D7F28;
  if (!v62)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_100008D04(v77, qword_1003FAA58);
    v78 = v129;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    sub_10005A40C(v129, 0);
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v132[0] = v82;
      *v81 = 136315138;
      swift_getObjectType();
      v83 = _typeName(_:qualified:)();
      v85 = sub_10021145C(v83, v84, v132);

      *(v81 + 4) = v85;
      _os_log_impl(&_mh_execute_header, v79, v80, "Saved share record is of unexpected type. Expected CKShare, but found %s.", v81, 0xCu);
      sub_10000839C(v82);
    }

    v86 = v131[23];
    v87 = v131[24];
    v88 = v131[22];
    type metadata accessor for AACustodianError(0);
    v131[7] = -7083;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    sub_10005A40C(v129, 0);
    goto LABEL_16;
  }

  v127 = v62;
  v64 = v129;
  if (v63 != -1)
  {
    swift_once();
  }

  v65 = v131[19];
  v10 = v131[20];
  v66 = v131[10];
  v67 = type metadata accessor for Logger();
  sub_100008D04(v67, qword_1003FAA58);
  sub_10013AEFC(v66, v10, type metadata accessor for InheritanceHealthRecord);
  sub_10013AEFC(v66, v65, type metadata accessor for InheritanceHealthRecord);
  v68 = v64;
  v69 = Logger.logObject.getter();
  LOBYTE(v10) = static os_log_type_t.default.getter();
  sub_10005A40C(v129, 0);
  if (os_log_type_enabled(v69, v10))
  {
    v8 = swift_slowAlloc();
    v132[0] = swift_slowAlloc();
    *v8 = 136315650;
    v70 = [v127 URL];
    log = v69;
    if (v70)
    {
      v71 = v131;
      v72 = v70;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v73 = 0;
    }

    else
    {
LABEL_44:
      v73 = 1;
      v71 = v131;
    }

    v95 = v71[15];
    v94 = v71[16];
    v96 = v71;
    v97 = type metadata accessor for URL();
    v98 = *(v97 - 8);
    (*(v98 + 56))(v95, v73, 1, v97);
    sub_100135D14(v95, v94);
    v99 = (*(v98 + 48))(v94, 1, v97);
    v100 = v96[16];
    v123 = v10;
    if (v99 == 1)
    {
      sub_100008D3C(v100, &qword_1003E7500, &qword_10033EC30);
      v101 = 0xE500000000000000;
      v102 = 0x3E6C696E3CLL;
    }

    else
    {
      v102 = URL.absoluteString.getter();
      v101 = v103;
      (*(v98 + 8))(v100, v97);
    }

    v93 = v131;
    v121 = v131[23];
    v122 = v131[24];
    v120 = v131[22];
    v105 = v131[19];
    v104 = v131[20];
    v106 = v131[17];
    v108 = v131[13];
    v107 = v131[14];
    v109 = v131[12];
    v110 = sub_10021145C(v102, v101, v132);

    *(v8 + 4) = v110;
    *(v8 + 12) = 2080;
    (*(v108 + 16))(v107, v104 + *(v106 + 28), v109);
    sub_10013AF64(v104, type metadata accessor for InheritanceHealthRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v111 = dispatch thunk of CustomStringConvertible.description.getter();
    v113 = v112;
    (*(v108 + 8))(v107, v109);
    v114 = sub_10021145C(v111, v113, v132);

    *(v8 + 14) = v114;
    *(v8 + 22) = 2080;
    v115 = UUID.uuidString.getter();
    v117 = v116;
    sub_10013AF64(v105, type metadata accessor for InheritanceHealthRecord);
    v118 = sub_10021145C(v115, v117, v132);

    *(v8 + 24) = v118;
    _os_log_impl(&_mh_execute_header, log, v123, "Successfully created CKShare %s for recordID: %s, zone: %s", v8, 0x20u);
    swift_arrayDestroy();

    sub_10005A40C(v129, 0);
  }

  else
  {
    v89 = v131[23];
    v90 = v131[24];
    v91 = v131[22];
    v92 = v131[19];
    sub_10013AF64(v131[20], type metadata accessor for InheritanceHealthRecord);

    sub_10005A40C(v129, 0);
    sub_10013AF64(v92, type metadata accessor for InheritanceHealthRecord);
    v93 = v131;
  }

  v119 = v93[1];

  return v119(v127);
}

uint64_t sub_100139EE8()
{
  v26 = v0;
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];

  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v4 = v0[18];
  v5 = v0[10];
  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAA58);
  sub_10013AEFC(v5, v4, type metadata accessor for InheritanceHealthRecord);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  if (v9)
  {
    v11 = v0[17];
    v12 = v0[13];
    v13 = v0[14];
    v14 = v0[12];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v15 = 136315394;
    (*(v12 + 16))(v13, v10 + *(v11 + 28), v14);
    sub_10013AF64(v10, type metadata accessor for InheritanceHealthRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v12 + 8))(v13, v14);
    v20 = sub_10021145C(v17, v19, &v25);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v21;
    *v16 = v21;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error performing modify operation when sharing record with recordID: %s, error: %@", v15, 0x16u);
    sub_100008D3C(v16, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v24);
  }

  else
  {
    sub_10013AF64(v0[18], type metadata accessor for InheritanceHealthRecord);
  }

  swift_getErrorValue();
  sub_1002DEA80(v0[3], v0[4]);
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_10013A278(uint64_t a1)
{
  v1[31] = a1;
  v2 = type metadata accessor for UUID();
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();

  return _swift_task_switch(sub_10013A368, 0, 0);
}

uint64_t sub_10013A368()
{
  v1 = v0[38];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v5 = type metadata accessor for InheritanceHealthRecord(0);
  v6 = *(v5 + 28);
  v7 = *(v3 + 16);
  v0[39] = v7;
  v0[40] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4 + v6, v2);
  v0[41] = UUID.uuidString.getter();
  v0[42] = v8;
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(v0[31] + *(v5 + 36)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v9 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v9 = &qword_1003FA9F0;
  }

  v10 = *v9;
  v11 = v9[1];

  v12 = sub_1002E2BC4(v10, v11);

  v13 = [v12 privateCloudDatabase];
  v0[43] = v13;

  sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
  v14 = UUID.uuidString.getter();
  v16 = v15;
  v17._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17._object = v18;
  v19._countAndFlagsBits = v14;
  v19._object = v16;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v19, v17).super.isa;
  v0[44] = isa;
  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  v24 = isa;
  v25._countAndFlagsBits = v21;
  v25._object = v23;
  v26 = CKRecordID.init(recordName:zoneID:)(v25, v24).super.isa;
  v0[45] = v26;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_100132B00;
  v27 = swift_continuation_init();
  v0[17] = sub_100005814(&qword_1003DEC10, &qword_1003432F8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000B070;
  v0[13] = &unk_1003AA728;
  v0[14] = v27;
  [v13 fetchRecordWithID:v26 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10013A698(uint64_t a1)
{
  v1[31] = a1;
  v2 = type metadata accessor for UUID();
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();

  return _swift_task_switch(sub_10013A788, 0, 0);
}

uint64_t sub_10013A788()
{
  v1 = v0[38];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v5 = *(v3 + 16);
  v0[39] = v5;
  v0[40] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = type metadata accessor for CustodianHealthRecord(0);
  v0[41] = UUID.uuidString.getter();
  v0[42] = v7;
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(v0[31] + *(v6 + 36)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9C0;
  }

  v9 = *v8;
  v10 = v8[1];

  v11 = sub_1002E2BC4(v9, v10);

  v12 = [v11 privateCloudDatabase];
  v0[43] = v12;

  sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
  v13 = UUID.uuidString.getter();
  v15 = v14;
  v16._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16._object = v17;
  v18._countAndFlagsBits = v13;
  v18._object = v15;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v18, v16).super.isa;
  v0[44] = isa;
  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  v23 = isa;
  v24._countAndFlagsBits = v20;
  v24._object = v22;
  v25 = CKRecordID.init(recordName:zoneID:)(v24, v23).super.isa;
  v0[45] = v25;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_100132B00;
  v26 = swift_continuation_init();
  v0[17] = sub_100005814(&qword_1003DEC10, &qword_1003432F8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000B070;
  v0[13] = &unk_1003AA778;
  v0[14] = v26;
  [v12 fetchRecordWithID:v25 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

Swift::Int sub_10013AAB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005814(&qword_1003DEC38, &qword_100343338);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_10013AC10(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      sub_100005814(a2, a3);
      v7 = static _SetStorage.allocate(capacity:)();
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = &_swiftEmptySetSingleton;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = (v7 + 7);
  v46 = v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = NSObject._rawHashValue(seed:)(v7[5]);
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *&v13[8 * (v20 >> 6)];
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_100016034(0, a4, a5);
        while (1)
        {
          v25 = *(v7[6] + 8 * v20);
          v26 = static NSObject.== infix(_:_:)();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *&v13[8 * (v20 >> 6)];
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v13[8 * v21] = v23 | v22;
        *(v7[6] + 8 * v20) = v17;
        v27 = v7[2];
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        v7[2] = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = v7[5];
      v31 = *(a1 + 32 + 8 * v29);
      v32 = NSObject._rawHashValue(seed:)(v30);
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = *&v13[8 * (v34 >> 6)];
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        sub_100016034(0, a4, a5);
        while (1)
        {
          v39 = *(v7[6] + 8 * v34);
          v40 = static NSObject.== infix(_:_:)();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = *&v13[8 * (v34 >> 6)];
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v13[8 * v35] = v37 | v36;
        *(v7[6] + 8 * v34) = v31;
        v41 = v7[2];
        v16 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        v7[2] = v42;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_10013AEFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10013AF64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10013AFC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10013B040()
{
  v1 = v0;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA40);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Initiating walrus status repair", v5, 2u);
  }

  v6 = *(v1 + 16);
  v9[4] = sub_10013B1B0;
  v9[5] = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10020E828;
  v9[3] = &unk_1003AAA88;
  v7 = _Block_copy(v9);
  v8 = v6;
  [v8 repairWalrusStatusWithCompletion:v7];
  _Block_release(v7);
}

void sub_10013B1B0(uint64_t a1)
{
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA40);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    swift_errorRetain();
    sub_100005814(&unk_1003E1090, &qword_100344600);
    v5 = String.init<A>(describing:)();
    v7 = sub_10021145C(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Error repairing walrus status - %s", v3, 0xCu);
    sub_10000839C(v4);
  }

  else
  {
  }
}

id sub_10013B354()
{
  v1 = v0;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA40);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Initiating combined walrus status fetch", v5, 2u);
  }

  v6 = *(v1 + 16);
  v14 = 0;
  v7 = [v6 combinedWalrusStatus:&v14];
  v8 = v7;
  if (v14)
  {
    v9 = v14;

    swift_willThrow();
    v8 = 0;
LABEL_14:

    return v8;
  }

  if (v7)
  {
    if (qword_1003D7F88 != -1)
    {
      swift_once();
    }

    sub_100008D04(v2, qword_1003FAB78);
    v9 = v8;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134218496;
      *(v12 + 4) = [v9 pcsWalrusStatus];
      *(v12 + 12) = 2048;
      *(v12 + 14) = [v9 octagonWalrusStatus];
      *(v12 + 22) = 2048;
      *(v12 + 24) = [v9 escrowWalrusStatus];

      _os_log_impl(&_mh_execute_header, v10, v11, "CombinedWalrusStatus: pcs:%lu octagon:%lu escrow:%lu", v12, 0x20u);
    }

    else
    {

      v10 = v9;
    }

    v8 = [v9 mismatchDetected];
    goto LABEL_14;
  }

  return v8;
}

void sub_10013B5F4(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = String._bridgeToObjectiveC()();
  v7 = NSSelectorFromString(v6);

  if ([*(v3 + 24) respondsToSelector:v7])
  {
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = a1;
    v9[4] = a2;
    v19[4] = sub_10013F290;
    v19[5] = v9;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_10013BB5C;
    v19[3] = &unk_1003AAA60;
    v10 = _Block_copy(v19);

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAA40);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Calling stateController.isWalrusRecoveryKeyAvailable via selector", v14, 2u);
    }

    [*(v3 + 24) performSelector:v7 withObject:v10];
    _Block_release(v10);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAA40);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "AppleAccount change for isWalrusRecoveryKeyAvailable has not been integrated yet", v18, 2u);
    }

    a1(0);
  }
}

uint64_t sub_10013B8D0(char a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      swift_errorRetain();
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100008D04(v8, qword_1003FAA40);
      swift_errorRetain();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        v13 = _convertErrorToNSError(_:)();
        *(v11 + 4) = v13;
        *v12 = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "Error fetch walrus recovery key availability: %@", v11, 0xCu);
        sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);
      }

      a4(1);
    }

    else
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100008D04(v14, qword_1003FAA40);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 67109120;
        *(v17 + 4) = a1 & 1;
        _os_log_impl(&_mh_execute_header, v15, v16, "Walrus Recovery Key isAvailable: %{BOOL}d", v17, 8u);
      }

      a4(a1 & 1);
    }
  }

  return result;
}

void sub_10013BB5C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10013BBD4()
{
  v1 = *(v0 + 24);
  v28 = 0;
  if ([v1 verifyRecoveryKeyObservingSystemsHaveMatchingStateWithError:&v28])
  {
    v2 = v28;
    return 1;
  }

  v3 = v28;
  v4 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v28 = v4;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  sub_1000EBAD0();
  if (!swift_dynamicCast())
  {
LABEL_10:

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAA40);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      swift_errorRetain();
      v22 = String.init<A>(describing:)();
      v24 = sub_10021145C(v22, v23, &v28);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "recoveryKeyObservingSystemsHaveMatchingState error: %s", v20, 0xCu);
      sub_10000839C(v21);
    }

    else
    {
    }

    return 1;
  }

  if (![v26 cdp_isCDPErrorWithCode:-5317])
  {

    goto LABEL_10;
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA40);
  v6 = v26;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136315138;
    v11 = v6;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10021145C(v13, v15, &v27);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "recoveryKeyObservingSystemsHaveMatchingState error: %s", v9, 0xCu);
    sub_10000839C(v10);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_10013BFD0()
{
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[19] = sub_100008D04(v1, qword_1003FAA40);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking with CDP if any recovery keys are octagon distrusted", v4, 2u);
  }

  v5 = v0[18];

  v6 = *(v5 + 24);
  v0[20] = v6;
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_10013C1B0;
  v7 = swift_continuation_init();
  v0[17] = sub_100005814(&unk_1003DEE00, qword_100343450);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10024442C;
  v0[13] = &unk_1003AAA10;
  v0[14] = v7;
  [v6 anyRecoveryKeysAreOctagonDistrustedWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10013C1B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_10013C328;
  }

  else
  {
    v2 = sub_10013C2C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013C2C0()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10013C328(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to check if any recovery keys are octagon distrusted due to error: %@. Assuming no keys are distrusted", v5, 0xCu);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);
  }

  else
  {
  }

  v8 = *(v1 + 8);

  return v8(0);
}

uint64_t sub_10013C498()
{
  v1 = *(v0 + 24);
  v41 = 0;
  v2 = 1;
  [v1 shouldPerformRepairWithOptionForceFetch:1 error:&v41];
  v3 = v41;
  if (!v41)
  {
    return v2;
  }

  swift_willThrow();
  v41 = v3;
  v4 = v3;
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  sub_1000EBAD0();
  if (swift_dynamicCast())
  {
    if ([v39 cdp_isCDPErrorWithCode:-5305])
    {

      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100008D04(v5, qword_1003FAA40);
      v6 = v39;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v40 = v10;
        *v9 = 136315138;
        v11 = v6;
        v12 = [v11 description];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = sub_10021145C(v13, v15, &v40);

        *(v9 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v7, v8, "Missing escrow record detected: %s", v9, 0xCu);
        sub_10000839C(v10);
      }

      else
      {
      }

      return 2;
    }

    if ([v39 cdp_isCDPErrorWithCode:-5322])
    {

      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100008D04(v17, qword_1003FAA40);
      v18 = v39;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v40 = v22;
        *v21 = 136315138;
        v23 = v18;
        v24 = [v23 description];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = sub_10021145C(v25, v27, &v40);

        *(v21 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v19, v20, "Out of sync escrow record detected: %s", v21, 0xCu);
        sub_10000839C(v22);
      }

      else
      {
      }

      return 4;
    }
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100008D04(v29, qword_1003FAA40);
  v30 = v4;
  v2 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v41 = v33;
    *v32 = 136315138;
    v34 = v30;
    v35 = String.init<A>(describing:)();
    v37 = sub_10021145C(v35, v36, &v41);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v2, v31, "Could not determine escrow record state: %s", v32, 0xCu);
    sub_10000839C(v33);
  }

  swift_willThrow();
  return v2;
}

uint64_t sub_10013C9D8(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for TimeoutError();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10013CA9C, 0, 0);
}

uint64_t sub_10013CA9C()
{
  v29 = v0;
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    return withTimeout<A>(after:_:)(v1, v2, v3, v4, v5, v6);
  }

  v7 = v1;
  v8 = [v1 contextForPrimaryAccount];
  v0[12] = v8;

  if (v8)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    v0[13] = sub_100008D04(v9, qword_1003FAA40);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28 = v13;
      *v12 = 136315138;
      v14 = Duration.description.getter();
      v16 = sub_10021145C(v14, v15, &v28);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Fetching Octagon status with timeout %s", v12, 0xCu);
      sub_10000839C(v13);
    }

    v17 = v0[8];
    v18 = swift_allocObject();
    v0[14] = v18;
    *(v18 + 16) = v17;
    *(v18 + 24) = v8;

    v19 = v8;
    v20 = swift_task_alloc();
    v0[15] = v20;
    type metadata accessor for CliqueStatus(0);
    v6 = v21;
    *v20 = v0;
    v20[1] = sub_10013CE04;
    v2 = v0[6];
    v3 = v0[7];
    v4 = &unk_100343440;
    v1 = v0 + 2;
    v5 = v18;

    return withTimeout<A>(after:_:)(v1, v2, v3, v4, v5, v6);
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100008D04(v22, qword_1003FAA40);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Missing context, reporting CliqueStatus.error", v25, 2u);
  }

  v26 = v0[1];

  return v26(-1);
}

uint64_t sub_10013CE04()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_10013CF94;
  }

  else
  {

    v2 = sub_10013CF20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013CF20()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10013CF94()
{
  v1 = v0[16];

  v0[3] = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  if (swift_dynamicCast())
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Mapping TimeoutError to codeOctagonCliqueStatusFetchTimeout", v4, 2u);
    }

    v5 = v0[11];
    v6 = v0[12];
    v7 = v0[9];
    v8 = v0[10];

    type metadata accessor for AAError(0);
    v0[5] = -4420;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013F130(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    (*(v8 + 8))(v5, v7);
  }

  else
  {

    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to fetch Octagon status: %@", v11, 0xCu);
      sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);
    }

    v14 = v0[12];

    swift_willThrow();
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_10013D27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 152) = a1;
  *(v3 + 160) = a3;
  return _swift_task_switch(sub_10013D29C, 0, 0);
}

uint64_t sub_10013D29C()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[21] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[20];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10013D3F0;
    v4 = swift_continuation_init();
    v0[17] = sub_100005814(&qword_1003DEDF8, &qword_100343448);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10013D5DC;
    v0[13] = &unk_1003AA9E8;
    v0[14] = v4;
    [v2 octagonStatusForContext:v3 withCompletion:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_10013D3F0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_10013D56C;
  }

  else
  {
    v2 = sub_10013D500;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013D500()
{
  v1 = *(v0 + 168);
  **(v0 + 152) = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10013D56C(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10013D5DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1000080F8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10013D6A8(uint64_t a1, int a2, void *a3)
{
  v5 = *sub_1000080F8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_10013D774(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_100005814(&qword_1003DEDF0, &qword_100343430);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_10013F0A4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013D9B0;
  aBlock[3] = &unk_1003AA998;
  v12 = _Block_copy(aBlock);

  [a2 performEscrowRecordCheckWithContext:a3 isBackground:0 completion:v12];
  _Block_release(v12);
}

uint64_t sub_10013D930(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100005814(&qword_1003DEDF0, &qword_100343430);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100005814(&qword_1003DEDF0, &qword_100343430);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_10013D9B0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10013DA28()
{

  return swift_deallocClassInstance();
}

void *sub_10013DA94(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      if (a1 == 3)
      {
        type metadata accessor for EscrowRecordError(0);
        v6 = -4501;
      }

      else
      {
        type metadata accessor for EscrowRecordError(0);
        v6 = -4502;
      }

      sub_100212324(_swiftEmptyArrayStorage);
      sub_10013F130(&qword_1003D82C0, type metadata accessor for EscrowRecordError, &unk_10033DA04);
      _BridgedStoredNSError.init(_:userInfo:)();
      v1 = v7;
      type metadata accessor for AAError(0);
      sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
      goto LABEL_17;
    }

    if (a1 == 5)
    {
      type metadata accessor for EscrowRecordError(0);
      v6 = -4503;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10013F130(&qword_1003D82C0, type metadata accessor for EscrowRecordError, &unk_10033DA04);
      _BridgedStoredNSError.init(_:userInfo:)();
      v1 = v7;
      type metadata accessor for AAError(0);
      sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
      goto LABEL_17;
    }

    if (a1 == 6)
    {
      type metadata accessor for EscrowRecordError(0);
      v6 = -4504;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10013F130(&qword_1003D82C0, type metadata accessor for EscrowRecordError, &unk_10033DA04);
      _BridgedStoredNSError.init(_:userInfo:)();
      v1 = v7;
      type metadata accessor for AAError(0);
      sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
      goto LABEL_17;
    }

LABEL_13:
    a1 = 0;
    goto LABEL_14;
  }

  if (!a1)
  {
LABEL_14:
    type metadata accessor for AAError(a1);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013F130(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);
    _BridgedStoredNSError.init(_:userInfo:)();
    return v7;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      type metadata accessor for EscrowRecordError(0);
      v6 = -4500;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10013F130(&qword_1003D82C0, type metadata accessor for EscrowRecordError, &unk_10033DA04);
      _BridgedStoredNSError.init(_:userInfo:)();
      v1 = v7;
      type metadata accessor for AAError(0);
      sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
LABEL_17:
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10033EB30;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v4;
      v5 = _convertErrorToNSError(_:)();
      *(inited + 72) = sub_1000EBAD0();
      *(inited + 48) = v5;
      sub_100308978(inited);
      swift_setDeallocating();
      sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
      sub_10013F130(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);
      _BridgedStoredNSError.init(_:userInfo:)();

      return v6;
    }

    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_10013DF88(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = a3;
  v8 = String._bridgeToObjectiveC()();
  v9 = NSSelectorFromString(v8);

  if ([*(a1 + 24) respondsToSelector:v9])
  {
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = sub_10013EB88;
    v11[4] = v6;
    v22[4] = sub_10013F290;
    v22[5] = v11;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1107296256;
    v22[2] = sub_10013BB5C;
    v22[3] = &unk_1003AA948;
    v12 = _Block_copy(v22);

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA40);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Calling stateController.isWalrusRecoveryKeyAvailable via selector", v16, 2u);
    }

    [*(a1 + 24) performSelector:v9 withObject:v12];
    _Block_release(v12);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAA40);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "AppleAccount change for isWalrusRecoveryKeyAvailable has not been integrated yet", v20, 2u);
    }

    swift_beginAccess();
    *(a2 + 16) = 0;
    dispatch_group_leave(v7);
  }
}

uint64_t sub_10013E2DC()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  v4 = [v2 contextForPrimaryAccount];
  v0[18] = v4;

  if (v4)
  {
    v2 = [v1 sharedInstance];
    v0[19] = v2;
    if (v2)
    {
      v5 = v2;
      v0[2] = v0;
      v0[7] = v0 + 21;
      v0[3] = sub_10013E568;
      v6 = swift_continuation_init();
      v0[17] = sub_100005814(&qword_1003DEDE8, &unk_100343418);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_10013D6A8;
      v0[13] = &unk_1003AA8D0;
      v0[14] = v6;
      [v5 sosStatusForContext:v4 withCompletion:v0 + 10];
      v2 = v0 + 2;

      return _swift_continuation_await(v2);
    }

LABEL_15:
    __break(1u);
    return _swift_continuation_await(v2);
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAA40);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Missing context, reporting SOSCCStatus.error", v10, 2u);
  }

  v11 = v0[1];

  return v11(0xFFFFFFFFLL);
}

uint64_t sub_10013E568()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10013E6E8;
  }

  else
  {
    v2 = sub_10013E678;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013E678()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 168);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10013E6E8(uint64_t a1)
{
  v2 = v1[19];
  v3 = v1[18];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_10013E760(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;

  v9 = String._bridgeToObjectiveC()();
  v10 = NSSelectorFromString(v9);

  if ([*(a1 + 24) respondsToSelector:v10])
  {
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = sub_10013EB00;
    v12[4] = v8;
    v23[4] = sub_10013EB48;
    v23[5] = v12;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = sub_10013BB5C;
    v23[3] = &unk_1003AA8A8;
    v13 = _Block_copy(v23);

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA40);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Calling stateController.isWalrusRecoveryKeyAvailable via selector", v17, 2u);
    }

    [*(a1 + 24) performSelector:v10 withObject:v13];
    _Block_release(v13);
  }

  else
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
      _os_log_impl(&_mh_execute_header, v20, v21, "AppleAccount change for isWalrusRecoveryKeyAvailable has not been integrated yet", v22, 2u);
    }

    sub_100149814(0, a2, a3, a4);
  }
}

uint64_t sub_10013EAC0()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10013EB0C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10013EB54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10013EBAC()
{
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = v1;
  v10 = [v1 contextForPrimaryAccount];
  v0[3] = v10;

  if (v10)
  {
    v11 = [objc_allocWithZone(CDPStateController) init];
    v0[4] = v11;
    v12 = swift_task_alloc();
    v0[5] = v12;
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;
    v13 = swift_task_alloc();
    v0[6] = v13;
    type metadata accessor for CDPEscrowRecordViabilityState(0);
    v8 = v14;
    *v13 = v0;
    v13[1] = sub_10013EE0C;
    v6 = sub_10013F008;
    v4 = 0x6843776F72637365;
    v5 = 0xED000029286B6365;
    v1 = v0 + 2;
    v2 = 0;
    v3 = 0;
    v7 = v12;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAA40);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Missing context, reporting CliqueStatus.error", v18, 2u);
  }

  v19 = v0[1];

  return v19(0);
}

uint64_t sub_10013EE0C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_10013EF94;
  }

  else
  {

    v2 = sub_10013EF28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013EF28()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10013EF94()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10013F010()
{
  v1 = sub_100005814(&qword_1003DEDF0, &qword_100343430);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10013F0A4(uint64_t a1, uint64_t a2)
{
  sub_100005814(&qword_1003DEDF0, &qword_100343430);

  return sub_10013D930(a1, a2);
}

uint64_t sub_10013F130(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10013F178()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10013F1B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000082A8;

  return sub_10013D27C(a1, v5, v4);
}

uint64_t sub_10013F2A4(uint64_t a1)
{
  v2 = type metadata accessor for CustodianRecord(0);
  __chkstk_darwin(v2 - 8);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  __chkstk_darwin(v5);
  v7 = (v9 - v6);
  sub_100012D04(a1, v9 - v6, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9[1] = *v7;
    sub_100005814(&unk_1003D9200, &unk_10033EC90);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100147014(v7, v4, type metadata accessor for CustodianRecord);
    sub_100005814(&unk_1003D9200, &unk_10033EC90);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10013F41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v7[22] = type metadata accessor for CustodianStatusUpdateRequest(0);
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v7[25] = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v7[26] = swift_task_alloc();
  v7[27] = type metadata accessor for CustodianRecord(0);
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v8 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v7[33] = v8;
  v7[34] = *(v8 - 8);
  v7[35] = swift_task_alloc();
  v7[36] = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v7[37] = swift_task_alloc();

  return _swift_task_switch(sub_10013F5F4, 0, 0);
}

uint64_t sub_10013F5F4()
{
  v1 = v0[37];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v5 = v0[18];
  v6 = v0[19];
  v7 = type metadata accessor for UUID();
  v0[38] = v7;
  (*(*(v7 - 8) + 16))(v1, v5, v7);
  (*(v3 + 16))(v2, v6 + OBJC_IVAR____TtC13appleaccountd22CustodianStatusUpdater__accountStore, v4);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v2, v4);
  v8 = [*(*sub_1000080F8(v0 + 2 v0[5]) + 16)];
  if (v8 && (v9 = v8, v10 = [v8 aa_altDSID], v9, v10))
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v15 = v0[36];
  v14 = v0[37];
  v16 = v0[19];
  v17 = (v0[18] + *(v0[22] + 32));
  v18 = *v17;
  v0[39] = *v17;
  v19 = v17[1];
  v0[40] = v19;
  *(v14 + v15[5]) = 1;
  v20 = v14 + v15[6];
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v14 + v15[7]) = 1;
  v21 = (v14 + v15[8]);
  *v21 = v11;
  v21[1] = v13;
  v22 = (v14 + v15[9]);
  *v22 = v18;
  v22[1] = v19;

  sub_10000839C(v0 + 2);
  sub_1000080F8((v16 + 16), *(v16 + 40));
  v23 = swift_task_alloc();
  v0[41] = v23;
  *v23 = v0;
  v23[1] = sub_10013F828;
  v24 = v0[37];
  v25 = v0[32];

  return sub_100023C4C(v25, v24);
}

uint64_t sub_10013F828()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1001400D8;
  }

  else
  {
    v2 = sub_10013F93C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013F93C()
{
  v50 = v0;
  v1 = v0[22];
  v2 = v0[18];
  v3 = *(v2 + *(v1 + 20));
  switch(v3)
  {
    case 4:
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100008D04(v21, qword_1003FAA88);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Processing decline status update", v24, 2u);
      }

      v25 = swift_task_alloc();
      v0[45] = v25;
      *v25 = v0;
      v25[1] = sub_100140614;
      v26 = v0[32];
      v27 = v0[30];
      v28 = v0[18];

      return sub_1001429A4(v27, v28, v26);
    case 3:
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100008D04(v13, qword_1003FAA88);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Processing not reachable status update", v16, 2u);
      }

      v17 = swift_task_alloc();
      v0[47] = v17;
      *v17 = v0;
      v17[1] = sub_1001408D0;
      v18 = v0[32];
      v19 = v0[28];
      v20 = v0[18];

      return sub_1001446C8(v19, v18, v20);
    case 2:
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_100008D04(v4, qword_1003FAA88);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Processing accept status update", v7, 2u);
      }

      v8 = swift_task_alloc();
      v0[43] = v8;
      *v8 = v0;
      v8[1] = sub_10014035C;
      v9 = v0[31];
      v10 = v0[32];
      v11 = v0[18];

      return sub_1001418F4(v9, v11, v10);
    default:
      if (qword_1003D7F38 != -1)
      {
        swift_once();
        v2 = v0[18];
      }

      v30 = v0[23];
      v29 = v0[24];
      v31 = type metadata accessor for Logger();
      sub_100008D04(v31, qword_1003FAA88);
      sub_100146EAC(v2, v29, type metadata accessor for CustodianStatusUpdateRequest);
      sub_100146EAC(v2, v30, type metadata accessor for CustodianStatusUpdateRequest);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = v0[23];
        v35 = v0[24];
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v49 = v37;
        *v36 = 134218242;
        v38 = *(v35 + *(v1 + 20));
        sub_100146CDC(v35, type metadata accessor for CustodianStatusUpdateRequest);
        *(v36 + 4) = v38;
        *(v36 + 12) = 2080;
        sub_1001478F0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        v41 = v40;
        sub_100146CDC(v34, type metadata accessor for CustodianStatusUpdateRequest);
        v42 = sub_10021145C(v39, v41, &v49);

        *(v36 + 14) = v42;
        _os_log_impl(&_mh_execute_header, v32, v33, "Unexpected response status %ld for custodian ID: %s", v36, 0x16u);
        sub_10000839C(v37);
      }

      else
      {
        v43 = v0[23];
        sub_100146CDC(v0[24], type metadata accessor for CustodianStatusUpdateRequest);

        sub_100146CDC(v43, type metadata accessor for CustodianStatusUpdateRequest);
      }

      v44 = v0[37];
      v45 = v0[32];
      v46 = v0[26];
      v47 = v0[20];
      type metadata accessor for AACustodianError(0);
      v0[17] = -7000;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001478F0(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      *v46 = v0[16];
      swift_storeEnumTagMultiPayload();
      v47(v46);
      sub_100008D3C(v46, &unk_1003DA200, &unk_10033FA80);
      sub_100146CDC(v45, type metadata accessor for CustodianRecord);
      sub_100146CDC(v44, type metadata accessor for FetchRecoveryRecordsRequest);

      v48 = v0[1];

      return v48();
  }
}

uint64_t sub_1001400D8()
{
  sub_100146CDC(v0[37], type metadata accessor for FetchRecoveryRecordsRequest);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error updating custodian status %@", v4, 0xCu);
    sub_100008D3C(v5, &unk_1003D9140, &qword_10033E640);
  }

  v7 = v0[26];
  v8 = v0[20];

  swift_getErrorValue();
  *v7 = sub_1002DEA80(v0[13], v0[14]);
  swift_storeEnumTagMultiPayload();
  v8(v7);

  sub_100008D3C(v7, &unk_1003DA200, &unk_10033FA80);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10014035C()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1001413B4;
  }

  else
  {
    v2 = sub_100140470;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100140470()
{
  v1 = v0[37];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[26];
  v5 = v0[20];
  [objc_opt_self() postRecoveryContactChangedNotification];
  sub_100146EAC(v3, v4, type metadata accessor for CustodianRecord);
  swift_storeEnumTagMultiPayload();
  v5(v4);
  sub_100008D3C(v4, &unk_1003DA200, &unk_10033FA80);
  sub_100146CDC(v3, type metadata accessor for CustodianRecord);
  sub_100146CDC(v2, type metadata accessor for CustodianRecord);
  sub_100146CDC(v1, type metadata accessor for FetchRecoveryRecordsRequest);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100140614()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_100141654;
  }

  else
  {
    v2 = sub_100140728;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100140728()
{
  v1 = v0[37];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[26];
  v5 = v0[20];
  [objc_opt_self() postRecoveryContactChangedNotification];
  sub_100146EAC(v3, v4, type metadata accessor for CustodianRecord);
  swift_storeEnumTagMultiPayload();
  v5(v4);
  sub_100008D3C(v4, &unk_1003DA200, &unk_10033FA80);
  sub_100146CDC(v3, type metadata accessor for CustodianRecord);
  sub_100146CDC(v2, type metadata accessor for CustodianRecord);
  sub_100146CDC(v1, type metadata accessor for FetchRecoveryRecordsRequest);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001408D0()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_100140C8C;
  }

  else
  {
    v2 = sub_1001409E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1001409E4()
{
  sub_100040738(v0[19] + 176, (v0 + 7));
  v1 = v0[11];
  sub_1000080F8(v0 + 7, v0[10]);
  v4 = *(v1 + 8) + **(v1 + 8);
  v2 = swift_task_alloc();
  v0[49] = v2;
  *v2 = v0;
  v2[1] = sub_100140B78;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_100140B78()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_1001410FC;
  }

  else
  {
    v2 = sub_100140F2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100140C8C()
{
  sub_100146CDC(v0[32], type metadata accessor for CustodianRecord);
  sub_100146CDC(v0[37], type metadata accessor for FetchRecoveryRecordsRequest);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error updating custodian status %@", v4, 0xCu);
    sub_100008D3C(v5, &unk_1003D9140, &qword_10033E640);
  }

  v7 = v0[26];
  v8 = v0[20];

  swift_getErrorValue();
  *v7 = sub_1002DEA80(v0[13], v0[14]);
  swift_storeEnumTagMultiPayload();
  v8(v7);

  sub_100008D3C(v7, &unk_1003DA200, &unk_10033FA80);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100140F2C()
{
  v1 = v0[37];
  v2 = v0[32];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[26];
  v6 = v0[20];
  sub_10000839C(v0 + 7);
  sub_100147014(v4, v3, type metadata accessor for CustodianRecord);
  [objc_opt_self() postRecoveryContactChangedNotification];
  sub_100146EAC(v3, v5, type metadata accessor for CustodianRecord);
  swift_storeEnumTagMultiPayload();
  v6(v5);
  sub_100008D3C(v5, &unk_1003DA200, &unk_10033FA80);
  sub_100146CDC(v3, type metadata accessor for CustodianRecord);
  sub_100146CDC(v2, type metadata accessor for CustodianRecord);
  sub_100146CDC(v1, type metadata accessor for FetchRecoveryRecordsRequest);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001410FC()
{
  sub_100146CDC(v0[28], type metadata accessor for CustodianRecord);
  sub_10000839C(v0 + 7);
  sub_100146CDC(v0[32], type metadata accessor for CustodianRecord);
  sub_100146CDC(v0[37], type metadata accessor for FetchRecoveryRecordsRequest);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error updating custodian status %@", v4, 0xCu);
    sub_100008D3C(v5, &unk_1003D9140, &qword_10033E640);
  }

  v7 = v0[26];
  v8 = v0[20];

  swift_getErrorValue();
  *v7 = sub_1002DEA80(v0[13], v0[14]);
  swift_storeEnumTagMultiPayload();
  v8(v7);

  sub_100008D3C(v7, &unk_1003DA200, &unk_10033FA80);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001413B4()
{
  sub_100146CDC(v0[32], type metadata accessor for CustodianRecord);
  sub_100146CDC(v0[37], type metadata accessor for FetchRecoveryRecordsRequest);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error updating custodian status %@", v4, 0xCu);
    sub_100008D3C(v5, &unk_1003D9140, &qword_10033E640);
  }

  v7 = v0[26];
  v8 = v0[20];

  swift_getErrorValue();
  *v7 = sub_1002DEA80(v0[13], v0[14]);
  swift_storeEnumTagMultiPayload();
  v8(v7);

  sub_100008D3C(v7, &unk_1003DA200, &unk_10033FA80);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100141654()
{
  sub_100146CDC(v0[32], type metadata accessor for CustodianRecord);
  sub_100146CDC(v0[37], type metadata accessor for FetchRecoveryRecordsRequest);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error updating custodian status %@", v4, 0xCu);
    sub_100008D3C(v5, &unk_1003D9140, &qword_10033E640);
  }

  v7 = v0[26];
  v8 = v0[20];

  swift_getErrorValue();
  *v7 = sub_1002DEA80(v0[13], v0[14]);
  swift_storeEnumTagMultiPayload();
  v8(v7);

  sub_100008D3C(v7, &unk_1003DA200, &unk_10033FA80);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001418F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = type metadata accessor for CustodianRecord(0);
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_100141A5C, 0, 0);
}

uint64_t sub_100141A5C()
{
  v55 = v0;
  v1 = v0[19];
  v2 = *(v1 + *(v0[27] + 36));
  v0[29] = v2;
  if (v2 == 4)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
      v1 = v0[19];
    }

    v3 = v0[28];
    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAA88);
    sub_100146EAC(v1, v3, type metadata accessor for CustodianRecord);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[28];
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v54 = v10;
      *v9 = 136315138;
      type metadata accessor for UUID();
      sub_1001478F0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      sub_100146CDC(v8, type metadata accessor for CustodianRecord);
      v14 = sub_10021145C(v11, v13, &v54);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "Accept request received for a declined custodian: %s", v9, 0xCu);
      sub_10000839C(v10);
    }

    else
    {

      sub_100146CDC(v8, type metadata accessor for CustodianRecord);
    }

    v21 = v0[25];
    v20 = v0[26];
    v22 = v0[24];
    v23 = kAAAnalyticsEventCustodianSystemSync;
    (*(v21 + 16))(v20, v0[20] + OBJC_IVAR____TtC13appleaccountd22CustodianStatusUpdater__accountStore, v22);
    v24 = v23;
    Dependency.wrappedValue.getter();
    (*(v21 + 8))(v20, v22);
    v25 = [*(*sub_1000080F8(v0 + 7 v0[10]) + 16)];
    if (v25 && (v26 = v25, v27 = [v25 aa_altDSID], v26, v27))
    {
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v31 = v0[18];
    sub_100012004();
    updated = type metadata accessor for CustodianStatusUpdateRequest(0);
    v33 = (v31 + *(updated + 32));
    v34 = *v33;
    v35 = v33[1];

    v36 = sub_100245D38(v24, v28, v30, v34, v35);
    sub_10000839C(v0 + 7);
    if (v36)
    {
      v37 = v0[18] + *(updated + 40);
      v38 = *v37;
      v39 = *(v37 + 8);
      v40 = v36;
      sub_100245E08(v38, v39);
    }

    else
    {
      v40 = 0;
    }

    type metadata accessor for CustodianSystemState(0);
    v0[13] = -10001;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001478F0(&qword_1003DF010, type metadata accessor for CustodianSystemState, &unk_10033D8B0);
    _BridgedStoredNSError.init(_:userInfo:)();
    v41 = v0[12];
    if (v36)
    {
      v42 = v40;
      v43 = v41;
      v44 = _convertErrorToNSError(_:)();

      [v42 updateTaskResultWithError:v44];
    }

    v46 = v0[22];
    v45 = v0[23];
    v47 = v0[21];
    (*(v46 + 16))(v45, v0[20] + OBJC_IVAR____TtC13appleaccountd22CustodianStatusUpdater__analyticsReporter, v47);
    Dependency.wrappedValue.getter();
    (*(v46 + 8))(v45, v47);
    swift_getObjectType();
    sub_100246FA8(v36);
    swift_unknownObjectRelease();
    type metadata accessor for AACustodianError(0);
    v0[16] = -7077;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001478F0(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    sub_100008D04(v4, qword_1003FAA88);
    swift_errorRetain();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      swift_errorRetain();
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 4) = v52;
      *v51 = v52;
      _os_log_impl(&_mh_execute_header, v48, v49, "Saving accept response failed: %@", v50, 0xCu);
      sub_100008D3C(v51, &unk_1003D9140, &qword_10033E640);
    }

    swift_willThrow();

    v53 = v0[1];

    return v53();
  }

  else
  {
    v15 = swift_task_alloc();
    v0[30] = v15;
    *v15 = v0;
    v15[1] = sub_1001421A8;
    v16 = v0[19];
    v17 = v0[17];
    v18 = v0[18];

    return sub_1001446C8(v17, v16, v18);
  }
}

uint64_t sub_1001421A8()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100142600;
  }

  else
  {
    v2 = sub_1001422BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1001422BC()
{
  sub_100040738(v0[20] + 96, (v0 + 2));
  v1 = v0[6];
  sub_1000080F8(v0 + 2, v0[5]);
  type metadata accessor for CustodianStatusUpdateRequest(0);
  v3 = *(v1 + 8) + **(v1 + 8);
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_10014245C;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_10014245C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1001427C0;
  }

  else
  {
    v2 = sub_100142570;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100142570()
{
  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100142600()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Saving accept response failed: %@", v4, 0xCu);
    sub_100008D3C(v5, &unk_1003D9140, &qword_10033E640);
  }

  swift_willThrow();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1001427C0()
{
  sub_100146CDC(v0[17], type metadata accessor for CustodianRecord);
  sub_10000839C(v0 + 2);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Saving accept response failed: %@", v4, 0xCu);
    sub_100008D3C(v5, &unk_1003D9140, &qword_10033E640);
  }

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001429A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  sub_100005814(&unk_1003DF000, &unk_10033EC50);
  v4[17] = swift_task_alloc();
  v7 = type metadata accessor for Date.ISO8601FormatStyle();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v4[24] = v9;
  v4[25] = *(v9 - 8);
  v4[26] = swift_task_alloc();
  sub_100005814(&qword_1003DA110, &qword_10033F230);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v10 = type metadata accessor for CustodianRecord(0);
  v4[31] = v10;
  v4[32] = *(v10 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[35] = v11;
  v12 = swift_task_alloc();
  v4[36] = v12;
  *v12 = v4;
  v12[1] = sub_100142CA4;

  return sub_1001446C8(v11, a3, a2);
}

uint64_t sub_100142CA4()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_100143250;
  }

  else
  {
    v2 = sub_100142DB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100142DB8()
{
  sub_100147014(v0[35], v0[13], type metadata accessor for CustodianRecord);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Continuing to process decline status.", v4, 2u);
  }

  v5 = v0[16];

  sub_100040738(v5 + 136, (v0 + 2));
  v6 = v0[6];
  sub_1000080F8(v0 + 2, v0[5]);
  type metadata accessor for CustodianStatusUpdateRequest(0);
  v9 = *(v6 + 8) + **(v6 + 8);
  v7 = swift_task_alloc();
  v0[38] = v7;
  *v7 = v0;
  v7[1] = sub_10014303C;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_10014303C()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1001445AC;
  }

  else
  {
    v2 = sub_100143150;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100143150()
{
  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100143250()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v119 = type metadata accessor for Logger();
  sub_100008D04(v119, qword_1003FAA88);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Saving decline response failed: %@", v3, 0xCu);
    sub_100008D3C(v4, &unk_1003D9140, &qword_10033E640);
  }

  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[30];
  v120 = v0[31];
  v132 = v0[28];
  v9 = v0[24];
  v10 = v0[25];
  v11 = v0[22];
  v129 = v0[21];
  v13 = v0[14];
  v12 = v0[15];

  sub_100146EAC(v12, v6, type metadata accessor for CustodianRecord);
  v14 = *(v13 + *(type metadata accessor for CustodianStatusUpdateRequest(0) + 20));
  v15 = *(v10 + 56);
  v15(v8, 1, 1, v9);
  (*(v11 + 56))(v132, 1, 1, v129);
  v16 = (v7 + v120[7]);
  *v16 = 0;
  v16[1] = 0;
  v121 = v16;
  v17 = (v7 + v120[8]);
  *v17 = 0;
  v17[1] = 0;
  v122 = v17;
  v18 = (v7 + v120[13]);
  *v18 = 0;
  v18[1] = 0;
  v125 = v18;
  v19 = (v7 + v120[14]);
  *v19 = 0;
  v19[1] = 0;
  v130 = v19;
  v20 = v7 + v120[15];
  *v20 = 0;
  v133 = v20;
  *(v20 + 8) = 1;
  v124 = v120[16];
  v118 = v15;
  v15(v7 + v124, 1, 1, v9);
  v21 = *(v10 + 16);
  v21(v7, v6, v9);
  v21(v7 + v120[5], v6 + v120[5], v9);
  v22 = v120[11];
  v23 = *(v6 + v22);
  v24 = *(v6 + v22 + 8);
  v25 = (v7 + v22);
  *v25 = v23;
  v25[1] = v24;
  v26 = v120[6];
  v27 = *(v6 + v26);
  v28 = *(v6 + v26 + 8);
  v29 = (v7 + v26);
  *v29 = v27;
  v29[1] = v28;
  *(v7 + v120[9]) = v14;
  v30 = v120[10];
  v31 = *(v6 + v30);
  v32 = *(v6 + v30 + 8);
  v33 = (v7 + v30);
  *v33 = v31;
  v33[1] = v32;
  v127 = v7;
  *(v7 + v120[12]) = *(v6 + v120[12]);
  type metadata accessor for ContactsHelper(0);
  swift_allocObject();

  sub_100015D6C(v23, v24);
  sub_100052704(v31, v32);
  sub_100005814(&unk_1003D9820, &unk_10033EFD0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  Dependency.wrappedValue.getter();
  v34 = v0[10];
  v35 = String._bridgeToObjectiveC()();
  v36 = [v34 contactForHandle:v35];
  swift_unknownObjectRelease();

  if (!v36)
  {

    sub_1000EF4CC();
    v40 = 0;
    goto LABEL_26;
  }

  v37 = objc_allocWithZone(AALocalContactInfo);
  v38 = v36;
  v39 = String._bridgeToObjectiveC()();
  v40 = [v37 initWithHandle:v39 contact:v38];

  if ((sub_1000EF4CC() & 1) == 0 || !v40)
  {
    goto LABEL_26;
  }

  v40 = v40;
  v41 = [v40 firstName];
  if (!v41)
  {
LABEL_25:

    goto LABEL_26;
  }

  v42 = v41;
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  v46 = sub_1002576F0(v43, v45);
  v48 = v47;

  if (!v48)
  {
LABEL_26:
    v62 = v0[34];
    v63 = (v62 + v120[7]);
    v64 = v63[1];
    *v121 = *v63;
    v121[1] = v64;
    v65 = (v62 + v120[8]);
    v66 = v65[1];
    *v122 = *v65;
    v122[1] = v66;

    goto LABEL_27;
  }

  v40 = v40;
  v49 = [v40 lastName];
  if (!v49)
  {

    goto LABEL_25;
  }

  v50 = v49;
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  v54 = sub_1002576F0(v51, v53);
  v56 = v55;

  if (!v56)
  {
LABEL_22:

    goto LABEL_26;
  }

  v57 = v0[34];
  v58 = (v57 + v120[7]);
  v59 = v58[1];
  if (v59)
  {
    if (*v58 == v46 && v59 == v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_21;
    }

    v57 = v0[34];
  }

  v60 = (v57 + v120[8]);
  v61 = v60[1];
  if (v61 && (*v60 == v54 && v61 == v56 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  *v121 = v46;
  v121[1] = v48;
  *v122 = v54;
  v122[1] = v56;
LABEL_27:
  v67 = v0[29];
  v68 = v0[24];
  v69 = v0[25];
  sub_100012D04(v0[30], v67, &qword_1003D8B60, &unk_10033F210);
  v123 = v40;
  if ((*(v69 + 48))(v67, 1, v68) == 1)
  {
    v70 = v0[34];
    sub_100008D3C(v0[29], &qword_1003D8B60, &unk_10033F210);
    sub_10009585C(v70 + v120[16], v127 + v124);
  }

  else
  {
    v71 = v0[26];
    v72 = v0[24];
    v73 = *(v0[25] + 32);
    v73(v71, v0[29], v72);
    sub_100008D3C(v127 + v124, &qword_1003D8B60, &unk_10033F210);
    v73(v127 + v124, v71, v72);
    v118(v127 + v124, 0, 1, v72);
  }

  v75 = v0[27];
  v74 = v0[28];
  v76 = v0[21];
  v77 = v0[22];
  v78 = (v0[34] + v120[13]);
  v79 = v78[1];
  *v125 = *v78;
  v125[1] = v79;
  sub_100012D04(v74, v75, &qword_1003DA110, &qword_10033F230);
  if ((*(v77 + 48))(v75, 1, v76) == 1)
  {
    v80 = v0[34];
    v81 = v0[30];
    v83 = v0[27];
    v82 = v0[28];

    sub_100008D3C(v82, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v81, &qword_1003D8B60, &unk_10033F210);
    sub_100008D3C(v83, &qword_1003DA110, &qword_10033F230);
    v84 = (v80 + v120[14]);
    v85 = *v84;
    v86 = v84[1];
  }

  else
  {
    v126 = v0[28];
    v128 = v0[30];
    v88 = v0[22];
    v87 = v0[23];
    v90 = v0[20];
    v89 = v0[21];
    v91 = v0[18];
    v92 = v0[19];
    (*(v88 + 32))(v87, v0[27], v89);

    sub_100195ACC(v90);
    v85 = Date.ISO8601Format(_:)();
    v86 = v93;

    (*(v92 + 8))(v90, v91);
    (*(v88 + 8))(v87, v89);
    sub_100008D3C(v126, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v128, &qword_1003D8B60, &unk_10033F210);
  }

  v95 = v0[33];
  v94 = v0[34];
  v96 = v0[13];
  *v130 = v85;
  v130[1] = v86;
  v97 = v94 + v120[15];
  v98 = *v97;
  v99 = *(v97 + 8);
  sub_100146CDC(v94, type metadata accessor for CustodianRecord);
  *v133 = v98;
  *(v133 + 8) = v99;
  sub_100147014(v95, v96, type metadata accessor for CustodianRecord);
  swift_getErrorValue();
  v100 = sub_1002DE99C(v0[8]);
  v0[40] = v100;
  if (!v100)
  {

    goto LABEL_42;
  }

  v101 = v100;
  if (!sub_1002DEA78(v100))
  {

LABEL_42:
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    sub_100008D04(v119, qword_1003FAA88);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v111, v112, "Continuing to process decline status.", v113, 2u);
    }

    v114 = v0[16];

    sub_100040738(v114 + 136, (v0 + 2));
    v115 = v0[6];
    sub_1000080F8(v0 + 2, v0[5]);
    v134 = *(v115 + 8) + **(v115 + 8);
    v116 = swift_task_alloc();
    v0[38] = v116;
    *v116 = v0;
    v116[1] = sub_10014303C;

    __asm { BRAA            X8, X16 }
  }

  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 0;
    _os_log_impl(&_mh_execute_header, v102, v103, "Saving the decline response to local disk even though saving to cloud failed", v104, 2u);
  }

  v105 = v0[16];
  v106 = v0[13];

  v0[12] = *sub_1000080F8((v105 + 56), *(v105 + 80));
  v107 = swift_task_alloc();
  v0[41] = v107;
  *(v107 + 16) = v0 + 12;
  *(v107 + 24) = v106;
  v108 = swift_task_alloc();
  v0[42] = v108;
  *v108 = v0;
  v108[1] = sub_100143F10;
  v109 = v0[31];
  v110 = v0[17];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v110, 0, 0, 0x61636F4C65766173, 0xEF293A5F28796C6CLL, sub_100147588, v107, v109);
}

uint64_t sub_100143F10()
{

  if (v0)
  {

    v1 = sub_1001442F4;
  }

  else
  {

    v1 = sub_10014403C;
  }

  return _swift_task_switch(v1, 0, 0);
}

void sub_10014403C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 136);

  (*(v2 + 56))(v3, 0, 1, v1);
  sub_100008D3C(v3, &unk_1003DF000, &unk_10033EC50);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAA88);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Continuing to process decline status.", v7, 2u);
  }

  v8 = *(v0 + 128);

  sub_100040738(v8 + 136, v0 + 16);
  v9 = *(v0 + 48);
  sub_1000080F8((v0 + 16), *(v0 + 40));
  type metadata accessor for CustodianStatusUpdateRequest(0);
  v12 = *(v9 + 8) + **(v9 + 8);
  v10 = swift_task_alloc();
  *(v0 + 304) = v10;
  *v10 = v0;
  v10[1] = sub_10014303C;

  __asm { BRAA            X8, X16 }
}

void sub_1001442F4()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 136);

  (*(v2 + 56))(v3, 1, 1, v1);
  sub_100008D3C(v3, &unk_1003DF000, &unk_10033EC50);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAA88);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Continuing to process decline status.", v7, 2u);
  }

  v8 = *(v0 + 128);

  sub_100040738(v8 + 136, v0 + 16);
  v9 = *(v0 + 48);
  sub_1000080F8((v0 + 16), *(v0 + 40));
  type metadata accessor for CustodianStatusUpdateRequest(0);
  v12 = *(v9 + 8) + **(v9 + 8);
  v10 = swift_task_alloc();
  *(v0 + 304) = v10;
  *v10 = v0;
  v10[1] = sub_10014303C;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1001445AC()
{
  sub_100146CDC(v0[13], type metadata accessor for CustodianRecord);
  sub_10000839C(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001446C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  v4[8] = updated;
  v6 = *(updated - 8);
  v4[9] = v6;
  v4[10] = *(v6 + 64);
  v4[11] = swift_task_alloc();
  v7 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001447FC, 0, 0);
}

uint64_t sub_1001447FC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[7];
  v6 = v0[6];
  v23 = v0[5];
  v7 = *(v6 + *(v0[8] + 36));
  v8 = v0[9];
  v9 = v0[10];
  (*(v2 + 16))(v1, v5 + OBJC_IVAR____TtC13appleaccountd22CustodianStatusUpdater__analyticsReporter, v4);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v4);
  v10 = v0[2];
  v0[15] = v10;
  sub_100146EAC(v6, v3, type metadata accessor for CustodianStatusUpdateRequest);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  v0[16] = v12;
  sub_100147014(v3, v12 + v11, type metadata accessor for CustodianStatusUpdateRequest);
  *(v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;
  v13 = swift_task_alloc();
  v0[17] = v13;
  v13[2] = v6;
  v13[3] = v5;
  v13[4] = v23;
  v14 = type metadata accessor for ExponentialRetryScheduler();

  v15 = ExponentialRetryScheduler.__allocating_init(maxRetries:)();
  v0[18] = v15;
  v16 = swift_allocObject();
  v0[19] = v16;
  *(v16 + 16) = 0;
  v0[3] = v15;
  v17 = swift_task_alloc();
  v0[20] = v17;
  v17[2] = v16;
  v17[3] = sub_10014707C;
  v17[4] = v12;
  v17[5] = 0xD000000000000017;
  v17[6] = 0x800000010032F110;
  v17[7] = &unk_100343538;
  v17[8] = v13;
  v17[9] = v10;
  v17[10] = v7;
  v18 = swift_allocObject();
  v0[21] = v18;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v19 = swift_task_alloc();
  v0[22] = v19;
  v20 = type metadata accessor for CustodianRecord(0);
  *v19 = v0;
  v19[1] = sub_100144AD8;
  v21 = v0[4];

  return RetryScheduler.schedule<A>(_:shouldRetry:)(v21, &unk_100343540, v17, sub_10005237C, v18, v14, v20, &protocol witness table for ExponentialRetryScheduler);
}

uint64_t sub_100144AD8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100144CA8;
  }

  else
  {

    v2 = sub_100144BFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100144BFC()
{
  v1 = *(v0 + 144);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100144CA8()
{
  v1 = *(v0 + 144);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

id sub_100144D70(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27[-1] - v6;
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  if (*(a1 + updated[7]))
  {
    v9 = &kAAAnalyticsEventCustodianHealthCheckOwnerUpdatedCustodianRecord;
  }

  else
  {
    v9 = &kAAAnalyticsEventCustodianSetupOwnerUpdatedCustodianRecord;
  }

  v10 = *v9;
  (*(v5 + 16))(v7, a2 + OBJC_IVAR____TtC13appleaccountd22CustodianStatusUpdater__accountStore, v4);
  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v7, v4);
  v11 = [*(*sub_1000080F8(v27 v27[3]) + 16)];
  if (v11 && (v12 = v11, v13 = [v11 aa_altDSID], v12, v13))
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  sub_100012004();
  v17 = (a1 + updated[8]);
  v18 = *v17;
  v19 = v17[1];

  v20 = sub_100245D38(v10, v14, v16, v18, v19);
  sub_10000839C(v27);
  if (v20)
  {
    v21 = a1 + updated[10];
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = v20;
    sub_100245E08(v22, v23);
  }

  return v20;
}

uint64_t sub_100144FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(type metadata accessor for CustodianStatusUpdateRequest(0) - 8);
  v4[7] = v5;
  v4[8] = *(v5 + 64);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100145070, 0, 0);
}

uint64_t sub_100145070()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_100146EAC(v0[4], v1, type metadata accessor for CustodianStatusUpdateRequest);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v0[10] = v6;
  sub_100147014(v1, v6 + v5, type metadata accessor for CustodianStatusUpdateRequest);
  v0[2] = *sub_1000080F8((v4 + 56), *(v4 + 80));
  v7 = swift_task_alloc();
  v0[11] = v7;
  v7[2] = v0 + 2;
  v7[3] = v3;
  v7[4] = sub_1001473EC;
  v7[5] = v6;
  v8 = swift_task_alloc();
  v0[12] = v8;
  v9 = type metadata accessor for CustodianRecord(0);
  *v8 = v0;
  v8[1] = sub_10014520C;
  v10 = v0[3];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD000000000000014, 0x800000010032F130, sub_10014746C, v7, v9);
}

uint64_t sub_10014520C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100145394;
  }

  else
  {

    v2 = sub_100145328;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100145328()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100145394()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10014540C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Date.ISO8601FormatStyle();
  v125 = *(v6 - 8);
  v126 = v6;
  __chkstk_darwin(v6);
  v124 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v141 = *(v8 - 8);
  __chkstk_darwin(v8);
  v123 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v122 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v14 = __chkstk_darwin(v13 - 8);
  v139 = (&v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v17 = &v118 - v16;
  v18 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v19 = __chkstk_darwin(v18 - 8);
  v135 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v118 - v21;
  v23 = type metadata accessor for CustodianRecord(0);
  __chkstk_darwin(v23);
  v25 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100146EAC(a1, v25, type metadata accessor for CustodianRecord);
  v137 = *(a2 + *(type metadata accessor for CustodianStatusUpdateRequest(0) + 20));
  v26 = *(v11 + 56);
  v140 = v22;
  v26(v22, 1, 1, v10);
  v27 = *(v141 + 56);
  v133 = v17;
  v134 = v8;
  v27(v17, 1, 1, v8);
  v28 = (a3 + v23[7]);
  *v28 = 0;
  v28[1] = 0;
  v127 = v28;
  v29 = (a3 + v23[8]);
  *v29 = 0;
  v29[1] = 0;
  v128 = v29;
  v30 = (a3 + v23[13]);
  *v30 = 0;
  v30[1] = 0;
  v130 = v30;
  v31 = (a3 + v23[14]);
  *v31 = 0;
  v31[1] = 0;
  v131 = v31;
  v32 = a3 + v23[15];
  *v32 = 0;
  v132 = v32;
  *(v32 + 8) = 1;
  v129 = v23[16];
  v121 = v11 + 56;
  v120 = v26;
  v26((a3 + v129), 1, 1, v10);
  v138 = v11;
  v33 = *(v11 + 16);
  v33(a3, v25, v10);
  v34 = v23[5];
  v136 = v10;
  v33(a3 + v34, &v25[v34], v10);
  v35 = v23[11];
  v37 = *&v25[v35];
  v36 = *&v25[v35 + 8];
  v38 = (a3 + v35);
  *v38 = v37;
  v38[1] = v36;
  v39 = v23[6];
  v40 = *&v25[v39];
  v41 = *&v25[v39 + 8];
  v42 = (a3 + v39);
  *v42 = v40;
  v42[1] = v41;
  *(a3 + v23[9]) = v137;
  v43 = v23[10];
  v45 = *&v25[v43];
  v44 = *&v25[v43 + 8];
  v46 = (a3 + v43);
  *v46 = v45;
  v46[1] = v44;
  v47 = v23[12];
  v137 = v25;
  *(a3 + v47) = v25[v47];
  type metadata accessor for ContactsHelper(0);
  swift_allocObject();

  sub_100015D6C(v37, v36);
  sub_100052704(v45, v44);
  sub_100005814(&unk_1003D9820, &unk_10033EFD0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  Dependency.wrappedValue.getter();
  v48 = v142;
  v49 = String._bridgeToObjectiveC()();
  v50 = [v48 contactForHandle:v49];

  swift_unknownObjectRelease();
  if (!v50)
  {

    sub_1000EF4CC();
    v54 = 0;
    v56 = v134;
LABEL_18:
    v57 = v136;
    v59 = v137;
    goto LABEL_22;
  }

  v51 = objc_allocWithZone(AALocalContactInfo);
  v52 = v50;
  v53 = String._bridgeToObjectiveC()();
  v54 = [v51 initWithHandle:v53 contact:v52];

  v55 = sub_1000EF4CC();
  v56 = v134;
  v57 = v136;
  if ((v55 & 1) == 0)
  {
    v59 = v137;
    goto LABEL_22;
  }

  v59 = v137;
  v58 = v138;
  v60 = v139;
  if (!v54)
  {
LABEL_24:
    v82 = (v59 + v23[7]);
    v83 = *v82;
    v84 = v82[1];
    v85 = v127;
    *v127 = v83;
    v85[1] = v84;
    v86 = (v59 + v23[8]);
    v88 = *v86;
    v87 = v86[1];
    v89 = v128;
    *v128 = v88;
    v89[1] = v87;

    v79 = v135;
    goto LABEL_25;
  }

  v54 = v54;
  v61 = [v54 firstName];
  if (!v61)
  {

    goto LABEL_24;
  }

  v62 = v61;
  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v64;

  v66 = sub_1002576F0(v63, v65);
  v68 = v67;

  if (!v68)
  {
LABEL_22:
    v60 = v139;
    goto LABEL_23;
  }

  v54 = v54;
  v69 = [v54 lastName];
  if (!v69)
  {

    goto LABEL_22;
  }

  v70 = v69;
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  v74 = sub_1002576F0(v71, v73);
  v76 = v75;

  if (!v76)
  {

    goto LABEL_18;
  }

  v119 = v74;
  v57 = v136;
  v77 = &v137[v23[7]];
  v78 = *(v77 + 1);
  v60 = v139;
  v79 = v135;
  if (v78 && (*v77 == v66 && v78 == v68 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v80 = &v137[v23[8]], (v81 = *(v80 + 1)) != 0) && (*v80 == v119 && v81 == v76 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v59 = v137;
LABEL_23:
    v58 = v138;
    goto LABEL_24;
  }

  v117 = v127;
  v116 = v128;
  *v127 = v66;
  v117[1] = v68;
  *v116 = v119;
  v116[1] = v76;
  v59 = v137;
  v58 = v138;
LABEL_25:
  sub_100012D04(v140, v79, &qword_1003D8B60, &unk_10033F210);
  if ((*(v58 + 48))(v79, 1, v57) == 1)
  {
    sub_100008D3C(v79, &qword_1003D8B60, &unk_10033F210);
    sub_10009585C(v59 + v23[16], a3 + v129);
  }

  else
  {
    v90 = *(v58 + 32);
    v91 = v122;
    v90(v122, v79, v57);
    v139 = v23;
    v92 = v59;
    v93 = v60;
    v94 = v54;
    v95 = v56;
    v96 = v129;
    sub_100008D3C(a3 + v129, &qword_1003D8B60, &unk_10033F210);
    v90((a3 + v96), v91, v57);
    v97 = (a3 + v96);
    v56 = v95;
    v54 = v94;
    v60 = v93;
    v59 = v92;
    v23 = v139;
    v120(v97, 0, 1, v57);
  }

  v98 = (v59 + v23[13]);
  v99 = *v98;
  v100 = v98[1];
  v101 = v130;
  *v130 = v99;
  v101[1] = v100;
  v102 = v133;
  sub_100012D04(v133, v60, &qword_1003DA110, &qword_10033F230);
  v103 = v141;
  if ((*(v141 + 48))(v60, 1, v56) == 1)
  {

    sub_100008D3C(v102, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v140, &qword_1003D8B60, &unk_10033F210);
    sub_100008D3C(v60, &qword_1003DA110, &qword_10033F230);
    v104 = (v59 + v23[14]);
    v105 = *v104;
    v106 = v104[1];
  }

  else
  {
    v107 = v123;
    (*(v103 + 32))(v123, v60, v56);

    v108 = v124;
    sub_100195ACC(v124);
    v105 = Date.ISO8601Format(_:)();
    v106 = v109;

    (*(v125 + 8))(v108, v126);
    (*(v103 + 8))(v107, v56);
    sub_100008D3C(v102, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v140, &qword_1003D8B60, &unk_10033F210);
  }

  v110 = v131;
  *v131 = v105;
  v110[1] = v106;
  v111 = v59 + v23[15];
  v112 = *v111;
  v113 = *(v111 + 8);
  result = sub_100146CDC(v59, type metadata accessor for CustodianRecord);
  v115 = v132;
  *v132 = v112;
  *(v115 + 8) = v113;
  return result;
}

uint64_t sub_100145EC8()
{
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  sub_10000839C(v0 + 12);
  sub_10000839C(v0 + 17);
  sub_10000839C(v0 + 22);
  v1 = OBJC_IVAR____TtC13appleaccountd22CustodianStatusUpdater__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = OBJC_IVAR____TtC13appleaccountd22CustodianStatusUpdater__analyticsReporter;
  v4 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);

  return swift_deallocClassInstance();
}

void sub_10014600C(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100146138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v22 = a1;
  v24 = a2;
  v23 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v20 - v5;
  v7 = sub_100005814(&unk_1003D9200, &unk_10033EC90);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for CustodianRecord(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100146EAC(a3, v14, type metadata accessor for CustodianRecord);
  (*(v8 + 16))(v10, v22, v7);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_100147014(v14, v17 + v15, type metadata accessor for CustodianRecord);
  (*(v8 + 32))(v17 + v16, v10, v7);
  v18 = v23;
  (*(v4 + 16))(v6, v24 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v23);
  Dependency.wrappedValue.getter();
  (*(v4 + 8))(v6, v18);
  sub_1000080F8(v25, v25[3]);
  sub_10017DF74(v21, 0, 2, sub_100147810, v17);

  return sub_10000839C(v25);
}

uint64_t sub_10014644C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a3;
  v5 = type metadata accessor for UUID();
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v69 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for CustodianRecord(0);
  v7 = __chkstk_darwin(v68);
  v72 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v65 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v65 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v65 - v16;
  __chkstk_darwin(v15);
  v19 = &v65 - v18;
  v20 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v21 = __chkstk_darwin(v20);
  v23 = (&v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v25 = &v65 - v24;
  v74 = a1;
  v26 = a1;
  v28 = v27;
  sub_100012D04(v26, &v65 - v24, &unk_1003DA200, &unk_10033FA80);
  v73 = v28;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAE8);
    sub_100146EAC(a2, v14, type metadata accessor for CustodianRecord);
    sub_100146EAC(a2, v11, type metadata accessor for CustodianRecord);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v66 = v30;
      v33 = v32;
      v65 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v76 = v67;
      *v33 = 136315650;
      v34 = _typeName(_:qualified:)();
      v36 = v35;
      sub_100146CDC(v14, type metadata accessor for CustodianRecord);
      v37 = sub_10021145C(v34, v36, &v76);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v39 = v69;
      v38 = v70;
      v40 = v71;
      (*(v70 + 16))(v69, v11, v71);
      sub_100146CDC(v11, type metadata accessor for CustodianRecord);
      sub_1001478F0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      (*(v38 + 8))(v39, v40);
      v44 = sub_10021145C(v41, v43, &v76);

      *(v33 + 14) = v44;
      *(v33 + 22) = 2112;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 24) = v45;
      v47 = v65;
      v46 = v66;
      *v65 = v45;
      _os_log_impl(&_mh_execute_header, v46, v31, "Failed to store %s locally. RecordID: %s, error: %@", v33, 0x20u);
      sub_100008D3C(v47, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100146CDC(v11, type metadata accessor for CustodianRecord);

      sub_100146CDC(v14, type metadata accessor for CustodianRecord);
    }
  }

  else
  {
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100008D04(v48, qword_1003FAAE8);
    sub_100146EAC(a2, v19, type metadata accessor for CustodianRecord);
    sub_100146EAC(a2, v17, type metadata accessor for CustodianRecord);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v76 = v67;
      *v51 = 136315394;
      v52 = _typeName(_:qualified:)();
      LODWORD(v68) = v50;
      v53 = v52;
      v55 = v54;
      sub_100146CDC(v19, type metadata accessor for CustodianRecord);
      v56 = sub_10021145C(v53, v55, &v76);

      *(v51 + 4) = v56;
      *(v51 + 12) = 2080;
      v57 = v69;
      v58 = v70;
      v59 = v71;
      (*(v70 + 16))(v69, v17, v71);
      sub_100146CDC(v17, type metadata accessor for CustodianRecord);
      sub_1001478F0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      (*(v58 + 8))(v57, v59);
      v63 = sub_10021145C(v60, v62, &v76);

      *(v51 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v49, v68, "%s successfully stored locally. RecordID: %s", v51, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100146CDC(v17, type metadata accessor for CustodianRecord);

      sub_100146CDC(v19, type metadata accessor for CustodianRecord);
    }

    sub_100008D3C(v25, &unk_1003DA200, &unk_10033FA80);
  }

  sub_100012D04(v74, v23, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v76 = *v23;
    sub_100005814(&unk_1003D9200, &unk_10033EC90);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100147014(v23, v72, type metadata accessor for CustodianRecord);
    sub_100005814(&unk_1003D9200, &unk_10033EC90);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100146CDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100146D3C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v9 = sub_100005814(&unk_1003D9200, &unk_10033EC90);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  sub_1002784C8(a3, a4, a5, 0, sub_10014750C, v14);
}

uint64_t sub_100146EAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100146F14()
{
  v1 = *(type metadata accessor for CustodianStatusUpdateRequest(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_100147014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_10014707C()
{
  v1 = *(type metadata accessor for CustodianStatusUpdateRequest(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100144D70(v0 + v2, v3);
}

uint64_t sub_100147108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000082A8;

  return sub_100144FA8(a1, v4, v5, v6);
}

uint64_t sub_1001471CC(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000EF88;

  return sub_1001308A0(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1001472C0()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100147300()
{
  v1 = *(type metadata accessor for CustodianStatusUpdateRequest(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001473EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CustodianStatusUpdateRequest(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10014540C(a1, v6, a2);
}

uint64_t sub_100147478()
{
  v1 = sub_100005814(&unk_1003D9200, &unk_10033EC90);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10014750C(uint64_t a1)
{
  sub_100005814(&unk_1003D9200, &unk_10033EC90);

  return sub_100277AEC(a1);
}

uint64_t sub_100147594()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v15 = sub_100005814(&unk_1003D9200, &unk_10033EC90);
  v3 = *(v15 - 8);
  v4 = *(v3 + 80);
  v14 = *(v3 + 64);
  v5 = v0 + ((v2 + 16) & ~v2);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v5, v6);
  v8(v5 + v1[5], v6);

  v9 = (v5 + v1[10]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_100012324(*v9, v10);
  }

  sub_100012324(*(v5 + v1[11]), *(v5 + v1[11] + 8));

  v11 = v1[16];
  if (!(*(v7 + 48))(v5 + v11, 1, v6))
  {
    v8(v5 + v11, v6);
  }

  v12 = (((v2 + 16) & ~v2) + v16 + v4) & ~v4;
  (*(v3 + 8))(v0 + v12, v15);

  return _swift_deallocObject(v0, v12 + v14);
}

uint64_t sub_100147810(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_100005814(&unk_1003D9200, &unk_10033EC90) - 8);
  v7 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10014644C(a1, v1 + v4, v7);
}

uint64_t sub_1001478F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10014794C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
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
}

uint64_t sub_100147A2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = a2;
  }

  return result;
}

void sub_100147AE8(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Status(319);
    if (v2 <= 0x3F)
    {
      sub_10003A288();
      if (v3 <= 0x3F)
      {
        sub_100147BB4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100147BB4(uint64_t a1)
{
  if (!qword_1003DF088)
  {
    type metadata accessor for AnalyticsContextType(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1003DF088);
    }
  }
}

uint64_t sub_100147C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, int a8, uint64_t a9)
{
  v55 = a8;
  v46 = a6;
  v47 = a5;
  v52 = a1;
  v56 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v54 = *(v56 - 8);
  v53 = *(v54 + 64);
  __chkstk_darwin(v56);
  v58 = &v45[-v13];
  v14 = type metadata accessor for CustodianRecord(0);
  v49 = *(v14 - 8);
  v15 = *(v49 + 64);
  __chkstk_darwin(v14 - 8);
  v50 = &v45[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v45[-v18];
  v20 = kAAAnalyticsEventCustodianSetupProcessDeclineCleanup;
  v21 = a2;
  (*(v17 + 16))(&v45[-v18], a2 + OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__accountStore, v16);
  v22 = v20;
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v19, v16);
  v23 = [*(*sub_1000080F8(v59 v60) + 16)];
  if (v23 && (v24 = v23, v25 = [v23 aa_altDSID], v24, v25))
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v48 = a9;
  sub_100012004();

  v51 = a3;
  v57 = a4;
  v29 = sub_100245D38(v22, v26, v28, a3, a4);
  sub_10000839C(v59);
  if (v29)
  {
    v30 = v29;
    sub_100245E08(v47, v46 & 1);
  }

  sub_100040738(a2 + 16, v59);
  v47 = sub_1000080F8(v59, v60);
  v31 = v50;
  sub_100012050(a7, v50);
  v32 = v54;
  v33 = v56;
  (*(v54 + 16))(v58, v52, v56);
  v34 = (*(v49 + 80) + 33) & ~*(v49 + 80);
  v35 = (v15 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = a7;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (*(v32 + 80) + v36 + 16) & ~*(v32 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v29;
  *(v38 + 24) = v21;
  *(v38 + 32) = v55 & 1;
  sub_100012378(v31, v38 + v34);
  *(v38 + v35) = v48;
  v39 = (v38 + v36);
  v40 = v51;
  v42 = v57;
  v41 = v58;
  *v39 = v51;
  v39[1] = v42;
  (*(v32 + 32))(v38 + v37, v41, v33);

  v43 = v29;

  sub_10000EF8C(v52, v40, v42, sub_10014950C, v38);

  return sub_10000839C(v59);
}

uint64_t sub_100148080(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a5;
  v29 = a6;
  v14 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  if (a2)
  {
    if (a1)
    {
      v18 = _convertErrorToNSError(_:)();
    }

    else
    {
      v18 = 0;
    }

    [a2 updateTaskResultWithError:v18];
  }

  (*(v15 + 16))(v17, a3 + OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__analyticsReporter, v14);
  Dependency.wrappedValue.getter();
  (*(v15 + 8))(v17, v14);
  swift_getObjectType();
  sub_100246FA8(a2);
  swift_unknownObjectRelease();
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAA40);
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      v25 = v24;
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    *(v22 + 4) = v24;
    *v23 = v25;
    _os_log_impl(&_mh_execute_header, v20, v21, "Error cleaning up declined custodians %@", v22, 0xCu);
    sub_100083380(v23);
  }

  if (a4)
  {
    sub_10014839C(v28, v29);
  }

  sub_1001488D4(a7, a8);
  if (a1)
  {
    v30 = a1;
    swift_errorRetain();
    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10014839C(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v3 = type metadata accessor for CustodianRecord(0);
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v9 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v37 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = type metadata accessor for TrustedContactUserNotification(0);
  result = __chkstk_darwin(v12);
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v30 - v15;
  if (a2 != 2)
  {
    if (a2 != 1)
    {
      return result;
    }

    sub_100012050(v38, &v30 - v15);
    swift_storeEnumTagMultiPayload();
    v17 = v37;
    (*(v37 + 16))(v11, v39 + OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__notificationManager, v9);
    goto LABEL_9;
  }

  v33 = v4;
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v6 + 16);
  v31 = OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__cdpRequestController;
  v32 = v18;
  v18(v8, v39 + OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__cdpRequestController, v5);
  Dependency.wrappedValue.getter();
  v19 = *(v6 + 8);
  v35 = v6 + 8;
  v19(v8, v5);
  v20 = *(*sub_1000080F8(v41, v42) + 16);
  v40[0] = 0;
  v21 = [v20 walrusStatus:v40];
  if (v40[0])
  {
    swift_willThrow();
    sub_10000839C(v41);
LABEL_8:
    sub_100012050(v38, v16);
    swift_storeEnumTagMultiPayload();
    v17 = v37;
    (*(v37 + 16))(v11, v39 + OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__notificationManager, v9);
LABEL_9:
    Dependency.wrappedValue.getter();
    (*(v17 + 8))(v11, v9);
    sub_1000080F8(v40, v40[3]);
    sub_1002CA150(v41);
    sub_1002D2E28(v41, 0, 0);
    sub_1000C5460(v41);
    sub_10014A03C(v16, type metadata accessor for TrustedContactUserNotification);
    v29 = v40;
    return sub_10000839C(v29);
  }

  v22 = v21;
  v30 = v19;
  sub_10000839C(v41);
  if (v22 != 1)
  {
    goto LABEL_8;
  }

  v23 = v34;
  sub_100012050(v38, v34);
  v24 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v25 = (v33 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_100012378(v23, v26 + v24);
  v27 = v39;
  *(v26 + v25) = v39;
  v32(v8, v27 + v31, v5);

  Dependency.wrappedValue.getter();
  v30(v8, v5);
  v28 = *sub_1000080F8(v41, v42);

  sub_10013E760(v28, sub_100149F4C, v26, v27);

  v29 = v41;
  return sub_10000839C(v29);
}

uint64_t sub_1001488D4(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-1] - v7;
  v9 = kAAAnalyticsEventRecoveryContactStatusUpdate;
  (*(v6 + 16))(&v22[-1] - v7, v2 + OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__accountStore, v5);
  v10 = v9;
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v8, v5);
  v11 = [*(*sub_1000080F8(v22 v22[3]) + 16)];
  if (v11 && (v12 = v11, v13 = [v11 aa_altDSID], v12, v13))
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  sub_100012004();

  v17 = sub_100245D38(v10, v14, v16, a1, a2);
  result = sub_10000839C(v22);
  if (v17)
  {
    v19 = v17;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v19 setObject:isa forKeyedSubscript:kAAFDidSucceed];

    [objc_msgSend(objc_opt_self() "reporter")];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100148B44()
{
  sub_10000839C((v0 + 16));
  v1 = OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__notificationManager;
  v4 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__cdpRequestController;
  v6 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__custodianStorageController;
  v8 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__analyticsReporter;
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeclinedStatusHandler(uint64_t a1)
{
  result = qword_1003DF120;
  if (!qword_1003DF120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100148D78(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &qword_1003DC940, &unk_1003D9890, &unk_1003405D0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
        if (v4 <= 0x3F)
        {
          sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_100148F78(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 89) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 88) = a3;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *v7;
  *(v8 + 48) = a6;
  *(v8 + 56) = v9;
  return _swift_task_switch(sub_100148FB0, 0, 0);
}

uint64_t sub_100148FB0()
{
  v1 = *(v0 + 89);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v10 = *(v0 + 32);
  v4 = *(v0 + 88);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v10;
  *(v7 + 40) = v3;
  *(v7 + 48) = v1 & 1;
  *(v7 + 56) = v6;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1001490F0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD000000000000037, 0x800000010032F1C0, sub_100149224, v7, &type metadata for () + 8);
}

uint64_t sub_1001490F0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100122700;
  }

  else
  {

    v2 = sub_10014920C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100149260()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v14 = *(*(v1 - 1) + 64);
  v16 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v3 = *(v16 - 8);
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);

  v5 = v0 + ((v2 + 33) & ~v2);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v5, v6);
  v8(v5 + v1[5], v6);

  v9 = (v5 + v1[10]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_100012324(*v9, v10);
  }

  sub_100012324(*(v5 + v1[11]), *(v5 + v1[11] + 8));

  v11 = v1[16];
  if (!(*(v7 + 48))(v5 + v11, 1, v6))
  {
    v8(v5 + v11, v6);
  }

  v12 = (((((v14 + ((v2 + 33) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v4 + 16) & ~v4;

  (*(v3 + 8))(v0 + v12, v16);

  return _swift_deallocObject(v0, v12 + v15);
}

uint64_t sub_10014950C(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecord(0) - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100005814(&qword_1003DABC0, &unk_100342840);
  return sub_100148080(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10014961C(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-1] - v9;
  v11 = type metadata accessor for TrustedContactUserNotification(0);
  result = __chkstk_darwin(v11);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v17[-1] - v14;
  if ((a2 & 1) == 0)
  {
    sub_100012050(a3, &v17[-1] - v14);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 16))(v10, a4 + OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__notificationManager, v7);
    Dependency.wrappedValue.getter();
    (*(v8 + 8))(v10, v7);
    sub_1000080F8(v17, v17[3]);
    sub_1002CA150(v18);
    sub_1002D2E28(v18, 0, 0);
    sub_1000C5460(v18);
    sub_10014A03C(v15, type metadata accessor for TrustedContactUserNotification);
    return sub_10000839C(v17);
  }

  return result;
}

uint64_t sub_100149814(char a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v29 = a2;
  v30 = a3;
  v5 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v28 = type metadata accessor for URL();
  v9 = *(v28 - 8);
  v10 = __chkstk_darwin(v28);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27 - v17;
  if (a1)
  {
    return v29(1, 0);
  }

  (*(v16 + 16))(v18, v27 + OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__custodianStorageController, v15);
  Dependency.wrappedValue.getter();
  (*(v16 + 8))(v18, v15);
  v20 = sub_1000080F8(v32, v32[3]);
  v21 = swift_allocObject();
  v22 = v30;
  *(v21 + 16) = v29;
  *(v21 + 24) = v22;
  v23 = sub_1000080F8((*v20 + 16), *(*v20 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v24 = *(v9 + 8);
  v25 = v12;
  v26 = v28;
  v24(v25, v28);
  (*(v6 + 16))(v8, *v23 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v8, v5);
  sub_1000080F8(v31, v31[3]);
  sub_1000324D8(v14, sub_10014A030, v21);

  v24(v14, v26);
  sub_10000839C(v31);
  return sub_10000839C(v32);
}

uint64_t sub_100149BC4(uint64_t a1, char a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  v8 = type metadata accessor for CustodianRecord(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
    v17[1] = a4;
    v12 = 0;
    v13 = *(a1 + 16);
    do
    {
      v14 = v12;
      if (v13 == v12)
      {
        break;
      }

      sub_100012050(a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v12++, v11);
      v15 = *&v11[*(v8 + 36)];
      sub_10014A03C(v11, type metadata accessor for CustodianRecord);
    }

    while (v15 != 2);
    a1 = v13 != v14;
  }

  a3(a1, a2 & 1);
  return sub_1000A6B60(a1, a2 & 1);
}

uint64_t sub_100149D30(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_100149D60()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100149F4C(char a1, char a2)
{
  v5 = *(type metadata accessor for CustodianRecord(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10014961C(a1, a2 & 1, v2 + v6, v7);
}

uint64_t sub_100149FF8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10014A03C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10014A09C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 257) = a7;
  *(v8 + 144) = a6;
  *(v8 + 152) = v7;
  *(v8 + 128) = a4;
  *(v8 + 136) = a5;
  *(v8 + 256) = a3;
  *(v8 + 112) = a1;
  *(v8 + 120) = a2;
  v9 = *(type metadata accessor for CustodianRecord(0) - 8);
  *(v8 + 160) = v9;
  *(v8 + 168) = *(v9 + 64);
  *(v8 + 176) = swift_task_alloc();
  v10 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  *(v8 + 184) = v10;
  *(v8 + 192) = *(v10 - 8);
  *(v8 + 200) = swift_task_alloc();
  v11 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v8 + 208) = v11;
  *(v8 + 216) = *(v11 - 8);
  *(v8 + 224) = swift_task_alloc();
  v12 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  *(v8 + 232) = v12;
  *(v8 + 240) = *(v12 - 8);
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_10014A2D4, 0, 0);
}

uint64_t sub_10014A2D4()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = kAAAnalyticsEventCustodianSetupProcessNotReachable;
  (*(v2 + 16))(v1, *(v0 + 152) + OBJC_IVAR____TtC13appleaccountd25NotReachableStatusHandler__accountStore, v3);
  v5 = v4;
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v6 = [*(*sub_1000080F8((v0 + 16) *(v0 + 40)) + 16)];
  if (v6 && (v7 = v6, v8 = [v6 aa_altDSID], v7, v8))
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v13 = *(v0 + 128);
  v12 = *(v0 + 136);
  sub_100012004();

  v14 = sub_100245D38(v5, v9, v11, v13, v12);
  sub_10000839C((v0 + 16));
  if (v14)
  {
    v15 = *(v0 + 257);
    v16 = *(v0 + 144);
    v17 = v14;
    sub_100245E08(v16, v15 & 1);
  }

  v19 = *(v0 + 216);
  v18 = *(v0 + 224);
  v20 = *(v0 + 208);
  v21 = *(v0 + 256);
  (*(v19 + 16))(v18, *(v0 + 152) + OBJC_IVAR____TtC13appleaccountd25NotReachableStatusHandler__analyticsReporter, v20);
  Dependency.wrappedValue.getter();
  (*(v19 + 8))(v18, v20);
  swift_getObjectType();
  sub_100246FA8(v14);
  swift_unknownObjectRelease();
  if (v21 == 1 && *(v0 + 120) == 2)
  {
    v23 = *(v0 + 192);
    v22 = *(v0 + 200);
    v24 = *(v0 + 184);
    (*(v23 + 16))(v22, *(v0 + 152) + OBJC_IVAR____TtC13appleaccountd25NotReachableStatusHandler__cdpRequestController, v24);
    Dependency.wrappedValue.getter();
    (*(v23 + 8))(v22, v24);
    v25 = *(*sub_1000080F8((v0 + 56), *(v0 + 80)) + 16);
    *(v0 + 104) = 0;
    v26 = [v25 walrusStatus:v0 + 104];
    if (*(v0 + 104))
    {
      swift_willThrow();
      sub_10000839C((v0 + 56));
    }

    else
    {
      v27 = v26;
      sub_10000839C((v0 + 56));
      if (v27 == 1)
      {
        v28 = *(v0 + 176);
        v29 = *(v0 + 152);
        v30 = *(v0 + 160);
        sub_100012050(*(v0 + 112), v28);
        v31 = (*(v30 + 80) + 24) & ~*(v30 + 80);
        v32 = swift_allocObject();
        *(v32 + 16) = v29;
        sub_100012378(v28, v32 + v31);

        sub_10014AEC4(sub_10014B59C, v32);
      }
    }
  }

  v33 = *(v0 + 8);

  return v33();
}