uint64_t sub_1000B2C88(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), int a4, uint64_t a5, void *a6, void (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = a7;
  v24 = a8;
  v22 = a6;
  v16 = *(a10 - 8);
  __chkstk_darwin(a9);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  (*(v16 + 16))(v18, a2, a10);
  return sub_1000B1CE0(a1, v18, a3, a4, a5, v22, v23, v24, v19, a10, a11);
}

uint64_t sub_1000B2DB8()
{
  v1 = *(sub_1001C4CA8() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v1 + 64) + v2 + v3) & ~v2));

  return sub_1000A53E0(v4, (v0 + v3), v5);
}

uint64_t sub_1000B2E50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B2E68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000B2EFC()
{
  v1 = *(sub_1001C4CA8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000A6D0C(v3, v0 + v2, v4);
}

uint64_t sub_1000B3080(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B30B8(uint64_t a1)
{
  result = type metadata accessor for ReadingHistoryDataStore.State(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadingHistoryDataStore.Config(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadingHistoryDataStore.Config(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1000B327C(uint64_t a1)
{
  type metadata accessor for ReadingHistoryModel(319);
  if (v1 <= 0x3F)
  {
    sub_1000B331C(319);
    if (v2 <= 0x3F)
    {
      sub_1001C4CA8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000B331C(uint64_t a1)
{
  if (!qword_10026F708)
  {
    type metadata accessor for ReadingHistory.Streak(255);
    v1 = sub_1001C67F8();
    if (!v2)
    {
      atomic_store(v1, &qword_10026F708);
    }
  }
}

uint64_t sub_1000B3378()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7[0] = v4;
  *(v7 + 10) = *(v0 + 58);
  return sub_1000AC69C(v1, v2, &v6, v3);
}

uint64_t sub_1000B33B4(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = a1[1];
  v9 = *a1;
  v10[0] = v7;
  *(v10 + 10) = *(a1 + 26);
  return sub_1000AD1A8(&v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1000B33F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 73);
  v5 = *(v0 + 48);
  v7[0] = *(v0 + 32);
  v7[1] = v5;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  return v1(v7);
}

uint64_t sub_1000B344C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000B352C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  return sub_10009ADF0(v1 + v3, a1, &unk_10026F420, &unk_1001F0E50);
}

uint64_t sub_1000B35CC()
{
  v1 = *(sub_100084528(&unk_10026F820, &unk_1001F1440) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000A4068(v0 + v2, v3);
}

uint64_t sub_1000B3664(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  *(a1 + *(result + 44)) = *(v3 + *(result + 44));
  return result;
}

uint64_t sub_1000B36A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100084528(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000B3710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_1000B3778()
{
  v1 = *(sub_100084528(&unk_10026FC70, &unk_1001F1430) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10009CC84(v3, v0 + v2, v4);
}

uint64_t sub_1000B3814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B385C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistoryModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_1000B38DC(void *a1)
{
  v2 = a1[1];
  if (*a1 == v1[2] && v2 == v1[3])
  {
    return 0;
  }

  return *a1 != v1[4] || v2 != v1[5];
}

uint64_t sub_1000B390C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000B39A0()
{
  result = qword_10026F910;
  if (!qword_10026F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F910);
  }

  return result;
}

uint64_t sub_1000B39F4()
{
  v1 = *(sub_1001C4CA8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_1000AA308((v0 + v2), v4, v6, v7);
}

uint64_t sub_1000B3A90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000B3B08(uint64_t *a1, uint64_t *a2)
{
  v3 = *(sub_100084528(a1, a2) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  return sub_1000AC5A0(*(v2 + 16), *(v2 + 24), v2 + v4, *(v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1000B3B88()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t *sub_1000B3C78(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000B3CDC()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B3E5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B3EA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000B3EF0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1001C6D08();
  }
}

uint64_t sub_1000B3F20()
{
  v0 = sub_1001C4E38();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001C4E58();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1001C4DD8();
  sub_100088824(v5, qword_10026F930);
  sub_100083274(v5, qword_10026F930);
  (*(v1 + 104))(v3, enum case for MClientIdentifier.booksWidget(_:), v0);
  v6 = [objc_opt_self() sharedProvider];
  v7 = [v6 activeStoreAccount];

  sub_1001C4E48();
  return sub_1001C4DC8();
}

uint64_t BDSBookWidgetInfoManager.fetch(adamIDs:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000B59D4;

  return sub_1000B4E24(a1);
}

uint64_t sub_1000B4160(uint64_t a1)
{
  v2 = a1 + 64;
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

  v8 = 0;
  if (v5)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = v9 | (v8 << 6);
        v11 = (*(a1 + 48) + 16 * v10);
        v12 = *v11;
        v13 = v11[1];
        v14 = *(*(a1 + 56) + 8 * v10);
        result = swift_dynamicCastObjCProtocolConditional();
        if (result)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v30 = result;
      if (*(&_swiftEmptyDictionarySingleton + 3) <= *(&_swiftEmptyDictionarySingleton + 2))
      {
        v17 = *(&_swiftEmptyDictionarySingleton + 2);

        v18 = v14;
        sub_100188B74(v17 + 1, 1);
      }

      else
      {

        v16 = v14;
      }

      sub_1001C6DF8();
      sub_1001C60E8();
      result = sub_1001C6E28();
      v19 = &_swiftEmptyDictionarySingleton + 64;
      v20 = -1 << *(&_swiftEmptyDictionarySingleton + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(&_swiftEmptyDictionarySingleton + (v21 >> 6) + 8)) == 0)
      {
        break;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(&_swiftEmptyDictionarySingleton + (v21 >> 6) + 8))) | v21 & 0x7FFFFFFFFFFFFFC0;
      v24 = v30;
LABEL_24:
      *&v19[(v23 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v23;
      v29 = (*(&_swiftEmptyDictionarySingleton + 6) + 16 * v23);
      *v29 = v12;
      v29[1] = v13;
      *(*(&_swiftEmptyDictionarySingleton + 7) + 8 * v23) = v24;
      ++*(&_swiftEmptyDictionarySingleton + 2);
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    v25 = 0;
    v26 = (63 - v20) >> 6;
    v24 = v30;
    while (++v22 != v26 || (v25 & 1) == 0)
    {
      v27 = v22 == v26;
      if (v22 == v26)
      {
        v22 = 0;
      }

      v25 |= v27;
      v28 = *&v19[8 * v22];
      if (v28 != -1)
      {
        v23 = __clz(__rbit64(~v28)) + (v22 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v15 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v15 >= v6)
      {

        return &_swiftEmptyDictionarySingleton;
      }

      v5 = *(v2 + 8 * v15);
      ++v8;
      if (v5)
      {
        v8 = v15;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B4540(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1001C6298();
  v3[4] = v5;
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000B4624;

  return sub_1000B4E24(v5);
}

uint64_t sub_1000B4624(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_1001C4A18();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_100084528(&qword_10026F950, &qword_1001F15D0);
    isa = sub_1001C5EF8().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
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
  v5[1] = sub_1000B48A4;

  return sub_1000B52A0(a1, a2);
}

uint64_t sub_1000B48A4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1000B4B34(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_1001C6298();
  v4[4] = v6;
  v7 = sub_1001C6298();
  v4[5] = v7;
  v8 = a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1000B4C3C;

  return sub_1000B52A0(v6, v7);
}

uint64_t sub_1000B4C3C(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_1001C4A18();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_100084528(&qword_10026F950, &qword_1001F15D0);
    isa = sub_1001C5EF8().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1000B4E24(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1001C4DE8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000B4EE4, 0, 0);
}

uint64_t sub_1000B4EE4()
{
  sub_1001C4DF8();
  if (qword_10026EBC0 != -1)
  {
    swift_once();
  }

  v1 = sub_1001C4DD8();
  sub_100083274(v1, qword_10026F930);
  v2 = sub_100118CD0(&off_1002421D0);
  v0[6] = v2;
  sub_1000B596C(&unk_1002421F0);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1000B5024;
  v4 = v0[5];
  v5 = v0[2];

  return MCatalogService.fetch(adamIDs:relationships:views:additionalParameters:batchSize:metadata:)(v5, 0, 0, v2, 150, v4);
}

uint64_t sub_1000B5024(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_1000B5220;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_1000B5170;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000B5170()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_1000B4160(v0[9]);

  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1000B5220()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000B52A0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1001C4DE8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000B5360, 0, 0);
}

uint64_t sub_1000B5360()
{
  sub_1001C4DF8();
  if (qword_10026EBC0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1001C4DD8();
  sub_100083274(v3, qword_10026F930);
  v4 = sub_100118CD0(&off_100242210);
  v0[7] = v4;
  sub_1000B596C(&unk_100242230);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1000B54B0;
  v6 = v0[6];

  return MCatalogService.fetch(bookAssets:audiobookAssets:relationships:views:additionalParameters:batchSize:metadata:)(v1, v2, 0, 0, v4, 150, v6);
}

uint64_t sub_1000B54B0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1000B56AC;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_1000B55FC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000B55FC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1001534F8(v0[10]);
  v5 = v4;

  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1000B56AC()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000B572C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10009B25C;

  return sub_1000B4B34(v2, v3, v5, v4);
}

uint64_t sub_1000B57EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009B25C;

  return sub_1000B4540(v2, v3, v4);
}

uint64_t sub_1000B58A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10009AAEC;

  return sub_100118688(a1, v4, v5, v6);
}

uint64_t sub_1000B596C(uint64_t a1)
{
  v2 = sub_100084528(&qword_100274250, &unk_1001F8730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static OS_os_log.crdtModelSync.getter()
{
  if (qword_10026EBC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10026F958;

  return v1;
}

uint64_t sub_1000B5A34()
{
  sub_1000B5AA0();
  result = sub_1001C67E8();
  qword_10026F958 = result;
  return result;
}

unint64_t sub_1000B5AA0()
{
  result = qword_10026F7C0;
  if (!qword_10026F7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026F7C0);
  }

  return result;
}

uint64_t CRDTModelRevisionInfo.description.getter()
{
  v1 = 0x296C696E28;
  v2 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  __chkstk_darwin(v2 - 8);
  v4 = v15 - v3;
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  if (v0[1])
  {
    v5 = *v0;
    v6 = v0[1];
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = 0x296C696E28;
  }

  v16._countAndFlagsBits = v5;
  v16._object = v6;
  sub_1001C6138(v16);

  v17._countAndFlagsBits = 8251;
  v17._object = 0xE200000000000000;
  sub_1001C6138(v17);
  if (v0[3])
  {
    v7 = v0[2];
    v8 = v0[3];
  }

  else
  {
    v8 = 0xE500000000000000;
    v7 = 0x296C696E28;
  }

  v18._countAndFlagsBits = v7;
  v18._object = v8;
  sub_1001C6138(v18);

  v19._countAndFlagsBits = 8251;
  v19._object = 0xE200000000000000;
  sub_1001C6138(v19);
  v9 = type metadata accessor for CRDTModelRevisionInfo(0);
  sub_1000B5D2C(v0 + *(v9 + 24), v4);
  v10 = sub_1001C4CA8();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {
    sub_10008875C(v4, &unk_10026FC70, &unk_1001F1430);
    v12 = 0xE500000000000000;
  }

  else
  {
    v1 = sub_1001C4C08();
    v12 = v13;
    (*(v11 + 8))(v4, v10);
  }

  v20._countAndFlagsBits = v1;
  v20._object = v12;
  sub_1001C6138(v20);

  return v15[0];
}

uint64_t type metadata accessor for CRDTModelRevisionInfo(uint64_t a1)
{
  result = qword_10026F9E0;
  if (!qword_10026F9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B5D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_1000B5D9C()
{
  v1 = *v0;
  sub_1001C6DF8();
  sub_1001C6E08(v1);
  return sub_1001C6E28();
}

Swift::Int sub_1000B5DE4(uint64_t a1)
{
  v2 = *v1;
  sub_1001C6DF8();
  sub_1001C6E08(v2);
  return sub_1001C6E28();
}

unint64_t sub_1000B5E28()
{
  v1 = 0x684364726F636572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697369766572;
  }
}

uint64_t sub_1000B5E9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000B6D38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000B5ED0(uint64_t a1)
{
  v2 = sub_1000B6808();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B5F0C(uint64_t a1)
{
  v2 = sub_1000B6808();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CRDTModelRevisionInfo.encode(to:)(void *a1)
{
  v3 = sub_100084528(&qword_10026F960, &qword_1001F1608);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10009BB74(a1, a1[3]);
  sub_1000B6808();
  sub_1001C6E78();
  v8[15] = 0;
  sub_1001C6C38();
  if (!v1)
  {
    v8[14] = 1;
    sub_1001C6C38();
    type metadata accessor for CRDTModelRevisionInfo(0);
    v8[13] = 2;
    sub_1001C4CA8();
    sub_1000B6E64(&qword_10026F970, &protocol conformance descriptor for Date);
    sub_1001C6C58();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t CRDTModelRevisionInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = sub_100084528(&qword_10026F978, &qword_1001F1610);
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for CRDTModelRevisionInfo(0);
  __chkstk_darwin(v10);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10009BB74(a1, a1[3]);
  sub_1000B6808();
  sub_1001C6E58();
  if (v2)
  {
    return sub_10008E7BC(a1);
  }

  v19 = v10;
  v13 = v21;
  v25 = 0;
  *v12 = sub_1001C6BB8();
  v12[1] = v14;
  v18[1] = v14;
  v24 = 1;
  v12[2] = sub_1001C6BB8();
  v12[3] = v15;
  sub_1001C4CA8();
  v23 = 2;
  sub_1000B6E64(&qword_10026F980, &protocol conformance descriptor for Date);
  v16 = v22;
  sub_1001C6BD8();
  (*(v13 + 8))(v9, v16);
  sub_1000B685C(v6, v12 + *(v19 + 24));
  sub_1000B68CC(v12, v20);
  sub_10008E7BC(a1);
  return sub_1000B6930(v12);
}

BOOL _s14bookdatastored21CRDTModelRevisionInfoV23__derived_struct_equalsySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1001C4CA8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_100084528(&qword_10026FA48, &unk_1001F17D0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_1001C6D08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (v16)
  {
    if (!v17 || (a1[2] != a2[2] || v16 != v17) && (sub_1001C6D08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = *(type metadata accessor for CRDTModelRevisionInfo(0) + 24);
  v19 = *(v11 + 48);
  sub_1000B5D2C(a1 + v18, v13);
  sub_1000B5D2C(a2 + v18, &v13[v19]);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v19], 1, v4) == 1)
    {
      sub_10008875C(v13, &unk_10026FC70, &unk_1001F1430);
      return 1;
    }

    goto LABEL_20;
  }

  sub_1000B5D2C(v13, v10);
  if (v20(&v13[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_20:
    sub_10008875C(v13, &qword_10026FA48, &unk_1001F17D0);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v19], v4);
  sub_1000B6E64(&unk_10026F440, &protocol conformance descriptor for Date);
  v22 = sub_1001C5FD8();
  v23 = *(v5 + 8);
  v23(v7, v4);
  v23(v10, v4);
  sub_10008875C(v13, &unk_10026FC70, &unk_1001F1430);
  return (v22 & 1) != 0;
}

unint64_t sub_1000B6808()
{
  result = qword_10026F968;
  if (!qword_10026F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F968);
  }

  return result;
}

uint64_t sub_1000B685C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B68CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRDTModelRevisionInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B6930(uint64_t a1)
{
  v2 = type metadata accessor for CRDTModelRevisionInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000B69B4(uint64_t a1)
{
  sub_1000B6A38();
  if (v1 <= 0x3F)
  {
    sub_1000B6A88(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000B6A38()
{
  if (!qword_10026F9F0)
  {
    v0 = sub_1001C67F8();
    if (!v1)
    {
      atomic_store(v0, &qword_10026F9F0);
    }
  }
}

void sub_1000B6A88(uint64_t a1)
{
  if (!qword_10026F9F8)
  {
    sub_1001C4CA8();
    v1 = sub_1001C67F8();
    if (!v2)
    {
      atomic_store(v1, &qword_10026F9F8);
    }
  }
}

uint64_t getEnumTagSinglePayload for ReadingGoals.StateChange.ChangeOrigin(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadingGoals.StateChange.ChangeOrigin(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000B6C34()
{
  result = qword_10026FA30;
  if (!qword_10026FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FA30);
  }

  return result;
}

unint64_t sub_1000B6C8C()
{
  result = qword_10026FA38;
  if (!qword_10026FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FA38);
  }

  return result;
}

unint64_t sub_1000B6CE4()
{
  result = qword_10026FA40;
  if (!qword_10026FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FA40);
  }

  return result;
}

uint64_t sub_1000B6D38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697369766572 && a2 == 0xEC000000746E6948;
  if (v4 || (sub_1001C6D08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x684364726F636572 && a2 == 0xEF67615465676E61 || (sub_1001C6D08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001001FF8B0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1001C6D08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000B6E64(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001C4CA8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B6EA8(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
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

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 56) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));

      a1(&v14);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000B6FDC(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
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

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
      result = a1(&v14);
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000B70D4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  result = sub_100088714(0, &unk_10026FB00, NSUserDefaults_ptr);
  qword_10026FA68 = result;
  unk_10026FA70 = &protocol witness table for NSUserDefaults;
  qword_10026FA50 = v0;
  return result;
}

uint64_t sub_1000B7144()
{
  v0 = [objc_opt_self() defaultStore];
  result = sub_100088714(0, &qword_10026FAF8, NSUbiquitousKeyValueStore_ptr);
  qword_10026FA90 = result;
  unk_10026FA98 = &protocol witness table for NSUbiquitousKeyValueStore;
  qword_10026FA78 = v0;
  return result;
}

id ReadingGoalsService.init()()
{
  ObjectType = swift_getObjectType();
  if (qword_10026EBD0 != -1)
  {
    swift_once();
  }

  sub_1000B3A90(&qword_10026FA50, v7);
  if (qword_10026EBD8 != -1)
  {
    swift_once();
  }

  sub_1000B3A90(&qword_10026FA78, v6);
  type metadata accessor for ReadingGoalsDataStore();
  swift_allocObject();
  *&v0[OBJC_IVAR___BDSReadingGoalsService_goalsDataStore] = ReadingGoalsDataStore.init(localStore:syncStore:)(v7, v6);
  type metadata accessor for ReadingGoalsController();
  v2 = swift_allocObject();

  *&v0[OBJC_IVAR___BDSReadingGoalsService_goalsController] = sub_1000BB310(v3, v2);
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t ReadingGoalsService.changeBooksFinishedGoal(to:)(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return _swift_task_switch(sub_1000B7330, 0, 0);
}

uint64_t sub_1000B7330(uint64_t a1)
{
  v2 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v3 = v1[13];
  v4 = v1[14];
  v5 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001F0670;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = v3;
  sub_1001C5118(v2, &_mh_execute_header, v5, "ReadingGoalsService changeBooksFinishedGoal %ld", v18);

  v7 = *(v4 + OBJC_IVAR___BDSReadingGoalsService_goalsController);
  swift_beginAccess();
  sub_1000B3A90(v7 + 16, (v1 + 2));
  v8 = v1[5];
  v9 = v1[6];
  sub_10009BB74(v1 + 2, v8);
  (*(v9 + 40))(v3, v8, v9);
  sub_10008E7BC(v1 + 2);
  sub_1001C6688();
  v1[12] = v1[3];
  v1[11] = v3;
  v10 = *(v7 + 56);
  v11 = swift_task_alloc();
  *(v11 + 16) = v1 + 11;
  v12 = *(v10 + 16);
  v13 = swift_allocObject();
  v13[2] = sub_1000BB820;
  v13[3] = v11;
  v13[4] = v10;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1000BB828;
  *(v14 + 24) = v13;
  v1[6] = sub_1000B2E48;
  v1[7] = v14;
  v1[2] = _NSConcreteStackBlock;
  v1[3] = 1107296256;
  v1[4] = sub_1000906F4;
  v1[5] = &unk_1002443C0;
  v15 = _Block_copy(v1 + 2);

  dispatch_sync(v12, v15);
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {

    v17 = v1[1];

    return v17(1);
  }

  return result;
}

uint64_t sub_1000B77D8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1000BC03C;

  return ReadingGoalsService.changeBooksFinishedGoal(to:)(a1);
}

uint64_t ReadingGoalsService.changeDailyGoal(to:)(double a1)
{
  *(v2 + 112) = v1;
  *(v2 + 104) = a1;
  return _swift_task_switch(sub_1000B78B8, 0, 0);
}

uint64_t sub_1000B78B8(uint64_t a1)
{
  v2 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v3 = *(v1 + 14);
  v4 = v1[13];
  v5 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001F0670;
  *(v6 + 56) = &type metadata for Double;
  *(v6 + 64) = &protocol witness table for Double;
  *(v6 + 32) = v4;
  sub_1001C5118(v2, &_mh_execute_header, v5, "ReadingGoalsService changeDailyGoal %lf", v18);

  v7 = *(v3 + OBJC_IVAR___BDSReadingGoalsService_goalsController);
  swift_beginAccess();
  sub_1000B3A90(v7 + 16, (v1 + 2));
  v8 = *(v1 + 5);
  v9 = *(v1 + 6);
  sub_10009BB74(v1 + 2, v8);
  (*(v9 + 48))(v8, v9, v4);
  sub_10008E7BC(v1 + 2);
  sub_1001C6688();
  v1[11] = v1[2];
  v1[12] = v4;
  v10 = *(v7 + 56);
  v11 = swift_task_alloc();
  *(v11 + 16) = v1 + 11;
  v12 = *(v10 + 16);
  v13 = swift_allocObject();
  v13[2] = sub_1000BB820;
  v13[3] = v11;
  v13[4] = v10;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1000BC09C;
  *(v14 + 24) = v13;
  *(v1 + 6) = sub_1000B3DA0;
  *(v1 + 7) = v14;
  *(v1 + 2) = _NSConcreteStackBlock;
  *(v1 + 3) = 1107296256;
  *(v1 + 4) = sub_1000906F4;
  *(v1 + 5) = &unk_100244438;
  v15 = _Block_copy(v1 + 2);

  dispatch_sync(v12, v15);
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {

    v17 = *(v1 + 1);

    return v17(1);
  }

  return result;
}

uint64_t sub_1000B7D6C(const void *a1, void *a2, double a3)
{
  v3[2] = a2;
  v3[3] = _Block_copy(a1);
  a2;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1000B7E24;

  return ReadingGoalsService.changeDailyGoal(to:)(a3);
}

uint64_t sub_1000B7E24(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1000B7F8C(uint64_t a1)
{
  v2 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v23 = v2;
    swift_once();
    v2 = v23;
  }

  v3 = v1[16];
  sub_1001C5118(v2, &_mh_execute_header, qword_1002711E8, "ReadingGoalsService clearData", 29, 2, _swiftEmptyArrayStorage);
  v4 = *(v3 + OBJC_IVAR___BDSReadingGoalsService_goalsController);
  swift_beginAccess();
  sub_1000B3A90((v4 + 2), (v1 + 8));
  v5 = v1[11];
  v6 = v1[12];
  sub_10009BB74(v1 + 8, v5);
  (*(v6 + 56))(v5, v6);
  sub_10008E7BC(v1 + 8);
  v7 = v4[5];
  v8 = v4[6];
  v9 = sub_10009BB74(v4 + 2, v7);
  v10 = *(v7 - 8);
  v11 = swift_task_alloc();
  (*(v10 + 16))(v11, v9, v7);
  v12 = (*(v8 + 8))(v7, v8);
  v14 = v13;
  (*(v10 + 8))(v11, v7);

  v15 = v4[7];
  v16 = swift_task_alloc();
  *(v16 + 16) = v12;
  *(v16 + 24) = v14;
  v17 = *(v15 + 16);
  v18 = swift_allocObject();
  v18[2] = sub_1000BB84C;
  v18[3] = v16;
  v18[4] = v15;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1000BC09C;
  *(v19 + 24) = v18;
  v1[6] = sub_1000B3DA0;
  v1[7] = v19;
  v1[2] = _NSConcreteStackBlock;
  v1[3] = 1107296256;
  v1[4] = sub_1000906F4;
  v1[5] = &unk_1002444B0;
  v20 = _Block_copy(v1 + 2);

  dispatch_sync(v17, v20);
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  else
  {

    v22 = v1[1];

    return v22(1);
  }

  return result;
}

uint64_t sub_1000B8464(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000BC03C;

  return ReadingGoalsService.clearData()();
}

uint64_t sub_1000B8528(uint64_t a1)
{
  v2 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v5 = v2;
    swift_once();
    v2 = v5;
  }

  sub_1001C5118(v2, &_mh_execute_header, qword_1002711E8, "ReadingGoalsService clearLocalCachedData", 40, 2, _swiftEmptyArrayStorage);
  if (qword_10026EBD0 != -1)
  {
    swift_once();
  }

  _s14bookdatastored21ReadingGoalsDataStoreC011clearCachedD02inyAA0b4GoaldE8Protocol_p_tFZ_0(qword_10026FA50);
  v3 = *(v1 + 8);

  return v3(1);
}

uint64_t sub_1000B87A0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return _swift_task_switch(sub_1000B8808, 0, 0);
}

uint64_t sub_1000B8808(uint64_t a1)
{
  v2 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v6 = v2;
    swift_once();
    v2 = v6;
  }

  sub_1001C5118(v2, &_mh_execute_header, qword_1002711E8, "ReadingGoalsService clearLocalCachedData", 40, 2, _swiftEmptyArrayStorage);
  if (qword_10026EBD0 != -1)
  {
    swift_once();
  }

  v3 = *(v1 + 16);
  _s14bookdatastored21ReadingGoalsDataStoreC011clearCachedD02inyAA0b4GoaldE8Protocol_p_tFZ_0(qword_10026FA50);
  v3[2](v3, 1);
  _Block_release(v3);
  v4 = *(v1 + 8);

  return v4();
}

bookdatastored::ReadingGoals::State __swiftcall ReadingGoalsService.state()()
{
  v0 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  sub_1001C5118(v0, &_mh_execute_header, qword_1002711E8, "ReadingGoalsService state", 25, 2, _swiftEmptyArrayStorage);
  sub_1001C6688();
  v1 = v5;
  v2 = v6;
  result.streakDayGoal = v2;
  result.booksFinishedGoal = v1;
  return result;
}

uint64_t sub_1000B8A24()
{
  v1 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v8 = v1;
    swift_once();
    v1 = v8;
  }

  sub_1001C5118(v1, &_mh_execute_header, qword_1002711E8, "ReadingGoalsService state", 25, 2, _swiftEmptyArrayStorage);
  sub_1001C6688();
  v2 = v0[3];
  v3 = [objc_allocWithZone(NSNumber) initWithInteger:*(v0 + 2)];
  v4 = [objc_allocWithZone(NSNumber) initWithDouble:v2];
  v5 = [objc_allocWithZone(BDSReadingGoalsStateInfo) initWithBooksFinishedGoal:v3 streakDayGoal:v4];

  v6 = *(v0 + 1);

  return v6(v5, 1);
}

uint64_t sub_1000B8D24(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000B8DCC;

  return ReadingGoalsService.stateInfo()();
}

uint64_t sub_1000B8DCC(void *a1, char a2)
{
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v9 = *v2;

  (v5)[2](v5, a1, a2 & 1);
  _Block_release(v5);

  v7 = *(v9 + 8);

  return v7();
}

id ReadingHistoryServiceStatus.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000B8FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  if (a1)
  {
    v5.super.isa = sub_1001C5EF8().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = sub_1001C5FE8();
  [v4 setDictionary:v5.super.isa forKey:v6];
}

Swift::Void __swiftcall NSUserDefaults.set(_:forKey:)(Swift::OpaquePointer_optional _, Swift::String forKey)
{
  if (_.value._rawValue)
  {
    v3.super.isa = sub_1001C5EF8().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = sub_1001C5FE8();
  [v2 setValue:v3.super.isa forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t sub_1000B9130(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1001C5FE8();
  v5 = [v3 dictionaryForKey:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1001C5F08();

  return v6;
}

void sub_1000B91B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  if (a1)
  {
    v5.super.isa = sub_1001C5EF8().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = sub_1001C5FE8();
  [v4 setValue:v5.super.isa forKey:v6];
  swift_unknownObjectRelease();
}

uint64_t sub_1000B926C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistoryModel(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  v13 = sub_100084528(&qword_10026FAE8, &unk_1001F1940);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v23 - v15;
  v17 = *(v14 + 56);
  sub_10009ADF0(a1, &v23 - v15, &unk_10026FC40, &qword_1001F0E90);
  sub_10009ADF0(a2, &v16[v17], &unk_10026FC40, &qword_1001F0E90);
  v18 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  v19 = *(*(v18 - 8) + 48);
  v20 = v19(v16, 2, v18);
  if (v20)
  {
    if (v20 == 1)
    {
      if (v19(&v16[v17], 2, v18) != 1)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (v19(&v16[v17], 2, v18) == 2)
    {
LABEL_8:
      sub_10008875C(v16, &unk_10026FC40, &qword_1001F0E90);
      v21 = 1;
      return v21 & 1;
    }

LABEL_9:
    sub_10008875C(v16, &qword_10026FAE8, &unk_1001F1940);
    v21 = 0;
    return v21 & 1;
  }

  sub_10009ADF0(v16, v12, &unk_10026FC40, &qword_1001F0E90);
  if (v19(&v16[v17], 2, v18))
  {
    sub_1000BBED8(v12, type metadata accessor for ReadingHistoryModel);
    goto LABEL_9;
  }

  sub_1000BBF38(v12, v9, type metadata accessor for ReadingHistoryModel);
  sub_1000BBF38(&v16[v17], v7, type metadata accessor for ReadingHistoryModel);
  sub_1000BBE80();
  if (sub_1001C5C38())
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_1001C5C38() ^ 1;
  }

  sub_1000BBED8(v7, type metadata accessor for ReadingHistoryModel);
  sub_1000BBED8(v9, type metadata accessor for ReadingHistoryModel);
  sub_10008875C(v16, &unk_10026FC40, &qword_1001F0E90);
  return v21 & 1;
}

BOOL sub_1000B95DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRDTModelRevisionInfo(0);
  v51 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  __chkstk_darwin(v7 - 8);
  v49 = (&v43 - v8);
  v50 = sub_100084528(&qword_10026FAE0, &unk_1001F1930);
  __chkstk_darwin(v50);
  v10 = &v43 - v9;
  v52 = type metadata accessor for ReadingHistoryModel(0);
  v11 = __chkstk_darwin(v52);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v16 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - v17;
  v19 = sub_100084528(&qword_10026FAE8, &unk_1001F1940);
  __chkstk_darwin(v19);
  v21 = &v43 - v20;
  v22 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  if (*(a1 + *(v22 + 44)) != *(a2 + *(v22 + 44)))
  {
    return 0;
  }

  v45 = v4;
  v46 = v10;
  v44 = v6;
  v47 = v22;
  v23 = *(v22 + 48);
  v24 = *(v19 + 48);
  sub_10009ADF0(a1 + v23, v21, &unk_10026FC40, &qword_1001F0E90);
  v48 = a2;
  sub_10009ADF0(a2 + v23, &v21[v24], &unk_10026FC40, &qword_1001F0E90);
  v25 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  v26 = *(*(v25 - 8) + 48);
  v27 = v26(v21, 2, v25);
  if (v27)
  {
    if (v27 == 1)
    {
      if (v26(&v21[v24], 2, v25) != 1)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    if (v26(&v21[v24], 2, v25) == 2)
    {
LABEL_9:
      sub_10008875C(v21, &unk_10026FC40, &qword_1001F0E90);
      goto LABEL_10;
    }

LABEL_15:
    v35 = &qword_10026FAE8;
    v36 = &unk_1001F1940;
LABEL_16:
    v37 = v21;
LABEL_17:
    sub_10008875C(v37, v35, v36);
    return 0;
  }

  sub_10009ADF0(v21, v18, &unk_10026FC40, &qword_1001F0E90);
  if (v26(&v21[v24], 2, v25))
  {
    sub_1000BBED8(v18, type metadata accessor for ReadingHistoryModel);
    goto LABEL_15;
  }

  sub_1000BBF38(v18, v15, type metadata accessor for ReadingHistoryModel);
  sub_1000BBF38(&v21[v24], v13, type metadata accessor for ReadingHistoryModel);
  sub_1000BBE80();
  if (sub_1001C5C38())
  {
    sub_1000BBED8(v13, type metadata accessor for ReadingHistoryModel);
    sub_1000BBED8(v15, type metadata accessor for ReadingHistoryModel);
    v35 = &unk_10026FC40;
    v36 = &qword_1001F0E90;
    goto LABEL_16;
  }

  v39 = sub_1001C5C38();
  sub_1000BBED8(v13, type metadata accessor for ReadingHistoryModel);
  sub_1000BBED8(v15, type metadata accessor for ReadingHistoryModel);
  sub_10008875C(v21, &unk_10026FC40, &qword_1001F0E90);
  if (v39)
  {
    return 0;
  }

LABEL_10:
  sub_1000BBE80();
  v28 = v48;
  if (sub_1001C5C38() & 1) != 0 || (sub_1001C5C38())
  {
    return 0;
  }

  v29 = *(v47 + 52);
  v30 = *(v50 + 48);
  v31 = v46;
  sub_10009ADF0(a1 + v29, v46, &unk_10026F410, &unk_1001F0E40);
  sub_10009ADF0(v28 + v29, v31 + v30, &unk_10026F410, &unk_1001F0E40);
  v32 = *(v51 + 48);
  v33 = v45;
  if (v32(v31, 1, v45) != 1)
  {
    v40 = v49;
    sub_10009ADF0(v31, v49, &unk_10026F410, &unk_1001F0E40);
    if (v32(v31 + v30, 1, v33) != 1)
    {
      v41 = v31 + v30;
      v42 = v44;
      sub_1000BBF38(v41, v44, type metadata accessor for CRDTModelRevisionInfo);
      v34 = _s14bookdatastored21CRDTModelRevisionInfoV23__derived_struct_equalsySbAC_ACtFZ_0(v40, v42);
      sub_1000BBED8(v42, type metadata accessor for CRDTModelRevisionInfo);
      sub_1000BBED8(v40, type metadata accessor for CRDTModelRevisionInfo);
      sub_10008875C(v31, &unk_10026F410, &unk_1001F0E40);
      return v34;
    }

    sub_1000BBED8(v40, type metadata accessor for CRDTModelRevisionInfo);
    goto LABEL_26;
  }

  if (v32(v31 + v30, 1, v33) != 1)
  {
LABEL_26:
    v35 = &qword_10026FAE0;
    v36 = &unk_1001F1930;
    v37 = v31;
    goto LABEL_17;
  }

  sub_10008875C(v31, &unk_10026F410, &unk_1001F0E40);
  return 1;
}

uint64_t sub_1000B9CDC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100084528(&qword_10026F7F8, &qword_1001F1420);
  __chkstk_darwin(v4);
  v6 = &v16[-v5];
  v7 = type metadata accessor for CRDTModelSyncVersion(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v16[-v11];
  v13 = *(*v1 + 120);
  swift_beginAccess();
  sub_1000BBCF4(v1 + v13, v12);
  swift_beginAccess();
  sub_1000BBD58(a1, v1 + v13);
  swift_endAccess();
  sub_1000BBCF4(v1 + v13, v10);
  sub_100088714(0, &qword_10026FAD8, NSObject_ptr);
  if (sub_1001C67A8() & 1) != 0 && (sub_1001C5E98())
  {
    sub_1000BBED8(a1, type metadata accessor for CRDTModelSyncVersion);
    sub_1000BBED8(v10, type metadata accessor for CRDTModelSyncVersion);
  }

  else
  {
    sub_1000BBED8(v10, type metadata accessor for CRDTModelSyncVersion);
    v14 = *(sub_100084528(&unk_10026F800, &qword_1001F1428) + 48);
    sub_1000BBCF4(v12, v6);
    sub_1000BBCF4(v2 + v13, &v6[v14]);
    swift_storeEnumTagMultiPayload();
    sub_1000BA1CC(v6);
    sub_1000BBED8(a1, type metadata accessor for CRDTModelSyncVersion);
    sub_10008875C(v6, &qword_10026F7F8, &qword_1001F1420);
  }

  return sub_1000BBED8(v12, type metadata accessor for CRDTModelSyncVersion);
}

uint64_t sub_1000B9F6C(uint64_t a1)
{
  v3 = sub_100084528(&unk_10026F820, &unk_1001F1440);
  __chkstk_darwin(v3);
  v5 = &v19[-v4];
  v6 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v19[-v10];
  v12 = *(*v1 + 120);
  swift_beginAccess();
  sub_10009ADF0(v1 + v12, v11, &unk_10026F420, &unk_1001F0E50);
  swift_beginAccess();
  sub_1000BBDBC(a1, v1 + v12);
  swift_endAccess();
  sub_10009ADF0(v1 + v12, v9, &unk_10026F420, &unk_1001F0E50);
  v13 = sub_1000B95DC(v11, v9);
  sub_10008875C(v9, &unk_10026F420, &unk_1001F0E50);
  if (v13)
  {
    v14 = &unk_10026F420;
    v15 = &unk_1001F0E50;
    v16 = a1;
  }

  else
  {
    v17 = *(sub_100084528(&qword_10026F838, &unk_1001F1920) + 48);
    sub_10009ADF0(v11, v5, &unk_10026F420, &unk_1001F0E50);
    sub_10009ADF0(v1 + v12, &v5[v17], &unk_10026F420, &unk_1001F0E50);
    swift_storeEnumTagMultiPayload();
    sub_1000BA5CC(v5);
    sub_10008875C(a1, &unk_10026F420, &unk_1001F0E50);
    v14 = &unk_10026F820;
    v15 = &unk_1001F1440;
    v16 = v5;
  }

  sub_10008875C(v16, v14, v15);
  return sub_10008875C(v11, &unk_10026F420, &unk_1001F0E50);
}

uint64_t sub_1000BA1CC(uint64_t a1)
{
  v25 = a1;
  v2 = sub_1001C5688();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C5648();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1 + *(*v1 + 128);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 1);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(v1, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  sub_1001C5638();
  v30 = MarkedAsFinishedMechanism.rawValue.getter;
  v31 = 0;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v22 = &v28;
  v28 = sub_1000DD4AC;
  v29 = &unk_100244780;
  v13 = _Block_copy(&aBlock);
  sub_1001C5668();
  sub_1001C6698();
  _Block_release(v13);
  v14 = *(v3 + 8);
  v20 = v3 + 8;
  v24 = v14;
  v14(v5, v2);
  v23 = *(v7 + 8);
  v23(v9, v6);
  v15 = swift_beginAccess();
  v21 = v2;
  v16 = v1[4];
  __chkstk_darwin(v15);
  *(&v20 - 2) = v25;

  sub_1000B6EA8(sub_1000BC048, (&v20 - 4), v16);

  sub_1001C5638();
  v17 = swift_allocObject();
  swift_weakInit();
  v30 = sub_1000BC044;
  v31 = v17;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1000DD4AC;
  v29 = &unk_1002447D0;
  v18 = _Block_copy(&aBlock);

  sub_1001C5668();
  sub_1001C6698();
  _Block_release(v18);
  v24(v5, v21);
  v23(v9, v6);
}

uint64_t sub_1000BA5CC(uint64_t a1)
{
  v25 = a1;
  v2 = sub_1001C5688();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C5648();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1 + *(*v1 + 128);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 1);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(v1, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  sub_1001C5638();
  v30 = MarkedAsFinishedMechanism.rawValue.getter;
  v31 = 0;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v22 = &v28;
  v28 = sub_1000DD4AC;
  v29 = &unk_1002447F8;
  v13 = _Block_copy(&aBlock);
  sub_1001C5668();
  sub_1001C6698();
  _Block_release(v13);
  v14 = *(v3 + 8);
  v20 = v3 + 8;
  v24 = v14;
  v14(v5, v2);
  v23 = *(v7 + 8);
  v23(v9, v6);
  v15 = swift_beginAccess();
  v21 = v2;
  v16 = v1[4];
  __chkstk_darwin(v15);
  *(&v20 - 2) = v25;

  sub_1000B6EA8(sub_1000BBE2C, (&v20 - 4), v16);

  sub_1001C5638();
  v17 = swift_allocObject();
  swift_weakInit();
  v30 = sub_1000BBE64;
  v31 = v17;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1000DD4AC;
  v29 = &unk_100244848;
  v18 = _Block_copy(&aBlock);

  sub_1001C5668();
  sub_1001C6698();
  _Block_release(v18);
  v24(v5, v21);
  v23(v9, v6);
}

uint64_t sub_1000BA9CC(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1001C5688();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C5648();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = v9;
    v13 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 8);
    v16 = v13;
    v9 = v12;
    v15(v1, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  v17 = *(v1 + 24);
  sub_1001C5638();
  *&v45[16] = MarkedAsFinishedMechanism.rawValue.getter;
  *&v45[24] = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *v45 = sub_1000DD4AC;
  *&v45[8] = &unk_100244870;
  v18 = _Block_copy(&aBlock);
  sub_1001C5668();
  v38 = v17;
  sub_1001C6698();
  _Block_release(v18);
  v19 = *(v5 + 8);
  v41 = v7;
  v42 = v5 + 8;
  v43 = v4;
  v37 = v19;
  v19(v7, v4);
  v20 = *(v9 + 8);
  v39 = v9 + 8;
  v40 = v8;
  v36 = v20;
  v20(v11, v8);
  swift_beginAccess();
  v21 = *(v2 + 32);
  v22 = 1 << *(v21 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v21 + 64);
  v25 = (v22 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v24; result = )
  {
    v28 = i;
LABEL_11:
    v29 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v30 = *(*(v21 + 56) + ((v28 << 10) | (16 * v29)));
    v31 = a1[1];
    aBlock = *a1;
    *v45 = v31;
    *&v45[10] = *(a1 + 26);

    v30(&aBlock);
  }

  while (1)
  {
    v28 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v28 >= v25)
    {

      sub_1001C5638();
      v32 = swift_allocObject();
      swift_weakInit();
      *&v45[16] = sub_1000BBFA0;
      *&v45[24] = v32;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *v45 = sub_1000DD4AC;
      *&v45[8] = &unk_1002448C0;
      v33 = _Block_copy(&aBlock);

      v34 = v41;
      sub_1001C5668();
      sub_1001C6698();
      _Block_release(v33);
      v37(v34, v43);
      v36(v11, v40);
    }

    v24 = *(v21 + 64 + 8 * v28);
    ++i;
    if (v24)
    {
      i = v28;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BAE40(uint64_t a1)
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

uint64_t sub_1000BAF28(uint64_t a1)
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

uint64_t sub_1000BAFF8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CRDTModelSyncVersion(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*a3 + 120);
  swift_beginAccess();
  sub_1000BBCF4(a3 + v8, v7);
  a1(v7);
  return sub_1000B9CDC(v7);
}

uint64_t sub_1000BB0C8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  v8 = *(*a3 + 120);
  swift_beginAccess();
  sub_10009ADF0(a3 + v8, v7, &unk_10026F420, &unk_1001F0E50);
  a1(v7);
  return sub_1000B9F6C(v7);
}

uint64_t sub_1000BB1B8(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
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
    return sub_1000BA9CC(&v17);
  }

  if (v10 == 3 || v13 != v10)
  {
    goto LABEL_8;
  }

  return result;
}

double sub_1000BB2A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  result = *(a1 + 48);
  v5 = *(a1 + 56);
  *a2 = *(a1 + 40);
  *(a2 + 8) = result;
  *(a2 + 16) = v5;
  return result;
}

void *sub_1000BB310(uint64_t a1, void *a2)
{
  v46[3] = type metadata accessor for ReadingGoalsDataStore();
  v46[4] = &protocol witness table for ReadingGoalsDataStore;
  v46[0] = a1;
  sub_1000B3A90(v46, (a2 + 2));
  v4 = sub_10015564C(0);
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = v4;
  }

  v7 = COERCE_DOUBLE(sub_100155658(1));
  if (v8)
  {
    v9 = 300.0;
  }

  else
  {
    v9 = v7;
  }

  v10 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v38 = v10;
    swift_once();
    v10 = v38;
  }

  v11 = qword_1002711E8;
  sub_1001C5118(v10, &_mh_execute_header, qword_1002711E8, "ReadingGoalsController - loaded state", 37, 2, _swiftEmptyArrayStorage);
  sub_100084528(&qword_10026FAF0, &unk_1001F1950);
  swift_allocObject();
  a2[7] = sub_100098A20(v6, 2, v9);
  v12 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v13 = a2[5];
  v14 = a2[6];
  sub_10009D148((a2 + 2), v13);
  v15 = *(v14 + 24);

  v15(sub_1000BBFA8, v12, v13, v14);
  swift_endAccess();

  sub_1001C6688();
  v16 = sub_10015564C(0);
  if (v17)
  {
    v18 = 3;
  }

  else
  {
    v18 = v16;
  }

  v19 = COERCE_DOUBLE(sub_100155658(1));
  if (v20)
  {
    if (aBlock == v18 && *&v41 == 300.0)
    {
      goto LABEL_19;
    }
  }

  else if (aBlock == v18 && *&v41 == v19)
  {
    goto LABEL_19;
  }

  v21 = sub_1001C65B8();
  sub_1001C5118(v21, &_mh_execute_header, v11, "ReadingGoalsController - state change before onRemoteChange is registered", 73, 2, _swiftEmptyArrayStorage);
  v22 = a2[5];
  v23 = a2[6];
  v24 = sub_10009BB74(a2 + 2, v22);
  v25 = *(v22 - 8);
  __chkstk_darwin(v24);
  v27 = &aBlock - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v27);
  v28 = (*(v23 + 8))(v22, v23);
  v30 = v29;
  v31 = (*(v25 + 8))(v27, v22);
  v32 = a2[7];
  __chkstk_darwin(v31);
  v39[2] = v28;
  v39[3] = v30;
  v33 = *(v32 + 16);
  v34 = swift_allocObject();
  v34[2] = sub_1000BC00C;
  v34[3] = v39;
  v34[4] = v32;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1000BC09C;
  *(v35 + 24) = v34;
  v44 = sub_1000B3DA0;
  v45 = v35;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_1000906F4;
  v43 = &unk_100244960;
  v36 = _Block_copy(&aBlock);

  dispatch_sync(v33, v36);
  _Block_release(v36);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if ((v32 & 1) == 0)
  {
LABEL_19:
    sub_10008E7BC(v46);
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BB834(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BB87C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_1000B8D24(v2, v3);
}

uint64_t sub_1000BB928()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10009B25C;

  return sub_1000B87A0(v2);
}

uint64_t sub_1000BB9D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10009B25C;

  return sub_100118688(a1, v4, v5, v6);
}

uint64_t sub_1000BBAA0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_1000B8464(v2, v3);
}

uint64_t sub_1000BBB4C()
{
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009AAEC;

  return sub_1000B7D6C(v3, v4, v2);
}

uint64_t sub_1000BBC00()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BBC40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009B25C;

  return sub_1000B77D8(v2, v3, v4);
}

uint64_t sub_1000BBCF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRDTModelSyncVersion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BBD58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRDTModelSyncVersion(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BBDBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000BBE80()
{
  result = qword_10026F460;
  if (!qword_10026F460)
  {
    type metadata accessor for ReadingHistoryModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F460);
  }

  return result;
}

uint64_t sub_1000BBED8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000BBF38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1000BBFB0@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 8) = result;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1000BC0EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = &v1[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
  v11 = *&v1[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8];
  if (v11 >> 60 == 15)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v14 = *v10;
    sub_10009AD9C(*v10, *&v1[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8]);
    isa = sub_1001C4B98().super.isa;
    v16 = [(objc_class *)isa bu_sha256];

    v17 = sub_1001C6018();
    v19 = v18;

    v34 = 0x2D363532616873;
    v35 = 0xE700000000000000;
    v36._countAndFlagsBits = v17;
    v36._object = v19;
    sub_1001C6138(v36);

    sub_1000887BC(v14, v11);
    v12 = v34;
    v13 = v35;
  }

  v20 = [v2 systemFields];
  if (v20 && (v21 = v20, v22 = [v20 recordChangeTag], v21, v22))
  {
    v23 = sub_1001C6018();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = [v2 modificationDate];
  if (v26)
  {
    v27 = v26;
    sub_1001C4C78();

    v28 = sub_1001C4CA8();
    (*(*(v28 - 8) + 56))(v7, 0, 1, v28);
  }

  else
  {
    v29 = sub_1001C4CA8();
    (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
  }

  sub_10009AE58(v7, v9, &unk_10026FC70, &unk_1001F1430);
  if (v13)
  {

LABEL_16:
    v32 = type metadata accessor for CRDTModelRevisionInfo(0);
    sub_10009ADF0(v9, a1 + *(v32 + 24), &unk_10026FC70, &unk_1001F1430);
    *a1 = v12;
    a1[1] = v13;
    a1[2] = v23;
    a1[3] = v25;
    (*(*(v32 - 8) + 56))(a1, 0, 1, v32);
    return sub_10008875C(v9, &unk_10026FC70, &unk_1001F1430);
  }

  if (v25)
  {
    goto LABEL_16;
  }

  v30 = sub_1001C4CA8();
  if ((*(*(v30 - 8) + 48))(v9, 1, v30) != 1)
  {
    goto LABEL_16;
  }

  v31 = type metadata accessor for CRDTModelRevisionInfo(0);
  (*(*(v31 - 8) + 56))(a1, 1, 1, v31);
  return sub_10008875C(v9, &unk_10026FC70, &unk_1001F1430);
}

uint64_t sub_1000BC498(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v51 = swift_isaMask & *v2;
  v5 = *((swift_isaMask & v4) + 0x50);
  v6 = sub_1001C67F8();
  isa = v6[-1].isa;
  v49 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v41 - v8;
  v10 = *(v5 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v7);
  __chkstk_darwin(v12);
  v50 = &v41 - v13;
  v14 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v45 = *(v14 - 8);
  v15 = *(v45 + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v46 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  sub_1000BC0EC((&v41 - v17));
  v19 = *(a1 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8);
  if (v19 >> 60 == 15)
  {
    v23 = sub_1001C5128();
    v24 = sub_1001C6598();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "CRDTModelSyncManager resolveConflictsFor: couldn't deserialize resolved data", v25, 2u);
    }

    sub_1000C1508(v18);
    return sub_10008875C(v18, &unk_10026F410, &unk_1001F0E40);
  }

  else
  {
    v43 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = v10;
    v20 = *(a1 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData);
    v21 = *(v2 + qword_10026FB18);
    sub_10009AD88(v20, v19);
    sub_10009AD88(v20, v19);
    v42 = *(v51 + 88);
    v22 = v21;
    v44 = v20;
    sub_1001C5C88();
    v26 = v47;
    (*(v47 + 56))(v9, 0, 1, v5);
    v41 = *(v26 + 32);
    isa = (v26 + 32);
    v27 = v50;
    v41(v50, v9, v5);
    v49 = *(v2 + qword_10026FB10);
    v28 = v43;
    (*(v26 + 16))(v43, v27, v5);
    v29 = v46;
    sub_10009ADF0(v18, v46, &unk_10026F410, &unk_1001F0E40);
    v30 = (*(v26 + 80) + 40) & ~*(v26 + 80);
    v31 = (v11 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = (*(v45 + 80) + v31 + 8) & ~*(v45 + 80);
    v33 = swift_allocObject();
    v35 = v41;
    v34 = v42;
    *(v33 + 2) = v5;
    *(v33 + 3) = v34;
    *(v33 + 4) = *(v51 + 96);
    v35(&v33[v30], v28, v5);
    *&v33[v31] = v2;
    sub_10009AE58(v29, &v33[v32], &unk_10026F410, &unk_1001F0E40);
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1000C5868;
    *(v36 + 24) = v33;
    aBlock[4] = sub_1000B3DA0;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000906F4;
    aBlock[3] = &unk_100244CC8;
    v37 = _Block_copy(aBlock);
    v38 = v2;

    dispatch_sync(v49, v37);
    _Block_release(v37);
    sub_1000887BC(v44, v19);
    (*(v47 + 8))(v50, v5);
    sub_10008875C(v18, &unk_10026F410, &unk_1001F0E40);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1000BCAD0()
{
  swift_getMetatypeMetadata();
  v0 = sub_1001C6078();
  v2 = v1;
  sub_1001C61E8();
  v3 = sub_1001C6088();
  v5 = v4;

  v6 = sub_10014074C(15, v3, v5, v0, v2);

  return v6;
}

Swift::Int CRDTModelLocalFileManager.SyncError.hashValue.getter(char a1)
{
  sub_1001C6DF8();
  sub_1001C6E08(a1 & 1);
  return sub_1001C6E28();
}

Swift::Int sub_1000BCC20(uint64_t a1)
{
  sub_1001C6DF8();
  CRDTModelLocalFileManager.SyncError.hash(into:)(v3, *v1);
  return sub_1001C6E28();
}

uint64_t sub_1000BCC94@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x50);
  v4 = type metadata accessor for ModelState(0, v3, *((swift_isaMask & *v1) + 0x58), *((swift_isaMask & *v1) + 0x60));
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;

  MutableObservableContainer.value.getter();

  (*(*(v3 - 8) + 16))(a1, v7, v3);
  return (*(v5 + 8))(v7, v4);
}

uint64_t CRDTModelSyncManager.observable.getter()
{
  v1 = type metadata accessor for ModelState(255, *((swift_isaMask & *v0) + 0x50), *((swift_isaMask & *v0) + 0x58), *((swift_isaMask & *v0) + 0x60));
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer(0, v1, WitnessTable, v3);
  sub_1001C6688();
  return v5;
}

uint64_t sub_1000BCF70@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  __chkstk_darwin(v3);
  v5 = &v7 - v4;

  sub_1001C6688();

  sub_10009B074(v5, a2, type metadata accessor for ReadingHistoryModel);
  return sub_10008875C(v5, &unk_10026F420, &unk_1001F0E50);
}

uint64_t sub_1000BD090@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *((swift_isaMask & *a1) + 0x50);
  v4 = type metadata accessor for ModelState(0, v3, *((swift_isaMask & *a1) + 0x58), *((swift_isaMask & *a1) + 0x60));
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;

  MutableObservableContainer.value.getter();

  (*(*(v3 - 8) + 16))(a2, v7, v3);
  return (*(v5 + 8))(v7, v4);
}

void sub_1000BD228(char a1)
{
  v2 = a1 & 1;
  v3 = direct field offset for CRDTModelSyncManager.enableCloudSync;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 != v2)
  {
    sub_10018C624(v4);
  }
}

uint64_t CRDTModelSyncManager.enableCloudSync.getter()
{
  v1 = direct field offset for CRDTModelSyncManager.enableCloudSync;
  swift_beginAccess();
  return *(v0 + v1);
}

void CRDTModelSyncManager.enableCloudSync.setter(char a1)
{
  v3 = direct field offset for CRDTModelSyncManager.enableCloudSync;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1000BD228(v4);
}

void (*sub_1000BD32C(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for CRDTModelSyncManager.enableCloudSync;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1000BD3C0;
}

void sub_1000BD3C0(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if ((v4 ^ v5))
  {
    v6 = *(*(v1 + 24) + qword_10026FB30);
    v7 = *(v6 + qword_100281A08);
    *(v6 + qword_100281A08) = v4;
    if (v4 != v7)
    {
      v8 = v1;
      sub_1000F1254(v4);
      v1 = v8;
    }
  }

  free(v1);
}

void (*CRDTModelSyncManager.enableCloudSync.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = direct field offset for CRDTModelSyncManager.enableCloudSync;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_1000BD4D8;
}

void sub_1000BD4D8(uint64_t a1)
{
  v1 = *a1;
  CRDTModelSyncManager.enableCloudSync.setter(*(*a1 + 32));

  free(v1);
}

char *CRDTModelSyncManager.__allocating_init(cloudKitController:crdtContext:dataSource:transactionProvider:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for CRDTModelCloudDataManager(0, v5[10], v5[11], v5[12]);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = sub_10018C444(v10, v11, v12, a4);
  v14 = objc_allocWithZone(v5);
  v15 = sub_1000BD60C(v13, v11, a4);

  *&v13[qword_100281A00 + 8] = &off_100244988;
  swift_unknownObjectWeakAssign();

  return v15;
}

char *sub_1000BD60C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v67 = a1;
  v68 = a3;
  v66 = a2;
  ObjectType = swift_getObjectType();
  v5 = *v3;
  v6 = swift_isaMask;
  v64 = sub_1001C5148();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v69 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  __chkstk_darwin(v8 - 8);
  v65 = &v59 - v9;
  v10 = *((v6 & v5) + 0x50);
  v11 = *((v6 & v5) + 0x58);
  v12 = *((v6 & v5) + 0x60);
  v13 = v11;
  v75 = v12;
  v76 = v11;
  v14 = type metadata accessor for ModelState.Source(0, v10, v11, v12);
  __chkstk_darwin(v14 - 8);
  v63 = &v59 - v15;
  v74 = type metadata accessor for ModelState(0, v10, v13, v12);
  v70 = *(v74 - 8);
  v16 = __chkstk_darwin(v74);
  v73 = &v59 - v17;
  v72 = *(v10 - 8);
  v18 = __chkstk_darwin(v16);
  v60 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v71 = &v59 - v20;
  v59 = sub_1001C6668();
  v21 = *(v59 - 8);
  __chkstk_darwin(v59);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1001C6638();
  __chkstk_darwin(v24 - 8);
  v25 = sub_1001C5688();
  __chkstk_darwin(v25 - 8);
  v77[0] = 0;
  v77[1] = 0xE000000000000000;
  sub_1001C69C8(16);

  strcpy(v77, "CRDTModelSync.");
  HIBYTE(v77[1]) = -18;
  v79._countAndFlagsBits = sub_1000BCAD0();
  sub_1001C6138(v79);

  v26 = v62;
  sub_1001C5138();
  v27 = qword_10026FB10;
  sub_1000C5A14();
  sub_1001C5678();
  sub_1001C6628();
  (*(v21 + 104))(v23, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v59);
  v28 = v74;
  *&v4[v27] = sub_1001C66A8();
  v4[direct field offset for CRDTModelSyncManager.enableCloudSync] = 0;
  v29 = v71;
  v30 = v76;
  sub_1001C5B38();
  v31 = v66;
  *&v4[qword_10026FB18] = v66;
  v32 = v72;
  v33 = v60;
  (*(v72 + 16))(v60, v29, v10);
  v34 = v63;
  (*(v32 + 56))(v63, 1, 2, v10);
  v35 = type metadata accessor for CRDTModelRevisionInfo(0);
  v36 = v65;
  (*(*(v35 - 8) + 56))(v65, 1, 1, v35);
  v66 = v31;
  v37 = v73;
  ModelState.init(model:loaded:source:revisionInfo:)(v33, 0, v34, v36, v10, v30, v75, v73);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer(0, v28, WitnessTable, v39);
  *&v4[qword_10026FB20] = sub_10015C6B4(v37);
  v41 = v67;
  v40 = v68;
  *&v4[qword_10026FB30] = v67;
  *&v4[qword_10026FB38] = v40;
  type metadata accessor for ObservableTransaction(0);
  v42 = swift_allocObject();
  swift_getObjectType();
  v43 = v40;
  swift_unknownObjectRetain_n();
  v44 = v41;
  *&v4[qword_10026FB28] = sub_10015C33C(0xD000000000000030, 0x80000001001FEE50, v43, v42);
  v78.receiver = v4;
  v78.super_class = ObjectType;
  v45 = objc_msgSendSuper2(&v78, "init");
  v46 = *&v45[qword_10026FB20] + *(**&v45[qword_10026FB20] + 128);
  swift_beginAccess();
  *(v46 + 8) = &protocol witness table for ObservableTransaction;
  swift_unknownObjectWeakAssign();
  v47 = v69;
  v48 = v64;
  (*(v26 + 16))(v69, &v45[qword_1002818C0]);
  v49 = v45;
  v50 = v47;
  v51 = sub_1001C5128();
  v52 = sub_1001C65B8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "CRDTModelSyncManager Init: About to load cloudData", v53, 2u);
  }

  (*(v26 + 8))(v50, v48);
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = swift_allocObject();
  v56 = v75;
  v57 = v76;
  v55[2] = v10;
  v55[3] = v57;
  v55[4] = v56;
  v55[5] = v54;

  sub_10018C4A0(sub_1000C5AF8, v55);

  swift_unknownObjectRelease();

  (*(v70 + 8))(v73, v74);
  (*(v72 + 8))(v71, v10);

  return v49;
}

void *sub_1000BDEDC(void *a1, uint64_t a2)
{
  v3 = sub_1001C5688();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C5648();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_1001C5638();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1;
    aBlock[4] = sub_1000C5B04;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000DD4AC;
    aBlock[3] = &unk_100244DE0;
    v14 = _Block_copy(aBlock);
    v15 = a1;
    v16 = v12;
    sub_1001C5668();
    sub_1001C6698();
    _Block_release(v14);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_1000BE138(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = swift_isaMask;
  v100 = swift_isaMask & *a1;
  v6 = sub_1001C5AC8();
  v95 = *(v6 - 1);
  v96 = v6;
  __chkstk_darwin(v6);
  v94 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((v5 & v4) + 0x50);
  v9 = sub_1001C67F8();
  v98 = *(v9 - 8);
  v99 = v9;
  __chkstk_darwin(v9);
  v11 = &v88 - v10;
  v12 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = (&v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v13);
  v18 = &v88 - v17;
  v19 = v8;
  v20 = *(v8 - 8);
  v21 = __chkstk_darwin(v16);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v93 = &v88 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v88 - v27;
  v29 = __chkstk_darwin(v26);
  v97 = &v88 - v30;
  __chkstk_darwin(v29);
  v103 = &v88 - v31;
  sub_1000BCC94(&v88 - v31);
  v32 = type metadata accessor for CRDTModelRevisionInfo(0);
  (*(*(v32 - 8) + 56))(v18, 1, 1, v32);
  if (!a2)
  {
    v46 = sub_1001C5128();
    v47 = sub_1001C65B8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "CRDTModelSyncManager Init: empty cloudData", v48, 2u);
    }

    v38 = v19;
    goto LABEL_12;
  }

  v101 = v20;
  v102 = a2;
  sub_1000BC0EC(v15);
  sub_10008875C(v18, &unk_10026F410, &unk_1001F0E40);
  sub_10009AE58(v15, v18, &unk_10026F410, &unk_1001F0E40);
  v33 = sub_1001C5128();
  v34 = sub_1001C65B8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "CRDTModelSyncManager Init: About to deserialize existing data", v35, 2u);
  }

  v36 = &v102[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
  v37 = *&v102[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8];
  v38 = v19;
  if (v37 >> 60 == 15)
  {
    v43 = sub_1001C5128();
    v44 = sub_1001C6598();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "CRDTModelSyncManager Init: couldn't deserialize existing data", v45, 2u);
    }

    v20 = v101;
    goto LABEL_12;
  }

  v91 = v23;
  v92 = v18;
  v39 = *v36;
  v40 = *(a1 + qword_10026FB18);
  sub_10009AD88(*v36, v37);
  sub_10009AD88(v39, v37);
  v41 = *(*(v100 + 88) + 8);
  v42 = v40;
  sub_1001C5C88();
  v98 = v39;
  v99 = v37;
  v51 = v101;
  (*(v101 + 56))(v11, 0, 1, v38);
  v52 = v97;
  (*(v51 + 32))(v97, v11, v38);
  sub_1000BCC94(v28);
  v90 = v41;
  v53 = sub_1001C5C38();
  v54 = *(v51 + 8);
  v54(v28, v38);
  v55 = *(v51 + 16);
  if ((v53 & 1) == 0)
  {
    v72 = v91;
    v55(v91, v52, v38);
    v73 = v52;
    v74 = sub_1001C5128();
    v75 = v38;
    v76 = sub_1001C65B8();
    v77 = os_log_type_enabled(v74, v76);
    v18 = v92;
    if (v77)
    {
      v78 = swift_slowAlloc();
      v95 = v54;
      v79 = v78;
      v96 = swift_slowAlloc();
      v104[0] = v96;
      *v79 = 136315138;
      v80 = sub_1001C6CC8();
      v82 = v81;
      v83 = v72;
      v84 = v95;
      v95(v83, v75);
      v85 = sub_1001874E8(v80, v82, v104);

      *(v79 + 4) = v85;
      _os_log_impl(&_mh_execute_header, v74, v76, "CRDTModelSyncManager Init: loaded stored model=%s, no delta", v79, 0xCu);
      sub_10008E7BC(v96);

      sub_1000887BC(v98, v99);
      v84(v97, v75);
    }

    else
    {

      sub_1000887BC(v98, v99);
      v54(v72, v75);
      v54(v73, v75);
    }

    v38 = v75;
    v20 = v101;
LABEL_12:
    v49 = v103;
    goto LABEL_13;
  }

  v56 = v93;
  v55(v93, v52, v38);
  v57 = v38;
  v58 = sub_1001C5128();
  v59 = sub_1001C65B8();
  v60 = os_log_type_enabled(v58, v59);
  v18 = v92;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v89 = v58;
    v62 = v61;
    v91 = swift_slowAlloc();
    v104[0] = v91;
    *v62 = 136315394;
    LODWORD(v100) = v59;
    v63 = sub_1001C6CC8();
    v65 = v64;
    v54(v56, v57);
    v66 = sub_1001874E8(v63, v65, v104);

    *(v62 + 4) = v66;
    *(v62 + 12) = 2080;
    v49 = v103;
    swift_beginAccess();
    v67 = v54;
    v68 = sub_1001C6CC8();
    v70 = sub_1001874E8(v68, v69, v104);

    *(v62 + 14) = v70;
    v52 = v97;
    v71 = v89;
    _os_log_impl(&_mh_execute_header, v89, v100, "CRDTModelSyncManager Init: loaded stored model=%s, merging into existing=%s", v62, 0x16u);
    swift_arrayDestroy();

    v38 = v57;
  }

  else
  {

    v54(v56, v57);
    v38 = v57;
    v49 = v103;
    v67 = v54;
  }

  v86 = v98;
  swift_beginAccess();
  v87 = v94;
  sub_1001C5AB8();
  swift_endAccess();

  sub_1000887BC(v86, v99);
  (*(v95 + 1))(v87, v96);
  v67(v52, v38);
  v20 = v101;
LABEL_13:
  sub_1000BEBDC(a1, v49, v18);
  sub_10008875C(v18, &unk_10026F410, &unk_1001F0E40);
  return (*(v20 + 8))(v49, v38);
}

uint64_t sub_1000BEBDC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v5[1] = *((swift_isaMask & *a1) + 0x50);
  v6 = *((swift_isaMask & v3) + 0x60);
  v7 = a2;
  v8 = a3;

  MutableObservableContainer.mutate(_:)(sub_1000C5A04, v5);
}

id CRDTModelSyncManager.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1001C5148();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v1 + qword_1002818C0, v3);
  v7 = sub_1001C5128();
  v8 = sub_1001C65B8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "CRDTModelSyncManager deinit", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t sub_1000BEE3C(uint64_t a1)
{
  v2 = qword_1002818C0;
  v3 = sub_1001C5148();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  return swift_unknownObjectRelease();
}

uint64_t CRDTModelSyncManager.sync(_:isRemote:)(uint64_t a1, char a2)
{
  v5 = sub_1001C5648();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001C5638();
  v11 = v2;
  v12 = a1;
  v13 = a2;
  sub_1001C6678();
  return (*(v6 + 8))(v8, v5);
}

void sub_1000BF080(_BYTE *a1, int a2)
{
  v3 = v2;
  v129 = a2;
  v150 = a1;
  v4 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  __chkstk_darwin(v4 - 8);
  v132 = &v120[-v5];
  v128 = type metadata accessor for CRDTModelRevisionInfo(0);
  v130 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v120[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  __chkstk_darwin(v7 - 8);
  v139 = &v120[-v8];
  v9 = sub_1001C5BD8();
  v136 = *(v9 - 8);
  v137 = v9;
  __chkstk_darwin(v9);
  v135 = &v120[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v12 = __chkstk_darwin(v11);
  v138 = &v120[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v120[-v14];
  v16 = type metadata accessor for ReadingHistoryModel(0);
  v17 = __chkstk_darwin(v16);
  v127 = &v120[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v131 = &v120[-v20];
  v21 = __chkstk_darwin(v19);
  v140 = &v120[-v22];
  v23 = __chkstk_darwin(v21);
  v25 = &v120[-v24];
  __chkstk_darwin(v23);
  v27 = &v120[-v26];
  v28 = [*&v2[qword_10026FB38] createTransactionWithName:"com.apple.ibooks.CRDTModelSyncManager.q_sync"];
  v143 = qword_10026FB20;

  v142 = v11;
  v29 = v141;
  sub_1001C6688();
  v133 = v29;

  sub_10009B074(v15, v27, type metadata accessor for ReadingHistoryModel);
  v30 = v150;
  sub_10008875C(v15, &unk_10026F420, &unk_1001F0E50);
  v31 = sub_1000C5A60(&qword_10026F460, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
  v141 = v16;
  v134 = v31;
  LOBYTE(v11) = sub_1001C5C38();
  sub_10009B0DC(v27, type metadata accessor for ReadingHistoryModel);
  if ((v11 & 1) == 0)
  {
    sub_100084528(&qword_10026FC50, &qword_1001F1A98);
    sub_1000885F4(&qword_10026FC58, &qword_10026FC50, &qword_1001F1A98, &protocol conformance descriptor for CRDTModelSyncManager<A>.SyncError);
    swift_allocError();
    *v49 = 0;
    swift_willThrow();

    return;
  }

  v124 = v28;
  v32 = qword_1002818C0;
  sub_10009B074(v30, v25, type metadata accessor for ReadingHistoryModel);
  v33 = v3;
  v125 = v32;
  v34 = sub_1001C5128();
  v35 = sub_1001C65B8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v123 = v33;
    v37 = v36;
    v122 = swift_slowAlloc();
    aBlock = v122;
    *v37 = 136315394;
    v121 = v35;
    v38 = ReadingHistoryModel.description.getter();
    v40 = v39;
    sub_10009B0DC(v25, type metadata accessor for ReadingHistoryModel);
    v41 = sub_1001874E8(v38, v40, &aBlock);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;

    v42 = v133;
    sub_1001C6688();
    v43 = v42;

    sub_10009B074(v15, v27, type metadata accessor for ReadingHistoryModel);
    sub_10008875C(v15, &unk_10026F420, &unk_1001F0E50);
    v44 = ReadingHistoryModel.description.getter();
    v46 = v45;
    sub_10009B0DC(v27, type metadata accessor for ReadingHistoryModel);
    v47 = sub_1001874E8(v44, v46, &aBlock);

    *(v37 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v34, v121, "CRDTModelSyncManager q_sync: incoming=%s and existing=%s", v37, 0x16u);
    swift_arrayDestroy();

    v33 = v123;

    v48 = v140;
  }

  else
  {

    sub_10009B0DC(v25, type metadata accessor for ReadingHistoryModel);
    v48 = v140;
    v43 = v133;
  }

  sub_1001C6688();
  v50 = v43;

  sub_10009B074(v15, v27, type metadata accessor for ReadingHistoryModel);
  sub_10008875C(v15, &unk_10026F420, &unk_1001F0E50);
  v51 = v3;
  sub_1001C5C78();
  sub_10009B0DC(v27, type metadata accessor for ReadingHistoryModel);
  v52 = v135;
  v53 = v136;
  v54 = v137;
  (*(v136 + 13))(v135, enum case for CRCodableVersion.version1(_:), v137);
  sub_1000C5A60(&unk_10026FC60, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
  v55 = sub_1001C5A98();
  if (!v50)
  {
    v66 = v56;
    v123 = v33;
    v67 = v52;
    v68 = v55;
    (*(v53 + 1))(v67, v54);
    v69 = v51;
    v141 = v68;
    sub_10009AD9C(v68, v66);

    v70 = v138;
    v71 = v142;
    sub_1001C6688();

    v72 = v130;
    v73 = *(v130 + 48);
    v74 = 1;
    v137 = *(v71 + 52);
    v75 = v128;
    if (!v73(&v70[v137], 1, v128))
    {
      v136 = type metadata accessor for CRDTModelRevisionInfo;
      v76 = v126;
      sub_10009B074(&v138[v137], v126, type metadata accessor for CRDTModelRevisionInfo);
      isa = sub_1001C4B98().super.isa;
      v78 = [(objc_class *)isa bu_sha256];

      v79 = sub_1001C6018();
      v81 = v80;

      aBlock = 0x2D363532616873;
      v145 = 0xE700000000000000;
      v151._countAndFlagsBits = v79;
      v151._object = v81;
      sub_1001C6138(v151);

      v82 = v145;
      v135 = aBlock;
      v84 = *(v76 + 2);
      v83 = *(v76 + 3);
      v85 = v69;
      v86 = v139;
      sub_10009ADF0(&v76[*(v75 + 24)], &v139[*(v75 + 24)], &unk_10026FC70, &unk_1001F1430);

      sub_10009B0DC(v76, v136);
      v74 = 0;
      *v86 = v135;
      v86[1] = v82;
      v86[2] = v84;
      v86[3] = v83;
      v71 = v142;
      v69 = v85;
      v72 = v130;
    }

    v87 = 1;
    (*(v72 + 56))(v139, v74, 1, v75);
    if (v129)
    {
      sub_10009B074(v150, v132, type metadata accessor for ReadingHistoryModel);
      v87 = 0;
    }

    v88 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
    v89 = v132;
    (*(*(v88 - 8) + 56))(v132, v87, 2, v88);
    v90 = v140;
    v91 = v138;
    sub_1000C5714(v140, v138);
    sub_1000C5778(v89, &v91[*(v71 + 48)], &unk_10026FC40, &qword_1001F0E90);
    v92 = sub_1000C5778(v139, &v91[v137], &unk_10026F410, &unk_1001F0E40);
    v150 = v120;
    v93 = *&v69[v143];
    __chkstk_darwin(v92);
    *&v120[-16] = v91;
    v94 = *(v93 + 16);
    v95 = swift_allocObject();
    v95[2] = sub_10009B018;
    v95[3] = &v120[-32];
    v95[4] = v93;
    v96 = swift_allocObject();
    *(v96 + 16) = sub_10009AD7C;
    *(v96 + 24) = v95;
    v148 = sub_1000B2E48;
    v149 = v96;
    aBlock = _NSConcreteStackBlock;
    v145 = 1107296256;
    v146 = sub_1000906F4;
    v147 = &unk_100244B38;
    v97 = _Block_copy(&aBlock);
    swift_retain_n();

    dispatch_sync(v94, v97);
    _Block_release(v97);
    LOBYTE(v94) = swift_isEscapingClosureAtFileLocation();

    if (v94)
    {
      __break(1u);
    }

    else
    {
      v98 = v127;
      sub_10009B074(v90, v127, type metadata accessor for ReadingHistoryModel);
      v99 = v141;
      sub_10009AD9C(v141, v66);
      sub_10009AD9C(v99, v66);
      v100 = sub_1001C5128();
      v101 = sub_1001C65B8();
      if (!os_log_type_enabled(v100, v101))
      {
        sub_1000887D0(v99, v66);
        sub_1000887D0(v99, v66);

        sub_10009B0DC(v98, type metadata accessor for ReadingHistoryModel);
        v113 = v124;
LABEL_29:
        v118 = swift_allocObject();
        *(v118 + 16) = v113;
        v119 = v113;
        sub_1000C1244(v99, v66, sub_1000C57F8, v118);

        sub_1000887D0(v99, v66);
        sub_1000887D0(v99, v66);
        sub_10008875C(v132, &unk_10026FC40, &qword_1001F0E90);
        sub_10008875C(v139, &unk_10026F410, &unk_1001F0E40);
        sub_10009B0DC(v90, type metadata accessor for ReadingHistoryModel);
        sub_10008875C(v138, &unk_10026F420, &unk_1001F0E50);
        return;
      }

      v102 = v98;
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      aBlock = v104;
      *v103 = 136315394;
      v105 = ReadingHistoryModel.description.getter();
      v107 = v106;
      sub_10009B0DC(v102, type metadata accessor for ReadingHistoryModel);
      v108 = sub_1001874E8(v105, v107, &aBlock);

      *(v103 + 4) = v108;
      *(v103 + 12) = 2048;
      v109 = v66 >> 62;
      if ((v66 >> 62) <= 1)
      {
        v90 = v140;
        if (!v109)
        {
          v110 = v141;
          sub_1000887D0(v141, v66);
          v111 = BYTE6(v66);
LABEL_28:
          *(v103 + 14) = v111;
          sub_1000887D0(v110, v66);
          _os_log_impl(&_mh_execute_header, v100, v101, "CRDTModelSyncManager q_sync: sending merged=%s as %ld bytes to BCCloudDataManager", v103, 0x16u);
          sub_10008E7BC(v104);

          v113 = v124;
          v99 = v110;
          goto LABEL_29;
        }

        v116 = v141;
        v117 = HIDWORD(v141);
        sub_1000887D0(v141, v66);
        LODWORD(v111) = v117 - v116;
        if (!__OFSUB__(v117, v116))
        {
          v111 = v111;
          goto LABEL_26;
        }

LABEL_33:
        __break(1u);
        return;
      }

      if (v109 != 2)
      {
        v110 = v141;
        sub_1000887D0(v141, v66);
        v111 = 0;
        v90 = v140;
        goto LABEL_28;
      }

      v115 = *(v141 + 16);
      v114 = *(v141 + 24);
      sub_1000887D0(v141, v66);
      v111 = v114 - v115;
      if (!__OFSUB__(v114, v115))
      {
        v90 = v140;
LABEL_26:
        v110 = v141;
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  (*(v53 + 1))(v52, v54);
  v57 = v131;
  sub_10009B074(v48, v131, type metadata accessor for ReadingHistoryModel);
  v58 = sub_1001C5128();
  v59 = sub_1001C6598();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    aBlock = v61;
    *v60 = 136315138;
    v62 = ReadingHistoryModel.description.getter();
    v64 = v63;
    sub_10009B0DC(v57, type metadata accessor for ReadingHistoryModel);
    v65 = sub_1001874E8(v62, v64, &aBlock);

    *(v60 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v58, v59, "CRDTModelSyncManager q_sync: couldn't serialize model to sync: %s", v60, 0xCu);
    sub_10008E7BC(v61);
  }

  else
  {

    sub_10009B0DC(v57, type metadata accessor for ReadingHistoryModel);
  }

  sub_100084528(&qword_10026FC50, &qword_1001F1A98);
  sub_1000885F4(&qword_10026FC58, &qword_10026FC50, &qword_1001F1A98, &protocol conformance descriptor for CRDTModelSyncManager<A>.SyncError);
  swift_allocError();
  *v112 = 1;
  swift_willThrow();

  sub_10009B0DC(v48, type metadata accessor for ReadingHistoryModel);
}

void sub_1000C025C(uint64_t a1, int a2)
{
  v3 = v2;
  v144 = a2;
  v5 = *((swift_isaMask & *v2) + 0x50);
  v6 = *((swift_isaMask & *v2) + 0x58);
  v7 = *((swift_isaMask & *v2) + 0x60);
  v8 = type metadata accessor for ModelState.Source(0, v5, v6, v7);
  v141 = *(v8 - 8);
  v142 = v8;
  __chkstk_darwin(v8);
  v147 = &v126[-v9];
  v145 = type metadata accessor for CRDTModelRevisionInfo(0);
  v154 = *(v145 - 8);
  __chkstk_darwin(v145);
  v136 = &v126[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  __chkstk_darwin(v11 - 8);
  v156 = &v126[-v12];
  v158 = v7;
  v153 = type metadata accessor for ModelState(0, v5, v6, v7);
  v140 = *(v153 - 8);
  __chkstk_darwin(v153);
  v155 = &v126[-v13];
  v14 = sub_1001C5BD8();
  v150 = *(v14 - 8);
  v151 = v14;
  v15 = __chkstk_darwin(v14);
  v149 = &v126[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(v5 - 8);
  v18 = __chkstk_darwin(v15);
  v146 = &v126[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v143 = &v126[-v21];
  v22 = __chkstk_darwin(v20);
  v157 = &v126[-v23];
  v24 = __chkstk_darwin(v22);
  v26 = &v126[-v25];
  __chkstk_darwin(v24);
  v28 = &v126[-v27];
  v29 = [*&v3[qword_10026FB38] createTransactionWithName:"com.apple.ibooks.CRDTModelSyncManager.q_sync"];
  sub_1000BCC94(v28);
  v148 = *(v6 + 8);
  LOBYTE(v7) = sub_1001C5C38();
  v159 = *(v17 + 8);
  v162 = v17 + 8;
  v159(v28, v5);
  if ((v7 & 1) == 0)
  {
    type metadata accessor for CRDTModelSyncManager.SyncError(0, v5, v6, v158);
    swift_getWitnessTable();
    swift_allocError();
    *v50 = 0;
    swift_willThrow();

    return;
  }

  v135 = v6;
  v30 = qword_1002818C0;
  v130 = v17;
  v31 = *(v17 + 16);
  v138 = a1;
  v132 = v17 + 16;
  v137 = v31;
  v31(v26, a1, v5);
  v32 = v3;
  v133 = v30;
  v33 = sub_1001C5128();
  v34 = sub_1001C65B8();

  v35 = os_log_type_enabled(v33, v34);
  v131 = v29;
  v134 = v3;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v160 = v129;
    *v36 = 136315394;
    v128 = v33;
    v127 = v34;
    v37 = sub_1001C6CC8();
    v39 = v38;
    v40 = v26;
    v41 = v159;
    v159(v40, v5);
    v42 = sub_1001874E8(v37, v39, &v160);
    v43 = v157;
    v44 = v41;

    *(v36 + 4) = v42;
    *(v36 + 12) = 2080;
    sub_1000BCC94(v28);
    v45 = sub_1001C6CC8();
    v47 = v46;
    v44(v28, v5);
    v48 = sub_1001874E8(v45, v47, &v160);

    *(v36 + 14) = v48;
    v49 = v128;
    _os_log_impl(&_mh_execute_header, v128, v127, "CRDTModelSyncManager q_sync: incoming=%s and existing=%s", v36, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v159(v26, v5);
    v43 = v157;
  }

  v52 = v149;
  v51 = v150;
  sub_1000BCC94(v28);
  sub_1001C5C78();
  v159(v28, v5);
  v53 = v51;
  v54 = *(v51 + 104);
  v55 = v151;
  v54(v52, enum case for CRCodableVersion.version1(_:), v151);
  v56 = v43;
  v57 = v152;
  v58 = sub_1001C5A98();
  v60 = v154;
  if (!v57)
  {
    v74 = v59;
    v75 = v55;
    v76 = v58;
    (*(v53 + 8))(v52, v75);
    v150 = qword_10026FB20;
    v151 = v32;
    v152 = v76;
    sub_10009AD9C(v76, v74);

    v77 = v155;
    MutableObservableContainer.value.getter();

    v78 = *(v153 + 52);
    v79 = 1;
    v80 = &v77[v78];
    v81 = v145;
    if (!(*(v60 + 48))(v80, 1, v145))
    {
      v149 = type metadata accessor for CRDTModelRevisionInfo;
      v82 = v136;
      sub_10009B074(&v155[v78], v136, type metadata accessor for CRDTModelRevisionInfo);
      isa = sub_1001C4B98().super.isa;
      v84 = [(objc_class *)isa bu_sha256];

      v85 = sub_1001C6018();
      v87 = v86;

      v160 = 0x2D363532616873;
      v161 = 0xE700000000000000;
      v163._countAndFlagsBits = v85;
      v163._object = v87;
      sub_1001C6138(v163);

      v88 = v160;
      v89 = v161;
      v90 = *(v82 + 3);
      v148 = *(v82 + 2);
      v91 = *(v81 + 24);
      v92 = v156;
      sub_10009ADF0(&v82[v91], v156 + v91, &unk_10026FC70, &unk_1001F1430);

      sub_10009B0DC(v82, v149);
      v79 = 0;
      *v92 = v88;
      v92[1] = v89;
      v56 = v157;
      v92[2] = v148;
      v92[3] = v90;
      v60 = v154;
      v81 = v145;
    }

    v154 = v74;
    v93 = *(v60 + 56);
    v94 = 1;
    v93(v156, v79, 1, v81);
    if (v144)
    {
      v137(v147, v138, v5);
      v94 = 0;
    }

    v95 = v147;
    (*(v130 + 56))(v147, v94, 2, v5);
    v96 = v95;
    v97 = v155;
    v98 = ModelState.updating(model:source:revisionInfo:)(v56, v96, v156, v153);
    __chkstk_darwin(v98);
    v99 = v135;
    *&v126[-32] = v5;
    *&v126[-24] = v99;
    *&v126[-16] = v158;
    *&v126[-8] = v97;

    MutableObservableContainer.mutate(_:)(sub_1000C5B7C, &v126[-48]);

    v100 = v143;
    v139 = v5;
    v137(v143, v56, v5);
    v101 = v152;
    v102 = v154;
    sub_10009AD9C(v152, v154);
    sub_10009AD9C(v101, v102);
    v103 = sub_1001C5128();
    v104 = sub_1001C65B8();
    if (!os_log_type_enabled(v103, v104))
    {
      sub_1000887D0(v101, v102);
      sub_1000887D0(v101, v102);

      v117 = v100;
      v118 = v159;
      v159(v117, v139);
      v113 = v56;
LABEL_28:
      v123 = swift_allocObject();
      v124 = v131;
      *(v123 + 16) = v131;
      v125 = v124;
      sub_10018C6D4(v101, v102, sub_1000C5B80, v123);

      sub_1000887D0(v101, v102);
      sub_1000887D0(v101, v102);
      (*(v141 + 8))(v147, v142);
      sub_10008875C(v156, &unk_10026F410, &unk_1001F0E40);
      v118(v113, v139);
      (*(v140 + 8))(v155, v153);
      return;
    }

    LODWORD(v150) = v104;
    v105 = swift_slowAlloc();
    v106 = v100;
    v149 = swift_slowAlloc();
    v160 = v149;
    *v105 = 136315394;
    v107 = v139;
    v108 = sub_1001C6CC8();
    v110 = v109;
    v159(v106, v107);
    v111 = sub_1001874E8(v108, v110, &v160);

    *(v105 + 4) = v111;
    *(v105 + 12) = 2048;
    v112 = v102 >> 62;
    if ((v102 >> 62) > 1)
    {
      if (v112 != 2)
      {
        v101 = v152;
        sub_1000887D0(v152, v102);
        v114 = 0;
        v113 = v157;
        goto LABEL_27;
      }

      v120 = *(v152 + 16);
      v119 = *(v152 + 24);
      sub_1000887D0(v152, v102);
      v114 = v119 - v120;
      if (!__OFSUB__(v119, v120))
      {
        v113 = v157;
LABEL_25:
        v101 = v152;
        v102 = v154;
        goto LABEL_27;
      }

      __break(1u);
    }

    else
    {
      v113 = v157;
      if (!v112)
      {
        v101 = v152;
        v102 = v154;
        sub_1000887D0(v152, v154);
        v114 = BYTE6(v102);
LABEL_27:
        *(v105 + 14) = v114;
        sub_1000887D0(v101, v102);
        _os_log_impl(&_mh_execute_header, v103, v150, "CRDTModelSyncManager q_sync: sending merged=%s as %ld bytes to BCCloudDataManager", v105, 0x16u);
        sub_10008E7BC(v149);

        v118 = v159;
        goto LABEL_28;
      }

      v121 = v152;
      v122 = HIDWORD(v152);
      sub_1000887D0(v152, v154);
      LODWORD(v114) = v122 - v121;
      if (!__OFSUB__(v122, v121))
      {
        v114 = v114;
        goto LABEL_25;
      }
    }

    __break(1u);
    return;
  }

  (*(v53 + 8))(v52, v55);
  v61 = v146;
  v137(v146, v43, v5);
  v62 = sub_1001C5128();
  v63 = sub_1001C6598();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v139 = v5;
    v66 = v65;
    v160 = v65;
    *v64 = 136315138;
    v67 = v158;
    v68 = sub_1001C6CC8();
    v70 = v69;
    v71 = v61;
    v72 = v159;
    v159(v71, v139);
    v73 = sub_1001874E8(v68, v70, &v160);

    *(v64 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v62, v63, "CRDTModelSyncManager q_sync: couldn't serialize model to sync: %s", v64, 0xCu);
    sub_10008E7BC(v66);
    v5 = v139;
  }

  else
  {

    v115 = v61;
    v72 = v159;
    v159(v115, v5);
    v67 = v158;
  }

  type metadata accessor for CRDTModelSyncManager.SyncError(0, v5, v135, v67);
  swift_getWitnessTable();
  swift_allocError();
  *v116 = 1;
  swift_willThrow();

  v72(v157, v5);
}

void sub_1000C1244(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = [*&v5[qword_100273F70] createTransactionWithName:"com.apple.ibooks.CRDTModelSyncManager.setCloudData"];
  v22[0] = type metadata accessor for ReadingHistoryModel(0);
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v11 = sub_1001C6078();
  v13 = v12;
  objc_allocWithZone(type metadata accessor for CRDTModelSync());
  sub_10009AD9C(a1, a2);
  v14 = sub_100143EF4(v11, v13, a1, a2);
  v15 = *&v5[qword_100273F40];
  v16 = v14;
  sub_1000C2638();
  sub_100084528(&qword_10026FC80, &qword_1001F5970);
  isa = sub_1001C5EF8().super.isa;

  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = v10;
  v22[4] = sub_1000C5808;
  v22[5] = v18;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_1000C4794;
  v22[3] = &unk_100244BB0;
  v19 = _Block_copy(v22);
  v20 = v5;

  v21 = v10;

  [v15 setCloudData:v16 predicate:0 mergers:isa completion:v19];
  _Block_release(v19);
}

uint64_t sub_1000C1508(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x50);
  v4 = *((swift_isaMask & *v1) + 0x60);
  v20 = *((swift_isaMask & *v1) + 0x58);
  v21 = v3;
  v19 = v4;
  v5 = type metadata accessor for ModelState(0, v3, v20, v4);
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for CRDTModelRevisionInfo(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009ADF0(a1, v10, &unk_10026F410, &unk_1001F0E40);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10008875C(v10, &unk_10026F410, &unk_1001F0E40);
  }

  sub_1000BBF38(v10, v14, type metadata accessor for CRDTModelRevisionInfo);

  MutableObservableContainer.value.getter();

  v16 = *(v5 + 52);
  sub_10008875C(&v7[v16], &unk_10026F410, &unk_1001F0E40);
  sub_10009B074(v14, &v7[v16], type metadata accessor for CRDTModelRevisionInfo);
  v17 = (*(v12 + 56))(&v7[v16], 0, 1, v11);
  __chkstk_darwin(v17);
  v18 = v20;
  *(&v19 - 4) = v21;
  *(&v19 - 3) = v18;
  *(&v19 - 2) = v19;
  *(&v19 - 1) = v7;

  MutableObservableContainer.mutate(_:)(sub_1000C5B7C, (&v19 - 6));

  sub_10009B0DC(v14, type metadata accessor for CRDTModelRevisionInfo);
  return (*(v22 + 8))(v7, v5);
}

uint64_t sub_1000C1868(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v114 = a3;
  v5 = *a2;
  v6 = swift_isaMask;
  v7 = sub_1001C5AC8();
  v108 = *(v7 - 8);
  v109 = v7;
  __chkstk_darwin(v7);
  v107 = &v92[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *((v6 & v5) + 0x50);
  v10 = *((v6 & v5) + 0x58);
  v116 = *((v6 & v5) + 0x60);
  v113 = type metadata accessor for ModelState(0, v9, v10, v116);
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = &v92[-v11];
  v110 = v10;
  v12 = *(v10 + 8);
  v103 = *(v12 + 16);
  swift_getAssociatedTypeWitness();
  v102 = sub_1001C67F8();
  v13 = __chkstk_darwin(v102);
  v101 = &v92[-v14];
  v15 = *(v9 - 8);
  v16 = __chkstk_darwin(v13);
  v18 = &v92[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16);
  v21 = &v92[-v20];
  v22 = __chkstk_darwin(v19);
  v24 = &v92[-v23];
  __chkstk_darwin(v22);
  v26 = &v92[-v25];
  sub_1000BCC94(&v92[-v25]);
  v105 = v12;
  LOBYTE(v5) = sub_1001C5C38();
  v27 = *(v15 + 8);
  v115 = v15 + 8;
  v117 = v27;
  v27(v26, v9);
  v28 = qword_1002818C0;
  v106 = v15;
  v31 = *(v15 + 16);
  v30 = v15 + 16;
  v29 = v31;
  if (v5)
  {
    v32 = v29;
    v29(v24, a1, v9);
    v99 = v32;
    v32(v21, a1, v9);
    v33 = a2;
    v100 = v28;
    v34 = sub_1001C5128();
    v35 = sub_1001C65B8();
    v104 = v33;

    v36 = os_log_type_enabled(v34, v35);
    v37 = a1;
    v97 = v26;
    v98 = v30;
    if (v36)
    {
      v38 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v118[0] = v95;
      *v38 = 136315650;
      v94 = v34;
      v93 = v35;
      v39 = sub_1001C6CC8();
      v96 = v37;
      v41 = v40;
      v117(v24, v9);
      v42 = sub_1001874E8(v39, v41, v118);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      sub_1000BCC94(v26);
      v43 = sub_1001C6CC8();
      v45 = v44;
      v46 = v117;
      v117(v26, v9);
      v47 = sub_1001874E8(v43, v45, v118);

      *(v38 + 14) = v47;
      *(v38 + 22) = 2080;
      v48 = v96;
      sub_1000BCC94(v26);
      sub_1001C5CB8();
      v49 = v26;
      v50 = v46;
      v37 = v48;
      v50(v49, v9);
      v51 = sub_1001C6098();
      v53 = v52;
      v50(v21, v9);
      v54 = sub_1001874E8(v51, v53, v118);

      *(v38 + 24) = v54;
      v55 = v94;
      _os_log_impl(&_mh_execute_header, v94, v93, "CRDTModelSyncManager resolveConflictsFor: merging resolved model: incoming=%s vs existing=%s with delta=%s", v38, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v70 = v117;
      v117(v21, v9);
      v70(v24, v9);
    }

    v71 = v104;

    v72 = v112;
    MutableObservableContainer.value.getter();

    v73 = v107;
    sub_1001C5AB8();
    (*(v108 + 8))(v73, v109);
    v74 = v113;
    v75 = *(v113 + 48);
    v76 = v37;
    v77 = v110;
    v78 = v116;
    v79 = type metadata accessor for ModelState.Source(0, v9, v110, v116);
    (*(*(v79 - 8) + 8))(&v72[v75], v79);
    v99(&v72[v75], v76, v9);
    (*(v106 + 56))(&v72[v75], 0, 2, v9);
    v80 = sub_1000C5778(v114, &v72[*(v74 + 52)], &unk_10026F410, &unk_1001F0E40);
    __chkstk_darwin(v80);
    *&v92[-32] = v9;
    *&v92[-24] = v77;
    *&v92[-16] = v78;
    *&v92[-8] = v72;

    MutableObservableContainer.mutate(_:)(sub_1000C594C, &v92[-48]);

    v81 = v71;
    v82 = sub_1001C5128();
    v83 = sub_1001C65B8();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v118[0] = v85;
      *v84 = 136315138;
      v86 = v97;
      sub_1000BCC94(v97);
      v87 = sub_1001C6CC8();
      v89 = v88;
      v117(v86, v9);
      v90 = sub_1001874E8(v87, v89, v118);

      *(v84 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v82, v83, "CRDTModelSyncManager resolveConflictsFor: resolved model=%s", v84, 0xCu);
      sub_10008E7BC(v85);
    }

    return (*(v111 + 8))(v112, v113);
  }

  else
  {
    v29(v18, a1, v9);
    v56 = a2;
    v57 = sub_1001C5128();
    v58 = sub_1001C65B8();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v113 = v56;
      v60 = v59;
      v112 = swift_slowAlloc();
      v118[0] = v112;
      *v60 = 136315394;
      v61 = sub_1001C6CC8();
      v63 = v62;
      v64 = v117;
      v117(v18, v9);
      v65 = sub_1001874E8(v61, v63, v118);

      *(v60 + 4) = v65;
      *(v60 + 12) = 2080;
      sub_1000BCC94(v26);
      v66 = sub_1001C6CC8();
      v68 = v67;
      v64(v26, v9);
      v69 = sub_1001874E8(v66, v68, v118);

      *(v60 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v57, v58, "CRDTModelSyncManager resolveConflictsFor: incoming=%s has no delta from existing=%s", v60, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v117(v18, v9);
    }

    return sub_1000C1508(v114);
  }
}

uint64_t sub_1000C2364()
{
  v1 = *v0;
  v2 = direct field offset for CRDTModelSyncManager.enableCloudSync;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t (*sub_1000C23D0(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1000BD32C(v2);
  return sub_1000C2444;
}

void sub_1000C2444(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1000C248C()
{
  sub_100084528(&unk_10026F450, &qword_1001F76A0);
  sub_1001C6688();
  return v1;
}

uint64_t sub_1000C250C(uint64_t a1)
{
  v3 = sub_1001C5648();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v1;
  sub_1001C5638();
  v10 = v7;
  v11 = a1;
  v12 = 0;
  sub_1001C6678();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1000C2638()
{
  v1 = qword_100273F68;
  if (*(v0 + qword_100273F68))
  {
    v2 = *(v0 + qword_100273F68);
  }

  else
  {
    v2 = sub_1000C26A0(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

unint64_t sub_1000C26A0(uint64_t a1)
{
  type metadata accessor for ReadingHistoryModel(0);
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v1 = sub_1001C6078();
  v3 = v2;
  sub_1001C61E8();
  v4 = sub_1001C6088();
  v6 = v5;

  v7 = sub_10014074C(15, v4, v6, v1, v3);
  v9 = v8;

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v7;
  v11[4] = v9;
  v20 = sub_1000C5814;
  v21 = v11;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10018F040;
  v19 = &unk_100244C28;
  v12 = _Block_copy(&aBlock);

  sub_100084528(&qword_10026FC90, &unk_1001F81C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0670;
  aBlock = v7;
  v17 = v9;
  sub_1001C6968();
  *(inited + 72) = v12;
  v14 = sub_100118BA8(inited);
  swift_setDeallocating();
  sub_10008875C(inited + 32, &qword_10026FC98, &unk_1001F1AB0);
  return v14;
}

void sub_1000C28A4(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a5@<X4>, unint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v218 = a5;
  v217 = a3;
  v216 = a2;
  v10 = sub_1001C5148();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v193 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_1001C5BD8();
  v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v204 = v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for ReadingHistoryModel(0);
  v211 = *(v213 - 8);
  v15 = __chkstk_darwin(v213);
  v201 = v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v207 = v193 - v18;
  v19 = __chkstk_darwin(v17);
  v200 = v193 - v20;
  v21 = __chkstk_darwin(v19);
  v199 = v193 - v22;
  v23 = __chkstk_darwin(v21);
  v210 = v193 - v24;
  v25 = __chkstk_darwin(v23);
  v198 = v193 - v26;
  v27 = __chkstk_darwin(v25);
  v197 = v193 - v28;
  v29 = __chkstk_darwin(v27);
  v203 = v193 - v30;
  v31 = __chkstk_darwin(v29);
  v202 = v193 - v32;
  v33 = __chkstk_darwin(v31);
  v208 = v193 - v34;
  __chkstk_darwin(v33);
  v209 = v193 - v35;
  v36 = sub_100084528(&qword_10026FCA0, &unk_1001F0E70);
  v37 = __chkstk_darwin(v36 - 8);
  v39 = v193 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v37);
  v42 = v193 - v41;
  v43 = __chkstk_darwin(v40);
  v214 = v193 - v44;
  __chkstk_darwin(v43);
  v212 = v193 - v45;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v47 = Strong;
  sub_10008EBD0(a1, v223);
  if (!swift_dynamicCast())
  {

LABEL_7:
    swift_beginAccess();
    v48 = swift_unknownObjectWeakLoadStrong();
    if (v48)
    {
      v49 = v48;
      (*(v11 + 16))(v13, v48 + qword_1002819F8, v10);

      sub_10008EBD0(a1, v223);

      v50 = v10;
      v51 = v11;
      v52 = a6;

      v53 = sub_1001C5128();
      v54 = sub_1001C65B8();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v215 = a7;
        v56 = v55;
        v57 = swift_slowAlloc();
        v217 = v50;
        v220 = v57;
        *v56 = 136315650;
        swift_beginAccess();
        v226[0] = swift_unknownObjectWeakLoadStrong();
        sub_100084528(&qword_10026FCA8, &unk_1001F1AC0);
        v58 = sub_1001C6078();
        v60 = sub_1001874E8(v58, v59, &v220);

        *(v56 + 4) = v60;
        *(v56 + 12) = 2080;
        sub_10008EBD0(v223, v226);
        v61 = sub_1001C6078();
        v63 = v62;
        sub_10008E7BC(v223);
        v64 = sub_1001874E8(v61, v63, &v220);

        *(v56 + 14) = v64;
        *(v56 + 22) = 2080;
        *(v56 + 24) = sub_1001874E8(v218, v52, &v220);
        _os_log_impl(&_mh_execute_header, v53, v54, "CloudSyncConflictResolver: self=%s key=%s is not equal to recordType=%s", v56, 0x20u);
        swift_arrayDestroy();

        a7 = v215;

        (*(v51 + 8))(v13, v217);
      }

      else
      {

        sub_10008E7BC(v223);
        (*(v51 + 8))(v13, v50);
      }
    }

    *a7 = 0u;
    a7[1] = 0u;
    return;
  }

  v196 = v47;
  v215 = a7;
  if (v226[0] == v218 && v226[1] == a6)
  {

    goto LABEL_13;
  }

  v65 = sub_1001C6D08();

  if ((v65 & 1) == 0)
  {

    a7 = v215;
    goto LABEL_7;
  }

LABEL_13:
  sub_10009ADF0(v216, v223, &qword_10026FCB0, &unk_1001F14E0);
  sub_10009ADF0(v217, v224, &qword_10026FCB0, &unk_1001F14E0);
  v66 = v215;
  if (!v223[3])
  {
    if (!v225)
    {
LABEL_32:
      sub_10008875C(v223, &qword_10026FCB8, &qword_1001F1AD0);
      goto LABEL_33;
    }

    sub_10009ADF0(v224, v226, &qword_10026FCB0, &unk_1001F14E0);
    if (swift_dynamicCast())
    {
      v73 = v222[0];
      v74 = v222[1];
      v75 = sub_1001C5128();
      v76 = sub_1001C65B8();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "CloudSyncConflictResolver: no existing data", v77, 2u);
      }

      sub_10008E7BC(v226);
      sub_10008875C(v224, &qword_10026FCB0, &unk_1001F14E0);
      sub_10008875C(v223, &qword_10026FCB0, &unk_1001F14E0);
      v78 = v215;
      *(v215 + 3) = &type metadata for Data;

      *v78 = v73;
      v78[1] = v74;
      return;
    }

LABEL_31:
    sub_10008E7BC(v226);
    goto LABEL_32;
  }

  sub_10009ADF0(v223, v226, &qword_10026FCB0, &unk_1001F14E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  v67 = v226[4];
  v68 = v226[5];
  if (v225)
  {
    sub_10009ADF0(v224, v222, &qword_10026FCB0, &unk_1001F14E0);
    if (swift_dynamicCast())
    {
      v69 = v221;
      v218 = v220;
      if (sub_100144DE4(v67, v68, v220, v221))
      {
        v70 = sub_1001C5128();
        v71 = sub_1001C65B8();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&_mh_execute_header, v70, v71, "CloudSyncConflictResolver: incoming data and existing data are identical", v72, 2u);
        }

        *(v66 + 3) = &type metadata for Data;
        sub_1000887D0(v218, v69);

        *v66 = v67;
        *(v66 + 1) = v68;
        sub_10008E7BC(v222);
        sub_10008E7BC(v226);
        goto LABEL_58;
      }

      v217 = v69;
      v82 = qword_100273F60;
      v83 = *&v196[qword_100273F60];
      sub_10009AD9C(v67, v68);
      v84 = sub_1000C5A60(&qword_10026F460, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
      v85 = v212;
      v195 = v84;
      sub_1001C5C88();
      v216 = v67;
      v86 = *(v211 + 56);
      v87 = v213;
      v86(v85, 0, 1, v213);
      v193[1] = v82;
      v88 = *&v196[v82];
      sub_10009AD9C(v218, v217);
      v89 = v87;
      sub_1001C5C88();
      v194 = v68;
      v90 = v210;
      v91 = v214;
      v86(v214, 0, 1, v89);
      v92 = v212;
      sub_10009ADF0(v212, v42, &qword_10026FCA0, &unk_1001F0E70);
      v93 = *(v211 + 48);
      if (v93(v42, 1, v89) == 1)
      {
        sub_10008875C(v42, &qword_10026FCA0, &unk_1001F0E70);
        v94 = v216;
        v95 = v194;
        sub_10009AD9C(v216, v194);
        v96 = v196;
        v97 = sub_1001C5128();
        v98 = sub_1001C65B8();
        sub_1000887D0(v94, v95);
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v219[0] = v100;
          *v99 = 136315138;
          sub_10009AD9C(v94, v95);
          v101 = sub_1001C4B58();
          v103 = v102;
          sub_1000887D0(v216, v95);
          v104 = sub_1001874E8(v101, v103, v219);
          v94 = v216;

          *(v99 + 4) = v104;
          v96 = v196;
          _os_log_impl(&_mh_execute_header, v97, v98, "CloudSyncConflictResolver: failed to deserialize either existingModel from %s", v99, 0xCu);
          sub_10008E7BC(v100);
        }

        v105 = v215;
        v106 = v214;
        v107 = v218;
        *(v215 + 3) = &type metadata for Data;

        sub_1000887D0(v107, v217);
        *v105 = v94;
        v105[1] = v95;
        sub_10008875C(v106, &qword_10026FCA0, &unk_1001F0E70);
        sub_10008875C(v92, &qword_10026FCA0, &unk_1001F0E70);
        sub_10008E7BC(v222);
        sub_10008E7BC(v226);
        goto LABEL_58;
      }

      v108 = v42;
      v109 = v209;
      sub_1000BBF38(v108, v209, type metadata accessor for ReadingHistoryModel);
      sub_10009ADF0(v91, v39, &qword_10026FCA0, &unk_1001F0E70);
      v110 = v93(v39, 1, v89);
      v111 = v196;
      v112 = v216;
      if (v110 == 1)
      {
        sub_10008875C(v39, &qword_10026FCA0, &unk_1001F0E70);
        v113 = v218;
        v114 = v217;
        sub_10009AD9C(v218, v217);
        v115 = sub_1001C5128();
        v116 = sub_1001C65B8();
        sub_1000887D0(v113, v114);
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v219[0] = v118;
          *v117 = 136315138;
          sub_10009AD9C(v218, v217);
          v119 = sub_1001C4B58();
          v121 = v120;
          sub_1000887D0(v218, v217);
          v122 = sub_1001874E8(v119, v121, v219);
          v112 = v216;

          *(v117 + 4) = v122;
          v111 = v196;
          _os_log_impl(&_mh_execute_header, v115, v116, "CloudSyncConflictResolver: failed to deserialize either incomingModel from %s", v117, 0xCu);
          sub_10008E7BC(v118);
          v113 = v218;

          v114 = v217;
        }

        v123 = v215;
        *(v215 + 3) = &type metadata for Data;

        sub_1000887D0(v113, v114);
        v124 = v194;
        *v123 = v112;
        v123[1] = v124;
        v125 = v109;
        goto LABEL_57;
      }

      v126 = v39;
      v127 = v208;
      sub_1000BBF38(v126, v208, type metadata accessor for ReadingHistoryModel);
      if (sub_1001C5C38())
      {
        if (sub_1001C5C38())
        {
          v128 = v197;
          sub_10009B074(v109, v197, type metadata accessor for ReadingHistoryModel);
          v129 = v198;
          sub_10009B074(v127, v198, type metadata accessor for ReadingHistoryModel);
          v130 = sub_1001C5128();
          v131 = sub_1001C65B8();
          if (os_log_type_enabled(v130, v131))
          {
            v132 = swift_slowAlloc();
            v219[0] = swift_slowAlloc();
            *v132 = 136315394;
            v133 = v200;
            sub_10009B074(v128, v200, type metadata accessor for ReadingHistoryModel);
            sub_10009B0DC(v128, type metadata accessor for ReadingHistoryModel);
            LODWORD(v211) = v131;
            v134 = ReadingHistoryModel.description.getter();
            v136 = v135;
            sub_10009B0DC(v133, type metadata accessor for ReadingHistoryModel);
            v137 = sub_1001874E8(v134, v136, v219);

            *(v132 + 4) = v137;
            *(v132 + 12) = 2080;
            sub_10009B074(v129, v133, type metadata accessor for ReadingHistoryModel);
            sub_10009B0DC(v129, type metadata accessor for ReadingHistoryModel);
            v138 = ReadingHistoryModel.description.getter();
            v140 = v139;
            sub_10009B0DC(v133, type metadata accessor for ReadingHistoryModel);
            v141 = sub_1001874E8(v138, v140, v219);

            *(v132 + 14) = v141;
            _os_log_impl(&_mh_execute_header, v130, v211, "CloudSyncConflictResolver: merging existing=%s with incoming=%s", v132, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
            sub_10009B0DC(v129, type metadata accessor for ReadingHistoryModel);
            sub_10009B0DC(v128, type metadata accessor for ReadingHistoryModel);
          }

          v174 = v201;
          v175 = v207;
          sub_1001C5C78();
          sub_10009B074(v175, v174, type metadata accessor for ReadingHistoryModel);
          v176 = sub_1001C5128();
          v177 = sub_1001C65B8();
          if (os_log_type_enabled(v176, v177))
          {
            v178 = swift_slowAlloc();
            v179 = swift_slowAlloc();
            v219[0] = v179;
            *v178 = 136315138;
            v180 = v200;
            sub_10009B074(v174, v200, type metadata accessor for ReadingHistoryModel);
            sub_10009B0DC(v174, type metadata accessor for ReadingHistoryModel);
            v181 = ReadingHistoryModel.description.getter();
            v183 = v182;
            sub_10009B0DC(v180, type metadata accessor for ReadingHistoryModel);
            v184 = sub_1001874E8(v181, v183, v219);

            *(v178 + 4) = v184;
            _os_log_impl(&_mh_execute_header, v176, v177, "CloudSyncConflictResolver: merged=%s", v178, 0xCu);
            sub_10008E7BC(v179);
          }

          else
          {
            sub_10009B0DC(v174, type metadata accessor for ReadingHistoryModel);
          }

          v187 = v212;
          v188 = v214;
          v189 = v218;
          (*(v205 + 104))(v204, enum case for CRCodableVersion.version1(_:), v206);
          sub_1000C5A60(&unk_10026FC60, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
          v190 = sub_1001C5A98();
          v192 = v191;
          v66 = v215;
          sub_1000887D0(v189, v217);
          sub_1000887D0(v216, v194);
          (*(v205 + 8))(v204, v206);
          sub_10009B0DC(v207, type metadata accessor for ReadingHistoryModel);
          sub_10009B0DC(v208, type metadata accessor for ReadingHistoryModel);
          sub_10009B0DC(v209, type metadata accessor for ReadingHistoryModel);
          sub_10008875C(v188, &qword_10026FCA0, &unk_1001F0E70);
          sub_10008875C(v187, &qword_10026FCA0, &unk_1001F0E70);
          sub_10008E7BC(v222);
          sub_10008E7BC(v226);
          sub_10008875C(v224, &qword_10026FCB0, &unk_1001F14E0);
          sub_10008875C(v223, &qword_10026FCB0, &unk_1001F14E0);
          if (v192 >> 60 != 15)
          {
            *(v66 + 3) = &type metadata for Data;

            *v66 = v190;
            *(v66 + 1) = v192;
            return;
          }

LABEL_33:

          *v66 = 0u;
          v66[1] = 0u;
          return;
        }

        sub_10009B074(v109, v90, type metadata accessor for ReadingHistoryModel);
        v156 = v199;
        sub_10009B074(v127, v199, type metadata accessor for ReadingHistoryModel);
        v157 = sub_1001C5128();
        v158 = sub_1001C65B8();
        if (os_log_type_enabled(v157, v158))
        {
          v159 = v90;
          v160 = v156;
          v161 = swift_slowAlloc();
          v219[0] = swift_slowAlloc();
          *v161 = 136315394;
          v162 = ReadingHistoryModel.description.getter();
          v164 = v163;
          sub_10009B0DC(v159, type metadata accessor for ReadingHistoryModel);
          v165 = sub_1001874E8(v162, v164, v219);

          *(v161 + 4) = v165;
          *(v161 + 12) = 2080;
          v166 = ReadingHistoryModel.description.getter();
          v168 = v167;
          sub_10009B0DC(v160, type metadata accessor for ReadingHistoryModel);
          v169 = sub_1001874E8(v166, v168, v219);
          v170 = v216;

          *(v161 + 14) = v169;
          _os_log_impl(&_mh_execute_header, v157, v158, "CloudSyncConflictResolver: no delta on existing=%s from incoming=%s", v161, 0x16u);
          swift_arrayDestroy();
          v111 = v196;
        }

        else
        {
          v170 = v112;

          sub_10009B0DC(v156, type metadata accessor for ReadingHistoryModel);
          sub_10009B0DC(v90, type metadata accessor for ReadingHistoryModel);
        }

        v185 = v215;
        v186 = v217;
        *(v215 + 3) = &type metadata for Data;

        sub_1000887D0(v170, v194);
        *v185 = v218;
        v185[1] = v186;
        sub_10009B0DC(v208, type metadata accessor for ReadingHistoryModel);
        v125 = v209;
      }

      else
      {
        v142 = v202;
        sub_10009B074(v127, v202, type metadata accessor for ReadingHistoryModel);
        v143 = v203;
        sub_10009B074(v109, v203, type metadata accessor for ReadingHistoryModel);
        v144 = sub_1001C5128();
        v145 = sub_1001C65B8();
        if (os_log_type_enabled(v144, v145))
        {
          v146 = v142;
          v147 = swift_slowAlloc();
          v219[0] = swift_slowAlloc();
          *v147 = 136315394;
          v148 = ReadingHistoryModel.description.getter();
          v150 = v149;
          sub_10009B0DC(v146, type metadata accessor for ReadingHistoryModel);
          v151 = sub_1001874E8(v148, v150, v219);

          *(v147 + 4) = v151;
          *(v147 + 12) = 2080;
          v152 = ReadingHistoryModel.description.getter();
          v154 = v153;
          v109 = v209;
          sub_10009B0DC(v143, type metadata accessor for ReadingHistoryModel);
          v155 = sub_1001874E8(v152, v154, v219);
          v112 = v216;

          *(v147 + 14) = v155;
          _os_log_impl(&_mh_execute_header, v144, v145, "CloudSyncConflictResolver: no delta on incoming=%s from existing=%s", v147, 0x16u);
          swift_arrayDestroy();
          v111 = v196;
        }

        else
        {

          sub_10009B0DC(v143, type metadata accessor for ReadingHistoryModel);
          sub_10009B0DC(v142, type metadata accessor for ReadingHistoryModel);
        }

        v171 = v215;
        v172 = v217;
        *(v215 + 3) = &type metadata for Data;

        sub_1000887D0(v218, v172);
        v173 = v194;
        *v171 = v112;
        v171[1] = v173;
        sub_10009B0DC(v208, type metadata accessor for ReadingHistoryModel);
        v125 = v109;
      }

LABEL_57:
      sub_10009B0DC(v125, type metadata accessor for ReadingHistoryModel);
      sub_10008875C(v214, &qword_10026FCA0, &unk_1001F0E70);
      sub_10008875C(v92, &qword_10026FCA0, &unk_1001F0E70);
      sub_10008E7BC(v222);
      sub_10008E7BC(v226);
LABEL_58:
      sub_10008875C(v224, &qword_10026FCB0, &unk_1001F14E0);
      sub_10008875C(v223, &qword_10026FCB0, &unk_1001F14E0);
      return;
    }

    sub_1000887D0(v67, v68);
    sub_10008E7BC(v222);
    goto LABEL_31;
  }

  v79 = sub_1001C5128();
  v80 = sub_1001C65B8();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&_mh_execute_header, v79, v80, "CloudSyncConflictResolver: no incoming data", v81, 2u);
  }

  sub_10008E7BC(v226);
  sub_10008875C(v224, &qword_10026FCB0, &unk_1001F14E0);
  sub_10008875C(v223, &qword_10026FCB0, &unk_1001F14E0);
  *(v66 + 3) = &type metadata for Data;

  *v66 = v67;
  *(v66 + 1) = v68;
}

id sub_1000C45B8(char a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, void *a7)
{
  swift_errorRetain();
  v12 = sub_1001C5128();
  v13 = sub_1001C65B8();

  if (os_log_type_enabled(v12, v13))
  {
    v20 = a7;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 134218498;
    *(v14 + 4) = a1 & 1;
    *(v14 + 12) = 2048;
    *(v14 + 14) = a2 & 1;
    *(v14 + 22) = 2080;
    if (a3)
    {
      swift_getErrorValue();
      sub_1001C6D98();
    }

    sub_100084528(&qword_10026FC88, &unk_1001F1AA0);
    v16 = sub_1001C6078();
    v18 = sub_1001874E8(v16, v17, &v21);

    *(v14 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "CRDTModelCloudDataManager q_sync: BCCloudDataManager is done: success=%ld hasChanges=%ld error=%s", v14, 0x20u);
    sub_10008E7BC(v15);

    a7 = v20;
  }

  else
  {
  }

  a5(a1 & 1);
  return [a7 endTransaction];
}

void sub_1000C4794(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_1000C481C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  __chkstk_darwin(v12 - 8);
  v14 = &v24 - v13;
  v15 = type metadata accessor for ModelState.Source(0, a4, a5, a6);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v24 - v17;
  v19 = *(a4 - 8);
  __chkstk_darwin(v16);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ModelState(0, a4, a5, a6);
  (*(*(v22 - 8) + 8))(a1, v22);
  swift_beginAccess();
  (*(v19 + 16))(v21, a2, a4);
  (*(v19 + 56))(v18, 2, 2, a4);
  sub_10009ADF0(a3, v14, &unk_10026F410, &unk_1001F0E40);
  return ModelState.init(model:loaded:source:revisionInfo:)(v21, 1, v18, v14, a4, a5, a6, a1);
}

char *sub_1000C4AA8(void *a1, char *a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v78 = a5;
  v68 = a4;
  v69 = a3;
  v80 = a2;
  v75 = a1;
  ObjectType = swift_getObjectType();
  v76 = sub_1001C5148();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v79 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  __chkstk_darwin(v6 - 8);
  v71 = v65 - v7;
  v70 = sub_100084528(&unk_10026F420, &unk_1001F0E50) - 8;
  v8 = __chkstk_darwin(v70);
  v73 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v72 = v65 - v11;
  __chkstk_darwin(v10);
  v13 = v65 - v12;
  v14 = type metadata accessor for ReadingHistoryModel(0);
  v66 = v14;
  __chkstk_darwin(v14);
  v16 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1001C6668();
  v67 = *(v81 - 1);
  __chkstk_darwin(v81);
  v18 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001C6638();
  __chkstk_darwin(v19 - 8);
  v20 = sub_1001C5688();
  __chkstk_darwin(v20 - 8);
  v65[1] = qword_1002818C0;
  v65[0] = ".ReadingHistoryDataStore.model";
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1001C69C8(16);

  strcpy(&aBlock, "CRDTModelSync.");
  HIBYTE(aBlock) = -18;
  v87 = v14;
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v21 = sub_1001C6078();
  v23 = v22;
  sub_1001C61E8();
  v24 = sub_1001C6088();
  v26 = v25;

  v27 = sub_10014074C(15, v24, v26, v21, v23);
  v29 = v28;

  v89._countAndFlagsBits = v27;
  v89._object = v29;
  sub_1001C6138(v89);

  v30 = v68;
  sub_1001C5138();
  v31 = qword_10026FB10;
  sub_1000C5A14();
  sub_1001C5678();
  sub_1001C6628();
  (*(v67 + 104))(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v81);
  v32 = v69;
  *&v30[v31] = sub_1001C66A8();
  v30[direct field offset for CRDTModelSyncManager.enableCloudSync] = 0;
  sub_100084528(&unk_10026ED30, &unk_1001F1490);
  sub_1000885F4(&unk_10026F430, &unk_10026ED30, &unk_1001F1490, &protocol conformance descriptor for Anonymous<A>);
  sub_1000885F4(&unk_10026ED40, &unk_10026ED30, &unk_1001F1490, &protocol conformance descriptor for Anonymous<A>);
  sub_1001C5B58();
  v33 = v66;
  sub_1001C4CA8();
  sub_1000C5A60(&unk_10026F440, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001C5B58();
  *&v16[*(v33 + 24)] = &_swiftEmptyDictionarySingleton;
  v34 = v80;
  *&v30[qword_10026FB18] = v80;
  v81 = v16;
  sub_10009B074(v16, v13, type metadata accessor for ReadingHistoryModel);
  v35 = v70;
  v36 = *(v70 + 56);
  v37 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  (*(*(v37 - 8) + 56))(&v13[v36], 1, 2, v37);
  v38 = type metadata accessor for CRDTModelRevisionInfo(0);
  v39 = *(*(v38 - 8) + 56);
  v40 = v71;
  v39(v71, 1, 1, v38);
  v41 = *(v35 + 60);
  v39(&v13[v41], 1, 1, v38);
  v13[*(v35 + 52)] = 0;
  v42 = v34;
  sub_10009AC98(v40, &v13[v41]);
  v80 = v13;
  v43 = v13;
  v44 = v74;
  v45 = v72;
  sub_10009ADF0(v43, v72, &unk_10026F420, &unk_1001F0E50);
  sub_100084528(&unk_10026F450, &qword_1001F76A0);
  swift_allocObject();
  v46 = v73;
  sub_10009ADF0(v45, v73, &unk_10026F420, &unk_1001F0E50);
  v47 = sub_100098354(v46);
  sub_10008875C(v45, &unk_10026F420, &unk_1001F0E50);
  *&v30[qword_10026FB20] = v47;
  v48 = v75;
  *&v30[qword_10026FB30] = v75;
  *&v30[qword_10026FB38] = v32;
  type metadata accessor for ObservableTransaction(0);
  v49 = swift_allocObject();
  swift_unknownObjectRetain_n();
  v50 = v48;
  v51 = v76;
  *&v30[qword_10026FB28] = sub_10015C33C(0xD000000000000030, 0x80000001001FEE50, v32, v49);
  v88.receiver = v30;
  v88.super_class = ObjectType;
  v52 = objc_msgSendSuper2(&v88, "init");
  v53 = *&v52[qword_10026FB20] + *(**&v52[qword_10026FB20] + 128);
  swift_beginAccess();
  *(v53 + 8) = &protocol witness table for ObservableTransaction;
  swift_unknownObjectWeakAssign();
  v54 = v79;
  (*(v44 + 16))(v79, &v52[qword_1002818C0], v51);
  v55 = v52;
  v56 = sub_1001C5128();
  v57 = sub_1001C65B8();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "CRDTModelSyncManager Init: About to load cloudData", v58, 2u);
  }

  (*(v44 + 8))(v54, v51);
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = *&v50[qword_100273F40];
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = swift_allocObject();
  v62[2] = v61;
  v62[3] = sub_10009AD08;
  v62[4] = v59;
  v85 = sub_10009A440;
  v86 = v62;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v83 = sub_1000982D4;
  v84 = &unk_100244D40;
  v63 = _Block_copy(&aBlock);
  swift_retain_n();

  [v60 cloudDataWithPredicate:0 sortDescriptors:0 completion:v63];
  _Block_release(v63);

  swift_unknownObjectRelease();

  sub_10009B0DC(v81, type metadata accessor for ReadingHistoryModel);
  sub_10008875C(v80, &unk_10026F420, &unk_1001F0E50);

  return v55;
}

uint64_t sub_1000C55F4(uint64_t a1)
{
  result = sub_1001C5148();
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

uint64_t sub_1000C5714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistoryModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C5778(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100084528(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000C57E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C5868()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(sub_100084528(&unk_10026F410, &unk_1001F0E40) - 8);
  v4 = *(v0 + v2);
  v5 = v0 + ((v2 + *(v3 + 80) + 8) & ~*(v3 + 80));

  return sub_1000C1868(v0 + v1, v4, v5);
}

uint64_t sub_1000C5950(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = type metadata accessor for ModelState(0, v3, v4, v5);
  v10 = *(v7 - 8);
  (*(v10 + 8))(a1, v7);
  v8 = *(v10 + 16);

  return v8(a1, v6, v7);
}

unint64_t sub_1000C5A14()
{
  result = qword_10026F2D0;
  if (!qword_10026F2D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026F2D0);
  }

  return result;
}

uint64_t sub_1000C5A60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000C5AA8(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_1000C5B84(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_10026FD78, &qword_1001F1B68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10009BB74(a1, a1[3]);
  sub_1000C65A0();
  sub_1001C6E78();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_1000C6708();
  sub_1001C6CA8();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1001C6C78();
    _s8CardItemVMa(0);
    LOBYTE(v12) = 2;
    sub_1001C4CA8();
    sub_1000B6E64(&qword_10026F970, &protocol conformance descriptor for Date);
    sub_1001C6CA8();
    LOBYTE(v12) = 3;
    sub_1001C6C88();
    LOBYTE(v12) = 4;
    sub_1001C6C68();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000C5DF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1001C4CA8();
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100084528(&qword_10026FD60, &qword_1001F1B60);
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = _s8CardItemVMa(0);
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v30 = a1;
  sub_10009BB74(a1, v13);
  sub_1000C65A0();
  sub_1001C6E58();
  if (v2)
  {
    return sub_10008E7BC(v30);
  }

  v14 = v28;
  v33 = 0;
  sub_1000C65F4();
  sub_1001C6C28();
  v15 = v32;
  *v12 = v31;
  *(v12 + 1) = v15;
  v25 = v15;
  LOBYTE(v31) = 1;
  v12[16] = sub_1001C6BF8() & 1;
  LOBYTE(v31) = 2;
  sub_1000B6E64(&qword_10026F980, &protocol conformance descriptor for Date);
  sub_1001C6C28();
  (*(v27 + 32))(&v12[v10[6]], v6, v4);
  LOBYTE(v31) = 3;
  sub_1001C6C08();
  *&v12[v10[7]] = v16;
  LOBYTE(v31) = 4;
  v17 = sub_1001C6BE8();
  v24 = v18;
  v19 = v17;
  (*(v14 + 8))(v9, v29);
  v20 = &v12[v10[8]];
  v21 = v24;
  *v20 = v19;
  *(v20 + 1) = v21;
  sub_1000C6648(v12, v26);
  sub_10008E7BC(v30);
  return sub_1000C66AC(v12);
}

uint64_t sub_1000C622C()
{
  v1 = *v0;
  v2 = 0x44496D616461;
  v3 = 1702125924;
  v4 = 0x6563697270;
  if (v1 != 3)
  {
    v4 = 0x657474616D726F66;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x626F696475417369;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000C62CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000C69B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000C6300(uint64_t a1)
{
  v2 = sub_1000C65A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C633C(uint64_t a1)
{
  v2 = sub_1000C65A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C63AC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1001C6D08() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = _s8CardItemVMa(0);
  if ((sub_1001C4C68() & 1) == 0 || *(a1 + *(v5 + 28)) != *(a2 + *(v5 + 28)))
  {
    return 0;
  }

  v6 = *(v5 + 32);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1001C6D08();
}

uint64_t _s8CardItemVMa(uint64_t a1)
{
  result = qword_10026FD18;
  if (!qword_10026FD18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C6504(uint64_t a1)
{
  result = sub_1001C4CA8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000C65A0()
{
  result = qword_10026FD68;
  if (!qword_10026FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FD68);
  }

  return result;
}

unint64_t sub_1000C65F4()
{
  result = qword_10026FD70;
  if (!qword_10026FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FD70);
  }

  return result;
}

uint64_t sub_1000C6648(uint64_t a1, uint64_t a2)
{
  v4 = _s8CardItemVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C66AC(uint64_t a1)
{
  v2 = _s8CardItemVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000C6708()
{
  result = qword_10026FD80;
  if (!qword_10026FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FD80);
  }

  return result;
}

uint64_t _s8CardItemV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8CardItemV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000C68B0()
{
  result = qword_10026FD88;
  if (!qword_10026FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FD88);
  }

  return result;
}

unint64_t sub_1000C6908()
{
  result = qword_10026FD90;
  if (!qword_10026FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FD90);
  }

  return result;
}

unint64_t sub_1000C6960()
{
  result = qword_10026FD98;
  if (!qword_10026FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FD98);
  }

  return result;
}

uint64_t sub_1000C69B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_1001C6D08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x626F696475417369 && a2 == 0xEB000000006B6F6FLL || (sub_1001C6D08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6563697270 && a2 == 0xE500000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657474616D726F66 && a2 == 0xEE00656369725064)
  {

    return 4;
  }

  else
  {
    v6 = sub_1001C6D08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t type metadata accessor for CRDTModelSyncVersion(uint64_t a1)
{
  result = qword_10026FDF8;
  if (!qword_10026FDF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CRDTModelSyncVersion.serializedData()()
{
  v0 = sub_1001C5BD8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRDTModelSyncVersion(0);
  (*(v1 + 104))(v3, enum case for CRCodableVersion.version3(_:), v0);
  sub_1001C5EB8();
  v4 = sub_1001C5CE8();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t static CRDTModelSyncVersion.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  sub_1000C6DE4();
  if ((sub_1001C67A8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CRDTModelSyncVersion(0);

  return sub_1001C5E98();
}

unint64_t sub_1000C6DE4()
{
  result = qword_10026FAD8;
  if (!qword_10026FAD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026FAD8);
  }

  return result;
}

uint64_t sub_1000C6E30(void *a1, void *a2, uint64_t a3)
{
  sub_1000C6DE4();
  if ((sub_1001C67A8() & 1) == 0)
  {
    return 0;
  }

  return sub_1001C5E98();
}

uint64_t sub_1000C6EFC(uint64_t a1)
{
  result = sub_1001C5E38();
  if (v2 <= 0x3F)
  {
    result = sub_1001C5EB8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1000C6F80(char a1)
{
  if (v1[OBJC_IVAR___BDSSecureEngagementManagerService__enableCloudSync] != (a1 & 1))
  {
    v2 = v1;
    v1[OBJC_IVAR___BDSSecureEngagementManagerService__enableCloudSync] = a1 & 1;
    if (qword_10026EC88 != -1)
    {
      swift_once();
    }

    v4 = sub_1001C5148();
    sub_100083274(v4, qword_100274110);
    v5 = sub_1001C5128();
    v6 = sub_1001C6588();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "CloudSecureEngagementManagerService #enableCloudSync setEnableCloudSync %{BOOL}d", v7, 8u);
    }

    v8 = *&v2[OBJC_IVAR___BDSSecureEngagementManagerService_cloudKitController];
    v9 = [v8 privateCloudDatabaseController];
    v10 = *&v2[OBJC_IVAR___BDSSecureEngagementManagerService_syncManager];
    v12 = v9;
    if (a1)
    {
      [v9 addObserver:v10 recordType:@"SecureEngagement"];

      v11 = [v8 transactionManager];
      v12 = [v2 entityName];
      [v11 signalSyncToCKTransactionForEntityName:? syncManager:?];
    }

    else
    {
      [v9 removeObserver:v10 recordType:@"SecureEngagement"];
    }
  }
}

char *sub_1000C718C(void *a1, void *a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR___BDSSecureEngagementManagerService_dataModelName];
  *v6 = 0xD000000000000013;
  *(v6 + 1) = 0x80000001001FFD80;
  v7 = &v2[OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey];
  *v7 = 0xD000000000000014;
  *(v7 + 1) = 0x80000001001FFDA0;
  v2[OBJC_IVAR___BDSSecureEngagementManagerService__enableCloudSync] = 0;
  if (qword_10026EC88 != -1)
  {
    swift_once();
  }

  v8 = sub_1001C5148();
  sub_100083274(v8, qword_100274110);
  v9 = sub_1001C5128();
  v10 = sub_1001C65B8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Initializing BDSSecureEngagementManagerService", v11, 2u);
  }

  v12 = OBJC_IVAR___BDSSecureEngagementManagerService_secureDataSource;
  *&v3[OBJC_IVAR___BDSSecureEngagementManagerService_secureDataSource] = a1;
  *&v3[OBJC_IVAR___BDSSecureEngagementManagerService_cloudKitController] = a2;
  v13 = objc_allocWithZone(BCCloudDataSyncManager);
  v33 = a1;
  v14 = a2;
  v15 = [v13 initWithCloudKitController:v14];
  v16 = OBJC_IVAR___BDSSecureEngagementManagerService_syncManager;
  *&v3[OBJC_IVAR___BDSSecureEngagementManagerService_syncManager] = v15;
  v17 = [*&v3[v12] managedObjectContext];
  v18 = [objc_allocWithZone(BCCloudChangeTokenController) initWithMOC:v17 zoneName:@"SecureUserDataZone" cloudKitController:v14];

  *&v3[OBJC_IVAR___BDSSecureEngagementManagerService_changeTokenController] = v18;
  v19 = *&v3[v12];
  v35 = sub_100088714(0, &qword_10026FE98, &off_10023DD60);
  v32 = v19;
  sub_100084528(&qword_10026FEA0, &qword_1001F1D48);
  sub_1001C6078();
  sub_1001C6018();
  sub_100088714(0, &qword_10026FEA8, off_10023DD38);
  v20 = *&v3[v16];
  v21 = objc_allocWithZone(BCCloudDataManager);
  v22 = v14;
  v23 = v20;
  v24 = sub_1001C5FE8();

  v25 = sub_1001C5FE8();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [v21 initWithCloudDataSource:v32 entityName:v24 notificationName:v25 immutableClass:ObjCClassFromMetadata mutableClass:swift_getObjCClassFromMetadata() syncManager:v23 cloudKitController:v22];

  *&v3[OBJC_IVAR___BDSSecureEngagementManagerService_dataManager] = v27;
  v34.receiver = v3;
  v34.super_class = type metadata accessor for CloudSecureEngagementManagerService();
  v28 = objc_msgSendSuper2(&v34, "init");
  v29 = *&v28[OBJC_IVAR___BDSSecureEngagementManagerService_syncManager];
  v30 = v28;
  [v29 setDelegate:v30];

  return v30;
}

id sub_1000C757C()
{
  v1 = [*&v0[OBJC_IVAR___BDSSecureEngagementManagerService_cloudKitController] privateCloudDatabaseController];
  v2 = OBJC_IVAR___BDSSecureEngagementManagerService_syncManager;
  [v1 removeObserver:*&v0[OBJC_IVAR___BDSSecureEngagementManagerService_syncManager]];

  [*&v0[v2] setDelegate:0];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CloudSecureEngagementManagerService();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1000C775C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1000C7A14(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
  sub_100084528(&unk_10026FEB0, &unk_1001F1D50);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001F0660;
  v10 = *(v3 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey);
  v9 = *(v3 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey + 8);
  *(v8 + 56) = &type metadata for String;
  *(v8 + 32) = v10;
  *(v8 + 40) = v9;

  v11 = [a1 startTimestampString];
  v12 = sub_1001C6018();
  v14 = v13;

  *(v8 + 88) = &type metadata for String;
  *(v8 + 64) = v12;
  *(v8 + 72) = v14;
  v15 = sub_1001C5FE8();
  isa = sub_1001C6288().super.isa;

  v17 = [objc_opt_self() predicateWithFormat:v15 argumentArray:isa];

  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v20[4] = sub_1000CACF0;
  v20[5] = v18;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1000C7C24;
  v20[3] = &unk_1002452A8;
  v19 = _Block_copy(v20);

  [v7 setCloudData:a1 predicate:v17 isEqualCheckIgnoringEmptySalt:1 completion:v19];
  _Block_release(v19);
}

void sub_1000C7C24(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, v8);
}

void sub_1000C7D50(char a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_1001C4A18();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1 & 1, a2 & 1);
}

void sub_1000C7DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
  sub_100153948(a1);
  sub_100084528(&qword_100271010, &unk_1001F1D60);
  isa = sub_1001C5EF8().super.isa;

  sub_100084528(&unk_10026FEB0, &unk_1001F1D50);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001F0660;
  v10 = *(v3 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey);
  v11 = *(v3 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey + 8);
  *(v9 + 56) = &type metadata for String;
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  *(v9 + 88) = sub_100084528(&unk_10026FEF0, &qword_1001F1D70);
  *(v9 + 64) = a1;

  v12 = sub_1001C5FE8();
  v13 = sub_1001C6288().super.isa;

  v14 = [objc_opt_self() predicateWithFormat:v12 argumentArray:v13];

  v15 = sub_1001C5FE8();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v18[4] = sub_1000CABAC;
  v18[5] = v16;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1000C7C24;
  v18[3] = &unk_100245258;
  v17 = _Block_copy(v18);

  [v7 setCloudData:isa predicate:v14 propertyIDKey:v15 isEqualCheckIgnoringEmptySalt:1 completion:v17];
  _Block_release(v17);
}

void sub_1000C80FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
  sub_100084528(&unk_10026FEB0, &unk_1001F1D50);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001F0660;
  v11 = *(v4 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey + 8);
  *(v10 + 32) = *(v4 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey);
  *(v10 + 40) = v11;
  *(v10 + 88) = &type metadata for String;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = a1;
  *(v10 + 72) = a2;

  v12 = sub_1001C5FE8();
  isa = sub_1001C6288().super.isa;

  v14 = [objc_opt_self() predicateWithFormat:v12 argumentArray:isa];

  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v17[4] = sub_1000CACE0;
  v17[5] = v15;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1000982D4;
  v17[3] = &unk_100245208;
  v16 = _Block_copy(v17);

  [v9 cloudDataWithPredicate:v14 sortDescriptors:0 completion:v16];
  _Block_release(v16);
}

void sub_1000C8318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1001C4A18();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_1000C8388(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v10 = *(v5 + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
    sub_100084528(&unk_10026FEB0, &unk_1001F1D50);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1001F0660;
    v12 = *(v5 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey + 8);
    *(v11 + 32) = *(v5 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey);
    *(v11 + 40) = v12;
    *(v11 + 88) = &type metadata for String;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = a2;
    *(v11 + 72) = a3;

    v13 = sub_1001C5FE8();
    isa = sub_1001C6288().super.isa;

    v15 = [objc_opt_self() predicateWithFormat:v13 argumentArray:isa];

    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;
    v18[4] = sub_1000CAB90;
    v18[5] = v16;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_1000982D4;
    v18[3] = &unk_1002451B8;
    v17 = _Block_copy(v18);

    [v10 cloudDataWithPredicate:v15 sortDescriptors:0 completion:v17];
    _Block_release(v17);
  }

  else
  {

    sub_1000C80FC(a2, a3, a4, a5);
  }
}

void sub_1000C85AC(id a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    objc_opt_self();
    a1 = swift_dynamicCastObjCClass();
    if (a1)
    {
      v4 = a1;
      swift_unknownObjectRetain();
      a1 = v4;
    }
  }

  v5 = a1;
  a3();
}

uint64_t sub_1000C8700(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void))
{
  if (!a1)
  {
    v9 = 0;
    goto LABEL_25;
  }

  v12 = a3;
  v13 = a4;
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v7 = sub_1001C6B38();
    if (v7)
    {
LABEL_4:
      v8 = 0;
      v9 = _swiftEmptyArrayStorage;
      do
      {
        v10 = v8;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            sub_1001C69F8();
            v8 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              goto LABEL_20;
            }
          }

          else
          {
            if (v10 >= *(v6 + 16))
            {
              goto LABEL_21;
            }

            swift_unknownObjectRetain();
            v8 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
LABEL_20:
              __break(1u);
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          swift_unknownObjectRelease();
          ++v10;
          if (v8 == v7)
          {
            goto LABEL_24;
          }
        }

        sub_1001C6278();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1001C62B8();
        }

        sub_1001C62E8();
        v9 = _swiftEmptyArrayStorage;
      }

      while (v8 != v7);
      goto LABEL_24;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_24:
  a4 = v13;
  a3 = v12;
LABEL_25:
  (a4)(v9, a2, a3);
}

uint64_t sub_1000C88CC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_100084528(&qword_100271010, &unk_1001F1D60);
    v6 = sub_1001C6298();
  }

  v8 = a3;
  v9 = a4;
  v7(v6, v8, a4);
}

void sub_1000C8AC4(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isa = a1;
  if (a1)
  {
    sub_100088714(0, &qword_10026FEA8, off_10023DD38);
    isa = sub_1001C6288().super.isa;
  }

  if (a3)
  {
    v8 = sub_1001C4A18();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, isa, a2);
}

void sub_1000C8B78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v9 = *(a1 + 32);
  sub_100088714(0, &qword_100270F00, off_10023DD10);
  sub_1000CAC04();
  v10 = sub_1001C63E8();
  v11 = sub_1001C63E8();

  v13 = a4;
  v12 = a5;
  v9(v10, v11, v13, a5, a6);
}

void sub_1000C8E00(objc_class *a1, Class a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  isa = a1;
  if (a1)
  {
    sub_100088714(0, &qword_100270F00, off_10023DD10);
    sub_1000CAC04();
    isa = sub_1001C63D8().super.isa;
  }

  if (a2)
  {
    a2 = sub_1001C63D8().super.isa;
  }

  if (a4)
  {
    v11 = sub_1001C4A18();
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  (*(a6 + 16))(a6, isa, a2, a3);
}

void sub_1000C92B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = *(a1 + 16);
  if (!v7)
  {
    v8 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v8 = sub_10012B444(v7, 0);
  v9 = sub_10012C46C(aBlock, v8 + 4, v7, a1);
  v10 = aBlock[0];

  sub_100005064(v10);
  if (v9 == v7)
  {
    v5 = a2;
    v4 = a3;
LABEL_5:
    v11 = *(v3 + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
    sub_100084528(&qword_100271010, &unk_1001F1D60);
    isa = sub_1001C5EF8().super.isa;
    sub_100084528(&unk_10026FEB0, &unk_1001F1D50);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1001F0660;
    v14 = *(v3 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey);
    v15 = *(v3 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey + 8);
    *(v13 + 56) = &type metadata for String;
    *(v13 + 32) = v14;
    *(v13 + 40) = v15;
    *(v13 + 88) = sub_100084528(&unk_10026FED0, &unk_1001F1450);
    *(v13 + 64) = v8;

    v16 = sub_1001C5FE8();
    v17 = sub_1001C6288().super.isa;

    v18 = [objc_opt_self() predicateWithFormat:v16 argumentArray:v17];

    v19 = sub_1001C5FE8();
    v20 = swift_allocObject();
    *(v20 + 16) = v5;
    *(v20 + 24) = v4;
    aBlock[4] = sub_1000CAB24;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10018C974;
    aBlock[3] = &unk_100245000;
    v21 = _Block_copy(aBlock);

    [v11 updateSyncGenerationFromCloudData:isa predicate:v18 propertyIDKey:v19 completion:v21];
    _Block_release(v21);

    return;
  }

  __break(1u);
}

uint64_t sub_1000C964C(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, unint64_t *a6, void *a7, void (*a8)(uint64_t, id, void *))
{
  v13 = _Block_copy(aBlock);
  sub_100088714(0, a6, a7);
  v14 = sub_1001C6298();
  _Block_copy(v13);
  v15 = a3;
  v16 = a1;
  a8(v14, v16, v13);
  _Block_release(v13);
  _Block_release(v13);
}

void sub_1000C9744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
  sub_100084528(&unk_10026FEB0, &unk_1001F1D50);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001F0660;
  v11 = *(v4 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey + 8);
  *(v10 + 32) = *(v4 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey);
  *(v10 + 40) = v11;
  *(v10 + 88) = &type metadata for String;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = a1;
  *(v10 + 72) = a2;

  v12 = sub_1001C5FE8();
  isa = sub_1001C6288().super.isa;

  v14 = [objc_opt_self() predicateWithFormat:v12 argumentArray:isa];

  v16[4] = a3;
  v16[5] = a4;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10018CA5C;
  v16[3] = &unk_100244EC0;
  v15 = _Block_copy(v16);

  [v9 deleteCloudDataForPredicate:v14 completion:v15];
  _Block_release(v15);
}

uint64_t sub_1000C9930(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = sub_1001C6018();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = a1;
  a7(v11, v13, a6, v14);
}

uint64_t sub_1000C99F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000C9A10(uint64_t a1, uint64_t a2)
{
  if (qword_10026EC88 != -1)
  {
    swift_once();
  }

  v4 = sub_1001C5148();
  sub_100083274(v4, qword_100274110);
  v5 = sub_1001C5128();
  v6 = sub_1001C65B8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "CloudSecureEngagementManagerService deleteCloudDataWithCompletion:", v7, 2u);
  }

  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10018CA5C;
    v9[3] = &unk_100245118;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [objc_opt_self() deleteCloudDataWithCompletion:v8];
  _Block_release(v8);
}

uint64_t sub_1000C9B98(uint64_t a1, void (**a2)(void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  if (*(a1 + OBJC_IVAR___BDSSecureEngagementManagerService__enableCloudSync) == 1)
  {
    v5 = *(a1 + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
    v6 = *(a1 + OBJC_IVAR___BDSSecureEngagementManagerService_syncManager);
    v9[4] = sub_10009B1F8;
    v9[5] = v4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1000DD4AC;
    v9[3] = &unk_1002450C8;
    v7 = _Block_copy(v9);
    _Block_copy(a2);

    [v5 startSyncToCKWithSyncManager:v6 completion:v7];
    _Block_release(v7);
  }

  else
  {
    _Block_copy(a2);
    a2[2](a2);
  }
}

void sub_1000C9D08()
{
  if (v0[OBJC_IVAR___BDSSecureEngagementManagerService__enableCloudSync] == 1)
  {
    v1 = [*&v0[OBJC_IVAR___BDSSecureEngagementManagerService_cloudKitController] transactionManager];
    v2 = [v0 entityName];
    [v1 signalSyncToCKTransactionForEntityName:v2 syncManager:*&v0[OBJC_IVAR___BDSSecureEngagementManagerService_syncManager]];
  }
}

void sub_1000C9DC8(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  if (*(a1 + 16))
  {
    v7 = *(a2 + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
    sub_100088714(0, &qword_100270AC0, NSPredicate_ptr);
    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1001F0670;
    *(v8 + 56) = sub_100084528(&unk_10026FED0, &unk_1001F1450);
    *(v8 + 64) = sub_1000CAB2C();
    *(v8 + 32) = a1;
    _Block_copy(a3);

    v9 = sub_1001C6568();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1000CACE8;
    *(v10 + 24) = v6;
    v16[4] = sub_1000CACDC;
    v16[5] = v10;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_10018C974;
    v16[3] = &unk_100245078;
    v11 = _Block_copy(v16);

    [v7 removeCloudDataForPredicate:v9 completion:v11];
    _Block_release(v11);
  }

  else
  {
    _Block_copy(a3);
    if (qword_10026EC88 != -1)
    {
      swift_once();
    }

    v12 = sub_1001C5148();
    sub_100083274(v12, qword_100274110);
    v13 = sub_1001C5128();
    v14 = sub_1001C6598();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Trying to remove without IDs - EngagementData", v15, 2u);
    }

    a3[2](a3, 1, 0);
  }
}

void sub_1000CA0B8(unint64_t a1, uint64_t a2, void *aBlock)
{
  if (*(a2 + OBJC_IVAR___BDSSecureEngagementManagerService__enableCloudSync) == 1)
  {
    if (a1 >> 62)
    {
      v18 = aBlock;
      v19 = sub_1001C6B38();
      aBlock = v18;
      v4 = v19;
      aBlocka = v18;
      v21 = a2;
      if (v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      aBlocka = aBlock;
      v21 = a2;
      if (v4)
      {
LABEL_4:
        if (v4 < 1)
        {
          __break(1u);
          return;
        }

        _Block_copy(aBlock);
        v5 = 0;
        v6 = _swiftEmptyArrayStorage;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v7 = sub_1001C69F8();
          }

          else
          {
            v7 = *(a1 + 8 * v5 + 32);
          }

          v8 = v7;
          v9 = [v7 recordName];
          v10 = sub_1001C6018();
          v12 = v11;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1000ADC34(0, *(v6 + 2) + 1, 1, v6);
          }

          v14 = *(v6 + 2);
          v13 = *(v6 + 3);
          if (v14 >= v13 >> 1)
          {
            v6 = sub_1000ADC34((v13 > 1), v14 + 1, 1, v6);
          }

          ++v5;

          *(v6 + 2) = v14 + 1;
          v15 = &v6[16 * v14];
          *(v15 + 4) = v10;
          *(v15 + 5) = v12;
        }

        while (v4 != v5);
        goto LABEL_20;
      }
    }

    _Block_copy(aBlock);
    v6 = _swiftEmptyArrayStorage;
LABEL_20:
    _Block_copy(aBlocka);
    sub_1000C9DC8(v6, v21, aBlocka);
    _Block_release(aBlocka);

    _Block_release(aBlocka);
    return;
  }

  v16 = *(aBlock + 2);

  v16(aBlock, 0, 0);
}

uint64_t sub_1000CA2D8(unint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  if (*(a2 + OBJC_IVAR___BDSSecureEngagementManagerService__enableCloudSync) == 1)
  {
    if (a1 >> 62)
    {
LABEL_38:
      v37 = v6;
      v7 = sub_1001C6B38();
      v39 = v37;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v39 = v6;
      if (v7)
      {
LABEL_4:
        v43 = a1 & 0xC000000000000001;
        aBlock = a3;
        v6 = _Block_copy(a3);
        v8 = 0;
        v9 = &_swiftEmptyDictionarySingleton;
        v40 = a1 & 0xFFFFFFFFFFFFFF8;
        v41 = v7;
        v42 = a1;
        while (1)
        {
          if (v43)
          {
            v6 = sub_1001C69F8();
            v11 = v6;
            v12 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (v8 >= *(v40 + 16))
            {
              goto LABEL_36;
            }

            v11 = *(a1 + 8 * v8 + 32);
            v6 = swift_unknownObjectRetain();
            v12 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }
          }

          v13 = [v11 identifier];
          if (!v13)
          {
            if (qword_10026EC88 != -1)
            {
              swift_once();
            }

            v25 = sub_1001C5148();
            sub_100083274(v25, qword_100274110);
            swift_unknownObjectRetain();
            a3 = sub_1001C5128();
            v26 = sub_1001C6598();
            swift_unknownObjectRelease();
            if (os_log_type_enabled(a3, v26))
            {
              v27 = swift_slowAlloc();
              v28 = swift_slowAlloc();
              v44 = v28;
              *v27 = 136315138;
              swift_unknownObjectRetain();
              sub_100084528(&qword_100271010, &unk_1001F1D60);
              v29 = sub_1001C6078();
              v31 = sub_1001874E8(v29, v30, &v44);

              *(v27 + 4) = v31;
              v7 = v41;
              _os_log_impl(&_mh_execute_header, a3, v26, "Property %s has nil identifier, skipping updating sync generation", v27, 0xCu);
              sub_10008E7BC(v28);

              a1 = v42;

              swift_unknownObjectRelease();
            }

            else
            {

              v6 = swift_unknownObjectRelease();
            }

            goto LABEL_7;
          }

          v14 = v13;
          a1 = sub_1001C6018();
          v16 = v15;

          swift_unknownObjectRetain();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44 = v9;
          a3 = v9;
          v19 = sub_100187B3C(a1, v16);
          isa = v9[2].isa;
          v21 = (v18 & 1) == 0;
          v6 = isa + v21;
          if (__OFADD__(isa, v21))
          {
            goto LABEL_35;
          }

          v22 = v18;
          if (v9[3].isa >= v6)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v18 & 1) == 0)
              {
                goto LABEL_26;
              }
            }

            else
            {
              a3 = &v44;
              sub_10018AAD4();
              if ((v22 & 1) == 0)
              {
                goto LABEL_26;
              }
            }
          }

          else
          {
            sub_100188B88(v6, isUniquelyReferenced_nonNull_native);
            a3 = v44;
            v23 = sub_100187B3C(a1, v16);
            if ((v22 & 1) != (v24 & 1))
            {

              _Block_release(aBlock);
              result = sub_1001C6D68();
              __break(1u);
              return result;
            }

            v19 = v23;
            if ((v22 & 1) == 0)
            {
LABEL_26:
              v9 = v44;
              v44[(v19 >> 6) + 8].isa = (v44[(v19 >> 6) + 8].isa | (1 << v19));
              v32 = (v9[6].isa + 16 * v19);
              *v32 = a1;
              v32[1] = v16;
              *(v9[7].isa + v19) = v11;
              v6 = swift_unknownObjectRelease();
              v33 = v9[2].isa;
              v34 = __OFADD__(v33, 1);
              v35 = (v33 + 1);
              if (v34)
              {
                goto LABEL_37;
              }

              v9[2].isa = v35;
              goto LABEL_6;
            }
          }

          v9 = v44;
          v10 = v44[7].isa;
          a3 = *(v10 + v19);
          *(v10 + v19) = v11;
          swift_unknownObjectRelease();
          v6 = swift_unknownObjectRelease();
LABEL_6:
          v7 = v41;
          a1 = v42;
LABEL_7:
          ++v8;
          if (v12 == v7)
          {
            goto LABEL_40;
          }
        }
      }
    }

    _Block_copy(a3);
    v9 = &_swiftEmptyDictionarySingleton;
LABEL_40:
    sub_1000C92B0(v9, sub_1000CACE8, v39);
  }

  else
  {
    _Block_copy(a3);
    (a3[2].isa)(a3, 0, 0);
  }
}

void sub_1000CA798(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  if (*(a2 + OBJC_IVAR___BDSSecureEngagementManagerService__enableCloudSync) == 1)
  {
    v6 = *(a2 + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
    _Block_copy(a3);
    sub_100088714(0, &unk_10026FEC0, CKRecord_ptr);
    isa = sub_1001C6288().super.isa;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1000CACE8;
    *(v8 + 24) = v5;
    v10[4] = sub_1000CAAF8;
    v10[5] = v8;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10018CAE0;
    v10[3] = &unk_100244F88;
    v9 = _Block_copy(v10);

    [v6 resolveConflictsForRecords:isa completion:v9];
    _Block_release(v9);
  }

  else
  {
    _Block_copy(a3);
    a3[2](a3, 0, 0);
  }
}

void sub_1000CA95C(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  if (*(a2 + OBJC_IVAR___BDSSecureEngagementManagerService__enableCloudSync) == 1)
  {
    v6 = *(a2 + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
    _Block_copy(a3);
    sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
    isa = sub_1001C6288().super.isa;
    v9[4] = sub_1000CACE8;
    v9[5] = v5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10018CA5C;
    v9[3] = &unk_100244F10;
    v8 = _Block_copy(v9);

    [v6 failedRecordIDs:isa completion:v8];
    _Block_release(v8);
  }

  else
  {
    _Block_copy(a3);
    a3[2](a3, 0, 0);
  }
}

unint64_t sub_1000CAB2C()
{
  result = qword_10026FEE8;
  if (!qword_10026FEE8)
  {
    sub_1000885AC(&unk_10026FED0, &unk_1001F1450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FEE8);
  }

  return result;
}

unint64_t sub_1000CAC04()
{
  result = qword_10026FF00;
  if (!qword_10026FF00)
  {
    sub_100088714(255, &qword_100270F00, off_10023DD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FF00);
  }

  return result;
}

uint64_t sub_1000CAD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000CAD88();
  }

  return result;
}

uint64_t sub_1000CAD88()
{
  v1 = v0;
  v2 = v0[3];
  v3 = *v0;
  ObjectType = swift_getObjectType();
  result = (*(v2 + 8))(ObjectType, v2);
  if (result)
  {
    v6 = sub_1001C5128();
    v7 = sub_1001C65B8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "CRDTModelFileSyncTransport: assume connection is healthy", v8, 2u);
    }

    v9 = v1[5];
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    *(v10 + 24) = v3;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1000CF420;
    *(v11 + 24) = v10;
    v14[4] = sub_1000B3DA0;
    v14[5] = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_1000906F4;
    v14[3] = &unk_100245B68;
    v12 = _Block_copy(v14);

    dispatch_sync(v9, v12);
    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000CAFA8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1001C5128();
  v4 = sub_1001C65B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "CRDTModelFileSyncTransport: disconnected", v5, 2u);
  }

  v6 = *(v2 + 40);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000CEA28;
  *(v7 + 24) = v2;
  v10[4] = sub_1000B2E48;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000906F4;
  v10[3] = &unk_100245848;
  v8 = _Block_copy(v10);

  dispatch_sync(v6, v8);
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_1000CB158(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    sub_1000CB250(a1, *(a1 + 56));
    v2 = *(a1 + 56) + *(a1 + 56);
    *(a1 + 56) = v2;
    if (v2 > 3600.0)
    {
      *(a1 + 56) = 0x40AC200000000000;
    }
  }

  else
  {
    oslog = sub_1001C5128();
    v3 = sub_1001C65B8();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "CRDTModelFileSyncTransport: not reconnecting automatically", v4, 2u);
    }
  }
}

