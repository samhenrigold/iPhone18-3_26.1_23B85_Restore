void *sub_10116AD10(uint64_t a1)
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
    sub_1010100EC(v14 + 48 * v13, &v126);
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
        sub_10000A748(&v126, v123);
        sub_10001F280(v123, v121);
        sub_1000BC4D4(&qword_1016C9730, &unk_1014099C8);
        if (swift_dynamicCast())
        {
          v29.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v121[0] = v7;
          v31 = sub_100771D58(v119, v16);
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
            sub_100FE6894(v35, isUniquelyReferenced_nonNull_native);
            v31 = sub_100771D58(v119, v16);
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
            sub_101005298();
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
        v61 = sub_1000035D0(v123, v124);
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
            sub_1000DF9C0();
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
                sub_1000DF9C0();
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
          v31 = sub_100771D58(v119, v16);
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
              sub_101005298();
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
            sub_100FE6894(v92, v88);
            v31 = sub_100771D58(v119, v16);
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
          sub_1000DF9C0();
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

      sub_10000A748(&v126, v123);
      v48 = sub_1000035D0(v123, v124);
      __chkstk_darwin(v48);
      (*(v50 + 16))(v110 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_1000DFA84();
      BinaryFloatingPoint.init<A>(_:)();
      v29.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v122 = v7;
      v52 = sub_100771D58(v119, v16);
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
          sub_101005298();
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
        sub_100FE6894(v56, v51);
        v52 = sub_100771D58(v119, v16);
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
      sub_100007BAC(v123);
    }

    else
    {
      if (v18)
      {
        sub_10000A748(&v126, v123);
        v38 = sub_1000035D0(v123, v124);
        __chkstk_darwin(v38);
        (*(v40 + 16))(v110 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
        String.init<A>(_:)();
        v29.super.super.isa = String._bridgeToObjectiveC()();

        v41 = swift_isUniquelyReferenced_nonNull_native();
        v121[0] = v7;
        v31 = sub_100771D58(v119, v16);
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
            sub_101005298();
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
          sub_100FE6894(v45, v41);
          v31 = sub_100771D58(v119, v16);
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
      sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
      v20.super.super.isa = NSNumber.init(BOOLeanLiteral:)(v19 & 1).super.super.isa;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v123[0] = v7;
      v22 = sub_100771D58(v119, v16);
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
        sub_101005298();
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
        sub_100FE6894(v26, v21);
        v22 = sub_100771D58(v119, v16);
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

void sub_10116BC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  static Transaction.asyncTask(name:block:)();

  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177CE28);
  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v10, "analytics: logged publish failure event to CA", v11, 2u);
  }
}

uint64_t sub_10116BDD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 728) = a2;
  *(v2 + 720) = a1;
  return _swift_task_switch(sub_10116BDF8, a1, 0);
}

uint64_t sub_10116BDF8()
{
  v14 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = v0[90];
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C6D0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1000136BC(v2, v3, &v13);
      _os_log_impl(&_mh_execute_header, v5, v6, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v0[92] = v11;
    *v11 = v0;
    v11[1] = sub_10116C044;
    v12 = v0[91];

    return sub_100EC653C(v12);
  }
}

uint64_t sub_10116C044(uint64_t a1)
{
  v2 = *(*v1 + 720);
  *(*v1 + 744) = a1;

  return _swift_task_switch(sub_10116C15C, v2, 0);
}

unint64_t sub_10116C15C()
{
  v93 = (v0 + 304);
  v94 = (v0 + 256);
  v1 = (v0 + 352);
  v90 = (v0 + 400);
  v2 = (v0 + 496);
  v3 = *(v0 + 744);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v91 = (v0 + 448);
  v92 = *(v0 + 744);
  v7 = -1 << *(v92 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v98 = *(v0 + 720);
  swift_beginAccess();
  v10 = 0;
  v11 = (63 - v7) >> 6;
  while (v9)
  {
    while (1)
    {
LABEL_12:
      v14 = __clz(__rbit64(v9)) | (v10 << 6);
      v15 = (*(v92 + 48) + 16 * v14);
      v16 = v15[1];
      v99 = *v15;
      sub_101010158(*(v92 + 56) + 48 * v14, v0 + 16);
      v95 = *(v0 + 16);
      v97 = *(v0 + 32);
      v17 = *(v0 + 48);
      v18 = *(v0 + 56);

      if (!v16)
      {
LABEL_76:

        v83 = *(v0 + 8);
        goto LABEL_77;
      }

      v9 &= v9 - 1;
      *(v0 + 64) = v95;
      *(v0 + 80) = v97;
      *(v0 + 96) = v17;
      *(v0 + 104) = v18;
      v19 = *(v98 + 112);
      if (*(v19 + 16))
      {
        break;
      }

LABEL_25:
      sub_101010158(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v30 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_1000DF9C0();
          *(v0 + 256) = v30;
          v31 = 2;
        }

        else
        {
          v33 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000DFA84();
          *(v0 + 256) = v33;
          v31 = 3;
        }

        *(v0 + 296) = v31;
      }

      else
      {
        v32 = *(v0 + 128);
        *v94 = *(v0 + 112);
        *(v0 + 272) = v32;
        *(v0 + 281) = *(v0 + 137);
      }

      swift_beginAccess();
      sub_1010100EC(v94, v93);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v98 + 112);
      *&v100 = v7;
      *(v98 + 112) = 0x8000000000000000;
      result = sub_100771D58(v99, v16);
      v36 = *(v7 + 16);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
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
        return result;
      }

      v40 = v35;
      if (*(v7 + 24) < v39)
      {
        sub_100FE65C4(v39, isUniquelyReferenced_nonNull_native);
        result = sub_100771D58(v99, v16);
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_80;
        }

LABEL_36:
        v1 = (v0 + 352);
        if (v40)
        {
          goto LABEL_6;
        }

        goto LABEL_37;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

      v75 = result;
      sub_1010050E8();
      result = v75;
      v1 = (v0 + 352);
      if (v40)
      {
LABEL_6:
        v12 = result;

        sub_10118B568(v93, *(v7 + 56) + 48 * v12);
        goto LABEL_7;
      }

LABEL_37:
      *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
      v42 = (*(v7 + 48) + 16 * result);
      *v42 = v99;
      v42[1] = v16;
      v43 = (*(v7 + 56) + 48 * result);
      v44 = *(v0 + 329);
      v45 = *(v0 + 320);
      *v43 = *v93;
      v43[1] = v45;
      *(v43 + 25) = v44;
      v46 = *(v7 + 16);
      v38 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v38)
      {
        goto LABEL_87;
      }

      *(v7 + 16) = v47;
LABEL_7:
      *(v98 + 112) = v7;
      swift_endAccess();
      sub_10118D3FC(v0 + 64);
      sub_10118B5A0(v94);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v20 = sub_100771D58(v99, v16);
    if ((v21 & 1) == 0)
    {

      goto LABEL_25;
    }

    sub_1010100EC(*(v19 + 56) + 48 * v20, v0 + 208);

    sub_101010158(v0 + 64, v0 + 160);
    if (!*(v0 + 201))
    {
      v48 = *(v0 + 176);
      *v1 = *(v0 + 160);
      v1[1] = v48;
      *(v1 + 25) = *(v0 + 185);
      goto LABEL_62;
    }

    if (*(v0 + 201) != 1)
    {
      v49 = *(v0 + 160);
      sub_1010100EC(v0 + 208, v2);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_85;
      }

      sub_10000A748(v2, v0 + 584);
      v50 = *(v0 + 608);
      sub_1000035D0((v0 + 584), v50);
      v51 = *(v50 - 8);
      swift_task_alloc();
      (*(v51 + 16))();
      v52 = sub_1000DFA84();
      BinaryFloatingPoint.init<A>(_:)();

      v53 = v49 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v52;
      v1 = (v0 + 352);
      *(v0 + 352) = v53;
      *(v0 + 392) = 3;
      sub_100007BAC((v0 + 584));
      goto LABEL_62;
    }

    v22 = *(v0 + 160);
    v7 = v0 + 400;
    sub_1010100EC(v0 + 208, v90);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_84;
    }

    v89 = v22;
    sub_10000A748(v90, v0 + 544);
    v23 = *(v0 + 568);
    v24 = sub_1000035D0((v0 + 544), v23);
    v25 = *(v23 - 8);
    v26 = swift_task_alloc();
    v96 = v25;
    v27 = v25;
    v28 = v26;
    (*(v27 + 16))(v26, v24, v23);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
    {
      *(v0 + 704) = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
          goto LABEL_49;
        }

        v85 = swift_task_alloc();
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v84 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v96 + 8))(v85, v23);

        if (v84)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v86 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v54 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v86)
        {
          v87 = v28;
          if (v54 <= 64)
          {
            swift_getAssociatedTypeWitness();
            swift_task_alloc();
            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v57 = swift_task_alloc();
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v58 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v96 + 8))(v57, v23);
            v28 = v87;

            if (v58)
            {
              goto LABEL_92;
            }

LABEL_49:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_50;
          }

          v55 = swift_task_alloc();
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v56 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v96 + 8))(v55, v23);
          v28 = v87;

          if (v56)
          {
            goto LABEL_92;
          }
        }

        else if (v54 < 64)
        {
          goto LABEL_49;
        }
      }
    }

LABEL_50:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      *(v0 + 696) = 0x7FFFFFFFFFFFFFFFLL;
      v59 = v28;
      v60 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v88 = v59;
      v61 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v60)
      {
        if (v61 > 64)
        {
          goto LABEL_53;
        }
      }

      else if (v61 >= 64)
      {
LABEL_53:
        v62 = swift_task_alloc();
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v63 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v96 + 8))(v62, v23);
        v28 = v88;

        if (v63)
        {
          goto LABEL_91;
        }

        goto LABEL_60;
      }

      v28 = v59;
      dispatch thunk of BinaryInteger._lowWord.getter();
    }

LABEL_60:
    v64 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v96 + 8))(v28, v23);

    v38 = __OFADD__(v64, v89);
    v65 = v64 + v89;
    if (v38)
    {
      goto LABEL_90;
    }

    v66 = sub_1000DF9C0();
    *(v0 + 352) = v65;
    *(v0 + 360) = v100;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v66;
    *(v0 + 392) = 2;
    sub_100007BAC((v0 + 544));
    v1 = (v0 + 352);
LABEL_62:
    swift_beginAccess();
    sub_1010100EC(v1, v91);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v98 + 112);
    *&v100 = v7;
    *(v98 + 112) = 0x8000000000000000;
    result = sub_100771D58(v99, v16);
    v69 = *(v7 + 16);
    v70 = (v68 & 1) == 0;
    v38 = __OFADD__(v69, v70);
    v71 = v69 + v70;
    if (v38)
    {
      goto LABEL_88;
    }

    v72 = v68;
    if (*(v7 + 24) < v71)
    {
      sub_100FE65C4(v71, v67);
      result = sub_100771D58(v99, v16);
      if ((v72 & 1) != (v73 & 1))
      {
LABEL_80:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_67:
      v1 = (v0 + 352);
      if (v72)
      {
        goto LABEL_68;
      }

      goto LABEL_72;
    }

    if (v67)
    {
      goto LABEL_67;
    }

    v76 = result;
    sub_1010050E8();
    result = v76;
    v1 = (v0 + 352);
    if (v72)
    {
LABEL_68:
      v74 = result;

      sub_10118B568(v91, *(v7 + 56) + 48 * v74);
      goto LABEL_74;
    }

LABEL_72:
    *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
    v77 = (*(v7 + 48) + 16 * result);
    *v77 = v99;
    v77[1] = v16;
    v78 = (*(v7 + 56) + 48 * result);
    v79 = *(v0 + 473);
    v80 = *(v0 + 464);
    *v78 = *v91;
    v78[1] = v80;
    *(v78 + 25) = v79;
    v81 = *(v7 + 16);
    v38 = __OFADD__(v81, 1);
    v82 = v81 + 1;
    if (v38)
    {
      goto LABEL_89;
    }

    *(v7 + 16) = v82;
LABEL_74:
    *(v98 + 112) = v7;
    swift_endAccess();
    sub_10118B5A0(v0 + 208);
    sub_10118D3FC(v0 + 64);
    sub_10118B5A0(v1);
  }

LABEL_8:
  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_76;
    }

    v9 = *(v5 + 8 * v13);
    ++v10;
    if (v9)
    {
      v10 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_84:
  v2 = v7;
LABEL_85:

  sub_10118B5A0(v2);
  sub_10118B5D0();
  swift_allocError();
  swift_willThrow();

  sub_10118B5A0(v0 + 208);
  sub_10118D3FC(v0 + 64);
  v83 = *(v0 + 8);
LABEL_77:

  return v83();
}

void sub_10116CEAC(uint64_t a1, uint64_t a2, int64_t a3, char a4)
{
  v5 = v4;
  LOBYTE(v6) = a4;
  if (qword_101695280 != -1)
  {
    goto LABEL_148;
  }

  while (1)
  {
    v9 = *(a1 + 120);
    v10 = *(a1 + 128);
    v11 = a1;
    v12 = sub_10111EACC(v9, v10, qword_10177C6E8);
    v234 = v11;
    if (v12)
    {
      break;
    }

    v229 = v5;
    v227 = a3;
    v18 = sub_1002571C8(a2, a3, v6);
    v20 = v18 + 64;
    v19 = *(v18 + 64);
    v233 = v18;
    v21 = 1 << *(v18 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v5 = v22 & v19;
    a1 = swift_beginAccess();
    v23 = 0;
    a3 = (v21 + 63) >> 6;
    *&v24 = 138412290;
    v228 = v24;
    v10 = v11;
    v231 = a3;
    v232 = v20;
    while (v5)
    {
LABEL_15:
      v26 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v27 = (v23 << 10) | (16 * v26);
      v28 = *(v233 + 56);
      v29 = (*(v233 + 48) + v27);
      v30 = v29[1];
      v235 = *v29;
      v31 = v28 + v27;
      a2 = *v31;
      v32 = *(v31 + 8);
      v33 = *(v10 + 112);
      v34 = *(v33 + 16);
      v236 = v30;

      sub_10090C56C(a2, v32);
      if (v34)
      {

        v35 = sub_100771D58(v235, v236);
        if ((v36 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v33 + 56) + 48 * v35, &v243);

        if (v32 <= 1)
        {
          if (v32)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v37 = NSNumber.init(BOOLeanLiteral:)(a2 & 1).super.super.isa;
          }

          else
          {
            v37 = a2;
          }

          v97 = v37;
          goto LABEL_103;
        }

        if (v32 != 2)
        {
          sub_1010100EC(&v243, &v238);
          if (v239[24] != 3)
          {
LABEL_146:

            sub_10118B5A0(&v238);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v243);
            return;
          }

          sub_10000A748(&v238._countAndFlagsBits, v240);
          v98 = sub_1000035D0(v240, v241);
          __chkstk_darwin(v98);
          (*(v100 + 16))(v221 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          v10 = v234;
          BinaryFloatingPoint.init<A>(_:)();
          v97 = [objc_allocWithZone(NSNumber) initWithDouble:*&v238._countAndFlagsBits + *&a2];
          sub_100007BAC(v240);
          goto LABEL_103;
        }

        sub_1010100EC(&v243, &v238);
        if (v239[24] != 2)
        {
          goto LABEL_146;
        }

        v230 = a2;
        sub_10000A748(&v238._countAndFlagsBits, v240);
        v81 = v241;
        v80 = v242;
        v82 = sub_1000035D0(v240, v241);
        __chkstk_darwin(v82);
        v225 = v83;
        v84 = v221 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
        v226 = v85;
        (*(v85 + 16))(v84);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v238._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v86 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v86 < 64)
            {
              goto LABEL_89;
            }

            v223 = v80;
            v224 = v221;
            __chkstk_darwin(v86);
            v88 = v221 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v89 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v226 + 8))(v88, v81);
            if (v89)
            {
              goto LABEL_164;
            }
          }

          else
          {
            LODWORD(v224) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v124 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v224)
            {
              v223 = v80;
              if (v124 <= 64)
              {
                v224 = *(*(v80 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v222 = v221;
                __chkstk_darwin(AssociatedTypeWitness);
                v221[0] = v221 - v129;
                swift_getAssociatedConformanceWitness();
                v130 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v221[1] = v221;
                __chkstk_darwin(v130);
                v132 = v221 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v133 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v226 + 8))(v132, v81);
                if (v133)
                {
                  goto LABEL_164;
                }

LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v224 = v221;
              __chkstk_darwin(v124);
              v126 = v221 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v127 = dispatch thunk of static Comparable.< infix(_:_:)();
              (*(v226 + 8))(v126, v81);
              if (v127)
              {
                goto LABEL_164;
              }
            }

            else if (v124 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v224 = v221;
          v238._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v134 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v135 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v134)
          {
            if (v135 > 64)
            {
              v222 = v221;
              __chkstk_darwin(v135);
              v225 = v221 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v137 = v225;
              v138 = dispatch thunk of static Comparable.< infix(_:_:)();
              (*(v226 + 8))(v137, v81);
              goto LABEL_100;
            }
          }

          else if (v135 >= 64)
          {
            v222 = v221;
            __chkstk_darwin(v135);
            v140 = v221 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v138 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v226 + 8))(v140, v81);
LABEL_100:
            if (v138)
            {
              goto LABEL_161;
            }

            goto LABEL_101;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_101:
        v141 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v226 + 8))(v84, v81);
        a2 = v230;
        v50 = __OFADD__(v141, v230);
        v142 = &v230[v141];
        if (v50)
        {
          goto LABEL_155;
        }

        v97 = [objc_allocWithZone(NSNumber) initWithLongLong:v142];
        sub_100007BAC(v240);
        v10 = v234;
LABEL_103:
        objc_opt_self();
        v143 = swift_dynamicCastObjCClass();
        if (v143)
        {
          v144 = v143;
          v145 = a2;
          v146 = v97;
          v147 = String.init(_:)(v144);
          v148 = sub_1000DF96C();
          swift_beginAccess();
          v238 = v147;
          *&v239[8] = &type metadata for String;
          *&v239[16] = v148;
          v239[24] = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v237 = *(v10 + 112);
          v150 = v237;
          *(v10 + 112) = 0x8000000000000000;
          v151 = sub_100771D58(v235, v236);
          v153 = v150[2];
          v154 = (v152 & 1) == 0;
          v50 = __OFADD__(v153, v154);
          v155 = v153 + v154;
          if (v50)
          {
            goto LABEL_152;
          }

          v156 = v152;
          if (v150[3] >= v155)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v215 = v151;
              sub_1010050E8();
              v151 = v215;
            }
          }

          else
          {
            sub_100FE65C4(v155, isUniquelyReferenced_nonNull_native);
            v151 = sub_100771D58(v235, v236);
            if ((v156 & 1) != (v157 & 1))
            {
              goto LABEL_165;
            }
          }

          a3 = v231;
          a2 = v145;
          v20 = v232;
          if (v156)
          {
            v176 = v151;

            v6 = v237;
            sub_10118B568(&v238, v237[7] + 48 * v176);
          }

          else
          {
            v6 = v237;
            v237[(v151 >> 6) + 8] |= 1 << v151;
            v177 = (v6[6] + 16 * v151);
            v178 = v236;
            *v177 = v235;
            v177[1] = v178;
            v179 = (v6[7] + 48 * v151);
            v180 = *&v239[9];
            v181 = *v239;
            *v179 = v238;
            v179[1] = v181;
            *(&v179[1]._object + 1) = v180;
            v182 = v6[2];
            v50 = __OFADD__(v182, 1);
            v183 = v182 + 1;
            if (v50)
            {
              goto LABEL_154;
            }

            v6[2] = v183;
          }

          v10 = v234;
          *(v234 + 112) = v6;
          swift_endAccess();
          sub_101010148(a2, v32);
        }

        else
        {

          objc_opt_self();
          v158 = swift_dynamicCastObjCClass();
          if (v158)
          {
            v230 = a2;
            v159 = v158;
            [v158 doubleValue];
            v161 = v160;
            v162 = [v159 integerValue];
            v20 = v232;
            if (v161 == v162)
            {
              v163 = v162;
              v164 = v32;
              v165 = v10;
              v166 = sub_1000DFAD8();
              swift_beginAccess();
              v238._countAndFlagsBits = v163;
              *&v239[8] = &type metadata for Int;
              *&v239[16] = v166;
              v239[24] = 2;
              v167 = swift_isUniquelyReferenced_nonNull_native();
              v237 = *(v165 + 112);
              v168 = v237;
              *(v165 + 112) = 0x8000000000000000;
              v169 = sub_100771D58(v235, v236);
              v171 = v168[2];
              v172 = (v170 & 1) == 0;
              v50 = __OFADD__(v171, v172);
              v173 = v171 + v172;
              if (v50)
              {
                goto LABEL_158;
              }

              v174 = v170;
              LOBYTE(v32) = v164;
              if (v168[3] >= v173)
              {
                a3 = v231;
                if ((v167 & 1) == 0)
                {
                  v218 = v169;
                  sub_1010050E8();
                  v169 = v218;
                }
              }

              else
              {
                sub_100FE65C4(v173, v167);
                v169 = sub_100771D58(v235, v236);
                a3 = v231;
                if ((v174 & 1) != (v175 & 1))
                {
                  goto LABEL_165;
                }
              }

              a2 = v230;
              if ((v174 & 1) == 0)
              {
                v6 = v237;
                v237[(v169 >> 6) + 8] |= 1 << v169;
                v200 = (v6[6] + 16 * v169);
                v201 = v236;
                *v200 = v235;
                v200[1] = v201;
                v202 = (v6[7] + 48 * v169);
                v203 = *&v239[9];
                v204 = *v239;
                *v202 = v238;
                v202[1] = v204;
                *(&v202[1]._object + 1) = v203;
                v205 = v6[2];
                v50 = __OFADD__(v205, 1);
                v206 = v205 + 1;
                if (v50)
                {
                  goto LABEL_162;
                }

                goto LABEL_142;
              }

LABEL_140:
              v207 = v169;

              v6 = v237;
              sub_10118B568(&v238, v237[7] + 48 * v207);
            }

            else
            {
              v191 = sub_1000DFA84();
              swift_beginAccess();
              *&v238._countAndFlagsBits = v161;
              *&v239[8] = &type metadata for Double;
              *&v239[16] = v191;
              v239[24] = 3;
              v192 = swift_isUniquelyReferenced_nonNull_native();
              v237 = *(v10 + 112);
              v193 = v237;
              *(v10 + 112) = 0x8000000000000000;
              v169 = sub_100771D58(v235, v236);
              v195 = v193[2];
              v196 = (v194 & 1) == 0;
              v50 = __OFADD__(v195, v196);
              v197 = v195 + v196;
              if (v50)
              {
                goto LABEL_160;
              }

              v198 = v194;
              if (v193[3] >= v197)
              {
                if ((v192 & 1) == 0)
                {
                  v219 = v169;
                  sub_1010050E8();
                  v169 = v219;
                }
              }

              else
              {
                sub_100FE65C4(v197, v192);
                v169 = sub_100771D58(v235, v236);
                if ((v198 & 1) != (v199 & 1))
                {
                  goto LABEL_165;
                }
              }

              a2 = v230;
              if (v198)
              {
                goto LABEL_140;
              }

              v6 = v237;
              v237[(v169 >> 6) + 8] |= 1 << v169;
              v208 = (v6[6] + 16 * v169);
              v209 = v236;
              *v208 = v235;
              v208[1] = v209;
              v210 = (v6[7] + 48 * v169);
              v211 = *&v239[9];
              v212 = *v239;
              *v210 = v238;
              v210[1] = v212;
              *(&v210[1]._object + 1) = v211;
              v213 = v6[2];
              v50 = __OFADD__(v213, 1);
              v206 = v213 + 1;
              if (v50)
              {
                goto LABEL_163;
              }

LABEL_142:
              v6[2] = v206;
            }

            v10 = v234;
            *(v234 + 112) = v6;
            swift_endAccess();

            sub_101010148(a2, v32);
            goto LABEL_144;
          }

          v20 = v232;
          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v184 = type metadata accessor for Logger();
          sub_1000076D4(v184, qword_10177C6D0);
          v185 = v97;
          v186 = Logger.logObject.getter();
          LOBYTE(v6) = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v186, v6))
          {
            *&v187 = COERCE_DOUBLE(swift_slowAlloc());
            v230 = a2;
            a2 = v187;
            v188 = swift_slowAlloc();
            LODWORD(v236) = v32;
            v189 = v188;
            *a2 = v228;
            *(a2 + 4) = v185;
            *v188 = v185;
            v190 = v185;
            _os_log_impl(&_mh_execute_header, v186, v6, "Unsupported value type: %@!", a2, 0xCu);
            sub_10000B3A8(v189, &qword_10169BB30, &unk_10138B3C0);

            sub_101010148(v230, v236);
          }

          else
          {

            sub_101010148(a2, v32);
          }

          v10 = v234;
        }

