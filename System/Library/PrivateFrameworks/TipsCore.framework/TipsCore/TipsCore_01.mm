uint64_t sub_1C0109EF8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v4 + 1) < *(v6 + 1))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 16;
    do
    {
      v17 = v5 + 16;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 16;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 16;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v20 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_1C010A0FC(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1C010A834();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1C68D7040](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1C68D7040](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1C014C610();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1C014C610();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1C014C750();
  }

  result = sub_1C014C750();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1C010A358(uint64_t a1, unint64_t a2)
{
  v5 = MEMORY[0x1E69E7CC0];
  v2 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  v3 = sub_1C014C200();
  [v2 setString_];

  sub_1C014C540();
  return v5;
}

uint64_t sub_1C010A448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066D8, &qword_1C0156680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C010A4B8(uint64_t a1)
{
  result = sub_1C014BF40();
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

uint64_t dispatch thunk of SupportFlowSearchResultsProvider.supportFlows(for:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 160) + **(*v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C010A72C;

  return v8(a1, a2);
}

uint64_t sub_1C010A72C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_1C010A834()
{
  result = qword_1EBE06708;
  if (!qword_1EBE06708)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE06708);
  }

  return result;
}

uint64_t TPSSavedTipEntry.savedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
  swift_beginAccess();
  v4 = sub_1C014BD40();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t TPSSavedTipEntry.savedDate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
  swift_beginAccess();
  v4 = sub_1C014BD40();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id sub_1C010ACC8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  v3 = sub_1C014C200();

  return v3;
}

uint64_t sub_1C010AD58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1C014C230();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

id TPSSavedTipEntry.__allocating_init(tipIdentifier:savedDate:lastUsedVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR___TPSSavedTipEntry_tipIdentifier];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
  v14 = sub_1C014BD40();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v11[v13], a3, v14);
  v16 = &v11[OBJC_IVAR___TPSSavedTipEntry_lastUsedVersion];
  *v16 = a4;
  *(v16 + 1) = a5;
  v19.receiver = v11;
  v19.super_class = v5;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v15 + 8))(a3, v14);
  return v17;
}

id TPSSavedTipEntry.init(tipIdentifier:savedDate:lastUsedVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR___TPSSavedTipEntry_tipIdentifier];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
  v14 = sub_1C014BD40();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v5[v13], a3, v14);
  v16 = &v5[OBJC_IVAR___TPSSavedTipEntry_lastUsedVersion];
  *v16 = a4;
  *(v16 + 1) = a5;
  v19.receiver = v5;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v15 + 8))(a3, v14);
  return v17;
}

id TPSSavedTipEntry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TPSSavedTipEntry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall TPSSavedTipEntry.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = sub_1C014BD40();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  v8 = sub_1C014C200();

  v9 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

  v10 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v10, v4);
  v11 = sub_1C014BCE0();
  (*(v5 + 8))(v7, v4);
  v12 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  swift_beginAccess();

  v13 = sub_1C014C200();

  v14 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
}

id TPSSavedTipEntry.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TPSSavedTipEntry.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v30 - v5;
  v7 = sub_1C014BD40();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v30 - v12;
  sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  v14 = sub_1C014C5E0();
  if (!v14 || (v33 = 0, v34 = 0, v15 = v14, sub_1C014C220(), v15, !v34))
  {

    goto LABEL_11;
  }

  v31 = v13;
  v32 = v8;
  v16 = v33;
  sub_1C010074C(0, &qword_1EBE06728, 0x1E695DF00);
  v17 = sub_1C014C5E0();
  if (!v17 || (v18 = v17, v30[1] = v16, v19 = v32, (*(v32 + 56))(v6, 1, 1, v7), sub_1C010BA6C(), sub_1C014C920(), v18, (*(v19 + 48))(v6, 1, v7) == 1))
  {
LABEL_10:

    goto LABEL_11;
  }

  v20 = *(v19 + 32);
  v20(v11, v6, v7);
  v21 = v31;
  v20(v31, v11, v7);
  v22 = sub_1C014C5E0();
  if (!v22)
  {
    (*(v19 + 8))(v21, v7);
    goto LABEL_10;
  }

  v33 = 0;
  v34 = 0;
  v23 = v22;
  sub_1C014C220();

  if (v34)
  {
    v24 = sub_1C014C200();

    v25 = v31;
    v26 = sub_1C014BCE0();
    v27 = sub_1C014C200();

    v28 = [v2 initWithTipIdentifier:v24 savedDate:v26 lastUsedVersion:v27];

    (*(v32 + 8))(v25, v7);
    return v28;
  }

  (*(v32 + 8))(v31, v7);
LABEL_11:
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_1C010BA6C()
{
  result = qword_1EBE06730;
  if (!qword_1EBE06730)
  {
    sub_1C014BD40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06730);
  }

  return result;
}

uint64_t type metadata accessor for TPSSavedTipEntry(uint64_t a1)
{
  result = qword_1EDD44A10;
  if (!qword_1EDD44A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C010BB18(uint64_t a1)
{
  result = sub_1C014BD40();
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

void *TPSAnalyticsEventSharedTip.__allocating_init(collectionID:correlationID:tipID:appBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a4;
  v16[9] = a5;
  v16[10] = a6;
  v16[11] = a7;
  v16[12] = a8;
  v17 = TipsAnalyticsEvent.init(identifier:)(0xD000000000000019, 0x80000001C015BC90);
  v18 = v17[11] == 0x6E776F6E6B6E75 && v17[12] == 0xE700000000000000;
  if (v18 || (sub_1C014C9F0() & 1) != 0)
  {
    v19 = qword_1EDD44C28;

    if (v19 != -1)
    {
      swift_once();
    }

    v20._countAndFlagsBits = 0xD000000000000043;
    v20._object = 0x80000001C015BCB0;
    TipsLog.error(_:)(v20);
  }

  return v17;
}

void *TPSAnalyticsEventSharedTip.init(collectionID:correlationID:tipID:appBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a1;
  v8[6] = a2;
  v8[7] = a3;
  v8[8] = a4;
  v8[9] = a5;
  v8[10] = a6;
  v8[11] = a7;
  v8[12] = a8;
  v9 = TipsAnalyticsEvent.init(identifier:)(0xD000000000000019, 0x80000001C015BC90);
  v10 = v9[11] == 0x6E776F6E6B6E75 && v9[12] == 0xE700000000000000;
  if (v10 || (sub_1C014C9F0() & 1) != 0)
  {
    v11 = qword_1EDD44C28;

    if (v11 != -1)
    {
      swift_once();
    }

    v12._countAndFlagsBits = 0xD000000000000043;
    v12._object = 0x80000001C015BCB0;
    TipsLog.error(_:)(v12);
  }

  return v9;
}

unint64_t sub_1C010BE6C()
{
  v1 = v0;
  v2 = sub_1C00F8F90(MEMORY[0x1E69E7CC0]);

  v3 = sub_1C014C200();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1C00F875C(v3, 0x697463656C6C6F63, 0xED000064695F6E6FLL, isUniquelyReferenced_nonNull_native);
  if (*(v1 + 64))
  {

    v5 = sub_1C014C200();
  }

  else
  {
    v5 = 0;
  }

  sub_1C00F7D6C(v5, 0xD000000000000012, 0x80000001C015BD00);

  v6 = sub_1C014C200();

  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C00F875C(v6, 0x64695F706974, 0xE600000000000000, v7);

  v8 = sub_1C014C200();

  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C00F875C(v8, 0x646E75625F707061, 0xED000064695F656CLL, v9);
  return v2;
}

uint64_t sub_1C010C058()
{
}

uint64_t TPSAnalyticsEventSharedTip.deinit()
{

  return v0;
}

uint64_t TPSAnalyticsEventSharedTip.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

uint64_t sub_1C010C238(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  v7 = a3();
  result = os_log_type_enabled(v6, v7);
  if (result)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1C010C980(a1, a2, &v11);
    _os_log_impl(&dword_1C00A7000, v6, v7, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1C68D7F30](v10, -1, -1);
    return MEMORY[0x1C68D7F30](v9, -1, -1);
  }

  return result;
}

uint64_t sub_1C010C324()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EDD44C58 = result;
  return result;
}

uint64_t sub_1C010C3B0()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EDD44C30 = result;
  return result;
}

uint64_t sub_1C010C440()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EDD44878 = result;
  return result;
}

uint64_t sub_1C010C4C8()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EDD44C70 = result;
  return result;
}

uint64_t sub_1C010C54C()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EDD44888 = result;
  return result;
}

uint64_t sub_1C010C5E4()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EDD44850 = result;
  return result;
}

uint64_t sub_1C010C674()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EDD44C18 = result;
  return result;
}

uint64_t sub_1C010C6FC()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EDD44860 = result;
  return result;
}

uint64_t sub_1C010C788()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EDD44AB8 = result;
  return result;
}

uint64_t sub_1C010C810()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EDD44AA0 = result;
  return result;
}

uint64_t sub_1C010C89C()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EBE06738 = result;
  return result;
}

id sub_1C010C924@<X0>(void *a1@<X0>, void **a2@<X1>, void **a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a4;
    swift_once();
    a4 = v8;
    a2 = v7;
  }

  v5 = *a2;
  *a4 = *a2;

  return v5;
}

unint64_t sub_1C010C980(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C010CA4C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1C00FC1C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1C010CA4C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C010CB58(a5, a6);
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
    result = sub_1C014C850();
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

void *sub_1C010CB58(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C010CBA4(a1, a2);
  sub_1C010CCD4(&unk_1F3F2C700);
  return v3;
}

void *sub_1C010CBA4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C0120B80(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C014C850();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C014C310();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C0120B80(v10, 0);
        result = sub_1C014C7F0();
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

uint64_t sub_1C010CCD4(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C010CDC0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1C010CDC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06740, &qword_1C0156818);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t getEnumTagSinglePayload for WorkItem(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WorkItem(uint64_t result, int a2, int a3)
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

unint64_t sub_1C010CF54()
{
  result = qword_1EDD44D28;
  if (!qword_1EDD44D28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD44D28);
  }

  return result;
}

id sub_1C010CFA0()
{
  v0 = sub_1C010CFCC();

  return v0;
}

id sub_1C010CFCC()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  sub_1C01403D0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0156330;
  *(inited + 32) = sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  sub_1C00FA23C(inited);
  swift_setDeallocating();
  v2 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v3 = sub_1C014C3B0();

  v4 = [v2 initWithArray_];

  sub_1C014C500();
  v5 = sub_1C014C4F0();

  [v0 setClasses:v5 forSelector:sel_updateSessionMapWithIdentifier_data_ argumentIndex:0 ofReply:0];

  sub_1C01403D0();
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1C0156330;
  *(v6 + 32) = sub_1C010074C(0, &qword_1EBE06748, 0x1E695DEF0);
  sub_1C00FA23C(v6);
  swift_setDeallocating();
  v7 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v8 = sub_1C014C3B0();

  v9 = [v7 initWithArray_];

  sub_1C014C500();
  v10 = sub_1C014C4F0();

  [v0 setClasses:v10 forSelector:sel_updateSessionMapWithIdentifier_data_ argumentIndex:1 ofReply:0];

  return v0;
}

uint64_t Trimmed.wrappedValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1C010D288(void *a1, uint64_t *a2)
{
  v4 = sub_1C014B930();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = a1[1];
  v13[0] = *a1;
  v13[1] = v8;
  sub_1C014B920();
  sub_1C00FCDA8();
  v9 = sub_1C014C6A0();
  v11 = v10;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t Trimmed.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C014B930();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = a1;
  v14[1] = a2;
  sub_1C014B920();
  sub_1C00FCDA8();
  v10 = sub_1C014C6A0();
  v12 = v11;
  (*(v7 + 8))(v9, v6);

  *v3 = v10;
  v3[1] = v12;
  return result;
}

void (*Trimmed.wrappedValue.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = sub_1C014B930();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[9] = v8;
  v9 = v1[1];
  *v5 = *v1;
  v5[1] = v9;

  return sub_1C010D594;
}

void sub_1C010D594(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[8];
  v5 = (*a1)[9];
  v8 = (*a1)[6];
  v7 = (*a1)[7];
  v9 = *a1;
  if (a2)
  {
    v9[2] = v3;
    v9[3] = v4;

    sub_1C014B920();
    sub_1C00FCDA8();
    v10 = sub_1C014C6A0();
    v12 = v11;
    (*(v6 + 8))(v5, v7);

    *v8 = v10;
    v8[1] = v12;
  }

  else
  {
    v9[4] = v3;
    v9[5] = v4;
    sub_1C014B920();
    sub_1C00FCDA8();
    v13 = sub_1C014C6A0();
    v15 = v14;
    (*(v6 + 8))(v5, v7);

    *v8 = v13;
    v8[1] = v15;
  }

  free(v5);

  free(v2);
}

TipsCore::Trimmed __swiftcall Trimmed.init(wrappedValue:)(Swift::String wrappedValue)
{
  object = wrappedValue._object;
  countAndFlagsBits = wrappedValue._countAndFlagsBits;
  v4 = v1;
  v5 = sub_1C014B930();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = 0;
  v4[1] = 0xE000000000000000;

  v15[0] = countAndFlagsBits;
  v15[1] = object;
  sub_1C014B920();
  sub_1C00FCDA8();
  v9 = sub_1C014C6A0();
  v11 = v10;
  (*(v6 + 8))(v8, v5);

  *v4 = v9;
  v4[1] = v11;
  result.value._object = v13;
  result.value._countAndFlagsBits = v12;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C010D7F8(uint64_t a1, int a2)
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

uint64_t sub_1C010D840(uint64_t result, int a2, int a3)
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

uint64_t sub_1C010D958()
{
  v1 = (v0 + OBJC_IVAR___TPSAsyncBlockOperation_asyncBlock);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1C010D9B0(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1C010E2AC, v4);
}

void sub_1C010DA44(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1C014BB60();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1C010DB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C010DBF8;
  v7[3] = &block_descriptor_1;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

void sub_1C010DBF8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1C010DC64@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t *a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___TPSAsyncBlockOperation_asyncBlock);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1C010E2E8;
  a2[1] = v6;
}

uint64_t sub_1C010DCF0(uint64_t *a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  a2(sub_1C010E2F0, v5);
}

uint64_t sub_1C010DD80(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR___TPSAsyncBlockOperation_asyncBlock);
  swift_beginAccess();
  *v6 = sub_1C010E2B4;
  v6[1] = v5;
}

uint64_t sub_1C010DE1C(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_1C010E2BC;
  v8[1] = v6;

  a3(v8);
}

id TPSAsyncBlockOperation.__allocating_init(asyncBlock:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___TPSAsyncBlockOperation_asyncBlock];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id TPSAsyncBlockOperation.init(asyncBlock:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___TPSAsyncBlockOperation_asyncBlock];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for TPSAsyncBlockOperation();
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1C010E004(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      a1 = sub_1C014BB60();
    }

    [v4 finishWithError_];
  }
}

id TPSAsyncBlockOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TPSAsyncBlockOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPSAsyncBlockOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C010E2F0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

id sub_1C010E338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___TPSSearchResultItem_correlationIdentifier];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v9[OBJC_IVAR___TPSSearchResultItem_contentType];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v9[OBJC_IVAR___TPSSearchResultItem_title];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v9[OBJC_IVAR___TPSSearchResultItem_body];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v9[OBJC_IVAR___TPSSearchResultItem_relevance] = 0x3FF0000000000000;
  v14 = &v9[OBJC_IVAR___TPSSearchResultItem_documentIdentifier];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v9[OBJC_IVAR___TPSSearchResultItem_collectionIdentifier];
  *v15 = a3;
  *(v15 + 1) = a4;
  v17.receiver = v9;
  v17.super_class = v4;
  return objc_msgSendSuper2(&v17, sel_init);
}

double SearchResult.Item.relevance.getter()
{
  v1 = OBJC_IVAR___TPSSearchResultItem_relevance;
  swift_beginAccess();
  return *(v0 + v1);
}

id SearchResult.Item.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t SearchResult.deviceExpertResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___TPSSearchResult_deviceExpertResponse;
  swift_beginAccess();
  return sub_1C010E838(v1 + v3, a1);
}

