void sub_1C013AD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EBE06360 != -1)
  {
    swift_once();
  }

  sub_1C014C800();

  v3 = sub_1C014C9C0();
  MEMORY[0x1C68D6B10](v3);

  MEMORY[0x1C68D6B10](0x7473656767757320, 0xED00002E736E6F69);
  v4._countAndFlagsBits = 0xD000000000000013;
  v4._object = 0x80000001C015D600;
  TipsLog.info(_:)(v4);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      if (v7 == *&v6[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_query])
      {
        v9 = v7;

        v11 = sub_1C0110C68(v10);

        swift_beginAccess();
        sub_1C013BBA0(v11);
        swift_endAccess();

        v6 = v9;
      }
    }

    else
    {
      v8 = v6;
    }
  }
}

void sub_1C013AF70(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EBE06360 != -1)
  {
    swift_once();
  }

  sub_1C014C800();

  if (a1 >> 62)
  {
    sub_1C014C750();
  }

  v4 = sub_1C014C9C0();
  MEMORY[0x1C68D6B10](v4);

  MEMORY[0x1C68D6B10](0x2E736D65746920, 0xE700000000000000);
  v5._countAndFlagsBits = 0xD000000000000013;
  v5._object = 0x80000001C015D600;
  TipsLog.info(_:)(v5);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      if (v8 == *&v7[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_query])
      {
        v10 = v8;

        v12 = sub_1C0110F58(v11);

        swift_beginAccess();
        sub_1C013BCA4(v12);
        swift_endAccess();

        v7 = v10;
      }
    }

    else
    {
      v9 = v7;
    }
  }
}

uint64_t sub_1C013B170(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1C0139480();
  v3 = sub_1C014C3C0();

  v2(v3);
}

void sub_1C013B1E4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EBE06360 != -1)
    {
      swift_once();
    }

    sub_1C014C800();

    v6 = sub_1C013A3E4();
    MEMORY[0x1C68D6B10](v6);

    MEMORY[0x1C68D6B10](0x6520687469772073, 0xEE00203A726F7272);
    if (a1)
    {
      swift_getErrorValue();
      sub_1C014CA90();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A08, &qword_1C01574A0);
    v7 = sub_1C014C290();
    MEMORY[0x1C68D6B10](v7);

    v8._countAndFlagsBits = 0xD000000000000017;
    v8._object = 0x80000001C015D5E0;
    TipsLog.info(_:)(v8);

    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    sub_1C013B3B0(v9, a1);
  }
}

uint64_t sub_1C013B3B0(void *a1, void *a2)
{
  v5 = sub_1C014C0A0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C014C0D0();
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = *(v2 + OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_query);
    if (v14)
    {
      v15 = v14 == a1;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v22 = *(v2 + OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_queue);
      v23 = v11;
      v24 = result;
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      v18[2] = v16;
      v18[3] = v17;
      v18[4] = a2;
      aBlock[4] = sub_1C013C198;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C011431C;
      aBlock[3] = &block_descriptor_32_0;
      v19 = _Block_copy(aBlock);
      v20 = a1;

      v21 = a2;
      sub_1C014C0B0();
      v25 = MEMORY[0x1E69E7CC0];
      sub_1C013E0C8(&qword_1EBE05D10, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066C0, &unk_1C01576F0);
      sub_1C01043E8();
      sub_1C014C700();
      MEMORY[0x1C68D6DD0](0, v13, v8, v19);
      _Block_release(v19);

      (*(v6 + 8))(v8, v5);
      (*(v23 + 8))(v13, v24);
    }
  }

  return result;
}

id sub_1C013B6FC()
{
  v1 = v0;
  v2 = sub_1C014C130();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = sub_1C014C150();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_1EBE06360 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10[1] = qword_1EBE06738;
  v8._object = 0x80000001C015D540;
  v8._countAndFlagsBits = 0xD000000000000021;
  TipsLog.debug(_:)(v8);
  result = *(v1 + OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_query);
  if (result)
  {
    return [result cancel];
  }

  return result;
}

uint64_t type metadata accessor for CoreSpotlightQuery(uint64_t a1)
{
  result = qword_1EBE06AE0;
  if (!qword_1EBE06AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C013B9B0(uint64_t a1)
{
  sub_1C0102940(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_7Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C013BB30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C013BBA0(uint64_t result)
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

      sub_1C013C4D8(&v13, v11, v12);

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

void sub_1C013BCA4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1C014C740();
    sub_1C0139480();
    sub_1C013E0C8(&qword_1EBE067D8, sub_1C0139480, MEMORY[0x1E69E81B8]);
    sub_1C014C520();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_1C0123AC8(v1);
      return;
    }

    while (1)
    {
      sub_1C013C628(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1C014C770())
      {
        sub_1C0139480();
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1C013BE94(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_query;
      v9 = *&v5[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_query];
      if (v9 && v6 == v9)
      {
        if (a3)
        {
          v28 = a3;
          v10 = a3;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06808, &unk_1C0156A20);
          type metadata accessor for CSSearchQueryError(0);
          if (swift_dynamicCast())
          {
            v28 = v29;
            sub_1C013E0C8(&qword_1EBE06500, type metadata accessor for CSSearchQueryError, &unk_1C015615C);
            sub_1C014BB30();

            if (v29 == -2003)
            {
              v11 = *&v5[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_searchQuery];
              v12 = OBJC_IVAR___TPSSearchQuery_isCancelled;
              swift_beginAccess();
              *(v11 + v12) = 1;
            }
          }
        }

        v13 = *&v5[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_searchQuery];
        swift_beginAccess();
        v14 = v13;

        v16 = sub_1C013C428(v15);

        v17 = OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_completions;
        swift_beginAccess();
        v18 = *&v5[v17];
        v19 = *(v18 + 16);
        if (v19)
        {
          v26 = v16;
          v20 = sub_1C013C1A4(v19, 0);
          v21 = sub_1C013DA78(&v28, v20 + 4, v19, v18);
          v22 = v28;
          v27 = v21;

          sub_1C0123AC8(v22);
          if (v27 != v19)
          {
            __break(1u);
            return;
          }

          v16 = v26;
        }

        else
        {
          v20 = MEMORY[0x1E69E7CC0];
        }

        v23 = sub_1C0138D7C(v14, v16, v20);

        v24 = *&v5[OBJC_IVAR____TtC8TipsCore18CoreSpotlightQuery_completion];

        v25 = v23;
        v24(v23, a3);

        v7 = *&v5[v8];
        *&v5[v8] = 0;
      }
    }

    else
    {
      v7 = v5;
    }
  }
}

void *sub_1C013C1A4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065A8, &qword_1C0156720);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1C013C228(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066E8, &unk_1C0156700);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1C013C2BC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06AF0, &unk_1C0157700);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1C013C344(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for SearchResult.Item();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06AF0, &unk_1C0157700);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_1C013C428(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1C014C750();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1C013C2BC(v2, 0);

    v1 = sub_1C013DBD0(&v5, v3 + 4, v2, v1);
    sub_1C0123AC8(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1C013C4D8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C014CAE0();
  sub_1C014C2E0();
  v8 = sub_1C014CB10();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1C014C9F0() & 1) != 0)
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

    sub_1C013CF2C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C013C628(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1C014C760();

    if (v9)
    {

      sub_1C0139480();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1C014C750();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1C013C840(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1C013CC80(v20 + 1);
    }

    v18 = v8;
    sub_1C013CEA8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1C0139480();
  v11 = sub_1C014C600();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1C013D0AC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1C014C610();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1C013C840(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06AF8, &qword_1C0157718);
    v2 = sub_1C014C7D0();
    v15 = v2;
    sub_1C014C740();
    if (sub_1C014C770())
    {
      sub_1C0139480();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1C013CC80(v9 + 1);
        }

        v2 = v15;
        result = sub_1C014C600();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1C014C770());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1C013CA20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06B00, &qword_1C0157720);
  result = sub_1C014C7C0();
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
      sub_1C014CAE0();
      sub_1C014C2E0();
      result = sub_1C014CB10();
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

uint64_t sub_1C013CC80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06AF8, &qword_1C0157718);
  result = sub_1C014C7C0();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_1C014C600();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1C013CEA8(uint64_t a1, uint64_t a2)
{
  sub_1C014C600();
  result = sub_1C014C730();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1C013CF2C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1C013CA20(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1C013D20C();
      goto LABEL_16;
    }

    sub_1C013D4B8(v8 + 1);
  }

  v10 = *v4;
  sub_1C014CAE0();
  sub_1C014C2E0();
  result = sub_1C014CB10();
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

      result = sub_1C014C9F0();
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
  result = sub_1C014CA50();
  __break(1u);
  return result;
}

void sub_1C013D0AC(unint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C013CC80(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1C013D368();
      goto LABEL_12;
    }

    sub_1C013D6F0(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1C014C600();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1C0139480();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1C014C610();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1C014CA50();
  __break(1u);
}

void *sub_1C013D20C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06B00, &qword_1C0157720);
  v2 = *v0;
  v3 = sub_1C014C7B0();
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

id sub_1C013D368()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06AF8, &qword_1C0157718);
  v2 = *v0;
  v3 = sub_1C014C7B0();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_1C013D4B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06B00, &qword_1C0157720);
  result = sub_1C014C7C0();
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
      sub_1C014CAE0();

      sub_1C014C2E0();
      result = sub_1C014CB10();
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

uint64_t sub_1C013D6F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06AF8, &qword_1C0157718);
  result = sub_1C014C7C0();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_1C014C600();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

