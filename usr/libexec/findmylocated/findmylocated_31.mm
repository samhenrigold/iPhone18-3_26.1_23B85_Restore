uint64_t sub_100362F78(void (**a1)(char *, char *, uint64_t), int64_t a2, uint64_t a3)
{
  v114 = a3;
  v128 = a1;
  v4 = 0;
  Priority = type metadata accessor for LocatePriority();
  v120 = *(Priority - 8);
  v5 = __chkstk_darwin(Priority);
  v132 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v129 = &v112 - v7;
  v8 = sub_10004B564(&qword_1005B2468, &qword_1004D69B0);
  v9 = __chkstk_darwin(v8 - 8);
  v124 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v112 - v11;
  v126 = type metadata accessor for ClientID();
  v119 = *(v126 - 8);
  v13 = __chkstk_darwin(v126);
  v125 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v123 = &v112 - v15;
  v127 = type metadata accessor for Handle();
  v16 = __chkstk_darwin(v127);
  *&i = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v112 - v19;
  v21 = *(a2 + 16);
  v116 = a2;
  v133 = v18;
  if (v21)
  {
    v22 = a2 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v23 = *(v18 + 72);
    v24 = v21;
    v25 = v114;
    v26 = v128;
    do
    {
      sub_10037CD0C(v22, v26, v25, "TRACE: trackNewSubscription: client: %s\npriority: %{public}s handle: %{private,mask.hash}s");
      v22 += v23;
      v24 = (v24 - 1);
    }

    while (v24);
  }

  else
  {
    v25 = v114;
    v26 = v128;
  }

  v27 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
  v28 = v117;
  v29 = swift_beginAccess();
  v113 = v27;
  v30 = *&v28[v27];
  v31 = *(v30 + 16);
  v131 = v12;
  v32 = v116;
  v33 = v127;
  if (!v31)
  {
    goto LABEL_22;
  }

  v34 = sub_1001FDF60(v25);
  if ((v35 & 1) == 0)
  {

LABEL_22:
    __chkstk_darwin(v29);
    *(&v112 - 2) = v26;
    sub_100384940(_swiftEmptyDictionarySingleton, sub_10037DC20, (&v112 - 4), v32);
    v55 = v54;
    v21 = 0;
    v40 = v117;
    goto LABEL_24;
  }

  v112 = 0;
  v36 = *(v30 + 56) + 24 * v34;
  v37 = *v36;
  v115 = *(v36 + 8);

  if (!v21)
  {
LABEL_23:
    v21 = v115;

    v4 = v112;
    v12 = v131;
    v55 = v37;
    v40 = v117;
    v25 = v114;
LABEL_24:
    v112 = v4;
    v20 = v113;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v134 = *&v20[v40];
    *&v20[v40] = 0x8000000000000000;
    v114 = v55;
    sub_100454430(v55, v21, 0, v25, isUniquelyReferenced_nonNull_native);
    *&v20[v40] = v134;
    swift_endAccess();
    if (qword_1005A84C8 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

  v38 = (v133 + 16);
  v133 = *(v133 + 16);
  v39 = v32 + ((v38[64] + 32) & ~v38[64]);
  v121 = *(v38 + 7);
  v122 = (v119 + 16);
  v119 += 8;
  v40 = (v38 - 8);
  v42 = v125;
  v41 = v126;
  while (1)
  {
    v12 = v38;
    (v133)(v20, v39, v33);
    (*v122)(v42, v128, v41);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v135[0] = v37;
    v46 = sub_1001FD93C(v20);
    v47 = v37[2];
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      while (1)
      {
        __break(1u);
LABEL_49:
        swift_once();
LABEL_25:
        v57 = type metadata accessor for Logger();
        v58 = sub_10000A6F0(v57, qword_1005E0B28);

        v123 = v58;
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.default.getter();

        v61 = os_log_type_enabled(v59, v60);
        v115 = v21;
        if (v61)
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v135[0] = v63;
          *v62 = 141558275;
          *(v62 + 4) = 1752392040;
          *(v62 + 12) = 2081;
          v64 = Array.description.getter();
          v66 = sub_10000D01C(v64, v65, v135);

          *(v62 + 14) = v66;
          _os_log_impl(&_mh_execute_header, v59, v60, "After trackNewSubscription for handles: %{private,mask.hash}s", v62, 0x16u);
          sub_100004984(v63);
        }

        v67 = v132;
        v68 = *&v20[v40];
        v69 = *(v68 + 64);
        v117 = (v68 + 64);
        v70 = 1 << *(v68 + 32);
        v71 = -1;
        if (v70 < 64)
        {
          v71 = ~(-1 << v70);
        }

        v72 = v71 & v69;
        v116 = (v70 + 63) >> 6;
        v127 = (v120 + 32);
        v128 = (v120 + 16);
        v122 = (v120 + 8);
        v119 = v68;

        v73 = 0;
        v21 = &qword_1005B2470;
        *&v74 = 136446723;
        for (i = v74; v72; v21 = &qword_1005B2470)
        {
          while (1)
          {
            v75 = v73;
LABEL_40:
            v78 = __clz(__rbit64(v72));
            v72 &= v72 - 1;
            v79 = v78 | (v75 << 6);
            v80 = v119;
            v81 = v120;
            v83 = v129;
            v82 = Priority;
            (*(v120 + 16))(v129, *(v119 + 48) + *(v120 + 72) * v79, Priority);
            v84 = (*(v80 + 56) + 24 * v79);
            v85 = *v84;
            v86 = v84[1];
            v133 = v84[2];
            v87 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
            v88 = v124;
            v89 = &v124[*(v87 + 48)];
            (*(v81 + 32))(v124, v83, v82);
            *v89 = v85;
            *(v89 + 1) = v86;
            *(v89 + 2) = v133;
            (*(*(v87 - 8) + 56))(v88, 0, 1, v87);

            v77 = v75;
            v90 = v88;
            v12 = v131;
            v67 = v132;
LABEL_41:
            sub_1000176A8(v90, v12, &qword_1005B2468, &qword_1004D69B0);
            v91 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
            if ((*(*(v91 - 8) + 48))(v12, 1, v91) == 1)
            {
            }

            v133 = v77;
            v92 = &v12[*(v91 + 48)];
            v93 = *v92;
            v40 = v92[1];
            v126 = v92[2];
            v94 = Priority;
            (*v128)(v67, v12, Priority);
            v20 = v129;
            (*v127)(v129, v12, v94);

            v95 = v94;
            v96 = Logger.logObject.getter();
            v97 = static os_log_type_t.default.getter();
            v98 = *v122;
            (*v122)(v20, v95);

            LODWORD(v125) = v97;
            if (os_log_type_enabled(v96, v97))
            {
              break;
            }

            v98(v67, v95);
            v73 = v133;
            v21 = &qword_1005B2470;
            v12 = v131;
            if (!v72)
            {
              goto LABEL_33;
            }
          }

          v20 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v135[0] = v121;
          *v20 = i;
          sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
          v99 = v95;
          v100 = dispatch thunk of CustomStringConvertible.description.getter();
          v101 = v99;
          v103 = v102;
          v98(v132, v101);
          v104 = sub_10000D01C(v100, v103, v135);
          v12 = v131;
          v67 = v132;

          *(v20 + 4) = v104;
          *(v20 + 6) = 2160;
          *(v20 + 14) = 1752392040;
          *(v20 + 11) = 2081;

          v105 = sub_100344994(v93, v40, v126);
          v107 = v106;

          v108 = sub_10000D01C(v105, v107, v135);

          *(v20 + 3) = v108;
          _os_log_impl(&_mh_execute_header, v96, v125, "priority: %{public}s): :%{private,mask.hash}s", v20, 0x20u);
          swift_arrayDestroy();

          v73 = v133;
        }

LABEL_33:
        if (v116 <= v73 + 1)
        {
          v76 = v73 + 1;
        }

        else
        {
          v76 = v116;
        }

        v77 = v76 - 1;
        while (1)
        {
          v75 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            break;
          }

          if (v75 >= v116)
          {
            v109 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
            v110 = v124;
            (*(*(v109 - 8) + 56))(v124, 1, 1, v109);
            v90 = v110;
            v72 = 0;
            goto LABEL_41;
          }

          v72 = *&v117[8 * v75];
          ++v73;
          if (v72)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
      }
    }

    v50 = v45;
    if (v37[3] < v49)
    {
      break;
    }

    if ((v44 & 1) == 0)
    {
      sub_100205330();
      v37 = v135[0];
      v33 = v127;
      if (v50)
      {
        goto LABEL_10;
      }

LABEL_18:
      v53 = i;
      (v133)(i, v20, v33);
      sub_100234290(v46, v53, &_swiftEmptySetSingleton, v37);
      goto LABEL_10;
    }

    v33 = v127;
    if ((v45 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_10:
    v43 = v123;
    v42 = v125;
    sub_10002F5B4(v123, v125);
    v41 = v126;
    (*v119)(v43, v126);
    (*v40)(v20, v33);
    v39 += v121;
    v21 = (v21 - 1);
    v38 = v12;
    if (!v21)
    {
      goto LABEL_23;
    }
  }

  sub_100231874(v49, v44);
  v37 = v135[0];
  v51 = sub_1001FD93C(v20);
  if ((v50 & 1) == (v52 & 1))
  {
    v46 = v51;
    v33 = v127;
    if ((v50 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100363D44(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_10004B564(&qword_1005B02A0, &unk_1004D69C0);
  v6 = type metadata accessor for ClientID();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004C1900;
  (*(v7 + 16))(v9 + v8, a3, v6);
  v10 = sub_10023F7CC(v9);
  swift_setDeallocating();
  (*(v7 + 8))(v9 + v8, v6);
  swift_deallocClassInstance();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a1;
  sub_100454A28(v10, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v12;
}

uint64_t sub_100363EB0(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v3[17] = Priority;
  v3[18] = *(Priority - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v5 = type metadata accessor for Friend();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v6 = type metadata accessor for Handle();
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1003640C4, v2, 0);
}

uint64_t sub_1003640C4()
{
  v1 = *(v0[12] + 16);
  v0[33] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[34] = v2;
    *v2 = v0;
    v2[1] = sub_1003642F4;

    return daemon.getter();
  }

  else
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0B28);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Not unsubscribing for empty friends", v6, 2u);
    }

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1003642F4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 280) = a1;

  v3 = swift_task_alloc();
  *(v2 + 288) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_10001AEBC(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001AEBC(&qword_1005A90D0, 255, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1003644D8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003644D8(uint64_t a1)
{
  v4 = *v2;
  v4[37] = a1;
  v4[38] = v1;

  if (v1)
  {
    v5 = v4[14];
    v6 = sub_100367400;
  }

  else
  {

    v6 = sub_100364610;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100364610()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 312) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.following(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 320) = v5;
  *v5 = v0;
  v5[1] = sub_100364774;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_100364774(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 48) = v1;
  *(v3 + 56) = a1;
  v4 = *(v2 + 112);

  return _swift_task_switch(sub_1003648A4, v4, 0);
}

uint64_t sub_1003648A4()
{
  v162 = v0;
  v1 = v0;
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[12];
  v161[0] = _swiftEmptyArrayStorage;
  sub_10002B3C0(0, v2, 0);
  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  v7 = *(v3 + 16);
  v3 += 16;
  v8 = v4 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
  v152 = *(v3 + 56);
  v155 = v7;
  v159 = (v3 - 8);
  do
  {
    v9 = v1[32];
    v10 = v1[29];
    v155(v9, v8, v10);
    v11 = Handle.identifier.getter();
    v13 = v12;
    v157 = *v159;
    (*v159)(v9, v10);
    v161[0] = v6;
    v15 = v6[2];
    v14 = v6[3];
    if (v15 >= v14 >> 1)
    {
      v9 = v161;
      sub_10002B3C0((v14 > 1), v15 + 1, 1);
      v6 = v161[0];
    }

    v16 = v1[33];
    ++v5;
    v6[2] = v15 + 1;
    v17 = &v6[2 * v15];
    v17[4] = v11;
    v17[5] = v13;
    v8 += v152;
  }

  while (v5 != v16);
  v18 = v1[7];
  v19 = sub_10023F00C(v6);

  v156 = v1;
  v149 = *(v18 + 16);
  v151 = v18;
  if (v149)
  {
    v20 = 0;
    v21 = v1[24];
    v147 = v21;
    v22 = v19 + 56;
    v143 = (v21 + 32);
    v145 = (v21 + 8);
    v144 = _swiftEmptyArrayStorage;
    v23 = v1;
    while (1)
    {
      if (v20 >= *(v18 + 16))
      {
        __break(1u);
LABEL_86:
        TaskPriority.rawValue.getter();
        (*(v18 + 8))(v9, v20);
        goto LABEL_87;
      }

      v25 = v23[31];
      v26 = v23[29];
      v153 = (*(v147 + 80) + 32) & ~*(v147 + 80);
      v27 = v18 + v153;
      v28 = *(v147 + 72);
      (*(v147 + 16))(v23[28], v27 + v28 * v20, v23[23]);
      Friend.handle.getter();
      v29 = Handle.identifier.getter();
      v6 = v30;
      v157(v25, v26);
      if (*(v19 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v31 = Hasher._finalize()();
        v32 = -1 << *(v19 + 32);
        v33 = v31 & ~v32;
        if ((*(v22 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
        {
          v34 = ~v32;
          while (1)
          {
            v35 = (*(v19 + 48) + 16 * v33);
            v36 = *v35 == v29 && v35[1] == v6;
            if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v33 = (v33 + 1) & v34;
            if (((*(v22 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          v38 = v156[27];
          v37 = v156[28];
          v39 = v156[23];

          v40 = *v143;
          (*v143)(v38, v37, v39);
          v9 = v144;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100239354(0, v144[2] + 1, 1);
            v9 = v144;
          }

          v42 = v9[2];
          v41 = v9[3];
          v6 = (v42 + 1);
          v43 = v156;
          if (v42 >= v41 >> 1)
          {
            sub_100239354((v41 > 1), v42 + 1, 1);
            v43 = v156;
            v9 = v144;
          }

          v44 = v43[27];
          v45 = v43[23];
          v9[2] = v6;
          v144 = v9;
          v40(v9 + v153 + v42 * v28, v44, v45);
          goto LABEL_9;
        }

LABEL_20:
        v9 = v156[28];
        v24 = v156[23];
      }

      else
      {
        v9 = v23[28];
        v24 = v23[23];
      }

      (*v145)(v9, v24);
LABEL_9:
      ++v20;
      v18 = v151;
      v23 = v156;
      if (v20 == v149)
      {
        goto LABEL_27;
      }
    }
  }

  v144 = _swiftEmptyArrayStorage;
LABEL_27:

  v46 = v144[2];
  if (!v46)
  {

    if (qword_1005A84C8 == -1)
    {
LABEL_33:
      v61 = type metadata accessor for Logger();
      sub_10000A6F0(v61, qword_1005E0B28);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "Should not unsubscribing for empty friends", v64, 2u);
      }

      goto LABEL_36;
    }

LABEL_97:
    swift_once();
    goto LABEL_33;
  }

  v47 = v156;
  v48 = v156[24];
  v50 = *(v48 + 16);
  v48 += 16;
  v49 = v50;
  v150 = (v48 - 8);
  v51 = v156[38];
  v52 = v156[26];
  v53 = v156[13];
  v54 = (*(v48 + 64) + 32) & ~*(v48 + 64);
  v55 = v144 + v54;
  v56 = *(v48 + 56);
  v50(v52, v144 + v54, v156[23]);
  sub_10037B458(v52, v53);
  if (v51)
  {
    v57 = v156[26];
    v58 = v156[23];

    v59 = *v150;

    return (v59)(v57, v58);
  }

  v148 = *v150;
  (*v150)(v156[26], v156[23]);
  if (v46 != 1)
  {
    v66 = v144 + v56 + v54;
    v67 = v144;
    v68 = 1;
    while (v68 < v67[2])
    {
      v69 = v156[26];
      v70 = v156[13];
      v49(v69, v66, v156[23]);
      sub_10037B458(v69, v70);
      ++v68;
      v148(v156[26], v156[23]);
      v66 += v56;
      v67 = v144;
      if (v46 == v68)
      {
        v47 = v156;
        goto LABEL_44;
      }
    }

    __break(1u);
    goto LABEL_97;
  }

LABEL_44:
  v145 = (v47 + 2);
  v146 = v49;
  v154 = _swiftEmptyArrayStorage;
  do
  {
    v71 = v56;
    v72 = v47[32];
    v73 = v47[29];
    v74 = v47[25];
    v75 = v47[23];
    v146(v74, v55, v75);
    Friend.handle.getter();
    v76 = Handle.serverID.getter();
    v78 = v77;
    v157(v72, v73);
    v148(v74, v75);
    if (v78)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v154 = sub_1001FC900(0, *(v154 + 2) + 1, 1, v154);
      }

      v56 = v71;
      v47 = v156;
      v80 = *(v154 + 2);
      v79 = *(v154 + 3);
      if (v80 >= v79 >> 1)
      {
        v154 = sub_1001FC900((v79 > 1), v80 + 1, 1, v154);
        v47 = v156;
      }

      *(v154 + 2) = v80 + 1;
      v81 = &v154[16 * v80];
      *(v81 + 4) = v76;
      *(v81 + 5) = v78;
    }

    else
    {
      v47 = v156;
      v56 = v71;
    }

    v55 += v56;
    --v46;
  }

  while (v46);

  v82 = Array<A>.uniqued()();
  v83 = v156;
  v156[41] = v82;
  v84 = *(v154 + 2);
  v160 = *(v82 + 16);
  v85 = v84 - v160;
  if (v84 != v160)
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
      v83 = v156;
    }

    v86 = v83[22];
    v87 = v83[17];
    v88 = v83[18];
    v89 = v83[13];
    v90 = v83;
    v91 = type metadata accessor for Logger();
    sub_10000A6F0(v91, qword_1005E0B28);
    (*(v88 + 16))(v86, v89, v87);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.default.getter();
    v94 = os_log_type_enabled(v92, v93);
    v95 = v90[22];
    v96 = v90[17];
    v97 = v90[18];
    if (v94)
    {
      v98 = swift_slowAlloc();
      v158 = v82;
      v99 = swift_slowAlloc();
      v161[0] = v99;
      *v98 = 134349314;
      *(v98 + 4) = v85;
      *(v98 + 12) = 2082;
      sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
      v100 = dispatch thunk of CustomStringConvertible.description.getter();
      v102 = v101;
      (*(v97 + 8))(v95, v96);
      v103 = sub_10000D01C(v100, v102, v161);

      *(v98 + 14) = v103;
      _os_log_impl(&_mh_execute_header, v92, v93, "Unsubscribe contains %{public}ld duplicates for %{public}s", v98, 0x16u);
      sub_100004984(v99);
      v82 = v158;
    }

    else
    {

      (*(v97 + 8))(v95, v96);
    }

    v83 = v156;
  }

  v104 = v83[21];
  v105 = v83[17];
  v106 = v83[18];
  v107 = v83[13];
  v108 = v83;
  v109 = [objc_allocWithZone(SPSecureLocationsSubscriptionContext) init];
  v108[42] = v109;
  sub_1004B885C(3u);
  v110 = String._bridgeToObjectiveC()();

  [v109 setClientApp:v110];

  v111 = *(v106 + 16);
  v108[43] = v111;
  v108[44] = (v106 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v111(v104, v107, v105);
  v112 = (*(v106 + 88))(v104, v105);
  if (v112 == enum case for LocatePriority.backgroundAppRefresh(_:))
  {
    v113 = 0;
    v114 = enum case for LocatePriority.live(_:);
  }

  else
  {
    v114 = enum case for LocatePriority.live(_:);
    if (v112 == enum case for LocatePriority.shallow(_:))
    {
      v113 = 1;
    }

    else if (v112 == enum case for LocatePriority.live(_:))
    {
      v113 = 2;
      v114 = v112;
    }

    else
    {
      if (v112 != enum case for LocatePriority.backgroundProactive(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v113 = 5;
    }
  }

  v115 = v156[20];
  v117 = v156[17];
  v116 = v156[18];

  [v109 setSubscriptionMode:v113];
  (*(v116 + 104))(v115, v114, v117);
  sub_10001AEBC(&qword_1005A9318, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v118 = *(v116 + 8);
  v156[45] = v118;
  v156[46] = (v116 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v118(v115, v117);
  if (v160 == 1 || v156[8] != v156[9])
  {
    v123 = swift_task_alloc();
    v156[62] = v123;
    *v123 = v156;
    v123[1] = sub_100366DD0;

    return sub_10001CC28();
  }

  else
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v119 = type metadata accessor for Logger();
    v156[47] = sub_10000A6F0(v119, qword_1005E0B28);

    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 134349056;
      *(v122 + 4) = *(v82 + 16);

      _os_log_impl(&_mh_execute_header, v120, v121, "Unsubscribing %{public}ld .live subscriptions at once", v122, 0xCu);
    }

    else
    {
    }

    v124 = *(v82 + 16);
    v156[48] = v124;
    if (!v124)
    {

LABEL_36:

      v65 = v156[1];

      return v65();
    }

    v125 = v156[14];
    v156[49] = 0;
    v156[50] = 0;
    v126 = v156[41];
    v156[51] = *(v126 + 32);
    v156[52] = *(v126 + 40);
    v127 = *(v125 + 128);
    v156[53] = v127;

    if (v127)
    {

      v128 = swift_task_alloc();
      v156[54] = v128;
      v129 = type metadata accessor for SecureLocationsManagerAdapter();
      *v128 = v156;
      v128[1] = sub_100365A3C;
      v130 = v156 + 11;
      v131 = v127;
    }

    else
    {
      v132 = v156[15];
      v133 = v156[16];
      v20 = type metadata accessor for TaskPriority();
      v18 = *(v20 - 8);
      (*(v18 + 56))(v133, 1, 1, v20);
      v6 = swift_allocObject();
      v6[2] = 0;
      v6[3] = 0;
      sub_100005F04(v133, v132, &qword_1005A9690, &qword_1004C2A00);
      LODWORD(v132) = (*(v18 + 48))(v132, 1, v20);

      v9 = v156[15];
      if (v132 != 1)
      {
        goto LABEL_86;
      }

      sub_100002CE0(v156[15], &qword_1005A9690, &qword_1004C2A00);
LABEL_87:
      v134 = v6[2];
      swift_unknownObjectRetain();

      if (v134)
      {
        swift_getObjectType();
        v135 = dispatch thunk of Actor.unownedExecutor.getter();
        v137 = v136;
        swift_unknownObjectRelease();
      }

      else
      {
        v135 = 0;
        v137 = 0;
      }

      sub_100002CE0(v156[16], &qword_1005A9690, &qword_1004C2A00);
      v138 = swift_allocObject();
      *(v138 + 16) = &unk_1004D6990;
      *(v138 + 24) = v6;
      v139 = type metadata accessor for SecureLocationsManagerAdapter();
      if (v137 | v135)
      {
        *v145 = 0;
        v145[1] = 0;
        v156[4] = v135;
        v156[5] = v137;
      }

      v140 = v156[14];
      v141 = swift_task_create();
      v156[55] = v141;
      *(v140 + 128) = v141;

      v142 = swift_task_alloc();
      v156[56] = v142;
      *v142 = v156;
      v142[1] = sub_100365C00;
      v130 = v156 + 10;
      v131 = v141;
      v129 = v139;
    }

    return Task<>.value.getter(v130, v131, v129);
  }
}

uint64_t sub_100365A3C()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_100365B4C, v1, 0);
}

uint64_t sub_100365B4C()
{

  v0[57] = v0[11];
  v1 = v0[51];
  v2 = v0[52];
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  v3 = swift_allocObject();
  v0[58] = v3;
  *(v3 + 16) = xmmword_1004C1900;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;

  return _swift_task_switch(sub_100365DC4, 0, 0);
}

uint64_t sub_100365C00()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_100365D10, v1, 0);
}

uint64_t sub_100365D10()
{

  v0[57] = v0[10];
  v1 = v0[51];
  v2 = v0[52];
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  v3 = swift_allocObject();
  v0[58] = v3;
  *(v3 + 16) = xmmword_1004C1900;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;

  return _swift_task_switch(sub_100365DC4, 0, 0);
}

uint64_t sub_100365DC4()
{
  v1 = *(v0 + 336);
  v2 = swift_task_alloc();
  *(v0 + 472) = v2;
  *(v2 + 16) = *(v0 + 456);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 480) = v3;
  *v3 = v0;
  v3[1] = sub_100365EC4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD00000000000001CLL, 0x80000001004E80F0, sub_10037F51C, v2, &type metadata for () + 1);
}

uint64_t sub_100365EC4()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_1003665A4;
  }

  else
  {

    v2 = sub_100365FFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100365FFC()
{
  v1 = *(v0 + 112);

  return _swift_task_switch(sub_100366068, v1, 0);
}

uint64_t sub_100366068()
{
  v1 = v0[50] + 1;
  if (v1 == v0[48])
  {
    v2 = v0[49];

    v3 = v0[42];
    if (v2 > 0)
    {
      sub_1000F7A28();
      swift_allocError();
      *v4 = 18;
      swift_willThrow();
    }

    v5 = v0[1];

    return v5();
  }

  else
  {
    v0[50] = v1;
    v6 = v0[14];
    v7 = v0[41] + 16 * v1;
    v0[51] = *(v7 + 32);
    v0[52] = *(v7 + 40);
    v8 = *(v6 + 128);
    v0[53] = v8;

    if (v8)
    {

      v9 = swift_task_alloc();
      v0[54] = v9;
      v10 = type metadata accessor for SecureLocationsManagerAdapter();
      *v9 = v0;
      v9[1] = sub_100365A3C;
      v11 = v0 + 11;
      v12 = v8;
    }

    else
    {
      v15 = v0[15];
      v14 = v0[16];
      v16 = type metadata accessor for TaskPriority();
      v17 = *(v16 - 8);
      (*(v17 + 56))(v14, 1, 1, v16);
      v18 = swift_allocObject();
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      sub_100005F04(v14, v15, &qword_1005A9690, &qword_1004C2A00);
      LODWORD(v15) = (*(v17 + 48))(v15, 1, v16);

      v19 = v0[15];
      if (v15 == 1)
      {
        sub_100002CE0(v0[15], &qword_1005A9690, &qword_1004C2A00);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v17 + 8))(v19, v16);
      }

      v20 = *(v18 + 16);
      swift_unknownObjectRetain();

      if (v20)
      {
        swift_getObjectType();
        v21 = dispatch thunk of Actor.unownedExecutor.getter();
        v23 = v22;
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      sub_100002CE0(v0[16], &qword_1005A9690, &qword_1004C2A00);
      v24 = swift_allocObject();
      *(v24 + 16) = &unk_1004D6990;
      *(v24 + 24) = v18;
      v25 = type metadata accessor for SecureLocationsManagerAdapter();
      if (v23 | v21)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v21;
        v0[5] = v23;
      }

      v26 = v0[14];
      v27 = swift_task_create();
      v0[55] = v27;
      *(v26 + 128) = v27;

      v28 = swift_task_alloc();
      v0[56] = v28;
      *v28 = v0;
      v28[1] = sub_100365C00;
      v11 = v0 + 10;
      v12 = v27;
      v10 = v25;
    }

    return Task<>.value.getter(v11, v12, v10);
  }
}

uint64_t sub_1003665A4()
{
  v1 = *(v0 + 112);

  return _swift_task_switch(sub_10036662C, v1, 0);
}

uint64_t sub_10036662C()
{
  v50 = v0;
  (*(v0 + 344))(*(v0 + 152), *(v0 + 104), *(v0 + 136));

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 416);
  if (v3)
  {
    v47 = *(v0 + 408);
    v46 = *(v0 + 360);
    v5 = *(v0 + 152);
    v6 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49[0] = swift_slowAlloc();
    *v7 = 136446979;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v46(v5, v6);
    v11 = sub_10000D01C(v8, v10, v49);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    v12 = sub_10000D01C(v47, v4, v49);

    *(v7 + 24) = v12;
    *(v7 + 32) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 34) = v13;
    *v48 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to unsubscribe %{public}s %{private,mask.hash}s: %@", v7, 0x2Au);
    sub_100002CE0(v48, &qword_1005A9670, &unk_1004C2480);

    swift_arrayDestroy();
  }

  else
  {
    v17 = *(v0 + 360);
    v18 = *(v0 + 152);
    v19 = *(v0 + 136);

    v14 = v17(v18, v19);
  }

  v20 = *(v0 + 392);
  v21 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
    __break(1u);
    return Task<>.value.getter(v14, v15, v16);
  }

  v22 = *(v0 + 400) + 1;
  if (v22 != *(v0 + 384))
  {
    *(v0 + 392) = v21;
    *(v0 + 400) = v22;
    v26 = *(v0 + 112);
    v27 = *(v0 + 328) + 16 * v22;
    *(v0 + 408) = *(v27 + 32);
    *(v0 + 416) = *(v27 + 40);
    v28 = *(v26 + 128);
    *(v0 + 424) = v28;

    if (v28)
    {

      v29 = swift_task_alloc();
      *(v0 + 432) = v29;
      v16 = type metadata accessor for SecureLocationsManagerAdapter();
      *v29 = v0;
      v29[1] = sub_100365A3C;
      v14 = v0 + 88;
      v15 = v28;
    }

    else
    {
      v32 = *(v0 + 120);
      v31 = *(v0 + 128);
      v33 = type metadata accessor for TaskPriority();
      v34 = *(v33 - 8);
      (*(v34 + 56))(v31, 1, 1, v33);
      v35 = swift_allocObject();
      *(v35 + 16) = 0;
      *(v35 + 24) = 0;
      sub_100005F04(v31, v32, &qword_1005A9690, &qword_1004C2A00);
      LODWORD(v32) = (*(v34 + 48))(v32, 1, v33);

      v36 = *(v0 + 120);
      if (v32 == 1)
      {
        sub_100002CE0(*(v0 + 120), &qword_1005A9690, &qword_1004C2A00);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v34 + 8))(v36, v33);
      }

      v37 = *(v35 + 16);
      swift_unknownObjectRetain();

      if (v37)
      {
        swift_getObjectType();
        v38 = dispatch thunk of Actor.unownedExecutor.getter();
        v40 = v39;
        swift_unknownObjectRelease();
      }

      else
      {
        v38 = 0;
        v40 = 0;
      }

      sub_100002CE0(*(v0 + 128), &qword_1005A9690, &qword_1004C2A00);
      v41 = swift_allocObject();
      *(v41 + 16) = &unk_1004D6990;
      *(v41 + 24) = v35;
      v42 = type metadata accessor for SecureLocationsManagerAdapter();
      if (v40 | v38)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v38;
        *(v0 + 40) = v40;
      }

      v43 = *(v0 + 112);
      v44 = swift_task_create();
      *(v0 + 440) = v44;
      *(v43 + 128) = v44;

      v45 = swift_task_alloc();
      *(v0 + 448) = v45;
      *v45 = v0;
      v45[1] = sub_100365C00;
      v14 = v0 + 80;
      v15 = v44;
      v16 = v42;
    }

    return Task<>.value.getter(v14, v15, v16);
  }

  v23 = *(v0 + 336);
  if (v21 > 0)
  {
    sub_1000F7A28();
    swift_allocError();
    *v24 = 18;
    swift_willThrow();
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100366DD0(uint64_t a1)
{
  *(*v1 + 504) = a1;

  return _swift_task_switch(sub_100366ED0, 0, 0);
}

uint64_t sub_100366ED0()
{
  v1 = *(v0 + 504);
  v2 = swift_task_alloc();
  *(v0 + 512) = v2;
  v3 = *(v0 + 328);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 520) = v4;
  *v4 = v0;
  v4[1] = sub_100366FD0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD00000000000001CLL, 0x80000001004E80F0, sub_10037DB68, v2, &type metadata for () + 1);
}

