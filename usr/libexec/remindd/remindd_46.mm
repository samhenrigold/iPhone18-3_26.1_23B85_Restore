uint64_t sub_100448FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = type metadata accessor for Locale();
  v4 = *(v108 - 8);
  __chkstk_darwin(v108, v5);
  v7 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v104 - v15;
  v19 = __chkstk_darwin(v17, v18);
  v21 = &v104 - v20;
  if (!a1)
  {
    sub_100449828();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v43 = [ObjCClassFromMetadata daemonUserDefaults];
    v44 = [v43 automaticSecondaryGroceryLocales];

    if (v44)
    {
      v107 = v9;
      v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v45 + 16))
      {
        v53 = *(v45 + 40);
        v104 = *(v45 + 32);

        v45, v54, v55, v56, v57, v58, v59, v60;
        v61 = [ObjCClassFromMetadata daemonUserDefaults];
        v62 = [v61 automaticSecondaryGroceryLocalesLastModifiedDate];

        if (v62)
        {
          v105 = a2;
          v106 = v4;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          static Date.now.getter();
          Date.addingTimeInterval(_:)();
          v63 = static Date.< infix(_:_:)();
          v9 = v107;
          v64 = *(v107 + 8);
          v64(v12, v8);
          v64(v16, v8);
          if (v63)
          {
            v65 = v105;
            Locale.init(identifier:)();
            v64(v21, v8);
            return (*(v106 + 56))(v65, 0, 1, v108, v66);
          }

          v64(v21, v8);
          v53, v68, v69, v70, v71, v72, v73, v74;
          a2 = v105;
          v4 = v106;
          goto LABEL_19;
        }

        v67 = v53;
      }

      else
      {
        v67 = v45;
      }

      v67, v46, v47, v48, v49, v50, v51, v52;
      v9 = v107;
    }

LABEL_19:
    v75 = [objc_opt_self() sharedConfiguration];
    v76 = sub_10044ADA4(v75);

    if (*v76->clientIdentity)
    {
      v84 = *&v76->clientIdentity[24];
      v107 = *&v76->clientIdentity[16];

      v76, v85, v86, v87, v88, v89, v90, v91;
      v92 = [ObjCClassFromMetadata daemonUserDefaults];
      static Date.now.getter();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v9 + 8))(v16, v8);
      [v92 setAutomaticSecondaryGroceryLocalesLastModifiedDate:isa];

      v94 = [ObjCClassFromMetadata daemonUserDefaults];
      sub_1000F5104(&unk_100936FD0, &unk_100795D40);
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_100791300;
      *(v95 + 32) = v107;
      *(v95 + 40) = v84;

      v96 = Array._bridgeToObjectiveC()().super.isa;
      v95, v97, v98, v99, v100, v101, v102, v103;
      [v94 setAutomaticSecondaryGroceryLocales:v96];

      Locale.init(identifier:)();
      return (*(v4 + 56))(a2, 0, 1, v108);
    }

    else
    {
      v76, v77, v78, v79, v80, v81, v82, v83;
      return (*(v4 + 56))(a2, 1, 1, v108);
    }
  }

  v105 = a2;
  v106 = v4;
  v22 = *(a1 + 16);
  v23 = v108;
  if (!v22)
  {
    return (*(v106 + 56))(v105, 1, 1, v23, v19);
  }

  v107 = type metadata accessor for REMGroceryDummyModel();
  v24 = *(v106 + 16);
  v25 = a1 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
  v26 = (v106 + 8);
  v27 = *(v106 + 72);
  v24(v7, v25, v23);
  while (1)
  {
    Locale.identifier.getter();
    v29 = v28;
    v30 = static REMGroceryDummyModel.isSupported(localeIdentifier:)();
    v29, v31, v32, v33, v34, v35, v36, v37;
    if (v30)
    {
      break;
    }

    v23 = v108;
    (*v26)(v7, v108);
    v25 += v27;
    if (!--v22)
    {
      return (*(v106 + 56))(v105, 1, 1, v23, v19);
    }

    v24(v7, v25, v23);
  }

  v39 = v105;
  v38 = v106;
  v40 = v108;
  (*(v106 + 32))(v105, v7, v108);
  return (*(v38 + 56))(v39, 0, 1, v40);
}

uint64_t sub_1004495D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return sub_1003AD2A0(v2, v3);
    }

    return 0;
  }

  return !v3;
}

uint64_t sub_100449600()
{
  v1 = OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_lastModifiedDate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  *(v0 + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_secondaryGroceryLocales), v3, v4, v5, v6, v7, v8, v9;

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDSecondaryGroceryLocalesInfo(uint64_t a1)
{
  result = qword_100947670;
  if (!qword_100947670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100449700(uint64_t a1)
{
  result = type metadata accessor for Date();
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

uint64_t sub_1004497A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v2 + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_secondaryGroceryLocales);
  v5 = *(v3 + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_secondaryGroceryLocales);
  if (!v4)
  {
    return !v5;
  }

  if (!v5)
  {
    return 0;
  }

  return sub_1003AD2A0(v4, v5);
}

unint64_t sub_100449828()
{
  result = qword_100936EB8;
  if (!qword_100936EB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100936EB8);
  }

  return result;
}

void sub_100449874(_TtC7remindd19RDXPCStorePerformer **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100436414(v2);
  }

  v3 = *v2->clientIdentity;
  v4[0] = &v2->clientIdentity[16];
  v4[1] = v3;
  sub_1004498E0(v4);
  *a1 = v2;
}

void sub_1004498E0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v8 = v3;
      if (v2 <= 1)
      {
        v9 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000F5104(&qword_10093EC68, &qword_10079D3A0);
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *v9->clientIdentity = v2 / 2;
      }

      *&v18[0] = &v9->clientIdentity[16];
      *&v18[1] = v2 / 2;
      v10 = v9;
      sub_100449AE4(v18, v19, a1, v8, v4, v5, v6, v7);
      *v10->clientIdentity = 0;
      v10, v11, v12, v13, v14, v15, v16, v17;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1004499E8(0, v2, 1, a1);
  }
}