void *sub_1C013D904(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        v24 = v20;
        goto LABEL_23;
      }

      v11 += 3;

      v21 = v20;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1C013DA78(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1C013DBD0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1C014C740();
  sub_1C0139480();
  sub_1C013E0C8(&qword_1EBE067D8, sub_1C0139480, MEMORY[0x1E69E81B8]);
  result = sub_1C014C520();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1C014C770())
      {
        goto LABEL_30;
      }

      sub_1C0139480();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void sub_1C013DDFC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1C014C750())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06AF8, &qword_1C0157718);
      v3 = sub_1C014C7E0();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1C014C750();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x1C68D7040](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1C014C600();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1C0139480();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1C014C610();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_1C014C600();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1C0139480();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1C014C610();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1C013E0C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C013E154@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C0140114(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C013E1C4()
{
  v1 = *v0;
  sub_1C014CAE0();
  MEMORY[0x1C68D7300](v1);
  return sub_1C014CB10();
}

uint64_t sub_1C013E20C()
{
  v1 = *v0;
  sub_1C014CAE0();
  MEMORY[0x1C68D7300](v1);
  return sub_1C014CB10();
}

unint64_t sub_1C013E250@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C0140124(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t SearchQuery.QueryError.hashValue.getter()
{
  v1 = *v0;
  sub_1C014CAE0();
  MEMORY[0x1C68D7300](v1);
  return sub_1C014CB10();
}

uint64_t SearchQuery.options.getter()
{
  v1 = OBJC_IVAR___TPSSearchQuery_options;
  swift_beginAccess();
  return *(v0 + v1);
}

void SearchQuery.options.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TPSSearchQuery_options;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SearchQuery.matchingStyle.getter()
{
  v1 = OBJC_IVAR___TPSSearchQuery_matchingStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

void SearchQuery.matchingStyle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TPSSearchQuery_matchingStyle;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SearchQuery.contentTypeFilter.getter()
{
  v1 = OBJC_IVAR___TPSSearchQuery_contentTypeFilter;
  swift_beginAccess();
  return *(v0 + v1);
}

void SearchQuery.contentTypeFilter.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TPSSearchQuery_contentTypeFilter;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SearchQuery.maxCount.getter()
{
  v1 = OBJC_IVAR___TPSSearchQuery_maxCount;
  swift_beginAccess();
  return *(v0 + v1);
}

void SearchQuery.maxCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TPSSearchQuery_maxCount;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SearchQuery.isCancelled.getter()
{
  v1 = OBJC_IVAR___TPSSearchQuery_isCancelled;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_1C013EC28(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);

  v5 = v3(v4, a2);

  return v5;
}

id SearchQuery.__allocating_init(identifier:searchTerm:options:matchingStyle:contentTypeFilter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v31 = a6;
  v32 = a7;
  v29 = a4;
  v30 = a5;
  v28 = a3;
  v11 = sub_1C014BD80();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(v8);
  v16 = &v15[OBJC_IVAR___TPSSearchQuery_identifier];
  sub_1C014BD70();
  v17 = sub_1C014BD50();
  v19 = v18;
  (*(v12 + 8))(v14, v11);
  *v16 = v17;
  v16[1] = v19;
  v20 = &v15[OBJC_IVAR___TPSSearchQuery_searchTerm];
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = OBJC_IVAR___TPSSearchQuery_options;
  *&v15[OBJC_IVAR___TPSSearchQuery_options] = 0;
  v22 = OBJC_IVAR___TPSSearchQuery_matchingStyle;
  *&v15[OBJC_IVAR___TPSSearchQuery_matchingStyle] = 0;
  v23 = OBJC_IVAR___TPSSearchQuery_contentTypeFilter;
  *&v15[OBJC_IVAR___TPSSearchQuery_contentTypeFilter] = 0;
  *&v15[OBJC_IVAR___TPSSearchQuery_maxCount] = 50;
  v15[OBJC_IVAR___TPSSearchQuery_isCancelled] = 0;
  v24 = &v15[OBJC_IVAR___TPSSearchQuery_rankingModifier];
  *v24 = 0;
  v24[1] = 0;
  swift_beginAccess();
  *v16 = a1;
  v16[1] = a2;

  swift_beginAccess();
  v25 = v29;
  *v20 = v28;
  v20[1] = v25;

  swift_beginAccess();
  *&v15[v21] = v30;
  swift_beginAccess();
  *&v15[v22] = v31;
  swift_beginAccess();
  *&v15[v23] = v32;
  v33.receiver = v15;
  v33.super_class = v8;
  return objc_msgSendSuper2(&v33, sel_init);
}

id SearchQuery.init(identifier:searchTerm:options:matchingStyle:contentTypeFilter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v33 = a7;
  v30 = a5;
  v31 = a6;
  v29 = a4;
  ObjectType = swift_getObjectType();
  v12 = sub_1C014BD80();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v8[OBJC_IVAR___TPSSearchQuery_identifier];
  sub_1C014BD70();
  v17 = sub_1C014BD50();
  v19 = v18;
  (*(v13 + 8))(v15, v12);
  *v16 = v17;
  v16[1] = v19;
  v20 = &v8[OBJC_IVAR___TPSSearchQuery_searchTerm];
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = OBJC_IVAR___TPSSearchQuery_options;
  *&v8[OBJC_IVAR___TPSSearchQuery_options] = 0;
  v22 = OBJC_IVAR___TPSSearchQuery_matchingStyle;
  *&v8[OBJC_IVAR___TPSSearchQuery_matchingStyle] = 0;
  v23 = OBJC_IVAR___TPSSearchQuery_contentTypeFilter;
  *&v8[OBJC_IVAR___TPSSearchQuery_contentTypeFilter] = 0;
  *&v8[OBJC_IVAR___TPSSearchQuery_maxCount] = 50;
  v8[OBJC_IVAR___TPSSearchQuery_isCancelled] = 0;
  v24 = &v8[OBJC_IVAR___TPSSearchQuery_rankingModifier];
  *v24 = 0;
  v24[1] = 0;
  swift_beginAccess();
  *v16 = a1;
  v16[1] = a2;

  swift_beginAccess();
  v25 = v29;
  *v20 = a3;
  v20[1] = v25;

  swift_beginAccess();
  *&v8[v21] = v30;
  swift_beginAccess();
  *&v8[v22] = v31;
  swift_beginAccess();
  v26 = ObjectType;
  *&v8[v23] = v33;
  v34.receiver = v8;
  v34.super_class = v26;
  return objc_msgSendSuper2(&v34, sel_init);
}

id SearchQuery.__allocating_init(identifier:searchTerm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_allocWithZone(v4);
  v6 = sub_1C014C200();

  v7 = sub_1C014C200();

  v8 = [v5 initWithIdentifier:v6 searchTerm:v7 options:0 matchingStyle:0 contentTypeFilter:0];

  return v8;
}

id SearchQuery.init(identifier:searchTerm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C014C200();

  v6 = sub_1C014C200();

  v7 = [v4 initWithIdentifier:v5 searchTerm:v6 options:0 matchingStyle:0 contentTypeFilter:0];

  return v7;
}

uint64_t SearchQuery.description.getter()
{
  v1 = v0;
  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x6669746E65646928, 0xEC0000003A726569);
  v2 = (v0 + OBJC_IVAR___TPSSearchQuery_identifier);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  MEMORY[0x1C68D6B10](v3, v4);

  MEMORY[0x1C68D6B10](0x686372616573202CLL, 0xED00003A6D726554);
  v5 = (v1 + OBJC_IVAR___TPSSearchQuery_searchTerm);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];

  MEMORY[0x1C68D6B10](v6, v7);

  MEMORY[0x1C68D6B10](0x6E6F6974706F202CLL, 0xEA00000000003A73);
  swift_beginAccess();
  type metadata accessor for TPSSearchQueryOptions(0);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000010, 0x80000001C015D640);
  swift_beginAccess();
  v8 = sub_1C014C9C0();
  MEMORY[0x1C68D6B10](v8);

  MEMORY[0x1C68D6B10](0xD000000000000014, 0x80000001C015D660);
  swift_beginAccess();
  v9 = sub_1C014C9C0();
  MEMORY[0x1C68D6B10](v9);

  MEMORY[0x1C68D6B10](0x756F4378616D202CLL, 0xEB000000003A746ELL);
  swift_beginAccess();
  v10 = sub_1C014C9C0();
  MEMORY[0x1C68D6B10](v10);

  return 0;
}

id SearchQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchQuery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall SearchQuery.encode(with:)(NSCoder with)
{
  swift_beginAccess();

  v3 = sub_1C014C200();

  v4 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  swift_beginAccess();

  v5 = sub_1C014C200();

  v6 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  swift_beginAccess();
  v7 = sub_1C014C670();
  v8 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = OBJC_IVAR___TPSSearchQuery_matchingStyle;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeInteger:v10 forKey:v11];

  v12 = OBJC_IVAR___TPSSearchQuery_contentTypeFilter;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeInteger:v13 forKey:v14];

  v15 = OBJC_IVAR___TPSSearchQuery_maxCount;
  swift_beginAccess();
  v16 = *(v1 + v15);
  v17 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeInteger:v16 forKey:v17];

  v18 = OBJC_IVAR___TPSSearchQuery_isCancelled;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeBool:v19 forKey:v20];
}

id SearchQuery.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