void sub_1000CB250(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = sub_1001C5128();
  v6 = sub_1001C65B8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v5, v6, "CRDTModelFileSyncTransport: attempt auto-reconnect in %f sec", v7, 0xCu);
  }

  v8 = *(v3 + 64);
  if (v8 || (v9 = swift_allocObject(), swift_weakInit(), v10 = objc_allocWithZone(BUCoalescingCallBlock), v22 = sub_1000CEA30, v23 = v9, v18 = _NSConcreteStackBlock, v19 = 1107296256, v20 = sub_1000991BC, v21 = &unk_100245898, v11 = _Block_copy(&v18), , v12 = sub_1001C5FE8(), v13 = [v10 initWithNotifyBlock:v11 blockDescription:v12], v12, _Block_release(v11), , , v14 = *(v3 + 64), *(v3 + 64) = v13, v14, (v8 = *(v3 + 64)) != 0))
  {
    [v8 setCoalescingDelay:a2];
    v15 = *(v3 + 64);
    if (v15)
    {
      v22 = MarkedAsFinishedMechanism.rawValue.getter;
      v23 = 0;
      v18 = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_1000DD4AC;
      v21 = &unk_1002458C0;
      v16 = _Block_copy(&v18);
      v17 = v15;
      [v17 signalWithCompletion:v16];
      _Block_release(v16);
    }
  }
}