uint64_t sub_100366FD0()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_10036726C;
  }

  else
  {

    v2 = sub_1003670F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003670F8()
{
  v1 = *(v0 + 112);

  return _swift_task_switch(sub_100367164, v1, 0);
}

uint64_t sub_100367164()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10036726C()
{
  v1 = *(v0 + 112);

  return _swift_task_switch(sub_1003672F4, v1, 0);
}

uint64_t sub_1003672F4()
{
  v1 = *(v0 + 336);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100367400()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100367504(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 424) = a3;
  *(v4 + 40) = a1;
  Priority = type metadata accessor for LocatePriority();
  *(v4 + 64) = Priority;
  *(v4 + 72) = *(Priority - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v6 = type metadata accessor for Friend();
  *(v4 + 112) = v6;
  *(v4 + 120) = *(v6 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  v7 = type metadata accessor for Handle();
  *(v4 + 160) = v7;
  *(v4 + 168) = *(v7 - 8);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v4 + 208) = v8;
  *v8 = v4;
  v8[1] = sub_100367720;

  return daemon.getter();
}

uint64_t sub_100367720(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 216) = a1;

  v3 = swift_task_alloc();
  *(v2 + 224) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_10001AEBC(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001AEBC(&qword_1005A90D0, 255, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_100367904;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100367904(uint64_t a1)
{
  v3 = *v2;
  v3[29] = a1;
  v3[30] = v1;

  if (v1)
  {
    v4 = v3[7];
    v5 = sub_100369CA8;
  }

  else
  {
    v6 = v3[7];

    v5 = sub_100367A2C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100367A2C()
{
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[21];
    sub_10002B3C0(0, v2, 0);
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v17 = *(v3 + 56);
    v18 = v4;
    v6 = (v3 - 8);
    do
    {
      v7 = v0[25];
      v8 = v0[20];
      v18(v7, v5, v8);
      v9 = Handle.identifier.getter();
      v11 = v10;
      (*v6)(v7, v8);
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_10002B3C0((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v9;
      v14[5] = v11;
      v5 += v17;
      --v2;
    }

    while (v2);
  }

  v15 = v0[29];
  v0[31] = sub_10023F00C(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_100367BB8, v15, 0);
}

uint64_t sub_100367BB8()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 256) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.following(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 264) = v5;
  *v5 = v0;
  v5[1] = sub_100367D1C;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_100367D1C(uint64_t a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 272) = a1;

  return _swift_task_switch(sub_100367E50, v2, 0);
}

uint64_t sub_100367E50()
{
  v149 = v0;
  v1 = *(v0 + 34);
  v2 = _swiftEmptyArrayStorage;
  if (v1[2])
  {
    v3 = 0;
    v4 = *(v0 + 31);
    v5 = *(v0 + 15);
    v138 = (*(v0 + 21) + 8);
    v6 = v4 + 56;
    v133 = (v5 + 32);
    v140 = v5;
    v136 = (v5 + 8);
    v135 = _swiftEmptyArrayStorage;
    v141 = *(v0 + 34);
    while (1)
    {
      if (v3 >= v1[2])
      {
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        swift_once();
LABEL_34:
        v46 = type metadata accessor for Logger();
        *(v0 + 39) = sub_10000A6F0(v46, qword_1005E0B28);

        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v148[0] = v50;
          *v49 = 136315138;
          v51 = Array.description.getter();
          v53 = sub_10000D01C(v51, v52, v148);

          *(v49 + 4) = v53;
          _os_log_impl(&_mh_execute_header, v47, v48, "handlesWithIds: %s", v49, 0xCu);
          sub_100004984(v50);
        }

        v54 = v141;
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *v57 = 138412290;
          *(v57 + 4) = v54;
          *v58 = v54;
          v59 = v54;
          _os_log_impl(&_mh_execute_header, v55, v56, "context: %@", v57, 0xCu);
          sub_100002CE0(v58, &qword_1005A9670, &unk_1004C2480);
        }

        v60 = v135[2];
        v61 = v144;
        *(v144 + 320) = v60;
        if (v60)
        {
          if (static SystemInfo.underTest.getter())
          {
            *(v144 + 384) = _swiftEmptyArrayStorage;
            (*(v144 + 296))(*(v144 + 88), *(v144 + 48), *(v144 + 64));
            v62 = Logger.logObject.getter();
            v63 = static os_log_type_t.default.getter();
            v64 = os_log_type_enabled(v62, v63);
            v65 = *(v144 + 88);
            v67 = *(v144 + 64);
            v66 = *(v144 + 72);
            if (v64)
            {
              v68 = swift_slowAlloc();
              v69 = swift_slowAlloc();
              v148[0] = v69;
              *v68 = 136446466;
              sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
              v70 = dispatch thunk of CustomStringConvertible.description.getter();
              v72 = v71;
              (*(v66 + 8))(v65, v67);
              v73 = sub_10000D01C(v70, v72, v148);
              v61 = v144;

              *(v68 + 4) = v73;
              *(v68 + 12) = 1024;
              *(v68 + 14) = _swiftEmptyArrayStorage[2] != 0;
              _os_log_impl(&_mh_execute_header, v62, v63, "%{public}s subscription successful. With location? %{BOOL}d", v68, 0x12u);
              sub_100004984(v69);
            }

            else
            {

              (*(v66 + 8))(v65, v67);
            }

            if (*(v61 + 424) == 1)
            {
              v109 = static Duration.seconds(_:)();
              v111 = v110;
              v112 = swift_task_alloc();
              *(v61 + 392) = v112;
              *v112 = v61;
              v112[1] = sub_100369870;
              v113 = *(v61 + 48);
              v114 = *(v61 + 40);

              return sub_10036A294(v114, v113, v109, v111);
            }

            else
            {

              v115 = Logger.logObject.getter();
              v116 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v115, v116))
              {
                v117 = swift_slowAlloc();
                v118 = swift_slowAlloc();
                v148[0] = v118;
                *v117 = 136315138;
                v119 = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E80B0, v148);

                *(v117 + 4) = v119;
                _os_log_impl(&_mh_execute_header, v115, v116, "%s. No need to resubscribe.", v117, 0xCu);
                sub_100004984(v118);
              }

              else
              {
              }

              v120 = *(v61 + 280);

              v121 = swift_task_alloc();
              *(v61 + 400) = v121;
              *v121 = v61;
              v121[1] = sub_100369A34;
              v122 = *(v61 + 384);

              return sub_100370914(v122, v120);
            }
          }

          else
          {
            v79 = swift_task_alloc();
            *(v144 + 328) = v79;
            *v79 = v144;
            v79[1] = sub_100368F8C;

            return sub_10001CC28();
          }
        }

        else
        {

          v74 = Logger.logObject.getter();
          v75 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            *v76 = 0;
            _os_log_impl(&_mh_execute_header, v74, v75, "Not subscribing to location update due to empty handles with ids", v76, 2u);
          }

          v146 = sub_1002087C4(_swiftEmptyArrayStorage);

          v77 = *(v144 + 8);

          return v77(v146);
        }
      }

      v9 = *(v0 + 24);
      v10 = *(v0 + 20);
      v145 = (*(v140 + 80) + 32) & ~*(v140 + 80);
      v11 = *(v140 + 72);
      (*(v140 + 16))(*(v0 + 19), *(v0 + 34) + v145 + v11 * v3, *(v0 + 14));
      Friend.handle.getter();
      v12 = Handle.identifier.getter();
      v14 = v13;
      (*v138)(v9, v10);
      if (*(v4 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v15 = Hasher._finalize()();
        v16 = -1 << *(v4 + 32);
        v17 = v15 & ~v16;
        if ((*(v6 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v18 = ~v16;
          while (1)
          {
            v19 = (*(v4 + 48) + 16 * v17);
            v20 = *v19 == v12 && v19[1] == v14;
            if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v17 = (v17 + 1) & v18;
            if (((*(v6 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_3;
            }
          }

          v22 = *(v144 + 144);
          v21 = *(v144 + 152);
          v23 = *(v144 + 112);

          v24 = *v133;
          (*v133)(v22, v21, v23);
          v25 = v135;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100239354(0, v135[2] + 1, 1);
            v25 = v135;
          }

          v1 = v141;
          v27 = v25[2];
          v26 = v25[3];
          if (v27 >= v26 >> 1)
          {
            sub_100239354((v26 > 1), v27 + 1, 1);
            v25 = v135;
          }

          v0 = v144;
          v28 = *(v144 + 144);
          v29 = *(v144 + 112);
          v25[2] = v27 + 1;
          v135 = v25;
          v24(v25 + v145 + v27 * v11, v28, v29);
          goto LABEL_5;
        }

LABEL_3:
        v0 = v144;
      }

      v7 = *(v0 + 19);
      v8 = *(v0 + 14);

      (*v136)(v7, v8);
      v1 = v141;
LABEL_5:
      if (++v3 == v142)
      {
        v2 = v135;
        break;
      }
    }
  }

  v135 = v2;
  *(v0 + 35) = v2;
  v30 = *(v0 + 13);
  v31 = *(v0 + 8);
  v32 = *(v0 + 9);
  v33 = *(v0 + 6);

  v34 = [objc_allocWithZone(SPSecureLocationsSubscriptionContext) init];
  *(v0 + 36) = v34;
  sub_1004B885C(3u);
  v35 = String._bridgeToObjectiveC()();

  v141 = v34;
  [v34 setClientApp:v35];

  v36 = *(v32 + 16);
  *(v0 + 37) = v36;
  *(v0 + 38) = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v36(v30, v33, v31);
  v37 = *(v32 + 88);
  v38 = v37(v30, v31);
  v39 = enum case for LocatePriority.backgroundAppRefresh(_:);
  if (v38 == enum case for LocatePriority.backgroundAppRefresh(_:))
  {
    v40 = 0;
  }

  else if (v38 == enum case for LocatePriority.shallow(_:))
  {
    v40 = 1;
  }

  else if (v38 == enum case for LocatePriority.live(_:))
  {
    v40 = 2;
  }

  else
  {
    if (v38 != enum case for LocatePriority.backgroundProactive(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v40 = 5;
  }

  v41 = *(v0 + 12);
  v42 = *(v0 + 8);
  v43 = *(v0 + 6);
  [v34 setSubscriptionMode:v40];
  v36(v41, v43, v42);
  v44 = v37(v41, v42);
  v45 = &qword_1005A8000;
  if (v44 == v39 || v44 == enum case for LocatePriority.shallow(_:))
  {
    goto LABEL_33;
  }

  if (v44 != enum case for LocatePriority.live(_:))
  {
    if (v44 == enum case for LocatePriority.backgroundProactive(_:))
    {
      goto LABEL_33;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v80 = v135[2];
  if (!v80)
  {
LABEL_84:
    v45 = &qword_1005A8000;
    if (qword_1005A84C8 != -1)
    {
LABEL_95:
      swift_once();
    }

    v123 = type metadata accessor for Logger();
    sub_10000A6F0(v123, qword_1005E0B28);
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v148[0] = v127;
      *v126 = 136315138;

      sub_10004B564(&qword_1005A9630, &qword_1004C5680);
      v128 = Dictionary.description.getter();
      v130 = v129;

      v131 = sub_10000D01C(v128, v130, v148);

      *(v126 + 4) = v131;
      _os_log_impl(&_mh_execute_header, v124, v125, "pushIdentifiers: %s", v126, 0xCu);
      sub_100004984(v127);
    }

    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v141 setPushIdentifiers:isa];

LABEL_33:

    if (v45[153] != -1)
    {
      goto LABEL_93;
    }

    goto LABEL_34;
  }

  v81 = *(v0 + 15);
  v139 = *(v81 + 16);
  v82 = v135 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
  v137 = *(v81 + 72);
  v134 = (v81 + 8);
  v83 = _swiftEmptyDictionarySingleton;
  v84 = (*(v0 + 21) + 8);
  while (1)
  {
    v147 = v80;
    v87 = v83;
    v89 = *(v0 + 22);
    v88 = *(v0 + 23);
    v90 = *(v0 + 20);
    v143 = v82;
    v139(*(v0 + 17), v82, *(v0 + 14));
    Friend.handle.getter();
    v45 = Handle.identifier.getter();
    v92 = v91;
    v0 = *v84;
    (*v84)(v88, v90);
    Friend.handle.getter();
    v93 = Handle.pushIdentifiers.getter();
    v0(v89, v90);
    if (v93)
    {
      break;
    }

    v83 = v87;
    v103 = sub_1000110D8(v45, v92);
    v105 = v104;

    if (v105)
    {
      v148[0] = v87;
      v0 = v144;
      v85 = v147;
      v86 = v143;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_100203F3C();
        v83 = v148[0];
      }

      sub_1001FFBFC(v103, v83);
      goto LABEL_55;
    }

LABEL_54:
    v0 = v144;
    v85 = v147;
    v86 = v143;
LABEL_55:
    (*v134)(*(v0 + 17), *(v0 + 14));
    v82 = &v86[v137];
    v80 = v85 - 1;
    if (!v80)
    {
      goto LABEL_84;
    }
  }

  v83 = v87;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v148[0] = v87;
  v95 = sub_1000110D8(v45, v92);
  v97 = *(v87 + 16);
  v98 = (v96 & 1) == 0;
  v99 = __OFADD__(v97, v98);
  v100 = v97 + v98;
  if (v99)
  {
    goto LABEL_92;
  }

  v101 = v96;
  if (*(v87 + 24) >= v100)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v0 = v95;
      sub_100203F3C();
      v95 = v0;
      v83 = v148[0];
      if ((v101 & 1) == 0)
      {
LABEL_67:
        v83[(v95 >> 6) + 8] |= 1 << v95;
        v106 = (v83[6] + 16 * v95);
        *v106 = v45;
        v106[1] = v92;
        *(v83[7] + 8 * v95) = v93;
        v107 = v83[2];
        v99 = __OFADD__(v107, 1);
        v108 = v107 + 1;
        if (v99)
        {
          __break(1u);
          goto LABEL_95;
        }

        v83[2] = v108;
        goto LABEL_54;
      }

      goto LABEL_53;
    }

LABEL_66:
    if ((v101 & 1) == 0)
    {
      goto LABEL_67;
    }

LABEL_53:
    *(v83[7] + 8 * v95) = v93;

    goto LABEL_54;
  }

  sub_10022EC88(v100, isUniquelyReferenced_nonNull_native);
  v83 = v148[0];
  v95 = sub_1000110D8(v45, v92);
  if ((v101 & 1) == (v102 & 1))
  {
    goto LABEL_66;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100368F8C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_1003690A0, v4, 0);
}

uint64_t sub_1003690A0()
{
  v1 = 0;
  v2 = v0[15];
  v21 = *(v2 + 16);
  v3 = v0[35] + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v19 = (v0[21] + 8);
  v20 = *(v2 + 72);
  v18 = (v2 + 8);
  v4 = _swiftEmptyArrayStorage;
  do
  {
    v6 = v0[25];
    v7 = v0[20];
    v8 = v0[16];
    v9 = v0[14];
    v21(v8, v3, v9);
    Friend.handle.getter();
    v10 = Handle.serverID.getter();
    v12 = v11;
    (*v19)(v6, v7);
    (*v18)(v8, v9);
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1001FC900(0, *(v4 + 2) + 1, 1, v4);
      }

      v14 = *(v4 + 2);
      v13 = *(v4 + 3);
      if (v14 >= v13 >> 1)
      {
        v4 = sub_1001FC900((v13 > 1), v14 + 1, 1, v4);
      }

      *(v4 + 2) = v14 + 1;
      v5 = &v4[16 * v14];
      *(v5 + 4) = v10;
      *(v5 + 5) = v12;
    }

    v0[45] = v4;
    ++v1;
    v3 += v20;
  }

  while (v1 != v0[40]);
  v0[42] = v0[3];
  v15 = swift_task_alloc();
  v0[43] = v15;
  *v15 = v0;
  v15[1] = sub_1003692AC;
  v16 = v0[36];

  return sub_100471534(v4, v16);
}

uint64_t sub_1003692AC(uint64_t a1, double a2)
{
  v6 = *v3;
  *(*v3 + 352) = v2;

  if (v2)
  {
    v7 = *(v6 + 56);

    v8 = sub_100369DAC;
    v9 = v7;
  }

  else
  {
    v10 = *(v6 + 56);

    *(v6 + 368) = a1;
    *(v6 + 376) = a2;
    v8 = sub_100369450;
    v9 = v10;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100369450()
{
  v34 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 368);
  *(v0 + 384) = v2;
  (*(v0 + 296))(*(v0 + 88), *(v0 + 48), *(v0 + 64));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  if (v5)
  {
    v32 = v2;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136446466;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v8 + 8))(v6, v7);
    v14 = sub_10000D01C(v11, v13, &v33);

    *(v9 + 4) = v14;
    *(v9 + 12) = 1024;
    *(v9 + 14) = *(v32 + 16) != 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s subscription successful. With location? %{BOOL}d", v9, 0x12u);
    sub_100004984(v10);
  }

  else
  {

    (*(v8 + 8))(v6, v7);
  }

  v15 = 0xD00000000000001ELL;
  if (*(v0 + 424) == 1)
  {
    if (v1 > 0.0)
    {
      v16 = static Duration.seconds(_:)();
      v18 = v17;
      v19 = swift_task_alloc();
      *(v0 + 392) = v19;
      *v19 = v0;
      v19[1] = sub_100369870;
      v20 = *(v0 + 48);
      v21 = *(v0 + 40);

      return sub_10036A294(v21, v20, v16, v18);
    }

    v23 = "should not check Resubscription";
  }

  else
  {
    v23 = "Unexpected LocatePriority";
    v15 = 0xD00000000000001FLL;
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136315138;
    v28 = sub_10000D01C(v15, v23 | 0x8000000000000000, &v33);

    *(v26 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s. No need to resubscribe.", v26, 0xCu);
    sub_100004984(v27);
  }

  else
  {
  }

  v29 = *(v0 + 280);

  v30 = swift_task_alloc();
  *(v0 + 400) = v30;
  *v30 = v0;
  v30[1] = sub_100369A34;
  v31 = *(v0 + 384);

  return sub_100370914(v31, v29);
}

uint64_t sub_100369870()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_100369980, v1, 0);
}

