uint64_t sub_54A70(uint64_t a1, unsigned __int8 a2)
{
  sub_755E8();
}

Swift::Int sub_54BD0(uint64_t a1, unsigned __int8 a2)
{
  sub_75AE8();
  sub_755E8();

  return sub_75B08();
}

unint64_t sub_54D8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_55FD0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_54DBC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x4449574F52;
  v5 = 0xEE0065636E616E65;
  v6 = 0x766F7250636E7973;
  if (v2 != 6)
  {
    v6 = 0x6E656449636E7973;
    v5 = 0xEC00000079746974;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6E6F6973726576;
  if (v2 != 4)
  {
    v8 = 0x4164657461657263;
    v7 = 0xE900000000000074;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED00007865646E49;
  v10 = 0x6568636143646E65;
  if (v2 != 2)
  {
    v10 = 0xD000000000000016;
    v9 = 0x80000000000773B0;
  }

  if (*v1)
  {
    v4 = 0x6361437472617473;
    v3 = 0xEF7865646E496568;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_550E0()
{
  result = *(v0 + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity);
  v2 = *(v0 + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity + 8);
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity);
  }

  if (v2 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity + 8);
  }

  v5 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v5)
    {
      sub_11760(result, v2);
      sub_FB28(v3, v4);
      return BYTE6(v4);
    }

    goto LABEL_14;
  }

  if (v5 != 2)
  {
    sub_11760(result, v2);
    sub_FB28(v3, v4);
    return 0;
  }

  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  sub_11760(result, v2);
  sub_FB28(v3, v4);
  result = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_14:
    sub_11760(result, v2);
    result = sub_FB28(v3, v4);
    if (__OFSUB__(HIDWORD(v3), v3))
    {
      __break(1u);
    }

    else
    {
      return HIDWORD(v3) - v3;
    }
  }

  return result;
}