_BYTE *SearchQuery.init(coder:)(void *a1)
{
  v2 = v1;
  sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  v4 = sub_1C014C5E0();
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = sub_1C014C5E0();
  if (!v6)
  {

    a1 = v5;
LABEL_7:

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v7 = v6;
  sub_1C010074C(0, &qword_1EBE05C58, 0x1E696AD98);
  v8 = sub_1C014C5E0();
  if (v8)
  {
    v9 = v8;
    sub_1C014C680();
  }

  v11 = sub_1C014C200();
  v12 = [a1 decodeIntegerForKey_];

  if (v12 >= 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  v14 = sub_1C014C200();
  v15 = [a1 decodeIntegerForKey_];

  if (v15 >= 5)
  {
    v15 = 0;
  }

  v16 = sub_1C014C200();
  v17 = [a1 decodeIntegerForKey_];

  v18 = sub_1C014C200();
  v19 = [a1 decodeBoolForKey_];

  v20 = [v2 initWithIdentifier:v5 searchTerm:v7 options:0 matchingStyle:v13 contentTypeFilter:v15];
  v21 = OBJC_IVAR___TPSSearchQuery_maxCount;
  swift_beginAccess();
  *&v20[v21] = v17;
  v22 = OBJC_IVAR___TPSSearchQuery_isCancelled;
  swift_beginAccess();
  result = v20;
  v20[v22] = v19;
  return result;
}

uint64_t SearchQuery.hash.getter()
{
  v1 = (v0 + OBJC_IVAR___TPSSearchQuery_identifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  v4 = MEMORY[0x1C68D6B80](v3, v2);

  return v4;
}

uint64_t SearchQuery.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C011C8B0(a1, v11);
  if (!v12)
  {
    sub_1C00FC158(v11);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    return v8 & 1;
  }

  v3 = (v1 + OBJC_IVAR___TPSSearchQuery_identifier);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = &v10[OBJC_IVAR___TPSSearchQuery_identifier];
  swift_beginAccess();
  if (v4 == *v6 && v5 == *(v6 + 1))
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_1C014C9F0();
  }

  return v8 & 1;
}

unint64_t sub_1C0140114(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C0140124(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C0140138()
{
  result = qword_1EBE06B58;
  if (!qword_1EBE06B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06B58);
  }

  return result;
}

unint64_t sub_1C01401C0()
{
  result = qword_1EBE06B70;
  if (!qword_1EBE06B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06B70);
  }

  return result;
}

uint64_t sub_1C0140244(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C014029C()
{
  result = qword_1EBE06B88;
  if (!qword_1EBE06B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06B88);
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1C01403A8()
{
  v0 = _sSo14NSXPCInterfaceC8TipsCoreE25assistantSupportInterfaceABvgZ_0();

  return v0;
}

uint64_t sub_1C01403D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06570, &qword_1C01562F8);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1EBE06B90;
    v3 = &unk_1C0157A00;
  }

  else
  {
    v2 = &qword_1EBE06AF0;
    v3 = &unk_1C0157700;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

id _sSo14NSXPCInterfaceC8TipsCoreE25assistantSupportInterfaceABvgZ_0()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  sub_1C01403D0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0156390;
  *(inited + 32) = type metadata accessor for ResultContext();
  v2 = sub_1C010074C(0, &unk_1EDD44910, 0x1E695DEC8);
  *(inited + 40) = v2;
  sub_1C00FA23C(inited);
  swift_setDeallocating();
  v3 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v4 = sub_1C014C3B0();

  v5 = [v3 initWithArray_];

  sub_1C014C500();
  v6 = sub_1C014C4F0();

  [v0 setClasses:v6 forSelector:sel_findMatchingResultIdFromContexts_reply_ argumentIndex:0 ofReply:0];

  sub_1C01403D0();
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1C0156390;
  v28 = sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  *(v7 + 32) = v28;
  *(v7 + 40) = v2;
  sub_1C00FA23C(v7);
  swift_setDeallocating();
  v8 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v9 = sub_1C014C3B0();

  v10 = [v8 initWithArray_];

  sub_1C014C500();
  v11 = sub_1C014C4F0();

  [v0 setClasses:v11 forSelector:sel_availableUserGuideIdentifiersWithReply_ argumentIndex:0 ofReply:1];

  sub_1C01403D0();
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1C0156330;
  *(v12 + 32) = sub_1C010074C(0, &qword_1EBE05C60, off_1E8100990);
  sub_1C00FA23C(v12);
  swift_setDeallocating();
  v13 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v14 = sub_1C014C3B0();

  v15 = [v13 initWithArray_];

  sub_1C014C500();
  v16 = sub_1C014C4F0();

  [v0 setClasses:v16 forSelector:sel_fetchDocumentWithIdentifier_reply_ argumentIndex:0 ofReply:1];

  sub_1C01403D0();
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1C0156330;
  *(v17 + 32) = type metadata accessor for ContextKeys();
  sub_1C00FA23C(v17);
  swift_setDeallocating();
  v18 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v19 = sub_1C014C3B0();

  v20 = [v18 initWithArray_];

  sub_1C014C500();
  v21 = sub_1C014C4F0();

  [v0 setClasses:v21 forSelector:sel_resolveContextForKeys_reply_ argumentIndex:0 ofReply:0];

  sub_1C01403D0();
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1C0156A40;
  *(v22 + 32) = sub_1C010074C(0, &unk_1EDD44B80, 0x1E695DF20);
  *(v22 + 40) = v28;
  *(v22 + 48) = sub_1C010074C(0, &qword_1EBE05C58, 0x1E696AD98);
  sub_1C00FA23C(v22);
  swift_setDeallocating();
  v23 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v24 = sub_1C014C3B0();

  v25 = [v23 initWithArray_];

  sub_1C014C500();
  v26 = sub_1C014C4F0();

  [v0 setClasses:v26 forSelector:sel_resolveContextForKeys_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

uint64_t sub_1C0140A18(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_1C0140AC4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698F2E0]);
  v1 = @"FeatureDiscoverability";
  v2 = [v0 initWithUseCase_];

  qword_1EBE06B98 = v2;
}

uint64_t sub_1C0140B28(uint64_t a1, uint64_t a2)
{
  v2 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  result = swift_allocObject();
  *(result + 16) = v2;
  qword_1EBE05CE8 = sub_1C0143B6C;
  unk_1EBE05CF0 = result;
  return result;
}

uint64_t sub_1C0140BA8(uint64_t a1, uint64_t a2)
{
  v2 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v3 = [v2 Intent];
  result = swift_unknownObjectRelease();
  qword_1EBE06BA0 = v3;
  return result;
}

void *static TipsBiomeSQLQueryManager.countsForOutgoingCalls(_:interval:)(uint64_t a1, void *a2)
{
  v4 = sub_1C014BD40();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v48 - v12;
  if (a2)
  {
    v14 = a2;
    v15 = [v14 startDate];
    sub_1C014BD00();

    v16 = *(v5 + 56);
    v16(v13, 0, 1, v4);
    v51 = v14;
    v17 = [v14 endDate];
    sub_1C014BD00();

    v16(v11, 0, 1, v4);
    v18 = *(v5 + 48);
    if (v18(v13, 1, v4) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = sub_1C014BCE0();
      (*(v5 + 8))(v13, v4);
    }

    if (v18(v11, 1, v4) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = sub_1C014BCE0();
      (*(v5 + 8))(v11, v4);
    }

    v21 = [objc_allocWithZone(MEMORY[0x1E698F2D0]) initWithStartDate:v19 endDate:v20 maxEvents:0 lastN:0 reversed:0];

    if (qword_1EBE06398 != -1)
    {
      swift_once();
    }

    v50 = [qword_1EBE06BA0 publisherWithOptions_];
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    v48[1] = v22 + 16;
    v49 = v21;
    if (qword_1EDD44C50 != -1)
    {
      swift_once();
    }

    aBlock._countAndFlagsBits = qword_1EDD44C58;
    v23._countAndFlagsBits = 0xD00000000000002DLL;
    v23._object = 0x80000001C015D810;
    TipsLog.debug(_:)(v23);
    v48[0] = qword_1EDD44C58;
    aBlock._countAndFlagsBits = 0;
    aBlock._object = 0xE000000000000000;
    sub_1C014C800();

    aBlock._countAndFlagsBits = 0xD00000000000001CLL;
    aBlock._object = 0x80000001C015D840;
    v24 = MEMORY[0x1C68D6BE0](a1, MEMORY[0x1E69E6158]);
    v25 = a1;
    MEMORY[0x1C68D6B10](v24);

    MEMORY[0x1C68D6B10](0x767265746E69202CLL, 0xEC000000203A6C61);
    v26 = v51;
    v27 = [v51 startDate];
    sub_1C014BD00();

    v28 = sub_1C014BD20();
    v30 = v29;
    v31 = *(v5 + 8);
    v31(v7, v4);
    MEMORY[0x1C68D6B10](v28, v30);

    MEMORY[0x1C68D6B10](544175136, 0xE400000000000000);
    v32 = [v26 endDate];
    sub_1C014BD00();

    v33 = sub_1C014BD20();
    v35 = v34;
    v31(v7, v4);
    MEMORY[0x1C68D6B10](v33, v35);

    v36 = aBlock;
    aBlock._countAndFlagsBits = v48[0];
    TipsLog.debug(_:)(v36);

    v37 = swift_allocObject();
    *(v37 + 16) = v25;
    v57 = sub_1C01439D0;
    v58 = v37;
    aBlock._countAndFlagsBits = MEMORY[0x1E69E9820];
    aBlock._object = 1107296256;
    v55 = sub_1C0143C28;
    v56 = &block_descriptor_10;
    v38 = _Block_copy(&aBlock);

    v39 = v50;
    v40 = [v50 filterWithIsIncluded_];
    _Block_release(v38);
    v57 = nullsub_1;
    v58 = 0;
    aBlock._countAndFlagsBits = MEMORY[0x1E69E9820];
    aBlock._object = 1107296256;
    v55 = sub_1C0143C24;
    v56 = &block_descriptor_6;
    v41 = _Block_copy(&aBlock);
    v57 = sub_1C01439F0;
    v58 = v22;
    aBlock._countAndFlagsBits = MEMORY[0x1E69E9820];
    aBlock._object = 1107296256;
    v55 = sub_1C0143C24;
    v56 = &block_descriptor_9;
    v42 = _Block_copy(&aBlock);

    v43 = [v40 sinkWithCompletion:v41 receiveInput:v42];
    _Block_release(v42);
    _Block_release(v41);

    v44 = qword_1EDD44C58;
    aBlock._countAndFlagsBits = 0;
    aBlock._object = 0xE000000000000000;
    sub_1C014C800();

    v53._countAndFlagsBits = 0xD000000000000021;
    v53._object = 0x80000001C015D890;
    swift_beginAccess();
    v52 = *(v22 + 16);
    v45 = sub_1C014C9C0();
    MEMORY[0x1C68D6B10](v45);

    MEMORY[0x1C68D6B10](0x6E69686374616D20, 0xEF736C6C61632067);
    v46 = v53;
    v53._countAndFlagsBits = v44;
    TipsLog.debug(_:)(v46);

    a2 = *(v22 + 16);
  }

  return a2;
}

uint64_t sub_1C0141424(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  if ([v3 interactionDirection] != 2 || (v5 = objc_msgSend(v4, sel_groupIdentifier)) == 0)
  {

LABEL_6:
    v11 = 0;
    return v11 & 1;
  }

  v6 = v5;
  v7 = sub_1C014C230();
  v9 = v8;

  v14[0] = v7;
  v14[1] = v9;
  MEMORY[0x1EEE9AC00](v10);
  v13[2] = v14;
  v11 = sub_1C0140A18(sub_1C0143BA4, v13, a2);

  return v11 & 1;
}

uint64_t sub_1C0141530(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_5;
  }

  *(a2 + 16) = v6;
  if (qword_1EDD44C50 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1C014C800();

  v7 = [a1 description];
  v8 = sub_1C014C230();
  v10 = v9;

  MEMORY[0x1C68D6B10](v8, v10);

  v11._countAndFlagsBits = 0xD000000000000024;
  v11._object = 0x80000001C015DAA0;
  TipsLog.debug(_:)(v11);
}

void *static TipsBiomeSQLQueryManager.queryLatestEvents(stream:limit:keys:isUnique:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a5)
  {
    v10 = 0xD000000000000011;
  }

  else
  {
    v10 = 0x2A205443454C4553;
  }

  if (a5)
  {
    v11 = 0x80000001C015D9D0;
  }

  else
  {
    v11 = 0xE800000000000000;
  }

  if (*(a4 + 16))
  {
    v49[0] = v10;
    v49[1] = v11;
    v47 = 42;
    v48 = 0xE100000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067C0, &qword_1C0157160);
    sub_1C01439F8();
    sub_1C014C1C0();
    v44 = sub_1C00FCDA8();
    v45 = v44;
    v42 = MEMORY[0x1E69E6158];
    v43 = v44;
    v10 = sub_1C014C6B0();
    v13 = v12;

    v11 = v13;
  }

  sub_1C014C800();

  strcpy(v49, "            ");
  BYTE5(v49[1]) = 0;
  HIWORD(v49[1]) = -5120;
  MEMORY[0x1C68D6B10](v10, v11);

  MEMORY[0x1C68D6B10](0xD000000000000013, 0x80000001C015D8C0);
  MEMORY[0x1C68D6B10](a1, a2);
  MEMORY[0x1C68D6B10](34, 0xE100000000000000);
  if (!*(a6 + 16))
  {
    goto LABEL_12;
  }

  MEMORY[0x1C68D6B10](0xD000000000000022, 0x80000001C015D8E0);
  v14 = sub_1C0142B38(v49[0], v49[1], a6);
  v16 = v15;

  if (v16)
  {
    v49[0] = v14;
    v49[1] = v16;
LABEL_12:
    MEMORY[0x1C68D6B10](0xD00000000000001ELL, 0x80000001C015D960);
    if (a3)
    {
      v17 = sub_1C014C9C0();
      MEMORY[0x1C68D6B10](v17);

      MEMORY[0x1C68D6B10](0x2054494D494C0ALL, 0xE700000000000000);
    }

    if (qword_1EDD44C50 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDD44C58;
    sub_1C014C800();

    v48 = 0x80000001C015D980;
    MEMORY[0x1C68D6B10](v49[0], v49[1]);
    v19._countAndFlagsBits = 0xD000000000000018;
    v47 = v18;
    v19._object = 0x80000001C015D980;
    TipsLog.debug(_:)(v19);

    if (qword_1EBE06388 != -1)
    {
      swift_once();
    }

    v20 = sub_1C014C550();

    v46 = MEMORY[0x1E69E7CC0];
    v21 = &property descriptor for TPSSavedTipEntry.lastUsedVersion;
    v22 = &selRef_authenticationHandler;
    while ([v20 v21[318]])
    {
      v24 = [v20 v22[236]];
      if (v24)
      {
        v25 = v24;
        v47 = 0;
        v48 = 0xE000000000000000;
        sub_1C014C800();

        v47 = 0xD000000000000024;
        v48 = 0x80000001C015D9A0;
        swift_getErrorValue();
        v26 = sub_1C014CA90();
        MEMORY[0x1C68D6B10](v26);

        v28 = v47;
        v27 = v48;
        v29 = sub_1C014C560();
        if (os_log_type_enabled(v18, v29))
        {
          v30 = v21;
          v31 = v22;
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v47 = v33;
          *v32 = 136315138;
          *(v32 + 4) = sub_1C010C980(v28, v27, &v47);
          _os_log_impl(&dword_1C00A7000, v18, v29, "%s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v33);
          MEMORY[0x1C68D7F30](v33, -1, -1);
          v34 = v32;
          v22 = v31;
          v21 = v30;
          MEMORY[0x1C68D7F30](v34, -1, -1);
        }
      }

      v23 = [v20 row];
      if (v23)
      {
        v35 = v23;
        v36 = sub_1C014C170();

        v37 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1C00FE9A4(0, v46[2] + 1, 1, v46);
        }

        v39 = v46[2];
        v38 = v46[3];
        if (v39 >= v38 >> 1)
        {
          v46 = sub_1C00FE9A4((v38 > 1), v39 + 1, 1, v46);
        }

        v46[2] = v39 + 1;
        v46[v39 + 4] = v36;
        v22 = v37;
      }
    }

    return v46;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  v47 = qword_1EDD44C58;
  v40._countAndFlagsBits = 0xD00000000000004DLL;
  v40._object = 0x80000001C015D910;
  TipsLog.error(_:)(v40);
  return MEMORY[0x1E69E7CC0];
}

uint64_t static TipsBiomeSQLQueryManager.queryDiscoverabilitySignalsEvents(with:context:interval:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06BA8, &unk_1C0157A10);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v41 - v16;
  v18 = sub_1C014B960();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0143A5C(a5, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1C0143ACC(v17);
    v22 = [objc_allocWithZone(MEMORY[0x1E698F2D0]) init];
  }

  else
  {
    v41 = a3;
    v42 = a4;
    v43 = a2;
    (*(v19 + 32))(v21, v17, v18);
    sub_1C014B950();
    v23 = sub_1C014BD40();
    v24 = *(v23 - 8);
    v25 = *(v24 + 56);
    v25(v14, 0, 1, v23);
    sub_1C014B940();
    v25(v12, 0, 1, v23);
    v26 = *(v24 + 48);
    v27 = 0;
    if (v26(v14, 1, v23) != 1)
    {
      v27 = sub_1C014BCE0();
      (*(v24 + 8))(v14, v23);
    }

    v28 = v27;
    if (v26(v12, 1, v23) == 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = sub_1C014BCE0();
      (*(v24 + 8))(v12, v23);
    }

    a4 = v42;
    a2 = v43;
    a3 = v41;
    v22 = [objc_allocWithZone(MEMORY[0x1E698F2D0]) initWithStartDate:v28 endDate:v29 maxEvents:0 lastN:0 reversed:0];

    (*(v19 + 8))(v21, v18);
  }

  if (qword_1EBE05CE0 != -1)
  {
    swift_once();
  }

  v30 = qword_1EBE05CE8();
  v31 = [v30 publisherWithOptions_];

  v32 = swift_allocObject();
  *(v32 + 16) = MEMORY[0x1E69E7CC0];
  v33 = swift_allocObject();
  v33[2] = v44;
  v33[3] = a2;
  v33[4] = a3;
  v33[5] = a4;
  v49 = sub_1C0143B34;
  v50 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1C0143C28;
  v48 = &block_descriptor_18;
  v34 = _Block_copy(&aBlock);

  v35 = [v31 filterWithIsIncluded_];
  _Block_release(v34);
  v49 = nullsub_1;
  v50 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1C0143C24;
  v48 = &block_descriptor_21;
  v36 = _Block_copy(&aBlock);
  v49 = sub_1C0143B40;
  v50 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1C0143C24;
  v48 = &block_descriptor_24_0;
  v37 = _Block_copy(&aBlock);

  v38 = [v35 sinkWithCompletion:v36 receiveInput:v37];
  _Block_release(v37);
  _Block_release(v36);

  swift_beginAccess();
  if (*(v32 + 16) >> 62)
  {
    v39 = sub_1C014C750();
  }

  else
  {
    v39 = *((*(v32 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v39)
  {
    v39 = *(v32 + 16);
  }

  return v39;
}

uint64_t sub_1C01422E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [a1 eventBody];
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  v12 = [v10 contentIdentifier];

  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = sub_1C014C230();
  v15 = v14;

  if (v13 == a2 && v15 == a3)
  {

    if (a5)
    {
      goto LABEL_9;
    }

LABEL_17:
    v24 = 1;
    return v24 & 1;
  }

  v17 = sub_1C014C9F0();

  if ((v17 & 1) == 0)
  {
LABEL_14:
    v24 = 0;
    return v24 & 1;
  }

  if (!a5)
  {
    goto LABEL_17;
  }

LABEL_9:
  v18 = [a1 eventBody];
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;
  v20 = [v18 context];

  if (!v20)
  {
    goto LABEL_14;
  }

  v21 = sub_1C014C230();
  v23 = v22;

  if (v21 == a4 && v23 == a5)
  {
    v24 = 1;
  }

  else
  {
    v24 = sub_1C014C9F0();
  }

  return v24 & 1;
}

uint64_t sub_1C014246C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

id sub_1C01424C4(void *a1, uint64_t a2)
{
  result = [a1 eventBody];
  if (result)
  {

    swift_beginAccess();
    v5 = a1;
    MEMORY[0x1C68D6BB0]();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C014C3E0();
    }

    sub_1C014C400();
    return swift_endAccess();
  }

  return result;
}

id TipsBiomeSQLQueryManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TipsBiomeSQLQueryManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipsBiomeSQLQueryManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TipsBiomeSQLQueryManager.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TipsBiomeSQLQueryManager();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1C0142668(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C014C9F0() & 1;
  }
}

