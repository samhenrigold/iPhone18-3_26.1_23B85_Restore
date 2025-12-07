void *sub_100552DC8(uint64_t a1, uint64_t a2)
{
  *(&v100 + 1) = a2;
  *&v100 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 1);
  __chkstk_darwin(v3);
  v6 = (&v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = v2;
  v7 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v4 + 104);
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v14 = *(v4 + 8);
  v12 = v4 + 8;
  v13 = v14;
  v14(v6, v3);
  if ((v11 & 1) == 0)
  {
    goto LABEL_95;
  }

  *v6 = v10;
  v9(v6, v8, v3);
  v15 = _dispatchPreconditionTest(_:)();
  v13(v6, v3);
  if ((v15 & 1) == 0)
  {
    goto LABEL_96;
  }

  if (*(v98 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) != 1)
  {
    sub_10055A164();
    swift_allocError();
    *v26 = 0;
    return swift_willThrow();
  }

  v109 = &_swiftEmptySetSingleton;
  v103 = v100;
  v102[0] = 44;
  v102[1] = 0xE100000000000000;
  sub_10001229C();
  v16 = StringProtocol.components<A>(separatedBy:)();
  v17 = 0;
  v18 = *(v16 + 16);
  v3 = _swiftEmptyArrayStorage;
  *&v100 = _swiftEmptyArrayStorage;
LABEL_5:
  v19 = v16 + 40 + 16 * v17;
  while (1)
  {
    if (v18 == v17)
    {
      v12 = _swiftEmptyArrayStorage;
      v3 = *(v100 + 16);
      v28 = *(v16 + 16);

      if (v3 != v28)
      {
        if (qword_100973A00 == -1)
        {
          goto LABEL_17;
        }

        goto LABEL_97;
      }

      goto LABEL_20;
    }

    if (v17 >= *(v16 + 16))
    {
      break;
    }

    ++v17;
    v12 = v19 + 16;

    v20 = Data.init(base64Encoded:options:)();
    v22 = v21;

    v19 = v12;
    if (v22 >> 60 != 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v100 = sub_10028EEAC(0, *(v100 + 16) + 1, 1, v100);
      }

      v12 = *(v100 + 16);
      v23 = *(v100 + 24);
      if (v12 >= v23 >> 1)
      {
        *&v100 = sub_10028EEAC((v23 > 1), v12 + 1, 1, v100);
      }

      v24 = v100;
      *(v100 + 16) = v12 + 1;
      v25 = v24 + 16 * v12;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      goto LABEL_5;
    }
  }

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
  while (1)
  {
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    swift_once();
LABEL_17:
    v29 = type metadata accessor for Logger();
    sub_10000C4AC(v29, qword_100983190);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Decoded base64 count test failed", v32, 2u);
    }

LABEL_20:
    if (v3)
    {
      *&v103 = v12;
      result = sub_10028FF54(0, v3, 0);
      v33 = 0;
      v34 = v103;
      v35 = (v100 + 40);
      v99 = v3;
      while (1)
      {
        if (v33 >= *(v100 + 16))
        {
          goto LABEL_86;
        }

        *(&v100 + 1) = v34;
        v36 = *(v35 - 1);
        v37 = *v35;
        v38 = *v35 >> 62;
        if (v38 > 1)
        {
          if (v38 != 2)
          {
            goto LABEL_98;
          }

          v40 = *(v36 + 16);
          v39 = *(v36 + 24);
          v12 = v39 - v40;
          if (__OFSUB__(v39, v40))
          {
            goto LABEL_93;
          }
        }

        else
        {
          if (!v38)
          {
            v12 = BYTE6(v37);
            goto LABEL_33;
          }

          if (__OFSUB__(HIDWORD(v36), v36))
          {
            goto LABEL_94;
          }

          v12 = HIDWORD(v36) - v36;
        }

        sub_100294008(*(v35 - 1), *v35);
        result = sub_100294008(v36, v37);
LABEL_33:
        if (v12 != 32)
        {
LABEL_98:
          __break(1u);
          return result;
        }

        v41 = v101;
        v42 = sub_1004657B8(v36, v37, 8);
        v12 = v41;
        if (v41)
        {
          sub_100026AC0(v36, v37);

          sub_100026AC0(v36, v37);
        }

        v43 = v42;
        sub_100026AC0(v36, v37);
        v44 = v43[2];
        if (!v44)
        {
          goto LABEL_87;
        }

        if (v44 == 1)
        {
          goto LABEL_88;
        }

        if (v44 < 3)
        {
          goto LABEL_89;
        }

        if (v44 == 3)
        {
          goto LABEL_90;
        }

        v101 = 0;
        v12 = v43[4];
        v45 = v43[5];
        v47 = v43[6];
        v46 = v43[7];
        sub_100026AC0(v36, v37);

        v34 = *(&v100 + 1);
        *&v103 = *(&v100 + 1);
        v49 = *(*(&v100 + 1) + 16);
        v48 = *(*(&v100 + 1) + 24);
        if (v49 >= v48 >> 1)
        {
          result = sub_10028FF54((v48 > 1), v49 + 1, 1);
          v34 = v103;
        }

        v33 = (v33 + 1);
        v34[2] = v49 + 1;
        v50 = &v34[4 * v49];
        v50[4] = v12;
        v50[5] = v45;
        v50[6] = v47;
        v50[7] = v46;
        v35 += 2;
        v3 = v99;
        if (v99 == v33)
        {

          goto LABEL_45;
        }
      }
    }

    v34 = _swiftEmptyArrayStorage;
LABEL_45:
    if (*(v98 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo))
    {
      v51 = v34;
      v52 = *(v98 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo + 8);

      v53 = *(v52 + 16);
      v12 = _swiftEmptyArrayStorage;
      if (v53)
      {
        v54 = 0;
        v55 = (v52 + 32);
        *&v100 = v53 - 1;
        v3 = _swiftEmptyArrayStorage;
LABEL_48:
        v56 = &v55[9 * v54];
        v57 = v54;
        while (v57 < *(v52 + 16))
        {
          v58 = *(v56 + 16);
          v59 = v56[3];
          v60 = v56[1];
          v105 = v56[2];
          v106 = v59;
          v61 = *v56;
          v107 = v58;
          v103 = v61;
          v104 = v60;
          v54 = v57 + 1;
          if (sub_10054AB18(v105, *(&v105 + 1), v106, *(&v106 + 1), v51))
          {
            sub_10055A394(&v103, v102);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v108 = v3;
            v99 = v55;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10028FF34(0, v3[2] + 1, 1);
              v3 = v108;
            }

            v64 = v3[2];
            v63 = v3[3];
            if (v64 >= v63 >> 1)
            {
              sub_10028FF34((v63 > 1), v64 + 1, 1);
              v3 = v108;
            }

            v3[2] = v64 + 1;
            v65 = &v3[9 * v64];
            *(v65 + 2) = v103;
            v66 = v104;
            v67 = v105;
            v68 = v106;
            *(v65 + 24) = v107;
            *(v65 + 4) = v67;
            *(v65 + 5) = v68;
            *(v65 + 3) = v66;
            v12 = _swiftEmptyArrayStorage;
            v55 = v99;
            if (v100 != v57)
            {
              goto LABEL_48;
            }

            goto LABEL_60;
          }

          v56 = (v56 + 72);
          ++v57;
          if (v53 == v54)
          {
            goto LABEL_60;
          }
        }

        goto LABEL_91;
      }

      v3 = _swiftEmptyArrayStorage;
LABEL_60:

      v69 = v3[2];
      if (v69)
      {
        v108 = _swiftEmptyArrayStorage;
        sub_10028FF74(0, v69, 0);
        v70 = v108;
        v71 = v69 - 1;
        for (i = 4; ; i += 9)
        {
          v103 = *&v3[i];
          v73 = *&v3[i + 2];
          v74 = *&v3[i + 4];
          v75 = *&v3[i + 6];
          v107 = v3[i + 8];
          v105 = v74;
          v106 = v75;
          v104 = v73;
          sub_10055A394(&v103, v102);
          v108 = v70;
          v77 = v70[2];
          v76 = v70[3];
          if (v77 >= v76 >> 1)
          {
            sub_10028FF74((v76 > 1), v77 + 1, 1);
            v70 = v108;
          }

          v78 = v103;
          v79 = v104;
          v70[2] = v77 + 1;
          v80 = &v70[4 * v77];
          *(v80 + 2) = v78;
          *(v80 + 3) = v79;
          if (!v71)
          {
            break;
          }

          --v71;
        }
      }

      else
      {

        v70 = _swiftEmptyArrayStorage;
      }

      sub_10057ECC4(v70);

      v34 = v51;
    }

    v97 = v34[2];
    if (!v97)
    {
      break;
    }

    v81 = 0;
    v96 = v98 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB;
    v12 = (v34 + 7);
    v82 = _swiftEmptyArrayStorage;
    *(&v100 + 1) = v34;
    while (v81 < v34[2])
    {
      v83 = *(v12 - 8);
      *&v100 = *v12;
      v99 = v83;
      v84 = *(v12 - 24);
      v98 = *(v12 - 16);
      v85 = *(v96 + 8);
      ObjectType = swift_getObjectType();
      v87 = *(v85 + 88);
      swift_unknownObjectRetain();
      v88 = v101;
      v89 = v87(v84, v98, v99, v100, ObjectType, v85);
      v101 = v88;
      if (v88)
      {

        swift_unknownObjectRelease();
      }

      v90 = v89;
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = sub_10028F210(0, v82[2] + 1, 1, v82);
      }

      v92 = v82[2];
      v91 = v82[3];
      v3 = (v92 + 1);
      if (v92 >= v91 >> 1)
      {
        v82 = sub_10028F210((v91 > 1), v92 + 1, 1, v82);
      }

      ++v81;
      v82[2] = v3;
      v82[v92 + 4] = v90;
      v12 += 32;
      v34 = *(&v100 + 1);
      if (v97 == v81)
      {
        goto LABEL_80;
      }
    }
  }

  v82 = _swiftEmptyArrayStorage;
LABEL_80:

  v93 = v82[2];
  if (v93)
  {
    v94 = v82 + 4;
    do
    {
      ++v94;

      sub_1005696B4(v95);
      --v93;
    }

    while (v93);
  }

  return v109;
}