uint64_t sub_1000CB4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1001C5148();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v4 + 16))(v6, Strong + OBJC_IVAR____TtC14bookdatastoredP33_27AA06B3302E8EDAEF33D49870C28CD227_TransportConnectionManager_logger, v3);

    v8 = sub_1001C5128();
    v9 = sub_1001C65B8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "CRDTModelFileSyncTransport: About to auto-reconnect", v10, 2u);
    }

    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000CB690();
  }

  return result;
}

uint64_t sub_1000CB690()
{
  v1 = *(v0 + 40);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1000CEA38;
  *(v2 + 24) = v0;
  v7[4] = sub_1000B3DA0;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000906F4;
  v7[3] = &unk_100245910;
  v3 = _Block_copy(v7);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 40))(ObjectType, v5);
  }

  return result;
}

void sub_1000CB7EC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1001C5128();
  v4 = sub_1001C6588();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "CRDTModelFileSyncTransport: reconnected", v5, 2u);
  }

  v6 = *(v2 + 32);
  if (v6)
  {
    v9[4] = MarkedAsFinishedMechanism.rawValue.getter;
    v9[5] = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1000DD4AC;
    v9[3] = &unk_1002457D0;
    v7 = _Block_copy(v9);
    v8 = v6;
    [v8 signalWithCompletion:v7];
    _Block_release(v7);
  }
}