uint64_t sub_100369980()
{
  v1 = v0[35];

  v2 = swift_task_alloc();
  v0[50] = v2;
  *v2 = v0;
  v2[1] = sub_100369A34;
  v3 = v0[48];

  return sub_100370914(v3, v1);
}

uint64_t sub_100369A34(uint64_t a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 408) = a1;

  return _swift_task_switch(sub_100369B8C, v2, 0);
}

uint64_t sub_100369B8C()
{
  v1 = v0[36];

  v4 = v0[51];

  v2 = v0[1];

  return v2(v4);
}

uint64_t sub_100369CA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100369DAC()
{
  v23 = v0;
  (*(v0 + 296))(*(v0 + 80), *(v0 + 48), *(v0 + 64));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 352);
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = *(v0 + 64);
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136315394;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    (*(v5 + 8))(v4, v6);
    v11 = sub_10000D01C(v8, v10, &v22);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v0 + 32) = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v12 = String.init<A>(describing:)();
    v14 = sub_10000D01C(v12, v13, &v22);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s Subscription failed due to %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v16 = *(v0 + 72);
    v15 = *(v0 + 80);
    v17 = *(v0 + 64);

    (*(v16 + 8))(v15, v17);
  }

  v18 = swift_task_alloc();
  *(v0 + 416) = v18;
  *v18 = v0;
  v18[1] = sub_10036A05C;
  v19 = *(v0 + 48);
  v20 = *(v0 + 40);

  return sub_10036A294(v20, v19, 0xD02AB486CEDC0000, 0);
}

uint64_t sub_10036A05C()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_10036A16C, v1, 0);
}

uint64_t sub_10036A16C()
{
  v1 = *(v0 + 288);
  v4 = sub_1002087C4(_swiftEmptyArrayStorage);

  v2 = *(v0 + 8);

  return v2(v4);
}

uint64_t sub_10036A294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  Priority = type metadata accessor for LocatePriority();
  v5[8] = Priority;
  v7 = *(Priority - 8);
  v5[9] = v7;
  v5[10] = *(v7 + 64);
  v5[11] = swift_task_alloc();
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_10036A3C4, v4, 0);
}

uint64_t sub_10036A3C4()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(type metadata accessor for Handle() - 8);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = *(v3 + 72);
    do
    {
      sub_10037D208(v0[2] + v4, v0[4], v0[5], v0[3]);
      v4 += v5;
      --v2;
    }

    while (v2);
    v1 = v0[2];
  }

  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  v24 = v0[7];
  v11 = v0[6];
  v23 = v0[5];
  v12 = v0[3];
  v21 = v7;
  v22 = v0[4];
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  (*(v9 + 16))(v7, v12, v10);
  v14 = sub_10001AEBC(&qword_1005B23E0, 255, type metadata accessor for LocationService, &unk_1004D6610);
  v15 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = v11;
  *(v17 + 3) = v14;
  *(v17 + 4) = v11;
  *(v17 + 5) = v1;
  (*(v9 + 32))(&v17[v15], v21, v10);
  v18 = &v17[v16];
  *v18 = v22;
  *(v18 + 1) = v23;
  *&v17[(v16 + 23) & 0xFFFFFFFFFFFFFFF8] = v24;
  swift_retain_n();

  sub_1001D7F30(0, 0, v6, &unk_1004D6940, v17);

  v19 = v0[1];

  return v19();
}

uint64_t sub_10036A648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v16;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for UUID();
  v8[8] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v8[9] = Priority;
  v12 = *(Priority - 8);
  v8[10] = v12;
  v8[11] = *(v12 + 64);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[14] = v13;
  *v13 = v8;
  v13[1] = sub_10036A7A4;

  return sub_10036E3A0(a5, a6);
}

uint64_t sub_10036A7A4(char a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_10036A8BC, v2, 0);
}

uint64_t sub_10036A8BC()
{
  if (*(v0 + 120) == 1)
  {
    v1 = *(v0 + 104);
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    v4 = *(v0 + 72);
    v18 = *(v0 + 56);
    v19 = *(v0 + 96);
    v5 = *(v0 + 32);
    v21 = *(v0 + 40);
    v23 = *(v0 + 48);
    v25 = v5;
    v24 = *(v0 + 24);
    v20 = *(v0 + 16);
    type metadata accessor for WorkItemQueue.WorkItem();
    v26 = *(v2 + 16);
    v26(v1, v5, v4);
    v6 = *(v2 + 80);
    v7 = (v6 + 32) & ~v6;
    v8 = (v7 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
    v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
    v10 = swift_allocObject();
    *(v10 + 16) = v21;
    *(v10 + 24) = v23;
    v22 = *(v2 + 32);
    v22(v10 + v7, v1, v4);
    *(v10 + v8) = v24;
    *(v10 + v9) = v20;
    *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
    v26(v19, v25, v4);
    v11 = (v6 + 16) & ~v6;
    v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = swift_allocObject();
    v22(v13 + v11, v19, v4);
    *(v13 + v12) = v24;
    *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
    swift_bridgeObjectRetain_n();

    UUID.init()();
    v14 = WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    v26(v1, v25, v4);
    v15 = swift_allocObject();
    *(v15 + 16) = v20;
    *(v15 + 24) = v14;
    v22(v15 + v7, v1, v4);

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10036AC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Handle();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v5[10] = Priority;
  v5[11] = *(Priority - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_10036AD9C, 0, 0);
}

uint64_t sub_10036AD9C()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_10036AE5C;
  v3 = v0[2];
  v2 = v0[3];

  return sub_100291918(v3, v2, 0, 0, 1);
}

uint64_t sub_10036AE5C()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  *(*v1 + 144) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_10036B3FC;
  }

  else
  {
    v5 = sub_10036AFCC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10036AFCC()
{
  v52 = v0;
  v1 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v1[4];
  v6 = type metadata accessor for Logger();
  v1[19] = sub_10000A6F0(v6, qword_1005E0B28);
  v7 = *(v4 + 16);
  v1[20] = v7;
  v1[21] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v5, v3);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v1[13];
  v13 = v1[10];
  v12 = v1[11];
  if (v10)
  {
    v14 = v1[5];
    v15 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v15 = 136315651;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v46 = *(v12 + 8);
    v46(v11, v13);
    v19 = sub_10000D01C(v16, v18, &v50);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2160;
    *(v15 + 14) = 1752392040;
    buf = v15;
    *(v15 + 22) = 2081;
    v20 = *(v14 + 16);
    if (v20)
    {
      v44 = v9;
      v45 = v8;
      v21 = v1[8];
      v22 = v1[5];
      v51 = _swiftEmptyArrayStorage;
      sub_10002B3C0(0, v20, 0);
      v23 = v51;
      v24 = *(v21 + 16);
      v21 += 16;
      v25 = v22 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
      v48 = *(v21 + 56);
      v49 = v24;
      v26 = (v21 - 8);
      do
      {
        v27 = v1[9];
        v28 = v1;
        v29 = v1[7];
        v49(v27, v25, v29);
        v30 = Handle.identifier.getter();
        v32 = v31;
        (*v26)(v27, v29);
        v51 = v23;
        v34 = v23[2];
        v33 = v23[3];
        if (v34 >= v33 >> 1)
        {
          sub_10002B3C0((v33 > 1), v34 + 1, 1);
          v23 = v51;
        }

        v23[2] = v34 + 1;
        v35 = &v23[2 * v34];
        v35[4] = v30;
        v35[5] = v32;
        v25 += v48;
        --v20;
        v1 = v28;
      }

      while (v20);
      v8 = v45;
      v9 = v44;
    }

    v37 = Array.description.getter();
    v39 = v38;

    v40 = sub_10000D01C(v37, v39, &v50);

    *(buf + 3) = v40;
    _os_log_impl(&_mh_execute_header, v8, v9, "Resubscription task fired for: %s for handles: %{private,mask.hash}s, checking if we need to resubscribe", buf, 0x20u);
    swift_arrayDestroy();

    v36 = v46;
  }

  else
  {

    v36 = *(v12 + 8);
    v36(v11, v13);
  }

  v1[22] = v36;
  v41 = swift_task_alloc();
  v1[23] = v41;
  *v41 = v1;
  v41[1] = sub_10036B488;
  v42 = v1[4];

  return sub_10036D598(v42);
}

uint64_t sub_10036B3FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10036B488(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v7 = *v1;
  *(v3 + 192) = a1;

  v4 = swift_task_alloc();
  *(v3 + 200) = v4;
  *v4 = v7;
  v4[1] = sub_10036B5EC;
  v5 = *(v2 + 32);

  return sub_10036D9C0(v5);
}

uint64_t sub_10036B5EC()
{

  return _swift_task_switch(sub_10036B6E8, 0, 0);
}

uint64_t sub_10036B6E8()
{
  v49 = v0;
  v1 = v0;
  if (*(*(v0 + 192) + 16))
  {
    (*(v0 + 160))(*(v0 + 96), *(v0 + 32), *(v0 + 80));

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = v1[22];
    v6 = v1[12];
    v7 = v1[10];
    if (v4)
    {
      v46 = v1[5];
      v8 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v8 = 136315651;
      sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v10;
      v5(v6, v7);
      v12 = sub_10000D01C(v9, v11, &v47);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2160;
      *(v8 + 14) = 1752392040;
      buf = v8;
      *(v8 + 22) = 2081;
      v13 = *(v46 + 16);
      if (v13)
      {
        v41 = v3;
        v42 = v2;
        v14 = v1[8];
        v15 = v1[5];
        v48 = _swiftEmptyArrayStorage;
        sub_10002B3C0(0, v13, 0);
        v16 = v48;
        v17 = *(v14 + 16);
        v14 += 16;
        v18 = v15 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
        v44 = *(v14 + 56);
        v45 = v17;
        v19 = (v14 - 8);
        do
        {
          v20 = v1[9];
          v21 = v1;
          v22 = v1[7];
          v45(v20, v18, v22);
          v23 = Handle.identifier.getter();
          v25 = v24;
          (*v19)(v20, v22);
          v48 = v16;
          v27 = v16[2];
          v26 = v16[3];
          if (v27 >= v26 >> 1)
          {
            sub_10002B3C0((v26 > 1), v27 + 1, 1);
            v16 = v48;
          }

          v16[2] = v27 + 1;
          v28 = &v16[2 * v27];
          v28[4] = v23;
          v28[5] = v25;
          v18 += v44;
          --v13;
          v1 = v21;
        }

        while (v13);
        v2 = v42;
        v3 = v41;
      }

      v34 = Array.description.getter();
      v36 = v35;

      v37 = sub_10000D01C(v34, v36, &v47);

      *(buf + 3) = v37;
      _os_log_impl(&_mh_execute_header, v2, v3, "Resubscribing %s for handles %{private,mask.hash}s", buf, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v5(v6, v7);
    }

    v38 = swift_task_alloc();
    v1[26] = v38;
    *v38 = v1;
    v38[1] = sub_10036BBA4;
    v39 = v1[4];
    v40 = v1[24];

    return sub_100367504(v40, v39, 1);
  }

  else
  {

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Resubscription task fired but handles clients are interested in is empty, not resubscribing. Clearing out and returning.", v31, 2u);
    }

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_10036BBA4(uint64_t a1)
{
  v3 = *v2;

  if (!v1)
  {
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_10036BD2C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 144) = a2;
  *(v4 + 32) = a1;
  v5 = type metadata accessor for CancellationError();
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  v6 = type metadata accessor for Handle();
  *(v4 + 80) = v6;
  *(v4 + 88) = *(v6 - 8);
  *(v4 + 96) = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  *(v4 + 104) = Priority;
  *(v4 + 112) = *(Priority - 8);
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_10036BEC4, 0, 0);
}

uint64_t sub_10036BEC4()
{
  v134 = v0;
  v1 = v0;
  if ((*(v0 + 144) & 1) == 0)
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 136);
    v36 = *(v0 + 104);
    v37 = *(v0 + 112);
    v38 = v1[5];
    v39 = type metadata accessor for Logger();
    sub_10000A6F0(v39, qword_1005E0B28);
    (*(v37 + 16))(v35, v38, v36);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    v40 = os_log_type_enabled(v8, v9);
    v11 = v1[17];
    v13 = v1[13];
    v12 = v1[14];
    if (v40)
    {
      v41 = v1[6];
      v42 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *v42 = 136315651;
      sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      (*(v12 + 8))(v11, v13);
      v46 = sub_10000D01C(v43, v45, &v132);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2160;
      *(v42 + 14) = 1752392040;
      bufa = v42;
      *(v42 + 22) = 2081;
      v47 = *(v41 + 16);
      if (v47)
      {
        v118 = v9;
        v120 = v8;
        v48 = v1[11];
        v49 = v1[6];
        v133 = _swiftEmptyArrayStorage;
        sub_10002B3C0(0, v47, 0);
        v50 = v133;
        v51 = *(v48 + 16);
        v48 += 16;
        v52 = v49 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
        v126 = *(v48 + 56);
        v129 = v51;
        v53 = (v48 - 8);
        do
        {
          v54 = v1[12];
          v55 = v1[10];
          v129(v54, v52, v55);
          v56 = Handle.identifier.getter();
          v58 = v57;
          (*v53)(v54, v55);
          v133 = v50;
          v60 = v50[2];
          v59 = v50[3];
          if (v60 >= v59 >> 1)
          {
            sub_10002B3C0((v59 > 1), v60 + 1, 1);
            v50 = v133;
          }

          v50[2] = v60 + 1;
          v61 = &v50[2 * v60];
          v61[4] = v56;
          v61[5] = v58;
          v52 += v126;
          --v47;
          v1 = v131;
        }

        while (v47);
        v8 = v120;
        v9 = v118;
      }

      v95 = Array.description.getter();
      v97 = v96;

      v98 = sub_10000D01C(v95, v97, &v132);

      v99 = bufa;
      *(bufa + 3) = v98;
      v100 = "%s resubscription succeeded for %{private,mask.hash}s.";
      goto LABEL_34;
    }

LABEL_21:

    (*(v12 + 8))(v11, v13);
    goto LABEL_36;
  }

  v2 = *(v0 + 32);
  *(v0 + 16) = v2;
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 128);
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v6 = v1[5];
    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005E0B28);
    (*(v5 + 16))(v3, v6, v4);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v1[16];
    v13 = v1[13];
    v12 = v1[14];
    if (v10)
    {
      v14 = v1[6];
      v15 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *v15 = 136315651;
      sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v12 + 8))(v11, v13);
      v19 = sub_10000D01C(v16, v18, &v132);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2160;
      *(v15 + 14) = 1752392040;
      buf = v15;
      *(v15 + 22) = 2081;
      v20 = *(v14 + 16);
      if (v20)
      {
        v117 = v9;
        v119 = v8;
        v21 = v1[11];
        v22 = v1[6];
        v133 = _swiftEmptyArrayStorage;
        sub_10002B3C0(0, v20, 0);
        v23 = v133;
        v24 = *(v21 + 16);
        v21 += 16;
        v25 = v22 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
        v125 = *(v21 + 56);
        v128 = v24;
        v26 = (v21 - 8);
        do
        {
          v27 = v1[12];
          v28 = v1[10];
          v128(v27, v25, v28);
          v29 = Handle.identifier.getter();
          v31 = v30;
          (*v26)(v27, v28);
          v133 = v23;
          v33 = v23[2];
          v32 = v23[3];
          if (v33 >= v32 >> 1)
          {
            sub_10002B3C0((v32 > 1), v33 + 1, 1);
            v23 = v133;
          }

          v23[2] = v33 + 1;
          v34 = &v23[2 * v33];
          v34[4] = v29;
          v34[5] = v31;
          v25 += v125;
          --v20;
          v1 = v131;
        }

        while (v20);
        v8 = v119;
        v9 = v117;
      }

      v101 = Array.description.getter();
      v103 = v102;

      v104 = sub_10000D01C(v101, v103, &v132);

      v99 = buf;
      *(buf + 3) = v104;
      v100 = "%s resubscription canceled for %{private,mask.hash}s.";
