unint64_t sub_100053494()
{
  result = qword_1005A8C60;
  if (!qword_1005A8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A8C60);
  }

  return result;
}

unint64_t sub_1000535B8()
{
  result = qword_1005A8C68;
  if (!qword_1005A8C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A8C68);
  }

  return result;
}

unint64_t sub_10005360C()
{
  result = qword_1005A8C70;
  if (!qword_1005A8C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A8C70);
  }

  return result;
}

void *sub_100053660(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v116 = a1;

  v6 = 0;
  v7 = _swiftEmptyDictionarySingleton;
  while (v4)
  {
LABEL_12:
    v13 = __clz(__rbit64(v4)) | (v6 << 6);
    v14 = *(v116 + 56);
    v15 = (*(v116 + 48) + 16 * v13);
    v16 = v15[1];
    v119 = *v15;
    sub_1000534E8(v14 + 48 * v13, &v126);
    v117 = v127;
    v118 = v126;
    v17 = v128;
    v18 = v129;

    if (!v16)
    {
      goto LABEL_97;
    }

    v4 &= v4 - 1;
    v126 = v118;
    v127 = v117;
    v128 = v17;
    v129 = v18;
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        sub_100010BD4(&v126, v123);
        sub_100011004(v123, v121);
        sub_10004B564(&qword_1005A8C78, &qword_1004C1AA8);
        if (swift_dynamicCast())
        {
          v29.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v121[0] = v7;
          v31 = sub_1000110D8(v119, v16);
          v33 = v7[2];
          v34 = (v32 & 1) == 0;
          v10 = __OFADD__(v33, v34);
          v35 = v33 + v34;
          if (v10)
          {
            goto LABEL_102;
          }

          v36 = v32;
          if (v7[3] < v35)
          {
            sub_10022C3EC(v35, isUniquelyReferenced_nonNull_native);
            v31 = sub_1000110D8(v119, v16);
            if ((v36 & 1) != (v37 & 1))
            {
              goto LABEL_110;
            }

            goto LABEL_48;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_48:
            if ((v36 & 1) == 0)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v105 = v31;
            sub_100202888();
            v31 = v105;
            if ((v36 & 1) == 0)
            {
LABEL_49:
              v7 = v121[0];
              *(v121[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
              v72 = (v7[6] + 16 * v31);
              *v72 = v119;
              v72[1] = v16;
              *(v7[7] + 8 * v31) = v29;
              v73 = v7[2];
              v10 = __OFADD__(v73, 1);
              v11 = v73 + 1;
              if (v10)
              {
                goto LABEL_107;
              }

              goto LABEL_5;
            }
          }

          goto LABEL_80;
        }

        v59 = v124;
        v60 = v125;
        v61 = sub_100011AEC(v123, v124);
        v114 = v110;
        __chkstk_darwin(v61);
        v113 = v62;
        v63 = v110 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
        *&v117 = v64;
        (*(v64 + 16))(v63);
        v65 = dispatch thunk of static BinaryInteger.isSigned.getter();
        *&v118 = v60;
        if ((v65 & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
        {
          v115 = v63;
          v121[0] = 0x8000000000000000;
          v66 = v59;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v63 = v115;
            v67 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v67 < 64)
            {
              v112 = v59;
              goto LABEL_63;
            }

            v111 = v110;
            __chkstk_darwin(v67);
            v112 = v110 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_100053494();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
LABEL_56:
            v78 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v117 + 8))(v112, v59);
            if (v78)
            {
              goto LABEL_109;
            }
          }

          else
          {
            v74 = dispatch thunk of static BinaryInteger.isSigned.getter();
            v75 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v74)
            {
              if (v75 > 64)
              {
                v111 = v110;
                __chkstk_darwin(v75);
                v112 = v110 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
                sub_100053494();
                dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
                v59 = v66;
                v63 = v115;
                goto LABEL_56;
              }

              v110[1] = *(*(v118 + 24) + 16);
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              v112 = v110;
              __chkstk_darwin(AssociatedTypeWitness);
              swift_getAssociatedConformanceWitness();
              v80 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
              v111 = v110;
              __chkstk_darwin(v80);
              v82 = v110 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
              dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
              v83 = dispatch thunk of static Comparable.< infix(_:_:)();
              (*(v117 + 8))(v82, v66);
              if (v83)
              {
                goto LABEL_109;
              }
            }

            else if (v75 >= 64)
            {
              v59 = v66;
              v63 = v115;
              goto LABEL_64;
            }

            v112 = v66;
LABEL_63:
            dispatch thunk of BinaryInteger._lowWord.getter();
            v63 = v115;
            v59 = v112;
          }
        }

LABEL_64:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
        {
LABEL_74:
          dispatch thunk of BinaryInteger._lowWord.getter();
          (*(v117 + 8))(v63, v59);
          v29.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
          v88 = swift_isUniquelyReferenced_nonNull_native();
          v121[0] = v7;
          v31 = sub_1000110D8(v119, v16);
          v90 = v7[2];
          v91 = (v89 & 1) == 0;
          v10 = __OFADD__(v90, v91);
          v92 = v90 + v91;
          if (v10)
          {
            goto LABEL_103;
          }

          v93 = v89;
          if (v7[3] >= v92)
          {
            if ((v88 & 1) == 0)
            {
              v106 = v31;
              sub_100202888();
              v31 = v106;
              if ((v93 & 1) == 0)
              {
LABEL_94:
                v7 = v121[0];
                *(v121[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
                v107 = (v7[6] + 16 * v31);
                *v107 = v119;
                v107[1] = v16;
                *(v7[7] + 8 * v31) = v29;
                v108 = v7[2];
                v10 = __OFADD__(v108, 1);
                v11 = v108 + 1;
                if (v10)
                {
                  __break(1u);
LABEL_97:

                  return v7;
                }

                goto LABEL_5;
              }

              goto LABEL_80;
            }
          }

          else
          {
            sub_10022C3EC(v92, v88);
            v31 = sub_1000110D8(v119, v16);
            if ((v93 & 1) != (v94 & 1))
            {
              goto LABEL_110;
            }
          }

          if ((v93 & 1) == 0)
          {
            goto LABEL_94;
          }

          goto LABEL_80;
        }

        v121[0] = 0x7FFFFFFFFFFFFFFFLL;
        LODWORD(v112) = dispatch thunk of static BinaryInteger.isSigned.getter();
        v115 = v63;
        v84 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v112)
        {
          if (v84 >= 65)
          {
            goto LABEL_67;
          }
        }

        else if (v84 >= 64)
        {
LABEL_67:
          v112 = v110;
          __chkstk_darwin(v84);
          v86 = v110 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_100053494();
          v113 = v86;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v63 = v115;
          v87 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v117 + 8))(v113, v59);
          if (v87)
          {
            goto LABEL_108;
          }

          goto LABEL_74;
        }

        v63 = v115;
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_74;
      }

      sub_100010BD4(&v126, v123);
      v48 = sub_100011AEC(v123, v124);
      __chkstk_darwin(v48);
      (*(v50 + 16))(v110 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_1000535B8();
      BinaryFloatingPoint.init<A>(_:)();
      v29.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v122 = v7;
      v52 = sub_1000110D8(v119, v16);
      v54 = v7[2];
      v55 = (v53 & 1) == 0;
      v10 = __OFADD__(v54, v55);
      v56 = v54 + v55;
      if (v10)
      {
        goto LABEL_101;
      }

      v57 = v53;
      if (v7[3] >= v56)
      {
        if ((v51 & 1) == 0)
        {
          v102 = v52;
          sub_100202888();
          v52 = v102;
          if ((v57 & 1) == 0)
          {
LABEL_88:
            v7 = v122;
            v122[(v52 >> 6) + 8] |= 1 << v52;
            v103 = (v7[6] + 16 * v52);
            *v103 = v119;
            v103[1] = v16;
            *(v7[7] + 8 * v52) = v29;
            v104 = v7[2];
            v10 = __OFADD__(v104, 1);
            v11 = v104 + 1;
            if (v10)
            {
              goto LABEL_104;
            }

            goto LABEL_5;
          }

          goto LABEL_46;
        }
      }

      else
      {
        sub_10022C3EC(v56, v51);
        v52 = sub_1000110D8(v119, v16);
        if ((v57 & 1) != (v58 & 1))
        {
          goto LABEL_110;
        }
      }

      if ((v57 & 1) == 0)
      {
        goto LABEL_88;
      }

LABEL_46:
      v71 = v52;

      v7 = v122;
LABEL_81:
      v95 = v7[7];
      v96 = *(v95 + 8 * v71);
      *(v95 + 8 * v71) = v29;

LABEL_6:
      sub_100004984(v123);
    }

    else
    {
      if (v18)
      {
        sub_100010BD4(&v126, v123);
        v38 = sub_100011AEC(v123, v124);
        __chkstk_darwin(v38);
        (*(v40 + 16))(v110 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
        String.init<A>(_:)();
        v29.super.super.isa = String._bridgeToObjectiveC()();

        v41 = swift_isUniquelyReferenced_nonNull_native();
        v121[0] = v7;
        v31 = sub_1000110D8(v119, v16);
        v43 = v7[2];
        v44 = (v42 & 1) == 0;
        v10 = __OFADD__(v43, v44);
        v45 = v43 + v44;
        if (v10)
        {
          goto LABEL_100;
        }

        v46 = v42;
        if (v7[3] >= v45)
        {
          if ((v41 & 1) == 0)
          {
            v101 = v31;
            sub_100202888();
            v31 = v101;
            if ((v46 & 1) == 0)
            {
LABEL_4:
              v7 = v121[0];
              *(v121[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
              v8 = (v7[6] + 16 * v31);
              *v8 = v119;
              v8[1] = v16;
              *(v7[7] + 8 * v31) = v29;
              v9 = v7[2];
              v10 = __OFADD__(v9, 1);
              v11 = v9 + 1;
              if (v10)
              {
                goto LABEL_105;
              }

LABEL_5:
              v7[2] = v11;
              goto LABEL_6;
            }

            goto LABEL_80;
          }
        }

        else
        {
          sub_10022C3EC(v45, v41);
          v31 = sub_1000110D8(v119, v16);
          if ((v46 & 1) != (v47 & 1))
          {
            goto LABEL_110;
          }
        }

        if ((v46 & 1) == 0)
        {
          goto LABEL_4;
        }

LABEL_80:
        v71 = v31;

        v7 = v121[0];
        goto LABEL_81;
      }

      v120 = v118;
      v19 = v118;
      sub_1000545A4(0, &qword_1005A8C80, NSNumber_ptr);
      v20.super.super.isa = NSNumber.init(BOOLeanLiteral:)(v19 & 1).super.super.isa;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v123[0] = v7;
      v22 = sub_1000110D8(v119, v16);
      v24 = v7[2];
      v25 = (v23 & 1) == 0;
      v10 = __OFADD__(v24, v25);
      v26 = v24 + v25;
      if (v10)
      {
        goto LABEL_99;
      }

      v27 = v23;
      if (v7[3] >= v26)
      {
        if (v21)
        {
          goto LABEL_39;
        }

        v97 = v22;
        sub_100202888();
        v22 = v97;
        if ((v27 & 1) == 0)
        {
          goto LABEL_83;
        }

LABEL_40:
        v68 = v22;

        v7 = v123[0];
        v69 = *(v123[0] + 56);
        v70 = *(v69 + 8 * v68);
        *(v69 + 8 * v68) = v20;
      }

      else
      {
        sub_10022C3EC(v26, v21);
        v22 = sub_1000110D8(v119, v16);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_110;
        }

LABEL_39:
        if (v27)
        {
          goto LABEL_40;
        }

LABEL_83:
        v7 = v123[0];
        *(v123[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
        v98 = (v7[6] + 16 * v22);
        *v98 = v119;
        v98[1] = v16;
        *(v7[7] + 8 * v22) = v20;
        v99 = v7[2];
        v10 = __OFADD__(v99, 1);
        v100 = v99 + 1;
        if (v10)
        {
          goto LABEL_106;
        }

        v7[2] = v100;
      }
    }
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v5)
    {
      goto LABEL_97;
    }

    v4 = *(v1 + 8 * v12);
    ++v6;
    if (v4)
    {
      v6 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000545A4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000545EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A8C88, &unk_1004C1AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005465C(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A8C88, &unk_1004C1AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000546C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A8C88, &unk_1004C1AB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100054734()
{
  result = qword_1005A8CA0;
  if (!qword_1005A8CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A8CA0);
  }

  return result;
}

__n128 sub_100054794(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000547A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000547E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_100054830(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 41) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AnalyticsEvent.AnalyticsEventError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AnalyticsEvent.AnalyticsEventError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10005494C()
{
  result = qword_1005A8CA8[0];
  if (!qword_1005A8CA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005A8CA8);
  }

  return result;
}

uint64_t sub_1000549C0()
{
  v0 = type metadata accessor for TypeDisplayRepresentation();
  sub_10004F154(v0, qword_1005DFAA0);
  sub_10000A6F0(v0, qword_1005DFAA0);
  return TypeDisplayRepresentation.init(stringLiteral:)();
}

uint64_t sub_100054A24(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = *(a2 + 16);
  *v4 = v2;
  v4[1] = sub_100054AD4;

  return sub_100055210(v5);
}

uint64_t sub_100054AD4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_100054C28(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = *(a2 + 16);
  *v4 = v2;
  v4[1] = sub_1000552EC;

  return sub_100055298(v5);
}

uint64_t sub_100054CD4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_100003690;

  return EnumerableEntityQuery.suggestedEntities()(a1, a2, WitnessTable);
}

uint64_t sub_100054DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100054E60;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100054E60(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100054FDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_10000368C;

  return EntityQuery.results()(a1, a2, WitnessTable);
}

uint64_t sub_1000550A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100003690;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_100055194()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFAB8);
  sub_10000A6F0(v0, qword_1005DFAB8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100055230()
{
  v1 = static Array._allocateUninitialized(_:)();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t _s12PersonEntityVMa(uint64_t a1)
{
  result = qword_1005A8DF0;
  if (!qword_1005A8DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100055428()
{
  v0 = type metadata accessor for TypeDisplayRepresentation();
  sub_10004F154(v0, qword_1005DFAD0);
  v1 = sub_10000A6F0(v0, qword_1005DFAD0);
  if (qword_1005A7EA0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFAA0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000555B4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1000555C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1005A7EB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10000A6F0(v2, qword_1005DFAD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000556AC(uint64_t a1)
{
  v2 = sub_100055748(&qword_1005A8D58, &unk_1004C1E40);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100055748(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s12PersonEntityVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005578C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for DisplayRepresentation();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100055800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100003690;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000558C4(uint64_t a1)
{
  v2 = sub_100055748(&qword_1005A8D78, &unk_1004C2020);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100055954(uint64_t a1)
{
  result = type metadata accessor for DisplayRepresentation();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s20PersonLocationEntityVMa(uint64_t a1)
{
  result = qword_1005A8EE8;
  if (!qword_1005A8EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100055B04()
{
  v0 = type metadata accessor for TypeDisplayRepresentation();
  sub_10004F154(v0, qword_1005DFAE8);
  v1 = sub_10000A6F0(v0, qword_1005DFAE8);
  if (qword_1005A7EA0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFAA0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100055C68@<X0>(uint64_t a1@<X8>)
{
  if (qword_1005A7EB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10000A6F0(v2, qword_1005DFAE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100055D54(uint64_t a1)
{
  v2 = sub_100055DF0(&qword_1005A8E50, &unk_1004C2098);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100055DF0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s20PersonLocationEntityVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100055E34(uint64_t a1)
{
  v2 = sub_100055DF0(&qword_1005A8E70, &unk_1004C2278);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100055ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for MotionActivityState();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v32 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v36 = v30 - v7;
  v8 = type metadata accessor for LocationType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v35 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004B564(&qword_1005A8F20, &qword_1004C9BE0);
  __chkstk_darwin(v11 - 8);
  v13 = v30 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 72);
  v30[1] = *(a1 + 80);
  v18 = type metadata accessor for SecureLocation(0);
  v19 = *(v15 + 16);
  v20 = a1 + v18[13];
  v33 = v17;
  v19(v17, v20, v14);
  v21 = type metadata accessor for PlaceMark();
  v22 = *(*(v21 - 8) + 56);
  v34 = v13;
  v22(v13, 1, 1, v21);
  v23 = *(a1 + v18[15]);
  if (v23 > 7)
  {
    if (v23 != 8)
    {
      v24 = v35;
      v25 = v32;
      if (v23 == 100)
      {
        v26 = &enum case for LocationType.legacy(_:);
        goto LABEL_12;
      }

LABEL_8:
      v26 = &enum case for LocationType.proactiveOrShallow(_:);
      goto LABEL_12;
    }

    v26 = &enum case for LocationType.satellite(_:);
LABEL_11:
    v24 = v35;
    v25 = v32;
    goto LABEL_12;
  }

  if (v23 == 6)
  {
    v26 = &enum case for LocationType.proactiveOrShallow(_:);
    goto LABEL_11;
  }

  v24 = v35;
  v25 = v32;
  if (v23 != 7)
  {
    goto LABEL_8;
  }

  v26 = &enum case for LocationType.live(_:);
LABEL_12:
  (*(v9 + 104))(v24, *v26, v8);
  (*(v4 + 16))(v25, a1 + v18[14], v3);
  v27 = (*(v4 + 88))(v25, v3);
  if (v27 == enum case for MotionActivityState.unknown(_:) || v27 == enum case for MotionActivityState.stationary(_:) || v27 == enum case for MotionActivityState.walking(_:) || v27 == enum case for MotionActivityState.running(_:) || v27 == enum case for MotionActivityState.cycling(_:))
  {
    (*(v4 + 104))(v36, v27, v3);
  }

  else
  {
    v29 = *(v4 + 104);
    if (v27 == enum case for MotionActivityState.automotive(_:))
    {
      v29(v36, v27, v3);
    }

    else
    {
      (v29)(v36);
      (*(v4 + 8))(v25, v3);
    }
  }

  Location.init(latitude:longitude:horizontalAccuracy:verticalAccuracy:speed:altitude:floor:timestamp:placemark:locationType:motionActivityState:customLabel:)();
  return sub_1000563DC(a1);
}

uint64_t sub_1000563DC(uint64_t a1)
{
  v2 = type metadata accessor for SecureLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100056438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Fence.DaysOfWeek();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v37 - v9;
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = *(v5 + 16);
  v38 = a1;
  v13(&v37 - v11, a1, v4);
  static Fence.DaysOfWeek.sunday.getter();
  sub_100058840(&qword_1005A8F28, &protocol conformance descriptor for Fence.DaysOfWeek);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v5 + 8);
  v14(v10, v4);
  if (a1)
  {
    v14(v12, v4);
    v15 = Calendar.weekdaySymbols.getter();
    if (*(v15 + 16))
    {
      v16 = *(v15 + 32);
LABEL_22:

      return v16;
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v37 = a2;
  static Fence.DaysOfWeek.monday.getter();
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14(v10, v4);
  if (v17)
  {
    v14(v12, v4);
    v18 = Calendar.weekdaySymbols.getter();
    if (*(v18 + 16) >= 2uLL)
    {
      v16 = *(v18 + 48);
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  static Fence.DaysOfWeek.tuesday.getter();
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14(v10, v4);
  if (v19)
  {
    v14(v12, v4);
    v20 = Calendar.weekdaySymbols.getter();
    if (*(v20 + 16) >= 3uLL)
    {
      v16 = *(v20 + 64);
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  static Fence.DaysOfWeek.wednesday.getter();
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14(v10, v4);
  if (v21)
  {
    v14(v12, v4);
    v22 = Calendar.weekdaySymbols.getter();
    if (*(v22 + 16) >= 4uLL)
    {
      v16 = *(v22 + 80);
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  static Fence.DaysOfWeek.thursday.getter();
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14(v10, v4);
  if (v23)
  {
    v14(v12, v4);
    v24 = Calendar.weekdaySymbols.getter();
    if (*(v24 + 16) >= 5uLL)
    {
      v16 = *(v24 + 96);
      goto LABEL_22;
    }

    goto LABEL_33;
  }

  static Fence.DaysOfWeek.friday.getter();
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14(v10, v4);
  if (v25)
  {
    v14(v12, v4);
    v26 = Calendar.weekdaySymbols.getter();
    if (*(v26 + 16) >= 6uLL)
    {
      v16 = *(v26 + 112);
      goto LABEL_22;
    }

    goto LABEL_34;
  }

  static Fence.DaysOfWeek.saturday.getter();
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14(v10, v4);
  v14(v12, v4);
  if (v27)
  {
    v28 = Calendar.weekdaySymbols.getter();
    if (*(v28 + 16) >= 7uLL)
    {
      v16 = *(v28 + 128);
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  if (qword_1005A80E8 != -1)
  {
LABEL_36:
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000A6F0(v30, qword_1005DFF88);
  v31 = v39;
  v13(v39, v38, v4);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v34 = 136446466;
    *(v34 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004DE980, &v40);
    *(v34 + 12) = 258;
    v36 = Fence.DaysOfWeek.rawValue.getter();
    v14(v31, v4);
    *(v34 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s called with unrecognized weekday %{public}hhu", v34, 0xFu);
    sub_100004984(v35);
  }

  else
  {
    v14(v31, v4);
  }

  return 0;
}

void *sub_100056A28()
{
  v0 = type metadata accessor for Fence.DaysOfWeek();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Calendar.firstWeekday.getter();
  if (!__OFADD__(result, 6))
  {
    v5 = (result + 6) % 7;
    v12 = _swiftEmptyArrayStorage;
    v6 = 7;
    sub_100239310(0, 7, 0);
    v7 = v12;
    while (1)
    {
      v8 = v5 % 7;
      if (v5 % 7 > 2)
      {
        switch(v8)
        {
          case 3:
            static Fence.DaysOfWeek.wednesday.getter();
            break;
          case 4:
            static Fence.DaysOfWeek.thursday.getter();
            break;
          case 5:
            static Fence.DaysOfWeek.friday.getter();
            break;
          default:
            goto LABEL_14;
        }
      }

      else if (v8)
      {
        if (v8 == 1)
        {
          static Fence.DaysOfWeek.monday.getter();
          goto LABEL_17;
        }

        if (v8 != 2)
        {
LABEL_14:
          static Fence.DaysOfWeek.saturday.getter();
          goto LABEL_17;
        }

        static Fence.DaysOfWeek.tuesday.getter();
      }

      else
      {
        static Fence.DaysOfWeek.sunday.getter();
      }

LABEL_17:
      v12 = v7;
      v10 = v7[2];
      v9 = v7[3];
      if (v10 >= v9 >> 1)
      {
        sub_100239310((v9 > 1), v10 + 1, 1);
        v7 = v12;
      }

      v7[2] = v10 + 1;
      (*(v1 + 32))(v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v10, v3, v0);
      ++v5;
      if (!--v6)
      {
        return v7;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_100056C5C(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v18 = _swiftEmptyArrayStorage;
  sub_10002B3C0(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v7 = *(type metadata accessor for Fence.DaysOfWeek() - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    a1(v17, v8);
    if (v3)
    {
      break;
    }

    v11 = v17[0];
    v10 = v17[1];
    v18 = v5;
    v13 = v5[2];
    v12 = v5[3];
    if (v13 >= v12 >> 1)
    {
      sub_10002B3C0((v12 > 1), v13 + 1, 1);
      v5 = v18;
    }

    v5[2] = v13 + 1;
    v14 = &v5[2 * v13];
    v14[4] = v11;
    v14[5] = v10;
    v8 += v9;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void *sub_100056DB8(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = type metadata accessor for Friend();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v21 = _swiftEmptyArrayStorage;
  sub_100239354(0, v9, 0);
  v10 = v21;
  v16 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v12 = *i;
    v20[0] = *(i - 1);
    v20[1] = v12;

    v18(v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v21 = v10;
    v14 = v10[2];
    v13 = v10[3];
    if (v14 >= v13 >> 1)
    {
      sub_100239354((v13 > 1), v14 + 1, 1);
      v10 = v21;
    }

    v10[2] = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v17);
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

void *sub_100056F84()
{
  v0 = type metadata accessor for Fence.DaysOfWeek();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004B564(&qword_1005A8F30, &qword_1004C2320);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v29 = (&v25 - v6);
  v7 = sub_10004B564(&qword_1005A8F38, &qword_1004C2328);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  result = sub_100056A28();
  v14 = 0;
  v15 = 0;
  v30 = v1;
  v31 = result;
  v16 = result[2];
  v28 = v1 + 16;
  v35 = (v5 + 56);
  v36 = v16;
  v33 = (v1 + 32);
  v34 = (v5 + 48);
  v32 = (v1 + 8);
  v17 = 1;
  while (2)
  {
    while (2)
    {
      v27 = v17;
      v26 = v14;
      do
      {
        if (v15 == v36)
        {
          v18 = 1;
          v15 = v36;
        }

        else
        {
          if ((v15 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

          if (v15 >= v31[2])
          {
            goto LABEL_15;
          }

          v20 = v29;
          v19 = v30;
          v21 = v31 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v15;
          v22 = *(v4 + 48);
          *v29 = v15;
          (*(v19 + 16))(v20 + v22, v21, v0);
          sub_1000176A8(v20, v10, &qword_1005A8F30, &qword_1004C2320);
          v18 = 0;
          ++v15;
        }

        (*v35)(v10, v18, 1, v4);
        sub_1000176A8(v10, v12, &qword_1005A8F38, &qword_1004C2328);
        v23 = (*v34)(v12, 1, v4);
        if (v23 == 1)
        {
          goto LABEL_13;
        }

        v14 = *v12;
        (*v33)(v3, &v12[*(v4 + 48)], v0);
        sub_100058840(&unk_1005AE600, &protocol conformance descriptor for Fence.DaysOfWeek);
        v24 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        result = (*v32)(v3, v0);
      }

      while ((v24 & 1) == 0);
      v17 = 0;
      if (v27)
      {
        continue;
      }

      break;
    }

    if (!__OFADD__(v26, 1))
    {
      v17 = 0;
      if (v14 == v26 + 1)
      {
        continue;
      }

LABEL_13:

      return (v23 == 1);
    }

    break;
  }

LABEL_16:
  __break(1u);
  return result;
}

void *sub_10005733C()
{
  v1 = v0;
  v2 = type metadata accessor for Fence.DaysOfWeek();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v28 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = v21 - v7;
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = sub_100056A28();
  v27 = *(v3 + 16);
  result = v27(v10, v1, v2);
  v26 = v11[2];
  if (v26)
  {
    v13 = 0;
    v21[0] = v3 + 8;
    v25 = (v3 + 32);
    v14 = _swiftEmptyArrayStorage;
    v23 = v10;
    v24 = v3;
    v21[1] = v3 + 16;
    v22 = v11;
    while (v13 < v11[2])
    {
      v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v16 = *(v3 + 72);
      v27(v8, v11 + v15 + v16 * v13, v2);
      sub_100058840(&unk_1005AE600, &protocol conformance descriptor for Fence.DaysOfWeek);
      if (dispatch thunk of SetAlgebra.isSuperset(of:)())
      {
        v17 = *v25;
        (*v25)(v28, v8, v2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100239310(0, v14[2] + 1, 1);
          v14 = v29;
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          sub_100239310((v19 > 1), v20 + 1, 1);
          v14 = v29;
        }

        v14[2] = v20 + 1;
        result = (v17)(v14 + v15 + v20 * v16, v28, v2);
        v10 = v23;
        v3 = v24;
        v11 = v22;
      }

      else
      {
        result = (*v21[0])(v8, v2);
      }

      if (v26 == ++v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
LABEL_13:
    (*(v3 + 8))(v10, v2);

    return v14;
  }

  return result;
}

unint64_t sub_100057620(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LocalizationUtility.Table();
  v5 = *(v4 - 8);
  v127 = v4;
  v128 = v5;
  __chkstk_darwin(v4);
  v126 = &v124[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Fence.DaysOfWeek();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v124[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v124[-v12];
  sub_100058840(&unk_1005AE600, &protocol conformance descriptor for Fence.DaysOfWeek);
  dispatch thunk of SetAlgebra.init()();
  sub_100058840(&qword_1005A8F28, &protocol conformance descriptor for Fence.DaysOfWeek);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v8 + 8);
  (v15)(v13, v7);
  if (v14)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000A6F0(v16, qword_1005DFF88);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_7;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v129[0] = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004DE8A0, v129);
    _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s called on an empty DaysOfWeek", v19, 0xCu);
    sub_100004984(v20);
    goto LABEL_6;
  }

  static Fence.DaysOfWeek.all.getter();
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  (v15)(v13, v7);
  if (v22)
  {
    v24 = v127;
    v23 = v128;
    v25 = v126;
    (*(v128 + 104))(v126, enum case for LocalizationUtility.Table.default(_:), v127);
    v26 = static LocalizationUtility.localizedString(key:table:)();
    (*(v23 + 8))(v25, v24);
    return v26;
  }

  v125 = sub_100056F84();
  v27 = sub_10005733C();
  __chkstk_darwin(v27);
  *&v124[-16] = a1;
  v28 = sub_100056C5C(sub_100058884, &v124[-32], v27);

  v29 = v28[2];
  if (v29 <= 3)
  {
    if (v29 != 1)
    {
      if (v29 != 2)
      {
        if (v29 == 3)
        {
          if ((v125 & 1) == 0)
          {
            v95 = v127;
            v94 = v128;
            v96 = v126;
            (*(v128 + 104))(v126, enum case for LocalizationUtility.Table.default(_:), v127);
            static LocalizationUtility.localizedString(key:table:)();
            (*(v94 + 8))(v96, v95);
            sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
            v33 = swift_allocObject();
            *(v33 + 16) = xmmword_1004C0BD0;
            *(v33 + 56) = &type metadata for String;
            result = sub_1000588B8();
            *(v33 + 64) = result;
            v97 = v28[2];
            if (v97)
            {
              v98 = result;
              result = v28[5];
              *(v33 + 32) = v28[4];
              *(v33 + 40) = result;
              *(v33 + 96) = &type metadata for String;
              *(v33 + 104) = v98;
              if (v97 != 1)
              {
                v99 = v28[7];
                *(v33 + 72) = v28[6];
                *(v33 + 80) = v99;
                *(v33 + 136) = &type metadata for String;
                *(v33 + 144) = v98;
                if (v97 >= 3)
                {
                  v38 = v28[8];
                  v37 = v28[9];
                  goto LABEL_53;
                }

                goto LABEL_96;
              }

              goto LABEL_90;
            }

            goto LABEL_80;
          }

          v31 = v127;
          v30 = v128;
          v32 = v126;
          (*(v128 + 104))(v126, enum case for LocalizationUtility.Table.default(_:), v127);
          static LocalizationUtility.localizedString(key:table:)();
          (*(v30 + 8))(v32, v31);
          sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_1004C0BD0;
          *(v33 + 56) = &type metadata for String;
          result = sub_1000588B8();
          *(v33 + 64) = result;
          v34 = v28[2];
          if (v34)
          {
            v35 = v28[5];
            *(v33 + 32) = v28[4];
            *(v33 + 40) = v35;
            *(v33 + 96) = &type metadata for String;
            *(v33 + 104) = result;
            if (v34 >= 3)
            {
              v36 = v28[9];
              *(v33 + 72) = v28[8];
              *(v33 + 80) = v36;
              *(v33 + 136) = &type metadata for String;
              *(v33 + 144) = result;
              v38 = v28[6];
              v37 = v28[7];
LABEL_53:

              *(v33 + 112) = v38;
              *(v33 + 120) = v37;
              goto LABEL_72;
            }

            goto LABEL_88;
          }

          goto LABEL_78;
        }

LABEL_31:

        if (qword_1005A80E8 == -1)
        {
LABEL_32:
          v64 = type metadata accessor for Logger();
          sub_10000A6F0(v64, qword_1005DFF88);
          (*(v8 + 16))(v11, v2, v7);
          v17 = Logger.logObject.getter();
          v65 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v17, v65))
          {
            (v15)(v11, v7);
            goto LABEL_7;
          }

          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v129[0] = v67;
          *v66 = 136446466;
          *(v66 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004DE8A0, v129);
          *(v66 + 12) = 258;
          v68 = Fence.DaysOfWeek.rawValue.getter();
          (v15)(v11, v7);
          *(v66 + 14) = v68;
          _os_log_impl(&_mh_execute_header, v17, v65, "%{public}s called on an invalid DaysOfWeek: %{public}hhu", v66, 0xFu);
          sub_100004984(v67);
LABEL_6:

LABEL_7:

          return 0;
        }

LABEL_75:
        swift_once();
        goto LABEL_32;
      }

      if (v125)
      {
        v70 = v127;
        v69 = v128;
        v71 = v126;
        (*(v128 + 104))(v126, enum case for LocalizationUtility.Table.default(_:), v127);
        static LocalizationUtility.localizedString(key:table:)();
        (*(v69 + 8))(v71, v70);
        sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_1004C2310;
        *(v72 + 56) = &type metadata for String;
        result = sub_1000588B8();
        *(v72 + 64) = result;
        v73 = v28[2];
        if (!v73)
        {
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        v74 = result;
        v75 = v28[5];
        *(v72 + 32) = v28[4];
        *(v72 + 40) = v75;
        *(v72 + 96) = &type metadata for String;
        *(v72 + 104) = v74;
        if (v73 == 1)
        {
          __break(1u);
LABEL_38:
          if (v125)
          {
            v77 = v127;
            v76 = v128;
            v78 = v126;
            (*(v128 + 104))(v126, enum case for LocalizationUtility.Table.default(_:), v127);
            static LocalizationUtility.localizedString(key:table:)();
            (*(v76 + 8))(v78, v77);
            sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
            v79 = swift_allocObject();
            *(v79 + 16) = xmmword_1004C0BC0;
            *(v79 + 56) = &type metadata for String;
            result = sub_1000588B8();
            *(v79 + 64) = result;
            v80 = v28[2];
            if (!v80)
            {
LABEL_83:
              __break(1u);
              goto LABEL_84;
            }

            v81 = v28[5];
            *(v79 + 32) = v28[4];
            *(v79 + 40) = v81;
            *(v79 + 96) = &type metadata for String;
            *(v79 + 104) = result;
            if (v80 < 5)
            {
LABEL_92:
              __break(1u);
              goto LABEL_93;
            }

            v82 = v28[13];
            *(v79 + 72) = v28[12];
            *(v79 + 80) = v82;
            *(v79 + 136) = &type metadata for String;
            *(v79 + 144) = result;
            v83 = v28[7];
            *(v79 + 112) = v28[6];
            *(v79 + 120) = v83;
            *(v79 + 176) = &type metadata for String;
            *(v79 + 184) = result;
            v84 = v28[9];
            *(v79 + 152) = v28[8];
            *(v79 + 160) = v84;
            *(v79 + 216) = &type metadata for String;
            *(v79 + 224) = result;
            v86 = v28[10];
            v85 = v28[11];
          }

          else
          {
            v117 = v127;
            v116 = v128;
            v118 = v126;
            (*(v128 + 104))(v126, enum case for LocalizationUtility.Table.default(_:), v127);
            static LocalizationUtility.localizedString(key:table:)();
            (*(v116 + 8))(v118, v117);
            sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
            v79 = swift_allocObject();
            *(v79 + 16) = xmmword_1004C0BC0;
            *(v79 + 56) = &type metadata for String;
            result = sub_1000588B8();
            *(v79 + 64) = result;
            v119 = v28[2];
            if (!v119)
            {
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

            v120 = result;
            result = v28[5];
            *(v79 + 32) = v28[4];
            *(v79 + 40) = result;
            *(v79 + 96) = &type metadata for String;
            *(v79 + 104) = v120;
            if (v119 == 1)
            {
LABEL_94:
              __break(1u);
              goto LABEL_95;
            }

            v121 = v28[7];
            *(v79 + 72) = v28[6];
            *(v79 + 80) = v121;
            *(v79 + 136) = &type metadata for String;
            *(v79 + 144) = v120;
            if (v119 < 3)
            {
LABEL_98:
              __break(1u);
              goto LABEL_99;
            }

            v122 = v28[9];
            *(v79 + 112) = v28[8];
            *(v79 + 120) = v122;
            *(v79 + 176) = &type metadata for String;
            *(v79 + 184) = v120;
            if (v119 == 3)
            {
LABEL_101:
              __break(1u);
              goto LABEL_102;
            }

            v123 = v28[11];
            *(v79 + 152) = v28[10];
            *(v79 + 160) = v123;
            *(v79 + 216) = &type metadata for String;
            *(v79 + 224) = v120;
            if (v119 < 5)
            {
LABEL_103:
              __break(1u);
              goto LABEL_104;
            }

            v86 = v28[12];
            v85 = v28[13];
          }

          *(v79 + 192) = v86;
          *(v79 + 200) = v85;
          goto LABEL_72;
        }
      }

      else
      {
        v110 = v127;
        v109 = v128;
        v111 = v126;
        (*(v128 + 104))(v126, enum case for LocalizationUtility.Table.default(_:), v127);
        static LocalizationUtility.localizedString(key:table:)();
        (*(v109 + 8))(v111, v110);
        sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_1004C2310;
        *(v72 + 56) = &type metadata for String;
        result = sub_1000588B8();
        *(v72 + 64) = result;
        v112 = v28[2];
        if (!v112)
        {
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v113 = result;
        result = v28[5];
        *(v72 + 32) = v28[4];
        *(v72 + 40) = result;
        *(v72 + 96) = &type metadata for String;
        *(v72 + 104) = v113;
        if (v112 == 1)
        {
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }
      }

      v115 = v28[6];
      v114 = v28[7];

      *(v72 + 72) = v115;
      *(v72 + 80) = v114;
      goto LABEL_72;
    }

    v8 = v127;
    v51 = v128;
    v7 = v126;
    (*(v128 + 104))(v126, enum case for LocalizationUtility.Table.default(_:), v127);
    static LocalizationUtility.localizedString(key:table:)();
    (*(v51 + 8))(v7, v8);
    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1004C1900;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_1000588B8();
    if (!v28[2])
    {
      __break(1u);
      goto LABEL_75;
    }

    v53 = v28[4];
    v52 = v28[5];

    *(v15 + 32) = v53;
    *(v15 + 40) = v52;
LABEL_72:
    v26 = String.init(format:arguments:)();

    return v26;
  }

  if (v29 == 4)
  {
    if (v125)
    {
      v55 = v127;
      v54 = v128;
      v56 = v126;
      (*(v128 + 104))(v126, enum case for LocalizationUtility.Table.default(_:), v127);
      static LocalizationUtility.localizedString(key:table:)();
      (*(v54 + 8))(v56, v55);
      sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1004C0BB0;
      *(v57 + 56) = &type metadata for String;
      result = sub_1000588B8();
      *(v57 + 64) = result;
      v58 = v28[2];
      if (v58)
      {
        v59 = v28[5];
        *(v57 + 32) = v28[4];
        *(v57 + 40) = v59;
        *(v57 + 96) = &type metadata for String;
        *(v57 + 104) = result;
        if (v58 < 4)
        {
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v60 = v28[11];
        *(v57 + 72) = v28[10];
        *(v57 + 80) = v60;
        *(v57 + 136) = &type metadata for String;
        *(v57 + 144) = result;
        v61 = v28[7];
        *(v57 + 112) = v28[6];
        *(v57 + 120) = v61;
        *(v57 + 176) = &type metadata for String;
        *(v57 + 184) = result;
        v63 = v28[8];
        v62 = v28[9];
        goto LABEL_47;
      }

      __break(1u);
    }

    else
    {
      v88 = v127;
      v87 = v128;
      v89 = v126;
      (*(v128 + 104))(v126, enum case for LocalizationUtility.Table.default(_:), v127);
      static LocalizationUtility.localizedString(key:table:)();
      (*(v87 + 8))(v89, v88);
      sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1004C0BB0;
      *(v57 + 56) = &type metadata for String;
      result = sub_1000588B8();
      *(v57 + 64) = result;
      v90 = v28[2];
      if (v90)
      {
        v91 = result;
        result = v28[5];
        *(v57 + 32) = v28[4];
        *(v57 + 40) = result;
        *(v57 + 96) = &type metadata for String;
        *(v57 + 104) = v91;
        if (v90 == 1)
        {
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        v92 = v28[7];
        *(v57 + 72) = v28[6];
        *(v57 + 80) = v92;
        *(v57 + 136) = &type metadata for String;
        *(v57 + 144) = v91;
        if (v90 < 3)
        {
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v93 = v28[9];
        *(v57 + 112) = v28[8];
        *(v57 + 120) = v93;
        *(v57 + 176) = &type metadata for String;
        *(v57 + 184) = v91;
        if (v90 == 3)
        {
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        v63 = v28[10];
        v62 = v28[11];
LABEL_47:

        *(v57 + 152) = v63;
        *(v57 + 160) = v62;
        goto LABEL_72;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v29 == 5)
  {
    goto LABEL_38;
  }

  if (v29 != 6)
  {
    goto LABEL_31;
  }

  if (v125)
  {
    v40 = v127;
    v39 = v128;
    v41 = v126;
    (*(v128 + 104))(v126, enum case for LocalizationUtility.Table.default(_:), v127);
    static LocalizationUtility.localizedString(key:table:)();
    (*(v39 + 8))(v41, v40);
    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1004C2300;
    *(v42 + 56) = &type metadata for String;
    result = sub_1000588B8();
    *(v42 + 64) = result;
    v43 = v28[2];
    if (!v43)
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v44 = v28[5];
    *(v42 + 32) = v28[4];
    *(v42 + 40) = v44;
    *(v42 + 96) = &type metadata for String;
    *(v42 + 104) = result;
    if (v43 < 6)
    {
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v45 = v28[15];
    *(v42 + 72) = v28[14];
    *(v42 + 80) = v45;
    *(v42 + 136) = &type metadata for String;
    *(v42 + 144) = result;
    v46 = v28[7];
    *(v42 + 112) = v28[6];
    *(v42 + 120) = v46;
    *(v42 + 176) = &type metadata for String;
    *(v42 + 184) = result;
    v47 = v28[9];
    *(v42 + 152) = v28[8];
    *(v42 + 160) = v47;
    *(v42 + 216) = &type metadata for String;
    *(v42 + 224) = result;
    v48 = v28[11];
    *(v42 + 192) = v28[10];
    *(v42 + 200) = v48;
    *(v42 + 256) = &type metadata for String;
    *(v42 + 264) = result;
    v50 = v28[12];
    v49 = v28[13];
LABEL_61:

    *(v42 + 232) = v50;
    *(v42 + 240) = v49;
    goto LABEL_72;
  }

  v101 = v127;
  v100 = v128;
  v102 = v126;
  (*(v128 + 104))(v126, enum case for LocalizationUtility.Table.default(_:), v127);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v100 + 8))(v102, v101);
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1004C2300;
  *(v42 + 56) = &type metadata for String;
  result = sub_1000588B8();
  *(v42 + 64) = result;
  v103 = v28[2];
  if (!v103)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v104 = result;
  result = v28[5];
  *(v42 + 32) = v28[4];
  *(v42 + 40) = result;
  *(v42 + 96) = &type metadata for String;
  *(v42 + 104) = v104;
  if (v103 == 1)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v105 = v28[7];
  *(v42 + 72) = v28[6];
  *(v42 + 80) = v105;
  *(v42 + 136) = &type metadata for String;
  *(v42 + 144) = v104;
  if (v103 < 3)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v106 = v28[9];
  *(v42 + 112) = v28[8];
  *(v42 + 120) = v106;
  *(v42 + 176) = &type metadata for String;
  *(v42 + 184) = v104;
  if (v103 == 3)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v107 = v28[11];
  *(v42 + 152) = v28[10];
  *(v42 + 160) = v107;
  *(v42 + 216) = &type metadata for String;
  *(v42 + 224) = v104;
  if (v103 < 5)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v108 = v28[13];
  *(v42 + 192) = v28[12];
  *(v42 + 200) = v108;
  *(v42 + 256) = &type metadata for String;
  *(v42 + 264) = v104;
  if (v103 != 5)
  {
    v50 = v28[14];
    v49 = v28[15];
    goto LABEL_61;
  }

LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_100058840(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Fence.DaysOfWeek();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100058884@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100056438(a1, *(v2 + 16));
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_1000588B8()
{
  result = qword_1005ABE90;
  if (!qword_1005ABE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABE90);
  }

  return result;
}

void sub_10005890C()
{
  v0 = Handle.siblingIdentifiers.getter();
  v1 = v0 + 40;
  v2 = -*(v0 + 16);
  v3 = -1;
  while (1)
  {
    if (v2 + v3 == -1)
    {
LABEL_9:

      return;
    }

    if (++v3 >= *(v0 + 16))
    {
      break;
    }

    v6 = static Handle.isPhoneNumber(_:)();
    v7 = String._bridgeToObjectiveC()();
    if (v6)
    {
      v8 = CFPhoneNumberCreate();

      if (!CMFItemCreateWithPhoneNumber())
      {
        goto LABEL_12;
      }
    }

    else
    {
      v4 = CMFItemCreateWithEmailAddress();

      if (!v4)
      {
        goto LABEL_11;
      }
    }

    v1 += 16;
    IsItemBlocked = CMFBlockListIsItemBlocked();

    swift_unknownObjectRelease();
    if (IsItemBlocked)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_100058A48()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFB00);
  sub_10000A6F0(v0, qword_1005DFB00);
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_100058ACC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_100058B14()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

uint64_t sub_100058B58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005A59C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100058B84(uint64_t a1)
{
  v2 = sub_10005A4E0();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100058BC0(uint64_t a1)
{
  v2 = sub_10005A4E0();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100058BFC()
{
  v1[2] = v0;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100058CBC, v0, 0);
}

uint64_t sub_100058CBC()
{
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CommandManager: run", v4, 2u);
  }

  if (static SystemInfo.underTest.getter())
  {

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 48) = v7;
    *v7 = v0;
    v7[1] = sub_100058E50;

    return daemon.getter();
  }
}

uint64_t sub_100058E50(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  v6 = sub_10005A430(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10005A3CC();
  *v3 = v9;
  v3[1] = sub_100059008;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100059008(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[2];
    v6 = sub_100059288;
  }

  else
  {

    v4[10] = a1;
    v4[11] = sub_10005A430(&qword_1005A90F0, type metadata accessor for CommandManager, &unk_1004C2790);
    v6 = sub_10005917C;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10005917C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_100458A94(v0[11], v1);
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10005921C, v4, 0);
}

uint64_t sub_10005921C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100059288()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000592F8()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFB18);
  v1 = sub_10000A6F0(v0, qword_1005DFB18);
  if (qword_1005A7EC0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFB00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000593C0()
{
  *(v1 + 1744) = v0;
  v2 = swift_task_alloc();
  *(v1 + 1752) = v2;
  *v2 = v1;
  v2[1] = sub_100059454;

  return daemon.getter();
}

uint64_t sub_100059454(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 1760) = a1;

  v3 = swift_task_alloc();
  *(v2 + 1768) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_10005A430(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10005A430(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_100059630;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100059630(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[222] = a1;
  v3[223] = v1;

  if (v1)
  {
    v5 = v3[218];

    return _swift_task_switch(sub_100059B4C, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[224] = v6;
    *v6 = v4;
    v6[1] = sub_1000597C0;

    return sub_100245BB8((v3 + 122));
  }
}

uint64_t sub_1000597C0()
{
  v1 = *(*v0 + 1776);

  return _swift_task_switch(sub_1000598D0, v1, 0);
}

uint64_t sub_1000598D0()
{
  memcpy((v0 + 496), (v0 + 976), 0x1E0uLL);
  if (sub_100033B90(v0 + 496) == 1)
  {
    v1 = *(v0 + 1744);
    v2 = sub_100059AC4;
  }

  else
  {
    v3 = *(v0 + 1744);
    memcpy((v0 + 16), (v0 + 496), 0x1E0uLL);
    sub_100002CE0(v0 + 976, &qword_1005A90D8, &unk_1004C6AB0);
    v4 = *(v0 + 336);
    *(v0 + 1680) = *(v0 + 352);
    v5 = *(v0 + 384);
    *(v0 + 1696) = *(v0 + 368);
    *(v0 + 1712) = v5;
    *(v0 + 1728) = *(v0 + 400);
    v6 = *(v0 + 272);
    *(v0 + 1616) = *(v0 + 288);
    v7 = *(v0 + 320);
    *(v0 + 1632) = *(v0 + 304);
    *(v0 + 1648) = v7;
    *(v0 + 1664) = v4;
    *(v0 + 1600) = v6;
    v2 = sub_1000599CC;
    v1 = v3;
  }

  return _swift_task_switch(v2, v1, 0);
}

uint64_t sub_1000599CC()
{
  *(v0 + 1536) = *(v0 + 1680);
  *(v0 + 1552) = *(v0 + 1696);
  *(v0 + 1568) = *(v0 + 1712);
  *(v0 + 1584) = *(v0 + 1728);
  *(v0 + 1472) = *(v0 + 1616);
  *(v0 + 1488) = *(v0 + 1632);
  *(v0 + 1504) = *(v0 + 1648);
  *(v0 + 1520) = *(v0 + 1664);
  *(v0 + 1456) = *(v0 + 1600);
  sub_10005A3B0(v0 + 1456);
  v1 = static Duration.seconds(_:)();
  v3 = v2;

  v4 = *(v0 + 8);

  return v4(v1, v3);
}

uint64_t sub_100059AC4(uint64_t a1)
{
  v2 = static Duration.seconds(_:)();
  v4 = v3;

  v5 = *(v1 + 8);

  return v5(v2, v4);
}

uint64_t sub_100059B4C()
{

  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "ERROR: %{public}@", v4, 0xCu);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7(5000000000000000000, 0);
}

uint64_t sub_100059D00()
{

  v1 = OBJC_IVAR____TtC13findmylocated14CommandManager_lastRefreshDate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13findmylocated14CommandManager_coleasedRefreshPriority;
  Priority = type metadata accessor for LocatePriority();
  (*(*(Priority - 8) + 8))(v0 + v3, Priority);
  v5 = OBJC_IVAR____TtC13findmylocated14CommandManager_refreshScheduled;
  refreshed = type metadata accessor for LegacyRefreshSchedule();
  (*(*(refreshed - 8) + 8))(v0 + v5, refreshed);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100059E28(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LocatePriority();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for LegacyRefreshSchedule();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_100059F5C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for CommandManager(0);
  *v4 = v2;
  v4[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_10005A008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CommandManager(0);
  *v8 = v4;
  v8[1] = sub_10000368C;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_10005A0D0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for CommandManager(0);
  *v4 = v2;
  v4[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_10005A17C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for CommandManager(0);
  *v4 = v2;
  v4[1] = sub_10000368C;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_10005A228()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_100058BFC();
}

uint64_t sub_10005A2B4()
{
  type metadata accessor for CommandManager(0);
  sub_10005A430(&qword_1005A90C8, type metadata accessor for CommandManager, &unk_1004C23F8);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_10005A3B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10005A3CC()
{
  result = qword_1005A90E8;
  if (!qword_1005A90E8)
  {
    sub_10004B610(&qword_1005A90E0, &qword_1004C2490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A90E8);
  }

  return result;
}

uint64_t sub_10005A430(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10005A48C()
{
  result = qword_1005A90F8;
  if (!qword_1005A90F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A90F8);
  }

  return result;
}

unint64_t sub_10005A4E0()
{
  result = qword_1005A9100;
  if (!qword_1005A9100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9100);
  }

  return result;
}

unint64_t sub_10005A548()
{
  result = qword_1005A9108;
  if (!qword_1005A9108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9108);
  }

  return result;
}

uint64_t sub_10005A59C(uint64_t a1)
{
  if ((a1 - 1) >= 0xD)
  {
    return 13;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_10005A5B8(uint64_t a1, uint64_t a2)
{
  v3[645] = v2;
  v3[644] = a2;
  v3[643] = a1;
  v4 = type metadata accessor for ClientOrigin();
  v3[646] = v4;
  v3[647] = *(v4 - 8);
  v3[648] = swift_task_alloc();
  type metadata accessor for RequestOrigin();
  v3[649] = swift_task_alloc();
  v5 = type metadata accessor for Fence();
  v3[650] = v5;
  v3[651] = *(v5 - 8);
  v3[652] = swift_task_alloc();
  v3[653] = type metadata accessor for UpdateFenceEndpoint(0);
  v3[654] = swift_task_alloc();
  sub_10004B564(&qword_1005A9110, &qword_1004C25F8);
  v3[655] = swift_task_alloc();
  v6 = type metadata accessor for Account();
  v3[656] = v6;
  v3[657] = *(v6 - 8);
  v3[658] = swift_task_alloc();
  v3[659] = swift_task_alloc();
  v3[660] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[661] = v7;
  *v7 = v3;
  v7[1] = sub_10005A814;

  return daemon.getter();
}

uint64_t sub_10005A814(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[662] = a1;

  v3 = swift_task_alloc();
  v2[663] = v3;
  v4 = type metadata accessor for Daemon();
  v2[664] = v4;
  v5 = type metadata accessor for AccountService(0);
  v6 = sub_100008F30(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[665] = v6;
  v7 = sub_100008F30(&qword_1005A9118, type metadata accessor for AccountService, &unk_1004DCC10);
  *v3 = v9;
  v3[1] = sub_10005A9F4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10005A9F4(uint64_t a1)
{
  v3 = *v2;
  v3[666] = a1;
  v3[667] = v1;

  if (v1)
  {
    v4 = v3[645];

    return _swift_task_switch(sub_10005C338, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[668] = v5;
    *v5 = v3;
    v5[1] = sub_10005AB6C;

    return daemon.getter();
  }
}

uint64_t sub_10005AB6C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 5352) = a1;

  v5 = swift_task_alloc();
  *(v3 + 5360) = v5;
  v6 = type metadata accessor for DataManager(0);
  v7 = sub_100008F30(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v5 = v4;
  v5[1] = sub_10005AD20;
  v8 = *(v2 + 5320);
  v9 = *(v2 + 5312);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10005AD20(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 5160);
  *(v3 + 5368) = a1;
  *(v3 + 5376) = v1;

  if (v1)
  {
    v5 = sub_10005C410;
  }

  else
  {

    v5 = sub_10005AE64;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10005AE64()
{
  v1 = v0[651];
  v2 = v0[650];
  v3 = v0[644];
  v4 = v0[643];
  v5 = *(v1 + 16);
  v0[673] = v5;
  v0[674] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v4, v3, v2);
  v6 = swift_task_alloc();
  v0[675] = v6;
  *v6 = v0;
  v6[1] = sub_10005AF2C;
  v7 = v0[655];

  return sub_10000EB24(v7);
}

uint64_t sub_10005AF2C()
{
  v1 = *(*v0 + 5160);

  return _swift_task_switch(sub_10005B03C, v1, 0);
}

uint64_t sub_10005B03C()
{
  v1 = v0[657];
  v2 = v0[656];
  v3 = v0[655];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[651];
    v5 = v0[650];
    v6 = v0[643];
    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    sub_10005CF04();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();

    (*(v4 + 8))(v6, v5);

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v1 + 32))(v0[660], v3, v2);
    v10 = swift_task_alloc();
    v0[676] = v10;
    *v10 = v0;
    v10[1] = sub_10005B25C;

    return sub_100008CC0();
  }
}

uint64_t sub_10005B25C(uint64_t a1)
{
  v2 = *(*v1 + 5160);
  *(*v1 + 5416) = a1;

  return _swift_task_switch(sub_10005B374, v2, 0);
}

uint64_t sub_10005B374()
{
  v22 = v0[673];
  v1 = v0[660];
  v2 = v0[659];
  v16 = v0[677];
  v17 = v0[658];
  v3 = v0[657];
  v4 = v0[656];
  v18 = v0[652];
  v19 = v0[650];
  v5 = v0[647];
  v20 = v0[648];
  v21 = v0[646];
  v14 = v0[644];
  v15 = *(v3 + 16);
  v15(v2, v1, v4);
  sub_10005CD88();
  v6 = URLComponents.path.modify();
  v7._countAndFlagsBits = 0x476574616470752FLL;
  v7._object = 0xEF65636E65466F65;
  String.append(_:)(v7);
  v6(v0 + 639, 0);
  v8 = *(v3 + 8);
  v0[678] = v8;
  v0[679] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v4);
  sub_100247800(v16, v0 + 613);

  v15(v17, v1, v4);
  v22(v18, v14, v19);
  (*(v5 + 104))(v20, enum case for ClientOrigin.other(_:), v21);
  RequestOrigin.init(_:)();
  v9 = swift_task_alloc();
  v0[680] = v9;
  *v9 = v0;
  v9[1] = sub_10005B5C4;
  v10 = v0[658];
  v11 = v0[652];
  v12 = v0[649];

  return sub_100148D3C(v10, v11, (v0 + 613), v12);
}

uint64_t sub_10005B5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[681] = a1;
  v6[682] = a2;
  v6[683] = a3;
  v6[684] = v3;

  v7 = v5[645];
  if (v3)
  {
    v8 = sub_10005BA30;
  }

  else
  {
    v8 = sub_10005B704;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10005B704()
{
  v1 = v0[683];
  v2 = v0[682];
  v3 = v0[681];
  v4 = v0[654];
  v0[627] = v0[653];
  v0[628] = sub_100008F30(&qword_1005A9128, type metadata accessor for UpdateFenceEndpoint, &unk_1004C6E94);
  v5 = sub_10000331C(v0 + 624);
  sub_10005CFB4(v4, v5);
  v0[632] = &type metadata for UpdateFenceRequest;
  v0[633] = sub_10005D018();
  v0[629] = v3;
  v0[630] = v2;
  v0[631] = v1;

  sub_10002CF44(v2, v1);
  Account.dsid.getter();
  Account.appToken.getter();
  v0[637] = type metadata accessor for BasicCredential();
  v0[638] = &protocol witness table for BasicCredential;
  sub_10000331C(v0 + 634);
  BasicCredential.init(username:password:)();
  v6 = swift_task_alloc();
  v0[685] = v6;
  *v6 = v0;
  v6[1] = sub_10005B8B8;

  return sub_1001D7B78((v0 + 2), (v0 + 624), (v0 + 629), (v0 + 634));
}

uint64_t sub_10005B8B8()
{
  v2 = *v1;
  *(*v1 + 5488) = v0;

  if (v0)
  {
    v3 = v2[645];
    sub_100002CE0((v2 + 634), &qword_1005A9138, &qword_1004C2600);
    v4 = sub_10005C4F4;
  }

  else
  {
    v3 = v2[645];
    sub_100002CE0((v2 + 634), &qword_1005A9138, &qword_1004C2600);
    sub_100004984(v2 + 629);
    sub_100004984(v2 + 624);
    v4 = sub_10005BB68;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10005BA30()
{
  v1 = v0[678];
  v2 = v0[660];
  v3 = v0[656];
  v4 = v0[654];
  v5 = v0[651];
  v6 = v0[650];
  v7 = v0[643];

  sub_10005CF58(v4);
  v1(v2, v3);
  (*(v5 + 8))(v7, v6);

  v8 = v0[1];

  return v8();
}

void *sub_10005BB68()
{
  v1 = *(v0 + 296);
  if (v1 != 1)
  {
    sub_10005D06C(v0 + 16);
    type metadata accessor for FenceServiceClient.Failure(0);
    sub_100008F30(&qword_1005A9140, type metadata accessor for FenceServiceClient.Failure, &unk_1004D25C8);
    swift_allocError();
    v19 = 0;
    if (v1 != 21)
    {
      v19 = qword_1004C2610[v1];
    }

    v64 = *(v0 + 5464);
    v20 = v1 == 21;
    v21 = *(v0 + 5456);
    v70 = *(v0 + 5424);
    v22 = *(v0 + 5280);
    v62 = *(v0 + 5248);
    v23 = *(v0 + 5232);
    v24 = *(v0 + 5208);
    v68 = *(v0 + 5200);
    v66 = *(v0 + 5144);
    *v18 = v19;
    *(v18 + 8) = v20;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_10001A794(v21, v64);
    sub_10005CF58(v23);
    v70(v22, v62);
    (*(v24 + 8))(v66, v68);

    v25 = *(v0 + 8);
    goto LABEL_26;
  }

  v2 = sub_100171168();
  sub_10005D06C(v0 + 16);
  if (!v2)
  {
    v30 = *(v0 + 5464);
    v31 = *(v0 + 5456);

    v28 = v31;
    v29 = v30;
LABEL_23:
    sub_10001A794(v28, v29);
    goto LABEL_25;
  }

  v39 = v2[2];
  if (!v39)
  {
    v32 = *(v0 + 5464);
    v33 = *(v0 + 5456);

    sub_10001A794(v33, v32);

LABEL_25:
    v34 = *(v0 + 5424);
    v35 = *(v0 + 5280);
    v36 = *(v0 + 5248);
    sub_10005CF58(*(v0 + 5232));
    v34(v35, v36);

    v25 = *(v0 + 8);
LABEL_26:

    return v25();
  }

  __src = (v0 + 2568);
  __dst = (v0 + 3152);
  memcpy((v0 + 1400), v2 + 4, 0x241uLL);
  v3 = *(v0 + 1968);
  v4 = *(v0 + 1976);
  v69 = *(v0 + 1936);
  v71 = *(v0 + 1952);
  v65 = *(v0 + 1904);
  v67 = *(v0 + 1920);
  v5 = *(v0 + 1896);
  v61 = *(v0 + 1864);
  v63 = *(v0 + 1880);
  v60 = *(v0 + 1857);
  v6 = *(v0 + 1856);
  v58 = *(v0 + 1832);
  v59 = *(v0 + 1848);
  v56 = *(v0 + 1816);
  v57 = *(v0 + 1840);
  v7 = *(v0 + 1824);
  v54 = *(v0 + 1784);
  v55 = *(v0 + 1800);
  v53 = *(v0 + 1776);
  v51 = *(v0 + 1768);
  v52 = *(v0 + 1760);
  v49 = *(v0 + 1496);
  v50 = *(v0 + 1512);
  v47 = *(v0 + 1464);
  v48 = *(v0 + 1480);
  v45 = *(v0 + 1432);
  v46 = *(v0 + 1448);
  v43 = *(v0 + 1400);
  v44 = *(v0 + 1416);
  sub_10005D0C0(v0 + 1400, v0 + 1984);
  v8 = v7;
  v9 = v6;
  v85 = *(v0 + 1720);
  v86 = *(v0 + 1736);
  v87 = *(v0 + 1752);
  v81 = *(v0 + 1656);
  v82 = *(v0 + 1672);
  v83 = *(v0 + 1688);
  v84 = *(v0 + 1704);
  v77 = *(v0 + 1592);
  v78 = *(v0 + 1608);
  v79 = *(v0 + 1624);
  v80 = *(v0 + 1640);
  v73 = *(v0 + 1528);
  v74 = *(v0 + 1544);
  v10 = 1;
  v75 = *(v0 + 1560);
  v76 = *(v0 + 1576);
LABEL_5:
  if (v4)
  {
    v11 = 0;
  }

  else
  {
    v11 = v3;
  }

  v37 = v11;
  v12 = 584 * v10 + 32;
  v41 = v9 & 1;
  v42 = v8 & 1;
  v40 = v5 & 1;
  while (1)
  {
    *__src = v43;
    *(v0 + 2584) = v44;
    *(v0 + 2600) = v45;
    *(v0 + 2616) = v46;
    *(v0 + 2632) = v47;
    *(v0 + 2648) = v48;
    *(v0 + 2664) = v49;
    *(v0 + 2680) = v50;
    *(v0 + 2888) = v85;
    *(v0 + 2904) = v86;
    *(v0 + 2920) = v87;
    *(v0 + 2824) = v81;
    *(v0 + 2840) = v82;
    *(v0 + 2856) = v83;
    *(v0 + 2872) = v84;
    *(v0 + 2760) = v77;
    *(v0 + 2776) = v78;
    *(v0 + 2792) = v79;
    *(v0 + 2808) = v80;
    *(v0 + 2696) = v73;
    *(v0 + 2712) = v74;
    *(v0 + 2728) = v75;
    *(v0 + 2744) = v76;
    *(v0 + 2928) = v52;
    *(v0 + 2936) = v51;
    *(v0 + 2944) = v53;
    *(v0 + 2952) = v54;
    *(v0 + 2968) = v55;
    *(v0 + 2984) = v56;
    *(v0 + 2992) = v42;
    *(v0 + 3000) = v58;
    *(v0 + 3008) = v57;
    *(v0 + 3016) = v59;
    *(v0 + 3024) = v41;
    *(v0 + 3025) = v60;
    *(v0 + 3048) = v63;
    *(v0 + 3032) = v61;
    *(v0 + 3064) = v40;
    *(v0 + 3088) = v67;
    *(v0 + 3072) = v65;
    *(v0 + 3120) = v71;
    *(v0 + 3104) = v69;
    *(v0 + 3136) = v3;
    *(v0 + 3144) = v4 & 1;
    result = memcpy((v0 + 816), __src, 0x241uLL);
    if (v39 == v10)
    {
      v26 = *(v0 + 5464);
      v27 = *(v0 + 5456);

      sub_10005C670((v0 + 816));

      sub_10005D11C(__src);

      v28 = v27;
      v29 = v26;
      goto LABEL_23;
    }

    if (v10 >= v2[2])
    {
      break;
    }

    v14 = v2;
    memcpy(__dst, v2 + v12, 0x241uLL);
    v15 = *(v0 + 3720);
    v16 = *(v0 + 3728);
    if (v16)
    {
      if (v37 < 0)
      {
        v17 = v0 + 3736;
LABEL_17:
        sub_10005D0C0(__dst, v17);
        sub_10005D11C(__src);
        v69 = *(v0 + 3688);
        v71 = *(v0 + 3704);
        v65 = *(v0 + 3656);
        v67 = *(v0 + 3672);
        v61 = *(v0 + 3616);
        v63 = *(v0 + 3632);
        v60 = *(v0 + 3609);
        v59 = *(v0 + 3600);
        v9 = *(v0 + 3608);
        v58 = *(v0 + 3584);
        v57 = *(v0 + 3592);
        v56 = *(v0 + 3568);
        v8 = *(v0 + 3576);
        v54 = *(v0 + 3536);
        v55 = *(v0 + 3552);
        v53 = *(v0 + 3528);
        v52 = *(v0 + 3512);
        v51 = *(v0 + 3520);
        v49 = *(v0 + 3248);
        v50 = *(v0 + 3264);
        v47 = *(v0 + 3216);
        v48 = *(v0 + 3232);
        v45 = *(v0 + 3184);
        v46 = *(v0 + 3200);
        v43 = *__dst;
        v44 = *(v0 + 3168);
        v85 = *(v0 + 3472);
        v86 = *(v0 + 3488);
        v87 = *(v0 + 3504);
        v81 = *(v0 + 3408);
        v82 = *(v0 + 3424);
        v83 = *(v0 + 3440);
        v84 = *(v0 + 3456);
        v77 = *(v0 + 3344);
        v78 = *(v0 + 3360);
        v79 = *(v0 + 3376);
        v80 = *(v0 + 3392);
        v73 = *(v0 + 3280);
        v74 = *(v0 + 3296);
        ++v10;
        v3 = v15;
        v4 = v16;
        v75 = *(v0 + 3312);
        v76 = *(v0 + 3328);
        v2 = v14;
        v5 = *(v0 + 3648);
        goto LABEL_5;
      }
    }

    else if (v37 < v15)
    {
      v17 = v0 + 4320;
      goto LABEL_17;
    }

    v12 += 584;
    ++v10;
    v2 = v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005C338()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005C410()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005C4F4()
{
  v1 = v0[683];
  v2 = v0[682];
  v11 = v0[678];
  v3 = v0[660];
  v4 = v0[656];
  v5 = v0[654];
  v6 = v0[651];
  v10 = v0[650];
  v7 = v0[643];

  sub_10001A794(v2, v1);
  sub_10005CF58(v5);
  v11(v3, v4);
  (*(v6 + 8))(v7, v10);
  sub_100004984(v0 + 629);
  sub_100004984(v0 + 624);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10005C670(uint64_t *a1)
{
  v2 = type metadata accessor for PlaceMark();
  __chkstk_darwin(v2 - 8);
  v53 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004B564(&qword_1005A9148, &qword_1004D2370);
  __chkstk_darwin(v4 - 8);
  v52 = &v46 - v5;
  v54 = type metadata accessor for Fence.AcceptanceStatus();
  v51 = *(v54 - 8);
  __chkstk_darwin(v54);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for UUID();
  v48 = *(v49 - 8);
  v7 = __chkstk_darwin(v49);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v46 - v10;
  v12 = sub_10004B564(&qword_1005A9150, &qword_1004C2608);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v15 = type metadata accessor for Fence.ID();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v46 - v20;

  Fence.ID.init(string:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100002CE0(v14, &qword_1005A9150, &qword_1004C2608);
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    Fence.id.getter();
    Fence.ID.uuid.getter();
    v47 = *(v16 + 8);
    v47(v19, v15);
    static UUID.nilUUID.getter();
    v22 = static UUID.== infix(_:_:)();
    v23 = *(v48 + 8);
    v24 = v49;
    v23(v9, v49);
    v23(v11, v24);
    if (v22)
    {
      Fence.update(id:)();
    }

    v47(v21, v15);
  }

  v25 = v52;
  v26 = a1[49];
  if (v26)
  {
    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = a1[48] & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {

      Fence.label.setter();
    }
  }

  v28 = *a1;
  v29 = a1[1];

  sub_100249050(v28, v29, v25);
  v30 = v51;
  v31 = v54;
  if ((*(v51 + 48))(v25, 1, v54) == 1)
  {
    sub_100002CE0(v25, &qword_1005A9148, &qword_1004D2370);
  }

  else
  {
    v32 = v50;
    (*(v30 + 32))(v50, v25, v31);
    Fence.update(acceptanceStatus:)();
    (*(v30 + 8))(v32, v31);
  }

  v56 = *(a1 + 10);
  v60 = *(a1 + 27);
  v61 = *(a1 + 29);
  v62 = *(a1 + 31);
  v58 = *(a1 + 23);
  v59 = *(a1 + 25);
  v63 = *(a1 + 33);
  v33 = *(a1 + 41);
  v71 = *(a1 + 43);
  v34 = a1[16];
  v35 = a1[17];
  v36 = a1[18];
  v37 = a1[19];
  v38 = a1[22];
  v39 = a1[35];
  v40 = a1[36];
  v42 = a1[37];
  v41 = a1[38];
  v44 = a1[39];
  v43 = a1[40];
  v70 = v33;
  v55[0] = v34;
  v55[1] = v35;
  v52 = v36;
  v55[2] = v36;
  v55[3] = v37;
  v57 = v38;
  v54 = v39;
  v64 = v39;
  v65 = v40;
  v66 = v42;
  v67 = v41;
  v68 = v44;
  v69 = v43;
  if (sub_10004AFD4(v55) == 1)
  {
    v54 = 0;
  }

  else
  {
    v51 = v59;
  }

  PlaceMark.init(locality:administrativeArea:country:stateCode:streetAddress:streetName:formattedAddressLines:formattedAddressLinesWithoutCountry:coarseAddress:poiAddress:smallAddress:mediumAddress:largeAddress:)();
  return Fence.placemark.setter();
}

uint64_t sub_10005CD88()
{
  URLComponents.init()();
  URLComponents.scheme.setter();
  Account.appHostName.getter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v11 = 47;
  v12 = 0xE100000000000000;
  v0._countAndFlagsBits = Account.dsid.getter();
  String.append(_:)(v0);

  v1 = v11;
  v2 = v12;
  v3 = URLComponents.path.modify();
  v4._countAndFlagsBits = v1;
  v4._object = v2;
  String.append(_:)(v4);

  v3(&v11, 0);
  v11 = 47;
  v12 = 0xE100000000000000;
  v5._countAndFlagsBits = static SystemInfo.uniqueDeviceID.getter();
  String.append(_:)(v5);

  v6 = v11;
  v7 = v12;
  v8 = URLComponents.path.modify();
  v9._countAndFlagsBits = v6;
  v9._object = v7;
  String.append(_:)(v9);

  return v8(&v11, 0);
}

unint64_t sub_10005CF04()
{
  result = qword_1005A9120;
  if (!qword_1005A9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9120);
  }

  return result;
}

uint64_t sub_10005CF58(uint64_t a1)
{
  updated = type metadata accessor for UpdateFenceEndpoint(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_10005CFB4(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateFenceEndpoint(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

unint64_t sub_10005D018()
{
  result = qword_1005A9130;
  if (!qword_1005A9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9130);
  }

  return result;
}

uint64_t sub_10005D170(uint64_t a1, uint64_t a2)
{
  v3[323] = v2;
  v3[322] = a2;
  v3[321] = a1;
  v4 = type metadata accessor for FriendshipRequestStatus();
  v3[324] = v4;
  v3[325] = *(v4 - 8);
  v3[326] = swift_task_alloc();
  v3[327] = swift_task_alloc();
  v5 = type metadata accessor for FriendshipRequestResult();
  v3[328] = v5;
  v3[329] = *(v5 - 8);
  v3[330] = swift_task_alloc();
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v3[331] = swift_task_alloc();
  v6 = type metadata accessor for FriendshipRequest();
  v3[332] = v6;
  v7 = *(v6 - 8);
  v3[333] = v7;
  v3[334] = *(v7 + 64);
  v3[335] = swift_task_alloc();
  v3[336] = swift_task_alloc();
  v3[337] = swift_task_alloc();
  v3[338] = type metadata accessor for FriendshipEndpoint(0);
  v3[339] = swift_task_alloc();
  v8 = type metadata accessor for Handle();
  v3[340] = v8;
  v3[341] = *(v8 - 8);
  v3[342] = swift_task_alloc();
  v3[343] = swift_task_alloc();
  v3[344] = swift_task_alloc();
  v3[345] = swift_task_alloc();
  v3[346] = sub_10004B564(&qword_1005A91C0, &qword_1004C2700);
  v3[347] = swift_task_alloc();
  v3[348] = swift_task_alloc();
  v9 = type metadata accessor for FriendshipRequestType();
  v3[349] = v9;
  v3[350] = *(v9 - 8);
  v3[351] = swift_task_alloc();
  v3[352] = swift_task_alloc();
  v3[353] = swift_task_alloc();
  sub_10004B564(&qword_1005A9110, &qword_1004C25F8);
  v3[354] = swift_task_alloc();
  v10 = type metadata accessor for Account();
  v3[355] = v10;
  v3[356] = *(v10 - 8);
  v3[357] = swift_task_alloc();
  v3[358] = swift_task_alloc();
  v3[359] = swift_task_alloc();
  v11 = swift_task_alloc();
  v3[360] = v11;
  *v11 = v3;
  v11[1] = sub_10005D59C;

  return daemon.getter();
}

uint64_t sub_10005D59C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[361] = a1;

  v3 = swift_task_alloc();
  v2[362] = v3;
  v4 = type metadata accessor for Daemon();
  v2[363] = v4;
  v5 = type metadata accessor for AccountService(0);
  v6 = sub_100008F78(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[364] = v6;
  v7 = sub_100008F78(&qword_1005A9118, type metadata accessor for AccountService, &unk_1004DCC10);
  *v3 = v9;
  v3[1] = sub_10005D77C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10005D77C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[365] = a1;
  v3[366] = v1;

  if (v1)
  {
    v5 = v3[323];

    return _swift_task_switch(sub_10005FD40, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[367] = v6;
    *v6 = v4;
    v6[1] = sub_10005D90C;
    v7 = v3[354];

    return sub_10000EB24(v7);
  }
}

uint64_t sub_10005D90C()
{
  v1 = *(*v0 + 2584);

  return _swift_task_switch(sub_10005DA1C, v1, 0);
}

uint64_t sub_10005DA1C()
{
  v93 = v0;
  v1 = v0[356];
  v2 = v0[355];
  v3 = v0[354];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    if (qword_1005A7EC8 == -1)
    {
LABEL_3:
      v4 = type metadata accessor for Logger();
      sub_10000A6F0(v4, qword_1005DFB18);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Missing primary account to send friendship offer!", v7, 2u);
      }

      sub_10005A48C();
      swift_allocError();
      *v8 = 0;
      swift_willThrow();

LABEL_12:

      v20 = v0[1];

      return v20();
    }

LABEL_34:
    swift_once();
    goto LABEL_3;
  }

  v9 = v0[350];
  v10 = v0[349];
  v11 = v0[348];
  (*(v1 + 32))(v0[359], v3, v2);
  FriendshipRequest.requestType.getter();
  if ((*(v9 + 48))(v11, 1, v10) == 1)
  {
    sub_100002CE0(v0[348], &qword_1005A91C0, &qword_1004C2700);
    if (qword_1005A7EC8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005DFB18);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Missing request Type (invite or offer)", v15, 2u);
    }

    v16 = v0[359];
    v17 = v0[356];
    v18 = v0[355];

    sub_10005A48C();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    (*(v17 + 8))(v16, v18);
    goto LABEL_12;
  }

  (*(v0[350] + 32))(v0[353], v0[348], v0[349]);
  v22 = FriendshipRequest.toHandles.getter();
  v23 = v22;
  v88 = *(v22 + 16);
  if (v88)
  {
    v24 = 0;
    v25 = v0[333];
    v81 = (v25 + 16);
    v84 = v0[341];
    v77 = (v25 + 8);
    v79 = (v84 + 8);
    v86 = v22;
    while (v24 < *(v23 + 16))
    {
      v90 = v24;
      v31 = *(v84 + 16);
      v31(v0[345], v23 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v24, v0[340]);
      if (qword_1005A7EC8 != -1)
      {
        swift_once();
      }

      v32 = v0[345];
      v33 = v0[344];
      v34 = v0[340];
      v35 = v0[337];
      v36 = v0[332];
      v37 = v0[322];
      v38 = type metadata accessor for Logger();
      sub_10000A6F0(v38, qword_1005DFB18);
      (*v81)(v35, v37, v36);
      v31(v33, v32, v34);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = v0[344];
        v75 = v0[340];
        v42 = v0[337];
        v43 = v0[332];
        v44 = swift_slowAlloc();
        v92[0] = swift_slowAlloc();
        *v44 = 136446723;
        FriendshipRequest.requestType.getter();
        v45 = String.init<A>(describing:)();
        v47 = v46;
        (*v77)(v42, v43);
        v48 = sub_10000D01C(v45, v47, v92);

        *(v44 + 4) = v48;
        *(v44 + 12) = 2160;
        *(v44 + 14) = 1752392040;
        *(v44 + 22) = 2081;
        v49 = Handle.identifier.getter();
        v51 = v50;
        v30 = *v79;
        (*v79)(v41, v75);
        v52 = sub_10000D01C(v49, v51, v92);

        *(v44 + 24) = v52;
        _os_log_impl(&_mh_execute_header, v39, v40, "sendFriendshipOffer type: %{public}s\nto handle: %{private,mask.hash}s", v44, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v26 = v0[344];
        v27 = v0[340];
        v28 = v0[337];
        v29 = v0[332];

        v30 = *v79;
        (*v79)(v26, v27);
        (*v77)(v28, v29);
      }

      v24 = v90 + 1;
      v30(v0[345], v0[340]);
      v23 = v86;
      if (v88 == v90 + 1)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

LABEL_24:
  v53 = v0[359];
  v54 = v0[358];
  v82 = v0[357];
  v55 = v0[356];
  v56 = v0[355];
  v76 = v56;
  v78 = v0[353];
  v57 = v0[352];
  v91 = v0[351];
  v58 = v0[350];
  v59 = v0[349];
  v74 = v59;
  v73 = v0[339];
  v89 = v0[336];
  v80 = v0[333];
  v83 = v0[322];
  v85 = v0[332];

  v87 = *(v55 + 16);
  v87(v54, v53, v56);
  (*(v58 + 104))(v57, enum case for FriendshipRequestType.offer(_:), v59);
  v60 = static FriendshipRequestType.== infix(_:_:)();
  v61 = *(v58 + 8);
  v0[368] = v61;
  v0[369] = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v61(v57, v59);
  sub_10006CDC8(v73);
  v62 = (v60 & 1) == 0;
  if (v60)
  {
    v63 = 0x636F4C726566666FLL;
  }

  else
  {
    v63 = 0x657469766E69;
  }

  if (v62)
  {
    v64 = 0xE600000000000000;
  }

  else
  {
    v64 = 0xED00006E6F697461;
  }

  v65 = URLComponents.path.modify();
  v66._countAndFlagsBits = v63;
  v66._object = v64;
  String.append(_:)(v66);

  v65(v0 + 317, 0);
  v67 = *(v55 + 8);
  v0[370] = v67;
  v0[371] = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v67(v54, v76);
  v87(v82, v53, v76);
  v68 = *(v80 + 16);
  v0[372] = v68;
  v0[373] = (v80 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v68(v89, v83, v85);
  (*(v58 + 16))(v91, v78, v74);
  v69 = swift_task_alloc();
  v0[374] = v69;
  *v69 = v0;
  v69[1] = sub_10005E484;
  v70 = v0[357];
  v71 = v0[351];
  v72 = v0[336];

  return sub_100152934(v70, v72, v71);
}

uint64_t sub_10005E484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[375] = a1;
  v5[376] = a2;
  v5[377] = a3;
  v5[378] = v3;

  if (v3)
  {
    v6 = v5[323];

    return _swift_task_switch(sub_10005E904, v6, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v5[379] = v7;
    *v7 = v5;
    v7[1] = sub_10005E5FC;

    return daemon.getter();
  }
}

uint64_t sub_10005E5FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 3040) = a1;

  v5 = swift_task_alloc();
  *(v3 + 3048) = v5;
  v6 = type metadata accessor for DataManager(0);
  v7 = sub_100008F78(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v5 = v4;
  v5[1] = sub_10005E7B0;
  v8 = *(v2 + 2912);
  v9 = *(v2 + 2904);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10005E7B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 3056) = a1;
  *(v4 + 3064) = v1;

  v5 = *(v3 + 2584);

  if (v1)
  {
    v6 = sub_10005FEDC;
  }

  else
  {
    v6 = sub_10005EAF8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10005E904()
{
  v1 = v0[370];
  v2 = v0[368];
  v3 = v0[359];
  v4 = v0[355];
  v5 = v0[353];
  v6 = v0[349];
  v7 = v0[339];

  sub_10006DE80(v7, type metadata accessor for FriendshipEndpoint);
  v2(v5, v6);
  v1(v3, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10005EAF8()
{
  v1 = v0[377];
  v2 = v0[376];
  v3 = v0[375];
  v4 = v0[339];
  v0[305] = v0[338];
  v0[306] = sub_100008F78(&qword_1005A9160, type metadata accessor for FriendshipEndpoint, &unk_1004C73D4);
  v5 = sub_10000331C(v0 + 302);
  sub_10006DEE0(v4, v5, type metadata accessor for FriendshipEndpoint);
  v0[310] = &type metadata for FriendshipServerRequest;
  v0[311] = sub_10006DC3C();
  v0[307] = v3;
  v0[308] = v2;
  v0[309] = v1;

  sub_10002CF44(v2, v1);
  Account.dsid.getter();
  Account.appToken.getter();
  v0[315] = type metadata accessor for BasicCredential();
  v0[316] = &protocol witness table for BasicCredential;
  sub_10000331C(v0 + 312);
  BasicCredential.init(username:password:)();
  v6 = swift_task_alloc();
  v0[384] = v6;
  *v6 = v0;
  v6[1] = sub_10005ECAC;

  return sub_1001D7B78((v0 + 2), (v0 + 302), (v0 + 307), (v0 + 312));
}

uint64_t sub_10005ECAC()
{
  v2 = *v1;
  *(*v1 + 3080) = v0;

  if (v0)
  {
    v3 = v2[323];
    sub_100002CE0((v2 + 312), &qword_1005A9138, &qword_1004C2600);
    v4 = sub_100060104;
  }

  else
  {
    v3 = v2[323];
    sub_100002CE0((v2 + 312), &qword_1005A9138, &qword_1004C2600);
    sub_100004984(v2 + 307);
    sub_100004984(v2 + 302);
    v4 = sub_10005EE08;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10005EE08()
{
  v131 = v0;
  if (qword_1005A7EC8 != -1)
  {
LABEL_49:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB18);
  sub_10006DAC8((v0 + 2), (v0 + 102));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  sub_10005D06C((v0 + 2));
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v130[0] = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004DEB20, v130);
    *(v4 + 12) = 2080;
    sub_10006DAC8((v0 + 2), (v0 + 202));
    v5 = sub_100176040();
    v7 = v6;
    sub_10005D06C((v0 + 2));
    v8 = sub_10000D01C(v5, v7, v130);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "CommandManager %{public}s response: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[30];
  if (v9 == 1)
  {
    sub_10005D06C((v0 + 2));
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v130[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004DEB20, v130);
      _os_log_impl(&_mh_execute_header, v10, v11, "CommandManager %{public}s with invalidResponse", v12, 0xCu);
      sub_100004984(v13);
    }

    v14 = v0[377];
    v15 = v0[376];
    v123 = v0[370];
    v116 = v0[359];
    v109 = v0[368];
    v112 = v0[355];
    v16 = v0[353];
    v17 = v0[349];
    v18 = v0[339];
    sub_10006DC90();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    sub_10001A794(v15, v14);
    sub_10006DE80(v18, type metadata accessor for FriendshipEndpoint);
    v109(v16, v17);
    v123(v116, v112);

    v20 = v0[1];
    goto LABEL_40;
  }

  v21 = FriendshipRequest.toHandles.getter();
  v113 = *(v21 + 16);
  v129 = v0;
  if (!v113)
  {
LABEL_36:
    v114 = v0[372];
    v69 = v129[335];
    v105 = v129[334];
    v70 = v129[333];
    v71 = v129[332];
    v72 = v129[331];
    v107 = v72;
    v121 = v129[329];
    v125 = v129[328];
    v127 = v129[330];
    v73 = v129[323];
    v74 = v129[322];
    v118 = v129[321];

    v75 = type metadata accessor for TaskPriority();
    (*(*(v75 - 8) + 56))(v72, 1, 1, v75);
    v114(v69, v74, v71);
    v76 = sub_100008F78(&qword_1005A90C0, type metadata accessor for CommandManager, &unk_1004C2458);
    v77 = (*(v70 + 80) + 40) & ~*(v70 + 80);
    v78 = swift_allocObject();
    *(v78 + 2) = v73;
    *(v78 + 3) = v76;
    *(v78 + 4) = v73;
    (*(v70 + 32))(&v78[v77], v69, v71);
    memcpy(&v78[(v105 + v77 + 7) & 0xFFFFFFFFFFFFFFF8], v129 + 2, 0x320uLL);
    swift_retain_n();
    sub_1001D7F30(0, 0, v107, &unk_1004C2710, v78);

    v114(v69, v74, v71);
    v79 = v129;
    FriendshipRequestResult.init(request:result:requestIds:)();
    (*(v121 + 16))(v127, v118, v125);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    v82 = os_log_type_enabled(v80, v81);
    v115 = v129[377];
    v108 = v129[376];
    v83 = v129[370];
    v126 = v129[368];
    v84 = v129[359];
    v128 = v129[355];
    v122 = v129[353];
    v119 = v129[349];
    v111 = v129[339];
    v85 = v129[330];
    v86 = v129[329];
    v87 = v129[328];
    if (v82)
    {
      v88 = swift_slowAlloc();
      v130[0] = swift_slowAlloc();
      *v88 = 136446466;
      *(v88 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004DEB20, v130);
      *(v88 + 12) = 2080;
      sub_100008F78(&qword_1005A91D8, &type metadata accessor for FriendshipRequestResult, &protocol conformance descriptor for FriendshipRequestResult);
      v98 = v83;
      v89 = dispatch thunk of CustomStringConvertible.description.getter();
      v91 = v90;
      (*(v86 + 8))(v85, v87);
      v92 = sub_10000D01C(v89, v91, v130);

      *(v88 + 14) = v92;
      _os_log_impl(&_mh_execute_header, v80, v81, "CommandManager %{public}s result: %s", v88, 0x16u);
      swift_arrayDestroy();
      v79 = v129;

      sub_10001A794(v108, v115);
      sub_10006DE80(v111, type metadata accessor for FriendshipEndpoint);
      v126(v122, v119);
      v98(v84, v128);
    }

    else
    {

      sub_10001A794(v108, v115);
      (*(v86 + 8))(v85, v87);
      sub_10006DE80(v111, type metadata accessor for FriendshipEndpoint);
      v126(v122, v119);
      v83(v84, v128);
    }

    v20 = v79[1];
LABEL_40:

    return v20();
  }

  v22 = 0;
  v23 = v0[341];
  v24 = v0[325];
  v106 = v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v95 = enum case for FriendshipRequestStatus.pending(_:);
  v104 = (v24 + 104);
  v94 = enum case for FriendshipRequestStatus.success(_:);
  v96 = enum case for FriendshipRequestError.commandFailed(_:);
  v99 = enum case for FriendshipRequestStatus.failure(_:);
  v97 = enum case for FriendshipRequestError.invalidResponse(_:);
  v124 = (v24 + 32);
  v110 = v23;
  v102 = (v23 + 8);
  v103 = v24;
  v25 = _swiftEmptyDictionarySingleton;
  v100 = v21;
  v101 = v9;
  while (1)
  {
    if (v22 >= *(v21 + 16))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v27 = v0[343];
    v28 = v0[342];
    v29 = v0[340];
    v30 = *(v110 + 72);
    v31 = *(v110 + 16);
    v31(v27, v106 + v30 * v22, v29);
    v31(v28, v27, v29);
    if (!v9)
    {
      goto LABEL_23;
    }

    v32 = Handle.identifier.getter();
    if (!*(v9 + 16))
    {

LABEL_23:
      v41 = v0[327];
      v42 = type metadata accessor for FriendshipRequestError();
      (*(*(v42 - 8) + 104))(v41, v97, v42);
LABEL_24:
      v43 = v99;
      goto LABEL_25;
    }

    v34 = sub_1000110D8(v32, v33);
    v36 = v35;

    if ((v36 & 1) == 0)
    {
      goto LABEL_23;
    }

    v37 = *(*(v9 + 56) + v34);
    if ((v37 - 3) < 0x12 || v37 == 0)
    {
      v39 = v0[327];
      v40 = type metadata accessor for FriendshipRequestError();
      (*(*(v40 - 8) + 104))(v39, v96, v40);
      goto LABEL_24;
    }

    v43 = v95;
    if (v37 == 1)
    {
      v43 = v94;
    }

LABEL_25:
    v44 = v0[342];
    v45 = v0[327];
    v46 = v0[326];
    v47 = v0[324];
    (*v104)(v45, v43, v47);
    v48 = *v124;
    (*v124)(v46, v45, v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v130[0] = v25;
    v50 = sub_1001FD93C(v44);
    v52 = v25[2];
    v53 = (v51 & 1) == 0;
    v54 = __OFADD__(v52, v53);
    v55 = v52 + v53;
    if (v54)
    {
      goto LABEL_47;
    }

    v56 = v51;
    v120 = v31;
    v117 = v30;
    if (v25[3] < v55)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v68 = v50;
      sub_100202BBC();
      v50 = v68;
      v25 = v130[0];
    }

LABEL_31:
    v59 = v0[343];
    v60 = v0[342];
    v61 = v0[340];
    v62 = v0[326];
    v63 = v0[324];
    if (v56)
    {
      (*(v103 + 40))(v25[7] + *(v103 + 72) * v50, v0[326], v0[324]);
      v26 = *v102;
      (*v102)(v60, v61);
      v26(v59, v61);
    }

    else
    {
      v25[(v50 >> 6) + 8] |= 1 << v50;
      v64 = v50;
      v120(v25[6] + v50 * v117, v60, v61);
      v48(v25[7] + *(v103 + 72) * v64, v62, v63);
      v65 = *v102;
      (*v102)(v60, v61);
      v65(v59, v61);
      v66 = v25[2];
      v54 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v54)
      {
        goto LABEL_48;
      }

      v25[2] = v67;
    }

    ++v22;
    v21 = v100;
    v9 = v101;
    v0 = v129;
    if (v113 == v22)
    {
      goto LABEL_36;
    }
  }

  v57 = v0[342];
  sub_10022C98C(v55, isUniquelyReferenced_nonNull_native);
  v25 = v130[0];
  v50 = sub_1001FD93C(v57);
  if ((v56 & 1) == (v58 & 1))
  {
    goto LABEL_31;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_10005FD40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005FEDC()
{
  v1 = v0[377];
  v2 = v0[376];
  v11 = v0[370];
  v3 = v0[368];
  v4 = v0[359];
  v5 = v0[355];
  v6 = v0[353];
  v7 = v0[349];
  v8 = v0[339];

  sub_10001A794(v2, v1);
  sub_10006DE80(v8, type metadata accessor for FriendshipEndpoint);
  v3(v6, v7);
  v11(v4, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100060104()
{
  v1 = v0[377];
  v2 = v0[376];
  v11 = v0[370];
  v3 = v0[368];
  v10 = v0[359];
  v4 = v0[355];
  v5 = v0[353];
  v6 = v0[349];
  v7 = v0[339];

  sub_10001A794(v2, v1);
  sub_10006DE80(v7, type metadata accessor for FriendshipEndpoint);
  v3(v5, v6);
  v11(v10, v4);
  sub_100004984(v0 + 307);
  sub_100004984(v0 + 302);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10006034C(int a1, int a2, int a3, uint64_t a4, uint64_t a5, void *__src)
{
  v6[303] = a5;
  v6[302] = a4;
  memcpy(v6 + 2, __src, 0x320uLL);
  v8 = type metadata accessor for Date();
  v6[304] = v8;
  v6[305] = *(v8 - 8);
  v6[306] = swift_task_alloc();
  v6[307] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v6[308] = swift_task_alloc();

  return _swift_task_switch(sub_100060468, a4, 0);
}

uint64_t sub_100060468(uint64_t a1)
{
  v2 = v1[308];
  v3 = v1[305];
  v4 = v1[304];
  v5 = FriendshipRequest.toHandles.getter();
  v1[309] = v5;
  FriendshipRequest.endDate.getter();
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v6 = 2592000.0;
  }

  else
  {
    v7 = v1[307];
    v8 = v1[306];
    v9 = v1[305];
    v10 = v1[304];
    (*(v9 + 32))(v7, v1[308], v10);
    static Date.trustedNow.getter(v8);
    Date.timeIntervalSince(_:)();
    v6 = v11;
    v12 = *(v9 + 8);
    v12(v8, v10);
    v12(v7, v10);
  }

  memcpy(v1 + 202, v1 + 2, 0x320uLL);
  v13._countAndFlagsBits = (v1 + 202);
  DarwinNotification.init(name:value:)(v13, v14);
  memcpy(v1 + 102, v1 + 202, 0x320uLL);
  v15 = swift_task_alloc();
  v1[310] = v15;
  *v15 = v1;
  v15[1] = sub_10006060C;

  return sub_10006DFF8(v5, (v1 + 102), v6);
}

uint64_t sub_10006060C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100060778(uint64_t a1, uint64_t a2)
{
  v3[221] = v2;
  v3[220] = a2;
  v3[219] = a1;
  v4 = type metadata accessor for FriendshipRequest();
  v3[222] = v4;
  v3[223] = *(v4 - 8);
  v3[224] = swift_task_alloc();
  type metadata accessor for RequestOrigin();
  v3[225] = swift_task_alloc();
  sub_10004B564(&qword_1005A91E0, &qword_1004C2720);
  v3[226] = swift_task_alloc();
  v3[227] = swift_task_alloc();
  v5 = type metadata accessor for FriendshipRequestStatus();
  v3[228] = v5;
  v3[229] = *(v5 - 8);
  v3[230] = swift_task_alloc();
  v3[231] = swift_task_alloc();
  v3[232] = swift_task_alloc();
  sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  v3[233] = swift_task_alloc();
  v3[234] = swift_task_alloc();
  v6 = type metadata accessor for HandleType();
  v3[235] = v6;
  v3[236] = *(v6 - 8);
  v3[237] = swift_task_alloc();
  v3[238] = swift_task_alloc();
  v3[239] = swift_task_alloc();
  v3[240] = swift_task_alloc();
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v3[241] = swift_task_alloc();
  v3[242] = swift_task_alloc();
  v3[243] = swift_task_alloc();
  v7 = type metadata accessor for Handle();
  v3[244] = v7;
  v3[245] = *(v7 - 8);
  v3[246] = swift_task_alloc();
  v3[247] = swift_task_alloc();
  v3[248] = swift_task_alloc();
  v3[249] = swift_task_alloc();
  v3[250] = swift_task_alloc();
  v3[251] = swift_task_alloc();
  v3[252] = swift_task_alloc();
  v3[253] = swift_task_alloc();
  v3[254] = type metadata accessor for RespondToInviteEndpoint(0);
  v3[255] = swift_task_alloc();
  sub_10004B564(&qword_1005A91E8, &qword_1004D2F60);
  v3[256] = swift_task_alloc();
  v8 = type metadata accessor for FriendshipResponseToInviteType();
  v3[257] = v8;
  v3[258] = *(v8 - 8);
  v3[259] = swift_task_alloc();
  v3[260] = swift_task_alloc();
  sub_10004B564(&qword_1005A9110, &qword_1004C25F8);
  v3[261] = swift_task_alloc();
  v9 = type metadata accessor for Account();
  v3[262] = v9;
  v3[263] = *(v9 - 8);
  v3[264] = swift_task_alloc();
  v3[265] = swift_task_alloc();
  v3[266] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[267] = v10;
  *v10 = v3;
  v10[1] = sub_100060C94;

  return daemon.getter();
}

uint64_t sub_100060C94(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[268] = a1;

  v3 = swift_task_alloc();
  v2[269] = v3;
  v4 = type metadata accessor for Daemon();
  v2[270] = v4;
  v5 = type metadata accessor for AccountService(0);
  v6 = sub_100008F78(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[271] = v6;
  v7 = sub_100008F78(&qword_1005A9118, type metadata accessor for AccountService, &unk_1004DCC10);
  *v3 = v9;
  v3[1] = sub_100060E74;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100060E74(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[272] = a1;
  v3[273] = v1;

  if (v1)
  {
    v5 = v3[221];

    return _swift_task_switch(sub_100065F38, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[274] = v6;
    *v6 = v4;
    v6[1] = sub_100061004;
    v7 = v3[261];

    return sub_10000EB24(v7);
  }
}

uint64_t sub_100061004()
{
  v1 = *(*v0 + 1768);

  return _swift_task_switch(sub_100061114, v1, 0);
}

uint64_t sub_100061114()
{
  v1 = v0[263];
  v2 = v0[262];
  v3 = v0[261];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    if (qword_1005A7EC8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFB18);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing primary account to respond to invite request!", v7, 2u);
    }

    sub_10006D30C();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v1 + 32))(v0[266], v3, v2);
    v11 = swift_task_alloc();
    v0[275] = v11;
    *v11 = v0;
    v11[1] = sub_100061508;

    return daemon.getter();
  }
}

uint64_t sub_100061508(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[276] = a1;

  v4 = swift_task_alloc();
  v2[277] = v4;
  v5 = type metadata accessor for DataManager(0);
  v2[278] = v5;
  v6 = sub_100008F78(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  v2[279] = v6;
  *v4 = v3;
  v4[1] = sub_1000616C4;
  v7 = v2[271];
  v8 = v2[270];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1000616C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 2240) = a1;
  *(v4 + 2248) = v1;

  v5 = *(v3 + 1768);

  if (v1)
  {
    v6 = sub_100066170;
  }

  else
  {
    v6 = sub_100061818;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100061818()
{
  v1 = *(v0 + 2064);
  v2 = *(v0 + 2056);
  v3 = *(v0 + 2048);
  FriendshipRequest.respondType.getter();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_100002CE0(*(v0 + 2048), &qword_1005A91E8, &qword_1004D2F60);
    if (qword_1005A7EC8 != -1)
    {
LABEL_48:
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFB18);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing respond Type (accept or decline or notNow)", v7, 2u);
    }

    v8 = *(v0 + 2128);
    v9 = *(v0 + 2104);
    v10 = *(v0 + 2096);

    sub_10005A48C();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();

    (*(v9 + 8))(v8, v10);

    v12 = *(v0 + 8);
    goto LABEL_35;
  }

  v13 = *(v0 + 2128);
  v14 = *(v0 + 2120);
  v15 = *(v0 + 2104);
  v16 = *(v0 + 2096);
  v17 = *(v0 + 2080);
  v18 = *(v0 + 2072);
  v19 = *(v0 + 2064);
  v20 = *(v0 + 2056);
  (*(v19 + 32))(v17, *(v0 + 2048), v20);
  v21 = *(v15 + 16);
  *(v0 + 2256) = v21;
  *(v0 + 2264) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v14, v13, v16);
  (*(v19 + 16))(v18, v17, v20);
  sub_100158A7C(v14, v18);
  v22 = FriendshipRequest.toHandles.getter();
  *(v0 + 2272) = v22;
  v23 = *(v22 + 16);
  *(v0 + 2280) = v23;
  if (v23)
  {
    v24 = 0;
    v117 = v0 + 1744;
    *(v0 + 2648) = *(*(v0 + 1960) + 80);
    *(v0 + 2652) = enum case for HandleType.futureFollower(_:);
    *(v0 + 2656) = enum case for HandleType.following(_:);
    *(v0 + 2660) = enum case for FriendshipRequestError.missingServerId(_:);
    v115 = (v0 + 2664);
    *(v0 + 2664) = enum case for FriendshipRequestStatus.failure(_:);
    v25 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      *(v0 + 2320) = v25;
      *(v0 + 2312) = _swiftEmptyDictionarySingleton;
      *(v0 + 2304) = v24;
      *(v0 + 2296) = v25;
      *(v0 + 2288) = _swiftEmptyDictionarySingleton;
      v27 = *(v0 + 2272);
      if (v24 >= *(v27 + 16))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v28 = *(v0 + 2648);
      v29 = *(v0 + 2024);
      v30 = *(v0 + 1960);
      v31 = *(v0 + 1952);
      v33 = *(v30 + 16);
      v30 += 16;
      v32 = v33;
      v34 = *(v30 + 56);
      *(v0 + 2328) = v34;
      *(v0 + 2336) = v33;
      *(v0 + 2344) = v30 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v33(v29, v27 + ((v28 + 32) & ~v28) + v34 * v24, v31);
      v35 = Handle.serverID.getter();
      if (!v36)
      {
        break;
      }

      v37 = v35;
      v38 = v36;
      v32(*(v0 + 2016), *(v0 + 2024), *(v0 + 1952));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 1744) = v25;
      v40 = sub_1000110D8(v37, v38);
      v42 = v25[2];
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        goto LABEL_46;
      }

      v46 = v41;
      if (v25[3] >= v45)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v55 = v40;
          sub_100202BF8();
          v40 = v55;
        }
      }

      else
      {
        sub_10022C9B4(v45, isUniquelyReferenced_nonNull_native);
        v40 = sub_1000110D8(v37, v38);
        if ((v46 & 1) != (v47 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v48 = *(v0 + 2024);
      v49 = *(v0 + 2016);
      v50 = *(v0 + 1960);
      v51 = *(v0 + 1952);
      if (v46)
      {
        v26 = v40;

        v25 = *v117;
        (*(v50 + 40))(*(*v117 + 56) + v26 * v34, v49, v51);
        (*(v50 + 8))(v48, v51);
      }

      else
      {
        v25 = *v117;
        *(*v117 + 8 * (v40 >> 6) + 64) |= 1 << v40;
        v52 = (v25[6] + 16 * v40);
        *v52 = v37;
        v52[1] = v38;
        (*(v50 + 32))(v25[7] + v40 * v34, v49, v51);
        (*(v50 + 8))(v48, v51);
        v53 = v25[2];
        v44 = __OFADD__(v53, 1);
        v54 = v53 + 1;
        if (v44)
        {
          goto LABEL_47;
        }

        v25[2] = v54;
      }

      v24 = *(v0 + 2304) + 1;
      if (v24 == *(v0 + 2280))
      {
        goto LABEL_25;
      }
    }

    v56 = *(v0 + 2652);
    v57 = *(v0 + 2240);
    v58 = *(v0 + 1920);
    v59 = *(v0 + 1888);
    v60 = *(v0 + 1880);
    v61 = *(v59 + 104);
    *(v0 + 2352) = v61;
    *(v0 + 2360) = (v59 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v61(v58, v56, v60);

    return _swift_task_switch(sub_1000626A4, v57, 0);
  }

  else
  {
    v115 = &enum case for FriendshipRequestStatus.failure(_:);
    v25 = _swiftEmptyDictionarySingleton;
LABEL_25:

    v62 = *v115;
    *(v0 + 2480) = v25;
    *(v0 + 2668) = v62;
    v63 = *(v0 + 1960);
    v64 = *(v0 + 1808);
    LOBYTE(v62) = *(v25 + 32);
    *(v0 + 2692) = v62;
    v65 = -1;
    v66 = -1 << v62;
    v67 = v25[8];
    if (-v66 < 64)
    {
      v65 = ~(-1 << -v66);
    }

    *(v0 + 2672) = enum case for FriendshipResponseToInviteType.decline(_:);
    *(v0 + 2676) = enum case for FriendshipRequestStatus.pending(_:);
    *(v0 + 2680) = enum case for FriendshipRequestStatus.success(_:);
    *(v0 + 2684) = enum case for FriendshipRequestError.commandFailed(_:);
    *(v0 + 2688) = enum case for FriendshipRequestError.invalidResponse(_:);
    *(v0 + 2496) = _swiftEmptyDictionarySingleton;
    *(v0 + 2488) = _swiftEmptyDictionarySingleton;
    v68 = v65 & v67;
    if (v68)
    {
      v69 = 0;
LABEL_32:
      v72 = *(v0 + 1984);
      v73 = *(v0 + 1952);
      v118 = (v68 - 1) & v68;
      v74 = __clz(__rbit64(v68)) | (v69 << 6);
      v75 = v25[7];
      v76 = (v25[6] + 16 * v74);
      v78 = *v76;
      v77 = v76[1];
      (*(v63 + 16))(v72, v75 + *(v63 + 72) * v74, v73);
      v79 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
      v80 = *(v79 + 48);
      *v64 = v78;
      *(v64 + 1) = v77;
      (*(v63 + 32))(&v64[v80], v72, v73);
      (*(*(v79 - 8) + 56))(v64, 0, 1, v79);

      v81 = v118;
      v71 = v69;
    }

    else
    {
      v70 = 0;
      v71 = ((63 - v66) >> 6) - 1;
      while (v71 != v70)
      {
        v69 = v70 + 1;
        v68 = v25[v70++ + 9];
        if (v68)
        {
          goto LABEL_32;
        }
      }

      v109 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
      (*(*(v109 - 8) + 56))(v64, 1, 1, v109);
      v81 = 0;
    }

    *(v0 + 2512) = v71;
    *(v0 + 2504) = v81;
    v82 = *(v0 + 1816);
    sub_10006DE10(*(v0 + 1808), v82);
    v83 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
    if ((*(*(v83 - 8) + 48))(v82, 1, v83) == 1)
    {
      v84 = *(v0 + 2128);
      v85 = *(v0 + 2104);
      v86 = *(v0 + 2080);
      v87 = *(v0 + 2064);
      v112 = *(v0 + 2056);
      v113 = *(v0 + 2096);
      v111 = *(v0 + 2040);
      v88 = *(v0 + 1792);
      v89 = *(v0 + 1784);
      v90 = *(v0 + 1776);
      v91 = *(v0 + 1760);

      (*(v89 + 16))(v88, v91, v90);
      sub_10006D898(_swiftEmptyArrayStorage);
      FriendshipRequestResult.init(request:result:requestIds:)();

      sub_10006DE80(v111, type metadata accessor for RespondToInviteEndpoint);
      (*(v87 + 8))(v86, v112);
      (*(v85 + 8))(v84, v113);

      v12 = *(v0 + 8);
LABEL_35:

      return v12();
    }

    v114 = *(v0 + 2672);
    v92 = *(v0 + 2256);
    v93 = *(v0 + 2128);
    v94 = *(v0 + 2112);
    v95 = *(v0 + 2096);
    v96 = *(v0 + 2072);
    v97 = *(v0 + 2064);
    v98 = *(v0 + 2056);
    v99 = *(v0 + 1976);
    v100 = *(v0 + 1960);
    v101 = *(v0 + 1952);
    v102 = *(v0 + 1816);
    v119 = *v102;
    *(v0 + 2520) = *v102;
    v116 = v102[1];
    *(v0 + 2528) = v116;
    (*(v100 + 32))(v99, v102 + *(v83 + 48), v101);
    v92(v94, v93, v95);
    (*(v97 + 104))(v96, v114, v98);
    v103 = static FriendshipResponseToInviteType.== infix(_:_:)();
    v104 = *(v97 + 8);
    *(v0 + 2536) = v104;
    *(v0 + 2544) = (v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v104(v96, v98);
    FriendshipRequest.callerHandle.getter();
    FriendshipRequest.origin.getter();

    v105 = swift_task_alloc();
    *(v0 + 2552) = v105;
    *v105 = v0;
    v105[1] = sub_100064A20;
    v106 = *(v0 + 2112);
    v107 = *(v0 + 1928);
    v108 = *(v0 + 1800);

    return sub_1001596B0(v106, v119, v116, (v103 & 1) == 0, v107, v108);
  }
}

uint64_t sub_1000626A4()
{
  v25 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = v0[240];
  v2 = v0[239];
  v3 = v0[236];
  v4 = v0[235];
  v5 = type metadata accessor for Logger();
  v0[296] = sub_10000A6F0(v5, qword_1005DFF18);
  v6 = *(v3 + 16);
  v0[297] = v6;
  v0[298] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[239];
  v11 = v0[236];
  v12 = v0[235];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v13 = 136446722;
    *(v13 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004DEAF0, &v24);
    *(v13 + 12) = 2080;
    sub_100008F78(&qword_1005A9198, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_10000D01C(v14, v16, &v24);

    *(v13 + 14) = v18;
    *(v13 + 22) = 1026;
    *(v13 + 24) = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s type: %s shouldRefresh: %{BOOL,public}d", v13, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[299] = v17;
  v19 = swift_task_alloc();
  v0[300] = v19;
  *v19 = v0;
  v19[1] = sub_10006298C;
  v20 = v0[253];
  v21 = v0[240];
  v22 = v0[234];

  return sub_1001E3D9C(v22, v20, v21, 0);
}

uint64_t sub_10006298C()
{
  v1 = *(*v0 + 2240);

  return _swift_task_switch(sub_100062A9C, v1, 0);
}

uint64_t sub_100062A9C()
{
  v1 = v0[234];
  v2 = type metadata accessor for Friend();
  v0[301] = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  v0[302] = v3;
  v6 = v3 + 48;
  v5 = *(v3 + 48);
  v0[303] = v5;
  v0[304] = v6 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v2) == 1)
  {
    sub_100002CE0(v1, &qword_1005A9188, &unk_1004D80D0);
    v7 = 1;
  }

  else
  {
    Friend.handle.getter();
    (*(v4 + 8))(v1, v2);
    v7 = 0;
  }

  v8 = v0[299];
  v9 = v0[244];
  v10 = v0[243];
  v11 = v0[240];
  v12 = v0[235];
  v13 = v0[221];
  v14 = v0[236] + 8;
  v15 = *(v0[245] + 56);
  v0[305] = v15;
  v15(v10, v7, 1, v9);
  v0[306] = v14 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v11, v12);

  return _swift_task_switch(sub_100062C3C, v13, 0);
}

uint64_t sub_100062C3C()
{
  v1 = *(v0 + 1960);
  v2 = *(v0 + 1952);
  v3 = *(v0 + 1944);
  v4 = *(v1 + 48);
  *(v0 + 2456) = v4;
  *(v0 + 2464) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v2) == 1)
  {
    sub_100002CE0(v3, &qword_1005B3360, &unk_1004C6AA0);
    goto LABEL_11;
  }

  v5 = *(v1 + 32);
  v5(*(v0 + 2008), v3, v2);
  v6 = Handle.serverID.getter();
  if (!v7)
  {
    (*(*(v0 + 1960) + 8))(*(v0 + 2008), *(v0 + 1952));
LABEL_11:
    v23 = *(v0 + 2240);
    (*(v0 + 2352))(*(v0 + 1904), *(v0 + 2656), *(v0 + 1880));
    v24 = sub_100063930;
LABEL_12:
    v12 = v24;
    v13 = v23;
    v14 = 0;

    return _swift_task_switch(v12, v13, v14);
  }

  v8 = v6;
  v9 = v7;
  v10 = *(v0 + 2296);
  (*(v0 + 2336))(*(v0 + 2000), *(v0 + 2008), *(v0 + 1952));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 1736) = v10;
  v12 = sub_1000110D8(v8, v9);
  v15 = *(v10 + 16);
  v16 = (v13 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    goto LABEL_57;
  }

  v19 = v13;
  v20 = (v0 + 1736);
  if (*(*(v0 + 2296) + 24) >= v18)
  {
    v123 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = v12;
      sub_100202BF8();
      v12 = v25;
    }
  }

  else
  {
    sub_10022C9B4(v18, isUniquelyReferenced_nonNull_native);
    v12 = sub_1000110D8(v8, v9);
    if ((v19 & 1) != (v21 & 1))
    {
LABEL_7:

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    v123 = v5;
  }

  v26 = *(v0 + 2328);
  v125 = *(v0 + 2008);
  v128 = *(v0 + 2024);
  v27 = *(v0 + 2000);
  v28 = *(v0 + 1960);
  v29 = *(v0 + 1952);
  if (v19)
  {
    v30 = v12;

    v31 = *v20;
    (*(v28 + 40))(*(v31 + 56) + v26 * v30, v27, v29);
    v32 = *(v28 + 8);
    v32(v125, v29);
    v12 = (v32)(v128, v29);
  }

  else
  {
    v31 = *v20;
    *(v31 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v33 = (*(v31 + 48) + 16 * v12);
    *v33 = v8;
    v33[1] = v9;
    v123(*(v31 + 56) + v26 * v12, v27, v29);
    v34 = *(v28 + 8);
    v34(v125, v29);
    v12 = (v34)(v128, v29);
    v35 = *(v31 + 16);
    v17 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v17)
    {
LABEL_58:
      __break(1u);
      return _swift_task_switch(v12, v13, v14);
    }

    *(v31 + 16) = v36;
  }

  v124 = *(v0 + 2288);
  v126 = *(v0 + 2312);
  v37 = *(v0 + 2304) + 1;
  if (v37 != *(v0 + 2280))
  {
    v129 = (v0 + 1744);
    while (1)
    {
      *(v0 + 2320) = v31;
      *(v0 + 2312) = v126;
      *(v0 + 2304) = v37;
      *(v0 + 2296) = v31;
      *(v0 + 2288) = v124;
      v47 = *(v0 + 2272);
      if (v37 >= *(v47 + 16))
      {
        break;
      }

      v48 = *(v0 + 2648);
      v49 = *(v0 + 2024);
      v50 = *(v0 + 1960);
      v51 = *(v0 + 1952);
      v53 = *(v50 + 16);
      v50 += 16;
      v52 = v53;
      v54 = *(v50 + 56);
      *(v0 + 2328) = v54;
      *(v0 + 2336) = v53;
      *(v0 + 2344) = v50 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v53(v49, v47 + ((v48 + 32) & ~v48) + v54 * v37, v51);
      v55 = Handle.serverID.getter();
      if (!v56)
      {
        v113 = *(v0 + 2652);
        v23 = *(v0 + 2240);
        v114 = *(v0 + 1920);
        v115 = *(v0 + 1888);
        v116 = *(v0 + 1880);
        v117 = *(v115 + 104);
        *(v0 + 2352) = v117;
        *(v0 + 2360) = (v115 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        v117(v114, v113, v116);
        v24 = sub_1000626A4;
        goto LABEL_12;
      }

      v57 = v55;
      v58 = v56;
      v52(*(v0 + 2016), *(v0 + 2024), *(v0 + 1952));
      v59 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 1744) = v31;
      v12 = sub_1000110D8(v57, v58);
      v60 = *(v31 + 16);
      v61 = (v13 & 1) == 0;
      v17 = __OFADD__(v60, v61);
      v62 = v60 + v61;
      if (v17)
      {
        goto LABEL_55;
      }

      v63 = v13;
      if (*(v31 + 24) >= v62)
      {
        if ((v59 & 1) == 0)
        {
          v72 = v12;
          sub_100202BF8();
          v12 = v72;
        }
      }

      else
      {
        sub_10022C9B4(v62, v59);
        v12 = sub_1000110D8(v57, v58);
        if ((v63 & 1) != (v64 & 1))
        {
          goto LABEL_7;
        }
      }

      v65 = *(v0 + 2024);
      v66 = *(v0 + 2016);
      v67 = *(v0 + 1960);
      v68 = *(v0 + 1952);
      if (v63)
      {
        v46 = v12;

        v31 = *v129;
        (*(v67 + 40))(*(*v129 + 56) + v46 * v54, v66, v68);
        v12 = (*(v67 + 8))(v65, v68);
      }

      else
      {
        v31 = *v129;
        *(*v129 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        v69 = (*(v31 + 48) + 16 * v12);
        *v69 = v57;
        v69[1] = v58;
        (*(v67 + 32))(*(v31 + 56) + v12 * v54, v66, v68);
        v12 = (*(v67 + 8))(v65, v68);
        v70 = *(v31 + 16);
        v17 = __OFADD__(v70, 1);
        v71 = v70 + 1;
        if (v17)
        {
          goto LABEL_56;
        }

        *(v31 + 16) = v71;
      }

      v37 = *(v0 + 2304) + 1;
      if (v37 == *(v0 + 2280))
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_23:

  v38 = *(v0 + 2664);
  *(v0 + 2480) = v31;
  *(v0 + 2668) = v38;
  v39 = *(v0 + 1960);
  v40 = *(v0 + 1808);
  LOBYTE(v38) = *(v31 + 32);
  *(v0 + 2692) = v38;
  v41 = -1;
  v42 = -1 << v38;
  v43 = *(v31 + 64);
  if (-v42 < 64)
  {
    v41 = ~(-1 << -v42);
  }

  *(v0 + 2672) = enum case for FriendshipResponseToInviteType.decline(_:);
  *(v0 + 2676) = enum case for FriendshipRequestStatus.pending(_:);
  *(v0 + 2680) = enum case for FriendshipRequestStatus.success(_:);
  *(v0 + 2684) = enum case for FriendshipRequestError.commandFailed(_:);
  *(v0 + 2688) = enum case for FriendshipRequestError.invalidResponse(_:);
  *(v0 + 2496) = v126;
  *(v0 + 2488) = v124;
  v44 = v41 & v43;
  if (v44)
  {
    v45 = 0;
LABEL_44:
    v75 = *(v0 + 1984);
    v76 = *(v0 + 1952);
    v130 = (v44 - 1) & v44;
    v77 = __clz(__rbit64(v44)) | (v45 << 6);
    v78 = *(v31 + 56);
    v79 = (*(v31 + 48) + 16 * v77);
    v81 = *v79;
    v80 = v79[1];
    (*(v39 + 16))(v75, v78 + *(v39 + 72) * v77, v76);
    v82 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
    v83 = *(v82 + 48);
    *v40 = v81;
    *(v40 + 1) = v80;
    (*(v39 + 32))(&v40[v83], v75, v76);
    (*(*(v82 - 8) + 56))(v40, 0, 1, v82);

    v84 = v130;
    v74 = v45;
  }

  else
  {
    v73 = 0;
    v74 = ((63 - v42) >> 6) - 1;
    while (v74 != v73)
    {
      v45 = v73 + 1;
      v44 = *(v31 + 72 + 8 * v73++);
      if (v44)
      {
        goto LABEL_44;
      }
    }

    v118 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
    (*(*(v118 - 8) + 56))(v40, 1, 1, v118);
    v84 = 0;
  }

  *(v0 + 2512) = v74;
  *(v0 + 2504) = v84;
  v85 = *(v0 + 1816);
  sub_10006DE10(*(v0 + 1808), v85);
  v86 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
  if ((*(*(v86 - 8) + 48))(v85, 1, v86) == 1)
  {
    v87 = *(v0 + 2128);
    v88 = *(v0 + 2104);
    v89 = *(v0 + 2080);
    v90 = *(v0 + 2064);
    v120 = *(v0 + 2056);
    v121 = *(v0 + 2096);
    v119 = *(v0 + 2040);
    v91 = *(v0 + 1792);
    v92 = *(v0 + 1784);
    v93 = *(v0 + 1776);
    v94 = *(v0 + 1760);

    (*(v92 + 16))(v91, v94, v93);
    sub_10006D898(_swiftEmptyArrayStorage);
    FriendshipRequestResult.init(request:result:requestIds:)();

    sub_10006DE80(v119, type metadata accessor for RespondToInviteEndpoint);
    (*(v90 + 8))(v89, v120);
    (*(v88 + 8))(v87, v121);

    v95 = *(v0 + 8);

    return v95();
  }

  else
  {
    v122 = *(v0 + 2672);
    v96 = *(v0 + 2256);
    v97 = *(v0 + 2128);
    v98 = *(v0 + 2112);
    v99 = *(v0 + 2096);
    v100 = *(v0 + 2072);
    v101 = *(v0 + 2064);
    v102 = *(v0 + 2056);
    v103 = *(v0 + 1976);
    v104 = *(v0 + 1960);
    v105 = *(v0 + 1952);
    v106 = *(v0 + 1816);
    v131 = *v106;
    *(v0 + 2520) = *v106;
    v127 = v106[1];
    *(v0 + 2528) = v127;
    (*(v104 + 32))(v103, v106 + *(v86 + 48), v105);
    v96(v98, v97, v99);
    (*(v101 + 104))(v100, v122, v102);
    v107 = static FriendshipResponseToInviteType.== infix(_:_:)();
    v108 = *(v101 + 8);
    *(v0 + 2536) = v108;
    *(v0 + 2544) = (v101 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v108(v100, v102);
    FriendshipRequest.callerHandle.getter();
    FriendshipRequest.origin.getter();

    v109 = swift_task_alloc();
    *(v0 + 2552) = v109;
    *v109 = v0;
    v109[1] = sub_100064A20;
    v110 = *(v0 + 2112);
    v111 = *(v0 + 1928);
    v112 = *(v0 + 1800);

    return sub_1001596B0(v110, v131, v127, (v107 & 1) == 0, v111, v112);
  }
}

uint64_t sub_100063930()
{
  v18 = v0;
  (*(v0 + 2376))(*(v0 + 1896), *(v0 + 1904), *(v0 + 1880));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 2392);
  v5 = *(v0 + 1896);
  v6 = *(v0 + 1880);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136446722;
    *(v7 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004DEAF0, &v17);
    *(v7 + 12) = 2080;
    sub_100008F78(&qword_1005A9198, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v4(v5, v6);
    v11 = sub_10000D01C(v8, v10, &v17);

    *(v7 + 14) = v11;
    *(v7 + 22) = 1026;
    *(v7 + 24) = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s type: %s shouldRefresh: %{BOOL,public}d", v7, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    v4(v5, v6);
  }

  v12 = swift_task_alloc();
  *(v0 + 2472) = v12;
  *v12 = v0;
  v12[1] = sub_100063B90;
  v13 = *(v0 + 2024);
  v14 = *(v0 + 1904);
  v15 = *(v0 + 1864);

  return sub_1001E3D9C(v15, v13, v14, 0);
}

uint64_t sub_100063B90()
{
  v1 = *(*v0 + 2240);

  return _swift_task_switch(sub_100063CA0, v1, 0);
}

uint64_t sub_100063CA0()
{
  v1 = *(v0 + 2408);
  v2 = *(v0 + 1864);
  if ((*(v0 + 2424))(v2, 1, v1) == 1)
  {
    sub_100002CE0(v2, &qword_1005A9188, &unk_1004D80D0);
    v3 = 1;
  }

  else
  {
    v4 = *(v0 + 2416);
    Friend.handle.getter();
    (*(v4 + 8))(v2, v1);
    v3 = 0;
  }

  v5 = *(v0 + 2392);
  v6 = *(v0 + 1904);
  v7 = *(v0 + 1880);
  v8 = *(v0 + 1768);
  (*(v0 + 2440))(*(v0 + 1936), v3, 1, *(v0 + 1952));
  v5(v6, v7);

  return _swift_task_switch(sub_100063DC4, v8, 0);
}

uint64_t sub_100063DC4()
{
  v1 = *(v0 + 1952);
  v2 = *(v0 + 1936);
  if ((*(v0 + 2456))(v2, 1, v1) == 1)
  {
    sub_100002CE0(v2, &qword_1005B3360, &unk_1004C6AA0);
  }

  else
  {
    (*(*(v0 + 1960) + 32))(*(v0 + 1992), v2, v1);
    v3 = Handle.serverID.getter();
    if (v4)
    {
      v5 = v3;
      v6 = v4;
      v7 = *(v0 + 2296);
      v8 = *(v0 + 2024);
      v9 = *(v0 + 1992);
      v10 = *(v0 + 1984);
      v11 = *(v0 + 1960);
      v12 = *(v0 + 1952);
      (*(v0 + 2336))(v10, v9, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100452778(v10, v5, v6, isUniquelyReferenced_nonNull_native);

      v14 = *(v11 + 8);
      v14(v9, v12);
      v15 = (v14)(v8, v12);
      v18 = v7;
      v121 = *(v0 + 2288);
      v124 = *(v0 + 2312);
      v19 = v7;
      goto LABEL_7;
    }

    (*(*(v0 + 1960) + 8))(*(v0 + 1992), *(v0 + 1952));
  }

  v20 = *(v0 + 2288);
  v21 = *(v0 + 2664);
  v22 = *(v0 + 2660);
  v23 = *(v0 + 2024);
  v24 = *(v0 + 1960);
  v125 = *(v0 + 1952);
  v25 = *(v0 + 1856);
  v26 = *(v0 + 1848);
  v27 = *(v0 + 1832);
  v28 = *(v0 + 1824);
  v29 = type metadata accessor for FriendshipRequestError();
  (*(*(v29 - 8) + 104))(v25, v22, v29);
  (*(v27 + 104))(v25, v21, v28);
  (*(v27 + 32))(v26, v25, v28);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_100452724(v26, v23, v30);
  v15 = (*(v24 + 8))(v23, v125);
  v19 = *(v0 + 2320);
  v18 = *(v0 + 2296);
  v121 = v20;
  v124 = v20;
LABEL_7:
  v31 = *(v0 + 2304) + 1;
  if (v31 != *(v0 + 2280))
  {
    v40 = (v0 + 1744);
    while (1)
    {
      *(v0 + 2320) = v19;
      *(v0 + 2312) = v124;
      *(v0 + 2304) = v31;
      *(v0 + 2296) = v18;
      *(v0 + 2288) = v121;
      v42 = *(v0 + 2272);
      if (v31 >= *(v42 + 16))
      {
        break;
      }

      v43 = *(v0 + 2648);
      v44 = *(v0 + 2024);
      v45 = *(v0 + 1960);
      v46 = *(v0 + 1952);
      v48 = *(v45 + 16);
      v45 += 16;
      v47 = v48;
      v49 = *(v45 + 56);
      *(v0 + 2328) = v49;
      *(v0 + 2336) = v48;
      *(v0 + 2344) = v45 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v48(v44, v42 + ((v43 + 32) & ~v43) + v49 * v31, v46);
      v50 = Handle.serverID.getter();
      if (!v51)
      {
        v110 = *(v0 + 2652);
        v111 = *(v0 + 2240);
        v112 = *(v0 + 1920);
        v113 = *(v0 + 1888);
        v114 = *(v0 + 1880);
        v115 = *(v113 + 104);
        *(v0 + 2352) = v115;
        *(v0 + 2360) = (v113 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        v115(v112, v110, v114);
        v15 = sub_1000626A4;
        v16 = v111;
        v17 = 0;

        return _swift_task_switch(v15, v16, v17);
      }

      v52 = v50;
      v53 = v51;
      v47(*(v0 + 2016), *(v0 + 2024), *(v0 + 1952));
      v54 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 1744) = v18;
      v15 = sub_1000110D8(v52, v53);
      v55 = *(v18 + 16);
      v56 = (v16 & 1) == 0;
      v57 = __OFADD__(v55, v56);
      v58 = v55 + v56;
      if (v57)
      {
        goto LABEL_45;
      }

      v59 = v16;
      if (*(v18 + 24) >= v58)
      {
        if ((v54 & 1) == 0)
        {
          v68 = v15;
          sub_100202BF8();
          v15 = v68;
        }
      }

      else
      {
        sub_10022C9B4(v58, v54);
        v15 = sub_1000110D8(v52, v53);
        if ((v59 & 1) != (v60 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v61 = *(v0 + 2024);
      v62 = *(v0 + 2016);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);
      if (v59)
      {
        v41 = v15;

        v19 = *v40;
        (*(v63 + 40))(*(*v40 + 56) + v41 * v49, v62, v64);
        v15 = (*(v63 + 8))(v61, v64);
      }

      else
      {
        v19 = *v40;
        *(*v40 + 8 * (v15 >> 6) + 64) |= 1 << v15;
        v65 = (*(v19 + 48) + 16 * v15);
        *v65 = v52;
        v65[1] = v53;
        (*(v63 + 32))(*(v19 + 56) + v15 * v49, v62, v64);
        v15 = (*(v63 + 8))(v61, v64);
        v66 = *(v19 + 16);
        v57 = __OFADD__(v66, 1);
        v67 = v66 + 1;
        if (v57)
        {
          goto LABEL_46;
        }

        *(v19 + 16) = v67;
      }

      v31 = *(v0 + 2304) + 1;
      v18 = v19;
      if (v31 == *(v0 + 2280))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    return _swift_task_switch(v15, v16, v17);
  }

LABEL_8:

  v32 = *(v0 + 2664);
  *(v0 + 2480) = v19;
  *(v0 + 2668) = v32;
  v33 = *(v0 + 1960);
  v34 = *(v0 + 1808);
  LOBYTE(v32) = *(v19 + 32);
  *(v0 + 2692) = v32;
  v35 = -1;
  v36 = -1 << v32;
  v37 = *(v19 + 64);
  if (-v36 < 64)
  {
    v35 = ~(-1 << -v36);
  }

  *(v0 + 2672) = enum case for FriendshipResponseToInviteType.decline(_:);
  *(v0 + 2676) = enum case for FriendshipRequestStatus.pending(_:);
  *(v0 + 2680) = enum case for FriendshipRequestStatus.success(_:);
  *(v0 + 2684) = enum case for FriendshipRequestError.commandFailed(_:);
  *(v0 + 2688) = enum case for FriendshipRequestError.invalidResponse(_:);
  *(v0 + 2496) = v124;
  *(v0 + 2488) = v121;
  v38 = v35 & v37;
  if (v38)
  {
    v39 = 0;
LABEL_29:
    v71 = *(v0 + 1984);
    v72 = *(v0 + 1952);
    v122 = (v38 - 1) & v38;
    v73 = __clz(__rbit64(v38)) | (v39 << 6);
    v74 = *(v19 + 56);
    v75 = (*(v19 + 48) + 16 * v73);
    v77 = *v75;
    v76 = v75[1];
    (*(v33 + 16))(v71, v74 + *(v33 + 72) * v73, v72);
    v78 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
    v79 = *(v78 + 48);
    *v34 = v77;
    *(v34 + 1) = v76;
    (*(v33 + 32))(&v34[v79], v71, v72);
    (*(*(v78 - 8) + 56))(v34, 0, 1, v78);

    v80 = v122;
    v70 = v39;
  }

  else
  {
    v69 = 0;
    v70 = ((63 - v36) >> 6) - 1;
    while (v70 != v69)
    {
      v39 = v69 + 1;
      v38 = *(v19 + 72 + 8 * v69++);
      if (v38)
      {
        goto LABEL_29;
      }
    }

    v116 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
    (*(*(v116 - 8) + 56))(v34, 1, 1, v116);
    v80 = 0;
  }

  *(v0 + 2512) = v70;
  *(v0 + 2504) = v80;
  v81 = *(v0 + 1816);
  sub_10006DE10(*(v0 + 1808), v81);
  v82 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
  if ((*(*(v82 - 8) + 48))(v81, 1, v82) == 1)
  {
    v83 = *(v0 + 2128);
    v84 = *(v0 + 2104);
    v85 = *(v0 + 2080);
    v86 = *(v0 + 2064);
    v118 = *(v0 + 2056);
    v119 = *(v0 + 2096);
    v117 = *(v0 + 2040);
    v87 = *(v0 + 1792);
    v88 = *(v0 + 1784);
    v89 = *(v0 + 1776);
    v90 = *(v0 + 1760);

    (*(v88 + 16))(v87, v90, v89);
    sub_10006D898(_swiftEmptyArrayStorage);
    FriendshipRequestResult.init(request:result:requestIds:)();

    sub_10006DE80(v117, type metadata accessor for RespondToInviteEndpoint);
    (*(v86 + 8))(v85, v118);
    (*(v84 + 8))(v83, v119);

    v91 = *(v0 + 8);

    return v91();
  }

  else
  {
    v120 = *(v0 + 2672);
    v93 = *(v0 + 2256);
    v94 = *(v0 + 2128);
    v95 = *(v0 + 2112);
    v96 = *(v0 + 2096);
    v97 = *(v0 + 2072);
    v98 = *(v0 + 2064);
    v99 = *(v0 + 2056);
    v100 = *(v0 + 1976);
    v101 = *(v0 + 1960);
    v102 = *(v0 + 1952);
    v103 = *(v0 + 1816);
    v126 = *v103;
    *(v0 + 2520) = *v103;
    v123 = v103[1];
    *(v0 + 2528) = v123;
    (*(v101 + 32))(v100, v103 + *(v82 + 48), v102);
    v93(v95, v94, v96);
    (*(v98 + 104))(v97, v120, v99);
    v104 = static FriendshipResponseToInviteType.== infix(_:_:)();
    v105 = *(v98 + 8);
    *(v0 + 2536) = v105;
    *(v0 + 2544) = (v98 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v105(v97, v99);
    FriendshipRequest.callerHandle.getter();
    FriendshipRequest.origin.getter();

    v106 = swift_task_alloc();
    *(v0 + 2552) = v106;
    *v106 = v0;
    v106[1] = sub_100064A20;
    v107 = *(v0 + 2112);
    v108 = *(v0 + 1928);
    v109 = *(v0 + 1800);

    return sub_1001596B0(v107, v126, v123, (v104 & 1) == 0, v108, v109);
  }
}

uint64_t sub_100064A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[320] = a1;
  v5[321] = a2;
  v5[322] = a3;
  v5[323] = v3;

  if (v3)
  {
    v6 = v5[221];

    return _swift_task_switch(sub_100064EB0, v6, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v5[324] = v7;
    *v7 = v5;
    v7[1] = sub_100064BB0;

    return daemon.getter();
  }
}

uint64_t sub_100064BB0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[325] = a1;

  v4 = swift_task_alloc();
  v2[326] = v4;
  *v4 = v3;
  v4[1] = sub_100064D3C;
  v5 = v2[279];
  v6 = v2[278];
  v7 = v2[271];
  v8 = v2[270];

  return ActorServiceDaemon.getService<A>()(v8, v6, v7, v5);
}

uint64_t sub_100064D3C(uint64_t a1)
{
  v3 = *v2;
  v3[327] = a1;
  v3[328] = v1;

  if (v1)
  {
    v4 = v3[221];

    v5 = sub_1000663CC;
    v6 = v4;
  }

  else
  {
    v7 = v3[221];

    v5 = sub_100065194;
    v6 = v7;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100064EB0()
{
  v12 = v0[266];
  v1 = v0[263];
  v10 = v0[262];
  v11 = v0[317];
  v2 = v0[260];
  v3 = v0[257];
  v4 = v0[255];
  v5 = v0[247];
  v6 = v0[245];
  v7 = v0[244];

  (*(v6 + 8))(v5, v7);
  sub_10006DE80(v4, type metadata accessor for RespondToInviteEndpoint);
  v11(v2, v3);
  (*(v1 + 8))(v12, v10);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100065194()
{
  v1 = v0[322];
  v2 = v0[321];
  v3 = v0[320];
  v4 = v0[255];
  v0[205] = v0[254];
  v0[206] = sub_100008F78(&qword_1005A91F8, type metadata accessor for RespondToInviteEndpoint, &unk_1004C83F8);
  v5 = sub_10000331C(v0 + 202);
  sub_10006DEE0(v4, v5, type metadata accessor for RespondToInviteEndpoint);
  v0[210] = &type metadata for RespondToInviteRequest;
  v0[211] = sub_10006DF48();
  v0[207] = v3;
  v0[208] = v2;
  v0[209] = v1;

  sub_10002CF44(v2, v1);
  Account.dsid.getter();
  Account.appToken.getter();
  v0[215] = type metadata accessor for BasicCredential();
  v0[216] = &protocol witness table for BasicCredential;
  sub_10000331C(v0 + 212);
  BasicCredential.init(username:password:)();
  v6 = swift_task_alloc();
  v0[329] = v6;
  *v6 = v0;
  v6[1] = sub_100065348;

  return sub_1001D7B78((v0 + 2), (v0 + 202), (v0 + 207), (v0 + 212));
}

uint64_t sub_100065348()
{
  v2 = *v1;
  *(*v1 + 2640) = v0;

  if (v0)
  {
    v3 = v2[221];

    sub_100002CE0((v2 + 212), &qword_1005A9138, &qword_1004C2600);

    v4 = sub_1000666D4;
    v5 = v3;
  }

  else
  {
    v6 = v2[221];
    sub_100002CE0((v2 + 212), &qword_1005A9138, &qword_1004C2600);
    sub_100004984(v2 + 207);
    sub_100004984(v2 + 202);
    v4 = sub_1000654C8;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000654C8()
{
  v91 = v0;
  (*(*(v0 + 1960) + 16))(*(v0 + 1968), *(v0 + 1976), *(v0 + 1952));
  if (*(v0 + 240) == 1)
  {
    v1 = *(v0 + 2688);
LABEL_9:
    v4 = *(v0 + 1840);
    v5 = type metadata accessor for FriendshipRequestError();
    (*(*(v5 - 8) + 104))(v4, v1, v5);
    v6 = 2668;
    goto LABEL_10;
  }

  v2 = *(v0 + 256);
  v3 = (v2 - 3) < 0x12 || v2 == 0;
  if (v3)
  {
    v1 = *(v0 + 2684);
    goto LABEL_9;
  }

  v3 = v2 == 1;
  v6 = 2680;
  if (!v3)
  {
    v6 = 2676;
  }

LABEL_10:
  v7 = *(v0 + 2488);
  v8 = *(v0 + 1968);
  v9 = *(v0 + 1960);
  v10 = *(v0 + 1952);
  v11 = *(v0 + 1856);
  v12 = *(v0 + 1840);
  v13 = *(v0 + 1832);
  v14 = *(v0 + 1824);
  (*(v13 + 104))(v12, *(v0 + v6), v14);
  (*(v13 + 32))(v11, v12, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90[0] = v7;
  sub_100452724(v11, v8, isUniquelyReferenced_nonNull_native);
  v16 = *(v9 + 8);
  (v16)(v8, v10);
  v17 = v7;
  if (qword_1005A7EC8 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v18 = type metadata accessor for Logger();
    sub_10000A6F0(v18, qword_1005DFB18);

    sub_10006DAC8(v0 + 16, v0 + 816);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    sub_10005D06C(v0 + 16);
    v21 = os_log_type_enabled(v19, v20);
    v88 = *(v0 + 2576);
    v85 = *(v0 + 2568);
    v22 = *(v0 + 2528);
    if (v21)
    {
      v23 = *(v0 + 2520);
      v82 = *(v0 + 1952);
      v84 = *(v0 + 1976);
      v24 = swift_slowAlloc();
      v90[0] = swift_slowAlloc();
      *v24 = 136446979;
      *(v24 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004DEB40, v90);
      *(v24 + 12) = 2160;
      *(v24 + 14) = 1752392040;
      *(v24 + 22) = 2081;
      v25 = sub_10000D01C(v23, v22, v90);

      *(v24 + 24) = v25;
      *(v24 + 32) = 2080;
      v26 = sub_100176040();
      v28 = v27;
      sub_10005D06C(v0 + 16);
      v29 = sub_10000D01C(v26, v28, v90);

      *(v24 + 34) = v29;
      _os_log_impl(&_mh_execute_header, v19, v20, "CommandManager %{public}s with\nserverId:%{private,mask.hash}s\nresponse: %s", v24, 0x2Au);
      swift_arrayDestroy();

      sub_10001A794(v85, v88);
      (v16)(v84, v82);
    }

    else
    {
      v30 = *(v0 + 1976);
      v31 = *(v0 + 1952);

      sub_10001A794(v85, v88);
      sub_10005D06C(v0 + 16);

      (v16)(v30, v31);
    }

    v16 = *(v0 + 2512);
    v32 = *(v0 + 2504);
    *(v0 + 2496) = v17;
    *(v0 + 2488) = v17;
    if (v32)
    {
      break;
    }

    v34 = ((1 << *(v0 + 2692)) + 63) >> 6;
    if (v34 <= (v16 + 1))
    {
      v35 = v16 + 1;
    }

    else
    {
      v35 = ((1 << *(v0 + 2692)) + 63) >> 6;
    }

    v36 = v35 - 1;
    while (1)
    {
      v37 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v37 >= v34)
      {
        v78 = *(v0 + 1808);
        v79 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
        (*(*(v79 - 8) + 56))(v78, 1, 1, v79);
        v42 = 0;
        goto LABEL_25;
      }

      v33 = *(v0 + 2480);
      v32 = *(v33 + 8 * v37 + 64);
      ++v16;
      if (v32)
      {
        v16 = v37;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  v33 = *(v0 + 2480);
LABEL_24:
  v38 = *(v0 + 1984);
  v39 = *(v0 + 1960);
  v40 = *(v0 + 1952);
  v41 = *(v0 + 1808);
  v42 = (v32 - 1) & v32;
  v43 = __clz(__rbit64(v32)) | (v16 << 6);
  v44 = (*(v33 + 48) + 16 * v43);
  v46 = *v44;
  v45 = v44[1];
  (*(v39 + 16))(v38, *(v33 + 56) + *(v39 + 72) * v43, v40);
  v47 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
  v48 = *(v47 + 48);
  *v41 = v46;
  *(v41 + 1) = v45;
  (*(v39 + 32))(&v41[v48], v38, v40);
  (*(*(v47 - 8) + 56))(v41, 0, 1, v47);

  v36 = v16;
LABEL_25:
  *(v0 + 2512) = v36;
  *(v0 + 2504) = v42;
  v49 = *(v0 + 1816);
  sub_10006DE10(*(v0 + 1808), v49);
  v50 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
  v51 = (*(*(v50 - 8) + 48))(v49, 1, v50);
  v89 = *(v0 + 2128);
  if (v51 == 1)
  {
    v52 = *(v0 + 2104);
    v53 = *(v0 + 2080);
    v54 = *(v0 + 2064);
    v80 = *(v0 + 2056);
    v81 = *(v0 + 2096);
    v55 = *(v0 + 2040);
    v56 = *(v0 + 1792);
    v57 = *(v0 + 1784);
    v58 = *(v0 + 1776);
    v59 = *(v0 + 1760);

    (*(v57 + 16))(v56, v59, v58);
    sub_10006D898(_swiftEmptyArrayStorage);
    FriendshipRequestResult.init(request:result:requestIds:)();

    sub_10006DE80(v55, type metadata accessor for RespondToInviteEndpoint);
    (*(v54 + 8))(v53, v80);
    (*(v52 + 8))(v89, v81);

    v60 = *(v0 + 8);

    return v60();
  }

  else
  {
    v83 = *(v0 + 2672);
    v62 = *(v0 + 2256);
    v63 = *(v0 + 2112);
    v64 = *(v0 + 2096);
    v65 = *(v0 + 2072);
    v66 = *(v0 + 2064);
    v67 = *(v0 + 2056);
    v68 = *(v0 + 1976);
    v69 = *(v0 + 1960);
    v70 = *(v0 + 1952);
    v71 = *(v0 + 1816);
    v87 = *v71;
    *(v0 + 2520) = *v71;
    v86 = v71[1];
    *(v0 + 2528) = v86;
    (*(v69 + 32))(v68, v71 + *(v50 + 48), v70);
    v62(v63, v89, v64);
    (*(v66 + 104))(v65, v83, v67);
    v72 = static FriendshipResponseToInviteType.== infix(_:_:)();
    v73 = *(v66 + 8);
    *(v0 + 2536) = v73;
    *(v0 + 2544) = (v66 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v73(v65, v67);
    FriendshipRequest.callerHandle.getter();
    FriendshipRequest.origin.getter();

    v74 = swift_task_alloc();
    *(v0 + 2552) = v74;
    *v74 = v0;
    v74[1] = sub_100064A20;
    v75 = *(v0 + 2112);
    v76 = *(v0 + 1928);
    v77 = *(v0 + 1800);

    return sub_1001596B0(v75, v87, v86, (v72 & 1) == 0, v76, v77);
  }
}

uint64_t sub_100065F38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100066170()
{
  v1 = v0[266];
  v2 = v0[263];
  v3 = v0[262];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000663CC()
{
  v1 = v0[322];
  v2 = v0[321];
  v14 = v0[266];
  v3 = v0[263];
  v12 = v0[262];
  v13 = v0[317];
  v10 = v0[257];
  v11 = v0[260];
  v9 = v0[255];
  v4 = v0[247];
  v5 = v0[245];
  v6 = v0[244];

  sub_10001A794(v2, v1);
  (*(v5 + 8))(v4, v6);
  sub_10006DE80(v9, type metadata accessor for RespondToInviteEndpoint);
  v13(v11, v10);
  (*(v3 + 8))(v14, v12);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000666D4()
{
  v8 = v0[322];
  v1 = v0[321];
  v14 = v0[266];
  v2 = v0[263];
  v12 = v0[262];
  v13 = v0[317];
  v10 = v0[257];
  v11 = v0[260];
  v9 = v0[255];
  v3 = v0[247];
  v4 = v0[245];
  v5 = v0[244];

  sub_10001A794(v1, v8);
  (*(v4 + 8))(v3, v5);
  sub_10006DE80(v9, type metadata accessor for RespondToInviteEndpoint);
  v13(v11, v10);
  (*(v2 + 8))(v14, v12);
  sub_100004984(v0 + 207);
  sub_100004984(v0 + 202);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000669FC(uint64_t a1, uint64_t a2)
{
  v3[224] = v2;
  v3[223] = a2;
  v3[222] = a1;
  v4 = type metadata accessor for FriendshipRequest();
  v3[225] = v4;
  v3[226] = *(v4 - 8);
  v3[227] = swift_task_alloc();
  v3[228] = swift_task_alloc();
  v3[229] = type metadata accessor for FriendshipEndpoint(0);
  v3[230] = swift_task_alloc();
  v5 = type metadata accessor for FriendshipRequestStatus();
  v3[231] = v5;
  v3[232] = *(v5 - 8);
  v3[233] = swift_task_alloc();
  v3[234] = swift_task_alloc();
  v3[235] = swift_task_alloc();
  v3[236] = swift_task_alloc();
  sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  v3[237] = swift_task_alloc();
  v3[238] = swift_task_alloc();
  v6 = type metadata accessor for HandleType();
  v3[239] = v6;
  v3[240] = *(v6 - 8);
  v3[241] = swift_task_alloc();
  v3[242] = swift_task_alloc();
  v3[243] = swift_task_alloc();
  v3[244] = swift_task_alloc();
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v3[245] = swift_task_alloc();
  v3[246] = swift_task_alloc();
  v7 = type metadata accessor for Handle();
  v3[247] = v7;
  v3[248] = *(v7 - 8);
  v3[249] = swift_task_alloc();
  v3[250] = swift_task_alloc();
  v3[251] = swift_task_alloc();
  v3[252] = swift_task_alloc();
  v3[253] = swift_task_alloc();
  v3[254] = swift_task_alloc();
  v3[255] = swift_task_alloc();
  v3[256] = swift_task_alloc();
  v3[257] = swift_task_alloc();
  v3[258] = swift_task_alloc();
  sub_10004B564(&qword_1005A9110, &qword_1004C25F8);
  v3[259] = swift_task_alloc();
  v8 = type metadata accessor for Account();
  v3[260] = v8;
  v3[261] = *(v8 - 8);
  v3[262] = swift_task_alloc();
  v3[263] = swift_task_alloc();
  v3[264] = swift_task_alloc();
  v9 = swift_task_alloc();
  v3[265] = v9;
  *v9 = v3;
  v9[1] = sub_100066E2C;

  return daemon.getter();
}

uint64_t sub_100066E2C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[266] = a1;

  v3 = swift_task_alloc();
  v2[267] = v3;
  v4 = type metadata accessor for Daemon();
  v2[268] = v4;
  v5 = type metadata accessor for AccountService(0);
  v6 = sub_100008F78(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[269] = v6;
  v7 = sub_100008F78(&qword_1005A9118, type metadata accessor for AccountService, &unk_1004DCC10);
  *v3 = v9;
  v3[1] = sub_10006700C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10006700C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[270] = a1;
  v3[271] = v1;

  if (v1)
  {
    v5 = v3[224];

    return _swift_task_switch(sub_10006AD5C, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[272] = v6;
    *v6 = v4;
    v6[1] = sub_10006719C;
    v7 = v3[259];

    return sub_10000EB24(v7);
  }
}

uint64_t sub_10006719C()
{
  v1 = *(*v0 + 1792);

  return _swift_task_switch(sub_1000672AC, v1, 0);
}

uint64_t sub_1000672AC()
{
  v1 = v0[261];
  v2 = v0[260];
  v3 = v0[259];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    if (qword_1005A7EC8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFB18);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing primary account to stop sharing!", v7, 2u);
    }

    sub_10006D30C();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v1 + 32))(v0[264], v3, v2);
    v11 = swift_task_alloc();
    v0[273] = v11;
    *v11 = v0;
    v11[1] = sub_100067678;

    return daemon.getter();
  }
}

uint64_t sub_100067678(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 2192) = a1;

  v5 = swift_task_alloc();
  *(v3 + 2200) = v5;
  v6 = type metadata accessor for DataManager(0);
  v7 = sub_100008F78(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v5 = v4;
  v5[1] = sub_10006782C;
  v8 = *(v2 + 2152);
  v9 = *(v2 + 2144);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10006782C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 2208) = a1;
  *(v4 + 2216) = v1;

  v5 = *(v3 + 1792);

  if (v1)
  {
    v6 = sub_10006AF68;
  }

  else
  {
    v6 = sub_100067980;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100067980(uint64_t a1)
{
  v104 = v1;
  *(v1 + 1768) = _swiftEmptyArrayStorage;
  v2 = FriendshipRequest.toHandles.getter();
  *(v1 + 2224) = v2;
  v3 = *(v2 + 16);
  *(v1 + 2232) = v3;
  if (v3)
  {
    v4 = 0;
    v5 = *(v1 + 1984);
    *(v1 + 2520) = *(v5 + 80);
    *(v1 + 2240) = *(v5 + 72);
    *(v1 + 2248) = *(v5 + 16);
    *(v1 + 2524) = enum case for HandleType.follower(_:);
    *(v1 + 2528) = enum case for HandleType.pendingOffer(_:);
    v6 = _swiftEmptyArrayStorage;
    while (1)
    {
      *(v1 + 2264) = v6;
      *(v1 + 2256) = v4;
      v7 = *(v1 + 2248);
      v8 = *(v1 + 2064);
      v9 = *(v1 + 1976);
      v10 = *(v1 + 2224) + ((*(v1 + 2520) + 32) & ~*(v1 + 2520)) + *(v1 + 2240) * v4;
      *(v1 + 2272) = (*(v1 + 1984) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v7(v8, v10, v9);
      Handle.serverID.getter();
      if (!v11)
      {
        break;
      }

      v12 = *(v1 + 2248);
      v13 = *(v1 + 2064);
      v14 = *(v1 + 2056);
      v15 = *(v1 + 1976);

      v12(v14, v13, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1001FCA0C(0, *(v6 + 2) + 1, 1, v6);
      }

      v17 = *(v6 + 2);
      v16 = *(v6 + 3);
      if (v17 >= v16 >> 1)
      {
        v6 = sub_1001FCA0C((v16 > 1), v17 + 1, 1, v6);
      }

      v18 = *(v1 + 2240);
      v19 = *(v1 + 2056);
      v20 = *(v1 + 1984);
      v21 = *(v1 + 1976);
      v22 = (*(v1 + 2520) + 32) & ~*(v1 + 2520);
      (*(v20 + 8))(*(v1 + 2064), v21);
      *(v6 + 2) = v17 + 1;
      (*(v20 + 32))(&v6[v22 + v18 * v17], v19, v21);
      *(v1 + 1768) = v6;
      v4 = *(v1 + 2256) + 1;
      if (v4 == *(v1 + 2232))
      {

        goto LABEL_14;
      }
    }

    v23 = *(v1 + 2524);
    v24 = *(v1 + 2208);
    v25 = *(v1 + 1952);
    v26 = *(v1 + 1920);
    v27 = *(v1 + 1912);
    v28 = *(v26 + 104);
    *(v1 + 2280) = v28;
    *(v1 + 2288) = (v26 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v28(v25, v23, v27);

    return _swift_task_switch(sub_100068518, v24, 0);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
LABEL_14:
    *(v1 + 2416) = v6;
    v29 = FriendshipRequest.toHandles.getter();
    v30 = sub_10006D5B8(v29, (v1 + 1768));

    v92 = v6;
    v93 = v30;
    v91 = v30[2];
    if (v91)
    {
      v31 = 0;
      v32 = *(v1 + 1984);
      v89 = v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
      v88 = enum case for FriendshipRequestError.missingServerId(_:);
      v87 = enum case for FriendshipRequestStatus.failure(_:);
      v86 = *(v1 + 1856);
      v96 = (v86 + 32);
      v90 = v32;
      v85 = (v32 + 8);
      v101 = _swiftEmptyDictionarySingleton;
      while (1)
      {
        if (v31 >= v93[2])
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v34 = *(v1 + 2016);
        v35 = *(v1 + 2008);
        v36 = *(v1 + 1976);
        v37 = *(v1 + 1888);
        v38 = *(v1 + 1880);
        v39 = *(v1 + 1848);
        v94 = *(v90 + 72);
        v40 = *(v90 + 16);
        v40(v34, &v89[v94 * v31], v36);
        v40(v35, v34, v36);
        v41 = type metadata accessor for FriendshipRequestError();
        (*(*(v41 - 8) + 104))(v37, v88, v41);
        (*(v86 + 104))(v37, v87, v39);
        v42 = *v96;
        (*v96)(v38, v37, v39);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v103 = v101;
        v44 = sub_1001FD93C(v35);
        v46 = v101[2];
        v47 = (v45 & 1) == 0;
        v48 = __OFADD__(v46, v47);
        v49 = v46 + v47;
        if (v48)
        {
          goto LABEL_43;
        }

        v50 = v45;
        if (v101[3] >= v49)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v61 = v44;
            sub_100202BBC();
            v44 = v61;
            v101 = v103;
          }
        }

        else
        {
          v51 = *(v1 + 2008);
          sub_10022C98C(v49, isUniquelyReferenced_nonNull_native);
          v44 = sub_1001FD93C(v51);
          if ((v50 & 1) != (v52 & 1))
          {

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          }

          v101 = v103;
        }

        v99 = *(v1 + 2016);
        v53 = *(v1 + 2008);
        v54 = *(v1 + 1976);
        v55 = *(v1 + 1880);
        v56 = *(v1 + 1848);
        if (v50)
        {
          (*(v86 + 40))(v101[7] + *(v86 + 72) * v44, *(v1 + 1880), *(v1 + 1848));
          v33 = *v85;
          (*v85)(v53, v54);
          v33(v99, v54);
        }

        else
        {
          v101[(v44 >> 6) + 8] |= 1 << v44;
          v57 = v44;
          v40(v101[6] + v44 * v94, v53, v54);
          v42(v101[7] + *(v86 + 72) * v57, v55, v56);
          v58 = *v85;
          (*v85)(v53, v54);
          v58(v99, v54);
          v59 = v101[2];
          v48 = __OFADD__(v59, 1);
          v60 = v59 + 1;
          if (v48)
          {
            goto LABEL_44;
          }

          v101[2] = v60;
        }

        ++v31;
        v6 = v92;
        if (v91 == v31)
        {
          goto LABEL_29;
        }
      }
    }

    v101 = _swiftEmptyDictionarySingleton;
LABEL_29:
    *(v1 + 2424) = v101;

    if (*(v6 + 2))
    {
      v62 = *(v1 + 2104);
      v95 = *(v1 + 2112);
      v97 = *(v1 + 2096);
      v63 = *(v1 + 2088);
      v64 = *(v1 + 2080);
      v65 = *(v1 + 1840);
      v66 = *(v1 + 1808);
      v100 = *(v1 + 1800);
      v102 = *(v1 + 1824);
      v98 = *(v1 + 1784);
      v67 = *(v63 + 16);
      v67(v62);
      sub_10006CDC8(v65);
      v68 = URLComponents.path.modify();
      v69._countAndFlagsBits = 0x6566664F706F7473;
      v69._object = 0xE900000000000072;
      String.append(_:)(v69);
      v68(v1 + 1736, 0);
      v70 = *(v63 + 8);
      *(v1 + 2432) = v70;
      *(v1 + 2440) = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v70(v62, v64);
      (v67)(v97, v95, v64);
      v71 = *(v66 + 16);
      *(v1 + 2448) = v71;
      *(v1 + 2456) = (v66 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v71(v102, v98, v100);

      v72 = swift_task_alloc();
      *(v1 + 2464) = v72;
      *v72 = v1;
      v72[1] = sub_100069DD4;
      v73 = *(v1 + 2096);
      v74 = *(v1 + 1824);

      return sub_100156E70(v73, v92, v74);
    }

    else
    {
      if (qword_1005A7EC8 != -1)
      {
LABEL_45:
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      sub_10000A6F0(v75, qword_1005DFB18);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v103 = v79;
        *v78 = 136446210;
        *(v78 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004DEAD0, &v103);
        _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s no handle with serverID!", v78, 0xCu);
        sub_100004984(v79);
      }

      v80 = *(v1 + 2112);
      v81 = *(v1 + 2088);
      v82 = *(v1 + 2080);
      (*(*(v1 + 1808) + 16))(*(v1 + 1816), *(v1 + 1784), *(v1 + 1800));

      sub_10006D898(_swiftEmptyArrayStorage);
      FriendshipRequestResult.init(request:result:requestIds:)();

      (*(v81 + 8))(v80, v82);

      v83 = *(v1 + 8);

      return v83();
    }
  }
}

uint64_t sub_100068518()
{
  v25 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = v0[244];
  v2 = v0[243];
  v3 = v0[240];
  v4 = v0[239];
  v5 = type metadata accessor for Logger();
  v0[287] = sub_10000A6F0(v5, qword_1005DFF18);
  v6 = *(v3 + 16);
  v0[288] = v6;
  v0[289] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[243];
  v11 = v0[240];
  v12 = v0[239];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v13 = 136446722;
    *(v13 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004DEAF0, &v24);
    *(v13 + 12) = 2080;
    sub_100008F78(&qword_1005A9198, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_10000D01C(v14, v16, &v24);

    *(v13 + 14) = v18;
    *(v13 + 22) = 1026;
    *(v13 + 24) = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s type: %s shouldRefresh: %{BOOL,public}d", v13, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[290] = v17;
  v19 = swift_task_alloc();
  v0[291] = v19;
  *v19 = v0;
  v19[1] = sub_100068800;
  v20 = v0[258];
  v21 = v0[244];
  v22 = v0[238];

  return sub_1001E3D9C(v22, v20, v21, 0);
}

uint64_t sub_100068800()
{
  v1 = *(*v0 + 2208);

  return _swift_task_switch(sub_100068910, v1, 0);
}

uint64_t sub_100068910()
{
  v1 = v0[238];
  v2 = type metadata accessor for Friend();
  v0[292] = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  v0[293] = v3;
  v6 = v3 + 48;
  v5 = *(v3 + 48);
  v0[294] = v5;
  v0[295] = v6 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v2) == 1)
  {
    sub_100002CE0(v1, &qword_1005A9188, &unk_1004D80D0);
    v7 = 1;
  }

  else
  {
    Friend.handle.getter();
    (*(v4 + 8))(v1, v2);
    v7 = 0;
  }

  v8 = v0[290];
  v9 = v0[247];
  v10 = v0[246];
  v11 = v0[244];
  v12 = v0[239];
  v13 = v0[224];
  v14 = v0[240] + 8;
  v15 = *(v0[248] + 56);
  v0[296] = v15;
  v15(v10, v7, 1, v9);
  v0[297] = v14 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v11, v12);

  return _swift_task_switch(sub_100068AB0, v13, 0);
}

uint64_t sub_100068AB0()
{
  v1 = *(v0 + 1984);
  v2 = *(v0 + 1976);
  v3 = *(v0 + 1968);
  v4 = *(v1 + 48);
  *(v0 + 2384) = v4;
  *(v0 + 2392) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v2) == 1)
  {
    sub_100002CE0(v3, &qword_1005B3360, &unk_1004C6AA0);
    v5 = *(v0 + 2264);
  }

  else
  {
    v6 = *(v0 + 2248);
    v7 = *(v0 + 2048);
    v8 = *(v0 + 2040);
    v9 = *(v1 + 32);
    v9(v7, v3, v2);
    v6(v8, v7, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + 2264);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1001FCA0C(0, v5[2] + 1, 1, *(v0 + 2264));
    }

    v12 = v5[2];
    v11 = v5[3];
    if (v12 >= v11 >> 1)
    {
      v5 = sub_1001FCA0C((v11 > 1), v12 + 1, 1, v5);
    }

    v13 = *(v0 + 2240);
    v14 = *(v0 + 2040);
    v15 = *(v0 + 1976);
    v16 = (*(v0 + 2520) + 32) & ~*(v0 + 2520);
    (*(*(v0 + 1984) + 8))(*(v0 + 2048), v15);
    v5[2] = v12 + 1;
    v9(v5 + v16 + v13 * v12, v14, v15);
    *(v0 + 1768) = v5;
  }

  *(v0 + 2400) = v5;
  v17 = *(v0 + 2208);
  (*(v0 + 2280))(*(v0 + 1936), *(v0 + 2528), *(v0 + 1912));

  return _swift_task_switch(sub_100068CAC, v17, 0);
}

uint64_t sub_100068CAC()
{
  v18 = v0;
  (*(v0 + 2304))(*(v0 + 1928), *(v0 + 1936), *(v0 + 1912));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 2320);
  v5 = *(v0 + 1928);
  v6 = *(v0 + 1912);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136446722;
    *(v7 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004DEAF0, &v17);
    *(v7 + 12) = 2080;
    sub_100008F78(&qword_1005A9198, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v4(v5, v6);
    v11 = sub_10000D01C(v8, v10, &v17);

    *(v7 + 14) = v11;
    *(v7 + 22) = 1026;
    *(v7 + 24) = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s type: %s shouldRefresh: %{BOOL,public}d", v7, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    v4(v5, v6);
  }

  v12 = swift_task_alloc();
  *(v0 + 2408) = v12;
  *v12 = v0;
  v12[1] = sub_100068F0C;
  v13 = *(v0 + 2064);
  v14 = *(v0 + 1936);
  v15 = *(v0 + 1896);

  return sub_1001E3D9C(v15, v13, v14, 0);
}

uint64_t sub_100068F0C()
{
  v1 = *(*v0 + 2208);

  return _swift_task_switch(sub_10006901C, v1, 0);
}

uint64_t sub_10006901C()
{
  v1 = *(v0 + 2336);
  v2 = *(v0 + 1896);
  if ((*(v0 + 2352))(v2, 1, v1) == 1)
  {
    sub_100002CE0(v2, &qword_1005A9188, &unk_1004D80D0);
    v3 = 1;
  }

  else
  {
    v4 = *(v0 + 2344);
    Friend.handle.getter();
    (*(v4 + 8))(v2, v1);
    v3 = 0;
  }

  v5 = *(v0 + 2320);
  v6 = *(v0 + 1936);
  v7 = *(v0 + 1912);
  v8 = *(v0 + 1792);
  (*(v0 + 2368))(*(v0 + 1960), v3, 1, *(v0 + 1976));
  v5(v6, v7);

  return _swift_task_switch(sub_100069140, v8, 0);
}

uint64_t sub_100069140()
{
  v116 = v0;
  v1 = *(v0 + 1976);
  v2 = *(v0 + 1960);
  if ((*(v0 + 2384))(v2, 1, v1) != 1)
  {
    v4 = *(v0 + 2248);
    v5 = *(v0 + 2032);
    v6 = *(v0 + 2024);
    v112 = *(*(v0 + 1984) + 32);
    v112(v5, v2, v1);
    v4(v6, v5, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v0 + 2400);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1001FCA0C(0, *(v8 + 2) + 1, 1, v8);
    }

    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v103 = sub_1001FCA0C((v9 > 1), v10 + 1, 1, v8);
    }

    else
    {
      v103 = v8;
    }

    v11 = *(v0 + 2240);
    v12 = *(v0 + 2064);
    v13 = *(v0 + 2024);
    v14 = *(v0 + 1976);
    v15 = (*(v0 + 2520) + 32) & ~*(v0 + 2520);
    v16 = *(*(v0 + 1984) + 8);
    v16(*(v0 + 2032), v14);
    v16(v12, v14);
    i = v103;
    *(v103 + 2) = v10 + 1;
    v112(&v103[v15 + v11 * v10], v13, v14);
    goto LABEL_14;
  }

  (*(*(v0 + 1984) + 8))(*(v0 + 2064), v1);
  sub_100002CE0(v2, &qword_1005B3360, &unk_1004C6AA0);
  for (i = *(v0 + 2400); ; *(v0 + 1768) = i)
  {
    v33 = *(v0 + 2256) + 1;
    if (v33 == *(v0 + 2232))
    {
      break;
    }

    *(v0 + 2264) = i;
    *(v0 + 2256) = v33;
    v17 = *(v0 + 2248);
    v18 = *(v0 + 2064);
    v19 = *(v0 + 1976);
    v20 = *(v0 + 2224) + ((*(v0 + 2520) + 32) & ~*(v0 + 2520)) + *(v0 + 2240) * v33;
    *(v0 + 2272) = (*(v0 + 1984) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17(v18, v20, v19);
    Handle.serverID.getter();
    if (!v21)
    {
      v80 = *(v0 + 2524);
      v81 = *(v0 + 2208);
      v82 = *(v0 + 1952);
      v83 = *(v0 + 1920);
      v84 = *(v0 + 1912);
      v85 = *(v83 + 104);
      *(v0 + 2280) = v85;
      *(v0 + 2288) = (v83 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v85(v82, v80, v84);

      return _swift_task_switch(sub_100068518, v81, 0);
    }

    v22 = *(v0 + 2248);
    v23 = *(v0 + 2064);
    v24 = *(v0 + 2056);
    v25 = *(v0 + 1976);

    v22(v24, v23, v25);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_49:
      i = sub_1001FCA0C(0, *(i + 2) + 1, 1, i);
    }

    v27 = *(i + 2);
    v26 = *(i + 3);
    if (v27 >= v26 >> 1)
    {
      i = sub_1001FCA0C((v26 > 1), v27 + 1, 1, i);
    }

    v28 = *(v0 + 2240);
    v29 = *(v0 + 2056);
    v30 = *(v0 + 1984);
    v31 = *(v0 + 1976);
    v32 = (*(v0 + 2520) + 32) & ~*(v0 + 2520);
    (*(v30 + 8))(*(v0 + 2064), v31);
    *(i + 2) = v27 + 1;
    (*(v30 + 32))(&i[v32 + v28 * v27], v29, v31);
LABEL_14:
    ;
  }

  *(v0 + 2416) = i;
  v34 = FriendshipRequest.toHandles.getter();
  v35 = sub_10006D5B8(v34, (v0 + 1768));

  v101 = v35[2];
  v102 = v35;
  v104 = i;
  if (v101)
  {
    v36 = 0;
    v37 = *(v0 + 1984);
    v99 = v35 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v98 = enum case for FriendshipRequestError.missingServerId(_:);
    v97 = enum case for FriendshipRequestStatus.failure(_:);
    v96 = *(v0 + 1856);
    v107 = (v96 + 32);
    v100 = v37;
    v95 = (v37 + 8);
    v113 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v36 >= v102[2])
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v39 = *(v0 + 2016);
      v40 = *(v0 + 2008);
      v41 = *(v0 + 1976);
      v42 = *(v0 + 1888);
      v43 = *(v0 + 1880);
      i = *(v0 + 1848);
      v105 = *(v100 + 72);
      v44 = *(v100 + 16);
      v44(v39, &v99[v105 * v36], v41);
      v44(v40, v39, v41);
      v45 = type metadata accessor for FriendshipRequestError();
      (*(*(v45 - 8) + 104))(v42, v98, v45);
      (*(v96 + 104))(v42, v97, i);
      v46 = *v107;
      (*v107)(v43, v42, i);
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v115 = v113;
      v48 = sub_1001FD93C(v40);
      v50 = v113[2];
      v51 = (v49 & 1) == 0;
      v52 = __OFADD__(v50, v51);
      v53 = v50 + v51;
      if (v52)
      {
        goto LABEL_48;
      }

      v54 = v49;
      if (v113[3] >= v53)
      {
        if ((v47 & 1) == 0)
        {
          v65 = v48;
          sub_100202BBC();
          v48 = v65;
          v113 = v115;
        }
      }

      else
      {
        v55 = *(v0 + 2008);
        sub_10022C98C(v53, v47);
        v48 = sub_1001FD93C(v55);
        if ((v54 & 1) != (v56 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v113 = v115;
      }

      v110 = *(v0 + 2016);
      v57 = *(v0 + 2008);
      v58 = *(v0 + 1976);
      v59 = *(v0 + 1880);
      v60 = *(v0 + 1848);
      if (v54)
      {
        (*(v96 + 40))(v113[7] + *(v96 + 72) * v48, *(v0 + 1880), *(v0 + 1848));
        v38 = *v95;
        (*v95)(v57, v58);
        v38(v110, v58);
      }

      else
      {
        v113[(v48 >> 6) + 8] |= 1 << v48;
        v61 = v48;
        v44(v113[6] + v48 * v105, v57, v58);
        v46(v113[7] + *(v96 + 72) * v61, v59, v60);
        v62 = *v95;
        (*v95)(v57, v58);
        v62(v110, v58);
        v63 = v113[2];
        v52 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v52)
        {
          __break(1u);
          goto LABEL_51;
        }

        v113[2] = v64;
      }

      ++v36;
      i = v104;
      if (v101 == v36)
      {
        goto LABEL_31;
      }
    }
  }

  v113 = _swiftEmptyDictionarySingleton;
LABEL_31:
  *(v0 + 2424) = v113;

  if (*(i + 2))
  {
    v66 = *(v0 + 2104);
    v106 = *(v0 + 2112);
    v108 = *(v0 + 2096);
    v67 = *(v0 + 2088);
    v68 = *(v0 + 2080);
    v69 = *(v0 + 1840);
    v70 = *(v0 + 1808);
    v111 = *(v0 + 1800);
    v114 = *(v0 + 1824);
    v109 = *(v0 + 1784);
    v71 = *(v67 + 16);
    v71(v66);
    sub_10006CDC8(v69);
    v72 = URLComponents.path.modify();
    v73._countAndFlagsBits = 0x6566664F706F7473;
    v73._object = 0xE900000000000072;
    String.append(_:)(v73);
    v72(v0 + 1736, 0);
    v74 = *(v67 + 8);
    *(v0 + 2432) = v74;
    *(v0 + 2440) = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v74(v66, v68);
    (v71)(v108, v106, v68);
    v75 = *(v70 + 16);
    *(v0 + 2448) = v75;
    *(v0 + 2456) = (v70 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v75(v114, v109, v111);

    v76 = swift_task_alloc();
    *(v0 + 2464) = v76;
    *v76 = v0;
    v76[1] = sub_100069DD4;
    v77 = *(v0 + 2096);
    v78 = *(v0 + 1824);

    return sub_100156E70(v77, v104, v78);
  }

  else
  {
    if (qword_1005A7EC8 != -1)
    {
LABEL_51:
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    sub_10000A6F0(v86, qword_1005DFB18);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v115 = v90;
      *v89 = 136446210;
      *(v89 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004DEAD0, &v115);
      _os_log_impl(&_mh_execute_header, v87, v88, "%{public}s no handle with serverID!", v89, 0xCu);
      sub_100004984(v90);
    }

    v91 = *(v0 + 2112);
    v92 = *(v0 + 2088);
    v93 = *(v0 + 2080);
    (*(*(v0 + 1808) + 16))(*(v0 + 1816), *(v0 + 1784), *(v0 + 1800));

    sub_10006D898(_swiftEmptyArrayStorage);
    FriendshipRequestResult.init(request:result:requestIds:)();

    (*(v92 + 8))(v91, v93);

    v94 = *(v0 + 8);

    return v94();
  }
}

uint64_t sub_100069DD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *v5;
  v8 = *v5;
  *(v8 + 2472) = a1;
  *(v8 + 2480) = a2;
  *(v8 + 2488) = a3;
  *(v8 + 2496) = v4;

  v9 = *(v7 + 1792);
  if (v4)
  {
    v10 = sub_10006A254;
  }

  else
  {
    *(v8 + 2532) = a4 & 1;
    v10 = sub_100069F28;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100069F28()
{
  v1 = *(v0 + 2532);
  v2 = *(v0 + 2488);
  v3 = *(v0 + 2480);
  v4 = *(v0 + 2472);
  v5 = *(v0 + 1840);
  *(v0 + 1640) = *(v0 + 1832);
  *(v0 + 1648) = sub_100008F78(&qword_1005A9160, type metadata accessor for FriendshipEndpoint, &unk_1004C73D4);
  v6 = sub_10000331C((v0 + 1616));
  sub_10006DEE0(v5, v6, type metadata accessor for FriendshipEndpoint);
  *(v0 + 1680) = &type metadata for FriendshipStopOfferRequest;
  *(v0 + 1688) = sub_10006DB78();
  v7 = swift_allocObject();
  *(v0 + 1656) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;

  sub_10002CF44(v3, v2);
  Account.dsid.getter();
  Account.appToken.getter();
  *(v0 + 1720) = type metadata accessor for BasicCredential();
  *(v0 + 1728) = &protocol witness table for BasicCredential;
  sub_10000331C((v0 + 1696));
  BasicCredential.init(username:password:)();
  v8 = swift_task_alloc();
  *(v0 + 2504) = v8;
  *v8 = v0;
  v8[1] = sub_10006A0F8;

  return sub_1001D7B78(v0 + 16, v0 + 1616, v0 + 1656, v0 + 1696);
}

uint64_t sub_10006A0F8()
{
  v2 = *v1;
  *(*v1 + 2512) = v0;

  if (v0)
  {
    v3 = v2[224];
    sub_100002CE0((v2 + 212), &qword_1005A9138, &qword_1004C2600);
    v4 = sub_10006B198;
  }

  else
  {
    v3 = v2[224];
    sub_100002CE0((v2 + 212), &qword_1005A9138, &qword_1004C2600);
    sub_100004984(v2 + 207);
    sub_100004984(v2 + 202);
    v4 = sub_10006A4C0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10006A254()
{
  v1 = v0[304];
  v2 = v0[264];
  v3 = v0[260];
  v4 = v0[230];

  sub_10006DE80(v4, type metadata accessor for FriendshipEndpoint);
  v1(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10006A4C0()
{
  v75 = v0;
  v1 = *(v0 + 2416);
  v67 = *(v1 + 16);
  if (v67)
  {
    v2 = 0;
    v3 = *(v0 + 1984);
    v4 = *(v0 + 1856);
    v65 = *(v0 + 240);
    v59 = *(v0 + 256);
    v64 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v56 = enum case for FriendshipRequestStatus.pending(_:);
    v63 = (v4 + 104);
    v55 = enum case for FriendshipRequestStatus.success(_:);
    v57 = enum case for FriendshipRequestError.commandFailed(_:);
    v60 = enum case for FriendshipRequestStatus.failure(_:);
    v58 = enum case for FriendshipRequestError.invalidResponse(_:);
    v73 = (v4 + 32);
    v66 = v3;
    v61 = (v3 + 8);
    v62 = v4;
    v5 = *(v0 + 2424);
    while (1)
    {
      if (v2 >= *(*(v0 + 2416) + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v7 = *(v0 + 2000);
      v8 = *(v0 + 1992);
      v9 = *(v0 + 1976);
      v10 = *(v66 + 72);
      v11 = *(v66 + 16);
      v11(v7, v64 + v10 * v2, v9);
      v11(v8, v7, v9);
      if (v65 == 1)
      {
        break;
      }

      if ((v59 - 3) < 0x12 || !v59)
      {
        v14 = *(v0 + 1872);
        v15 = type metadata accessor for FriendshipRequestError();
        (*(*(v15 - 8) + 104))(v14, v57, v15);
        goto LABEL_10;
      }

      v16 = v56;
      if (v59 == 1)
      {
        v16 = v55;
      }

LABEL_11:
      v17 = *(v0 + 1992);
      v18 = *(v0 + 1872);
      v19 = *(v0 + 1864);
      v20 = *(v0 + 1848);
      (*v63)(v18, v16, v20);
      v21 = *v73;
      (*v73)(v19, v18, v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v5;
      v23 = sub_1001FD93C(v17);
      v25 = v5[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_34;
      }

      v29 = v24;
      v69 = v10;
      v71 = v11;
      if (v5[3] >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v41 = v23;
          sub_100202BBC();
          v23 = v41;
          v5 = v74;
        }
      }

      else
      {
        v30 = *(v0 + 1992);
        sub_10022C98C(v28, isUniquelyReferenced_nonNull_native);
        v23 = sub_1001FD93C(v30);
        if ((v29 & 1) != (v31 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v5 = v74;
      }

      v32 = *(v0 + 2000);
      v33 = *(v0 + 1992);
      v34 = *(v0 + 1976);
      v35 = *(v0 + 1864);
      v36 = *(v0 + 1848);
      if (v29)
      {
        (*(v62 + 40))(v5[7] + *(v62 + 72) * v23, *(v0 + 1864), *(v0 + 1848));
        v6 = *v61;
        (*v61)(v33, v34);
        v6(v32, v34);
      }

      else
      {
        v5[(v23 >> 6) + 8] |= 1 << v23;
        v37 = v23;
        v71(v5[6] + v23 * v69, v33, v34);
        v21(v5[7] + *(v62 + 72) * v37, v35, v36);
        v38 = *v61;
        (*v61)(v33, v34);
        v38(v32, v34);
        v39 = v5[2];
        v27 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v27)
        {
          goto LABEL_35;
        }

        v5[2] = v40;
      }

      if (v67 == ++v2)
      {
        goto LABEL_23;
      }
    }

    v12 = *(v0 + 1872);
    v13 = type metadata accessor for FriendshipRequestError();
    (*(*(v13 - 8) + 104))(v12, v58, v13);
LABEL_10:
    v16 = v60;
    goto LABEL_11;
  }

LABEL_23:
  if (qword_1005A80F8 != -1)
  {
LABEL_36:
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_10000A6F0(v42, qword_1005DFFE8);
  sub_10006DAC8(v0 + 16, v0 + 816);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  sub_10005D06C(v0 + 16);
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v45 = 136446466;
    *(v45 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004DEAD0, &v74);
    *(v45 + 12) = 2080;
    v46 = sub_100176040();
    v48 = v47;
    sub_10005D06C(v0 + 16);
    v49 = sub_10000D01C(v46, v48, &v74);

    *(v45 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v43, v44, "CommandManager %{public}s\nresponse: %s", v45, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10005D06C(v0 + 16);
  }

  v50 = *(v0 + 2488);
  v51 = *(v0 + 2480);
  v72 = *(v0 + 2432);
  v70 = *(v0 + 2112);
  v68 = *(v0 + 2080);
  v52 = *(v0 + 1840);
  (*(v0 + 2448))(*(v0 + 1816), *(v0 + 1784), *(v0 + 1800));

  sub_10006D898(_swiftEmptyArrayStorage);
  FriendshipRequestResult.init(request:result:requestIds:)();

  sub_10001A794(v51, v50);
  sub_10006DE80(v52, type metadata accessor for FriendshipEndpoint);
  v72(v70, v68);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_10006AD5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006AF68()
{
  v1 = v0[264];
  v2 = v0[261];
  v3 = v0[260];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006B198()
{
  v1 = v0[311];
  v2 = v0[310];
  v3 = v0[304];
  v4 = v0[264];
  v5 = v0[260];
  v6 = v0[230];

  sub_10001A794(v2, v1);
  sub_10006DE80(v6, type metadata accessor for FriendshipEndpoint);
  v3(v4, v5);
  sub_100004984(v0 + 207);
  sub_100004984(v0 + 202);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10006B438(uint64_t a1, uint64_t a2)
{
  v3[330] = v2;
  v3[329] = a2;
  v3[328] = a1;
  v3[331] = type metadata accessor for FriendshipEndpoint(0);
  v3[332] = swift_task_alloc();
  sub_10004B564(&qword_1005A9110, &qword_1004C25F8);
  v3[333] = swift_task_alloc();
  v4 = type metadata accessor for Account();
  v3[334] = v4;
  v3[335] = *(v4 - 8);
  v3[336] = swift_task_alloc();
  v3[337] = swift_task_alloc();
  v3[338] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[339] = v5;
  *v5 = v3;
  v5[1] = sub_10006B5B0;

  return daemon.getter();
}

uint64_t sub_10006B5B0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[340] = a1;

  v3 = swift_task_alloc();
  v2[341] = v3;
  v4 = type metadata accessor for Daemon();
  v2[342] = v4;
  v5 = type metadata accessor for AccountService(0);
  v6 = sub_100008F78(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[343] = v6;
  v7 = sub_100008F78(&qword_1005A9118, type metadata accessor for AccountService, &unk_1004DCC10);
  *v3 = v9;
  v3[1] = sub_10006B790;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10006B790(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[344] = a1;
  v3[345] = v1;

  if (v1)
  {
    v5 = v3[330];

    return _swift_task_switch(sub_10006CAD8, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[346] = v6;
    *v6 = v4;
    v6[1] = sub_10006B920;
    v7 = v3[333];

    return sub_10000EB24(v7);
  }
}

uint64_t sub_10006B920()
{
  v1 = *(*v0 + 2640);

  return _swift_task_switch(sub_10006BA30, v1, 0);
}

uint64_t sub_10006BA30()
{
  v1 = v0[335];
  v2 = v0[334];
  v3 = v0[333];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    if (qword_1005A7F90 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFC40);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing primary account to stop sharing!", v7, 2u);
    }

    sub_10006D30C();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[338];
    v12 = v0[337];
    v13 = v0[332];
    v22 = v0[336];
    (*(v1 + 32))(v11, v3, v2);
    v14 = *(v1 + 16);
    v14(v12, v11, v2);
    sub_10006CDC8(v13);
    v15 = URLComponents.path.modify();
    v16._countAndFlagsBits = 0x74726F706D69;
    v16._object = 0xE600000000000000;
    String.append(_:)(v16);
    v15(v0 + 317, 0);
    v17 = *(v1 + 8);
    v0[347] = v17;
    v0[348] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v12, v2);
    v14(v22, v11, v2);

    v18 = swift_task_alloc();
    v0[349] = v18;
    *v18 = v0;
    v18[1] = sub_10006BDA4;
    v19 = v0[336];
    v20 = v0[329];
    v21 = v0[328];

    return sub_10014B938(v19, v21, v20);
  }
}

uint64_t sub_10006BDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[350] = a1;
  v5[351] = a2;
  v5[352] = a3;
  v5[353] = v3;

  if (v3)
  {
    v6 = v5[330];

    return _swift_task_switch(sub_10006C224, v6, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v5[354] = v7;
    *v7 = v5;
    v7[1] = sub_10006BF1C;

    return daemon.getter();
  }
}

uint64_t sub_10006BF1C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 2840) = a1;

  v5 = swift_task_alloc();
  *(v3 + 2848) = v5;
  v6 = type metadata accessor for DataManager(0);
  v7 = sub_100008F78(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v5 = v4;
  v5[1] = sub_10006C0D0;
  v8 = *(v2 + 2744);
  v9 = *(v2 + 2736);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10006C0D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 2856) = a1;
  *(v4 + 2864) = v1;

  v5 = *(v3 + 2640);

  if (v1)
  {
    v6 = sub_10006CB84;
  }

  else
  {
    v6 = sub_10006C30C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10006C224()
{
  v1 = v0[347];
  v2 = v0[338];
  v3 = v0[334];
  v4 = v0[332];

  sub_10006DE80(v4, type metadata accessor for FriendshipEndpoint);
  v1(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10006C30C()
{
  v1 = v0[352];
  v2 = v0[351];
  v3 = v0[350];
  v4 = v0[332];
  v0[305] = v0[331];
  v0[306] = sub_100008F78(&qword_1005A9160, type metadata accessor for FriendshipEndpoint, &unk_1004C73D4);
  v5 = sub_10000331C(v0 + 302);
  sub_10006DEE0(v4, v5, type metadata accessor for FriendshipEndpoint);
  v0[310] = &type metadata for FriendshipImportRequest;
  v0[311] = sub_10006DA74();
  v0[307] = v3;
  v0[308] = v2;
  v0[309] = v1;

  sub_10002CF44(v2, v1);
  Account.dsid.getter();
  Account.appToken.getter();
  v0[315] = type metadata accessor for BasicCredential();
  v0[316] = &protocol witness table for BasicCredential;
  sub_10000331C(v0 + 312);
  BasicCredential.init(username:password:)();
  v6 = swift_task_alloc();
  v0[359] = v6;
  *v6 = v0;
  v6[1] = sub_10006C4C0;

  return sub_1001D7B78((v0 + 2), (v0 + 302), (v0 + 307), (v0 + 312));
}

uint64_t sub_10006C4C0()
{
  v2 = *v1;
  *(*v1 + 2880) = v0;

  if (v0)
  {
    v3 = v2[330];
    sub_100002CE0((v2 + 312), &qword_1005A9138, &qword_1004C2600);
    v4 = sub_10006CC94;
  }

  else
  {
    v3 = v2[330];
    sub_100002CE0((v2 + 312), &qword_1005A9138, &qword_1004C2600);
    sub_100004984(v2 + 307);
    sub_100004984(v2 + 302);
    v4 = sub_10006C61C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10006C61C()
{
  v39 = v0;
  if (qword_1005A80F8 != -1)
  {
    swift_once();
  }

  v1 = v0[352];
  v2 = v0[351];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFFE8);

  sub_10002CF44(v2, v1);
  sub_10006DAC8((v0 + 2), (v0 + 102));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  sub_10001A794(v2, v1);
  sub_10005D06C((v0 + 2));
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[352];
    v7 = v0[351];
    v8 = v0[350];
    v9 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v9 = 136446722;
    *(v9 + 4) = sub_10000D01C(0xD000000000000014, 0x80000001004DEAB0, &v38);
    *(v9 + 12) = 2082;
    v0[321] = v8;
    v0[322] = v7;
    v0[323] = v6;

    sub_10002CF44(v7, v6);
    sub_10006DB24();
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v13 = v0[322];
    v14 = v0[323];

    sub_10001A794(v13, v14);
    v15 = sub_10000D01C(v10, v12, &v38);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;
    sub_10006DAC8((v0 + 2), (v0 + 202));
    v16 = sub_100176040();
    v18 = v17;
    sub_10005D06C((v0 + 2));
    v19 = sub_10000D01C(v16, v18, &v38);

    *(v9 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v4, v5, "CommandManager %{public}s\nrequest: %{public}s\nresponse: %s", v9, 0x20u);
    swift_arrayDestroy();
  }

  if (v0[30] == 1)
  {
    v20 = v0[352];
    v21 = v0[351];

    sub_10005D06C((v0 + 2));
LABEL_11:

    v30 = v21;
    v31 = v20;
    goto LABEL_12;
  }

  v23 = v0[33];
  v22 = v0[34];

  sub_10005D06C((v0 + 2));

  if (!v22)
  {
    v20 = v0[352];
    v21 = v0[351];

    goto LABEL_11;
  }

  v0[324] = v23;
  v0[325] = v22;
  v0[326] = 47;
  v0[327] = 0xE100000000000000;
  sub_1000246F4();
  v24 = StringProtocol.components<A>(separatedBy:)();

  v25 = *(v24 + 16);
  v26 = v0[352];
  v27 = v0[351];
  if (v25)
  {
    v28 = (v24 + 16 + 16 * v25);
    v29 = v28[1];
    v37 = *v28;

    sub_10001A794(v27, v26);
    goto LABEL_13;
  }

  v30 = v27;
  v31 = v26;
LABEL_12:
  sub_10001A794(v30, v31);
  v37 = 0;
  v29 = 0;
LABEL_13:
  v32 = v0[347];
  v33 = v0[338];
  v34 = v0[334];
  sub_10006DE80(v0[332], type metadata accessor for FriendshipEndpoint);
  v32(v33, v34);

  v35 = v0[1];

  return v35(v37, v29);
}

uint64_t sub_10006CAD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006CB84()
{
  v1 = v0[352];
  v2 = v0[351];
  v3 = v0[347];
  v4 = v0[338];
  v5 = v0[334];
  v6 = v0[332];

  sub_10001A794(v2, v1);
  sub_10006DE80(v6, type metadata accessor for FriendshipEndpoint);
  v3(v4, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10006CC94()
{
  v1 = v0[352];
  v2 = v0[351];
  v3 = v0[347];
  v4 = v0[338];
  v5 = v0[334];
  v6 = v0[332];

  sub_10001A794(v2, v1);
  sub_10006DE80(v6, type metadata accessor for FriendshipEndpoint);
  v3(v4, v5);
  sub_100004984(v0 + 307);
  sub_100004984(v0 + 302);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10006CDC8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004B564(&qword_1005A9178, &qword_1004CCD60);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v5 = type metadata accessor for URLComponents();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = Account.peopleURL.getter();
  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = v13;
  v15 = v12;
  URLComponents.init(string:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_100002CE0(v4, &qword_1005A9178, &qword_1004CCD60);
LABEL_4:
    URLComponents.init()();
    URLComponents.scheme.setter();
    Account.appHostName.getter();
    URLComponents.host.setter();
    if (qword_1005A7FF0 != -1)
    {
      swift_once();
    }

    URLComponents.path.setter();
    if (qword_1005A85C0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000A6F0(v16, qword_1005E0D30);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34[0] = v20;
      *v19 = 136315138;
      swift_beginAccess();
      sub_100008F78(&qword_1005A9180, &type metadata accessor for URLComponents, &protocol conformance descriptor for URLComponents);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = sub_10000D01C(v21, v22, v34);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Fallback to hardcoded URL: %s", v19, 0xCu);
      sub_100004984(v20);
    }

    swift_beginAccess();
    (*(v6 + 16))(a1, v9, v5);
    return (*(v6 + 8))(v9, v5);
  }

  v33 = a1;
  v25 = *(v6 + 32);
  v25(v11, v4, v5);
  if (qword_1005A85C0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000A6F0(v26, qword_1005E0D30);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v34[0] = v30;
    *v29 = 136315138;
    v31 = sub_10000D01C(v15, v14, v34);

    *(v29 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v27, v28, "Using people URL: %s", v29, 0xCu);
    sub_100004984(v30);
  }

  else
  {
  }

  return (v25)(v33, v11, v5);
}

unint64_t sub_10006D30C()
{
  result = qword_1005A9158;
  if (!qword_1005A9158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9158);
  }

  return result;
}

unint64_t sub_10006D360(uint64_t a1)
{
  type metadata accessor for Handle();
  sub_100008F78(&qword_1005A91B0, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10006D3F8(a1, v2);
}

unint64_t sub_10006D3F8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for Handle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_100008F78(&qword_1005A91B8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void *sub_10006D5B8(uint64_t a1, void *a2)
{
  v29 = a2;
  v3 = type metadata accessor for Handle();
  v4 = __chkstk_darwin(v3);
  v30 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v28 = *(a1 + 16);
  if (!v28)
  {
    return _swiftEmptyArrayStorage;
  }

  v9 = 0;
  v11 = *(v6 + 16);
  v10 = v6 + 16;
  v12 = *(v10 + 56);
  v31 = (*(v10 + 64) + 32) & ~*(v10 + 64);
  v24 = a1 + v31;
  v25 = v11;
  v23 = (v10 - 8);
  v27 = (v10 + 16);
  v13 = _swiftEmptyArrayStorage;
  v26 = v10;
  do
  {
    v32 = v9 + 1;
    v25(v8, v24 + v12 * v9, v3);
    v16 = *(*v29 + 16);
    v17 = *v29 + v31;

    v18 = v16 + 1;
    while (--v18)
    {
      sub_100008F78(&qword_1005A91B8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      v17 += v12;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {

        (*v23)(v8, v3);
        goto LABEL_6;
      }
    }

    v19 = *v27;
    (*v27)(v30, v8, v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10000E8E0(0, v13[2] + 1, 1);
      v13 = v33;
    }

    v15 = v13[2];
    v14 = v13[3];
    if (v15 >= v14 >> 1)
    {
      sub_10000E8E0((v14 > 1), v15 + 1, 1);
      v13 = v33;
    }

    v13[2] = v15 + 1;
    v19(v13 + v31 + v15 * v12, v30, v3);
LABEL_6:
    v9 = v32;
  }

  while (v32 != v28);
  return v13;
}

unint64_t sub_10006D898(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A91A0, &qword_1004C26E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10004B564(&qword_1005A91A8, &qword_1004C26F0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10006DBCC(v9, v5);
      result = sub_10006D360(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Handle();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10006DA74()
{
  result = qword_1005A9168;
  if (!qword_1005A9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9168);
  }

  return result;
}

unint64_t sub_10006DB24()
{
  result = qword_1005A9170;
  if (!qword_1005A9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9170);
  }

  return result;
}

unint64_t sub_10006DB78()
{
  result = qword_1005A9190;
  if (!qword_1005A9190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9190);
  }

  return result;
}

uint64_t sub_10006DBCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A91A0, &qword_1004C26E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006DC3C()
{
  result = qword_1005A91C8;
  if (!qword_1005A91C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A91C8);
  }

  return result;
}

unint64_t sub_10006DC90()
{
  result = qword_1005A91D0;
  if (!qword_1005A91D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A91D0);
  }

  return result;
}

uint64_t sub_10006DCE4(int a1)
{
  v4 = *(type metadata accessor for FriendshipRequest() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100003690;

  return sub_10006034C(a1, v7, v8, v9, v1 + v5, v1 + v6);
}

uint64_t sub_10006DE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A91E0, &qword_1004C2720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006DE80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10006DEE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10006DF48()
{
  result = qword_1005A9200;
  if (!qword_1005A9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9200);
  }

  return result;
}

unint64_t sub_10006DFA4()
{
  result = qword_1005A9208;
  if (!qword_1005A9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9208);
  }

  return result;
}

uint64_t sub_10006DFF8(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 840) = v3;
  *(v4 + 832) = a3;
  *(v4 + 824) = a2;
  *(v4 + 816) = a1;
  *(v4 + 848) = *v3;
  v5 = type metadata accessor for Handle();
  *(v4 + 856) = v5;
  *(v4 + 864) = *(v5 - 8);
  *(v4 + 872) = swift_task_alloc();
  *(v4 + 880) = swift_task_alloc();

  return _swift_task_switch(sub_10006E0F8, v3, 0);
}

uint64_t sub_10006E0F8()
{
  memcpy((v0 + 16), *(v0 + 824), 0x320uLL);
  if (sub_100033B90(v0 + 16) == 1)
  {
    goto LABEL_30;
  }

  v1 = *(v0 + 248);
  if (*(v0 + 240) == 1 || v1 == 0)
  {
    goto LABEL_30;
  }

  v3 = *(v0 + 816);
  v4 = sub_100207968(_swiftEmptyArrayStorage);
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = *(v0 + 864);
    v8 = *(v6 + 16);
    v6 += 16;
    v7 = v8;
    v9 = *(v0 + 816) + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v10 = *(v6 + 56);
    v54 = v10;
    v55 = (v6 - 8);
    v50 = (v6 + 24);
    v51 = (v6 + 16);
    v53 = v1;
    v52 = v8;
    v8(*(v0 + 880), v9, *(v0 + 856));
    while (1)
    {
      v11 = Handle.identifier.getter();
      if (*(v1 + 16))
      {
        v13 = sub_1000110D8(v11, v12);
        v15 = v14;

        if (v15)
        {
          v16 = (*(v1 + 56) + 16 * v13);
          v18 = *v16;
          v17 = v16[1];
          v7(*(v0 + 872), *(v0 + 880), *(v0 + 856));

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v56 = v4;
          v20 = sub_1000110D8(v18, v17);
          v28 = *(v4 + 16);
          v29 = (v21 & 1) == 0;
          v30 = __OFADD__(v28, v29);
          v31 = v28 + v29;
          if (v30)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            return withTaskGroup<A, B>(of:returning:isolation:body:)(v20, v21, v22, v23, v24, v25, v26, v27);
          }

          v32 = v21;
          if (*(v4 + 24) >= v31)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v42 = v20;
              sub_100202BF8();
              v20 = v42;
            }
          }

          else
          {
            sub_10022C9B4(v31, isUniquelyReferenced_nonNull_native);
            v20 = sub_1000110D8(v18, v17);
            if ((v32 & 1) != (v33 & 1))
            {

              return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            }
          }

          v34 = *(v0 + 880);
          v35 = *(v0 + 872);
          v36 = *(v0 + 856);
          if (v32)
          {
            v37 = v20;

            v4 = v56;
            v38 = v56[7] + v37 * v54;
            v10 = v54;
            (*v50)(v38, v35, v36);
            (*v55)(v34, v36);
          }

          else
          {
            v4 = v56;
            v56[(v20 >> 6) + 8] |= 1 << v20;
            v39 = (v56[6] + 16 * v20);
            *v39 = v18;
            v39[1] = v17;
            v10 = v54;
            (*v51)(v56[7] + v20 * v54, v35, v36);
            v20 = (*v55)(v34, v36);
            v40 = v56[2];
            v30 = __OFADD__(v40, 1);
            v41 = v40 + 1;
            if (v30)
            {
              goto LABEL_37;
            }

            v56[2] = v41;
          }

          v1 = v53;
          v7 = v52;
        }

        else
        {
          (*v55)(*(v0 + 880), *(v0 + 856));
          v10 = v54;
        }
      }

      else
      {
        (*v55)(*(v0 + 880), *(v0 + 856));
      }

      v9 += v10;
      if (!--v5)
      {
        break;
      }

      v7(*(v0 + 880), v9, *(v0 + 856));
    }
  }

  *(v0 + 888) = v4;
  if (!*(v4 + 16))
  {

LABEL_30:

    v48 = *(v0 + 8);

    return v48();
  }

  v43 = *(v0 + 848);
  v44 = *(v0 + 840);
  v45 = *(v0 + 832);
  v46 = sub_10007CBF4(&qword_1005A90C0, type metadata accessor for CommandManager, &unk_1004C2458);
  v47 = swift_task_alloc();
  *(v0 + 896) = v47;
  v47[2] = v4;
  v47[3] = v44;
  v47[4] = v45;
  v47[5] = v43;
  v20 = swift_task_alloc();
  *(v0 + 904) = v20;
  *v20 = v0;
  *(v20 + 8) = sub_10006E5E0;
  v21 = &type metadata for () + 1;
  v25 = &unk_1004C2840;
  v22 = &type metadata for () + 1;
  v23 = v44;
  v24 = v46;
  v26 = v47;
  v27 = &type metadata for () + 1;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_10006E5E0()
{
  v1 = *(*v0 + 840);

  return _swift_task_switch(sub_10006E730, v1, 0);
}

uint64_t sub_10006E730()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006E79C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = a6;
  *(v6 + 96) = a1;
  *(v6 + 80) = a4;
  *(v6 + 88) = a5;
  *(v6 + 72) = a3;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  v8 = type metadata accessor for Handle();
  *(v6 + 128) = v8;
  v9 = *(v8 - 8);
  *(v6 + 136) = v9;
  *(v6 + 144) = *(v9 + 64);
  *(v6 + 152) = swift_task_alloc();
  sub_10004B564(&qword_1005A91E0, &qword_1004C2720);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_10006E8FC, a5, 0);
}

void sub_10006E8FC()
{
  v53 = *(v0 + 168);
  v50 = *(v0 + 160);
  v1 = *(v0 + 80);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 80) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v48 = (63 - v6) >> 6;
  v49 = *(v0 + 80);
  v54 = *(v0 + 136);
  v51 = *(v0 + 144) + 7;

  v8 = 0;
  v52 = v3;
  while (v7)
  {
    v11 = v8;
LABEL_16:
    v15 = *(v0 + 152);
    v14 = *(v0 + 160);
    v16 = *(v0 + 128);
    v17 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v18 = v17 | (v11 << 6);
    v19 = (*(v49 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    (*(v54 + 16))(v15, *(v49 + 56) + *(v54 + 72) * v18, v16);
    v22 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
    v23 = *(v22 + 48);
    *v14 = v21;
    *(v50 + 8) = v20;
    (*(v54 + 32))(&v14[v23], v15, v16);
    (*(*(v22 - 8) + 56))(v14, 0, 1, v22);

LABEL_17:
    v24 = *(v0 + 168);
    sub_10006DE10(*(v0 + 160), v24);
    v25 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
    v26 = (*(*(v25 - 8) + 48))(v24, 1, v25);
    v27 = *(v0 + 168);
    v28 = *(v0 + 112);
    v29 = *(v0 + 120);
    if (v26 == 1)
    {

      v47 = *(v0 + 8);

      v47();
      return;
    }

    v30 = *(v0 + 152);
    v31 = *(v0 + 128);
    v55 = v30;
    v32 = *(v0 + 96);
    v61 = *(v0 + 88);
    v62 = *(v0 + 104);
    v60 = *v27;
    v59 = *(v53 + 8);
    v33 = *(v25 + 48);
    v56 = type metadata accessor for TaskPriority();
    v58 = *(v56 - 8);
    (*(v58 + 56))(v29, 1, 1, v56);
    v57 = v28;
    v34 = *(v54 + 32);
    v34(v30, v27 + v33, v31);
    v35 = (*(v54 + 80) + 48) & ~*(v54 + 80);
    v36 = (v51 + v35) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = v60;
    v38[5] = v59;
    v34(v38 + v35, v55, v31);
    *(v38 + v36) = v61;
    *(v38 + v37) = v32;
    *(v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)) = v62;
    sub_10007CE68(v29, v57);
    LODWORD(v34) = (*(v58 + 48))(v57, 1, v56);

    v39 = *(v0 + 112);
    if (v34 == 1)
    {
      sub_100002CE0(*(v0 + 112), &qword_1005A9690, &qword_1004C2A00);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v58 + 8))(v39, v56);
    }

    if (v38[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v40 = dispatch thunk of Actor.unownedExecutor.getter();
      v42 = v41;
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    v43 = **(v0 + 72);
    v44 = swift_allocObject();
    *(v44 + 16) = &unk_1004C2850;
    *(v44 + 24) = v38;

    if (v42 | v40)
    {
      v9 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v40;
      *(v0 + 40) = v42;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(v0 + 120);
    *(v0 + 48) = 1;
    *(v0 + 56) = v9;
    *(v0 + 64) = v43;
    swift_task_create();

    sub_100002CE0(v10, &qword_1005A9690, &qword_1004C2A00);
    v3 = v52;
  }

  if (v48 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v48;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v48)
    {
      v45 = *(v0 + 160);
      v46 = sub_10004B564(&qword_1005A91F0, &qword_1004C2728);
      (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
      v7 = 0;
      v8 = v13;
      goto LABEL_17;
    }

    v7 = *(v3 + 8 * v11);
    ++v8;
    if (v7)
    {
      v8 = v11;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_10006EF0C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a1;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  v9 = type metadata accessor for Handle();
  *(v8 + 56) = v9;
  *(v8 + 64) = *(v9 - 8);
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_10006EFE0, 0, 0);
}

uint64_t sub_10006EFE0()
{
  v28 = v0;
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 10);
  v2 = *(v0 + 7);
  v3 = *(v0 + 8);
  v4 = *(v0 + 4);
  v5 = type metadata accessor for Logger();
  *(v0 + 11) = sub_10000A6F0(v5, qword_1005DFB18);
  v6 = *(v3 + 16);
  *(v0 + 12) = v6;
  *(v0 + 13) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 10);
  v11 = *(v0 + 7);
  v12 = *(v0 + 8);
  if (v9)
  {
    v13 = *(v0 + 2);
    v26 = *(v0 + 3);
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 141558787;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    *(v14 + 14) = sub_10000D01C(v13, v26, &v27);
    *(v14 + 22) = 2160;
    *(v14 + 24) = 1752392040;
    *(v14 + 32) = 2081;
    v15 = Handle.identifier.getter();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v10, v11);
    v19 = sub_10000D01C(v15, v17, &v27);

    *(v14 + 34) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "CommandManager server response contains mapping packet with token %{private,mask.hash}s for handleId:%{private,mask.hash}s", v14, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v10, v11);
  }

  *(v0 + 14) = v18;
  v20 = swift_task_alloc();
  *(v0 + 15) = v20;
  *v20 = v0;
  v20[1] = sub_10006F290;
  v21 = v0[6];
  v22 = *(v0 + 4);
  v24 = *(v0 + 2);
  v23 = *(v0 + 3);

  return sub_10006F620(v24, v23, v22, v21);
}

uint64_t sub_10006F290()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10006F3D4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10006F3D4()
{
  v19 = v0;
  (*(v0 + 96))(*(v0 + 72), *(v0 + 32), *(v0 + 56));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 112);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v16 = v1;
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v8 = Handle.identifier.getter();
    v10 = v9;
    v4(v5, v6);
    v11 = sub_10000D01C(v8, v10, &v18);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v12;
    *v15 = v12;
    _os_log_impl(&_mh_execute_header, v16, v2, "Unable to send IDS Mapping packet for handleId:%{private,mask.hash}s due to %{public}@", v7, 0x20u);
    sub_100002CE0(v15, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v17);
  }

  else
  {

    v4(v5, v6);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10006F620(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 96) = v4;
  *(v5 + 88) = a4;
  *(v5 + 72) = a2;
  *(v5 + 80) = a3;
  *(v5 + 64) = a1;
  v6 = type metadata accessor for UUID();
  *(v5 + 104) = v6;
  *(v5 + 112) = *(v6 - 8);
  *(v5 + 120) = swift_task_alloc();
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  *(v5 + 128) = swift_task_alloc();
  v7 = type metadata accessor for MessagingOptions();
  *(v5 + 136) = v7;
  *(v5 + 144) = *(v7 - 8);
  *(v5 + 152) = swift_task_alloc();
  v8 = type metadata accessor for Destination();
  *(v5 + 160) = v8;
  *(v5 + 168) = *(v8 - 8);
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v5 + 192) = v9;
  *v9 = v5;
  v9[1] = sub_10006F818;

  return daemon.getter();
}

uint64_t sub_10006F818(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 200) = a1;

  v3 = swift_task_alloc();
  *(v2 + 208) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  v6 = sub_10007CBF4(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001DF0C(&qword_1005A90E8, &qword_1005A90E0, &qword_1004C2490, &unk_1004D4FC0);
  *v3 = v9;
  v3[1] = sub_10006FA04;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10006FA04(uint64_t a1)
{
  v3 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {
    v4 = v3[12];
    v5 = sub_1000703E4;
  }

  else
  {
    v6 = v3[12];

    v5 = sub_10006FB2C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}