id sub_10055383C(void *a1)
{
  v25 = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = v1;
  v6 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = *(v3 + 104);
  v8(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v6;
  v10 = _dispatchPreconditionTest(_:)();
  v11 = *(v3 + 8);
  result = v11(v5, v2);
  if (v10)
  {
    *v5 = v9;
    v8(v5, v7, v2);
    v13 = _dispatchPreconditionTest(_:)();
    result = v11(v5, v2);
    if (v13)
    {
      v14 = v26;
      if (*(v26 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) == 1)
      {
        v9 = v25;
        if ([*(v26 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_bucket) acquireTokenForIdentifier:v25])
        {
          if (*(v14 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo))
          {
            v15 = *(*(v14 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo + 8) + 16);
            v16 =  + 99;
            v17 = v15 + 1;
            while (--v17)
            {
              v18 = v16;
              v16 += 72;
              if ((*v18 & 1) == 0 && *(v18 - 3) == v9)
              {

                LOBYTE(v9) = 1;
                return (v9 & 1);
              }
            }
          }

          v21 = *(v14 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB + 8);
          ObjectType = swift_getObjectType();
          v23 = *(v21 + 120);
          swift_unknownObjectRetain();
          LOBYTE(v9) = v23(v9, ObjectType, v21);
          swift_unknownObjectRelease();
          return (v9 & 1);
        }

        v19 = 5;
      }

      else
      {
        v19 = 0;
      }

      sub_10055A164();
      swift_allocError();
      *v20 = v19;
      swift_willThrow();
      return (v9 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100553B04(char *a1, void *a2)
{
  v24 = a2;
  v23 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = v2;
  v7 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v4 + 104);
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = *(v4 + 8);
  result = v12(v6, v3);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  *v6 = v10;
  v9(v6, v8, v3);
  v14 = _dispatchPreconditionTest(_:)();
  result = v12(v6, v3);
  if ((v14 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v15 = v26;
  if (*(v26 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) == 1)
  {
    v16 = v25;
    v17 = sub_1005522B8(v23, v24);
    if (!v16)
    {
      if (v18)
      {
        v19 = v17;
        v20 = v18;

        v15 = sub_100553D34(v19, v20);
        swift_bridgeObjectRelease_n();
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    sub_10055A164();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
  }

  return v15;
}

uint64_t sub_100553D34(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = v2;
  v7 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v4 + 104);
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = *(v4 + 8);
  result = v12(v6, v3);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  *v6 = v10;
  v9(v6, v8, v3);
  v14 = _dispatchPreconditionTest(_:)();
  result = v12(v6, v3);
  if ((v14 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v15 = v33;
  if (*(v33 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) == 1)
  {
    v16 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo;
    v17 = *(v33 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo);
    v19 = v31;
    v18 = v32;
    if (!v17)
    {
LABEL_10:
      sub_10002CDC0((v15 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactStore), *(v15 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactStore + 24));
      return sub_1005A09A0(v19, v18);
    }

    v20 = [v17 identifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (v21 == v19 && v23 == v18)
    {
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v27 = *(v15 + v16);
    if (v27)
    {
      v28 = *(v15 + v16);
      v29 = v27;
      return v28;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10055A164();
    swift_allocError();
    *v26 = 0;
    return swift_willThrow();
  }
}

void sub_100553FC0(void *a1, uint64_t a2)
{
  v41 = a2;
  v40 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = v2;
  v7 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v4 + 104);
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  if ((v11 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *v6 = v10;
  v9(v6, v8, v3);
  v13 = _dispatchPreconditionTest(_:)();
  v12(v6, v3);
  if ((v13 & 1) == 0)
  {
LABEL_32:
    __break(1u);
    return;
  }

  if (*(v43 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) == 1)
  {
    v14 = v42;
    v15 = sub_100552DC8(v40, v41);
    if (!v14)
    {
      v16 = v15;
      v17 = v15 + 56;
      v18 = 1 << v15[32];
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      v20 = v19 & *(v15 + 7);
      v21 = (v18 + 63) >> 6;

      v23 = 0;
      v24 = _swiftEmptyArrayStorage;
      v40 = _swiftEmptyArrayStorage;
      v41 = v22;
      if (v20)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if (v25 >= v21)
        {
          break;
        }

        v20 = *&v17[8 * v25];
        ++v23;
        if (v20)
        {
          v23 = v25;
          do
          {
LABEL_12:
            v26 = (*(v16 + 48) + ((v23 << 11) | (32 * __clz(__rbit64(v20)))));
            v27 = *v26;
            v28 = v26[1];

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v42 = v27;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v24 = sub_10028E1C8(0, *(v24 + 2) + 1, 1, v24);
            }

            v31 = *(v24 + 2);
            v30 = *(v24 + 3);
            if (v31 >= v30 >> 1)
            {
              v24 = sub_10028E1C8((v30 > 1), v31 + 1, 1, v24);
            }

            v20 &= v20 - 1;
            *(v24 + 2) = v31 + 1;
            v32 = &v24[16 * v31];
            v16 = v41;
            *(v32 + 4) = v42;
            *(v32 + 5) = v28;
          }

          while (v20);
        }
      }

      v34 = 0;
      v44 = _swiftEmptyArrayStorage;
      v35 = *(v24 + 2);
LABEL_21:
      v36 = &v24[16 * v34 + 40];
      while (v35 != v34)
      {
        if (v34 >= *(v24 + 2))
        {
          goto LABEL_30;
        }

        v37 = *(v36 - 1);
        v38 = *v36;

        v39 = sub_100553D34(v37, v38);
        ++v34;
        v36 += 2;

        if (v39)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v40 = v44;
          goto LABEL_21;
        }
      }

      sub_1002931DC(v40);
    }
  }

  else
  {
    sub_10055A164();
    swift_allocError();
    *v33 = 0;
    swift_willThrow();
  }
}

uint64_t sub_1005543CC(char *a1, void *a2)
{
  v22 = a2;
  v21 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = v2;
  v7 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v4 + 104);
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = *(v4 + 8);
  result = v12(v6, v3);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  *v6 = v10;
  v9(v6, v8, v3);
  v14 = _dispatchPreconditionTest(_:)();
  result = v12(v6, v3);
  if ((v14 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v15 = v24;
  if (*(v24 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) == 1)
  {
    v16 = v23;
    sub_1005522B8(v21, v22);
    if (!v16)
    {
      if (v17)
      {
        v15 = v18;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    sub_10055A164();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
  }

  return v15;
}

void sub_1005545D4(void *a1, unint64_t a2)
{
  v68 = a2;
  v69 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = v2;
  v7 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v4 + 104);
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  if ((v11 & 1) == 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  *v6 = v10;
  v9(v6, v8, v3);
  v13 = _dispatchPreconditionTest(_:)();
  v12(v6, v3);
  if ((v13 & 1) == 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (*(v70 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) != 1)
  {
    sub_10055A164();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    return;
  }

  v14 = v68;
  v15 = v68 >> 62;
  if ((v68 >> 62) > 1)
  {
    v16 = v67;
    v17 = v69;
    if (v15 != 2)
    {
      return;
    }

    v20 = v69[2];
    v19 = v69[3];
    v21 = __OFSUB__(v19, v20);
    v22 = v19 - v20;
    if (v21)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (v22 < 9)
    {
      return;
    }
  }

  else
  {
    v16 = v67;
    v17 = v69;
    if (v15)
    {
      if (__OFSUB__(HIDWORD(v69), v69))
      {
LABEL_66:
        __break(1u);
        return;
      }

      if (HIDWORD(v69) - v69 < 9)
      {
        return;
      }
    }

    else if (BYTE6(v68) < 9uLL)
    {
      return;
    }
  }

  v23 = sub_100635ED0(0, 9, 3);
  v24 = *(v23 + 16);
  v25 = _swiftEmptyArrayStorage;
  if (v24)
  {
    sub_100294008(v17, v14);
    v71 = _swiftEmptyArrayStorage;
    sub_10028FF94(0, v24, 0);
    v26 = v69;
    v27 = 0;
    v25 = v71;
    while (v27 < *(v23 + 16))
    {
      v28 = *(v23 + 8 * v27 + 32);
      v29 = NSNotFound.getter();
      if (__OFADD__(v28, 3))
      {
        goto LABEL_60;
      }

      if (v28 == v29 || __OFSUB__(v28, v28 + 3))
      {
        goto LABEL_61;
      }

      v31 = Data.subdata(in:)();
      v33 = sub_100466258(v31, v32);
      if (v16)
      {
        sub_100026AC0(v26, v14);

        return;
      }

      v71 = v25;
      v35 = v25[2];
      v34 = v25[3];
      if (v35 >= v34 >> 1)
      {
        v37 = v33;
        sub_10028FF94((v34 > 1), v35 + 1, 1);
        v26 = v69;
        v33 = v37;
        v25 = v71;
      }

      ++v27;
      v25[2] = v35 + 1;
      v36 = v25 + 4 * v35;
      *(v36 + 16) = v33;
      v36[34] = BYTE2(v33);
      if (v24 == v27)
      {
        sub_100026AC0(v26, v14);
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_31:
  if (*(v70 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo))
  {
    v38 = *(v70 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo + 8);
    v39 = *(v38 + 16);

    if (v39)
    {
      for (i = 0; i != v39; ++i)
      {
        v41 = v38 + 32 + 72 * i;
        if (*(v41 + 67) != 1)
        {
          v42 = v25[2] + 1;
          v43 = v25 + 34;
          while (--v42)
          {
            v44 = v43;
            v43 += 4;
            if (*(v44 - 1) == *(v41 + 64) && *v44 == *(v41 + 66))
            {

              goto LABEL_56;
            }
          }
        }
      }
    }

    v65 = v23;
  }

  else
  {
    v65 = v23;
  }

  v45 = 0;
  v46 = v25[2];
  v67 = v70 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB;
  v68 = v46;
  v69 = v25;
  v47 = v25 + 34;
  v66 = _swiftEmptyArrayStorage;
  v64 = v25 + 34;
LABEL_44:
  v48 = &v47[4 * v45];
  while (v68 != v45)
  {
    if (v45 >= v69[2])
    {
      goto LABEL_62;
    }

    v49 = v45;
    LODWORD(v70) = *v48;
    v50 = *(v48 - 1);
    v51 = *(v67 + 8);
    ObjectType = swift_getObjectType();
    v53 = *(v51 + 96);
    v54 = v50 | (v70 << 16);
    swift_unknownObjectRetain();
    v55 = v53(v54, ObjectType, v51);
    if (v16)
    {

      swift_unknownObjectRelease();
      return;
    }

    v57 = v55;
    v58 = v56;
    v48 += 4;
    v45 = v49 + 1;
    swift_unknownObjectRelease();
    if (v58)
    {

      v59 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_10028E1C8(0, *(v59 + 2) + 1, 1, v59);
      }

      v61 = *(v59 + 2);
      v60 = *(v59 + 3);
      if (v61 >= v60 >> 1)
      {
        v59 = sub_10028E1C8((v60 > 1), v61 + 1, 1, v59);
      }

      *(v59 + 2) = v61 + 1;
      v66 = v59;
      v62 = &v59[16 * v61];
      *(v62 + 4) = v57;
      *(v62 + 5) = v58;
      v47 = v64;
      goto LABEL_44;
    }
  }

  if (*(v66 + 2))
  {
  }

LABEL_56:
}

void *sub_100554BFC(void *a1, unint64_t a2)
{
  v65 = a2;
  v64 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  i = v2;
  v7 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v4 + 104);
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  if ((v11 & 1) == 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *v6 = v10;
  v9(v6, v8, v3);
  v13 = _dispatchPreconditionTest(_:)();
  v12(v6, v3);
  if ((v13 & 1) == 0)
  {
    goto LABEL_43;
  }

  v14 = i;
  if (*(i + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) != 1)
  {
    sub_10055A164();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }

  v15 = v65;
  v16 = v65 >> 62;
  if ((v65 >> 62) > 1)
  {
    v17 = v66;
    if (v16 != 2)
    {
      return sub_100292D28(_swiftEmptyArrayStorage);
    }

    v21 = v64[2];
    v20 = v64[3];
    v22 = __OFSUB__(v20, v21);
    v23 = v20 - v21;
    if (!v22)
    {
      if (v23 >= 8)
      {
        goto LABEL_15;
      }

      return sub_100292D28(_swiftEmptyArrayStorage);
    }

    goto LABEL_45;
  }

  v17 = v66;
  if (v16)
  {
    if (!__OFSUB__(HIDWORD(v64), v64))
    {
      if (HIDWORD(v64) - v64 >= 8)
      {
        goto LABEL_15;
      }

      return sub_100292D28(_swiftEmptyArrayStorage);
    }

LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
    goto LABEL_37;
  }

  if (BYTE6(v65) < 8uLL)
  {
    return sub_100292D28(_swiftEmptyArrayStorage);
  }

LABEL_15:
  v24 = swift_allocObject();
  *(v24 + 16) = 2;
  v25 = swift_allocObject();
  v26 = v64;
  *(v25 + 16) = v64;
  *(v25 + 24) = v15;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10055A5FC;
  *(v27 + 24) = v25;
  *(v27 + 32) = xmmword_1008099E0;
  *(v27 + 48) = 2;
  *(v27 + 56) = sub_10055A5C8;
  *(v27 + 64) = v24;
  v69 = xmmword_1008099E0;
  v70 = 2;
  v71 = sub_10055A600;
  v72 = v27;
  sub_100294008(v26, v15);

  v28 = sub_10054A0F8(&v69);

  if (v17)
  {
  }

  v73 = &_swiftEmptySetSingleton;
  v62 = v28[2];
  if (v62)
  {
    v29 = 0;
    v64 = (v14 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB);
    v63 = v28 + 4;
    v61[0] = v28;
    v61[1] = v24;
    do
    {
      if (v29 >= v28[2])
      {
        goto LABEL_44;
      }

      v31 = v64[1];
      v32 = *(v63 + v29);
      v33 = v29;
      ObjectType = swift_getObjectType();
      v35 = *(v31 + 112);
      swift_unknownObjectRetain();
      v36 = v35(v32, ObjectType, v31);
      if (v17)
      {

        swift_unknownObjectRelease();
      }

      v37 = v36;
      v65 = v33 + 1;
      v66 = 0;
      swift_unknownObjectRelease();
      v38 = v37 + 56;
      v39 = 1 << *(v37 + 32);
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      else
      {
        v40 = -1;
      }

      v41 = v40 & *(v37 + 56);
      v42 = (v39 + 63) >> 6;

      v43 = 0;
      v44 = _swiftEmptyArrayStorage;
      for (i = v37; v41; v37 = i)
      {
LABEL_30:
        v46 = *(v37 + 48) + ((v43 << 11) | (32 * __clz(__rbit64(v41))));
        v48 = *(v46 + 16);
        v47 = *(v46 + 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_10028E1C8(0, *(v44 + 2) + 1, 1, v44);
        }

        v50 = *(v44 + 2);
        v49 = *(v44 + 3);
        if (v50 >= v49 >> 1)
        {
          v44 = sub_10028E1C8((v49 > 1), v50 + 1, 1, v44);
        }

        v41 &= v41 - 1;
        *(v44 + 2) = v50 + 1;
        v51 = &v44[16 * v50];
        *(v51 + 4) = v48;
        *(v51 + 5) = v47;
      }

      while (1)
      {
        v45 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          __break(1u);
          goto LABEL_42;
        }

        if (v45 >= v42)
        {
          break;
        }

        v41 = *(v38 + 8 * v45);
        ++v43;
        if (v41)
        {
          v43 = v45;
          goto LABEL_30;
        }
      }

      v30 = sub_100292D28(v44);

      sub_1005697DC(v30);
      v29 = v65;
      v17 = v66;
      v28 = v61[0];
    }

    while (v65 != v62);
  }

  if (qword_100973A00 != -1)
  {
    goto LABEL_47;
  }

LABEL_37:
  v52 = type metadata accessor for Logger();
  sub_10000C4AC(v52, qword_100983190);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v68[0] = v56;
    *v55 = 136315138;
    swift_beginAccess();

    v57 = Set.description.getter();
    v59 = v58;

    v60 = sub_10000C4E4(v57, v59, v68);

    *(v55 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v53, v54, "Found matching handles for short hashes query - %s", v55, 0xCu);
    sub_10000C60C(v56);
  }

  swift_beginAccess();
  return v73;
}

uint64_t sub_1005552DC(uint64_t a1, unint64_t a2)
{
  v33 = a2;
  v31 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = v2;
  v7 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  LOBYTE(v10) = v4 + 104;
  v9 = *(v4 + 104);
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v7;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = *(v4 + 8);
  result = v13(v6, v3);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *v6 = v11;
  v9(v6, v8, v3);
  v15 = _dispatchPreconditionTest(_:)();
  result = v13(v6, v3);
  if ((v15 & 1) == 0)
  {
    goto LABEL_24;
  }

  if (*(v38 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) != 1)
  {
    sub_10055A164();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    return v10 & 1;
  }

  v10 = v33;
  v16 = v33 >> 62;
  if ((v33 >> 62) > 1)
  {
    v17 = v32;
    if (v16 != 2)
    {
LABEL_12:
      LOBYTE(v10) = 0;
      return v10 & 1;
    }

    v20 = *(v31 + 16);
    v19 = *(v31 + 24);
    v21 = __OFSUB__(v19, v20);
    v22 = v19 - v20;
    if (!v21)
    {
      if (v22 >= 8)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v32;
  if (!v16)
  {
    if (BYTE6(v33) >= 8uLL)
    {
LABEL_15:
      v23 = swift_allocObject();
      *(v23 + 16) = 2;
      v24 = swift_allocObject();
      v25 = v31;
      *(v24 + 16) = v31;
      *(v24 + 24) = v10;
      v26 = swift_allocObject();
      *(v26 + 16) = sub_10055A1D4;
      *(v26 + 24) = v24;
      *(v26 + 32) = xmmword_1008099E0;
      *(v26 + 48) = 2;
      *(v26 + 56) = sub_10055A1B8;
      *(v26 + 64) = v23;
      v34 = xmmword_1008099E0;
      v35 = 2;
      v36 = sub_10055A1D8;
      v37 = v26;
      sub_100294008(v25, v10);

      v27 = sub_10054A0F8(&v34);
      v28 = v17;

      if (v17)
      {
      }

      else
      {
        v29 = v27[2];
        do
        {
          LOBYTE(v10) = v29 != v28;
          if (v29 == v28)
          {
            break;
          }

          if (v28 >= v27[2])
          {
            goto LABEL_25;
          }

          result = sub_10055383C(*(v27 + v28++ + 16));
        }

        while ((result & 1) == 0);
      }

      return v10 & 1;
    }

    goto LABEL_12;
  }

  if (!__OFSUB__(HIDWORD(v31), v31))
  {
    if (HIDWORD(v31) - v31 >= 8)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100555680@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = NSNotFound.getter();
  v7 = v5 + a2;
  if (__OFADD__(v5, a2))
  {
    __break(1u);
  }

  else if (v5 != result && v5 < v7)
  {
    *a3 = v5;
    a3[1] = v7;
    return result;
  }

  __break(1u);
  return result;
}

NSString *sub_1005556D4()
{
  sub_10028088C(&qword_100974F70, &unk_100804260);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007FDA40;
  *(v0 + 32) = CNContactPhoneNumbersKey;
  *(v0 + 40) = CNContactEmailAddressesKey;
  *(v0 + 48) = CNContactInstantMessageAddressesKey;
  qword_1009831B0 = v0;
  v1 = CNContactPhoneNumbersKey;
  v2 = CNContactEmailAddressesKey;

  return CNContactInstantMessageAddressesKey;
}

uint64_t sub_100555778()
{
  sub_10028088C(&qword_100974EA0, &qword_1007FBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1008018C0;
  v1 = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  *(inited + 56) = swift_getObjectType();
  *(inited + 32) = v1;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = &type metadata for String;
  *(inited + 64) = v2;
  *(inited + 72) = v3;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v4;
  *(inited + 104) = v5;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 152) = &type metadata for String;
  *(inited + 128) = v6;
  *(inited + 136) = v7;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = &type metadata for String;
  *(inited + 160) = v8;
  *(inited + 168) = v9;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v10;
  *(inited + 200) = v11;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 248) = &type metadata for String;
  *(inited + 224) = v12;
  *(inited + 232) = v13;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = &type metadata for String;
  *(inited + 256) = v14;
  *(inited + 264) = v15;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v16;
  *(inited + 296) = v17;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 344) = &type metadata for String;
  *(inited + 320) = v18;
  *(inited + 328) = v19;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 376) = &type metadata for String;
  *(inited + 352) = v20;
  *(inited + 360) = v21;
  v22 = sub_100468428(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_1009831B8 = v22;
  return result;
}

uint64_t sub_100555C2C(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_10055A430;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E6E00;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  v13 = a1;
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100558BE8(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);
}

void sub_100555F04(uint64_t a1, void *a2)
{
  if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) == 1)
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100983190);
    v5 = a2;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v8 = 136315650;
      v9 = [v5 givenName];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = sub_10000C4E4(v10, v12, v32);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      v14 = [v5 familyName];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = sub_10000C4E4(v15, v17, v32);

      *(v8 + 14) = v18;
      *(v8 + 22) = 2080;
      v19 = [v5 identifier];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = sub_10000C4E4(v20, v22, v32);

      *(v8 + 24) = v23;
      _os_log_impl(&_mh_execute_header, v6, v7, "Setting meCard (fn=%s,ln=%s,cid=%s)", v8, 0x20u);
      swift_arrayDestroy();
    }

    sub_10054EAF4(v5);
    v27 = (a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo);
    v28 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo);
    *v27 = v5;
    v27[1] = v29;
    v30 = v5;

    sub_10055A438(v28);
  }

  else
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000C4AC(v24, qword_100983190);
    oslog = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v25, "Not activated in setMeCard. Bailing.", v26, 2u);
    }
  }
}

uint64_t sub_100556424@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) == 1)
  {
    result = sub_100553B04(a2, a3);
    if (v4)
    {
      if (qword_100973A00 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000C4AC(v7, qword_100983190);
      swift_errorRetain();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v19 = v11;
        *v10 = 136315138;
        swift_getErrorValue();
        v12 = Error.localizedDescription.getter();
        v14 = sub_10000C4E4(v12, v13, &v19);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v8, v9, "Error: failed to get contactForCombinedHash because (%s)", v10, 0xCu);
        sub_10000C60C(v11);
      }

      else
      {
      }

      result = 0;
    }
  }

  else
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_100983190);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Not activated in contactForCombinedHash. Bailing.", v18, 2u);
    }

    result = 0;
  }

  *a4 = result;
  return result;
}

void sub_100556760(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) != 1)
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_100983190);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Not activated in contactsForCombinedHash. Bailing.", v18, 2u);
    }

    goto LABEL_13;
  }

  sub_100553FC0(a2, a3);
  if (v4)
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100983190);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = sub_10000C4E4(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error: failed to get contactsForCombinedHash because (%s)", v10, 0xCu);
      sub_10000C60C(v11);
    }

    else
    {
    }

LABEL_13:
    v6 = &_swiftEmptySetSingleton;
  }

  *a4 = v6;
}

void sub_100556BB8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t)@<X3>, const char *a5@<X4>, const char *a6@<X5>, uint64_t *a7@<X8>)
{
  if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) == 1)
  {
    v10 = a4(a2, a3);
    if (!v7)
    {
      *a7 = v10;
      a7[1] = v11;
      return;
    }

    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_100983190);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = Error.localizedDescription.getter();
      v19 = sub_10000C4E4(v17, v18, &v25);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, a6, v15, 0xCu);
      sub_10000C60C(v16);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_100983190);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, a5, v24, 2u);
    }
  }

  *a7 = 0;
  a7[1] = 0;
}

uint64_t sub_100556F44@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) == 1)
  {
    result = sub_100554BFC(a2, a3);
    if (v4)
    {
      if (qword_100973A00 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000C4AC(v7, qword_100983190);
      swift_errorRetain();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v20 = v11;
        *v10 = 136315138;
        swift_getErrorValue();
        v12 = Error.localizedDescription.getter();
        v14 = sub_10000C4E4(v12, v13, &v20);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v8, v9, "Hash manager: failed to query handles for short hashes with error (%s)", v10, 0xCu);
        sub_10000C60C(v11);
      }

      v15 = sub_100292D28(_swiftEmptyArrayStorage);

      result = v15;
    }
  }

  else
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_100983190);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Not activated in contactHandlesForShortHashes. Bailing.", v19, 2u);
    }

    result = sub_100292D28(_swiftEmptyArrayStorage);
  }

  *a4 = result;
  return result;
}

void sub_1005572D0(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) == 1)
  {
    v6 = sub_1005552DC(a2, a3);
    if (v4)
    {
      if (qword_100973A00 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000C4AC(v7, qword_100983190);
      swift_errorRetain();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v20 = v11;
        *v10 = 136315138;
        swift_getErrorValue();
        v12 = Error.localizedDescription.getter();
        v14 = sub_10000C4E4(v12, v13, &v20);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v8, v9, "Hash manager: failed to determine if contacts contain short hashes with error (%s)", v10, 0xCu);
        sub_10000C60C(v11);
      }

      else
      {
      }

      v19 = 0;
    }

    else
    {
      v19 = v6 & 1;
    }
  }

  else
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_100983190);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Not activated in contactsContainsShortHashes. Bailing.", v18, 2u);
    }

    v19 = 0;
  }

  *a4 = v19;
}

double sub_100557614()
{
  if (qword_100973A10 != -1)
  {
    swift_once();
  }

  qword_1009A0C60 = qword_1009831B0;

  return result;
}

uint64_t sub_10055769C()
{
  if (qword_100973A10 != -1)
  {
    swift_once();
  }

  v0 = qword_1009831B0;
  v1 = qword_100973A18;

  if (v1 != -1)
  {
    swift_once();
  }

  sub_10040356C(v2);
  if (qword_100973A20 != -1)
  {
    swift_once();
  }

  sub_10040356C(v3);
  if (qword_100973A28 != -1)
  {
    swift_once();
  }

  result = sub_10040356C(v4);
  qword_1009A0C68 = v0;
  return result;
}

Class sub_100557810(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  sub_10028088C(&unk_10097A940, &unk_100807F40);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

void sub_100557884(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) == 1)
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100983190);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Database dump requested", v9, 2u);
    }

    v10 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB + 8);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 72);
    swift_unknownObjectRetain();
    v13 = v12(a2, ObjectType, v10);
    swift_unknownObjectRelease();
    v14 = v13 & 1;
  }

  else
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_100983190);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Not activated in dumpDB. Bailing.", v18, 2u);
    }

    v14 = 0;
  }

  *a3 = v14;
}

uint64_t sub_100557BC8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100558E64;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E6A90;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_100558BE8(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

void sub_100557E98(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) == 1)
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_100983190);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Requesting hash database rebuild", v4, 2u);
    }

    sub_10054BC44(1);
  }

  else
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_100983190);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Not activated in rebuildDB. Bailing.", v7, 2u);
    }
  }
}

uint64_t sub_1005581A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v50 = type metadata accessor for SHA256();
  v5 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SHA256Digest();
  v7 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for String.Encoding();
  v9 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005587E4(a3);
  *&v55 = a1;

  sub_100403A1C(v11);
  result = sub_10053AF80(a3, v55);
  v16 = v15 >> 1;
  v17 = (v15 >> 1) - v14;
  if (__OFSUB__(v15 >> 1, v14))
  {
    goto LABEL_16;
  }

  if (v17)
  {
    v18 = v13;
    v19 = v14;
    v40[1] = result;
    v60 = _swiftEmptyArrayStorage;
    result = sub_10028FFD4(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v44 = (v9 + 8);
    v20 = v60;
    v43 = (v5 + 8);
    v42 = (v7 + 16);
    v41 = (v7 + 8);
    if (v19 <= v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21 - v19;
    v23 = (v18 + 16 * v19 + 8);
    v24 = v49;
    v25 = v47;
    while (v22)
    {
      v54 = v17;
      v52 = *v23;

      v26 = v45;
      static String.Encoding.utf8.getter();
      v27 = String.data(using:allowLossyConversion:)();
      *&v53 = v20;
      v29 = v28;
      (*v44)(v26, v46);
      v58 = v27;
      v59 = v29;
      sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
      Optional.unwrap(_:file:line:)();
      sub_10028BCC0(v58, v59);
      v30 = v55;
      sub_100558BE8(&unk_100983280, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      v31 = v50;
      dispatch thunk of HashFunction.init()();
      sub_100294008(v30, *(&v30 + 1));
      sub_100635718(v30, *(&v30 + 1), v24);
      sub_100026AC0(v30, *(&v30 + 1));
      dispatch thunk of HashFunction.finalize()();
      (*v43)(v24, v31);
      v32 = v48;
      v56 = v48;
      v57 = sub_100558BE8(&unk_10097F060, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
      v33 = sub_10002F604(&v55);
      (*v42)(v33, v25, v32);
      sub_10002CDC0(&v55, v56);
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      v34 = v58;
      v35 = v59;
      sub_10000C60C(&v55);
      v36 = v34;
      v20 = v53;
      sub_10053AFB8(v51, v36, v35, &v55);

      sub_100026AC0(v30, *(&v30 + 1));
      result = (*v41)(v25, v32);
      v37 = v55;
      v60 = v20;
      v39 = v20[2];
      v38 = v20[3];
      if (v39 >= v38 >> 1)
      {
        v53 = v55;
        result = sub_10028FFD4((v38 > 1), v39 + 1, 1);
        v37 = v53;
        v20 = v60;
      }

      v20[2] = v39 + 1;
      *&v20[2 * v39 + 4] = v37;
      --v22;
      v23 += 2;
      v17 = v54 - 1;
      if (v54 == 1)
      {
        swift_unknownObjectRelease();
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  swift_unknownObjectRelease();
  v20 = _swiftEmptyArrayStorage;
LABEL_14:
  *&v55 = v20;
  sub_100558C30();
  return sub_10056999C(v55);
}

Class sub_100558758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = sub_1005581A0(v7, a4, a5);
  v10 = v9;

  v11.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v8, v10);

  return v11.super.isa;
}

char *sub_1005587E4(uint64_t a1)
{
  v39 = type metadata accessor for UUID();
  v2 = *(v39 - 8);
  result = __chkstk_darwin(v39);
  v38 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = sub_10028F93C(a1, 0);
  result = sub_100558DC0(&v43, (v5 + 4), a1, 1, a1);
  if (result != a1)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v6 = v5[2];
  if (v6)
  {
    v40 = v2;
    v42 = _swiftEmptyArrayStorage;
    sub_10028FBDC(0, v6, 0);
    v7 = 4;
    v8 = v42;
    do
    {
      v9 = v5[v7];
      v43 = 0xD000000000000018;
      v44 = 0x8000000100795260;
      v41 = v9;
      v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v10);

      v11 = v43;
      v12 = v44;
      v42 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_10028FBDC((v13 > 1), v14 + 1, 1);
        v8 = v42;
      }

      v8[2] = v14 + 1;
      v15 = &v8[2 * v14];
      v15[4] = v11;
      v15[5] = v12;
      ++v7;
      --v6;
    }

    while (v6);

    v2 = v40;
  }

  else
  {

    v8 = _swiftEmptyArrayStorage;
  }

  v16 = v8[2];
  v36[1] = v8;
  if (v16)
  {
    v17 = objc_opt_self();
    v37 = v2 + 1;
    v18 = v8 + 5;
    v19 = _swiftEmptyArrayStorage;
    v20 = &selRef_shareUserDefaultsActivity;
    v40 = v17;
    do
    {

      v21 = [v17 v20[146]];
      v22 = String._bridgeToObjectiveC()();
      v23 = [v21 stringForKey:v22];

      if (v23)
      {

        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v27 = v17;
        v28 = v38;
        UUID.init()();
        v24 = UUID.uuidString.getter();
        v26 = v29;
        (*v37)(v28, v39);
        v30 = [v27 v20[146]];
        v31 = String._bridgeToObjectiveC()();
        v32 = String._bridgeToObjectiveC()();

        [v30 setObject:v31 forKey:v32];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_10028E1C8(0, *(v19 + 2) + 1, 1, v19);
      }

      v34 = *(v19 + 2);
      v33 = *(v19 + 3);
      if (v34 >= v33 >> 1)
      {
        v19 = sub_10028E1C8((v33 > 1), v34 + 1, 1, v19);
      }

      *(v19 + 2) = v34 + 1;
      v35 = &v19[16 * v34];
      *(v35 + 4) = v24;
      *(v35 + 5) = v26;
      v18 += 2;
      --v16;
      v17 = v40;
      v20 = &selRef_shareUserDefaultsActivity;
    }

    while (v16);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

  return v19;
}

uint64_t sub_100558BE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100558C30()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      swift_stdlib_random();
      v6 = (0 * v2) >> 64;
      if (v2)
      {
        if (-v2 % v2)
        {
          while (1)
          {
            swift_stdlib_random();
          }
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_18;
        }

        if (v8 >= v9)
        {
          goto LABEL_19;
        }

        v10 = &v1[16 * v8 + 32];
        v11 = *v10;
        v12 = v10[1];
        v19 = *&v1[16 * v4 + 32];
        sub_100294008(*&v1[16 * v4 + 32], *&v1[16 * v4 + 40]);
        sub_100294008(v11, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_100497908(v1);
        }

        if (v4 >= *(v1 + 2))
        {
          goto LABEL_20;
        }

        v13 = &v1[16 * v4 + 32];
        v14 = *v13;
        v15 = v13[1];
        *v13 = v11;
        v13[1] = v12;
        sub_100026AC0(v14, v15);
        if (v8 >= *(v1 + 2))
        {
          goto LABEL_21;
        }

        v16 = &v1[16 * v8 + 32];
        v17 = *v16;
        v18 = v16[1];
        *v16 = v19;
        sub_100026AC0(v17, v18);
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

uint64_t sub_100558DC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_100558E88()
{
  v0 = objc_opt_self();
  v1 = 0;
  v2 = 0;
LABEL_2:
  v18 = v1;
  v3 = 4;
  if (v2 > 4)
  {
    v3 = v2;
  }

  v4 = -v3;
  v5 = &off_1008D7A88 + 2 * v2++;
  v6 = v5 + 5;
  do
  {
    if (v4 + v2 == 1)
    {
      __break(1u);
      goto LABEL_18;
    }

    v7 = [v0 standardUserDefaults];
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 valueForKey:v8];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100005508(v19, &unk_1009746F0, &qword_1007F90B0);
      v10 = [v0 standardUserDefaults];
      v11 = String._bridgeToObjectiveC()();

      [v10 removeObjectForKey:v11];

      v1 = 1;
      if (v2 != 4)
      {
        goto LABEL_2;
      }

      swift_arrayDestroy();
      goto LABEL_12;
    }

    memset(v19, 0, sizeof(v19));
    sub_100005508(v19, &unk_1009746F0, &qword_1007F90B0);
    ++v2;
    v6 += 2;
  }

  while (v2 != 5);
  swift_arrayDestroy();
  if ((v18 & 1) == 0)
  {
    return;
  }

LABEL_12:
  if (qword_100973A00 == -1)
  {
    goto LABEL_13;
  }

LABEL_18:
  swift_once();
LABEL_13:
  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_100983190);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Found some deprecated state, resetting history token", v15, 2u);
  }

  v16 = [v0 standardUserDefaults];
  v17 = String._bridgeToObjectiveC()();
  [v16 setObject:0 forKey:v17];
}