LABEL_34:
      _os_log_impl(&_mh_execute_header, v8, v9, v100, v99, 0x20u);
      swift_arrayDestroy();

      goto LABEL_36;
    }

    goto LABEL_21;
  }

  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v63 = *(v0 + 112);
  v62 = v1[15];
  v64 = v1[13];
  v65 = v1[5];
  v66 = v1[4];
  v67 = type metadata accessor for Logger();
  sub_10000A6F0(v67, qword_1005E0B28);
  (*(v63 + 16))(v62, v65, v64);

  sub_10037DB5C(v66, 1);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.error.getter();

  sub_1002BC5B4(v66, 1);
  v70 = os_log_type_enabled(v68, v69);
  v72 = v1[14];
  v71 = v1[15];
  v73 = v1[13];
  if (v70)
  {
    v121 = v69;
    bufb = v2;
    v74 = v1[6];
    v75 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    *v75 = 136315907;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
    v76 = dispatch thunk of CustomStringConvertible.description.getter();
    v78 = v77;
    (*(v72 + 8))(v71, v73);
    v79 = sub_10000D01C(v76, v78, &v132);

    *(v75 + 4) = v79;
    *(v75 + 12) = 2160;
    *(v75 + 14) = 1752392040;
    *(v75 + 22) = 2081;
    v80 = *(v74 + 16);
    if (v80)
    {
      v115 = v75;
      v116 = v68;
      v81 = v1[11];
      v82 = v1[6];
      v133 = _swiftEmptyArrayStorage;
      sub_10002B3C0(0, v80, 0);
      v83 = v133;
      v84 = *(v81 + 16);
      v81 += 16;
      v85 = v82 + ((*(v81 + 64) + 32) & ~*(v81 + 64));
      v127 = *(v81 + 56);
      v130 = v84;
      v86 = (v81 - 8);
      do
      {
        v87 = v131[12];
        v88 = v131[10];
        v130(v87, v85, v88);
        v89 = Handle.identifier.getter();
        v91 = v90;
        (*v86)(v87, v88);
        v133 = v83;
        v93 = v83[2];
        v92 = v83[3];
        if (v93 >= v92 >> 1)
        {
          sub_10002B3C0((v92 > 1), v93 + 1, 1);
          v83 = v133;
        }

        v83[2] = v93 + 1;
        v94 = &v83[2 * v93];
        v94[4] = v89;
        v94[5] = v91;
        v85 += v127;
        --v80;
      }

      while (v80);
      v75 = v115;
      v68 = v116;
    }

    v105 = v131[4];
    v106 = Array.description.getter();
    v108 = v107;
    v1 = v131;

    v109 = sub_10000D01C(v106, v108, &v132);

    *(v75 + 24) = v109;
    *(v75 + 32) = 2082;
    v131[3] = bufb;
    sub_10037DB5C(v105, 1);
    v110 = String.init<A>(describing:)();
    v112 = sub_10000D01C(v110, v111, &v132);

    *(v75 + 34) = v112;
    _os_log_impl(&_mh_execute_header, v68, v121, "%s resubscription failed for %{private,mask.hash}s. Error %{public}s", v75, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v72 + 8))(v71, v73);
  }

LABEL_36:

  v113 = v1[1];

  return v113();
}

uint64_t sub_10036C9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10036C9FC, a1, 0);
}

uint64_t sub_10036C9FC()
{
  sub_10036E040(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10036CA64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v61 = *v2;
  v6 = type metadata accessor for ClientID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v62 = v8;
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v10 - 8);
  v12 = &v50 - v11;
  v13 = type metadata accessor for Handle();
  v14 = *(v13 - 8);
  v65 = v13;
  v66 = v14;
  __chkstk_darwin(v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000A6F0(v17, qword_1005E0B28);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v60 = v19;
  if (os_log_type_enabled(v18, v19))
  {
    v56 = v18;
    v57 = a2;
    v58 = v7;
    v59 = v6;
    v20 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v68[0] = v54;
    *v20 = 136446723;
    *(v20 + 4) = sub_10000D01C(0xD000000000000024, 0x80000001004E8030, v68);
    *(v20 + 12) = 2160;
    *(v20 + 14) = 1752392040;
    v55 = v20;
    *(v20 + 22) = 2081;
    v21 = *(a1 + 16);
    v22 = v62;
    if (v21)
    {
      v50 = v12;
      v51 = v9;
      v52 = v3;
      v67 = _swiftEmptyArrayStorage;
      sub_10002B3C0(0, v21, 0);
      v23 = v67;
      v24 = *(v66 + 16);
      v25 = *(v66 + 80);
      v53 = a1;
      v26 = a1 + ((v25 + 32) & ~v25);
      v63 = *(v66 + 72);
      v64 = v24;
      v66 += 16;
      v27 = (v66 - 8);
      do
      {
        v28 = v65;
        v64(v16, v26, v65);
        v29 = Handle.identifier.getter();
        v31 = v30;
        (*v27)(v16, v28);
        v67 = v23;
        v33 = v23[2];
        v32 = v23[3];
        if (v33 >= v32 >> 1)
        {
          sub_10002B3C0((v32 > 1), v33 + 1, 1);
          v23 = v67;
        }

        v23[2] = v33 + 1;
        v34 = &v23[2 * v33];
        v34[4] = v29;
        v34[5] = v31;
        v26 += v63;
        --v21;
      }

      while (v21);
      v3 = v52;
      a1 = v53;
      v12 = v50;
      v9 = v51;
      v22 = v62;
    }

    v35 = Array.description.getter();
    v37 = v36;

    v38 = sub_10000D01C(v35, v37, v68);

    v39 = v55;
    *(v55 + 24) = v38;
    v40 = v56;
    _os_log_impl(&_mh_execute_header, v56, v60, " %{public}s for handles: %{private,mask.hash}s", v39, 0x20u);
    swift_arrayDestroy();

    v7 = v58;
    v6 = v59;
    a2 = v57;
  }

  else
  {

    v22 = v62;
  }

  v41 = type metadata accessor for TaskPriority();
  (*(*(v41 - 8) + 56))(v12, 1, 1, v41);
  (*(v7 + 16))(v9, a2, v6);
  v42 = sub_10001AEBC(&qword_1005B23E0, 255, type metadata accessor for LocationService, &unk_1004D6610);
  v43 = v9;
  v44 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v45 = v22 + v44 + 7;
  v46 = v12;
  v47 = v45 & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 2) = v3;
  *(v48 + 3) = v42;
  *(v48 + 4) = v3;
  *(v48 + 5) = a1;
  (*(v7 + 32))(&v48[v44], v43, v6);
  *&v48[v47] = v61;
  swift_retain_n();

  sub_1001D7F30(0, 0, v46, &unk_1004D6928, v48);
}

uint64_t sub_10036D01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  Priority = type metadata accessor for LocatePriority();
  v6[6] = Priority;
  v6[7] = *(Priority - 8);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_10036D0E4, a4, 0);
}

uint64_t sub_10036D0E4()
{
  (*(v0[7] + 104))(v0[8], enum case for LocatePriority.shallow(_:), v0[6]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_10036D1A4;
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];

  return sub_100356174(v4, v2, v3);
}

uint64_t sub_10036D1A4()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *v1;
  v5[10] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[3];

    return _swift_task_switch(sub_10036D34C, v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_10036D34C()
{
  v16 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 141558531;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    type metadata accessor for Handle();
    v7 = Array.description.getter();
    v9 = sub_10000D01C(v7, v8, &v15);

    *(v6 + 14) = v9;
    *(v6 + 22) = 2080;
    v0[2] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v10 = String.init<A>(describing:)();
    v12 = sub_10000D01C(v10, v11, &v15);

    *(v6 + 24) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unsubscribe for %{private,mask.hash}s\nfailed with error: %s", v6, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_10036D598(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  Priority = type metadata accessor for LocatePriority();
  v2[7] = Priority;
  v2[8] = *(Priority - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10036D658, v1, 0);
}

uint64_t sub_10036D658()
{
  v31 = v0;
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!*(v3 + 16))
  {
    goto LABEL_7;
  }

  v4 = v0[5];

  v5 = sub_1001FDF60(v4);
  if ((v6 & 1) == 0)
  {

LABEL_7:
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[7];
    v15 = v0[5];
    v16 = type metadata accessor for Logger();
    sub_10000A6F0(v16, qword_1005E0B28);
    (*(v13 + 16))(v12, v15, v14);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v21 = v0[8];
    v20 = v0[9];
    v22 = v0[7];
    if (v19)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136315138;
      sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v21 + 8))(v20, v22);
      v28 = sub_10000D01C(v25, v27, &v30);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v17, v18, "No handle to resubscribe for %s.", v23, 0xCu);
      sub_100004984(v24);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }

    goto LABEL_13;
  }

  v7 = *(*(v3 + 56) + 24 * v5);

  v8 = *(v7 + 16);
  if (!v8)
  {

LABEL_13:
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v9 = sub_10002C714(*(v7 + 16), 0);
  type metadata accessor for Handle();
  v10 = sub_100241514();
  result = sub_10000E3F8(v30);
  if (v10 != v8)
  {
    __break(1u);
    return result;
  }

LABEL_14:

  v29 = v0[1];

  return v29(v9);
}

uint64_t sub_10036D9C0(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  Priority = type metadata accessor for LocatePriority();
  v2[13] = Priority;
  v2[14] = *(Priority - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10036DA8C, v1, 0);
}

uint64_t sub_10036DA8C()
{
  v52 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B28);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);

  v7 = Logger.logObject.getter();
  LOBYTE(v1) = static os_log_type_t.default.getter();

  v49 = v1;
  v8 = os_log_type_enabled(v7, v1);
  v9 = v0[16];
  v11 = v0[13];
  v10 = v0[14];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v12 = 136315394;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
    v13 = v6;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    log = v7;
    v16 = v15;
    v50 = *(v10 + 8);
    v50(v9, v11);
    v17 = v14;
    v6 = v13;
    v18 = sub_10000D01C(v17, v16, &v51);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    swift_beginAccess();
    sub_10001AEBC(&qword_1005B0208, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);

    v19 = Dictionary.description.getter();
    v21 = v20;

    v22 = sub_10000D01C(v19, v21, &v51);

    *(v12 + 14) = v22;
    _os_log_impl(&_mh_execute_header, log, v49, "clearResubscription %s: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v50 = *(v10 + 8);
    v50(v9, v11);
  }

  v23 = v0[12];
  v24 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
  swift_beginAccess();
  v25 = *(v23 + v24);
  if (!*(v25 + 16))
  {
    goto LABEL_11;
  }

  v26 = v0[11];

  v27 = sub_1001FDF60(v26);
  if ((v28 & 1) == 0)
  {

LABEL_11:
    v6(v0[15], v0[11], v0[13]);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[15];
    v40 = v0[13];
    if (v38)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v51 = v42;
      *v41 = 136315138;
      sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      v50(v39, v40);
      v46 = sub_10000D01C(v43, v45, &v51);

      *(v41 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v36, v37, "clearResubscription: no tracker for %s", v41, 0xCu);
      sub_100004984(v42);
    }

    else
    {

      v50(v39, v40);
    }

    goto LABEL_14;
  }

  v29 = (*(v25 + 56) + 24 * v27);
  v30 = *v29;
  v31 = v29[2];

  swift_bridgeObjectRetain_n();

  v33 = v31 + 1;
  if (__OFADD__(v31, 1))
  {
    __break(1u);
    return result;
  }

  v34 = v0[11];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = *(v23 + v24);
  *(v23 + v24) = 0x8000000000000000;
  sub_100454430(v30, 0, v33, v34, isUniquelyReferenced_nonNull_native);
  *(v23 + v24) = v51;
  swift_endAccess();

LABEL_14:

  v47 = v0[1];

  return v47();
}

void sub_10036E040(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  Priority = type metadata accessor for LocatePriority();
  v7 = *(Priority - 8);
  __chkstk_darwin(Priority);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_1001FDF60(a2);
    if (v13)
    {
      v14 = (*(v11 + 56) + 24 * v12);
      v15 = *v14;
      v16 = v14[2];

      swift_bridgeObjectRetain_n();

      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *(v3 + v10);
      *(v3 + v10) = 0x8000000000000000;
      sub_100454430(v15, a1, v16, a2, isUniquelyReferenced_nonNull_native);
      *(v3 + v10) = v28;
      swift_endAccess();

      return;
    }
  }

  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000A6F0(v18, qword_1005E0B28);
  (*(v7 + 16))(v9, a2, Priority);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29[0] = v22;
    *v21 = 136446210;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v7 + 8))(v9, Priority);
    v26 = sub_10000D01C(v23, v25, v29);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "addSubscription: missing tracker for %{public}s!", v21, 0xCu);
    sub_100004984(v22);
  }

  else
  {

    (*(v7 + 8))(v9, Priority);
  }
}

uint64_t sub_10036E3A0(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  Priority = type metadata accessor for LocatePriority();
  v3[11] = Priority;
  v3[12] = *(Priority - 8);
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_10036E4C0, v2, 0);
}

uint64_t sub_10036E4C0()
{
  v52 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v51 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    sub_10001AEBC(&qword_1005B0208, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);

    v6 = Dictionary.description.getter();
    v8 = v7;

    v9 = sub_10000D01C(v6, v8, &v51);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "shouldResubscribe: %s", v4, 0xCu);
    sub_100004984(v5);
  }

  v10 = v0[10];
  v11 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
  swift_beginAccess();
  v12 = *(v10 + v11);
  if (!*(v12 + 16))
  {
    goto LABEL_12;
  }

  v13 = v0[9];

  v14 = sub_1001FDF60(v13);
  if ((v15 & 1) == 0)
  {

LABEL_12:
    (*(v0[12] + 16))(v0[13], v0[9], v0[11]);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    v31 = os_log_type_enabled(v29, v30);
    v33 = v0[12];
    v32 = v0[13];
    v34 = v0[11];
    if (v31)
    {
      v35 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v35 = 136315651;
      sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (*(v33 + 8))(v32, v34);
      v39 = sub_10000D01C(v36, v38, &v51);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2160;
      *(v35 + 14) = 1752392040;
      *(v35 + 22) = 2081;
      type metadata accessor for Handle();
      v40 = Array.description.getter();
      v42 = sub_10000D01C(v40, v41, &v51);

      *(v35 + 24) = v42;
      _os_log_impl(&_mh_execute_header, v29, v30, "Missing tracker for %s. Not scheduling resubscription for %{private,mask.hash}s", v35, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v33 + 8))(v32, v34);
    }

    goto LABEL_21;
  }

  v16 = *(v12 + 56) + 24 * v14;
  v17 = *(v16 + 8);
  v18 = *(v16 + 16);

  if (v18 >= sub_10037B9FC())
  {

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134218240;
      *(v45 + 4) = sub_10037B9FC();

      *(v45 + 12) = 2048;
      *(v45 + 14) = v18;

      _os_log_impl(&_mh_execute_header, v43, v44, "Exceeded max number of resubscriptions allowed! Limit: %ld Current: %ld.", v45, 0x16u);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (!v17)
    {

      v46 = 1;
      goto LABEL_22;
    }

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[15];
      v22 = v0[16];
      v23 = v0[14];
      v24 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = v50;
      *v24 = 136446210;
      v49 = v20;
      WorkItemQueue.WorkItem.id.getter();
      sub_10001AEBC(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v21 + 8))(v22, v23);
      v28 = sub_10000D01C(v25, v27, &v51);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v49, "Found existing task %{public}s. Not scheduling resubscription.", v24, 0xCu);
      sub_100004984(v50);
    }

    else
    {
    }
  }

LABEL_21:
  v46 = 0;
LABEL_22:

  v47 = v0[1];

  return v47(v46);
}

uint64_t sub_10036EBF0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Handle();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for Friend();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[13] = v5;
  *v5 = v2;
  v5[1] = sub_10036ED60;

  return daemon.getter();
}