uint64_t sub_1C010E838(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066D0, &unk_1C0156640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id SearchResult.query.getter()
{
  v1 = OBJC_IVAR___TPSSearchResult_query;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t SearchResult.replaceItems(with:)(uint64_t result)
{
  if (result)
  {
    v2 = OBJC_IVAR___TPSSearchResult_items;
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + v2);
    v5 = OBJC_IVAR___TPSSearchResult_items;
    swift_beginAccess();
    *(v1 + v5) = v4;
  }

  return result;
}

Swift::Void __swiftcall SearchResult.append(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  if (a1._rawValue >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C014C750())
  {
    v4 = OBJC_IVAR___TPSSearchResult_items;
    swift_beginAccess();
    v5 = *(v1 + v4);
    v6 = rawValue;
    if (v5 >> 62)
    {
      v7 = sub_1C014C750();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    rawValue = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v37 = MEMORY[0x1E69E7CC0];

      sub_1C01090B4(0, v7 & ~(v7 >> 63), 0);
      if (v7 < 0)
      {
        __break(1u);
        return;
      }

      v35 = i;
      v8 = 0;
      v1 = v37;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1C68D7040](v8, v5);
        }

        else
        {
          v9 = *(v5 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = &v9[OBJC_IVAR___TPSSearchResultItem_documentIdentifier];
        swift_beginAccess();
        v12 = *v11;
        v13 = *(v11 + 1);

        v15 = *(v37 + 16);
        v14 = *(v37 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1C01090B4((v14 > 1), v15 + 1, 1);
        }

        ++v8;
        *(v37 + 16) = v15 + 1;
        v16 = v37 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v13;
      }

      while (v7 != v8);

      i = v35;
      rawValue = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v1 = MEMORY[0x1E69E7CC0];
    }

    v17 = sub_1C0110C68(v1);

    v18 = 0;
    v38 = rawValue;
    v34 = v6 & 0xFFFFFFFFFFFFFF8;
    v36 = v6 & 0xC000000000000001;
    v33 = v6;
    v19 = v6 + 32;
    v20 = v17 + 56;
    while (1)
    {
      if (v36)
      {
        v21 = MEMORY[0x1C68D7040](v18, v33);
      }

      else
      {
        if (v18 >= *(v34 + 16))
        {
          goto LABEL_39;
        }

        v21 = *(v19 + 8 * v18);
      }

      v22 = v21;
      if (__OFADD__(v18++, 1))
      {
        break;
      }

      v24 = &v21[OBJC_IVAR___TPSSearchResultItem_documentIdentifier];
      swift_beginAccess();
      if (!*(v17 + 16))
      {
        goto LABEL_18;
      }

      v25 = i;
      v27 = *v24;
      v26 = *(v24 + 1);
      sub_1C014CAE0();

      sub_1C014C2E0();
      v28 = sub_1C014CB10();
      v29 = -1 << *(v17 + 32);
      v1 = v28 & ~v29;
      if ((*(v20 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1))
      {
        rawValue = ~v29;
        while (1)
        {
          v30 = (*(v17 + 48) + 16 * v1);
          v31 = *v30 == v27 && v30[1] == v26;
          if (v31 || (sub_1C014C9F0() & 1) != 0)
          {
            break;
          }

          v1 = (v1 + 1) & rawValue;
          if (((*(v20 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        i = v25;
        if (v18 == v25)
        {
LABEL_36:

          v32 = v38;
          swift_beginAccess();
          sub_1C0108F40(v32);
          swift_endAccess();
          return;
        }
      }

      else
      {
LABEL_17:

        i = v25;
LABEL_18:
        sub_1C014C860();
        sub_1C014C890();
        sub_1C014C8A0();
        v1 = &v38;
        sub_1C014C870();
        if (v18 == i)
        {
          goto LABEL_36;
        }
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }
}

Swift::Void __swiftcall SearchResult.encode(with:)(NSCoder with)
{
  v3 = sub_1C014C270();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28[1] = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C014BF80();
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C014BE60();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR___TPSSearchResult_query;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  swift_beginAccess();
  type metadata accessor for SearchResult.Item();

  v15 = sub_1C014C3B0();

  v16 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

  swift_beginAccess();

  v17 = sub_1C014C3B0();

  v18 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

  v19 = OBJC_IVAR___TPSSearchResult_deviceExpertResponse;
  swift_beginAccess();
  if (!(*(v9 + 48))(v1 + v19, 1, v8))
  {
    v20 = v5;
    v21 = v29;
    (*(v9 + 16))(v11, v1 + v19, v8);
    sub_1C014BF70();
    sub_1C0110D24();
    v22 = sub_1C014BFA0();
    v24 = v23;
    (*(v21 + 8))(v7, v20);
    (*(v9 + 8))(v11, v8);
    sub_1C014C260();
    sub_1C014C240();
    if (v25)
    {
      v26 = sub_1C014C200();

      v27 = sub_1C014C200();
      [(objc_class *)with.super.isa encodeObject:v26 forKey:v27];
    }

    sub_1C0110D7C(v22, v24);
  }
}

id SearchResult.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1C014BF60();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066D0, &unk_1C0156640);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v36 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  type metadata accessor for SearchQuery();
  v13 = sub_1C014C5E0();
  if (!v13)
  {

LABEL_13:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v14 = v13;
  v42 = v7;
  v43 = ObjectType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067A8, &qword_1C0157B10);
  v15 = swift_allocObject();
  v44 = xmmword_1C0156390;
  *(v15 + 16) = xmmword_1C0156390;
  v16 = sub_1C010074C(0, &unk_1EDD44910, 0x1E695DEC8);
  *(v15 + 32) = v16;
  *(v15 + 40) = type metadata accessor for SearchResult.Item();
  sub_1C014C5F0();

  if (!v48)
  {

LABEL_12:
    sub_1C00F98F4(v47, &qword_1EBE06490, &qword_1C0155FA0);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067B0, &qword_1C0156890);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v41 = v12;
  v17 = v46;
  v18 = swift_allocObject();
  *(v18 + 16) = v44;
  *(v18 + 32) = v16;
  *(v18 + 40) = sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  sub_1C014C5F0();

  if (!v48)
  {

    goto LABEL_12;
  }

  *&v44 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067C0, &qword_1C0157160);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v39 = v46;
  v19 = sub_1C014BE60();
  v37 = *(v19 - 8);
  v20 = *(v37 + 56);
  v21 = v37 + 56;
  v22 = v41;
  v40 = v19;
  v20(v41, 1, 1);
  v23 = sub_1C014C5E0();
  v24 = v43;
  if (v23)
  {
    v38 = v21;
    v25 = v23;
    sub_1C014C230();

    sub_1C014BF50();
    sub_1C0110D24();
    sub_1C014BF90();
    v22 = v41;
    sub_1C00F98F4(v41, &qword_1EBE066D0, &unk_1C0156640);
    v27 = v40;
    (v20)(v10, 0, 1, v40);
    (*(v37 + 32))(v22, v10, v27);
    (v20)(v22, 0, 1, v27);
    v24 = v43;
  }

  v28 = v42;
  sub_1C010E838(v22, v42);
  v29 = objc_allocWithZone(v24);
  v30 = OBJC_IVAR___TPSSearchResult_deviceExpertResponse;
  (v20)(&v29[OBJC_IVAR___TPSSearchResult_deviceExpertResponse], 1, 1, v40);
  v31 = OBJC_IVAR___TPSSearchResult_items;
  v32 = MEMORY[0x1E69E7CC0];
  *&v29[OBJC_IVAR___TPSSearchResult_items] = MEMORY[0x1E69E7CC0];
  v33 = OBJC_IVAR___TPSSearchResult_suggestions;
  *&v29[OBJC_IVAR___TPSSearchResult_suggestions] = v32;
  *&v29[OBJC_IVAR___TPSSearchResult_query] = v14;
  swift_beginAccess();
  *&v29[v31] = v44;
  swift_beginAccess();
  *&v29[v33] = v39;
  v34 = v14;
  swift_beginAccess();
  sub_1C0107C90(v28, &v29[v30]);
  swift_endAccess();
  v45.receiver = v29;
  v45.super_class = v24;
  v35 = objc_msgSendSuper2(&v45, sel_init);

  sub_1C00F98F4(v28, &qword_1EBE066D0, &unk_1C0156640);
  sub_1C00F98F4(v41, &qword_1EBE066D0, &unk_1C0156640);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v35;
}

uint64_t SearchResult.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066D0, &unk_1C0156640);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25[-v3];
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1C014C800();
  v28 = v26;
  v29 = v27;
  MEMORY[0x1C68D6B10](0x6669746E65646928, 0xEC0000003A726569);
  v5 = OBJC_IVAR___TPSSearchResult_query;
  swift_beginAccess();
  v6 = (*(v0 + v5) + OBJC_IVAR___TPSSearchQuery_identifier);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];

  MEMORY[0x1C68D6B10](v7, v8);

  MEMORY[0x1C68D6B10](0x3A736D657469202CLL, 0xE800000000000000);
  swift_beginAccess();
  v9 = type metadata accessor for SearchResult.Item();

  v11 = MEMORY[0x1C68D6BE0](v10, v9);
  v13 = v12;

  MEMORY[0x1C68D6B10](v11, v13);

  MEMORY[0x1C68D6B10](0x736567677573202CLL, 0xEE003A736E6F6974);
  swift_beginAccess();

  v15 = MEMORY[0x1C68D6BE0](v14, MEMORY[0x1E69E6158]);
  v17 = v16;

  MEMORY[0x1C68D6B10](v15, v17);

  MEMORY[0x1C68D6B10](0x636E61437369202CLL, 0xEE003A64656C6C65);
  v18 = *(v1 + v5);
  v19 = OBJC_IVAR___TPSSearchQuery_isCancelled;
  swift_beginAccess();
  if (*(v18 + v19))
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*(v18 + v19))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x1C68D6B10](v20, v21);

  MEMORY[0x1C68D6B10](0xD000000000000018, 0x80000001C015BF10);
  v22 = OBJC_IVAR___TPSSearchResult_deviceExpertResponse;
  swift_beginAccess();
  sub_1C010E838(v1 + v22, v4);
  v23 = sub_1C014C290();
  MEMORY[0x1C68D6B10](v23);

  return v28;
}

Swift::Void __swiftcall SearchResult.Item.encode(with:)(NSCoder with)
{
  swift_beginAccess();

  v3 = sub_1C014C200();

  v4 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  swift_beginAccess();

  v5 = sub_1C014C200();

  v6 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = v1 + OBJC_IVAR___TPSSearchResultItem_correlationIdentifier;
  swift_beginAccess();
  if (*(v7 + 8))
  {

    v8 = sub_1C014C200();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];
  swift_unknownObjectRelease();

  v10 = v1 + OBJC_IVAR___TPSSearchResultItem_contentType;
  swift_beginAccess();
  if (*(v10 + 8))
  {

    v11 = sub_1C014C200();
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  v13 = v1 + OBJC_IVAR___TPSSearchResultItem_title;
  swift_beginAccess();
  if (*(v13 + 8))
  {

    v14 = sub_1C014C200();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v14 forKey:v15];
  swift_unknownObjectRelease();

  v16 = v1 + OBJC_IVAR___TPSSearchResultItem_body;
  swift_beginAccess();
  if (*(v16 + 8))
  {

    v17 = sub_1C014C200();
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];
  swift_unknownObjectRelease();

  v19 = OBJC_IVAR___TPSSearchResultItem_relevance;
  swift_beginAccess();
  v20 = *(v1 + v19);
  v21 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeDouble:v21 forKey:v20];
}

id SearchResult.Item.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

char *SearchResult.Item.init(coder:)(void *a1)
{
  v2 = v1;
  sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  v4 = sub_1C014C5E0();
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = sub_1C014C5E0();
  if (!v6)
  {

    a1 = v5;
LABEL_6:

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v7 = v6;
  v8 = [v2 initWithIdentifier:v5 collectionIdentifier:v6];

  v9 = v8;
  v10 = sub_1C014C5E0();
  if (v10)
  {
    v11 = v10;
    v12 = sub_1C014C230();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = &v9[OBJC_IVAR___TPSSearchResultItem_correlationIdentifier];
  swift_beginAccess();
  *v15 = v12;
  v15[1] = v14;

  v16 = sub_1C014C5E0();
  if (v16)
  {
    v17 = v16;
    v18 = sub_1C014C230();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = &v9[OBJC_IVAR___TPSSearchResultItem_contentType];
  swift_beginAccess();
  *v21 = v18;
  v21[1] = v20;

  v22 = sub_1C014C5E0();
  if (v22)
  {
    v23 = v22;
    v24 = sub_1C014C230();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = &v9[OBJC_IVAR___TPSSearchResultItem_title];
  swift_beginAccess();
  *v27 = v24;
  v27[1] = v26;

  v28 = sub_1C014C5E0();
  if (v28)
  {
    v29 = v28;
    v30 = sub_1C014C230();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v33 = &v9[OBJC_IVAR___TPSSearchResultItem_body];
  swift_beginAccess();
  *v33 = v30;
  v33[1] = v32;

  v34 = sub_1C014C200();
  [a1 decodeDoubleForKey_];
  v36 = v35;

  v37 = OBJC_IVAR___TPSSearchResultItem_relevance;
  swift_beginAccess();
  *&v9[v37] = v36;

  return v9;
}

id sub_1C0110918(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1C014C200();

  return v5;
}

uint64_t SearchResult.Item.description.getter()
{
  v1 = v0;
  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x6669746E65646928, 0xEC0000003A726569);
  v2 = (v0 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  MEMORY[0x1C68D6B10](v3, v4);

  MEMORY[0x1C68D6B10](0x63656C6C6F63202CLL, 0xED00003A6E6F6974);
  v5 = (v1 + OBJC_IVAR___TPSSearchResultItem_collectionIdentifier);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];

  MEMORY[0x1C68D6B10](v6, v7);

  MEMORY[0x1C68D6B10](0x3A656C746974202CLL, 0xE800000000000000);
  v8 = (v1 + OBJC_IVAR___TPSSearchResultItem_title);
  swift_beginAccess();
  v9 = v8[1];
  if (v9)
  {
    v10 = *v8;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v8[1];
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  MEMORY[0x1C68D6B10](v10, v11);

  MEMORY[0x1C68D6B10](0x6E65746E6F63202CLL, 0xEE003A6570795474);
  v12 = (v1 + OBJC_IVAR___TPSSearchResultItem_contentType);
  swift_beginAccess();
  v13 = v12[1];
  if (v13)
  {
    v14 = *v12;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = v12[1];
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  MEMORY[0x1C68D6B10](v14, v15);

  MEMORY[0x1C68D6B10](0x6176656C6572202CLL, 0xED0000203A79636ELL);
  swift_beginAccess();
  sub_1C014C4D0();
  return 0;
}

void (*sub_1C0110BE0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C68D7040](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1C0110C60;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0110C68(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1C68D6D20](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1C013C4D8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1C0110D24()
{
  result = qword_1EBE067A0;
  if (!qword_1EBE067A0)
  {
    sub_1C014BE60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE067A0);
  }

  return result;
}

uint64_t sub_1C0110D7C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t type metadata accessor for SearchResult(uint64_t a1)
{
  result = qword_1EDD44BA0;
  if (!qword_1EDD44BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C0110E24(uint64_t a1)
{
  sub_1C0110EE8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C0110EE8(uint64_t a1)
{
  if (!qword_1EDD44BB0)
  {
    sub_1C014BE60();
    v1 = sub_1C014C640();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD44BB0);
    }
  }
}

uint64_t sub_1C0110F58(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C014C750())
  {
    v4 = sub_1C010074C(0, &qword_1EBE067D0, 0x1E6964E80);
    v5 = sub_1C0111098();
    result = MEMORY[0x1C68D6D20](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1C68D7040](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1C013C628(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1C014C750();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1C0111098()
{
  result = qword_1EBE067D8;
  if (!qword_1EBE067D8)
  {
    sub_1C010074C(255, &qword_1EBE067D0, 0x1E6964E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE067D8);
  }

  return result;
}

uint64_t SupportFlowSessionAnalyticsClient.Error.hashValue.getter()
{
  sub_1C014CAE0();
  MEMORY[0x1C68D7300](0);
  return sub_1C014CB10();
}

uint64_t sub_1C0111188()
{
  sub_1C014CAE0();
  MEMORY[0x1C68D7300](0);
  return sub_1C014CB10();
}

uint64_t sub_1C01111F4()
{
  sub_1C014CAE0();
  MEMORY[0x1C68D7300](0);
  return sub_1C014CB10();
}

uint64_t SupportFlowSessionAnalyticsClient.__allocating_init()()
{
  v0 = swift_allocObject();
  SupportFlowSessionAnalyticsClient.init()();
  return v0;
}

uint64_t SupportFlowSessionAnalyticsClient.init()()
{
  v1 = v0;
  v2 = sub_1C014C580();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C014C0D0();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C014C5A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0111504();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8098], v4);
  sub_1C014C0B0();
  v14[1] = MEMORY[0x1E69E7CC0];
  sub_1C0111550();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067E0, &qword_1C01568E0);
  sub_1C01115A8();
  sub_1C014C700();
  *(v0 + 16) = sub_1C014C5D0();
  v8 = objc_allocWithZone(TPSServiceConnection);
  v9 = sub_1C014C200();
  v10 = [v8 initWithServiceName_];

  *(v1 + 24) = v10;
  v11 = v10;
  v12 = sub_1C010CFCC();
  [v11 setRemoteInterfaceInstance_];

  return v1;
}

unint64_t sub_1C0111504()
{
  result = qword_1EDD44B68;
  if (!qword_1EDD44B68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD44B68);
  }

  return result;
}

unint64_t sub_1C0111550()
{
  result = qword_1EDD44B70;
  if (!qword_1EDD44B70)
  {
    sub_1C014C580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD44B70);
  }

  return result;
}

unint64_t sub_1C01115A8()
{
  result = qword_1EDD44B90;
  if (!qword_1EDD44B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE067E0, &qword_1C01568E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD44B90);
  }

  return result;
}

uint64_t SupportFlowSessionAnalyticsClient.updateSessionMap(identifier:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C0111634, 0, 0);
}

uint64_t sub_1C0111634()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v9 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v5[2] = 0xD000000000000022;
  v5[3] = 0x80000001C015C0F0;
  v5[4] = v2;
  v5[5] = sub_1C01121C4;
  v5[6] = v4;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1C011177C;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000022, 0x80000001C015C0F0, sub_1C01121D0, v5, v7);
}

uint64_t sub_1C011177C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1C01118B8;
  }

  else
  {

    v2 = sub_1C01118A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C01118B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C0111924(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1C014C200();
  v8 = sub_1C014BCB0();
  [a1 updateSessionMapWithIdentifier:v7 data:v8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067F0, &unk_1C0156A08);
  return sub_1C014C440();
}

uint64_t sub_1C01119E0()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  v2[2] = 0xD000000000000014;
  v2[3] = 0x80000001C015C120;
  v2[4] = v1;
  v2[5] = sub_1C0111C78;
  v2[6] = 0;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1C0111AF8;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000014, 0x80000001C015C120, sub_1C0112460, v2, v4);
}

uint64_t sub_1C0111AF8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1C0111C14;
  }

  else
  {

    v2 = sub_1C011245C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C0111C14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C0111C78(void *a1)
{
  [a1 logForAppTerminate];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067F0, &unk_1C0156A08);
  return sub_1C014C440();
}