id sub_100559198()
{
  v0 = sub_10028088C(&unk_1009832A0, &qword_100809A40);
  __chkstk_darwin(v0 - 8);
  v62 = &v57 - v1;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v63 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v57 - v7;
  __chkstk_darwin(v6);
  v10 = &v57 - v9;
  v11 = sub_10028088C(&qword_100978958, &qword_1007FBB38);
  v12 = __chkstk_darwin(v11);
  v61 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v57 - v14;
  result = sub_1001F149C();
  if (result)
  {
    v17 = result;
    v60 = *(v11 + 48);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:)();

    URL.appendingPathComponent(_:)();
    v18 = v11;
    v20 = v3 + 8;
    v19 = *(v3 + 8);
    v19(v10, v2);
    URL.appendingPathComponent(_:)();
    URL.appendingPathExtension(_:)();
    v59 = v8;
    v19(v8, v2);
    v21 = v61;
    sub_10000FF90(v15, v61, &qword_100978958, &qword_1007FBB38);
    v60 = v18;
    v22 = *(v18 + 48);
    v23 = v63;
    (*(v3 + 32))(v63, v21, v2);
    v24 = v19;
    v19((v21 + v22), v2);
    v25 = [objc_opt_self() defaultManager];
    URL.relativePath.getter();
    v26 = String._bridgeToObjectiveC()();

    v27 = [v25 enumeratorAtPath:v26];

    if (v27)
    {
      v58 = v15;
      v28 = v61;
      sub_10000FF90(v15, v61, &qword_100978958, &qword_1007FBB38);
      v29 = *(v60 + 48);
      v30 = URL.lastPathComponent.getter();
      v32 = v31;
      v24(v28 + v29, v2);
      v60 = v20;
      v61 = v2;
      v33 = v24(v28, v2);
      v33.n128_u64[0] = 136315138;
      v57 = v33;
      v34 = v24;
      p_attr = &stru_10094FFF8.attr;
      while (1)
      {
        if ([v27 p_attr[347]])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v66 = 0u;
          v67 = 0u;
        }

        v68[0] = v66;
        v68[1] = v67;
        if (!*(&v67 + 1))
        {

          v34(v63, v61);
          sub_100005508(v58, &qword_100978958, &qword_1007FBB38);
          v54 = &unk_1009746F0;
          v55 = &qword_1007F90B0;
          v56 = v68;
          return sub_100005508(v56, v54, v55);
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v37 = v64;
        v36 = v65;
        if (v64 == v30 && v65 == v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
        }

        else
        {
          v38 = v34;
          *&v68[0] = v37;
          *(&v68[0] + 1) = v36;
          *&v66 = v30;
          *(&v66 + 1) = v32;
          v39 = type metadata accessor for Locale();
          v40 = v62;
          (*(*(v39 - 8) + 56))(v62, 1, 1, v39);
          sub_10001229C();
          StringProtocol.range<A>(of:options:range:locale:)();
          v42 = v41;
          sub_100005508(v40, &unk_1009832A0, &qword_100809A40);
          if (v42)
          {

            v34 = v38;
          }

          else
          {
            if (qword_100973A00 != -1)
            {
              swift_once();
            }

            v43 = type metadata accessor for Logger();
            sub_10000C4AC(v43, qword_100983190);

            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v47 = v38;
              v48 = swift_slowAlloc();
              *&v68[0] = v48;
              *v46 = v57.n128_u32[0];
              *(v46 + 4) = sub_10000C4E4(v37, v36, v68);
              _os_log_impl(&_mh_execute_header, v44, v45, "Removing failed db state %s", v46, 0xCu);
              sub_10000C60C(v48);
              v34 = v47;
              v49 = v59;
            }

            else
            {

              v34 = v38;
              v49 = v59;
            }

            URL.appendingPathComponent(_:)();

            sub_10054C2CC();
            v34(v49, v61);
            p_attr = (&stru_10094FFF8 + 8);
          }
        }
      }

      v34(v63, v61);
      v54 = &qword_100978958;
      v55 = &qword_1007FBB38;
      v56 = v58;
    }

    else
    {
      if (qword_100973A00 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_10000C4AC(v50, qword_100983190);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "Failed to create enumerator for AirDropHashDB directory", v53, 2u);
      }

      v19(v23, v2);
      v54 = &qword_100978958;
      v55 = &qword_1007FBB38;
      v56 = v15;
    }

    return sub_100005508(v56, v54, v55);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100559A08(uint64_t (*a1)(void), const char *a2)
{
  if (qword_100973A00 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100983190);
  oslog = Logger.logObject.getter();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 2u);
  }
}

uint64_t sub_100559B00()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100005508(v7, &unk_1009746F0, &qword_1007F90B0);
    return 0;
  }
}

uint64_t sub_100559C28(uint64_t a1)
{
  v2 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = [objc_opt_self() standardUserDefaults];
  sub_10000FF90(a1, v4, &qword_10097A7F0, &unk_1007FB600);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(v4, 1, v6) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v4, v6);
  }

  v9 = String._bridgeToObjectiveC()();
  [v5 setObject:isa forKey:v9];

  swift_unknownObjectRelease();
  return sub_100005508(a1, &qword_10097A7F0, &unk_1007FB600);
}

uint64_t sub_100559DC8(uint64_t a1)
{
  v2 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = [objc_opt_self() standardUserDefaults];
  sub_10000FF90(a1, v4, &qword_10097A7F0, &unk_1007FB600);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(v4, 1, v6) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v4, v6);
  }

  v9 = String._bridgeToObjectiveC()();
  [v5 setObject:isa forKey:v9];

  swift_unknownObjectRelease();
  return sub_100005508(a1, &qword_10097A7F0, &unk_1007FB600);
}

uint64_t sub_100559F68()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100005508(v7, &unk_1009746F0, &qword_1007F90B0);
    return 0;
  }
}

unint64_t sub_10055A164()
{
  result = qword_1009832B8;
  if (!qword_1009832B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009832B8);
  }

  return result;
}

uint64_t sub_10055A1FC()
{
  sub_100026AC0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10055A234@<X0>(uint64_t *a2@<X8>)
{
  result = Data.subdata(in:)();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10055A268()
{

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10055A2A8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 56);
  v6 = *a1;
  v3(v5, &v6);
  return v2(v5);
}

void *sub_10055A438(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10055A478@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100026178();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10055A604()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009832F0);
  v1 = sub_10000C4AC(v0, qword_1009832F0);
  if (qword_1009736F8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0930);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10055A6CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for NWEndpoint();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropDiscoveredClassroom_allEndpoints) = _swiftEmptySetSingleton;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  (*(v14 + 56))(v12, 1, 1, v13);

  sub_10062E9D8(v12, a1, a2, v16);
  v17 = v12;
  v18 = v13;
  sub_100005508(v17, &unk_100976120, &qword_1007F9260);
  (*(v14 + 16))(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropDiscoveredClassroom_connectableUUID, v16, v13);
  *v9 = nw_endpoint_create_application_service();
  (*(v7 + 104))(v9, enum case for NWEndpoint.opaque(_:), v6);
  (*(v7 + 32))(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropDiscoveredClassroom_displayEndpoint, v9, v6);
  v19 = (v3 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropDiscoveredClassroom_classroomID);
  *v19 = a1;
  v19[1] = a2;
  if (qword_100973A40 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000C4AC(v20, qword_1009832F0);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136315138;
    v25 = *(v3 + 16);
    v26 = *(v3 + 24);

    v27 = sub_10000C4E4(v25, v26, &v29);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Creating Classroom %s", v23, 0xCu);
    sub_10000C60C(v24);
  }

  (*(v14 + 8))(v16, v18);
  return v3;
}

id sub_10055AAD0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SFAirDrop.DeviceRelationship();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SFAirDrop.TXTRecord();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = NWEndpoint.nw.getter();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v21 = v8;
  result = [a1 displayName];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v13 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.utf8CString.getter();

  nw_endpoint_set_device_name();

  (*(v5 + 104))(v7, enum case for SFAirDrop.DeviceRelationship.classroom(_:), v4);
  SFAirDrop.TXTRecord.init(deviceRelationship:)();
  SFAirDrop.TXTRecord.addToEndpoint(_:)();
  if (qword_100973A40 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_1009832F0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v21;
  if (v17)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_10000C4E4(*(v2 + 16), *(v2 + 24), &v22);
    _os_log_impl(&_mh_execute_header, v15, v16, "DiscoveredClassroom Updated %s", v19, 0xCu);
    sub_10000C60C(v20);
  }

  swift_unknownObjectRelease();
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_10055ADF4()
{

  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropDiscoveredClassroom_connectableUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropDiscoveredClassroom_displayEndpoint;
  v4 = type metadata accessor for NWEndpoint();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAirDropDiscoveredClassroom(uint64_t a1)
{
  result = qword_100983338;
  if (!qword_100983338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10055AF50(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NWEndpoint();
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

uint64_t sub_10055B0AC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;

  return _swift_task_switch(sub_10055B190, v3, 0);
}

id sub_10055B190()
{
  sub_1002940CC(v0[5], v0[10]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[10];
  if (EnumCaseMultiPayload == 3)
  {
    v3 = *v2;
    result = [*v2 identifier];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v6 = v0[6];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (*(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropDiscoveredClassroom_classroomID) == v7 && *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropDiscoveredClassroom_classroomID + 8) == v9)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        if (qword_100973A40 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_10000C4AC(v12, qword_1009832F0);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "ClassroomID Mis-Match", v15, 2u);
        }

        goto LABEL_16;
      }
    }

    v17 = v0[8];
    v16 = v0[9];
    sub_1002940CC(v0[5], v17);
    swift_beginAccess();
    sub_10046DE64(v16, v17);
    swift_endAccess();
    sub_100294130(v16);
    sub_10055AAD0(v3);
  }

  else
  {
    sub_100294130(v2);
  }

LABEL_16:

  v18 = v0[1];

  return v18();
}

uint64_t sub_10055B3E4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;

  return _swift_task_switch(sub_10055B4E8, v3, 0);
}

uint64_t sub_10055B4E8()
{
  sub_1002940CC(v0[5], v0[9]);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v1 = v0[7];
    v2 = v0[5];
    v3 = *v0[9];
    swift_beginAccess();
    sub_10036E788(v2, v1);
    swift_endAccess();
    sub_100005508(v1, &qword_1009763E0, &qword_1007F95D0);
    sub_10055AAD0(v3);
  }

  else
  {
    sub_100294130(v0[9]);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_10055B620()
{
  *(v1 + 40) = v0;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;

  return _swift_task_switch(sub_10055B6BC, v2, 0);
}

uint64_t sub_10055B6BC()
{
  swift_beginAccess();
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_10055B750(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005C04;

  return sub_10055B0AC(a1);
}

uint64_t sub_10055B7E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005C00;

  return sub_10055B3E4(a1);
}

unint64_t sub_10055B880(uint64_t a1)
{
  result = sub_10055B8A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10055B8A8()
{
  result = qword_1009833E0;
  if (!qword_1009833E0)
  {
    type metadata accessor for SDAirDropDiscoveredClassroom(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009833E0);
  }

  return result;
}

void sub_10055B900(uint64_t a1)
{
  v204 = type metadata accessor for SFAirDropSend.Failure();
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v202 = &v172 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for SFAirDropSend.Transfer.State();
  v199 = *(v200 - 8);
  __chkstk_darwin(v200);
  v205 = &v172 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for SDAirDropLegacySessionLogger.Transfer(0);
  v213 = *(v206 - 8);
  v6 = __chkstk_darwin(v206);
  v179 = &v172 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v183 = &v172 - v9;
  v10 = __chkstk_darwin(v8);
  v181 = &v172 - v11;
  v12 = __chkstk_darwin(v10);
  v182 = &v172 - v13;
  __chkstk_darwin(v12);
  v187 = &v172 - v14;
  v186 = type metadata accessor for SFNWInterfaceType();
  v185 = *(v186 - 8);
  __chkstk_darwin(v186);
  v184 = &v172 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for UUID();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v190 = &v172 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10028088C(&qword_1009762A8, &qword_1007F9418);
  v18 = __chkstk_darwin(v17 - 8);
  v196 = &v172 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v195 = (&v172 - v20);
  v214 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v216 = *(v214 - 8);
  v21 = __chkstk_darwin(v214);
  v193 = &v172 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v194 = &v172 - v24;
  v25 = __chkstk_darwin(v23);
  v198 = &v172 - v26;
  __chkstk_darwin(v25);
  v28 = &v172 - v27;
  v29 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v30 = __chkstk_darwin(v29 - 8);
  v178 = &v172 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v180 = &v172 - v33;
  v34 = __chkstk_darwin(v32);
  v207 = (&v172 - v35);
  __chkstk_darwin(v34);
  v37 = &v172 - v36;
  v38 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v39 = *(v38 - 1);
  v40 = __chkstk_darwin(v38);
  v201 = &v172 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v188 = &v172 - v43;
  __chkstk_darwin(v42);
  v45 = &v172 - v44;
  v46 = type metadata accessor for Date();
  v47 = *(v46 - 8);
  v48 = __chkstk_darwin(v46);
  v197 = &v172 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v51 = &v172 - v50;
  v52 = a1;
  SFAirDropSend.Transfer.networkMetrics.getter();
  SFAirDrop.NetworkMetrics.uploadStart.getter();
  v53 = *(v39 + 8);
  v211 = (v39 + 8);
  v212 = v38;
  v210 = v53;
  v53(v45, v38);
  v208 = *(v47 + 48);
  v209 = v47 + 48;
  if (v208(v37, 1, v46) == 1)
  {
    sub_100005508(v37, &qword_10097A7F0, &unk_1007FB600);
    v54 = v214;
    v55 = v215;
    v56 = v205;
    v57 = v47;
    v59 = v206;
    v58 = v207;
    v60 = a1;
  }

  else
  {
    v61 = v206;
    v189 = v47;
    v62 = *(v47 + 32);
    v63 = v51;
    v176 = v46;
    v62(v51, v37, v46);
    SFAirDropSend.Transfer.id.getter();
    v64 = v215;
    swift_beginAccess();
    v65 = *(v64 + 40);
    v66 = *(v65 + 16);
    v58 = v207;
    v177 = v52;
    if (v66)
    {
      v67 = sub_100570848(v28);
      v68 = v195;
      if (v69)
      {
        sub_10056056C(*(v65 + 56) + *(v213 + 72) * v67, v195);
        v70 = 0;
      }

      else
      {
        v70 = 1;
      }

      v71 = v63;
    }

    else
    {
      v70 = 1;
      v71 = v51;
      v68 = v195;
    }

    v72 = v213;
    v73 = *(v213 + 56);
    v59 = v61;
    (v73)(v68, v70, 1, v61);
    swift_endAccess();
    v74 = *(v216 + 8);
    v75 = v28;
    v54 = v214;
    v74(v75, v214);
    LODWORD(v72) = (*(v72 + 48))(v68, 1, v61);
    sub_100005508(v68, &qword_1009762A8, &qword_1007F9418);
    if (v72 == 1)
    {
      v175 = @"Send";
      v174 = @"Start";
      v76 = v198;
      v173 = v71;
      v77 = v177;
      SFAirDropSend.Transfer.id.getter();
      v195 = v73;
      v78 = v190;
      SFAirDrop.TransferIdentifier.id.getter();
      v74(v76, v54);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v191 + 8))(v78, v192);
      v80 = v185;
      v81 = v184;
      v82 = v186;
      (*(v185 + 104))(v184, enum case for SFNWInterfaceType.awdl(_:), v186);
      SFNWInterfaceType.description.getter();
      (*(v80 + 8))(v81, v82);
      v83 = String._bridgeToObjectiveC()();

      sub_100086E1C(v175, v174, isa, v83, 0.0);

      v60 = v77;
      v57 = v189;
      v84 = v187;
      v85 = v173;
      v46 = v176;
      (*(v189 + 16))(v187, v173, v176);
      (*(v57 + 56))(v84 + v61[7], 1, 1, v46);
      v86 = v61[5];
      *(v84 + v61[6]) = 0;
      v87 = v188;
      SFAirDropSend.Transfer.networkMetrics.getter();
      v88 = SFAirDrop.NetworkMetrics.uploadTotalBytes.getter();
      v210(v87, v212);
      *(v84 + v86) = v88;
      v56 = v198;
      SFAirDropSend.Transfer.id.getter();
      v89 = v196;
      sub_10056056C(v84, v196);
      (v195)(v89, 0, 1, v59);
      v55 = v215;
      swift_beginAccess();
      sub_1002B0EB8(v89, v56);
      swift_endAccess();
      sub_100560634(v84);
      (*(v57 + 8))(v85, v46);
      v90 = *(v55 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersInitiated);
      v91 = __OFADD__(v90, 1);
      v92 = v90 + 1;
      if (v91)
      {
        __break(1u);
LABEL_52:
        swift_once();
        goto LABEL_19;
      }

      *(v55 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersInitiated) = v92;
      v56 = v205;
      v54 = v214;
      v58 = v207;
    }

    else
    {
      v57 = v189;
      v46 = v176;
      (*(v189 + 8))(v71, v176);
      v56 = v205;
      v55 = v215;
      v60 = v177;
    }
  }

  v93 = v201;
  SFAirDropSend.Transfer.networkMetrics.getter();
  SFAirDrop.NetworkMetrics.uploadFinish.getter();
  v210(v93, v212);
  if (v208(v58, 1, v46) == 1)
  {
    sub_100005508(v58, &qword_10097A7F0, &unk_1007FB600);
    goto LABEL_33;
  }

  v94 = v197;
  (*(v57 + 32))(v197, v58, v46);
  v95 = v194;
  SFAirDropSend.Transfer.id.getter();
  swift_beginAccess();
  v96 = *(v55 + 40);
  if (!*(v96 + 16) || (v97 = sub_100570848(v95), (v98 & 1) == 0))
  {
    swift_endAccess();
    (*(v216 + 8))(v95, v54);
    (*(v57 + 8))(v94, v46);
    goto LABEL_33;
  }

  v189 = v57;
  v99 = *(v96 + 56) + *(v213 + 72) * v97;
  v100 = v95;
  v101 = v181;
  sub_10056056C(v99, v181);
  v102 = v182;
  sub_1005605D0(v101, v182);
  swift_endAccess();
  v103 = (v216 + 8);
  v207 = *(v216 + 8);
  v207(v100, v54);
  v104 = v59[7];
  v105 = v180;
  sub_1002E4E88(v102 + v104, v180);
  if (v208(v105, 1, v46) != 1)
  {
    (*(v189 + 8))(v197, v46);
    sub_100005508(v105, &qword_10097A7F0, &unk_1007FB600);
    v117 = v102;
LABEL_32:
    sub_100560634(v117);
    v54 = v214;
LABEL_33:
    v131 = v200;
    SFAirDropSend.Transfer.state.getter();
    v132 = v199;
    v133 = (*(v199 + 88))(v56, v131);
    if (v133 == enum case for SFAirDropSend.Transfer.State.transferFailed(_:))
    {
      (*(v132 + 96))(v56, v131);
      v134 = sub_10028088C(&unk_100986210, &unk_1008042C0);
      (*(v203 + 32))(v202, v56 + *(v134 + 48), v204);
      v135 = v193;
      SFAirDropSend.Transfer.id.getter();
      swift_beginAccess();
      v136 = *(v55 + 40);
      if (*(v136 + 16) && (v137 = sub_100570848(v135), (v138 & 1) != 0))
      {
        v139 = *(v136 + 56) + *(v213 + 72) * v137;
        v140 = v135;
        v141 = v179;
        sub_10056056C(v139, v179);
        v142 = v141;
        v143 = v183;
        sub_1005605D0(v142, v183);
        swift_endAccess();
        v144 = *(v216 + 8);
        v216 += 8;
        v144(v140, v54);
        v145 = v178;
        sub_1002E4E88(v143 + v59[7], v178);
        if (v208(v145, 1, v46) == 1)
        {
          sub_100005508(v145, &qword_10097A7F0, &unk_1007FB600);
          sub_100560690(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
          v146 = v204;
          swift_allocError();
          (*(v203 + 16))(v147, v202, v146);
          v148 = _convertErrorToNSError(_:)();

          v149 = [v148 domain];
          if (!v149)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v149 = String._bridgeToObjectiveC()();
          }

          v150 = CFErrorCreate(kCFAllocatorDefault, v149, [v148 code], 0);

          SFAirDropSend.Transfer.bundleIdentifier.getter();
          v177 = v60;
          v211 = v144;
          v212 = v148;
          if (v151)
          {
            v152._countAndFlagsBits = 0x6C7070612E6D6F63;
            v152._object = 0xEA00000000002E65;
            if (String.hasPrefix(_:)(v152))
            {
              v153 = v150;
              v154 = v59;
LABEL_50:
              v158 = String._bridgeToObjectiveC()();

              v159 = String._bridgeToObjectiveC()();
              v160 = v183;
              v161 = *(v183 + v154[5]);
              v162 = [*(v55 + 16) discoverableLevel];
              sub_10055FE14();
              v164 = v163;
              v165 = v161;
              sub_10027FD18(_swiftEmptyArrayStorage);
              v166 = Dictionary._bridgeToObjectiveC()().super.isa;

              sub_1000860D4(v158, v159, 1, v153, v162, v164 & 1, v166, v165);

              v167 = v198;
              SFAirDropSend.Transfer.id.getter();
              v168 = v190;
              SFAirDrop.TransferIdentifier.id.getter();
              v211(v167, v214);
              v169 = UUID._bridgeToObjectiveC()().super.isa;
              (*(v191 + 8))(v168, v192);
              sub_100086E1C(@"Send", @"Failed", v169, 0, v165);

              SFAirDropSend.Transfer.id.getter();
              v170 = v196;
              (*(v213 + 56))(v196, 1, 1, v154);
              swift_beginAccess();
              sub_1002B0EB8(v170, v167);
              swift_endAccess();

              sub_100560634(v160);
              (*(v203 + 8))(v202, v204);
              v171 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
              (*(*(v171 - 8) + 8))(v205, v171);
              return;
            }
          }

          v153 = v150;
          v154 = v59;

          goto LABEL_50;
        }

        sub_100560634(v143);
        (*(v203 + 8))(v202, v204);
        sub_100005508(v145, &qword_10097A7F0, &unk_1007FB600);
      }

      else
      {
        swift_endAccess();
        (*(v216 + 8))(v135, v54);
        (*(v203 + 8))(v202, v204);
      }
    }

    else
    {
      if (v133 != enum case for SFAirDropSend.Transfer.State.completedSuccessfully(_:))
      {
        (*(v132 + 8))(v56, v131);
        return;
      }

      (*(v132 + 96))(v56, v131);
      sub_10028088C(&qword_10097E9D0, &unk_1007FC200);

      v155 = v198;
      SFAirDropSend.Transfer.id.getter();
      v156 = v196;
      (*(v213 + 56))(v196, 1, 1, v59);
      swift_beginAccess();
      sub_1002B0EB8(v156, v155);
      swift_endAccess();
    }

    v157 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
    (*(*(v157 - 8) + 8))(v56, v157);
    return;
  }

  v201 = v103;
  sub_100005508(v105, &qword_10097A7F0, &unk_1007FB600);
  sub_100005508(v102 + v104, &qword_10097A7F0, &unk_1007FB600);
  v106 = v189;
  (*(v189 + 16))(v102 + v104, v197, v46);
  (*(v106 + 56))(v102 + v104, 0, 1, v46);
  v107 = v188;
  SFAirDropSend.Transfer.networkMetrics.getter();
  v84 = SFAirDrop.NetworkMetrics.uploadURLCount.getter();
  v210(v107, v212);
  *(v102 + v59[6]) = v84;
  Date.timeIntervalSince(_:)();
  v2 = v108;
  v1 = *(v102 + v59[5]);
  if (qword_100973A48 != -1)
  {
    goto LABEL_52;
  }

LABEL_19:
  v109 = type metadata accessor for Logger();
  sub_10000C4AC(v109, qword_1009833E8);
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 134218496;
    *(v112 + 4) = v2;
    *(v112 + 12) = 2048;
    *(v112 + 14) = v1;
    *(v112 + 22) = 2048;
    *(v112 + 24) = v1 / v2;
    _os_log_impl(&_mh_execute_header, v110, v111, "AirDrop send performance - duration %f - totalBytes %f - bytesPerSecond %f", v112, 0x20u);
  }

  SFAirDropSend.Transfer.bundleIdentifier.getter();
  v176 = v46;
  if (v113)
  {
    v114._countAndFlagsBits = 0x6C7070612E6D6F63;
    v114._object = 0xEA00000000002E65;
    if (String.hasPrefix(_:)(v114))
    {
      v115 = v60;
      v116 = v56;
      goto LABEL_28;
    }
  }

  v115 = v60;
  v116 = v56;

