uint64_t sub_100C8226C()
{
  v27 = v0;

  v1 = *(v0 + 536);
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 72);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AE40);
  sub_100D11DC8(v3, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 200);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    v14 = sub_1000136BC(v11, v13, &v26);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Server error downloading keys for imported share %{private,mask.hash}s: %@", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {
    v16 = *(v0 + 200);

    sub_100018D00(v16, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  *(v0 + 40) = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
  {
    v17 = *(v0 + 208);
    v18 = *(v0 + 184);
    v19 = *(v0 + 104);
    v20 = *(v0 + 72);
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
    sub_100D11DC8(v20, v17, type metadata accessor for SharingCircleKeyManager.Instruction);
    v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    sub_100D12974(v17, v23 + v22, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100A838D4(0, 0, v19, &unk_1013E3750, v23);
  }

  swift_willThrow();
  sub_100018D00(*(v0 + 312), type metadata accessor for KeyDropDownloadKeysMetadataResponse);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100C82770()
{
  v1 = *(*(v0 + 552) + 112);
  if (!v1)
  {

    sub_10020223C();
    v17 = swift_allocError();
    *v23 = 2;
    *(v23 + 4) = 1;
    swift_willThrow();
    goto LABEL_8;
  }

  v2 = *(v1 + 32);

  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  if (v3 != 1 || (v4 = sub_100D13BF8(&qword_101699E80, type metadata accessor for ItemSharingKeyDatabase, &unk_10139D0E0), v5 = *(v4 + 16), v6 = type metadata accessor for ItemSharingKeyDatabase(0), (v7 = v5(v6, v4)) == 0))
  {

    sub_10020223C();
    v17 = swift_allocError();
    *v22 = 2;
    *(v22 + 4) = 1;
    swift_willThrow();

    goto LABEL_8;
  }

  v44 = *(v0 + 496);
  v41 = *(v0 + 580);
  v35 = *(v0 + 272);
  v8 = *(v0 + 152);
  v9 = *(v0 + 160);
  v10 = *(v0 + 144);
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);
  v37 = *(v0 + 112);
  v39 = *(v0 + 544);
  v13 = *(v0 + 72);
  v14 = v13 + *(v0 + 576);
  v33 = v13 + *(v0 + 28);
  v15 = *(v7 + 24);

  (*(v8 + 16))(v9, v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_publicKeysSuffix, v10);
  v16 = swift_task_alloc();
  v16[2] = v39;
  v16[3] = v9;
  v16[4] = v14;
  v16[5] = v33;
  v16[6] = v35;
  v16[7] = v15;
  (*(v12 + 104))(v11, v41, v37);
  Connection.transaction(_:block:)();
  v17 = v44;
  *(v0 + 560) = v44;
  if (v44)
  {
    v18 = *(v0 + 152);
    v42 = *(v0 + 144);
    v45 = *(v0 + 160);
    v19 = *(v0 + 120);
    v20 = *(v0 + 128);
    v21 = *(v0 + 112);

    (*(v19 + 8))(v20, v21);

    (*(v18 + 8))(v45, v42);
LABEL_8:
    *(v0 + 568) = v17;
    v24 = *(v0 + 96);
    (*(v0 + 384))(*(v0 + 272), *(v0 + 256));
    v25 = sub_100C839EC;
    v26 = v24;
    goto LABEL_9;
  }

  v43 = *(v0 + 384);
  v36 = *(v0 + 256);
  v38 = *(v0 + 272);
  v27 = *(v0 + 152);
  v34 = *(v0 + 160);
  v28 = *(v0 + 144);
  v29 = *(v0 + 120);
  v30 = *(v0 + 128);
  v31 = *(v0 + 112);
  v40 = *(v0 + 96);

  (*(v29 + 8))(v30, v31);

  (*(v27 + 8))(v34, v28);
  v43(v38, v36);
  v25 = sub_100C82B24;
  v26 = v40;
LABEL_9:

  return _swift_task_switch(v25, v26, 0);
}

uint64_t sub_100C82B24()
{
  v110 = v0;

  v1 = *(v0 + 488) + 1;
  if (v1 != *(v0 + 472))
  {
    v4 = *(v0 + 560);
    do
    {
      *(v0 + 488) = v1;
      v5 = *(v0 + 448);
      if (v1 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      v6 = v5 + 16 * v1;
      v108 = *(v6 + 32);
      v7 = *(v6 + 40);
      v8 = qword_101694780;

      if (v8 != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 240);
      v10 = *(v0 + 248);
      v11 = *(v0 + 232);
      v12 = *(v0 + 72);
      v107 = type metadata accessor for Logger();
      sub_1000076D4(v107, qword_10177AE40);
      sub_100D11DC8(v12, v10, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v12, v9, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v12, v11, type metadata accessor for SharingCircleKeyManager.Instruction);
      swift_bridgeObjectRetain_n();
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v106 = v14;
        v16 = *(v0 + 240);
        v15 = *(v0 + 248);
        v105 = *(v0 + 232);
        v17 = swift_slowAlloc();
        v109[0] = swift_slowAlloc();
        *v17 = 136447747;
        log = v13;
        v18 = sub_100C71778();
        v20 = v19;
        sub_100018D00(v15, type metadata accessor for SharingCircleKeyManager.Instruction);
        v21 = sub_1000136BC(v18, v20, v109);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2080;
        v22 = sub_10125403C(v108);
        v24 = sub_1000136BC(v22, v23, v109);

        *(v17 + 14) = v24;
        *(v17 + 22) = 2160;
        *(v17 + 24) = 1752392040;
        *(v17 + 32) = 2081;
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v26;
        sub_100018D00(v16, type metadata accessor for SharingCircleKeyManager.Instruction);
        v28 = sub_1000136BC(v25, v27, v109);

        *(v17 + 34) = v28;
        *(v17 + 42) = 2160;
        *(v17 + 44) = 1752392040;
        *(v17 + 52) = 2081;
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = v30;
        sub_100018D00(v105, type metadata accessor for SharingCircleKeyManager.Instruction);
        v32 = sub_1000136BC(v29, v31, v109);

        *(v17 + 54) = v32;
        *(v17 + 62) = 2048;
        v33 = *(v7 + 16);

        *(v17 + 64) = v33;

        _os_log_impl(&_mh_execute_header, log, v106, "Save key package for imported share: %{public}s,\ntype: %s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nkeys: %ld.", v17, 0x48u);
        swift_arrayDestroy();

        if (!*(v7 + 16))
        {
          goto LABEL_21;
        }
      }

      else
      {
        v34 = *(v0 + 240);
        v35 = *(v0 + 248);
        v36 = *(v0 + 232);
        swift_bridgeObjectRelease_n();

        sub_100018D00(v36, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v34, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v35, type metadata accessor for SharingCircleKeyManager.Instruction);
        if (!*(v7 + 16))
        {
LABEL_21:
          sub_100D11DC8(*(v0 + 72), *(v0 + 224), type metadata accessor for SharingCircleKeyManager.Instruction);

          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.error.getter();

          v50 = os_log_type_enabled(v48, v49);
          v51 = *(v0 + 224);
          if (v50)
          {
            v52 = swift_slowAlloc();
            v109[0] = swift_slowAlloc();
            *v52 = 136315394;
            v53 = sub_1012561CC(v108, v7);
            v55 = v54;

            v56 = sub_1000136BC(v53, v55, v109);

            *(v52 + 4) = v56;
            *(v52 + 12) = 2080;
            v57 = sub_100C71778();
            v59 = v58;
            sub_100018D00(v51, type metadata accessor for SharingCircleKeyManager.Instruction);
            v60 = sub_1000136BC(v57, v59, v109);

            *(v52 + 14) = v60;
            _os_log_impl(&_mh_execute_header, v48, v49, "There are no keys to save for imported share in the package: %s, instruction: %s.", v52, 0x16u);
            swift_arrayDestroy();

            break;
          }

          sub_100018D00(v51, type metadata accessor for SharingCircleKeyManager.Instruction);
          goto LABEL_3;
        }
      }

      v37 = sub_100D0F100(v108, v7, *(v0 + 80), *(v0 + 88));
      *(v0 + 496) = v4;
      *(v0 + 504) = v38;
      if (v4)
      {

        if (qword_101694780 == -1)
        {
LABEL_24:
          v61 = *(v0 + 200);
          v62 = *(v0 + 72);
          sub_1000076D4(v107, qword_10177AE40);
          sub_100D11DC8(v62, v61, type metadata accessor for SharingCircleKeyManager.Instruction);
          swift_errorRetain();
          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v63, v64))
          {
            v65 = *(v0 + 200);
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v109[0] = v68;
            *v66 = 141558531;
            *(v66 + 4) = 1752392040;
            *(v66 + 12) = 2081;
            sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v69 = dispatch thunk of CustomStringConvertible.description.getter();
            v71 = v70;
            sub_100018D00(v65, type metadata accessor for SharingCircleKeyManager.Instruction);
            v72 = sub_1000136BC(v69, v71, v109);

            *(v66 + 14) = v72;
            *(v66 + 22) = 2112;
            swift_errorRetain();
            v73 = _swift_stdlib_bridgeErrorToNSError();
            *(v66 + 24) = v73;
            *v67 = v73;
            _os_log_impl(&_mh_execute_header, v63, v64, "Server error downloading keys for imported share %{private,mask.hash}s: %@", v66, 0x20u);
            sub_10000B3A8(v67, &qword_10169BB30, &unk_10138B3C0);

            sub_100007BAC(v68);
          }

          else
          {
            v96 = *(v0 + 200);

            sub_100018D00(v96, type metadata accessor for SharingCircleKeyManager.Instruction);
          }

          *(v0 + 40) = v4;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          if ((swift_dynamicCast() & 1) != 0 && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
          {
            v97 = *(v0 + 208);
            v98 = *(v0 + 184);
            v99 = *(v0 + 104);
            v100 = *(v0 + 72);
            v101 = type metadata accessor for TaskPriority();
            (*(*(v101 - 8) + 56))(v99, 1, 1, v101);
            sub_100D11DC8(v100, v97, type metadata accessor for SharingCircleKeyManager.Instruction);
            v102 = (*(v98 + 80) + 32) & ~*(v98 + 80);
            v103 = swift_allocObject();
            *(v103 + 16) = 0;
            *(v103 + 24) = 0;
            sub_100D12974(v97, v103 + v102, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100A838D4(0, 0, v99, &unk_1013E3750, v103);
          }

          swift_willThrow();
          sub_100018D00(*(v0 + 312), type metadata accessor for KeyDropDownloadKeysMetadataResponse);

          v2 = *(v0 + 8);
          goto LABEL_4;
        }

LABEL_51:
        swift_once();
        goto LABEL_24;
      }

      v39 = v37;
      v40 = v38;

      if (v39 == 17)
      {
        v83 = *(v40 + 16);
        v84 = _swiftEmptyArrayStorage;
        if (v83)
        {
          *(v0 + 64) = _swiftEmptyArrayStorage;

          sub_101123DB0(0, v83, 0);
          v84 = *(v0 + 64);
          v85 = (v40 + 48);
          do
          {
            v87 = *(v85 - 2);
            v86 = *(v85 - 1);
            v88 = *v85;
            sub_100017D5C(v86, *v85);
            *(v0 + 64) = v84;
            v90 = v84[2];
            v89 = v84[3];
            if (v90 >= v89 >> 1)
            {
              sub_101123DB0((v89 > 1), v90 + 1, 1);
              v84 = *(v0 + 64);
            }

            v84[2] = v90 + 1;
            v91 = &v84[4 * v90];
            *(v91 + 32) = 0;
            v85 += 3;
            v91[5] = v87;
            v91[6] = v86;
            v91[7] = v88;
            --v83;
          }

          while (v83);
        }

        *(v0 + 512) = v84;
        v92 = *(*(v0 + 464) + *(v0 + 480));
        *(v0 + 520) = v92;
        v95 = getuid();
        sub_1000294F0(v95);
        v94 = sub_100C80FF0;
        goto LABEL_40;
      }

      if (v39 == 18)
      {
        v74 = *(v40 + 16);
        v75 = _swiftEmptyArrayStorage;
        if (v74)
        {
          *(v0 + 56) = _swiftEmptyArrayStorage;

          sub_101123DB0(0, v74, 0);
          v75 = *(v0 + 56);
          v76 = (v40 + 48);
          do
          {
            v78 = *(v76 - 2);
            v77 = *(v76 - 1);
            v79 = *v76;
            sub_100017D5C(v77, *v76);
            *(v0 + 56) = v75;
            v81 = v75[2];
            v80 = v75[3];
            if (v81 >= v80 >> 1)
            {
              sub_101123DB0((v80 > 1), v81 + 1, 1);
              v75 = *(v0 + 56);
            }

            v75[2] = v81 + 1;
            v82 = &v75[4 * v81];
            *(v82 + 32) = 1;
            v76 += 3;
            v82[5] = v78;
            v82[6] = v77;
            v82[7] = v79;
            --v74;
          }

          while (v74);
        }

        *(v0 + 544) = v75;
        v92 = *(*(v0 + 464) + *(v0 + 480));
        *(v0 + 552) = v92;
        v93 = getuid();
        sub_1000294F0(v93);
        v94 = sub_100C82770;
LABEL_40:

        return _swift_task_switch(v94, v92, 0);
      }

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v109[0] = v44;
        *v43 = 136315138;
        v45 = sub_10125403C(v39);
        v47 = sub_1000136BC(v45, v46, v109);

        *(v43 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v41, v42, "unsupported package type for imported share: %s", v43, 0xCu);
        sub_100007BAC(v44);
      }

      v4 = 0;
      v1 = *(v0 + 488) + 1;
    }

    while (v1 != *(v0 + 472));
  }

LABEL_3:
  sub_100018D00(*(v0 + 312), type metadata accessor for KeyDropDownloadKeysMetadataResponse);

  v2 = *(v0 + 8);
LABEL_4:

  return v2();
}