uint64_t sub_1004499E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    v10 = *v9;
    v11 = *(v9 + 1);
    v12 = v9[2];
    v13 = v8;
    v14 = v7;
    while (1)
    {
      v15 = *(v14 + 16);
      if (v15 >= v12)
      {
        if (v12 != v15 || ((result = *v14, *v14 == *&v10) ? (v16 = *(v14 + 8) == v11) : (v16 = 0), v16 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0)))
        {
LABEL_4:
          ++v4;
          v7 += 24;
          --v8;
          if (v4 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      if (!v6)
      {
        break;
      }

      v10 = *(v14 + 24);
      v11 = *(v14 + 32);
      v12 = *(v14 + 40);
      v17 = *(v14 + 16);
      *(v14 + 24) = *v14;
      *(v14 + 40) = v17;
      *v14 = v10;
      *(v14 + 8) = v11;
      *(v14 + 16) = v12;
      v14 -= 24;
      if (__CFADD__(v13++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100449AE4(double *a1, const char *a2, uint64_t *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v106 = a3;
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = &_swiftEmptyArrayStorage;
LABEL_113:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_151;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_115;
  }

  v104 = a4;
  v11 = 0;
  v12 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v13 = v11++;
    if (v11 < v10)
    {
      v14 = *v9;
      v15 = *v9 + 24 * v11;
      v16 = *(v15 + 16);
      v17 = *v9 + 24 * v13;
      v18 = *(v17 + 16);
      if (v18 >= v16)
      {
        if (v16 != v18 || ((a3 = *v15, a4 = *(v15 + 8), a2 = *(v17 + 8), *v17 == *v15) ? (v20 = a2 == a4) : (v20 = 0), v20))
        {
          v19 = 0;
        }

        else
        {
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      else
      {
        v19 = 1;
      }

      v11 = v13 + 2;
      if (v13 + 2 < v10)
      {
        v21 = v14 + 24 * v13 + 32;
        do
        {
          v22 = *(v21 + 32);
          v23 = *(v21 + 8);
          if (v23 < v22)
          {
            if ((v19 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          else if (v22 != v23 || ((a3 = *(v21 + 16), a4 = *(v21 + 24), a2 = *v21, *(v21 - 8) == a3) ? (v24 = a2 == a4) : (v24 = 0), v24))
          {
            if (v19)
            {
              goto LABEL_30;
            }
          }

          else if ((v19 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            goto LABEL_29;
          }

          ++v11;
          v21 += 24;
        }

        while (v10 != v11);
        v11 = v10;
      }

LABEL_29:
      if (v19)
      {
LABEL_30:
        if (v11 < v13)
        {
          goto LABEL_144;
        }

        if (v13 < v11)
        {
          v25 = 24 * v11 - 8;
          v26 = 24 * v13;
          v27 = v11;
          v28 = v13;
          do
          {
            if (v28 != --v27)
            {
              v35 = *v9;
              if (!*v9)
              {
                goto LABEL_148;
              }

              v29 = (v35 + v26);
              v30 = (v35 + v25);
              v31 = *v29;
              v32 = v29[1];
              v33 = v29[2];
              v34 = *v30;
              *v29 = *(v30 - 1);
              v29[2] = v34;
              *(v30 - 2) = v31;
              *(v30 - 1) = v32;
              *v30 = v33;
            }

            ++v28;
            v25 -= 24;
            v26 += 24;
          }

          while (v28 < v27);
        }
      }
    }

LABEL_38:
    v36 = v9[1];
    if (v11 < v36)
    {
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_141;
      }

      if (v11 - v13 < v104)
      {
        if (__OFADD__(v13, v104))
        {
          goto LABEL_142;
        }

        if (&v104[v13] >= v36)
        {
          v37 = v9[1];
        }

        else
        {
          v37 = &v104[v13];
        }

        if (v37 < v13)
        {
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          v12 = sub_1004361F4(v12, a2, a3, a4, a5, a6, a7, a8);
LABEL_115:
          clientIdentity = v12->clientIdentity;
          v97 = *v12->clientIdentity;
          if (v97 >= 2)
          {
            do
            {
              v98 = *v9;
              if (!*v9)
              {
                goto LABEL_149;
              }

              v99 = v12 + 16 * v97;
              v9 = *v99;
              v100 = &clientIdentity[2 * v97];
              v101 = v100[1];
              sub_10044A138((v98 + 24 * *v99), (v98 + 24 * *v100), v98 + 24 * v101, a1);
              if (v8)
              {
                break;
              }

              if (v101 < v9)
              {
                goto LABEL_137;
              }

              if (v97 - 2 >= *clientIdentity)
              {
                goto LABEL_138;
              }

              *v99 = v9;
              *(v99 + 1) = v101;
              v102 = *clientIdentity - v97;
              if (*clientIdentity < v97)
              {
                goto LABEL_139;
              }

              v97 = *clientIdentity - 1;
              memmove(v100, v100 + 2, 16 * v102);
              *clientIdentity = v97;
              v9 = v106;
            }

            while (v97 > 1);
          }

LABEL_122:
          v12, a2, a3, a4, a5, a6, a7, a8;
          return;
        }

        if (v11 != v37)
        {
          break;
        }
      }
    }

LABEL_62:
    if (v11 < v13)
    {
      goto LABEL_140;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1003658B8(0, *v12->clientIdentity + 1, 1, v12, a5, a6, a7, a8);
    }

    v50 = *v12->clientIdentity;
    v49 = *&v12->clientIdentity[8];
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      v12 = sub_1003658B8((v49 > 1), v50 + 1, 1, v12, a5, a6, a7, a8);
    }

    *v12->clientIdentity = v51;
    v52 = v12 + 16 * v50;
    *(v52 + 4) = v13;
    *(v52 + 5) = v11;
    v53 = *a1;
    if (!*a1)
    {
      goto LABEL_150;
    }

    if (v50)
    {
      while (1)
      {
        v54 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v55 = *&v12->clientIdentity[16];
          v56 = *&v12->clientIdentity[24];
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_82:
          if (v58)
          {
            goto LABEL_128;
          }

          v71 = &v12->super.isa + 2 * v51;
          v73 = *v71;
          v72 = v71[1];
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_131;
          }

          v77 = &v12->clientIdentity[16 * v54 + 16];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_135;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v51 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        v81 = &v12->super.isa + 2 * v51;
        v83 = *v81;
        v82 = v81[1];
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_96:
        if (v76)
        {
          goto LABEL_130;
        }

        v84 = v12 + 16 * v54;
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_133;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_103:
        v92 = v54 - 1;
        if (v54 - 1 >= v51)
        {
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*v9)
        {
          goto LABEL_147;
        }

        v93 = *&v12->clientIdentity[16 * v92 + 16];
        v94 = *&v12->clientIdentity[16 * v54 + 24];
        sub_10044A138((*v9 + 24 * v93), (*v9 + 24 * *&v12->clientIdentity[16 * v54 + 16]), *v9 + 24 * v94, v53);
        if (v8)
        {
          goto LABEL_122;
        }

        if (v94 < v93)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1004361F4(v12, a2, a3, a4, a5, a6, a7, a8);
        }

        if (v92 >= *v12->clientIdentity)
        {
          goto LABEL_125;
        }

        v95 = v12 + 16 * v92;
        *(v95 + 4) = v93;
        *(v95 + 5) = v94;
        sub_100436168(v54);
        v51 = *v12->clientIdentity;
        if (v51 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = &v12->clientIdentity[16 * v51 + 16];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_126;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_127;
      }

      v66 = &v12->super.isa + 2 * v51;
      v68 = *v66;
      v67 = v66[1];
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_129;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_132;
      }

      if (v70 >= v62)
      {
        v88 = &v12->clientIdentity[16 * v54 + 16];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_136;
        }

        if (v57 < v91)
        {
          v54 = v51 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_82;
    }

LABEL_3:
    v10 = v9[1];
    if (v11 >= v10)
    {
      goto LABEL_113;
    }
  }

  v38 = *v9;
  v39 = *v9 + 24 * v11 - 24;
  v103 = v13;
  v40 = v13 - v11;
LABEL_49:
  v41 = v38 + 24 * v11;
  a3 = *v41;
  a4 = *(v41 + 8);
  v42 = *(v41 + 16);
  v43 = v40;
  v44 = v39;
  while (1)
  {
    v45 = *(v44 + 16);
    if (v45 >= v42)
    {
      if (v42 != v45 || ((a2 = *(v44 + 8), *v44 == a3) ? (v46 = a2 == a4) : (v46 = 0), v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
      {
LABEL_48:
        ++v11;
        v39 += 24;
        --v40;
        if (v11 != v37)
        {
          goto LABEL_49;
        }

        v11 = v37;
        v9 = v106;
        v13 = v103;
        goto LABEL_62;
      }
    }

    if (!v38)
    {
      break;
    }

    a3 = *(v44 + 24);
    a4 = *(v44 + 32);
    v42 = *(v44 + 40);
    v47 = *(v44 + 16);
    *(v44 + 24) = *v44;
    *(v44 + 40) = v47;
    *v44 = a3;
    *(v44 + 8) = a4;
    *(v44 + 16) = v42;
    v44 -= 24;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

uint64_t sub_10044A138(double *__src, double *__dst, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[3 * v11] <= a4)
    {
      memmove(a4, __dst, 24 * v11);
      v5 = a3;
    }

    v13 = &v4[3 * v11];
    if (v10 < 24 || v6 <= v7)
    {
      v32 = v6;
    }

    else
    {
      v37 = v4;
LABEL_28:
      v22 = 0;
      v23 = v13;
      v36 = v6 - 3;
      do
      {
        v13 = &v23[v22];
        v24 = (v5 + v22 * 8);
        v25 = v5 + v22 * 8 - 24;
        v26 = v23[v22 - 1];
        v27 = *(v6 - 1);
        if (v27 < v26 || v26 == v27 && (*(v6 - 3) == *(v13 - 3) ? (v28 = *(v6 - 2) == *(v13 - 2)) : (v28 = 0), !v28 && (v29 = v5, v30 = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 = v29, v4 = v37, (v30 & 1) != 0)))
        {
          v32 = v6 - 3;
          if (v24 != v6)
          {
            v33 = *v36;
            *(v25 + 16) = *(v6 - 1);
            *v25 = v33;
          }

          if (v13 <= v4 || (v5 = v25, v6 -= 3, v36 <= v7))
          {
            v13 = &v23[v22];
            goto LABEL_47;
          }

          goto LABEL_28;
        }

        if (v24 != v13)
        {
          v31 = *(v13 - 3);
          *(v25 + 16) = *(v13 - 1);
          *v25 = v31;
        }

        v22 -= 3;
        v13 = &v23[v22];
      }

      while (&v23[v22] > v4);
      v32 = v6;
    }
  }

  else
  {
    if (a4 != __src || &__src[3 * v9] <= a4)
    {
      memmove(a4, __src, 24 * v9);
      v5 = a3;
    }

    v13 = &v4[3 * v9];
    if (v8 >= 24 && v6 < v5)
    {
      while (1)
      {
        v14 = v6[2];
        v15 = v4[2];
        if (v15 < v14)
        {
          break;
        }

        if (v14 == v15)
        {
          v18 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
          if (!v18)
          {
            v19 = v5;
            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v5 = v19;
            if (v20)
            {
              break;
            }
          }
        }

        v16 = v4;
        v18 = v7 == v4;
        v4 += 3;
        if (!v18)
        {
          goto LABEL_9;
        }

LABEL_10:
        v7 += 3;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_44;
        }
      }

      v16 = v6;
      v18 = v7 == v6;
      v6 += 3;
      if (v18)
      {
        goto LABEL_10;
      }

LABEL_9:
      v17 = *v16;
      v7[2] = v16[2];
      *v7 = v17;
      goto LABEL_10;
    }

LABEL_44:
    v32 = v7;
  }

LABEL_47:
  v34 = (v13 - v4) / 24;
  if (v32 != v4 || v32 >= &v4[3 * v34])
  {
    memmove(v32, v4, 24 * v34);
  }

  return 1;
}

_TtC7remindd19RDXPCStorePerformer *sub_10044A428(void *a1)
{
  v2 = type metadata accessor for EntityPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v233 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v233 - v9;
  __chkstk_darwin(v11, v12);
  v14 = &v233 - v13;
  __chkstk_darwin(v15, v16);
  v18 = &v233 - v17;
  v19 = sub_10038DA10(&_swiftEmptyArrayStorage);
  v239 = sub_100125BC0();
  v240 = v14;
  v20 = [a1 miniumumAutomaticLanguageConfidenceScoreAllowed];
  [v20 doubleValue];
  v22 = v21;

  v30 = *v239->clientIdentity;
  if (v30)
  {
    v237 = v10;
    v235 = v6;
    v244 = v2;
    v238 = 0;
    v236 = v19;
    v31 = 0;
    v32 = &v239->clientIdentity[16];
    v33 = (v3 + 8);
    v241 = 0x80000001007F8AB0;
    v242 = 0;
    v34 = 0xE000000000000000;
    v35 = 0.0;
    v245 = 0xE000000000000000;
    v36 = v240;
    while (1)
    {
      v243 = v31;
      sub_10000A87C(v32, v248);
      sub_10000F61C(v248, v249);
      dispatch thunk of ExtendedTripleProtocol.predicate.getter();
      v60 = EntityPredicate.rawValue.getter();
      v62 = v61;
      v63 = *v33;
      (*v33)(v18, v244);
      if (v60 == 859001680 && v62 == 0xE400000000000000)
      {
        break;
      }

      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v62, v72, v73, v74, v75, v76, v77, v78;
      if (v71)
      {
        v34, v79, v80, v81, v82, v83, v84, v85;
        v51 = v245;
        goto LABEL_4;
      }

      sub_10000F61C(v248, v249);
      dispatch thunk of ExtendedTripleProtocol.predicate.getter();
      v86 = EntityPredicate.rawValue.getter();
      v88 = v87;
      v63(v36, v244);
      if (v86 == 0xD000000000000013 && v241 == v88)
      {
        v34, v89, v90, v91, v92, v93, v94, v95;
LABEL_15:
        v88, v96, v97, v98, v99, v100, v101, v102;
        sub_10000F61C(v248, v249);
        v31 = dispatch thunk of ExtendedTripleProtocol.object.getter();
        v34 = v111;
        goto LABEL_5;
      }

      v103 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v88, v104, v105, v106, v107, v108, v109, v110;
      if (v103)
      {
        v88 = v34;
        goto LABEL_15;
      }

      sub_10000F61C(v248, v249);
      v112 = v237;
      dispatch thunk of ExtendedTripleProtocol.predicate.getter();
      v113 = EntityPredicate.rawValue.getter();
      v115 = v114;
      v63(v112, v244);
      if (v113 == 0x69666E6F635F6D6ELL && v115 == 0xED000065636E6564)
      {
        0xED000065636E6564, v116, v117, v118, v119, v120, v121, v122;
LABEL_20:
        sub_10000F61C(v248, v249);
        v131 = dispatch thunk of ExtendedTripleProtocol.object.getter();
        v133 = v132;
        v246 = 0.0;
        v134 = v238;
        v135 = sub_100448EF4(v131, v132, &v246);
        v238 = v134;
        v133, v136, v137, v138, v139, v140, v141, v142;
        v36 = v240;
        if (v135)
        {
          v35 = v246;
        }

        else
        {
          v35 = 0.0;
        }

        v31 = v243;
        goto LABEL_5;
      }

      v123 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v115, v124, v125, v126, v127, v128, v129, v130;
      if (v123)
      {
        goto LABEL_20;
      }

      sub_10000F61C(v248, v249);
      v143 = v235;
      dispatch thunk of ExtendedTripleProtocol.predicate.getter();
      v144 = EntityPredicate.rawValue.getter();
      v146 = v145;
      v63(v143, v244);
      v36 = v240;
      if (v144 == 0x6372756F735F6D6ELL && v146 == 0xED00006570795465)
      {
        0xED00006570795465, v147, v148, v149, v150, v151, v152, v153;
      }

      else
      {
        v154 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v146, v155, v156, v157, v158, v159, v160, v161;
        if ((v154 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      sub_10000F61C(v248, v249);
      v162 = dispatch thunk of ExtendedTripleProtocol.object.getter();
      v164 = v163;
      v165 = sub_1001250C0(v162, v163);
      v164, v166, v167, v168, v169, v170, v171, v172;
      if ((v165 & 1) == 0)
      {
LABEL_34:
        v31 = v243;
        goto LABEL_5;
      }

      v173 = HIBYTE(v34) & 0xF;
      v31 = v243;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v173 = v243 & 0xFFFFFFFFFFFFLL;
      }

      if (v173)
      {
        v246 = *&v242;
        v247 = v245;

        v174._countAndFlagsBits = 95;
        v174._object = 0xE100000000000000;
        String.append(_:)(v174);
        v175._countAndFlagsBits = v31;
        v175._object = v34;
        String.append(_:)(v175);
        v184 = *&v246;
        v183 = v247;
        if (v22 <= v35)
        {
          goto LABEL_36;
        }
      }

      else
      {

        v184 = v242;
        if (v22 <= v35)
        {
LABEL_36:
          v185 = v236;
          v186 = v183;
          v234 = v184;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v246 = *&v185;
          sub_1002C6EC8(v234, v186, isUniquelyReferenced_nonNull_native, v35);
          v186, v188, v189, v190, v191, v192, v193, v194;
          v236 = *&v246;
          goto LABEL_5;
        }
      }

      v183, v176, v177, v178, v179, v180, v181, v182;
LABEL_5:
      sub_10000607C(v248);
      v32 += 40;
      if (!--v30)
      {
        v34, v53, v54, v55, v56, v57, v58, v59;
        v245, v195, v196, v197, v198, v199, v200, v201;
        v239, v202, v203, v204, v205, v206, v207, v208;
        v19 = v236;
        goto LABEL_39;
      }
    }

    v34, v64, v65, v66, v67, v68, v69, v70;
    v245, v37, v38, v39, v40, v41, v42, v43;
    v51 = 0xE400000000000000;
LABEL_4:
    v51, v44, v45, v46, v47, v48, v49, v50;
    sub_10000F61C(v248, v249);
    v242 = dispatch thunk of ExtendedTripleProtocol.object.getter();
    v245 = v52;
    v31 = 0;
    v34 = 0xE000000000000000;
    v35 = 0.0;
    goto LABEL_5;
  }

  v239, v23, v24, v25, v26, v27, v28, v29;
LABEL_39:
  if (qword_100935A68 != -1)
  {
    swift_once();
  }

  v209 = type metadata accessor for Logger();
  sub_100006654(v209, qword_1009387D8);

  v210 = Logger.logObject.getter();
  v211 = static os_log_type_t.debug.getter();
  v19, v212, v213, v214, v215, v216, v217, v218;
  if (os_log_type_enabled(v210, v211))
  {
    v219 = swift_slowAlloc();
    v220 = swift_slowAlloc();
    v248[0] = v220;
    *v219 = 136315138;
    v221 = Dictionary.description.getter();
    v223 = v222;
    v224 = sub_10000668C(v221, v222, v248);
    v223, v225, v226, v227, v228, v229, v230, v231;
    *(v219 + 4) = v224;
    _os_log_impl(&_mh_execute_header, v210, v211, "Automatic Languages: %s", v219, 0xCu);
    sub_10000607C(v220);
  }

  return v19;
}

_TtC7remindd19RDXPCStorePerformer *sub_10044ADA4(NSObject *a1)
{
  v215 = a1;
  v1 = type metadata accessor for REMGroceryModelError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v198 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContinuousClock.Instant();
  v7 = *&v6[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v6, v8);
  v10 = &v198 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v198 - v13;
  v206 = type metadata accessor for ContinuousClock();
  v205 = *(v206 - 8);
  __chkstk_darwin(v206, v15);
  v17 = &v198 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContinuousClock.init()();
  v208 = v14;
  v207 = v17;
  ContinuousClock.now.getter();
  sub_100124704();
  v19 = v18;
  v20 = type metadata accessor for REMGroceryDummyModel();
  v21 = static REMGroceryDummyModel.modelBaseLocale(for:)();
  v216 = v22;
  v212 = v2;
  v213 = v20;
  v209 = v5;
  v210 = v1;
  if (!v216)
  {
    v19, v22, v23, v24, v25, v26, v27, v28;
    goto LABEL_10;
  }

  v211 = v10;
  v199 = v7;
  v200 = v6;
  v51 = v21;
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = v51;
  *(inited + 40) = v216;

  v53 = sub_10038D894(inited);
  swift_setDeallocating();
  sub_100034610(inited + 32);
  v218 = v53;
  v54 = sub_10044A428(v215);
  v55 = v54;
  v30 = *v54->clientIdentity;
  if (v30)
  {
    v7 = sub_1003689E0(*v54->clientIdentity, 0);
    v215 = sub_100278C74(v217, &v7->clientIdentity[16], v30, v55);
    v56 = v217[0];
    v6 = v217[2];
    v214 = v217[4];

    sub_10001B860(v56);
    if (v215 != v30)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  v6 = v210;
  v217[0] = v7;
  sub_100449874(v217);
  v216, v65, v66, v67, v68, v69, v70, v71;
  v55, v72, v73, v74, v75, v76, v77, v78;
  v19, v79, v80, v81, v82, v83, v84, v85;
  v86 = v217[0];
  v19 = *v217[0]->clientIdentity;
  if (v19)
  {
    v217[0] = &_swiftEmptyArrayStorage;
    sub_100253198(0, v19, 0);
    v7 = v217[0];
    v216 = v86;
    v87 = &v86->clientIdentity[32];
    do
    {
      v89 = *(v87 - 2);
      v88 = *(v87 - 1);
      v90 = *v87;
      v217[0] = v7;
      v92 = *v7->clientIdentity;
      v91 = *&v7->clientIdentity[8];

      if (v92 >= v91 >> 1)
      {
        sub_100253198((v91 > 1), v92 + 1, 1);
        v7 = v217[0];
      }

      *v7->clientIdentity = v92 + 1;
      v93 = &v7->super.isa + 3 * v92;
      v93[4] = v89;
      v93[5] = v88;
      v93[6] = v90;
      v87 += 24;
      v19 = (v19 - 1);
    }

    while (v19);

    v6 = v210;
  }

  else
  {

    v7 = &_swiftEmptyArrayStorage;
  }

  v102 = v211;
  v215 = *v7->clientIdentity;
  if (!v215)
  {
    v7, v94, v95, v96, v97, v98, v99, v100;
    v163 = &_swiftEmptyArrayStorage;
LABEL_46:
    v218, v156, v157, v158, v159, v160, v161, v162;
    ContinuousClock.now.getter();
    ContinuousClock.Instant.duration(to:)();
    if (qword_100935A68 != -1)
    {
      swift_once();
    }

    v164 = type metadata accessor for Logger();
    sub_100006654(v164, qword_1009387D8);
    v165 = Logger.logObject.getter();
    v166 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      v217[0] = swift_slowAlloc();
      *v167 = 136315394;
      v168 = Duration.description.getter();
      v170 = v169;
      v171 = sub_10000668C(v168, v169, v217);
      v170, v172, v173, v174, v175, v176, v177, v178;
      *(v167 + 4) = v171;
      *(v167 + 12) = 2080;

      sub_1000F5104(&qword_100943188, &unk_1007AA660);
      v179 = Array.description.getter();
      v181 = v180;
      v163, v180, v182, v183, v184, v185, v186, v187;
      v188 = sub_10000668C(v179, v181, v217);
      v181, v189, v190, v191, v192, v193, v194, v195;
      *(v167 + 14) = v188;
      _os_log_impl(&_mh_execute_header, v165, v166, "automaticGroceryLocaleIDsWithConfidences finished {duration: %s sec}, results: %s)", v167, 0x16u);
      swift_arrayDestroy();
    }

    v196 = *v199->storeController;
    v197 = v200;
    v196(v102, v200);
    v196(v208, v197);
    (*(v205 + 8))(v207, v206);
    return v163;
  }

  v103 = 0;
  v214 = &v7->clientIdentity[16];
  v203 = &v212->contactInteractionWriter[2];
  v202 = enum case for REMGroceryModelError.unsupportedLanguage(_:);
  storeController = v212->storeController;
  v212 = &_swiftEmptyArrayStorage;
  *&v101 = 136315138;
  v198 = v101;
  *&v101 = 136315394;
  v201 = v101;
  while (v103 < *v7->clientIdentity)
  {
    v104 = v214 + 24 * v103;
    v105 = *v104;
    v19 = *(v104 + 1);
    v106 = *(v104 + 2);

    v216 = v105;
    v107 = static REMGroceryDummyModel.modelBaseLocale(for:)();
    v115 = v114;
    if (!v114)
    {
      v19, 0, v108, v109, v110, v111, v112, v113;
LABEL_40:
      v131 = v212;
      goto LABEL_41;
    }

    v116 = v107;
    v117 = v218;
    if (*v218->clientIdentity)
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v118 = Hasher._finalize()();
      v125 = -1 << v117->clientIdentity[16];
      v126 = v118 & ~v125;
      if ((*&v117->clientIdentity[((v126 >> 3) & 0xFFFFFFFFFFFFFF8) + 40] >> v126))
      {
        v127 = ~v125;
        while (1)
        {
          v128 = (*&v117->clientIdentity[32] + 16 * v126);
          v129 = v128[1];
          v130 = *v128 == v116 && v115 == v129;
          if (v130 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v126 = (v126 + 1) & v127;
          if (((*&v117->clientIdentity[((v126 >> 3) & 0xFFFFFFFFFFFFFF8) + 40] >> v126) & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        v115, v129, v119, v120, v121, v122, v123, v124;
        v19, v149, v150, v151, v152, v153, v154, v155;
        v6 = v210;
        goto LABEL_40;
      }
    }

LABEL_33:
    v131 = v212;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v131 = sub_100365894(0, (*v131->clientIdentity + 1), 1, v131);
    }

    v133 = *v131->clientIdentity;
    v132 = *&v131->clientIdentity[8];
    if (v133 >= v132 >> 1)
    {
      v131 = sub_100365894((v132 > 1), (v133 + 1), 1, v131);
    }

    *v131->clientIdentity = v133 + 1;
    v134 = &v131->super.isa + 3 * v133;
    v134[4] = v216;
    v134[5] = v19;
    v134[6] = v106;
    sub_100378434(v217, v116, v115);
    v217[1], v135, v136, v137, v138, v139, v140, v141;
    v6 = v210;
LABEL_41:
    v212 = v131;
    if (*v131->clientIdentity >= 2uLL)
    {
      v7, v142, v143, v144, v145, v146, v147, v148;
      v163 = v212;
      v102 = v211;
      goto LABEL_46;
    }

    v102 = v211;
    if (++v103 == v215)
    {
      v7, v142, v143, v144, v145, v146, v147, v148;
      v163 = v212;
      goto LABEL_46;
    }
  }

  __break(1u);
  swift_once();
  v29 = type metadata accessor for Logger();
  sub_100006654(v29, qword_1009387D8);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  v19, v32, v33, v34, v35, v36, v37, v38;
  if (os_log_type_enabled(v30, v31))
  {
    v39 = v6;
    v40 = swift_slowAlloc();
    v41 = v7;
    v42 = swift_slowAlloc();
    v217[0] = v42;
    *v40 = 136315138;
    v43 = sub_10000668C(v103, v19, v217);
    v19, v44, v45, v46, v47, v48, v49, v50;
    *(v40 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v30, v31, "automaticGroceryLocaleIDAndConfidencePairs: Error in preferred baseLanguage %s", v40, 0xCu);
    sub_10000607C(v42);
    v7 = v41;

    v6 = v39;

    goto LABEL_10;
  }

LABEL_8:

  v19, v57, v58, v59, v60, v61, v62, v63;

LABEL_10:
  (*v7->storeController)(v208, v6);
  (*(v205 + 8))(v207, v206);
  return &_swiftEmptyArrayStorage;
}

_BYTE *sub_10044BD04@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10044BD84()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947700);
  v1 = sub_100006654(v0, qword_100947700);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_10044BE4C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, char a3)
{
  v7 = [v3 recentlyDeletedInfoChecksum];
  if (!v7)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v9 = v7;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (!a2)
  {
    v12, v13, v14, v15, v16, v17, v18, v19;
LABEL_12:
    [v3 setRecentlyDeletedInfoChecksum:a2];

    if (a3)
    {
      v29 = [v3 createResolutionTokenMapIfNecessary];
      v30 = String._bridgeToObjectiveC()();
      [v29 updateForKey:v30];
    }

    return result;
  }

  if (v10 != a1 || v12 != a2)
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v12, v22, v23, v24, v25, v26, v27, v28;
    if (v21)
    {
      return result;
    }

LABEL_10:
    a2 = String._bridgeToObjectiveC()();
    goto LABEL_12;
  }

  v12, v13, v14, v15, v16, v17, v18, v19;
  return result;
}

uint64_t sub_10044BFF0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947718);
  v1 = sub_100006654(v0, qword_100947718);
  if (qword_100936448 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10044C0DC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947730);
  v1 = sub_100006654(v0, qword_100947730);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10044C1A4(_TtC7remindd19RDXPCStorePerformer *a1@<X1>, uint64_t a2@<X2>, _TtC7remindd19RDXPCStorePerformer *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v396 = a3;
  v375 = a2;
  v351 = a5;
  v355 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v354 = *(v355 - 8);
  __chkstk_darwin(v355, v8);
  v353 = &v343 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v372 = &v343 - v12;
  v361 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v360 = *(v361 - 8);
  __chkstk_darwin(v361, v13);
  v350 = &v343 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v365 = sub_1000F5104(&qword_10093AE38, &unk_100798450);
  __chkstk_darwin(v365, v15);
  v359 = &v343 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v370 = &v343 - v19;
  v20 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v20 - 8, v21);
  v348 = &v343 - v22;
  v364 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v363 = *(v364 - 8);
  __chkstk_darwin(v364, v23);
  v356 = (&v343 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25, v26);
  v368 = &v343 - v27;
  v373 = type metadata accessor for REMRemindersListDataView.Diff();
  v367 = *(v373 - 8);
  __chkstk_darwin(v373, v28);
  v352 = &v343 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v31);
  v374 = &v343 - v32;
  __chkstk_darwin(v33, v34);
  v366 = &v343 - v35;
  __chkstk_darwin(v36, v37);
  v376 = &v343 - v38;
  v39 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v39 - 8, v40);
  v362 = &v343 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42, v43);
  v358 = &v343 - v44;
  __chkstk_darwin(v45, v46);
  v369 = &v343 - v47;
  __chkstk_darwin(v48, v49);
  v378 = &v343 - v50;
  v383 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v383, v51);
  v382 = &v343 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53, v54);
  v392 = &v343 - v55;
  v387 = _s10PredicatesOMa(0);
  __chkstk_darwin(v387, v56);
  v357 = (&v343 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v58, v59);
  v381 = &v343 - v60;
  v386 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v389 = *(v386 - 8);
  __chkstk_darwin(v386, v61);
  v380 = &v343 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63, v64);
  v391 = &v343 - v65;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v384 = *(Subtasks - 8);
  v385 = Subtasks;
  __chkstk_darwin(Subtasks, v67);
  v390 = (&v343 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v393 = *(v69 - 8);
  v394 = v69;
  __chkstk_darwin(v69, v70);
  v349 = &v343 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72, v73);
  v371 = &v343 - v74;
  __chkstk_darwin(v75, v76);
  v78 = &v343 - v77;
  __chkstk_darwin(v79, v80);
  v82 = &v343 - v81;
  v388 = a4;
  v83 = REMRemindersListDataView.ListInvocation.Parameters.list.getter();
  v84 = [v83 objectID];

  v85 = REMObjectID.codable.getter();
  type metadata accessor for REMListStableSortingDataView.Invocation();
  v86 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v87 = sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  v379 = xmmword_1007953F0;
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = v85;
  v89 = v85;
  sub_1003915C4(inited);
  v91 = v90;
  swift_setDeallocating();
  swift_arrayDestroy();
  v92 = v395;
  sub_10026EC90(a1, v396, v91);
  if (v92)
  {

    v91, v94, v95, v96, v97, v98, v99, v100;
    return;
  }

  v101 = v93;
  v345 = v87;
  v347 = v82;
  v102 = v389;
  v343 = v78;
  v395 = a1;

  v91, v103, v104, v105, v106, v107, v108, v109;
  v110 = sub_10035363C(v89, v101);
  v101, v111, v112, v113, v114, v115, v116, v117;
  if (!v110)
  {
    [objc_opt_self() noSuchObjectErrorWithObjectID:v89];
    swift_willThrow();

    return;
  }

  v344 = v110;
  v118 = [v110 accountID];
  v119 = [(RDXPCStorePerformer *)v395 persistentStoreOfAccountWithAccountID:v118];

  v346 = 0;
  if (v119)
  {
    v120 = swift_allocObject();
    *(v120 + 16) = v379;
    *&v379 = v120;
    *(v120 + 32) = v119;
  }

  else
  {
    *&v379 = 0;
  }

  v121 = v391;
  v122 = v347;
  v123 = v381;
  v124 = REMRemindersListDataView.ListInvocation.Parameters.list.getter();
  REMRemindersListDataView.ListInvocation.Parameters.showCompleted.getter();
  REMRemindersListDataView.ListInvocation.Parameters.fetchSubtasks.getter();
  REMRemindersListDataView.ListInvocation.Parameters.sortingStyle.getter();
  v125 = *(sub_1000F5104(&unk_100942AF0, qword_1007A7520) + 48);
  v389 = v124;
  *v123 = [(RDXPCStorePerformer *)v124 objectID];
  v126 = v123;
  v127 = v393 + 16;
  v128 = *(v393 + 16);
  (v128)(v123 + v125, v122, v394);
  swift_storeEnumTagMultiPayload();
  v129 = sub_100043AA8();
  sub_1001A4F3C(v126, _s10PredicatesOMa);
  v130 = v380;
  v131 = v386;
  (*v102->clientIdentity)(v380, v121, v386);
  v132 = v382;
  swift_storeEnumTagMultiPayload();
  v133 = v392;
  sub_1005368D8(v130, v132, v392);
  v134 = v395;
  v135 = v133;
  v136 = v390;
  v137 = v122;
  v138 = v379;
  v139 = v346;
  v140 = sub_100536D54(v395, v129, v135, v137, v390, &_swiftEmptyArrayStorage, v379);
  if (v139)
  {

    v138, v141, v142, v143, v144, v145, v146, v147;
    sub_1001A4F3C(v392, _s9UtilitiesO12SortingStyleOMa);
    (*v102->storeController)(v391, v131);
    (*(v384 + 8))(v136, v385);
    (*(v393 + 8))(v347, v394);
    return;
  }

  v345 = v127;
  v381 = v128;
  v383 = v140;

  sub_1001A4F3C(v392, _s9UtilitiesO12SortingStyleOMa);
  (*v102->storeController)(v391, v131);
  (*(v384 + 8))(v136, v385);
  v149 = v393 + 8;
  v148 = *(v393 + 8);
  (v148)(v347, v394);
  v150 = v134;
  v151 = v377;
  sub_10044DCE0(v150, v378);
  v391 = v148;
  v392 = v149;
  v152 = [v151 fetchResultTokenToDiffAgainst];
  sub_100534D44(v152, v376);
  v346 = 0;

  v153 = v368;
  REMRemindersListDataView.ListInvocation.Parameters.remindersPrefetch.getter();
  v154 = v363;
  v155 = v356;
  v156 = v364;
  (*(v363 + 16))(v356, v153, v364);
  v157 = (*(v154 + 88))(v155, v156);
  if (v157 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v154 + 96))(v155, v156);
    v165 = *v155;
    v166 = v383;
    v167 = v379;
    v390 = sub_10053DB98(v165, v383, v395, v396, v379);
    v167, v168, v169, v170, v171, v172, v173, v174;
    v389 = &_swiftEmptyArrayStorage;
    v175 = v365;
    goto LABEL_20;
  }

  v175 = v365;
  v176 = v396;
  if (v157 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    (*(v154 + 96))(v155, v156);
    v177 = v379;
    v390 = sub_10053E698(*v155, v376, v395, v176, v379);
    v177, v178, v179, v180, v181, v182, v183, v184;
    v389 = &_swiftEmptyArrayStorage;
LABEL_18:
    v166 = v383;
    goto LABEL_19;
  }

  if (v157 != enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    if (v157 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
    {
LABEL_52:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_53;
    }

    v379, v158, v159, v160, v161, v162, v163, v164;
    v389 = &_swiftEmptyArrayStorage;
    v390 = &_swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  (*(v154 + 96))(v155, v156);
  v185 = *v155;
  v186 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
  v187 = v348;
  sub_100031B58(v155 + *(v186 + 48), v348, &qword_10094B8E0, &unk_1007AABD0);
  v188 = v185;
  v189 = v383;
  v190 = v395;
  v191 = v379;
  v390 = sub_10053DB98(v188, v383, v395, v176, v379);
  v166 = v189;
  v192 = v190;
  v156 = v364;
  v389 = sub_10053EBE4(v187, v189, v192, v176, v191);
  v191, v193, v194, v195, v196, v197, v198, v199;
  v154 = v363;
  v175 = v365;
  sub_1000050A4(v187, &qword_10094B8E0, &unk_1007AABD0);
LABEL_19:
  v153 = v368;
LABEL_20:
  v200 = v381;
  (*(v154 + 8))(v153, v156);
  v201 = REMRemindersListDataView.ListInvocation.Parameters.list.getter();
  v202 = [v201 objectID];

  v203 = v357;
  *v357 = v202;
  swift_storeEnumTagMultiPayload();
  v396 = sub_100043AA8();
  sub_1001A4F3C(v203, _s10PredicatesOMa);
  v204 = v343;
  REMRemindersListDataView.ListInvocation.Parameters.showCompleted.getter();
  v205 = v370;
  sub_100010364(v378, v370, &qword_100938A70, &qword_1007ACC60);
  v206 = v394;
  v200(v205 + *(v175 + 48), v204, v394);
  *(v205 + *(v175 + 64)) = v166;
  v207 = v175;
  v208 = v359;
  sub_100010364(v205, v359, &qword_10093AE38, &unk_100798450);
  v209 = *(v207 + 48);
  v210 = *(v208 + *(v207 + 64));
  v211 = v369;
  sub_100031B58(v208, v369, &qword_100938A70, &qword_1007ACC60);
  v212 = v211;
  v213 = v371;
  (*(v393 + 32))(v371, v208 + v209, v206);
  v214 = v358;
  sub_100010364(v212, v358, &qword_100938A70, &qword_1007ACC60);
  v215 = v360;
  v216 = v361;
  v217 = (*(v360 + 48))(v214, 1, v361);

  if (v217 != 1)
  {
    v210, v218, v219, v220, v221, v222, v223, v224;
    v238 = v350;
    (*(v215 + 32))(v350, v214, v216);
    v239 = v215;
    v240 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
    v241 = REMRemindersListDataView.CountByCompleted.completed.getter();

    (*(v239 + 8))(v238, v216);
    v242 = v213;
    v243 = v391;
    (v391)(v242, v206);
    sub_1000050A4(v212, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v205, &qword_10093AE38, &unk_100798450);
    (v243)(v343, v206);
    v234 = v362;
    if (!__OFADD__(v240, v241))
    {
      v237 = v373;
      v233 = v374;
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_52;
  }

  v225 = v396;
  sub_1000050A4(v214, &qword_100938A70, &qword_1007ACC60);
  v233 = v374;
  v234 = v362;
  if (*(v210 + 16))
  {
    v210, v226, v227, v228, v229, v230, v231, v232;

    v235 = v394;
    v236 = v391;
    (v391)(v371, v394);
    sub_1000050A4(v369, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v370, &qword_10093AE38, &unk_100798450);
    (v236)(v343, v235);
LABEL_23:
    v237 = v373;
LABEL_26:
    v244 = v366;
    goto LABEL_27;
  }

  v281 = v349;
  v282 = v394;
  (v381)(v349, v371, v394);
  v283 = (*(v393 + 88))(v281, v282);
  v291 = v343;
  if (v283 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    v210, v284, v285, v286, v287, v288, v289, v290;
    v292 = v281;
    v293 = v391;
    (v391)(v292, v282);
    v294 = v346;
    p_attr = (&stru_100923FF8 + 8);
LABEL_46:
    sub_100345DB0();
    v315 = [objc_allocWithZone(NSFetchRequest) p_attr[424]];
    v316 = [swift_getObjCClassFromMetadata() entity];
    [v315 setEntity:v316];

    [v315 setAffectedStores:0];
    [v315 setPredicate:v225];
    [v315 setFetchLimit:1];
    [v315 setAffectedStores:0];
    NSManagedObjectContext.count<A>(for:)();
    v346 = v294;
    if (v294)
    {

      v383, v317, v318, v319, v320, v321, v322, v323;
      v390, v324, v325, v326, v327, v328, v329, v330;
      v389, v331, v332, v333, v334, v335, v336, v337;

      v338 = v394;
      (v293)(v371, v394);
      sub_1000050A4(v369, &qword_100938A70, &qword_1007ACC60);
      sub_1000050A4(v370, &qword_10093AE38, &unk_100798450);
      (v293)(v343, v338);
      (*(v367 + 8))(v376, v373);
      v312 = v378;
LABEL_41:
      sub_1000050A4(v312, &qword_100938A70, &qword_1007ACC60);
      return;
    }

    v339 = v293;
    v340 = v394;
    (v339)(v371, v394);
    sub_1000050A4(v369, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v370, &qword_10093AE38, &unk_100798450);
    (v339)(v343, v340);
    v237 = v373;
    v233 = v374;
    v244 = v366;
    v234 = v362;
LABEL_27:
    sub_100010364(v378, v234, &qword_100938A70, &qword_1007ACC60);
    v245 = v383;

    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    if (qword_100936190 != -1)
    {
      swift_once();
    }

    v246 = type metadata accessor for Logger();
    sub_100006654(v246, qword_100947730);
    v247 = v367;
    v248 = (v367 + 16);
    v249 = *(v367 + 16);
    v250 = v376;
    (v249)(v244, v376, v237);
    v395 = v249;
    (v249)(v233, v250, v237);

    v251 = Logger.logObject.getter();
    v252 = static os_log_type_t.default.getter();
    v253 = os_log_type_enabled(v251, v252);
    v396 = v248;
    if (v253)
    {
      LODWORD(v394) = v252;
      v254 = swift_slowAlloc();
      *v254 = 134218496;
      v255 = *v245->clientIdentity;
      v245, v256, v257, v258, v259, v260, v261, v262;
      *(v254 + 4) = v255;
      v245, v263, v264, v265, v266, v267, v268, v269;
      *(v254 + 12) = 2048;
      v270 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
      if ((v270 & 0xC000000000000001) != 0)
      {
        v278 = v270;
        v279 = __CocoaSet.count.getter();
        v270 = v278;
      }

      else
      {
        v279 = *(v270 + 16);
      }

      v296 = v367;
      v270, v271, v272, v273, v274, v275, v276, v277;
      v297 = *(v296 + 8);
      v297(v366, v373);
      *(v254 + 14) = v279;
      *(v254 + 22) = 2048;
      v298 = REMRemindersListDataView.Diff.insertedReminderObjectIDs.getter();
      if ((v298 & 0xC000000000000001) != 0)
      {
        v306 = v298;
        v307 = __CocoaSet.count.getter();
        v298 = v306;
      }

      else
      {
        v307 = *(v298 + 16);
      }

      v298, v299, v300, v301, v302, v303, v304, v305;
      v237 = v373;
      v297(v374, v373);
      *(v254 + 24) = v307;
      _os_log_impl(&_mh_execute_header, v251, v394, "reminders %ld updated %ld inserted %ld", v254, 0x20u);

      v394 = v297;
    }

    else
    {
      v280 = *(v247 + 8);
      v280(v233, v237);
      v394 = v280;
      v280(v244, v237);

      swift_bridgeObjectRelease_n();
    }

    v308 = v354;
    v309 = v372;
    v310 = v355;
    (*(v354 + 16))(v353, v372, v355);
    v311 = v376;
    (v395)(v352, v376, v237);
    REMRemindersListDataView.ListInvocation.Result.init(model:diff:list:)();
    (*(v308 + 8))(v309, v310);
    v394(v311, v237);
    v312 = v378;
    goto LABEL_41;
  }

  v313 = v210;
  v294 = v346;
  p_attr = &stru_100923FF8.attr;
  if (v283 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    v313, v284, v285, v286, v287, v288, v289, v290;
    v314 = v281;
    v293 = v391;
    (v391)(v314, v282);
    goto LABEL_46;
  }

  if (v283 == enum case for REMRemindersListDataView.ShowCompleted.off(_:))
  {
    v313, v284, v285, v286, v287, v288, v289, v290;
    v293 = v391;
    goto LABEL_46;
  }

  v341 = v370;
  if (v283 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {
    v313, v284, v285, v286, v287, v288, v289, v290;

    v342 = v391;
    (v391)(v371, v282);
    sub_1000050A4(v369, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v341, &qword_10093AE38, &unk_100798450);
    (v342)(v291, v282);
    goto LABEL_23;
  }

LABEL_53:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_10044DCE0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = _s10PredicatesOMa(0);
  __chkstk_darwin(v5, v6);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (REMRemindersListDataView.ListInvocation.Parameters.countCompleted.getter())
  {
    v9 = REMRemindersListDataView.ListInvocation.Parameters.list.getter();
    v10 = [v9 objectID];

    *v8 = v10;
    swift_storeEnumTagMultiPayload();
    v11 = sub_100043AA8();
    sub_1001A4F3C(v8, _s10PredicatesOMa);
    sub_10053464C(a1, v11);
    if (!v2)
    {
      v12 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
      (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
    }
  }

  else
  {
    v13 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

unint64_t sub_10044DE9C(uint64_t a1)
{
  result = sub_10044DEC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10044DEC4()
{
  result = qword_100947768;
  if (!qword_100947768)
  {
    type metadata accessor for REMRemindersListDataView.ListInvocation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947768);
  }

  return result;
}

uint64_t sub_10044DF1C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947770);
  v1 = sub_100006654(v0, qword_100947770);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10044DFE4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947788);
  v1 = sub_100006654(v0, qword_100947788);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10044E0AC(void *a1, void *a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (qword_1009361A0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_100947788);
    v7 = a1;
    sub_100066F20(a2, 1);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    sub_100067078(a2, 1);
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v37[0] = swift_slowAlloc();
      *v9 = 136315394;
      v10 = v7;
      v11 = [v10 description];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_10000668C(v12, v14, v37);
      v14, v16, v17, v18, v19, v20, v21, v22;
      *(v9 + 4) = v15;
      *(v9 + 12) = 2080;
      v37[3] = a2;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      v26 = sub_10000668C(v23, v24, v37);
      v25, v27, v28, v29, v30, v31, v32, v33;
      *(v9 + 14) = v26;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Error fetching record zone %s {error: %s}", v9, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    v35 = a1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }
}

void sub_10044E368(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_1009361A0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_100947788);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    sub_100138D4C(a1, 1);
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136315138;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v7 = String.init<A>(describing:)();
      v9 = v8;
      v10 = sub_10000668C(v7, v8, &v19);
      v9, v11, v12, v13, v14, v15, v16, v17;
      *(v5 + 4) = v10;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Error fetching record zones {error: %s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    else
    {
    }
  }
}

void sub_10044E514(void *a1, void *a2, char a3, void *a4, uint64_t a5, _TtC7remindd19RDXPCStorePerformer *a6, void *a7, uint64_t a8)
{
  v234 = a7;
  v14 = type metadata accessor for URL();
  __chkstk_darwin(v14, v15);
  v17 = &v222 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = &v222 - v20;
  __chkstk_darwin(v22, v23);
  v27 = &v222 - v26;
  if (a3)
  {
    if (qword_1009361A0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_100947788);
    v29 = a1;
    sub_100066F20(a2, 1);
    v235 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    sub_100067078(a2, 1);
    if (os_log_type_enabled(v235, v30))
    {
      v31 = swift_slowAlloc();
      v238[0] = swift_slowAlloc();
      *v31 = 136446466;
      v32 = [v29 ic_prettyLoggingDescription];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = sub_10000668C(v33, v35, v238);
      v35, v37, v38, v39, v40, v41, v42, v43;
      *(v31 + 4) = v36;
      *(v31 + 12) = 2080;
      v237[0] = a2;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v44 = String.init<A>(describing:)();
      v46 = v45;
      v47 = sub_10000668C(v44, v45, v238);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v31 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v235, v30, "Failed in fetchChangesOp.recordWasChangedBlock {recordID: %{public}s, error: %s}", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v99 = v235;
    }

    return;
  }

  v229 = a6;
  v55 = v24;
  v230 = a8;
  v232 = v25;
  sub_100066F20(a2, 0);
  v235 = a2;
  v56 = [v235 CKDescriptionPropertiesWithPublic:1 private:1 shouldExpand:1];
  if (!v56)
  {
    __break(1u);
    return;
  }

  v57 = v56;
  v58 = [v56 jsonify];

  objc_opt_self();
  v59 = swift_dynamicCastObjCClass();
  if (!v59)
  {

    if (qword_1009361A0 != -1)
    {
      swift_once();
    }

    v100 = type metadata accessor for Logger();
    sub_100006654(v100, qword_100947788);
    v101 = a1;
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v238[0] = v105;
      *v104 = 136446210;
      v106 = [v101 ic_prettyLoggingDescription];
      v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v109 = v108;

      v110 = sub_10000668C(v107, v109, v238);
      v109, v111, v112, v113, v114, v115, v116, v117;
      *(v104 + 4) = v110;
      _os_log_impl(&_mh_execute_header, v102, v103, "Failed to cast record.ckDesriptionProperties to NSMutableDictionary for {recordID:%{public}s}", v104, 0xCu);
      sub_10000607C(v105);

      sub_100067078(a2, 0);
      goto LABEL_23;
    }

    sub_100067078(a2, 0);

LABEL_27:
    sub_100067078(a2, 0);
    return;
  }

  v60 = v59;
  v231 = v58;
  sub_100451460(v235, a4);
  if (v61)
  {
    v62 = v61;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v62, v64, v65, v66, v67, v68, v69, v70;
    [v60 addEntriesFromDictionary:isa];
  }

  v71 = objc_opt_self();
  v238[0] = 0;
  v72 = [v71 dataWithJSONObject:v60 options:1 error:v238];
  v73 = v238[0];
  if (!v72)
  {
    v118 = v73;
    v119 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_20;
  }

  v227 = v55;
  v233 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;

  v76 = v235;
  v77 = [v235 recordID];
  v78 = [v77 recordName];

  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v80;

  v238[0] = v79;
  v238[1] = v81;
  v237[0] = 47;
  v237[1] = 0xE100000000000000;
  v239 = 45;
  v240 = 0xE100000000000000;
  sub_10013BCF4();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v83 = v82;
  v81, v82, v84, v85, v86, v87, v88, v89;
  URL.appendingPathComponent(_:)();
  v90 = v83;
  v91 = v233;
  v90, v92, v93, v94, v95, v96, v97, v98;
  Data.write(to:options:)();
  v225 = v75;
  v146 = *(v232 + 8);
  v147 = v227;
  v232 += 8;
  v146(v27, v227);
  if (![v76 containsAssetValues])
  {
    sub_100067078(a2, 0);

    sub_10001BBA0(v91, v225);
    goto LABEL_27;
  }

  v119 = v76;
  v224 = v146;
  v149 = v229;
  swift_beginAccess();
  if (v149->clientIdentity[0])
  {
    goto LABEL_32;
  }

  URL._bridgeToObjectiveC()(&var20);
  v151 = v150;
  v238[0] = 0;
  v152 = [v234 createDirectoryAtURL:v150 withIntermediateDirectories:1 attributes:0 error:v238];

  v153 = v238[0];
  v154 = v225;
  if (!v152)
  {
    v213 = v238[0];
    v119 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10001BBA0(v233, v154);
LABEL_20:
    v21 = v231;
    if (qword_1009361A0 != -1)
    {
      goto LABEL_53;
    }

    goto LABEL_21;
  }

  v155 = v229;
  swift_beginAccess();
  v155->clientIdentity[0] = 1;
  v156 = v153;
  v91 = v233;
LABEL_32:
  v157 = [v119 valueStore];
  v158 = [v157 allKeys];

  v159 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v228 = *(v159 + 16);
  if (!v228)
  {
    sub_100067078(a2, 0);
    v159, v206, v207, v208, v209, v210, v211, v212;
    v205 = v91;
LABEL_49:
    sub_10001BBA0(v205, v225);
    sub_100067078(a2, 0);

    return;
  }

  v160 = 0;
  v229 = v159;
  v161 = (v159 + 40);
  v223 = a2;
  while (v160 < *v229->clientIdentity)
  {
    v164 = *v161;

    v165 = [v119 valueStore];
    sub_1000060C8(0, &qword_1009477A8, CKRecordValueStore_ptr);
    CKRecordKeyValueSetting.subscript.getter();
    v164, v166, v167, v168, v169, v170, v171, v172;

    sub_100451BB0(v238, v237);
    if (!v237[3])
    {
      sub_1000050A4(v238, &qword_1009477B0, &qword_1007AA730);
      v162 = v237;
LABEL_35:
      sub_1000050A4(v162, &qword_1009477B0, &qword_1007AA730);
LABEL_36:
      v163 = v233;
      goto LABEL_37;
    }

    sub_1000F5104(&qword_1009477B8, &qword_1007AA738);
    sub_1000060C8(0, &qword_1009477C0, CKAsset_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v162 = v238;
      goto LABEL_35;
    }

    v173 = v236[0];
    v174 = [v236[0] fileURL];
    if (!v174)
    {
      sub_1000050A4(v238, &qword_1009477B0, &qword_1007AA730);

      goto LABEL_36;
    }

    v226 = v173;
    v175 = v174;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v176);
    v178 = v177;
    URL.lastPathComponent.getter();
    v180 = v179;
    URL.appendingPathComponent(_:)();
    v180, v181, v182, v183, v184, v185, v186, v187;
    URL._bridgeToObjectiveC()(v188);
    v190 = v189;
    v191 = v21;
    v192 = v17;
    v193 = v17;
    v194 = v147;
    v195 = v147;
    v196 = v224;
    v224(v193, v194);
    v237[0] = 0;
    LODWORD(v180) = [v234 moveItemAtURL:v178 toURL:v190 error:v237];

    if (!v180)
    {
      v214 = v237[0];
      v229, v215, v216, v217, v218, v219, v220, v221;
      v119 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10001BBA0(v233, v225);

      v196(v191, v195);
      sub_1000050A4(v238, &qword_1009477B0, &qword_1007AA730);
      a2 = v223;
      goto LABEL_20;
    }

    v197 = v237[0];

    v196(v191, v195);
    sub_1000050A4(v238, &qword_1009477B0, &qword_1007AA730);
    v119 = v235;
    v163 = v233;
    v147 = v195;
    v17 = v192;
    v21 = v191;
    a2 = v223;
LABEL_37:
    ++v160;
    v161 += 2;
    if (v228 == v160)
    {
      sub_100067078(a2, 0);
      v229, v198, v199, v200, v201, v202, v203, v204;
      v205 = v163;
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_53:
  swift_once();
LABEL_21:
  v120 = type metadata accessor for Logger();
  sub_100006654(v120, qword_100947788);
  sub_100066F20(a2, 0);
  swift_errorRetain();
  v102 = Logger.logObject.getter();
  v121 = static os_log_type_t.error.getter();
  sub_100067078(a2, 0);

  if (os_log_type_enabled(v102, v121))
  {
    v122 = swift_slowAlloc();
    v238[0] = swift_slowAlloc();
    *v122 = 136315394;
    sub_100066F20(a2, 0);
    v123 = [v235 description];
    v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v126 = v125;

    sub_100067078(a2, 0);
    v127 = sub_10000668C(v124, v126, v238);
    v126, v128, v129, v130, v131, v132, v133, v134;
    *(v122 + 4) = v127;
    *(v122 + 12) = 2080;
    v237[0] = v119;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v135 = String.init<A>(describing:)();
    v137 = v136;
    v138 = sub_10000668C(v135, v136, v238);
    v137, v139, v140, v141, v142, v143, v144, v145;
    *(v122 + 14) = v138;
    _os_log_impl(&_mh_execute_header, v102, v121, "Failed to serialize record {record: %s, error: %s}", v122, 0x16u);
    swift_arrayDestroy();

    sub_100067078(a2, 0);

LABEL_23:

    goto LABEL_27;
  }

  sub_100067078(a2, 0);

  sub_100067078(a2, 0);
}

id sub_10044F4F8(Class *a1, void (*a2)(void))
{
  v12 = type metadata accessor for NSFastEnumerationIterator();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(*a1) init];
  a2();
  NSFastEnumerationIterator.next()();
  while (v18)
  {
    sub_100005EE0(&v17, &v15);
    sub_100005EF0(&v15, v14);
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    if (swift_dynamicCast())
    {
      v9 = v13;
      v10 = [v13 jsonify];
      [v8 addObject:v10];
    }

    else
    {
      sub_10000F61C(&v15, v16);
      [v8 addObject:_bridgeAnythingToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
    }

    sub_10000607C(&v15);
    NSFastEnumerationIterator.next()();
  }

  (*(v4 + 8))(v7, v12);
  return v8;
}

id sub_10044F760()
{
  v1 = [objc_allocWithZone(NSMutableDictionary) init];
  v2 = [v0 allKeys];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = v3;
  v12 = *(v3 + 16);
  if (v12)
  {
    v21 = v11;
    v13 = &v11->clientIdentity[16];
    do
    {
      sub_100005EF0(v13, v28);
      sub_10000F61C(v28, v28[3]);
      v15 = [v0 __swift_objectForKeyedSubscript:_bridgeAnythingToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v15)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100005EE0(&v25, v27);
        sub_100005EF0(v27, &v25);
        v16 = sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
        if (swift_dynamicCast())
        {
          v17 = v23[0];
          v18 = [v23[0] jsonify];
          v26 = v16;

          *&v25 = v18;
        }

        else
        {
          sub_100005EF0(v27, &v25);
        }

        sub_100005EF0(v28, v23);
        if (swift_dynamicCast())
        {
          v19 = [v22 jsonify];
          v24 = v16;

          v23[0] = v19;
        }

        else
        {
          sub_100005EF0(v28, v23);
        }

        sub_10000F61C(&v25, v26);
        v14 = _bridgeAnythingToObjectiveC<A>(_:)();
        sub_10000F61C(v23, v24);
        [v1 __swift_setObject:v14 forKeyedSubscript:_bridgeAnythingToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_10000607C(v27);
        sub_10000607C(v23);
        sub_10000607C(&v25);
      }

      sub_10000607C(v28);
      v13 += 32;
      --v12;
    }

    while (v12);
    v11 = v21;
  }

  v11, v4, v5, v6, v7, v8, v9, v10;
  return v1;
}

id sub_10044FA44()
{
  result = [objc_allocWithZone(NSISO8601DateFormatter) init];
  qword_100974E88 = result;
  return result;
}

void sub_10044FB10(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, uint64_t a4)
{
  v305 = a4;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v321 = &v301 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v340 = &v301 - v13;
  __chkstk_darwin(v14, v15);
  v323 = &v301 - v16;
  __chkstk_darwin(v17, v18);
  v339 = &v301 - v19;
  __chkstk_darwin(v20, v21);
  v23 = (&v301 - v22);
  __chkstk_darwin(v24, v25);
  v27 = &v301 - v26;
  v325 = v28;
  __chkstk_darwin(v29, v30);
  v32 = &v301 - v31;
  v33 = String._bridgeToObjectiveC()();
  v322 = a3;
  v34 = [a3 containerForAccountID:v33];

  v306 = v34;
  if (!v34)
  {
    if (qword_1009361A0 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_100006654(v65, qword_100947788);

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    a2, v68, v69, v70, v71, v72, v73, v74;
    if (os_log_type_enabled(v66, v67))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      aBlock = v76;
      *v75 = 136315138;
      *(v75 + 4) = sub_10000668C(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v66, v67, "Failed to fetch CKContainer for accountID {accountID: %s}", v75, 0xCu);
      sub_10000607C(v76);
    }

    v77 = objc_opt_self();
    aBlock = 0;
    v343 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v78._object = 0x80000001007F8AD0;
    v78._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v78);
    v79._countAndFlagsBits = a1;
    v79._object = a2;
    String.append(_:)(v79);
    v80._countAndFlagsBits = 125;
    v80._object = 0xE100000000000000;
    String.append(_:)(v80);
    v81 = v343;
    v82 = String._bridgeToObjectiveC()();
    v81, v83, v84, v85, v86, v87, v88, v89;
    v90 = [v77 internalErrorWithDebugDescription:v82];

    v91 = _convertErrorToNSError(_:)();
    v92 = *(v305 + 16);
    v341 = v91;
    v92(v305, 0);

    v93 = v341;

    return;
  }

  v336 = [objc_opt_self() defaultManager];
  v35 = [v336 temporaryDirectory];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v309 = a1;
  aBlock = a1;
  v343 = a2;
  v318 = a2;

  v36._countAndFlagsBits = 0x6E6961746E6F632DLL;
  v36._object = 0xEA00000000007265;
  String.append(_:)(v36);
  v37 = v343;
  URL.appendingPathComponent(_:)();
  v37, v38, v39, v40, v41, v42, v43, v44;
  v337 = *(v8 + 1);
  v338 = v8 + 8;
  v337(v27, v7);
  if (qword_1009361A0 != -1)
  {
    goto LABEL_56;
  }

LABEL_3:
  v45 = type metadata accessor for Logger();
  v46 = sub_100006654(v45, qword_100947788);
  v47 = *(v8 + 2);
  v334 = v8 + 16;
  v333 = v47;
  v47(v23, v32, v7);
  v335 = v46;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  v50 = os_log_type_enabled(v48, v49);
  v341 = v7;
  v328 = v32;
  v320 = v8;
  v317 = v27;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    aBlock = v52;
    *v51 = 136315138;
    v53 = URL.path.getter();
    v55 = v54;
    v337(v23, v7);
    v56 = sub_10000668C(v53, v55, &aBlock);
    v57 = v55;
    v32 = v328;
    v57, v58, v59, v60, v61, v62, v63, v64;
    *(v51 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v48, v49, "downloadContainer outputDirURL: %s", v51, 0xCu);
    sub_10000607C(v52);

    v8 = v320;
  }

  else
  {

    v337(v23, v7);
  }

  v94 = v336;
  URL.path.getter();
  v96 = v95;
  v97 = String._bridgeToObjectiveC()();
  v96, v98, v99, v100, v101, v102, v103, v104;
  LODWORD(v96) = [v94 fileExistsAtPath:v97];

  if (v96)
  {
    URL._bridgeToObjectiveC()(v105);
    v107 = v106;
    aBlock = 0;
    v108 = [v94 removeItemAtURL:v106 error:&aBlock];

    v109 = aBlock;
    if (!v108)
    {
      goto LABEL_50;
    }

    v110 = aBlock;
  }

  URL._bridgeToObjectiveC()(v105);
  v112 = v111;
  aBlock = 0;
  v113 = [v94 createDirectoryAtURL:v111 withIntermediateDirectories:1 attributes:0 error:&aBlock];

  v109 = aBlock;
  if (v113)
  {
    v301 = objc_opt_self();
    v324 = &v344;
    v314 = CKCurrentUserDefaultName;
    v313 = v325 + 7;
    v312 = v8 + 32;
    v114 = v109;
    v115 = 0;
    v116 = 0;
    *&v117 = 136315138;
    v308 = v117;
    *&v117 = 138412546;
    v307 = v117;
    v311 = xmmword_1007953F0;
    while (1)
    {
      v302 = v115;
      v119 = &selRef_privateCloudDatabase;
      if (*(&off_1008DD5E0 + v116 + 4) != 2)
      {
        v119 = &selRef_sharedCloudDatabase;
      }

      v120 = [v306 *v119];
      v121 = dispatch_group_create();
      v122 = [v301 fetchAllRecordZonesOperation];
      v123 = swift_allocObject();
      *(v123 + 16) = &_swiftEmptyArrayStorage;
      v124 = (v123 + 16);

      v304 = v123;
      CKFetchRecordZonesOperation.perRecordZoneResultBlock.setter();
      CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.setter();
      v125 = swift_allocObject();
      *(v125 + 16) = v121;
      v8 = sub_10045132C;
      v346 = sub_10045132C;
      v347 = v125;
      aBlock = _NSConcreteStackBlock;
      v343 = 1107296256;
      v344 = sub_100019200;
      v345 = &unk_1008F2730;
      v126 = _Block_copy(&aBlock);
      v127 = v122;
      v128 = v121;
      sub_10003E124(sub_10045132C, v125);

      [v127 setCompletionBlock:v126];
      _Block_release(v126);

      dispatch_group_enter(v128);
      v129 = v120;
      [v127 setDatabase:v129];
      v326 = v129;
      v303 = v127;
      [v129 addOperation:v127];
      v327 = v128;
      OS_dispatch_group.wait()();
      swift_beginAccess();
      v23 = *v124;
      v130 = *v124 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v131 = v339;
      v27 = v328;
      v7 = v341;
      if (v130)
      {
        break;
      }

LABEL_19:
      v118 = v326;

      v115 = 1;
      v116 = 1;
      if (v302)
      {
        URL.path.getter();
        v292 = v291;
        v293 = String._bridgeToObjectiveC()();
        (*(v305 + 16))(v305, v293, 0);

        v292, v294, v295, v296, v297, v298, v299, v300;
        v278 = v27;
        v279 = v7;
        goto LABEL_51;
      }
    }

    v132 = v23 & 0xC000000000000001;
    v310 = v23 & 0xFFFFFFFFFFFFFF8;

    v32 = 0;
    v316 = v130;
    v315 = v23 & 0xC000000000000001;
    v319 = v23;
    while (1)
    {
      if (v132)
      {
        v140 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v32 >= *(v310 + 16))
        {
          goto LABEL_55;
        }

        v140 = *&v23->clientIdentity[8 * v32 + 16];
      }

      v141 = v140;
      v8 = (v32 + 1);
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        swift_once();
        goto LABEL_3;
      }

      if ([v140 isDefaultRecordZoneID])
      {

        goto LABEL_27;
      }

      v331 = (v32 + 1);
      v142 = [v141 ownerName];
      v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v145 = v144;

      v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v154 = v147;
      v155 = v143 == v146 && v145 == v147;
      v332 = v32;
      if (v155)
      {
        break;
      }

      v156 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v145, v157, v158, v159, v160, v161, v162, v163;
      v154, v164, v165, v166, v167, v168, v169, v170;
      if (v156)
      {
        goto LABEL_41;
      }

      aBlock = 0x4244646572616853;
      v343 = 0xE90000000000002DLL;
      v171 = [v141 ownerName];
      v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v174 = v173;

      v175._countAndFlagsBits = v172;
      v175._object = v174;
      String.append(_:)(v175);
      v176 = v174;
      v131 = v339;
      v176, v177, v178, v179, v180, v181, v182, v183;
      v184 = aBlock;
      v185 = v343;
LABEL_42:
      aBlock = v184;
      v343 = v185;
      v193._countAndFlagsBits = 45;
      v193._object = 0xE100000000000000;
      String.append(_:)(v193);
      v194 = [v141 zoneName];
      v195 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v197 = v196;

      v198._countAndFlagsBits = v195;
      v198._object = v197;
      String.append(_:)(v198);
      v197, v199, v200, v201, v202, v203, v204, v205;
      v206 = v343;
      URL.appendingPathComponent(_:)();
      v206, v207, v208, v209, v210, v211, v212, v213;
      v214 = v323;
      v333(v323, v131, v7);
      v215 = Logger.logObject.getter();
      v216 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v215, v216))
      {
        v217 = swift_slowAlloc();
        v218 = swift_slowAlloc();
        aBlock = v218;
        *v217 = v308;
        sub_100451408();
        v219 = dispatch thunk of CustomStringConvertible.description.getter();
        v221 = v220;
        v337(v214, v7);
        v222 = sub_10000668C(v219, v221, &aBlock);
        v223 = v221;
        v131 = v339;
        v223, v224, v225, v226, v227, v228, v229, v230;
        *(v217 + 4) = v222;
        _os_log_impl(&_mh_execute_header, v215, v216, "downloadContainer zoneDirURL: %s", v217, 0xCu);
        sub_10000607C(v218);
      }

      else
      {

        v337(v214, v7);
      }

      URL._bridgeToObjectiveC()(v231);
      v233 = v232;
      aBlock = 0;
      v234 = [v336 createDirectoryAtURL:v232 withIntermediateDirectories:1 attributes:0 error:&aBlock];

      if (!v234)
      {
        v280 = aBlock;
        v319, v281, v282, v283, v284, v285, v286, v287;
        v288 = v326;

        _convertNSErrorToError(_:)();
        swift_willThrow();
        swift_errorRetain();
        v289 = _convertErrorToNSError(_:)();
        (*(v305 + 16))(v305, 0, v289);

        v290 = v337;
        v337(v131, v7);
        v290(v328, v7);

        return;
      }

      v235 = aBlock;
      URL.appendingPathComponent(_:)();
      v330 = swift_allocObject();
      *(v330 + 16) = 0;
      v236 = v318;

      v237 = v141;
      v238 = Logger.logObject.getter();
      v239 = static os_log_type_t.default.getter();
      v236, v240, v241, v242, v243, v244, v245, v246;

      v247 = v7;
      if (os_log_type_enabled(v238, v239))
      {
        v248 = swift_slowAlloc();
        v249 = swift_slowAlloc();
        v250 = swift_slowAlloc();
        aBlock = v250;
        *v248 = v307;
        *(v248 + 4) = v237;
        *v249 = v237;
        *(v248 + 12) = 2080;
        v251 = v237;
        *(v248 + 14) = sub_10000668C(v309, v236, &aBlock);
        _os_log_impl(&_mh_execute_header, v238, v239, "Downloading records in zone %@ for accountID %s", v248, 0x16u);
        sub_1000050A4(v249, &unk_100938E70, &unk_100797230);

        sub_10000607C(v250);
        v131 = v339;
      }

      sub_1000060C8(0, &qword_1009477A0, CKFetchRecordZoneChangesOperation_ptr);
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v252 = swift_allocObject();
      *(v252 + 16) = v311;
      *(v252 + 32) = v237;
      v329 = v237;
      v349.value._rawValue = v252;
      v349.is_nil = 0;
      isa = CKFetchRecordZoneChangesOperation.init(recordZoneIDs:configurationsByRecordZoneID:)(v349, v350).super.super.super.super.isa;
      v254 = v317;
      v255 = v333;
      v333(v317, v131, v247);
      v256 = v321;
      v255(v321, v340, v247);
      v257 = v320;
      v258 = *(v320 + 80);
      v259 = (v258 + 24) & ~v258;
      v260 = (v313 + v259) & 0xFFFFFFFFFFFFFFF8;
      v261 = (v260 + 15) & 0xFFFFFFFFFFFFFFF8;
      v262 = (v258 + v261 + 8) & ~v258;
      v263 = swift_allocObject();
      v264 = v322;
      *(v263 + 16) = v322;
      v265 = *(v257 + 4);
      v265(v263 + v259, v254, v341);
      *(v263 + v260) = v330;
      v266 = v336;
      *(v263 + v261) = v336;
      v265(v263 + v262, v256, v341);
      v267 = v264;

      v268 = v266;
      CKFetchRecordZoneChangesOperation.recordWasChangedBlock.setter();
      v269 = swift_allocObject();
      v270 = v327;
      *(v269 + 16) = v327;
      v346 = sub_100451C24;
      v347 = v269;
      aBlock = _NSConcreteStackBlock;
      v343 = 1107296256;
      v344 = sub_100019200;
      v345 = &unk_1008F2708;
      v271 = _Block_copy(&aBlock);
      v272 = v270;
      v273 = isa;
      v131 = v339;
      sub_10003E124(sub_100451C24, v269);
      v7 = v341;

      [(objc_class *)v273 setCompletionBlock:v271];
      _Block_release(v271);

      dispatch_group_enter(v272);
      v274 = v326;
      [(objc_class *)v273 setDatabase:v326];
      [v274 addOperation:v273];
      OS_dispatch_group.wait()();

      v275 = v337;
      v337(v340, v7);
      v275(v131, v7);

      v27 = v328;
      v23 = v319;
      v130 = v316;
      v132 = v315;
      v32 = v332;
      v8 = v331;