LABEL_28:
  v118 = String._bridgeToObjectiveC()();

  v119 = String._bridgeToObjectiveC()();
  v120 = [*(v55 + 16) discoverableLevel];
  sub_10055FE14();
  v122 = v121;
  sub_10027FD18(_swiftEmptyArrayStorage);
  v123 = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_100085D2C(v118, v119, 1, v120, v122 & 1, v123, v1 / v2, v1);

  if (v84 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v84 > 0x7FFFFFFF)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v56 = v116;
  v60 = v115;
  sub_10008644C(1, v84);
  v124 = v198;
  SFAirDropSend.Transfer.id.getter();
  v125 = v190;
  SFAirDrop.TransferIdentifier.id.getter();
  v207(v124, v214);
  v126 = UUID._bridgeToObjectiveC()().super.isa;
  (*(v191 + 8))(v125, v192);
  sub_100086E1C(@"Send", @"Stop", v126, 0, v1);

  SFAirDropSend.Transfer.id.getter();
  v127 = v182;
  swift_beginAccess();
  v128 = v196;
  sub_10056056C(v127, v196);
  v59 = v206;
  (*(v213 + 56))(v128, 0, 1, v206);
  v55 = v215;
  swift_beginAccess();
  sub_1002B0EB8(v128, v124);
  swift_endAccess();
  v46 = v176;
  (*(v189 + 8))(v197, v176);
  v129 = *(v55 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersCompleted);
  v91 = __OFADD__(v129, 1);
  v130 = v129 + 1;
  if (!v91)
  {
    *(v55 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersCompleted) = v130;
    v117 = v127;
    goto LABEL_32;
  }

LABEL_55:
  __break(1u);
}

void sub_10055D2F8(char a1)
{
  v3 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  if (a1)
  {
    if (a1 == 1)
    {
      v16 = String._bridgeToObjectiveC()();
      v17 = getpid();
      sub_100086D20(@"BonjourAdvertise", @"Stop", v16, v17);

      v18 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_bonjourServerStartDate;
      swift_beginAccess();
      sub_1002E4E88(v1 + v18, v8);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        sub_100005508(v8, &qword_10097A7F0, &unk_1007FB600);
      }

      else
      {
        (*(v10 + 32))(v15, v8, v9);
        Date.init()();
        Date.timeIntervalSince(_:)();
        v22 = v21;
        v23 = *(v10 + 8);
        v23(v13, v9);
        sub_100086374(v22);
        v23(v15, v9);
      }

      (*(v10 + 56))(v6, 1, 1, v9);
      swift_beginAccess();
      sub_1003561CC(v6, v1 + v18);
      swift_endAccess();
    }
  }

  else
  {
    v25 = String._bridgeToObjectiveC()();
    v19 = getpid();
    sub_100086D20(@"ApplicationServiceAdvertise", @"Stop", v25, v19);
    v20 = v25;
  }
}

void sub_10055D668(uint64_t a1)
{
  v202 = type metadata accessor for SFAirDropReceive.Failure();
  v201 = *(v202 - 8);
  __chkstk_darwin(v202);
  v205 = &v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v197 = *(v198 - 8);
  __chkstk_darwin(v198);
  v207 = &v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for SDAirDropLegacySessionLogger.Transfer(0);
  v215 = *(v217 - 8);
  v6 = __chkstk_darwin(v217);
  v178 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v179 = &v175 - v9;
  v10 = __chkstk_darwin(v8);
  v181 = &v175 - v11;
  v12 = __chkstk_darwin(v10);
  v182 = &v175 - v13;
  __chkstk_darwin(v12);
  v187 = &v175 - v14;
  v186 = type metadata accessor for SFNWInterfaceType();
  v185 = *(v186 - 8);
  __chkstk_darwin(v186);
  v184 = &v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for UUID();
  v190 = *(v191 - 8);
  __chkstk_darwin(v191);
  v189 = &v175 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10028088C(&qword_1009762A8, &qword_1007F9418);
  v18 = __chkstk_darwin(v17 - 8);
  v196 = &v175 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v194 = (&v175 - v20);
  v21 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v22 = *(v21 - 8);
  v213 = v21;
  v214 = v22;
  v23 = __chkstk_darwin(v21);
  v183 = &v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v193 = &v175 - v26;
  v27 = __chkstk_darwin(v25);
  v206 = &v175 - v28;
  __chkstk_darwin(v27);
  v30 = &v175 - v29;
  v31 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v32 = __chkstk_darwin(v31 - 8);
  v177 = &v175 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v180 = &v175 - v35;
  v36 = __chkstk_darwin(v34);
  v200 = &v175 - v37;
  __chkstk_darwin(v36);
  v39 = &v175 - v38;
  v40 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v41 = *(v40 - 8);
  v42 = __chkstk_darwin(v40);
  v199 = &v175 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v188 = &v175 - v45;
  __chkstk_darwin(v44);
  v47 = &v175 - v46;
  v48 = type metadata accessor for Date();
  v49 = *(v48 - 8);
  v50 = __chkstk_darwin(v48);
  v203 = &v175 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v53 = &v175 - v52;
  v54 = a1;
  SFAirDropReceive.Transfer.networkMetrics.getter();
  SFAirDrop.NetworkMetrics.uploadStart.getter();
  v55 = *(v41 + 8);
  v56 = v47;
  v57 = v48;
  v211 = (v41 + 8);
  v212 = v40;
  v210 = v55;
  v55(v56, v40);
  v209 = *(v49 + 48);
  v58 = v209(v39, 1, v48);
  v208 = v48;
  v195 = v49 + 48;
  v204 = v49;
  if (v58 == 1)
  {
    sub_100005508(v39, &qword_10097A7F0, &unk_1007FB600);
    v59 = v216;
    v60 = v207;
  }

  else
  {
    (*(v49 + 32))(v53, v39, v48);
    v192 = a1;
    SFAirDropReceive.Transfer.id.getter();
    v61 = v216;
    swift_beginAccess();
    v62 = *(v61 + 48);
    v63 = v53;
    if (*(v62 + 16))
    {
      v64 = sub_100570848(v30);
      v65 = v194;
      if (v66)
      {
        sub_10056056C(*(v62 + 56) + *(v215 + 72) * v64, v194);
        v67 = 0;
      }

      else
      {
        v67 = 1;
      }
    }

    else
    {
      v67 = 1;
      v65 = v194;
    }

    v68 = v215;
    v69 = *(v215 + 56);
    v70 = v217;
    (v69)(v65, v67, 1, v217);
    swift_endAccess();
    v71 = v213;
    v72 = *(v214 + 8);
    v72(v30, v213);
    LODWORD(v68) = (*(v68 + 48))(v65, 1, v70);
    sub_100005508(v65, &qword_1009762A8, &qword_1007F9418);
    if (v68 == 1)
    {
      v176 = @"Receive";
      v175 = @"Start";
      v73 = v206;
      SFAirDropReceive.Transfer.id.getter();
      v74 = v189;
      SFAirDrop.TransferIdentifier.id.getter();
      v72(v73, v71);
      v75.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      v194 = v69;
      isa = v75.super.isa;
      (*(v190 + 8))(v74, v191);
      v77 = v185;
      v78 = v184;
      v79 = v186;
      (*(v185 + 104))(v184, enum case for SFNWInterfaceType.awdl(_:), v186);
      SFNWInterfaceType.description.getter();
      (*(v77 + 8))(v78, v79);
      v80 = String._bridgeToObjectiveC()();

      sub_100086E1C(v176, v175, isa, v80, 0.0);

      v81 = v204;
      v82 = v63;
      v83 = v187;
      v57 = v208;
      (*(v204 + 16))(v187, v82, v208);
      (*(v81 + 56))(v83 + v70[7], 1, 1, v57);
      v84 = v70[5];
      *(v83 + v70[6]) = 0;
      v85 = v188;
      v86 = v192;
      SFAirDropReceive.Transfer.networkMetrics.getter();
      v87 = SFAirDrop.NetworkMetrics.uploadTotalBytes.getter();
      v210(v85, v212);
      *(v83 + v84) = v87;
      v54 = v86;
      v88 = v206;
      SFAirDropReceive.Transfer.id.getter();
      v89 = v196;
      sub_10056056C(v83, v196);
      (v194)(v89, 0, 1, v70);
      v90 = v216;
      swift_beginAccess();
      v91 = v88;
      v59 = v90;
      sub_1002B0EB8(v89, v91);
      swift_endAccess();
      sub_100560634(v83);
      (*(v81 + 8))(v82, v57);
      v92 = *(v90 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersInitiated);
      v93 = __OFADD__(v92, 1);
      v94 = v92 + 1;
      if (v93)
      {
        __break(1u);
        goto LABEL_41;
      }

      *(v90 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersInitiated) = v94;
      v60 = v207;
    }

    else
    {
      v57 = v208;
      (*(v204 + 8))(v63, v208);
      v60 = v207;
      v59 = v216;
      v54 = v192;
    }
  }

  v95 = v199;
  SFAirDropReceive.Transfer.networkMetrics.getter();
  v96 = v200;
  SFAirDrop.NetworkMetrics.uploadFinish.getter();
  v210(v95, v212);
  v97 = v209(v96, 1, v57);
  v98 = v217;
  if (v97 != 1)
  {
    v99 = v204;
    (*(v204 + 32))(v203, v96, v57);
    v100 = v193;
    SFAirDropReceive.Transfer.id.getter();
    swift_beginAccess();
    v101 = *(v59 + 48);
    if (!*(v101 + 16) || (v102 = sub_100570848(v100), (v103 & 1) == 0))
    {
      swift_endAccess();
      (*(v214 + 8))(v100, v213);
      (*(v99 + 8))(v203, v208);
      goto LABEL_27;
    }

    v104 = *(v101 + 56) + *(v215 + 72) * v102;
    v105 = v181;
    sub_10056056C(v104, v181);
    v106 = v105;
    v107 = v182;
    sub_1005605D0(v106, v182);
    swift_endAccess();
    v108 = *(v214 + 8);
    v200 = (v214 + 8);
    v199 = v108;
    (v108)(v100, v213);
    v109 = v98[7];
    v110 = v180;
    sub_1002E4E88(v107 + v109, v180);
    v111 = v208;
    if (v209(v110, 1, v208) != 1)
    {
      (*(v99 + 8))(v203, v111);
      sub_100005508(v110, &qword_10097A7F0, &unk_1007FB600);
      v131 = v107;
      goto LABEL_26;
    }

    sub_100005508(v110, &qword_10097A7F0, &unk_1007FB600);
    sub_100005508(v107 + v109, &qword_10097A7F0, &unk_1007FB600);
    (*(v99 + 16))(v107 + v109, v203, v111);
    (*(v99 + 56))(v107 + v109, 0, 1, v111);
    v112 = v188;
    SFAirDropReceive.Transfer.networkMetrics.getter();
    v57 = SFAirDrop.NetworkMetrics.uploadURLCount.getter();
    v210(v112, v212);
    *(v107 + v98[6]) = v57;
    Date.timeIntervalSince(_:)();
    v2 = v113;
    v1 = *(v107 + v98[5]);
    if (qword_100973A48 == -1)
    {
LABEL_18:
      v192 = v54;
      v114 = type metadata accessor for Logger();
      sub_10000C4AC(v114, qword_1009833E8);
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        *v117 = 134218496;
        *(v117 + 4) = v2;
        *(v117 + 12) = 2048;
        *(v117 + 14) = v1;
        *(v117 + 22) = 2048;
        *(v117 + 24) = v1 / v2;
        _os_log_impl(&_mh_execute_header, v115, v116, "AirDrop receive performance - duration %f - totalBytes %f - bytesPerSecond %f", v117, 0x20u);
      }

      v118 = String._bridgeToObjectiveC()();
      v119 = String._bridgeToObjectiveC()();
      v120 = [*(v59 + 16) discoverableLevel];
      sub_10055FE14();
      v122 = v121;
      sub_10027FD18(_swiftEmptyArrayStorage);
      v123 = Dictionary._bridgeToObjectiveC()().super.isa;

      sub_100085D2C(v118, v119, 0, v120, v122 & 1, v123, v1 / v2, v1);

      if (v57 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else
      {
        v60 = v207;
        v54 = v192;
        v98 = v217;
        if (v57 <= 0x7FFFFFFF)
        {
          sub_10008644C(0, v57);
          v124 = v206;
          SFAirDropReceive.Transfer.id.getter();
          v125 = v189;
          SFAirDrop.TransferIdentifier.id.getter();
          (v199)(v124, v213);
          v126 = UUID._bridgeToObjectiveC()().super.isa;
          (*(v190 + 8))(v125, v191);
          sub_100086E1C(@"Receive", @"Stop", v126, 0, v1);

          SFAirDropReceive.Transfer.id.getter();
          v127 = v182;
          swift_beginAccess();
          v128 = v196;
          sub_10056056C(v127, v196);
          (*(v215 + 56))(v128, 0, 1, v98);
          v59 = v216;
          swift_beginAccess();
          sub_1002B0EB8(v128, v124);
          swift_endAccess();
          (*(v204 + 8))(v203, v208);
          v129 = *(v59 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersCompleted);
          v93 = __OFADD__(v129, 1);
          v130 = v129 + 1;
          if (!v93)
          {
            *(v59 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersCompleted) = v130;
            v131 = v127;
LABEL_26:
            sub_100560634(v131);
            goto LABEL_27;
          }

LABEL_44:
          __break(1u);
          return;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

LABEL_41:
    swift_once();
    goto LABEL_18;
  }

  sub_100005508(v96, &qword_10097A7F0, &unk_1007FB600);
LABEL_27:
  v132 = v202;
  v133 = v201;
  v134 = v205;
  v135 = v197;
  SFAirDropReceive.Transfer.state.getter();
  v136 = v198;
  v137 = (*(v135 + 88))(v60, v198);
  if (v137 == enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:))
  {
    (*(v135 + 96))(v60, v136);
    v138 = *(sub_10028088C(&unk_10097E9B0, &unk_100808D90) + 48);

    v139 = v206;
    SFAirDropReceive.Transfer.id.getter();
    v140 = v196;
    (*(v215 + 56))(v196, 1, 1, v98);
    swift_beginAccess();
    sub_1002B0EB8(v140, v139);
    swift_endAccess();
    v141 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v141 - 8) + 8))(&v60[v138], v141);
LABEL_38:
    v174 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
    (*(*(v174 - 8) + 8))(v60, v174);
    return;
  }

  if (v137 != enum case for SFAirDropReceive.Transfer.State.transferFailed(_:))
  {
    (*(v135 + 8))(v60, v136);
    return;
  }

  (*(v135 + 96))(v60, v136);
  v142 = sub_10028088C(&qword_10097A670, &unk_100804290);
  (*(v133 + 32))(v134, &v60[*(v142 + 48)], v132);
  v143 = v183;
  SFAirDropReceive.Transfer.id.getter();
  swift_beginAccess();
  v144 = *(v59 + 48);
  if (!*(v144 + 16) || (v145 = sub_100570848(v143), (v146 & 1) == 0))
  {
    swift_endAccess();
    (*(v214 + 8))(v143, v213);
    (*(v133 + 8))(v134, v132);
    goto LABEL_38;
  }

  v147 = v178;
  sub_10056056C(*(v144 + 56) + *(v215 + 72) * v145, v178);
  v148 = v147;
  v149 = v179;
  sub_1005605D0(v148, v179);
  swift_endAccess();
  v150 = v143;
  v151 = *(v214 + 8);
  v214 += 8;
  v151(v150, v213);
  v152 = v177;
  sub_1002E4E88(v149 + v98[7], v177);
  if (v209(v152, 1, v208) != 1)
  {
    sub_100560634(v149);
    (*(v133 + 8))(v205, v132);
    sub_100005508(v152, &qword_10097A7F0, &unk_1007FB600);
    goto LABEL_38;
  }

  v212 = v151;
  v192 = v54;
  sub_100005508(v152, &qword_10097A7F0, &unk_1007FB600);
  sub_100560690(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(v133 + 16))(v153, v205, v132);
  v154 = _convertErrorToNSError(_:)();

  v155 = [v154 domain];
  if (!v155)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v155 = String._bridgeToObjectiveC()();
  }

  v156 = CFErrorCreate(kCFAllocatorDefault, v155, [v154 code], 0);

  v157 = String._bridgeToObjectiveC()();
  v158 = String._bridgeToObjectiveC()();
  v159 = v217;
  v160 = *(v217 + 20);
  v161 = *(v59 + 16);
  v211 = v154;
  v162 = v179;
  v163 = *(v179 + v160);
  v164 = [v161 discoverableLevel];
  sub_10055FE14();
  v166 = v165;
  v167 = v163;
  sub_10027FD18(_swiftEmptyArrayStorage);
  v168 = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_1000860D4(v157, v158, 0, v156, v164, v166 & 1, v168, v167);

  v169 = v206;
  SFAirDropReceive.Transfer.id.getter();
  v170 = v189;
  SFAirDrop.TransferIdentifier.id.getter();
  v212(v169, v213);
  v171 = UUID._bridgeToObjectiveC()().super.isa;
  (*(v190 + 8))(v170, v191);
  sub_100086E1C(@"Receive", @"Failed", v171, 0, v167);

  SFAirDropReceive.Transfer.id.getter();
  v172 = v196;
  (*(v215 + 56))(v196, 1, 1, v159);
  swift_beginAccess();
  sub_1002B0EB8(v172, v169);
  swift_endAccess();

  sub_100560634(v162);
  (*(v201 + 8))(v205, v202);
  v173 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
  (*(*(v173 - 8) + 8))(v207, v173);
}