void sub_1C01426C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a1;
  v39 = a2;
  v6 = a5 + 64;
  v7 = 1 << *(a5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a5 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
    v14 = v11;
LABEL_17:
    v17 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v18 = v17 | (v14 << 6);
    v19 = (*(a5 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    sub_1C00FC1C0(*(a5 + 56) + 32 * v18, v32);
    *&v33 = v21;
    *(&v33 + 1) = v20;
    sub_1C00F9954(v32, &v34);

LABEL_18:
    v36 = v33;
    v37[0] = v34;
    v37[1] = v35;
    v22 = *(&v33 + 1);
    if (!*(&v33 + 1))
    {

      return;
    }

    v23 = v36;
    sub_1C00F9954(v37, &v33);
    sub_1C00FC1C0(&v33, v32);
    if (swift_dynamicCast())
    {

      sub_1C014C800();
      MEMORY[0x1C68D6B10](0xD000000000000013, 0x80000001C015DA80);
      MEMORY[0x1C68D6B10](a3, a4);
      MEMORY[0x1C68D6B10](0x2E2427202CLL, 0xE500000000000000);
      MEMORY[0x1C68D6B10](v23, v22);

      MEMORY[0x1C68D6B10](0x22203D202927, 0xE600000000000000);
      sub_1C014C8B0();
      MEMORY[0x1C68D6B10](34, 0xE100000000000000);
      v12 = 0;
      v13 = 0xE000000000000000;
LABEL_5:
      MEMORY[0x1C68D6B10](v12, v13);

      goto LABEL_6;
    }

    if (swift_dynamicCast())
    {
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_1C014C800();
      MEMORY[0x1C68D6B10](0xD000000000000013, 0x80000001C015DA80);
      MEMORY[0x1C68D6B10](a3, a4);
      MEMORY[0x1C68D6B10](0x2E2427202CLL, 0xE500000000000000);
      MEMORY[0x1C68D6B10](v23, v22);

      MEMORY[0x1C68D6B10](0x203D202927, 0xE500000000000000);
      sub_1C014C8B0();
      v12 = v30;
      v13 = v31;
      goto LABEL_5;
    }

    if (qword_1EDD44C50 != -1)
    {
      swift_once();
    }

    v24 = qword_1EDD44C58;
    v25 = sub_1C014C560();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1C010C980(0xD00000000000002CLL, 0x80000001C015DA50, &v30);
      _os_log_impl(&dword_1C00A7000, v24, v25, "%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1C68D7F30](v27, -1, -1);
      MEMORY[0x1C68D7F30](v26, -1, -1);
    }

LABEL_6:
    __swift_destroy_boxed_opaque_existential_1Tm(&v33);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  if (v10 <= v11 + 1)
  {
    v15 = v11 + 1;
  }

  else
  {
    v15 = v10;
  }

  v16 = v15 - 1;
  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      v9 = 0;
      v34 = 0u;
      v35 = 0u;
      v11 = v16;
      v33 = 0u;
      goto LABEL_18;
    }

    v9 = *(v6 + 8 * v14);
    ++v11;
    if (v9)
    {
      v11 = v14;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_1C0142B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = a3 + 64;
  v4 = *(a3 + 64);
  v55 = a1;
  v56 = a2;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v42 = v9;
  v43 = v5;
  v40 = v3;
  while (1)
  {
    if (!v8)
    {
      if (v9 <= v10 + 1)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = v9;
      }

      v13 = v12 - 1;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v9)
        {
          v8 = 0;
          v51 = 0u;
          v52 = 0u;
          v10 = v13;
          v50 = 0u;
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v11);
        ++v10;
        if (v8)
        {
          v10 = v11;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    v11 = v10;
LABEL_16:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v3 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    sub_1C00FC1C0(*(v3 + 56) + 32 * v15, v49);
    *&v50 = v17;
    *(&v50 + 1) = v18;
    sub_1C00F9954(v49, &v51);

LABEL_17:
    v53 = v50;
    v54[0] = v51;
    v54[1] = v52;
    v19 = *(&v50 + 1);
    if (!*(&v50 + 1))
    {

      return v55;
    }

    v20 = v53;
    sub_1C00F9954(v54, &v50);
    sub_1C00FC1C0(&v50, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06C10, &qword_1C0157A58);
    if (swift_dynamicCast())
    {

      sub_1C00FC1C0(&v50, &v44);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_4;
      }

      v21 = *(v46 + 16);
      if (v21)
      {
        v41 = v20;
        v22 = v46 + 32;
        v23 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1C00FC1C0(v22, &v44);
          v46 = 0;
          v47 = 0xE000000000000000;
          sub_1C014C8B0();
          v25 = v46;
          v24 = v47;
          __swift_destroy_boxed_opaque_existential_1Tm(&v44);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_1C00FE898(0, *(v23 + 2) + 1, 1, v23);
          }

          v27 = *(v23 + 2);
          v26 = *(v23 + 3);
          if (v27 >= v26 >> 1)
          {
            v23 = sub_1C00FE898((v26 > 1), v27 + 1, 1, v23);
          }

          *(v23 + 2) = v27 + 1;
          v28 = &v23[16 * v27];
          *(v28 + 4) = v25;
          *(v28 + 5) = v24;
          v22 += 32;
          --v21;
        }

        while (v21);

        v20 = v41;
      }

      else
      {

        v23 = MEMORY[0x1E69E7CC0];
      }

      v44 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067C0, &qword_1C0157160);
      sub_1C01439F8();
      v35 = sub_1C014C1C0();
      v37 = v36;

      v44 = 0;
      v45 = 0xE000000000000000;
      sub_1C014C800();

      v44 = 0x20444E41200ALL;
      v45 = 0xE600000000000000;
      MEMORY[0x1C68D6B10](v20, v19);

      MEMORY[0x1C68D6B10](0x28204E4920, 0xE500000000000000);
      MEMORY[0x1C68D6B10](v35, v37);

      MEMORY[0x1C68D6B10](41, 0xE100000000000000);
      MEMORY[0x1C68D6B10](v44, v45);

      __swift_destroy_boxed_opaque_existential_1Tm(&v50);
      v3 = v40;
      v9 = v42;
      v5 = v43;
      goto LABEL_5;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06C30, &unk_1C0157A60);
    if (!swift_dynamicCast())
    {
      break;
    }

    sub_1C00FC1C0(&v50, &v44);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_4:
      __swift_destroy_boxed_opaque_existential_1Tm(&v50);

      goto LABEL_5;
    }

    sub_1C01426C0(v55, v56, v20, v19, v48);
    v30 = v29;
    v32 = v31;

    __swift_destroy_boxed_opaque_existential_1Tm(&v50);
    v55 = v30;
    v56 = v32;
    v9 = v42;
    v5 = v43;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }

  if (swift_dynamicCast())
  {

    v46 = 0;
    v47 = 0xE000000000000000;
    MEMORY[0x1C68D6B10](0x20444E41200ALL, 0xE600000000000000);
    MEMORY[0x1C68D6B10](v20, v19);

    MEMORY[0x1C68D6B10](572538144, 0xE400000000000000);
    sub_1C014C8B0();
    MEMORY[0x1C68D6B10](34, 0xE100000000000000);
    v33 = v46;
    v34 = v47;
LABEL_36:
    MEMORY[0x1C68D6B10](v33, v34);

    __swift_destroy_boxed_opaque_existential_1Tm(&v50);
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    v44 = 0;
    v45 = 0xE000000000000000;
    MEMORY[0x1C68D6B10](0x20444E41200ALL, 0xE600000000000000);
    MEMORY[0x1C68D6B10](v20, v19);

    MEMORY[0x1C68D6B10](2112800, 0xE300000000000000);
    sub_1C014C8B0();
    v33 = v44;
    v34 = v45;
    goto LABEL_36;
  }

  if (qword_1EDD44C50 == -1)
  {
    goto LABEL_41;
  }