LABEL_144:
        a1 = sub_10118B5A0(&v243);
      }

      else
      {
LABEL_21:
        if (v32 > 1)
        {
          if (v32 == 2)
          {
            isa = [objc_allocWithZone(NSNumber) initWithLongLong:a2];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&a2];
          }
        }

        else if (v32)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(a2 & 1).super.super.isa;
        }

        else
        {
          isa = a2;
        }

        v9 = isa;
        objc_opt_self();
        v39 = swift_dynamicCastObjCClass();
        if (v39)
        {
          v40 = v39;
          v41 = a2;
          v9 = v9;
          v42 = String.init(_:)(v40);
          v43 = sub_1000DF96C();
          swift_beginAccess();
          v243 = v42;
          *&v244[8] = &type metadata for String;
          *&v244[16] = v43;
          v244[24] = 1;
          v44 = swift_isUniquelyReferenced_nonNull_native();
          v240[0] = *(v10 + 112);
          v45 = v240[0];
          *(v10 + 112) = 0x8000000000000000;
          v46 = sub_100771D58(v235, v236);
          v48 = *(v45 + 16);
          v49 = (v47 & 1) == 0;
          v50 = __OFADD__(v48, v49);
          v51 = v48 + v49;
          if (v50)
          {
            __break(1u);
            goto LABEL_150;
          }

          v52 = v47;
          if (*(v45 + 24) >= v51)
          {
            if ((v44 & 1) == 0)
            {
              v214 = v46;
              sub_1010050E8();
              v46 = v214;
            }
          }

          else
          {
            sub_100FE65C4(v51, v44);
            v46 = sub_100771D58(v235, v236);
            if ((v52 & 1) != (v53 & 1))
            {
              goto LABEL_165;
            }
          }

          a3 = v231;
          a2 = v41;
          v20 = v232;
          if (v52)
          {
            v72 = v46;

            v6 = v240[0];
            sub_10118B568(&v243, *(v240[0] + 56) + 48 * v72);
          }

          else
          {
            v6 = v240[0];
            *(v240[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
            v73 = (v6[6] + 16 * v46);
            v74 = v236;
            *v73 = v235;
            v73[1] = v74;
            v75 = (v6[7] + 48 * v46);
            v76 = *&v244[9];
            v77 = *v244;
            *v75 = v243;
            v75[1] = v77;
            *(&v75[1]._object + 1) = v76;
            v78 = v6[2];
            v50 = __OFADD__(v78, 1);
            v79 = v78 + 1;
            if (v50)
            {
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
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

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            v6[2] = v79;
          }

          v10 = v234;
          *(v234 + 112) = v6;
          swift_endAccess();

LABEL_81:
          sub_101010148(a2, v32);
        }

        else
        {
          objc_opt_self();
          v54 = swift_dynamicCastObjCClass();
          if (v54)
          {
            v230 = a2;
            v55 = v54;
            [v54 doubleValue];
            v57 = v56;
            v58 = [v55 integerValue];
            v20 = v232;
            if (v57 == v58)
            {
              v59 = v58;
              v60 = v32;
              v61 = v10;
              v62 = sub_1000DFAD8();
              swift_beginAccess();
              v243._countAndFlagsBits = v59;
              *&v244[8] = &type metadata for Int;
              *&v244[16] = v62;
              v244[24] = 2;
              v63 = swift_isUniquelyReferenced_nonNull_native();
              v240[0] = *(v61 + 112);
              v64 = v240[0];
              *(v61 + 112) = 0x8000000000000000;
              v65 = sub_100771D58(v235, v236);
              v67 = *(v64 + 16);
              v68 = (v66 & 1) == 0;
              v50 = __OFADD__(v67, v68);
              v69 = v67 + v68;
              if (v50)
              {
                goto LABEL_153;
              }

              v70 = v66;
              LOBYTE(v32) = v60;
              if (*(v64 + 24) >= v69)
              {
                a3 = v231;
                if ((v63 & 1) == 0)
                {
                  v216 = v65;
                  sub_1010050E8();
                  v65 = v216;
                }
              }

              else
              {
                sub_100FE65C4(v69, v63);
                v65 = sub_100771D58(v235, v236);
                a3 = v231;
                if ((v70 & 1) != (v71 & 1))
                {
                  goto LABEL_165;
                }
              }

              a2 = v230;
              if ((v70 & 1) == 0)
              {
                v6 = v240[0];
                *(v240[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
                v110 = (v6[6] + 16 * v65);
                v111 = v236;
                *v110 = v235;
                v110[1] = v111;
                v112 = (v6[7] + 48 * v65);
                v113 = *&v244[9];
                v114 = *v244;
                *v112 = v243;
                v112[1] = v114;
                *(&v112[1]._object + 1) = v113;
                v115 = v6[2];
                v50 = __OFADD__(v115, 1);
                v116 = v115 + 1;
                if (v50)
                {
                  goto LABEL_157;
                }

                goto LABEL_79;
              }

LABEL_77:
              v117 = v65;

              v6 = v240[0];
              sub_10118B568(&v243, *(v240[0] + 56) + 48 * v117);
            }

            else
            {
              v101 = sub_1000DFA84();
              swift_beginAccess();
              *&v243._countAndFlagsBits = v57;
              *&v244[8] = &type metadata for Double;
              *&v244[16] = v101;
              v244[24] = 3;
              v102 = swift_isUniquelyReferenced_nonNull_native();
              v240[0] = *(v10 + 112);
              v103 = v240[0];
              *(v10 + 112) = 0x8000000000000000;
              v65 = sub_100771D58(v235, v236);
              v105 = *(v103 + 16);
              v106 = (v104 & 1) == 0;
              v50 = __OFADD__(v105, v106);
              v107 = v105 + v106;
              if (v50)
              {
                goto LABEL_156;
              }

              v108 = v104;
              if (*(v103 + 24) >= v107)
              {
                a3 = v231;
                if ((v102 & 1) == 0)
                {
                  v217 = v65;
                  sub_1010050E8();
                  v65 = v217;
                }
              }

              else
              {
                sub_100FE65C4(v107, v102);
                v65 = sub_100771D58(v235, v236);
                a3 = v231;
                if ((v108 & 1) != (v109 & 1))
                {
                  goto LABEL_165;
                }
              }

              a2 = v230;
              if (v108)
              {
                goto LABEL_77;
              }

              v6 = v240[0];
              *(v240[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
              v118 = (v6[6] + 16 * v65);
              v119 = v236;
              *v118 = v235;
              v118[1] = v119;
              v120 = (v6[7] + 48 * v65);
              v121 = *&v244[9];
              v122 = *v244;
              *v120 = v243;
              v120[1] = v122;
              *(&v120[1]._object + 1) = v121;
              v123 = v6[2];
              v50 = __OFADD__(v123, 1);
              v116 = v123 + 1;
              if (v50)
              {
                goto LABEL_159;
              }

LABEL_79:
              v6[2] = v116;
            }

            v10 = v234;
            *(v234 + 112) = v6;
            swift_endAccess();
            goto LABEL_81;
          }

          a3 = v231;
          v20 = v232;
          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v90 = type metadata accessor for Logger();
          sub_1000076D4(v90, qword_10177C6D0);
          v91 = v9;
          v92 = Logger.logObject.getter();
          LOBYTE(v6) = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v92, v6))
          {
            *&v93 = COERCE_DOUBLE(swift_slowAlloc());
            v230 = a2;
            a2 = v93;
            v94 = swift_slowAlloc();
            LODWORD(v236) = v32;
            v95 = v94;
            *a2 = v228;
            *(a2 + 4) = v91;
            *v94 = v91;
            v96 = v91;
            _os_log_impl(&_mh_execute_header, v92, v6, "Unsupported value type: %@!", a2, 0xCu);
            sub_10000B3A8(v95, &qword_10169BB30, &unk_10138B3C0);

            sub_101010148(v230, v236);
          }

          else
          {

            sub_101010148(a2, v32);
          }

          v10 = v234;
        }
      }
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= a3)
      {

        return;
      }

      v5 = *(v20 + 8 * v25);
      ++v23;
      if (v5)
      {
        v23 = v25;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_148:
    v220 = a1;
    swift_once();
    a1 = v220;
  }

  if (qword_101695278 != -1)
  {
LABEL_150:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177C6D0);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v243._countAndFlagsBits = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1000136BC(v9, v10, &v243._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v14, v15, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v16, 0xCu);
    sub_100007BAC(v17);
  }
}

uint64_t sub_10116E9EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 728) = a2;
  *(v2 + 720) = a1;
  return _swift_task_switch(sub_10116EA14, a1, 0);
}

uint64_t sub_10116EA14()
{
  v14 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = v0[90];
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C6D0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1000136BC(v2, v3, &v13);
      _os_log_impl(&_mh_execute_header, v5, v6, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v0[92] = v11;
    *v11 = v0;
    v11[1] = sub_10116EC60;
    v12 = v0[91];

    return sub_10027BEA8(v12);
  }
}

uint64_t sub_10116EC60(uint64_t a1)
{
  v2 = *(*v1 + 720);
  *(*v1 + 744) = a1;

  return _swift_task_switch(sub_10118F4D4, v2, 0);
}

void sub_10116ED78(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Transaction();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;

  static Transaction.asyncTask(name:block:)();

  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177CE28);
  oslog = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v12, "analytics: logged key generation status to CA", v13, 2u);
  }
}

void sub_10116EF44(void *a1, uint64_t a2, uint64_t a3, char a4, int64_t a5)
{
  v6 = v5;
  LOBYTE(v8) = a4;
  if (qword_101695280 != -1)
  {
    goto LABEL_149;
  }

  while (1)
  {
    v12 = a1[15];
    v13 = a1[16];
    if (sub_10111EACC(v12, v13, qword_10177C6E8))
    {
      break;
    }

    v226 = v6;
    v223 = a3;
    v224 = a5;
    v19 = sub_1002F8718(a2, a3, v8 & 1, a5);
    v8 = v19 + 64;
    v20 = *(v19 + 64);
    v230 = v19;
    v21 = 1 << *(v19 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v20;
    swift_beginAccess();
    a3 = 0;
    a5 = (v21 + 63) >> 6;
    *&v24 = 138412290;
    v225 = v24;
    v229 = a1;
    v227 = a5;
    v228 = v8;
    while (v23)
    {
LABEL_19:
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v28 = (a3 << 10) | (16 * v27);
      v29 = *(v230 + 56);
      v30 = (*(v230 + 48) + v28);
      v31 = v30[1];
      v231 = *v30;
      v32 = v29 + v28;
      v6 = *v32;
      v33 = *(v32 + 8);
      v34 = a1[14];
      v35 = *(v34 + 16);
      v232 = v31;

      sub_10090C56C(*&v6, v33);
      if (v35)
      {

        v36 = sub_100771D58(v231, v232);
        if (v37)
        {
          sub_1010100EC(*(v34 + 56) + 48 * v36, &v239);

          if (v33 <= 1)
          {
            if (v33)
            {
              sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
              v38 = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v6) & 1).super.super.isa;
            }

            else
            {
              v38 = *&v6;
            }

            v95 = v38;
            goto LABEL_107;
          }

          if (v33 != 2)
          {
            sub_1010100EC(&v239, &v234);
            if (v235[24] != 3)
            {
LABEL_147:

              sub_10118B5A0(&v234);
              sub_10118B5D0();
              swift_allocError();
              swift_willThrow();

              sub_10118B5A0(&v239);
              return;
            }

            sub_10000A748(&v234._countAndFlagsBits, v236);
            v96 = sub_1000035D0(v236, v237);
            __chkstk_darwin(v96);
            a2 = v216 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v98 + 16))(a2);
            sub_1000DFA84();
            BinaryFloatingPoint.init<A>(_:)();
            a1 = v229;
            v95 = [objc_allocWithZone(NSNumber) initWithDouble:*&v234._countAndFlagsBits + v6];
            sub_100007BAC(v236);
            goto LABEL_107;
          }

          sub_1010100EC(&v239, &v234);
          if (v235[24] != 2)
          {
            goto LABEL_147;
          }

          v221 = v6;
          sub_10000A748(&v234._countAndFlagsBits, v236);
          a2 = v237;
          v78 = v238;
          v79 = sub_1000035D0(v236, v237);
          v222 = v216;
          v80 = *(a2 - 8);
          __chkstk_darwin(v79);
          v220 = v81;
          v82 = v216 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
          (v80[2])(v82);
          if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
          {
            goto LABEL_94;
          }

          v234._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v83 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v83 >= 64)
            {
              v218 = v78;
              v219 = v216;
              __chkstk_darwin(v83);
              v85 = v216 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v86 = dispatch thunk of static Comparable.< infix(_:_:)();
              (v80[1])(v85, a2);
              if (v86)
              {
                goto LABEL_165;
              }

              goto LABEL_94;
            }

LABEL_93:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_94;
          }

          LODWORD(v219) = dispatch thunk of static BinaryInteger.isSigned.getter();
          v123 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if ((v219 & 1) == 0)
          {
            if (v123 >= 64)
            {
              goto LABEL_94;
            }

            goto LABEL_93;
          }

          v218 = v78;
          if (v123 <= 64)
          {
            v219 = *(*(v78 + 24) + 16);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v217 = v216;
            __chkstk_darwin(AssociatedTypeWitness);
            v216[0] = v216 - v128;
            swift_getAssociatedConformanceWitness();
            v129 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v216[1] = v216;
            __chkstk_darwin(v129);
            v131 = v216 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v132 = dispatch thunk of static Comparable.< infix(_:_:)();
            (v80[1])(v131, a2);
            if (v132)
            {
              goto LABEL_165;
            }

            goto LABEL_93;
          }

          v219 = v216;
          __chkstk_darwin(v123);
          v125 = v216 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v126 = dispatch thunk of static Comparable.< infix(_:_:)();
          (v80[1])(v125, a2);
          if (v126)
          {
            goto LABEL_165;
          }