uint64_t sub_10055EF80(char *a1)
{
  v2 = v1;
  v5 = *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_bundleID];
  v4 = *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_bundleID + 8];
  swift_beginAccess();
  v6 = *(v1 + 32);
  if (*(v6 + 16) && (v7 = sub_100012854(v5, v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    v14 = v9;
  }

  else
  {
    swift_endAccess();
    v14 = _swiftEmptyArrayStorage;
  }

  v10 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (!*(*(v2 + 32) + 16))
  {
    *(v2 + 24) = v14;
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + 32);
  *(v2 + 32) = 0x8000000000000000;
  sub_10057B4A0(v14, v5, v4, isUniquelyReferenced_nonNull_native);

  *(v2 + 32) = v13;
  return swift_endAccess();
}

void sub_10055F118(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v75 - v12;
  v15 = *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_bundleID];
  v14 = *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_bundleID + 8];
  swift_beginAccess();
  v16 = *(v1 + 32);
  if (!*(v16 + 16) || (v17 = sub_100012854(v15, v14), (v18 & 1) == 0))
  {
    swift_endAccess();
    if (qword_100973A48 != -1)
    {
LABEL_34:
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000C4AC(v29, qword_1009833E8);
    v30 = a1;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v85[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_10000C4E4(v15, v14, v85);
      _os_log_impl(&_mh_execute_header, v31, v32, "No existing clients for bundleID %s", v33, 0xCu);
      sub_10000C60C(v34);
    }

    goto LABEL_18;
  }

  v79 = v15;
  v80 = v14;
  v77 = v7;
  v86 = *(*(v16 + 56) + 8 * v17);
  v19 = v86;
  swift_endAccess();
  v82 = v4;
  v83 = v2;
  v81 = v5;
  v76 = v11;
  v78 = v13;
  v15 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v84 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_id;
  v21 = v19 & 0xC000000000000001;
  swift_bridgeObjectRetain_n();
  v22 = 0;
  v23 = v19;
  while (1)
  {
    if (v20 == v22)
    {

      if (qword_100973A48 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_10000C4AC(v35, qword_1009833E8);
      v36 = a1;
      v31 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v85[0] = v39;
        *v38 = 136315138;
        type metadata accessor for UUID();
        sub_100560690(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        v42 = sub_10000C4E4(v40, v41, v85);

        *(v38 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v31, v37, "No existing client for id %s", v38, 0xCu);
        sub_10000C60C(v39);
      }

LABEL_18:

      return;
    }

    v24 = v19 + 8 * v22;
    if (v21)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v22 >= *(v15 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v25 = *(v24 + 32);
    }

    v14 = v25;
    v26 = a1;
    v27 = static UUID.== infix(_:_:)();

    if (v27)
    {
      break;
    }

    v28 = __OFADD__(v22++, 1);
    a1 = v26;
    v19 = v23;
    if (v28)
    {
      goto LABEL_33;
    }
  }

  if (v21)
  {
    v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v44 = v82;
    v45 = v83;
    v46 = v81;
    goto LABEL_29;
  }

  v44 = v82;
  v45 = v83;
  v46 = v81;
  if (v22 >= *(v15 + 16))
  {
    __break(1u);
    goto LABEL_61;
  }

  v43 = *(v24 + 32);
LABEL_29:
  v48 = v79;
  v47 = v80;

  v49 = v86;
  if (v86 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_37;
    }

LABEL_31:

    swift_beginAccess();

    sub_1002B1A90(v49, v48, v47);
    swift_endAccess();
LABEL_59:
    sub_100560178();

    return;
  }

  if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

LABEL_37:
  swift_beginAccess();

  sub_1002B1A90(0, v48, v47);
  swift_endAccess();
  v84 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_startTime;
  Date.timeIntervalSinceNow.getter();
  v51 = v50;
  v52 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_firstDiscoveredDate;
  swift_beginAccess();
  v53 = v78;
  sub_1002E4E88(v45 + v52, v78);
  v54 = v46[6];
  v55 = v54(v53, 1, v44);
  sub_100005508(v53, &qword_10097A7F0, &unk_1007FB600);
  v56 = 0.0;
  if (v55 == 1)
  {
LABEL_40:
    if (v56 > 0.0)
    {
      v63 = v56;
    }

    else
    {
      v63 = 0.0;
    }

    v64._countAndFlagsBits = 0x6C7070612E6D6F63;
    v64._object = 0xEA00000000002E65;
    if (String.hasPrefix(_:)(v64))
    {
    }

    v65 = String._bridgeToObjectiveC()();

    Date.timeIntervalSince1970.getter();
    v67 = v66;
    if ((*&v66 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v66 > -1.0)
      {
        if (v66 < 1.84467441e19)
        {
          v68 = *(v45 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_maxDisplayableEndpointCount);
          if (v68 >= 0xFFFFFFFF80000000)
          {
            if (v68 <= 0x7FFFFFFF)
            {
              v69 = *(v45 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_currentDisplayableEndpointCount);
              if (v69 >= 0xFFFFFFFF80000000)
              {
                if (v69 <= 0x7FFFFFFF)
                {
                  v70 = *(v45 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersInitiated);
                  if (v70 >= 0xFFFFFFFF80000000)
                  {
                    if (v70 <= 0x7FFFFFFF)
                    {
                      v71 = *(v45 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersCompleted);
                      if (v71 >= 0xFFFFFFFF80000000)
                      {
                        if (v71 <= 0x7FFFFFFF)
                        {
                          v72 = [*(v45 + 16) discoverableLevel];
                          if (v72 >= 0xFFFFFFFF80000000)
                          {
                            v73 = v72;
                            if (v72 <= 0x7FFFFFFF)
                            {
                              sub_10055FE14();
                              sub_1000868F0(0, 0, v65, v67, v68, v69, v70, v71, v51 * -1000.0, v63, v73, v74 & 1);

                              goto LABEL_59;
                            }

LABEL_73:
                            __break(1u);
                            goto LABEL_74;
                          }

LABEL_72:
                          __break(1u);
                          goto LABEL_73;
                        }

LABEL_71:
                        __break(1u);
                        goto LABEL_72;
                      }

LABEL_70:
                      __break(1u);
                      goto LABEL_71;
                    }

LABEL_69:
                    __break(1u);
                    goto LABEL_70;
                  }

LABEL_68:
                  __break(1u);
                  goto LABEL_69;
                }

LABEL_67:
                __break(1u);
                goto LABEL_68;
              }

LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v57 = v46[2];
  v80 = v43;
  v58 = v77;
  v57(v77, &v43[v84], v44, 0.0);
  v59 = v76;
  sub_1002E4E88(v45 + v52, v76);
  if (v54(v59, 1, v44) != 1)
  {
    Date.timeIntervalSince(_:)();
    v61 = v60;
    v62 = v46[1];
    v62(v58, v44);
    v62(v59, v44);
    v56 = v61 * -1000.0;
    v43 = v80;
    goto LABEL_40;
  }

LABEL_74:
  __break(1u);
}

uint64_t sub_10055FA90(uint64_t a1)
{
  v3 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_firstDiscoveredDate;
  swift_beginAccess();
  sub_1002E4E88(v1 + v9, v6);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v6, 1, v10);
  sub_100005508(v6, &qword_10097A7F0, &unk_1007FB600);
  if (v12 == 1)
  {
    Date.init()();
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  else
  {
    sub_1002E4E88(v1 + v9, v8);
  }

  swift_beginAccess();
  sub_1003561CC(v8, v1 + v9);
  result = swift_endAccess();
  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_currentDisplayableEndpointCount) = a1;
  v14 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_maxDisplayableEndpointCount);
  if (v14 <= a1)
  {
    v14 = a1;
  }

  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_maxDisplayableEndpointCount) = v14;
  return result;
}

uint64_t sub_10055FC6C()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return v1;
  }

  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    return 0;
  }

LABEL_4:
  if ((v1 & 0xC000000000000001) != 0)
  {

    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v1 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_bundleID);

    swift_unknownObjectRelease();
    return v1;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(*(v1 + 32) + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_bundleID);

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10055FD4C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009833E8);
  v1 = sub_10000C4AC(v0, qword_1009833E8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10055FE14()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 32) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v25 = *(v0 + 32);
  swift_bridgeObjectRetain_n();
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  v24 = v3;
  if (v7)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_4:
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_36;
    }

    if (v11 >= v8)
    {

      v20 = *(v10 + 2);
      if (v20)
      {
        v21 = v10 + 32;
        v22 = 1;
        do
        {
          v23 = *v21++;
          v22 &= v23;
          --v20;
        }

        while (v20);
      }

      return;
    }

    v7 = *(v3 + 8 * v11);
    ++v9;
  }

  while (!v7);
  v9 = v11;
LABEL_8:
  while (1)
  {
    v26 = v10;
    v12 = *(*(v25 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
    v13 = v12 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v13)
    {
      break;
    }

    v15 = 1;
LABEL_23:

    v10 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10028E848(0, *(v26 + 2) + 1, 1, v26);
    }

    v19 = *(v10 + 2);
    v18 = *(v10 + 3);
    if (v19 >= v18 >> 1)
    {
      v10 = sub_10028E848((v18 > 1), v19 + 1, 1, v10);
    }

    v7 &= v7 - 1;
    *(v10 + 2) = v19 + 1;
    v10[v19 + 32] = v15;
    v3 = v24;
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  v14 = 0;
  v15 = 1;
  while ((v12 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_34;
    }

LABEL_17:
    if (v15)
    {
      v15 = v16[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_applicationServiceEndpointsOnly];
    }

    else
    {
      v15 = 0;
    }

    ++v14;
    if (v17 == v13)
    {
      goto LABEL_23;
    }
  }

  if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

  v16 = *(v12 + 8 * v14 + 32);
  v17 = v14 + 1;
  if (!__OFADD__(v14, 1))
  {
    goto LABEL_17;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

char *sub_100560090(uint64_t a1)
{
  *(v1 + 3) = 0;
  *(v1 + 4) = &_swiftEmptyDictionarySingleton;
  *(v1 + 5) = &_swiftEmptyDictionarySingleton;
  *(v1 + 6) = &_swiftEmptyDictionarySingleton;
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_firstDiscoveredDate;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);
  v5(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_maxDisplayableEndpointCount] = 0;
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_currentDisplayableEndpointCount] = 0;
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersInitiated] = 0;
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersCompleted] = 0;
  v5(&v1[OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_bonjourServerStartDate], 1, 1, v4);
  *(v1 + 2) = a1;
  return v1;
}

void sub_100560178()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v1 - 8);
  v3 = &v6[-v2];
  swift_beginAccess();
  if (!*(*(v0 + 32) + 16))
  {
    *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_maxDisplayableEndpointCount) = 0;
    *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_currentDisplayableEndpointCount) = 0;
    *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersInitiated) = 0;
    *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersCompleted) = 0;
    v4 = type metadata accessor for Date();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_firstDiscoveredDate;
    swift_beginAccess();
    sub_1003561CC(v3, v0 + v5);
    swift_endAccess();
    *(v0 + 24) = 0;
  }
}

uint64_t sub_1005602BC()
{

  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_firstDiscoveredDate, &qword_10097A7F0, &unk_1007FB600);
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_bonjourServerStartDate, &qword_10097A7F0, &unk_1007FB600);

  return swift_deallocClassInstance();
}

void sub_1005603B0(uint64_t a1)
{
  sub_1002A6BEC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1005604C8(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1002A6BEC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10056056C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropLegacySessionLogger.Transfer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005605D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropLegacySessionLogger.Transfer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100560634(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropLegacySessionLogger.Transfer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100560690(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005606D8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009835C8);
  v1 = sub_10000C4AC(v0, qword_1009835C8);
  if (qword_100973740 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005607A0()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  if (!v2 || (sub_10056089C() & 1) != 0)
  {
    return 1;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = [v0 BOOLForKey:v4];

  if (!v5 || (sub_1005609D0() & 1) == 0)
  {
    return 0;
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [v0 BOOLForKey:v6];

  return v7 ^ 1;
}

uint64_t sub_10056089C()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 integerForKey:v3];

  if (v4 < 2)
  {
    return 1;
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [v0 BOOLForKey:v6];

  if (!v7 || (sub_1005609D0() & 1) == 0)
  {
    return 0;
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = [v0 BOOLForKey:v8];

  return v9 ^ 1;
}

id sub_1005609D0()
{
  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 valueForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100456B48(&v23);
LABEL_5:
    v6 = String._bridgeToObjectiveC()();
    v7 = [v1 BOOLForKey:v6];

    return v7;
  }

  v23 = 0u;
  v24 = 0u;
  sub_100456B48(&v23);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v0 valueForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100456B48(&v23);
    goto LABEL_5;
  }

  v23 = 0u;
  v24 = 0u;
  sub_100456B48(&v23);
  if (qword_100973A50 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_1009835C8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Requesting value of PKTextInputSettings.supportedKeyboardLocaleExists on main thread...", v12, 2u);
  }

  if ([objc_opt_self() isMainThread])
  {
    sub_100560E10();
    v13 = 0;
    v14 = 0;
LABEL_14:
    v19 = String._bridgeToObjectiveC()();
    v7 = [v1 BOOLForKey:v19];

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109120;
      *(v22 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v20, v21, "Received value of PKTextInputSettings.supportedKeyboardLocaleExists: %{BOOL}d", v22, 8u);
    }

    sub_1002F5A40(v13, v14);
    return v7;
  }

  sub_1002DDC10();
  v15 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  v16 = swift_allocObject();
  v13 = sub_100561E3C;
  *(v16 + 16) = sub_100561E3C;
  *(v16 + 24) = v14;
  v25 = sub_100561E60;
  v26 = v16;
  *&v23 = _NSConcreteStackBlock;
  *(&v23 + 1) = 1107296256;
  *&v24 = sub_100695A9C;
  *(&v24 + 1) = &unk_1008E6FE0;
  v17 = _Block_copy(&v23);
  v18 = v1;

  dispatch_sync(v15, v17);

  _Block_release(v17);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if ((v15 & 1) == 0)
  {
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_100560E10()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002DDC10();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = [objc_opt_self() sharedSettings];
    v8 = [v7 supportedKeyboardLocaleExists];

    v9 = String._bridgeToObjectiveC()();
    [v1 setBool:v8 forKey:v9];
  }

  else
  {
    __break(1u);
  }
}

void sub_100560F98(uint64_t a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 setInteger:a1 forKey:v3];

  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithSuiteName:v5];

  if (v6)
  {
    v8 = v6;
    v7 = String._bridgeToObjectiveC()();
    [v8 setInteger:a1 forKey:v7];
  }
}

void sub_1005610DC(char a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 setBool:a1 & 1 forKey:v3];

  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithSuiteName:v5];

  if (v6)
  {
    v8 = v6;
    v7 = String._bridgeToObjectiveC()();
    [v8 setBool:a1 & 1 forKey:v7];
  }
}

void sub_100561220(char a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 setBool:a1 & 1 forKey:v3];

  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithSuiteName:v5];

  if (v6)
  {
    v8 = v6;
    v7 = String._bridgeToObjectiveC()();
    [v8 setBool:a1 & 1 forKey:v7];
  }
}

void sub_100561364(char a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 setBool:a1 & 1 forKey:v3];

  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithSuiteName:v5];

  if (v6)
  {
    v8 = v6;
    v7 = String._bridgeToObjectiveC()();
    [v8 setBool:a1 & 1 forKey:v7];
  }
}

double sub_1005614A0()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100456B48(v7);
    v3 = String._bridgeToObjectiveC()();
    [v0 doubleForKey:v3];
    v5 = v4;
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    sub_100456B48(v7);
    return 1.5;
  }

  return v5;
}

void sub_100561584()
{
  v1 = v0;
  if (qword_100973A50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009835C8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "setting Last Seen UI to Current", v5, 2u);
  }

  sub_1005610DC(1);
  sub_100560F98(2);
  sub_100561364(0);
  v6 = [objc_opt_self() sharedSettings];
  v7 = [v6 supportedKeyboardLocaleExists];

  if (v7)
  {
    sub_100561220(1);
  }

  v8 = String._bridgeToObjectiveC()();
  [v1 removeObjectForKey:v8];
}

void sub_100561714()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 removeObjectForKey:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 removeObjectForKey:v2];

  v3 = String._bridgeToObjectiveC()();
  [v0 removeObjectForKey:v3];

  v4 = String._bridgeToObjectiveC()();
  [v0 removeObjectForKey:v4];

  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithSuiteName:v6];

  if (v7)
  {
    v8 = v7;
    v9 = String._bridgeToObjectiveC()();
    [v8 removeObjectForKey:v9];

    v10 = v8;
    v11 = String._bridgeToObjectiveC()();
    [v10 removeObjectForKey:v11];

    v12 = v10;
    v13 = String._bridgeToObjectiveC()();
    [v12 removeObjectForKey:v13];

    v14 = v12;
    v15 = String._bridgeToObjectiveC()();
    [v14 removeObjectForKey:v15];
  }

  v16 = String._bridgeToObjectiveC()();
  [v0 removeObjectForKey:v16];
}