uint64_t sub_10036ED60(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 112) = a1;

  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_10001AEBC(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001AEBC(&qword_1005A90D0, 255, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_10036EF44;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10036EF44(uint64_t a1)
{
  v4 = *v2;
  v4[16] = a1;
  v4[17] = v1;

  if (v1)
  {
    v5 = v4[3];
    v6 = sub_10036F7B8;
  }

  else
  {

    v6 = sub_10036F07C;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10036F07C()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 144) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.following(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_10036F1E0;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_10036F1E0(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_10036F314, v2, 0);
}

uint64_t sub_10036F314()
{
  result = v0[20];
  v44 = *(result + 16);
  if (v44)
  {
    v2 = 0;
    v3 = v0[9];
    v4 = v0[2];
    v42 = (v0[5] + 8);
    v5 = v4 + 56;
    v40 = (v3 + 32);
    v41 = _swiftEmptyArrayStorage;
    v43 = v0[20];
    while (1)
    {
      if (v2 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v6 = v0[7];
      v7 = v0[4];
      v48 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v46 = *(v3 + 72);
      (*(v3 + 16))(v0[12], v0[20] + v48 + v46 * v2, v0[8]);
      Friend.handle.getter();
      v8 = Handle.serverID.getter();
      v10 = v9;
      (*v42)(v6, v7);
      if (v10)
      {
        if (*(v4 + 16))
        {
          Hasher.init(_seed:)();
          String.hash(into:)();
          v11 = Hasher._finalize()();
          v12 = -1 << *(v4 + 32);
          v13 = v11 & ~v12;
          if ((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
          {
            v14 = ~v12;
            while (1)
            {
              v15 = (*(v4 + 48) + 16 * v13);
              v16 = *v15 == v8 && v10 == v15[1];
              if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v13 = (v13 + 1) & v14;
              if (((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
              {
                goto LABEL_3;
              }
            }

            v18 = v0[11];
            v17 = v0[12];
            v19 = v0[8];

            v20 = *v40;
            (*v40)(v18, v17, v19);
            v21 = v41;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100239354(0, v41[2] + 1, 1);
              v21 = v41;
            }

            v23 = v21[2];
            v22 = v21[3];
            if (v23 >= v22 >> 1)
            {
              sub_100239354((v22 > 1), v23 + 1, 1);
              v21 = v41;
            }

            v24 = v0[11];
            v25 = v0[8];
            v21[2] = v23 + 1;
            v41 = v21;
            v20(v21 + v48 + v23 * v46, v24, v25);
            goto LABEL_5;
          }
        }

LABEL_3:
      }

      (*(v3 + 8))(v0[12], v0[8]);
LABEL_5:
      ++v2;
      result = v43;
      if (v2 == v44)
      {
        v26 = v41;
        goto LABEL_25;
      }
    }
  }

  v26 = _swiftEmptyArrayStorage;
LABEL_25:

  v27 = v26[2];
  if (v27)
  {
    v28 = v0[9];
    v29 = v0[5];
    sub_10000E8E0(0, v27, 0);
    v30 = *(v28 + 16);
    v28 += 16;
    v31 = v26 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
    v45 = *(v28 + 56);
    v47 = v30;
    v32 = (v28 - 8);
    do
    {
      v33 = v0[10];
      v34 = v0[8];
      v47(v33, v31, v34);
      Friend.handle.getter();
      (*v32)(v33, v34);
      v36 = _swiftEmptyArrayStorage[2];
      v35 = _swiftEmptyArrayStorage[3];
      if (v36 >= v35 >> 1)
      {
        sub_10000E8E0((v35 > 1), v36 + 1, 1);
      }

      v37 = v0[6];
      v38 = v0[4];
      _swiftEmptyArrayStorage[2] = v36 + 1;
      (*(v29 + 32))(_swiftEmptyArrayStorage + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v36, v37, v38);
      v31 += v45;
      --v27;
    }

    while (v27);
  }

  sub_100374828(_swiftEmptyArrayStorage);

  v39 = v0[1];

  return v39();
}

uint64_t sub_10036F7B8()
{

  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocationService: missing DataManager to locationsUnavailable!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10036F910(uint64_t a1)
{
  v2[8] = v1;
  v4 = type metadata accessor for UUID();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  sub_10004B564(&qword_1005B2450, &qword_1004D6910);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v5 = type metadata accessor for Handle();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[26] = v6;
  *v6 = v2;
  v6[1] = sub_10036FB40;

  return sub_100370914(a1, 0);
}

uint64_t sub_10036FB40(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_10036FC58, v2, 0);
}

uint64_t sub_10036FC58()
{
  v143 = v0;
  v1 = v0;
  if (qword_1005A84C8 != -1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0B28);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    v138 = v1;
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v139 = v6;
      *v5 = 136315138;
      type metadata accessor for Location();
      sub_10001AEBC(&qword_1005A91B0, 255, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      v7 = Dictionary.description.getter();
      v9 = sub_10000D01C(v7, v8, &v139);

      *(v5 + 4) = v9;
      v1 = v138;
      _os_log_impl(&_mh_execute_header, v3, v4, "locationForHandles: %s", v5, 0xCu);
      sub_100004984(v6);
    }

    v10 = v1[27];
    v11 = v1[8];
    sub_1003718C0(v10);
    v12 = OBJC_IVAR____TtC13findmylocated15LocationService_inFlightLatestLocationTasks;
    swift_beginAccess();
    v103 = v12;
    v104 = v11;
    v13 = *(v10 + 16);
    v111 = *(v11 + v12);
    if (!v13)
    {
      break;
    }

    v14 = v1[27];
    v15 = v1[21];
    v132 = v1[15];
    v139 = _swiftEmptyArrayStorage;

    sub_10000E8E0(0, v13, 0);
    v16 = v139;
    v17 = v14 + 64;
    v18 = _HashTable.startBucket.getter();
    v19 = 0;
    v134 = *(v14 + 36);
    v109 = v14 + 64;
    v102 = v14 + 72;
    v105 = v13;
    v106 = v14;
    v107 = v15;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(v14 + 32))
    {
      if ((*(v17 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_58;
      }

      if (v134 != *(v14 + 36))
      {
        goto LABEL_59;
      }

      v113 = 1 << v18;
      v115 = v18 >> 6;
      v112 = v19;
      v22 = *(v132 + 48);
      v23 = v15;
      v24 = v1[19];
      v25 = v1[20];
      v117 = v1[18];
      v120 = v1[17];
      v125 = v1[25];
      v127 = v23[9];
      v122 = v1[16];
      v123 = v23[2];
      v26 = v18;
      v123(v24, *(v14 + 48) + v127 * v18, v25);
      v27 = *(v14 + 56);
      v28 = type metadata accessor for Location();
      v136 = v16;
      v29 = *(v28 - 8);
      v129 = v26;
      v30 = v22;
      (*(v29 + 16))(v24 + v22, v27 + *(v29 + 72) * v26, v28);
      v31 = v23[4];
      v31(v117, v24, v25);
      v32 = *(v29 + 32);
      v32(v117 + *(v132 + 48), v24 + v30, v28);
      sub_100005F04(v117, v120, &qword_1005B2440, &qword_1004D68C0);
      v33 = *(v132 + 48);
      v31(v122, v120, v25);
      v32(v122 + v33, v120 + v33, v28);
      v16 = v136;
      v123(v125, v122, v25);
      sub_100002CE0(v122, &qword_1005B2440, &qword_1004D68C0);
      sub_100002CE0(v117, &qword_1005B2440, &qword_1004D68C0);
      v139 = v136;
      v35 = v136[2];
      v34 = v136[3];
      if (v35 >= v34 >> 1)
      {
        sub_10000E8E0((v34 > 1), v35 + 1, 1);
        v16 = v139;
      }

      v1 = v138;
      v36 = v138[25];
      v37 = v138[20];
      v16[2] = v35 + 1;
      v15 = v107;
      v31(v16 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + v35 * v127, v36, v37);
      v14 = v106;
      v20 = 1 << *(v106 + 32);
      v17 = v109;
      if (v129 >= v20)
      {
        goto LABEL_60;
      }

      v38 = *(v109 + 8 * v115);
      if ((v38 & v113) == 0)
      {
        goto LABEL_61;
      }

      if (v134 != *(v106 + 36))
      {
        goto LABEL_62;
      }

      v39 = v38 & (-2 << (v129 & 0x3F));
      if (v39)
      {
        v20 = __clz(__rbit64(v39)) | v129 & 0x7FFFFFFFFFFFFFC0;
        v21 = v105;
      }

      else
      {
        v40 = v115 << 6;
        v41 = (v102 + 8 * v115);
        v42 = v115 + 1;
        v21 = v105;
        while (v42 < (v20 + 63) >> 6)
        {
          v44 = *v41++;
          v43 = v44;
          v40 += 64;
          ++v42;
          if (v44)
          {
            sub_10002F14C(v129, v134, 0);
            v20 = __clz(__rbit64(v43)) + v40;
            goto LABEL_7;
          }
        }

        sub_10002F14C(v129, v134, 0);
      }

LABEL_7:
      v19 = v112 + 1;
      v18 = v20;
      if (v112 + 1 == v21)
      {
        v137 = v16;
        v45 = v111;
        goto LABEL_25;
      }
    }

LABEL_57:
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
LABEL_63:
    swift_once();
  }

  v45 = *(v11 + v12);

  v137 = _swiftEmptyArrayStorage;
LABEL_25:
  v46 = 0;
  v49 = *(v45 + 64);
  v48 = v45 + 64;
  v47 = v49;
  v50 = -1;
  v51 = -1 << *(v48 - 32);
  v52 = v1[10];
  if (-v51 < 64)
  {
    v50 = ~(-1 << -v51);
  }

  v53 = v50 & v47;
  v108 = (63 - v51) >> 6;
  v110 = v48;
  v114 = v1[10];
  v124 = v1[21];
  v126 = (v52 + 32);
  v121 = (v124 + 8);
  v116 = (v52 + 8);
  while (1)
  {
    if (!v53)
    {
      if (v108 <= v46 + 1)
      {
        v55 = v46 + 1;
      }

      else
      {
        v55 = v108;
      }

      v56 = v55 - 1;
      while (1)
      {
        v54 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        if (v54 >= v108)
        {
          v98 = v1[13];
          v99 = sub_10004B564(&qword_1005B2458, &qword_1004D6918);
          (*(*(v99 - 8) + 56))(v98, 1, 1, v99);
          v135 = 0;
          goto LABEL_40;
        }

        v53 = *(v110 + 8 * v54);
        ++v46;
        if (v53)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
      goto LABEL_57;
    }

    v54 = v46;
LABEL_39:
    v58 = v1[12];
    v57 = v1[13];
    v59 = v1[9];
    v135 = (v53 - 1) & v53;
    v60 = __clz(__rbit64(v53)) | (v54 << 6);
    (*(v114 + 16))(v58, *(v111 + 48) + *(v114 + 72) * v60, v59);
    v61 = (*(v111 + 56) + 24 * v60);
    v63 = *v61;
    v62 = v61[1];
    v64 = v61[2];
    v65 = sub_10004B564(&qword_1005B2458, &qword_1004D6918);
    v66 = (v57 + *(v65 + 48));
    (*(v114 + 32))(v57, v58, v59);
    *v66 = v63;
    v66[1] = v62;
    v66[2] = v64;
    (*(*(v65 - 8) + 56))(v57, 0, 1, v65);

    v1 = v138;

    v56 = v54;
LABEL_40:
    v67 = v1[14];
    sub_1000176A8(v1[13], v67, &qword_1005B2450, &qword_1004D6910);
    v68 = sub_10004B564(&qword_1005B2458, &qword_1004D6918);
    if ((*(*(v68 - 8) + 48))(v67, 1, v68) == 1)
    {
      break;
    }

    v133 = v56;
    v69 = (v1[14] + *(v68 + 48));
    v70 = *v69;
    v130 = v69[2];
    v131 = v69[1];
    (*v126)(v1[11]);
    sub_10001AEBC(&qword_1005A91B0, 255, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
    v71 = Set.init(minimumCapacity:)();
    v139 = v71;
    v72 = v70[2];
    v128 = v70;
    if (v72)
    {
      v73 = v70 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
      v74 = *(v124 + 72);
      v75 = *(v124 + 16);
      do
      {
        v76 = v1[24];
        v77 = v1[22];
        v78 = v138[20];
        v75(v76, v73, v78);
        sub_10002BAF4(v77, v76);
        v79 = v78;
        v1 = v138;
        (*v121)(v77, v79);
        v73 += v74;
        --v72;
      }

      while (v72);
      v80 = v139;
    }

    else
    {
      v80 = v71;
    }

    v81 = Set.init(minimumCapacity:)();
    v139 = v81;
    v82 = v137[2];
    if (v82)
    {
      v118 = v80;
      v83 = v137 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
      v84 = *(v124 + 72);
      v85 = *(v124 + 16);
      do
      {
        v87 = v1[22];
        v86 = v1[23];
        v88 = v138[20];
        v85(v86, v83, v88);
        sub_10002BAF4(v87, v86);
        v89 = v88;
        v1 = v138;
        (*v121)(v87, v89);
        v83 += v84;
        --v82;
      }

      while (v82);
      v81 = v139;
      v80 = v118;
    }

    sub_100343D94(v81, v80);
    v91 = v90;

    if (v91)
    {
      (*v116)(v1[11], v1[9]);
    }

    else
    {
      v92 = v1[27];
      v93 = v1[11];
      v119 = v1[9];
      v139 = v128;
      v140 = v131;
      v141 = v130;

      sub_10034415C(v92);
      v94 = v139;
      v95 = v140;
      v96 = v141;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v142 = *(v104 + v103);
      *(v104 + v103) = 0x8000000000000000;
      sub_100454828(v94, v95, v96, v93, isUniquelyReferenced_nonNull_native);
      *(v104 + v103) = v142;
      swift_endAccess();

      v1 = v138;

      (*v116)(v93, v119);
    }

    v46 = v133;
    v53 = v135;
  }

  v100 = v1[1];

  return v100();
}

uint64_t sub_100370914(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100370938, v2, 0);
}

uint64_t sub_100370938()
{
  v11 = v0;
  v1 = *(v0[2] + 16);
  v0[5] = v1;
  if (!v1)
  {
    v6 = sub_1002087C4(_swiftEmptyArrayStorage);
    goto LABEL_11;
  }

  v2 = v0[3];
  if (v2)
  {
    v10 = _swiftEmptyDictionarySingleton;

    for (i = 0; i != v0[5]; ++i)
    {
      v4 = v0[2];
      v5 = *(type metadata accessor for SecureLocation(0) - 8);
      sub_10037BB24(&v10, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * i, v2);
    }

    v6 = v10;
LABEL_11:
    v8 = v0[1];

    return v8(v6);
  }

  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_100370B14;

  return daemon.getter();
}

uint64_t sub_100370B14(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_10001AEBC(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001AEBC(&qword_1005A90D0, 255, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_100370CF8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100370CF8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = *(v4 + 32);
    v6 = sub_100371250;
  }

  else
  {

    *(v4 + 80) = a1;
    v6 = sub_100370E34;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100370E34()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 88) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.following(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_100370F98;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_100370F98(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_1003710CC, v2, 0);
}

void sub_1003710CC()
{
  v14 = v0;

  v1 = v0[13];
  v2 = v0[9];
  v3 = _swiftEmptyDictionarySingleton;
  v13[0] = _swiftEmptyDictionarySingleton;
  v4 = v0[5];

  if (!v4)
  {
LABEL_10:

    v12 = v0[1];

    v12(v3);
    return;
  }

  v5 = v0[2];
  v6 = *(type metadata accessor for SecureLocation(0) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v6 + 72);
  sub_10037BB24(v13, v5 + v7, v1);
  if (!v2)
  {
    v9 = 0;
    for (i = v8 + v7; ++v9 != v0[5]; i = v11)
    {
      v11 = i + v8;
      sub_10037BB24(v13, v0[2] + i, v1);
    }

    v3 = v13[0];
    goto LABEL_10;
  }
}

uint64_t sub_100371250()
{

  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocationService: missing DataManager to mapSecureLocationToHandle!", v4, 2u);
  }

  v5 = sub_1002087C4(_swiftEmptyArrayStorage);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_10037138C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Handle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Friend.handle.getter();
  v7 = Handle.serverID.getter();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  if (v9)
  {
    if (v7 == *a2 && v9 == a2[1])
    {
      v11 = 1;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1003714C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10004B564(&qword_1005B2490, &unk_1004D6A28);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16[-v10];
  (*(v9 + 16))(&v16[-v10], a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  v14 = *(a2 + 56);
  type metadata accessor for Transaction();
  v17 = v14;
  v18 = a3;
  v19 = a4;
  v20 = sub_10037DDEC;
  v21 = v13;
  static Transaction.named<A>(_:with:)();
}

uint64_t sub_10037166C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for SecureLocation(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  if (a2)
  {
    v18 = a2;
    swift_errorRetain();
  }

  else
  {
    sub_100005F04(a1, v6, &unk_1005AB3F0, &qword_1004C4BF0);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_10037ECCC(v6, v13, type metadata accessor for SecureLocation);
      sub_10037EC58(v13, v11, type metadata accessor for SecureLocation);
      sub_10004B564(&qword_1005B2490, &unk_1004D6A28);
      CheckedContinuation.resume(returning:)();
      return sub_10037EBF8(v13, type metadata accessor for SecureLocation);
    }

    sub_100002CE0(v6, &unk_1005AB3F0, &qword_1004C4BF0);
    sub_1000F7A28();
    v14 = swift_allocError();
    *v15 = 10;
    v18 = v14;
  }

  sub_10004B564(&qword_1005B2490, &unk_1004D6A28);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1003718C0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005E0B28);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004E7F90, &v20);
    *(v12 + 12) = 2048;
    *(v12 + 14) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s count:%ld", v12, 0x16u);
    sub_100004984(v13);
  }

  else
  {
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = sub_10001AEBC(&qword_1005B23E0, 255, type metadata accessor for LocationService, &unk_1004D6610);
  v16 = swift_allocObject();
  v16[2] = v2;
  v16[3] = v15;
  v16[4] = v2;
  v16[5] = a1;
  swift_retain_n();

  sub_1001D7F30(0, 0, v8, &unk_1004D6880, v16);

  type metadata accessor for WorkItemQueue.WorkItem();
  v17 = swift_allocObject();
  v17[2] = v2;
  v17[3] = a1;
  v17[4] = v4;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100371C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = type metadata accessor for AppNotificationEvent.EventType();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100371D3C, a4, 0);
}

uint64_t sub_100371D3C()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_10002C714(*(v1 + 16), 0);
    type metadata accessor for Handle();
    v4 = sub_100241514();

    sub_10000E3F8(v8);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[7] = v3;
  (*(v0[5] + 104))(v0[6], enum case for AppNotificationEvent.EventType.updated(_:), v0[4]);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_100371EC8;
  v6 = v0[6];

  return sub_100377160(v3, v6);
}

uint64_t sub_100371EC8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10037203C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100372060, 0, 0);
}

uint64_t sub_100372060()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = *(v0 + 24);

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_100372174;

  return withTimeout<A>(_:block:)(v3, 0x40AAD21B3B700000, 3, &unk_1004D68A8, v2, &type metadata for () + 1);
}

uint64_t sub_100372174()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_10037F53C;
  }

  else
  {

    v2 = sub_1002BCFE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100372290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v5 = type metadata accessor for Location();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Handle();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  sub_10004B564(&qword_1005B2438, &qword_1004D68B0);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[15] = v7;
  *v7 = v4;
  v7[1] = sub_100372430;

  return sub_100345BC0();
}

uint64_t sub_100372430(uint64_t a1)
{
  v3 = *v1;
  v9 = *v1;
  v3[16] = a1;

  v3[2] = a1;
  v3 += 2;
  v4 = swift_task_alloc();
  v3[15] = v4;
  v5 = sub_10004B564(&qword_1005B2428, &qword_1004D6830);
  v6 = type metadata accessor for UUID();
  v3[16] = v6;
  v7 = sub_10001DF0C(&qword_1005B2430, &qword_1005B2428, &qword_1004D6830, &protocol conformance descriptor for [A]);
  *v4 = v9;
  v4[1] = sub_1003725F8;

  return Sequence.asyncMap<A>(_:)(&unk_1004D68B8, 0, v5, v6, v7);
}

uint64_t sub_1003725F8(uint64_t a1)
{
  *(*v2 + 152) = a1;

  if (v1)
  {
  }

  else
  {

    return _swift_task_switch(sub_100372720, 0, 0);
  }
}

uint64_t sub_100372720()
{
  if (qword_1005A84C8 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    sub_10000A6F0(v1, qword_1005E0B28);
    swift_bridgeObjectRetain_n();

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    v54 = v0;
    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[16];
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v65 = v6;
      *v5 = 134218498;
      v7 = v4 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = v54[4];
      *(v5 + 4) = v7;

      *(v5 + 12) = 2082;
      v9 = Array.description.getter();
      v11 = v10;

      v12 = sub_10000D01C(v9, v11, &v65);

      *(v5 + 14) = v12;
      *(v5 + 22) = 2048;
      v13 = *(v8 + 16);

      *(v5 + 24) = v13;

      _os_log_impl(&_mh_execute_header, v2, v3, "Send locations update to clients[%ld]: %{public}s updates count:%ld", v5, 0x20u);
      sub_100004984(v6);

      v0 = v54;
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v14 = v0[4];
    if (!*(v14 + 16))
    {
      break;
    }

    v15 = v0[10];
    v16 = v14 + 64;
    v17 = -1;
    v18 = -1 << *(v14 + 32);
    if (-v18 < 64)
    {
      v17 = ~(-1 << -v18);
    }

    v19 = v17 & *(v14 + 64);
    v53 = (63 - v18) >> 6;
    v63 = (v15 + 32);
    v55 = v0[7];
    v56 = v0[10];
    v58 = (v15 + 8);
    v57 = v0[4];

    v20 = 0;
    v59 = v16;
    while (v19)
    {
      v21 = v20;
LABEL_23:
      v24 = v0[13];
      v25 = v0[8];
      v60 = v0[9];
      v61 = v0[12];
      v26 = v0[6];
      v27 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v28 = v27 | (v21 << 6);
      (*(v56 + 16))();
      (*(v55 + 16))(v25, *(v57 + 56) + *(v55 + 72) * v28, v26);
      v29 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
      v30 = *(v29 + 48);
      (*(v56 + 32))(v24, v61, v60);
      (*(v55 + 32))(v24 + v30, v25, v26);
      (*(*(v29 - 8) + 56))(v24, 0, 1, v29);
LABEL_24:
      v31 = v0[14];
      sub_1000176A8(v0[13], v31, &qword_1005B2438, &qword_1004D68B0);
      v32 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
      if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
      {
        v45 = v0[16];
        v46 = v0[4];
        v47 = v0[5];
        v48 = v0[3];

        v49 = swift_task_alloc();
        v0[20] = v49;
        v49[2] = v45;
        v49[3] = v46;
        v49[4] = v48;
        v49[5] = v47;
        v50 = swift_task_alloc();
        v0[21] = v50;
        *v50 = v0;
        v50[1] = sub_100372EF4;

        return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
      }

      (*v63)(v0[11], v0[14], v0[9]);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      v35 = os_log_type_enabled(v33, v34);
      v36 = v0[11];
      v37 = v0[9];
      if (v35)
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v65 = v39;
        *v38 = 141558275;
        *(v38 + 4) = 1752392040;
        *(v38 + 12) = 2081;
        v62 = Handle.identifier.getter();
        v41 = v40;
        (*v58)(v36, v37);
        v42 = sub_10000D01C(v62, v41, &v65);

        *(v38 + 14) = v42;
        _os_log_impl(&_mh_execute_header, v33, v34, "LocationService: send location update for handle: %{private,mask.hash}s", v38, 0x16u);
        sub_100004984(v39);
        v0 = v54;
      }

      else
      {

        (*v58)(v36, v37);
      }

      (*(v55 + 8))(v0[14] + *(v32 + 48), v0[6]);
      v16 = v59;
    }

    if (v53 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v53;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v53)
      {
        v43 = v0[13];
        v44 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
        (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
        v19 = 0;
        v20 = v23;
        goto LABEL_24;
      }

      v19 = *(v16 + 8 * v21);
      ++v20;
      if (v19)
      {
        v20 = v21;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

  v51 = v0[1];

  return v51();
}

uint64_t sub_100372EF4()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_10037303C, 0, 0);
  }
}

uint64_t sub_10037303C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003730D0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1003730F4, 0, 0);
}

uint64_t sub_1003730F4()
{
  v4 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10037F510;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t sub_1003731A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a2;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return _swift_task_switch(sub_100373254, 0, 0);
}

uint64_t sub_100373254()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_18:

    v18 = *(v0 + 8);

    return v18();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (result >= 1)
  {
    v3 = 0;
    v21 = **(v0 + 72);
    v22 = result;
    v20 = v1 & 0xC000000000000001;
    v19 = *(v0 + 80) + 32;
    while (1)
    {
      if (v20)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v19 + 8 * v3);
      }

      v7 = *(v0 + 112);
      v8 = *(v0 + 120);
      v9 = *(v0 + 88);
      v10 = type metadata accessor for TaskPriority();
      v11 = *(v10 - 8);
      v23 = *(v0 + 96);
      (*(v11 + 56))(v8, 1, 1, v10);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      v13 = (v12 + 16);
      *(v12 + 24) = 0;
      *(v12 + 32) = v6;
      *(v12 + 40) = v9;
      *(v12 + 48) = v23;
      sub_100005F04(v8, v7, &qword_1005A9690, &qword_1004C2A00);
      LODWORD(v7) = (*(v11 + 48))(v7, 1, v10);

      v14 = *(v0 + 112);
      if (v7 == 1)
      {
        sub_100002CE0(*(v0 + 112), &qword_1005A9690, &qword_1004C2A00);
        if (!*v13)
        {
          goto LABEL_14;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v11 + 8))(v14, v10);
        if (!*v13)
        {
LABEL_14:
          v15 = 0;
          v17 = 0;
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      swift_unknownObjectRelease();
LABEL_15:

      if (v17 | v15)
      {
        v4 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v17;
      }

      else
      {
        v4 = 0;
      }

      ++v3;
      v5 = *(v0 + 120);
      *(v0 + 48) = 1;
      *(v0 + 56) = v4;
      *(v0 + 64) = v21;
      swift_task_create();

      sub_100002CE0(v5, &qword_1005A9690, &qword_1004C2A00);
      if (v22 == v3)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003735B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v7[6] = swift_task_alloc();
  type metadata accessor for UUID();
  v7[7] = swift_task_alloc();
  v8 = type metadata accessor for ClientID();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v7[10] = *(v9 + 64);
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003736FC, 0, 0);
}

