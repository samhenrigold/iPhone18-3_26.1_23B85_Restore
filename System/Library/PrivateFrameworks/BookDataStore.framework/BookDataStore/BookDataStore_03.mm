void sub_1E46614D0(void *a1, uint64_t a2)
{
  v4 = sub_1E470A0DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v93 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v93 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v103 = &v93 - v19;
  v20 = sub_1E4709B9C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v93 - v28;
  if (!a2)
  {
    return;
  }

  v99 = v16;
  v100 = v12;
  v101 = v8;
  v102 = v27;
  v30 = a1;
  v31 = sub_1E470B3DC();
  v33 = v32;
  v106 = v31;
  v107 = v32;

  sub_1E470B56C();
  if (!*(a2 + 16) || (v34 = sub_1E4655398(v108), (v35 & 1) == 0))
  {
    sub_1E4658910(v108);
LABEL_15:

    return;
  }

  v97 = v29;
  v94 = v4;
  v95 = v5;
  v96 = v21;
  v98 = *(*(a2 + 56) + 8 * v34);
  _Block_copy(v98);
  sub_1E4658910(v108);
  v36 = sub_1E470B3DC();
  v38 = v37;
  v39 = [v104 recordType];
  v40 = sub_1E470AF1C();
  v42 = v41;

  if (v36 == v40 && v38 == v42)
  {
  }

  else
  {
    v43 = sub_1E470B84C();

    if ((v43 & 1) == 0)
    {
LABEL_14:
      _Block_release(v98);
      goto LABEL_15;
    }
  }

  v44 = v30;
  if (!MEMORY[0x1E6916100](0x7461446F746F7270, 0xE900000000000061))
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v45 = swift_dynamicCastObjCClass();
  if (!v45)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v46 = [v45 fileURL];
  if (v46)
  {
    v47 = v46;
    sub_1E4709B7C();

    v48 = v96;
    (*(v96 + 32))(v97, v24, v102);
    sub_1E4650534(&unk_1ECF747B0, &unk_1E471B820);
    v49 = sub_1E470AE2C();
    v50 = type metadata accessor for CRDTModelSyncEntity(0);
    v51 = v104;
    v105.receiver = v104;
    v105.super_class = v50;
    objc_msgSendSuper2(&v105, sel_resolveConflictsFromRecord_withResolvers_, v30, v49);

    v52 = sub_1E4709BAC();
    v69 = v68;
    MEMORY[0x1EEE9AC00](v52, v68);
    *(&v93 - 4) = v98;
    *(&v93 - 3) = v31;
    *(&v93 - 2) = v33;
    v71 = v70;
    sub_1E46552AC(v70, v72);
    v93 = v71;
    sub_1E465FB74(v71, v69, sub_1E4663E38);

    sub_1E465746C(v93, v69);
    v73 = v103;
    sub_1E465F8EC(v103);
    v74 = v30;
    v75 = v51;
    v76 = sub_1E470A0BC();
    v77 = sub_1E470B2CC();

    if (os_log_type_enabled(v76, v77))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v108[0] = v80;
      *v79 = 136315394;
      v81 = [v74 recordID];
      v82 = [v81 recordName];
      v104 = v69;
      v83 = v82;

      v84 = sub_1E470AF1C();
      v86 = v85;

      v87 = sub_1E4654D04(v84, v86, v108);

      *(v79 + 4) = v87;
      *(v79 + 12) = 2080;
      v88 = [v75 debugDescription];
      v89 = sub_1E470AF1C();
      v91 = v90;

      v92 = sub_1E4654D04(v89, v91, v108);

      *(v79 + 14) = v92;
      _os_log_impl(&dword_1E45E0000, v76, v77, "CRDTModelSyncEntity Resolving: Adopted properties from record: %s %s", v79, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v80, -1, -1);
      MEMORY[0x1E6917530](v79, -1, -1);
      _Block_release(v98);

      swift_unknownObjectRelease();
      sub_1E465746C(v93, v104);
      (*(v95 + 8))(v103, v94);
    }

    else
    {
      _Block_release(v98);

      swift_unknownObjectRelease();
      sub_1E465746C(v93, v69);
      (*(v95 + 8))(v73, v94);
    }

    (*(v48 + 8))(v97, v102);
  }

  else
  {

    v53 = sub_1E470B2AC();
    v54 = v104;
    if (qword_1EE2ADDE8 != -1)
    {
      swift_once();
    }

    v55 = qword_1EE2ADDF0;
    sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1E471B800;
    v57 = [v54 type];
    v58 = sub_1E470AF1C();
    v60 = v59;

    v61 = MEMORY[0x1E69E6158];
    *(v56 + 56) = MEMORY[0x1E69E6158];
    v62 = sub_1E4663DE4();
    *(v56 + 64) = v62;
    *(v56 + 32) = v58;
    *(v56 + 40) = v60;
    v63 = [v44 recordID];
    v64 = [v63 recordName];

    v65 = sub_1E470AF1C();
    v67 = v66;

    *(v56 + 96) = v61;
    *(v56 + 104) = v62;
    *(v56 + 72) = v65;
    *(v56 + 80) = v67;
    sub_1E470A0AC(v53, &dword_1E45E0000, v55, "CRDTModelSyncEntity %@ Resolving: Asset file URL was nil for record %@", 70, 2, v56);
    swift_unknownObjectRelease();

    _Block_release(v98);
  }
}

uint64_t sub_1E4662344(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1E470AF0C();
  v11 = a2;
  v12 = v10;
  if (v11 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_1E4709BCC();
  }

  if (a4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1E4709BCC();
  }

  v15 = (*(a5 + 16))(a5, v12, v13, v14);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v15)
  {
    sub_1E470B4BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    if (swift_dynamicCast())
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1E465E050(v20, &unk_1ECF74DD0, &qword_1E471D8C0);
    return 0;
  }
}

id CRDTModelSyncEntity.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id CRDTModelSyncEntity.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CRDTModelSyncEntity(0);
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id CRDTModelSyncEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRDTModelSyncEntity(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E4662778()
{
  v1 = [v0 type];
  v2 = sub_1E470AF1C();

  return v2;
}

uint64_t sub_1E46627D0()
{
  v1 = [v0 protoData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4709BDC();

  return v3;
}

id CRDTModelSyncEntity.mutableCopy()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CRDTModelSync();
  result = [objc_allocWithZone(v4) initWithCloudData_];
  if (result)
  {
    a1[3] = v4;
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CRDTModelSyncEntity.debugDescription.getter()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CRDTModelSyncEntity(0);
  v1 = objc_msgSendSuper2(&v7, sel_debugDescription);
  v2 = sub_1E470AF1C();

  v3 = sub_1E4663874(v0);
  v5 = v4;

  MEMORY[0x1E6915D10](v3, v5);

  return v2;
}

Swift::String __swiftcall CRDTModelSyncEntity.recordType()()
{
  v1 = [v0 type];
  v2 = sub_1E470AF1C();
  v4 = v3;

  sub_1E470B04C();
  v5 = sub_1E470AF7C();
  v7 = v6;

  v8 = sub_1E465F4D4(15, v5, v7, v2, v4);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

Swift::String_optional __swiftcall CRDTModelSyncEntity.identifier()()
{
  v1 = sub_1E4663AB8(v0);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t CRDTModelSyncEntity.zoneName()()
{
  v1 = [v0 type];
  sub_1E470AF1C();

  v2 = sub_1E470AF0C();

  return v2;
}

id sub_1E4662DA4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v6 = &v2[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData];
  *&v2[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData] = xmmword_1E471B810;
  swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (v7 && a1)
  {
    v8 = v7;
    v9 = swift_getObjectType();
    v24.receiver = v2;
    v24.super_class = ObjectType;
    v10 = objc_msgSendSuper2(&v24, sel_initWithCloudData_, a1);
    if (v10)
    {
      v11 = *(v8 + 8);
      v12 = v10;
      v13 = v10;
      v14 = v11(v9, v8);
      v15 = &v13[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type];
      *v15 = v14;
      v15[1] = v16;

      v17 = (*(v8 + 16))(v9, v8);
      v19 = v18;
      swift_unknownObjectRelease();
      v20 = &v13[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData];
      v21 = *&v13[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData];
      v22 = *&v13[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData + 8];
      *v20 = v17;
      v20[1] = v19;
      sub_1E465DDA0(v21, v22);

      return v12;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    sub_1E465DDA0(*v6, *(v6 + 1));
    swift_deallocPartialClassInstance();
  }

  return 0;
}

id sub_1E466302C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E46630B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type);

  return v1;
}

uint64_t sub_1E46630F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData);
  sub_1E465DD8C(v1, *(v0 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData + 8));
  return v1;
}

uint64_t sub_1E46633A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1E47099CC();
    if (v10)
    {
      v11 = sub_1E47099EC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1E47099DC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1E47099CC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1E47099EC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1E47099DC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1E46635D0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1E4663BC4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1E465746C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1E46633A0(v13, a3, a4, &v12);
  v10 = v4;
  sub_1E465746C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t type metadata accessor for CRDTModelSyncEntity(uint64_t a1)
{
  result = qword_1ECF74840;
  if (!qword_1ECF74840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E46637AC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1E470B05C();
  }

  __break(1u);
  return result;
}

unint64_t sub_1E46637F8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1E470B03C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1E6915D30](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1E4663874(void *a1)
{
  sub_1E470B5CC();

  v2 = [a1 type];
  v3 = sub_1E470AF1C();
  v5 = v4;

  MEMORY[0x1E6915D10](v3, v5);

  MEMORY[0x1E6915D10](0x446F746F7270202CLL, 0xED0000203A617461);
  v6 = [a1 protoData];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1E4709BDC();
    v10 = v9;

    sub_1E465746C(v8, v10);
    v11 = 0xE300000000000000;
    v12 = 7562617;
  }

  else
  {
    v11 = 0xE400000000000000;
    v12 = 1701736302;
  }

  MEMORY[0x1E6915D10](v12, v11);

  return 0x203A65707974;
}

uint64_t sub_1E46639B0(uint64_t a1)
{
  sub_1E470B5CC();

  v2 = *(a1 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type);
  v3 = *(a1 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type + 8);

  MEMORY[0x1E6915D10](v2, v3);

  MEMORY[0x1E6915D10](0x446F746F7270202CLL, 0xED0000203A617461);
  if (*(a1 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData + 8) >> 60 == 15)
  {
    v4 = 1701736302;
  }

  else
  {
    v4 = 7562617;
  }

  if (*(a1 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData + 8) >> 60 == 15)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  MEMORY[0x1E6915D10](v4, v5);

  return 0x203A65707974;
}

uint64_t sub_1E4663AB8(void *a1)
{
  v2 = [a1 type];
  v3 = sub_1E470AF1C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  v7 = [a1 type];
  v8 = sub_1E470AF1C();

  return v8;
}

uint64_t sub_1E4663B68(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type);
  v2 = *(a1 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type + 8);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  return v1;
}

uint64_t sub_1E4663BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1E47099CC();
  v11 = result;
  if (result)
  {
    result = sub_1E47099EC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1E47099DC();
  sub_1E46633A0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1E4663C7C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1E46552AC(a3, a4);
          return sub_1E46635D0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1E4663DE4()
{
  result = qword_1EE2ACD60;
  if (!qword_1EE2ACD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2ACD60);
  }

  return result;
}

void sub_1E4663EC4(uint64_t a1)
{
  sub_1E4663F6C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E4663F6C(uint64_t a1)
{
  if (!qword_1ECF74850)
  {
    sub_1E470A0DC();
    v1 = sub_1E470B47C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF74850);
    }
  }
}

unint64_t sub_1E4663FD8()
{
  result = qword_1ECF74870;
  if (!qword_1ECF74870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74870);
  }

  return result;
}

unint64_t sub_1E466402C()
{
  result = qword_1ECF74880;
  if (!qword_1ECF74880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74880);
  }

  return result;
}

unint64_t sub_1E4664080()
{
  result = qword_1ECF74890;
  if (!qword_1ECF74890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74890);
  }

  return result;
}

uint64_t sub_1E46640D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74878, &qword_1E471B980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4664144(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74878, &qword_1E471B980);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E46641B8()
{
  v0 = sub_1E4709E2C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E4709E4C();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = sub_1E4709DCC();
  sub_1E4665F64(v7, qword_1ECF748A0);
  sub_1E4665EC4(v7, qword_1ECF748A0);
  (*(v1 + 104))(v4, *MEMORY[0x1E698F528], v0);
  v8 = [objc_opt_self() sharedProvider];
  v9 = [v8 activeStoreAccount];

  sub_1E4709E3C();
  return sub_1E4709DBC();
}

uint64_t BDSBookWidgetInfoManager.fetch(adamIDs:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E4665FCC;

  return sub_1E46650BC(a1);
}