LABEL_94:
          if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
          {
LABEL_105:
            v139 = dispatch thunk of BinaryInteger._lowWord.getter();
            (v80[1])(v82, a2);
            v6 = v221;
            v50 = __OFADD__(v139, *&v221);
            v140 = v139 + *&v221;
            if (v50)
            {
              goto LABEL_156;
            }

            v95 = [objc_allocWithZone(NSNumber) initWithLongLong:v140];
            sub_100007BAC(v236);
            a1 = v229;
LABEL_107:
            objc_opt_self();
            v141 = swift_dynamicCastObjCClass();
            if (v141)
            {
              v142 = v141;
              v143 = v33;
              v144 = v95;
              v145 = String.init(_:)(v142);
              v146 = a1;
              v147 = sub_1000DF96C();
              swift_beginAccess();
              v234 = v145;
              *&v235[8] = &type metadata for String;
              *&v235[16] = v147;
              v235[24] = 1;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v233 = v146[14];
              v149 = v233;
              v146[14] = 0x8000000000000000;
              v150 = sub_100771D58(v231, v232);
              v152 = v149[2];
              v153 = (v151 & 1) == 0;
              v50 = __OFADD__(v152, v153);
              v154 = v152 + v153;
              if (v50)
              {
                goto LABEL_153;
              }

              a2 = v151;
              if (v149[3] >= v154)
              {
                v156 = v143;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v211 = v150;
                  sub_1010050E8();
                  v150 = v211;
                }
              }

              else
              {
                sub_100FE65C4(v154, isUniquelyReferenced_nonNull_native);
                v150 = sub_100771D58(v231, v232);
                if ((a2 & 1) != (v155 & 1))
                {
                  goto LABEL_166;
                }

                v156 = v143;
              }

              a1 = v229;
              a5 = v227;
              if (a2)
              {
                a2 = v150;

                v174 = v233;
                sub_10118B568(&v234, v233[7] + 48 * a2);
              }

              else
              {
                v174 = v233;
                v233[(v150 >> 6) + 8] |= 1 << v150;
                v175 = (v174[6] + 16 * v150);
                v176 = v232;
                *v175 = v231;
                v175[1] = v176;
                v177 = (v174[7] + 48 * v150);
                v178 = *&v235[9];
                v179 = *v235;
                *v177 = v234;
                v177[1] = v179;
                *(&v177[1]._object + 1) = v178;
                v180 = v174[2];
                v50 = __OFADD__(v180, 1);
                v181 = v180 + 1;
                if (v50)
                {
                  goto LABEL_155;
                }

                v174[2] = v181;
              }

              a1[14] = v174;
              swift_endAccess();
              sub_101010148(*&v6, v156);

LABEL_125:
              goto LABEL_12;
            }

            objc_opt_self();
            v157 = swift_dynamicCastObjCClass();
            if (!v157)
            {
              LODWORD(v231) = v33;

              if (qword_101695278 != -1)
              {
                swift_once();
              }

              v182 = type metadata accessor for Logger();
              sub_1000076D4(v182, qword_10177C6D0);
              v183 = v95;
              v144 = Logger.logObject.getter();
              v184 = static os_log_type_t.fault.getter();

              if (!os_log_type_enabled(v144, v184))
              {

                sub_101010148(*&v6, v231);
                goto LABEL_125;
              }

              a2 = swift_slowAlloc();
              v185 = swift_slowAlloc();
              *a2 = v225;
              *(a2 + 4) = v183;
              *v185 = v183;
              v186 = v183;
              _os_log_impl(&_mh_execute_header, v144, v184, "Unsupported value type: %@!", a2, 0xCu);
              sub_10000B3A8(v185, &qword_10169BB30, &unk_10138B3C0);
              a1 = v229;

              sub_101010148(*&v6, v231);
LABEL_12:
              sub_10118B5A0(&v239);
              goto LABEL_13;
            }

            v158 = v157;
            [v157 doubleValue];
            v160 = v159;
            v161 = [v158 integerValue];
            if (v160 == v161)
            {
              v162 = v161;
              v163 = sub_1000DFAD8();
              swift_beginAccess();
              v234._countAndFlagsBits = v162;
              *&v235[8] = &type metadata for Int;
              *&v235[16] = v163;
              v235[24] = 2;
              v164 = swift_isUniquelyReferenced_nonNull_native();
              v165 = a1;
              v166 = v164;
              v233 = v165[14];
              v167 = v233;
              v165[14] = 0x8000000000000000;
              v168 = sub_100771D58(v231, v232);
              v170 = v167[2];
              v171 = (v169 & 1) == 0;
              v50 = __OFADD__(v170, v171);
              v172 = v170 + v171;
              if (v50)
              {
                goto LABEL_159;
              }

              a2 = v169;
              if (v167[3] >= v172)
              {
                if ((v166 & 1) == 0)
                {
                  v214 = v168;
                  sub_1010050E8();
                  v168 = v214;
                }
              }

              else
              {
                sub_100FE65C4(v172, v166);
                v168 = sub_100771D58(v231, v232);
                if ((a2 & 1) != (v173 & 1))
                {
                  goto LABEL_166;
                }
              }

              a1 = v229;
              if ((a2 & 1) == 0)
              {
                v25 = v233;
                v233[(v168 >> 6) + 8] |= 1 << v168;
                v197 = (v25[6] + 16 * v168);
                v198 = v232;
                *v197 = v231;
                v197[1] = v198;
                v199 = (v25[7] + 48 * v168);
                v200 = *&v235[9];
                v201 = *v235;
                *v199 = v234;
                v199[1] = v201;
                *(&v199[1]._object + 1) = v200;
                v202 = v25[2];
                v50 = __OFADD__(v202, 1);
                v203 = v202 + 1;
                if (v50)
                {
                  goto LABEL_163;
                }

                goto LABEL_145;
              }

LABEL_10:
              a2 = v168;

              v25 = v233;
              sub_10118B568(&v234, v233[7] + 48 * a2);
            }

            else
            {
              v187 = sub_1000DFA84();
              swift_beginAccess();
              *&v234._countAndFlagsBits = v160;
              *&v235[8] = &type metadata for Double;
              *&v235[16] = v187;
              v235[24] = 3;
              v188 = swift_isUniquelyReferenced_nonNull_native();
              v189 = a1;
              v190 = v188;
              v233 = v189[14];
              v191 = v233;
              v189[14] = 0x8000000000000000;
              v168 = sub_100771D58(v231, v232);
              v193 = v191[2];
              v194 = (v192 & 1) == 0;
              v50 = __OFADD__(v193, v194);
              v195 = v193 + v194;
              if (v50)
              {
                goto LABEL_161;
              }

              a2 = v192;
              if (v191[3] >= v195)
              {
                if ((v190 & 1) == 0)
                {
                  v215 = v168;
                  sub_1010050E8();
                  v168 = v215;
                }
              }

              else
              {
                sub_100FE65C4(v195, v190);
                v168 = sub_100771D58(v231, v232);
                if ((a2 & 1) != (v196 & 1))
                {
                  goto LABEL_166;
                }
              }

              a1 = v229;
              if (a2)
              {
                goto LABEL_10;
              }

              v25 = v233;
              v233[(v168 >> 6) + 8] |= 1 << v168;
              v204 = (v25[6] + 16 * v168);
              v205 = v232;
              *v204 = v231;
              v204[1] = v205;
              v206 = (v25[7] + 48 * v168);
              v207 = *&v235[9];
              v208 = *v235;
              *v206 = v234;
              v206[1] = v208;
              *(&v206[1]._object + 1) = v207;
              v209 = v25[2];
              v50 = __OFADD__(v209, 1);
              v203 = v209 + 1;
              if (v50)
              {
                goto LABEL_164;
              }

LABEL_145:
              v25[2] = v203;
            }

            a1[14] = v25;
            swift_endAccess();

            sub_101010148(*&v6, v33);
            goto LABEL_12;
          }

          v219 = v80;
          v234._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v133 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v134 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v133)
          {
            if (v134 > 64)
            {
              v217 = v216;
              __chkstk_darwin(v134);
              v220 = v216 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v136 = dispatch thunk of static Comparable.< infix(_:_:)();
              v80 = v219;
              (v219[1])(v220, a2);
              goto LABEL_104;
            }
          }

          else if (v134 >= 64)
          {
            v217 = v216;
            __chkstk_darwin(v134);
            v138 = v216 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v136 = dispatch thunk of static Comparable.< infix(_:_:)();
            v80 = v219;
            (v219[1])(v138, a2);
LABEL_104:
            if (v136)
            {
              goto LABEL_162;
            }

            goto LABEL_105;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
          v80 = v219;
          goto LABEL_105;
        }
      }

      if (v33 > 1)
      {
        if (v33 == 2)
        {
          isa = [objc_allocWithZone(NSNumber) initWithLongLong:*&v6];
        }

        else
        {
          isa = [objc_allocWithZone(NSNumber) initWithDouble:v6];
        }
      }

      else if (v33)
      {
        sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
        isa = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v6) & 1).super.super.isa;
      }

      else
      {
        isa = *&v6;
      }

      v12 = isa;
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40)
      {
        v41 = v40;
        v42 = v33;
        v12 = v12;
        v43 = String.init(_:)(v41);
        v44 = sub_1000DF96C();
        swift_beginAccess();
        v239 = v43;
        *&v240[8] = &type metadata for String;
        *&v240[16] = v44;
        v240[24] = 1;
        v13 = swift_isUniquelyReferenced_nonNull_native();
        v236[0] = a1[14];
        v45 = v236[0];
        a1[14] = 0x8000000000000000;
        v46 = sub_100771D58(v231, v232);
        v48 = *(v45 + 16);
        v49 = (v47 & 1) == 0;
        v50 = __OFADD__(v48, v49);
        v51 = v48 + v49;
        if (v50)
        {
          __break(1u);
          goto LABEL_151;
        }

        a2 = v47;
        if (*(v45 + 24) >= v51)
        {
          if ((v13 & 1) == 0)
          {
            v210 = v46;
            sub_1010050E8();
            v46 = v210;
          }
        }

        else
        {
          sub_100FE65C4(v51, v13);
          v46 = sub_100771D58(v231, v232);
          if ((a2 & 1) != (v52 & 1))
          {
            goto LABEL_166;
          }
        }

        a1 = v229;
        LOBYTE(v33) = v42;
        a5 = v227;
        if (a2)
        {
          a2 = v46;

          v70 = v236[0];
          sub_10118B568(&v239, *(v236[0] + 56) + 48 * a2);
        }

        else
        {
          v70 = v236[0];
          *(v236[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
          v71 = (v70[6] + 16 * v46);
          v72 = v232;
          *v71 = v231;
          v71[1] = v72;
          v73 = (v70[7] + 48 * v46);
          v74 = *&v240[9];
          v75 = *v240;
          *v73 = v239;
          v73[1] = v75;
          *(&v73[1]._object + 1) = v74;
          v76 = v70[2];
          v50 = __OFADD__(v76, 1);
          v77 = v76 + 1;
          if (v50)
          {
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
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

            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v70[2] = v77;
        }

        a1[14] = v70;
        swift_endAccess();

        goto LABEL_84;
      }

      objc_opt_self();
      v53 = swift_dynamicCastObjCClass();
      if (v53)
      {
        v54 = v53;
        [v53 doubleValue];
        v56 = v55;
        v57 = [v54 integerValue];
        a5 = v227;
        if (v56 == v57)
        {
          v58 = v57;
          v59 = sub_1000DFAD8();
          swift_beginAccess();
          v239._countAndFlagsBits = v58;
          *&v240[8] = &type metadata for Int;
          *&v240[16] = v59;
          v240[24] = 2;
          v60 = swift_isUniquelyReferenced_nonNull_native();
          v61 = a1;
          v62 = v60;
          v236[0] = v61[14];
          v63 = v236[0];
          v61[14] = 0x8000000000000000;
          v64 = sub_100771D58(v231, v232);
          v66 = *(v63 + 16);
          v67 = (v65 & 1) == 0;
          v50 = __OFADD__(v66, v67);
          v68 = v66 + v67;
          if (v50)
          {
            goto LABEL_154;
          }

          a2 = v65;
          if (*(v63 + 24) >= v68)
          {
            if ((v62 & 1) == 0)
            {
              v212 = v64;
              sub_1010050E8();
              v64 = v212;
            }
          }

          else
          {
            sub_100FE65C4(v68, v62);
            v64 = sub_100771D58(v231, v232);
            if ((a2 & 1) != (v69 & 1))
            {
              goto LABEL_166;
            }
          }

          a1 = v229;
          if ((a2 & 1) == 0)
          {
            v109 = v236[0];
            *(v236[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
            v110 = (v109[6] + 16 * v64);
            v111 = v232;
            *v110 = v231;
            v110[1] = v111;
            v112 = (v109[7] + 48 * v64);
            v113 = *&v240[9];
            v114 = *v240;
            *v112 = v239;
            v112[1] = v114;
            *(&v112[1]._object + 1) = v113;
            v115 = v109[2];
            v50 = __OFADD__(v115, 1);
            v116 = v115 + 1;
            if (v50)
            {
              goto LABEL_158;
            }

            goto LABEL_82;
          }

LABEL_80:
          a2 = v64;

          v109 = v236[0];
          sub_10118B568(&v239, *(v236[0] + 56) + 48 * a2);
        }

        else
        {
          v99 = sub_1000DFA84();
          swift_beginAccess();
          *&v239._countAndFlagsBits = v56;
          *&v240[8] = &type metadata for Double;
          *&v240[16] = v99;
          v240[24] = 3;
          v100 = swift_isUniquelyReferenced_nonNull_native();
          v101 = a1;
          v102 = v100;
          v236[0] = v101[14];
          v103 = v236[0];
          v101[14] = 0x8000000000000000;
          v64 = sub_100771D58(v231, v232);
          v105 = *(v103 + 16);
          v106 = (v104 & 1) == 0;
          v50 = __OFADD__(v105, v106);
          v107 = v105 + v106;
          if (v50)
          {
            goto LABEL_157;
          }

          a2 = v104;
          if (*(v103 + 24) >= v107)
          {
            if ((v102 & 1) == 0)
            {
              v213 = v64;
              sub_1010050E8();
              v64 = v213;
            }
          }

          else
          {
            sub_100FE65C4(v107, v102);
            v64 = sub_100771D58(v231, v232);
            if ((a2 & 1) != (v108 & 1))
            {
              goto LABEL_166;
            }
          }

          a1 = v229;
          if (a2)
          {
            goto LABEL_80;
          }

          v109 = v236[0];
          *(v236[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
          v117 = (v109[6] + 16 * v64);
          v118 = v232;
          *v117 = v231;
          v117[1] = v118;
          v119 = (v109[7] + 48 * v64);
          v120 = *&v240[9];
          v121 = *v240;
          *v119 = v239;
          v119[1] = v121;
          *(&v119[1]._object + 1) = v120;
          v122 = v109[2];
          v50 = __OFADD__(v122, 1);
          v116 = v122 + 1;
          if (v50)
          {
            goto LABEL_160;
          }

LABEL_82:
          v109[2] = v116;
        }

        a1[14] = v109;
        swift_endAccess();
LABEL_84:

        v93 = v6;
        v94 = v33;
        goto LABEL_85;
      }

      LODWORD(v231) = v33;

      a5 = v227;
      if (qword_101695278 != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for Logger();
      sub_1000076D4(v87, qword_10177C6D0);
      v88 = v12;
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v89, v90))
      {

        sub_101010148(*&v6, v231);
        goto LABEL_13;
      }

      a2 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *a2 = v225;
      *(a2 + 4) = v88;
      *v91 = v88;
      v92 = v88;
      _os_log_impl(&_mh_execute_header, v89, v90, "Unsupported value type: %@!", a2, 0xCu);
      sub_10000B3A8(v91, &qword_10169BB30, &unk_10138B3C0);
      a1 = v229;

      v93 = v6;
      v94 = v231;
LABEL_85:
      sub_101010148(*&v93, v94);
LABEL_13:
      v8 = v228;
    }

    while (1)
    {
      v26 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        break;
      }

      if (v26 >= a5)
      {

        return;
      }

      v23 = *(v8 + 8 * v26);
      ++a3;
      if (v23)
      {
        a3 = v26;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_149:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_151:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177C6D0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v239._countAndFlagsBits = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1000136BC(v12, v13, &v239._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v15, v16, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v17, 0xCu);
    sub_100007BAC(v18);
  }
}

unint64_t sub_1011709D8()
{
  v0 = sub_10030E76C();
  sub_10030DB78();

  if (!*(v0 + 16))
  {
    goto LABEL_11;
  }

  sub_100771D58(0x4669577265776F70, 0xE900000000000069);
  if (v1)
  {
    if (!*(v0 + 16))
    {
      goto LABEL_11;
    }
  }

  else if (!*(v0 + 16))
  {
    goto LABEL_11;
  }

  sub_100771D58(0x6C65437265776F70, 0xE90000000000006CLL);
  if (v2)
  {
    if (!*(v0 + 16))
    {
      goto LABEL_11;
    }
  }

  else if (!*(v0 + 16))
  {
    goto LABEL_11;
  }

  sub_100771D58(0x5779726574746162, 0xEB00000000694669);
  if (v3)
  {
    if (!*(v0 + 16))
    {
      goto LABEL_11;
    }
  }

  else if (!*(v0 + 16))
  {
    goto LABEL_11;
  }

  sub_100771D58(0x4379726574746162, 0xEB000000006C6C65);
  if (v7)
  {

    goto LABEL_12;
  }

LABEL_11:

LABEL_12:
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138C0D0;
  strcpy((inited + 32), "publishCount");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0;
  strcpy((inited + 64), "powerWiFiCount");
  *(inited + 79) = -18;
  *(inited + 80) = Int._bridgeToObjectiveC()();
  *(inited + 88) = 0;
  strcpy((inited + 96), "powerCellCount");
  *(inited + 111) = -18;
  *(inited + 112) = Int._bridgeToObjectiveC()();
  *(inited + 120) = 0;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x800000010137D090;
  *(inited + 144) = Int._bridgeToObjectiveC()();
  *(inited + 152) = 0;
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x800000010137D0B0;
  *(inited + 176) = Int._bridgeToObjectiveC()();
  *(inited + 184) = 0;
  v5 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v5;
}

void sub_101170CAC(void *a1, void *a2)
{
  v3 = v2;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v6 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v6, object, qword_10177C6E8))
    {
      break;
    }

    v228 = a2;
    v230 = v3;
    v13 = sub_1011709D8();
    v14 = v13 + 64;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v3 = v16 & *(v13 + 64);
    swift_beginAccess();
    v17 = 0;
    v18 = (v15 + 63) >> 6;
    *&v19 = 138412290;
    v229 = v19;
    v232 = a1;
    v231 = v13;
    while (v3)
    {
LABEL_15:
      v21 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v22 = (v17 << 10) | (16 * v21);
      v23 = *(v13 + 56);
      v24 = (*(v13 + 48) + v22);
      v25 = v24[1];
      v235 = *v24;
      v26 = (v23 + v22);
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = a1[14];
      v30 = *(v29 + 16);
      v236 = v25;

      v234 = v27;
      sub_10090C56C(v27, v28);
      v233 = v28;
      if (v30)
      {

        v31 = sub_100771D58(v235, v236);
        if ((v32 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v29 + 56) + 48 * v31, &v243);

        if (v28 <= 1)
        {
          if (v28)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v33 = NSNumber.init(BOOLeanLiteral:)(v234 & 1).super.super.isa;
          }

          else
          {
            v33 = v234;
          }

          v93 = v33;
          goto LABEL_102;
        }

        if (v28 != 2)
        {
          sub_1010100EC(&v243, &v238);
          if (v239[24] != 3)
          {
LABEL_145:

            sub_10118B5A0(&v238);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v243);
            return;
          }

          v94 = v234;
          sub_10000A748(&v238._countAndFlagsBits, v240);
          v95 = sub_1000035D0(v240, v241);
          __chkstk_darwin(v95);
          (*(v97 + 16))(v222 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v232;
          v93 = [objc_allocWithZone(NSNumber) initWithDouble:*&v238._countAndFlagsBits + *&v94];
          sub_100007BAC(v240);
          goto LABEL_102;
        }

        sub_1010100EC(&v243, &v238);
        if (v239[24] != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v238._countAndFlagsBits, v240);
        v78 = v241;
        v77 = v242;
        v79 = sub_1000035D0(v240, v241);
        v226 = v222;
        __chkstk_darwin(v79);
        v224 = v80;
        v81 = v222 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
        v227 = v82;
        (*(v82 + 16))(v81);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v238._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v83 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v83 < 64)
            {
              goto LABEL_89;
            }

            v225 = v77;
            v223 = v222;
            __chkstk_darwin(v83);
            v85 = v222 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v86 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v227 + 8))(v85, v78);
            v77 = v225;
            if (v86)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v223) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v124 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v223)
            {
              v225 = v77;
              if (v124 <= 64)
              {
                v223 = *(*(v77 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v222[3] = v222;
                __chkstk_darwin(AssociatedTypeWitness);
                v222[1] = v222 - v130;
                swift_getAssociatedConformanceWitness();
                v131 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v222[2] = v222;
                __chkstk_darwin(v131);
                v133 = v222 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v134 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v227 + 8))(v133, v78);
                if (v134)
                {
                  goto LABEL_163;
                }

                v77 = v225;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v223 = v222;
              __chkstk_darwin(v124);
              v126 = v222 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v127 = dispatch thunk of static Comparable.< infix(_:_:)();
              v128 = v126;
              v77 = v225;
              (*(v227 + 8))(v128, v78);
              if (v127)
              {
                goto LABEL_163;
              }
            }

            else if (v124 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v238._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v135 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v136 = v77;
          v137 = v135;
          v225 = v136;
          v138 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v137)
          {
            if (v138 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v138 >= 64)
          {
LABEL_93:
            v223 = v222;
            __chkstk_darwin(v138);
            v224 = v222 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v140 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v227 + 8))(v224, v78);
            if (v140)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v141 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v227 + 8))(v81, v78);
        v47 = __OFADD__(v141, v234);
        v142 = &v234[v141];
        if (v47)
        {
          goto LABEL_154;
        }

        v93 = [objc_allocWithZone(NSNumber) initWithLongLong:v142];
        sub_100007BAC(v240);
        a1 = v232;
