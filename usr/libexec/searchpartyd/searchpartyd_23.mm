uint64_t sub_1002A2CE4()
{
  v1 = *(v0 + 1264);
  v2 = *(v0 + 1232);
  v3 = *(v0 + 1088);
  v4 = *(v0 + 1000);
  v5 = (*(v0 + 1780) + 24) & ~*(v0 + 1780);
  (*(v0 + 1240))(v3, *(v0 + 1096), v4);
  v6 = swift_allocObject();
  *(v0 + 1432) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 1440) = v7;
  *v7 = v0;
  v7[1] = sub_1002A2E74;
  v8 = *(v0 + 872);
  v9 = *(v0 + 864);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC78, v6, v9);
}

uint64_t sub_1002A2E74()
{
  v1 = *(*v0 + 1288);
  v2 = *(*v0 + 1096);
  v3 = *(*v0 + 1000);
  v4 = *(*v0 + 752);

  v1(v2, v3);

  return _swift_task_switch(sub_1002A3040, v4, 0);
}

uint64_t sub_1002A3040()
{
  v142 = v1;
  v2 = *(v1 + 880);
  v3 = *(v1 + 872);
  if ((*(*(v1 + 888) + 48))(v3, 1, v2) != 1)
  {
    v138 = *(v1 + 1408);
    v134 = *(v1 + 1240);
    v7 = *(v1 + 1056);
    v8 = *(v1 + 1000);
    v9 = *(v1 + 920);
    v10 = *(v1 + 904);
    v11 = *(v1 + 896);
    sub_1002DB7C8(v3, v11, type metadata accessor for SharedBeaconRecord);
    v13 = *(v1 + 168);
    v12 = *(v1 + 176);
    sub_1000035D0((v1 + 144), v13);
    (*(*(*(v12 + 8) + 8) + 32))(v13);
    v134(v7, v9 + *(v10 + 28), v8);
    v14 = *(v2 + 64);
    v15 = *(v1 + 168);
    v16 = *(v1 + 176);
    v17 = *(v11 + v14);
    sub_1000035D0((v1 + 144), v15);
    v18 = (*(v16 + 88))(v15, v16);
    *(v1 + 1826) = sub_100890F1C(v17, v18 & 1);
    v19 = *(v1 + 1392);
    if (v138)
    {
      v20 = *(v1 + 1288);
      v21 = *(v1 + 1064);
      v22 = *(v1 + 1056);
      v23 = *(v1 + 1000);
      v24 = *(v1 + 920);
      v25 = *(v1 + 896);

      v20(v22, v23);
      v20(v21, v23);
      sub_1002DBBF0(v25, type metadata accessor for SharedBeaconRecord);
      sub_1002DBBF0(v24, type metadata accessor for MemberSharingCircle);

      v6 = *(v1 + 1424);
      if (qword_101694510 != -1)
      {
LABEL_115:
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_1000076D4(v26, qword_10177A818);
      sub_10001F280(v1 + 144, v1 + 184);
      swift_errorRetain();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v135 = *(v1 + 1288);
        v29 = *(v1 + 1096);
        v30 = *(v1 + 1000);
        v139 = v6;
        v31 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        *v31 = 141558531;
        *(v31 + 4) = 1752392040;
        *(v31 + 12) = 2081;
        v33 = *(v1 + 208);
        v32 = *(v1 + 216);
        sub_1000035D0((v1 + 184), v33);
        (*(*(*(v32 + 8) + 8) + 32))(v33);
        sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v34 = dispatch thunk of CustomStringConvertible.description.getter();
        v36 = v35;
        v135(v29, v30);
        sub_100007BAC((v1 + 184));
        v37 = sub_1000136BC(v34, v36, &v141);

        *(v31 + 14) = v37;
        *(v31 + 22) = 2080;
        swift_getErrorValue();
        v38 = Error.localizedDescription.getter();
        v40 = sub_1000136BC(v38, v39, &v141);

        *(v31 + 24) = v40;
        _os_log_impl(&_mh_execute_header, v27, v28, "Could not create fetch item for shared beacon %{private,mask.hash}s, error: %s.", v31, 0x20u);
        swift_arrayDestroy();

        v6 = v139;
      }

      else
      {

        sub_100007BAC((v1 + 184));
      }

      v5 = 0;
      goto LABEL_80;
    }

    v46 = *(v1 + 1152);
    v47 = *(v1 + 1104);
    sub_1000D2A70(*(v1 + 1160), v46, &qword_10169C9C8, &qword_101398A58);
    v132 = *(v46 + *(v47 + 48));
    v48 = *(v19 + 16);
    v6 = _swiftEmptyArrayStorage;
    if (!v48)
    {
LABEL_86:
      *(v1 + 1448) = v6;
      v98 = *(v1 + 1144);
      v99 = *(v1 + 1136);
      v100 = *(v1 + 1104);
      (*(v1 + 1184))(v98, *(v1 + 1152), *(v1 + 1168));
      *(v98 + *(v100 + 48)) = v132;
      sub_1000D2A70(v98, v99, &qword_10169C9C8, &qword_101398A58);
      v101 = *(v99 + *(v100 + 48));
      v102 = swift_task_alloc();
      *(v1 + 1456) = v102;
      *v102 = v1;
      v102[1] = sub_1002A41A0;
      v103 = *(v1 + 1136);
      v104 = *(v1 + 1064);
      v105 = *(v1 + 1056);

      return sub_1002AB558(v104, v105, v103, v101);
    }

    v131 = (v1 + 648);
    v49 = *(v1 + 1392);
    v50 = *(v1 + 936);
    *(v1 + 640) = _swiftEmptyArrayStorage;
    v133 = (v1 + 640);
    sub_101123B10(v48);
    v51 = 0;
    v136 = v48;
    v137 = v49 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    while (1)
    {
      if (v51 >= *(*(v1 + 1392) + 16))
      {
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v52 = *(v1 + 976);
      sub_1002DB760(v137 + *(*(v1 + 936) + 72) * v51, v52, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
      v3 = *v52;
      v0 = v52[1];
      v53 = v0 >> 62;
      if ((v0 >> 62) > 1)
      {
        if (v53 != 2)
        {
          v55 = 0;
          v6 = 0;
          v56 = 0;
          v54 = 0;
          goto LABEL_24;
        }

        v6 = *(v3 + 16);
        v55 = *(v3 + 24);
      }

      else
      {
        if (!v53)
        {
          v6 = 0;
          v54 = 0;
          v55 = BYTE6(v0);
          v56 = BYTE6(v0);
          goto LABEL_24;
        }

        v6 = v3;
        v55 = v3 >> 32;
      }

      sub_100017D5C(v3, v0);
      if (v55 < v6)
      {
        goto LABEL_111;
      }

      if (v53 == 2)
      {
        v54 = *(v3 + 16);
        v56 = *(v3 + 24);
      }

      else
      {
        v54 = v3;
        v56 = v3 >> 32;
      }

LABEL_24:
      if (v56 < v55 || v55 < v54)
      {
        goto LABEL_112;
      }

      if (__OFSUB__(v55, v6))
      {
        goto LABEL_113;
      }

      if ((v55 - v6) < 0x39)
      {
        if (v53 <= 1)
        {
          if (!v53)
          {
            goto LABEL_51;
          }

          v57 = v3 >> 32;
LABEL_47:
          v60 = v3;
          goto LABEL_50;
        }

        if (v53 != 2)
        {
          goto LABEL_51;
        }

        v57 = *(v3 + 24);
LABEL_49:
        v60 = *(v3 + 16);
        goto LABEL_50;
      }

      v57 = v6 + 57;
      if (__OFADD__(v6, 57))
      {
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      if (v53 > 1)
      {
        if (v53 == 2)
        {
          v58 = *(v3 + 16);
          v59 = *(v3 + 24);
        }

        else
        {
          v59 = 0;
          v58 = 0;
        }
      }

      else if (v53)
      {
        v58 = v3;
        v59 = v3 >> 32;
      }

      else
      {
        v58 = 0;
        v59 = BYTE6(v0);
      }

      if (v59 < v57 || v57 < v58)
      {
        goto LABEL_117;
      }

      v60 = 0;
      if (v53 <= 1)
      {
        if (!v53)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      }

      if (v53 != 3)
      {
        goto LABEL_49;
      }

LABEL_50:
      if (v57 < v60)
      {
        goto LABEL_114;
      }

LABEL_51:
      v61 = Data._Representation.subscript.getter();
      v63 = v62;
      sub_100016590(v3, v0);
      v64 = v63 >> 62;
      if ((v63 >> 62) > 1)
      {
        if (v64 != 2)
        {
          goto LABEL_89;
        }

        v67 = *(v61 + 16);
        v66 = *(v61 + 24);
        v68 = __OFSUB__(v66, v67);
        v65 = v66 - v67;
        if (v68)
        {
          goto LABEL_120;
        }
      }

      else if (v64)
      {
        LODWORD(v65) = HIDWORD(v61) - v61;
        if (__OFSUB__(HIDWORD(v61), v61))
        {
          goto LABEL_119;
        }

        v65 = v65;
      }

      else
      {
        v65 = BYTE6(v63);
      }

      if (v65 != 57)
      {
LABEL_89:
        sub_100016590(v61, v63);
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v69 = sub_100A7A194(v61, v63, 0, 0);
      v140 = v51;
      *(v1 + 672) = 57;
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v70 = __DataStorage.init(length:)();
      *(v1 + 472) = 0x3900000000;
      *(v1 + 480) = v70 | 0x4000000000000000;
      v71 = sub_100A7AF80((v1 + 472), 2, v1 + 672, 0, v69);
      if (v71)
      {
        v106 = static os_log_type_t.error.getter();
        if (qword_101694BE0 != -1)
        {
          swift_once();
        }

        v107 = *(v1 + 832);
        v108 = qword_10177BA00;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v109 = swift_allocObject();
        *(v109 + 16) = xmmword_101385D80;
        *(v109 + 56) = &type metadata for Int32;
        *(v109 + 64) = &protocol witness table for Int32;
        *(v109 + 32) = v71;
        os_log(_:dso:log:_:_:)(v106, &_mh_execute_header, v108, "Error running CCECCryptorExportKey. Code: %d.", v130);

        CryptoError.init(rawValue:)();
        v110 = type metadata accessor for CryptoError();
        sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
        v0 = swift_allocError();
        v112 = v111;
        v113 = *(v110 - 8);
        v114 = *(v113 + 48);
        v115 = v114(v107, 1, v110);
        v116 = *(v1 + 832);
        if (v115 == 1)
        {
          (*(v113 + 104))(v112, enum case for CryptoError.unspecifiedError(_:), v110);
          if (v114(v116, 1, v110) != 1)
          {
            sub_10000B3A8(*(v1 + 832), &qword_10169C9A0, &unk_1013D5A40);
          }
        }

        else
        {
          (*(v113 + 32))(v112, *(v1 + 832), v110);
        }

        swift_willThrow();
        sub_100016590(*(v1 + 472), *(v1 + 480));
        v3 = static os_log_type_t.error.getter();
        if (qword_101694BE0 == -1)
        {
          goto LABEL_101;
        }

        goto LABEL_123;
      }

      v72 = *(v1 + 472);
      v0 = *(v1 + 480);
      v73 = *(v1 + 672);
      sub_100017D5C(v72, v0);
      sub_10002EA98(v73, v72, v0, (v1 + 456));
      sub_100016590(v72, v0);
      v74 = *(v1 + 456);
      v3 = *(v1 + 464);
      CCECCryptorRelease();
      v75 = v3 >> 62;
      if ((v3 >> 62) > 1)
      {
        if (v75 != 2)
        {
          v117 = 0;
          goto LABEL_107;
        }

        v78 = *(v74 + 16);
        v77 = *(v74 + 24);
        v68 = __OFSUB__(v77, v78);
        v76 = v77 - v78;
        if (v68)
        {
          goto LABEL_121;
        }
      }

      else if (v75)
      {
        LODWORD(v76) = HIDWORD(v74) - v74;
        if (__OFSUB__(HIDWORD(v74), v74))
        {
          goto LABEL_122;
        }

        v76 = v76;
      }

      else
      {
        v76 = BYTE6(v3);
      }

      if (v76 != 28)
      {
        if (v75 == 2)
        {
          v126 = *(v74 + 16);
          v125 = *(v74 + 24);
          v117 = v125 - v126;
          if (__OFSUB__(v125, v126))
          {
            __break(1u);
            goto LABEL_106;
          }
        }

        else
        {
          if (v75 == 1)
          {
            if (__OFSUB__(HIDWORD(v74), v74))
            {
              __break(1u);
            }

            v117 = HIDWORD(v74) - v74;
            goto LABEL_107;
          }

LABEL_106:
          v117 = BYTE6(v3);
        }

LABEL_107:
        sub_100018350();
        v123 = swift_allocError();
        *v127 = 28;
        *(v127 + 8) = v117;
        *(v127 + 16) = 0;
        swift_willThrow();
        sub_100016590(v74, v3);
        goto LABEL_108;
      }

      v79 = *(v1 + 1776);
      v80 = *(v1 + 976);
      v81 = *(v1 + 808);
      v82 = *(v1 + 800);
      v83 = *(v1 + 792);
      sub_100016590(v61, v63);
      (*(v82 + 104))(v81, v79, v83);
      v84 = Data.hash(algorithm:)();
      v86 = v85;
      sub_100016590(v74, v3);
      (*(v82 + 8))(v81, v83);
      sub_1002DBBF0(v80, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
      v6 = *(v1 + 640);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1011247A4(0, *(v6 + 16) + 1, 1);
        v6 = *v133;
      }

      v88 = *(v6 + 16);
      v87 = *(v6 + 24);
      if (v88 >= v87 >> 1)
      {
        sub_1011247A4((v87 > 1), v88 + 1, 1);
        v6 = *v133;
      }

      v51 = v140 + 1;
      *(v6 + 16) = v88 + 1;
      v89 = (v6 + 16 * v88);
      v89[4] = v84;
      v89[5] = v86;
      if (v136 == v140 + 1)
      {
        goto LABEL_86;
      }
    }
  }

  sub_1002DBBF0(*(v1 + 920), type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v3, &unk_101698C30, &unk_101392630);
  v4 = *(v1 + 1416) + 1;
  if (v4 == *(v1 + 1312))
  {
    v5 = *(v1 + 1408);
    v6 = *(v1 + 1424);

    sub_10039845C(*(v1 + 1392));
LABEL_80:
    v90 = *(v1 + 1200);
    v91 = *(v1 + 1216) + 1;
    sub_100007BAC((v1 + 144));
    if (v91 == v90)
    {
      *(v1 + 1520) = v6;
      *(v1 + 1512) = 0;
      v42 = *(v1 + 1232);
      sub_10001F280(*(v1 + 744) + 32, v1 + 224);
      v92 = *(v1 + 248);
      v93 = *(v1 + 256);
      sub_1000035D0((v1 + 224), v92);
      (*(*(*(v93 + 8) + 8) + 32))(v92);
      v45 = sub_1002A571C;
    }

    else
    {
      v94 = *(v1 + 1216);
      *(v1 + 1224) = v6;
      *(v1 + 1216) = v94 + 1;
      *(v1 + 1208) = v5;
      v95 = *(v1 + 752);
      sub_10001F280(*(v1 + 744) + 40 * v94 + 72, v1 + 144);
      v42 = *(v95 + 136);
      *(v1 + 1232) = v42;
      v96 = *(v1 + 168);
      v97 = *(v1 + 176);
      sub_1000035D0((v1 + 144), v96);
      (*(*(*(v97 + 8) + 8) + 32))(v96);
      v45 = sub_1002A174C;
    }

LABEL_83:

    return _swift_task_switch(v45, v42, 0);
  }

  *(v1 + 1416) = v4;
  v41 = *(v1 + 1304);
  if (v4 < *(v41 + 16))
  {
    v42 = *(v1 + 1232);
    sub_1002DB760(v41 + ((*(v1 + 1784) + 32) & ~*(v1 + 1784)) + *(*(v1 + 912) + 72) * v4, *(v1 + 920), type metadata accessor for MemberSharingCircle);
    v43 = *(v1 + 168);
    v44 = *(v1 + 176);
    sub_1000035D0((v1 + 144), v43);
    (*(*(*(v44 + 8) + 8) + 32))(v43);
    v45 = sub_1002A2CE4;
    goto LABEL_83;
  }

LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  swift_once();
LABEL_101:
  v118 = qword_10177BA00;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_101385D80;
  *v131 = v0;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v120 = String.init<A>(describing:)();
  v122 = v121;
  *(v119 + 56) = &type metadata for String;
  *(v119 + 64) = sub_100008C00();
  *(v119 + 32) = v120;
  *(v119 + 40) = v122;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v118, "Error deriving advertisementKey: %@", 35, 2, v119);

  sub_1001BAF88();
  v123 = swift_allocError();
  *v124 = 0;
  swift_willThrow();

LABEL_108:
  _StringGuts.grow(_:)(35);
  *(v1 + 488) = 0;
  *(v1 + 496) = 0xE000000000000000;
  v128._countAndFlagsBits = 0xD000000000000021;
  v128._object = 0x800000010134CB30;
  String.append(_:)(v128);
  *(v1 + 664) = v123;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002A41A0(uint64_t a1)
{
  v3 = *v2;
  v3[183] = a1;
  v3[184] = v1;

  if (v1)
  {
    v4 = v3[94];
    v5 = sub_1002A47E8;
  }

  else
  {
    v6 = v3[147];
    v7 = v3[146];
    v8 = v3[142];
    v9 = v3[94];
    v10 = *(v6 + 8);
    v3[185] = v10;
    v3[186] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v8, v7);
    v5 = sub_1002A433C;
    v4 = v9;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002A433C()
{
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1240);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 1000);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A818);
  v1(v3, v2, v4);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1464);
  v10 = *(v0 + 1288);
  v11 = *(v0 + 1048);
  v12 = *(v0 + 1000);
  if (v8)
  {
    v47 = v7;
    log = v6;
    v13 = swift_slowAlloc();
    *(v0 + 696) = swift_slowAlloc();
    *v13 = 134218755;
    *(v13 + 4) = *(v9 + 16);

    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v10(v11, v12);
    v17 = sub_1000136BC(v14, v16, (v0 + 696));

    *(v13 + 24) = v17;
    buf = v13;
    *(v13 + 32) = 2082;
    v18 = *(v9 + 16);
    if (v18)
    {
      v19 = *(v0 + 1464);
      *(v0 + 704) = _swiftEmptyArrayStorage;
      sub_101123BB8(0, v18, 0);
      v20 = *(v0 + 704);
      v21 = (v19 + 64);
      do
      {
        v22 = *(v21 - 3);
        v23 = *(v21 - 1);
        v49 = *(v21 - 2);
        v24 = *v21;
        *(v0 + 720) = *(v21 - 4);
        sub_100017D5C(v23, v24);
        *(v0 + 440) = dispatch thunk of CustomStringConvertible.description.getter();
        *(v0 + 448) = v25;
        v26._countAndFlagsBits = 8250;
        v26._object = 0xE200000000000000;
        String.append(_:)(v26);
        *(v0 + 728) = v22;
        v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v27);

        v28._countAndFlagsBits = 45;
        v28._object = 0xE100000000000000;
        String.append(_:)(v28);
        *(v0 + 544) = v49;
        v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v29);

        sub_100016590(v23, v24);
        v30 = *(v0 + 440);
        v31 = *(v0 + 448);
        *(v0 + 704) = v20;
        v33 = *(v20 + 16);
        v32 = *(v20 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_101123BB8((v32 > 1), v33 + 1, 1);
          v20 = *(v0 + 704);
        }

        v21 += 5;
        *(v20 + 16) = v33 + 1;
        v34 = v20 + 16 * v33;
        *(v34 + 32) = v30;
        *(v34 + 40) = v31;
        --v18;
      }

      while (v18);
    }

    v35 = Array.description.getter();
    v37 = v36;

    v38 = sub_1000136BC(v35, v37, (v0 + 696));

    *(buf + 34) = v38;
    _os_log_impl(&_mh_execute_header, log, v47, "Found %ld ranges for circle: %{private,mask.hash}s.\nRanges: %{public}s)", buf, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v10(v11, v12);
  }

  v39 = swift_task_alloc();
  *(v0 + 1496) = v39;
  *v39 = v0;
  v39[1] = sub_1002A4CF4;
  v40 = *(v0 + 1464);
  v41 = *(v0 + 1448);
  v42 = *(v0 + 1056);
  v43 = *(v0 + 856);
  v44 = *(v0 + 1826);

  return sub_10029E154(v43, v40, v42, v44, v41);
}

uint64_t sub_1002A47E8()
{
  v43 = v0;
  v1 = v0[147];
  v2 = v0[146];
  v3 = v0[142];
  sub_10000B3A8(v0[143], &qword_10169C9C8, &qword_101398A58);
  v40 = *(v1 + 8);
  v40(v3, v2);
  v4 = v0[161];
  v37 = v0[144];
  v39 = v0[146];
  v5 = v0[133];
  v6 = v0[132];
  v7 = v0[125];
  v36 = v0[115];
  v8 = v0[112];

  v4(v6, v7);
  v4(v5, v7);

  sub_1002DBBF0(v8, type metadata accessor for SharedBeaconRecord);
  sub_1002DBBF0(v36, type metadata accessor for MemberSharingCircle);
  v40(v37, v39);
  v9 = v0[178];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177A818);
  sub_10001F280((v0 + 18), (v0 + 23));
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v38 = v0[161];
    v13 = v0[137];
    v14 = v0[125];
    v41 = v9;
    v15 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v15 = 141558531;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v16 = v0[26];
    v17 = v0[27];
    sub_1000035D0(v0 + 23, v16);
    (*(*(*(v17 + 8) + 8) + 32))(v16);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v38(v13, v14);
    sub_100007BAC(v0 + 23);
    v21 = sub_1000136BC(v18, v20, &v42);

    *(v15 + 14) = v21;
    *(v15 + 22) = 2080;
    swift_getErrorValue();
    v22 = Error.localizedDescription.getter();
    v24 = sub_1000136BC(v22, v23, &v42);

    *(v15 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v11, v12, "Could not create fetch item for shared beacon %{private,mask.hash}s, error: %s.", v15, 0x20u);
    swift_arrayDestroy();

    v9 = v41;
  }

  else
  {

    sub_100007BAC(v0 + 23);
  }

  v25 = v0[150];
  v26 = v0[152] + 1;
  sub_100007BAC(v0 + 18);
  if (v26 == v25)
  {
    v0[190] = v9;
    v0[189] = 0;
    v27 = v0[154];
    sub_10001F280(v0[93] + 32, (v0 + 28));
    v28 = v0[31];
    v29 = v0[32];
    sub_1000035D0(v0 + 28, v28);
    (*(*(*(v29 + 8) + 8) + 32))(v28);
    v30 = sub_1002A571C;
  }

  else
  {
    v31 = v0[152];
    v0[153] = v9;
    v0[152] = v31 + 1;
    v0[151] = 0;
    v32 = v0[94];
    sub_10001F280(v0[93] + 40 * v31 + 72, (v0 + 18));
    v27 = *(v32 + 136);
    v0[154] = v27;
    v33 = v0[21];
    v34 = v0[22];
    sub_1000035D0(v0 + 18, v33);
    (*(*(*(v34 + 8) + 8) + 32))(v33);
    v30 = sub_1002A174C;
  }

  return _swift_task_switch(v30, v27, 0);
}

uint64_t sub_1002A4CF4()
{
  v2 = *v1;
  *(*v1 + 1504) = v0;

  v3 = *(v2 + 752);

  if (v0)
  {
    v4 = sub_1002A5234;
  }

  else
  {
    v4 = sub_1002A4E68;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002A4E68()
{
  v1 = *(v0 + 1480);
  v2 = *(v0 + 1288);
  v3 = *(v0 + 1168);
  v4 = *(v0 + 1152);
  v5 = *(v0 + 1064);
  v6 = *(v0 + 1056);
  v7 = *(v0 + 1000);
  sub_10000B3A8(*(v0 + 1144), &qword_10169C9C8, &qword_101398A58);

  v2(v6, v7);
  v2(v5, v7);
  v1(v4, v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 1424);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_100A5C854(0, v9[2] + 1, 1, *(v0 + 1424));
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_100A5C854((v10 > 1), v11 + 1, 1, v9);
  }

  v12 = *(v0 + 920);
  v13 = *(v0 + 856);
  v14 = *(v0 + 840);
  sub_1002DBBF0(*(v0 + 896), type metadata accessor for SharedBeaconRecord);
  sub_1002DBBF0(v12, type metadata accessor for MemberSharingCircle);
  v9[2] = v11 + 1;
  sub_1002DB7C8(v13, v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v11, type metadata accessor for KeyDropFetchItem);
  v15 = *(v0 + 1504);
  v16 = *(v0 + 1416) + 1;
  if (v16 == *(v0 + 1312))
  {

    sub_10039845C(*(v0 + 1392));
    v17 = *(v0 + 1200);
    v18 = *(v0 + 1216) + 1;
    sub_100007BAC((v0 + 144));
    if (v18 == v17)
    {
      *(v0 + 1520) = v9;
      *(v0 + 1512) = 0;
      v19 = *(v0 + 1232);
      sub_10001F280(*(v0 + 744) + 32, v0 + 224);
      v20 = *(v0 + 248);
      v21 = *(v0 + 256);
      sub_1000035D0((v0 + 224), v20);
      (*(*(*(v21 + 8) + 8) + 32))(v20);
      v22 = sub_1002A571C;
    }

    else
    {
      v26 = *(v0 + 1216);
      *(v0 + 1224) = v9;
      *(v0 + 1216) = v26 + 1;
      *(v0 + 1208) = v15;
      v27 = *(v0 + 752);
      sub_10001F280(*(v0 + 744) + 40 * v26 + 72, v0 + 144);
      v19 = *(v27 + 136);
      *(v0 + 1232) = v19;
      v28 = *(v0 + 168);
      v29 = *(v0 + 176);
      sub_1000035D0((v0 + 144), v28);
      (*(*(*(v29 + 8) + 8) + 32))(v28);
      v22 = sub_1002A174C;
    }
  }

  else
  {
    *(v0 + 1424) = v9;
    *(v0 + 1416) = v16;
    *(v0 + 1408) = v15;
    v23 = *(v0 + 1304);
    if (v16 >= *(v23 + 16))
    {
      __break(1u);
    }

    v19 = *(v0 + 1232);
    sub_1002DB760(v23 + ((*(v0 + 1784) + 32) & ~*(v0 + 1784)) + *(*(v0 + 912) + 72) * v16, *(v0 + 920), type metadata accessor for MemberSharingCircle);
    v24 = *(v0 + 168);
    v25 = *(v0 + 176);
    sub_1000035D0((v0 + 144), v24);
    (*(*(*(v25 + 8) + 8) + 32))(v24);
    v22 = sub_1002A2CE4;
  }

  return _swift_task_switch(v22, v19, 0);
}

uint64_t sub_1002A5234()
{
  v40 = v0;
  sub_10000B3A8(v0[143], &qword_10169C9C8, &qword_101398A58);
  v37 = v0[185];
  v1 = v0[161];
  v34 = v0[144];
  v36 = v0[146];
  v2 = v0[133];
  v3 = v0[132];
  v4 = v0[125];
  v33 = v0[115];
  v5 = v0[112];

  v1(v3, v4);
  v1(v2, v4);

  sub_1002DBBF0(v5, type metadata accessor for SharedBeaconRecord);
  sub_1002DBBF0(v33, type metadata accessor for MemberSharingCircle);
  v37(v34, v36);
  v6 = v0[178];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177A818);
  sub_10001F280((v0 + 18), (v0 + 23));
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v35 = v0[161];
    v10 = v0[137];
    v11 = v0[125];
    v38 = v6;
    v12 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    v13 = v0[26];
    v14 = v0[27];
    sub_1000035D0(v0 + 23, v13);
    (*(*(*(v14 + 8) + 8) + 32))(v13);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v35(v10, v11);
    sub_100007BAC(v0 + 23);
    v18 = sub_1000136BC(v15, v17, &v39);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2080;
    swift_getErrorValue();
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, &v39);

    *(v12 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "Could not create fetch item for shared beacon %{private,mask.hash}s, error: %s.", v12, 0x20u);
    swift_arrayDestroy();

    v6 = v38;
  }

  else
  {

    sub_100007BAC(v0 + 23);
  }

  v22 = v0[150];
  v23 = v0[152] + 1;
  sub_100007BAC(v0 + 18);
  if (v23 == v22)
  {
    v0[190] = v6;
    v0[189] = 0;
    v24 = v0[154];
    sub_10001F280(v0[93] + 32, (v0 + 28));
    v25 = v0[31];
    v26 = v0[32];
    sub_1000035D0(v0 + 28, v25);
    (*(*(*(v26 + 8) + 8) + 32))(v25);
    v27 = sub_1002A571C;
  }

  else
  {
    v28 = v0[152];
    v0[153] = v6;
    v0[152] = v28 + 1;
    v0[151] = 0;
    v29 = v0[94];
    sub_10001F280(v0[93] + 40 * v28 + 72, (v0 + 18));
    v24 = *(v29 + 136);
    v0[154] = v24;
    v30 = v0[21];
    v31 = v0[22];
    sub_1000035D0(v0 + 18, v30);
    (*(*(*(v31 + 8) + 8) + 32))(v30);
    v27 = sub_1002A174C;
  }

  return _swift_task_switch(v27, v24, 0);
}

uint64_t sub_1002A571C()
{
  v1 = *(v0 + 1264);
  v2 = *(v0 + 1232);
  v3 = *(v0 + 1088);
  v4 = *(v0 + 1000);
  v5 = (*(v0 + 1780) + 24) & ~*(v0 + 1780);
  v6 = (v5 + *(v0 + 1016) + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v0 + 1240))(v3, *(v0 + 1096), v4);
  v7 = swift_allocObject();
  *(v0 + 1528) = v7;
  *(v7 + 16) = v2;
  v1(v7 + v5, v3, v4);
  *(v7 + v6) = 0;

  v8 = swift_task_alloc();
  *(v0 + 1536) = v8;
  v9 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v8 = v0;
  v8[1] = sub_1002A58D0;

  return unsafeBlocking<A>(context:_:)(v0 + 656, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v7, v9);
}

uint64_t sub_1002A58D0()
{
  v1 = *(*v0 + 1232);

  return _swift_task_switch(sub_1002A5A30, v1, 0);
}

uint64_t sub_1002A5A30()
{
  v1 = *(v0 + 1232);
  (*(v0 + 1288))(*(v0 + 1096), *(v0 + 1000));
  *(v0 + 1544) = *(v0 + 656);

  return _swift_task_switch(sub_1002A5ADC, v1, 0);
}