void sub_1E46643F8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v33 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v10 = v9 | (v8 << 6);
        v11 = (*(a1 + 48) + 16 * v10);
        v12 = *v11;
        v13 = v11[1];
        v14 = *(*(a1 + 56) + 8 * v10);
        v15 = swift_dynamicCastObjCProtocolConditional();
        if (v15)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v32 = v15;
      if (*(v2 + 24) <= *(v2 + 16))
      {
        v18 = *(v2 + 16);

        v19 = v14;
        sub_1E4655D84(v18 + 1, 1);
        v2 = v33;
      }

      else
      {

        v17 = v14;
      }

      sub_1E470B8FC();
      sub_1E470AFCC();
      v20 = sub_1E470B91C();
      v21 = v2 + 64;
      v22 = -1 << *(v2 + 32);
      v23 = v20 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v2 + 64 + 8 * (v23 >> 6))) == 0)
      {
        break;
      }

      v25 = __clz(__rbit64((-1 << v23) & ~*(v2 + 64 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      v26 = v32;
LABEL_24:
      *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v31 = (*(v2 + 48) + 16 * v25);
      *v31 = v12;
      v31[1] = v13;
      *(*(v2 + 56) + 8 * v25) = v26;
      ++*(v2 + 16);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v27 = 0;
    v28 = (63 - v22) >> 6;
    v26 = v32;
    while (++v24 != v28 || (v27 & 1) == 0)
    {
      v29 = v24 == v28;
      if (v24 == v28)
      {
        v24 = 0;
      }

      v27 |= v29;
      v30 = *(v21 + 8 * v24);
      if (v30 != -1)
      {
        v25 = __clz(__rbit64(~v30)) + (v24 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v16 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v16 >= v7)
      {

        return;
      }

      v6 = *(v3 + 8 * v16);
      ++v8;
      if (v6)
      {
        v8 = v16;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E46647D8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1E470B0BC();
  v3[4] = v5;
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1E46648BC;

  return sub_1E46650BC(v5);
}

uint64_t sub_1E46648BC(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_1E4709AFC();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_1E4650534(&qword_1ECF74920, &qword_1E471B9D0);
    v10 = sub_1E470AE2C();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t BDSBookWidgetInfoManager.fetch(bookAssets:audiobookAssets:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E4664B3C;

  return sub_1E4665538(a1, a2);
}

uint64_t sub_1E4664B3C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1E4664DCC(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_1E470B0BC();
  v4[4] = v6;
  v7 = sub_1E470B0BC();
  v4[5] = v7;
  v8 = a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1E4664ED4;

  return sub_1E4665538(v6, v7);
}

uint64_t sub_1E4664ED4(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_1E4709AFC();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_1E4650534(&qword_1ECF74920, &qword_1E471B9D0);
    v10 = sub_1E470AE2C();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1E46650BC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1E4709DDC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E466517C, 0, 0);
}

uint64_t sub_1E466517C()
{
  sub_1E4709DEC();
  if (qword_1ECF740B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4709DCC();
  sub_1E4665EC4(v1, qword_1ECF748A0);
  v2 = sub_1E46E5BC8(&unk_1F5E622F0);
  v0[6] = v2;
  sub_1E4665EFC(&unk_1F5E62310);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E46652BC;
  v4 = v0[5];
  v5 = v0[2];

  return MEMORY[0x1EEDF0988](v5, 0, 0, v2, 150, v4);
}

uint64_t sub_1E46652BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_1E46654B8;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_1E4665408;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E4665408()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1E46643F8(v0[9]);
  v5 = v4;

  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1E46654B8()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E4665538(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E4709DDC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46655F8, 0, 0);
}

uint64_t sub_1E46655F8()
{
  sub_1E4709DEC();
  if (qword_1ECF740B0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1E4709DCC();
  sub_1E4665EC4(v3, qword_1ECF748A0);
  v4 = sub_1E46E5BC8(&unk_1F5E62330);
  v0[7] = v4;
  sub_1E4665EFC(&unk_1F5E62350);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1E4665748;
  v6 = v0[6];

  return MEMORY[0x1EEDF0980](v1, v2, 0, 0, v4, 150, v6);
}

uint64_t sub_1E4665748(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1E4665944;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_1E4665894;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E4665894()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E46B94C0(v0[10]);
  v5 = v4;

  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1E4665944()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E46659C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1E4665FC8;

  return sub_1E4664DCC(v2, v3, v5, v4);
}

uint64_t sub_1E4665A84()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E4665FC8;

  return sub_1E46FEEC4(v2, v3, v4);
}

uint64_t sub_1E4665B44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E4665FC8;

  return sub_1E46FEFAC(a1, v4, v5, v6);
}

uint64_t sub_1E4665C10()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E4665FC8;

  return sub_1E46647D8(v2, v3, v4);
}

uint64_t sub_1E4665CC4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E4665D04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E4665DD0;

  return sub_1E46FEFAC(a1, v4, v5, v6);
}

uint64_t sub_1E4665DD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E4665EC4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1E4665EFC(uint64_t a1)
{
  v2 = sub_1E4650534(&qword_1ECF74928, &qword_1E471B9F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1E4665F64(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1E4665FD0@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 URLsForDirectory:14 inDomains:1];

  v4 = sub_1E4709B9C();
  v5 = sub_1E470B0BC();
  if (!*(v5 + 16))
  {
    goto LABEL_7;
  }

  if (!*(v5 + 16))
  {
    __break(1u);
LABEL_7:

    __break(1u);
    return result;
  }

  (*(*(v4 - 8) + 16))(a1, v5 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v4);
}

uint64_t static CRDTModelFileSyncContextStore.persistentContext(_:)(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v2 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v25 - v4;
  v6 = sub_1E4709B9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v25 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v25 - v17;
  v25 = "SBookWidgetInfoManager.swift";
  type metadata accessor for _CRDTModelContextStoreUtils();
  sub_1E4665FD0(v14);
  sub_1E4709B6C();
  v19 = *(v7 + 8);
  v19(v14, v6);
  v20 = [objc_opt_self() books];
  v21 = [v20 containerURL];

  sub_1E4709B7C();
  sub_1E4709B6C();
  v19(v10, v6);
  v22 = *(v26 + 96);
  v29[0] = *(v26 + 80);
  v29[1] = v22;
  type metadata accessor for _CRDTModelContextStore(0, v29);
  (*(v7 + 16))(v5, v14, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v23 = sub_1E46663EC(v18, v5, v27, v28);
  sub_1E465E050(v5, &qword_1ECF754C0, &unk_1E471BA10);
  v19(v14, v6);
  v19(v18, v6);
  return v23;
}

uint64_t sub_1E46663EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a2;
  v74 = *MEMORY[0x1E69E9840];
  v7 = sub_1E4709A6C();
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v63 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v60 - v15;
  v17 = sub_1E4709B9C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v62 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v60 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v60 - v27;
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v32 = *(v18 + 16);
  v69 = &v60 - v33;
  v61 = v32;
  v60 = v18 + 16;
  v32(v31);
  *&v71 = a3;
  *(&v71 + 1) = a4;

  MEMORY[0x1E6915D10](45, 0xE100000000000000);
  v34 = sub_1E466709C();
  MEMORY[0x1E6915D10](v34);

  v35 = v71;
  v70 = v28;
  sub_1E4709B6C();
  sub_1E46676CC(v65, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {

    sub_1E465E050(v16, &qword_1ECF754C0, &unk_1E471BA10);
  }

  else
  {
    (*(v18 + 32))(v24, v16, v17);
    sub_1E4667118(a1, v24, v35, *(&v35 + 1));

    (*(v18 + 8))(v24, v17);
  }

  v36 = sub_1E470B2CC();
  if (qword_1EE2ADDE8 != -1)
  {
    swift_once();
  }

  v37 = qword_1EE2ADDF0;
  v64 = sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1E471BA00;
  v39 = sub_1E4709B1C();
  v41 = v40;
  *(v38 + 56) = MEMORY[0x1E69E6158];
  v42 = sub_1E4663DE4();
  *(v38 + 64) = v42;
  *(v38 + 32) = v39;
  *(v38 + 40) = v41;
  v65 = v37;
  sub_1E470A0AC(v36, &dword_1E45E0000, v37, "CRDTModelContextStore storeDirectory = %@", 41, 2, v38);

  v43 = v66;
  sub_1E4709A5C();
  sub_1E4709A4C();
  v44 = [objc_opt_self() defaultManager];
  v45 = sub_1E4709B4C();
  *&v71 = 0;
  LODWORD(v38) = [v44 createDirectoryAtURL:v45 withIntermediateDirectories:1 attributes:0 error:&v71];

  if (v38)
  {
    v46 = v71;
    sub_1E4709B3C();
    sub_1E470AD7C();
    v47 = v70;
    (v61)(v62, v70, v17);
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    (*(v18 + 56))(v63, 1, 1, v17);
    v59 = sub_1E470AD6C();
  }

  else
  {
    v48 = v71;
    v49 = sub_1E4709B0C();

    swift_willThrow();
    v50 = sub_1E470B2AC();
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1E471B800;
    v47 = v70;
    v52 = sub_1E4709B1C();
    v53 = MEMORY[0x1E69E6158];
    *(v51 + 56) = MEMORY[0x1E69E6158];
    *(v51 + 64) = v42;
    *(v51 + 32) = v52;
    *(v51 + 40) = v54;
    swift_getErrorValue();
    v55 = sub_1E470B89C();
    *(v51 + 96) = v53;
    *(v51 + 104) = v42;
    *(v51 + 72) = v55;
    *(v51 + 80) = v56;
    sub_1E470A0AC(v50, &dword_1E45E0000, v65, "CRDTModelContextStore unable to create CRContext at %@ error=%@", 63, 2, v51);

    sub_1E470AD7C();
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    v59 = MEMORY[0x1E6915A70](0, &v71);

    sub_1E465E050(&v71, &unk_1ECF74930, &qword_1E471DB20);
  }

  (*(v67 + 8))(v43, v68);
  v57 = *(v18 + 8);
  v57(v47, v17);
  v57(v69, v17);
  return v59;
}

uint64_t static CRDTModelFileSyncContextStore.groupPersistentContext(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  v5 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v24 - v7;
  v9 = sub_1E4709B9C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v24 - v16;
  v18 = [objc_opt_self() books];
  v19 = [v18 containerURL];

  sub_1E4709B7C();
  sub_1E4709B6C();
  v20 = *(v10 + 8);
  v20(v13, v9);
  v21 = *(v3 + 96);
  v26[0] = *(v3 + 80);
  v26[1] = v21;
  type metadata accessor for _CRDTModelContextStore(0, v26);
  (*(v10 + 56))(v8, 1, 1, v9);
  v22 = sub_1E46663EC(v17, v8, a1, v25);
  sub_1E465E050(v8, &qword_1ECF754C0, &unk_1E471BA10);
  v20(v17, v9);
  return v22;
}

uint64_t static CRDTModelLocalFileContextStore.persistentContext(_:)(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v2 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v25 - v4;
  v6 = sub_1E4709B9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v25 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v25 - v17;
  v25 = "CRDTModelFileSyncContext";
  type metadata accessor for _CRDTModelContextStoreUtils();
  sub_1E4665FD0(v14);
  sub_1E4709B6C();
  v19 = *(v7 + 8);
  v19(v14, v6);
  v20 = [objc_opt_self() books];
  v21 = [v20 containerURL];

  sub_1E4709B7C();
  sub_1E4709B6C();
  v19(v10, v6);
  v22 = *(v26 + 96);
  v29[0] = *(v26 + 80);
  v29[1] = v22;
  type metadata accessor for _CRDTModelContextStore(0, v29);
  (*(v7 + 16))(v5, v14, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v23 = sub_1E46663EC(v18, v5, v27, v28);
  sub_1E465E050(v5, &qword_1ECF754C0, &unk_1E471BA10);
  v19(v14, v6);
  v19(v18, v6);
  return v23;
}

uint64_t sub_1E466709C()
{
  v2 = (*(*(v0 + 88) + 8))();

  MEMORY[0x1E6915D10](0x2E747865746E6F43, 0xEA00000000006264);

  return v2;
}

void sub_1E4667118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1E4709B9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v65 = &v59 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v59 - v15;
  sub_1E4709B6C();
  v17 = [objc_opt_self() defaultManager];
  sub_1E4709B8C();
  v18 = sub_1E470AF0C();

  v19 = [v17 fileExistsAtPath_];

  if (v19)
  {
    v60 = a1;
    v61 = v5;
    v63 = v9;
    v64 = v6;
    v62 = v17;
    v20 = sub_1E470B2CC();
    if (qword_1EE2ADDE8 != -1)
    {
      swift_once();
    }

    v21 = qword_1EE2ADDF0;
    sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
    v22 = swift_allocObject();
    v59 = xmmword_1E471BA00;
    *(v22 + 16) = xmmword_1E471BA00;
    v23 = sub_1E4709B1C();
    v25 = v24;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    v26 = sub_1E4663DE4();
    *(v22 + 64) = v26;
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    v27 = v21;
    sub_1E470A0AC(v20, &dword_1E45E0000, v21, "CRDTModelContextStore found CRContext file at legacyUrl = %{public}@", 68, 2, v22);

    v28 = v65;
    v29 = v61;
    (*(v64 + 16))(v65, v60, v61);
    v30 = v63;
    sub_1E4709B6C();
    sub_1E4709B8C();
    v31 = sub_1E470AF0C();

    v32 = v62;
    LODWORD(v23) = [v62 fileExistsAtPath_];

    if (v23)
    {
      v33 = sub_1E470B2AC();
      v34 = v27;
      v35 = swift_allocObject();
      *(v35 + 16) = v59;
      v36 = sub_1E4709B1C();
      *(v35 + 56) = MEMORY[0x1E69E6158];
      *(v35 + 64) = v26;
      *(v35 + 32) = v36;
      *(v35 + 40) = v37;
      sub_1E470A0AC(v33, &dword_1E45E0000, v34, "CRDTModelContextStore file already exists at url = %{public}@", 61, 2, v35);
    }

    else
    {
      v60 = v27;
      v38 = sub_1E4709B4C();
      v66[0] = 0;
      v39 = [v32 createDirectoryAtURL:v38 withIntermediateDirectories:1 attributes:0 error:v66];

      v40 = v66[0];
      if (v39 && (v41 = v66[0], v42 = sub_1E4709B4C(), v43 = sub_1E4709B4C(), v66[0] = 0, v44 = [v32 moveItemAtURL:v42 toURL:v43 error:v66], v42, v43, v40 = v66[0], v44))
      {
        v45 = v66[0];
        v46 = sub_1E470B2CC();
        v47 = swift_allocObject();
        *(v47 + 16) = v59;
        v48 = sub_1E4709B1C();
        *(v47 + 56) = MEMORY[0x1E69E6158];
        *(v47 + 64) = v26;
        *(v47 + 32) = v48;
        *(v47 + 40) = v49;
        sub_1E470A0AC(v46, &dword_1E45E0000, v60, "CRDTModelContextStore migrated CRContext file to %{public}@ error=%{public}@", 76, 2, v47);
      }

      else
      {
        v50 = v40;
        v51 = sub_1E4709B0C();

        swift_willThrow();
        LODWORD(v59) = sub_1E470B2AC();
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_1E471B800;
        v53 = sub_1E4709B1C();
        v54 = MEMORY[0x1E69E6158];
        *(v52 + 56) = MEMORY[0x1E69E6158];
        *(v52 + 64) = v26;
        *(v52 + 32) = v53;
        *(v52 + 40) = v55;
        swift_getErrorValue();
        v56 = sub_1E470B89C();
        *(v52 + 96) = v54;
        *(v52 + 104) = v26;
        *(v52 + 72) = v56;
        *(v52 + 80) = v57;
        sub_1E470A0AC(v59, &dword_1E45E0000, v60, "CRDTModelContextStore unable to migrate CRContext file to %{public}@ error=%{public}@", 85, 2, v52);
      }
    }

    v58 = *(v64 + 8);
    v58(v30, v29);
    v58(v28, v29);
    v58(v16, v29);
  }

  else
  {
    (*(v6 + 8))(v16, v5);
  }
}

uint64_t sub_1E46676CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MutableObservableContainer.__allocating_init(value:)(uint64_t a1)
{
  v3 = sub_1E466A1E0(a1);
  (*(*(*(v1 + 264) - 8) + 8))(a1);
  return v3;
}

void *ObservableTransaction.__allocating_init(name:transactionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1E4669EBC(a1, a2, a3, v3, ObjectType);
}

uint64_t MutableObservableContainer.mutate(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E466A21C;
  *(v8 + 24) = v7;
  v11[4] = sub_1E466A228;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E46679F4;
  v11[3] = &unk_1F5E62D38;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t ObservationToken.deinit()
{
  (*(v0 + 16))(v0);

  return v0;
}

uint64_t ObservationToken.__deallocating_deinit()
{
  (*(v0 + 16))(v0);

  return swift_deallocClassInstance();
}

uint64_t ObservableContainer.Event.currentValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1, v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(a1 + 16);
  if (EnumCaseMultiPayload != 1)
  {
    return (*(*(v10 - 8) + 32))(a2, v7, v10);
  }

  v11 = *(swift_getTupleTypeMetadata2() + 48);
  v12 = *(v10 - 8);
  (*(v12 + 32))(a2, &v7[v11], v10);
  return (*(v12 + 8))(v7, v10);
}

uint64_t sub_1E4667C60(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v23 = type metadata accessor for ObservableContainer.Event(0, v8, *(v7 + 88), a4);
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v9);
  v11 = &v23 - v10;
  v12 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v23 - v15;
  v17 = *(v7 + 120);
  swift_beginAccess();
  v18 = *(v12 + 16);
  v18(v16, &v5[v17], v8);
  v24 = a1;
  v19 = sub_1E470AEFC();
  result = (*(v12 + 8))(v16, v8);
  if ((v19 & 1) == 0)
  {
    v21 = *(swift_getTupleTypeMetadata2() + 48);
    v18(v11, v24, v8);
    v18(&v11[v21], &v5[v17], v8);
    v22 = v23;
    swift_storeEnumTagMultiPayload();
    sub_1E4668178(v11);
    return (*(v25 + 8))(v11, v22);
  }

  return result;
}

uint64_t sub_1E4667EC8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1E4667FC8(uint64_t a1, uint64_t a2)
{
  sub_1E466A268(a1, a2);

  return swift_unknownObjectRelease();
}

void (*sub_1E4668000(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E46680B0;
}

void sub_1E46680B0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ObservableContainer.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ObservableContainer.init(value:)(a1);
  return v2;
}

uint64_t sub_1E4668178(uint64_t a1)
{
  v33 = a1;
  v2 = *v1;
  v3 = sub_1E470A61C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E470A5DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1E4667F6C())
  {
    v14 = v13;
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(v1, ObjectType, v14);
    swift_unknownObjectRelease();
  }

  v32 = v1[3];
  sub_1E470A5CC();
  v38 = nullsub_60;
  v39 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1E46C4624;
  v37 = &unk_1F5E63020;
  v16 = _Block_copy(&aBlock);
  sub_1E470A5FC();
  MEMORY[0x1E69160A0](0, v7, v12, v16);
  _Block_release(v16);
  v17 = *(v4 + 8);
  v29[1] = v4 + 8;
  v31 = v17;
  v17(v7, v3);
  v18 = *(v9 + 8);
  v29[2] = v9 + 8;
  v30 = v18;
  v18(v12, v8);
  swift_beginAccess();
  v19 = v1[4];
  v21 = *(v2 + 80);
  v20 = *(v2 + 88);
  type metadata accessor for ObservableContainer.Event(255, v21, v20, v22);
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  aBlock = v19;
  MEMORY[0x1EEE9AC00](FunctionTypeMetadata1, v24);
  v29[0] = v3;
  v29[-4] = v21;
  v29[-3] = v20;
  v29[-2] = v33;
  sub_1E470AE8C();
  v33 = v8;

  swift_getWitnessTable();
  sub_1E470B08C();

  sub_1E470A5CC();
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = v21;
  v26[3] = v20;
  v26[4] = v25;
  v38 = sub_1E466ADFC;
  v39 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1E46C4624;
  v37 = &unk_1F5E63070;
  v27 = _Block_copy(&aBlock);

  sub_1E470A5FC();
  MEMORY[0x1E69160A0](0, v7, v12, v27);
  _Block_release(v27);
  v31(v7, v29[0]);
  v30(v12, v33);
}

uint64_t sub_1E466860C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (sub_1E4667F6C())
    {
      v3 = v2;
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 16);

      v5(v6, ObjectType, v3);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E46686C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1E466AE60;
  *(v10 + 24) = v9;
  v13[4] = sub_1E466AFC4;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1E46679F4;
  v13[3] = &unk_1F5E631D8;
  v11 = _Block_copy(v13);

  swift_unknownObjectRetain();

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4668844(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v53 = a3;
  v56 = a2;
  v5 = *a1;
  v6 = sub_1E470A61C();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E470A5DC();
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + 80);
  v54 = *(v5 + 88);
  v55 = v13;
  v15 = type metadata accessor for ObservableContainer.Event(0, v13, v54, v14);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v19 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v45 - v22;
  sub_1E4667EC8(&v45 - v22);
  swift_storeEnumTagMultiPayload();
  if (sub_1E4667F6C())
  {
    v25 = v24;
    ObjectType = swift_getObjectType();
    (*(v25 + 8))(a1, ObjectType, v25);
    swift_unknownObjectRelease();
  }

  sub_1E470A5CC();
  v27 = swift_allocObject();
  swift_weakInit();
  (*(v16 + 16))(v19, v23, v15);
  v28 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v46 = v23;
  v29 = (v17 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = v54;
  v30[2] = v55;
  v30[3] = v31;
  v32 = v15;
  v33 = v53;
  v30[4] = v56;
  v30[5] = v33;
  v34 = v30 + v28;
  v35 = v32;
  (*(v16 + 32))(v34, v19);
  *(v30 + v29) = v27;
  aBlock[4] = sub_1E466AE6C;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E63228;
  v36 = _Block_copy(aBlock);

  v37 = v49;
  sub_1E470A5FC();
  MEMORY[0x1E69160A0](0, v37, v12, v36);
  _Block_release(v36);
  (*(v50 + 8))(v37, v51);
  (*(v47 + 8))(v12, v48);

  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  v40 = v52;
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  v42 = v54;
  v41[2] = v55;
  v41[3] = v42;
  v41[4] = v38;
  v41[5] = v39;
  v43 = v56;
  v41[6] = v40;
  v41[7] = v43;
  v41[8] = v33;
  v58 = sub_1E466AF20;
  v59 = v41;
  v57 = v40;
  swift_beginAccess();
  swift_getFunctionTypeMetadata1();
  sub_1E470AE9C();

  sub_1E470AEAC();
  swift_endAccess();
  (*(v16 + 8))(v46, v35);
}

uint64_t sub_1E4668D7C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1(a3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (sub_1E4667F6C())
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 16);

      v8(v9, ObjectType, v6);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E4668E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a5;
  v42 = a6;
  v39 = a4;
  v40 = a1;
  v10 = sub_1E470A5DC();
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E470A61C();
  v43 = *(v14 - 8);
  v44 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ObservableContainer.Event(0, a7, a8, v18);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v39 - v22;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v39 = *(v25 + 24);
      (*(v20 + 16))(v23, v40, v19);
      v26 = *(v20 + 80);
      v40 = v25;
      v27 = (v26 + 48) & ~v26;
      v28 = swift_allocObject();
      *(v28 + 2) = a7;
      *(v28 + 3) = a8;
      v29 = v42;
      *(v28 + 4) = v41;
      *(v28 + 5) = v29;
      (*(v20 + 32))(&v28[v27], v23, v19);
      aBlock[4] = sub_1E466AF34;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E46C4624;
      aBlock[3] = &unk_1F5E632C8;
      v30 = _Block_copy(aBlock);

      sub_1E470A5FC();
      v48 = MEMORY[0x1E69E7CC0];
      sub_1E45E2E30(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
      sub_1E45E2EC0(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
      v31 = v46;
      sub_1E470B4CC();
      MEMORY[0x1E69160A0](0, v17, v13, v30);
      _Block_release(v30);
      (*(v45 + 8))(v13, v31);
      (*(v43 + 8))(v17, v44);
    }

    else
    {
      v32 = sub_1E470B2CC();
      sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1E471BA00;
      v34 = v39;
      aBlock[0] = v39;
      v35 = sub_1E470AF6C();
      v37 = v36;
      *(v33 + 56) = MEMORY[0x1E69E6158];
      *(v33 + 64) = sub_1E4663DE4();
      *(v33 + 32) = v35;
      *(v33 + 40) = v37;
      sub_1E45E2DE8(0, &qword_1EE2ACCB8, 0x1E69E9BF8);
      v38 = sub_1E470B45C();
      sub_1E470A0AC(v32, &dword_1E45E0000, v38, "Observer with oid=%@ is gone", 28, 2, v33);

      aBlock[6] = v34;
      swift_beginAccess();
      swift_getFunctionTypeMetadata1();
      sub_1E470AE9C();
      sub_1E470AE5C();
      swift_endAccess();

      return sub_1E45EB5D8(v48, v49);
    }
  }

  return result;
}

uint64_t sub_1E46693B0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = *(v5 + 80);
  v7[3] = *(v5 + 88);
  v7[4] = v6;
  type metadata accessor for ObservationToken();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E466A2D8;
  *(v8 + 24) = v7;

  sub_1E46686C8(v9, a1, a2);

  return v8;
}

uint64_t sub_1E4669498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    type metadata accessor for ObservableContainer.Event(255, a3, a4, v7);
    swift_getFunctionTypeMetadata1();
    sub_1E470AE9C();
    sub_1E470AE5C();
    swift_endAccess();

    return sub_1E45EB5D8(v8, v9);
  }

  return result;
}

uint64_t sub_1E4669588(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1E466A308;
  *(v5 + 24) = v4;
  v8[4] = sub_1E466AFC4;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1E46679F4;
  v8[3] = &unk_1F5E62E00;
  v6 = _Block_copy(v8);
  swift_unknownObjectRetain();

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E46696F0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  type metadata accessor for ObservableContainer.Event(255, *(v2 + 80), *(v2 + 88), v3);
  swift_getFunctionTypeMetadata1();
  sub_1E470AE9C();
  sub_1E470AE5C();
  swift_endAccess();
  return sub_1E45EB5D8(v5, v6);
}

id *ObservableContainer.deinit()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 15));
  sub_1E466A310(v0 + *(*v0 + 16));
  return v0;
}

uint64_t sub_1E46698A0(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 264);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v13 - v7;
  v10 = *(v9 + 120);
  swift_beginAccess();
  (*(v6 + 16))(v8, a3 + v10, v5);
  a1(v8);
  sub_1E466A4A4(v8, v11);
  return (*(v6 + 8))(v8, v5);
}