void sub_1005619B4()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 removeObjectForKey:v1];

  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  v5 = String._bridgeToObjectiveC()();
  v6 = [v0 objectForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100456B48(&v29);
    if (v4)
    {
      v7 = v4;
      v8 = String._bridgeToObjectiveC()();
      v9 = [v0 BOOLForKey:v8];

      v10 = String._bridgeToObjectiveC()();
      [v7 setBool:v9 forKey:v10];
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    sub_100456B48(&v29);
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = [v0 objectForKey:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100456B48(&v29);
    if (v4)
    {
      v13 = v4;
      v14 = String._bridgeToObjectiveC()();
      v15 = [v0 integerForKey:v14];

      v16 = String._bridgeToObjectiveC()();
      [v13 setInteger:v15 forKey:v16];
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    sub_100456B48(&v29);
  }

  v17 = String._bridgeToObjectiveC()();
  v18 = [v0 objectForKey:v17];

  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100456B48(&v29);
    if (v4)
    {
      v19 = v4;
      v20 = String._bridgeToObjectiveC()();
      v21 = [v0 BOOLForKey:v20];

      v22 = String._bridgeToObjectiveC()();
      [v19 setBool:v21 forKey:v22];
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    sub_100456B48(&v29);
  }

  v23 = String._bridgeToObjectiveC()();
  v24 = [v0 objectForKey:v23];

  if (v24)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100456B48(&v29);
    if (v4)
    {
      v25 = v4;
      v26 = String._bridgeToObjectiveC()();
      v27 = [v0 BOOLForKey:v26];

      v28 = String._bridgeToObjectiveC()();
      [v25 setBool:v27 forKey:v28];
    }
  }

  else
  {

    v29 = 0u;
    v30 = 0u;
    sub_100456B48(&v29);
  }
}

uint64_t type metadata accessor for SDAirDropMessage(uint64_t a1)
{
  result = qword_100983668;
  if (!qword_100983668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100561EB4(uint64_t a1)
{
  sub_1005621BC(319, &qword_100983678, _s12HelloRequestVMa);
  if (v1 <= 0x3F)
  {
    sub_10056209C();
    if (v2 <= 0x3F)
    {
      sub_1005620CC();
      if (v3 <= 0x3F)
      {
        sub_1005620FC();
        if (v4 <= 0x3F)
        {
          sub_1005621BC(319, &qword_100983698, _s10AskRequestVMa);
          if (v5 <= 0x3F)
          {
            sub_10056212C();
            if (v6 <= 0x3F)
            {
              sub_1005621BC(319, &qword_1009836A8, _s13UploadRequestVMa);
              if (v7 <= 0x3F)
              {
                sub_10056215C();
                if (v8 <= 0x3F)
                {
                  sub_1005621BC(319, &qword_1009836B8, _s15ExchangeRequestVMa);
                  if (v9 <= 0x3F)
                  {
                    sub_1005621BC(319, &qword_1009836C0, _s16ExchangeResponseVMa);
                    if (v10 <= 0x3F)
                    {
                      sub_10056218C();
                      if (v11 <= 0x3F)
                      {
                        sub_1005621BC(319, &unk_1009836D0, _s12ErrorRequestVMa);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

ValueMetadata *sub_10056209C()
{
  result = qword_100983680;
  if (!qword_100983680)
  {
    result = &_s13HelloResponseVN;
    atomic_store(&_s13HelloResponseVN, &qword_100983680);
  }

  return result;
}

ValueMetadata *sub_1005620CC()
{
  result = qword_100983688;
  if (!qword_100983688)
  {
    result = &_s15DiscoverRequestVN;
    atomic_store(&_s15DiscoverRequestVN, &qword_100983688);
  }

  return result;
}

ValueMetadata *sub_1005620FC()
{
  result = qword_100983690;
  if (!qword_100983690)
  {
    result = &_s16DiscoverResponseVN;
    atomic_store(&_s16DiscoverResponseVN, &qword_100983690);
  }

  return result;
}

ValueMetadata *sub_10056212C()
{
  result = qword_1009836A0;
  if (!qword_1009836A0)
  {
    result = &_s11AskResponseVN;
    atomic_store(&_s11AskResponseVN, &qword_1009836A0);
  }

  return result;
}

void *sub_10056215C()
{
  result = qword_1009836B0;
  if (!qword_1009836B0)
  {
    result = &type metadata for Data;
    atomic_store(&type metadata for Data, &qword_1009836B0);
  }

  return result;
}

ValueMetadata *sub_10056218C()
{
  result = qword_1009836C8;
  if (!qword_1009836C8)
  {
    result = &_s20IdentityShareRequestVN;
    atomic_store(&_s20IdentityShareRequestVN, &qword_1009836C8);
  }

  return result;
}

void sub_1005621BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100562218()
{
  v1 = v0;
  v2 = _s12ErrorRequestVMa(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s16ExchangeResponseVMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s15ExchangeRequestVMa(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s13UploadRequestVMa(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s10AskRequestVMa(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s12HelloRequestVMa(0);
  __chkstk_darwin(v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SDAirDropMessage(0);
  __chkstk_darwin(v20);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003CC814(v1, v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v44 = *v22;
      *&v54 = 0;
      *(&v54 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      *&v54 = 0x6572204F4C4C4548;
      *(&v54 + 1) = 0xEF2065736E6F7073;
      LODWORD(v52) = v44;
      v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v45);
      goto LABEL_10;
    case 2u:
      v37 = *v22;
      v38 = *(v22 + 1);
      v25 = sub_10042304C(*v22, v38, *(v22 + 2), v22[24]);
      sub_10028BCC0(v37, v38);
      return v25;
    case 3u:
      v39 = *(v22 + 7);
      v60 = *(v22 + 6);
      v61 = v39;
      v62 = *(v22 + 8);
      v63 = v22[144];
      v40 = *(v22 + 3);
      v56 = *(v22 + 2);
      v57 = v40;
      v41 = *(v22 + 5);
      v58 = *(v22 + 4);
      v59 = v41;
      v42 = *(v22 + 1);
      v54 = *v22;
      v55 = v42;
      v25 = sub_1004226C0();
      sub_1003CB878(&v54);
      return v25;
    case 4u:
      v26 = _s10AskRequestVMa;
      v27 = sub_100566E44(v22, v16, _s10AskRequestVMa);
      v25 = sub_1005A3B18(v27, v28);
      v29 = v16;
      goto LABEL_14;
    case 5u:
      v46 = *(v22 + 5);
      v58 = *(v22 + 4);
      v59 = v46;
      *&v60 = *(v22 + 12);
      v47 = *(v22 + 1);
      v54 = *v22;
      v55 = v47;
      v48 = *(v22 + 3);
      v56 = *(v22 + 2);
      v57 = v48;
      v25 = sub_1005A43F8();
      sub_10030D74C(&v54);
      return v25;
    case 6u:
      v26 = _s13UploadRequestVMa;
      sub_100566E44(v22, v13, _s13UploadRequestVMa);
      sub_100478BA8();
      v25 = v49;
      v29 = v13;
      goto LABEL_14;
    case 7u:
    case 0xBu:
    case 0xDu:
      v23 = *v22;
      v24 = *(v22 + 1);
      v25 = Data.description.getter();
      sub_100026AC0(v23, v24);
      return v25;
    case 8u:
      v26 = _s15ExchangeRequestVMa;
      sub_100566E44(v22, v10, _s15ExchangeRequestVMa);
      v25 = sub_10058280C();
      v29 = v10;
      goto LABEL_14;
    case 9u:
      sub_100566E44(v22, v7, _s16ExchangeResponseVMa);
      v25 = sub_100582C08();
      v29 = v7;
      v50 = _s16ExchangeResponseVMa;
      goto LABEL_15;
    case 0xAu:
      v30 = *(v22 + 2);
      v32 = *(v22 + 3);
      v31 = *(v22 + 4);
      v34 = *(v22 + 5);
      v33 = *(v22 + 6);
      v35 = *(v22 + 7);
      *&v54 = 0;
      *(&v54 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(44);
      v36._object = 0x800000010078C5B0;
      v36._countAndFlagsBits = 0xD00000000000002ALL;
      String.append(_:)(v36);
      v52 = v30;
      v53 = v32;
      sub_1002A9924(v30, v32);
      sub_1002F4C88();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      sub_10028BCC0(v52, v53);

      sub_10028BCC0(v30, v32);
      sub_100026AC0(v31, v34);
      sub_100026AC0(v33, v35);
LABEL_10:

      return v54;
    case 0xCu:
      v26 = _s12ErrorRequestVMa;
      sub_100566E44(v22, v4, _s12ErrorRequestVMa);
      v25 = sub_1005462B4();
      v29 = v4;
      goto LABEL_14;
    default:
      v26 = _s12HelloRequestVMa;
      sub_100566E44(v22, v19, _s12HelloRequestVMa);
      *&v54 = 0;
      *(&v54 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      strcpy(&v54, "HELLO request ");
      HIBYTE(v54) = -18;
      LODWORD(v52) = *&v19[*(v17 + 20)];
      v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v43);

      v25 = v54;
      v29 = v19;
LABEL_14:
      v50 = v26;
LABEL_15:
      sub_100566CCC(v29, v50);
      return v25;
  }
}

uint64_t sub_100562870()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009835E0);
  v1 = sub_10000C4AC(v0, qword_1009835E0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100562938(char a1)
{
  result = 0x7165526F6C6C6568;
  switch(a1)
  {
    case 1:
      v3 = 0x526F6C6C6568;
      goto LABEL_12;
    case 2:
      result = 0x7265766F63736964;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x65757165526B7361;
      break;
    case 5:
      result = 0x6F707365526B7361;
      break;
    case 6:
    case 7:
      result = 0x655264616F6C7075;
      break;
    case 8:
      result = 0x65676E6168637865;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0x716552726F727265;
      break;
    case 13:
      v3 = 0x52726F727265;
LABEL_12:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100562AE4(void *a1)
{
  v2 = sub_10028088C(&qword_100983848, &qword_100809D68);
  v152 = *(v2 - 8);
  v153 = v2;
  __chkstk_darwin(v2);
  v150 = &v102 - v3;
  v151 = sub_10028088C(&qword_100983850, &qword_100809D70);
  v149 = *(v151 - 8);
  __chkstk_darwin(v151);
  v148 = &v102 - v4;
  v146 = _s12ErrorRequestVMa(0);
  __chkstk_darwin(v146);
  v147 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10028088C(&qword_100983858, &qword_100809D78);
  v144 = *(v6 - 8);
  v145 = v6;
  __chkstk_darwin(v6);
  v141 = &v102 - v7;
  v8 = sub_10028088C(&qword_100983860, &qword_100809D80);
  v142 = *(v8 - 8);
  v143 = v8;
  __chkstk_darwin(v8);
  v140 = &v102 - v9;
  v10 = sub_10028088C(&qword_100983868, &qword_100809D88);
  v138 = *(v10 - 8);
  v139 = v10;
  __chkstk_darwin(v10);
  v137 = &v102 - v11;
  v135 = _s16ExchangeResponseVMa(0);
  __chkstk_darwin(v135);
  v136 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10028088C(&qword_100983870, &qword_100809D90);
  v133 = *(v13 - 8);
  v134 = v13;
  __chkstk_darwin(v13);
  v132 = &v102 - v14;
  v130 = _s15ExchangeRequestVMa(0);
  __chkstk_darwin(v130);
  v131 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10028088C(&qword_100983878, &qword_100809D98);
  v128 = *(v16 - 8);
  v129 = v16;
  __chkstk_darwin(v16);
  v126 = &v102 - v17;
  v127 = sub_10028088C(&qword_100983880, &qword_100809DA0);
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v124 = &v102 - v18;
  v120 = _s13UploadRequestVMa(0);
  __chkstk_darwin(v120);
  v123 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10028088C(&qword_100983888, &qword_100809DA8);
  v121 = *(v20 - 8);
  v122 = v20;
  __chkstk_darwin(v20);
  v119 = &v102 - v21;
  v22 = sub_10028088C(&qword_100983890, &qword_100809DB0);
  v117 = *(v22 - 8);
  v118 = v22;
  __chkstk_darwin(v22);
  v115 = &v102 - v23;
  v111 = _s10AskRequestVMa(0);
  __chkstk_darwin(v111);
  v113 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10028088C(&qword_100983898, &qword_100809DB8);
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v112 = &v102 - v25;
  v26 = sub_10028088C(&qword_1009838A0, &qword_100809DC0);
  v109 = *(v26 - 8);
  v110 = v26;
  __chkstk_darwin(v26);
  v108 = &v102 - v27;
  v28 = sub_10028088C(&qword_1009838A8, &qword_100809DC8);
  v106 = *(v28 - 8);
  v107 = v28;
  __chkstk_darwin(v28);
  v104 = &v102 - v29;
  v105 = sub_10028088C(&qword_1009838B0, &qword_100809DD0);
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v102 = &v102 - v30;
  v31 = _s12HelloRequestVMa(0);
  __chkstk_darwin(v31);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for SDAirDropMessage(0);
  __chkstk_darwin(v34);
  v36 = &v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10028088C(&qword_1009838B8, &qword_100809DD8);
  v38 = *(v37 - 8);
  v155 = v37;
  v156 = v38;
  __chkstk_darwin(v37);
  v40 = &v102 - v39;
  sub_10002CDC0(a1, a1[3]);
  sub_100566D9C();
  v154 = v40;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1003CC814(v177, v36);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v79 = *v36;
      v80 = v36[4];
      LOBYTE(v167) = 1;
      sub_100567398();
      v81 = v104;
      v83 = v154;
      v82 = v155;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LODWORD(v167) = v79;
      BYTE4(v167) = v80;
      sub_1005675E4();
      v84 = v107;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v106 + 8))(v81, v84);
      return (*(v156 + 8))(v83, v82);
    case 2u:
      v63 = *v36;
      v64 = *(v36 + 1);
      v65 = *(v36 + 2);
      v66 = v36[24];
      LOBYTE(v167) = 2;
      sub_1005672F0();
      v67 = v108;
      v69 = v154;
      v68 = v155;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v167 = v63;
      *(&v167 + 1) = v64;
      *&v168 = v65;
      BYTE8(v168) = v66;
      sub_100567590();
      v70 = v110;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v109 + 8))(v67, v70);
      (*(v156 + 8))(v69, v68);
      return sub_10028BCC0(v63, v64);
    case 3u:
      v71 = *(v36 + 7);
      v173 = *(v36 + 6);
      v174 = v71;
      v175 = *(v36 + 8);
      v176 = v36[144];
      v72 = *(v36 + 3);
      v169 = *(v36 + 2);
      v170 = v72;
      v73 = *(v36 + 5);
      v171 = *(v36 + 4);
      v172 = v73;
      v74 = *(v36 + 1);
      v167 = *v36;
      v168 = v74;
      LOBYTE(v157) = 3;
      sub_100567248();
      v75 = v112;
      v77 = v154;
      v76 = v155;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v163 = v173;
      v164 = v174;
      v165 = v175;
      v166 = v176;
      v159 = v169;
      v160 = v170;
      v161 = v171;
      v162 = v172;
      v157 = v167;
      v158 = v168;
      sub_10056753C();
      v78 = v116;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v114 + 8))(v75, v78);
      (*(v156 + 8))(v77, v76);
      return sub_1003CB878(&v167);
    case 4u:
      v53 = v113;
      sub_100566E44(v36, v113, _s10AskRequestVMa);
      LOBYTE(v167) = 4;
      sub_1005671F4();
      v54 = v115;
      v56 = v154;
      v55 = v155;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100567638(&qword_1009838F0, _s10AskRequestVMa, &unk_10080BCC4);
      v57 = v118;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v117 + 8))(v54, v57);
      v58 = _s10AskRequestVMa;
      goto LABEL_17;
    case 5u:
      v85 = *(v36 + 5);
      v171 = *(v36 + 4);
      v172 = v85;
      *&v173 = *(v36 + 12);
      v86 = *(v36 + 1);
      v167 = *v36;
      v168 = v86;
      v87 = *(v36 + 3);
      v169 = *(v36 + 2);
      v170 = v87;
      LOBYTE(v157) = 5;
      sub_10056714C();
      v88 = v119;
      v90 = v154;
      v89 = v155;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v161 = v171;
      v162 = v172;
      *&v163 = v173;
      v157 = v167;
      v158 = v168;
      v159 = v169;
      v160 = v170;
      sub_1005674E8();
      v91 = v122;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v121 + 8))(v88, v91);
      (*(v156 + 8))(v90, v89);
      return sub_10030D74C(&v167);
    case 6u:
      v53 = v123;
      sub_100566E44(v36, v123, _s13UploadRequestVMa);
      LOBYTE(v167) = 6;
      sub_1005670F8();
      v92 = v124;
      v56 = v154;
      v55 = v155;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100567638(&qword_1009838E0, _s13UploadRequestVMa, &unk_100804D20);
      v93 = v127;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v125 + 8))(v92, v93);
      v58 = _s13UploadRequestVMa;
      goto LABEL_17;
    case 7u:
      v46 = *v36;
      v47 = *(v36 + 1);
      LOBYTE(v167) = 7;
      sub_1005670A4();
      v48 = v126;
      v50 = v154;
      v49 = v155;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v167 = v46;
      *(&v167 + 1) = v47;
      sub_1002F3198();
      v51 = v129;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v52 = v128;
      goto LABEL_13;
    case 8u:
      v53 = v131;
      sub_100566E44(v36, v131, _s15ExchangeRequestVMa);
      LOBYTE(v167) = 8;
      sub_100567050();
      v100 = v132;
      v56 = v154;
      v55 = v155;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100567638(&qword_1009838D8, _s15ExchangeRequestVMa, &unk_10080B1E4);
      v101 = v134;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v133 + 8))(v100, v101);
      v58 = _s15ExchangeRequestVMa;
      goto LABEL_17;
    case 9u:
      v53 = v136;
      sub_100566E44(v36, v136, _s16ExchangeResponseVMa);
      LOBYTE(v167) = 9;
      sub_100566FFC();
      v61 = v137;
      v56 = v154;
      v55 = v155;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100567638(&qword_1009838D0, _s16ExchangeResponseVMa, &unk_10080B16C);
      v62 = v139;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v138 + 8))(v61, v62);
      v58 = _s16ExchangeResponseVMa;
      goto LABEL_17;
    case 0xAu:
      v94 = *(v36 + 3);
      v169 = *(v36 + 2);
      v170 = v94;
      v171 = *(v36 + 4);
      *&v172 = *(v36 + 10);
      v95 = *(v36 + 1);
      v167 = *v36;
      v168 = v95;
      LOBYTE(v157) = 10;
      sub_100566F54();
      v96 = v140;
      v98 = v154;
      v97 = v155;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v159 = v169;
      v160 = v170;
      v161 = v171;
      *&v162 = v172;
      v157 = v167;
      v158 = v168;
      sub_100567494();
      v99 = v143;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v142 + 8))(v96, v99);
      (*(v156 + 8))(v98, v97);
      return sub_1003398D8(&v167);
    case 0xBu:
      v46 = *v36;
      v47 = *(v36 + 1);
      LOBYTE(v167) = 11;
      sub_100566F00();
      v48 = v141;
      v50 = v154;
      v49 = v155;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v167 = v46;
      *(&v167 + 1) = v47;
      sub_1002F3198();
      v51 = v145;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v52 = v144;
      goto LABEL_13;
    case 0xCu:
      v53 = v147;
      sub_100566E44(v36, v147, _s12ErrorRequestVMa);
      LOBYTE(v167) = 12;
      sub_100566EAC();
      v59 = v148;
      v56 = v154;
      v55 = v155;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100567638(&qword_1009838C0, _s12ErrorRequestVMa, &unk_1008094A8);
      v60 = v151;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v149 + 8))(v59, v60);
      v58 = _s12ErrorRequestVMa;
LABEL_17:
      sub_100566CCC(v53, v58);
      result = (*(v156 + 8))(v56, v55);
      break;
    case 0xDu:
      v46 = *v36;
      v47 = *(v36 + 1);
      LOBYTE(v167) = 13;
      sub_100566DF0();
      v48 = v150;
      v50 = v154;
      v49 = v155;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v167 = v46;
      *(&v167 + 1) = v47;
      sub_1002F3198();
      v51 = v153;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v52 = v152;
LABEL_13:
      (*(v52 + 8))(v48, v51);
      (*(v156 + 8))(v50, v49);
      result = sub_100026AC0(v46, v47);
      break;
    default:
      sub_100566E44(v36, v33, _s12HelloRequestVMa);
      LOBYTE(v167) = 0;
      sub_100567440();
      v41 = v102;
      v43 = v154;
      v42 = v155;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100567638(&qword_100983910, _s12HelloRequestVMa, &unk_10080F750);
      v44 = v105;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v103 + 8))(v41, v44);
      sub_100566CCC(v33, _s12HelloRequestVMa);
      result = (*(v156 + 8))(v43, v42);
      break;
  }

  return result;
}