uint64_t sub_1002A5ADC()
{

  v1 = swift_task_alloc();
  *(v0 + 1552) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1002A5BE8;
  v3 = *(v0 + 1232);

  return unsafeBlocking<A>(context:_:)(v0 + 632, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1002A5BE8()
{
  v1 = *(*v0 + 1232);

  return _swift_task_switch(sub_1002A5D2C, v1, 0);
}

uint64_t sub_1002A5D2C()
{
  v1 = v0[94];
  v0[195] = v0[79];

  return _swift_task_switch(sub_1002A5DC0, v1, 0);
}

uint64_t sub_1002A5DC0()
{
  v1 = *(v0 + 1544);
  v2 = *(v1 + 16);
  *(v0 + 1568) = v2;
  if (v2)
  {
    *(v0 + 1584) = 0;
    *(v0 + 1576) = _swiftEmptyArrayStorage;
    if (!*(v1 + 16))
    {
      __break(1u);
    }

    v3 = *(v0 + 1560);
    v4 = *(*(v0 + 768) + 80);
    sub_1002DB760(v1 + ((v4 + 32) & ~v4), *(v0 + 784), type metadata accessor for OwnerSharingCircle);
    sub_10001F280(v0 + 224, v0 + 264);
    v5 = swift_allocObject();
    *(v0 + 1592) = v5;
    *(v5 + 16) = v3;
    sub_10000A748((v0 + 264), v5 + 24);

    v6 = swift_task_alloc();
    *(v0 + 1600) = v6;
    v7 = sub_1000BC4D4(&qword_10169C9B0, &qword_10139FC00);
    *v6 = v0;
    v6[1] = sub_1002A62D8;

    return unsafeBlocking<A>(_:)(v0 + 344, sub_1002DB9B8, v5, v7);
  }

  else
  {

    v8 = *(v0 + 1520);
    sub_10039845C(_swiftEmptyArrayStorage);

    v9 = *(v0 + 1200);
    v10 = *(v0 + 1512) + 1;
    sub_100007BAC((v0 + 224));
    if (v10 == v9)
    {
      v17 = *(v0 + 712);
      sub_10000B3A8(*(v0 + 1160), &qword_10169C9C8, &qword_101398A58);

      v11 = *(v0 + 8);

      return v11(v8, v17);
    }

    else
    {
      v12 = *(v0 + 1512);
      *(v0 + 1520) = v8;
      *(v0 + 1512) = v12 + 1;
      v13 = *(v0 + 1232);
      sub_10001F280(*(v0 + 744) + 40 * v12 + 72, v0 + 224);
      v14 = *(v0 + 248);
      v15 = *(v0 + 256);
      sub_1000035D0((v0 + 224), v14);
      (*(*(*(v15 + 8) + 8) + 32))(v14);

      return _swift_task_switch(sub_1002A571C, v13, 0);
    }
  }
}

uint64_t sub_1002A62D8()
{
  v2 = *v1;
  *(*v1 + 1608) = v0;

  if (v0)
  {
    v3 = *(v2 + 752);

    v4 = sub_1002AAF3C;
  }

  else
  {
    v3 = *(v2 + 752);

    v4 = sub_1002A6464;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002A6464()
{
  v1 = *(v0 + 968);
  sub_100016590(*(v0 + 344), *(v0 + 352));
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  *(v0 + 1616) = v2;
  *(v0 + 1624) = v3;
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  sub_1000035D0((v0 + 224), v4);
  v6 = *(*(v5 + 8) + 8);
  v7 = *(v6 + 32);
  sub_100017D5C(v2, v3);
  v7(v4, v6);
  *v1 = v2;
  v1[1] = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 1576);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_100A5C82C(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_100A5C82C((v10 > 1), v11 + 1, 1, v9);
  }

  *(v0 + 1632) = v9;
  v12 = *(v0 + 968);
  v13 = *(v0 + 936);
  v14 = *(v0 + 784);
  v15 = *(v0 + 760);
  v16 = *(v0 + 752);
  v9[2] = v11 + 1;
  v17 = *(v13 + 80);
  *(v0 + 1788) = v17;
  v18 = *(v13 + 72);
  *(v0 + 1640) = v18;
  sub_1002DB7C8(v12, v9 + ((v17 + 32) & ~v17) + v18 * v11, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  *(v0 + 1648) = *(v16 + 128);
  v19 = *(v15 + 20);
  *(v0 + 1792) = *(v15 + 24);
  v20 = swift_task_alloc();
  *(v0 + 1656) = v20;
  *v20 = v0;
  v20[1] = sub_1002A6680;

  return sub_100C7BA0C(v0 + 80, v14 + v19);
}

uint64_t sub_1002A6680()
{
  v2 = *v1;
  *(*v1 + 1664) = v0;

  if (v0)
  {

    v2[210] = v0;
    v3 = v2[94];

    v4 = sub_1002A7D44;
    v5 = v3;
  }

  else
  {
    v5 = v2[206];
    v4 = sub_1002A6800;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1002A6800()
{
  v1 = *(v0 + 128);
  if (v1 >> 60 == 15)
  {

    sub_1001BAEE0();
    v2 = swift_allocError();
    *v3 = 12;
    swift_willThrow();
    sub_1001BAF34(v0 + 80);
    *(v0 + 1680) = v2;
    v4 = *(v0 + 752);

    v5 = sub_1002A7D44;
    v6 = v4;
  }

  else
  {
    v7 = *(v0 + 1792);
    v8 = *(v0 + 1240);
    v9 = *(v0 + 1000);
    v10 = *(v0 + 960);
    v11 = *(v0 + 928);
    v12 = *(v0 + 784);
    v15 = *(v0 + 752);
    v13 = *(v0 + 120);
    sub_100017D5C(v13, v1);
    sub_1001BAF34(v0 + 80);
    v8(v10 + *(v11 + 20), v12 + v7, v9);
    *v10 = v13;
    v10[1] = v1;
    v5 = sub_1002A6990;
    v6 = v15;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1002A6990()
{
  v1 = *(v0 + 1632);
  sub_1002DB760(*(v0 + 960), *(v0 + 952), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = v3 + 1;
  v5 = *(v0 + 1632);
  v138 = v3 + 1;
  if (v3 >= v2 >> 1)
  {
    goto LABEL_160;
  }

LABEL_2:
  *(v0 + 1672) = v5;
  v6 = *(v0 + 1640);
  v7 = *(v0 + 1568);
  v8 = *(v0 + 960);
  v9 = *(v0 + 952);
  v10 = *(v0 + 784);
  v11 = (*(v0 + 1788) + 32) & ~*(v0 + 1788);
  v12 = *(v0 + 1584) + 1;
  sub_100016590(*(v0 + 1616), *(v0 + 1624));
  sub_1002DBBF0(v8, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  sub_1002DBBF0(v10, type metadata accessor for OwnerSharingCircle);
  *(v5 + 16) = v138;
  sub_1002DB7C8(v9, v5 + v11 + v6 * v3, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  if (v12 != v7)
  {
    v77 = *(v0 + 1584) + 1;
    *(v0 + 1584) = v77;
    *(v0 + 1576) = v5;
    v78 = *(v0 + 1544);
    if (v77 < *(v78 + 16))
    {
      v79 = *(v0 + 1560);
      sub_1002DB760(v78 + ((*(*(v0 + 768) + 80) + 32) & ~*(*(v0 + 768) + 80)) + *(*(v0 + 768) + 72) * v77, *(v0 + 784), type metadata accessor for OwnerSharingCircle);
      sub_10001F280(v0 + 224, v0 + 264);
      v80 = swift_allocObject();
      *(v0 + 1592) = v80;
      *(v80 + 16) = v79;
      sub_10000A748((v0 + 264), v80 + 24);

      v81 = swift_task_alloc();
      *(v0 + 1600) = v81;
      v82 = sub_1000BC4D4(&qword_10169C9B0, &qword_10139FC00);
      *v81 = v0;
      v81[1] = sub_1002A62D8;

      return unsafeBlocking<A>(_:)(v0 + 344, sub_1002DB9B8, v80, v82);
    }

    goto LABEL_167;
  }

  v13 = *(v0 + 1544);
  v14 = *(v0 + 776);
  v15 = *(v0 + 768);
  v16 = *(v0 + 760);
  v17 = v16[6];
  *(v0 + 1796) = v17;
  v18 = v16[5];
  *(v0 + 1800) = v18;
  v8 = v16[7];
  *(v0 + 1804) = v8;
  v19 = *(v15 + 80);
  *(v0 + 1808) = v19;
  *(v0 + 1688) = *(v5 + 16);
  v138 = *(v0 + 1664);
  *(v0 + 1704) = *(v0 + 1520);
  *(v0 + 1696) = 0;
  if (!*(v13 + 16))
  {
    goto LABEL_166;
  }

  v3 = *(v0 + 1240);
  v20 = *(v0 + 1040);
  v21 = *(v0 + 1032);
  v22 = *(v0 + 1000);
  sub_1002DB760(v13 + ((v19 + 32) & ~v19), v14, type metadata accessor for OwnerSharingCircle);
  (v3)(v20, v14 + v17, v22);
  (v3)(v21, v14 + v18, v22);
  LOBYTE(v20) = *(v14 + v8);
  sub_1002DBBF0(v14, type metadata accessor for OwnerSharingCircle);
  *(v0 + 1827) = 0x4000201u >> (8 * v20);
  v23 = *(v0 + 1688);
  v24 = *(v0 + 1128);
  v25 = *(v0 + 1104);
  sub_1000D2A70(*(v0 + 1160), v24, &qword_10169C9C8, &qword_101398A58);
  v135 = *(v24 + *(v25 + 48));
  v26 = _swiftEmptyArrayStorage;
  if (!v23)
  {
LABEL_118:
    *(v0 + 1712) = v26;
    v83 = *(v0 + 1120);
    v84 = *(v0 + 1112);
    v85 = *(v0 + 1104);
    (*(v0 + 1184))(v83, *(v0 + 1128), *(v0 + 1168));
    *(v83 + *(v85 + 48)) = v135;
    sub_1000D2A70(v83, v84, &qword_10169C9C8, &qword_101398A58);
    v86 = *(v84 + *(v85 + 48));
    v87 = swift_task_alloc();
    *(v0 + 1720) = v87;
    *v87 = v0;
    v87[1] = sub_1002A8370;
    v88 = *(v0 + 1112);
    v89 = *(v0 + 1040);
    v90 = *(v0 + 1032);

    return sub_1002AB558(v89, v90, v88, v86);
  }

  v27 = (v0 + 568);
  v5 = v0 + 584;
  v28 = *(v0 + 1688);
  v29 = *(v0 + 1672);
  v30 = *(v0 + 936);
  *(v0 + 584) = _swiftEmptyArrayStorage;
  v134 = (v0 + 560);
  sub_1011247A4(0, v28, 0);
  v31 = 0;
  v26 = *(v0 + 584);
  v136 = v29 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
  v8 = v138;
  while (1)
  {
    v2 = *(*(v0 + 1672) + 16);
    if (v31 >= v2)
    {
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      v5 = sub_100A5C82C((v2 > 1), v4, 1, v5);
      goto LABEL_2;
    }

    v32 = *(v0 + 944);
    v138 = v31;
    sub_1002DB760(v136 + *(*(v0 + 936) + 72) * v31, v32, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v5 = *v32;
    v33 = v32[1];
    v34 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v34 != 2)
      {
        v3 = 0;
        v35 = 0;
        v36 = 0;
        v2 = 0;
        goto LABEL_18;
      }

      v35 = *(v5 + 16);
      v3 = *(v5 + 24);
    }

    else
    {
      if (!v34)
      {
        v35 = 0;
        v2 = 0;
        v3 = BYTE6(v33);
        v36 = BYTE6(v33);
        goto LABEL_18;
      }

      v35 = v5;
      v3 = v5 >> 32;
    }

    sub_100017D5C(v5, v33);
    if (v3 < v35)
    {
      goto LABEL_155;
    }

    if (v34 == 2)
    {
      v2 = *(v5 + 16);
      v36 = *(v5 + 24);
    }

    else
    {
      v2 = v5;
      v36 = v5 >> 32;
    }

LABEL_18:
    if (v36 < v3 || v3 < v2)
    {
      goto LABEL_156;
    }

    v2 = v3 - v35;
    if (__OFSUB__(v3, v35))
    {
      goto LABEL_157;
    }

    if (v2 < 0x39)
    {
      if (v34 <= 1)
      {
        if (!v34)
        {
          goto LABEL_45;
        }

        v4 = v5 >> 32;
LABEL_41:
        v38 = v5;
        goto LABEL_44;
      }

      if (v34 != 2)
      {
        goto LABEL_45;
      }

      v4 = *(v5 + 24);
LABEL_43:
      v38 = *(v5 + 16);
      goto LABEL_44;
    }

    v4 = v35 + 57;
    if (__OFADD__(v35, 57))
    {
      goto LABEL_162;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v2 = *(v5 + 16);
        v37 = *(v5 + 24);
      }

      else
      {
        v37 = 0;
        v2 = 0;
      }
    }

    else if (v34)
    {
      v2 = v5;
      v37 = v5 >> 32;
    }

    else
    {
      v2 = 0;
      v37 = BYTE6(v33);
    }

    if (v37 < v4 || v4 < v2)
    {
      goto LABEL_163;
    }

    v38 = 0;
    if (v34 <= 1)
    {
      if (!v34)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    if (v34 != 3)
    {
      goto LABEL_43;
    }

LABEL_44:
    if (v4 < v38)
    {
      goto LABEL_158;
    }

LABEL_45:
    v39 = Data._Representation.subscript.getter();
    v3 = v40;
    sub_100016590(v5, v33);
    v41 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      if (v41 != 2)
      {
        goto LABEL_121;
      }

      v44 = *(v39 + 16);
      v43 = *(v39 + 24);
      v45 = __OFSUB__(v43, v44);
      v42 = v43 - v44;
      if (v45)
      {
        goto LABEL_168;
      }
    }

    else if (v41)
    {
      LODWORD(v42) = HIDWORD(v39) - v39;
      if (__OFSUB__(HIDWORD(v39), v39))
      {
        goto LABEL_169;
      }

      v42 = v42;
    }

    else
    {
      v42 = BYTE6(v3);
    }

    if (v42 != 57)
    {
LABEL_121:
      sub_100016590(v39, v3);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    *v27 = 0;
    if (v41 == 2)
    {
      v5 = *(v39 + 16);
    }

    else
    {
      if (v41 != 1)
      {
        *(v0 + 1812) = v39;
        *(v0 + 1820) = v3;
        *(v0 + 1822) = BYTE2(v3);
        *(v0 + 1823) = BYTE3(v3);
        *(v0 + 1824) = BYTE4(v3);
        *(v0 + 1825) = BYTE5(v3);
        v46 = CCECCryptorImportKey();
        sub_100016590(v39, v3);
        sub_100016590(v39, v3);
        if (v46)
        {
          goto LABEL_122;
        }

        goto LABEL_64;
      }

      v5 = v39;
      if (v39 > v39 >> 32)
      {
        goto LABEL_170;
      }
    }

    sub_100017D5C(v39, v3);
    sub_100017D5C(v39, v3);
    sub_100017D5C(v39, v3);
    v46 = sub_1002DB9D8(v5, v3 & 0x3FFFFFFFFFFFFFFFLL, 0, v39, v3, 0, v27);
    sub_100016590(v39, v3);
    sub_100016590(v39, v3);
    sub_100016590(v39, v3);
    if (v8)
    {
      goto LABEL_144;
    }

    if (v46)
    {
LABEL_122:
      v91 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v92 = *(v0 + 824);
      v93 = qword_10177BA00;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_101385D80;
      *(v94 + 56) = &type metadata for Int32;
      *(v94 + 64) = &protocol witness table for Int32;
      *(v94 + 32) = v46;
      os_log(_:dso:log:_:_:)(v91, &_mh_execute_header, v93, "Error running CCECCryptorImportKey. Code: %d.", v133);

      CryptoError.init(rawValue:)();
      v95 = type metadata accessor for CryptoError();
      sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
      v96 = swift_allocError();
      v98 = v97;
      v99 = *(v95 - 8);
      v100 = *(v99 + 48);
      v101 = v100(v92, 1, v95);
      v102 = *(v0 + 824);
      if (v101 == 1)
      {
        (*(v99 + 104))(v98, enum case for CryptoError.unspecifiedError(_:), v95);
        if (v100(v102, 1, v95) != 1)
        {
          sub_10000B3A8(*(v0 + 824), &qword_10169C9A0, &unk_1013D5A40);
        }
      }

      else
      {
        (*(v99 + 32))(v98, *(v0 + 824), v95);
      }

      swift_willThrow();
      v8 = v96;
      goto LABEL_144;
    }

LABEL_64:
    v47 = *v27;
    if (!*v27)
    {
      v103 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        v131 = v103;
        swift_once();
        v103 = v131;
      }

      os_log(_:dso:log:_:_:)(v103, &_mh_execute_header, qword_10177BA00, "CryptoUtil: diversifyKey: CryptorRef was not populated as expected.", 67, 2, _swiftEmptyArrayStorage);
      v104 = type metadata accessor for CryptoError();
      sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
      v105 = swift_allocError();
      (*(*(v104 - 8) + 104))(v106, enum case for CryptoError.unspecifiedError(_:), v104);
      swift_willThrow();
      v8 = v105;
      goto LABEL_144;
    }

    v137 = v26;
    *(v0 + 552) = 57;
    type metadata accessor for __DataStorage();
    v5 = swift_allocObject();
    v48 = __DataStorage.init(length:)();
    *(v0 + 520) = 0x3900000000;
    *(v0 + 528) = v48 | 0x4000000000000000;
    v49 = sub_100A7AF80((v0 + 520), 2, v0 + 552, 0, v47);
    if (v8)
    {
      goto LABEL_143;
    }

    v50 = v49;
    if (v49)
    {
      break;
    }

    v51 = *(v0 + 552);
    if ((v51 & 0x8000000000000000) != 0)
    {
      goto LABEL_159;
    }

    v5 = *(v0 + 520);
    v8 = *(v0 + 528);
    v52 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v52 == 2)
      {
        v53 = *(v5 + 16);
        v54 = *(v5 + 24);
      }

      else
      {
        v54 = 0;
        v53 = 0;
      }
    }

    else if (v52)
    {
      v53 = v5;
      v54 = v5 >> 32;
    }

    else
    {
      v53 = 0;
      v54 = BYTE6(v8);
    }

    v55 = sub_10002F330(v53, v54, *(v0 + 520), *(v0 + 528));
    if (!v51 || v55 >= v51)
    {
      v56 = v53 + v51;
      if (__OFADD__(v53, v51))
      {
        goto LABEL_164;
      }

      if (v52 > 1)
      {
        if (v52 == 2)
        {
          v57 = *(v5 + 16);
          v58 = *(v5 + 24);
        }

        else
        {
          v58 = 0;
          v57 = 0;
        }
      }

      else if (v52)
      {
        v57 = v5;
        v58 = v5 >> 32;
      }

      else
      {
        v57 = 0;
        v58 = BYTE6(v8);
      }

      if (v58 < v56 || v56 < v57)
      {
        goto LABEL_165;
      }

      v59 = 0;
      if (v52 <= 1)
      {
        if (!v52)
        {
LABEL_99:
          if (v56 >= v59)
          {
            goto LABEL_100;
          }

          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          swift_once();
          goto LABEL_145;
        }

LABEL_96:
        v59 = v5;
        goto LABEL_99;
      }

      if (v52 == 3)
      {
        goto LABEL_99;
      }

LABEL_98:
      v59 = *(v5 + 16);
      goto LABEL_99;
    }

    if (v52 <= 1)
    {
      if (!v52)
      {
        goto LABEL_100;
      }

      v56 = v5 >> 32;
      goto LABEL_96;
    }

    if (v52 == 2)
    {
      v56 = *(v5 + 24);
      goto LABEL_98;
    }

LABEL_100:
    v60 = Data._Representation.subscript.getter();
    v62 = v61;
    sub_100016590(v5, v8);
    CCECCryptorRelease();
    v63 = v62 >> 62;
    if ((v62 >> 62) > 1)
    {
      if (v63 != 2)
      {
        v119 = 0;
        goto LABEL_151;
      }

      v66 = *(v60 + 16);
      v65 = *(v60 + 24);
      v45 = __OFSUB__(v65, v66);
      v64 = v65 - v66;
      if (v45)
      {
        goto LABEL_171;
      }
    }

    else if (v63)
    {
      LODWORD(v64) = HIDWORD(v60) - v60;
      if (__OFSUB__(HIDWORD(v60), v60))
      {
        goto LABEL_172;
      }

      v64 = v64;
    }

    else
    {
      v64 = BYTE6(v62);
    }

    if (v64 != 28)
    {
      if (v63 == 2)
      {
        v128 = *(v60 + 16);
        v127 = *(v60 + 24);
        v119 = v127 - v128;
        if (!__OFSUB__(v127, v128))
        {
          goto LABEL_151;
        }

        __break(1u);
      }

      else if (v63 == 1)
      {
        if (__OFSUB__(HIDWORD(v60), v60))
        {
          __break(1u);
        }

        v119 = HIDWORD(v60) - v60;
        goto LABEL_151;
      }

      v119 = BYTE6(v62);
LABEL_151:
      sub_100018350();
      v125 = swift_allocError();
      *v129 = 28;
      *(v129 + 8) = v119;
      *(v129 + 16) = 0;
      swift_willThrow();
      sub_100016590(v60, v62);
      goto LABEL_152;
    }

    v5 = *(v0 + 1776);
    v67 = *(v0 + 944);
    v68 = *(v0 + 808);
    v69 = *(v0 + 800);
    v70 = *(v0 + 792);
    sub_100016590(v39, v3);
    (*(v69 + 104))(v68, v5, v70);
    v3 = Data.hash(algorithm:)();
    v72 = v71;
    sub_100016590(v60, v62);
    (*(v69 + 8))(v68, v70);
    sub_1002DBBF0(v67, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v26 = v137;
    *(v0 + 584) = v137;
    v74 = v137[2];
    v73 = v137[3];
    if (v74 >= v73 >> 1)
    {
      v5 = v0 + 584;
      sub_1011247A4((v73 > 1), v74 + 1, 1);
      v26 = *(v0 + 584);
    }

    v8 = 0;
    v31 = v138 + 1;
    v75 = *(v0 + 1688);
    v26[2] = v74 + 1;
    v76 = &v26[2 * v74];
    v76[4] = v3;
    v76[5] = v72;
    v27 = (v0 + 568);
    if (v138 + 1 == v75)
    {
      goto LABEL_118;
    }
  }

  v107 = static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    swift_once();
  }

  v108 = *(v0 + 816);
  v109 = qword_10177BA00;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_101385D80;
  *(v110 + 56) = &type metadata for Int32;
  *(v110 + 64) = &protocol witness table for Int32;
  *(v110 + 32) = v50;
  os_log(_:dso:log:_:_:)(v107, &_mh_execute_header, v109, "Error running CCECCryptorExportKey. Code: %d.", v133);

  CryptoError.init(rawValue:)();
  v111 = type metadata accessor for CryptoError();
  sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
  v112 = swift_allocError();
  v114 = v113;
  v115 = *(v111 - 8);
  v116 = *(v115 + 48);
  v117 = v116(v108, 1, v111);
  v118 = *(v0 + 816);
  if (v117 == 1)
  {
    (*(v115 + 104))(v114, enum case for CryptoError.unspecifiedError(_:), v111);
    if (v116(v118, 1, v111) != 1)
    {
      sub_10000B3A8(*(v0 + 816), &qword_10169C9A0, &unk_1013D5A40);
    }
  }

  else
  {
    (*(v115 + 32))(v114, *(v0 + 816), v111);
  }

  swift_willThrow();
  v8 = v112;
LABEL_143:
  sub_100016590(*(v0 + 520), *(v0 + 528));
LABEL_144:
  v5 = static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_173;
  }

LABEL_145:
  v120 = qword_10177BA00;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_101385D80;
  *v134 = v8;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v122 = String.init<A>(describing:)();
  v124 = v123;
  *(v121 + 56) = &type metadata for String;
  *(v121 + 64) = sub_100008C00();
  *(v121 + 32) = v122;
  *(v121 + 40) = v124;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v120, "Error deriving advertisementKey: %@", 35, 2, v121);

  sub_1001BAF88();
  v125 = swift_allocError();
  *v126 = 0;
  swift_willThrow();

LABEL_152:
  _StringGuts.grow(_:)(35);
  *(v0 + 424) = 0;
  *(v0 + 432) = 0xE000000000000000;
  v130._countAndFlagsBits = 0xD000000000000021;
  v130._object = 0x800000010134CB30;
  String.append(_:)(v130);
  *(v0 + 736) = v125;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002A7D44()
{
  v29 = v0;
  v1 = v0[98];
  sub_100016590(v0[202], v0[203]);

  sub_1002DBBF0(v1, type metadata accessor for OwnerSharingCircle);
  v27 = v0[190];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A818);
  sub_10001F280((v0 + 28), (v0 + 38));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v26 = v0[161];
    v5 = v0[137];
    v6 = v0[125];
    v7 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = v0[41];
    v8 = v0[42];
    sub_1000035D0(v0 + 38, v9);
    (*(*(*(v8 + 8) + 8) + 32))(v9);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v26(v5, v6);
    sub_100007BAC(v0 + 38);
    v13 = sub_1000136BC(v10, v12, v28);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2080;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = sub_1000136BC(v14, v15, v28);

    *(v7 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not create fetch item for owned beacon %{private,mask.hash}s, error: %s.", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC(v0 + 38);
  }

  v17 = v0[150];
  v18 = v0[189] + 1;
  sub_100007BAC(v0 + 28);
  if (v18 == v17)
  {
    v25 = v0[89];
    sub_10000B3A8(v0[145], &qword_10169C9C8, &qword_101398A58);

    v19 = v0[1];

    return v19(v27, v25);
  }

  else
  {
    v21 = v0[189];
    v0[190] = v27;
    v0[189] = v21 + 1;
    v22 = v0[154];
    sub_10001F280(v0[93] + 40 * v21 + 72, (v0 + 28));
    v23 = v0[31];
    v24 = v0[32];
    sub_1000035D0(v0 + 28, v23);
    (*(*(*(v24 + 8) + 8) + 32))(v23);

    return _swift_task_switch(sub_1002A571C, v22, 0);
  }
}

uint64_t sub_1002A8370(uint64_t a1)
{
  v3 = *v2;
  v3[216] = a1;
  v3[217] = v1;

  if (v1)
  {
    v4 = v3[94];

    v5 = sub_1002A89E4;
    v6 = v4;
  }

  else
  {
    v7 = v3[147];
    v8 = v3[146];
    v9 = v3[139];
    v10 = v3[94];
    v11 = *(v7 + 8);
    v3[218] = v11;
    v3[219] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v9, v8);
    v5 = sub_1002A8524;
    v6 = v10;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1002A8524()
{
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1240);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 1000);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A818);
  v1(v3, v2, v4);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1728);
  v10 = *(v0 + 1288);
  v11 = *(v0 + 1024);
  v12 = *(v0 + 1000);
  if (v8)
  {
    v48 = v7;
    log = v6;
    v13 = swift_slowAlloc();
    *(v0 + 536) = swift_slowAlloc();
    *v13 = 134218755;
    *(v13 + 4) = *(v9 + 16);

    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v10(v11, v12);
    v17 = sub_1000136BC(v14, v16, (v0 + 536));

    *(v13 + 24) = v17;
    buf = v13;
    *(v13 + 32) = 2082;
    v18 = *(v9 + 16);
    if (v18)
    {
      v19 = *(v0 + 1728);
      *(v0 + 576) = _swiftEmptyArrayStorage;
      v50 = (v0 + 576);
      sub_101123AF8(v18);
      v20 = (v19 + 64);
      do
      {
        v21 = *(v20 - 3);
        v23 = *(v20 - 2);
        v22 = *(v20 - 1);
        v24 = *v20;
        *(v0 + 592) = *(v20 - 4);
        sub_100017D5C(v22, v24);
        *(v0 + 504) = dispatch thunk of CustomStringConvertible.description.getter();
        *(v0 + 512) = v25;
        v26._countAndFlagsBits = 8250;
        v26._object = 0xE200000000000000;
        String.append(_:)(v26);
        *(v0 + 600) = v21;
        v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v27);

        v28._countAndFlagsBits = 45;
        v28._object = 0xE100000000000000;
        String.append(_:)(v28);
        *(v0 + 608) = v23;
        v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v29);

        sub_100016590(v22, v24);
        v30 = *(v0 + 504);
        v31 = *(v0 + 512);
        v32 = *(v0 + 576);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123BB8(0, *(v32 + 16) + 1, 1);
          v32 = *v50;
        }

        v34 = *(v32 + 16);
        v33 = *(v32 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_101123BB8((v33 > 1), v34 + 1, 1);
          v32 = *v50;
        }

        v20 += 5;
        *(v32 + 16) = v34 + 1;
        v35 = v32 + 16 * v34;
        *(v35 + 32) = v30;
        *(v35 + 40) = v31;
        --v18;
      }

      while (v18);
    }

    v36 = Array.description.getter();
    v38 = v37;

    v39 = sub_1000136BC(v36, v38, (v0 + 536));

    *(buf + 34) = v39;
    _os_log_impl(&_mh_execute_header, log, v48, "Found %ld ranges for circle: %{private,mask.hash}s.\nRanges: %{public}s)", buf, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v10(v11, v12);
  }

  v40 = swift_task_alloc();
  *(v0 + 1760) = v40;
  *v40 = v0;
  v40[1] = sub_1002A9078;
  v41 = *(v0 + 1728);
  v42 = *(v0 + 1712);
  v43 = *(v0 + 1032);
  v44 = *(v0 + 848);
  v45 = *(v0 + 1827);

  return sub_10029E154(v44, v41, v43, v45, v42);
}

uint64_t sub_1002A89E4()
{
  v38 = v0;
  v1 = v0[161];
  v2 = v0[147];
  v3 = v0[146];
  v4 = v0[139];
  v5 = v0[130];
  v6 = v0[129];
  v7 = v0[125];
  sub_10000B3A8(v0[140], &qword_10169C9C8, &qword_101398A58);
  v1(v6, v7);
  v1(v5, v7);
  v8 = *(v2 + 8);
  v8(v4, v3);
  v9 = v0[146];
  v10 = v0[141];

  v8(v10, v9);
  v36 = v0[213];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177A818);
  sub_10001F280((v0 + 28), (v0 + 38));
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v35 = v0[161];
    v14 = v0[137];
    v15 = v0[125];
    v16 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v16 = 141558531;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    v18 = v0[41];
    v17 = v0[42];
    sub_1000035D0(v0 + 38, v18);
    (*(*(*(v17 + 8) + 8) + 32))(v18);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v35(v14, v15);
    sub_100007BAC(v0 + 38);
    v22 = sub_1000136BC(v19, v21, v37);

    *(v16 + 14) = v22;
    *(v16 + 22) = 2080;
    swift_getErrorValue();
    v23 = Error.localizedDescription.getter();
    v25 = sub_1000136BC(v23, v24, v37);

    *(v16 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v12, v13, "Could not create fetch item for owned beacon %{private,mask.hash}s, error: %s.", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC(v0 + 38);
  }

  v26 = v0[150];
  v27 = v0[189] + 1;
  sub_100007BAC(v0 + 28);
  if (v27 == v26)
  {
    v34 = v0[89];
    sub_10000B3A8(v0[145], &qword_10169C9C8, &qword_101398A58);

    v28 = v0[1];

    return v28(v36, v34);
  }

  else
  {
    v30 = v0[189];
    v0[190] = v36;
    v0[189] = v30 + 1;
    v31 = v0[154];
    sub_10001F280(v0[93] + 40 * v30 + 72, (v0 + 28));
    v32 = v0[31];
    v33 = v0[32];
    sub_1000035D0(v0 + 28, v32);
    (*(*(*(v33 + 8) + 8) + 32))(v32);

    return _swift_task_switch(sub_1002A571C, v31, 0);
  }
}