uint64_t _s13BookDataStore19ObservableContainerCfD_0()
{
  ObservableContainer.deinit();

  return swift_deallocClassInstance();
}

void *ObservableTransaction.init(name:transactionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return sub_1E4669F28(a1, a2, a3, v3);
}

void sub_1E4669A9C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!*(a1 + 32))
  {
    v6 = [*(a1 + 48) createTransactionWithName_];

    v7 = *(a1 + 32);
    *(a1 + 32) = v6;

    oslog = sub_1E470A0BC();
    v8 = sub_1E470B28C();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1E4654D04(a2, a3, &v12);
      _os_log_impl(&dword_1E45E0000, oslog, v8, "[Transaction]: Created transaction %s", v9, 0xCu);
      sub_1E4658A0C(v10);
      MEMORY[0x1E6917530](v10, -1, -1);
      MEMORY[0x1E6917530](v9, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1E4669C30(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  *(a1 + 32) = 0;

  oslog = sub_1E470A0BC();
  v6 = sub_1E470B28C();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1E4654D04(a2, a3, &v10);
    _os_log_impl(&dword_1E45E0000, oslog, v6, "[Transaction]: Ended transaction %s", v7, 0xCu);
    sub_1E4658A0C(v8);
    MEMORY[0x1E6917530](v8, -1, -1);
    MEMORY[0x1E6917530](v7, -1, -1);
  }
}

uint64_t ObservableTransaction.deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC13BookDataStore21ObservableTransaction_logger;
  v2 = sub_1E470A0DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ObservableTransaction.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC13BookDataStore21ObservableTransaction_logger;
  v2 = sub_1E470A0DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1E4669EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ObservableTransaction(0);
  v8 = swift_allocObject();

  return sub_1E4669F28(a1, a2, a3, v8);
}

void *sub_1E4669F28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = a2;
  v19 = a3;
  v17 = a1;
  v5 = sub_1E470B33C();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = sub_1E470A61C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1E470B35C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4[4] = 0;
  v16[1] = sub_1E45E2DE8(0, &qword_1EE2ACCD0, 0x1E69E9610);
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8098], v9);
  sub_1E470A5FC();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1E45E2E30(&unk_1EE2ACCE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  sub_1E45E2EC0(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0);
  sub_1E470B4CC();
  a4[5] = sub_1E470B39C();
  sub_1E470A0CC();
  v14 = v18;
  a4[2] = v17;
  a4[3] = v14;
  a4[6] = v19;
  return a4;
}

uint64_t sub_1E466A250(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E466A268(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(*v2 + 128);
  swift_beginAccess();
  *(v4 + 8) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E466A338()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E466AE54;
  *(v6 + 24) = v5;
  v9[4] = sub_1E466AFC4;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1E46679F4;
  v9[3] = &unk_1F5E63160;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E466A4A4(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v14[-v6];
  v9 = *(v8 + 120);
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v9, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v9, a1, v4);
  swift_endAccess();
  sub_1E4667C60(v7, v10, v11, v12);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E466A600()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E466AE08;
  *(v6 + 24) = v5;
  v9[4] = sub_1E466AFC4;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1E46679F4;
  v9[3] = &unk_1F5E630E8;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E466A900(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + *(v3 + 80)) & ~*(v3 + 80)) + v4;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_25:
      v12 = *(a1 + v5);
      if (v12 >= 2)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 255;
}

void sub_1E466AA50(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + *(v5 + 80)) & ~*(v5 + 80)) + v6;
  if (v7 > v6)
  {
    v6 = v7;
  }

  v8 = v6 + 1;
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 254) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v8 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v6 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v6] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t type metadata accessor for ObservableTransaction(uint64_t a1)
{
  result = qword_1EE2AD748;
  if (!qword_1EE2AD748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E466AC94(uint64_t a1)
{
  result = sub_1E470A0DC();
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

uint64_t sub_1E466AE14()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E466AE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for ObservableContainer.Event(0, v4[2], v4[3], a4) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(v4 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E4668D7C(v7, v8, v4 + v6, v9);
}

double CRDTModelFileSyncInfo.additionalFields.getter(uint64_t a1)
{
  sub_1E46705F0(a1);

  return result;
}

uint64_t CRDTModelFileSyncInfo.additionalFields.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);

  *(v2 + v4) = a1;
  return result;
}

uint64_t CRDTModelFileSyncInfo.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1E470AA9C();
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  result = type metadata accessor for CRDTModelFileSyncInfo(0, v11);
  *(a5 + *(result + 52)) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t CRDTModelFileSyncInfo.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1E470AA9C();
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  *(a6 + *(type metadata accessor for CRDTModelFileSyncInfo(0, v13) + 52)) = MEMORY[0x1E69E7CC8];
  return (*(*(a2 - 8) + 40))(a6, a1, a2);
}

uint64_t sub_1E466B20C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF4618](a1, WitnessTable);
}

double sub_1E466B260(uint64_t a1)
{
  sub_1E46705F0(a1);

  return result;
}

uint64_t (*sub_1E466B28C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = CRDTModelFileSyncInfo.additionalFields.modify();
  return sub_1E466B304;
}

void sub_1E466B304(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1E466B35C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF5248](a1, WitnessTable);
}

uint64_t sub_1E466B3B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF4600](a1, a2, WitnessTable);
}

uint64_t sub_1E466B410(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF45A8](a1, a2, WitnessTable);
}

uint64_t sub_1E466B478(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF45D0](a1, a2, WitnessTable);
}

uint64_t sub_1E466B4D8(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_1E470A77C();
}

uint64_t sub_1E466B538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF45D8](a1, a2, a3, WitnessTable);
}

uint64_t sub_1E466B5B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF4608](a1, a2, WitnessTable);
}

uint64_t sub_1E466B614(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF45E0](a1, a2, WitnessTable);
}

uint64_t sub_1E466B674(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF45C0](a1, a2, WitnessTable);
}

uint64_t sub_1E466B6DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF45B8](a1, a2, WitnessTable);
}

uint64_t sub_1E466B744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF45A0](a1, a2, a3, WitnessTable);
}

uint64_t sub_1E466B7C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF4588](a1, a2, WitnessTable);
}

uint64_t sub_1E466B820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF45B0](a1, WitnessTable);
}

uint64_t sub_1E466B874(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF4590](a1, a2, WitnessTable);
}

uint64_t sub_1E466B8D4(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_1E470A72C();
}

void sub_1E466B93C(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  JUMPOUT(0x1E6915450);
}

uint64_t sub_1E466BA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF5200](a1, a2, a3, WitnessTable);
}

uint64_t sub_1E466BBA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF4598](a1, WitnessTable);
}

uint64_t static CRDTModelFileSyncInfo.modelName.getter(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 8))();
  MEMORY[0x1E6915D10](0x666E49636E79532DLL, 0xE90000000000006FLL);
  return v3;
}

id CRDTModelFileSyncManager.DefaultConfig.crdtContext.getter()
{
  v0 = sub_1E4670614();

  return v0;
}

uint64_t CRDTModelFileSyncManager.DefaultConfig.storeDirectory.getter()
{
  v0 = sub_1E4709B9C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() books];
  v6 = [v5 containerURL];

  sub_1E4709B7C();
  sub_1E4709B6C();

  return (*(v1 + 8))(v4, v0);
}

id sub_1E466BE50()
{
  v0 = sub_1E4670614();

  return v0;
}

uint64_t CRDTModelFileSyncManager.SyncError.hashValue.getter()
{
  v1 = *v0;
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v1);
  return sub_1E470B91C();
}

uint64_t sub_1E466BF2C(uint64_t a1)
{
  sub_1E470B8FC();
  CRDTModelFileSyncManager.SyncError.hash(into:)();
  return sub_1E470B91C();
}

uint64_t CRDTModelFileSyncManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CRDTModelFileSyncManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1E466C098;
}

void sub_1E466C098(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1E466C11C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for ModelState(0, v3, *(*v1 + 96), *(*v1 + 104));
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - v7;

  MutableObservableContainer.value.getter();

  (*(*(v3 - 8) + 16))(a1, v8, v3);
  return (*(v5 + 8))(v8, v4);
}

BOOL sub_1E466C270()
{
  v1 = type metadata accessor for ModelState(0, *(*v0 + 80), *(*v0 + 96), *(*v0 + 104));
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v8 - v4;

  MutableObservableContainer.value.getter();

  v6 = v5[*(v1 + 44)];
  (*(v2 + 8))(v5, v1);
  v10 = v6;
  v9 = 1;
  return static ModelState.LoadedState.== infix(_:_:)(&v10, &v9);
}

uint64_t CRDTModelFileSyncManager.observable.getter()
{
  v1 = type metadata accessor for ModelState(255, *(*v0 + 80), *(*v0 + 96), *(*v0 + 104));
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer(0, v1, WitnessTable, v3);
  sub_1E470B37C();
  return v5;
}

uint64_t sub_1E466C50C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 80);
  v4 = type metadata accessor for ModelState(0, v3, *(*a1 + 96), *(*a1 + 104));
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - v7;

  MutableObservableContainer.value.getter();

  (*(*(v3 - 8) + 16))(a2, v8, v3);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1E466C6DC()
{
  type metadata accessor for CRDTModelSyncVersion(0);

  sub_1E470B37C();
}

uint64_t CRDTModelFileSyncManager.modelSyncVersionObservable.getter()
{
  sub_1E4650534(&qword_1ECF74950, &qword_1E471BCD0);
  sub_1E470B37C();
  return v1;
}

uint64_t (*CRDTModelFileSyncManager.disableReadingInBackground.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1E4698540() & 1;
  return sub_1E466C86C;
}

uint64_t CRDTModelFileSyncManager.enableCloudSync.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

void *CRDTModelFileSyncManager.__allocating_init(clientName:groupContext:transactionProvider:delegate:)(uint64_t a1, uint64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = v7[10];
  v12 = v7[11];
  v14 = v7[12];
  v13 = v7[13];
  v27 = v11;
  v28 = v12;
  v29 = v14;
  v30 = v13;
  if (a3)
  {
    v15 = type metadata accessor for CRDTModelFileSyncInfo(255, &v27);
    WitnessTable = swift_getWitnessTable();
    v17 = swift_getWitnessTable();
    v27 = v15;
    v28 = &protocol witness table for CRDTModelFileSyncInfo<A>;
    v29 = WitnessTable;
    v30 = v17;
    type metadata accessor for CRDTModelFileSyncContextStore(0, &v27);
    v18 = static CRDTModelFileSyncContextStore.groupPersistentContext(_:)(a1, a2);
  }

  else
  {
    v19 = type metadata accessor for CRDTModelFileSyncInfo(255, &v27);
    v20 = swift_getWitnessTable();
    v21 = swift_getWitnessTable();
    v27 = v19;
    v28 = &protocol witness table for CRDTModelFileSyncInfo<A>;
    v29 = v20;
    v30 = v21;
    type metadata accessor for CRDTModelFileSyncContextStore(0, &v27);
    v18 = static CRDTModelFileSyncContextStore.persistentContext(_:)(a1, a2);
  }

  v22 = v18;

  v27 = v11;
  v28 = v12;
  v29 = v14;
  v30 = v13;
  v30 = type metadata accessor for CRDTModelFileSyncManager.DefaultConfig(0, &v27);
  v31 = &protocol witness table for CRDTModelFileSyncManager<A>.DefaultConfig;
  v27 = v22;
  swift_allocObject();
  v23 = sub_1E46706AC(&v27, a4, a5, a6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v23;
}

uint64_t sub_1E466CB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v5 = a5(a1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1E466CBC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E466CC24(a1);
  }

  return result;
}

uint64_t sub_1E466CC24(uint64_t a1)
{
  v3 = sub_1E470A5DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E470A5CC();
  v10 = v1;
  v11 = a1;
  sub_1E470B36C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1E466CD30(void (*a1)(char *, uint64_t))
{
  v2 = v1;
  v3 = *v1;
  v162 = a1;
  v163 = v3;
  v4 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v153 = &v130 - v6;
  v7 = *(v3 + 80);
  v159 = *(v3 + 96);
  v8 = v159;
  v9 = type metadata accessor for ModelState(0, v7, v159, *(&v159 + 1));
  v154 = *(v9 - 8);
  v155 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v152 = &v130 - v11;
  v151 = v8;
  v147 = type metadata accessor for ModelState.Source(0, v7, v8, *(&v8 + 1));
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147, v12);
  v150 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v145 = &v130 - v16;
  v160 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v149 = &v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v157 = &v130 - v22;
  v143 = sub_1E470AA2C();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143, v23);
  v140 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = v7;
  *&v25 = v7;
  *(&v25 + 1) = *(v3 + 88);
  v165[1] = v159;
  v165[0] = v25;
  v26 = type metadata accessor for CRDTModelFileSyncInfo(255, v165);
  swift_getWitnessTable();
  v27 = sub_1E470ACBC();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v130 - v30;
  v32 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v33, v34);
  v136 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v133 = (&v130 - v38);
  MEMORY[0x1EEE9AC00](v39, v40);
  v139 = &v130 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v134 = &v130 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v130 - v47;
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v130 - v51;
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v130 - v55;
  v57 = *(v163 + 192);
  swift_beginAccess();
  v58 = *(v28 + 16);
  v156 = v57;
  v138 = v28 + 16;
  v137 = v58;
  v58(v31, v57 + v2, v27);
  sub_1E470AC8C();
  v59 = *(v28 + 8);
  v141 = v31;
  v144 = v28 + 8;
  v59(v31, v27);
  sub_1E470AC8C();
  v158 = sub_1E466C270();
  swift_getWitnessTable();
  v60 = sub_1E470A77C();
  v163 = v32;
  v61 = *(v32 + 16);
  if (v60)
  {
    *&v159 = v52;
    v61(v48, v52, v26);
    v62 = v134;
    v148 = v56;
    v61(v134, v56, v26);
    v63 = sub_1E470A0BC();
    v64 = sub_1E470B2CC();
    v65 = os_log_type_enabled(v63, v64);
    v132 = v59;
    v135 = v26;
    if (v65)
    {
      v66 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v164 = v136;
      *v66 = 136315394;
      v162 = *(v26 + 16);
      v130 = *(v26 + 40);
      v133 = v63;
      v67 = sub_1E470B81C();
      v131 = v64;
      v69 = v68;
      v70 = *(v163 + 8);
      v70(v48, v26);
      v71 = sub_1E4654D04(v67, v69, &v164);

      *(v66 + 4) = v71;
      *(v66 + 12) = 2080;
      v72 = sub_1E470B81C();
      v74 = v73;
      v162 = v70;
      v70(v62, v26);
      v75 = sub_1E4654D04(v72, v74, &v164);

      *(v66 + 14) = v75;
      v76 = v133;
      _os_log_impl(&dword_1E45E0000, v133, v131, "CRDTModelFileSyncManager q_handle -- incoming=%s and existing=%s", v66, 0x16u);
      v77 = v136;
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v77, -1, -1);
      MEMORY[0x1E6917530](v66, -1, -1);
    }

    else
    {

      v100 = *(v163 + 8);
      v100(v62, v26);
      v162 = v100;
      v78 = (v100)(v48, v26);
    }

    v101 = v160;
    v102 = v157;
    MEMORY[0x1EEE9AC00](v78, v79);
    v103 = v159;
    *(&v130 - 2) = v159;
    swift_beginAccess();
    v104 = v140;
    v105 = v143;
    sub_1E470AC9C();
    swift_endAccess();
    (*(v142 + 8))(v104, v105);
    v106 = v101;
    v107 = *(v101 + 16);
    v108 = v161;
    v107(v102, v103, v161);
    if (sub_1E466C270())
    {
      v109 = v145;
      v107(v145, v102, v108);
      v110 = 0;
    }

    else
    {
      v110 = 2;
      v109 = v145;
    }

    (*(v106 + 56))(v109, v110, 2, v108);
    v119 = v141;
    v137(v141, &v156[v2], v27);
    v120 = v139;
    sub_1E470AC8C();
    v132(v119, v27);
    v121 = v149;
    v107(v149, v120, v108);
    v162(v120, v135);
    LOBYTE(v164) = 1;
    v122 = v146;
    v123 = v150;
    v124 = v147;
    (*(v146 + 16))(v150, v109, v147);
    v125 = type metadata accessor for CRDTModelRevisionInfo(0);
    v126 = v153;
    (*(*(v125 - 8) + 56))(v153, 1, 1, v125);
    v127 = v152;
    ModelState.init(model:loaded:source:revisionInfo:)(v121, &v164, v123, v126, v108, v151, *(&v151 + 1), v152);
    sub_1E466DC98(v127, 0x656C646E61685F71, 0xE800000000000000);
    (*(v154 + 8))(v127, v155);
    sub_1E466E0D0();
    (*(v122 + 8))(v109, v124);
    (*(v106 + 8))(v157, v108);
    if (v158)
    {
      v56 = v148;
      v92 = v162;
      v52 = v159;
      v26 = v135;
      goto LABEL_20;
    }

    v128 = sub_1E466C270();
    v56 = v148;
    v92 = v162;
    v52 = v159;
    v26 = v135;
    if (!v128)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1E466FD30();
    goto LABEL_20;
  }

  v80 = v133;
  v61(v133, v52, v26);
  v81 = v136;
  v61(v136, v56, v26);
  v82 = sub_1E470A0BC();
  v83 = sub_1E470B2CC();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v148 = v56;
    v85 = v84;
    v157 = swift_slowAlloc();
    v164 = v157;
    *v85 = 136315394;
    *&v159 = v52;
    v156 = v82;
    v86 = sub_1E470B81C();
    v88 = v87;
    LODWORD(v147) = v83;
    v89 = v80;
    v90 = *(v163 + 8);
    v90(v89, v26);
    v91 = sub_1E4654D04(v86, v88, &v164);

    *(v85 + 4) = v91;
    *(v85 + 12) = 2080;
    v92 = v90;
    v52 = v159;
    v93 = sub_1E470B81C();
    v95 = v94;
    v90(v81, v26);
    v96 = sub_1E4654D04(v93, v95, &v164);

    *(v85 + 14) = v96;
    v97 = v156;
    _os_log_impl(&dword_1E45E0000, v156, v147, "CRDTModelFileSyncManager q_handle -- no delta, incoming=%s and existing=%s", v85, 0x16u);
    v98 = v157;
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v98, -1, -1);
    v99 = v85;
    v56 = v148;
    MEMORY[0x1E6917530](v99, -1, -1);
  }

  else
  {

    v92 = *(v163 + 8);
    v92(v81, v26);
    v92(v80, v26);
  }

  v111 = sub_1E466C270();
  v113 = v160;
  v112 = v161;
  if (!v111)
  {
    v114 = v149;
    sub_1E466C11C(v149);
    LOBYTE(v164) = 1;
    v115 = v150;
    (*(v113 + 56))(v150, 2, 2, v112);
    v116 = type metadata accessor for CRDTModelRevisionInfo(0);
    v117 = v153;
    (*(*(v116 - 8) + 56))(v153, 1, 1, v116);
    v118 = v152;
    ModelState.init(model:loaded:source:revisionInfo:)(v114, &v164, v115, v117, v112, v151, *(&v151 + 1), v152);
    sub_1E466DC98(v118, 0xD000000000000012, 0x80000001E47185F0);
    (*(v154 + 8))(v118, v155);
  }

  sub_1E466DFC8(v162);
  if (!v158 && sub_1E466C270())
  {
    goto LABEL_19;
  }

LABEL_20:
  v92(v56, v26);
  return (v92)(v52, v26);
}