LABEL_102:
        objc_opt_self();
        v143 = swift_dynamicCastObjCClass();
        if (v143)
        {
          v144 = v143;
          v145 = v93;
          v146 = String.init(_:)(v144);
          v147 = a1;
          v148 = sub_1000DF96C();
          swift_beginAccess();
          v238 = v146;
          *&v239[8] = &type metadata for String;
          *&v239[16] = v148;
          v239[24] = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v237 = v147[14];
          v150 = v237;
          v147[14] = 0x8000000000000000;
          v151 = sub_100771D58(v235, v236);
          v153 = v150[2];
          v154 = (v152 & 1) == 0;
          v47 = __OFADD__(v153, v154);
          v155 = v153 + v154;
          if (v47)
          {
            goto LABEL_151;
          }

          v156 = v152;
          if (v150[3] >= v155)
          {
            v13 = v231;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v217 = v151;
              sub_1010050E8();
              v151 = v217;
            }
          }

          else
          {
            sub_100FE65C4(v155, isUniquelyReferenced_nonNull_native);
            v151 = sub_100771D58(v235, v236);
            v13 = v231;
            if ((v156 & 1) != (v157 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v232;
          if (v156)
          {
            v176 = v151;

            a2 = v237;
            sub_10118B568(&v238, v237[7] + 48 * v176);
          }

          else
          {
            a2 = v237;
            v237[(v151 >> 6) + 8] |= 1 << v151;
            v177 = (a2[6] + 16 * v151);
            v178 = v236;
            *v177 = v235;
            v177[1] = v178;
            v179 = (a2[7] + 48 * v151);
            v180 = *&v239[9];
            v181 = *v239;
            *v179 = v238;
            v179[1] = v181;
            *(&v179[1]._object + 1) = v180;
            v182 = a2[2];
            v47 = __OFADD__(v182, 1);
            v183 = v182 + 1;
            if (v47)
            {
              goto LABEL_153;
            }

            a2[2] = v183;
          }

          v184 = v233;
          a1[14] = a2;
          swift_endAccess();
          sub_101010148(v234, v184);

          goto LABEL_120;
        }

        objc_opt_self();
        v158 = swift_dynamicCastObjCClass();
        if (v158)
        {
          v159 = v158;
          [v158 doubleValue];
          v161 = v160;
          v162 = [v159 integerValue];
          if (v161 == v162)
          {
            v163 = v162;
            v164 = sub_1000DFAD8();
            swift_beginAccess();
            v238._countAndFlagsBits = v163;
            *&v239[8] = &type metadata for Int;
            *&v239[16] = v164;
            v239[24] = 2;
            v165 = swift_isUniquelyReferenced_nonNull_native();
            v166 = a1;
            v167 = v165;
            v237 = v166[14];
            v168 = v237;
            v166[14] = 0x8000000000000000;
            v169 = sub_100771D58(v235, v236);
            v171 = v168[2];
            v172 = (v170 & 1) == 0;
            v47 = __OFADD__(v171, v172);
            v173 = v171 + v172;
            if (v47)
            {
              goto LABEL_157;
            }

            v174 = v170;
            if (v168[3] >= v173)
            {
              if ((v167 & 1) == 0)
              {
                v220 = v169;
                sub_1010050E8();
                v169 = v220;
              }
            }

            else
            {
              sub_100FE65C4(v173, v167);
              v169 = sub_100771D58(v235, v236);
              if ((v174 & 1) != (v175 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v232;
            if ((v174 & 1) == 0)
            {
              a2 = v237;
              v237[(v169 >> 6) + 8] |= 1 << v169;
              v201 = (a2[6] + 16 * v169);
              v202 = v236;
              *v201 = v235;
              v201[1] = v202;
              v203 = (a2[7] + 48 * v169);
              v204 = *&v239[9];
              v205 = *v239;
              *v203 = v238;
              v203[1] = v205;
              *(&v203[1]._object + 1) = v204;
              v206 = a2[2];
              v47 = __OFADD__(v206, 1);
              v207 = v206 + 1;
              if (v47)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v208 = v169;

            a2 = v237;
            sub_10118B568(&v238, v237[7] + 48 * v208);
          }

          else
          {
            v190 = sub_1000DFA84();
            swift_beginAccess();
            *&v238._countAndFlagsBits = v161;
            *&v239[8] = &type metadata for Double;
            *&v239[16] = v190;
            v239[24] = 3;
            v191 = swift_isUniquelyReferenced_nonNull_native();
            v192 = a1;
            v193 = v191;
            v237 = v192[14];
            v194 = v237;
            v192[14] = 0x8000000000000000;
            v169 = sub_100771D58(v235, v236);
            v196 = v194[2];
            v197 = (v195 & 1) == 0;
            v47 = __OFADD__(v196, v197);
            v198 = v196 + v197;
            if (v47)
            {
              goto LABEL_159;
            }

            v199 = v195;
            if (v194[3] >= v198)
            {
              if ((v193 & 1) == 0)
              {
                v221 = v169;
                sub_1010050E8();
                v169 = v221;
              }
            }

            else
            {
              sub_100FE65C4(v198, v193);
              v169 = sub_100771D58(v235, v236);
              if ((v199 & 1) != (v200 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v232;
            if (v199)
            {
              goto LABEL_139;
            }

            a2 = v237;
            v237[(v169 >> 6) + 8] |= 1 << v169;
            v209 = (a2[6] + 16 * v169);
            v210 = v236;
            *v209 = v235;
            v209[1] = v210;
            v211 = (a2[7] + 48 * v169);
            v212 = *&v239[9];
            v213 = *v239;
            *v211 = v238;
            v211[1] = v213;
            *(&v211[1]._object + 1) = v212;
            v214 = a2[2];
            v47 = __OFADD__(v214, 1);
            v207 = v214 + 1;
            if (v47)
            {
              goto LABEL_162;
            }

LABEL_141:
            a2[2] = v207;
          }

          v215 = v233;
          a1[14] = a2;
          swift_endAccess();

          sub_101010148(v234, v215);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v185 = type metadata accessor for Logger();
        sub_1000076D4(v185, qword_10177C6D0);
        v186 = v93;
        v145 = Logger.logObject.getter();
        a2 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v145, a2))
        {

          sub_101010148(v234, v233);
LABEL_120:

          goto LABEL_143;
        }

        v187 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        *v187 = v229;
        *(v187 + 4) = v186;
        *v188 = v186;
        v189 = v186;
        _os_log_impl(&_mh_execute_header, v145, a2, "Unsupported value type: %@!", v187, 0xCu);
        sub_10000B3A8(v188, &qword_10169BB30, &unk_10138B3C0);
        v13 = v231;

        a1 = v232;

        sub_101010148(v234, v233);
LABEL_143:
        sub_10118B5A0(&v243);
      }

      else
      {
LABEL_21:
        if (v28 > 1)
        {
          if (v28 == 2)
          {
            v35 = objc_allocWithZone(NSNumber);
            isa = [v35 initWithLongLong:v234];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v234];
          }
        }

        else if (v28)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v234 & 1).super.super.isa;
        }

        else
        {
          isa = v234;
        }

        v36 = isa;
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (v37)
        {
          v38 = v37;
          v6 = v36;
          v39 = String.init(_:)(v38);
          object = v39._object;
          v40 = sub_1000DF96C();
          swift_beginAccess();
          v243 = v39;
          *&v244[8] = &type metadata for String;
          *&v244[16] = v40;
          v244[24] = 1;
          v41 = swift_isUniquelyReferenced_nonNull_native();
          v240[0] = a1[14];
          v42 = v240[0];
          a1[14] = 0x8000000000000000;
          v43 = sub_100771D58(v235, v236);
          v45 = *(v42 + 16);
          v46 = (v44 & 1) == 0;
          v47 = __OFADD__(v45, v46);
          v48 = v45 + v46;
          if (v47)
          {
            __break(1u);
            goto LABEL_149;
          }

          v49 = v44;
          if (*(v42 + 24) >= v48)
          {
            if ((v41 & 1) == 0)
            {
              v216 = v43;
              sub_1010050E8();
              v43 = v216;
            }
          }

          else
          {
            sub_100FE65C4(v48, v41);
            v43 = sub_100771D58(v235, v236);
            if ((v49 & 1) != (v50 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v232;
          v13 = v231;
          if (v49)
          {
            v69 = v43;

            a2 = v240[0];
            sub_10118B568(&v243, *(v240[0] + 56) + 48 * v69);
          }

          else
          {
            a2 = v240[0];
            *(v240[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
            v70 = (a2[6] + 16 * v43);
            v71 = v236;
            *v70 = v235;
            v70[1] = v71;
            v72 = (a2[7] + 48 * v43);
            v73 = *&v244[9];
            v74 = *v244;
            *v72 = v243;
            v72[1] = v74;
            *(&v72[1]._object + 1) = v73;
            v75 = a2[2];
            v47 = __OFADD__(v75, 1);
            v76 = v75 + 1;
            if (v47)
            {
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
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
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            a2[2] = v76;
          }

          a1[14] = a2;
          swift_endAccess();

LABEL_46:
          sub_101010148(v234, v233);
        }

        else
        {
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          if (v51)
          {
            v52 = v51;
            [v51 doubleValue];
            v54 = v53;
            v55 = [v52 integerValue];
            if (v54 == v55)
            {
              v56 = v55;
              v57 = sub_1000DFAD8();
              swift_beginAccess();
              v243._countAndFlagsBits = v56;
              *&v244[8] = &type metadata for Int;
              *&v244[16] = v57;
              v244[24] = 2;
              v58 = swift_isUniquelyReferenced_nonNull_native();
              v59 = a1;
              v60 = v58;
              v240[0] = v59[14];
              v61 = v240[0];
              v59[14] = 0x8000000000000000;
              v62 = sub_100771D58(v235, v236);
              v64 = *(v61 + 16);
              v65 = (v63 & 1) == 0;
              v47 = __OFADD__(v64, v65);
              v66 = v64 + v65;
              if (v47)
              {
                goto LABEL_152;
              }

              v67 = v63;
              if (*(v61 + 24) >= v66)
              {
                if ((v60 & 1) == 0)
                {
                  v218 = v62;
                  sub_1010050E8();
                  v62 = v218;
                }
              }

              else
              {
                sub_100FE65C4(v66, v60);
                v62 = sub_100771D58(v235, v236);
                if ((v67 & 1) != (v68 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v232;
              if (v67)
              {
                goto LABEL_77;
              }

              a2 = v240[0];
              *(v240[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v109 = (a2[6] + 16 * v62);
              v110 = v236;
              *v109 = v235;
              v109[1] = v110;
              v111 = (a2[7] + 48 * v62);
              v112 = *&v244[9];
              v113 = *v244;
              *v111 = v243;
              v111[1] = v113;
              *(&v111[1]._object + 1) = v112;
              v114 = a2[2];
              v47 = __OFADD__(v114, 1);
              v115 = v114 + 1;
              if (v47)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v98 = sub_1000DFA84();
              swift_beginAccess();
              *&v243._countAndFlagsBits = v54;
              *&v244[8] = &type metadata for Double;
              *&v244[16] = v98;
              v244[24] = 3;
              v99 = swift_isUniquelyReferenced_nonNull_native();
              v100 = a1;
              v101 = v99;
              v240[0] = v100[14];
              v102 = v240[0];
              v100[14] = 0x8000000000000000;
              v62 = sub_100771D58(v235, v236);
              v104 = *(v102 + 16);
              v105 = (v103 & 1) == 0;
              v47 = __OFADD__(v104, v105);
              v106 = v104 + v105;
              if (v47)
              {
                goto LABEL_155;
              }

              v107 = v103;
              if (*(v102 + 24) >= v106)
              {
                if ((v101 & 1) == 0)
                {
                  v219 = v62;
                  sub_1010050E8();
                  v62 = v219;
                }
              }

              else
              {
                sub_100FE65C4(v106, v101);
                v62 = sub_100771D58(v235, v236);
                if ((v107 & 1) != (v108 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v232;
              if (v107)
              {
LABEL_77:
                v116 = v62;

                a2 = v240[0];
                sub_10118B568(&v243, *(v240[0] + 56) + 48 * v116);
                goto LABEL_80;
              }

              a2 = v240[0];
              *(v240[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v117 = (a2[6] + 16 * v62);
              v118 = v236;
              *v117 = v235;
              v117[1] = v118;
              v119 = (a2[7] + 48 * v62);
              v120 = *&v244[9];
              v121 = *v244;
              *v119 = v243;
              v119[1] = v121;
              *(&v119[1]._object + 1) = v120;
              v122 = a2[2];
              v47 = __OFADD__(v122, 1);
              v115 = v122 + 1;
              if (v47)
              {
                goto LABEL_158;
              }
            }

            a2[2] = v115;
LABEL_80:
            v123 = v233;
            a1[14] = a2;
            swift_endAccess();

            sub_101010148(v234, v123);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v87 = type metadata accessor for Logger();
            sub_1000076D4(v87, qword_10177C6D0);
            v88 = v36;
            v89 = Logger.logObject.getter();
            a2 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v89, a2))
            {
              v90 = swift_slowAlloc();
              v91 = swift_slowAlloc();
              *v90 = v229;
              *(v90 + 4) = v88;
              *v91 = v88;
              v92 = v88;
              _os_log_impl(&_mh_execute_header, v89, a2, "Unsupported value type: %@!", v90, 0xCu);
              sub_10000B3A8(v91, &qword_10169BB30, &unk_10138B3C0);
              v13 = v231;

              a1 = v232;

              goto LABEL_46;
            }

            sub_101010148(v234, v233);
          }
        }
      }
    }

    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v18)
      {

        return;
      }

      v3 = *(v14 + 8 * v20);
      ++v17;
      if (v3)
      {
        v17 = v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_147:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_149:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C6D0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v243._countAndFlagsBits = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1000136BC(v6, object, &v243._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v9, v10, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v11, 0xCu);
    sub_100007BAC(v12);
  }
}

unint64_t sub_1011726B8(char a1)
{
  result = 0x6552746E65746E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
    case 7:
    case 13:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
    case 12:
    case 14:
      result = 0xD000000000000013;
      break;
    case 8:
    case 10:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x6C627550666C6573;
      break;
    case 11:
      return result;
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
      result = 0xD000000000000013;
      break;
    case 20:
      result = 0;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

void sub_101172840(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  static Transaction.asyncTask(name:block:)();

  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CE28);
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v6, "analytics: logged key decryption error to CA", v7, 2u);
  }
}

void sub_1011729A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  static Transaction.asyncTask(name:block:)();

  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177CE28);
  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v10, "analytics: logged fetch failure event to CA", v11, 2u);
  }
}

void sub_101172B1C(void *a1, void *a2, double a3)
{
  v4 = v3;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v8 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v8, object, qword_10177C6E8))
    {
      break;
    }

    v230 = v4;
    v228 = a2;
    v15 = sub_10069D698(a2, a3);
    v16 = v15 + 64;
    v17 = 1 << v15[32];
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v4 = v18 & *(v15 + 8);
    swift_beginAccess();
    v19 = 0;
    v20 = (v17 + 63) >> 6;
    *&v21 = 138412290;
    v229 = v21;
    v232 = a1;
    v231 = v15;
    while (v4)
    {
LABEL_15:
      v23 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v24 = (v19 << 10) | (16 * v23);
      v25 = *(v15 + 7);
      v26 = (*(v15 + 6) + v24);
      v27 = v26[1];
      v235 = *v26;
      v28 = (v25 + v24);
      v29 = *v28;
      v30 = *(v28 + 8);
      v31 = a1[14];
      v32 = *(v31 + 16);
      v236 = v27;

      v234 = v29;
      sub_10090C56C(v29, v30);
      v233 = v30;
      if (v32)
      {

        v33 = sub_100771D58(v235, v236);
        if ((v34 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v31 + 56) + 48 * v33, &v243);

        if (v30 <= 1)
        {
          if (v30)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v35 = NSNumber.init(BOOLeanLiteral:)(v234 & 1).super.super.isa;
          }

          else
          {
            v35 = v234;
          }

          v94 = v35;
          goto LABEL_102;
        }

        if (v30 != 2)
        {
          sub_1010100EC(&v243, &v238);
          if (v239[24] != 3)
          {
LABEL_145:

            sub_10118B5A0(&v238);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v243);
            return;
          }

          v95 = v234;
          sub_10000A748(&v238._countAndFlagsBits, v240);
          v96 = sub_1000035D0(v240, v241);
          __chkstk_darwin(v96);
          (*(v98 + 16))(v222 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v232;
          a3 = *&v238._countAndFlagsBits + *&v95;
          v94 = [objc_allocWithZone(NSNumber) initWithDouble:a3];
          sub_100007BAC(v240);
          goto LABEL_102;
        }

        sub_1010100EC(&v243, &v238);
        if (v239[24] != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v238._countAndFlagsBits, v240);
        v79 = v241;
        v78 = v242;
        v80 = sub_1000035D0(v240, v241);
        v226 = v222;
        __chkstk_darwin(v80);
        v224 = v81;
        v82 = v222 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
        v227 = v83;
        (*(v83 + 16))(v82);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v238._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v84 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v84 < 64)
            {
              goto LABEL_89;
            }

            v225 = v78;
            v223 = v222;
            __chkstk_darwin(v84);
            v86 = v222 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v87 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v227 + 8))(v86, v79);
            v78 = v225;
            if (v87)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v223) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v125 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v223)
            {
              v225 = v78;
              if (v125 <= 64)
              {
                v223 = *(*(v78 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v222[3] = v222;
                __chkstk_darwin(AssociatedTypeWitness);
                v222[1] = v222 - v131;
                swift_getAssociatedConformanceWitness();
                v132 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v222[2] = v222;
                __chkstk_darwin(v132);
                v134 = v222 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v135 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v227 + 8))(v134, v79);
                if (v135)
                {
                  goto LABEL_163;
                }

                v78 = v225;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v223 = v222;
              __chkstk_darwin(v125);
              v127 = v222 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v128 = dispatch thunk of static Comparable.< infix(_:_:)();
              v129 = v127;
              v78 = v225;
              (*(v227 + 8))(v129, v79);
              if (v128)
              {
                goto LABEL_163;
              }
            }

            else if (v125 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v238._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v136 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v137 = v78;
          v138 = v136;
          v225 = v137;
          v139 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v138)
          {
            if (v139 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v139 >= 64)
          {
LABEL_93:
            v223 = v222;
            __chkstk_darwin(v139);
            v224 = v222 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v141 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v227 + 8))(v224, v79);
            if (v141)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v142 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v227 + 8))(v82, v79);
        v49 = __OFADD__(v142, v234);
        v143 = &v234[v142];
        if (v49)
        {
          goto LABEL_154;
        }

        v94 = [objc_allocWithZone(NSNumber) initWithLongLong:v143];
        sub_100007BAC(v240);
        a1 = v232;
LABEL_102:
        objc_opt_self();
        v144 = swift_dynamicCastObjCClass();
        if (v144)
        {
          v145 = v144;
          v146 = v94;
          v147 = String.init(_:)(v145);
          v148 = a1;
          v149 = sub_1000DF96C();
          swift_beginAccess();
          v238 = v147;
          *&v239[8] = &type metadata for String;
          *&v239[16] = v149;
          v239[24] = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v237 = v148[14];
          v151 = v237;
          v148[14] = 0x8000000000000000;
          v152 = sub_100771D58(v235, v236);
          v154 = v151[2];
          v155 = (v153 & 1) == 0;
          v49 = __OFADD__(v154, v155);
          v156 = v154 + v155;
          if (v49)
          {
            goto LABEL_151;
          }

          v157 = v153;
          if (v151[3] >= v156)
          {
            v15 = v231;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v217 = v152;
              sub_1010050E8();
              v152 = v217;
            }
          }

          else
          {
            sub_100FE65C4(v156, isUniquelyReferenced_nonNull_native);
            v152 = sub_100771D58(v235, v236);
            v15 = v231;
            if ((v157 & 1) != (v158 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v232;
          if (v157)
          {
            v176 = v152;

            a2 = v237;
            sub_10118B568(&v238, v237[7] + 48 * v176);
          }

          else
          {
            a2 = v237;
            v237[(v152 >> 6) + 8] |= 1 << v152;
            v177 = (a2[6] + 16 * v152);
            v178 = v236;
            *v177 = v235;
            v177[1] = v178;
            v179 = (a2[7] + 48 * v152);
            v180 = *&v239[9];
            v181 = *v239;
            *v179 = v238;
            v179[1] = v181;
            *(&v179[1]._object + 1) = v180;
            v182 = a2[2];
            v49 = __OFADD__(v182, 1);
            v183 = v182 + 1;
            if (v49)
            {
              goto LABEL_153;
            }

            a2[2] = v183;
          }

          v184 = v233;
          a1[14] = a2;
          swift_endAccess();
          sub_101010148(v234, v184);

          goto LABEL_120;
        }

        objc_opt_self();
        v159 = swift_dynamicCastObjCClass();
        if (v159)
        {
          v160 = v159;
          [v159 doubleValue];
          a3 = v161;
          v162 = [v160 integerValue];
          if (a3 == v162)
          {
            v163 = v162;
            v164 = sub_1000DFAD8();
            swift_beginAccess();
            v238._countAndFlagsBits = v163;
            *&v239[8] = &type metadata for Int;
            *&v239[16] = v164;
            v239[24] = 2;
            v165 = swift_isUniquelyReferenced_nonNull_native();
            v166 = a1;
            v167 = v165;
            v237 = v166[14];
            v168 = v237;
            v166[14] = 0x8000000000000000;
            v169 = sub_100771D58(v235, v236);
            v171 = v168[2];
            v172 = (v170 & 1) == 0;
            v49 = __OFADD__(v171, v172);
            v173 = v171 + v172;
            if (v49)
            {
              goto LABEL_157;
            }

            v174 = v170;
            if (v168[3] >= v173)
            {
              if ((v167 & 1) == 0)
              {
                v220 = v169;
                sub_1010050E8();
                v169 = v220;
              }
            }

            else
            {
              sub_100FE65C4(v173, v167);
              v169 = sub_100771D58(v235, v236);
              if ((v174 & 1) != (v175 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v232;
            if ((v174 & 1) == 0)
            {
              a2 = v237;
              v237[(v169 >> 6) + 8] |= 1 << v169;
              v201 = (a2[6] + 16 * v169);
              v202 = v236;
              *v201 = v235;
              v201[1] = v202;
              v203 = (a2[7] + 48 * v169);
              v204 = *&v239[9];
              v205 = *v239;
              *v203 = v238;
              v203[1] = v205;
              *(&v203[1]._object + 1) = v204;
              v206 = a2[2];
              v49 = __OFADD__(v206, 1);
              v207 = v206 + 1;
              if (v49)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v208 = v169;

            a2 = v237;
            sub_10118B568(&v238, v237[7] + 48 * v208);
          }

          else
          {
            v190 = sub_1000DFA84();
            swift_beginAccess();
            *&v238._countAndFlagsBits = a3;
            *&v239[8] = &type metadata for Double;
            *&v239[16] = v190;
            v239[24] = 3;
            v191 = swift_isUniquelyReferenced_nonNull_native();
            v192 = a1;
            v193 = v191;
            v237 = v192[14];
            v194 = v237;
            v192[14] = 0x8000000000000000;
            v169 = sub_100771D58(v235, v236);
            v196 = v194[2];
            v197 = (v195 & 1) == 0;
            v49 = __OFADD__(v196, v197);
            v198 = v196 + v197;
            if (v49)
            {
              goto LABEL_159;
            }

            v199 = v195;
            if (v194[3] >= v198)
            {
              if ((v193 & 1) == 0)
              {
                v221 = v169;
                sub_1010050E8();
                v169 = v221;
              }
            }

            else
            {
              sub_100FE65C4(v198, v193);
              v169 = sub_100771D58(v235, v236);
              if ((v199 & 1) != (v200 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v232;
            if (v199)
            {
              goto LABEL_139;
            }

            a2 = v237;
            v237[(v169 >> 6) + 8] |= 1 << v169;
            v209 = (a2[6] + 16 * v169);
            v210 = v236;
            *v209 = v235;
            v209[1] = v210;
            v211 = (a2[7] + 48 * v169);
            v212 = *&v239[9];
            v213 = *v239;
            *v211 = v238;
            v211[1] = v213;
            *(&v211[1]._object + 1) = v212;
            v214 = a2[2];
            v49 = __OFADD__(v214, 1);
            v207 = v214 + 1;
            if (v49)
            {
              goto LABEL_162;
            }

LABEL_141:
            a2[2] = v207;
          }

          v215 = v233;
          a1[14] = a2;
          swift_endAccess();

          sub_101010148(v234, v215);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v185 = type metadata accessor for Logger();
        sub_1000076D4(v185, qword_10177C6D0);
        v186 = v94;
        v146 = Logger.logObject.getter();
        a2 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v146, a2))
        {

          sub_101010148(v234, v233);
LABEL_120:

          goto LABEL_143;
        }

        v187 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        *v187 = v229;
        *(v187 + 4) = v186;
        *v188 = v186;
        v189 = v186;
        _os_log_impl(&_mh_execute_header, v146, a2, "Unsupported value type: %@!", v187, 0xCu);
        sub_10000B3A8(v188, &qword_10169BB30, &unk_10138B3C0);
        v15 = v231;

        a1 = v232;

        sub_101010148(v234, v233);
LABEL_143:
        sub_10118B5A0(&v243);
      }

      else
      {
LABEL_21:
        if (v30 > 1)
        {
          if (v30 == 2)
          {
            v37 = objc_allocWithZone(NSNumber);
            isa = [v37 initWithLongLong:v234];
          }

          else
          {
            a3 = *&v234;
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v234];
          }
        }

        else if (v30)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v234 & 1).super.super.isa;
        }

        else
        {
          isa = v234;
        }

        v38 = isa;
        objc_opt_self();
        v39 = swift_dynamicCastObjCClass();
        if (v39)
        {
          v40 = v39;
          v8 = v38;
          v41 = String.init(_:)(v40);
          object = v41._object;
          v42 = sub_1000DF96C();
          swift_beginAccess();
          v243 = v41;
          *&v244[8] = &type metadata for String;
          *&v244[16] = v42;
          v244[24] = 1;
          v43 = swift_isUniquelyReferenced_nonNull_native();
          v240[0] = a1[14];
          v44 = v240[0];
          a1[14] = 0x8000000000000000;
          v45 = sub_100771D58(v235, v236);
          v47 = *(v44 + 16);
          v48 = (v46 & 1) == 0;
          v49 = __OFADD__(v47, v48);
          v50 = v47 + v48;
          if (v49)
          {
            __break(1u);
            goto LABEL_149;
          }

          v51 = v46;
          if (*(v44 + 24) >= v50)
          {
            if ((v43 & 1) == 0)
            {
              v216 = v45;
              sub_1010050E8();
              v45 = v216;
            }
          }

          else
          {
            sub_100FE65C4(v50, v43);
            v45 = sub_100771D58(v235, v236);
            if ((v51 & 1) != (v52 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v232;
          v15 = v231;
          if (v51)
          {
            v70 = v45;

            a2 = v240[0];
            sub_10118B568(&v243, *(v240[0] + 56) + 48 * v70);
          }

          else
          {
            a2 = v240[0];
            *(v240[0] + 8 * (v45 >> 6) + 64) |= 1 << v45;
            v71 = (a2[6] + 16 * v45);
            v72 = v236;
            *v71 = v235;
            v71[1] = v72;
            v73 = (a2[7] + 48 * v45);
            v74 = *&v244[9];
            v75 = *v244;
            *v73 = v243;
            v73[1] = v75;
            *(&v73[1]._object + 1) = v74;
            v76 = a2[2];
            v49 = __OFADD__(v76, 1);
            v77 = v76 + 1;
            if (v49)
            {
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
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
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            a2[2] = v77;
          }

          a1[14] = a2;
          swift_endAccess();

LABEL_46:
          sub_101010148(v234, v233);
        }

        else
        {
          objc_opt_self();
          v53 = swift_dynamicCastObjCClass();
          if (v53)
          {
            v54 = v53;
            [v53 doubleValue];
            a3 = v55;
            v56 = [v54 integerValue];
            if (a3 == v56)
            {
              v57 = v56;
              v58 = sub_1000DFAD8();
              swift_beginAccess();
              v243._countAndFlagsBits = v57;
              *&v244[8] = &type metadata for Int;
              *&v244[16] = v58;
              v244[24] = 2;
              v59 = swift_isUniquelyReferenced_nonNull_native();
              v60 = a1;
              v61 = v59;
              v240[0] = v60[14];
              v62 = v240[0];
              v60[14] = 0x8000000000000000;
              v63 = sub_100771D58(v235, v236);
              v65 = *(v62 + 16);
              v66 = (v64 & 1) == 0;
              v49 = __OFADD__(v65, v66);
              v67 = v65 + v66;
              if (v49)
              {
                goto LABEL_152;
              }

              v68 = v64;
              if (*(v62 + 24) >= v67)
              {
                if ((v61 & 1) == 0)
                {
                  v218 = v63;
                  sub_1010050E8();
                  v63 = v218;
                }
              }

              else
              {
                sub_100FE65C4(v67, v61);
                v63 = sub_100771D58(v235, v236);
                if ((v68 & 1) != (v69 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v232;
              if (v68)
              {
                goto LABEL_77;
              }

              a2 = v240[0];
              *(v240[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
              v110 = (a2[6] + 16 * v63);
              v111 = v236;
              *v110 = v235;
              v110[1] = v111;
              v112 = (a2[7] + 48 * v63);
              v113 = *&v244[9];
              v114 = *v244;
              *v112 = v243;
              v112[1] = v114;
              *(&v112[1]._object + 1) = v113;
              v115 = a2[2];
              v49 = __OFADD__(v115, 1);
              v116 = v115 + 1;
              if (v49)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v99 = sub_1000DFA84();
              swift_beginAccess();
              *&v243._countAndFlagsBits = a3;
              *&v244[8] = &type metadata for Double;
              *&v244[16] = v99;
              v244[24] = 3;
              v100 = swift_isUniquelyReferenced_nonNull_native();
              v101 = a1;
              v102 = v100;
              v240[0] = v101[14];
              v103 = v240[0];
              v101[14] = 0x8000000000000000;
              v63 = sub_100771D58(v235, v236);
              v105 = *(v103 + 16);
              v106 = (v104 & 1) == 0;
              v49 = __OFADD__(v105, v106);
              v107 = v105 + v106;
              if (v49)
              {
                goto LABEL_155;
              }

              v108 = v104;
              if (*(v103 + 24) >= v107)
              {
                if ((v102 & 1) == 0)
                {
                  v219 = v63;
                  sub_1010050E8();
                  v63 = v219;
                }
              }

              else
              {
                sub_100FE65C4(v107, v102);
                v63 = sub_100771D58(v235, v236);
                if ((v108 & 1) != (v109 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v232;
              if (v108)
              {
LABEL_77:
                v117 = v63;

                a2 = v240[0];
                sub_10118B568(&v243, *(v240[0] + 56) + 48 * v117);
                goto LABEL_80;
              }

              a2 = v240[0];
              *(v240[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
              v118 = (a2[6] + 16 * v63);
              v119 = v236;
              *v118 = v235;
              v118[1] = v119;
              v120 = (a2[7] + 48 * v63);
              v121 = *&v244[9];
              v122 = *v244;
              *v120 = v243;
              v120[1] = v122;
              *(&v120[1]._object + 1) = v121;
              v123 = a2[2];
              v49 = __OFADD__(v123, 1);
              v116 = v123 + 1;
              if (v49)
              {
                goto LABEL_158;
              }
            }

            a2[2] = v116;
LABEL_80:
            v124 = v233;
            a1[14] = a2;
            swift_endAccess();

            sub_101010148(v234, v124);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v88 = type metadata accessor for Logger();
            sub_1000076D4(v88, qword_10177C6D0);
            v89 = v38;
            v90 = Logger.logObject.getter();
            a2 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v90, a2))
            {
              v91 = swift_slowAlloc();
              v92 = swift_slowAlloc();
              *v91 = v229;
              *(v91 + 4) = v89;
              *v92 = v89;
              v93 = v89;
              _os_log_impl(&_mh_execute_header, v90, a2, "Unsupported value type: %@!", v91, 0xCu);
              sub_10000B3A8(v92, &qword_10169BB30, &unk_10138B3C0);
              v15 = v231;

              a1 = v232;

              goto LABEL_46;
            }

            sub_101010148(v234, v233);
          }
        }
      }
    }

    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v20)
      {

        return;
      }

      v4 = *&v16[8 * v22];
      ++v19;
      if (v4)
      {
        v19 = v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_147:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_149:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177C6D0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v243._countAndFlagsBits = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1000136BC(v8, object, &v243._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v11, v12, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v13, 0xCu);
    sub_100007BAC(v14);
  }
}

void sub_101174574(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v7 = v4;
  if (qword_101695280 != -1)
  {
    goto LABEL_149;
  }

  while (1)
  {
    v10 = a1[15];
    v11 = a1[16];
    if (sub_10111EACC(v10, v11, qword_10177C6E8))
    {
      break;
    }

    v223 = a4;
    v225 = v7;
    v222 = a2;
    v17 = a3(a2);
    a3 = (v17 + 64);
    v18 = *(v17 + 64);
    v229 = v17;
    v19 = 1 << *(v17 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v18;
    swift_beginAccess();
    v22 = 0;
    a4 = ((v19 + 63) >> 6);
    *&v23 = 138412290;
    v224 = v23;
    v228 = a1;
    v226 = a4;
    v227 = a3;
    while (v21)
    {
LABEL_19:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = (v22 << 10) | (16 * v26);
      v28 = *(v229 + 56);
      v29 = (*(v229 + 48) + v27);
      v30 = v29[1];
      v230 = *v29;
      v31 = v28 + v27;
      v7 = *v31;
      v32 = *(v31 + 8);
      v33 = a1[14];
      v34 = *(v33 + 16);
      v231 = v30;

      sub_10090C56C(*&v7, v32);
      if (v34)
      {

        v35 = sub_100771D58(v230, v231);
        if (v36)
        {
          sub_1010100EC(*(v33 + 56) + 48 * v35, &v238);

          if (v32 <= 1)
          {
            if (v32)
            {
              sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
              v37 = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v7) & 1).super.super.isa;
            }

            else
            {
              v37 = *&v7;
            }

            v94 = v37;
            goto LABEL_107;
          }

          if (v32 != 2)
          {
            sub_1010100EC(&v238, &v233);
            if (v234[24] != 3)
            {
LABEL_147:

              sub_10118B5A0(&v233);
              sub_10118B5D0();
              swift_allocError();
              swift_willThrow();

              sub_10118B5A0(&v238);
              return;
            }

            sub_10000A748(&v233._countAndFlagsBits, v235);
            v95 = sub_1000035D0(v235, v236);
            __chkstk_darwin(v95);
            a2 = v215 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v97 + 16))(a2);
            sub_1000DFA84();
            BinaryFloatingPoint.init<A>(_:)();
            a1 = v228;
            v94 = [objc_allocWithZone(NSNumber) initWithDouble:*&v233._countAndFlagsBits + v7];
            sub_100007BAC(v235);
            goto LABEL_107;
          }

          sub_1010100EC(&v238, &v233);
          if (v234[24] != 2)
          {
            goto LABEL_147;
          }

          v220 = v7;
          sub_10000A748(&v233._countAndFlagsBits, v235);
          a2 = v236;
          v77 = v237;
          v78 = sub_1000035D0(v235, v236);
          v221 = v215;
          v79 = *(a2 - 8);
          __chkstk_darwin(v78);
          v219 = v80;
          v81 = v215 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
          (v79[2])(v81);
          if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
          {
            goto LABEL_94;
          }

          v233._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v82 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v82 >= 64)
            {
              v217 = v77;
              v218 = v215;
              __chkstk_darwin(v82);
              v84 = v215 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v85 = dispatch thunk of static Comparable.< infix(_:_:)();
              (v79[1])(v84, a2);
              if (v85)
              {
                goto LABEL_165;
              }

              goto LABEL_94;
            }

LABEL_93:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_94;
          }

          LODWORD(v218) = dispatch thunk of static BinaryInteger.isSigned.getter();
          v122 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if ((v218 & 1) == 0)
          {
            if (v122 >= 64)
            {
              goto LABEL_94;
            }

            goto LABEL_93;
          }

          v217 = v77;
          if (v122 <= 64)
          {
            v218 = *(*(v77 + 24) + 16);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v216 = v215;
            __chkstk_darwin(AssociatedTypeWitness);
            v215[0] = v215 - v127;
            swift_getAssociatedConformanceWitness();
            v128 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v215[1] = v215;
            __chkstk_darwin(v128);
            v130 = v215 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v131 = dispatch thunk of static Comparable.< infix(_:_:)();
            (v79[1])(v130, a2);
            if (v131)
            {
              goto LABEL_165;
            }

            goto LABEL_93;
          }

          v218 = v215;
          __chkstk_darwin(v122);
          v124 = v215 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v125 = dispatch thunk of static Comparable.< infix(_:_:)();
          (v79[1])(v124, a2);
          if (v125)
          {
            goto LABEL_165;
          }

LABEL_94:
          if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
          {
LABEL_105:
            v138 = dispatch thunk of BinaryInteger._lowWord.getter();
            (v79[1])(v81, a2);
            v7 = v220;
            v49 = __OFADD__(v138, *&v220);
            v139 = v138 + *&v220;
            if (v49)
            {
              goto LABEL_156;
            }

            v94 = [objc_allocWithZone(NSNumber) initWithLongLong:v139];
            sub_100007BAC(v235);
            a1 = v228;
LABEL_107:
            objc_opt_self();
            v140 = swift_dynamicCastObjCClass();
            if (v140)
            {
              v141 = v140;
              v142 = v32;
              v143 = v94;
              v144 = String.init(_:)(v141);
              v145 = a1;
              v146 = sub_1000DF96C();
              swift_beginAccess();
              v233 = v144;
              *&v234[8] = &type metadata for String;
              *&v234[16] = v146;
              v234[24] = 1;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v232 = v145[14];
              v148 = v232;
              v145[14] = 0x8000000000000000;
              v149 = sub_100771D58(v230, v231);
              v151 = v148[2];
              v152 = (v150 & 1) == 0;
              v49 = __OFADD__(v151, v152);
              v153 = v151 + v152;
              if (v49)
              {
                goto LABEL_153;
              }

              a2 = v150;
              if (v148[3] >= v153)
              {
                v155 = v142;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v210 = v149;
                  sub_1010050E8();
                  v149 = v210;
                }
              }

              else
              {
                sub_100FE65C4(v153, isUniquelyReferenced_nonNull_native);
                v149 = sub_100771D58(v230, v231);
                if ((a2 & 1) != (v154 & 1))
                {
                  goto LABEL_166;
                }

                v155 = v142;
              }

              a1 = v228;
              a4 = v226;
              if (a2)
              {
                a2 = v149;

                v173 = v232;
                sub_10118B568(&v233, v232[7] + 48 * a2);
              }

              else
              {
                v173 = v232;
                v232[(v149 >> 6) + 8] |= 1 << v149;
                v174 = (v173[6] + 16 * v149);
                v175 = v231;
                *v174 = v230;
                v174[1] = v175;
                v176 = (v173[7] + 48 * v149);
                v177 = *&v234[9];
                v178 = *v234;
                *v176 = v233;
                v176[1] = v178;
                *(&v176[1]._object + 1) = v177;
                v179 = v173[2];
                v49 = __OFADD__(v179, 1);
                v180 = v179 + 1;
                if (v49)
                {
                  goto LABEL_155;
                }

                v173[2] = v180;
              }

              a1[14] = v173;
              swift_endAccess();
              sub_101010148(*&v7, v155);

LABEL_125:
              goto LABEL_12;
            }

            objc_opt_self();
            v156 = swift_dynamicCastObjCClass();
            if (!v156)
            {
              LODWORD(v230) = v32;

              if (qword_101695278 != -1)
              {
                swift_once();
              }

              v181 = type metadata accessor for Logger();
              sub_1000076D4(v181, qword_10177C6D0);
              v182 = v94;
              v143 = Logger.logObject.getter();
              v183 = static os_log_type_t.fault.getter();

              if (!os_log_type_enabled(v143, v183))
              {

                sub_101010148(*&v7, v230);
                goto LABEL_125;
              }

              a2 = swift_slowAlloc();
              v184 = swift_slowAlloc();
              *a2 = v224;
              *(a2 + 4) = v182;
              *v184 = v182;
              v185 = v182;
              _os_log_impl(&_mh_execute_header, v143, v183, "Unsupported value type: %@!", a2, 0xCu);
              sub_10000B3A8(v184, &qword_10169BB30, &unk_10138B3C0);
              a1 = v228;

              sub_101010148(*&v7, v230);
LABEL_12:
              sub_10118B5A0(&v238);
              goto LABEL_13;
            }

            v157 = v156;
            [v156 doubleValue];
            v159 = v158;
            v160 = [v157 integerValue];
            if (v159 == v160)
            {
              v161 = v160;
              v162 = sub_1000DFAD8();
              swift_beginAccess();
              v233._countAndFlagsBits = v161;
              *&v234[8] = &type metadata for Int;
              *&v234[16] = v162;
              v234[24] = 2;
              v163 = swift_isUniquelyReferenced_nonNull_native();
              v164 = a1;
              v165 = v163;
              v232 = v164[14];
              v166 = v232;
              v164[14] = 0x8000000000000000;
              v167 = sub_100771D58(v230, v231);
              v169 = v166[2];
              v170 = (v168 & 1) == 0;
              v49 = __OFADD__(v169, v170);
              v171 = v169 + v170;
              if (v49)
              {
                goto LABEL_159;
              }

              a2 = v168;
              if (v166[3] >= v171)
              {
                if ((v165 & 1) == 0)
                {
                  v213 = v167;
                  sub_1010050E8();
                  v167 = v213;
                }
              }

              else
              {
                sub_100FE65C4(v171, v165);
                v167 = sub_100771D58(v230, v231);
                if ((a2 & 1) != (v172 & 1))
                {
                  goto LABEL_166;
                }
              }

              a1 = v228;
              if ((a2 & 1) == 0)
              {
                v24 = v232;
                v232[(v167 >> 6) + 8] |= 1 << v167;
                v196 = (v24[6] + 16 * v167);
                v197 = v231;
                *v196 = v230;
                v196[1] = v197;
                v198 = (v24[7] + 48 * v167);
                v199 = *&v234[9];
                v200 = *v234;
                *v198 = v233;
                v198[1] = v200;
                *(&v198[1]._object + 1) = v199;
                v201 = v24[2];
                v49 = __OFADD__(v201, 1);
                v202 = v201 + 1;
                if (v49)
                {
                  goto LABEL_163;
                }

                goto LABEL_145;
              }

LABEL_10:
              a2 = v167;

              v24 = v232;
              sub_10118B568(&v233, v232[7] + 48 * a2);
            }

            else
            {
              v186 = sub_1000DFA84();
              swift_beginAccess();
              *&v233._countAndFlagsBits = v159;
              *&v234[8] = &type metadata for Double;
              *&v234[16] = v186;
              v234[24] = 3;
              v187 = swift_isUniquelyReferenced_nonNull_native();
              v188 = a1;
              v189 = v187;
              v232 = v188[14];
              v190 = v232;
              v188[14] = 0x8000000000000000;
              v167 = sub_100771D58(v230, v231);
              v192 = v190[2];
              v193 = (v191 & 1) == 0;
              v49 = __OFADD__(v192, v193);
              v194 = v192 + v193;
              if (v49)
              {
                goto LABEL_161;
              }

              a2 = v191;
              if (v190[3] >= v194)
              {
                if ((v189 & 1) == 0)
                {
                  v214 = v167;
                  sub_1010050E8();
                  v167 = v214;
                }
              }

              else
              {
                sub_100FE65C4(v194, v189);
                v167 = sub_100771D58(v230, v231);
                if ((a2 & 1) != (v195 & 1))
                {
                  goto LABEL_166;
                }
              }

              a1 = v228;
              if (a2)
              {
                goto LABEL_10;
              }

              v24 = v232;
              v232[(v167 >> 6) + 8] |= 1 << v167;
              v203 = (v24[6] + 16 * v167);
              v204 = v231;
              *v203 = v230;
              v203[1] = v204;
              v205 = (v24[7] + 48 * v167);
              v206 = *&v234[9];
              v207 = *v234;
              *v205 = v233;
              v205[1] = v207;
              *(&v205[1]._object + 1) = v206;
              v208 = v24[2];
              v49 = __OFADD__(v208, 1);
              v202 = v208 + 1;
              if (v49)
              {
                goto LABEL_164;
              }

LABEL_145:
              v24[2] = v202;
            }

            a1[14] = v24;
            swift_endAccess();

            sub_101010148(*&v7, v32);
            goto LABEL_12;
          }

          v218 = v79;
          v233._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v132 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v133 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v132)
          {
            if (v133 > 64)
            {
              v216 = v215;
              __chkstk_darwin(v133);
              v219 = v215 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v135 = dispatch thunk of static Comparable.< infix(_:_:)();
              v79 = v218;
              (v218[1])(v219, a2);
              goto LABEL_104;
            }
          }

          else if (v133 >= 64)
          {
            v216 = v215;
            __chkstk_darwin(v133);
            v137 = v215 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v135 = dispatch thunk of static Comparable.< infix(_:_:)();
            v79 = v218;
            (v218[1])(v137, a2);
LABEL_104:
            if (v135)
            {
              goto LABEL_162;
            }

            goto LABEL_105;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
          v79 = v218;
          goto LABEL_105;
        }
      }

      if (v32 > 1)
      {
        if (v32 == 2)
        {
          isa = [objc_allocWithZone(NSNumber) initWithLongLong:*&v7];
        }

        else
        {
          isa = [objc_allocWithZone(NSNumber) initWithDouble:v7];
        }
      }

      else if (v32)
      {
        sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
        isa = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v7) & 1).super.super.isa;
      }

      else
      {
        isa = *&v7;
      }

      v10 = isa;
      objc_opt_self();
      v39 = swift_dynamicCastObjCClass();
      if (v39)
      {
        v40 = v39;
        v41 = v32;
        v10 = v10;
        v42 = String.init(_:)(v40);
        v43 = sub_1000DF96C();
        swift_beginAccess();
        v238 = v42;
        *&v239[8] = &type metadata for String;
        *&v239[16] = v43;
        v239[24] = 1;
        v11 = swift_isUniquelyReferenced_nonNull_native();
        v235[0] = a1[14];
        v44 = v235[0];
        a1[14] = 0x8000000000000000;
        v45 = sub_100771D58(v230, v231);
        v47 = *(v44 + 16);
        v48 = (v46 & 1) == 0;
        v49 = __OFADD__(v47, v48);
        v50 = v47 + v48;
        if (v49)
        {
          __break(1u);
          goto LABEL_151;
        }

        a2 = v46;
        if (*(v44 + 24) >= v50)
        {
          if ((v11 & 1) == 0)
          {
            v209 = v45;
            sub_1010050E8();
            v45 = v209;
          }
        }

        else
        {
          sub_100FE65C4(v50, v11);
          v45 = sub_100771D58(v230, v231);
          if ((a2 & 1) != (v51 & 1))
          {
            goto LABEL_166;
          }
        }

        a1 = v228;
        LOBYTE(v32) = v41;
        a4 = v226;
        if (a2)
        {
          a2 = v45;

          v69 = v235[0];
          sub_10118B568(&v238, *(v235[0] + 56) + 48 * a2);
        }

        else
        {
          v69 = v235[0];
          *(v235[0] + 8 * (v45 >> 6) + 64) |= 1 << v45;
          v70 = (v69[6] + 16 * v45);
          v71 = v231;
          *v70 = v230;
          v70[1] = v71;
          v72 = (v69[7] + 48 * v45);
          v73 = *&v239[9];
          v74 = *v239;
          *v72 = v238;
          v72[1] = v74;
          *(&v72[1]._object + 1) = v73;
          v75 = v69[2];
          v49 = __OFADD__(v75, 1);
          v76 = v75 + 1;
          if (v49)
          {
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
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
            v223(v222);
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v69[2] = v76;
        }

        a1[14] = v69;
        swift_endAccess();

        goto LABEL_84;
      }

      objc_opt_self();
      v52 = swift_dynamicCastObjCClass();
      if (v52)
      {
        v53 = v52;
        [v52 doubleValue];
        v55 = v54;
        v56 = [v53 integerValue];
        a4 = v226;
        if (v55 == v56)
        {
          v57 = v56;
          v58 = sub_1000DFAD8();
          swift_beginAccess();
          v238._countAndFlagsBits = v57;
          *&v239[8] = &type metadata for Int;
          *&v239[16] = v58;
          v239[24] = 2;
          v59 = swift_isUniquelyReferenced_nonNull_native();
          v60 = a1;
          v61 = v59;
          v235[0] = v60[14];
          v62 = v235[0];
          v60[14] = 0x8000000000000000;
          v63 = sub_100771D58(v230, v231);
          v65 = *(v62 + 16);
          v66 = (v64 & 1) == 0;
          v49 = __OFADD__(v65, v66);
          v67 = v65 + v66;
          if (v49)
          {
            goto LABEL_154;
          }

          a2 = v64;
          if (*(v62 + 24) >= v67)
          {
            if ((v61 & 1) == 0)
            {
              v211 = v63;
              sub_1010050E8();
              v63 = v211;
            }
          }

          else
          {
            sub_100FE65C4(v67, v61);
            v63 = sub_100771D58(v230, v231);
            if ((a2 & 1) != (v68 & 1))
            {
              goto LABEL_166;
            }
          }

          a1 = v228;
          if ((a2 & 1) == 0)
          {
            v108 = v235[0];
            *(v235[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
            v109 = (v108[6] + 16 * v63);
            v110 = v231;
            *v109 = v230;
            v109[1] = v110;
            v111 = (v108[7] + 48 * v63);
            v112 = *&v239[9];
            v113 = *v239;
            *v111 = v238;
            v111[1] = v113;
            *(&v111[1]._object + 1) = v112;
            v114 = v108[2];
            v49 = __OFADD__(v114, 1);
            v115 = v114 + 1;
            if (v49)
            {
              goto LABEL_158;
            }

            goto LABEL_82;
          }

LABEL_80:
          a2 = v63;

          v108 = v235[0];
          sub_10118B568(&v238, *(v235[0] + 56) + 48 * a2);
        }

        else
        {
          v98 = sub_1000DFA84();
          swift_beginAccess();
          *&v238._countAndFlagsBits = v55;
          *&v239[8] = &type metadata for Double;
          *&v239[16] = v98;
          v239[24] = 3;
          v99 = swift_isUniquelyReferenced_nonNull_native();
          v100 = a1;
          v101 = v99;
          v235[0] = v100[14];
          v102 = v235[0];
          v100[14] = 0x8000000000000000;
          v63 = sub_100771D58(v230, v231);
          v104 = *(v102 + 16);
          v105 = (v103 & 1) == 0;
          v49 = __OFADD__(v104, v105);
          v106 = v104 + v105;
          if (v49)
          {
            goto LABEL_157;
          }

          a2 = v103;
          if (*(v102 + 24) >= v106)
          {
            if ((v101 & 1) == 0)
            {
              v212 = v63;
              sub_1010050E8();
              v63 = v212;
            }
          }

          else
          {
            sub_100FE65C4(v106, v101);
            v63 = sub_100771D58(v230, v231);
            if ((a2 & 1) != (v107 & 1))
            {
              goto LABEL_166;
            }
          }

          a1 = v228;
          if (a2)
          {
            goto LABEL_80;
          }

          v108 = v235[0];
          *(v235[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
          v116 = (v108[6] + 16 * v63);
          v117 = v231;
          *v116 = v230;
          v116[1] = v117;
          v118 = (v108[7] + 48 * v63);
          v119 = *&v239[9];
          v120 = *v239;
          *v118 = v238;
          v118[1] = v120;
          *(&v118[1]._object + 1) = v119;
          v121 = v108[2];
          v49 = __OFADD__(v121, 1);
          v115 = v121 + 1;
          if (v49)
          {
            goto LABEL_160;
          }

LABEL_82:
          v108[2] = v115;
        }

        a1[14] = v108;
        swift_endAccess();
LABEL_84:

        v92 = v7;
        v93 = v32;
        goto LABEL_85;
      }

      LODWORD(v230) = v32;

      a4 = v226;
      if (qword_101695278 != -1)
      {
        swift_once();
      }

      v86 = type metadata accessor for Logger();
      sub_1000076D4(v86, qword_10177C6D0);
      v87 = v10;
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v88, v89))
      {

        sub_101010148(*&v7, v230);
        goto LABEL_13;
      }

      a2 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *a2 = v224;
      *(a2 + 4) = v87;
      *v90 = v87;
      v91 = v87;
      _os_log_impl(&_mh_execute_header, v88, v89, "Unsupported value type: %@!", a2, 0xCu);
      sub_10000B3A8(v90, &qword_10169BB30, &unk_10138B3C0);
      a1 = v228;

      v92 = v7;
      v93 = v230;
LABEL_85:
      sub_101010148(*&v92, v93);
LABEL_13:
      a3 = v227;
    }

    while (1)
    {
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v25 >= a4)
      {

        return;
      }

      v21 = *(a3 + v25);
      ++v22;
      if (v21)
      {
        v22 = v25;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_149:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_151:
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C6D0);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v238._countAndFlagsBits = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_1000136BC(v10, v11, &v238._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v13, v14, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v15, 0xCu);
    sub_100007BAC(v16);
  }
}

void sub_101175FFC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v8 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v8, object, qword_10177C6E8))
    {
      break;
    }

    v231 = v4;
    v229 = a3;
    v15 = sub_1006CBD34(a2, a3);
    v16 = v15 + 64;
    v17 = 1 << v15[32];
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v4 = v18 & *(v15 + 8);
    swift_beginAccess();
    v19 = 0;
    a3 = ((v17 + 63) >> 6);
    *&v20 = 138412290;
    v230 = v20;
    v233 = a1;
    v232 = v15;
    while (v4)
    {
LABEL_15:
      v22 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v23 = (v19 << 10) | (16 * v22);
      v24 = *(v15 + 7);
      v25 = (*(v15 + 6) + v23);
      v26 = v25[1];
      v236 = *v25;
      v27 = (v24 + v23);
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = a1[14];
      v31 = *(v30 + 16);
      v237 = v26;

      v235 = v28;
      sub_10090C56C(v28, v29);
      v234 = v29;
      if (v31)
      {

        v32 = sub_100771D58(v236, v237);
        if ((v33 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v30 + 56) + 48 * v32, &v244);

        if (v29 <= 1)
        {
          if (v29)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v34 = NSNumber.init(BOOLeanLiteral:)(v235 & 1).super.super.isa;
          }

          else
          {
            v34 = v235;
          }

          v94 = v34;
          goto LABEL_102;
        }

        if (v29 != 2)
        {
          sub_1010100EC(&v244, &v239);
          if (v240[24] != 3)
          {
LABEL_145:

            sub_10118B5A0(&v239);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v244);
            return;
          }

          v95 = v235;
          sub_10000A748(&v239._countAndFlagsBits, v241);
          v96 = sub_1000035D0(v241, v242);
          __chkstk_darwin(v96);
          (*(v98 + 16))(v223 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v233;
          v94 = [objc_allocWithZone(NSNumber) initWithDouble:*&v239._countAndFlagsBits + *&v95];
          sub_100007BAC(v241);
          goto LABEL_102;
        }

        sub_1010100EC(&v244, &v239);
        if (v240[24] != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v239._countAndFlagsBits, v241);
        v79 = v242;
        v78 = v243;
        v80 = sub_1000035D0(v241, v242);
        v227 = v223;
        __chkstk_darwin(v80);
        v225 = v81;
        v82 = v223 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
        v228 = v83;
        (*(v83 + 16))(v82);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v239._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v84 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v84 < 64)
            {
              goto LABEL_89;
            }

            v226 = v78;
            v224 = v223;
            __chkstk_darwin(v84);
            v86 = v223 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v87 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v228 + 8))(v86, v79);
            v78 = v226;
            if (v87)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v224) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v125 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v224)
            {
              v226 = v78;
              if (v125 <= 64)
              {
                v224 = *(*(v78 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v223[3] = v223;
                __chkstk_darwin(AssociatedTypeWitness);
                v223[1] = v223 - v131;
                swift_getAssociatedConformanceWitness();
                v132 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v223[2] = v223;
                __chkstk_darwin(v132);
                v134 = v223 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v135 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v228 + 8))(v134, v79);
                if (v135)
                {
                  goto LABEL_163;
                }

                v78 = v226;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v224 = v223;
              __chkstk_darwin(v125);
              v127 = v223 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v128 = dispatch thunk of static Comparable.< infix(_:_:)();
              v129 = v127;
              v78 = v226;
              (*(v228 + 8))(v129, v79);
              if (v128)
              {
                goto LABEL_163;
              }
            }

            else if (v125 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v239._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v136 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v137 = v78;
          v138 = v136;
          v226 = v137;
          v139 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v138)
          {
            if (v139 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v139 >= 64)
          {
LABEL_93:
            v224 = v223;
            __chkstk_darwin(v139);
            v225 = v223 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v141 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v228 + 8))(v225, v79);
            if (v141)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v142 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v228 + 8))(v82, v79);
        v48 = __OFADD__(v142, v235);
        v143 = &v235[v142];
        if (v48)
        {
          goto LABEL_154;
        }

        v94 = [objc_allocWithZone(NSNumber) initWithLongLong:v143];
        sub_100007BAC(v241);
        a1 = v233;
LABEL_102:
        objc_opt_self();
        v144 = swift_dynamicCastObjCClass();
        if (v144)
        {
          v145 = v144;
          v146 = v94;
          v147 = String.init(_:)(v145);
          v148 = a1;
          v149 = sub_1000DF96C();
          swift_beginAccess();
          v239 = v147;
          *&v240[8] = &type metadata for String;
          *&v240[16] = v149;
          v240[24] = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v238 = v148[14];
          v151 = v238;
          v148[14] = 0x8000000000000000;
          v152 = sub_100771D58(v236, v237);
          v154 = v151[2];
          v155 = (v153 & 1) == 0;
          v48 = __OFADD__(v154, v155);
          v156 = v154 + v155;
          if (v48)
          {
            goto LABEL_151;
          }

          v157 = v153;
          if (v151[3] >= v156)
          {
            v15 = v232;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v218 = v152;
              sub_1010050E8();
              v152 = v218;
            }
          }

          else
          {
            sub_100FE65C4(v156, isUniquelyReferenced_nonNull_native);
            v152 = sub_100771D58(v236, v237);
            v15 = v232;
            if ((v157 & 1) != (v158 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v233;
          if (v157)
          {
            v177 = v152;

            a2 = v238;
            sub_10118B568(&v239, v238[7] + 48 * v177);
          }

          else
          {
            a2 = v238;
            v238[(v152 >> 6) + 8] |= 1 << v152;
            v178 = (a2[6] + 16 * v152);
            v179 = v237;
            *v178 = v236;
            v178[1] = v179;
            v180 = (a2[7] + 48 * v152);
            v181 = *&v240[9];
            v182 = *v240;
            *v180 = v239;
            v180[1] = v182;
            *(&v180[1]._object + 1) = v181;
            v183 = a2[2];
            v48 = __OFADD__(v183, 1);
            v184 = v183 + 1;
            if (v48)
            {
              goto LABEL_153;
            }

            a2[2] = v184;
          }

          v185 = v234;
          a1[14] = a2;
          swift_endAccess();
          sub_101010148(v235, v185);

          goto LABEL_120;
        }

        objc_opt_self();
        v159 = swift_dynamicCastObjCClass();
        if (v159)
        {
          v160 = v159;
          [v159 doubleValue];
          v162 = v161;
          v163 = [v160 integerValue];
          if (v162 == v163)
          {
            v164 = v163;
            v165 = sub_1000DFAD8();
            swift_beginAccess();
            v239._countAndFlagsBits = v164;
            *&v240[8] = &type metadata for Int;
            *&v240[16] = v165;
            v240[24] = 2;
            v166 = swift_isUniquelyReferenced_nonNull_native();
            v167 = a1;
            v168 = v166;
            v238 = v167[14];
            v169 = v238;
            v167[14] = 0x8000000000000000;
            v170 = sub_100771D58(v236, v237);
            v172 = v169[2];
            v173 = (v171 & 1) == 0;
            v48 = __OFADD__(v172, v173);
            v174 = v172 + v173;
            if (v48)
            {
              goto LABEL_157;
            }

            v175 = v171;
            if (v169[3] >= v174)
            {
              if ((v168 & 1) == 0)
              {
                v221 = v170;
                sub_1010050E8();
                v170 = v221;
              }
            }

            else
            {
              sub_100FE65C4(v174, v168);
              v170 = sub_100771D58(v236, v237);
              if ((v175 & 1) != (v176 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v233;
            if ((v175 & 1) == 0)
            {
              a2 = v238;
              v238[(v170 >> 6) + 8] |= 1 << v170;
              v202 = (a2[6] + 16 * v170);
              v203 = v237;
              *v202 = v236;
              v202[1] = v203;
              v204 = (a2[7] + 48 * v170);
              v205 = *&v240[9];
              v206 = *v240;
              *v204 = v239;
              v204[1] = v206;
              *(&v204[1]._object + 1) = v205;
              v207 = a2[2];
              v48 = __OFADD__(v207, 1);
              v208 = v207 + 1;
              if (v48)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v209 = v170;

            a2 = v238;
            sub_10118B568(&v239, v238[7] + 48 * v209);
          }

          else
          {
            v191 = sub_1000DFA84();
            swift_beginAccess();
            *&v239._countAndFlagsBits = v162;
            *&v240[8] = &type metadata for Double;
            *&v240[16] = v191;
            v240[24] = 3;
            v192 = swift_isUniquelyReferenced_nonNull_native();
            v193 = a1;
            v194 = v192;
            v238 = v193[14];
            v195 = v238;
            v193[14] = 0x8000000000000000;
            v170 = sub_100771D58(v236, v237);
            v197 = v195[2];
            v198 = (v196 & 1) == 0;
            v48 = __OFADD__(v197, v198);
            v199 = v197 + v198;
            if (v48)
            {
              goto LABEL_159;
            }

            v200 = v196;
            if (v195[3] >= v199)
            {
              if ((v194 & 1) == 0)
              {
                v222 = v170;
                sub_1010050E8();
                v170 = v222;
              }
            }

            else
            {
              sub_100FE65C4(v199, v194);
              v170 = sub_100771D58(v236, v237);
              if ((v200 & 1) != (v201 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v233;
            if (v200)
            {
              goto LABEL_139;
            }

            a2 = v238;
            v238[(v170 >> 6) + 8] |= 1 << v170;
            v210 = (a2[6] + 16 * v170);
            v211 = v237;
            *v210 = v236;
            v210[1] = v211;
            v212 = (a2[7] + 48 * v170);
            v213 = *&v240[9];
            v214 = *v240;
            *v212 = v239;
            v212[1] = v214;
            *(&v212[1]._object + 1) = v213;
            v215 = a2[2];
            v48 = __OFADD__(v215, 1);
            v208 = v215 + 1;
            if (v48)
            {
              goto LABEL_162;
            }

LABEL_141:
            a2[2] = v208;
          }

          v216 = v234;
          a1[14] = a2;
          swift_endAccess();

          sub_101010148(v235, v216);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v186 = type metadata accessor for Logger();
        sub_1000076D4(v186, qword_10177C6D0);
        v187 = v94;
        v146 = Logger.logObject.getter();
        a2 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v146, a2))
        {

          sub_101010148(v235, v234);
LABEL_120:

          goto LABEL_143;
        }

        v188 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        *v188 = v230;
        *(v188 + 4) = v187;
        *v189 = v187;
        v190 = v187;
        _os_log_impl(&_mh_execute_header, v146, a2, "Unsupported value type: %@!", v188, 0xCu);
        sub_10000B3A8(v189, &qword_10169BB30, &unk_10138B3C0);
        v15 = v232;

        a1 = v233;

        sub_101010148(v235, v234);
LABEL_143:
        sub_10118B5A0(&v244);
      }

      else
      {
LABEL_21:
        if (v29 > 1)
        {
          if (v29 == 2)
          {
            v36 = objc_allocWithZone(NSNumber);
            isa = [v36 initWithLongLong:v235];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v235];
          }
        }

        else if (v29)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v235 & 1).super.super.isa;
        }

        else
        {
          isa = v235;
        }

        v37 = isa;
        objc_opt_self();
        v38 = swift_dynamicCastObjCClass();
        if (v38)
        {
          v39 = v38;
          v8 = v37;
          v40 = String.init(_:)(v39);
          object = v40._object;
          v41 = sub_1000DF96C();
          swift_beginAccess();
          v244 = v40;
          *&v245[8] = &type metadata for String;
          *&v245[16] = v41;
          v245[24] = 1;
          v42 = swift_isUniquelyReferenced_nonNull_native();
          v241[0] = a1[14];
          v43 = v241[0];
          a1[14] = 0x8000000000000000;
          v44 = sub_100771D58(v236, v237);
          v46 = *(v43 + 16);
          v47 = (v45 & 1) == 0;
          v48 = __OFADD__(v46, v47);
          v49 = v46 + v47;
          if (v48)
          {
            __break(1u);
            goto LABEL_149;
          }

          v50 = v45;
          if (*(v43 + 24) >= v49)
          {
            if ((v42 & 1) == 0)
            {
              v217 = v44;
              sub_1010050E8();
              v44 = v217;
            }
          }

          else
          {
            sub_100FE65C4(v49, v42);
            v44 = sub_100771D58(v236, v237);
            if ((v50 & 1) != (v51 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v233;
          v15 = v232;
          if (v50)
          {
            v70 = v44;

            a2 = v241[0];
            sub_10118B568(&v244, *(v241[0] + 56) + 48 * v70);
          }

          else
          {
            a2 = v241[0];
            *(v241[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
            v71 = (a2[6] + 16 * v44);
            v72 = v237;
            *v71 = v236;
            v71[1] = v72;
            v73 = (a2[7] + 48 * v44);
            v74 = *&v245[9];
            v75 = *v245;
            *v73 = v244;
            v73[1] = v75;
            *(&v73[1]._object + 1) = v74;
            v76 = a2[2];
            v48 = __OFADD__(v76, 1);
            v77 = v76 + 1;
            if (v48)
            {
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
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
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            a2[2] = v77;
          }

          a1[14] = a2;
          swift_endAccess();

LABEL_46:
          sub_101010148(v235, v234);
        }

        else
        {
          objc_opt_self();
          v52 = swift_dynamicCastObjCClass();
          if (v52)
          {
            v53 = v52;
            [v52 doubleValue];
            v55 = v54;
            v56 = [v53 integerValue];
            if (v55 == v56)
            {
              v57 = v56;
              v58 = sub_1000DFAD8();
              swift_beginAccess();
              v244._countAndFlagsBits = v57;
              *&v245[8] = &type metadata for Int;
              *&v245[16] = v58;
              v245[24] = 2;
              v59 = swift_isUniquelyReferenced_nonNull_native();
              v60 = a1;
              v61 = v59;
              v241[0] = v60[14];
              v62 = v241[0];
              v60[14] = 0x8000000000000000;
              v63 = sub_100771D58(v236, v237);
              v65 = *(v62 + 16);
              v66 = (v64 & 1) == 0;
              v48 = __OFADD__(v65, v66);
              v67 = v65 + v66;
              if (v48)
              {
                goto LABEL_152;
              }

              v68 = v64;
              if (*(v62 + 24) >= v67)
              {
                if ((v61 & 1) == 0)
                {
                  v219 = v63;
                  sub_1010050E8();
                  v63 = v219;
                }
              }

              else
              {
                sub_100FE65C4(v67, v61);
                v63 = sub_100771D58(v236, v237);
                if ((v68 & 1) != (v69 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v233;
              if (v68)
              {
                goto LABEL_77;
              }

              a2 = v241[0];
              *(v241[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
              v110 = (a2[6] + 16 * v63);
              v111 = v237;
              *v110 = v236;
              v110[1] = v111;
              v112 = (a2[7] + 48 * v63);
              v113 = *&v245[9];
              v114 = *v245;
              *v112 = v244;
              v112[1] = v114;
              *(&v112[1]._object + 1) = v113;
              v115 = a2[2];
              v48 = __OFADD__(v115, 1);
              v116 = v115 + 1;
              if (v48)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v99 = sub_1000DFA84();
              swift_beginAccess();
              *&v244._countAndFlagsBits = v55;
              *&v245[8] = &type metadata for Double;
              *&v245[16] = v99;
              v245[24] = 3;
              v100 = swift_isUniquelyReferenced_nonNull_native();
              v101 = a1;
              v102 = v100;
              v241[0] = v101[14];
              v103 = v241[0];
              v101[14] = 0x8000000000000000;
              v63 = sub_100771D58(v236, v237);
              v105 = *(v103 + 16);
              v106 = (v104 & 1) == 0;
              v48 = __OFADD__(v105, v106);
              v107 = v105 + v106;
              if (v48)
              {
                goto LABEL_155;
              }

              v108 = v104;
              if (*(v103 + 24) >= v107)
              {
                if ((v102 & 1) == 0)
                {
                  v220 = v63;
                  sub_1010050E8();
                  v63 = v220;
                }
              }

              else
              {
                sub_100FE65C4(v107, v102);
                v63 = sub_100771D58(v236, v237);
                if ((v108 & 1) != (v109 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v233;
              if (v108)
              {
LABEL_77:
                v117 = v63;

                a2 = v241[0];
                sub_10118B568(&v244, *(v241[0] + 56) + 48 * v117);
                goto LABEL_80;
              }

              a2 = v241[0];
              *(v241[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
              v118 = (a2[6] + 16 * v63);
              v119 = v237;
              *v118 = v236;
              v118[1] = v119;
              v120 = (a2[7] + 48 * v63);
              v121 = *&v245[9];
              v122 = *v245;
              *v120 = v244;
              v120[1] = v122;
              *(&v120[1]._object + 1) = v121;
              v123 = a2[2];
              v48 = __OFADD__(v123, 1);
              v116 = v123 + 1;
              if (v48)
              {
                goto LABEL_158;
              }
            }

            a2[2] = v116;
LABEL_80:
            v124 = v234;
            a1[14] = a2;
            swift_endAccess();

            sub_101010148(v235, v124);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v88 = type metadata accessor for Logger();
            sub_1000076D4(v88, qword_10177C6D0);
            v89 = v37;
            v90 = Logger.logObject.getter();
            a2 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v90, a2))
            {
              v91 = swift_slowAlloc();
              v92 = swift_slowAlloc();
              *v91 = v230;
              *(v91 + 4) = v89;
              *v92 = v89;
              v93 = v89;
              _os_log_impl(&_mh_execute_header, v90, a2, "Unsupported value type: %@!", v91, 0xCu);
              sub_10000B3A8(v92, &qword_10169BB30, &unk_10138B3C0);
              v15 = v232;

              a1 = v233;

              goto LABEL_46;
            }

            sub_101010148(v235, v234);
          }
        }
      }
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= a3)
      {

        return;
      }

      v4 = *&v16[8 * v21];
      ++v19;
      if (v4)
      {
        v19 = v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_147:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_149:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177C6D0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v244._countAndFlagsBits = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1000136BC(v8, object, &v244._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v11, v12, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v13, 0xCu);
    sub_100007BAC(v14);
  }
}

void sub_101177A14(void *a1, void *a2)
{
  v3 = v2;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v6 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v6, object, qword_10177C6E8))
    {
      break;
    }

    v230 = v3;
    v228 = a2;
    v13 = sub_100761BAC(a2);
    v14 = v13 + 64;
    v15 = 1 << v13[32];
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v3 = v16 & *(v13 + 8);
    swift_beginAccess();
    v17 = 0;
    v18 = (v15 + 63) >> 6;
    *&v19 = 138412290;
    v229 = v19;
    v232 = a1;
    v231 = v13;
    while (v3)
    {
LABEL_15:
      v21 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v22 = (v17 << 10) | (16 * v21);
      v23 = *(v13 + 7);
      v24 = (*(v13 + 6) + v22);
      v25 = v24[1];
      v235 = *v24;
      v26 = (v23 + v22);
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = a1[14];
      v30 = *(v29 + 16);
      v236 = v25;

      v234 = v27;
      sub_10090C56C(v27, v28);
      v233 = v28;
      if (v30)
      {

        v31 = sub_100771D58(v235, v236);
        if ((v32 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v29 + 56) + 48 * v31, &v243);

        if (v28 <= 1)
        {
          if (v28)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v33 = NSNumber.init(BOOLeanLiteral:)(v234 & 1).super.super.isa;
          }

          else
          {
            v33 = v234;
          }

          v93 = v33;
          goto LABEL_102;
        }

        if (v28 != 2)
        {
          sub_1010100EC(&v243, &v238);
          if (v239[24] != 3)
          {
LABEL_145:

            sub_10118B5A0(&v238);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v243);
            return;
          }

          v94 = v234;
          sub_10000A748(&v238._countAndFlagsBits, v240);
          v95 = sub_1000035D0(v240, v241);
          __chkstk_darwin(v95);
          (*(v97 + 16))(v222 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v232;
          v93 = [objc_allocWithZone(NSNumber) initWithDouble:*&v238._countAndFlagsBits + *&v94];
          sub_100007BAC(v240);
          goto LABEL_102;
        }

        sub_1010100EC(&v243, &v238);
        if (v239[24] != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v238._countAndFlagsBits, v240);
        v78 = v241;
        v77 = v242;
        v79 = sub_1000035D0(v240, v241);
        v226 = v222;
        __chkstk_darwin(v79);
        v224 = v80;
        v81 = v222 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
        v227 = v82;
        (*(v82 + 16))(v81);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v238._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v83 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v83 < 64)
            {
              goto LABEL_89;
            }

            v225 = v77;
            v223 = v222;
            __chkstk_darwin(v83);
            v85 = v222 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v86 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v227 + 8))(v85, v78);
            v77 = v225;
            if (v86)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v223) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v124 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v223)
            {
              v225 = v77;
              if (v124 <= 64)
              {
                v223 = *(*(v77 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v222[3] = v222;
                __chkstk_darwin(AssociatedTypeWitness);
                v222[1] = v222 - v130;
                swift_getAssociatedConformanceWitness();
                v131 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v222[2] = v222;
                __chkstk_darwin(v131);
                v133 = v222 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v134 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v227 + 8))(v133, v78);
                if (v134)
                {
                  goto LABEL_163;
                }

                v77 = v225;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v223 = v222;
              __chkstk_darwin(v124);
              v126 = v222 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v127 = dispatch thunk of static Comparable.< infix(_:_:)();
              v128 = v126;
              v77 = v225;
              (*(v227 + 8))(v128, v78);
              if (v127)
              {
                goto LABEL_163;
              }
            }

            else if (v124 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v238._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v135 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v136 = v77;
          v137 = v135;
          v225 = v136;
          v138 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v137)
          {
            if (v138 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v138 >= 64)
          {
LABEL_93:
            v223 = v222;
            __chkstk_darwin(v138);
            v224 = v222 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v140 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v227 + 8))(v224, v78);
            if (v140)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v141 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v227 + 8))(v81, v78);
        v47 = __OFADD__(v141, v234);
        v142 = &v234[v141];
        if (v47)
        {
          goto LABEL_154;
        }

        v93 = [objc_allocWithZone(NSNumber) initWithLongLong:v142];
        sub_100007BAC(v240);
        a1 = v232;
LABEL_102:
        objc_opt_self();
        v143 = swift_dynamicCastObjCClass();
        if (v143)
        {
          v144 = v143;
          v145 = v93;
          v146 = String.init(_:)(v144);
          v147 = a1;
          v148 = sub_1000DF96C();
          swift_beginAccess();
          v238 = v146;
          *&v239[8] = &type metadata for String;
          *&v239[16] = v148;
          v239[24] = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v237 = v147[14];
          v150 = v237;
          v147[14] = 0x8000000000000000;
          v151 = sub_100771D58(v235, v236);
          v153 = v150[2];
          v154 = (v152 & 1) == 0;
          v47 = __OFADD__(v153, v154);
          v155 = v153 + v154;
          if (v47)
          {
            goto LABEL_151;
          }

          v156 = v152;
          if (v150[3] >= v155)
          {
            v13 = v231;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v217 = v151;
              sub_1010050E8();
              v151 = v217;
            }
          }

          else
          {
            sub_100FE65C4(v155, isUniquelyReferenced_nonNull_native);
            v151 = sub_100771D58(v235, v236);
            v13 = v231;
            if ((v156 & 1) != (v157 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v232;
          if (v156)
          {
            v176 = v151;

            a2 = v237;
            sub_10118B568(&v238, v237[7] + 48 * v176);
          }

          else
          {
            a2 = v237;
            v237[(v151 >> 6) + 8] |= 1 << v151;
            v177 = (a2[6] + 16 * v151);
            v178 = v236;
            *v177 = v235;
            v177[1] = v178;
            v179 = (a2[7] + 48 * v151);
            v180 = *&v239[9];
            v181 = *v239;
            *v179 = v238;
            v179[1] = v181;
            *(&v179[1]._object + 1) = v180;
            v182 = a2[2];
            v47 = __OFADD__(v182, 1);
            v183 = v182 + 1;
            if (v47)
            {
              goto LABEL_153;
            }

            a2[2] = v183;
          }

          v184 = v233;
          a1[14] = a2;
          swift_endAccess();
          sub_101010148(v234, v184);

          goto LABEL_120;
        }

        objc_opt_self();
        v158 = swift_dynamicCastObjCClass();
        if (v158)
        {
          v159 = v158;
          [v158 doubleValue];
          v161 = v160;
          v162 = [v159 integerValue];
          if (v161 == v162)
          {
            v163 = v162;
            v164 = sub_1000DFAD8();
            swift_beginAccess();
            v238._countAndFlagsBits = v163;
            *&v239[8] = &type metadata for Int;
            *&v239[16] = v164;
            v239[24] = 2;
            v165 = swift_isUniquelyReferenced_nonNull_native();
            v166 = a1;
            v167 = v165;
            v237 = v166[14];
            v168 = v237;
            v166[14] = 0x8000000000000000;
            v169 = sub_100771D58(v235, v236);
            v171 = v168[2];
            v172 = (v170 & 1) == 0;
            v47 = __OFADD__(v171, v172);
            v173 = v171 + v172;
            if (v47)
            {
              goto LABEL_157;
            }

            v174 = v170;
            if (v168[3] >= v173)
            {
              if ((v167 & 1) == 0)
              {
                v220 = v169;
                sub_1010050E8();
                v169 = v220;
              }
            }

            else
            {
              sub_100FE65C4(v173, v167);
              v169 = sub_100771D58(v235, v236);
              if ((v174 & 1) != (v175 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v232;
            if ((v174 & 1) == 0)
            {
              a2 = v237;
              v237[(v169 >> 6) + 8] |= 1 << v169;
              v201 = (a2[6] + 16 * v169);
              v202 = v236;
              *v201 = v235;
              v201[1] = v202;
              v203 = (a2[7] + 48 * v169);
              v204 = *&v239[9];
              v205 = *v239;
              *v203 = v238;
              v203[1] = v205;
              *(&v203[1]._object + 1) = v204;
              v206 = a2[2];
              v47 = __OFADD__(v206, 1);
              v207 = v206 + 1;
              if (v47)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v208 = v169;

            a2 = v237;
            sub_10118B568(&v238, v237[7] + 48 * v208);
          }

          else
          {
            v190 = sub_1000DFA84();
            swift_beginAccess();
            *&v238._countAndFlagsBits = v161;
            *&v239[8] = &type metadata for Double;
            *&v239[16] = v190;
            v239[24] = 3;
            v191 = swift_isUniquelyReferenced_nonNull_native();
            v192 = a1;
            v193 = v191;
            v237 = v192[14];
            v194 = v237;
            v192[14] = 0x8000000000000000;
            v169 = sub_100771D58(v235, v236);
            v196 = v194[2];
            v197 = (v195 & 1) == 0;
            v47 = __OFADD__(v196, v197);
            v198 = v196 + v197;
            if (v47)
            {
              goto LABEL_159;
            }

            v199 = v195;
            if (v194[3] >= v198)
            {
              if ((v193 & 1) == 0)
              {
                v221 = v169;
                sub_1010050E8();
                v169 = v221;
              }
            }

            else
            {
              sub_100FE65C4(v198, v193);
              v169 = sub_100771D58(v235, v236);
              if ((v199 & 1) != (v200 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v232;
            if (v199)
            {
              goto LABEL_139;
            }

            a2 = v237;
            v237[(v169 >> 6) + 8] |= 1 << v169;
            v209 = (a2[6] + 16 * v169);
            v210 = v236;
            *v209 = v235;
            v209[1] = v210;
            v211 = (a2[7] + 48 * v169);
            v212 = *&v239[9];
            v213 = *v239;
            *v211 = v238;
            v211[1] = v213;
            *(&v211[1]._object + 1) = v212;
            v214 = a2[2];
            v47 = __OFADD__(v214, 1);
            v207 = v214 + 1;
            if (v47)
            {
              goto LABEL_162;
            }

LABEL_141:
            a2[2] = v207;
          }

          v215 = v233;
          a1[14] = a2;
          swift_endAccess();

          sub_101010148(v234, v215);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v185 = type metadata accessor for Logger();
        sub_1000076D4(v185, qword_10177C6D0);
        v186 = v93;
        v145 = Logger.logObject.getter();
        a2 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v145, a2))
        {

          sub_101010148(v234, v233);
LABEL_120:

          goto LABEL_143;
        }

        v187 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        *v187 = v229;
        *(v187 + 4) = v186;
        *v188 = v186;
        v189 = v186;
        _os_log_impl(&_mh_execute_header, v145, a2, "Unsupported value type: %@!", v187, 0xCu);
        sub_10000B3A8(v188, &qword_10169BB30, &unk_10138B3C0);
        v13 = v231;

        a1 = v232;

        sub_101010148(v234, v233);
LABEL_143:
        sub_10118B5A0(&v243);
      }

      else
      {
LABEL_21:
        if (v28 > 1)
        {
          if (v28 == 2)
          {
            v35 = objc_allocWithZone(NSNumber);
            isa = [v35 initWithLongLong:v234];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v234];
          }
        }

        else if (v28)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v234 & 1).super.super.isa;
        }

        else
        {
          isa = v234;
        }

        v36 = isa;
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (v37)
        {
          v38 = v37;
          v6 = v36;
          v39 = String.init(_:)(v38);
          object = v39._object;
          v40 = sub_1000DF96C();
          swift_beginAccess();
          v243 = v39;
          *&v244[8] = &type metadata for String;
          *&v244[16] = v40;
          v244[24] = 1;
          v41 = swift_isUniquelyReferenced_nonNull_native();
          v240[0] = a1[14];
          v42 = v240[0];
          a1[14] = 0x8000000000000000;
          v43 = sub_100771D58(v235, v236);
          v45 = *(v42 + 16);
          v46 = (v44 & 1) == 0;
          v47 = __OFADD__(v45, v46);
          v48 = v45 + v46;
          if (v47)
          {
            __break(1u);
            goto LABEL_149;
          }

          v49 = v44;
          if (*(v42 + 24) >= v48)
          {
            if ((v41 & 1) == 0)
            {
              v216 = v43;
              sub_1010050E8();
              v43 = v216;
            }
          }

          else
          {
            sub_100FE65C4(v48, v41);
            v43 = sub_100771D58(v235, v236);
            if ((v49 & 1) != (v50 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v232;
          v13 = v231;
          if (v49)
          {
            v69 = v43;

            a2 = v240[0];
            sub_10118B568(&v243, *(v240[0] + 56) + 48 * v69);
          }

          else
          {
            a2 = v240[0];
            *(v240[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
            v70 = (a2[6] + 16 * v43);
            v71 = v236;
            *v70 = v235;
            v70[1] = v71;
            v72 = (a2[7] + 48 * v43);
            v73 = *&v244[9];
            v74 = *v244;
            *v72 = v243;
            v72[1] = v74;
            *(&v72[1]._object + 1) = v73;
            v75 = a2[2];
            v47 = __OFADD__(v75, 1);
            v76 = v75 + 1;
            if (v47)
            {
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
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
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            a2[2] = v76;
          }

          a1[14] = a2;
          swift_endAccess();

LABEL_46:
          sub_101010148(v234, v233);
        }

        else
        {
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          if (v51)
          {
            v52 = v51;
            [v51 doubleValue];
            v54 = v53;
            v55 = [v52 integerValue];
            if (v54 == v55)
            {
              v56 = v55;
              v57 = sub_1000DFAD8();
              swift_beginAccess();
              v243._countAndFlagsBits = v56;
              *&v244[8] = &type metadata for Int;
              *&v244[16] = v57;
              v244[24] = 2;
              v58 = swift_isUniquelyReferenced_nonNull_native();
              v59 = a1;
              v60 = v58;
              v240[0] = v59[14];
              v61 = v240[0];
              v59[14] = 0x8000000000000000;
              v62 = sub_100771D58(v235, v236);
              v64 = *(v61 + 16);
              v65 = (v63 & 1) == 0;
              v47 = __OFADD__(v64, v65);
              v66 = v64 + v65;
              if (v47)
              {
                goto LABEL_152;
              }

              v67 = v63;
              if (*(v61 + 24) >= v66)
              {
                if ((v60 & 1) == 0)
                {
                  v218 = v62;
                  sub_1010050E8();
                  v62 = v218;
                }
              }

              else
              {
                sub_100FE65C4(v66, v60);
                v62 = sub_100771D58(v235, v236);
                if ((v67 & 1) != (v68 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v232;
              if (v67)
              {
                goto LABEL_77;
              }

              a2 = v240[0];
              *(v240[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v109 = (a2[6] + 16 * v62);
              v110 = v236;
              *v109 = v235;
              v109[1] = v110;
              v111 = (a2[7] + 48 * v62);
              v112 = *&v244[9];
              v113 = *v244;
              *v111 = v243;
              v111[1] = v113;
              *(&v111[1]._object + 1) = v112;
              v114 = a2[2];
              v47 = __OFADD__(v114, 1);
              v115 = v114 + 1;
              if (v47)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v98 = sub_1000DFA84();
              swift_beginAccess();
              *&v243._countAndFlagsBits = v54;
              *&v244[8] = &type metadata for Double;
              *&v244[16] = v98;
              v244[24] = 3;
              v99 = swift_isUniquelyReferenced_nonNull_native();
              v100 = a1;
              v101 = v99;
              v240[0] = v100[14];
              v102 = v240[0];
              v100[14] = 0x8000000000000000;
              v62 = sub_100771D58(v235, v236);
              v104 = *(v102 + 16);
              v105 = (v103 & 1) == 0;
              v47 = __OFADD__(v104, v105);
              v106 = v104 + v105;
              if (v47)
              {
                goto LABEL_155;
              }

              v107 = v103;
              if (*(v102 + 24) >= v106)
              {
                if ((v101 & 1) == 0)
                {
                  v219 = v62;
                  sub_1010050E8();
                  v62 = v219;
                }
              }

              else
              {
                sub_100FE65C4(v106, v101);
                v62 = sub_100771D58(v235, v236);
                if ((v107 & 1) != (v108 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v232;
              if (v107)
              {
LABEL_77:
                v116 = v62;

                a2 = v240[0];
                sub_10118B568(&v243, *(v240[0] + 56) + 48 * v116);
                goto LABEL_80;
              }

              a2 = v240[0];
              *(v240[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v117 = (a2[6] + 16 * v62);
              v118 = v236;
              *v117 = v235;
              v117[1] = v118;
              v119 = (a2[7] + 48 * v62);
              v120 = *&v244[9];
              v121 = *v244;
              *v119 = v243;
              v119[1] = v121;
              *(&v119[1]._object + 1) = v120;
              v122 = a2[2];
              v47 = __OFADD__(v122, 1);
              v115 = v122 + 1;
              if (v47)
              {
                goto LABEL_158;
              }
            }

            a2[2] = v115;
LABEL_80:
            v123 = v233;
            a1[14] = a2;
            swift_endAccess();

            sub_101010148(v234, v123);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v87 = type metadata accessor for Logger();
            sub_1000076D4(v87, qword_10177C6D0);
            v88 = v36;
            v89 = Logger.logObject.getter();
            a2 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v89, a2))
            {
              v90 = swift_slowAlloc();
              v91 = swift_slowAlloc();
              *v90 = v229;
              *(v90 + 4) = v88;
              *v91 = v88;
              v92 = v88;
              _os_log_impl(&_mh_execute_header, v89, a2, "Unsupported value type: %@!", v90, 0xCu);
              sub_10000B3A8(v91, &qword_10169BB30, &unk_10138B3C0);
              v13 = v231;

              a1 = v232;

              goto LABEL_46;
            }

            sub_101010148(v234, v233);
          }
        }
      }
    }

    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v18)
      {

        return;
      }

      v3 = *&v14[8 * v20];
      ++v17;
      if (v3)
      {
        v17 = v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_147:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_149:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C6D0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v243._countAndFlagsBits = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1000136BC(v6, object, &v243._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v9, v10, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v11, 0xCu);
    sub_100007BAC(v12);
  }
}

uint64_t sub_101179424(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for BeaconObservation(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a1, v4, &qword_1016A42E0, &qword_1013B0010);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v9 = 0x6E776F6E6B6E75;
    sub_10000B3A8(v4, &qword_1016A42E0, &qword_1013B0010);
  }

  else
  {
    sub_100B3DB48(v4, v8);
    v11 = v8[*(v5 + 24)];
    switch(v11)
    {
      case '#':
        sub_10073B5F0(v8);
        return 0x656E6E6F63736964;
      case '""':
        sub_10073B5F0(v8);
        return 0xD000000000000016;
      case '!':
        sub_10073B5F0(v8);
        return 0x657463656E6E6F63;
      default:
        v9 = 0x6E776F6E6B6E75;
        sub_10073B5F0(v8);
        break;
    }
  }

  return v9;
}

void sub_101179650(void *a1, int64_t a2, uint64_t a3, void *a4, void *a5, int64_t a6, double a7, double a8, double a9)
{
  v10 = v9;
  if (qword_101695280 != -1)
  {
    goto LABEL_151;
  }

  while (1)
  {
    v20 = a1[15];
    v21 = a1[16];
    if (sub_10111EACC(v20, v21, qword_10177C6E8))
    {
      break;
    }

    v247 = v10;
    v244 = a3;
    v243 = a5;
    v245 = a6;
    v27 = sub_100762F54(a7, a8, a9, a2, a3, a4, a5, a6);
    a5 = v27 + 8;
    v28 = v27[8];
    v252 = v27;
    v29 = 1 << *(v27 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    a3 = v30 & v28;
    swift_beginAccess();
    a6 = 0;
    a2 = (v29 + 63) >> 6;
    *&v31 = 138412290;
    v246 = v31;
    v251 = a1;
    v249 = a2;
    v250 = a5;
    while (a3)
    {
LABEL_15:
      v33 = __clz(__rbit64(a3));
      a3 &= a3 - 1;
      v34 = (a6 << 10) | (16 * v33);
      v35 = v252[7];
      v36 = v252[6] + v34;
      v37 = *(v36 + 8);
      v253 = *v36;
      v38 = v35 + v34;
      v39 = *v38;
      v10 = *(v38 + 8);
      v40 = a1[14];
      v41 = *(v40 + 16);
      v254 = v37;

      sub_10090C56C(*&v39, v10);
      if (v41)
      {

        v42 = sub_100771D58(*&v253, v254);
        if ((v43 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v40 + 56) + 48 * v42, &v261);

        if (v10 <= 1)
        {
          if (v10)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v44 = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v39) & 1).super.super.isa;
          }

          else
          {
            v44 = *&v39;
          }

          v106 = v44;
          goto LABEL_104;
        }

        if (v10 != 2)
        {
          sub_1010100EC(&v261, &v256);
          if (v257[24] != 3)
          {
LABEL_149:

            sub_10118B5A0(&v256);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v261);
            return;
          }

          sub_10000A748(&v256._countAndFlagsBits, v258);
          v107 = sub_1000035D0(v258, v259);
          __chkstk_darwin(v107);
          (*(v109 + 16))(v237 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          a1 = v251;
          BinaryFloatingPoint.init<A>(_:)();
          a9 = *&v256._countAndFlagsBits + v39;
          v106 = [objc_allocWithZone(NSNumber) initWithDouble:*&v256._countAndFlagsBits + v39];
          sub_100007BAC(v258);
          goto LABEL_104;
        }

        sub_1010100EC(&v261, &v256);
        if (v257[24] != 2)
        {
          goto LABEL_149;
        }

        v248 = 2;
        sub_10000A748(&v256._countAndFlagsBits, v258);
        v90 = v259;
        v89 = v260;
        v91 = sub_1000035D0(v258, v259);
        __chkstk_darwin(v91);
        v241 = v92;
        v93 = v237 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
        v242 = v94;
        (*(v94 + 16))(v93);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v256._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v95 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v95 < 64)
            {
              goto LABEL_90;
            }

            v239 = v89;
            v240 = v237;
            __chkstk_darwin(v95);
            v97 = v237 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v98 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v242 + 8))(v97, v90);
            if (v98)
            {
              goto LABEL_167;
            }
          }

          else
          {
            LODWORD(v240) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v137 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v240)
            {
              v239 = v89;
              if (v137 <= 64)
              {
                v240 = *(*(v89 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v238 = v237;
                __chkstk_darwin(AssociatedTypeWitness);
                v237[0] = v237 - v142;
                swift_getAssociatedConformanceWitness();
                v143 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v237[1] = v237;
                __chkstk_darwin(v143);
                v145 = v237 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v146 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v242 + 8))(v145, v90);
                if (v146)
                {
                  goto LABEL_167;
                }

LABEL_90:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_91;
              }

              v240 = v237;
              __chkstk_darwin(v137);
              v139 = v237 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v140 = dispatch thunk of static Comparable.< infix(_:_:)();
              (*(v242 + 8))(v139, v90);
              if (v140)
              {
                goto LABEL_167;
              }
            }

            else if (v137 < 64)
            {
              goto LABEL_90;
            }
          }
        }

LABEL_91:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v240 = v237;
          v256._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v147 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v148 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v147)
          {
            if (v148 > 64)
            {
              v238 = v237;
              __chkstk_darwin(v148);
              v241 = v237 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v150 = v241;
              v151 = dispatch thunk of static Comparable.< infix(_:_:)();
              (*(v242 + 8))(v150, v90);
              goto LABEL_101;
            }
          }

          else if (v148 >= 64)
          {
            v238 = v237;
            __chkstk_darwin(v148);
            v153 = v237 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v151 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v242 + 8))(v153, v90);
LABEL_101:
            if (v151)
            {
              goto LABEL_164;
            }

            goto LABEL_102;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_102:
        v154 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v242 + 8))(v93, v90);
        v59 = __OFADD__(v154, *&v39);
        v155 = v154 + *&v39;
        if (v59)
        {
          goto LABEL_158;
        }

        v106 = [objc_allocWithZone(NSNumber) initWithLongLong:v155];
        sub_100007BAC(v258);
        a1 = v251;
        v10 = v248;
LABEL_104:
        objc_opt_self();
        v156 = swift_dynamicCastObjCClass();
        if (v156)
        {
          v157 = v156;
          v158 = v39;
          v159 = v10;
          v160 = v106;
          v161 = String.init(_:)(v157);
          v162 = sub_1000DF96C();
          swift_beginAccess();
          v256 = v161;
          *&v257[8] = &type metadata for String;
          *&v257[16] = v162;
          v257[24] = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v255 = a1[14];
          v164 = v255;
          a1[14] = 0x8000000000000000;
          v165 = *&v253;
          v166 = sub_100771D58(*&v253, v254);
          v168 = v164[2];
          v169 = (v167 & 1) == 0;
          v59 = __OFADD__(v168, v169);
          v170 = v168 + v169;
          if (v59)
          {
            goto LABEL_155;
          }

          v171 = v167;
          if (v164[3] >= v170)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v232 = v166;
              sub_1010050E8();
              v166 = v232;
            }
          }

          else
          {
            sub_100FE65C4(v170, isUniquelyReferenced_nonNull_native);
            v166 = sub_100771D58(v165, v254);
            if ((v171 & 1) != (v172 & 1))
            {
              goto LABEL_168;
            }
          }

          v10 = v159;
          v190 = v158;
          if (v171)
          {
            v191 = v166;

            a4 = v255;
            sub_10118B568(&v256, v255[7] + 48 * v191);
            a1 = v251;
            a2 = v249;
            a5 = v250;
          }

          else
          {
            a4 = v255;
            v255[(v166 >> 6) + 8] |= 1 << v166;
            v192 = (a4[6] + 16 * v166);
            v193 = v254;
            *v192 = v165;
            v192[1] = v193;
            v194 = (a4[7] + 48 * v166);
            v195 = *&v257[9];
            v196 = *v257;
            *v194 = v256;
            v194[1] = v196;
            *(&v194[1]._object + 1) = v195;
            v197 = a4[2];
            v59 = __OFADD__(v197, 1);
            v198 = v197 + 1;
            a5 = v250;
            if (v59)
            {
              goto LABEL_157;
            }

            a4[2] = v198;
            a1 = v251;
            a2 = v249;
          }

          a1[14] = a4;
          swift_endAccess();
          sub_101010148(*&v190, v10);

          goto LABEL_122;
        }

        objc_opt_self();
        v173 = swift_dynamicCastObjCClass();
        if (v173)
        {
          v248 = v10;
          v174 = v173;
          [v173 doubleValue];
          a9 = v175;
          v176 = [v174 integerValue];
          a5 = v250;
          if (a9 == v176)
          {
            v177 = v176;
            v178 = a1;
            v179 = sub_1000DFAD8();
            swift_beginAccess();
            v256._countAndFlagsBits = v177;
            *&v257[8] = &type metadata for Int;
            *&v257[16] = v179;
            v257[24] = 2;
            v180 = swift_isUniquelyReferenced_nonNull_native();
            v255 = v178[14];
            v181 = v255;
            v178[14] = 0x8000000000000000;
            v182 = *&v253;
            v183 = sub_100771D58(*&v253, v254);
            v185 = v181[2];
            v186 = (v184 & 1) == 0;
            v59 = __OFADD__(v185, v186);
            v187 = v185 + v186;
            if (v59)
            {
              goto LABEL_161;
            }

            v188 = v184;
            if (v181[3] >= v187)
            {
              if ((v180 & 1) == 0)
              {
                v235 = v183;
                sub_1010050E8();
                v183 = v235;
              }
            }

            else
            {
              sub_100FE65C4(v187, v180);
              v183 = sub_100771D58(v182, v254);
              if ((v188 & 1) != (v189 & 1))
              {
                goto LABEL_168;
              }
            }

            v10 = v248;
            if (v188)
            {
              v214 = v183;

              a4 = v255;
              sub_10118B568(&v256, v255[7] + 48 * v214);
            }

            else
            {
              a4 = v255;
              v255[(v183 >> 6) + 8] |= 1 << v183;
              v215 = (a4[6] + 16 * v183);
              v216 = v254;
              *v215 = v182;
              v215[1] = v216;
              v217 = (a4[7] + 48 * v183);
              v218 = *&v257[9];
              v219 = *v257;
              *v217 = v256;
              v217[1] = v219;
              *(&v217[1]._object + 1) = v218;
              v220 = a4[2];
              v59 = __OFADD__(v220, 1);
              v221 = v220 + 1;
              if (v59)
              {
                goto LABEL_165;
              }

              a4[2] = v221;
            }

            a1 = v251;
            a2 = v249;
          }

          else
          {
            v204 = sub_1000DFA84();
            swift_beginAccess();
            *&v256._countAndFlagsBits = a9;
            *&v257[8] = &type metadata for Double;
            *&v257[16] = v204;
            v257[24] = 3;
            v205 = swift_isUniquelyReferenced_nonNull_native();
            v255 = a1[14];
            v206 = v255;
            a1[14] = 0x8000000000000000;
            v207 = sub_100771D58(*&v253, v254);
            v209 = v206[2];
            v210 = (v208 & 1) == 0;
            v59 = __OFADD__(v209, v210);
            v211 = v209 + v210;
            if (v59)
            {
              goto LABEL_163;
            }

            v212 = v208;
            if (v206[3] >= v211)
            {
              if ((v205 & 1) == 0)
              {
                v236 = v207;
                sub_1010050E8();
                v207 = v236;
              }
            }

            else
            {
              sub_100FE65C4(v211, v205);
              v207 = sub_100771D58(*&v253, v254);
              if ((v212 & 1) != (v213 & 1))
              {
                goto LABEL_168;
              }
            }

            v10 = v248;
            if (v212)
            {
              v222 = v207;

              a4 = v255;
              v223 = v255[7] + 48 * v222;
              a2 = v249;
              sub_10118B568(&v256, v223);
            }

            else
            {
              a4 = v255;
              v255[(v207 >> 6) + 8] |= 1 << v207;
              v224 = (a4[6] + 16 * v207);
              v225 = v254;
              *v224 = v253;
              *(v224 + 1) = v225;
              v226 = (a4[7] + 48 * v207);
              v227 = *&v257[9];
              v228 = *v257;
              *v226 = v256;
              v226[1] = v228;
              *(&v226[1]._object + 1) = v227;
              v229 = a4[2];
              v59 = __OFADD__(v229, 1);
              v230 = v229 + 1;
              if (v59)
              {
                goto LABEL_166;
              }

              a4[2] = v230;
            }

            a1 = v251;
          }

          a1[14] = a4;
          swift_endAccess();

          sub_101010148(*&v39, v10);
        }

        else
        {
          v253 = v39;

          a5 = v250;
          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v199 = type metadata accessor for Logger();
          sub_1000076D4(v199, qword_10177C6D0);
          v200 = v106;
          v160 = Logger.logObject.getter();
          a4 = static os_log_type_t.fault.getter();

          if (!os_log_type_enabled(v160, a4))
          {

            sub_101010148(*&v253, v10);
LABEL_122:

            goto LABEL_147;
          }

          v201 = swift_slowAlloc();
          v202 = swift_slowAlloc();
          *v201 = v246;
          *(v201 + 4) = v200;
          *v202 = v200;
          v203 = v200;
          _os_log_impl(&_mh_execute_header, v160, a4, "Unsupported value type: %@!", v201, 0xCu);
          sub_10000B3A8(v202, &qword_10169BB30, &unk_10138B3C0);
          a1 = v251;

          a2 = v249;

          sub_101010148(*&v253, v10);
        }

LABEL_147:
        sub_10118B5A0(&v261);
      }

      else
      {
LABEL_21:
        if (v10 > 1)
        {
          if (v10 == 2)
          {
            isa = [objc_allocWithZone(NSNumber) initWithLongLong:*&v39];
          }

          else
          {
            a9 = v39;
            isa = [objc_allocWithZone(NSNumber) initWithDouble:v39];
          }
        }

        else if (v10)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v39) & 1).super.super.isa;
        }

        else
        {
          isa = *&v39;
        }

        v46 = isa;
        objc_opt_self();
        v47 = swift_dynamicCastObjCClass();
        if (v47)
        {
          v48 = v47;
          v49 = v39;
          v21 = v10;
          v20 = v46;
          v50 = String.init(_:)(v48);
          v51 = sub_1000DF96C();
          swift_beginAccess();
          v261 = v50;
          *&v262[8] = &type metadata for String;
          *&v262[16] = v51;
          v262[24] = 1;
          v52 = swift_isUniquelyReferenced_nonNull_native();
          v258[0] = a1[14];
          v53 = v258[0];
          a1[14] = 0x8000000000000000;
          v54 = *&v253;
          v55 = sub_100771D58(*&v253, v254);
          v57 = *(v53 + 16);
          v58 = (v56 & 1) == 0;
          v59 = __OFADD__(v57, v58);
          v60 = v57 + v58;
          if (v59)
          {
            __break(1u);
            goto LABEL_153;
          }

          v61 = v56;
          if (*(v53 + 24) >= v60)
          {
            if ((v52 & 1) == 0)
            {
              v231 = v55;
              sub_1010050E8();
              v55 = v231;
            }
          }

          else
          {
            sub_100FE65C4(v60, v52);
            v55 = sub_100771D58(v54, v254);
            if ((v61 & 1) != (v62 & 1))
            {
              goto LABEL_168;
            }
          }

          v10 = v21;
          v80 = v49;
          if (v61)
          {
            v81 = v55;

            a4 = v258[0];
            sub_10118B568(&v261, *(v258[0] + 56) + 48 * v81);
            a5 = v250;
          }

          else
          {
            a4 = v258[0];
            *(v258[0] + 8 * (v55 >> 6) + 64) |= 1 << v55;
            v82 = (a4[6] + 16 * v55);
            v83 = v254;
            *v82 = v54;
            v82[1] = v83;
            v84 = (a4[7] + 48 * v55);
            v85 = *&v262[9];
            v86 = *v262;
            *v84 = v261;
            v84[1] = v86;
            *(&v84[1]._object + 1) = v85;
            v87 = a4[2];
            v59 = __OFADD__(v87, 1);
            v88 = v87 + 1;
            a5 = v250;
            if (v59)
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
              __break(1u);
LABEL_167:
              __break(1u);
LABEL_168:

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            a4[2] = v88;
          }

          a1 = v251;
          v251[14] = a4;
          swift_endAccess();

          sub_101010148(*&v80, v10);
          a2 = v249;
        }

        else
        {
          objc_opt_self();
          v63 = swift_dynamicCastObjCClass();
          if (v63)
          {
            v248 = v10;
            v64 = v63;
            [v63 doubleValue];
            a9 = v65;
            v66 = [v64 integerValue];
            a5 = v250;
            if (a9 == v66)
            {
              v67 = v66;
              v68 = a1;
              v69 = sub_1000DFAD8();
              swift_beginAccess();
              v261._countAndFlagsBits = v67;
              *&v262[8] = &type metadata for Int;
              *&v262[16] = v69;
              v262[24] = 2;
              v70 = swift_isUniquelyReferenced_nonNull_native();
              v258[0] = v68[14];
              v71 = v258[0];
              v68[14] = 0x8000000000000000;
              v72 = *&v253;
              v73 = sub_100771D58(*&v253, v254);
              v75 = *(v71 + 16);
              v76 = (v74 & 1) == 0;
              v59 = __OFADD__(v75, v76);
              v77 = v75 + v76;
              if (v59)
              {
                goto LABEL_156;
              }

              v78 = v74;
              if (*(v71 + 24) >= v77)
              {
                if ((v70 & 1) == 0)
                {
                  v233 = v73;
                  sub_1010050E8();
                  v73 = v233;
                }
              }

              else
              {
                sub_100FE65C4(v77, v70);
                v73 = sub_100771D58(v72, v254);
                if ((v78 & 1) != (v79 & 1))
                {
                  goto LABEL_168;
                }
              }

              v10 = v248;
              if (v78)
              {
                v120 = v73;

                a4 = v258[0];
                sub_10118B568(&v261, *(v258[0] + 56) + 48 * v120);
              }

              else
              {
                a4 = v258[0];
                *(v258[0] + 8 * (v73 >> 6) + 64) |= 1 << v73;
                v121 = (a4[6] + 16 * v73);
                v122 = v254;
                *v121 = v72;
                v121[1] = v122;
                v123 = (a4[7] + 48 * v73);
                v124 = *&v262[9];
                v125 = *v262;
                *v123 = v261;
                v123[1] = v125;
                *(&v123[1]._object + 1) = v124;
                v126 = a4[2];
                v59 = __OFADD__(v126, 1);
                v127 = v126 + 1;
                if (v59)
                {
                  goto LABEL_160;
                }

                a4[2] = v127;
              }

              a1 = v251;
              a2 = v249;
            }

            else
            {
              v110 = sub_1000DFA84();
              swift_beginAccess();
              *&v261._countAndFlagsBits = a9;
              *&v262[8] = &type metadata for Double;
              *&v262[16] = v110;
              v262[24] = 3;
              v111 = swift_isUniquelyReferenced_nonNull_native();
              v258[0] = a1[14];
              v112 = v258[0];
              a1[14] = 0x8000000000000000;
              v113 = sub_100771D58(*&v253, v254);
              v115 = *(v112 + 16);
              v116 = (v114 & 1) == 0;
              v59 = __OFADD__(v115, v116);
              v117 = v115 + v116;
              if (v59)
              {
                goto LABEL_159;
              }

              v118 = v114;
              if (*(v112 + 24) >= v117)
              {
                if ((v111 & 1) == 0)
                {
                  v234 = v113;
                  sub_1010050E8();
                  v113 = v234;
                }
              }

              else
              {
                sub_100FE65C4(v117, v111);
                v113 = sub_100771D58(*&v253, v254);
                if ((v118 & 1) != (v119 & 1))
                {
                  goto LABEL_168;
                }
              }

              v10 = v248;
              if (v118)
              {
                v128 = v113;

                a4 = v258[0];
                v129 = *(v258[0] + 56) + 48 * v128;
                a2 = v249;
                sub_10118B568(&v261, v129);
              }

              else
              {
                a4 = v258[0];
                *(v258[0] + 8 * (v113 >> 6) + 64) |= 1 << v113;
                v130 = (a4[6] + 16 * v113);
                v131 = v254;
                *v130 = v253;
                *(v130 + 1) = v131;
                v132 = (a4[7] + 48 * v113);
                v133 = *&v262[9];
                v134 = *v262;
                *v132 = v261;
                v132[1] = v134;
                *(&v132[1]._object + 1) = v133;
                v135 = a4[2];
                v59 = __OFADD__(v135, 1);
                v136 = v135 + 1;
                if (v59)
                {
                  goto LABEL_162;
                }

                a4[2] = v136;
              }

              a1 = v251;
            }

            a1[14] = a4;
            swift_endAccess();

            v105 = v39;
LABEL_82:
            sub_101010148(*&v105, v10);
          }

          else
          {
            v253 = v39;

            a5 = v250;
            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v99 = type metadata accessor for Logger();
            sub_1000076D4(v99, qword_10177C6D0);
            v100 = v46;
            v101 = Logger.logObject.getter();
            a4 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v101, a4))
            {
              v102 = swift_slowAlloc();
              v103 = swift_slowAlloc();
              *v102 = v246;
              *(v102 + 4) = v100;
              *v103 = v100;
              v104 = v100;
              _os_log_impl(&_mh_execute_header, v101, a4, "Unsupported value type: %@!", v102, 0xCu);
              sub_10000B3A8(v103, &qword_10169BB30, &unk_10138B3C0);
              a1 = v251;

              a2 = v249;

              v105 = v253;
              goto LABEL_82;
            }

            sub_101010148(*&v253, v10);
          }
        }
      }
    }

    while (1)
    {
      v32 = a6 + 1;
      if (__OFADD__(a6, 1))
      {
        break;
      }

      if (v32 >= a2)
      {

        return;
      }

      a3 = a5[v32];
      ++a6;
      if (a3)
      {
        a6 = v32;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_151:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_153:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C6D0);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v261._countAndFlagsBits = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(v20, v21, &v261._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v23, v24, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v25, 0xCu);
    sub_100007BAC(v26);
  }
}

uint64_t sub_10117B278(unint64_t a1)
{
  if (a1 < 2)
  {
    return 1;
  }

  if (a1 == 2)
  {
    return 2;
  }

  if (a1 < 4)
  {
    return 3;
  }

  if (a1 == 4)
  {
    return 4;
  }

  if (a1 < 6)
  {
    return 5;
  }

  if (a1 < 0xB)
  {
    return 10;
  }

  if (a1 < 0x10)
  {
    return 15;
  }

  if (a1 < 0x15)
  {
    return 20;
  }

  if (a1 < 0x1A)
  {
    return 25;
  }

  if (a1 < 0x33)
  {
    return 50;
  }

  if (a1 < 0x65)
  {
    return 100;
  }

  if (a1 < 0xC9)
  {
    return 200;
  }

  if (a1 <= 0x320)
  {
    return 800;
  }

  return 900;
}

uint64_t sub_10117B344(uint64_t a1, uint64_t a2)
{
  *(v2 + 728) = a2;
  *(v2 + 720) = a1;
  return _swift_task_switch(sub_10117B36C, a1, 0);
}

uint64_t sub_10117B36C()
{
  v14 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = v0[90];
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C6D0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1000136BC(v2, v3, &v13);
      _os_log_impl(&_mh_execute_header, v5, v6, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v0[92] = v11;
    *v11 = v0;
    v11[1] = sub_10117B5B8;
    v12 = v0[91];

    return sub_1008F5A28(v12);
  }
}

uint64_t sub_10117B5B8(uint64_t a1)
{
  v2 = *(*v1 + 720);
  *(*v1 + 744) = a1;

  return _swift_task_switch(sub_10117B6D0, v2, 0);
}

unint64_t sub_10117B6D0()
{
  v93 = (v0 + 304);
  v94 = (v0 + 256);
  v1 = (v0 + 352);
  v90 = (v0 + 400);
  v2 = (v0 + 496);
  v3 = *(v0 + 744);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v91 = (v0 + 448);
  v92 = *(v0 + 744);
  v7 = -1 << *(v92 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v98 = *(v0 + 720);
  swift_beginAccess();
  v10 = 0;
  v11 = (63 - v7) >> 6;
  while (v9)
  {
    while (1)
    {
LABEL_12:
      v14 = __clz(__rbit64(v9)) | (v10 << 6);
      v15 = (*(v92 + 48) + 16 * v14);
      v16 = v15[1];
      v99 = *v15;
      sub_101010158(*(v92 + 56) + 48 * v14, v0 + 16);
      v95 = *(v0 + 16);
      v97 = *(v0 + 32);
      v17 = *(v0 + 48);
      v18 = *(v0 + 56);

      if (!v16)
      {
LABEL_76:

        v83 = *(v0 + 8);
        goto LABEL_77;
      }

      v9 &= v9 - 1;
      *(v0 + 64) = v95;
      *(v0 + 80) = v97;
      *(v0 + 96) = v17;
      *(v0 + 104) = v18;
      v19 = *(v98 + 112);
      if (*(v19 + 16))
      {
        break;
      }

LABEL_25:
      sub_101010158(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v30 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_1000DF9C0();
          *(v0 + 256) = v30;
          v31 = 2;
        }

        else
        {
          v33 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000DFA84();
          *(v0 + 256) = v33;
          v31 = 3;
        }

        *(v0 + 296) = v31;
      }

      else
      {
        v32 = *(v0 + 128);
        *v94 = *(v0 + 112);
        *(v0 + 272) = v32;
        *(v0 + 281) = *(v0 + 137);
      }

      swift_beginAccess();
      sub_1010100EC(v94, v93);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v98 + 112);
      *&v100 = v7;
      *(v98 + 112) = 0x8000000000000000;
      result = sub_100771D58(v99, v16);
      v36 = *(v7 + 16);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
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
        return result;
      }

      v40 = v35;
      if (*(v7 + 24) < v39)
      {
        sub_100FE65C4(v39, isUniquelyReferenced_nonNull_native);
        result = sub_100771D58(v99, v16);
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_80;
        }

LABEL_36:
        v1 = (v0 + 352);
        if (v40)
        {
          goto LABEL_6;
        }

        goto LABEL_37;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

      v75 = result;
      sub_1010050E8();
      result = v75;
      v1 = (v0 + 352);
      if (v40)
      {
LABEL_6:
        v12 = result;

        sub_10118B568(v93, *(v7 + 56) + 48 * v12);
        goto LABEL_7;
      }

LABEL_37:
      *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
      v42 = (*(v7 + 48) + 16 * result);
      *v42 = v99;
      v42[1] = v16;
      v43 = (*(v7 + 56) + 48 * result);
      v44 = *(v0 + 329);
      v45 = *(v0 + 320);
      *v43 = *v93;
      v43[1] = v45;
      *(v43 + 25) = v44;
      v46 = *(v7 + 16);
      v38 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v38)
      {
        goto LABEL_87;
      }

      *(v7 + 16) = v47;
LABEL_7:
      *(v98 + 112) = v7;
      swift_endAccess();
      sub_10118D3FC(v0 + 64);
      sub_10118B5A0(v94);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v20 = sub_100771D58(v99, v16);
    if ((v21 & 1) == 0)
    {

      goto LABEL_25;
    }

    sub_1010100EC(*(v19 + 56) + 48 * v20, v0 + 208);

    sub_101010158(v0 + 64, v0 + 160);
    if (!*(v0 + 201))
    {
      v48 = *(v0 + 176);
      *v1 = *(v0 + 160);
      v1[1] = v48;
      *(v1 + 25) = *(v0 + 185);
      goto LABEL_62;
    }

    if (*(v0 + 201) != 1)
    {
      v49 = *(v0 + 160);
      sub_1010100EC(v0 + 208, v2);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_85;
      }

      sub_10000A748(v2, v0 + 584);
      v50 = *(v0 + 608);
      sub_1000035D0((v0 + 584), v50);
      v51 = *(v50 - 8);
      swift_task_alloc();
      (*(v51 + 16))();
      v52 = sub_1000DFA84();
      BinaryFloatingPoint.init<A>(_:)();

      v53 = v49 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v52;
      v1 = (v0 + 352);
      *(v0 + 352) = v53;
      *(v0 + 392) = 3;
      sub_100007BAC((v0 + 584));
      goto LABEL_62;
    }

    v22 = *(v0 + 160);
    v7 = v0 + 400;
    sub_1010100EC(v0 + 208, v90);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_84;
    }

    v89 = v22;
    sub_10000A748(v90, v0 + 544);
    v23 = *(v0 + 568);
    v24 = sub_1000035D0((v0 + 544), v23);
    v25 = *(v23 - 8);
    v26 = swift_task_alloc();
    v96 = v25;
    v27 = v25;
    v28 = v26;
    (*(v27 + 16))(v26, v24, v23);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
    {
      *(v0 + 704) = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
          goto LABEL_49;
        }

        v85 = swift_task_alloc();
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v84 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v96 + 8))(v85, v23);

        if (v84)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v86 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v54 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v86)
        {
          v87 = v28;
          if (v54 <= 64)
          {
            swift_getAssociatedTypeWitness();
            swift_task_alloc();
            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v57 = swift_task_alloc();
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v58 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v96 + 8))(v57, v23);
            v28 = v87;

            if (v58)
            {
              goto LABEL_92;
            }

LABEL_49:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_50;
          }

          v55 = swift_task_alloc();
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v56 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v96 + 8))(v55, v23);
          v28 = v87;

          if (v56)
          {
            goto LABEL_92;
          }
        }

        else if (v54 < 64)
        {
          goto LABEL_49;
        }
      }
    }