uint64_t sub_1000CB924()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[5];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000CEFDC;
  *(v5 + 24) = v4;
  v8[4] = sub_1000B3DA0;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000906F4;
  v8[3] = &unk_100245A50;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000CBAA0()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC14bookdatastoredP33_27AA06B3302E8EDAEF33D49870C28CD227_TransportConnectionManager_logger;
  v2 = sub_1001C5148();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for _TransportConnectionManager(uint64_t a1)
{
  result = qword_10026FFA0;
  if (!qword_10026FFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CBBB0(uint64_t a1)
{
  result = sub_1001C5148();
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

uint64_t sub_1000CBC7C(uint64_t a1)
{
  result = sub_1001C5D68();
  if (v2 <= 0x3F)
  {
    result = sub_1001C4B28();
    if (v3 <= 0x3F)
    {
      result = sub_1001C5148();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1000CBE48(char a1)
{
  v3 = sub_1001C5648();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001C5688();
  v7 = *(v14 - 8);
  __chkstk_darwin(v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(v1 + *(*v1 + 152));
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1000CF3BC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100245BB8;
  v11 = _Block_copy(aBlock);

  sub_1001C5668();
  v15 = _swiftEmptyArrayStorage;
  sub_1000CEA64(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000CEAAC(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v14);
}

uint64_t sub_1000CC11C(uint64_t result, char a2)
{
  v2 = *(*result + 184);
  if (*(result + v2) != (a2 & 1))
  {
    *(result + v2) = a2 & 1;
    if (*(result + *(*result + 168)))
    {

      sub_1001C5BE8();
    }
  }

  return result;
}

char *sub_1000CC1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a3;
  v22 = a2;
  v19 = *v3;
  v20 = a1;
  v5 = sub_1001C6638();
  __chkstk_darwin(v5);
  v6 = sub_1001C6668();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001C5688();
  __chkstk_darwin(v10 - 8);
  *(v3 + 3) = 0;
  swift_unknownObjectWeakInit();
  v11 = &v4[*(*v4 + 144)];
  *v11 = 0;
  *(v11 + 1) = 0;
  v18 = *(*v3 + 152);
  v17 = sub_1000C5A14();
  sub_1001C5678();
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  v23 = _swiftEmptyArrayStorage;
  sub_1000CEA64(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000CEAAC(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  *&v3[v18] = sub_1001C66A8();
  *&v3[*(*v3 + 160)] = &_swiftEmptySetSingleton;
  *&v3[*(*v3 + 168)] = 0;
  v3[*(*v3 + 176)] = 0;
  v3[*(*v3 + 184)] = 0;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_1001C69C8(20);

  v23 = 0xD000000000000012;
  v24 = 0x80000001001FE0E0;
  v25._countAndFlagsBits = (*(*(v19 + 104) + 8))(*(v19 + 80));
  sub_1001C6138(v25);

  sub_1001C5138();
  *(v3 + 4) = v20;
  v12 = *(*v3 + 136);
  v13 = sub_1001C4B28();
  (*(*(v13 - 8) + 32))(&v4[v12], v21, v13);
  v14 = *(*v4 + 128);
  v15 = sub_1001C5D68();
  (*(*(v15 - 8) + 32))(&v4[v14], v22, v15);
  return v4;
}

uint64_t sub_1000CC660(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(*v2 + 144));
  v6 = *v4;
  v5 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  sub_1000044D8(v6, v5);

  sub_1000CC6C4();
}

void sub_1000CC6C4()
{
  v1 = v0;
  v2 = *v0;
  v52 = v2;
  v3 = sub_1001C5BD8();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C4B28();
  v49 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[10];
  v10 = v2[11];
  v11 = *(v10 + 8);
  v12 = sub_1001C5D68();
  v13 = sub_1001C67F8();
  __chkstk_darwin(v13 - 8);
  v15 = v2[21];
  if (*(v1 + v15))
  {

    v16 = sub_1001C5128();
    v17 = sub_1001C65B8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v53[0] = v19;
      *v18 = 136315138;
      if (*(v1 + *(*v1 + 176)))
      {
        v20 = 0x657463656E6E6F63;
      }

      else
      {
        v20 = 0x697463656E6E6F63;
      }

      v21 = v15;
      if (*(v1 + *(*v1 + 176)))
      {
        v22 = 0xE900000000000064;
      }

      else
      {
        v22 = 0xEA0000000000676ELL;
      }

      v23 = sub_1001874E8(v20, v22, v53);
      v15 = v21;

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "CRDTModelFileSyncTransport reconnect: Already %s", v18, 0xCu);
      sub_10008E7BC(v19);
    }

    if (*(v1 + v15))
    {
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v41[1] = v11;
    v42 = v41 - v14;
    v43 = v6;
    v44 = v8;
    v45 = v5;
    v46 = v10;
    v47 = v15;
    v48 = v12;
    v24 = sub_1001C5128();
    v25 = sub_1001C65B8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "CRDTModelFileSyncTransport reconnect: About to initialize file sync manager", v26, 2u);
    }

    sub_1001C5BC8();
    swift_getWitnessTable();
    sub_1001C5C18();
    v27 = v1[4];
    v28 = v48;
    v29 = *(v48 - 8);
    v30 = v42;
    (*(v29 + 16))(v42, v1 + *(*v1 + 128), v48);
    (*(v29 + 56))(v30, 0, 1, v28);
    (*(v49 + 16))(v44, v1 + *(*v1 + 136), v43);
    (*(v50 + 104))(v45, enum case for CRCodableVersion.version3(_:), v51);
    v31 = v27;
    *(v1 + v47) = sub_1001C5C28();

    sub_1001C5BE8();
    v51 = sub_1001C5C08();
    v53[0] = v51;
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = swift_allocObject();
    v34 = v9;
    v35 = v46;
    v33[2] = v9;
    v33[3] = v35;
    v36 = v52;
    v37 = v52[12];
    v33[4] = v37;
    v38 = v36[13];
    v33[5] = v38;
    v33[6] = v32;
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = swift_allocObject();
    v40[2] = v34;
    v40[3] = v35;
    v40[4] = v37;
    v40[5] = v38;
    v40[6] = v39;
    sub_1000885AC(&unk_100270F10, &unk_1001F1F70);
    sub_1001C5158();
    swift_getWitnessTable();
    sub_1001C51A8();

    swift_beginAccess();
    sub_1001C5168();
    swift_endAccess();
  }
}

uint64_t sub_1000CCDB0(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1001C5148();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin(v5);
  v9 = v23 - v8 + 16;
  if (*a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v4 + 16))(v9, Strong + *(*Strong + 192), v3);

      swift_errorRetain();
      v11 = sub_1001C5128();
      v12 = sub_1001C6598();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v23[0] = v14;
        *v13 = 136315138;
        swift_getErrorValue();
        v15 = sub_1001C6D98();
        v17 = sub_1001874E8(v15, v16, v23);

        *(v13 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v11, v12, "CRDTModelFileSyncTransport sink: error: %s", v13, 0xCu);
        sub_10008E7BC(v14);
      }

      (*(v4 + 8))(v9, v3);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1000CD134(sub_1000CEA24, &unk_1002457F8);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(v4 + 16))(v7, result + *(*result + 192), v3);

      v19 = sub_1001C5128();
      v20 = sub_1001C65B8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "CRDTModelFileSyncTransport sink: finished", v21, 2u);
      }

      return (*(v4 + 8))(v7, v3);
    }
  }

  return result;
}

