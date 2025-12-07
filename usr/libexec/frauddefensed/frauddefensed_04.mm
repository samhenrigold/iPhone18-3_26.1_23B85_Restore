void sub_10005D714(_TtC13frauddefensed22TrustKitUIServerClient *a1, _TtC13frauddefensed22TrustKitUIServerClient *a2)
{
  if (*a1->endpoint == *a2->endpoint)
  {
    v2 = sub_10005C578();
    if ((v3 & 1) == 0)
    {
      v21 = 0;
      v22 = 0;
      while (2)
      {
        v23 = 32;
        do
        {
          if (((1 << --v23) & (HIDWORD(v2) | v2)) != 0)
          {
            v24 = __OFADD__(v22++, 1);
            if (v24)
            {
              __break(1u);
LABEL_18:
              __break(1u);
              goto LABEL_19;
            }
          }

          if (((1 << v23) & v2 & HIDWORD(v2)) != 0)
          {
            v24 = __OFADD__(v21++, 1);
            if (v24)
            {
              goto LABEL_18;
            }
          }
        }

        while (v23);
        v2 = sub_10005C578();
        if ((v25 & 1) == 0)
        {
          continue;
        }

        break;
      }
    }

    a1, v4, v5, v6, v7, v8, v9, v10;
    a2, v11, v12, v13, v14, v15, v16, v17;
  }

  else
  {
    if (qword_1000B6668 != -1)
    {
LABEL_19:
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003448(v18, qword_1000B8380);
    v19 = static os_log_type_t.error.getter();
    sub_10005E11C(v19, 0xD000000000000025, 0x8000000100097EA0, 0xD000000000000062, 0x8000000100097DF0, 195);
    sub_10000B6B0();
    swift_allocError();
    *v20 = 0xD000000000000025;
    *(v20 + 8) = 0x8000000100097EA0;
    *(v20 + 16) = 0;
    swift_willThrow();
  }
}

void sub_10005D8F4(_TtC13frauddefensed22TrustKitUIServerClient *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v117 = a1;
  v110 = a3;
  v116 = type metadata accessor for Logger();
  __chkstk_darwin(v116);
  v115 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  if (v7)
  {
    v124 = 0;
    v123 = 0;
    v122 = 0;
    v121 = 0;
    v8 = 0;
    v120 = 0;
    v119 = 0;
    v113 = (v5 + 16);
    v112 = "gnatureThreshold=";
    v114 = "nd signature from list. { name=";
    v111 = (v5 + 8);
    v9 = (a2 + 76);
    while (1)
    {
      v10 = *(v9 - 12);
      if (v10 && (*v9 & 1) == 0)
      {
        v128 = *(v9 - 44);
        v11 = *(v9 - 36);
        v137 = *(v9 - 28);
        v12 = *(v9 - 20);
        v13 = *(v9 - 1);

        sub_10005D714(v117, v10);
        if (v3)
        {
          sub_10004D630(v124, v123, v122, v121, v8, v120, v119, v20);
          v12, v73, v74, v75, v76, v77, v78, v79;
          v11, v80, v81, v82, v83, v84, v85, v86;
          v10, v87, v88, v89, v90, v91, v92, v93;
          return;
        }

        v22 = v21;
        v126 = 0;
        v127 = v8;
        v10, v14, v15, v16, v17, v18, v19, v20;
        if (qword_1000B6668 != -1)
        {
          swift_once();
        }

        v118 = v13;
        v23 = *&v13;
        v24 = v116;
        v25 = sub_100003448(v116, qword_1000B8380);
        v26 = v115;
        (*v113)(v115, v25, v24);
        v27 = static os_log_type_t.debug.getter();
        v130 = 0;
        v131 = 0xE000000000000000;
        _StringGuts.grow(_:)(109);
        v28._countAndFlagsBits = 0xD00000000000004FLL;
        v28._object = (v112 | 0x8000000000000000);
        String.append(_:)(v28);
        v29._countAndFlagsBits = v128;
        v29._object = v11;
        String.append(_:)(v29);
        v30._countAndFlagsBits = 0x74616E676973202CLL;
        v30._object = 0xEE003D6449657275;
        String.append(_:)(v30);
        if (v12)
        {
          v31 = v137;
        }

        else
        {
          v31 = 7104878;
        }

        v32 = v12;
        if (!v12)
        {
          v12 = 0xE300000000000000;
        }

        v125 = v32;

        v33._countAndFlagsBits = v31;
        v33._object = v12;
        String.append(_:)(v33);
        v12, v34, v35, v36, v37, v38, v39, v40;
        v41._countAndFlagsBits = 0x3D65726F6373202CLL;
        v41._object = 0xE800000000000000;
        String.append(_:)(v41);
        Float.write<A>(to:)();
        v42._countAndFlagsBits = 32032;
        v42._object = 0xE200000000000000;
        String.append(_:)(v42);
        v43 = v131;
        sub_10005E11C(v27, v130, v131, 0xD000000000000062, (v114 | 0x8000000000000000), 69);
        v43, v44, v45, v46, v47, v48, v49, v50;
        (*v111)(v26, v24);
        if (v22 > v23)
        {
          sub_10004D630(v124, v123, v122, v121, v127, v120, v119, v51);
          v94 = static os_log_type_t.default.getter();
          v130 = 0;
          v131 = 0xE000000000000000;
          _StringGuts.grow(_:)(72);
          v95._countAndFlagsBits = 0xD000000000000036;
          v95._object = 0x8000000100097E60;
          String.append(_:)(v95);
          Float.write<A>(to:)();
          v96._countAndFlagsBits = 0x687365726874202CLL;
          v96._object = 0xEC0000003D646C6FLL;
          String.append(_:)(v96);
          Float.write<A>(to:)();
          v97._countAndFlagsBits = 32032;
          v97._object = 0xE200000000000000;
          String.append(_:)(v97);
          v98 = v131;
          sub_10005E11C(v94, v130, v131, 0xD000000000000062, (v114 | 0x8000000000000000), 72);
          v98, v99, v100, v101, v102, v103, v104, v105;
          LOBYTE(v130) = 0;
          v129[0] = 0;
          v124 = (LODWORD(v22) << 32) | 1;
          v123 = (v118 << 32);
          v122 = 0;
          v121 = v128;
          v8 = v11;
          v120 = v137;
          v119 = v125;
          goto LABEL_22;
        }

        v8 = v127;
        if (v127)
        {
          v52 = v124;
          v53 = v123;
          v130 = v124;
          v131 = v123;
          v54 = v122;
          v55 = v121;
          v132 = v122;
          v133 = v121;
          v137 = v11;
          v56 = v120;
          v134 = v127;
          v135 = v120;
          v57 = v119;
          v136 = v119;
          sub_10005DFD8(&v130, v129);
          v125, v58, v59, v60, v61, v62, v63, v64;
          v137, v65, v66, v67, v68, v69, v70, v71;
          sub_10004D630(v52, v53, v54, v55, v8, v56, v57, v72);
        }

        else
        {
          LOBYTE(v130) = 0;
          v129[0] = 0;
          v124 = LODWORD(v22) << 32;
          v123 = (v118 << 32);
          v122 = 0;
          v121 = v128;
          v8 = v11;
          v120 = v137;
          v119 = v125;
        }

        v3 = v126;
      }

      v9 += 80;
      if (!--v7)
      {
        goto LABEL_22;
      }
    }
  }

  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v8 = 0;
  v120 = 0;
  v119 = 0;
LABEL_22:
  v106 = v110;
  v107 = v123;
  *v110 = v124;
  v106[1] = v107;
  v108 = v121;
  v106[2] = v122;
  v106[3] = v108;
  v109 = v120;
  v106[4] = v8;
  v106[5] = v109;
  v106[6] = v119;
}

unint64_t sub_10005E010()
{
  result = qword_1000B67E8;
  if (!qword_1000B67E8)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B67E8);
  }

  return result;
}

