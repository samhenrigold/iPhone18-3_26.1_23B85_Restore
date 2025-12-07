uint64_t sub_10004C554()
{
  sub_100003C90((v0 + 16));
  v1 = OBJC_IVAR____TtC10driverkitd16DriverBinManager_directory;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000A184(v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager____lazy_storage___infoLocation, &unk_1001389D0, &qword_1000F4F60);
  sub_10000A184(v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager____lazy_storage___nextInfoLocation, &unk_1001389D0, &qword_1000F4F60);
  sub_10004F708(*(v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo), *(v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo + 8), *(v0 + OBJC_IVAR____TtC10driverkitd16DriverBinManager__driverBinInfo + 16));
  return v0;
}

uint64_t sub_10004C66C()
{
  sub_10004C554();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DriverBinManager(uint64_t a1)
{
  result = qword_100135618;
  if (!qword_100135618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004C718(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_10004C820(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10004C820(uint64_t a1)
{
  if (!qword_100134D18)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100134D18);
    }
  }
}

double sub_10004C878()
{
  swift_beginAccess();

  return result;
}

void *sub_10004C8C4(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1;
  v7 = *(a3 + 32);
  v8 = v7 & 0x3F;
  v9 = (1 << v7) + 63;
  v10 = v9 >> 6;
  v11 = 8 * (v9 >> 6);
  if (v8 <= 0xD)
  {
    goto LABEL_2;
  }

  v15 = 8 * (v9 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v11 = v15;
LABEL_2:
    __chkstk_darwin(a1, v11);
    v13 = &v19 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = sub_10004CA44(v13, v10, a3, v6);
    if (v4)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = v4;
  v18 = sub_10004CEC4(v16, v10, a3, v6);

  if (!v17)
  {
    return v18;
  }

  return result;
}

uint64_t sub_10004CA44(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t))
{
  v42 = a4;
  v34 = a2;
  v35 = a1;
  v5 = type metadata accessor for DriverBinEntry(0);
  v41 = *(v5 - 8);
  __chkstk_darwin(v5 - 8, v6);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  result = __chkstk_darwin(v8, v9);
  v43 = a3;
  v44 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v38 = v11 + 16;
  v39 = v11;
  v36 = 0;
  v37 = (v11 + 8);
  while (v19)
  {
    v45 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
    v22 = v44;
LABEL_11:
    v25 = v43;
    (*(v39 + 16))(v22, v43[6] + *(v39 + 72) * v21, v8);
    v26 = v21;
    v27 = v25[7] + *(v41 + 72) * v21;
    v28 = v8;
    v29 = v40;
    sub_100014718(v27, v40, type metadata accessor for DriverBinEntry);
    v30 = v46;
    v31 = v42(v22, v29);
    v46 = v30;
    if (v30)
    {
      sub_100052CD4(v29, type metadata accessor for DriverBinEntry);
      return (*v37)(v22, v28);
    }

    v32 = v31;
    sub_100052CD4(v29, type metadata accessor for DriverBinEntry);
    result = (*v37)(v22, v28);
    v8 = v28;
    v19 = v45;
    if (v32)
    {
      *(v35 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_100058768(v35, v34, v36, v43);
      }
    }
  }

  v23 = v13;
  v22 = v44;
  while (1)
  {
    v13 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_100058768(v35, v34, v36, v43);
    }

    v24 = v15[v13];
    ++v23;
    if (v24)
    {
      v45 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) | (v13 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10004CD84(unint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_10004F748(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

unint64_t *sub_10004CE28(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
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

    v8 = sub_10004E3DC(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_10004CEC4(void *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_10004CA44(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_10004CF54(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_10004ECC0(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_10004D00C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = type metadata accessor for URL();
  v8 = *(v36 - 8);
  __chkstk_darwin(v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100003CDC(&qword_1001357D8, &unk_1000F56D0);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_100052DB8(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10004D334(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v137 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7, v9);
  v134 = &v127 - v11;
  v13 = __chkstk_darwin(v10, v12);
  v141 = &v127 - v14;
  v16 = __chkstk_darwin(v13, v15);
  v136 = &v127 - v17;
  v19 = __chkstk_darwin(v16, v18);
  v131 = &v127 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v140 = &v127 - v23;
  v25 = __chkstk_darwin(v22, v24);
  v135 = &v127 - v26;
  v28 = __chkstk_darwin(v25, v27);
  v30 = &v127 - v29;
  __chkstk_darwin(v28, v31);
  v33 = &v127 - v32;
  sub_100003C4C((v1 + 16), *(v1 + 40));
  sub_1000DF9D4(&v156);
  v34 = v157;
  v35 = v158;
  sub_100003C4C(&v156, v157);
  v36 = (*(v35 + 24))(v1 + OBJC_IVAR____TtC10driverkitd16DriverBinManager_directory, 0, 1, v34, v35);
  sub_100003C90(&v156);
  v37 = sub_100047A20(a1);
  v149 = 0;
  v38 = sub_1000EB530(v37);

  v144 = *(v36 + 16);
  v145 = v2;
  if (v144)
  {
    v41 = 0;
    v139 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v142 = v36 + v139;
    v154 = (v5 + 16);
    v42 = (v5 + 8);
    v138 = (v5 + 32);
    *&v150 = v38 + 56;
    v43 = _swiftEmptyArrayStorage;
    *&v40 = 136315138;
    v128 = v40;
    *&v40 = 136315394;
    v127 = v40;
    v151 = v38;
    v152 = v33;
    v147 = v5;
    v143 = v36;
    while (1)
    {
      if (v41 >= *(v36 + 16))
      {
        __break(1u);
        return result;
      }

      v44 = *(v5 + 72);
      *&v148 = v41;
      v153 = v44;
      v45 = *(v5 + 16);
      v45(v33, v142 + v44 * v41, v4);
      if (URL.hasDirectoryPath.getter())
      {
        v146 = v43;
        if (!*(v38 + 16) || (sub_100052DB8(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL), v46 = dispatch thunk of Hashable._rawHashValue(seed:)(), v47 = -1 << *(v38 + 32), v48 = v46 & ~v47, ((*(v150 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0))
        {
LABEL_14:
          v43 = v146;
          if (qword_100133AD8 != -1)
          {
            swift_once();
          }

          v52 = type metadata accessor for Logger();
          sub_1000144F0(v52, qword_10014E9C8);
          v53 = v135;
          v45(v135, v152, v4);
          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v132 = v56;
            v133 = swift_slowAlloc();
            v156 = v133;
            *v56 = v128;
            sub_100052DB8(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v57 = dispatch thunk of CustomStringConvertible.description.getter();
            v58 = v53;
            v60 = v59;
            v61 = *v42;
            (*v42)(v58, v4);
            v62 = sub_1000E3AF8(v57, v60, &v156);

            v63 = v132;
            *(v132 + 1) = v62;
            _os_log_impl(&_mh_execute_header, v54, v55, "Will remove untracked directory %s", v63, 0xCu);
            sub_100003C90(v133);

            v38 = v151;
          }

          else
          {

            v81 = v53;
            v61 = *v42;
            (*v42)(v81, v4);
          }

          v33 = v152;
          v45(v140, v152, v4);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_100031468(0, v43[2] + 1, 1, v43);
          }

          v5 = v147;
          v83 = v43[2];
          v82 = v43[3];
          if (v83 >= v82 >> 1)
          {
            v43 = sub_100031468((v82 > 1), v83 + 1, 1, v43);
          }

          v61(v33, v4);
          v43[2] = v83 + 1;
          result = (*v138)(v43 + v139 + v83 * v153, v140, v4);
          v36 = v143;
          goto LABEL_6;
        }

        v49 = ~v47;
        while (1)
        {
          v45(v30, *(v38 + 48) + v48 * v153, v4);
          sub_100052DB8(&qword_1001342B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v50 = dispatch thunk of static Equatable.== infix(_:_:)();
          v51 = *v42;
          (*v42)(v30, v4);
          if (v50)
          {
            break;
          }

          v48 = (v48 + 1) & v49;
          v38 = v151;
          if (((*(v150 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        v43 = v146;
        v33 = v152;
      }

      else
      {
        sub_1000486E4(v30);
        v64 = static URL.== infix(_:_:)();
        v51 = *v42;
        (*v42)(v30, v4);
        if ((v64 & 1) == 0)
        {
          v146 = v43;
          if (qword_100133AD8 != -1)
          {
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          sub_1000144F0(v65, qword_10014E9C8);
          v66 = v131;
          v45(v131, v33, v4);

          v67 = Logger.logObject.getter();
          v68 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            LODWORD(v132) = v68;
            v70 = v66;
            v71 = v69;
            v133 = swift_slowAlloc();
            v156 = v133;
            *v71 = v127;
            v129 = sub_100052DB8(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v130 = v67;
            v72 = dispatch thunk of CustomStringConvertible.description.getter();
            v74 = v73;
            v51(v70, v4);
            v75 = sub_1000E3AF8(v72, v74, &v156);
            v33 = v152;

            *(v71 + 4) = v75;
            *(v71 + 12) = 2080;
            sub_1000486E4(v30);
            v76 = dispatch thunk of CustomStringConvertible.description.getter();
            v78 = v77;
            v51(v30, v4);
            v79 = sub_1000E3AF8(v76, v78, &v156);

            *(v71 + 14) = v79;
            v80 = v130;
            _os_log_impl(&_mh_execute_header, v130, v132, "Will remove untracked file %s, since it is not the expected Info.plist at %s", v71, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            v51(v66, v4);
          }

          v45(v136, v33, v4);
          v43 = v146;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_100031468(0, v43[2] + 1, 1, v43);
          }

          v5 = v147;
          v85 = v43[2];
          v84 = v43[3];
          if (v85 >= v84 >> 1)
          {
            v43 = sub_100031468((v84 > 1), v85 + 1, 1, v43);
          }

          v51(v33, v4);
          v43[2] = v85 + 1;
          result = (*v138)(v43 + v139 + v85 * v153, v136, v4);
          v36 = v143;
          goto LABEL_5;
        }
      }

      v36 = v143;
      result = (v51)(v33, v4);
      v5 = v147;
LABEL_5:
      v38 = v151;
LABEL_6:
      v41 = v148 + 1;
      if (v148 + 1 == v144)
      {

        v2 = v145;
        goto LABEL_37;
      }
    }
  }

  v43 = _swiftEmptyArrayStorage;
LABEL_37:
  v87 = v43;
  v88 = v43[2];
  v89 = v141;
  if (v88)
  {
    v91 = *(v5 + 16);
    v90 = v5 + 16;
    v154 = v91;
    v92 = (*(v90 + 64) + 32) & ~*(v90 + 64);
    v146 = v87;
    v93 = v87 + v92;
    v152 = *(v90 + 56);
    v153 = (v90 - 8);
    *&v86 = 136315138;
    v148 = v86;
    *&v86 = 136315394;
    v150 = v86;
    v147 = v90;
    v91(v141, v87 + v92, v4);
    while (1)
    {
      sub_100003C4C((v2 + 16), *(v2 + 40));
      sub_1000DF9D4(&v156);
      v95 = v157;
      v96 = v158;
      sub_100003C4C(&v156, v157);
      v97 = v149;
      (*(v96 + 104))(v89, v95, v96);
      v98 = v97;
      if (v97)
      {
        sub_100003C90(&v156);
        v99 = v137;
        if (qword_100133AD8 != -1)
        {
          swift_once();
        }

        v100 = type metadata accessor for Logger();
        sub_1000144F0(v100, qword_10014E9C8);
        v154(v99, v89, v4);
        swift_errorRetain();
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          v156 = v151;
          *v103 = v150;
          sub_100052DB8(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v104 = dispatch thunk of CustomStringConvertible.description.getter();
          v105 = v99;
          v107 = v106;
          v108 = *v153;
          (*v153)(v105, v4);
          v109 = sub_1000E3AF8(v104, v107, &v156);

          *(v103 + 4) = v109;
          *(v103 + 12) = 2080;
          v155 = v98;
          swift_errorRetain();
          sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
          v110 = String.init<A>(describing:)();
          v112 = sub_1000E3AF8(v110, v111, &v156);

          *(v103 + 14) = v112;
          _os_log_impl(&_mh_execute_header, v101, v102, "Difficulty removing %s: %s", v103, 0x16u);
          swift_arrayDestroy();
          v113 = v145;

          v89 = v141;
          v108(v141, v4);
          v2 = v113;
        }

        else
        {

          v94 = *v153;
          (*v153)(v99, v4);
          v89 = v141;
          v94(v141, v4);
        }

        v149 = 0;
      }

      else
      {
        v149 = 0;
        sub_100003C90(&v156);
        if (qword_100133AD8 != -1)
        {
          swift_once();
        }

        v114 = type metadata accessor for Logger();
        sub_1000144F0(v114, qword_10014E9C8);
        v115 = v134;
        v154(v134, v89, v4);
        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = v115;
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v156 = v120;
          *v119 = v148;
          v121 = URL.path.getter();
          v123 = v122;
          v151 = *v153;
          v151(v118, v4);
          v124 = v121;
          v89 = v141;
          v125 = sub_1000E3AF8(v124, v123, &v156);

          *(v119 + 4) = v125;
          _os_log_impl(&_mh_execute_header, v116, v117, "Removed untracked path %s", v119, 0xCu);
          sub_100003C90(v120);
          v2 = v145;

          v151(v89, v4);
        }

        else
        {

          v126 = *v153;
          (*v153)(v115, v4);
          v126(v89, v4);
        }
      }

      v93 = &v152[v93];
      if (!--v88)
      {
        break;
      }

      v154(v89, v93, v4);
    }
  }
}

uint64_t sub_10004E3DC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v64 = a2;
  v66 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v84 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v89 = &v63 - v12;
  v77 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
  v14 = __chkstk_darwin(v77, v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v63 - v18;
  v20 = type metadata accessor for DriverBinEntry(0);
  v74 = *(v20 - 8);
  v75 = v20;
  __chkstk_darwin(v20, v21);
  v82 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for UUID();
  result = __chkstk_darwin(v81, v23);
  v80 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = 0;
  v27 = 0;
  v78 = a3;
  v28 = *(a3 + 64);
  v67 = a3 + 64;
  v29 = 1 << *(a3 + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & v28;
  v32 = (v29 + 63) >> 6;
  v71 = v25 + 16;
  v87 = (v7 + 16);
  v88 = a4;
  v85 = a4 + 7;
  v65 = v7;
  v86 = (v7 + 8);
  v72 = v32;
  v73 = v25;
  v70 = (v25 + 8);
  v83 = v16;
  v76 = v19;
  while (v31)
  {
    v35 = __clz(__rbit64(v31));
    v79 = (v31 - 1) & v31;
LABEL_13:
    v38 = v35 | (v27 << 6);
    v39 = v78;
    v40 = *(v73 + 16);
    v42 = v80;
    v41 = v81;
    v40(v80, v78[6] + *(v73 + 72) * v38, v81);
    v43 = v39[7];
    v44 = *(v74 + 72);
    v69 = v38;
    v45 = v43 + v44 * v38;
    v46 = v82;
    sub_100014718(v45, v82, type metadata accessor for DriverBinEntry);
    v40(v19, v42, v41);
    v47 = v77;
    sub_100014718(v46, &v19[*(v77 + 48)], type metadata accessor for DriverBinEntry);
    v48 = v83;
    sub_100014894(v19, v83, &unk_1001373B0, &unk_1000F3A40);
    v49 = v48 + *(v47 + 48);
    v50 = *v87;
    (*v87)(v89, v49 + *(v75 + 28), v6);
    sub_100052CD4(v49, type metadata accessor for DriverBinEntry);
    if (v88[2] && (v51 = v88, sub_100052DB8(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL), v52 = dispatch thunk of Hashable._rawHashValue(seed:)(), v53 = -1 << *(v51 + 32), v54 = v52 & ~v53, ((*(v85 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) != 0))
    {
      v55 = ~v53;
      v56 = *(v65 + 72);
      while (1)
      {
        v57 = v84;
        v50(v84, v88[6] + v56 * v54, v6);
        sub_100052DB8(&qword_1001342B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v58 = dispatch thunk of static Equatable.== infix(_:_:)();
        v59 = *v86;
        (*v86)(v57, v6);
        if (v58)
        {
          break;
        }

        v54 = (v54 + 1) & v55;
        if (((*(v85 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v59(v89, v6);
      v19 = v76;
      sub_10000A184(v76, &unk_1001373B0, &unk_1000F3A40);
      v60 = *v70;
      v61 = v81;
      (*v70)(v83, v81);
      sub_100052CD4(v82, type metadata accessor for DriverBinEntry);
      result = (v60)(v80, v61);
      *(v66 + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v69;
      v62 = __OFADD__(v68++, 1);
      v32 = v72;
      v31 = v79;
      if (v62)
      {
        __break(1u);
        return sub_100058768(v66, v64, v68, v78);
      }
    }

    else
    {
LABEL_5:
      (*v86)(v89, v6);
      v19 = v76;
      sub_10000A184(v76, &unk_1001373B0, &unk_1000F3A40);
      v33 = *v70;
      v34 = v81;
      (*v70)(v83, v81);
      sub_100052CD4(v82, type metadata accessor for DriverBinEntry);
      result = (v33)(v80, v34);
      v32 = v72;
      v31 = v79;
    }
  }

  v36 = v27;
  while (1)
  {
    v27 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v27 >= v32)
    {
      return sub_100058768(v66, v64, v68, v78);
    }

    v37 = *(v67 + 8 * v27);
    ++v36;
    if (v37)
    {
      v35 = __clz(__rbit64(v37));
      v79 = (v37 - 1) & v37;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004EB00(uint64_t a1, void *a2)
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
      v13 = swift_slowAlloc();

      v11 = sub_10004CE28(v13, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  __chkstk_darwin(v9, v10);
  bzero(&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v11 = sub_10004E3DC((&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t sub_10004ECC0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a2;
  v49 = a4;
  v43 = a1;
  v7 = type metadata accessor for URL();
  v9 = __chkstk_darwin(v7, v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9, v12);
  v57 = &v40 - v15;
  v44 = 0;
  v16 = 0;
  v51 = a3;
  v17 = *(a3 + 56);
  v42 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v17;
  v47 = OBJC_IVAR____TtC10driverkitd16DriverBinManager_directory;
  v48 = v14;
  v21 = (v18 + 63) >> 6;
  v55 = v14 + 16;
  v56 = a5;
  v53 = a5 + 56;
  v22 = (v14 + 8);
  v46 = v21;
  while (v20)
  {
    v24 = __clz(__rbit64(v20));
    v52 = (v20 - 1) & v20;
LABEL_14:
    v27 = v24 | (v16 << 6);
    v28 = *(v51 + 48);
    v29 = *(v48 + 72);
    v50 = v27;
    v54 = v29;
    v30 = *(v48 + 16);
    v30(v57, v28 + v29 * v27, v7);
    URL.path.getter();
    v31._countAndFlagsBits = URL.path.getter();
    v32 = String.hasPrefix(_:)(v31);

    if (!v32)
    {
      v23 = *v22;
      goto LABEL_6;
    }

    v45 = v22 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (*(a5 + 16) && (sub_100052DB8(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL), v33 = dispatch thunk of Hashable._rawHashValue(seed:)(), v34 = -1 << *(a5 + 32), v35 = v33 & ~v34, ((*(v53 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) != 0))
    {
      v36 = ~v34;
      while (1)
      {
        v30(v11, *(v56 + 48) + v35 * v54, v7);
        sub_100052DB8(&qword_1001342B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v37 = dispatch thunk of static Equatable.== infix(_:_:)();
        v23 = *v22;
        (*v22)(v11, v7);
        if (v37)
        {
          break;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v53 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          result = (v23)(v57, v7);
          goto LABEL_21;
        }
      }

LABEL_6:
      result = (v23)(v57, v7);
      a5 = v56;
      v21 = v46;
      v20 = v52;
    }

    else
    {
      result = (*v22)(v57, v7);
LABEL_21:
      *(v43 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      v38 = __OFADD__(v44++, 1);
      a5 = v56;
      v21 = v46;
      v20 = v52;
      if (v38)
      {
        goto LABEL_28;
      }
    }
  }

  v25 = v16;
  while (1)
  {
    v16 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      v39 = v51;

      return sub_10004D00C(v43, v41, v44, v39);
    }

    v26 = *(v42 + 8 * v16);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v52 = (v26 - 1) & v26;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_10004F0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v63 = v46 - v15;
  v16 = *(a1 + 32);
  v17 = v16 & 0x3F;
  v47 = ((1 << v16) + 63) >> 6;
  object = 8 * v47;
  v57 = a2;

  if (v17 > 0xD)
  {
    goto LABEL_31;
  }

  while (2)
  {
    v46[0] = v46;
    v46[1] = v4;
    __chkstk_darwin(v19, v20);
    v49 = v46 - ((object + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v49, object);
    v50 = 0;
    v21 = 0;
    v22 = *(a1 + 56);
    v48 = a1 + 56;
    v23 = 1 << *(a1 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v22;
    v53 = OBJC_IVAR____TtC10driverkitd16DriverBinManager_directory;
    v54 = v9;
    v26 = (v23 + 63) >> 6;
    v61 = (v9 + 2);
    v62 = a3;
    v59 = a3 + 56;
    ++v9;
    v52 = v26;
    v55 = a1;
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v58 = (v25 - 1) & v25;
LABEL_15:
      v31 = v28 | (v21 << 6);
      v32 = *(a1 + 48);
      v33 = v54[9];
      v56 = v31;
      v60 = v33;
      v4 = v54[2];
      (v4)(v63, v32 + v33 * v31, v8);
      URL.path.getter();
      v34._countAndFlagsBits = URL.path.getter();
      object = v34._object;
      v35 = String.hasPrefix(_:)(v34);

      if (!v35)
      {
        v27 = *v9;
        goto LABEL_7;
      }

      v51 = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (*(a3 + 16) && (sub_100052DB8(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL), object = v63, v36 = dispatch thunk of Hashable._rawHashValue(seed:)(), v37 = -1 << *(a3 + 32), v38 = v36 & ~v37, ((*(v59 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0))
      {
        v39 = ~v37;
        while (1)
        {
          (v4)(v13, *(v62 + 48) + v38 * v60, v8);
          sub_100052DB8(&qword_1001342B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          object = dispatch thunk of static Equatable.== infix(_:_:)();
          v27 = *v9;
          (*v9)(v13, v8);
          if (object)
          {
            break;
          }

          v38 = (v38 + 1) & v39;
          if (((*(v59 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
          {
            v27(v63, v8);
            goto LABEL_22;
          }
        }

LABEL_7:
        v27(v63, v8);
        a3 = v62;
        a1 = v55;
        v26 = v52;
        v25 = v58;
      }

      else
      {
        (*v9)(v63, v8);
LABEL_22:
        a1 = v55;
        *&v49[(v56 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v56;
        v40 = __OFADD__(v50++, 1);
        a3 = v62;
        v26 = v52;
        v25 = v58;
        if (v40)
        {
          goto LABEL_30;
        }
      }
    }

    v29 = v21;
    while (1)
    {
      v21 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v21 >= v26)
      {
        v41 = sub_10004D00C(v49, v47, v50, a1);

        return v41;
      }

      v30 = *(v48 + 8 * v21);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v58 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v43 = swift_slowAlloc();
  v44 = a3;
  v45 = v57;

  v41 = sub_10004CF54(v43, v47, a1, v45, v44);

  return v41;
}

uint64_t sub_10004F64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10004F6B4()
{
  result = qword_1001357D0;
  if (!qword_1001357D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001357D0);
  }

  return result;
}

uint64_t sub_10004F708(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10004F748(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v72 = a5;
  v74 = a4;
  v56 = a2;
  v57 = a1;
  v70 = type metadata accessor for URL();
  v6 = *(v70 - 8);
  __chkstk_darwin(v70, v7);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
  v10 = __chkstk_darwin(v69, v9);
  v79 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v78 = &v55 - v13;
  v14 = type metadata accessor for DriverBinEntry(0);
  v67 = *(v14 - 8);
  v68 = v14;
  __chkstk_darwin(v14, v15);
  v77 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for UUID();
  result = __chkstk_darwin(v76, v17);
  v75 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v71 = a3;
  v24 = a3[8];
  v23 = a3 + 8;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v58 = 0;
  v59 = (v25 + 63) >> 6;
  v63 = (v6 + 16);
  v64 = v19 + 16;
  v65 = v19;
  v61 = (v19 + 8);
  v62 = (v6 + 8);
  while (v27)
  {
    v31 = __clz(__rbit64(v27));
    v73 = (v27 - 1) & v27;
LABEL_12:
    v34 = v31 | (v21 << 6);
    v35 = v71;
    v36 = *(v65 + 16);
    v37 = v75;
    v38 = v76;
    v36(v75, v71[6] + *(v65 + 72) * v34, v76);
    v39 = v35[7];
    v40 = *(v67 + 72);
    v60 = v34;
    v41 = v39 + v40 * v34;
    v42 = v77;
    sub_100014718(v41, v77, type metadata accessor for DriverBinEntry);
    v43 = v78;
    v36(v78, v37, v38);
    v44 = v69;
    sub_100014718(v42, v43 + *(v69 + 48), type metadata accessor for DriverBinEntry);
    v45 = v79;
    sub_100014894(v43, v79, &unk_1001373B0, &unk_1000F3A40);
    v46 = v45 + *(v44 + 48);
    v47 = v66;
    v48 = v70;
    (*v63)(v66, v46 + *(v68 + 28), v70);
    sub_100052CD4(v46, type metadata accessor for DriverBinEntry);
    v49 = URL.lastPathComponent.getter();
    v51 = v50;
    (*v62)(v47, v48);
    if (v49 == v74 && v51 == v72)
    {

      sub_10000A184(v78, &unk_1001373B0, &unk_1000F3A40);
      v52 = *v61;
      v53 = v76;
      (*v61)(v79, v76);
      sub_100052CD4(v77, type metadata accessor for DriverBinEntry);
      result = (v52)(v75, v53);
      v27 = v73;
      goto LABEL_15;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_10000A184(v78, &unk_1001373B0, &unk_1000F3A40);
    v29 = *v61;
    v30 = v76;
    (*v61)(v79, v76);
    sub_100052CD4(v77, type metadata accessor for DriverBinEntry);
    result = (v29)(v75, v30);
    v27 = v73;
    if (v28)
    {
LABEL_15:
      *(v57 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
      if (__OFADD__(v58++, 1))
      {
        __break(1u);
        return sub_100058768(v57, v56, v58, v71);
      }
    }
  }

  v32 = v21;
  while (1)
  {
    v21 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v21 >= v59)
    {
      return sub_100058768(v57, v56, v58, v71);
    }

    v33 = v23[v21];
    ++v32;
    if (v33)
    {
      v31 = __clz(__rbit64(v33));
      v73 = (v33 - 1) & v33;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004FD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v13 = sub_10004CD84(v15, v9, a1, a2, a3);

      swift_bridgeObjectRelease_n();
      return v13;
    }
  }

  __chkstk_darwin(v11, v12);
  bzero(&v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v13 = sub_10004F748((&v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v13;
}

uint64_t sub_10004FED4(uint64_t a1, uint64_t a2, uint64_t *a3, char **a4)
{
  v331 = a4;
  v378 = a3;
  v6 = type metadata accessor for ApplicationRecord(0);
  v8 = __chkstk_darwin(v6, v7);
  v364 = &v326 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v353 = &v326 - v11;
  v373 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
  v12 = *(v373 - 8);
  __chkstk_darwin(v373, v13);
  v340 = &v326 - v14;
  v15 = sub_100003CDC(&qword_1001342E0, &unk_1000F3A30);
  __chkstk_darwin(v15 - 8, v16);
  v372 = &v326 - v17;
  v351 = sub_100003CDC(&qword_1001342E8, &qword_1000F4F50);
  __chkstk_darwin(v351, v18);
  v350 = &v326 - v19;
  v357 = type metadata accessor for DriverBinEntry(0);
  v21 = __chkstk_darwin(v357, v20);
  v329 = &v326 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21, v23);
  v330 = &v326 - v25;
  __chkstk_darwin(v24, v26);
  v356 = &v326 - v27;
  v382 = type metadata accessor for UUID();
  v28 = *(v382 - 8);
  v30 = __chkstk_darwin(v382, v29);
  v366 = &v326 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v30, v32);
  v365 = &v326 - v34;
  v36 = __chkstk_darwin(v33, v35);
  v386 = &v326 - v37;
  v39 = __chkstk_darwin(v36, v38);
  v333 = &v326 - v40;
  __chkstk_darwin(v39, v41);
  v358 = &v326 - v42;
  v397 = type metadata accessor for URL();
  v43 = *(v397 - 8);
  v45 = __chkstk_darwin(v397, v44);
  v338 = &v326 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v45, v47);
  v355 = &v326 - v49;
  v51 = __chkstk_darwin(v48, v50);
  v345 = &v326 - v52;
  v54 = __chkstk_darwin(v51, v53);
  v352 = &v326 - v55;
  v57 = __chkstk_darwin(v54, v56);
  v59 = &v326 - v58;
  __chkstk_darwin(v57, v60);
  v374 = &v326 - v61;
  v401 = a1;
  v376 = sub_10004C8C4(sub_100052D98, v400, a2);
  v398 = 0;
  v337 = v6;
  v63 = *(v6 + 24);
  v384 = a1;
  v375 = *(a1 + v63);
  v371 = *(v375 + 16);
  if (!v371)
  {
  }

  v64 = 0;
  v363 = OBJC_IVAR____TtC10driverkitd16DriverBinManager_directory;
  v370 = v375 + 32;
  v369 = (v12 + 56);
  v65 = (v12 + 48);
  v66 = (v43 + 8);
  v368 = v65;
  v339 = " containing staged bundle ";
  v335 = (v28 + 16);
  v336 = 0x8000000100105BB0;
  v349 = "Driver Bin Changed";
  v377 = (v43 + 16);
  v332 = "xisting bin entry for ";
  v328 = " the directory does not exist";
  v327 = "Staged application ";
  *&v62 = 136315138;
  v347 = v62;
  *&v62 = 136315650;
  v346 = v62;
  *(&v67 + 1) = 2;
  v389 = xmmword_1000F3160;
  *&v67 = 136315906;
  v334 = v67;
  *&v67 = 136315394;
  v348 = v67;
  v391 = (v43 + 8);
  v396 = v59;
  v379 = (v28 + 32);
  v387 = (v28 + 8);
  do
  {
    if (v64 >= *(v375 + 16))
    {
      goto LABEL_115;
    }

    v68 = (v370 + 16 * v64);
    v69 = *v68;
    v70 = v68[1];
    v388 = v64 + 1;

    v71 = v374;
    v381 = v69;
    URL.init(fileURLWithPath:)();
    v72 = URL.lastPathComponent.getter();
    v74 = v73;
    v390 = *v66;
    v390(v71, v397);

    v76 = v398;
    v77 = sub_10004FD08(v75, v72, v74);

    v393 = v74;

    v78 = 0;
    v79 = 1 << *(v77 + 32);
    v80 = (v79 + 63) >> 6;
    v81 = 64;
    v82 = v372;
    v83 = v373;
    while (1)
    {
      v84 = *(v77 + v81);
      if (v84)
      {
        break;
      }

      v78 -= 64;
      v81 += 8;
      if (!--v80)
      {
        goto LABEL_9;
      }
    }

    v85 = __clz(__rbit64(v84));
    if (v85 - v79 == v78)
    {
LABEL_9:
      v86 = 1;
      goto LABEL_11;
    }

    v87 = *(v373 + 48);
    v88 = v340;
    sub_10008DFBC(v340, v340 + v87, v85 - v78, *(v77 + 36), 0, v77);
    (*v379)(v82, v88, v382);
    sub_10004F64C(v88 + v87, v82 + *(v83 + 48), type metadata accessor for DriverBinEntry);
    v86 = 0;
LABEL_11:
    v394 = v70;
    (*v369)(v82, v86, 1, v83);

    v89 = (*v368)(v82, 1, v83);
    v383 = v72;
    if (v89 != 1)
    {
      v398 = v76;
      v103 = *(v83 + 48);
      v104 = v351;
      v105 = *(v351 + 48);
      v101 = v379;
      v106 = *v379;
      v107 = v350;
      v100 = v382;
      (*v379)(v350, v82, v382);
      sub_10004F64C(v82 + v103, &v107[v105], type metadata accessor for DriverBinEntry);
      v108 = *(v104 + 48);
      v109 = v358;
      v106(v358, v107, v100);
      v110 = &v107[v108];
      v111 = v356;
      sub_10004F64C(v110, v356, type metadata accessor for DriverBinEntry);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        *&v408 = 0;
        *(&v408 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(48);

        *&v408 = 0x72746E65206E6942;
        *(&v408 + 1) = 0xEA00000000002079;
        v405._countAndFlagsBits = 0;
        v405._object = 0xE000000000000000;
        _StringGuts.grow(_:)(27);

        strcpy(&v405, "Staged bundle ");
        HIBYTE(v405._object) = -18;
        v127 = v111;
        v128 = v109;
        v129 = v357;
        sub_100052DB8(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v130._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v130);

        v131._countAndFlagsBits = 0x70706120726F6620;
        v131._object = 0xE900000000000020;
        String.append(_:)(v131);
        String.append(_:)(*(v127 + *(v129 + 20)));
        String.append(_:)(v405);

        v132._countAndFlagsBits = 0xD000000000000022;
        v132._object = (v339 | 0x8000000000000000);
        String.append(_:)(v132);
        sub_100052DB8(&qword_1001354D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v133._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v133);

        v134 = v408;
        sub_10001449C();
        v95 = swift_allocError();
        *v135 = v134;
        v136 = v411;
        v138 = v409;
        v137 = v410;
        *(v135 + 16) = v408;
        *(v135 + 32) = v138;
        *(v135 + 48) = v137;
        *(v135 + 64) = v136;
        *(v135 + 72) = 50;
        swift_willThrow();
        v102 = v387;
        (*v387)(v128, v100);
        v139 = v127;
LABEL_29:
        sub_100052CD4(v139, type metadata accessor for DriverBinEntry);
        goto LABEL_30;
      }

      v102 = v387;
      if (*(*v378 + 16))
      {
        sub_1000615C4(v109);
        if (v112)
        {

          if (qword_100133AD8 != -1)
          {
            swift_once();
          }

          v113 = type metadata accessor for Logger();
          sub_1000144F0(v113, qword_10014E9C8);
          v114 = v333;
          (*v335)(v333, v109, v100);
          v115 = v394;

          v116 = Logger.logObject.getter();
          v117 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            *&v408 = swift_slowAlloc();
            *v118 = v348;
            v119 = sub_1000E3AF8(v381, v115, &v408);

            *(v118 + 4) = v119;
            *(v118 + 12) = 2080;
            sub_100052DB8(&qword_1001354D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v120 = dispatch thunk of CustomStringConvertible.description.getter();
            v122 = v121;
            v123 = v100;
            v124 = *v102;
            (*v102)(v114, v123);
            v125 = sub_1000E3AF8(v120, v122, &v408);

            *(v118 + 14) = v125;
            _os_log_impl(&_mh_execute_header, v116, v117, "Skipping bundle at %s, already inserted into new bin with UUID %s", v118, 0x16u);
            swift_arrayDestroy();
            v126 = v391;

            v66 = v126;

            v124(v358, v123);
            sub_100052CD4(v356, type metadata accessor for DriverBinEntry);
LABEL_111:
            v64 = v388;
            continue;
          }

          v195 = *v102;
          (*v102)(v114, v100);
          v195(v109, v100);
          v148 = v356;
LABEL_53:
          sub_100052CD4(v148, type metadata accessor for DriverBinEntry);
          goto LABEL_98;
        }
      }

      LOBYTE(v405._countAndFlagsBits) = 0;
      sub_100003C4C((v380 + 16), *(v380 + 40));
      sub_1000DF9D4(&v408);
      v140 = v410;
      sub_100003C4C(&v408, *(&v409 + 1));
      v141 = URL.path.getter();
      v142 = (*(v140 + 136))(v141);

      if (v142)
      {
        countAndFlagsBits = v405._countAndFlagsBits;
        sub_100003C90(&v408);
        if (countAndFlagsBits)
        {
          sub_100003C4C((v380 + 16), *(v380 + 40));
          sub_1000DF9D4(&v408);
          v144 = v410;
          sub_100003C4C(&v408, *(&v409 + 1));
          v145 = URL.path.getter();
          v146 = (*(v144 + 136))(v145);

          if (v146)
          {
            v147 = v405._countAndFlagsBits;
            sub_100003C90(&v408);
            if (v147)
            {

              sub_100042504(v111);
              (*v102)(v358, v382);
              v148 = v111;
              goto LABEL_53;
            }
          }

          else
          {
            sub_100003C90(&v408);
          }

          *&v408 = 0;
          *(&v408 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(38);

          *&v408 = 0x6220646567617453;
          v149 = 0xEE0020656C646E75;
          goto LABEL_28;
        }
      }

      else
      {
        sub_100003C90(&v408);
      }

      *&v408 = 0;
      *(&v408 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      *&v408 = 0xD000000000000012;
      v149 = v336;
LABEL_28:
      *(&v408 + 1) = v149;
      v150._countAndFlagsBits = URL.path.getter();
      String.append(_:)(v150);

      v151._countAndFlagsBits = 0x20726F6620;
      v151._object = 0xE500000000000000;
      String.append(_:)(v151);
      String.append(_:)(*(v111 + *(v357 + 20)));
      v152._countAndFlagsBits = 0x6F6E2073656F6420;
      v152._object = 0xEF74736978652074;
      String.append(_:)(v152);
      v153 = v408;
      sub_10001449C();
      v95 = swift_allocError();
      *v154 = v153;
      v155 = v411;
      v157 = v409;
      v156 = v410;
      *(v154 + 16) = v408;
      *(v154 + 32) = v157;
      *(v154 + 48) = v156;
      *(v154 + 64) = v155;
      *(v154 + 72) = 19;
      swift_willThrow();
      v100 = v382;
      (*v102)(v358, v382);
      v139 = v111;
      goto LABEL_29;
    }

    sub_10000A184(v82, &qword_1001342E0, &unk_1000F3A30);
    *&v408 = 0;
    *(&v408 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v90._countAndFlagsBits = 0xD000000000000026;
    v90._object = (v349 | 0x8000000000000000);
    String.append(_:)(v90);
    v91._countAndFlagsBits = sub_100019D24();
    String.append(_:)(v91);

    v92._countAndFlagsBits = 0x7264206874697720;
    v92._object = 0xED00002072657669;
    String.append(_:)(v92);
    v93._countAndFlagsBits = v72;
    v93._object = v393;
    String.append(_:)(v93);
    v94 = v408;
    sub_10001449C();
    v95 = swift_allocError();
    *v96 = v94;
    v97 = v411;
    v99 = v409;
    v98 = v410;
    *(v96 + 16) = v408;
    *(v96 + 32) = v99;
    *(v96 + 48) = v98;
    *(v96 + 64) = v97;
    *(v96 + 72) = 50;
    swift_willThrow();
    v100 = v382;
    v101 = v379;
    v102 = v387;
LABEL_30:
    if (qword_100133AD8 != -1)
    {
      swift_once();
    }

    v158 = type metadata accessor for Logger();
    v159 = sub_1000144F0(v158, qword_10014E9C8);
    swift_errorRetain();
    v395 = v159;
    v160 = Logger.logObject.getter();
    v161 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      *&v408 = v163;
      *v162 = v347;
      v405._countAndFlagsBits = v95;
      swift_errorRetain();
      sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
      v164 = String.init<A>(describing:)();
      v166 = sub_1000E3AF8(v164, v165, &v408);

      *(v162 + 4) = v166;
      v102 = v387;
      _os_log_impl(&_mh_execute_header, v160, v161, "Failed to reuse existing bin entry: %s. Creating new bin entry", v162, 0xCu);
      sub_100003C90(v163);
    }

    v167 = v365;
    v168 = v380;
    v169 = *v378;
    UUID.init()();
    v170 = v366;
    while (*(v169 + 16))
    {
      sub_1000615C4(v167);
      if ((v171 & 1) == 0)
      {
        break;
      }

      UUID.init()();
      (*v102)(v167, v100);
      (*v101)(v167, v170, v100);
    }

    (*v101)(v386, v167, v100);
    UUID.uuidString.getter();
    v172 = v396;
    URL.appendingPathComponent(_:isDirectory:)();

    sub_100003C4C((v168 + 16), *(v168 + 40));
    sub_1000DF9D4(&v408);
    v173 = *(&v409 + 1);
    v174 = v410;
    sub_100003C4C(&v408, *(&v409 + 1));
    v175 = sub_10003E834(_swiftEmptyArrayStorage);
    (*(v174 + 48))(v172, 1, v175, v173, v174);
    v385 = v95;
    v398 = 0;

    sub_100003C90(&v408);
    v176 = v353;
    sub_100014718(v384, v353, type metadata accessor for ApplicationRecord);
    v177 = v352;
    v178 = v397;
    v354 = *v377;
    v354(v352, v172, v397);

    v179 = Logger.logObject.getter();
    v180 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v179, v180))
    {

      v390(v177, v178);
      sub_100052CD4(v176, type metadata accessor for ApplicationRecord);
      v188 = v380;
      v189 = v381;
      goto LABEL_80;
    }

    v342 = v180;
    v181 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    v405._countAndFlagsBits = v182;
    *v181 = v346;
    v183 = (v176 + *(v337 + 32));
    v184 = *v183;
    v185 = v183[1];
    v186 = v185 >> 62;
    v367 = HIDWORD(*v183);
    v344 = v179;
    v343 = v181;
    v341 = v182;
    if ((v185 >> 62) > 1)
    {
      if (v186 != 2)
      {
        goto LABEL_51;
      }

      v191 = *(v184 + 16);
      v190 = *(v184 + 24);
      v187 = v190 - v191;
      if (__OFSUB__(v190, v191))
      {
        goto LABEL_123;
      }

      if (!v187)
      {
        goto LABEL_51;
      }
    }

    else if (v186)
    {
      v193 = v367 - v184;
      if (__OFSUB__(v367, v184))
      {
        goto LABEL_124;
      }

      v187 = v193;
      if (!v193)
      {
LABEL_51:
        v194 = _swiftEmptyArrayStorage;
        v188 = v380;
        goto LABEL_79;
      }
    }

    else
    {
      v187 = BYTE6(v185);
      if (!BYTE6(v185))
      {
        goto LABEL_51;
      }
    }

    *&v402 = _swiftEmptyArrayStorage;
    sub_1000635A4(0, v187 & ~(v187 >> 63), 0);
    v362 = v184;
    if (v186)
    {
      if (v186 == 2)
      {
        v192 = *(v184 + 16);
      }

      else
      {
        v192 = v362;
      }
    }

    else
    {
      v192 = 0;
    }

    v392 = v192;
    if (v187 < 0)
    {
      goto LABEL_122;
    }

    v196 = 0;
    v194 = v402;
    v360 = v184 >> 32;
    v361 = BYTE6(v185);
    v359 = &v408 + v392;
    do
    {
      if (v196 >= v187)
      {
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
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
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
        __break(1u);
LABEL_127:
        __break(1u);
      }

      v197 = v196 + 1;
      if (__OFADD__(v196, 1))
      {
        goto LABEL_114;
      }

      v198 = v392 + v196;
      if (v186 == 2)
      {
        if (v198 < *(v184 + 16))
        {
          goto LABEL_116;
        }

        if (v198 >= *(v184 + 24))
        {
          goto LABEL_119;
        }

        v203 = __DataStorage._bytes.getter();
        if (!v203)
        {
          goto LABEL_126;
        }

        v200 = v203;
        v204 = __DataStorage._offset.getter();
        v202 = v198 - v204;
        if (__OFSUB__(v198, v204))
        {
          goto LABEL_121;
        }

        goto LABEL_72;
      }

      if (v186 == 1)
      {
        if (v198 < v362 || v198 >= v360)
        {
          goto LABEL_118;
        }

        v199 = __DataStorage._bytes.getter();
        if (!v199)
        {
          goto LABEL_125;
        }

        v200 = v199;
        v201 = __DataStorage._offset.getter();
        v202 = v198 - v201;
        if (__OFSUB__(v198, v201))
        {
          goto LABEL_120;
        }

LABEL_72:
        v205 = *(v200 + v202);
        goto LABEL_75;
      }

      if (v198 >= v361)
      {
        goto LABEL_117;
      }

      LOWORD(v408) = v184;
      BYTE2(v408) = BYTE2(v184);
      BYTE3(v408) = BYTE3(v184);
      BYTE4(v408) = v367;
      BYTE5(v408) = BYTE5(v184);
      BYTE6(v408) = BYTE6(v184);
      BYTE7(v408) = HIBYTE(v184);
      WORD4(v408) = v185;
      BYTE10(v408) = BYTE2(v185);
      BYTE11(v408) = BYTE3(v185);
      BYTE12(v408) = BYTE4(v185);
      BYTE13(v408) = BYTE5(v185);
      v205 = v359[v196];
LABEL_75:
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v206 = swift_allocObject();
      *(v206 + 16) = v389;
      *(v206 + 56) = &type metadata for UInt8;
      *(v206 + 64) = &protocol witness table for UInt8;
      *(v206 + 32) = v205;
      v207 = String.init(format:_:)();
      *&v402 = v194;
      v210 = v194[2];
      v209 = v194[3];
      if (v210 >= v209 >> 1)
      {
        v326 = v207;
        v212 = v208;
        sub_1000635A4((v209 > 1), v210 + 1, 1);
        v208 = v212;
        v207 = v326;
        v194 = v402;
      }

      v194[2] = v210 + 1;
      v211 = &v194[2 * v210];
      v211[4] = v207;
      v211[5] = v208;
      ++v196;
    }

    while (v197 != v187);
    v188 = v380;
    v100 = v382;
LABEL_79:
    v213 = v390;
    *&v408 = v194;
    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_100018594();
    v214 = BidirectionalCollection<>.joined(separator:)();
    v216 = v215;

    sub_100052CD4(v353, type metadata accessor for ApplicationRecord);
    v217 = sub_1000E3AF8(v214, v216, &v405._countAndFlagsBits);

    v218 = v343;
    *(v343 + 1) = v217;
    *(v218 + 6) = 2080;
    v189 = v381;
    *(v218 + 14) = sub_1000E3AF8(v381, v394, &v405._countAndFlagsBits);
    *(v218 + 11) = 2080;
    v219 = v352;
    v220 = URL.path.getter();
    v222 = v221;
    v213(v219, v397);
    v223 = sub_1000E3AF8(v220, v222, &v405._countAndFlagsBits);

    *(v218 + 3) = v223;
    v224 = v344;
    _os_log_impl(&_mh_execute_header, v344, v342, "Attempting to copy out driver extension:\n  installIdentifier: %s\n               from: %s\n                 to: %s", v218, 0x20u);
    swift_arrayDestroy();

    v102 = v387;
LABEL_80:
    sub_100003C4C((v188 + 16), *(v188 + 40));
    sub_1000DF9D4(&v408);
    v225 = *(&v409 + 1);
    v226 = v410;
    sub_100003C4C(&v408, *(&v409 + 1));
    v227 = URL.path.getter();
    v228 = v225;
    v229 = v398;
    sub_1000EC224(v189, v394, v227, v230, 950287, v228, v226);
    v398 = v229;
    if (!v229)
    {

      sub_100003C90(&v408);
      URL.appendingPathComponent(_:isDirectory:)();
      v399 = 0;
      sub_100003C4C((v188 + 16), *(v188 + 40));
      sub_1000DF9D4(&v408);
      v256 = v410;
      sub_100003C4C(&v408, *(&v409 + 1));
      v257 = URL.path.getter();
      v258 = (*(v256 + 136))(v257);

      if (v258)
      {
        v259 = v399;
        sub_100003C90(&v408);
        v260 = v364;
        if (v259)
        {
          v261 = v330;
          (*v335)(v330, v386, v100);
          v262 = v357;
          sub_100014718(v384, v261 + *(v357 + 20), type metadata accessor for ApplicationRecord);
          v263 = v397;
          v264 = v354;
          v354((v261 + *(v262 + 24)), v396, v397);
          v265 = *(v262 + 28);
          v264(v261 + v265, v345, v263);
          static Date.now.getter();
          sub_100042504(v261);
          *&v408 = 0;
          *(&v408 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(84);
          v266._countAndFlagsBits = 0xD000000000000013;
          v266._object = (v328 | 0x8000000000000000);
          String.append(_:)(v266);
          v267._countAndFlagsBits = sub_100019D24();
          String.append(_:)(v267);

          v268._countAndFlagsBits = 0x7264206874697720;
          v268._object = 0xED00002072657669;
          String.append(_:)(v268);
          v269._countAndFlagsBits = v383;
          v269._object = v393;
          String.append(_:)(v269);

          v270._countAndFlagsBits = 544175136;
          v270._object = 0xE400000000000000;
          String.append(_:)(v270);
          sub_100052DB8(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v271._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v271);

          v272._countAndFlagsBits = 0xD00000000000001ALL;
          v272._object = (v327 | 0x8000000000000000);
          String.append(_:)(v272);
          v273._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v273);

          v274._countAndFlagsBits = 0x5520676E69737520;
          v274._object = 0xEC00000020444955;
          String.append(_:)(v274);
          sub_100052DB8(&qword_1001354D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v275._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v275);

          v276 = v408;
          v277 = *v331;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v277 = sub_100030EA0(0, *(v277 + 2) + 1, 1, v277);
          }

          v279 = *(v277 + 2);
          v278 = *(v277 + 3);
          v280 = v390;
          if (v279 >= v278 >> 1)
          {
            v277 = sub_100030EA0((v278 > 1), v279 + 1, 1, v277);
          }

          *(v277 + 2) = v279 + 1;
          *&v277[16 * v279 + 32] = v276;
          *v331 = v277;
          sub_100003C4C((v380 + 16), *(v380 + 40));
          sub_1000DFF08(&v405);
          v281 = v374;
          v264(v374, (v261 + v265), v397);
          v282 = sub_1000993E4(v281);
          if (v282)
          {
            v283 = v282;
            v403 = type metadata accessor for UncachedBundle();
            v404 = sub_100052DB8(&qword_1001373C0, type metadata accessor for UncachedBundle, &unk_1000F980C);
            *&v402 = v283;
            sub_100003C90(&v405);
            sub_100009F34(&v402, &v408);
            sub_100003C4C(&v408, *(&v409 + 1));
            v284 = sub_1000990BC();
            if (v285)
            {
              v286 = v284;
              v287 = v285;
              sub_100003C4C((v380 + 16), *(v380 + 40));
              sub_1000E00C4(&v405);
              v288 = v406;
              v289 = v407;
              sub_100003C4C(&v405, v406);
              v290 = v397;
              v291 = URL.path.getter();
              sub_1000181C4(v286, v287, v291, v292, v288, v289);

              sub_100052CD4(v261, type metadata accessor for DriverBinEntry);
              v66 = v391;
              v280(v345, v290);
              v280(v396, v290);
              (*v387)(v386, v382);
              sub_100003C90(&v405);
              sub_100003C90(&v408);
              goto LABEL_111;
            }

            v314 = &v408;
          }

          else
          {
            v314 = &v405;
          }

          sub_100003C90(v314);
          v315 = v329;
          sub_100014718(v261, v329, type metadata accessor for DriverBinEntry);
          v316 = Logger.logObject.getter();
          v317 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v316, v317))
          {
            v318 = swift_slowAlloc();
            v319 = swift_slowAlloc();
            *&v408 = v319;
            *v318 = v347;
            v320 = URL.path.getter();
            v322 = v321;
            sub_100052CD4(v315, type metadata accessor for DriverBinEntry);
            v323 = sub_1000E3AF8(v320, v322, &v408);

            *(v318 + 4) = v323;
            _os_log_impl(&_mh_execute_header, v316, v317, "Could not report driver install: could not resolve driver bundle at\n %s", v318, 0xCu);
            sub_100003C90(v319);
          }

          else
          {

            sub_100052CD4(v315, type metadata accessor for DriverBinEntry);
          }

          sub_100052CD4(v261, type metadata accessor for DriverBinEntry);
          v324 = v397;
          v66 = v391;
          v280(v345, v397);
          v280(v396, v324);
          (*v387)(v386, v382);
          goto LABEL_111;
        }
      }

      else
      {
        sub_100003C90(&v408);
        v260 = v364;
      }

      *&v408 = 0;
      *(&v408 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      v303._countAndFlagsBits = 0x2064657461657243;
      v303._object = 0xE800000000000000;
      String.append(_:)(v303);
      v304 = v345;
      v305._countAndFlagsBits = URL.path.getter();
      String.append(_:)(v305);

      v306._countAndFlagsBits = 0xD00000000000002DLL;
      v306._object = (v332 | 0x8000000000000000);
      String.append(_:)(v306);
      v307 = v408;
      sub_10001449C();
      swift_allocError();
      *v308 = v307;
      v309 = v411;
      v311 = v409;
      v310 = v410;
      *(v308 + 16) = v408;
      *(v308 + 32) = v311;
      *(v308 + 48) = v310;
      *(v308 + 64) = v309;
      *(v308 + 72) = 19;
      swift_willThrow();
      v312 = v397;
      v313 = v390;
      v390(v304, v397);
      v313(v396, v312);
      (*v102)(v386, v100);
      goto LABEL_95;
    }

    sub_100003C90(&v408);
    v231 = errno.getter();
    if (!strerror(v231))
    {
      goto LABEL_127;
    }

    v367 = String.init(cString:)();
    v392 = v232;
    v233 = v338;
    v234 = v397;
    v354(v338, v396, v397);
    v235 = v394;

    v236 = v398;
    swift_errorRetain();
    v237 = Logger.logObject.getter();
    v238 = static os_log_type_t.error.getter();

    v239 = os_log_type_enabled(v237, v238);
    v240 = v381;
    if (v239)
    {
      v241 = v234;
      v242 = v233;
      v243 = swift_slowAlloc();
      v362 = swift_slowAlloc();
      *&v408 = v362;
      *v243 = v334;
      v244 = sub_1000E3AF8(v240, v235, &v408);

      *(v243 + 4) = v244;
      *(v243 + 12) = 2080;
      v245 = URL.path.getter();
      LODWORD(v394) = v238;
      v247 = v246;
      v248 = v390;
      v390(v242, v241);
      v249 = sub_1000E3AF8(v245, v247, &v408);

      *(v243 + 14) = v249;
      *(v243 + 22) = 2080;
      v405._countAndFlagsBits = v236;
      swift_errorRetain();
      sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
      v250 = String.init<A>(describing:)();
      v252 = sub_1000E3AF8(v250, v251, &v408);

      *(v243 + 24) = v252;
      v253 = v248;
      *(v243 + 32) = 2080;
      v254 = sub_1000E3AF8(v367, v392, &v408);

      *(v243 + 34) = v254;
      _os_log_impl(&_mh_execute_header, v237, v394, "Could not copyfile:\nfrom: %s\nto: %s\nerror: %s\nerrno: %s", v243, 0x2Au);
      swift_arrayDestroy();

      v255 = v397;
    }

    else
    {

      v253 = v390;
      v390(v233, v234);
      v255 = v234;
    }

    swift_willThrow();
    v253(v396, v255);
    (*v102)(v386, v100);
    v260 = v364;
LABEL_95:
    sub_100014718(v384, v260, type metadata accessor for ApplicationRecord);
    v293 = v393;

    v294 = Logger.logObject.getter();
    v295 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v294, v295))
    {
      v296 = swift_slowAlloc();
      *&v408 = swift_slowAlloc();
      *v296 = v348;
      v297 = sub_1000E3AF8(v383, v293, &v408);
      v398 = 0;
      v298 = v297;

      *(v296 + 4) = v298;
      *(v296 + 12) = 2080;
      v299 = sub_100019D24();
      v301 = v300;
      sub_100052CD4(v260, type metadata accessor for ApplicationRecord);
      v302 = sub_1000E3AF8(v299, v301, &v408);

      *(v296 + 14) = v302;
      _os_log_impl(&_mh_execute_header, v294, v295, "Failed to stage driver %s from app %s", v296, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100052CD4(v260, type metadata accessor for ApplicationRecord);
      v398 = 0;
    }

LABEL_98:
    v64 = v388;
    v66 = v391;
  }

  while (v64 != v371);
}

uint64_t sub_100052CD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100052D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DriverBinEntry(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052DB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100052E00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v115 = a3;
  v113 = a1;
  v114 = a2;
  LODWORD(v123) = a7;
  v8 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v107 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10, v12);
  v110 = &v95 - v14;
  __chkstk_darwin(v13, v15);
  v17 = &v95 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v21 = __chkstk_darwin(v18, v20);
  v23 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v21, v24);
  v109 = &v95 - v26;
  __chkstk_darwin(v25, v27);
  v116 = &v95 - v28;
  v29 = sub_100003CDC(qword_1001358E0, &unk_1000F57E0);
  v31 = __chkstk_darwin(v29, v30);
  v112 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v31, v33);
  v36 = &v95 - v35;
  v37 = *(v34 + 48);
  v111 = v34;
  v38 = *(v34 + 64);
  v117 = v19;
  v39 = *(v19 + 56);
  v39(&v95 - v35, 1, 1, v18);
  v108 = v37;
  v39(&v36[v37], 1, 1, v18);
  v106 = v38;
  v39(&v36[v38], 1, 1, v18);
  if (!*(a4 + 16))
  {
    goto LABEL_6;
  }

  v40 = sub_100061588(0x6B6E696C6572505FLL, 0xEC0000004449434BLL);
  if ((v41 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_10000B430(*(a4 + 56) + 32 * v40, &v120);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v105 = a4;
  v103 = v23;
  v42 = v118;
  v43 = v119;
  sub_1000146C4(v118, v119);
  sub_1000C7328(v42, v43, v17);
  v44 = v117;
  v104 = *(v117 + 48);
  if (v104(v17, 1, v18) != 1)
  {
    v101 = v42;
    v102 = v43;
    v53 = v116;
    v99 = *(v44 + 32);
    v100 = v44 + 32;
    v99(v116, v17, v18);
    sub_10000A184(v36, &qword_100134FB0, &qword_1000F4E60);
    v54 = v53;
    v98 = *(v44 + 16);
    v98(v36, v53, v18);
    v39(v36, 0, 1, v18);
    v55 = v123;
    if ((v123 - 1) > 1)
    {
      (*(v44 + 8))(v54, v18);
      sub_1000128D8(v101, v102);
    }

    else
    {
      v97 = v44 + 48;
      v56 = v105;
      if (!*(v105 + 16) || (v57 = sub_100061588(0x49434B746F6F425FLL, 0xE900000000000044), (v58 & 1) == 0) || (sub_10000B430(*(v56 + 56) + 32 * v57, &v120), (swift_dynamicCast() & 1) == 0))
      {
LABEL_22:
        if (v55 == 2)
        {
          v62 = 0xD000000000000019;
        }

        else
        {
          v62 = 0xD000000000000016;
        }

        if (v55 == 2)
        {
          v63 = "o prelink UUID key?";
        }

        else
        {
          v63 = "auxiliary kext collection";
        }

        v64 = v63 | 0x8000000000000000;
        sub_10001449C();
        swift_allocError();
        *v65 = v62;
        *(v65 + 8) = v64;
        *(v65 + 16) = 0xD00000000000001DLL;
        *(v65 + 24) = 0x8000000100105D10;
        v66 = v122;
        v67 = v121;
        *(v65 + 32) = v120;
        *(v65 + 48) = v67;
        *(v65 + 64) = v66;
        *(v65 + 72) = 6;
        swift_willThrow();
        sub_1000128D8(v101, v102);
        (*(v117 + 8))(v116, v18);
        return sub_10000A184(v36, qword_1001358E0, &unk_1000F57E0);
      }

      v60 = v118;
      v59 = v119;
      sub_1000146C4(v118, v119);
      v61 = v110;
      sub_1000C7328(v60, v59, v110);
      if (v104(v61, 1, v18) == 1)
      {
        sub_1000128D8(v60, v59);
        sub_10000A184(v61, &qword_100134FB0, &qword_1000F4E60);
        goto LABEL_22;
      }

      v95 = v60;
      v96 = v59;
      v71 = v109;
      v99(v109, v61, v18);
      v72 = v108;
      sub_10000A184(&v36[v108], &qword_100134FB0, &qword_1000F4E60);
      v98(&v36[v72], v71, v18);
      v39(&v36[v72], 0, 1, v18);
      if (v55 == 2)
      {
        v73 = v105;
        v74 = v116;
        v75 = v117;
        if (*(v105 + 16))
        {
          v76 = sub_100061588(0x6C6261656761505FLL, 0xED00004449434B65);
          v77 = v95;
          if (v78)
          {
            sub_10000B430(*(v73 + 56) + 32 * v76, &v120);
            if (swift_dynamicCast())
            {
              v80 = v118;
              v79 = v119;
              sub_1000146C4(v118, v119);
              v110 = v80;
              v81 = v80;
              v82 = v107;
              v123 = v79;
              sub_1000C7328(v81, v79, v107);
              if (v104(v82, 1, v18) == 1)
              {
                sub_10000A184(v82, &qword_100134FB0, &qword_1000F4E60);
                sub_10001449C();
                swift_allocError();
                *v83 = 0xD000000000000019;
                *(v83 + 8) = 0x80000001001056A0;
                *(v83 + 16) = 0xD000000000000021;
                *(v83 + 24) = 0x8000000100105D30;
                v84 = v122;
                v85 = v121;
                *(v83 + 32) = v120;
                *(v83 + 48) = v85;
                *(v83 + 64) = v84;
                *(v83 + 72) = 6;
                swift_willThrow();
                sub_1000128D8(v110, v123);
                sub_1000128D8(v77, v96);
                sub_1000128D8(v101, v102);
                v86 = *(v75 + 8);
                v86(v109, v18);
                v86(v116, v18);
                return sub_10000A184(v36, qword_1001358E0, &unk_1000F57E0);
              }

              sub_1000128D8(v110, v123);
              sub_1000128D8(v77, v96);
              sub_1000128D8(v101, v102);
              v91 = *(v75 + 8);
              v91(v109, v18);
              v91(v116, v18);
              v92 = v103;
              v93 = v99;
              v99(v103, v82, v18);
              v94 = v106;
              sub_10000A184(&v36[v106], &qword_100134FB0, &qword_1000F4E60);
              v93(&v36[v94], v92, v18);
              v39(&v36[v94], 0, 1, v18);
              goto LABEL_30;
            }
          }

          sub_1000128D8(v77, v96);
          v88 = v101;
          v89 = &v124;
        }

        else
        {
          sub_1000128D8(v101, v102);
          v88 = v95;
          v89 = &v123;
        }

        sub_1000128D8(v88, *(v89 - 32));
        v90 = *(v75 + 8);
        v90(v109, v18);
        v90(v74, v18);
      }

      else
      {
        sub_1000128D8(v95, v96);
        sub_1000128D8(v101, v102);
        v87 = *(v117 + 8);
        v87(v71, v18);
        v87(v116, v18);
      }
    }

LABEL_30:
    v68 = v112;
    sub_100054A50(v36, v112);
    v69 = *(v111 + 48);
    v70 = *(v111 + 64);
    sub_100054AC0(v68, v113);
    sub_100054AC0(v68 + v69, v114);
    sub_100054AC0(v68 + v70, v115);
    return sub_10000A184(v36, qword_1001358E0, &unk_1000F57E0);
  }

  sub_1000128D8(v42, v43);
  sub_10000A184(v17, &qword_100134FB0, &qword_1000F4E60);
LABEL_6:
  if (v123 > 1)
  {
    if (v123 == 2)
    {
      v46 = "o prelink UUID key?";
      v47 = 0xD000000000000019;
    }

    else
    {
      v46 = "f dext in the ARV at %{public}s";
      v47 = 0xD000000000000012;
    }
  }

  else
  {
    if (v123)
    {
      v45 = "system kext collection";
    }

    else
    {
      v45 = "boot kernel collection";
    }

    v46 = (v45 - 32);
    v47 = 0xD000000000000016;
  }

  v48 = v46 | 0x8000000000000000;
  sub_10001449C();
  swift_allocError();
  *v49 = v47;
  *(v49 + 8) = v48;
  *(v49 + 16) = 0xD000000000000028;
  *(v49 + 24) = 0x8000000100105CE0;
  v50 = v122;
  v51 = v121;
  *(v49 + 32) = v120;
  *(v49 + 48) = v51;
  *(v49 + 64) = v50;
  *(v49 + 72) = 6;
  swift_willThrow();
  return sub_10000A184(v36, qword_1001358E0, &unk_1000F57E0);
}

uint64_t sub_1000539C0()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = static os_signpost_type_t.begin.getter();
  if (qword_100133AB8 != -1)
  {
    swift_once();
  }

  v8 = qword_10014E978;
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 16) = xmmword_1000F3160;
  if (*(v1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) > 1u)
  {
    if (*(v1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) == 2)
    {
      v12 = "o prelink UUID key?";
      v13 = 0xD000000000000019;
    }

    else
    {
      v12 = "f dext in the ARV at %{public}s";
      v13 = 0xD000000000000012;
    }
  }

  else
  {
    if (*(v1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind))
    {
      v11 = "system kext collection";
    }

    else
    {
      v11 = "boot kernel collection";
    }

    v12 = (v11 - 32);
    v13 = 0xD000000000000016;
  }

  v14 = v12 | 0x8000000000000000;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100003D24();
  *(v10 + 32) = v13;
  *(v10 + 40) = v14;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)(v7, &_mh_execute_header, v8, "ReadPrelinkInfo", 15, 2, v6, "kind: %{public}s", 16, 2, v10);

  (*(v3 + 8))(v6, v2);
  v15 = *(v1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_arch);
  v16 = *(v1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_arch + 8);
  type[0] = 0;
  subtype[0] = 0;
  v17 = String.utf8CString.getter();
  macho_cpu_type_for_arch_name((v17 + 32), type, subtype);

  v18 = type[0];
  v19 = subtype[0];
  v20 = sub_100003C4C((v1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_data), *(v1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_data + 24));
  v21 = v45;
  v22 = sub_1000D4180(&off_100126848, v15, v16, v18 | (v19 << 32), 0, 1, *v20, v20[1]);
  if (!v21)
  {
    v23 = v22;
    sub_100054994("__PRELINK_INFO");
    sub_10005BC08(v23, type);

    if (!*&type[2] || (v24 = v51, v15 = *(&v50 + 1), , , *(&v24 + 1) >> 60 == 15))
    {
      v15 = 0x8000000100105C50;
      sub_10001449C();
      swift_allocError();
      *v25 = 0xD000000000000020;
      *(v25 + 8) = 0x8000000100105C50;
      v26 = v52;
      v28 = v50;
      v27 = v51;
      *(v25 + 16) = *type;
      *(v25 + 32) = v28;
      *(v25 + 48) = v27;
      *(v25 + 64) = v26;
      *(v25 + 72) = 24;
      swift_willThrow();
      goto LABEL_16;
    }

    v30 = sub_1000541FC(v24, *(&v24 + 1));
    if (!v30)
    {
      sub_10001449C();
      swift_allocError();
      *v41 = 0u;
      *(v41 + 16) = 0u;
      *(v41 + 32) = 0u;
      *(v41 + 48) = 0u;
      *(v41 + 64) = 0;
      *(v41 + 72) = 75;
      swift_willThrow();
      sub_100014988(v24, *(&v24 + 1));
      goto LABEL_16;
    }

    v15 = v30;
    if (v30->data)
    {
      v31 = sub_100061588(0x56726567616E614DLL, 0xEE006E6F69737265);
      if (v32)
      {
        sub_10000B430(*(v15 + 56) + 32 * v31, type);
        sub_10000B48C(type, subtype);
        sub_10000B430(subtype, v47);
        if ((swift_dynamicCast() & 1) == 0)
        {

          v15 = 0x8000000100105C80;
          sub_10001449C();
          swift_allocError();
          *v36 = 0xD000000000000037;
          *(v36 + 8) = 0x8000000100105C80;
          v42 = v52;
          v44 = v50;
          v43 = v51;
          *(v36 + 16) = *type;
          *(v36 + 32) = v44;
          *(v36 + 48) = v43;
          *(v36 + 64) = v42;
          v40 = 24;
          goto LABEL_26;
        }

        v33 = v46;
        if (*(v1 + 16) < v46)
        {

          *type = 0;
          *&type[2] = 0xE000000000000000;
          _StringGuts.grow(_:)(21);

          *type = 0xD000000000000013;
          *&type[2] = 0x8000000100105CC0;
          v47[0] = v33;
          v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v34);

          v15 = *type;
          v35 = *&type[2];
          sub_10001449C();
          swift_allocError();
          *v36 = v15;
          *(v36 + 8) = v35;
          v37 = v52;
          v39 = v50;
          v38 = v51;
          *(v36 + 16) = *type;
          *(v36 + 32) = v39;
          *(v36 + 48) = v38;
          *(v36 + 64) = v37;
          v40 = 25;
LABEL_26:
          *(v36 + 72) = v40;
          swift_willThrow();
          sub_100014988(v24, *(&v24 + 1));
          sub_100003C90(subtype);
          goto LABEL_16;
        }

        sub_100003C90(subtype);
      }
    }

    sub_100014988(v24, *(&v24 + 1));
    sub_100053FDC(v1);
    return v15;
  }

  sub_100054994("__PRELINK_INFO");
LABEL_16:
  sub_100053FDC(v1);
  return v15;
}

uint64_t sub_100053FDC(uint64_t a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = static os_signpost_type_t.end.getter();
  if (qword_100133AB8 != -1)
  {
    swift_once();
  }

  v8 = 0xD000000000000016;
  v9 = qword_10014E978;
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000F3160;
  if (*(a1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) > 1u)
  {
    if (*(a1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) == 2)
    {
      v11 = "o prelink UUID key?";
      v8 = 0xD000000000000019;
    }

    else
    {
      v11 = "f dext in the ARV at %{public}s";
      v8 = 0xD000000000000012;
    }
  }

  else if (*(a1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind))
  {
    v11 = "auxiliary kext collection";
  }

  else
  {
    v11 = "system kext collection";
  }

  v12 = v11 | 0x8000000000000000;
  *(v10 + 56) = &type metadata for String;
  v13 = v10;
  *(v10 + 64) = sub_100003D24();
  *(v13 + 32) = v8;
  *(v13 + 40) = v12;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)(v7, &_mh_execute_header, v9, "ReadPrelinkInfo", 15, 2, v6, "kind: %{public}s", 16, 2, v13);

  return (*(v3 + 8))(v6, v2);
}

CFStringRef sub_1000541FC(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v12, 0, 14);
      goto LABEL_15;
    }

    v5 = *(a1 + 16);

    v6 = __DataStorage._bytes.getter();
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = __DataStorage._offset.getter();
    v8 = v5 - v7;
    if (!__OFSUB__(v5, v7))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v12[0] = a1;
    LOWORD(v12[1]) = a2;
    BYTE2(v12[1]) = BYTE2(a2);
    BYTE3(v12[1]) = BYTE3(a2);
    BYTE4(v12[1]) = BYTE4(a2);
    BYTE5(v12[1]) = BYTE5(a2);
LABEL_15:
    v10 = sub_10009ECF4(v12);
    sub_1000128D8(a1, a2);
    return v10;
  }

  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = __DataStorage._bytes.getter();
  if (v6)
  {
    v9 = __DataStorage._offset.getter();
    v8 = a1 - v9;
    if (!__OFSUB__(a1, v9))
    {
LABEL_12:
      v6 = (v6 + v8);
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
  }

LABEL_13:
  __DataStorage._length.getter();
  v10 = sub_1000549E8(v6, a1, a2);
  sub_1000128D8(a1, a2);
  return v10;
}

uint64_t sub_1000543C0()
{
  v1 = OBJC_IVAR____TtC10driverkitd16KernelCollection_path;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100003C90((v0 + OBJC_IVAR____TtC10driverkitd16KernelCollection_data));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for KernelCollection(uint64_t a1)
{
  result = qword_100135808;
  if (!qword_100135808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000544D4(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100054590()
{
  v1 = 0xD000000000000016;
  if (*(v0 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) > 1u)
  {
    if (*(v0 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) == 2)
    {
      v2 = "o prelink UUID key?";
      v1 = 0xD000000000000019;
    }

    else
    {
      v2 = "f dext in the ARV at %{public}s";
      v1 = 0xD000000000000012;
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind))
  {
    v2 = "auxiliary kext collection";
  }

  else
  {
    v2 = "system kext collection";
  }

  v3 = v2 | 0x8000000000000000;
  String.append(_:)(*&v1);

  v4._countAndFlagsBits = 544497952;
  v4._object = 0xE400000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = URL.path.getter();
  String.append(_:)(v5);

  return 0;
}

Swift::Int sub_1000546A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_10005494C(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
  return Hasher._finalize()();
}

void sub_10005475C(uint64_t a1)
{
  v2 = *v1;
  type metadata accessor for URL();
  sub_10005494C(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
}

Swift::Int sub_1000547F8(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *v1;
  type metadata accessor for URL();
  sub_10005494C(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
  return Hasher._finalize()();
}

BOOL sub_1000548A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return (static URL.== infix(_:_:)() & 1) != 0 && *(v2 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) == *(v3 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind);
}

uint64_t sub_10005494C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

CFStringRef sub_1000549E8(CFStringRef result, uint64_t a2, unint64_t a3)
{
  if (result)
  {
    v3 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v3 != 2 || !__OFSUB__(*(a2 + 24), *(a2 + 16)))
      {
        return sub_10009ECF4(result);
      }

      __break(1u);
    }

    else
    {
      if (!v3 || !__OFSUB__(HIDWORD(a2), a2))
      {
        return sub_10009ECF4(result);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100054A50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(qword_1001358E0, &unk_1000F57E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100054AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100054B98()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100054BD0(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;

  v4 = *(*(*((v3 & v2) + 0x50) - 8) + 8);
  v5 = a1 + *((swift_isaMask & *a1) + 0x70);

  return v4(v5);
}

uint64_t sub_100054CB0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100054CF0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100054DC0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_100054EAC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100054EC8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100054F10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_100054F6C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v63 = a3;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LookupSpec(0);
  __chkstk_darwin(v11, v12);
  v14 = (&v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005B218(a1, v14, type metadata accessor for LookupSpec);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v7 + 32))(v10, v14, v6);
      v46 = v3[5];
      if (*(v46 + 16) && (v47 = sub_100061740(v10), (v48 & 1) != 0))
      {
        v32 = *(*(v46 + 56) + 8 * v47);
        v49 = *(v7 + 8);

        v49(v10, v6);
        if (!a2)
        {
          return v32;
        }
      }

      else
      {
        (*(v7 + 8))(v10, v6);
        v32 = 0;
        if (!a2)
        {
          return v32;
        }
      }

      goto LABEL_49;
    }

    v28 = v3[4];
    if (*(v28 + 16))
    {
      v29 = sub_100061588(*v14, v14[1]);
      v31 = v30;

      if (v31)
      {
        v32 = *(*(v28 + 56) + 8 * v29);
        goto LABEL_21;
      }
    }

    else
    {
    }

LABEL_48:
    v32 = 0;
    if (!a2)
    {
      return v32;
    }

    goto LABEL_49;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v33 = v3[6];
    if (*(v33 + 16))
    {
      v34 = sub_1000616D4(*v14);
      if (v35)
      {
        v32 = *(*(v33 + 56) + 8 * v34);
LABEL_21:

        if (!a2)
        {
          return v32;
        }

        goto LABEL_49;
      }
    }

    goto LABEL_48;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v16 = *v14;
    *&v64[0] = v3[3];
    if ((*&v64[0] & 0xC000000000000001) != 0)
    {
      v17 = &_swiftEmptyDictionarySingleton;
      *&v66[0] = &_swiftEmptyDictionarySingleton;
      v18 = __CocoaDictionary.makeIterator()();

      v19 = __CocoaDictionary.Iterator.next()();
      if (v19)
      {
        v21 = v20;
        v22 = v19;
        type metadata accessor for OSExtension(0);
        v23 = v22;
        do
        {
          v69 = v23;
          swift_dynamicCast();
          v68 = v21;
          type metadata accessor for RealizedInfo(0);
          swift_dynamicCast();
          v25 = v70;
          if (!v70)
          {
            break;
          }

          v26 = v69;
          if (v16 == *v70)
          {
            v27 = v17[2];
            if (v17[3] <= v27)
            {
              sub_1000329C0(v27 + 1, 1);
            }

            v17 = *&v66[0];
            sub_100057540(v25, v26, *&v66[0]);
          }

          else
          {
          }

          v23 = __CocoaDictionary.Iterator.next()();
          v21 = v24;
        }

        while (v23);
      }

      v50 = v18 | 0x8000000000000000;
LABEL_41:
      sub_1000145A4(v50);
      goto LABEL_45;
    }

    v17 = sub_100057DF0(v52, v16);
    v53 = v64;
  }

  else
  {
    v70 = v3[3];
    if ((v70 & 0xC000000000000001) != 0)
    {
      v17 = &_swiftEmptyDictionarySingleton;
      v69 = &_swiftEmptyDictionarySingleton;
      v36 = __CocoaDictionary.makeIterator()();

      v37 = __CocoaDictionary.Iterator.next()();
      if (v37)
      {
        v39 = v38;
        v40 = v37;
        type metadata accessor for OSExtension(0);
        v41 = v40;
        do
        {
          *&v66[0] = v41;
          swift_dynamicCast();
          v68 = v39;
          type metadata accessor for RealizedInfo(0);
          swift_dynamicCast();
          v43 = *&v64[0];
          if (!*&v64[0])
          {
            break;
          }

          v44 = *&v66[0];
          sub_1000138F8(*&v64[0] + 24, v64);
          if (v65)
          {

            sub_100013954(v64);
            memset(v66, 0, sizeof(v66));
            v67 = 0;
            sub_10000A184(v66, &qword_1001342A8, &unk_1000F39C0);
          }

          else
          {
            sub_100009F34(v64, v66);

            sub_10000A184(v66, &qword_1001342A8, &unk_1000F39C0);

            v45 = v17[2];
            if (v17[3] <= v45)
            {
              sub_1000329C0(v45 + 1, 1);
            }

            v17 = v69;
            sub_100057540(v43, v44, v69);
          }

          v41 = __CocoaDictionary.Iterator.next()();
          v39 = v42;
        }

        while (v41);
      }

      v50 = v36 | 0x8000000000000000;
      goto LABEL_41;
    }

    v17 = sub_100057C90(v54);
    v53 = &v70;
  }

  sub_10000A184(v53, &qword_100135A68, &unk_1000F59B8);
LABEL_45:
  v32 = sub_100057BC0(v17, v51);

  if (!a2)
  {
    return v32;
  }

LABEL_49:
  if (v32)
  {
    *&v66[0] = _swiftEmptyArrayStorage;
    if (v32 >> 62)
    {
      goto LABEL_69;
    }

    v55 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_52:
    sub_100057C70(a2, v63);

    if (v55)
    {
      v56 = 0;
      while (1)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v58 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
LABEL_63:
            __break(1u);
LABEL_64:
            v59 = *&v66[0];
            goto LABEL_66;
          }
        }

        else
        {
          if (v56 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_69:
            v55 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_52;
          }

          v57 = *(v32 + 8 * v56 + 32);

          v58 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            goto LABEL_63;
          }
        }

        if (a2(v57))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v56;
        if (v58 == v55)
        {
          goto LABEL_64;
        }
      }
    }

    v59 = _swiftEmptyArrayStorage;
LABEL_66:
    v60 = v63;
    sub_100057C80(a2, v63);

    sub_100057C80(a2, v60);
    return v59;
  }

  return v32;
}

uint64_t type metadata accessor for LookupSpec(uint64_t a1)
{
  result = qword_100135AF8;
  if (!qword_100135AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000556D0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = __CocoaDictionary.lookup(_:)();

    if (v2)
    {
      type metadata accessor for RealizedInfo(0);
      swift_dynamicCast();
    }
  }

  else if (*(a2 + 16))
  {
    sub_100061968(a1);
    if (v3)
    {
    }
  }
}

uint64_t sub_100055784(uint64_t a1)
{
  v3 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v35 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v14 = &v35 - v13;
  v15 = *(a1 + 24);
  sub_1000556D0(v15, *(v1 + 24));
  v17 = v16;
  if (!v16)
  {
    return v17 != 0;
  }

  v37 = v14;

  sub_1000368E0(v15);

  v18 = sub_1000D7374();
  v20 = v19;
  v39 = v1;
  v22 = sub_100025148(v40, v18, v19);
  if (*v21)
  {
    v23 = v21;
    v36 = v17;

    v24 = 0;
    v17 = sub_100059B78(v23, a1);

    if (*v23 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      if (v25 >= v17)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v25 = *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25 >= v17)
      {
LABEL_5:
        sub_100059AA0(v17, v25);
        (v22)(v40, 0);
        v17 = v36;
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  (v22)(v40, 0);
  v24 = 0;
LABEL_7:

  sub_1000D7444(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000A184(v6, &unk_1001389D0, &qword_1000F4F60);
    goto LABEL_15;
  }

  v26 = v37;
  (*(v8 + 32))(v37, v6, v7);
  v6 = v38;
  (*(v8 + 16))(v38, v26, v7);
  v22 = sub_1000251D0(v40);
  if (!*v27)
  {
    (v22)(v40, 0);
    goto LABEL_14;
  }

  v28 = v27;

  v20 = sub_100059B78(v28, a1);

  if (*v28 >> 62)
  {
LABEL_26:
    v29 = _CocoaArrayWrapper.endIndex.getter();
    if (v29 >= v20)
    {
      goto LABEL_12;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v29 = *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29 < v20)
  {
    goto LABEL_27;
  }

LABEL_12:
  sub_100059AA0(v20, v29);
  (v22)(v40, 0);
LABEL_14:
  v30 = *(v8 + 8);
  v30(v6, v7);
  v30(v37, v7);
LABEL_15:
  sub_1000138F8(v15 + 24, v40);
  if (v41 != 1)
  {
    sub_100013954(v40);
    return v17 != 0;
  }

  v22 = sub_100025360(v40, *(v40[0] + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
  if (!*v31)
  {
    (v22)(v40, 0);
    goto LABEL_22;
  }

  v32 = v31;

  v24 = sub_100059B78(v32, a1);

  if (*v32 >> 62)
  {
LABEL_28:
    result = _CocoaArrayWrapper.endIndex.getter();
    v34 = result;
    if (result >= v24)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

  v34 = *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v34 >= v24)
  {
LABEL_19:
    sub_100059AA0(v24, v34);
    (v22)(v40, 0);
LABEL_22:

    return v17 != 0;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100055C50(uint64_t a1)
{
  v2 = type metadata accessor for LookupSpec(0);
  __chkstk_darwin(v2, v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  swift_storeEnumTagMultiPayload();
  sub_100056FA0(v5, 0, 0, &v17);
  v7 = v17;
  if (v23)
  {
    *v16 = v17;
    *&v16[24] = v19;
    *&v16[40] = v20;
    *&v16[56] = v21;
    *&v16[72] = v22;
    *&v16[8] = v18;
    sub_10005B2E8();
    swift_willThrowTypedImpl();
    sub_100059150(v5);
    v12 = *&v16[32];
    v13 = *&v16[48];
    v14 = *&v16[64];
    v15 = *&v16[80];
    v11[0] = *v16;
    v11[1] = *&v16[16];
    sub_10005B33C(v11);
  }

  else
  {
    sub_100059150(v5);
    sub_1000138F8(*(v7 + 24) + 24, v11);
    if (!BYTE8(v12))
    {
      sub_100009F34(v11, v9);
      sub_10000A184(v9, &qword_1001342A8, &unk_1000F39C0);
      return v7;
    }

    sub_10000A184(&v17, &qword_100135A78, &unk_1000F59C8);
    sub_100013954(v11);
    memset(v9, 0, sizeof(v9));
    v10 = 0;
    sub_10000A184(v9, &qword_1001342A8, &unk_1000F39C0);
  }

  return 0;
}

uint64_t sub_100055E4C(__n128 a1)
{
  if ((*(v1 + 80) & 0x8000000000000000) != 0)
  {
    return sub_1000AA704();
  }

  _StringGuts.grow(_:)(17);
  v2 = sub_1000AA704();

  v3._countAndFlagsBits = 0x736E657478652820;
  v3._object = 0xEC000000206E6F69;
  String.append(_:)(v3);
  v4._countAndFlagsBits = sub_1000D77B8();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return v2;
}

void sub_100055F6C(uint64_t a1)
{
  v2 = *v1;
  if (*v1 >> 62)
  {
LABEL_17:
    v9 = a1;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v9;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = a1;
      v6 = v2 & 0xC000000000000001;
      v10 = v3;
      while (1)
      {
        if (v6)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v7 = *(v2 + 8 * v4 + 32);

          v8 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_24;
          }
        }

        if (*(*(v7 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_collection) + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) == v5)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          a1 = specialized ContiguousArray._endMutation()();
          v3 = v10;
          v6 = v2 & 0xC000000000000001;
        }

        else
        {
        }

        ++v4;
        if (v8 == v3)
        {
          goto LABEL_14;
        }
      }
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

LABEL_19:
  if ((_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
LABEL_24:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_25;
    }
  }

  else if (!_swiftEmptyArrayStorage[2])
  {
LABEL_25:

    return;
  }

  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_25;
  }

  if (_swiftEmptyArrayStorage[2])
  {

    goto LABEL_25;
  }

  __break(1u);
}

uint64_t sub_100056178(uint64_t a1)
{
  v4 = v1;
  v6 = type metadata accessor for URL();
  v72 = *(v6 - 8);
  v73 = v6;
  v8 = __chkstk_darwin(v6, v7);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v8, v11);
  v71 = &v70 - v13;
  v15 = __chkstk_darwin(v12, v14);
  v74 = &v70 - v16;
  __chkstk_darwin(v15, v17);
  v19 = &v70 - v18;
  v20 = *(a1 + 24);
  sub_1000556D0(v20, v1[3]);
  if (v21)
  {
    v22 = v21;
    v23 = static os_log_type_t.info.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1000F3160;
    v24 = sub_1000D77B8();
    v3 = v25;
    *(v2 + 56) = &type metadata for String;
    *(v2 + 64) = sub_100003D24();
    *(v2 + 32) = v24;
    *(v2 + 40) = v3;
    sub_10001491C();
    v26 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v26, "Collision: replacing %{public}s", 31, 2, v2);

    sub_100055784(v22);
  }

  v27 = v4[3];
  if ((v27 & 0xC000000000000001) != 0)
  {
    if (v27 < 0)
    {
      v28 = v4[3];
    }

    else
    {
      v28 = v27 & 0xFFFFFFFFFFFFFF8;
    }

    v29 = __CocoaDictionary.count.getter();
    v30 = v74;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    v4[3] = sub_100036DB4(v28, v29 + 1);
  }

  else
  {

    v30 = v74;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v75[0] = v4[3];
  sub_100038FA4(a1, v20, isUniquelyReferenced_nonNull_native);
  v4[3] = *&v75[0];
  v32 = sub_1000D7374();
  sub_100056994(a1, v32, v33, v4 + 4, 1);

  sub_1000138F8(v20 + 24, v75);
  if (v76)
  {
    sub_100013954(v75);
    sub_1000138F8(v20 + 24, v75);
    if (v76 != 1)
    {
      return sub_100013954(v75);
    }

    v2 = *&v75[0];
    v34 = OBJC_IVAR____TtC10driverkitd16KernelCollection_path;
    v35 = v4 + 5;
    v20 = v72;
    if (*(v4[5] + 16))
    {
      sub_100061740(*&v75[0] + OBJC_IVAR____TtC10driverkitd16KernelCollection_path);
      v19 = v73;
      if (v36)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = v73;
    }

    v51 = swift_isUniquelyReferenced_nonNull_native();
    *&v75[0] = *v35;
    sub_100038DC4(_swiftEmptyArrayStorage, v2 + v34, v51);
    *v35 = *&v75[0];
LABEL_29:
    (*(v20 + 16))(v10, v2 + v34, v19);
    v3 = sub_1000251D0(v75);
    if (!*v52)
    {
      (v3)(v75, 0);
LABEL_33:
      (*(v20 + 8))(v10, v19);
      v54 = *(v2 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind);
      v56 = v4[6];
      v55 = v4 + 6;
      if (!*(v56 + 16) || (sub_1000616D4(*(v2 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind)), (v57 & 1) == 0))
      {
        v58 = swift_isUniquelyReferenced_nonNull_native();
        *&v75[0] = *v55;
        sub_100038C78(_swiftEmptyArrayStorage, v54, v58);
        *v55 = *&v75[0];
      }

      v60 = sub_100025360(v75, v54);
      if (*v59)
      {
        v61 = v59;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        (v60)(v75, 0);
      }

      else
      {
        (v60)(v75, 0);
      }
    }

    v53 = v52;

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_31:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (v3)(v75, 0);
      goto LABEL_33;
    }

LABEL_44:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_31;
  }

  sub_100009F34(v75, v77);
  sub_100009F34(v77, v78);
  v37 = v79;
  v38 = v80;
  sub_100003C4C(v78, v79);
  (*(v38 + 64))(v37, v38);
  v40 = v4 + 5;
  v39 = v4[5];
  if (*(v39 + 16) && (v41 = sub_100061740(v19), (v42 & 1) != 0))
  {
    v43 = *(*(v39 + 56) + 8 * v41);
    v44 = *(v72 + 8);

    result = v44(v19, v73);
    if (v43 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v46 = result;
      if (result)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v46 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
LABEL_19:
        if (v46 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v46; ++i)
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v48 = *(v43 + 8 * i + 32);
          }

          sub_100055784(v48);
        }

        v50 = v72;
        v49 = v73;
        v30 = v74;
        goto LABEL_47;
      }
    }

    v50 = v72;
    v49 = v73;
  }

  else
  {
    v50 = v72;
    v49 = v73;
    v44 = *(v72 + 8);
    v44(v19, v73);
  }

LABEL_47:
  v62 = v79;
  v63 = v80;
  sub_100003C4C(v78, v79);
  (*(v63 + 64))(v62, v63);
  v64 = v71;
  if (!*(*v40 + 16) || (sub_100061740(v30), (v65 & 1) == 0))
  {
    v66 = swift_isUniquelyReferenced_nonNull_native();
    *&v75[0] = *v40;
    sub_100038DC4(_swiftEmptyArrayStorage, v30, v66);
    *v40 = *&v75[0];
  }

  (*(v50 + 16))(v64, v30, v49);
  v68 = sub_1000251D0(v75);
  if (*v67)
  {
    v69 = v67;

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    (v68)(v75, 0);
  }

  else
  {
    (v68)(v75, 0);
  }

  v44(v64, v49);
  v44(v30, v49);
  return sub_100003C90(v78);
}

uint64_t sub_100056994(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  if (!*(*a4 + 16) || (sub_100061588(a2, a3), (v10 & 1) == 0))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26[0] = *a4;
    sub_100038F90(_swiftEmptyArrayStorage, a2, a3, isUniquelyReferenced_nonNull_native);

    *a4 = v26[0];
  }

  if (a5)
  {
    v12 = sub_100025148(v26, a2, a3);
    v14 = v12;
    if (!*v13)
    {
      return (v12)(v26, 0);
    }

    v15 = v13;
    v25 = a1;
    __chkstk_darwin(v12, v13);
    v24[2] = sub_10002F090;
    v24[3] = 0;
    v24[4] = &v25;
    v17 = sub_1000573A0(sub_10005B36C, v24, v16);
    if (v18)
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      return (v14)(v26, 0);
    }

    v23 = v17;
    if (*v15 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result >= v23)
      {
LABEL_18:
        if ((v23 & 0x8000000000000000) == 0)
        {

          sub_10005A794(v23, v23, a1);

          return (v14)(v26, 0);
        }

        goto LABEL_23;
      }
    }

    else
    {
      result = *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= v23)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v20 = sub_100025148(v26, a2, a3);
  if (!*v19)
  {
    return (v20)(v26, 0);
  }

  v21 = v19;

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return (v20)(v26, 0);
}

uint64_t sub_100056C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LookupSpec(0);
  __chkstk_darwin(v4, v4);
  v6 = (v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = a1;
  v6[1] = a2;
  swift_storeEnumTagMultiPayload();

  sub_10005719C(v6, sub_10005731C, 0, &v12);
  v7 = v12;
  sub_100059150(v6);
  if (v18)
  {
    *v11 = v7;
    *&v11[8] = v13;
    *&v11[24] = v14;
    *&v11[40] = v15;
    *&v11[56] = v16;
    *&v11[72] = v17;
    sub_10005B2E8();
    swift_willThrowTypedImpl();
    v9[2] = *&v11[32];
    v9[3] = *&v11[48];
    v9[4] = *&v11[64];
    v10 = *&v11[80];
    v9[0] = *v11;
    v9[1] = *&v11[16];
    sub_10005B33C(v9);
    return 0;
  }

  return v7;
}

void sub_100056DAC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 8);

  v8 = sub_10005ABBC(v7, a1, a2);

  if (!v8[2])
  {

    _StringGuts.grow(_:)(40);

    v18._countAndFlagsBits = a1;
    v18._object = a2;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 0x6F6620746F6E2027;
    v19._object = 0xEB00000000646E75;
    String.append(_:)(v19);
    v12 = 0xD00000000000001BLL;
    *&v15 = 0x8000000100105E70;
    v20 = 0x8000000000000000;
    v17 = 10;
LABEL_12:
    *a3 = v12;
    *(a3 + 8) = v15;
    *(a3 + 24) = v16;
    *(a3 + 40) = v13;
    *(a3 + 56) = v14;
    *(a3 + 72) = v17;
    *(a3 + 80) = v20;
    return;
  }

  sub_10005BA88(v8, &v32);
  v9 = v32;
  if (!v32)
  {
    goto LABEL_14;
  }

  sub_10001465C(v33);
  v10 = v8[2];
  if (!v10)
  {

    v12 = _swiftEmptyArrayStorage;
LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  if (v10 != 1)
  {
    v12 = sub_1000326B8(v8[2], 0);
    v21 = sub_1000596B4(v26, v12 + 32, v10, v8);
    sub_1000145A4(v26[0]);
    if (v21 == v10)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_10005BA88(v8, v26);

  if (v26[0])
  {
    v11 = v31;
    v24 = v29;
    v25 = v30;
    v22 = v27;
    v23 = v28;
    v12 = v26[1];

    v13 = v24;
    v14 = v25;
    v15 = v22;
    v16 = v23;
    v17 = v11 & 0x7F;
LABEL_11:
    v20 = v9 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
}

unint64_t sub_100056FA0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for LookupSpec(0);
  __chkstk_darwin(v8, v9);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_100054F6C(a1, a2, a3);
  if (!result)
  {
    goto LABEL_10;
  }

  v13 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v20 = result;
  v21 = _CocoaArrayWrapper.endIndex.getter();
  result = v20;
  if (!v21)
  {
LABEL_9:

LABEL_10:
    sub_10005B218(a1, v11, type metadata accessor for LookupSpec);
    if (swift_getEnumCaseMultiPayload())
    {
      v14 = 0x8000000100105E30;
      LOBYTE(v26[0]) = 1;
      result = sub_100059150(v11);
      v18 = v26[0];
      *&v19 = vdupq_n_s64(0xD000000000000032).u64[0];
      *(&v19 + 1) = 0x8000000100105E30;
      v8 = 0x8000000000000000;
      a1 = 10;
    }

    else
    {
      sub_100056DAC(*v11, v11[1], v26);
      v24 = v26[0];
      v25 = v26[1];
      v22 = v26[2];
      v23 = v26[3];
      v14 = v27;
      a1 = v28;
      v8 = v29;

      v16 = v22;
      v17 = v23;
      v19 = v24;
      v15 = v25;
      v18 = 1;
    }

    goto LABEL_13;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*(v13 + 16))
  {
    v14 = *(result + 32);

LABEL_7:

    v18 = 0;
    *&v19 = v14;
LABEL_13:
    *a4 = v19;
    *(a4 + 16) = v15;
    *(a4 + 32) = v16;
    *(a4 + 48) = v17;
    *(a4 + 64) = v14;
    *(a4 + 72) = a1;
    *(a4 + 80) = v8;
    *(a4 + 88) = v18;
    return result;
  }

  __break(1u);
  return result;
}

void *sub_10005719C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for LookupSpec(0);
  __chkstk_darwin(v9, v10);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_100054F6C(a1, a2, a3);
  if (result)
  {
    v18 = 0;
    *&v14 = result;
  }

  else
  {
    sub_10005B218(a1, v12, type metadata accessor for LookupSpec);
    if (swift_getEnumCaseMultiPayload())
    {
      v4 = 0x8000000100105E30;
      LOBYTE(v23[0]) = 1;
      result = sub_100059150(v12);
      v18 = v23[0];
      *&v14 = vdupq_n_s64(0xD000000000000032).u64[0];
      *(&v14 + 1) = 0x8000000100105E30;
      v9 = 0x8000000000000000;
      a1 = 10;
    }

    else
    {
      sub_100056DAC(*v12, v12[1], v23);
      v21 = v23[0];
      v22 = v23[1];
      v19 = v23[2];
      v20 = v23[3];
      v4 = v24;
      a1 = v25;
      v9 = v26;

      v16 = v19;
      v17 = v20;
      v14 = v21;
      v15 = v22;
      v18 = 1;
    }
  }

  *a4 = v14;
  *(a4 + 16) = v15;
  *(a4 + 32) = v16;
  *(a4 + 48) = v17;
  *(a4 + 64) = v4;
  *(a4 + 72) = a1;
  *(a4 + 80) = v9;
  *(a4 + 88) = v18;
  return result;
}

BOOL sub_10005731C(uint64_t a1)
{
  sub_1000138F8(*(a1 + 24) + 24, v3);
  v1 = v4;
  if (v4)
  {
    sub_100013954(v3);
    memset(v5, 0, sizeof(v5));
    v6 = 0;
  }

  else
  {
    sub_100009F34(v3, v5);
  }

  sub_10000A184(v5, &qword_1001342A8, &unk_1000F39C0);
  return v1 == 0;
}

unint64_t sub_1000573A0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_1000574BC(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = a3 + 32; ; i += 40)
  {
    v8 = a1(i, a2);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t sub_100057540(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_1000D7374();
  String.hash(into:)();

  sub_1000D7614();
  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();

    v13 = OSKextParseVersionCFString();
  }

  else
  {
    v13 = 0;
  }

  Hasher._combine(_:)(v13);
  sub_1000138F8(a1 + 24, v21);
  if (v22)
  {
    if (v22 == 1)
    {
      v14 = *&v21[0];
      sub_10005B1D0(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v14 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
    }
  }

  else
  {
    sub_100009F34(v21, v18);
    v15 = v19;
    v16 = v20;
    sub_100003C4C(v18, v19);
    (*(v16 + 64))(v15, v16);
    sub_10005B1D0(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v7 + 8))(v10, v6);
    sub_100003C90(v18);
  }

  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
  *(a3[6] + 8 * result) = a1;
  *(a3[7] + 8 * result) = a2;
  ++a3[2];
  return result;
}

__n128 sub_100057820(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_1000D7374();
  String.hash(into:)();

  sub_1000D7614();
  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();

    v13 = OSKextParseVersionCFString();
  }

  else
  {
    v13 = 0;
  }

  Hasher._combine(_:)(v13);
  sub_1000138F8(a1 + 24, v25);
  if (v26)
  {
    if (v26 == 1)
    {
      v14 = *&v25[0];
      sub_10005B1D0(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v14 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
    }
  }

  else
  {
    sub_100009F34(v25, v22);
    v15 = v23;
    v16 = v24;
    sub_100003C4C(v22, v23);
    (*(v16 + 64))(v15, v16);
    sub_10005B1D0(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v7 + 8))(v10, v6);
    sub_100003C90(v22);
  }

  Hasher._finalize()();
  v17 = _HashTable.nextHole(atOrAfter:)();
  *(a3 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
  *(a3[6] + 8 * v17) = a1;
  v18 = (a3[7] + 80 * v17);
  *(v18 + 57) = *(a2 + 57);
  v19 = *(a2 + 48);
  v18[2] = *(a2 + 32);
  v18[3] = v19;
  result = *a2;
  v21 = *(a2 + 16);
  *v18 = *a2;
  v18[1] = v21;
  ++a3[2];
  return result;
}

uint64_t sub_100057B20(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

void *sub_100057BC0(unint64_t a1, __n128 a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v3 = __CocoaDictionary.count.getter();
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v4 = sub_100041D50();

    sub_100058F5C(&v7, (v4 + 32), v3, v2);
    v2 = v5;
    sub_1000145A4(v7);
    if (v2 == v3)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v3 = *(v2 + 16);
    if (!v3)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v4;
}

double sub_100057C70(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_100057C80(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t *sub_100057C90(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    __chkstk_darwin(a1, v8);
    v10 = &v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_10005806C(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_1000582CC(v13, v7, v3);

  if (!v14)
  {
    return v15;
  }

  return result;
}

unint64_t *sub_100057DF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = (1 << v6) + 63;
  v9 = v8 >> 6;
  v10 = 8 * (v8 >> 6);
  if (v7 <= 0xD)
  {
    goto LABEL_2;
  }

  v14 = 8 * (v8 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v10 = v14;
LABEL_2:
    __chkstk_darwin(a1, v10);
    v12 = &v18 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    result = sub_100057F5C(v12, v9, v5, a2);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v15 = swift_slowAlloc();
  v16 = v3;
  v17 = sub_100058244(v15, v9, v5, a2);

  if (!v16)
  {
    return v17;
  }

  return result;
}

unint64_t *sub_100057F5C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (**(*(a3 + 48) + 8 * v12) == a4)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_100058624(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_100058624(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10005806C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v16 = result;
  v21 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    sub_1000138F8(*(*(a3 + 48) + 8 * v13) + 24, v17);
    if (v18)
    {

      sub_100013954(v17);
      memset(v19, 0, sizeof(v19));
      v20 = 0;
      sub_10000A184(v19, &qword_1001342A8, &unk_1000F39C0);
    }

    else
    {
      sub_100009F34(v17, v19);

      sub_10000A184(v19, &qword_1001342A8, &unk_1000F39C0);

      *(v16 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_100058624(v16, a2, v21, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_100058624(v16, a2, v21, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100058244(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_100057F5C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_1000582CC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_10005806C(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_100058344(unint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10005A880(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

Swift::Int sub_1000583E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100003CDC(&qword_100135118, &qword_1000F4FF8);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v32 = *(v17 + v16);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_100058624(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100003CDC(&qword_100135048, &qword_1000F4F08);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v15 = v12 | (v11 << 6);
    v16 = *(*(v4 + 48) + 8 * v15);
    v17 = *(*(v4 + 56) + 8 * v15);

    result = sub_100057540(v16, v17, v9);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v14 = a1[v11];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100058768(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DriverBinEntry(0);
  v52 = *(v8 - 8);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v59 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v51 = v47 - v13;
  v58 = type metadata accessor for UUID();
  v56 = *(v58 - 8);
  v15 = __chkstk_darwin(v58, v14);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v50 = v47 - v19;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100003CDC(&qword_100135078, &qword_1000F4F38);
  result = static _DictionaryStorage.allocate(capacity:)();
  v21 = result;
  if (a2 < 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = *a1;
  }

  v23 = 0;
  v47[1] = v56 + 16;
  v48 = a2;
  v57 = v56 + 32;
  v24 = result + 64;
  v49 = a1;
  v47[0] = a4;
  v25 = v58;
  while (v22)
  {
    v26 = v17;
    v27 = __clz(__rbit64(v22));
    v53 = (v22 - 1) & v22;
LABEL_16:
    v30 = v27 | (v23 << 6);
    v31 = a4[6];
    v32 = v56;
    v55 = *(v56 + 72);
    v33 = v50;
    (*(v56 + 16))(v50, v31 + v55 * v30, v25);
    v34 = a4[7];
    v54 = *(v52 + 72);
    v35 = v34 + v54 * v30;
    v36 = v51;
    sub_10005B218(v35, v51, type metadata accessor for DriverBinEntry);
    v37 = *(v32 + 32);
    v17 = v26;
    v37(v26, v33, v25);
    sub_10005B280(v36, v59, type metadata accessor for DriverBinEntry);
    sub_10005B1D0(&qword_100134FC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v38 = -1 << *(v21 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v24 + 8 * (v39 >> 6))) == 0)
    {
      v42 = 0;
      v43 = (63 - v38) >> 6;
      a2 = v48;
      a1 = v49;
      while (++v40 != v43 || (v42 & 1) == 0)
      {
        v44 = v40 == v43;
        if (v40 == v43)
        {
          v40 = 0;
        }

        v42 |= v44;
        v45 = *(v24 + 8 * v40);
        if (v45 != -1)
        {
          v41 = __clz(__rbit64(~v45)) + (v40 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v41 = __clz(__rbit64((-1 << v39) & ~*(v24 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
    a2 = v48;
    a1 = v49;
LABEL_26:
    *(v24 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v37((*(v21 + 48) + v41 * v55), v17, v58);
    result = sub_10005B280(v59, *(v21 + 56) + v41 * v54, type metadata accessor for DriverBinEntry);
    ++*(v21 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47[0];
    v22 = v53;
    if (!a3)
    {
      return v21;
    }
  }

  v28 = v23;
  while (1)
  {
    v23 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v23 >= a2)
    {
      return v21;
    }

    v29 = a1[v23];
    ++v28;
    if (v29)
    {
      v26 = v17;
      v27 = __clz(__rbit64(v29));
      v53 = (v29 - 1) & v29;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_100058BF8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = a3;
    if (a4[2] == a3)
    {
    }

    else
    {
      sub_100003CDC(&qword_1001350E8, &qword_1000F4FC0);
      v8 = static _DictionaryStorage.allocate(capacity:)();
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      while (v9)
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v14 = v11 | (v10 << 6);
        v15 = *(a4[6] + 8 * v14);
        v16 = (a4[7] + 80 * v14);
        v22[0] = *v16;
        v18 = v16[2];
        v17 = v16[3];
        v19 = v16[1];
        *&v23[9] = *(v16 + 57);
        v22[2] = v18;
        *v23 = v17;
        v22[1] = v19;

        sub_1000419A4(v22, &v21);
        sub_100057820(v15, v22, v8);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_20;
        }

        if (!v5)
        {
          return;
        }
      }

      v12 = v10;
      while (1)
      {
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          return;
        }

        v13 = a1[v10];
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v9 = (v13 - 1) & v13;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }
  }
}

unint64_t sub_100058D6C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_100031E70(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_100058E40(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_100058E40(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  sub_100003CDC(&qword_100135178, &qword_1000F5060);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 40 * a3;
      v15 = (v9 + 32 + 40 * a2);
      if (result != v15 || result >= v15 + 40 * v14)
      {
        result = memmove(result, v15, 40 * v14);
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  if (a3 < 1)
  {
    return sub_10000A184(a4, &qword_100135A80, &qword_1000F59D8);
  }

  result = sub_10000A990(a4, v10);
  if (a3 == 1)
  {
    return sub_10000A184(a4, &qword_100135A80, &qword_1000F59D8);
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_100058F5C(unint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v19 = -1 << *(v4 + 32);
    v9 = v4 + 64;
    v10 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v4 + 64);
    v23 = v10;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v16 = 0;
    goto LABEL_32;
  }

  v8 = __CocoaDictionary.makeIterator()();
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v4 = v8 | 0x8000000000000000;
  v23 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v16 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v24 = a3;
  v12 = 0;
  v13 = (v10 + 64) >> 6;
  v14 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!__CocoaDictionary.Iterator.next()())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      type metadata accessor for RealizedInfo(0);
      swift_dynamicCast();
      v17 = v25;
      v16 = v12;
      if (!v25)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v15 = v12;
    if (!v11)
    {
      break;
    }

    v16 = v12;
LABEL_13:
    v11 &= v11 - 1;

    if (!v17)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = v17;
    if (v14 == v24)
    {
LABEL_31:
      v16 = v12;
      goto LABEL_32;
    }

    ++a2;
    a3 = v14;
    if (__OFADD__(v14++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v16 >= v13)
    {
      break;
    }

    v11 = *(v9 + 8 * v16);
    ++v15;
    if (v11)
    {
      v12 = v16;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v12 + 1)
  {
    v22 = v12 + 1;
  }

  else
  {
    v22 = v13;
  }

  v16 = v22 - 1;
LABEL_32:
  *a1 = v4;
  a1[1] = v9;
  a1[2] = v23;
  a1[3] = v16;
  a1[4] = v11;
}

uint64_t sub_100059150(uint64_t a1)
{
  v2 = type metadata accessor for LookupSpec(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000591AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  active = type metadata accessor for ActiveDriverInfo(0);
  v35 = *(active - 8);
  v10 = __chkstk_darwin(active - 8, v9);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10, v12);
  v33 = &v30 - v14;
  v15 = a4 + 64;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v19 = 0;
    v30 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v34;
      a1 = *(v35 + 72);
      sub_10005B218(*(a4 + 56) + a1 * (v24 | (v19 << 6)), v34, type metadata accessor for ActiveDriverInfo);
      v26 = v25;
      v27 = v33;
      sub_10005B280(v26, v33, type metadata accessor for ActiveDriverInfo);
      sub_10005B280(v27, a2, type metadata accessor for ActiveDriverInfo);
      if (v21 == v32)
      {
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += a1;
      result = v21;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v29 = v19 + 1;
    }

    else
    {
      v29 = v20;
    }

    v19 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v16 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_100059410(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v42 = type metadata accessor for URL();
  v44 = *(v42 - 8);
  v9 = __chkstk_darwin(v42, v8);
  v43 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9, v11);
  v41 = &v35 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return a3;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 56;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      a3 = v40;
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      result = a1;
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    a3 = result;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1000596B4(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 80 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      *&v26[9] = *(v18 + 57);
      v25[2] = v20;
      *v26 = v19;
      v25[1] = v21;
      memmove(v11, v18, 0x49uLL);
      if (v14 == v10)
      {
        sub_1000419A4(v25, v24);
        goto LABEL_24;
      }

      v11 += 80;
      sub_1000419A4(v25, v24);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100059848(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000599A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for RealizedInfo(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100059AA0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_100057B20(result, 1);

  return sub_1000599A0(v5, v3, 0);
}

unint64_t sub_100059B78(unint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *a1;
  result = sub_10005A1A4(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = a1;
  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v55 = 0x8000000100104280;
  v50 = v3;
  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_82;
    }

    v11 = *(v5 + 8 * v9 + 32);

LABEL_16:
    v12 = *(v11 + 24);
    v51 = *(v3 + 24);
    v13 = *(v12 + 16);
    if (qword_100133A50 != -1)
    {
      swift_once();
    }

    v14 = qword_10014E8C0;
    v15 = *algn_10014E8C8;
    if (*(v13 + 16) && (v16 = sub_100061588(qword_10014E8C0, *algn_10014E8C8), (v17 & 1) != 0) && (sub_10000B430(*(v13 + 56) + 32 * v16, v54), swift_dynamicCast()))
    {
      v18 = v52;
      v19 = v53;
    }

    else
    {
      v18 = 0xD000000000000014;
      v19 = v55;
    }

    v20 = *(v51 + 16);
    if (*(v20 + 16) && (v21 = sub_100061588(v14, v15), (v22 & 1) != 0) && (sub_10000B430(*(v20 + 56) + 32 * v21, v54), swift_dynamicCast()))
    {
      v23 = v53;
      if (v18 != v52)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v23 = v55;
      if (v18 != 0xD000000000000014)
      {
        goto LABEL_31;
      }
    }

    if (v19 == v23)
    {

      goto LABEL_32;
    }

LABEL_31:
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_32:
    v25 = *(v12 + 16);
    if (*(v25 + 16) && (v26 = sub_100061588(v14, v15), (v27 & 1) != 0) && (sub_10000B430(*(v25 + 56) + 32 * v26, v54), swift_dynamicCast()))
    {
      v28 = v52;
      v29 = v53;
    }

    else
    {
      v28 = 0xD000000000000014;
      v29 = v55;
    }

    if (v28 == 0xD000000000000014 && v55 == v29)
    {

      goto LABEL_58;
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
      goto LABEL_57;
    }

    v31 = *(v12 + 16);
    if (qword_100133A70 != -1)
    {
      swift_once();
    }

    v32 = qword_10014E900;
    v33 = *algn_10014E908;
    if (*(v31 + 16) && (v34 = sub_100061588(qword_10014E900, *algn_10014E908), (v35 & 1) != 0) && (sub_10000B430(*(v31 + 56) + 32 * v34, v54), (swift_dynamicCast() & 1) != 0))
    {
      v36 = String._bridgeToObjectiveC()();

      v37 = OSKextParseVersionCFString();
    }

    else
    {
      v37 = 0;
    }

    v38 = *(v51 + 16);
    if (*(v38 + 16) && (v39 = sub_100061588(v32, v33), (v40 & 1) != 0) && (sub_10000B430(*(v38 + 56) + 32 * v39, v54), (swift_dynamicCast() & 1) != 0))
    {
      v41 = String._bridgeToObjectiveC()();

      v42 = OSKextParseVersionCFString();

      if (v37 != v42)
      {
        goto LABEL_57;
      }
    }

    else if (v37)
    {
LABEL_57:

      goto LABEL_58;
    }

    v43 = sub_1000DCBA8(v12 + 24, v51 + 24);

    if (v43)
    {
      v3 = v50;
      v10 = __OFADD__(v9++, 1);
      if (v10)
      {
        goto LABEL_83;
      }
    }

    else
    {
LABEL_58:
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_87;
          }

          v46 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v46)
          {
            goto LABEL_88;
          }

          if (v9 >= v46)
          {
            goto LABEL_89;
          }

          v44 = *(v5 + 32 + 8 * v8);
          v45 = *(v5 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_100068614();
          v47 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v47) = 0;
        }

        v48 = v5 & 0xFFFFFFFFFFFFFF8;
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v45;

        if ((v5 & 0x8000000000000000) != 0 || v47)
        {
          v5 = sub_100068614();
          v48 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_85;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_85;
        }

        if (v9 >= *(v48 + 16))
        {
          goto LABEL_86;
        }

        *(v48 + 8 * v9 + 32) = v44;

        *v49 = v5;
      }

      v10 = __OFADD__(v8++, 1);
      v3 = v50;
      if (v10)
      {
        goto LABEL_84;
      }

      v10 = __OFADD__(v9++, 1);
      if (v10)
      {
        goto LABEL_83;
      }
    }
  }

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
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

unint64_t sub_10005A1A4(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
LABEL_53:
    v40 = v2 & 0xFFFFFFFFFFFFFF8;
    v43 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v40 = a1 & 0xFFFFFFFFFFFFFF8;
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v42 = v2 & 0xC000000000000001;
  v39 = v2;
  while (v43 != v3)
  {
    if (v42)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v40 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v5 = *(v2 + 8 * v3 + 32);
    }

    v6 = *(v5 + 24);
    v47 = *(a2 + 24);
    v7 = *(v6 + 16);
    if (qword_100133A50 != -1)
    {
      swift_once();
    }

    v8 = qword_10014E8C0;
    v9 = *algn_10014E8C8;
    if (*(v7 + 16) && (v10 = sub_100061588(qword_10014E8C0, *algn_10014E8C8), (v11 & 1) != 0) && (sub_10000B430(*(v7 + 56) + 32 * v10, v46), swift_dynamicCast()))
    {
      v12 = v44;
      v13 = v45;
    }

    else
    {
      v12 = 0xD000000000000014;
      v13 = 0x8000000100104280;
    }

    v14 = *(v47 + 16);
    if (*(v14 + 16) && (v15 = sub_100061588(v8, v9), (v16 & 1) != 0) && (sub_10000B430(*(v14 + 56) + 32 * v15, v46), swift_dynamicCast()))
    {
      v17 = v45;
      if (v12 != v44)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v17 = 0x8000000100104280;
      if (v12 != 0xD000000000000014)
      {
        goto LABEL_26;
      }
    }

    if (v13 != v17)
    {
LABEL_26:
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }

LABEL_27:
    v19 = *(v6 + 16);
    if (*(v19 + 16) && (v20 = sub_100061588(v8, v9), (v21 & 1) != 0) && (sub_10000B430(*(v19 + 56) + 32 * v20, v46), swift_dynamicCast()))
    {
      v22 = v44;
      v23 = v45;
    }

    else
    {
      v22 = 0xD000000000000014;
      v23 = 0x8000000100104280;
    }

    if (v22 == 0xD000000000000014 && 0x8000000100104280 == v23)
    {

      goto LABEL_6;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      v25 = *(v6 + 16);
      if (qword_100133A70 != -1)
      {
        swift_once();
      }

      v26 = qword_10014E900;
      v27 = *algn_10014E908;
      if (*(v25 + 16) && (v28 = sub_100061588(qword_10014E900, *algn_10014E908), (v29 & 1) != 0) && (sub_10000B430(*(v25 + 56) + 32 * v28, v46), (swift_dynamicCast() & 1) != 0))
      {
        v30 = String._bridgeToObjectiveC()();

        v31 = OSKextParseVersionCFString();
      }

      else
      {
        v31 = 0;
      }

      v32 = *(v47 + 16);
      if (*(v32 + 16) && (v33 = sub_100061588(v26, v27), (v34 & 1) != 0) && (sub_10000B430(*(v32 + 56) + 32 * v33, v46), (swift_dynamicCast() & 1) != 0))
      {
        v35 = String._bridgeToObjectiveC()();

        v36 = OSKextParseVersionCFString();

        if (v31 == v36)
        {
LABEL_47:
          v37 = sub_1000DCBA8(v6 + 24, v47 + 24);

          if (v37)
          {
            return v3;
          }

          goto LABEL_6;
        }
      }

      else if (!v31)
      {
        goto LABEL_47;
      }
    }

LABEL_5:

LABEL_6:
    v4 = __OFADD__(v3++, 1);
    v2 = v39;
    if (v4)
    {
      goto LABEL_52;
    }
  }

  return 0;
}

void sub_10005A674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for RealizedInfo(0);
  swift_arrayDestroy();
  v13 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      v14 = v5[2];
      v15 = v14 - v7;
      if (!__OFSUB__(v14, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    v20 = _CocoaArrayWrapper.endIndex.getter();
    v15 = v20 - v7;
    if (!__OFSUB__(v20, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v19 = v5[2];
      }

      if (!__OFADD__(v19, v11))
      {
        v5[2] = v19 + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }
}

void sub_10005A794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  if (_CocoaArrayWrapper.endIndex.getter() < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  if (v9)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  v14 = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_100057B20(v14, 1);

  sub_10005A674(v7, v6, 1, v4);
}

void sub_10005A880(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v52 = a4;
  v38 = 0;
  v5 = 0;
  v8 = a3[8];
  v6 = a3 + 8;
  v7 = v8;
  v9 = 1 << *(v6 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v7;
  v39 = v6;
  v40 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v48 = (v11 - 1) & v11;
LABEL_12:
    v16 = v13 | (v5 << 6);
    v41 = v16;
    v17 = a3[7] + 80 * v16;
    v19 = *v17;
    v18 = *(v17 + 8);
    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    v22 = *(v17 + 32);
    v23 = *(v17 + 48);
    v24 = *(v17 + 56);
    v25 = *(v17 + 64);
    v26 = *(v17 + 72);
    v44 = *(v17 + 40);
    v45 = *(*(a3[6] + 8 * v16) + 16);

    v46 = v26;
    v35 = v26;
    v47 = v18;
    v27 = v23;
    v28 = v23;
    v29 = v24;
    sub_10005AD88(v19, v18, v21, v20, v22, v44, v28, v24, v25, v35);
    if (qword_100133A50 != -1)
    {
      swift_once();
    }

    if (*(v45 + 16) && (v30 = sub_100061588(qword_10014E8C0, *algn_10014E8C8), (v31 & 1) != 0) && (sub_10000B430(*(v45 + 56) + 32 * v30, v51), swift_dynamicCast()))
    {
      v32 = v49;
      v33 = v50;
    }

    else
    {
      v32 = 0xD000000000000014;
      v33 = 0x8000000100104280;
    }

    if (v32 == v52 && v33 == a5)
    {

      sub_10005AFAC(v19, v47, v21, v20, v22, v44, v27, v24, v25, v46);

      v11 = v48;
      goto LABEL_22;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_10005AFAC(v19, v47, v21, v20, v22, v44, v27, v29, v25, v46);

    v11 = v48;
    if (v12)
    {
LABEL_22:
      *(a1 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      if (__OFADD__(v38++, 1))
      {
        goto LABEL_27;
      }
    }
  }

  v14 = v5;
  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= v40)
    {
      sub_100058BF8(a1, a2, v38, a3);
      return;
    }

    v15 = v39[v5];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v48 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

unint64_t *sub_10005ABBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v14 = sub_100058344(v16, v9, a1, a2, a3);

      swift_bridgeObjectRelease_n();
      return v14;
    }
  }

  __chkstk_darwin(v11, v12);
  bzero(&v17 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  sub_10005A880((&v17 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);
  v14 = v13;

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v14;
}

double sub_10005AD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  switch(a10)
  {
    case 0:
    case 1:
    case 2:
    case 4:
    case 5:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 16:
    case 17:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
      goto LABEL_2;
    case 3:
    case 6:
    case 14:
    case 18:
    case 26:
    case 42:

      goto LABEL_2;
    case 13:

      sub_100041D48(a4, a5);

      goto LABEL_2;
    case 15:

LABEL_2:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10005AFAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  switch(a10)
  {
    case 0:
    case 1:
    case 2:
    case 4:
    case 5:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 16:
    case 17:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
      goto LABEL_2;
    case 3:
    case 6:
    case 14:
    case 18:
    case 26:
    case 42:

      goto LABEL_2;
    case 13:

      sub_100014988(a4, a5);

      goto LABEL_2;
    case 15:

LABEL_2:

      break;
    default:
      return v10;
  }

  return v10;
}

uint64_t sub_10005B1D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005B218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005B280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10005B2E8()
{
  result = qword_100135A70;
  if (!qword_100135A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135A70);
  }

  return result;
}

BOOL sub_10005B36C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v5 = **(v1 + 32);
  v6 = v3;
  return (v2(&v6, &v5) & 1) == 0;
}

unint64_t sub_10005B3C8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_10005B470(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100031C40(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_10005B3C8(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_10005B530(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005B558(uint64_t a1)
{
  if ((*(a1 + 72) & 0x7Fu) <= 0x4A)
  {
    return *(a1 + 72) & 0x7F;
  }

  else
  {
    return (*a1 + 75);
  }
}

__n128 sub_10005B580(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10005B5A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72) >> 7;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_10005B5F4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 88) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 0;
      *(a1 + 72) = -a2 << 7;
      *(a1 + 80) = 0;
      return result;
    }

    *(a1 + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005B66C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 80) & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *(result + 72) &= 0x7FuLL;
  *(result + 80) = v2;
  return result;
}

uint64_t sub_10005B6E4(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = sub_10005B76C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10005B76C()
{
  result = qword_100135B08;
  if (!qword_100135B08)
  {
    type metadata accessor for OSExtension(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_100135B08);
  }

  return result;
}

_BYTE *sub_10005B7B4(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_10008DF38(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_10005B834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
  v14 = *(v4 - 8);
  __chkstk_darwin(v4, v5);
  v7 = &v13 - v6;
  v8 = _HashTable.startBucket.getter();
  if (v8 == 1 << *(a1 + 32))
  {
    v9 = *(v14 + 56);

    return v9(a2, 1, 1, v4);
  }

  else
  {
    v11 = *(v4 + 48);
    sub_10008DFBC(v7, &v7[v11], v8, *(a1 + 36), 0, a1);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 32))(a2, v7, v12);
    sub_100068024(&v7[v11], a2 + *(v4 + 48));
    return (*(v14 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_10005B9F4(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v3 = sub_1000659B8(v2, *(a1 + 36), 0, a1);

  return v3;
}

uint64_t sub_10005BA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _HashTable.startBucket.getter();
  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 80) = 0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    *v7 = sub_10008E0C0(&v7[8], result, *(a1 + 36), 0, a1);
    v8[1] = *&v7[24];
    v8[2] = *&v7[40];
    v9[0] = *&v7[56];
    *(v9 + 9) = *&v7[65];
    v8[0] = *&v7[8];
    v14 = *&v7[40];
    v15[0] = *&v7[56];
    *(v15 + 9) = *&v7[65];
    v12 = *&v7[8];
    v13 = *&v7[24];
    *v10 = *v7;
    *&v10[8] = *&v7[8];
    *&v10[24] = *&v7[24];
    *&v10[40] = *&v7[40];
    *&v10[56] = *&v7[56];
    *&v10[65] = *&v7[65];
    v5 = *&v10[48];
    *(a2 + 32) = *&v10[32];
    *(a2 + 48) = v5;
    *(a2 + 64) = *&v10[64];
    *(a2 + 80) = v10[80];
    v6 = *&v10[16];
    *a2 = *v10;
    *(a2 + 16) = v6;
    v11 = *v7;

    sub_1000419A4(v8, v16);
    sub_100014894(v10, v16, &qword_100135DC0, &qword_1000F7BA8);
    sub_10000A184(&v11, &qword_100135DC0, &qword_1000F7BA8);
    v16[2] = *&v7[32];
    v16[3] = *&v7[48];
    v16[4] = *&v7[64];
    v17 = v7[80];
    v16[0] = *v7;
    v16[1] = *&v7[16];
    return sub_10000A184(v16, &qword_100135DC0, &qword_1000F7BA8);
  }

  return result;
}

uint64_t sub_10005BC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _HashTable.startBucket.getter();
  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    v5 = sub_10008E188(&v10, result, *(a1 + 36), 0, a1);
    v6 = v10;
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
    *(a2 + 32) = v6;

    sub_1000146B0(v6, *(&v6 + 1));

    sub_1000146B0(v6, *(&v6 + 1));

    sub_100014528(v6, *(&v6 + 1));

    return sub_100014528(v6, *(&v6 + 1));
  }

  return result;
}

void *sub_10005BD44(unint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_1000635A4(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = __DataStorage._offset.getter();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1000F3160;
      *(v20 + 56) = &type metadata for UInt8;
      *(v20 + 64) = &protocol witness table for UInt8;
      *(v20 + 32) = v19;
      v21 = String.init(format:_:)();
      v45 = v8;
      v24 = v8[2];
      v23 = v8[3];
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        sub_1000635A4((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      v8[2] = v24 + 1;
      v25 = &v8[2 * v24];
      v25[4] = v21;
      v25[5] = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}

uint64_t sub_10005C0B4()
{
  v0 = sub_10003E554(&off_100125F58);
  sub_100003CDC(&qword_100135E58, &unk_1000F7C08);
  result = swift_arrayDestroy();
  off_100135B38 = v0;
  return result;
}

driverkitd::ApprovalState_optional __swiftcall ApprovalState.init(fromString:)(Swift::String fromString)
{
  if (qword_100133A30 != -1)
  {
    countAndFlagsBits = fromString._countAndFlagsBits;
    object = fromString._object;
    swift_once();
    fromString._countAndFlagsBits = countAndFlagsBits;
    fromString._object = object;
  }

  v1 = off_100135B38;
  if (*(off_100135B38 + 2))
  {
    v2 = sub_1000618D4(fromString._countAndFlagsBits, fromString._object, &String.hash(into:), sub_100062020);
    v4 = v3;

    if (v4)
    {
      return *(v1[7] + v2);
    }
  }

  else
  {
  }

  return 3;
}

Swift::Bool __swiftcall ApprovalState.canTransitionTo(_:)(driverkitd::ApprovalState a1)
{
  if (v1 == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return v2 == a1;
}

driverkitd::ApprovalState_optional __swiftcall ApprovalState.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

unint64_t *sub_10005C240@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

_BYTE *sub_10005C298(uint64_t a1, uint64_t a2)
{
  if (qword_100133A30 != -1)
  {
    v9 = a1;
    v10 = a2;
    swift_once();
    a1 = v9;
    a2 = v10;
  }

  __chkstk_darwin(a1, a2);
  v4 = sub_10006573C(v3, v2);
  v5 = sub_10005B7B4(v4);
  v7 = v6;

  if (v7)
  {
    return v5;
  }

  __break(1u);
  return result;
}

_BYTE *sub_10005C370(uint64_t a1, uint64_t a2)
{
  if (qword_100133A30 != -1)
  {
    swift_once();
  }

  v2 = __chkstk_darwin(off_100135B38, a2);
  v3 = sub_10006573C(v2, sub_10006861C);
  v4 = sub_10005B7B4(v3);
  v6 = v5;

  if (v6)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t ApprovalState.debugDescription.getter()
{
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  v0._countAndFlagsBits = 10272;
  v0._object = 0xE200000000000000;
  String.append(_:)(v0);
  if (qword_100133A30 != -1)
  {
    swift_once();
  }

  v2 = __chkstk_darwin(off_100135B38, v1);
  v3 = sub_10006573C(v2, sub_10006861C);
  v4 = sub_10005B7B4(v3);
  v6 = v5;

  if (v6)
  {
    v8._countAndFlagsBits = v4;
    v8._object = v6;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 41;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10005C62C(uint64_t a1, void *a2, char a3)
{
  sub_100003CDC(&qword_1001345D8, &unk_1000F3E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3160;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  v8 = NSOSStatusErrorDomain;
  v9 = sub_10005C77C(a1, a2, a3 & 1);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  sub_10003E208(inited);
  swift_setDeallocating();
  sub_10000A184(inited + 32, &unk_1001372D0, &unk_1000F4500);
  v11 = objc_allocWithZone(NSError);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v11 initWithDomain:v8 code:5 userInfo:isa];

  return v13;
}

unint64_t sub_10005C77C(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    _StringGuts.grow(_:)(18);

    v7 = 0xD000000000000010;
  }

  else
  {
    _StringGuts.grow(_:)(20);

    v7 = 0xD000000000000012;
  }

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  return v7;
}

uint64_t sub_10005C844()
{
  if (*v0)
  {
    return 0x7261506472696874;
  }

  else
  {
    return 0x7261507473726966;
  }
}

uint64_t sub_10005C87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7261507473726966 && a2 == 0xEA00000000007974;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7261506472696874 && a2 == 0xEA00000000007974)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10005C960(uint64_t a1)
{
  v2 = sub_1000658BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005C99C(uint64_t a1)
{
  v2 = sub_1000658BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005C9E4@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_10005CA20(uint64_t a1)
{
  v2 = sub_100065964();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005CA5C(uint64_t a1)
{
  v2 = sub_100065964();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005CABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001BLL && 0x8000000100105FB0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_10005CB50(uint64_t a1)
{
  v2 = sub_100065910();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005CB8C(uint64_t a1)
{
  v2 = sub_100065910();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ApprovalDBEntrySource.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v25 = a3;
  v22 = a2;
  v4 = sub_100003CDC(&qword_100135B40, &qword_1000F6AE0);
  v23 = *(v4 - 8);
  v24 = v4;
  __chkstk_darwin(v4, v5);
  v7 = &v20 - v6;
  v21 = sub_100003CDC(&qword_100135B48, &qword_1000F6AE8);
  v8 = *(v21 - 8);
  __chkstk_darwin(v21, v9);
  v11 = &v20 - v10;
  v12 = sub_100003CDC(&qword_100135B50, &unk_1000F6AF0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v20 - v15;
  sub_100003C4C(a1, a1[3]);
  sub_1000658BC();
  v17 = v25;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v17 >> 60 == 15)
  {
    LOBYTE(v26) = 0;
    sub_100065964();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v8 + 8))(v11, v21);
  }

  else
  {
    LOBYTE(v26) = 1;
    sub_100065910();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v26 = v22;
    v27 = v17;
    sub_10001D6A4();
    v19 = v24;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v23 + 8))(v7, v19);
  }

  return (*(v13 + 8))(v16, v12);
}

void *sub_10005CEF8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100065A14(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

void ApprovalDBEntrySource.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);

    Data.hash(into:)();
  }
}

Swift::Int ApprovalDBEntrySource.hashValue.getter(uint64_t a1, unint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int sub_10005D034()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

void sub_10005D0AC(uint64_t a1)
{
  if (*(v1 + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);

    Data.hash(into:)();
  }
}

Swift::Int sub_10005D12C(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

BOOL static ApprovalDBEntrySource.__derived_enum_equals(_:_:)(_BOOL8 a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    return a4 >> 60 == 15;
  }

  if (a4 >> 60 == 15)
  {
    return 0;
  }

  return sub_10006475C(a1, a2, a3, a4);
}

BOOL sub_10005D1D8(_BOOL8 *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 >> 60 == 15)
  {
    return v4 >> 60 == 15;
  }

  if (v4 >> 60 == 15)
  {
    return 0;
  }

  return sub_10006475C(*a1, v3, *a2, v4);
}

uint64_t ApprovalDBEntrySource.description.getter(unint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0x6D6574737973;
  }

  _StringGuts.grow(_:)(38);

  sub_10005BD44(a1, a2);
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
  v5 = BidirectionalCollection<>.joined(separator:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  return 0xD000000000000024;
}

uint64_t ApprovalDBEntry.init(driverIdentifier:source:approvalState:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_10005D370()
{
  v1 = 0x656372756F73;
  if (*v0 != 1)
  {
    v1 = 0x6C61766F72707061;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10005D3D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10006607C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10005D40C(uint64_t a1)
{
  v2 = sub_100065F48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005D448(uint64_t a1)
{
  v2 = sub_100065F48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ApprovalDBEntry.description.getter()
{
  v13 = *v0;
  v14 = v13;
  sub_100065EEC(&v14, v12);
  v1._countAndFlagsBits = 544106784;
  v1._object = 0xE400000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = ApprovalDBEntrySource.description.getter(*(v0 + 2), *(v0 + 3));
  String.append(_:)(v2);

  v3._countAndFlagsBits = 8250;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  if (qword_100133A30 != -1)
  {
    swift_once();
  }

  v5 = __chkstk_darwin(off_100135B38, v4);
  v6 = sub_10006573C(v5, sub_10006861C);
  v7 = sub_10005B7B4(v6);
  v9 = v8;

  if (v9)
  {
    v11._countAndFlagsBits = v7;
    v11._object = v9;
    String.append(_:)(v11);

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ApprovalDBEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100003CDC(&qword_100135B70, &qword_1000F6B00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v12[-v8 - 8];
  sub_100003C4C(a1, a1[3]);
  sub_100065F48();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 16);
    v14 = v13;
    v12[23] = 1;
    sub_100065F9C(&v14, v12);
    sub_100065FD4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100014528(v13, *(&v13 + 1));
    LOBYTE(v13) = *(v3 + 32);
    v12[0] = 2;
    sub_100066028();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

double ApprovalDBEntry.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000661A4(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

BOOL sub_10005D7FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s10driverkitd15ApprovalDBEntryV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

uint64_t sub_10005D848(void *a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_100135D70, &qword_1000F7B60);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v10 - v7;
  sub_100003C4C(a1, a1[3]);
  sub_100067DF4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[1] = a2;
  sub_100003CDC(&qword_100135D80, &qword_1000F7B68);
  sub_100067E48(&qword_100135D88, sub_100067EC0, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10005DA20(uint64_t a1)
{
  v2 = sub_100067DF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005DA5C(uint64_t a1)
{
  v2 = sub_100067DF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10005DA98@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000664F0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t ApprovalDB.entries.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t (*ApprovalDB.entries.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_10005DB60;
}

uint64_t sub_10005DB60(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    *v2 = v3;
  }

  else
  {

    *v2 = v3;
  }

  return result;
}

uint64_t sub_10005DBD4(uint64_t *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *a1;
    v7 = a1[1];
    v8 = (v3 + 32);
    v52 = v4;
    while (1)
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_69;
      }

      v10 = *v8;
      v9 = v8[1];
      v61 = *(v8 + 32);
      v59 = v10;
      v60 = v9;
      v11 = v10 == v6 && *(&v10 + 1) == v7;
      if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_4;
      }

      v12 = a1[3];
      if (*(&v60 + 1) >> 60 == 15)
      {
        if (v12 >> 60 == 15)
        {
          goto LABEL_66;
        }

        goto LABEL_4;
      }

      if (v12 >> 60 == 15)
      {
        goto LABEL_4;
      }

      v13 = a1[2];
      v14 = *(&v60 + 1) >> 62;
      v15 = v12 >> 62;
      if (*(&v60 + 1) >> 62 == 3)
      {
        break;
      }

      if (v14 <= 1)
      {
        if (!v14)
        {
          v16 = BYTE14(v60);
          if (v15 > 1)
          {
            goto LABEL_35;
          }

          goto LABEL_30;
        }

        LODWORD(v16) = DWORD1(v60) - v60;
        if (__OFSUB__(DWORD1(v60), v60))
        {
          goto LABEL_73;
        }

        v16 = v16;
        goto LABEL_29;
      }

      if (v14 == 2)
      {
        v18 = *(v60 + 16);
        v17 = *(v60 + 24);
        v19 = __OFSUB__(v17, v18);
        v16 = v17 - v18;
        if (v19)
        {
          goto LABEL_72;
        }

        goto LABEL_29;
      }

      v16 = 0;
      if (v15 > 1)
      {
LABEL_35:
        if (v15 != 2)
        {
          if (!v16)
          {
            goto LABEL_66;
          }

          goto LABEL_4;
        }

        v22 = *(v13 + 16);
        v21 = *(v13 + 24);
        v19 = __OFSUB__(v21, v22);
        v20 = v21 - v22;
        if (v19)
        {
          goto LABEL_71;
        }

        goto LABEL_37;
      }

LABEL_30:
      if (v15)
      {
        LODWORD(v20) = HIDWORD(v13) - v13;
        if (__OFSUB__(HIDWORD(v13), v13))
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
        }

        v20 = v20;
      }

      else
      {
        v20 = BYTE6(v12);
      }

LABEL_37:
      if (v16 == v20)
      {
        if (v16 < 1)
        {
          goto LABEL_66;
        }

        if (v14 > 1)
        {
          v53 = a1[2];
          if (v14 != 2)
          {
            *(v56 + 6) = 0;
            v56[0] = 0;
            sub_100067FBC(&v59, &v57);
            v24 = v53;
            goto LABEL_53;
          }

          v48 = *(v60 + 24);
          v51 = *(v60 + 16);
          sub_100067FBC(&v59, &v57);
          v25 = __DataStorage._bytes.getter();
          if (v25)
          {
            v45 = v25;
            v26 = __DataStorage._offset.getter();
            v27 = v51;
            if (__OFSUB__(v51, v26))
            {
              goto LABEL_76;
            }

            v46 = v51 - v26 + v45;
          }

          else
          {
            v46 = 0;
            v27 = v51;
          }

          if (__OFSUB__(v48, v27))
          {
            goto LABEL_75;
          }

          __DataStorage._length.getter();
          sub_100045F4C(v46, v53, v12, &v57);
          v30 = v57;
        }

        else
        {
          if (!v14)
          {
            LODWORD(v56[0]) = v60;
            WORD2(v56[0]) = WORD2(v60);
            *(v56 + 6) = *(&v60 + 6);
            v23 = v13;
            sub_100067FBC(&v59, &v57);
            v4 = v52;
            v24 = v23;
LABEL_53:
            sub_100045F4C(v56, v24, v12, &v57);
            if (v57)
            {
              goto LABEL_67;
            }

LABEL_61:
            sub_100067FF4(&v59);
            goto LABEL_4;
          }

          v54 = a1[2];
          v49 = v60;
          if (v60 >> 32 < v60)
          {
            goto LABEL_74;
          }

          sub_100067FBC(&v59, &v57);
          v28 = __DataStorage._bytes.getter();
          if (v28)
          {
            v47 = v28;
            v29 = __DataStorage._offset.getter();
            if (__OFSUB__(v49, v29))
            {
              goto LABEL_77;
            }

            v50 = v49 - v29 + v47;
          }

          else
          {
            v50 = 0;
          }

          __DataStorage._length.getter();
          sub_100045F4C(v50, v54, v12, &v57);
          v30 = v57;
        }

        v4 = v52;
        if (v30)
        {
          goto LABEL_67;
        }

        goto LABEL_61;
      }

LABEL_4:
      ++v5;
      v8 = (v8 + 40);
      if (v4 == v5)
      {
        goto LABEL_62;
      }
    }

    v16 = 0;
    if (v60 == __PAIR128__(0xC000000000000000, 0) && v12 >> 62 == 3)
    {
      v16 = 0;
      if (!v13 && v12 == 0xC000000000000000)
      {
LABEL_66:
        sub_100067FBC(&v59, &v57);
LABEL_67:
        v57 = 0;
        v58 = 0xE000000000000000;
        _StringGuts.grow(_:)(64);
        v38._countAndFlagsBits = 0xD000000000000027;
        v38._object = 0x80000001001060C0;
        String.append(_:)(v38);
        v39._countAndFlagsBits = ApprovalDBEntry.description.getter();
        String.append(_:)(v39);

        v40._object = 0x80000001001060F0;
        v40._countAndFlagsBits = 0xD000000000000015;
        String.append(_:)(v40);
        v41._countAndFlagsBits = ApprovalDBEntry.description.getter();
        String.append(_:)(v41);

        v42 = v57;
        v43 = v58;
        sub_100067F68();
        swift_allocError();
        *v44 = v42;
        *(v44 + 8) = v43;
        *(v44 + 16) = 0;
        swift_willThrow();
        return sub_100067FF4(&v59);
      }
    }

LABEL_29:
    if (v15 > 1)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

LABEL_62:

  v31 = v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_69:
    v31 = sub_100031208(0, *(v3 + 16) + 1, 1, v3);
  }

  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = sub_100031208((v32 > 1), v33 + 1, 1, v31);
  }

  *(v31 + 2) = v33 + 1;
  v34 = &v31[40 * v33];
  v35 = *a1;
  v36 = *(a1 + 1);
  v34[64] = *(a1 + 32);
  *(v34 + 2) = v35;
  *(v34 + 3) = v36;
  sub_100067FBC(a1, &v57);

  *v55 = v31;
  return result;
}

uint64_t sub_10005E1C8(uint64_t *a1)
{
  v4 = *v1;
  v63 = *(*v1 + 16);
  if (v63)
  {
    v5 = 0;
    v65 = a1[1];
    v66 = *a1;
    v6 = 64;
    while (1)
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      v8 = *(v4 + v6 - 32);
      v7 = *(v4 + v6 - 24);
      v3 = *(v4 + v6 - 16);
      v2 = *(v4 + v6 - 8);
      LODWORD(v9) = *(v4 + v6);
      v10 = v8 == v66 && v7 == v65;
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_43;
      }

      v11 = a1[3];
      if (v2 >> 60 == 15)
      {
        if (v11 >> 60 == 15)
        {
          goto LABEL_70;
        }

LABEL_43:

        sub_1000146B0(v3, v2);
        goto LABEL_44;
      }

      if (v11 >> 60 == 15)
      {
        goto LABEL_43;
      }

      v12 = a1[2];
      v13 = v2 >> 62;
      v14 = v11 >> 62;
      if (v2 >> 62 == 3)
      {
        break;
      }

      if (v13 > 1)
      {
        if (v13 == 2)
        {
          v21 = *(v3 + 16);
          v20 = *(v3 + 24);
          v18 = __OFSUB__(v20, v21);
          v15 = v20 - v21;
          if (v18)
          {
            goto LABEL_88;
          }

          goto LABEL_29;
        }

        v15 = 0;
        if (v14 > 1)
        {
          goto LABEL_23;
        }
      }

      else if (v13)
      {
        LODWORD(v15) = HIDWORD(v3) - v3;
        if (__OFSUB__(HIDWORD(v3), v3))
        {
          goto LABEL_89;
        }

        v15 = v15;
        if (v14 > 1)
        {
LABEL_23:
          if (v14 != 2)
          {
            if (!v15)
            {
              goto LABEL_70;
            }

            goto LABEL_43;
          }

          v17 = *(v12 + 16);
          v16 = *(v12 + 24);
          v18 = __OFSUB__(v16, v17);
          v19 = v16 - v17;
          if (v18)
          {
            goto LABEL_87;
          }

          goto LABEL_32;
        }
      }

      else
      {
        v15 = BYTE6(v2);
        if (v14 > 1)
        {
          goto LABEL_23;
        }
      }

LABEL_30:
      if (!v14)
      {
        v19 = BYTE6(v11);
LABEL_32:
        if (v15 != v19)
        {
          goto LABEL_43;
        }

        goto LABEL_38;
      }

      if (__OFSUB__(HIDWORD(v12), v12))
      {
        goto LABEL_86;
      }

      if (v15 != HIDWORD(v12) - v12)
      {
        goto LABEL_43;
      }

LABEL_38:
      if (v15 < 1)
      {
LABEL_70:

        sub_1000146B0(v3, v2);
LABEL_71:
        v36 = *(a1 + 32);
        v10 = v9 == v36;
        v37 = v9;
        LOBYTE(v9) = v9 != v36;
        if (v10)
        {
          goto LABEL_84;
        }

        v67 = *(a1 + 32);
        if (v37)
        {
          v38 = v37;
          if (v37 == 1)
          {
            if (v36 != 2)
            {
              goto LABEL_75;
            }

LABEL_80:

            sub_1000146B0(v3, v2);

            v50 = v4;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v50 = sub_1000646B8(v4);
            }

            if (v5 >= *(v50 + 2))
            {
              __break(1u);
            }

            v51 = &v50[v6];
            v52 = *&v50[v6 - 16];
            v53 = *(v51 - 1);
            *(v51 - 4) = v8;
            *(v51 - 3) = v7;
            *(v51 - 2) = v3;
            *(v51 - 1) = v2;
            *v51 = v67;

            sub_100014528(v52, v53);

            *v61 = v50;
LABEL_84:

            sub_100014528(v3, v2);
            return v9 & 1;
          }
        }

        else
        {
          v38 = 0;
        }

        if (v36 == 1)
        {
          goto LABEL_80;
        }

LABEL_75:
        *&v69 = 0;
        *(&v69 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(47);

        *&v69 = 0xD00000000000001DLL;
        *(&v69 + 1) = 0x80000001001060A0;
        v70 = v8;
        v71 = v7;
        v72 = v3;
        v73 = v2;
        v74 = v38;
        v39._countAndFlagsBits = ApprovalDBEntry.description.getter();
        String.append(_:)(v39);

        v40._countAndFlagsBits = 0x2077656E206F7420;
        v40._object = 0xEE00206574617473;
        String.append(_:)(v40);
        if (qword_100133A30 == -1)
        {
LABEL_76:
          v42 = __chkstk_darwin(off_100135B38, v41);
          v43 = sub_10006573C(v42, sub_10006861C);
          v44 = sub_10005B7B4(v43);
          v46 = v45;

          if (v46)
          {
            v47._countAndFlagsBits = v44;
            v47._object = v46;
            String.append(_:)(v47);

            v9 = *(&v69 + 1);
            v48 = v69;
            sub_100067F68();
            swift_allocError();
            *v49 = __PAIR128__(v9, v48);
            *(v49 + 16) = 0;
            swift_willThrow();

            sub_100014528(v3, v2);
            return v9 & 1;
          }

          __break(1u);
          return result;
        }

LABEL_94:
        swift_once();
        goto LABEL_76;
      }

      if (v13 > 1)
      {
        v62 = a1[2];
        if (v13 != 2)
        {
          *(&v69 + 6) = 0;
          *&v69 = 0;

          sub_1000146B0(v3, v2);
          sub_100045F4C(&v69, v62, v11, &v68);
          if (v68)
          {
            goto LABEL_71;
          }

          goto LABEL_44;
        }

        v60 = v9;
        v57 = *(v3 + 24);
        v59 = *(v3 + 16);

        sub_1000146B0(v3, v2);
        v23 = __DataStorage._bytes.getter();
        if (v23)
        {
          v54 = v23;
          v24 = __DataStorage._offset.getter();
          v25 = v59;
          if (__OFSUB__(v59, v24))
          {
            goto LABEL_92;
          }

          v55 = v59 - v24 + v54;
        }

        else
        {
          v55 = 0;
          v25 = v59;
        }

        if (__OFSUB__(v57, v25))
        {
          goto LABEL_91;
        }

        __DataStorage._length.getter();
        v28 = v55;
      }

      else
      {
        v60 = v9;
        if (!v13)
        {
          *&v69 = v3;
          WORD4(v69) = v2;
          BYTE10(v69) = BYTE2(v2);
          BYTE11(v69) = BYTE3(v2);
          BYTE12(v69) = BYTE4(v2);
          BYTE13(v69) = BYTE5(v2);
          v22 = v12;

          sub_1000146B0(v3, v2);
          sub_100045F4C(&v69, v22, v11, &v68);
          if (v68)
          {
            goto LABEL_67;
          }

          goto LABEL_44;
        }

        v62 = a1[2];
        if (v3 >> 32 < v3)
        {
          goto LABEL_90;
        }

        sub_1000146B0(v3, v2);
        v26 = __DataStorage._bytes.getter();
        if (v26)
        {
          v56 = v26;
          v27 = __DataStorage._offset.getter();
          if (__OFSUB__(v3, v27))
          {
            goto LABEL_93;
          }

          v58 = v3 - v27 + v56;
        }

        else
        {
          v58 = 0;
        }

        __DataStorage._length.getter();
        v28 = v58;
      }

      sub_100045F4C(v28, v62, v11, &v69);
      if (v69)
      {
LABEL_67:
        LODWORD(v9) = v60;
        goto LABEL_71;
      }

LABEL_44:
      ++v5;

      sub_100014528(v3, v2);
      v6 += 40;
      if (v63 == v5)
      {
        goto LABEL_68;
      }
    }

    v15 = 0;
    if (!v3 && v2 == 0xC000000000000000 && v11 >> 62 == 3)
    {
      v15 = 0;
      if (!v12 && v11 == 0xC000000000000000)
      {

        sub_1000146B0(0, 0xC000000000000000);
        v3 = 0;
        goto LABEL_71;
      }
    }

LABEL_29:
    if (v14 > 1)
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

LABEL_68:
  *&v69 = 0;
  *(&v69 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(80);
  v29._countAndFlagsBits = 0xD00000000000002CLL;
  v29._object = 0x8000000100106050;
  String.append(_:)(v29);
  String.append(_:)(*a1);
  v30._countAndFlagsBits = 0x656372756F73202CLL;
  v30._object = 0xEA00000000002020;
  String.append(_:)(v30);
  v31._countAndFlagsBits = ApprovalDBEntrySource.description.getter(a1[2], a1[3]);
  String.append(_:)(v31);

  v32._object = 0x8000000100106080;
  v32._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v32);
  v9 = *(&v69 + 1);
  v33 = v69;
  sub_100067F68();
  swift_allocError();
  *v34 = __PAIR128__(v9, v33);
  *(v34 + 16) = 1;
  swift_willThrow();
  return v9 & 1;
}