uint64_t SupportFlowSessionAnalyticsClient.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C0111D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v23[1] = a6;
  v24 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067F0, &unk_1C0156A08);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - v12;
  if (qword_1EDD44C28 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDD44C30;
  aBlock._countAndFlagsBits = 0;
  aBlock._object = 0xE000000000000000;
  sub_1C014C800();
  MEMORY[0x1C68D6B10](0xD000000000000034, 0x80000001C015C190);
  MEMORY[0x1C68D6B10](a2, a3);
  v15 = aBlock;
  aBlock._countAndFlagsBits = v14;
  TipsLog.debug(_:)(v15);

  v16 = [*(a4 + 24) connection];
  (*(v11 + 16))(v13, a1, v10);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v17, v13, v10);
  v30 = sub_1C0112374;
  v31 = v18;
  aBlock._countAndFlagsBits = MEMORY[0x1E69E9820];
  aBlock._object = 1107296256;
  v28 = sub_1C0130E34;
  v29 = &block_descriptor_2;
  v19 = _Block_copy(&aBlock);

  v20 = [v16 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);

  sub_1C014C6E0();
  swift_unknownObjectRelease();
  sub_1C00FC1C0(&aBlock, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067F8, &qword_1C0156A18);
  if (swift_dynamicCast())
  {
    v24(v25, a1);
    swift_unknownObjectRelease();
  }

  else
  {
    v26[0] = qword_1EDD44C30;
    v21._countAndFlagsBits = 0xD000000000000079;
    v21._object = 0x80000001C015C1D0;
    TipsLog.error(_:)(v21);
    sub_1C0112408();
    v26[0] = swift_allocError();
    sub_1C014C430();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
}

uint64_t sub_1C0112090(void *a1)
{
  if (qword_1EDD44C28 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0xD000000000000058, 0x80000001C015C250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06808, &unk_1C0156A20);
  sub_1C014C8B0();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  TipsLog.error(_:)(v2);

  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067F0, &unk_1C0156A08);
  return sub_1C014C430();
}

unint64_t sub_1C01121E8()
{
  result = qword_1EBE067E8;
  if (!qword_1EBE067E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE067E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SupportFlowSessionAnalyticsClient.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SupportFlowSessionAnalyticsClient.Error(_WORD *result, int a2, int a3)
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

uint64_t sub_1C0112374(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067F0, &unk_1C0156A08);

  return sub_1C0112090(a1);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C0112408()
{
  result = qword_1EBE06800;
  if (!qword_1EBE06800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06800);
  }

  return result;
}

uint64_t sub_1C01124D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065A8, &qword_1C0156720);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C0156A30;
  *(v0 + 32) = sub_1C014C230();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1C014C230();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1C014C230();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1C014C230();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_1C014C230();
  *(v0 + 104) = v5;
  result = sub_1C014C230();
  *(v0 + 112) = result;
  *(v0 + 120) = v7;
  *(v0 + 128) = 0xD000000000000024;
  *(v0 + 136) = 0x80000001C015C2F0;
  *(v0 + 144) = 0xD000000000000023;
  *(v0 + 152) = 0x80000001C015C320;
  qword_1EBE06810 = v0;
  return result;
}

id sub_1C01125D0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1C014B930();
  v68 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1C0112D60();
  v7 = v6;
  v8 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
  if (qword_1EBE06368 != -1)
  {
    swift_once();
  }

  v79 = qword_1EBE06810;

  sub_1C0108E4C(v9);
  v10 = v79;
  v79 = MEMORY[0x1E69E7CD0];
  sub_1C011350C(v10);

  v11 = sub_1C014C3B0();

  [v8 setFetchAttributes_];

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065A8, &qword_1C0156720);
  v13 = swift_allocObject();
  v71 = xmmword_1C0156330;
  *(v13 + 16) = xmmword_1C0156330;
  *(v13 + 32) = sub_1C014C230();
  *(v13 + 40) = v14;
  v15 = sub_1C014C3B0();

  [v8 setProtectionClasses_];

  v69 = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = v71;
  result = [objc_opt_self() spotlightBundleIdentifier];
  if (result)
  {
    v18 = result;
    v19 = sub_1C014C230();
    v21 = v20;

    *(v16 + 32) = v19;
    *(v16 + 40) = v21;
    v22 = sub_1C014C3B0();

    *&v71 = v8;
    [v8 setBundleIDs_];

    v23 = OBJC_IVAR___TPSSearchQuery_matchingStyle;
    swift_beginAccess();
    v24 = *(v2 + v23);
    if (v24 != 3)
    {
      v25 = OBJC_IVAR___TPSSearchQuery_options;
      swift_beginAccess();
      if (v24 != 2 || (*(v2 + v25) & 1) == 0)
      {
        v26 = (v2 + OBJC_IVAR___TPSSearchQuery_searchTerm);
        swift_beginAccess();
        v27 = *v26;
        v28 = v26[1];
        v78[0] = MEMORY[0x1E69E7CC0];

        v29 = sub_1C011366C(v27, v28, 1);
        sub_1C0108E4C(v29);
        v30 = sub_1C011366C(v27, v28, 0);

        sub_1C0108E4C(v30);
        if (*(v78[0] + 16))
        {
          v31 = sub_1C014C3B0();
        }

        else
        {

          v31 = 0;
        }

        v32 = v71;
        [v71 setRankingQueries_];

        v33 = [v32 rankingQueries];
        if (v33)
        {
          v34 = v33;
          v35 = sub_1C014C3C0();

          v36 = *(v35 + 16);

          if (v36)
          {
            v37 = swift_allocObject();
            *(v37 + 16) = v36;
            v38 = (v2 + OBJC_IVAR___TPSSearchQuery_rankingModifier);
            v40 = *(v2 + OBJC_IVAR___TPSSearchQuery_rankingModifier);
            v39 = *(v2 + OBJC_IVAR___TPSSearchQuery_rankingModifier + 8);
            *v38 = sub_1C011384C;
            v38[1] = v37;
            sub_1C0113884(v40, v39);
          }
        }
      }
    }

    v41 = OBJC_IVAR___TPSSearchQuery_options;
    swift_beginAccess();
    if ((*(v2 + v41) & 2) != 0)
    {
      v67 = v7;
      v42 = (v2 + OBJC_IVAR___TPSSearchQuery_searchTerm);
      swift_beginAccess();
      v43 = v42[1];
      v76 = *v42;
      v77 = v43;

      sub_1C014B920();
      sub_1C00FCDA8();
      v44 = sub_1C014C6A0();
      v46 = v45;
      (*(v68 + 8))(v5, v3);

      v76 = v44;
      v77 = v46;
      v47 = sub_1C014C6C0();
      v49 = v48;

      v50 = 4;
      v51 = &unk_1F3F2C750;
      do
      {
        v52 = *(v51 - 1);
        v53 = *v51;
        v76 = v47;
        v77 = v49;
        v74 = v52;
        v75 = v53;
        v72 = 92;
        v73 = 0xE100000000000000;

        MEMORY[0x1C68D6B10](v52, v53);
        v47 = sub_1C014C6B0();
        v55 = v54;

        v49 = v55;
        v51 += 2;
        --v50;
      }

      while (v50);
      v76 = v47;
      v77 = v55;
      MEMORY[0x1C68D6B10](42, 0xE100000000000000);
      v56 = sub_1C014C200();

      v57 = v71;
      [v71 setCompletionString_];

      [v57 setCompletionResultCount_];
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1C0156A40;
      *(v58 + 32) = sub_1C014C230();
      *(v58 + 40) = v59;
      *(v58 + 48) = sub_1C014C230();
      *(v58 + 56) = v60;
      *(v58 + 64) = sub_1C014C230();
      *(v58 + 72) = v61;
      v62 = sub_1C014C3B0();

      [v57 setCompletionAttributes_];
    }

    v63 = objc_allocWithZone(MEMORY[0x1E6964E68]);
    v64 = v71;
    v65 = sub_1C014C200();

    v66 = [v63 initWithQueryString:v65 queryContext:v64];

    return v66;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0112D60()
{
  v1 = v0;
  v2 = OBJC_IVAR___TPSSearchQuery_matchingStyle;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 3)
  {
    v4 = (v1 + OBJC_IVAR___TPSSearchQuery_searchTerm);
    swift_beginAccess();
    v5 = *v4;
  }

  else
  {
    v6 = (v1 + OBJC_IVAR___TPSSearchQuery_searchTerm);
    swift_beginAccess();
    v7 = *v6;
    v8 = v6[1];
    v9 = OBJC_IVAR___TPSSearchQuery_options;
    swift_beginAccess();
    v10 = (*(v1 + v9) >> 2) & 1;

    v11 = sub_1C0113000(v7, v8, v10, v3);
    v13 = v12;

    if (*(v1 + v9))
    {
      sub_1C014C800();

      v20 = 0xD000000000000013;
      v21 = 0x80000001C015C350;
    }

    else
    {
      v20 = 0x203D3D202A2ALL;
      v21 = 0xE600000000000000;
    }

    MEMORY[0x1C68D6B10](v11, v13);

    v14 = v20;
    v15 = v21;
    v16 = OBJC_IVAR___TPSSearchQuery_contentTypeFilter;
    swift_beginAccess();
    v17 = sub_1C0113338(*(v1 + v16));
    if (v18)
    {
      MEMORY[0x1C68D6B10](v17);

      MEMORY[0x1C68D6B10](539371040, 0xE400000000000000);

      v14 = v20;
      v15 = v21;
    }

    MEMORY[0x1C68D6B10](v14, v15);

    MEMORY[0x1C68D6B10](41, 0xE100000000000000);
    return 40;
  }

  return v5;
}

uint64_t sub_1C0113000(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v28 = a4;
  HIDWORD(v27) = a3;
  v6 = sub_1C014B930();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v34 = a2;
  sub_1C014B920();
  sub_1C00FCDA8();
  v10 = sub_1C014C6A0();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v33 = v10;
  v34 = v12;
  v13 = sub_1C014C6C0();
  v15 = v14;

  v16 = 4;
  v17 = &unk_1F3F2C750;
  do
  {
    v18 = *(v17 - 1);
    v19 = *v17;
    v33 = v13;
    v34 = v15;
    v31 = v18;
    v32 = v19;
    v29 = 92;
    v30 = 0xE100000000000000;

    MEMORY[0x1C68D6B10](v18, v19);
    v13 = sub_1C014C6B0();
    v21 = v20;

    v15 = v21;
    v17 += 2;
    --v16;
  }

  while (v16);
  if ((v27 & 0x100000000) != 0)
  {
    v22 = 808923238;
  }

  else
  {
    v22 = 0;
  }

  if ((v27 & 0x100000000) != 0)
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  if (v28 <= 1)
  {
    if (!v28)
    {
      v33 = 39;
      v34 = 0xE100000000000000;
      MEMORY[0x1C68D6B10](v13, v21);

      v24 = 0x74776463272ALL;
      v25 = 0xE600000000000000;
LABEL_16:
      MEMORY[0x1C68D6B10](v24, v25);
      MEMORY[0x1C68D6B10](v22, v23);

      return v33;
    }

    if (v28 == 1)
    {
      v33 = 39;
      v34 = 0xE100000000000000;
      MEMORY[0x1C68D6B10](v13, v21);

      v24 = 0x7477646327;
      v25 = 0xE500000000000000;
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (v28 == 2)
  {

    v33 = 39;
    v34 = 0xE100000000000000;
    MEMORY[0x1C68D6B10](v13, v21);

    MEMORY[0x1C68D6B10](39, 0xE100000000000000);
    return v33;
  }

  if (v28 != 3)
  {
LABEL_21:
    v33 = v28;
    result = sub_1C014CA30();
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_1C0113338(unint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 0xD000000000000025;
    }

    if (a1 == 4)
    {
      return 0xD00000000000002BLL;
    }
  }

  else
  {
    if (a1 < 2)
    {
      return 0;
    }

    if (a1 == 2)
    {
      return 0xD00000000000001FLL;
    }
  }

  result = sub_1C014CA30();
  __break(1u);
  return result;
}

uint64_t sub_1C0113468()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065A8, &qword_1C0156720);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C0156A50;
  *(v0 + 32) = sub_1C014C230();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1C014C230();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1C014C230();
  *(v0 + 72) = v3;
  result = sub_1C014C230();
  *(v0 + 80) = result;
  *(v0 + 88) = v5;
  off_1EBE06818 = v0;
  return result;
}

uint64_t sub_1C011350C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = result + 40;
  v4 = MEMORY[0x1E69E7CC0];
  v13 = result + 40;
  do
  {
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 1);
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v9 = sub_1C013C4D8(&v14, v8, v7);

      if (v9)
      {
        break;
      }

      v5 += 2;
      if (v2 == v1)
      {
        return v4;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v15 = v4;
    if ((result & 1) == 0)
    {
      result = sub_1C01090B4(0, *(v4 + 16) + 1, 1);
      v4 = v15;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_1C01090B4((v10 > 1), v11 + 1, 1);
      v4 = v15;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    v3 = v13;
  }

  while (v2 != v1);
  return v4;
}