LABEL_27:
      ++v32;
      if (v8 == v130)
      {
        v23, v133, v134, v135, v136, v137, v138, v139;
        goto LABEL_19;
      }
    }

    v145, v147, v148, v149, v150, v151, v152, v153;
    v154, v186, v187, v188, v189, v190, v191, v192;
LABEL_41:
    v184 = 0x4465746176697250;
    v185 = 0xE900000000000042;
    goto LABEL_42;
  }

LABEL_50:
  v276 = v109;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  v277 = _convertErrorToNSError(_:)();
  (*(v305 + 16))(v305, 0, v277);

  v278 = v32;
  v279 = v341;
LABEL_51:
  v337(v278, v279);
}

_TtC7remindd19RDXPCStorePerformer *sub_100451010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = 2;
  v61 = a3;
  sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
  NSManagedObjectContext.rem_performAndWait<A>(_:)();
  if (v3)
  {
    return (v8 & 1);
  }

  v56 = 0;
  v19 = v62[0];
  if (!(v62[0] >> 62))
  {
    v20 = *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_4;
    }

LABEL_14:
    v19, v12, v13, v14, v15, v16, v17, v18;
    v24 = &_swiftEmptyArrayStorage;
LABEL_15:
    v62[0] = a1;
    v62[1] = a2;
    __chkstk_darwin(v44, v45);
    *(&v54 - 2) = v62;
    LOBYTE(v8) = sub_100040A74(sub_100040B20, (&v54 - 4), v24);
    v24, v47, v48, v49, v50, v51, v52, v53;
    return (v8 & 1);
  }

  v46 = v62[0];
  v20 = _CocoaArrayWrapper.endIndex.getter();
  v19 = v46;
  if (!v20)
  {
    goto LABEL_14;
  }