LABEL_43:
  swift_once();
LABEL_41:
  v44 = qword_1EDD44C58;
  v39._object = 0x80000001C015DA20;
  v39._countAndFlagsBits = 0xD000000000000020;
  TipsLog.debug(_:)(v39);

  __swift_destroy_boxed_opaque_existential_1Tm(&v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  return 0;
}

uint64_t sub_1C01431F8(void *a1, void *a2)
{
  v4 = sub_1C014BD40();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  v8 = a2;
  v9 = [v8 startDate];
  sub_1C014BD00();

  sub_1C014BCF0();
  v10 = *(v5 + 8);
  v10(v7, v4);
  v11 = [v8 endDate];
  sub_1C014BD00();

  sub_1C014BCF0();
  v10(v7, v4);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_1C014C800();
  MEMORY[0x1C68D6B10](0xD00000000000002ELL, 0x80000001C015DAF0);
  v12 = [a1 stream];
  v13 = sub_1C014C230();
  v15 = v14;

  MEMORY[0x1C68D6B10](v13, v15);

  MEMORY[0x1C68D6B10](0xD00000000000002CLL, 0x80000001C015DB20);
  sub_1C014C4D0();
  MEMORY[0x1C68D6B10](0x2220444E412022, 0xE700000000000000);
  sub_1C014C4D0();
  MEMORY[0x1C68D6B10](34, 0xE100000000000000);
  countAndFlagsBits = v26._countAndFlagsBits;
  object = v26._object;
  v18 = [a1 filterParametersForBiomeQuery];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1C014C170();

    countAndFlagsBits = sub_1C0142B38(countAndFlagsBits, object, v20);
    v22 = v21;

    if (!v22)
    {

      return countAndFlagsBits;
    }

    object = v22;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDD44C58;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_1C014C800();

  v26._countAndFlagsBits = 0xD000000000000018;
  v26._object = 0x80000001C015D980;
  MEMORY[0x1C68D6B10](countAndFlagsBits, object);
  v24 = v26;
  v26._countAndFlagsBits = v23;
  TipsLog.debug(_:)(v24);

  return countAndFlagsBits;
}

uint64_t _s8TipsCore0A20BiomeSQLQueryManagerC14countsForEvent_8intervalSuSo013TPSContextualcH0C_So14NSDateIntervalCtFZ_0(void *a1, void *a2)
{
  sub_1C01431F8(a1, a2);
  if (v3)
  {
    if (qword_1EBE06388 != -1)
    {
      swift_once();
    }

    v4 = sub_1C014C550();

    v5 = &property descriptor for TPSSavedTipEntry.lastUsedVersion;
    if ([v4 next])
    {
      v7 = 0x80000001C015D9A0;
      v8 = &selRef_authenticationHandler;
      p_info = TPSEventsProvider.info;
      for (i = [v4 error]; ; i = objc_msgSend(v4, v8[236], v37, v38))
      {
        v11 = i;
        if (v11)
        {
          v12 = v11;
          if (p_info[394] != -1)
          {
            swift_once();
          }

          v13 = qword_1EDD44C58;
          v39 = 0;
          v40 = 0xE000000000000000;
          sub_1C014C800();

          v39 = 0xD000000000000024;
          v40 = v7;
          swift_getErrorValue();
          v14 = sub_1C014CA90();
          MEMORY[0x1C68D6B10](v14);

          v16 = v39;
          v15 = v40;
          v17 = sub_1C014C560();
          if (os_log_type_enabled(v13, v17))
          {
            v18 = swift_slowAlloc();
            v19 = v4;
            v20 = v8;
            v21 = v7;
            v22 = swift_slowAlloc();
            v39 = v22;
            *v18 = v37;
            *(v18 + 4) = sub_1C010C980(v16, v15, &v39);
            _os_log_impl(&dword_1C00A7000, v13, v17, "%s", v18, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v22);
            v23 = v22;
            v7 = v21;
            v8 = v20;
            v4 = v19;
            p_info = (TPSEventsProvider + 32);
            MEMORY[0x1C68D7F30](v23, -1, -1);
            v24 = v18;
            v5 = &property descriptor for TPSSavedTipEntry.lastUsedVersion;
            MEMORY[0x1C68D7F30](v24, -1, -1);
          }
        }

        else
        {
          v25 = [v4 row];
          if (v25)
          {
            v26 = v25;
            v27 = sub_1C014C170();

            sub_1C014C7A0();
            if (*(v27 + 16) && (v28 = sub_1C012EC98(&v39), (v29 & 1) != 0))
            {
              sub_1C00FC1C0(*(v27 + 56) + 32 * v28, v41);
              sub_1C00FC104(&v39);

              if (swift_dynamicCast())
              {

                return 0x292A28746E756F63;
              }
            }

            else
            {

              sub_1C00FC104(&v39);
            }
          }
        }

        if (([v4 v5[318]] & 1) == 0)
        {
          break;
        }
      }
    }
  }

  else
  {
    if (qword_1EDD44C50 != -1)
    {
      swift_once();
    }

    v30 = qword_1EDD44C58;
    sub_1C014C800();

    v31 = [a1 description];
    v32 = sub_1C014C230();
    v34 = v33;

    MEMORY[0x1C68D6B10](v32, v34);

    v35._countAndFlagsBits = 0xD00000000000001BLL;
    v39 = v30;
    v35._object = 0x80000001C015DAD0;
    TipsLog.error(_:)(v35);
  }

  return 0;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C01439F8()
{
  result = qword_1EBE06CD0;
  if (!qword_1EBE06CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE067C0, &qword_1C0157160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06CD0);
  }

  return result;
}

uint64_t sub_1C0143A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06BA8, &unk_1C0157A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0143ACC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06BA8, &unk_1C0157A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1C0143B6C()
{
  v1 = [*(v0 + 16) Signals];

  return v1;
}

uint64_t sub_1C0143BA4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C014C9F0() & 1;
  }
}

uint64_t static SupportFlowURLComponents.components(from:)(uint64_t a1)
{
  v1 = sub_1C014B9A0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065E0, &unk_1C0157A70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - v6;
  v8 = sub_1C014BA60();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C014B9E0();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1C014409C(v7);
    return 0;
  }

  (*(v9 + 32))(v11, v7, v8);
  v12 = sub_1C014BA20();
  v14 = v13;
  v15 = sub_1C014C230();
  if (!v14)
  {

    goto LABEL_27;
  }

  if (v12 == v15 && v14 == v16)
  {
  }

  else
  {
    v18 = sub_1C014C9F0();

    if ((v18 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v19 = sub_1C014B9C0();
  if (!v19)
  {
LABEL_27:
    (*(v9 + 8))(v11, v8);
    return 0;
  }

  v35 = v11;
  v36 = v9;
  v37 = v8;
  v20 = *(v19 + 16);
  v34 = v19;
  if (v20)
  {
    v38 = 0;
    v39 = 0;
    v42 = *(v2 + 16);
    v43 = v2 + 16;
    v21 = v19 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v22 = *(v2 + 72);
    v40 = 0;
    v41 = v22;
    v23 = (v2 + 8);
    v42(v4, v21, v1);
    while (1)
    {
      if (v24 = sub_1C014B990(), v26 = v25, v27 = sub_1C014B980(), v29 = v28, (*v23)(v4, v1), v27 == 0x696669746E656469) && v29 == 0xEA00000000007265 || (sub_1C014C9F0())
      {

        v40 = v24;
      }

      else if (v27 == 0x7265727265666572 && v29 == 0xE800000000000000)
      {

        v38 = v24;
        v39 = v26;
      }

      else
      {
        v30 = sub_1C014C9F0();

        v32 = v38;
        v31 = v39;
        if (v30)
        {
          v32 = v24;
          v31 = v26;
        }

        v38 = v32;
        v39 = v31;
      }

      v21 += v41;
      if (!--v20)
      {
        break;
      }

      v42(v4, v21, v1);
    }
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
  }

  (*(v36 + 8))(v35, v37);
  return v40;
}

uint64_t sub_1C014409C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065E0, &unk_1C0157A70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SupportFlowURLComponents.urlForIdentifier(_:referrer:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25[2] = a5;
  v26 = sub_1C014BA60();
  v8 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C014B9A0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v25 - v16;
  if (!a2)
  {
    v18 = MEMORY[0x1E69E7CC0];
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v25[1] = a3;
  sub_1C014B970();
  v18 = sub_1C00FE568(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    v18 = sub_1C00FE568((v19 > 1), v20 + 1, 1, v18);
  }

  v18[2] = v20 + 1;
  (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v20, v17, v11);
  if (a4)
  {
LABEL_7:
    sub_1C014B970();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1C00FE568(0, v18[2] + 1, 1, v18);
    }

    v22 = v18[2];
    v21 = v18[3];
    if (v22 >= v21 >> 1)
    {
      v18 = sub_1C00FE568((v21 > 1), v22 + 1, 1, v18);
    }

    v18[2] = v22 + 1;
    (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
  }

LABEL_12:
  sub_1C014BA50();
  sub_1C014C230();
  sub_1C014BA30();
  v23 = sub_1C014C230();
  MEMORY[0x1C68D6220](v23);
  sub_1C014B9D0();
  sub_1C014B9F0();
  return (*(v8 + 8))(v10, v26);
}

uint64_t ResultContext.resultId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_resultId);

  return v1;
}

uint64_t ResultContext.contextData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_contextData);
  sub_1C0144514(v1, *(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_contextData + 8));
  return v1;
}