uint64_t sub_1000CD134(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001C5648();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001C5688();
  v9 = *(v15 - 8);
  __chkstk_darwin(v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + *(*v2 + 152));
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_1001C5668();
  v16 = _swiftEmptyArrayStorage;
  sub_1000CEA64(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000CEAAC(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);
}

uint64_t sub_1000CD3D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001C5148();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v4 + 16))(v6, Strong + *(*Strong + 192), v3);

    v8 = sub_1001C5128();
    v9 = sub_1001C6588();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "CRDTModelFileSyncTransport sink: receiveValue", v10, 2u);
    }

    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000CD5AC(a1);
  }

  return result;
}

uint64_t sub_1000CD5AC(uint64_t a1)
{
  v3 = *v1;
  v22 = sub_1001C5648();
  v24 = *(v22 - 8);
  __chkstk_darwin(v22);
  v20 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1001C5688();
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v3[10];
  v8 = v3[11];
  v9 = sub_1001C5D68();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - v11;
  v19[1] = *(v1 + v3[19]);
  (*(v10 + 16))(v19 - v11, a1, v9);
  v13 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v7;
  *(v14 + 3) = v8;
  *(v14 + 4) = v3[12];
  *(v14 + 5) = v3[13];
  *(v14 + 6) = v1;
  (*(v10 + 32))(&v14[v13], v12, v9);
  aBlock[4] = sub_1000CE9B8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_1002457A8;
  v15 = _Block_copy(aBlock);

  sub_1001C5668();
  v25 = _swiftEmptyArrayStorage;
  sub_1000CEA64(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000CEAAC(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  v16 = v20;
  v17 = v22;
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v15);
  (*(v24 + 8))(v16, v17);
  (*(v21 + 8))(v6, v23);
}

void sub_1000CD9B8(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 176);
  if ((*(v1 + v4) & 1) == 0)
  {
    if (*(v1 + *(*v1 + 168)))
    {
      *(v1 + v4) = 1;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_1000CB7EC(Strong);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = sub_1001C5128();
      v7 = sub_1001C6598();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "CRDTModelFileSyncTransport: got disconnected before load complete", v8, 2u);
      }
    }
  }

  v9 = v2 + *(*v2 + 144);
  v10 = *v9;
  if (*v9)
  {
    v11 = *(v9 + 8);

    v10(a1);

    sub_1000044D8(v10, v11);
  }
}