uint64_t sub_1C011366C(uint64_t a1, unint64_t a2, char a3)
{
  v3 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v5 = qword_1F3F2C788[v3 + 4];
    if (v5 != 2)
    {
      break;
    }

LABEL_4:
    if (++v3 == 4)
    {
      return v23;
    }
  }

  v18 = v3;
  result = sub_1C0113000(a1, a2, a3 & 1, v5);
  v19 = result;
  v20 = v7;
  if (qword_1EBE06370 != -1)
  {
    result = swift_once();
  }

  v8 = off_1EBE06818;
  v9 = *(off_1EBE06818 + 2);
  if (!v9)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_3:

    sub_1C0108E4C(v4);
    v3 = v18;
    goto LABEL_4;
  }

  v10 = 0;
  v11 = (off_1EBE06818 + 40);
  v4 = MEMORY[0x1E69E7CC0];
  while (v10 < v8[2])
  {
    v21 = *(v11 - 1);
    v22 = *v11;
    swift_bridgeObjectRetain_n();
    MEMORY[0x1C68D6B10](61, 0xE100000000000000);
    MEMORY[0x1C68D6B10](v19, v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1C00FE898(0, *(v4 + 2) + 1, 1, v4);
    }

    v13 = *(v4 + 2);
    v12 = *(v4 + 3);
    if (v13 >= v12 >> 1)
    {
      v4 = sub_1C00FE898((v12 > 1), v13 + 1, 1, v4);
    }

    ++v10;

    *(v4 + 2) = v13 + 1;
    v14 = &v4[16 * v13];
    *(v14 + 4) = v21;
    *(v14 + 5) = v22;
    v11 += 2;
    if (v9 == v10)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0113884(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C0113894(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C014B930();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v23 = a2;
  sub_1C014B920();
  sub_1C00FCDA8();
  v8 = sub_1C014C6A0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v22 = v8;
  v23 = v10;
  v11 = sub_1C014C6C0();
  v13 = v12;

  v14 = 4;
  v15 = &unk_1F3F2C750;
  do
  {
    v16 = v13;
    v17 = *(v15 - 1);
    v18 = *v15;
    v22 = v11;
    v23 = v16;
    v21[2] = v17;
    v21[3] = v18;
    v21[0] = 92;
    v21[1] = 0xE100000000000000;

    MEMORY[0x1C68D6B10](v17, v18);
    v11 = sub_1C014C6B0();
    v13 = v19;

    v15 += 2;
    --v14;
  }

  while (v14);
  return v11;
}

uint64_t WorkItemDebouncer.__allocating_init(queue:debounceInterval:)(uint64_t a1, double a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = a2;
  return result;
}

uint64_t WorkItemDebouncer.init(queue:debounceInterval:)(uint64_t a1, double a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  *(v2 + 32) = a2;
  return v2;
}

uint64_t WorkItemDebouncer.deinit()
{
  if (*(v0 + 24))
  {

    sub_1C014C110();
  }

  *(v0 + 24) = 0;

  return v0;
}

uint64_t WorkItemDebouncer.__deallocating_deinit()
{
  if (*(v0 + 24))
  {

    sub_1C014C110();
  }

  *(v0 + 24) = 0;

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void sub_1C0113BB4(const void *a1)
{
  v2 = _Block_copy(a1);
  sub_1C0113BF4(v2, *(v1 + 32));

  _Block_release(v2);
}

uint64_t sub_1C0113BF4(const void *a1, double a2)
{
  v3 = v2;
  v5 = sub_1C014C0F0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v30 - v9;
  v34 = sub_1C014C0A0();
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C014C0D0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v18 = _Block_copy(a1);
  v19 = *(v3 + 24);
  v37 = v6;
  v38 = v5;
  if (v19)
  {

    sub_1C014C110();
  }

  *(v3 + 24) = 0;

  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v20;
  aBlock[4] = sub_1C0114314;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C011431C;
  aBlock[3] = &block_descriptor_3;
  v22 = _Block_copy(aBlock);
  _Block_copy(v18);

  v23 = v17;
  sub_1C014C0C0();
  v32 = _Block_copy(v22);
  (*(v12 + 16))(v15, v17, v11);
  v39 = MEMORY[0x1E69E7CC0];
  sub_1C0104390();
  v31 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066C0, &unk_1C01576F0);
  sub_1C01043E8();
  sub_1C014C700();
  sub_1C014C120();
  swift_allocObject();
  v24 = sub_1C014C100();
  _Block_release(v22);
  (*(v12 + 8))(v23, v11);

  *(v3 + 24) = v24;

  v25 = v35;
  sub_1C014C0E0();
  v26 = v36;
  sub_1C014C140();
  v27 = v38;
  v28 = *(v37 + 8);
  result = v28(v25, v38);
  if (*(v3 + 24))
  {

    _Block_release(v31);
    sub_1C014C590();

    return v28(v26, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C0114048(const void *a1, double a2)
{
  v3 = _Block_copy(a1);
  sub_1C0113BF4(v3, a2);

  _Block_release(v3);
}

uint64_t sub_1C0114094()
{
  if (*(v0 + 24))
  {

    sub_1C014C110();
  }

  *(v0 + 24) = 0;
}

uint64_t sub_1C01140FC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WorkItemDebouncer();
  result = sub_1C014BFC0();
  *a2 = result;
  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1C01142AC(uint64_t a1, uint64_t a2)
{
  (*(a1 + 16))();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_1C011431C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Bool __swiftcall TPSAppController.hasLocalVariant(tip:)(TPSTip *tip)
{
  v2 = [(TPSDocument *)tip correlationID];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 tipForCorrelationIdentifier_];

    if (v4)
    {

      LOBYTE(v2) = 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2;
}

Swift::Void __swiftcall TPSAppController.logSharedTipDisplayed(tip:isEligible:)(TPSTip *tip, Swift::Bool isEligible)
{
  v3 = v2;
  if (isEligible)
  {
    v6 = [(TPSDocument *)tip identifier];
    if (!v6)
    {
      sub_1C014C230();
      v6 = sub_1C014C200();
    }

    v7 = [v3 collectionIdentifierForTipIdentifier_];

    sub_1C014C230();
    v9 = v8;

LABEL_10:
    v16 = 0;
    goto LABEL_19;
  }

  v10 = [(TPSDocument *)tip correlationID];
  if (v10)
  {
    v11 = v10;
    v12 = [v3 tipForCorrelationIdentifier_];

    if (v12)
    {
      v13 = [v12 identifier];
      if (!v13)
      {
        sub_1C014C230();
        v13 = sub_1C014C200();
      }

      v14 = [v3 collectionIdentifierForTipIdentifier_];

      sub_1C014C230();
      v9 = v15;

      goto LABEL_10;
    }
  }

  v17 = [(TPSDocument *)tip availabilityContent];
  if (v17)
  {
    v18 = v17;
    v19 = [objc_opt_self() textRepresentationForContent_];

    if (v19)
    {
      v20 = sub_1C014C230();
      v16 = v21;

      v22 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v22 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        v9 = 0;
        goto LABEL_19;
      }
    }
  }

  v9 = 0;
  v16 = 0x80000001C015C460;
LABEL_19:
  v23 = [(TPSDocument *)tip identifier];
  if (!v23)
  {
    sub_1C014C230();
    v23 = sub_1C014C200();
  }

  v24 = [(TPSDocument *)tip correlationID];
  if (v9)
  {
    v25 = sub_1C014C200();
  }

  else
  {
    v25 = 0;
  }

  v26 = [(TPSDocument *)tip variantID];
  if (v26)
  {
    if (v16)
    {
LABEL_26:
      v27 = sub_1C014C200();

      goto LABEL_29;
    }
  }

  else
  {
    sub_1C014C230();
    v26 = sub_1C014C200();

    if (v16)
    {
      goto LABEL_26;
    }
  }

  v27 = 0;
LABEL_29:
  v28 = [objc_opt_self() eventWithTipID:v23 correlationID:v24 collectionID:v25 variantID:v26 message:v27 isEligible:isEligible];

  [v28 log];
}

void _sSo16TPSAppControllerC8TipsCoreE28logInvalidSharedTipDisplayed3tipySo6TPSTipC_tF_0(void *a1)
{
  v2 = [a1 identifier];
  if (!v2)
  {
    sub_1C014C230();
    v2 = sub_1C014C200();
  }

  v3 = [a1 variantID];
  if (!v3)
  {
    sub_1C014C230();
    v3 = sub_1C014C200();
  }

  v4 = [objc_opt_self() eventWithTipID:v2 invalidVariantID:v3];

  [v4 log];
}

void sub_1C01149D0()
{
  v0 = [objc_opt_self() tps_userLanguageCode];
  v1 = sub_1C014C230();
  v3 = v2;

  qword_1EBE06820 = v1;
  qword_1EBE06828 = v3;
  qword_1EBE06830 = 0x3FF0000000000000;
}

TipsCore::TipSpotlightViewType::AssetConfiguration __swiftcall TipSpotlightViewType.AssetConfiguration.init(language:heightToWidthRatio:)(Swift::String language, Swift::Double heightToWidthRatio)
{
  *v2 = language;
  *(v2 + 16) = heightToWidthRatio;
  result.language = language;
  result.heightToWidthRatio = heightToWidthRatio;
  return result;
}

uint64_t static TipSpotlightViewType.AssetConfiguration.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBE06378 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_1EBE06828;
  v3 = qword_1EBE06830;
  *a1 = qword_1EBE06820;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t TipSpotlightViewType.AssetConfiguration.language.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TipSpotlightViewType.AssetConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06838, &qword_1C0156B40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0114D60();
  sub_1C014CB20();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = 0;
  v9 = sub_1C014C940();
  v12 = v10;
  if (v10)
  {
    v13 = v9;
  }

  else
  {
    if (qword_1EBE06378 != -1)
    {
      swift_once();
    }

    v13 = qword_1EBE06820;
    v12 = qword_1EBE06828;
  }

  v17 = 1;
  v14 = sub_1C014C950();
  if (v15)
  {
    if (qword_1EBE06378 != -1)
    {
      swift_once();
    }

    v14 = qword_1EBE06830;
  }

  (*(v6 + 8))(v8, v5);
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C0114D60()
{
  result = qword_1EDD44948;
  if (!qword_1EDD44948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD44948);
  }

  return result;
}

uint64_t sub_1C0114DB4()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x65676175676E616CLL;
  }
}

uint64_t sub_1C0114DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1C014C9F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C015C4D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C014C9F0();

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

uint64_t sub_1C0114EE4(uint64_t a1)
{
  v2 = sub_1C0114D60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0114F20(uint64_t a1)
{
  v2 = sub_1C0114D60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TipSpotlightViewType.AssetConfiguration.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06840, &qword_1C0156B48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0114D60();
  sub_1C014CB30();
  v10 = 0;
  v6 = v8;
  sub_1C014C970();
  if (!v6)
  {
    v9 = 1;
    sub_1C014C980();
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t TipSpotlightViewProxy.assetConfiguration.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t TipSpotlightViewProxy.assetConfiguration.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];

  *v1 = v2;
  v1[1] = v3;
  v1[2] = v4;
  return result;
}

uint64_t TipSpotlightViewProxy.bodyContent.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

void __swiftcall TipSpotlightViewProxy.init()(TipsCore::TipSpotlightViewProxy *__return_ptr retstr)
{
  retstr->bodyContent.value._rawValue = 0;
  if (qword_1EBE06378 != -1)
  {
    v4 = retstr;
    swift_once();
    retstr = v4;
  }

  v2 = qword_1EBE06828;
  v3 = *&qword_1EBE06830;
  retstr->assetConfiguration.language._countAndFlagsBits = qword_1EBE06820;
  retstr->assetConfiguration.language._object = v2;
  retstr->assetConfiguration.heightToWidthRatio = v3;
}

void __swiftcall TipSpotlightViewProxy.init(assetConfiguration:bodyContent:)(TipsCore::TipSpotlightViewProxy *__return_ptr retstr, TipsCore::TipSpotlightViewType::AssetConfiguration assetConfiguration, Swift::OpaquePointer_optional bodyContent)
{
  v3 = *(assetConfiguration.language._countAndFlagsBits + 8);
  v4 = *(assetConfiguration.language._countAndFlagsBits + 16);
  retstr->assetConfiguration.language._countAndFlagsBits = *assetConfiguration.language._countAndFlagsBits;
  retstr->assetConfiguration.language._object = v3;
  retstr->assetConfiguration.heightToWidthRatio = v4;
  retstr->bodyContent.value._rawValue = assetConfiguration.language._object;
}

uint64_t sub_1C0115288@<X0>(void *a1@<X8>)
{
  a1[3] = 0;
  if (qword_1EBE06378 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_1EBE06828;
  v3 = qword_1EBE06830;
  *a1 = qword_1EBE06820;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_1C0115308@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_1C011531C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];

  *v1 = v2;
  v1[1] = v3;
  v1[2] = v4;
  return result;
}

uint64_t sub_1C0115388(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1C01153EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  v31 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06848, &qword_1C0156B50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  if (qword_1EBE06378 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0115CD4();

  sub_1C014CB20();
  if (v2)
  {
  }

  else
  {
    LOBYTE(v27) = 0;
    sub_1C0115D28();
    sub_1C014C960();
    v9 = v29;
    if (v29)
    {
      v10 = v30;
      v11 = v28;
    }

    else
    {
      v11 = qword_1EBE06820;
      v9 = qword_1EBE06828;
      v10 = qword_1EBE06830;
    }

    LOBYTE(v27) = 1;
    sub_1C0115D7C();
    sub_1C014C960();
    v12 = v29;
    if (v29 >> 60 == 15)
    {
      (*(v5 + 8))(v7, v4);
      v13 = 0;
    }

    else
    {
      v25 = v11;
      v14 = v28;
      v15 = objc_opt_self();
      v24 = v14;
      v16 = sub_1C014BCB0();
      v28 = 0;
      v17 = [v15 JSONObjectWithData:v16 options:0 error:&v28];

      if (v17)
      {
        v18 = v28;
        sub_1C014C6E0();
        swift_unknownObjectRelease();
        sub_1C01166E0(v24, v12);
        (*(v5 + 8))(v7, v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06850, &qword_1C0156B58);
        v19 = swift_dynamicCast();
        v13 = v27;
        if (!v19)
        {
          v13 = 0;
        }
      }

      else
      {
        v20 = v28;
        v21 = sub_1C014BB70();

        swift_willThrow();
        sub_1C01166E0(v24, v12);
        (*(v5 + 8))(v7, v4);
        v13 = 0;
      }

      v11 = v25;
    }

    v22 = v26;
    *v26 = v11;
    v22[1] = v9;
    v22[2] = v10;
    v22[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t TipSpotlightViewProtocol.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v46 = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06848, &qword_1C0156B50);
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 24))(a2, a3);
  v14 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v14);
  sub_1C0115CD4();
  v15 = v40;
  sub_1C014CB20();
  if (v15)
  {
    (*(v11 + 8))(v13, a2);
  }

  else
  {
    v16 = a3;
    v17 = v38;
    v40 = v11;
    LOBYTE(v42) = 0;
    sub_1C0115D28();
    v18 = v39;
    sub_1C014C960();
    v19 = v44;
    if (v44)
    {
      v20 = v45;
      v21 = v43;
      v22 = v13;
    }

    else
    {
      v22 = v13;
      if (qword_1EBE06378 != -1)
      {
        swift_once();
      }

      v21 = qword_1EBE06820;
      v20 = qword_1EBE06830;
    }

    v23 = v16;
    v43 = v21;
    v44 = v19;
    v45 = v20;
    (*(v16 + 40))(&v43, a2, v16);
    LOBYTE(v42) = 1;
    sub_1C0115D7C();
    v24 = v10;
    sub_1C014C960();
    v26 = v44;
    if (v44 >> 60 != 15)
    {
      v27 = v43;
      v34 = objc_opt_self();
      v35 = v27;
      v36 = v26;
      v28 = sub_1C014BCB0();
      v43 = 0;
      v29 = [v34 JSONObjectWithData:v28 options:0 error:&v43];

      if (v29)
      {
        v30 = v43;
        sub_1C014C6E0();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06850, &qword_1C0156B58);
        if (swift_dynamicCast())
        {
          v31 = v42;
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v32 = v43;
        v33 = sub_1C014BB70();

        swift_willThrow();
        v31 = 0;
      }

      (*(v23 + 64))(v31, a2, v23);
      sub_1C01166E0(v35, v36);
    }

    (*(v17 + 8))(v24, v18);
    (*(v40 + 32))(v37, v22, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v41);
}

unint64_t sub_1C0115CD4()
{
  result = qword_1EDD44A90;
  if (!qword_1EDD44A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD44A90);
  }

  return result;
}

unint64_t sub_1C0115D28()
{
  result = qword_1EBE05CD0;
  if (!qword_1EBE05CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE05CD0);
  }

  return result;
}

unint64_t sub_1C0115D7C()
{
  result = qword_1EBE05D30;
  if (!qword_1EBE05D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE05D30);
  }

  return result;
}

uint64_t sub_1C0115DF4(void *a1, void *a2, unint64_t a3, uint64_t a4, double a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06858, &qword_1C0156B60);
  v24 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0115CD4();
  sub_1C014CB30();
  v26 = a2;
  v27 = a3;
  v28 = a5;
  v25 = 0;
  sub_1C01166F4();

  sub_1C014C990();
  if (v5)
  {
  }

  if (!a4)
  {
    return (*(v24 + 8))(v13, v11);
  }

  v14 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06860, &qword_1C0156B68);
  v15 = sub_1C014C3B0();
  v26 = 0;
  v16 = [v14 dataWithJSONObject:v15 options:0 error:&v26];

  v17 = v26;
  if (v16)
  {
    v18 = sub_1C014BCC0();
    v20 = v19;

    v26 = v18;
    v27 = v20;
    v25 = 1;
    sub_1C0116748();
    sub_1C014C990();
    (*(v24 + 8))(v13, v11);
    return sub_1C0110D7C(v18, v20);
  }

  else
  {
    v21 = v17;
    v22 = sub_1C014BB70();

    swift_willThrow();
    return (*(v24 + 8))(v13, v11);
  }
}

uint64_t TipSpotlightViewProtocol.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06858, &qword_1C0156B60);
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0115CD4();
  sub_1C014CB30();
  (*(a3 + 32))(&v26, a2, a3);
  v23 = v26;
  v24 = v27;
  v25 = v28;
  v22 = 0;
  sub_1C01166F4();
  sub_1C014C990();
  if (v3)
  {
  }

  if (!(*(a3 + 56))(a2, a3))
  {
    return (*(v21 + 8))(v9, v7);
  }

  v10 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06860, &qword_1C0156B68);
  v11 = sub_1C014C3B0();

  v26 = 0;
  v12 = [v10 dataWithJSONObject:v11 options:0 error:&v26];

  v13 = v26;
  if (v12)
  {
    v14 = sub_1C014BCC0();
    v16 = v15;

    v26 = v14;
    v27 = v16;
    LOBYTE(v23) = 1;
    sub_1C0116748();
    sub_1C014C990();
    (*(v21 + 8))(v9, v7);
    return sub_1C0110D7C(v14, v16);
  }

  else
  {
    v17 = v13;
    v18 = sub_1C014BB70();

    swift_willThrow();
    return (*(v21 + 8))(v9, v7);
  }
}

uint64_t sub_1C01164A0()
{
  v1 = *v0;
  sub_1C014CAE0();
  MEMORY[0x1C68D7300](v1);
  return sub_1C014CB10();
}

uint64_t sub_1C01164E8()
{
  v1 = *v0;
  sub_1C014CAE0();
  MEMORY[0x1C68D7300](v1);
  return sub_1C014CB10();
}

uint64_t sub_1C011652C()
{
  if (*v0)
  {
    return 0x746E6F4379646F62;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1C0116578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001C015C4F0 == a2 || (sub_1C014C9F0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746E6F4379646F62 && a2 == 0xEF61746144746E65)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1C014C9F0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1C0116668(uint64_t a1)
{
  v2 = sub_1C0115CD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C01166A4(uint64_t a1)
{
  v2 = sub_1C0115CD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C01166E0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C0110D7C(result, a2);
  }

  return result;
}

unint64_t sub_1C01166F4()
{
  result = qword_1EBE05CD8;
  if (!qword_1EBE05CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE05CD8);
  }

  return result;
}

unint64_t sub_1C0116748()
{
  result = qword_1EBE05D38;
  if (!qword_1EBE05D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE05D38);
  }

  return result;
}

unint64_t sub_1C011679C(uint64_t a1)
{
  *(a1 + 8) = sub_1C01167CC();
  result = sub_1C0116820();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C01167CC()
{
  result = qword_1EBE06868;
  if (!qword_1EBE06868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06868);
  }

  return result;
}

unint64_t sub_1C0116820()
{
  result = qword_1EBE06870;
  if (!qword_1EBE06870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06870);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C0116898(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C01168E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C01169C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C0116A10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssistantSupportClient.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssistantSupportClient.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C0116BD0()
{
  result = qword_1EBE06878;
  if (!qword_1EBE06878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06878);
  }

  return result;
}

unint64_t sub_1C0116C28()
{
  result = qword_1EBE06880;
  if (!qword_1EBE06880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06880);
  }

  return result;
}

unint64_t sub_1C0116C80()
{
  result = qword_1EDD44A80;
  if (!qword_1EDD44A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD44A80);
  }

  return result;
}

unint64_t sub_1C0116CD8()
{
  result = qword_1EDD44A88;
  if (!qword_1EDD44A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD44A88);
  }

  return result;
}

unint64_t sub_1C0116D30()
{
  result = qword_1EDD44938;
  if (!qword_1EDD44938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD44938);
  }

  return result;
}

unint64_t sub_1C0116D88()
{
  result = qword_1EDD44940;
  if (!qword_1EDD44940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD44940);
  }

  return result;
}

id sub_1C0116E00()
{
  if (qword_1EDD44A68 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDD44A70;
  v1 = type metadata accessor for NetworkMonitorProxy();
  v2 = objc_allocWithZone(v1);
  v3 = OBJC_IVAR___TPSNetworkPathMonitor_serialTasks;
  type metadata accessor for SerialTaskExecutor();
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06890, &qword_1C0156F30);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 16) = v5;
  *(v4 + 24) = 0;
  *&v2[v3] = v4;
  *&v2[OBJC_IVAR___TPSNetworkPathMonitor_monitor] = v0;
  v7.receiver = v2;
  v7.super_class = v1;

  result = objc_msgSendSuper2(&v7, sel_init);
  qword_1EDD44958 = result;
  return result;
}