uint64_t sub_1C0144514(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id ResultContext.__allocating_init(resultId:contextData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC8TipsCore13ResultContext_resultId];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC8TipsCore13ResultContext_contextData];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id ResultContext.init(resultId:contextData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8TipsCore13ResultContext_resultId];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v4[OBJC_IVAR____TtC8TipsCore13ResultContext_contextData];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t ResultContext.conditions.getter()
{
  v18[4] = *MEMORY[0x1E69E9840];
  v1 = v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_contextData;
  v2 = *(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_contextData);
  v3 = *(v1 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      return sub_1C00F91DC(MEMORY[0x1E69E7CC0]);
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
LABEL_8:
    if (v5 != v6)
    {
      goto LABEL_9;
    }

    return sub_1C00F91DC(MEMORY[0x1E69E7CC0]);
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
    goto LABEL_8;
  }

  if ((v3 & 0xFF000000000000) == 0)
  {
    return sub_1C00F91DC(MEMORY[0x1E69E7CC0]);
  }

LABEL_9:
  v7 = sub_1C01448F8(1819047278, 0xE400000000000000);
  v9 = v8;
  v10 = sub_1C01461BC(v2, v3, v7, v8);
  sub_1C0110D7C(v7, v9);
  if (v10)
  {
    return sub_1C00F91DC(MEMORY[0x1E69E7CC0]);
  }

  v11 = objc_opt_self();
  v12 = sub_1C014BCB0();
  v18[0] = 0;
  v13 = [v11 JSONObjectWithData:v12 options:0 error:v18];

  if (v13)
  {
    v14 = v18[0];
    sub_1C014C6E0();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06C30, &unk_1C0157A60);
    if (swift_dynamicCast())
    {
      return v17;
    }

    return sub_1C00F91DC(MEMORY[0x1E69E7CC0]);
  }

  v16 = v18[0];
  sub_1C014BB70();

  return swift_willThrow();
}