uint64_t sub_100C839EC()
{
  v27 = v0;

  v1 = *(v0 + 568);
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 72);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AE40);
  sub_100D11DC8(v3, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 200);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    v14 = sub_1000136BC(v11, v13, &v26);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Server error downloading keys for imported share %{private,mask.hash}s: %@", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {
    v16 = *(v0 + 200);

    sub_100018D00(v16, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  *(v0 + 40) = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
  {
    v17 = *(v0 + 208);
    v18 = *(v0 + 184);
    v19 = *(v0 + 104);
    v20 = *(v0 + 72);
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
    sub_100D11DC8(v20, v17, type metadata accessor for SharingCircleKeyManager.Instruction);
    v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    sub_100D12974(v17, v23 + v22, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100A838D4(0, 0, v19, &unk_1013E3750, v23);
  }

  swift_willThrow();
  sub_100018D00(*(v0 + 312), type metadata accessor for KeyDropDownloadKeysMetadataResponse);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100C83EF0()
{
  v27 = v0;
  v1 = *(v0 + 376);
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 72);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AE40);
  sub_100D11DC8(v3, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 200);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    v14 = sub_1000136BC(v11, v13, &v26);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Server error downloading keys for imported share %{private,mask.hash}s: %@", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {
    v16 = *(v0 + 200);

    sub_100018D00(v16, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  *(v0 + 40) = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
  {
    v17 = *(v0 + 208);
    v18 = *(v0 + 184);
    v19 = *(v0 + 104);
    v20 = *(v0 + 72);
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
    sub_100D11DC8(v20, v17, type metadata accessor for SharingCircleKeyManager.Instruction);
    v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    sub_100D12974(v17, v23 + v22, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100A838D4(0, 0, v19, &unk_1013E3750, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100C843C4()
{
  v27 = v0;
  v1 = *(v0 + 424);
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 72);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AE40);
  sub_100D11DC8(v3, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 200);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    v14 = sub_1000136BC(v11, v13, &v26);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Server error downloading keys for imported share %{private,mask.hash}s: %@", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {
    v16 = *(v0 + 200);

    sub_100018D00(v16, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  *(v0 + 40) = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
  {
    v17 = *(v0 + 208);
    v18 = *(v0 + 184);
    v19 = *(v0 + 104);
    v20 = *(v0 + 72);
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
    sub_100D11DC8(v20, v17, type metadata accessor for SharingCircleKeyManager.Instruction);
    v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    sub_100D12974(v17, v23 + v22, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100A838D4(0, 0, v19, &unk_1013E3750, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100C84898()
{
  v27 = v0;
  v1 = *(v0 + 440);
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 72);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AE40);
  sub_100D11DC8(v3, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 200);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    v14 = sub_1000136BC(v11, v13, &v26);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Server error downloading keys for imported share %{private,mask.hash}s: %@", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {
    v16 = *(v0 + 200);

    sub_100018D00(v16, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  *(v0 + 40) = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
  {
    v17 = *(v0 + 208);
    v18 = *(v0 + 184);
    v19 = *(v0 + 104);
    v20 = *(v0 + 72);
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
    sub_100D11DC8(v20, v17, type metadata accessor for SharingCircleKeyManager.Instruction);
    v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    sub_100D12974(v17, v23 + v22, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100A838D4(0, 0, v19, &unk_1013E3750, v23);
  }

  swift_willThrow();
  sub_100018D00(*(v0 + 312), type metadata accessor for KeyDropDownloadKeysMetadataResponse);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100C84D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v4[3] = v6;
  v4[4] = swift_task_alloc();
  v4[5] = swift_task_alloc();
  v7 = *(v6 + 20);
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_100C84E8C;

  return sub_1003C1EE0(a4 + v7, 2);
}

uint64_t sub_100C84E8C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100C84FD4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100C84FD4()
{
  v25 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AE40);
  sub_100D11DC8(v3, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[5];
    v22 = v0[4];
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v8 = 141559043;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    v12 = sub_1000136BC(v9, v11, v24);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2160;
    *(v8 + 24) = 1752392040;
    *(v8 + 32) = 2081;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100018D00(v22, type metadata accessor for SharingCircleKeyManager.Instruction);
    v16 = sub_1000136BC(v13, v15, v24);

    *(v8 + 34) = v16;
    *(v8 + 42) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 44) = v17;
    *v23 = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to stop imported share for share identifier %{private,mask.hash}s, beaconIdentifier: %{private,mask.hash}s: %@.", v8, 0x34u);
    sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v19 = v0[4];
    v18 = v0[5];

    sub_100018D00(v19, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v18, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_100C85380(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for SymmetricKey256();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697610, &unk_10138C4B0);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for SharingCircleSecretValue(0);
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for SharingCircleSecret(0);
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100C855BC, v1, 0);
}

uint64_t sub_100C855BC()
{
  v1 = *(*(v0 + 32) + 120);
  *(v0 + 176) = v1;
  return _swift_task_switch(sub_100C855E0, v1, 0);
}

uint64_t sub_100C855E0()
{

  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_100C856C0;
  v3 = *(v0 + 176);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_100C856C0()
{
  v1 = *(*v0 + 176);

  return _swift_task_switch(sub_100C857D8, v1, 0);
}

uint64_t sub_100C857D8()
{
  v1 = v0[4];
  v0[24] = v0[2];
  return _swift_task_switch(sub_100C857FC, v1, 0);
}

uint64_t sub_100C857FC()
{
  v0[25] = *(v0[24] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_100C858BC;
  v2 = v0[3];

  return sub_10069176C(v2);
}

uint64_t sub_100C858BC(uint64_t a1)
{
  v3 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {
    v4 = v3[4];
    v5 = sub_100C861D0;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_100C859E4;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C859E4()
{
  v72 = v0;
  v1 = v0[27];
  if (*(v1 + 16))
  {
    v2 = v0[28];
    v3 = v0[20];
    v4 = v0[21];
    v5 = v0[18];
    v6 = v0[11];
    v7 = *(v0[19] + 80);
    sub_100D11DC8(v1 + ((v7 + 32) & ~v7), v3, type metadata accessor for SharingCircleSecret);

    sub_100D12974(v3, v4, type metadata accessor for SharingCircleSecret);
    v8 = (v4 + *(v5 + 32));
    v9 = *v8;
    v10 = v8[1];
    v11 = (v4 + *(v5 + 28));
    v12 = *v11;
    v13 = v11[1];
    sub_100017D5C(*v8, v10);

    sub_101316078(v9, v10, v12, v13, v6);
    v14 = v2;
    v15 = v0[17];
    v16 = v0[12];
    v17 = v0[13];
    v18 = v0[11];
    if (v14)
    {

      (*(v17 + 56))(v18, 1, 1, v16);
      v19 = *v8;
      v20 = v8[1];
      *v15 = *v8;
      v15[1] = v20;
      swift_storeEnumTagMultiPayload();
      sub_100017D5C(v19, v20);
    }

    else
    {
      (*(v17 + 56))(v0[11], 0, 1, v0[12]);
      sub_100D12974(v18, v15, type metadata accessor for SharingCircleSecretValue);
    }

    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v23 = v0[16];
    v22 = v0[17];
    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177AE40);
    sub_100D11DC8(v22, v23, type metadata accessor for SharingCircleSecretValue);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[16];
    if (v27)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v71[0] = v30;
      *v29 = 136315138;
      v31 = sub_101315964();
      v33 = v32;
      sub_100018D00(v28, type metadata accessor for SharingCircleSecretValue);
      v34 = sub_1000136BC(v31, v33, v71);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v25, v26, "Reading decryption key for imported share for secret value type string %s", v29, 0xCu);
      sub_100007BAC(v30);
    }

    else
    {

      sub_100018D00(v28, type metadata accessor for SharingCircleSecretValue);
    }

    sub_100D11DC8(v0[17], v0[15], type metadata accessor for SharingCircleSecretValue);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v35 = v0[21];
      v36 = v0[17];
      v37 = v0[10];
      v38 = v0[8];
      v39 = v0[9];
      (*(v39 + 32))(v37, v0[15], v38);
      v40 = SymmetricKey256.data.getter();
      v69 = v41;
      v70 = v40;
      (*(v39 + 8))(v37, v38);
      sub_100018D00(v36, type metadata accessor for SharingCircleSecretValue);
      sub_100018D00(v35, type metadata accessor for SharingCircleSecret);

      v42 = v0[1];

      return v42(v70, v69);
    }

    v45 = v0[6];
    v44 = v0[7];
    v46 = v0[5];
    v47 = v0[3];
    sub_100D11DC8(v0[17], v0[14], type metadata accessor for SharingCircleSecretValue);
    (*(v45 + 16))(v44, v47, v46);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v0[14];
    v52 = v0[6];
    v53 = v0[7];
    v54 = v0[5];
    if (v50)
    {
      v55 = swift_slowAlloc();
      v71[0] = swift_slowAlloc();
      *v55 = 136315651;
      v56 = sub_101315964();
      v58 = v57;
      sub_100018D00(v51, type metadata accessor for SharingCircleSecretValue);
      v59 = sub_1000136BC(v56, v58, v71);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2160;
      *(v55 + 14) = 1752392040;
      *(v55 + 22) = 2081;
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      (*(v52 + 8))(v53, v54);
      v63 = sub_1000136BC(v60, v62, v71);

      *(v55 + 24) = v63;
      _os_log_impl(&_mh_execute_header, v48, v49, "Incompatible secret value type string %s for importing\nshare-id: %{private,mask.hash}s.", v55, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v52 + 8))(v53, v54);
      sub_100018D00(v51, type metadata accessor for SharingCircleSecretValue);
    }

    v64 = v0[21];
    v65 = v0[17];
    v66 = v0[15];
    sub_1001BAEE0();
    swift_allocError();
    *v67 = 17;
    swift_willThrow();
    sub_100018D00(v65, type metadata accessor for SharingCircleSecretValue);
    sub_100018D00(v64, type metadata accessor for SharingCircleSecret);
    sub_100018D00(v66, type metadata accessor for SharingCircleSecretValue);
  }

  else
  {

    sub_1001BAEE0();
    swift_allocError();
    *v21 = 28;
    swift_willThrow();
  }

  v68 = v0[1];

  return v68();
}

uint64_t sub_100C861D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C862AC(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v2[31] = *(type metadata accessor for KeyDropInterface.KeyPackage(0) - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = type metadata accessor for KeyDropDownloadResponse(0);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B9AF8, &unk_1013E35F8);
  v2[39] = swift_task_alloc();
  v3 = type metadata accessor for KeyDropJoinToken(0);
  v2[40] = v3;
  v2[41] = *(v3 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v4 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v2[44] = v4;
  v2[45] = *(v4 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();

  return _swift_task_switch(sub_100C86584, v1, 0);
}

uint64_t sub_100C86584()
{
  v39 = v0;
  v1 = *(v0 + 232);
  v2 = *(v1 + 16);
  *(v0 + 504) = v2;
  if (v2)
  {
    v3 = *(v0 + 360);
    v4 = *(v3 + 80);
    *(v0 + 736) = v4;
    *(v0 + 512) = *(v3 + 72);
    *(v0 + 528) = _swiftEmptyArrayStorage;
    *(v0 + 520) = 0;
    sub_100D11DC8(v1 + ((v4 + 32) & ~v4), *(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
    if (qword_101694DF8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 488);
    v6 = *(v0 + 496);
    v8 = *(v0 + 472);
    v7 = *(v0 + 480);
    v9 = type metadata accessor for Logger();
    *(v0 + 536) = v9;
    *(v0 + 544) = sub_1000076D4(v9, qword_10177BF08);
    sub_100D11DC8(v6, v5, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v6, v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v6, v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 480);
    v13 = *(v0 + 488);
    v15 = *(v0 + 472);
    if (v12)
    {
      v37 = v11;
      v16 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v16 = 136447235;
      v17 = sub_100C71778();
      v19 = v18;
      sub_100018D00(v13, type metadata accessor for SharingCircleKeyManager.Instruction);
      v20 = sub_1000136BC(v17, v19, &v38);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2160;
      *(v16 + 14) = 1752392040;
      *(v16 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
      v24 = sub_1000136BC(v21, v23, &v38);

      *(v16 + 24) = v24;
      *(v16 + 32) = 2160;
      *(v16 + 34) = 1752392040;
      *(v16 + 42) = 2081;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      sub_100018D00(v15, type metadata accessor for SharingCircleKeyManager.Instruction);
      v28 = sub_1000136BC(v25, v27, &v38);

      *(v16 + 44) = v28;
      _os_log_impl(&_mh_execute_header, v10, v37, "Download keys: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v15, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v13, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v31 = *(v0 + 496);
    v32 = *(v0 + 352);
    v33 = *(v31 + *(v32 + 36));
    *(v0 + 744) = v33;
    v34 = *(v32 + 20);
    if (v33 == 5)
    {
      v35 = swift_task_alloc();
      *(v0 + 552) = v35;
      *v35 = v0;
      v35[1] = sub_100C86BB4;

      return sub_100C85380(v31 + v34);
    }

    else
    {
      v36 = swift_task_alloc();
      *(v0 + 584) = v36;
      *v36 = v0;
      v36[1] = sub_100C87600;

      return sub_100C7BA0C(v0 + 16, v31 + v34);
    }
  }

  else
  {

    v29 = *(v0 + 8);

    return v29(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100C86BB4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[70] = a1;
  v5[71] = a2;
  v5[72] = v2;

  v6 = v4[30];
  if (v2)
  {
    v7 = sub_100C8B0C8;
  }

  else
  {
    v7 = sub_100C86CF0;
  }

  return _swift_task_switch(v7, v6, 0);
}

void sub_100C86CF0(uint64_t result)
{
  v68 = v1;
  v2 = *(v1 + 568);
  v3 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v3)
    {
      if (BYTE6(v2) != 32)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v3 != 2)
  {
    v8 = 0;
    goto LABEL_23;
  }

  v9 = *(v1 + 560);
  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  v12 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    __break(1u);
LABEL_12:
    v9 = *(v1 + 560);
    if (__OFSUB__(HIDWORD(v9), v9))
    {
      __break(1u);
      goto LABEL_43;
    }

    v12 = HIDWORD(v9) - v9;
  }

  sub_100017D5C(v9, v2);
  if (v12 != 32)
  {
LABEL_4:
    if (v3 == 2)
    {
      v19 = *(*(v1 + 560) + 16);
      v20 = *(*(v1 + 560) + 24);
      v8 = v20 - v19;
      if (!__OFSUB__(v20, v19))
      {
LABEL_23:
        v21 = *(v1 + 568);
        v22 = *(v1 + 560);
        sub_100018350();
        swift_allocError();
        *v23 = 32;
        *(v23 + 8) = v8;
        *(v23 + 16) = 0;
        swift_willThrow();
        sub_100016590(v22, v21);
        v24 = *(v1 + 568);
        v25 = *(v1 + 560);
        swift_errorRetain();
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *v28 = 138412290;
          swift_errorRetain();
          v30 = _swift_stdlib_bridgeErrorToNSError();
          *(v28 + 4) = v30;
          *v29 = v30;
          _os_log_impl(&_mh_execute_header, v26, v27, "Failed to read circleSharedSecret %@.", v28, 0xCu);
          sub_10000B3A8(v29, &qword_10169BB30, &unk_10138B3C0);
        }

        else
        {
        }

        sub_100016590(v25, v24);
        v31 = *(v1 + 528);
        v32 = *(v1 + 504);
        v33 = *(v1 + 520) + 1;
        sub_100018D00(*(v1 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
        if (v33 == v32)
        {

          v34 = *(v1 + 8);

          v34(v31);
        }

        else
        {
          v35 = *(v1 + 520) + 1;
          *(v1 + 528) = v31;
          *(v1 + 520) = v35;
          sub_100D11DC8(*(v1 + 232) + ((*(v1 + 736) + 32) & ~*(v1 + 736)) + *(v1 + 512) * v35, *(v1 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
          if (qword_101694DF8 != -1)
          {
            swift_once();
          }

          v36 = *(v1 + 488);
          v37 = *(v1 + 496);
          v39 = *(v1 + 472);
          v38 = *(v1 + 480);
          v40 = type metadata accessor for Logger();
          *(v1 + 536) = v40;
          *(v1 + 544) = sub_1000076D4(v40, qword_10177BF08);
          sub_100D11DC8(v37, v36, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v37, v38, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v37, v39, type metadata accessor for SharingCircleKeyManager.Instruction);
          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.default.getter();
          v43 = os_log_type_enabled(v41, v42);
          v45 = *(v1 + 480);
          v44 = *(v1 + 488);
          v46 = *(v1 + 472);
          if (v43)
          {
            v66 = v42;
            v47 = swift_slowAlloc();
            v67[0] = swift_slowAlloc();
            *v47 = 136447235;
            v48 = sub_100C71778();
            v50 = v49;
            sub_100018D00(v44, type metadata accessor for SharingCircleKeyManager.Instruction);
            v51 = sub_1000136BC(v48, v50, v67);

            *(v47 + 4) = v51;
            *(v47 + 12) = 2160;
            *(v47 + 14) = 1752392040;
            *(v47 + 22) = 2081;
            type metadata accessor for UUID();
            sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v52 = dispatch thunk of CustomStringConvertible.description.getter();
            v54 = v53;
            sub_100018D00(v45, type metadata accessor for SharingCircleKeyManager.Instruction);
            v55 = sub_1000136BC(v52, v54, v67);

            *(v47 + 24) = v55;
            *(v47 + 32) = 2160;
            *(v47 + 34) = 1752392040;
            *(v47 + 42) = 2081;
            v56 = dispatch thunk of CustomStringConvertible.description.getter();
            v58 = v57;
            sub_100018D00(v46, type metadata accessor for SharingCircleKeyManager.Instruction);
            v59 = sub_1000136BC(v56, v58, v67);

            *(v47 + 44) = v59;
            _os_log_impl(&_mh_execute_header, v41, v66, "Download keys: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v47, 0x34u);
            swift_arrayDestroy();
          }

          else
          {

            sub_100018D00(v46, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v45, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v44, type metadata accessor for SharingCircleKeyManager.Instruction);
          }

          v60 = *(v1 + 496);
          v61 = *(v1 + 352);
          v62 = *(v60 + *(v61 + 36));
          *(v1 + 744) = v62;
          v63 = *(v61 + 20);
          if (v62 == 5)
          {
            v64 = swift_task_alloc();
            *(v1 + 552) = v64;
            *v64 = v1;
            v64[1] = sub_100C86BB4;

            sub_100C85380(v60 + v63);
          }

          else
          {
            v65 = swift_task_alloc();
            *(v1 + 584) = v65;
            *v65 = v1;
            v65[1] = sub_100C87600;

            sub_100C7BA0C(v1 + 16, v60 + v63);
          }
        }

        return;
      }

      __break(1u);
    }

    else if (v3 == 1)
    {
      v4 = *(v1 + 560);
      v5 = *(v1 + 564);
      v6 = __OFSUB__(v5, v4);
      v7 = v5 - v4;
      if (!v6)
      {
        v8 = v7;
        goto LABEL_23;
      }

LABEL_43:
      __break(1u);
      return;
    }

    v8 = *(v1 + 574);
    goto LABEL_23;
  }

LABEL_15:
  v13 = *(v1 + 344);
  v14 = *(v1 + 320);
  UUID.init()();
  *(v13 + *(v14 + 20)) = xmmword_10138C660;

  v15 = *(v1 + 568);
  v16 = *(v1 + 560);
  *(v1 + 624) = v16;
  *(v1 + 616) = v15;
  v17 = swift_task_alloc();
  *(v1 + 632) = v17;
  *v17 = v1;
  v17[1] = sub_100C88500;
  v18 = *(v1 + 496);

  sub_100C7EC04(v18, v16, v15);
}

uint64_t sub_100C87600()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_100C8B804;
  }

  else
  {
    v4 = sub_100C8772C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C8772C()
{
  v82 = v0;
  *(v0 + 152) = *(v0 + 16);
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  *(v0 + 600) = v1;
  *(v0 + 608) = v2;
  if (v2 >> 60 == 15)
  {
    sub_100D11DC8(*(v0 + 496), *(v0 + 464), type metadata accessor for SharingCircleKeyManager.Instruction);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 464);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v81[0] = v8;
      *v7 = 141558275;
      *(v7 + 4) = 1752392040;
      *(v7 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v10;
      sub_100018D00(v6, type metadata accessor for SharingCircleKeyManager.Instruction);
      v12 = sub_1000136BC(v9, v11, v81);

      *(v7 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v3, v4, "No circleSharedSecret found for shareId: %{private,mask.hash}s.", v7, 0x16u);
      sub_100007BAC(v8);

      sub_1001BAF34(v0 + 16);
    }

    else
    {
      sub_1001BAF34(v0 + 16);

      sub_100018D00(v6, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    goto LABEL_14;
  }

  v80 = v1;
  v13 = *(v0 + 496);
  v15 = *(v0 + 320);
  v14 = *(v0 + 328);
  v16 = *(v0 + 312);
  v17 = *(v0 + 48);
  *(swift_task_alloc() + 16) = v13;
  sub_1000D2A70(v0 + 152, v0 + 168, &qword_1016977A8, &qword_1013D6820);
  sub_1000D2A70(v0 + 152, v0 + 184, &qword_1016977A8, &qword_1013D6820);

  sub_1012BB600(sub_100D1377C, v17, v16);

  if ((*(v14 + 48))(v16, 1, v15) == 1)
  {
    v18 = *(v0 + 496);
    v20 = *(v0 + 448);
    v19 = *(v0 + 456);
    sub_10000B3A8(*(v0 + 312), &qword_1016B9AF8, &unk_1013E35F8);
    sub_100D11DC8(v18, v19, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v18, v20, type metadata accessor for SharingCircleKeyManager.Instruction);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 448);
    v25 = *(v0 + 456);
    if (v23)
    {
      v26 = swift_slowAlloc();
      v81[0] = swift_slowAlloc();
      *v26 = 141558787;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2081;
      v78 = v22;
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_100018D00(v25, type metadata accessor for SharingCircleKeyManager.Instruction);
      v30 = sub_1000136BC(v27, v29, v81);

      *(v26 + 14) = v30;
      *(v26 + 22) = 2160;
      *(v26 + 24) = 1752392040;
      *(v26 + 32) = 2081;
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      sub_100018D00(v24, type metadata accessor for SharingCircleKeyManager.Instruction);
      v34 = sub_1000136BC(v31, v33, v81);

      *(v26 + 34) = v34;
      _os_log_impl(&_mh_execute_header, v21, v78, "No joinTokens found for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s.", v26, 0x2Au);
      swift_arrayDestroy();

      sub_10000B3A8(v0 + 152, &qword_1016977A8, &qword_1013D6820);

      sub_1001BAF34(v0 + 16);
    }

    else
    {

      sub_10000B3A8(v0 + 152, &qword_1016977A8, &qword_1013D6820);
      sub_1001BAF34(v0 + 16);
      sub_100018D00(v24, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v25, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    sub_10000B3A8(v0 + 152, &qword_1016977A8, &qword_1013D6820);
LABEL_14:
    v41 = *(v0 + 528);
    v42 = *(v0 + 504);
    v43 = *(v0 + 520) + 1;
    sub_100018D00(*(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
    if (v43 == v42)
    {

      v44 = *(v0 + 8);

      return v44(v41);
    }

    else
    {
      v45 = *(v0 + 520) + 1;
      *(v0 + 528) = v41;
      *(v0 + 520) = v45;
      sub_100D11DC8(*(v0 + 232) + ((*(v0 + 736) + 32) & ~*(v0 + 736)) + *(v0 + 512) * v45, *(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
      if (qword_101694DF8 != -1)
      {
        swift_once();
      }

      v46 = *(v0 + 488);
      v47 = *(v0 + 496);
      v49 = *(v0 + 472);
      v48 = *(v0 + 480);
      v50 = type metadata accessor for Logger();
      *(v0 + 536) = v50;
      *(v0 + 544) = sub_1000076D4(v50, qword_10177BF08);
      sub_100D11DC8(v47, v46, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v47, v48, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v47, v49, type metadata accessor for SharingCircleKeyManager.Instruction);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      v53 = os_log_type_enabled(v51, v52);
      v55 = *(v0 + 480);
      v54 = *(v0 + 488);
      v56 = *(v0 + 472);
      if (v53)
      {
        v79 = v52;
        v57 = swift_slowAlloc();
        v81[0] = swift_slowAlloc();
        *v57 = 136447235;
        v58 = sub_100C71778();
        v60 = v59;
        sub_100018D00(v54, type metadata accessor for SharingCircleKeyManager.Instruction);
        v61 = sub_1000136BC(v58, v60, v81);

        *(v57 + 4) = v61;
        *(v57 + 12) = 2160;
        *(v57 + 14) = 1752392040;
        *(v57 + 22) = 2081;
        type metadata accessor for UUID();
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v64 = v63;
        sub_100018D00(v55, type metadata accessor for SharingCircleKeyManager.Instruction);
        v65 = sub_1000136BC(v62, v64, v81);

        *(v57 + 24) = v65;
        *(v57 + 32) = 2160;
        *(v57 + 34) = 1752392040;
        *(v57 + 42) = 2081;
        v66 = dispatch thunk of CustomStringConvertible.description.getter();
        v68 = v67;
        sub_100018D00(v56, type metadata accessor for SharingCircleKeyManager.Instruction);
        v69 = sub_1000136BC(v66, v68, v81);

        *(v57 + 44) = v69;
        _os_log_impl(&_mh_execute_header, v51, v79, "Download keys: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v57, 0x34u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100018D00(v56, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v55, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v54, type metadata accessor for SharingCircleKeyManager.Instruction);
      }

      v70 = *(v0 + 496);
      v71 = *(v0 + 352);
      v72 = *(v70 + *(v71 + 36));
      *(v0 + 744) = v72;
      v73 = *(v71 + 20);
      if (v72 == 5)
      {
        v74 = swift_task_alloc();
        *(v0 + 552) = v74;
        *v74 = v0;
        v74[1] = sub_100C86BB4;

        return sub_100C85380(v70 + v73);
      }

      else
      {
        v75 = swift_task_alloc();
        *(v0 + 584) = v75;
        *v75 = v0;
        v75[1] = sub_100C87600;

        return sub_100C7BA0C(v0 + 16, v70 + v73);
      }
    }
  }

  v36 = *(v0 + 336);
  v35 = *(v0 + 344);
  v37 = *(v0 + 312);
  sub_1001BAF34(v0 + 16);
  sub_100D12974(v37, v36, type metadata accessor for KeyDropJoinToken);
  sub_100D12974(v36, v35, type metadata accessor for KeyDropJoinToken);
  LOBYTE(v36) = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {

    *(v0 + 624) = v80;
    *(v0 + 616) = v2;
    v38 = swift_task_alloc();
    *(v0 + 632) = v38;
    *v38 = v0;
    v38[1] = sub_100C88500;
    v39 = *(v0 + 496);

    return sub_100C7EC04(v39, v80, v2);
  }

  else
  {
    v76 = swift_task_alloc();
    *(v0 + 648) = v76;
    *v76 = v0;
    v76[1] = sub_100C88838;
    v77 = *(v0 + 496);

    return sub_100C7DBEC(v77);
  }
}

uint64_t sub_100C88500()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_100C8BF40;
  }

  else
  {
    v4 = sub_100C8862C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C8862C()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[62];
  v4 = v0[43];
  sub_100016590(v1, v2);
  sub_100018D00(v4, type metadata accessor for KeyDropJoinToken);
  sub_100016590(v1, v2);
  sub_100018D00(v3, type metadata accessor for SharingCircleKeyManager.Instruction);

  v5 = v0[1];

  return v5(_swiftEmptyArrayStorage);
}

uint64_t sub_100C88838(uint64_t a1)
{
  v2 = *(*v1 + 240);
  *(*v1 + 656) = a1;

  return _swift_task_switch(sub_100C88950, v2, 0);
}

uint64_t sub_100C88950()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 352);
  v3 = *(v2 + 20);
  v4 = *(v2 + 28);
  v5 = swift_task_alloc();
  *(v0 + 664) = v5;
  *v5 = v0;
  v5[1] = sub_100C88A18;
  v6 = *(v0 + 656);
  v7 = *(v0 + 344);
  v8 = *(v0 + 296);
  v9 = *(v0 + 744);

  return sub_1011AE538(v8, v1 + v3, v1 + v4, v9, v7, v6);
}

uint64_t sub_100C88A18()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {
    v3 = *(v2 + 240);

    v4 = sub_100C8C4B0;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 240);

    v4 = sub_100C88B70;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100C88B70()
{
  v119 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  sub_100D12974(*(v0 + 296), v1, type metadata accessor for KeyDropDownloadResponse);
  v3 = *(v1 + *(v2 + 28));
  *(v0 + 680) = v3;
  v4 = *(v3 + 16);
  *(v0 + 688) = v4;
  if (!v4)
  {
LABEL_32:
    v64 = sub_100D100F8(*(*(v0 + 304) + *(*(v0 + 288) + 24)), *(v0 + 600), *(v0 + 608), *(v0 + 496));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v0 + 528);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v66 = sub_100A5B9D4(0, *(v66 + 2) + 1, 1, *(v0 + 528));
    }

    v68 = *(v66 + 2);
    v67 = *(v66 + 3);
    if (v68 >= v67 >> 1)
    {
      v66 = sub_100A5B9D4((v67 > 1), v68 + 1, 1, v66);
    }

    v69 = *(v0 + 608);
    v70 = *(v0 + 600);
    v71 = *(v0 + 344);
    v72 = *(v0 + 304);
    sub_100016590(v70, v69);
    sub_100018D00(v71, type metadata accessor for KeyDropJoinToken);
    *(v66 + 2) = v68 + 1;
    *&v66[8 * v68 + 32] = v64;
    sub_100018D00(v72, type metadata accessor for KeyDropDownloadResponse);
    sub_100016590(v70, v69);
    v73 = *(v0 + 504);
    v74 = *(v0 + 520) + 1;
    sub_100018D00(*(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
    if (v74 == v73)
    {

      v75 = *(v0 + 8);

      return v75(v66);
    }

    else
    {
      v77 = *(v0 + 520) + 1;
      *(v0 + 528) = v66;
      *(v0 + 520) = v77;
      sub_100D11DC8(*(v0 + 232) + ((*(v0 + 736) + 32) & ~*(v0 + 736)) + *(v0 + 512) * v77, *(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
      if (qword_101694DF8 != -1)
      {
        swift_once();
      }

      v78 = *(v0 + 488);
      v79 = *(v0 + 496);
      v81 = *(v0 + 472);
      v80 = *(v0 + 480);
      v82 = type metadata accessor for Logger();
      *(v0 + 536) = v82;
      *(v0 + 544) = sub_1000076D4(v82, qword_10177BF08);
      sub_100D11DC8(v79, v78, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v79, v80, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v79, v81, type metadata accessor for SharingCircleKeyManager.Instruction);
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.default.getter();
      v85 = os_log_type_enabled(v83, v84);
      v87 = *(v0 + 480);
      v86 = *(v0 + 488);
      v88 = *(v0 + 472);
      if (v85)
      {
        v116 = v84;
        v89 = swift_slowAlloc();
        v118[0] = swift_slowAlloc();
        *v89 = 136447235;
        v90 = sub_100C71778();
        v92 = v91;
        sub_100018D00(v86, type metadata accessor for SharingCircleKeyManager.Instruction);
        v93 = sub_1000136BC(v90, v92, v118);

        *(v89 + 4) = v93;
        *(v89 + 12) = 2160;
        *(v89 + 14) = 1752392040;
        *(v89 + 22) = 2081;
        type metadata accessor for UUID();
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v94 = dispatch thunk of CustomStringConvertible.description.getter();
        v96 = v95;
        sub_100018D00(v87, type metadata accessor for SharingCircleKeyManager.Instruction);
        v97 = sub_1000136BC(v94, v96, v118);

        *(v89 + 24) = v97;
        *(v89 + 32) = 2160;
        *(v89 + 34) = 1752392040;
        *(v89 + 42) = 2081;
        v98 = dispatch thunk of CustomStringConvertible.description.getter();
        v100 = v99;
        sub_100018D00(v88, type metadata accessor for SharingCircleKeyManager.Instruction);
        v101 = sub_1000136BC(v98, v100, v118);

        *(v89 + 44) = v101;
        _os_log_impl(&_mh_execute_header, v83, v116, "Download keys: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v89, 0x34u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100018D00(v88, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v87, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v86, type metadata accessor for SharingCircleKeyManager.Instruction);
      }

      v105 = *(v0 + 496);
      v106 = *(v0 + 352);
      v107 = *(v105 + *(v106 + 36));
      *(v0 + 744) = v107;
      v108 = *(v106 + 20);
      if (v107 == 5)
      {
        v109 = swift_task_alloc();
        *(v0 + 552) = v109;
        *v109 = v0;
        v109[1] = sub_100C86BB4;

        return sub_100C85380(v105 + v108);
      }

      else
      {
        v110 = swift_task_alloc();
        *(v0 + 584) = v110;
        *v110 = v0;
        v110[1] = sub_100C87600;

        return sub_100C7BA0C(v0 + 16, v105 + v108);
      }
    }
  }

  v5 = 0;
  v6 = *(v0 + 248);
  *(v0 + 696) = *(*(v0 + 496) + *(*(v0 + 352) + 32));
  *(v0 + 740) = *(v6 + 80);
  *(v0 + 704) = *(v6 + 72);
  v7 = *(v0 + 672);
  while (1)
  {
    *(v0 + 712) = v5;
    v11 = *(v0 + 696);
    v12 = *(v0 + 280);
    sub_100D11DC8(*(v0 + 680) + ((*(v0 + 740) + 32) & ~*(v0 + 740)) + *(v0 + 704) * v5, v12, type metadata accessor for KeyDropInterface.KeyPackage);
    if ((sub_10111EFE8(*v12, v11) & 1) == 0)
    {
      v47 = *(v0 + 496);
      v48 = *(v0 + 440);
      sub_100D11DC8(*(v0 + 280), *(v0 + 264), type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100D11DC8(v47, v48, type metadata accessor for SharingCircleKeyManager.Instruction);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = *(v0 + 264);
        v52 = swift_slowAlloc();
        *(v0 + 208) = swift_slowAlloc();
        *v52 = 136446723;
        v53 = *v51;
        v54 = 0xE700000000000000;
        v55 = 0x7972616D697270;
        switch(v53)
        {
          case 1:
            v54 = 0xE900000000000079;
            v55 = 0x7261646E6F636573;
            break;
          case 2:
            v55 = 0xD000000000000019;
            v54 = 0x8000000101348160;
            break;
          case 3:
            v55 = 0xD00000000000001BLL;
            v54 = 0x8000000101348180;
            break;
          case 4:
            v54 = 0xEA0000000000656CLL;
            v55 = 0x646E7542646C6977;
            break;
          case 5:
            v55 = 0x417972616D697270;
            v54 = 0xEE00737365726464;
            break;
          case 6:
            v55 = 0xD000000000000010;
            v54 = 0x80000001013481C0;
            break;
          case 7:
            v55 = 0xD000000000000012;
            v54 = 0x80000001013475D0;
            break;
          case 8:
            v55 = 0xD000000000000011;
            v54 = 0x80000001013475F0;
            break;
          case 9:
            v55 = 0x697463656E6E6F63;
            v54 = 0xED000079654B6E6FLL;
            break;
          case 10:
            v55 = 0x656E774F7261656ELL;
            v54 = 0xEC00000079654B72;
            break;
          case 11:
            v54 = 0xE90000000000006ELL;
            v55 = 0x656B6F546E696F6ALL;
            break;
          case 12:
            v55 = 0xD000000000000015;
            v54 = 0x80000001013481F0;
            break;
          case 13:
            v55 = 0xD000000000000010;
            v54 = 0x8000000101348210;
            break;
          case 14:
            v55 = 0x7461636F4C626577;
            v54 = 0xEE0079654B6E6F69;
            break;
          case 15:
            v55 = 0x646174654D626577;
            v54 = 0xEB00000000617461;
            break;
          case 16:
            v55 = 0x6D65744974736F6CLL;
            v54 = 0xED00007365746144;
            break;
          case 17:
            v55 = 0xD000000000000014;
            v54 = 0x8000000101348240;
            break;
          case 18:
            v55 = 0xD000000000000016;
            v54 = 0x8000000101348260;
            break;
          default:
            break;
        }

        v58 = *(v0 + 440);
        v115 = *(v0 + 280);
        sub_100018D00(*(v0 + 264), type metadata accessor for KeyDropInterface.KeyPackage);
        v59 = sub_1000136BC(v55, v54, (v0 + 208));

        *(v52 + 4) = v59;
        *(v52 + 12) = 2160;
        *(v52 + 14) = 1752392040;
        *(v52 + 22) = 2081;
        type metadata accessor for UUID();
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v62 = v61;
        sub_100018D00(v58, type metadata accessor for SharingCircleKeyManager.Instruction);
        v63 = sub_1000136BC(v60, v62, (v0 + 208));

        *(v52 + 24) = v63;
        _os_log_impl(&_mh_execute_header, v49, v50, "Received package of type %{public}s\nfor shareId: %{private,mask.hash}s - ignoring unrequested package.", v52, 0x20u);
        swift_arrayDestroy();

        sub_100018D00(v115, type metadata accessor for KeyDropInterface.KeyPackage);
      }

      else
      {
        v8 = *(v0 + 440);
        v9 = *(v0 + 280);
        v10 = *(v0 + 264);

        sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v10, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100018D00(v9, type metadata accessor for KeyDropInterface.KeyPackage);
      }

      goto LABEL_4;
    }

    sub_100CA0FC8(*(v0 + 280), *(v0 + 600), *(v0 + 608), *(v0 + 272));
    if (!v7)
    {
      break;
    }

    v13 = *(v0 + 496);
    v14 = *(v0 + 376);
    v15 = *(v0 + 368);
    v16 = *(v0 + 280);
    v17 = *(v0 + 256);
    sub_100D11DC8(v13, *(v0 + 384), type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v13, v14, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v13, v15, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v16, v17, type metadata accessor for KeyDropInterface.KeyPackage);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    v20 = v19;
    v21 = os_log_type_enabled(v18, v19);
    v23 = *(v0 + 376);
    v22 = *(v0 + 384);
    v24 = *(v0 + 368);
    if (v21)
    {
      v117 = *(v0 + 280);
      v111 = *(v0 + 256);
      v114 = v18;
      v25 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v118[0] = swift_slowAlloc();
      *v25 = 136448003;
      v26 = sub_100C71778();
      v28 = v27;
      type = v20;
      sub_100018D00(v22, type metadata accessor for SharingCircleKeyManager.Instruction);
      v29 = sub_1000136BC(v26, v28, v118);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2160;
      *(v25 + 14) = 1752392040;
      *(v25 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_100018D00(v23, type metadata accessor for SharingCircleKeyManager.Instruction);
      v33 = sub_1000136BC(v30, v32, v118);

      *(v25 + 24) = v33;
      *(v25 + 32) = 2160;
      *(v25 + 34) = 1752392040;
      *(v25 + 42) = 2081;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_100018D00(v24, type metadata accessor for SharingCircleKeyManager.Instruction);
      v37 = sub_1000136BC(v34, v36, v118);

      *(v25 + 44) = v37;
      *(v25 + 52) = 2080;
      v38 = sub_10125403C(*v111);
      v40 = v39;
      sub_100018D00(v111, type metadata accessor for KeyDropInterface.KeyPackage);
      v41 = sub_1000136BC(v38, v40, v118);

      *(v25 + 54) = v41;
      *(v25 + 62) = 2082;
      swift_getErrorValue();
      v42 = Error.localizedDescription.getter();
      v44 = sub_1000136BC(v42, v43, v118);

      *(v25 + 64) = v44;
      *(v25 + 72) = 2112;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 74) = v45;
      *v113 = v45;
      _os_log_impl(&_mh_execute_header, v114, type, "Failed to save key package %{public}s,\nsharing-id: %{private,mask.hash}s,\n beacon-id: %{private,mask.hash}s,\npackageType: %s, error: %{public}s. %@.", v25, 0x52u);
      sub_10000B3A8(v113, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();

      v46 = v117;
    }

    else
    {
      v56 = *(v0 + 280);
      v57 = *(v0 + 256);

      sub_100018D00(v57, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v24, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v23, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v22, type metadata accessor for SharingCircleKeyManager.Instruction);
      v46 = v56;
    }

    sub_100018D00(v46, type metadata accessor for KeyDropInterface.KeyPackage);
    v7 = 0;
LABEL_4:
    v5 = *(v0 + 712) + 1;
    if (v5 == *(v0 + 688))
    {
      goto LABEL_32;
    }
  }

  v102 = swift_task_alloc();
  *(v0 + 720) = v102;
  *v102 = v0;
  v102[1] = sub_100C89DA0;
  v103 = *(v0 + 496);
  v104 = *(v0 + 272);

  return sub_100C8DBA8(v104, v103);
}

uint64_t sub_100C89DA0()
{
  v2 = *v1;
  *(*v1 + 728) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_100C8C9D8;
  }

  else
  {
    v4 = sub_100C89ECC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C89ECC()
{
  v116 = v0;
  v1 = *(v0 + 280);
  sub_100018D00(*(v0 + 272), type metadata accessor for KeyDropInterface.KeyPackage);
  sub_100018D00(v1, type metadata accessor for KeyDropInterface.KeyPackage);
  v2 = *(v0 + 712) + 1;
  if (v2 == *(v0 + 688))
  {
LABEL_2:
    v3 = sub_100D100F8(*(*(v0 + 304) + *(*(v0 + 288) + 24)), *(v0 + 600), *(v0 + 608), *(v0 + 496));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + 528);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_100A5B9D4(0, *(v5 + 2) + 1, 1, *(v0 + 528));
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_100A5B9D4((v6 > 1), v7 + 1, 1, v5);
    }

    v8 = *(v0 + 608);
    v9 = *(v0 + 600);
    v10 = *(v0 + 344);
    v11 = *(v0 + 304);
    sub_100016590(v9, v8);
    sub_100018D00(v10, type metadata accessor for KeyDropJoinToken);
    *(v5 + 2) = v7 + 1;
    *&v5[8 * v7 + 32] = v3;
    sub_100018D00(v11, type metadata accessor for KeyDropDownloadResponse);
    sub_100016590(v9, v8);
    v12 = *(v0 + 504);
    v13 = *(v0 + 520) + 1;
    sub_100018D00(*(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
    if (v13 == v12)
    {

      v14 = *(v0 + 8);

      return v14(v5);
    }

    else
    {
      v73 = *(v0 + 520) + 1;
      *(v0 + 528) = v5;
      *(v0 + 520) = v73;
      sub_100D11DC8(*(v0 + 232) + ((*(v0 + 736) + 32) & ~*(v0 + 736)) + *(v0 + 512) * v73, *(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
      if (qword_101694DF8 != -1)
      {
        swift_once();
      }

      v74 = *(v0 + 488);
      v75 = *(v0 + 496);
      v77 = *(v0 + 472);
      v76 = *(v0 + 480);
      v78 = type metadata accessor for Logger();
      *(v0 + 536) = v78;
      *(v0 + 544) = sub_1000076D4(v78, qword_10177BF08);
      sub_100D11DC8(v75, v74, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v75, v76, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v75, v77, type metadata accessor for SharingCircleKeyManager.Instruction);
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.default.getter();
      v81 = os_log_type_enabled(v79, v80);
      v83 = *(v0 + 480);
      v82 = *(v0 + 488);
      v84 = *(v0 + 472);
      if (v81)
      {
        v112 = v80;
        v85 = swift_slowAlloc();
        v115[0] = swift_slowAlloc();
        *v85 = 136447235;
        v86 = sub_100C71778();
        v88 = v87;
        sub_100018D00(v82, type metadata accessor for SharingCircleKeyManager.Instruction);
        v89 = sub_1000136BC(v86, v88, v115);

        *(v85 + 4) = v89;
        *(v85 + 12) = 2160;
        *(v85 + 14) = 1752392040;
        *(v85 + 22) = 2081;
        type metadata accessor for UUID();
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v90 = dispatch thunk of CustomStringConvertible.description.getter();
        v92 = v91;
        sub_100018D00(v83, type metadata accessor for SharingCircleKeyManager.Instruction);
        v93 = sub_1000136BC(v90, v92, v115);

        *(v85 + 24) = v93;
        *(v85 + 32) = 2160;
        *(v85 + 34) = 1752392040;
        *(v85 + 42) = 2081;
        v94 = dispatch thunk of CustomStringConvertible.description.getter();
        v96 = v95;
        sub_100018D00(v84, type metadata accessor for SharingCircleKeyManager.Instruction);
        v97 = sub_1000136BC(v94, v96, v115);

        *(v85 + 44) = v97;
        _os_log_impl(&_mh_execute_header, v79, v112, "Download keys: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v85, 0x34u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100018D00(v84, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v83, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v82, type metadata accessor for SharingCircleKeyManager.Instruction);
      }

      v98 = *(v0 + 496);
      v99 = *(v0 + 352);
      v100 = *(v98 + *(v99 + 36));
      *(v0 + 744) = v100;
      v101 = *(v99 + 20);
      if (v100 == 5)
      {
        v102 = swift_task_alloc();
        *(v0 + 552) = v102;
        *v102 = v0;
        v102[1] = sub_100C86BB4;

        return sub_100C85380(v98 + v101);
      }

      else
      {
        v103 = swift_task_alloc();
        *(v0 + 584) = v103;
        *v103 = v0;
        v103[1] = sub_100C87600;

        return sub_100C7BA0C(v0 + 16, v98 + v101);
      }
    }
  }

  v111 = *(v0 + 728);
  while (1)
  {
    *(v0 + 712) = v2;
    v16 = *(v0 + 696);
    v17 = *(v0 + 280);
    sub_100D11DC8(*(v0 + 680) + ((*(v0 + 740) + 32) & ~*(v0 + 740)) + *(v0 + 704) * v2, v17, type metadata accessor for KeyDropInterface.KeyPackage);
    if ((sub_10111EFE8(*v17, v16) & 1) == 0)
    {
      v18 = *(v0 + 496);
      v19 = *(v0 + 440);
      sub_100D11DC8(*(v0 + 280), *(v0 + 264), type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100D11DC8(v18, v19, type metadata accessor for SharingCircleKeyManager.Instruction);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = *(v0 + 264);
        v23 = swift_slowAlloc();
        *(v0 + 208) = swift_slowAlloc();
        *v23 = 136446723;
        v24 = *v22;
        v25 = 0xE700000000000000;
        v26 = 0x7972616D697270;
        switch(v24)
        {
          case 1:
            v25 = 0xE900000000000079;
            v26 = 0x7261646E6F636573;
            break;
          case 2:
            v26 = 0xD000000000000019;
            v25 = 0x8000000101348160;
            break;
          case 3:
            v26 = 0xD00000000000001BLL;
            v25 = 0x8000000101348180;
            break;
          case 4:
            v25 = 0xEA0000000000656CLL;
            v26 = 0x646E7542646C6977;
            break;
          case 5:
            v26 = 0x417972616D697270;
            v25 = 0xEE00737365726464;
            break;
          case 6:
            v26 = 0xD000000000000010;
            v25 = 0x80000001013481C0;
            break;
          case 7:
            v26 = 0xD000000000000012;
            v25 = 0x80000001013475D0;
            break;
          case 8:
            v26 = 0xD000000000000011;
            v25 = 0x80000001013475F0;
            break;
          case 9:
            v26 = 0x697463656E6E6F63;
            v25 = 0xED000079654B6E6FLL;
            break;
          case 10:
            v26 = 0x656E774F7261656ELL;
            v25 = 0xEC00000079654B72;
            break;
          case 11:
            v26 = 0x656B6F546E696F6ALL;
            v25 = 0xE90000000000006ELL;
            break;
          case 12:
            v26 = 0xD000000000000015;
            v25 = 0x80000001013481F0;
            break;
          case 13:
            v26 = 0xD000000000000010;
            v25 = 0x8000000101348210;
            break;
          case 14:
            v26 = 0x7461636F4C626577;
            v25 = 0xEE0079654B6E6F69;
            break;
          case 15:
            v26 = 0x646174654D626577;
            v25 = 0xEB00000000617461;
            break;
          case 16:
            v26 = 0x6D65744974736F6CLL;
            v25 = 0xED00007365746144;
            break;
          case 17:
            v26 = 0xD000000000000014;
            v25 = 0x8000000101348240;
            break;
          case 18:
            v26 = 0xD000000000000016;
            v25 = 0x8000000101348260;
            break;
          default:
            break;
        }

        v65 = *(v0 + 440);
        v114 = *(v0 + 280);
        sub_100018D00(*(v0 + 264), type metadata accessor for KeyDropInterface.KeyPackage);
        v66 = sub_1000136BC(v26, v25, (v0 + 208));

        *(v23 + 4) = v66;
        *(v23 + 12) = 2160;
        *(v23 + 14) = 1752392040;
        *(v23 + 22) = 2081;
        type metadata accessor for UUID();
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        sub_100018D00(v65, type metadata accessor for SharingCircleKeyManager.Instruction);
        v70 = sub_1000136BC(v67, v69, (v0 + 208));

        *(v23 + 24) = v70;
        _os_log_impl(&_mh_execute_header, v20, v21, "Received package of type %{public}s\nfor shareId: %{private,mask.hash}s - ignoring unrequested package.", v23, 0x20u);
        swift_arrayDestroy();

        v30 = v114;
      }

      else
      {
        v27 = *(v0 + 440);
        v28 = *(v0 + 280);
        v29 = *(v0 + 264);

        sub_100018D00(v27, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v29, type metadata accessor for KeyDropInterface.KeyPackage);
        v30 = v28;
      }

      sub_100018D00(v30, type metadata accessor for KeyDropInterface.KeyPackage);
      goto LABEL_38;
    }

    sub_100CA0FC8(*(v0 + 280), *(v0 + 600), *(v0 + 608), *(v0 + 272));
    if (!v111)
    {
      break;
    }

    v31 = *(v0 + 496);
    v32 = *(v0 + 376);
    v33 = *(v0 + 368);
    v34 = *(v0 + 280);
    v35 = *(v0 + 256);
    sub_100D11DC8(v31, *(v0 + 384), type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v31, v32, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v31, v33, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v34, v35, type metadata accessor for KeyDropInterface.KeyPackage);
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    v38 = v37;
    v39 = os_log_type_enabled(v36, v37);
    v41 = *(v0 + 376);
    v40 = *(v0 + 384);
    v42 = *(v0 + 368);
    if (v39)
    {
      v113 = *(v0 + 280);
      v107 = *(v0 + 256);
      v110 = v36;
      v43 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v115[0] = swift_slowAlloc();
      *v43 = 136448003;
      v44 = sub_100C71778();
      v46 = v45;
      type = v38;
      sub_100018D00(v40, type metadata accessor for SharingCircleKeyManager.Instruction);
      v47 = sub_1000136BC(v44, v46, v115);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2160;
      *(v43 + 14) = 1752392040;
      *(v43 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      sub_100018D00(v41, type metadata accessor for SharingCircleKeyManager.Instruction);
      v51 = sub_1000136BC(v48, v50, v115);

      *(v43 + 24) = v51;
      *(v43 + 32) = 2160;
      *(v43 + 34) = 1752392040;
      *(v43 + 42) = 2081;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      sub_100018D00(v42, type metadata accessor for SharingCircleKeyManager.Instruction);
      v55 = sub_1000136BC(v52, v54, v115);

      *(v43 + 44) = v55;
      *(v43 + 52) = 2080;
      v56 = sub_10125403C(*v107);
      v58 = v57;
      sub_100018D00(v107, type metadata accessor for KeyDropInterface.KeyPackage);
      v59 = sub_1000136BC(v56, v58, v115);

      *(v43 + 54) = v59;
      *(v43 + 62) = 2082;
      swift_getErrorValue();
      v60 = Error.localizedDescription.getter();
      v62 = sub_1000136BC(v60, v61, v115);

      *(v43 + 64) = v62;
      *(v43 + 72) = 2112;
      swift_errorRetain();
      v63 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 74) = v63;
      *v109 = v63;
      _os_log_impl(&_mh_execute_header, v110, type, "Failed to save key package %{public}s,\nsharing-id: %{private,mask.hash}s,\n beacon-id: %{private,mask.hash}s,\npackageType: %s, error: %{public}s. %@.", v43, 0x52u);
      sub_10000B3A8(v109, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();

      v64 = v113;
    }

    else
    {
      v71 = *(v0 + 280);
      v72 = *(v0 + 256);

      sub_100018D00(v72, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v42, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v41, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v40, type metadata accessor for SharingCircleKeyManager.Instruction);
      v64 = v71;
    }

    sub_100018D00(v64, type metadata accessor for KeyDropInterface.KeyPackage);
    v111 = 0;
LABEL_38:
    v2 = *(v0 + 712) + 1;
    if (v2 == *(v0 + 688))
    {
      goto LABEL_2;
    }
  }

  v104 = swift_task_alloc();
  *(v0 + 720) = v104;
  *v104 = v0;
  v104[1] = sub_100C89DA0;
  v105 = *(v0 + 496);
  v106 = *(v0 + 272);

  return sub_100C8DBA8(v106, v105);
}

uint64_t sub_100C8B0C8()
{
  v44 = v0;
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to read circleSharedSecret %@.", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 528);
  v7 = *(v0 + 504);
  v8 = *(v0 + 520) + 1;
  sub_100018D00(*(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
  if (v8 == v7)
  {

    v9 = *(v0 + 8);

    return v9(v6);
  }

  else
  {
    v11 = *(v0 + 520) + 1;
    *(v0 + 528) = v6;
    *(v0 + 520) = v11;
    sub_100D11DC8(*(v0 + 232) + ((*(v0 + 736) + 32) & ~*(v0 + 736)) + *(v0 + 512) * v11, *(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
    if (qword_101694DF8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 488);
    v13 = *(v0 + 496);
    v15 = *(v0 + 472);
    v14 = *(v0 + 480);
    v16 = type metadata accessor for Logger();
    *(v0 + 536) = v16;
    *(v0 + 544) = sub_1000076D4(v16, qword_10177BF08);
    sub_100D11DC8(v13, v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v13, v14, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v13, v15, type metadata accessor for SharingCircleKeyManager.Instruction);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 480);
    v20 = *(v0 + 488);
    v22 = *(v0 + 472);
    if (v19)
    {
      v42 = v18;
      v23 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v23 = 136447235;
      v24 = sub_100C71778();
      v26 = v25;
      sub_100018D00(v20, type metadata accessor for SharingCircleKeyManager.Instruction);
      v27 = sub_1000136BC(v24, v26, &v43);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2160;
      *(v23 + 14) = 1752392040;
      *(v23 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      sub_100018D00(v21, type metadata accessor for SharingCircleKeyManager.Instruction);
      v31 = sub_1000136BC(v28, v30, &v43);

      *(v23 + 24) = v31;
      *(v23 + 32) = 2160;
      *(v23 + 34) = 1752392040;
      *(v23 + 42) = 2081;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_100018D00(v22, type metadata accessor for SharingCircleKeyManager.Instruction);
      v35 = sub_1000136BC(v32, v34, &v43);

      *(v23 + 44) = v35;
      _os_log_impl(&_mh_execute_header, v17, v42, "Download keys: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v23, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v22, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v21, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v20, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v36 = *(v0 + 496);
    v37 = *(v0 + 352);
    v38 = *(v36 + *(v37 + 36));
    *(v0 + 744) = v38;
    v39 = *(v37 + 20);
    if (v38 == 5)
    {
      v40 = swift_task_alloc();
      *(v0 + 552) = v40;
      *v40 = v0;
      v40[1] = sub_100C86BB4;

      return sub_100C85380(v36 + v39);
    }

    else
    {
      v41 = swift_task_alloc();
      *(v0 + 584) = v41;
      *v41 = v0;
      v41[1] = sub_100C87600;

      return sub_100C7BA0C(v0 + 16, v36 + v39);
    }
  }
}

uint64_t sub_100C8B804()
{
  v44 = v0;
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to read circleSharedSecret %@.", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 528);
  v7 = *(v0 + 504);
  v8 = *(v0 + 520) + 1;
  sub_100018D00(*(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
  if (v8 == v7)
  {

    v9 = *(v0 + 8);

    return v9(v6);
  }

  else
  {
    v11 = *(v0 + 520) + 1;
    *(v0 + 528) = v6;
    *(v0 + 520) = v11;
    sub_100D11DC8(*(v0 + 232) + ((*(v0 + 736) + 32) & ~*(v0 + 736)) + *(v0 + 512) * v11, *(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
    if (qword_101694DF8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 488);
    v13 = *(v0 + 496);
    v15 = *(v0 + 472);
    v14 = *(v0 + 480);
    v16 = type metadata accessor for Logger();
    *(v0 + 536) = v16;
    *(v0 + 544) = sub_1000076D4(v16, qword_10177BF08);
    sub_100D11DC8(v13, v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v13, v14, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v13, v15, type metadata accessor for SharingCircleKeyManager.Instruction);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 480);
    v20 = *(v0 + 488);
    v22 = *(v0 + 472);
    if (v19)
    {
      v42 = v18;
      v23 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v23 = 136447235;
      v24 = sub_100C71778();
      v26 = v25;
      sub_100018D00(v20, type metadata accessor for SharingCircleKeyManager.Instruction);
      v27 = sub_1000136BC(v24, v26, &v43);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2160;
      *(v23 + 14) = 1752392040;
      *(v23 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      sub_100018D00(v21, type metadata accessor for SharingCircleKeyManager.Instruction);
      v31 = sub_1000136BC(v28, v30, &v43);

      *(v23 + 24) = v31;
      *(v23 + 32) = 2160;
      *(v23 + 34) = 1752392040;
      *(v23 + 42) = 2081;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_100018D00(v22, type metadata accessor for SharingCircleKeyManager.Instruction);
      v35 = sub_1000136BC(v32, v34, &v43);

      *(v23 + 44) = v35;
      _os_log_impl(&_mh_execute_header, v17, v42, "Download keys: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v23, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v22, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v21, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v20, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v36 = *(v0 + 496);
    v37 = *(v0 + 352);
    v38 = *(v36 + *(v37 + 36));
    *(v0 + 744) = v38;
    v39 = *(v37 + 20);
    if (v38 == 5)
    {
      v40 = swift_task_alloc();
      *(v0 + 552) = v40;
      *v40 = v0;
      v40[1] = sub_100C86BB4;

      return sub_100C85380(v36 + v39);
    }

    else
    {
      v41 = swift_task_alloc();
      *(v0 + 584) = v41;
      *v41 = v0;
      v41[1] = sub_100C87600;

      return sub_100C7BA0C(v0 + 16, v36 + v39);
    }
  }
}

uint64_t sub_100C8BF40()
{
  v37 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = v0[62];
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[52];
  sub_1000076D4(v0[67], qword_10177AE40);
  sub_100D11DC8(v1, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v1, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v1, v4, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v34 = v6;
    v8 = v0[53];
    v7 = v0[54];
    v35 = v0[52];
    v9 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v9 = 136447491;
    v10 = sub_100C71778();
    v12 = v11;
    sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    v13 = sub_1000136BC(v10, v12, v36);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v17 = sub_1000136BC(v14, v16, v36);

    *(v9 + 24) = v17;
    *(v9 + 32) = 2160;
    *(v9 + 34) = 1752392040;
    *(v9 + 42) = 2081;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_100018D00(v35, type metadata accessor for SharingCircleKeyManager.Instruction);
    v21 = sub_1000136BC(v18, v20, v36);

    *(v9 + 44) = v21;
    *(v9 + 52) = 2082;
    swift_getErrorValue();
    v22 = Error.localizedDescription.getter();
    v24 = sub_1000136BC(v22, v23, v36);

    *(v9 + 54) = v24;
    _os_log_impl(&_mh_execute_header, v5, v34, "Failed to process downloaded keys for imported share %{public}s,\nsharing-id: %{private,mask.hash}s,\n beacon-id: %{private,mask.hash}s, error: %{public}s.", v9, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    v26 = v0[53];
    v25 = v0[54];
    v27 = v0[52];

    sub_100018D00(v27, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v26, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v25, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v28 = v0[78];
  v29 = v0[77];
  v30 = v0[62];
  v31 = v0[43];
  swift_willThrow();
  sub_100016590(v28, v29);
  sub_100018D00(v31, type metadata accessor for KeyDropJoinToken);
  sub_100016590(v28, v29);
  sub_100018D00(v30, type metadata accessor for SharingCircleKeyManager.Instruction);

  v32 = v0[1];

  return v32();
}

uint64_t sub_100C8C4B0()
{
  v36 = v0;
  v1 = v0[62];
  v2 = v0[50];
  v3 = v0[49];
  sub_100D11DC8(v1, v0[51], type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v1, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v1, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v33 = v5;
    v7 = v0[50];
    v6 = v0[51];
    v34 = v0[49];
    v8 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v8 = 136447491;
    v9 = sub_100C71778();
    v11 = v10;
    sub_100018D00(v6, type metadata accessor for SharingCircleKeyManager.Instruction);
    v12 = sub_1000136BC(v9, v11, v35);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2160;
    *(v8 + 14) = 1752392040;
    *(v8 + 22) = 2081;
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    v16 = sub_1000136BC(v13, v15, v35);

    *(v8 + 24) = v16;
    *(v8 + 32) = 2160;
    *(v8 + 34) = 1752392040;
    *(v8 + 42) = 2081;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_100018D00(v34, type metadata accessor for SharingCircleKeyManager.Instruction);
    v20 = sub_1000136BC(v17, v19, v35);

    *(v8 + 44) = v20;
    *(v8 + 52) = 2082;
    swift_getErrorValue();
    v21 = Error.localizedDescription.getter();
    v23 = sub_1000136BC(v21, v22, v35);

    *(v8 + 54) = v23;
    _os_log_impl(&_mh_execute_header, v4, v33, "Failed to process downloaded keys %{public}s,\nsharing-id: %{private,mask.hash}s,\n beacon-id: %{private,mask.hash}s, error: %{public}s.", v8, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    v25 = v0[50];
    v24 = v0[51];
    v26 = v0[49];

    sub_100018D00(v26, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v25, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v24, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v27 = v0[75];
  v28 = v0[76];
  v29 = v0[62];
  v30 = v0[43];
  swift_willThrow();
  sub_100016590(v27, v28);
  sub_100018D00(v30, type metadata accessor for KeyDropJoinToken);
  sub_100016590(v27, v28);
  sub_100018D00(v29, type metadata accessor for SharingCircleKeyManager.Instruction);

  v31 = v0[1];

  return v31();
}

uint64_t sub_100C8C9D8()
{
  v113 = v0;
  sub_100018D00(*(v0 + 272), type metadata accessor for KeyDropInterface.KeyPackage);
  v1 = *(v0 + 496);
  v2 = *(v0 + 376);
  v3 = *(v0 + 368);
  v4 = *(v0 + 280);
  v5 = *(v0 + 256);
  sub_100D11DC8(v1, *(v0 + 384), type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v1, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v1, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v4, v5, type metadata accessor for KeyDropInterface.KeyPackage);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = v7;
  v9 = os_log_type_enabled(v6, v7);
  v11 = *(v0 + 376);
  v10 = *(v0 + 384);
  v12 = *(v0 + 368);
  if (v9)
  {
    v110 = *(v0 + 280);
    v105 = *(v0 + 256);
    v13 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v112[0] = swift_slowAlloc();
    *v13 = 136448003;
    type = v8;
    v14 = sub_100C71778();
    log = v6;
    v16 = v15;
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    v17 = sub_1000136BC(v14, v16, v112);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    v21 = sub_1000136BC(v18, v20, v112);

    *(v13 + 24) = v21;
    *(v13 + 32) = 2160;
    *(v13 + 34) = 1752392040;
    *(v13 + 42) = 2081;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    v25 = sub_1000136BC(v22, v24, v112);

    *(v13 + 44) = v25;
    *(v13 + 52) = 2080;
    v26 = sub_10125403C(*v105);
    v28 = v27;
    sub_100018D00(v105, type metadata accessor for KeyDropInterface.KeyPackage);
    v29 = sub_1000136BC(v26, v28, v112);

    *(v13 + 54) = v29;
    *(v13 + 62) = 2082;
    swift_getErrorValue();
    v30 = Error.localizedDescription.getter();
    v32 = sub_1000136BC(v30, v31, v112);

    *(v13 + 64) = v32;
    *(v13 + 72) = 2112;
    swift_errorRetain();
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 74) = v33;
    *v108 = v33;
    _os_log_impl(&_mh_execute_header, log, type, "Failed to save key package %{public}s,\nsharing-id: %{private,mask.hash}s,\n beacon-id: %{private,mask.hash}s,\npackageType: %s, error: %{public}s. %@.", v13, 0x52u);
    sub_10000B3A8(v108, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v34 = v110;
  }

  else
  {
    v35 = *(v0 + 280);
    v36 = *(v0 + 256);

    sub_100018D00(v36, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    v34 = v35;
  }

  while (1)
  {
    sub_100018D00(v34, type metadata accessor for KeyDropInterface.KeyPackage);
    v40 = *(v0 + 712) + 1;
    if (v40 == *(v0 + 688))
    {
      break;
    }

    *(v0 + 712) = v40;
    v41 = *(v0 + 696);
    v42 = *(v0 + 280);
    sub_100D11DC8(*(v0 + 680) + ((*(v0 + 740) + 32) & ~*(v0 + 740)) + *(v0 + 704) * v40, v42, type metadata accessor for KeyDropInterface.KeyPackage);
    if (sub_10111EFE8(*v42, v41))
    {
      sub_100CA0FC8(*(v0 + 280), *(v0 + 600), *(v0 + 608), *(v0 + 272));
      v58 = swift_task_alloc();
      *(v0 + 720) = v58;
      *v58 = v0;
      v58[1] = sub_100C89DA0;
      v59 = *(v0 + 496);
      v60 = *(v0 + 272);

      return sub_100C8DBA8(v60, v59);
    }

    v43 = *(v0 + 496);
    v44 = *(v0 + 440);
    sub_100D11DC8(*(v0 + 280), *(v0 + 264), type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v43, v44, type metadata accessor for SharingCircleKeyManager.Instruction);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = *(v0 + 264);
      v48 = swift_slowAlloc();
      *(v0 + 208) = swift_slowAlloc();
      *v48 = 136446723;
      v49 = *v47;
      v50 = 0xE700000000000000;
      v51 = 0x7972616D697270;
      switch(v49)
      {
        case 1:
          v50 = 0xE900000000000079;
          v51 = 0x7261646E6F636573;
          break;
        case 2:
          v51 = 0xD000000000000019;
          v50 = 0x8000000101348160;
          break;
        case 3:
          v51 = 0xD00000000000001BLL;
          v50 = 0x8000000101348180;
          break;
        case 4:
          v50 = 0xEA0000000000656CLL;
          v51 = 0x646E7542646C6977;
          break;
        case 5:
          v51 = 0x417972616D697270;
          v50 = 0xEE00737365726464;
          break;
        case 6:
          v51 = 0xD000000000000010;
          v50 = 0x80000001013481C0;
          break;
        case 7:
          v51 = 0xD000000000000012;
          v50 = 0x80000001013475D0;
          break;
        case 8:
          v51 = 0xD000000000000011;
          v50 = 0x80000001013475F0;
          break;
        case 9:
          v51 = 0x697463656E6E6F63;
          v50 = 0xED000079654B6E6FLL;
          break;
        case 10:
          v51 = 0x656E774F7261656ELL;
          v50 = 0xEC00000079654B72;
          break;
        case 11:
          v51 = 0x656B6F546E696F6ALL;
          v50 = 0xE90000000000006ELL;
          break;
        case 12:
          v51 = 0xD000000000000015;
          v50 = 0x80000001013481F0;
          break;
        case 13:
          v51 = 0xD000000000000010;
          v50 = 0x8000000101348210;
          break;
        case 14:
          v51 = 0x7461636F4C626577;
          v50 = 0xEE0079654B6E6F69;
          break;
        case 15:
          v51 = 0x646174654D626577;
          v50 = 0xEB00000000617461;
          break;
        case 16:
          v51 = 0x6D65744974736F6CLL;
          v50 = 0xED00007365746144;
          break;
        case 17:
          v51 = 0xD000000000000014;
          v50 = 0x8000000101348240;
          break;
        case 18:
          v51 = 0xD000000000000016;
          v50 = 0x8000000101348260;
          break;
        default:
          break;
      }

      v52 = *(v0 + 440);
      v111 = *(v0 + 280);
      sub_100018D00(*(v0 + 264), type metadata accessor for KeyDropInterface.KeyPackage);
      v53 = sub_1000136BC(v51, v50, (v0 + 208));

      *(v48 + 4) = v53;
      *(v48 + 12) = 2160;
      *(v48 + 14) = 1752392040;
      *(v48 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      sub_100018D00(v52, type metadata accessor for SharingCircleKeyManager.Instruction);
      v57 = sub_1000136BC(v54, v56, (v0 + 208));

      *(v48 + 24) = v57;
      _os_log_impl(&_mh_execute_header, v45, v46, "Received package of type %{public}s\nfor shareId: %{private,mask.hash}s - ignoring unrequested package.", v48, 0x20u);
      swift_arrayDestroy();

      v34 = v111;
    }

    else
    {
      v37 = *(v0 + 440);
      v38 = *(v0 + 280);
      v39 = *(v0 + 264);

      sub_100018D00(v37, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v39, type metadata accessor for KeyDropInterface.KeyPackage);
      v34 = v38;
    }
  }

  v62 = sub_100D100F8(*(*(v0 + 304) + *(*(v0 + 288) + 24)), *(v0 + 600), *(v0 + 608), *(v0 + 496));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = *(v0 + 528);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v64 = sub_100A5B9D4(0, *(v64 + 2) + 1, 1, *(v0 + 528));
  }

  v66 = *(v64 + 2);
  v65 = *(v64 + 3);
  if (v66 >= v65 >> 1)
  {
    v64 = sub_100A5B9D4((v65 > 1), v66 + 1, 1, v64);
  }

  v67 = *(v0 + 608);
  v68 = *(v0 + 600);
  v69 = *(v0 + 344);
  v70 = *(v0 + 304);
  sub_100016590(v68, v67);
  sub_100018D00(v69, type metadata accessor for KeyDropJoinToken);
  *(v64 + 2) = v66 + 1;
  *&v64[8 * v66 + 32] = v62;
  sub_100018D00(v70, type metadata accessor for KeyDropDownloadResponse);
  sub_100016590(v68, v67);
  v71 = *(v0 + 504);
  v72 = *(v0 + 520) + 1;
  sub_100018D00(*(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
  if (v72 == v71)
  {

    v73 = *(v0 + 8);

    return v73(v64);
  }

  else
  {
    v74 = *(v0 + 520) + 1;
    *(v0 + 528) = v64;
    *(v0 + 520) = v74;
    sub_100D11DC8(*(v0 + 232) + ((*(v0 + 736) + 32) & ~*(v0 + 736)) + *(v0 + 512) * v74, *(v0 + 496), type metadata accessor for SharingCircleKeyManager.Instruction);
    if (qword_101694DF8 != -1)
    {
      swift_once();
    }

    v75 = *(v0 + 488);
    v76 = *(v0 + 496);
    v78 = *(v0 + 472);
    v77 = *(v0 + 480);
    v79 = type metadata accessor for Logger();
    *(v0 + 536) = v79;
    *(v0 + 544) = sub_1000076D4(v79, qword_10177BF08);
    sub_100D11DC8(v76, v75, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v76, v77, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v76, v78, type metadata accessor for SharingCircleKeyManager.Instruction);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    v82 = os_log_type_enabled(v80, v81);
    v84 = *(v0 + 480);
    v83 = *(v0 + 488);
    v85 = *(v0 + 472);
    if (v82)
    {
      v86 = swift_slowAlloc();
      v112[0] = swift_slowAlloc();
      *v86 = 136447235;
      v87 = sub_100C71778();
      v89 = v88;
      sub_100018D00(v83, type metadata accessor for SharingCircleKeyManager.Instruction);
      v90 = sub_1000136BC(v87, v89, v112);

      *(v86 + 4) = v90;
      *(v86 + 12) = 2160;
      *(v86 + 14) = 1752392040;
      *(v86 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v109 = v81;
      v93 = v92;
      sub_100018D00(v84, type metadata accessor for SharingCircleKeyManager.Instruction);
      v94 = sub_1000136BC(v91, v93, v112);

      *(v86 + 24) = v94;
      *(v86 + 32) = 2160;
      *(v86 + 34) = 1752392040;
      *(v86 + 42) = 2081;
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v96;
      sub_100018D00(v85, type metadata accessor for SharingCircleKeyManager.Instruction);
      v98 = sub_1000136BC(v95, v97, v112);

      *(v86 + 44) = v98;
      _os_log_impl(&_mh_execute_header, v80, v109, "Download keys: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v86, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v85, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v84, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v83, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v99 = *(v0 + 496);
    v100 = *(v0 + 352);
    v101 = *(v99 + *(v100 + 36));
    *(v0 + 744) = v101;
    v102 = *(v100 + 20);
    if (v101 == 5)
    {
      v103 = swift_task_alloc();
      *(v0 + 552) = v103;
      *v103 = v0;
      v103[1] = sub_100C86BB4;

      return sub_100C85380(v99 + v102);
    }

    else
    {
      v104 = swift_task_alloc();
      *(v0 + 584) = v104;
      *v104 = v0;
      v104[1] = sub_100C87600;

      return sub_100C7BA0C(v0 + 16, v99 + v102);
    }
  }
}

uint64_t sub_100C8DBA8(uint64_t a1, uint64_t a2)
{
  v3[206] = v2;
  v3[205] = a2;
  v3[204] = a1;
  v3[207] = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v3[208] = swift_task_alloc();
  sub_1000BC4D4(&unk_101698C20, &qword_101390748);
  v3[209] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3[210] = swift_task_alloc();
  v3[211] = swift_task_alloc();
  v4 = type metadata accessor for KeyDropLostItemDates(0);
  v3[212] = v4;
  v3[213] = *(v4 - 8);
  v3[214] = swift_task_alloc();
  v3[215] = type metadata accessor for KeyDropBeaconGroupAttributes(0);
  v3[216] = swift_task_alloc();
  v3[217] = swift_task_alloc();
  v3[218] = swift_task_alloc();
  v5 = type metadata accessor for Connection.TransactionMode();
  v3[219] = v5;
  v3[220] = *(v5 - 8);
  v3[221] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v3[222] = v6;
  v3[223] = *(v6 - 8);
  v3[224] = swift_task_alloc();
  v3[225] = type metadata accessor for KeyDropJoinToken(0);
  v3[226] = swift_task_alloc();
  v3[227] = type metadata accessor for KeySyncMetadata(0);
  v3[228] = swift_task_alloc();
  v3[229] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[230] = v7;
  v8 = *(v7 - 8);
  v3[231] = v8;
  v3[232] = *(v8 + 64);
  v3[233] = swift_task_alloc();
  v3[234] = swift_task_alloc();
  v3[235] = swift_task_alloc();
  v3[236] = swift_task_alloc();
  v3[237] = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v3[238] = swift_task_alloc();
  v3[239] = swift_task_alloc();
  v3[240] = swift_task_alloc();
  v9 = type metadata accessor for SharedBeaconRecord(0);
  v3[241] = v9;
  v10 = *(v9 - 8);
  v3[242] = v10;
  v3[243] = *(v10 + 64);
  v3[244] = swift_task_alloc();
  v3[245] = swift_task_alloc();
  v3[246] = swift_task_alloc();
  v3[247] = swift_task_alloc();
  v3[248] = type metadata accessor for SharingCircleSecretValue(0);
  v3[249] = swift_task_alloc();
  v3[250] = swift_task_alloc();
  v3[251] = swift_task_alloc();
  v3[252] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v3[253] = v11;
  v3[254] = *(v11 - 8);
  v3[255] = swift_task_alloc();
  v3[256] = swift_task_alloc();
  v3[257] = swift_task_alloc();
  v3[258] = type metadata accessor for KeyDropInterface.KeyPackage(0);
  v3[259] = swift_task_alloc();
  v3[260] = swift_task_alloc();
  v3[261] = swift_task_alloc();
  v12 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v3[262] = v12;
  v13 = *(v12 - 8);
  v3[263] = v13;
  v3[264] = *(v13 + 64);
  v3[265] = swift_task_alloc();
  v3[266] = swift_task_alloc();
  v3[267] = swift_task_alloc();
  v3[268] = swift_task_alloc();
  v3[269] = swift_task_alloc();
  v3[270] = swift_task_alloc();
  v3[271] = swift_task_alloc();
  v3[272] = swift_task_alloc();
  v3[273] = swift_task_alloc();
  v3[274] = swift_task_alloc();
  v3[275] = swift_task_alloc();
  v3[276] = swift_task_alloc();

  return _swift_task_switch(sub_100C8E1F0, v2, 0);
}

uint64_t sub_100C8E1F0()
{
  v42 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[276];
  v2 = v0[275];
  v3 = v0[274];
  v4 = v0[261];
  v5 = v0[260];
  v6 = v0[205];
  v7 = v0[204];
  v8 = type metadata accessor for Logger();
  v0[277] = sub_1000076D4(v8, qword_10177BF08);
  sub_100D11DC8(v6, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v7, v4, type metadata accessor for KeyDropInterface.KeyPackage);
  sub_100D11DC8(v6, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v6, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v7, v5, type metadata accessor for KeyDropInterface.KeyPackage);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[276];
  v13 = v0[275];
  v14 = v0[274];
  if (v11)
  {
    v37 = v0[274];
    v15 = v0[261];
    v39 = v0[258];
    v40 = v0[260];
    v16 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v16 = 136447747;
    v17 = sub_100C71778();
    v38 = v10;
    v19 = v18;
    sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    v20 = sub_1000136BC(v17, v19, &v41);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_10125403C(*v15);
    v23 = v22;
    sub_100018D00(v15, type metadata accessor for KeyDropInterface.KeyPackage);
    v24 = sub_1000136BC(v21, v23, &v41);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2160;
    *(v16 + 24) = 1752392040;
    *(v16 + 32) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    sub_100018D00(v13, type metadata accessor for SharingCircleKeyManager.Instruction);
    v28 = sub_1000136BC(v25, v27, &v41);

    *(v16 + 34) = v28;
    *(v16 + 42) = 2160;
    *(v16 + 44) = 1752392040;
    *(v16 + 52) = 2081;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    sub_100018D00(v37, type metadata accessor for SharingCircleKeyManager.Instruction);
    v32 = sub_1000136BC(v29, v31, &v41);

    *(v16 + 54) = v32;
    *(v16 + 62) = 2048;
    v33 = *(*(v40 + *(v39 + 24)) + 16);
    sub_100018D00(v40, type metadata accessor for KeyDropInterface.KeyPackage);
    *(v16 + 64) = v33;
    _os_log_impl(&_mh_execute_header, v9, v38, "Save key package: %{public}s,\ntype: %s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nkeys: %ld.", v16, 0x48u);
    swift_arrayDestroy();
  }

  else
  {
    v34 = v0[261];
    sub_100018D00(v0[260], type metadata accessor for KeyDropInterface.KeyPackage);

    sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v13, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v34, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v35 = *(v0[206] + 120);
  v0[278] = v35;

  return _swift_task_switch(sub_100C8E680, v35, 0);
}

uint64_t sub_100C8E680()
{

  v1 = swift_task_alloc();
  v0[279] = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  v0[280] = v2;
  *v1 = v0;
  v1[1] = sub_100C8E764;
  v3 = v0[278];

  return unsafeBlocking<A>(context:_:)(v0 + 202, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_100C8E764()
{
  v1 = *(*v0 + 2224);

  return _swift_task_switch(sub_100C8E87C, v1, 0);
}

uint64_t sub_100C8E87C()
{
  v1 = v0[206];
  v0[281] = v0[202];
  return _swift_task_switch(sub_100C8E8A0, v1, 0);
}

uint64_t sub_100C8E8A0()
{
  v149 = v0;
  v1 = *(v0 + 2064);
  v2 = *(v0 + 1632);
  v3 = *&v2[*(v1 + 24)];
  if (*(v3 + 16))
  {
    v4 = *(v0 + 2056);
    v5 = *(v0 + 2032);
    v6 = *(v0 + 2024);
    *(v0 + 160) = *(v3 + 32);
    v7 = *(v3 + 48);
    v8 = *(v3 + 64);
    v9 = *(v3 + 80);
    *(v0 + 224) = *(v3 + 96);
    *(v0 + 192) = v8;
    *(v0 + 208) = v9;
    *(v0 + 176) = v7;
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    v12 = &v2[*(v1 + 20)];
    v13 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
    *(v0 + 2256) = *&v12[*(v13 + 20)];
    v14 = *(v13 + 24);
    v15 = *(v5 + 16);
    *(v0 + 2264) = v15;
    *(v0 + 2272) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v4, &v12[v14], v6);
    switch(*v2)
    {
      case 0:
        v16 = *(v0 + 2056);
        v17 = *(v0 + 2032);
        v18 = *(v0 + 2024);
        v19 = v0 + 160;
        v20 = v0 + 664;
        goto LABEL_22;
      case 1:
        v75 = *(v0 + 1632);
        sub_1003914F8(v0 + 160, v0 + 1024);
        v69 = sub_100D0FEE0(v75);
        *(v0 + 2592) = v69;
        v114 = v69[2];
        *(v0 + 2600) = v114;
        if (!v114)
        {
          v137 = *(v0 + 2056);
          v138 = *(v0 + 2032);
          v139 = *(v0 + 2024);

          sub_100391554(v0 + 160);

          (*(v138 + 8))(v137, v139);
          goto LABEL_23;
        }

        *(v0 + 2836) = *(*(v0 + 2096) + 24);
        *(v0 + 2840) = enum case for Connection.TransactionMode.deferred(_:);
        *(v0 + 2608) = 0u;
        if (v69[2])
        {
          v78 = *(v0 + 2224);
          *(v0 + 2624) = v69[4];
          v115 = v69[5];
          *(v0 + 2632) = v115;
          v116 = v69[6];
          *(v0 + 2640) = v116;
          sub_100017D5C(v115, v116);
          v79 = sub_100C9495C;
LABEL_28:
          v69 = v79;
          v70 = v78;
LABEL_29:
          v76 = 0;
        }

        else
        {
          __break(1u);
        }

        result = _swift_task_switch(v69, v70, v76);
        break;
      case 2:
        v16 = *(v0 + 2056);
        v17 = *(v0 + 2032);
        v18 = *(v0 + 2024);
        v19 = v0 + 160;
        v20 = v0 + 592;
        goto LABEL_22;
      case 3:
        v16 = *(v0 + 2056);
        v17 = *(v0 + 2032);
        v18 = *(v0 + 2024);
        v19 = v0 + 160;
        v20 = v0 + 520;
        goto LABEL_22;
      case 4:
        v16 = *(v0 + 2056);
        v17 = *(v0 + 2032);
        v18 = *(v0 + 2024);
        v19 = v0 + 160;
        v20 = v0 + 736;
        goto LABEL_22;
      case 5:
        v78 = *(v0 + 2224);
        *(v0 + 2824) = *(*(v0 + 2096) + 24);
        sub_1003914F8(v0 + 160, v0 + 1312);
        v79 = sub_100C906E8;
        goto LABEL_28;
      case 6:
        v78 = *(v0 + 2224);
        *(v0 + 2828) = *(*(v0 + 2096) + 24);
        sub_1003914F8(v0 + 160, v0 + 16);
        v79 = sub_100C91BD4;
        goto LABEL_28;
      case 7:
        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        sub_1003914F8(v0 + 160, v0 + 1240);
        *(v0 + 2528) = PropertyListDecoder.init()();
        sub_100313070();
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        v71 = *(v0 + 2000);
        v72 = *(v0 + 1584);
        *(v0 + 2536) = v72;
        v73 = *(v0 + 1592);
        *(v0 + 2544) = v73;
        *v71 = v72;
        v71[1] = v73;
        swift_storeEnumTagMultiPayload();
        sub_100017D5C(v72, v73);
        v74 = swift_task_alloc();
        *(v0 + 2552) = v74;
        *v74 = v0;
        v74[1] = sub_100C94038;
        v63 = *(v0 + 2000);
        goto LABEL_47;
      case 8:
        sub_1003914F8(v0 + 160, v0 + 1384);
        sub_100017D5C(v11, v10);
        sub_1004A4714(v11, v10, v148);
        v129 = *(v0 + 2008);
        v131 = v148[0];
        v130 = v148[1];
        *(v0 + 2496) = v148[0];
        *(v0 + 2504) = v130;
        *v129 = v131;
        v129[1] = v130;
        swift_storeEnumTagMultiPayload();
        sub_100017D5C(v131, v130);
        v132 = swift_task_alloc();
        *(v0 + 2512) = v132;
        *v132 = v0;
        v132[1] = sub_100C93BB4;
        v63 = *(v0 + 2008);
        goto LABEL_47;
      case 9:
        sub_1003914F8(v0 + 160, v0 + 1456);
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&_mh_execute_header, v64, v65, "Processing connection keys.", v66, 2u);
        }

        v67 = *(v0 + 2224);
        v68 = *(v0 + 2096);

        *(v0 + 2832) = *(v68 + 24);
        v69 = sub_100C930C4;
        v70 = v67;
        goto LABEL_29;
      case 0xA:
        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        sub_1003914F8(v0 + 160, v0 + 88);
        *(v0 + 2280) = PropertyListDecoder.init()();
        sub_10049DECC();
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        v125 = *(v0 + 2016);
        v126 = *(v0 + 1568);
        *(v0 + 2288) = v126;
        v127 = *(v0 + 1576);
        *(v0 + 2296) = v127;
        *v125 = v126;
        v125[1] = v127;
        swift_storeEnumTagMultiPayload();
        sub_100017D5C(v126, v127);
        v128 = swift_task_alloc();
        *(v0 + 2304) = v128;
        *v128 = v0;
        v128[1] = sub_100C9025C;
        v63 = *(v0 + 2016);
        goto LABEL_47;
      case 0xB:
        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        sub_1003914F8(v0 + 160, v0 + 1168);
        *(v0 + 2568) = PropertyListDecoder.init()();
        sub_100D13BF8(&qword_1016B9BB8, type metadata accessor for KeyDropJoinToken, &unk_101401194);
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        v54 = *(v0 + 1992);
        v55 = *(v0 + 1808);
        v56 = *(v0 + 1800);
        (*(*(v0 + 1848) + 16))(v54, *(v0 + 1640) + *(*(v0 + 2096) + 28), *(v0 + 1840));
        v57 = *(v56 + 20);
        v58 = v55 + v57;
        v59 = *(v55 + v57);
        v60 = *(v58 + 8);
        v61 = (v54 + v57);
        *v61 = v59;
        v61[1] = v60;
        swift_storeEnumTagMultiPayload();
        sub_100017D5C(v59, v60);
        v62 = swift_task_alloc();
        *(v0 + 2576) = v62;
        *v62 = v0;
        v62[1] = sub_100C944C4;
        v63 = *(v0 + 1992);
LABEL_47:
        v133 = *(v0 + 1640);

        return sub_100C9CF9C(v63, v133);
      case 0xC:
        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        sub_1003914F8(v0 + 160, v0 + 808);
        PropertyListDecoder.init()();
        sub_100D13BF8(&qword_1016B9BA8, type metadata accessor for KeyDropBeaconGroupAttributes, &unk_10138BA30);
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        v98 = *(v0 + 1744);
        v99 = *(v0 + 1736);
        v100 = *(v0 + 1728);

        sub_100D11DC8(v98, v99, type metadata accessor for KeyDropBeaconGroupAttributes);
        sub_100D11DC8(v98, v100, type metadata accessor for KeyDropBeaconGroupAttributes);
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.default.getter();
        v103 = os_log_type_enabled(v101, v102);
        v104 = *(v0 + 2056);
        v105 = *(v0 + 2032);
        v106 = *(v0 + 2024);
        if (v103)
        {
          v147 = *(v0 + 1744);
          v107 = *(v0 + 1736);
          v140 = *(v0 + 1720);
          v141 = *(v0 + 1728);
          v146 = *(v0 + 2024);
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v148[0] = v109;
          *v108 = 141558531;
          *(v108 + 4) = 1752392040;
          *(v108 + 12) = 2081;
          sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v110 = dispatch thunk of CustomStringConvertible.description.getter();
          v142 = v104;
          v112 = v111;
          sub_100018D00(v107, type metadata accessor for KeyDropBeaconGroupAttributes);
          v113 = sub_1000136BC(v110, v112, v148);

          *(v108 + 14) = v113;
          *(v108 + 22) = 256;
          LOBYTE(v113) = *(v141 + *(v140 + 20));
          sub_100018D00(v141, type metadata accessor for KeyDropBeaconGroupAttributes);
          *(v108 + 24) = v113;
          _os_log_impl(&_mh_execute_header, v101, v102, "Received and logging group attributes: %{private,mask.hash}s, partId: %hhu.", v108, 0x19u);
          sub_100007BAC(v109);

          sub_100391554(v0 + 160);

          sub_100018D00(v147, type metadata accessor for KeyDropBeaconGroupAttributes);
          (*(v105 + 8))(v142, v146);
        }

        else
        {
          v135 = *(v0 + 1744);
          v136 = *(v0 + 1736);
          sub_100018D00(*(v0 + 1728), type metadata accessor for KeyDropBeaconGroupAttributes);

          sub_100391554(v0 + 160);

          sub_100018D00(v136, type metadata accessor for KeyDropBeaconGroupAttributes);
          sub_100018D00(v135, type metadata accessor for KeyDropBeaconGroupAttributes);
          (*(v105 + 8))(v104, v106);
        }

        goto LABEL_23;
      case 0xD:
        v80 = v0 + 952;
        v81 = *(v0 + 2168);
        v82 = *(v0 + 1640);
        sub_100D11DC8(v82, *(v0 + 2176), type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v82, v81, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_1003914F8(v0 + 160, v0 + 880);
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.default.getter();
        v85 = os_log_type_enabled(v83, v84);
        v86 = *(v0 + 2176);
        v87 = *(v0 + 2168);
        if (v85)
        {
          v143 = *(v0 + 2168);
          v88 = swift_slowAlloc();
          v148[0] = swift_slowAlloc();
          *v88 = 141558531;
          *(v88 + 4) = 1752392040;
          *(v88 + 12) = 2081;
          v145 = v83;
          sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v89 = dispatch thunk of CustomStringConvertible.description.getter();
          v91 = v90;
          sub_100018D00(v86, type metadata accessor for SharingCircleKeyManager.Instruction);
          v92 = sub_1000136BC(v89, v91, v148);
          v80 = v0 + 952;

          *(v88 + 14) = v92;
          *(v88 + 22) = 2080;
          v93 = dispatch thunk of CustomStringConvertible.description.getter();
          v95 = v94;
          sub_100018D00(v143, type metadata accessor for SharingCircleKeyManager.Instruction);
          v96 = sub_1000136BC(v93, v95, v148);

          *(v88 + 24) = v96;
          _os_log_impl(&_mh_execute_header, v145, v84, "Updating beacon attributes for beacon: %{private,mask.hash}s, shareId: %s.", v88, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          sub_100018D00(v87, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v86, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        PropertyListDecoder.init()();
        sub_100D12F40();
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        v117 = *(v0 + 2096);
        v118 = *(v0 + 1640);

        v119 = *(v80 + 48);
        *(v0 + 1128) = *(v80 + 32);
        *(v0 + 1144) = v119;
        *(v0 + 1160) = *(v80 + 64);
        v120 = *(v80 + 16);
        *(v0 + 1096) = *v80;
        *(v0 + 1112) = v120;
        v121 = *(v117 + 24);
        v122 = getuid();
        sub_1000294F0(v122);
        v123 = swift_task_alloc();
        *(v0 + 2688) = v123;
        *v123 = v0;
        v123[1] = sub_100C9578C;
        v124 = *(v0 + 1872);

        return sub_1012D7224(v0 + 1096, v118 + v121, v124);
      case 0xE:
        v16 = *(v0 + 2056);
        v17 = *(v0 + 2032);
        v18 = *(v0 + 2024);
        v19 = v0 + 160;
        v20 = v0 + 448;
        goto LABEL_22;
      case 0xF:
        v16 = *(v0 + 2056);
        v17 = *(v0 + 2032);
        v18 = *(v0 + 2024);
        v19 = v0 + 160;
        v20 = v0 + 376;
        goto LABEL_22;
      case 0x10:
        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        sub_1003914F8(v0 + 160, v0 + 304);
        PropertyListDecoder.init()();
        sub_100D13BF8(&qword_1016B9BA0, type metadata accessor for KeyDropLostItemDates, &unk_101394550);
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        v37 = *(v0 + 2160);
        v38 = *(v0 + 2152);
        v39 = *(v0 + 1640);

        sub_100D11DC8(v39, v37, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v39, v38, type metadata accessor for SharingCircleKeyManager.Instruction);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();
        v42 = os_log_type_enabled(v40, v41);
        v43 = *(v0 + 2160);
        v44 = *(v0 + 2152);
        if (v42)
        {
          v45 = swift_slowAlloc();
          v148[0] = swift_slowAlloc();
          *v45 = 141558531;
          *(v45 + 4) = 1752392040;
          *(v45 + 12) = 2081;
          v144 = v41;
          sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v46 = dispatch thunk of CustomStringConvertible.description.getter();
          v48 = v47;
          sub_100018D00(v43, type metadata accessor for SharingCircleKeyManager.Instruction);
          v49 = sub_1000136BC(v46, v48, v148);

          *(v45 + 14) = v49;
          *(v45 + 22) = 2080;
          v50 = dispatch thunk of CustomStringConvertible.description.getter();
          v52 = v51;
          sub_100018D00(v44, type metadata accessor for SharingCircleKeyManager.Instruction);
          v53 = sub_1000136BC(v50, v52, v148);

          *(v45 + 24) = v53;
          _os_log_impl(&_mh_execute_header, v40, v144, "Updating lost item dates for beacon: %{private,mask.hash}s, shareId: %s.", v45, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          sub_100018D00(v44, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v43, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

        *(v0 + 2844) = *(*(v0 + 2096) + 24);
        v134 = getuid();
        sub_1000294F0(v134);
        v69 = sub_100C95E68;
        v70 = 0;
        goto LABEL_29;
      default:
        v16 = *(v0 + 2056);
        v17 = *(v0 + 2032);
        v18 = *(v0 + 2024);
        v19 = v0 + 160;
        v20 = v0 + 232;
LABEL_22:
        sub_1003914F8(v19, v20);
        (*(v17 + 8))(v16, v18);

        sub_100391554(v0 + 160);
        goto LABEL_23;
    }
  }

  else
  {
    v21 = *(v0 + 2144);
    v22 = *(v0 + 1640);
    sub_100D11DC8(*(v0 + 1632), *(v0 + 2072), type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v22, v21, type metadata accessor for SharingCircleKeyManager.Instruction);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 2144);
    v27 = *(v0 + 2072);
    if (v25)
    {
      v28 = swift_slowAlloc();
      v148[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = sub_101255410();
      v31 = v30;
      sub_100018D00(v27, type metadata accessor for KeyDropInterface.KeyPackage);
      v32 = sub_1000136BC(v29, v31, v148);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v33 = sub_100C71778();
      v35 = v34;
      sub_100018D00(v26, type metadata accessor for SharingCircleKeyManager.Instruction);
      v36 = sub_1000136BC(v33, v35, v148);

      *(v28 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v23, v24, "There are no keys to save in the package: %s, instruction: %s.", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v26, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v27, type metadata accessor for KeyDropInterface.KeyPackage);
    }

LABEL_23:

    v77 = *(v0 + 8);

    return v77();
  }

  return result;
}

uint64_t sub_100C9025C()
{
  v2 = *v1;
  *(*v1 + 2312) = v0;

  v3 = *(v2 + 1648);
  if (v0)
  {
    v4 = sub_100C97B18;
  }

  else
  {
    v4 = sub_100C90388;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C90388()
{
  v1 = v0[287];
  v2 = v0[286];
  v3 = v0[257];
  v4 = v0[254];
  v5 = v0[253];
  v6 = v0[252];

  sub_100391554((v0 + 20));
  sub_100016590(v2, v1);

  sub_100018D00(v6, type metadata accessor for SharingCircleSecretValue);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C906E8()
{
  v1 = *(v0 + 2824);
  v2 = *(v0 + 2224);
  v3 = *(v0 + 1888);
  v4 = *(v0 + 1848);
  v5 = *(v0 + 1840);
  v6 = *(v0 + 1640);
  v7 = *(v4 + 16);
  *(v0 + 2320) = v7;
  *(v0 + 2328) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6 + v1, v5);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v0 + 2336) = v9;
  *(v9 + 16) = v2;
  (*(v4 + 32))(v9 + v8, v3, v5);

  v10 = swift_task_alloc();
  *(v0 + 2344) = v10;
  *v10 = v0;
  v10[1] = sub_100C90864;
  v11 = *(v0 + 1920);
  v12 = *(v0 + 1896);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_100D14908, v9, v12);
}

uint64_t sub_100C90864()
{
  v1 = *(*v0 + 1648);

  return _swift_task_switch(sub_100C90990, v1, 0);
}

uint64_t sub_100C90990()
{
  v1 = v0[240];
  if ((*(v0[242] + 48))(v1, 1, v0[241]) == 1)
  {
    v2 = v0[257];
    v3 = v0[254];
    v4 = v0[253];
    sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
    sub_1001BAEE0();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    sub_100391554((v0 + 20));

    (*(v3 + 8))(v2, v4);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v6 = v0[204];
    sub_100D12974(v1, v0[247], type metadata accessor for SharedBeaconRecord);
    v7 = sub_100D0F3AC(v6);
    v8 = v0[281];
    v9 = v0[247];
    v13 = v12;
    v15 = v14;
    v16 = v0[273];
    v27 = v0[263];
    v17 = v0[246];
    v18 = v0[243];
    v19 = v0[242];
    v20 = v0[205];
    v28 = v7;
    type metadata accessor for Transaction();
    sub_100D11DC8(v9, v17, type metadata accessor for SharedBeaconRecord);
    sub_100D11DC8(v20, v16, type metadata accessor for SharingCircleKeyManager.Instruction);
    v21 = (*(v19 + 80) + 24) & ~*(v19 + 80);
    v22 = (v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = (*(v27 + 80) + v22 + 24) & ~*(v27 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v8;
    sub_100D12974(v17, v24 + v21, type metadata accessor for SharedBeaconRecord);
    v25 = (v24 + v22);
    *v25 = v28;
    v25[1] = v13;
    v25[2] = v15;
    sub_100D12974(v16, v24 + v23, type metadata accessor for SharingCircleKeyManager.Instruction);

    static Transaction.asyncTask(name:block:)();

    v26 = swift_task_alloc();
    v0[294] = v26;
    *v26 = v0;
    v26[1] = sub_100C90F88;

    return daemon.getter();
  }
}

uint64_t sub_100C90F88(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 2360) = a1;

  v3 = swift_task_alloc();
  *(v2 + 2368) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100D13BF8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D13BF8(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100C91164;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100C91164(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 2376) = a1;

  v4 = *(v3 + 1648);
  if (v1)
  {

    v5 = sub_100C912C8;
  }

  else
  {

    v5 = sub_100C9160C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C912C8()
{
  v1 = v0[257];
  v2 = v0[254];
  v3 = v0[253];
  v4 = v0[247];
  sub_100391554((v0 + 20));

  sub_100018D00(v4, type metadata accessor for SharedBeaconRecord);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100C9160C()
{
  v1 = *(v0 + 2264);
  v2 = *(v0 + 2256);
  v3 = *(v0 + 2056);
  v4 = *(v0 + 2024);
  v5 = *(v0 + 1832);
  v6 = *(v0 + 1816);
  (*(v0 + 2320))(v5, *(v0 + 1976) + *(*(v0 + 1928) + 20), *(v0 + 1840));
  v7 = (v5 + v6[6]);
  v7[3] = &type metadata for PrimaryIndex;
  v7[4] = sub_10002A2B8();
  *v7 = v2;
  v1(v5 + v6[7], v3, v4);
  *(v5 + v6[5]) = 7;
  v8 = swift_task_alloc();
  *(v0 + 2384) = v8;
  *v8 = v0;
  v8[1] = sub_100C9173C;
  v9 = *(v0 + 1832);

  return sub_1010CDAC4(v9);
}

uint64_t sub_100C9173C()
{
  v2 = *v1;
  *(*v1 + 2392) = v0;

  v3 = *(v2 + 1648);
  if (v0)
  {
    v4 = sub_100C97E7C;
  }

  else
  {
    v4 = sub_100C91868;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C91868()
{
  v1 = v0[257];
  v2 = v0[254];
  v3 = v0[253];
  v4 = v0[247];
  v5 = v0[229];

  sub_100391554((v0 + 20));

  sub_100018D00(v4, type metadata accessor for SharedBeaconRecord);
  (*(v2 + 8))(v1, v3);
  sub_100018D00(v5, type metadata accessor for KeySyncMetadata);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C91BD4()
{
  v1 = *(v0 + 2828);
  v2 = *(v0 + 2224);
  v3 = *(v0 + 1888);
  v4 = *(v0 + 1848);
  v5 = *(v0 + 1840);
  v6 = *(v0 + 1640);
  v7 = *(v4 + 16);
  *(v0 + 2400) = v7;
  *(v0 + 2408) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6 + v1, v5);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v0 + 2416) = v9;
  *(v9 + 16) = v2;
  (*(v4 + 32))(v9 + v8, v3, v5);

  v10 = swift_task_alloc();
  *(v0 + 2424) = v10;
  *v10 = v0;
  v10[1] = sub_100C91D50;
  v11 = *(v0 + 1912);
  v12 = *(v0 + 1896);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_100D14908, v9, v12);
}

uint64_t sub_100C91D50()
{
  v1 = *(*v0 + 1648);

  return _swift_task_switch(sub_100C91E7C, v1, 0);
}

uint64_t sub_100C91E7C()
{
  v1 = v0[239];
  if ((*(v0[242] + 48))(v1, 1, v0[241]) == 1)
  {
    v2 = v0[257];
    v3 = v0[254];
    v4 = v0[253];
    sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
    sub_1001BAEE0();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    sub_100391554((v0 + 20));

    (*(v3 + 8))(v2, v4);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v6 = v0[204];
    sub_100D12974(v1, v0[245], type metadata accessor for SharedBeaconRecord);
    v7 = sub_100D0F3AC(v6);
    v8 = v0[281];
    v12 = v11;
    v14 = v13;
    v15 = v0[273];
    v27 = v0[263];
    v16 = v0[246];
    v17 = v0[245];
    v18 = v0[243];
    v19 = v0[242];
    v20 = v0[205];
    v28 = v7;
    type metadata accessor for Transaction();
    sub_100D11DC8(v17, v16, type metadata accessor for SharedBeaconRecord);
    sub_100D11DC8(v20, v15, type metadata accessor for SharingCircleKeyManager.Instruction);
    v21 = (*(v19 + 80) + 24) & ~*(v19 + 80);
    v22 = (v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = (*(v27 + 80) + v22 + 24) & ~*(v27 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v8;
    sub_100D12974(v16, v24 + v21, type metadata accessor for SharedBeaconRecord);
    v25 = (v24 + v22);
    *v25 = v28;
    v25[1] = v12;
    v25[2] = v14;
    sub_100D12974(v15, v24 + v23, type metadata accessor for SharingCircleKeyManager.Instruction);

    static Transaction.asyncTask(name:block:)();

    v26 = swift_task_alloc();
    v0[304] = v26;
    *v26 = v0;
    v26[1] = sub_100C92478;

    return daemon.getter();
  }
}

uint64_t sub_100C92478(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 2440) = a1;

  v3 = swift_task_alloc();
  *(v2 + 2448) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100D13BF8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D13BF8(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100C92654;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100C92654(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 2456) = a1;

  v4 = *(v3 + 1648);
  if (v1)
  {

    v5 = sub_100C927B8;
  }

  else
  {

    v5 = sub_100C92AFC;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C927B8()
{
  v1 = v0[257];
  v2 = v0[254];
  v3 = v0[253];
  v4 = v0[245];
  sub_100391554((v0 + 20));

  sub_100018D00(v4, type metadata accessor for SharedBeaconRecord);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100C92AFC()
{
  v1 = *(v0 + 2264);
  v2 = *(v0 + 2256);
  v3 = *(v0 + 2056);
  v4 = *(v0 + 2024);
  v5 = *(v0 + 1824);
  v6 = *(v0 + 1816);
  (*(v0 + 2400))(v5, *(v0 + 1960) + *(*(v0 + 1928) + 20), *(v0 + 1840));
  v7 = (v5 + v6[6]);
  v7[3] = &type metadata for PrimaryIndex;
  v7[4] = sub_10002A2B8();
  *v7 = v2;
  v1(v5 + v6[7], v3, v4);
  *(v5 + v6[5]) = 7;
  v8 = swift_task_alloc();
  *(v0 + 2464) = v8;
  *v8 = v0;
  v8[1] = sub_100C92C2C;
  v9 = *(v0 + 1824);

  return sub_1010CDAC4(v9);
}

uint64_t sub_100C92C2C()
{
  v2 = *v1;
  *(*v1 + 2472) = v0;

  v3 = *(v2 + 1648);
  if (v0)
  {
    v4 = sub_100C98578;
  }

  else
  {
    v4 = sub_100C92D58;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C92D58()
{
  v1 = v0[257];
  v2 = v0[254];
  v3 = v0[253];
  v4 = v0[245];
  v5 = v0[228];

  sub_100391554((v0 + 20));

  sub_100018D00(v4, type metadata accessor for SharedBeaconRecord);
  (*(v2 + 8))(v1, v3);
  sub_100018D00(v5, type metadata accessor for KeySyncMetadata);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C930C4()
{
  v1 = *(v0 + 2224);
  v2 = *(v0 + 1888);
  v3 = *(v0 + 1848);
  v4 = *(v0 + 1840);
  (*(v3 + 16))(v2, *(v0 + 1640) + *(v0 + 2832), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 2480) = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 2488) = v7;
  *v7 = v0;
  v7[1] = sub_100C93230;
  v8 = *(v0 + 1904);
  v9 = *(v0 + 1896);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100D14908, v6, v9);
}

uint64_t sub_100C93230()
{
  v1 = *(*v0 + 1648);

  return _swift_task_switch(sub_100C9335C, v1, 0);
}

uint64_t sub_100C9335C()
{
  v1 = v0[238];
  if ((*(v0[242] + 48))(v1, 1, v0[241]) == 1)
  {
    v2 = v0[257];
    v3 = v0[254];
    v4 = v0[253];
    sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
    sub_1001BAEE0();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    sub_100391554((v0 + 20));

    (*(v3 + 8))(v2, v4);
  }

  else
  {
    v6 = v0[204];
    sub_100D12974(v1, v0[244], type metadata accessor for SharedBeaconRecord);
    v7 = sub_100D0FC60(v6);
    v8 = v0[281];
    v12 = v11;
    v14 = v13;
    v15 = v0[273];
    v26 = v0[263];
    v30 = v0[253];
    v31 = v0[257];
    v16 = v0[246];
    v17 = v0[244];
    v28 = v17;
    v29 = v0[254];
    v18 = v0[243];
    v19 = v0[242];
    v20 = v0[205];
    v27 = v7;
    type metadata accessor for Transaction();
    sub_100D11DC8(v17, v16, type metadata accessor for SharedBeaconRecord);
    sub_100D11DC8(v20, v15, type metadata accessor for SharingCircleKeyManager.Instruction);
    v21 = (*(v19 + 80) + 24) & ~*(v19 + 80);
    v22 = (v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = (*(v26 + 80) + v22 + 24) & ~*(v26 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v8;
    sub_100D12974(v16, v24 + v21, type metadata accessor for SharedBeaconRecord);
    v25 = (v24 + v22);
    *v25 = v27;
    v25[1] = v12;
    v25[2] = v14;
    sub_100D12974(v15, v24 + v23, type metadata accessor for SharingCircleKeyManager.Instruction);

    static Transaction.asyncTask(name:block:)();

    sub_100391554((v0 + 20));

    sub_100018D00(v28, type metadata accessor for SharedBeaconRecord);
    (*(v29 + 8))(v31, v30);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100C93BB4()
{
  v2 = *v1;
  *(*v1 + 2520) = v0;

  v3 = *(v2 + 1648);
  if (v0)
  {
    v4 = sub_100C98C74;
  }

  else
  {
    v4 = sub_100C93CE0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C93CE0()
{
  v1 = v0[313];
  v2 = v0[312];
  v3 = v0[257];
  v4 = v0[254];
  v5 = v0[253];
  v6 = v0[251];
  sub_100391554((v0 + 20));

  sub_100016590(v2, v1);
  sub_100018D00(v6, type metadata accessor for SharingCircleSecretValue);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C94038()
{
  v2 = *v1;
  *(*v1 + 2560) = v0;

  v3 = *(v2 + 1648);
  if (v0)
  {
    v4 = sub_100C98FD0;
  }

  else
  {
    v4 = sub_100C94164;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C94164()
{
  v1 = v0[318];
  v2 = v0[317];
  v3 = v0[257];
  v4 = v0[254];
  v5 = v0[253];
  v6 = v0[250];

  sub_100391554((v0 + 20));

  sub_100016590(v2, v1);
  sub_100018D00(v6, type metadata accessor for SharingCircleSecretValue);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C944C4()
{
  v2 = *v1;
  *(*v1 + 2584) = v0;

  v3 = *(v2 + 1648);
  if (v0)
  {
    v4 = sub_100C99334;
  }

  else
  {
    v4 = sub_100C945F0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C945F0()
{
  v1 = v0[257];
  v2 = v0[254];
  v3 = v0[253];
  v4 = v0[249];
  v5 = v0[226];

  sub_100391554((v0 + 20));

  sub_100018D00(v4, type metadata accessor for SharingCircleSecretValue);
  sub_100018D00(v5, type metadata accessor for KeyDropJoinToken);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C9495C()
{

  v1 = swift_task_alloc();
  v0[331] = v1;
  *v1 = v0;
  v1[1] = sub_100C94A34;
  v2 = v0[280];
  v3 = v0[278];

  return unsafeBlocking<A>(context:_:)(v0 + 203, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_100C94A34()
{
  v1 = *(*v0 + 2224);

  return _swift_task_switch(sub_100C94B4C, v1, 0);
}

uint64_t sub_100C94B4C()
{
  v1 = v0[206];
  v0[332] = v0[203];
  return _swift_task_switch(sub_100C94B70, v1, 0);
}

uint64_t sub_100C94B70()
{
  v1 = v0[328];
  v2 = *(v0[332] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v0[333] = v2;

  v0[194] = &type metadata for SecondaryIndex;
  v0[195] = sub_10022A4D4();
  v0[191] = v1;
  v3 = getuid();
  sub_1000294F0(v3);

  return _swift_task_switch(sub_100C94C2C, v2, 0);
}

uint64_t sub_100C94C2C()
{
  v1 = *(*(v0 + 2664) + 112);
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = *(v1 + 32);

  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  if (v3 != 1 || (v4 = sub_100D13BF8(&qword_101699E80, type metadata accessor for ItemSharingKeyDatabase, &unk_10139D0E0), v5 = *(v4 + 16), v6 = type metadata accessor for ItemSharingKeyDatabase(0), (v7 = v5(v6, v4)) == 0))
  {

LABEL_7:

    v21 = *(v0 + 2608);
    goto LABEL_8;
  }

  v35 = *(v0 + 2632);
  v37 = *(v0 + 2640);
  v42 = *(v0 + 2608);
  v39 = *(v0 + 2840);
  v8 = *(v0 + 1792);
  v9 = *(v0 + 1784);
  v10 = *(v0 + 1776);
  v11 = *(v0 + 1768);
  v12 = *(v0 + 1760);
  v32 = *(v0 + 1880);
  v33 = *(v0 + 1752);
  v31 = *(v0 + 1640) + *(v0 + 2836);
  v13 = *(v7 + 24);

  (*(v9 + 16))(v8, v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_keys, v10);
  v14 = *(v0 + 1552);
  v15 = *(v0 + 1560);
  sub_1000035D0((v0 + 1528), v14);
  LOBYTE(v14) = sub_10002BD40(v14, v15);
  v16 = swift_task_alloc();
  *(v16 + 16) = v8;
  *(v16 + 24) = v32;
  *(v16 + 32) = v31;
  *(v16 + 40) = v14 & 1;
  *(v16 + 48) = v0 + 1528;
  *(v16 + 56) = v35;
  *(v16 + 64) = v37;
  *(v16 + 72) = v13;
  (*(v12 + 104))(v11, v39, v33);
  Connection.transaction(_:block:)();
  *(v0 + 2672) = v42;
  if (v42)
  {
    v17 = *(v0 + 1784);
    v40 = *(v0 + 1776);
    v43 = *(v0 + 1792);
    v18 = *(v0 + 1768);
    v19 = *(v0 + 1760);
    v20 = *(v0 + 1752);

    (*(v19 + 8))(v18, v20);

    (*(v17 + 8))(v43, v40);

    v21 = 0;
LABEL_8:
    *(v0 + 2680) = v21;
    v22 = *(v0 + 1648);
    (*(*(v0 + 1848) + 8))(*(v0 + 1880), *(v0 + 1840));
    v23 = sub_100C953AC;
    v24 = v22;
    goto LABEL_9;
  }

  v25 = *(v0 + 1848);
  v38 = *(v0 + 1840);
  v41 = *(v0 + 1880);
  v26 = *(v0 + 1784);
  v34 = *(v0 + 1776);
  v36 = *(v0 + 1792);
  v27 = *(v0 + 1768);
  v28 = *(v0 + 1760);
  v29 = *(v0 + 1752);
  v44 = *(v0 + 1648);

  (*(v28 + 8))(v27, v29);

  (*(v26 + 8))(v36, v34);
  (*(v25 + 8))(v41, v38);
  sub_100007BAC((v0 + 1528));
  v23 = sub_100C94FD4;
  v24 = v44;
LABEL_9:

  return _swift_task_switch(v23, v24, 0);
}

uint64_t sub_100C94FD4()
{
  v1 = sub_100016590(v0[329], v0[330]);
  v4 = v0[327] + 1;
  if (v4 == v0[325])
  {
    v5 = v0[257];
    v6 = v0[254];
    v7 = v0[253];

    sub_100391554((v0 + 20));

    (*(v6 + 8))(v5, v7);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[334];
    v0[327] = v4;
    v0[326] = v10;
    v11 = v0[324];
    if (v4 >= *(v11 + 16))
    {
      __break(1u);
    }

    else
    {
      v12 = v0[278];
      v13 = (v11 + 24 * v4);
      v0[328] = v13[4];
      v14 = v13[5];
      v0[329] = v14;
      v15 = v13[6];
      v0[330] = v15;
      sub_100017D5C(v14, v15);
      v1 = sub_100C9495C;
      v2 = v12;
      v3 = 0;
    }

    return _swift_task_switch(v1, v2, v3);
  }
}

uint64_t sub_100C953AC()
{
  sub_100016590(v0[329], v0[330]);
  v1 = sub_100007BAC(v0 + 191);
  v4 = v0[327] + 1;
  if (v4 == v0[325])
  {
    v5 = v0[257];
    v6 = v0[254];
    v7 = v0[253];

    sub_100391554((v0 + 20));

    (*(v6 + 8))(v5, v7);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[335];
    v0[327] = v4;
    v0[326] = v10;
    v11 = v0[324];
    if (v4 >= *(v11 + 16))
    {
      __break(1u);
    }

    else
    {
      v12 = v0[278];
      v13 = (v11 + 24 * v4);
      v0[328] = v13[4];
      v14 = v13[5];
      v0[329] = v14;
      v15 = v13[6];
      v0[330] = v15;
      sub_100017D5C(v14, v15);
      v1 = sub_100C9495C;
      v2 = v12;
      v3 = 0;
    }

    return _swift_task_switch(v1, v2, v3);
  }
}

uint64_t sub_100C9578C()
{
  v2 = *v1;
  *(*v1 + 2696) = v0;

  if (v0)
  {
    v3 = v2[206];
    (*(v2[231] + 8))(v2[234], v2[230]);
    sub_1002497F0((v2 + 137));
    v4 = sub_100C996A4;
  }

  else
  {
    v3 = v2[278];
    (*(v2[231] + 8))(v2[234], v2[230]);
    sub_1002497F0((v2 + 137));
    v4 = sub_100C958F0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C958F0()
{
  v1 = v0[278];
  v2 = swift_allocObject();
  v0[338] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 13;

  v3 = swift_task_alloc();
  v0[339] = v3;
  *v3 = v0;
  v3[1] = sub_100C959FC;

  return unsafeBlocking<A>(context:_:)(v3, 0xD000000000000010, 0x800000010134A8C0, sub_1001BA7C4, v2, &type metadata for () + 1);
}

uint64_t sub_100C959FC()
{
  v1 = *(*v0 + 2224);

  return _swift_task_switch(sub_100C95B28, v1, 0);
}

uint64_t sub_100C95B44()
{
  v1 = v0[257];
  v2 = v0[254];
  v3 = v0[253];
  sub_100391554((v0 + 20));

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C95E68()
{
  v1 = *(v0 + 2844);
  v2 = *(v0 + 1640);
  v3 = swift_task_alloc();
  *(v0 + 2720) = v3;
  *v3 = v0;
  v3[1] = sub_100C95F28;
  v4 = *(v0 + 1672);

  return sub_10068A150(v4, v2 + v1);
}

uint64_t sub_100C95F28()
{
  v2 = *v1;
  *(*v1 + 2728) = v0;

  if (v0)
  {
    v3 = sub_100C961D8;
    v4 = 0;
  }

  else
  {
    v5 = v2[206];
    (*(v2[231] + 8))(v2[233], v2[230]);
    v3 = sub_100C96064;
    v4 = v5;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_100C96064()
{
  v1 = *(v0 + 1672);
  if ((*(*(v0 + 1704) + 48))(v1, 1, *(v0 + 1696)) == 1)
  {
    v2 = *(v0 + 2032);
    v3 = *(v0 + 2024);
    v4 = *(v0 + 1688);
    sub_10000B3A8(v1, &unk_101698C20, &qword_101390748);
    (*(v2 + 56))(v4, 1, 1, v3);
  }

  else
  {
    sub_1000D2A70(v1, *(v0 + 1688), &unk_101696900, &unk_10138B1E0);
    sub_100018D00(v1, type metadata accessor for KeyDropLostItemDates);
  }

  v5 = *(v0 + 2844);
  v6 = *(v0 + 1640);
  sub_1000D2A70(*(v0 + 1712), *(v0 + 1680), &unk_101696900, &unk_10138B1E0);
  v7 = swift_task_alloc();
  *(v0 + 2736) = v7;
  *v7 = v0;
  v7[1] = sub_100C965A0;
  v8 = *(v0 + 1712);

  return sub_1012D9080(v6 + v5, v8);
}

uint64_t sub_100C961D8()
{
  v1 = v0[206];
  (*(v0[231] + 8))(v0[233], v0[230]);

  return _swift_task_switch(sub_100C96258, v1, 0);
}

uint64_t sub_100C96258()
{
  v1 = v0[257];
  v2 = v0[254];
  v3 = v0[253];
  v4 = v0[214];
  sub_100391554((v0 + 20));

  sub_100018D00(v4, type metadata accessor for KeyDropLostItemDates);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100C965A0()
{
  v2 = *v1;
  v2[343] = v0;

  if (v0)
  {
    v3 = v2[206];

    return _swift_task_switch(sub_100C999CC, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[344] = v4;
    *v4 = v2;
    v4[1] = sub_100C9670C;

    return daemon.getter();
  }
}

uint64_t sub_100C9670C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 2760) = a1;

  v3 = swift_task_alloc();
  *(v2 + 2768) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ItemSharingNotificationsService();
  v6 = sub_100D13BF8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D13BF8(&qword_1016B1160, type metadata accessor for ItemSharingNotificationsService, &unk_1013D77C8);
  *v3 = v9;
  v3[1] = sub_100C968E8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100C968E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 2776) = a1;
  *(v4 + 2784) = v1;

  v5 = *(v3 + 1648);

  if (v1)
  {
    v6 = sub_100C99D4C;
  }

  else
  {
    v6 = sub_100C96A3C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C96A3C()
{
  v1 = *(v0 + 2032);
  v2 = *(v0 + 2024);
  v3 = *(v0 + 1688);
  v4 = *(v0 + 1680);
  v5 = *(v0 + 1664);
  v6 = *(*(v0 + 1656) + 48);
  *(v0 + 2848) = v6;
  sub_1000D2A70(v3, v5, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v4, v5 + v6, &unk_101696900, &unk_10138B1E0);
  v7 = *(v1 + 48);
  LODWORD(v4) = v7(v5, 1, v2);
  v8 = v7(v5 + v6, 1, v2);
  if (v4 == 1)
  {
    if (v8 == 1)
    {
      v9 = *(v0 + 2056);
      v10 = *(v0 + 2032);
      v11 = *(v0 + 2024);
      v12 = *(v0 + 1712);
      v13 = *(v0 + 1688);
      v14 = *(v0 + 1680);
      sub_100391554(v0 + 160);

      sub_10000B3A8(v14, &unk_101696900, &unk_10138B1E0);
      sub_10000B3A8(v13, &unk_101696900, &unk_10138B1E0);
      sub_100018D00(v12, type metadata accessor for KeyDropLostItemDates);
      (*(v10 + 8))(v9, v11);
LABEL_13:

      v39 = *(v0 + 8);

      return v39();
    }

    v23 = *(v0 + 1640);
    v24 = *(*(v0 + 2096) + 20);

    v25 = swift_task_alloc();
    *(v0 + 2792) = v25;
    *v25 = v0;
    v26 = sub_100C97144;
  }

  else
  {
    if (v8 == 1)
    {
      v15 = *(v0 + 2056);
      v16 = *(v0 + 2032);
      v17 = *(v0 + 2024);
      v18 = *(v0 + 1712);
      v19 = *(v0 + 1688);
      v20 = *(v0 + 1680);
      v21 = *(v0 + 1664);
      sub_100391554(v0 + 160);

      sub_10000B3A8(v20, &unk_101696900, &unk_10138B1E0);
      sub_10000B3A8(v19, &unk_101696900, &unk_10138B1E0);
      sub_100018D00(v18, type metadata accessor for KeyDropLostItemDates);
      v22 = *(v16 + 8);
      v22(v15, v17);
      v22(v21, v17);
      goto LABEL_13;
    }

    v27 = *(v0 + 2040);
    v28 = *(v0 + 2024);
    v29 = *(*(v0 + 2032) + 32);
    v29(*(v0 + 2048), *(v0 + 1664), v28);
    v29(v27, v5 + v6, v28);
    Date.timeIntervalSince(_:)();
    if (v30 <= 0.001)
    {
      v32 = *(v0 + 2048);
      v33 = *(v0 + 2040);
      v34 = *(v0 + 2032);
      v35 = *(v0 + 2024);
      v40 = *(v0 + 1712);
      v41 = *(v0 + 2056);
      v36 = *(v0 + 1688);
      v37 = *(v0 + 1680);
      sub_100391554(v0 + 160);

      v38 = *(v34 + 8);
      v38(v33, v35);
      v38(v32, v35);
      sub_10000B3A8(v37, &unk_101696900, &unk_10138B1E0);
      sub_10000B3A8(v36, &unk_101696900, &unk_10138B1E0);
      sub_100018D00(v40, type metadata accessor for KeyDropLostItemDates);
      v38(v41, v35);
      goto LABEL_13;
    }

    v23 = *(v0 + 1640);
    v24 = *(*(v0 + 2096) + 20);

    v25 = swift_task_alloc();
    *(v0 + 2808) = v25;
    *v25 = v0;
    v26 = sub_100C97614;
  }

  v25[1] = v26;

  return sub_100B536D0(v23 + v24);
}

uint64_t sub_100C97144()
{
  v2 = *v1;
  *(*v1 + 2800) = v0;

  if (v0)
  {
    v3 = *(v2 + 1648);
    v4 = sub_100C9A0CC;
  }

  else
  {
    v5 = *(v2 + 1648);

    v4 = sub_100C9726C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C9726C()
{
  v10 = *(v0 + 2848);
  v1 = *(v0 + 2056);
  v2 = *(v0 + 2032);
  v3 = *(v0 + 2024);
  v4 = *(v0 + 1712);
  v5 = *(v0 + 1688);
  v6 = *(v0 + 1680);
  v7 = *(v0 + 1664);
  sub_100391554(v0 + 160);

  sub_10000B3A8(v6, &unk_101696900, &unk_10138B1E0);
  sub_10000B3A8(v5, &unk_101696900, &unk_10138B1E0);
  sub_100018D00(v4, type metadata accessor for KeyDropLostItemDates);
  (*(v2 + 8))(v1, v3);
  sub_10000B3A8(v7 + v10, &unk_101696900, &unk_10138B1E0);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100C97614()
{
  v2 = *v1;
  *(*v1 + 2816) = v0;

  v3 = *(v2 + 1648);

  if (v0)
  {
    v4 = sub_100C9A72C;
  }

  else
  {
    v4 = sub_100C9775C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C9775C()
{
  v1 = v0[256];
  v2 = v0[255];
  v3 = v0[254];
  v4 = v0[253];
  v10 = v0[214];
  v11 = v0[257];
  v5 = v0[211];
  v6 = v0[210];
  sub_100391554((v0 + 20));

  v7 = *(v3 + 8);
  v7(v2, v4);
  v7(v1, v4);
  sub_10000B3A8(v6, &unk_101696900, &unk_10138B1E0);
  sub_10000B3A8(v5, &unk_101696900, &unk_10138B1E0);
  sub_100018D00(v10, type metadata accessor for KeyDropLostItemDates);
  v7(v11, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100C97B18()
{
  v1 = v0[287];
  v2 = v0[286];
  v3 = v0[257];
  v4 = v0[254];
  v5 = v0[253];
  v6 = v0[252];

  sub_100391554((v0 + 20));
  sub_100016590(v2, v1);

  sub_100018D00(v6, type metadata accessor for SharingCircleSecretValue);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C97E7C()
{
  v34 = v0;
  *(v0 + 1608) = *(v0 + 2392);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 2853) == 1)
  {
    v1 = *(v0 + 2056);
    v2 = *(v0 + 2032);
    v3 = *(v0 + 2024);
    v4 = *(v0 + 1976);
    v5 = *(v0 + 1832);

    sub_100391554(v0 + 160);

    sub_100018D00(v4, type metadata accessor for SharedBeaconRecord);
    (*(v2 + 8))(v1, v3);
    sub_100018D00(v5, type metadata accessor for KeySyncMetadata);
  }

  else
  {
    v6 = *(v0 + 2136);
    v7 = *(v0 + 1640);

    sub_100D11DC8(v7, v6, type metadata accessor for SharingCircleKeyManager.Instruction);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 2136);
    if (v10)
    {
      v30 = *(v0 + 2024);
      v31 = *(v0 + 2056);
      v28 = *(v0 + 1976);
      v29 = *(v0 + 2032);
      v32 = *(v0 + 1832);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v33 = v14;
      *v12 = 141558531;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
      v18 = sub_1000136BC(v15, v17, &v33);

      *(v12 + 14) = v18;
      *(v12 + 22) = 2114;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 24) = v19;
      *v13 = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to update key sync beacon %{private,mask.hash}s %{public}@.", v12, 0x20u);
      sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v14);

      sub_100391554(v0 + 160);

      sub_100018D00(v28, type metadata accessor for SharedBeaconRecord);
      (*(v29 + 8))(v31, v30);
      v20 = v32;
    }

    else
    {
      v21 = *(v0 + 2056);
      v22 = *(v0 + 2032);
      v23 = *(v0 + 2024);
      v24 = *(v0 + 1976);
      v25 = *(v0 + 1832);

      sub_100391554(v0 + 160);

      sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v24, type metadata accessor for SharedBeaconRecord);
      (*(v22 + 8))(v21, v23);
      v20 = v25;
    }

    sub_100018D00(v20, type metadata accessor for KeySyncMetadata);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100C98578()
{
  v34 = v0;
  *(v0 + 1600) = *(v0 + 2472);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 2852) == 1)
  {
    v1 = *(v0 + 2056);
    v2 = *(v0 + 2032);
    v3 = *(v0 + 2024);
    v4 = *(v0 + 1960);
    v5 = *(v0 + 1824);

    sub_100391554(v0 + 160);

    sub_100018D00(v4, type metadata accessor for SharedBeaconRecord);
    (*(v2 + 8))(v1, v3);
    sub_100018D00(v5, type metadata accessor for KeySyncMetadata);
  }

  else
  {
    v6 = *(v0 + 2128);
    v7 = *(v0 + 1640);

    sub_100D11DC8(v7, v6, type metadata accessor for SharingCircleKeyManager.Instruction);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 2128);
    if (v10)
    {
      v30 = *(v0 + 2024);
      v31 = *(v0 + 2056);
      v28 = *(v0 + 1960);
      v29 = *(v0 + 2032);
      v32 = *(v0 + 1824);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v33 = v14;
      *v12 = 141558531;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
      v18 = sub_1000136BC(v15, v17, &v33);

      *(v12 + 14) = v18;
      *(v12 + 22) = 2114;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 24) = v19;
      *v13 = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to update key sync beacon %{private,mask.hash}s %{public}@.", v12, 0x20u);
      sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v14);

      sub_100391554(v0 + 160);

      sub_100018D00(v28, type metadata accessor for SharedBeaconRecord);
      (*(v29 + 8))(v31, v30);
      v20 = v32;
    }

    else
    {
      v21 = *(v0 + 2056);
      v22 = *(v0 + 2032);
      v23 = *(v0 + 2024);
      v24 = *(v0 + 1960);
      v25 = *(v0 + 1824);

      sub_100391554(v0 + 160);

      sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v24, type metadata accessor for SharedBeaconRecord);
      (*(v22 + 8))(v21, v23);
      v20 = v25;
    }

    sub_100018D00(v20, type metadata accessor for KeySyncMetadata);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100C98C74()
{
  v1 = v0[313];
  v2 = v0[312];
  v3 = v0[257];
  v4 = v0[254];
  v5 = v0[253];
  v6 = v0[251];
  sub_100391554((v0 + 20));

  sub_100016590(v2, v1);
  sub_100018D00(v6, type metadata accessor for SharingCircleSecretValue);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C98FD0()
{
  v1 = v0[318];
  v2 = v0[317];
  v3 = v0[257];
  v4 = v0[254];
  v5 = v0[253];
  v6 = v0[250];

  sub_100391554((v0 + 20));

  sub_100016590(v2, v1);
  sub_100018D00(v6, type metadata accessor for SharingCircleSecretValue);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C99334()
{
  v1 = v0[257];
  v2 = v0[254];
  v3 = v0[253];
  v4 = v0[249];
  v5 = v0[226];

  sub_100391554((v0 + 20));

  sub_100018D00(v4, type metadata accessor for SharingCircleSecretValue);
  sub_100018D00(v5, type metadata accessor for KeyDropJoinToken);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C996A4()
{
  v1 = v0[257];
  v2 = v0[254];
  v3 = v0[253];
  sub_100391554((v0 + 20));

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C999CC()
{
  v1 = v0[257];
  v2 = v0[254];
  v3 = v0[253];
  v4 = v0[214];
  v5 = v0[211];
  v6 = v0[210];
  sub_100391554((v0 + 20));

  sub_10000B3A8(v6, &unk_101696900, &unk_10138B1E0);
  sub_10000B3A8(v5, &unk_101696900, &unk_10138B1E0);
  sub_100018D00(v4, type metadata accessor for KeyDropLostItemDates);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C99D4C()
{
  v1 = v0[257];
  v2 = v0[254];
  v3 = v0[253];
  v4 = v0[214];
  v5 = v0[211];
  v6 = v0[210];
  sub_100391554((v0 + 20));

  sub_10000B3A8(v6, &unk_101696900, &unk_10138B1E0);
  sub_10000B3A8(v5, &unk_101696900, &unk_10138B1E0);
  sub_100018D00(v4, type metadata accessor for KeyDropLostItemDates);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C9A0CC()
{
  v30 = v0;
  v1 = *(v0 + 2848);
  v2 = *(v0 + 1664);

  sub_10000B3A8(v2 + v1, &unk_101696900, &unk_10138B1E0);
  sub_100D11DC8(*(v0 + 1640), *(v0 + 2120), type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 2120);
  if (v5)
  {
    v27 = *(v0 + 2024);
    v28 = *(v0 + 2056);
    v25 = *(v0 + 1712);
    v26 = *(v0 + 2032);
    v23 = *(v0 + 1680);
    v24 = *(v0 + 1688);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_100018D00(v6, type metadata accessor for SharingCircleKeyManager.Instruction);
    v13 = sub_1000136BC(v10, v12, &v29);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to post notification for circle %{private,mask.hash}s, %{public}@.", v7, 0x20u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);

    sub_100391554(v0 + 160);

    sub_10000B3A8(v23, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v24, &unk_101696900, &unk_10138B1E0);
    sub_100018D00(v25, type metadata accessor for KeyDropLostItemDates);
    (*(v26 + 8))(v28, v27);
  }

  else
  {
    v15 = *(v0 + 2056);
    v16 = *(v0 + 2032);
    v17 = *(v0 + 2024);
    v18 = *(v0 + 1712);
    v19 = *(v0 + 1688);
    v20 = *(v0 + 1680);

    sub_100391554(v0 + 160);

    sub_100018D00(v6, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_10000B3A8(v20, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v19, &unk_101696900, &unk_10138B1E0);
    sub_100018D00(v18, type metadata accessor for KeyDropLostItemDates);
    (*(v16 + 8))(v15, v17);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100C9A72C()
{
  v31 = v0;
  v1 = v0[256];
  v2 = v0[253];
  v3 = *(v0[254] + 8);
  v3(v0[255], v2);
  v3(v1, v2);
  sub_100D11DC8(v0[205], v0[265], type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[265];
  if (v6)
  {
    v28 = v0[253];
    v29 = v0[257];
    v26 = v0[214];
    v27 = v0[254];
    v24 = v0[210];
    v25 = v0[211];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    v14 = sub_1000136BC(v11, v13, &v30);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to post notification for circle %{private,mask.hash}s, %{public}@.", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);

    sub_100391554((v0 + 20));

    sub_10000B3A8(v24, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v25, &unk_101696900, &unk_10138B1E0);
    sub_100018D00(v26, type metadata accessor for KeyDropLostItemDates);
    (*(v27 + 8))(v29, v28);
  }

  else
  {
    v16 = v0[257];
    v17 = v0[254];
    v18 = v0[253];
    v19 = v0[214];
    v20 = v0[211];
    v21 = v0[210];

    sub_100391554((v0 + 20));

    sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_10000B3A8(v21, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v20, &unk_101696900, &unk_10138B1E0);
    sub_100018D00(v19, type metadata accessor for KeyDropLostItemDates);
    (*(v17 + 8))(v16, v18);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_100C9AD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a6;
  v6[7] = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v11 = swift_task_alloc();
  v6[10] = v11;
  *v11 = v6;
  v11[1] = sub_100C9AEA8;

  return sub_1012D5050(a2, a3, a4, a5, 0, 0, 0);
}

uint64_t sub_100C9AEA8()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100C9AFEC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100C9AFEC()
{
  v25 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177BF08);
  sub_100D11DC8(v3, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v10 = 136446979;
    v11 = sub_100C71778();
    v13 = v12;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v14 = sub_1000136BC(v11, v13, &v24);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v18 = sub_1000136BC(v15, v17, &v24);

    *(v10 + 24) = v18;
    *(v10 + 32) = 2082;
    swift_getErrorValue();
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, &v24);

    *(v10 + 34) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to save primaryAddress keys %{public}s,\nbeacon-id: %{private,mask.hash}s, error: %{public}s.", v10, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_100C9B348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a6;
  v6[7] = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v11 = swift_task_alloc();
  v6[10] = v11;
  *v11 = v6;
  v11[1] = sub_100C9B458;

  return sub_1012D5050(a2, 0, 0, 0, a3, a4, a5);
}

uint64_t sub_100C9B458()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100C9B59C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100C9B59C()
{
  v25 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177BF08);
  sub_100D11DC8(v3, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v10 = 136446979;
    v11 = sub_100C71778();
    v13 = v12;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v14 = sub_1000136BC(v11, v13, &v24);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v18 = sub_1000136BC(v15, v17, &v24);

    *(v10 + 24) = v18;
    *(v10 + 32) = 2082;
    swift_getErrorValue();
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, &v24);

    *(v10 + 34) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to save secondaryAddress keys %{public}s,\n                                         beacon-id: %{private,mask.hash}s,\n                                         error: %{public}s.", v10, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_100C9B8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v6[12] = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_100C9B9FC, 0, 0);
}

uint64_t sub_100C9B9FC()
{
  v1 = v0[7];
  v2 = *(type metadata accessor for SharedBeaconRecord(0) + 20);
  v3 = getuid();
  sub_1000294F0(v3);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_100C9BAD4;
  v5 = v0[17];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[8];

  return sub_100681FA0(v5, v1 + v2, v8, v6, v7);
}

uint64_t sub_100C9BAD4()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *v1;
  *(v5 + 152) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100C9BC90, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100C9BC90()
{
  v26 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177BF08);
  sub_100D11DC8(v3, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v8 = v0[13];
    v9 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v9 = 136446979;
    v10 = sub_100C71778();
    v12 = v11;
    sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    v13 = sub_1000136BC(v10, v12, &v25);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v17 = sub_1000136BC(v14, v16, &v25);

    *(v9 + 24) = v17;
    *(v9 + 32) = 2082;
    swift_getErrorValue();
    v18 = Error.localizedDescription.getter();
    v20 = sub_1000136BC(v18, v19, &v25);

    *(v9 + 34) = v20;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to save connectionKeys %{public}s,\nbeacon-id: %{private,mask.hash}s, error: %{public}s.", v9, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[13];
    v21 = v0[14];

    sub_100018D00(v22, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v21, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_100C9BFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[49] = a7;
  v8[50] = v7;
  v8[47] = a5;
  v8[48] = a6;
  v8[45] = a3;
  v8[46] = a4;
  v8[43] = a1;
  v8[44] = a2;
  v9 = type metadata accessor for Connection.TransactionMode();
  v8[51] = v9;
  v8[52] = *(v9 - 8);
  v8[53] = swift_task_alloc();
  v10 = type metadata accessor for Table();
  v8[54] = v10;
  v8[55] = *(v10 - 8);
  v8[56] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v8[57] = v11;
  v8[58] = *(v11 - 8);
  v8[59] = swift_task_alloc();
  v12 = type metadata accessor for AES.GCM.SealedBox();
  v8[60] = v12;
  v8[61] = *(v12 - 8);
  v8[62] = swift_task_alloc();
  v13 = type metadata accessor for AES.GCM.Nonce();
  v8[63] = v13;
  v8[64] = *(v13 - 8);
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v14 = type metadata accessor for SymmetricKey();
  v8[67] = v14;
  v8[68] = *(v14 - 8);
  v8[69] = swift_task_alloc();

  return _swift_task_switch(sub_100C9C29C, v7, 0);
}

uint64_t sub_100C9C29C()
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *(v0 + 560) = JSONDecoder.init()();
  sub_100D12E70();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 96);
  *(v0 + 144) = *(v0 + 80);
  *(v0 + 160) = v3;
  v4 = *(v0 + 128);
  *(v0 + 176) = *(v0 + 112);
  *(v0 + 192) = v4;
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  sub_100017D5C(v1, v2);
  SymmetricKey.init<A>(data:)();
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  *(v0 + 288) = v5;
  *(v0 + 296) = v6;
  sub_100017D5C(v5, v6);
  sub_1000E0A3C();
  AES.GCM.Nonce.init<A>(data:)();
  (*(*(v0 + 512) + 16))(*(v0 + 520), *(v0 + 528), *(v0 + 504));
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  *(v0 + 304) = v7;
  *(v0 + 312) = v8;
  v9 = *(v0 + 176);
  v10 = *(v0 + 184);
  *(v0 + 320) = v9;
  *(v0 + 328) = v10;
  sub_100017D5C(v7, v8);
  sub_100017D5C(v9, v10);
  AES.GCM.SealedBox.init<A, B>(nonce:ciphertext:tag:)();
  *(v0 + 568) = static AES.GCM.open(_:using:)();
  *(v0 + 576) = v11;
  sub_100D12EC4();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  *(v0 + 584) = 0;
  v12 = *(v0 + 400);
  v13 = *(v0 + 224);
  *(v0 + 16) = *(v0 + 208);
  *(v0 + 32) = v13;
  v14 = *(v0 + 256);
  *(v0 + 48) = *(v0 + 240);
  *(v0 + 64) = v14;
  v15 = *(v12 + 120);
  *(v0 + 592) = v15;

  return _swift_task_switch(sub_100C9C6DC, v15, 0);
}

uint64_t sub_100C9C6DC()
{

  v1 = swift_task_alloc();
  *(v0 + 600) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_100C9C7BC;
  v3 = *(v0 + 592);

  return unsafeBlocking<A>(context:_:)(v0 + 336, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_100C9C7BC()
{
  v1 = *(*v0 + 592);

  return _swift_task_switch(sub_100C9C8D4, v1, 0);
}

uint64_t sub_100C9C8D4()
{
  v1 = v0[50];
  v0[76] = v0[42];
  return _swift_task_switch(sub_100C9C8F8, v1, 0);
}

uint64_t sub_100C9C8F8()
{
  v1 = *(*(v0 + 608) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  *(v0 + 616) = v1;

  v2 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  *(v0 + 632) = *(v2 + 20);
  *(v0 + 636) = *(v2 + 24);
  v3 = getuid();
  sub_1000294F0(v3);

  return _swift_task_switch(sub_100C9C9B0, v1, 0);
}

uint64_t sub_100C9C9B0()
{
  v1 = *(*(v0 + 616) + 112);
  if (!v1)
  {
    sub_100694A6C(v0 + 16);
    sub_10020223C();
    v11 = swift_allocError();
    *v15 = 2;
    *(v15 + 4) = 1;
    swift_willThrow();
LABEL_7:

    goto LABEL_8;
  }

  v2 = sub_1002072CC();
  if (!v2)
  {
    sub_100694A6C(v0 + 16);
    sub_10020223C();
    v11 = swift_allocError();
    *v16 = 2;
    *(v16 + 4) = 1;
    swift_willThrow();

    goto LABEL_7;
  }

  v3 = v2;
  v36 = *(v0 + 584);
  v30 = *(v0 + 472);
  v4 = *(v0 + 448);
  v5 = *(v0 + 424);
  v6 = *(v0 + 416);
  v33 = *(v0 + 408);
  v7 = *(v0 + 392);
  v26 = *(v0 + 376);
  v28 = *(v0 + 384);
  v8 = v7 + *(v0 + 636);
  v9 = v7 + *(v0 + 632);
  (*(*(v0 + 440) + 16))(v4, v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_importedBeaconAttributes, *(v0 + 432));
  v10 = swift_task_alloc();
  v10[2] = v4;
  v10[3] = v8;
  v10[4] = v9;
  v10[5] = v30;
  v10[6] = v0 + 16;
  v10[7] = v26;
  v10[8] = v28;
  v10[9] = v3;
  (*(v6 + 104))(v5, enum case for Connection.TransactionMode.deferred(_:), v33);
  Connection.transaction(_:block:)();
  v11 = v36;
  if (v36)
  {
    v12 = *(v0 + 440);
    v34 = *(v0 + 432);
    v37 = *(v0 + 448);
    v31 = *(v0 + 424);
    v13 = *(v0 + 408);
    v14 = *(v0 + 416);
    sub_100694A6C(v0 + 16);

    (*(v14 + 8))(v31, v13);

    (*(v12 + 8))(v37, v34);
LABEL_8:
    *(v0 + 624) = v11;
    v17 = *(v0 + 400);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    v18 = sub_100C9CE48;
    v19 = v17;
    goto LABEL_9;
  }

  v20 = *(v0 + 464);
  v32 = *(v0 + 456);
  v35 = *(v0 + 472);
  v21 = *(v0 + 440);
  v27 = *(v0 + 432);
  v29 = *(v0 + 448);
  v22 = *(v0 + 416);
  v25 = *(v0 + 424);
  v23 = *(v0 + 408);
  v38 = *(v0 + 400);
  sub_100694A6C(v0 + 16);

  (*(v22 + 8))(v25, v23);

  (*(v21 + 8))(v29, v27);
  (*(v20 + 8))(v35, v32);
  v18 = sub_100C9CCF8;
  v19 = v38;
LABEL_9:

  return _swift_task_switch(v18, v19, 0);
}

uint64_t sub_100C9CCF8()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[66];
  v11 = v0[67];
  v5 = v0[63];
  v4 = v0[64];
  v6 = v0[61];
  v7 = v0[62];
  v8 = v0[60];
  sub_100016590(v0[71], v0[72]);

  sub_100922D9C((v0 + 18));
  (*(v6 + 8))(v7, v8);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100C9CE48()
{
  v11 = v0[69];
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[63];
  v5 = v0[64];
  v6 = v0[61];
  v7 = v0[62];
  v8 = v0[60];
  sub_100016590(v0[71], v0[72]);

  sub_100922D9C((v0 + 18));
  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v3, v4);
  (*(v1 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100C9CF9C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v3[9] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697610, &unk_10138C4B0);
  v3[10] = swift_task_alloc();
  v4 = type metadata accessor for SharingCircleSecret(0);
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v5 = type metadata accessor for SharingCircleSecretValue(0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699BB0, &qword_1013B35F0);
  v3[39] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[40] = v6;
  v7 = *(v6 - 8);
  v3[41] = v7;
  v3[42] = *(v7 + 64);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();

  return _swift_task_switch(sub_100C9D30C, v2, 0);
}

uint64_t sub_100C9D30C(uint64_t a1)
{
  v65 = v1;
  v2 = *(v1 + 368);
  v3 = *(v1 + 320);
  v4 = *(v1 + 328);
  v60 = *(v1 + 312);
  v57 = *(v1 + 304);
  v58 = *(v1 + 352);
  v5 = *(v1 + 128);
  v61 = *(v1 + 96);
  v63 = *(v1 + 360);
  v59 = *(v1 + 88);
  v6 = *(v1 + 48);
  v56 = *(v1 + 56);
  v7 = sub_101315BA4();
  v9 = v8;
  *(v1 + 16) = v7;
  *(v1 + 24) = v8;
  sub_1000E0A3C();
  DataProtocol.stableUUID.getter();
  sub_100016590(v7, v9);
  v10 = *(v4 + 16);
  *(v1 + 376) = v10;
  *(v1 + 384) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v63, v2, v3);
  v11 = *(v5 + 20);
  *(v1 + 504) = v11;
  v10(v58, v56 + v11, v3);
  sub_100D11DC8(v6, v57, type metadata accessor for SharingCircleSecretValue);
  *v60 = xmmword_10138C660;
  v10(v60 + v59[5], v63, v3);
  v10(v60 + v59[6], v58, v3);
  v12 = sub_101315BA4();
  v13 = (v60 + v59[8]);
  *v13 = v12;
  v13[1] = v14;
  v15 = sub_101315964();
  v17 = v16;
  sub_100018D00(v57, type metadata accessor for SharingCircleSecretValue);
  v18 = *(v4 + 8);
  *(v1 + 392) = v18;
  *(v1 + 400) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v58, v3);
  v18(v63, v3);
  v19 = (v60 + v59[7]);
  *v19 = v15;
  v19[1] = v17;
  v20 = *(v61 + 56);
  *(v1 + 408) = v20;
  *(v1 + 416) = (v61 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v20(v60, 0, 1, v59);
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v21 = *(v1 + 296);
  v23 = *(v1 + 216);
  v22 = *(v1 + 224);
  v24 = *(v1 + 208);
  v26 = *(v1 + 48);
  v25 = *(v1 + 56);
  v27 = type metadata accessor for Logger();
  *(v1 + 424) = sub_1000076D4(v27, qword_10177BF08);
  sub_100D11DC8(v25, v22, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v26, v21, type metadata accessor for SharingCircleSecretValue);
  sub_100D11DC8(v25, v23, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v25, v24, type metadata accessor for SharingCircleKeyManager.Instruction);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v1 + 296);
    v32 = *(v1 + 216);
    v31 = *(v1 + 224);
    v62 = *(v1 + 208);
    v33 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v33 = 136447491;
    v34 = sub_100C71778();
    v36 = v35;
    sub_100018D00(v31, type metadata accessor for SharingCircleKeyManager.Instruction);
    v37 = sub_1000136BC(v34, v36, &v64);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    v38 = sub_101315964();
    v40 = v39;
    sub_100018D00(v30, type metadata accessor for SharingCircleSecretValue);
    v41 = sub_1000136BC(v38, v40, &v64);

    *(v33 + 14) = v41;
    *(v33 + 22) = 2160;
    *(v33 + 24) = 1752392040;
    *(v33 + 32) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    sub_100018D00(v32, type metadata accessor for SharingCircleKeyManager.Instruction);
    v45 = sub_1000136BC(v42, v44, &v64);

    *(v33 + 34) = v45;
    *(v33 + 42) = 2160;
    *(v33 + 44) = 1752392040;
    *(v33 + 52) = 2081;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    sub_100018D00(v62, type metadata accessor for SharingCircleKeyManager.Instruction);
    v49 = sub_1000136BC(v46, v48, &v64);

    *(v33 + 54) = v49;
    _os_log_impl(&_mh_execute_header, v28, v29, "Save secret value: %{public}s,\ntype: %s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v33, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    v50 = *(v1 + 296);
    v52 = *(v1 + 216);
    v51 = *(v1 + 224);
    v53 = *(v1 + 208);

    sub_100018D00(v53, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v52, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v50, type metadata accessor for SharingCircleSecretValue);
    sub_100018D00(v51, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v54 = *(*(v1 + 64) + 120);
  *(v1 + 432) = v54;

  return _swift_task_switch(sub_100C9D928, v54, 0);
}

uint64_t sub_100C9D928()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 360);
  v3 = *(v0 + 328);
  v4 = *(v0 + 320);
  (*(v0 + 376))(v2, *(v0 + 56) + *(v0 + 504), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 440) = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 448) = v7;
  v8 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v7 = v0;
  v7[1] = sub_100C9DAA0;

  return unsafeBlocking<A>(context:_:)(v0 + 32, 0xD000000000000010, 0x800000010134A8C0, sub_100D12E58, v6, v8);
}

uint64_t sub_100C9DAA0()
{
  v1 = *(*v0 + 432);

  return _swift_task_switch(sub_100C9DBCC, v1, 0);
}

uint64_t sub_100C9DBCC()
{
  v1 = v0[8];
  v0[57] = v0[4];
  return _swift_task_switch(sub_100C9DBF0, v1, 0);
}

uint64_t sub_100C9DBF0()
{
  v137 = v0;
  *(v0 + 40) = _swiftEmptyArrayStorage;
  v1 = (v0 + 40);
  v2 = *(v0 + 456);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 96);
    v123 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v5 = v2 + v123;
    v6 = *(v4 + 72);
    v135 = (*(v0 + 240) + 56);
    v132 = _swiftEmptyArrayStorage;
    v133 = v6;
    while (1)
    {
      v10 = *(v0 + 120);
      v11 = *(v0 + 80);
      v12 = *(v0 + 88);
      sub_100D11DC8(v5, v10, type metadata accessor for SharingCircleSecret);
      v13 = *(v12 + 28);
      v14 = (v10 + *(v12 + 32));
      v15 = *v14;
      v16 = v14[1];
      v17 = v10 + v13;
      v18 = *(v10 + v13);
      v19 = *(v17 + 8);
      sub_100017D5C(*v14, v16);

      sub_101316078(v15, v16, v18, v19, v11);
      v20 = *(v0 + 288);
      v21 = *(v0 + 80);
      (*v135)(v21, 0, 1, *(v0 + 232));
      sub_100D12974(v21, v20, type metadata accessor for SharingCircleSecretValue);
      sub_100D12974(*(v0 + 288), *(v0 + 280), type metadata accessor for SharingCircleSecretValue);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v23 = 7;
          }

          else
          {
            v23 = 8;
          }

LABEL_17:
          v24 = *(v0 + 272);
          v25 = *(v0 + 48);
          sub_100018D00(*(v0 + 280), type metadata accessor for SharingCircleSecretValue);
          sub_100D11DC8(v25, v24, type metadata accessor for SharingCircleSecretValue);
          v26 = swift_getEnumCaseMultiPayload();
          if (v26 > 2)
          {
            if (v26 <= 4)
            {
              if (v26 == 3)
              {
                v27 = 10;
              }

              else
              {
                v27 = 11;
              }

              goto LABEL_29;
            }

            if (v26 != 5)
            {
              v27 = 14;
              goto LABEL_29;
            }

LABEL_25:
            sub_100018D00(*(v0 + 272), type metadata accessor for SharingCircleSecretValue);
LABEL_69:
            v9 = *(v0 + 120);
            v8 = type metadata accessor for SharingCircleSecret;
            goto LABEL_4;
          }

          if (!v26)
          {
            goto LABEL_25;
          }

          if (v26 == 1)
          {
            v27 = 7;
          }

          else
          {
            v27 = 8;
          }

LABEL_29:
          sub_100018D00(*(v0 + 272), type metadata accessor for SharingCircleSecretValue);
          if (v23 > 10)
          {
            if (v23 > 12)
            {
              v28 = 0x7461636F4C626577;
              v29 = 0xEE0079654B6E6F69;
              if (v27 <= 10)
              {
                goto LABEL_44;
              }
            }

            else
            {
              v28 = 0x656B6F546E696F6ALL;
              v29 = 0xE90000000000006ELL;
              if (v27 <= 10)
              {
                goto LABEL_44;
              }
            }
          }

          else if (v23 > 8)
          {
            v28 = 0x656E774F7261656ELL;
            v29 = 0xEC00000079654B72;
            if (v27 <= 10)
            {
              goto LABEL_44;
            }
          }

          else
          {
            if (v23 == 7)
            {
              v28 = 0xD000000000000012;
              v29 = 0x80000001013475D0;
              if (v27 > 10)
              {
                goto LABEL_33;
              }

LABEL_44:
              if (v27 > 8)
              {
                v30 = 0xEC00000079654B72;
                if (v28 == 0x656E774F7261656ELL)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                if (v27 == 7)
                {
                  v30 = 0x80000001013475D0;
                  if (v28 != 0xD000000000000012)
                  {
                    goto LABEL_58;
                  }
                }

                else
                {
                  v30 = 0x80000001013475F0;
                  if (v28 != 0xD000000000000011)
                  {
                    goto LABEL_58;
                  }
                }

LABEL_49:
                if (v29 == v30)
                {

                  goto LABEL_59;
                }
              }

LABEL_58:
              v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v31 & 1) == 0)
              {
                goto LABEL_69;
              }

LABEL_59:
              sub_100D13BF8(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v134 = v3;
              if (dispatch thunk of static Equatable.== infix(_:_:)())
              {
                v32 = *(v0 + 256);
                v34 = *(v0 + 168);
                v33 = *(v0 + 176);
                v35 = *(v0 + 160);
                v37 = *(v0 + 48);
                v36 = *(v0 + 56);
                (*(v0 + 376))(*(v0 + 344), *(v0 + 368), *(v0 + 320));
                sub_100D11DC8(v36, v33, type metadata accessor for SharingCircleKeyManager.Instruction);
                sub_100D11DC8(v37, v32, type metadata accessor for SharingCircleSecretValue);
                sub_100D11DC8(v36, v34, type metadata accessor for SharingCircleKeyManager.Instruction);
                sub_100D11DC8(v36, v35, type metadata accessor for SharingCircleKeyManager.Instruction);
                v38 = Logger.logObject.getter();
                v39 = static os_log_type_t.default.getter();
                v40 = os_log_type_enabled(v38, v39);
                v41 = *(v0 + 392);
                v42 = *(v0 + 344);
                v43 = *(v0 + 320);
                v44 = *(v0 + 256);
                v45 = *(v0 + 176);
                v127 = *(v0 + 168);
                v130 = *(v0 + 160);
                if (v40)
                {
                  v125 = *(v0 + 120);
                  log = v38;
                  v46 = swift_slowAlloc();
                  v136[0] = swift_slowAlloc();
                  *v46 = 141559811;
                  *(v46 + 4) = 1752392040;
                  *(v46 + 12) = 2081;
                  sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                  v119 = v39;
                  v47 = dispatch thunk of CustomStringConvertible.description.getter();
                  v48 = v43;
                  v50 = v49;
                  v41(v42, v48);
                  v51 = sub_1000136BC(v47, v50, v136);

                  *(v46 + 14) = v51;
                  *(v46 + 22) = 2082;
                  v52 = sub_100C71778();
                  v54 = v53;
                  sub_100018D00(v45, type metadata accessor for SharingCircleKeyManager.Instruction);
                  v55 = sub_1000136BC(v52, v54, v136);

                  *(v46 + 24) = v55;
                  *(v46 + 32) = 2080;
                  v56 = sub_101315964();
                  v58 = v57;
                  sub_100018D00(v44, type metadata accessor for SharingCircleSecretValue);
                  v59 = sub_1000136BC(v56, v58, v136);

                  *(v46 + 34) = v59;
                  *(v46 + 42) = 2160;
                  *(v46 + 44) = 1752392040;
                  *(v46 + 52) = 2081;
                  v60 = dispatch thunk of CustomStringConvertible.description.getter();
                  v62 = v61;
                  sub_100018D00(v127, type metadata accessor for SharingCircleKeyManager.Instruction);
                  v63 = sub_1000136BC(v60, v62, v136);

                  *(v46 + 54) = v63;
                  *(v46 + 62) = 2160;
                  *(v46 + 64) = 1752392040;
                  *(v46 + 72) = 2081;
                  v64 = dispatch thunk of CustomStringConvertible.description.getter();
                  v66 = v65;
                  sub_100018D00(v130, type metadata accessor for SharingCircleKeyManager.Instruction);
                  v67 = sub_1000136BC(v64, v66, v136);

                  *(v46 + 74) = v67;
                  _os_log_impl(&_mh_execute_header, log, v119, "Keeping existing key %{private,mask.hash}s: %{public}s,\ntype: %s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v46, 0x52u);
                  swift_arrayDestroy();

                  v68 = v125;
                }

                else
                {
                  v106 = *(v0 + 120);

                  sub_100018D00(v130, type metadata accessor for SharingCircleKeyManager.Instruction);
                  sub_100018D00(v127, type metadata accessor for SharingCircleKeyManager.Instruction);
                  sub_100018D00(v44, type metadata accessor for SharingCircleSecretValue);
                  sub_100018D00(v45, type metadata accessor for SharingCircleKeyManager.Instruction);
                  v41(v42, v43);
                  v68 = v106;
                }

                sub_100018D00(v68, type metadata accessor for SharingCircleSecret);
                v3 = v134;
                v6 = v133;
                v107 = *(v0 + 408);
                v108 = *(v0 + 312);
                v109 = *(v0 + 88);
                sub_10000B3A8(v108, &qword_101699BB0, &qword_1013B35F0);
                v107(v108, 1, 1, v109);
                goto LABEL_5;
              }

              if (((1 << v23) & 0x7D80) != 0)
              {
                sub_100D11DC8(*(v0 + 120), *(v0 + 112), type metadata accessor for SharingCircleSecret);
                v69 = v132;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v69 = sub_100A5B984(0, v132[2] + 1, 1, v132);
                }

                v71 = v69[2];
                v70 = v69[3];
                if (v71 >= v70 >> 1)
                {
                  v69 = sub_100A5B984((v70 > 1), v71 + 1, 1, v69);
                }

                v72 = *(v0 + 200);
                v124 = *(v0 + 264);
                v126 = *(v0 + 192);
                v128 = *(v0 + 184);
                v73 = *(v0 + 112);
                v74 = *(v0 + 120);
                v75 = *(v0 + 104);
                v76 = *(v0 + 48);
                v77 = *(v0 + 56);
                v69[2] = v71 + 1;
                sub_100D12974(v73, v69 + v123 + v71 * v133, type metadata accessor for SharingCircleSecret);
                v132 = v69;
                *(v0 + 40) = v69;
                sub_100D11DC8(v74, v75, type metadata accessor for SharingCircleSecret);
                sub_100D11DC8(v77, v72, type metadata accessor for SharingCircleKeyManager.Instruction);
                sub_100D11DC8(v76, v124, type metadata accessor for SharingCircleSecretValue);
                sub_100D11DC8(v77, v126, type metadata accessor for SharingCircleKeyManager.Instruction);
                sub_100D11DC8(v77, v128, type metadata accessor for SharingCircleKeyManager.Instruction);
                v78 = Logger.logObject.getter();
                v79 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v78, v79))
                {
                  v80 = *(v0 + 264);
                  v120 = v78;
                  v81 = *(v0 + 192);
                  v82 = *(v0 + 200);
                  loga = *(v0 + 184);
                  v131 = *(v0 + 120);
                  v83 = *(v0 + 104);
                  v129 = v79;
                  v84 = swift_slowAlloc();
                  v136[0] = swift_slowAlloc();
                  *v84 = 141559811;
                  *(v84 + 4) = 1752392040;
                  *(v84 + 12) = 2081;
                  sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                  v85 = dispatch thunk of CustomStringConvertible.description.getter();
                  v87 = v86;
                  sub_100018D00(v83, type metadata accessor for SharingCircleSecret);
                  v88 = sub_1000136BC(v85, v87, v136);

                  *(v84 + 14) = v88;
                  *(v84 + 22) = 2082;
                  v89 = sub_100C71778();
                  v91 = v90;
                  sub_100018D00(v82, type metadata accessor for SharingCircleKeyManager.Instruction);
                  v92 = sub_1000136BC(v89, v91, v136);

                  *(v84 + 24) = v92;
                  *(v84 + 32) = 2080;
                  v93 = sub_101315964();
                  v95 = v94;
                  sub_100018D00(v80, type metadata accessor for SharingCircleSecretValue);
                  v96 = sub_1000136BC(v93, v95, v136);

                  *(v84 + 34) = v96;
                  *(v84 + 42) = 2160;
                  *(v84 + 44) = 1752392040;
                  *(v84 + 52) = 2081;
                  v97 = dispatch thunk of CustomStringConvertible.description.getter();
                  v99 = v98;
                  sub_100018D00(v81, type metadata accessor for SharingCircleKeyManager.Instruction);
                  v100 = sub_1000136BC(v97, v99, v136);

                  *(v84 + 54) = v100;
                  *(v84 + 62) = 2160;
                  *(v84 + 64) = 1752392040;
                  *(v84 + 72) = 2081;
                  v101 = dispatch thunk of CustomStringConvertible.description.getter();
                  v103 = v102;
                  sub_100018D00(loga, type metadata accessor for SharingCircleKeyManager.Instruction);
                  v104 = sub_1000136BC(v101, v103, v136);

                  *(v84 + 74) = v104;
                  _os_log_impl(&_mh_execute_header, v120, v129, "Deleting existing key %{private,mask.hash}s: %{public}s,\ntype: %s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v84, 0x52u);
                  swift_arrayDestroy();

                  v105 = v131;
                }

                else
                {
                  v110 = *(v0 + 264);
                  v112 = *(v0 + 192);
                  v111 = *(v0 + 200);
                  v113 = *(v0 + 184);
                  v114 = *(v0 + 120);
                  v115 = *(v0 + 104);

                  sub_100018D00(v113, type metadata accessor for SharingCircleKeyManager.Instruction);
                  sub_100018D00(v112, type metadata accessor for SharingCircleKeyManager.Instruction);
                  sub_100018D00(v110, type metadata accessor for SharingCircleSecretValue);
                  sub_100018D00(v111, type metadata accessor for SharingCircleKeyManager.Instruction);
                  sub_100018D00(v115, type metadata accessor for SharingCircleSecret);
                  v105 = v114;
                }

                sub_100018D00(v105, type metadata accessor for SharingCircleSecret);
                v3 = v134;
                v6 = v133;
                goto LABEL_5;
              }

              goto LABEL_69;
            }

            v28 = 0xD000000000000011;
            v29 = 0x80000001013475F0;
            if (v27 <= 10)
            {
              goto LABEL_44;
            }
          }

LABEL_33:
          if (v27 > 12)
          {
            v30 = 0xEE0079654B6E6F69;
            if (v28 != 0x7461636F4C626577)
            {
              goto LABEL_58;
            }

            goto LABEL_49;
          }

          v30 = 0xE90000000000006ELL;
          if (v28 == 0x656B6F546E696F6ALL)
          {
            goto LABEL_49;
          }

          goto LABEL_58;
        }
      }

      else
      {
        if (EnumCaseMultiPayload <= 4)
        {
          if (EnumCaseMultiPayload == 3)
          {
            v23 = 10;
          }

          else
          {
            v23 = 11;
          }

          goto LABEL_17;
        }

        if (EnumCaseMultiPayload != 5)
        {
          v23 = 14;
          goto LABEL_17;
        }
      }

      v7 = *(v0 + 280);
      sub_100018D00(*(v0 + 120), type metadata accessor for SharingCircleSecret);
      v8 = type metadata accessor for SharingCircleSecretValue;
      v9 = v7;
LABEL_4:
      sub_100018D00(v9, v8);
LABEL_5:
      v5 += v6;
      if (!--v3)
      {

        v1 = (v0 + 40);
        v116 = v132;
        goto LABEL_76;
      }
    }
  }

  v116 = _swiftEmptyArrayStorage;
LABEL_76:
  *(v0 + 464) = v116;
  sub_100EC09A4(*(v0 + 312), v1, *(v0 + 72));
  v117 = *(v0 + 432);

  return _swift_task_switch(sub_100C9EEC0, v117, 0);
}

uint64_t sub_100C9EEE8()
{
  v1 = v0[59];
  v2 = v0[9];
  v3 = swift_task_alloc();
  v0[60] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[61] = v4;
  *v4 = v0;
  v4[1] = sub_100C9EFE0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 1);
}

uint64_t sub_100C9EFE0()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_100C9F6AC;
  }

  else
  {

    v2 = sub_100C9F0FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C9F118()
{
  v39 = v0;
  v1 = v0[31];
  v2 = v0[18];
  v3 = v0[17];
  v5 = v0[6];
  v4 = v0[7];
  sub_100D11DC8(v4, v0[19], type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v5, v1, type metadata accessor for SharingCircleSecretValue);
  sub_100D11DC8(v4, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v4, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v36 = v0[46];
  v37 = v0[49];
  v35 = v0[40];
  v9 = v0[31];
  v10 = v0[18];
  v11 = v0[19];
  v12 = v0[17];
  if (v8)
  {
    v34 = v0[9];
    v13 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v13 = 136446978;
    log = v6;
    v14 = sub_100C71778();
    v16 = v15;
    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    v17 = sub_1000136BC(v14, v16, &v38);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = sub_101315964();
    v20 = v19;
    sub_100018D00(v9, type metadata accessor for SharingCircleSecretValue);
    v21 = sub_1000136BC(v18, v20, &v38);

    *(v13 + 14) = v21;
    *(v13 + 22) = 2080;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    v25 = sub_1000136BC(v22, v24, &v38);

    *(v13 + 24) = v25;
    *(v13 + 32) = 2080;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    v29 = sub_1000136BC(v26, v28, &v38);

    *(v13 + 34) = v29;
    _os_log_impl(&_mh_execute_header, log, v7, "Saved key : %{public}s, type: %s,\nshare-id: %s, beacon-id: %s.", v13, 0x2Au);
    swift_arrayDestroy();

    v37(v36, v35);
    sub_10000B3A8(v34, &qword_1016975C8, &qword_10138C1F0);
  }

  else
  {
    v30 = v0[9];

    sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v9, type metadata accessor for SharingCircleSecretValue);
    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    v37(v36, v35);
    sub_10000B3A8(v30, &qword_1016975C8, &qword_10138C1F0);
  }

  sub_10000B3A8(v0[39], &qword_101699BB0, &qword_1013B35F0);

  v31 = v0[1];

  return v31();
}

uint64_t sub_100C9F6AC()
{
  v1 = *(v0 + 64);

  return _swift_task_switch(sub_100C9F718, v1, 0);
}

uint64_t sub_100C9F718()
{
  v1 = *(v0 + 72);
  (*(v0 + 392))(*(v0 + 368), *(v0 + 320));
  sub_10000B3A8(v1, &qword_1016975C8, &qword_10138C1F0);
  v2 = *(v0 + 312);

  sub_10000B3A8(v2, &qword_101699BB0, &qword_1013B35F0);

  v3 = *(v0 + 8);

  return v3();
}

void sub_100C9F944(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = a4;
  v6 = sub_1000BC4D4(&qword_101699BB0, &qword_1013B35F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for SharingCircleSecret(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = (&v19 - v14);
  sub_1000D2A70(a3, v8, &qword_101699BB0, &qword_1013B35F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000B3A8(v8, &qword_101699BB0, &qword_1013B35F0);
  }

  else
  {
    sub_100D12974(v8, v15, type metadata accessor for SharingCircleSecret);
    sub_100D4346C(v15);
    sub_100018D00(v15, type metadata accessor for SharingCircleSecret);
    if (v4)
    {
      return;
    }
  }

  v16 = *v20;
  v17 = *(*v20 + 16);

  if (v17)
  {
    v18 = 0;
    while (v18 < *(v16 + 16))
    {
      sub_100D11DC8(v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v13, type metadata accessor for SharingCircleSecret);
      sub_100D44DD8(v13);
      if (v4)
      {
        sub_100018D00(v13, type metadata accessor for SharingCircleSecret);
        goto LABEL_11;
      }

      ++v18;
      sub_100018D00(v13, type metadata accessor for SharingCircleSecret);
      if (v17 == v18)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
  }
}

uint64_t sub_100C9FBF0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v3[5] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169E358, &qword_101404C50);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[14] = v6;
  *v6 = v3;
  v6[1] = sub_100C9FDBC;

  return daemon.getter();
}

uint64_t sub_100C9FDBC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 120) = a1;

  v3 = swift_task_alloc();
  *(v2 + 128) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100D13BF8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D13BF8(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100C9FF98;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100C9FF98(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v4 = v3[4];
    v5 = sub_100CA05D4;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_100CA00C0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100CA00C0()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  (*(*(*(v3 + 8) + 8) + 32))(v2);
  v4 = v1[3];
  v5 = v1[4];
  sub_1000035D0(v1, v4);
  (*(v5 + 192))(v4, v5);
  v6 = v1[3];
  v7 = v1[4];
  sub_1000035D0(v1, v6);
  *(v0 + 160) = (*(v7 + 112))(v6, v7) & 1;
  v8 = swift_task_alloc();
  *(v0 + 152) = v8;
  *v8 = v0;
  v8[1] = sub_100CA021C;
  v9 = *(v0 + 104);
  v10 = *(v0 + 56);

  return sub_1010D4938(v10, v9);
}

uint64_t sub_100CA021C()
{
  v1 = *(*v0 + 136);

  return _swift_task_switch(sub_100CA032C, v1, 0);
}

uint64_t sub_100CA032C()
{
  v1 = *(v0 + 48);
  sub_1000D2A70(*(v0 + 56), v1, &qword_10169E358, &qword_101404C50);
  v2 = type metadata accessor for KeySyncSnapshot(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 40);
    sub_10000B3A8(*(v0 + 48), &qword_10169E358, &qword_101404C50);
    v4 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  }

  else
  {
    v5 = *(v0 + 48);
    sub_10112FB78(*(v0 + 160), *(v0 + 40));
    sub_100018D00(v5, type metadata accessor for KeySyncSnapshot);
  }

  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  v12 = *(v0 + 56);
  v13 = *(v0 + 40);
  v15 = *(v0 + 32);
  sub_1010D4F70(v9, v13, *(v0 + 16));
  sub_10000B3A8(v13, &unk_1016AF8A0, &unk_10139D7C0);
  sub_10000B3A8(v12, &qword_10169E358, &qword_101404C50);
  (*(v11 + 8))(v9, v10);
  (*(v7 + 8))(v6, v8);

  return _swift_task_switch(sub_100CA0528, v15, 0);
}

uint64_t sub_100CA0528()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CA05D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CA0680(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Date();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[11] = v6;
  *v6 = v3;
  v6[1] = sub_100CA07D0;

  return daemon.getter();
}

uint64_t sub_100CA07D0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 96) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100D13BF8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D13BF8(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100968A04;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100CA09AC(uint64_t a1)
{
  SymmetricKey.withUnsafeBytes<A>(_:)();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100D12E04();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
    sub_100016590(v7, v8);
  }

  else
  {
    v4 = v2;
    v5 = v3;
    Data.spEncrypt(key:ivLength:)();
    sub_100016590(v4, v5);

    return sub_100016590(v7, v8);
  }
}

uint64_t sub_100CA0AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a2;
  v4[12] = v3;
  v4[10] = a1;
  v6 = type metadata accessor for EncryptedData();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[16] = v7;
  *v7 = v4;
  v7[1] = sub_100CA0BE4;

  return sub_100C7BA0C((v4 + 2), a3);
}

uint64_t sub_100CA0BE4()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 96);

    return _swift_task_switch(sub_100CA0D34, v6, 0);
  }
}

uint64_t sub_100CA0D34()
{
  v2 = v0[2];
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    sub_1001BAEE0();
    swift_allocError();
    *v3 = 9;
    swift_willThrow();
LABEL_5:
    sub_1001BAF34((v0 + 2));

    v4 = v0[1];

    return v4();
  }

  v12 = v0[17];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  sub_10002E98C(v2, v1);
  sub_100017D5C(v2, v1);
  PropertyListDecoder.init()();
  sub_100D13BF8(&qword_10169C990, &type metadata accessor for EncryptedData, &protocol conformance descriptor for EncryptedData);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v12)
  {

    sub_100006654(v2, v1);
    sub_100006654(v2, v1);
    goto LABEL_5;
  }

  v13 = EncryptedData.decrypt(key:)();
  v7 = v6;
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];

  sub_100006654(v2, v1);
  sub_100006654(v2, v1);
  sub_1001BAF34((v0 + 2));
  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11(v13, v7);
}

uint64_t sub_100CA0FC8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v68 = a3;
  v67 = a2;
  v6 = sub_1000BC4D4(&qword_1016B9AE8, &unk_1013E35D0);
  v7 = __chkstk_darwin(v6 - 8);
  v64 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v56 - v10;
  v12 = __chkstk_darwin(v9);
  v63 = &v56 - v13;
  __chkstk_darwin(v12);
  v82 = &v56 - v14;
  v15 = type metadata accessor for EncryptedData();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for KeyDropInterface.KeyPackage(0);
  v20 = *&a1[*(v19 + 24)];
  v21 = *(v20 + 16);
  if (!v21)
  {
    v79 = _swiftEmptyArrayStorage;
LABEL_22:
    v54 = *a1;
    v55 = v19;
    result = sub_100D11DC8(&a1[*(v19 + 20)], &a4[*(v19 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
    *a4 = v54;
    *&a4[*(v55 + 24)] = v79;
    return result;
  }

  v56 = v19;
  v57 = a1;
  v58 = a4;
  v86 = _swiftEmptyArrayStorage;
  result = sub_101123DD0(0, v21, 0);
  v66 = v20;
  if (*(v20 + 16))
  {
    v79 = v86;
    v23 = v66 + 32;
    v61 = (v16 + 56);
    v81 = (v16 + 48);
    v65 = type metadata accessor for PropertyListDecoder();
    v24 = 0;
    v60 = v21 - 1;
    v62 = v11;
    v59 = v18;
    v78 = (v16 + 8);
    while (1)
    {
      v84[0] = *v23;
      v26 = *(v23 + 32);
      v25 = *(v23 + 48);
      v27 = *(v23 + 16);
      v85 = *(v23 + 64);
      v84[2] = v26;
      v84[3] = v25;
      v84[1] = v27;
      swift_allocObject();
      sub_1003914F8(v84, v83);
      PropertyListDecoder.init()();
      sub_100D13BF8(&qword_10169C990, &type metadata accessor for EncryptedData, &protocol conformance descriptor for EncryptedData);
      v28 = v80;
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      if (v28)
      {
        v80 = v28;

        sub_100391554(v84);
      }

      v29 = EncryptedData.decrypt(key:)();
      v80 = 0;
      v75 = v30;
      v76 = v29;
      v77 = v24;
      v74 = *&v84[0];
      v31 = *v78;
      (*v78)(v18, v15);

      v32 = v82;
      (*v61)(v82, 1, 1, v15);
      v33 = v63;
      sub_1000D2A70(v32, v63, &qword_1016B9AE8, &unk_1013E35D0);
      v34 = *v81;
      v35 = (*v81)(v33, 1, v15);
      v71 = v31;
      if (v35 == 1)
      {
        sub_10000B3A8(v33, &qword_1016B9AE8, &unk_1013E35D0);
        v73 = 0;
        v72 = 0xF000000000000000;
      }

      else
      {
        v73 = EncryptedData.cipherText.getter();
        v72 = v36;
        v31(v33, v15);
      }

      v37 = v64;
      v38 = v82;
      v39 = v62;
      sub_1000D2A70(v82, v62, &qword_1016B9AE8, &unk_1013E35D0);
      v40 = v34(v39, 1, v15);
      v41 = v77;
      if (v40 == 1)
      {
        sub_10000B3A8(v39, &qword_1016B9AE8, &unk_1013E35D0);
        v70 = 0;
        v69 = 0xF000000000000000;
      }

      else
      {
        v42 = EncryptedData.initializationVector.getter();
        v38 = v82;
        v70 = v42;
        v69 = v43;
        v71(v39, v15);
      }

      sub_1000D2A70(v38, v37, &qword_1016B9AE8, &unk_1013E35D0);
      if (v34(v37, 1, v15) == 1)
      {
        sub_10000B3A8(v38, &qword_1016B9AE8, &unk_1013E35D0);
        sub_10000B3A8(v37, &qword_1016B9AE8, &unk_1013E35D0);
        v44 = 0;
        v45 = 0xF000000000000000;
      }

      else
      {
        v44 = EncryptedData.tag.getter();
        v45 = v46;
        sub_10000B3A8(v82, &qword_1016B9AE8, &unk_1013E35D0);
        v71(v37, v15);
      }

      result = sub_100391554(v84);
      v47 = v79;
      v86 = v79;
      v49 = v79[2];
      v48 = v79[3];
      if (v49 >= v48 >> 1)
      {
        result = sub_101123DD0((v48 > 1), v49 + 1, 1);
        v47 = v86;
      }

      v47[2] = v49 + 1;
      v79 = v47;
      v50 = &v47[9 * v49];
      v51 = v76;
      v50[4] = v74;
      v50[5] = v51;
      v52 = v73;
      v50[6] = v75;
      v50[7] = v52;
      v53 = v70;
      v50[8] = v72;
      v50[9] = v53;
      v50[10] = v69;
      v50[11] = v44;
      v50[12] = v45;
      if (v60 == v41)
      {
        break;
      }

      v23 += 72;
      v24 = v41 + 1;
      v18 = v59;
      if (v24 >= *(v66 + 16))
      {
        goto LABEL_23;
      }
    }

    a4 = v58;
    a1 = v57;
    v19 = v56;
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100CA1724@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v89 = a4;
  v90 = a3;
  v7 = type metadata accessor for P256.Signing.PublicKey();
  v85 = *(v7 - 8);
  v86 = v7;
  __chkstk_darwin(v7);
  v84 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for P256.Signing.PrivateKey();
  v82 = *(v9 - 8);
  v83 = v9;
  __chkstk_darwin(v9);
  v87 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for OwnerPeerTrust(0);
  __chkstk_darwin(v88);
  v91 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for UUID();
  v98 = *(v95 - 8);
  v12 = __chkstk_darwin(v95);
  v92 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v94 = &v76 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v76 - v17;
  __chkstk_darwin(v16);
  v20 = &v76 - v19;
  v21 = sub_1000BC4D4(&qword_1016B9AF8, &unk_1013E35F8);
  __chkstk_darwin(v21 - 8);
  v23 = &v76 - v22;
  v24 = type metadata accessor for KeyDropJoinToken(0);
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v93 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v76 - v28;
  v30 = *a2;
  v96 = a1;
  sub_1012BB600(sub_100D14930, v30, v23);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_10000B3A8(v23, &qword_1016B9AF8, &unk_1013E35F8);
    sub_1001BAEE0();
    swift_allocError();
    *v31 = 13;
    return swift_willThrow();
  }

  else
  {
    sub_100D12974(v23, v29, type metadata accessor for KeyDropJoinToken);
    sub_100C710B4(v29);
    if (v4)
    {
      return sub_100018D00(v29, type metadata accessor for KeyDropJoinToken);
    }

    else
    {
      v80 = v29;
      v81 = v20;
      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_1000076D4(v33, qword_10177AE28);
      v34 = *(v98 + 16);
      v35 = v95;
      v34(v18, v81, v95);
      v36 = v91;
      sub_100D11DC8(a1, v91, type metadata accessor for OwnerPeerTrust);
      v34(v94, v90, v35);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v78 = v38;
        v40 = v39;
        v79 = swift_slowAlloc();
        v97[0] = v79;
        *v40 = 141559043;
        *(v40 + 4) = 1752392040;
        *(v40 + 12) = 2081;
        v76 = sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v77 = v37;
        v41 = v95;
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v44 = v43;
        v90 = *(v98 + 8);
        v90(v18, v41);
        v45 = sub_1000136BC(v42, v44, v97);

        *(v40 + 14) = v45;
        *(v40 + 22) = 2080;
        v46 = (v36 + *(v88 + 32));
        v47 = *v46;
        v48 = v46[1];

        sub_100018D00(v36, type metadata accessor for OwnerPeerTrust);
        v49 = sub_1000136BC(v47, v48, v97);

        *(v40 + 24) = v49;
        *(v40 + 32) = 2160;
        *(v40 + 34) = 1752392040;
        *(v40 + 42) = 2081;
        v50 = v94;
        v51 = dispatch thunk of CustomStringConvertible.description.getter();
        v53 = v52;
        v90(v50, v41);
        v54 = sub_1000136BC(v51, v53, v97);

        *(v40 + 44) = v54;
        v55 = v77;
        _os_log_impl(&_mh_execute_header, v77, v78, "New Member Created: memberId: %{private,mask.hash}s,\ndisplayIdentifier: %s for\nownerSharingCircleIdentifier: %{private,mask.hash}s.", v40, 0x34u);
        swift_arrayDestroy();

        v56 = v41;
        v57 = v98;
      }

      else
      {

        v58 = v98;
        v59 = *(v98 + 8);
        v90 = v59;
        v56 = v95;
        v59(v94, v95);
        sub_100018D00(v36, type metadata accessor for OwnerPeerTrust);
        v59(v18, v56);
        v57 = v58;
      }

      v60 = v80;
      v61 = v93;
      sub_100D11DC8(v80, v93, type metadata accessor for KeyDropJoinToken);
      type metadata accessor for SharingCircleKeyManager();
      v62 = v92;
      sub_100C710B4(v61);
      v63 = v89;
      (*(v57 + 32))(v89, v62, v56);
      v64 = type metadata accessor for KeyDropCreateRequest.Member(0);
      *(v63 + v64[5]) = 0;
      v65 = (v61 + *(v24 + 20));
      v66 = v65[1];
      v97[0] = *v65;
      v97[1] = v66;
      sub_100017D5C(v97[0], v66);
      v67 = v87;
      P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
      v68 = v90;
      v69 = v84;
      P256.Signing.PrivateKey.publicKey.getter();
      (*(v82 + 8))(v67, v83);
      v70 = P256.Signing.PublicKey.compactRepresentation.getter();
      v72 = v71;
      (*(v85 + 8))(v69, v86);
      if (v72 >> 60 == 15)
      {
        sub_1001BAEE0();
        swift_allocError();
        *v73 = 18;
        swift_willThrow();
        sub_100018D00(v93, type metadata accessor for KeyDropJoinToken);
        v68(v81, v56);
        sub_100018D00(v60, type metadata accessor for KeyDropJoinToken);
        return (v90)(v89, v56);
      }

      else
      {
        sub_100018D00(v93, type metadata accessor for KeyDropJoinToken);
        v68(v81, v56);
        result = sub_100018D00(v60, type metadata accessor for KeyDropJoinToken);
        v74 = v89;
        v75 = (v89 + v64[6]);
        *v75 = v70;
        v75[1] = v72;
        *(v74 + v64[7]) = xmmword_10138C660;
      }
    }
  }

  return result;
}

uint64_t sub_100CA2188@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X8>)
{
  v95 = a4;
  v96 = a3;
  v7 = type metadata accessor for P256.Signing.PublicKey();
  v92 = *(v7 - 8);
  v93 = v7;
  __chkstk_darwin(v7);
  v91 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for P256.Signing.PrivateKey();
  v89 = *(v9 - 8);
  v90 = v9;
  __chkstk_darwin(v9);
  v94 = v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for OwnerPeerTrust(0);
  __chkstk_darwin(v101);
  v100 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for UUID();
  v105 = *(v102 - 8);
  v12 = __chkstk_darwin(v102);
  v97 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v99 = v82 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = v82 - v17;
  __chkstk_darwin(v16);
  v20 = v82 - v19;
  v21 = sub_1000BC4D4(&qword_1016B9AF8, &unk_1013E35F8);
  __chkstk_darwin(v21 - 8);
  v23 = v82 - v22;
  v24 = type metadata accessor for KeyDropJoinToken(0);
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v98 = v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v82 - v28;
  v30 = a2[4];
  v103 = a1;
  sub_1012BB600(sub_100D14930, v30, v23);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_10000B3A8(v23, &qword_1016B9AF8, &unk_1013E35F8);
    sub_1001BAEE0();
    swift_allocError();
    *v31 = 13;
    return swift_willThrow();
  }

  else
  {
    sub_100D12974(v23, v29, type metadata accessor for KeyDropJoinToken);
    sub_100C710B4(v29);
    if (v4)
    {
      return sub_100018D00(v29, type metadata accessor for KeyDropJoinToken);
    }

    else
    {
      v86 = sub_100D12680(*(a1 + *(v101 + 32)), *(a1 + *(v101 + 32) + 8), a2);
      v85 = v33;
      v87 = v29;
      v88 = v20;
      v34 = v105;
      if (qword_101694DF8 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_1000076D4(v35, qword_10177BF08);
      v36 = *(v34 + 16);
      v37 = v102;
      v36(v18, v88, v102);
      sub_100D11DC8(a1, v100, type metadata accessor for OwnerPeerTrust);
      v38 = v99;
      v36(v99, v96, v37);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      v96 = v39;
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v104[0] = v84;
        *v41 = 141559043;
        *(v41 + 4) = 1752392040;
        *(v41 + 12) = 2081;
        v82[1] = sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v83 = v40;
        v42 = v102;
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        v46 = *(v105 + 8);
        v82[0] = v105 + 8;
        v47 = v18;
        v48 = v42;
        v46(v47, v42);
        v49 = sub_1000136BC(v43, v45, v104);

        *(v41 + 14) = v49;
        *(v41 + 22) = 2080;
        v50 = v100;
        v51 = (v100 + *(v101 + 32));
        v52 = *v51;
        v53 = v51[1];

        sub_100018D00(v50, type metadata accessor for OwnerPeerTrust);
        v54 = sub_1000136BC(v52, v53, v104);
        v55 = v96;
        v56 = v54;

        *(v41 + 24) = v56;
        *(v41 + 32) = 2160;
        *(v41 + 34) = 1752392040;
        *(v41 + 42) = 2081;
        v57 = v99;
        v58 = v48;
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v60;
        v46(v57, v58);
        v62 = sub_1000136BC(v59, v61, v104);

        *(v41 + 44) = v62;
        _os_log_impl(&_mh_execute_header, v55, v83, "New Member Created: memberId: %{private,mask.hash}s,\ndisplayIdentifier: %s for\nownerSharingCircleIdentifier: %{private,mask.hash}s.", v41, 0x34u);
        swift_arrayDestroy();

        v63 = v46;

        v64 = v105;
      }

      else
      {

        v64 = v105;
        v63 = *(v105 + 8);
        v58 = v102;
        v63(v38, v102);
        sub_100018D00(v100, type metadata accessor for OwnerPeerTrust);
        v63(v18, v58);
      }

      v65 = v98;
      sub_100D11DC8(v87, v98, type metadata accessor for KeyDropJoinToken);
      type metadata accessor for SharingCircleKeyManager();
      v66 = v97;
      sub_100C710B4(v65);
      v67 = v95;
      (*(v64 + 32))(v95, v66, v58);
      v68 = type metadata accessor for KeyDropCreateRequest.Member(0);
      *(v67 + v68[5]) = 0;
      v69 = (v65 + *(v24 + 20));
      v70 = v69[1];
      v104[0] = *v69;
      v104[1] = v70;
      sub_100017D5C(v104[0], v70);
      v71 = v94;
      P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
      v101 = v63;
      v72 = v85;
      v73 = v91;
      P256.Signing.PrivateKey.publicKey.getter();
      (*(v89 + 8))(v71, v90);
      v74 = P256.Signing.PublicKey.compactRepresentation.getter();
      v76 = v75;
      (*(v92 + 8))(v73, v93);
      if (v76 >> 60 == 15)
      {
        sub_1001BAEE0();
        swift_allocError();
        *v77 = 18;
        swift_willThrow();
        sub_100016590(v86, v72);
        sub_100018D00(v65, type metadata accessor for KeyDropJoinToken);
        v78 = v101;
        (v101)(v88, v58);
        sub_100018D00(v87, type metadata accessor for KeyDropJoinToken);
        return v78(v95, v58);
      }

      else
      {
        sub_100018D00(v65, type metadata accessor for KeyDropJoinToken);
        (v101)(v88, v58);
        result = sub_100018D00(v87, type metadata accessor for KeyDropJoinToken);
        v79 = v95;
        v80 = (v95 + v68[6]);
        *v80 = v74;
        v80[1] = v76;
        v81 = (v79 + v68[7]);
        *v81 = v86;
        v81[1] = v72;
      }
    }
  }

  return result;
}

uint64_t sub_100CA2C80(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = type metadata accessor for P256.Signing.PublicKey();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v5 = type metadata accessor for P256.Signing.PrivateKey();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = type metadata accessor for KeyDropCreateRequest.Member(0);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v7 = type metadata accessor for KeyDropJoinToken(0);
  v3[32] = v7;
  v3[33] = *(v7 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  type metadata accessor for SharingCircleKeyManager.DelegatedKeychain(0);
  v3[42] = swift_task_alloc();

  return _swift_task_switch(sub_100CA2F38, v2, 0);
}

uint64_t sub_100CA2F38()
{
  v1 = v0[15];
  v2 = type metadata accessor for OwnerSharingCircle(0);
  v3 = *(v2 + 20);
  if (*(v1 + *(v2 + 28)) == 3)
  {
    v4 = swift_task_alloc();
    v0[43] = v4;
    *v4 = v0;
    v4[1] = sub_100CA3074;
    v5 = v0[42];

    return sub_100C7B39C(v5, v1 + v3);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[45] = v7;
    *v7 = v0;
    v7[1] = sub_100CA37C8;

    return sub_100C7BA0C((v0 + 2), v1 + v3);
  }
}

uint64_t sub_100CA3074()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_100CA4064;
  }

  else
  {
    v4 = sub_100CA31A0;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_100CA31A0()
{
  v1 = v0[42];
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v0[33];
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        return;
      }

      sub_100D11DC8(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4, v0[39], type metadata accessor for KeyDropJoinToken);
      if (qword_101694560 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v0[25], qword_10177A900);
      if (static UUID.== infix(_:_:)())
      {
        break;
      }

      ++v4;
      sub_100018D00(v0[39], type metadata accessor for KeyDropJoinToken);
      if (v3 == v4)
      {
        v1 = v0[42];
        goto LABEL_11;
      }
    }

    v6 = v0[44];
    v7 = v0[40];
    v8 = v0[41];
    v9 = v0[38];
    sub_100D12974(v0[39], v7, type metadata accessor for KeyDropJoinToken);
    sub_100D12974(v7, v8, type metadata accessor for KeyDropJoinToken);
    sub_100D11DC8(v8, v9, type metadata accessor for KeyDropJoinToken);
    type metadata accessor for SharingCircleKeyManager();
    sub_100C710B4(v9);
    if (v6)
    {
      v11 = v0[41];
      v10 = v0[42];
      sub_100018D00(v0[38], type metadata accessor for KeyDropJoinToken);
      sub_100018D00(v11, type metadata accessor for KeyDropJoinToken);
      sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
      goto LABEL_12;
    }

    v14 = v0[38];
    v15 = v0[31];
    v16 = v0[32];
    v17 = v0[29];
    (*(v0[26] + 32))(v15, v0[28], v0[25]);
    *(v15 + *(v17 + 20)) = 1;
    v18 = (v14 + *(v16 + 20));
    v19 = *v18;
    v20 = v18[1];
    v0[12] = *v18;
    v0[13] = v20;
    sub_100017D5C(v19, v20);
    P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
    v21 = v0[24];
    v22 = v0[21];
    v23 = v0[22];
    v24 = v0[20];
    v25 = v0[17];
    v26 = v0[18];
    P256.Signing.PrivateKey.publicKey.getter();
    (*(v23 + 8))(v21, v22);
    v27 = P256.Signing.PublicKey.compactRepresentation.getter();
    v29 = v28;
    (*(v26 + 8))(v24, v25);
    v31 = v0[41];
    v30 = v0[42];
    v32 = v0[38];
    if (v29 >> 60 == 15)
    {
      sub_1001BAEE0();
      swift_allocError();
      *v33 = 18;
      swift_willThrow();
      sub_100018D00(v32, type metadata accessor for KeyDropJoinToken);
      sub_100018D00(v31, type metadata accessor for KeyDropJoinToken);
      sub_100018D00(v30, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
      (*(v0[26] + 8))(v0[31], v0[25]);
      goto LABEL_12;
    }

    sub_100018D00(v0[38], type metadata accessor for KeyDropJoinToken);
    sub_100018D00(v31, type metadata accessor for KeyDropJoinToken);
    sub_100018D00(v30, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
    v34 = v0[31];
    v35 = v0[29];
    v36 = v0[14];
    v37 = (v34 + *(v35 + 24));
    *v37 = v27;
    v37[1] = v29;
    *(v34 + *(v35 + 28)) = xmmword_10138C660;
    sub_100D12974(v34, v36, type metadata accessor for KeyDropCreateRequest.Member);

    v13 = v0[1];
  }

  else
  {
LABEL_11:
    sub_1001BAEE0();
    swift_allocError();
    *v12 = 13;
    swift_willThrow();
    sub_100018D00(v1, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
LABEL_12:

    v13 = v0[1];
  }

  v13();
}

uint64_t sub_100CA37C8()
{
  v2 = *v1;
  v2[46] = v0;

  if (v0)
  {

    v3 = v2[1];

    return v3();
  }

  else
  {
    v5 = v2[16];

    return _swift_task_switch(sub_100CA39E4, v5, 0);
  }
}

uint64_t sub_100CA39E4()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_8:
    sub_1001BAEE0();
    swift_allocError();
    *v5 = 13;
    swift_willThrow();
    sub_1001BAF34((v0 + 2));
LABEL_14:

    v33 = v0[1];
    goto LABEL_15;
  }

  v3 = 0;
  v4 = v0[33];
  while (1)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_100D11DC8(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, v0[35], type metadata accessor for KeyDropJoinToken);
    if (qword_101694560 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v0[25], qword_10177A900);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    ++v3;
    sub_100018D00(v0[35], type metadata accessor for KeyDropJoinToken);
    if (v2 == v3)
    {
      goto LABEL_8;
    }
  }

  v6 = v0[36];
  v7 = v0[37];
  sub_100D12974(v0[35], v6, type metadata accessor for KeyDropJoinToken);
  sub_100D12974(v6, v7, type metadata accessor for KeyDropJoinToken);
  if (qword_101694558 == -1)
  {
    goto LABEL_10;
  }

LABEL_20:
  swift_once();
LABEL_10:
  v8 = v0[46];
  v10 = sub_100D12680(qword_10177A8F0, qword_10177A8F8, v0 + 2);
  v11 = v0[37];
  if (v8)
  {
    sub_100018D00(v11, type metadata accessor for KeyDropJoinToken);
    sub_1001BAF34((v0 + 2));
    goto LABEL_14;
  }

  v12 = v9;
  v13 = v0[34];
  sub_100D11DC8(v11, v13, type metadata accessor for KeyDropJoinToken);
  type metadata accessor for SharingCircleKeyManager();
  sub_100C710B4(v13);
  v14 = v0[34];
  v15 = v0[32];
  v16 = v0[29];
  v17 = v0[30];
  (*(v0[26] + 32))(v17, v0[27], v0[25]);
  *(v17 + *(v16 + 20)) = 1;
  v18 = (v14 + *(v15 + 20));
  v19 = *v18;
  v20 = v18[1];
  v0[10] = *v18;
  v0[11] = v20;
  sub_100017D5C(v19, v20);
  P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
  v22 = v0[22];
  v21 = v0[23];
  v23 = v0[21];
  v25 = v0[18];
  v24 = v0[19];
  v26 = v0[17];
  P256.Signing.PrivateKey.publicKey.getter();
  (*(v22 + 8))(v21, v23);
  v27 = P256.Signing.PublicKey.compactRepresentation.getter();
  v29 = v28;
  (*(v25 + 8))(v24, v26);
  v30 = v0[37];
  v31 = v0[34];
  if (v29 >> 60 == 15)
  {
    sub_1001BAEE0();
    swift_allocError();
    *v32 = 18;
    swift_willThrow();
    sub_100016590(v10, v12);
    sub_1001BAF34((v0 + 2));
    sub_100018D00(v31, type metadata accessor for KeyDropJoinToken);
    sub_100018D00(v30, type metadata accessor for KeyDropJoinToken);
    (*(v0[26] + 8))(v0[30], v0[25]);
    goto LABEL_14;
  }

  sub_1001BAF34((v0 + 2));
  sub_100018D00(v31, type metadata accessor for KeyDropJoinToken);
  sub_100018D00(v30, type metadata accessor for KeyDropJoinToken);
  v35 = v0[30];
  v36 = v0[29];
  v37 = v0[14];
  v38 = (v35 + *(v36 + 24));
  *v38 = v27;
  v38[1] = v29;
  v39 = (v35 + *(v36 + 28));
  *v39 = v10;
  v39[1] = v12;
  sub_100D12974(v35, v37, type metadata accessor for KeyDropCreateRequest.Member);

  v33 = v0[1];
LABEL_15:

  return v33();
}

uint64_t sub_100CA4064()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CA41A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = v4;
  *(v5 + 129) = a3;
  *(v5 + 136) = a1;
  *(v5 + 144) = a2;
  v7 = type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData(0);
  *(v5 + 168) = v7;
  *(v5 + 176) = *(v7 - 8);
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = type metadata accessor for KeyDropShareMetaDataResponse(0);
  *(v5 + 224) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v5 + 232) = v8;
  *(v5 + 240) = *(v8 - 8);
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = *(type metadata accessor for KeyDropJoinToken(0) - 8);
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v5 + 312) = v9;
  *v9 = v5;
  v9[1] = sub_100CA43F0;

  return sub_100C7BA0C(v5 + 16, a2);
}

uint64_t sub_100CA43F0()
{
  v2 = *v1;
  v2[40] = v0;

  if (v0)
  {

    v3 = v2[1];

    return v3();
  }

  else
  {
    v5 = v2[20];

    return _swift_task_switch(sub_100CA45D4, v5, 0);
  }
}

uint64_t sub_100CA45D4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[6];
  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_8:
    sub_1001BAEE0();
    swift_allocError();
    *v8 = 13;
    swift_willThrow();
LABEL_11:
    sub_1001BAF34((v3 + 2));

    v12 = v3[1];

    return v12();
  }

  v6 = 0;
  v7 = v3[34];
  while (1)
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
      return _swift_task_switch(a1, a2, a3);
    }

    sub_100D11DC8(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6, v3[36], type metadata accessor for KeyDropJoinToken);
    if (qword_101694560 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v3[29], qword_10177A900);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    ++v6;
    a1 = sub_100018D00(v3[36], type metadata accessor for KeyDropJoinToken);
    if (v5 == v6)
    {
      goto LABEL_8;
    }
  }

  v9 = v3[40];
  v10 = v3[37];
  v11 = v3[38];
  sub_100D12974(v3[36], v10, type metadata accessor for KeyDropJoinToken);
  sub_100D12974(v10, v11, type metadata accessor for KeyDropJoinToken);
  type metadata accessor for SharingCircleKeyManager();
  sub_100C710B4(v11);
  v3[41] = v9;
  if (v9)
  {
    sub_100018D00(v3[38], type metadata accessor for KeyDropJoinToken);
    goto LABEL_11;
  }

  v14 = v3[19];
  v15 = *(v3[20] + 112);
  v3[42] = v15;
  v16 = *(v14 + 16);
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = sub_1003A8688(*(v14 + 16), 0);
  v18 = sub_1003CC2D4();

  sub_1000128F8(v19);
  if (v18 != v16)
  {
    __break(1u);
LABEL_17:
    v17 = _swiftEmptyArrayStorage;
  }

  v3[43] = v17;
  a1 = sub_100CA492C;
  a2 = v15;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100CA492C()
{
  v31 = v0;
  v28 = *(v0 + 344);
  v29 = *(v0 + 328);
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 248);
  v6 = *(v0 + 232);
  v7 = *(*(v0 + 240) + 16);
  v8 = *(v0 + 129);
  v7(v4, *(v0 + 144), v6);
  v7(v5, v3, v6);
  sub_100D11DC8(v1, v2, type metadata accessor for KeyDropJoinToken);
  v9 = sub_10105E4EC(v4, v5, v8, v28, v2);
  *(v0 + 352) = v9;
  *(v0 + 360) = v10;
  *(v0 + 368) = v11;
  if (v29)
  {
    *(v0 + 400) = v29;
    v12 = *(v0 + 160);

    return _swift_task_switch(sub_100CA54C4, v12, 0);
  }

  else
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
    if (qword_1016954C0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    *(v0 + 376) = v16;
    sub_1000076D4(v16, qword_10177CDD0);

    sub_100017D5C(v14, v15);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    sub_100016590(v14, v15);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30 = v20;
      *v19 = 136315138;
      v21 = sub_100646BE8();
      if (v22)
      {
        v23 = v22;
      }

      else
      {
        v21 = 7104878;
        v23 = 0xE300000000000000;
      }

      v24 = sub_1000136BC(v21, v23, &v30);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "KeyDropShareMetaDataRequest: %s", v19, 0xCu);
      sub_100007BAC(v20);
    }

    *(v0 + 104) = &type metadata for KeyDropShareMetaDataRequest;
    *(v0 + 112) = sub_100D12D5C();
    *(v0 + 80) = v13;
    *(v0 + 88) = v14;
    *(v0 + 96) = v15;

    sub_100017D5C(v14, v15);
    v25 = swift_task_alloc();
    *(v0 + 384) = v25;
    *v25 = v0;
    v25[1] = sub_100CA4C7C;
    v26 = *(v0 + 136);

    return sub_10103A520(v26, v0 + 80, 1);
  }
}

uint64_t sub_100CA4C7C()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = *(v2 + 336);
    v4 = sub_100CA543C;
  }

  else
  {
    v5 = *(v2 + 336);
    sub_100007BAC((v2 + 80));
    v4 = sub_100CA4DA4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100CA4DA4()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[20];

  sub_100016590(v1, v2);

  return _swift_task_switch(sub_100CA4E28, v3, 0);
}

uint64_t sub_100CA4E28()
{
  v54 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = *(v0 + 136);
  sub_1000076D4(*(v0 + 376), qword_10177BF08);
  sub_100D11DC8(v2, v1, type metadata accessor for KeyDropShareMetaDataResponse);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 224);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v53 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    sub_100018D00(v5, type metadata accessor for KeyDropShareMetaDataResponse);
    v11 = sub_1000136BC(v8, v10, &v53);

    *(v6 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Got existing metadata info for %{private,mask.hash}s", v6, 0x16u);
    sub_100007BAC(v7);
  }

  else
  {
    v12 = *(v0 + 224);

    sub_100018D00(v12, type metadata accessor for KeyDropShareMetaDataResponse);
  }

  v13 = *(*(v0 + 136) + *(*(v0 + 216) + 24));
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = *(v0 + 176);
    v50 = *(v0 + 168);
    v16 = v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v17 = *(v15 + 72);
    v49 = v17;
    do
    {
      v34 = *(v0 + 200);
      v36 = *(v0 + 184);
      v35 = *(v0 + 192);
      sub_100D11DC8(v16, *(v0 + 208), type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
      sub_100D11DC8(v16, v34, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
      sub_100D11DC8(v16, v35, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
      sub_100D11DC8(v16, v36, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      v39 = os_log_type_enabled(v37, v38);
      v41 = *(v0 + 200);
      v40 = *(v0 + 208);
      v42 = *(v0 + 192);
      if (v39)
      {
        v51 = *(v0 + 184);
        log = v37;
        v18 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v18 = 136446978;
        v19 = sub_10125403C(*v40);
        v21 = v20;
        sub_100018D00(v40, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
        v22 = sub_1000136BC(v19, v21, &v53);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2082;
        v23 = sub_1012545E4();
        v25 = v24;
        sub_100018D00(v41, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
        v26 = sub_1000136BC(v23, v25, &v53);

        *(v18 + 14) = v26;
        *(v18 + 22) = 2082;
        v27 = v42 + *(v50 + 24);
        v28 = *v27;
        LOBYTE(v27) = *(v27 + 8);
        *(v0 + 120) = v28;
        *(v0 + 128) = v27;
        sub_1000BC4D4(&unk_1016A40E8, &qword_1013AFA40);
        v29 = String.init<A>(describing:)();
        v31 = v30;
        sub_100018D00(v42, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
        v32 = sub_1000136BC(v29, v31, &v53);

        *(v18 + 24) = v32;
        *(v18 + 32) = 2050;
        v17 = v49;
        v33 = *(v51 + *(v50 + 28));
        sub_100018D00(v51, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
        *(v18 + 34) = v33;
        _os_log_impl(&_mh_execute_header, log, v38, "Package of %{public}s type,\nalignment: %{public}s,\nrange: %{public}s...%{public}lld", v18, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {
        sub_100018D00(*(v0 + 184), type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);

        sub_100018D00(v42, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
        sub_100018D00(v41, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
        sub_100018D00(v40, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
      }

      v16 += v17;
      --v14;
    }

    while (v14);
  }

  v43 = *(v0 + 304);
  v44 = *(v0 + 264);
  v45 = *(v0 + 240);
  v46 = *(v0 + 232);
  sub_1001BAF34(v0 + 16);
  (*(v45 + 8))(v44, v46);
  sub_100018D00(v43, type metadata accessor for KeyDropJoinToken);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_100CA543C()
{
  v1 = v0[45];
  v2 = v0[46];

  sub_100016590(v1, v2);
  sub_100007BAC(v0 + 10);
  v0[50] = v0[49];
  v3 = v0[20];

  return _swift_task_switch(sub_100CA54C4, v3, 0);
}

uint64_t sub_100CA54C4()
{
  v1 = v0[38];
  v2 = v0[33];
  v3 = v0[29];
  v4 = v0[30];
  sub_1001BAF34((v0 + 2));
  (*(v4 + 8))(v2, v3);
  sub_100018D00(v1, type metadata accessor for KeyDropJoinToken);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100CA560C(uint64_t a1, uint64_t a2)
{
  v3[10] = a1;
  v3[11] = v2;
  v3[12] = *v2;
  v5 = type metadata accessor for UUID();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v6 = type metadata accessor for KeyDropShareMetaDataResponse.Member(0);
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = *(type metadata accessor for KeyDropJoinToken(0) - 8);
  v3[22] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[23] = v7;
  *v7 = v3;
  v7[1] = sub_100CA5804;

  return sub_100C7BA0C((v3 + 2), a2);
}

uint64_t sub_100CA5804()
{
  v2 = *v1;
  v2[24] = v0;

  if (v0)
  {

    v3 = v2[1];

    return v3();
  }

  else
  {
    v5 = v2[11];

    return _swift_task_switch(sub_100CA5984, v5, 0);
  }
}

unint64_t sub_100CA5984()
{
  v59 = v0;
  v1 = v0[6];
  v2 = _swiftEmptyDictionarySingleton;
  v58[0] = _swiftEmptyDictionarySingleton;
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v0[24];
  v5 = v0[21];
  v6 = v0[22];
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = *(v5 + 72);
  sub_100D11DC8(v1 + v7, v6, type metadata accessor for KeyDropJoinToken);
  sub_100CA5F0C(v58, v6);
  if (v4)
  {
    v9 = v0[22];

    sub_100018D00(v9, type metadata accessor for KeyDropJoinToken);
  }

  result = sub_100018D00(v0[22], type metadata accessor for KeyDropJoinToken);
  if (v3 == 1)
  {
LABEL_10:
    v2 = v58[0];
LABEL_11:
    v14 = v0[10];
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v0[19];
      v55 = v0[18];
      v17 = v14 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
      v18 = *(v16 + 72);
      v53 = v0[20] + 8;
      v54 = v0[14];
      v51 = (v54 + 8);
      v19 = _swiftEmptyDictionarySingleton;
      v49 = v18;
      v50 = v2;
      v52 = v0;
      while (1)
      {
        sub_100D11DC8(v17, v0[20], type metadata accessor for KeyDropShareMetaDataResponse.Member);
        if (v2[2] && (v20 = sub_1000210EC(v0[20]), (v21 & 1) != 0))
        {
          v23 = v0[16];
          v22 = v0[17];
          v57 = v0[15];
          v24 = v0[13];
          v25 = *(v54 + 72);
          v26 = *(v54 + 16);
          v26(v23, v2[7] + v25 * v20, v24);
          (*(v54 + 32))(v22, v23, v24);
          v56 = v26;
          v26(v57, v22, v24);
          v27 = *(v53 + *(v55 + 24)) >> 60 != 15;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v58[0] = v19;
          result = sub_1000210EC(v57);
          v30 = v19[2];
          v31 = (v29 & 1) == 0;
          v32 = __OFADD__(v30, v31);
          v33 = v30 + v31;
          if (v32)
          {
            __break(1u);
            goto LABEL_37;
          }

          v34 = v29;
          v35 = v25;
          if (v19[3] >= v33)
          {
            v0 = v52;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v47 = result;
              sub_1010062B8();
              result = v47;
              v19 = v58[0];
            }
          }

          else
          {
            v0 = v52;
            v36 = v52[15];
            sub_100FE88DC(v33, isUniquelyReferenced_nonNull_native);
            v19 = v58[0];
            result = sub_1000210EC(v36);
            if ((v34 & 1) != (v37 & 1))
            {

              return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            }
          }

          v38 = v0[17];
          v39 = v0[15];
          v40 = v0[13];
          if (v34)
          {
            *(v19[7] + result) = v27;
            v41 = *v51;
            (*v51)(v39, v40);
            v41(v38, v40);
          }

          else
          {
            v19[(result >> 6) + 8] |= 1 << result;
            v42 = v19[6] + result * v35;
            v43 = result;
            v56(v42, v39, v40);
            *(v19[7] + v43) = v27;
            v44 = *v51;
            (*v51)(v39, v40);
            result = (v44)(v38, v40);
            v45 = v19[2];
            v32 = __OFADD__(v45, 1);
            v46 = v45 + 1;
            if (v32)
            {
              goto LABEL_38;
            }

            v19[2] = v46;
          }

          sub_100018D00(v0[20], type metadata accessor for KeyDropShareMetaDataResponse.Member);
          v18 = v49;
          v2 = v50;
        }

        else
        {
          sub_100018D00(v0[20], type metadata accessor for KeyDropShareMetaDataResponse.Member);
        }

        v17 += v18;
        if (!--v15)
        {

          goto LABEL_30;
        }
      }
    }

    v19 = _swiftEmptyDictionarySingleton;
LABEL_30:
    sub_1001BAF34((v0 + 2));

    v48 = v0[1];

    return v48(v19);
  }

  v11 = v1 + v8 + v7;
  v12 = 1;
  while (v12 < *(v1 + 16))
  {
    v13 = v0[22];
    sub_100D11DC8(v11, v13, type metadata accessor for KeyDropJoinToken);
    sub_100CA5F0C(v58, v13);
    ++v12;
    result = sub_100018D00(v0[22], type metadata accessor for KeyDropJoinToken);
    v11 += v8;
    if (v3 == v12)
    {
      goto LABEL_10;
    }
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100CA5F0C(uint64_t a1, char *a2)
{
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v20 - v16;
  sub_100C710B4(a2);
  if (v2)
  {

    (*(v12 + 56))(v10, 1, 1, v11);
    return sub_10000B3A8(v10, &qword_1016980D0, &unk_10138F3B0);
  }

  else
  {
    v22 = 0;
    v21 = *(v12 + 56);
    v21(v10, 0, 1, v11);
    (*(v12 + 32))(v17, v10, v11);
    if (qword_101694560 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v11, qword_10177A900);
    sub_100D13BF8(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v20 = a1;
      v19 = *(v12 + 16);
      v19(v15, v17, v11);
      v19(v8, a2, v11);
      v21(v8, 0, 1, v11);
      sub_1001DDB40(v8, v15);
    }

    return (*(v12 + 8))(v17, v11);
  }
}

uint64_t sub_100CA6228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = type metadata accessor for BookmarkMetaData(0);
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016998B8, &unk_1013B6AD0);
  v4[31] = swift_task_alloc();
  v6 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  v4[32] = v6;
  v4[33] = *(v6 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v4[36] = swift_task_alloc();
  v4[37] = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v4[38] = swift_task_alloc();
  v7 = type metadata accessor for SharedBeaconRecord(0);
  v4[39] = v7;
  v4[40] = *(v7 - 8);
  v4[41] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[42] = v8;
  v9 = *(v8 - 8);
  v4[43] = v9;
  v4[44] = *(v9 + 64);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();

  return _swift_task_switch(sub_100CA6518, v3, 0);
}

uint64_t sub_100CA6518()
{
  v31 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[42];
  v4 = v0[43];
  v6 = v0[22];
  v5 = v0[23];
  v7 = type metadata accessor for Logger();
  v0[52] = sub_1000076D4(v7, qword_10177BF08);
  v8 = *(v4 + 16);
  v0[53] = v8;
  v0[54] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v5, v3);
  v8(v1, v6, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[50];
  v12 = v0[51];
  v15 = v0[42];
  v14 = v0[43];
  if (v11)
  {
    v29 = v10;
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v16 = 141558787;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_1000136BC(v17, v19, &v30);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2160;
    *(v16 + 24) = 1752392040;
    *(v16 + 32) = 2081;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_1000136BC(v22, v24, &v30);

    *(v16 + 34) = v25;
    _os_log_impl(&_mh_execute_header, v9, v29, "Downloaded key instructions for share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v16, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v27 = *(v0[25] + 120);
  v0[55] = v27;

  return _swift_task_switch(sub_100CA6838, v27, 0);
}

uint64_t sub_100CA6838()
{

  v1 = swift_task_alloc();
  *(v0 + 448) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_100CA6918;
  v3 = *(v0 + 440);

  return unsafeBlocking<A>(context:_:)(v0 + 144, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_100CA6918()
{
  v1 = *(*v0 + 440);

  return _swift_task_switch(sub_100CA6A30, v1, 0);
}