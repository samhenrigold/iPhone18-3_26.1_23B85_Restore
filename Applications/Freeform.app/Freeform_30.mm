uint64_t sub_100638CE4()
{
  (*(v0 + 336))(*(v0 + 272), *(v0 + 224));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100638E48(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v3[23] = *(sub_1005B981C(&qword_1019F6990, &qword_10146D2F0) - 8);
  v3[24] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = sub_1005B981C(&qword_1019F6998, &qword_10146F760);
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100638FD0, 0, 0);
}

uint64_t sub_100638FD0()
{
  v1 = v0[21];
  v2 = v0[22];
  ObjectType = swift_getObjectType();
  (*(v1 + 24))(*(v2 + 40), (*(v2 + 56) >> 2) & 1, ObjectType, v1);
  v4 = *(v0[22] + 48);
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_100639144;

  return sub_100639D08(v4);
}

uint64_t sub_100639144()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_100639BA8;
  }

  else
  {
    v2 = sub_100639258;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100639258()
{
  v1 = v0[10];
  v0[18] = v1;
  v48 = v0[2];
  v55 = v0[31];
  v56 = v0[32];
  v2 = v0[26];
  v54 = v0[23];
  v49 = v0[5];
  v3 = v1 + 64;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 64);
  v7 = (63 - v5) >> 6;
  v53 = (v2 + 48);
  v46 = v0[26];
  v47 = (v2 + 32);
  v57 = v1;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  v50 = _swiftEmptyArrayStorage;
  v51 = v7;
  v52 = v3;
LABEL_4:
  v10 = v9;
  if (!v6)
  {
    goto LABEL_6;
  }

  do
  {
    v9 = v10;
LABEL_9:
    v11 = v0[32];
    v12 = v0[24];
    v59 = v0[25];
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v14 = v13 | (v9 << 6);
    v15 = (*(v57 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(v55 + 48);
    sub_10000BE14(*(v57 + 56) + *(v54 + 72) * v14, v11 + v18, &qword_1019F6990, &qword_10146D2F0);
    *v11 = v16;
    *(v56 + 8) = v17;
    sub_10000BE14(v11 + v18, v12, &qword_1019F6990, &qword_10146D2F0);

    sub_10000CAAC(v11, &qword_1019F6998, &qword_10146F760);
    if ((*v53)(v12, 1, v59) != 1)
    {
      v20 = v0[29];
      v19 = v0[30];
      v21 = v0[25];
      v22 = *v47;
      (*v47)(v19, v0[24], v21);
      v22(v20, v19, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_100B356D0(0, v50[2] + 1, 1, v50);
      }

      v3 = v52;
      v24 = v50[2];
      v23 = v50[3];
      if (v24 >= v23 >> 1)
      {
        v50 = sub_100B356D0((v23 > 1), v24 + 1, 1, v50);
      }

      v7 = v51;
      v25 = v0[29];
      v26 = v0[25];
      v50[2] = v24 + 1;
      result = (v22)(v50 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v24, v25, v26);
      goto LABEL_4;
    }

    result = sub_10000CAAC(v0[24], &qword_1019F6990, &qword_10146D2F0);
    v10 = v9;
    v7 = v51;
    v3 = v52;
  }

  while (v6);
  while (1)
  {
LABEL_6:
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  sub_10000CAAC((v0 + 18), &qword_1019F69A0, &qword_10146F770);
  swift_beginAccess();
  sub_10063F9A8(v50);
  swift_endAccess();

  if (v49)
  {
    v27 = v0[22];
    v28 = *(v27 + 64);
    if (v48 > v28)
    {
      v28 = v48;
    }

    *(v27 + 64) = v28;
  }

  v29 = v0[11];
  v0[35] = v29;
  v0[19] = v29;

  result = sub_10063F93C((v0 + 2));
  v30 = *(v29 + 16);
  v0[36] = v30;
  if (v30)
  {
    v31 = 0;
    do
    {
      v0[37] = v31;
      v32 = v0[35];
      if (v31 >= *(v32 + 16))
      {
        goto LABEL_33;
      }

      v33 = v0[27];
      v34 = v0[26];
      v58 = v0[28];
      v60 = v0[25];
      v35 = v32 + 16 * v31;
      v36 = *(v35 + 32);
      v0[38] = v36;
      v37 = *(v35 + 40);
      ObjectType = swift_getObjectType();
      v39 = *(v37 + 16);
      swift_unknownObjectRetain();
      v39(ObjectType, v37);
      v41 = v40;
      v42 = swift_getObjectType();
      (*(v41 + 40))(v42, v41);
      swift_unknownObjectRelease();
      swift_beginAccess();
      v43 = sub_100E6AF38(v58, v33);
      swift_endAccess();
      (*(v34 + 8))(v58, v60);
      if (v43)
      {
        v45 = swift_task_alloc();
        v0[39] = v45;
        *v45 = v0;
        v45[1] = sub_10063981C;

        return sub_100638E48(v36, v37);
      }

      result = swift_unknownObjectRelease();
      v31 = v0[37] + 1;
    }

    while (v31 != v0[36]);
  }

  sub_10000CAAC((v0 + 19), &qword_1019F69A8, &qword_10146F778);

  v44 = v0[1];

  return v44();
}

uint64_t sub_10063981C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    sub_10000CAAC(v2 + 152, &qword_1019F69A8, &qword_10146F778);
    v3 = sub_100639C58;
  }

  else
  {
    v3 = sub_100639948;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100639948()
{
  while (1)
  {
    result = swift_unknownObjectRelease();
    v2 = v0[37] + 1;
    if (v2 == v0[36])
    {
      break;
    }

    v0[37] = v2;
    v3 = v0[35];
    if (v2 >= *(v3 + 16))
    {
      __break(1u);
      return result;
    }

    v4 = v0[27];
    v5 = v0[26];
    v17 = v0[28];
    v18 = v0[25];
    v6 = v3 + 16 * v2;
    v7 = *(v6 + 32);
    v0[38] = v7;
    v8 = *(v6 + 40);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    swift_unknownObjectRetain();
    v10(ObjectType, v8);
    v12 = v11;
    v13 = swift_getObjectType();
    (*(v12 + 40))(v13, v12);
    swift_unknownObjectRelease();
    swift_beginAccess();
    v14 = sub_100E6AF38(v17, v4);
    swift_endAccess();
    (*(v5 + 8))(v17, v18);
    if (v14)
    {
      v16 = swift_task_alloc();
      v0[39] = v16;
      *v16 = v0;
      v16[1] = sub_10063981C;

      return sub_100638E48(v7, v8);
    }
  }

  sub_10000CAAC((v0 + 19), &qword_1019F69A8, &qword_10146F778);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100639BA8()
{
  sub_10063F93C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100639C58()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100639D08(uint64_t a1)
{
  v2[110] = v1;
  v2[109] = a1;
  v2[111] = *(type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry(0) - 8);
  v2[112] = swift_task_alloc();
  v2[113] = type metadata accessor for CRLProto_ObjectInfo(0);
  v2[114] = swift_task_alloc();

  return _swift_task_switch(sub_100639E24, 0, 0);
}

uint64_t sub_100639E24()
{
  sub_10063CBE4(v0[114]);
  sub_10006837C(&qword_1019F69B0, type metadata accessor for CRLProto_ObjectInfo, byte_1014B4180);
  v1 = Message.serializedData(partial:)();
  v0[115] = v1;
  v0[116] = v2;
  v3 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(v2);
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
    goto LABEL_12;
  }

  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = __OFSUB__(v5, v6);
  v4 = v5 - v6;
  if (v7)
  {
    __break(1u);
LABEL_8:
    LODWORD(v4) = HIDWORD(v1) - v1;
    if (__OFSUB__(HIDWORD(v1), v1))
    {
      __break(1u);
    }

    v4 = v4;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

  __break(1u);
LABEL_12:
  v4 = 0;
LABEL_13:
  v0[107] = v4;
  v8 = sub_100AE5050((v0 + 107), (v0 + 108));
  v10 = v9;
  v0[117] = v8;
  v0[118] = v9;
  ObjectType = swift_getObjectType();
  v0[119] = ObjectType;
  v12 = swift_task_alloc();
  v0[120] = v12;
  *v12 = v0;
  v12[1] = sub_10063A070;

  return sub_100872530(v8, v10, ObjectType);
}

uint64_t sub_10063A070(uint64_t a1)
{
  v3 = *v2;
  v3[121] = a1;
  v3[122] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10063C700, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[123] = v4;
    *v4 = v3;
    v4[1] = sub_10063A240;
    v5 = v3[119];
    v6 = v3[116];
    v7 = v3[115];

    return sub_100872530(v7, v6, v5);
  }
}

uint64_t sub_10063A240(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 992) = v1;

  if (v1)
  {
    v5 = sub_10063C7E4;
  }

  else
  {
    *(v4 + 1000) = a1;
    v5 = sub_10063A390;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10063A390()
{
  v130 = v2;
  v6 = v2[125];
  v7 = v2[121];
  v8 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  inited = v2[114];
  v9 = *(inited + 32);
  v2[126] = v9;
  v10 = *(v9 + 16);
  v2[127] = v10;
  v2[128] = v8;

  if (!v10)
  {
LABEL_11:
    v28 = v2[118];
    v29 = v2[117];
    v30 = v2[116];
    v31 = v2[115];
    sub_10063FF0C(inited, type metadata accessor for CRLProto_ObjectInfo);
    sub_10002640C(v29, v28);
    sub_10002640C(v31, v30);

    v32 = v2[1];

    return v32(v8);
  }

  v127 = v8;
  v8 = 0;
  v128 = 1;
  v5 = &type metadata for String;
  v0 = &unk_10146BE50;
  while (1)
  {
    v2[129] = v8;
    v11 = v2[126];
    if (v8 >= *(v11 + 16))
    {
      goto LABEL_91;
    }

    v12 = v2[112];
    sub_10063FE3C(v11 + ((*(v2[111] + 80) + 32) & ~*(v2[111] + 80)) + *(v2[111] + 72) * v8, v12, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
    v13 = *v12;
    v3 = v12[1];

    v14._countAndFlagsBits = v13;
    v14._object = v3;
    v15 = _findStringSwitchCase(cases:string:)(&off_101873F70, v14);

    if (v15 > 5)
    {
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 56) = v5;
      v34 = sub_1000053B0();
      *(inited + 32) = v13;
      v4 = (inited + 32);
      v128 = v34;
      *(inited + 64) = v34;
      *(inited + 40) = v3;
      v35 = objc_opt_self();

      v126 = v35;
      LODWORD(v3) = [v35 _atomicIncrementAssertCount];
      v129 = [objc_allocWithZone(NSString) init];
      sub_100604538(inited, &v129, "Unexpected data dictionary key value: %@", 40, 2u);
      StaticString.description.getter("write(to:)", 10, 2);
      v127 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLSerializableObjectWriter.swift", 99, 2);
      v36 = String._bridgeToObjectiveC()();

      v37 = [v36 lastPathComponent];

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v0 = v38;

      if (qword_1019F20A0 == -1)
      {
LABEL_15:
        v39 = static OS_os_log.crlAssert;
        v40 = swift_initStackObject();
        *(v40 + 16) = xmmword_10146CA70;
        *(v40 + 56) = &type metadata for Int32;
        *(v40 + 64) = &protocol witness table for Int32;
        *(v40 + 32) = v3;
        v41 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v40 + 96) = v41;
        v42 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
        *(v40 + 72) = v127;
        *(v40 + 136) = v5;
        *(v40 + 144) = v128;
        *(v40 + 104) = v42;
        *(v40 + 112) = v8;
        *(v40 + 120) = v0;
        *(v40 + 176) = &type metadata for UInt;
        *(v40 + 184) = &protocol witness table for UInt;
        *(v40 + 152) = 183;
        v43 = v129;
        *(v40 + 216) = v41;
        *(v40 + 224) = v42;
        *(v40 + 192) = v43;
        v44 = v127;
        v45 = v43;
        v46 = static os_log_type_t.error.getter();
        sub_100005404(v39, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v40);

        v47 = static os_log_type_t.error.getter();
        sub_100005404(v39, &_mh_execute_header, v47, "Unexpected data dictionary key value: %@", 40, 2, inited);

        sub_10063DF98(inited, "Unexpected data dictionary key value: %@");
        type metadata accessor for __VaListBuilder();
        v48 = swift_allocObject();
        v48[2] = 8;
        v48[3] = 0;
        v20 = v48 + 3;
        v48[4] = 0;
        v48[5] = 0;
        v3 = *(inited + 16);
        if (!v3)
        {
          goto LABEL_67;
        }

        v49 = 0;
        v8 = 40;
        while (1)
        {
          v50 = &v4[5 * v49];
          v0 = v50[3];
          inited = sub_100020E58(v50, v0);
          v26 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v27 = *v20;
          v51 = *(v26 + 16);
          v52 = __OFADD__(*v20, v51);
          v53 = *v20 + v51;
          if (v52)
          {
            goto LABEL_92;
          }

          inited = v48[4];
          if (inited >= v53)
          {
            goto LABEL_32;
          }

          if (inited + 0x4000000000000000 < 0)
          {
            goto LABEL_94;
          }

          v0 = v48[5];
          if (2 * inited > v53)
          {
            v53 = 2 * inited;
          }

          v48[4] = v53;
          if ((v53 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_95;
          }

          v5 = v26;
          v54 = swift_slowAlloc();
          v55 = v54;
          v48[5] = v54;
          if (v0)
          {
            break;
          }

          v26 = v5;
          if (!v55)
          {
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_33:
          v57 = *(v26 + 16);
          if (v57)
          {
            v58 = (v26 + 32);
            v59 = *v20;
            while (1)
            {
              v60 = *v58++;
              v55[v59] = v60;
              v59 = *v20 + 1;
              if (__OFADD__(*v20, 1))
              {
                break;
              }

              *v20 = v59;
              if (!--v57)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_90;
          }

LABEL_17:

          if (++v49 == v3)
          {
            goto LABEL_67;
          }
        }

        if (v54 != v0 || v54 >= v0 + 8 * v27)
        {
          memmove(v54, v0, 8 * v27);
        }

        inited = v48;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v26 = v5;
LABEL_32:
        v55 = v48[5];
        if (!v55)
        {
          goto LABEL_39;
        }

        goto LABEL_33;
      }

LABEL_99:
      swift_once();
      goto LABEL_15;
    }

    v16 = *(v2[110] + 56);
    if (*(v16 + 16))
    {
      v17 = sub_1007C8330(v15);
      if (v18)
      {
        v95 = v2[112];
        v96 = (*(v16 + 56) + 16 * v17);
        v97 = *v96;
        v2[130] = *v96;
        v98 = v96[1];
        v2[131] = v98;
        v99 = *(v95 + 16);
        v100 = v98 >> 62;
        if ((v98 >> 62) > 1)
        {
          if (v100 != 2)
          {
            if (!v99)
            {
              goto LABEL_82;
            }

            goto LABEL_86;
          }

          v103 = *(v97 + 16);
          v102 = *(v97 + 24);
          v101 = v102 - v103;
          if (__OFSUB__(v102, v103))
          {
            __break(1u);
            goto LABEL_77;
          }
        }

        else
        {
          if (!v100)
          {
            v101 = BYTE6(v98);
LABEL_80:
            if ((v101 & 0x8000000000000000) == 0 && v99 == v101)
            {
LABEL_82:
              v104 = swift_task_alloc();
              v2[132] = v104;
              *v104 = v2;
              v104[1] = sub_10063B490;
              v105 = v2[119];

              return sub_100872530(v97, v98, v105);
            }

LABEL_86:
            v106 = objc_opt_self();
            v107 = [v106 _atomicIncrementAssertCount];
            v129 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v129, "Unexpected mismatch for entry data size.", 40, 2u);
            StaticString.description.getter("write(to:)", 10, 2);
            v108 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLSerializableObjectWriter.swift", 99, 2);
            v109 = String._bridgeToObjectiveC()();

            v110 = [v109 lastPathComponent];

            v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v113 = v112;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v114 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            v115 = swift_initStackObject();
            *(v115 + 16) = xmmword_10146CA70;
            *(v115 + 56) = &type metadata for Int32;
            *(v115 + 64) = &protocol witness table for Int32;
            *(v115 + 32) = v107;
            v116 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
            *(v115 + 96) = v116;
            v117 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
            *(v115 + 104) = v117;
            *(v115 + 72) = v108;
            *(v115 + 136) = v5;
            v118 = sub_1000053B0();
            *(v115 + 112) = v111;
            *(v115 + 120) = v113;
            *(v115 + 176) = &type metadata for UInt;
            *(v115 + 184) = &protocol witness table for UInt;
            *(v115 + 144) = v118;
            *(v115 + 152) = 191;
            v119 = v129;
            *(v115 + 216) = v116;
            *(v115 + 224) = v117;
            *(v115 + 192) = v119;
            v120 = v108;
            v121 = v119;
            v122 = static os_log_type_t.error.getter();
            sub_100005404(v114, &_mh_execute_header, v122, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v115);

            v123 = static os_log_type_t.error.getter();
            sub_100005404(v114, &_mh_execute_header, v123, "Unexpected mismatch for entry data size.", 40, 2, _swiftEmptyArrayStorage);

            sub_10063DF98(_swiftEmptyArrayStorage, "Unexpected mismatch for entry data size.");
            type metadata accessor for __VaListBuilder();
            v124 = swift_allocObject();
            v124[2] = 8;
            v124[3] = 0;
            v124[4] = 0;
            v124[5] = 0;
            v125 = __VaListBuilder.va_list()();
            StaticString.description.getter("write(to:)", 10, 2);
            v89 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLSerializableObjectWriter.swift", 99, 2);
            v90 = String._bridgeToObjectiveC()();

            StaticString.description.getter("Unexpected mismatch for entry data size.", 40, 2);
            v91 = String._bridgeToObjectiveC()();

            [v106 handleFailureInFunction:v89 file:v90 lineNumber:191 isFatal:1 format:v91 args:v125];
            goto LABEL_69;
          }

LABEL_77:
          if (__OFSUB__(HIDWORD(v97), v97))
          {
            __break(1u);
          }

          v101 = HIDWORD(v97) - v97;
        }

        sub_100024E98(v97, v98);
        goto LABEL_80;
      }
    }

    v19 = v2[112];
    LODWORD(v3) = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v20 = swift_initStackObject();
    *(v20 + 1) = xmmword_10146C6B0;
    v21 = v5;
    v22 = *(v19 + 16);
    v2[108] = v22;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v4 = v21;
    v20[7] = v21;
    v26 = sub_1000053B0();
    v20[4] = v23;
    v27 = (v20 + 4);
    v20[8] = v26;
    v20[5] = v25;
    if (v22)
    {
      break;
    }

    ++v8;
    inited = v2[127];
    sub_10063FF0C(v2[112], type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
    swift_setDeallocating();
    sub_100005070(v20 + 4);
    v5 = v4;
    if (v8 == inited)
    {
      inited = v2[114];
      v8 = v127;
      goto LABEL_11;
    }
  }

LABEL_40:
  v128 = v26;
  v126 = objc_opt_self();
  v61 = [v126 _atomicIncrementAssertCount];
  v129 = [objc_allocWithZone(NSString) init];
  sub_100604538(v20, &v129, "Expected entry size for missing entry: %@", 41, 2u);
  StaticString.description.getter("write(to:)", 10, 2);
  v127 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLSerializableObjectWriter.swift", 99, 2);
  v62 = String._bridgeToObjectiveC()();

  v63 = [v62 lastPathComponent];

  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v65;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v66 = static OS_os_log.crlAssert;
  v67 = swift_initStackObject();
  *(v67 + 16) = xmmword_10146CA70;
  *(v67 + 56) = &type metadata for Int32;
  *(v67 + 64) = &protocol witness table for Int32;
  *(v67 + 32) = v61;
  v68 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v67 + 96) = v68;
  v69 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(v67 + 72) = v127;
  *(v67 + 136) = v4;
  *(v67 + 144) = v128;
  *(v67 + 104) = v69;
  *(v67 + 112) = v64;
  *(v67 + 120) = v5;
  *(v67 + 176) = &type metadata for UInt;
  *(v67 + 184) = &protocol witness table for UInt;
  *(v67 + 152) = 187;
  v70 = v129;
  *(v67 + 216) = v68;
  *(v67 + 224) = v69;
  *(v67 + 192) = v70;
  v71 = v127;
  v72 = v70;
  v73 = static os_log_type_t.error.getter();
  sub_100005404(v66, &_mh_execute_header, v73, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v67);

  v74 = static os_log_type_t.error.getter();
  sub_100005404(v66, &_mh_execute_header, v74, "Expected entry size for missing entry: %@", 41, 2, v20);

  sub_10063DF98(v20, "Expected entry size for missing entry: %@");
  type metadata accessor for __VaListBuilder();
  v75 = swift_allocObject();
  v75[2] = 8;
  v75[3] = 0;
  v3 = v75 + 3;
  v75[4] = 0;
  v75[5] = 0;
  v4 = v20[2];
  if (!v4)
  {
LABEL_68:
    v92 = __VaListBuilder.va_list()();
    StaticString.description.getter("write(to:)", 10, 2);
    v89 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLSerializableObjectWriter.swift", 99, 2);
    v90 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Expected entry size for missing entry: %@", 41, 2);
    v91 = String._bridgeToObjectiveC()();

    [v126 handleFailureInFunction:v89 file:v90 lineNumber:187 isFatal:1 format:v91 args:v92];
    goto LABEL_69;
  }

  v76 = 0;
  v8 = 40;
  while (2)
  {
    inited = sub_100020E58((v27 + 40 * v76), *(v27 + 40 * v76 + 24));
    v77 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v0 = *v3;
    v78 = *(v77 + 16);
    v52 = __OFADD__(*v3, v78);
    v79 = *v3 + v78;
    if (v52)
    {
      goto LABEL_93;
    }

    inited = v75[4];
    if (inited >= v79)
    {
LABEL_59:
      v82 = v75[5];
      if (!v82)
      {
        goto LABEL_66;
      }

LABEL_60:
      v84 = *(v77 + 16);
      if (!v84)
      {
LABEL_44:

        if (++v76 == v4)
        {
          goto LABEL_68;
        }

        continue;
      }

      v85 = (v77 + 32);
      v86 = *v3;
      while (1)
      {
        v87 = *v85++;
        *&v82[8 * v86] = v87;
        v86 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v86;
        if (!--v84)
        {
          goto LABEL_44;
        }
      }

LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
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
      __break(1u);
      goto LABEL_98;
    }

    break;
  }

  if (inited + 0x4000000000000000 < 0)
  {
    goto LABEL_96;
  }

  v80 = v75[5];
  if (2 * inited > v79)
  {
    v79 = 2 * inited;
  }

  v75[4] = v79;
  if ((v79 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_97;
  }

  v5 = v77;
  v81 = swift_slowAlloc();
  v82 = v81;
  v75[5] = v81;
  if (v80)
  {
    if (v81 != v80 || v81 >= &v80[8 * v0])
    {
      memmove(v81, v80, 8 * v0);
    }

    inited = v75;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v77 = v5;
    goto LABEL_59;
  }

  v77 = v5;
  if (v82)
  {
    goto LABEL_60;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  v88 = __VaListBuilder.va_list()();
  StaticString.description.getter("write(to:)", 10, 2);
  v89 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLSerializableObjectWriter.swift", 99, 2);
  v90 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Unexpected data dictionary key value: %@", 40, 2);
  v91 = String._bridgeToObjectiveC()();

  [v126 handleFailureInFunction:v89 file:v90 lineNumber:183 isFatal:1 format:v91 args:v88];
LABEL_69:

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v93, v94);
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_10063B490(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1064) = v1;

  if (v1)
  {

    v5 = sub_10063C8C8;
  }

  else
  {
    *(v4 + 1072) = a1;
    v5 = sub_10063B5E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10063B5E8()
{
  v128 = v0;
  v5 = v0[134];
  v6 = v0[128];
  inited = v0[112];
  sub_10002640C(v0[130], v0[131]);
  sub_10063FF0C(inited, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
  if (__OFADD__(v6, v5))
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v3 = v0[129] + 1;
  v8 = v0[127];
  v125 = (v6 + v5);
  v0[128] = v6 + v5;
  if (v3 == v8)
  {
LABEL_10:
    v26 = v0[118];
    v27 = v0[117];
    v28 = v0[116];
    v29 = v0[115];
    sub_10063FF0C(v0[114], type metadata accessor for CRLProto_ObjectInfo);
    sub_10002640C(v27, v26);
    sub_10002640C(v29, v28);

    v30 = v0[1];

    return v30(v125);
  }

  v126 = 1;
  v4 = &type metadata for String;
  v5 = &unk_10146BE50;
  while (1)
  {
    v0[129] = v3;
    v9 = v0[126];
    if (v3 >= *(v9 + 16))
    {
      goto LABEL_90;
    }

    v10 = v0[112];
    sub_10063FE3C(v9 + ((*(v0[111] + 80) + 32) & ~*(v0[111] + 80)) + *(v0[111] + 72) * v3, v10, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
    v11 = *v10;
    v1 = v10[1];

    v12._countAndFlagsBits = v11;
    v12._object = v1;
    v13 = _findStringSwitchCase(cases:string:)(&off_101873F70, v12);

    if (v13 > 5)
    {
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 56) = v4;
      v32 = sub_1000053B0();
      *(inited + 32) = v11;
      v2 = (inited + 32);
      v126 = v32;
      *(inited + 64) = v32;
      *(inited + 40) = v1;
      v33 = objc_opt_self();

      v124 = v33;
      LODWORD(v1) = [v33 _atomicIncrementAssertCount];
      v127 = [objc_allocWithZone(NSString) init];
      sub_100604538(inited, &v127, "Unexpected data dictionary key value: %@", 40, 2u);
      StaticString.description.getter("write(to:)", 10, 2);
      v125 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLSerializableObjectWriter.swift", 99, 2);
      v34 = String._bridgeToObjectiveC()();

      v35 = [v34 lastPathComponent];

      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v36;

      if (qword_1019F20A0 == -1)
      {
LABEL_14:
        v37 = static OS_os_log.crlAssert;
        v38 = swift_initStackObject();
        *(v38 + 16) = xmmword_10146CA70;
        *(v38 + 56) = &type metadata for Int32;
        *(v38 + 64) = &protocol witness table for Int32;
        *(v38 + 32) = v1;
        v39 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v38 + 96) = v39;
        v40 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
        *(v38 + 72) = v125;
        *(v38 + 136) = v4;
        *(v38 + 144) = v126;
        *(v38 + 104) = v40;
        *(v38 + 112) = v3;
        *(v38 + 120) = v5;
        *(v38 + 176) = &type metadata for UInt;
        *(v38 + 184) = &protocol witness table for UInt;
        *(v38 + 152) = 183;
        v41 = v127;
        *(v38 + 216) = v39;
        *(v38 + 224) = v40;
        *(v38 + 192) = v41;
        v42 = v125;
        v43 = v41;
        v44 = static os_log_type_t.error.getter();
        sub_100005404(v37, &_mh_execute_header, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v38);

        v45 = static os_log_type_t.error.getter();
        sub_100005404(v37, &_mh_execute_header, v45, "Unexpected data dictionary key value: %@", 40, 2, inited);

        sub_10063DF98(inited, "Unexpected data dictionary key value: %@");
        type metadata accessor for __VaListBuilder();
        v46 = swift_allocObject();
        v46[2] = 8;
        v46[3] = 0;
        v18 = v46 + 3;
        v46[4] = 0;
        v46[5] = 0;
        v1 = *(inited + 16);
        if (!v1)
        {
          goto LABEL_66;
        }

        v47 = 0;
        v3 = 40;
        while (1)
        {
          v48 = &v2[5 * v47];
          v5 = v48[3];
          inited = sub_100020E58(v48, v5);
          v24 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v25 = *v18;
          v49 = *(v24 + 16);
          v50 = __OFADD__(*v18, v49);
          v51 = *v18 + v49;
          if (v50)
          {
            goto LABEL_91;
          }

          inited = v46[4];
          if (inited >= v51)
          {
            goto LABEL_31;
          }

          if (inited + 0x4000000000000000 < 0)
          {
            goto LABEL_93;
          }

          v5 = v46[5];
          if (2 * inited > v51)
          {
            v51 = 2 * inited;
          }

          v46[4] = v51;
          if ((v51 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_94;
          }

          v4 = v24;
          v52 = swift_slowAlloc();
          v53 = v52;
          v46[5] = v52;
          if (v5)
          {
            break;
          }

          v24 = v4;
          if (!v53)
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

LABEL_32:
          v55 = *(v24 + 16);
          if (v55)
          {
            v56 = (v24 + 32);
            v57 = *v18;
            while (1)
            {
              v58 = *v56++;
              v53[v57] = v58;
              v57 = *v18 + 1;
              if (__OFADD__(*v18, 1))
              {
                break;
              }

              *v18 = v57;
              if (!--v55)
              {
                goto LABEL_16;
              }
            }

            __break(1u);
            goto LABEL_89;
          }

LABEL_16:

          if (++v47 == v1)
          {
            goto LABEL_66;
          }
        }

        if (v52 != v5 || v52 >= v5 + 8 * v25)
        {
          memmove(v52, v5, 8 * v25);
        }

        inited = v46;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v24 = v4;
LABEL_31:
        v53 = v46[5];
        if (!v53)
        {
          goto LABEL_38;
        }

        goto LABEL_32;
      }

LABEL_98:
      swift_once();
      goto LABEL_14;
    }

    v14 = *(v0[110] + 56);
    if (*(v14 + 16))
    {
      v15 = sub_1007C8330(v13);
      if (v16)
      {
        v93 = v0[112];
        v94 = (*(v14 + 56) + 16 * v15);
        v95 = *v94;
        v0[130] = *v94;
        v96 = v94[1];
        v0[131] = v96;
        v97 = *(v93 + 16);
        v98 = v96 >> 62;
        if ((v96 >> 62) > 1)
        {
          if (v98 != 2)
          {
            if (!v97)
            {
              goto LABEL_81;
            }

            goto LABEL_85;
          }

          v101 = *(v95 + 16);
          v100 = *(v95 + 24);
          v99 = v100 - v101;
          if (__OFSUB__(v100, v101))
          {
            __break(1u);
            goto LABEL_76;
          }
        }

        else
        {
          if (!v98)
          {
            v99 = BYTE6(v96);
LABEL_79:
            if ((v99 & 0x8000000000000000) == 0 && v97 == v99)
            {
LABEL_81:
              v102 = swift_task_alloc();
              v0[132] = v102;
              *v102 = v0;
              v102[1] = sub_10063B490;
              v103 = v0[119];

              return sub_100872530(v95, v96, v103);
            }

LABEL_85:
            v104 = objc_opt_self();
            v105 = [v104 _atomicIncrementAssertCount];
            v127 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v127, "Unexpected mismatch for entry data size.", 40, 2u);
            StaticString.description.getter("write(to:)", 10, 2);
            v106 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLSerializableObjectWriter.swift", 99, 2);
            v107 = String._bridgeToObjectiveC()();

            v108 = [v107 lastPathComponent];

            v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v111 = v110;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v112 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            v113 = swift_initStackObject();
            *(v113 + 16) = xmmword_10146CA70;
            *(v113 + 56) = &type metadata for Int32;
            *(v113 + 64) = &protocol witness table for Int32;
            *(v113 + 32) = v105;
            v114 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
            *(v113 + 96) = v114;
            v115 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
            *(v113 + 104) = v115;
            *(v113 + 72) = v106;
            *(v113 + 136) = v4;
            v116 = sub_1000053B0();
            *(v113 + 112) = v109;
            *(v113 + 120) = v111;
            *(v113 + 176) = &type metadata for UInt;
            *(v113 + 184) = &protocol witness table for UInt;
            *(v113 + 144) = v116;
            *(v113 + 152) = 191;
            v117 = v127;
            *(v113 + 216) = v114;
            *(v113 + 224) = v115;
            *(v113 + 192) = v117;
            v118 = v106;
            v119 = v117;
            v120 = static os_log_type_t.error.getter();
            sub_100005404(v112, &_mh_execute_header, v120, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v113);

            v121 = static os_log_type_t.error.getter();
            sub_100005404(v112, &_mh_execute_header, v121, "Unexpected mismatch for entry data size.", 40, 2, _swiftEmptyArrayStorage);

            sub_10063DF98(_swiftEmptyArrayStorage, "Unexpected mismatch for entry data size.");
            type metadata accessor for __VaListBuilder();
            v122 = swift_allocObject();
            v122[2] = 8;
            v122[3] = 0;
            v122[4] = 0;
            v122[5] = 0;
            v123 = __VaListBuilder.va_list()();
            StaticString.description.getter("write(to:)", 10, 2);
            v87 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLSerializableObjectWriter.swift", 99, 2);
            v88 = String._bridgeToObjectiveC()();

            StaticString.description.getter("Unexpected mismatch for entry data size.", 40, 2);
            v89 = String._bridgeToObjectiveC()();

            [v104 handleFailureInFunction:v87 file:v88 lineNumber:191 isFatal:1 format:v89 args:v123];
            goto LABEL_68;
          }

LABEL_76:
          if (__OFSUB__(HIDWORD(v95), v95))
          {
            __break(1u);
          }

          v99 = HIDWORD(v95) - v95;
        }

        sub_100024E98(v95, v96);
        goto LABEL_79;
      }
    }

    v17 = v0[112];
    LODWORD(v1) = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v18 = swift_initStackObject();
    *(v18 + 1) = xmmword_10146C6B0;
    v19 = v4;
    v20 = *(v17 + 16);
    v0[108] = v20;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v2 = v19;
    v18[7] = v19;
    v24 = sub_1000053B0();
    v18[4] = v21;
    v25 = (v18 + 4);
    v18[8] = v24;
    v18[5] = v23;
    if (v20)
    {
      break;
    }

    ++v3;
    inited = v0[127];
    sub_10063FF0C(v0[112], type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
    swift_setDeallocating();
    sub_100005070(v18 + 4);
    v4 = v2;
    if (v3 == inited)
    {
      goto LABEL_10;
    }
  }

LABEL_39:
  v126 = v24;
  v124 = objc_opt_self();
  v59 = [v124 _atomicIncrementAssertCount];
  v127 = [objc_allocWithZone(NSString) init];
  sub_100604538(v18, &v127, "Expected entry size for missing entry: %@", 41, 2u);
  StaticString.description.getter("write(to:)", 10, 2);
  v125 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLSerializableObjectWriter.swift", 99, 2);
  v60 = String._bridgeToObjectiveC()();

  v61 = [v60 lastPathComponent];

  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v63;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v64 = static OS_os_log.crlAssert;
  v65 = swift_initStackObject();
  *(v65 + 16) = xmmword_10146CA70;
  *(v65 + 56) = &type metadata for Int32;
  *(v65 + 64) = &protocol witness table for Int32;
  *(v65 + 32) = v59;
  v66 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v65 + 96) = v66;
  v67 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(v65 + 72) = v125;
  *(v65 + 136) = v2;
  *(v65 + 144) = v126;
  *(v65 + 104) = v67;
  *(v65 + 112) = v62;
  *(v65 + 120) = v4;
  *(v65 + 176) = &type metadata for UInt;
  *(v65 + 184) = &protocol witness table for UInt;
  *(v65 + 152) = 187;
  v68 = v127;
  *(v65 + 216) = v66;
  *(v65 + 224) = v67;
  *(v65 + 192) = v68;
  v69 = v125;
  v70 = v68;
  v71 = static os_log_type_t.error.getter();
  sub_100005404(v64, &_mh_execute_header, v71, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v65);

  v72 = static os_log_type_t.error.getter();
  sub_100005404(v64, &_mh_execute_header, v72, "Expected entry size for missing entry: %@", 41, 2, v18);

  sub_10063DF98(v18, "Expected entry size for missing entry: %@");
  type metadata accessor for __VaListBuilder();
  v73 = swift_allocObject();
  v73[2] = 8;
  v73[3] = 0;
  v1 = v73 + 3;
  v73[4] = 0;
  v73[5] = 0;
  v2 = v18[2];
  if (!v2)
  {
LABEL_67:
    v90 = __VaListBuilder.va_list()();
    StaticString.description.getter("write(to:)", 10, 2);
    v87 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLSerializableObjectWriter.swift", 99, 2);
    v88 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Expected entry size for missing entry: %@", 41, 2);
    v89 = String._bridgeToObjectiveC()();

    [v124 handleFailureInFunction:v87 file:v88 lineNumber:187 isFatal:1 format:v89 args:v90];
    goto LABEL_68;
  }

  v74 = 0;
  v3 = 40;
  while (2)
  {
    inited = sub_100020E58((v25 + 40 * v74), *(v25 + 40 * v74 + 24));
    v75 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v5 = *v1;
    v76 = *(v75 + 16);
    v50 = __OFADD__(*v1, v76);
    v77 = *v1 + v76;
    if (v50)
    {
      goto LABEL_92;
    }

    inited = v73[4];
    if (inited >= v77)
    {
LABEL_58:
      v80 = v73[5];
      if (!v80)
      {
        goto LABEL_65;
      }

LABEL_59:
      v82 = *(v75 + 16);
      if (!v82)
      {
LABEL_43:

        if (++v74 == v2)
        {
          goto LABEL_67;
        }

        continue;
      }

      v83 = (v75 + 32);
      v84 = *v1;
      while (1)
      {
        v85 = *v83++;
        *&v80[8 * v84] = v85;
        v84 = *v1 + 1;
        if (__OFADD__(*v1, 1))
        {
          break;
        }

        *v1 = v84;
        if (!--v82)
        {
          goto LABEL_43;
        }
      }

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
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    break;
  }

  if (inited + 0x4000000000000000 < 0)
  {
    goto LABEL_95;
  }

  v78 = v73[5];
  if (2 * inited > v77)
  {
    v77 = 2 * inited;
  }

  v73[4] = v77;
  if ((v77 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_96;
  }

  v4 = v75;
  v79 = swift_slowAlloc();
  v80 = v79;
  v73[5] = v79;
  if (v78)
  {
    if (v79 != v78 || v79 >= &v78[8 * v5])
    {
      memmove(v79, v78, 8 * v5);
    }

    inited = v73;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v75 = v4;
    goto LABEL_58;
  }

  v75 = v4;
  if (v80)
  {
    goto LABEL_59;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  v86 = __VaListBuilder.va_list()();
  StaticString.description.getter("write(to:)", 10, 2);
  v87 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLSerializableObjectWriter.swift", 99, 2);
  v88 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Unexpected data dictionary key value: %@", 40, 2);
  v89 = String._bridgeToObjectiveC()();

  [v124 handleFailureInFunction:v87 file:v88 lineNumber:183 isFatal:1 format:v89 args:v86];
LABEL_68:

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v91, v92);
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_10063C700()
{
  v1 = v0[116];
  v2 = v0[115];
  v3 = v0[114];
  sub_10002640C(v0[117], v0[118]);
  sub_10002640C(v2, v1);
  sub_10063FF0C(v3, type metadata accessor for CRLProto_ObjectInfo);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10063C7E4()
{
  v1 = v0[116];
  v2 = v0[115];
  v3 = v0[114];
  sub_10002640C(v0[117], v0[118]);
  sub_10002640C(v2, v1);
  sub_10063FF0C(v3, type metadata accessor for CRLProto_ObjectInfo);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10063C8C8()
{
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[116];
  v4 = v0[115];
  v5 = v0[114];
  v6 = v0[112];
  sub_10002640C(v0[117], v0[118]);
  sub_10002640C(v2, v1);
  sub_10002640C(v4, v3);
  sub_10063FF0C(v6, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
  sub_10063FF0C(v5, type metadata accessor for CRLProto_ObjectInfo);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10063C9F0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_10063CA88()
{
  result = qword_1019F6968;
  if (!qword_1019F6968)
  {
    result = swift_getWitnessTable(byte_10146F5E4, &type metadata for CRLSerializableObjectWriterOptions, v0, v1);
    atomic_store(result, &qword_1019F6968);
  }

  return result;
}

unint64_t sub_10063CAE0()
{
  result = qword_1019F6970;
  if (!qword_1019F6970)
  {
    result = swift_getWitnessTable("MA<", &type metadata for CRLSerializableObjectWriterOptions, v0, v1);
    atomic_store(result, &qword_1019F6970);
  }

  return result;
}

unint64_t sub_10063CB38()
{
  result = qword_1019F6978;
  if (!qword_1019F6978)
  {
    result = swift_getWitnessTable(byte_10146F60C, &type metadata for CRLSerializableObjectWriterOptions, v0, v1);
    atomic_store(result, &qword_1019F6978);
  }

  return result;
}

unint64_t sub_10063CB90()
{
  result = qword_1019F6980;
  if (!qword_1019F6980)
  {
    result = swift_getWitnessTable(byte_10146F644, &type metadata for CRLSerializableObjectWriterOptions, v0, v1);
    atomic_store(result, &qword_1019F6980);
  }

  return result;
}

uint64_t sub_10063CBE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  v145 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v144 = &v127 - v4;
  v143 = sub_1005B981C(&qword_1019F6998, &qword_10146F760);
  __chkstk_darwin(v143);
  v153 = (&v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v142 = &v127 - v7;
  v141 = type metadata accessor for CRLProto_ObjectInfo.AssetReference(0);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v9 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v127 - v11;
  v13 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v13 - 8);
  v136 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v152 = (&v127 - v16);
  v159 = type metadata accessor for CRLProto_Data(0);
  v17 = *(v159 - 8);
  __chkstk_darwin(v159);
  v19 = (&v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v22 = (&v127 - v21);
  v154 = type metadata accessor for UUID();
  v131 = *(v154 - 8);
  __chkstk_darwin(v154);
  v135 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v149 = &v127 - v25;
  v26 = type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference(0);
  v27 = *(v26 - 8);
  v150 = v26;
  v151 = v27;
  __chkstk_darwin(v26);
  v138 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 8) = _swiftEmptyArrayStorage;
  *(a1 + 16) = _swiftEmptyArrayStorage;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  *(a1 + 32) = _swiftEmptyArrayStorage;
  *(a1 + 40) = 0;
  *(a1 + 48) = _swiftEmptyArrayStorage;
  *(a1 + 56) = _swiftEmptyArrayStorage;
  v29 = type metadata accessor for CRLProto_ObjectInfo(0);
  UnknownStorage.init()();
  v30 = a1 + *(v29 + 52);
  *v30 = 0;
  *(v30 + 4) = 1;
  v31 = *(v1 + 32);
  if ((v31 & 0x8000000000000000) != 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (HIDWORD(v31))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v134 = v19;
  v32 = *v1;
  v33 = *(v1 + 8);
  v34 = *(v1 + 24);
  v35 = *(v1 + 40);
  v36 = *(v1 + 48);
  v37 = *(v1 + 64);
  v127 = *(v1 + 56);
  *a1 = v31;
  if ((v36 & 1) == 0)
  {
    if ((v35 & 0x8000000000000000) != 0)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }

    if (HIDWORD(v35))
    {
      goto LABEL_54;
    }

    *v30 = v35;
    *(v30 + 4) = 0;
  }

  v146 = v37;
  v139 = v12;
  sub_101286248(v32);
  *(a1 + 8) = v38;
  sub_101286248(v33);
  *(a1 + 40) = v34;
  *(a1 + 48) = v39;
  v40 = *(v1 + 72);
  v41 = *(v40 + 16);
  v42 = _swiftEmptyArrayStorage;
  v160 = v9;
  v128 = a1;
  if (v41)
  {
    v170 = _swiftEmptyArrayStorage;
    v158 = v41;
    sub_100776884(0, v41, 0);
    v42 = v170;
    v157 = (v17 + 7);
    v147 = v131 + 1;
    v133 = v17;
    v43 = (v17 + 6);
    v44 = (v40 + 40);
    v137 = xmmword_10146F370;
    v45 = v138;
    v148 = v22;
    v46 = v159;
    v47 = v152;
    do
    {
      v156 = v42;
      v48 = *v44;
      v49 = v43;
      swift_unknownObjectRetain();
      UnknownStorage.init()();
      v50 = *(v150 + 5);
      v155 = *v157;
      (v155)(v45 + v50, 1, 1, v46);
      ObjectType = swift_getObjectType();
      (*(v48 + 16))(ObjectType, v48);
      v53 = v52;
      v54 = swift_getObjectType();
      v55 = v149;
      (*(v53 + 40))(v54, v53);
      swift_unknownObjectRelease();
      v161 = UUID.uuid.getter();
      v162 = v56;
      v163 = v57;
      v164 = v58;
      v165 = v59;
      v166 = v60;
      v167 = v61;
      v168 = v62;
      v169 = v63;
      UUID.uuid.getter();
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v64 = __DataStorage.init(bytes:length:)();
      (*v147)(v55, v154);
      sub_10000BE14(v45 + v50, v47, &qword_1019F67C0, &unk_10146F3E0);
      v65 = *v49;
      v43 = v49;
      if ((*v49)(v47, 1, v46) == 1)
      {
        v66 = v148;
        *v148 = v137;
        UnknownStorage.init()();
        swift_unknownObjectRelease();
        v67 = v65(v47, 1, v46);
        v45 = v138;
        if (v67 != 1)
        {
          sub_10000CAAC(v47, &qword_1019F67C0, &unk_10146F3E0);
        }
      }

      else
      {
        swift_unknownObjectRelease();
        v66 = v148;
        sub_10063FEA4(v47, v148, type metadata accessor for CRLProto_Data);
      }

      sub_10002640C(*v66, *(v66 + 1));
      *v66 = 0x1000000000;
      *(v66 + 1) = v64 | 0x4000000000000000;
      sub_10000CAAC(v45 + v50, &qword_1019F67C0, &unk_10146F3E0);
      sub_10063FEA4(v66, v45 + v50, type metadata accessor for CRLProto_Data);
      (v155)(v45 + v50, 0, 1, v46);
      v42 = v156;
      v170 = v156;
      v69 = *(v156 + 16);
      v68 = *(v156 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_100776884((v68 > 1), v69 + 1, 1);
        v42 = v170;
      }

      v42[2] = v69 + 1;
      sub_10063FEA4(v45, v42 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v69, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference);
      v44 += 2;
      v158 = (v158 - 1);
    }

    while (v158);
    a1 = v128;
    v17 = v133;
  }

  *(a1 + 16) = v42;
  v70 = v146;
  v71 = *(v146 + 16);
  v72 = _swiftEmptyArrayStorage;
  if (v71)
  {
    v170 = _swiftEmptyArrayStorage;
    sub_100776864(0, v71, 0);
    v72 = v170;
    v73 = (v70 + 64);
    v74 = _HashTable.startBucket.getter();
    v75 = 0;
    v76 = *(v70 + 36);
    v152 = (v17 + 7);
    v150 = (v131 + 6);
    v133 = (v131 + 4);
    ++v131;
    v130 = v70 + 72;
    v129 = xmmword_10146F370;
    v148 = v71;
    v149 = (v70 + 64);
    v151 = v76;
    v132 = (v17 + 6);
    while ((v74 & 0x8000000000000000) == 0 && v74 < 1 << *(v70 + 32))
    {
      if ((*&v73[8 * (v74 >> 6)] & (1 << v74)) == 0)
      {
        goto LABEL_46;
      }

      if (v76 != *(v70 + 36))
      {
        goto LABEL_47;
      }

      v155 = 1 << v74;
      v156 = v74 >> 6;
      v158 = v72;
      v78 = v143;
      v79 = *(v143 + 48);
      v80 = *(v70 + 56);
      v81 = (*(v70 + 48) + 16 * v74);
      v83 = *v81;
      v82 = v81[1];
      v84 = *(v145 + 72);
      v157 = v74;
      v85 = v142;
      sub_10000BE14(v80 + v84 * v74, &v142[v79], &qword_1019F6990, &qword_10146D2F0);
      v86 = v153;
      *v153 = v83;
      v86[1] = v82;
      v87 = *(v78 + 48);
      sub_10063FD1C(&v85[v79], v86 + v87);
      v88 = v141;

      UnknownStorage.init()();
      v89 = *(v88 + 24);
      v90 = *v152;
      v91 = v159;
      (*v152)(&v160[v89], 1, 1, v159);
      *v160 = v83;
      v92 = v160;
      *(v160 + 1) = v82;
      v93 = v86 + v87;
      v94 = v144;
      sub_10000BE14(v93, v144, &qword_1019F6990, &qword_10146D2F0);
      v95 = v154;
      if ((*v150)(v94, 1, v154) == 1)
      {

        sub_10000CAAC(v94, &qword_1019F6990, &qword_10146D2F0);
        v96 = v157;
        v72 = v158;
      }

      else
      {
        v97 = v90;
        v147 = v75;
        v98 = v135;
        (*v133)(v135, v94, v95);

        v161 = UUID.uuid.getter();
        v162 = v99;
        v163 = v100;
        v164 = v101;
        v165 = v102;
        v166 = v103;
        v167 = v104;
        v168 = v105;
        v169 = v106;
        UUID.uuid.getter();
        v138 = sub_100024DD4(&v161, 0x10uLL);
        *&v137 = v107;
        v108 = v95;
        v109 = v136;
        sub_10000BE14(v92 + v89, v136, &qword_1019F67C0, &unk_10146F3E0);
        v110 = *v132;
        if ((*v132)(v109, 1, v91) == 1)
        {
          v111 = v134;
          *v134 = v129;
          UnknownStorage.init()();
          (*v131)(v98, v108);
          v112 = v91;
          v113 = v111;
          v114 = v110(v109, 1, v112);
          v96 = v157;
          v72 = v158;
          if (v114 != 1)
          {
            sub_10000CAAC(v109, &qword_1019F67C0, &unk_10146F3E0);
          }
        }

        else
        {
          (*v131)(v98, v108);
          v113 = v134;
          sub_10063FEA4(v109, v134, type metadata accessor for CRLProto_Data);
          v96 = v157;
          v72 = v158;
        }

        sub_10002640C(*v113, *(v113 + 1));
        v115 = v137;
        *v113 = v138;
        *(v113 + 1) = v115;
        v92 = v160;
        sub_10000CAAC(&v160[v89], &qword_1019F67C0, &unk_10146F3E0);
        sub_10063FEA4(v113, v92 + v89, type metadata accessor for CRLProto_Data);
        v97((v92 + v89), 0, 1, v159);
        v75 = v147;
      }

      v116 = v139;
      sub_10063FEA4(v92, v139, type metadata accessor for CRLProto_ObjectInfo.AssetReference);
      sub_10000CAAC(v153, &qword_1019F6998, &qword_10146F760);
      v170 = v72;
      v118 = v72[2];
      v117 = v72[3];
      v70 = v146;
      v76 = v151;
      if (v118 >= v117 >> 1)
      {
        sub_100776864((v117 > 1), v118 + 1, 1);
        v72 = v170;
      }

      v72[2] = v118 + 1;
      sub_10063FEA4(v116, v72 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v118, type metadata accessor for CRLProto_ObjectInfo.AssetReference);
      v77 = 1 << *(v70 + 32);
      if (v96 >= v77)
      {
        goto LABEL_48;
      }

      v73 = v149;
      v119 = *&v149[8 * v156];
      if ((v119 & v155) == 0)
      {
        goto LABEL_49;
      }

      if (v76 != *(v70 + 36))
      {
        goto LABEL_50;
      }

      v120 = v119 & (-2 << (v96 & 0x3F));
      if (v120)
      {
        v77 = __clz(__rbit64(v120)) | v96 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v121 = v156 << 6;
        v122 = v156 + 1;
        v123 = (v130 + 8 * v156);
        while (v122 < (v77 + 63) >> 6)
        {
          v125 = *v123++;
          v124 = v125;
          v121 += 64;
          ++v122;
          if (v125)
          {
            sub_1000341AC(v96, v76, 0);
            v77 = __clz(__rbit64(v124)) + v121;
            goto LABEL_20;
          }
        }

        sub_1000341AC(v96, v76, 0);
      }

LABEL_20:
      v75 = (v75 + 1);
      v74 = v77;
      if (v75 == v148)
      {
        a1 = v128;
        goto LABEL_44;
      }
    }

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
    goto LABEL_51;
  }

LABEL_44:
  *(a1 + 24) = v72;
  v161 = sub_100636528(v127);

  sub_10063DB98(&v161);

  *(a1 + 32) = v161;
  return result;
}

Swift::Int sub_10063DB98(uint64_t *a1)
{
  v3 = sub_1005B981C(&qword_1019F69B8, &unk_101492880);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v46 = type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry(0);
  v6 = *(v46 - 8);
  __chkstk_darwin(v46);
  v41 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v32 - v9);
  __chkstk_darwin(v11);
  v13 = (&v32 - v12);
  v35 = a1;
  v14 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_10113DF04(v14);
  }

  v15 = v14[2];
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v39 = v14 + v16;
  v45[0] = v14 + v16;
  v45[1] = v15;
  result = _minimumMergeRunLength(_:)(v15);
  if (result >= v15)
  {
    v20 = v35;
    if (v15 >= 2)
    {
      v33 = v14;
      v34 = v1;
      v21 = *(v6 + 72);
      v40 = -v21;
      v22 = -1;
      v23 = 1;
      v24 = v39;
      v36 = v15;
      do
      {
        v37 = v23;
        v38 = v22;
        v39 = v24;
        do
        {
          sub_10063FE3C(v24 + v21, v13, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
          sub_10063FE3C(v24, v10, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
          v25 = v13[1];
          v43 = *v13;
          v44 = v25;
          v26 = v10[1];
          v42[0] = *v10;
          v42[1] = v26;
          v27 = type metadata accessor for Locale();
          (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
          sub_100017CD8();

          v28 = StringProtocol.compare<A>(_:options:range:locale:)();
          sub_10000CAAC(v5, &qword_1019F69B8, &unk_101492880);

          sub_10063FF0C(v10, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
          result = sub_10063FF0C(v13, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
          if (v28 != -1)
          {
            break;
          }

          v29 = v41;
          sub_10063FEA4(v24 + v21, v41, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
          swift_arrayInitWithTakeFrontToBack();
          result = sub_10063FEA4(v29, v24, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
          v24 += v40;
        }

        while (!__CFADD__(v22++, 1));
        v23 = v37 + 1;
        v24 = &v39[v21];
        v22 = v38 - 1;
      }

      while (v37 + 1 != v36);
      v20 = v35;
      v14 = v33;
    }
  }

  else
  {
    v18 = result;
    if (v15 >= 2)
    {
      v19 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v19[2] = v15 >> 1;
    }

    else
    {
      v19 = _swiftEmptyArrayStorage;
    }

    v43 = v19 + v16;
    v44 = v15 >> 1;
    v31 = v19;
    sub_10063E468(&v43, v42, v45, v18);
    v31[2] = 0;

    v20 = v35;
  }

  *v20 = v14;
  return result;
}

void sub_10063DF98(uint64_t a1, const char *a2, ...)
{
  type metadata accessor for __VaListBuilder();
  v3 = swift_allocObject();
  v3[2] = 8;
  v3[3] = 0;
  v4 = v3 + 3;
  v3[4] = 0;
  v3[5] = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_26:
    v23 = __VaListBuilder.va_list()();
    sub_10028DFC8(a2, v23);

    return;
  }

  v6 = 0;
  v7 = a1 + 32;
  while (1)
  {
    sub_100020E58((v7 + 40 * v6), *(v7 + 40 * v6 + 24));
    v8 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v9 = *v4;
    v10 = *(v8 + 16);
    v11 = __OFADD__(*v4, v10);
    v12 = *v4 + v10;
    if (v11)
    {
      break;
    }

    v13 = v3[4];
    if (v13 >= v12)
    {
      goto LABEL_18;
    }

    if (v13 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v14 = v3[5];
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    v3[4] = v12;
    if ((v12 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    v15 = v8;
    v16 = swift_slowAlloc();
    v17 = v16;
    v3[5] = v16;
    if (v14)
    {
      if (v16 != v14 || v16 >= &v14[8 * v9])
      {
        memmove(v16, v14, 8 * v9);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v8 = v15;
LABEL_18:
      v17 = v3[5];
      if (!v17)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    v8 = v15;
    if (!v17)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v19 = *(v8 + 16);
    if (v19)
    {
      v20 = (v8 + 32);
      v21 = *v4;
      while (1)
      {
        v22 = *v20++;
        *&v17[8 * v21] = v22;
        v21 = *v4 + 1;
        if (__OFADD__(*v4, 1))
        {
          break;
        }

        *v4 = v21;
        if (!--v19)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v6 == v5)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_10063E178(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4, const char *a5, uint64_t a6, unsigned int a7, uint64_t a8, const char *a9, uint64_t a10, unsigned __int8 a11)
{
  type metadata accessor for __VaListBuilder();
  v12 = swift_allocObject();
  v12[2] = 8;
  v12[3] = 0;
  v13 = v12 + 3;
  v12[4] = 0;
  v12[5] = 0;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = a1 + 32;
    while (1)
    {
      sub_100020E58((v16 + 40 * v15), *(v16 + 40 * v15 + 24));
      v17 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v18 = *v13;
      v19 = *(v17 + 16);
      v20 = __OFADD__(*v13, v19);
      v21 = *v13 + v19;
      if (v20)
      {
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
        return;
      }

      v22 = v17;
      v23 = v12[4];
      if (v23 >= v21)
      {
        goto LABEL_18;
      }

      if (v23 + 0x4000000000000000 < 0)
      {
        goto LABEL_31;
      }

      v24 = v12[5];
      if (2 * v23 > v21)
      {
        v21 = 2 * v23;
      }

      v12[4] = v21;
      if ((v21 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_32;
      }

      v25 = swift_slowAlloc();
      v12[5] = v25;
      if (v24)
      {
        break;
      }

LABEL_19:
      if (!v25)
      {
        goto LABEL_34;
      }

      v27 = *(v22 + 16);
      if (v27)
      {
        v28 = (v22 + 32);
        v29 = *v13;
        while (1)
        {
          v30 = *v28++;
          *&v25[8 * v29] = v30;
          v29 = *v13 + 1;
          if (__OFADD__(*v13, 1))
          {
            break;
          }

          *v13 = v29;
          if (!--v27)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
        goto LABEL_30;
      }

LABEL_3:

      if (++v15 == v14)
      {
        goto LABEL_25;
      }
    }

    if (v25 != v24 || v25 >= &v24[8 * v18])
    {
      memmove(v25, v24, 8 * v18);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_18:
    v25 = v12[5];
    goto LABEL_19;
  }

LABEL_25:
  v31 = __VaListBuilder.va_list()();
  v32 = objc_opt_self();
  StaticString.description.getter(a2, a3, a4);
  v33 = String._bridgeToObjectiveC()();

  StaticString.description.getter(a5, a6, a7);
  v34 = String._bridgeToObjectiveC()();

  if (a8 < 0)
  {
    goto LABEL_33;
  }

  StaticString.description.getter(a9, a10, a11);
  v42 = String._bridgeToObjectiveC()();

  [v32 handleFailureInFunction:v33 file:v34 lineNumber:a8 isFatal:1 format:v42 args:v31];
}

uint64_t type metadata accessor for CRLArchivedObjectMetadataRepresentation(uint64_t a1)
{
  result = qword_1019F6A48;
  if (!qword_1019F6A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10063E468(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v113 = a1;
  v8 = sub_1005B981C(&qword_1019F69B8, &unk_101492880);
  __chkstk_darwin(v8 - 8);
  v131 = &v111 - v9;
  v128 = type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry(0);
  v122 = *(v128 - 8);
  __chkstk_darwin(v128);
  v116 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v127 = &v111 - v12;
  __chkstk_darwin(v13);
  v130 = (&v111 - v14);
  __chkstk_darwin(v15);
  v129 = (&v111 - v16);
  v17 = a3[1];
  if (v17 >= 1)
  {
    v111 = a4;
    v18 = 0;
    v19 = _swiftEmptyArrayStorage;
    v115 = a3;
    while (1)
    {
      v20 = v18;
      v123 = v19;
      if (v18 + 1 >= v17)
      {
        v34 = v18 + 1;
      }

      else
      {
        v124 = v17;
        v112 = v5;
        v21 = *(v122 + 72);
        a4 = *a3 + v21 * (v18 + 1);
        v126 = *a3;
        v22 = v126;
        v23 = v129;
        sub_10063FE3C(a4, v129, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
        v24 = v22 + v21 * v18;
        v25 = v130;
        sub_10063FE3C(v24, v130, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
        v114 = v20;
        v26 = v23[1];
        v134 = *v23;
        v135 = v26;
        v27 = v25[1];
        v132 = *v25;
        v133 = v27;
        v28 = type metadata accessor for Locale();
        v29 = *(v28 - 8);
        v30 = v131;
        v119 = *(v29 + 56);
        v120 = v28;
        v118 = v29 + 56;
        v119(v131, 1, 1);
        v31 = sub_100017CD8();

        v117 = v31;
        v121 = StringProtocol.compare<A>(_:options:range:locale:)();
        sub_10000CAAC(v30, &qword_1019F69B8, &unk_101492880);

        sub_10063FF0C(v25, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
        sub_10063FF0C(v23, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
        v32 = v114 + 2;
        v125 = v21;
        v33 = v126 + v21 * (v114 + 2);
        while (1)
        {
          v34 = v124;
          if (v124 == v32)
          {
            break;
          }

          LODWORD(v126) = v121 == -1;
          v35 = v129;
          sub_10063FE3C(v33, v129, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
          v36 = v130;
          sub_10063FE3C(a4, v130, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
          v37 = v35[1];
          v134 = *v35;
          v135 = v37;
          v38 = v36[1];
          v132 = *v36;
          v133 = v38;
          v39 = v131;
          (v119)(v131, 1, 1, v120);

          v40 = StringProtocol.compare<A>(_:options:range:locale:)();
          sub_10000CAAC(v39, &qword_1019F69B8, &unk_101492880);

          v19 = v123;

          sub_10063FF0C(v36, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
          sub_10063FF0C(v35, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
          ++v32;
          v33 += v125;
          a4 += v125;
          if (((v126 ^ (v40 != -1)) & 1) == 0)
          {
            v34 = v32 - 1;
            break;
          }
        }

        v5 = v112;
        a3 = v115;
        v20 = v114;
        if (v121 == -1)
        {
          if (v34 < v114)
          {
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
            return;
          }

          if (v114 < v34)
          {
            v41 = v125 * (v34 - 1);
            v42 = v34 * v125;
            v43 = v34;
            v44 = v114;
            v45 = v114 * v125;
            do
            {
              if (v44 != --v43)
              {
                v46 = *v115;
                if (!*v115)
                {
                  goto LABEL_130;
                }

                a4 = v46 + v45;
                sub_10063FEA4(v46 + v45, v116, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
                if (v45 < v41 || a4 >= v46 + v42)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v45 != v41)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_10063FEA4(v116, v46 + v41, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
                v19 = v123;
              }

              ++v44;
              v41 -= v125;
              v42 -= v125;
              v45 += v125;
            }

            while (v44 < v43);
            v5 = v112;
            a3 = v115;
            v20 = v114;
          }
        }
      }

      v47 = a3[1];
      if (v34 >= v47)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v34, v20))
      {
        goto LABEL_122;
      }

      if (v34 - v20 >= v111)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v20, v111))
      {
        goto LABEL_123;
      }

      if (v20 + v111 >= v47)
      {
        v48 = a3[1];
      }

      else
      {
        v48 = v20 + v111;
      }

      if (v48 < v20)
      {
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      if (v34 == v48)
      {
LABEL_32:
        v18 = v34;
        if (v34 < v20)
        {
          goto LABEL_121;
        }
      }

      else
      {
        v112 = v5;
        v94 = *a3;
        v95 = *(v122 + 72);
        v96 = *a3 + v95 * (v34 - 1);
        v125 = -v95;
        v114 = v20;
        v97 = v20 - v34;
        v126 = v94;
        v117 = v95;
        v118 = v48;
        a4 = v94 + v34 * v95;
        do
        {
          v124 = v34;
          v119 = a4;
          v120 = v97;
          v121 = v96;
          do
          {
            v98 = v129;
            sub_10063FE3C(a4, v129, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
            v99 = v130;
            sub_10063FE3C(v96, v130, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
            v100 = v98[1];
            v134 = *v98;
            v135 = v100;
            v101 = v99[1];
            v132 = *v99;
            v133 = v101;
            v102 = type metadata accessor for Locale();
            v103 = v131;
            (*(*(v102 - 8) + 56))(v131, 1, 1, v102);
            sub_100017CD8();

            v104 = StringProtocol.compare<A>(_:options:range:locale:)();
            sub_10000CAAC(v103, &qword_1019F69B8, &unk_101492880);

            sub_10063FF0C(v99, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
            sub_10063FF0C(v98, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
            if (v104 != -1)
            {
              break;
            }

            if (!v126)
            {
              goto LABEL_127;
            }

            v105 = v127;
            sub_10063FEA4(a4, v127, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
            swift_arrayInitWithTakeFrontToBack();
            sub_10063FEA4(v105, v96, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
            v96 += v125;
            a4 += v125;
          }

          while (!__CFADD__(v97++, 1));
          v34 = v124 + 1;
          v18 = v118;
          v96 = v121 + v117;
          v97 = v120 - 1;
          a4 = v119 + v117;
        }

        while (v124 + 1 != v118);
        v5 = v112;
        a3 = v115;
        v19 = v123;
        v20 = v114;
        if (v118 < v114)
        {
          goto LABEL_121;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100B355CC(0, *(v19 + 2) + 1, 1, v19);
      }

      a4 = *(v19 + 2);
      v49 = *(v19 + 3);
      v50 = a4 + 1;
      if (a4 >= v49 >> 1)
      {
        v19 = sub_100B355CC((v49 > 1), a4 + 1, 1, v19);
      }

      *(v19 + 2) = v50;
      v51 = &v19[16 * a4];
      *(v51 + 4) = v20;
      *(v51 + 5) = v18;
      v52 = *v113;
      if (!*v113)
      {
        goto LABEL_131;
      }

      if (a4)
      {
        while (1)
        {
          a4 = v50 - 1;
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            v53 = *(v19 + 4);
            v54 = *(v19 + 5);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_52:
            if (v56)
            {
              goto LABEL_110;
            }

            v69 = &v19[16 * v50];
            v71 = *v69;
            v70 = *(v69 + 1);
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_113;
            }

            v75 = &v19[16 * a4 + 32];
            v77 = *v75;
            v76 = *(v75 + 1);
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_116;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_117;
            }

            if (v73 + v78 >= v55)
            {
              if (v55 < v78)
              {
                a4 = v50 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v79 = &v19[16 * v50];
          v81 = *v79;
          v80 = *(v79 + 1);
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_66:
          if (v74)
          {
            goto LABEL_112;
          }

          v82 = &v19[16 * a4];
          v84 = *(v82 + 4);
          v83 = *(v82 + 5);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_115;
          }

          if (v85 < v73)
          {
            goto LABEL_3;
          }

LABEL_73:
          v90 = a4 - 1;
          if (a4 - 1 >= v50)
          {
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
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_128;
          }

          v91 = *&v19[16 * v90 + 32];
          v92 = *&v19[16 * a4 + 40];
          sub_10063F070(*a3 + *(v122 + 72) * v91, *a3 + *(v122 + 72) * *&v19[16 * a4 + 32], *a3 + *(v122 + 72) * v92, v52);
          if (v5)
          {
            goto LABEL_104;
          }

          if (v92 < v91)
          {
            goto LABEL_106;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_10113DE48(v19);
          }

          if (v90 >= *(v19 + 2))
          {
            goto LABEL_107;
          }

          v93 = &v19[16 * v90];
          *(v93 + 4) = v91;
          *(v93 + 5) = v92;
          v136 = v19;
          sub_10113DDBC(a4);
          v19 = v136;
          v50 = *(v136 + 2);
          if (v50 <= 1)
          {
            goto LABEL_3;
          }
        }

        v57 = &v19[16 * v50 + 32];
        v58 = *(v57 - 64);
        v59 = *(v57 - 56);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_108;
        }

        v62 = *(v57 - 48);
        v61 = *(v57 - 40);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_109;
        }

        v64 = &v19[16 * v50];
        v66 = *v64;
        v65 = *(v64 + 1);
        v63 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v63)
        {
          goto LABEL_111;
        }

        v63 = __OFADD__(v55, v67);
        v68 = v55 + v67;
        if (v63)
        {
          goto LABEL_114;
        }

        if (v68 >= v60)
        {
          v86 = &v19[16 * a4 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v63 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v63)
          {
            goto LABEL_118;
          }

          if (v55 < v89)
          {
            a4 = v50 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_52;
      }

LABEL_3:
      v17 = a3[1];
      if (v18 >= v17)
      {
        goto LABEL_94;
      }
    }
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_94:
  a4 = *v113;
  if (!*v113)
  {
    goto LABEL_132;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_125:
    v19 = sub_10113DE48(v19);
  }

  v136 = v19;
  v107 = *(v19 + 2);
  if (v107 >= 2)
  {
    while (*a3)
    {
      v108 = *&v19[16 * v107];
      v109 = *&v19[16 * v107 + 24];
      sub_10063F070(*a3 + *(v122 + 72) * v108, *a3 + *(v122 + 72) * *&v19[16 * v107 + 16], *a3 + *(v122 + 72) * v109, a4);
      if (v5)
      {
        goto LABEL_104;
      }

      if (v109 < v108)
      {
        goto LABEL_119;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_10113DE48(v19);
      }

      if (v107 - 2 >= *(v19 + 2))
      {
        goto LABEL_120;
      }

      v110 = &v19[16 * v107];
      *v110 = v108;
      *(v110 + 1) = v109;
      v136 = v19;
      sub_10113DDBC(v107 - 1);
      v19 = v136;
      v107 = *(v136 + 2);
      if (v107 <= 1)
      {
        goto LABEL_104;
      }
    }

    goto LABEL_129;
  }

LABEL_104:
}

void sub_10063F070(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_1005B981C(&qword_1019F69B8, &unk_101492880);
  __chkstk_darwin(v8 - 8);
  v58 = &v47 - v9;
  v55 = type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry(0);
  __chkstk_darwin(v55);
  v57 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v56 = (&v47 - v12);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v66 = a1;
  v65 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v54 = a2;
    v30 = a4 + v18;
    if (v18 >= 1)
    {
      v31 = -v14;
      v32 = v30;
      v51 = -v14;
      v52 = a4;
      v50 = a1;
      while (2)
      {
        while (1)
        {
          v48 = v30;
          v33 = v54;
          v53 = v54;
          v54 += v31;
          while (1)
          {
            if (v33 <= a1)
            {
              v66 = v33;
              v64 = v48;
              goto LABEL_60;
            }

            v35 = a3;
            v49 = v30;
            v59 = a3 + v31;
            v36 = v32 + v31;
            v37 = v56;
            sub_10063FE3C(v32 + v31, v56, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
            v38 = v57;
            sub_10063FE3C(v54, v57, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
            v39 = v32;
            v40 = v37[1];
            v62 = *v37;
            v63 = v40;
            v41 = v38[1];
            v60 = *v38;
            v61 = v41;
            v42 = type metadata accessor for Locale();
            v43 = v58;
            (*(*(v42 - 8) + 56))(v58, 1, 1, v42);
            sub_100017CD8();

            v44 = StringProtocol.compare<A>(_:options:range:locale:)();
            sub_10000CAAC(v43, &qword_1019F69B8, &unk_101492880);

            sub_10063FF0C(v38, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
            sub_10063FF0C(v37, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
            if (v44 == -1)
            {
              break;
            }

            v30 = v36;
            a3 = v59;
            if (v35 < v39 || v59 >= v39)
            {
              swift_arrayInitWithTakeFrontToBack();
              v31 = v51;
              v34 = v52;
              a1 = v50;
            }

            else
            {
              v45 = v35 == v39;
              v31 = v51;
              v34 = v52;
              a1 = v50;
              if (!v45)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v32 = v36;
            v33 = v53;
            if (v36 <= v34)
            {
              v54 = v53;
              goto LABEL_59;
            }
          }

          a3 = v59;
          if (v35 < v53 || v59 >= v53)
          {
            break;
          }

          v31 = v51;
          v46 = v52;
          v32 = v39;
          v30 = v49;
          a1 = v50;
          if (v35 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v32 <= v46)
          {
            goto LABEL_59;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v31 = v51;
        v32 = v39;
        v30 = v49;
        a1 = v50;
        if (v32 > v52)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v66 = v54;
    v64 = v30;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v54 = a4 + v17;
    v64 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v59 = a3;
      v53 = v14;
      do
      {
        v20 = v56;
        sub_10063FE3C(a2, v56, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
        v21 = v57;
        sub_10063FE3C(a4, v57, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
        v22 = v20[1];
        v62 = *v20;
        v63 = v22;
        v23 = v21[1];
        v60 = *v21;
        v61 = v23;
        v24 = type metadata accessor for Locale();
        v25 = v58;
        (*(*(v24 - 8) + 56))(v58, 1, 1, v24);
        sub_100017CD8();

        v26 = StringProtocol.compare<A>(_:options:range:locale:)();
        sub_10000CAAC(v25, &qword_1019F69B8, &unk_101492880);

        sub_10063FF0C(v21, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
        sub_10063FF0C(v20, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
        if (v26 == -1)
        {
          v27 = v53;
          if (a1 < a2 || a1 >= a2 + v53)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v27;
            v29 = v59;
          }

          else
          {
            v29 = v59;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v27;
          }
        }

        else
        {
          v27 = v53;
          v28 = a4 + v53;
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v59;
          }

          else
          {
            v29 = v59;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = v28;
          a4 += v27;
        }

        a1 += v27;
        v66 = a1;
      }

      while (a4 < v54 && a2 < v29);
    }
  }

LABEL_60:
  sub_10063F854(&v66, &v65, &v64, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
}

uint64_t sub_10063F854(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_10063F9A8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2, v7);
      sub_100E6AF38(v9, v5);
      (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }
}

void sub_10063FAF0(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8;
  __chkstk_darwin(v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = *(v6 + 72);
    do
    {
      sub_10063FE3C(v10, v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_100E6DFC0(v8, v4);
      sub_10063FF0C(v8, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v10 += v11;
      --v9;
    }

    while (v9);
  }
}

void sub_10063FC3C(unint64_t a1, void (*a2)(id *, id))
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a2(&v8, v6);

      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_10063FD1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10063FE3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10063FEA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10063FF0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10063FF94(uint64_t a1)
{
  type metadata accessor for CRLProto_ObjectMetadata(319);
  if (v1 <= 0x3F)
  {
    sub_100640018(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100640018(uint64_t a1)
{
  if (!qword_1019F6A58)
  {
    type metadata accessor for UUID();
    type metadata accessor for URL();
    sub_10006837C(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1019F6A58);
    }
  }
}

void *sub_1006400C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100776684(0, v1, 0);
    v3 = a1 + 40;
    do
    {

      sub_1005B981C(&unk_1019F6C70, &unk_101488FF0);
      swift_dynamicCast();
      v4 = v8;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_100776684((v5 > 1), v6 + 1, 1);
        v4 = v8;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[2 * v6 + 4] = v4;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1006401DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1007766A4(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v11 = *v3;
      v4 = *v3;
      v5 = *(&v11 + 1);
      sub_1005B981C(&qword_1019F6EF8, &qword_10146FCA8);
      sub_1005B981C(&qword_1019F6F00, &unk_10146FCB0);
      swift_dynamicCast();
      v6 = v12;
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_1007766A4((v7 > 1), v8 + 1, 1);
        v6 = v12;
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[3 * v8];
      *(v9 + 2) = v6;
      v9[6] = v13;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10064032C(uint64_t a1)
{
  v16 = sub_1005B981C(&qword_1019F6CB8, &unk_10146FA80);
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - v3;
  v5 = sub_1005B981C(&unk_1019F6CC0, &qword_1014C7000);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100776704(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_10000BE14(v11, v4, &qword_1019F6CB8, &unk_10146FA80);
      swift_dynamicCast();
      v17 = v10;
      v14 = v10[2];
      v13 = v10[3];
      if (v14 >= v13 >> 1)
      {
        sub_100776704((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      v10[2] = v14 + 1;
      sub_10003DFF8(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, &unk_1019F6CC0, &qword_1014C7000);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void *sub_100640564(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_1007767A4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = _swiftEmptyArrayStorage[2];
        v6 = _swiftEmptyArrayStorage[3];
        if (v7 >= v6 >> 1)
        {
          v9 = v5;
          sub_1007767A4((v6 > 1), v7 + 1, 1);
          v5 = v9;
        }

        ++v4;
        _swiftEmptyArrayStorage[2] = v7 + 1;
        v8 = &_swiftEmptyArrayStorage[2 * v7];
        v8[4] = v5;
        v8[5] = &off_10188FDF0;
      }

      while (v2 != v4);
    }

    else
    {
      v10 = (a1 + 32);
      do
      {
        v11 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        v13 = *v10;
        if (v11 >= v12 >> 1)
        {
          v15 = v12 > 1;
          v16 = v13;
          sub_1007767A4(v15, v11 + 1, 1);
          v13 = v16;
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        v14 = &_swiftEmptyArrayStorage[2 * v11];
        v14[4] = v13;
        v14[5] = &off_10188FDF0;
        ++v10;
        --v2;
      }

      while (v2);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

char *sub_1006406EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_1007767C4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        type metadata accessor for CRLBoardItem(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1007767C4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_10000BF3C(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CRLBoardItem(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1007767C4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_10000BF3C(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1006408B8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          type metadata accessor for CRLiOSMiniFormatterBaseLayerButton();
          sub_1005B981C(&qword_1019F6EB0, &qword_10146FC40);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        type metadata accessor for CRLiOSMiniFormatterBaseLayerButton();
        do
        {
          v7 = *v6++;
          v8 = v7;
          sub_1005B981C(&qword_1019F6EB0, &qword_10146FC40);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v2;
        }

        while (v2);
      }

      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void *sub_100640A7C(uint64_t a1)
{
  v16 = sub_1005B981C(&qword_1019F6DC0, &qword_10146FBB0);
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - v3;
  v5 = sub_1005B981C(&qword_1019F6DC8, &qword_10146FBB8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100776A84(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_10000BE14(v11, v4, &qword_1019F6DC0, &qword_10146FBB0);
      swift_dynamicCast();
      v17 = v10;
      v14 = v10[2];
      v13 = v10[3];
      if (v14 >= v13 >> 1)
      {
        sub_100776A84((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      v10[2] = v14 + 1;
      sub_10003DFF8(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, &qword_1019F6DC8, &qword_10146FBB8);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void *sub_100640CB4(uint64_t a1)
{
  v2 = type metadata accessor for TSContentLanguage.Models.CanvasObject(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100776B64(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_10004FCC4(v8, v5, type metadata accessor for TSContentLanguage.Models.CanvasObject);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_100776B64((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_1000063B8(&qword_1019F6EA8, type metadata accessor for TSContentLanguage.Models.CanvasObject, protocol conformance descriptor for TSContentLanguage.Models.CanvasObject);
      v12 = sub_10002C58C(&v14);
      sub_10004FCC4(v5, v12, type metadata accessor for TSContentLanguage.Models.CanvasObject);
      v7[2] = v11 + 1;
      sub_100050F74(&v14, &v7[5 * v11 + 4]);
      sub_10003D4BC(v5, type metadata accessor for TSContentLanguage.Models.CanvasObject);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

char *sub_100640ECC(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_1007767C4(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100006370(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = v7[2];
        v10 = v7[3];
        if (v11 >= v10 >> 1)
        {
          sub_1007767C4((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        v7[2] = v11 + 1;
        sub_10000BF3C(v16, &v7[4 * v11 + 4]);
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_100006370(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = v7[2];
        v14 = v7[3];
        if (v15 >= v14 >> 1)
        {
          sub_1007767C4((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        v7[2] = v15 + 1;
        sub_10000BF3C(v16, &v7[4 * v15 + 4]);
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

char *sub_1006410F4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v12 = _swiftEmptyArrayStorage;
  result = sub_1007767C4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_1005B981C(&qword_1019F5720, &unk_101474E20);
        swift_dynamicCast();
        v12 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1007767C4((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        v3[2] = v7 + 1;
        sub_10000BF3C(v11, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        sub_1005B981C(&qword_1019F5720, &unk_101474E20);
        swift_dynamicCast();
        v12 = v3;
        v10 = v3[2];
        v9 = v3[3];
        if (v10 >= v9 >> 1)
        {
          sub_1007767C4((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        v3[2] = v10 + 1;
        sub_10000BF3C(v11, &v3[4 * v10 + 4]);
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_10064133C(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_100776CE4(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = _swiftEmptyArrayStorage[2];
        v8 = _swiftEmptyArrayStorage[3];
        if (v9 >= v8 >> 1)
        {
          v11 = v7;
          sub_100776CE4((v8 > 1), v9 + 1, 1);
          v7 = v11;
        }

        ++v6;
        _swiftEmptyArrayStorage[2] = v9 + 1;
        v10 = &_swiftEmptyArrayStorage[2 * v9];
        v10[4] = v7;
        v10[5] = a2;
      }

      while (v4 != v6);
    }

    else
    {
      v12 = (a1 + 32);
      v13 = _swiftEmptyArrayStorage[2];
      v14 = 2 * v13;
      do
      {
        v15 = *v12;
        v16 = _swiftEmptyArrayStorage[3];

        if (v13 >= v16 >> 1)
        {
          sub_100776CE4((v16 > 1), v13 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v13 + 1;
        v17 = &_swiftEmptyArrayStorage[v14];
        v17[4] = v15;
        v17[5] = a2;
        v14 += 2;
        ++v12;
        ++v13;
        --v4;
      }

      while (v4);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

char *sub_1006414C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_100776D84(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        type metadata accessor for CRLGroupItem(0);
        swift_dynamicCast();
        v6 = _swiftEmptyArrayStorage[2];
        v5 = _swiftEmptyArrayStorage[3];
        if (v6 >= v5 >> 1)
        {
          sub_100776D84((v5 > 1), v6 + 1, 1);
        }

        ++v4;
        _swiftEmptyArrayStorage[2] = v6 + 1;
        v7 = &_swiftEmptyArrayStorage[5 * v6];
        v7[8] = v15;
        *(v7 + 2) = v13;
        *(v7 + 3) = v14;
      }

      while (v2 != v4);
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CRLGroupItem(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_100776D84((v10 > 1), v11 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        v12 = &_swiftEmptyArrayStorage[5 * v11];
        v12[8] = v15;
        *(v12 + 2) = v13;
        *(v12 + 3) = v14;
        ++v8;
        --v2;
      }

      while (v2);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

void *sub_1006416A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          sub_100006370(0, &qword_1019FFFF0, CALayer_ptr);
          sub_1005B981C(&qword_1019F6CD0, &qword_10146FA90);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        sub_100006370(0, &qword_1019FFFF0, CALayer_ptr);
        do
        {
          v7 = *v6++;
          v8 = v7;
          sub_1005B981C(&qword_1019F6CD0, &qword_10146FA90);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v2;
        }

        while (v2);
      }

      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t sub_100641898(unint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 >> 62)
  {

    sub_1005B981C(a2, a3);
    v3 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    v3 = a1;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  return v3;
}

uint64_t sub_10064191C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000BE14(a3, v25 - v10, &qword_1019FB750, &qword_10146F1B0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000CAAC(v11, &qword_1019FB750, &qword_10146F1B0);
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
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000CAAC(a3, &qword_1019FB750, &qword_10146F1B0);

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

  sub_10000CAAC(a3, &qword_1019FB750, &qword_10146F1B0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100641C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000BE14(a3, v25 - v10, &qword_1019FB750, &qword_10146F1B0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000CAAC(v11, &qword_1019FB750, &qword_10146F1B0);
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

      sub_1005B981C(&unk_1019F6B20, &qword_10146F8F0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10000CAAC(a3, &qword_1019FB750, &qword_10146F1B0);

      return v22;
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

  sub_10000CAAC(a3, &qword_1019FB750, &qword_10146F1B0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1005B981C(&unk_1019F6B20, &qword_10146F8F0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100641F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000BE14(a3, v25 - v10, &qword_1019FB750, &qword_10146F1B0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000CAAC(v11, &qword_1019FB750, &qword_10146F1B0);
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

      sub_1005B981C(&unk_1019F6C80, &qword_10146FA60);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10000CAAC(a3, &qword_1019FB750, &qword_10146F1B0);

      return v22;
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

  sub_10000CAAC(a3, &qword_1019FB750, &qword_10146F1B0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1005B981C(&unk_1019F6C80, &qword_10146FA60);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100642244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000BE14(a3, v25 - v10, &qword_1019FB750, &qword_10146F1B0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000CAAC(v11, &qword_1019FB750, &qword_10146F1B0);
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
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000CAAC(a3, &qword_1019FB750, &qword_10146F1B0);

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

  sub_10000CAAC(a3, &qword_1019FB750, &qword_10146F1B0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_10064253C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for CRLBoardCRDTData(0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v3 navigationItem];
  v10 = [v3 traitCollection];
  v11 = [objc_opt_self() crl_phoneUI];
  v12 = [v10 crl_isCompactWidth];
  v13 = v12;
  if (v11)
  {
    if ((v12 & 1) == 0)
    {

      if (a2)
      {
        goto LABEL_10;
      }

LABEL_9:
      v16 = *(*(*&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
      v17 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      sub_10004FCC4(v16 + v17, v8, type metadata accessor for CRLBoardCRDTData);
      sub_1005B981C(&qword_101A1A020, &unk_10146C6C0);
      CRRegister.wrappedValue.getter();
      sub_10003D4BC(v8, type metadata accessor for CRLBoardCRDTData);
LABEL_10:

      v15 = String._bridgeToObjectiveC()();

      goto LABEL_11;
    }

    v14 = [v10 crl_isCompactHeight];

    if (v14)
    {
LABEL_4:
      if (a2)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {

    if ((v13 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v15 = 0;
LABEL_11:
  [v9 setTitle:v15];
}

uint64_t sub_100642778()
{
  if (*v0)
  {
    if (*(v0 + 3))
    {
      v1 = *(v0 + 24);
      if ([objc_opt_self() crl_phoneUI] & 1) != 0 || (objc_msgSend(v1, "crl_isCompactWidth") & 1) != 0 || (*(v0 + 34))
      {
        return 0;
      }
    }

    else if ((*(v0 + 34) & 1) != 0 || (*(v0 + 1) & 1) == 0 && (*(v0 + 35) & 1) == 0)
    {
      return 0;
    }

    if (*(v0 + 1) & 1) != 0 || (*(v0 + 35))
    {
      return 0;
    }
  }

  return 2;
}

uint64_t sub_100642818(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1006782DC(v5, v7) & 1;
}

id sub_100642864@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v46 = a2;
  v47 = a1;
  v44 = type metadata accessor for CRLBoardCRDTData(0);
  *&v6 = __chkstk_darwin(v44).n128_u64[0];
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v47 horizontalSizeClass] == 1)
  {
    v45 = 1;
  }

  else
  {
    v45 = [objc_opt_self() crl_phoneUI];
  }

  v9 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController;
  v10 = *(v4 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController);
  if (!v10)
  {
    goto LABEL_12;
  }

  if ([v10 isBeingPresented])
  {
    goto LABEL_11;
  }

  v11 = *(v4 + v9);
  if (!v11)
  {
    goto LABEL_12;
  }

  if ([v11 isMovingToParentViewController])
  {
LABEL_11:
    v43 = 1;
    goto LABEL_13;
  }

  v12 = *(v4 + v9);
  if (v12)
  {
    v13 = [v12 presentingViewController];
    if (v13)
    {

      goto LABEL_11;
    }
  }

LABEL_12:
  v43 = 0;
LABEL_13:
  v14 = sub_101012FD4();
  v15 = [v14 mode];

  v16 = objc_opt_self();
  if ([v16 crl_phoneUI])
  {
    v42 = [objc_opt_self() crl_deviceIsLandscape];
  }

  else
  {
    v42 = 0;
  }

  v17 = [*(v4 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController) miniFormatterPresenter];
  if (v17)
  {
    v41 = [v17 isPresentingMiniFormatter];
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0;
  }

  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v18 = *(v4 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);
  v19 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
  v20 = *(*(*(v18 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
  if (v20)
  {

    v21 = v20;
    [v21 copy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();

    sub_100006370(0, &qword_1019F52C0, CKShare_ptr);
    if (swift_dynamicCast())
    {

      HIDWORD(v39) = 1;
    }

    else
    {
      HIDWORD(v39) = 0;
    }
  }

  else
  {
    HIDWORD(v39) = 0;
  }

  v22 = [v16 crl_phoneUI];
  v23 = [v47 crl_isCompactWidth];
  v24 = (v22 ^ 1) & v23;
  if ((v22 ^ 1) & 1) == 0 && (v23)
  {
    v24 = [v47 crl_isCompactHeight] ^ 1;
  }

  v25 = *(*(v18 + v19) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v26 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FCC4(v25 + v26, v8, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A1A020, &unk_10146C6C0);
  CRRegister.wrappedValue.getter();
  sub_10003D4BC(v8, type metadata accessor for CRLBoardCRDTData);
  v27 = v48;
  v28 = v49;
  v29 = [v15 wantsDoneButtonInCompact];
  v30 = v45;
  v31 = v29 & v45;
  LOBYTE(v25) = [*(v4 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) shouldEnableToolbarDoneButton];
  v32 = [v15 wantsToSuppressBottomToolbarInCompact];

  v33 = *(v4 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_willPresentCompactScenesNavigator);
  v34 = v46 & 1;
  *a3 = v30;
  v35 = v42;
  *(a3 + 1) = v43;
  *(a3 + 2) = v35;
  *(a3 + 3) = v41;
  *(a3 + 4) = v34;
  v36 = BYTE4(v39);
  *(a3 + 5) = IsReduceMotionEnabled;
  *(a3 + 6) = v36;
  *(a3 + 7) = v24;
  *(a3 + 8) = v27;
  *(a3 + 16) = v28;
  v37 = v47;
  *(a3 + 24) = v47;
  *(a3 + 32) = v31;
  *(a3 + 33) = v25;
  *(a3 + 34) = v32;
  *(a3 + 35) = v33;

  return v37;
}

void sub_100642CDC(uint64_t a1, char a2)
{
  v4 = a1;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v10 - 8);
  v246 = &v233 - v11;
  *&v247 = v2;
  if (a2)
  {
    goto LABEL_8;
  }

  LODWORD(v245) = v9;
  v12 = v7;
  v13 = v5;
  v14 = v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_toolbarButtonState;
  v15 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_toolbarButtonState);
  v16 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_toolbarButtonState + 8);
  v17 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_toolbarButtonState + 16);
  v18 = *(v14 + 24);
  v19 = *(v14 + 32);
  if (!v17)
  {
    if (!v12)
    {
      sub_10067BE04(*v14, *(v14 + 8), 0, *(v14 + 24));
      sub_10067BE48(v4, &v254);
      sub_10067BE80(v15, v16, 0, v18);
LABEL_153:
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v106 = static OS_os_log.crlDefault;
      v107 = static os_log_type_t.default.getter();
      sub_100005404(v106, &_mh_execute_header, v107, "Toolbar button state unchanged. Skipping update.", 48, 2, _swiftEmptyArrayStorage);
      return;
    }

    goto LABEL_7;
  }

  if (!v12)
  {
LABEL_7:
    v244 = v12;
    sub_10067BE04(v15, v16, v17, v18);
    sub_10067BE48(v4, &v254);
    v20 = v18;
    v7 = v244;
    sub_10067BE80(v15, v16, v17, v20);
    v5 = v13;
    v21 = v13;
    v9 = v245;
    sub_10067BE80(v21, v6, v7, v8);
    v2 = v247;
    goto LABEL_8;
  }

  v243 = v13;
  v244 = v12;
  v267[0] = v13;
  v267[1] = v6;
  v267[2] = v12;
  v267[3] = v8;
  v9 = v245;
  v268 = v245;
  v265[0] = v15;
  v265[1] = v16;
  v265[2] = v17;
  v265[3] = v18;
  v266 = v19;
  sub_10067BE04(v15, v16, v17, v18);
  v239 = v18;
  LODWORD(v240) = v19;
  sub_10067BE04(v15, v16, v17, v18);
  sub_10067BE48(v4, &v254);
  LODWORD(v241) = sub_1006782DC(v265, v267);
  sub_10067BE80(v15, v16, v17, v18);
  v5 = v243;
  v7 = v244;
  sub_10067BE80(v243, v6, v244, v8);
  sub_10067BE80(v15, v16, v17, v239);
  v2 = v247;
  if (v241)
  {
    goto LABEL_153;
  }

LABEL_8:
  v22 = v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_toolbarButtonState;
  v23 = v7;
  v24 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_toolbarButtonState);
  v25 = *(v22 + 8);
  v26 = v5;
  v27 = *(v22 + 16);
  v28 = *(v22 + 24);
  v29 = *(v22 + 32);
  *v22 = v26;
  *(v22 + 8) = v6;
  *(v22 + 16) = v23;
  *(v22 + 24) = v8;
  *(v22 + 32) = v9;
  sub_10067BE48(v4, &v254);
  v30 = v25;
  v31 = v247;
  sub_10067BE80(v24, v30, v27, v28);
  v32 = v31;
  v33 = sub_101013434();
  LODWORD(v245) = *(v4 + 1);
  if (v245 & 1) != 0 || (*(v4 + 35))
  {
    if ((*(v4 + 3) & 1) == 0 || (v32 = *(v4 + 24), ([objc_opt_self() crl_phoneUI] & 1) == 0) && (-[objc_class crl_isCompactWidth](v32, "crl_isCompactWidth") & 1) == 0)
    {
      v34 = sub_101013588();
      goto LABEL_19;
    }
  }

  if (*(v4 + 32))
  {
    if ((*(v4 + 3) & 1) == 0 || (v32 = *(v4 + 24), ([objc_opt_self() crl_phoneUI] & 1) == 0) && (-[objc_class crl_isCompactWidth](v32, "crl_isCompactWidth") & 1) == 0)
    {
      v34 = sub_101013454();
LABEL_19:
      v32 = v34;

      v33 = v32;
    }
  }

  v263 = _swiftEmptyArrayStorage;
  v264 = _swiftEmptyArrayStorage;
  v261 = _swiftEmptyArrayStorage;
  v262 = _swiftEmptyArrayStorage;
  v260 = _swiftEmptyArrayStorage;
  v35 = _UISolariumEnabled();
  v36 = *v4;
  v239 = v33;
  if ((v36 & 1) == 0)
  {
    v38 = [(objc_class *)v31 traitCollection];
    v39 = [v38 crl_isCompactWidth];

    if ((v39 & 1) == 0)
    {
      v46 = swift_allocObject();
      if (v35)
      {
        *(v46 + 16) = xmmword_10146CE00;
        *(v46 + 32) = sub_101013330();
        *(v46 + 40) = sub_100645800();
      }

      else
      {
        *(v46 + 16) = xmmword_10146E8A0;
        *(v46 + 32) = sub_101013330();
        *(v46 + 40) = sub_100645800();
        *(v46 + 48) = sub_1010133B4();
      }

      v262 = v46;
      if (*(v4 + 6))
      {
        v47 = sub_101013608();
        if (v47)
        {
          v48 = v47;
          sub_10067DD0C(0, 0, v47, sub_1007AB810, &qword_1019F6BF0, UIBarButtonItem_ptr);
        }
      }

      if (*(v4 + 4))
      {
        goto LABEL_60;
      }

      v29 = sub_101013250();
      if (v262 >> 62)
      {
        goto LABEL_289;
      }

      goto LABEL_59;
    }

    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10146CE00;
    *(v40 + 32) = sub_101013330();
    *(v40 + 40) = sub_1010133B4();
    v261 = v40;
    if (*(v4 + 6))
    {
      v41 = sub_101013608();
      if (v41)
      {
        v42 = v41;
        sub_10067DD0C(0, 0, v41, sub_1007AB810, &qword_1019F6BF0, UIBarButtonItem_ptr);
      }
    }

    if ((*(v4 + 4) & 1) == 0)
    {
      v29 = sub_101013250();
      if (v261 >> 62)
      {
        goto LABEL_287;
      }

LABEL_38:
      sub_10067DD0C(0, 0, v29, sub_1007AB810, &qword_1019F6BF0, UIBarButtonItem_ptr);
    }

    v31 = _swiftEmptyArrayStorage;
LABEL_63:
    v28 = v31;
    goto LABEL_86;
  }

  v8 = *(v4 + 2);
  if ((v8 & 1) == 0)
  {
    if (*(v4 + 3) & 1) != 0 && ((v43 = *(v4 + 24), ([objc_opt_self() crl_phoneUI]) || (objc_msgSend(v43, "crl_isCompactWidth")) || (*(v4 + 32) & 1) != 0 || ((v245 | *(v4 + 33)) & 1) != 0 || (*(v4 + 35))
    {
      v44 = v33;
    }

    else
    {
      if (v35)
      {
        goto LABEL_68;
      }

      v44 = sub_1010133B4();
    }

    v45 = v44;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v260 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v260 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v31 = v247;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_50:
    v28 = v260;
LABEL_69:
    while (1)
    {
      if (*(v4 + 6))
      {
        v50 = sub_101013608();
        if (v50)
        {
          break;
        }
      }

      v29 = sub_101013330();
      if (v35)
      {
        if (!(_swiftEmptyArrayStorage >> 62) || (_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
        {
          goto LABEL_77;
        }

        __break(1u);
      }

      else if (!(v261 >> 62))
      {
        goto LABEL_77;
      }

      if ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_287:
      if ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
      {
        goto LABEL_38;
      }

      __break(1u);
LABEL_289:
      if (_CocoaArrayWrapper.endIndex.getter() < 0)
      {
        __break(1u);
      }

      else
      {
LABEL_59:
        sub_10067DD0C(0, 0, v29, sub_1007AB810, &qword_1019F6BF0, UIBarButtonItem_ptr);

LABEL_60:
        v31 = _swiftEmptyArrayStorage;
        v28 = _swiftEmptyArrayStorage;
        if (!v35)
        {
          goto LABEL_86;
        }

        v29 = sub_1010133B4();
        if (!(_swiftEmptyArrayStorage >> 62))
        {
LABEL_62:
          sub_10067DD0C(0, 0, v29, sub_1007AB810, &qword_1019F6BF0, UIBarButtonItem_ptr);

          goto LABEL_63;
        }
      }

      if ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
      {
        goto LABEL_62;
      }

      __break(1u);
LABEL_293:
      if (_CocoaArrayWrapper.endIndex.getter() < 0)
      {
        __break(1u);
        goto LABEL_295;
      }

LABEL_67:
      sub_10067DD0C(0, 0, v29, sub_1007AB810, &qword_1019F6BF0, UIBarButtonItem_ptr);

LABEL_68:
      v28 = _swiftEmptyArrayStorage;
    }

    v29 = v50;
    if (v35)
    {
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_10146CE00;
      *(v51 + 32) = v29;
      v29 = v29;
      *(v51 + 40) = sub_101013330();
      sub_100799B00(v51);
      goto LABEL_78;
    }

    v32 = v31;
    v108 = sub_101013330();
    v109 = v31;
    v31 = v108;
    if (v8)
    {
      if (v261 >> 62)
      {
        goto LABEL_298;
      }

      goto LABEL_158;
    }

    v8 = v109;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [(objc_class *)v31 indexOfAccessibilityElement:isa];

    v32 = *(v8 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___shareToolbarItem);
    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_300;
    }

LABEL_161:
    v111 = v32;
    sub_10067DD0C(0, 0, v111, sub_1007AB810, &qword_1019F6BF0, UIBarButtonItem_ptr);

    v32 = Int._bridgeToObjectiveC()().super.super.isa;
    [v29 indexOfAccessibilityElement:v32];

    if (v262 >> 62)
    {
      goto LABEL_304;
    }

    goto LABEL_77;
  }

  if ((*(v4 + 3) & 1) == 0 || (v32 = *(v4 + 24), ([objc_opt_self() crl_phoneUI] & 1) == 0) && (-[objc_class crl_isCompactWidth](v32, "crl_isCompactWidth") & 1) == 0)
  {
    if ((*(v4 + 32) & 1) == 0 && ((v245 | *(v4 + 33)) & 1) == 0 && (*(v4 + 35) & 1) == 0)
    {
      v28 = _swiftEmptyArrayStorage;
      if (v35)
      {
        goto LABEL_69;
      }

LABEL_66:
      v29 = sub_1010133B4();
      if (v28 >> 62)
      {
        goto LABEL_293;
      }

      goto LABEL_67;
    }
  }

  if (v35)
  {
    v37 = v33;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v260 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v260 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v31 = v247;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_50;
  }

  if (!(_swiftEmptyArrayStorage >> 62) || (_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
  {
    v49 = v33;
    sub_10067DD0C(0, 0, v49, sub_1007AB810, &qword_1019F6BF0, UIBarButtonItem_ptr);

    v28 = v261;
    goto LABEL_66;
  }

  __break(1u);
LABEL_298:
  if (_CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
LABEL_300:
    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
      goto LABEL_302;
    }

    goto LABEL_161;
  }

LABEL_158:
  v32 = &v261;
  sub_10067DD0C(0, 0, v31, sub_1007AB810, &qword_1019F6BF0, UIBarButtonItem_ptr);

  if (!(v261 >> 62))
  {
    goto LABEL_77;
  }

LABEL_302:
  if (_CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
LABEL_304:
    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
LABEL_306:
      swift_once();
LABEL_198:
      v143 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v144 = swift_allocObject();
      *(v144 + 16) = xmmword_10146CA70;
      *(v144 + 56) = &type metadata for Int32;
      *(v144 + 64) = &protocol witness table for Int32;
      *(v144 + 32) = v32;
      v145 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v144 + 96) = v145;
      v146 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
      *(v144 + 104) = v146;
      *(v144 + 72) = v28;
      *(v144 + 136) = &type metadata for String;
      v147 = sub_1000053B0();
      *(v144 + 112) = v8;
      *(v144 + 120) = v4;
      *(v144 + 176) = &type metadata for UInt;
      *(v144 + 184) = &protocol witness table for UInt;
      *(v144 + 144) = v147;
      *(v144 + 152) = 299;
      v148 = v254;
      *(v144 + 216) = v145;
      *(v144 + 224) = v146;
      *(v144 + 192) = v148;
      v149 = v28;
      v150 = v148;
      v151 = static os_log_type_t.error.getter();
      sub_100005404(v143, &_mh_execute_header, v151, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v144);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v152 = static os_log_type_t.error.getter();
      sub_100005404(v143, &_mh_execute_header, v152, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v153 = swift_allocObject();
      v153[2] = 8;
      v153[3] = 0;
      v153[4] = 0;
      v153[5] = 0;
      v154 = __VaListBuilder.va_list()();
      StaticString.description.getter("updateToolbarButtons(for:forceUpdate:)", 38, 2);
      v155 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
      v156 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v157 = String._bridgeToObjectiveC()();

      [v247 handleFailureInFunction:v155 file:v156 lineNumber:299 isFatal:0 format:v157 args:v154];

LABEL_146:
      v28 = v234;
      v77 = &selRef_longLongValue;
      v57 = v246;
      v70 = v244;
      goto LABEL_147;
    }
  }

LABEL_77:
  sub_10067DD0C(0, 0, v29, sub_1007AB810, &qword_1019F6BF0, UIBarButtonItem_ptr);
LABEL_78:

  if (*(v4 + 4))
  {
LABEL_82:
    v31 = _swiftEmptyArrayStorage;
    goto LABEL_86;
  }

  sub_101013250();
  if (v35)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v263 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v263 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_295:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_82;
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v264 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v264 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v31 = v264;
LABEL_86:
  LODWORD(v243) = v35;
  v244 = v31;
  v52 = v247;
  v53 = [v247 navigationItem];
  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v53 setBackAction:v54];

  v55 = type metadata accessor for TaskPriority();
  v56 = v246;
  (*(*(v55 - 8) + 56))(v246, 1, 1, v55);
  type metadata accessor for MainActor();
  v57 = v52;
  v58 = static MainActor.shared.getter();
  v59 = swift_allocObject();
  v59[2] = v58;
  v59[3] = &protocol witness table for MainActor;
  v59[4] = v57;
  sub_10064191C(0, 0, v56, &unk_10146F998, v59);

  v60 = [v57 navigationItem];
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = swift_allocObject();
  *(v62 + 16) = sub_10002E434;
  *(v62 + 24) = v61;
  v258 = sub_10067BF80;
  v259 = v62;
  v254 = _NSConcreteStackBlock;
  v255 = *"";
  v256 = sub_1006465C4;
  v257 = &unk_10187E808;
  v63 = _Block_copy(&v254);

  [v60 setTitleMenuProvider:v63];
  _Block_release(v63);

  sub_10064253C(0, 0);
  LOBYTE(v63) = *(v4 + 7);
  v64 = [v57 navigationItem];
  v65 = v64;
  if (v63)
  {
    v66 = objc_opt_self();
    v258 = sub_100646654;
    v259 = 0;
    v254 = _NSConcreteStackBlock;
    v255 = *"";
    v256 = sub_100646688;
    v257 = &unk_10187E830;
    v67 = _Block_copy(&v254);
    v68 = [v66 elementWithUncachedProvider:v67];
    _Block_release(v67);
    [v65 setAdditionalOverflowItems:v68];

    v65 = v68;
  }

  else
  {
    [v64 setAdditionalOverflowItems:0];
  }

  v253 = _swiftEmptyArrayStorage;
  v69 = *(v4 + 3);
  v246 = v57;
  v70 = v244;
  v234 = v28;
  if (v36)
  {
    if ((v69 & 1) == 0)
    {
      if (((v245 | *(v4 + 34)) & 1) == 0 && (*(v4 + 35) & 1) == 0)
      {
        v71 = swift_allocObject();
        *(v71 + 16) = xmmword_10146E8B0;
        *(v71 + 32) = sub_1010132F0();
        v242 = v4;
        if (v243)
        {
          *(v71 + 40) = sub_101013270();
          v72 = sub_1010132D0();
        }

        else
        {
          *(v71 + 40) = sub_1010132D0();
          v72 = sub_101013270();
        }

        *(v71 + 48) = v72;
        *(v71 + 56) = sub_101013290();
        v84 = v71 & 0xFFFFFFFFFFFFFF8;
        v57 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v57)
        {
          v112 = 0;
          v77 = v71 & 0xC000000000000001;
          v28 = 1;
          do
          {
            if (v77)
            {
              v113 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v112 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_203;
              }

              v113 = *(v71 + 8 * v112 + 32);
            }

            v114 = v113;
            ++v112;
            [v113 setEnabled:(*(v242 + 4) & 1) == 0];
          }

          while (v57 != v112);
        }

        if (v243)
        {
          v115 = swift_allocObject();
          *(v115 + 16) = xmmword_10146CE00;
          *(v115 + 32) = [objc_opt_self() flexibleSpaceItem];
          v57 = v246;
          *(v115 + 40) = sub_1010133B4();
          v254 = v71;
          sub_100799B00(v115);
          v238 = v254;
          v116 = v242;
          v28 = v234;
          v77 = 0x10198C000;
        }

        else
        {
          v117 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v77 = 0x10198C000;
          v57 = v246;
          if (v117)
          {
            v254 = _swiftEmptyArrayStorage;
            sub_100776744(0, v117, 0);
            v118 = v254;
            if ((v71 & 0xC000000000000001) != 0)
            {
              v119 = 0;
              v247 = xmmword_101465920;
              v116 = v242;
              do
              {
                v120 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v121 = swift_allocObject();
                *(v121 + 16) = v247;
                *(v121 + 32) = v120;
                v254 = v118;
                v123 = v118[2];
                v122 = v118[3];
                if (v123 >= v122 >> 1)
                {
                  v124 = v121;
                  sub_100776744((v122 > 1), v123 + 1, 1);
                  v121 = v124;
                  v116 = v242;
                  v118 = v254;
                }

                ++v119;
                v118[2] = v123 + 1;
                v118[v123 + 4] = v121;
              }

              while (v117 != v119);
            }

            else
            {
              v125 = 32;
              v247 = xmmword_101465920;
              do
              {
                v126 = *(v71 + v125);
                v127 = swift_allocObject();
                *(v127 + 16) = v247;
                *(v127 + 32) = v126;
                v254 = v118;
                v129 = v118[2];
                v128 = v118[3];
                v130 = v126;
                if (v129 >= v128 >> 1)
                {
                  sub_100776744((v128 > 1), v129 + 1, 1);
                  v118 = v254;
                }

                v118[2] = v129 + 1;
                v118[v129 + 4] = v127;
                v125 += 8;
                --v117;
              }

              while (v117);

              v116 = v242;
            }

            v28 = v234;
            v77 = 0x10198C000;
            v57 = v246;
            v70 = v244;
          }

          else
          {

            v118 = _swiftEmptyArrayStorage;
            v116 = v242;
            v28 = v234;
          }

          v131 = swift_allocObject();
          *(v131 + 16) = xmmword_101465920;
          *(v131 + 32) = [objc_opt_self() flexibleSpaceItem];
          v132 = sub_100646798(v131, v118);
          v134 = v133;

          sub_1006773C8(v132, v134);
          v238 = v135;
        }

        v136 = [v57 navigationController];
        if (v136)
        {
          v137 = v136;
          v138 = *(v116 + 24);
          if (([objc_opt_self() crl_phoneUI] & 1) != 0 || objc_msgSend(v138, "crl_isCompactWidth"))
          {
            v139 = *(v116 + 5) ^ 1;
          }

          else
          {
            v139 = 0;
          }

          [v137 setToolbarHidden:0 animated:v139 & 1];

          goto LABEL_147;
        }

        *&v247 = objc_opt_self();
        LODWORD(v32) = [v247 _atomicIncrementAssertCount];
        v254 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v254, "invalid nil found when unwrapping value", 39, 2u);
        StaticString.description.getter("updateToolbarButtons(for:forceUpdate:)", 38, 2);
        v28 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
        v140 = String._bridgeToObjectiveC()();

        v141 = [v140 lastPathComponent];

        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v4 = v142;

        if (qword_1019F20A0 == -1)
        {
          goto LABEL_198;
        }

        goto LABEL_306;
      }

      goto LABEL_98;
    }
  }

  else if ((v69 & 1) == 0)
  {
    goto LABEL_98;
  }

  v73 = *(v4 + 24);
  if ([objc_opt_self() crl_phoneUI] & 1) != 0 || (objc_msgSend(v73, "crl_isCompactWidth"))
  {
LABEL_99:
    if (v36)
    {
      goto LABEL_100;
    }

LABEL_104:
    v79 = [v57 navigationController];
    if (v79)
    {
      v80 = v79;
      v81 = *(v4 + 24);
      if ([objc_opt_self() crl_phoneUI] & 1) != 0 || (objc_msgSend(v81, "crl_isCompactWidth") & 1) != 0 || (v245)
      {
        v82 = *(v4 + 5) ^ 1;
      }

      else
      {
        v82 = 0;
      }

      [v80 setToolbarHidden:1 animated:v82 & 1];
    }

    v28 = v4;
    v57 = *(v4 + 4);
    if (v57)
    {
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_101465920;
      *(v83 + 32) = sub_1010135A8();
      v252 = v83;
    }

    else
    {
      if (v243)
      {
        v248 = xmmword_10146CA70;
        v249[0] = sub_1010132F0();
        v249[1] = sub_101013270();
        v249[2] = sub_1010132D0();
        v249[3] = sub_1010132B0();
        v84 = 0;
        v249[4] = sub_101013290();
        v85 = _swiftEmptyArrayStorage;
        v254 = _swiftEmptyArrayStorage;
        v77 = 5;
LABEL_120:
        if (v84 <= 5)
        {
          v86 = 5;
        }

        else
        {
          v86 = v84;
        }

        while (v84 != 5)
        {
          if (v86 == v84)
          {
            __break(1u);
            goto LABEL_202;
          }

          v87 = v249[v84++];
          if (v87)
          {
            v88 = v87;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v254 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v254 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              *&v247 = *((v254 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v85 = v254;
            goto LABEL_120;
          }
        }
      }

      else
      {
        v250 = xmmword_10146D2A0;
        v251[0] = sub_1010132B0();
        v251[1] = sub_1010132D0();
        v251[2] = sub_101013270();
        v84 = 0;
        v251[3] = sub_101013290();
        v85 = _swiftEmptyArrayStorage;
        v254 = _swiftEmptyArrayStorage;
        v77 = 4;
LABEL_130:
        if (v84 <= 4)
        {
          v89 = 4;
        }

        else
        {
          v89 = v84;
        }

        while (v84 != 4)
        {
          if (v89 == v84)
          {
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
            goto LABEL_204;
          }

          v90 = v251[v84++];
          if (v90)
          {
            v91 = v90;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v254 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v254 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              *&v247 = *((v254 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v85 = v254;
            goto LABEL_130;
          }
        }
      }

      sub_1005B981C(&unk_1019F6BE0, &qword_10146F9A0);
      swift_arrayDestroy();
      v252 = v85;
      v257 = &type metadata for CRLFeatureFlags;
      v258 = sub_100004D60();
      LOBYTE(v254) = 24;
      v92 = isFeatureEnabled(_:)();
      sub_100005070(&v254);
      if (v92)
      {
        sub_101013310();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v252 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v252 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }

    v93 = String._bridgeToObjectiveC()();
    v94 = [objc_opt_self() systemImageNamed:v93];

    sub_100006370(0, &qword_1019F6BF0, UIBarButtonItem_ptr);
    v95 = v94;
    v269.value.super.isa = v94;
    v269.is_nil = 0;
    v270.value.super.super.isa = 0;
    v96 = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v269, v270, v271).super.super.isa;
    sub_100006370(0, &unk_101A012C0, UIBarButtonItemGroup_ptr);
    v97 = v96;
    v98 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_101465920;
    *(v99 + 32) = v98;
    v253 = v99;
    if (((v243 | v57) & 1) == 0)
    {
      v247 = xmmword_101465920;
      v100 = swift_allocObject();
      *(v100 + 16) = v247;
      v101 = v98;
      *(v100 + 32) = sub_1010132F0();
      v102 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

      v103 = v102;
      sub_10067DD0C(0, 0, v103, sub_1007AB810, &unk_101A012C0, UIBarButtonItemGroup_ptr);

      v97 = v103;
      v95 = v103;
    }

    v238 = 0;
    goto LABEL_146;
  }

LABEL_98:
  if ((v245 | *(v4 + 34)))
  {
    goto LABEL_99;
  }

  if ((v36 & *(v4 + 35) & 1) == 0)
  {
    goto LABEL_104;
  }

LABEL_100:
  v74 = [v57 navigationController];
  if (v74)
  {
    v75 = v74;
    v76 = *(v4 + 24);
    v77 = 0x10198C000;
    if ([objc_opt_self() crl_phoneUI] & 1) != 0 || (objc_msgSend(v76, "crl_isCompactWidth") & 1) != 0 || (v245)
    {
      v78 = *(v4 + 5) ^ 1;
    }

    else
    {
      v78 = 0;
    }

    [v75 setToolbarHidden:1 animated:v78 & 1];

    v238 = 0;
  }

  else
  {
    v238 = 0;
    v77 = 0x10198C000;
  }

LABEL_147:
  v254 = _swiftEmptyArrayStorage;
  v84 = v262;
  if (v262 >> 62)
  {
LABEL_204:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_149;
    }

LABEL_205:
    v105 = _swiftEmptyArrayStorage;
    goto LABEL_206;
  }

  if (!*((v262 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_205;
  }

LABEL_149:
  sub_100006370(0, &unk_101A012C0, UIBarButtonItemGroup_ptr);
  v104 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v254 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v254 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v105 = v254;
LABEL_206:
  v245 = v105;
  v158 = v261;
  if (v261 >> 62)
  {
    v163 = _CocoaArrayWrapper.endIndex.getter();
    v240 = v158;
    if (!v163)
    {
      goto LABEL_211;
    }
  }

  else
  {
    v159 = *((v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v240 = v261;
    if (!v159)
    {
      goto LABEL_211;
    }
  }

  sub_100006370(0, &unk_101A012C0, UIBarButtonItemGroup_ptr);
  v160 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v254 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v254 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v245 = v254;
LABEL_211:
  if (v28 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_213;
    }
  }

  else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_213:
    v161 = objc_allocWithZone(UIBarButtonItemGroup);
    sub_100006370(0, &qword_1019F6BF0, UIBarButtonItem_ptr);
    v162 = Array._bridgeToObjectiveC()().super.isa;
    v237 = [v161 initWithBarButtonItems:v162 representativeItem:0];

    goto LABEL_218;
  }

  v237 = 0;
LABEL_218:
  v241 = v84;
  v164 = [v57 *(v77 + 2264)];
  v165 = [v164 leftBarButtonItems];

  if (v165)
  {
    sub_100006370(0, &qword_1019F6BF0, UIBarButtonItem_ptr);
    v166 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v167 = sub_100673AF8(v166, v70, &qword_1019F6BF0, UIBarButtonItem_ptr);

    sub_100646838((v167 & 1) == 0);
    v168 = [v57 *(v77 + 2264)];
    [v168 setStyle:sub_100642778()];

    v169 = v245;
    if (v167)
    {
      goto LABEL_228;
    }
  }

  else
  {
    sub_100646838(1);
    v170 = [v57 *(v77 + 2264)];
    [v170 setStyle:sub_100642778()];

    v169 = v245;
  }

  v171 = [v57 *(v77 + 2264)];
  if (v70 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_224;
    }

LABEL_226:
    v172.super.isa = 0;
    goto LABEL_227;
  }

  if (!*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_226;
  }

LABEL_224:
  sub_100006370(0, &qword_1019F6BF0, UIBarButtonItem_ptr);
  v172.super.isa = Array._bridgeToObjectiveC()().super.isa;
LABEL_227:
  [v171 setLeftBarButtonItems:v172.super.isa];

LABEL_228:
  v173 = [v57 *(v77 + 2264)];
  v174 = v253;
  v175 = sub_100006370(0, &unk_101A012C0, UIBarButtonItemGroup_ptr);
  v235 = v174;
  v236 = v175;
  v176 = Array._bridgeToObjectiveC()().super.isa;
  [v173 setCenterItemGroups:v176];

  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v178 = v169 >> 62;
  *&v247 = inited;
  if (v169 >> 62)
  {
    goto LABEL_281;
  }

  v179 = inited;
  v180 = *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_230:
  v179[7] = &type metadata for Int;
  v179[8] = &protocol witness table for Int;
  v179[4] = v180;
  v242 = v263 >> 62;
  v243 = v263;
  if (v263 >> 62)
  {
    v181 = _CocoaArrayWrapper.endIndex.getter();
    v179 = v247;
  }

  else
  {
    v181 = *((v263 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v179[12] = &type metadata for Int;
  v179[13] = &protocol witness table for Int;
  v179[9] = v181;
  if (!v178)
  {
    if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_234;
    }

LABEL_264:

    goto LABEL_268;
  }

LABEL_263:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_264;
  }

LABEL_234:
  if (v242)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_236;
    }

LABEL_267:

    v57 = v246;
    goto LABEL_268;
  }

  if (!*((v243 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_267;
  }

LABEL_236:
  v233 = objc_opt_self();
  v182 = [v233 _atomicIncrementAssertCount];
  v252 = [objc_allocWithZone(NSString) init];
  sub_100604538(v247, &v252, "Invalid bar button state. trailingItemGroup.count: %d, rightBarButtonItems.count: %d", 84, 2u);
  StaticString.description.getter("updateToolbarButtons(for:forceUpdate:)", 38, 2);
  v183 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
  v184 = String._bridgeToObjectiveC()();

  v185 = [v184 lastPathComponent];

  v186 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v188 = v187;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v189 = static OS_os_log.crlAssert;
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_10146CA70;
  *(v190 + 56) = &type metadata for Int32;
  *(v190 + 64) = &protocol witness table for Int32;
  *(v190 + 32) = v182;
  v191 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v190 + 96) = v191;
  v192 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
  *(v190 + 104) = v192;
  *(v190 + 72) = v183;
  *(v190 + 136) = &type metadata for String;
  v193 = sub_1000053B0();
  *(v190 + 112) = v186;
  *(v190 + 120) = v188;
  *(v190 + 176) = &type metadata for UInt;
  *(v190 + 184) = &protocol witness table for UInt;
  *(v190 + 144) = v193;
  *(v190 + 152) = 392;
  v194 = v183;
  v195 = v252;
  *(v190 + 216) = v191;
  *(v190 + 224) = v192;
  *(v190 + 192) = v195;
  v196 = v194;
  v197 = v195;
  v198 = static os_log_type_t.error.getter();
  sub_100005404(v189, &_mh_execute_header, v198, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v190);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v199 = static os_log_type_t.error.getter();
  v200 = v247;
  sub_100005404(v189, &_mh_execute_header, v199, "Invalid bar button state. trailingItemGroup.count: %d, rightBarButtonItems.count: %d", 84, 2, v247);

  type metadata accessor for __VaListBuilder();
  v169 = swift_allocObject();
  *(v169 + 16) = 8;
  *(v169 + 24) = 0;
  v77 = v169 + 24;
  *(v169 + 32) = 0;
  *(v169 + 40) = 0;
  v201 = *(v200 + 16);
  if (v201)
  {
    v202 = 0;
    v203 = v247 + 32;
    v178 = 40;
    while (1)
    {
      sub_100020E58((v203 + 40 * v202), *(v203 + 40 * v202 + 24));
      v204 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v57 = *v77;
      v205 = *(v204 + 16);
      v206 = __OFADD__(*v77, v205);
      v207 = *v77 + v205;
      if (v206)
      {
LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        __break(1u);
LABEL_281:
        v180 = _CocoaArrayWrapper.endIndex.getter();
        v179 = v247;
        goto LABEL_230;
      }

      v208 = *(v169 + 32);
      if (v208 >= v207)
      {
        goto LABEL_255;
      }

      if (v208 + 0x4000000000000000 < 0)
      {
        goto LABEL_279;
      }

      v209 = *(v169 + 40);
      if (2 * v208 > v207)
      {
        v207 = 2 * v208;
      }

      *(v169 + 32) = v207;
      if ((v207 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_280;
      }

      v210 = v204;
      v211 = swift_slowAlloc();
      v212 = v211;
      *(v169 + 40) = v211;
      if (v209)
      {
        break;
      }

      v204 = v210;
      v178 = 40;
      if (!v212)
      {
LABEL_262:
        __break(1u);
        goto LABEL_263;
      }

LABEL_256:
      v214 = *(v204 + 16);
      if (v214)
      {
        v215 = (v204 + 32);
        v216 = *v77;
        while (1)
        {
          v217 = *v215++;
          *&v212[8 * v216] = v217;
          v216 = *v77 + 1;
          if (__OFADD__(*v77, 1))
          {
            break;
          }

          *v77 = v216;
          if (!--v214)
          {
            goto LABEL_240;
          }
        }

        __break(1u);
        goto LABEL_278;
      }

LABEL_240:

      if (++v202 == v201)
      {
        goto LABEL_265;
      }
    }

    if (v211 != v209 || v211 >= &v209[8 * v57])
    {
      memmove(v211, v209, 8 * v57);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v204 = v210;
    v178 = 40;
LABEL_255:
    v212 = *(v169 + 40);
    if (!v212)
    {
      goto LABEL_262;
    }

    goto LABEL_256;
  }

LABEL_265:
  v218 = __VaListBuilder.va_list()();
  StaticString.description.getter("updateToolbarButtons(for:forceUpdate:)", 38, 2);
  v219 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
  v220 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Invalid bar button state. trailingItemGroup.count: %d, rightBarButtonItems.count: %d", v233, v234);
  v221 = String._bridgeToObjectiveC()();

  [v233 handleFailureInFunction:v219 file:v220 lineNumber:392 isFatal:0 format:v221 args:v218];

  v77 = 0x10198C000;
  v57 = v246;
LABEL_268:

  v222 = [v57 *(v77 + 2264)];
  v223 = Array._bridgeToObjectiveC()().super.isa;
  [v222 setTrailingItemGroups:v223];

  v224 = [v57 *(v77 + 2264)];
  if (v242)
  {
    v227 = _CocoaArrayWrapper.endIndex.getter();
    v225 = v239;
    if (v227)
    {
      goto LABEL_270;
    }

LABEL_272:
    v226.super.isa = 0;
    goto LABEL_273;
  }

  v225 = v239;
  if (!*((v243 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_272;
  }

LABEL_270:
  sub_100006370(0, &qword_1019F6BF0, UIBarButtonItem_ptr);
  v226.super.isa = Array._bridgeToObjectiveC()().super.isa;
LABEL_273:
  [v224 setRightBarButtonItems:v226.super.isa];

  v228 = [v57 *(v77 + 2264)];
  v229 = v237;
  [v228 setPinnedTrailingGroup:v237];

  if (v238)
  {
    sub_100006370(0, &qword_1019F6BF0, UIBarButtonItem_ptr);
    v230.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v230.super.isa = 0;
  }

  [v57 setToolbarItems:v230.super.isa];

  v231 = sub_101035D60();
  v232 = sub_1010133B4();
  [v232 setEnabled:v231 & 1];
}

objc_class *sub_100645800()
{
  v0 = sub_100656088();
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  _UISolariumEnabled();
  v9 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() systemImageNamed:v9];

  sub_100006370(0, &qword_1019F6BF0, UIBarButtonItem_ptr);
  v11 = v0;
  v12 = v10;
  v13.value._countAndFlagsBits = v6;
  v13.value._object = v8;
  v24.value.super.isa = v10;
  v24.is_nil = 0;
  v25.value.super.super.isa = v0;
  v14 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v13, v24, v25, v26).super.super.isa;
  v15 = [v1 mainBundle];
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v14 setAccessibilityLabel:v18];

  v19 = [v1 mainBundle];
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();
  v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

  if (!v22)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v14 setAccessibilityHint:v22];

  return v14;
}

uint64_t sub_100645B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100645BB4, v6, v5);
}

uint64_t sub_100645BB4()
{
  *(v0 + 48) = [*(v0 + 16) navigationItem];
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100645C60;

  return sub_100645E0C();
}

uint64_t sub_100645C60(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 64) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return _swift_task_switch(sub_100645D88, v4, v3);
}

uint64_t sub_100645D88()
{
  v1 = v0[8];
  v2 = v0[6];

  [v2 setDocumentProperties:v1];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100645E0C()
{
  v1[19] = v0;
  v2 = type metadata accessor for UTType();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = type metadata accessor for CRLBoardCRDTData(0);
  v1[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[25] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[26] = v4;
  v1[27] = v3;

  return _swift_task_switch(sub_100645F30, v4, v3);
}

uint64_t sub_100645F30()
{
  v1 = v0[24];
  v2 = v0[19];
  v3 = [objc_allocWithZone(LPLinkMetadata) init];
  v0[28] = v3;
  v4 = *(*(*(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v5 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FCC4(v4 + v5, v1, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A1A020, &unk_10146C6C0);
  CRRegister.wrappedValue.getter();
  sub_10003D4BC(v1, type metadata accessor for CRLBoardCRDTData);
  v6 = String._bridgeToObjectiveC()();

  [v3 setTitle:v6];

  if ([*(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) documentIsSharedReadOnly])
  {
    v7 = [objc_opt_self() mainBundle];
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();
    v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

    if (!v10)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = String._bridgeToObjectiveC()();
    }

    [v3 setSummary:v10];
  }

  v12 = v0[21];
  v11 = v0[22];
  v13 = v0[20];
  v14 = [objc_allocWithZone(NSItemProvider) init];
  v0[29] = v14;
  static UTType.png.getter();
  UTType.identifier.getter();
  (*(v12 + 8))(v11, v13);
  v15 = String._bridgeToObjectiveC()();

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_10067C6A8;
  v0[7] = v16;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = *"";
  v0[4] = sub_100648E30;
  v0[5] = &unk_10187EB50;
  v17 = _Block_copy(v0 + 2);

  [v14 registerDataRepresentationForTypeIdentifier:v15 visibility:0 loadHandler:v17];
  _Block_release(v17);

  [v3 setImageProvider:v14];
  v0[30] = [objc_allocWithZone(UIDocumentProperties) initWithMetadata:v3];
  v18 = swift_task_alloc();
  v0[31] = v18;
  *v18 = v0;
  v18[1] = sub_100646324;

  return sub_100648F68();
}

uint64_t sub_100646324(char a1)
{
  v2 = *v1;
  *(*v1 + 256) = a1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);

  return _swift_task_switch(sub_10064644C, v4, v3);
}

uint64_t sub_10064644C()
{
  v1 = *(v0 + 256);

  if (v1 == 1)
  {
    v3 = *(v0 + 232);
    v2 = *(v0 + 240);
    v4 = *(v0 + 224);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v0 + 96) = sub_10067C6B0;
    *(v0 + 104) = v5;
    *(v0 + 64) = _NSConcreteStackBlock;
    *(v0 + 72) = *"";
    *(v0 + 80) = sub_1006499AC;
    *(v0 + 88) = &unk_10187EB78;
    v6 = _Block_copy((v0 + 64));

    [v2 setActivityViewControllerProvider:v6];

    _Block_release(v6);
  }

  else
  {
    v7 = *(v0 + 232);
    v8 = *(v0 + 224);
    [*(v0 + 240) setActivityViewControllerProvider:0];
  }

  v9 = *(v0 + 8);
  v10 = *(v0 + 240);

  return v9(v10);
}

id sub_1006465C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100006370(0, &unk_1019F61A0, UIMenuElement_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v2(v3);

  return v4;
}

double sub_100646688(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_10067BFA8, v4);

  return result;
}

void sub_10064671C(uint64_t a1, uint64_t a2)
{
  sub_100006370(0, &unk_1019F61A0, UIMenuElement_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_100646798(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      v6 = v5;
      v7 = sub_100B3D660();

      sub_1007A9208(v7 + 32, v6, a1);
      v9 = v8;

      if (v9 != v6)
      {
        __break(1u);
      }
    }
  }

  else
  {
  }

  return a2;
}

id sub_100646838(char a1)
{
  if (a1)
  {
    v2 = [v1 navigationItem];
    sub_100006370(0, &qword_1019F6BF0, UIBarButtonItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v2 setLeftBarButtonItems:isa];
  }

  v4 = [v1 navigationItem];
  sub_100006370(0, &unk_101A012C0, UIBarButtonItemGroup_ptr);
  v5 = Array._bridgeToObjectiveC()().super.isa;
  [v4 setCenterItemGroups:v5];

  v6 = [v1 navigationItem];
  v7 = Array._bridgeToObjectiveC()().super.isa;
  [v6 setTrailingItemGroups:v7];

  v8 = [v1 navigationItem];
  [v8 setPinnedTrailingGroup:0];

  return [v1 setToolbarItems:0];
}

uint64_t sub_1006469C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  type metadata accessor for MainActor();
  *(v4 + 64) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100646A5C, v6, v5);
}

uint64_t sub_100646A5C()
{
  v1 = *(v0 + 56);

  if (*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown) == 1)
  {
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v2 = static OS_os_log.crlDefault;
    v3 = static os_log_type_t.info.getter();
    sub_100005404(v2, &_mh_execute_header, v3, "Skipping request to update toolbar buttons after teardown.", 58, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    v4 = *(v0 + 56);
    v5 = [v4 traitCollection];
    sub_100642864(v5, [*&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] documentIsSharedReadOnly], v0 + 16);
    sub_100642CDC(v0 + 16, 0);
    sub_1005EB2D4(v0 + 16);
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_100646CD4(void *a1)
{
  v3 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v9 - 8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardHasSyncedAtLeastOnce;
  if (v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardHasSyncedAtLeastOnce])
  {
    return;
  }

  v13 = v1;
  v14 = *(*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v15 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v16 = *&v14[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v17 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FCC4(v16 + v17, v5, type metadata accessor for CRLBoardCRDTData);
  v18 = v14;
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D4BC(v5, type metadata accessor for CRLBoardCRDTData);
  v19 = (*&v14[v15] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v20 = *v19;
  v21 = v19[1];

  sub_10084BD4C(v8, v20, v21, v11);

  v22 = sub_100EFF9E4(v11);
  sub_10003D4BC(v11, type metadata accessor for CRLBoardIdentifier);
  v23 = [a1 userInfo];
  if (!v23)
  {

    v34 = 0u;
    v35 = 0u;
    goto LABEL_14;
  }

  v24 = v23;
  v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v32[1] = 0xD00000000000001DLL;
  v32[2] = 0x8000000101556850;
  AnyHashable.init<A>(_:)();
  if (!*(v25 + 16) || (v26 = sub_1000640CC(v33), (v27 & 1) == 0))
  {

    sub_100064234(v33);
    v34 = 0u;
    v35 = 0u;

LABEL_14:
    sub_10000CAAC(&v34, &unk_1019F4D00, &unk_10146E7F0);
    return;
  }

  sub_100064288(*(v25 + 56) + 32 * v26, &v34);
  sub_100064234(v33);

  if (!*(&v35 + 1))
  {

    goto LABEL_14;
  }

  sub_1005B981C(&unk_1019F52B0, &qword_10146FC90);
  if (swift_dynamicCast() & 1) != 0 && (v28 = sub_10079DB58(v22, v33[0]), , (v28))
  {
    v13[v12] = 1;
    if (v13[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown] == 1)
    {
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v29 = static OS_os_log.crlDefault;
      v30 = static os_log_type_t.info.getter();
      sub_100005404(v29, &_mh_execute_header, v30, "Skipping request to update toolbar buttons after teardown.", 58, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      v31 = [v13 traitCollection];
      sub_100642864(v31, [*&v13[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] documentIsSharedReadOnly], v33);
      sub_100642CDC(v33, 0);

      sub_1005EB2D4(v33);
    }
  }

  else
  {
  }
}

void sub_1006471D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_101012B64();
    v5 = [*&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_selectionModelTranslator] selectionPathForInfos:0];
    [v4 setSelectionPath:v5];
  }
}

void sub_10064727C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_101012FD4();
    [v4 resetToDefaultModeAnimated:1];
  }
}

void sub_1006472E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_101012B64();
    v5 = [*&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_selectionModelTranslator] selectionPathForInfos:0];
    [v4 setSelectionPath:v5];

    v6 = *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController];
    if (v6)
    {
      v7 = v6;
      [v7 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

id sub_1006473C0(uint64_t a1)
{
  v2 = v1;
  if (_UISolariumEnabled())
  {
    v3 = [objc_allocWithZone(UIBarButtonItem) init];
    v4 = [objc_opt_self() buttonWithType:1];
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() systemImageNamed:v5];

    [v4 setImage:v6 forState:0];
    if (_UISolariumEnabled())
    {
      v7 = objc_allocWithZone(UIColor);
      v45 = sub_100D4801C;
      v46 = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = *"";
      *&v44 = sub_1005B9BD8;
      *(&v44 + 1) = &unk_10187F1E0;
      v8 = _Block_copy(&aBlock);
      v9 = [v7 initWithDynamicProvider:v8];
      _Block_release(v8);
    }

    else
    {
      v9 = [objc_opt_self() labelColor];
    }

    [v4 setTintColor:v9];

    v26 = objc_allocWithZone(UITapGestureRecognizer);
    v27 = v2;
    v28 = [v26 initWithTarget:v27 action:"didTapUndoButtonWithSender:"];
    v29 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v27 action:"didLongPressUndoButtonWithSender:"];

    v30 = v4;
    [v30 addGestureRecognizer:v28];
    [v30 addGestureRecognizer:v29];
    v31 = objc_opt_self();
    v32 = [v31 mainBundle];
    v33 = String._bridgeToObjectiveC()();
    v34 = String._bridgeToObjectiveC()();
    v35 = [v32 localizedStringForKey:v33 value:v34 table:0];

    if (!v35)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = String._bridgeToObjectiveC()();
    }

    [v30 setLargeContentTitle:v35];

    v36 = v30;
    v37 = [v31 mainBundle];
    v38 = String._bridgeToObjectiveC()();
    v39 = String._bridgeToObjectiveC()();
    v40 = [v37 localizedStringForKey:v38 value:v39 table:0];

    if (!v40)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = String._bridgeToObjectiveC()();
    }

    [v36 setAccessibilityLabel:v40];

    [v3 setCustomView:v36];
  }

  else
  {
    sub_100006370(0, &qword_1019F6D28, off_10182F898);
    aBlock = 0u;
    v44 = 0u;
    v10 = sub_100647A58(0xD00000000000001BLL, 0x800000010155AC30, &aBlock, 0);
    v11 = objc_allocWithZone(UITapGestureRecognizer);
    v12 = v1;
    v13 = [v11 initWithTarget:v12 action:"didTapUndoButtonWithSender:"];
    v14 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v12 action:"didLongPressUndoButtonWithSender:"];

    v42 = v10;
    v15 = [v10 button];
    [v15 addGestureRecognizer:v13];
    [v15 addGestureRecognizer:v14];
    v16 = objc_opt_self();
    v17 = [v16 mainBundle];
    v18 = String._bridgeToObjectiveC()();
    v19 = String._bridgeToObjectiveC()();
    v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

    if (!v20)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = String._bridgeToObjectiveC()();
    }

    [v15 setLargeContentTitle:v20];

    v21 = v15;
    v22 = [v16 mainBundle];
    v23 = String._bridgeToObjectiveC()();
    v24 = String._bridgeToObjectiveC()();
    v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

    if (!v25)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = String._bridgeToObjectiveC()();
    }

    [v21 setAccessibilityLabel:v25];

    return v42;
  }

  return v3;
}

id sub_100647A58(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = a3[3];
  if (v7)
  {
    v8 = sub_100020E58(a3, a3[3]);
    v9 = *(v7 - 8);
    v10 = __chkstk_darwin(v8);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v12, v7);
    sub_100005070(a3);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImageNamed:v6 target:v13 action:a4];

  swift_unknownObjectRelease();
  return v14;
}

void sub_100647BD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      v6 = [v3 presentedViewController];
      if (v6)
      {
        v7 = v6;
        v8 = *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController];
        if (v8)
        {
          sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
          v9 = v7;
          v10 = v8;
          v11 = static NSObject.== infix(_:_:)();

          if ((v11 & 1) != 0 && ([v9 isBeingDismissed] & 1) == 0)
          {
            [v9 dismissViewControllerAnimated:0 completion:0];
          }
        }
      }

      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v3, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_100647D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v11[5] = a1;
    v11[6] = a2;

    sub_10064191C(0, 0, v7, &unk_10146FA48, v11);
  }

  return 0;
}

uint64_t sub_100647E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v6[13] = type metadata accessor for CRLBoardCRDTData(0);
  v6[14] = swift_task_alloc();
  type metadata accessor for UUID();
  v6[15] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v6[16] = swift_task_alloc();

  return _swift_task_switch(sub_100647F80, 0, 0);
}

uint64_t sub_100647F80()
{
  *(v0 + 136) = type metadata accessor for MainActor();
  *(v0 + 144) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100648018, v2, v1);
}

uint64_t sub_100648018()
{
  v1 = *(v0 + 80);

  *(v0 + 152) = [v1 view];

  return _swift_task_switch(sub_1006480A0, 0, 0);
}

uint64_t sub_1006480A0(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 152))
  {
    *(v3 + 160) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    a1 = sub_100648138;
    a2 = v4;
    a3 = v6;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100648138()
{
  v1 = *(v0 + 152);

  *(v0 + 168) = [v1 window];

  return _swift_task_switch(sub_1006481C0, 0, 0);
}

uint64_t sub_1006481C0(uint64_t a1)
{
  if (v1[21])
  {
    v1[22] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1006482A0, v3, v2);
  }

  else
  {

    v4 = v1[1];

    return v4();
  }
}

uint64_t sub_1006482A0()
{
  v1 = *(v0 + 168);

  *(v0 + 184) = [v1 windowScene];

  return _swift_task_switch(sub_100648328, 0, 0);
}

uint64_t sub_100648328(uint64_t a1)
{
  if (v1[23])
  {
    v1[24] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100648408, v3, v2);
  }

  else
  {

    v4 = v1[1];

    return v4();
  }
}

uint64_t sub_100648408()
{
  v1 = *(v0 + 184);

  *(v0 + 200) = [v1 delegate];

  return _swift_task_switch(sub_100648490, 0, 0);
}

uint64_t sub_100648490()
{
  if (v0[25])
  {
    type metadata accessor for CRLiOSSceneDelegate(0);
    v1 = swift_dynamicCastClass();
    v0[26] = v1;
    if (v1)
    {
      v0[27] = static MainActor.shared.getter();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100648594, v3, v2);
    }

    swift_unknownObjectRelease();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_100648594()
{
  v1 = v0[10];

  v2 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);
  v3 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
  v0[28] = v2;
  v0[29] = v3;
  v4 = *(v2 + v3);
  v0[30] = v4;
  v5 = v4;

  return _swift_task_switch(sub_100648630, 0, 0);
}

uint64_t sub_100648630()
{
  v1 = v0[30];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[15];
  v5 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v6 = *&v1[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v7 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FCC4(v6 + v7, v3, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D4BC(v3, type metadata accessor for CRLBoardCRDTData);
  v8 = (*&v1[v5] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v9 = *v8;
  v10 = v8[1];

  sub_10084BD4C(v4, v9, v10, v2);

  v0[31] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10064879C, v12, v11);
}

uint64_t sub_10064879C()
{
  v1 = v0[28];
  v2 = v0[29];

  v3 = *(v1 + v2);
  v0[32] = v3;
  v4 = v3;

  return _swift_task_switch(sub_100648818, 0, 0);
}

uint64_t sub_100648818()
{
  v1 = v0[32];
  v2 = v0[14];
  v3 = *&v1[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v4 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FCC4(v3 + v4, v2, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A1A020, &unk_10146C6C0);
  CRRegister.wrappedValue.getter();

  sub_10003D4BC(v2, type metadata accessor for CRLBoardCRDTData);
  v0[33] = v0[9];
  v0[34] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[35] = v6;
  v0[36] = v5;

  return _swift_task_switch(sub_100648958, v6, v5);
}

void sub_100648958()
{
  sub_1000505F0();
  v0[37] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[38] = v2;
    *v2 = v0;
    v2[1] = sub_100648A1C;
    v3 = v0[16];

    sub_1006ED3F8(v3, 2.0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100648A1C(uint64_t a1)
{
  v4 = *v2;
  v4[39] = v1;

  v5 = v4[37];

  if (v1)
  {
    v6 = v4[35];
    v7 = v4[36];
    v8 = sub_100648CF0;
  }

  else
  {
    v4[40] = a1;
    v6 = v4[35];
    v7 = v4[36];
    v8 = sub_100648B78;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_100648B78()
{
  v1 = *(v0 + 128);

  sub_10003D4BC(v1, type metadata accessor for CRLBoardIdentifier);

  return _swift_task_switch(sub_100648C00, 0, 0);
}

uint64_t sub_100648C00()
{
  v1 = v0[40];
  v2 = v0[11];
  v3 = [v1 PNGRepresentation];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v2(v4, v6, 0);
  sub_10002640C(v4, v6);

  swift_unknownObjectRelease();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100648CF0()
{
  v1 = *(v0 + 128);

  sub_10003D4BC(v1, type metadata accessor for CRLBoardIdentifier);

  return _swift_task_switch(sub_100648D78, 0, 0);
}

uint64_t sub_100648D78()
{
  v1 = v0[39];
  v2 = v0[11];
  swift_unknownObjectRelease();
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

id sub_100648E30(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(sub_10067C6B8, v4);

  return v5;
}

void sub_100648ED0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t sub_100648F68()
{
  v1[8] = v0;
  type metadata accessor for CRLBoardCRDTData(0);
  v1[9] = swift_task_alloc();
  type metadata accessor for UUID();
  v1[10] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_100649090, v3, v2);
}

void sub_100649090()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  if (!Strong)
  {
    goto LABEL_14;
  }

  v2 = Strong;
  if ((*(Strong + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_isNetworkReachable) & 1) == 0)
  {

LABEL_15:
    v23 = 0;
    goto LABEL_16;
  }

  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 delegate];

  if (!v4)
  {
    __break(1u);
    return;
  }

  type metadata accessor for CRLiOSAppDelegate();
  swift_dynamicCastClassUnconditional();

  swift_unknownObjectRelease();
  v5 = sub_10000A05C();

  if (v5 != 1)
  {
    goto LABEL_13;
  }

  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  v9 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
  v38 = *(v0[8] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);
  v10 = *(v38 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v11 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v12 = *&v10[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v13 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FCC4(v12 + v13, v7, type metadata accessor for CRLBoardCRDTData);
  v14 = v10;
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D4BC(v7, type metadata accessor for CRLBoardCRDTData);
  v15 = (*&v10[v11] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v16 = *v15;
  v17 = v15[1];

  sub_10084BD4C(v8, v16, v17, v6);

  v18 = (v6 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v19 = v0[12];
  if (!*v18 && v18[1] == 0xE000000000000000)
  {
    sub_10003D4BC(v0[12], type metadata accessor for CRLBoardIdentifier);
    goto LABEL_11;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_10003D4BC(v19, type metadata accessor for CRLBoardIdentifier);
  if ((v20 & 1) == 0)
  {
LABEL_13:

LABEL_14:

    goto LABEL_15;
  }

LABEL_11:
  v21 = v0[8];
  v22 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardHasSyncedAtLeastOnce;
  v0[17] = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardHasSyncedAtLeastOnce;
  if (*(v21 + v22))
  {

    v23 = *(v21 + v22);
LABEL_16:

    v24 = v0[1];

    v24(v23);
    return;
  }

  v26 = v0[10];
  v25 = v0[11];
  v27 = v0[9];
  v28 = *(v38 + v9);
  v29 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v30 = *&v28[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v31 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FCC4(v30 + v31, v27, type metadata accessor for CRLBoardCRDTData);
  v32 = v28;
  CRRegister.wrappedValue.getter();
  sub_10003D4BC(v27, type metadata accessor for CRLBoardCRDTData);
  v33 = (*&v28[v29] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v34 = *v33;
  v35 = v33[1];

  sub_10084BD4C(v26, v34, v35, v25);

  v36 = swift_task_alloc();
  v0[18] = v36;
  *v36 = v0;
  v36[1] = sub_100649528;
  v37 = v0[11];

  sub_1010AB348(v37);
}

uint64_t sub_100649528(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  *(*v1 + 152) = a1;

  sub_10003D4BC(v3, type metadata accessor for CRLBoardIdentifier);
  v4 = *(v2 + 120);
  v5 = *(v2 + 112);

  return _swift_task_switch(sub_100649688, v5, v4);
}

uint64_t sub_100649688()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 64);

  *(v4 + v2) = v1;
  v5 = *(v0 + 152);

  v6 = *(v0 + 8);

  return v6(v5);
}

id sub_100649730(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_101012FD4();
    v4 = [v3 mode];

    LOBYTE(v3) = [v4 wantsToEndForNonPopoverPresentations];
    if (v3)
    {
      [*&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController] resetToDefaultModeAnimated:1];
    }

    v5 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_shareSheetProvider];
    v6 = *&v5[OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_thumbnailProvider];
    if (v6)
    {
      v7 = *&v5[OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_thumbnailProvider + 8];
      v8 = *&v5[OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_boardLibrary];
      v9 = v5;
      swift_unknownObjectRetain();
      v10 = sub_100700CF0(v8, v6, v7, 0);
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = qword_1019F2098;
      v14 = v5;
      if (v13 != -1)
      {
        swift_once();
      }

      v15 = static OS_os_log.crlDefault;
      v16 = static os_log_type_t.error.getter();
      sub_100005404(v15, &_mh_execute_header, v16, "CRLGelatoShareSheetProvider: Could not create activity view controller. Thumbnail provider is epxected.", 103, 2, _swiftEmptyArrayStorage);
      v17 = objc_allocWithZone(type metadata accessor for CRLSelectionAwareActivityViewController());
      isa = Array._bridgeToObjectiveC()().super.isa;
      v19 = [v17 initWithActivityItems:isa applicationActivities:0];

      v10 = sub_100F7D680(v19);
      v2 = v14;
    }
  }

  else
  {
    v11 = objc_allocWithZone(type metadata accessor for CRLSelectionAwareActivityViewController());
    v12 = Array._bridgeToObjectiveC()().super.isa;
    v2 = [v11 initWithActivityItems:v12 applicationActivities:0];

    v10 = sub_100F7D680(v2);
  }

  return v10;
}

id sub_1006499AC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void sub_1006499FC(int a1, char *a2)
{
  v3 = [a2 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    [v5 rename:0];
  }

  v6 = *(*&a2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
  sub_1008FEE94(1);
}

uint64_t sub_100649ACC(void (*a1)(uint64_t), uint64_t a2, char *a3)
{
  v49 = _s5BoardVMa(0);
  __chkstk_darwin(v49);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLBoardIdentifier(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v17);
  v19 = &v48 - v18;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (a1)(_swiftEmptyArrayStorage);
  }

  v50 = v15;
  v51 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a2;
  v55 = a1;
  v53 = a3;
  v21 = *(*&a3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v22 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v23 = *&v21[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v24 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  v25 = Strong;
  swift_beginAccess();
  sub_10004FCC4(v23 + v24, v10, type metadata accessor for CRLBoardCRDTData);
  v26 = v21;
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D4BC(v10, type metadata accessor for CRLBoardCRDTData);
  v27 = (*&v21[v22] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v28 = *v27;
  v29 = v27[1];

  sub_10084BD4C(v13, v28, v29, v19);

  v52 = v25;
  sub_1010AB99C(v19, v7);
  v30 = v19;
  v32 = v7[*(v49 + 56)];
  sub_10003D4BC(v7, _s5BoardVMa);
  if (v32 == 1)
  {
    v33 = [objc_opt_self() mainBundle];
    v34 = String._bridgeToObjectiveC()();
    v35 = String._bridgeToObjectiveC()();
    v36 = [v33 localizedStringForKey:v34 value:v35 table:0];
    LODWORD(v49) = 1;
  }

  else
  {
    v33 = [objc_opt_self() mainBundle];
    v34 = String._bridgeToObjectiveC()();
    v35 = String._bridgeToObjectiveC()();
    v36 = [v33 localizedStringForKey:v34 value:v35 table:0];
    LODWORD(v49) = 0;
  }

  v37 = v36;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v38 = String._bridgeToObjectiveC()();

  v39 = [objc_opt_self() systemImageNamed:v38];

  v40 = v51;
  sub_10004FCC4(v19, v51, type metadata accessor for CRLBoardIdentifier);
  v41 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v42 = swift_allocObject();
  sub_1000252C0(v40, v42 + v41, type metadata accessor for CRLBoardIdentifier);
  *(v42 + v41 + v16) = v49;
  v43 = v53;
  *(v42 + ((v41 + v16) & 0xFFFFFFFFFFFFFFF8) + 8) = v53;
  v44 = v43;
  v45 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_101465920;
  *(v46 + 32) = v45;
  v47 = v45;
  v55(v46);

  return sub_10003D4BC(v30, type metadata accessor for CRLBoardIdentifier);
}

double sub_10064A104(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_10004FCC4(a2, v10, type metadata accessor for CRLBoardIdentifier);
  type metadata accessor for MainActor();
  v15 = a4;
  v16 = static MainActor.shared.getter();
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = v17 + v9;
  v19 = (v17 + v9) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = &protocol witness table for MainActor;
  sub_1000252C0(v10, v20 + v17, type metadata accessor for CRLBoardIdentifier);
  *(v20 + v18) = a3;
  *(v20 + v19 + 8) = v15;
  sub_10064191C(0, 0, v13, &unk_10146F9F8, v20);

  return result;
}

uint64_t sub_10064A31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 88) = a5;
  *(v5 + 16) = a4;
  *(v5 + 24) = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  *(v5 + 32) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 40) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 48) = v7;
  *(v5 + 56) = v6;

  return _swift_task_switch(sub_10064A410, v7, v6);
}

void sub_10064A410()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 88);
  sub_10004FCC4(*(v0 + 16), v1, type metadata accessor for CRLBoardIdentifier);
  sub_1005B981C(&unk_101A19BD0, &qword_10146FA00);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  sub_10004FCC4(v1, v5 + v4, type metadata accessor for CRLBoardIdentifier);
  v6 = sub_1005BF2F8(v5);
  swift_setDeallocating();
  sub_10003D4BC(v5 + v4, type metadata accessor for CRLBoardIdentifier);
  swift_deallocClassInstance();
  v7 = objc_allocWithZone(type metadata accessor for CRLBoardFavoriteCommand());
  v8 = sub_100FAAC84(v6, (v3 & 1) == 0);
  *(v0 + 64) = v8;
  sub_10003D4BC(v1, type metadata accessor for CRLBoardIdentifier);
  sub_101052810();
  *(v0 + 72) = v9;
  if (v9)
  {
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v10[1] = sub_10064A5C0;

    sub_100FAEB7C(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10064A5C0()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 72);
  if (v0)
  {

    v5 = *(v3 + 48);
    v6 = *(v3 + 56);
    v7 = sub_10067F2F8;
  }

  else
  {

    v5 = *(v3 + 48);
    v6 = *(v3 + 56);
    v7 = sub_10064A6FC;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10064A6FC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

double sub_10064A76C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = v4;
    sub_10102E35C(sub_10067C02C, v5);
  }

  return result;
}

void sub_10064A80C(void *a1, uint64_t a2)
{
  v3 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isExportingToPDF;
    if (*(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isExportingToPDF))
    {
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v9 = static OS_os_log.crlDefault;
      v10 = static os_log_type_t.default.getter();
      sub_100005404(v9, &_mh_execute_header, v10, "Already exporting to PDF. Skipping.", 35, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      v11 = *(*(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardActor);

      v12 = [a1 presentationSourceItem];
      if (v12)
      {
        v13 = v12;
        if (qword_1019F2098 != -1)
        {
          swift_once();
        }

        v14 = static OS_os_log.crlDefault;
        v15 = static os_log_type_t.default.getter();
        sub_100005404(v14, &_mh_execute_header, v15, "Exporting to PDF.", 17, 2, _swiftEmptyArrayStorage);
        *(v7 + v8) = 1;
        v16 = type metadata accessor for TaskPriority();
        (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
        type metadata accessor for MainActor();

        v17 = v7;
        swift_unknownObjectRetain();
        v18 = static MainActor.shared.getter();
        v19 = swift_allocObject();
        v19[2] = v18;
        v19[3] = &protocol witness table for MainActor;
        v19[4] = v17;
        v19[5] = v11;
        v19[6] = v13;
        sub_10064191C(0, 0, v5, &unk_10146F9E0, v19);

        swift_unknownObjectRelease();
      }

      else
      {
        v45 = objc_opt_self();
        v20 = [v45 _atomicIncrementAssertCount];
        v46 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v46, "invalid nil found when unwrapping value", 39, 2u);
        StaticString.description.getter("makeMenuElementForExportToPDF()", 31, 2);
        v44 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
        v21 = String._bridgeToObjectiveC()();

        v22 = [v21 lastPathComponent];

        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v24;
        v43 = v23;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v25 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v20;
        v27 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(inited + 96) = v27;
        v28 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
        *(inited + 104) = v28;
        v29 = v44;
        *(inited + 72) = v44;
        *(inited + 136) = &type metadata for String;
        v30 = sub_1000053B0();
        v31 = v42;
        *(inited + 112) = v43;
        *(inited + 120) = v31;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v30;
        *(inited + 152) = 649;
        v32 = v46;
        *(inited + 216) = v27;
        *(inited + 224) = v28;
        *(inited + 192) = v32;
        v33 = v29;
        v34 = v32;
        v35 = static os_log_type_t.error.getter();
        sub_100005404(v25, &_mh_execute_header, v35, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v36 = static os_log_type_t.error.getter();
        sub_100005404(v25, &_mh_execute_header, v36, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v37 = swift_allocObject();
        v37[2] = 8;
        v37[3] = 0;
        v37[4] = 0;
        v37[5] = 0;
        v38 = __VaListBuilder.va_list()();
        StaticString.description.getter("makeMenuElementForExportToPDF()", 31, 2);
        v39 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
        v40 = String._bridgeToObjectiveC()();

        StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
        v41 = String._bridgeToObjectiveC()();

        [v45 handleFailureInFunction:v39 file:v40 lineNumber:649 isFatal:0 format:v41 args:v38];
      }
    }
  }
}

uint64_t sub_10064AE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[25] = a5;
  v6[26] = a6;
  v6[24] = a4;
  type metadata accessor for MainActor();
  v6[27] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[28] = v8;
  v6[29] = v7;

  return _swift_task_switch(sub_10064AF04, v8, v7);
}

uint64_t sub_10064AF04(uint64_t a1)
{
  v2 = sub_101012FD4();
  v3 = [v2 mode];

  LODWORD(v2) = [v3 wantsToEndForNonPopoverPresentations];
  if (v2)
  {
    [*(v1[24] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController) resetToDefaultModeAnimated:1];
  }

  v4 = swift_task_alloc();
  v1[30] = v4;
  *v4 = v1;
  v4[1] = sub_10064B018;
  v6 = v1[25];
  v5 = v1[26];
  v7 = v1[24];

  return sub_100993BDC(v6, v7, v5);
}

uint64_t sub_10064B018()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_10067F300;
  }

  else
  {
    v5 = sub_10067F2FC;
  }

  return _swift_task_switch(v5, v4, v3);
}

Class sub_10064B154()
{
  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = String._bridgeToObjectiveC()();
  v6 = objc_opt_self();
  v7 = [v6 systemImageNamed:v5];

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v10 = [v0 mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v6 systemImageNamed:v14];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v17 = [v0 mainBundle];
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = String._bridgeToObjectiveC()();
  v25 = [v6 systemImageNamed:v24];

  if (v25)
  {
  }

  sub_100006370(0, &qword_1019F6C00, UIMenu_ptr);
  v26._countAndFlagsBits = v21;
  v26._object = v23;
  v29.value.super.isa = v25;
  v29.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v29, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, 0).super.super.isa;

  return isa;
}

void sub_10064B664(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isExportingToPDF;
    if (*(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isExportingToPDF))
    {
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v14 = static OS_os_log.crlDefault;
      v15 = static os_log_type_t.default.getter();
      sub_100005404(v14, &_mh_execute_header, v15, "Already exporting to PDF. Skipping.", 35, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      v16 = *(*(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardActor);

      v17 = [a1 presentationSourceItem];
      if (v17)
      {
        v18 = v17;
        if (qword_1019F2098 != -1)
        {
          swift_once();
        }

        v19 = static OS_os_log.crlDefault;
        v20 = static os_log_type_t.default.getter();
        sub_100005404(v19, &_mh_execute_header, v20, "Exporting to PDF.", 17, 2, _swiftEmptyArrayStorage);
        *(v12 + v13) = 1;
        v21 = type metadata accessor for TaskPriority();
        (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
        type metadata accessor for MainActor();

        v22 = v12;
        swift_unknownObjectRetain();
        v23 = static MainActor.shared.getter();
        v24 = swift_allocObject();
        v24[2] = v23;
        v24[3] = &protocol witness table for MainActor;
        v24[4] = v22;
        v24[5] = v16;
        v24[6] = v18;
        sub_10064191C(0, 0, v10, a5, v24);

        swift_unknownObjectRelease();
      }

      else
      {
        v50 = objc_opt_self();
        v51 = [v50 _atomicIncrementAssertCount];
        v52 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v52, "invalid nil found when unwrapping value", 39, 2u);
        StaticString.description.getter("makeSubmenuForExport()", 22, 2);
        v49 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
        v25 = String._bridgeToObjectiveC()();

        v26 = [v25 lastPathComponent];

        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v28;
        v47 = v27;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v48 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v51;
        v30 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(inited + 96) = v30;
        v31 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
        *(inited + 104) = v31;
        v32 = v49;
        *(inited + 72) = v49;
        *(inited + 136) = &type metadata for String;
        v33 = sub_1000053B0();
        v34 = v46;
        *(inited + 112) = v47;
        *(inited + 120) = v34;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v33;
        *(inited + 152) = a3;
        v35 = v52;
        *(inited + 216) = v30;
        *(inited + 224) = v31;
        *(inited + 192) = v35;
        v36 = v32;
        v37 = v35;
        v38 = static os_log_type_t.error.getter();
        v39 = v48;
        sub_100005404(v48, &_mh_execute_header, v38, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v40 = static os_log_type_t.error.getter();
        sub_100005404(v39, &_mh_execute_header, v40, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v41 = swift_allocObject();
        v41[2] = 8;
        v41[3] = 0;
        v41[4] = 0;
        v41[5] = 0;
        v42 = __VaListBuilder.va_list()();
        StaticString.description.getter("makeSubmenuForExport()", 22, 2);
        v43 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
        v44 = String._bridgeToObjectiveC()();

        StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
        v45 = String._bridgeToObjectiveC()();

        [v50 handleFailureInFunction:v43 file:v44 lineNumber:a3 isFatal:0 format:v45 args:v42];
      }
    }
  }
}

uint64_t sub_10064BCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[25] = a5;
  v6[26] = a6;
  v6[24] = a4;
  type metadata accessor for MainActor();
  v6[27] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[28] = v8;
  v6[29] = v7;

  return _swift_task_switch(sub_10064BD5C, v8, v7);
}

uint64_t sub_10064BD5C(uint64_t a1)
{
  v2 = sub_101012FD4();
  v3 = [v2 mode];

  LODWORD(v2) = [v3 wantsToEndForNonPopoverPresentations];
  if (v2)
  {
    [*(v1[24] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController) resetToDefaultModeAnimated:1];
  }

  v4 = swift_task_alloc();
  v1[30] = v4;
  *v4 = v1;
  v4[1] = sub_10064BE70;
  v6 = v1[25];
  v5 = v1[26];
  v7 = v1[24];

  return sub_100993BDC(v6, v7, v5);
}

uint64_t sub_10064BE70()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_10064C020;
  }

  else
  {
    v5 = sub_10064BFAC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10064BFAC()
{

  *(*(v0 + 192) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isExportingToPDF) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10064C020()
{

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  swift_getErrorValue();
  v3 = Error.publicDescription.getter(v0[17], v0[18]);
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  swift_getErrorValue();
  v7 = Error.fullDescription.getter(v0[20]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  v9 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v9, "Error retrieving immutable board or exporting to PDF: %{public}@ <%@>", 69, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  *(v0[24] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isExportingToPDF) = 0;
  v10 = v0[1];

  return v10();
}

uint64_t sub_10064C1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[25] = a5;
  v6[26] = a6;
  v6[24] = a4;
  v6[27] = type metadata accessor for MainActor();
  v6[28] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[29] = v8;
  v6[30] = v7;

  return _swift_task_switch(sub_10064C284, v8, v7);
}

uint64_t sub_10064C284(uint64_t a1)
{
  v2 = sub_101012FD4();
  v3 = [v2 mode];

  LODWORD(v2) = [v3 wantsToEndForNonPopoverPresentations];
  if (v2)
  {
    [*(v1[24] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController) resetToDefaultModeAnimated:1];
  }

  v4 = v1[24];
  [*(v4 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) visibleUnscaledRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *(*(v4 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v14 = sub_100EC8784();
  v1[31] = v14;

  v1[32] = static MainActor.shared.getter();
  v15 = swift_task_alloc();
  v1[33] = v15;
  *v15 = v1;
  v15[1] = sub_10064C420;
  v16 = v1[25];

  return sub_100993EE8(v16, v14, v6, v8, v10, v12);
}

uint64_t sub_10064C420(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = sub_10064C698;
  }

  else
  {
    v6 = sub_10064C59C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10064C59C()
{

  if ([objc_opt_self() crl_padUI])
  {
    v1 = *(v0 + 272);
    [v1 setModalPresentationStyle:7];
    v2 = [v1 popoverPresentationController];

    if (v2)
    {
      [v2 setSourceItem:*(v0 + 208)];
    }
  }

  v3 = *(v0 + 272);
  [*(v0 + 192) presentViewController:v3 animated:1 completion:0];

  v4 = *(v0 + 232);
  v5 = *(v0 + 240);

  return _swift_task_switch(sub_10064C8C0, v4, v5);
}

uint64_t sub_10064C698()
{

  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return _swift_task_switch(sub_10064C6FC, v1, v2);
}

uint64_t sub_10064C6FC()
{

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  swift_getErrorValue();
  v3 = Error.publicDescription.getter(v0[17], v0[18]);
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  swift_getErrorValue();
  v7 = Error.fullDescription.getter(v0[20]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  v9 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v9, "Error retrieving immutable board or exporting to PDF: %{public}@ <%@>", 69, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  *(v0[24] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isExportingToPDF) = 0;
  v10 = v0[1];

  return v10();
}

uint64_t sub_10064C8C0()
{

  *(*(v0 + 192) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isExportingToPDF) = 0;
  v1 = *(v0 + 8);

  return v1();
}

void *sub_10064C934(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    [objc_opt_self() crl_phoneUI];
    sub_10101F6C4();
  }

  return result;
}

Class sub_10064C9F0()
{
  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = String._bridgeToObjectiveC()();
  v6 = objc_opt_self();
  v7 = [v6 systemImageNamed:v5];

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v10 = [v0 mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v6 systemImageNamed:v14];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v17 = [v0 mainBundle];
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = String._bridgeToObjectiveC()();
  v25 = [v6 systemImageNamed:v24];

  if (v25)
  {
  }

  sub_100006370(0, &qword_1019F6C00, UIMenu_ptr);
  v26._countAndFlagsBits = v21;
  v26._object = v23;
  v29.value.super.isa = v25;
  v29.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v29, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, 0).super.super.isa;

  return isa;
}

void sub_10064CEE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong print:0];
  }
}

void sub_10064CF40(uint64_t a1, uint64_t a2)
{
  v2 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(*(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v8 = sub_100EC8784();

    [*&v6[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] endEditing];
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    type metadata accessor for MainActor();
    v10 = v6;
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = &protocol witness table for MainActor;
    *(v12 + 32) = v10;
    *(v12 + 40) = 1;
    *(v12 + 48) = v8;
    sub_10064191C(0, 0, v4, &unk_10146F9D0, v12);
  }
}

uint64_t sub_10064D0F4()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled);
  if (v2 != 2)
  {
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = sub_10102983C();
  *(v0 + v1) = v3 & 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 1;
LABEL_6:
  v5 = [objc_opt_self() mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() systemImageNamed:v9];

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v4;
  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

unint64_t sub_10064D304()
{
  v1 = v0;
  v24 = _swiftEmptyArrayStorage;
  if (([*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) documentIsSharedReadOnly] & 1) == 0)
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10067C034;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100646688;
    aBlock[3] = &unk_10187E948;
    v4 = _Block_copy(aBlock);

    v5 = [v2 elementWithUncachedProvider:v4];
    _Block_release(v4);
    v6 = v5;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v7 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController;
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController);
  if (!v8)
  {
    goto LABEL_13;
  }

  if ([v8 isBeingPresented])
  {
    goto LABEL_12;
  }

  v9 = *(v1 + v7);
  if (!v9)
  {
    goto LABEL_13;
  }

  if ([v9 isMovingToParentViewController])
  {
LABEL_12:
    v12 = 1;
    goto LABEL_14;
  }

  v10 = *(v1 + v7);
  if (v10)
  {
    v11 = [v10 presentingViewController];
    if (v11)
    {

      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = 0;
LABEL_14:
  v13 = [objc_opt_self() mainBundle];
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() imageNamed:v17];

  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v12;
  *(v20 + 24) = v19;
  v21 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v24;
}

uint64_t sub_10064D6F8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a1(_swiftEmptyArrayStorage);
  }

  v5 = Strong;
  v6 = [objc_opt_self() mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() systemImageNamed:v10];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101465920;
  *(v13 + 32) = v12;
  v14 = v12;
  a1(v13);
}

void sub_10064D958(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10103A51C();
    sub_101048E40(0);
  }
}

void sub_10064D9B4(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v6 = Strong;
    sub_1010100AC(SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:), 0);
    goto LABEL_7;
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController);
    v5 = v3;
    v6 = v4;

    if (v4)
    {
      [v6 dismissViewControllerAnimated:1 completion:0];
LABEL_7:
    }
  }
}

double sub_10064DA88(uint64_t a1, uint64_t a2)
{

  AppStorage.wrappedValue.getter();

  AppStorage.wrappedValue.setter();

  return result;
}

Class sub_10064DB14(unsigned __int8 a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) mathCalculationController];
  v4 = [CRLMathCalculationController mathHintsMode]_0();
  if (qword_1019F1B78 != -1)
  {
    swift_once();
  }

  v5 = qword_101AD7130;
  v6 = *algn_101AD7138;
  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  *(swift_allocObject() + 16) = v3;

  v7 = v3;
  v35 = v6;
  v36 = v5;
  v8 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v39 = v8;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (qword_1019F1B80 != -1)
  {
    swift_once();
  }

  v10 = qword_101AD7140;
  v9 = *algn_101AD7148;
  *(swift_allocObject() + 16) = v7;
  v11 = v7;

  v34 = v10;
  v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v38 = v12;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (qword_1019F1B70 != -1)
  {
    swift_once();
  }

  v13 = qword_101AD7120;
  v14 = *algn_101AD7128;
  v15 = a1 & 1;
  if (a1)
  {
    v16 = 0;
  }

  else
  {
    v16 = 8;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v11;
  v37 = v11;

  children._rawValue = v16;
  v18 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v19 = [objc_opt_self() mainBundle];
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();
  v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v14 = v35;
      v13 = v36;
      goto LABEL_23;
    }

    if (v4 == 3)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v14 = v9;
      v13 = v34;
      goto LABEL_23;
    }

LABEL_26:
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

LABEL_23:

  v26 = objc_opt_self();
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 systemImageNamed:v27];

  if (v28)
  {
  }

  sub_100006370(0, &qword_1019F6C00, UIMenu_ptr);
  v29._countAndFlagsBits = v23;
  v29._object = v25;
  v30.value._countAndFlagsBits = v13;
  v30.value._object = v14;
  v40.value.super.isa = v28;
  v40.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v29, v30, v40, 32, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, children).super.super.isa;

  return isa;
}

unint64_t sub_10064E0E4()
{
  ObjectType = swift_getObjectType();
  v43 = _swiftEmptyArrayStorage;
  if (([*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) documentIsSharedReadOnly] & 1) == 0)
  {
    v2 = *(*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
    v3 = sub_1008FB7A4();

    if ((v3 & 1) == 0)
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = ObjectType;
      v41 = sub_10067DE7C;
      v42 = v6;
      aBlock = _NSConcreteStackBlock;
      v38 = *"";
      v39 = sub_100646688;
      v40 = &unk_10187EE70;
      v7 = _Block_copy(&aBlock);

      v8 = [v4 elementWithUncachedProvider:v7];
      _Block_release(v7);
      v9 = v8;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v10 = objc_opt_self();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = ObjectType;
  v41 = sub_10067DE84;
  v42 = v12;
  aBlock = _NSConcreteStackBlock;
  v38 = *"";
  v39 = sub_100646688;
  v40 = &unk_10187EEC0;
  v13 = _Block_copy(&aBlock);

  v14 = [v10 elementWithUncachedProvider:v13];
  _Block_release(v13);
  v15 = v14;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = sub_10067DE8C;
  v42 = v16;
  aBlock = _NSConcreteStackBlock;
  v38 = *"";
  v39 = sub_100646688;
  v40 = &unk_10187EEE8;
  v17 = _Block_copy(&aBlock);

  v18 = [v10 elementWithUncachedProvider:v17];
  _Block_release(v17);
  v19 = v18;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = sub_10067DE94;
  v42 = v20;
  aBlock = _NSConcreteStackBlock;
  v38 = *"";
  v39 = sub_100646688;
  v40 = &unk_10187EF10;
  v21 = _Block_copy(&aBlock);

  v22 = [v10 elementWithUncachedProvider:v21];
  _Block_release(v21);
  v23 = v22;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_100006370(0, &qword_1019F6C00, UIMenu_ptr);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v44.value.super.isa = 0;
  v44.is_nil = 0;
  v25 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, 0, v44, 1, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v35).super.super.isa;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = &off_101874020;
  v41 = sub_10067DE9C;
  v42 = v27;
  aBlock = _NSConcreteStackBlock;
  v38 = *"";
  v39 = sub_100646688;
  v40 = &unk_10187EF60;
  v28 = _Block_copy(&aBlock);

  v29 = [v10 elementWithUncachedProvider:v28];
  _Block_release(v28);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_101465920;
  *(preferredElementSize + 32) = v29;
  v31 = v29;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v45.value.super.isa = 0;
  v45.is_nil = 0;
  v33 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v32, 0, v45, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v36).super.super.isa;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v43;
}

uint64_t sub_10064E864(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a1(_swiftEmptyArrayStorage);
  }

  v5 = Strong;
  v6 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isConnectorModeEnabled;
  v7 = *(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isConnectorModeEnabled);
  if (v7 == 2)
  {
    v8 = sub_10102A558() & 1;
    v5[v6] = v8;
  }

  else
  {
    v8 = v7 & 1;
  }

  sub_1006797E8();
  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() imageNamed:v10];

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v8;
  v14 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101465920;
  *(v15 + 32) = v14;
  v16 = v14;
  a1(v15);
}

uint64_t sub_10064EA78(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a1(_swiftEmptyArrayStorage);
  }

  v5 = Strong;
  v6 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled;
  v7 = *(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled);
  if (v7 == 2)
  {
    v8 = sub_10102983C() & 1;
    v5[v6] = v8;
  }

  else
  {
    v8 = v7 & 1;
  }

  sub_1006798DC();
  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() imageNamed:v10];

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v8;
  v14 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101465920;
  *(v15 + 32) = v14;
  v16 = v14;
  a1(v15);
}

void sub_10064EC8C(uint64_t a1, uint64_t a2, char a3, void (*a4)(BOOL))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    a4((a3 & 1) == 0);
  }
}

uint64_t sub_10064ED00(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([*(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) hasSelection])
    {
      v6 = [objc_opt_self() mainBundle];
      v7 = String._bridgeToObjectiveC()();
      v8 = String._bridgeToObjectiveC()();
      v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100006370(0, &qword_1019F6190, UIAction_ptr);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_101465920;
      *(v11 + 32) = v10;
      v12 = v10;
      a1(v11);
    }
  }

  return (a1)(_swiftEmptyArrayStorage);
}

uint64_t sub_10064EF2C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [*(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) board];
    if (v6)
    {
      v7 = v6;
      v8 = *&v6[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer];

      v9 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
      v10 = *&v8[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
      if (!v10)
      {
        sub_10096C7D4();
        v10 = *&v8[v9];
      }

      v11 = (v10 ? v10 : _swiftEmptyArrayStorage);

      v12 = v11 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v12 >= 1)
      {
        v13 = [objc_opt_self() mainBundle];
        v14 = String._bridgeToObjectiveC()();
        v15 = String._bridgeToObjectiveC()();
        v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100006370(0, &qword_1019F6190, UIAction_ptr);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v17 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_101465920;
        *(v18 + 32) = v17;
        v19 = v17;
        a1(v18);
      }
    }
  }

  return (a1)(_swiftEmptyArrayStorage);
}