uint64_t sub_1E466DC98(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v31 = a2;
  v35 = *v3;
  v6 = v35[10];
  v7 = v35[13];
  v33 = v35[12];
  v34 = v6;
  v32 = v7;
  v8 = type metadata accessor for ModelState(0, v6, v33, v7);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v29 - v12;
  (*(v9 + 16))(&v29 - v12, a1, v8, v11);

  v14 = sub_1E470A0BC();
  v15 = sub_1E470B2CC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = a1;
    v18 = v17;
    v36 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_1E4654D04(v31, a3, &v36);
    *(v16 + 12) = 2080;
    v19 = ModelState.description.getter(v8);
    v21 = v20;
    (*(v9 + 8))(v13, v8);
    v22 = sub_1E4654D04(v19, v21, &v36);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_1E45E0000, v14, v15, "CRDTModelFileSyncManager q_updateState (%s) -- newState=%s", v16, 0x16u);
    swift_arrayDestroy();
    v23 = v18;
    a1 = v30;
    MEMORY[0x1E6917530](v23, -1, -1);
    MEMORY[0x1E6917530](v16, -1, -1);
  }

  else
  {

    v24 = (*(v9 + 8))(v13, v8);
  }

  MEMORY[0x1EEE9AC00](v24, v25);
  v26 = v35[11];
  *(&v29 - 6) = v34;
  *(&v29 - 5) = v26;
  v27 = v32;
  *(&v29 - 4) = v33;
  *(&v29 - 3) = v27;
  *(&v29 - 2) = a1;

  MutableObservableContainer.mutate(_:)(sub_1E4672268, (&v29 - 8));
}

uint64_t sub_1E466DFC8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  swift_beginAccess();
  v5 = *(v3 + 96);
  v8[0] = *(v3 + 80);
  v8[1] = v5;
  type metadata accessor for CRDTModelFileSyncInfo(255, v8);
  swift_getWitnessTable();
  v6 = sub_1E470ACBC();
  (*(*(v6 - 8) + 24))(v1 + v4, a1, v6);
  swift_endAccess();
  return sub_1E466E0D0();
}

uint64_t sub_1E466E0D0()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  v3 = *(v2 + 96);
  v10 = *(v2 + 80);
  v11 = v3;
  type metadata accessor for CRDTModelFileSyncInfo(255, &v10);
  swift_getWitnessTable();
  sub_1E470ACBC();
  sub_1E470AC6C();
  swift_endAccess();
  v4 = v0[5];
  v5 = *(v4 + 16);
  v6 = swift_allocObject();
  v6[2] = sub_1E467223C;
  v6[3] = v1;
  v6[4] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1E4672244;
  *(v7 + 24) = v6;
  v12 = sub_1E465DE98;
  v13 = v7;
  *&v10 = MEMORY[0x1E69E9820];
  *(&v10 + 1) = 1107296256;
  *&v11 = sub_1E46679F4;
  *(&v11 + 1) = &unk_1F5E63568;
  v8 = _Block_copy(&v10);
  swift_retain_n();

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E466E2FC(void *a1, char *a2)
{
  v4 = *(*a2 + 96);
  v14[0] = *(*a2 + 80);
  v14[1] = v4;
  type metadata accessor for CRDTModelFileSyncInfo(255, v14);
  swift_getWitnessTable();
  v5 = sub_1E470ACBC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v14 - v8;
  sub_1E46721E0(a1);
  v10 = *(a2 + 12);
  v11 = *(*a2 + 192);
  swift_beginAccess();
  (*(v6 + 16))(v9, &a2[v11], v5);
  type metadata accessor for CRDTModelSyncVersion(0);
  v12 = v10;
  sub_1E470ACAC();
  result = (*(v6 + 8))(v9, v5);
  *a1 = v12;
  return result;
}

uint64_t CRDTModelFileSyncManager.sync(_:isRemote:)(uint64_t a1, char a2)
{
  v5 = sub_1E470A5DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E470A5CC();
  v12 = v2;
  v13 = a1;
  v14 = a2;
  sub_1E470B36C();
  return (*(v6 + 8))(v9, v5);
}

void sub_1E466E5EC(void *a1, int a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v159 = a3;
  v160 = a4;
  v153 = a2;
  v169 = a1;
  v6 = *v4;
  v7 = *(*v4 + 10);
  v166 = *(*v4 + 6);
  v8 = v166;
  v143 = type metadata accessor for ModelState(0, v7, v166, *(&v166 + 1));
  v138 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143, v9);
  v142 = &v128 - v10;
  v155 = *(&v166 + 1);
  v137 = type metadata accessor for ModelState.Source(0, v7, v166, *(&v166 + 1));
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137, v11);
  v141 = &v128 - v12;
  v150 = sub_1E470AB3C();
  v149 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150, v13);
  v148 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1E470AA2C();
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146, v15);
  v144 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v6[11];
  *&v167 = v7;
  *(&v167 + 1) = v17;
  v165 = v17;
  v168 = v166;
  v18 = type metadata accessor for CRDTModelFileSyncInfo(0, &v167);
  v152 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v140 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v157 = &v128 - v23;
  swift_getWitnessTable();
  v154 = v18;
  v164 = sub_1E470ACBC();
  v156 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164, v24);
  v135 = &v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v163 = &v128 - v28;
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = (&v128 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = (&v128 - v36);
  v40 = MEMORY[0x1EEE9AC00](v38, v39);
  v42 = (&v128 - v41);
  v158 = [v4[8] createTransactionWithName_];
  sub_1E466C11C(v42);
  v147 = v8;
  v43 = v169;
  LOBYTE(v18) = sub_1E470AB9C();
  v161 = *(v29 + 8);
  v162 = v29 + 8;
  v161(v42, v7);
  v44 = *(*v4 + 25);
  v134 = v29;
  v47 = *(v29 + 16);
  v46 = v29 + 16;
  v45 = v47;
  if (v18)
  {
    v139 = v45;
    v45(v37, v43, v7);

    v132 = v44;
    v48 = sub_1E470A0BC();
    v49 = sub_1E470B2CC();

    v50 = os_log_type_enabled(v48, v49);
    v133 = v46;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *&v167 = v131;
      *v51 = 67109634;
      *(v51 + 4) = v153 & 1;
      *(v51 + 8) = 2080;
      LODWORD(v130) = v49;
      v52 = v155;
      v53 = sub_1E470B81C();
      v55 = v54;
      v129 = v48;
      v56 = v161;
      v161(v37, v7);
      v57 = sub_1E4654D04(v53, v55, &v167);

      *(v51 + 10) = v57;
      *(v51 + 18) = 2080;
      sub_1E466C11C(v42);
      v58 = sub_1E470B81C();
      v60 = v59;
      v56(v42, v7);
      v61 = sub_1E4654D04(v58, v60, &v167);
      v62 = v52;

      *(v51 + 20) = v61;
      v63 = v129;
      _os_log_impl(&dword_1E45E0000, v129, v130, "CRDTModelFileSyncManager q_sync: isRemote=%{BOOL}d, incoming=%s and existing=%s", v51, 0x1Cu);
      v64 = v131;
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v64, -1, -1);
      MEMORY[0x1E6917530](v51, -1, -1);
    }

    else
    {

      v161(v37, v7);
      v62 = v155;
    }

    v80 = v42;
    v81 = v5 + *(*v5 + 24);
    swift_beginAccess();
    v83 = (v156 + 16);
    v82 = *(v156 + 16);
    v131 = v81;
    v130 = v82;
    v82(v163, v81, v164);
    v139(v80, v169, v7);
    v84 = v157;
    v129 = v80;
    v155 = v7;
    v85 = CRDTModelFileSyncInfo.init(model:)(v80, v7, v165, v147, v62, v157);
    MEMORY[0x1EEE9AC00](v85, v86);
    *(&v128 - 2) = v84;
    v87 = v144;
    v88 = v146;
    v89 = v151;
    sub_1E470AC9C();
    (*(v145 + 8))(v87, v88);
    v90 = v149;
    v91 = v148;
    v92 = v150;
    (*(v149 + 104))(v148, *MEMORY[0x1E6995288], v150);
    v93 = sub_1E470AC5C();
    if (v89)
    {

      (*(v90 + 8))(v91, v92);
      v95 = sub_1E470A0BC();
      v96 = sub_1E470B2AC();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        *&v167 = v169;
        *v97 = 136315138;
        v98 = v163;
        swift_beginAccess();
        v99 = v140;
        v100 = v164;
        LODWORD(v162) = v96;
        sub_1E470AC8C();
        v101 = v154;
        v102 = sub_1E470B81C();
        v104 = v103;
        v105 = v152;
        (*(v152 + 8))(v99, v101);
        v106 = sub_1E4654D04(v102, v104, &v167);

        *(v97 + 4) = v106;
        _os_log_impl(&dword_1E45E0000, v95, v162, "CRDTModelFileSyncManager q_sync: couldn't serialize model to sync: %s", v97, 0xCu);
        v107 = v169;
        sub_1E4658A0C(v169);
        MEMORY[0x1E6917530](v107, -1, -1);
        MEMORY[0x1E6917530](v97, -1, -1);
      }

      else
      {

        v101 = v154;
        v105 = v152;
        v98 = v163;
        v100 = v164;
      }

      v112 = v155;
      v159();
      *&v113 = v112;
      *(&v113 + 1) = v165;
      v168 = v166;
      v167 = v113;
      type metadata accessor for CRDTModelFileSyncManager.SyncError(0, &v167);
      swift_getWitnessTable();
      swift_allocError();
      *v114 = 1;
      swift_willThrow();

      (*(v105 + 8))(v157, v101);
      (*(v156 + 8))(v98, v100);
    }

    else
    {
      v151 = v83;
      v165 = v93;
      *&v166 = v94;
      (*(v90 + 8))(v91, v92);
      if (v153)
      {
        v109 = v141;
        v110 = v155;
        v139(v141, v169, v155);
        v111 = 0;
      }

      else
      {
        v111 = 1;
        v109 = v141;
        v110 = v155;
      }

      v115 = v129;
      (*(v134 + 56))(v109, v111, 2, v110);

      MutableObservableContainer.value.getter();

      v116 = v140;
      v117 = v163;
      sub_1E470AC8C();
      v139(v115, v116, v110);
      v169 = *(v152 + 8);
      (v169)(v116, v154);
      v118 = v109;
      v119 = v142;
      ModelState.updating(model:source:)(v115, v118, v143);
      v161(v115, v110);
      sub_1E466DC98(v119, 0x636E79735F71, 0xE600000000000000);
      sub_1E466DFC8(v117);
      v120 = v135;
      v121 = v164;
      v130(v135, v131, v164);
      v122 = swift_allocObject();
      v123 = v159;
      v124 = v160;
      v122[2] = v5;
      v122[3] = v123;
      v125 = v158;
      v122[4] = v124;
      v122[5] = v125;

      v126 = v125;
      sub_1E46985FC(v120, sub_1E46721D4, v122);

      sub_1E465746C(v165, v166);

      v127 = *(v156 + 8);
      v127(v120, v121);
      (*(v138 + 8))(v119, v143);
      (*(v136 + 8))(v141, v137);
      (v169)(v157, v154);
      v127(v163, v121);
    }
  }

  else
  {
    v45(v33, v43, v7);

    v65 = sub_1E470A0BC();
    v66 = sub_1E470B2CC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      *&v167 = v169;
      *v67 = 67109634;
      *(v67 + 4) = v153 & 1;
      *(v67 + 8) = 2080;
      LODWORD(v164) = v66;
      v68 = sub_1E470B81C();
      v69 = v7;
      v71 = v70;
      v163 = v65;
      v72 = v161;
      v161(v33, v69);
      v73 = sub_1E4654D04(v68, v71, &v167);

      *(v67 + 10) = v73;
      *(v67 + 18) = 2080;
      sub_1E466C11C(v42);
      v74 = sub_1E470B81C();
      v76 = v75;
      v72(v42, v69);
      v77 = sub_1E4654D04(v74, v76, &v167);
      v7 = v69;

      *(v67 + 20) = v77;
      v78 = v163;
      _os_log_impl(&dword_1E45E0000, v163, v164, "CRDTModelFileSyncManager q_sync -- no delta: isRemote=%{BOOL}d, incoming=%s and existing=%s", v67, 0x1Cu);
      v79 = v169;
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v79, -1, -1);
      MEMORY[0x1E6917530](v67, -1, -1);
    }

    else
    {

      v161(v33, v7);
    }

    v159();
    *&v167 = v7;
    *(&v167 + 1) = v165;
    v168 = v166;
    type metadata accessor for CRDTModelFileSyncManager.SyncError(0, &v167);
    swift_getWitnessTable();
    swift_allocError();
    *v108 = 0;
    swift_willThrow();
  }
}

uint64_t CRDTModelFileSyncManager.syncAfterLoaded(_:isRemote:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1E470A5DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E470A5CC();
  v16 = v4;
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_1E4650534(&qword_1ECF74958, &qword_1E471BCD8);
  sub_1E470B36C();
  return (*(v10 + 8))(v13, v9);
}

void sub_1E466F894(void *a1@<X1>, char a2@<W2>, void (*a3)(void)@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v11 = sub_1E466C270();
  v12 = a2 & 1;
  if (v11)
  {
    sub_1E466E5EC(a1, v12, a3, a4);
    if (v5)
    {

      v13 = 1;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_1E466F940(a1, v12, a3, a4);
    v13 = 0;
  }

  *a5 = v13;
}

uint64_t sub_1E466F940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a3;
  v28 = a4;
  HIDWORD(v26) = a2;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v26 - v11;
  v13 = sub_1E470A0BC();
  v14 = sub_1E470B2CC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1E45E0000, v13, v14, "CRDTModelFileSyncManager q_enqueuePendingSync", v15, 2u);
    MEMORY[0x1E6917530](v15, -1, -1);
  }

  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  *(v17 + 24) = *(v7 + 88);
  *(v17 + 40) = *(v7 + 104);
  *(v17 + 48) = v5;
  (*(v9 + 32))(v17 + v16, v12, v8);
  *(v17 + v16 + v10) = BYTE4(v26) & 1;
  v18 = v17 + ((v16 + v10) & 0xFFFFFFFFFFFFFFF8);
  v19 = v28;
  *(v18 + 8) = v27;
  *(v18 + 16) = v19;
  swift_beginAccess();
  v20 = v5[9];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[9] = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_1E4693A54(0, v20[2] + 1, 1, v20);
    v5[9] = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_1E4693A54((v22 > 1), v23 + 1, 1, v20);
  }

  v20[2] = v23 + 1;
  v24 = &v20[2 * v23];
  v24[4] = sub_1E4672320;
  v24[5] = v17;
  v5[9] = v20;
  return swift_endAccess();
}

void sub_1E466FC0C(uint64_t a1, void *a2, char a3, void (*a4)(void), uint64_t a5)
{
  v9 = sub_1E470A0BC();
  v10 = sub_1E470B2CC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1E45E0000, v9, v10, "CRDTModelFileSyncManager q_enqueuePendingSync -- about to run", v11, 2u);
    MEMORY[0x1E6917530](v11, -1, -1);
  }

  sub_1E466E5EC(a2, a3 & 1, a4, a5);
}

uint64_t sub_1E466FD30()
{
  v21 = sub_1E470A61C();
  v1 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E470A5DC();
  v5 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(v0 + 72);
  *(v0 + 72) = MEMORY[0x1E69E7CC0];
  v19 = v9;
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v19 + 32);
    v12 = (v1 + 8);
    v13 = (v5 + 8);
    do
    {
      v14 = swift_allocObject();
      v15 = *v11++;
      *(v14 + 16) = v15;

      sub_1E470A5CC();
      v16 = swift_allocObject();
      *(v16 + 16) = sub_1E467248C;
      *(v16 + 24) = v14;
      aBlock[4] = sub_1E466A228;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E46C4624;
      aBlock[3] = &unk_1F5E63658;
      v17 = _Block_copy(aBlock);

      sub_1E470A5FC();
      MEMORY[0x1E69160A0](0, v4, v8, v17);
      _Block_release(v17);

      (*v12)(v4, v21);
      (*v13)(v8, v20);

      --v10;
    }

    while (v10);
  }
}

uint64_t sub_1E466FFEC(uint64_t *a1, uint64_t a2)
{
  v2 = sub_1E470AC7C();
  swift_getWitnessTable();
  sub_1E470A72C();
  return v2(&v4, 0);
}

uint64_t sub_1E46700CC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_1E470A0BC();
  v4 = sub_1E470B2CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1E45E0000, v3, v4, "CRDTModelFileSyncManager q_sync: finished", v5, 2u);
    MEMORY[0x1E6917530](v5, -1, -1);
  }

  v6 = sub_1E467019C();
  return a2(v6);
}