uint64_t sub_1003736FC(uint64_t a1)
{
  static Task<>.checkCancellation()();
  v5 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
  v2 = swift_task_alloc();
  *(v1 + 112) = v2;
  *v2 = v1;
  v2[1] = sub_100373834;
  v3 = *(v1 + 56);

  return v5(v3);
}

uint64_t sub_100373834()
{

  return _swift_task_switch(sub_100373930, 0, 0);
}

uint64_t sub_100373930()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 16);
  v16 = *(v0 + 24);
  v17 = *(v0 + 40);
  ClientID.init(xpcConnectionID:)();
  v7 = *(v3 + 16);
  *(v0 + 120) = v7;
  *(v0 + 128) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v1, v5);
  v8 = *(v3 + 80);
  *(v0 + 176) = v8;
  v9 = (v8 + 16) & ~v8;
  v10 = (v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v0 + 136) = v12;
  v13 = *(v3 + 32);
  *(v0 + 144) = v13;
  *(v0 + 152) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v13(v12 + v9, v2, v5);
  *(v12 + v10) = v6;
  *(v12 + v11) = v16;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;

  v14 = swift_task_alloc();
  *(v0 + 160) = v14;
  *v14 = v0;
  v14[1] = sub_100373AF8;

  return withTimeout<A>(_:block:)(v14, 0x8AC7230489E80000, 0, &unk_1004D68F0, v12, &type metadata for () + 1);
}

uint64_t sub_100373AF8()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100373C14;
  }

  else
  {

    v2 = sub_10037F518;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100373C14()
{
  v37 = v0;

  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B28);
  v1(v3, v2, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 64);
    v10 = *(v0 + 72);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v11 = 136446466;
    sub_10001AEBC(&qword_1005B1F10, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v35 = *(v10 + 8);
    v35(v8, v9);
    v16 = sub_10000D01C(v13, v15, &v36);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "sendToClients %{public}s error: %{public}@", v11, 0x16u);
    sub_100002CE0(v12, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v34);
  }

  else
  {
    v18 = *(v0 + 88);
    v19 = *(v0 + 64);
    v20 = *(v0 + 72);

    v35 = *(v20 + 8);
    v35(v18, v19);
  }

  v21 = *(v0 + 176);
  v22 = *(v0 + 120);
  v24 = *(v0 + 96);
  v23 = *(v0 + 104);
  v33 = *(v0 + 144);
  v25 = *(v0 + 64);
  v26 = *(v0 + 48);
  v27 = *(v0 + 32);
  v28 = *(v0 + 16);
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
  v22(v24, v23, v25);
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = v27;
  *(v30 + 5) = v28;
  v33(&v30[(v21 + 48) & ~v21], v24, v25);

  sub_1001D7F30(0, 0, v26, &unk_1004D6900, v30);

  v35(*(v0 + 104), *(v0 + 64));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100374034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for ClientID();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100374104, 0, 0);
}

uint64_t sub_100374104()
{
  v23 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[9] = sub_10000A6F0(v5, qword_1005E0B28);
  v6 = *(v3 + 16);
  v0[10] = v6;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v13 = 136446210;
    sub_10001AEBC(&qword_1005B1F10, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_10000D01C(v14, v16, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Sending location update to client %{public}s", v13, 0xCu);
    sub_100004984(v21);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[12] = v17;
  v19 = v0[3];

  return _swift_task_switch(sub_100374358, v19, 0);
}

uint64_t sub_100374358()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_10037443C;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v2, 0xD000000000000017, 0x80000001004E7EC0, sub_10037F548, v1, &type metadata for () + 1);
}

uint64_t sub_10037443C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_10037F50C;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_100374564;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100374580()
{
  v17 = v0;
  (*(v0 + 80))(*(v0 + 56), *(v0 + 16), *(v0 + 40));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 96);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  if (v3)
  {
    v15 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    sub_10001AEBC(&qword_1005B1F10, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v15(v5, v6);
    v12 = sub_10000D01C(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully sent location update to client %{public}s", v7, 0xCu);
    sub_100004984(v8);
  }

  else
  {

    v4(v5, v6);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10037477C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_10000368C;

  return sub_10035CB88(a5, a6);
}

uint64_t sub_100374828(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005E0B28);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_10000D01C(0xD000000000000022, 0x80000001004E7F60, &v20);
    *(v12 + 12) = 2048;
    *(v12 + 14) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s count:%ld", v12, 0x16u);
    sub_100004984(v13);
  }

  else
  {
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = sub_10001AEBC(&qword_1005B23E0, 255, type metadata accessor for LocationService, &unk_1004D6610);
  v16 = swift_allocObject();
  v16[2] = v2;
  v16[3] = v15;
  v16[4] = v2;
  v16[5] = a1;
  swift_retain_n();

  sub_1001D7F30(0, 0, v8, &unk_1004D67F8, v16);

  type metadata accessor for WorkItemQueue.WorkItem();
  v17 = swift_allocObject();
  v17[2] = v2;
  v17[3] = a1;
  v17[4] = v4;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100374BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = type metadata accessor for AppNotificationEvent.EventType();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100374CA4, a4, 0);
}

uint64_t sub_100374CA4()
{
  (*(v0[5] + 104))(v0[6], enum case for AppNotificationEvent.EventType.deleted(_:), v0[4]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_100374D60;
  v2 = v0[6];
  v3 = v0[3];

  return sub_100377160(v3, v2);
}

uint64_t sub_100374D60()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100374EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100374EDC, 0, 0);
}

uint64_t sub_100374EDC()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = *(v0 + 24);

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1002B4918;

  return withTimeout<A>(_:block:)(v3, 0x40AAD21B3B700000, 3, &unk_1004D6820, v2, &type metadata for () + 1);
}

uint64_t sub_100374FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v5 = type metadata accessor for Handle();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[9] = v6;
  *v6 = v4;
  v6[1] = sub_1003750E4;

  return sub_100345BC0();
}

uint64_t sub_1003750E4(uint64_t a1)
{
  v3 = *v1;
  v9 = *v1;
  v3[10] = a1;

  v3[2] = a1;
  v3 += 2;
  v4 = swift_task_alloc();
  v3[9] = v4;
  v5 = sub_10004B564(&qword_1005B2428, &qword_1004D6830);
  v6 = type metadata accessor for UUID();
  v3[10] = v6;
  v7 = sub_10001DF0C(&qword_1005B2430, &qword_1005B2428, &qword_1004D6830, &protocol conformance descriptor for [A]);
  *v4 = v9;
  v4[1] = sub_1003752AC;

  return Sequence.asyncMap<A>(_:)(&unk_1004D6828, 0, v5, v6, v7);
}

uint64_t sub_1003752AC(uint64_t a1)
{
  *(*v2 + 104) = a1;

  if (v1)
  {
  }

  else
  {

    return _swift_task_switch(sub_1003753D4, 0, 0);
  }
}

uint64_t sub_1003753D4()
{
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);
  swift_bridgeObjectRetain_n();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v46 = v6;
    *v5 = 134218498;
    if (v4 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = *(v0 + 32);
    *(v5 + 4) = v7;

    *(v5 + 12) = 2082;
    v9 = Array.description.getter();
    v11 = v10;

    v12 = sub_10000D01C(v9, v11, &v46);

    *(v5 + 14) = v12;
    *(v5 + 22) = 2048;
    v13 = *(v8 + 16);

    *(v5 + 24) = v13;

    _os_log_impl(&_mh_execute_header, v2, v3, "Send unavailable handles to clients[%ld]: %{public}s handles count:%ld", v5, 0x20u);
    sub_100004984(v6);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v14 = *(v0 + 32);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v0 + 56);
    v19 = *(v16 + 16);
    v17 = v16 + 16;
    v18 = v19;
    v44 = (v17 - 8);
    v20 = v14 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v21 = *(v17 + 56);
    v41 = v19;
    v42 = v0;
    v40 = v21;
    v19(*(v0 + 64), v20, *(v0 + 48));
    while (1)
    {
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      v30 = os_log_type_enabled(v28, v29);
      v31 = *(v0 + 64);
      v32 = *(v0 + 48);
      if (v30)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v46 = v23;
        *v22 = 141558275;
        *(v22 + 4) = 1752392040;
        *(v22 + 12) = 2081;
        v43 = Handle.identifier.getter();
        v24 = v17;
        v26 = v25;
        (*v44)(v31, v32);
        v27 = sub_10000D01C(v43, v26, &v46);
        v17 = v24;
        v0 = v42;

        *(v22 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v28, v29, "LocationService: send unavailable location update for handle: %{private,mask.hash}s", v22, 0x16u);
        sub_100004984(v23);
        v18 = v41;

        v21 = v40;
      }

      else
      {

        (*v44)(v31, v32);
      }

      v20 += v21;
      if (!--v15)
      {
        break;
      }

      v18(*(v0 + 64), v20, *(v0 + 48));
    }

    v33 = *(v0 + 80);
    v34 = *(v0 + 40);
    v35 = swift_task_alloc();
    *(v0 + 112) = v35;
    v36 = *(v0 + 24);
    *(v35 + 16) = v33;
    *(v35 + 24) = vextq_s8(v36, v36, 8uLL);
    *(v35 + 40) = v34;
    v37 = swift_task_alloc();
    *(v0 + 120) = v37;
    *v37 = v0;
    v37[1] = sub_1003758DC;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
  }

  else
  {

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_1003758DC()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_1001EDDC4, 0, 0);
  }
}

uint64_t sub_100375A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a2;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return _swift_task_switch(sub_100375AD4, 0, 0);
}

uint64_t sub_100375AD4()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_18:

    v18 = *(v0 + 8);

    return v18();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (result >= 1)
  {
    v3 = 0;
    v21 = **(v0 + 72);
    v22 = result;
    v20 = v1 & 0xC000000000000001;
    v19 = *(v0 + 80) + 32;
    while (1)
    {
      if (v20)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v19 + 8 * v3);
      }

      v7 = *(v0 + 112);
      v8 = *(v0 + 120);
      v9 = *(v0 + 88);
      v10 = type metadata accessor for TaskPriority();
      v11 = *(v10 - 8);
      v23 = *(v0 + 96);
      (*(v11 + 56))(v8, 1, 1, v10);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      v13 = (v12 + 16);
      *(v12 + 24) = 0;
      *(v12 + 32) = v6;
      *(v12 + 40) = v9;
      *(v12 + 48) = v23;
      sub_100005F04(v8, v7, &qword_1005A9690, &qword_1004C2A00);
      LODWORD(v7) = (*(v11 + 48))(v7, 1, v10);

      v14 = *(v0 + 112);
      if (v7 == 1)
      {
        sub_100002CE0(*(v0 + 112), &qword_1005A9690, &qword_1004C2A00);
        if (!*v13)
        {
          goto LABEL_14;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v11 + 8))(v14, v10);
        if (!*v13)
        {
LABEL_14:
          v15 = 0;
          v17 = 0;
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      swift_unknownObjectRelease();
LABEL_15:

      if (v17 | v15)
      {
        v4 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v17;
      }

      else
      {
        v4 = 0;
      }

      ++v3;
      v5 = *(v0 + 120);
      *(v0 + 48) = 1;
      *(v0 + 56) = v4;
      *(v0 + 64) = v21;
      swift_task_create();

      sub_100002CE0(v5, &qword_1005A9690, &qword_1004C2A00);
      if (v22 == v3)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100375E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v7[6] = swift_task_alloc();
  type metadata accessor for UUID();
  v7[7] = swift_task_alloc();
  v8 = type metadata accessor for ClientID();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v7[10] = *(v9 + 64);
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();

  return _swift_task_switch(sub_100375F7C, 0, 0);
}

uint64_t sub_100375F7C(uint64_t a1)
{
  static Task<>.checkCancellation()();
  v5 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
  v2 = swift_task_alloc();
  *(v1 + 112) = v2;
  *v2 = v1;
  v2[1] = sub_1003760B4;
  v3 = *(v1 + 56);

  return v5(v3);
}

uint64_t sub_1003760B4()
{

  return _swift_task_switch(sub_1003761B0, 0, 0);
}

uint64_t sub_1003761B0()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 16);
  v16 = *(v0 + 24);
  v17 = *(v0 + 40);
  ClientID.init(xpcConnectionID:)();
  v7 = *(v3 + 16);
  *(v0 + 120) = v7;
  *(v0 + 128) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v1, v5);
  v8 = *(v3 + 80);
  *(v0 + 176) = v8;
  v9 = (v8 + 16) & ~v8;
  v10 = (v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v0 + 136) = v12;
  v13 = *(v3 + 32);
  *(v0 + 144) = v13;
  *(v0 + 152) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v13(v12 + v9, v2, v5);
  *(v12 + v10) = v6;
  *(v12 + v11) = v16;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;

  v14 = swift_task_alloc();
  *(v0 + 160) = v14;
  *v14 = v0;
  v14[1] = sub_100376378;

  return withTimeout<A>(_:block:)(v14, 0x8AC7230489E80000, 0, &unk_1004D6860, v12, &type metadata for () + 1);
}

uint64_t sub_100376378()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_10037654C;
  }

  else
  {

    v2 = sub_100376494;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100376494()
{
  (*(v0[9] + 8))(v0[13], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10037654C()
{
  v37 = v0;

  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B28);
  v1(v3, v2, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 64);
    v10 = *(v0 + 72);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v11 = 136446466;
    sub_10001AEBC(&qword_1005B1F10, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v35 = *(v10 + 8);
    v35(v8, v9);
    v16 = sub_10000D01C(v13, v15, &v36);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "sendToClients unavailableHandles %{public}s error: %{public}@", v11, 0x16u);
    sub_100002CE0(v12, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v34);
  }

  else
  {
    v18 = *(v0 + 88);
    v19 = *(v0 + 64);
    v20 = *(v0 + 72);

    v35 = *(v20 + 8);
    v35(v18, v19);
  }

  v21 = *(v0 + 176);
  v22 = *(v0 + 120);
  v24 = *(v0 + 96);
  v23 = *(v0 + 104);
  v33 = *(v0 + 144);
  v25 = *(v0 + 64);
  v26 = *(v0 + 48);
  v27 = *(v0 + 32);
  v28 = *(v0 + 16);
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
  v22(v24, v23, v25);
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = v27;
  *(v30 + 5) = v28;
  v33(&v30[(v21 + 48) & ~v21], v24, v25);

  sub_1001D7F30(0, 0, v26, &unk_1004D6870, v30);

  v35(*(v0 + 104), *(v0 + 64));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_10037696C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for ClientID();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100376A3C, 0, 0);
}

uint64_t sub_100376A3C()
{
  v23 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[9] = sub_10000A6F0(v5, qword_1005E0B28);
  v6 = *(v3 + 16);
  v0[10] = v6;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v13 = 136446210;
    sub_10001AEBC(&qword_1005B1F10, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_10000D01C(v14, v16, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Sending unavailableHandles to client %{public}s", v13, 0xCu);
    sub_100004984(v21);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[12] = v17;
  v19 = v0[3];

  return _swift_task_switch(sub_100376C90, v19, 0);
}

uint64_t sub_100376C90()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_100376D74;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v2, 0xD00000000000001ALL, 0x80000001004E7EA0, sub_10037F544, v1, &type metadata for () + 1);
}