uint64_t sub_1005640C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v195 = a2;
  v176 = sub_10028088C(&qword_100983700, &qword_100809CE8);
  v193 = *(v176 - 8);
  __chkstk_darwin(v176);
  v188 = &v135 - v3;
  v175 = sub_10028088C(&qword_100983708, &qword_100809CF0);
  v189 = *(v175 - 8);
  __chkstk_darwin(v175);
  v187 = &v135 - v4;
  v174 = sub_10028088C(&qword_100983710, &qword_100809CF8);
  v173 = *(v174 - 8);
  __chkstk_darwin(v174);
  v186 = &v135 - v5;
  v172 = sub_10028088C(&qword_100983718, &qword_100809D00);
  v171 = *(v172 - 8);
  __chkstk_darwin(v172);
  v185 = &v135 - v6;
  v170 = sub_10028088C(&qword_100983720, &qword_100809D08);
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v184 = &v135 - v7;
  v168 = sub_10028088C(&qword_100983728, &qword_100809D10);
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v183 = &v135 - v8;
  v166 = sub_10028088C(&qword_100983730, &qword_100809D18);
  v165 = *(v166 - 8);
  __chkstk_darwin(v166);
  v182 = &v135 - v9;
  v164 = sub_10028088C(&qword_100983738, &qword_100809D20);
  v163 = *(v164 - 8);
  __chkstk_darwin(v164);
  v181 = &v135 - v10;
  v162 = sub_10028088C(&qword_100983740, &qword_100809D28);
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v180 = &v135 - v11;
  v160 = sub_10028088C(&qword_100983748, &qword_100809D30);
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v178 = &v135 - v12;
  v158 = sub_10028088C(&qword_100983750, &qword_100809D38);
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v192 = &v135 - v13;
  v156 = sub_10028088C(&qword_100983758, &qword_100809D40);
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v179 = &v135 - v14;
  v154 = sub_10028088C(&qword_100983760, &qword_100809D48);
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v190 = &v135 - v15;
  v152 = sub_10028088C(&qword_100983768, &qword_100809D50);
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v177 = &v135 - v16;
  v191 = sub_10028088C(&qword_100983770, &unk_100809D58);
  v194 = *(v191 - 8);
  __chkstk_darwin(v191);
  v198 = &v135 - v17;
  v196 = type metadata accessor for SDAirDropMessage(0);
  v18 = __chkstk_darwin(v196);
  v146 = (&v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v18);
  v150 = &v135 - v21;
  v22 = __chkstk_darwin(v20);
  v144 = (&v135 - v23);
  v24 = __chkstk_darwin(v22);
  v145 = &v135 - v25;
  v26 = __chkstk_darwin(v24);
  v149 = &v135 - v27;
  v28 = __chkstk_darwin(v26);
  v148 = &v135 - v29;
  v30 = __chkstk_darwin(v28);
  v142 = (&v135 - v31);
  v32 = __chkstk_darwin(v30);
  v147 = &v135 - v33;
  v34 = __chkstk_darwin(v32);
  v143 = &v135 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v135 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v135 - v40;
  v42 = __chkstk_darwin(v39);
  v44 = &v135 - v43;
  v45 = __chkstk_darwin(v42);
  v47 = &v135 - v46;
  v48 = __chkstk_darwin(v45);
  v50 = &v135 - v49;
  __chkstk_darwin(v48);
  v52 = &v135 - v51;
  v53 = a1[3];
  v197 = a1;
  sub_10002CDC0(a1, v53);
  sub_100566D9C();
  v54 = v213;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v213 = v54;
  if (v54)
  {
LABEL_9:
    v76 = v197;
    return sub_10000C60C(v76);
  }

  v136 = v47;
  v139 = v50;
  v137 = v44;
  v140 = v38;
  v138 = v41;
  v55 = v190;
  v56 = v192;
  v57 = v193;
  v141 = v52;
  v58 = v195;
  v59 = v191;
  v60 = v198;
  v61 = KeyedDecodingContainer.allKeys.getter();
  v62 = (2 * *(v61 + 16)) | 1;
  v209 = v61;
  v210 = v61 + 32;
  v211 = 0;
  v212 = v62;
  v63 = sub_1004FF2B4();
  if (v211 != v212 >> 1)
  {
LABEL_7:
    v72 = type metadata accessor for DecodingError();
    v73 = swift_allocError();
    v75 = v74;
    sub_10028088C(&qword_1009820A8, &qword_1008085C0);
    *v75 = v196;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v72 - 8) + 104))(v75, enum case for DecodingError.typeMismatch(_:), v72);
    v213 = v73;
    swift_willThrow();
    (*(v194 + 8))(v60, v59);
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v64 = v189;
  switch(v63)
  {
    case 0:
      LOBYTE(v199) = 0;
      sub_100567440();
      v65 = v177;
      v66 = v213;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v213 = v66;
      if (v66)
      {
        goto LABEL_53;
      }

      _s12HelloRequestVMa(0);
      v67 = v59;
      sub_100567638(&qword_100983840, _s12HelloRequestVMa, &unk_10080F778);
      v68 = v139;
      v69 = v152;
      v70 = v213;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v151 + 8))(v65, v69);
      (*(v194 + 8))(v60, v67);
      swift_unknownObjectRelease();
      v213 = v70;
      if (v70)
      {
        goto LABEL_9;
      }

      swift_storeEnumTagMultiPayload();
      v71 = v68;
      goto LABEL_69;
    case 1:
      LOBYTE(v199) = 1;
      sub_100567398();
      v103 = v213;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v213 = v103;
      if (v103)
      {
        goto LABEL_53;
      }

      sub_1005673EC();
      v104 = v154;
      v105 = v213;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v106 = v194;
      v213 = v105;
      if (v105)
      {
        (*(v153 + 8))(v55, v104);
        (*(v106 + 8))(v60, v59);
        goto LABEL_8;
      }

      (*(v153 + 8))(v55, v104);
      (*(v106 + 8))(v60, v59);
      swift_unknownObjectRelease();
      v128 = BYTE4(v199);
      v119 = v136;
      *v136 = v199;
      *(v119 + 4) = v128;
      goto LABEL_66;
    case 2:
      LOBYTE(v199) = 2;
      sub_1005672F0();
      v78 = v179;
      v97 = v213;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v213 = v97;
      if (v97)
      {
        goto LABEL_53;
      }

      sub_100567344();
      v80 = v156;
      v98 = v213;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v82 = v194;
      v213 = v98;
      if (v98)
      {
        v83 = &v187;
        goto LABEL_47;
      }

      (*(v155 + 8))(v78, v80);
      (*(v82 + 8))(v60, v59);
      swift_unknownObjectRelease();
      v122 = v200;
      v123 = BYTE8(v200);
      v119 = v137;
      *v137 = v199;
      *(v119 + 2) = v122;
      *(v119 + 24) = v123;
      goto LABEL_66;
    case 3:
      LOBYTE(v199) = 3;
      sub_100567248();
      v78 = v56;
      v99 = v213;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v213 = v99;
      if (v99)
      {
        goto LABEL_53;
      }

      sub_10056729C();
      v80 = v158;
      v100 = v213;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v82 = v194;
      v213 = v100;
      if (v100)
      {
        v83 = &v189;
        goto LABEL_47;
      }

      (*(v157 + 8))(v78, v80);
      (*(v82 + 8))(v60, v59);
      swift_unknownObjectRelease();
      v124 = v206;
      v119 = v138;
      *(v138 + 6) = v205;
      v119[7] = v124;
      v119[8] = v207;
      *(v119 + 144) = v208;
      v125 = v202;
      v119[2] = v201;
      v119[3] = v125;
      v126 = v204;
      v119[4] = v203;
      v119[5] = v126;
      v127 = v200;
      *v119 = v199;
      v119[1] = v127;
      goto LABEL_66;
    case 4:
      LOBYTE(v199) = 4;
      sub_1005671F4();
      v84 = v178;
      v85 = v213;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v213 = v85;
      if (v85)
      {
        goto LABEL_53;
      }

      _s10AskRequestVMa(0);
      sub_100567638(&qword_100983800, _s10AskRequestVMa, &unk_10080BCEC);
      v86 = v140;
      v87 = v160;
      v88 = v213;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v213 = v88;
      if (v88)
      {
        v89 = &v191;
        goto LABEL_52;
      }

      (*(v159 + 8))(v84, v87);
      (*(v194 + 8))(v60, v59);
      swift_unknownObjectRelease();
      goto LABEL_68;
    case 5:
      LOBYTE(v199) = 5;
      sub_10056714C();
      v78 = v180;
      v107 = v213;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v213 = v107;
      if (v107)
      {
        goto LABEL_53;
      }

      sub_1005671A0();
      v80 = v162;
      v108 = v213;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v82 = v194;
      v213 = v108;
      if (v108)
      {
        v83 = &v193;
        goto LABEL_47;
      }

      (*(v161 + 8))(v78, v80);
      (*(v82 + 8))(v60, v59);
      swift_unknownObjectRelease();
      v129 = v204;
      v119 = v143;
      *(v143 + 4) = v203;
      v119[5] = v129;
      *(v119 + 12) = v205;
      v131 = v200;
      v130 = v201;
      *v119 = v199;
      v119[1] = v131;
      v132 = v202;
      v119[2] = v130;
      v119[3] = v132;
      goto LABEL_66;
    case 6:
      LOBYTE(v199) = 6;
      sub_1005670F8();
      v84 = v181;
      v113 = v213;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v213 = v113;
      if (v113)
      {
        goto LABEL_53;
      }

      _s13UploadRequestVMa(0);
      sub_100567638(&qword_1009837E0, _s13UploadRequestVMa, &unk_100804D48);
      v86 = v147;
      v87 = v164;
      v114 = v213;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v213 = v114;
      if (v114)
      {
        v89 = &v195;
        goto LABEL_52;
      }

      (*(v163 + 8))(v84, v87);
      (*(v194 + 8))(v60, v59);
      swift_unknownObjectRelease();
      goto LABEL_68;
    case 7:
      LOBYTE(v199) = 7;
      sub_1005670A4();
      v78 = v182;
      v101 = v213;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v213 = v101;
      if (v101)
      {
        goto LABEL_53;
      }

      sub_1002F309C();
      v80 = v166;
      v102 = v213;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v82 = v194;
      v213 = v102;
      if (v102)
      {
        v83 = &v197;
        goto LABEL_47;
      }

      (*(v165 + 8))(v78, v80);
      (*(v82 + 8))(v60, v59);
      swift_unknownObjectRelease();
      v119 = v142;
      *v142 = v199;
      goto LABEL_66;
    case 8:
      LOBYTE(v199) = 8;
      sub_100567050();
      v84 = v183;
      v117 = v213;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v213 = v117;
      if (v117)
      {
        goto LABEL_53;
      }

      _s15ExchangeRequestVMa(0);
      sub_100567638(&qword_1009837C8, _s15ExchangeRequestVMa, &unk_10080B20C);
      v86 = v148;
      v87 = v168;
      v118 = v213;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v213 = v118;
      if (v118)
      {
        v89 = &v199;
        goto LABEL_52;
      }

      (*(v167 + 8))(v84, v87);
      (*(v194 + 8))(v60, v59);
      swift_unknownObjectRelease();
      goto LABEL_68;
    case 9:
      LOBYTE(v199) = 9;
      sub_100566FFC();
      v84 = v184;
      v95 = v213;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v213 = v95;
      if (v95)
      {
        goto LABEL_53;
      }

      _s16ExchangeResponseVMa(0);
      sub_100567638(&qword_1009837B8, _s16ExchangeResponseVMa, &unk_10080B194);
      v86 = v149;
      v87 = v170;
      v96 = v213;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v213 = v96;
      if (v96)
      {
        v89 = &v200;
LABEL_52:
        (*(*(v89 - 32) + 8))(v84, v87);
        goto LABEL_53;
      }

      (*(v169 + 8))(v84, v87);
      (*(v194 + 8))(v60, v59);
      swift_unknownObjectRelease();
LABEL_68:
      swift_storeEnumTagMultiPayload();
      v71 = v86;
      goto LABEL_69;
    case 10:
      LOBYTE(v199) = 10;
      sub_100566F54();
      v78 = v185;
      v115 = v213;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v213 = v115;
      if (v115)
      {
        goto LABEL_53;
      }

      sub_100566FA8();
      v80 = v172;
      v116 = v213;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v82 = v194;
      v213 = v116;
      if (v116)
      {
        v83 = &v201;
        goto LABEL_47;
      }

      (*(v171 + 8))(v78, v80);
      (*(v82 + 8))(v60, v59);
      swift_unknownObjectRelease();
      v133 = v202;
      v119 = v145;
      *(v145 + 2) = v201;
      v119[3] = v133;
      v119[4] = v203;
      *(v119 + 10) = v204;
      v134 = v200;
      *v119 = v199;
      v119[1] = v134;
      goto LABEL_66;
    case 11:
      LOBYTE(v199) = 11;
      sub_100566F00();
      v78 = v186;
      v79 = v213;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v213 = v79;
      if (v79)
      {
        goto LABEL_53;
      }

      sub_1002F309C();
      v80 = v174;
      v81 = v213;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v82 = v194;
      v213 = v81;
      if (!v81)
      {
        (*(v173 + 8))(v78, v80);
        (*(v82 + 8))(v60, v59);
        swift_unknownObjectRelease();
        v119 = v144;
        *v144 = v199;
        goto LABEL_66;
      }

      v83 = &v202;
LABEL_47:
      (*(*(v83 - 32) + 1))(v78, v80);
      goto LABEL_48;
    case 12:
      LOBYTE(v199) = 12;
      sub_100566EAC();
      v90 = v187;
      v91 = v213;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v213 = v91;
      if (v91)
      {
        goto LABEL_53;
      }

      _s12ErrorRequestVMa(0);
      sub_100567638(&qword_100983790, _s12ErrorRequestVMa, &unk_1008094D0);
      v92 = v150;
      v93 = v175;
      v94 = v213;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v213 = v94;
      if (!v94)
      {
        (*(v64 + 8))(v90, v93);
        (*(v194 + 8))(v60, v59);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v120 = v141;
        sub_100566E44(v92, v141, type metadata accessor for SDAirDropMessage);
        v121 = v197;
        v58 = v195;
        goto LABEL_70;
      }

      (*(v64 + 8))(v90, v93);
LABEL_53:
      (*(v194 + 8))(v60, v59);
      goto LABEL_8;
    case 13:
      LOBYTE(v199) = 13;
      sub_100566DF0();
      v109 = v188;
      v110 = v213;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v213 = v110;
      if (v110)
      {
        goto LABEL_53;
      }

      sub_1002F309C();
      v111 = v176;
      v112 = v213;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v82 = v194;
      v213 = v112;
      if (v112)
      {
        (*(v57 + 8))(v109, v111);
LABEL_48:
        (*(v82 + 8))(v60, v59);
        goto LABEL_8;
      }

      (*(v57 + 8))(v109, v111);
      (*(v82 + 8))(v60, v59);
      swift_unknownObjectRelease();
      v119 = v146;
      *v146 = v199;
LABEL_66:
      swift_storeEnumTagMultiPayload();
      v71 = v119;
LABEL_69:
      v120 = v141;
      sub_100566E44(v71, v141, type metadata accessor for SDAirDropMessage);
      v121 = v197;
LABEL_70:
      v213 = 0;
      sub_100566E44(v120, v58, type metadata accessor for SDAirDropMessage);
      v76 = v121;
      break;
    default:
      goto LABEL_7;
  }

  return sub_10000C60C(v76);
}

uint64_t sub_100565EB0(uint64_t a1)
{
  v2 = sub_1005671F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100565EEC(uint64_t a1)
{
  v2 = sub_1005671F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100565F40(uint64_t a1)
{
  v2 = sub_10056714C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100565F7C(uint64_t a1)
{
  v2 = sub_10056714C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100565FC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100568828(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100565FF4(uint64_t a1)
{
  v2 = sub_100566D9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100566030(uint64_t a1)
{
  v2 = sub_100566D9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10056606C(uint64_t a1)
{
  v2 = sub_1005672F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005660A8(uint64_t a1)
{
  v2 = sub_1005672F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005660E4(uint64_t a1)
{
  v2 = sub_100567248();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100566120(uint64_t a1)
{
  v2 = sub_100567248();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10056615C(uint64_t a1)
{
  v2 = sub_100566EAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100566198(uint64_t a1)
{
  v2 = sub_100566EAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005661D4(uint64_t a1)
{
  v2 = sub_100566DF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100566210(uint64_t a1)
{
  v2 = sub_100566DF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10056624C(uint64_t a1)
{
  v2 = sub_100567050();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100566288(uint64_t a1)
{
  v2 = sub_100567050();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005662C4(uint64_t a1)
{
  v2 = sub_100566FFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100566300(uint64_t a1)
{
  v2 = sub_100566FFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10056633C(uint64_t a1)
{
  v2 = sub_100567440();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100566378(uint64_t a1)
{
  v2 = sub_100567440();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005663B4(uint64_t a1)
{
  v2 = sub_100567398();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005663F0(uint64_t a1)
{
  v2 = sub_100567398();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10056642C(uint64_t a1)
{
  v2 = sub_100566F54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100566468(uint64_t a1)
{
  v2 = sub_100566F54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005664A4(uint64_t a1)
{
  v2 = sub_100566F00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005664E0(uint64_t a1)
{
  v2 = sub_100566F00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10056651C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1005665A4(uint64_t a1)
{
  v2 = sub_1005670F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005665E0(uint64_t a1)
{
  v2 = sub_1005670F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10056661C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1005666A4(uint64_t a1)
{
  v2 = sub_1005670A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005666E0(uint64_t a1)
{
  v2 = sub_1005670A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100566750@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s12ErrorRequestVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s15ExchangeRequestVMa(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s13UploadRequestVMa(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s10AskRequestVMa(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s12HelloRequestVMa(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SDAirDropMessage(0);
  __chkstk_darwin(v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003CC814(v2, v21);
  HIDWORD(v23) = swift_getEnumCaseMultiPayload();
  LODWORD(v23) = HIDWORD(v23);
  v22 = v23 >> 1;
  if (v22 <= 2)
  {
    if (!v22)
    {
      sub_100566E44(v21, v18, _s12HelloRequestVMa);
      v31 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v32 = *(v31 - 8);
      (*(v32 + 32))(a1, v18, v31);
      return (*(v32 + 56))(a1, 0, 1, v31);
    }

    if (v22 != 2)
    {
      goto LABEL_13;
    }

    sub_100566E44(v21, v15, _s10AskRequestVMa);
    sub_100566D2C(v15, a1);
    v28 = v15;
    v29 = _s10AskRequestVMa;
  }

  else
  {
    if (v22 != 3)
    {
      if (v22 == 4)
      {
        sub_100566E44(v21, v9, _s15ExchangeRequestVMa);
        v24 = type metadata accessor for SFAirDrop.TransferIdentifier();
        v25 = *(v24 - 8);
        (*(v25 + 16))(a1, v9, v24);
        v26 = v9;
        v27 = _s15ExchangeRequestVMa;
        goto LABEL_11;
      }

      if (v22 == 6)
      {
        sub_100566E44(v21, v6, _s12ErrorRequestVMa);
        v24 = type metadata accessor for SFAirDrop.TransferIdentifier();
        v25 = *(v24 - 8);
        (*(v25 + 16))(a1, v6, v24);
        v26 = v6;
        v27 = _s12ErrorRequestVMa;
LABEL_11:
        sub_100566CCC(v26, v27);
        return (*(v25 + 56))(a1, 0, 1, v24);
      }

LABEL_13:
      if (qword_100973A58 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_10000C4AC(v33, qword_1009835E0);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Unexpected request type for transferID", v36, 2u);
      }

      v37 = type metadata accessor for SFAirDrop.TransferIdentifier();
      (*(*(v37 - 8) + 56))(a1, 1, 1, v37);
      v29 = type metadata accessor for SDAirDropMessage;
      v28 = v21;
      return sub_100566CCC(v28, v29);
    }

    sub_100566E44(v21, v12, _s13UploadRequestVMa);
    sub_100566D2C(v12, a1);
    v28 = v12;
    v29 = _s13UploadRequestVMa;
  }

  return sub_100566CCC(v28, v29);
}

uint64_t sub_100566CCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100566D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100977BE0, &unk_1007FAE40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100566D9C()
{
  result = qword_100983778;
  if (!qword_100983778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983778);
  }

  return result;
}

unint64_t sub_100566DF0()
{
  result = qword_100983780;
  if (!qword_100983780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983780);
  }

  return result;
}

uint64_t sub_100566E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100566EAC()
{
  result = qword_100983788;
  if (!qword_100983788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983788);
  }

  return result;
}

unint64_t sub_100566F00()
{
  result = qword_100983798;
  if (!qword_100983798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983798);
  }

  return result;
}

unint64_t sub_100566F54()
{
  result = qword_1009837A0;
  if (!qword_1009837A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009837A0);
  }

  return result;
}

unint64_t sub_100566FA8()
{
  result = qword_1009837A8;
  if (!qword_1009837A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009837A8);
  }

  return result;
}

unint64_t sub_100566FFC()
{
  result = qword_1009837B0;
  if (!qword_1009837B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009837B0);
  }

  return result;
}

unint64_t sub_100567050()
{
  result = qword_1009837C0;
  if (!qword_1009837C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009837C0);
  }

  return result;
}

unint64_t sub_1005670A4()
{
  result = qword_1009837D0;
  if (!qword_1009837D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009837D0);
  }

  return result;
}

unint64_t sub_1005670F8()
{
  result = qword_1009837D8;
  if (!qword_1009837D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009837D8);
  }

  return result;
}

unint64_t sub_10056714C()
{
  result = qword_1009837E8;
  if (!qword_1009837E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009837E8);
  }

  return result;
}

unint64_t sub_1005671A0()
{
  result = qword_1009837F0;
  if (!qword_1009837F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009837F0);
  }

  return result;
}

unint64_t sub_1005671F4()
{
  result = qword_1009837F8;
  if (!qword_1009837F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009837F8);
  }

  return result;
}

unint64_t sub_100567248()
{
  result = qword_100983808;
  if (!qword_100983808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983808);
  }

  return result;
}

unint64_t sub_10056729C()
{
  result = qword_100983810;
  if (!qword_100983810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983810);
  }

  return result;
}

unint64_t sub_1005672F0()
{
  result = qword_100983818;
  if (!qword_100983818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983818);
  }

  return result;
}

unint64_t sub_100567344()
{
  result = qword_100983820;
  if (!qword_100983820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983820);
  }

  return result;
}

unint64_t sub_100567398()
{
  result = qword_100983828;
  if (!qword_100983828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983828);
  }

  return result;
}

unint64_t sub_1005673EC()
{
  result = qword_100983830;
  if (!qword_100983830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983830);
  }

  return result;
}

unint64_t sub_100567440()
{
  result = qword_100983838;
  if (!qword_100983838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983838);
  }

  return result;
}

unint64_t sub_100567494()
{
  result = qword_1009838C8;
  if (!qword_1009838C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009838C8);
  }

  return result;
}

unint64_t sub_1005674E8()
{
  result = qword_1009838E8;
  if (!qword_1009838E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009838E8);
  }

  return result;
}

unint64_t sub_10056753C()
{
  result = qword_1009838F8;
  if (!qword_1009838F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009838F8);
  }

  return result;
}

unint64_t sub_100567590()
{
  result = qword_100983900;
  if (!qword_100983900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983900);
  }

  return result;
}

unint64_t sub_1005675E4()
{
  result = qword_100983908;
  if (!qword_100983908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983908);
  }

  return result;
}

uint64_t sub_100567638(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for SDAirDropMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SDAirDropMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1005678B4()
{
  result = qword_100983918;
  if (!qword_100983918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983918);
  }

  return result;
}

unint64_t sub_10056790C()
{
  result = qword_100983920;
  if (!qword_100983920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983920);
  }

  return result;
}

unint64_t sub_100567964()
{
  result = qword_100983928;
  if (!qword_100983928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983928);
  }

  return result;
}

unint64_t sub_1005679BC()
{
  result = qword_100983930;
  if (!qword_100983930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983930);
  }

  return result;
}

unint64_t sub_100567A14()
{
  result = qword_100983938;
  if (!qword_100983938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983938);
  }

  return result;
}

unint64_t sub_100567A6C()
{
  result = qword_100983940;
  if (!qword_100983940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983940);
  }

  return result;
}

unint64_t sub_100567AC4()
{
  result = qword_100983948;
  if (!qword_100983948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983948);
  }

  return result;
}

unint64_t sub_100567B1C()
{
  result = qword_100983950;
  if (!qword_100983950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983950);
  }

  return result;
}

unint64_t sub_100567B74()
{
  result = qword_100983958;
  if (!qword_100983958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983958);
  }

  return result;
}

unint64_t sub_100567BCC()
{
  result = qword_100983960;
  if (!qword_100983960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983960);
  }

  return result;
}

unint64_t sub_100567C24()
{
  result = qword_100983968;
  if (!qword_100983968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983968);
  }

  return result;
}