id static NetworkMonitorProxy.shared.getter()
{
  if (qword_1EDD44950 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD44958;

  return v1;
}

id NetworkMonitorProxy.init(monitor:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___TPSNetworkPathMonitor_serialTasks;
  type metadata accessor for SerialTaskExecutor();
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06890, &qword_1C0156F30);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = v6;
  *(v5 + 24) = 0;
  *&v1[v4] = v5;
  if (!a1)
  {
    type metadata accessor for NetworkMonitor(0);
    a1 = swift_allocObject();
    swift_defaultActor_initialize();
    *(a1 + 112) = 0;
    v7 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath;
    v8 = sub_1C014C090();
    (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
    v9 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_observers;
    *(a1 + v9) = sub_1C00F9450(MEMORY[0x1E69E7CC0]);
  }

  *&v1[OBJC_IVAR___TPSNetworkPathMonitor_monitor] = a1;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

Swift::Void __swiftcall NetworkMonitorProxy.start()()
{
  v1 = *(v0 + OBJC_IVAR___TPSNetworkPathMonitor_serialTasks);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2 + 4);
  sub_1C01189D0();
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1C0117220()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR___TPSNetworkPathMonitor_monitor);
    *(v0 + 48) = v2;
    v3 = Strong;

    return MEMORY[0x1EEE6DFA0](sub_1C01172F8, v2, 0);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1C01172F8()
{
  sub_1C0129EFC();

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall NetworkMonitorProxy.stop()()
{
  v1 = *(v0 + OBJC_IVAR___TPSNetworkPathMonitor_serialTasks);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2 + 4);
  sub_1C0118E5C();
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1C011748C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR___TPSNetworkPathMonitor_monitor);
    *(v0 + 48) = v2;
    v3 = Strong;

    return MEMORY[0x1EEE6DFA0](sub_1C0117564, v2, 0);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1C0117564()
{
  sub_1C012AE50();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NetworkMonitorProxy.addObserver(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1C014BD80();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = *(v4 + OBJC_IVAR___TPSNetworkPathMonitor_serialTasks);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v9 + 16))(&v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  (*(v9 + 32))(v14 + v13, &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v8);
  v15 = (v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a2;
  v15[1] = a3;
  v16 = *(v11 + 16);
  v22 = v11;
  v23 = &unk_1C0156F60;
  v24 = v14;
  v19 = sub_1C0118E44;
  v20 = &v21;

  os_unfair_lock_lock(v16 + 4);
  sub_1C0118E5C();
  os_unfair_lock_unlock(v16 + 4);
}

uint64_t sub_1C01177FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE068A0, &qword_1C0156FD8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C01178A8, 0, 0);
}

uint64_t sub_1C01178A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[8];
    v3 = v0[9];
    v4 = v0[6];
    v5 = v0[7];
    v6 = *(Strong + OBJC_IVAR___TPSNetworkPathMonitor_monitor);
    v0[11] = v6;
    v7 = Strong;

    v8 = sub_1C014BD80();
    v0[12] = v8;
    v9 = *(v8 - 8);
    (*(v9 + 16))(v3, v4, v8);
    v10 = *(v9 + 56);
    v0[13] = v10;
    v0[14] = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v10(v3, 0, 1, v8);
    v11 = swift_allocObject();
    v0[15] = v11;
    *(v11 + 16) = v5;
    *(v11 + 24) = v2;

    return MEMORY[0x1EEE6DFA0](sub_1C0117AB0, v6, 0);
  }

  else
  {
    v12 = sub_1C014BD80();
    v13 = v0[10];
    (*(*(v12 - 8) + 56))(v13, 1, 1, v12);
    sub_1C0118D08(v13);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1C0117AB0()
{
  v1 = v0[9];
  sub_1C012B3BC(v1, sub_1C0118CE0, v0[15], v0[10]);

  sub_1C0118D08(v1);

  return MEMORY[0x1EEE6DFA0](sub_1C0117B5C, 0, 0);
}

uint64_t sub_1C0117B5C()
{
  v1 = *(v0 + 80);
  (*(v0 + 104))(v1, 0, 1, *(v0 + 96));
  sub_1C0118D08(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t NetworkMonitorProxy.removeObserver(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C014BD80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = *(v2 + OBJC_IVAR___TPSNetworkPathMonitor_serialTasks);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(&v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v5 + 32))(v10 + v9, &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v11 = *(v7 + 16);
  v17 = v7;
  v18 = &unk_1C0156F70;
  v19 = v10;
  v14 = sub_1C0118E44;
  v15 = &v16;

  os_unfair_lock_lock(v11 + 4);
  sub_1C0118E5C();
  os_unfair_lock_unlock(v11 + 4);
}

uint64_t sub_1C0117ED8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C0117EF8, 0, 0);
}

uint64_t sub_1C0117EF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR___TPSNetworkPathMonitor_monitor);
    *(v0 + 56) = v2;
    v3 = Strong;

    return MEMORY[0x1EEE6DFA0](sub_1C0117FD0, v2, 0);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1C0117FD0()
{
  sub_1C012B5C8(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

id NetworkMonitorProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NetworkMonitorProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C011831C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066B8, &qword_1C0156FE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_1C014C490();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = *(a1 + 24);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v11[5] = a2;
  v11[6] = a3;

  *(a1 + 24) = sub_1C0129B50(0, 0, v8, &unk_1C0156FF0, v11);
}

uint64_t sub_1C011845C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  if (a4)
  {
    v8 = swift_task_alloc();
    v6[6] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06808, &unk_1C0156A20);
    *v8 = v6;
    v8[1] = sub_1C01185F8;
    v10 = MEMORY[0x1E69E7288];
    v11 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA20](v6 + 2, a4, v11, v9, v10);
  }

  else
  {
    v14 = (a5 + *a5);
    v12 = swift_task_alloc();
    v6[7] = v12;
    *v12 = v6;
    v12[1] = sub_1C01187EC;

    return v14();
  }
}

uint64_t sub_1C01185F8()
{

  return MEMORY[0x1EEE6DFA0](sub_1C01186F4, 0, 0);
}

uint64_t sub_1C01186F4()
{
  sub_1C0118E38(*(v0 + 16), *(v0 + 24));
  v3 = (*(v0 + 32) + **(v0 + 32));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1C01187EC;

  return v3();
}

uint64_t sub_1C01187EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C01188E0()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C0118920()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C01044FC;

  return sub_1C0117200(v0);
}

uint64_t sub_1C01189F8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C01044FC;

  return sub_1C011746C(v0);
}

uint64_t sub_1C0118A88()
{
  v2 = *(sub_1C014BD80() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1C01044FC;

  return sub_1C01177FC(v4, v0 + v3, v6, v7);
}

uint64_t sub_1C0118BA0()
{
  v2 = *(sub_1C014BD80() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C01044FC;

  return sub_1C0117ED8(v4, v0 + v3);
}

uint64_t sub_1C0118D08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE068A0, &qword_1C0156FD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C0118D70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C0103EAC;

  return sub_1C011845C(a1, v4, v5, v6, v7, v8);
}

void sub_1C0118E38(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t UserGuide.topicIdentifier.getter()
{
  swift_getKeyPath();
  sub_1C011A644();
  sub_1C014BF00();

  v1 = (v0 + OBJC_IVAR___TPSUserGuide__topicIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id UserGuide.__allocating_init(identifier:version:text:symbol:platform:platformIndependent:gradientColorStrings:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = v12;
  v20 = objc_allocWithZone(v13);
  v21 = &v20[OBJC_IVAR___TPSUserGuide_referrer];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v20[OBJC_IVAR___TPSUserGuide_version];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v20[OBJC_IVAR___TPSUserGuide__topicIdentifier];
  *v23 = 0;
  v23[1] = 0;
  sub_1C014BF30();
  v24 = &v20[OBJC_IVAR___TPSUserGuide_identifier];
  *v24 = a1;
  v24[1] = a2;
  swift_beginAccess();
  *v22 = a3;
  v22[1] = a4;

  if (a6)
  {
    v25 = a5;
  }

  else
  {
    v25 = 0;
  }

  v26 = 0xE000000000000000;
  if (a6)
  {
    v26 = a6;
  }

  v27 = &v20[OBJC_IVAR___TPSUserGuide_text];
  *v27 = v25;
  v27[1] = v26;
  v28 = &v20[OBJC_IVAR___TPSUserGuide_symbol];
  *v28 = a7;
  v28[1] = a8;
  v29 = &v20[OBJC_IVAR___TPSUserGuide_platform];
  *v29 = a9;
  v29[1] = a10;
  v20[OBJC_IVAR___TPSUserGuide_platformIndependent] = a11;
  *&v20[OBJC_IVAR___TPSUserGuide_gradientColorStrings] = a12;
  v30 = objc_allocWithZone(TPSGradient);

  v31 = sub_1C014C3B0();

  v32 = [v30 initWithColorStrings_];

  *&v20[OBJC_IVAR___TPSUserGuide_gradient] = v32;
  v37.receiver = v20;
  v37.super_class = v36;
  return objc_msgSendSuper2(&v37, sel_init);
}

uint64_t UserGuide.topicIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___TPSUserGuide__topicIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1C014C9F0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v5 = a1;
    v5[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C011A644();
  sub_1C014BEF0();
}

uint64_t static UserGuide.privateURL(bookIdentifier:topicIdentifier:version:referrer:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v45 = a8;
  v41[2] = a5;
  v41[3] = a7;
  v42 = a4;
  v43 = a6;
  v41[1] = a3;
  v47 = a9;
  v48 = sub_1C014BA60();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C014B9A0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v49 = v41 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v41 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v41 - v20;
  v44 = v22;
  if (!a2)
  {
    v23 = [objc_opt_self() deviceGuideIdentifier];
    sub_1C014C230();
  }

  sub_1C014B970();

  v24 = sub_1C00FE568(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1C00FE568((v25 > 1), v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  v29 = *(v13 + 32);
  v27 = v13 + 32;
  v28 = v29;
  v30 = (*(v27 + 48) + 32) & ~*(v27 + 48);
  v31 = *(v27 + 40);
  v29(&v24[v30 + v31 * v26], v21, v12);
  if (v42)
  {
    sub_1C014B970();
    v33 = *(v24 + 2);
    v32 = *(v24 + 3);
    if (v33 >= v32 >> 1)
    {
      v24 = sub_1C00FE568((v32 > 1), v33 + 1, 1, v24);
    }

    *(v24 + 2) = v33 + 1;
    v28(&v24[v30 + v33 * v31], v19, v12);
  }

  v34 = v44;
  if (v43)
  {
    sub_1C014B970();
    v36 = *(v24 + 2);
    v35 = *(v24 + 3);
    if (v36 >= v35 >> 1)
    {
      v24 = sub_1C00FE568((v35 > 1), v36 + 1, 1, v24);
    }

    *(v24 + 2) = v36 + 1;
    v28(&v24[v30 + v36 * v31], v49, v12);
  }

  if (v45)
  {
    sub_1C014B970();
    v38 = *(v24 + 2);
    v37 = *(v24 + 3);
    if (v38 >= v37 >> 1)
    {
      v24 = sub_1C00FE568((v37 > 1), v38 + 1, 1, v24);
    }

    *(v24 + 2) = v38 + 1;
    v28(&v24[v30 + v38 * v31], v34, v12);
  }

  sub_1C014BA50();
  sub_1C014C230();
  sub_1C014BA30();
  v39 = sub_1C014C230();
  MEMORY[0x1C68D6220](v39);
  sub_1C014B9D0();
  sub_1C014B9F0();
  return (*(v46 + 8))(v11, v48);
}

uint64_t static UserGuide.url(book:topic:anchor:version:referrer:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v52 = a6;
  v53 = a8;
  v48 = a5;
  v49 = a7;
  v50 = a4;
  v47 = a3;
  v55 = a9;
  v56 = sub_1C014BA60();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C014B9A0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v58 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v57 = &v47 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v51 = &v47 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v47 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v47 - v25;
  if (!a2)
  {
    v27 = [objc_opt_self() deviceGuideIdentifier];
    sub_1C014C230();
  }

  sub_1C014B970();

  v28 = sub_1C00FE568(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v30 = *(v28 + 2);
  v29 = *(v28 + 3);
  if (v30 >= v29 >> 1)
  {
    v28 = sub_1C00FE568((v29 > 1), v30 + 1, 1, v28);
  }

  *(v28 + 2) = v30 + 1;
  v33 = *(v15 + 32);
  v32 = v15 + 32;
  v31 = v33;
  v34 = (*(v32 + 48) + 32) & ~*(v32 + 48);
  v35 = *(v32 + 40);
  v33(&v28[v34 + v35 * v30], v26, v14);
  if (v50)
  {
    sub_1C014B970();
    v37 = *(v28 + 2);
    v36 = *(v28 + 3);
    if (v37 >= v36 >> 1)
    {
      v28 = sub_1C00FE568((v36 > 1), v37 + 1, 1, v28);
    }

    *(v28 + 2) = v37 + 1;
    v31(&v28[v34 + v37 * v35], v24, v14);
  }

  v38 = v51;
  if (v52)
  {
    sub_1C014B970();
    v40 = *(v28 + 2);
    v39 = *(v28 + 3);
    if (v40 >= v39 >> 1)
    {
      v28 = sub_1C00FE568((v39 > 1), v40 + 1, 1, v28);
    }

    *(v28 + 2) = v40 + 1;
    v31(&v28[v34 + v40 * v35], v38, v14);
  }

  if (v53)
  {
    sub_1C014B970();
    v42 = *(v28 + 2);
    v41 = *(v28 + 3);
    if (v42 >= v41 >> 1)
    {
      v28 = sub_1C00FE568((v41 > 1), v42 + 1, 1, v28);
    }

    *(v28 + 2) = v42 + 1;
    v31(&v28[v34 + v42 * v35], v57, v14);
  }

  if (a11)
  {
    sub_1C014B970();
    v44 = *(v28 + 2);
    v43 = *(v28 + 3);
    if (v44 >= v43 >> 1)
    {
      v28 = sub_1C00FE568((v43 > 1), v44 + 1, 1, v28);
    }

    *(v28 + 2) = v44 + 1;
    v31(&v28[v34 + v44 * v35], v58, v14);
  }

  sub_1C014BA50();
  sub_1C014C230();
  sub_1C014BA30();
  v45 = sub_1C014C230();
  MEMORY[0x1C68D6220](v45);
  sub_1C014B9D0();
  sub_1C014B9F0();
  return (*(v54 + 8))(v13, v56);
}

uint64_t UserGuide.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___TPSUserGuide_identifier);

  return v1;
}

uint64_t UserGuide.text.getter()
{
  v1 = *(v0 + OBJC_IVAR___TPSUserGuide_text);

  return v1;
}

id sub_1C011A1CC(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_1C014C200();

  return v3;
}

uint64_t UserGuide.symbol.getter()
{
  v1 = *(v0 + OBJC_IVAR___TPSUserGuide_symbol);

  return v1;
}

void *UserGuide.gradient.getter()
{
  v1 = *(v0 + OBJC_IVAR___TPSUserGuide_gradient);
  v2 = v1;
  return v1;
}

uint64_t UserGuide.platform.getter()
{
  v1 = *(v0 + OBJC_IVAR___TPSUserGuide_platform);

  return v1;
}

unint64_t sub_1C011A644()
{
  result = qword_1EBE065D8;
  if (!qword_1EBE065D8)
  {
    type metadata accessor for UserGuide(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE065D8);
  }

  return result;
}

uint64_t type metadata accessor for UserGuide(uint64_t a1)
{
  result = qword_1EDD44BE0;
  if (!qword_1EDD44BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C011A6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR___TPSUserGuide__topicIdentifier);
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
}

uint64_t (*UserGuide.topicIdentifier.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR___TPSUserGuide___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C011A644();
  sub_1C014BF00();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C014BF20();

  swift_beginAccess();
  return sub_1C011A874;
}

void sub_1C011A874(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1C014BF10();

  free(v1);
}

id UserGuide.init(identifier:version:text:symbol:platform:platformIndependent:gradientColorStrings:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();
  v19 = &v12[OBJC_IVAR___TPSUserGuide_referrer];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v12[OBJC_IVAR___TPSUserGuide_version];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v12[OBJC_IVAR___TPSUserGuide__topicIdentifier];
  *v21 = 0;
  v21[1] = 0;
  sub_1C014BF30();
  v22 = &v12[OBJC_IVAR___TPSUserGuide_identifier];
  *v22 = a1;
  v22[1] = a2;
  swift_beginAccess();
  *v20 = a3;
  v20[1] = a4;

  if (a6)
  {
    v23 = a5;
  }

  else
  {
    v23 = 0;
  }

  v24 = 0xE000000000000000;
  if (a6)
  {
    v24 = a6;
  }

  v25 = &v12[OBJC_IVAR___TPSUserGuide_text];
  *v25 = v23;
  v25[1] = v24;
  v26 = &v12[OBJC_IVAR___TPSUserGuide_symbol];
  *v26 = a7;
  v26[1] = a8;
  v27 = &v12[OBJC_IVAR___TPSUserGuide_platform];
  *v27 = a9;
  v27[1] = a10;
  v12[OBJC_IVAR___TPSUserGuide_platformIndependent] = a11;
  *&v12[OBJC_IVAR___TPSUserGuide_gradientColorStrings] = a12;
  v28 = objc_allocWithZone(TPSGradient);

  v29 = sub_1C014C3B0();

  v30 = [v28 initWithColorStrings_];

  *&v12[OBJC_IVAR___TPSUserGuide_gradient] = v30;
  v35.receiver = v12;
  v35.super_class = ObjectType;
  return objc_msgSendSuper2(&v35, sel_init);
}

uint64_t UserGuide.displayName.getter()
{
  v1 = sub_1C014BDC0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1C014C1F0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C014C1E0();
  v3 = [objc_opt_self() tipsCoreFrameworkBundle];
  sub_1C014BDB0();
  sub_1C014C280();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06900, &qword_1C0157710);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0156330;
  v6 = *(v0 + OBJC_IVAR___TPSUserGuide_text);
  v5 = *(v0 + OBJC_IVAR___TPSUserGuide_text + 8);
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1C011C85C();
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;

  v7 = sub_1C014C210();

  return v7;
}

id sub_1C011ADE8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1C014C200();

  return v5;
}

uint64_t UserGuide.description.getter()
{
  v1 = v0;
  strcpy(v17, "(identifier:");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  MEMORY[0x1C68D6B10](*(v0 + OBJC_IVAR___TPSUserGuide_identifier), *(v0 + OBJC_IVAR___TPSUserGuide_identifier + 8));
  v18 = v17[0];
  v19 = v17[1];
  v2 = (v0 + OBJC_IVAR___TPSUserGuide_version);
  swift_beginAccess();
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;

    MEMORY[0x1C68D6B10](v4, v3);

    MEMORY[0x1C68D6B10](0x6F6973726576202CLL, 0xEA00000000003A6ELL);
  }

  swift_getKeyPath();
  sub_1C011A644();
  sub_1C014BF00();

  v5 = (v1 + OBJC_IVAR___TPSUserGuide__topicIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;

    sub_1C014C800();

    MEMORY[0x1C68D6B10](v7, v6);

    MEMORY[0x1C68D6B10](0xD000000000000012, 0x80000001C015C6E0);
  }

  MEMORY[0x1C68D6B10](*(v1 + OBJC_IVAR___TPSUserGuide_text), *(v1 + OBJC_IVAR___TPSUserGuide_text + 8));
  MEMORY[0x1C68D6B10](0x3A74786574202CLL, 0xE700000000000000);

  MEMORY[0x1C68D6B10](*(v1 + OBJC_IVAR___TPSUserGuide_symbol), *(v1 + OBJC_IVAR___TPSUserGuide_symbol + 8));
  MEMORY[0x1C68D6B10](0x6C6F626D7973202CLL, 0xE90000000000003ALL);

  if (*(v1 + OBJC_IVAR___TPSUserGuide_platform + 8))
  {
    MEMORY[0x1C68D6B10](*(v1 + OBJC_IVAR___TPSUserGuide_platform));
    MEMORY[0x1C68D6B10](0x6F6674616C70202CLL, 0xEB000000003A6D72);
  }

  sub_1C014C800();

  if (*(v1 + OBJC_IVAR___TPSUserGuide_platformIndependent))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR___TPSUserGuide_platformIndependent))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1C68D6B10](v8, v9);

  MEMORY[0x1C68D6B10](0xD000000000000016, 0x80000001C015C6C0);

  v10 = *(v1 + OBJC_IVAR___TPSUserGuide_gradient);
  if (v10)
  {
    v11 = v10;
    v12 = [v11 description];
    v13 = sub_1C014C230();
    v15 = v14;

    MEMORY[0x1C68D6B10](v13, v15);

    MEMORY[0x1C68D6B10](0x656964617267202CLL, 0xEB000000003A746ELL);
  }

  return v18;
}