BOOL ResultContext.hasConditions.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_contextData);
  v2 = *(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_contextData + 8);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2 || *(v1 + 16) == *(v1 + 24))
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (!v3)
  {
    if ((v2 & 0xFF000000000000) == 0)
    {
      return 0;
    }

LABEL_9:
    v5 = sub_1C01448F8(1819047278, 0xE400000000000000);
    v7 = v6;
    v8 = sub_1C01461BC(v1, v2, v5, v6);
    sub_1C0110D7C(v5, v7);
    return !v8;
  }

  if (v1 != v1 >> 32)
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_1C01448F8(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06C48, &qword_1C0157AF8);
  if (swift_dynamicCast())
  {
    sub_1C00F98DC(__src, &v43);
    __swift_project_boxed_opaque_existential_0(&v43, v44);
    sub_1C014BAE0();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1C0146374(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1C014C850();
  }

  sub_1C0145A94(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1C0146494(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v34[2] = v39;
  v10 = sub_1C0145B5C(sub_1C0146534, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1C014BC90();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1C0145A18(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1C014C310();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1C014C340();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1C014C850();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1C0145A18(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1C014C320();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1C014BCA0();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1C014BCA0();
    sub_1C01166E0(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1C01166E0(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1C0144514(*&__src[0], *(&__src[0] + 1));

  sub_1C0110D7C(v32, *(&v32 + 1));
  return v32;
}

uint64_t ResultContext.description.getter()
{
  sub_1C014C800();

  MEMORY[0x1C68D6B10](*(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_resultId), *(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_resultId + 8));
  MEMORY[0x1C68D6B10](0x7865746E6F63202CLL, 0xEB00000000203A74);
  v1 = sub_1C014BC70();
  MEMORY[0x1C68D6B10](v1);

  return 0x6449746C75736572;
}

id sub_1C0144F00(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1C014C200();

  return v5;
}

uint64_t ResultContext.debugDescription.getter()
{
  v12[4] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1C014C800();

  MEMORY[0x1C68D6B10](*(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_resultId), *(v0 + OBJC_IVAR____TtC8TipsCore13ResultContext_resultId + 8));
  MEMORY[0x1C68D6B10](0x7865746E6F63202CLL, 0xEB00000000203A74);
  v1 = sub_1C014BC70();
  MEMORY[0x1C68D6B10](v1);

  MEMORY[0x1C68D6B10](0x7469646E6F63202CLL, 0xEE00203A736E6F69);
  if (!ResultContext.hasConditions.getter())
  {
    goto LABEL_5;
  }

  v2 = objc_opt_self();
  v3 = sub_1C014BCB0();
  v12[0] = 0;
  v4 = [v2 JSONObjectWithData:v3 options:0 error:v12];

  if (!v4)
  {
    v7 = v12[0];
    v8 = sub_1C014BB70();

    swift_willThrow();
    v6 = 0;
    goto LABEL_7;
  }

  v5 = v12[0];
  sub_1C014C6E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06C30, &unk_1C0157A60);
  if (swift_dynamicCast())
  {
    v6 = v11;
  }

  else
  {
LABEL_5:
    v6 = sub_1C00F91DC(MEMORY[0x1E69E7CC0]);
  }

LABEL_7:
  v12[0] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06C38, &qword_1C0157AC0);
  v9 = sub_1C014C290();
  MEMORY[0x1C68D6B10](v9);

  return 0x6449746C75736572;
}

id ResultContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ResultContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall ResultContext.encode(with:)(NSCoder with)
{
  v2 = sub_1C014C200();
  v3 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];

  v4 = sub_1C014BCB0();
  v5 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
}

id ResultContext.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ResultContext.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  v3 = sub_1C014C5E0();
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C014C230();
    v7 = v6;

    sub_1C010074C(0, &qword_1EBE06748, 0x1E695DEF0);
    v8 = sub_1C014C5E0();
    if (v8)
    {
      v9 = v8;
      v10 = sub_1C014BCC0();
      v12 = v11;

      v13 = objc_allocWithZone(ObjectType);
      v14 = &v13[OBJC_IVAR____TtC8TipsCore13ResultContext_resultId];
      *v14 = v5;
      v14[1] = v7;
      v15 = &v13[OBJC_IVAR____TtC8TipsCore13ResultContext_contextData];
      *v15 = v10;
      v15[1] = v12;
      sub_1C0144514(v10, v12);
      v18.receiver = v13;
      v18.super_class = ObjectType;
      v16 = objc_msgSendSuper2(&v18, sel_init);

      sub_1C0110D7C(v10, v12);
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v16;
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1C0145658@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_1C014BA90();
    if (v10)
    {
      v11 = sub_1C014BAC0();
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
      result = sub_1C014BAB0();
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
  v10 = sub_1C014BA90();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1C014BAC0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1C014BAB0();
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

uint64_t sub_1C0145888(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_1C0146104(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1C0110D7C(a3, a4);
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
  sub_1C0145658(v13, a3, a4, &v12);
  v10 = v4;
  sub_1C0110D7C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unint64_t sub_1C0145A18(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C014C350();
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
    v5 = MEMORY[0x1C68D6B40](15, a1 >> 16);
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

uint64_t *sub_1C0145A94@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1C01463DC(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1C014BAD0();
      swift_allocObject();
      v8 = sub_1C014BA80();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_1C014BC80();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_1C0145B5C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1C0110D7C(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1C0110D7C(v7, v6);
    *v4 = xmmword_1C0157AB0;
    sub_1C0110D7C(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1C014BA90() && __OFSUB__(v7, sub_1C014BAC0()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1C014BAD0();
      swift_allocObject();
      v14 = sub_1C014BA70();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1C0146000(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1C0110D7C(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1C0157AB0;
    sub_1C0110D7C(0, 0xC000000000000000);
    sub_1C014BC60();
    result = sub_1C0146000(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_1C0145F00@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1C01463DC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1C014659C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1C0146618(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1C0145F94(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1C0146000(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1C014BA90();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1C014BAC0();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1C014BAB0();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1C01460B4@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1C014C810();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0146104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1C014BA90();
  v11 = result;
  if (result)
  {
    result = sub_1C014BAC0();
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

  sub_1C014BAB0();
  sub_1C0145658(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1C01461BC(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_1C0144514(a3, a4);
          return sub_1C0145888(v13, a2, a3, a4) & 1;
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

uint64_t sub_1C0146374(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06C50, &unk_1C0157B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C01463DC(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1C0146494(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1C014BAD0();
      swift_allocObject();
      sub_1C014BAA0();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1C014BC80();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_1C0146534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1C0145F94(sub_1C014669C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1C014659C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1C014BAD0();
  swift_allocObject();
  result = sub_1C014BA80();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1C014BC80();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1C0146618(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1C014BAD0();
  swift_allocObject();
  result = sub_1C014BA80();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1C01466BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x794D646E6946;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x796150656C707041;
    }

    else
    {
      v4 = 0x794D646E6946;
    }

    if (v3)
    {
      v5 = 0xED00007075746553;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v4 = 0x614264756F6C4369;
      v6 = 1886743395;
    }

    else
    {
      if (a1 == 3)
      {
        v4 = 0x6553444965636146;
        v5 = 0xEB00000000707574;
        goto LABEL_14;
      }

      v4 = 0x685064756F6C4369;
      v6 = 1936684143;
    }

    v5 = v6 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    v7 = 0xE600000000000000;
    v8 = 0x796150656C707041;
    v9 = 0xED00007075746553;
    v10 = a2 == 0;
  }

  else
  {
    v2 = 0x614264756F6C4369;
    v7 = 0xEC00000070756B63;
    v8 = 0x6553444965636146;
    v9 = 0xEB00000000707574;
    if (a2 != 3)
    {
      v8 = 0x685064756F6C4369;
      v9 = 0xEC000000736F746FLL;
    }

    v10 = a2 == 2;
  }

  if (v10)
  {
    v11 = v2;
  }

  else
  {
    v11 = v8;
  }

  if (v10)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (v4 == v11 && v5 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C014C9F0();
  }

  return v13 & 1;
}

TipsCore::ContextKeys::SupportedContext_optional __swiftcall ContextKeys.SupportedContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C014C930();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContextKeys.SupportedContext.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x794D646E6946;
  v3 = 0x614264756F6C4369;
  v4 = 0x6553444965636146;
  if (v1 != 3)
  {
    v4 = 0x685064756F6C4369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x796150656C707041;
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

uint64_t sub_1C01469A8()
{
  sub_1C014CAE0();
  sub_1C014C2E0();

  return sub_1C014CB10();
}

double sub_1C0146AAC(uint64_t a1)
{
  sub_1C014C2E0();

  return result;
}

uint64_t sub_1C0146B9C()
{
  sub_1C014CAE0();
  sub_1C014C2E0();

  return sub_1C014CB10();
}

void sub_1C0146CA8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x794D646E6946;
  v5 = 0xEC00000070756B63;
  v6 = 0x614264756F6C4369;
  v7 = 0xEB00000000707574;
  v8 = 0x6553444965636146;
  if (v2 != 3)
  {
    v8 = 0x685064756F6C4369;
    v7 = 0xEC000000736F746FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x796150656C707041;
    v3 = 0xED00007075746553;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

id ContextKeys.__allocating_init(contexts:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC8TipsCore11ContextKeys_contexts] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ContextKeys.init(contexts:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8TipsCore11ContextKeys_contexts] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Void __swiftcall ContextKeys.encode(with:)(NSCoder with)
{
  isa = with.super.isa;
  v3 = *(v1 + OBJC_IVAR____TtC8TipsCore11ContextKeys_contexts);
  v4 = *(v3 + 16);
  if (v4)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C01090B4(0, v4, 0);
    v5 = (v3 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      v8 = v7 == 3;
      if (v7 == 3)
      {
        v9 = 0x6553444965636146;
      }

      else
      {
        v9 = 0x685064756F6C4369;
      }

      if (v8)
      {
        v10 = 0xEB00000000707574;
      }

      else
      {
        v10 = 0xEC000000736F746FLL;
      }

      if (v6 == 2)
      {
        v9 = 0x614264756F6C4369;
        v10 = 0xEC00000070756B63;
      }

      if (v6)
      {
        v11 = 0x796150656C707041;
      }

      else
      {
        v11 = 0x794D646E6946;
      }

      if (v6)
      {
        v12 = 0xED00007075746553;
      }

      else
      {
        v12 = 0xE600000000000000;
      }

      if (v6 <= 1)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (v6 <= 1)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      v16 = *(v21 + 16);
      v15 = *(v21 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C01090B4((v15 > 1), v16 + 1, 1);
      }

      *(v21 + 16) = v16 + 1;
      v17 = v21 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      --v4;
    }

    while (v4);
    isa = with.super.isa;
  }

  v18 = sub_1C014C3B0();

  v20 = sub_1C014C200();
  [(objc_class *)isa encodeObject:v18 forKey:v20];
}

void ContextKeys.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067A8, &qword_1C0157B10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C0156390;
  *(v3 + 32) = sub_1C010074C(0, &unk_1EDD44910, 0x1E695DEC8);
  *(v3 + 40) = sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  sub_1C014C5F0();

  if (!v22)
  {

    sub_1C00FC158(v21);
LABEL_15:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067C0, &qword_1C0157160);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_15;
  }

  v18 = ObjectType;
  v4 = 0;
  v5 = v20;
  v6 = *(v20 + 16);
  v7 = v20 + 40;
  v8 = MEMORY[0x1E69E7CC0];
  v17 = v20 + 40;
LABEL_4:
  v9 = v7 + 16 * v4;
  while (1)
  {
    if (v6 == v4)
    {

      v16 = objc_allocWithZone(v18);
      *&v16[OBJC_IVAR____TtC8TipsCore11ContextKeys_contexts] = v8;
      v19.receiver = v16;
      v19.super_class = v18;
      objc_msgSendSuper2(&v19, sel_init);

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return;
    }

    if (v4 >= *(v5 + 16))
    {
      break;
    }

    ++v4;
    v10 = v9 + 16;

    v11 = sub_1C014C930();

    v9 = v10;
    if (v11 < 5)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1C00FEAD8(0, *(v8 + 2) + 1, 1, v8);
      }

      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v15 = sub_1C00FEAD8((v12 > 1), v13 + 1, 1, v8);
        v14 = v13 + 1;
        v8 = v15;
      }

      *(v8 + 2) = v14;
      v8[v13 + 32] = v11;
      v7 = v17;
      goto LABEL_4;
    }
  }

  __break(1u);
}

id ContextKeys.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContextKeys.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C01474D8()
{
  result = qword_1EBE06C70;
  if (!qword_1EBE06C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06C70);
  }

  return result;
}

unint64_t sub_1C0147530()
{
  result = qword_1EBE06C78;
  if (!qword_1EBE06C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE06C80, &qword_1C0157BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06C78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextKeys.SupportedContext(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ContextKeys.SupportedContext(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1C0147734(uint64_t a1, uint64_t a2)
{
  result = sub_1C0147754(a1, a2);
  off_1EBE06C90 = result;
  return result;
}

unint64_t sub_1C0147754(uint64_t a1, uint64_t a2)
{
  v2 = BiomeLibrary();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06CE0, &qword_1C0157CB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0156A50;
  *(inited + 32) = sub_1C014C230();
  *(inited + 40) = v4;
  v5 = [objc_msgSend(v2 App)];
  swift_unknownObjectRelease();
  *(inited + 48) = v5;
  *(inited + 56) = sub_1C014C230();
  *(inited + 64) = v6;
  v7 = [objc_msgSend(v2 Device)];
  swift_unknownObjectRelease();
  v8 = [v7 Bluetooth];
  swift_unknownObjectRelease();
  *(inited + 72) = v8;
  *(inited + 80) = sub_1C014C230();
  *(inited + 88) = v9;
  v10 = [objc_msgSend(v2 Discoverability)];
  swift_unknownObjectRelease();
  *(inited + 96) = v10;
  *(inited + 104) = sub_1C014C230();
  *(inited + 112) = v11;
  v12 = [objc_msgSend(v2 UserFocus)];
  swift_unknownObjectRelease();
  *(inited + 120) = v12;
  v13 = sub_1C00F9780(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06CE8, &unk_1C0157CC0);
  swift_arrayDestroy();
  swift_unknownObjectRelease();
  return v13;
}

double sub_1C0147A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDD44C68 != -1)
  {
    swift_once();
  }

  sub_1C014C800();

  MEMORY[0x1C68D6B10](a2, a3);
  MEMORY[0x1C68D6B10](0xD000000000000012, 0x80000001C015DDD0);
  v5._countAndFlagsBits = 0x726F66206B6E6953;
  v5._object = 0xE900000000000020;
  TipsLog.log(_:)(v5);

  return result;
}

void sub_1C0147B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + OBJC_IVAR___TPSBiomeDataProvider_registrationQueue);
    v10 = Strong;
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = a3;
    v11[4] = a4;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1C0149EB8;
    *(v12 + 24) = v11;
    aBlock[4] = sub_1C0149EA0;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C011EB80;
    aBlock[3] = &block_descriptor_58;
    v13 = _Block_copy(aBlock);
    v14 = v10;

    dispatch_sync(v9, v13);
    _Block_release(v13);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }

    else
    {
      a5(a3, a4);
    }
  }
}

uint64_t sub_1C0147D18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C0147D78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = OBJC_IVAR___TPSBiomeDataProvider_biomeRegistrations;
  swift_beginAccess();

  v9 = a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + v8);
  *(a1 + v8) = 0x8000000000000000;
  sub_1C00F8C34(v9, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + v8) = v12;
  return swift_endAccess();
}

uint64_t sub_1C0147F20()
{
  v1 = v0;
  if (qword_1EDD44C68 != -1)
  {
LABEL_15:
    swift_once();
  }

  v2 = qword_1EDD44C70;
  aBlock._countAndFlagsBits = 0;
  aBlock._object = 0xE000000000000000;
  sub_1C014C800();

  aBlock._countAndFlagsBits = 0xD00000000000001FLL;
  aBlock._object = 0x80000001C015DD90;
  v3 = OBJC_IVAR___TPSBiomeDataProvider_biomeRegistrations;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06CD8, &qword_1C0157CB0);
  v4 = sub_1C014C190();
  MEMORY[0x1C68D6B10](v4);

  v5 = aBlock;
  aBlock._countAndFlagsBits = v2;
  TipsLog.log(_:)(v5);

  v6 = *(v1 + v3);
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v24 = OBJC_IVAR___TPSBiomeDataProvider_registrationQueue;
  v25 = v1;
  v1 = (v8 + 63) >> 6;
  v26 = v6;

  v11 = 0;
  v12 = 0;
  v13 = 0;
  do
  {
    if (!v10)
    {
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v1)
        {
          goto LABEL_13;
        }

        v10 = *(v7 + 8 * v14);
        ++v13;
        if (v10)
        {
          v13 = v14;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    v14 = v13;
LABEL_11:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = (*(v26 + 48) + ((v14 << 10) | (16 * v15)));
    v17 = *v16;
    v18 = v16[1];
    queue = *&v25[v24];
    v19 = swift_allocObject();
    v19[2] = v25;
    v19[3] = v17;
    v19[4] = v18;

    v20 = v25;
    sub_1C0113884(v11, v12);
    v21 = swift_allocObject();
    v11 = sub_1C01495A0;
    *(v21 + 16) = sub_1C01495A0;
    *(v21 + 24) = v19;
    v31 = sub_1C0149EA0;
    v32 = v21;
    aBlock._countAndFlagsBits = MEMORY[0x1E69E9820];
    aBlock._object = 1107296256;
    v29 = sub_1C011EB80;
    v30 = &block_descriptor_19;
    v22 = _Block_copy(&aBlock);

    dispatch_sync(queue, v22);
    _Block_release(v22);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    v12 = v19;
  }

  while ((v17 & 1) == 0);
  __break(1u);
LABEL_13:

  return sub_1C0113884(v11, v12);
}

double sub_1C0148278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR___TPSBiomeDataProvider_biomeRegistrations;
  swift_beginAccess();
  v8 = *(a1 + v6);
  if (*(v8 + 16))
  {

    v9 = sub_1C012EBF4(a2, a3);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      [v11 cancel];
      swift_beginAccess();

      sub_1C00F80D4(0, a2, a3);
      swift_endAccess();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1C01483B0(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR___TPSBiomeDataProvider_registrationQueue];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C0149574;
  *(v7 + 24) = v6;
  v12[4] = sub_1C0149580;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1C011EB80;
  v12[3] = &block_descriptor_11;
  v8 = _Block_copy(v12);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

double sub_1C0148520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR___TPSBiomeDataProvider_biomeRegistrations;
  swift_beginAccess();
  v8 = *(a1 + v6);
  if (*(v8 + 16))
  {

    v9 = sub_1C012EBF4(a2, a3);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      if (qword_1EDD44C68 != -1)
      {
        swift_once();
      }

      v12 = qword_1EDD44C70;
      sub_1C014C800();

      MEMORY[0x1C68D6B10](a2, a3);
      v13._countAndFlagsBits = 0xD00000000000001CLL;
      v13._object = 0x80000001C015DD70;
      TipsLog.log(_:)(v13);

      [v11 cancel];
      swift_beginAccess();

      sub_1C00F80D4(0, a2, a3);
      swift_endAccess();
    }

    else
    {
    }
  }

  return result;
}

void sub_1C014871C(void **a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return;
  }

  v3 = a3;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v10 = a3;
  }

  v41 = v10;

  v11 = 0;
  v42 = v3;
  while (v8)
  {
    v12 = v11;
LABEL_19:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(a2 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_1C00FC1C0(*(a2 + 56) + 32 * v16, v47);
    *&v48 = v19;
    *(&v48 + 1) = v18;
    sub_1C00F9954(v47, &v49);

LABEL_20:
    v51 = v48;
    v52[0] = v49;
    v52[1] = v50;
    v20 = *(&v48 + 1);
    if (!*(&v48 + 1))
    {

      return;
    }

    v21 = v51;
    sub_1C00F9954(v52, &v48);
    sub_1C00FC1C0(&v48, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06CB0, &qword_1C0156328);
    if (swift_dynamicCast())
    {

      v22 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1C00FE898(0, *(v41 + 16) + 1, 1, v41);
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_1C00FE898((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[16 * v24];
      *(v25 + 4) = v21;
      *(v25 + 5) = v20;
      sub_1C014871C(a1, a2, v22);

      __swift_destroy_boxed_opaque_existential_1Tm(&v48);
      v3 = v42;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06CB8, &qword_1C0157C98);
      if (swift_dynamicCast())
      {

        sub_1C0149314(v3, v21, v20);

        sub_1C00FC1C0(&v48, &v45);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06CC0, &unk_1C0157CA0);
        if (swift_dynamicCast())
        {
          v26 = *a1;
          v27 = sub_1C014C200();

          v28 = [v26 filterWithKeyPath:v27 comparison:3 value:v44];
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_1Tm(&v48);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&v48);
        }
      }

      else
      {
        if (swift_dynamicCast())
        {
          sub_1C0149314(v3, v21, v20);

          v29 = *a1;
          v30 = sub_1C014C200();
          v3 = v42;

          v31 = sub_1C014C200();

LABEL_35:
          __swift_destroy_boxed_opaque_existential_1Tm(&v48);
          goto LABEL_8;
        }

        if (swift_dynamicCast())
        {
          sub_1C0149314(v3, v21, v20);

          v32 = *a1;
          v33 = sub_1C014C200();
          v3 = v42;

          v31 = sub_1C014C530();

          goto LABEL_35;
        }

        if (qword_1EDD44C68 != -1)
        {
          swift_once();
        }

        oslog = qword_1EDD44C70;
        v45 = 0;
        v46 = 0xE000000000000000;
        sub_1C014C800();
        MEMORY[0x1C68D6B10](v21, v20);

        MEMORY[0x1C68D6B10](0xD000000000000032, 0x80000001C015DD30);
        __swift_project_boxed_opaque_existential_0(&v48, *(&v49 + 1));
        swift_getDynamicType();
        v34 = sub_1C014CB60();
        MEMORY[0x1C68D6B10](v34);

        v36 = v45;
        v35 = v46;
        v37 = sub_1C014C570();
        if (os_log_type_enabled(oslog, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v45 = v39;
          *v38 = 136315138;
          *(v38 + 4) = sub_1C010C980(v36, v35, &v45);
          _os_log_impl(&dword_1C00A7000, oslog, v37, "%s", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v39);
          MEMORY[0x1C68D7F30](v39, -1, -1);
          MEMORY[0x1C68D7F30](v38, -1, -1);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v48);
        v3 = v42;
      }
    }

LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
  }

  if (v9 <= v11 + 1)
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = v9;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      v8 = 0;
      v49 = 0u;
      v50 = 0u;
      v11 = v14;
      v48 = 0u;
      goto LABEL_20;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_19;
    }
  }

  __break(1u);
}

id TipsBiomeDataProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TipsBiomeDataProvider.init()()
{
  v1 = sub_1C014C580();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C014C0D0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1C014C5A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___TPSBiomeDataProvider_biomeRegistrations;
  v8 = MEMORY[0x1E69E7CC0];
  *(v0 + v7) = sub_1C00F9794(MEMORY[0x1E69E7CC0]);
  v14 = OBJC_IVAR___TPSBiomeDataProvider_registrationQueue;
  v13 = sub_1C0111504();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8098], v3);
  sub_1C014C0B0();
  v17 = v8;
  sub_1C0111550();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067E0, &qword_1C01568E0);
  sub_1C014952C(&qword_1EDD44B90, &qword_1EBE067E0, &qword_1C01568E0, MEMORY[0x1E69E6328]);
  sub_1C014C700();
  v9 = sub_1C014C5D0();
  v10 = v15;
  *&v15[v14] = v9;
  v11 = type metadata accessor for TipsBiomeDataProvider();
  v16.receiver = v10;
  v16.super_class = v11;
  return objc_msgSendSuper2(&v16, sel_init);
}

id TipsBiomeDataProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipsBiomeDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C0149144(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v8 = sub_1C014C200();
  if (a4)
  {
    a4 = sub_1C014C200();
  }

  if (a6 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1C014BCB0();
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E698EBC0]) initWithContentIdentifier:v8 context:a4 osBuild:0 userInfo:v9];

  if (qword_1EBE063A0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C014C230();
  v13 = v12;
  swift_beginAccess();
  v14 = off_1EBE06C90;
  if (*(off_1EBE06C90 + 2))
  {
    v15 = sub_1C012EBF4(v11, v13);
    v17 = v16;

    if (v17)
    {
      v18 = *(v14[7] + 8 * v15);
      swift_endAccess();
      v19 = v18;
      v20 = [v19 source];
      v21 = v10;
      [v20 sendEvent_];
    }

    else
    {
      swift_endAccess();
    }
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_1C0149314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  if (!a1)
  {
    goto LABEL_9;
  }

  v5 = a1;
  v6 = *(a1 + 16);
  if (!v6)
  {
    a1 = 0;
LABEL_9:
    v15 = 0xE000000000000000;
    goto LABEL_10;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1C01090B4(0, v6, 0);
  v7 = (v5 + 40);
  do
  {
    v8 = *(v7 - 1);
    v9 = *v7;

    MEMORY[0x1C68D6B10](v8, v9);

    v11 = *(v19 + 16);
    v10 = *(v19 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1C01090B4((v10 > 1), v11 + 1, 1);
    }

    *(v19 + 16) = v11 + 1;
    v12 = v19 + 16 * v11;
    *(v12 + 32) = 46;
    *(v12 + 40) = 0xE100000000000000;
    v7 += 2;
    --v6;
  }

  while (v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067C0, &qword_1C0157160);
  sub_1C014952C(&qword_1EBE06CD0, &unk_1EBE067C0, &qword_1C0157160, MEMORY[0x1E69E6310]);
  v13 = sub_1C014C1C0();
  v15 = v14;

  a1 = v13;
  v4 = a2;
  v3 = a3;
LABEL_10:
  MEMORY[0x1C68D6B10](a1, v15);

  MEMORY[0x1C68D6B10](v4, v3);

  MEMORY[0x1C68D6B10](46, 0xE100000000000000);

  return 0x646F42746E657665;
}

uint64_t sub_1C014952C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C01495AC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_1C014C200();
  (*(v3 + 16))(v3, v4);
}

uint64_t sub_1C0149604(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v66 = a4;
  v67 = a2;
  v68 = a3;
  v9 = sub_1C014C5A0();
  v64 = *(v9 - 1);
  v65 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v63 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C014C580();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C014C0D0();
  MEMORY[0x1EEE9AC00](v12 - 8);
  if (qword_1EBE063A0 != -1)
  {
    swift_once();
  }

  v13 = a1;
  v14 = [a1 stream];
  v15 = sub_1C014C230();
  v17 = v16;

  swift_beginAccess();
  v18 = off_1EBE06C90;
  if (!*(off_1EBE06C90 + 2))
  {

    return swift_endAccess();
  }

  v62 = a5;
  v19 = sub_1C012EBF4(v15, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
    return swift_endAccess();
  }

  v60 = v6;
  v22 = *(v18[7] + 8 * v19);
  swift_endAccess();
  aBlock = 0;
  v70 = 0xE000000000000000;
  v61 = v22;
  sub_1C014C800();

  aBlock = 0x6C7070612E6D6F63;
  v70 = 0xEF2E737069742E65;
  v59 = v13;
  v23 = [v13 stream];
  v24 = sub_1C014C230();
  v26 = v25;

  MEMORY[0x1C68D6B10](v24, v26);

  MEMORY[0x1C68D6B10](46, 0xE100000000000000);
  v28 = v67;
  v27 = v68;
  MEMORY[0x1C68D6B10](v67, v68);
  v57[2] = aBlock;
  v57[1] = sub_1C0111504();
  aBlock = 0;
  v70 = 0xE000000000000000;
  sub_1C014C800();

  aBlock = 0xD000000000000010;
  v70 = 0x80000001C015DDB0;
  v58 = @"FeatureDiscoverability";
  v29 = sub_1C014C230();
  MEMORY[0x1C68D6B10](v29);

  MEMORY[0x1C68D6B10](46, 0xE100000000000000);
  MEMORY[0x1C68D6B10](v28, v27);
  sub_1C014C0B0();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1C0111550();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067E0, &qword_1C01568E0);
  sub_1C014952C(&qword_1EDD44B90, &qword_1EBE067E0, &qword_1C01568E0, MEMORY[0x1E69E6328]);
  sub_1C014C700();
  (v64)[13](v63, *MEMORY[0x1E69E8090], v65);
  v30 = sub_1C014C5D0();
  v31 = objc_allocWithZone(MEMORY[0x1E698F258]);
  v32 = v30;
  v33 = sub_1C014C200();

  v34 = [v31 initWithIdentifier:v33 targetQueue:v32 waking:1];

  v65 = v32;
  v35 = [v61 DSLPublisherWithUseCase_];
  v75 = v35;
  v36 = [v59 filterParametersForBiomeQuery];
  if (v36)
  {
    v37 = v36;
    v38 = sub_1C014C170();
  }

  else
  {
    v38 = 0;
  }

  v40 = v60;
  sub_1C014871C(&v75, v38, 0);

  v41 = [v35 subscribeOn_];
  v42 = swift_allocObject();
  v43 = v67;
  v44 = v68;
  *(v42 + 16) = v67;
  *(v42 + 24) = v44;
  v73 = sub_1C0149E28;
  v74 = v42;
  aBlock = MEMORY[0x1E69E9820];
  v70 = 1107296256;
  v71 = sub_1C0143C24;
  v72 = &block_descriptor_28;
  v45 = _Block_copy(&aBlock);
  v64 = v35;

  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = swift_allocObject();
  v47[2] = v46;
  v47[3] = v43;
  v48 = v66;
  v47[4] = v44;
  v47[5] = v48;
  v47[6] = v62;
  v73 = sub_1C0149E30;
  v74 = v47;
  aBlock = MEMORY[0x1E69E9820];
  v70 = 1107296256;
  v71 = sub_1C0147D18;
  v72 = &block_descriptor_37;
  v49 = _Block_copy(&aBlock);
  v66 = v34;

  v50 = [v41 sinkWithCompletion:v45 receiveInput:v49];
  _Block_release(v49);
  _Block_release(v45);

  v51 = *&v40[OBJC_IVAR___TPSBiomeDataProvider_registrationQueue];
  v52 = swift_allocObject();
  v52[2] = v40;
  v52[3] = v43;
  v52[4] = v44;
  v52[5] = v50;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_1C0149E40;
  *(v53 + 24) = v52;
  v73 = sub_1C0149EA0;
  v74 = v53;
  aBlock = MEMORY[0x1E69E9820];
  v70 = 1107296256;
  v71 = sub_1C011EB80;
  v72 = &block_descriptor_47;
  v54 = _Block_copy(&aBlock);

  v55 = v40;
  v56 = v50;

  dispatch_sync(v51, v54);

  _Block_release(v54);
  LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

  if (v54)
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}