uint64_t sub_1E467019C()
{
  v1 = *v0;
  v2 = type metadata accessor for CRDTModelSyncVersion(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E470A0BC();
  v7 = sub_1E470B2CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16[0] = v9;
    *v8 = 136315138;
    v10 = (*(*(v1 + 88) + 8))(*(v1 + 80));
    v12 = sub_1E4654D04(v10, v11, v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1E45E0000, v6, v7, "CRDTModelFileSyncManager: Model did sync %s", v8, 0xCu);
    sub_1E4658A0C(v9);
    MEMORY[0x1E6917530](v9, -1, -1);
    MEMORY[0x1E6917530](v8, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = v0[3];
    ObjectType = swift_getObjectType();
    sub_1E470B37C();
    (*(v14 + 8))(v5, ObjectType, v14);
    swift_unknownObjectRelease();
    return sub_1E46721E0(v5);
  }

  return result;
}

id *CRDTModelFileSyncManager.deinit()
{
  v1 = *v0;
  sub_1E466A310((v0 + 2));

  swift_unknownObjectRelease();

  v2 = *(*v0 + 24);
  v3 = v1[6];
  v8[0] = v1[5];
  v8[1] = v3;
  type metadata accessor for CRDTModelFileSyncInfo(255, v8);
  swift_getWitnessTable();
  v4 = sub_1E470ACBC();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = *(*v0 + 25);
  v6 = sub_1E470A0DC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t CRDTModelFileSyncManager.__deallocating_deinit()
{
  CRDTModelFileSyncManager.deinit();

  return swift_deallocClassInstance();
}

void *sub_1E46706AC(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v157 = a4;
  v158 = a3;
  v162 = a2;
  v182 = a1;
  v187 = *MEMORY[0x1E69E9840];
  v6 = *v4;
  v161 = sub_1E470A0DC();
  v169 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161, v7);
  v168 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1E4709B9C();
  v179 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167, v9);
  v165 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v155 = &v147 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v178 = &v147 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v166 = &v147 - v19;
  v160 = (type metadata accessor for CRDTModelSyncVersion(0) - 8);
  MEMORY[0x1EEE9AC00](v160, v20);
  v163 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v159 = &v147 - v24;
  v25 = v6[10];
  v181 = v6[11];
  v26 = v6[12];
  v27 = v6[13];
  v183 = v25;
  v184 = v181;
  v185 = v26;
  v186 = v27;
  v28 = v26;
  v29 = v27;
  v30 = type metadata accessor for CRDTModelFileSyncInfo(255, &v183);
  WitnessTable = swift_getWitnessTable();
  v177 = v30;
  v174 = sub_1E470ACBC();
  v180 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174, v31);
  v172 = &v147 - v32;
  v33 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v154 = &v147 - v35;
  v175 = v29;
  v176 = v28;
  v36 = type metadata accessor for ModelState.Source(0, v25, v28, v29);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v151 = &v147 - v38;
  v149 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v39, v40);
  v148 = &v147 - v41;
  v173 = type metadata accessor for ModelState(0, v25, v28, v29);
  v164 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173, v42);
  v170 = &v147 - v43;
  v171 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v44, v45);
  v152 = &v147 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v147 - v49;
  v51 = sub_1E470B35C();
  v52 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v53);
  v55 = &v147 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1E470B33C();
  MEMORY[0x1EEE9AC00](v56 - 8, v57);
  v58 = sub_1E470A61C();
  MEMORY[0x1EEE9AC00](v58 - 8, v59);
  v5[3] = 0;
  swift_unknownObjectWeakInit();
  sub_1E465E1DC();
  sub_1E470A60C();
  sub_1E470B32C();
  (*(v52 + 104))(v55, *MEMORY[0x1E69E8098], v51);
  v5[6] = sub_1E470B39C();
  *(v5 + 80) = 0;
  v153 = *(*v5 + 200);
  v183 = 0;
  v184 = 0xE000000000000000;
  sub_1E470B5CC();

  v183 = 0xD000000000000012;
  v184 = 0x80000001E4718540;
  v150 = *(v181 + 8);
  v60 = v181;
  v61 = v150(v25);
  MEMORY[0x1E6915D10](v61);

  sub_1E470A0CC();
  v62 = v176;
  sub_1E470AA9C();
  v183 = v25;
  v184 = v60;
  v63 = v175;
  v185 = v62;
  v186 = v175;
  *&v50[*(type metadata accessor for CRDTModelFileSyncInfo(0, &v183) + 52)] = MEMORY[0x1E69E7CC8];
  v64 = v182[3];
  v65 = v182[4];
  sub_1E465057C(v182, v64);
  v5[12] = (*(v65 + 8))(v64, v65);
  swift_beginAccess();
  v5[3] = v157;
  swift_unknownObjectWeakAssign();
  v66 = v162;
  v5[8] = v162;
  type metadata accessor for ObservableTransaction(0);
  v67 = swift_allocObject();
  swift_getObjectType();
  swift_unknownObjectRetain_n();
  v5[7] = sub_1E4669F28(0xD000000000000034, 0x80000001E4718560, v66, v67);
  v68 = v149;
  v69 = v148;
  (*(v149 + 16))(v148, v50, v25);
  LOBYTE(v183) = 0;
  v70 = v151;
  (*(v68 + 56))(v151, 1, 2, v25);
  v71 = type metadata accessor for CRDTModelRevisionInfo(0);
  v72 = v154;
  (*(*(v71 - 8) + 56))(v154, 1, 1, v71);
  v73 = v170;
  ModelState.init(model:loaded:source:revisionInfo:)(v69, &v183, v70, v72, v25, v62, v63, v170);
  v74 = v173;
  v75 = swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer(0, v74, v75, v76);
  v5[4] = sub_1E466A1E0(v73);
  v77 = *(v171 + 16);
  v162 = v50;
  v77(v152, v50, v177);
  v78 = v172;
  sub_1E470ACCC();
  v79 = *(*v5 + 192);
  v80 = v180;
  v81 = v174;
  (*(v180 + 32))(v5 + v79, v78, v174);
  v82 = v5[12];
  swift_beginAccess();
  v83 = v82;
  sub_1E470AC6C();
  swift_endAccess();

  v84 = v5[12];
  v85 = *(v80 + 16);
  v158 = v79;
  v157 = v80 + 16;
  WitnessTable = v85;
  v85(v78, v5 + v79, v81);
  v86 = v84;
  v87 = v159;
  sub_1E470ACAC();
  v88 = *(v80 + 8);
  v180 = v80 + 8;
  v160 = v88;
  v88(v78, v81);
  *v87 = v86;
  sub_1E4650534(&qword_1ECF74950, &qword_1E471BCD0);
  swift_allocObject();
  v89 = v163;
  sub_1E4672390(v87, v163);
  v90 = sub_1E4676038(v89);
  sub_1E46721E0(v87);
  v5[5] = v90;
  v91 = v182[3];
  v92 = v182[4];
  sub_1E465057C(v182, v91);
  v93 = *(v92 + 16);
  v94 = v166;
  v95 = v92;
  v96 = v179;
  v93(v91, v95);
  v163 = v25;
  v97 = v25;
  v98 = v161;
  v99 = (v150)(v97, v181);
  v100 = v167;
  v183 = v99;
  v184 = v101;
  MEMORY[0x1E6915D10](0x666E49636E79532DLL, 0xE90000000000006FLL);
  v102 = v94;
  sub_1E4709B6C();

  (*(v169 + 16))(v168, v153 + v5, v98);
  v103 = *(v96 + 16);
  v104 = v155;
  v154 = (v96 + 16);
  v153 = v103;
  v103();
  v105 = sub_1E470A0BC();
  v106 = sub_1E470B29C();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v183 = v108;
    *v107 = 136315138;
    sub_1E4672404();
    v109 = sub_1E470B81C();
    v110 = v104;
    v112 = v111;
    v159 = *(v96 + 8);
    (v159)(v110, v100);
    v113 = sub_1E4654D04(v109, v112, &v183);

    *(v107 + 4) = v113;
    _os_log_impl(&dword_1E45E0000, v105, v106, "CRDTModelFileSyncManager Init: modelFileURL: %s", v107, 0xCu);
    sub_1E4658A0C(v108);
    MEMORY[0x1E6917530](v108, -1, -1);
    v114 = v107;
    v102 = v166;
    MEMORY[0x1E6917530](v114, -1, -1);
  }

  else
  {

    v159 = *(v96 + 8);
    (v159)(v104, v100);
  }

  (*(v169 + 8))(v168, v98);
  v115 = [objc_opt_self() defaultManager];
  v116 = sub_1E4709B4C();
  v183 = 0;
  v117 = [v115 createDirectoryAtURL:v116 withIntermediateDirectories:1 attributes:0 error:&v183];

  if (v117)
  {
    v118 = v183;
  }

  else
  {
    v119 = v183;
    v120 = sub_1E4709B0C();

    swift_willThrow();
    v121 = sub_1E470B2AC();
    if (qword_1EE2ADDE8 != -1)
    {
      swift_once();
    }

    v122 = qword_1EE2ADDF0;
    sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_1E471B800;
    v124 = sub_1E4709B1C();
    v126 = v125;
    v127 = MEMORY[0x1E69E6158];
    *(v123 + 56) = MEMORY[0x1E69E6158];
    v128 = sub_1E4663DE4();
    *(v123 + 64) = v128;
    *(v123 + 32) = v124;
    *(v123 + 40) = v126;
    swift_getErrorValue();
    v129 = sub_1E470B89C();
    *(v123 + 96) = v127;
    *(v123 + 104) = v128;
    *(v123 + 72) = v129;
    *(v123 + 80) = v130;
    sub_1E470A0AC(v121, &dword_1E45E0000, v122, "CRDTModelFileSyncManager unable to create directory at %@ error=%@", 66, 2, v123);

    v100 = v167;
  }

  v131 = v177;
  v132 = swift_getWitnessTable();
  v133 = swift_getWitnessTable();
  v183 = v131;
  v184 = &protocol witness table for CRDTModelFileSyncInfo<A>;
  v185 = v132;
  v186 = v133;
  type metadata accessor for CRDTModelFileSyncTransport(0, &v183);
  v134 = v5[12];
  v135 = v172;
  v136 = v174;
  WitnessTable(v172, v5 + v158, v174);
  v137 = v165;
  v138 = v178;
  (v153)(v165, v178, v100);
  v139 = v134;
  v140 = sub_1E469CBA0(v139, v135, v137);
  v160(v135, v136);

  v5[11] = v140;
  sub_1E466A268(v5[7], &protocol witness table for ObservableTransaction);
  v5[9] = MEMORY[0x1E69E7CC0];
  v141 = swift_allocObject();
  swift_weakInit();
  v142 = swift_allocObject();
  v143 = v181;
  v142[2] = v163;
  v142[3] = v143;
  v144 = v175;
  v142[4] = v176;
  v142[5] = v144;
  v142[6] = v141;
  sub_1E46985D8(sub_1E46723F4, v142);

  v145 = v159;
  (v159)(v138, v100);
  v145(v102, v100);
  (*(v164 + 8))(v170, v173);
  (*(v171 + 8))(v162, v131);
  sub_1E4658A0C(v182);
  return v5;
}

void sub_1E4671B48(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1E4671EC0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E4671BD0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1E4671D0C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_1E4671EC0(uint64_t a1)
{
  if (!qword_1EE2ACD50)
  {
    sub_1E470AC3C();
    v1 = sub_1E470AE9C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2ACD50);
    }
  }
}