uint64_t sub_1002A9078()
{
  v2 = *v1;
  *(*v1 + 1768) = v0;

  if (v0)
  {
    v3 = *(v2 + 752);

    v4 = sub_1002AA8C8;
  }

  else
  {
    v3 = *(v2 + 752);

    v4 = sub_1002A9220;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002A9220()
{
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1296);
  v3 = *(v0 + 1288);
  v4 = *(v0 + 1168);
  v5 = *(v0 + 1128);
  v6 = *(v0 + 1040);
  v7 = *(v0 + 1032);
  v8 = *(v0 + 1000);
  sub_10000B3A8(*(v0 + 1120), &qword_10169C9C8, &qword_101398A58);
  v3(v7, v8);
  v3(v6, v8);
  v1(v5, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + 1704);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_166;
  }

LABEL_2:
  v12 = v10[2];
  v11 = v10[3];
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    v10 = sub_100A5C854((v11 > 1), v12 + 1, 1, v10);
  }

  v14 = *(v0 + 1568);
  v15 = *(v0 + 848);
  v16 = *(v0 + 840);
  v17 = *(v0 + 1696) + 1;
  v10[2] = v13;
  sub_1002DB7C8(v15, v10 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12, type metadata accessor for KeyDropFetchItem);
  v152 = v0;
  if (v17 == v14)
  {

    sub_10039845C(*(v0 + 1672));

    v18 = *(v0 + 1200);
    v19 = *(v0 + 1512) + 1;
    sub_100007BAC((v0 + 224));
    if (v19 == v18)
    {
      v145 = *(v0 + 712);
      sub_10000B3A8(*(v0 + 1160), &qword_10169C9C8, &qword_101398A58);

      v20 = *(v0 + 8);

      return v20(v10, v145);
    }

    else
    {
      v91 = *(v0 + 1512);
      *(v0 + 1520) = v10;
      *(v0 + 1512) = v91 + 1;
      v92 = *(v0 + 1232);
      sub_10001F280(*(v0 + 744) + 40 * v91 + 72, v0 + 224);
      v93 = *(v0 + 248);
      v94 = *(v0 + 256);
      sub_1000035D0((v0 + 224), v93);
      (*(*(*(v94 + 8) + 8) + 32))(v93);

      return _swift_task_switch(sub_1002A571C, v92, 0);
    }
  }

  v22 = *(v0 + 1768);
  v23 = *(v0 + 1696) + 1;
  *(v0 + 1704) = v10;
  *(v0 + 1696) = v23;
  v24 = *(v0 + 1544);
  if (v23 >= *(v24 + 16))
  {
    goto LABEL_172;
  }

  v150 = v22;
  v25 = *(v0 + 1804);
  v26 = *(v0 + 1800);
  v27 = *(v0 + 1796);
  v28 = *(v0 + 1240);
  v29 = *(v0 + 1040);
  v30 = *(v0 + 1032);
  v31 = *(v0 + 1000);
  v32 = *(v0 + 776);
  sub_1002DB760(v24 + ((*(v0 + 1808) + 32) & ~*(v0 + 1808)) + *(*(v0 + 768) + 72) * v23, v32, type metadata accessor for OwnerSharingCircle);
  v28(v29, v32 + v27, v31);
  v28(v30, v32 + v26, v31);
  v2 = v0;
  LOBYTE(v29) = *(v32 + v25);
  sub_1002DBBF0(v32, type metadata accessor for OwnerSharingCircle);
  *(v0 + 1827) = 0x4000201u >> (8 * v29);
  v33 = *(v0 + 1688);
  v34 = *(v152 + 1128);
  v35 = *(v152 + 1104);
  sub_1000D2A70(*(v2 + 1160), *(v2 + 1128), &qword_10169C9C8, &qword_101398A58);
  v147 = *(v34 + *(v35 + 48));
  v36 = _swiftEmptyArrayStorage;
  if (!v33)
  {
LABEL_123:
    *(v2 + 1712) = v36;
    v95 = *(v2 + 1120);
    v96 = *(v2 + 1112);
    v97 = *(v2 + 1104);
    (*(v2 + 1184))(v95, *(v2 + 1128), *(v2 + 1168));
    *(v95 + *(v97 + 48)) = v147;
    sub_1000D2A70(v95, v96, &qword_10169C9C8, &qword_101398A58);
    v98 = *(v96 + *(v97 + 48));
    v99 = swift_task_alloc();
    *(v2 + 1720) = v99;
    *v99 = v2;
    v99[1] = sub_1002A8370;
    v100 = *(v2 + 1112);
    v101 = *(v2 + 1032);
    v102 = *(v2 + 1040);

    return sub_1002AB558(v102, v101, v100, v98);
  }

  v37 = (v152 + 568);
  v38 = *(v152 + 1688);
  v0 = *(v152 + 1672);
  v10 = *(v152 + 936);
  *(v152 + 584) = _swiftEmptyArrayStorage;
  v146 = (v152 + 560);
  sub_1011247A4(0, v38, 0);
  v39 = 0;
  v36 = *(v152 + 584);
  v148 = v0 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v12 = v150;
  while (1)
  {
    if (v39 >= *(*(v2 + 1672) + 16))
    {
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      v10 = sub_100A5C854(0, v10[2] + 1, 1, v10);
      goto LABEL_2;
    }

    v149 = v39;
    v151 = v36;
    v40 = *(v2 + 944);
    sub_1002DB760(v148 + *(*(v2 + 936) + 72) * v39, v40, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v13 = *v40;
    v41 = v40[1];
    v10 = (v41 >> 62);
    if ((v41 >> 62) > 1)
    {
      if (v10 != 2)
      {
        v44 = 0;
        v42 = 0;
        v45 = 0;
        v43 = 0;
        goto LABEL_24;
      }

      v42 = *(v13 + 16);
      v44 = *(v13 + 24);
    }

    else
    {
      if (!v10)
      {
        v42 = 0;
        v43 = 0;
        v44 = BYTE6(v41);
        v45 = BYTE6(v41);
        goto LABEL_24;
      }

      v42 = v13;
      v44 = v13 >> 32;
    }

    sub_100017D5C(v13, v41);
    if (v44 < v42)
    {
      goto LABEL_161;
    }

    if (v10 == 2)
    {
      v43 = *(v13 + 16);
      v45 = *(v13 + 24);
    }

    else
    {
      v43 = v13;
      v45 = v13 >> 32;
    }

LABEL_24:
    if (v45 < v44 || v44 < v43)
    {
      goto LABEL_162;
    }

    if (__OFSUB__(v44, v42))
    {
      goto LABEL_163;
    }

    if ((v44 - v42) < 0x39)
    {
      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_51;
        }

        v46 = v13 >> 32;
LABEL_47:
        v49 = v13;
        goto LABEL_50;
      }

      if (v10 != 2)
      {
        goto LABEL_51;
      }

      v46 = *(v13 + 24);
LABEL_49:
      v49 = *(v13 + 16);
      goto LABEL_50;
    }

    v46 = v42 + 57;
    if (__OFADD__(v42, 57))
    {
      goto LABEL_168;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v47 = *(v13 + 16);
        v48 = *(v13 + 24);
      }

      else
      {
        v48 = 0;
        v47 = 0;
      }
    }

    else if (v10)
    {
      v47 = v13;
      v48 = v13 >> 32;
    }

    else
    {
      v47 = 0;
      v48 = BYTE6(v41);
    }

    if (v48 < v46 || v46 < v47)
    {
      goto LABEL_169;
    }

    v49 = 0;
    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    if (v10 != 3)
    {
      goto LABEL_49;
    }

LABEL_50:
    if (v46 < v49)
    {
      goto LABEL_164;
    }

LABEL_51:
    v50 = Data._Representation.subscript.getter();
    v52 = v51;
    sub_100016590(v13, v41);
    v53 = v52 >> 62;
    if ((v52 >> 62) > 1)
    {
      if (v53 != 2)
      {
        goto LABEL_126;
      }

      v56 = *(v50 + 16);
      v55 = *(v50 + 24);
      v57 = __OFSUB__(v55, v56);
      v54 = v55 - v56;
      if (v57)
      {
        goto LABEL_173;
      }
    }

    else if (v53)
    {
      LODWORD(v54) = HIDWORD(v50) - v50;
      if (__OFSUB__(HIDWORD(v50), v50))
      {
        goto LABEL_174;
      }

      v54 = v54;
    }

    else
    {
      v54 = BYTE6(v52);
    }

    if (v54 != 57)
    {
LABEL_126:
      sub_100016590(v50, v52);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    *v37 = 0;
    if (v53 == 2)
    {
      v13 = *(v50 + 16);
    }

    else
    {
      if (v53 != 1)
      {
        *(v2 + 1812) = v50;
        *(v2 + 1820) = v52;
        *(v2 + 1822) = BYTE2(v52);
        *(v2 + 1823) = BYTE3(v52);
        *(v2 + 1824) = BYTE4(v52);
        *(v2 + 1825) = BYTE5(v52);
        v58 = CCECCryptorImportKey();
        sub_100016590(v50, v52);
        sub_100016590(v50, v52);
        if (v58)
        {
          goto LABEL_127;
        }

        goto LABEL_70;
      }

      v13 = v50;
      if (v50 > v50 >> 32)
      {
        goto LABEL_175;
      }
    }

    sub_100017D5C(v50, v52);
    sub_100017D5C(v50, v52);
    sub_100017D5C(v50, v52);
    v58 = sub_1002DB9D8(v13, v52 & 0x3FFFFFFFFFFFFFFFLL, 0, v50, v52, 0, v37);
    sub_100016590(v50, v52);
    sub_100016590(v50, v52);
    sub_100016590(v50, v52);
    if (v12)
    {
      goto LABEL_150;
    }

    if (v58)
    {
LABEL_127:
      v103 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v104 = *(v2 + 824);
      v105 = qword_10177BA00;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_101385D80;
      *(v106 + 56) = &type metadata for Int32;
      *(v106 + 64) = &protocol witness table for Int32;
      *(v106 + 32) = v58;
      os_log(_:dso:log:_:_:)(v103, &_mh_execute_header, v105, "Error running CCECCryptorImportKey. Code: %d.", v144);

      CryptoError.init(rawValue:)();
      v107 = type metadata accessor for CryptoError();
      sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
      v108 = swift_allocError();
      v110 = v109;
      v111 = *(v107 - 8);
      v112 = *(v111 + 48);
      v113 = v112(v104, 1, v107);
      v114 = *(v2 + 824);
      if (v113 == 1)
      {
        (*(v111 + 104))(v110, enum case for CryptoError.unspecifiedError(_:), v107);
        if (v112(v114, 1, v107) != 1)
        {
          sub_10000B3A8(*(v2 + 824), &qword_10169C9A0, &unk_1013D5A40);
        }
      }

      else
      {
        (*(v111 + 32))(v110, *(v2 + 824), v107);
      }

      swift_willThrow();
      v12 = v108;
      goto LABEL_150;
    }

LABEL_70:
    v59 = *v37;
    if (!*v37)
    {
      v115 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        v143 = v115;
        swift_once();
        v115 = v143;
      }

      os_log(_:dso:log:_:_:)(v115, &_mh_execute_header, qword_10177BA00, "CryptoUtil: diversifyKey: CryptorRef was not populated as expected.", 67, 2, _swiftEmptyArrayStorage);
      v116 = type metadata accessor for CryptoError();
      sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
      v117 = swift_allocError();
      (*(*(v116 - 8) + 104))(v118, enum case for CryptoError.unspecifiedError(_:), v116);
      swift_willThrow();
      v12 = v117;
      goto LABEL_150;
    }

    *(v2 + 552) = 57;
    type metadata accessor for __DataStorage();
    swift_allocObject();
    v60 = __DataStorage.init(length:)();
    *(v2 + 520) = 0x3900000000;
    *(v2 + 528) = v60 | 0x4000000000000000;
    v61 = sub_100A7AF80((v2 + 520), 2, v2 + 552, 0, v59);
    if (v12)
    {
      v2 = v152;
      goto LABEL_149;
    }

    v62 = v61;
    if (v61)
    {
      break;
    }

    v2 = *(v152 + 552);
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_165;
    }

    v13 = *(v152 + 520);
    v12 = *(v152 + 528);
    v63 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v63 == 2)
      {
        v64 = *(v13 + 16);
        v65 = *(v13 + 24);
      }

      else
      {
        v65 = 0;
        v64 = 0;
      }
    }

    else if (v63)
    {
      v64 = v13;
      v65 = v13 >> 32;
    }

    else
    {
      v64 = 0;
      v65 = BYTE6(v12);
    }

    v66 = sub_10002F330(v64, v65, *(v152 + 520), *(v152 + 528));
    if (v2 && v66 < v2)
    {
      if (v63 <= 1)
      {
        if (!v63)
        {
          goto LABEL_106;
        }

        v67 = v13 >> 32;
LABEL_102:
        v70 = v13;
        goto LABEL_105;
      }

      if (v63 != 2)
      {
        goto LABEL_106;
      }

      v67 = *(v13 + 24);
LABEL_104:
      v70 = *(v13 + 16);
      goto LABEL_105;
    }

    v67 = v64 + v2;
    if (__OFADD__(v64, v2))
    {
      goto LABEL_170;
    }

    if (v63 > 1)
    {
      if (v63 == 2)
      {
        v68 = *(v13 + 16);
        v69 = *(v13 + 24);
      }

      else
      {
        v69 = 0;
        v68 = 0;
      }
    }

    else if (v63)
    {
      v68 = v13;
      v69 = v13 >> 32;
    }

    else
    {
      v68 = 0;
      v69 = BYTE6(v12);
    }

    if (v69 < v67 || v67 < v68)
    {
      goto LABEL_171;
    }

    v70 = 0;
    if (v63 <= 1)
    {
      if (!v63)
      {
        goto LABEL_105;
      }

      goto LABEL_102;
    }

    if (v63 != 3)
    {
      goto LABEL_104;
    }

LABEL_105:
    if (v67 < v70)
    {
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      swift_once();
      goto LABEL_151;
    }

LABEL_106:
    v71 = Data._Representation.subscript.getter();
    v73 = v72;
    sub_100016590(v13, v12);
    CCECCryptorRelease();
    v74 = v73 >> 62;
    if ((v73 >> 62) > 1)
    {
      if (v74 != 2)
      {
        v131 = 0;
        goto LABEL_157;
      }

      v77 = *(v71 + 16);
      v76 = *(v71 + 24);
      v57 = __OFSUB__(v76, v77);
      v75 = v76 - v77;
      if (v57)
      {
        goto LABEL_176;
      }
    }

    else if (v74)
    {
      LODWORD(v75) = HIDWORD(v71) - v71;
      if (__OFSUB__(HIDWORD(v71), v71))
      {
        goto LABEL_177;
      }

      v75 = v75;
    }

    else
    {
      v75 = BYTE6(v73);
    }

    if (v75 != 28)
    {
      if (v74 == 2)
      {
        v140 = *(v71 + 16);
        v139 = *(v71 + 24);
        v131 = v139 - v140;
        if (!__OFSUB__(v139, v140))
        {
          goto LABEL_157;
        }

        __break(1u);
      }

      else if (v74 == 1)
      {
        if (__OFSUB__(HIDWORD(v71), v71))
        {
          __break(1u);
        }

        v131 = HIDWORD(v71) - v71;
        goto LABEL_157;
      }

      v131 = BYTE6(v73);
LABEL_157:
      sub_100018350();
      v137 = swift_allocError();
      *v141 = 28;
      *(v141 + 8) = v131;
      *(v141 + 16) = 0;
      swift_willThrow();
      sub_100016590(v71, v73);
      v2 = v152;
      goto LABEL_158;
    }

    v2 = v152;
    v78 = *(v152 + 1776);
    v79 = *(v152 + 944);
    v80 = *(v152 + 808);
    v81 = *(v152 + 800);
    v82 = *(v152 + 792);
    sub_100016590(v50, v52);
    (*(v81 + 104))(v80, v78, v82);
    v83 = Data.hash(algorithm:)();
    v85 = v84;
    sub_100016590(v71, v73);
    v86 = *(v81 + 8);
    v0 = v81 + 8;
    v86(v80, v82);
    sub_1002DBBF0(v79, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v36 = v151;
    *(v152 + 584) = v151;
    v88 = v151[2];
    v87 = v151[3];
    v10 = (v88 + 1);
    if (v88 >= v87 >> 1)
    {
      sub_1011247A4((v87 > 1), v88 + 1, 1);
      v36 = *(v152 + 584);
    }

    v12 = 0;
    v39 = v149 + 1;
    v89 = *(v152 + 1688);
    v36[2] = v10;
    v90 = &v36[2 * v88];
    v90[4] = v83;
    v90[5] = v85;
    v37 = (v152 + 568);
    if (v149 + 1 == v89)
    {
      goto LABEL_123;
    }
  }

  v119 = static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    swift_once();
  }

  v120 = *(v152 + 816);
  v121 = qword_10177BA00;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_101385D80;
  *(v122 + 56) = &type metadata for Int32;
  *(v122 + 64) = &protocol witness table for Int32;
  *(v122 + 32) = v62;
  v2 = v152;
  os_log(_:dso:log:_:_:)(v119, &_mh_execute_header, v121, "Error running CCECCryptorExportKey. Code: %d.", v144);

  CryptoError.init(rawValue:)();
  v123 = type metadata accessor for CryptoError();
  sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
  v124 = swift_allocError();
  v126 = v125;
  v127 = *(v123 - 8);
  v128 = *(v127 + 48);
  v129 = v128(v120, 1, v123);
  v130 = *(v152 + 816);
  if (v129 == 1)
  {
    (*(v127 + 104))(v126, enum case for CryptoError.unspecifiedError(_:), v123);
    if (v128(v130, 1, v123) != 1)
    {
      sub_10000B3A8(*(v152 + 816), &qword_10169C9A0, &unk_1013D5A40);
    }
  }

  else
  {
    (*(v127 + 32))(v126, *(v152 + 816), v123);
  }

  swift_willThrow();
  v12 = v124;
LABEL_149:
  sub_100016590(*(v2 + 520), *(v2 + 528));
LABEL_150:
  v13 = static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_178;
  }

LABEL_151:
  v132 = qword_10177BA00;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_101385D80;
  *v146 = v12;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v134 = String.init<A>(describing:)();
  v136 = v135;
  *(v133 + 56) = &type metadata for String;
  *(v133 + 64) = sub_100008C00();
  *(v133 + 32) = v134;
  *(v133 + 40) = v136;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v132, "Error deriving advertisementKey: %@", 35, 2, v133);

  sub_1001BAF88();
  v137 = swift_allocError();
  *v138 = 0;
  swift_willThrow();

LABEL_158:
  _StringGuts.grow(_:)(35);
  *(v2 + 424) = 0;
  *(v2 + 432) = 0xE000000000000000;
  v142._countAndFlagsBits = 0xD000000000000021;
  v142._object = 0x800000010134CB30;
  String.append(_:)(v142);
  *(v2 + 736) = v137;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002AA8C8()
{
  v35 = v0;
  v1 = v0[161];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[125];
  sub_10000B3A8(v0[140], &qword_10169C9C8, &qword_101398A58);
  v1(v3, v4);
  v1(v2, v4);
  v5 = v0[218];
  v6 = v0[146];
  v7 = v0[141];

  v5(v7, v6);
  v33 = v0[213];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177A818);
  sub_10001F280((v0 + 28), (v0 + 38));
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v32 = v0[161];
    v11 = v0[137];
    v12 = v0[125];
    v13 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    v15 = v0[41];
    v14 = v0[42];
    sub_1000035D0(v0 + 38, v15);
    (*(*(*(v14 + 8) + 8) + 32))(v15);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v32(v11, v12);
    sub_100007BAC(v0 + 38);
    v19 = sub_1000136BC(v16, v18, v34);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2080;
    swift_getErrorValue();
    v20 = Error.localizedDescription.getter();
    v22 = sub_1000136BC(v20, v21, v34);

    *(v13 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v9, v10, "Could not create fetch item for owned beacon %{private,mask.hash}s, error: %s.", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC(v0 + 38);
  }

  v23 = v0[150];
  v24 = v0[189] + 1;
  sub_100007BAC(v0 + 28);
  if (v24 == v23)
  {
    v31 = v0[89];
    sub_10000B3A8(v0[145], &qword_10169C9C8, &qword_101398A58);

    v25 = v0[1];

    return v25(v33, v31);
  }

  else
  {
    v27 = v0[189];
    v0[190] = v33;
    v0[189] = v27 + 1;
    v28 = v0[154];
    sub_10001F280(v0[93] + 40 * v27 + 72, (v0 + 28));
    v29 = v0[31];
    v30 = v0[32];
    sub_1000035D0(v0 + 28, v29);
    (*(*(*(v30 + 8) + 8) + 32))(v29);

    return _swift_task_switch(sub_1002A571C, v28, 0);
  }
}

uint64_t sub_1002AAF3C()
{
  v29 = v0;
  v1 = v0[98];

  sub_1002DBBF0(v1, type metadata accessor for OwnerSharingCircle);
  v27 = v0[190];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A818);
  sub_10001F280((v0 + 28), (v0 + 38));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v26 = v0[161];
    v5 = v0[137];
    v6 = v0[125];
    v7 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = v0[41];
    v8 = v0[42];
    sub_1000035D0(v0 + 38, v9);
    (*(*(*(v8 + 8) + 8) + 32))(v9);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v26(v5, v6);
    sub_100007BAC(v0 + 38);
    v13 = sub_1000136BC(v10, v12, v28);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2080;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = sub_1000136BC(v14, v15, v28);

    *(v7 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not create fetch item for owned beacon %{private,mask.hash}s, error: %s.", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC(v0 + 38);
  }

  v17 = v0[150];
  v18 = v0[189] + 1;
  sub_100007BAC(v0 + 28);
  if (v18 == v17)
  {
    v25 = v0[89];
    sub_10000B3A8(v0[145], &qword_10169C9C8, &qword_101398A58);

    v19 = v0[1];

    return v19(v27, v25);
  }

  else
  {
    v21 = v0[189];
    v0[190] = v27;
    v0[189] = v21 + 1;
    v22 = v0[154];
    sub_10001F280(v0[93] + 40 * v21 + 72, (v0 + 28));
    v23 = v0[31];
    v24 = v0[32];
    sub_1000035D0(v0 + 28, v23);
    (*(*(*(v24 + 8) + 8) + 32))(v23);

    return _swift_task_switch(sub_1002A571C, v22, 0);
  }
}

uint64_t sub_1002AB558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[33] = a4;
  v5[34] = v4;
  v5[31] = a1;
  v5[32] = a2;
  v7 = type metadata accessor for SymmetricKey();
  v5[35] = v7;
  v5[36] = *(v7 - 8);
  v5[37] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v5[38] = v8;
  v9 = *(v8 - 8);
  v5[39] = v9;
  v5[40] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v5[41] = v10;
  v11 = *(v10 - 8);
  v5[42] = v11;
  v5[43] = *(v11 + 64);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_10169C9C8, &qword_101398A58);
  v5[48] = v12;
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v13 = swift_task_alloc();
  v5[52] = v13;
  (*(v9 + 16))();
  *(v13 + *(v12 + 48)) = a4;

  return _swift_task_switch(sub_1002AB7B8, v4, 0);
}

uint64_t sub_1002AB7B8()
{
  v42 = v0;
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[50];
  v4 = v0[47];
  v5 = v0[41];
  v6 = v0[42];
  v7 = v0[32];
  v8 = type metadata accessor for Logger();
  v0[53] = sub_1000076D4(v8, qword_10177A818);
  v9 = *(v6 + 16);
  v0[54] = v9;
  v0[55] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v4, v7, v5);
  sub_1000D2A70(v2, v1, &qword_10169C9C8, &qword_101398A58);
  sub_1000D2A70(v2, v3, &qword_10169C9C8, &qword_101398A58);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[51];
  if (v12)
  {
    v14 = v0[49];
    v37 = v0[50];
    v38 = v0[48];
    v40 = v11;
    v15 = v0[47];
    v16 = v0[41];
    v17 = v0[42];
    log = v10;
    v18 = v0[39];
    v35 = v0[40];
    v36 = v0[38];
    v19 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v19 = 141558787;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v17 + 8))(v15, v16);
    v23 = sub_1000136BC(v20, v22, &v41);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2080;
    sub_1000D2A70(v13, v14, &qword_10169C9C8, &qword_101398A58);
    (*(v18 + 32))(v35, v14, v36);
    sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v27 = *(v18 + 8);
    v27(v35, v36);
    sub_10000B3A8(v13, &qword_10169C9C8, &qword_101398A58);
    v28 = sub_1000136BC(v24, v26, &v41);

    *(v19 + 24) = v28;
    *(v19 + 32) = 2048;
    sub_1000D2A70(v37, v14, &qword_10169C9C8, &qword_101398A58);
    v29 = *(v14 + *(v38 + 48));
    v27(v14, v36);
    sub_10000B3A8(v37, &qword_10169C9C8, &qword_101398A58);
    *(v19 + 34) = v29;
    _os_log_impl(&_mh_execute_header, log, v40, "Bundle Decryption for shareId: %{private,mask.hash}s for dateInterval: %s + %ld days count.", v19, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v30 = v0[47];
    v31 = v0[41];
    v32 = v0[42];
    sub_10000B3A8(v0[50], &qword_10169C9C8, &qword_101398A58);

    sub_10000B3A8(v13, &qword_10169C9C8, &qword_101398A58);
    (*(v32 + 8))(v30, v31);
  }

  v33 = *(v0[34] + 136);
  v0[56] = v33;

  return _swift_task_switch(sub_1002ABC14, v33, 0);
}

uint64_t sub_1002ABC14()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 368);
  v3 = *(v0 + 336);
  v4 = *(v0 + 328);
  (*(v0 + 432))(v2, *(v0 + 248), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 456) = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 464) = v7;
  v8 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v7 = v0;
  v7[1] = sub_1002ABD84;

  return unsafeBlocking<A>(context:_:)(v0 + 120, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC7C, v6, v8);
}

uint64_t sub_1002ABD84()
{
  v1 = *(*v0 + 272);

  return _swift_task_switch(sub_1002ABEB0, v1, 0);
}

uint64_t sub_1002ABEB0()
{
  if (*(v0 + 144))
  {
    sub_10000A748((v0 + 120), v0 + 80);
    v1 = swift_task_alloc();
    *(v0 + 472) = v1;
    *v1 = v0;
    v1[1] = sub_1002AC08C;
    v2 = *(v0 + 416);

    return sub_1002ACE6C(v0 + 80, v2);
  }

  else
  {
    v4 = *(v0 + 416);
    sub_10000B3A8(v0 + 120, &qword_101696920, &unk_10138B200);
    sub_1001BAB50();
    swift_allocError();
    *v5 = 5;
    swift_willThrow();
    sub_10000B3A8(v4, &qword_10169C9C8, &qword_101398A58);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1002AC08C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 480) = a1;
  *(v4 + 488) = v1;

  v5 = *(v3 + 272);
  if (v1)
  {
    v6 = sub_1002ACD60;
  }

  else
  {
    v6 = sub_1002AC1C0;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_1002AC1C0()
{
  v2 = v0[60];
  if (v2)
  {
    v3 = v2 / 0x60 + 1;
  }

  else
  {
    v3 = 0;
  }

  v0[62] = v3;
  v4 = v0[33];
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  if (v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = __OFADD__(v6, 1);
  v7 = v6 + 1;
  if (v5)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  if (v7 <= 1)
  {
    v7 = 1;
  }

  if (v3 < v7)
  {
    goto LABEL_14;
  }

  v8 = *(v0[34] + 128);
  v0[65] = _swiftEmptyArrayStorage;
  v0[63] = v8;
  v0[64] = v7;
  v9 = swift_task_alloc();
  v0[66] = v9;
  *v9 = v0;
  v9[1] = sub_1002AC2C4;
  v10 = v0[32];

  sub_100C7BA0C((v0 + 2), v10);
}

uint64_t sub_1002AC2C4()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    *(v2 + 576) = v0;
    v3 = *(v2 + 504);
    v4 = sub_1002ACBE8;
  }

  else
  {
    v3 = *(v2 + 504);
    v4 = sub_1002AC3EC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002AC3EC()
{
  v1 = *(v0 + 40);
  if (v1 >> 60 == 15)
  {
    sub_1001BAEE0();
    v2 = swift_allocError();
    *v3 = 8;
    swift_willThrow();
    sub_1001BAF34(v0 + 16);
    *(v0 + 576) = v2;
    v4 = *(v0 + 504);
    v5 = sub_1002ACBE8;
    goto LABEL_8;
  }

  v6 = *(v0 + 512);
  v7 = *(v0 + 32);
  sub_100017D5C(v7, *(v0 + 40));
  sub_100D0854C(v7, v1, v6);
  sub_100006654(v7, v1);
  v5 = sub_1001BAF34(v0 + 16);
  if (!is_mul_ok(v6, 0x60uLL))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return _swift_task_switch(v5, v4, v8);
  }

  *(v0 + 544) = 96 * v6;
  v9 = 96 * v6 - 96;
  if (v9 <= 1)
  {
    v9 = 1;
  }

  *(v0 + 552) = v9;
  if (96 * v6 - 1 < v9)
  {
    goto LABEL_12;
  }

  v11 = *(v0 + 288);
  v10 = *(v0 + 296);
  v13 = *(v0 + 272);
  v12 = *(v0 + 280);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  (*(v11 + 8))(v10, v12);
  *(v0 + 560) = *(v0 + 160);
  v5 = sub_1002AC594;
  v4 = v13;
LABEL_8:
  v8 = 0;

  return _swift_task_switch(v5, v4, v8);
}

uint64_t sub_1002AC594()
{
  v67 = v0;
  sub_100017D5C(*(v0 + 560), *(v0 + 568));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 520);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100A5C70C(0, *(v2 + 2) + 1, 1, v2);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  v5 = v4 + 1;
  if (v4 >= v3 >> 1)
  {
    v57 = sub_100A5C70C((v3 > 1), v4 + 1, 1, v2);
    v5 = v4 + 1;
    v2 = v57;
  }

  v6 = *(v0 + 568);
  v7 = *(v0 + 560);
  v8 = *(v0 + 552);
  v9 = *(v0 + 512);
  v10 = *(v0 + 432);
  v12 = *(v0 + 352);
  v11 = *(v0 + 360);
  v13 = *(v0 + 328);
  v15 = *(v0 + 248);
  v14 = *(v0 + 256);
  v16 = *(v0 + 544) - 1;
  *(v2 + 2) = v5;
  v65 = v2;
  v17 = &v2[40 * v4];
  *(v17 + 4) = v9;
  *(v17 + 5) = v8;
  *(v17 + 6) = v16;
  *(v17 + 7) = v7;
  *(v17 + 8) = v6;
  v10(v11, v14, v13);
  v10(v12, v15, v13);
  sub_100017D5C(v7, v6);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  sub_100016590(v7, v6);
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 568);
  v22 = *(v0 + 560);
  if (v20)
  {
    v58 = *(v0 + 512);
    v59 = *(v0 + 552);
    v63 = v19;
    v24 = *(v0 + 352);
    v23 = *(v0 + 360);
    v26 = *(v0 + 328);
    v25 = *(v0 + 336);
    v60 = *(v0 + 544) - 1;
    v64 = *(v0 + 560);
    v27 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v27 = 141559555;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    log = v18;
    v62 = v21;
    v30 = v29;
    v31 = *(v25 + 8);
    v31(v23, v26);
    v32 = sub_1000136BC(v28, v30, &v66);

    *(v27 + 14) = v32;
    *(v27 + 22) = 2160;
    *(v27 + 24) = 1752392040;
    *(v27 + 32) = 2081;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v31(v24, v26);
    v36 = sub_1000136BC(v33, v35, &v66);

    *(v27 + 34) = v36;
    *(v27 + 42) = 2082;
    strcpy((v0 + 176), ".secondary/(");
    *(v0 + 189) = 0;
    *(v0 + 190) = -5120;
    *(v0 + 224) = v58;
    v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v37);

    v38._countAndFlagsBits = 41;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
    v39 = sub_1000136BC(*(v0 + 176), *(v0 + 184), &v66);

    *(v27 + 44) = v39;
    *(v27 + 52) = 2080;
    *(v0 + 192) = 0x7972616D6972702ELL;
    *(v0 + 200) = 0xEA0000000000282FLL;
    *(v0 + 232) = v59;
    v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v40);

    v41._countAndFlagsBits = 41;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    v42 = sub_1000136BC(*(v0 + 192), *(v0 + 200), &v66);

    *(v27 + 54) = v42;
    *(v27 + 62) = 2080;
    *(v0 + 208) = 0x7972616D6972702ELL;
    *(v0 + 216) = 0xEA0000000000282FLL;
    *(v0 + 240) = v60;
    v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v43);

    v44._countAndFlagsBits = 41;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    v45 = sub_1000136BC(*(v0 + 208), *(v0 + 216), &v66);

    *(v27 + 64) = v45;
    _os_log_impl(&_mh_execute_header, log, v63, "Create bundle decryption for shareId: %{private,mask.hash}s,\nbeacon: %{private,mask.hash}s\nsecondaryBucket: %{public}s, start:%s\nto end: %s.", v27, 0x48u);
    swift_arrayDestroy();

    sub_100016590(v64, v62);
  }

  else
  {
    v47 = *(v0 + 352);
    v46 = *(v0 + 360);
    v49 = *(v0 + 328);
    v48 = *(v0 + 336);

    sub_100016590(v22, v21);
    v50 = *(v48 + 8);
    v50(v47, v49);
    v50(v46, v49);
  }

  v51 = *(v0 + 512);
  if (*(v0 + 496) == v51)
  {
    v52 = *(v0 + 416);
    sub_100007BAC((v0 + 80));
    sub_10000B3A8(v52, &qword_10169C9C8, &qword_101398A58);

    v53 = *(v0 + 8);

    return v53(v65);
  }

  else
  {
    *(v0 + 520) = v65;
    *(v0 + 512) = v51 + 1;
    v55 = swift_task_alloc();
    *(v0 + 528) = v55;
    *v55 = v0;
    v55[1] = sub_1002AC2C4;
    v56 = *(v0 + 256);

    return sub_100C7BA0C(v0 + 16, v56);
  }
}