LABEL_50:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      *(v0 + 696) = 0x7FFFFFFFFFFFFFFFLL;
      v59 = v28;
      v60 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v88 = v59;
      v61 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v60)
      {
        if (v61 > 64)
        {
          goto LABEL_53;
        }
      }

      else if (v61 >= 64)
      {
LABEL_53:
        v62 = swift_task_alloc();
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v63 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v96 + 8))(v62, v23);
        v28 = v88;

        if (v63)
        {
          goto LABEL_91;
        }

        goto LABEL_60;
      }

      v28 = v59;
      dispatch thunk of BinaryInteger._lowWord.getter();
    }

LABEL_60:
    v64 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v96 + 8))(v28, v23);

    v38 = __OFADD__(v64, v89);
    v65 = v64 + v89;
    if (v38)
    {
      goto LABEL_90;
    }

    v66 = sub_1000DF9C0();
    *(v0 + 352) = v65;
    *(v0 + 360) = v100;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v66;
    *(v0 + 392) = 2;
    sub_100007BAC((v0 + 544));
    v1 = (v0 + 352);
LABEL_62:
    swift_beginAccess();
    sub_1010100EC(v1, v91);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v98 + 112);
    *&v100 = v7;
    *(v98 + 112) = 0x8000000000000000;
    result = sub_100771D58(v99, v16);
    v69 = *(v7 + 16);
    v70 = (v68 & 1) == 0;
    v38 = __OFADD__(v69, v70);
    v71 = v69 + v70;
    if (v38)
    {
      goto LABEL_88;
    }

    v72 = v68;
    if (*(v7 + 24) < v71)
    {
      sub_100FE65C4(v71, v67);
      result = sub_100771D58(v99, v16);
      if ((v72 & 1) != (v73 & 1))
      {
LABEL_80:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_67:
      v1 = (v0 + 352);
      if (v72)
      {
        goto LABEL_68;
      }

      goto LABEL_72;
    }

    if (v67)
    {
      goto LABEL_67;
    }

    v76 = result;
    sub_1010050E8();
    result = v76;
    v1 = (v0 + 352);
    if (v72)
    {
LABEL_68:
      v74 = result;

      sub_10118B568(v91, *(v7 + 56) + 48 * v74);
      goto LABEL_74;
    }

LABEL_72:
    *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
    v77 = (*(v7 + 48) + 16 * result);
    *v77 = v99;
    v77[1] = v16;
    v78 = (*(v7 + 56) + 48 * result);
    v79 = *(v0 + 473);
    v80 = *(v0 + 464);
    *v78 = *v91;
    v78[1] = v80;
    *(v78 + 25) = v79;
    v81 = *(v7 + 16);
    v38 = __OFADD__(v81, 1);
    v82 = v81 + 1;
    if (v38)
    {
      goto LABEL_89;
    }

    *(v7 + 16) = v82;
LABEL_74:
    *(v98 + 112) = v7;
    swift_endAccess();
    sub_10118B5A0(v0 + 208);
    sub_10118D3FC(v0 + 64);
    sub_10118B5A0(v1);
  }

LABEL_8:
  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_76;
    }

    v9 = *(v5 + 8 * v13);
    ++v10;
    if (v9)
    {
      v10 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_84:
  v2 = v7;
LABEL_85:

  sub_10118B5A0(v2);
  sub_10118B5D0();
  swift_allocError();
  swift_willThrow();

  sub_10118B5A0(v0 + 208);
  sub_10118D3FC(v0 + 64);
  v83 = *(v0 + 8);
LABEL_77:

  return v83();
}