uint64_t sub_100376D74()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1002B7418;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_100376E9C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100376EB8()
{
  v17 = v0;
  (*(v0 + 80))(*(v0 + 56), *(v0 + 16), *(v0 + 40));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 96);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  if (v3)
  {
    v15 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    sub_10001AEBC(&qword_1005B1F10, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v15(v5, v6);
    v12 = sub_10000D01C(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully sent unavailableHandles to client %{public}s", v7, 0xCu);
    sub_100004984(v8);
  }

  else
  {

    v4(v5, v6);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1003770B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100003690;

  return sub_10035CB88(a5, a6);
}

uint64_t sub_100377160(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for AppNotificationEvent();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for AppNotificationEvent.EventType();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = type metadata accessor for Handle();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = _s20PersonLocationEntityVMa(0);
  v3[14] = v7;
  v8 = swift_task_alloc();
  v3[15] = v8;
  v9 = sub_10001AEBC(&qword_1005A8E50, 255, _s20PersonLocationEntityVMa, &unk_1004C2098);
  v3[16] = v9;
  *v8 = v3;
  v8[1] = sub_100377364;

  return static AppEntity.isObserved()(v7, v9);
}

uint64_t sub_100377364(char a1)
{
  v4 = *v2;
  *(v4 + 136) = v1;

  v5 = *(v4 + 32);
  if (v1)
  {
    v6 = sub_100377BD4;
  }

  else
  {
    *(v4 + 144) = a1 & 1;
    v6 = sub_1003774A4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003774A4()
{
  v66 = v0;
  if (*(v0 + 144) == 1)
  {
    v1 = *(*(v0 + 16) + 16);
    if (v1)
    {
      v2 = 0;
      v3 = *(v0 + 96);
      v63 = (v3 + 8);
      v64 = (v3 + 16);
      v4 = _swiftEmptyArrayStorage;
      v61 = v3;
      v62 = v0;
      do
      {
        v60 = v4;
        while (1)
        {
          if (v2 >= v1)
          {
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          v5 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_39;
          }

          v6 = *(v0 + 16) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2;
          v7 = Handle.serverID.getter();
          if (v8)
          {
            break;
          }

          if (qword_1005A7EA8 != -1)
          {
            swift_once();
          }

          v9 = *(v0 + 104);
          v10 = *(v0 + 88);
          v11 = type metadata accessor for Logger();
          sub_10000A6F0(v11, qword_1005DFAB8);
          (*v64)(v9, v6, v10);
          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.default.getter();
          v14 = os_log_type_enabled(v12, v13);
          v15 = *(v0 + 104);
          v16 = *(v0 + 88);
          if (v14)
          {
            v17 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            *v17 = 136446723;
            *(v17 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E7F20, &v65);
            *(v17 + 12) = 2160;
            *(v17 + 14) = 1752392040;
            *(v17 + 22) = 2085;
            v18 = Handle.identifier.getter();
            v19 = v1;
            v21 = v20;
            (*v63)(v15, v16);
            v22 = v18;
            v5 = v2 + 1;
            v23 = sub_10000D01C(v22, v21, &v65);
            v1 = v19;

            *(v17 + 24) = v23;
            _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: No serverID for user: %{sensitive,mask.hash}s", v17, 0x20u);
            swift_arrayDestroy();

            v3 = v61;
            v0 = v62;
          }

          else
          {

            (*v63)(v15, v16);
          }

          ++v2;
          if (v5 == v1)
          {
            v4 = v60;
            goto LABEL_26;
          }
        }

        v24 = v8;
        v25 = v7;
        v26 = v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_1001FC900(0, *(v60 + 2) + 1, 1, v60);
        }

        v28 = *(v60 + 2);
        v27 = *(v60 + 3);
        if (v28 >= v27 >> 1)
        {
          v4 = sub_1001FC900((v27 > 1), v28 + 1, 1, v60);
          v30 = v24;
          v29 = v25;
        }

        else
        {
          v29 = v25;
          v30 = v24;
          v4 = v60;
        }

        *(v4 + 2) = v28 + 1;
        v31 = &v4[16 * v28];
        *(v31 + 4) = v29;
        *(v31 + 5) = v30;
        v2 = v26;
      }

      while (v26 != v1);
LABEL_26:
      if (!*(v4 + 2))
      {
        goto LABEL_32;
      }
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
      if (!_swiftEmptyArrayStorage[2])
      {
LABEL_32:

        goto LABEL_35;
      }
    }

    v37 = v4;
    if (qword_1005A7EA8 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 72);
    v38 = *(v0 + 80);
    v40 = *(v0 + 64);
    v41 = *(v0 + 24);
    v42 = type metadata accessor for Logger();
    sub_10000A6F0(v42, qword_1005DFAB8);
    (*(v39 + 16))(v38, v41, v40);
    swift_bridgeObjectRetain_n();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    v45 = os_log_type_enabled(v43, v44);
    v47 = *(v0 + 72);
    v46 = *(v0 + 80);
    v48 = *(v0 + 64);
    if (v45)
    {
      v49 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v49 = 136446722;
      *(v49 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E7F20, &v65);
      *(v49 + 12) = 2080;
      v50 = AppNotificationEvent.EventType.rawValue.getter();
      v52 = v51;
      (*(v47 + 8))(v46, v48);
      v53 = sub_10000D01C(v50, v52, &v65);

      *(v49 + 14) = v53;
      *(v49 + 22) = 2050;
      v54 = *(v37 + 2);

      *(v49 + 24) = v54;

      _os_log_impl(&_mh_execute_header, v43, v44, "%{public}s: PersonLocationEntity sending %s for %{public}ld clients", v49, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      swift_bridgeObjectRelease_n();

      (*(v47 + 8))(v46, v48);
    }

    v56 = *(v0 + 48);
    v55 = *(v0 + 56);
    v57 = *(v0 + 40);
    static AppEntity.notificationEvent(for:identifiers:)();

    AppNotificationEvent.send()();
    (*(v56 + 8))(v55, v57);
  }

  else
  {
    if (qword_1005A7EA8 != -1)
    {
LABEL_40:
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000A6F0(v32, qword_1005DFAB8);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v65 = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E7F20, &v65);
      _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s: PersonLocationEntity not observed", v35, 0xCu);
      sub_100004984(v36);
    }
  }

LABEL_35:

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_100377BD4()
{
  v11 = v0;
  if (qword_1005A7EA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFAB8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E7F20, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Error: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100377DF8()
{

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated15LocationService_serviceDescription, &qword_1005B09F8, &qword_1004D23A8);

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated15LocationService_dataManagerStateStream, &qword_1005B0F00, &qword_1004D2F00);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100377F28()
{
  sub_100377DF8();

  return _swift_defaultActor_deallocate(v0);
}

void sub_100377F5C(uint64_t a1)
{
  sub_10024D88C(319);
  if (v1 <= 0x3F)
  {
    sub_1002B76C8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1003780A4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LocationService(0);
  *v4 = v2;
  v4[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100378150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for LocationService(0);
  *v8 = v4;
  v8[1] = sub_10000368C;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100378218(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LocationService(0);
  *v4 = v2;
  v4[1] = sub_10000368C;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_1003782C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_100347334();
}

uint64_t sub_100378350()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1003486C8();
}

uint64_t sub_1003783DC()
{
  type metadata accessor for LocationService(0);
  sub_10001AEBC(&qword_1005A9308, 255, type metadata accessor for LocationService, &unk_1004D65B0);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_10037857C(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsStewie.ServiceState() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_10034178C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100378680(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsStewie.ServiceState() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_100341D60(a1, v6, v7, v1 + v5);
}

uint64_t sub_100378770(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_100378888, v2, 0);
}

uint64_t sub_100378888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[5];
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    v3[6] = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3[6] = v5;
    if (v5)
    {
LABEL_3:
      if (v5 < 1)
      {
        __break(1u);
      }

      else
      {
        v6 = v3[5];
        v3[7] = 0;
        if ((v6 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v7 = *(v6 + 32);
        }

        v3[8] = v7;
        v5 = sub_100378994;
        a2 = v7;
        a3 = 0;
      }

      return _swift_task_switch(v5, a2, a3);
    }
  }

  v8 = v3[1];

  return v8();
}

uint64_t sub_100378994()
{
  v1 = v0[8];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100378A84;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v4, 0xD00000000000001DLL, 0x80000001004E7E80, sub_10037F54C, v3, &type metadata for () + 1);
}

uint64_t sub_100378A84()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_100378CA8;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_100378BA8;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100378BC4()
{

  v1 = v0[7] + 1;
  if (v1 == v0[6])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[7] = v1;
    v4 = v0[5];
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v4 + 8 * v1 + 32);
    }

    v0[8] = v5;

    return _swift_task_switch(sub_100378994, v5, 0);
  }
}

uint64_t sub_100378CA8()
{
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_100378D14, v1, 0);
}

uint64_t sub_100378D14()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB98);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Error updating Stewie service state: %@", v4, 0xCu);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v7 = v0[7] + 1;
  if (v7 == v0[6])
  {

    v8 = v0[1];

    return v8();
  }

  else
  {
    v0[7] = v7;
    v10 = v0[5];
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(v10 + 8 * v7 + 32);
    }

    v0[8] = v11;

    return _swift_task_switch(sub_100378994, v11, 0);
  }
}

uint64_t sub_100378F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a3;
  v23 = a1;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v13 - 8);
  v15 = &v20 - v14;
  v21 = &v20 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v11 + 16))(&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v10);
  v17 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a2;
  *(v18 + 5) = v22;
  *(v18 + 6) = a4;
  *(v18 + 7) = a5;
  (*(v11 + 32))(&v18[v17], &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *&v18[(v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8] = v23;

  sub_1001D7F30(0, 0, v21, &unk_1004D6A50, v18);
}

uint64_t sub_100379198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v10;
  v8[6] = a5;
  v8[7] = a7;
  v8[5] = a4;
  return _swift_task_switch(sub_1003791C8, a4, 0);
}

uint64_t sub_1003791C8()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = OBJC_IVAR____TtC13findmylocated15LocationService_inFlightLatestLocationTasks;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v5 + v6);
  *(v5 + v6) = 0x8000000000000000;
  sub_100454828(v4, v1, v3, v2, isUniquelyReferenced_nonNull_native);
  *(v5 + v6) = v10;
  swift_endAccess();
  v8 = v0[1];

  return v8();
}

uint64_t sub_100379318(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_10034302C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003793E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1003434A8(a1, v4, v5, v6);
}

unint64_t sub_100379494()
{
  result = qword_1005B2408;
  if (!qword_1005B2408)
  {
    sub_10004B610(&qword_1005B2400, &qword_1004D67B8);
    sub_10001AEBC(&qword_1005AE858, 255, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B2408);
  }

  return result;
}

uint64_t sub_10037958C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_100342308(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100379654()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10037969C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_100342784(a1, v4, v5, v6);
}

unint64_t sub_100379750()
{
  result = qword_1005B2410;
  if (!qword_1005B2410)
  {
    sub_10004B610(&qword_1005B04E8, &qword_1004D67E0);
    sub_10001AEBC(&qword_1005AE858, 255, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
    sub_10001AEBC(&qword_1005B2418, 255, &type metadata accessor for Location, &protocol conformance descriptor for Location);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B2410);
  }

  return result;
}

void *sub_10037984C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_100338CD8(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

unint64_t *sub_1003798DC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_10037E020(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_100379978(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_100374BE0(a1, v4, v5, v7, v6);
}

uint64_t sub_100379A38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100003690;

  return sub_100374EB8(v2, v3, v4);
}

uint64_t sub_100379AE0(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_100379B04, 0, 0);
}

uint64_t sub_100379B04()
{
  v14 = v0;
  if (*(v0 + 24))
  {
    swift_errorRetain();
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 16);
    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0B28);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    sub_1002BC5B4(v1, 1);
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 16);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v7 = 136446466;
      *(v7 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004E7F90, &v13);
      *(v7 + 12) = 2114;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v10;
      *v8 = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error: %{public}@", v7, 0x16u);
      sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);

      sub_100004984(v9);

      sub_1002BC5B4(v6, 1);
    }

    else
    {

      sub_1002BC5B4(v6, 1);
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100379D28(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_100379D4C, 0, 0);
}

uint64_t sub_100379D4C()
{
  v14 = v0;
  if (*(v0 + 24))
  {
    swift_errorRetain();
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 16);
    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0B28);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    sub_1002BC5B4(v1, 1);
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 16);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v7 = 136446466;
      *(v7 + 4) = sub_10000D01C(0xD000000000000022, 0x80000001004E7F60, &v13);
      *(v7 + 12) = 2114;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v10;
      *v8 = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error: %{public}@", v7, 0x16u);
      sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);

      sub_100004984(v9);

      sub_1002BC5B4(v6, 1);
    }

    else
    {

      sub_1002BC5B4(v6, 1);
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100379F70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_100374FF0(a1, v4, v5, v6);
}