LABEL_4:
  v21 = v19;
  v54 = a1;
  v55 = a2;
  v62[0] = &_swiftEmptyArrayStorage;
  result = sub_100026EF4(0, v20 & ~(v20 >> 63), 0);
  v63 = v20;
  if ((v20 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v24 = v62[0];
    v25 = v21;
    v57 = (v8 + 8);
    v58 = v21 & 0xC000000000000001;
    v59 = v21;
    do
    {
      if (v58)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *&v25->clientIdentity[8 * v23 + 16];
      }

      v27 = v26;
      v28 = [v26 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = UUID.uuidString.getter();
      v31 = v30;

      v32 = v11;
      v33 = v11;
      v34 = v7;
      (*v57)(v33, v7);
      v62[0] = v24;
      v42 = *v24->clientIdentity;
      v41 = *&v24->clientIdentity[8];
      if (v42 >= v41 >> 1)
      {
        sub_100026EF4((v41 > 1), v42 + 1, 1);
        v24 = v62[0];
      }

      ++v23;
      *v24->clientIdentity = v42 + 1;
      v43 = v24 + 16 * v42;
      *(v43 + 4) = v29;
      *(v43 + 5) = v31;
      v7 = v34;
      v11 = v32;
      v25 = v59;
    }

    while (v63 != v23);
    v59, v59, v35, v36, v37, v38, v39, v40;
    a1 = v54;
    a2 = v55;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_100451334(void *a1, void *a2, char a3)
{
  v7 = *(type metadata accessor for URL() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 24) & ~v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v3 + 16);
  v13 = *(v3 + v10);
  v14 = *(v3 + v11);

  sub_10044E514(a1, a2, a3 & 1, v12, v3 + v9, v13, v14, v3 + ((v8 + v11 + 8) & ~v8));
}

unint64_t sub_100451408()
{
  result = qword_1009456F0;
  if (!qword_1009456F0)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009456F0);
  }

  return result;
}

void sub_100451460(uint64_t a1, void *a2)
{
  v97 = a2;
  v2 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = &v96 - v8;
  v98 = 0;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = CKRecord.recordType.getter();
  v17 = v16;
  v18 = [objc_opt_self() recordTypes];
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v19 + 16))
  {
    __break(1u);
    goto LABEL_34;
  }

  v96 = v14;
  v20 = *(v19 + 32);
  v21 = *(v19 + 40);

  v19, v22, v23, v24, v25, v26, v27, v28;
  if (v15 == v20 && v17 == v21)
  {
    v21, v29, v30, v31, v32, v33, v34, v35;
    v17, v52, v53, v54, v55, v56, v57, v58;
  }

  else
  {
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v21, v38, v39, v40, v41, v42, v43, v44;
    v17, v45, v46, v47, v48, v49, v50, v51;
    if ((v37 & 1) == 0)
    {
      return;
    }
  }

  if (!CKRecord.subscript.getter())
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v59 = swift_dynamicCastObjCClass();
  if (!v59)
  {
    swift_unknownObjectRelease();
LABEL_14:
    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_17:
    sub_1000050A4(v9, &unk_1009441F0, &qword_100795760);
    goto LABEL_18;
  }

  v60 = [v59 fileURL];
  swift_unknownObjectRelease();
  if (v60)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v11 + 56))(v5, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v5, 1, 1, v10);
  }

  v61 = v96;
  sub_10003E8F8(v5, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_17;
  }

  (*(v11 + 32))(v61, v9, v10);
  v77 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v79 = v78;
  v80 = String._bridgeToObjectiveC()();
  v79, v81, v82, v83, v84, v85, v86, v87;
  LODWORD(v79) = [v77 fileExistsAtPath:v80];

  if (v79)
  {
    v88 = v98;
    v89 = Data.init(contentsOf:options:)();
    v91 = (v11 + 8);
    if (!v88)
    {
      v63 = v89;
      v62 = v90;
      v98 = 0;
      (*v91)(v61, v10);
      goto LABEL_20;
    }

    (*v91)(v61, v10);
    v98 = 0;
  }

  else
  {
    (*(v11 + 8))(v61, v10);
  }

LABEL_18:
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();
  v62 = v104;
  if (v104 >> 60 == 15)
  {
    return;
  }

  v63 = v103;
LABEL_20:
  sub_100029344(v63, v62);
  v64 = [v97 storeController];
  if (!v64)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v65 = v64;
  v66 = String._bridgeToObjectiveC()();
  v67 = [v65 newBackgroundContextWithAuthor:v66];

  v68 = sub_10003A1B8();
  if (v68)
  {
    v69 = objc_allocWithZone(REMReplicaIDSource);
    v70 = v68;
    v71 = String._bridgeToObjectiveC()();
    v72 = [v69 initWithAccountID:v70 objectID:v70 property:v71];

    v73 = objc_allocWithZone(REMCRMergeableOrderedSet);
    v74 = v72;
    sub_100029344(v63, v62);
    v75 = v98;
    v76 = sub_1002F937C(v74);
    sub_10001BBA0(v63, v62);

    if (v75)
    {

      sub_10001BBA0(v63, v62);

      sub_100031A14(v63, v62);
    }

    else
    {
      sub_100031A14(v63, v62);
      if (v76)
      {
        *&v101 = 0xD00000000000001FLL;
        *(&v101 + 1) = 0x80000001007F8B80;
        AnyHashable.init<A>(_:)();
        v92 = [v76 orderedSet];
        v93 = [v92 array];

        v94 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v102 = sub_1000F5104(&qword_10093CB40, &qword_1007A4450);
        *&v101 = v94;
        sub_100005EE0(&v101, v100);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99 = _swiftEmptyDictionarySingleton;
        sub_1002C7E48(v100, &v103, isUniquelyReferenced_nonNull_native);

        sub_10001BBA0(v63, v62);
        sub_10001B2CC(&v103);
      }

      else
      {
        sub_10001BBA0(v63, v62);
      }
    }
  }

  else
  {
    sub_100031A14(v63, v62);
    sub_10001BBA0(v63, v62);
  }
}

uint64_t sub_100451BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_1009477B0, &qword_1007AA730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100451C2C(uint64_t a1, unint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer **a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v10 = *i;
      v18[0] = *(i - 1);
      v18[1] = v10;

      sub_100452B38(v18, a2, a3, a4);
      if (v4)
      {
        break;
      }

      v10, v11, v12, v13, v14, v15, v16, v17;
      if (!--v5)
      {
        return;
      }
    }

    v10, v11, v12, v13, v14, v15, v16, v17;
  }
}

void sub_100451CD4(uint64_t a1@<X8>)
{
  v4 = *(v1 + 32);
  v108 = v4;
  v5 = *(v4 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v6;
  v92[0] = a1;
  v93 = v6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_26;
  }

  for (i = sub_100010364(&v108, &v99, &unk_100945240, &qword_1007A0A70); ; i = sub_1000050A4(&v108, &unk_100945240, &qword_1007A0A70))
  {
    v92[1] = v92;
    __chkstk_darwin(i, v9);
    v10 = v92 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v7);
    v95 = 0;
    v11 = 0;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v7 = v13 & *(v4 + 56);
    v6 = (v12 + 63) >> 6;
    while (v7)
    {
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v17 = v14 | (v11 << 6);
      v18 = (*(v4 + 48) + 16 * v17);
      v19 = v18[1];
      if ((*v18 != 0x6C61636F6CLL || v19 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        v20._countAndFlagsBits = 0x7C6C61636F6CLL;
        v20._object = 0xE600000000000000;
        v21 = String.hasPrefix(_:)(v20);
        v19, v22, v23, v24, v25, v26, v27, v28;
        if (!v21)
        {
          *&v10[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
          if (__OFADD__(v95++, 1))
          {
            __break(1u);
LABEL_20:
            v30 = sub_1001A0BCC(v10, v93, v95, v4);
            v31 = v94;
            goto LABEL_21;
          }
        }
      }
    }

    v15 = v11;
    while (1)
    {
      v11 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v11 >= v6)
      {
        goto LABEL_20;
      }

      v16 = *(v4 + 56 + 8 * v11);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v7 = (v16 - 1) & v16;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    sub_100010364(&v108, &v99, &unk_100945240, &qword_1007A0A70);

    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      break;
    }
  }

  v89 = swift_slowAlloc();
  v90 = sub_1004ADE8C(v89, v6, v4, sub_1004521DC);
  if (v2)
  {
    sub_1000050A4(&v108, &unk_100945240, &qword_1007A0A70);

    __break(1u);
  }

  else
  {
    v91 = v90;
    v31 = 0;
    sub_1000050A4(&v108, &unk_100945240, &qword_1007A0A70);

    v30 = v91;
LABEL_21:
    sub_10045226C(v30, &v100);

    v32 = v100;
    v107 = v101;
    v98 = v101;
    v99 = &_swiftEmptyArrayStorage;
    v33 = v103;
    v106 = v102;
    v97 = v102;
    sub_100010364(&v107, v96, &qword_100939A08, &unk_100796A80);
    sub_100010364(&v106, v96, &unk_100945230, &qword_1007A2590);

    sub_100451C2C(v34, &v98, &v97, &v99);
    v32, v35, v36, v37, v38, v39, v40, v41;
    sub_1000050A4(&v107, &qword_100939A08, &unk_100796A80);
    sub_1000050A4(&v106, &unk_100945230, &qword_1007A2590);
    v33, v42, v43, v44, v45, v46, v47, v48;
    v105 = v104;
    sub_1000050A4(&v105, &unk_100945240, &qword_1007A0A70);
    v32, v49, v50, v51, v52, v53, v54, v55;
    v57 = v98;
    v56 = v99;
    v58 = v97;

    v59 = sub_1001A6DC0();
    sub_10015E0CC(v56, v58, v59);
    if (v31)
    {
      v59, v60, v61, v62, v63, v64, v65, v66;
      v33, v67, v68, v69, v70, v71, v72, v73;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v56, v60, v61, v62, v63, v64, v65, v66;
      v57, v74, v75, v76, v77, v78, v79, v80;
      v58, v81, v82, v83, v84, v85, v86, v87;
      v88 = v92[0];
      *v92[0] = v56;
      v88[1] = v57;
      v88[2] = v58;
      v88[3] = v33;
      v88[4] = v59;
    }
  }
}

BOOL sub_1004521DC(void *a1)
{
  v1 = *a1 == 0x6C61636F6CLL && a1[1] == 0xE500000000000000;
  result = 0;
  if (!v1 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v2._countAndFlagsBits = 0x7C6C61636F6CLL;
    v2._object = 0xE600000000000000;
    if (!String.hasPrefix(_:)(v2))
    {
      return 1;
    }
  }

  return result;
}