id UserGuide.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserGuide.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *UserGuide.copy(with:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = *(v2 + OBJC_IVAR___TPSUserGuide_identifier + 8);
  v26 = *(v2 + OBJC_IVAR___TPSUserGuide_identifier);
  v5 = (v2 + OBJC_IVAR___TPSUserGuide_version);
  swift_beginAccess();
  v6 = v5[1];
  v7 = *(v2 + OBJC_IVAR___TPSUserGuide_text + 8);
  v8 = *(v2 + OBJC_IVAR___TPSUserGuide_symbol + 8);
  v27 = *(v2 + OBJC_IVAR___TPSUserGuide_symbol);
  v28 = *(v2 + OBJC_IVAR___TPSUserGuide_text);
  v9 = *(v2 + OBJC_IVAR___TPSUserGuide_platform + 8);
  v24 = *v5;
  v25 = *(v2 + OBJC_IVAR___TPSUserGuide_platform);
  v23 = *(v2 + OBJC_IVAR___TPSUserGuide_platformIndependent);
  v10 = *(v2 + OBJC_IVAR___TPSUserGuide_gradientColorStrings);
  v11 = objc_allocWithZone(ObjectType);
  v12 = &v11[OBJC_IVAR___TPSUserGuide_referrer];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v11[OBJC_IVAR___TPSUserGuide_version];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v11[OBJC_IVAR___TPSUserGuide__topicIdentifier];
  *v14 = 0;
  v14[1] = 0;

  sub_1C014BF30();
  v15 = &v11[OBJC_IVAR___TPSUserGuide_identifier];
  *v15 = v26;
  v15[1] = v4;
  swift_beginAccess();
  *v13 = v24;
  v13[1] = v6;

  v16 = &v11[OBJC_IVAR___TPSUserGuide_text];
  *v16 = v28;
  v16[1] = v7;
  v17 = &v11[OBJC_IVAR___TPSUserGuide_symbol];
  *v17 = v27;
  v17[1] = v8;
  v18 = &v11[OBJC_IVAR___TPSUserGuide_platform];
  *v18 = v25;
  v18[1] = v9;
  v11[OBJC_IVAR___TPSUserGuide_platformIndependent] = v23;
  *&v11[OBJC_IVAR___TPSUserGuide_gradientColorStrings] = v10;
  v19 = objc_allocWithZone(TPSGradient);

  v20 = sub_1C014C3B0();
  v21 = [v19 initWithColorStrings_];

  *&v11[OBJC_IVAR___TPSUserGuide_gradient] = v21;
  v30.receiver = v11;
  v30.super_class = ObjectType;
  result = objc_msgSendSuper2(&v30, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

Swift::Void __swiftcall UserGuide.encode(with:)(NSCoder with)
{
  v3 = sub_1C014C200();
  v4 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = v1 + OBJC_IVAR___TPSUserGuide_version;
  swift_beginAccess();
  if (*(v5 + 8))
  {

    v6 = sub_1C014C200();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
  swift_unknownObjectRelease();

  v8 = sub_1C014C200();
  v9 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

  v10 = sub_1C014C200();
  v11 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];

  if (*(v1 + OBJC_IVAR___TPSUserGuide_platform + 8))
  {
    v12 = sub_1C014C200();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];
  swift_unknownObjectRelease();

  v14 = *(v1 + OBJC_IVAR___TPSUserGuide_platformIndependent);
  v15 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeBool:v14 forKey:v15];

  v16 = sub_1C014C3B0();
  v17 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v16 forKey:v17];
}

id UserGuide.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id UserGuide.init(coder:)(void *a1)
{
  sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  v2 = sub_1C014C5E0();
  if (v2)
  {
    v5 = 0;
    v6 = 0;
    v3 = v2;
    sub_1C014C220();
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t UserGuide.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C011C8B0(a1, v7);
  if (!v8)
  {
    sub_1C00F98F4(v7, &qword_1EBE06490, &qword_1C0155FA0);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  if (*(v1 + OBJC_IVAR___TPSUserGuide_identifier) == *&v6[OBJC_IVAR___TPSUserGuide_identifier] && *(v1 + OBJC_IVAR___TPSUserGuide_identifier + 8) == *&v6[OBJC_IVAR___TPSUserGuide_identifier + 8])
  {

    v4 = 1;
  }

  else
  {
    v4 = sub_1C014C9F0();
  }

  return v4 & 1;
}

char *_s8TipsCore9UserGuideC03getcD7FromURL0G0ACSg10FoundationAEV_tFZ_0(uint64_t a1)
{
  v1 = sub_1C014B9A0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065E0, &unk_1C0157A70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v62 - v6;
  v8 = sub_1C014BA60();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C014B9E0();
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v11, v7, v8);
    v12 = sub_1C014BA20();
    v14 = v13;
    v15 = sub_1C014C230();
    if (v14)
    {
      if (v12 == v15 && v14 == v16)
      {
      }

      else
      {
        v18 = sub_1C014C9F0();

        if ((v18 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      v19 = sub_1C014B9C0();
      if (v19)
      {
        v66 = v11;
        v20 = *(v19 + 16);
        if (v20)
        {
          v63 = v9;
          v64 = v8;
          v65 = 0;
          v67 = 0;
          v68 = 0;
          v69 = 0;
          v70 = 0;
          v71 = 0;
          v72 = 0;
          v73 = 0;
          v21 = 0;
          v77 = 0;
          v23 = *(v2 + 16);
          v22 = v2 + 16;
          v75 = v23;
          v24 = (*(v22 + 64) + 32) & ~*(v22 + 64);
          v62[1] = v19;
          v25 = v19 + v24;
          v74 = *(v22 + 56);
          v76 = v22;
          v26 = (v22 - 8);
          v23(v4, v19 + v24, v1);
          while (1)
          {
            if (v27 = sub_1C014B990(), v29 = v28, v30 = sub_1C014B980(), v32 = v31, (*v26)(v4, v1), v30 == 1802465122) && v32 == 0xE400000000000000 || (sub_1C014C9F0())
            {

              v21 = v27;
              v77 = v29;
            }

            else if (v30 == 0x6369706F74 && v32 == 0xE500000000000000 || (sub_1C014C9F0() & 1) != 0)
            {

              v72 = v27;
              v73 = v29;
            }

            else if (v30 == 0x726F68636E61 && v32 == 0xE600000000000000 || (sub_1C014C9F0() & 1) != 0)
            {

              v69 = v27;
              v71 = v29;
            }

            else if (v30 == 0x6E6F6973726576 && v32 == 0xE700000000000000 || (sub_1C014C9F0() & 1) != 0)
            {

              v68 = v27;
              v70 = v29;
            }

            else if (v30 == 0x7265727265666572 && v32 == 0xE800000000000000)
            {

              v65 = v27;
              v67 = v29;
            }

            else
            {
              v33 = sub_1C014C9F0();

              v34 = v67;
              v35 = v65;
              if (v33)
              {
                v35 = v27;
              }

              v65 = v35;
              if (v33)
              {
                v34 = v29;
              }

              v67 = v34;
            }

            v25 += v74;
            if (!--v20)
            {
              break;
            }

            v75(v4, v25, v1);
          }

          if (v77)
          {
            v8 = v64;
            v9 = v63;
            v37 = v65;
            v38 = v71;
            v39 = v21;
            v40 = v77;
            goto LABEL_49;
          }

          v8 = v64;
          v9 = v63;
          v37 = v65;
          v38 = v71;
        }

        else
        {

          v37 = 0;
          v67 = 0;
          v68 = 0;
          v69 = 0;
          v70 = 0;
          v38 = 0;
          v72 = 0;
          v73 = 0;
        }

        v41 = [objc_opt_self() deviceGuideIdentifier];
        v39 = sub_1C014C230();
        v40 = v42;

LABEL_49:
        v43 = type metadata accessor for UserGuide(0);
        v44 = objc_allocWithZone(v43);
        v45 = &v44[OBJC_IVAR___TPSUserGuide_referrer];
        *v45 = 0;
        v45[1] = 0;
        v46 = &v44[OBJC_IVAR___TPSUserGuide_version];
        *v46 = 0;
        v46[1] = 0;
        v47 = &v44[OBJC_IVAR___TPSUserGuide__topicIdentifier];
        *v47 = 0;
        v47[1] = 0;
        sub_1C014BF30();
        v48 = &v44[OBJC_IVAR___TPSUserGuide_identifier];
        *v48 = v39;
        v48[1] = v40;
        swift_beginAccess();
        v49 = v70;
        *v46 = v68;
        v46[1] = v49;

        v50 = &v44[OBJC_IVAR___TPSUserGuide_text];
        *v50 = 0;
        v50[1] = 0xE000000000000000;
        v51 = &v44[OBJC_IVAR___TPSUserGuide_symbol];
        *v51 = 0x6761702E6B6F6F62;
        v51[1] = 0xEA00000000007365;
        v52 = &v44[OBJC_IVAR___TPSUserGuide_platform];
        *v52 = 0;
        v52[1] = 0;
        v44[OBJC_IVAR___TPSUserGuide_platformIndependent] = 0;
        *&v44[OBJC_IVAR___TPSUserGuide_gradientColorStrings] = &unk_1F3F2C6C0;
        v53 = objc_allocWithZone(TPSGradient);
        v54 = sub_1C014C3B0();
        v55 = [v53 initWithColorStrings_];

        *&v44[OBJC_IVAR___TPSUserGuide_gradient] = v55;
        v80.receiver = v44;
        v80.super_class = v43;
        v56 = objc_msgSendSuper2(&v80, sel_init);
        v57 = v73;
        if (v73)
        {
          v58 = v56;
          if (v38)
          {
            v78 = v72;
            v79 = v73;
            MEMORY[0x1C68D6B10](35, 0xE100000000000000);
            MEMORY[0x1C68D6B10](v69, v38);

            v59 = v78;
            v57 = v79;
LABEL_54:
            UserGuide.topicIdentifier.setter(v59, v57);
            (*(v9 + 8))(v66, v8);
            v60 = &v58[OBJC_IVAR___TPSUserGuide_referrer];
            swift_beginAccess();
            v61 = v67;
            *v60 = v37;
            v60[1] = v61;

            return v58;
          }
        }

        else
        {
          v58 = v56;

          v57 = 0;
        }

        v59 = v72;
        goto LABEL_54;
      }
    }

    else
    {
    }

LABEL_41:
    (*(v9 + 8))(v11, v8);
    return 0;
  }

  sub_1C00F98F4(v7, &qword_1EBE065E0, &unk_1C0157A70);
  return 0;
}

unint64_t sub_1C011C85C()
{
  result = qword_1EDD446F8[0];
  if (!qword_1EDD446F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD446F8);
  }

  return result;
}

uint64_t sub_1C011C8B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06490, &qword_1C0155FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C011C928(uint64_t a1)
{
  result = sub_1C014BF40();
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

void *sub_1C011CA3C(uint64_t a1)
{
  v2 = sub_1C014C710();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1C0122E6C(&v4, v2, *(a1 + 36), 0, a1);
  }
}

void sub_1C011CABC()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager, &protocol conformance descriptor for TPSSavedTipsManager);
  sub_1C014BF00();

  v2 = OBJC_IVAR___TPSSavedTipsManager__currentTip;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 identifier];
    sub_1C014C230();

    MEMORY[0x1EEE9AC00](v6);
    sub_1C014C5B0();

    v7 = OBJC_IVAR___TPSSavedTipsManager__isCurrentTipSaved;
    swift_beginAccess();
    if (v11 == *(v1 + v7))
    {

      *(v1 + v7) = v11;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C014BEF0();
    }
  }

  else
  {
    v9 = OBJC_IVAR___TPSSavedTipsManager__isCurrentTipSaved;
    swift_beginAccess();
    if (*(v1 + v9))
    {
      v10 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v10);
      sub_1C014BEF0();
    }

    else
    {
      *(v1 + v9) = 0;
    }
  }
}

void (*sub_1C011CD9C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C011CE00;
}

void sub_1C011CE00(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1C011CABC();
  }
}

void *sub_1C011CF14()
{
  swift_getKeyPath();
  v5 = v0;
  sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager, &protocol conformance descriptor for TPSSavedTipsManager);
  sub_1C014BF00();

  v1 = OBJC_IVAR___TPSSavedTipsManager__currentTip;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

void sub_1C011D034(void *a1)
{
  v3 = OBJC_IVAR___TPSSavedTipsManager__currentTip;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager, &protocol conformance descriptor for TPSSavedTipsManager);
    sub_1C014BEF0();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C010074C(0, &qword_1EBE06988, off_1E8100A20);
  v5 = v4;
  v6 = a1;
  v7 = sub_1C014C610();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v10 = v6;

  sub_1C011CABC();
}

id sub_1C011D1E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager, &protocol conformance descriptor for TPSSavedTipsManager);
  sub_1C014BF00();

  v4 = OBJC_IVAR___TPSSavedTipsManager__currentTip;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1C011D2B8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C011D034(v1);
}

uint64_t type metadata accessor for TPSSavedTipsManager(uint64_t a1)
{
  result = qword_1EBE05CF8;
  if (!qword_1EBE05CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C011D334(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR___TPSSavedTipsManager__currentTip;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;

  sub_1C011CABC();
}

uint64_t (*sub_1C011D3C8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR___TPSSavedTipsManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager, &protocol conformance descriptor for TPSSavedTipsManager);
  sub_1C014BF00();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C014BF20();

  v4[7] = sub_1C011CD9C(v4);
  return sub_1C011D500;
}

uint64_t sub_1C011D644()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager, &protocol conformance descriptor for TPSSavedTipsManager);
  sub_1C014BF00();

  v1 = OBJC_IVAR___TPSSavedTipsManager__isCurrentTipSaved;
  swift_beginAccess();
  return *(v3 + v1);
}

void sub_1C011D754(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR___TPSSavedTipsManager__isCurrentTipSaved;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager, &protocol conformance descriptor for TPSSavedTipsManager);
    sub_1C014BEF0();
  }
}

void sub_1C011D880(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager, &protocol conformance descriptor for TPSSavedTipsManager);
  sub_1C014BF00();

  v4 = OBJC_IVAR___TPSSavedTipsManager__isCurrentTipSaved;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t (*sub_1C011D984(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR___TPSSavedTipsManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager, &protocol conformance descriptor for TPSSavedTipsManager);
  sub_1C014BF00();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C014BF20();

  v4[7] = sub_1C011D50C(v4);
  return sub_1C011DABC;
}

void sub_1C011DAC8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_1C014BF10();

  free(v3);
}

id sub_1C011DB5C()
{
  result = [objc_allocWithZone(type metadata accessor for TPSSavedTipsManager(0)) init];
  qword_1EDD44AD0 = result;
  return result;
}

id TPSSavedTipsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static TPSSavedTipsManager.sharedInstance.getter()
{
  if (qword_1EDD44AC8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD44AD0;

  return v1;
}

id TPSSavedTipsManager.init()()
{
  v1 = sub_1C014C580();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C014C0D0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1C014C5A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR___TPSSavedTipsManager__currentTip] = 0;
  v0[OBJC_IVAR___TPSSavedTipsManager__isCurrentTipSaved] = 0;
  v7 = OBJC_IVAR___TPSSavedTipsManager_savedTipsMap;
  v8 = MEMORY[0x1E69E7CC0];
  *&v0[v7] = sub_1C00F9638(MEMORY[0x1E69E7CC0]);
  v12 = OBJC_IVAR___TPSSavedTipsManager_queue;
  sub_1C010074C(0, &qword_1EDD44B68, 0x1E69E9610);
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8098], v3);
  sub_1C014C0B0();
  v14 = v8;
  sub_1C0122EFC(&qword_1EDD44B70, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067E0, &qword_1C01568E0);
  sub_1C01115A8();
  sub_1C014C700();
  *&v0[v12] = sub_1C014C5D0();
  sub_1C014BF30();
  v9 = type metadata accessor for TPSSavedTipsManager(0);
  v13.receiver = v0;
  v13.super_class = v9;
  v10 = objc_msgSendSuper2(&v13, sel_init);
  sub_1C0120874();

  return v10;
}

uint64_t sub_1C011DFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  result = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20[-v9];
  if (a2)
  {
    swift_beginAccess();

    v12 = sub_1C01234FC(v11, a1, a2);

    sub_1C011CA3C(v12);
    a2 = v13;
    v15 = v14;

    if (a2)
    {

      v16 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
      swift_beginAccess();
      v17 = sub_1C014BD40();
      v18 = *(v17 - 8);
      (*(v18 + 16))(v10, &v15[v16], v17);

      (*(v18 + 56))(v10, 0, 1, v17);
    }

    else
    {
      v19 = sub_1C014BD40();
      (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
    }

    LOBYTE(a2) = a2 != 0;
    result = sub_1C012348C(v10);
  }

  *a4 = a2;
  return result;
}

uint64_t sub_1C011E344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = OBJC_IVAR___TPSSavedTipsManager_savedTipsMap;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16))
  {

    v10 = sub_1C012EBF4(a2, a3);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      v13 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
      swift_beginAccess();
      v14 = sub_1C014BD40();
      v15 = *(v14 - 8);
      (*(v15 + 16))(a4, &v12[v13], v14);

      return (*(v15 + 56))(a4, 0, 1, v14);
    }
  }

  v17 = sub_1C014BD40();
  return (*(*(v17 - 8) + 56))(a4, 1, 1, v17);
}