uint64_t sub_1E4671F28(uint64_t a1)
{
  v6 = &unk_1E471C190;
  v7 = MEMORY[0x1E69E5D20] + 64;
  v8 = MEMORY[0x1E69E5D20] + 64;
  v9 = MEMORY[0x1E69E5CE0] + 64;
  v10 = MEMORY[0x1E69E5D20] + 64;
  v11 = &unk_1E471C1A8;
  v12 = MEMORY[0x1E69E5CE8] + 64;
  v13 = &unk_1E471C1C0;
  v14 = MEMORY[0x1E69E5D20] + 64;
  v15 = MEMORY[0x1E69E5CE0] + 64;
  v1 = *(a1 + 96);
  v5[0] = *(a1 + 80);
  v5[1] = v1;
  type metadata accessor for CRDTModelFileSyncInfo(255, v5);
  swift_getWitnessTable();
  result = sub_1E470ACBC();
  if (v3 <= 0x3F)
  {
    v16 = *(result - 8) + 64;
    result = sub_1E470A0DC();
    if (v4 <= 0x3F)
    {
      v17 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1E46720C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E4672114(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1E467215C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E46721E0(uint64_t a1)
{
  v2 = type metadata accessor for CRDTModelSyncVersion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4672250(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E4672268(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = type metadata accessor for ModelState(0, v3, v4, v5);
  v10 = *(v7 - 8);
  (*(v10 + 8))(a1, v7);
  v8 = *(v10 + 16);

  return v8(a1, v6, v7);
}

uint64_t sub_1E4672390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRDTModelSyncVersion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4672404()
{
  result = qword_1ECF754D0;
  if (!qword_1ECF754D0)
  {
    sub_1E4709B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF754D0);
  }

  return result;
}

uint64_t sub_1E46724D0(void *a1)
{
  v3 = sub_1E4650534(&qword_1ECF749A8, &unk_1E471C308);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v9[-v6];
  sub_1E465057C(a1, a1[3]);
  sub_1E46735E0();
  sub_1E470B93C();
  v9[15] = 0;
  sub_1E470B7BC();
  if (!v1)
  {
    type metadata accessor for BDSSyncEngineStateMetadata(0);
    v9[14] = 1;
    sub_1E470A53C();
    sub_1E4673764(&qword_1ECF749B0, MEMORY[0x1E695B6C8], MEMORY[0x1E695B6D0]);
    sub_1E470B7AC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1E4672688@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1E4650534(&unk_1ECF752B0, &unk_1E471C280);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23 - v6;
  v8 = sub_1E4650534(&qword_1ECF74990, &qword_1E471C300);
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for BDSSyncEngineStateMetadata(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v16 + 28);
  v18 = sub_1E470A53C();
  v19 = *(*(v18 - 8) + 56);
  v26 = v17;
  v19(v15 + v17, 1, 1, v18);
  sub_1E465057C(a1, a1[3]);
  sub_1E46735E0();
  sub_1E470B92C();
  if (v2)
  {
    sub_1E4658A0C(a1);
    return sub_1E465E050(v15 + v26, &unk_1ECF752B0, &unk_1E471C280);
  }

  else
  {
    v20 = v24;
    v28 = 0;
    *v15 = sub_1E470B74C();
    v15[1] = v21;
    v27 = 1;
    sub_1E4673764(&qword_1ECF749A0, MEMORY[0x1E695B6C8], MEMORY[0x1E695B6D8]);
    sub_1E470B73C();
    (*(v20 + 8))(v11, v25);
    sub_1E4673634(v7, v15 + v26);
    sub_1E46736A4(v15, v23);
    sub_1E4658A0C(a1);
    return sub_1E4673708(v15);
  }
}

uint64_t sub_1E46729B8()
{
  if (*v0)
  {
    return 0x6574617473;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1E46729E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E470B84C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E470B84C();

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

uint64_t sub_1E4672AC0(uint64_t a1)
{
  v2 = sub_1E46735E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4672AFC(uint64_t a1)
{
  v2 = sub_1E46735E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4672B68()
{
  v0 = sub_1E470A0DC();
  sub_1E4665F64(v0, qword_1ECF74960);
  sub_1E4665EC4(v0, qword_1ECF74960);
  return sub_1E470A0CC();
}

uint64_t sub_1E4672BE8@<X0>(uint64_t a1@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = sub_1E4709B9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - v9;
  v11 = [objc_opt_self() defaultManager];
  v12 = [objc_opt_self() books];
  v13 = [v12 containerURL];

  sub_1E4709B7C();
  sub_1E4709B5C();
  (*(v3 + 8))(v6, v2);
  v23 = 1;
  sub_1E4709B8C();
  v14 = sub_1E470AF0C();

  LOBYTE(v6) = [v11 fileExistsAtPath:v14 isDirectory:&v23];

  if ((v6 & 1) == 0)
  {
    v15 = sub_1E4709B4C();
    v22 = 0;
    v16 = [v11 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v22];

    if (!v16)
    {
      v18 = v22;
      v19 = sub_1E4709B0C();

      swift_willThrow();
      goto LABEL_6;
    }

    v17 = v22;
  }

LABEL_6:
  (*(v3 + 32))(a1, v10, v2);
  return (*(v3 + 56))(a1, 0, 1, v2);
}

uint64_t sub_1E4672EA0(uint64_t a1, uint64_t a2)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v45 - v4;
  v6 = sub_1E4709B9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v45 - v17;
  sub_1E4672BE8(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1E465E050(v5, &qword_1ECF754C0, &unk_1E471BA10);
    if (qword_1ECF740B8 != -1)
    {
      swift_once();
    }

    v19 = sub_1E470A0DC();
    sub_1E4665EC4(v19, qword_1ECF74960);
    v20 = sub_1E470A0BC();
    v21 = sub_1E470B2AC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1E45E0000, v20, v21, "Could not get metadata. No BaseURL", v22, 2u);
      MEMORY[0x1E6917530](v22, -1, -1);
    }

    return 0;
  }

  (*(v7 + 32))(v18, v5, v6);
  v23 = [objc_opt_self() defaultManager];
  sub_1E4709B6C();
  sub_1E4709B8C();
  v24 = sub_1E470AF0C();

  v25 = [v23 fileExistsAtPath_];

  if (!v25)
  {

    v38 = *(v7 + 8);
    v38(v14, v6);
    v38(v18, v6);
    return 0;
  }

  if (qword_1ECF740B8 != -1)
  {
    swift_once();
  }

  v26 = sub_1E470A0DC();
  sub_1E4665EC4(v26, qword_1ECF74960);
  (*(v7 + 16))(v10, v14, v6);
  v27 = sub_1E470A0BC();
  v28 = sub_1E470B2CC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v45 = v29;
    v46 = swift_slowAlloc();
    v48[0] = v46;
    *v29 = 136315138;
    sub_1E4673764(&qword_1ECF754D0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v30 = sub_1E470B81C();
    v47 = v23;
    v32 = v31;
    v33 = *(v7 + 8);
    v33(v10, v6);
    v34 = sub_1E4654D04(v30, v32, v48);
    v23 = v47;

    v35 = v45;
    *(v45 + 1) = v34;
    v36 = v35;
    _os_log_impl(&dword_1E45E0000, v27, v28, "Removing sync engine metadata at: %s", v35, 0xCu);
    v37 = v46;
    sub_1E4658A0C(v46);
    MEMORY[0x1E6917530](v37, -1, -1);
    MEMORY[0x1E6917530](v36, -1, -1);
  }

  else
  {

    v33 = *(v7 + 8);
    v33(v10, v6);
  }

  v39 = sub_1E4709B4C();
  v48[0] = 0;
  v40 = [v23 removeItemAtURL:v39 error:v48];

  if (v40)
  {
    v41 = v48[0];

    v33(v14, v6);
    v33(v18, v6);
    return 0;
  }

  v43 = v48[0];
  v44 = sub_1E4709B0C();

  swift_willThrow();
  v33(v14, v6);
  v33(v18, v6);
  return v44;
}

uint64_t type metadata accessor for BDSSyncEngineStateMetadata(uint64_t a1)
{
  result = qword_1ECF74978;
  if (!qword_1ECF74978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E467350C(uint64_t a1)
{
  sub_1E4673588(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1E4673588(uint64_t a1)
{
  if (!qword_1ECF74988)
  {
    sub_1E470A53C();
    v1 = sub_1E470B47C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF74988);
    }
  }
}

unint64_t sub_1E46735E0()
{
  result = qword_1ECF74998;
  if (!qword_1ECF74998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74998);
  }

  return result;
}

uint64_t sub_1E4673634(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&unk_1ECF752B0, &unk_1E471C280);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E46736A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BDSSyncEngineStateMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4673708(uint64_t a1)
{
  v2 = type metadata accessor for BDSSyncEngineStateMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4673764(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E46737C0()
{
  result = qword_1ECF749B8;
  if (!qword_1ECF749B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF749B8);
  }

  return result;
}

unint64_t sub_1E4673818()
{
  result = qword_1ECF749C0;
  if (!qword_1ECF749C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF749C0);
  }

  return result;
}

unint64_t sub_1E4673870()
{
  result = qword_1ECF749C8;
  if (!qword_1ECF749C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF749C8);
  }

  return result;
}

uint64_t ModelState.init(model:loaded:source:revisionInfo:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a2;
  v16 = type metadata accessor for ModelState(0, a5, a6, a7);
  v17 = v16[13];
  v18 = type metadata accessor for CRDTModelRevisionInfo(0);
  (*(*(v18 - 8) + 56))(a8 + v17, 1, 1, v18);
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  *(a8 + v16[11]) = v15;
  v19 = v16[12];
  v20 = type metadata accessor for ModelState.Source(0, a5, a6, a7);
  (*(*(v20 - 8) + 32))(a8 + v19, a3, v20);

  return sub_1E4673A4C(a4, a8 + v17);
}

uint64_t sub_1E4673A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ModelState.updating(model:source:revisionInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ModelState.updating(model:source:)(a1, a2, a4);
  v7 = v4 + *(a4 + 52);

  return sub_1E465DEB8(a3, v7);
}

uint64_t ModelState.description.getter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v24 - v6;
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_1E470B5CC();
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v10 = sub_1E470B81C();
  v12 = v11;

  v24 = v10;
  v25 = v12;
  MEMORY[0x1E6915D10](0x646564616F6C202CLL, 0xE90000000000003DLL);
  v13 = *(a1 + 24);
  if (*(v2 + *(a1 + 44)))
  {
    v14 = 0x7964616572;
  }

  else
  {
    v14 = 0x676E6964616F6CLL;
  }

  if (*(v2 + *(a1 + 44)))
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  MEMORY[0x1E6915D10](v14, v15);

  MEMORY[0x1E6915D10](0x6F537473616C202CLL, 0xED00003D65637275);
  v16 = type metadata accessor for ModelState.Source(0, v8, v13, v9);
  v17 = ModelState.Source.description.getter(v16);
  MEMORY[0x1E6915D10](v17);

  MEMORY[0x1E6915D10](0x697369766572202CLL, 0xEF3D6F666E496E6FLL);
  sub_1E4674548(v2 + *(a1 + 52), v7);
  v18 = type metadata accessor for CRDTModelRevisionInfo(0);
  if ((*(*(v18 - 8) + 48))(v7, 1, v18) == 1)
  {
    sub_1E465E050(v7, &qword_1ECF74770, &unk_1E471C900);
    v19 = 0xE300000000000000;
    v20 = 7104878;
  }

  else
  {
    v21 = CRDTModelRevisionInfo.description.getter();
    v19 = v22;
    sub_1E465DFF4(v7);
    v20 = v21;
  }

  MEMORY[0x1E6915D10](v20, v19);

  return v24;
}

uint64_t ModelState.updating(model:source:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  (*(*(v6 - 8) + 24))(v3, a1, v6);
  v7 = *(a3 + 48);
  v8 = type metadata accessor for ModelState.Source(0, v6, *(a3 + 24), *(a3 + 32));
  v9 = *(*(v8 - 8) + 24);

  return v9(v3 + v7, a2, v8);
}

uint64_t ModelState.LoadedState.description.getter()
{
  if (*v0)
  {
    return 0x7964616572;
  }

  else
  {
    return 0x676E6964616F6CLL;
  }
}

uint64_t ModelState.LoadedState.hashValue.getter()
{
  v1 = *v0;
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v1);
  return sub_1E470B91C();
}

uint64_t sub_1E4673F1C(uint64_t a1)
{
  sub_1E470B8FC();
  ModelState.LoadedState.hash(into:)();
  return sub_1E470B91C();
}

uint64_t static ModelState.Source.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v41 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v39[1] = v10;
  v40 = v39 - v11;
  v14 = type metadata accessor for ModelState.Source(0, v12, v10, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v42 = v39 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = *(TupleTypeMetadata2 - 8);
  v20 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v19);
  v22 = v39 - v21;
  v43 = v15;
  v44 = v23;
  v24 = *(v23 + 48);
  v25 = *(v15 + 16);
  v25(v39 - v21, a1, v14, v20);
  (v25)(&v22[v24], a2, v14);
  v26 = *(v6 + 48);
  v27 = a3;
  v28 = v26(v22, 2, a3);
  if (v28)
  {
    if (v28 == 1)
    {
      if (v26(&v22[v24], 2, a3) != 1)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (v26(&v22[v24], 2, a3) == 2)
    {
LABEL_8:
      v30 = 1;
      v31 = v43;
      goto LABEL_10;
    }

LABEL_9:
    v30 = 0;
    v14 = v44;
    v31 = v45;
    goto LABEL_10;
  }

  v39[0] = v6;
  v29 = v42;
  (v25)(v42, v22, v14);
  if (v26(&v22[v24], 2, a3))
  {
    (*(v39[0] + 8))(v29, a3);
    goto LABEL_9;
  }

  v33 = v39[0];
  v34 = *(v39[0] + 32);
  v35 = v40;
  v34(v40, v29, v27);
  v36 = &v22[v24];
  v37 = v41;
  v34(v41, v36, v27);
  if (sub_1E470AB9C())
  {
    v30 = 0;
  }

  else
  {
    v30 = sub_1E470AB9C() ^ 1;
  }

  v38 = *(v33 + 8);
  v38(v37, v27);
  v38(v35, v27);
  v31 = v43;
LABEL_10:
  (*(v31 + 8))(v22, v14);
  return v30 & 1;
}

uint64_t ModelState.Source.description.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1, v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = (*(v3 + 48))(v10, 2, v2);
  if (v12)
  {
    if (v12 == 1)
    {
      return 0x6C61636F6CLL;
    }

    else
    {
      return 0x6465726F7473;
    }
  }

  else
  {
    (*(v3 + 32))(v5, v10, v2);
    v16[0] = 0x2865746F6D6572;
    v16[1] = 0xE700000000000000;
    v14 = sub_1E470B81C();
    MEMORY[0x1E6915D10](v14);

    MEMORY[0x1E6915D10](41, 0xE100000000000000);
    v15 = v16[0];
    (*(v3 + 8))(v5, v2);
    return v15;
  }
}

uint64_t sub_1E4674548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ModelState.lastSource.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for ModelState.Source(0, *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ModelState.lastSource.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = type metadata accessor for ModelState.Source(0, *(a2 + 16), *(a2 + 24), *(a2 + 32));
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

BOOL static ModelState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for CRDTModelRevisionInfo(0);
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v29 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = (&v29 - v15);
  v17 = sub_1E4650534(&qword_1ECF749D0, &qword_1E471C430);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v29 - v19;
  v21 = type metadata accessor for ModelState(0, a3, a4, a5);
  if (*(a1 + *(v21 + 44)) != *(a2 + *(v21 + 44)))
  {
    return 0;
  }

  v22 = v21;
  if (static ModelState.Source.== infix(_:_:)(a1 + *(v21 + 48), a2 + *(v21 + 48), a3) & 1) == 0 || (sub_1E470AB9C() & 1) != 0 || (sub_1E470AB9C())
  {
    return 0;
  }

  v23 = *(v22 + 52);
  v24 = *(v17 + 48);
  sub_1E4674548(a1 + v23, v20);
  sub_1E4674548(a2 + v23, &v20[v24]);
  v25 = *(v30 + 48);
  if (v25(v20, 1, v10) != 1)
  {
    sub_1E4674548(v20, v16);
    if (v25(&v20[v24], 1, v10) != 1)
    {
      v28 = v29;
      sub_1E465DF2C(&v20[v24], v29);
      v26 = _s13BookDataStore21CRDTModelRevisionInfoV2eeoiySbAC_ACtFZ_0(v16, v28);
      sub_1E465DFF4(v28);
      sub_1E465DFF4(v16);
      sub_1E465E050(v20, &qword_1ECF74770, &unk_1E471C900);
      return v26;
    }

    sub_1E465DFF4(v16);
    goto LABEL_10;
  }

  if (v25(&v20[v24], 1, v10) != 1)
  {
LABEL_10:
    sub_1E465E050(v20, &qword_1ECF749D0, &qword_1E471C430);
    return 0;
  }

  sub_1E465E050(v20, &qword_1ECF74770, &unk_1E471C900);
  return 1;
}

void sub_1E4674B40(void *a1)
{
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = a1[3];
    v5 = a1[4];
    v6 = v2;
    type metadata accessor for ModelState.LoadedState(319, v2, v4, v5);
    if (v7 <= 0x3F)
    {
      type metadata accessor for ModelState.Source(319, v6, v4, v5);
      if (v8 <= 0x3F)
      {
        sub_1E46755C4(319);
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E4674C20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 - 2;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(sub_1E4709CCC() - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 - 1;
  if (v9 > v14)
  {
    v14 = v9;
  }

  v15 = *(v6 + 64);
  v16 = v15;
  if (v7 <= 1)
  {
    if (v15 <= 3)
    {
      v18 = (~(-1 << (8 * v15)) - v7 + 2) >> (8 * v15);
      if (v18 > 0xFFFE)
      {
        v17 = 4;
      }

      else
      {
        v19 = 1;
        if (v18 >= 0xFF)
        {
          v19 = 2;
        }

        if (v18)
        {
          v17 = v19;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }

    v16 = v17 + v15;
  }

  if (v11)
  {
    v20 = -2;
  }

  else
  {
    v20 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = *(v6 + 80);
  v22 = *(v10 + 80);
  v23 = v22 | 7;
  if (a2 > v14)
  {
    v24 = v20 + *(v10 + 64) - ((-33 - v22) | v22) - ((((-2 - v15 - v21) | v21) - (v16 + v23)) | v23);
    v25 = 8 * v24;
    if (v24 > 3)
    {
      goto LABEL_31;
    }

    v27 = ((a2 - v14 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v27))
    {
      v26 = *(a1 + v24);
      if (v26)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v27 <= 0xFF)
      {
        if (v27 < 2)
        {
          goto LABEL_51;
        }

LABEL_31:
        v26 = *(a1 + v24);
        if (!*(a1 + v24))
        {
          goto LABEL_51;
        }

LABEL_38:
        v28 = (v26 - 1) << v25;
        if (v24 > 3)
        {
          v28 = 0;
        }

        if (v24)
        {
          if (v24 <= 3)
          {
            v29 = v24;
          }

          else
          {
            v29 = 4;
          }

          if (v29 > 2)
          {
            if (v29 == 3)
            {
              v30 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v30 = *a1;
            }
          }

          else if (v29 == 1)
          {
            v30 = *a1;
          }

          else
          {
            v30 = *a1;
          }
        }

        else
        {
          v30 = 0;
        }

        return v14 + (v30 | v28) + 1;
      }

      v26 = *(a1 + v24);
      if (*(a1 + v24))
      {
        goto LABEL_38;
      }
    }
  }

LABEL_51:
  if (v7 == v14)
  {
    v31 = *(v6 + 48);

    return v31(a1, v7, v5);
  }

  v33 = (a1 + v15 + v21 + 1) & ~v21;
  if (v8 == v14)
  {
    if (v7)
    {
      v34 = (*(v6 + 48))(v33, v7, v5);
      v35 = v34 >= 2;
      result = v34 - 2;
      if (result != 0 && v35)
      {
        return result;
      }
    }

    return 0;
  }

  if (v7 <= 1)
  {
    if (v15 <= 3)
    {
      v37 = (~(-1 << (8 * v15)) - v7 + 2) >> (8 * v15);
      v38 = 1;
      if (v37 >= 0xFF)
      {
        v38 = 2;
      }

      if (!v37)
      {
        v38 = 0;
      }

      if (v37 <= 0xFFFE)
      {
        v36 = v38;
      }

      else
      {
        v36 = 4;
      }
    }

    else
    {
      v36 = 1;
    }

    v15 += v36;
  }

  if (v12 > 0x7FFFFFFE)
  {
    v40 = (*(v10 + 48))((v22 + ((((v23 + v33 + v15) & ~v23) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v22);
    LODWORD(v39) = v40 - 1;
  }

  else
  {
    v39 = *(((v23 + v33 + v15) & ~v23) + 8);
    if (v39 >= 0xFFFFFFFF)
    {
      LODWORD(v39) = -1;
    }

    v40 = v39 + 1;
  }

  if (v40 < 2)
  {
    LODWORD(v39) = 0;
  }

  if (v39 >= 2)
  {
    return (v39 - 1);
  }

  else
  {
    return 0;
  }
}

void sub_1E4675010(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v52 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 - 2;
  }

  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(sub_1E4709CCC() - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 64);
  if (v13)
  {
    v15 = v13 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v15;
  }

  if (v11 <= v16 - 1)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = v11;
  }

  v18 = *(v8 + 80);
  v19 = *(v8 + 64);
  if (v9 <= 1)
  {
    if (v14 <= 3)
    {
      v21 = (~(-1 << (8 * v14)) - v9 + 2) >> (8 * v14);
      v22 = 1;
      if (v21 >= 0xFF)
      {
        v22 = 2;
      }

      if (!v21)
      {
        v22 = 0;
      }

      if (v21 <= 0xFFFE)
      {
        v20 = v22;
      }

      else
      {
        v20 = 4;
      }
    }

    else
    {
      v20 = 1;
    }

    v19 = v20 + v14;
  }

  v23 = *(v12 + 80);
  v24 = (v19 + (v23 | 7) + ((v14 + v18 + 1) & ~v18)) & ~(v23 | 7);
  v25 = *(v12 + 64);
  if (!v13)
  {
    ++v25;
  }

  v26 = ((v23 + 32) & ~v23) + v25;
  v27 = v24 + v26;
  if (a3 <= v17)
  {
    v28 = 0;
  }

  else if (v27 <= 3)
  {
    v31 = ((a3 - v17 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
    if (HIWORD(v31))
    {
      v28 = 4;
    }

    else
    {
      if (v31 < 0x100)
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }

      if (v31 >= 2)
      {
        v28 = v32;
      }

      else
      {
        v28 = 0;
      }
    }
  }

  else
  {
    v28 = 1;
  }

  if (v17 < a2)
  {
    v29 = ~v17 + a2;
    if (v27 >= 4)
    {
      bzero(a1, v27);
      *a1 = v29;
      v30 = 1;
      if (v28 > 1)
      {
        goto LABEL_36;
      }

      goto LABEL_81;
    }

    v30 = (v29 >> (8 * v27)) + 1;
    if (v27)
    {
      v33 = v29 & ~(-1 << (8 * v27));
      bzero(a1, v27);
      if (v27 != 3)
      {
        if (v27 == 2)
        {
          *a1 = v33;
          if (v28 > 1)
          {
            goto LABEL_36;
          }
        }

        else
        {
          *a1 = v29;
          if (v28 > 1)
          {
LABEL_36:
            if (v28 == 2)
            {
              *&a1[v27] = v30;
            }

            else
            {
              *&a1[v27] = v30;
            }

            return;
          }
        }

LABEL_81:
        if (v28)
        {
          a1[v27] = v30;
        }

        return;
      }

      *a1 = v33;
      a1[2] = BYTE2(v33);
    }

    if (v28 > 1)
    {
      goto LABEL_36;
    }

    goto LABEL_81;
  }

  if (v28 > 1)
  {
    if (v28 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_57;
    }

    *&a1[v27] = 0;
  }

  else if (v28)
  {
    a1[v27] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_57;
  }

  if (!a2)
  {
    return;
  }

LABEL_57:
  if (v9 == v17)
  {
    v34 = *(v52 + 56);
    v35 = a1;
    v36 = a2;
LABEL_59:

    v34(v35, v36, v9, v7);
    return;
  }

  v37 = &a1[v14 + 1 + v18] & ~v18;
  if (v10 == v17)
  {
    if (a2 + 2 <= v9)
    {
      if (a2 == -2)
      {
        return;
      }

      v34 = *(v52 + 56);
      v35 = v37;
      v36 = (a2 + 2);
      goto LABEL_59;
    }

    if (v14 <= 3)
    {
      v38 = ~(-1 << (8 * v14));
    }

    else
    {
      v38 = -1;
    }

    if (!v14)
    {
      return;
    }

    v39 = v38 & (a2 - v9 + 1);
    if (v14 <= 3)
    {
      v40 = v14;
    }

    else
    {
      v40 = 4;
    }

    v41 = v37;
LABEL_115:
    bzero(v41, v14);
    if (v40 > 2)
    {
      if (v40 == 3)
      {
        *v37 = v39;
        *(v37 + 2) = BYTE2(v39);
      }

      else
      {
        *v37 = v39;
      }
    }

    else if (v40 == 1)
    {
      *v37 = v39;
    }

    else
    {
      *v37 = v39;
    }

    return;
  }

  if (v9 <= 1)
  {
    if (v14 <= 3)
    {
      v43 = (~(-1 << (8 * v14)) - v9 + 2) >> (8 * v14);
      v44 = 1;
      if (v43 >= 0xFF)
      {
        v44 = 2;
      }

      if (!v43)
      {
        v44 = 0;
      }

      if (v43 <= 0xFFFE)
      {
        v42 = v44;
      }

      else
      {
        v42 = 4;
      }
    }

    else
    {
      v42 = 1;
    }

    v14 += v42;
  }

  v37 = ((v23 | 7) + v37 + v14) & ~(v23 | 7);
  if (v16 - 1 < a2)
  {
    if (v26 <= 3)
    {
      v45 = ~(-1 << (8 * v26));
    }

    else
    {
      v45 = -1;
    }

    if (!v26)
    {
      return;
    }

    v39 = v45 & (a2 - v16);
LABEL_111:
    if (v26 <= 3)
    {
      v40 = v26;
    }

    else
    {
      v40 = 4;
    }

    v41 = v37;
    v14 = v26;
    goto LABEL_115;
  }

  v46 = a2 >= v16;
  v47 = a2 - v16;
  if (v46)
  {
    if (v26 <= 3)
    {
      v48 = ~(-1 << (8 * v26));
    }

    else
    {
      v48 = -1;
    }

    if (!v26)
    {
      return;
    }

    v39 = v48 & v47;
    goto LABEL_111;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    if (a2 > 0x7FFFFFFD)
    {
      *v37 = 0;
      *(v37 + 8) = 0;
      *v37 = a2 - 2147483646;
    }

    else
    {
      *(v37 + 8) = (a2 + 1);
    }

    return;
  }

  v37 = (v23 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v23;
  v49 = a2 - v15;
  if (a2 >= v15)
  {
    if (v25 <= 3)
    {
      v51 = ~(-1 << (8 * v25));
    }

    else
    {
      v51 = -1;
    }

    if (!v25)
    {
      return;
    }

    v39 = v51 & v49;
    if (v25 <= 3)
    {
      v40 = v25;
    }

    else
    {
      v40 = 4;
    }

    v41 = v37;
    v14 = v25;
    goto LABEL_115;
  }

  v50 = *(v12 + 56);

  v50(v37, (a2 + 2));
}

void sub_1E46755C4(uint64_t a1)
{
  if (!qword_1EE2AD7C0)
  {
    type metadata accessor for CRDTModelRevisionInfo(255);
    v1 = sub_1E470B47C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2AD7C0);
    }
  }
}

uint64_t sub_1E467561C(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1E4675678(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 > v6)
  {
    v12 = 8 * v7;
    if (v7 <= 3)
    {
      v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v14))
      {
        v13 = *(a1 + v7);
        if (!v13)
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }

      if (v14 > 0xFF)
      {
        v13 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }

      if (v14 < 2)
      {
LABEL_35:
        if (!v6)
        {
          return 0;
        }

        goto LABEL_36;
      }
    }

    v13 = *(a1 + v7);
    if (!*(a1 + v7))
    {
      goto LABEL_35;
    }

LABEL_22:
    v15 = (v13 - 1) << v12;
    if (v7 > 3)
    {
      v15 = 0;
    }

    if (v7)
    {
      if (v7 <= 3)
      {
        v16 = v7;
      }

      else
      {
        v16 = 4;
      }

      if (v16 > 2)
      {
        if (v16 == 3)
        {
          v17 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v17 = *a1;
        }
      }

      else if (v16 == 1)
      {
        v17 = *a1;
      }

      else
      {
        v17 = *a1;
      }
    }

    else
    {
      v17 = 0;
    }

    return v6 + (v17 | v15) + 1;
  }

LABEL_36:
  if (!v5)
  {
    return 0;
  }

  v18 = (*(v4 + 48))(a1, v5);
  v19 = v18 >= 2;
  result = v18 - 2;
  if (result == 0 || !v19)
  {
    return 0;
  }

  return result;
}

void sub_1E4675848(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 2;
  v10 = v8;
  if (v7 <= 1)
  {
    v9 = 0;
    if (v8 <= 3)
    {
      v12 = (~(-1 << (8 * v8)) - v7 + 2) >> (8 * v8);
      if (v12 > 0xFFFE)
      {
        v11 = 4;
      }

      else
      {
        v13 = 1;
        if (v12 >= 0xFF)
        {
          v13 = 2;
        }

        if (v12)
        {
          v11 = v13;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }

    v10 = v11 + v8;
  }

  v14 = a3 >= v9;
  v15 = a3 - v9;
  if (v15 != 0 && v14)
  {
    v16 = 1;
    if (v10 <= 3)
    {
      v17 = ((v15 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      v18 = HIWORD(v17);
      if (v17 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v17 >= 2)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      if (v18)
      {
        v16 = 4;
      }

      else
      {
        v16 = v20;
      }
    }

    if (v9 >= a2)
    {
LABEL_29:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_41;
        }

        *&a1[v10] = 0;
      }

      else if (v16)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

LABEL_41:
        if (a2 + 2 <= v7)
        {
          v27 = *(v6 + 56);

          v27();
        }

        else
        {
          if (v8 <= 3)
          {
            v24 = ~(-1 << (8 * v8));
          }

          else
          {
            v24 = -1;
          }

          if (v8)
          {
            v25 = v24 & (a2 - v7 + 1);
            if (v8 <= 3)
            {
              v26 = v8;
            }

            else
            {
              v26 = 4;
            }

            bzero(a1, v8);
            if (v26 > 2)
            {
              if (v26 == 3)
              {
                *a1 = v25;
                a1[2] = BYTE2(v25);
              }

              else
              {
                *a1 = v25;
              }
            }

            else if (v26 == 1)
            {
              *a1 = v25;
            }

            else
            {
              *a1 = v25;
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v16 = 0;
    if (v9 >= a2)
    {
      goto LABEL_29;
    }
  }

  v21 = ~v9 + a2;
  if (v10 >= 4)
  {
    bzero(a1, v10);
    *a1 = v21;
    v22 = 1;
    if (v16 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v22 = (v21 >> (8 * v10)) + 1;
  if (!v10)
  {
LABEL_58:
    if (v16 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v23 = v21 & ~(-1 << (8 * v10));
  bzero(a1, v10);
  if (v10 == 3)
  {
    *a1 = v23;
    a1[2] = BYTE2(v23);
    goto LABEL_58;
  }

  if (v10 == 2)
  {
    *a1 = v23;
    if (v16 > 1)
    {
LABEL_62:
      if (v16 == 2)
      {
        *&a1[v10] = v22;
      }

      else
      {
        *&a1[v10] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v16 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v16)
  {
    a1[v10] = v22;
  }
}

uint64_t sub_1E4675B48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E4650534(&qword_1ECF74A18, &qword_1E471C930);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v19[-v6];
  v8 = type metadata accessor for CRDTModelSyncVersion(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v19[-v14];
  v16 = *(*v1 + 120);
  swift_beginAccess();
  sub_1E4672390(v1 + v16, v15);
  swift_beginAccess();
  sub_1E467A318(a1, v1 + v16);
  swift_endAccess();
  sub_1E4672390(v1 + v16, v11);
  sub_1E45E2DE8(0, &qword_1EE2ACCC0, 0x1E69E58C0);
  if (sub_1E470B42C() & 1) != 0 && (sub_1E470ADDC())
  {
    sub_1E467A37C(a1, type metadata accessor for CRDTModelSyncVersion);
    sub_1E467A37C(v11, type metadata accessor for CRDTModelSyncVersion);
  }

  else
  {
    sub_1E467A37C(v11, type metadata accessor for CRDTModelSyncVersion);
    v17 = *(sub_1E4650534(&qword_1ECF74A20, &qword_1E471C938) + 48);
    sub_1E4672390(v15, v7);
    sub_1E4672390(v2 + v16, &v7[v17]);
    swift_storeEnumTagMultiPayload();
    sub_1E4676A38(v7);
    sub_1E467A37C(a1, type metadata accessor for CRDTModelSyncVersion);
    sub_1E465E050(v7, &qword_1ECF74A18, &qword_1E471C930);
  }

  return sub_1E467A37C(v15, type metadata accessor for CRDTModelSyncVersion);
}

uint64_t sub_1E4675DD8(uint64_t a1)
{
  v3 = sub_1E4650534(&qword_1ECF74D90, &unk_1E471C8F0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v22[-v5];
  v7 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v22[-v13];
  v15 = *(*v1 + 120);
  swift_beginAccess();
  sub_1E465E0B0(v1 + v15, v14, &qword_1ECF74A00, &unk_1E471D5B0);
  swift_beginAccess();
  sub_1E467A194(a1, v1 + v15);
  swift_endAccess();
  sub_1E465E0B0(v1 + v15, v10, &qword_1ECF74A00, &unk_1E471D5B0);
  v16 = sub_1E4677E30(v14, v10);
  sub_1E465E050(v10, &qword_1ECF74A00, &unk_1E471D5B0);
  if (v16)
  {
    v17 = &qword_1ECF74A00;
    v18 = &unk_1E471D5B0;
    v19 = a1;
  }

  else
  {
    v20 = *(sub_1E4650534(&qword_1ECF74A08, &unk_1E471D890) + 48);
    sub_1E465E0B0(v14, v6, &qword_1ECF74A00, &unk_1E471D5B0);
    sub_1E465E0B0(v1 + v15, &v6[v20], &qword_1ECF74A00, &unk_1E471D5B0);
    swift_storeEnumTagMultiPayload();
    sub_1E46772AC(v6);
    sub_1E465E050(a1, &qword_1ECF74A00, &unk_1E471D5B0);
    v17 = &qword_1ECF74D90;
    v18 = &unk_1E471C8F0;
    v19 = v6;
  }

  sub_1E465E050(v19, v17, v18);
  return sub_1E465E050(v14, &qword_1ECF74A00, &unk_1E471D5B0);
}

void *sub_1E4676038(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  v19 = sub_1E470B35C();
  v3 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E470B33C();
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = sub_1E470A61C();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = sub_1E45E2DE8(0, &qword_1EE2ACCD0, 0x1E69E9610);
  v18[1] = " = %{public}@";
  v18[2] = v11;
  sub_1E470A5FC();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1E467A258(&unk_1EE2ACCE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  sub_1E45E2F14(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0, MEMORY[0x1E69E6328]);
  sub_1E470B4CC();
  v12 = *(v3 + 104);
  v13 = v19;
  v12(v6, *MEMORY[0x1E69E8090], v19);
  v1[2] = sub_1E470B39C();
  sub_1E470A60C();
  sub_1E470B32C();
  v12(v6, *MEMORY[0x1E69E8098], v13);
  v14 = sub_1E470B39C();
  v15 = MEMORY[0x1E69E7CC8];
  v1[3] = v14;
  v1[4] = v15;
  v16 = v2 + *(*v2 + 128);
  *(v16 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v16 + 1) = 0;
  swift_unknownObjectWeakAssign();
  sub_1E467A3DC(v20, v2 + *(*v2 + 120), type metadata accessor for CRDTModelSyncVersion);
  return v2;
}

uint64_t sub_1E46763A0(uint64_t a1, int a2, double a3)
{
  v22 = a2;
  v21 = a1;
  v20 = sub_1E470B35C();
  v5 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E470B33C();
  MEMORY[0x1EEE9AC00](v9, v10);
  v11 = sub_1E470A61C();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = sub_1E45E2DE8(0, &qword_1EE2ACCD0, 0x1E69E9610);
  v19[0] = " = %{public}@";
  v19[1] = v13;
  sub_1E470A5FC();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1E467A258(&unk_1EE2ACCE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  sub_1E45E2F14(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0, MEMORY[0x1E69E6328]);
  sub_1E470B4CC();
  v14 = *(v5 + 104);
  v15 = v20;
  v14(v8, *MEMORY[0x1E69E8090], v20);
  *(v3 + 16) = sub_1E470B39C();
  sub_1E470A60C();
  sub_1E470B32C();
  v14(v8, *MEMORY[0x1E69E8098], v15);
  v16 = sub_1E470B39C();
  v17 = MEMORY[0x1E69E7CC8];
  *(v3 + 24) = v16;
  *(v3 + 32) = v17;
  *(v3 + 72) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v3 + 72) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + 40) = v21;
  *(v3 + 48) = a3;
  *(v3 + 56) = v22;
  return v3;
}

void *sub_1E46766E4(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  v19 = sub_1E470B35C();
  v3 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E470B33C();
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = sub_1E470A61C();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = sub_1E45E2DE8(0, &qword_1EE2ACCD0, 0x1E69E9610);
  v18[1] = " = %{public}@";
  v18[2] = v11;
  sub_1E470A5FC();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1E467A258(&unk_1EE2ACCE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  sub_1E45E2F14(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0, MEMORY[0x1E69E6328]);
  sub_1E470B4CC();
  v12 = *(v3 + 104);
  v13 = v19;
  v12(v6, *MEMORY[0x1E69E8090], v19);
  v1[2] = sub_1E470B39C();
  sub_1E470A60C();
  sub_1E470B32C();
  v12(v6, *MEMORY[0x1E69E8098], v13);
  v14 = sub_1E470B39C();
  v15 = MEMORY[0x1E69E7CC8];
  v1[3] = v14;
  v1[4] = v15;
  v16 = v2 + *(*v2 + 128);
  *(v16 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v16 + 1) = 0;
  swift_unknownObjectWeakAssign();
  sub_1E467A2A0(v20, v2 + *(*v2 + 120));
  return v2;
}

uint64_t sub_1E4676A38(uint64_t a1)
{
  v28 = a1;
  v2 = sub_1E470A61C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E470A5DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1 + *(*v1 + 128);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 1);
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(v1, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  sub_1E470A5CC();
  v33 = nullsub_60;
  v34 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v25 = &v31;
  v31 = sub_1E46C4624;
  v32 = &unk_1F5E63F40;
  v15 = _Block_copy(&aBlock);
  sub_1E470A5FC();
  MEMORY[0x1E69160A0](0, v6, v11, v15);
  _Block_release(v15);
  v16 = *(v3 + 8);
  v23 = v3 + 8;
  v27 = v16;
  v16(v6, v2);
  v26 = *(v8 + 8);
  v26(v11, v7);
  v17 = swift_beginAccess();
  v24 = v2;
  v18 = v1[4];
  MEMORY[0x1EEE9AC00](v17, v19);
  *(&v23 - 2) = v28;

  sub_1E46776AC(sub_1E467A480, (&v23 - 4), v18);

  sub_1E470A5CC();
  v20 = swift_allocObject();
  swift_weakInit();
  v33 = sub_1E467A474;
  v34 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1E46C4624;
  v32 = &unk_1F5E63F90;
  v21 = _Block_copy(&aBlock);

  sub_1E470A5FC();
  MEMORY[0x1E69160A0](0, v6, v11, v21);
  _Block_release(v21);
  v27(v6, v24);
  v26(v11, v7);
}

uint64_t sub_1E4676E38(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1E470A61C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E470A5DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = v10;
    v15 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 8);
    v18 = v15;
    v10 = v14;
    v17(v1, ObjectType, v18);
    swift_unknownObjectRelease();
  }

  v19 = *(v1 + 24);
  sub_1E470A5CC();
  *&v47[16] = nullsub_60;
  *&v47[24] = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *v47 = sub_1E46C4624;
  *&v47[8] = &unk_1F5E63E50;
  v20 = _Block_copy(&aBlock);
  sub_1E470A5FC();
  v40 = v19;
  MEMORY[0x1E69160A0](0, v8, v13, v20);
  _Block_release(v20);
  v21 = *(v5 + 8);
  v43 = v8;
  v44 = v5 + 8;
  v45 = v4;
  v39 = v21;
  v21(v8, v4);
  v22 = *(v10 + 8);
  v41 = v10 + 8;
  v42 = v9;
  v38 = v22;
  v22(v13, v9);
  swift_beginAccess();
  v23 = *(v2 + 32);
  v24 = 1 << *(v23 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v23 + 64);
  v27 = (v24 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v26; result = )
  {
    v30 = i;
LABEL_11:
    v31 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v32 = *(*(v23 + 56) + ((v30 << 10) | (16 * v31)));
    v33 = a1[1];
    aBlock = *a1;
    *v47 = v33;
    *&v47[10] = *(a1 + 26);

    v32(&aBlock);
  }

  while (1)
  {
    v30 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v30 >= v27)
    {

      sub_1E470A5CC();
      v34 = swift_allocObject();
      swift_weakInit();
      *&v47[16] = sub_1E467A310;
      *&v47[24] = v34;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *v47 = sub_1E46C4624;
      *&v47[8] = &unk_1F5E63EA0;
      v35 = _Block_copy(&aBlock);

      v36 = v43;
      sub_1E470A5FC();
      MEMORY[0x1E69160A0](0, v36, v13, v35);
      _Block_release(v35);
      v39(v36, v45);
      v38(v13, v42);
    }

    v26 = *(v23 + 64 + 8 * v30);
    ++i;
    if (v26)
    {
      i = v30;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E46772AC(uint64_t a1)
{
  v28 = a1;
  v2 = sub_1E470A61C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E470A5DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1 + *(*v1 + 128);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 1);
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(v1, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  sub_1E470A5CC();
  v33 = nullsub_60;
  v34 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v25 = &v31;
  v31 = sub_1E46C4624;
  v32 = &unk_1F5E63DD8;
  v15 = _Block_copy(&aBlock);
  sub_1E470A5FC();
  MEMORY[0x1E69160A0](0, v6, v11, v15);
  _Block_release(v15);
  v16 = *(v3 + 8);
  v23 = v3 + 8;
  v27 = v16;
  v16(v6, v2);
  v26 = *(v8 + 8);
  v26(v11, v7);
  v17 = swift_beginAccess();
  v24 = v2;
  v18 = v1[4];
  MEMORY[0x1EEE9AC00](v17, v19);
  *(&v23 - 2) = v28;

  sub_1E46776AC(sub_1E467A204, (&v23 - 4), v18);

  sub_1E470A5CC();
  v20 = swift_allocObject();
  swift_weakInit();
  v33 = sub_1E467A23C;
  v34 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1E46C4624;
  v32 = &unk_1F5E63E28;
  v21 = _Block_copy(&aBlock);

  sub_1E470A5FC();
  MEMORY[0x1E69160A0](0, v6, v11, v21);
  _Block_release(v21);
  v27(v6, v24);
  v26(v11, v7);
}

void sub_1E46776AC(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = *(*(a3 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));

      a1(&v13);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_11;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1E46777E0(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = *(*(a3 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));
      a1(&v13);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;
      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_11;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1E46778D8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 72);
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 16);

      v5(v6, ObjectType, v3);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E46779A8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result + *(*result + 128);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 16);

      v5(v6, ObjectType, v3);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E4677A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 120);
  swift_beginAccess();
  return sub_1E4672390(a1 + v4, a2);
}

uint64_t sub_1E4677B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 120);
  swift_beginAccess();
  return sub_1E465E0B0(a1 + v4, a2, &qword_1ECF74A00, &unk_1E471D5B0);
}

uint64_t sub_1E4677B80(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CRDTModelSyncVersion(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*a3 + 120);
  swift_beginAccess();
  sub_1E4672390(a3 + v9, v8);
  a1(v8);
  return sub_1E4675B48(v8);
}

uint64_t sub_1E4677C50(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 48);
  v6 = *(a3 + 56);
  v14 = *(a3 + 40);
  v15 = v5;
  v16 = v6;
  result = a1(&v14);
  v8 = v14;
  v9 = v15;
  v10 = v16;
  v11 = *(a3 + 40);
  v12 = *(a3 + 48);
  v13 = *(a3 + 56);
  *(a3 + 40) = v14;
  *(a3 + 48) = v9;
  *(a3 + 56) = v10;
  if (v11 != v8 || v12 != v9)
  {
    goto LABEL_8;
  }

  if (v13 == 3)
  {
    if (v10 == 3)
    {
      return result;
    }

LABEL_8:
    *&v17 = v11;
    *(&v17 + 1) = v12;
    v18 = v13;
    v19 = v8;
    v20 = v9;
    v21 = v10;
    v22 = 1;
    return sub_1E4676E38(&v17);
  }

  if (v10 == 3 || v13 != v10)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1E4677D40(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v11 - v7;
  v9 = *(*a3 + 120);
  swift_beginAccess();
  sub_1E465E0B0(a3 + v9, v8, &qword_1ECF74A00, &unk_1E471D5B0);
  a1(v8);
  return sub_1E4675DD8(v8);
}

BOOL sub_1E4677E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRDTModelRevisionInfo(0);
  v58 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v56 = (&v50 - v10);
  v57 = sub_1E4650534(&qword_1ECF749D0, &qword_1E471C430);
  MEMORY[0x1EEE9AC00](v57, v11);
  v13 = &v50 - v12;
  v59 = type metadata accessor for ReadingHistoryModel(0);
  MEMORY[0x1EEE9AC00](v59, v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v50 - v19;
  v21 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v50 - v23;
  v25 = sub_1E4650534(&qword_1ECF74A10, &qword_1E471C918);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v50 - v27;
  v29 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  if (*(a1 + *(v29 + 44)) != *(a2 + *(v29 + 44)))
  {
    return 0;
  }

  v52 = v4;
  v53 = v13;
  v51 = v7;
  v54 = v29;
  v30 = *(v29 + 48);
  v31 = *(v25 + 48);
  sub_1E465E0B0(a1 + v30, v28, &unk_1ECF74C60, &qword_1E471C910);
  v55 = a2;
  sub_1E465E0B0(a2 + v30, &v28[v31], &unk_1ECF74C60, &qword_1E471C910);
  v32 = sub_1E4650534(&qword_1ECF74C70, &unk_1E471C920);
  v33 = *(*(v32 - 8) + 48);
  v34 = v33(v28, 2, v32);
  if (v34)
  {
    if (v34 == 1)
    {
      if (v33(&v28[v31], 2, v32) != 1)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    if (v33(&v28[v31], 2, v32) == 2)
    {
LABEL_9:
      sub_1E465E050(v28, &unk_1ECF74C60, &qword_1E471C910);
      goto LABEL_10;
    }

LABEL_15:
    v42 = &qword_1ECF74A10;
    v43 = &qword_1E471C918;
LABEL_16:
    v44 = v28;
LABEL_17:
    sub_1E465E050(v44, v42, v43);
    return 0;
  }

  sub_1E465E0B0(v28, v24, &unk_1ECF74C60, &qword_1E471C910);
  if (v33(&v28[v31], 2, v32))
  {
    sub_1E467A37C(v24, type metadata accessor for ReadingHistoryModel);
    goto LABEL_15;
  }

  sub_1E467A3DC(v24, v20, type metadata accessor for ReadingHistoryModel);
  sub_1E467A3DC(&v28[v31], v16, type metadata accessor for ReadingHistoryModel);
  sub_1E467A258(&qword_1EE2ADA90, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
  if (sub_1E470AB9C())
  {
    sub_1E467A37C(v16, type metadata accessor for ReadingHistoryModel);
    sub_1E467A37C(v20, type metadata accessor for ReadingHistoryModel);
    v42 = &unk_1ECF74C60;
    v43 = &qword_1E471C910;
    goto LABEL_16;
  }

  v46 = sub_1E470AB9C();
  sub_1E467A37C(v16, type metadata accessor for ReadingHistoryModel);
  sub_1E467A37C(v20, type metadata accessor for ReadingHistoryModel);
  sub_1E465E050(v28, &unk_1ECF74C60, &qword_1E471C910);
  if (v46)
  {
    return 0;
  }

LABEL_10:
  sub_1E467A258(&qword_1EE2ADA90, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
  v35 = v55;
  if (sub_1E470AB9C() & 1) != 0 || (sub_1E470AB9C())
  {
    return 0;
  }

  v36 = *(v54 + 52);
  v37 = *(v57 + 48);
  v38 = v53;
  sub_1E465E0B0(a1 + v36, v53, &qword_1ECF74770, &unk_1E471C900);
  sub_1E465E0B0(v35 + v36, v38 + v37, &qword_1ECF74770, &unk_1E471C900);
  v39 = *(v58 + 48);
  v40 = v52;
  if (v39(v38, 1, v52) != 1)
  {
    v47 = v56;
    sub_1E465E0B0(v38, v56, &qword_1ECF74770, &unk_1E471C900);
    if (v39(v38 + v37, 1, v40) != 1)
    {
      v48 = v38 + v37;
      v49 = v51;
      sub_1E467A3DC(v48, v51, type metadata accessor for CRDTModelRevisionInfo);
      v41 = _s13BookDataStore21CRDTModelRevisionInfoV2eeoiySbAC_ACtFZ_0(v47, v49);
      sub_1E467A37C(v49, type metadata accessor for CRDTModelRevisionInfo);
      sub_1E467A37C(v47, type metadata accessor for CRDTModelRevisionInfo);
      sub_1E465E050(v38, &qword_1ECF74770, &unk_1E471C900);
      return v41;
    }

    sub_1E467A37C(v47, type metadata accessor for CRDTModelRevisionInfo);
    goto LABEL_26;
  }

  if (v39(v38 + v37, 1, v40) != 1)
  {
LABEL_26:
    v42 = &qword_1ECF749D0;
    v43 = &qword_1E471C430;
    v44 = v38;
    goto LABEL_17;
  }

  sub_1E465E050(v38, &qword_1ECF74770, &unk_1E471C900);
  return 1;
}

BookDataStore::ReadingGoals::State __swiftcall ReadingGoals.State.init(booksFinishedGoal:streakDayGoal:)(Swift::Int booksFinishedGoal, Swift::Double streakDayGoal)
{
  *v2 = booksFinishedGoal;
  *(v2 + 8) = streakDayGoal;
  result.streakDayGoal = streakDayGoal;
  result.booksFinishedGoal = booksFinishedGoal;
  return result;
}

BOOL ReadingGoals.State.isDefaultDailyReadingGoal.getter()
{
  v1 = *(v0 + 8);
  if (qword_1EE2AE440 != -1)
  {
    swift_once();
  }

  return v1 == *&qword_1EE2AE450;
}

BOOL ReadingGoals.State.isDefaultYearlyReadingGoal.getter()
{
  v1 = *v0;
  if (qword_1EE2AE440 != -1)
  {
    swift_once();
  }

  return v1 == qword_1EE2AE448;
}

BookDataStore::ReadingGoals::Goal_optional __swiftcall ReadingGoals.Goal.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = BookDataStore_ReadingGoals_Goal_dailyReading;
  }

  else
  {
    v1.value = BookDataStore_ReadingGoals_Goal_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_1E4678720@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

BOOL static ReadingGoals.StateChange.Source.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t ReadingGoals.StateChange.ChangeOrigin.hashValue.getter()
{
  v1 = *v0;
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v1);
  return sub_1E470B91C();
}

double ReadingGoals.StateChange.state.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = result;
  return result;
}

double ReadingGoals.StateChange.init(state:source:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  result = *(a1 + 8);
  v4 = *a2;
  *a3 = *a1;
  *(a3 + 8) = result;
  *(a3 + 16) = v4;
  return result;
}

uint64_t ReadingGoalsController.observable.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 56);
  a1[3] = sub_1E4650534(&qword_1ECF749D8, &qword_1E471C580);
  a1[4] = &protocol witness table for <> ObservableContainer<A>;
  *a1 = v3;
}

double ReadingGoalsController.state.getter@<D0>(double *a1@<X8>)
{
  sub_1E470B37C();
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t ReadingGoalsController.__allocating_init(dataSource:)(void *a1)
{
  v2 = swift_allocObject();
  ReadingGoalsController.init(dataSource:)(a1);
  return v2;
}

void *ReadingGoalsController.init(dataSource:)(void *a1)
{
  v2 = v1;
  sub_1E4658550(a1, (v1 + 2));
  v4 = a1[3];
  v5 = a1[4];
  sub_1E465057C(a1, v4);
  (*(v5 + 8))(&aBlock, v4, v5);
  v6 = aBlock;
  v7 = *&v40;
  v8 = sub_1E470B2CC();
  if (qword_1EE2ADC90 != -1)
  {
    v36 = v8;
    swift_once();
    v8 = v36;
  }

  v9 = qword_1EE2ADC98;
  sub_1E470A0AC(v8, &dword_1E45E0000, qword_1EE2ADC98, "ReadingGoalsController - loaded state", 37, 2, MEMORY[0x1E69E7CC0]);
  sub_1E4650534(&qword_1ECF749D8, &qword_1E471C580);
  swift_allocObject();
  v2[7] = sub_1E46763A0(v6, 2, v7);
  v10 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v11 = v2[5];
  v12 = v2[6];
  sub_1E4679A94((v2 + 2), v11);
  v13 = *(v12 + 24);

  v13(sub_1E4679A8C, v10, v11, v12);
  swift_endAccess();

  sub_1E470B37C();
  v14 = aBlock;
  v15 = *&v40;
  v16 = a1[3];
  v17 = a1[4];
  sub_1E465057C(a1, v16);
  (*(v17 + 8))(v45, v16, v17);
  if (v14 == v45[0] && v15 == *&v45[1] || (v18 = sub_1E470B2CC(), sub_1E470A0AC(v18, &dword_1E45E0000, v9, "ReadingGoalsController - state change before onRemoteChange is registered", 73, 2, MEMORY[0x1E69E7CC0]), v19 = v2[5], v20 = v2[6], v21 = sub_1E465057C(v2 + 2, v19), v22 = *(v19 - 8), v23 = MEMORY[0x1EEE9AC00](v21, v21), v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), (*(v22 + 16))(v25, v23), (*(v20 + 8))(&aBlock, v19, v20), v26 = (*(v22 + 8))(v25, v19), v27 = v2[7], v29 = MEMORY[0x1EEE9AC00](v26, v28), v37[2] = v30, *&v37[3] = v29, v31 = *(v27 + 16), v32 = swift_allocObject(), v32[2] = sub_1E4679AE4, v32[3] = v37, v32[4] = v27, v33 = swift_allocObject(), *(v33 + 16) = sub_1E4679B00, *(v33 + 24) = v32, v43 = sub_1E465DE98, v44 = v33, aBlock = MEMORY[0x1E69E9820], v40 = 1107296256, v41 = sub_1E46679F4, v42 = &unk_1F5E638C0, v34 = _Block_copy(&aBlock), , , , dispatch_sync(v31, v34), _Block_release(v34), LOBYTE(v27) = swift_isEscapingClosureAtFileLocation(), , result = , (v27 & 1) == 0))
  {
    sub_1E4658A0C(a1);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1E4678E64(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = sub_1E470B2CC();
    if (qword_1EE2ADC90 != -1)
    {
      v20 = v3;
      swift_once();
      v3 = v20;
    }

    sub_1E470A0AC(v3, &dword_1E45E0000, qword_1EE2ADC98, "ReadingGoalsController - received onRemoteChange", 48, 2, MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_1E465057C(v2 + 2, v4);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6, v6);
    v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    (*(v5 + 8))(aBlock, v4, v5);
    v11 = (*(v7 + 8))(v10, v4);
    v12 = v2[7];
    v14 = MEMORY[0x1EEE9AC00](v11, v13);
    v21[2] = v15;
    *&v21[3] = v14;
    v16 = *(v12 + 16);
    v17 = swift_allocObject();
    v17[2] = sub_1E467A47C;
    v17[3] = v21;
    v17[4] = v12;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1E467A4D8;
    *(v18 + 24) = v17;
    aBlock[4] = sub_1E467A478;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46679F4;
    aBlock[3] = &unk_1F5E63F18;
    v19 = _Block_copy(aBlock);

    dispatch_sync(v16, v19);
    _Block_release(v19);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t ReadingGoalsController.deinit()
{
  sub_1E4658A0C((v0 + 16));

  return v0;
}

uint64_t ReadingGoalsController.__deallocating_deinit()
{
  sub_1E4658A0C((v0 + 16));

  return swift_deallocClassInstance();
}

double sub_1E4679200@<D0>(double *a1@<X8>)
{
  sub_1E470B37C();
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E4679274@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 56);
  a1[3] = sub_1E4650534(&qword_1ECF749D8, &qword_1E471C580);
  a1[4] = &protocol witness table for <> ObservableContainer<A>;
  *a1 = v3;
}

Swift::Void __swiftcall ReadingGoalsController.changeBooksFinishedGoal(to:)(Swift::Int to)
{
  swift_beginAccess();
  sub_1E4658550(v1 + 16, &aBlock);
  v3 = v14;
  v4 = v15;
  sub_1E465057C(&aBlock, v14);
  (*(v4 + 5))(to, v3, v4);
  sub_1E4658A0C(&aBlock);
  v5 = *(v1 + 56);
  sub_1E470B37C();
  v17[1] = v12;
  v17[0] = to;
  v10[2] = v17;
  v6 = *(v5 + 16);
  v7 = swift_allocObject();
  v7[2] = sub_1E467A46C;
  v7[3] = v10;
  v7[4] = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E467A4D8;
  *(v8 + 24) = v7;
  v15 = sub_1E467A478;
  v16 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1E46679F4;
  v14 = &unk_1F5E63938;
  v9 = _Block_copy(&aBlock);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ReadingGoalsController.changeDailyGoal(to:)(Swift::Double to)
{
  swift_beginAccess();
  sub_1E4658550(v1 + 16, aBlock);
  v3 = v12;
  v4 = v13;
  sub_1E465057C(aBlock, v12);
  (*(v4 + 6))(v3, v4, to);
  sub_1E4658A0C(aBlock);
  v5 = *(v1 + 56);
  sub_1E470B37C();
  v15[0] = aBlock[0];
  *&v15[1] = to;
  v10[2] = v15;
  v6 = *(v5 + 16);
  v7 = swift_allocObject();
  v7[2] = sub_1E4679B24;
  v7[3] = v10;
  v7[4] = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E467A4D8;
  *(v8 + 24) = v7;
  v13 = sub_1E467A478;
  v14 = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46679F4;
  v12 = &unk_1F5E639B0;
  v9 = _Block_copy(aBlock);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ReadingGoalsController.clearData()()
{
  v1 = v0;
  swift_beginAccess();
  sub_1E4658550((v0 + 2), &aBlock);
  v2 = v22;
  v3 = v23;
  sub_1E465057C(&aBlock, v22);
  (*(v3 + 7))(v2, v3);
  sub_1E4658A0C(&aBlock);
  v4 = v0[5];
  v5 = v0[6];
  v6 = sub_1E465057C(v1 + 2, v1[5]);
  v7 = *(v4 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6, v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v10, v8);
  (*(v5 + 8))(&aBlock, v4, v5);
  (*(v7 + 8))(v10, v4);
  v11 = v1[7];
  v17 = aBlock;
  v18 = v20;
  v12 = *(v11 + 16);
  v13 = swift_allocObject();
  v13[2] = sub_1E4679B44;
  v13[3] = v16;
  v13[4] = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1E467A4D8;
  *(v14 + 24) = v13;
  v23 = sub_1E467A478;
  v24 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1E46679F4;
  v22 = &unk_1F5E63A28;
  v15 = _Block_copy(&aBlock);

  dispatch_sync(v12, v15);
  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }
}

BOOL _s13BookDataStore12ReadingGoalsO11StateChangeV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 == 3)
  {
    return v5 == 3;
  }

  else
  {
    return v5 != 3 && v4 == v5;
  }
}

uint64_t sub_1E4679A94(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

double sub_1E4679AE4(uint64_t a1)
{
  result = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = result;
  *(a1 + 16) = 3;
  return result;
}

uint64_t sub_1E4679B0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1E4679B24(uint64_t a1)
{
  v2 = *(v1 + 16);
  result = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 8) = result;
  *(a1 + 16) = 1;
  return result;
}

double sub_1E4679B44(uint64_t a1)
{
  result = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

unint64_t sub_1E4679B60()
{
  result = qword_1ECF749E0;
  if (!qword_1ECF749E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF749E0);
  }

  return result;
}

unint64_t sub_1E4679BFC()
{
  result = qword_1ECF749F8;
  if (!qword_1ECF749F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF749F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadingGoals(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ReadingGoals(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ReadingGoals.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ReadingGoals.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ReadingGoals.StateChange(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ReadingGoals.StateChange(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadingGoals.StateChange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadingGoals.StateChange.Source(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ReadingGoals.StateChange.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1E4679FA0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1E4679FB4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

double sub_1E467A138@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 8) = result;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1E467A194(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E467A258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E467A2A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E467A318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRDTModelSyncVersion(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E467A37C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E467A3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E467A4DC()
{
  v1 = v0;
  v2 = type metadata accessor for PBPropertyBookImpressionParam(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v66 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  MEMORY[0x1EEE9AC00](v64, v5);
  v65 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for PBPropertySingleFloatParam(0);
  MEMORY[0x1EEE9AC00](v62, v7);
  v63 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Params = type metadata accessor for PBPropertyBookReadParams(0);
  MEMORY[0x1EEE9AC00](Params - 8, v10);
  v67 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  *&v70 = &v62 - v14;
  v15 = sub_1E4709CCC();
  v68 = *(v15 - 8);
  v69 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v62 - v21;
  v23 = sub_1E4709E7C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0xE000000000000000;
  v72 = 0;
  v73 = 0xE000000000000000;
  v29 = type metadata accessor for PBPropertyValue(0);
  v30 = (v0 + v29[8]);
  v31 = v30[1];
  if (v31)
  {
    v32 = *v30;
  }

  else
  {
    v32 = 0;
  }

  if (v31)
  {
    v28 = v30[1];
  }

  MEMORY[0x1E6915D10](v32, v28);

  MEMORY[0x1E6915D10](32, 0xE100000000000000);
  v71 = *v0;
  v33 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v33);

  MEMORY[0x1E6915D10](32, 0xE100000000000000);
  sub_1E465E0B0(v0 + v29[7], v22, &qword_1ECF74A38, &unk_1E471EB00);
  v34 = *(v24 + 48);
  if (v34(v22, 1, v23) == 1)
  {
    sub_1E4709E6C();
    if (v34(v22, 1, v23) != 1)
    {
      sub_1E465E050(v22, &qword_1ECF74A38, &unk_1E471EB00);
    }
  }

  else
  {
    (*(v24 + 32))(v27, v22, v23);
  }

  sub_1E4709E5C();
  (*(v24 + 8))(v27, v23);
  sub_1E467B1AC();
  v35 = v69;
  v36 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v36);

  (*(v68 + 8))(v18, v35);
  v37 = v72;
  v38 = v73;
  v39 = v70;
  sub_1E465E0B0(v1 + v29[5], v70, &qword_1ECF74A30, &unk_1E471EB10);
  v40 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
  {
    goto LABEL_11;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v46 = v67;
      sub_1E467B204(v39, v67, type metadata accessor for PBPropertyBookReadParams);
      v72 = 0;
      v73 = 0xE000000000000000;
      sub_1E470B5CC();

      v72 = 0x736572676F727020;
      v73 = 0xEA00000000003D73;
      sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
      v47 = swift_allocObject();
      v70 = xmmword_1E471BA00;
      *(v47 + 16) = xmmword_1E471BA00;
      v48 = *(v46 + 1);
      v49 = MEMORY[0x1E69E64A8];
      *(v47 + 56) = MEMORY[0x1E69E6448];
      *(v47 + 64) = v49;
      *(v47 + 32) = v48;
      v50 = sub_1E470AF3C();
      MEMORY[0x1E6915D10](v50);

      MEMORY[0x1E6915D10](0x6C706D6153736920, 0xEA00000000003D65);
      v51 = swift_allocObject();
      *(v51 + 16) = v70;
      v52 = *v46;
      v53 = sub_1E4663DE4();
      v54 = 20302;
      if (v52)
      {
        v54 = 5457241;
      }

      *(v51 + 56) = MEMORY[0x1E69E6158];
      *(v51 + 64) = v53;
      if (v52)
      {
        v55 = 0xE300000000000000;
      }

      else
      {
        v55 = 0xE200000000000000;
      }

      *(v51 + 32) = v54;
      *(v51 + 40) = v55;
      v56 = sub_1E470AF3C();
      MEMORY[0x1E6915D10](v56);

      v41 = v72;
      v42 = v73;
      v57 = type metadata accessor for PBPropertyBookReadParams;
      v58 = v46;
      goto LABEL_33;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v44 = v65;
      sub_1E467B204(v39, v65, type metadata accessor for PBPropertyMarkedAsFinishedParam);
      v72 = 0;
      v73 = 0xE000000000000000;
      MEMORY[0x1E6915D10](0x3D65756C617620, 0xE700000000000000);
      sub_1E470B66C();
      v41 = v72;
      v42 = v73;
      v45 = type metadata accessor for PBPropertyMarkedAsFinishedParam;
    }

    else
    {
      v44 = v66;
      sub_1E467B204(v39, v66, type metadata accessor for PBPropertyBookImpressionParam);
      v72 = 0;
      v73 = 0xE000000000000000;
      sub_1E470B5CC();

      v72 = 0xD000000000000026;
      v73 = 0x80000001E47187A0;
      if (*v44)
      {
        v59 = 1702195828;
      }

      else
      {
        v59 = 0x65736C6166;
      }

      if (*v44)
      {
        v60 = 0xE400000000000000;
      }

      else
      {
        v60 = 0xE500000000000000;
      }

      MEMORY[0x1E6915D10](v59, v60);

      v41 = v72;
      v42 = v73;
      v45 = type metadata accessor for PBPropertyBookImpressionParam;
    }

LABEL_32:
    v57 = v45;
    v58 = v44;
LABEL_33:
    sub_1E467B26C(v58, v57);
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload)
  {
    v44 = v63;
    sub_1E467B204(v39, v63, type metadata accessor for PBPropertySingleFloatParam);
    v72 = 0;
    v73 = 0xE000000000000000;
    MEMORY[0x1E6915D10](0x3D65756C617620, 0xE700000000000000);
    sub_1E470B66C();
    v41 = v72;
    v42 = v73;
    v45 = type metadata accessor for PBPropertySingleFloatParam;
    goto LABEL_32;
  }

  sub_1E467B26C(v39, type metadata accessor for PBPropertyValue.OneOf_Params);
LABEL_11:
  v41 = 0;
  v42 = 0xE000000000000000;
LABEL_34:
  v72 = v37;
  v73 = v38;
  MEMORY[0x1E6915D10](v41, v42);

  return v72;
}

uint64_t sub_1E467ADA8(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for PBPropertyValue(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4650534(&qword_1ECF74A28, &unk_1E471E790);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for PBPropertyConfiguration(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = 0;
  v36 = 0xE000000000000000;
  v17 = type metadata accessor for PBPropertyBundle(0);
  sub_1E465E0B0(v2 + *(v17 + 28), v11, &qword_1ECF74A28, &unk_1E471E790);
  v18 = *(v13 + 48);
  if (v18(v11, 1, v12) == 1)
  {
    *v16 = 0;
    v16[1] = 0;
    v16[2] = 0;
    v16[3] = 0xE000000000000000;
    v16[4] = 0;
    _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
    if (v18(v11, 1, v12) != 1)
    {
      sub_1E465E050(v11, &qword_1ECF74A28, &unk_1E471E790);
    }
  }

  else
  {
    sub_1E467B204(v11, v16, type metadata accessor for PBPropertyConfiguration);
  }

  v19 = v16[2];
  v20 = v16[3];

  sub_1E467B26C(v16, type metadata accessor for PBPropertyConfiguration);
  MEMORY[0x1E6915D10](v19, v20);

  result = MEMORY[0x1E6915D10](32, 0xE100000000000000);
  v23 = *v2;
  v24 = *(*v2 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0xE000000000000000;
    while (v26 < *(v23 + 16))
    {
      sub_1E467B148(v23 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v26++, v7, v22);
      v33 = v25;
      v34 = v27;
      v28 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v28 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        v29 = 8236;
      }

      else
      {
        v29 = 0;
      }

      if (v28)
      {
        v30 = 0xE200000000000000;
      }

      else
      {
        v30 = 0xE000000000000000;
      }

      MEMORY[0x1E6915D10](v29, v30);

      v31 = sub_1E467A4DC();
      MEMORY[0x1E6915D10](v31);

      v25 = v33;
      v32 = v34;
      sub_1E467B26C(v7, type metadata accessor for PBPropertyValue);

      v27 = v32;
      if (v24 == v26)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v25 = 0;
    v32 = 0xE000000000000000;
LABEL_19:
    MEMORY[0x1E6915D10](v25, v32);

    return v35;
  }

  return result;
}

uint64_t sub_1E467B148(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for PBPropertyValue(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E467B1AC()
{
  result = qword_1ECF741E0;
  if (!qword_1ECF741E0)
  {
    sub_1E4709CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF741E0);
  }

  return result;
}

uint64_t sub_1E467B204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E467B26C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ReadingHistory.Day.description.getter()
{
  v1 = *(v0 + 16);
  sub_1E470B5CC();

  v2 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v2);

  MEMORY[0x1E6915D10](0x3A6C616F67202CLL, 0xE700000000000000);
  v3 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v3);

  MEMORY[0x1E6915D10](0x6B6165727473202CLL, 0xE90000000000003ALL);
  if (v1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1E6915D10](v4, v5);

  MEMORY[0x1E6915D10](125, 0xE100000000000000);
  return 0x3A656D69747BLL;
}

BookDataStore::ReadingHistory::Day __swiftcall ReadingHistory.Day.init(readingTime:goal:isStreakDay:)(Swift::Int readingTime, Swift::Int goal, Swift::Bool isStreakDay)
{
  *v3 = readingTime;
  *(v3 + 8) = goal;
  *(v3 + 16) = isStreakDay;
  result.goal = goal;
  result.readingTime = readingTime;
  result.isStreakDay = isStreakDay;
  return result;
}

uint64_t static ReadingHistory.Day.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}