void sub_10045226C(uint64_t a1@<X0>, _TtC7remindd19RDXPCStorePerformer **a2@<X8>)
{
  v5 = v2[4];
  sub_100453404(a1, v5);
  v6 = *v2;
  if (v7)
  {
    v8 = v2[1];
    v9 = v2[2];
    v10 = v2[3];

LABEL_101:
    *a2 = v6;
    a2[1] = v8;
    a2[2] = v9;
    a2[3] = v10;
    a2[4] = v5;
    return;
  }

  v184 = v2;
  v180 = v5;
  v175 = a2;
  v11 = *v6->clientIdentity;
  if (!v11)
  {
    v6 = &_swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v12 = 0;
  v13 = &v6->clientIdentity[16];
  v14 = a1 + 56;
  v6 = &_swiftEmptyArrayStorage;
  v177 = v13;
  do
  {
    v15 = v12;
    v181 = v6;
    while (1)
    {
      if (v15 >= v11)
      {
        goto LABEL_103;
      }

      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
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
        __break(1u);
        goto LABEL_111;
      }

      v17 = v184[2];
      if (*v17->clientIdentity)
      {
        break;
      }

LABEL_8:
      v15 = v12;
      if (v12 == v11)
      {
        goto LABEL_30;
      }
    }

    v18 = &v13[16 * v15];
    v20 = *v18;
    v19 = v18[1];

    v21 = sub_100005F4C(v20, v19);
    if ((v22 & 1) == 0 || !*(a1 + 16))
    {
      v16 = v19;
LABEL_7:
      v16, v22, v23, v24, v25, v26, v27, v28;
      goto LABEL_8;
    }

    v29 = (*&v17->clientIdentity[40] + 16 * v21);
    v30 = *v29;
    v16 = v29[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v31 = Hasher._finalize()();
    v39 = -1 << *(a1 + 32);
    v40 = v31 & ~v39;
    if (((*(v14 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
    {
LABEL_22:
      v19, v32, v33, v34, v35, v36, v37, v38;
      v6 = v181;
      v13 = v177;
      goto LABEL_7;
    }

    v41 = ~v39;
    while (1)
    {
      v42 = (*(a1 + 48) + 16 * v40);
      v32 = v42[1];
      v43 = *v42 == v30 && v32 == v16;
      if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v40 = (v40 + 1) & v41;
      if (((*(v14 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v16, v32, v33, v34, v35, v36, v37, v38;
    v44 = v181;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100026EF4(0, *v181->clientIdentity + 1, 1);
      v44 = v181;
    }

    v13 = v177;
    v46 = *v44->clientIdentity;
    v45 = *&v44->clientIdentity[8];
    if (v46 >= v45 >> 1)
    {
      sub_100026EF4((v45 > 1), v46 + 1, 1);
      v44 = v181;
    }

    *v44->clientIdentity = v46 + 1;
    v47 = v44 + 16 * v46;
    *(v47 + 32) = v20;
    *(v47 + 40) = v19;
    v6 = v44;
  }

  while (v12 != v11);
LABEL_30:
  v176 = sub_10038EB78(&_swiftEmptyArrayStorage);
  v48 = *v6->clientIdentity;
  if (!v48)
  {
    v174 = sub_10038E004(&_swiftEmptyArrayStorage);
LABEL_71:
    v179 = sub_10038DA10(&_swiftEmptyArrayStorage);
    v125 = 1 << *(v180 + 32);
    if (v125 < 64)
    {
      v126 = ~(-1 << v125);
    }

    else
    {
      v126 = -1;
    }

    v127 = v126 & *(v180 + 56);
    v128 = (v125 + 63) >> 6;
    v129 = a1 + 56;

    v131 = 0;
    while (1)
    {
      do
      {
        if (!v127)
        {
          while (1)
          {
            v133 = v131 + 1;
            if (__OFADD__(v131, 1))
            {
              break;
            }

            if (v133 >= v128)
            {

              v10 = v179;

              v5 = sub_1001A6DC0();
              a2 = v175;
              v8 = v176;
              v9 = v174;
              goto LABEL_101;
            }

            v132 = *(v180 + 56 + 8 * v133);
            ++v131;
            if (v132)
            {
              v131 = v133;
              goto LABEL_81;
            }
          }

          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v132 = v127;
LABEL_81:
        v127 = (v132 - 1) & v132;
      }

      while (!*(a1 + 16));
      v183 = (v132 - 1) & v132;
      v134 = (*(v130 + 48) + ((v131 << 10) | (16 * __clz(__rbit64(v132)))));
      v135 = *v134;
      v136 = v134[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v137 = Hasher._finalize()();
      v145 = -1 << *(a1 + 32);
      v146 = v137 & ~v145;
      if (((*(v129 + ((v146 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v146) & 1) == 0)
      {
        goto LABEL_94;
      }

      v147 = ~v145;
      while (1)
      {
        v148 = (*(a1 + 48) + 16 * v146);
        v149 = *v148 == v135 && v148[1] == v136;
        if (v149 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v146 = (v146 + 1) & v147;
        if (((*(v129 + ((v146 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v146) & 1) == 0)
        {
          goto LABEL_94;
        }
      }

      v150 = v184[3];
      if (!*v150->clientIdentity)
      {
        break;
      }

      v151 = sub_100005F4C(v135, v136);
      if ((v152 & 1) == 0)
      {
        break;
      }

      v170 = *(*&v150->clientIdentity[40] + 8 * v151);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1002C6EC8(v135, v136, isUniquelyReferenced_nonNull_native, v170);
      swift_bridgeObjectRelease_n();
LABEL_95:
      v130 = v180;
      v127 = v183;
    }

    v153 = sub_100005F4C(v135, v136);
    v155 = v154;
    v136, v154, v156, v157, v158, v159, v160, v161;
    if (v155)
    {
      v162 = v179;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100373044();
        v162 = v179;
      }

      *(*(v162 + 48) + 16 * v153 + 8), v163, v164, v165, v166, v167, v168, v169;
      v179 = v162;
      sub_100332708(v153, v162);
    }

LABEL_94:
    v136, v138, v139, v140, v141, v142, v143, v144;
    goto LABEL_95;
  }

  v49 = 0;
  v50 = &v6->clientIdentity[24];
  v182 = v48 - 1;
  v51 = v184;
  do
  {
    v52 = &v50[16 * v49];
    v53 = v49;
    while (1)
    {
      if (v53 >= *v6->clientIdentity)
      {
        goto LABEL_105;
      }

      v54 = v51[1];
      if (*v54->clientIdentity)
      {
        break;
      }

LABEL_33:
      ++v53;
      v52 += 2;
      if (v48 == v53)
      {
        goto LABEL_49;
      }
    }

    v55 = *(v52 - 1);
    v56 = *v52;

    v57 = sub_100005F4C(v55, v56);
    if ((v58 & 1) == 0)
    {
      v56, v58, v59, v60, v61, v62, v63, v64;
      goto LABEL_33;
    }

    v178 = v50;
    v65 = *(*&v54->clientIdentity[40] + 8 * v57);

    v66 = swift_isUniquelyReferenced_nonNull_native();
    v67 = sub_100005F4C(v55, v56);
    v75 = *v176->clientIdentity;
    v76 = (v68 & 1) == 0;
    v77 = __OFADD__(v75, v76);
    v78 = v75 + v76;
    if (v77)
    {
      goto LABEL_107;
    }

    v79 = v68;
    if (*&v176->clientIdentity[8] >= v78)
    {
      if ((v66 & 1) == 0)
      {
        v85 = v67;
        sub_10037443C();
        v67 = v85;
      }
    }

    else
    {
      sub_10036C5F8(v78, v66);
      v67 = sub_100005F4C(v55, v56);
      if ((v79 & 1) != (v68 & 1))
      {
        goto LABEL_111;
      }
    }

    if (v79)
    {
      v80 = *&v176->clientIdentity[40];
      v81 = *(v80 + 8 * v67);
      *(v80 + 8 * v67) = v65;
      swift_bridgeObjectRelease_n();
      v56 = v81;
      goto LABEL_48;
    }

    *&v176->storeProvider[8 * (v67 >> 6) + 2] |= 1 << v67;
    v82 = (*&v176->clientIdentity[32] + 16 * v67);
    *v82 = v55;
    v82[1] = v56;
    *(*&v176->clientIdentity[40] + 8 * v67) = v65;
    v83 = *v176->clientIdentity;
    v77 = __OFADD__(v83, 1);
    v84 = v83 + 1;
    if (v77)
    {
      goto LABEL_109;
    }

    *v176->clientIdentity = v84;
LABEL_48:
    v51 = v184;
    v50 = v178;
    v49 = v53 + 1;
    v56, v68, v69, v70, v71, v72, v73, v74;
  }

  while (v182 != v53);
LABEL_49:
  v86 = sub_10038E004(&_swiftEmptyArrayStorage);
  v87 = 0;
  v88 = &v6->clientIdentity[24];
  while (2)
  {
    v89 = &v88[16 * v87];
    v90 = v87;
    while (2)
    {
      if (v90 >= *v6->clientIdentity)
      {
        goto LABEL_106;
      }

      v91 = v51[2];
      if (!*v91->clientIdentity)
      {
LABEL_52:
        ++v90;
        v89 += 2;
        if (v48 == v90)
        {
          goto LABEL_69;
        }

        continue;
      }

      break;
    }

    v92 = *(v89 - 1);
    v93 = *v89;

    v94 = sub_100005F4C(v92, v93);
    if ((v95 & 1) == 0)
    {
      v93, v95, v96, v97, v98, v99, v100, v101;
      goto LABEL_52;
    }

    v102 = (*&v91->clientIdentity[40] + 16 * v94);
    v103 = v102[1];
    v172 = *v102;

    v173 = v103;

    v104 = v86;
    v105 = swift_isUniquelyReferenced_nonNull_native();
    v113 = sub_100005F4C(v92, v93);
    v114 = v104[2];
    v115 = (v106 & 1) == 0;
    v116 = v114 + v115;
    if (__OFADD__(v114, v115))
    {
      goto LABEL_108;
    }

    v117 = v106;
    if (v104[3] >= v116)
    {
      if (v105)
      {
        v86 = v104;
        if (v106)
        {
          goto LABEL_64;
        }
      }

      else
      {
        sub_100373664();
        v86 = v104;
        if (v117)
        {
          goto LABEL_64;
        }
      }

LABEL_60:
      v86[(v113 >> 6) + 8] |= 1 << v113;
      v119 = (v86[6] + 16 * v113);
      *v119 = v92;
      v119[1] = v93;
      v120 = (v86[7] + 16 * v113);
      *v120 = v172;
      v120[1] = v173;
      v121 = v86[2];
      v77 = __OFADD__(v121, 1);
      v122 = v121 + 1;
      if (!v77)
      {
        v86[2] = v122;
        goto LABEL_65;
      }

      goto LABEL_110;
    }

    sub_10036A8F0(v116, v105);
    v118 = sub_100005F4C(v92, v93);
    if ((v117 & 1) == (v106 & 1))
    {
      v113 = v118;
      v86 = v104;
      if ((v117 & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_64:
      v123 = (v86[7] + 16 * v113);
      v124 = v123[1];
      *v123 = v172;
      v123[1] = v173;
      swift_bridgeObjectRelease_n();
      v93 = v124;
LABEL_65:
      v51 = v184;
      v88 = &v6->clientIdentity[24];
      v87 = v90 + 1;
      v93, v106, v107, v108, v109, v110, v111, v112;
      if (v182 == v90)
      {
LABEL_69:
        v174 = v86;
        goto LABEL_71;
      }

      continue;
    }

    break;
  }

LABEL_111:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100452B38(uint64_t *a1, unint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer **a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8._countAndFlagsBits = 0x7C6C61636F6CLL;
  v8._object = 0xE600000000000000;
  if (String.hasPrefix(_:)(v8))
  {
    v9 = sub_100369184(v6, v7);
    v9, v10, v11, v12, v13, v14, v15, v16;
    sub_100368F18(v6, v7);
    v17, v17, v18, v19, v20, v21, v22, v23;
  }

  else
  {
    v24 = *a4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_26:
      v24 = sub_100365788(0, *v24->clientIdentity + 1, 1, v24, v26, v27, v28, v29);
      *a4 = v24;
    }

    v31 = *v24->clientIdentity;
    v30 = *&v24->clientIdentity[8];
    if (v31 >= v30 >> 1)
    {
      v24 = sub_100365788((v30 > 1), v31 + 1, 1, v24, v26, v27, v28, v29);
      *a4 = v24;
    }

    *v24->clientIdentity = v31 + 1;
    v32 = v24 + 16 * v31;
    *(v32 + 4) = v6;
    *(v32 + 5) = v7;
    v33 = *a2;
    v34 = *(*a2 + 16);

    if (v34 && (v35 = sub_100005F4C(v6, v7), (v36 & 1) != 0))
    {
      v24 = *(*(v33 + 56) + 8 * v35);
      v37 = *v24->clientIdentity;

      if (v37)
      {
        a2 = 0;
        v41 = &v24->clientIdentity[24];
        v42 = &_swiftEmptyArrayStorage;
        do
        {
          v59 = v42;
          a4 = &v41[16 * a2];
          v43 = a2;
          while (1)
          {
            if (v43 >= *v24->clientIdentity)
            {
              __break(1u);
              goto LABEL_26;
            }

            v45 = *(a4 - 1);
            v44 = *a4;
            a2 = v43 + 1;

            v46._countAndFlagsBits = 0x7C6C61636F6CLL;
            v46._object = 0xE600000000000000;
            if (!String.hasPrefix(_:)(v46))
            {
              break;
            }

            v44, v47, v48, v49, v50, v51, v52, v53;
            a4 += 2;
            ++v43;
            if (v37 == a2)
            {
              v42 = v59;
              goto LABEL_23;
            }
          }

          v42 = v59;
          v61 = v59;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100026EF4(0, *v59->clientIdentity + 1, 1);
            v42 = v59;
          }

          v55 = *v42->clientIdentity;
          v54 = *&v42->clientIdentity[8];
          v56 = v55 + 1;
          if (v55 >= v54 >> 1)
          {
            v60 = v55 + 1;
            v58 = *v42->clientIdentity;
            sub_100026EF4((v54 > 1), v55 + 1, 1);
            v56 = v60;
            v55 = v58;
            v42 = v61;
          }

          *v42->clientIdentity = v56;
          v57 = v42 + 16 * v55;
          *(v57 + 4) = v45;
          *(v57 + 5) = v44;
          v41 = &v24->clientIdentity[24];
        }

        while (v37 - 1 != v43);
      }

      else
      {
        v42 = &_swiftEmptyArrayStorage;
      }

LABEL_23:
      v24, v38, v39, v40, v26, v27, v28, v29;
    }

    else
    {
      v42 = 0;
    }

    sub_10031DAF8(v42, v6, v7);
  }
}

void sub_100452DF0(_OWORD *a1@<X8>)
{
  v3 = v2;
  v57 = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = &v55 - v11;
  Date.init()();
  Date.addingTimeInterval(_:)();
  v13 = *(v5 + 8);
  v13(v8, v4);
  Date.timeIntervalSinceReferenceDate.getter();
  v15 = v14;
  v13(v12, v4);
  v16 = *(v3 + 32);
  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v16 + 56);
  v20 = (v17 + 63) >> 6;

  v21 = 0;
  v22 = &_swiftEmptyArrayStorage;
  while (v19)
  {
    v23 = v19;
LABEL_11:
    v19 = (v23 - 1) & v23;
    v25 = *(v3 + 24);
    if (*(v25 + 16))
    {
      v26 = (*(v16 + 48) + ((v21 << 10) | (16 * __clz(__rbit64(v23)))));
      v28 = *v26;
      v27 = v26[1];

      v29 = sub_100005F4C(v28, v27);
      if ((v30 & 1) == 0)
      {
        goto LABEL_4;
      }

      v37 = *(*(v25 + 56) + 8 * v29);
      if (qword_1009363E8 != -1)
      {
        swift_once();
      }

      v38 = v28 == qword_100974F40 && v27 == *algn_100974F48;
      if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v15 <= v37)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v58[0] = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100026EF4(0, *v22->clientIdentity + 1, 1);
          v22 = *&v58[0];
        }

        v41 = *v22->clientIdentity;
        v40 = *&v22->clientIdentity[8];
        v42 = v41 + 1;
        if (v41 >= v40 >> 1)
        {
          v44 = v41 + 1;
          v56 = v41;
          sub_100026EF4((v40 > 1), v41 + 1, 1);
          v41 = v56;
          v42 = v44;
          v22 = *&v58[0];
        }

        *v22->clientIdentity = v42;
        v43 = v22 + 16 * v41;
        *(v43 + 4) = v28;
        *(v43 + 5) = v27;
      }

      else
      {
LABEL_4:
        v27, v30, v31, v32, v33, v34, v35, v36;
      }
    }
  }

  while (1)
  {
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v24 >= v20)
    {

      v45 = sub_1001A5660(v22);

      sub_10045226C(v45, v58);
      v45, v46, v47, v48, v49, v50, v51, v52;
      v53 = v58[1];
      v54 = v57;
      *v57 = v58[0];
      v54[1] = v53;
      *(v54 + 4) = v59;
      return;
    }

    v23 = *(v16 + 56 + 8 * v24);
    ++v21;
    if (v23)
    {
      v21 = v24;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_10045312C(_TtC7remindd19RDXPCStorePerformer **a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = sub_10038DA10(&_swiftEmptyArrayStorage);
  v4 = v2 + 64;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;
  v87 = v2;

  v9 = 0;
  v86 = v2 + 64;
  while (v7)
  {
    v18 = v9;
LABEL_11:
    v19 = __clz(__rbit64(v7)) | (v18 << 6);
    v20 = (*(v87 + 48) + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    v23 = *(*(v87 + 56) + 8 * v19);
    swift_bridgeObjectRetain_n();
    v24 = Int32.init(timeIntervalSinceReferenceDate:)(v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_100005F4C(v22, v21);
    v34 = *(v3 + 16);
    v35 = (v27 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v38 = v27;
    if (*(v3 + 24) >= v37)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = v26;
        sub_100373044();
        v26 = v43;
      }
    }

    else
    {
      sub_100369F58(v37, isUniquelyReferenced_nonNull_native);
      v26 = sub_100005F4C(v22, v21);
      if ((v38 & 1) != (v27 & 1))
      {
        goto LABEL_26;
      }
    }

    v7 &= v7 - 1;
    v39 = v24;
    if (v38)
    {
      v10 = v26;
      v21, v27, v28, v29, v30, v31, v32, v33;
      *(*(v3 + 56) + 8 * v10) = v39;
      v21, v11, v12, v13, v14, v15, v16, v17;
    }

    else
    {
      *(v3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v40 = (*(v3 + 48) + 16 * v26);
      *v40 = v22;
      v40[1] = v21;
      *(*(v3 + 56) + 8 * v26) = v39;
      v21, v27, v28, v29, v30, v31, v32, v33;
      v41 = *(v3 + 16);
      v36 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v36)
      {
        goto LABEL_25;
      }

      *(v3 + 16) = v42;
    }

    v9 = v18;
    v4 = v86;
  }

  while (1)
  {
    v18 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v18 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v18);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  v44 = *v84;
  v45 = v84[1];
  v46 = v84[2];

  v47 = sub_1001A6DC0();
  sub_10015E0CC(v44, v46, v47);
  if (v85)
  {
    v47, v48, v49, v50, v51, v52, v53, v54;
    v3, v55, v56, v57, v58, v59, v60, v61;
    v46, v62, v63, v64, v65, v66, v67, v68;
    v45, v69, v70, v71, v72, v73, v74, v75;
    v44, v76, v77, v78, v79, v80, v81, v82;
  }

  else
  {
    *a1 = v44;
    a1[1] = v45;
    a1[2] = v46;
    a1[3] = v3;
    a1[4] = v47;
  }
}

void sub_100453404(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v10 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v27 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
            return;
          }

          if (v27 >= v8)
          {
            goto LABEL_22;
          }

          v7 = *(v4 + 8 * v27);
          ++v10;
        }

        while (!v7);
        v10 = v27;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v11 = (*(v2 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
      v13 = *v11;
      v12 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();
      v21 = -1 << *(a1 + 32);
      v22 = v14 & ~v21;
      if (((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v23 = ~v21;
      while (1)
      {
        v24 = (*(a1 + 48) + 16 * v22);
        v25 = v24[1];
        v26 = *v24 == v13 && v25 == v12;
        if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v12, v25, v15, v16, v17, v18, v19, v20;
    }

LABEL_23:

    v12, v28, v29, v30, v31, v32, v33, v34;
  }
}

void sub_1004535E0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.count.getter();
    v6 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*(a1 + 16) < v5)
    {
      return;
    }

    goto LABEL_7;
  }

  v5 = *(a2 + 16);
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (__CocoaSet.count.getter() < v5)
  {
    return;
  }

LABEL_7:
  if (v4)
  {

    __CocoaSet.makeIterator()();
    sub_1000F5104(&qword_10093AA30, &qword_1007AE460);
    sub_10045390C();
    Set.Iterator.init(_cocoa:)();
    v2 = v32;
    v7 = v33;
    v8 = v34;
    v9 = v35;
    v10 = v36;
  }

  else
  {
    v11 = -1 << *(v2 + 32);
    v7 = v2 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v2 + 56);

    v9 = 0;
  }

  sub_1000F5104(&qword_10093AA30, &qword_1007AE460);
  v28 = v7;
  v14 = (v8 + 64) >> 6;
  v29 = v2;
  v15 = a1 + 56;
  while (1)
  {
    while (v2 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
LABEL_35:
        sub_10001B860(v2);
        return;
      }

      swift_dynamicCast();
      v20 = v10;
      v18 = v31;
      v30 = v20;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_21:
      v19 = __CocoaSet.contains(_:)();

      v10 = v30;
      if ((v19 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v16 = v10;
    if (!v10)
    {
      break;
    }

LABEL_20:
    v30 = (v16 - 1) & v16;
    v31 = *(*(v2 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v16)))));
    v18 = v31;
    if (v6)
    {
      goto LABEL_21;
    }

LABEL_25:
    v27 = v6;
    if (!*(a1 + 16) || (v21 = NSObject._rawHashValue(seed:)(*(a1 + 40)), v22 = -1 << *(a1 + 32), v23 = v21 & ~v22, ((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0))
    {
LABEL_32:

      v2 = v29;
LABEL_33:
      sub_10001B860(v2);
      return;
    }

    v24 = ~v22;
    while (1)
    {
      v25 = *(*(a1 + 48) + 8 * v23);
      v26 = static NSObject.== infix(_:_:)();

      if (v26)
      {
        break;
      }

      v23 = (v23 + 1) & v24;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v7 = v28;
    v2 = v29;
    v6 = v27;
    v10 = v30;
  }

  v17 = v9;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_35;
    }

    v16 = *(v7 + 8 * v9);
    ++v17;
    if (v16)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

unint64_t sub_10045390C()
{
  result = qword_10094A190;
  if (!qword_10094A190)
  {
    sub_1000F514C(&qword_10093AA30, &qword_1007AE460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A190);
  }

  return result;
}

uint64_t sub_100453970(void *a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v36 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100453F50(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000050A4(v7, &unk_100938850, qword_100795AE0);
    if (qword_1009361B0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_1009477C8);
    v14 = a1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "No checked-in -- Checking in {interaction: %@}", v17, 0xCu);
      sub_1000050A4(v18, &unk_100938E70, &unk_100797230);
    }

    sub_1004542C8(v14, a2);
    return 1;
  }

  (*(v9 + 32))(v12, v7, v8);
  Date.timeIntervalSince(_:)();
  if (v20 >= 10800.0)
  {
    if (qword_1009361B0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_1009477C8);
    v30 = a1;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v30;
      *v34 = v30;
      v35 = v30;
      _os_log_impl(&_mh_execute_header, v31, v32, "timeout expired -- reset check-in {interaction: %@}", v33, 0xCu);
      sub_1000050A4(v34, &unk_100938E70, &unk_100797230);
    }

    sub_1004542C8(v30, a2);
    (*(v9 + 8))(v12, v8);
    return 1;
  }

  if (qword_1009361B0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006654(v21, qword_1009477C8);
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "timeout hasn't expired -- don't check-in {interaction: %@}", v25, 0xCu);
    sub_1000050A4(v26, &unk_100938E70, &unk_100797230);
  }

  (*(v9 + 8))(v12, v8);
  return 0;
}

uint64_t sub_100453E88()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009477C8);
  v1 = sub_100006654(v0, qword_1009477C8);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100453F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v47 = sub_1000F5104(&qword_100944128, &qword_1007A4890);
  v3 = *(v47 - 8);
  __chkstk_darwin(v47, v4);
  v45 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6, v7);
  v9 = (&v45 - v8);
  v10 = sub_1000F5104(&qword_100947880, &qword_1007AA7D0);
  __chkstk_darwin(v10 - 8, v11);
  v46 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v45 - v15;
  result = sub_100454C38();
  v25 = result;
  v26 = *(result + 16);
  if (v26)
  {
    v27 = 0;
    while (v27 < *(v25 + 16))
    {
      sub_100455348(v25 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v27, v9);
      if ([*v9 matchesContactRepresentation:a1])
      {
        v25, v28, v29, v30, v31, v32, v33, v34;
        sub_100031B58(v9, v16, &qword_100944128, &qword_1007A4890);
        v35 = 0;
        goto LABEL_8;
      }

      ++v27;
      result = sub_1000050A4(v9, &qword_100944128, &qword_1007A4890);
      if (v26 == v27)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v25, v18, v19, v20, v21, v22, v23, v24;
    v35 = 1;
LABEL_8:
    v36 = v47;
    (*(v3 + 56))(v16, v35, 1, v47);
    v37 = v46;
    sub_100031B58(v16, v46, &qword_100947880, &qword_1007AA7D0);
    if ((*(v3 + 48))(v37, 1, v36) == 1)
    {
      v38 = type metadata accessor for Date();
      return (*(*(v38 - 8) + 56))(v48, 1, 1, v38);
    }

    else
    {
      v39 = v45;
      sub_100031B58(v37, v45, &qword_100944128, &qword_1007A4890);

      v40 = *(v36 + 48);
      v41 = type metadata accessor for Date();
      v42 = *(v41 - 8);
      v43 = v39 + v40;
      v44 = v48;
      (*(v42 + 32))(v48, v43, v41);
      return (*(v42 + 56))(v44, 0, 1, v41);
    }
  }

  return result;
}

uint64_t sub_1004542C8(void *a1, uint64_t a2)
{
  v109 = a2;
  v110 = a1;
  v108 = type metadata accessor for Date();
  v105 = *(v108 - 8);
  __chkstk_darwin(v108, v3);
  v104 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v8 = &v96 - v7;
  v106 = sub_1000F5104(&qword_100944128, &qword_1007A4890);
  v9 = *(v106 - 8);
  __chkstk_darwin(v106, v10);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = (&v96 - v14);
  v103 = v2;
  v16 = sub_100454C38();
  v112 = v16;
  v17 = *v16->clientIdentity;

  if (v17)
  {
    v25 = 0;
    while (1)
    {
      if (v25 >= *v16->clientIdentity)
      {
        __break(1u);
        goto LABEL_23;
      }

      sub_100455348(v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v25, v15);
      v26 = [*v15 matchesContactRepresentation:v110];
      sub_1000050A4(v15, &qword_100944128, &qword_1007A4890);
      if (v26)
      {
        break;
      }

      if (v17 == ++v25)
      {
        goto LABEL_6;
      }
    }

    v16, v18, v19, v20, v21, v22, v23, v24;
    if (qword_1009361B0 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100006654(v53, qword_1009477C8);
    v54 = v105;
    v30 = *(v105 + 16);
    v102 = (v105 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v104 = v8;
    v55 = v8;
    v56 = v108;
    v30(v55, v109, v108);
    v57 = v110;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();

    v60 = os_log_type_enabled(v58, v59);
    v17 = v107;
    if (v60)
    {
      v61 = swift_slowAlloc();
      v101 = v30;
      v62 = v61;
      v63 = swift_slowAlloc();
      v99 = v63;
      v100 = swift_slowAlloc();
      v111[0] = v100;
      *v62 = 138412546;
      *(v62 + 4) = v57;
      *v63 = v57;
      v56 = v108;
      *(v62 + 12) = 2080;
      sub_100455E78();
      v98 = v59;
      v64 = v57;
      v97 = v58;
      v65 = v104;
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      v68 = *(v54 + 8);
      v68(v65, v56);
      v69 = sub_10000668C(v96, v67, v111);
      v67, v70, v71, v72, v73, v74, v75, v76;
      *(v62 + 14) = v69;
      v77 = v97;
      _os_log_impl(&_mh_execute_header, v97, v98, "Replacing existing checkIn {interaction: %@, date: %s}", v62, 0x16u);
      sub_1000050A4(v99, &unk_100938E70, &unk_100797230);

      sub_10000607C(v100);

      v30 = v101;
    }

    else
    {

      v68 = *(v54 + 8);
      v68(v104, v56);
    }

    sub_10042CA3C(v25, v15);

    v52 = v106;
    v68(v15 + *(v106 + 48), v56);
    v32 = v56;
  }

  else
  {
LABEL_6:
    v16, v18, v19, v20, v21, v22, v23, v24;
    if (qword_1009361B0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006654(v27, qword_1009477C8);
    v29 = v104;
    v28 = v105;
    v30 = *(v105 + 16);
    v31 = (v105 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v32 = v108;
    v30(v104, v109, v108);
    v33 = v110;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v101 = v30;
      v37 = v36;
      v38 = swift_slowAlloc();
      v102 = v31;
      v39 = v38;
      v100 = swift_slowAlloc();
      v111[0] = v100;
      *v37 = 138412546;
      *(v37 + 4) = v33;
      *v39 = v33;
      *(v37 + 12) = 2080;
      sub_100455E78();
      v40 = v33;
      v32 = v108;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      (*(v28 + 8))(v29, v32);
      v44 = sub_10000668C(v41, v43, v111);
      v43, v45, v46, v47, v48, v49, v50, v51;
      *(v37 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v34, v35, "CheckIn not found -- Adding new one {interaction: %@, date: %s}", v37, 0x16u);
      sub_1000050A4(v39, &unk_100938E70, &unk_100797230);

      sub_10000607C(v100);

      v30 = v101;
    }

    else
    {

      (*(v28 + 8))(v29, v32);
    }

    v52 = v106;
    v17 = v107;
  }

  v78 = *(v52 + 48);
  v79 = v109;
  v80 = v110;
  *v17 = v110;
  v30(&v17[v78], v79, v32);
  v16 = v112;
  v81 = v80;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_23:
    v16 = sub_100367734(0, *v16->clientIdentity + 1, 1, v16);
  }

  v83 = *v16->clientIdentity;
  v82 = *&v16->clientIdentity[8];
  if (v83 >= v82 >> 1)
  {
    v16 = sub_100367734((v82 > 1), v83 + 1, 1, v16);
  }

  *v16->clientIdentity = v83 + 1;
  sub_100031B58(v17, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v83, &qword_100944128, &qword_1007A4890);
  v84 = sub_100455978(v16);
  v86 = v85;
  v16, v85, v87, v88, v89, v90, v91, v92;
  v93 = v103[5];
  v94 = v103[6];
  sub_10000F61C(v103 + 2, v93);
  (*(v94 + 8))(v84, v86, v93, v94);
  return sub_10001BBA0(v84, v86);
}

_TtC7remindd19RDXPCStorePerformer *sub_100454C38()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10000F61C(v0 + 2, v1);
  v3 = (*(v2 + 16))(v1, v2);
  if (v4 >> 60 == 15)
  {
    if (qword_1009361B0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_1009477C8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No stored checkIns -- returning empty array", v8, 2u);
    }

    return &_swiftEmptyArrayStorage;
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v12 = sub_1004553B8(v3, v4);
    sub_100031A14(v9, v10);
    return v12;
  }
}

uint64_t sub_100454EF4@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *a1 >> 62;
  if (v5)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result == 2)
    {
LABEL_3:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return result;
        }

        v7 = *(v4 + 32);
        swift_unknownObjectRetain();
      }

      ObjectType = swift_getObjectType();
      v32[0] = v7;
      sub_1000060C8(0, &unk_10093C970, REMContactRepresentation_ptr);
      throwingCast<A>(_:as:failureMessage:)();
      result = sub_10000607C(v32);
      if (v2)
      {
        return result;
      }

      v8 = v34;
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_11:
        ObjectType = swift_getObjectType();
        v32[0] = v9;
        sub_1000060C8(0, &qword_100947898, NSDate_ptr);
        throwingCast<A>(_:as:failureMessage:)();
        sub_10000607C(v32);
        v10 = v34;
        v11 = sub_1000F5104(&qword_100944128, &qword_1007A4890);
        *a2 = v8;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
      {
        v9 = *(v4 + 40);
        swift_unknownObjectRetain();
        goto LABEL_11;
      }

      goto LABEL_24;
    }
  }

  else
  {
    result = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == 2)
    {
      goto LABEL_3;
    }
  }

  if (qword_1009361B0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_1009477C8);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    if (v5)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v22 + 4) = v23;
    v4, v15, v16, v17, v18, v19, v20, v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Unexpected count for checkIn {count: %ld}", v22, 0xCu);
  }

  else
  {

    v4, v24, v25, v26, v27, v28, v29, v30;
  }

  v31 = sub_1000F5104(&qword_100944128, &qword_1007A4890);
  return (*(*(v31 - 8) + 56))(a2, 1, 1, v31);
}

void sub_100455264()
{
  v1 = *v0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v1 setUserInteractionsData:isa];
}

uint64_t sub_1004552BC()
{
  v1 = [*v0 userInteractionsData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100455348(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100944128, &qword_1007A4890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_TtC7remindd19RDXPCStorePerformer *sub_1004553B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000F5104(&qword_100947880, &qword_1007AA7D0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = (&v63 - v5);
  v7 = sub_1000F5104(&qword_100944128, &qword_1007A4890);
  v68 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v63 - v13;
  sub_1000060C8(0, &qword_100946F90, NSKeyedUnarchiver_ptr);
  sub_1000F5104(&qword_100947888, &qword_1007AA7D8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100791320;
  *(v15 + 32) = sub_1000060C8(0, &qword_100947890, NSArray_ptr);
  *(v15 + 40) = sub_1000060C8(0, &unk_10093C970, REMContactRepresentation_ptr);
  *(v15 + 48) = sub_1000060C8(0, &qword_100947898, NSDate_ptr);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
  v23 = v2;
  if (v2)
  {
    v15, v16, v17, v18, v19, v20, v21, v22;
    if (qword_1009361B0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

  v64 = v14;
  v24 = v68;
  v67 = v10;
  v15, v16, v17, v18, v19, v20, v21, v22;
  sub_1000F5104(&qword_1009478A0, qword_1007AA7E0);
  throwingCast<A>(_:as:failureMessage:)();
  v23 = v70;
  v66 = *(v70 + 16);
  if (v66)
  {
    v50 = 0;
    v51 = (v24 + 48);
    v48 = &_swiftEmptyArrayStorage;
    v65 = v7;
    v52 = v64;
    while (v50 < *(v23 + 16))
    {
      v70 = *(v23 + 8 * v50 + 32);
      v53 = v70;

      sub_100454EF4(&v70, v6);
      v53, v54, v55, v56, v57, v58, v59, v60;
      if ((*v51)(v6, 1, v7) == 1)
      {
        sub_1000050A4(v6, &qword_100947880, &qword_1007AA7D0);
      }

      else
      {
        sub_100031B58(v6, v52, &qword_100944128, &qword_1007A4890);
        sub_100031B58(v52, v67, &qword_100944128, &qword_1007A4890);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_100367734(0, *v48->clientIdentity + 1, 1, v48);
        }

        v62 = *v48->clientIdentity;
        v61 = *&v48->clientIdentity[8];
        if (v62 >= v61 >> 1)
        {
          v48 = sub_100367734((v61 > 1), v62 + 1, 1, v48);
        }

        *v48->clientIdentity = v62 + 1;
        sub_100031B58(v67, v48 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v62, &qword_100944128, &qword_1007A4890);
        v7 = v65;
      }

      if (v66 == ++v50)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
LABEL_5:
    v32 = type metadata accessor for Logger();
    sub_100006654(v32, qword_1009477C8);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v69[0] = v36;
      *v35 = 136446210;
      v70 = v23;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v37 = String.init<A>(describing:)();
      v39 = v38;
      v40 = sub_10000668C(v37, v38, v69);
      v39, v41, v42, v43, v44, v45, v46, v47;
      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "Failed to decoded encoded CheckIns -- return empty array {error: %{public}s}", v35, 0xCu);
      sub_10000607C(v36);
    }

    return &_swiftEmptyArrayStorage;
  }

  v48 = &_swiftEmptyArrayStorage;
LABEL_21:
  v23, v25, v26, v27, v28, v29, v30, v31;
  sub_1000050A4(v69, &qword_100939ED0, &qword_100791B10);
  return v48;
}

uint64_t sub_100455978(uint64_t a1)
{
  v63 = sub_1000F5104(&qword_100944128, &qword_1007A4890);
  v3 = *(v63 - 8);
  __chkstk_darwin(v63, v4);
  v62 = (v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6, v7);
  v61 = (v57 - v8);
  __chkstk_darwin(v9, v10);
  v60 = v57 - v11;
  v12 = *(a1 + 16);
  v13 = &_swiftEmptyArrayStorage;
  if (v12)
  {
    v57[1] = v1;
    v67 = &_swiftEmptyArrayStorage;
    sub_100253988(0, v12, 0);
    v13 = v67;
    v14 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v59 = *(v3 + 72);
    v58 = xmmword_100796900;
    do
    {
      v65 = v12;
      v15 = v60;
      sub_100455348(v14, v60);
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v16 = swift_allocObject();
      *(v16 + 16) = v58;
      v17 = v61;
      sub_100455348(v15, v61);
      v18 = *v17;
      v20 = v62;
      v19 = v63;
      v64 = *(v63 + 48);
      *(v16 + 32) = v18;
      sub_100455348(v15, v20);

      v21 = *(v19 + 48);
      *(v16 + 40) = Date._bridgeToObjectiveC()();
      sub_1000050A4(v15, &qword_100944128, &qword_1007A4890);
      v22 = type metadata accessor for Date();
      v23 = *(*(v22 - 8) + 8);
      v23(v20 + v21, v22);
      v23(v17 + v64, v22);
      v67 = v13;
      v25 = *v13->clientIdentity;
      v24 = *&v13->clientIdentity[8];
      if (v25 >= v24 >> 1)
      {
        sub_100253988((v24 > 1), v25 + 1, 1);
        v13 = v67;
      }

      *v13->clientIdentity = v25 + 1;
      *&v13->clientIdentity[8 * v25 + 16] = v16;
      v14 += v59;
      v12 = v65 - 1;
    }

    while (v65 != 1);
  }

  v26 = objc_opt_self();
  sub_1000F5104(&qword_10093EE80, &unk_10079D630);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v13, v28, v29, v30, v31, v32, v33, v34;
  v67 = 0;
  v35 = [v26 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v67];

  v36 = v67;
  if (v35)
  {
    v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v38 = v36;
    v39 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1009361B0 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100006654(v40, qword_1009477C8);
    swift_errorRetain();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v66 = v39;
      v67 = v44;
      *v43 = 136446210;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, &v67);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v41, v42, "Failed to encode checkIns -- encodging empty array {error: %{public}s}", v43, 0xCu);
      sub_10000607C(v44);
    }

    else
    {
    }

    return 0;
  }

  return v37;
}

unint64_t sub_100455E78()
{
  result = qword_100937010;
  if (!qword_100937010)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100937010);
  }

  return result;
}

void sub_100455ED0()
{
  sub_100456B58();
  sub_100456D80();
  sub_1004575BC();
  sub_100457C7C();
  v1 = sub_1004584A4();
  sub_100458770();
  sub_1000F5104(&qword_100947940, &qword_1007AA858);
  sub_1000F5104(&qword_100947948, &qword_1007AA860);
  sub_10000CB48(&qword_100947950, &qword_100947948, &qword_1007AA860, &protocol conformance descriptor for [A]);
  static Promise.all<A>(_:)();
  v1, v2, v3, v4, v5, v6, v7, v8;
  *(swift_allocObject() + 16) = v0;
  v9 = v0;
  v10 = zalgo.getter();
  dispatch thunk of Promise.then<A>(on:closure:)();
}

uint64_t sub_1004561A4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009478A8);
  v1 = sub_100006654(v0, qword_1009478A8);
  if (qword_1009364C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

NSString sub_10045626C()
{
  result = String._bridgeToObjectiveC()();
  qword_100974E90 = result;
  return result;
}

uint64_t sub_100456614(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v3 - 8);
  __chkstk_darwin(v3, v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7, v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Notification();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(v11, v14);
  v21[1] = *&v1[OBJC_IVAR___RDAccountInitializerDidCompleteInitializeAllAccountsObserver_queue];
  (*(v12 + 16))(v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11, v15);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  (*(v12 + 32))(v17 + v16, v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = sub_10045B524;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F2888;
  v18 = _Block_copy(aBlock);
  v19 = v1;
  static DispatchQoS.unspecified.getter();
  v25 = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v24 + 8))(v6, v3);
  (*(v22 + 8))(v10, v23);
}

id sub_100456AAC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100456B58()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7remindd20RDAccountInitializer_storeController) inMemoryPrimaryActiveCKAccountREMObjectID];
  if (v1)
  {
    v3 = v1;
    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_1009478A8);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21[4] = v3;
      v22 = v9;
      *v8 = 136446210;
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v10 = Optional.descriptionOrNil.getter();
      v12 = v11;
      v13 = sub_10000668C(v10, v11, &v22);
      v12, v14, v15, v16, v17, v18, v19, v20;
      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "RDAccountInitializer: No need to update in-memory PrimaryActiveCKAccountCaches {current: %{public}s", v8, 0xCu);
      sub_10000607C(v9);
    }

    else
    {
    }
  }

  else
  {
    v23[0] = 0xD000000000000028;
    v23[1] = 0x80000001007F8D00;
    v23[3] = 0;
    v24[0] = 0;
    v23[2] = 0;
    *(v24 + 6) = 0;
    __chkstk_darwin(0, v2);
    v21[2] = v0;
    sub_100014A64(v23, sub_10045B508, v21);
  }
}