uint64_t sub_1002ACBE8()
{
  v1 = *(v0 + 272);

  return _swift_task_switch(sub_1002ACC54, v1, 0);
}

uint64_t sub_1002ACC54()
{
  v1 = v0[52];
  sub_100007BAC(v0 + 10);
  sub_10000B3A8(v1, &qword_10169C9C8, &qword_101398A58);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002ACD60()
{
  v1 = v0[52];
  sub_100007BAC(v0 + 10);
  sub_10000B3A8(v1, &qword_10169C9C8, &qword_101398A58);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002ACE6C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for DateInterval();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_1002ACFA4, v2, 0);
}

uint64_t sub_1002ACFA4(uint64_t a1)
{
  Date.timeIntervalSince1970.getter();
  v2 = v1[12];
  v3 = v1[13];
  v5 = v1[10];
  v4 = v1[11];
  v6 = v1[9];
  v7 = v1[4];
  v8 = v1[5];
  Date.init(timeIntervalSince1970:)();
  v9 = *(v5 + 16);
  v9(v2, v3, v6);
  v9(v4, v7, v6);
  DateInterval.init(start:end:)();
  v10 = *(v8 + 136);
  v1[14] = v10;

  return _swift_task_switch(sub_1002AD0C0, v10, 0);
}

uint64_t sub_1002AD0C0()
{

  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1002AD1A0;
  v3 = *(v0 + 112);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1002AD1A0()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_1002AD2B8, v1, 0);
}

uint64_t sub_1002AD2B8()
{
  v0[16] = v0[2];
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1002AD370;
  v2 = v0[8];
  v3 = v0[3];

  return sub_100A83E64(v3, v2, 1);
}

uint64_t sub_1002AD370(uint64_t a1, uint64_t a2)
{
  v5 = *v3;

  if (v2)
  {
  }

  else
  {
    v7 = *(v5 + 40);
    *(v5 + 144) = a2;

    return _swift_task_switch(sub_1002AD4AC, v7, 0);
  }
}

uint64_t sub_1002AD4AC()
{
  v1 = v0[13];
  v2 = v0[10];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];
  v8 = v0[18];

  return v7(v8);
}

uint64_t sub_1002AD58C@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  sub_1000035D0(a1, v9);
  (*(*(*(v10 + 8) + 8) + 32))(v9);
  sub_1012DFD84(v8, 1);
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v16 = v11;
  v17 = v12;
  v18 = v13;
  v19 = v14;
  result = (*(v6 + 8))(v8, v5);
  *a2 = v16;
  a2[1] = v17;
  a2[2] = v18;
  a2[3] = v19;
  return result;
}

uint64_t sub_1002AD6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[81] = v5;
  v6[80] = a5;
  v6[79] = a4;
  v6[78] = a2;
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v6[82] = swift_task_alloc();
  v6[83] = type metadata accessor for BeaconPayloadv1(0);
  v6[84] = swift_task_alloc();
  v6[85] = swift_task_alloc();
  v6[86] = swift_task_alloc();
  v6[87] = swift_task_alloc();
  v6[88] = *(type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo(0) - 8);
  v6[89] = swift_task_alloc();
  v7 = type metadata accessor for HashAlgorithm();
  v6[90] = v7;
  v6[91] = *(v7 - 8);
  v6[92] = swift_task_alloc();
  v8 = type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey(0);
  v6[93] = v8;
  v6[94] = *(v8 - 8);
  v6[95] = swift_task_alloc();
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  v6[98] = swift_task_alloc();
  v6[99] = swift_task_alloc();
  v9 = type metadata accessor for RawSearchResult(0);
  v6[100] = v9;
  v6[101] = *(v9 - 8);
  v6[102] = swift_task_alloc();
  v6[103] = swift_task_alloc();
  v6[104] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v6[105] = v10;
  v6[106] = *(v10 - 8);
  v6[107] = swift_task_alloc();
  v6[108] = swift_task_alloc();
  v11 = type metadata accessor for Connection.TransactionMode();
  v6[109] = v11;
  v6[110] = *(v11 - 8);
  v6[111] = swift_task_alloc();
  v12 = type metadata accessor for Table();
  v6[112] = v12;
  v6[113] = *(v12 - 8);
  v6[114] = swift_task_alloc();
  v13 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v6[115] = v13;
  v6[116] = *(v13 - 8);
  v6[117] = swift_task_alloc();
  v6[118] = swift_task_alloc();
  v6[119] = swift_task_alloc();
  v6[120] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v6[121] = swift_task_alloc();
  v6[122] = swift_task_alloc();
  v6[123] = swift_task_alloc();
  v6[124] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169C968, &qword_101398A10);
  v6[125] = swift_task_alloc();
  v6[126] = swift_task_alloc();
  v14 = sub_1000BC4D4(&qword_10169C970, &qword_101398A18);
  v6[127] = v14;
  v6[128] = *(v14 - 8);
  v6[129] = swift_task_alloc();
  v6[130] = swift_task_alloc();
  v6[131] = swift_task_alloc();
  v6[132] = swift_task_alloc();
  v6[133] = swift_task_alloc();
  v6[134] = swift_task_alloc();
  v6[135] = swift_task_alloc();
  v6[136] = swift_task_alloc();
  v6[137] = swift_task_alloc();
  v6[138] = swift_task_alloc();
  v6[139] = swift_task_alloc();
  v6[140] = swift_task_alloc();
  v6[141] = swift_task_alloc();
  v6[142] = swift_task_alloc();
  v6[143] = swift_task_alloc();
  v6[144] = swift_task_alloc();
  v6[145] = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v6[146] = swift_task_alloc();
  v15 = type metadata accessor for OwnerSharingCircle(0);
  v6[147] = v15;
  v6[148] = *(v15 - 8);
  v6[149] = swift_task_alloc();
  v6[150] = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v6[151] = swift_task_alloc();
  v16 = type metadata accessor for MemberSharingCircle(0);
  v6[152] = v16;
  v6[153] = *(v16 - 8);
  v6[154] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6[155] = swift_task_alloc();
  v6[156] = swift_task_alloc();
  v6[157] = swift_task_alloc();
  v6[158] = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  v6[159] = v17;
  v18 = *(v17 - 8);
  v6[160] = v18;
  v6[161] = *(v18 + 64);
  v6[162] = swift_task_alloc();
  v6[163] = swift_task_alloc();
  v6[164] = swift_task_alloc();
  v6[165] = swift_task_alloc();
  v6[166] = swift_task_alloc();
  v6[167] = swift_task_alloc();
  v6[168] = swift_task_alloc();
  v19 = type metadata accessor for KeyDropFetchResponse.LocationPayload(0);
  v6[169] = v19;
  v6[170] = *(v19 - 8);
  v6[171] = swift_task_alloc();
  v6[172] = swift_task_alloc();
  v6[173] = swift_task_alloc();

  return _swift_task_switch(sub_1002ADFB0, v5, 0);
}