void sub_552C4()
{
  sub_38F8(&qword_8F180, &qword_79D40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_7A7F0;
  v1 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v2 = sub_75598();
  v3 = sub_75598();
  v4 = [v1 initWithName:v2 columnType:v3 keyPathType:3];

  *(v0 + 32) = v4;
  v5 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v6 = sub_75598();
  v7 = sub_75598();
  v8 = [v5 initWithName:v6 columnType:v7 keyPathType:3];

  *(v0 + 40) = v8;
  v9 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v10 = sub_75598();
  v11 = sub_75598();
  v12 = [v9 initWithName:v10 columnType:v11 keyPathType:3];

  *(v0 + 48) = v12;
  v13 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v14 = sub_75598();
  v15 = sub_75598();
  v16 = [v13 initWithName:v14 columnType:v15 keyPathType:4];

  *(v0 + 56) = v16;
  v17 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v18 = sub_75598();
  v19 = sub_75598();
  v20 = [v17 initWithName:v18 columnType:v19 keyPathType:3];

  *(v0 + 64) = v20;
  v21 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v22 = sub_75598();
  v23 = sub_75598();
  v24 = [v21 initWithName:v22 columnType:v23 keyPathType:1];

  *(v0 + 72) = v24;
  v25 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v26 = sub_75598();
  v27 = sub_75598();
  v28 = [v25 initWithName:v26 columnType:v27 keyPathType:3];

  *(v0 + 80) = v28;
  v29 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v30 = sub_75598();
  v31 = sub_75598();
  v32 = [v29 initWithName:v30 columnType:v31 keyPathType:3];

  *(v0 + 88) = v32;
  qword_90040 = v0;
}

uint64_t static PropertyRecordCheckpointEntity.indices(with:)()
{
  sub_38F8(&qword_8F180, &qword_79D40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_79FD0;
  v1 = objc_allocWithZone(HDSQLiteEntityIndex);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_75598();
  isa = sub_75678().super.isa;
  v5 = [v1 initWithEntity:ObjCClassFromMetadata name:v3 columns:isa];

  *(v0 + 32) = v5;
  return v0;
}

id PropertyRecordCheckpointEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PropertyRecordCheckpointEntity();
  return objc_msgSendSuper2(&v4, "initWithPersistentID:", a1);
}

id PropertyRecordCheckpointEntity.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PropertyRecordCheckpointEntity();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_55A30(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void *sub_55A6C()
{
  sub_67C58(0, 7, 0);
  v0 = 0;
  result = _swiftEmptyArrayStorage;
  do
  {
    v2 = *(&off_85710 + v0 + 32);
    if (v2 == 6)
    {
      v3 = 0x766F7250636E7973;
    }

    else
    {
      v3 = 0x6E656449636E7973;
    }

    if (v2 == 6)
    {
      v4 = 0xEE0065636E616E65;
    }

    else
    {
      v4 = 0xEC00000079746974;
    }

    if (v2 == 4)
    {
      v5 = 0x6E6F6973726576;
    }

    else
    {
      v5 = 0x4164657461657263;
    }

    if (v2 == 4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000074;
    }

    if (*(&off_85710 + v0 + 32) <= 5u)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xD000000000000016;
    if (v2 == 2)
    {
      v7 = 0x6568636143646E65;
      v8 = 0xED00007865646E49;
    }

    else
    {
      v8 = 0x80000000000773B0;
    }

    if (*(&off_85710 + v0 + 32))
    {
      v9 = 0x6361437472617473;
    }

    else
    {
      v9 = 0x4449574F52;
    }

    if (*(&off_85710 + v0 + 32))
    {
      v10 = 0xEF7865646E496568;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    if (*(&off_85710 + v0 + 32) <= 1u)
    {
      v7 = v9;
      v8 = v10;
    }

    if (*(&off_85710 + v0 + 32) <= 3u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (*(&off_85710 + v0 + 32) <= 3u)
    {
      v12 = v8;
    }

    else
    {
      v12 = v4;
    }

    v16 = result;
    v14 = result[2];
    v13 = result[3];
    if (v14 >= v13 >> 1)
    {
      sub_67C58((v13 > 1), v14 + 1, 1);
      result = v16;
    }

    ++v0;
    result[2] = v14 + 1;
    v15 = &result[2 * v14];
    v15[4] = v11;
    v15[5] = v12;
  }

  while (v0 != 7);
  return result;
}

char *_s25FitnessIntelligencePlugin30PropertyRecordCheckpointEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0()
{
  sub_75908(34);

  v22._countAndFlagsBits = 0xD000000000000033;
  v22._object = 0x80000000000791C0;
  sub_75608(v22);
  v23._countAndFlagsBits = 10272;
  v23._object = 0xE200000000000000;
  sub_75608(v23);
  if (qword_8EA00 != -1)
  {
    swift_once();
  }

  v0 = qword_90040;
  if (qword_90040 >> 62)
  {
    v1 = sub_759D8();
  }

  else
  {
    v1 = *(&dword_10 + (qword_90040 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v1)
  {
    goto LABEL_14;
  }

  result = sub_67C58(0, v1 & ~(v1 >> 63), 0);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v4 = sub_75928();
      }

      else
      {
        v4 = *(v0 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = [v4 name];
      v7 = sub_755A8();
      v9 = v8;

      v20 = v7;
      v21 = v9;
      v24._countAndFlagsBits = 32;
      v24._object = 0xE100000000000000;
      sub_75608(v24);
      v10 = [v5 columnType];
      v11 = sub_755A8();
      v13 = v12;

      v25._countAndFlagsBits = v11;
      v25._object = v13;
      sub_75608(v25);

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_67C58((v14 > 1), v15 + 1, 1);
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v20;
      v16[5] = v21;
    }

    while (v1 != v3);
LABEL_14:
    sub_38F8(&qword_8F280, &unk_7ABA0);
    sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0, &protocol conformance descriptor for [A]);
    v17 = sub_75538();
    v19 = v18;

    v26._countAndFlagsBits = v17;
    v26._object = v19;
    sub_75608(v26);

    v27._countAndFlagsBits = 41;
    v27._object = 0xE100000000000000;
    sub_75608(v27);
    return 0xD00000000000001BLL;
  }

  __break(1u);
  return result;
}

unint64_t sub_55FD0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_85B68;
  v6._object = a2;
  v4 = sub_75A18(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t *sub_5601C(uint64_t *a1)
{
  if (qword_8EA00 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  v2 = qword_90040;
  v3 = qword_90040 >> 62;
  if (qword_90040 >> 62)
  {
    if (qword_90040 < 0)
    {
      v1 = qword_90040;
    }

    else
    {
      v1 = (qword_90040 & 0xFFFFFFFFFFFFFF8);
    }

    *a1 = sub_759D8();
    v4 = sub_759D8();
  }

  else
  {
    v4 = *(&dword_10 + (qword_90040 & 0xFFFFFFFFFFFFFF8));
    *a1 = v4;
  }

  if ((v4 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v1 = swift_slowAlloc();
  if (v3)
  {
    sub_759D8();
    v5 = sub_759D8();

    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_15:
    sub_3AD4(v2);

    goto LABEL_9;
  }

LABEL_9:
  sub_7688(0, &qword_8FB90, HDSQLiteEntityColumnDefinitionObject_ptr);
  swift_arrayInitWithCopy();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t type metadata accessor for PropertyRecordCheckpointEntity.EntityWrapper(uint64_t a1)
{
  result = qword_8FB48;
  if (!qword_8FB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5620C(uint64_t a1)
{
  sub_562A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_562A4(uint64_t a1)
{
  if (!qword_8FB58)
  {
    sub_751D8();
    v1 = sub_75848();
    if (!v2)
    {
      atomic_store(v1, &qword_8FB58);
    }
  }
}

uint64_t getEnumTagSinglePayload for PropertyRecordCheckpointEntity.Keys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PropertyRecordCheckpointEntity.Keys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_56494()
{
  result = qword_8FB70;
  if (!qword_8FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FB70);
  }

  return result;
}

unint64_t sub_564E8(uint64_t a1)
{
  *(a1 + 8) = sub_56518();
  result = sub_5656C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_56518()
{
  result = qword_8FB78;
  if (!qword_8FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FB78);
  }

  return result;
}

unint64_t sub_5656C()
{
  result = qword_8FB80;
  if (!qword_8FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FB80);
  }

  return result;
}

uint64_t sub_565C0(uint64_t a1)
{
  v2 = sub_38F8(&qword_8EB18, &qword_7A950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_56670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_583E0(a4, a5, a6);
  }

  while ((sub_75588() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_567C0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v4 = sub_754B8();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_74B88();
  __chkstk_darwin(v6 - 8);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_74CA8();
  v33 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v13 = __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  v18 = sub_38F8(&unk_8F070, &qword_79F50);
  __chkstk_darwin(v18 - 8);
  v20 = &v33 - v19;
  v21 = sub_38F8(&unk_8FD00, &qword_7A260);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v33 - v23;
  sub_56DA8(a2, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_3D48(v20, &unk_8F070, &qword_79F50);
    v28 = 1;
    v29 = v40;
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
    v25 = sub_75098();
    v27 = v26;
    sub_74BC8();
    sub_FB28(v25, v27);
    sub_75088();
    v32 = *(v33 + 16);
    v32(v39, v17, v8);
    sub_3D48(v17, &qword_8F000, &qword_7A5D0);
    sub_75088();
    v32(v34, &v15[*(v12 + 36)], v8);
    sub_3D48(v15, &qword_8F000, &qword_7A5D0);
    sub_75058();
    sub_5978(v42, v41);
    v29 = v40;
    sub_74AC8();
    sub_3940(v42);
    (*(v22 + 8))(v24, v21);
    v28 = 0;
  }

  v30 = sub_74AD8();
  return (*(*(v30 - 8) + 56))(v29, v28, 1, v30);
}

uint64_t sub_56DA8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_754B8();
  v139 = *(v5 - 8);
  v140 = v5;
  __chkstk_darwin(v5);
  v7 = v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_38F8(&qword_8F288, &qword_7A128);
  v8 = __chkstk_darwin(v129);
  v128 = v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v126 = v116 - v10;
  v137 = sub_74CA8();
  v127 = *(v137 - 8);
  v11 = __chkstk_darwin(v137);
  v136 = v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v138 = v116 - v13;
  v122 = sub_38F8(&qword_8F000, &qword_7A5D0);
  __chkstk_darwin(v122);
  v124 = v116 - v14;
  v15 = sub_74B88();
  v125 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v123 = v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v116 - v18;
  v20 = sub_38F8(&qword_8FBB0, &qword_7A958);
  v21 = __chkstk_darwin(v20 - 8);
  v135 = v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v142 = v116 - v23;
  v24 = sub_38F8(&qword_8FBB8, &qword_7A960);
  v25 = __chkstk_darwin(v24 - 8);
  v134 = v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v145 = v116 - v27;
  v28 = sub_38F8(&qword_8FBC0, &unk_7A968);
  v29 = __chkstk_darwin(v28 - 8);
  v31 = v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v143 = v116 - v32;
  v33 = sub_38F8(&qword_8F290, &qword_7A130);
  v34 = __chkstk_darwin(v33 - 8);
  v133 = v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v144 = v116 - v36;
  v37 = sub_74BD8();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = v116 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_38F8(&qword_8F298, &qword_7A138);
  v42 = __chkstk_darwin(v41 - 8);
  v132 = v116 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v146 = v116 - v44;
  sub_6E030(1);
  v131 = HDSQLiteColumnAsInt64();
  sub_6E030(2);
  v130 = HDSQLiteColumnAsInt64();
  sub_6E030(10);
  v121 = HDSQLiteColumnAsInt64();
  sub_6E030(9);
  v45 = HDSQLiteColumnAsData();
  if (!v45)
  {

LABEL_15:
    sub_75378();
    v67 = sub_754A8();
    v68 = sub_75718();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_0, v67, v68, "Failed to initialize FitnessPlusPropertyRecordEntity from row: no propertyData", v69, 2u);
    }

    (*(v139 + 8))(v7, v140);
    v70 = 1;
    goto LABEL_37;
  }

  v141 = a2;
  v46 = a3;
  v119 = v31;
  v118 = v15;
  v47 = v45;
  v48 = sub_748C8();
  v50 = v49;

  sub_6E030(8);
  v51 = HDSQLiteColumnAsString();
  if (!v51)
  {

    sub_FB28(v48, v50);
    a3 = v46;
    goto LABEL_15;
  }

  v52 = v51;
  v139 = v48;
  v140 = v50;
  v120 = v19;
  v117 = v46;
  v116[1] = sub_755A8();
  v116[0] = v53;

  v54 = *(v38 + 104);
  v54(v40, enum case for FitnessPlusPropertyDimensionsField.monthOfYear(_:), v37);
  v55 = v141;
  v56 = sub_56670(v40, v141, &type metadata accessor for FitnessPlusPropertyDimensionsField, &qword_8FBC8, &type metadata accessor for FitnessPlusPropertyDimensionsField, &protocol conformance descriptor for FitnessPlusPropertyDimensionsField);
  v57 = *(v38 + 8);
  v57(v40, v37);
  if (v56 && (sub_6E030(3), (v58 = HDSQLiteColumnAsString()) != 0))
  {
    v59 = v58;
    sub_755A8();

    v55 = v141;
    sub_74CF8();
  }

  else
  {
    v60 = sub_74D08();
    (*(*(v60 - 8) + 56))(v146, 1, 1, v60);
  }

  v54(v40, enum case for FitnessPlusPropertyDimensionsField.dayOfWeek(_:), v37);
  v61 = sub_56670(v40, v55, &type metadata accessor for FitnessPlusPropertyDimensionsField, &qword_8FBC8, &type metadata accessor for FitnessPlusPropertyDimensionsField, &protocol conformance descriptor for FitnessPlusPropertyDimensionsField);
  v57(v40, v37);
  v62 = v143;
  if (v61 && (sub_6E030(4), (v63 = HDSQLiteColumnAsString()) != 0))
  {
    v64 = v63;
    sub_755A8();

    v55 = v141;
    v62 = v143;
    sub_753C8();
  }

  else
  {
    v65 = sub_753D8();
    (*(*(v65 - 8) + 56))(v144, 1, 1, v65);
  }

  v54(v40, enum case for FitnessPlusPropertyDimensionsField.hourOfDay(_:), v37);
  v66 = sub_56670(v40, v55, &type metadata accessor for FitnessPlusPropertyDimensionsField, &qword_8FBC8, &type metadata accessor for FitnessPlusPropertyDimensionsField, &protocol conformance descriptor for FitnessPlusPropertyDimensionsField);
  v57(v40, v37);
  if (v66)
  {
    sub_6E030(5);
    HDSQLiteColumnAsInt64();
    sub_753E8();
  }

  else
  {
    v71 = sub_753F8();
    (*(*(v71 - 8) + 56))(v62, 1, 1, v71);
  }

  v54(v40, enum case for FitnessPlusPropertyDimensionsField.modalityKind(_:), v37);
  v72 = sub_56670(v40, v55, &type metadata accessor for FitnessPlusPropertyDimensionsField, &qword_8FBC8, &type metadata accessor for FitnessPlusPropertyDimensionsField, &protocol conformance descriptor for FitnessPlusPropertyDimensionsField);
  v57(v40, v37);
  if (v72 && (sub_6E030(6), (v73 = HDSQLiteColumnAsString()) != 0))
  {
    v74 = v73;
    sub_755A8();

    v55 = v141;
    v62 = v143;
    sub_74A98();
  }

  else
  {
    v75 = sub_74AA8();
    (*(*(v75 - 8) + 56))(v145, 1, 1, v75);
  }

  v54(v40, enum case for FitnessPlusPropertyDimensionsField.trainerIdentifiers(_:), v37);
  v76 = sub_56670(v40, v55, &type metadata accessor for FitnessPlusPropertyDimensionsField, &qword_8FBC8, &type metadata accessor for FitnessPlusPropertyDimensionsField, &protocol conformance descriptor for FitnessPlusPropertyDimensionsField);

  v57(v40, v37);
  if (v76)
  {
    sub_6E030(7);
    v77 = HDSQLiteColumnAsString();
    v78 = v138;
    v79 = v146;
    if (v77)
    {
      v80 = v77;
      v81 = sub_755A8();
      v83 = v82;

      v147[0] = 44;
      v147[1] = 0xE100000000000000;
      __chkstk_darwin(v84);
      v115 = v147;
      v85 = sub_57FC8(0x7FFFFFFFFFFFFFFFLL, 1, sub_58388, &v116[-4], v81, v83, v116);
      v86 = v85[2];
      if (v86)
      {
        v147[0] = _swiftEmptyArrayStorage;
        sub_67C58(0, v86, 0);
        v87 = v147[0];
        v88 = v85 + 7;
        do
        {

          v89 = sub_755D8();
          v91 = v90;

          v147[0] = v87;
          v93 = *(v87 + 16);
          v92 = *(v87 + 24);
          if (v93 >= v92 >> 1)
          {
            sub_67C58((v92 > 1), v93 + 1, 1);
            v87 = v147[0];
          }

          *(v87 + 16) = v93 + 1;
          v94 = v87 + 16 * v93;
          *(v94 + 32) = v89;
          *(v94 + 40) = v91;
          v88 += 4;
          --v86;
        }

        while (v86);

        v78 = v138;
        v62 = v143;
      }

      else
      {
      }

      v97 = v144;
      sub_74B98();
      v95 = 0;
      v96 = v136;
      v79 = v146;
    }

    else
    {
      v95 = 1;
      v97 = v144;
      v96 = v136;
    }
  }

  else
  {
    v95 = 1;
    v96 = v136;
    v78 = v138;
    v79 = v146;
    v97 = v144;
  }

  v98 = sub_74BB8();
  v99 = v142;
  (*(*(v98 - 8) + 56))(v142, v95, 1, v98);
  sub_FCE0(v79, v132, &qword_8F298, &qword_7A138);
  sub_FCE0(v97, v133, &qword_8F290, &qword_7A130);
  sub_FCE0(v62, v119, &qword_8FBC0, &unk_7A968);
  sub_FCE0(v145, v134, &qword_8FBB8, &qword_7A960);
  sub_FCE0(v99, v135, &qword_8FBB0, &qword_7A958);
  sub_74B28();
  sub_74CB8();
  sub_74CB8();
  sub_583E0(&qword_8F2A0, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
  v100 = v137;
  result = sub_75568();
  if (result)
  {
    v102 = v127;
    v103 = *(v127 + 32);
    v104 = v126;
    v103(v126, v78, v100);
    v105 = v129;
    v103((v104 + *(v129 + 48)), v96, v100);
    v106 = v128;
    sub_FCE0(v104, v128, &qword_8F288, &qword_7A128);
    v107 = v105;
    v108 = *(v105 + 48);
    v109 = v124;
    v103(v124, v106, v100);
    v110 = *(v102 + 8);
    v110(v106 + v108, v100);
    sub_14C60(v104, v106);
    v103(&v109[*(v122 + 36)], (v106 + *(v107 + 48)), v100);
    v110(v106, v100);
    v111 = v125;
    v112 = v120;
    v113 = v118;
    (*(v125 + 16))(v123, v120, v118);
    sub_74AD8();
    v115 = sub_583E0(&qword_8F900, &type metadata accessor for FitnessPlusPropertyRecord, &protocol conformance descriptor for FitnessPlusPropertyRecord);
    a3 = v117;
    sub_75078();
    (*(v111 + 8))(v112, v113);
    sub_3D48(v142, &qword_8FBB0, &qword_7A958);
    sub_3D48(v145, &qword_8FBB8, &qword_7A960);
    sub_3D48(v143, &qword_8FBC0, &unk_7A968);
    sub_3D48(v144, &qword_8F290, &qword_7A130);
    sub_3D48(v146, &qword_8F298, &qword_7A138);
    v70 = 0;
LABEL_37:
    v114 = sub_38F8(&unk_8FD00, &qword_7A260);
    return (*(*(v114 - 8) + 56))(a3, v70, 1, v114);
  }

  __break(1u);
  return result;
}

void *sub_57FC8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = sub_75638();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_673C0(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_673C0((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_75628();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_755F8();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_755F8();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_75638();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_673C0(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_75638();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_673C0(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_673C0((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_755F8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_58388(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_75A68() & 1;
  }
}

uint64_t sub_583E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_58428(sqlite3_stmt *a1)
{
  v2 = sub_74C98();

  return sqlite3_bind_int64(a1, 1, v2);
}

unint64_t sub_58470()
{
  result = qword_8FBE0;
  if (!qword_8FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FBE0);
  }

  return result;
}

uint64_t sub_5850C(uint64_t a1)
{
  result = sub_59144(&qword_8FC38, type metadata accessor for WorkoutPropertyRecordEntity, &unk_7A9BC);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_58568()
{
  result = qword_8FC40;
  if (!qword_8FC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FC40);
  }

  return result;
}

uint64_t sub_585BC(uint64_t a1, sqlite3_stmt *a2, uint64_t a3)
{
  v5 = sub_38F8(&qword_8FC60, &qword_7A9D8);
  __chkstk_darwin(v5 - 8);
  v68 = &v67 - v6;
  v7 = sub_38F8(&qword_8FBC0, &unk_7A968);
  __chkstk_darwin(v7 - 8);
  v9 = &v67 - v8;
  v10 = sub_38F8(&qword_8F290, &qword_7A130);
  __chkstk_darwin(v10 - 8);
  v12 = &v67 - v11;
  v13 = sub_38F8(&qword_8F298, &qword_7A138);
  __chkstk_darwin(v13 - 8);
  v15 = &v67 - v14;
  sub_75208();
  v16 = sub_74D08();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_3D48(v15, &qword_8F298, &qword_7A138);
    v70 = 0u;
    v71 = 0u;
    v72 = 0;
  }

  else
  {
    *(&v71 + 1) = v16;
    v72 = sub_59144(&qword_8F670, &type metadata accessor for MonthOfYear, &protocol conformance descriptor for MonthOfYear);
    v18 = sub_5914(&v70);
    (*(v17 + 32))(v18, v15, v16);
  }

  sub_38F8(&qword_8F658, &unk_7AD30);
  inited = swift_initStackObject();
  v20 = inited;
  v69 = xmmword_79BF0;
  *(inited + 16) = xmmword_79BF0;
  if (*(&v71 + 1))
  {
    sub_5978(&v70, inited + 32);
  }

  else
  {
    v21 = v72;
    v22 = v71;
    *(inited + 32) = v70;
    *(inited + 48) = v22;
    *(inited + 64) = v21;
  }

  v23 = sub_6C4F0(a2, a3, v20);
  swift_setDeallocating();
  if (*(v20 + 56))
  {
    sub_3940((v20 + 32));
  }

  if (*(&v71 + 1))
  {
    sub_3940(&v70);
  }

  sub_75248();
  v24 = sub_753D8();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v12, 1, v24) == 1)
  {
    sub_3D48(v12, &qword_8F290, &qword_7A130);
    v70 = 0u;
    v71 = 0u;
    v72 = 0;
  }

  else
  {
    *(&v71 + 1) = v24;
    v72 = sub_59144(&qword_8F668, &type metadata accessor for DayOfWeek, &protocol conformance descriptor for DayOfWeek);
    v26 = sub_5914(&v70);
    (*(v25 + 32))(v26, v12, v24);
  }

  v27 = swift_initStackObject();
  v28 = v27;
  *(v27 + 16) = v69;
  if (*(&v71 + 1))
  {
    sub_5978(&v70, v27 + 32);
  }

  else
  {
    v29 = v72;
    v30 = v71;
    *(v27 + 32) = v70;
    *(v27 + 48) = v30;
    *(v27 + 64) = v29;
  }

  v31 = sub_6C4F0(a2, v23, v28);
  swift_setDeallocating();
  if (*(v28 + 56))
  {
    sub_3940((v28 + 32));
  }

  if (*(&v71 + 1))
  {
    sub_3940(&v70);
  }

  sub_75258();
  v32 = sub_753F8();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v9, 1, v32) == 1)
  {
    sub_3D48(v9, &qword_8FBC0, &unk_7A968);
    v70 = 0u;
    v71 = 0u;
    v72 = 0;
  }

  else
  {
    *(&v71 + 1) = v32;
    v72 = sub_59144(&unk_8FC80, &type metadata accessor for HourOfDay, &protocol conformance descriptor for HourOfDay);
    v34 = sub_5914(&v70);
    (*(v33 + 32))(v34, v9, v32);
  }

  sub_38F8(&qword_8EDA0, &unk_79D20);
  v35 = swift_initStackObject();
  v36 = v35;
  *(v35 + 16) = v69;
  if (*(&v71 + 1))
  {
    sub_5978(&v70, v35 + 32);
  }

  else
  {
    v37 = v72;
    v38 = v71;
    *(v35 + 32) = v70;
    *(v35 + 48) = v38;
    *(v35 + 64) = v37;
  }

  v39 = sub_6C2DC(a2, v31, v36);
  swift_setDeallocating();
  if (*(v36 + 56))
  {
    sub_3940((v36 + 32));
  }

  if (*(&v71 + 1))
  {
    sub_3940(&v70);
  }

  v40 = sub_75218();
  if (v41)
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    *(&v70 + 1) = 0;
    *&v71 = 0;
  }

  else
  {
    v42 = v40;
    type metadata accessor for HKWorkoutActivityType(0);
    v43 = v45;
    v44 = sub_59144(&qword_8FC78, type metadata accessor for HKWorkoutActivityType, &unk_79AB0);
  }

  *&v70 = v42;
  *(&v71 + 1) = v43;
  v72 = v44;
  sub_38F8(&qword_8FC68, &qword_7AD70);
  v46 = swift_initStackObject();
  v47 = v46;
  *(v46 + 16) = v69;
  if (v43)
  {
    sub_5978(&v70, v46 + 32);
  }

  else
  {
    v48 = v72;
    v49 = v71;
    *(v46 + 32) = v70;
    *(v46 + 48) = v49;
    *(v46 + 64) = v48;
  }

  v50 = sub_6C850(a2, v39, v47);
  swift_setDeallocating();
  v51 = v68;
  if (*(v47 + 56))
  {
    sub_3940((v47 + 32));
  }

  if (*(&v71 + 1))
  {
    sub_3940(&v70);
  }

  sub_75228();
  v52 = sub_74F18();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v51, 1, v52) == 1)
  {
    sub_3D48(v51, &qword_8FC60, &qword_7A9D8);
    v70 = 0u;
    v71 = 0u;
    v72 = 0;
  }

  else
  {
    *(&v71 + 1) = v52;
    v72 = sub_59144(&qword_8FC70, &type metadata accessor for WorkoutLocationType, &protocol conformance descriptor for WorkoutLocationType);
    v54 = sub_5914(&v70);
    (*(v53 + 32))(v54, v51, v52);
  }

  v55 = swift_initStackObject();
  v56 = v55;
  *(v55 + 16) = v69;
  if (*(&v71 + 1))
  {
    sub_5978(&v70, v55 + 32);
  }

  else
  {
    v57 = v72;
    v58 = v71;
    *(v55 + 32) = v70;
    *(v55 + 48) = v58;
    *(v55 + 64) = v57;
  }

  v59 = sub_6C4F0(a2, v50, v56);
  swift_setDeallocating();
  if (*(v56 + 56))
  {
    sub_3940((v56 + 32));
  }

  if (*(&v71 + 1))
  {
    sub_3940(&v70);
  }

  v60 = sub_75238();
  v62 = v61;
  sub_38F8(&qword_8F678, &qword_7A4A0);
  v63 = swift_initStackObject();
  *(v63 + 16) = v69;
  *(v63 + 32) = v60;
  v64 = v63 + 32;
  *(v63 + 40) = v62;
  v65 = sub_6C3E0(a2, v59, v63);
  swift_setDeallocating();
  sub_3D48(v64, &qword_8EDA8, &unk_79D30);
  return v65;
}

uint64_t sub_58E88(uint64_t a1, uint64_t a2)
{
  v5 = sub_38F8(&qword_8EFE0, &qword_79F30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  sub_38F8(&qword_8F180, &qword_79D40);
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 16) = xmmword_79FD0;
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v28 = a2;
    v29 = v9;
    v35 = _swiftEmptyArrayStorage;
    sub_75978();
    v13 = v6 + 16;
    v14 = *(v6 + 16);
    v15 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v31 = (v6 + 8);
    v32 = v14;
    v30 = *(v6 + 72);
    while (1)
    {
      v16 = v13;
      v32(v8, v15, v5);
      sub_FB7C();
      v17 = sub_74F78();
      if (v2)
      {
        break;
      }

      v19 = v17;
      v20 = v18;
      v21 = _s13EntityWrapperCMa();
      v22 = objc_allocWithZone(v21);
      v23 = &v22[OBJC_IVAR___WorkoutEntityWrapper_serializedEntity];
      *v23 = v19;
      *(v23 + 1) = v20;
      v34.receiver = v22;
      v34.super_class = v21;
      objc_msgSendSuper2(&v34, "init");
      (*v31)(v8, v5);
      sub_75958();
      sub_75988();
      sub_75998();
      sub_75968();
      v15 += v30;
      --v11;
      v13 = v16;
      if (!v11)
      {
        v12 = v35;
        a2 = v28;
        v10 = v29;
        goto LABEL_6;
      }
    }

    (*v31)(v8, v5);

    v10 = v29;
    *(v29 + 16) = 0;
  }

  else
  {
LABEL_6:
    v24 = type metadata accessor for WorkoutPropertyRecordJournalEntry();
    v25 = objc_allocWithZone(v24);
    *&v25[OBJC_IVAR____TtC25FitnessIntelligencePlugin33WorkoutPropertyRecordJournalEntry_entities] = v12;
    *&v25[OBJC_IVAR____TtC25FitnessIntelligencePlugin33WorkoutPropertyRecordJournalEntry_provenance] = a2;
    v33.receiver = v25;
    v33.super_class = v24;
    *(v10 + 32) = objc_msgSendSuper2(&v33, "init");
  }

  return v10;
}

uint64_t sub_59144(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5918C()
{
  sub_38F8(&qword_8F678, &qword_7A4A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_7A990;
  v1 = sub_752F8();
  v2 = sub_4844(v1);

  v3 = sub_39FD0(3, v2);
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  v6 = sub_75338();
  v7 = sub_485C(v6);

  v8 = sub_39FD0(4, v7);
  v10 = v9;

  *(v0 + 48) = v8;
  *(v0 + 56) = v10;
  v11 = sub_75348();
  v12 = sub_4874(v11);

  v13 = sub_39FD0(5, v12);
  v15 = v14;

  *(v0 + 64) = v13;
  *(v0 + 72) = v15;
  v16 = sub_75308();
  v17 = sub_49C8(v16);

  v18 = sub_39FD0(6, v17);
  v20 = v19;

  *(v0 + 80) = v18;
  *(v0 + 88) = v20;
  v21 = sub_75318();
  v22 = sub_4AC4(v21);

  v23 = sub_39FD0(7, v22);
  v25 = v24;

  *(v0 + 96) = v23;
  *(v0 + 104) = v25;
  v26 = sub_75328();
  v27 = sub_462C(v26);

  v28 = sub_39FD0(8, v27);
  v30 = v29;

  *(v0 + 112) = v28;
  *(v0 + 120) = v30;
  return v0;
}

uint64_t sub_59340(sqlite3_stmt *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_752F8();
  v6 = sub_4ADC(v5);

  v7 = sub_6C4F0(a1, a3, v6);

  v8 = sub_75338();
  v9 = sub_4B18(v8);

  v10 = sub_6C4F0(a1, v7, v9);

  v11 = sub_75348();
  v12 = sub_4B54(v11);

  v13 = sub_6C2DC(a1, v10, v12);

  v14 = sub_75308();
  v15 = sub_4BCC(v14);

  v16 = sub_6C850(a1, v13, v15);

  v17 = sub_75318();
  v18 = sub_4CEC(v17);

  v19 = sub_6C4F0(a1, v16, v18);

  v20 = sub_75328();
  v21 = sub_472C(v20);

  v22 = sub_6C3E0(a1, v19, v21);

  return v22;
}

uint64_t sub_594BC@<X0>(uint64_t a2@<X8>)
{
  sub_74BD8();
  sub_5A000(&unk_8FD10, &type metadata accessor for FitnessPlusPropertyDimensionsField, &protocol conformance descriptor for FitnessPlusPropertyDimensionsField);
  v3 = sub_756B8();

  return sub_56DA8(v3, a2);
}

id sub_59550()
{
  sub_38F8(&unk_8FD00, &qword_7A260);
  sub_59F9C();
  result = sub_74F78();
  v3 = result;
  if (!v0)
  {
    v4 = v2;
    v5 = type metadata accessor for FitnessPlusPropertyRecordEntity.EntityWrapper();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR___FitnessPlusEntityWrapper_serializedEntity];
    *v7 = v3;
    *(v7 + 1) = v4;
    v8.receiver = v6;
    v8.super_class = v5;
    return objc_msgSendSuper2(&v8, "init");
  }

  return result;
}

id static FitnessPlusPropertyRecordEntity.syncEntityIdentifier.getter()
{
  v0 = objc_allocWithZone(HDSyncEntityIdentifier);
  v1 = sub_75598();
  v2 = [v0 initWithEntityIdentifier:6 schemaIdentifier:v1];

  return v2;
}

uint64_t static FitnessPlusPropertyRecordEntity.generateSyncObjects(for:syncAnchorRange:profile:messageHandler:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = v5;
  v31 = a1;
  v12 = sub_754B8();
  v29 = *(v12 - 8);
  v30 = v12;
  __chkstk_darwin(v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75378();
  v15 = sub_754A8();
  v16 = sub_75738();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = v6;
    v18 = v17;
    v25 = v17;
    v26 = swift_slowAlloc();
    v27 = v7;
    v33 = v26;
    *v18 = 136315138;
    v32 = sub_38F8(&qword_8FC90, &qword_7A9E0);
    sub_38F8(&qword_8FC98, &qword_7A9E8);
    v19 = sub_755B8();
    v21 = a4;
    v22 = sub_31B4(v19, v20, &v33);

    v23 = v25;
    *(v25 + 4) = v22;
    a4 = v21;
    _os_log_impl(&dword_0, v15, v16, "Generate sync objects for %s", v23, 0xCu);
    sub_3940(v26);
  }

  (*(v29 + 8))(v14, v30);
  return sub_8E44(v31, a2, a3, a4, a5);
}

id static FitnessPlusPropertyRecordEntity.decodeSyncObject(with:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for FitnessPlusPropertyRecordEntity.EntityWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___FitnessPlusEntityWrapper_serializedEntity];
  *v6 = a1;
  *(v6 + 1) = a2;
  sub_398C(a1, a2);
  v8.receiver = v5;
  v8.super_class = v4;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t _s25FitnessIntelligencePlugin0A24PlusPropertyRecordEntityC18receiveSyncObjects_7version9syncStore7profile5errorSo013HDSyncReceiveJ6ResultVSaySo0P7Codable_pG_So0P12VersionRangeaSo0pM0_pSo9HDProfileCSAySo7NSErrorCSgGSgtFZ_0(unint64_t a1)
{
  v2 = sub_754B8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75378();
  swift_bridgeObjectRetain_n();
  v6 = sub_754A8();
  v7 = sub_75738();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315394;
    v15 = sub_38F8(&qword_8FC90, &qword_7A9E0);
    sub_38F8(&qword_8FC98, &qword_7A9E8);
    v10 = sub_755B8();
    v12 = sub_31B4(v10, v11, &v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    if (a1 >> 62)
    {
      v13 = sub_759D8();
    }

    else
    {
      v13 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    *(v8 + 14) = v13;

    _os_log_impl(&dword_0, v6, v7, "Received synced %s entities, count: %ld", v8, 0x16u);
    sub_3940(v9);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_59F44(uint64_t a1)
{
  result = sub_5A000(&unk_8FCF0, type metadata accessor for FitnessPlusPropertyRecordEntity, &unk_7AA10);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_59F9C()
{
  result = qword_8F430;
  if (!qword_8F430)
  {
    sub_76D0(&unk_8FD00, &qword_7A260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F430);
  }

  return result;
}

uint64_t sub_5A000(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_5A04C()
{
  result = qword_8FD20;
  if (!qword_8FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FD20);
  }

  return result;
}

uint64_t sub_5A0E8(uint64_t a1)
{
  result = sub_5AD20(&qword_8FD78, type metadata accessor for FitnessPlusPropertyRecordEntity, &unk_7AA2C);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_5A144()
{
  result = qword_8FD80;
  if (!qword_8FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FD80);
  }

  return result;
}

uint64_t sub_5A198(uint64_t a1, sqlite3_stmt *a2, uint64_t a3)
{
  v64 = a2;
  v4 = sub_38F8(&qword_8FBB0, &qword_7A958);
  __chkstk_darwin(v4 - 8);
  v59 = &v59 - v5;
  v6 = sub_38F8(&qword_8FBB8, &qword_7A960);
  __chkstk_darwin(v6 - 8);
  v8 = &v59 - v7;
  v9 = sub_38F8(&qword_8FBC0, &unk_7A968);
  __chkstk_darwin(v9 - 8);
  v11 = &v59 - v10;
  v12 = sub_38F8(&qword_8F290, &qword_7A130);
  __chkstk_darwin(v12 - 8);
  v14 = &v59 - v13;
  v15 = sub_38F8(&qword_8F298, &qword_7A138);
  __chkstk_darwin(v15 - 8);
  v17 = &v59 - v16;
  sub_74B38();
  v18 = sub_74D08();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_3D48(v17, &qword_8F298, &qword_7A138);
    v61 = 0u;
    v62 = 0u;
    v63 = 0;
  }

  else
  {
    *(&v62 + 1) = v18;
    v63 = sub_5AD20(&qword_8F670, &type metadata accessor for MonthOfYear, &protocol conformance descriptor for MonthOfYear);
    v20 = sub_5914(&v61);
    (*(v19 + 32))(v20, v17, v18);
  }

  sub_38F8(&qword_8F658, &unk_7AD30);
  inited = swift_initStackObject();
  v22 = inited;
  v60 = xmmword_79BF0;
  *(inited + 16) = xmmword_79BF0;
  if (*(&v62 + 1))
  {
    sub_5978(&v61, inited + 32);
  }

  else
  {
    v23 = v63;
    v24 = v62;
    *(inited + 32) = v61;
    *(inited + 48) = v24;
    *(inited + 64) = v23;
  }

  v25 = sub_6C4F0(v64, a3, v22);
  swift_setDeallocating();
  if (*(v22 + 56))
  {
    sub_3940((v22 + 32));
  }

  if (*(&v62 + 1))
  {
    sub_3940(&v61);
  }

  sub_74B68();
  v26 = sub_753D8();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v14, 1, v26) == 1)
  {
    sub_3D48(v14, &qword_8F290, &qword_7A130);
    v61 = 0u;
    v62 = 0u;
    v63 = 0;
  }

  else
  {
    *(&v62 + 1) = v26;
    v63 = sub_5AD20(&qword_8F668, &type metadata accessor for DayOfWeek, &protocol conformance descriptor for DayOfWeek);
    v28 = sub_5914(&v61);
    (*(v27 + 32))(v28, v14, v26);
  }

  v29 = swift_initStackObject();
  v30 = v29;
  *(v29 + 16) = v60;
  v31 = v64;
  if (*(&v62 + 1))
  {
    sub_5978(&v61, v29 + 32);
  }

  else
  {
    v32 = v63;
    v33 = v62;
    *(v29 + 32) = v61;
    *(v29 + 48) = v33;
    *(v29 + 64) = v32;
  }

  v34 = sub_6C4F0(v31, v25, v30);
  swift_setDeallocating();
  if (*(v30 + 56))
  {
    sub_3940((v30 + 32));
  }

  if (*(&v62 + 1))
  {
    sub_3940(&v61);
  }

  sub_74B78();
  v35 = sub_753F8();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v11, 1, v35) == 1)
  {
    sub_3D48(v11, &qword_8FBC0, &unk_7A968);
    v61 = 0u;
    v62 = 0u;
    v63 = 0;
  }

  else
  {
    *(&v62 + 1) = v35;
    v63 = sub_5AD20(&unk_8FC80, &type metadata accessor for HourOfDay, &protocol conformance descriptor for HourOfDay);
    v37 = sub_5914(&v61);
    (*(v36 + 32))(v37, v11, v35);
  }

  sub_38F8(&qword_8EDA0, &unk_79D20);
  v38 = swift_initStackObject();
  v39 = v38;
  *(v38 + 16) = v60;
  if (*(&v62 + 1))
  {
    sub_5978(&v61, v38 + 32);
  }

  else
  {
    v40 = v63;
    v41 = v62;
    *(v38 + 32) = v61;
    *(v38 + 48) = v41;
    *(v38 + 64) = v40;
  }

  v42 = sub_6C2DC(v31, v34, v39);
  swift_setDeallocating();
  if (*(v39 + 56))
  {
    sub_3940((v39 + 32));
  }

  if (*(&v62 + 1))
  {
    sub_3940(&v61);
  }

  sub_74B48();
  v43 = sub_74AA8();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v8, 1, v43) == 1)
  {
    sub_3D48(v8, &qword_8FBB8, &qword_7A960);
    v61 = 0u;
    v62 = 0u;
    v63 = 0;
  }

  else
  {
    *(&v62 + 1) = v43;
    v63 = sub_5AD20(&qword_8FDB0, &type metadata accessor for FitnessPlusModalityKind, &protocol conformance descriptor for FitnessPlusModalityKind);
    v45 = sub_5914(&v61);
    (*(v44 + 32))(v45, v8, v43);
  }

  v46 = swift_initStackObject();
  v47 = v46;
  *(v46 + 16) = v60;
  v48 = v59;
  if (*(&v62 + 1))
  {
    sub_5978(&v61, v46 + 32);
  }

  else
  {
    v49 = v63;
    v50 = v62;
    *(v46 + 32) = v61;
    *(v46 + 48) = v50;
    *(v46 + 64) = v49;
  }

  v51 = sub_6C4F0(v31, v42, v47);
  swift_setDeallocating();
  if (*(v47 + 56))
  {
    sub_3940((v47 + 32));
  }

  if (*(&v62 + 1))
  {
    sub_3940(&v61);
  }

  sub_74B58();
  v52 = sub_74BB8();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v48, 1, v52) == 1)
  {
    sub_3D48(v48, &qword_8FBB0, &qword_7A958);
    v54 = _swiftEmptyArrayStorage;
  }

  else
  {
    v54 = sub_74BA8();
    (*(v53 + 8))(v48, v52);
  }

  sub_38F8(&qword_8FDA0, &unk_7AD90);
  v55 = swift_initStackObject();
  *(v55 + 16) = v60;
  *(v55 + 32) = v54;
  v56 = v55 + 32;
  v57 = sub_6C6F4(v31, v51, v55);
  swift_setDeallocating();
  sub_3D48(v56, &qword_8FDA8, &qword_7AA48);
  return v57;
}

uint64_t sub_5AA64(uint64_t a1, uint64_t a2)
{
  v5 = sub_38F8(&unk_8FD00, &qword_7A260);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  sub_38F8(&qword_8F180, &qword_79D40);
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 16) = xmmword_79FD0;
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v28 = a2;
    v29 = v9;
    v35 = _swiftEmptyArrayStorage;
    sub_75978();
    v13 = v6 + 16;
    v14 = *(v6 + 16);
    v15 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v31 = (v6 + 8);
    v32 = v14;
    v30 = *(v6 + 72);
    while (1)
    {
      v16 = v13;
      v32(v8, v15, v5);
      sub_59F9C();
      v17 = sub_74F78();
      if (v2)
      {
        break;
      }

      v19 = v17;
      v20 = v18;
      v21 = type metadata accessor for FitnessPlusPropertyRecordEntity.EntityWrapper();
      v22 = objc_allocWithZone(v21);
      v23 = &v22[OBJC_IVAR___FitnessPlusEntityWrapper_serializedEntity];
      *v23 = v19;
      *(v23 + 1) = v20;
      v34.receiver = v22;
      v34.super_class = v21;
      objc_msgSendSuper2(&v34, "init");
      (*v31)(v8, v5);
      sub_75958();
      sub_75988();
      sub_75998();
      sub_75968();
      v15 += v30;
      --v11;
      v13 = v16;
      if (!v11)
      {
        v12 = v35;
        a2 = v28;
        v10 = v29;
        goto LABEL_6;
      }
    }

    (*v31)(v8, v5);

    v10 = v29;
    *(v29 + 16) = 0;
  }

  else
  {
LABEL_6:
    v24 = type metadata accessor for FitnessPlusPropertyRecordJournalEntry();
    v25 = objc_allocWithZone(v24);
    *&v25[OBJC_IVAR____TtC25FitnessIntelligencePlugin37FitnessPlusPropertyRecordJournalEntry_entities] = v12;
    *&v25[OBJC_IVAR____TtC25FitnessIntelligencePlugin37FitnessPlusPropertyRecordJournalEntry_provenance] = a2;
    v33.receiver = v25;
    v33.super_class = v24;
    *(v10 + 32) = objc_msgSendSuper2(&v33, "init");
  }

  return v10;
}