uint64_t sub_100456D80()
{
  v2 = v1;
  v3 = *(v0 + OBJC_IVAR____TtC7remindd20RDAccountInitializer_store);
  v72 = 0;
  v67 = v3;
  v4 = [v3 fetchAccountsWithError:&v72];
  v5 = v72;
  if (!v4)
  {
    v29 = v72;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v6 = v4;
  sub_1000060C8(0, &qword_100947958, REMAccount_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v5;

  v72 = &_swiftEmptyArrayStorage;
  if (v7 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v68 = v2;
    v17 = 0;
    v18 = v7 & 0xC000000000000001;
    v2 = v7 & 0xFFFFFFFFFFFFFF8;
    v19 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
    v70 = v7 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v18)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v20 = *(v7 + 8 * v17 + 32);
      }

      v21 = v20;
      v22 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if ([v20 v19[269]] == 1)
      {
        v23 = i;
        v24 = v7;
        v25 = [v21 objectID];
        v26 = [objc_opt_self() localAccountID];
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v27 = static NSObject.== infix(_:_:)();

        if (v27)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        v7 = v24;
        i = v23;
        v2 = v70;
        v19 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
      }

      else
      {
      }

      ++v17;
      if (v22 == i)
      {
        v28 = v72;
        v2 = v68;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v28 = &_swiftEmptyArrayStorage;
LABEL_23:
  v7, v9, v10, v11, v12, v13, v14, v15;
  if (qword_1009361B8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100006654(v31, qword_1009478A8);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v32, v33))
  {

    goto LABEL_31;
  }

  v34 = swift_slowAlloc();
  *v34 = 134217984;
  if ((v28 & 0x8000000000000000) != 0 || (v28 & 0x4000000000000000) != 0)
  {
    goto LABEL_56;
  }

  v35 = *v28->clientIdentity;
  while (1)
  {
    *(v34 + 4) = v35;
    v36 = v34;

    _os_log_impl(&_mh_execute_header, v32, v33, "Removing Extraneous Local Accounts {candidateAccounts.count: %ld}", v36, 0xCu);

LABEL_31:

    v37 = *v28->clientIdentity;
    if (!v37)
    {
    }

LABEL_34:
    if (v37 >= 1)
    {
      v38 = 0;
      v69 = v28 & 0xC000000000000001;
      v71 = v28;
      while (1)
      {
        if (v69)
        {
          v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v43 = *&v28->clientIdentity[8 * v38 + 16];
        }

        v44 = v43;
        v45 = REMAccount.isConsideredEmpty()();
        if (v46)
        {
          goto LABEL_42;
        }

        v50 = v45;
        v51 = v44;
        v48 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();

        v53 = os_log_type_enabled(v48, v52);
        if (!v50)
        {
          if (v53)
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            *v60 = 138543618;
            v62 = [v51 objectID];
            *(v60 + 4) = v62;
            *(v60 + 12) = 2112;
            *(v60 + 14) = v51;
            *v61 = v62;
            v61[1] = v51;
            v63 = v51;
            _os_log_impl(&_mh_execute_header, v48, v52, "Extraneous Local Account is not empty. Not Removing {accountObjID: %{public}@, account: %@}", v60, 0x16u);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            v48 = v63;
          }

          else
          {
          }

          goto LABEL_37;
        }

        if (v53)
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v54 = 138543618;
          v56 = [v51 objectID];
          *(v54 + 4) = v56;
          *(v54 + 12) = 2112;
          *(v54 + 14) = v51;
          *v55 = v56;
          v55[1] = v51;
          v57 = v51;
          _os_log_impl(&_mh_execute_header, v48, v52, "Extraneous Local Account is empty. Removing {accountObjID: %{public}@, account: %@}", v54, 0x16u);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();
        }

        type metadata accessor for Analytics();
        static Analytics.postEvent(_:payload:duration:)();
        v58 = [objc_allocWithZone(REMSaveRequest) initWithStore:v67];
        v48 = [v58 updateAccount:v51];
        [v48 removeFromStore];
        v72 = 0;
        if (![v58 saveSynchronouslyWithError:&v72])
        {
          break;
        }

        v59 = v72;

LABEL_37:
        v28 = v71;
        ++v38;

        if (v37 == v38)
        {
        }
      }

      v64 = v72;
      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_42:
      v47 = v44;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138543618;
        v41 = [v47 objectID];
        *(v39 + 4) = v41;
        *(v39 + 12) = 2112;
        *(v39 + 14) = v47;
        *v40 = v41;
        v40[1] = v47;
        v42 = v47;
        _os_log_impl(&_mh_execute_header, v48, v49, "Failed to query whether Extraneous Local Account is empty. Skipping {accountObjID: %{public}@, account: %@}", v39, 0x16u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();
      }

      else
      {
      }

      goto LABEL_37;
    }

    __break(1u);
LABEL_56:
    v65 = v2;
    v66 = v34;
    v35 = _CocoaArrayWrapper.endIndex.getter();
    v34 = v66;
    v2 = v65;
  }

  v34 = _CocoaArrayWrapper.endIndex.getter();
  v37 = v34;
  if (v34)
  {
    goto LABEL_34;
  }
}

void sub_1004575BC()
{
  if (![*(v0 + OBJC_IVAR____TtC7remindd20RDAccountInitializer_storeController) supportsLocalInternalAccount])
  {
    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_1009478A8);
    v1 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v1, v6, "StoreController not supportsLocalInternalAccount. Skipping initializeLocalInternalAccountIfNeeded", v7, 2u);
    }

    goto LABEL_27;
  }

  v1 = [objc_opt_self() localInternalAccountID];
  v2 = *(v0 + OBJC_IVAR____TtC7remindd20RDAccountInitializer_store);
  v43 = 0;
  v3 = [v2 fetchAccountWithObjectID:v1 error:&v43];
  if (v3)
  {
    v4 = v43;
    goto LABEL_14;
  }

  v8 = v43;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  v9 = [objc_allocWithZone(REMSaveRequest) initWithStore:v2];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 __addAccountWithType:5 name:v10 accountObjectID:v1];

  if (qword_1009361B8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_1009478A8);
  v13 = v11;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "RDAccountInitializer: Creating localInternal account {accountChangeItem: %@}", v16, 0xCu);
    sub_100039860(v17);
  }

  v43 = 0;
  if ([v9 saveSynchronouslyWithError:&v43])
  {
    v19 = v43;

LABEL_14:
    v13 = [objc_opt_self() siriFoundInAppsListID];
    v43 = 0;
    v20 = [v2 fetchListWithObjectID:v13 error:&v43];
    if (v20)
    {
      v21 = v20;
      v22 = v43;

      return;
    }

    v23 = v43;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v9 = [objc_allocWithZone(REMSaveRequest) initWithStore:v2];
    v43 = 0;
    v24 = [v2 fetchAccountWithObjectID:v1 error:&v43];
    if (v24)
    {
      v25 = v24;
      v26 = v43;
      v27 = [v9 updateAccount:v25];
      v28 = String._bridgeToObjectiveC()();
      v42 = v27;
      v29 = [v9 addListWithName:v28 toAccountChangeItem:v27 listObjectID:v13];

      if (qword_1009361B8 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100006654(v30, qword_1009478A8);
      v31 = v29;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v41 = v25;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        *(v34 + 4) = v31;
        *v35 = v31;
        v36 = v31;
        _os_log_impl(&_mh_execute_header, v32, v33, "RDAccountInitializer: Creating SiriFoundInApps list {listChangeItem: %@}", v34, 0xCu);
        sub_100039860(v35);

        v25 = v41;
      }

      v43 = 0;
      if ([v9 saveSynchronouslyWithError:&v43])
      {
        v37 = v43;

        return;
      }

      v40 = v43;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v9 = v31;
    }

    else
    {
      v39 = v43;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    goto LABEL_26;
  }

  v38 = v43;
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_26:

LABEL_27:
}