uint64_t sub_10005E078(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005E0C0(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_10005E11C(os_log_type_t a1, uint64_t a2, _TtC13frauddefensed22TrustKitUIServerClient *a3, uint64_t a4, _TtC13frauddefensed22TrustKitUIServerClient *a5, uint64_t a6)
{
  v6 = a5;
  v79._countAndFlagsBits = a4;
  v79._object = a5;
  sub_10001C1B8();
  v11 = StringProtocol.components<A>(separatedBy:)();
  v19 = *v11->endpoint;
  if (v19)
  {
    v20 = &v11->endpoint[16 * v19];
    v6 = v20[1];
    v76 = *v20;
    v21 = v11;

    v21, v22, v23, v24, v25, v26, v27, v28;
  }

  else
  {
    v76 = a4;
    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  v29 = a2;
  v78 = a3;
  v30 = String.lowercased()();
  v31 = 11;
  v32 = &off_1000ADB20;
  do
  {
    if (!--v31)
    {
      swift_arrayDestroy();
      v30._object, v61, v62, v63, v64, v65, v66, v67;
      v42 = a1;
      goto LABEL_13;
    }

    v33 = v32 + 2;
    v79 = v30;
    v34 = StringProtocol.contains<A>(_:)();
    v32 = v33;
  }

  while ((v34 & 1) == 0);
  swift_arrayDestroy();
  v30._object, v35, v36, v37, v38, v39, v40, v41;
  v42 = a1;
  if (qword_1000B66E0 != -1)
  {
    swift_once();
  }

  if ((byte_1000B9460 & 1) == 0)
  {
    v43 = Logger.logObject.getter();
    if (os_log_type_enabled(v43, a1))
    {
      v51 = swift_slowAlloc();
      v79._countAndFlagsBits = swift_slowAlloc();
      *v51 = 136643331;
      v52 = sub_10005E6B8(v76, v6, &v79._countAndFlagsBits);
      v6, v53, v54, v55, v56, v57, v58, v59;
      *(v51 + 4) = v52;
      *(v51 + 12) = 2053;
      *(v51 + 14) = a6;
      *(v51 + 22) = 2085;
      *(v51 + 24) = sub_10005E6B8(v29, v78, &v79._countAndFlagsBits);
      v60 = "%{sensitive}s.%{sensitive}ld            %{sensitive}s";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v43, v42, v60, v51, 0x20u);
      swift_arrayDestroy();

      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_13:
  v43 = Logger.logObject.getter();
  if (os_log_type_enabled(v43, v42))
  {
    v51 = swift_slowAlloc();
    v79._countAndFlagsBits = swift_slowAlloc();
    *v51 = 136381187;
    v68 = sub_10005E6B8(v76, v6, &v79._countAndFlagsBits);
    v6, v69, v70, v71, v72, v73, v74, v75;
    *(v51 + 4) = v68;
    *(v51 + 12) = 2049;
    *(v51 + 14) = a6;
    *(v51 + 22) = 2081;
    *(v51 + 24) = sub_10005E6B8(v29, v78, &v79._countAndFlagsBits);
    v60 = "%{private}s.%{private}ld                %{private}s";
    goto LABEL_15;
  }

LABEL_16:
  v6, v44, v45, v46, v47, v48, v49, v50;
LABEL_17:
}

uint64_t sub_10005E574(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  sub_100026F20(v4, a2);
  sub_100003448(v4, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005E5E8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_10005E65C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = v7;
  v9 = sub_10005E6B8(v6, v7, a3);
  v8, v10, v11, v12, v13, v14, v15, v16;
  v17 = *a1;
  *v17 = v9;
  *a1 = v17 + 1;
}

unint64_t sub_10005E6B8(uint64_t a1, _TtC13frauddefensed22TrustKitUIServerClient *a2, uint64_t *a3)
{

  v6 = sub_10005E784(v18, 0, 0, 1, a1, a2);
  v14 = v18[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v18[0] = a1;
    v18[1] = a2;
    v16 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = v6;
  a2, v7, v8, v9, v10, v11, v12, v13;
  ObjectType = swift_getObjectType();
  v18[0] = v15;
  v16 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100005BBC(v18, v16);
    *a3 = v16 + 32;
  }

LABEL_4:
  sub_100003558(v18);
  return v14;
}

unint64_t sub_10005E784(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10005E890(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

_TtC13frauddefensed22TrustKitUIServerClient *sub_10005E890(uint64_t a1, unint64_t a2)
{
  v3 = sub_10005E8DC(a1, a2);
  sub_10005EA0C(&off_1000ADAD0);
  return v3;
}

_TtC13frauddefensed22TrustKitUIServerClient *sub_10005E8DC(uint64_t a1, unint64_t a2)
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

  v6 = sub_10005EAF8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6->$__lazy_storage_$_interface, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7->$__lazy_storage_$_interface, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10005EAF8(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

void sub_10005EA0C(_TtC13frauddefensed22TrustKitUIServerClient *a1)
{
  v2 = *a1->endpoint;
  v3 = *v1;
  v4 = *(*v1)->endpoint;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *v3->connection >> 1)
  {
    if (*a1->endpoint)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = v4 + v2;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_10005EB6C(isUniquelyReferenced_nonNull_native, v26, 1, v3, v11, v12, v13, v14);
  if (!*a1->endpoint)
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = *v3->endpoint;
  if ((*v3->connection >> 1) - v15 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3->$__lazy_storage_$_interface[v15], a1->$__lazy_storage_$_interface, v2);
  a1, v16, v17, v18, v19, v20, v21, v22;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = *v3->endpoint;
  v24 = __OFADD__(v23, v2);
  v25 = v23 + v2;
  if (!v24)
  {
    *v3->endpoint = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

_TtC13frauddefensed22TrustKitUIServerClient *sub_10005EAF8(uint64_t a1, uint64_t a2)
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

  sub_100002074(&qword_1000B8398, &unk_100092A38);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  *v4->endpoint = a1;
  *v4->connection = 2 * v5 - 64;
  return result;
}

_TtC13frauddefensed22TrustKitUIServerClient *sub_10005EB6C(_TtC13frauddefensed22TrustKitUIServerClient *result, int64_t a2, void *a3, _TtC13frauddefensed22TrustKitUIServerClient *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->connection;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->endpoint;
  if (v11 <= v12)
  {
    v13 = *a4->endpoint;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100002074(&qword_1000B8398, &unk_100092A38);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *v14->endpoint = v12;
    *v14->connection = 2 * v15 - 64;
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  v16 = v14->$__lazy_storage_$_interface;
  v17 = a4->$__lazy_storage_$_interface;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[v12])
    {
      memmove(v16, v17, v12);
    }

    *a4->endpoint = 0;
  }

  else
  {
    memcpy(v16, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

_BYTE **sub_10005EC60(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_10005EC70()
{
  type metadata accessor for ReportOperation(0);
  v1 = swift_allocObject();
  type metadata accessor for AttestationManager(0);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1000055C8();
  v3 = OBJC_IVAR____TtC13frauddefensed18AttestationManager_logger;
  if (qword_1000B6698 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_100003448(v4, qword_1000B93A0);
  v6 = *(*(v4 - 8) + 16);
  v6(v2 + v3, v5, v4);
  if (!DeviceIdentityIsSupported())
  {

    v2 = 0;
  }

  *(v1 + 16) = v2;
  v7 = OBJC_IVAR____TtC13frauddefensed15ReportOperation_logger;
  if (qword_1000B66A0 != -1)
  {
    swift_once();
  }

  v8 = sub_100003448(v4, qword_1000B93B8);
  v6(v1 + v7, v8, v4);
  v0[2] = v1;
  v6(v0 + *(*v0 + 104), v8, v4);
  return v0;
}

uint64_t sub_10005EE10(uint64_t a1)
{
  v2[39] = a1;
  v2[40] = v1;
  v2[41] = sub_100002074(&qword_1000B84D8, &qword_100092AA8);
  v4 = swift_task_alloc();
  v2[42] = v4;
  v5 = type metadata accessor for URLRequest();
  v2[43] = v5;
  v2[44] = *(v5 - 8);
  v2[45] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[46] = v6;
  *v6 = v2;
  v6[1] = sub_10005EF68;

  return sub_10005F84C(v4, a1);
}

uint64_t sub_10005EF68()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_10005F24C;
  }

  else
  {
    v2 = sub_10005F07C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005F07C()
{
  v1 = *(v0 + 336);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *v1;
    v3 = v1[1];
    v4 = *(v1 + 16);
    *(v0 + 272) = *v1;
    *(v0 + 280) = v3;
    *(v0 + 288) = v4;
    sub_10000B6B0();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v5 = v2;
    *(v5 + 8) = v3;
    *(v5 + 16) = v4;

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    (*(*(v0 + 352) + 32))(*(v0 + 360), v1, *(v0 + 344));
    v8 = [objc_opt_self() defaultSessionConfiguration];
    *(v0 + 384) = [objc_opt_self() sessionWithConfiguration:v8];

    v9 = swift_task_alloc();
    *(v0 + 392) = v9;
    *v9 = v0;
    v9[1] = sub_10005F2BC;
    v10 = *(v0 + 360);

    return NSURLSession.data(for:delegate:)(v10, 0);
  }
}

uint64_t sub_10005F24C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005F2BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(v7 + 400) = a3;
  *(v7 + 408) = v3;

  if (v3)
  {
    v8 = sub_10005F7AC;
  }

  else
  {
    sub_100005A28(a1, a2);
    v8 = sub_10005F3EC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10005F3EC()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 statusCode];
    v4 = *(v0 + 400);
    v5 = *(v0 + 384);
    v7 = *(v0 + 352);
    v6 = *(v0 + 360);
    v8 = *(v0 + 344);
    if (v3 == 200)
    {

      (*(v7 + 8))(v6, v8);
      v9 = 0;
      v10 = 0;
      v11 = 0;
      goto LABEL_7;
    }

    v85 = static os_log_type_t.error.getter();
    v84 = v6;
    _StringGuts.grow(_:)(42);
    0xE000000000000000, v41, v42, v43, v44, v45, v46, v47;
    *(v0 + 296) = [v2 statusCode];
    v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    object = v48._object;
    String.append(_:)(v48);
    object, v50, v51, v52, v53, v54, v55, v56;
    v57._countAndFlagsBits = 32032;
    v57._object = 0xE200000000000000;
    String.append(_:)(v57);
    sub_10005E11C(v85, 0xD000000000000026, 0x8000000100098520, 0xD000000000000054, 0x80000001000951C0, 36);
    0x8000000100098520, v58, v59, v60, v61, v62, v63, v64;
    _StringGuts.grow(_:)(42);
    0xE000000000000000, v65, v66, v67, v68, v69, v70, v71;
    *(v0 + 304) = [v2 statusCode];
    v72._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v73 = v72._object;
    String.append(_:)(v72);
    v73, v74, v75, v76, v77, v78, v79, v80;
    v81._countAndFlagsBits = 32032;
    v81._object = 0xE200000000000000;
    String.append(_:)(v81);

    v10 = 0xD000000000000026;
    v11 = 0x8000000100098520;
    (*(v7 + 8))(v84, v8);
  }

  else
  {
    v12 = *(v0 + 400);
    v13 = *(v0 + 384);
    v14 = *(v0 + 352);
    v86 = *(v0 + 344);
    v87 = *(v0 + 360);
    v15 = *(v0 + 312);
    v16 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(62);
    v17._countAndFlagsBits = 0xD00000000000003ALL;
    v17._object = 0x80000001000984A0;
    String.append(_:)(v17);
    v18 = *v15;
    v19 = v15[1];
    v20 = v15[3];
    *(v0 + 48) = v15[2];
    *(v0 + 64) = v20;
    *(v0 + 16) = v18;
    *(v0 + 32) = v19;
    v21 = v15[4];
    v22 = v15[5];
    v23 = v15[7];
    *(v0 + 112) = v15[6];
    *(v0 + 128) = v23;
    *(v0 + 80) = v21;
    *(v0 + 96) = v22;
    sub_10006625C(v15, v0 + 144);
    v24._countAndFlagsBits = String.init<A>(describing:)();
    v25 = v24._object;
    String.append(_:)(v24);
    v25, v26, v27, v28, v29, v30, v31, v32;
    v33._countAndFlagsBits = 32032;
    v33._object = 0xE200000000000000;
    String.append(_:)(v33);
    sub_10005E11C(v16, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000951C0, 31);
    0xE000000000000000, v34, v35, v36, v37, v38, v39, v40;

    v11 = 0x80000001000984E0;
    (*(v14 + 8))(v87, v86);
    v10 = 0xD000000000000037;
  }

  v9 = 1;
LABEL_7:

  v82 = *(v0 + 8);

  return v82(v10, v11, v9 | (v9 << 8));
}

uint64_t sub_10005F7AC()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 344);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10005F84C(uint64_t a1, uint64_t a2)
{
  v3[46] = a2;
  v3[47] = v2;
  v3[45] = a1;
  v4 = type metadata accessor for URLRequest();
  v3[48] = v4;
  v3[49] = *(v4 - 8);
  v3[50] = swift_task_alloc();
  sub_100002074(&qword_1000B6DE8, &qword_10008FA30);
  v3[51] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[52] = v5;
  v3[53] = *(v5 - 8);
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  type metadata accessor for JSONEncoder.OutputFormatting();
  v3[56] = swift_task_alloc();

  return _swift_task_switch(sub_10005F9DC, 0, 0);
}

void sub_10005F9DC()
{
  v1 = *(*(v0 + 368) + 24);
  if (v1 >> 62)
  {
    v210 = *(*(v0 + 368) + 24);
    v211 = _CocoaArrayWrapper.endIndex.getter();
    v1 = v210;
    v223 = v211;
  }

  else
  {
    v223 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v223)
  {
    v2 = v1;
    v3 = v223;
    sub_100049F4C(0, v223 & ~(v223 >> 63), 0);
    if (v223 < 0)
    {
      __break(1u);
LABEL_64:
      swift_once();
      goto LABEL_15;
    }

    v4 = 0;
    v5 = v2;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v5 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = SecCertificateCopyData(v6);
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = Data.base64EncodedString(options:)(0x21uLL);
      object = v12._object;
      String.append(_:)(v12);
      object, v14, v15, v16, v17, v18, v19, v20;
      v21._countAndFlagsBits = 10;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      v22._object = 0x8000000100098550;
      v22._countAndFlagsBits = 0xD000000000000019;
      String.append(_:)(v22);
      sub_100005A28(v9, v11);

      v24 = *_swiftEmptyArrayStorage.endpoint;
      v23 = *_swiftEmptyArrayStorage.connection;
      if (v24 >= v23 >> 1)
      {
        sub_100049F4C((v23 > 1), v24 + 1, 1);
      }

      ++v4;
      *_swiftEmptyArrayStorage.endpoint = v24 + 1;
      v25 = &_swiftEmptyArrayStorage + 16 * v24;
      *(v25 + 4) = 0xD00000000000001CLL;
      *(v25 + 5) = 0x8000000100098570;
      v5 = v2;
    }

    while (v223 != v4);
  }

  v26 = *(v218 + 368);
  *(v218 + 344) = &_swiftEmptyArrayStorage;
  sub_100002074(&qword_1000B6908, &qword_10008F700);
  sub_1000662B8();
  v27 = BidirectionalCollection<>.joined(separator:)();
  v29 = v28;
  &_swiftEmptyArrayStorage, v28, v30, v31, v32, v33, v34, v35;
  v36 = *(v26 + 8);
  v3 = v218;
  type metadata accessor for JSONEncoder();
  swift_allocObject();

  *(v218 + 456) = JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  *(v218 + 272) = v36;
  *(v218 + 280) = v27;
  *(v218 + 288) = v29;
  sub_10006631C();
  v37 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v218 + 464) = v37;
  *(v218 + 472) = v38;
  v39 = v37;
  v40 = v38;
  v41 = *(v218 + 368);
  v36, v38, v42, v43, v44, v45, v46, v47;
  v29, v48, v49, v50, v51, v52, v53, v54;
  v222 = v40;
  v223 = v39;
  if (!*v41)
  {
    if (qword_1000B6658 != -1)
    {
      swift_once();
    }

    if (!qword_1000B7C78)
    {
      v60 = 56;
      v59 = 48;
      goto LABEL_33;
    }

    v62 = qword_1000B7C78;
    v63 = String._bridgeToObjectiveC()();
    v64 = [v62 BOOLForKey:v63];

    v58 = v64 == 0;
    v59 = 48;
    if (v64)
    {
      v59 = 32;
    }

    v60 = 56;
    v61 = 40;
    goto LABEL_31;
  }

  if (*v41 != 1)
  {
    if (qword_1000B6658 != -1)
    {
      swift_once();
    }

    if (!qword_1000B7C78)
    {
      v60 = 120;
      v59 = 112;
      goto LABEL_33;
    }

    v65 = qword_1000B7C78;
    v66 = String._bridgeToObjectiveC()();
    v67 = [v65 BOOLForKey:v66];

    v58 = v67 == 0;
    v59 = 112;
    if (v67)
    {
      v59 = 96;
    }

    v60 = 120;
    v61 = 104;
    goto LABEL_31;
  }

  if (qword_1000B6658 != -1)
  {
    goto LABEL_64;
  }

LABEL_15:
  if (!qword_1000B7C78)
  {
    goto LABEL_46;
  }

  v55 = qword_1000B7C78;
  v56 = String._bridgeToObjectiveC()();
  v57 = [v55 BOOLForKey:v56];

  v58 = v57 == 0;
  v59 = 80;
  if (v57)
  {
    v59 = 64;
  }

  v60 = 88;
  v61 = 72;
LABEL_31:
  if (!v58)
  {
    v60 = v61;
  }

  while (1)
  {
LABEL_33:
    v68 = v3;
    v69 = v3[53];
    v70 = v68[51];
    v219 = v68[52];
    v71 = v68[46];
    v72 = *(v71 + v59);
    v73 = *(v71 + v60);
    swift_bridgeObjectRetain_n();
    v74 = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(39);
    0xE000000000000000, v75, v76, v77, v78, v79, v80, v81;
    v82._countAndFlagsBits = v72;
    v82._object = v73;
    String.append(_:)(v82);
    v73, v83, v84, v85, v86, v87, v88, v89;
    v90._countAndFlagsBits = 32032;
    v90._object = 0xE200000000000000;
    String.append(_:)(v90);
    sub_10005E11C(v74, 0xD000000000000023, 0x8000000100098590, 0xD000000000000054, 0x80000001000951C0, 82);
    0x8000000100098590, v91, v92, v93, v94, v95, v96, v97;
    URL.init(string:)();
    v73, v98, v99, v100, v101, v102, v103, v104;
    if ((*(v69 + 48))(v70, 1, v219) == 1)
    {
      v105 = v68[45];
      v106 = v68[46];
      sub_10000BC10(v68[51], &qword_1000B6DE8, &qword_10008FA30);
      v107 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(28);
      0xE000000000000000, v108, v109, v110, v111, v112, v113, v114;
      v115 = v106[3];
      v117 = *v106;
      v116 = v106[1];
      *(v68 + 3) = v106[2];
      *(v68 + 4) = v115;
      *(v68 + 1) = v117;
      *(v68 + 2) = v116;
      v118 = v106[7];
      v120 = v106[4];
      v119 = v106[5];
      *(v68 + 7) = v106[6];
      *(v68 + 8) = v118;
      *(v68 + 5) = v120;
      *(v68 + 6) = v119;
      sub_10006625C(v106, (v68 + 18));
      v121._countAndFlagsBits = String.init<A>(describing:)();
      v122 = v121._object;
      String.append(_:)(v121);
      v122, v123, v124, v125, v126, v127, v128, v129;
      v130._countAndFlagsBits = 32032;
      v130._object = 0xE200000000000000;
      String.append(_:)(v130);
      sub_10005E11C(v107, 0xD000000000000018, 0x80000001000985C0, 0xD000000000000054, 0x80000001000951C0, 85);
      0x80000001000985C0, v131, v132, v133, v134, v135, v136, v137;
      sub_100005A28(v223, v222);

      *v105 = 0xD000000000000015;
      *(v105 + 8) = 0x80000001000985E0;
      *(v105 + 16) = 2;
      sub_100002074(&qword_1000B84D8, &qword_100092AA8);
      swift_storeEnumTagMultiPayload();
      v138 = v68;
      goto LABEL_35;
    }

    v140 = v68[54];
    v141 = v68[55];
    v143 = v68[52];
    v142 = v68[53];
    (*(v142 + 32))(v141, v68[51], v143);
    (*(v142 + 16))(v140, v141, v143);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    sub_100005A7C(v223, v222);
    URLRequest.httpBody.setter();
    v144.value._countAndFlagsBits = 0xD000000000000010;
    v145._object = 0xEC00000065707954;
    v144.value._object = 0x8000000100098600;
    v145._countAndFlagsBits = 0x2D746E65746E6F43;
    URLRequest.setValue(_:forHTTPHeaderField:)(v144, v145);
    v146 = v222 >> 62;
    if ((v222 >> 62) <= 1)
    {
      break;
    }

    v147 = 0;
    v3 = v218;
    if (v146 != 2)
    {
      goto LABEL_52;
    }

    v149 = *(v223 + 16);
    v148 = *(v223 + 24);
    v150 = __OFSUB__(v148, v149);
    v147 = v148 - v149;
    if (!v150)
    {
      goto LABEL_50;
    }

    __break(1u);
LABEL_46:
    v60 = 88;
    v59 = 80;
  }

  if (v146)
  {
    LODWORD(v147) = HIDWORD(v223) - v223;
    if (__OFSUB__(HIDWORD(v223), v223))
    {
      __break(1u);
      return;
    }

    v147 = v147;
    v3 = v218;
LABEL_50:
    if (v147 < 0)
    {
      __break(1u);
    }
  }

  else
  {
    v147 = BYTE6(v222);
    v3 = v218;
  }

LABEL_52:
  v3[44] = v147;
  v151._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v152 = v151._object;
  String.append(_:)(v151);
  v152, v153, v154, v155, v156, v157, v158, v159;
  v160.value._countAndFlagsBits = 0;
  v161._object = 0xEE006874676E654CLL;
  v160.value._object = 0xE000000000000000;
  v161._countAndFlagsBits = 0x2D746E65746E6F43;
  URLRequest.setValue(_:forHTTPHeaderField:)(v160, v161);
  0xE000000000000000, v162, v163, v164, v165, v166, v167, v168;
  if (v215)
  {
    v169 = v215;
    v170 = sub_1000543EC(v223, v222, v169);
    v173 = v170;
    v174 = v171;
    v175 = v172;
    if ((v172 & 0x100) != 0)
    {
      v201 = v3[55];
      v202 = *(v218 + 424);
      v220 = *(v218 + 416);
      v221 = v201;
      v216 = *(v218 + 400);
      v203 = *(v218 + 392);
      v214 = *(v218 + 384);
      *(v218 + 320) = v170;
      *(v218 + 328) = v171;
      *(v218 + 336) = v172;
      sub_10000B6B0();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v204 = v173;
      *(v204 + 8) = v174;
      *(v204 + 16) = v175;

      sub_100005A28(v223, v222);
      (*(v203 + 8))(v216, v214);
      (*(v202 + 8))(v221, v220);

      v139 = *(v218 + 8);
      goto LABEL_36;
    }

    v176 = Data.base64EncodedString(options:)(0);
    v177 = v176._object;
    v178._countAndFlagsBits = 0xD000000000000015;
    v178._object = 0x8000000100098670;
    URLRequest.setValue(_:forHTTPHeaderField:)(v176, v178);

    v177, v179, v180, v181, v182, v183, v184, v185;
    sub_100066370(v173, v174, v175, 0, v186, v187, v188, v189);

    v190 = v3[58];
    v191 = v3[59];
    v192 = v3[55];
    v193 = *(v218 + 424);
    v194 = *(v218 + 416);
    v195 = *(v218 + 400);
    v196 = *(v218 + 392);
    v197 = *(v218 + 384);
    v198 = *(v218 + 360);
    sub_100005A28(v190, v191);
    (*(v193 + 8))(v192, v194);
    v138 = v218;
    (*(v196 + 32))(v198, v195, v197);
    sub_100002074(&qword_1000B84D8, &qword_100092AA8);
    swift_storeEnumTagMultiPayload();
LABEL_35:

    v139 = v138[1];
LABEL_36:

    v139();
    return;
  }

  v199 = *(v3[47] + 16);
  v3[60] = v199;
  if (!v199)
  {
    v205 = v3[55];
    v206 = *(v218 + 424);
    v217 = *(v218 + 416);
    v207 = *(v218 + 392);
    v212 = *(v218 + 384);
    v213 = *(v218 + 400);
    v208 = *(v218 + 360);
    v209 = static os_log_type_t.error.getter();
    sub_10005E11C(v209, 0xD000000000000043, 0x8000000100098620, 0xD000000000000054, 0x80000001000951C0, 100);

    sub_100005A28(v223, v222);
    (*(v207 + 8))(v213, v212);
    (*(v206 + 8))(v205, v217);
    v138 = v218;
    *v208 = 0xD000000000000043;
    *(v208 + 8) = 0x8000000100098620;
    *(v208 + 16) = 2;
    sub_100002074(&qword_1000B84D8, &qword_100092AA8);
    swift_storeEnumTagMultiPayload();
    goto LABEL_35;
  }

  v200 = swift_task_alloc();
  v3[61] = v200;
  *v200 = v3;
  v200[1] = sub_10006073C;

  sub_100004E0C(v223, v222);
}

uint64_t sub_10006073C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = *v4;
  *(v5 + 496) = a1;
  *(v5 + 504) = a2;
  *(v5 + 314) = a3;
  *(v5 + 512) = v3;

  if (v3)
  {
    v6 = sub_100060AE0;
  }

  else
  {
    v6 = sub_100060858;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100060858()
{
  v1 = *(v0 + 314);
  v3 = *(v0 + 496);
  v2 = *(v0 + 504);
  if ((v1 & 0x100) != 0)
  {
    v35 = *(v0 + 440);
    v26 = *(v0 + 424);
    v33 = *(v0 + 472);
    v34 = *(v0 + 416);
    v27 = *(v0 + 392);
    v32 = *(v0 + 400);
    v30 = *(v0 + 464);
    v31 = *(v0 + 384);
    *(v0 + 296) = v3;
    *(v0 + 304) = v2;
    *(v0 + 312) = v1;
    sub_10000B6B0();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v28 = v3;
    *(v28 + 8) = v2;
    *(v28 + 16) = v1;

    sub_100005A28(v30, v33);
    (*(v27 + 8))(v32, v31);
    (*(v26 + 8))(v35, v34);
  }

  else
  {
    v4 = Data.base64EncodedString(options:)(0);
    object = v4._object;
    v6._object = 0x8000000100098670;
    v6._countAndFlagsBits = 0xD000000000000015;
    URLRequest.setValue(_:forHTTPHeaderField:)(v4, v6);

    object, v7, v8, v9, v10, v11, v12, v13;
    sub_100066370(v3, v2, v1, 0, v14, v15, v16, v17);
    v18 = *(v0 + 440);
    v19 = *(v0 + 416);
    v20 = *(v0 + 424);
    v22 = *(v0 + 392);
    v21 = *(v0 + 400);
    v23 = *(v0 + 384);
    v24 = *(v0 + 360);
    sub_100005A28(*(v0 + 464), *(v0 + 472));
    (*(v20 + 8))(v18, v19);
    (*(v22 + 32))(v24, v21, v23);
    sub_100002074(&qword_1000B84D8, &qword_100092AA8);
    swift_storeEnumTagMultiPayload();
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100060AE0()
{
  v1 = v0[59];
  v2 = v0[58];
  v3 = v0[55];
  v4 = v0[52];
  v5 = v0[53];
  v7 = v0[49];
  v6 = v0[50];
  v8 = v0[48];

  sub_100005A28(v2, v1);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100060BEC(char a1, uint64_t a2)
{
  *(v3 + 792) = v2;
  *(v3 + 784) = a2;
  *(v3 + 581) = a1;
  sub_100002074(&qword_1000B84D0, &qword_100092A88);
  *(v3 + 800) = swift_task_alloc();
  v4 = type metadata accessor for ReportingAsset(0);
  *(v3 + 808) = v4;
  *(v3 + 816) = *(v4 - 8);
  *(v3 + 824) = swift_task_alloc();

  return _swift_task_switch(sub_100060CEC, 0, 0);
}

uint64_t sub_100060CEC()
{
  *(v0 + 548) = 0u;
  *(v0 + 564) = 0u;
  *(v0 + 580) = 1;
  if (sub_10006B144(1, v0 + 548))
  {
    v1 = swift_task_alloc();
    *(v0 + 832) = v1;
    *v1 = v0;
    v1[1] = sub_100060EC4;

    return sub_10006361C();
  }

  else
  {
    v3 = static os_log_type_t.error.getter();
    sub_10005E11C(v3, 0xD000000000000017, 0x8000000100095570, 0xD000000000000052, 0x8000000100098050, 27);
    v4 = sub_100056EF0(3u, 0, 0x4964696C61766E69, 0xEC0000007475706ELL);
    v4, v5, v6, v7, v8, v9, v10, v11;
    sub_10000B6B0();
    swift_allocError();
    *v12 = 0xD000000000000017;
    *(v12 + 8) = 0x8000000100095570;
    *(v12 + 16) = 0;
    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_100060EC4()
{
  *(*v1 + 840) = v0;

  if (v0)
  {
    v2 = sub_100062B34;
  }

  else
  {
    v2 = sub_100060FD8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100060FD8()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = OBJC_IVAR____TtC13frauddefensed13ReportManager_reportingAsset;
  swift_beginAccess();
  sub_100064758(v4 + v5, v3);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_10000BC10(*(v0 + 800), &qword_1000B84D0, &qword_100092A88);
    v6 = static os_log_type_t.error.getter();
    sub_10005E11C(v6, 0xD000000000000020, 0x80000001000980E0, 0xD000000000000052, 0x8000000100098050, 50);
    v7 = sub_100056EF0(3u, 0, 0xD000000000000016, 0x8000000100097010);
    v7, v8, v9, v10, v11, v12, v13, v14;
    sub_10000B6B0();
    swift_allocError();
    *v15 = 0xD000000000000020;
    *(v15 + 8) = 0x80000001000980E0;
    *(v15 + 16) = 14;
    swift_willThrow();
LABEL_13:

    v50 = *(v0 + 8);

    return v50();
  }

  v16 = *(v0 + 784);
  v17 = *(v0 + 581);
  sub_1000647C8(*(v0 + 800), *(v0 + 824));
  if ((sub_10006482C(v17, v16) & 1) == 0)
  {
    v29 = *(v0 + 824);
    v30 = static os_log_type_t.default.getter();
    sub_10005E11C(v30, 0xD000000000000019, 0x8000000100098110, 0xD000000000000052, 0x8000000100098050, 57);
    v31 = sub_100056EF0(3u, 0, 0x4465727574616566, 0xEF64656C62617369);
    v31, v32, v33, v34, v35, v36, v37, v38;
    sub_10000B6B0();
    swift_allocError();
    *v39 = 0xD000000000000019;
    *(v39 + 8) = 0x8000000100098110;
    v40 = 16;
LABEL_12:
    *(v39 + 16) = v40;
    swift_willThrow();
    sub_100066450(v29, type metadata accessor for ReportingAsset);
    goto LABEL_13;
  }

  v24 = *(v0 + 840);
  sub_100064F10(*(v0 + 581), *(v0 + 784), v18, v19, v20, v21, v22, v23);
  if (v24)
  {
    v25 = static os_log_type_t.error.getter();
    sub_10005E11C(v25, 0xD000000000000031, 0x8000000100098130, 0xD000000000000052, 0x8000000100098050, 66);
  }

  v26 = *(*(v0 + 792) + OBJC_IVAR____TtC13frauddefensed13ReportManager_attestationManager);
  *(v0 + 848) = v26;
  if (!v26)
  {
    v29 = *(v0 + 824);
    v41 = static os_log_type_t.error.getter();
    sub_10005E11C(v41, 0xD000000000000036, 0x8000000100098170, 0xD000000000000052, 0x8000000100098050, 70);
    v42 = sub_100056EF0(3u, 0, 0xD000000000000012, 0x8000000100096FF0);
    v42, v43, v44, v45, v46, v47, v48, v49;
    sub_10000B6B0();
    swift_allocError();
    *v39 = 0xD000000000000036;
    *(v39 + 8) = 0x8000000100098170;
    v40 = 15;
    goto LABEL_12;
  }

  v27 = swift_task_alloc();
  *(v0 + 856) = v27;
  *v27 = v0;
  v27[1] = sub_100061440;

  return sub_100003DF0();
}

uint64_t sub_100061440(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = *v4;
  *(v5 + 864) = a1;
  *(v5 + 872) = a2;
  *(v5 + 546) = a3;
  *(v5 + 880) = v3;

  if (v3)
  {
    v6 = sub_100062DF0;
  }

  else
  {
    v6 = sub_100061560;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100061560()
{
  v1 = *(v0 + 546);
  if ((v1 & 0x100) != 0)
  {
    v27 = *(v0 + 872);
    v28 = *(v0 + 864);
    *(v0 + 528) = v28;
    *(v0 + 536) = v27;
    *(v0 + 544) = v1;
    sub_10004F88C(v28, v27, v1);
    sub_10000B6B0();
    swift_willThrowTypedImpl();
    v29 = swift_allocError();
    *v30 = v28;
    *(v30 + 8) = v27;
    *(v30 + 16) = v1;
    sub_100065170(v28, v27, v1, 1, v31, v32, v33, v34);
    LOBYTE(v27) = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(41);
    0xE000000000000000, v35, v36, v37, v38, v39, v40, v41;
    swift_getErrorValue();
    v42._countAndFlagsBits = Error.localizedDescription.getter();
    object = v42._object;
    String.append(_:)(v42);
    object, v44, v45, v46, v47, v48, v49, v50;
    v51._countAndFlagsBits = 32032;
    v51._object = 0xE200000000000000;
    String.append(_:)(v51);
    sub_10005E11C(v27, 0xD000000000000025, 0x80000001000981B0, 0xD000000000000052, 0x8000000100098050, 81);
    0x80000001000981B0, v52, v53, v54, v55, v56, v57, v58;
    *(v0 + 704) = v29;
    swift_errorRetain();
    sub_100002074(&qword_1000B6CC0, &qword_100091740);
    if (swift_dynamicCast())
    {
      v59 = *(v0 + 584);
      v60 = *(v0 + 592);
      v61 = *(v0 + 600);
      sub_10004F88C(v59, v60, *(v0 + 600));
    }

    else
    {
      _StringGuts.grow(_:)(41);
      0xE000000000000000, v62, v63, v64, v65, v66, v67, v68;
      swift_getErrorValue();
      v69._countAndFlagsBits = Error.localizedDescription.getter();
      v70 = v69._object;
      String.append(_:)(v69);
      v70, v71, v72, v73, v74, v75, v76, v77;
      v78._countAndFlagsBits = 32032;
      v78._object = 0xE200000000000000;
      String.append(_:)(v78);
      v59 = 0xD000000000000025;
      v60 = 0x80000001000981B0;

      v61 = 15;
    }

    v79 = *(v0 + 824);
    v80 = sub_10004F2E4(v59, v60, v61);
    v82 = v81;
    sub_100011CAC(v59, v60, v61, v83, v84, v85, v86, v87);
    v88 = sub_100056EF0(3u, 0, v80, v82);
    v82, v89, v90, v91, v92, v93, v94, v95;
    v88, v96, v97, v98, v99, v100, v101, v102;
    swift_allocError();
    *v103 = v59;
    *(v103 + 8) = v60;
    *(v103 + 16) = v61;
    swift_willThrow();

    sub_100066450(v79, type metadata accessor for ReportingAsset);

    v104 = *(v0 + 8);

    return v104();
  }

  else
  {
    v2 = *(v0 + 872);
    v3 = *(v0 + 864);
    v4 = *(v0 + 784);
    v5 = *(*(v0 + 824) + *(*(v0 + 808) + 20));
    v6 = v5[2];
    v7 = v5[3];
    v8 = v5[4];
    v9 = v5[5];
    v10 = v5[9];
    v11 = v5[10];
    v12 = v5[11];
    v13 = v5[12];
    v14 = v5[16];
    v15 = v5[17];
    v16 = v5[18];
    v17 = v5[19];
    *(v0 + 144) = *(v0 + 581);
    *(v0 + 152) = v4;
    *(v0 + 160) = v3;
    *(v0 + 168) = v2;
    *(v0 + 176) = v14;
    *(v0 + 184) = v15;
    *(v0 + 192) = v16;
    *(v0 + 200) = v17;
    *(v0 + 208) = v10;
    *(v0 + 216) = v11;
    *(v0 + 224) = v12;
    *(v0 + 232) = v13;
    *(v0 + 240) = v6;
    *(v0 + 248) = v7;
    *(v0 + 256) = v8;
    *(v0 + 264) = v9;
    v18 = *(v0 + 144);
    v19 = *(v0 + 160);
    v20 = *(v0 + 192);
    *(v0 + 48) = *(v0 + 176);
    *(v0 + 64) = v20;
    *(v0 + 16) = v18;
    *(v0 + 32) = v19;
    v21 = *(v0 + 208);
    v22 = *(v0 + 224);
    v23 = *(v0 + 256);
    *(v0 + 112) = *(v0 + 240);
    *(v0 + 128) = v23;
    *(v0 + 80) = v21;
    *(v0 + 96) = v22;
    v24 = v3;

    v25 = swift_task_alloc();
    *(v0 + 888) = v25;
    *v25 = v0;
    v25[1] = sub_100061A2C;

    return sub_10005EE10(v0 + 16);
  }
}

uint64_t sub_100061A2C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = *v4;
  *(v5 + 896) = a1;
  *(v5 + 904) = a2;
  *(v5 + 582) = a3;
  *(v5 + 912) = v3;

  if (v3)
  {
    v6 = sub_100062830;
  }

  else
  {
    v6 = sub_100061B4C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100061B4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 582);
  if ((v9 & 0x100) != 0)
  {
    v124 = *(v8 + 904);
    v125 = *(v8 + 896);
    *(v8 + 656) = v125;
    *(v8 + 664) = v124;
    *(v8 + 672) = v9;
    sub_10000B6B0();
    swift_willThrowTypedImpl();
    v126 = swift_allocError();
    *v127 = v125;
    *(v127 + 8) = v124;
    *(v127 + 16) = v9;
    sub_1000651C0(v8 + 144);
    LOBYTE(v125) = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(37);
    0xE000000000000000, v128, v129, v130, v131, v132, v133, v134;
    swift_getErrorValue();
    v135._countAndFlagsBits = Error.localizedDescription.getter();
    object = v135._object;
    String.append(_:)(v135);
    object, v137, v138, v139, v140, v141, v142, v143;
    v144._countAndFlagsBits = 32032;
    v144._object = 0xE200000000000000;
    String.append(_:)(v144);
    sub_10005E11C(v125, 0xD000000000000021, 0x80000001000981E0, 0xD000000000000052, 0x8000000100098050, 133);
    0x80000001000981E0, v145, v146, v147, v148, v149, v150, v151;
    *(v8 + 736) = v126;
    swift_errorRetain();
    sub_100002074(&qword_1000B6CC0, &qword_100091740);
    if (swift_dynamicCast())
    {
      v152 = *(v8 + 608);
      v153 = *(v8 + 616);
      v154 = *(v8 + 624);
      sub_10004F88C(v152, v153, *(v8 + 624));
    }

    else
    {
      _StringGuts.grow(_:)(37);
      0xE000000000000000, v155, v156, v157, v158, v159, v160, v161;
      swift_getErrorValue();
      v162._countAndFlagsBits = Error.localizedDescription.getter();
      v163 = v162._object;
      String.append(_:)(v162);
      v163, v164, v165, v166, v167, v168, v169, v170;
      v171._countAndFlagsBits = 32032;
      v171._object = 0xE200000000000000;
      String.append(_:)(v171);
      v153 = 0x80000001000981E0;
      v152 = 0xD000000000000021;

      v154 = 2;
    }

    v172 = *(v8 + 872);
    v173 = *(v8 + 864);
    v231 = *(v8 + 824);
    v174 = sub_10004F2E4(v152, v153, v154);
    v176 = v175;
    sub_100011CAC(v152, v153, v154, v177, v178, v179, v180, v181);
    v182 = sub_100056EF0(3u, 0, v174, v176);
    v176, v183, v184, v185, v186, v187, v188, v189;
    v182, v190, v191, v192, v193, v194, v195, v196;
    swift_allocError();
    *v197 = v152;
    *(v197 + 8) = v153;
    *(v197 + 16) = v154;
    swift_willThrow();

    v172, v198, v199, v200, v201, v202, v203, v204;

    sub_100066450(v231, type metadata accessor for ReportingAsset);

    v205 = *(v8 + 8);
    goto LABEL_27;
  }

  v10 = *(v8 + 581);
  sub_100065214(*(v8 + 792), *(v8 + 784), *(v8 + 581), a4, a5, a6, a7, a8);
  v12 = v11;
  sub_100002074(&qword_1000B6CC8, &unk_10008F950);
  inited = swift_initStackObject();
  *(inited + 32) = 0x745F74726F706572;
  *(inited + 16) = xmmword_10008F580;
  *(inited + 40) = 0xEB00000000657079;
  if (v10)
  {
    v14 = 0xE700000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  *(inited + 48) = v15;
  v23 = sub_100011A78(inited);
  swift_setDeallocating();
  sub_10000BC10(inited + 32, &qword_1000B6CD0, &qword_100092B90);
  v230 = (v8 + 328);
  if (v12)
  {
    v24 = String._bridgeToObjectiveC()();
    v12, v25, v26, v27, v28, v29, v30, v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10005B524(v24, 0xD000000000000010, 0x8000000100098380, isUniquelyReferenced_nonNull_native);
  }

  v33 = *(v8 + 784);
  v34 = *(v8 + 581);
  v35 = sub_100056EF0(3u, v23, 0, 0);
  sub_1000651C0(v8 + 144);
  v23, v36, v37, v38, v39, v40, v41, v42;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v50 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(41);
  *(v8 + 680) = 0;
  *(v8 + 688) = 0xE000000000000000;
  v51._countAndFlagsBits = 0xD000000000000019;
  v51._object = 0x8000000100098210;
  String.append(_:)(v51);
  *(v8 + 545) = v34;
  _print_unlocked<A, B>(_:_:)();
  v52._countAndFlagsBits = 0x6E65746E6F63202CLL;
  v52._object = 0xEA00000000003D74;
  String.append(_:)(v52);
  v53._countAndFlagsBits = Dictionary.description.getter();
  v54 = v53._object;
  String.append(_:)(v53);
  v54, v55, v56, v57, v58, v59, v60, v61;
  v62._countAndFlagsBits = 32032;
  v62._object = 0xE200000000000000;
  String.append(_:)(v62);
  v63 = *(v8 + 688);
  sub_10005E11C(v50, *(v8 + 680), v63, 0xD000000000000052, 0x8000000100098050, 146);
  v63, v64, v65, v66, v67, v68, v69, v70;
  if (sub_100065384(v34, v33))
  {
    v71 = sub_10006584C();
    sub_10000BCB8(0, &qword_1000B6CD8, NSNumber_ptr);
    v72.super.super.isa = NSNumber.init(integerLiteral:)(1717194).super.super.isa;
    v228 = static os_log_type_t.debug.getter();
    *&v234 = 0;
    *(&v234 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(170);
    v73._countAndFlagsBits = 0xD00000000000002FLL;
    v73._object = 0x8000000100095A60;
    String.append(_:)(v73);
    v74._countAndFlagsBits = 0xD00000000000001ALL;
    v74._object = 0x8000000100098230;
    String.append(_:)(v74);
    v75._countAndFlagsBits = 0x746974627573202CLL;
    v75._object = 0xEB000000003D656CLL;
    String.append(_:)(v75);
    v76._countAndFlagsBits = 0xD000000000000049;
    v76._object = 0x8000000100098250;
    v77 = v71;
    String.append(_:)(v76);
    v78._countAndFlagsBits = 0x547261646172202CLL;
    v78._object = 0xED00003D656C7469;
    String.append(_:)(v78);
    v79._countAndFlagsBits = 0xD00000000000002DLL;
    v79._object = 0x80000001000982A0;
    String.append(_:)(v79);
    v80._countAndFlagsBits = 0xD000000000000013;
    v80._object = 0x8000000100095A90;
    String.append(_:)(v80);
    v81._countAndFlagsBits = 0xD000000000000088;
    v81._object = 0x80000001000982D0;
    String.append(_:)(v81);
    v82._countAndFlagsBits = 0xD000000000000013;
    v82._object = 0x8000000100095AB0;
    String.append(_:)(v82);
    isa = v72.super.super.isa;
    v83 = [(objc_class *)v72.super.super.isa description];
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    v87._countAndFlagsBits = v84;
    v87._object = v86;
    String.append(_:)(v87);
    v86, v88, v89, v90, v91, v92, v93, v94;
    v95._countAndFlagsBits = 0xD000000000000015;
    v95._object = 0x8000000100095AD0;
    String.append(_:)(v95);
    v96._object = 0x8000000100098360;
    v96._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v96);
    v97._countAndFlagsBits = 0xD000000000000018;
    v97._object = 0x8000000100095AF0;
    String.append(_:)(v97);
    v98._countAndFlagsBits = 0x746544206D617053;
    v98._object = 0xEE006E6F69746365;
    String.append(_:)(v98);
    v99._countAndFlagsBits = 32032;
    v99._object = 0xE200000000000000;
    String.append(_:)(v99);
    sub_10005E11C(v228, 0, 0xE000000000000000, 0xD000000000000059, 0x8000000100095B10, 93);
    0xE000000000000000, v100, v101, v102, v103, v104, v105, v106;
    v107 = *(v71 + 24);
    if (v107 && (*(v8 + 760) = &OBJC_PROTOCOL___BSServiceConnectionClient, (v108 = swift_dynamicCastObjCProtocolConditional()) != 0))
    {
      v109 = v108;
      v233 = v107;
      v110 = String._bridgeToObjectiveC()();
      v111 = String._bridgeToObjectiveC()();
      v112 = [objc_opt_self() attributeWithDomain:v110 name:v111];

      sub_100002074(&qword_1000B7738, &qword_1000912F0);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_100091290;
      *(v113 + 32) = v112;
      sub_10000BCB8(0, &qword_1000B7740, RBSAttribute_ptr);
      v114 = v112;
      v115 = Array._bridgeToObjectiveC()().super.isa;
      v113, v116, v117, v118, v119, v120, v121, v122;
      v123 = [v109 remoteTargetWithLaunchingAssertionAttributes:v115];

      if (v123)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v234 = 0u;
        v235 = 0u;
      }

      *v230 = v234;
      *(v8 + 344) = v235;
      if (*(v8 + 352))
      {
        sub_100002074(&qword_1000B7750, qword_100091308);
        if (swift_dynamicCast())
        {
          v232 = v114;
          v207 = *(v8 + 776);
          v208 = String._bridgeToObjectiveC()();
          v209 = String._bridgeToObjectiveC()();
          v210 = String._bridgeToObjectiveC()();
          v211 = String._bridgeToObjectiveC()();
          v212 = String._bridgeToObjectiveC()();
          v213 = String._bridgeToObjectiveC()();
          v214 = isa;
          [v207 bannerWith:v208 and:v209 radarTitle:v210 radarDescription:v211 radarComponentID:isa radarComponentName:v212 radarComponentVersion:v213];

          v215 = *(v77 + 24);
          if (v215)
          {
            v216 = v215;
            [v216 invalidate];

            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          goto LABEL_25;
        }
      }

      else
      {
        sub_10000BC10(v230, &qword_1000B7748, &unk_1000912F8);
      }

      v217 = static os_log_type_t.error.getter();
      sub_10005E11C(v217, 0xD00000000000002FLL, 0x8000000100095BC0, 0xD000000000000059, 0x8000000100095B10, 102);
    }

    else
    {
      v206 = static os_log_type_t.error.getter();
      sub_10005E11C(v206, 0xD00000000000002CLL, 0x8000000100095B70, 0xD000000000000059, 0x8000000100095B10, 96);
    }

    v214 = v72.super.super.isa;
LABEL_25:
  }

  v218 = *(v8 + 872);
  v219 = *(v8 + 824);

  v218, v220, v221, v222, v223, v224, v225, v226;

  sub_100066450(v219, type metadata accessor for ReportingAsset);

  v205 = *(v8 + 8);
LABEL_27:

  return v205();
}

uint64_t sub_100062830()
{
  v1 = *(v0 + 912);
  sub_1000651C0(v0 + 144);
  v2 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(37);
  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  swift_getErrorValue();
  v10._countAndFlagsBits = Error.localizedDescription.getter();
  object = v10._object;
  String.append(_:)(v10);
  object, v12, v13, v14, v15, v16, v17, v18;
  v19._countAndFlagsBits = 32032;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  sub_10005E11C(v2, 0xD000000000000021, 0x80000001000981E0, 0xD000000000000052, 0x8000000100098050, 133);
  0x80000001000981E0, v20, v21, v22, v23, v24, v25, v26;
  *(v0 + 736) = v1;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (swift_dynamicCast())
  {
    v27 = *(v0 + 608);
    v28 = *(v0 + 616);
    v29 = *(v0 + 624);
    sub_10004F88C(v27, v28, *(v0 + 624));
  }

  else
  {
    _StringGuts.grow(_:)(37);
    0xE000000000000000, v30, v31, v32, v33, v34, v35, v36;
    swift_getErrorValue();
    v37._countAndFlagsBits = Error.localizedDescription.getter();
    v38 = v37._object;
    String.append(_:)(v37);
    v38, v39, v40, v41, v42, v43, v44, v45;
    v46._countAndFlagsBits = 32032;
    v46._object = 0xE200000000000000;
    String.append(_:)(v46);
    v27 = 0xD000000000000021;
    v28 = 0x80000001000981E0;

    v29 = 2;
  }

  v47 = *(v0 + 872);
  v48 = *(v0 + 864);
  v82 = *(v0 + 824);
  v49 = sub_10004F2E4(v27, v28, v29);
  v51 = v50;
  sub_100011CAC(v27, v28, v29, v52, v53, v54, v55, v56);
  v57 = sub_100056EF0(3u, 0, v49, v51);
  v51, v58, v59, v60, v61, v62, v63, v64;
  v57, v65, v66, v67, v68, v69, v70, v71;
  sub_10000B6B0();
  swift_allocError();
  *v72 = v27;
  *(v72 + 8) = v28;
  *(v72 + 16) = v29;
  swift_willThrow();

  v47, v73, v74, v75, v76, v77, v78, v79;

  sub_100066450(v82, type metadata accessor for ReportingAsset);

  v80 = *(v0 + 8);

  return v80();
}

uint64_t sub_100062B34(uint64_t a1)
{
  v2 = *(v1 + 840);
  v3 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(43);
  0xE000000000000000, v4, v5, v6, v7, v8, v9, v10;
  swift_getErrorValue();
  v11._countAndFlagsBits = Error.localizedDescription.getter();
  object = v11._object;
  String.append(_:)(v11);
  object, v13, v14, v15, v16, v17, v18, v19;
  v20._countAndFlagsBits = 32032;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  sub_10005E11C(v3, 0xD000000000000027, 0x80000001000980B0, 0xD000000000000052, 0x8000000100098050, 36);
  0x80000001000980B0, v21, v22, v23, v24, v25, v26, v27;
  *(v1 + 752) = v2;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (swift_dynamicCast())
  {
    v28 = *(v1 + 632);
    v29 = *(v1 + 640);
    v30 = *(v1 + 648);
    sub_10004F88C(v28, v29, *(v1 + 648));
  }

  else
  {
    _StringGuts.grow(_:)(43);
    0xE000000000000000, v31, v32, v33, v34, v35, v36, v37;
    swift_getErrorValue();
    v38._countAndFlagsBits = Error.localizedDescription.getter();
    v39 = v38._object;
    String.append(_:)(v38);
    v39, v40, v41, v42, v43, v44, v45, v46;
    v47._countAndFlagsBits = 32032;
    v47._object = 0xE200000000000000;
    String.append(_:)(v47);
    v28 = 0xD000000000000027;
    v29 = 0x80000001000980B0;

    v30 = 8;
  }

  v48 = sub_10004F2E4(v28, v29, v30);
  v50 = v49;
  sub_100011CAC(v28, v29, v30, v51, v52, v53, v54, v55);
  v56 = sub_100056EF0(3u, 0, v48, v50);
  v50, v57, v58, v59, v60, v61, v62, v63;
  v56, v64, v65, v66, v67, v68, v69, v70;
  sub_10000B6B0();
  swift_allocError();
  *v71 = v28;
  *(v71 + 8) = v29;
  *(v71 + 16) = v30;
  swift_willThrow();

  v72 = *(v1 + 8);

  return v72();
}

uint64_t sub_100062DF0(uint64_t a1)
{
  v2 = *(v1 + 880);
  v3 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(41);
  0xE000000000000000, v4, v5, v6, v7, v8, v9, v10;
  swift_getErrorValue();
  v11._countAndFlagsBits = Error.localizedDescription.getter();
  object = v11._object;
  String.append(_:)(v11);
  object, v13, v14, v15, v16, v17, v18, v19;
  v20._countAndFlagsBits = 32032;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  sub_10005E11C(v3, 0xD000000000000025, 0x80000001000981B0, 0xD000000000000052, 0x8000000100098050, 81);
  0x80000001000981B0, v21, v22, v23, v24, v25, v26, v27;
  *(v1 + 704) = v2;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (swift_dynamicCast())
  {
    v28 = *(v1 + 584);
    v29 = *(v1 + 592);
    v30 = *(v1 + 600);
    sub_10004F88C(v28, v29, *(v1 + 600));
  }

  else
  {
    _StringGuts.grow(_:)(41);
    0xE000000000000000, v31, v32, v33, v34, v35, v36, v37;
    swift_getErrorValue();
    v38._countAndFlagsBits = Error.localizedDescription.getter();
    v39 = v38._object;
    String.append(_:)(v38);
    v39, v40, v41, v42, v43, v44, v45, v46;
    v47._countAndFlagsBits = 32032;
    v47._object = 0xE200000000000000;
    String.append(_:)(v47);
    v28 = 0xD000000000000025;
    v29 = 0x80000001000981B0;

    v30 = 15;
  }

  v48 = *(v1 + 824);
  v49 = sub_10004F2E4(v28, v29, v30);
  v51 = v50;
  sub_100011CAC(v28, v29, v30, v52, v53, v54, v55, v56);
  v57 = sub_100056EF0(3u, 0, v49, v51);
  v51, v58, v59, v60, v61, v62, v63, v64;
  v57, v65, v66, v67, v68, v69, v70, v71;
  sub_10000B6B0();
  swift_allocError();
  *v72 = v28;
  *(v72 + 8) = v29;
  *(v72 + 16) = v30;
  swift_willThrow();

  sub_100066450(v48, type metadata accessor for ReportingAsset);

  v73 = *(v1 + 8);

  return v73();
}

uint64_t sub_1000630D0()
{
  v1 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = *(v0 + OBJC_IVAR____TtC13frauddefensed13ReportManager_uafAssetManager);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;

  sub_1000024AC(0, 0, v3, &unk_100092A80, v6);

  sub_10000BC10(v0 + OBJC_IVAR____TtC13frauddefensed13ReportManager_reportingAsset, &qword_1000B84D0, &qword_100092A88);

  v7 = OBJC_IVAR____TtC13frauddefensed13ReportManager_logger;
  v8 = type metadata accessor for Logger();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_1000632A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002A54;

  return sub_100052894();
}

uint64_t sub_100063338()
{
  sub_1000630D0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReportManager(uint64_t a1)
{
  result = qword_1000B8408;
  if (!qword_1000B8408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000633E4(uint64_t a1)
{
  sub_1000634D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000634D0(uint64_t a1)
{
  if (!qword_1000B8418)
  {
    type metadata accessor for ReportingAsset(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000B8418);
    }
  }
}

uint64_t sub_100063528()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100063568()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002A54;

  return sub_1000632A8();
}

uint64_t sub_10006361C()
{
  v1[11] = v0;
  sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_100002074(&qword_1000B84D0, &qword_100092A88);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v2 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_100063770, 0, 0);
}

uint64_t sub_100063770()
{
  v0[20] = *(v0[11] + OBJC_IVAR____TtC13frauddefensed13ReportManager_uafAssetManager);
  v1 = sub_10005163C();
  v2 = static os_log_type_t.default.getter();
  if (v1)
  {
    sub_10005E11C(v2, 0xD00000000000002ELL, 0x8000000100098840, 0xD000000000000052, 0x8000000100098050, 255);
    v3 = swift_task_alloc();
    v0[22] = v3;
    *v3 = v0;
    v3[1] = sub_100063AD8;
    v4 = v0[19];

    return sub_1000505B8(v4);
  }

  else
  {
    sub_10005E11C(v2, 0xD000000000000049, 0x8000000100098770, 0xD000000000000052, 0x8000000100098050, 252);
    v6 = swift_task_alloc();
    v0[21] = v6;
    *v6 = v0;
    v6[1] = sub_100063920;

    return sub_100051B58();
  }
}

uint64_t sub_100063920()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 176) = v6;
    *v6 = v3;
    v6[1] = sub_100063AD8;
    v7 = *(v2 + 152);

    return sub_1000505B8(v7);
  }
}

uint64_t sub_100063AD8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100064444;
  }

  else
  {
    v2 = sub_100063BEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100063BEC()
{
  v1 = v0[18];
  v2 = v0[17];
  v3 = v0[13];
  sub_1000663EC(v0[19], v3);
  (*(v1 + 56))(v3, 0, 1, v2);
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_100063CC0;
  v5 = v0[16];
  v6 = v0[13];

  return sub_10004E568(v5, v6);
}

uint64_t sub_100063CC0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_100064568;
  }

  else
  {
    v2 = sub_100063DD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100063DD4()
{
  v1 = v0[16];
  v2 = v0[11];
  sub_100066450(v0[19], type metadata accessor for UAFAssetManager.AssetInfo);
  v3 = type metadata accessor for ReportingAsset(0);
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = OBJC_IVAR____TtC13frauddefensed13ReportManager_reportingAsset;
  swift_beginAccess();
  sub_10006637C(v1, v2 + v5);
  swift_endAccess();
  v6 = v0[15];
  v7 = v0[11];
  v8 = OBJC_IVAR____TtC13frauddefensed13ReportManager_reportingAsset;
  swift_beginAccess();
  sub_100064758(v7 + v8, v6);
  LODWORD(v3) = (*(v4 + 48))(v6, 1, v3);
  sub_10000BC10(v6, &qword_1000B84D0, &qword_100092A88);
  if (v3 == 1)
  {
    v9 = static os_log_type_t.error.getter();
    sub_10005E11C(v9, 0xD000000000000018, 0x8000000100098820, 0xD000000000000052, 0x8000000100098050, 270);
    sub_10000B6B0();
    swift_allocError();
    *v10 = 0xD000000000000018;
    *(v10 + 8) = 0x8000000100098820;
    *(v10 + 16) = 14;
    swift_willThrow();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10006406C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1000646A8;
  }

  else
  {
    v2 = sub_100064180;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100064180()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = type metadata accessor for ReportingAsset(0);
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = OBJC_IVAR____TtC13frauddefensed13ReportManager_reportingAsset;
  swift_beginAccess();
  sub_10006637C(v1, v2 + v5);
  swift_endAccess();
  v6 = static os_log_type_t.debug.getter();
  sub_10005E11C(v6, 0xD000000000000022, 0x80000001000987F0, 0xD000000000000052, 0x8000000100098050, 266);

  v7 = v0[15];
  v8 = v0[11];
  v9 = OBJC_IVAR____TtC13frauddefensed13ReportManager_reportingAsset;
  swift_beginAccess();
  sub_100064758(v8 + v9, v7);
  LODWORD(v3) = (*(v4 + 48))(v7, 1, v3);
  sub_10000BC10(v7, &qword_1000B84D0, &qword_100092A88);
  if (v3 == 1)
  {
    v10 = static os_log_type_t.error.getter();
    sub_10005E11C(v10, 0xD000000000000018, 0x8000000100098820, 0xD000000000000052, 0x8000000100098050, 270);
    sub_10000B6B0();
    swift_allocError();
    *v11 = 0xD000000000000018;
    *(v11 + 8) = 0x8000000100098820;
    *(v11 + 16) = 14;
    swift_willThrow();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100064444(uint64_t a1)
{
  v2 = v1[17];
  v3 = v1[18];
  v4 = v1[12];
  v5 = OBJC_IVAR____TtC13frauddefensed13ReportManager_logger;
  v1[26] = v1[23];
  v1[27] = v5;
  v6 = static os_log_type_t.default.getter();
  sub_10005E11C(v6, 0xD00000000000002ELL, 0x80000001000987C0, 0xD000000000000052, 0x8000000100098050, 262);
  (*(v3 + 56))(v4, 1, 1, v2);
  v7 = swift_task_alloc();
  v1[28] = v7;
  *v7 = v1;
  v7[1] = sub_10006406C;
  v8 = v1[14];
  v9 = v1[12];

  return sub_10004E568(v8, v9);
}

uint64_t sub_100064568()
{
  sub_100066450(v0[19], type metadata accessor for UAFAssetManager.AssetInfo);
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[12];
  v4 = OBJC_IVAR____TtC13frauddefensed13ReportManager_logger;
  v0[26] = v0[25];
  v0[27] = v4;
  v5 = static os_log_type_t.default.getter();
  sub_10005E11C(v5, 0xD00000000000002ELL, 0x80000001000987C0, 0xD000000000000052, 0x8000000100098050, 262);
  (*(v2 + 56))(v3, 1, 1, v1);
  v6 = swift_task_alloc();
  v0[28] = v6;
  *v6 = v0;
  v6[1] = sub_10006406C;
  v7 = v0[14];
  v8 = v0[12];

  return sub_10004E568(v7, v8);
}

uint64_t sub_1000646A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100064758(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B84D0, &qword_100092A88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000647C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportingAsset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006482C(unsigned int a1, uint64_t a2)
{
  v147 = a2;
  v148 = a1;
  v146 = type metadata accessor for Locale();
  v3 = *(v146 - 8);
  __chkstk_darwin(v146);
  v5 = &v145 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002074(&qword_1000B6A68, &qword_10008F6F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v145 - v7;
  v9 = sub_100002074(&qword_1000B84D0, &qword_100092A88);
  __chkstk_darwin(v9 - 8);
  v11 = &v145 - v10;
  v12 = type metadata accessor for ReportingAsset(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC13frauddefensed13ReportManager_reportingAsset;
  swift_beginAccess();
  sub_100064758(v2 + v16, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000BC10(v11, &qword_1000B84D0, &qword_100092A88);
    v17 = static os_log_type_t.error.getter();
    sub_10005E11C(v17, 0xD00000000000004DLL, 0x80000001000986D0, 0xD000000000000052, 0x8000000100098050, 183);
LABEL_25:
    v114 = 0;
    return v114 & 1;
  }

  sub_1000647C8(v11, v15);
  v18 = *&v15[*(v12 + 20)];
  v19 = *(v18 + 144);
  v152[7] = *(v18 + 128);
  v20 = *(v18 + 64);
  v21 = *(v18 + 160);
  v152[8] = v19;
  v152[9] = v21;
  v153 = *(v18 + 176);
  v22 = *(v18 + 80);
  v23 = *(v18 + 96);
  v152[3] = v20;
  v152[4] = v22;
  v24 = *(v18 + 112);
  v152[5] = v23;
  v152[6] = v24;
  v25 = *(v18 + 16);
  v26 = *(v18 + 48);
  v152[1] = *(v18 + 32);
  v152[2] = v26;
  v152[0] = v25;
  sub_100021850(v152, v151);
  static Locale.current.getter();
  Locale.region.getter();
  (*(v3 + 8))(v5, v146);
  v27 = type metadata accessor for Locale.Region();
  v28 = *(v27 - 8);
  v29 = v15;
  if ((*(v28 + 48))(v8, 1, v27) == 1)
  {
    v30 = 0x6E776F6E6B6E75;
    sub_10000BC10(v8, &qword_1000B6A68, &qword_10008F6F0);
    v38 = 0xE700000000000000;
  }

  else
  {
    v30 = Locale.Region.identifier.getter();
    v38 = v39;
    (*(v28 + 8))(v8, v27);
  }

  v40 = v147;
  if (v148)
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
    0xE700000000000000, v43, v44, v45, v46, v47, v48, v49;
    if ((v42 & 1) == 0)
    {
      v57 = 0x8000000100098430;
      v41 = 0xD000000000000011;
      if (*(v40 + 16))
      {
        goto LABEL_12;
      }

LABEL_22:
      v38, v50, v51, v52, v53, v54, v55, v56;
      sub_1000216E0(v152);
      v57, v115, v116, v117, v118, v119, v120, v121;
      goto LABEL_23;
    }

    v41 = 0x73656D2D6D617073;
  }

  else
  {
    v41 = 0x73656D2D6D617073;
    0xE400000000000000, v31, v32, v33, v34, v35, v36, v37;
  }

  v57 = 0xED00007365676173;
  if (!*(v40 + 16))
  {
    goto LABEL_22;
  }

LABEL_12:
  v58 = sub_100057F68(v41, v57);
  v60 = v59;
  v57, v59, v61, v62, v63, v64, v65, v66;
  if ((v60 & 1) == 0 || (sub_100005BBC(*(v40 + 56) + 32 * v58, v151), sub_100002074(&qword_1000B7380, &unk_100090F50), (swift_dynamicCast() & 1) == 0))
  {
    v38, v67, v68, v69, v70, v71, v72, v73;
    sub_1000216E0(v152);
LABEL_23:
    v122 = static os_log_type_t.default.getter();
    sub_10005E11C(v122, 0xD000000000000041, 0x8000000100098720, 0xD000000000000052, 0x8000000100098050, 243);
LABEL_24:
    sub_100066450(v29, type metadata accessor for ReportingAsset);
    goto LABEL_25;
  }

  v74 = v149;
  if (!*(v149 + 16))
  {
    v38, v67, v68, v69, v70, v71, v72, v73;
    sub_1000216E0(v152);
    v74, v131, v132, v133, v134, v135, v136, v137;
    goto LABEL_24;
  }

  v75 = *(v149 + 32);

  v74, v76, v77, v78, v79, v80, v81, v82;
  if (!*v75->endpoint || (v90 = sub_100057F68(0x2D6567617373656DLL, 0xEF65636976726573), (v83 & 1) == 0))
  {
    v38, v83, v84, v85, v86, v87, v88, v89;
    sub_1000216E0(v152);
    v75, v124, v125, v126, v127, v128, v129, v130;
    goto LABEL_24;
  }

  sub_100005BBC(*v75[1].endpoint + 32 * v90, v151);
  v75, v91, v92, v93, v94, v95, v96, v97;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v38, v98, v99, v100, v101, v102, v103, v104;
    sub_1000216E0(v152);
    goto LABEL_24;
  }

  v106 = v149;
  v105 = v150;
  if (sub_1000658C8(v149, v150))
  {
    v114 = sub_1000659C0(v148, v106, v105, v30, v38, v152);
  }

  else
  {
    v114 = 0;
  }

  v38, v107, v108, v109, v110, v111, v112, v113;
  v105, v138, v139, v140, v141, v142, v143, v144;
  sub_1000216E0(v152);
  sub_100066450(v29, type metadata accessor for ReportingAsset);
  return v114 & 1;
}

void sub_100064F10(const char *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = sub_1000660E0(a2, a1, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v16 = v8;
    v17 = *(v8 + 16);
    if (v17)
    {
      v18 = 0;
      while (v18 < *v16->endpoint)
      {
        v19 = *&v16->$__lazy_storage_$_interface[8 * v18];
        if (!*v19->endpoint)
        {
          goto LABEL_12;
        }

        v20 = sub_100057F68(0x6E6F697369636564, 0xED00006F666E692DLL);
        if ((v21 & 1) == 0)
        {
          v19, v21, v22, v23, v24, v25, v26, v27;
LABEL_12:
          v16, v9, v10, v11, v12, v13, v14, v15;
          v35 = static os_log_type_t.error.getter();
          v36 = 289;
          goto LABEL_13;
        }

        sub_100005BBC(*v19[1].endpoint + 32 * v20, v46);
        v19, v28, v29, v30, v31, v32, v33, v34;
        sub_100002074(&qword_1000B7388, &qword_100091E50);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_12;
        }

        ++v18;
        v47, v9, v10, v11, v12, v13, v14, v15;
        if (v17 == v18)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:
      v16, v9, v10, v11, v12, v13, v14, v15;
    }
  }

  else
  {
    v35 = static os_log_type_t.error.getter();
    v36 = 281;
LABEL_13:
    sub_10005E11C(v35, 0xD000000000000037, 0x8000000100098690, 0xD000000000000052, 0x8000000100098050, v36);
    v37 = sub_100056EF0(3u, 0, 0x4964696C61766E69, 0xEC0000007475706ELL);
    v37, v38, v39, v40, v41, v42, v43, v44;
    sub_10000B6B0();
    swift_allocError();
    *v45 = 0xD000000000000037;
    *(v45 + 8) = 0x8000000100098690;
    *(v45 + 16) = 0;
    swift_willThrow();
  }
}

void sub_100065170(void *a1, _TtC13frauddefensed22TrustKitUIServerClient *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a4)
  {

    sub_100011CAC(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

void sub_100065214(uint64_t a1, uint64_t a2, char *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = sub_1000660E0(a2, a3, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v16 = v8;
    v17 = *(v8 + 16);
    if (v17)
    {
      v18 = 0;
      while (v18 < *v16->endpoint)
      {
        v19 = *&v16->$__lazy_storage_$_interface[8 * v18];
        if (*v19->endpoint)
        {

          v20 = sub_100057F68(0xD000000000000012, 0x8000000100098480);
          if (v21)
          {
            sub_100005BBC(*v19[1].endpoint + 32 * v20, v36);
            v19, v28, v29, v30, v31, v32, v33, v34;
            if (swift_dynamicCast())
            {
              goto LABEL_10;
            }
          }

          else
          {
            v19, v21, v22, v23, v24, v25, v26, v27;
          }
        }

        if (v17 == ++v18)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_10:
      v16, v9, v10, v11, v12, v13, v14, v15;
    }
  }

  else
  {
    v35 = static os_log_type_t.debug.getter();
    sub_10005E11C(v35, 0xD000000000000027, 0x8000000100098450, 0xD000000000000052, 0x8000000100098050, 109);
  }
}

uint64_t sub_100065384(const char *a1, uint64_t a2)
{
  if (qword_1000B66E0 != -1)
  {
    v70 = a1;
    swift_once();
    a1 = v70;
  }

  if (byte_1000B9460 != 1)
  {
    v68 = static os_log_type_t.default.getter();
    sub_10005E11C(v68, 0xD00000000000002CLL, 0x80000001000983A0, 0xD000000000000052, 0x8000000100098050, 320);
    return 0;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = sub_100057F68(0x692D74726F706572, 0xEB000000006F666ELL);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_100005BBC(*(a2 + 56) + 32 * v4, &v77);
  sub_100002074(&qword_1000B7388, &qword_100091E50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v13 = v75;
  if (!*v75->endpoint)
  {
    goto LABEL_25;
  }

  v14 = sub_100057F68(0x646574726F706572, 0xED00006D6F72662DLL);
  if ((v6 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_100005BBC(*v75[1].endpoint + 32 * v14, &v77);
  v75, v15, v16, v17, v18, v19, v20, v21;
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v77 = v75;
  v78 = v76;
  sub_10001C1B8();
  v22 = StringProtocol.contains<A>(_:)();
  v76, v23, v24, v25, v26, v27, v28, v29;
  if ((v22 & 1) == 0)
  {
    return 0;
  }

  v36 = sub_1000660E0(a2, v3, v30, v31, v32, v33, v34, v35);
  if (!v36)
  {
    return 0;
  }

  if (!*v36->endpoint)
  {
    goto LABEL_26;
  }

  v13 = *v36->$__lazy_storage_$_interface;
  v37 = v36;

  v37, v38, v39, v40, v41, v42, v43, v44;
  if (!*v13->endpoint || (v45 = sub_100057F68(0x2D6567617373656DLL, 0xEF65636976726573), (v6 & 1) == 0))
  {
LABEL_25:
    v36 = v13;
LABEL_26:
    v36, v6, v7, v8, v9, v10, v11, v12;
    return 0;
  }

  sub_100005BBC(*v13[1].endpoint + 32 * v45, &v77);
  v13, v46, v47, v48, v49, v50, v51, v52;
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v77 = 0x726163736FLL;
  v78 = 0xE500000000000000;
  v53 = StringProtocol.contains<A>(_:)();
  0xE500000000000000, v54, v55, v56, v57, v58, v59, v60;
  if (v53)
  {
    return 0;
  }

  v61 = static os_log_type_t.error.getter();
  sub_10005E11C(v61, 0xD000000000000033, 0x80000001000983D0, 0xD000000000000052, 0x8000000100098050, 339);
  v62 = sub_100054D10(0xD00000000000001BLL, 0x8000000100098410);
  if ((v63 & 1) == 0)
  {
    if (v62 <= 4)
    {
      v71 = v62;
      if (qword_1000B6658 != -1)
      {
        swift_once();
      }

      if (qword_1000B7C78)
      {
        v77 = v71 + 1;
        v72 = qword_1000B7C78;
        v73 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v74 = String._bridgeToObjectiveC()();
        [v72 setValue:v73 forKey:{v74, 0x6567617373654D69, 0xE800000000000000}];

        swift_unknownObjectRelease();
      }

      return 1;
    }

    return 0;
  }

  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (!qword_1000B7C78)
  {
    return 1;
  }

  v64 = 1;
  v77 = 1;
  v65 = qword_1000B7C78;
  v66 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v67 = String._bridgeToObjectiveC()();
  [v65 setValue:v66 forKey:{v67, 0x6567617373654D69, 0xE800000000000000}];

  swift_unknownObjectRelease();
  return v64;
}

uint64_t sub_10006584C()
{
  v1 = OBJC_IVAR____TtC13frauddefensed13ReportManager____lazy_storage___angelServerClient;
  if (*(v0 + OBJC_IVAR____TtC13frauddefensed13ReportManager____lazy_storage___angelServerClient))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13frauddefensed13ReportManager____lazy_storage___angelServerClient);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TrustKitUIServerClient(0);
    swift_allocObject();
    v2 = sub_10002D554();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1000658C8(uint64_t a1, uint64_t a2)
{
  sub_10001C1B8();
  if (StringProtocol.contains<A>(_:)() & 1) != 0 || (StringProtocol.contains<A>(_:)())
  {
    v2 = 1;
  }

  else
  {
    v2 = StringProtocol.contains<A>(_:)();
  }

  return v2 & 1;
}

uint64_t sub_1000659C0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = a2 == 5456722 && a3 == 0xE300000000000000;
  if (a1)
  {
    if (a1 == 1)
    {
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v13 = a6[13];
        if (!*(v13 + 16))
        {
          return 0;
        }

        goto LABEL_20;
      }

      if (a2 == 0x6567617373654D69 && a3 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v18 = a6[12];
      }

      else
      {
        if ((a2 != 5459283 || a3 != 0xE300000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }

        v18 = a6[11];
      }
    }

    else
    {
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v13 = a6[6];
        if (!*(v13 + 16))
        {
          return 0;
        }

LABEL_20:
        v14 = sub_100057F68(a4, a5);
        if (v15)
        {
          return *(*(v13 + 56) + v14);
        }

        if (*(v13 + 16))
        {
          v14 = sub_100057F68(0x6C61626F6C67, 0xE600000000000000);
          if (v16)
          {
            return *(*(v13 + 56) + v14);
          }
        }

        return 0;
      }

      if (a2 == 0x6567617373654D69 && a3 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v18 = a6[5];
      }

      else
      {
        if ((a2 != 5459283 || a3 != 0xE300000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }

        v18 = a6[4];
      }
    }
  }

  else
  {
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = a6[20];
      if (!*(v13 + 16))
      {
        return 0;
      }

      goto LABEL_20;
    }

    if (a2 == 0x6567617373654D69 && a3 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v18 = a6[19];
    }

    else
    {
      if ((a2 != 5459283 || a3 != 0xE300000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v18 = a6[18];
    }
  }

  return sub_100021018(a4, a5, v18);
}

uint64_t sub_100065C98()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13frauddefensed13ReportManager_reportingAsset;
  v3 = type metadata accessor for ReportingAsset(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC13frauddefensed13ReportManager_eligibilityManager;
  type metadata accessor for EligibilityManager(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger;
  if (qword_1000B6690 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_100003448(v7, qword_1000B9388);
  v9 = *(*(v7 - 8) + 16);
  v27 = v8;
  v9(v5 + v6);
  *(v1 + v4) = v5;
  v26 = OBJC_IVAR____TtC13frauddefensed13ReportManager_uafAssetManager;
  type metadata accessor for UAFAssetManager(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC13frauddefensed15UAFAssetManager_logger;
  if (qword_1000B66B8 != -1)
  {
    swift_once();
  }

  v12 = sub_100003448(v7, qword_1000B9400);
  (v9)(v10 + v11, v12, v7);
  *(v10 + 16) = 0xD000000000000019;
  *(v10 + 24) = 0x8000000100094840;
  *(v10 + 32) = 0xD000000000000022;
  *(v10 + 40) = 0x8000000100094860;
  *(v10 + 48) = 0xD00000000000001CLL;
  *(v10 + 56) = 0x8000000100093B80;
  strcpy((v10 + 64), "tk.reporting");
  *(v10 + 77) = 0;
  *(v10 + 78) = -5120;
  *(v1 + v26) = v10;
  type metadata accessor for AttestationManager(0);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000055C8();
  v14 = OBJC_IVAR____TtC13frauddefensed18AttestationManager_logger;
  if (qword_1000B6698 != -1)
  {
    swift_once();
  }

  v15 = sub_100003448(v7, qword_1000B93A0);
  (v9)(v13 + v14, v15, v7);
  if (!DeviceIdentityIsSupported())
  {

    v13 = 0;
  }

  *(v1 + OBJC_IVAR____TtC13frauddefensed13ReportManager_attestationManager) = v13;
  v16 = OBJC_IVAR____TtC13frauddefensed13ReportManager_networkManager;
  sub_100002074(&qword_1000B84F0, &qword_100092AB8);
  swift_allocObject();
  *(v1 + v16) = sub_10005EC70();
  v17 = OBJC_IVAR____TtC13frauddefensed13ReportManager_analyticsManager;
  type metadata accessor for DaemonAnalyticsManager(0);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_logger;
  if (qword_1000B66A8 != -1)
  {
    swift_once();
  }

  v20 = sub_100003448(v7, qword_1000B93D0);
  (v9)(v18 + v19, v20, v7);
  v21 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_eligibilityManager;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  (v9)(v22 + OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger, v27, v7);
  *(v18 + v21) = v22;
  *(v1 + v17) = v18;
  *(v1 + OBJC_IVAR____TtC13frauddefensed13ReportManager____lazy_storage___angelServerClient) = 0;
  v23 = OBJC_IVAR____TtC13frauddefensed13ReportManager_logger;
  if (qword_1000B6670 != -1)
  {
    swift_once();
  }

  v24 = sub_100003448(v7, qword_1000B9328);
  (v9)(v1 + v23, v24, v7);
  return v1;
}

uint64_t sub_1000660E0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (!a2)
  {
    v9 = 0x73656D2D6D617073;
    0xE400000000000000, a2, a3, a4, a5, a6, a7, a8;
    v25 = 0xED00007365676173;
    if (*(a1 + 16))
    {
      goto LABEL_6;
    }

LABEL_10:
    v25, v18, v19, v20, v21, v22, v23, v24;
    return 0;
  }

  v9 = 0x73656D2D6D617073;
  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE700000000000000, v11, v12, v13, v14, v15, v16, v17;
  if (v10)
  {
    v25 = 0xED00007365676173;
  }

  else
  {
    v9 = 0xD000000000000011;
    v25 = 0x8000000100098430;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_6:
  v26 = sub_100057F68(v9, v25);
  v28 = v27;
  v25, v27, v29, v30, v31, v32, v33, v34;
  if (v28)
  {
    sub_100005BBC(*(a1 + 56) + 32 * v26, v37);
    sub_100002074(&qword_1000B7380, &unk_100090F50);
    if (swift_dynamicCast())
    {
      return v36;
    }
  }

  return 0;
}

unint64_t sub_1000662B8()
{
  result = qword_1000B84E0;
  if (!qword_1000B84E0)
  {
    sub_100003400(&qword_1000B6908, &qword_10008F700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B84E0);
  }

  return result;
}

unint64_t sub_10006631C()
{
  result = qword_1000B84E8;
  if (!qword_1000B84E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B84E8);
  }

  return result;
}

void sub_100066370(uint64_t a1, _TtC13frauddefensed22TrustKitUIServerClient *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a4)
  {
    sub_100011CAC(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    sub_100005A28(a1, a2);
  }
}

uint64_t sub_10006637C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B84D0, &qword_100092A88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000663EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100066450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000664B0()
{
  v1[10] = v0;
  v1[11] = type metadata accessor for SpamDecisioningAsset(0);
  v1[12] = swift_task_alloc();
  sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_100066594, 0, 0);
}

uint64_t sub_100066594()
{
  v1 = v0[15];
  v2 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v0[16] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 56);
  v0[17] = v4;
  v0[18] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v0[19] = sub_10000CDA8();
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_10006668C;
  v6 = v0[14];

  return sub_1000505B8(v6);
}

uint64_t sub_10006668C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100066A6C;
  }

  else
  {

    v2 = sub_1000667A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000667A8()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  sub_100010C70(v2);
  v1(v4, 0, 1, v3);
  sub_100011D64(v4, v2);
  sub_10006A82C(v0[15], v0[13]);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_10006688C;
  v6 = v0[12];
  v7 = v0[13];

  return sub_1000122EC(v6, v7);
}

uint64_t sub_10006688C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100066C38;
  }

  else
  {
    v2 = sub_1000669A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000669A0()
{
  v1 = v0[11];
  v2 = v0[12];
  sub_100010C70(v0[15]);
  v3 = *(v2 + *(v1 + 32));

  sub_100011370(v2, type metadata accessor for SpamDecisioningAsset);
  v4 = *(v3 + 256);

  v5 = v0[1];
  v6.n128_u64[0] = v4;

  return v5(v6);
}

uint64_t sub_100066A6C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];

  v4 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(96);
  v5._object = 0x8000000100098920;
  v5._countAndFlagsBits = 0xD00000000000005CLL;
  String.append(_:)(v5);
  swift_getErrorValue();
  v6._countAndFlagsBits = Error.localizedDescription.getter();
  object = v6._object;
  String.append(_:)(v6);
  object, v8, v9, v10, v11, v12, v13, v14;
  v15._countAndFlagsBits = 32032;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  sub_10005E11C(v4, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 28);
  0xE000000000000000, v16, v17, v18, v19, v20, v21, v22;

  sub_100010C70(v3);
  v2(v3, 1, 1, v1);
  sub_10006A82C(v0[15], v0[13]);
  v23 = swift_task_alloc();
  v0[22] = v23;
  *v23 = v0;
  v23[1] = sub_10006688C;
  v24 = v0[12];
  v25 = v0[13];

  return sub_1000122EC(v24, v25);
}

uint64_t sub_100066C38(uint64_t a1)
{
  v2 = *(v1 + 120);
  v3 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(97);
  v4._object = 0x8000000100098980;
  v4._countAndFlagsBits = 0xD00000000000005DLL;
  String.append(_:)(v4);
  swift_getErrorValue();
  v5._countAndFlagsBits = Error.localizedDescription.getter();
  object = v5._object;
  String.append(_:)(v5);
  object, v7, v8, v9, v10, v11, v12, v13;
  v14._countAndFlagsBits = 32032;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  sub_10005E11C(v3, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 38);
  0xE000000000000000, v15, v16, v17, v18, v19, v20, v21;

  sub_100010C70(v2);

  v22 = *(v1 + 8);
  v23.n128_u64[0] = 0x4072C00000000000;

  return v22(v23);
}

uint64_t sub_100066DC4()
{
  v1[10] = v0;
  v1[11] = type metadata accessor for SpamDecisioningAsset(0);
  v1[12] = swift_task_alloc();
  sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_100066EA8, 0, 0);
}

uint64_t sub_100066EA8()
{
  v1 = v0[15];
  v2 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v0[16] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 56);
  v0[17] = v4;
  v0[18] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v0[19] = sub_10000CDA8();
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_100066FA0;
  v6 = v0[14];

  return sub_1000505B8(v6);
}

uint64_t sub_100066FA0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100067380;
  }

  else
  {

    v2 = sub_1000670BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000670BC()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  sub_100010C70(v2);
  v1(v4, 0, 1, v3);
  sub_100011D64(v4, v2);
  sub_10006A82C(v0[15], v0[13]);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_1000671A0;
  v6 = v0[12];
  v7 = v0[13];

  return sub_1000122EC(v6, v7);
}

uint64_t sub_1000671A0()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10006754C;
  }

  else
  {
    v2 = sub_1000672B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000672B4()
{
  v1 = v0[11];
  v2 = v0[12];
  sub_100010C70(v0[15]);
  v3 = *(v2 + *(v1 + 32));

  sub_100011370(v2, type metadata accessor for SpamDecisioningAsset);
  v4 = *(v3 + 264);

  v5 = v0[1];
  v6.n128_u64[0] = v4;

  return v5(v6);
}

uint64_t sub_100067380()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];

  v4 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(96);
  v5._object = 0x8000000100098920;
  v5._countAndFlagsBits = 0xD00000000000005CLL;
  String.append(_:)(v5);
  swift_getErrorValue();
  v6._countAndFlagsBits = Error.localizedDescription.getter();
  object = v6._object;
  String.append(_:)(v6);
  object, v8, v9, v10, v11, v12, v13, v14;
  v15._countAndFlagsBits = 32032;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  sub_10005E11C(v4, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 51);
  0xE000000000000000, v16, v17, v18, v19, v20, v21, v22;

  sub_100010C70(v3);
  v2(v3, 1, 1, v1);
  sub_10006A82C(v0[15], v0[13]);
  v23 = swift_task_alloc();
  v0[22] = v23;
  *v23 = v0;
  v23[1] = sub_1000671A0;
  v24 = v0[12];
  v25 = v0[13];

  return sub_1000122EC(v24, v25);
}

uint64_t sub_10006754C(uint64_t a1)
{
  v2 = *(v1 + 120);
  v3 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(97);
  v4._object = 0x8000000100098980;
  v4._countAndFlagsBits = 0xD00000000000005DLL;
  String.append(_:)(v4);
  swift_getErrorValue();
  v5._countAndFlagsBits = Error.localizedDescription.getter();
  object = v5._object;
  String.append(_:)(v5);
  object, v7, v8, v9, v10, v11, v12, v13;
  v14._countAndFlagsBits = 32032;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  sub_10005E11C(v3, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 61);
  0xE000000000000000, v15, v16, v17, v18, v19, v20, v21;

  sub_100010C70(v2);

  v22 = *(v1 + 8);
  v23.n128_u64[0] = 0x404E000000000000;

  return v22(v23);
}

uint64_t sub_1000676F4()
{
  sub_10000CDA8();
  v1 = sub_10005163C();

  if (v1)
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[2];
    v5 = static os_log_type_t.default.getter();
    sub_10005E11C(v5, 0xD00000000000002ALL, 0x80000001000948C0, 0xD000000000000066, 0x80000001000988B0, 72);
    v0[3] = *(v4 + 48);

    v6 = swift_task_alloc();
    v0[4] = v6;
    *v6 = v0;
    v6[1] = sub_10000D9A4;

    return sub_100051B58();
  }
}

uint64_t sub_100067838(uint64_t a1)
{
  v2[97] = v1;
  v2[96] = a1;
  v2[98] = type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput(0);
  v2[99] = swift_task_alloc();
  type metadata accessor for SpamDecisioningAsset(0);
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();

  return _swift_task_switch(sub_100067958, 0, 0);
}

uint64_t sub_100067958()
{
  v0[105] = sub_10000CDA8();
  v1 = swift_task_alloc();
  v0[106] = v1;
  *v1 = v0;
  v1[1] = sub_1000679FC;
  v2 = v0[103];

  return sub_1000505B8(v2);
}

uint64_t sub_1000679FC()
{
  *(*v1 + 856) = v0;

  if (v0)
  {
    v2 = sub_100068CB4;
  }

  else
  {

    v2 = sub_100067B18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100067B18()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_100011D64(v2, v1);
  sub_10006A82C(v0[104], v0[102]);
  v4 = swift_task_alloc();
  v0[108] = v4;
  *v4 = v0;
  v4[1] = sub_100067C10;
  v5 = v0[102];
  v6 = v0[100];

  return sub_1000122EC(v6, v5);
}

uint64_t sub_100067C10()
{
  *(*v1 + 872) = v0;

  if (v0)
  {
    v2 = sub_100068EA0;
  }

  else
  {
    v2 = sub_100067D24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100067D24()
{
  v1 = v0[109];
  sub_100010CD8(v0[100], v0[101]);
  v2 = sub_100010D3C(0);
  v0[110] = v2;
  type metadata accessor for SignaturesSQLiteManager(0);
  swift_allocObject();
  v3 = sub_10006D3FC(0, 0);
  v0[111] = v3;
  v0[62] = &type metadata for SignatureAnalysisDecisioningComponentProvider;
  v0[63] = &off_1000B0938;
  v0[59] = v2;
  v0[60] = v3;
  type metadata accessor for SignatureAnalysisDecisioningComponent(0);
  v4 = swift_allocObject();
  v5 = sub_100010F28((v0 + 59), &type metadata for SignatureAnalysisDecisioningComponentProvider);
  v6 = swift_task_alloc();
  (_swift_cvw_initWithCopy)(v6, v5, &type metadata for SignatureAnalysisDecisioningComponentProvider);
  v7 = *v6;
  v8 = v6[1];

  v9 = sub_100010FC8(v7, v8, v4);
  v0[112] = v9;
  sub_100003558(v0 + 59);

  sub_1000318A4();
  if (v1)
  {
    v10 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(77);
    v11._object = 0x80000001000945B0;
    v11._countAndFlagsBits = 0xD000000000000049;
    String.append(_:)(v11);
    swift_getErrorValue();
    v12._countAndFlagsBits = Error.localizedDescription.getter();
    object = v12._object;
    String.append(_:)(v12);
    object, v14, v15, v16, v17, v18, v19, v20;
    v21._countAndFlagsBits = 32032;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    sub_10005E11C(v10, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 116);
    0xE000000000000000, v22, v23, v24, v25, v26, v27, v28;

    v29 = sub_1000111EC((v9 + 16), *(v9 + 40))[1];
    v30 = qword_1000B6700;

    if (v30 != -1)
    {
      swift_once();
    }

    v31 = qword_1000B89E0;
    v1 = swift_allocObject();
    *(v1 + 16) = sub_100011230;
    *(v1 + 24) = v29;
    v0[45] = sub_10004D5C8;
    v0[46] = v1;
    v0[41] = _NSConcreteStackBlock;
    v0[42] = 1107296256;
    v0[43] = sub_100010FA0;
    v0[44] = &unk_1000B0FB0;
    v32 = _Block_copy(v0 + 41);

    dispatch_sync(v31, v32);
    _Block_release(v32);
    LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

    if ((v32 & 1) == 0)
    {
      sub_100011370(v0[101], type metadata accessor for SpamDecisioningAsset);
      v33 = v0[96];
      sub_100010C70(v0[104]);
      sub_1000696BC(v33);

      v34 = v0[1];
LABEL_10:

      return v34();
    }

    __break(1u);
  }

  else
  {
    v35 = qword_1000B6700;

    if (v35 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v36 = qword_1000B89E0;
  v0[113] = qword_1000B89E0;
  OS_dispatch_queue.sync<A>(execute:)();

  if (v1)
  {
    v37 = sub_1000111EC((v9 + 16), *(v9 + 40))[1];
    v38 = swift_allocObject();
    *(v38 + 16) = sub_100011E70;
    *(v38 + 24) = v37;
    v0[51] = sub_10004E120;
    v0[52] = v38;
    v0[47] = _NSConcreteStackBlock;
    v0[48] = 1107296256;
    v0[49] = sub_100010FA0;
    v0[50] = &unk_1000B1000;
    v39 = _Block_copy(v0 + 47);
    swift_retain_n();

    dispatch_sync(v36, v39);
    _Block_release(v39);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return result;
    }

    v42 = v0[104];
    v43 = v0[96];
    sub_100011370(v0[101], type metadata accessor for SpamDecisioningAsset);
    sub_100010C70(v42);
    sub_1000696BC(v43);

    v34 = v0[1];
    goto LABEL_10;
  }

  v0[114] = v0[92];
  v44 = swift_task_alloc();
  v0[115] = v44;
  *v44 = v0;
  v44[1] = sub_100068458;

  return sub_1000697F4();
}

uint64_t sub_100068458(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 928) = a1;
  *(v3 + 936) = a2;

  return _swift_task_switch(sub_10006855C, 0, 0);
}

uint64_t sub_10006855C(uint64_t a1)
{
  v2 = v1[101];
  v3 = v1[99];
  v4 = v1[98];
  v1[118] = OBJC_IVAR____TtC13frauddefensed33AdHocSignaturesBackgroundActivity_logger;
  v5 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(80);
  v6._object = 0x8000000100094600;
  v6._countAndFlagsBits = 0xD00000000000004CLL;
  String.append(_:)(v6);
  v7._countAndFlagsBits = Duration.description.getter();
  object = v7._object;
  String.append(_:)(v7);
  object, v9, v10, v11, v12, v13, v14, v15;
  v16._countAndFlagsBits = 32032;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  sub_10005E11C(v5, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 124);
  0xE000000000000000, v17, v18, v19, v20, v21, v22, v23;
  sub_100011308(v2, v3, type metadata accessor for SpamDecisioningAsset);
  *(v3 + *(v4 + 20)) = 0;
  v1[67] = v4;
  v1[68] = &off_1000B0920;
  v24 = sub_1000112A4(v1 + 64);
  sub_100011308(v3, v24, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput);
  v25 = swift_task_alloc();
  v1[119] = v25;
  *v25 = v1;
  v25[1] = sub_100068758;
  v26 = v1[117];
  v27 = v1[116];

  return sub_100031B04((v1 + 69), (v1 + 64), v27, v26, 0);
}

uint64_t sub_100068758()
{
  v2 = *v1;
  *(*v1 + 960) = v0;

  if (v0)
  {
    v3 = sub_10006905C;
  }

  else
  {
    sub_100003558((v2 + 512));
    v3 = sub_100068874;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100068874()
{
  v1 = v0[114];
  v2 = v0[99];
  sub_100002074(&qword_1000B6CC8, &unk_10008F950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008F840;
  *(inited + 32) = 0x79745F6863746566;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = String._bridgeToObjectiveC()();
  strcpy((inited + 56), "fetched_count");
  *(inited + 70) = -4864;
  v4 = sub_10005BC54(v0[70]);
  sub_100056BB0(v4);
  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v6, v8, v9, v10, v11, v12, v13, v14;
  *(inited + 72) = v7;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001000946B0;
  v15 = sub_10005BD48();
  sub_100056D70(v15);
  v17 = v16;
  v18 = String._bridgeToObjectiveC()();
  v17, v19, v20, v21, v22, v23, v24, v25;
  *(inited + 96) = v18;
  *(inited + 104) = 0xD00000000000001BLL;
  *(inited + 112) = 0x80000001000946D0;
  sub_100011CC4();
  isa = NSNumber.init(BOOLeanLiteral:)(*(v0 + 584)).super.super.isa;
  sub_100011D10((v0 + 69));
  *(inited + 120) = isa;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x8000000100094690;
  v27 = sub_10005BC54(v1);
  sub_100056BB0(v27);
  v29 = v28;
  v30 = String._bridgeToObjectiveC()();
  v29, v31, v32, v33, v34, v35, v36, v37;
  *(inited + 144) = v30;
  v38 = sub_100011A78(inited);
  swift_setDeallocating();
  sub_100002074(&qword_1000B6CD0, &qword_100092B90);
  swift_arrayDestroy();
  v39 = sub_100056EF0(1u, v38, 0, 0);
  v38, v40, v41, v42, v43, v44, v45, v46;
  v39, v47, v48, v49, v50, v51, v52, v53;
  sub_100011370(v2, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput);
  v54 = v0[113];
  v55 = sub_1000111EC((v0[112] + 16), *(v0[112] + 40))[1];
  v56 = swift_allocObject();
  *(v56 + 16) = sub_100011E70;
  *(v56 + 24) = v55;
  v0[57] = sub_10004E120;
  v0[58] = v56;
  v0[53] = _NSConcreteStackBlock;
  v0[54] = 1107296256;
  v0[55] = sub_100010FA0;
  v0[56] = &unk_1000B1050;
  v57 = _Block_copy(v0 + 53);
  swift_retain_n();

  dispatch_sync(v54, v57);
  _Block_release(v57);
  LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

  if (v57)
  {
    __break(1u);
  }

  else
  {
    sub_100011370(v0[101], type metadata accessor for SpamDecisioningAsset);
    v59 = v0[96];
    sub_100010C70(v0[104]);
    sub_1000696BC(v59);

    v60 = v0[1];

    return v60();
  }

  return result;
}

uint64_t sub_100068CB4()
{
  v1 = v0[104];

  v2 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(73);
  v3._object = 0x80000001000944A0;
  v3._countAndFlagsBits = 0xD000000000000045;
  String.append(_:)(v3);
  swift_getErrorValue();
  v4._countAndFlagsBits = Error.localizedDescription.getter();
  object = v4._object;
  String.append(_:)(v4);
  object, v6, v7, v8, v9, v10, v11, v12;
  v13._countAndFlagsBits = 32032;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  sub_10005E11C(v2, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 94);

  0xE000000000000000, v14, v15, v16, v17, v18, v19, v20;
  v21 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  (*(*(v21 - 8) + 56))(v1, 1, 1, v21);
  sub_10006A82C(v0[104], v0[102]);
  v22 = swift_task_alloc();
  v0[108] = v22;
  *v22 = v0;
  v22[1] = sub_100067C10;
  v23 = v0[102];
  v24 = v0[100];

  return sub_1000122EC(v24, v23);
}

uint64_t sub_100068EA0(uint64_t a1)
{
  v2 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(74);
  v3._object = 0x8000000100094560;
  v3._countAndFlagsBits = 0xD000000000000046;
  String.append(_:)(v3);
  swift_getErrorValue();
  v4._countAndFlagsBits = Error.localizedDescription.getter();
  object = v4._object;
  String.append(_:)(v4);
  object, v6, v7, v8, v9, v10, v11, v12;
  v13._countAndFlagsBits = 32032;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  sub_10005E11C(v2, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 102);
  0xE000000000000000, v14, v15, v16, v17, v18, v19, v20;

  v21 = v1[96];
  sub_100010C70(v1[104]);
  sub_1000696BC(v21);

  v22 = v1[1];

  return v22();
}

uint64_t sub_10006905C()
{
  v1 = v0[120];
  sub_100011370(v0[99], type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput);
  sub_100003558(v0 + 64);
  v2 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(65);
  v3._countAndFlagsBits = 0xD00000000000003DLL;
  v3._object = 0x8000000100094650;
  String.append(_:)(v3);
  swift_getErrorValue();
  v4._countAndFlagsBits = Error.localizedDescription.getter();
  object = v4._object;
  String.append(_:)(v4);
  object, v6, v7, v8, v9, v10, v11, v12;
  v13._countAndFlagsBits = 32032;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  sub_10005E11C(v2, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 140);
  0xE000000000000000, v14, v15, v16, v17, v18, v19, v20;
  v0[94] = v1;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (swift_dynamicCast())
  {
    v26 = v0[86];
    v27 = v0[87];
    v28 = *(v0 + 704);
    if (v28 == 9)
    {
      v29 = v0[114];
      sub_100002074(&qword_1000B6CC8, &unk_10008F950);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10008F850;
      *(inited + 32) = 0x79745F6863746566;
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 48) = String._bridgeToObjectiveC()();
      *(inited + 56) = 0xD000000000000013;
      *(inited + 64) = 0x8000000100094690;
      v31 = sub_10005BC54(v29);
      sub_100056BB0(v31);
      v33 = v32;
      v34 = String._bridgeToObjectiveC()();
      v33, v35, v36, v37, v38, v39, v40, v41;
      *(inited + 72) = v34;
      v42 = sub_100011A78(inited);
      swift_setDeallocating();
      sub_100002074(&qword_1000B6CD0, &qword_100092B90);
      swift_arrayDestroy();
      v43 = sub_10004F2E4(v26, v27, 9);
      v45 = v44;
      sub_100011CAC(v26, v27, 9, v46, v47, v48, v49, v50);
      v51 = sub_100056EF0(1u, v42, v43, v45);
      v45, v52, v53, v54, v55, v56, v57, v58;
      v42, v59, v60, v61, v62, v63, v64, v65;
      v51, v66, v67, v68, v69, v70, v71, v72;
    }

    else
    {
      sub_100011CAC(v0[86], v0[87], v28, v21, v22, v23, v24, v25);
    }
  }

  v0[95] = v0[120];
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v73 = v0[114];
    sub_100002074(&qword_1000B6CC8, &unk_10008F950);
    v74 = swift_initStackObject();
    *(v74 + 16) = xmmword_10008F850;
    *(v74 + 32) = 0x79745F6863746566;
    *(v74 + 40) = 0xEA00000000006570;
    *(v74 + 48) = String._bridgeToObjectiveC()();
    *(v74 + 56) = 0xD000000000000013;
    *(v74 + 64) = 0x8000000100094690;
    v75 = sub_10005BC54(v73);
    sub_100056BB0(v75);
    v77 = v76;
    v78 = String._bridgeToObjectiveC()();
    v77, v79, v80, v81, v82, v83, v84, v85;
    *(v74 + 72) = v78;
    v86 = sub_100011A78(v74);
    swift_setDeallocating();
    sub_100002074(&qword_1000B6CD0, &qword_100092B90);
    swift_arrayDestroy();
    v87 = sub_100056EF0(1u, v86, 0x74694B64756F6C63, 0xEF6572756C696146);

    v86, v88, v89, v90, v91, v92, v93, v94;
    v87, v95, v96, v97, v98, v99, v100, v101;
  }

  else
  {
  }

  v102 = v0[113];
  v103 = sub_1000111EC((v0[112] + 16), *(v0[112] + 40))[1];
  v104 = swift_allocObject();
  *(v104 + 16) = sub_100011E70;
  *(v104 + 24) = v103;
  v0[57] = sub_10004E120;
  v0[58] = v104;
  v0[53] = _NSConcreteStackBlock;
  v0[54] = 1107296256;
  v0[55] = sub_100010FA0;
  v0[56] = &unk_1000B1050;
  v105 = _Block_copy(v0 + 53);
  swift_retain_n();

  dispatch_sync(v102, v105);
  _Block_release(v105);
  LOBYTE(v105) = swift_isEscapingClosureAtFileLocation();

  if (v105)
  {
    __break(1u);
  }

  else
  {
    sub_100011370(v0[101], type metadata accessor for SpamDecisioningAsset);
    v107 = v0[96];
    sub_100010C70(v0[104]);
    sub_1000696BC(v107);

    v108 = v0[1];

    return v108();
  }

  return result;
}

void sub_1000696BC(void *a1)
{
  [a1 setTaskCompleted];
  v2 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(55);
  v3._object = 0x8000000100094800;
  v3._countAndFlagsBits = 0xD000000000000033;
  String.append(_:)(v3);
  v4 = [a1 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);
  v7, v9, v10, v11, v12, v13, v14, v15;
  v16._countAndFlagsBits = 32032;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  sub_10005E11C(v2, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 87);

  0xE000000000000000, v17, v18, v19, v20, v21, v22, v23;
}

uint64_t sub_1000697F4()
{
  v1[10] = v0;
  v1[11] = type metadata accessor for SpamDecisioningAsset(0);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000698E4, 0, 0);
}

uint64_t sub_1000698E4()
{
  v1 = v0[16];
  v2 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v0[17] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 56);
  v0[18] = v4;
  v0[19] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v0[20] = sub_10000CDA8();
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_1000699DC;
  v6 = v0[15];

  return sub_1000505B8(v6);
}

uint64_t sub_1000699DC()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100069F48;
  }

  else
  {

    v2 = sub_100069AF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100069AF8()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  sub_100010C70(v2);
  v1(v4, 0, 1, v3);
  sub_100011D64(v4, v2);
  sub_10006A82C(v0[16], v0[14]);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_100069BE0;
  v6 = v0[14];
  v7 = v0[12];

  return sub_1000122EC(v7, v6);
}

uint64_t sub_100069BE0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_10006A118;
  }

  else
  {
    v2 = sub_100069CF4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100069CF4()
{
  v1 = v0[13];
  v2 = v0[11];
  sub_100010CD8(v0[12], v1);
  v3 = *(v1 + *(v2 + 32));
  v4 = *(v3 + 232);
  if (*v4->endpoint)
  {

    sub_100057F68(0x746C7561666564, 0xE700000000000000);
    if (v5)
    {
      v12 = v0[16];
      v13 = v0[13];
      v4, v5, v6, v7, v8, v9, v10, v11;
      goto LABEL_6;
    }

    v4, v5, v6, v7, v8, v9, v10, v11;
  }

  v12 = v0[16];
  v13 = v0[13];
  v14 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(78);
  v15._object = 0x8000000100094790;
  v15._countAndFlagsBits = 0xD00000000000004ALL;
  String.append(_:)(v15);
  v16 = *(v3 + 232);

  v17 = Dictionary.description.getter();
  v19 = v18;
  v16, v18, v20, v21, v22, v23, v24, v25;
  v26._countAndFlagsBits = v17;
  v26._object = v19;
  String.append(_:)(v26);
  v19, v27, v28, v29, v30, v31, v32, v33;
  v34._countAndFlagsBits = 32032;
  v34._object = 0xE200000000000000;
  String.append(_:)(v34);
  sub_10005E11C(v14, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 197);
  0xE000000000000000, v35, v36, v37, v38, v39, v40, v41;
LABEL_6:
  v42 = static Duration.seconds(_:)();
  v44 = v43;
  sub_100010C70(v12);
  sub_100011370(v13, type metadata accessor for SpamDecisioningAsset);

  v45 = v0[1];

  return v45(v42, v44);
}

uint64_t sub_100069F48()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];

  v4 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(90);
  v5._object = 0x80000001000946F0;
  v5._countAndFlagsBits = 0xD000000000000056;
  String.append(_:)(v5);
  swift_getErrorValue();
  v6._countAndFlagsBits = Error.localizedDescription.getter();
  object = v6._object;
  String.append(_:)(v6);
  object, v8, v9, v10, v11, v12, v13, v14;
  v15._countAndFlagsBits = 32032;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  sub_10005E11C(v4, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 175);
  0xE000000000000000, v16, v17, v18, v19, v20, v21, v22;

  sub_100010C70(v3);
  v2(v3, 1, 1, v1);
  sub_10006A82C(v0[16], v0[14]);
  v23 = swift_task_alloc();
  v0[23] = v23;
  *v23 = v0;
  v23[1] = sub_100069BE0;
  v24 = v0[14];
  v25 = v0[12];

  return sub_1000122EC(v25, v24);
}

uint64_t sub_10006A118(uint64_t a1)
{
  v2 = *(v1 + 128);
  v3 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(56);
  v4._object = 0x8000000100094750;
  v4._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v4);
  swift_getErrorValue();
  v5._countAndFlagsBits = Error.localizedDescription.getter();
  object = v5._object;
  String.append(_:)(v5);
  object, v7, v8, v9, v10, v11, v12, v13;
  v14._countAndFlagsBits = 32032;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  sub_10005E11C(v3, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 183);
  0xE000000000000000, v15, v16, v17, v18, v19, v20, v21;
  v22 = static Duration.seconds(_:)();
  v24 = v23;

  sub_100010C70(v2);

  v25 = *(v1 + 8);

  return v25(v22, v24);
}

uint64_t sub_10006A2C0()
{

  v1 = OBJC_IVAR____TtC13frauddefensed33AdHocSignaturesBackgroundActivity_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AdHocSignaturesBackgroundActivity(uint64_t a1)
{
  result = qword_1000B8528;
  if (!qword_1000B8528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006A3C0(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

int64x2_t *sub_10006A47C()
{
  v0[1] = vdupq_n_s64(0x4072C00000000000uLL);
  v0[2] = vdupq_n_s64(0x404E000000000000uLL);
  v0[3].i64[0] = 0;
  type metadata accessor for DaemonAnalyticsManager(0);
  v1 = swift_allocObject();
  v2 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_logger;
  if (qword_1000B66A8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v4 = sub_100003448(v3, qword_1000B93D0);
  v5 = *(*(v3 - 8) + 16);
  v5(v1 + v2, v4, v3);
  v6 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_eligibilityManager;
  type metadata accessor for EligibilityManager(0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger;
  if (qword_1000B6690 != -1)
  {
    swift_once();
  }

  v9 = sub_100003448(v3, qword_1000B9388);
  v5(v7 + v8, v9, v3);
  *(v1 + v6) = v7;
  v0[3].i64[1] = v1;
  v10 = OBJC_IVAR____TtC13frauddefensed33AdHocSignaturesBackgroundActivity_logger;
  if (qword_1000B6688 != -1)
  {
    swift_once();
  }

  v11 = sub_100003448(v3, qword_1000B9370);
  v5(v0->i64 + v10, v11, v3);
  return v0;
}

uint64_t sub_10006A674()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100010A4C;

  return sub_100066DC4();
}

uint64_t sub_10006A704()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002A54;

  return sub_1000676D4();
}

uint64_t sub_10006A794(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100011E6C;

  return sub_100067838(a1);
}

uint64_t sub_10006A82C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006A8AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10006A8FC()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  qword_1000B9450 = v2;
  *algn_1000B9458 = v4;
}

void sub_10006A9A0(uint64_t a1, uint64_t (*a2)(void), _BYTE *a3)
{
  v5 = MobileGestalt_get_current_device();
  if (v5)
  {
    v6 = v5;
    v7 = a2();

    *a3 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_10006AA40(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void *a4)
{
  v7 = MobileGestalt_get_current_device();
  if (v7)
  {
    v8 = v7;
    v9 = a2();

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    *a3 = v10;
    *a4 = v12;
  }

  else
  {
    __break(1u);
  }
}

double sub_10006AAD4(uint64_t a1)
{
  type metadata accessor for TaskQueue();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 128) = &_swiftEmptyArrayStorage;
  *&result = 1;
  *(v1 + 112) = xmmword_10008F650;
  qword_1000B9488 = v1;
  return result;
}

uint64_t sub_10006AB28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B7A68, &unk_100091820);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  (*(v5 + 16))(&v13 - v6, a1, v4);
  v8 = *(a2 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 128) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_100049830(0, *v8->endpoint + 1, 1, v8);
    *(a2 + 128) = v8;
  }

  v11 = *v8->endpoint;
  v10 = *v8->connection;
  if (v11 >= v10 >> 1)
  {
    v8 = sub_100049830((v10 > 1), v11 + 1, 1, v8);
  }

  *v8->endpoint = v11 + 1;
  result = (*(v5 + 32))(&v8->_TtCs12_SwiftObject_opaque[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11], v7, v4);
  *(a2 + 128) = v8;
  return result;
}

uint64_t sub_10006ACA8(uint64_t a1)
{
  v2 = sub_100002074(&qword_1000B7A68, &unk_100091820);
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v12 - v5;
  v7 = *(a1 + 120);
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 120) = v9;
    if (v9 <= 0)
    {
      v10 = *(a1 + 128);
      if (*(v10 + 16))
      {
        v11 = result;
        (*(v3 + 16))(v6, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), result);
        sub_10006AF94(0, 1);
        CheckedContinuation.resume(returning:)();
        return (*(v3 + 8))(v6, v11);
      }
    }
  }

  return result;
}

uint64_t sub_10006ADD8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 128), a2, a3, a4, a5, a6, a7, a8;
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v8);
}

unint64_t sub_10006AE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_100002074(&qword_1000B7A68, &unk_100091820);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_10006AF94(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2)->endpoint;
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
  if (!isUniquelyReferenced_nonNull_native || v8 > *v4->connection >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100049830(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_10006AE40(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_10006B054()
{
  v1 = OBJC_IVAR____TtC13frauddefensed15RecordOperation_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecordOperation(uint64_t a1)
{
  result = qword_1000B8700;
  if (!qword_1000B8700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006B144(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (qword_1000B66D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1000B9450;
  v5 = *algn_1000B9458;
  v6 = sub_10006B76C();
  v7 = sub_100057E70(v4, v5, v6);
  v6, v8, v9, v10, v11, v12, v13, v14;
  if (v7)
  {
    if (sub_10006B308(v3, a2))
    {
      return 1;
    }

    v33 = static os_log_type_t.default.getter();
    sub_10005E11C(v33, 0xD000000000000018, 0x8000000100098BA0, 0xD000000000000057, 0x8000000100098B40, 26);
  }

  else
  {
    v16 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(46);
    0xE000000000000000, v17, v18, v19, v20, v21, v22, v23;
    v24._countAndFlagsBits = v4;
    v24._object = v5;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 32032;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
    sub_10005E11C(v16, 0xD00000000000002ALL, 0x8000000100098B10, 0xD000000000000057, 0x8000000100098B40, 21);
    0x8000000100098B10, v26, v27, v28, v29, v30, v31, v32;
  }

  return 0;
}

uint64_t sub_10006B308(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v3 = SecTaskCreateFromSelf(0);
    if (!v3)
    {
      v4 = static os_log_type_t.error.getter();
      v5 = 0xD000000000000019;
      v6 = 0x8000000100098BC0;
      v7 = 59;
LABEL_14:
      sub_10005E11C(v4, v5, v6, 0xD000000000000057, 0x8000000100098B40, v7);
      return 0;
    }
  }

  else
  {
    v8 = *(a2 + 16);
    *v51.val = *a2;
    *&v51.val[4] = v8;
    v3 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v51);
    if (!v3)
    {
      v4 = static os_log_type_t.error.getter();
      v5 = 0xD00000000000002ALL;
      v6 = 0x8000000100098CA0;
      v7 = 52;
      goto LABEL_14;
    }
  }

  v9 = v3;
  error = 0;
  if (a1 - 1 >= 2)
  {
    if (a1)
    {
      v16 = String._bridgeToObjectiveC()();
      v17 = SecTaskCopyValueForEntitlement(v9, v16, &error);

      if (v17)
      {
        *v51.val = v17;
        if (swift_dynamicCast())
        {
          goto LABEL_17;
        }
      }

      v12 = static os_log_type_t.error.getter();
      v13 = 93;
    }

    else
    {
      v14 = String._bridgeToObjectiveC()();
      v15 = SecTaskCopyValueForEntitlement(v9, v14, &error);

      if (v15)
      {
        *v51.val = v15;
        if (swift_dynamicCast())
        {
          goto LABEL_17;
        }
      }

      v12 = static os_log_type_t.error.getter();
      v13 = 77;
    }

LABEL_21:
    sub_10005E11C(v12, 0xD00000000000001CLL, 0x8000000100098C00, 0xD000000000000057, 0x8000000100098B40, v13);
    v48 = error;
    if (!error)
    {
LABEL_23:

      return 0;
    }

LABEL_22:

    goto LABEL_23;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = SecTaskCopyValueForEntitlement(v9, v10, &error);

  if (!v11 || (*v51.val = v11, !swift_dynamicCast()))
  {
    v12 = static os_log_type_t.error.getter();
    v13 = 85;
    goto LABEL_21;
  }

LABEL_17:
  v18 = error;
  if (error)
  {
    v19 = static os_log_type_t.error.getter();
    *v51.val = 0;
    *&v51.val[2] = 0xE000000000000000;
    _StringGuts.grow(_:)(41);
    *&v51.val[2], v20, v21, v22, v23, v24, v25, v26;
    *v51.val = 0xD000000000000025;
    *&v51.val[2] = 0x8000000100098C20;
    v27 = v18;
    v52 = v27;
    type metadata accessor for CFError(0);
    sub_1000549A4();
    v28 = Error.localizedDescription.getter();
    v30 = v29;

    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);
    v30, v32, v33, v34, v35, v36, v37, v38;
    v39._countAndFlagsBits = 32032;
    v39._object = 0xE200000000000000;
    String.append(_:)(v39);
    v40 = *&v51.val[2];
    sub_10005E11C(v19, *v51.val, *&v51.val[2], 0xD000000000000057, 0x8000000100098B40, 101);
    v40, v41, v42, v43, v44, v45, v46, v47;
    v48 = error;
    if (!error)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v50 = v52;

  return v50;
}

Swift::Int sub_10006B76C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_10006B7C8();
    v2 = *(v0 + 16);
    *(v0 + 16) = v1;

    v2, v3, v4, v5, v6, v7, v8, v9;
  }

  return v1;
}

Swift::Int sub_10006B7C8()
{
  v0 = sub_10006C340(&off_1000ADBE8);
  swift_arrayDestroy();
  v13 = v0;
  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (qword_1000B7C78)
  {
    v1 = qword_1000B7C78;
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 BOOLForKey:v2];

    if (v3)
    {
      sub_10006BA7C(v12, 0xD000000000000014, 0x80000001000947E0);
      v12[1], v4, v5, v6, v7, v8, v9, v10;
      return v13;
    }
  }

  return v0;
}

uint64_t sub_10006B8E8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  v9 = OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger;
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EligibilityManager(uint64_t a1)
{
  result = qword_1000B87B8;
  if (!qword_1000B87B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006B9E0(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10006BA7C(Swift::Int *a1, Swift::Int a2, _TtC13frauddefensed22TrustKitUIServerClient *a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v15 = -1 << *(v7 + 32);
  v16 = v8 & ~v15;
  if ((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (1)
    {
      v18 = (*(v7 + 48) + 16 * v16);
      v19 = v18[1];
      v20 = *v18 == a2 && v19 == a3;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    a3, v19, v9, v10, v11, v12, v13, v14;
    v23 = (*(v7 + 48) + 16 * v16);
    v24 = v23[1];
    *a1 = *v23;
    a1[1] = v24;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;

    sub_10006BE2C(a2, a3, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_10006BBCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002074(&qword_1000B8848, &qword_100092D00);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_10006BE2C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10006BBCC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10006BFAC();
      goto LABEL_16;
    }

    sub_10006C108(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10006BFAC()
{
  v1 = v0;
  sub_100002074(&qword_1000B8848, &qword_100092D00);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int sub_10006C108(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002074(&qword_1000B8848, &qword_100092D00);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_10006C340(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002074(&qword_1000B8848, &qword_100092D00);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v3 + 32));
      for (i = result & v17; ; i = (i + 1) & v17)
      {
        v19 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v19) == 0)
        {
          break;
        }

        v20 = (*(v3 + 48) + 16 * i);
        v21 = v20[1];
        if (*v20 != v9 || v21 != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        v8, v21, v11, v12, v13, v14, v15, v16;
        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v19;
      v23 = (*(v3 + 48) + 16 * i);
      *v23 = v9;
      v23[1] = v8;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (!v25)
      {
        *(v3 + 16) = v26;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_10006C4A8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  LODWORD(v127) = a6;
  v126 = a5;
  v8 = a3;
  v123 = type metadata accessor for OSSignpostError();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v117[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for OSSignpostID();
  v128 = *(v11 - 8);
  v129 = v11;
  v12 = __chkstk_darwin(v11);
  v124 = &v117[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v125 = &v117[-v15];
  __chkstk_darwin(v14);
  v131 = &v117[-v16];
  v17 = sub_100002074(&qword_1000B7A70, &unk_100092860);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v117[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v22 = &v117[-v21];
  v23 = type metadata accessor for SignpostsManager.SignpostState(0);
  v130 = *(v23 - 8);
  __chkstk_darwin(v23);
  v132 = &v117[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((OSSignposter.isEnabled.getter() & 1) == 0)
  {
    v50 = static os_log_type_t.default.getter();
    sub_10005E11C(v50, 0xD000000000000036, 0x8000000100098D20, 0xD000000000000055, 0x8000000100098D60, 21);
    return;
  }

  v120 = a1;
  v135 = StaticString.description.getter();
  v136 = v25;
  v26._countAndFlagsBits = 45;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = a4;
  v27._object = v126;
  String.append(_:)(v27);
  v28 = v135;
  v29 = v136;
  swift_beginAccess();
  v30 = *(v6 + 112);
  v31 = *v30->endpoint;
  v32 = v8;
  v126 = v28;
  if (v31)
  {

    v33 = sub_100057F68(v28, v29);
    if (v34)
    {
      v41 = v130;
      sub_10005C080(*v30[1].endpoint + *(v130 + 72) * v33, v22);
      v30, v42, v43, v44, v45, v46, v47, v48;
      v49 = *(v41 + 56);
      v49(v22, 0, 1, v23);
      sub_100056450(v22, v132);
      goto LABEL_10;
    }

    v30, v34, v35, v36, v37, v38, v39, v40;
  }

  v118 = v8;
  v51 = v132;
  v119 = v29;
  v52 = v130;
  v49 = *(v130 + 56);
  v49(v22, 1, 1, v23);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  *&v51[*(v23 + 20)] = 0;
  if ((*(v52 + 48))(v22, 1, v23) != 1)
  {
    sub_10006D338(v22);
  }

  v29 = v119;
  v32 = v118;
LABEL_10:
  sub_10005C080(v132, v20);
  v49(v20, 0, 1, v23);
  swift_beginAccess();

  sub_1000569F0(v20, v126, v29);
  swift_endAccess();
  v53 = v131;
  if ((v127 & 1) == 0)
  {
LABEL_16:
    v66 = v128;
    v65 = v129;
    v127 = *(v128 + 16);
    v127(v53, v132, v129);
    v67 = OSSignposter.logHandle.getter();
    v68 = static os_signpost_type_t.begin.getter();
    if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
    {
LABEL_20:

      v69 = v131;
LABEL_27:
      v127(v125, v69, v65);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v84 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v66 + 8))(v69, v65);
      v85 = sub_10006CE74(&v135);
      v86 = sub_1000464F4(v134, v126, v29);
      v88 = v87;
      if (!(*(v130 + 48))(v87, 1, v23))
      {
        *(v88 + *(v23 + 20)) = v84;
      }

      (v86)(v134, 0);
      (v85)(&v135, 0);

      goto LABEL_30;
    }

    LODWORD(v124) = v68;
    if ((v32 & 1) == 0)
    {
      if (!v120)
      {
        __break(1u);
        goto LABEL_20;
      }

LABEL_26:
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v135 = v71;
      *v70 = 136315138;
      v72 = StaticString.description.getter();
      v74 = v73;
      v75 = sub_10005E6B8(v72, v73, &v135);
      v74, v76, v77, v78, v79, v80, v81, v82;
      *(v70 + 4) = v75;
      v69 = v131;
      v83 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v67, v124, v83, v120, "%s", v70, 0xCu);
      sub_100003558(v71);

      v66 = v128;
      v65 = v129;
      goto LABEL_27;
    }

    if (v120 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v120 & 0xFFFFF800) == 0xD800)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (v120 >> 16 <= 0x10)
      {
        v120 = &v133;
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  if (!*&v132[*(v23 + 20)])
  {
LABEL_30:
    sub_10006D3A0(v132);
    v29, v89, v90, v91, v92, v93, v94, v95;
    return;
  }

  v54 = OSSignposter.logHandle.getter();
  v55 = v124;
  OSSignpostIntervalState.signpostID.getter();
  v56 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    if (v32)
    {
      if (v120 >> 32)
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if ((v120 & 0xFFFFF800) == 0xD800)
      {
LABEL_46:
        __break(1u);
        return;
      }

      if (v120 >> 16 > 0x10)
      {
        goto LABEL_44;
      }

      v29, v57, v58, v59, v60, v61, v62, v63;
      v64 = &v135;
    }

    else
    {
      v29, v57, v58, v59, v60, v61, v62, v63;
      v64 = v120;
      if (!v120)
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    v96 = v123;
    v97 = v122;
    v98 = v121;
    v120 = v64;

    checkForErrorAndConsumeState(state:)();

    if ((*(v97 + 88))(v98, v96) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v99 = 0;
      v100 = 0;
      v101 = "[Error] Interval already ended";
    }

    else
    {
      (*(v97 + 8))(v98, v96);
      v101 = "%s";
      v100 = 2;
      v99 = 1;
    }

    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v135 = v103;
    *v102 = v100;
    *(v102 + 1) = v99;
    *(v102 + 2) = 2080;
    v104 = StaticString.description.getter();
    v106 = v105;
    v107 = sub_10005E6B8(v104, v105, &v135);
    v106, v108, v109, v110, v111, v112, v113, v114;
    *(v102 + 4) = v107;
    v115 = v124;
    v116 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, v56, v116, v120, v101, v102, 0xCu);
    sub_100003558(v103);

    (*(v128 + 8))(v115, v129);
  }

  else
  {
    v29, v57, v58, v59, v60, v61, v62, v63;

    (*(v128 + 8))(v55, v129);
  }

  sub_10006D3A0(v132);
}

uint64_t sub_10006CEC8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 112), a2, a3, a4, a5, a6, a7, a8;
  v9 = OBJC_IVAR____TtC13frauddefensed16SignpostsManager_signposter;
  v10 = type metadata accessor for OSSignposter();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  v11 = OBJC_IVAR____TtC13frauddefensed16SignpostsManager_logger;
  v12 = type metadata accessor for Logger();
  (*(*(v12 - 8) + 8))(v8 + v11, v12);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v8);
}

uint64_t sub_10006CFB0(uint64_t a1)
{
  result = type metadata accessor for OSSignposter();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
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

uint64_t sub_10006D0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_10006D184(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OSSignpostID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_10006D25C(uint64_t a1)
{
  type metadata accessor for OSSignpostID();
  if (v1 <= 0x3F)
  {
    sub_10006D2E0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10006D2E0(uint64_t a1)
{
  if (!qword_1000B89B0)
  {
    type metadata accessor for OSSignpostIntervalState();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000B89B0);
    }
  }
}

uint64_t sub_10006D338(uint64_t a1)
{
  v2 = sub_100002074(&qword_1000B7A70, &unk_100092860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006D3A0(uint64_t a1)
{
  v2 = type metadata accessor for SignpostsManager.SignpostState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10006D3FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  *(v3 + 4) = 0;
  *(v3 + 5) = -1;
  v8 = OBJC_IVAR____TtC13frauddefensed23SignaturesSQLiteManager_logger;
  if (qword_1000B66B0 != -1)
  {
    swift_once();
  }

  v9 = sub_100003448(v6, qword_1000B93E8);
  (*(v7 + 16))(&v3[v8], v9, v6);
  if (a2)
  {
    *(v3 + 2) = a1;
    *(v3 + 3) = a2;
  }

  else
  {
    v10 = sub_100026614();
    v12 = v11;

    v33 = String.init<A>(_:)();
    v34 = v13;
    String.append<A>(contentsOf:)();
    *(v3 + 2) = v33;
    *(v3 + 3) = v34;
    v14 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(60);
    v15._countAndFlagsBits = 0xD000000000000038;
    v15._object = 0x8000000100099DE0;
    String.append(_:)(v15);
    v16._countAndFlagsBits = v10;
    v16._object = v12;
    String.append(_:)(v16);
    v12, v17, v18, v19, v20, v21, v22, v23;
    v24._countAndFlagsBits = 32032;
    v24._object = 0xE200000000000000;
    String.append(_:)(v24);
    sub_10005E11C(v14, 0, 0xE000000000000000, 0xD00000000000005CLL, 0x8000000100098E90, 28);
    0xE000000000000000, v25, v26, v27, v28, v29, v30, v31;
  }

  return v3;
}

void sub_10006D7D0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = String.utf8CString.getter();
  swift_beginAccess();
  v5 = sqlite3_open_v2((v4 + 32), (a1 + 32), 65542, 0);
  swift_endAccess();

  v6 = *(a1 + 32);
  if (v5)
  {
    if (sqlite3_errmsg(v6))
    {
      v7 = String.init(cString:)();
      v9 = v8;
      _StringGuts.grow(_:)(68);
      v10._countAndFlagsBits = 0xD00000000000002FLL;
      v10._object = 0x8000000100099C90;
      String.append(_:)(v10);
      v11._countAndFlagsBits = v7;
      v11._object = v9;
      String.append(_:)(v11);
      v9, v12, v13, v14, v15, v16, v17, v18;
      v19 = 0x616261746164202CLL;
      v20 = 0xEF3D687461506573;
LABEL_6:
      String.append(_:)(*&v19);
      v32._countAndFlagsBits = v3;
      v32._object = v2;
      String.append(_:)(v32);
      v33._countAndFlagsBits = 32032;
      v33._object = 0xE200000000000000;
      String.append(_:)(v33);
      sub_10000B6B0();
      swift_allocError();
      *v34 = 0;
      *(v34 + 8) = 0xE000000000000000;
      *(v34 + 16) = 11;
      swift_willThrow();
      return;
    }

    __break(1u);
  }

  else
  {
    if (sqlite3_db_readonly(v6, 0))
    {
      v21 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(68);
      v22._object = 0x8000000100099CC0;
      v22._countAndFlagsBits = 0xD000000000000040;
      String.append(_:)(v22);
      v23._countAndFlagsBits = v3;
      v23._object = v2;
      String.append(_:)(v23);
      v24._countAndFlagsBits = 32032;
      v24._object = 0xE200000000000000;
      String.append(_:)(v24);
      sub_10005E11C(v21, 0, 0xE000000000000000, 0xD00000000000005CLL, 0x8000000100098E90, 50);
      0xE000000000000000, v25, v26, v27, v28, v29, v30, v31;
      _StringGuts.grow(_:)(68);
      v20 = 0x8000000100099CC0;
      v19 = 0xD000000000000040;
      goto LABEL_6;
    }

    v35 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(50);
    0xE000000000000000, v36, v37, v38, v39, v40, v41, v42;
    v43._countAndFlagsBits = v3;
    v43._object = v2;
    String.append(_:)(v43);
    v44._countAndFlagsBits = 32032;
    v44._object = 0xE200000000000000;
    String.append(_:)(v44);
    sub_10005E11C(v35, 0xD00000000000002ELL, 0x8000000100099D10, 0xD00000000000005CLL, 0x8000000100098E90, 54);
    0x8000000100099D10, v45, v46, v47, v48, v49, v50, v51;
  }
}

void sub_10006DAEC(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 32);
  if (!v2)
  {
    v13 = static os_log_type_t.default.getter();
    sub_10005E11C(v13, 0xD000000000000019, 0x8000000100098E70, 0xD00000000000005CLL, 0x8000000100098E90, 65);
    return;
  }

  ppStmt = 0;
  if (sqlite3_prepare_v2(v2, "        CREATE TABLE IF NOT EXISTS CKSignatures (\n            id VARCHAR PRIMARY KEY NOT NULL,\n            signature_id VARCHAR,\n            signature BYTE,\n            signature_size INT,\n            threshold DOUBLE,\n            zone_name VARCHAR,\n            modification_date VARCHAR\n        );", -1, &ppStmt, 0))
  {
    if (sqlite3_errmsg(v2))
    {
      v3 = String.init(cString:)();
      v5 = v4;
      if (sqlite3_errcode(v2) == 1)
      {
        v5, v6, v7, v8, v9, v10, v11, v12;
LABEL_13:
        sub_10006E0A4(&ppStmt, v2);
        return;
      }

      v86 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(79);
      v15._object = 0x80000001000999C0;
      v15._countAndFlagsBits = 0xD000000000000032;
      String.append(_:)(v15);
      v16._countAndFlagsBits = v3;
      v16._object = v5;
      String.append(_:)(v16);
      v17._countAndFlagsBits = 0x3D65646F63202CLL;
      v17._object = 0xE700000000000000;
      String.append(_:)(v17);
      v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      object = v18._object;
      String.append(_:)(v18);
      object, v20, v21, v22, v23, v24, v25, v26;
      v27._countAndFlagsBits = 0x657461657263202CLL;
      v27._object = 0xEE003D7972657551;
      String.append(_:)(v27);
      v28._countAndFlagsBits = 0xD00000000000012BLL;
      v28._object = 0x8000000100099890;
      String.append(_:)(v28);
      v29._countAndFlagsBits = 32032;
      v29._object = 0xE200000000000000;
      String.append(_:)(v29);
      sub_10005E11C(v86, 0, 0xE000000000000000, 0xD00000000000005CLL, 0x8000000100098E90, 101);
      0xE000000000000000, v30, v31, v32, v33, v34, v35, v36;
      _StringGuts.grow(_:)(79);
      v37._object = 0x80000001000999C0;
      v37._countAndFlagsBits = 0xD000000000000032;
      String.append(_:)(v37);
      v38._countAndFlagsBits = v3;
      v38._object = v5;
      String.append(_:)(v38);
      v5, v39, v40, v41, v42, v43, v44, v45;
      v46._countAndFlagsBits = 0x3D65646F63202CLL;
      v46._object = 0xE700000000000000;
      String.append(_:)(v46);
      v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47._object;
      String.append(_:)(v47);
      v48, v49, v50, v51, v52, v53, v54, v55;
      v56._countAndFlagsBits = 0x657461657263202CLL;
      v56._object = 0xEE003D7972657551;
      String.append(_:)(v56);
      v57 = 0xD00000000000012BLL;
      v58 = 0x8000000100099890;
LABEL_12:
      String.append(_:)(*&v57);
      v84._countAndFlagsBits = 32032;
      v84._object = 0xE200000000000000;
      String.append(_:)(v84);
      sub_10000B6B0();
      swift_allocError();
      *v85 = 0;
      *(v85 + 8) = 0xE000000000000000;
      *(v85 + 16) = 11;
      swift_willThrow();
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
    if (sqlite3_step(ppStmt) == 101)
    {
      v14 = static os_log_type_t.debug.getter();
      sub_10005E11C(v14, 0xD000000000000157, 0x8000000100099A30, 0xD00000000000005CLL, 0x8000000100098E90, 111);
      goto LABEL_13;
    }

    if (sqlite3_errmsg(v2))
    {
      v59 = String.init(cString:)();
      v61 = v60;
      v87 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(65);
      v62._object = 0x8000000100099A00;
      v62._countAndFlagsBits = 0xD00000000000002DLL;
      String.append(_:)(v62);
      v63._countAndFlagsBits = v59;
      v63._object = v61;
      String.append(_:)(v63);
      v64._countAndFlagsBits = 0x657461657263202CLL;
      v64._object = 0xEE003D7972657551;
      String.append(_:)(v64);
      v65._countAndFlagsBits = 0xD00000000000012BLL;
      v65._object = 0x8000000100099890;
      String.append(_:)(v65);
      v66._countAndFlagsBits = 32032;
      v66._object = 0xE200000000000000;
      String.append(_:)(v66);
      sub_10005E11C(v87, 0, 0xE000000000000000, 0xD00000000000005CLL, 0x8000000100098E90, 107);
      0xE000000000000000, v67, v68, v69, v70, v71, v72, v73;
      _StringGuts.grow(_:)(65);
      v74._object = 0x8000000100099A00;
      v74._countAndFlagsBits = 0xD00000000000002DLL;
      String.append(_:)(v74);
      v75._countAndFlagsBits = v59;
      v75._object = v61;
      String.append(_:)(v75);
      v61, v76, v77, v78, v79, v80, v81, v82;
      v83._countAndFlagsBits = 0x657461657263202CLL;
      v83._object = 0xEE003D7972657551;
      String.append(_:)(v83);
      v57 = 0xD00000000000012BLL;
      v58 = 0x8000000100099890;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_10006E0A4(sqlite3_stmt **a1, sqlite3 *a2)
{
  if (sqlite3_finalize(*a1))
  {
    if (sqlite3_errmsg(a2))
    {
      v3 = String.init(cString:)();
      v5 = v4;
      v6 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(49);
      0xE000000000000000, v7, v8, v9, v10, v11, v12, v13;
      v14._countAndFlagsBits = v3;
      v14._object = v5;
      String.append(_:)(v14);
      v5, v15, v16, v17, v18, v19, v20, v21;
      v22._countAndFlagsBits = 32032;
      v22._object = 0xE200000000000000;
      String.append(_:)(v22);
      sub_10005E11C(v6, 0xD00000000000002DLL, 0x8000000100099B90, 0xD00000000000005CLL, 0x8000000100098E90, 87);

      0x8000000100099B90, v23, v24, v25, v26, v27, v28, v29;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10006E1DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(a1 + 32);
  if (!v6)
  {
    v23 = static os_log_type_t.error.getter();
    v24 = 0xD000000000000019;
    v25 = 0x8000000100098E70;
    v26 = 123;
LABEL_6:
    sub_10005E11C(v23, v24, v25, 0xD00000000000005CLL, 0x8000000100098E90, v26);
    return;
  }

  ppStmt = 0;
  if (sqlite3_prepare_v2(v6, "BEGIN EXCLUSIVE TRANSACTION", -1, &ppStmt, 0))
  {
    if (sqlite3_errmsg(v6))
    {
      v7 = String.init(cString:)();
      v9 = v8;
      v10 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(53);
      v11._countAndFlagsBits = 0xD000000000000031;
      v11._object = 0x8000000100098F10;
      String.append(_:)(v11);
      v12._countAndFlagsBits = v7;
      v12._object = v9;
      String.append(_:)(v12);
      v9, v13, v14, v15, v16, v17, v18, v19;
      v20._countAndFlagsBits = 32032;
      v20._object = 0xE200000000000000;
      String.append(_:)(v20);
      v21 = v10;
      v22 = 132;
LABEL_12:
      sub_10005E11C(v21, 0, 0xE000000000000000, 0xD00000000000005CLL, 0x8000000100098E90, v22);
      0xE000000000000000, v41, v42, v43, v44, v45, v46, v47;
      return;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (sqlite3_step(ppStmt) != 101)
  {
    if (sqlite3_errmsg(v6))
    {
      v27 = String.init(cString:)();
      v29 = v28;
      v30 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(53);
      v31._countAndFlagsBits = 0xD000000000000031;
      v31._object = 0x8000000100098F10;
      String.append(_:)(v31);
      v32._countAndFlagsBits = v27;
      v32._object = v29;
      String.append(_:)(v32);
      v29, v33, v34, v35, v36, v37, v38, v39;
      v40._countAndFlagsBits = 32032;
      v40._object = 0xE200000000000000;
      String.append(_:)(v40);
      v21 = v30;
      v22 = 138;
      goto LABEL_12;
    }

    goto LABEL_31;
  }

  if (sqlite3_finalize(ppStmt))
  {
    v23 = static os_log_type_t.error.getter();
    v24 = 0xD000000000000029;
    v25 = 0x8000000100099120;
    v26 = 143;
    goto LABEL_6;
  }

  v123 = 0;
  if (sqlite3_prepare_v2(v6, "INSERT INTO CKSignatures (id, signature_id, signature, signature_size, threshold, zone_name, modification_date) VALUES (?, ?, ?, ?, ?, ?, ?) ON CONFLICT(id) DO UPDATE SET signature_id=excluded.signature_id, signature=excluded.signature, signature_size=excluded.signature_size, threshold=excluded.threshold, zone_name=excluded.zone_name, modification_date=excluded.modification_date;", -1, &v123, 0))
  {
    if (!sqlite3_errmsg(v6))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v48 = String.init(cString:)();
    v50 = v49;
    v51 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(48);
    0xE000000000000000, v52, v53, v54, v55, v56, v57, v58;
    v121 = 0xD00000000000002CLL;
    v122 = 0x80000001000992D0;
    v59._countAndFlagsBits = v48;
    v59._object = v50;
    String.append(_:)(v59);
    v50, v60, v61, v62, v63, v64, v65, v66;
    v67._countAndFlagsBits = 32032;
    v67._object = 0xE200000000000000;
    String.append(_:)(v67);
    sub_10005E11C(v51, 0xD00000000000002CLL, 0x80000001000992D0, 0xD00000000000005CLL, 0x8000000100098E90, 160);
    0x80000001000992D0, v68, v69, v70, v71, v72, v73, v74;
LABEL_29:
    sub_1000702E8(&v123, v6, a1, 154);
    return;
  }

  v75 = *(a2 + 16);
  if (v75)
  {
    v76 = (a2 + 32);
    while (1)
    {
      v77 = v76[3];
      v125[2] = v76[2];
      v125[3] = v77;
      v125[4] = v76[4];
      v78 = v76[1];
      v125[0] = *v76;
      v125[1] = v78;
      sub_100031284(v125, &v121);
      v79 = objc_autoreleasePoolPush();
      sub_10006E854(&v123, v125, a1, v6, &v121);
      if (v3)
      {
        break;
      }

      v3 = 0;
      sub_1000312BC(v125);
      objc_autoreleasePoolPop(v79);
      v76 += 5;
      if (!--v75)
      {
        goto LABEL_20;
      }
    }

    sub_1000312BC(v125);
    objc_autoreleasePoolPop(v79);
    goto LABEL_29;
  }

LABEL_20:
  v120 = 0;
  if (sqlite3_prepare_v2(v6, "COMMIT TRANSACTION", -1, &v120, 0))
  {
    if (!sqlite3_errmsg(v6))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v80 = String.init(cString:)();
    v82 = v81;
    v83 = static os_log_type_t.error.getter();
    v121 = 0;
    v122 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v84._countAndFlagsBits = 0xD000000000000031;
    v84._object = 0x8000000100098F10;
    String.append(_:)(v84);
    v85._countAndFlagsBits = v80;
    v85._object = v82;
    String.append(_:)(v85);
    v82, v86, v87, v88, v89, v90, v91, v92;
    v93._countAndFlagsBits = 32032;
    v93._object = 0xE200000000000000;
    String.append(_:)(v93);
    v94 = v121;
    v95 = v122;
    v96 = v83;
    v97 = v122;
    v98 = 292;
    goto LABEL_27;
  }

  if (sqlite3_step(v120) == 101)
  {
LABEL_28:
    sub_100071CC8(&v120, v6, a1, 286);
    goto LABEL_29;
  }

  if (sqlite3_errmsg(v6))
  {
    v99 = String.init(cString:)();
    v101 = v100;
    v102 = static os_log_type_t.error.getter();
    v121 = 0;
    v122 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v103._countAndFlagsBits = 0xD000000000000031;
    v103._object = 0x8000000100098F10;
    String.append(_:)(v103);
    v104._countAndFlagsBits = v99;
    v104._object = v101;
    String.append(_:)(v104);
    v101, v105, v106, v107, v108, v109, v110, v111;
    v112._countAndFlagsBits = 32032;
    v112._object = 0xE200000000000000;
    String.append(_:)(v112);
    v94 = v121;
    v95 = v122;
    v96 = v102;
    v97 = v122;
    v98 = 298;
LABEL_27:
    sub_10005E11C(v96, v94, v97, 0xD00000000000005CLL, 0x8000000100098E90, v98);
    v95, v113, v114, v115, v116, v117, v118, v119;
    goto LABEL_28;
  }

LABEL_34:
  __break(1u);
}

const char *sub_10006E854(sqlite3_stmt **a1, __int128 *a2, uint64_t a3, sqlite3 *a4, uint64_t *a5)
{
  v10 = *a1;
  v11 = *(a3 + 40);
  v12 = String.utf8CString.getter();
  LODWORD(v10) = sqlite3_bind_text(v10, 1, (v12 + 32), -1, v11);

  v428 = a5;
  if (!v10)
  {
    if (*(a2 + 3))
    {
      v56 = *a1;
      v57 = String.utf8CString.getter();
      LODWORD(v56) = sqlite3_bind_text(v56, 2, (v57 + 32), -1, v11);

      if (v56)
      {
        result = sqlite3_errmsg(a4);
        if (!result)
        {
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v58 = String.init(cString:)();
        v60 = v59;
        v61 = static os_log_type_t.error.getter();
        _StringGuts.grow(_:)(50);
        0xE000000000000000, v62, v63, v64, v65, v66, v67, v68;
        v69._countAndFlagsBits = v58;
        v69._object = v60;
        String.append(_:)(v69);
        v70._countAndFlagsBits = 32032;
        v70._object = 0xE200000000000000;
        String.append(_:)(v70);
        sub_10005E11C(v61, 0xD00000000000002ELL, 0x8000000100099330, 0xD00000000000005CLL, 0x8000000100098E90, 182);
        0x8000000100099330, v71, v72, v73, v74, v75, v76, v77;
        _StringGuts.grow(_:)(49);
        0xE000000000000000, v78, v79, v80, v81, v82, v83, v84;
        *&v430 = 0xD00000000000002DLL;
        *(&v430 + 1) = 0x8000000100099570;
        goto LABEL_29;
      }
    }

    else if (sqlite3_bind_null(*a1, 2))
    {
      v427 = a1;
      result = sqlite3_errmsg(a4);
      if (result)
      {
        v14 = String.init(cString:)();
        v16 = v85;
        v86 = static os_log_type_t.error.getter();
        _StringGuts.grow(_:)(50);
        0xE000000000000000, v87, v88, v89, v90, v91, v92, v93;
        v25 = 0x8000000100099330;
        v26 = 0xD00000000000002ELL;
        v94._countAndFlagsBits = v14;
        v94._object = v16;
        String.append(_:)(v94);
        v95._countAndFlagsBits = 32032;
        v95._object = 0xE200000000000000;
        String.append(_:)(v95);
        sub_10005E11C(v86, 0xD00000000000002ELL, 0x8000000100099330, 0xD00000000000005CLL, 0x8000000100098E90, 188);
        0x8000000100099330, v96, v97, v98, v99, v100, v101, v102;
        *&v430 = 0;
        *(&v430 + 1) = 0xE000000000000000;
        v36 = 50;
        goto LABEL_4;
      }

      goto LABEL_70;
    }

    v103 = *(a2 + 4);
    if (!v103)
    {
      if (sqlite3_bind_null(*a1, 3))
      {
        result = sqlite3_errmsg(a4);
        if (!result)
        {
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        v58 = String.init(cString:)();
        v60 = v150;
        v151 = static os_log_type_t.error.getter();
        *(&v430 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(53);
        v152 = "ignature ID to query. { error=";
        v153 = 0xD000000000000031;
        v154._object = 0x8000000100099360;
        v154._countAndFlagsBits = 0xD000000000000031;
        String.append(_:)(v154);
        v155._countAndFlagsBits = v58;
        v155._object = v60;
        String.append(_:)(v155);
        v156._countAndFlagsBits = 32032;
        v156._object = 0xE200000000000000;
        String.append(_:)(v156);
        v157 = v151;
        v158 = 218;
      }

      else
      {
        if (!sqlite3_bind_null(*a1, 4))
        {
          goto LABEL_40;
        }

        result = sqlite3_errmsg(a4);
        if (!result)
        {
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v58 = String.init(cString:)();
        v60 = v181;
        v182 = static os_log_type_t.error.getter();
        *(&v430 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(53);
        v152 = "ignature ID to query. { error=";
        v153 = 0xD000000000000031;
        v183._object = 0x8000000100099360;
        v183._countAndFlagsBits = 0xD000000000000031;
        String.append(_:)(v183);
        v184._countAndFlagsBits = v58;
        v184._object = v60;
        String.append(_:)(v184);
        v185._countAndFlagsBits = 32032;
        v185._object = 0xE200000000000000;
        String.append(_:)(v185);
        v157 = v182;
        v158 = 224;
      }

      sub_10005E11C(v157, 0, 0xE000000000000000, 0xD00000000000005CLL, 0x8000000100098E90, v158);
      0xE000000000000000, v186, v187, v188, v189, v190, v191, v192;
      *&v430 = 0;
      *(&v430 + 1) = 0xE000000000000000;
      v193 = 53;
LABEL_28:
      _StringGuts.grow(_:)(v193);
      v194._object = (v152 | 0x8000000000000000);
      v194._countAndFlagsBits = v153;
      String.append(_:)(v194);
LABEL_29:
      v195._countAndFlagsBits = v58;
      v195._object = v60;
      String.append(_:)(v195);
      v60, v196, v197, v198, v199, v200, v201, v202;
      v203._countAndFlagsBits = 32032;
      v203._object = 0xE200000000000000;
      String.append(_:)(v203);
      sub_10000B6B0();
      v53 = swift_allocError();
      *v204 = v430;
      *(v204 + 16) = 11;
      swift_willThrow();
LABEL_30:
      v55 = *a1;
      goto LABEL_31;
    }

    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    *&v430 = v103;
    sub_100002074(&qword_1000B7858, &qword_100091870);
    sub_1000312EC(&qword_1000B7870, &protocol witness table for UInt32, &protocol conformance descriptor for <A> [A]);
    v104 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v5)
    {

      v106 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(40);
      0xE000000000000000, v107, v108, v109, v110, v111, v112, v113;
      swift_getErrorValue();
      v114._countAndFlagsBits = Error.localizedDescription.getter();
      object = v114._object;
      String.append(_:)(v114);
      object, v116, v117, v118, v119, v120, v121, v122;
      v123._countAndFlagsBits = 32032;
      v123._object = 0xE200000000000000;
      String.append(_:)(v123);
      sub_10005E11C(v106, 0xD000000000000024, 0x8000000100099500, 0xD00000000000005CLL, 0x8000000100098E90, 199);
      0x8000000100099500, v124, v125, v126, v127, v128, v129, v130;
      _StringGuts.grow(_:)(40);
      0xE000000000000000, v131, v132, v133, v134, v135, v136, v137;
      *&v430 = 0xD000000000000024;
      *(&v430 + 1) = 0x8000000100099500;
      swift_getErrorValue();
      v138._countAndFlagsBits = Error.localizedDescription.getter();
      v139 = a1;
      v140 = v138._object;
      String.append(_:)(v138);
      v140, v141, v142, v143, v144, v145, v146, v147;
      v148._countAndFlagsBits = 32032;
      v148._object = 0xE200000000000000;
      String.append(_:)(v148);
      sub_10000B6B0();
      v53 = swift_allocError();
      *v149 = v430;
      *(v149 + 16) = 11;
      swift_willThrow();

LABEL_15:
      v55 = *v139;
      goto LABEL_31;
    }

    v159 = v104;
    v160 = v105;

    v161.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100005A28(v159, v160);
    v162 = *a1;
    v163 = [(objc_class *)v161.super.isa bytes];
    result = [(objc_class *)v161.super.isa length];
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (result <= 0x7FFFFFFF)
    {
      if (sqlite3_bind_blob(v162, 3, v163, result, v11))
      {
        result = sqlite3_errmsg(a4);
        if (!result)
        {
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v164 = String.init(cString:)();
        v166 = v165;
        v167 = static os_log_type_t.error.getter();
        _StringGuts.grow(_:)(53);
        v168 = "ignature ID to query. { error=";
        v169 = 0xD000000000000031;
        v170._object = 0x8000000100099360;
        v170._countAndFlagsBits = 0xD000000000000031;
        String.append(_:)(v170);
        v171._countAndFlagsBits = v164;
        v171._object = v166;
        String.append(_:)(v171);
        v172._countAndFlagsBits = 32032;
        v172._object = 0xE200000000000000;
        String.append(_:)(v172);
        sub_10005E11C(v167, 0, 0xE000000000000000, 0xD00000000000005CLL, 0x8000000100098E90, 205);
        0xE000000000000000, v173, v174, v175, v176, v177, v178, v179;
        *&v430 = 0;
        *(&v430 + 1) = 0xE000000000000000;
        v180 = 53;
        goto LABEL_38;
      }

      v205 = *a1;
      result = [(objc_class *)v161.super.isa length];
      if (result >= 0xFFFFFFFF80000000)
      {
        if (result <= 0x7FFFFFFF)
        {
          if (sqlite3_bind_int(v205, 4, result))
          {
            result = sqlite3_errmsg(a4);
            if (!result)
            {
LABEL_74:
              __break(1u);
              goto LABEL_75;
            }

            v164 = String.init(cString:)();
            v166 = v206;
            v207 = static os_log_type_t.error.getter();
            _StringGuts.grow(_:)(54);
            v168 = " signature. { error=";
            v169 = 0xD000000000000032;
            v208._object = 0x8000000100099530;
            v208._countAndFlagsBits = 0xD000000000000032;
            String.append(_:)(v208);
            v209._countAndFlagsBits = v164;
            v209._object = v166;
            String.append(_:)(v209);
            v210._countAndFlagsBits = 32032;
            v210._object = 0xE200000000000000;
            String.append(_:)(v210);
            sub_10005E11C(v207, 0, 0xE000000000000000, 0xD00000000000005CLL, 0x8000000100098E90, 212);
            0xE000000000000000, v211, v212, v213, v214, v215, v216, v217;
            *&v430 = 0;
            *(&v430 + 1) = 0xE000000000000000;
            v180 = 54;
LABEL_38:
            _StringGuts.grow(_:)(v180);
            v218._object = (v168 | 0x8000000000000000);
            v218._countAndFlagsBits = v169;
            String.append(_:)(v218);
            v219._countAndFlagsBits = v164;
            v219._object = v166;
            String.append(_:)(v219);
            v166, v220, v221, v222, v223, v224, v225, v226;
            v227._countAndFlagsBits = 32032;
            v227._object = 0xE200000000000000;
            String.append(_:)(v227);
            sub_10000B6B0();
            v53 = swift_allocError();
            *v228 = v430;
            *(v228 + 16) = 11;
            swift_willThrow();

            goto LABEL_30;
          }

LABEL_40:
          if (*(a2 + 44))
          {
            if (sqlite3_bind_null(*a1, 5))
            {
              result = sqlite3_errmsg(a4);
              if (!result)
              {
LABEL_75:
                __break(1u);
                goto LABEL_76;
              }

              v58 = String.init(cString:)();
              v60 = v229;
              v230 = static os_log_type_t.error.getter();
              *(&v430 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(57);
              v152 = "o query. { error=";
              v153 = 0xD000000000000035;
              v231._object = 0x80000001000993A0;
              v231._countAndFlagsBits = 0xD000000000000035;
              String.append(_:)(v231);
              v232._countAndFlagsBits = v58;
              v232._object = v60;
              String.append(_:)(v232);
              v233._countAndFlagsBits = 32032;
              v233._object = 0xE200000000000000;
              String.append(_:)(v233);
              v234 = v230;
              v235 = 239;
              goto LABEL_47;
            }
          }

          else if (sqlite3_bind_double(*a1, 5, *(a2 + 10)))
          {
            result = sqlite3_errmsg(a4);
            if (!result)
            {
LABEL_76:
              __break(1u);
LABEL_77:
              __break(1u);
              goto LABEL_78;
            }

            v58 = String.init(cString:)();
            v60 = v236;
            v237 = static os_log_type_t.error.getter();
            *(&v430 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(57);
            v152 = "o query. { error=";
            v153 = 0xD000000000000035;
            v238._object = 0x80000001000993A0;
            v238._countAndFlagsBits = 0xD000000000000035;
            String.append(_:)(v238);
            v239._countAndFlagsBits = v58;
            v239._object = v60;
            String.append(_:)(v239);
            v240._countAndFlagsBits = 32032;
            v240._object = 0xE200000000000000;
            String.append(_:)(v240);
            v234 = v237;
            v235 = 233;
LABEL_47:
            sub_10005E11C(v234, 0, 0xE000000000000000, 0xD00000000000005CLL, 0x8000000100098E90, v235);
            0xE000000000000000, v241, v242, v243, v244, v245, v246, v247;
            *&v430 = 0;
            *(&v430 + 1) = 0xE000000000000000;
            v193 = 57;
            goto LABEL_28;
          }

          if (*(a2 + 7))
          {
            v248 = *a1;
            v249 = String.utf8CString.getter();
            LODWORD(v248) = sqlite3_bind_text(v248, 6, (v249 + 32), -1, v11);

            if (v248)
            {
              v427 = a1;
              result = sqlite3_errmsg(a4);
              if (result)
              {
                v14 = String.init(cString:)();
                v16 = v250;
                v251 = static os_log_type_t.error.getter();
                _StringGuts.grow(_:)(47);
                0xE000000000000000, v252, v253, v254, v255, v256, v257, v258;
                v25 = 0x8000000100099410;
                v26 = 0xD00000000000002BLL;
                v259._countAndFlagsBits = v14;
                v259._object = v16;
                String.append(_:)(v259);
                v260._countAndFlagsBits = 32032;
                v260._object = 0xE200000000000000;
                String.append(_:)(v260);
                sub_10005E11C(v251, 0xD00000000000002BLL, 0x8000000100099410, 0xD00000000000005CLL, 0x8000000100098E90, 252);
                0x8000000100099410, v261, v262, v263, v264, v265, v266, v267;
                *&v430 = 0;
                *(&v430 + 1) = 0xE000000000000000;
                v36 = 47;
                goto LABEL_4;
              }

              goto LABEL_77;
            }

            if (*(a2 + 9))
            {
              v321 = *a1;
              v322 = String.utf8CString.getter();
              LODWORD(v321) = sqlite3_bind_text(v321, 7, (v322 + 32), -1, v11);

              if (!v321)
              {
                if (sqlite3_step(*a1) == 101)
                {
                  v363 = static os_log_type_t.debug.getter();
                  *&v430 = 0;
                  *(&v430 + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(32);
                  0xE000000000000000, v364, v365, v366, v367, v368, v369, v370;
                  v435 = 0xD00000000000001CLL;
                  v436 = 0x80000001000994E0;
                  v371 = a2[3];
                  v432 = a2[2];
                  v433 = v371;
                  v434 = a2[4];
                  v372 = a2[1];
                  v430 = *a2;
                  v431 = v372;
                  sub_100031284(a2, v429);
                  v373._countAndFlagsBits = String.init<A>(describing:)();
                  v374 = v373._object;
                  String.append(_:)(v373);
                  v374, v375, v376, v377, v378, v379, v380, v381;
                  v382._countAndFlagsBits = 32032;
                  v382._object = 0xE200000000000000;
                  String.append(_:)(v382);
                  v383 = v435;
                  v384 = v436;
                  v385 = v363;
                  v386 = v436;
                  v387 = 274;
                }

                else
                {
                  result = sqlite3_errmsg(a4);
                  if (!result)
                  {
LABEL_79:
                    __break(1u);
                    return result;
                  }

                  v388 = String.init(cString:)();
                  v390 = v389;
                  v391 = static os_log_type_t.error.getter();
                  *&v430 = 0;
                  *(&v430 + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(50);
                  0xE000000000000000, v392, v393, v394, v395, v396, v397, v398;
                  v435 = 0xD000000000000024;
                  v436 = 0x80000001000994B0;
                  v399 = a2[3];
                  v432 = a2[2];
                  v433 = v399;
                  v434 = a2[4];
                  v400 = a2[1];
                  v430 = *a2;
                  v431 = v400;
                  sub_100031284(a2, v429);
                  v401._countAndFlagsBits = String.init<A>(describing:)();
                  v402 = v401._object;
                  String.append(_:)(v401);
                  v402, v403, v404, v405, v406, v407, v408, v409;
                  v410._countAndFlagsBits = 0x3D726F727265202CLL;
                  v410._object = 0xE800000000000000;
                  String.append(_:)(v410);
                  v411._countAndFlagsBits = v388;
                  v411._object = v390;
                  String.append(_:)(v411);
                  v390, v412, v413, v414, v415, v416, v417, v418;
                  v419._countAndFlagsBits = 32032;
                  v419._object = 0xE200000000000000;
                  String.append(_:)(v419);
                  v383 = v435;
                  v384 = v436;
                  v385 = v391;
                  v386 = v436;
                  v387 = 270;
                }

                sub_10005E11C(v385, v383, v386, 0xD00000000000005CLL, 0x8000000100098E90, v387);
                v384, v420, v421, v422, v423, v424, v425, v426;
                return sqlite3_reset(*a1);
              }

              result = sqlite3_errmsg(a4);
              if (!result)
              {
LABEL_78:
                __break(1u);
                goto LABEL_79;
              }

              v58 = String.init(cString:)();
              v60 = v323;
              v324 = static os_log_type_t.error.getter();
              _StringGuts.grow(_:)(55);
              v152 = "issing modification date. { ";
              v153 = 0xD000000000000033;
              v325._object = 0x8000000100099470;
              v325._countAndFlagsBits = 0xD000000000000033;
              String.append(_:)(v325);
              v326._countAndFlagsBits = v58;
              v326._object = v60;
              String.append(_:)(v326);
              v327._countAndFlagsBits = 32032;
              v327._object = 0xE200000000000000;
              String.append(_:)(v327);
              sub_10005E11C(v324, 0, 0xE000000000000000, 0xD00000000000005CLL, 0x8000000100098E90, 264);
              0xE000000000000000, v328, v329, v330, v331, v332, v333, v334;
              *&v430 = 0;
              *(&v430 + 1) = 0xE000000000000000;
              v193 = 55;
              goto LABEL_28;
            }

            v335 = static os_log_type_t.error.getter();
            *&v430 = 0;
            *(&v430 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(48);
            0xE000000000000000, v336, v337, v338, v339, v340, v341, v342;
            v276 = 0x8000000100099440;
            v277 = 0xD00000000000002CLL;
            v435 = 0xD00000000000002CLL;
            v436 = 0x8000000100099440;
            v343 = a2[3];
            v432 = a2[2];
            v433 = v343;
            v434 = a2[4];
            v344 = a2[1];
            v430 = *a2;
            v431 = v344;
            sub_100031284(a2, v429);
            v345._countAndFlagsBits = String.init<A>(describing:)();
            v346 = v345._object;
            String.append(_:)(v345);
            v346, v347, v348, v349, v350, v351, v352, v353;
            v354._countAndFlagsBits = 32032;
            v354._object = 0xE200000000000000;
            String.append(_:)(v354);
            v355 = v436;
            sub_10005E11C(v335, v435, v436, 0xD00000000000005CLL, 0x8000000100098E90, 258);
            v355, v356, v357, v358, v359, v360, v361, v362;
            *&v430 = 0;
            *(&v430 + 1) = 0xE000000000000000;
            v298 = 48;
          }

          else
          {
            v268 = static os_log_type_t.error.getter();
            *&v430 = 0;
            *(&v430 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(40);
            0xE000000000000000, v269, v270, v271, v272, v273, v274, v275;
            v276 = 0x80000001000993E0;
            v277 = 0xD000000000000024;
            v435 = 0xD000000000000024;
            v436 = 0x80000001000993E0;
            v278 = a2[3];
            v432 = a2[2];
            v433 = v278;
            v434 = a2[4];
            v279 = a2[1];
            v430 = *a2;
            v431 = v279;
            sub_100031284(a2, v429);
            v280._countAndFlagsBits = String.init<A>(describing:)();
            v281 = v280._object;
            String.append(_:)(v280);
            v281, v282, v283, v284, v285, v286, v287, v288;
            v289._countAndFlagsBits = 32032;
            v289._object = 0xE200000000000000;
            String.append(_:)(v289);
            v290 = v436;
            sub_10005E11C(v268, v435, v436, 0xD00000000000005CLL, 0x8000000100098E90, 246);
            v290, v291, v292, v293, v294, v295, v296, v297;
            *&v430 = 0;
            *(&v430 + 1) = 0xE000000000000000;
            v298 = 40;
          }

          _StringGuts.grow(_:)(v298);
          *(&v430 + 1), v299, v300, v301, v302, v303, v304, v305;
          v435 = v277;
          v436 = v276;
          v306 = a2[3];
          v432 = a2[2];
          v433 = v306;
          v434 = a2[4];
          v307 = a2[1];
          v430 = *a2;
          v431 = v307;
          sub_100031284(a2, v429);
          v308._countAndFlagsBits = String.init<A>(describing:)();
          v139 = a1;
          v309 = v308._object;
          String.append(_:)(v308);
          v309, v310, v311, v312, v313, v314, v315, v316;
          v317._countAndFlagsBits = 32032;
          v317._object = 0xE200000000000000;
          String.append(_:)(v317);
          v318 = v435;
          v319 = v436;
          sub_10000B6B0();
          v53 = swift_allocError();
          *v320 = v318;
          *(v320 + 8) = v319;
          *(v320 + 16) = 11;
          swift_willThrow();
          goto LABEL_15;
        }

LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    __break(1u);
    goto LABEL_66;
  }

  v427 = a1;
  result = sqlite3_errmsg(a4);
  if (!result)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v14 = String.init(cString:)();
  v16 = v15;
  v17 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(42);
  0xE000000000000000, v18, v19, v20, v21, v22, v23, v24;
  v25 = 0x8000000100099300;
  v26 = 0xD000000000000026;
  v27._countAndFlagsBits = v14;
  v27._object = v16;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 32032;
  v28._object = 0xE200000000000000;
  String.append(_:)(v28);
  sub_10005E11C(v17, 0xD000000000000026, 0x8000000100099300, 0xD00000000000005CLL, 0x8000000100098E90, 174);
  0x8000000100099300, v29, v30, v31, v32, v33, v34, v35;
  *&v430 = 0;
  *(&v430 + 1) = 0xE000000000000000;
  v36 = 42;
LABEL_4:
  _StringGuts.grow(_:)(v36);
  *(&v430 + 1), v37, v38, v39, v40, v41, v42, v43;
  *&v430 = v26;
  *(&v430 + 1) = v25;
  v44._countAndFlagsBits = v14;
  v44._object = v16;
  String.append(_:)(v44);
  v16, v45, v46, v47, v48, v49, v50, v51;
  v52._countAndFlagsBits = 32032;
  v52._object = 0xE200000000000000;
  String.append(_:)(v52);
  sub_10000B6B0();
  v53 = swift_allocError();
  *v54 = v430;
  *(v54 + 16) = 11;
  swift_willThrow();
  v55 = *v427;
LABEL_31:
  result = sqlite3_reset(v55);
  *v428 = v53;
  return result;
}

void sub_10006FC9C(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, _TtC13frauddefensed22TrustKitUIServerClient **a6@<X8>)
{
  v7 = v6;
  swift_beginAccess();
  v14 = *(a1 + 32);
  if (!v14)
  {
    v66 = static os_log_type_t.error.getter();
    sub_10005E11C(v66, 0xD000000000000019, 0x8000000100098E70, 0xD00000000000005CLL, 0x8000000100098E90, 360);
    *a6 = &_swiftEmptyArrayStorage;
    return;
  }

  v138 = a6;
  if ((a3 | a5))
  {
    v15 = "ze insert statement. { error=";
  }

  else
  {
    v15 = "imit to fetch query. { error=";
  }

  ppStmt = 0;
  v16 = String.utf8CString.getter();
  (v15 | 0x8000000000000000), v17, v18, v19, v20, v21, v22, v23;
  v24 = sqlite3_prepare_v2(v14, (v16 + 32), -1, &ppStmt, 0);

  if (!v24)
  {
    v65 = v14;
    if (a3)
    {
      goto LABEL_17;
    }

    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      if (sqlite3_bind_int(ppStmt, 1, a2))
      {
        v139 = v14;
        if (sqlite3_errmsg(v14))
        {
          v25 = String.init(cString:)();
          v27 = v67;
          v68 = static os_log_type_t.error.getter();
          _StringGuts.grow(_:)(49);
          0xE000000000000000, v69, v70, v71, v72, v73, v74, v75;
          v36 = 0x8000000100099680;
          v37 = 0xD00000000000002DLL;
          v76._countAndFlagsBits = v25;
          v76._object = v27;
          String.append(_:)(v76);
          v77._countAndFlagsBits = 32032;
          v77._object = 0xE200000000000000;
          String.append(_:)(v77);
          sub_10005E11C(v68, 0xD00000000000002DLL, 0x8000000100099680, 0xD00000000000005CLL, 0x8000000100098E90, 390);
          0x8000000100099680, v78, v79, v80, v81, v82, v83, v84;
          v141 = 0;
          v142 = 0xE000000000000000;
          v47 = 49;
          goto LABEL_8;
        }

        goto LABEL_34;
      }

LABEL_17:
      if (a5)
      {
        goto LABEL_23;
      }

      if (a4 >= 0xFFFFFFFF80000000)
      {
        if (a4 <= 0x7FFFFFFF)
        {
          if (sqlite3_bind_int(ppStmt, 2, a4))
          {
            v139 = v14;
            if (sqlite3_errmsg(v14))
            {
              v25 = String.init(cString:)();
              v27 = v85;
              v86 = static os_log_type_t.error.getter();
              _StringGuts.grow(_:)(50);
              0xE000000000000000, v87, v88, v89, v90, v91, v92, v93;
              v36 = 0x8000000100099650;
              v37 = 0xD00000000000002ELL;
              v94._countAndFlagsBits = v25;
              v94._object = v27;
              String.append(_:)(v94);
              v95._countAndFlagsBits = 32032;
              v95._object = 0xE200000000000000;
              String.append(_:)(v95);
              sub_10005E11C(v86, 0xD00000000000002ELL, 0x8000000100099650, 0xD00000000000005CLL, 0x8000000100098E90, 398);
              0x8000000100099650, v96, v97, v98, v99, v100, v101, v102;
              v141 = 0;
              v142 = 0xE000000000000000;
              v47 = 50;
              goto LABEL_8;
            }

            goto LABEL_35;
          }

LABEL_23:
          v103 = &_swiftEmptyArrayStorage;
          v140 = &_swiftEmptyArrayStorage;
          if (sqlite3_step(ppStmt) == 100)
          {
            while (1)
            {
              v104 = objc_autoreleasePoolPush();
              sub_100070424(&ppStmt, v14, a1, &v140, &v141);
              if (v7)
              {
                break;
              }

              v7 = 0;
              objc_autoreleasePoolPop(v104);
              if (sqlite3_step(ppStmt) != 100)
              {
                v103 = v140;
                goto LABEL_27;
              }
            }

            objc_autoreleasePoolPop(v104);
            v140, v131, v132, v133, v134, v135, v136, v137;
          }

          else
          {
LABEL_27:
            v105 = static os_log_type_t.debug.getter();
            v141 = 0;
            v142 = 0xE000000000000000;
            _StringGuts.grow(_:)(48);
            v142, v106, v107, v108, v109, v110, v111, v112;
            v141 = 0xD00000000000002CLL;
            v142 = 0x8000000100099620;
            v113._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            object = v113._object;
            String.append(_:)(v113);
            object, v115, v116, v117, v118, v119, v120, v121;
            v122._countAndFlagsBits = 32032;
            v122._object = 0xE200000000000000;
            String.append(_:)(v122);
            v123 = v142;
            sub_10005E11C(v105, v141, v142, 0xD00000000000005CLL, 0x8000000100098E90, 471);
            v123, v124, v125, v126, v127, v128, v129, v130;
            *v138 = v103;
          }

          goto LABEL_9;
        }

LABEL_32:
        __break(1u);
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_31;
  }

  v139 = v14;
  if (sqlite3_errmsg(v14))
  {
    v25 = String.init(cString:)();
    v27 = v26;
    v28 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(43);
    0xE000000000000000, v29, v30, v31, v32, v33, v34, v35;
    v36 = 0x80000001000995F0;
    v37 = 0xD000000000000027;
    v38._countAndFlagsBits = v25;
    v38._object = v27;
    String.append(_:)(v38);
    v39._countAndFlagsBits = 32032;
    v39._object = 0xE200000000000000;
    String.append(_:)(v39);
    sub_10005E11C(v28, 0xD000000000000027, 0x80000001000995F0, 0xD00000000000005CLL, 0x8000000100098E90, 383);
    0x80000001000995F0, v40, v41, v42, v43, v44, v45, v46;
    v141 = 0;
    v142 = 0xE000000000000000;
    v47 = 43;
LABEL_8:
    _StringGuts.grow(_:)(v47);
    v142, v48, v49, v50, v51, v52, v53, v54;
    v141 = v37;
    v142 = v36;
    v55._countAndFlagsBits = v25;
    v55._object = v27;
    String.append(_:)(v55);
    v27, v56, v57, v58, v59, v60, v61, v62;
    v63._countAndFlagsBits = 32032;
    v63._object = 0xE200000000000000;
    String.append(_:)(v63);
    sub_10000B6B0();
    swift_allocError();
    *v64 = v37;
    *(v64 + 8) = v36;
    *(v64 + 16) = 11;
    swift_willThrow();
    v65 = v139;
LABEL_9:
    sub_1000702E8(&ppStmt, v65, a1, 377);
    return;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_1000702E8(sqlite3_stmt **a1, sqlite3 *a2, uint64_t a3, uint64_t a4)
{
  if (sqlite3_finalize(*a1))
  {
    if (sqlite3_errmsg(a2))
    {
      v6 = String.init(cString:)();
      v8 = v7;
      v9 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(49);
      0xE000000000000000, v10, v11, v12, v13, v14, v15, v16;
      v17._countAndFlagsBits = v6;
      v17._object = v8;
      String.append(_:)(v17);
      v8, v18, v19, v20, v21, v22, v23, v24;
      v25._countAndFlagsBits = 32032;
      v25._object = 0xE200000000000000;
      String.append(_:)(v25);
      sub_10005E11C(v9, 0xD00000000000002DLL, 0x80000001000995A0, 0xD00000000000005CLL, 0x8000000100098E90, a4);

      0x80000001000995A0, v26, v27, v28, v29, v30, v31, v32;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100070424(sqlite3_stmt **a1, sqlite3 *a2, uint64_t a3, _TtC13frauddefensed22TrustKitUIServerClient **a4, uint64_t *a5)
{
  if (!sqlite3_column_text(*a1, 0))
  {
    result = sqlite3_errmsg(a2);
    if (result)
    {
      v13 = String.init(cString:)();
      v15 = v14;
      v16 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(34);
      0xE000000000000000, v17, v18, v19, v20, v21, v22, v23;
      v24 = 0x80000001000996E0;
      v25 = 0xD00000000000001ELL;
      v26._countAndFlagsBits = v13;
      v26._object = v15;
      String.append(_:)(v26);
      v27._countAndFlagsBits = 32032;
      v27._object = 0xE200000000000000;
      String.append(_:)(v27);
      v28 = v16;
      v29 = 411;
LABEL_20:
      sub_10005E11C(v28, 0xD00000000000001ELL, 0x80000001000996E0, 0xD00000000000005CLL, 0x8000000100098E90, v29);
      0x80000001000996E0, v148, v149, v150, v151, v152, v153, v154;
      v155 = 34;
LABEL_21:
      _StringGuts.grow(_:)(v155);
      0xE000000000000000, v156, v157, v158, v159, v160, v161, v162;
      v163._countAndFlagsBits = v13;
      v163._object = v15;
      String.append(_:)(v163);
      v15, v164, v165, v166, v167, v168, v169, v170;
      v171._countAndFlagsBits = 32032;
      v171._object = 0xE200000000000000;
      String.append(_:)(v171);
      sub_10000B6B0();
      v92 = swift_allocError();
      *v172 = v25;
      *(v172 + 8) = v24;
      *(v172 + 16) = 11;
      result = swift_willThrow();
      goto LABEL_22;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v213 = String.init(cString:)();
  v214 = v9;
  if (sqlite3_column_text(*a1, 1))
  {
    v212 = String.init(cString:)();
    v11 = v10;
  }

  else
  {
    v212 = 0;
    v11 = 0;
  }

  v30 = sqlite3_column_int(*a1, 3);
  v31 = sqlite3_column_blob(*a1, 2);
  if (v31)
  {
    v32 = [objc_allocWithZone(NSData) initWithBytes:v31 length:v30];
    v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100002074(&qword_1000B7858, &qword_100091870);
    sub_1000312EC(&qword_1000B7860, &protocol witness table for UInt32, &protocol conformance descriptor for <A> [A]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v5)
    {
      v214, v36, v37, v38, v39, v40, v41, v42;

      v11, v43, v44, v45, v46, v47, v48, v49;
      v50 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(40);
      0xE000000000000000, v51, v52, v53, v54, v55, v56, v57;
      swift_getErrorValue();
      v58._countAndFlagsBits = Error.localizedDescription.getter();
      object = v58._object;
      String.append(_:)(v58);
      object, v60, v61, v62, v63, v64, v65, v66;
      v67._countAndFlagsBits = 32032;
      v67._object = 0xE200000000000000;
      String.append(_:)(v67);
      sub_10005E11C(v50, 0xD000000000000024, 0x8000000100099730, 0xD00000000000005CLL, 0x8000000100098E90, 437);
      0x8000000100099730, v68, v69, v70, v71, v72, v73, v74;
      _StringGuts.grow(_:)(40);
      0xE000000000000000, v75, v76, v77, v78, v79, v80, v81;
      swift_getErrorValue();
      v82._countAndFlagsBits = Error.localizedDescription.getter();
      v83 = v82._object;
      String.append(_:)(v82);
      v83, v84, v85, v86, v87, v88, v89, v90;
      v91._countAndFlagsBits = 32032;
      v91._object = 0xE200000000000000;
      String.append(_:)(v91);
      sub_10000B6B0();
      v92 = swift_allocError();
      *v93 = 0xD000000000000024;
      *(v93 + 8) = 0x8000000100099730;
      *(v93 + 16) = 11;
      swift_willThrow();

      result = sub_100005A28(v33, v35);
LABEL_22:
      *a5 = v92;
      return result;
    }

    sub_100005A28(v33, v35);

    v31 = v218;
  }

  v94 = sqlite3_column_double(*a1, 4);
  if (!sqlite3_column_text(*a1, 5))
  {
    v31, v95, v96, v97, v98, v99, v100, v101;
    v11, v123, v124, v125, v126, v127, v128, v129;
    result = sqlite3_errmsg(a2);
    if (result)
    {
      v214, v130, v131, v132, v133, v134, v135, v136;
      v13 = String.init(cString:)();
      v15 = v137;
      v138 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(34);
      0xE000000000000000, v139, v140, v141, v142, v143, v144, v145;
      v24 = 0x80000001000996E0;
      v25 = 0xD00000000000001ELL;
      v146._countAndFlagsBits = v13;
      v146._object = v15;
      String.append(_:)(v146);
      v147._countAndFlagsBits = 32032;
      v147._object = 0xE200000000000000;
      String.append(_:)(v147);
      v28 = v138;
      v29 = 450;
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  v102 = String.init(cString:)();
  v104 = v103;
  if (!sqlite3_column_text(*a1, 6))
  {
    v31, v105, v106, v107, v108, v109, v110, v111;
    v11, v173, v174, v175, v176, v177, v178, v179;
    result = sqlite3_errmsg(a2);
    if (result)
    {
      v104, v180, v181, v182, v183, v184, v185, v186;
      v214, v187, v188, v189, v190, v191, v192, v193;
      v13 = String.init(cString:)();
      v15 = v194;
      v195 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(47);
      0xE000000000000000, v196, v197, v198, v199, v200, v201, v202;
      v24 = 0x8000000100099700;
      v25 = 0xD00000000000002BLL;
      v203._countAndFlagsBits = v13;
      v203._object = v15;
      String.append(_:)(v203);
      v204._countAndFlagsBits = 32032;
      v204._object = 0xE200000000000000;
      String.append(_:)(v204);
      sub_10005E11C(v195, 0xD00000000000002BLL, 0x8000000100099700, 0xD00000000000005CLL, 0x8000000100098E90, 459);
      0x8000000100099700, v205, v206, v207, v208, v209, v210, v211;
      v155 = 47;
      goto LABEL_21;
    }

LABEL_27:
    __break(1u);
    return result;
  }

  v112 = String.init(cString:)();
  v215 = v113;
  v217 = v112;
  v114 = *a4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v114;
  if ((result & 1) == 0)
  {
    result = sub_100049A20(0, *v114->endpoint + 1, 1, v114, v115, v116, v117, v118);
    v114 = result;
    *a4 = result;
  }

  v119 = v94;
  v121 = *v114->endpoint;
  v120 = *v114->connection;
  if (v121 >= v120 >> 1)
  {
    result = sub_100049A20((v120 > 1), v121 + 1, 1, v114, v115, v116, v117, v118);
    v114 = result;
    *a4 = result;
  }

  *v114->endpoint = v121 + 1;
  v122 = &v114[2 * v121];
  *v122->$__lazy_storage_$_interface = v213;
  *v122[1]._TtCs12_SwiftObject_opaque = v214;
  *&v122[1]._TtCs12_SwiftObject_opaque[8] = v212;
  *v122[1].endpoint = v11;
  *v122[1].connection = v31;
  *v122[1].$__lazy_storage_$_interface = v119;
  v122[1].$__lazy_storage_$_interface[4] = 0;
  *&v122[1].$__lazy_storage_$_interface[5] = v218;
  v122[1].$__lazy_storage_$_interface[7] = BYTE2(v218);
  *v122[2]._TtCs12_SwiftObject_opaque = v102;
  *&v122[2]._TtCs12_SwiftObject_opaque[8] = v104;
  *v122[2].endpoint = v217;
  *v122[2].connection = v215;
  return result;
}

void sub_100070B3C(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  if (!v4)
  {
    v32 = static os_log_type_t.error.getter();
    sub_10005E11C(v32, 0xD000000000000019, 0x8000000100098E70, 0xD00000000000005CLL, 0x8000000100098E90, 484);
    sub_10000B6B0();
    swift_allocError();
    *v33 = 0xD000000000000019;
    *(v33 + 8) = 0x8000000100098E70;
    *(v33 + 16) = 11;
    swift_willThrow();
    return;
  }

  ppStmt = 0;
  if (sqlite3_prepare_v2(v4, "SELECT COUNT(*) FROM CKSignatures;", -1, &ppStmt, 0))
  {
    if (sqlite3_errmsg(v4))
    {
      v5 = String.init(cString:)();
      v7 = v6;
      v8 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(43);
      0xE000000000000000, v9, v10, v11, v12, v13, v14, v15;
      v16._countAndFlagsBits = v5;
      v16._object = v7;
      String.append(_:)(v16);
      v17._countAndFlagsBits = 32032;
      v17._object = 0xE200000000000000;
      String.append(_:)(v17);
      sub_10005E11C(v8, 0xD000000000000027, 0x80000001000995F0, 0xD00000000000005CLL, 0x8000000100098E90, 502);
      0x80000001000995F0, v18, v19, v20, v21, v22, v23, v24;
      _StringGuts.grow(_:)(43);
      0xE000000000000000, v25, v26, v27, v28, v29, v30, v31;
LABEL_10:
      v59._countAndFlagsBits = v5;
      v59._object = v7;
      String.append(_:)(v59);
      v7, v60, v61, v62, v63, v64, v65, v66;
      v67._countAndFlagsBits = 32032;
      v67._object = 0xE200000000000000;
      String.append(_:)(v67);
      sub_10000B6B0();
      swift_allocError();
      *v68 = 0xD000000000000027;
      *(v68 + 8) = 0x80000001000995F0;
      *(v68 + 16) = 11;
      swift_willThrow();
      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    if (sqlite3_step(ppStmt) == 100)
    {
      *a2 = sqlite3_column_int(ppStmt, 0);
LABEL_11:
      sub_100070EEC(&ppStmt, v4);
      return;
    }

    if (sqlite3_errmsg(v4))
    {
      v5 = String.init(cString:)();
      v7 = v34;
      v35 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(47);
      0xE000000000000000, v36, v37, v38, v39, v40, v41, v42;
      v43._countAndFlagsBits = v5;
      v43._object = v7;
      String.append(_:)(v43);
      v44._countAndFlagsBits = 32032;
      v44._object = 0xE200000000000000;
      String.append(_:)(v44);
      sub_10005E11C(v35, 0xD00000000000002BLL, 0x8000000100099790, 0xD00000000000005CLL, 0x8000000100098E90, 508);
      0x8000000100099790, v45, v46, v47, v48, v49, v50, v51;
      _StringGuts.grow(_:)(43);
      0xE000000000000000, v52, v53, v54, v55, v56, v57, v58;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_100070EEC(sqlite3_stmt **a1, sqlite3 *a2)
{
  if (sqlite3_finalize(*a1))
  {
    if (sqlite3_errmsg(a2))
    {
      v3 = String.init(cString:)();
      v5 = v4;
      v6 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(48);
      0xE000000000000000, v7, v8, v9, v10, v11, v12, v13;
      v14._countAndFlagsBits = v3;
      v14._object = v5;
      String.append(_:)(v14);
      v5, v15, v16, v17, v18, v19, v20, v21;
      v22._countAndFlagsBits = 32032;
      v22._object = 0xE200000000000000;
      String.append(_:)(v22);
      sub_10005E11C(v6, 0xD00000000000002CLL, 0x80000001000997C0, 0xD00000000000005CLL, 0x8000000100098E90, 496);

      0x80000001000997C0, v23, v24, v25, v26, v27, v28, v29;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100071024(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  if (!v4)
  {
    v21 = static os_log_type_t.error.getter();
    sub_10005E11C(v21, 0xD000000000000019, 0x8000000100098E70, 0xD00000000000005CLL, 0x8000000100098E90, 525);
    return;
  }

  ppStmt = 0;
  if (sqlite3_prepare_v2(v4, "BEGIN EXCLUSIVE TRANSACTION", -1, &ppStmt, 0))
  {
    if (sqlite3_errmsg(v4))
    {
      v5 = String.init(cString:)();
      v7 = v6;
      v8 = static os_log_type_t.error.getter();
      *(&v239 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v9._countAndFlagsBits = 0xD000000000000031;
      v9._object = 0x8000000100098F10;
      String.append(_:)(v9);
      v10._countAndFlagsBits = v5;
      v10._object = v7;
      String.append(_:)(v10);
      v7, v11, v12, v13, v14, v15, v16, v17;
      v18._countAndFlagsBits = 32032;
      v18._object = 0xE200000000000000;
      String.append(_:)(v18);
      v19 = v8;
      v20 = 534;
LABEL_12:
      sub_10005E11C(v19, 0, 0xE000000000000000, 0xD00000000000005CLL, 0x8000000100098E90, v20);
      0xE000000000000000, v50, v51, v52, v53, v54, v55, v56;
      return;
    }

    __break(1u);
    goto LABEL_42;
  }

  if (sqlite3_step(ppStmt) != 101)
  {
    if (sqlite3_errmsg(v4))
    {
      v36 = String.init(cString:)();
      v38 = v37;
      v39 = static os_log_type_t.error.getter();
      *(&v239 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v40._countAndFlagsBits = 0xD000000000000031;
      v40._object = 0x8000000100098F10;
      String.append(_:)(v40);
      v41._countAndFlagsBits = v36;
      v41._object = v38;
      String.append(_:)(v41);
      v38, v42, v43, v44, v45, v46, v47, v48;
      v49._countAndFlagsBits = 32032;
      v49._object = 0xE200000000000000;
      String.append(_:)(v49);
      v19 = v39;
      v20 = 540;
      goto LABEL_12;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (sqlite3_finalize(ppStmt))
  {
    if (sqlite3_errmsg(v4))
    {
      v22 = String.init(cString:)();
      v24 = v23;
      v25 = static os_log_type_t.error.getter();
      *(&v239 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      v26._countAndFlagsBits = 0xD000000000000032;
      v26._object = 0x8000000100098F50;
      String.append(_:)(v26);
      v27._countAndFlagsBits = v22;
      v27._object = v24;
      String.append(_:)(v27);
      v24, v28, v29, v30, v31, v32, v33, v34;
      v35._countAndFlagsBits = 32032;
      v35._object = 0xE200000000000000;
      String.append(_:)(v35);
      v19 = v25;
      v20 = 546;
      goto LABEL_12;
    }

    goto LABEL_43;
  }

  if (a2)
  {
    v57 = "rom table. { ckSignature=";
  }

  else
  {
    v57 = "tatement. { error=";
  }

  v244 = 0;
  v58 = String.utf8CString.getter();
  (v57 | 0x8000000000000000), v59, v60, v61, v62, v63, v64, v65;
  v66 = sqlite3_prepare_v2(v4, (v58 + 32), -1, &v244, 0);

  if (v66)
  {
    if (!sqlite3_errmsg(v4))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v67 = String.init(cString:)();
    v69 = v68;
    v70 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(61);
    v71._object = 0x8000000100098FB0;
    v71._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v71);
    v72._countAndFlagsBits = v67;
    v72._object = v69;
    String.append(_:)(v72);
    v73._countAndFlagsBits = 32032;
    v73._object = 0xE200000000000000;
    String.append(_:)(v73);
    sub_10005E11C(v70, 0, 0xE000000000000000, 0xD00000000000005CLL, 0x8000000100098E90, 569);
    0xE000000000000000, v74, v75, v76, v77, v78, v79, v80;
    *&v239 = 0;
    *(&v239 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v81._object = 0x8000000100098FB0;
    v81._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v81);
    goto LABEL_19;
  }

  if (a2)
  {
    v92 = *(a2 + 16);
    if (v92)
    {
      v93 = (a2 + 32);
      while (1)
      {
        v239 = *v93;
        v94 = v93[1];
        v95 = v93[2];
        v96 = v93[4];
        v242 = v93[3];
        v243 = v96;
        v240 = v94;
        v241 = v95;
        sub_100031284(&v239, v234);
        v97 = objc_autoreleasePoolPush();
        v98 = v244;
        v99 = *(a1 + 40);
        v100 = String.utf8CString.getter();
        sqlite3_bind_text(v98, 1, (v100 + 32), -1, v99);

        if (sqlite3_step(v244) != 101)
        {
          break;
        }

        v101 = static os_log_type_t.debug.getter();
        v234[0] = 0;
        v234[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(45);
        v234[1], v102, v103, v104, v105, v106, v107, v108;
        v236 = v241;
        v237 = v242;
        v238 = v243;
        *v234 = v239;
        v235 = v240;
        sub_100031284(&v239, v233);
        v109._countAndFlagsBits = String.init<A>(describing:)();
        object = v109._object;
        String.append(_:)(v109);
        object, v111, v112, v113, v114, v115, v116, v117;
        v118._countAndFlagsBits = 32032;
        v118._object = 0xE200000000000000;
        String.append(_:)(v118);
        sub_10005E11C(v101, 0xD000000000000029, 0x8000000100099060, 0xD00000000000005CLL, 0x8000000100098E90, 588);
        0x8000000100099060, v119, v120, v121, v122, v123, v124, v125;
        sqlite3_reset(v244);
        sub_1000312BC(&v239);
        objc_autoreleasePoolPop(v97);
        v93 += 5;
        if (!--v92)
        {
          goto LABEL_28;
        }
      }

      v232 = v97;
      if (!sqlite3_errmsg(v4))
      {
        goto LABEL_46;
      }

      v167 = String.init(cString:)();
      v169 = v168;
      v170 = static os_log_type_t.error.getter();
      v234[0] = 0;
      v234[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(48);
      v234[1], v171, v172, v173, v174, v175, v176, v177;
      v234[0] = 0xD00000000000002CLL;
      v234[1] = 0x8000000100098FF0;
      v178._countAndFlagsBits = v167;
      v178._object = v169;
      String.append(_:)(v178);
      v179._countAndFlagsBits = 32032;
      v179._object = 0xE200000000000000;
      String.append(_:)(v179);
      v180 = v234[1];
      sub_10005E11C(v170, v234[0], v234[1], 0xD00000000000005CLL, 0x8000000100098E90, 584);
      v180, v181, v182, v183, v184, v185, v186, v187;
      v234[0] = 0;
      v234[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(48);
      v234[1], v188, v189, v190, v191, v192, v193, v194;
      v234[0] = 0xD00000000000002CLL;
      v234[1] = 0x8000000100098FF0;
      v195._countAndFlagsBits = v167;
      v195._object = v169;
      String.append(_:)(v195);
      v169, v196, v197, v198, v199, v200, v201, v202;
      v203._countAndFlagsBits = 32032;
      v203._object = 0xE200000000000000;
      String.append(_:)(v203);
      v204 = v234[0];
      v205 = v234[1];
      sub_10000B6B0();
      swift_allocError();
      *v206 = v204;
      *(v206 + 8) = v205;
      *(v206 + 16) = 11;
      swift_willThrow();
      sqlite3_reset(v244);
      sub_1000312BC(&v239);
      objc_autoreleasePoolPop(v232);
LABEL_38:
      sub_100071B90(&v244, v4);
      return;
    }
  }

  else
  {
    if (sqlite3_step(v244) != 101)
    {
      if (!sqlite3_errmsg(v4))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v67 = String.init(cString:)();
      v69 = v207;
      v208 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(48);
      0xE000000000000000, v209, v210, v211, v212, v213, v214, v215;
      v216._countAndFlagsBits = v67;
      v216._object = v69;
      String.append(_:)(v216);
      v217._countAndFlagsBits = 32032;
      v217._object = 0xE200000000000000;
      String.append(_:)(v217);
      sub_10005E11C(v208, 0xD00000000000002CLL, 0x8000000100098FF0, 0xD00000000000005CLL, 0x8000000100098E90, 594);
      0x8000000100098FF0, v218, v219, v220, v221, v222, v223, v224;
      _StringGuts.grow(_:)(48);
      0xE000000000000000, v225, v226, v227, v228, v229, v230, v231;
      *&v239 = 0xD00000000000002CLL;
      *(&v239 + 1) = 0x8000000100098FF0;
LABEL_19:
      v82._countAndFlagsBits = v67;
      v82._object = v69;
      String.append(_:)(v82);
      v69, v83, v84, v85, v86, v87, v88, v89;
      v90._countAndFlagsBits = 32032;
      v90._object = 0xE200000000000000;
      String.append(_:)(v90);
      sub_10000B6B0();
      swift_allocError();
      *v91 = v239;
      *(v91 + 16) = 11;
      swift_willThrow();
      goto LABEL_38;
    }

    v126 = static os_log_type_t.debug.getter();
    sub_10005E11C(v126, 0xD00000000000001FLL, 0x8000000100099020, 0xD00000000000005CLL, 0x8000000100098E90, 598);
  }

LABEL_28:
  v234[0] = 0;
  if (sqlite3_prepare_v2(v4, "COMMIT TRANSACTION", -1, v234, 0))
  {
    if (!sqlite3_errmsg(v4))
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v127 = String.init(cString:)();
    v129 = v128;
    v130 = static os_log_type_t.error.getter();
    *&v239 = 0;
    *(&v239 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v131._countAndFlagsBits = 0xD000000000000031;
    v131._object = 0x8000000100098F10;
    String.append(_:)(v131);
    v132._countAndFlagsBits = v127;
    v132._object = v129;
    String.append(_:)(v132);
    v129, v133, v134, v135, v136, v137, v138, v139;
    v140._countAndFlagsBits = 32032;
    v140._object = 0xE200000000000000;
    String.append(_:)(v140);
    v142 = *(&v239 + 1);
    v141 = v239;
    v143 = v130;
    v144 = *(&v239 + 1);
    v145 = 614;
    goto LABEL_34;
  }

  if (sqlite3_step(v234[0]) == 101)
  {
LABEL_35:
    sub_100071CC8(v234, v4, a1, 608);
    goto LABEL_38;
  }

  if (sqlite3_errmsg(v4))
  {
    v146 = String.init(cString:)();
    v148 = v147;
    v149 = static os_log_type_t.error.getter();
    *&v239 = 0;
    *(&v239 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v150._countAndFlagsBits = 0xD000000000000031;
    v150._object = 0x8000000100098F10;
    String.append(_:)(v150);
    v151._countAndFlagsBits = v146;
    v151._object = v148;
    String.append(_:)(v151);
    v148, v152, v153, v154, v155, v156, v157, v158;
    v159._countAndFlagsBits = 32032;
    v159._object = 0xE200000000000000;
    String.append(_:)(v159);
    v142 = *(&v239 + 1);
    v141 = v239;
    v143 = v149;
    v144 = *(&v239 + 1);
    v145 = 620;
LABEL_34:
    sub_10005E11C(v143, v141, v144, 0xD00000000000005CLL, 0x8000000100098E90, v145);
    v142, v160, v161, v162, v163, v164, v165, v166;
    goto LABEL_35;
  }

LABEL_48:
  __break(1u);
}

void sub_100071B90(sqlite3_stmt **a1, sqlite3 *a2)
{
  if (sqlite3_finalize(*a1))
  {
    if (sqlite3_errmsg(a2))
    {
      v3 = String.init(cString:)();
      v5 = v4;
      v6 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(49);
      0xE000000000000000, v7, v8, v9, v10, v11, v12, v13;
      v14._countAndFlagsBits = v3;
      v14._object = v5;
      String.append(_:)(v14);
      v5, v15, v16, v17, v18, v19, v20, v21;
      v22._countAndFlagsBits = 32032;
      v22._object = 0xE200000000000000;
      String.append(_:)(v22);
      sub_10005E11C(v6, 0xD00000000000002DLL, 0x80000001000990F0, 0xD00000000000005CLL, 0x8000000100098E90, 563);

      0x80000001000990F0, v23, v24, v25, v26, v27, v28, v29;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100071CC8(sqlite3_stmt **a1, sqlite3 *a2, uint64_t a3, uint64_t a4)
{
  if (sqlite3_finalize(*a1))
  {
    if (sqlite3_errmsg(a2))
    {
      v6 = String.init(cString:)();
      v8 = v7;
      v9 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(49);
      0xE000000000000000, v10, v11, v12, v13, v14, v15, v16;
      v17._countAndFlagsBits = v6;
      v17._object = v8;
      String.append(_:)(v17);
      v8, v18, v19, v20, v21, v22, v23, v24;
      v25._countAndFlagsBits = 32032;
      v25._object = 0xE200000000000000;
      String.append(_:)(v25);
      sub_10005E11C(v9, 0xD00000000000002DLL, 0x80000001000990C0, 0xD00000000000005CLL, 0x8000000100098E90, a4);

      0x80000001000990C0, v26, v27, v28, v29, v30, v31, v32;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100071E04(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 32);
  if (!v2)
  {
    v23 = static os_log_type_t.error.getter();
    sub_10005E11C(v23, 0xD000000000000019, 0x8000000100098E70, 0xD00000000000005CLL, 0x8000000100098E90, 630);
    return;
  }

  if (sqlite3_close_v2(*(a1 + 32)))
  {
    if (!sqlite3_errmsg(v2))
    {
      __break(1u);
      return;
    }

    v3 = String.init(cString:)();
    v5 = v4;
    v6 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(66);
    v7._countAndFlagsBits = 0xD000000000000034;
    v7._object = 0x80000001000997F0;
    String.append(_:)(v7);
    String.append(_:)(*(a1 + 16));
    v8._countAndFlagsBits = 0x3D726F727265202CLL;
    v8._object = 0xE800000000000000;
    String.append(_:)(v8);
    v9._countAndFlagsBits = v3;
    v9._object = v5;
    String.append(_:)(v9);
    v5, v10, v11, v12, v13, v14, v15, v16;
    v17._countAndFlagsBits = 32032;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    v18 = 0;
    v19 = 0xE000000000000000;
    v20 = v6;
    v21 = 0xE000000000000000;
    v22 = 636;
  }

  else
  {
    v24 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(50);
    0xE000000000000000, v25, v26, v27, v28, v29, v30, v31;
    String.append(_:)(*(a1 + 16));
    v32._countAndFlagsBits = 32032;
    v32._object = 0xE200000000000000;
    String.append(_:)(v32);
    v18 = 0xD00000000000002ELL;
    v19 = 0x8000000100099830;
    v20 = v24;
    v21 = 0x8000000100099830;
    v22 = 640;
  }

  sub_10005E11C(v20, v18, v21, 0xD00000000000005CLL, 0x8000000100098E90, v22);
  v19, v33, v34, v35, v36, v37, v38, v39;
}

void sub_100072040(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 defaultManager];
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v3 fileExistsAtPath:v6];

  if (!v7)
  {
    v21 = static os_log_type_t.debug.getter();
    v67 = 0;
    v68 = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    v22._countAndFlagsBits = 0xD00000000000004DLL;
    v22._object = 0x8000000100099BC0;
    String.append(_:)(v22);
    v23._countAndFlagsBits = v4;
    v23._object = v5;
    String.append(_:)(v23);
    v24._countAndFlagsBits = 32032;
    v24._object = 0xE200000000000000;
    String.append(_:)(v24);
    v16 = 0;
    v17 = 0xE000000000000000;
    v18 = v21;
    v19 = 0xE000000000000000;
    v20 = 650;
    goto LABEL_5;
  }

  v8 = [v2 defaultManager];
  v9 = String._bridgeToObjectiveC()();
  v67 = 0;
  v10 = [v8 removeItemAtPath:v9 error:&v67];

  if (v10)
  {
    v11 = v67;
    v12 = static os_log_type_t.default.getter();
    v67 = 0;
    v68 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v13._countAndFlagsBits = 0xD000000000000032;
    v13._object = 0x8000000100099C50;
    String.append(_:)(v13);
    v14._countAndFlagsBits = v4;
    v14._object = v5;
    String.append(_:)(v14);
    v15._countAndFlagsBits = 32032;
    v15._object = 0xE200000000000000;
    String.append(_:)(v15);
    v16 = v67;
    v17 = v68;
    v18 = v12;
    v19 = v68;
    v20 = 656;
LABEL_5:
    sub_10005E11C(v18, v16, v19, 0xD00000000000005CLL, 0x8000000100098E90, v20);
    v17, v25, v26, v27, v28, v29, v30, v31;
    return;
  }

  v32 = v67;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v33 = static os_log_type_t.error.getter();
  v67 = 0;
  v68 = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v34._object = 0x8000000100099C10;
  v34._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v34);
  swift_getErrorValue();
  v35._countAndFlagsBits = Error.localizedDescription.getter();
  object = v35._object;
  String.append(_:)(v35);
  object, v37, v38, v39, v40, v41, v42, v43;
  v44._countAndFlagsBits = 32032;
  v44._object = 0xE200000000000000;
  String.append(_:)(v44);
  v45 = v68;
  sub_10005E11C(v33, v67, v68, 0xD00000000000005CLL, 0x8000000100098E90, 658);
  v45, v46, v47, v48, v49, v50, v51, v52;
  v67 = 0;
  v68 = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v53._object = 0x8000000100099C10;
  v53._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v53);
  swift_getErrorValue();
  v54._countAndFlagsBits = Error.localizedDescription.getter();
  v55 = v54._object;
  String.append(_:)(v54);
  v55, v56, v57, v58, v59, v60, v61, v62;
  v63._countAndFlagsBits = 32032;
  v63._object = 0xE200000000000000;
  String.append(_:)(v63);
  v64 = v67;
  v65 = v68;
  sub_10000B6B0();
  swift_allocError();
  *v66 = v64;
  *(v66 + 8) = v65;
  *(v66 + 16) = 11;
  swift_willThrow();
}

uint64_t sub_100072458()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100072810();
  static DispatchQoS.unspecified.getter();
  v7[1] = &_swiftEmptyArrayStorage;
  sub_10007285C();
  sub_100002074(&qword_1000B8B20, &qword_100092E18);
  sub_1000728B4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1000B89E0 = result;
  return result;
}

uint64_t sub_100072660(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  v9 = OBJC_IVAR____TtC13frauddefensed23SignaturesSQLiteManager_logger;
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignaturesSQLiteManager(uint64_t a1)
{
  result = qword_1000B8A18;
  if (!qword_1000B8A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100072758(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

unint64_t sub_100072810()
{
  result = qword_1000B8B10;
  if (!qword_1000B8B10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B8B10);
  }

  return result;
}

unint64_t sub_10007285C()
{
  result = qword_1000B8B18;
  if (!qword_1000B8B18)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8B18);
  }

  return result;
}

unint64_t sub_1000728B4()
{
  result = qword_1000B8B28;
  if (!qword_1000B8B28)
  {
    sub_100003400(&qword_1000B8B20, &qword_100092E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8B28);
  }

  return result;
}

uint64_t sub_100072918(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_100057F68(a1, a2);
  if ((v5 & 1) == 0)
  {
    if (!*(v3 + 16))
    {
      return 0;
    }

    v4 = sub_100057F68(0x6C61626F6C67, 0xE600000000000000);
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(*(v3 + 56) + 16 * v4);

  return v7;
}

char *sub_100072990(uint64_t a1, void *a2)
{
  v3 = v2;
  v143._countAndFlagsBits = a1;
  v143._object = a2;
  v140 = *v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v139 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for URL.DirectoryHint();
  v135 = *(v138 - 8);
  __chkstk_darwin(v138);
  v8 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002074(&qword_1000B6DE8, &qword_10008FA30);
  __chkstk_darwin(v9 - 8);
  v11 = &v131 - v10;
  v136 = type metadata accessor for URL();
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v13 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC13frauddefensed16RecordZonesAsset_logger;
  if (qword_1000B66B0 != -1)
  {
    swift_once();
  }

  v15 = sub_100003448(v4, qword_1000B93E8);
  v16 = *(v5 + 16);
  v16(&v3[v14], v15, v4);
  v17 = [objc_opt_self() defaultManager];
  v146 = v4;
  v18 = v17;
  v19 = String._bridgeToObjectiveC()();
  v141 = v14;
  v20 = v19;
  v21 = [v18 fileExistsAtPath:v19];
  v142 = v3;
  v22 = v21;

  if (!v22)
  {
    v63 = v139;
    v16(v139, &v142[v141], v146);
    v64 = static os_log_type_t.error.getter();
    v144 = 0;
    v145 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v65._object = 0x8000000100099E60;
    v65._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v65);
    countAndFlagsBits = v143._countAndFlagsBits;
    object = v143._object;
    String.append(_:)(v143);
    v68._countAndFlagsBits = 32032;
    v68._object = 0xE200000000000000;
    String.append(_:)(v68);
    v69 = v145;
    sub_10005E11C(v64, v144, v145, 0xD000000000000055, 0x8000000100099EA0, 20);
    v69, v70, v71, v72, v73, v74, v75, v76;
    v49 = *(v5 + 8);
    v49(v63, v146);
    v144 = 0;
    v145 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v77._object = 0x8000000100099E60;
    v77._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v77);
    v78._countAndFlagsBits = countAndFlagsBits;
    v78._object = object;
    String.append(_:)(v78);
    object, v79, v80, v81, v82, v83, v84, v85;
    v86._countAndFlagsBits = 32032;
    v86._object = 0xE200000000000000;
    String.append(_:)(v86);
    v87 = v144;
    v88 = v145;
    sub_10000B6B0();
    swift_allocError();
    *v89 = v87;
    *(v89 + 8) = v88;
    *(v89 + 16) = 6;
    swift_willThrow();
    goto LABEL_7;
  }

  v132 = v5;
  v133 = v16;
  v23 = v142;
  v24 = v134;
  v25 = v136;
  (*(v134 + 56))(v11, 1, 1, v136);
  (*(v135 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v138);
  v26 = v143._object;

  v27 = v143._countAndFlagsBits;
  URL.init(filePath:directoryHint:relativeTo:)();
  v28 = v137;
  v29 = Data.init(contentsOf:options:)();
  v138 = v28;
  if (v28)
  {
    v31 = v26;
    (*(v24 + 8))(v13, v25);
    v32 = &v23[v141];
    v33 = v27;
    v34 = v139;
    v35 = v146;
    v133(v139, v32, v146);
    v36 = static os_log_type_t.error.getter();
    v144 = 0;
    v145 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v37._object = 0x80000001000950C0;
    v37._countAndFlagsBits = 0xD000000000000030;
    String.append(_:)(v37);
    v38._countAndFlagsBits = v33;
    v39 = v33;
    v38._object = v31;
    String.append(_:)(v38);
    v40._countAndFlagsBits = 32032;
    v40._object = 0xE200000000000000;
    String.append(_:)(v40);
    v41 = v145;
    sub_10005E11C(v36, v144, v145, 0xD000000000000055, 0x8000000100099EA0, 28);
    v41, v42, v43, v44, v45, v46, v47, v48;
    v49 = *(v132 + 8);
    v49(v34, v35);
    v144 = 0;
    v145 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v50._object = 0x80000001000950C0;
    v50._countAndFlagsBits = 0xD000000000000030;
    String.append(_:)(v50);
    v51._countAndFlagsBits = v39;
    v51._object = v31;
    String.append(_:)(v51);
    v31, v52, v53, v54, v55, v56, v57, v58;
    v59._countAndFlagsBits = 32032;
    v59._object = 0xE200000000000000;
    String.append(_:)(v59);
    v60 = v144;
    v61 = v145;
    sub_10000B6B0();
    swift_allocError();
    *v62 = v60;
    *(v62 + 8) = v61;
    *(v62 + 16) = 6;
    swift_willThrow();

LABEL_7:
    v90 = v142;
    v49(&v142[v141], v146);
    swift_deallocPartialClassInstance();
    return v90;
  }

  v92 = v30;
  v93 = v29;
  (*(v24 + 8))(v13, v25);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100002074(&qword_1000B7F70, &qword_100092E60);
  sub_1000733A8();
  v137 = v93;
  v94 = v138;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v102 = v133;
  if (v94)
  {

    v103 = v139;
    v104 = v146;
    v102(v139, &v23[v141], v146);
    v105 = static os_log_type_t.error.getter();
    v144 = 0;
    v145 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v136 = "ath. { filePath=";
    v106._object = 0x8000000100095100;
    v106._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v106);
    v107 = v143._countAndFlagsBits;
    v138 = v92;
    v108 = v143._object;
    String.append(_:)(v143);
    v109._countAndFlagsBits = 32032;
    v109._object = 0xE200000000000000;
    String.append(_:)(v109);
    v110 = v145;
    sub_10005E11C(v105, v144, v145, 0xD000000000000055, 0x8000000100099EA0, 36);
    v110, v111, v112, v113, v114, v115, v116, v117;
    v49 = *(v132 + 8);
    v49(v103, v104);
    v144 = 0;
    v145 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v118._object = (v136 | 0x8000000000000000);
    v118._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v118);
    v119._countAndFlagsBits = v107;
    v119._object = v108;
    String.append(_:)(v119);
    v108, v120, v121, v122, v123, v124, v125, v126;
    v127._countAndFlagsBits = 32032;
    v127._object = 0xE200000000000000;
    String.append(_:)(v127);
    v128 = v144;
    v129 = v145;
    sub_10000B6B0();
    swift_allocError();
    *v130 = v128;
    *(v130 + 8) = v129;
    *(v130 + 16) = 6;
    swift_willThrow();

    sub_100005A28(v137, v138);
    goto LABEL_7;
  }

  v143._object, v95, v96, v97, v98, v99, v100, v101;

  sub_100005A28(v137, v92);
  result = v23;
  *(v23 + 2) = v144;
  return result;
}

uint64_t sub_1000732B0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  v9 = OBJC_IVAR____TtC13frauddefensed16RecordZonesAsset_logger;
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecordZonesAsset(uint64_t a1)
{
  result = qword_1000B8B60;
  if (!qword_1000B8B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000733A8()
{
  result = qword_1000B8BF0;
  if (!qword_1000B8BF0)
  {
    sub_100003400(&qword_1000B7F70, &qword_100092E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8BF0);
  }

  return result;
}

Swift::Int sub_10007342C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100073498()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t withTimeout<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  sub_100002074(&qword_1000B8BF8, &qword_100092E70);
  inited = swift_initStackObject();
  v10[8] = inited;
  *(inited + 16) = 0;
  sub_100002074(qword_1000B8C00, &qword_100092E78);
  v13 = swift_initStackObject();
  v10[9] = v13;
  *(v13 + 16) = 0;
  type metadata accessor for Executor();
  v14 = swift_allocObject();
  v10[10] = v14;
  swift_defaultActor_initialize();
  *(v14 + 112) = 0;
  v15 = swift_task_alloc();
  v10[11] = v15;
  v15[2] = a6;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = inited;
  v15[7] = a2;
  v15[8] = a3;
  v15[9] = v13;
  v16 = swift_task_alloc();
  v10[12] = v16;
  *(v16 + 16) = inited;
  *(v16 + 24) = v13;
  v17 = swift_task_alloc();
  v10[13] = v17;
  *v17 = v10;
  v17[1] = sub_100073690;

  return withTaskCancellationHandler<A>(operation:onCancel:)(a1, &unk_100092E88, v15, sub_100074E1C, v16, a6);
}

uint64_t sub_100073690()
{
  v3 = *v0;

  swift_setDeallocating();

  swift_setDeallocating();

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100073854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return _swift_task_switch(sub_10007388C, 0, 0);
}

uint64_t sub_10007388C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v10 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v5;
  *(v3 + 56) = v10;
  *(v3 + 72) = v2;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_1000739AC;
  v7 = *(v0 + 80);
  v8 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD000000000000011, 0x8000000100099F70, sub_100074FC0, v3, v7);
}

uint64_t sub_1000739AC()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100073AE8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100073AE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100073B4C(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002A54;

  return sub_100073854(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_100073C38(uint64_t a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v39 = a8;
  v40 = a2;
  v42 = a5;
  v43 = a6;
  v41 = a3;
  sub_100003400(&qword_1000B6CC0, &qword_100091740);
  v44 = a9;
  v12 = type metadata accessor for CheckedContinuation();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - v14;
  v16 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  __chkstk_darwin(v16 - 8);
  v18 = &v31 - v17;
  static Task<>.checkCancellation()();
  v36 = type metadata accessor for TaskPriority();
  v19 = *(v36 - 8);
  v35 = *(v19 + 56);
  v37 = v19 + 56;
  v35(v18, 1, 1, v36);
  v20 = a4;
  v33 = *(v13 + 16);
  v34 = v13 + 16;
  v32 = a1;
  v33(v15, a1, v12);
  v38 = a7;
  v21 = *(v13 + 80);
  v22 = v12;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v24 = v40;
  v25 = v41;
  v23[4] = v44;
  v23[5] = v24;
  v23[6] = v25;
  v23[7] = v20;
  v40 = *(v13 + 32);
  v40(v23 + ((v21 + 64) & ~v21), v15, v12);

  v26 = sub_100074580(0, 0, v18, &unk_100092F18, v23);
  *(v42 + 16) = v26;

  v35(v18, 1, 1, v36);
  v33(v15, v32, v22);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v28 = v43;
  v27[4] = v44;
  v27[5] = v28;
  v27[6] = v38;
  v27[7] = v26;
  v27[8] = v20;
  v40(v27 + ((v21 + 72) & ~v21), v15, v22);

  v29 = sub_1000024AC(0, 0, v18, &unk_100092F28, v27);
  *(v39 + 16) = v29;
}

uint64_t sub_100073FB0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v8[5] = *(a8 - 8);
  v10 = swift_task_alloc();
  v8[6] = v10;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v8[7] = v11;
  *v11 = v8;
  v11[1] = sub_100074108;

  return v13(v10);
}

uint64_t sub_100074108()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_10007431C;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 16);
    v3 = sub_100074224;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_100074224()
{
  v1 = v0[2];
  if ((*(v1 + 112) & 1) == 0)
  {
    *(v1 + 112) = sub_100074420(v0[3], v0[6], v0[4]) & 1;
  }

  return _swift_task_switch(sub_1000742A4, 0, 0);
}

uint64_t sub_1000742A4()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100074338()
{
  v1 = v0[2];
  if ((*(v1 + 112) & 1) == 0)
  {
    *(v1 + 112) = sub_10007450C(v0[3], v0[8], v0[4]) & 1;
  }

  return _swift_task_switch(sub_1000743B8, 0, 0);
}

uint64_t sub_1000743B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100074420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003400(&qword_1000B6CC0, &qword_100091740);
  type metadata accessor for CheckedContinuation();
  CheckedContinuation.resume(returning:)();
  return 1;
}

uint64_t sub_10007450C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_errorRetain();
  sub_100003400(&qword_1000B6CC0, &qword_100091740);
  type metadata accessor for CheckedContinuation();
  CheckedContinuation.resume(throwing:)();
  return 1;
}

uint64_t sub_100074580(uint64_t a1, _TtC13frauddefensed22TrustKitUIServerClient *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  __chkstk_darwin(v9 - 8);
  v11 = v32 - v10;
  sub_100003480(a3, v32 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000034F0(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v33[0] = 0;
        v33[1] = 0;
        v21 = v33;
        v33[2] = v16;
        v33[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v32[1] = 7;
      v32[2] = v21;
      v32[3] = v19;
      v23 = swift_task_create();

      sub_1000034F0(a3);
      a2, v24, v25, v26, v27, v28, v29, v30;

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000034F0(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v33[4] = 0;
    v33[5] = 0;
    v33[6] = v16;
    v33[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100074840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v12;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = type metadata accessor for ContinuousClock();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();

  return _swift_task_switch(sub_100074910, 0, 0);
}

uint64_t sub_100074910(uint64_t a1)
{
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  v1[11] = v2;
  *v2 = v1;
  v2[1] = sub_1000749D0;
  v4 = v1[2];
  v3 = v1[3];

  return sub_10007547C(v4, v3, 0, 0, 1);
}

uint64_t sub_1000749D0()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100074C44;
  }

  else
  {
    v5 = sub_100074B40;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100074B40()
{
  v1 = *(v0 + 40);
  Task.cancel()();

  return _swift_task_switch(sub_100074BC4, v1, 0);
}

uint64_t sub_100074BC4()
{
  v1 = v0[5];
  if ((*(v1 + 112) & 1) == 0)
  {
    *(v1 + 112) = sub_100074CA8(v0[6], v0[7]) & 1;
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_100074C44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100074CA8(uint64_t a1, uint64_t a2)
{
  sub_10000B6B0();
  swift_allocError();
  *v2 = 0xD000000000000014;
  *(v2 + 8) = 0x8000000100099F90;
  *(v2 + 16) = 2;
  sub_100003400(&qword_1000B6CC0, &qword_100091740);
  type metadata accessor for CheckedContinuation();
  CheckedContinuation.resume(throwing:)();
  return 1;
}

uint64_t sub_100074D5C(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {

    Task.cancel()();
  }

  if (*(a2 + 16))
  {

    sub_100002074(&qword_1000B6CC0, &qword_100091740);
    Task.cancel()();
  }

  return result;
}

uint64_t sub_100074E24(uint64_t a1)
{
  result = type metadata accessor for Optional();
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

uint64_t sub_100074EB8()
{
  v1 = *(*v0 + 88);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100074F90()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}