uint64_t sub_5AD20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5AD68()
{
  sub_38F8(&qword_8F678, &qword_7A4A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_79BA0;
  v1 = sub_74BE8();
  v2 = sub_4844(v1);

  v3 = sub_39E04(3, v2);
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  v6 = sub_74C18();
  v7 = sub_485C(v6);

  v8 = sub_39E04(4, v7);
  v10 = v9;

  *(v0 + 48) = v8;
  *(v0 + 56) = v10;
  v11 = sub_74C28();
  v12 = sub_4874(v11);

  v13 = sub_39E04(5, v12);
  v15 = v14;

  *(v0 + 64) = v13;
  *(v0 + 72) = v15;
  v16 = sub_74BF8();
  v17 = sub_488C(v16);

  v18 = sub_39E04(6, v17);
  v20 = v19;

  *(v0 + 80) = v18;
  *(v0 + 88) = v20;
  v21 = sub_74C08();
  v22 = sub_48A4(v21);

  v23 = sub_39E04(7, v22);
  v25 = v24;

  *(v0 + 96) = v23;
  *(v0 + 104) = v25;
  return v0;
}

uint64_t sub_5AEE4(sqlite3_stmt *a1, uint64_t a2, uint64_t a3)
{
  v43 = sub_74BB8();
  v6 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_74BE8();
  v9 = sub_4ADC(v8);

  v10 = sub_6C4F0(a1, a3, v9);

  v11 = sub_74C18();
  v12 = sub_4B18(v11);

  v13 = sub_6C4F0(a1, v10, v12);

  v14 = sub_74C28();
  v15 = sub_4B54(v14);

  v16 = sub_6C2DC(a1, v13, v15);

  v17 = sub_74BF8();
  v18 = sub_4B90(v17);

  v19 = sub_6C4F0(a1, v16, v18);

  v20 = sub_74C08();
  v21 = *(v20 + 16);
  if (v21)
  {
    v37 = v19;
    v38 = a1;
    v39 = v3;
    v44 = _swiftEmptyArrayStorage;
    sub_67CFC(0, v21, 0);
    v22 = v44;
    v24 = *(v6 + 16);
    v23 = v6 + 16;
    v25 = *(v23 + 64);
    v36 = v20;
    v26 = v20 + ((v25 + 32) & ~v25);
    v40 = *(v23 + 56);
    v41 = v24;
    v27 = (v23 - 8);
    do
    {
      v28 = v42;
      v29 = v43;
      v30 = v23;
      v41(v42, v26, v43);
      v31 = sub_74BA8();
      (*v27)(v28, v29);
      v44 = v22;
      v33 = v22[2];
      v32 = v22[3];
      if (v33 >= v32 >> 1)
      {
        sub_67CFC((v32 > 1), v33 + 1, 1);
        v22 = v44;
      }

      v22[2] = v33 + 1;
      v22[v33 + 4] = v31;
      v26 += v40;
      --v21;
      v23 = v30;
    }

    while (v21);

    a1 = v38;
    v19 = v37;
  }

  else
  {

    v22 = _swiftEmptyArrayStorage;
  }

  v34 = sub_6C6F4(a1, v19, v22);

  return v34;
}

uint64_t sub_5B1CC(uint64_t a1)
{
  v1 = a1;
  v2 = sub_5C16C();
  v3 = sub_5B270(v1);
  v5 = v4;
  v6 = v2[2];
  if (v6)
  {
    v7 = v3;
    v8 = 0;
    v9 = v2 + 5;
    while (1)
    {
      v10 = *(v9 - 1) == v7 && *v9 == v5;
      if (v10 || (sub_75A68() & 1) != 0)
      {
        break;
      }

      ++v8;
      v9 += 2;
      if (v6 == v8)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v8 = -1;
  }

  return v8;
}

unint64_t sub_5B270(char a1)
{
  result = 0x4449574F52;
  switch(a1)
  {
    case 1:
      result = 0x6361437472617473;
      break;
    case 2:
      result = 0x6568636143646E65;
      break;
    case 3:
      result = 0x59664F68746E6F6DLL;
      break;
    case 4:
      result = 0x656557664F796164;
      break;
    case 5:
      result = 0x6144664F72756F68;
      break;
    case 6:
      result = 0x7974697669746361;
      break;
    case 7:
      result = 0x6E6F697461636F6CLL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
    case 10:
      result = 0x79747265706F7270;
      break;
    case 11:
      result = 0x6E6F6973726576;
      break;
    case 12:
      result = 0x4164657461657263;
      break;
    case 13:
      result = 0x766F7250636E7973;
      break;
    case 14:
      result = 0x6E656449636E7973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_5B480(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_5B270(*a1);
  v5 = v4;
  if (v3 == sub_5B270(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_75A68();
  }

  return v8 & 1;
}

Swift::Int sub_5B508()
{
  v1 = *v0;
  sub_75AE8();
  sub_5B270(v1);
  sub_755E8();

  return sub_75B08();
}

uint64_t sub_5B56C(uint64_t a1)
{
  sub_5B270(*v1);
  sub_755E8();
}

Swift::Int sub_5B5C0(uint64_t a1)
{
  v2 = *v1;
  sub_75AE8();
  sub_5B270(v2);
  sub_755E8();

  return sub_75B08();
}

unint64_t sub_5B620@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5C850(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_5B650@<X0>(unint64_t *a1@<X8>)
{
  result = sub_5B270(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_5B6E8()
{
  sub_38F8(&qword_8F180, &qword_79D40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_7AA50;
  v1 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v2 = sub_75598();
  v3 = sub_75598();
  v4 = [v1 initWithName:v2 columnType:v3 keyPathType:3];

  *(v0 + 32) = v4;
  v5 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v6 = sub_75598();
  v7 = sub_75598();
  v8 = [v5 initWithName:v6 columnType:v7 keyPathType:3];

  *(v0 + 40) = v8;
  v9 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v10 = sub_75598();
  v11 = sub_75598();
  v12 = [v9 initWithName:v10 columnType:v11 keyPathType:3];

  *(v0 + 48) = v12;
  v13 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v14 = sub_75598();
  v15 = sub_75598();
  v16 = [v13 initWithName:v14 columnType:v15 keyPathType:4];

  *(v0 + 56) = v16;
  v17 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v18 = sub_75598();
  v19 = sub_75598();
  v20 = [v17 initWithName:v18 columnType:v19 keyPathType:4];

  *(v0 + 64) = v20;
  v21 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v22 = sub_75598();
  v23 = sub_75598();
  v24 = [v21 initWithName:v22 columnType:v23 keyPathType:3];

  *(v0 + 72) = v24;
  v25 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v26 = sub_75598();
  v27 = sub_75598();
  v28 = [v25 initWithName:v26 columnType:v27 keyPathType:3];

  *(v0 + 80) = v28;
  v29 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v30 = sub_75598();
  v31 = sub_75598();
  v32 = [v29 initWithName:v30 columnType:v31 keyPathType:4];

  *(v0 + 88) = v32;
  v33 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v34 = sub_75598();
  v35 = sub_75598();
  v36 = [v33 initWithName:v34 columnType:v35 keyPathType:4];

  *(v0 + 96) = v36;
  v37 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v38 = sub_75598();
  v39 = sub_75598();
  v40 = [v37 initWithName:v38 columnType:v39 keyPathType:4];

  *(v0 + 104) = v40;
  v41 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v42 = sub_75598();
  v43 = sub_75598();
  v44 = [v41 initWithName:v42 columnType:v43 keyPathType:4];

  *(v0 + 112) = v44;
  v45 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v46 = sub_75598();
  v47 = sub_75598();
  v48 = [v45 initWithName:v46 columnType:v47 keyPathType:3];

  *(v0 + 120) = v48;
  v49 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v50 = sub_75598();
  v51 = sub_75598();
  v52 = [v49 initWithName:v50 columnType:v51 keyPathType:1];

  *(v0 + 128) = v52;
  v53 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v54 = sub_75598();
  v55 = sub_75598();
  v56 = [v53 initWithName:v54 columnType:v55 keyPathType:3];

  *(v0 + 136) = v56;
  v57 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v58 = sub_75598();
  v59 = sub_75598();
  v60 = [v57 initWithName:v58 columnType:v59 keyPathType:3];

  *(v0 + 144) = v60;
  qword_90058 = v0;
}

uint64_t static WorkoutPropertyRecordEntity.indices(with:)()
{
  sub_38F8(&qword_8F180, &qword_79D40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_79FD0;
  v1 = objc_allocWithZone(HDSQLiteEntityIndex);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_75598();
  isa = sub_75678().super.isa;
  v5 = [v1 initWithEntity:ObjCClassFromMetadata name:v3 columns:isa];

  *(v0 + 32) = v5;
  return v0;
}

id WorkoutPropertyRecordEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for WorkoutPropertyRecordEntity();
  return objc_msgSendSuper2(&v4, "initWithPersistentID:", a1);
}

id WorkoutPropertyRecordEntity.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WorkoutPropertyRecordEntity();
  return objc_msgSendSuper2(&v3, "init");
}

id WorkoutPropertyRecordEntity.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WorkoutPropertyRecordEntity();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_5C16C()
{
  sub_67C58(0, 14, 0);
  v0 = 0;
  result = _swiftEmptyArrayStorage;
  do
  {
    v2 = 0xE500000000000000;
    v3 = 0x4449574F52;
    switch(*(&off_858B0 + v0 + 32))
    {
      case 1:
        v3 = 0x6361437472617473;
        v2 = 0xEF7865646E496568;
        break;
      case 2:
        v3 = 0x6568636143646E65;
        v2 = 0xED00007865646E49;
        break;
      case 3:
        v3 = 0x59664F68746E6F6DLL;
        v2 = 0xEB00000000726165;
        break;
      case 4:
        v3 = 0x656557664F796164;
        v2 = 0xE90000000000006BLL;
        break;
      case 5:
        v2 = 0xE900000000000079;
        v3 = 0x6144664F72756F68;
        break;
      case 6:
        v3 = 0x7974697669746361;
        v2 = 0xEC00000065707954;
        break;
      case 7:
        v3 = 0x6E6F697461636F6CLL;
        v2 = 0xEC00000065707954;
        break;
      case 8:
        v3 = 0xD000000000000010;
        v2 = 0x80000000000773F0;
        break;
      case 9:
        v3 = 0x79747265706F7270;
        v2 = 0xEC000000646E694BLL;
        break;
      case 0xA:
        v3 = 0x79747265706F7270;
        v2 = 0xEC00000061746144;
        break;
      case 0xB:
        v2 = 0xE700000000000000;
        v3 = 0x6E6F6973726576;
        break;
      case 0xC:
        v2 = 0xE900000000000074;
        v3 = 0x4164657461657263;
        break;
      case 0xD:
        v3 = 0x766F7250636E7973;
        v2 = 0xEE0065636E616E65;
        break;
      case 0xE:
        v3 = 0x6E656449636E7973;
        v2 = 0xEC00000079746974;
        break;
      default:
        break;
    }

    v7 = result;
    v5 = result[2];
    v4 = result[3];
    if (v5 >= v4 >> 1)
    {
      sub_67C58((v4 > 1), v5 + 1, 1);
      result = v7;
    }

    ++v0;
    result[2] = v5 + 1;
    v6 = &result[2 * v5];
    v6[4] = v3;
    v6[5] = v2;
  }

  while (v0 != 14);
  return result;
}

char *_s25FitnessIntelligencePlugin27WorkoutPropertyRecordEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0()
{
  sub_75908(34);

  v22._countAndFlagsBits = 0xD000000000000030;
  v22._object = 0x80000000000796A0;
  sub_75608(v22);
  v23._countAndFlagsBits = 10272;
  v23._object = 0xE200000000000000;
  sub_75608(v23);
  if (qword_8EA08 != -1)
  {
    swift_once();
  }

  v0 = qword_90058;
  if (qword_90058 >> 62)
  {
    v1 = sub_759D8();
  }

  else
  {
    v1 = *(&dword_10 + (qword_90058 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v1)
  {
    goto LABEL_14;
  }

  result = sub_67C58(0, v1 & ~(v1 >> 63), 0);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v4 = sub_75928();
      }

      else
      {
        v4 = *(v0 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = [v4 name];
      v7 = sub_755A8();
      v9 = v8;

      v20 = v7;
      v21 = v9;
      v24._countAndFlagsBits = 32;
      v24._object = 0xE100000000000000;
      sub_75608(v24);
      v10 = [v5 columnType];
      v11 = sub_755A8();
      v13 = v12;

      v25._countAndFlagsBits = v11;
      v25._object = v13;
      sub_75608(v25);

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_67C58((v14 > 1), v15 + 1, 1);
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v20;
      v16[5] = v21;
    }

    while (v1 != v3);
LABEL_14:
    sub_38F8(&qword_8F280, &unk_7ABA0);
    sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0, &protocol conformance descriptor for [A]);
    v17 = sub_75538();
    v19 = v18;

    v26._countAndFlagsBits = v17;
    v26._object = v19;
    sub_75608(v26);

    v27._countAndFlagsBits = 41;
    v27._object = 0xE100000000000000;
    sub_75608(v27);
    return 0xD00000000000001BLL;
  }

  __break(1u);
  return result;
}

unint64_t sub_5C850(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_85CC0;
  v6._object = a2;
  v4 = sub_75A18(v3, v6);

  if (v4 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v4;
  }
}

uint64_t *sub_5C89C(uint64_t *a1)
{
  if (qword_8EA08 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  v2 = qword_90058;
  v3 = qword_90058 >> 62;
  if (qword_90058 >> 62)
  {
    if (qword_90058 < 0)
    {
      v1 = qword_90058;
    }

    else
    {
      v1 = (qword_90058 & 0xFFFFFFFFFFFFFF8);
    }

    *a1 = sub_759D8();
    v4 = sub_759D8();
  }

  else
  {
    v4 = *(&dword_10 + (qword_90058 & 0xFFFFFFFFFFFFFF8));
    *a1 = v4;
  }

  if ((v4 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v1 = swift_slowAlloc();
  if (v3)
  {
    sub_759D8();
    v5 = sub_759D8();

    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_15:
    sub_3AD4(v2);

    goto LABEL_9;
  }

LABEL_9:
  sub_7688(0, &qword_8FB90, HDSQLiteEntityColumnDefinitionObject_ptr);
  swift_arrayInitWithCopy();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t getEnumTagSinglePayload for WorkoutPropertyRecordEntity.Keys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPropertyRecordEntity.Keys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_5CBD0()
{
  result = qword_8FDF0;
  if (!qword_8FDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FDF0);
  }

  return result;
}

unint64_t sub_5CC24(uint64_t a1)
{
  *(a1 + 8) = sub_5CC54();
  result = sub_5CCA8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_5CC54()
{
  result = qword_8FDF8;
  if (!qword_8FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FDF8);
  }

  return result;
}

unint64_t sub_5CCA8()
{
  result = qword_8FE00;
  if (!qword_8FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FE00);
  }

  return result;
}

unint64_t sub_5CCFC(uint64_t a1)
{
  result = sub_58568();
  *(a1 + 8) = result;
  return result;
}

void sub_5CD24(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v58 = a3;
  v59 = a2;
  v6 = sub_38F8(&qword_8F0A0, &qword_79EC8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54 - v8;
  v10 = sub_75028();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75008();
  v57 = sub_75018();
  (*(v11 + 8))(v13, v10);
  v14 = *(a1 + 16);
  if (v14)
  {
    v55 = a4;
    v56 = a1;
    v16 = *(v7 + 16);
    v15 = v7 + 16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v60 = *(v15 + 56);
    v61 = v16;
    v62 = v15;
    v18 = (v15 - 8);
    v19 = _swiftEmptyArrayStorage;
    do
    {
      v61(v9, v17, v6);
      v20 = sub_750A8();
      (*v18)(v9, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_674CC(0, *(v19 + 2) + 1, 1, v19);
      }

      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v19 = sub_674CC((v21 > 1), v22 + 1, 1, v19);
      }

      *(v19 + 2) = v23;
      *&v19[8 * v22 + 32] = v20;
      v17 += v60;
      --v14;
    }

    while (v14);
LABEL_11:
    v24 = *(v19 + 4);
    v25 = v23 - 1;
    if (v23 == 1)
    {
      a4 = v55;
      a1 = v56;
LABEL_22:
      v35 = v57;
      goto LABEL_23;
    }

    if (v23 >= 5)
    {
      v26 = v25 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v27 = vdupq_n_s64(v24);
      v28 = (v19 + 56);
      v29 = v25 & 0xFFFFFFFFFFFFFFFCLL;
      v30 = v27;
      do
      {
        v27 = vbslq_s8(vcgtq_s64(v27, v28[-1]), v27, v28[-1]);
        v30 = vbslq_s8(vcgtq_s64(v30, *v28), v30, *v28);
        v28 += 2;
        v29 -= 4;
      }

      while (v29);
      v31 = vbslq_s8(vcgtq_s64(v27, v30), v27, v30);
      v32 = vextq_s8(v31, v31, 8uLL).u64[0];
      v24 = vbsl_s8(vcgtd_s64(v31.i64[0], v32), *v31.i8, v32);
      a4 = v55;
      a1 = v56;
      if (v25 == (v25 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v26 = 1;
      a4 = v55;
      a1 = v56;
    }

    v33 = v23 - v26;
    v34 = 8 * v26 + 32;
    do
    {
      if (v24 <= *&v19[v34])
      {
        v24 = *&v19[v34];
      }

      v34 += 8;
      --v33;
    }

    while (v33);
    goto LABEL_22;
  }

  v19 = _swiftEmptyArrayStorage;
  v23 = _swiftEmptyArrayStorage[2];
  if (v23)
  {
    v55 = a4;
    v56 = a1;
    goto LABEL_11;
  }

  v35 = v57;
  v24 = v57;
LABEL_23:

  if (v35 <= v24)
  {
    v36 = v24;
  }

  else
  {
    v36 = v35;
  }

  if (a4)
  {
    v37 = a4;
  }

  else
  {
    v37 = [objc_opt_self() contextForWritingProtectedData];
  }

  v38 = a4;
  v39 = v58;
  v62 = [v58 database];
  v40 = swift_allocObject();
  v40[2] = a1;
  v40[3] = v39;
  v40[4] = v36;
  v41 = v59;
  v40[5] = v59;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_6A9C0;
  *(v42 + 24) = v40;
  v67 = sub_1008C;
  v68 = v42;
  aBlock = _NSConcreteStackBlock;
  v64 = 1107296256;
  v65 = sub_2BB8;
  v66 = &unk_89248;
  v43 = _Block_copy(&aBlock);
  v61 = v37;

  v44 = v39;

  v45 = swift_allocObject();
  v45[2] = a1;
  v45[3] = v41;
  v45[4] = v44;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_6AA0C;
  *(v46 + 24) = v45;
  v67 = sub_6AD24;
  v68 = v46;
  aBlock = _NSConcreteStackBlock;
  v64 = 1107296256;
  v65 = sub_65494;
  v66 = &unk_892C0;
  v47 = _Block_copy(&aBlock);
  v48 = v61;

  v49 = v44;

  aBlock = 0;
  v50 = v62;
  v51 = [v62 performTransactionWithContext:v48 error:&aBlock block:v43 inaccessibilityHandler:v47];
  _Block_release(v47);
  _Block_release(v43);

  v52 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if ((v51 & 1) == 0)
  {
    sub_74898();

    swift_willThrow();
  }
}

void sub_5D36C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v58 = a3;
  v59 = a2;
  v6 = sub_38F8(&unk_8FD00, &qword_7A260);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54 - v8;
  v10 = sub_75028();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75008();
  v57 = sub_75018();
  (*(v11 + 8))(v13, v10);
  v14 = *(a1 + 16);
  if (v14)
  {
    v55 = a4;
    v56 = a1;
    v16 = *(v7 + 16);
    v15 = v7 + 16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v60 = *(v15 + 56);
    v61 = v16;
    v62 = v15;
    v18 = (v15 - 8);
    v19 = _swiftEmptyArrayStorage;
    do
    {
      v61(v9, v17, v6);
      v20 = sub_750A8();
      (*v18)(v9, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_674CC(0, *(v19 + 2) + 1, 1, v19);
      }

      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v19 = sub_674CC((v21 > 1), v22 + 1, 1, v19);
      }

      *(v19 + 2) = v23;
      *&v19[8 * v22 + 32] = v20;
      v17 += v60;
      --v14;
    }

    while (v14);
LABEL_11:
    v24 = *(v19 + 4);
    v25 = v23 - 1;
    if (v23 == 1)
    {
      a4 = v55;
      a1 = v56;
LABEL_22:
      v35 = v57;
      goto LABEL_23;
    }

    if (v23 >= 5)
    {
      v26 = v25 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v27 = vdupq_n_s64(v24);
      v28 = (v19 + 56);
      v29 = v25 & 0xFFFFFFFFFFFFFFFCLL;
      v30 = v27;
      do
      {
        v27 = vbslq_s8(vcgtq_s64(v27, v28[-1]), v27, v28[-1]);
        v30 = vbslq_s8(vcgtq_s64(v30, *v28), v30, *v28);
        v28 += 2;
        v29 -= 4;
      }

      while (v29);
      v31 = vbslq_s8(vcgtq_s64(v27, v30), v27, v30);
      v32 = vextq_s8(v31, v31, 8uLL).u64[0];
      v24 = vbsl_s8(vcgtd_s64(v31.i64[0], v32), *v31.i8, v32);
      a4 = v55;
      a1 = v56;
      if (v25 == (v25 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v26 = 1;
      a4 = v55;
      a1 = v56;
    }

    v33 = v23 - v26;
    v34 = 8 * v26 + 32;
    do
    {
      if (v24 <= *&v19[v34])
      {
        v24 = *&v19[v34];
      }

      v34 += 8;
      --v33;
    }

    while (v33);
    goto LABEL_22;
  }

  v19 = _swiftEmptyArrayStorage;
  v23 = _swiftEmptyArrayStorage[2];
  if (v23)
  {
    v55 = a4;
    v56 = a1;
    goto LABEL_11;
  }

  v35 = v57;
  v24 = v57;
LABEL_23:

  if (v35 <= v24)
  {
    v36 = v24;
  }

  else
  {
    v36 = v35;
  }

  if (a4)
  {
    v37 = a4;
  }

  else
  {
    v37 = [objc_opt_self() contextForWritingProtectedData];
  }

  v38 = a4;
  v39 = v58;
  v62 = [v58 database];
  v40 = swift_allocObject();
  v40[2] = a1;
  v40[3] = v39;
  v40[4] = v36;
  v41 = v59;
  v40[5] = v59;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_6A85C;
  *(v42 + 24) = v40;
  v67 = sub_1008C;
  v68 = v42;
  aBlock = _NSConcreteStackBlock;
  v64 = 1107296256;
  v65 = sub_2BB8;
  v66 = &unk_89068;
  v43 = _Block_copy(&aBlock);
  v61 = v37;

  v44 = v39;

  v45 = swift_allocObject();
  v45[2] = a1;
  v45[3] = v41;
  v45[4] = v44;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_6A86C;
  *(v46 + 24) = v45;
  v67 = sub_6AD24;
  v68 = v46;
  aBlock = _NSConcreteStackBlock;
  v64 = 1107296256;
  v65 = sub_65494;
  v66 = &unk_890E0;
  v47 = _Block_copy(&aBlock);
  v48 = v61;

  v49 = v44;

  aBlock = 0;
  v50 = v62;
  v51 = [v62 performTransactionWithContext:v48 error:&aBlock block:v43 inaccessibilityHandler:v47];
  _Block_release(v47);
  _Block_release(v43);

  v52 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if ((v51 & 1) == 0)
  {
    sub_74898();

    swift_willThrow();
  }
}

void sub_5D9B4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v58 = a3;
  v59 = a2;
  v6 = sub_38F8(&qword_8EFE0, &qword_79F30);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54 - v8;
  v10 = sub_75028();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75008();
  v57 = sub_75018();
  (*(v11 + 8))(v13, v10);
  v14 = *(a1 + 16);
  if (v14)
  {
    v55 = a4;
    v56 = a1;
    v16 = *(v7 + 16);
    v15 = v7 + 16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v60 = *(v15 + 56);
    v61 = v16;
    v62 = v15;
    v18 = (v15 - 8);
    v19 = _swiftEmptyArrayStorage;
    do
    {
      v61(v9, v17, v6);
      v20 = sub_750A8();
      (*v18)(v9, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_674CC(0, *(v19 + 2) + 1, 1, v19);
      }

      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v19 = sub_674CC((v21 > 1), v22 + 1, 1, v19);
      }

      *(v19 + 2) = v23;
      *&v19[8 * v22 + 32] = v20;
      v17 += v60;
      --v14;
    }

    while (v14);
LABEL_11:
    v24 = *(v19 + 4);
    v25 = v23 - 1;
    if (v23 == 1)
    {
      a4 = v55;
      a1 = v56;
LABEL_22:
      v35 = v57;
      goto LABEL_23;
    }

    if (v23 >= 5)
    {
      v26 = v25 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v27 = vdupq_n_s64(v24);
      v28 = (v19 + 56);
      v29 = v25 & 0xFFFFFFFFFFFFFFFCLL;
      v30 = v27;
      do
      {
        v27 = vbslq_s8(vcgtq_s64(v27, v28[-1]), v27, v28[-1]);
        v30 = vbslq_s8(vcgtq_s64(v30, *v28), v30, *v28);
        v28 += 2;
        v29 -= 4;
      }

      while (v29);
      v31 = vbslq_s8(vcgtq_s64(v27, v30), v27, v30);
      v32 = vextq_s8(v31, v31, 8uLL).u64[0];
      v24 = vbsl_s8(vcgtd_s64(v31.i64[0], v32), *v31.i8, v32);
      a4 = v55;
      a1 = v56;
      if (v25 == (v25 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v26 = 1;
      a4 = v55;
      a1 = v56;
    }

    v33 = v23 - v26;
    v34 = 8 * v26 + 32;
    do
    {
      if (v24 <= *&v19[v34])
      {
        v24 = *&v19[v34];
      }

      v34 += 8;
      --v33;
    }

    while (v33);
    goto LABEL_22;
  }

  v19 = _swiftEmptyArrayStorage;
  v23 = _swiftEmptyArrayStorage[2];
  if (v23)
  {
    v55 = a4;
    v56 = a1;
    goto LABEL_11;
  }

  v35 = v57;
  v24 = v57;
LABEL_23:

  if (v35 <= v24)
  {
    v36 = v24;
  }

  else
  {
    v36 = v35;
  }

  if (a4)
  {
    v37 = a4;
  }

  else
  {
    v37 = [objc_opt_self() contextForWritingProtectedData];
  }

  v38 = a4;
  v39 = v58;
  v62 = [v58 database];
  v40 = swift_allocObject();
  v40[2] = a1;
  v40[3] = v39;
  v40[4] = v36;
  v41 = v59;
  v40[5] = v59;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_685A0;
  *(v42 + 24) = v40;
  v67 = sub_FC94;
  v68 = v42;
  aBlock = _NSConcreteStackBlock;
  v64 = 1107296256;
  v65 = sub_2BB8;
  v66 = &unk_88E88;
  v43 = _Block_copy(&aBlock);
  v61 = v37;

  v44 = v39;

  v45 = swift_allocObject();
  v45[2] = a1;
  v45[3] = v41;
  v45[4] = v44;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_685C4;
  *(v46 + 24) = v45;
  v67 = sub_685FC;
  v68 = v46;
  aBlock = _NSConcreteStackBlock;
  v64 = 1107296256;
  v65 = sub_65494;
  v66 = &unk_88F00;
  v47 = _Block_copy(&aBlock);
  v48 = v61;

  v49 = v44;

  aBlock = 0;
  v50 = v62;
  v51 = [v62 performTransactionWithContext:v48 error:&aBlock block:v43 inaccessibilityHandler:v47];
  _Block_release(v47);
  _Block_release(v43);

  v52 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if ((v51 & 1) == 0)
  {
    sub_74898();

    swift_willThrow();
  }
}

uint64_t sub_5DFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_74CA8();
  v5 = __chkstk_darwin(*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_6A7F0(&qword_8F2A0, &protocol conformance descriptor for CacheIndex);
        v20 = sub_75558();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_5E298(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v231 = a5;
  v230 = a4;
  v248 = sub_38F8(&qword_8F0A0, &qword_79EC8);
  v232 = *(v248 - 8);
  __chkstk_darwin(v248);
  v247 = &v210 - v10;
  v262 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v254 = *(v262 - 8);
  v11 = __chkstk_darwin(v262);
  v256 = &v210 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v246 = (&v210 - v14);
  v265 = v15;
  __chkstk_darwin(v13);
  v253 = &v210 - v16;
  v17 = sub_38F8(&qword_8FED0, &qword_7ACB0);
  v18 = __chkstk_darwin(v17 - 8);
  v258 = &v210 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v257 = &v210 - v20;
  v263 = sub_74CA8();
  v236 = *(v263 - 8);
  v21 = __chkstk_darwin(v263);
  v23 = (&v210 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v259 = &v210 - v24;
  v235 = sub_74968();
  v25 = *(v235 - 8);
  v26 = __chkstk_darwin(v235);
  v229 = &v210 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v233 = &v210 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v210 - v31;
  __chkstk_darwin(v30);
  v238 = &v210 - v33;
  v34 = sub_754B8();
  v239 = *(v34 - 8);
  v35 = __chkstk_darwin(v34);
  v228 = &v210 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v261 = &v210 - v38;
  v39 = __chkstk_darwin(v37);
  v234 = &v210 - v40;
  v41 = __chkstk_darwin(v39);
  v260 = &v210 - v42;
  v43 = __chkstk_darwin(v41);
  v45 = &v210 - v44;
  __chkstk_darwin(v43);
  v47 = &v210 - v46;
  v48 = [a1 protectedDatabase];
  if (!v48)
  {
    sub_75378();
    v52 = sub_754A8();
    v53 = sub_75718();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_0, v52, v53, "Failed to insert: no protected database", v54, 2u);
    }

    (*(v239 + 8))(v47, v34);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v55 = 0;
      *a2 = sub_74888();
    }

    return 0;
  }

  v255 = *(a3 + 16);
  if (!v255)
  {

    return 1;
  }

  v222 = v45;
  v224 = a2;
  v220 = a6;
  v227 = v48;
  v223 = a3;
  v49 = v238;
  sub_74958();
  v50 = *(v25 + 16);
  v51 = v235;
  v50(v32, v49, v235);
  sub_74908();
  v226 = *(v25 + 8);
  v226(v32, v51);
  sub_74C68();
  v216 = v25;
  v211 = v50;
  v212 = v25 + 16;
  v218 = v25 + 8;
  v57 = *(v236 + 8);
  v236 += 8;
  v217 = v57;
  v57(v23, v263);
  *&aBlock = v223;
  sub_38F8(&qword_8FED8, &qword_7ACB8);
  v58 = sub_7718(&qword_8FEE0, &qword_8FED8, &qword_7ACB8, &protocol conformance descriptor for [A]);
  sub_6A63C();
  p_aBlock = &aBlock;
  v60 = sub_75648();
  v219 = 0;
  v225 = 0;
  v221 = 0;
  v62 = 0;
  v63 = *(v60 + 64);
  v237 = v60 + 64;
  v249 = v60;
  v64 = 1 << *(v60 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & v63;
  v67 = (v64 + 63) >> 6;
  v264 = (v239 + 8);
  v250 = "FitnessPlusPropertyRecordEntity";
  v245 = v232 + 16;
  v244 = (v232 + 8);
  v215 = "ournalEntry.swift";
  v214 = v265 + 7;
  v213 = &v270;
  *&v61 = 136315394;
  v241 = v61;
  *&v61 = 136315138;
  v240 = v61;
  v252 = v34;
  v68 = v246;
  v251 = v67;
LABEL_13:
  v69 = v62;
  v70 = v258;
  while (1)
  {
    if (!v66)
    {
      if (v67 <= v69 + 1)
      {
        v73 = v69 + 1;
      }

      else
      {
        v73 = v67;
      }

      while (1)
      {
        v72 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          break;
        }

        if (v72 >= v67)
        {
          v265 = (v73 - 1);
          v98 = sub_38F8(&qword_8FEE8, &qword_7ACC0);
          (*(*(v98 - 8) + 56))(v70, 1, 1, v98);
          v66 = 0;
          goto LABEL_25;
        }

        v66 = *(v237 + 8 * v72);
        v69 = (v69 + 1);
        if (v66)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_70:
      v209 = v58;
      sub_74898();

      swift_willThrow();

      sub_3D48(v23, &qword_8F000, &qword_7A5D0);
      v217(v259, v263);
      v226(v238, v235);
      v194 = 0;
      v171 = 0;
      v198 = sub_6ADA0;
      v199 = p_aBlock;
      v196 = v252;
      v197 = v234;
      v195 = v224;
      goto LABEL_61;
    }

    v72 = v69;
LABEL_24:
    v74 = __clz(__rbit64(v66));
    v66 &= v66 - 1;
    v75 = v74 | (v72 << 6);
    v76 = v249;
    v77 = v253;
    sub_6A6DC(*(v249 + 48) + *(v254 + 72) * v75, v253);
    v78 = *(*(v76 + 56) + 8 * v75);
    v79 = sub_38F8(&qword_8FEE8, &qword_7ACC0);
    v80 = *(v79 + 48);
    sub_1B748(v77, v70, &qword_8F000, &qword_7A5D0);
    *(v70 + v80) = v78;
    (*(*(v79 - 8) + 56))(v70, 0, 1, v79);

    v265 = v72;
LABEL_25:
    v81 = v257;
    sub_1B748(v70, v257, &qword_8FED0, &qword_7ACB0);
    v82 = sub_38F8(&qword_8FEE8, &qword_7ACC0);
    v83 = (*(*(v82 - 8) + 48))(v81, 1, v82);
    v84 = v256;
    if (v83 == 1)
    {
      break;
    }

    v85 = *(v81 + *(v82 + 48));
    v23 = &qword_7A5D0;
    sub_1B748(v81, v68, &qword_8F000, &qword_7A5D0);
    sub_6A7F0(&qword_8F2A0, &protocol conformance descriptor for CacheIndex);
    if (sub_75568())
    {
      v99 = *(v85 + 16);
      if (v99)
      {
        *&aBlock = _swiftEmptyArrayStorage;
        sub_67C58(0, v99, 0);
        v100 = aBlock;
        v101 = v85 + ((*(v232 + 80) + 32) & ~*(v232 + 80));
        v243 = *(v232 + 72);
        v242 = *(v232 + 16);
        do
        {
          v102 = v247;
          v103 = v248;
          v242(v247, v101, v248);
          v104 = sub_75068();
          v106 = v105;
          (*v244)(v102, v103);
          *&aBlock = v100;
          v108 = v100[2];
          v107 = v100[3];
          if (v108 >= v107 >> 1)
          {
            sub_67C58((v107 > 1), v108 + 1, 1);
            v100 = aBlock;
          }

          v100[2] = v108 + 1;
          v109 = &v100[2 * v108];
          v109[4] = v104;
          v109[5] = v106;
          v101 += v243;
          --v99;
        }

        while (v99);
      }

      else
      {

        v100 = _swiftEmptyArrayStorage;
      }

      v110 = sub_6A488(v100);

      v111 = v219;
      v112 = sub_64290(v110);
      v219 = v111;
      *&aBlock = v112;
      sub_38F8(&qword_8F280, &unk_7ABA0);
      sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0, &protocol conformance descriptor for [A]);
      v113 = sub_75538();
      v115 = v114;

      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_75908(87);
      v276._countAndFlagsBits = 0x46204554454C4544;
      v276._object = 0xEC000000204D4F52;
      sub_75608(v276);
      type metadata accessor for RingsPropertyRecordEntity();
      v116 = [swift_getObjCClassFromMetadata() disambiguatedDatabaseTable];
      v117 = sub_755A8();
      v119 = v118;

      v277._countAndFlagsBits = v117;
      v277._object = v119;
      sub_75608(v277);

      v278._countAndFlagsBits = 0xD000000000000046;
      v278._object = (v215 | 0x8000000000000000);
      sub_75608(v278);
      v279._countAndFlagsBits = v113;
      v279._object = v115;
      sub_75608(v279);

      v280._countAndFlagsBits = 41;
      v280._object = 0xE100000000000000;
      sub_75608(v280);
      v120 = sub_75598();

      v23 = v246;
      v121 = v253;
      sub_6A6DC(v246, v253);
      v122 = (*(v254 + 80) + 16) & ~*(v254 + 80);
      v123 = &v214[v122] & 0xFFFFFFFFFFFFFFF8;
      p_aBlock = swift_allocObject();
      sub_1B748(v121, p_aBlock + v122, &qword_8F000, &qword_7A5D0);
      *(&p_aBlock->isa + v123) = v110;
      sub_43230(v225, v221);
      v124 = swift_allocObject();
      *(v124 + 16) = sub_6ADA0;
      *(v124 + 24) = p_aBlock;
      v272 = sub_6ADA4;
      v273 = v124;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v270 = sub_644E0;
      v271 = &unk_893B0;
      v125 = _Block_copy(&aBlock);

      *&aBlock = 0;
      LODWORD(v121) = [v227 executeSQL:v120 error:&aBlock bindingHandler:v125 enumerationHandler:0];
      _Block_release(v125);

      v58 = aBlock;
      if (v121)
      {
        v126 = aBlock;
        sub_3D48(v23, &qword_8F000, &qword_7A5D0);
        v225 = sub_6ADA0;
        v221 = p_aBlock;
        v62 = v265;
        v68 = v23;
        v67 = v251;
        goto LABEL_13;
      }

      goto LABEL_70;
    }

    v86 = v260;
    sub_75378();
    sub_6A6DC(v68, v84);
    v87 = sub_754A8();
    v88 = sub_75718();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v274 = swift_slowAlloc();
      *v89 = v241;
      *(v89 + 4) = sub_31B4(0xD000000000000019, v250 | 0x8000000000000000, &v274);
      *(v89 + 12) = 2080;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_759A8();
      v275._countAndFlagsBits = 3026478;
      v275._object = 0xE300000000000000;
      sub_75608(v275);
      sub_759A8();
      v90 = aBlock;
      sub_3D48(v84, &qword_8F000, &qword_7A5D0);
      v91 = sub_31B4(v90, *(&v90 + 1), &v274);

      *(v89 + 14) = v91;
      _os_log_impl(&dword_0, v87, v88, "[%s] Trying to insert records in the future: %s, skipping...", v89, 0x16u);
      swift_arrayDestroy();

      v23 = &qword_7A5D0;
      v68 = v246;

      v92 = *v264;
      v93 = v260;
    }

    else
    {

      sub_3D48(v84, &qword_8F000, &qword_7A5D0);
      v92 = *v264;
      v93 = v86;
    }

    v94 = v252;
    (v92)(v93, v252);
    v58 = v261;
    sub_75378();
    p_aBlock = sub_754A8();
    v95 = sub_75728();
    v96 = os_log_type_enabled(p_aBlock, v95);
    v70 = v258;
    if (v96)
    {
      v58 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *&aBlock = v97;
      *v58 = v240;
      *(v58 + 1) = sub_31B4(0xD000000000000019, v250 | 0x8000000000000000, &aBlock);
      _os_log_impl(&dword_0, p_aBlock, v95, "[%s] Tried to insert records in the future", v58, 0xCu);
      sub_3940(v97);

      v71 = v261;
    }

    else
    {

      v71 = v58;
    }

    (v92)(v71, v94);
    sub_3D48(v68, &qword_8F000, &qword_7A5D0);
    v69 = v265;
    v67 = v251;
  }

  sub_75378();
  v127 = sub_754A8();
  v128 = sub_75738();
  v129 = os_log_type_enabled(v127, v128);
  v130 = v235;
  v131 = v238;
  v132 = v226;
  if (v129)
  {
    v133 = swift_slowAlloc();
    *v133 = 134217984;
    v134 = v233;
    sub_74958();
    swift_beginAccess();
    v135 = v229;
    v211(v229, v131, v130);
    sub_748F8();
    v137 = v136;
    v132(v135, v130);
    v132(v134, v130);
    *(v133 + 4) = v137;
    _os_log_impl(&dword_0, v127, v128, "Deleted existing matching records in %fs", v133, 0xCu);
  }

  v261 = *v264;
  (v261)(v222, v252);
  v138 = v233;
  sub_74958();
  swift_beginAccess();
  (*(v216 + 40))(v131, v138, v130);
  v268 = &off_85790;
  sub_66D40(&off_857B8, &qword_8FEF0, &qword_7ACC8);
  sub_66D40(&off_857E0, &qword_8FEF0, &qword_7ACC8);
  v265 = v268;
  v267 = _swiftEmptyArrayStorage;
  v139 = v255;
  sub_67C58(0, v255, 0);
  v140 = 0;
  v141 = v267;
  do
  {
    if (v140 == v139)
    {
      __break(1u);
    }

    *&aBlock = 40;
    *(&aBlock + 1) = 0xE100000000000000;
    v142 = *(v265 + 2);
    if (v142)
    {
      v266 = _swiftEmptyArrayStorage;
      sub_67C58(0, v142, 0);
      v143 = v266;
      v144 = v266[2];
      v145 = 2 * v144;
      do
      {
        v266 = v143;
        v146 = v143[3];
        v147 = v144 + 1;
        if (v144 >= v146 >> 1)
        {
          sub_67C58((v146 > 1), v144 + 1, 1);
          v143 = v266;
        }

        v143[2] = v147;
        v148 = &v143[v145];
        v148[4] = 63;
        v148[5] = 0xE100000000000000;
        v145 += 2;
        v144 = v147;
        --v142;
      }

      while (v142);
    }

    else
    {
      v143 = _swiftEmptyArrayStorage;
    }

    v266 = v143;
    v149 = sub_38F8(&qword_8F280, &unk_7ABA0);
    sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0, &protocol conformance descriptor for [A]);
    v262 = v149;
    v150 = sub_75538();
    v152 = v151;

    v281._countAndFlagsBits = v150;
    v281._object = v152;
    sub_75608(v281);

    v282._countAndFlagsBits = 41;
    v282._object = 0xE100000000000000;
    sub_75608(v282);
    v153 = aBlock;
    v267 = v141;
    v155 = v141[2];
    v154 = v141[3];
    if (v155 >= v154 >> 1)
    {
      sub_67C58((v154 > 1), v155 + 1, 1);
      v141 = v267;
    }

    ++v140;
    v141[2] = v155 + 1;
    *&v141[2 * v155 + 4] = v153;
    v139 = v255;
  }

  while (v140 != v255);

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_75908(30);

  strcpy(&aBlock, "INSERT INTO ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  type metadata accessor for RingsPropertyRecordEntity();
  v156 = [swift_getObjCClassFromMetadata() disambiguatedDatabaseTable];
  v157 = sub_755A8();
  v159 = v158;

  v283._countAndFlagsBits = v157;
  v283._object = v159;
  sub_75608(v283);

  v284._countAndFlagsBits = 10272;
  v284._object = 0xE200000000000000;
  sub_75608(v284);
  v267 = sub_12FE0();
  v160 = sub_75538();
  v162 = v161;

  v285._countAndFlagsBits = v160;
  v285._object = v162;
  sub_75608(v285);

  v286._countAndFlagsBits = 0x5345554C41562029;
  v286._object = 0xE900000000000020;
  sub_75608(v286);
  v267 = v141;
  v163 = sub_75538();
  v165 = v164;

  v287._countAndFlagsBits = v163;
  v287._object = v165;
  sub_75608(v287);

  v288._countAndFlagsBits = 59;
  v288._object = 0xE100000000000000;
  sub_75608(v288);
  v166 = [v230 syncIdentityManager];
  v167 = [v166 currentSyncIdentity];

  v168 = [v167 entity];
  v169 = [v168 persistentID];

  v170 = sub_75598();

  v171 = swift_allocObject();
  v172 = v231;
  v171[2] = v223;
  v171[3] = v172;
  v173 = v238;
  v174 = v220;
  v171[4] = v238;
  v171[5] = v174;
  v171[6] = v169;
  v175 = swift_allocObject();
  *(v175 + 16) = sub_6AA7C;
  *(v175 + 24) = v171;
  v272 = sub_6ADA4;
  v273 = v175;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v270 = sub_644E0;
  v271 = &unk_89338;
  v176 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v177 = v227;
  LOBYTE(v169) = [v227 executeSQL:v170 error:&aBlock bindingHandler:v176 enumerationHandler:0];
  _Block_release(v176);

  if (v169)
  {
    v178 = aBlock;
    v179 = v228;
    sub_75378();

    v180 = sub_754A8();
    v181 = sub_75738();
    v182 = os_log_type_enabled(v180, v181);
    v183 = v252;
    v184 = v235;
    if (v182)
    {
      v185 = swift_slowAlloc();
      *v185 = 134218240;
      *(v185 + 4) = v255;

      *(v185 + 12) = 2048;
      v186 = v233;
      sub_74958();
      v187 = v229;
      v188 = v238;
      v211(v229, v238, v184);
      sub_748F8();
      v190 = v189;
      v191 = v187;
      v192 = v226;
      v226(v191, v184);
      v192(v186, v184);
      *(v185 + 14) = v190;
      _os_log_impl(&dword_0, v180, v181, "Inserted %ld records in %fs", v185, 0x16u);
      v179 = v228;
    }

    else
    {

      v188 = v238;
      v192 = v226;
    }

    v208 = v217;

    (v261)(v179, v183);
    v208(v259, v263);
    v192(v188, v184);
    sub_43230(v225, v221);

    return 1;
  }

  v193 = aBlock;
  sub_74898();

  swift_willThrow();
  v217(v259, v263);
  v226(v173, v235);
  v194 = sub_6AA7C;
  v195 = v224;
  v196 = v252;
  v197 = v234;
  v198 = v225;
  v199 = v221;
LABEL_61:
  sub_75378();
  swift_errorRetain();
  v200 = sub_754A8();
  v201 = sub_75718();

  if (os_log_type_enabled(v200, v201))
  {
    v202 = swift_slowAlloc();
    v265 = v194;
    v203 = v202;
    v204 = swift_slowAlloc();
    v225 = v198;
    v205 = v199;
    v206 = v204;
    *v203 = 138412290;
    swift_errorRetain();
    v207 = _swift_stdlib_bridgeErrorToNSError();
    *(v203 + 4) = v207;
    *v206 = v207;
    _os_log_impl(&dword_0, v200, v201, "Failed to insert: %@", v203, 0xCu);
    sub_3D48(v206, &unk_8EB30, &unk_7A270);
    v199 = v205;
    v198 = v225;

    v194 = v265;
  }

  (*(v239 + 8))(v197, v196);
  if (v195)
  {
    *v195 = sub_74888();
  }

  sub_43230(v198, v199);
  sub_43230(v194, v171);
  return 0;
}

uint64_t sub_6023C(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v231 = a5;
  v230 = a4;
  v248 = sub_38F8(&unk_8FD00, &qword_7A260);
  v232 = *(v248 - 8);
  __chkstk_darwin(v248);
  v247 = &v210 - v10;
  v262 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v254 = *(v262 - 8);
  v11 = __chkstk_darwin(v262);
  v256 = &v210 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v246 = (&v210 - v14);
  v265 = v15;
  __chkstk_darwin(v13);
  v253 = &v210 - v16;
  v17 = sub_38F8(&qword_8FEA0, &qword_7AC78);
  v18 = __chkstk_darwin(v17 - 8);
  v258 = &v210 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v257 = &v210 - v20;
  v263 = sub_74CA8();
  v236 = *(v263 - 8);
  v21 = __chkstk_darwin(v263);
  v23 = (&v210 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v259 = &v210 - v24;
  v235 = sub_74968();
  v25 = *(v235 - 8);
  v26 = __chkstk_darwin(v235);
  v229 = &v210 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v233 = &v210 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v210 - v31;
  __chkstk_darwin(v30);
  v238 = &v210 - v33;
  v34 = sub_754B8();
  v239 = *(v34 - 8);
  v35 = __chkstk_darwin(v34);
  v228 = &v210 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v261 = &v210 - v38;
  v39 = __chkstk_darwin(v37);
  v234 = &v210 - v40;
  v41 = __chkstk_darwin(v39);
  v260 = &v210 - v42;
  v43 = __chkstk_darwin(v41);
  v45 = &v210 - v44;
  __chkstk_darwin(v43);
  v47 = &v210 - v46;
  v48 = [a1 protectedDatabase];
  if (!v48)
  {
    sub_75378();
    v52 = sub_754A8();
    v53 = sub_75718();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_0, v52, v53, "Failed to insert: no protected database", v54, 2u);
    }

    (*(v239 + 8))(v47, v34);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v55 = 0;
      *a2 = sub_74888();
    }

    return 0;
  }

  v255 = *(a3 + 16);
  if (!v255)
  {

    return 1;
  }

  v222 = v45;
  v224 = a2;
  v220 = a6;
  v227 = v48;
  v223 = a3;
  v49 = v238;
  sub_74958();
  v50 = *(v25 + 16);
  v51 = v235;
  v50(v32, v49, v235);
  sub_74908();
  v226 = *(v25 + 8);
  v226(v32, v51);
  sub_74C68();
  v216 = v25;
  v211 = v50;
  v212 = v25 + 16;
  v218 = v25 + 8;
  v57 = *(v236 + 8);
  v236 += 8;
  v217 = v57;
  v57(v23, v263);
  *&aBlock = v223;
  sub_38F8(&qword_8FEA8, &qword_7AC80);
  v58 = sub_7718(&qword_8FEB0, &qword_8FEA8, &qword_7AC80, &protocol conformance descriptor for [A]);
  sub_6A63C();
  p_aBlock = &aBlock;
  v60 = sub_75648();
  v219 = 0;
  v225 = 0;
  v221 = 0;
  v62 = 0;
  v63 = *(v60 + 64);
  v237 = v60 + 64;
  v249 = v60;
  v64 = 1 << *(v60 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & v63;
  v67 = (v64 + 63) >> 6;
  v264 = (v239 + 8);
  v250 = "ncePlugin.EntityWrapper";
  v245 = v232 + 16;
  v244 = (v232 + 8);
  v215 = "ournalEntry.swift";
  v214 = v265 + 7;
  v213 = &v270;
  *&v61 = 136315394;
  v241 = v61;
  *&v61 = 136315138;
  v240 = v61;
  v252 = v34;
  v68 = v246;
  v251 = v67;
LABEL_13:
  v69 = v62;
  v70 = v258;
  while (1)
  {
    if (!v66)
    {
      if (v67 <= v69 + 1)
      {
        v73 = v69 + 1;
      }

      else
      {
        v73 = v67;
      }

      while (1)
      {
        v72 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          break;
        }

        if (v72 >= v67)
        {
          v265 = (v73 - 1);
          v98 = sub_38F8(&qword_8FEB8, &qword_7AC88);
          (*(*(v98 - 8) + 56))(v70, 1, 1, v98);
          v66 = 0;
          goto LABEL_25;
        }

        v66 = *(v237 + 8 * v72);
        v69 = (v69 + 1);
        if (v66)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_70:
      v209 = v58;
      sub_74898();

      swift_willThrow();

      sub_3D48(v23, &qword_8F000, &qword_7A5D0);
      v217(v259, v263);
      v226(v238, v235);
      v194 = 0;
      v171 = 0;
      v198 = sub_6ADA0;
      v199 = p_aBlock;
      v196 = v252;
      v197 = v234;
      v195 = v224;
      goto LABEL_61;
    }

    v72 = v69;
LABEL_24:
    v74 = __clz(__rbit64(v66));
    v66 &= v66 - 1;
    v75 = v74 | (v72 << 6);
    v76 = v249;
    v77 = v253;
    sub_6A6DC(*(v249 + 48) + *(v254 + 72) * v75, v253);
    v78 = *(*(v76 + 56) + 8 * v75);
    v79 = sub_38F8(&qword_8FEB8, &qword_7AC88);
    v80 = *(v79 + 48);
    sub_1B748(v77, v70, &qword_8F000, &qword_7A5D0);
    *(v70 + v80) = v78;
    (*(*(v79 - 8) + 56))(v70, 0, 1, v79);

    v265 = v72;
LABEL_25:
    v81 = v257;
    sub_1B748(v70, v257, &qword_8FEA0, &qword_7AC78);
    v82 = sub_38F8(&qword_8FEB8, &qword_7AC88);
    v83 = (*(*(v82 - 8) + 48))(v81, 1, v82);
    v84 = v256;
    if (v83 == 1)
    {
      break;
    }

    v85 = *(v81 + *(v82 + 48));
    v23 = &qword_7A5D0;
    sub_1B748(v81, v68, &qword_8F000, &qword_7A5D0);
    sub_6A7F0(&qword_8F2A0, &protocol conformance descriptor for CacheIndex);
    if (sub_75568())
    {
      v99 = *(v85 + 16);
      if (v99)
      {
        *&aBlock = _swiftEmptyArrayStorage;
        sub_67C58(0, v99, 0);
        v100 = aBlock;
        v101 = v85 + ((*(v232 + 80) + 32) & ~*(v232 + 80));
        v243 = *(v232 + 72);
        v242 = *(v232 + 16);
        do
        {
          v102 = v247;
          v103 = v248;
          v242(v247, v101, v248);
          v104 = sub_75068();
          v106 = v105;
          (*v244)(v102, v103);
          *&aBlock = v100;
          v108 = v100[2];
          v107 = v100[3];
          if (v108 >= v107 >> 1)
          {
            sub_67C58((v107 > 1), v108 + 1, 1);
            v100 = aBlock;
          }

          v100[2] = v108 + 1;
          v109 = &v100[2 * v108];
          v109[4] = v104;
          v109[5] = v106;
          v101 += v243;
          --v99;
        }

        while (v99);
      }

      else
      {

        v100 = _swiftEmptyArrayStorage;
      }

      v110 = sub_6A488(v100);

      v111 = v219;
      v112 = sub_64290(v110);
      v219 = v111;
      *&aBlock = v112;
      sub_38F8(&qword_8F280, &unk_7ABA0);
      sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0, &protocol conformance descriptor for [A]);
      v113 = sub_75538();
      v115 = v114;

      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_75908(87);
      v276._countAndFlagsBits = 0x46204554454C4544;
      v276._object = 0xEC000000204D4F52;
      sub_75608(v276);
      type metadata accessor for FitnessPlusPropertyRecordEntity();
      v116 = [swift_getObjCClassFromMetadata() disambiguatedDatabaseTable];
      v117 = sub_755A8();
      v119 = v118;

      v277._countAndFlagsBits = v117;
      v277._object = v119;
      sub_75608(v277);

      v278._countAndFlagsBits = 0xD000000000000046;
      v278._object = (v215 | 0x8000000000000000);
      sub_75608(v278);
      v279._countAndFlagsBits = v113;
      v279._object = v115;
      sub_75608(v279);

      v280._countAndFlagsBits = 41;
      v280._object = 0xE100000000000000;
      sub_75608(v280);
      v120 = sub_75598();

      v23 = v246;
      v121 = v253;
      sub_6A6DC(v246, v253);
      v122 = (*(v254 + 80) + 16) & ~*(v254 + 80);
      v123 = &v214[v122] & 0xFFFFFFFFFFFFFFF8;
      p_aBlock = swift_allocObject();
      sub_1B748(v121, p_aBlock + v122, &qword_8F000, &qword_7A5D0);
      *(&p_aBlock->isa + v123) = v110;
      sub_43230(v225, v221);
      v124 = swift_allocObject();
      *(v124 + 16) = sub_6ADA0;
      *(v124 + 24) = p_aBlock;
      v272 = sub_6ADA4;
      v273 = v124;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v270 = sub_644E0;
      v271 = &unk_891D0;
      v125 = _Block_copy(&aBlock);

      *&aBlock = 0;
      LODWORD(v121) = [v227 executeSQL:v120 error:&aBlock bindingHandler:v125 enumerationHandler:0];
      _Block_release(v125);

      v58 = aBlock;
      if (v121)
      {
        v126 = aBlock;
        sub_3D48(v23, &qword_8F000, &qword_7A5D0);
        v225 = sub_6ADA0;
        v221 = p_aBlock;
        v62 = v265;
        v68 = v23;
        v67 = v251;
        goto LABEL_13;
      }

      goto LABEL_70;
    }

    v86 = v260;
    sub_75378();
    sub_6A6DC(v68, v84);
    v87 = sub_754A8();
    v88 = sub_75718();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v274 = swift_slowAlloc();
      *v89 = v241;
      *(v89 + 4) = sub_31B4(0xD00000000000001FLL, v250 | 0x8000000000000000, &v274);
      *(v89 + 12) = 2080;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_759A8();
      v275._countAndFlagsBits = 3026478;
      v275._object = 0xE300000000000000;
      sub_75608(v275);
      sub_759A8();
      v90 = aBlock;
      sub_3D48(v84, &qword_8F000, &qword_7A5D0);
      v91 = sub_31B4(v90, *(&v90 + 1), &v274);

      *(v89 + 14) = v91;
      _os_log_impl(&dword_0, v87, v88, "[%s] Trying to insert records in the future: %s, skipping...", v89, 0x16u);
      swift_arrayDestroy();

      v23 = &qword_7A5D0;
      v68 = v246;

      v92 = *v264;
      v93 = v260;
    }

    else
    {

      sub_3D48(v84, &qword_8F000, &qword_7A5D0);
      v92 = *v264;
      v93 = v86;
    }

    v94 = v252;
    (v92)(v93, v252);
    v58 = v261;
    sub_75378();
    p_aBlock = sub_754A8();
    v95 = sub_75728();
    v96 = os_log_type_enabled(p_aBlock, v95);
    v70 = v258;
    if (v96)
    {
      v58 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *&aBlock = v97;
      *v58 = v240;
      *(v58 + 1) = sub_31B4(0xD00000000000001FLL, v250 | 0x8000000000000000, &aBlock);
      _os_log_impl(&dword_0, p_aBlock, v95, "[%s] Tried to insert records in the future", v58, 0xCu);
      sub_3940(v97);

      v71 = v261;
    }

    else
    {

      v71 = v58;
    }

    (v92)(v71, v94);
    sub_3D48(v68, &qword_8F000, &qword_7A5D0);
    v69 = v265;
    v67 = v251;
  }

  sub_75378();
  v127 = sub_754A8();
  v128 = sub_75738();
  v129 = os_log_type_enabled(v127, v128);
  v130 = v235;
  v131 = v238;
  v132 = v226;
  if (v129)
  {
    v133 = swift_slowAlloc();
    *v133 = 134217984;
    v134 = v233;
    sub_74958();
    swift_beginAccess();
    v135 = v229;
    v211(v229, v131, v130);
    sub_748F8();
    v137 = v136;
    v132(v135, v130);
    v132(v134, v130);
    *(v133 + 4) = v137;
    _os_log_impl(&dword_0, v127, v128, "Deleted existing matching records in %fs", v133, 0xCu);
  }

  v261 = *v264;
  (v261)(v222, v252);
  v138 = v233;
  sub_74958();
  swift_beginAccess();
  (*(v216 + 40))(v131, v138, v130);
  v268 = &off_85838;
  sub_66D40(&off_85860, &qword_8FEC0, &qword_7AC90);
  sub_66D40(&off_85888, &qword_8FEC0, &qword_7AC90);
  v265 = v268;
  v267 = _swiftEmptyArrayStorage;
  v139 = v255;
  sub_67C58(0, v255, 0);
  v140 = 0;
  v141 = v267;
  do
  {
    if (v140 == v139)
    {
      __break(1u);
    }

    *&aBlock = 40;
    *(&aBlock + 1) = 0xE100000000000000;
    v142 = *(v265 + 2);
    if (v142)
    {
      v266 = _swiftEmptyArrayStorage;
      sub_67C58(0, v142, 0);
      v143 = v266;
      v144 = v266[2];
      v145 = 2 * v144;
      do
      {
        v266 = v143;
        v146 = v143[3];
        v147 = v144 + 1;
        if (v144 >= v146 >> 1)
        {
          sub_67C58((v146 > 1), v144 + 1, 1);
          v143 = v266;
        }

        v143[2] = v147;
        v148 = &v143[v145];
        v148[4] = 63;
        v148[5] = 0xE100000000000000;
        v145 += 2;
        v144 = v147;
        --v142;
      }

      while (v142);
    }

    else
    {
      v143 = _swiftEmptyArrayStorage;
    }

    v266 = v143;
    v149 = sub_38F8(&qword_8F280, &unk_7ABA0);
    sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0, &protocol conformance descriptor for [A]);
    v262 = v149;
    v150 = sub_75538();
    v152 = v151;

    v281._countAndFlagsBits = v150;
    v281._object = v152;
    sub_75608(v281);

    v282._countAndFlagsBits = 41;
    v282._object = 0xE100000000000000;
    sub_75608(v282);
    v153 = aBlock;
    v267 = v141;
    v155 = v141[2];
    v154 = v141[3];
    if (v155 >= v154 >> 1)
    {
      sub_67C58((v154 > 1), v155 + 1, 1);
      v141 = v267;
    }

    ++v140;
    v141[2] = v155 + 1;
    *&v141[2 * v155 + 4] = v153;
    v139 = v255;
  }

  while (v140 != v255);

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_75908(30);

  strcpy(&aBlock, "INSERT INTO ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  type metadata accessor for FitnessPlusPropertyRecordEntity();
  v156 = [swift_getObjCClassFromMetadata() disambiguatedDatabaseTable];
  v157 = sub_755A8();
  v159 = v158;

  v283._countAndFlagsBits = v157;
  v283._object = v159;
  sub_75608(v283);

  v284._countAndFlagsBits = 10272;
  v284._object = 0xE200000000000000;
  sub_75608(v284);
  v267 = sub_6F270();
  v160 = sub_75538();
  v162 = v161;

  v285._countAndFlagsBits = v160;
  v285._object = v162;
  sub_75608(v285);

  v286._countAndFlagsBits = 0x5345554C41562029;
  v286._object = 0xE900000000000020;
  sub_75608(v286);
  v267 = v141;
  v163 = sub_75538();
  v165 = v164;

  v287._countAndFlagsBits = v163;
  v287._object = v165;
  sub_75608(v287);

  v288._countAndFlagsBits = 59;
  v288._object = 0xE100000000000000;
  sub_75608(v288);
  v166 = [v230 syncIdentityManager];
  v167 = [v166 currentSyncIdentity];

  v168 = [v167 entity];
  v169 = [v168 persistentID];

  v170 = sub_75598();

  v171 = swift_allocObject();
  v172 = v231;
  v171[2] = v223;
  v171[3] = v172;
  v173 = v238;
  v174 = v220;
  v171[4] = v238;
  v171[5] = v174;
  v171[6] = v169;
  v175 = swift_allocObject();
  *(v175 + 16) = sub_6A8A4;
  *(v175 + 24) = v171;
  v272 = sub_6ADA4;
  v273 = v175;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v270 = sub_644E0;
  v271 = &unk_89158;
  v176 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v177 = v227;
  LOBYTE(v169) = [v227 executeSQL:v170 error:&aBlock bindingHandler:v176 enumerationHandler:0];
  _Block_release(v176);

  if (v169)
  {
    v178 = aBlock;
    v179 = v228;
    sub_75378();

    v180 = sub_754A8();
    v181 = sub_75738();
    v182 = os_log_type_enabled(v180, v181);
    v183 = v252;
    v184 = v235;
    if (v182)
    {
      v185 = swift_slowAlloc();
      *v185 = 134218240;
      *(v185 + 4) = v255;

      *(v185 + 12) = 2048;
      v186 = v233;
      sub_74958();
      v187 = v229;
      v188 = v238;
      v211(v229, v238, v184);
      sub_748F8();
      v190 = v189;
      v191 = v187;
      v192 = v226;
      v226(v191, v184);
      v192(v186, v184);
      *(v185 + 14) = v190;
      _os_log_impl(&dword_0, v180, v181, "Inserted %ld records in %fs", v185, 0x16u);
      v179 = v228;
    }

    else
    {

      v188 = v238;
      v192 = v226;
    }

    v208 = v217;

    (v261)(v179, v183);
    v208(v259, v263);
    v192(v188, v184);
    sub_43230(v225, v221);

    return 1;
  }

  v193 = aBlock;
  sub_74898();

  swift_willThrow();
  v217(v259, v263);
  v226(v173, v235);
  v194 = sub_6A8A4;
  v195 = v224;
  v196 = v252;
  v197 = v234;
  v198 = v225;
  v199 = v221;
LABEL_61:
  sub_75378();
  swift_errorRetain();
  v200 = sub_754A8();
  v201 = sub_75718();

  if (os_log_type_enabled(v200, v201))
  {
    v202 = swift_slowAlloc();
    v265 = v194;
    v203 = v202;
    v204 = swift_slowAlloc();
    v225 = v198;
    v205 = v199;
    v206 = v204;
    *v203 = 138412290;
    swift_errorRetain();
    v207 = _swift_stdlib_bridgeErrorToNSError();
    *(v203 + 4) = v207;
    *v206 = v207;
    _os_log_impl(&dword_0, v200, v201, "Failed to insert: %@", v203, 0xCu);
    sub_3D48(v206, &unk_8EB30, &unk_7A270);
    v199 = v205;
    v198 = v225;

    v194 = v265;
  }

  (*(v239 + 8))(v197, v196);
  if (v195)
  {
    *v195 = sub_74888();
  }

  sub_43230(v198, v199);
  sub_43230(v194, v171);
  return 0;
}

uint64_t sub_621E0(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v231 = a5;
  v230 = a4;
  v248 = sub_38F8(&qword_8EFE0, &qword_79F30);
  v232 = *(v248 - 8);
  __chkstk_darwin(v248);
  v247 = &v210 - v10;
  v262 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v254 = *(v262 - 8);
  v11 = __chkstk_darwin(v262);
  v256 = &v210 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v246 = (&v210 - v14);
  v265 = v15;
  __chkstk_darwin(v13);
  v253 = &v210 - v16;
  v17 = sub_38F8(&qword_8FE58, &qword_7ABE8);
  v18 = __chkstk_darwin(v17 - 8);
  v258 = &v210 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v257 = &v210 - v20;
  v263 = sub_74CA8();
  v236 = *(v263 - 8);
  v21 = __chkstk_darwin(v263);
  v23 = (&v210 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v259 = &v210 - v24;
  v235 = sub_74968();
  v25 = *(v235 - 8);
  v26 = __chkstk_darwin(v235);
  v229 = &v210 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v233 = &v210 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v210 - v31;
  __chkstk_darwin(v30);
  v238 = &v210 - v33;
  v34 = sub_754B8();
  v239 = *(v34 - 8);
  v35 = __chkstk_darwin(v34);
  v228 = &v210 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v261 = &v210 - v38;
  v39 = __chkstk_darwin(v37);
  v234 = &v210 - v40;
  v41 = __chkstk_darwin(v39);
  v260 = &v210 - v42;
  v43 = __chkstk_darwin(v41);
  v45 = &v210 - v44;
  __chkstk_darwin(v43);
  v47 = &v210 - v46;
  v48 = [a1 protectedDatabase];
  if (!v48)
  {
    sub_75378();
    v52 = sub_754A8();
    v53 = sub_75718();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_0, v52, v53, "Failed to insert: no protected database", v54, 2u);
    }

    (*(v239 + 8))(v47, v34);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v55 = 0;
      *a2 = sub_74888();
    }

    return 0;
  }

  v255 = *(a3 + 16);
  if (!v255)
  {

    return 1;
  }

  v222 = v45;
  v224 = a2;
  v220 = a6;
  v227 = v48;
  v223 = a3;
  v49 = v238;
  sub_74958();
  v50 = *(v25 + 16);
  v51 = v235;
  v50(v32, v49, v235);
  sub_74908();
  v226 = *(v25 + 8);
  v226(v32, v51);
  sub_74C68();
  v216 = v25;
  v211 = v50;
  v212 = v25 + 16;
  v218 = v25 + 8;
  v57 = *(v236 + 8);
  v236 += 8;
  v217 = v57;
  v57(v23, v263);
  *&aBlock = v223;
  sub_38F8(&qword_8FE60, &qword_7ABF0);
  v58 = sub_7718(&qword_8FE68, &qword_8FE60, &qword_7ABF0, &protocol conformance descriptor for [A]);
  sub_6A63C();
  p_aBlock = &aBlock;
  v60 = sub_75648();
  v219 = 0;
  v225 = 0;
  v221 = 0;
  v62 = 0;
  v63 = *(v60 + 64);
  v237 = v60 + 64;
  v249 = v60;
  v64 = 1 << *(v60 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & v63;
  v67 = (v64 + 63) >> 6;
  v264 = (v239 + 8);
  v250 = "RingsPropertyRecordEntity";
  v245 = v232 + 16;
  v244 = (v232 + 8);
  v215 = "ournalEntry.swift";
  v214 = v265 + 7;
  v213 = &v270;
  *&v61 = 136315394;
  v241 = v61;
  *&v61 = 136315138;
  v240 = v61;
  v252 = v34;
  v68 = v246;
  v251 = v67;
LABEL_13:
  v69 = v62;
  v70 = v258;
  while (1)
  {
    if (!v66)
    {
      if (v67 <= v69 + 1)
      {
        v73 = v69 + 1;
      }

      else
      {
        v73 = v67;
      }

      while (1)
      {
        v72 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          break;
        }

        if (v72 >= v67)
        {
          v265 = (v73 - 1);
          v98 = sub_38F8(&qword_8FE78, &unk_7ABF8);
          (*(*(v98 - 8) + 56))(v70, 1, 1, v98);
          v66 = 0;
          goto LABEL_25;
        }

        v66 = *(v237 + 8 * v72);
        v69 = (v69 + 1);
        if (v66)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_70:
      v209 = v58;
      sub_74898();

      swift_willThrow();

      sub_3D48(v23, &qword_8F000, &qword_7A5D0);
      v217(v259, v263);
      v226(v238, v235);
      v194 = 0;
      v171 = 0;
      v198 = sub_6A7EC;
      v199 = p_aBlock;
      v196 = v252;
      v197 = v234;
      v195 = v224;
      goto LABEL_61;
    }

    v72 = v69;
LABEL_24:
    v74 = __clz(__rbit64(v66));
    v66 &= v66 - 1;
    v75 = v74 | (v72 << 6);
    v76 = v249;
    v77 = v253;
    sub_6A6DC(*(v249 + 48) + *(v254 + 72) * v75, v253);
    v78 = *(*(v76 + 56) + 8 * v75);
    v79 = sub_38F8(&qword_8FE78, &unk_7ABF8);
    v80 = *(v79 + 48);
    sub_1B748(v77, v70, &qword_8F000, &qword_7A5D0);
    *(v70 + v80) = v78;
    (*(*(v79 - 8) + 56))(v70, 0, 1, v79);

    v265 = v72;
LABEL_25:
    v81 = v257;
    sub_1B748(v70, v257, &qword_8FE58, &qword_7ABE8);
    v82 = sub_38F8(&qword_8FE78, &unk_7ABF8);
    v83 = (*(*(v82 - 8) + 48))(v81, 1, v82);
    v84 = v256;
    if (v83 == 1)
    {
      break;
    }

    v85 = *(v81 + *(v82 + 48));
    v23 = &qword_7A5D0;
    sub_1B748(v81, v68, &qword_8F000, &qword_7A5D0);
    sub_6A7F0(&qword_8F2A0, &protocol conformance descriptor for CacheIndex);
    if (sub_75568())
    {
      v99 = *(v85 + 16);
      if (v99)
      {
        *&aBlock = _swiftEmptyArrayStorage;
        sub_67C58(0, v99, 0);
        v100 = aBlock;
        v101 = v85 + ((*(v232 + 80) + 32) & ~*(v232 + 80));
        v243 = *(v232 + 72);
        v242 = *(v232 + 16);
        do
        {
          v102 = v247;
          v103 = v248;
          v242(v247, v101, v248);
          v104 = sub_75068();
          v106 = v105;
          (*v244)(v102, v103);
          *&aBlock = v100;
          v108 = v100[2];
          v107 = v100[3];
          if (v108 >= v107 >> 1)
          {
            sub_67C58((v107 > 1), v108 + 1, 1);
            v100 = aBlock;
          }

          v100[2] = v108 + 1;
          v109 = &v100[2 * v108];
          v109[4] = v104;
          v109[5] = v106;
          v101 += v243;
          --v99;
        }

        while (v99);
      }

      else
      {

        v100 = _swiftEmptyArrayStorage;
      }

      v110 = sub_6A488(v100);

      v111 = v219;
      v112 = sub_64290(v110);
      v219 = v111;
      *&aBlock = v112;
      sub_38F8(&qword_8F280, &unk_7ABA0);
      sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0, &protocol conformance descriptor for [A]);
      v113 = sub_75538();
      v115 = v114;

      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_75908(87);
      v276._countAndFlagsBits = 0x46204554454C4544;
      v276._object = 0xEC000000204D4F52;
      sub_75608(v276);
      type metadata accessor for WorkoutPropertyRecordEntity();
      v116 = [swift_getObjCClassFromMetadata() disambiguatedDatabaseTable];
      v117 = sub_755A8();
      v119 = v118;

      v277._countAndFlagsBits = v117;
      v277._object = v119;
      sub_75608(v277);

      v278._countAndFlagsBits = 0xD000000000000046;
      v278._object = (v215 | 0x8000000000000000);
      sub_75608(v278);
      v279._countAndFlagsBits = v113;
      v279._object = v115;
      sub_75608(v279);

      v280._countAndFlagsBits = 41;
      v280._object = 0xE100000000000000;
      sub_75608(v280);
      v120 = sub_75598();

      v23 = v246;
      v121 = v253;
      sub_6A6DC(v246, v253);
      v122 = (*(v254 + 80) + 16) & ~*(v254 + 80);
      v123 = &v214[v122] & 0xFFFFFFFFFFFFFFF8;
      p_aBlock = swift_allocObject();
      sub_1B748(v121, p_aBlock + v122, &qword_8F000, &qword_7A5D0);
      *(&p_aBlock->isa + v123) = v110;
      sub_43230(v225, v221);
      v124 = swift_allocObject();
      *(v124 + 16) = sub_6A7EC;
      *(v124 + 24) = p_aBlock;
      v272 = sub_6ADA4;
      v273 = v124;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v270 = sub_644E0;
      v271 = &unk_88FF0;
      v125 = _Block_copy(&aBlock);

      *&aBlock = 0;
      LODWORD(v121) = [v227 executeSQL:v120 error:&aBlock bindingHandler:v125 enumerationHandler:0];
      _Block_release(v125);

      v58 = aBlock;
      if (v121)
      {
        v126 = aBlock;
        sub_3D48(v23, &qword_8F000, &qword_7A5D0);
        v225 = sub_6A7EC;
        v221 = p_aBlock;
        v62 = v265;
        v68 = v23;
        v67 = v251;
        goto LABEL_13;
      }

      goto LABEL_70;
    }

    v86 = v260;
    sub_75378();
    sub_6A6DC(v68, v84);
    v87 = sub_754A8();
    v88 = sub_75718();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v274 = swift_slowAlloc();
      *v89 = v241;
      *(v89 + 4) = sub_31B4(0xD00000000000001BLL, v250 | 0x8000000000000000, &v274);
      *(v89 + 12) = 2080;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_759A8();
      v275._countAndFlagsBits = 3026478;
      v275._object = 0xE300000000000000;
      sub_75608(v275);
      sub_759A8();
      v90 = aBlock;
      sub_3D48(v84, &qword_8F000, &qword_7A5D0);
      v91 = sub_31B4(v90, *(&v90 + 1), &v274);

      *(v89 + 14) = v91;
      _os_log_impl(&dword_0, v87, v88, "[%s] Trying to insert records in the future: %s, skipping...", v89, 0x16u);
      swift_arrayDestroy();

      v23 = &qword_7A5D0;
      v68 = v246;

      v92 = *v264;
      v93 = v260;
    }

    else
    {

      sub_3D48(v84, &qword_8F000, &qword_7A5D0);
      v92 = *v264;
      v93 = v86;
    }

    v94 = v252;
    (v92)(v93, v252);
    v58 = v261;
    sub_75378();
    p_aBlock = sub_754A8();
    v95 = sub_75728();
    v96 = os_log_type_enabled(p_aBlock, v95);
    v70 = v258;
    if (v96)
    {
      v58 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *&aBlock = v97;
      *v58 = v240;
      *(v58 + 1) = sub_31B4(0xD00000000000001BLL, v250 | 0x8000000000000000, &aBlock);
      _os_log_impl(&dword_0, p_aBlock, v95, "[%s] Tried to insert records in the future", v58, 0xCu);
      sub_3940(v97);

      v71 = v261;
    }

    else
    {

      v71 = v58;
    }

    (v92)(v71, v94);
    sub_3D48(v68, &qword_8F000, &qword_7A5D0);
    v69 = v265;
    v67 = v251;
  }

  sub_75378();
  v127 = sub_754A8();
  v128 = sub_75738();
  v129 = os_log_type_enabled(v127, v128);
  v130 = v235;
  v131 = v238;
  v132 = v226;
  if (v129)
  {
    v133 = swift_slowAlloc();
    *v133 = 134217984;
    v134 = v233;
    sub_74958();
    swift_beginAccess();
    v135 = v229;
    v211(v229, v131, v130);
    sub_748F8();
    v137 = v136;
    v132(v135, v130);
    v132(v134, v130);
    *(v133 + 4) = v137;
    _os_log_impl(&dword_0, v127, v128, "Deleted existing matching records in %fs", v133, 0xCu);
  }

  v261 = *v264;
  (v261)(v222, v252);
  v138 = v233;
  sub_74958();
  swift_beginAccess();
  (*(v216 + 40))(v131, v138, v130);
  v268 = &off_858E0;
  sub_66D40(&off_85908, &qword_8FE88, &qword_7AC58);
  sub_66D40(&off_85930, &qword_8FE88, &qword_7AC58);
  v265 = v268;
  v267 = _swiftEmptyArrayStorage;
  v139 = v255;
  sub_67C58(0, v255, 0);
  v140 = 0;
  v141 = v267;
  do
  {
    if (v140 == v139)
    {
      __break(1u);
    }

    *&aBlock = 40;
    *(&aBlock + 1) = 0xE100000000000000;
    v142 = *(v265 + 2);
    if (v142)
    {
      v266 = _swiftEmptyArrayStorage;
      sub_67C58(0, v142, 0);
      v143 = v266;
      v144 = v266[2];
      v145 = 2 * v144;
      do
      {
        v266 = v143;
        v146 = v143[3];
        v147 = v144 + 1;
        if (v144 >= v146 >> 1)
        {
          sub_67C58((v146 > 1), v144 + 1, 1);
          v143 = v266;
        }

        v143[2] = v147;
        v148 = &v143[v145];
        v148[4] = 63;
        v148[5] = 0xE100000000000000;
        v145 += 2;
        v144 = v147;
        --v142;
      }

      while (v142);
    }

    else
    {
      v143 = _swiftEmptyArrayStorage;
    }

    v266 = v143;
    v149 = sub_38F8(&qword_8F280, &unk_7ABA0);
    sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0, &protocol conformance descriptor for [A]);
    v262 = v149;
    v150 = sub_75538();
    v152 = v151;

    v281._countAndFlagsBits = v150;
    v281._object = v152;
    sub_75608(v281);

    v282._countAndFlagsBits = 41;
    v282._object = 0xE100000000000000;
    sub_75608(v282);
    v153 = aBlock;
    v267 = v141;
    v155 = v141[2];
    v154 = v141[3];
    if (v155 >= v154 >> 1)
    {
      sub_67C58((v154 > 1), v155 + 1, 1);
      v141 = v267;
    }

    ++v140;
    v141[2] = v155 + 1;
    *&v141[2 * v155 + 4] = v153;
    v139 = v255;
  }

  while (v140 != v255);

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_75908(30);

  strcpy(&aBlock, "INSERT INTO ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  type metadata accessor for WorkoutPropertyRecordEntity();
  v156 = [swift_getObjCClassFromMetadata() disambiguatedDatabaseTable];
  v157 = sub_755A8();
  v159 = v158;

  v283._countAndFlagsBits = v157;
  v283._object = v159;
  sub_75608(v283);

  v284._countAndFlagsBits = 10272;
  v284._object = 0xE200000000000000;
  sub_75608(v284);
  v267 = sub_5C16C();
  v160 = sub_75538();
  v162 = v161;

  v285._countAndFlagsBits = v160;
  v285._object = v162;
  sub_75608(v285);

  v286._countAndFlagsBits = 0x5345554C41562029;
  v286._object = 0xE900000000000020;
  sub_75608(v286);
  v267 = v141;
  v163 = sub_75538();
  v165 = v164;

  v287._countAndFlagsBits = v163;
  v287._object = v165;
  sub_75608(v287);

  v288._countAndFlagsBits = 59;
  v288._object = 0xE100000000000000;
  sub_75608(v288);
  v166 = [v230 syncIdentityManager];
  v167 = [v166 currentSyncIdentity];

  v168 = [v167 entity];
  v169 = [v168 persistentID];

  v170 = sub_75598();

  v171 = swift_allocObject();
  v172 = v231;
  v171[2] = v223;
  v171[3] = v172;
  v173 = v238;
  v174 = v220;
  v171[4] = v238;
  v171[5] = v174;
  v171[6] = v169;
  v175 = swift_allocObject();
  *(v175 + 16) = sub_6A74C;
  *(v175 + 24) = v171;
  v272 = sub_6A7C4;
  v273 = v175;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v270 = sub_644E0;
  v271 = &unk_88F78;
  v176 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v177 = v227;
  LOBYTE(v169) = [v227 executeSQL:v170 error:&aBlock bindingHandler:v176 enumerationHandler:0];
  _Block_release(v176);

  if (v169)
  {
    v178 = aBlock;
    v179 = v228;
    sub_75378();

    v180 = sub_754A8();
    v181 = sub_75738();
    v182 = os_log_type_enabled(v180, v181);
    v183 = v252;
    v184 = v235;
    if (v182)
    {
      v185 = swift_slowAlloc();
      *v185 = 134218240;
      *(v185 + 4) = v255;

      *(v185 + 12) = 2048;
      v186 = v233;
      sub_74958();
      v187 = v229;
      v188 = v238;
      v211(v229, v238, v184);
      sub_748F8();
      v190 = v189;
      v191 = v187;
      v192 = v226;
      v226(v191, v184);
      v192(v186, v184);
      *(v185 + 14) = v190;
      _os_log_impl(&dword_0, v180, v181, "Inserted %ld records in %fs", v185, 0x16u);
      v179 = v228;
    }

    else
    {

      v188 = v238;
      v192 = v226;
    }

    v208 = v217;

    (v261)(v179, v183);
    v208(v259, v263);
    v192(v188, v184);
    sub_43230(v225, v221);

    return 1;
  }

  v193 = aBlock;
  sub_74898();

  swift_willThrow();
  v217(v259, v263);
  v226(v173, v235);
  v194 = sub_6A74C;
  v195 = v224;
  v196 = v252;
  v197 = v234;
  v198 = v225;
  v199 = v221;
LABEL_61:
  sub_75378();
  swift_errorRetain();
  v200 = sub_754A8();
  v201 = sub_75718();

  if (os_log_type_enabled(v200, v201))
  {
    v202 = swift_slowAlloc();
    v265 = v194;
    v203 = v202;
    v204 = swift_slowAlloc();
    v225 = v198;
    v205 = v199;
    v206 = v204;
    *v203 = 138412290;
    swift_errorRetain();
    v207 = _swift_stdlib_bridgeErrorToNSError();
    *(v203 + 4) = v207;
    *v206 = v207;
    _os_log_impl(&dword_0, v200, v201, "Failed to insert: %@", v203, 0xCu);
    sub_3D48(v206, &unk_8EB30, &unk_7A270);
    v199 = v205;
    v198 = v225;

    v194 = v265;
  }

  (*(v239 + 8))(v197, v196);
  if (v195)
  {
    *v195 = sub_74888();
  }

  sub_43230(v198, v199);
  sub_43230(v194, v171);
  return 0;
}

uint64_t sub_641FC@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  sub_38F8(a1, a2);
  sub_75088();
  v4 = sub_38F8(&qword_8F000, &qword_7A5D0);
  return (*(*(v4 - 8) + 56))(a3, 0, 1, v4);
}

uint64_t sub_64290(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = *(a1 + 16);
  sub_67C58(0, v1, 0);
  v3 = a1 + 56;
  result = sub_75868();
  v5 = v23;
  v6 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v8 = result >> 6;
    v9 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    v12 = _swiftEmptyArrayStorage[2];
    v11 = _swiftEmptyArrayStorage[3];
    if (v12 >= v11 >> 1)
    {
      v21 = *(a1 + 36);
      v22 = result;
      sub_67C58((v11 > 1), v12 + 1, 1);
      v5 = v23;
      v10 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v12];
    v13[4] = 8255;
    v13[5] = 0xE200000000000000;
    v7 = 1 << *(a1 + 32);
    if (result >= v7)
    {
      goto LABEL_22;
    }

    v14 = *(v3 + 8 * v8);
    if ((v14 & v9) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (result & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          sub_1B598(result, v10, 0);
          v5 = v23;
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      sub_1B598(result, v10, 0);
      v5 = v23;
    }

LABEL_4:
    ++v6;
    result = v7;
    if (v6 == v5)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_6450C(sqlite3_stmt *a1, uint64_t a2, sqlite3_int64 a3, uint64_t a4, sqlite3_int64 a5, sqlite3_int64 a6, uint64_t (*a7)(void), uint64_t *a8, uint64_t *a9, uint64_t (*a10)(char *, sqlite3_stmt *, uint64_t), void *(*a11)(unsigned int *__return_ptr, void *, char *))
{
  v81 = a6;
  v82 = a5;
  v87 = a3;
  v88 = a4;
  v84 = sub_74968();
  v15 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_754B8();
  *&v106 = *(v90 - 8);
  __chkstk_darwin(v90);
  v100 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_75028();
  v103 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = a7(0);
  v19 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &v76 - v20;
  v97 = sub_38F8(&qword_8F000, &qword_7A5D0);
  __chkstk_darwin(v97);
  v105 = &v76 - v21;
  v22 = sub_38F8(a8, a9);
  result = __chkstk_darwin(v22);
  v26 = &v76 - v25;
  v27 = *(a2 + 16);
  if (v27)
  {
    v80 = a11;
    v95 = a10;
    v28 = v24;
    v29 = a2 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    swift_beginAccess();
    v30 = *(v28 + 16);
    v28 += 16;
    v93 = (v19 + 8);
    v94 = v30;
    v89 = v106 + 8;
    v31 = *(v28 + 56);
    v78 = (v15 + 16);
    v79 = (v103 + 8);
    v77 = (v15 + 8);
    v96 = v28;
    v91 = (v28 - 8);
    v92 = v31;
    LODWORD(v103) = 1;
    *(&v32 + 1) = 2;
    v106 = xmmword_79BF0;
    *&v32 = 138412290;
    v76 = v32;
    v104 = a1;
    v107 = v26;
    while (1)
    {
      v102 = v27;
      v94(v26, v29, v22);
      v33 = v105;
      sub_75088();
      v34 = sub_74CA8();
      v110 = v34;
      v35 = sub_6A7F0(&qword_8ED98, &protocol conformance descriptor for CacheIndex);
      v111 = v35;
      v36 = sub_5914(&v108);
      v37 = *(*(v34 - 8) + 16);
      v37(v36, v33, v34);
      sub_3D48(v33, &qword_8F000, &qword_7A5D0);
      sub_38F8(&qword_8EDA0, &unk_79D20);
      inited = swift_initStackObject();
      v39 = inited;
      *(inited + 16) = v106;
      if (v110)
      {
        sub_5978(&v108, inited + 32);
      }

      else
      {
        v40 = v111;
        v41 = v109;
        *(inited + 32) = v108;
        *(inited + 48) = v41;
        *(inited + 64) = v40;
      }

      v101 = v29;
      LODWORD(v103) = sub_6C2DC(v104, v103, v39);
      swift_setDeallocating();
      if (*(v39 + 56))
      {
        sub_3940((v39 + 32));
      }

      if (v110)
      {
        sub_3940(&v108);
      }

      v42 = v105;
      sub_75088();
      v43 = *(v97 + 36);
      v110 = v34;
      v111 = v35;
      v44 = sub_5914(&v108);
      v37(v44, v42 + v43, v34);
      sub_3D48(v42, &qword_8F000, &qword_7A5D0);
      v45 = swift_initStackObject();
      v46 = v45;
      *(v45 + 16) = v106;
      if (v110)
      {
        sub_5978(&v108, v45 + 32);
      }

      else
      {
        v47 = v111;
        v48 = v109;
        *(v45 + 32) = v108;
        *(v45 + 48) = v48;
        *(v45 + 64) = v47;
      }

      v49 = v104;
      v50 = sub_6C2DC(v104, v103, v46);
      swift_setDeallocating();
      v51 = v98;
      if (*(v46 + 56))
      {
        sub_3940((v46 + 32));
      }

      if (v110)
      {
        sub_3940(&v108);
      }

      sub_75058();
      v52 = v95(v51, v49, v50);
      (*v93)(v51, v99);
      v53 = sub_75068();
      v54 = v22;
      v56 = v55;
      sub_38F8(&qword_8F678, &qword_7A4A0);
      v57 = swift_initStackObject();
      *(v57 + 16) = v106;
      *(v57 + 32) = v53;
      v58 = v57 + 32;
      *(v57 + 40) = v56;
      LODWORD(v53) = sub_6C3E0(v49, v52, v57);
      v26 = v107;
      swift_setDeallocating();
      sub_3D48(v58, &qword_8EDA8, &unk_79D30);
      v112 = v53;
      v59 = v54;
      v60 = sub_75098();
      v62 = v61;
      __chkstk_darwin(v60);
      *(&v76 - 4) = v49;
      *(&v76 - 3) = &v112;
      *(&v76 - 2) = v26;
      sub_64ED8(v80, (&v76 - 3), v60, v62);
      result = sub_FB28(v60, v62);
      v63 = v112 + 1;
      if (__OFADD__(v112, 1))
      {
        break;
      }

      v64 = v85;
      sub_75008();
      v65 = sub_75018();
      (*v79)(v64, v86);
      if (v65 <= v87)
      {
        v66 = v87;
      }

      else
      {
        v66 = v65;
      }

      result = sqlite3_bind_int64(v49, v63, v66);
      v67 = __OFADD__(v63, 1);
      v68 = v63 + 1;
      if (v67)
      {
        goto LABEL_29;
      }

      v69 = v83;
      v70 = v84;
      (*v78)(v83, v88, v84);
      sub_748E8();
      v72 = v71;
      (*v77)(v69, v70);
      result = sqlite3_bind_double(v49, v68, v72);
      if (__OFADD__(v68, 1))
      {
        goto LABEL_30;
      }

      result = sqlite3_bind_int64(v49, v68 + 1, v82);
      v73 = v68 + 2;
      if (__OFADD__(v68 + 1, 1))
      {
        goto LABEL_31;
      }

      result = sqlite3_bind_int64(v49, v73, v81);
      if (__OFADD__(v73, 1))
      {
        goto LABEL_32;
      }

      LODWORD(v103) = v68 + 3;
      v74 = v101;
      v75 = v102;
      v22 = v59;
      result = (*v91)(v26, v59);
      v29 = v74 + v92;
      v27 = v75 - 1;
      if (!v27)
      {
        return result;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  return result;
}

void *sub_64ED8(void *(*a1)(unsigned int *__return_ptr, void *, char *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      v12[0] = a3;
      LOWORD(v12[1]) = a4;
      BYTE2(v12[1]) = BYTE2(a4);
      BYTE3(v12[1]) = BYTE3(a4);
      BYTE4(v12[1]) = BYTE4(a4);
      BYTE5(v12[1]) = BYTE5(a4);
      v7 = v12 + BYTE6(a4);
      goto LABEL_9;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_6A19C(v8, v9, a1);
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    return sub_6A19C(v8, v9, a1);
  }

  memset(v12, 0, 14);
  v7 = v12;
LABEL_9:
  result = a1(&v11, v12, v7);
  if (!v4)
  {
    return v11;
  }

  return result;
}

uint64_t sub_65028(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v40 = a6;
  v39 = sub_754B8();
  v10 = *(v39 - 8);
  v11 = __chkstk_darwin(v39);
  v41 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  sub_75378();

  swift_errorRetain();
  v15 = sub_754A8();
  v16 = sub_75718();

  v17 = os_log_type_enabled(v15, v16);
  v38 = a2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = a5;
    v20 = swift_slowAlloc();
    *v18 = 134218242;
    *(v18 + 4) = *(a3 + 16);

    *(v18 + 12) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v21;
    *v20 = v21;
    _os_log_impl(&dword_0, v15, v16, "Failed to insert %ld records: %@. Journaling entries", v18, 0x16u);
    sub_3D48(v20, &unk_8EB30, &unk_7A270);
    a5 = v19;
  }

  else
  {
  }

  v22 = *(v10 + 8);
  v23 = v39;
  v22(v14, v39);
  v40(a3, a4);
  v24 = v41;
  v25 = [a5 database];
  sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
  isa = sub_75678().super.isa;

  v42[0] = 0;
  v27 = [v25 addJournalEntries:isa error:v42];

  if (v27)
  {
    v28 = v42[0];
    return 1;
  }

  else
  {
    v30 = v42[0];
    sub_74898();

    swift_willThrow();
    sub_75378();
    swift_errorRetain();
    v31 = sub_754A8();
    v32 = sub_75728();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&dword_0, v31, v32, "Failed to add journal entries: %@", v33, 0xCu);
      sub_3D48(v34, &unk_8EB30, &unk_7A270);
    }

    v22(v24, v23);
    v36 = v38;
    if (v38)
    {
      *v36 = sub_74888();
    }

    return 0;
  }
}

uint64_t sub_65494(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

void *sub_65550(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_15:
    sub_759D8();
    sub_75978();
    v2 = sub_759D8();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_75978();
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          sub_75928();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        _s31InferenceRecordContainerWrapperCMa(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_75958();
        sub_75988();
        sub_75998();
        sub_75968();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_656C0(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_75978();
  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_759D8())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_75928();
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a3(a2);
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      sub_75958();
      sub_75988();
      sub_75998();
      sub_75968();
      if (v9 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_759D8();
    sub_75978();
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_65834(unint64_t a1, void *a2)
{
  v87 = a2;
  v83 = sub_754B8();
  v3 = *(v83 - 8);
  v4 = __chkstk_darwin(v83);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  isa = (&v70 - v7);
  v99 = sub_38F8(&qword_8EFE0, &qword_79F30);
  v92 = *(v99 - 8);
  v9 = __chkstk_darwin(v99);
  v98 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v70 - v12;
  __chkstk_darwin(v11);
  v91 = &v70 - v14;
  v16 = sub_656C0(a1, v15, type metadata accessor for WorkoutPropertyRecordJournalEntry);
  if (v16)
  {
    v17 = v16;
    if (v16 >> 62)
    {
      goto LABEL_61;
    }

    if (*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
    {
      do
      {
        v93 = v13;
        v70 = v17;
        v100[0] = v17;
        sub_38F8(&qword_8FE48, &qword_7ABE0);
        sub_7718(&qword_8FE50, &qword_8FE48, &qword_7ABE0, &protocol conformance descriptor for [A]);
        isa = v100;
        v13 = 0;
        v18 = sub_75648();
        v20 = 0;
        v21 = *(v18 + 64);
        v71 = v18 + 64;
        v22 = 1 << *(v18 + 32);
        v17 = -1;
        if (v22 < 64)
        {
          v17 = ~(-1 << v22);
        }

        v23 = v17 & v21;
        v24 = (v22 + 63) >> 6;
        v97 = (v92 + 32);
        v80 = (v3 + 8);
        *&v19 = 136315394;
        v76 = v19;
        v86 = v6;
        v73 = v18;
        v72 = v24;
LABEL_8:
        while (v23)
        {
LABEL_13:
          v26 = (v20 << 9) | (8 * __clz(__rbit64(v23)));
          v27 = *(v18 + 56);
          v79 = *(*(v18 + 48) + v26);
          v28 = *(v27 + v26);
          v88 = v28;
          v82 = v28 >> 62;
          if (v28 >> 62)
          {
            v60 = v18;
            isa = v20;
            v61 = v24;
            v3 = v23;
            v62 = sub_759D8();
            v23 = v3;
            v24 = v61;
            v20 = isa;
            v17 = v62;
            v18 = v60;
            v28 = v88;
          }

          else
          {
            v17 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
          }

          v23 &= v23 - 1;
          if (v17)
          {
            v84 = v17;
            v74 = v23;
            v75 = v20;
            v85 = v28 & 0xC000000000000001;
            v29 = v28 & 0xFFFFFFFFFFFFFF8;
            v78 = v28 + 32;
            v81 = v28 & 0xFFFFFFFFFFFFFF8;
            if (v28 < 0)
            {
              v29 = v28;
            }

            v77 = v29;

            v30 = 0;
            while (1)
            {
              if (v85)
              {
                v31 = sub_75928();
              }

              else
              {
                if (v30 >= *(v81 + 16))
                {
                  goto LABEL_60;
                }

                v31 = *(v78 + 8 * v30);
              }

              v90 = v31;
              v32 = __OFADD__(v30, 1);
              v33 = v30 + 1;
              if (v32)
              {
                goto LABEL_58;
              }

              v3 = *&v90[OBJC_IVAR____TtC25FitnessIntelligencePlugin33WorkoutPropertyRecordJournalEntry_entities];
              if (v3 >> 62)
              {
                v34 = sub_759D8();
                v89 = v33;
                if (v34)
                {
LABEL_28:
                  v6 = 0;
                  v94 = v3 & 0xFFFFFFFFFFFFFF8;
                  v95 = v3 & 0xC000000000000001;
                  v35 = _swiftEmptyArrayStorage;
                  while (1)
                  {
                    if (v95)
                    {
                      v36 = sub_75928();
                    }

                    else
                    {
                      if (v6 >= *(v94 + 16))
                      {
                        goto LABEL_57;
                      }

                      v36 = *(v3 + 8 * v6 + 32);
                    }

                    v37 = v36;
                    if (__OFADD__(v6, 1))
                    {
                      break;
                    }

                    sub_398C(*&v36[OBJC_IVAR___WorkoutEntityWrapper_serializedEntity], *&v36[OBJC_IVAR___WorkoutEntityWrapper_serializedEntity + 8]);
                    sub_7718(&qword_8EFE8, &qword_8EFE0, &qword_79F30, &protocol conformance descriptor for DatabasePropertyRecord<A>);
                    v38 = v93;
                    v39 = v99;
                    sub_74F88();
                    if (v13)
                    {

                      goto LABEL_47;
                    }

                    v96 = 0;
                    v40 = (v6 + 1);
                    v41 = v3;

                    v42 = *v97;
                    v43 = v91;
                    (*v97)(v91, v38, v39);
                    v42(v98, v43, v39);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v35 = sub_67A70(0, v35[2] + 1, 1, v35, &qword_8FE98, &unk_7AC68, &qword_8EFE0, &qword_79F30);
                    }

                    v45 = v35[2];
                    v44 = v35[3];
                    v46 = v35;
                    isa = (v45 + 1);
                    v3 = v41;
                    if (v45 >= v44 >> 1)
                    {
                      v46 = sub_67A70((v44 > 1), v45 + 1, 1, v35, &qword_8FE98, &unk_7AC68, &qword_8EFE0, &qword_79F30);
                    }

                    v35 = v46;
                    v46[2] = isa;
                    (v42)(v46 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v45, v98);
                    ++v6;
                    v47 = v40 == v34;
                    v13 = v96;
                    if (v47)
                    {
                      goto LABEL_45;
                    }
                  }

                  __break(1u);
LABEL_57:
                  __break(1u);
LABEL_58:
                  __break(1u);
                  goto LABEL_59;
                }
              }

              else
              {
                v34 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
                v89 = v33;
                if (v34)
                {
                  goto LABEL_28;
                }
              }

              v35 = _swiftEmptyArrayStorage;
LABEL_45:
              sub_5D9B4(v35, v79, v87, 0);
              if (v13)
              {

LABEL_47:
                v13 = 0;
                v6 = v86;
                sub_75378();
                swift_errorRetain();
                v48 = sub_754A8();
                v49 = sub_75718();

                if (os_log_type_enabled(v48, v49))
                {
                  v50 = swift_slowAlloc();
                  v51 = swift_slowAlloc();
                  v52 = swift_slowAlloc();
                  v100[0] = v52;
                  *v50 = v76;
                  v53 = sub_75B18();
                  v55 = sub_31B4(v53, v54, v100);

                  *(v50 + 4) = v55;
                  *(v50 + 12) = 2112;
                  swift_errorRetain();
                  v56 = _swift_stdlib_bridgeErrorToNSError();
                  *(v50 + 14) = v56;
                  *v51 = v56;
                  _os_log_impl(&dword_0, v48, v49, "Failed to apply %s: %@", v50, 0x16u);
                  sub_3D48(v51, &unk_8EB30, &unk_7A270);

                  sub_3940(v52);
                  v6 = v86;
                }

                (*v80)(v6, v83);
                v57 = [v87 database];
                if (v82)
                {
                  sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);

                  v3 = sub_759C8();
                }

                else
                {
                  v3 = v88;

                  sub_75A78();
                  sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
                }

                sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
                isa = sub_75678().super.isa;

                v100[0] = 0;
                v58 = [v57 addJournalEntries:isa error:v100];

                if (!v58)
                {
                  v69 = v100[0];
                  sub_74898();

                  swift_willThrow();
                  v100[0] = 0;
                  v100[1] = 0xE000000000000000;
                  sub_75908(38);
                  v101._object = 0x80000000000779F0;
                  v101._countAndFlagsBits = 0xD000000000000024;
                  sub_75608(v101);
                  swift_getErrorValue();
                  sub_75A48();
                  result = sub_759B8();
                  __break(1u);
                  return result;
                }

                v59 = v100[0];
              }

              else
              {
              }

              v30 = v89;
              if (v89 == v84)
              {

                v18 = v73;
                v20 = v75;
                v24 = v72;
                v23 = v74;
                goto LABEL_8;
              }
            }
          }
        }

        while (1)
        {
          v25 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v25 >= v24)
          {
          }

          v23 = *(v71 + 8 * v25);
          ++v20;
          if (v23)
          {
            v20 = v25;
            goto LABEL_13;
          }
        }

LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        v64 = v17;
        v65 = sub_759D8();
        v17 = v64;
      }

      while (v65);
    }
  }

  sub_75378();
  v66 = sub_754A8();
  v67 = sub_75718();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_0, v66, v67, "Applying journal entries, but none found. Skipping.", v68, 2u);
  }

  return (*(v3 + 8))(isa, v83);
}

void *sub_663BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + OBJC_IVAR____TtC25FitnessIntelligencePlugin33WorkoutPropertyRecordJournalEntry_provenance);
  *(a2 + 8) = 0;
  return result;
}

id sub_66470(id a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_754B8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_38F8(&qword_8EB58, &unk_79BB0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_79E90;
  *(v8 + 32) = sub_7688(0, &qword_8EEF8, NSArray_ptr);
  *(v8 + 40) = sub_7688(0, &qword_8EF00, NSData_ptr);
  sub_757F8();

  if (v35[3])
  {
    sub_38F8(&qword_8EF10, &qword_79EC0);
    if (swift_dynamicCast())
    {
      v9 = v34;
      v10 = *(v34 + 16);
      if (v10)
      {
        v31 = a1;
        v35[0] = _swiftEmptyArrayStorage;
        sub_75978();
        v11 = _s13EntityWrapperCMa();
        v12 = (v9 + 40);
        do
        {
          v13 = *(v12 - 1);
          v14 = *v12;
          v15 = objc_allocWithZone(v11);
          v16 = &v15[OBJC_IVAR___WorkoutEntityWrapper_serializedEntity];
          *v16 = v13;
          v16[1] = v14;
          sub_398C(v13, v14);
          v33.receiver = v15;
          v33.super_class = v11;
          objc_msgSendSuper2(&v33, "init");
          sub_75958();
          sub_75988();
          sub_75998();
          sub_75968();
          v12 += 2;
          --v10;
        }

        while (v10);

        v17 = v35[0];
        a1 = v31;
      }

      else
      {

        v17 = _swiftEmptyArrayStorage;
      }

      v27 = sub_75598();
      v28 = [a1 decodeInt64ForKey:v27];

      *&v2[OBJC_IVAR____TtC25FitnessIntelligencePlugin33WorkoutPropertyRecordJournalEntry_entities] = v17;
      *&v2[OBJC_IVAR____TtC25FitnessIntelligencePlugin33WorkoutPropertyRecordJournalEntry_provenance] = v28;
      v29 = type metadata accessor for WorkoutPropertyRecordJournalEntry();
      v32.receiver = v2;
      v32.super_class = v29;
      v30 = objc_msgSendSuper2(&v32, "init");

      return v30;
    }
  }

  else
  {
    sub_3D48(v35, &qword_8EF08, &unk_7A250);
  }

  sub_75378();
  v18 = sub_754A8();
  v19 = sub_75718();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v35[0] = v22;
    *v21 = 136315138;
    v23 = sub_75B18();
    v25 = sub_31B4(v23, v24, v35);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_0, v18, v19, "Failed to decode %s journal entry: missing entity data", v21, 0xCu);
    sub_3940(v22);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
  type metadata accessor for WorkoutPropertyRecordJournalEntry();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_668CC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin33WorkoutPropertyRecordJournalEntry_provenance);
  v4 = sub_75598();
  [a1 encodeInt64:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin33WorkoutPropertyRecordJournalEntry_entities);
  if (v5 >> 62)
  {
    v6 = sub_759D8();
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  if (v6)
  {
    sub_67DDC(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        v8 = sub_75928();
        v9 = *(v8 + OBJC_IVAR___WorkoutEntityWrapper_serializedEntity);
        v10 = *(v8 + OBJC_IVAR___WorkoutEntityWrapper_serializedEntity + 8);
        sub_398C(v9, v10);
        swift_unknownObjectRelease();
        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          sub_67DDC((v11 > 1), v12 + 1, 1);
        }

        ++v7;
        _swiftEmptyArrayStorage[2] = v12 + 1;
        v13 = &_swiftEmptyArrayStorage[2 * v12];
        v13[4] = v9;
        v13[5] = v10;
      }

      while (v6 != v7);
    }

    else
    {
      v14 = (v5 + 32);
      do
      {
        v15 = (*v14 + OBJC_IVAR___WorkoutEntityWrapper_serializedEntity);
        v16 = *v15;
        v17 = v15[1];
        sub_398C(*v15, v17);
        v19 = _swiftEmptyArrayStorage[2];
        v18 = _swiftEmptyArrayStorage[3];
        if (v19 >= v18 >> 1)
        {
          sub_67DDC((v18 > 1), v19 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v19 + 1;
        v20 = &_swiftEmptyArrayStorage[2 * v19];
        v20[4] = v16;
        v20[5] = v17;
        ++v14;
        --v6;
      }

      while (v6);
    }
  }

  isa = sub_75678().super.isa;

  v22 = sub_75598();
  [a1 encodeObject:isa forKey:v22];
}

id sub_66BD4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WorkoutPropertyRecordJournalEntry();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_66C3C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_6728C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_38F8(&qword_8EDA8, &unk_79D30);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_66D40(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 <= *(v5 + 24) >> 1)
  {
    if (*(v10 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v6 <= v7)
  {
    v15 = v6 + v4;
  }

  else
  {
    v15 = v6;
  }

  result = sub_67668(result, v15, 1, v5, a2, a3);
  v5 = result;
  if (!*(v10 + 16))
  {
LABEL_13:

    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v11 = *(v5 + 16);
  if ((*(v5 + 24) >> 1) - v11 < v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v5 + v11 + 32), (v10 + 32), v4);

  if (!v4)
  {
LABEL_14:
    *v3 = v5;
    return result;
  }

  v12 = *(v5 + 16);
  v13 = __OFADD__(v12, v4);
  v14 = v12 + v4;
  if (!v13)
  {
    *(v5 + 16) = v14;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_66EBC(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_67894(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_67090(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_759D8();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_759D8();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_6A0FC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_6A2D4(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_67180(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_38F8(&qword_8EDB0, &qword_7AC50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_6728C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_38F8(&qword_8F678, &qword_7A4A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_38F8(&qword_8EDA8, &unk_79D30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_673C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_38F8(&qword_8FF00, &qword_7ACD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_674CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_38F8(&qword_8FE90, &qword_7AC60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_67668(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_38F8(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_67894(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_38F8(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_67A70(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_38F8(a5, a6);
  v16 = *(sub_38F8(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_38F8(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_67C58(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_67EC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_67C78(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_67FD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_67C98(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_680E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_67CB8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_68674(a1, a2, a3, *v3, &qword_8FF38, &qword_7AD40, &type metadata accessor for CacheIndex);
  *v3 = result;
  return result;
}

void *sub_67CFC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_68214(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_67D1C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_68348(a1, a2, a3, *v3, &qword_8F658, &unk_7AD30, &qword_8EDC8, &qword_79D48);
  *v3 = result;
  return result;
}

void *sub_67D5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_68348(a1, a2, a3, *v3, &qword_8EDA0, &unk_79D20, &qword_8EDE0, &unk_79D60);
  *v3 = result;
  return result;
}

void *sub_67D9C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_68348(a1, a2, a3, *v3, &qword_8FC68, &qword_7AD70, &qword_8EDD8, &qword_79D58);
  *v3 = result;
  return result;
}

char *sub_67DDC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_68490(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_67DFC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_68674(a1, a2, a3, *v3, &qword_8FF48, &qword_7AD58, type metadata accessor for DatabaseChecksum);
  *v3 = result;
  return result;
}

void *sub_67E40(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_68674(a1, a2, a3, *v3, &qword_8FAA0, &unk_7ACA0, &type metadata accessor for PropertyRecordCheckpoint);
  *v3 = result;
  return result;
}

void *sub_67E84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_68850(a1, a2, a3, *v3, &qword_8FF40, &qword_7AD48, &qword_8F7D0, &qword_7AD50);
  *v3 = result;
  return result;
}

char *sub_67EC4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_38F8(&qword_8EDB0, &qword_7AC50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_67FD0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_38F8(&qword_8FF10, &qword_7ACE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_680E0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_38F8(&qword_8F678, &qword_7A4A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_38F8(&qword_8EDA8, &unk_79D30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_68214(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_38F8(&qword_8FDA0, &unk_7AD90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_38F8(&qword_8FDA8, &qword_7AA48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_68348(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_38F8(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_38F8(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_68490(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_38F8(&qword_8FE40, &qword_7ABD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_685AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_68674(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_38F8(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_68850(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_38F8(a5, a6);
  v16 = *(sub_38F8(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_38F8(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_68A38(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_38F8(&qword_8FE90, &qword_7AC60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_68B78(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_75AE8();
  sub_755E8();
  v8 = sub_75B08();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_75A68() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_69718(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_68DB8(uint64_t *a1, void *a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_758A8();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
    }

    else
    {
      result = sub_75898();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_6901C(v15, result + 1, a4, a5, a6);
        v28 = v27[2];
        if (v27[3] <= v28)
        {
          sub_69474(v28 + 1, a4, a5);
        }

        v29 = v16;
        sub_69694(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = sub_75808(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_75818();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v11;
      v26 = a2;
      sub_69898(v26, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v36;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

Swift::Int sub_6901C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    sub_38F8(a3, a4);
    v8 = sub_758E8();
    v21 = v8;
    sub_75888();
    if (sub_758B8())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_69474(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = sub_75808(*(v21 + 40));
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (sub_758B8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v8;
}

uint64_t sub_69214(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_38F8(&qword_8FE80, qword_7AC08);
  result = sub_758D8();
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
      sub_75AE8();
      sub_755E8();
      result = sub_75B08();
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

uint64_t sub_69474(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_38F8(a2, a3);
  result = sub_758D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_75808(*(v7 + 40));
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t sub_69694(uint64_t a1, void *a2)
{
  sub_75808(a2[5]);
  result = sub_75878();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t sub_69718(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_69214(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_69A1C();
      goto LABEL_16;
    }

    sub_69CB8(v8 + 1);
  }

  v10 = *v4;
  sub_75AE8();
  sub_755E8();
  result = sub_75B08();
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

      result = sub_75A68();
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
  result = sub_75A88();
  __break(1u);
  return result;
}

void sub_69898(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_69474(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_69B78(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_69EF0(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = sub_75808(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_75818();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_75A88();
  __break(1u);
}

void *sub_69A1C()
{
  v1 = v0;
  sub_38F8(&qword_8FE80, qword_7AC08);
  v2 = *v0;
  v3 = sub_758C8();
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