uint64_t sub_1C011E654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR___TPSSavedTipsManager_queue];
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1C0122F84;
  *(v11 + 24) = v10;
  v16[4] = sub_1C0122F94;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C011EB80;
  v16[3] = &block_descriptor_4;
  v12 = _Block_copy(v16);
  v13 = v4;

  dispatch_sync(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1C011E7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v9 = sub_1C014BD40();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR___TPSSavedTipsManager_savedTipsMap;
  swift_beginAccess();
  if (*(*(a1 + v13) + 16))
  {

    sub_1C012EBF4(a2, a3);
    v15 = v14;

    if (v15)
    {
      swift_beginAccess();

      sub_1C00F7E90(0, a2, a3);
      swift_endAccess();
LABEL_7:
      v31 = objc_opt_self();
      type metadata accessor for TPSSavedTipEntry(0);

      v32 = sub_1C014C160();

      v33 = sub_1C014C200();
      [v31 archivedDataWithRootObject:v32 forKey:v33];

      return;
    }
  }

  v35 = a3;
  sub_1C014BD30();
  v16 = [objc_opt_self() sharedInstance];
  if (v16)
  {
    v17 = v16;
    v18 = a5;
    v34 = a2;
    v19 = [v16 majorVersion];

    if (v19)
    {
      v20 = sub_1C014C230();
      v22 = v21;

      v23 = type metadata accessor for TPSSavedTipEntry(0);
      v24 = objc_allocWithZone(v23);
      v25 = &v24[OBJC_IVAR___TPSSavedTipEntry_tipIdentifier];
      *v25 = v36;
      v25[1] = v18;
      (*(v10 + 16))(&v24[OBJC_IVAR___TPSSavedTipEntry_savedDate], v12, v9);
      v26 = &v24[OBJC_IVAR___TPSSavedTipEntry_lastUsedVersion];
      *v26 = v20;
      v26[1] = v22;
      v38.receiver = v24;
      v38.super_class = v23;

      v27 = objc_msgSendSuper2(&v38, sel_init);
      (*(v10 + 8))(v12, v9);
      swift_beginAccess();
      v28 = v35;

      v29 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *(a1 + v13);
      *(a1 + v13) = 0x8000000000000000;
      sub_1C00F8AB4(v29, v34, v28, isUniquelyReferenced_nonNull_native);

      *(a1 + v13) = v37;
      swift_endAccess();

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C011EC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v30 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v28 - v16;
  v31 = *&v7[OBJC_IVAR___TPSSavedTipsManager_queue];
  sub_1C010225C(a5, &v28 - v16);
  v18 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v20[2] = v7;
  v20[3] = a1;
  v20[4] = a2;
  sub_1C0122FD4(v17, v20 + v18);
  v21 = (v20 + v19);
  *v21 = a3;
  v21[1] = a4;
  v22 = (v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8));
  v23 = v30;
  *v22 = v29;
  v22[1] = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1C0123044;
  *(v24 + 24) = v20;
  aBlock[4] = sub_1C0123B80;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C011EB80;
  aBlock[3] = &block_descriptor_17;
  v25 = _Block_copy(aBlock);
  v26 = v7;

  dispatch_sync(v31, v25);
  _Block_release(v25);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  return result;
}

void sub_1C011EEA0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void (*a5)(char *, char *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v86 = a8;
  v85 = a7;
  v80 = a6;
  v79 = a5;
  v92 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v83 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v82 = &v76 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v81 = &v76 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v84 = &v76 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v76 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v76 - v23;
  v25 = sub_1C014BD40();
  v91 = *(v25 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v78 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v76 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v76 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v76 - v34;
  v36 = OBJC_IVAR___TPSSavedTipsManager_savedTipsMap;
  swift_beginAccess();
  v89 = a3;
  v90 = a1;
  v87 = v36;
  v88 = a2;
  v37 = *(a1 + v36);
  if (*(v37 + 16))
  {

    v38 = sub_1C012EBF4(a2, a3);
    if (v39)
    {
      v40 = *(*(v37 + 56) + 8 * v38);
      v41 = v40;
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  sub_1C010225C(v92, v24);
  v42 = v91;
  v43 = *(v91 + 48);
  if (v43(v24, 1, v25) == 1)
  {
    sub_1C012348C(v24);
  }

  else
  {
    (*(v42 + 32))(v35, v24, v25);
    if (!v40)
    {
      v54 = *(v42 + 16);
      v54(v33, v35, v25);
      v55 = v42;
      v56 = type metadata accessor for TPSSavedTipEntry(0);
      v57 = objc_allocWithZone(v56);
      v58 = &v57[OBJC_IVAR___TPSSavedTipEntry_tipIdentifier];
      v59 = v80;
      *v58 = v79;
      v58[1] = v59;
      v54(&v57[OBJC_IVAR___TPSSavedTipEntry_savedDate], v33, v25);
      v60 = &v57[OBJC_IVAR___TPSSavedTipEntry_lastUsedVersion];
      v61 = v86;
      *v60 = v85;
      v60[1] = v61;
      v93.receiver = v57;
      v93.super_class = v56;

      v40 = objc_msgSendSuper2(&v93, sel_init);
      v62 = *(v55 + 8);
      v62(v33, v25);
      v62(v35, v25);
      goto LABEL_23;
    }

    (*(v42 + 8))(v35, v25);
  }

  sub_1C010225C(v92, v22);
  if (v43(v22, 1, v25) == 1)
  {
    sub_1C012348C(v22);
    if (!v40)
    {
      return;
    }

    v40 = 0;
  }

  else
  {
    v44 = *(v42 + 32);
    v44(v30, v22, v25);
    if (!v40)
    {
      (*(v42 + 8))(v30, v25);
      return;
    }

    v45 = v81;
    v44(v81, v30, v25);
    v80 = v42 + 32;
    v46 = *(v42 + 56);
    v46(v45, 0, 1, v25);
    v47 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
    swift_beginAccess();
    v48 = *(v42 + 16);
    v77 = v47;
    v79 = v44;
    v49 = v82;
    v48(v82, &v40[v47], v25);
    v76 = v46;
    v46(v49, 0, 1, v25);
    v50 = v83;
    sub_1C0122FD4(v45, v83);
    v51 = v43(v50, 1, v25);
    v92 = v40;
    if (v51 == 1)
    {
      sub_1C012348C(v50);
      v52 = v84;
      sub_1C0122FD4(v49, v84);
      v53 = v79;
    }

    else
    {
      sub_1C012348C(v49);
      v52 = v84;
      v53 = v79;
      v79(v84, v50, v25);
      v76(v52, 0, 1, v25);
    }

    v63 = v43(v52, 1, v25);
    v64 = v91;
    if (v63 == 1)
    {
      v65 = v92;

      sub_1C012348C(v52);
      v40 = 0;
    }

    else
    {
      v66 = v78;
      v53(v78, v52, v25);
      v67 = v77;
      swift_beginAccess();
      (*(v64 + 24))(&v40[v67], v66, v25);
      swift_endAccess();
      (*(v64 + 8))(v66, v25);
      v68 = v92;
      v69 = &v92[OBJC_IVAR___TPSSavedTipEntry_lastUsedVersion];
      swift_beginAccess();
      v70 = v86;
      *v69 = v85;
      v69[1] = v70;
    }
  }

LABEL_23:
  swift_beginAccess();
  v71 = v40;
  v72 = v89;

  sub_1C00F7E90(v40, v88, v72);
  swift_endAccess();
  v73 = objc_opt_self();
  type metadata accessor for TPSSavedTipEntry(0);

  v74 = sub_1C014C160();

  v75 = sub_1C014C200();
  [v73 archivedDataWithRootObject:v74 forKey:v75];
}

uint64_t sub_1C011F888()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067C0, &qword_1C0157160);
  sub_1C014C5B0();
  return v1;
}

uint64_t sub_1C011F908@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = OBJC_IVAR___TPSSavedTipsManager_savedTipsMap;
  swift_beginAccess();
  v4 = *(a1 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_1C013C228(*(v4 + 16), 0);
    v7 = sub_1C013D904(&v22, v6 + 4, v5, v4);
    v8 = v22;
    swift_bridgeObjectRetain_n();
    sub_1C0123AC8(v8);
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v22 = v6;
  sub_1C0120BF4(&v22);
  if (v21)
  {

    __break(1u);
  }

  else
  {

    v9 = v22;
    v10 = v22[2];
    if (v10)
    {
      v23 = MEMORY[0x1E69E7CC0];
      sub_1C01090B4(0, v10, 0);
      v11 = 48;
      v12 = v23;
      do
      {
        v13 = (*(v9 + v11) + OBJC_IVAR___TPSSavedTipEntry_tipIdentifier);
        swift_beginAccess();
        v14 = *v13;
        v15 = v13[1];
        v23 = v12;
        v16 = *(v12 + 16);
        v17 = *(v12 + 24);

        if (v16 >= v17 >> 1)
        {
          sub_1C01090B4((v17 > 1), v16 + 1, 1);
          v12 = v23;
        }

        *(v12 + 16) = v16 + 1;
        v18 = v12 + 16 * v16;
        *(v18 + 32) = v14;
        *(v18 + 40) = v15;
        v11 += 24;
        --v10;
      }

      while (v10);
    }

    else
    {

      v12 = MEMORY[0x1E69E7CC0];
    }

    *a2 = v12;
  }

  return result;
}

uint64_t sub_1C011FBC4()
{
  v1 = *&v0[OBJC_IVAR___TPSSavedTipsManager_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C0123114;
  *(v3 + 24) = v2;
  v8[4] = sub_1C0123B80;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1C011EB80;
  v8[3] = &block_descriptor_27_0;
  v4 = _Block_copy(v8);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1C011FD18(char *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (!v2)
  {
    goto LABEL_102;
  }

  v3 = v2;
  v4 = [v2 majorVersion];

  if (!v4)
  {
LABEL_103:
    __break(1u);
    return;
  }

  v5 = sub_1C014C230();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  v9 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v10 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
LABEL_95:

    v32 = 0;
    v31 = 1;
    goto LABEL_68;
  }

  if ((v7 & 0x1000000000000000) == 0)
  {
    if ((v7 & 0x2000000000000000) != 0)
    {
      v69[0] = v5;
      v69[1] = v7 & 0xFFFFFFFFFFFFFFLL;
      if (v5 == 43)
      {
        if (v8)
        {
          if (--v8)
          {
            v13 = 0;
            v23 = v69 + 1;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                break;
              }

              v25 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                break;
              }

              v13 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                break;
              }

              ++v23;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_101;
      }

      if (v5 != 45)
      {
        if (v8)
        {
          v13 = 0;
          v28 = v69;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              break;
            }

            ++v28;
            if (!--v8)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v8)
      {
        if (--v8)
        {
          v13 = 0;
          v17 = v69 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            v19 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              break;
            }

            ++v17;
            if (!--v8)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        v11 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v11 = sub_1C014C850();
      }

      v12 = *v11;
      if (v12 == 43)
      {
        if (v9 >= 1)
        {
          v8 = v9 - 1;
          if (v9 != 1)
          {
            v13 = 0;
            if (v11)
            {
              v20 = v11 + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  goto LABEL_63;
                }

                v22 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  goto LABEL_63;
                }

                v13 = v22 + v21;
                if (__OFADD__(v22, v21))
                {
                  goto LABEL_63;
                }

                ++v20;
                if (!--v8)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_100;
      }

      if (v12 != 45)
      {
        if (v9)
        {
          v13 = 0;
          if (v11)
          {
            while (1)
            {
              v26 = *v11 - 48;
              if (v26 > 9)
              {
                goto LABEL_63;
              }

              v27 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                goto LABEL_63;
              }

              v13 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                goto LABEL_63;
              }

              ++v11;
              if (!--v9)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v13 = 0;
        LOBYTE(v8) = 1;
        goto LABEL_64;
      }

      if (v9 >= 1)
      {
        v8 = v9 - 1;
        if (v9 != 1)
        {
          v13 = 0;
          if (v11)
          {
            v14 = v11 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_63;
              }

              v16 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                goto LABEL_63;
              }

              v13 = v16 - v15;
              if (__OFSUB__(v16, v15))
              {
                goto LABEL_63;
              }

              ++v14;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v8) = 0;
LABEL_64:
          v31 = v8;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v13 = sub_1C01224E8(v5, v7, 10);
  v31 = v61;
LABEL_65:

  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = v13;
  }

LABEL_68:
  v66 = MEMORY[0x1E69E7CC0];
  v70 = MEMORY[0x1E69E7CC0];
  v33 = OBJC_IVAR___TPSSavedTipsManager_savedTipsMap;
  swift_beginAccess();
  v62 = v33;
  v63 = a1;
  v34 = *&a1[v33];
  v35 = 1 << *(v34 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v34 + 64);
  v38 = (v35 + 63) >> 6;
  v64 = v32 - 2;
  v39 = __OFSUB__(v32, 2);
  v65 = v39;

  v40 = 0;
  v68 = v31;
  while (v37)
  {
    v41 = v37;
LABEL_81:
    v37 = (v41 - 1) & v41;
    if ((v31 & 1) == 0)
    {
      v43 = __clz(__rbit64(v41)) | (v40 << 6);
      v44 = (*(v34 + 48) + 16 * v43);
      v45 = v44[1];
      v67 = *v44;
      v46 = *(*(v34 + 56) + 8 * v43);
      v47 = &v46[OBJC_IVAR___TPSSavedTipEntry_lastUsedVersion];
      swift_beginAccess();
      v48 = *v47;
      v49 = v47[1];

      a1 = v46;

      v50 = sub_1C0120394(v48, v49);
      if (v51)
      {
        goto LABEL_74;
      }

      if (v65)
      {
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      if (v64 < v50)
      {
LABEL_74:

        v31 = v68;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_1C00FE898(0, *(v66 + 2) + 1, 1, v66);
        }

        v31 = v68;
        v53 = *(v66 + 2);
        v52 = *(v66 + 3);
        if (v53 >= v52 >> 1)
        {
          v66 = sub_1C00FE898((v52 > 1), v53 + 1, 1, v66);
        }

        *(v66 + 2) = v53 + 1;
        v54 = &v66[16 * v53];
        *(v54 + 4) = v67;
        *(v54 + 5) = v45;
        v70 = v66;
      }
    }
  }

  while (1)
  {
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_94;
    }

    if (v42 >= v38)
    {
      break;
    }

    v41 = *(v34 + 64 + 8 * v42);
    ++v40;
    if (v41)
    {
      v40 = v42;
      goto LABEL_81;
    }
  }

  if (*(v66 + 2))
  {
    MEMORY[0x1EEE9AC00](v66);

    sub_1C0123928(v55, sub_1C01234F4);
    v57 = v56;

    *&v63[v62] = v57;

    v58 = objc_opt_self();
    type metadata accessor for TPSSavedTipEntry(0);
    v59 = sub_1C014C160();

    v60 = sub_1C014C200();
    [v58 archivedDataWithRootObject:v59 forKey:v60];
  }
}

unint64_t sub_1C0120394(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1C014C850();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1C01224E8(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

BOOL sub_1C0120694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v8[0] = a1;
  v8[1] = a2;
  v7[2] = v8;

  v5 = sub_1C0140A18(sub_1C0123AA8, v7, v4);

  return (v5 & 1) == 0;
}

uint64_t sub_1C0120874()
{
  sub_1C01403D0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0156A40;
  *(inited + 32) = sub_1C010074C(0, &unk_1EDD44B80, 0x1E695DF20);
  *(inited + 40) = sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  *(inited + 48) = type metadata accessor for TPSSavedTipEntry(0);
  sub_1C00FA23C(inited);
  swift_setDeallocating();
  v2 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v3 = sub_1C014C3B0();

  v4 = [v2 initWithArray_];

  sub_1C014C500();
  v5 = objc_opt_self();
  v6 = sub_1C014C4F0();

  v7 = sub_1C014C200();
  v8 = [v5 unarchivedObjectOfClasses:v6 forKey:v7];

  sub_1C014C6E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069A8, &qword_1C0157208);
  if (swift_dynamicCast())
  {
    v9 = v12;
  }

  else
  {
    v9 = sub_1C00F9638(MEMORY[0x1E69E7CC0]);
  }

  v10 = OBJC_IVAR___TPSSavedTipsManager_savedTipsMap;
  swift_beginAccess();
  *(v0 + v10) = v9;
}

id TPSSavedTipsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPSSavedTipsManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C0120B80(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06740, &qword_1C0156818);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1C0120BF4(uint64_t *a1)
{
  v44 = sub_1C014BD40();
  v3 = *(v44 - 8);
  v4 = MEMORY[0x1EEE9AC00](v44);
  v43 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v31 - v6;
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1C010697C(v7);
  }

  v8 = v7[2];
  v36 = v7 + 4;
  v50[0] = (v7 + 4);
  v50[1] = v8;
  result = sub_1C014C9B0();
  if (result >= v8)
  {
    if (v8 >= 2)
    {
      v33 = a1;
      v34 = v1;
      v40 = (v3 + 8);
      v41 = (v3 + 16);
      v32 = v7;
      v12 = v7 + 5;
      v13 = -1;
      v14 = 1;
      v35 = v8;
      do
      {
        v37 = v14;
        v38 = v13;
        v15 = &v36[3 * v14];
        v16 = v15[1];
        v17 = v15[2];
        v45 = v13;
        v39 = v12;
        do
        {
          v50[4] = v16;
          v18 = v12[1];
          v47 = *v12;
          v19 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
          swift_beginAccess();
          v20 = v42;
          v21 = *v41;
          v22 = v44;
          (*v41)(v42, &v17[v19], v44);
          v23 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
          swift_beginAccess();
          v24 = v43;
          v21(v43, &v18[v23], v22);

          v46 = v17;

          v25 = v18;
          v26 = sub_1C014BD10();
          v27 = *v40;
          (*v40)(v24, v22);
          v27(v20, v22);

          if (v26 != 1)
          {
            break;
          }

          v28 = v12[2];
          v16 = v12[3];
          v17 = v12[4];
          *(v12 + 1) = *(v12 - 1);
          v12[4] = v12[1];
          *(v12 - 1) = v28;
          *v12 = v16;
          v12[1] = v17;
          v12 -= 3;
        }

        while (!__CFADD__(v45++, 1));
        v14 = v37 + 1;
        v12 = v39 + 3;
        v13 = v38 - 1;
      }

      while (v37 + 1 != v35);
      a1 = v33;
      v7 = v32;
    }
  }

  else
  {
    v10 = result;
    if (v8 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066F0, &qword_1C0157200);
      v11 = sub_1C014C3F0();
      *(v11 + 16) = v8 >> 1;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v49[0] = v11 + 32;
    v49[1] = v8 >> 1;
    v30 = v11;
    sub_1C0120F78(v49, v48, v50, v10);
    *(v30 + 16) = 0;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_1C0120F78(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v142 = sub_1C014BD40();
  v10 = MEMORY[0x1EEE9AC00](v142);
  v141 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v140 = &v127 - v14;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_1C010685C(v17);
      v17 = result;
    }

    v148 = v17;
    v123 = *(v17 + 2);
    if (v123 >= 2)
    {
      while (*a3)
      {
        v124 = *&v17[16 * v123];
        v125 = *&v17[16 * v123 + 24];
        sub_1C0121AD4((*a3 + 24 * v124), (*a3 + 24 * *&v17[16 * v123 + 16]), (*a3 + 24 * v125), v5);
        if (v6)
        {
        }

        if (v125 < v124)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1C010685C(v17);
        }

        if (v123 - 2 >= *(v17 + 2))
        {
          goto LABEL_115;
        }

        v126 = &v17[16 * v123];
        *v126 = v124;
        *(v126 + 1) = v125;
        v148 = v17;
        result = sub_1C01067D0(v123 - 1);
        v17 = v148;
        v123 = *(v148 + 2);
        if (v123 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v127 = a4;
  v16 = 0;
  v139 = (v13 + 16);
  v138 = (v13 + 8);
  v17 = MEMORY[0x1E69E7CC0];
  v128 = a3;
  v130 = a1;
  while (1)
  {
    v18 = v16;
    v131 = v16;
    if (v16 + 1 >= v15)
    {
      v35 = v16 + 1;
    }

    else
    {
      v136 = v15;
      v129 = v17;
      v19 = *a3;
      v20 = *a3 + 24 * (v16 + 1);
      v21 = *(v20 + 16);
      v145 = *(v20 + 8);
      v132 = 24 * v16;
      v22 = v19 + 24 * v16;
      v23 = *(v22 + 16);
      v146 = *(v22 + 8);
      v147 = v22;
      v24 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
      swift_beginAccess();
      v25 = *v139;
      v26 = v140;
      v5 = v142;
      (*v139)(v140, &v21[v24], v142);
      v27 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
      swift_beginAccess();
      v28 = &v23[v27];
      v29 = v141;
      v134 = v25;
      (v25)(v141, v28, v5);

      v30 = v21;

      v31 = v23;
      v137 = sub_1C014BD10();
      v32 = *v138;
      (*v138)(v29, v5);
      v133 = v32;
      (v32)(v26, v5);

      v33 = v131 + 2;
      v34 = (v147 + 64);
      while (1)
      {
        v35 = v136;
        if (v136 == v33)
        {
          break;
        }

        LODWORD(v146) = v137 == 1;
        v36 = *v34;
        v144 = *(v34 - 1);
        v37 = *(v34 - 3);
        v145 = *(v34 - 4);
        v38 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
        v147 = v33;
        swift_beginAccess();
        v39 = v140;
        v135 = v6;
        v40 = v142;
        v41 = v134;
        (v134)(v140, &v36[v38], v142);
        v42 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
        swift_beginAccess();
        v43 = v141;
        v41(v141, &v37[v42], v40);
        v5 = v144;

        v143 = v36;

        v44 = v37;
        v45 = sub_1C014BD10();
        v46 = v133;
        (v133)(v43, v40);
        v47 = v40;
        v6 = v135;
        v46(v39, v47);

        v33 = v147 + 1;
        v34 += 3;
        if (((v146 ^ (v45 != 1)) & 1) == 0)
        {
          v35 = v147;
          break;
        }
      }

      a3 = v128;
      v17 = v129;
      a1 = v130;
      v18 = v131;
      v48 = v132;
      if (v137 == 1)
      {
        if (v35 < v131)
        {
          goto LABEL_118;
        }

        if (v131 < v35)
        {
          v49 = 0;
          v50 = 24 * v35;
          v51 = v131;
          do
          {
            if (v51 != v35 + v49 - 1)
            {
              v57 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v52 = v57 + v48;
              v53 = v57 + v50;
              v54 = *v52;
              v55 = *(v52 + 8);
              v56 = *(v53 - 24);
              *(v52 + 16) = *(v53 - 8);
              *v52 = v56;
              *(v53 - 24) = v54;
              *(v53 - 16) = v55;
            }

            ++v51;
            --v49;
            v50 -= 24;
            v48 += 24;
          }

          while (v51 < v35 + v49);
        }
      }
    }

    v58 = a3[1];
    if (v35 < v58)
    {
      if (__OFSUB__(v35, v18))
      {
        goto LABEL_117;
      }

      if (v35 - v18 < v127)
      {
        if (__OFADD__(v18, v127))
        {
          goto LABEL_119;
        }

        if (v18 + v127 >= v58)
        {
          v59 = a3[1];
        }

        else
        {
          v59 = v18 + v127;
        }

        if (v59 < v18)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v35 != v59)
        {
          break;
        }
      }
    }

    v16 = v35;
    if (v35 < v18)
    {
      goto LABEL_116;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C00FE794(0, *(v17 + 2) + 1, 1, v17);
      v17 = result;
    }

    v61 = *(v17 + 2);
    v60 = *(v17 + 3);
    v62 = v61 + 1;
    if (v61 >= v60 >> 1)
    {
      result = sub_1C00FE794((v60 > 1), v61 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 2) = v62;
    v63 = &v17[16 * v61];
    *(v63 + 4) = v131;
    *(v63 + 5) = v16;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if (v61)
    {
      while (1)
      {
        v5 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v65 = *(v17 + 4);
          v66 = *(v17 + 5);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_48:
          if (v68)
          {
            goto LABEL_105;
          }

          v81 = &v17[16 * v62];
          v83 = *v81;
          v82 = *(v81 + 1);
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_108;
          }

          v87 = &v17[16 * v5 + 32];
          v89 = *v87;
          v88 = *(v87 + 1);
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_112;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v5 = v62 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v91 = &v17[16 * v62];
        v93 = *v91;
        v92 = *(v91 + 1);
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_62:
        if (v86)
        {
          goto LABEL_107;
        }

        v94 = &v17[16 * v5];
        v96 = *(v94 + 4);
        v95 = *(v94 + 5);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_110;
        }

        if (v97 < v85)
        {
          goto LABEL_3;
        }

LABEL_69:
        v102 = v5 - 1;
        if (v5 - 1 >= v62)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = *&v17[16 * v102 + 32];
        v104 = *&v17[16 * v5 + 40];
        sub_1C0121AD4((*a3 + 24 * v103), (*a3 + 24 * *&v17[16 * v5 + 32]), (*a3 + 24 * v104), v64);
        if (v6)
        {
        }

        if (v104 < v103)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1C010685C(v17);
        }

        if (v102 >= *(v17 + 2))
        {
          goto LABEL_102;
        }

        v105 = &v17[16 * v102];
        *(v105 + 4) = v103;
        *(v105 + 5) = v104;
        v148 = v17;
        result = sub_1C01067D0(v5);
        v17 = v148;
        v62 = *(v148 + 2);
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v69 = &v17[16 * v62 + 32];
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_103;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_104;
      }

      v76 = &v17[16 * v62];
      v78 = *v76;
      v77 = *(v76 + 1);
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_106;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_109;
      }

      if (v80 >= v72)
      {
        v98 = &v17[16 * v5 + 32];
        v100 = *v98;
        v99 = *(v98 + 1);
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_113;
        }

        if (v67 < v101)
        {
          v5 = v62 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v15 = a3[1];
    a1 = v130;
    if (v16 >= v15)
    {
      goto LABEL_89;
    }
  }

  v129 = v17;
  v135 = v6;
  v137 = *a3;
  v106 = (v137 + 24 * v35);
  v107 = (v18 - v35);
  v132 = v59;
LABEL_80:
  v136 = v35;
  v108 = v137 + 24 * v35;
  v109 = *(v108 + 8);
  v110 = *(v108 + 16);
  v133 = v107;
  v134 = v106;
  while (1)
  {
    v146 = v109;
    v143 = v107;
    v111 = *(v106 - 1);
    v147 = *(v106 - 2);
    v112 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
    swift_beginAccess();
    v113 = *v139;
    v114 = v140;
    v115 = v142;
    (*v139)(v140, &v110[v112], v142);
    v116 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
    swift_beginAccess();
    v117 = v141;
    v113(v141, &v111[v116], v115);

    v145 = v110;

    v144 = v111;
    v118 = sub_1C014BD10();
    v5 = v138;
    v119 = *v138;
    (*v138)(v117, v115);
    v119(v114, v115);

    if (v118 != 1)
    {
LABEL_79:
      v35 = v136 + 1;
      v106 = v134 + 24;
      v107 = v133 - 1;
      v16 = v132;
      if (v136 + 1 != v132)
      {
        goto LABEL_80;
      }

      v6 = v135;
      a3 = v128;
      v17 = v129;
      a1 = v130;
      if (v132 < v131)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    v120 = v143;
    if (!v137)
    {
      break;
    }

    v121 = *v106;
    v109 = *(v106 + 1);
    v110 = *(v106 + 2);
    *v106 = *(v106 - 24);
    *(v106 + 2) = *(v106 - 1);
    *(v106 - 2) = v109;
    *(v106 - 1) = v110;
    *(v106 - 3) = v121;
    v106 -= 24;
    v122 = __CFADD__(v120, 1);
    v107 = v120 + 1;
    if (v122)
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  return result;
}

uint64_t sub_1C0121AD4(char *a1, char *a2, char *a3, char *a4)
{
  v61 = sub_1C014BD40();
  v8 = *(v61 - 8);
  v9 = MEMORY[0x1EEE9AC00](v61);
  v60 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v53 - v11;
  v12 = (a2 - a1) / 24;
  v13 = (a3 - a2) / 24;
  if (v12 >= v13)
  {
    v62 = a1;
    if (a4 != a2 || &a2[24 * v13] <= a4)
    {
      memmove(a4, a2, 24 * v13);
    }

    v14 = &a4[24 * v13];
    if (a3 - a2 >= 24 && a2 > v62)
    {
      v54 = (v8 + 8);
      v55 = (v8 + 16);
      v64 = a4;
      v29 = v61;
LABEL_22:
      v30 = a3 - 24;
      v66 = a2;
      do
      {
        v63 = v14;
        v65 = v30;
        v31 = *(v14 - 1);
        v32 = *(a2 - 2);
        v33 = *(a2 - 1);
        v57 = v32;
        v58 = v30 + 24;
        v34 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
        swift_beginAccess();
        v35 = *v55;
        v36 = v59;
        (*v55)(v59, &v31[v34], v29);
        v37 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
        swift_beginAccess();
        v38 = v60;
        (v35)(v60, &v33[v37], v29);

        v56 = v31;

        v39 = v33;
        v40 = sub_1C014BD10();
        v41 = *v54;
        (*v54)(v38, v29);
        v41(v36, v29);

        if (v40 == 1)
        {
          v46 = v62;
          v47 = v63;
          v48 = v66;
          v49 = v66 - 24;
          a3 = v65;
          if (v58 != v66)
          {
            v50 = *v49;
            *(v65 + 2) = *(v66 - 1);
            *a3 = v50;
          }

          a4 = v64;
          v14 = v47;
          if (v47 <= v64 || (a2 = v48 - 24, v49 <= v46))
          {
            a2 = v48 - 24;
            goto LABEL_33;
          }

          goto LABEL_22;
        }

        v42 = v63;
        v43 = v63 - 24;
        v44 = v65;
        if (v58 != v63)
        {
          v45 = *v43;
          *(v65 + 2) = *(v63 - 1);
          *v44 = v45;
        }

        v30 = v44 - 24;
        v14 = v42 - 24;
        a4 = v64;
        a2 = v66;
      }

      while (v43 > v64);
      v14 = v42 - 24;
    }
  }

  else
  {
    if (a4 != a1 || &a1[24 * v12] <= a4)
    {
      memmove(a4, a1, 24 * v12);
    }

    v14 = &a4[24 * v12];
    if (a2 - a1 >= 24 && a2 < a3)
    {
      v55 = (v8 + 8);
      v56 = (v8 + 16);
      v65 = a3;
      v63 = &a4[24 * v12];
      v15 = v59;
      while (1)
      {
        v66 = a2;
        v62 = a1;
        v16 = *(a2 + 2);
        v58 = *(a2 + 1);
        v64 = a4;
        v17 = *(a4 + 2);
        v18 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
        swift_beginAccess();
        v19 = *v56;
        v20 = v61;
        (*v56)(v15, &v16[v18], v61);
        v21 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
        swift_beginAccess();
        v22 = v60;
        v19(v60, &v17[v21], v20);

        v57 = v16;

        v23 = v17;
        v24 = sub_1C014BD10();
        v25 = *v55;
        (*v55)(v22, v20);
        v25(v15, v20);

        if (v24 != 1)
        {
          break;
        }

        v26 = v66;
        a2 = v66 + 24;
        v27 = v62;
        a4 = v64;
        if (v62 != v66)
        {
          goto LABEL_12;
        }

LABEL_13:
        a1 = v27 + 24;
        v14 = v63;
        if (a4 >= v63 || a2 >= v65)
        {
          goto LABEL_15;
        }
      }

      v26 = v64;
      a4 = v64 + 24;
      v27 = v62;
      a2 = v66;
      if (v62 == v64)
      {
        goto LABEL_13;
      }

LABEL_12:
      v28 = *v26;
      *(v27 + 2) = *(v26 + 2);
      *v27 = v28;
      goto LABEL_13;
    }

LABEL_15:
    a2 = a1;
  }

LABEL_33:
  v51 = (v14 - a4) / 24;
  if (a2 != a4 || a2 >= &a4[24 * v51])
  {
    memmove(a2, a4, 24 * v51);
  }

  return 1;
}

void sub_1C0122054(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
LABEL_25:
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v23 = a1;
    v22 = a2;
    v10 = 0;
    v11 = 0;
    v12 = 1 << *(a3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a3 + 64);
    v15 = (v12 + 63) >> 6;
    while (2)
    {
      v24 = v10;
      do
      {
        if (!v14)
        {
          v17 = v11;
          while (1)
          {
            v11 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v11 >= v15)
            {
              goto LABEL_23;
            }

            v18 = *(a3 + 64 + 8 * v11);
            ++v17;
            if (v18)
            {
              v16 = __clz(__rbit64(v18));
              v14 = (v18 - 1) & v18;
              goto LABEL_15;
            }
          }

          __break(1u);
          goto LABEL_25;
        }

        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_15:
        v19 = v16 | (v11 << 6);
        v20 = (*(*(a3 + 56) + 8 * v19) + OBJC_IVAR___TPSSavedTipEntry_tipIdentifier);
        swift_beginAccess();
        v21 = *v20 == a4 && v20[1] == a5;
      }

      while (!v21 && (sub_1C014C9F0() & 1) == 0);
      *(v23 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v10 = v24 + 1;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      break;
    }

    __break(1u);
LABEL_23:

    sub_1C01222A8(v23, v22, v24, a3);
    swift_bridgeObjectRelease_n();
  }
}