unint64_t sub_100567C7C()
{
  result = qword_100983970;
  if (!qword_100983970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983970);
  }

  return result;
}

unint64_t sub_100567CD4()
{
  result = qword_100983978;
  if (!qword_100983978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983978);
  }

  return result;
}

unint64_t sub_100567D2C()
{
  result = qword_100983980;
  if (!qword_100983980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983980);
  }

  return result;
}

unint64_t sub_100567D84()
{
  result = qword_100983988;
  if (!qword_100983988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983988);
  }

  return result;
}

unint64_t sub_100567DDC()
{
  result = qword_100983990;
  if (!qword_100983990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983990);
  }

  return result;
}

unint64_t sub_100567E34()
{
  result = qword_100983998;
  if (!qword_100983998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983998);
  }

  return result;
}

unint64_t sub_100567E8C()
{
  result = qword_1009839A0;
  if (!qword_1009839A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839A0);
  }

  return result;
}

unint64_t sub_100567EE4()
{
  result = qword_1009839A8;
  if (!qword_1009839A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839A8);
  }

  return result;
}

unint64_t sub_100567F3C()
{
  result = qword_1009839B0;
  if (!qword_1009839B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839B0);
  }

  return result;
}

unint64_t sub_100567F94()
{
  result = qword_1009839B8;
  if (!qword_1009839B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839B8);
  }

  return result;
}

unint64_t sub_100567FEC()
{
  result = qword_1009839C0;
  if (!qword_1009839C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839C0);
  }

  return result;
}

unint64_t sub_100568044()
{
  result = qword_1009839C8;
  if (!qword_1009839C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839C8);
  }

  return result;
}

unint64_t sub_10056809C()
{
  result = qword_1009839D0;
  if (!qword_1009839D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839D0);
  }

  return result;
}

unint64_t sub_1005680F4()
{
  result = qword_1009839D8;
  if (!qword_1009839D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839D8);
  }

  return result;
}

unint64_t sub_10056814C()
{
  result = qword_1009839E0;
  if (!qword_1009839E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839E0);
  }

  return result;
}

unint64_t sub_1005681A4()
{
  result = qword_1009839E8;
  if (!qword_1009839E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839E8);
  }

  return result;
}

unint64_t sub_1005681FC()
{
  result = qword_1009839F0;
  if (!qword_1009839F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839F0);
  }

  return result;
}

unint64_t sub_100568254()
{
  result = qword_1009839F8;
  if (!qword_1009839F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839F8);
  }

  return result;
}

unint64_t sub_1005682AC()
{
  result = qword_100983A00;
  if (!qword_100983A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A00);
  }

  return result;
}

unint64_t sub_100568304()
{
  result = qword_100983A08;
  if (!qword_100983A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A08);
  }

  return result;
}

unint64_t sub_10056835C()
{
  result = qword_100983A10;
  if (!qword_100983A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A10);
  }

  return result;
}

unint64_t sub_1005683B4()
{
  result = qword_100983A18;
  if (!qword_100983A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A18);
  }

  return result;
}

unint64_t sub_10056840C()
{
  result = qword_100983A20;
  if (!qword_100983A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A20);
  }

  return result;
}

unint64_t sub_100568464()
{
  result = qword_100983A28;
  if (!qword_100983A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A28);
  }

  return result;
}

unint64_t sub_1005684BC()
{
  result = qword_100983A30;
  if (!qword_100983A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A30);
  }

  return result;
}

unint64_t sub_100568514()
{
  result = qword_100983A38;
  if (!qword_100983A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A38);
  }

  return result;
}

unint64_t sub_10056856C()
{
  result = qword_100983A40;
  if (!qword_100983A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A40);
  }

  return result;
}

unint64_t sub_1005685C4()
{
  result = qword_100983A48;
  if (!qword_100983A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A48);
  }

  return result;
}

unint64_t sub_10056861C()
{
  result = qword_100983A50;
  if (!qword_100983A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A50);
  }

  return result;
}

unint64_t sub_100568674()
{
  result = qword_100983A58;
  if (!qword_100983A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A58);
  }

  return result;
}

unint64_t sub_1005686CC()
{
  result = qword_100983A60;
  if (!qword_100983A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A60);
  }

  return result;
}

unint64_t sub_100568724()
{
  result = qword_100983A68;
  if (!qword_100983A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A68);
  }

  return result;
}

unint64_t sub_10056877C()
{
  result = qword_100983A70;
  if (!qword_100983A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A70);
  }

  return result;
}

unint64_t sub_1005687D4()
{
  result = qword_100983A78;
  if (!qword_100983A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A78);
  }

  return result;
}

uint64_t sub_100568828(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7165526F6C6C6568 && a2 == 0xEC00000074736575;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365526F6C6C6568 && a2 == 0xED000065736E6F70 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265766F63736964 && a2 == 0xEF74736575716552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001007958F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65757165526B7361 && a2 == 0xEA00000000007473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F707365526B7361 && a2 == 0xEB0000000065736ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x655264616F6C7075 && a2 == 0xED00007473657571 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x655264616F6C7075 && a2 == 0xEE0065736E6F7073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xEF74736575716552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100795910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100795930 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000100795950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x716552726F727265 && a2 == 0xEC00000074736575 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x736552726F727265 && a2 == 0xED000065736E6F70)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

char *sub_100568CF0@<X0>(int a1@<W0>, unint64_t a2@<X1>, char *a3@<X3>, unint64_t a4@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  v4 = a2;
  if (!a2)
  {
    return _swiftEmptyArrayStorage;
  }

  LODWORD(v5) = a1;
  a3 = sub_10028E4A4(0, 1, 1, _swiftEmptyArrayStorage);
  v7 = *(a3 + 2);
  a4 = *(a3 + 3);
  v6 = v7 + 1;
  if (v7 >= a4 >> 1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    *(a3 + 2) = v6;
    a3[v7 + 32] = v5;
    if (v4 == 1)
    {
      break;
    }

    v8 = *(a3 + 3);
    if (v6 >= v8 >> 1)
    {
      a3 = sub_10028E4A4((v8 > 1), v7 + 2, 1, a3);
    }

    a4 = v5 >> 8;
    *(a3 + 2) = v7 + 2;
    a3[v6 + 32] = BYTE1(v5);
    v5 = v4 - 2;
    if (v4 == 2)
    {
      break;
    }

    v6 = v7 + 34;
    for (i = 0xFFFFFFFFFFFFFFELL; i; --i)
    {
      a4 = *(a3 + 3);
      v4 = v6 - 31;
      if (v6 - 32 >= a4 >> 1)
      {
        a3 = sub_10028E4A4((a4 > 1), v6 - 31, 1, a3);
      }

      *(a3 + 2) = v4;
      a3[v6++] = 0;
      if (!--v5)
      {
        return a3;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    a3 = sub_10028E4A4((a4 > 1), v6, 1, a3);
  }

  return a3;
}

uint64_t sub_100568E38(uint64_t result, uint64_t a2)
{
  v22 = *(result + 16);
  if (!v22)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a2;
  v3 = 0;
  v20 = result + 32;
  v4 = _swiftEmptyArrayStorage;
  while ((v2 & 0x8000000000000000) == 0)
  {
    if (v2)
    {
      v5 = *(v20 + 8 * v3);
      result = sub_10028E4A4(0, 1, 1, _swiftEmptyArrayStorage);
      v6 = result;
      v7 = 0;
      v8 = 0x1000000000000000;
      while (v8)
      {
        if (v7 >= 0x40)
        {
          v9 = 0;
        }

        else
        {
          v9 = v5 >> v7;
        }

        v11 = *(v6 + 2);
        v10 = *(v6 + 3);
        v12 = v11 + 1;
        if (v11 >= v10 >> 1)
        {
          result = sub_10028E4A4((v10 > 1), v11 + 1, 1, v6);
          v6 = result;
        }

        *(v6 + 2) = v12;
        v6[v11 + 32] = v9;
        --v8;
        v7 += 8;
        if (!--v2)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      break;
    }

    v12 = _swiftEmptyArrayStorage[2];
    v6 = _swiftEmptyArrayStorage;
LABEL_17:
    v13 = *(v4 + 2);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      goto LABEL_34;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v14 <= *(v4 + 3) >> 1)
    {
      if (*(v6 + 2))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v15 = v13 + v12;
      }

      else
      {
        v15 = v13;
      }

      result = sub_10028E4A4(result, v15, 1, v4);
      v4 = result;
      if (*(v6 + 2))
      {
LABEL_26:
        v16 = *(v4 + 2);
        if ((*(v4 + 3) >> 1) - v16 < v12)
        {
          goto LABEL_36;
        }

        memcpy(&v4[v16 + 32], v6 + 32, v12);

        if (v12)
        {
          v17 = *(v4 + 2);
          v18 = __OFADD__(v17, v12);
          v19 = v17 + v12;
          if (v18)
          {
            goto LABEL_37;
          }

          *(v4 + 2) = v19;
        }

        goto LABEL_4;
      }
    }

    if (v12)
    {
      goto LABEL_35;
    }

LABEL_4:
    ++v3;
    v2 = a2;
    if (v3 == v22)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_100569018(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10000D494(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10000D494(&qword_1009761E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100569230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100569328(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CodableError();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10000D494(&qword_10097F080, &type metadata accessor for CodableError, &protocol conformance descriptor for CodableError), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10000D494(&qword_10097F088, &type metadata accessor for CodableError, &protocol conformance descriptor for CodableError);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100569540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (Hasher.init(_seed:)(), sub_10032D3D4(v16), v8 = Hasher._finalize()(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v11 = ~v9;
    v12 = *(v5 + 72);
    do
    {
      sub_1005816A0(*(a2 + 48) + v12 * v10, v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v13 = sub_100331F88(v7, a1);
      sub_100294130(v7);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1005696B4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 11) | (32 * v9)));
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];

      sub_10046FBBC(&v15, v11, v12, v13, v14);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1005697DC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_10046DAAC(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1005698E0(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_10002CDC0(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1004E5318(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_10057E97C(v3, v4);
    }

    else
    {
      v6 = sub_10057E9F8(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10000C60C(v8);
  return v6;
}

uint64_t sub_10056999C(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100975010, &qword_1007F83B8);
  v3 = __chkstk_darwin(v2 - 8);
  v39 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v37 - v5;
  v7 = sub_10028088C(&qword_100983CB8, &unk_10080B050);
  __chkstk_darwin(v7);
  v9 = v37 - v8;
  v10 = sub_10028088C(&qword_100975018, &qword_1007F83C0);
  __chkstk_darwin(v10);
  v12 = v37 - v11;
  v40 = a1;
  *&v41 = a1;

  sub_10028088C(&qword_100983CC0, &qword_10080B060);
  sub_10028088C(&qword_100983CC8, &qword_10080B068);
  if (swift_dynamicCast())
  {
    sub_1000121F8(v42, v44);
    sub_10002CDC0(v44, v44[3]);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v42[0] = v41;
    sub_10000C60C(v44);
    goto LABEL_42;
  }

  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v13 = sub_100005508(v42, &qword_100983CD0, &unk_10080B070);
  v42[0] = xmmword_1007FAD30;
  __chkstk_darwin(v13);
  v37[-2] = &v40;
  sub_10057D3E8(sub_1005814F4, &v37[-4]);
  v14 = *&v9[*(v7 + 48)];
  sub_10058154C(v9, v12);
  v15 = *(&v42[0] + 1) >> 62;
  if ((*(&v42[0] + 1) >> 62) <= 1)
  {
    if (!v15)
    {
      if (v14 == BYTE14(v42[0]))
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (__OFSUB__(DWORD1(v42[0]), v42[0]))
    {
      goto LABEL_46;
    }

    if (v14 != DWORD1(v42[0]) - LODWORD(v42[0]))
    {
LABEL_13:
      if (v15 == 2)
      {
        v20 = *(*&v42[0] + 24);
      }

      else if (v15 == 1)
      {
        v20 = *&v42[0] >> 32;
      }

      else
      {
        v20 = BYTE14(v42[0]);
      }

      goto LABEL_40;
    }

LABEL_18:
    v37[0] = 0;
    v37[1] = a1;
    v21 = 0;
    memset(v44, 0, 15);
    v22 = *(v10 + 44);
LABEL_19:
    v38 = v21;
    while (1)
    {
      sub_10000FF90(&v12[v22], v6, &qword_100975010, &qword_1007F83B8);
      v24 = type metadata accessor for Data.Iterator();
      v25 = *(v24 - 8);
      v26 = *(v25 + 48);
      v27 = v26(v6, 1, v24);
      sub_100005508(v6, &qword_100975010, &qword_1007F83B8);
      if (v27 != 1)
      {
        if (v26(&v12[v22], 1, v24) == 1)
        {
          goto LABEL_48;
        }

        sub_10000D494(&unk_100975020, &type metadata accessor for Data.Iterator, &protocol conformance descriptor for Data.Iterator);
        dispatch thunk of IteratorProtocol.next()();
        if (BYTE1(v41) != 1)
        {
          v34 = v38;
          *(v44 + v38) = v41;
          v21 = (v34 + 1);
          if ((v21 >> 8))
          {
            goto LABEL_47;
          }

          if ((v34 + 1) == 14)
          {
            *&v41 = v44[0];
            *(&v41 + 6) = *(v44 + 6);
            Data._Representation.append(contentsOf:)();
            v21 = 0;
          }

          goto LABEL_19;
        }
      }

      v28 = *(v12 + 1);
      v29 = *(*v12 + 16);
      if (v28 == v29)
      {
        if (v38)
        {
          *&v41 = v44[0];
          *(&v41 + 6) = *(v44 + 6);
          Data._Representation.append(contentsOf:)();
        }

        sub_100005508(v12, &qword_100975018, &qword_1007F83C0);
        goto LABEL_42;
      }

      if (v28 >= v29)
      {
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
      }

      v30 = *v12 + 16 * v28;
      v31 = *(v30 + 32);
      v32 = *(v30 + 40);
      *(v12 + 1) = v28 + 1;
      v33 = v32 >> 62;
      if ((v32 >> 62) > 1)
      {
        if (v33 == 2)
        {
LABEL_20:
          sub_100294008(v31, v32);
        }
      }

      else if (v33)
      {
        goto LABEL_20;
      }

      v23 = v39;
      Data.Iterator.init(_:at:)();
      (*(v25 + 56))(v23, 0, 1, v24);
      sub_10029405C(v23, &v12[v22]);
    }
  }

  if (v15 == 2)
  {
    v17 = *(*&v42[0] + 16);
    v16 = *(*&v42[0] + 24);
    v18 = __OFSUB__(v16, v17);
    v19 = v16 - v17;
    if (v18)
    {
      goto LABEL_45;
    }

    if (v14 != v19)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!v14)
  {
    goto LABEL_18;
  }

  v20 = 0;
LABEL_40:
  if (v20 < v14)
  {
    goto LABEL_44;
  }

  Data._Representation.replaceSubrange(_:with:count:)();
  sub_100005508(v12, &qword_100975018, &qword_1007F83C0);
LABEL_42:
  v35 = v42[0];
  sub_100294008(*&v42[0], *(&v42[0] + 1));

  sub_100026AC0(v35, *(&v35 + 1));
  return v35;
}

id cdbDatabaseInfo()()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  result = sub_1001F149C();
  if (result)
  {
    v8 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:)();

    URL.appendingPathComponent(_:)();
    v9 = *(v1 + 8);
    v9(v6, v0);
    URL.appendingPathComponent(_:)();
    URL.appendingPathExtension(_:)();
    return (v9)(v4, v0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10056A1A8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100983A80);
  v1 = sub_10000C4AC(v0, qword_100983A80);
  if (qword_100973728 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A09C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10056A27C()
{
  result = sub_1002FB5DC(44, 0xE100000000000000);
  if ((result & 0x100) != 0)
  {
    __break(1u);
  }

  else
  {
    byte_1009A0C88 = result;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SDAirDropHashStoreCDB.load()()
{
  v2 = v0;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v6 = __chkstk_darwin(v5);
  v7 = __chkstk_darwin(v6);
  v8 = __chkstk_darwin(v7);
  v10 = &v42 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v42 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v42 - v15;
  __chkstk_darwin(v14);
  v21 = &v42 - v20;
  if (*(v2 + 48))
  {
    return;
  }

  v44 = v19;
  v45 = v18;
  v46 = v17;
  v47 = v1;
  v43 = v2;
  sub_10057FC30();
  v22 = sub_1001F149C();
  if (!v22)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v23 = v22;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:)();

  URL.appendingPathComponent(_:)();
  v24 = *(v4 + 8);
  v24(v13, v3);
  URL.appendingPathComponent(_:)();
  URL.appendingPathExtension(_:)();
  v24(v10, v3);
  v24(v16, v3);
  v25 = v47;
  sub_10056A834(v21);
  if (v25)
  {
    v24(v21, v3);
    return;
  }

  v47 = 0;
  v24(v21, v3);
  v26 = sub_1001F149C();
  if (!v26)
  {
    goto LABEL_17;
  }

  v27 = v26;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = v44;
  URL.init(fileURLWithPath:)();

  v29 = v45;
  URL.appendingPathComponent(_:)();
  v24(v28, v3);
  URL.appendingPathComponent(_:)();
  v30 = v46;
  URL.appendingPathExtension(_:)();
  v24(v10, v3);
  v24(v29, v3);
  URL.path.getter();
  v24(v30, v3);
  v31 = v47;
  sub_100580034();
  if (v31)
  {
  }

  else
  {
    v32 = *(v43 + 16);
    v33 = String._bridgeToObjectiveC()();

    v48 = 0;
    v34 = [v32 openAtPath:v33 error:&v48];

    if (v34)
    {
      v35 = qword_100973A60;
      v36 = v48;
      if (v35 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000C4AC(v37, qword_100983A80);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "CDB: store loaded", v40, 2u);
      }

      *(v43 + 48) = 1;
    }

    else
    {
      v41 = v48;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}