uint64_t sub_1000CDB40()
{
  v1 = *(*v0 + 160);
  swift_beginAccess();
  *(v0 + v1) = &_swiftEmptySetSingleton;

  *(v0 + *(*v0 + 168)) = 0;

  *(v0 + *(*v0 + 176)) = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000CAFA8(result);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000CDBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v38 = a3;
  v31 = *v3;
  v5 = v31;
  v6 = sub_1001C5648();
  v35 = *(v6 - 8);
  v36 = v6;
  __chkstk_darwin(v6);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1001C5688();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v5[10];
  v11 = v5[11];
  v12 = sub_1001C5D68();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  if (*(v3 + v5[21]))
  {

    sub_1001C5BF8();
  }

  else
  {
    v29 = v9;
    v18 = v31;
    v30 = *(v3 + v31[19]);
    (*(v13 + 16))(v16, a1, v12);
    v19 = (*(v13 + 80) + 56) & ~*(v13 + 80);
    v20 = (v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    *(v21 + 2) = v10;
    *(v21 + 3) = v11;
    *(v21 + 4) = v18[12];
    *(v21 + 5) = v18[13];
    *(v21 + 6) = v3;
    (*(v13 + 32))(&v21[v19], v16, v12);
    v22 = &v21[v20];
    v23 = v38;
    *v22 = v37;
    v22[1] = v23;
    aBlock[4] = sub_1000CEB28;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000DD4AC;
    aBlock[3] = &unk_100245960;
    v24 = _Block_copy(aBlock);

    v25 = v29;
    sub_1001C5668();
    v39 = _swiftEmptyArrayStorage;
    sub_1000CEA64(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100084528(&unk_10026F360, &qword_1001F13F0);
    sub_1000CEAAC(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
    v26 = v33;
    v27 = v36;
    sub_1001C68C8();
    sub_1001C6698();
    _Block_release(v24);
    (*(v35 + 8))(v26, v27);
    (*(v32 + 8))(v25, v34);
  }
}

id *sub_1000CE08C()
{
  sub_1000CEB00((v0 + 2));

  v1 = *(*v0 + 16);
  v2 = sub_1001C5D68();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 17);
  v4 = sub_1001C4B28();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1000044D8(*(v0 + *(*v0 + 18)), *(v0 + *(*v0 + 18) + 8));

  v5 = *(*v0 + 24);
  v6 = sub_1001C5148();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_1000CE24C()
{
  sub_1000CE08C();

  return swift_deallocClassInstance();
}

uint64_t sub_1000CE2B8(uint64_t a1)
{
  result = sub_1001C5148();
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

uint64_t sub_1000CE470(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1001C5128();
  v4 = sub_1001C65B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "CRDTModelFileSyncTransport: About to disconnect", v5, 2u);
  }

  v6 = *(v2 + 24);
  v7 = *(v6 + 40);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1000CF424;
  *(v9 + 24) = v8;
  v12[4] = sub_1000B3DA0;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000906F4;
  v12[3] = &unk_100245AC8;
  v10 = _Block_copy(v12);

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    return sub_1000CD134(sub_1000CEA24, &unk_1002457F8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CE670(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1001C5128();
  v4 = sub_1001C65B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "CRDTModelFileSyncTransport: About to reconnect", v5, 2u);
  }

  v6 = *(v2 + 24);
  v7 = *(v6 + 40);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = 1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1000CEFCC;
  *(v9 + 24) = v8;
  v12[4] = sub_1000B3DA0;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000906F4;
  v12[3] = &unk_1002459D8;
  v10 = _Block_copy(v12);

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    sub_1000CB924();
    return sub_1000CD134(sub_1000CE958, &unk_1002456E0);
  }

  return result;
}

uint64_t sub_1000CE878()
{

  v1 = qword_1002700D8;
  v2 = sub_1001C5148();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1000CE8E8()
{
  sub_1000CE878();

  return swift_deallocClassInstance();
}

uint64_t sub_1000CE958()
{
  sub_1000CC6C4();
}

uint64_t sub_1000CE980(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000CEA38()
{
  v1 = *(v0 + 64);
  *(v0 + 64) = 0;
}

uint64_t sub_1000CEA64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000CEAAC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000885AC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000CEB28()
{
  sub_1001C5D68();
  sub_1000CC6C4();
  sub_1001C5BF8();
}

uint64_t sub_1000CEBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v22 = a4;
  v20 = sub_1001C6668();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C6638();
  __chkstk_darwin(v8);
  v9 = sub_1001C5688();
  __chkstk_darwin(v9 - 8);
  *(a2 + 32) = 0;
  v10 = sub_1000C5A14();
  v19[1] = "ncTransport.access";
  v19[2] = v10;
  sub_1001C5678();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000CEA64(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000CEAAC(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
  *(a2 + 40) = sub_1001C66A8();
  *(a2 + 48) = 1;
  *(a2 + 64) = 0;
  sub_1001C5138();
  v11 = v22;
  *(a2 + 16) = v21;
  *(a2 + 24) = v11;
  *(a2 + 56) = 0x403E000000000000;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = objc_allocWithZone(BUCoalescingCallBlock);
  aBlock[4] = sub_1000CF3B4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000991BC;
  aBlock[3] = &unk_100245AF0;
  v14 = _Block_copy(aBlock);

  v15 = sub_1001C5FE8();
  v16 = [v13 initWithNotifyBlock:v14 blockDescription:v15];

  _Block_release(v14);

  [v16 setCoalescingDelay:60.0];
  v17 = *(a2 + 32);
  *(a2 + 32) = v16;

  return a2;
}

void *sub_1000CEFEC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a2;
  v31 = a3;
  v32 = a1;
  v25 = *v3;
  v5 = v25;
  v6 = sub_1001C4B28();
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin(v6);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = ".ReadingHistoryDataStore.model";
  v26 = *(v25 + 80);
  v8 = v26;
  v9 = sub_1001C5D68();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  *&v33[0] = 0;
  *(&v33[0] + 1) = 0xE000000000000000;
  sub_1001C69C8(20);

  *&v33[0] = 0xD000000000000012;
  *(&v33[0] + 1) = 0x80000001001FE0E0;
  v13 = *(v5 + 104);
  v34._countAndFlagsBits = (*(v13 + 8))(v8, v13);
  sub_1001C6138(v34);

  sub_1001C5138();
  *&v14 = *(v25 + 96);
  *(&v14 + 1) = v13;
  v33[1] = v14;
  v33[0] = v26;
  v15 = type metadata accessor for _CRDTModelFileSyncTransport(0, v33);
  (*(v10 + 16))(v12, v30, v9);
  v16 = v27;
  v17 = v28;
  v18 = v31;
  v19 = v29;
  (*(v28 + 16))(v27, v31, v29);
  swift_allocObject();
  v3[2] = sub_1000CC1C8(v32, v12, v16);
  type metadata accessor for _TransportConnectionManager(0);
  v20 = swift_allocObject();

  v22 = sub_1000CEBF8(v21, v20, v15, &off_100245698);
  (*(v17 + 8))(v18, v19);
  v4[3] = v22;
  *(v4[2] + 24) = &off_1002456C8;
  swift_unknownObjectWeakAssign();
  return v4;
}

uint64_t static CRDTModelContextStore.persistentContext()()
{
  v0 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  __chkstk_darwin(v0 - 8);
  v48 = &v45 - v1;
  v2 = sub_1001C4988();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001C4B28();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v45 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v45 - v13;
  __chkstk_darwin(v12);
  v16 = &v45 - v15;
  sub_1000CFA38();
  sub_1000CFA38();
  sub_1000CFB78();
  sub_1001C4AA8();

  v47 = v6;
  v51 = *(v6 + 8);
  v52 = v5;
  v51(v11, v5);
  v17 = sub_1001C6578();
  if (qword_10026EBC8 != -1)
  {
    swift_once();
  }

  v18 = qword_10026F958;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1001F0670;
  v55 = v14;
  v20 = sub_1001C4A58();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  v23 = sub_100084570();
  *(v19 + 64) = v23;
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v50 = v18;
  sub_1001C5118(v17, &_mh_execute_header, v18, "CRDTModelContextStore storeDirectory = %@", 41, 2, v19);

  sub_1001C4978();
  sub_1001C4968();
  v24 = [objc_opt_self() defaultManager];
  sub_1001C4A88(v25);
  v27 = v26;
  *&v56 = 0;
  LODWORD(v22) = [v24 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:&v56];

  v28 = v4;
  v29 = v16;
  v49 = v28;
  if (v22)
  {
    v30 = v56;
    sub_1001C4A78();
    v45 = sub_1001C5E38();
    v31 = v47;
    v32 = v52;
    (*(v47 + 16))(v46, v55, v52);
    v58 = 0;
    v56 = 0u;
    v57 = 0u;
    (*(v31 + 56))(v48, 1, 1, v32);
    v43 = sub_1001C5E28();
    (*(v53 + 8))(v28, v54);
    v44 = v55;
  }

  else
  {
    v33 = v56;
    sub_1001C4A28();

    swift_willThrow();
    v32 = v52;
    v34 = sub_1001C6598();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1001F0660;
    v36 = v55;
    v37 = sub_1001C4A58();
    *(v35 + 56) = &type metadata for String;
    *(v35 + 64) = v23;
    *(v35 + 32) = v37;
    *(v35 + 40) = v38;
    swift_getErrorValue();
    v39 = sub_1001C6D98();
    *(v35 + 96) = &type metadata for String;
    *(v35 + 104) = v23;
    *(v35 + 72) = v39;
    *(v35 + 80) = v40;
    sub_1001C5118(v34, &_mh_execute_header, v50, "CRDTModelContextStore unable to create CRContext at %@ error=%@", 63, 2, v35);

    sub_1001C5E38();
    v58 = 0;
    v56 = 0u;
    v57 = 0u;
    v43 = sub_1001C5E18();

    sub_1000CFBF0(&v56);
    (*(v53 + 8))(v49, v54);
    v44 = v36;
  }

  v41 = v51;
  v51(v44, v32);
  v41(v29, v32);
  return v43;
}

uint64_t sub_1000CFA38()
{
  v0 = sub_1001C4B28();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() books];
  v5 = [v4 containerURL];

  sub_1001C4AD8();
  sub_1001C4AA8();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000CFB78()
{
  swift_getMetatypeMetadata();
  v1 = sub_1001C6098();

  v2._countAndFlagsBits = 0x2E747865746E6F43;
  v2._object = 0xEA00000000006264;
  sub_1001C6138(v2);

  return v1;
}

uint64_t sub_1000CFBF0(uint64_t a1)
{
  v2 = sub_100084528(&unk_10026EF20, &unk_1001F1FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ReadingHistory.Streak.description.getter()
{
  sub_1001C69C8(23);

  sub_1001C4CA8();
  sub_1000D51E8(&qword_100270A80, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v1._countAndFlagsBits = sub_1001C6CC8();
  sub_1001C6138(v1);

  v2._countAndFlagsBits = 0x6874676E656C202CLL;
  v2._object = 0xE90000000000003ALL;
  sub_1001C6138(v2);
  type metadata accessor for ReadingHistory.Streak(0);
  v3._countAndFlagsBits = sub_1001C6CC8();
  sub_1001C6138(v3);

  v4._countAndFlagsBits = 125;
  v4._object = 0xE100000000000000;
  sub_1001C6138(v4);
  return 0x65746144646E657BLL;
}

uint64_t ReadingHistory.Streak.init(endDate:length:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1001C4CA8();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ReadingHistory.Streak(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

bookdatastored::ReadingHistory::Day __swiftcall ReadingHistory.Day.init(readingTime:goal:isStreakDay:)(Swift::Int readingTime, Swift::Int goal, Swift::Bool isStreakDay)
{
  v3 = isStreakDay;
  result.goal = goal;
  result.readingTime = readingTime;
  result.isStreakDay = v3;
  return result;
}

uint64_t ReadingHistory.State.init(currentStreak:longestStreak:today:readingHistory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for ReadingHistory.State(0);
  v15 = v14[5];
  v16 = type metadata accessor for ReadingHistory.Streak(0);
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  *a7 = a1;
  result = sub_1000CFF8C(a2, &a7[v15]);
  v18 = &a7[v14[6]];
  *v18 = a3;
  *(v18 + 1) = a4;
  v18[16] = a5;
  *&a7[v14[7]] = a6;
  return result;
}

uint64_t sub_1000CFF8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ReadingHistory.Day.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1001C69C8(29);

  v7._countAndFlagsBits = sub_1001C6CC8();
  sub_1001C6138(v7);

  v8._countAndFlagsBits = 0x3A6C616F67202CLL;
  v8._object = 0xE700000000000000;
  sub_1001C6138(v8);
  v9._countAndFlagsBits = sub_1001C6CC8();
  sub_1001C6138(v9);

  v10._countAndFlagsBits = 0x6B6165727473202CLL;
  v10._object = 0xE90000000000003ALL;
  sub_1001C6138(v10);
  if (a3)
  {
    v4._countAndFlagsBits = 1702195828;
  }

  else
  {
    v4._countAndFlagsBits = 0x65736C6166;
  }

  if (a3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v4._object = v5;
  sub_1001C6138(v4);

  v11._countAndFlagsBits = 125;
  v11._object = 0xE100000000000000;
  sub_1001C6138(v11);
  return 0x3A656D69747BLL;
}

uint64_t sub_1000D01E0()
{
  v1 = 1818324839;
  if (*v0 != 1)
  {
    v1 = 0x6B61657274537369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x54676E6964616572;
  }
}

uint64_t sub_1000D0244@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000D4C00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D026C(uint64_t a1)
{
  v2 = sub_1000D04B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D02A8(uint64_t a1)
{
  v2 = sub_1000D04B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingHistory.Day.encode(to:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v11[1] = a3;
  v6 = sub_100084528(&qword_1002701E0, &qword_1001F1FD8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_10009BB74(a1, a1[3]);
  sub_1000D04B0();
  sub_1001C6E78();
  v14 = 0;
  sub_1001C6C98();
  if (v4)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v13 = 1;
  sub_1001C6C98();
  v12 = 2;
  sub_1001C6C78();
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1000D04B0()
{
  result = qword_1002701E8;
  if (!qword_1002701E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002701E8);
  }

  return result;
}

uint64_t ReadingHistory.Day.init(from:)(void *a1)
{
  result = sub_1000D4D20(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1000D052C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000D0560@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000D4D20(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t ReadingHistory.DayEntry.date.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReadingHistory.DayEntry.date.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ReadingHistory.DayEntry.day.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

uint64_t ReadingHistory.DayEntry.description.getter()
{
  sub_1001C6138(*v0);
  v2._countAndFlagsBits = 8250;
  v2._object = 0xE200000000000000;
  sub_1001C6138(v2);
  v3._countAndFlagsBits = ReadingHistory.Day.description.getter(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1001C6138(v3);

  v4._countAndFlagsBits = 125;
  v4._object = 0xE100000000000000;
  sub_1001C6138(v4);
  return 123;
}

uint64_t sub_1000D06B8()
{
  if (*v0)
  {
    return 7954788;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_1000D06E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1001C6D08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7954788 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001C6D08();

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

uint64_t sub_1000D07C0(uint64_t a1)
{
  v2 = sub_1000D4EEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D07FC(uint64_t a1)
{
  v2 = sub_1000D4EEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static ReadingHistory.DayEntry.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = sub_1001C6D08(), result = 0, (v5 & 1) != 0))
  {
    v7 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
    return v7 && ((*(a1 + 32) ^ *(a2 + 32)) & 1) == 0;
  }

  return result;
}

uint64_t ReadingHistory.DayEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_1002701F0, &qword_1001F1FE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10009BB74(a1, a1[3]);
  sub_1000D4EEC();
  sub_1001C6E78();
  LOBYTE(v11) = 0;
  sub_1001C6C68();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v12 = *(v3 + 32);
    v10[15] = 1;
    sub_1000D4F40();
    sub_1001C6CA8();
  }

  return (*(v6 + 8))(v8, v5);
}

double ReadingHistory.DayEntry.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000D4F94(a2, v6);
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

uint64_t sub_1000D0A84(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (v9 = sub_1001C6D08(), result = 0, (v9 & 1) != 0))
  {
    v12 = v2 == v5 && v3 == v6;
    return v12 & (v4 ^ v7 ^ 1u);
  }

  return result;
}

uint64_t sub_1000D0B48()
{
  if (*v0)
  {
    return 0x6874676E656CLL;
  }

  else
  {
    return 0x65746144646E65;
  }
}

uint64_t sub_1000D0B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
  if (v6 || (sub_1001C6D08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001C6D08();

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

uint64_t sub_1000D0C58(uint64_t a1)
{
  v2 = sub_1000D5194();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D0C94(uint64_t a1)
{
  v2 = sub_1000D5194();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static ReadingHistory.Streak.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1001C4C68() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ReadingHistory.Streak(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t ReadingHistory.Streak.encode(to:)(void *a1)
{
  v3 = sub_100084528(&qword_100270208, &qword_1001F1FE8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10009BB74(a1, a1[3]);
  sub_1000D5194();
  sub_1001C6E78();
  v8[15] = 0;
  sub_1001C4CA8();
  sub_1000D51E8(&qword_10026F970, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001C6CA8();
  if (!v1)
  {
    type metadata accessor for ReadingHistory.Streak(0);
    v8[14] = 1;
    sub_1001C6C98();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ReadingHistory.Streak.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_1001C4CA8();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100084528(&qword_100270218, &qword_1001F1FF0);
  v21 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ReadingHistory.Streak(0);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009BB74(a1, a1[3]);
  sub_1000D5194();
  sub_1001C6E58();
  if (v2)
  {
    return sub_10008E7BC(a1);
  }

  v19 = v11;
  v12 = v21;
  v13 = v22;
  v26 = 0;
  sub_1000D51E8(&qword_10026F980, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v14 = v23;
  sub_1001C6C28();
  (*(v13 + 32))(v19, v6, v14);
  v25 = 1;
  v15 = sub_1001C6C18();
  (*(v12 + 8))(v8, v24);
  v17 = v19;
  v16 = v20;
  *&v19[*(v9 + 20)] = v15;
  sub_1000D54CC(v17, v16, type metadata accessor for ReadingHistory.Streak);
  sub_10008E7BC(a1);
  return sub_1000D5534(v17, type metadata accessor for ReadingHistory.Streak);
}

uint64_t ReadingHistory.State.longestStreak.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReadingHistory.State(0) + 20);

  return sub_1000D5230(v3, a1);
}

uint64_t ReadingHistory.State.longestStreak.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ReadingHistory.State(0) + 20);

  return sub_1000CFF8C(a1, v3);
}

uint64_t ReadingHistory.State.today.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for ReadingHistory.State(0);
  v8 = v3 + *(result + 24);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3;
  return result;
}

uint64_t ReadingHistory.State.readingHistory.getter()
{
  type metadata accessor for ReadingHistory.State(0);
}

uint64_t ReadingHistory.State.readingHistory.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingHistory.State(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ReadingHistory.State.description.getter()
{
  v1 = v0;
  v2 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001F0CF0;
  v41 = *v0;
  sub_10008E704();
  v6 = sub_1001C6878();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_100084570();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v10 = type metadata accessor for ReadingHistory.State(0);
  sub_1000D5230(v1 + v10[5], v4);
  v11 = type metadata accessor for ReadingHistory.Streak(0);
  if ((*(*(v11 - 8) + 48))(v4, 1, v11) == 1)
  {
    sub_10008875C(v4, &qword_10026F508, &qword_1001F1150);
    v12 = (v5 + 72);
    *(v5 + 96) = &type metadata for String;
    *(v5 + 104) = v9;
  }

  else
  {
    v13 = ReadingHistory.Streak.description.getter();
    v15 = v14;
    sub_1000D5534(v4, type metadata accessor for ReadingHistory.Streak);
    v12 = (v5 + 72);
    *(v5 + 96) = &type metadata for String;
    *(v5 + 104) = v9;
    if (v15)
    {
      *v12 = v13;
      goto LABEL_6;
    }
  }

  *v12 = 7104878;
  v15 = 0xE300000000000000;
LABEL_6:
  *(v5 + 80) = v15;
  v16 = ReadingHistory.Day.description.getter(*(v1 + v10[6]), *(v1 + v10[6] + 8), *(v1 + v10[6] + 16));
  *(v5 + 136) = &type metadata for String;
  *(v5 + 144) = v9;
  *(v5 + 112) = v16;
  *(v5 + 120) = v17;
  v18 = *(v1 + v10[7]);
  v19 = *(v18 + 16);
  v20 = _swiftEmptyArrayStorage;
  if (v19)
  {
    v36 = v9;
    v37 = v5;
    v40 = _swiftEmptyArrayStorage;
    sub_1000D3898(0, v19, 0);
    v20 = v40;
    v21 = (v18 + 64);
    do
    {
      v22 = *(v21 - 4);
      v23 = *(v21 - 3);
      v24 = *(v21 - 2);
      v25 = *(v21 - 1);
      v26 = *v21;
      v38 = 123;
      v39 = 0xE100000000000000;

      v42._countAndFlagsBits = v22;
      v42._object = v23;
      sub_1001C6138(v42);
      v43._countAndFlagsBits = 8250;
      v43._object = 0xE200000000000000;
      sub_1001C6138(v43);
      v44._countAndFlagsBits = ReadingHistory.Day.description.getter(v24, v25, v26);
      sub_1001C6138(v44);

      v45._countAndFlagsBits = 125;
      v45._object = 0xE100000000000000;
      sub_1001C6138(v45);

      v27 = v38;
      v28 = v39;
      v40 = v20;
      v30 = v20[2];
      v29 = v20[3];
      if (v30 >= v29 >> 1)
      {
        sub_1000D3898((v29 > 1), v30 + 1, 1);
        v20 = v40;
      }

      v20[2] = v30 + 1;
      v31 = &v20[2 * v30];
      v31[4] = v27;
      v31[5] = v28;
      v21 += 40;
      --v19;
    }

    while (v19);
    v9 = v36;
    v5 = v37;
  }

  v38 = v20;
  sub_100084528(&unk_10026FED0, &unk_1001F1450);
  sub_1000D52A0();
  v32 = sub_1001C5FA8();
  v34 = v33;

  *(v5 + 176) = &type metadata for String;
  *(v5 + 184) = v9;
  *(v5 + 152) = v32;
  *(v5 + 160) = v34;
  return sub_1001C6048();
}