uint64_t sub_1002ADFB0()
{
  v308 = v1;
  v2 = *(v1 + 632);
  *(v1 + 1392) = *(*(v1 + 648) + 136);
  *(v1 + 520) = _swiftEmptyDictionarySingleton;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  isa = v3[2].isa;
  *(v1 + 1400) = isa;
  if (isa)
  {
    *(v1 + 1768) = *(*(v1 + 1360) + 80);
    *(v1 + 1772) = enum case for Connection.TransactionMode.deferred(_:);

    v5 = 0;
    v6 = &qword_1016980D0;
    do
    {
      *(v1 + 1408) = v5;
      v8 = *(v1 + 632);
      if (!v8)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      if (v5 >= v8[2])
      {
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
        goto LABEL_220;
      }

      v0 = v6;
      v9 = *(v1 + 1384);
      v10 = *(v1 + 1352);
      v11 = *(v1 + 1280);
      v12 = *(v1 + 1272);
      v13 = *(v1 + 1264);
      sub_1002DB760(v8 + ((*(v1 + 1768) + 32) & ~*(v1 + 1768)) + *(*(v1 + 1360) + 72) * v5, v9, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v14 = *(v9 + 24);
      v301 = *(v9 + 16);
      v15 = v9 + *(v10 + 28);
      v6 = v0;
      sub_1000D2A70(v15, v13, v0, &unk_10138F3B0);
      v16 = *(v11 + 48);
      *(v1 + 1416) = v16;
      *(v1 + 1424) = (v11 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v16(v13, 1, v12) != 1)
      {
        v20 = *(v1 + 1344);
        v21 = *(v1 + 1280);
        v22 = *(v1 + 1272);
        v23 = *(v1 + 1264);
        v24 = *(v1 + 1256);
        v25 = *(v21 + 32);
        *(v1 + 1432) = v25;
        *(v1 + 1440) = (v21 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v25(v20, v23, v22);
        v26 = *(v21 + 16);
        *(v1 + 1448) = v26;
        *(v1 + 1456) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v26(v24, v20, v22);
        (*(v21 + 56))(v24, 0, 1, v22);
        v27 = swift_task_alloc();
        *(v1 + 1464) = v27;
        *v27 = v1;
        v27[1] = sub_1002B09AC;
        v28 = *(v1 + 1256);

        return sub_1002D5B7C(v301, v14, v28);
      }

      sub_10000B3A8(*(v1 + 1264), v0, &unk_10138F3B0);
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000076D4(v17, qword_10177A818);
      v3 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v3, v18, "Missing share id in payload.", v19, 2u);
      }

      v7 = *(v1 + 1384);

      sub_1002DBBF0(v7, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v5 = *(v1 + 1408) + 1;
    }

    while (v5 != *(v1 + 1400));
  }

  else
  {
  }

  if (*(v1 + 624))
  {
    v3 = *(v1 + 624);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v274 = v3[2].isa;
  if (!v274)
  {

LABEL_196:

    swift_beginAccess();
    v300 = *(v1 + 520);

    v228 = *(v1 + 8);

    return v228(v300);
  }

  v30 = *(v1 + 1280);
  v243 = (v1 + 600);
  v31 = *(v1 + 1024);
  v275 = *(v1 + 1016);
  v32 = *(v1 + 848);
  v244 = *(v1 + 808);
  v288 = *(v1 + 800);
  v33 = *(v1 + 792);
  v298 = *(v1 + 776);
  v267 = *(v1 + 752);
  v280 = *(v1 + 744);
  v34 = *(v1 + 728);
  v277 = v3 + 4;
  v263 = *(v1 + 712);
  v291 = (v34 + 104);
  v290 = (v34 + 8);
  v286 = *(v1 + 704);
  v251 = (*(v1 + 928) + 56);
  v266 = (v32 + 16);
  v250 = *(v1 + 664);
  v249 = (v32 + 56);
  v265 = (v32 + 8);
  v248 = (v30 + 16);
  v246 = (v31 + 48);
  v247 = (v31 + 56);
  v276 = *(*(v1 + 640) + 16);
  v268 = (v30 + 8);
  v289 = enum case for HashAlgorithm.sha256(_:);

  v0 = 0;
  v35 = 0;
  v245 = xmmword_101385D80;
  v264 = v3;
  v279 = v33;
  while (1)
  {
    if (v35 >= v3[2].isa)
    {
      goto LABEL_221;
    }

    v36 = v276;
    v278 = v35;
    v37 = &v277[3 * v35];
    v39 = *v37;
    v38 = v37[1];
    v287 = v38;
    v297 = v37[2];
    if (v276)
    {
      break;
    }

    sub_100017D5C(v39, v38);

LABEL_133:
    if (qword_101694510 != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    sub_1000076D4(v91, qword_10177A818);
    sub_100017D5C(v39, v287);

    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    sub_100016590(v39, v287);

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v306 = v95;
      *v94 = 141558275;
      *(v94 + 4) = 1752392040;
      *(v94 + 12) = 2081;
      *(v1 + 488) = v39;
      *(v1 + 496) = v287;
      sub_10025DB08();
      v96 = RawRepresentable<>.hexString.getter();
      v98 = sub_1000136BC(v96, v97, &v306);

      *(v94 + 14) = v98;
      _os_log_impl(&_mh_execute_header, v92, v93, "No member ownded device decryption key found for advt: %{private,mask.hash}s.", v94, 0x16u);
      sub_100007BAC(v95);
    }

    sub_100016590(v39, v287);

LABEL_138:
    v35 = (v278 + 1);
    v3 = v264;
    if ((v278 + 1) == v274)
    {
      goto LABEL_196;
    }
  }

  v3 = (*(v1 + 640) + ((*(v267 + 80) + 32) & ~*(v267 + 80)));
  sub_100017D5C(v39, v38);
  if (v39)
  {
    v40 = 0;
  }

  else
  {
    v40 = v38 == 0xC000000000000000;
  }

  v41 = !v40;
  v284 = v41;
  v281 = BYTE6(v38);
  v292 = *(v267 + 72);
  v42 = __OFSUB__(HIDWORD(v39), v39);
  log = v42;
  v269 = HIDWORD(v39) - v39;

  v299 = v39;
  v294 = (v38 >> 62);
  while (1)
  {
    v302 = v36;
    v44 = *(v1 + 776);
    sub_1002DB760(v3, v44, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v45 = *v44;
    v46 = *(v298 + 8);
    v47 = v46 >> 62;
    if ((v46 >> 62) > 1)
    {
      if (v47 == 2)
      {
        v48 = *(v45 + 16);
        v50 = *(v45 + 24);
        sub_100017D5C(v45, *(v298 + 8));
        v49 = *(v45 + 16);
        v51 = *(v45 + 24);
      }

      else
      {
        v48 = 0;
        v50 = 0;
        v51 = 0;
        v49 = 0;
      }
    }

    else if (v47)
    {
      v48 = v45;
      v50 = v45 >> 32;
      sub_100017D5C(v45, *(v298 + 8));
      v51 = v45 >> 32;
      v49 = v45;
    }

    else
    {
      v48 = 0;
      v49 = 0;
      v50 = BYTE6(v46);
      v51 = BYTE6(v46);
    }

    if (v51 < v48 || v48 < v49)
    {
      goto LABEL_214;
    }

    if (v47 > 1)
    {
      if (v47 == 2)
      {
        v52 = *(v45 + 16);
        v53 = *(v45 + 24);
      }

      else
      {
        v53 = 0;
        v52 = 0;
      }
    }

    else if (v47)
    {
      v52 = v45;
      v53 = v45 >> 32;
    }

    else
    {
      v52 = 0;
      v53 = BYTE6(v46);
    }

    if (v53 < v50 || v50 < v52)
    {
      goto LABEL_215;
    }

    if (__OFSUB__(v50, v48))
    {
      goto LABEL_216;
    }

    if ((v50 - v48) < 0x39)
    {
      if (v47 <= 1)
      {
        if (!v47)
        {
          goto LABEL_82;
        }

        v54 = v45 >> 32;
LABEL_78:
        v57 = v45;
        goto LABEL_81;
      }

      if (v47 != 2)
      {
        goto LABEL_82;
      }

      v54 = *(v45 + 24);
LABEL_80:
      v57 = *(v45 + 16);
      goto LABEL_81;
    }

    v54 = v48 + 57;
    if (__OFADD__(v48, 57))
    {
      goto LABEL_218;
    }

    if (v47 > 1)
    {
      if (v47 == 2)
      {
        v55 = *(v45 + 16);
        v56 = *(v45 + 24);
      }

      else
      {
        v56 = 0;
        v55 = 0;
      }
    }

    else if (v47)
    {
      v55 = v45;
      v56 = v45 >> 32;
    }

    else
    {
      v55 = 0;
      v56 = BYTE6(v46);
    }

    if (v56 < v54 || v54 < v55)
    {
      goto LABEL_219;
    }

    v57 = 0;
    if (v47 <= 1)
    {
      if (!v47)
      {
        goto LABEL_81;
      }

      goto LABEL_78;
    }

    if (v47 != 3)
    {
      goto LABEL_80;
    }

LABEL_81:
    if (v54 < v57)
    {
      goto LABEL_217;
    }

LABEL_82:
    v58 = Data._Representation.subscript.getter();
    v60 = v59;
    sub_100016590(v45, v46);
    v61 = v60 >> 62;
    if ((v60 >> 62) > 1)
    {
      if (v61 != 2)
      {
        goto LABEL_199;
      }

      v63 = *(v58 + 16);
      v62 = *(v58 + 24);
      v64 = __OFSUB__(v62, v63);
      v65 = v62 - v63;
      if (v64)
      {
        goto LABEL_222;
      }

      if (v65 != 57)
      {
        goto LABEL_199;
      }
    }

    else if (v61)
    {
      if (__OFSUB__(HIDWORD(v58), v58))
      {
        goto LABEL_223;
      }

      if (HIDWORD(v58) - v58 != 57)
      {
LABEL_199:
        sub_100016590(v58, v60);
        return _assertionFailure(_:_:file:line:flags:)();
      }
    }

    else if (BYTE6(v60) != 57)
    {
      goto LABEL_199;
    }

    v66 = sub_100A7A194(v58, v60, 0, 0);
    v67 = sub_100A7829C(v66, 0, 2);
    v69 = v68;
    result = CCECCryptorRelease();
    v70 = v69 >> 62;
    if ((v69 >> 62) <= 1)
    {
      break;
    }

    if (v70 != 2)
    {
      v235 = 0;
      goto LABEL_210;
    }

    v72 = *(v67 + 16);
    v71 = *(v67 + 24);
    v64 = __OFSUB__(v71, v72);
    v73 = v71 - v72;
    if (v64)
    {
      goto LABEL_225;
    }

    if (v73 != 28)
    {
      goto LABEL_201;
    }

LABEL_102:
    v74 = *(v1 + 736);
    v75 = *(v1 + 720);
    sub_100016590(v58, v60);
    (*v291)(v74, v289, v75);
    v76 = Data.hash(algorithm:)();
    v78 = v77;
    sub_100016590(v67, v69);
    (*v290)(v74, v75);
    v79 = v78 >> 62;
    if (v78 >> 62 == 3)
    {
      if (v76)
      {
        v80 = 0;
      }

      else
      {
        v80 = v78 == 0xC000000000000000;
      }

      v81 = v294;
      v83 = !v80 || v294 < 3;
      v39 = v299;
      if (((v83 | v284) & 1) == 0)
      {
        v99 = 0;
        v100 = 0xC000000000000000;
LABEL_142:
        sub_100016590(v99, v100);
        v0 = 0;
LABEL_143:
        v101 = *(v1 + 792);
        v102 = *(v1 + 784);
        sub_1002DB7C8(*(v1 + 776), v102, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        sub_1002DB7C8(v102, v101, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        v3 = v297;
        v303 = v297[2].isa;
        if (v303)
        {
          v293 = v297 + ((*(v286 + 80) + 32) & ~*(v286 + 80));

          v103 = 0;
          v104 = v279;
          while (v103 < v297[2].isa)
          {
            sub_1002DB760(&v293[*(v286 + 72) * v103], *(v1 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
            v105 = sub_100496ABC();
            v106 = v104;
            v107 = **(v1 + 712);
            v108 = *(v263 + 8);
            v109 = **(v1 + 792);
            v110 = *(v106 + 8);
            sub_100017D5C(v109, v110);
            sub_10002EA98(57, v109, v110, &v306);
            sub_100496F68(v306, v307, &v304);
            v111 = v305;
            if (v305 >> 60 == 15)
            {
              return _assertionFailure(_:_:file:line:flags:)();
            }

            v285 = v103;
            loga = *(v1 + 792);
            v112 = v304;
            v113 = PublicKey.advertisement.getter(v304, v305);
            v115 = v114;
            result = sub_100006654(v112, v111);
            v116 = v108 >> 62;
            v282 = *(v280 + 20);
            if ((v108 >> 62) > 1)
            {
              if (v116 == 2)
              {
                v119 = *(v107 + 16);
                v118 = *(v107 + 24);
                v117 = v118 - v119;
                if (__OFSUB__(v118, v119))
                {
                  goto LABEL_231;
                }
              }

              else
              {
                v117 = 0;
              }
            }

            else if (v116)
            {
              if (__OFSUB__(HIDWORD(v107), v107))
              {
                __break(1u);
LABEL_231:
                __break(1u);
                goto LABEL_232;
              }

              v117 = HIDWORD(v107) - v107;
            }

            else
            {
              v117 = BYTE6(v108);
            }

            sub_100A2A240(3);
            v121 = v120;
            v122 = v105;
            sub_100017D5C(v107, v108);
            sub_100017D5C(v113, v115);
            if (v117 >= v121)
            {
              v123 = (v1 + 672);
              sub_100A2AA58(v122, v107, v108, v113, v115, *(v1 + 672));
            }

            else
            {
              v123 = (v1 + 680);
              sub_100A2B118(v122, v107, v108, v113, v115, *(v1 + 680));
            }

            v270 = v122;
            v124 = *v123;
            v260 = *(v1 + 1272);
            v261 = *(v1 + 1016);
            v258 = *(v1 + 1000);
            v125 = *(v1 + 976);
            v252 = *(v1 + 968);
            v126 = *(v1 + 920);
            v295 = *(v1 + 856);
            v253 = v113;
            v254 = v115;
            v127 = *(v1 + 840);
            v128 = *(v1 + 832);
            v129 = *(v1 + 696);
            v130 = *(v1 + 688);
            v131 = *(v1 + 656);
            sub_1002DB7C8(v124, v130, type metadata accessor for BeaconPayloadv1);
            sub_1002DB7C8(v130, v129, type metadata accessor for BeaconPayloadv1);
            (*v251)(v125, 1, 1, v126);
            v256 = *(v129 + v250[10]);
            v132 = *v266;
            (*v266)(v295, v129 + v250[5], v127);
            v133 = *(v129 + v250[7]);
            v134 = *(v129 + v250[8]);
            v135 = *(v129 + v250[9]);
            (*v249)(v131, 1, 1, v127);
            sub_1000D2A70(v125, v252, &unk_1016C1120, &qword_1013C49D0);
            v242 = v132;
            v132(&v128[v288[5]], v295, v127);
            sub_1000D2A70(v131, &v128[v288[10]], &unk_101696900, &unk_10138B1E0);
            sub_1000D2A70(v252, &v128[v288[11]], &unk_1016C1120, &qword_1013C49D0);
            UUID.init()();
            sub_100016590(v253, v254);
            sub_10000B3A8(v252, &unk_1016C1120, &qword_1013C49D0);
            sub_10000B3A8(v131, &unk_101696900, &unk_10138B1E0);
            v136 = *v265;
            (*v265)(v295, v127);
            sub_10000B3A8(v125, &unk_1016C1120, &qword_1013C49D0);
            sub_1002DBBF0(v129, type metadata accessor for BeaconPayloadv1);
            *v128 = v256;
            *&v128[v288[6]] = v133;
            *&v128[v288[7]] = v134;
            *&v128[v288[8]] = v135;
            v128[v288[9]] = 15;
            *&v128[v288[13]] = 256;
            v137 = *(v275 + 48);
            (*v248)(v258, loga + v282, v260);
            sub_1002DB7C8(v128, v258 + v137, type metadata accessor for RawSearchResult);
            (*v247)(v258, 0, 1, v261);
            if ((*v246)(v258, 1, v261) == 1)
            {
              v138 = *(v1 + 1000);

              sub_10000B3A8(v138, &qword_10169C968, &qword_101398A10);
              v104 = v279;
              v139 = v299;
              v140 = v285;
              if (qword_101694510 != -1)
              {
                swift_once();
              }

              v141 = *(v1 + 792);
              v142 = *(v1 + 760);
              v143 = type metadata accessor for Logger();
              sub_1000076D4(v143, qword_10177A818);
              sub_1002DB760(v141, v142, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v144 = Logger.logObject.getter();
              v145 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v144, v145))
              {
                v146 = *(v1 + 760);
                v147 = swift_slowAlloc();
                v148 = swift_slowAlloc();
                v306 = v148;
                *v147 = 141558275;
                *(v147 + 4) = 1752392040;
                *(v147 + 12) = 2081;
                sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v149 = dispatch thunk of CustomStringConvertible.description.getter();
                v151 = v150;
                sub_1002DBBF0(v146, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                v3 = sub_1000136BC(v149, v151, &v306);
                v104 = v279;

                *(v147 + 14) = v3;
                _os_log_impl(&_mh_execute_header, v144, v145, "Could not create search result for beacon: %{private,mask.hash}s.", v147, 0x16u);
                sub_100007BAC(v148);
              }

              else
              {
                v3 = *(v1 + 760);

                sub_1002DBBF0(v3, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              }
            }

            else
            {
              v283 = v136;
              v152 = *(v1 + 1088);
              v153 = *(v1 + 1080);
              sub_1000D2AD8(*(v1 + 1000), v152, &qword_10169C970, &qword_101398A18);
              sub_1000D2A70(v152, v153, &qword_10169C970, &qword_101398A18);
              v154 = *(v275 + 48);
              swift_beginAccess();
              sub_1005CAD18(v153, *(v1 + 520));
              v156 = *(v1 + 1272);
              if (v155)
              {
                v157 = v155;
                v158 = *(v1 + 1088);
                v159 = *(v1 + 1080);
                v160 = *(v1 + 1072);
                swift_endAccess();
                sub_1002DBBF0(v153 + v154, type metadata accessor for RawSearchResult);
                v296 = *v268;
                (*v268)(v159, v156);
                sub_1000D2A70(v158, v160, &qword_10169C970, &qword_101398A18);
                v161 = (v160 + *(v275 + 48));
                Hasher.init(_seed:)();
                sub_100D15128(&v306);
                v162 = Hasher._finalize()();
                v163 = -1 << *(v157 + 32);
                v164 = v162 & ~v163;
                if ((*(v157 + 56 + ((v164 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v164))
                {
                  v165 = ~v163;
                  v166 = *v161;
                  v167 = *(v244 + 72);
                  do
                  {
                    v168 = *(v1 + 816);
                    sub_1002DB760(*(v157 + 48) + v164 * v167, v168, type metadata accessor for RawSearchResult);
                    v169 = *(v1 + 816);
                    if (*v168 == v166 && (v170 = static Date.== infix(_:_:)(), v169 = *(v1 + 816), (v170 & 1) != 0) && *(v169 + v288[6]) == *&v161[v288[6]] && *(v169 + v288[7]) == *&v161[v288[7]] && *(v169 + v288[8]) == *&v161[v288[8]])
                    {
                      v171 = *(v1 + 816);
                      v172 = static UUID.== infix(_:_:)();
                      sub_1002DBBF0(v171, type metadata accessor for RawSearchResult);
                      if (v172)
                      {
                        goto LABEL_180;
                      }
                    }

                    else
                    {
                      sub_1002DBBF0(v169, type metadata accessor for RawSearchResult);
                    }

                    v164 = (v164 + 1) & v165;
                  }

                  while (((*(v157 + 56 + ((v164 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v164) & 1) != 0);
                }

                v173 = *(v1 + 832);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                sub_1002DB760(v161, v173, type metadata accessor for RawSearchResult);
                v306 = v157;
                sub_100DFE348(v173, v164, isUniquelyReferenced_nonNull_native);
                v157 = v306;
LABEL_180:
                sub_1002DBBF0(v161, type metadata accessor for RawSearchResult);
                v175 = *(v1 + 1128);
                v176 = *(v1 + 1088);
                v296(*(v1 + 1072), *(v1 + 1272));
                sub_1000D2A70(v176, v175, &qword_10169C970, &qword_101398A18);
                v177 = *(v275 + 48);
                swift_beginAccess();
                sub_1001DE1B0(v157, v175);
              }

              else
              {
                v178 = *(v1 + 1128);
                v179 = *(v1 + 1088);
                v180 = *(v1 + 1080);
                v181 = *(v1 + 1064);
                swift_endAccess();
                sub_1002DBBF0(v153 + v154, type metadata accessor for RawSearchResult);
                v182 = *v268;
                (*v268)(v180, v156);
                sub_1000D2A70(v179, v178, &qword_10169C970, &qword_101398A18);
                v177 = *(v275 + 48);
                sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
                v183 = (*(v244 + 80) + 32) & ~*(v244 + 80);
                v184 = swift_allocObject();
                *(v184 + 16) = xmmword_101385D80;
                sub_1000D2A70(v179, v181, &qword_10169C970, &qword_101398A18);
                sub_1002DB7C8(v181 + *(v275 + 48), v184 + v183, type metadata accessor for RawSearchResult);
                v182(v181, v156);
                v185 = sub_10112A090(v184);
                swift_setDeallocating();
                sub_1002DBBF0(v184 + v183, type metadata accessor for RawSearchResult);
                swift_deallocClassInstance();
                swift_beginAccess();
                v186 = swift_isUniquelyReferenced_nonNull_native();
                v306 = *(v1 + 520);
                sub_100FFC200(v185, v178, v186);
                v296 = v182;
                v182(v178, v156);
                *(v1 + 520) = v306;
              }

              v139 = v299;
              swift_endAccess();
              sub_1002DBBF0(*(v1 + 1128) + v177, type metadata accessor for RawSearchResult);
              if (qword_101694510 != -1)
              {
                swift_once();
              }

              v187 = *(v1 + 1088);
              v188 = *(v1 + 1056);
              v189 = *(v1 + 1048);
              v190 = *(v1 + 1040);
              v191 = *(v1 + 792);
              v192 = *(v1 + 768);
              v193 = type metadata accessor for Logger();
              sub_1000076D4(v193, qword_10177A818);
              sub_1002DB760(v191, v192, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              sub_1000D2A70(v187, v188, &qword_10169C970, &qword_101398A18);
              sub_1000D2A70(v187, v189, &qword_10169C970, &qword_101398A18);
              sub_1000D2A70(v187, v190, &qword_10169C970, &qword_101398A18);
              v194 = Logger.logObject.getter();
              v195 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v194, v195))
              {
                v262 = v195;
                logb = v194;
                v196 = *(v1 + 1272);
                v197 = *(v1 + 1128);
                v198 = *(v1 + 1056);
                v259 = *(v1 + 1040);
                v255 = *(v1 + 1048);
                v257 = *(v1 + 1032);
                v199 = *(v1 + 856);
                v200 = *(v1 + 840);
                v201 = *(v1 + 768);
                v202 = swift_slowAlloc();
                v306 = swift_slowAlloc();
                *v202 = 141559043;
                *(v202 + 4) = 1752392040;
                *(v202 + 12) = 2081;
                sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v203 = dispatch thunk of CustomStringConvertible.description.getter();
                v205 = v204;
                sub_1002DBBF0(v201, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                v206 = sub_1000136BC(v203, v205, &v306);

                *(v202 + 14) = v206;
                *(v202 + 22) = 2082;
                sub_1000D2A70(v198, v197, &qword_10169C970, &qword_101398A18);
                v207 = v197 + *(v275 + 48);
                v242(v199, v207 + v288[5], v200);
                sub_1002DBBF0(v207, type metadata accessor for RawSearchResult);
                v296(v197, v196);
                sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                v208 = dispatch thunk of CustomStringConvertible.description.getter();
                v210 = v209;
                v283(v199, v200);
                sub_10000B3A8(v198, &qword_10169C970, &qword_101398A18);
                v211 = sub_1000136BC(v208, v210, &v306);

                *(v202 + 24) = v211;
                *(v202 + 32) = 2082;
                sub_1000D2A70(v255, v197, &qword_10169C970, &qword_101398A18);
                v212 = v197 + *(v275 + 48);
                LOBYTE(v211) = *(v212 + v288[9]);
                sub_1002DBBF0(v212, type metadata accessor for RawSearchResult);
                v296(v197, v196);
                v213 = sub_100013454(v211);
                v215 = v214;
                sub_10000B3A8(v255, &qword_10169C970, &qword_101398A18);
                v216 = sub_1000136BC(v213, v215, &v306);

                *(v202 + 34) = v216;
                *(v202 + 42) = 2048;
                sub_1000D2A70(v259, v257, &qword_10169C970, &qword_101398A18);
                swift_beginAccess();
                v217 = *(v1 + 520);
                if (*(v217 + 16) && (v218 = sub_1000210EC(*(v1 + 1032)), (v219 & 1) != 0))
                {
                  v220 = *(*(v217 + 56) + 8 * v218);
                  swift_endAccess();
                  v221 = *(v220 + 16);
                }

                else
                {
                  swift_endAccess();
                  v221 = 0;
                }

                v104 = v279;
                v139 = v299;
                v225 = *(v1 + 1272);
                v3 = *(v1 + 1088);
                v226 = *(v1 + 1040);
                v227 = *(v1 + 1032);
                sub_1002DBBF0(v227 + *(v275 + 48), type metadata accessor for RawSearchResult);
                v296(v227, v225);
                sub_10000B3A8(v226, &qword_10169C970, &qword_101398A18);
                *(v202 + 44) = v221;
                _os_log_impl(&_mh_execute_header, logb, v262, "Return search result for beacon (own beacon): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v202, 0x34u);
                swift_arrayDestroy();

                sub_10000B3A8(v3, &qword_10169C970, &qword_101398A18);
              }

              else
              {
                v3 = *(v1 + 1088);
                v222 = *(v1 + 1056);
                v223 = *(v1 + 1048);
                v224 = *(v1 + 768);
                sub_10000B3A8(*(v1 + 1040), &qword_10169C970, &qword_101398A18);

                sub_10000B3A8(v223, &qword_10169C970, &qword_101398A18);
                sub_10000B3A8(v222, &qword_10169C970, &qword_101398A18);
                sub_1002DBBF0(v224, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                sub_10000B3A8(v3, &qword_10169C970, &qword_101398A18);
                v104 = v279;
              }

              v140 = v285;
            }

            v103 = (v140 + 1);
            sub_1002DBBF0(*(v1 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
            v0 = 0;
            if (v103 == v303)
            {

              sub_100016590(v139, v287);

              v0 = 0;
              goto LABEL_194;
            }
          }

LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
          swift_once();
          v229 = qword_10177BA00;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v230 = swift_allocObject();
          *(v230 + 16) = v245;
          *v243 = v0;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v231 = String.init<A>(describing:)();
          v233 = v232;
          *(v230 + 56) = &type metadata for String;
          *(v230 + 64) = sub_100008C00();
          *(v230 + 32) = v231;
          *(v230 + 40) = v233;
          os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v229, "Error deriving advertisementKey: %@", 35, 2, v230);

          sub_1001BAF88();
          v238 = swift_allocError();
          *v234 = 0;
          swift_willThrow();

LABEL_211:
          v306 = 0;
          v307 = 0xE000000000000000;
          _StringGuts.grow(_:)(35);
          v240 = v307;
          *(v1 + 472) = v306;
          *(v1 + 480) = v240;
          v241._countAndFlagsBits = 0xD000000000000021;
          v241._object = 0x800000010134CB30;
          String.append(_:)(v241);
          *(v1 + 584) = v238;
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          _print_unlocked<A, B>(_:_:)();
          return _assertionFailure(_:_:file:line:flags:)();
        }

        sub_100016590(v39, v287);

LABEL_194:
        sub_1002DBBF0(*(v1 + 792), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        goto LABEL_138;
      }

      v84 = 0;
      if (v294 <= 1)
      {
LABEL_122:
        v87 = v281;
        if (v81)
        {
          v87 = v269;
          if (log)
          {
            goto LABEL_226;
          }
        }

        goto LABEL_128;
      }
    }

    else
    {
      v39 = v299;
      v81 = v294;
      if (v79 == 2)
      {
        v86 = *(v76 + 16);
        v85 = *(v76 + 24);
        v64 = __OFSUB__(v85, v86);
        v84 = v85 - v86;
        if (v64)
        {
          goto LABEL_229;
        }

        if (v294 <= 1)
        {
          goto LABEL_122;
        }
      }

      else if (v79 == 1)
      {
        LODWORD(v84) = HIDWORD(v76) - v76;
        if (__OFSUB__(HIDWORD(v76), v76))
        {
          goto LABEL_228;
        }

        v84 = v84;
        if (v294 <= 1)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v84 = BYTE6(v78);
        if (v294 <= 1)
        {
          goto LABEL_122;
        }
      }
    }

    if (v81 != 2)
    {
      if (!v84)
      {
        goto LABEL_140;
      }

LABEL_37:
      sub_100016590(v76, v78);
      v0 = 0;
      v43 = v302;
      goto LABEL_38;
    }

    v89 = *(v39 + 16);
    v88 = *(v39 + 24);
    v64 = __OFSUB__(v88, v89);
    v87 = v88 - v89;
    if (v64)
    {
      goto LABEL_227;
    }

LABEL_128:
    if (v84 != v87)
    {
      goto LABEL_37;
    }

    if (v84 < 1)
    {
LABEL_140:
      v99 = v76;
      v100 = v78;
      goto LABEL_142;
    }

    sub_100017D5C(v39, v287);
    sub_100017D5C(v39, v287);
    sub_100017D5C(v76, v78);
    v90 = sub_100F0B1BC(v76, v78, v39, v287);
    sub_100016590(v76, v78);
    sub_100016590(v76, v78);
    sub_100016590(v39, v287);
    v43 = v302;
    if (v90)
    {
      goto LABEL_143;
    }

LABEL_38:
    sub_1002DBBF0(*(v1 + 776), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v3 = (v3 + v292);
    v36 = v43 - 1;
    if (!v36)
    {
      goto LABEL_133;
    }
  }

  if (!v70)
  {
    if (BYTE6(v69) != 28)
    {
      goto LABEL_201;
    }

    goto LABEL_102;
  }

  if (__OFSUB__(HIDWORD(v67), v67))
  {
    goto LABEL_224;
  }

  if (HIDWORD(v67) - v67 == 28)
  {
    goto LABEL_102;
  }

LABEL_201:
  if (v70 == 2)
  {
    v237 = *(v67 + 16);
    v236 = *(v67 + 24);
    v235 = v236 - v237;
    if (!__OFSUB__(v236, v237))
    {
      goto LABEL_210;
    }

    __break(1u);
    goto LABEL_209;
  }

  if (v70 != 1)
  {
LABEL_209:
    v235 = BYTE6(v69);
    goto LABEL_210;
  }

  if (!__OFSUB__(HIDWORD(v67), v67))
  {
    v235 = HIDWORD(v67) - v67;
LABEL_210:
    sub_100018350();
    v238 = swift_allocError();
    *v239 = 28;
    *(v239 + 8) = v235;
    *(v239 + 16) = 0;
    swift_willThrow();
    sub_100016590(v67, v69);
    goto LABEL_211;
  }

LABEL_232:
  __break(1u);
  return result;
}

uint64_t sub_1002B09AC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[184] = a1;
  v5[185] = a2;
  v5[186] = v2;

  v6 = v4[157];
  v7 = v4[81];
  sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);
  if (v2)
  {

    v8 = sub_1002D14F4;
  }

  else
  {
    v8 = sub_1002B0B44;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1002B0B44()
{
  v333 = v0;
  if (*(v0 + 1480) >> 60 != 15)
  {
    v14 = *(v0 + 1392);
    v15 = sub_1002B37A0;
    v16 = 0;

    return _swift_task_switch(v15, v14, v16);
  }

  if (qword_101694510 != -1)
  {
    goto LABEL_230;
  }

  while (1)
  {
    v1 = *(v0 + 1384);
    v2 = *(v0 + 1368);
    v328 = type metadata accessor for Logger();
    sub_1000076D4(v328, qword_10177A818);
    sub_1002DB760(v1, v2, type metadata accessor for KeyDropFetchResponse.LocationPayload);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 1416);
      v6 = *(v0 + 1368);
      v7 = *(v0 + 1352);
      v8 = *(v0 + 1272);
      v9 = *(v0 + 1240);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *(v0 + 576) = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      sub_1000D2A70(v6 + *(v7 + 28), v9, &qword_1016980D0, &unk_10138F3B0);
      if (v5(v9, 1, v8) == 1)
      {
        sub_10000B3A8(*(v0 + 1240), &qword_1016980D0, &unk_10138F3B0);
        v12 = 0xE300000000000000;
        v13 = 7104878;
      }

      else
      {
        v21 = *(v0 + 1280);
        v22 = *(v0 + 1272);
        v23 = *(v0 + 1240);
        v13 = UUID.uuidString.getter();
        v12 = v24;
        (*(v21 + 8))(v23, v22);
      }

      v25 = *(v0 + 1344);
      v26 = *(v0 + 1280);
      v27 = *(v0 + 1272);
      sub_1002DBBF0(*(v0 + 1368), type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v28 = sub_1000136BC(v13, v12, (v0 + 576));

      *(v10 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v3, v4, "Cannot decrypt locations in payload: %{private,mask.hash}s.", v10, 0x16u);
      sub_100007BAC(v11);

      (*(v26 + 8))(v25, v27);
    }

    else
    {
      v17 = *(v0 + 1368);
      v18 = *(v0 + 1344);
      v19 = *(v0 + 1280);
      v20 = *(v0 + 1272);

      sub_1002DBBF0(v17, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      (*(v19 + 8))(v18, v20);
    }

    sub_1002DBBF0(*(v0 + 1384), type metadata accessor for KeyDropFetchResponse.LocationPayload);
    v324 = *(v0 + 1488);
    v29 = *(v0 + 1408) + 1;
    if (v29 == *(v0 + 1400))
    {
      break;
    }

    while (1)
    {
      *(v0 + 1408) = v29;
      v230 = *(v0 + 632);
      if (!v230)
      {
        v230 = _swiftEmptyArrayStorage;
      }

      if (v29 >= v230[2])
      {
        break;
      }

      v231 = *(v0 + 1384);
      v232 = *(v0 + 1352);
      v233 = *(v0 + 1280);
      v234 = *(v0 + 1272);
      v235 = *(v0 + 1264);
      sub_1002DB760(v230 + ((*(v0 + 1768) + 32) & ~*(v0 + 1768)) + *(*(v0 + 1360) + 72) * v29, v231, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v237 = *(v231 + 16);
      v236 = *(v231 + 24);
      sub_1000D2A70(v231 + *(v232 + 28), v235, &qword_1016980D0, &unk_10138F3B0);
      v238 = *(v233 + 48);
      *(v0 + 1416) = v238;
      *(v0 + 1424) = (v233 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v238(v235, 1, v234) != 1)
      {
        v244 = *(v0 + 1344);
        v245 = *(v0 + 1280);
        v246 = *(v0 + 1272);
        v247 = *(v0 + 1264);
        v248 = *(v0 + 1256);
        v249 = *(v245 + 32);
        *(v0 + 1432) = v249;
        *(v0 + 1440) = (v245 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v249(v244, v247, v246);
        v250 = *(v245 + 16);
        *(v0 + 1448) = v250;
        *(v0 + 1456) = (v245 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v250(v248, v244, v246);
        (*(v245 + 56))(v248, 0, 1, v246);
        v251 = swift_task_alloc();
        *(v0 + 1464) = v251;
        *v251 = v0;
        v251[1] = sub_1002B09AC;
        v252 = *(v0 + 1256);

        return sub_1002D5B7C(v237, v236, v252);
      }

      sub_10000B3A8(*(v0 + 1264), &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v328, qword_10177A818);
      v239 = Logger.logObject.getter();
      v240 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v239, v240))
      {
        v241 = swift_slowAlloc();
        *v241 = 0;
        _os_log_impl(&_mh_execute_header, v239, v240, "Missing share id in payload.", v241, 2u);
      }

      v229 = *(v0 + 1384);

      sub_1002DBBF0(v229, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v29 = *(v0 + 1408) + 1;
      if (v29 == *(v0 + 1400))
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    swift_once();
  }

LABEL_13:
  v30 = _swiftEmptyArrayStorage;

  if (*(v0 + 624))
  {
    v31 = *(v0 + 624);
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
  }

  v297 = *(v31 + 16);
  if (!v297)
  {

LABEL_200:

    swift_beginAccess();
    v327 = *(v0 + 520);

    v242 = *(v0 + 8);

    return v242(v327);
  }

  v32 = *(v0 + 1280);
  v33 = *(v0 + 1024);
  v304 = *(v0 + 1016);
  v34 = *(v0 + 848);
  v267 = *(v0 + 808);
  v313 = *(v0 + 800);
  v35 = *(v0 + 792);
  v323 = *(v0 + 776);
  v291 = *(v0 + 752);
  v303 = *(v0 + 744);
  v36 = *(v0 + 728);
  v301 = (v31 + 32);
  v288 = *(v0 + 712);
  v317 = (v36 + 104);
  v316 = (v36 + 8);
  v311 = *(v0 + 704);
  v273 = (*(v0 + 928) + 56);
  v290 = (v34 + 16);
  v272 = *(v0 + 664);
  v271 = (v34 + 56);
  v289 = (v34 + 8);
  v270 = (v32 + 16);
  v268 = (v33 + 48);
  v269 = (v33 + 56);
  v300 = *(*(v0 + 640) + 16);
  v298 = (v32 + 8);
  v315 = enum case for HashAlgorithm.sha256(_:);

  v37 = 0;
  v299 = v31;
  v305 = v35;
LABEL_18:
  if (v37 >= *(v31 + 16))
  {
    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    swift_once();
    goto LABEL_207;
  }

  v302 = v37;
  v38 = &v301[3 * v37];
  v40 = *v38;
  v39 = v38[1];
  v312 = v39;
  v320 = *v38;
  v314 = v38[2];
  if (!v300)
  {
    sub_100017D5C(v40, v39);

LABEL_127:
    if (qword_101694510 != -1)
    {
      swift_once();
    }

    v30 = sub_1000076D4(v328, qword_10177A818);
    sub_100017D5C(v320, v312);

    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    sub_100016590(v320, v312);

    v31 = v299;
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v331 = v96;
      *v95 = 141558275;
      *(v95 + 4) = 1752392040;
      *(v95 + 12) = 2081;
      *(v0 + 488) = v320;
      *(v0 + 496) = v312;
      sub_10025DB08();
      v97 = RawRepresentable<>.hexString.getter();
      v30 = v98;
      v99 = sub_1000136BC(v97, v98, &v331);

      *(v95 + 14) = v99;
      _os_log_impl(&_mh_execute_header, v93, v94, "No member ownded device decryption key found for advt: %{private,mask.hash}s.", v95, 0x16u);
      sub_100007BAC(v96);

      v31 = v299;
    }

    sub_100016590(v320, v312);

    goto LABEL_132;
  }

  v30 = (*(v0 + 640) + ((*(v291 + 80) + 32) & ~*(v291 + 80)));
  sub_100017D5C(v40, v39);
  if (v40)
  {
    v41 = 0;
  }

  else
  {
    v41 = v39 == 0xC000000000000000;
  }

  v42 = !v41;
  v308 = v42;
  v321 = v39 >> 62;
  v306 = BYTE6(v39);
  v318 = *(v291 + 72);
  v43 = __OFSUB__(HIDWORD(v40), v40);
  v295 = v43;
  log = (HIDWORD(v40) - v40);

  v44 = v300;
  while (1)
  {
    v45 = *(v0 + 776);
    sub_1002DB760(v30, v45, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v46 = *v45;
    v47 = *(v323 + 8);
    v48 = v47 >> 62;
    if ((v47 >> 62) > 1)
    {
      if (v48 == 2)
      {
        v31 = *(v46 + 16);
        v50 = *(v46 + 24);
        sub_100017D5C(v46, *(v323 + 8));
        v49 = *(v46 + 16);
        v51 = *(v46 + 24);
      }

      else
      {
        v31 = 0;
        v50 = 0;
        v51 = 0;
        v49 = 0;
      }
    }

    else if (v48)
    {
      v31 = v46;
      v50 = v46 >> 32;
      sub_100017D5C(v46, *(v323 + 8));
      v51 = v46 >> 32;
      v49 = v46;
    }

    else
    {
      v31 = 0;
      v49 = 0;
      v50 = BYTE6(v47);
      v51 = BYTE6(v47);
    }

    if (v51 < v31 || v31 < v49)
    {
      goto LABEL_223;
    }

    if (v48 > 1)
    {
      if (v48 == 2)
      {
        v52 = *(v46 + 16);
        v53 = *(v46 + 24);
      }

      else
      {
        v53 = 0;
        v52 = 0;
      }
    }

    else if (v48)
    {
      v52 = v46;
      v53 = v46 >> 32;
    }

    else
    {
      v52 = 0;
      v53 = BYTE6(v47);
    }

    if (v53 < v50 || v50 < v52)
    {
      goto LABEL_224;
    }

    if (__OFSUB__(v50, v31))
    {
      goto LABEL_225;
    }

    if ((v50 - v31) < 0x39)
    {
      if (v48 <= 1)
      {
        if (!v48)
        {
          goto LABEL_76;
        }

        v54 = v46 >> 32;
LABEL_72:
        v57 = v46;
        goto LABEL_75;
      }

      if (v48 != 2)
      {
        goto LABEL_76;
      }

      v54 = *(v46 + 24);
LABEL_74:
      v57 = *(v46 + 16);
      goto LABEL_75;
    }

    v54 = v31 + 57;
    if (__OFADD__(v31, 57))
    {
      goto LABEL_227;
    }

    if (v48 > 1)
    {
      if (v48 == 2)
      {
        v55 = *(v46 + 16);
        v56 = *(v46 + 24);
      }

      else
      {
        v56 = 0;
        v55 = 0;
      }
    }

    else if (v48)
    {
      v55 = v46;
      v56 = v46 >> 32;
    }

    else
    {
      v55 = 0;
      v56 = BYTE6(v47);
    }

    if (v56 < v54 || v54 < v55)
    {
      goto LABEL_228;
    }

    v57 = 0;
    if (v48 <= 1)
    {
      if (!v48)
      {
        goto LABEL_75;
      }

      goto LABEL_72;
    }

    if (v48 != 3)
    {
      goto LABEL_74;
    }

LABEL_75:
    if (v54 < v57)
    {
      goto LABEL_226;
    }

LABEL_76:
    v58 = Data._Representation.subscript.getter();
    v60 = v59;
    sub_100016590(v46, v47);
    v61 = v60 >> 62;
    if ((v60 >> 62) > 1)
    {
      if (v61 != 2)
      {
        goto LABEL_208;
      }

      v64 = *(v58 + 16);
      v63 = *(v58 + 24);
      v65 = __OFSUB__(v63, v64);
      v62 = v63 - v64;
      if (v65)
      {
        goto LABEL_232;
      }
    }

    else if (v61)
    {
      LODWORD(v62) = HIDWORD(v58) - v58;
      if (__OFSUB__(HIDWORD(v58), v58))
      {
        goto LABEL_233;
      }

      v62 = v62;
    }

    else
    {
      v62 = BYTE6(v60);
    }

    if (v62 != 57)
    {
LABEL_208:
      sub_100016590(v58, v60);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v31 = v324;
    v66 = sub_100A7A194(v58, v60, 0, 0);
    if (v324)
    {
      break;
    }

    v67 = v30;
    v30 = v44;
    v68 = sub_100A7829C(v66, 0, 2);
    v70 = v69;
    v15 = CCECCryptorRelease();
    v71 = v70 >> 62;
    if ((v70 >> 62) > 1)
    {
      if (v71 != 2)
      {
        v260 = 0;
        goto LABEL_219;
      }

      v74 = *(v68 + 16);
      v73 = *(v68 + 24);
      v65 = __OFSUB__(v73, v74);
      v72 = v73 - v74;
      if (v65)
      {
        goto LABEL_235;
      }
    }

    else if (v71)
    {
      LODWORD(v72) = HIDWORD(v68) - v68;
      if (__OFSUB__(HIDWORD(v68), v68))
      {
        goto LABEL_234;
      }

      v72 = v72;
    }

    else
    {
      v72 = BYTE6(v70);
    }

    if (v72 != 28)
    {
      if (v71 == 2)
      {
        v262 = *(v68 + 16);
        v261 = *(v68 + 24);
        v260 = v261 - v262;
        if (!__OFSUB__(v261, v262))
        {
          goto LABEL_219;
        }

        __break(1u);
      }

      else if (v71 == 1)
      {
        if (!__OFSUB__(HIDWORD(v68), v68))
        {
          v260 = HIDWORD(v68) - v68;
LABEL_219:
          sub_100018350();
          v258 = swift_allocError();
          *v263 = 28;
          *(v263 + 8) = v260;
          *(v263 + 16) = 0;
          swift_willThrow();
          sub_100016590(v68, v70);
          goto LABEL_220;
        }

LABEL_243:
        __break(1u);
        return _swift_task_switch(v15, v14, v16);
      }

      v260 = BYTE6(v70);
      goto LABEL_219;
    }

    v75 = *(v0 + 736);
    v76 = *(v0 + 720);
    sub_100016590(v58, v60);
    (*v317)(v75, v315, v76);
    v77 = Data.hash(algorithm:)();
    v79 = v78;
    sub_100016590(v68, v70);
    (*v316)(v75, v76);
    v80 = v79 >> 62;
    if (v79 >> 62 == 3)
    {
      if (v77)
      {
        v81 = 0;
      }

      else
      {
        v81 = v79 == 0xC000000000000000;
      }

      v82 = v321;
      v84 = !v81 || v321 < 3;
      if (((v84 | v308) & 1) == 0)
      {
        v100 = 0;
        v101 = 0xC000000000000000;
        goto LABEL_136;
      }

      v85 = v30;
      v86 = 0;
LABEL_115:
      v30 = v67;
      if (v82 <= 1)
      {
        goto LABEL_116;
      }

      goto LABEL_120;
    }

    v82 = v321;
    v85 = v30;
    if (v80 == 2)
    {
      v88 = *(v77 + 16);
      v87 = *(v77 + 24);
      v65 = __OFSUB__(v87, v88);
      v86 = v87 - v88;
      if (v65)
      {
        goto LABEL_239;
      }

      goto LABEL_115;
    }

    v30 = v67;
    if (v80 == 1)
    {
      LODWORD(v86) = HIDWORD(v77) - v77;
      if (__OFSUB__(HIDWORD(v77), v77))
      {
        goto LABEL_238;
      }

      v86 = v86;
      if (v321 <= 1)
      {
LABEL_116:
        v89 = v306;
        if (v82)
        {
          v89 = log;
          if (v295)
          {
            goto LABEL_236;
          }
        }

        goto LABEL_122;
      }
    }

    else
    {
      v86 = BYTE6(v79);
      if (v321 <= 1)
      {
        goto LABEL_116;
      }
    }

LABEL_120:
    if (v82 != 2)
    {
      if (!v86)
      {
        goto LABEL_134;
      }

LABEL_31:
      sub_100016590(v77, v79);
      v324 = 0;
      goto LABEL_32;
    }

    v91 = *(v320 + 16);
    v90 = *(v320 + 24);
    v65 = __OFSUB__(v90, v91);
    v89 = (v90 - v91);
    if (v65)
    {
      goto LABEL_237;
    }

LABEL_122:
    if (v86 != v89)
    {
      goto LABEL_31;
    }

    if (v86 < 1)
    {
LABEL_134:
      v100 = v77;
      v101 = v79;
LABEL_136:
      sub_100016590(v100, v101);
      v324 = 0;
LABEL_137:
      v102 = *(v0 + 792);
      v103 = *(v0 + 784);
      sub_1002DB7C8(*(v0 + 776), v103, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
      sub_1002DB7C8(v103, v102, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
      v30 = v314;
      v31 = v299;
      v322 = v314[2];
      if (v322)
      {
        v319 = v314 + ((*(v311 + 80) + 32) & ~*(v311 + 80));

        v104 = 0;
        v105 = v305;
        while (v104 < v314[2])
        {
          sub_1002DB760(&v319[*(v311 + 72) * v104], *(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
          v107 = sub_100496ABC();
          v108 = **(v0 + 712);
          v109 = *(v288 + 8);
          v110 = **(v0 + 792);
          v111 = *(v105 + 8);
          sub_100017D5C(v110, v111);
          sub_10002EA98(57, v110, v111, &v331);
          sub_100496F68(v331, v332, &v329);
          v112 = v330;
          if (v330 >> 60 == 15)
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }

          v325 = *(v0 + 792);
          v113 = v329;
          v114 = PublicKey.advertisement.getter(v329, v330);
          v116 = v115;
          v15 = sub_100006654(v113, v112);
          v117 = v109 >> 62;
          v309 = *(v303 + 20);
          if ((v109 >> 62) > 1)
          {
            if (v117 == 2)
            {
              v120 = *(v108 + 16);
              v119 = *(v108 + 24);
              v118 = v119 - v120;
              if (__OFSUB__(v119, v120))
              {
                goto LABEL_242;
              }
            }

            else
            {
              v118 = 0;
            }
          }

          else if (v117)
          {
            if (__OFSUB__(HIDWORD(v108), v108))
            {
              __break(1u);
LABEL_242:
              __break(1u);
              goto LABEL_243;
            }

            v118 = HIDWORD(v108) - v108;
          }

          else
          {
            v118 = BYTE6(v109);
          }

          sub_100A2A240(3);
          v122 = v121;
          v123 = v107;
          sub_100017D5C(v108, v109);
          sub_100017D5C(v114, v116);
          if (v118 >= v122)
          {
            v124 = (v0 + 672);
            sub_100A2AA58(v123, v108, v109, v114, v116, *(v0 + 672));
          }

          else
          {
            v124 = (v0 + 680);
            sub_100A2B118(v123, v108, v109, v114, v116, *(v0 + 680));
          }

          v278 = v114;
          v280 = v116;
          v307 = v104;
          v125 = *v124;
          logb = *(v0 + 1016);
          v296 = v123;
          v284 = *(v0 + 1000);
          v286 = *(v0 + 1272);
          v126 = *(v0 + 976);
          v127 = *(v0 + 920);
          v128 = *(v0 + 856);
          v274 = *(v0 + 968);
          v129 = *(v0 + 840);
          v130 = *(v0 + 832);
          v131 = *(v0 + 696);
          v132 = *(v0 + 688);
          v133 = *(v0 + 656);
          sub_1002DB7C8(v125, v132, type metadata accessor for BeaconPayloadv1);
          sub_1002DB7C8(v132, v131, type metadata accessor for BeaconPayloadv1);
          v134 = v126;
          v275 = v126;
          (*v273)(v126, 1, 1, v127);
          v282 = *(v131 + v272[10]);
          v135 = *v290;
          (*v290)(v128, v131 + v272[5], v129);
          v136 = *(v131 + v272[7]);
          v137 = *(v131 + v272[8]);
          v138 = *(v131 + v272[9]);
          (*v271)(v133, 1, 1, v129);
          sub_1000D2A70(v134, v274, &unk_1016C1120, &qword_1013C49D0);
          v266 = v135;
          v135(&v130[v313[5]], v128, v129);
          sub_1000D2A70(v133, &v130[v313[10]], &unk_101696900, &unk_10138B1E0);
          sub_1000D2A70(v274, &v130[v313[11]], &unk_1016C1120, &qword_1013C49D0);
          UUID.init()();
          sub_100016590(v278, v280);
          sub_10000B3A8(v274, &unk_1016C1120, &qword_1013C49D0);
          sub_10000B3A8(v133, &unk_101696900, &unk_10138B1E0);
          v139 = *v289;
          (*v289)(v128, v129);
          sub_10000B3A8(v275, &unk_1016C1120, &qword_1013C49D0);
          sub_1002DBBF0(v131, type metadata accessor for BeaconPayloadv1);
          *v130 = v282;
          *&v130[v313[6]] = v136;
          *&v130[v313[7]] = v137;
          *&v130[v313[8]] = v138;
          v130[v313[9]] = 15;
          *&v130[v313[13]] = 256;
          v140 = *(v304 + 48);
          (*v270)(v284, v325 + v309, v286);
          sub_1002DB7C8(v130, v284 + v140, type metadata accessor for RawSearchResult);
          (*v269)(v284, 0, 1, logb);
          if ((*v268)(v284, 1, logb) == 1)
          {
            v141 = *(v0 + 1000);

            sub_10000B3A8(v141, &qword_10169C968, &qword_101398A10);
            v142 = v307;
            if (qword_101694510 != -1)
            {
              swift_once();
            }

            v143 = *(v0 + 792);
            v144 = *(v0 + 760);
            sub_1000076D4(v328, qword_10177A818);
            sub_1002DB760(v143, v144, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
            v145 = Logger.logObject.getter();
            v146 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v145, v146))
            {
              v147 = *(v0 + 760);
              v148 = swift_slowAlloc();
              v149 = swift_slowAlloc();
              v331 = v149;
              *v148 = 141558275;
              *(v148 + 4) = 1752392040;
              *(v148 + 12) = 2081;
              sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v150 = dispatch thunk of CustomStringConvertible.description.getter();
              v152 = v151;
              sub_1002DBBF0(v147, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v153 = sub_1000136BC(v150, v152, &v331);

              *(v148 + 14) = v153;
              _os_log_impl(&_mh_execute_header, v145, v146, "Could not create search result for beacon: %{private,mask.hash}s.", v148, 0x16u);
              sub_100007BAC(v149);
              v142 = v307;
            }

            else
            {
              v106 = *(v0 + 760);

              sub_1002DBBF0(v106, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
            }
          }

          else
          {
            v310 = v139;
            v154 = *(v0 + 1088);
            v155 = *(v0 + 1080);
            sub_1000D2AD8(*(v0 + 1000), v154, &qword_10169C970, &qword_101398A18);
            sub_1000D2A70(v154, v155, &qword_10169C970, &qword_101398A18);
            v156 = *(v304 + 48);
            swift_beginAccess();
            sub_1005CAD18(v155, *(v0 + 520));
            v158 = *(v0 + 1272);
            if (v157)
            {
              v159 = v157;
              v160 = *(v0 + 1088);
              v161 = *(v0 + 1080);
              v162 = *(v0 + 1072);
              swift_endAccess();
              sub_1002DBBF0(v155 + v156, type metadata accessor for RawSearchResult);
              v326 = *v298;
              (*v298)(v161, v158);
              sub_1000D2A70(v160, v162, &qword_10169C970, &qword_101398A18);
              v163 = (v162 + *(v304 + 48));
              Hasher.init(_seed:)();
              sub_100D15128(&v331);
              v164 = Hasher._finalize()();
              v165 = -1 << *(v159 + 32);
              v166 = v164 & ~v165;
              if ((*(v159 + 56 + ((v166 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v166))
              {
                v167 = ~v165;
                v168 = *v163;
                v169 = *(v267 + 72);
                do
                {
                  v170 = *(v0 + 816);
                  sub_1002DB760(*(v159 + 48) + v166 * v169, v170, type metadata accessor for RawSearchResult);
                  v171 = *(v0 + 816);
                  if (*v170 == v168 && (v172 = static Date.== infix(_:_:)(), v171 = *(v0 + 816), (v172 & 1) != 0) && *(v171 + v313[6]) == *&v163[v313[6]] && *(v171 + v313[7]) == *&v163[v313[7]] && *(v171 + v313[8]) == *&v163[v313[8]])
                  {
                    v173 = *(v0 + 816);
                    v174 = static UUID.== infix(_:_:)();
                    sub_1002DBBF0(v173, type metadata accessor for RawSearchResult);
                    if (v174)
                    {
                      goto LABEL_174;
                    }
                  }

                  else
                  {
                    sub_1002DBBF0(v171, type metadata accessor for RawSearchResult);
                  }

                  v166 = (v166 + 1) & v167;
                }

                while (((*(v159 + 56 + ((v166 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v166) & 1) != 0);
              }

              v175 = *(v0 + 832);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              sub_1002DB760(v163, v175, type metadata accessor for RawSearchResult);
              v331 = v159;
              sub_100DFE348(v175, v166, isUniquelyReferenced_nonNull_native);
              v159 = v331;
LABEL_174:
              sub_1002DBBF0(v163, type metadata accessor for RawSearchResult);
              v177 = *(v0 + 1128);
              v178 = *(v0 + 1088);
              v326(*(v0 + 1072), *(v0 + 1272));
              sub_1000D2A70(v178, v177, &qword_10169C970, &qword_101398A18);
              v179 = *(v304 + 48);
              swift_beginAccess();
              sub_1001DE1B0(v159, v177);
            }

            else
            {
              v180 = *(v0 + 1128);
              v181 = *(v0 + 1088);
              v182 = *(v0 + 1080);
              v183 = *(v0 + 1064);
              swift_endAccess();
              sub_1002DBBF0(v155 + v156, type metadata accessor for RawSearchResult);
              v326 = *v298;
              v285 = v158;
              (*v298)(v182, v158);
              sub_1000D2A70(v181, v180, &qword_10169C970, &qword_101398A18);
              v179 = *(v304 + 48);
              sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
              v184 = (*(v267 + 80) + 32) & ~*(v267 + 80);
              v185 = swift_allocObject();
              *(v185 + 16) = xmmword_101385D80;
              sub_1000D2A70(v181, v183, &qword_10169C970, &qword_101398A18);
              sub_1002DB7C8(v183 + *(v304 + 48), v185 + v184, type metadata accessor for RawSearchResult);
              v326(v183, v285);
              v186 = sub_10112A090(v185);
              swift_setDeallocating();
              sub_1002DBBF0(v185 + v184, type metadata accessor for RawSearchResult);
              swift_deallocClassInstance();
              swift_beginAccess();
              v187 = swift_isUniquelyReferenced_nonNull_native();
              v331 = *(v0 + 520);
              sub_100FFC200(v186, v180, v187);
              v326(v180, v285);
              *(v0 + 520) = v331;
            }

            swift_endAccess();
            sub_1002DBBF0(*(v0 + 1128) + v179, type metadata accessor for RawSearchResult);
            if (qword_101694510 != -1)
            {
              swift_once();
            }

            v188 = *(v0 + 1088);
            v189 = *(v0 + 1056);
            v190 = *(v0 + 1048);
            v191 = *(v0 + 1040);
            v192 = *(v0 + 792);
            v193 = *(v0 + 768);
            sub_1000076D4(v328, qword_10177A818);
            sub_1002DB760(v192, v193, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
            sub_1000D2A70(v188, v189, &qword_10169C970, &qword_101398A18);
            sub_1000D2A70(v188, v190, &qword_10169C970, &qword_101398A18);
            sub_1000D2A70(v188, v191, &qword_10169C970, &qword_101398A18);
            v194 = Logger.logObject.getter();
            v195 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v194, v195))
            {
              v287 = v195;
              loga = v194;
              v196 = *(v0 + 1272);
              v197 = *(v0 + 1128);
              v198 = *(v0 + 1056);
              v283 = *(v0 + 1040);
              v279 = *(v0 + 1048);
              v281 = *(v0 + 1032);
              v276 = *(v0 + 840);
              v277 = *(v0 + 856);
              v199 = *(v0 + 768);
              v200 = swift_slowAlloc();
              v331 = swift_slowAlloc();
              *v200 = 141559043;
              *(v200 + 4) = 1752392040;
              *(v200 + 12) = 2081;
              sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v201 = dispatch thunk of CustomStringConvertible.description.getter();
              v203 = v202;
              sub_1002DBBF0(v199, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v204 = sub_1000136BC(v201, v203, &v331);

              *(v200 + 14) = v204;
              *(v200 + 22) = 2082;
              sub_1000D2A70(v198, v197, &qword_10169C970, &qword_101398A18);
              v205 = v197 + *(v304 + 48);
              v266(v277, v205 + v313[5], v276);
              sub_1002DBBF0(v205, type metadata accessor for RawSearchResult);
              v326(v197, v196);
              sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
              v206 = dispatch thunk of CustomStringConvertible.description.getter();
              v208 = v207;
              v310(v277, v276);
              sub_10000B3A8(v198, &qword_10169C970, &qword_101398A18);
              v209 = sub_1000136BC(v206, v208, &v331);

              *(v200 + 24) = v209;
              *(v200 + 32) = 2082;
              sub_1000D2A70(v279, v197, &qword_10169C970, &qword_101398A18);
              v210 = v197 + *(v304 + 48);
              LOBYTE(v209) = *(v210 + v313[9]);
              sub_1002DBBF0(v210, type metadata accessor for RawSearchResult);
              v326(v197, v196);
              v211 = sub_100013454(v209);
              v213 = v212;
              sub_10000B3A8(v279, &qword_10169C970, &qword_101398A18);
              v214 = sub_1000136BC(v211, v213, &v331);

              *(v200 + 34) = v214;
              *(v200 + 42) = 2048;
              sub_1000D2A70(v283, v281, &qword_10169C970, &qword_101398A18);
              swift_beginAccess();
              v215 = *(v0 + 520);
              if (*(v215 + 16) && (v216 = sub_1000210EC(*(v0 + 1032)), (v217 & 1) != 0))
              {
                v218 = *(*(v215 + 56) + 8 * v216);
                swift_endAccess();
                v219 = *(v218 + 16);
              }

              else
              {
                swift_endAccess();
                v219 = 0;
              }

              v225 = *(v0 + 1272);
              v226 = *(v0 + 1088);
              v227 = *(v0 + 1040);
              v228 = *(v0 + 1032);
              sub_1002DBBF0(v228 + *(v304 + 48), type metadata accessor for RawSearchResult);
              v326(v228, v225);
              sub_10000B3A8(v227, &qword_10169C970, &qword_101398A18);
              *(v200 + 44) = v219;
              _os_log_impl(&_mh_execute_header, loga, v287, "Return search result for beacon (own beacon): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v200, 0x34u);
              swift_arrayDestroy();

              v224 = v226;
            }

            else
            {
              v220 = *(v0 + 1088);
              v221 = *(v0 + 1056);
              v222 = *(v0 + 1048);
              v223 = *(v0 + 768);
              sub_10000B3A8(*(v0 + 1040), &qword_10169C970, &qword_101398A18);

              sub_10000B3A8(v222, &qword_10169C970, &qword_101398A18);
              sub_10000B3A8(v221, &qword_10169C970, &qword_101398A18);
              sub_1002DBBF0(v223, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v224 = v220;
            }

            sub_10000B3A8(v224, &qword_10169C970, &qword_101398A18);
            v142 = v307;
          }

          v104 = v142 + 1;
          sub_1002DBBF0(*(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
          v105 = v305;
          if (v104 == v322)
          {
            v30 = v314;

            sub_100016590(v320, v312);

            v324 = 0;
            v31 = v299;
            goto LABEL_188;
          }
        }

        goto LABEL_229;
      }

      sub_100016590(v320, v312);

LABEL_188:
      sub_1002DBBF0(*(v0 + 792), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
LABEL_132:
      v37 = v302 + 1;
      if (v302 + 1 == v297)
      {
        goto LABEL_200;
      }

      goto LABEL_18;
    }

    sub_100017D5C(v320, v312);
    sub_100017D5C(v320, v312);
    sub_100017D5C(v77, v79);
    v92 = sub_100F0B1BC(v77, v79, v320, v312);
    v324 = 0;
    sub_100016590(v77, v79);
    sub_100016590(v77, v79);
    sub_100016590(v320, v312);
    if (v92)
    {
      goto LABEL_137;
    }

LABEL_32:
    sub_1002DBBF0(*(v0 + 776), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v30 = (v30 + v318);
    v44 = (v85 - 1);
    if (!v44)
    {
      goto LABEL_127;
    }
  }

  v30 = static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_240;
  }

LABEL_207:
  v253 = qword_10177BA00;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v254 = swift_allocObject();
  *(v254 + 16) = xmmword_101385D80;
  *(v0 + 600) = v31;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v255 = String.init<A>(describing:)();
  v257 = v256;
  *(v254 + 56) = &type metadata for String;
  *(v254 + 64) = sub_100008C00();
  *(v254 + 32) = v255;
  *(v254 + 40) = v257;
  os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v253, "Error deriving advertisementKey: %@", 35, 2, v254);

  sub_1001BAF88();
  v258 = swift_allocError();
  *v259 = 0;
  swift_willThrow();

LABEL_220:
  v331 = 0;
  v332 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v264 = v332;
  *(v0 + 472) = v331;
  *(v0 + 480) = v264;
  v265._countAndFlagsBits = 0xD000000000000021;
  v265._object = 0x800000010134CB30;
  String.append(_:)(v265);
  *(v0 + 584) = v258;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002B37A0()
{
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1392);
  v3 = *(v0 + 1328);
  v4 = *(v0 + 1280);
  v5 = *(v0 + 1272);
  (*(v0 + 1448))(v3, *(v0 + 1344), v5);
  v6 = *(v4 + 80);
  *(v0 + 1776) = v6;
  v7 = (v6 + 24) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 1496) = v8;
  *(v8 + 16) = v2;
  v1(v8 + v7, v3, v5);

  v9 = swift_task_alloc();
  *(v0 + 1504) = v9;
  *v9 = v0;
  v9[1] = sub_1002B3908;
  v10 = *(v0 + 1208);
  v11 = *(v0 + 1200);

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB628, v8, v11);
}

uint64_t sub_1002B3908()
{
  v1 = *(*v0 + 648);

  return _swift_task_switch(sub_1002B3A34, v1, 0);
}

uint64_t sub_1002B3A34()
{
  v372 = v0;
  v1 = *(v0 + 1216);
  v2 = *(v0 + 1208);
  if ((*(*(v0 + 1224) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 1392);
    sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);
    v4 = sub_1002B6BC4;
    v5 = v3;
    v6 = 0;

    return _swift_task_switch(v4, v5, v6);
  }

  v7 = *(v0 + 1448);
  v8 = *(v0 + 1336);
  v9 = *(v0 + 1272);
  v10 = *(v0 + 1232);
  sub_1002DB7C8(v2, v10, type metadata accessor for MemberSharingCircle);
  v7(v8, v10 + *(v1 + 24), v9);
  sub_1002DBBF0(v10, type metadata accessor for MemberSharingCircle);
  v11 = *(v0 + 1488);
  v12 = sub_100496ABC();
  *(v0 + 1528) = v12;
  if (v11)
  {
    v13 = *(v0 + 1480);
    v14 = *(v0 + 1472);
    v15 = *(v0 + 1384);
    v16 = *(v0 + 1344);
    v17 = *(v0 + 1336);
    v18 = *(v0 + 1280);
    v19 = *(v0 + 1272);

    sub_100006654(v14, v13);
    v20 = *(v18 + 8);
    v20(v16, v19);
    sub_1002DBBF0(v15, type metadata accessor for KeyDropFetchResponse.LocationPayload);
    v20(v17, v19);

    v21 = *(v0 + 8);

    return v21();
  }

  v23 = *(v0 + 1384);
  v24 = *(v23 + 32);
  *(v0 + 1536) = v24;
  v25 = *(v24 + 16);
  *(v0 + 1544) = v25;
  v26 = *(v0 + 1480);
  v27 = *(v0 + 1472);
  if (v25)
  {
    *(v0 + 1552) = 0;
    if (*(v24 + 16))
    {
      v28 = v26 >> 62;
      v29 = *(v24 + 32);
      *(v0 + 1560) = v29;
      v2 = *(v24 + 40);
      *(v0 + 1568) = v2;
      v30 = *(v24 + 48);
      *(v0 + 1580) = *(v24 + 52);
      *(v0 + 1576) = v30;
      if ((v26 >> 62) > 1)
      {
        if (v28 != 2)
        {
          v32 = 0;
          v23 = 0;
          v33 = 0;
          v31 = 0;
          goto LABEL_208;
        }

        v23 = *(v27 + 16);
        v32 = *(v27 + 24);
      }

      else
      {
        if (!v28)
        {
          v23 = 0;
          v31 = 0;
          v32 = BYTE6(v26);
          v33 = BYTE6(v26);
          goto LABEL_208;
        }

        v32 = v27 >> 32;
        v23 = v27;
      }

      sub_10002E98C(v27, v26);
      if (v32 >= v23)
      {
        v26 = *(v0 + 1480);
        v27 = *(v0 + 1472);
        if (v26 >> 62 == 2)
        {
          v31 = *(v27 + 16);
          v33 = *(v27 + 24);
        }

        else
        {
          v33 = v27 >> 32;
          v31 = v27;
        }

LABEL_208:
        if (v33 >= v32 && v32 >= v31)
        {
          if (!__OFSUB__(v32, v23))
          {
            if ((v32 - v23) >= 0x39)
            {
              v245 = v23 + 57;
              if (__OFADD__(v23, 57))
              {
                goto LABEL_310;
              }

              v246 = v26 >> 62;
              if ((v26 >> 62) > 1)
              {
                if (v246 == 2)
                {
                  v247 = *(v27 + 16);
                  v248 = *(v27 + 24);
                }

                else
                {
                  v248 = 0;
                  v247 = 0;
                }
              }

              else if (v246)
              {
                v248 = v27 >> 32;
                v247 = v27;
              }

              else
              {
                v247 = 0;
                v248 = BYTE6(v26);
              }

              if (v248 < v245 || v245 < v247)
              {
                goto LABEL_311;
              }

              v259 = 0;
              if (v246 <= 1)
              {
                if (!v246)
                {
                  goto LABEL_241;
                }

                goto LABEL_238;
              }

              if (v246 == 3)
              {
LABEL_241:
                if (v245 >= v259)
                {
LABEL_242:
                  sub_100017D5C(v29, v2);
                  sub_100017D5C(v29, v2);
                  v260 = Data._Representation.subscript.getter();
                  v262 = v261;
                  sub_100006654(v27, v26);
                  v263 = v262 >> 62;
                  if ((v262 >> 62) <= 1)
                  {
                    if (!v263)
                    {
                      if (BYTE6(v262) != 57)
                      {
LABEL_253:
                        v278 = v260;
                        v279 = v262;
LABEL_254:
                        sub_100016590(v278, v279);
                        return _assertionFailure(_:_:file:line:flags:)();
                      }

                      goto LABEL_249;
                    }

                    if (!__OFSUB__(HIDWORD(v260), v260))
                    {
                      if (HIDWORD(v260) - v260 != 57)
                      {
                        goto LABEL_253;
                      }

                      goto LABEL_249;
                    }

LABEL_317:
                    __break(1u);
                    swift_once();
                    v280 = qword_10177BA00;
                    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                    v281 = swift_allocObject();
                    *(v281 + 16) = v310;
                    *v308 = v26;
                    swift_errorRetain();
                    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                    v282 = String.init<A>(describing:)();
                    v284 = v283;
                    *(v281 + 56) = &type metadata for String;
                    *(v281 + 64) = sub_100008C00();
                    *(v281 + 32) = v282;
                    *(v281 + 40) = v284;
                    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v280, "Error deriving advertisementKey: %@", 35, 2, v281);

                    sub_1001BAF88();
                    v294 = swift_allocError();
                    *v285 = 0;
                    swift_willThrow();

                    goto LABEL_274;
                  }

                  if (v263 != 2)
                  {
                    goto LABEL_253;
                  }

                  v265 = *(v260 + 16);
                  v264 = *(v260 + 24);
                  v73 = __OFSUB__(v264, v265);
                  v266 = v264 - v265;
                  if (!v73)
                  {
                    if (v266 != 57)
                    {
                      goto LABEL_253;
                    }

LABEL_249:
                    v267 = sub_100A7A194(v260, v262, 0, 0);
                    v268 = sub_100A7829C(v267, 0, 2);
                    *(v0 + 1584) = v268;
                    *(v0 + 1592) = v269;
                    v286 = v268;
                    v75 = v269;
                    v4 = CCECCryptorRelease();
                    v287 = v75 >> 62;
                    if ((v75 >> 62) <= 1)
                    {
                      if (v287)
                      {
                        LODWORD(v288) = HIDWORD(v286) - v286;
                        if (__OFSUB__(HIDWORD(v286), v286))
                        {
                          goto LABEL_321;
                        }

                        v288 = v288;
                      }

                      else
                      {
                        v288 = BYTE6(v75);
                      }

                      goto LABEL_278;
                    }

                    if (v287 != 2)
                    {
                      v302 = 0;
                      goto LABEL_291;
                    }

                    v291 = *(v286 + 16);
                    v290 = *(v286 + 24);
                    v73 = __OFSUB__(v290, v291);
                    v288 = v290 - v291;
                    if (!v73)
                    {
LABEL_278:
                      if (v288 == 28)
                      {
                        sub_100016590(v260, v262);
                        v298 = swift_task_alloc();
                        *(v0 + 1600) = v298;
                        *v298 = v0;
                        v298[1] = sub_1002BA248;
                        v299 = *(v0 + 1528);
                        v300 = *(v0 + 1336);
                        v301 = *(v0 + 1008);

                        return sub_1002D7014(v301, v29, v2, v299, v286, v75, 0, v300);
                      }

                      if (v287 == 2)
                      {
                        v304 = *(v286 + 16);
                        v303 = *(v286 + 24);
                        v302 = v303 - v304;
                        if (!__OFSUB__(v303, v304))
                        {
                          goto LABEL_291;
                        }

                        __break(1u);
                      }

                      else if (v287 == 1)
                      {
                        if (__OFSUB__(HIDWORD(v286), v286))
                        {
                          goto LABEL_322;
                        }

                        v302 = HIDWORD(v286) - v286;
                        goto LABEL_291;
                      }

                      v302 = BYTE6(v75);
LABEL_291:
                      sub_100018350();
                      v305 = swift_allocError();
                      *v306 = 28;
                      *(v306 + 8) = v302;
                      *(v306 + 16) = 0;
                      swift_willThrow();
                      sub_100016590(v286, v75);
                      goto LABEL_250;
                    }

                    __break(1u);
LABEL_268:
                    v289 = 0;
LABEL_273:
                    sub_100018350();
                    v294 = swift_allocError();
                    *v295 = 28;
                    *(v295 + 8) = v289;
                    *(v295 + 16) = 0;
                    swift_willThrow();
                    sub_100016590(v75, v2);
LABEL_274:
                    v370 = 0;
                    v371 = 0xE000000000000000;
                    _StringGuts.grow(_:)(35);
                    v296 = v371;
                    *(v0 + 472) = v370;
                    *(v0 + 480) = v296;
                    v297._countAndFlagsBits = 0xD000000000000021;
                    v297._object = 0x800000010134CB30;
                    String.append(_:)(v297);
                    *(v0 + 584) = v294;
                    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                    _print_unlocked<A, B>(_:_:)();
                    return _assertionFailure(_:_:file:line:flags:)();
                  }

LABEL_316:
                  __break(1u);
                  goto LABEL_317;
                }

LABEL_301:
                __break(1u);
LABEL_302:
                __break(1u);
LABEL_303:
                __break(1u);
                goto LABEL_304;
              }
            }

            else
            {
              v244 = v26 >> 62;
              if ((v26 >> 62) <= 1)
              {
                if (!v244)
                {
                  goto LABEL_242;
                }

                v245 = v27 >> 32;
LABEL_238:
                v259 = v27;
                goto LABEL_241;
              }

              if (v244 != 2)
              {
                goto LABEL_242;
              }

              v245 = *(v27 + 24);
            }

            v259 = *(v27 + 16);
            goto LABEL_241;
          }

LABEL_300:
          __break(1u);
          goto LABEL_301;
        }

LABEL_299:
        __break(1u);
        goto LABEL_300;
      }

LABEL_298:
      __break(1u);
      goto LABEL_299;
    }

LABEL_297:
    __break(1u);
    goto LABEL_298;
  }

  v2 = *(v0 + 1344);
  v34 = *(v0 + 1336);
  v35 = *(v0 + 1280);
  v36 = *(v0 + 1272);

  sub_100006654(v27, v26);
  v37 = *(v35 + 8);
  v37(v2, v36);
  sub_1002DBBF0(v23, type metadata accessor for KeyDropFetchResponse.LocationPayload);
  v37(v34, v36);
  v38 = *(v0 + 1408) + 1;
  if (v38 != *(v0 + 1400))
  {
    v2 = &qword_1016980D0;
    v26 = &unk_10138F3B0;
    while (1)
    {
      *(v0 + 1408) = v38;
      v232 = *(v0 + 632);
      if (!v232)
      {
        v232 = _swiftEmptyArrayStorage;
      }

      if (v38 >= v232[2])
      {
        break;
      }

      v233 = *(v0 + 1384);
      v234 = *(v0 + 1352);
      v235 = *(v0 + 1280);
      v236 = *(v0 + 1272);
      v237 = *(v0 + 1264);
      sub_1002DB760(v232 + ((*(v0 + 1768) + 32) & ~*(v0 + 1768)) + *(*(v0 + 1360) + 72) * v38, v233, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v238 = *(v233 + 16);
      v239 = *(v233 + 24);
      sub_1000D2A70(v233 + *(v234 + 28), v237, &qword_1016980D0, &unk_10138F3B0);
      v240 = *(v235 + 48);
      *(v0 + 1416) = v240;
      *(v0 + 1424) = (v235 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v240(v237, 1, v236) != 1)
      {
        v250 = *(v0 + 1344);
        v251 = *(v0 + 1280);
        v252 = *(v0 + 1272);
        v253 = *(v0 + 1264);
        v254 = *(v0 + 1256);
        v255 = *(v251 + 32);
        *(v0 + 1432) = v255;
        *(v0 + 1440) = (v251 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v255(v250, v253, v252);
        v256 = *(v251 + 16);
        *(v0 + 1448) = v256;
        *(v0 + 1456) = (v251 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v256(v254, v250, v252);
        (*(v251 + 56))(v254, 0, 1, v252);
        v257 = swift_task_alloc();
        *(v0 + 1464) = v257;
        *v257 = v0;
        v257[1] = sub_1002B09AC;
        v258 = *(v0 + 1256);

        return sub_1002D5B7C(v238, v239, v258);
      }

      sub_10000B3A8(*(v0 + 1264), &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      v241 = type metadata accessor for Logger();
      sub_1000076D4(v241, qword_10177A818);
      v23 = Logger.logObject.getter();
      v242 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v242))
      {
        v243 = swift_slowAlloc();
        *v243 = 0;
        _os_log_impl(&_mh_execute_header, v23, v242, "Missing share id in payload.", v243, 2u);
      }

      v231 = *(v0 + 1384);

      sub_1002DBBF0(v231, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v38 = *(v0 + 1408) + 1;
      if (v38 == *(v0 + 1400))
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_293:
    __break(1u);
LABEL_294:
    __break(1u);
LABEL_295:
    __break(1u);
LABEL_296:
    __break(1u);
    goto LABEL_297;
  }

LABEL_15:
  v23 = _swiftEmptyArrayStorage;

  if (*(v0 + 624))
  {
    v23 = *(v0 + 624);
  }

  v339 = *(v23 + 16);
  if (!v339)
  {

LABEL_224:

    swift_beginAccess();
    v365 = *(v0 + 520);

    v249 = *(v0 + 8);

    return v249(v365);
  }

  v39 = *(v0 + 1280);
  v308 = (v0 + 600);
  v40 = *(v0 + 1024);
  v340 = *(v0 + 1016);
  v41 = *(v0 + 848);
  v309 = *(v0 + 808);
  v353 = *(v0 + 800);
  v42 = *(v0 + 792);
  v363 = *(v0 + 776);
  v332 = *(v0 + 752);
  v345 = *(v0 + 744);
  v43 = *(v0 + 728);
  v342 = v23 + 32;
  v328 = *(v0 + 712);
  v356 = (v43 + 104);
  v355 = (v43 + 8);
  v351 = *(v0 + 704);
  v316 = (*(v0 + 928) + 56);
  v331 = (v41 + 16);
  v315 = *(v0 + 664);
  v314 = (v41 + 56);
  v330 = (v41 + 8);
  v313 = (v39 + 16);
  v311 = (v40 + 48);
  v312 = (v40 + 56);
  v341 = *(*(v0 + 640) + 16);
  v333 = (v39 + 8);
  v354 = enum case for HashAlgorithm.sha256(_:);

  v26 = 0;
  v44 = 0;
  v310 = xmmword_101385D80;
  v329 = v23;
  v344 = v42;
  while (1)
  {
    if (v44 >= *(v23 + 16))
    {
      goto LABEL_305;
    }

    v45 = v341;
    v343 = v44;
    v46 = (v342 + 24 * v44);
    v48 = *v46;
    v47 = v46[1];
    v352 = v47;
    v362 = v46[2];
    if (v341)
    {
      break;
    }

    sub_100017D5C(v48, v47);

LABEL_128:
    if (qword_101694510 != -1)
    {
      swift_once();
    }

    v98 = type metadata accessor for Logger();
    sub_1000076D4(v98, qword_10177A818);
    sub_100017D5C(v48, v352);

    v2 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    sub_100016590(v48, v352);

    if (os_log_type_enabled(v2, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v370 = v101;
      *v100 = 141558275;
      *(v100 + 4) = 1752392040;
      *(v100 + 12) = 2081;
      *(v0 + 488) = v48;
      *(v0 + 496) = v352;
      sub_10025DB08();
      v102 = RawRepresentable<>.hexString.getter();
      v104 = sub_1000136BC(v102, v103, &v370);

      *(v100 + 14) = v104;
      _os_log_impl(&_mh_execute_header, v2, v99, "No member ownded device decryption key found for advt: %{private,mask.hash}s.", v100, 0x16u);
      sub_100007BAC(v101);
    }

    sub_100016590(v48, v352);

LABEL_133:
    v44 = v343 + 1;
    v23 = v329;
    if (v343 + 1 == v339)
    {
      goto LABEL_224;
    }
  }

  v23 = *(v0 + 640) + ((*(v332 + 80) + 32) & ~*(v332 + 80));
  sub_100017D5C(v48, v47);
  if (v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = v47 == 0xC000000000000000;
  }

  v50 = !v49;
  v349 = v50;
  v359 = v47 >> 62;
  v346 = BYTE6(v47);
  v357 = *(v332 + 72);
  v51 = __OFSUB__(HIDWORD(v48), v48);
  log = v51;
  v334 = HIDWORD(v48) - v48;

  v364 = v48;
  while (1)
  {
    v366 = v45;
    v53 = *(v0 + 776);
    sub_1002DB760(v23, v53, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v2 = *v53;
    v54 = *(v363 + 8);
    v55 = v54 >> 62;
    if ((v54 >> 62) > 1)
    {
      if (v55 == 2)
      {
        v56 = *(v2 + 16);
        v58 = *(v2 + 24);
        sub_100017D5C(v2, *(v363 + 8));
        v57 = *(v2 + 16);
        v59 = *(v2 + 24);
      }

      else
      {
        v56 = 0;
        v58 = 0;
        v59 = 0;
        v57 = 0;
      }
    }

    else if (v55)
    {
      v56 = v2;
      v58 = v2 >> 32;
      sub_100017D5C(v2, *(v363 + 8));
      v59 = v2 >> 32;
      v57 = v2;
    }

    else
    {
      v56 = 0;
      v57 = 0;
      v58 = BYTE6(v54);
      v59 = BYTE6(v54);
    }

    if (v59 < v56 || v56 < v57)
    {
      goto LABEL_293;
    }

    if (v55 > 1)
    {
      if (v55 == 2)
      {
        v60 = *(v2 + 16);
        v61 = *(v2 + 24);
      }

      else
      {
        v61 = 0;
        v60 = 0;
      }
    }

    else if (v55)
    {
      v60 = v2;
      v61 = v2 >> 32;
    }

    else
    {
      v60 = 0;
      v61 = BYTE6(v54);
    }

    if (v61 < v58 || v58 < v60)
    {
      goto LABEL_294;
    }

    if (__OFSUB__(v58, v56))
    {
      goto LABEL_295;
    }

    if ((v58 - v56) < 0x39)
    {
      if (v55 <= 1)
      {
        if (!v55)
        {
          goto LABEL_77;
        }

        v62 = v2 >> 32;
LABEL_73:
        v65 = v2;
        goto LABEL_76;
      }

      if (v55 != 2)
      {
        goto LABEL_77;
      }

      v62 = *(v2 + 24);
LABEL_75:
      v65 = *(v2 + 16);
      goto LABEL_76;
    }

    v62 = v56 + 57;
    if (__OFADD__(v56, 57))
    {
      goto LABEL_302;
    }

    if (v55 > 1)
    {
      if (v55 == 2)
      {
        v63 = *(v2 + 16);
        v64 = *(v2 + 24);
      }

      else
      {
        v64 = 0;
        v63 = 0;
      }
    }

    else if (v55)
    {
      v63 = v2;
      v64 = v2 >> 32;
    }

    else
    {
      v63 = 0;
      v64 = BYTE6(v54);
    }

    if (v64 < v62 || v62 < v63)
    {
      goto LABEL_303;
    }

    v65 = 0;
    if (v55 <= 1)
    {
      if (!v55)
      {
        goto LABEL_76;
      }

      goto LABEL_73;
    }

    if (v55 != 3)
    {
      goto LABEL_75;
    }

LABEL_76:
    if (v62 < v65)
    {
      goto LABEL_296;
    }

LABEL_77:
    v66 = Data._Representation.subscript.getter();
    v68 = v67;
    sub_100016590(v2, v54);
    v69 = v68 >> 62;
    if ((v68 >> 62) > 1)
    {
      if (v69 != 2)
      {
        goto LABEL_256;
      }

      v72 = *(v66 + 16);
      v71 = *(v66 + 24);
      v73 = __OFSUB__(v71, v72);
      v70 = v71 - v72;
      if (v73)
      {
        goto LABEL_306;
      }
    }

    else if (v69)
    {
      LODWORD(v70) = HIDWORD(v66) - v66;
      if (__OFSUB__(HIDWORD(v66), v66))
      {
        goto LABEL_307;
      }

      v70 = v70;
    }

    else
    {
      v70 = BYTE6(v68);
    }

    if (v70 != 57)
    {
LABEL_256:
      v278 = v66;
      v279 = v68;
      goto LABEL_254;
    }

    v74 = sub_100A7A194(v66, v68, 0, 0);
    v75 = sub_100A7829C(v74, 0, 2);
    v2 = v76;
    v4 = CCECCryptorRelease();
    v77 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v77 != 2)
      {
        goto LABEL_268;
      }

      v80 = *(v75 + 16);
      v79 = *(v75 + 24);
      v73 = __OFSUB__(v79, v80);
      v78 = v79 - v80;
      if (v73)
      {
        goto LABEL_309;
      }
    }

    else if (v77)
    {
      LODWORD(v78) = HIDWORD(v75) - v75;
      if (__OFSUB__(HIDWORD(v75), v75))
      {
        goto LABEL_308;
      }

      v78 = v78;
    }

    else
    {
      v78 = BYTE6(v2);
    }

    if (v78 != 28)
    {
      break;
    }

    v81 = *(v0 + 736);
    v82 = *(v0 + 720);
    sub_100016590(v66, v68);
    (*v356)(v81, v354, v82);
    v83 = Data.hash(algorithm:)();
    v85 = v84;
    sub_100016590(v75, v2);
    (*v355)(v81, v82);
    v86 = v85 >> 62;
    if (v85 >> 62 == 3)
    {
      if (v83)
      {
        v87 = 0;
      }

      else
      {
        v87 = v85 == 0xC000000000000000;
      }

      v88 = v359;
      v90 = !v87 || v359 < 3;
      v48 = v364;
      if (((v90 | v349) & 1) == 0)
      {
        v105 = 0;
        v106 = 0xC000000000000000;
LABEL_137:
        sub_100016590(v105, v106);
        v26 = 0;
LABEL_138:
        v107 = *(v0 + 792);
        v2 = *(v0 + 784);
        sub_1002DB7C8(*(v0 + 776), v2, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        sub_1002DB7C8(v2, v107, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        v23 = v362;
        v367 = *(v362 + 16);
        if (v367)
        {
          v358 = v362 + ((*(v351 + 80) + 32) & ~*(v351 + 80));

          v108 = 0;
          v109 = v344;
          while (v108 < *(v362 + 16))
          {
            sub_1002DB760(v358 + *(v351 + 72) * v108, *(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
            v110 = sub_100496ABC();
            v111 = v109;
            v112 = **(v0 + 712);
            v113 = *(v328 + 8);
            v114 = **(v0 + 792);
            v115 = *(v111 + 8);
            sub_100017D5C(v114, v115);
            sub_10002EA98(57, v114, v115, &v370);
            sub_100496F68(v370, v371, &v368);
            v116 = v369;
            if (v369 >> 60 == 15)
            {
              return _assertionFailure(_:_:file:line:flags:)();
            }

            v350 = v108;
            loga = *(v0 + 792);
            v117 = v368;
            v118 = PublicKey.advertisement.getter(v368, v369);
            v120 = v119;
            v4 = sub_100006654(v117, v116);
            v121 = v113 >> 62;
            v347 = *(v345 + 20);
            if ((v113 >> 62) > 1)
            {
              if (v121 == 2)
              {
                v124 = *(v112 + 16);
                v123 = *(v112 + 24);
                v122 = v123 - v124;
                if (__OFSUB__(v123, v124))
                {
                  goto LABEL_319;
                }
              }

              else
              {
                v122 = 0;
              }
            }

            else if (v121)
            {
              if (__OFSUB__(HIDWORD(v112), v112))
              {
                __break(1u);
LABEL_319:
                __break(1u);
                goto LABEL_320;
              }

              v122 = HIDWORD(v112) - v112;
            }

            else
            {
              v122 = BYTE6(v113);
            }

            sub_100A2A240(3);
            v126 = v125;
            v127 = v110;
            sub_100017D5C(v112, v113);
            sub_100017D5C(v118, v120);
            if (v122 >= v126)
            {
              v128 = (v0 + 672);
              sub_100A2AA58(v127, v112, v113, v118, v120, *(v0 + 672));
            }

            else
            {
              v128 = (v0 + 680);
              sub_100A2B118(v127, v112, v113, v118, v120, *(v0 + 680));
            }

            v335 = v127;
            v129 = *v128;
            v325 = *(v0 + 1272);
            v326 = *(v0 + 1016);
            v323 = *(v0 + 1000);
            v130 = *(v0 + 976);
            v317 = *(v0 + 968);
            v131 = *(v0 + 920);
            v360 = *(v0 + 856);
            v318 = v118;
            v319 = v120;
            v132 = *(v0 + 840);
            v133 = *(v0 + 832);
            v134 = *(v0 + 696);
            v135 = *(v0 + 688);
            v136 = *(v0 + 656);
            sub_1002DB7C8(v129, v135, type metadata accessor for BeaconPayloadv1);
            sub_1002DB7C8(v135, v134, type metadata accessor for BeaconPayloadv1);
            (*v316)(v130, 1, 1, v131);
            v321 = *(v134 + v315[10]);
            v137 = *v331;
            (*v331)(v360, v134 + v315[5], v132);
            v138 = *(v134 + v315[7]);
            v139 = *(v134 + v315[8]);
            v140 = *(v134 + v315[9]);
            (*v314)(v136, 1, 1, v132);
            sub_1000D2A70(v130, v317, &unk_1016C1120, &qword_1013C49D0);
            v307 = v137;
            v137(&v133[v353[5]], v360, v132);
            sub_1000D2A70(v136, &v133[v353[10]], &unk_101696900, &unk_10138B1E0);
            sub_1000D2A70(v317, &v133[v353[11]], &unk_1016C1120, &qword_1013C49D0);
            UUID.init()();
            sub_100016590(v318, v319);
            sub_10000B3A8(v317, &unk_1016C1120, &qword_1013C49D0);
            sub_10000B3A8(v136, &unk_101696900, &unk_10138B1E0);
            v141 = *v330;
            (*v330)(v360, v132);
            sub_10000B3A8(v130, &unk_1016C1120, &qword_1013C49D0);
            sub_1002DBBF0(v134, type metadata accessor for BeaconPayloadv1);
            *v133 = v321;
            *&v133[v353[6]] = v138;
            *&v133[v353[7]] = v139;
            *&v133[v353[8]] = v140;
            v133[v353[9]] = 15;
            *&v133[v353[13]] = 256;
            v142 = *(v340 + 48);
            (*v313)(v323, loga + v347, v325);
            sub_1002DB7C8(v133, v323 + v142, type metadata accessor for RawSearchResult);
            (*v312)(v323, 0, 1, v326);
            if ((*v311)(v323, 1, v326) == 1)
            {
              v143 = *(v0 + 1000);

              sub_10000B3A8(v143, &qword_10169C968, &qword_101398A10);
              v109 = v344;
              v144 = v364;
              v145 = v350;
              if (qword_101694510 != -1)
              {
                swift_once();
              }

              v146 = *(v0 + 792);
              v147 = *(v0 + 760);
              v148 = type metadata accessor for Logger();
              sub_1000076D4(v148, qword_10177A818);
              sub_1002DB760(v146, v147, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v2 = Logger.logObject.getter();
              v149 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v2, v149))
              {
                v150 = *(v0 + 760);
                v151 = swift_slowAlloc();
                v152 = swift_slowAlloc();
                v370 = v152;
                *v151 = 141558275;
                *(v151 + 4) = 1752392040;
                *(v151 + 12) = 2081;
                sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v153 = dispatch thunk of CustomStringConvertible.description.getter();
                v155 = v154;
                sub_1002DBBF0(v150, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                v23 = sub_1000136BC(v153, v155, &v370);
                v109 = v344;

                *(v151 + 14) = v23;
                _os_log_impl(&_mh_execute_header, v2, v149, "Could not create search result for beacon: %{private,mask.hash}s.", v151, 0x16u);
                sub_100007BAC(v152);
              }

              else
              {
                v23 = *(v0 + 760);

                sub_1002DBBF0(v23, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              }
            }

            else
            {
              v348 = v141;
              v156 = *(v0 + 1088);
              v157 = *(v0 + 1080);
              sub_1000D2AD8(*(v0 + 1000), v156, &qword_10169C970, &qword_101398A18);
              sub_1000D2A70(v156, v157, &qword_10169C970, &qword_101398A18);
              v158 = *(v340 + 48);
              swift_beginAccess();
              sub_1005CAD18(v157, *(v0 + 520));
              v160 = *(v0 + 1272);
              if (v159)
              {
                v161 = v159;
                v162 = *(v0 + 1088);
                v163 = *(v0 + 1080);
                v164 = *(v0 + 1072);
                swift_endAccess();
                sub_1002DBBF0(v157 + v158, type metadata accessor for RawSearchResult);
                v361 = *v333;
                (*v333)(v163, v160);
                sub_1000D2A70(v162, v164, &qword_10169C970, &qword_101398A18);
                v165 = (v164 + *(v340 + 48));
                Hasher.init(_seed:)();
                sub_100D15128(&v370);
                v166 = Hasher._finalize()();
                v167 = -1 << *(v161 + 32);
                v168 = v166 & ~v167;
                if ((*(v161 + 56 + ((v168 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v168))
                {
                  v169 = ~v167;
                  v170 = *v165;
                  v171 = *(v309 + 72);
                  do
                  {
                    v172 = *(v0 + 816);
                    sub_1002DB760(*(v161 + 48) + v168 * v171, v172, type metadata accessor for RawSearchResult);
                    v173 = *(v0 + 816);
                    if (*v172 == v170 && (v174 = static Date.== infix(_:_:)(), v173 = *(v0 + 816), (v174 & 1) != 0) && *(v173 + v353[6]) == *&v165[v353[6]] && *(v173 + v353[7]) == *&v165[v353[7]] && *(v173 + v353[8]) == *&v165[v353[8]])
                    {
                      v175 = *(v0 + 816);
                      v176 = static UUID.== infix(_:_:)();
                      sub_1002DBBF0(v175, type metadata accessor for RawSearchResult);
                      if (v176)
                      {
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      sub_1002DBBF0(v173, type metadata accessor for RawSearchResult);
                    }

                    v168 = (v168 + 1) & v169;
                  }

                  while (((*(v161 + 56 + ((v168 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v168) & 1) != 0);
                }

                v177 = *(v0 + 832);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                sub_1002DB760(v165, v177, type metadata accessor for RawSearchResult);
                v370 = v161;
                sub_100DFE348(v177, v168, isUniquelyReferenced_nonNull_native);
                v161 = v370;
LABEL_175:
                sub_1002DBBF0(v165, type metadata accessor for RawSearchResult);
                v179 = *(v0 + 1128);
                v180 = *(v0 + 1088);
                v361(*(v0 + 1072), *(v0 + 1272));
                sub_1000D2A70(v180, v179, &qword_10169C970, &qword_101398A18);
                v181 = *(v340 + 48);
                swift_beginAccess();
                sub_1001DE1B0(v161, v179);
              }

              else
              {
                v182 = *(v0 + 1128);
                v183 = *(v0 + 1088);
                v184 = *(v0 + 1080);
                v185 = *(v0 + 1064);
                swift_endAccess();
                sub_1002DBBF0(v157 + v158, type metadata accessor for RawSearchResult);
                v186 = *v333;
                (*v333)(v184, v160);
                sub_1000D2A70(v183, v182, &qword_10169C970, &qword_101398A18);
                v181 = *(v340 + 48);
                sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
                v187 = (*(v309 + 80) + 32) & ~*(v309 + 80);
                v188 = swift_allocObject();
                *(v188 + 16) = xmmword_101385D80;
                sub_1000D2A70(v183, v185, &qword_10169C970, &qword_101398A18);
                sub_1002DB7C8(v185 + *(v340 + 48), v188 + v187, type metadata accessor for RawSearchResult);
                v186(v185, v160);
                v189 = sub_10112A090(v188);
                swift_setDeallocating();
                sub_1002DBBF0(v188 + v187, type metadata accessor for RawSearchResult);
                swift_deallocClassInstance();
                swift_beginAccess();
                v190 = swift_isUniquelyReferenced_nonNull_native();
                v370 = *(v0 + 520);
                sub_100FFC200(v189, v182, v190);
                v361 = v186;
                v186(v182, v160);
                *(v0 + 520) = v370;
              }

              v144 = v364;
              swift_endAccess();
              sub_1002DBBF0(*(v0 + 1128) + v181, type metadata accessor for RawSearchResult);
              if (qword_101694510 != -1)
              {
                swift_once();
              }

              v191 = *(v0 + 1088);
              v192 = *(v0 + 1056);
              v193 = *(v0 + 1048);
              v194 = *(v0 + 1040);
              v195 = *(v0 + 792);
              v196 = *(v0 + 768);
              v197 = type metadata accessor for Logger();
              sub_1000076D4(v197, qword_10177A818);
              sub_1002DB760(v195, v196, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              sub_1000D2A70(v191, v192, &qword_10169C970, &qword_101398A18);
              sub_1000D2A70(v191, v193, &qword_10169C970, &qword_101398A18);
              sub_1000D2A70(v191, v194, &qword_10169C970, &qword_101398A18);
              v198 = Logger.logObject.getter();
              v199 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v198, v199))
              {
                v327 = v199;
                logb = v198;
                v200 = *(v0 + 1272);
                v201 = *(v0 + 1128);
                v202 = *(v0 + 1056);
                v324 = *(v0 + 1040);
                v320 = *(v0 + 1048);
                v322 = *(v0 + 1032);
                v203 = *(v0 + 856);
                v204 = *(v0 + 840);
                v205 = *(v0 + 768);
                v206 = swift_slowAlloc();
                v370 = swift_slowAlloc();
                *v206 = 141559043;
                *(v206 + 4) = 1752392040;
                *(v206 + 12) = 2081;
                sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v207 = dispatch thunk of CustomStringConvertible.description.getter();
                v209 = v208;
                sub_1002DBBF0(v205, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                v210 = sub_1000136BC(v207, v209, &v370);

                *(v206 + 14) = v210;
                *(v206 + 22) = 2082;
                sub_1000D2A70(v202, v201, &qword_10169C970, &qword_101398A18);
                v211 = v201 + *(v340 + 48);
                v307(v203, v211 + v353[5], v204);
                sub_1002DBBF0(v211, type metadata accessor for RawSearchResult);
                v361(v201, v200);
                sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                v212 = dispatch thunk of CustomStringConvertible.description.getter();
                v214 = v213;
                v348(v203, v204);
                sub_10000B3A8(v202, &qword_10169C970, &qword_101398A18);
                v215 = sub_1000136BC(v212, v214, &v370);

                *(v206 + 24) = v215;
                *(v206 + 32) = 2082;
                sub_1000D2A70(v320, v201, &qword_10169C970, &qword_101398A18);
                v216 = v201 + *(v340 + 48);
                LOBYTE(v215) = *(v216 + v353[9]);
                sub_1002DBBF0(v216, type metadata accessor for RawSearchResult);
                v361(v201, v200);
                v217 = sub_100013454(v215);
                v219 = v218;
                sub_10000B3A8(v320, &qword_10169C970, &qword_101398A18);
                v220 = sub_1000136BC(v217, v219, &v370);

                *(v206 + 34) = v220;
                *(v206 + 42) = 2048;
                sub_1000D2A70(v324, v322, &qword_10169C970, &qword_101398A18);
                swift_beginAccess();
                v221 = *(v0 + 520);
                if (*(v221 + 16) && (v222 = sub_1000210EC(*(v0 + 1032)), (v223 & 1) != 0))
                {
                  v224 = *(*(v221 + 56) + 8 * v222);
                  swift_endAccess();
                  v225 = *(v224 + 16);
                }

                else
                {
                  swift_endAccess();
                  v225 = 0;
                }

                v109 = v344;
                v144 = v364;
                v228 = *(v0 + 1272);
                v23 = *(v0 + 1088);
                v229 = *(v0 + 1040);
                v230 = *(v0 + 1032);
                sub_1002DBBF0(v230 + *(v340 + 48), type metadata accessor for RawSearchResult);
                v361(v230, v228);
                v2 = &qword_10169C970;
                sub_10000B3A8(v229, &qword_10169C970, &qword_101398A18);
                *(v206 + 44) = v225;
                _os_log_impl(&_mh_execute_header, logb, v327, "Return search result for beacon (own beacon): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v206, 0x34u);
                swift_arrayDestroy();

                sub_10000B3A8(v23, &qword_10169C970, &qword_101398A18);
              }

              else
              {
                v23 = *(v0 + 1088);
                v2 = *(v0 + 1056);
                v226 = *(v0 + 1048);
                v227 = *(v0 + 768);
                sub_10000B3A8(*(v0 + 1040), &qword_10169C970, &qword_101398A18);

                sub_10000B3A8(v226, &qword_10169C970, &qword_101398A18);
                sub_10000B3A8(v2, &qword_10169C970, &qword_101398A18);
                sub_1002DBBF0(v227, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                sub_10000B3A8(v23, &qword_10169C970, &qword_101398A18);
                v109 = v344;
              }

              v145 = v350;
            }

            v108 = v145 + 1;
            sub_1002DBBF0(*(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
            v26 = 0;
            if (v108 == v367)
            {

              sub_100016590(v144, v352);

              v26 = 0;
              goto LABEL_189;
            }
          }

LABEL_304:
          __break(1u);
LABEL_305:
          __break(1u);
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
          swift_once();
          v270 = qword_10177BA00;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v271 = swift_allocObject();
          *(v271 + 16) = xmmword_101385D80;
          *v2 = v26;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v272 = String.init<A>(describing:)();
          v274 = v273;
          *(v271 + 56) = &type metadata for String;
          *(v271 + 64) = sub_100008C00();
          *(v271 + 32) = v272;
          *(v271 + 40) = v274;
          os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v270, "Error deriving advertisementKey: %@", 35, 2, v271);

          sub_1001BAF88();
          v305 = swift_allocError();
          *v275 = 0;
          swift_willThrow();

LABEL_250:
          v370 = 0;
          v371 = 0xE000000000000000;
          _StringGuts.grow(_:)(35);
          v276 = v371;
          *(v0 + 504) = v370;
          *(v0 + 512) = v276;
          v277._countAndFlagsBits = 0xD000000000000021;
          v277._object = 0x800000010134CB30;
          String.append(_:)(v277);
          *(v0 + 552) = v305;
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          _print_unlocked<A, B>(_:_:)();
          return _assertionFailure(_:_:file:line:flags:)();
        }

        sub_100016590(v48, v352);

LABEL_189:
        sub_1002DBBF0(*(v0 + 792), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        goto LABEL_133;
      }

      v91 = 0;
      if (v359 <= 1)
      {
LABEL_117:
        v94 = v346;
        if (v88)
        {
          v94 = v334;
          if (log)
          {
            goto LABEL_312;
          }
        }

        goto LABEL_123;
      }
    }

    else
    {
      v48 = v364;
      v88 = v359;
      if (v86 == 2)
      {
        v93 = *(v83 + 16);
        v92 = *(v83 + 24);
        v73 = __OFSUB__(v92, v93);
        v91 = v92 - v93;
        if (v73)
        {
          goto LABEL_315;
        }

        if (v359 <= 1)
        {
          goto LABEL_117;
        }
      }

      else if (v86 == 1)
      {
        LODWORD(v91) = HIDWORD(v83) - v83;
        if (__OFSUB__(HIDWORD(v83), v83))
        {
          __break(1u);
LABEL_315:
          __break(1u);
          goto LABEL_316;
        }

        v91 = v91;
        if (v359 <= 1)
        {
          goto LABEL_117;
        }
      }

      else
      {
        v91 = BYTE6(v85);
        if (v359 <= 1)
        {
          goto LABEL_117;
        }
      }
    }

    if (v88 != 2)
    {
      if (!v91)
      {
        goto LABEL_135;
      }

LABEL_32:
      sub_100016590(v83, v85);
      v26 = 0;
      v52 = v366;
      goto LABEL_33;
    }

    v96 = *(v48 + 16);
    v95 = *(v48 + 24);
    v73 = __OFSUB__(v95, v96);
    v94 = v95 - v96;
    if (v73)
    {
      goto LABEL_313;
    }

LABEL_123:
    if (v91 != v94)
    {
      goto LABEL_32;
    }

    if (v91 < 1)
    {
LABEL_135:
      v105 = v83;
      v106 = v85;
      goto LABEL_137;
    }

    sub_100017D5C(v48, v352);
    sub_100017D5C(v48, v352);
    sub_100017D5C(v83, v85);
    v97 = sub_100F0B1BC(v83, v85, v48, v352);
    sub_100016590(v83, v85);
    sub_100016590(v83, v85);
    sub_100016590(v48, v352);
    v52 = v366;
    if (v97)
    {
      goto LABEL_138;
    }

LABEL_33:
    sub_1002DBBF0(*(v0 + 776), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v23 += v357;
    v45 = v52 - 1;
    if (!v45)
    {
      goto LABEL_128;
    }
  }

  if (v77 == 2)
  {
    v293 = *(v75 + 16);
    v292 = *(v75 + 24);
    v289 = v292 - v293;
    if (!__OFSUB__(v292, v293))
    {
      goto LABEL_273;
    }

    __break(1u);
    goto LABEL_272;
  }

  if (v77 != 1)
  {
LABEL_272:
    v289 = BYTE6(v2);
    goto LABEL_273;
  }

  if (!__OFSUB__(HIDWORD(v75), v75))
  {
    v289 = HIDWORD(v75) - v75;
    goto LABEL_273;
  }

LABEL_320:
  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  __break(1u);
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1002B6BC4()
{
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1392);
  v3 = *(v0 + 1328);
  v4 = *(v0 + 1272);
  v5 = (*(v0 + 1776) + 24) & ~*(v0 + 1776);
  (*(v0 + 1448))(v3, *(v0 + 1344), v4);
  v6 = swift_allocObject();
  *(v0 + 1512) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 1520) = v7;
  *v7 = v0;
  v7[1] = sub_1002B6D20;
  v8 = *(v0 + 1168);
  v9 = *(v0 + 1160);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB640, v6, v9);
}

uint64_t sub_1002B6D20()
{
  v1 = *(*v0 + 648);

  return _swift_task_switch(sub_1002B6E4C, v1, 0);
}

uint64_t sub_1002B6E4C()
{
  v397 = v0;
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1168);
  if ((*(*(v0 + 1184) + 48))(v3, 1, v2) == 1)
  {
    sub_10000B3A8(v3, &unk_1016AFA00, &qword_10138C4D0);
    if (qword_101694510 != -1)
    {
      goto LABEL_311;
    }

    goto LABEL_3;
  }

  v18 = *(v0 + 1448);
  v19 = *(v0 + 1336);
  v20 = *(v0 + 1272);
  v21 = *(v0 + 1192);
  sub_1002DB7C8(v3, v21, type metadata accessor for OwnerSharingCircle);
  v18(v19, v21 + *(v2 + 24), v20);
  sub_1002DBBF0(v21, type metadata accessor for OwnerSharingCircle);
  v22 = *(v0 + 1488);
  v23 = sub_100496ABC();
  *(v0 + 1528) = v23;
  if (v22)
  {
    v24 = *(v0 + 1480);
    v25 = *(v0 + 1472);
    v26 = *(v0 + 1384);
    v27 = *(v0 + 1344);
    v28 = *(v0 + 1336);
    v29 = *(v0 + 1280);
    v30 = *(v0 + 1272);

    sub_100006654(v25, v24);
    v31 = *(v29 + 8);
    v31(v27, v30);
    sub_1002DBBF0(v26, type metadata accessor for KeyDropFetchResponse.LocationPayload);
    v31(v28, v30);

    v32 = *(v0 + 8);

    return v32();
  }

  v40 = *(v0 + 1384);
  v41 = *(v40 + 32);
  *(v0 + 1536) = v41;
  v42 = *(v41 + 16);
  *(v0 + 1544) = v42;
  v43 = *(v0 + 1480);
  v44 = *(v0 + 1472);
  if (v42)
  {
    *(v0 + 1552) = 0;
    if (*(v41 + 16))
    {
      v45 = v43 >> 62;
      v1 = *(v41 + 32);
      *(v0 + 1560) = v1;
      v46 = *(v41 + 40);
      *(v0 + 1568) = v46;
      v47 = *(v41 + 48);
      *(v0 + 1580) = *(v41 + 52);
      *(v0 + 1576) = v47;
      if ((v43 >> 62) > 1)
      {
        if (v45 != 2)
        {
          v49 = 0;
          v40 = 0;
          v50 = 0;
          v48 = 0;
          goto LABEL_229;
        }

        v40 = *(v44 + 16);
        v49 = *(v44 + 24);
      }

      else
      {
        if (!v45)
        {
          v40 = 0;
          v48 = 0;
          v49 = BYTE6(v43);
          v50 = BYTE6(v43);
          goto LABEL_229;
        }

        v49 = v44 >> 32;
        v40 = v44;
      }

      sub_10002E98C(v44, v43);
      if (v49 >= v40)
      {
        v43 = *(v0 + 1480);
        v44 = *(v0 + 1472);
        if (v43 >> 62 == 2)
        {
          v48 = *(v44 + 16);
          v50 = *(v44 + 24);
        }

        else
        {
          v50 = v44 >> 32;
          v48 = v44;
        }

LABEL_229:
        if (v50 >= v49 && v49 >= v48)
        {
          if (!__OFSUB__(v49, v40))
          {
            if ((v49 - v40) < 0x39)
            {
              v290 = v43 >> 62;
              if ((v43 >> 62) <= 1)
              {
                if (!v290)
                {
                  goto LABEL_263;
                }

                v291 = v44 >> 32;
LABEL_259:
                v300 = v44;
                goto LABEL_262;
              }

              if (v290 != 2)
              {
LABEL_263:
                sub_100017D5C(v1, v46);
                sub_100017D5C(v1, v46);
                v38 = Data._Representation.subscript.getter();
                v37 = v301;
                result = sub_100006654(v44, v43);
                v302 = v37 >> 62;
                if ((v37 >> 62) > 1)
                {
                  if (v302 != 2)
                  {
                    goto LABEL_274;
                  }

                  v304 = *(v38 + 16);
                  v303 = *(v38 + 24);
                  v95 = __OFSUB__(v303, v304);
                  v305 = v303 - v304;
                  if (!v95)
                  {
                    if (v305 != 57)
                    {
                      goto LABEL_274;
                    }

LABEL_270:
                    v306 = sub_100A7A194(v38, v37, 0, 0);
                    v307 = sub_100A7829C(v306, 0, 2);
                    *(v0 + 1584) = v307;
                    *(v0 + 1592) = v308;
                    v16 = v307;
                    v79 = v308;
                    result = CCECCryptorRelease();
                    v59 = v79 >> 62;
                    if ((v79 >> 62) <= 1)
                    {
                      if (!v59)
                      {
                        v317 = BYTE6(v79);
                        goto LABEL_287;
                      }

LABEL_285:
                      LODWORD(v317) = HIDWORD(v16) - v16;
                      if (!__OFSUB__(HIDWORD(v16), v16))
                      {
                        v317 = v317;
                        goto LABEL_287;
                      }

LABEL_331:
                      __break(1u);
                      goto LABEL_332;
                    }

                    if (v59 != 2)
                    {
                      v324 = 0;
                      goto LABEL_304;
                    }

                    v319 = *(v16 + 16);
                    v318 = *(v16 + 24);
                    v95 = __OFSUB__(v318, v319);
                    v317 = v318 - v319;
                    if (!v95)
                    {
LABEL_287:
                      if (v317 == 28)
                      {
                        sub_100016590(v38, v37);
                        v320 = swift_task_alloc();
                        *(v0 + 1600) = v320;
                        *v320 = v0;
                        v320[1] = sub_1002BA248;
                        v321 = *(v0 + 1528);
                        v322 = *(v0 + 1336);
                        v323 = *(v0 + 1008);

                        return sub_1002D7014(v323, v1, v46, v321, v16, v79, 0, v322);
                      }

                      if (v59 != 2)
                      {
                        if (v59 == 1)
                        {
                          if (!__OFSUB__(HIDWORD(v16), v16))
                          {
                            v324 = HIDWORD(v16) - v16;
LABEL_304:
                            sub_100018350();
                            v327 = swift_allocError();
                            *v328 = 28;
                            *(v328 + 8) = v324;
                            *(v328 + 16) = 0;
                            swift_willThrow();
                            sub_100016590(v16, v79);
LABEL_271:
                            v395 = 0;
                            v396 = 0xE000000000000000;
                            _StringGuts.grow(_:)(35);
                            v315 = v396;
                            *(v0 + 504) = v395;
                            *(v0 + 512) = v315;
                            v316._countAndFlagsBits = 0xD000000000000021;
                            v316._object = 0x800000010134CB30;
                            String.append(_:)(v316);
                            *(v0 + 552) = v327;
                            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                            _print_unlocked<A, B>(_:_:)();
                            return _assertionFailure(_:_:file:line:flags:)();
                          }

LABEL_332:
                          __break(1u);
                          return result;
                        }

LABEL_303:
                        v324 = BYTE6(v79);
                        goto LABEL_304;
                      }

LABEL_300:
                      v326 = *(v16 + 16);
                      v325 = *(v16 + 24);
                      v324 = v325 - v326;
                      if (!__OFSUB__(v325, v326))
                      {
                        goto LABEL_304;
                      }

                      __break(1u);
                      goto LABEL_303;
                    }

                    __break(1u);
LABEL_284:
                    __break(1u);
                    goto LABEL_285;
                  }

                  __break(1u);
                }

                else
                {
                  if (!v302)
                  {
                    if (BYTE6(v37) != 57)
                    {
LABEL_274:
                      v287 = v38;
                      v288 = v37;
LABEL_275:
                      sub_100016590(v287, v288);
                      return _assertionFailure(_:_:file:line:flags:)();
                    }

                    goto LABEL_270;
                  }

                  if (!__OFSUB__(HIDWORD(v38), v38))
                  {
                    if (HIDWORD(v38) - v38 != 57)
                    {
                      goto LABEL_274;
                    }

                    goto LABEL_270;
                  }
                }

                __break(1u);
LABEL_330:
                __break(1u);
                goto LABEL_331;
              }

              v291 = *(v44 + 24);
              goto LABEL_261;
            }

            v291 = v40 + 57;
            if (__OFADD__(v40, 57))
            {
LABEL_326:
              __break(1u);
            }

            else
            {
              v292 = v43 >> 62;
              if ((v43 >> 62) > 1)
              {
                if (v292 == 2)
                {
                  v293 = *(v44 + 16);
                  v294 = *(v44 + 24);
                }

                else
                {
                  v294 = 0;
                  v293 = 0;
                }
              }

              else if (v292)
              {
                v294 = v44 >> 32;
                v293 = v44;
              }

              else
              {
                v293 = 0;
                v294 = BYTE6(v43);
              }

              if (v294 >= v291 && v291 >= v293)
              {
                v300 = 0;
                if (v292 <= 1)
                {
                  if (!v292)
                  {
                    goto LABEL_262;
                  }

                  goto LABEL_259;
                }

                if (v292 == 3)
                {
LABEL_262:
                  if (v291 >= v300)
                  {
                    goto LABEL_263;
                  }

LABEL_322:
                  __break(1u);
LABEL_323:
                  swift_once();
                  goto LABEL_214;
                }

LABEL_261:
                v300 = *(v44 + 16);
                goto LABEL_262;
              }
            }

            __break(1u);
            swift_once();
            v309 = qword_10177BA00;
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v310 = swift_allocObject();
            *(v310 + 16) = xmmword_101385D80;
            *v46 = v43;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v311 = String.init<A>(describing:)();
            v313 = v312;
            *(v310 + 56) = &type metadata for String;
            *(v310 + 64) = sub_100008C00();
            *(v310 + 32) = v311;
            *(v310 + 40) = v313;
            os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, v309, "Error deriving advertisementKey: %@", 35, 2, v310);

            sub_1001BAF88();
            v327 = swift_allocError();
            *v314 = 0;
            swift_willThrow();

            goto LABEL_271;
          }

LABEL_321:
          __break(1u);
          goto LABEL_322;
        }

LABEL_320:
        __break(1u);
        goto LABEL_321;
      }

LABEL_319:
      __break(1u);
      goto LABEL_320;
    }

LABEL_318:
    __break(1u);
    goto LABEL_319;
  }

  v284 = *(v0 + 1344);
  v16 = *(v0 + 1336);
  v285 = *(v0 + 1280);
  v37 = *(v0 + 1272);

  sub_100006654(v44, v43);
  v286 = *(v285 + 8);
  v38 = v285 + 8;
  v286(v284, v37);
  sub_1002DBBF0(v40, type metadata accessor for KeyDropFetchResponse.LocationPayload);
  result = (v286)(v16, v37);
  v390 = 0;
LABEL_19:
  v59 = *(v0 + 1408) + 1;
  if (v59 != *(v0 + 1400))
  {
    v46 = &qword_1016980D0;
    v79 = &unk_10138F3B0;
    do
    {
      *(v0 + 1408) = v59;
      v257 = *(v0 + 632);
      if (!v257)
      {
        v257 = _swiftEmptyArrayStorage;
      }

      if (v59 >= v257[2])
      {
        goto LABEL_284;
      }

      v258 = *(v0 + 1384);
      v259 = *(v0 + 1352);
      v260 = *(v0 + 1280);
      v37 = *(v0 + 1272);
      v38 = *(v0 + 1264);
      sub_1002DB760(v257 + ((*(v0 + 1768) + 32) & ~*(v0 + 1768)) + *(*(v0 + 1360) + 72) * v59, v258, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v261 = *(v258 + 16);
      v262 = *(v258 + 24);
      sub_1000D2A70(v258 + *(v259 + 28), v38, &qword_1016980D0, &unk_10138F3B0);
      v263 = *(v260 + 48);
      *(v0 + 1416) = v263;
      *(v0 + 1424) = (v260 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v263(v38, 1, v37) != 1)
      {
        v268 = *(v0 + 1344);
        v269 = *(v0 + 1280);
        v270 = *(v0 + 1272);
        v271 = *(v0 + 1264);
        v272 = *(v0 + 1256);
        v273 = *(v269 + 32);
        *(v0 + 1432) = v273;
        *(v0 + 1440) = (v269 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v273(v268, v271, v270);
        v274 = *(v269 + 16);
        *(v0 + 1448) = v274;
        *(v0 + 1456) = (v269 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v274(v272, v268, v270);
        (*(v269 + 56))(v272, 0, 1, v270);
        v275 = swift_task_alloc();
        *(v0 + 1464) = v275;
        *v275 = v0;
        v275[1] = sub_1002B09AC;
        v276 = *(v0 + 1256);

        return sub_1002D5B7C(v261, v262, v276);
      }

      sub_10000B3A8(*(v0 + 1264), &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      v264 = type metadata accessor for Logger();
      sub_1000076D4(v264, qword_10177A818);
      v265 = Logger.logObject.getter();
      v1 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v265, v1))
      {
        v266 = swift_slowAlloc();
        *v266 = 0;
        _os_log_impl(&_mh_execute_header, v265, v1, "Missing share id in payload.", v266, 2u);
      }

      v16 = *(v0 + 1384);

      result = sub_1002DBBF0(v16, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v59 = *(v0 + 1408) + 1;
    }

    while (v59 != *(v0 + 1400));
  }

  v60 = _swiftEmptyArrayStorage;

  if (*(v0 + 624))
  {
    v60 = *(v0 + 624);
  }

  v358 = v60[2];
  if (!v358)
  {

LABEL_207:

    swift_beginAccess();
    v388 = *(v0 + 520);

    v267 = *(v0 + 8);

    return v267(v388);
  }

  v61 = *(v0 + 1280);
  v330 = (v0 + 600);
  v62 = *(v0 + 1024);
  v63 = *(v0 + 1016);
  v64 = *(v0 + 848);
  v331 = *(v0 + 808);
  v374 = *(v0 + 800);
  v365 = *(v0 + 792);
  v383 = *(v0 + 776);
  v351 = *(v0 + 752);
  v364 = *(v0 + 744);
  v65 = *(v0 + 728);
  v360 = v60 + 4;
  v348 = *(v0 + 712);
  v378 = (v65 + 104);
  v377 = (v65 + 8);
  v372 = *(v0 + 704);
  v338 = (*(v0 + 928) + 56);
  v350 = (v64 + 16);
  v337 = *(v0 + 664);
  v336 = (v64 + 56);
  v349 = (v64 + 8);
  v335 = (v61 + 16);
  v333 = (v62 + 48);
  v334 = (v62 + 56);
  v359 = *(*(v0 + 640) + 16);
  v352 = (v61 + 8);
  v376 = enum case for HashAlgorithm.sha256(_:);
  v362 = v60;

  v66 = v60;
  v67 = 0;
  v332 = xmmword_101385D80;
  v361 = v63;
LABEL_24:
  if (v67 >= v66[2])
  {
    goto LABEL_308;
  }

  v363 = v67;
  v68 = &v360[3 * v67];
  v1 = *v68;
  v69 = v68[1];
  v373 = v69;
  v375 = v68[2];
  if (!v359)
  {
    sub_100017D5C(v1, v69);

LABEL_134:
    if (qword_101694510 != -1)
    {
      swift_once();
    }

    v121 = type metadata accessor for Logger();
    sub_1000076D4(v121, qword_10177A818);
    sub_100017D5C(v1, v373);

    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.error.getter();
    sub_100016590(v1, v373);

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v395 = v125;
      *v124 = 141558275;
      *(v124 + 4) = 1752392040;
      *(v124 + 12) = 2081;
      *(v0 + 488) = v1;
      *(v0 + 496) = v373;
      sub_10025DB08();
      v126 = RawRepresentable<>.hexString.getter();
      v128 = sub_1000136BC(v126, v127, &v395);

      *(v124 + 14) = v128;
      _os_log_impl(&_mh_execute_header, v122, v123, "No member ownded device decryption key found for advt: %{private,mask.hash}s.", v124, 0x16u);
      sub_100007BAC(v125);
    }

    sub_100016590(v1, v373);

    goto LABEL_139;
  }

  v40 = *(v0 + 640) + ((*(v351 + 80) + 32) & ~*(v351 + 80));
  sub_100017D5C(v1, v69);
  if (v1)
  {
    v70 = 0;
  }

  else
  {
    v70 = v69 == 0xC000000000000000;
  }

  v71 = !v70;
  v369 = v71;
  log = BYTE6(v69);
  v379 = *(v351 + 72);
  v72 = __OFSUB__(HIDWORD(v1), v1);
  v356 = v72;
  v353 = (HIDWORD(v1) - v1);

  v73 = v359;
  v384 = v1;
  v381 = v69 >> 62;
  while (1)
  {
    v75 = *(v0 + 776);
    sub_1002DB760(v40, v75, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v76 = *v75;
    v77 = *(v383 + 8);
    v78 = v77 >> 62;
    if ((v77 >> 62) > 1)
    {
      if (v78 == 2)
      {
        v79 = *(v76 + 16);
        v16 = *(v76 + 24);
        sub_100017D5C(v76, *(v383 + 8));
        v80 = *(v76 + 16);
        v81 = *(v76 + 24);
      }

      else
      {
        v79 = 0;
        v16 = 0;
        v81 = 0;
        v80 = 0;
      }
    }

    else if (v78)
    {
      v79 = v76;
      v16 = v76 >> 32;
      sub_100017D5C(v76, *(v383 + 8));
      v81 = v76 >> 32;
      v80 = v76;
    }

    else
    {
      v79 = 0;
      v80 = 0;
      v16 = BYTE6(v77);
      v81 = BYTE6(v77);
    }

    if (v81 < v79 || v79 < v80)
    {
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
      goto LABEL_300;
    }

    if (v78 > 1)
    {
      if (v78 == 2)
      {
        v82 = *(v76 + 16);
        v83 = *(v76 + 24);
      }

      else
      {
        v83 = 0;
        v82 = 0;
      }
    }

    else if (v78)
    {
      v82 = v76;
      v83 = v76 >> 32;
    }

    else
    {
      v82 = 0;
      v83 = BYTE6(v77);
    }

    if (v83 < v16 || v16 < v82)
    {
      goto LABEL_297;
    }

    if (__OFSUB__(v16, v79))
    {
      goto LABEL_298;
    }

    if (v16 - v79 < 0x39)
    {
      if (v78 <= 1)
      {
        if (!v78)
        {
          goto LABEL_82;
        }

        v84 = v76 >> 32;
LABEL_78:
        v87 = v76;
        goto LABEL_81;
      }

      if (v78 != 2)
      {
        goto LABEL_82;
      }

      v84 = *(v76 + 24);
LABEL_80:
      v87 = *(v76 + 16);
      goto LABEL_81;
    }

    v84 = v79 + 57;
    if (__OFADD__(v79, 57))
    {
      __break(1u);
LABEL_306:
      __break(1u);
      goto LABEL_307;
    }

    if (v78 > 1)
    {
      if (v78 == 2)
      {
        v85 = *(v76 + 16);
        v86 = *(v76 + 24);
      }

      else
      {
        v86 = 0;
        v85 = 0;
      }
    }

    else if (v78)
    {
      v85 = v76;
      v86 = v76 >> 32;
    }

    else
    {
      v85 = 0;
      v86 = BYTE6(v77);
    }

    if (v86 < v84 || v84 < v85)
    {
      goto LABEL_306;
    }

    v87 = 0;
    if (v78 <= 1)
    {
      if (!v78)
      {
        goto LABEL_81;
      }

      goto LABEL_78;
    }

    if (v78 != 3)
    {
      goto LABEL_80;
    }

LABEL_81:
    if (v84 < v87)
    {
      goto LABEL_299;
    }

LABEL_82:
    v386 = v73;
    v88 = Data._Representation.subscript.getter();
    v90 = v89;
    sub_100016590(v76, v77);
    v91 = v90 >> 62;
    if ((v90 >> 62) > 1)
    {
      if (v91 != 2)
      {
        goto LABEL_216;
      }

      v94 = *(v88 + 16);
      v93 = *(v88 + 24);
      v95 = __OFSUB__(v93, v94);
      v92 = v93 - v94;
      if (v95)
      {
        goto LABEL_309;
      }
    }

    else if (v91)
    {
      LODWORD(v92) = HIDWORD(v88) - v88;
      if (__OFSUB__(HIDWORD(v88), v88))
      {
        goto LABEL_310;
      }

      v92 = v92;
    }

    else
    {
      v92 = BYTE6(v90);
    }

    if (v92 != 57)
    {
LABEL_216:
      v287 = v88;
      v288 = v90;
      goto LABEL_275;
    }

    v43 = v390;
    v96 = sub_100A7A194(v88, v90, 0, 0);
    if (v390)
    {
      break;
    }

    v97 = sub_100A7829C(v96, 0, 2);
    v99 = v98;
    result = CCECCryptorRelease();
    v100 = v99 >> 62;
    if ((v99 >> 62) > 1)
    {
      if (v100 != 2)
      {
        v289 = 0;
        goto LABEL_249;
      }

      v103 = *(v97 + 16);
      v102 = *(v97 + 24);
      v95 = __OFSUB__(v102, v103);
      v101 = v102 - v103;
      if (v95)
      {
        goto LABEL_313;
      }
    }

    else if (v100)
    {
      LODWORD(v101) = HIDWORD(v97) - v97;
      if (__OFSUB__(HIDWORD(v97), v97))
      {
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
        goto LABEL_318;
      }

      v101 = v101;
    }

    else
    {
      v101 = BYTE6(v99);
    }

    if (v101 != 28)
    {
      if (v100 == 2)
      {
        v296 = *(v97 + 16);
        v295 = *(v97 + 24);
        v289 = v295 - v296;
        if (!__OFSUB__(v295, v296))
        {
          goto LABEL_249;
        }

        __break(1u);
      }

      else if (v100 == 1)
      {
        if (__OFSUB__(HIDWORD(v97), v97))
        {
          goto LABEL_330;
        }

        v289 = HIDWORD(v97) - v97;
        goto LABEL_249;
      }

      v289 = BYTE6(v99);
LABEL_249:
      sub_100018350();
      v282 = swift_allocError();
      *v297 = 28;
      *(v297 + 8) = v289;
      *(v297 + 16) = 0;
      swift_willThrow();
      sub_100016590(v97, v99);
      goto LABEL_250;
    }

    v104 = *(v0 + 736);
    v105 = *(v0 + 720);
    sub_100016590(v88, v90);
    (*v378)(v104, v376, v105);
    v106 = Data.hash(algorithm:)();
    v108 = v107;
    sub_100016590(v97, v99);
    (*v377)(v104, v105);
    v109 = v108 >> 62;
    if (v108 >> 62 == 3)
    {
      if (v106)
      {
        v110 = 0;
      }

      else
      {
        v110 = v108 == 0xC000000000000000;
      }

      v111 = v381;
      v113 = !v110 || v381 < 3;
      v1 = v384;
      if (((v113 | v369) & 1) == 0)
      {
        v129 = 0;
        v130 = 0xC000000000000000;
        goto LABEL_143;
      }

      v114 = 0;
      if (v381 <= 1)
      {
LABEL_123:
        v117 = log;
        if (v111)
        {
          v117 = v353;
          if (v356)
          {
            goto LABEL_314;
          }
        }

        goto LABEL_129;
      }
    }

    else
    {
      v1 = v384;
      v111 = v381;
      if (v109 == 2)
      {
        v116 = *(v106 + 16);
        v115 = *(v106 + 24);
        v95 = __OFSUB__(v115, v116);
        v114 = v115 - v116;
        if (v95)
        {
          goto LABEL_317;
        }

        if (v381 <= 1)
        {
          goto LABEL_123;
        }
      }

      else if (v109 == 1)
      {
        LODWORD(v114) = HIDWORD(v106) - v106;
        if (__OFSUB__(HIDWORD(v106), v106))
        {
          goto LABEL_316;
        }

        v114 = v114;
        if (v381 <= 1)
        {
          goto LABEL_123;
        }
      }

      else
      {
        v114 = BYTE6(v108);
        if (v381 <= 1)
        {
          goto LABEL_123;
        }
      }
    }

    if (v111 != 2)
    {
      if (!v114)
      {
        goto LABEL_141;
      }

LABEL_37:
      sub_100016590(v106, v108);
      v390 = 0;
      v74 = v386;
      goto LABEL_38;
    }

    v119 = *(v1 + 16);
    v118 = *(v1 + 24);
    v95 = __OFSUB__(v118, v119);
    v117 = (v118 - v119);
    if (v95)
    {
      goto LABEL_315;
    }

LABEL_129:
    if (v114 != v117)
    {
      goto LABEL_37;
    }

    if (v114 < 1)
    {
LABEL_141:
      v129 = v106;
      v130 = v108;
LABEL_143:
      sub_100016590(v129, v130);
      v390 = 0;
LABEL_144:
      v131 = *(v0 + 792);
      v132 = *(v0 + 784);
      sub_1002DB7C8(*(v0 + 776), v132, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
      sub_1002DB7C8(v132, v131, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
      v387 = *(v375 + 16);
      if (v387)
      {
        v382 = v375 + ((*(v372 + 80) + 32) & ~*(v372 + 80));

        v133 = 0;
        while (v133 < *(v375 + 16))
        {
          sub_1002DB760(v382 + *(v372 + 72) * v133, *(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
          v43 = 0;
          v135 = sub_100496ABC();
          v136 = **(v0 + 712);
          v137 = *(v348 + 8);
          v138 = **(v0 + 792);
          v46 = *(v365 + 8);
          sub_100017D5C(v138, v46);
          sub_10002EA98(57, v138, v46, &v395);
          sub_100496F68(v395, v396, &v393);
          v40 = v394;
          if (v394 >> 60 == 15)
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }

          v380 = v133;
          loga = *(v0 + 792);
          v139 = v393;
          v140 = PublicKey.advertisement.getter(v393, v394);
          v142 = v141;
          sub_100006654(v139, v40);
          v143 = v137 >> 62;
          v370 = *(v364 + 20);
          if ((v137 >> 62) > 1)
          {
            if (v143 == 2)
            {
              v145 = *(v136 + 16);
              v144 = *(v136 + 24);
              v46 = v144 - v145;
              if (__OFSUB__(v144, v145))
              {
                goto LABEL_325;
              }
            }

            else
            {
              v46 = 0;
            }
          }

          else if (v143)
          {
            if (__OFSUB__(HIDWORD(v136), v136))
            {
              __break(1u);
LABEL_325:
              __break(1u);
              goto LABEL_326;
            }

            v46 = HIDWORD(v136) - v136;
          }

          else
          {
            v46 = BYTE6(v137);
          }

          sub_100A2A240(3);
          v147 = v146;
          v148 = v135;
          sub_100017D5C(v136, v137);
          sub_100017D5C(v140, v142);
          if (v46 >= v147)
          {
            v149 = (v0 + 672);
            sub_100A2AA58(v148, v136, v137, v140, v142, *(v0 + 672));
          }

          else
          {
            v149 = (v0 + 680);
            sub_100A2B118(v148, v136, v137, v140, v142, *(v0 + 680));
          }

          v150 = *v149;
          v354 = *(v0 + 1016);
          v357 = v148;
          v345 = *(v0 + 1000);
          v347 = *(v0 + 1272);
          v151 = *(v0 + 976);
          v339 = *(v0 + 968);
          v152 = *(v0 + 920);
          v391 = *(v0 + 856);
          v340 = v140;
          v341 = v142;
          v153 = *(v0 + 840);
          v154 = *(v0 + 832);
          v155 = *(v0 + 696);
          v156 = *(v0 + 688);
          v157 = *(v0 + 656);
          sub_1002DB7C8(v150, v156, type metadata accessor for BeaconPayloadv1);
          sub_1002DB7C8(v156, v155, type metadata accessor for BeaconPayloadv1);
          (*v338)(v151, 1, 1, v152);
          v343 = *(v155 + v337[10]);
          v158 = *v350;
          (*v350)(v391, v155 + v337[5], v153);
          v159 = *(v155 + v337[7]);
          v160 = *(v155 + v337[8]);
          v161 = *(v155 + v337[9]);
          (*v336)(v157, 1, 1, v153);
          sub_1000D2A70(v151, v339, &unk_1016C1120, &qword_1013C49D0);
          v329 = v158;
          v158(&v154[v374[5]], v391, v153);
          sub_1000D2A70(v157, &v154[v374[10]], &unk_101696900, &unk_10138B1E0);
          sub_1000D2A70(v339, &v154[v374[11]], &unk_1016C1120, &qword_1013C49D0);
          UUID.init()();
          sub_100016590(v340, v341);
          sub_10000B3A8(v339, &unk_1016C1120, &qword_1013C49D0);
          sub_10000B3A8(v157, &unk_101696900, &unk_10138B1E0);
          v162 = *v349;
          (*v349)(v391, v153);
          sub_10000B3A8(v151, &unk_1016C1120, &qword_1013C49D0);
          sub_1002DBBF0(v155, type metadata accessor for BeaconPayloadv1);
          *v154 = v343;
          *&v154[v374[6]] = v159;
          *&v154[v374[7]] = v160;
          *&v154[v374[8]] = v161;
          v154[v374[9]] = 15;
          *&v154[v374[13]] = 256;
          v163 = *(v361 + 48);
          (*v335)(v345, loga + v370, v347);
          sub_1002DB7C8(v154, v345 + v163, type metadata accessor for RawSearchResult);
          (*v334)(v345, 0, 1, v354);
          if ((*v333)(v345, 1, v354) == 1)
          {
            v164 = *(v0 + 1000);

            sub_10000B3A8(v164, &qword_10169C968, &qword_101398A10);
            v1 = v384;
            v165 = v380;
            if (qword_101694510 != -1)
            {
              swift_once();
            }

            v166 = *(v0 + 792);
            v167 = *(v0 + 760);
            v168 = type metadata accessor for Logger();
            sub_1000076D4(v168, qword_10177A818);
            sub_1002DB760(v166, v167, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
            v169 = Logger.logObject.getter();
            v170 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v169, v170))
            {
              v171 = *(v0 + 760);
              v172 = swift_slowAlloc();
              v173 = swift_slowAlloc();
              v395 = v173;
              *v172 = 141558275;
              *(v172 + 4) = 1752392040;
              *(v172 + 12) = 2081;
              sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v174 = dispatch thunk of CustomStringConvertible.description.getter();
              v176 = v175;
              sub_1002DBBF0(v171, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v177 = sub_1000136BC(v174, v176, &v395);

              *(v172 + 14) = v177;
              _os_log_impl(&_mh_execute_header, v169, v170, "Could not create search result for beacon: %{private,mask.hash}s.", v172, 0x16u);
              sub_100007BAC(v173);
            }

            else
            {
              v134 = *(v0 + 760);

              sub_1002DBBF0(v134, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
            }
          }

          else
          {
            v371 = v162;
            v178 = *(v0 + 1088);
            v179 = *(v0 + 1080);
            sub_1000D2AD8(*(v0 + 1000), v178, &qword_10169C970, &qword_101398A18);
            sub_1000D2A70(v178, v179, &qword_10169C970, &qword_101398A18);
            v180 = *(v361 + 48);
            swift_beginAccess();
            sub_1005CAD18(v179, *(v0 + 520));
            v182 = *(v0 + 1272);
            if (v181)
            {
              v183 = v181;
              v184 = *(v0 + 1088);
              v185 = *(v0 + 1080);
              v186 = *(v0 + 1072);
              swift_endAccess();
              sub_1002DBBF0(v179 + v180, type metadata accessor for RawSearchResult);
              v392 = *v352;
              (*v352)(v185, v182);
              sub_1000D2A70(v184, v186, &qword_10169C970, &qword_101398A18);
              v187 = (v186 + *(v361 + 48));
              Hasher.init(_seed:)();
              sub_100D15128(&v395);
              v188 = Hasher._finalize()();
              v189 = -1 << *(v183 + 32);
              v190 = v188 & ~v189;
              if ((*(v183 + 56 + ((v190 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v190))
              {
                v191 = ~v189;
                v192 = *v187;
                v193 = *(v331 + 72);
                do
                {
                  v194 = *(v0 + 816);
                  sub_1002DB760(*(v183 + 48) + v190 * v193, v194, type metadata accessor for RawSearchResult);
                  v195 = *(v0 + 816);
                  if (*v194 == v192 && (v196 = static Date.== infix(_:_:)(), v195 = *(v0 + 816), (v196 & 1) != 0) && *(v195 + v374[6]) == *&v187[v374[6]] && *(v195 + v374[7]) == *&v187[v374[7]] && *(v195 + v374[8]) == *&v187[v374[8]])
                  {
                    v197 = *(v0 + 816);
                    v198 = static UUID.== infix(_:_:)();
                    sub_1002DBBF0(v197, type metadata accessor for RawSearchResult);
                    if (v198)
                    {
                      goto LABEL_181;
                    }
                  }

                  else
                  {
                    sub_1002DBBF0(v195, type metadata accessor for RawSearchResult);
                  }

                  v190 = (v190 + 1) & v191;
                }

                while (((*(v183 + 56 + ((v190 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v190) & 1) != 0);
              }

              v199 = *(v0 + 832);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              sub_1002DB760(v187, v199, type metadata accessor for RawSearchResult);
              v395 = v183;
              sub_100DFE348(v199, v190, isUniquelyReferenced_nonNull_native);
              v183 = v395;
LABEL_181:
              sub_1002DBBF0(v187, type metadata accessor for RawSearchResult);
              v201 = *(v0 + 1128);
              v202 = *(v0 + 1088);
              v392(*(v0 + 1072), *(v0 + 1272));
              sub_1000D2A70(v202, v201, &qword_10169C970, &qword_101398A18);
              v203 = *(v361 + 48);
              swift_beginAccess();
              sub_1001DE1B0(v183, v201);
            }

            else
            {
              v204 = *(v0 + 1128);
              v205 = *(v0 + 1088);
              v206 = *(v0 + 1080);
              v207 = *(v0 + 1064);
              swift_endAccess();
              sub_1002DBBF0(v179 + v180, type metadata accessor for RawSearchResult);
              v208 = *v352;
              (*v352)(v206, v182);
              sub_1000D2A70(v205, v204, &qword_10169C970, &qword_101398A18);
              v203 = *(v361 + 48);
              sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
              v209 = (*(v331 + 80) + 32) & ~*(v331 + 80);
              v210 = swift_allocObject();
              *(v210 + 16) = xmmword_101385D80;
              sub_1000D2A70(v205, v207, &qword_10169C970, &qword_101398A18);
              sub_1002DB7C8(v207 + *(v361 + 48), v210 + v209, type metadata accessor for RawSearchResult);
              v208(v207, v182);
              v211 = sub_10112A090(v210);
              swift_setDeallocating();
              sub_1002DBBF0(v210 + v209, type metadata accessor for RawSearchResult);
              swift_deallocClassInstance();
              swift_beginAccess();
              v212 = swift_isUniquelyReferenced_nonNull_native();
              v395 = *(v0 + 520);
              sub_100FFC200(v211, v204, v212);
              v392 = v208;
              v208(v204, v182);
              *(v0 + 520) = v395;
            }

            v1 = v384;
            swift_endAccess();
            sub_1002DBBF0(*(v0 + 1128) + v203, type metadata accessor for RawSearchResult);
            if (qword_101694510 != -1)
            {
              swift_once();
            }

            v213 = *(v0 + 1088);
            v214 = *(v0 + 1056);
            v215 = *(v0 + 1048);
            v216 = *(v0 + 1040);
            v217 = *(v0 + 792);
            v218 = *(v0 + 768);
            v219 = type metadata accessor for Logger();
            sub_1000076D4(v219, qword_10177A818);
            sub_1002DB760(v217, v218, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
            sub_1000D2A70(v213, v214, &qword_10169C970, &qword_101398A18);
            sub_1000D2A70(v213, v215, &qword_10169C970, &qword_101398A18);
            sub_1000D2A70(v213, v216, &qword_10169C970, &qword_101398A18);
            v220 = Logger.logObject.getter();
            v221 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v220, v221))
            {
              v355 = v221;
              logb = v220;
              v222 = *(v0 + 1272);
              v223 = *(v0 + 1128);
              v224 = *(v0 + 1056);
              v346 = *(v0 + 1040);
              v342 = *(v0 + 1048);
              v344 = *(v0 + 1032);
              v225 = *(v0 + 856);
              v226 = *(v0 + 840);
              v227 = *(v0 + 768);
              v228 = swift_slowAlloc();
              v395 = swift_slowAlloc();
              *v228 = 141559043;
              *(v228 + 4) = 1752392040;
              *(v228 + 12) = 2081;
              sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v229 = dispatch thunk of CustomStringConvertible.description.getter();
              v231 = v230;
              sub_1002DBBF0(v227, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v232 = sub_1000136BC(v229, v231, &v395);

              *(v228 + 14) = v232;
              *(v228 + 22) = 2082;
              sub_1000D2A70(v224, v223, &qword_10169C970, &qword_101398A18);
              v233 = v223 + *(v361 + 48);
              v329(v225, v233 + v374[5], v226);
              sub_1002DBBF0(v233, type metadata accessor for RawSearchResult);
              v392(v223, v222);
              sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
              v234 = dispatch thunk of CustomStringConvertible.description.getter();
              v236 = v235;
              v371(v225, v226);
              sub_10000B3A8(v224, &qword_10169C970, &qword_101398A18);
              v237 = sub_1000136BC(v234, v236, &v395);

              *(v228 + 24) = v237;
              *(v228 + 32) = 2082;
              sub_1000D2A70(v342, v223, &qword_10169C970, &qword_101398A18);
              v238 = v223 + *(v361 + 48);
              LOBYTE(v237) = *(v238 + v374[9]);
              sub_1002DBBF0(v238, type metadata accessor for RawSearchResult);
              v392(v223, v222);
              v239 = sub_100013454(v237);
              v241 = v240;
              sub_10000B3A8(v342, &qword_10169C970, &qword_101398A18);
              v242 = sub_1000136BC(v239, v241, &v395);

              *(v228 + 34) = v242;
              *(v228 + 42) = 2048;
              sub_1000D2A70(v346, v344, &qword_10169C970, &qword_101398A18);
              swift_beginAccess();
              v243 = *(v0 + 520);
              if (*(v243 + 16) && (v244 = sub_1000210EC(*(v0 + 1032)), (v245 & 1) != 0))
              {
                v246 = *(*(v243 + 56) + 8 * v244);
                swift_endAccess();
                v247 = *(v246 + 16);
              }

              else
              {
                swift_endAccess();
                v247 = 0;
              }

              v1 = v384;
              v253 = *(v0 + 1272);
              v254 = *(v0 + 1088);
              v255 = *(v0 + 1040);
              v256 = *(v0 + 1032);
              sub_1002DBBF0(v256 + *(v361 + 48), type metadata accessor for RawSearchResult);
              v392(v256, v253);
              sub_10000B3A8(v255, &qword_10169C970, &qword_101398A18);
              *(v228 + 44) = v247;
              _os_log_impl(&_mh_execute_header, logb, v355, "Return search result for beacon (own beacon): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v228, 0x34u);
              swift_arrayDestroy();

              v252 = v254;
            }

            else
            {
              v248 = *(v0 + 1088);
              v249 = *(v0 + 1056);
              v250 = *(v0 + 1048);
              v251 = *(v0 + 768);
              sub_10000B3A8(*(v0 + 1040), &qword_10169C970, &qword_101398A18);

              sub_10000B3A8(v250, &qword_10169C970, &qword_101398A18);
              sub_10000B3A8(v249, &qword_10169C970, &qword_101398A18);
              sub_1002DBBF0(v251, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v252 = v248;
            }

            sub_10000B3A8(v252, &qword_10169C970, &qword_101398A18);
            v165 = v380;
          }

          v133 = v165 + 1;
          sub_1002DBBF0(*(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
          if (v133 == v387)
          {

            sub_100016590(v1, v373);

            v390 = 0;
            goto LABEL_195;
          }
        }

LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        swift_once();
LABEL_3:
        v4 = *(v0 + 1384);
        v5 = *(v0 + 1376);
        v6 = type metadata accessor for Logger();
        sub_1000076D4(v6, qword_10177A818);
        sub_1002DB760(v4, v5, type metadata accessor for KeyDropFetchResponse.LocationPayload);
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.error.getter();
        v9 = os_log_type_enabled(v7, v8);
        v10 = *(v0 + 1376);
        if (v9)
        {
          v11 = *(v0 + 1416);
          v12 = *(v0 + 1352);
          v13 = *(v0 + 1272);
          v14 = *(v0 + 1248);
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *(v0 + 568) = v16;
          *v15 = 141558275;
          *(v15 + 4) = 1752392040;
          *(v15 + 12) = 2081;
          sub_1000D2A70(v10 + *(v12 + 28), v14, &qword_1016980D0, &unk_10138F3B0);
          if (v11(v14, 1, v13) == 1)
          {
            sub_10000B3A8(*(v0 + 1248), &qword_1016980D0, &unk_10138F3B0);
            v1 = 0xE300000000000000;
            v17 = 7104878;
          }

          else
          {
            v51 = *(v0 + 1280);
            v52 = *(v0 + 1272);
            v53 = *(v0 + 1248);
            v17 = UUID.uuidString.getter();
            v1 = v54;
            (*(v51 + 8))(v53, v52);
          }

          v38 = *(v0 + 1480);
          v55 = *(v0 + 1472);
          v56 = *(v0 + 1280);
          v385 = *(v0 + 1272);
          v389 = *(v0 + 1344);
          sub_1002DBBF0(*(v0 + 1376), type metadata accessor for KeyDropFetchResponse.LocationPayload);
          v57 = sub_1000136BC(v17, v1, (v0 + 568));

          *(v15 + 14) = v57;
          _os_log_impl(&_mh_execute_header, v7, v8, "Cannot find sharing circle for payload: %{private,mask.hash}s.", v15, 0x16u);
          sub_100007BAC(v16);

          sub_100006654(v55, v38);
          v58 = *(v56 + 8);
          v37 = v56 + 8;
          v58(v389, v385);
        }

        else
        {
          v34 = *(v0 + 1480);
          v35 = *(v0 + 1472);
          v16 = *(v0 + 1344);
          v36 = *(v0 + 1280);
          v37 = *(v0 + 1272);

          sub_100006654(v35, v34);
          sub_1002DBBF0(v10, type metadata accessor for KeyDropFetchResponse.LocationPayload);
          v39 = *(v36 + 8);
          v38 = v36 + 8;
          v39(v16, v37);
        }

        result = sub_1002DBBF0(*(v0 + 1384), type metadata accessor for KeyDropFetchResponse.LocationPayload);
        v390 = *(v0 + 1488);
        goto LABEL_19;
      }

      sub_100016590(v1, v373);

LABEL_195:
      sub_1002DBBF0(*(v0 + 792), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
LABEL_139:
      v66 = v362;
      v67 = v363 + 1;
      if (v363 + 1 == v358)
      {
        goto LABEL_207;
      }

      goto LABEL_24;
    }

    sub_100017D5C(v1, v373);
    sub_100017D5C(v1, v373);
    sub_100017D5C(v106, v108);
    v120 = sub_100F0B1BC(v106, v108, v1, v373);
    v390 = 0;
    sub_100016590(v106, v108);
    sub_100016590(v106, v108);
    sub_100016590(v1, v373);
    v74 = v386;
    if (v120)
    {
      goto LABEL_144;
    }

LABEL_38:
    sub_1002DBBF0(*(v0 + 776), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v40 += v379;
    v73 = v74 - 1;
    if (!v73)
    {
      goto LABEL_134;
    }
  }

  v40 = static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_323;
  }

LABEL_214:
  v277 = qword_10177BA00;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v278 = swift_allocObject();
  *(v278 + 16) = v332;
  *v330 = v43;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v279 = String.init<A>(describing:)();
  v281 = v280;
  *(v278 + 56) = &type metadata for String;
  *(v278 + 64) = sub_100008C00();
  *(v278 + 32) = v279;
  *(v278 + 40) = v281;
  os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, v277, "Error deriving advertisementKey: %@", 35, 2, v278);

  sub_1001BAF88();
  v282 = swift_allocError();
  *v283 = 0;
  swift_willThrow();

LABEL_250:
  v395 = 0;
  v396 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v298 = v396;
  *(v0 + 472) = v395;
  *(v0 + 480) = v298;
  v299._countAndFlagsBits = 0xD000000000000021;
  v299._object = 0x800000010134CB30;
  String.append(_:)(v299);
  *(v0 + 584) = v282;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}