void sub_100457C7C()
{
  v1 = [objc_opt_self() localAccountID];
  v2 = *(v0 + OBJC_IVAR____TtC7remindd20RDAccountInitializer_store);
  v82 = 0;
  v3 = [v2 fetchAccountWithObjectID:v1 error:&v82];
  if (v3)
  {
    v4 = v3;
    v5 = v82;
  }

  else
  {
    v19 = v82;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v4 = [objc_allocWithZone(REMSaveRequest) initWithStore:v2];
    v20 = _REMGetLocalizedString();
    if (!v20)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
      v20 = String._bridgeToObjectiveC()();
      v22, v23, v24, v25, v26, v27, v28, v29;
    }

    v30 = [v4 _addLocalAccountWithName:v20 accountObjectID:v1];

    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100006654(v31, qword_1009478A8);
    v32 = v30;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v32;
      *v36 = v32;
      v37 = v32;
      _os_log_impl(&_mh_execute_header, v33, v34, "RDAccountInitializer: Creating local account {changeItem: %@}", v35, 0xCu);
      sub_100039860(v36);
    }

    v82 = 0;
    v38 = [v4 saveSynchronouslyWithError:&v82];
    v39 = v82;
    if (!v38)
    {
      v45 = v82;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_20;
    }

    v82 = 0;
    v40 = v39;
    v41 = [v2 fetchAccountWithObjectID:v1 error:&v82];
    if (!v41)
    {
      v58 = v82;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v4 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v4, v59))
      {
LABEL_7:

LABEL_8:
        return;
      }

      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v4, v59, "RDAccountInitializer: No local account is found or created", v60, 2u);

      goto LABEL_21;
    }

    v42 = v41;
    v43 = v82;

    v4 = v42;
  }

  v82 = 0;
  v6 = [v4 fetchListsWithError:&v82];
  v7 = v82;
  if (!v6)
  {
    v44 = v82;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v32 = v1;
LABEL_20:

LABEL_21:
    return;
  }

  v8 = v6;
  sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v7;

  if (v9 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9, v11, v12, v13, v14, v15, v16, v17;
  if (v18)
  {
    goto LABEL_7;
  }

  v46 = [objc_opt_self() localAccountDefaultListID];
  v82 = 0;
  v47 = [v2 fetchListWithObjectID:v46 error:&v82];
  if (!v47)
  {
    v61 = v82;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v32 = [objc_allocWithZone(REMSaveRequest) initWithStore:v2];
    v62 = [v32 updateAccount:v4];
    v63 = _REMGetLocalizedString();
    if (!v63)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;
      v63 = String._bridgeToObjectiveC()();
      v65, v66, v67, v68, v69, v70, v71, v72;
    }

    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_100006654(v73, qword_1009478A8);
    v74 = v1;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v77 = 138543362;
      *(v77 + 4) = v74;
      *v78 = v74;
      v79 = v74;
      _os_log_impl(&_mh_execute_header, v75, v76, "RDAccountInitializer: Creating default list for local account {accountID: %{public}@}", v77, 0xCu);
      sub_100039860(v78);
    }

    v82 = 0;
    if ([v32 saveSynchronouslyWithError:&v82])
    {
      v80 = v82;

      return;
    }

    v81 = v82;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v4 = v62;
    goto LABEL_20;
  }

  v48 = v47;
  v49 = qword_1009361B8;
  v50 = v82;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_100006654(v51, qword_1009478A8);
  v52 = v46;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.fault.getter();

  if (!os_log_type_enabled(v53, v54))
  {

    goto LABEL_8;
  }

  v55 = swift_slowAlloc();
  v56 = swift_slowAlloc();
  *v55 = 138543362;
  *(v55 + 4) = v52;
  *v56 = v52;
  v57 = v52;
  _os_log_impl(&_mh_execute_header, v53, v54, "RDAccountInitializer: This should never happen: the store told us there's no lists in this account but we did find a list with the default list ID {listID: %{public}@}", v55, 0xCu);
  sub_100039860(v56);
}

_TtC7remindd19RDXPCStorePerformer *sub_1004584A4()
{
  if ([*&v0[OBJC_IVAR____TtC7remindd20RDAccountInitializer_storeController] hasPassedBuddyAndSystemDataMigrator])
  {
    v23 = &_swiftEmptyArrayStorage;
    v1 = [*&v0[OBJC_IVAR____TtC7remindd20RDAccountInitializer_appleAccountUtilities] unsafeUntilSystemReady_allCloudKitRemindersEnabledICloudACAccounts];
    sub_1000060C8(0, &qword_100947960, ACAccount_ptr);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = v0;
    sub_10045AF7C(v2, v3, &v23);

    if (v2 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2, v4, v5, v6, v7, v8, v9, v10;
    if (!v11)
    {
      if (qword_1009361B8 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100006654(v12, qword_1009478A8);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "RDAccountInitializer: No iCloud account signed in or not enabled Reminders.", v15, 2u);
      }
    }

    return v23;
  }

  else
  {
    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006654(v17, qword_1009478A8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "RDAccountInitializer: Not handling account data moves because we have not passed buddy or system data migrator", v20, 2u);
    }

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1007953F0;
    sub_1000F5104(&qword_100947940, &qword_1007AA858);
    swift_allocObject();
    v22 = Promise.init(value:)();
    result = v21;
    *(v21 + 32) = v22;
  }

  return result;
}

void sub_100458770()
{
  v1 = *(v0 + OBJC_IVAR____TtC7remindd20RDAccountInitializer_store);
  v2 = [objc_opt_self() localAccountID];
  v36 = 0;
  v3 = [v1 fetchAccountWithObjectID:v2 error:&v36];

  v4 = v36;
  if (v3)
  {
    v36 = 0;
    v5 = v4;
    v6 = [v1 fetchAccountsWithError:&v36];
    v7 = v36;
    if (v6)
    {
      v8 = v6;
      sub_1000060C8(0, &qword_100947958, REMAccount_ptr);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v7;

      if (v9 >> 62)
      {
LABEL_35:
        v18 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = 0;
      while (v18 != v19)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v20 = *(v9 + 8 * v19 + 32);
        }

        v21 = v20;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v22 = [v20 accountTypeHost];
        v23 = [v22 isCloudBased];

        ++v19;
        if (v23)
        {
          v9, v11, v12, v13, v14, v15, v16, v17;
          if (qword_1009361B8 != -1)
          {
            swift_once();
          }

          v30 = type metadata accessor for Logger();
          sub_100006654(v30, qword_1009478A8);
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&_mh_execute_header, v31, v32, "RDAccountInitializer: updateLocalAccountActiveStatus: Let's ensure local account is inactive (if empty) as we have some cloud accounts.", v33, 2u);
          }

          if (![v3 inactive])
          {
            v34 = REMAccount.isConsideredEmpty()();
            if (!v35 && v34)
            {
              sub_10045ACA4(1, v3);
            }
          }

          goto LABEL_22;
        }
      }

      v9, v11, v12, v13, v14, v15, v16, v17;
      if (qword_1009361B8 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100006654(v26, qword_1009478A8);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "RDAccountInitializer: updateLocalAccountActiveStatus: Let's ensure local account is active as there's no cloud account signed in.", v29, 2u);
      }

      if ([v3 inactive])
      {
        sub_10045ACA4(0, v3);
      }
    }

    else
    {
      v25 = v36;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

LABEL_22:
  }

  else
  {
    v24 = v36;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100458BC0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v31 = _swiftEmptyDictionarySingleton;
    swift_errorRetain();
    swift_errorRetain();
    sub_10031E1BC(a1, 0x726F727265, 0xE500000000000000);
    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_1009478A8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "RDAccountInitializer: Posting notification initialized all accounts failed.", v11, 2u);
    }

    v12 = [objc_opt_self() defaultCenter];
    v13 = v31;
    sub_10045C7C4(v31);
    v13, v14, v15, v16, v17, v18, v19, v20;
    if (qword_1009361C0 != -1)
    {
      swift_once();
    }

    v32 = 0u;
    v33 = 0u;
    v21 = qword_100974E90;
    Notification.init(name:object:userInfo:)();
    v22.super.isa = Notification._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(v7, v3);
    [v12 postNotification:v22.super.isa];
  }

  else
  {
    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_1009478A8);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "RDAccountInitializer: Posting notification initialized all accounts done.", v26, 2u);
    }

    v27 = [objc_opt_self() defaultCenter];
    if (qword_1009361C0 != -1)
    {
      swift_once();
    }

    v32 = 0u;
    v33 = 0u;
    v28 = qword_100974E90;
    Notification.init(name:object:userInfo:)();
    v22.super.isa = Notification._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(v7, v3);
    [v27 postNotification:v22.super.isa];
  }

  return notify_post(_REMStoreDidCompleteInitializeAllAccounts);
}

void sub_100458FBC(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7remindd20RDAccountInitializer_userDefaults);
  v4 = [v3 acAccountIdentifiersToMigrateInactivatedCalDavData];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v6 + 16))
  {
    v6, v7, v8, v9, v10, v11, v12, v13;
LABEL_10:
    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100006654(v61, qword_1009478A8);
    oslog = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v62, "RDAccountInitializer: migrateInactivatedCalDavDataIfNeeded: No need to 'migrate' inactivated CalDAV data as no signal flag is set.", v63, 2u);
    }

    return;
  }

  v14 = [(RDXPCStorePerformer *)a1 displayAccount];
  if (!v14)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = v14;
  v16 = [v14 identifier];

  if (!v16)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = sub_1001A5660(v6);
  v6, v21, v22, v23, v24, v25, v26, v27;
  v114 = v20;

  v28 = sub_100240BDC(v17, v19, v20);
  v20, v29, v30, v31, v32, v33, v34, v35;
  if (v28)
  {
    v43 = v1;
    sub_10019EC58(v17, v19);
    v44, v44, v45, v46, v47, v48, v49, v50;
    isa = *v114->clientIdentity;
    if (!isa)
    {
      v114, v51, v52, v53, v54, v55, v56, v57;
      goto LABEL_24;
    }

    v59 = sub_1003689CC(*v114->clientIdentity, 0);
    v60 = sub_1002791DC(&v113, &v59->clientIdentity[16], isa, v114);
    sub_10001B860(v113);
    if (v60 == isa)
    {
      isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_24:
      [v3 setAcAccountIdentifiersToMigrateInactivatedCalDavData:isa];

      if (qword_1009361B8 != -1)
      {
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      sub_100006654(v91, qword_1009478A8);

      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();
      v19, v94, v95, v96, v97, v98, v99, v100;
      if (os_log_type_enabled(v92, v93))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v113 = v102;
        *v101 = 136446210;
        *(v101 + 4) = sub_10000668C(v17, v19, &v113);
        _os_log_impl(&_mh_execute_header, v92, v93, "RDAccountInitializer: migrateInactivatedCalDavDataIfNeeded: AccountUtil has set the flag indicating we should try to 'migrate' inactivated CalDAV data to CloudKit if any {aaAccountIdentifier: %{public}s}.", v101, 0xCu);
        sub_10000607C(v102);
      }

      v103 = *(v43 + OBJC_IVAR____TtC7remindd20RDAccountInitializer_store);
      type metadata accessor for RDAccountUtils.InactivatedICloudCalDavDataMover();
      *(swift_initStackObject() + 16) = v103;
      v104 = v103;
      sub_1006BDB08(a1, 0);

      v19, v105, v106, v107, v108, v109, v110, v111;
      return;
    }

    __break(1u);
    goto LABEL_30;
  }

  v20, v36, v37, v38, v39, v40, v41, v42;
  if (qword_1009361B8 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  sub_100006654(v64, qword_1009478A8);

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  v19, v67, v68, v69, v70, v71, v72, v73;
  if (os_log_type_enabled(v65, v66))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v113 = v82;
    *v81 = 136446210;
    v83 = sub_10000668C(v17, v19, &v113);
    v19, v84, v85, v86, v87, v88, v89, v90;
    *(v81 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v65, v66, "RDAccountInitializer: migrateInactivatedCalDavDataIfNeeded: No need to 'migrate' inactivated CalDAV data no signal flag is set for account %{public}s.", v81, 0xCu);
    sub_10000607C(v82);
  }

  else
  {
    v19, v74, v75, v76, v77, v78, v79, v80;
  }
}

void sub_100459940(void *a1)
{
  v3 = [a1 displayAccount];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 identifier];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *(v1 + OBJC_IVAR____TtC7remindd20RDAccountInitializer_store);
  v10 = sub_1006C0790(a1, v9);
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(REMSaveRequest) initWithStore:v9];
    v13 = [v12 updateAccount:v11];
    v14 = [v13 removeFromStore];
    __chkstk_darwin(v14, v15);
    sub_1000F5104(&qword_100947940, &qword_1007AA858);
    swift_allocObject();
    Promise.init(resolver:)();
    v8, v16, v17, v18, v19, v20, v21, v22;
  }

  else
  {
    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_1009478A8);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v8, v26, v27, v28, v29, v30, v31, v32;
    if (os_log_type_enabled(v24, v25))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v50 = v41;
      *v40 = 136446210;
      v42 = sub_10000668C(v6, v8, &v50);
      v8, v43, v44, v45, v46, v47, v48, v49;
      *(v40 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v24, v25, "RDAccountInitializer: removeInactivatedCalDavAccountIfNeeded: There's no inactivated CalDAV account store to remove, we're done {appleAccountIdentifier: %{public}s}.", v40, 0xCu);
      sub_10000607C(v41);
    }

    else
    {
      v8, v33, v34, v35, v36, v37, v38, v39;
    }

    sub_1000F5104(&qword_100947940, &qword_1007AA858);
    swift_allocObject();
    Promise.init(value:)();
  }
}

void sub_100459C20(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC7remindd20RDAccountInitializer_userDefaults];
  v5 = [v4 acAccountIdentifierToMergeLocalDataIntoSyncData];
  if (!v5)
  {
    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100006654(v35, qword_1009478A8);
    oslog = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v36, "RDAccountInitializer: moveLocalDataToCloudAccountIfNeeded: Data move not needed as no merge action flag was not set by the DCO.", v37, 2u);
    }

    goto LABEL_22;
  }

  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  [v4 setAcAccountIdentifierToMergeLocalDataIntoSyncData:0];
  if (qword_1009361B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_1009478A8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v9, v13, v14, v15, v16, v17, v18, v19;
  if (os_log_type_enabled(v11, v12))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v94 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_10000668C(v7, v9, &v94);
    _os_log_impl(&_mh_execute_header, v11, v12, "RDAccountInitializer: moveLocalDataToCloudAccountIfNeeded: DCO has set the merge action flag asking us to move data to cloud, let's move on... {flagged: %{public}s}", v20, 0xCu);
    sub_10000607C(v21);
  }

  v22 = [a1 displayAccount];
  if (!v22)
  {
    __break(1u);
    goto LABEL_26;
  }

  v23 = v22;
  v24 = [v22 identifier];

  if (!v24)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (v25 == v7 && v27 == v9)
  {
    v27, v28, v29, v30, v31, v32, v33, v34;
LABEL_16:
    v46 = *&v2[OBJC_IVAR____TtC7remindd20RDAccountInitializer_store];
    type metadata accessor for RDAccountUtils.LocalDataToICloudMover();
    *(swift_initStackObject() + 16) = v46;
    v47 = v46;
    sub_1006BECA8(a1);

    v9, v48, v49, v50, v51, v52, v53, v54;
    return;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v27, v39, v40, v41, v42, v43, v44, v45;
  if (v38)
  {
    goto LABEL_16;
  }

  v2 = a1;
  oslog = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();
  v9, v56, v57, v58, v59, v60, v61, v62;
  if (os_log_type_enabled(oslog, v55))
  {
    v63 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *v63 = 136446466;
    v64 = sub_10000668C(v7, v9, &v94);
    v9, v65, v66, v67, v68, v69, v70, v71;
    *(v63 + 4) = v64;
    *(v63 + 12) = 2082;
    v72 = [v2 displayAccount];
    if (v72)
    {
      v73 = v72;
      v74 = [v72 identifier];

      if (v74)
      {
        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v76;

        v78 = sub_10000668C(v75, v77, &v94);
        v77, v79, v80, v81, v82, v83, v84, v85;
        *(v63 + 14) = v78;
        _os_log_impl(&_mh_execute_header, oslog, v55, "RDAccountInitializer: moveLocalDataToCloudAccountIfNeeded: The DCO flagged identifier is not the same as that of the current primary iCloud account. Something went wrong or we've found a race condition, don't move data {flagged: %{public}s, primary: %{public}s}.", v63, 0x16u);
        swift_arrayDestroy();

        return;
      }

      goto LABEL_28;
    }

LABEL_27:

    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v9, v86, v87, v88, v89, v90, v91, v92;
LABEL_22:
}

void sub_10045A47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = qword_100935D30;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_100974CC8;
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a7;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a8;
  v19[7] = sub_10045B4C4;
  v19[8] = v16;
  v22[4] = sub_10045B4EC;
  v22[5] = v19;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_100042968;
  v22[3] = &unk_1008F27E8;
  v20 = _Block_copy(v22);

  v21 = a8;

  [a5 saveWithQueue:v18 completion:v20];
  _Block_release(v20);
}

uint64_t sub_10045A614(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, void (*a4)(uint64_t), uint64_t a5, void *a6, uint64_t (*a7)(void))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_1009478A8);
    swift_errorRetain();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    a3, v14, v15, v16, v17, v18, v19, v20;
    if (os_log_type_enabled(v12, v13))
    {
      v21 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v21 = 136315394;
      swift_getErrorValue();
      v22 = Error.rem_errorDescription.getter();
      v24 = v23;
      v25 = sub_10000668C(v22, v23, &v52);
      v24, v26, v27, v28, v29, v30, v31, v32;
      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_10000668C(a2, a3, &v52);
      _os_log_impl(&_mh_execute_header, v12, v13, "RDAccountInitializer: removeInactivatedCalDavAccountIfNeeded save failed {error: %s, appleAccountIdentifier: %{public}s}", v21, 0x16u);
      swift_arrayDestroy();
    }

    a4(a1);
  }

  else
  {
    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100006654(v36, qword_1009478A8);

    v37 = a6;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    a3, v40, v41, v42, v43, v44, v45, v46;

    if (os_log_type_enabled(v38, v39))
    {
      v47 = swift_slowAlloc();
      v48 = a2;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52 = v50;
      *v47 = 138543618;
      v51 = [v37 remObjectID];
      *(v47 + 4) = v51;
      *v49 = v51;
      *(v47 + 12) = 2082;
      *(v47 + 14) = sub_10000668C(v48, a3, &v52);
      _os_log_impl(&_mh_execute_header, v38, v39, "RDAccountInitializer: removeInactivatedCalDavAccountIfNeeded: Removed inactivated CalDAV account store {remAccountObjID: %{public}@, appleAccountIdentifier: %{public}s}.", v47, 0x16u);
      sub_100039860(v49);

      sub_10000607C(v50);
    }

    return a7();
  }
}