uint64_t sub_10037A024(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000368C;

  return sub_100375A24(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10037A0EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_100375E34(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10037A1C0(uint64_t a1)
{
  v4 = *(type metadata accessor for ClientID() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_10037696C(a1, v1 + v5, v7, v8);
}

uint64_t sub_10037A2F4(uint64_t a1)
{
  v4 = *(type metadata accessor for ClientID() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_1003770B4(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_10037A3F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10037A440(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_100371C78(a1, v4, v5, v7, v6);
}

uint64_t sub_10037A500()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_10037203C(v2, v3, v4);
}

uint64_t sub_10037A5A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_100372290(a1, v4, v5, v6);
}

uint64_t sub_10037A65C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000368C;

  return sub_1003731A4(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10037A724(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  swift_unknownObjectRelease();

  a1(*(v3 + 40));
  a2(*(v3 + 48));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_10037A798(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_1003735B4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10037A86C()
{
  v1 = type metadata accessor for ClientID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10037A928(uint64_t a1)
{
  v4 = *(type metadata accessor for ClientID() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_100374034(a1, v1 + v5, v7, v8);
}

uint64_t sub_10037AA5C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10037AB38(uint64_t a1)
{
  v4 = *(type metadata accessor for ClientID() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_10037477C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_10037AC3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v83 = a5;
  v81 = a6;
  v82 = a4;
  Priority = type metadata accessor for LocatePriority();
  v77 = *(Priority - 8);
  v78 = Priority;
  __chkstk_darwin(Priority);
  v76 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004B564(&qword_1005B0690, &qword_1004D2018);
  __chkstk_darwin(v11 - 8);
  v13 = &v69 - v12;
  v14 = type metadata accessor for Handle();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v80 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v79 = &v69 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v69 - v21;
  __chkstk_darwin(v20);
  v24 = &v69 - v23;
  swift_beginAccess();
  v25 = *a2;
  if (*(*a2 + 16) && (v26 = sub_1001FD93C(a1), (v27 & 1) != 0))
  {
    v75 = a1;
    v87 = *(*(v25 + 56) + 8 * v26);
    swift_endAccess();

    sub_1001AD0DC(a3, v13);
    sub_100002CE0(v13, &qword_1005B0690, &qword_1004D2018);
    v28 = v87;
    if (*(v87 + 16))
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = *a2;
      *a2 = 0x8000000000000000;
      sub_100454A28(v28, v75, isUniquelyReferenced_nonNull_native);
      *a2 = v85;
    }

    else
    {

      if (qword_1005A84C8 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_10000A6F0(v36, qword_1005E0B28);
      v38 = v76;
      v37 = v77;
      v39 = v78;
      (*(v77 + 16))(v76, v82, v78);
      v40 = v75;
      v73 = *(v15 + 16);
      v74 = v15 + 16;
      v73(v22, v75, v14);
      v41 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v72))
      {
        v42 = swift_slowAlloc();
        v70 = v14;
        v43 = v37;
        v44 = v42;
        v71 = swift_slowAlloc();
        v86[0] = v71;
        *v44 = 136446979;
        *(v44 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E8110, v86);
        *(v44 + 12) = 2082;
        sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
        v69 = v41;
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v46;
        (*(v43 + 8))(v38, v39);
        v48 = sub_10000D01C(v45, v47, v86);
        v40 = v75;

        *(v44 + 14) = v48;
        *(v44 + 22) = 2160;
        *(v44 + 24) = 1752392040;
        *(v44 + 32) = 2081;
        v49 = Handle.identifier.getter();
        v51 = v50;
        v52 = v22;
        v53 = v70;
        (*(v15 + 8))(v52, v70);
        v54 = sub_10000D01C(v49, v51, v86);

        *(v44 + 34) = v54;
        v55 = v69;
        _os_log_impl(&_mh_execute_header, v69, v72, "%{public}s no more active session for %{public}s handle: %{private,mask.hash}s. Need to unsubscribe.", v44, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        (*(v15 + 8))(v22, v14);
        (*(v37 + 8))(v38, v39);
        v53 = v14;
      }

      v56 = v79;
      v73(v79, v40, v53);
      v57 = v83;
      v58 = *v83;
      v59 = swift_isUniquelyReferenced_nonNull_native();
      *v57 = v58;
      if ((v59 & 1) == 0)
      {
        v58 = sub_1001FCA0C(0, v58[2] + 1, 1, v58);
        *v57 = v58;
      }

      v61 = v58[2];
      v60 = v58[3];
      if (v61 >= v60 >> 1)
      {
        v58 = sub_1001FCA0C((v60 > 1), v61 + 1, 1, v58);
        *v57 = v58;
      }

      v58[2] = v61 + 1;
      (*(v15 + 32))(v58 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v61, v56, v53);
      v62 = v80;
      v73(v80, v40, v53);
      swift_beginAccess();
      sub_1001466E8(0, v62);
    }

    swift_endAccess();
    swift_beginAccess();
    v63 = *a2;
    v64 = a2[1];
    v65 = a2[2];
    v66 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
    v67 = v81;
    swift_beginAccess();

    v68 = swift_isUniquelyReferenced_nonNull_native();
    v84 = *(v67 + v66);
    *(v67 + v66) = 0x8000000000000000;
    sub_100454430(v63, v64, v65, v82, v68);
    *(v67 + v66) = v84;
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    (*(v15 + 16))(v24, a1, v14);
    v30 = v83;
    v31 = *v83;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *v30 = v31;
    if ((v32 & 1) == 0)
    {
      v31 = sub_1001FCA0C(0, v31[2] + 1, 1, v31);
      *v30 = v31;
    }

    v34 = v31[2];
    v33 = v31[3];
    if (v34 >= v33 >> 1)
    {
      v31 = sub_1001FCA0C((v33 > 1), v34 + 1, 1, v31);
      *v30 = v31;
    }

    v31[2] = v34 + 1;
    return (*(v15 + 32))(v31 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v34, v24, v14);
  }
}

void sub_10037B458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Handle();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = __chkstk_darwin(v4);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = &v44 - v7;
  v54 = type metadata accessor for Friend();
  v8 = *(v54 - 8);
  v9 = __chkstk_darwin(v54);
  v53 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = &v44 - v11;
  Priority = type metadata accessor for LocatePriority();
  v13 = *(Priority - 8);
  __chkstk_darwin(Priority);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000A6F0(v16, qword_1005E0B28);
  (*(v13 + 16))(v15, a2, Priority);
  v17 = *(v8 + 16);
  v18 = v54;
  v17(v52, a1, v54);
  v17(v53, a1, v18);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v46 = v19;
    v22 = v21;
    v47 = swift_slowAlloc();
    v55 = v47;
    *v22 = 136447235;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
    v45 = v20;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v13 + 8))(v15, Priority);
    v26 = sub_10000D01C(v23, v25, &v55);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2160;
    *(v22 + 14) = 1752392040;
    *(v22 + 22) = 2081;
    v27 = v48;
    v28 = v52;
    Friend.handle.getter();
    v29 = Handle.identifier.getter();
    v31 = v30;
    v32 = v51;
    v44 = *(v50 + 8);
    v44(v27, v51);
    v50 = *(v8 + 8);
    v33 = v54;
    (v50)(v28, v54);
    v34 = sub_10000D01C(v29, v31, &v55);

    *(v22 + 24) = v34;
    *(v22 + 32) = 2160;
    *(v22 + 34) = 1752392040;
    *(v22 + 42) = 2081;
    v35 = v49;
    v36 = v53;
    Friend.handle.getter();
    v37 = Handle.serverID.getter();
    v39 = v38;
    v44(v35, v32);
    if (!v39)
    {
      v37 = 7104878;
      v39 = 0xE300000000000000;
    }

    (v50)(v36, v33);
    v40 = sub_10000D01C(v37, v39, &v55);

    *(v22 + 44) = v40;
    v41 = v46;
    _os_log_impl(&_mh_execute_header, v46, v45, "Unsubscribing %{public}s friend: %{private,mask.hash}s serverID: %{private,mask.hash}s", v22, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v42 = *(v8 + 8);
    v43 = v54;
    v42(v53, v54);
    v42(v52, v43);
    (*(v13 + 8))(v15, Priority);
  }
}

uint64_t sub_10037B9E8(uint64_t a1)
{
  if ((a1 - 1) >= 0xE)
  {
    return 14;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_10037B9FC()
{
  sub_1004BA244(0xD000000000000021);
  if (v1)
  {
    return 10;
  }

  v2 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B28);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "Using maxNumberOfResubscriptionsAllowed from defaults: %ld", v6, 0xCu);
  }

  return v2;
}

uint64_t sub_10037BB10(uint64_t a1)
{
  if ((a1 - 1) >= 0x13)
  {
    return 19;
  }

  else
  {
    return a1 - 1;
  }
}

void sub_10037BB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v137 = a3;
  v110 = a1;
  v4 = sub_10004B564(&qword_1005AC640, &qword_1004C6EE0);
  __chkstk_darwin(v4 - 8);
  v108 = v107 - v5;
  v115 = type metadata accessor for Handle();
  v134 = *(v115 - 8);
  __chkstk_darwin(v115);
  v117 = v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v7 - 8);
  v138 = v107 - v8;
  v9 = type metadata accessor for Date();
  v132 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v128 = v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v133 = v107 - v13;
  __chkstk_darwin(v12);
  v15 = v107 - v14;
  v143 = type metadata accessor for Friend();
  v16 = *(v143 - 8);
  v17 = __chkstk_darwin(v143);
  v111 = v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v136 = v107 - v20;
  __chkstk_darwin(v19);
  v142 = v107 - v21;
  v22 = type metadata accessor for SecureLocation(0);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = (v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v27 = (v107 - v26);
  v139 = type metadata accessor for Location();
  v28 = *(v139 - 8);
  v29 = __chkstk_darwin(v139);
  v109 = v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v127 = v107 - v32;
  __chkstk_darwin(v31);
  v34 = v107 - v33;
  v35 = a2;
  v145 = a2;
  v36 = v137;

  v37 = v141;
  v38 = sub_100026ABC(sub_10037CB94, v144, v36);
  v126 = *(v38 + 2);
  if (v126)
  {
    v107[1] = v37;
    sub_10037EC58(v35, v27, type metadata accessor for SecureLocation);
    sub_100055ECC(v27, v34);
    v39 = 0;
    v137 = v16 + 16;
    v129 = (v132 + 6);
    v125 = (v132 + 4);
    v141 = (v132 + 1);
    v130 = (v28 + 16);
    v122 = (v132 + 2);
    v132 = (v16 + 8);
    v107[0] = v28;
    v131 = (v28 + 8);
    v113 = "cationsForHandles:)";
    v114 = (v134 + 8);
    *&v40 = 136447747;
    v112 = v40;
    v116 = v34;
    v41 = v38;
    v140 = v9;
    v124 = v16;
    v135 = v15;
    v123 = v38;
    while (1)
    {
      if (v39 >= *(v41 + 2))
      {
        __break(1u);
        goto LABEL_25;
      }

      v43 = &v41[(*(v16 + 80) + 32) & ~*(v16 + 80)];
      v44 = *(v16 + 72);
      v134 = v39;
      v28 = *(v16 + 16);
      (v28)(v142, &v43[v44 * v39], v143);
      v45 = v138;
      Friend.createdAt.getter();
      if ((*v129)(v45, 1, v9) == 1)
      {

        sub_100002CE0(v138, &unk_1005AE5B0, &qword_1004C32F0);
        goto LABEL_18;
      }

      (*v125)(v15, v138, v9);
      v46 = v133;
      Location.date.getter();
      v47 = static Date.< infix(_:_:)();
      v48 = v9;
      v49 = *v141;
      (*v141)(v46, v48);
      if ((v47 & 1) == 0)
      {
        break;
      }

      v50 = v130;
      if (qword_1005A84C8 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_10000A6F0(v51, qword_1005E0B28);
      v52 = v127;
      (*v50)(v127, v34, v139);
      (v28)(v136, v142, v143);
      v53 = v128;
      v15 = v135;
      v54 = v140;
      (*v122)(v128, v135, v140);
      v28 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v55))
      {
        v56 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v146 = v120;
        *v56 = v112;
        *(v56 + 4) = sub_10000D01C(0xD000000000000035, v113 | 0x8000000000000000, &v146);
        *(v56 + 12) = 2160;
        *(v56 + 14) = 1752392040;
        *(v56 + 22) = 2081;
        v57 = v133;
        v119 = v55;
        Location.date.getter();
        v58 = Date.localISO8601.getter();
        v59 = v54;
        v61 = v60;
        v49(v57, v59);
        v121 = *v131;
        v121(v52, v139);
        v62 = sub_10000D01C(v58, v61, &v146);

        *(v56 + 24) = v62;
        *(v56 + 32) = 2160;
        *(v56 + 34) = 1752392040;
        *(v56 + 42) = 2081;
        v63 = v117;
        v64 = v136;
        Friend.handle.getter();
        v65 = Handle.identifier.getter();
        v67 = v66;
        (*v114)(v63, v115);
        v118 = *v132;
        v118(v64, v143);
        v68 = sub_10000D01C(v65, v67, &v146);

        *(v56 + 44) = v68;
        *(v56 + 52) = 2160;
        *(v56 + 54) = 1752392040;
        *(v56 + 62) = 2081;
        v69 = Date.localISO8601.getter();
        v71 = v70;
        v72 = v140;
        v49(v53, v140);
        v73 = sub_10000D01C(v69, v71, &v146);

        *(v56 + 64) = v73;
        _os_log_impl(&_mh_execute_header, v28, v119, "%{public}s\ndrop older location with date: %{private,mask.hash}s\nfor handle:%{private,mask.hash}s\nwith creationDate:%{private,mask.hash}s", v56, 0x48u);
        v27 = v120;
        swift_arrayDestroy();

        v34 = v116;

        v49(v135, v72);
        v118(v142, v143);
        v15 = v135;
      }

      else
      {

        v49(v53, v54);
        v28 = v132;
        v27 = *v132;
        v42 = v143;
        (*v132)(v136, v143);
        v121 = *v131;
        v121(v52, v139);
        v49(v15, v54);
        v27(v142, v42);
      }

      v16 = v124;
      v39 = v134 + 1;
      v9 = v140;
      v41 = v123;
      if (v126 == v134 + 1)
      {
        v121(v34, v139);

        return;
      }
    }

    v49(v135, v140);

LABEL_18:
    v82 = v107[0];
    v83 = v117;
    Friend.handle.getter();
    v27 = *(v82 + 16);
    v84 = v108;
    v9 = v116;
    v85 = v139;
    (v27)(v108, v116, v139);
    (*(v82 + 56))(v84, 0, 1, v85);
    sub_100145824(v84, v83);
    v41 = v111;
    if (qword_1005A84C8 == -1)
    {
      goto LABEL_19;
    }

LABEL_25:
    swift_once();
LABEL_19:
    v86 = type metadata accessor for Logger();
    sub_10000A6F0(v86, qword_1005E0B28);
    (v28)(v41, v142, v143);
    v87 = v109;
    (v27)(v109, v9, v139);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = v87;
      v91 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v146 = v141;
      *v91 = 136447235;
      *(v91 + 4) = sub_10000D01C(0xD000000000000035, v113 | 0x8000000000000000, &v146);
      *(v91 + 12) = 2160;
      *(v91 + 14) = 1752392040;
      v92 = v139;
      *(v91 + 22) = 2081;
      v93 = v117;
      LODWORD(v138) = v89;
      Friend.handle.getter();
      v94 = Handle.identifier.getter();
      v96 = v95;
      (*v114)(v93, v115);
      v140 = *v132;
      v140(v41, v143);
      v97 = sub_10000D01C(v94, v96, &v146);

      *(v91 + 24) = v97;
      *(v91 + 32) = 2160;
      *(v91 + 34) = 1752392040;
      *(v91 + 42) = 2081;
      sub_10001AEBC(&qword_1005B2448, 255, &type metadata accessor for Location, &protocol conformance descriptor for Location);
      v98 = dispatch thunk of CustomStringConvertible.description.getter();
      v100 = v99;
      v101 = *v131;
      (*v131)(v90, v92);
      v102 = sub_10000D01C(v98, v100, &v146);

      *(v91 + 44) = v102;
      _os_log_impl(&_mh_execute_header, v88, v138, "%{public}s mappedLocation:\nhandle: %{private,mask.hash}s\nlocation: %{private,mask.hash}s", v91, 0x34u);
      swift_arrayDestroy();

      v140(v142, v143);
      v101(v116, v92);
    }

    else
    {

      v103 = *v131;
      v104 = v139;
      (*v131)(v87, v139);
      v105 = *v132;
      v106 = v143;
      (*v132)(v41, v143);
      v105(v142, v106);
      v103(v9, v104);
    }
  }

  else
  {

    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    sub_10000A6F0(v74, qword_1005E0B28);
    sub_10037EC58(v35, v25, type metadata accessor for SecureLocation);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v146 = v78;
      *v77 = 141558275;
      *(v77 + 4) = 1752392040;
      *(v77 + 12) = 2081;
      v79 = *v25;
      v80 = v25[1];

      sub_10037EBF8(v25, type metadata accessor for SecureLocation);
      v81 = sub_10000D01C(v79, v80, &v146);

      *(v77 + 14) = v81;
      _os_log_impl(&_mh_execute_header, v75, v76, "Skipping unknown handle for ID: %{private,mask.hash}s", v77, 0x16u);
      sub_100004984(v78);
    }

    else
    {

      sub_10037EBF8(v25, type metadata accessor for SecureLocation);
    }
  }
}

uint64_t sub_10037CBD4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ClientID() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000368C;

  return sub_10036D01C(a1, v7, v8, v9, v10, v1 + v6);
}

void sub_10037CD0C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, ...)
{
  v36 = a4;
  v37 = a1;
  v38 = a3;
  v5 = type metadata accessor for Handle();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Priority = type metadata accessor for LocatePriority();
  v8 = *(Priority - 8);
  __chkstk_darwin(Priority);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ClientID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000A6F0(v15, qword_1005E0B28);
  (*(v12 + 16))(v14, a2, v11);
  (*(v8 + 16))(v10, v38, Priority);
  (*(v40 + 16))(v39, v37, v5);
  v16 = Logger.logObject.getter();
  LODWORD(v38) = static os_log_type_t.default.getter();
  v17 = (v12 + 8);
  if (os_log_type_enabled(v16, v38))
  {
    v18 = swift_slowAlloc();
    v35 = v5;
    v19 = v18;
    v37 = swift_slowAlloc();
    v41 = v37;
    *v19 = 136315907;
    sub_10001AEBC(&qword_1005B1F10, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
    v34 = v16;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*v17)(v14, v11);
    v23 = sub_10000D01C(v20, v22, &v41);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v8 + 8))(v10, Priority);
    v27 = sub_10000D01C(v24, v26, &v41);

    *(v19 + 14) = v27;
    *(v19 + 22) = 2160;
    *(v19 + 24) = 1752392040;
    *(v19 + 32) = 2081;
    v28 = v39;
    v29 = Handle.identifier.getter();
    v31 = v30;
    (*(v40 + 8))(v28, v35);
    v32 = sub_10000D01C(v29, v31, &v41);

    *(v19 + 34) = v32;
    v33 = v34;
    _os_log_impl(&_mh_execute_header, v34, v38, v36, v19, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v40 + 8))(v39, v5);
    (*(v8 + 8))(v10, Priority);
    (*v17)(v14, v11);
  }
}

void sub_10037D208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v34 = a2;
  Priority = type metadata accessor for LocatePriority();
  v7 = *(Priority - 8);
  __chkstk_darwin(Priority);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Handle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005E0B28);
  (*(v11 + 16))(v13, a1, v10);
  (*(v7 + 16))(v9, a4, Priority);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = v33;
    *v17 = 141558787;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    v32 = v15;
    v18 = Handle.identifier.getter();
    v31 = v16;
    v20 = v19;
    (*(v11 + 8))(v13, v10);
    v21 = sub_10000D01C(v18, v20, &v36);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2082;
    v22 = Duration.description.getter();
    v24 = sub_10000D01C(v22, v23, &v36);

    *(v17 + 24) = v24;
    *(v17 + 32) = 2082;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v7 + 8))(v9, Priority);
    v28 = sub_10000D01C(v25, v27, &v36);

    *(v17 + 34) = v28;
    v29 = v32;
    _os_log_impl(&_mh_execute_header, v32, v31, "Scheduling resubscription for %{private,mask.hash}s after %{public}s priority: %{public}s", v17, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v7 + 8))(v9, Priority);
    (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_10037D5EC(uint64_t a1)
{
  v3 = *(type metadata accessor for LocatePriority() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000368C;

  return sub_10036A648(a1, v5, v6, v7, v8, v1 + v4, v10, v11);
}

uint64_t sub_10037D748()
{
  v2 = *(type metadata accessor for LocatePriority() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v4);
  v8 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10000368C;

  return sub_10036AC10(v5, v6, v0 + v3, v7, v8);
}

uint64_t sub_10037D884(uint64_t a1, char a2)
{
  v6 = *(type metadata accessor for LocatePriority() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000368C;

  return sub_10036BD2C(a1, a2 & 1, v2 + v7, v8);
}

uint64_t sub_10037D9AC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10037DA80()
{
  v2 = *(type metadata accessor for LocatePriority() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_10036C9D4(v4, v5, v0 + v3);
}

uint64_t sub_10037DB5C(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_10037DB74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_100345214(a1);
}

uint64_t sub_10037DC3C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000368C;

  return sub_100359074(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10037DD04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_10035A140(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10037DDEC(uint64_t a1, uint64_t a2)
{
  sub_10004B564(&qword_1005B2490, &unk_1004D6A28);

  return sub_10037166C(a1, a2);
}

uint64_t sub_10037DE9C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000368C;

  return sub_100355BBC(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_10037DFD4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10037E020(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v46 = a4;
  v35 = a1;
  v45 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
  __chkstk_darwin(v45);
  v6 = &v34 - v5;
  v54 = type metadata accessor for Location();
  v7 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Handle();
  v10 = *(v9 - 8);
  result = __chkstk_darwin(v9);
  v52 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v49 = a3;
  v14 = *(a3 + 64);
  v38 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v36 = 0;
  v37 = (v15 + 63) >> 6;
  v42 = v10 + 16;
  v43 = v6;
  v40 = v7 + 16;
  v41 = v10;
  v44 = v7;
  v47 = (v10 + 8);
  v48 = (v7 + 8);
LABEL_5:
  while (v17)
  {
    v18 = __clz(__rbit64(v17));
    v51 = (v17 - 1) & v17;
LABEL_12:
    v21 = v18 | (v13 << 6);
    v22 = v49;
    v23 = *(v10 + 72);
    v24 = v49[6] + v23 * v21;
    v50 = *(v10 + 16);
    v50(v52, v24, v9);
    v25 = v22[7];
    v26 = *(v44 + 72);
    v39 = v21;
    v27 = *(v44 + 16);
    v28 = v53;
    v29 = v54;
    v27(v53, v25 + v26 * v21, v54);
    v30 = v43;
    (v50)(v43);
    v10 = v41;
    v27((v30 + *(v45 + 48)), v28, v29);
    v31 = v46;
    v32 = *(v46 + 16) + 1;
    do
    {
      if (!--v32)
      {
        sub_100002CE0(v30, &qword_1005B2440, &qword_1004D68C0);
        (*v48)(v53, v54);
        result = (*v47)(v52, v9);
        v17 = v51;
        goto LABEL_5;
      }

      sub_10001AEBC(&qword_1005A91B8, 255, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      v31 += v23;
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
    sub_100002CE0(v30, &qword_1005B2440, &qword_1004D68C0);
    (*v48)(v53, v54);
    result = (*v47)(v52, v9);
    v17 = v51;
    *(v35 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
    if (__OFADD__(v36++, 1))
    {
      __break(1u);
      return sub_10023E060(v35, v34, v36, v49);
    }
  }

  v19 = v13;
  while (1)
  {
    v13 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v13 >= v37)
    {
      return sub_10023E060(v35, v34, v36, v49);
    }

    v20 = *(v38 + 8 * v13);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v51 = (v20 - 1) & v20;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10037E49C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_1003798DC(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_10037E020((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_10037E65C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v57 = a5;
  v9 = type metadata accessor for Location();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v49 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Handle();
  v12 = *(v48 - 8);
  __chkstk_darwin(v48);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004B564(&qword_1005B2480, &qword_1004D69F0);
  __chkstk_darwin(v15 - 8);
  v17 = v42 - v16;
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v50 = a1;
  v51 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v52 = v19;
  v53 = 0;
  v54 = v22 & v20;
  v55 = a2;
  v56 = a3;
  v46 = (v10 + 32);
  v47 = (v12 + 32);
  v43 = (v12 + 8);
  v44 = v12;
  v45 = v10;
  v42[3] = v10 + 40;

  v42[1] = a3;

  while (1)
  {
    sub_10039587C(v17);
    v23 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
    if ((*(*(v23 - 8) + 48))(v17, 1, v23) == 1)
    {
      sub_10000E3F8(v50);
    }

    v24 = *(v23 + 48);
    v25 = *v47;
    (*v47)(v14, v17, v48);
    v26 = *v46;
    v27 = v9;
    (*v46)(v49, &v17[v24], v9);
    v28 = *v57;
    v30 = sub_1001FD93C(v14);
    v31 = v28[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      break;
    }

    v34 = v29;
    if (v28[3] >= v33)
    {
      if ((a4 & 1) == 0)
      {
        sub_1002034E4();
      }
    }

    else
    {
      sub_10022D91C(v33, a4 & 1);
      v35 = sub_1001FD93C(v14);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_19;
      }

      v30 = v35;
    }

    v37 = *v57;
    if (v34)
    {
      (*v43)(v14, v48);
      v9 = v27;
      (*(v45 + 40))(v37[7] + *(v45 + 72) * v30, v49, v27);
      a4 = 1;
    }

    else
    {
      v37[(v30 >> 6) + 8] |= 1 << v30;
      v25((v37[6] + *(v44 + 72) * v30), v14, v48);
      v9 = v27;
      v26((v37[7] + *(v45 + 72) * v30), v49, v27);
      v38 = v37[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_18;
      }

      v37[2] = v40;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10037EAA8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100003690;

  return sub_100379198(a1, v5, v6, v7, v8, v9, v10, v1 + v4);
}

uint64_t sub_10037EBF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10037EC58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10037ECCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10037ED50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_100349CC4();
}

uint64_t sub_10037EDEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_100349D54();
}

uint64_t sub_10037EE88()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000368C;

  return sub_100349AAC(v2, v3);
}

uint64_t sub_10037EF30(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_10037EF94()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000368C;

  return sub_100349958(v2, v3);
}

uint64_t sub_10037F02C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_100347B68(v2);
}

uint64_t sub_10037F0C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_100347E48(a1, v4);
}

uint64_t sub_10037F16C(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_10037F1C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_100347DB8();
}

unint64_t sub_10037F2A0()
{
  result = qword_1005B24A8;
  if (!qword_1005B24A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B24A8);
  }

  return result;
}

unint64_t sub_10037F2F4()
{
  result = qword_1005B24B8;
  if (!qword_1005B24B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B24B8);
  }

  return result;
}

uint64_t sub_10037F348(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10037F3D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10037F49C()
{
  result = qword_1005B24C0;
  if (!qword_1005B24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B24C0);
  }

  return result;
}

uint64_t sub_10037F550()
{
  v13 = v0;

  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[14];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136446723;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E86C0, &v12);
    *(v6 + 12) = 2160;
    *(v6 + 14) = 1752392040;
    *(v6 + 22) = 2081;
    v0[2] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v6 + 24) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error: %{private,mask.hash}s", v6, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_10037F790(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_10004B564(&qword_1005B2438, &qword_1004D68B0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for ClientOrigin();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  type metadata accessor for RequestOrigin();
  v2[13] = swift_task_alloc();
  sub_10004B564(&qword_1005A92D8, &qword_1004C2898);
  v2[14] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v2[15] = Priority;
  v2[16] = *(Priority - 8);
  v2[17] = swift_task_alloc();
  v5 = type metadata accessor for LocationRequest();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v6 = type metadata accessor for Handle();
  v2[22] = v6;
  v2[23] = *(v6 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v7 = type metadata accessor for Location();
  v2[28] = v7;
  v2[29] = *(v7 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v8 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
  v2[32] = v8;
  v2[33] = *(v8 - 8);
  v2[34] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v2[35] = v9;
  v2[36] = *(v9 - 8);
  v2[37] = swift_task_alloc();

  return _swift_task_switch(sub_10037FB68, v1, 0);
}

uint64_t sub_10037FB68()
{
  v22 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[38] = sub_10000A6F0(v1, qword_1005E0B28);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v4 = 136446723;
    *(v4 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004E8690, &v21);
    *(v4 + 12) = 2160;
    *(v4 + 14) = 1752392040;
    *(v4 + 22) = 2081;
    v5 = Array.description.getter();
    v7 = sub_10000D01C(v5, v6, &v21);

    *(v4 + 24) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s handles: %{private,mask.hash}s", v4, 0x20u);
    swift_arrayDestroy();
  }

  v8 = *(v0[6] + 16);
  v0[39] = v8;
  if (v8)
  {
    v10 = v0[36];
    v9 = v0[37];
    v11 = v0[35];
    static Date.trustedNow.getter(v9);
    Date.timeIntervalSince1970.getter();
    v0[40] = v12;
    (*(v10 + 8))(v9, v11);
    v13 = swift_task_alloc();
    v0[41] = v13;
    *v13 = v0;
    v13[1] = sub_10037FF50;
    v14 = v0[6];

    return sub_100029620(v14);
  }

  else
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "start retrieve legacy location called with empty handles!", v18, 2u);
    }

    v20 = sub_1002087C4(_swiftEmptyArrayStorage);

    v19 = v0[1];

    return v19(v20);
  }
}