void sub_10045A990(uint64_t a1)
{
  v1 = [objc_opt_self() _groundTruth_primaryActiveCloudKitAccountInContext:a1];
  if (qword_1009361B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_1009478A8);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v6 = 136446466;
    if (v3)
    {
      v7 = [v3 remObjectID];
    }

    else
    {
      v7 = 0;
    }

    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v8 = Optional.descriptionOrNil.getter();
    v10 = v9;

    v11 = sub_10000668C(v8, v10, &v33);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    if (v3)
    {
      v19 = [v3 objectID];
    }

    else
    {
      v19 = 0;
    }

    sub_1000F5104(&qword_100947968, &qword_1007AA868);
    v20 = Optional.descriptionOrNil.getter();
    v22 = v21;

    v23 = sub_10000668C(v20, v22, &v33);
    v22, v24, v25, v26, v27, v28, v29, v30;
    *(v6 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v4, v5, "RDAccountInitializer: Calling updateInMemoryPrimaryActiveCKAccountCachesIfNeeded with {remObjectID: %{public}s, managedObjectID: %{public}s}", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v31 = qword_1009752E8;
  if (qword_1009367E0 != -1)
  {
    v32 = qword_1009752E8;
    swift_once();
    v31 = v32;
  }

  sub_1003A9DBC(v3, v31);
}

void sub_10045ACA4(char a1, void *a2)
{
  v3 = v2;
  if (qword_1009361B8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_1009478A8);
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v10 = 138543618;
    v12 = [v7 objectID];
    *(v10 + 4) = v12;
    *v11 = v12;
    *(v10 + 12) = 2082;
    if (a1)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    v14 = v7;
    if (a1)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    v16 = a1;
    v17 = v3;
    v18 = sub_10000668C(v13, v15, &v32);
    v19 = v15;
    v7 = v14;
    v19, v20, v21, v22, v23, v24, v25, v26;
    *(v10 + 14) = v18;
    v3 = v17;
    a1 = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "RDAccountInitializer: Setting account inactive value {accountID: %{public}@, inactive: %{public}s}", v10, 0x16u);
    sub_100039860(v11);

    sub_10000607C(v31);
  }

  v27 = [objc_allocWithZone(REMSaveRequest) initWithStore:*(v3 + OBJC_IVAR____TtC7remindd20RDAccountInitializer_store)];
  v28 = [v27 updateAccount:v7];
  [v28 setInactive:a1 & 1];
  v32 = 0;
  if ([v27 saveSynchronouslyWithError:&v32])
  {
    v29 = v32;
  }

  else
  {
    v30 = v32;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

unint64_t sub_10045AF7C(unint64_t result, uint64_t a2, void *a3)
{
  v4 = result;
  if (result >> 62)
  {
    goto LABEL_16;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      v10 = AAAccountClassPrimary;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        sub_100458FBC(v7);
        sub_100459940(v8);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        if ([(RDXPCStorePerformer *)v8 aa_isAccountClass:v10])
        {
          sub_100459C20(v8);
        }

        ++v6;
        if (v9 == v5)
        {
          return result;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_10045B10C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v6 = *(v20 - 8);
  __chkstk_darwin(v20, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  (*(v11 + 104))(v14, enum case for DispatchQoS.QoSClass.utility(_:), v10);
  v15 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v14, v10);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  aBlock[4] = sub_10045B500;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F2838;
  v17 = _Block_copy(aBlock);
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v21 + 8))(v5, v2);
  (*(v6 + 8))(v9, v20);
}

void sub_10045B59C()
{
  v1 = *(v0 + 16);
  isa = Notification._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

uint64_t sub_10045B608(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v1 = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v1;
}

void sub_10045B758(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000F5104(&unk_100942EC0, &qword_1007AAB60);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = v13[1];
    v15 = *(*(a1 + 56) + 8 * v12);
    *&v33[0] = *v13;
    *(&v33[0] + 1) = v14;
    v16 = v15;

    swift_dynamicCast();
    sub_1000F5104(&unk_100950C10, &unk_1007AAB68);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_100005EE0(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_100005EE0(v32, v33);
    v17 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v18 = -1 << *(v2 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~v7[v19 >> 6]) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = v7[v20];
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~v7[v19 >> 6])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v25;
    *(v10 + 16) = v26;
    *(v10 + 32) = v27;
    sub_100005EE0(v33, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_10045BA24(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaDictionary.count.getter())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = _swiftEmptyDictionarySingleton;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(a1 + 32);
    v6 = ~v9;
    v5 = a1 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(a1 + 64);
    v8 = a1;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1000F5104(&unk_100942EC0, &qword_1007AAB60);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = __CocoaDictionary.makeIterator()();
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = v4 | 0x8000000000000000;
LABEL_11:
  v12 = (v6 + 64) >> 6;
  v13 = v3 + 8;

  v14 = 0;
  v31 = v8;
  while ((v8 & 0x8000000000000000) != 0)
  {
    v22 = __CocoaDictionary.Iterator.next()();
    if (!v22 || (*&v32 = v22, sub_1000060C8(0, &qword_100945FC0, NSObject_ptr), swift_dynamicCast(), v21 = v36, v18 = v14, v20 = v7, !v36))
    {
LABEL_34:
      sub_10001B860(v31);

      return;
    }

LABEL_25:
    *&v40[0] = v21;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    swift_dynamicCast();
    swift_dynamicCast();
    v36 = v32;
    v37 = v33;
    v38 = v34;
    sub_100005EE0(&v35, v39);
    v32 = v36;
    v33 = v37;
    v34 = v38;
    sub_100005EE0(v39, v40);
    v23 = AnyHashable._rawHashValue(seed:)(v3[5]);
    v24 = -1 << *(v3 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~v13[v25 >> 6]) != 0)
    {
      v15 = __clz(__rbit64((-1 << v25) & ~v13[v25 >> 6])) | v25 & 0x7FFFFFFFFFFFFFC0;
      v8 = v31;
    }

    else
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      v8 = v31;
      do
      {
        if (++v26 == v28 && (v27 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = v13[v26];
      }

      while (v30 == -1);
      v15 = __clz(__rbit64(~v30)) + (v26 << 6);
    }

    *(v13 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    v16 = v3[6] + 40 * v15;
    *v16 = v32;
    *(v16 + 16) = v33;
    *(v16 + 32) = v34;
    sub_100005EE0(v40, (v3[7] + 32 * v15));
    ++v3[2];
    v14 = v18;
    v7 = v20;
  }

  v17 = v7;
  v18 = v14;
  if (v7)
  {
LABEL_21:
    v20 = (v17 - 1) & v17;
    v21 = *(*(v8 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    swift_unknownObjectRetain();
    if (!v21)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v19 = v14;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v12)
    {
      goto LABEL_34;
    }

    v17 = *(v5 + 8 * v18);
    ++v19;
    if (v17)
    {
      v8 = v31;
      goto LABEL_21;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_10045BDE8(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = _swiftEmptyDictionarySingleton;
    goto LABEL_6;
  }

  if (!__CocoaDictionary.count.getter())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1000F5104(&qword_100947C40, &unk_1007AAB78);
  v3 = static _DictionaryStorage.allocate(capacity:)();
LABEL_6:
  if (sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr) != &type metadata for String)
  {
    if (v2)
    {
      v4 = __CocoaDictionary.makeIterator()();
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = v4 | 0x8000000000000000;
    }

    else
    {
      v14 = -1 << *(a1 + 32);
      v6 = ~v14;
      v5 = a1 + 64;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v7 = v16 & *(a1 + 64);
      v8 = a1;
    }

    v17 = (v6 + 64) >> 6;
    v18 = v3 + 8;

    v19 = 0;
    for (i = v8; ; v8 = i)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        v30 = __CocoaDictionary.Iterator.next()();
        if (!v30 || (v67 = v30, swift_dynamicCast(), sub_1000060C8(0, &qword_100939D80, off_1008D41B8), swift_dynamicCast(), v29 = v67, v28 = v69, v23 = v19, v25 = v7, !v69))
        {
LABEL_38:
          v39 = i;
          goto LABEL_62;
        }
      }

      else
      {
        v22 = v7;
        v23 = v19;
        if (!v7)
        {
          v24 = v19;
          while (1)
          {
            v23 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            if (v23 >= v17)
            {
              goto LABEL_38;
            }

            v22 = *(v5 + 8 * v23);
            ++v24;
            if (v22)
            {
              v8 = i;
              goto LABEL_25;
            }
          }

LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

LABEL_25:
        v25 = (v22 - 1) & v22;
        v26 = (v23 << 9) | (8 * __clz(__rbit64(v22)));
        v27 = *(*(v8 + 56) + v26);
        v28 = *(*(v8 + 48) + v26);
        v29 = v27;
        if (!v28)
        {
          goto LABEL_38;
        }
      }

      v31 = NSObject._rawHashValue(seed:)(v3[5]);
      v32 = -1 << *(v3 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~v18[v33 >> 6]) != 0)
      {
        v20 = __clz(__rbit64((-1 << v33) & ~v18[v33 >> 6])) | v33 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        do
        {
          if (++v34 == v36 && (v35 & 1) != 0)
          {
            __break(1u);
            goto LABEL_64;
          }

          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = v18[v34];
        }

        while (v38 == -1);
        v20 = __clz(__rbit64(~v38)) + (v34 << 6);
      }

      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(v3[6] + 8 * v20) = v28;
      v21 = (v3[7] + 16 * v20);
      *v21 = v29;
      v21[1] = &off_1008F1860;
      ++v3[2];
      v19 = v23;
      v7 = v25;
    }
  }

  if (v2)
  {
    v9 = __CocoaDictionary.makeIterator()();
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = v9 | 0x8000000000000000;
  }

  else
  {
    v40 = -1 << *(a1 + 32);
    v11 = ~v40;
    v10 = a1 + 64;
    v41 = -v40;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v12 = v42 & *(a1 + 64);
    v13 = a1;
  }

  v43 = (v11 + 64) >> 6;

  v44 = 0;
  for (j = v13; ; v13 = j)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      v58 = __CocoaDictionary.Iterator.next()();
      if (!v58)
      {
        v39 = v13;
        goto LABEL_62;
      }

      v68 = v58;
      swift_dynamicCast();
      sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
      swift_dynamicCast();
      v57 = v68;
      v56 = v69;
      v51 = v44;
      v53 = v12;
      if (!v69)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v50 = v12;
      v51 = v44;
      if (!v12)
      {
        v52 = v44;
        while (1)
        {
          v51 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            goto LABEL_65;
          }

          if (v51 >= v43)
          {
            break;
          }

          v50 = *(v10 + 8 * v51);
          ++v52;
          if (v50)
          {
            v13 = j;
            goto LABEL_53;
          }
        }

LABEL_61:
        v39 = j;
LABEL_62:
        sub_10001B860(v39);

        return;
      }

LABEL_53:
      v53 = (v50 - 1) & v50;
      v54 = (v51 << 9) | (8 * __clz(__rbit64(v50)));
      v55 = *(*(v13 + 56) + v54);
      v56 = *(*(v13 + 48) + v54);
      v57 = v55;
      if (!v56)
      {
        goto LABEL_61;
      }
    }

    v59 = sub_10002B924(v56);
    if (v60)
    {
      v45 = v3[6];
      v46 = *(v45 + 8 * v59);
      *(v45 + 8 * v59) = v56;
      v47 = v59;

      v48 = v3[7] + 16 * v47;
      v49 = *v48;
      *v48 = v57;
      *(v48 + 8) = &off_1008F1860;

      goto LABEL_45;
    }

    if (v3[2] >= v3[3])
    {
      goto LABEL_66;
    }

    *(v3 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v59;
    *(v3[6] + 8 * v59) = v56;
    v61 = (v3[7] + 16 * v59);
    *v61 = v57;
    v61[1] = &off_1008F1860;
    v62 = v3[2];
    v63 = __OFADD__(v62, 1);
    v64 = v62 + 1;
    if (v63)
    {
      break;
    }

    v3[2] = v64;
LABEL_45:
    v44 = v51;
    v12 = v53;
  }

LABEL_67:
  __break(1u);
}

void sub_10045C388(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000F5104(&qword_100942EF8, &unk_1007A3988);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (v12 << 10) | (16 * v13);
        v15 = (*(a1 + 48) + v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = (*(a1 + 56) + v14);
        v19 = *v18;
        v20 = v18[1];
        v34 = &type metadata for String;
        v35 = &protocol witness table for String;
        *&v33 = v19;
        *(&v33 + 1) = v20;
        sub_100054B6C(&v33, v37);
        sub_100054B6C(v37, v38);
        sub_100054B6C(v38, &v36);

        v21 = sub_100005F4C(v17, v16);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v17;
          v8[1] = v16;
          v10 = v21;
          v9, v22, v23, v24, v25, v26, v27, v28;
          v11 = (v2[7] + 40 * v10);
          sub_10000607C(v11);
          sub_100054B6C(&v36, v11);
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v29 = (v2[6] + 16 * v21);
          *v29 = v17;
          v29[1] = v16;
          sub_100054B6C(&v36, v2[7] + 40 * v21);
          v30 = v2[2];
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_21;
          }

          v2[2] = v32;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_10045C5E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000F5104(&unk_100942ED0, &qword_1007A3958);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = v19;
        v21 = sub_100005F4C(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;
          v9, v22, v23, v24, v25, v26, v27, v28;
          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v29 = (v2[6] + 16 * v21);
          *v29 = v18;
          v29[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v30 = v2[2];
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_21;
          }

          v2[2] = v32;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_10045C7C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000F5104(&unk_100942EC0, &qword_1007AAB60);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_errorRetain();
    swift_dynamicCast();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100005EE0(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100005EE0(v29, v30);
    v14 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_100005EE0(v30, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_10045CA90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000F5104(&unk_100942EC0, &qword_1007AAB60);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_100005EF0(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100005EE0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100005EE0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100005EE0(v31, v32);
    v16 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_100005EE0(v32, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_10045CD58()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_executable);
  v3[4] = &off_1008EAC00;
  v3[5] = &off_1008EAC10;
  v3[3] = type metadata accessor for RDStaledFileAttachmentCleanupActivity.RDStaledFileAttachmentCleanupActivityExecutable();
  v3[0] = v1;

  sub_1004601C4(v3);
  return sub_10000607C(v3);
}

uint64_t sub_10045CDE0(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))(v5);
  sub_10050BBA8(v5, a1, *(a2 + 8));
  return sub_10000607C(v5);
}

uint64_t sub_10045CE54()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_executable);
  v3[4] = &off_1008EB370;
  v3[5] = &off_1008EB380;
  v3[3] = type metadata accessor for RDBatchDeleteExpiredRemindersActivity.RDBatchDeleteExpiredRemindersActivityExecutable();
  v3[0] = v1;

  sub_10045FE38(v3, &OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_babysitter);
  return sub_10000607C(v3);
}

uint64_t sub_10045CEE4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_executable);
  v4[4] = &off_1008F16E0;
  v4[5] = &off_1008F16F0;
  v4[3] = type metadata accessor for RDAnalyticsActivity.RDAnalyticsActivityExecutable();
  v4[0] = v1;
  v2 = v1;
  sub_10045FE38(v4, &OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_babysitter);
  return sub_10000607C(v4);
}

uint64_t sub_10045CF70()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947970);
  v1 = sub_100006654(v0, qword_100947970);
  if (qword_100936428 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10045D038()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v6 = *(v13 - 8);
  __chkstk_darwin(v13, v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 24);
  aBlock[4] = sub_1004646C8;
  v16 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F2B28;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14 = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t *sub_10045D2BC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness, v5);
  v7 = &v29 - v6;
  v8 = *(v1 + 136);
  swift_beginAccess();
  if (!(*(v4 + 48))(v0 + v8, 1, AssociatedTypeWitness))
  {
    (*(v4 + 16))(v7, v0 + v8, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v4 + 8))(v7, AssociatedTypeWitness);
  }

  if (*(v0 + *(*v0 + 160)))
  {

    AnyCancellable.cancel()();
  }

  v0[2], v9, v10, v11, v12, v13, v14, v15;

  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 128), v2);
  v17 = type metadata accessor for Optional();
  (*(*(v17 - 8) + 8))(v0 + v8, v17);
  *(v0 + *(*v0 + 144) + 8), v18, v19, v20, v21, v22, v23, v24;
  v25 = v0 + *(*v0 + 152);
  sub_10000CC4C(*v25, *(v25 + 8), *(v25 + 16), *(v25 + 24), *(v25 + 32), *(v25 + 40) | (*(v25 + 44) << 32), v26, v27);

  return v0;
}

uint64_t sub_10045D5AC()
{
  sub_10045D2BC();

  return swift_deallocClassInstance();
}

void sub_10045D61C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v1[3];
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v1[2] + 16))
  {
    if (qword_1009361C8 == -1)
    {
LABEL_4:
      v10 = type metadata accessor for Logger();
      sub_100006654(v10, qword_100947970);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "RDHousekeepingActivityScheduler: Starting", v13, 2u);
      }

      *(v1 + *(*v1 + 160)) = sub_10045F100();

      sub_10045D8C4(v14, v15);
      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1009361C8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_100947970);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "RDHousekeepingActivityScheduler: No activities registered, we are not starting", v19, 2u);
  }
}

void sub_10045D8C4(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1, a2);
  v48 = &v42 - v5;
  v7 = *(v6 + 88);
  v46 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = type metadata accessor for Optional();
  v51 = *(v49 - 8);
  __chkstk_darwin(v49, v8);
  v47 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v42 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v17 = __chkstk_darwin(v14, v16);
  v19 = (&v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v2 + 3);
  *v19 = v20;
  (*(v15 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v14, v17);
  v21 = v20;
  v22 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v19, v14);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v23 = v7;
  v24 = *(*v2 + 136);
  swift_beginAccess();
  v25 = v51;
  v26 = v49;
  (*(v51 + 16))(v13, &v2[v24], v49);
  v27 = *(AssociatedTypeWitness - 8);
  v28 = (*(v27 + 48))(v13, 1);
  (*(v25 + 8))(v13, v26);
  if (v28 == 1)
  {
    v29 = *(v2 + 2);
    (*(v4 + 16))(v48, &v2[*(*v2 + 128)], v3);
    v44 = *(v2 + 4);
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    v45 = v24;
    v32 = v31;
    v31[2] = v3;
    v31[3] = v23;
    v31[4] = v30;
    v31[5] = v29;
    v33 = v46;
    v43 = *(v46 + 24);

    v34 = v47;
    v35 = v2;
    v36 = v48;
    v43(v44, sub_1004646A8, v32, v3, v33);

    (*(v4 + 8))(v36, v3);

    (*(v27 + 56))(v34, 0, 1, AssociatedTypeWitness);
    v37 = v45;
    swift_beginAccess();
    (*(v51 + 40))(&v35[v37], v34, v49);
    swift_endAccess();
    sub_10045E6CC();
    return;
  }

  if (qword_1009361C8 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v38 = type metadata accessor for Logger();
  sub_100006654(v38, qword_100947970);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "RDHousekeepingActivityScheduler: Unexpectedly having an existing non-nil backgroundScheduler when trying to create and schedule a new one", v41, 2u);
  }
}

uint64_t sub_10045DE3C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10045DEB0(a2);
  }

  return result;
}

void sub_10045DEB0(uint64_t a1)
{
  if (qword_1009361C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100947970);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RDHousekeepingActivityScheduler: Running scheduled background activity", v4, 2u);
  }

  __chkstk_darwin(v5, v6);
  static os_log_type_t.info.getter();
  measureTimeElapsed(_:timeElapsedInMilliseconds:level:block:)();
  if (0.0 > 10000.0)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "RDHousekeepingActivityScheduler: Running scheduled background activity took %f ms", v9, 0xCu);
    }
  }
}

uint64_t sub_10045E0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  (*(v5 + 64))(&v45, ObjectType, v5);
  if (v46)
  {
    sub_100054B6C(&v45, v47);
    type metadata accessor for RDHousekeepingActivityScheduler.RateReducer(0, a2, a3, v8);
    sub_10000A87C(v47, &v45);
    swift_allocObject();
    sub_10045F7C8(&v45);
    v9 = sub_10045FA08();

    if (v9)
    {
      if (qword_1009361C8 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100006654(v10, qword_100947970);
      v11 = v6;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *&v45 = v15;
        *v14 = 136315138;
        v47[6] = v11;
        v16 = (*(*(v5 + 16) + 16))(ObjectType);
        v18 = v17;
        v19 = sub_10000668C(v16, v17, &v45);
        v18, v20, v21, v22, v23, v24, v25, v26;
        *(v14 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "RDHousekeepingActivityScheduler: activity %s randomly disallowed by rate reducer", v14, 0xCu);
        sub_10000607C(v15);
      }

      sub_10000607C(v47);
      return 0;
    }

    sub_10000607C(v47);
  }

  else
  {
    sub_1000050A4(&v45, &unk_10093E4F0, &qword_1007A9640);
  }

  if ((*(v5 + 56))(ObjectType, v5))
  {
    return 1;
  }

  if (qword_1009361C8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100006654(v28, qword_100947970);
  v29 = v6;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v47[0] = v33;
    *v32 = 136315138;
    *&v45 = v29;
    v34 = (*(*(v5 + 16) + 16))(ObjectType);
    v36 = v35;
    v37 = sub_10000668C(v34, v35, v47);
    v36, v38, v39, v40, v41, v42, v43, v44;
    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v30, v31, "RDHousekeepingActivityScheduler: activity %s decided that it doesn't want to run at this moment", v32, 0xCu);
    sub_10000607C(v33);
  }

  return 0;
}

uint64_t sub_10045E49C(uint64_t *a1, uint64_t *a2)
{
  v29 = type metadata accessor for Date();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v28 - v10;
  v12 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v19 = &v28 - v18;
  v21 = *a1;
  v20 = a1[1];
  v22 = *a2;
  v28 = a2[1];
  ObjectType = swift_getObjectType();
  v31 = v21;
  sub_10051E8CC(ObjectType, *(v20 + 16));
  Optional<A>.orDistantPast.getter();
  sub_1000050A4(v19, &unk_100938850, qword_100795AE0);
  v24 = swift_getObjectType();
  v30 = v22;
  sub_10051E8CC(v24, *(v28 + 16));
  Optional<A>.orDistantPast.getter();
  sub_1000050A4(v15, &unk_100938850, qword_100795AE0);
  LOBYTE(v19) = static Date.< infix(_:_:)();
  v25 = *(v4 + 8);
  v26 = v29;
  v25(v7, v29);
  v25(v11, v26);
  return v19 & 1;
}

void sub_10045E6CC()
{
  v1 = *v0;
  v2 = type metadata accessor for Date.ISO8601FormatStyle();
  v91 = *(v2 - 8);
  v92 = v2;
  __chkstk_darwin(v2, v3);
  v89 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Date();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90, v5);
  v87 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = *(v1 + 88);
  v7 = *(v1 + 80);
  v94 = *(v93 + 8);
  v96 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v83 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v15, v16);
  v95 = &v83 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v21 = __chkstk_darwin(v18, v20);
  v23 = (&v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = v0[3];
  *v23 = v24;
  (*(v19 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v18, v21);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v23, v18);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v26 = *(*v0 + 136);
  swift_beginAccess();
  (*(v10 + 16))(v13, v0 + v26, v9);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) != 1)
  {
    v31 = AssociatedTypeWitness;
    v32 = v95;
    (*(v14 + 32))(v95, v13, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    if ((*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness))
    {
      if (qword_1009361C8 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_100006654(v34, qword_100947970);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v35, v36))
      {
        goto LABEL_22;
      }

      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = "RDHousekeepingActivityScheduler: Unexpectedly having pending activity on the scheduler (xpcActivity) when trying to create and schedule a new one";
    }

    else
    {
      v97[0] = v0[2];

      sub_100460AD0(v97, sub_1004614F4, sub_10046109C);
      if (*v97[0]->clientIdentity)
      {
        v39 = *&v97[0]->clientIdentity[16];
        v94 = *&v97[0]->clientIdentity[24];
        v40 = v39;

        if (qword_1009361C8 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_100006654(v41, qword_100947970);
        v42 = v40;
        static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
        static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v85 = v44;
          v46 = v45;
          v86 = swift_slowAlloc();
          v98[0] = v86;
          *v46 = 136446978;
          ObjectType = swift_getObjectType();
          v97[0] = v42;
          v48 = v94;
          v49 = *(*(v94 + 16) + 16);
          v84 = v43;
          v50 = ObjectType;
          v83 = ObjectType;
          v51 = v49();
          v53 = v52;
          v54 = sub_10000668C(v51, v52, v98);
          v53, v55, v56, v57, v58, v59, v60, v61;
          *(v46 + 4) = v54;
          *(v46 + 12) = 2082;
          v97[5] = v42;
          (*(*(v48 + 32) + 16))(v97, v50);
          sub_10000F61C(v97, v97[3]);
          v62 = v87;
          sub_10051EE80(v87);
          v63 = v89;
          sub_10051E9B4(v89);
          v64 = Date.ISO8601Format(_:)();
          v66 = v65;
          (*(v91 + 8))(v63, v92);
          v67 = v62;
          v68 = v94;
          (*(v88 + 8))(v67, v90);
          sub_10000607C(v97);
          v69 = sub_10000668C(v64, v66, v98);
          v66, v70, v71, v72, v73, v74, v75, v76;
          *(v46 + 14) = v69;
          *(v46 + 22) = 1040;
          *(v46 + 24) = 4;
          *(v46 + 28) = 2048;
          v77 = *(v68 + 48);
          *(v46 + 30) = v77(v83, v68);
          v78 = v84;
          _os_log_impl(&_mh_execute_header, v84, v85, "RDHousekeepingActivityScheduler: Activity with smallest throttling interval {identifier: %{public}s, due: %{public}s, interval: %.*f}", v46, 0x26u);
          swift_arrayDestroy();
        }

        else
        {

          v77 = *(v94 + 48);
        }

        v80 = swift_getObjectType();
        v81 = v77(v80, v94);
        v82 = swift_getAssociatedConformanceWitness();
        (*(v82 + 24))(v31, v82, v81);
        (*(AssociatedConformanceWitness + 24))(v31, AssociatedConformanceWitness);

        goto LABEL_25;
      }

      if (qword_1009361C8 != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      sub_100006654(v79, qword_100947970);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v35, v36))
      {
LABEL_22:

LABEL_25:
        (*(v14 + 8))(v32, v31);
        return;
      }

      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = "RDHousekeepingActivityScheduler: Must have at least 1 activity to call q_updateBackgroundActivityCriteria()";
    }

    _os_log_impl(&_mh_execute_header, v35, v36, v38, v37, 2u);

    goto LABEL_22;
  }

  (*(v10 + 8))(v13, v9);
  if (qword_1009361C8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100006654(v27, qword_100947970);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "RDHousekeepingActivityScheduler: Unexpectedly could not get a scheduler (xpcActivity) when trying to schedule a new one", v30, 2u);
  }
}