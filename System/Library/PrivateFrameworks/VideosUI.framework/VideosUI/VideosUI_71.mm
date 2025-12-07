unint64_t sub_1E3BE49A4(uint64_t a1, void *a2)
{
  sub_1E4206F54();
  OUTLINED_FUNCTION_38_28();
  result = sub_1E4207324();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_1E3BE4A24()
{
  OUTLINED_FUNCTION_335();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(*v0 + 16);
  v13 = *(*v0 + 24);
  if (v13 <= v12 || (v1 & 1) == 0)
  {
    if (v1)
    {
      sub_1E3BE4810();
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_1E3BE4CA8();
LABEL_8:
      v14 = *v0;
      sub_1E4206F54();
      OUTLINED_FUNCTION_38_28();
      v17 = ~v16;
      while (1)
      {
        v9 = v15 & v17;
        if (((*(v14 + 56 + (((v15 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v17)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1E3280A90(0, v7, v5);
        v18 = *(*(v14 + 48) + 8 * v9);
        v19 = sub_1E4206F64();

        if (v19)
        {
          goto LABEL_15;
        }

        v15 = v9 + 1;
      }
    }

    sub_1E3BE4B7C(v2, v3);
  }

LABEL_12:
  v20 = *v0;
  *(*v0 + 8 * (v9 >> 6) + 56) |= 1 << v9;
  *(*(v20 + 48) + 8 * v9) = v11;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_15:
    sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v23;
    OUTLINED_FUNCTION_15_36();
  }
}

void sub_1E3BE4B7C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1E4207434();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_93_8();
LABEL_17:
        v20 = v16 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        *(*(v6 + 48) + 8 * v20) = v21;
        v22 = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      ++v17;
      if (*(v4 + 56 + 8 * v10))
      {
        OUTLINED_FUNCTION_40_7();
        v14 = v19 & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1E3BE4CA8()
{
  OUTLINED_FUNCTION_335();
  OUTLINED_FUNCTION_41_40(v2, v3, v4);
  OUTLINED_FUNCTION_67_0();
  v5 = sub_1E4207444();
  v6 = v5;
  if (*(v1 + 16))
  {
    v25 = v0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v1 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        *(*(v1 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = sub_1E4206F54() & ~(-1 << *(v6 + 32));
        if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_91_9();
LABEL_21:
        OUTLINED_FUNCTION_84_12();
        *(v12 + v22) |= v23;
        OUTLINED_FUNCTION_59_18(v24);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_89_7();
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        if (*(v12 + 8 * v18) != -1)
        {
          OUTLINED_FUNCTION_85_11();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v0 = v25;
          goto LABEL_25;
        }

        ++v14;
        if (*(v1 + 56 + 8 * v7))
        {
          OUTLINED_FUNCTION_40_7();
          v10 = v16 & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v0 = v6;
    OUTLINED_FUNCTION_15_36();
  }
}

uint64_t sub_1E3BE4E30(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    v9 = sub_1E4206F54();
    v10 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v11 = v9 & v10;
      if (((*(v4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
      {
        break;
      }

      v12 = *(*(v4 + 48) + 8 * v11);
      v13 = sub_1E4206F64();

      if (v13)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *v2;
        v17 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E3BE4B7C(&qword_1ECF34C08, &qword_1E42C1DB0);
          v15 = v17;
        }

        v8 = *(*(v15 + 48) + 8 * v11);
        sub_1E3BE5134(v11);
        *v2 = v17;
        return v8;
      }

      v9 = v11 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = a1;
  v7 = sub_1E42073D4();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_1E3BE4FC0(v5, v6);

  return v8;
}

void sub_1E3BE5134(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1E4207304();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1E4206F54();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

void sub_1E3BE52C8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_88_10();
    OUTLINED_FUNCTION_64();
    v2 = (*(v1 + 344))();
    if (v2)
    {
      OUTLINED_FUNCTION_96_10(v2);
      OUTLINED_FUNCTION_79_1();
      v3 = OUTLINED_FUNCTION_17_1();
      v4(v3);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1E3BE5378()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_88_10();
    OUTLINED_FUNCTION_15_94();
    if ((*(v3 + 344))())
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      OUTLINED_FUNCTION_15_94();
      v8 = (*(v7 + 504))();
      (*(v5 + 24))(v1, v8, v2, ObjectType, v5);
      swift_unknownObjectRelease();

      v1 = v8;
    }
  }
}

void sub_1E3BE54C4()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (Strong + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_initialPinchFrame);
    *v4 = 0u;
    v4[1] = 0u;
    OUTLINED_FUNCTION_11_3(Strong + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_animatingViews, &v6);
    v5 = sub_1E3BE4E30(v1);
    swift_endAccess();
  }
}

void sub_1E3BE555C()
{
  v1 = *(v0 + 16);
  objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v16 = sub_1E3BE56F4;
  v17 = v2;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1E378AEA4;
  v15 = &block_descriptor_152;
  v3 = _Block_copy(&v12);
  v4 = v1;

  v5 = OUTLINED_FUNCTION_17_1();
  [v5 v6];
  _Block_release(v3);
  OUTLINED_FUNCTION_4_0();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  v16 = sub_1E3BE5744;
  v17 = v7;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1E378AEA4;
  v15 = &block_descriptor_158;
  v8 = _Block_copy(&v12);
  v9 = v4;

  v10 = OUTLINED_FUNCTION_17_1();
  [v10 v11];
  _Block_release(v8);
}

void sub_1E3BE577C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    OUTLINED_FUNCTION_64();
    if ((*(v2 + 344))())
    {
      swift_getObjectType();
      v3 = OUTLINED_FUNCTION_11_6();
      v4(v3);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1E3BE585C()
{
  v1 = v0[2];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[8];
  if (v1)
  {
    v1();
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E3BE0254();
  }

  v7 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  v21 = sub_1E3BE5A64;
  v22 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  OUTLINED_FUNCTION_22_61();
  v19 = v9;
  v20 = &block_descriptor_181;
  v10 = _Block_copy(&aBlock);

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  MEMORY[0x1E69144A0](v16);
  OUTLINED_FUNCTION_2_4();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v4;
  v21 = sub_1E387E1E4;
  v22 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1E37EB82C;
  v20 = &block_descriptor_187_0;
  v13 = _Block_copy(&aBlock);
  v14 = OUTLINED_FUNCTION_27_0();
  sub_1E34AF604(v14, v15);

  [v7 animateWithDuration:v10 animations:v13 completion:0.33];
  _Block_release(v13);
  _Block_release(v10);
}

void sub_1E3BE5A6C(double a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1E32AE9B0(v3);
  for (i = 0; v4 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = OUTLINED_FUNCTION_13_8();
      v6 = MEMORY[0x1E6911E60](v8);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    [v6 setAlpha_];
  }
}

void sub_1E3BE5B38()
{
  OUTLINED_FUNCTION_5_16();
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  objc_opt_self();
  OUTLINED_FUNCTION_10_9();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v1;
  OUTLINED_FUNCTION_0_155();
  v10[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v10[2] = v6;
  v10[3] = &block_descriptor_200_0;
  v7 = _Block_copy(v10);

  v8 = OUTLINED_FUNCTION_17_1();
  [v8 v9];
  _Block_release(v7);
}

void sub_1E3BE5C38()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    OUTLINED_FUNCTION_64();
    if ((*(v2 + 480))() == 1)
    {
      sub_1E3BE2938();
    }
  }
}

void sub_1E3BE5CC4()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1E3BDC268();

    v5 = 0.0;
    if (v1)
    {
      v5 = 1.0;
    }

    [v4 setAlpha_];
  }
}

void sub_1E3BE5D48()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
    {
      sub_1E3BE3058();
    }

    sub_1E3BE0254();
  }
}

void sub_1E3BE5DEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_68_19()
{
}

uint64_t OUTLINED_FUNCTION_69_18(double a1)
{

  return sub_1E37BEDE4(10.0, 10.0, a1);
}

void *OUTLINED_FUNCTION_82_9(void *result)
{
  result[2] = v2;
  result[3] = v1;
  result[4] = v6;
  result[5] = v5;
  result[6] = v4;
  result[7] = v3;
  return result;
}

id OUTLINED_FUNCTION_95_10(int a1, const char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __int128 a12, __int128 a13, __int128 a14)
{
  a12 = a9;
  a13 = a10;
  a14 = a11;

  return [v14 a2];
}

uint64_t OUTLINED_FUNCTION_96_10(uint64_t a1)
{

  return swift_getObjectType();
}

void sub_1E3BE5F8C()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 184))();
  v4 = OBJC_IVAR____TtC8VideosUI15CountDownButton_progressWidth;
  v5 = OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI15CountDownButton_progressWidth, v6);
  (*((*v1 & *v3) + 0xB0))(v5, *(v0 + v4));
}

double sub_1E3BE6038()
{
  v1 = OBJC_IVAR____TtC8VideosUI15CountDownButton_progressWidth;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI15CountDownButton_progressWidth, v3);
  return *(v0 + v1);
}

void sub_1E3BE6074(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15CountDownButton_progressWidth;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1E3BE5F8C();
}

void (*sub_1E3BE60C8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E3BE612C;
}

void sub_1E3BE612C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E3BE5F8C();
  }
}

uint64_t sub_1E3BE6160()
{
  v1 = OBJC_IVAR____TtC8VideosUI15CountDownButton_didAutoPlay;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI15CountDownButton_didAutoPlay, v3);
  return *(v0 + v1);
}

uint64_t sub_1E3BE619C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15CountDownButton_didAutoPlay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1E3BE61EC()
{
  v1 = OBJC_IVAR____TtC8VideosUI15CountDownButton____lazy_storage___countDownIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI15CountDownButton____lazy_storage___countDownIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI15CountDownButton____lazy_storage___countDownIndicator);
  }

  else
  {
    v4 = v0;
    v5 = [v0 imageTintColor];
    if (!v5)
    {
      v5 = [objc_opt_self() blackColor];
    }

    v6 = *(**(v0 + OBJC_IVAR____TtC8VideosUI15CountDownButton_layout) + 2096);
    v7 = v5;
    v6();
    OUTLINED_FUNCTION_30();
    (*(v8 + 176))(&v31);

    type metadata accessor for CountDownProgressView();
    v9 = OUTLINED_FUNCTION_24_0();
    v13 = sub_1E3952BE0(v9, v10, v11, v12);
    v14 = OUTLINED_FUNCTION_24_0();
    v17 = sub_1E3952BD8(v14, v15, v16);
    v18 = *(v0 + OBJC_IVAR____TtC8VideosUI15CountDownButton_duration);
    v19 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
    v20 = *(v0 + OBJC_IVAR____TtC8VideosUI15CountDownButton_image);
    v21 = *(v6)(v20);
    v22 = (*(v21 + 864))();

    v24 = *(v6)(v23);
    v25 = (*(v24 + 1944))();

    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v27 = sub_1E4004540(v7, v20, v22, v25, sub_1E3BE8308, v26, 0.0, 0.0, v13, v17, v18, v19);

    v28 = *(v4 + v1);
    *(v4 + v1) = v27;
    v3 = v27;

    v2 = 0;
  }

  v29 = v2;
  return v3;
}

void sub_1E3BE6500(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1 + 16, v23);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC8VideosUI15CountDownButton_didAutoPlay;
    swift_beginAccess();
    v3[v4] = 1;
  }

  OUTLINED_FUNCTION_5_0(a1 + 16, v22);
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 selectActionHandler];

    if (v7)
    {
      OUTLINED_FUNCTION_5_0(a1 + 16, v20);
      v8 = swift_unknownObjectWeakLoadStrong();
      v9 = v8;
      if (v8)
      {
        v8 = type metadata accessor for CountDownButton();
      }

      else
      {
        v21[1] = 0;
        v21[2] = 0;
      }

      v21[0] = v9;
      v21[3] = v8;
      sub_1E3294F34(v21, v18);
      v10 = v19;
      if (v19)
      {
        __swift_project_boxed_opaque_existential_1(v18, v19);
        OUTLINED_FUNCTION_1_2();
        v12 = v11;
        MEMORY[0x1EEE9AC00](v13);
        OUTLINED_FUNCTION_5();
        v16 = v15 - v14;
        (*(v12 + 16))(v15 - v14);
        v17 = sub_1E4207994();
        (*(v12 + 8))(v16, v10);
        __swift_destroy_boxed_opaque_existential_1(v18);
      }

      else
      {
        v17 = 0;
      }

      v7[2](v7, v17);
      swift_unknownObjectRelease();
      _Block_release(v7);
      sub_1E329505C(v21);
    }
  }
}

void sub_1E3BE66F0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI15CountDownButton____lazy_storage___countDownIndicator);
  *(v1 + OBJC_IVAR____TtC8VideosUI15CountDownButton____lazy_storage___countDownIndicator) = a1;
}

id sub_1E3BE6790(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v8[OBJC_IVAR____TtC8VideosUI15CountDownButton_didAutoPlay] = 0;
  *&v8[OBJC_IVAR____TtC8VideosUI15CountDownButton____lazy_storage___countDownIndicator] = 0;
  v12 = &v8[OBJC_IVAR____TtC8VideosUI15CountDownButton_title];
  *v12 = a1;
  v12[1] = a2;
  *&v8[OBJC_IVAR____TtC8VideosUI15CountDownButton_image] = a3;
  *&v8[OBJC_IVAR____TtC8VideosUI15CountDownButton_duration] = a7;
  *&v8[OBJC_IVAR____TtC8VideosUI15CountDownButton_layout] = a4;
  *&v8[OBJC_IVAR____TtC8VideosUI15CountDownButton_progressWidth] = a8;
  v19.receiver = v8;
  v19.super_class = type metadata accessor for CountDownButton();
  v13 = a3;

  v14 = objc_msgSendSuper2(&v19, sel_initWithType_interfaceStyle_, a5, a6);
  v15 = objc_allocWithZone(MEMORY[0x1E69DF740]);
  v16 = v14;
  v17 = [v15 init];
  [v16 setImageView_];

  [v16 configureWithLayoutProperties];
  sub_1E3BE6FB0();

  return v16;
}

uint64_t sub_1E3BE68FC(void *a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI15CountDownButton_didAutoPlay) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI15CountDownButton____lazy_storage___countDownIndicator) = 0;
  type metadata accessor for CountDownButton();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1E3BE6974(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 464);
  v4 = *v3;
  v5 = (*v3)();
  if (v5)
  {
    v6 = v5;
    v50 = v4;
    v7 = sub_1E32AE9B0(v5);
    for (i = 0; v7 != i; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E6911E60](i, v6);
      }

      else
      {
        if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        return;
      }

      v12 = v9;
      v58 = *(v9 + 98);
      v57 = 23;
      sub_1E3742F1C(v9, v10, v11);
      sub_1E4206254();
      sub_1E4206254();
      if (v52 == *&v55 && v53 == v56)
      {

LABEL_18:

        if (*v12 == _TtC8VideosUI13TextViewModel)
        {

          v16 = sub_1E3C27024();
          v18 = v17;

          v15 = a2;
          v4 = v50;
          if (v18)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

LABEL_22:
        v15 = a2;
        v4 = v50;
        goto LABEL_23;
      }

      v14 = sub_1E42079A4();

      if (v14)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_22;
  }

  v15 = a2;
LABEL_23:

  v16 = 0;
  v18 = 0xE000000000000000;
LABEL_24:
  v20 = (v4)(v19);
  v21 = v20;
  if (!v20)
  {
    goto LABEL_50;
  }

  v48 = v18;
  v49 = v16;
  v22 = sub_1E32AE9B0(v20);
  for (j = 0; ; ++j)
  {
    if (v22 == j)
    {

LABEL_47:
      v15 = a2;
      v18 = v48;
      v16 = v49;
      goto LABEL_50;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1E6911E60](j, v21);
      v24 = v25;
    }

    else
    {
      if (j >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_69;
      }

      v24 = *(v21 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_68;
    }

    v58 = *(v24 + 98);
    v57 = 39;
    sub_1E3742F1C(v25, v26, v27);
    sub_1E4206254();
    sub_1E4206254();
    if (v52 == *&v55 && v53 == v56)
    {
      break;
    }

    v29 = sub_1E42079A4();

    if (v29)
    {
      goto LABEL_40;
    }
  }

LABEL_40:

  type metadata accessor for ImageViewModel();
  v30 = swift_dynamicCastClass();
  if (!v30)
  {

    goto LABEL_47;
  }

  v31 = OUTLINED_FUNCTION_1_36();
  v32 = (*(*v30 + 1000))(0, v31);
  v34 = v33;

  v18 = v48;
  v16 = v49;
  if (v34 == 255)
  {
LABEL_49:
    v15 = a2;
LABEL_50:
    v38 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    if (!v15)
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  if (v34)
  {
    sub_1E379098C(v32, v34);
    goto LABEL_49;
  }

  v35 = [objc_opt_self() makeImageViewWithResourceDescriptor:v32 existingView:0];
  if (v35)
  {
    v36 = v35;
    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();
    if (!v37)
    {
    }
  }

  else
  {
    v37 = 0;
  }

  v41 = [v37 image];
  if (!v41)
  {
    v41 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  v38 = v41;

  sub_1E379098C(v32, 0);
  v15 = a2;
  if (a2)
  {
LABEL_51:
    v39 = v38;
    v40 = v15;
    goto LABEL_57;
  }

LABEL_56:
  type metadata accessor for ButtonLayout();
  v42 = v38;
  v40 = sub_1E3BBB724();
LABEL_57:
  v43 = objc_opt_self();

  v44 = [v43 isMac];
  LOBYTE(v55) = 0;
  (*(*a1 + 776))(&v52, &v55, &unk_1F5D5DEB8, &off_1F5D5CA78);
  if (v54)
  {
    if (swift_dynamicCast())
    {
      v45 = v55;
      goto LABEL_62;
    }
  }

  else
  {
    sub_1E329505C(&v52);
  }

  v45 = 10.0;
LABEL_62:
  if (v44)
  {
    v46 = 2.0;
  }

  else
  {
    v46 = 3.0;
  }

  v47 = objc_allocWithZone(type metadata accessor for CountDownButton());
  sub_1E3BE6790(v16, v18, v38, v40, 0, 0, v45, v46);
}

id sub_1E3BE6FB0()
{
  v1 = v0;
  v2 = sub_1E4203FC4();
  OUTLINED_FUNCTION_1_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4203FF4();
  OUTLINED_FUNCTION_1_2();
  v59 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_21();
  v16 = *(v15 + 184);
  v17 = v16();
  [v1 vui:v17 addSubview:0 oldView:?];

  v18 = v16();
  [v1 vui:v18 bringSubviewToFront:?];

  v19 = v16();
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];

  result = [v1 textContentView];
  if (result)
  {
    v21 = result;
    v55 = v8;
    v56 = v9;
    v57 = v4;
    v58 = v2;
    v22 = *&v1[OBJC_IVAR____TtC8VideosUI15CountDownButton_layout];
    (*(*v22 + 2096))();
    OUTLINED_FUNCTION_30();
    (*(v23 + 176))(&v61);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1E42A1E20;
    v25 = v16();
    v26 = [v25 trailingAnchor];

    v27 = v21;
    v28 = [v27 leadingAnchor];
    (*(*v22 + 2048))();
    OUTLINED_FUNCTION_30();
    (*(v29 + 152))(v62);

    v30 = *&v62[1];
    LOBYTE(v25) = v63;
    v31 = objc_opt_self();
    v32 = -v30;
    if (v25)
    {
      v32 = -0.0;
    }

    v33 = [v26 constraintEqualToAnchor:v28 constant:v32];

    *(v24 + 32) = v33;
    v34 = v16();
    v35 = [v34 centerYAnchor];

    v36 = [v27 centerYAnchor];
    v37 = [v35 constraintEqualToAnchor_];

    *(v24 + 40) = v37;
    v38 = v16();
    v39 = [v38 widthAnchor];

    v40 = OUTLINED_FUNCTION_6();
    v44 = [v39 constraintEqualToConstant_];

    *(v24 + 48) = v44;
    v45 = v16();
    v46 = [v45 heightAnchor];

    v47 = OUTLINED_FUNCTION_6();
    v50 = [v46 constraintEqualToConstant_];

    *(v24 + 56) = v50;
    sub_1E3280A90(0, &qword_1EE23B1A0, 0x1E696ACD8);
    v51 = sub_1E42062A4();

    [v31 activateConstraints_];

    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v52 = sub_1E4206A04();
    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1E3BE828C;
    aBlock[5] = v53;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E378AEA4;
    aBlock[3] = &block_descriptor_75;
    v54 = _Block_copy(aBlock);

    sub_1E4203FE4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    sub_1E378AD28();
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v14, v55, v54);
    _Block_release(v54);

    (*(v57 + 8))(v55, v58);
    return (*(v59 + 8))(v14, v56);
  }

  return result;
}

void sub_1E3BE7698()
{
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 184))();
  (*((*v0 & *v2) + 0x168))();
}

void sub_1E3BE7748()
{
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 184))();
  (*((*v0 & *v2) + 0x170))();
}

void sub_1E3BE77F8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI15CountDownButton_layout];
  OUTLINED_FUNCTION_47_0();
  [(*(v3 + 2048))() copyWithZone_];

  sub_1E4207264();
  swift_unknownObjectRelease();
  type metadata accessor for TextLayout();
  if (swift_dynamicCast())
  {
    v4 = v23[0];
    v5 = *(*v23[0] + 168);

    v7 = v5(v23);
    if (*(v6 + 32))
    {
      v7(v23, 0);
    }

    else
    {
      v8 = v6;
      OUTLINED_FUNCTION_47_0();
      (*(v9 + 2096))();
      OUTLINED_FUNCTION_30();
      (*(v10 + 176))(&v24);

      v11 = 0.0;
      if ((v25 & 1) == 0)
      {
        v12 = OUTLINED_FUNCTION_6();
        v11 = sub_1E3952BE0(v12, v13, v14, v15);
      }

      *(v8 + 8) = v11 + *(v8 + 8);
      v7(v23, 0);
    }

    sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
    v16 = *&v0[OBJC_IVAR____TtC8VideosUI15CountDownButton_title];
    v17 = *&v0[OBJC_IVAR____TtC8VideosUI15CountDownButton_title + 8];
    v18 = *(*v4 + 2408);

    v20 = v18(v19);
    v21 = sub_1E3810954(v16, v17, v20, [v1 textContentView]);
    [v1 setTextContentView_];
    sub_1E3BE7B20(v2);
    v22.receiver = v1;
    v22.super_class = type metadata accessor for CountDownButton();
    objc_msgSendSuper2(&v22, sel_configureWithLayoutProperties);
  }
}

uint64_t sub_1E3BE7B20(uint64_t a1)
{
  v2 = (*(*a1 + 304))();
  v46 = v1;
  v47 = v2;
  v48 = v3 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
  OUTLINED_FUNCTION_10_92(sub_1E3BE812C, v45);
  OUTLINED_FUNCTION_47_0();
  v5 = (*(v4 + 200))();
  OUTLINED_FUNCTION_2_136(v5, v6);
  v44 = v1;
  OUTLINED_FUNCTION_10_92(sub_1E3BE8140, v43);
  OUTLINED_FUNCTION_47_0();
  v8 = (*(v7 + 224))();
  OUTLINED_FUNCTION_2_136(v8, v9);
  v42 = v1;
  OUTLINED_FUNCTION_10_92(sub_1E3BE8154, v41);
  OUTLINED_FUNCTION_47_0();
  v11 = (*(v10 + 248))();
  OUTLINED_FUNCTION_2_136(v11, v12);
  v40 = v1;
  OUTLINED_FUNCTION_10_92(sub_1E3BE8168, v39);
  OUTLINED_FUNCTION_13();
  v14 = (*(v13 + 328))();
  OUTLINED_FUNCTION_2_136(v14, v15);
  v38 = v1;
  OUTLINED_FUNCTION_10_92(sub_1E3BE817C, v37);
  OUTLINED_FUNCTION_13();
  v17 = (*(v16 + 352))();
  OUTLINED_FUNCTION_2_136(v17, v18);
  v36 = v1;
  OUTLINED_FUNCTION_10_92(sub_1E3BE8190, v35);
  OUTLINED_FUNCTION_47_0();
  (*(v19 + 176))(&v47);
  v34 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0, &qword_1E42B9710);
  OUTLINED_FUNCTION_10_92(sub_1E3BE81A4, v33);
  OUTLINED_FUNCTION_13();
  v21 = (*(v20 + 744))();
  v47 = v21;
  v32 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC50, &unk_1E42DC510);
  sub_1E4148DE0(sub_1E3BE81C0);

  OUTLINED_FUNCTION_13();
  v23 = (*(v22 + 864))();
  v47 = v23;
  v31 = v1;
  sub_1E4148DE0(sub_1E3BE81D4);

  OUTLINED_FUNCTION_13();
  (*(v24 + 552))(&v47);
  v30 = v1;
  OUTLINED_FUNCTION_10_92(sub_1E3BE81E8, v29);
  OUTLINED_FUNCTION_13();
  v26 = (*(v25 + 600))();
  v47 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34C68, &qword_1E42E1080);
  sub_1E4148DE0(sub_1E3BE8230);

  OUTLINED_FUNCTION_13();
  LOBYTE(v47) = (*(v27 + 1880))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34C70, &qword_1E42C1DE8);
  return sub_1E4148DE0(sub_1E3BE8244);
}

id sub_1E3BE8088()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CountDownButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E3BE81E8(double *a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1E3952BE8(*a1, a1[1], a1[2], a1[3]);

  return [v2 setCornerRadius_];
}

id sub_1E3BE8244(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1E3BC0050(*a1);

  return [v2 setButtonShape_];
}

void sub_1E3BE828C()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong vui_setNeedsLayout];
  }

  OUTLINED_FUNCTION_5_0(v0 + 16, &v5);
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 vui_layoutIfNeeded];
  }
}

uint64_t sub_1E3BE8344()
{
  type metadata accessor for ButtonLayout();
  v1 = j__OUTLINED_FUNCTION_18();
  v2 = sub_1E3B050E8();
  v3 = j__OUTLINED_FUNCTION_18();
  *(v0 + 104) = sub_1E3BBD964(8, v1 & 1, v2, v3 & 1);
  type metadata accessor for DescriptionTemplateLayout();
  *(v0 + 112) = sub_1E3D4F8C4();
  v4 = sub_1E3C2F9A0();
  OUTLINED_FUNCTION_15_0(v4 + 112, v5);

  sub_1E3C37CBC(v6, 9);

  return v4;
}

uint64_t sub_1E3BE843C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3BE8428();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3BE8490@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3BE847C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3BE84D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v8 = a1[1];

  return sub_1E3BE863C(v9, v8, a5, a6);
}

uint64_t sub_1E3BE853C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3BE8528();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3BE8590(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v3;
}

uint64_t sub_1E3BE85FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3BE857C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3BE863C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3BE86B4(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B488, &unk_1E42A0630);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v54 = &v51 - v3;
  v53 = type metadata accessor for SportsPlayPeriod(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v51 = v6 - v5;
  v58 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  v57 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v55 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v52 = v18 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - v21;
  type metadata accessor for BaseballVoiceOverUtility();
  v23 = sub_1E4205414();
  v24 = sub_1E3BE8B14(v23);
  v26 = v25;

  sub_1E3BE863C(v24, v26, &unk_1E42C1E80, &unk_1E42C1EA8);
  v27 = sub_1E4205424();
  v28 = sub_1E3BE8D44(v27);
  sub_1E3BE863C(v28, v29, &unk_1E42C1EC8, &unk_1E42C1EF0);
  v30 = sub_1E4205434();
  v31 = sub_1E4205444();
  v32 = v30;
  v33 = v22;
  v34 = v55;
  v35 = sub_1E3BE8DA8(v32, v31);
  sub_1E3BE863C(v35, v36, &unk_1E42C1F10, &unk_1E42C1F38);
  sub_1E4205704();
  sub_1E4205BD4();
  v37 = sub_1E42056A4();
  sub_1E4205044();

  v38 = v58;
  (*(v8 + 104))(v12, *MEMORY[0x1E69D3B68], v58);
  LOBYTE(v37) = sub_1E3823168();
  v39 = *(v8 + 8);
  v39(v12, v38);
  v40 = v15;
  v41 = v57;
  v39(v40, v38);
  if (v37)
  {
    v42 = sub_1E42056A4();
    v43 = sub_1E4205054();

    v44 = sub_1E4205684();
    sub_1E4205294();

    (*(v34 + 16))(v52, v33, v41);
    v45 = v54;
    sub_1E385BAA0();
    if (__swift_getEnumTagSinglePayload(v45, 1, v53) != 1)
    {
      v46 = v45;
      v47 = v51;
      sub_1E385BE80(v46, v51);
      v48 = sub_1E3BE8E48(v47);
      sub_1E3BE863C(v48, v49, &unk_1E42C1E28, &unk_1E42C1E50);
      sub_1E383B454(v47);
      return (*(v34 + 8))(v33, v41);
    }

    sub_1E325F6F0(v45, &qword_1ECF2B488, &unk_1E42A0630);
  }

  sub_1E3BE863C(0, 0, &unk_1E42C1E28, &unk_1E42C1E50);
  return (*(v34 + 8))(v33, v41);
}

uint64_t sub_1E3BE8B14(void *a1)
{
  switch(a1[2])
  {
    case 0:
      type metadata accessor for SportsVoiceOverUtility(0);
      v4 = sub_1E38BA38C();
      v5 = 38;
      goto LABEL_7;
    case 1:
      sub_1E3BE94E4(a1[4]);
      OUTLINED_FUNCTION_60_0();
      if (v19)
      {
        type metadata accessor for SportsVoiceOverUtility(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580, &qword_1E42A9920);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4297BE0;
        *(inited + 32) = 14;
        *(inited + 40) = v1;
        *(inited + 48) = v2;
        sub_1E38EA7FC(inited, v21, v22);
        v23 = sub_1E4205CB4();
        v24 = sub_1E38BAE70();
        sub_1E38BA3C8(35, v23, v24);
        OUTLINED_FUNCTION_60_0();
      }

      break;
    case 2:
      v6 = sub_1E3BE94E4(a1[4]);
      v8 = v7;
      if (v7)
      {
        v9 = v6;
        v10 = sub_1E3BE94E4(a1[5]);
        if (v11)
        {
          v12 = v10;
          v13 = v11;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580, &qword_1E42A9920);
          v14 = swift_initStackObject();
          *(v14 + 16) = xmmword_1E4299720;
          *(v14 + 32) = 15;
          *(v14 + 40) = v9;
          *(v14 + 48) = v8;
          *(v14 + 56) = 16;
          *(v14 + 64) = v12;
          *(v14 + 72) = v13;
          sub_1E38EA7FC(v14, v15, v16);
          v17 = sub_1E4205CB4();
          type metadata accessor for SportsVoiceOverUtility(0);
          v18 = sub_1E38BAE70();
          sub_1E38BA3C8(36, v17, v18);
          OUTLINED_FUNCTION_60_0();
        }

        else
        {
        }
      }

      break;
    case 3:
      type metadata accessor for SportsVoiceOverUtility(0);
      v4 = sub_1E38BA38C();
      v5 = 37;
LABEL_7:
      sub_1E38BA390(v5, v4);
      OUTLINED_FUNCTION_60_0();

      break;
    default:
      return OUTLINED_FUNCTION_32_0();
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3BE8D44(unint64_t a1)
{
  if (a1 > 3)
  {
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    v1 = a1;
    type metadata accessor for SportsVoiceOverUtility(0);
    v2 = sub_1E38BA38C();
    sub_1E38BA390(v1 + 39, v2);
    OUTLINED_FUNCTION_60_0();
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3BE8DA8(unint64_t a1, unint64_t a2)
{
  v3 = sub_1E3BE9548(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v3;
  v6 = sub_1E3BE95AC(a2);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    MEMORY[0x1E69109E0](8236, 0xE200000000000000);
    MEMORY[0x1E69109E0](v8, v9);

    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1E3BE8E48(uint64_t a1)
{
  v2 = sub_1E4205B24();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BDA0, &unk_1E42E44D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD90, &unk_1E42A6300);
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  v21 = sub_1E385D0F0();
  if (v20)
  {
    v35 = v20;
    v22 = *(type metadata accessor for SportsPlayPeriod(0) + 24);
    (*(v4 + 104))(v19, *MEMORY[0x1E69D3CB0], v2);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v2);
    v23 = *(v9 + 48);
    sub_1E385B9C0(a1 + v22, v12);
    sub_1E385B9C0(v19, &v12[v23]);
    OUTLINED_FUNCTION_63(v12);
    if (v24)
    {
      sub_1E325F6F0(v19, &qword_1ECF2BD90, &unk_1E42A6300);
      OUTLINED_FUNCTION_63(&v12[v23]);
      if (v24)
      {
        sub_1E325F6F0(v12, &qword_1ECF2BD90, &unk_1E42A6300);
LABEL_14:
        v25 = 34;
        goto LABEL_15;
      }
    }

    else
    {
      sub_1E385B9C0(v12, v16);
      OUTLINED_FUNCTION_63(&v12[v23]);
      if (!v24)
      {
        (*(v4 + 32))(v8, &v12[v23], v2);
        sub_1E3BE983C(&qword_1ECF2BDA8, MEMORY[0x1E69D3CC8], MEMORY[0x1E69D3CD8]);
        v26 = sub_1E4205E84();
        v27 = *(v4 + 8);
        v27(v8, v2);
        sub_1E325F6F0(v19, &qword_1ECF2BD90, &unk_1E42A6300);
        v27(v16, v2);
        sub_1E325F6F0(v12, &qword_1ECF2BD90, &unk_1E42A6300);
        if (v26)
        {
          goto LABEL_14;
        }

LABEL_12:
        v25 = 33;
LABEL_15:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580, &qword_1E42A9920);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4297BE0;
        *(inited + 32) = 13;
        v29 = v35;
        *(inited + 40) = v21;
        *(inited + 48) = v29;
        sub_1E38EA7FC(inited, v30, v31);
        v32 = sub_1E4205CB4();
        type metadata accessor for SportsVoiceOverUtility(0);
        v33 = sub_1E38BAE70();
        sub_1E38BA3C8(v25, v32, v33);
        OUTLINED_FUNCTION_60_0();

        return OUTLINED_FUNCTION_32_0();
      }

      sub_1E325F6F0(v19, &qword_1ECF2BD90, &unk_1E42A6300);
      (*(v4 + 8))(v16, v2);
    }

    sub_1E325F6F0(v12, &qword_1ECF2BDA0, &unk_1E42E44D0);
    goto LABEL_12;
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3BE9244()
{
  v1 = OBJC_IVAR____TtC8VideosUI26BaseballVoiceOverViewModel__inning;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B498, &unk_1E42C1E70);
  OUTLINED_FUNCTION_2();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC8VideosUI26BaseballVoiceOverViewModel__baseRunners, v2);
  v4(v0 + OBJC_IVAR____TtC8VideosUI26BaseballVoiceOverViewModel__outs, v2);
  v4(v0 + OBJC_IVAR____TtC8VideosUI26BaseballVoiceOverViewModel__pitchCount, v2);
  return v0;
}

uint64_t sub_1E3BE9308()
{
  sub_1E3BE9244();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3BE9360()
{
  v0 = swift_allocObject();
  sub_1E3BE9398();
  return v0;
}

uint64_t sub_1E3BE9398()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B498, &unk_1E42C1E70);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - v5;
  v13[0] = 0;
  v13[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
  sub_1E4200634();
  v7 = *(v3 + 32);
  v8 = OUTLINED_FUNCTION_8_7();
  v7(v8);
  OUTLINED_FUNCTION_4_142();
  v9 = OUTLINED_FUNCTION_8_7();
  v7(v9);
  OUTLINED_FUNCTION_4_142();
  v10 = OUTLINED_FUNCTION_8_7();
  v7(v10);
  v11 = OBJC_IVAR____TtC8VideosUI26BaseballVoiceOverViewModel__pitchCount;
  OUTLINED_FUNCTION_4_142();
  (v7)(v0 + v11, v6, v1);
  return v0;
}

uint64_t sub_1E3BE94E4(uint64_t a1)
{
  v1 = a1 - 1;
  if ((a1 - 1) > 2)
  {
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    type metadata accessor for SportsVoiceOverUtility(0);
    v2 = sub_1E38BA38C();
    sub_1E38BA390(v1 + 53, v2);
    OUTLINED_FUNCTION_60_0();
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3BE9548(unint64_t a1)
{
  if (a1 > 4)
  {
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    v1 = a1;
    type metadata accessor for SportsVoiceOverUtility(0);
    v2 = sub_1E38BA38C();
    sub_1E38BA390(v1 + 43, v2);
    OUTLINED_FUNCTION_60_0();
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3BE95AC(unint64_t a1)
{
  if (a1 > 3)
  {
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    v1 = a1;
    type metadata accessor for SportsVoiceOverUtility(0);
    v2 = sub_1E38BA38C();
    sub_1E38BA390(v1 | 0x30, v2);
    OUTLINED_FUNCTION_60_0();
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3BE9610(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SportsVoiceOverUtility(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580, &qword_1E42A9920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  *(inited + 32) = 17;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  sub_1E38EA7FC(inited, v5, v6);

  v7 = sub_1E4205CB4();
  v8 = sub_1E38BAE70();
  sub_1E38BA3C8(52, v7, v8);
  v10 = v9;

  return v10;
}

uint64_t type metadata accessor for BaseballVoiceOverViewModel(uint64_t a1)
{
  result = qword_1EE295CE0;
  if (!qword_1EE295CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3BE9744(uint64_t a1)
{
  sub_1E3BE97D8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3BE97D8(uint64_t a1)
{
  if (!qword_1EE289FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D960, &unk_1E4298000);
    v1 = sub_1E4200694();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289FA8);
    }
  }
}

uint64_t sub_1E3BE983C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E3BE9884()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3BE98D0(char a1)
{
  if (!a1)
  {
    return 0x6C62616C69617661;
  }

  if (a1 == 1)
  {
    return 0x6F53676E696D6F63;
  }

  return 0x616C696176616E75;
}

uint64_t sub_1E3BE9944(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6C62616C69617661;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6F53676E696D6F63;
    }

    else
    {
      v5 = 0x616C696176616E75;
    }

    if (v4 == 1)
    {
      v6 = 0xEA00000000006E6FLL;
    }

    else
    {
      v6 = 0xEB00000000656C62;
    }
  }

  else
  {
    v5 = 0x6C62616C69617661;
    v6 = 0xE900000000000065;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6F53676E696D6F63;
    }

    else
    {
      v3 = 0x616C696176616E75;
    }

    if (a2 == 1)
    {
      v2 = 0xEA00000000006E6FLL;
    }

    else
    {
      v2 = 0xEB00000000656C62;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3BE9A78(uint64_t a1, unsigned __int8 a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3BE9B1C(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3BE9BCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3BE9884();
  *a1 = result;
  return result;
}

uint64_t sub_1E3BE9BFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3BE98D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_1E3BE9C60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_layout;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void *sub_1E3BE9D18(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_titleLabel;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void *sub_1E3BE9D60(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_textLabel;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

double sub_1E3BE9DA8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_12(a1);

  return result;
}

void sub_1E3BE9DE0(uint64_t a1)
{
  v3 = &qword_1ECF34000;
  v4 = OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_buttonViews;
  swift_beginAccess();
  v5 = *&v1[v4];
  v53 = v1;
  *&v1[v4] = a1;
  if (v5)
  {
    v6 = sub_1E32AE9B0(v5);
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v6 == v7)
      {
        v3 = &qword_1ECF34000;
        goto LABEL_16;
      }

      if (v8)
      {
        v11 = v5;
        v12 = MEMORY[0x1E6911E60](v7, v5);
      }

      else
      {
        if (v7 >= *(v9 + 16))
        {
          goto LABEL_33;
        }

        v11 = v5;
        v12 = *(v5 + 8 * v7 + 32);
      }

      v13 = v12;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      [v12 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1E39ABB54(0, *(v10 + 2) + 1, 1, v10);
      }

      v23 = *(v10 + 2);
      v22 = *(v10 + 3);
      if (v23 >= v22 >> 1)
      {
        v10 = sub_1E39ABB54((v22 > 1), v23 + 1, 1, v10);
      }

      *(v10 + 2) = v23 + 1;
      v24 = &v10[32 * v23];
      *(v24 + 4) = v15;
      *(v24 + 5) = v17;
      *(v24 + 6) = v19;
      *(v24 + 7) = v21;
      [v13 removeFromSuperview];

      ++v7;
      v5 = v11;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v25 = v3[402];
    swift_beginAccess();
    v26 = *&v53[v25];
    if (v26)
    {
      v50 = v5;
      v27 = sub_1E32AE9B0(v26);
      v28 = v26 & 0xC000000000000001;
      v29 = v26 & 0xFFFFFFFFFFFFFF8;

      v30 = 0;
      v31 = (v10 + 56);
      v32 = 0.0;
      v33 = &selRef_textLayout;
      v34 = 0.0;
      v35 = 0.0;
      v36 = 0.0;
      v51 = v26 & 0xFFFFFFFFFFFFFF8;
      v52 = v26;
      while (v27 != v30)
      {
        if (v28)
        {
          v37 = MEMORY[0x1E6911E60](v30, v26);
        }

        else
        {
          if (v30 >= *(v29 + 16))
          {
            goto LABEL_35;
          }

          v37 = *(v26 + 8 * v30 + 32);
        }

        v38 = v37;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_34;
        }

        [v37 frame];
        v56.origin.x = 0.0;
        v56.origin.y = 0.0;
        v56.size.width = 0.0;
        v56.size.height = 0.0;
        if (CGRectEqualToRect(v54, v56))
        {
          v39 = v27;
          v40 = v28;
          v41 = v33;
          if (v30 >= *(v10 + 2))
          {
            v55.origin.x = v32;
            v55.origin.y = v34;
            v55.size.width = v35;
            v55.size.height = v36;
            MaxY = CGRectGetMaxY(v55);
            [v38 frame];
            v44 = &selRef_setDelayContentsChangeOperation_;
            [v38 setFrame_];
            [v38 frame];
          }

          else
          {
            v42 = *(v31 - 3);
            v43 = *(v31 - 2);
            v35 = *(v31 - 1);
            v36 = *v31;
            v44 = &selRef_setDelayContentsChangeOperation_;
          }

          [v38 v44[228]];
          v33 = v41;
          v28 = v40;
          v27 = v39;
          v29 = v51;
          v26 = v52;
        }

        [v38 frame];
        v32 = v46;
        v34 = v47;
        v35 = v48;
        v36 = v49;
        [v53 v33[466]];

        ++v30;
        v31 += 4;
      }
    }

    [v53 vui_setNeedsLayout];
  }
}

void sub_1E3BEA184(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for UIFactory();
  v5 = sub_1E373E010(17, a1, v4);
  v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))();
  v7 = sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
  memset(__dst, 0, 40);
  v8 = sub_1E393D92C(v5, v6, __dst, 0, v7);

  sub_1E325F748(__dst, &qword_1ECF296C0, &unk_1E429BBE0);
  sub_1E3BE9D9C(v8);
  v10 = sub_1E373E010(23, a1, v9);
  OUTLINED_FUNCTION_1_169();
  v12 = (*(v11 + 144))();
  memset(__dst, 0, 40);
  v13 = sub_1E393D92C(v10, v12, __dst, 0, v7);

  sub_1E325F748(__dst, &qword_1ECF296C0, &unk_1E429BBE0);
  sub_1E3BE9D54(v13);
  memset(v52, 0, sizeof(v52));
  v53 = 0;
  v54 = 1;
  v55 = 0;
  sub_1E3DC12B0([v2 vuiUserInterfaceStyle], v52, __src);
  v15 = sub_1E373E010(91, a1, v14);
  if (v15)
  {
    v16 = (*(*v15 + 464))(v15);
  }

  else
  {
    v16 = 0;
  }

  OUTLINED_FUNCTION_1_169();
  v18 = (*(v17 + 192))();
  OUTLINED_FUNCTION_1_169();
  v47 = (*(v19 + 120))();
  if (!v47)
  {
    type metadata accessor for ContentAvailabilityPlatterLayout();
    v47 = sub_1E4086CA4();
  }

  type metadata accessor for ContentAvailabilityPlatterView();
  memcpy(__dst, __src, 0x5AuLL);
  if (!v16)
  {
    goto LABEL_57;
  }

  v20 = v16 & 0xFFFFFFFFFFFFFF8;
  if (!(v16 >> 62))
  {
    v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_9;
    }

LABEL_57:
    v44 = 0;
    goto LABEL_58;
  }

LABEL_56:
  v21 = sub_1E4207384();
  if (!v21)
  {
    goto LABEL_57;
  }

LABEL_9:
  v22 = 0;
  v46 = MEMORY[0x1E69E7CC0];
  v62 = MEMORY[0x1E69E7CC0];
  v48 = v16;
  v49 = v16 & 0xC000000000000001;
  v50 = -v21;
LABEL_10:
  for (i = v22 + 4; v50 + i != 4; ++i)
  {
    v24 = i - 4;
    if (v49)
    {
      v25 = MEMORY[0x1E6911E60](i - 4, v16);
    }

    else
    {
      if (v24 >= *(v20 + 16))
      {
        goto LABEL_54;
      }

      v25 = *(v16 + 8 * i);
    }

    v22 = i - 3;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v18 && (v18 >> 62 ? (v26 = sub_1E4207384()) : (v26 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10)), v24 < v26))
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1E6911E60](i - 4, v18);
      }

      else
      {
        if (v24 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v27 = *(v18 + 8 * i);
      }

      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = (*(*v25 + 392))();
    if (v29)
    {
      type metadata accessor for ButtonLayout();
      v29 = swift_dynamicCastClass();
      v32 = v29;
      if (!v29)
      {
      }
    }

    else
    {
      v32 = 0;
    }

    v33 = v20;
    v61 = v25[49];
    v60 = 60;
    sub_1E3742F1C(v29, v30, v31);
    sub_1E4206254();
    sub_1E4206254();
    if (v58 == v56 && v59 == v57)
    {
    }

    else
    {
      v35 = sub_1E42079A4();

      if ((v35 & 1) == 0)
      {
        if (!v32)
        {
          goto LABEL_40;
        }

        v36 = *(*v47 + 1800);

        v38 = v36(v37);
        goto LABEL_39;
      }
    }

    if (!v32)
    {
      goto LABEL_40;
    }

    v39 = *(*v47 + 1824);

    v38 = v39(v40);
LABEL_39:
    (*(*v32 + 1648))(v38);

LABEL_40:
    memcpy(v63, __dst, sizeof(v63));
    v64 = 1;
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
    sub_1E3F86D44();
    v20 = v33;
    if (v41)
    {
      v42 = v41;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v43 = v42;
        MEMORY[0x1E6910BF0]();
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();

        v46 = v62;
        v16 = v48;
        goto LABEL_10;
      }
    }

    v16 = v48;
  }

  v44 = v46;
  if (!sub_1E32AE9B0(v46))
  {

    v44 = 0;
  }

LABEL_58:

  sub_1E3BEAC88(__src);

  if (v44)
  {
    if (v44 >> 62)
    {
      sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);

      v45 = sub_1E42076C4();
      swift_bridgeObjectRelease_n();
      v44 = v45;
    }

    else
    {

      sub_1E42079D4();
      sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    }
  }

  sub_1E3BE9DE0(v44);
}

id sub_1E3BEA908()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_textLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_buttonViews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_vibrantEffectView) = 0;
  v5 = type metadata accessor for ContentAvailabilityPlatterView();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3BEA9D8(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_layout] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_textLabel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_buttonViews] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_vibrantEffectView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ContentAvailabilityPlatterView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3BEAAA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentAvailabilityPlatterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E3BEAB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF34CA0;
  if (!qword_1ECF34CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34CA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContentAvailabilityType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3BEACDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_3_140(v6, v21);
  v8(v7);
  OUTLINED_FUNCTION_67_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(a1 + 16);
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
    v14 = OUTLINED_FUNCTION_67_0();
    return v15(v14);
  }

  else
  {
    OUTLINED_FUNCTION_37_1();
    (*(v17 + 32))(a2, v2, v10);
    OUTLINED_FUNCTION_114();
    return __swift_storeEnumTagSinglePayload(v18, v19, v20, v10);
  }
}

uint64_t sub_1E3BEADF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_3_140(v6, v21);
  v8(v7);
  OUTLINED_FUNCTION_67_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(a1 + 24);
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_37_1();
    (*(v11 + 32))(a2, v2, v10);
    OUTLINED_FUNCTION_114();
    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v10);
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v10);
    v19 = OUTLINED_FUNCTION_67_0();
    return v20(v19);
  }
}

uint64_t sub_1E3BEAF04()
{
  OUTLINED_FUNCTION_5_131();
  OUTLINED_FUNCTION_37_1();
  (*(v3 + 32))(v2);
  type metadata accessor for Either(0, v1, v0, v4);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E3BEAF84()
{
  OUTLINED_FUNCTION_5_131();
  OUTLINED_FUNCTION_37_1();
  (*(v3 + 32))(v2);
  type metadata accessor for Either(0, v1, v0, v4);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E3BEB000@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v54 = a4;
  v51 = a5;
  v55 = a6;
  sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v49 = v10;
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v45 - v11;
  v57 = a3;
  v48 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v45 - v15;
  v16 = sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  v22 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v45 - v27;
  sub_1E327F454(a1, v56);
  v29 = v53;
  sub_1E42065B4();
  if (v29)
  {

    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, a2);
    (*(v18 + 8))(v21, v16);
    sub_1E327F454(a1, v56);
    v33 = v52;
    v34 = v57;
    sub_1E42065B4();
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v34);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v42 = *(v48 + 32);
    v43 = v46;
    v42(v46, v33, v34);
    v42(v47, v43, v34);
    return sub_1E3BEAF84();
  }

  else
  {
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v38 = *(v22 + 32);
    v38(v28, v21, a2);
    v38(v25, v28, a2);
    return sub_1E3BEAF04();
  }
}

unint64_t sub_1E3BEB424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF34CA8;
  if (!qword_1ECF34CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34CA8);
  }

  return result;
}

uint64_t sub_1E3BEB478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 24);
  OUTLINED_FUNCTION_1_19();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_0_171();
  v13 = v11 - v12;
  v15 = *(v14 + 16);
  OUTLINED_FUNCTION_1_19();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_0_171();
  v21 = v19 - v20;
  OUTLINED_FUNCTION_1_19();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_0_171();
  v25 = v23 - v24;
  (*(v26 + 16))(v23 - v24, v27, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v13, v25, v7);
    sub_1E4205D84();
    return (*(v9 + 8))(v13, v7);
  }

  else
  {
    (*(v17 + 32))(v21, v25, v15);
    sub_1E4205D84();
    return (*(v17 + 8))(v21, v15);
  }
}

uint64_t sub_1E3BEB70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 24);
  OUTLINED_FUNCTION_1_19();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_0_171();
  v10 = v8 - v9;
  v12 = *(v11 + 16);
  OUTLINED_FUNCTION_1_19();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_0_171();
  v18 = v16 - v17;
  OUTLINED_FUNCTION_1_19();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_0_171();
  v22 = v20 - v21;
  (*(v23 + 16))(v20 - v21, v24, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v10, v22, v4);
    v25 = sub_1E4207944();
    (*(v6 + 8))(v10, v4);
  }

  else
  {
    (*(v14 + 32))(v18, v22, v12);
    v25 = sub_1E4207944();
    (*(v14 + 8))(v18, v12);
  }

  return v25;
}

unint64_t sub_1E3BEB954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF34CB0;
  if (!qword_1ECF34CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34CB0);
  }

  return result;
}

uint64_t sub_1E3BEB9B4()
{
  OUTLINED_FUNCTION_37_1();
  v4 = *(*(v3 - 8) + 64);
  if (v4 <= *(v2 + 64))
  {
    v4 = *(v2 + 64);
  }

  if (!v1)
  {
    return OUTLINED_FUNCTION_18();
  }

  if (v1 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((v1 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(v0 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(v0 + v5);
      if (!*(v0 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(v0 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(v0 + v5);
  if (!*(v0 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *v0;
        break;
      case 3:
        LODWORD(v5) = *v0 | (*(v0 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *v0;
        break;
      default:
        LODWORD(v5) = *v0;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1E3BEBAF0(_BYTE *a1)
{
  OUTLINED_FUNCTION_37_1();
  v5 = *(v4 + 64);
  v7 = *(v6 - 8);
  if (*(v7 + 64) > v5)
  {
    v5 = *(v7 + 64);
  }

  v8 = v5 + 1;
  v9 = 8 * (v5 + 1);
  if (v3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v8 <= 3)
  {
    v13 = ((v3 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v2 > 0xFE)
  {
    v11 = v2 - 255;
    if (v8 < 4)
    {
      v12 = (v11 >> v9) + 1;
      if (v5 != -1)
      {
        v15 = v11 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v15;
          a1[2] = BYTE2(v15);
        }

        else if (v8 == 2)
        {
          *a1 = v15;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v11;
      v12 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v8] = v12;
        break;
      case 2:
        *&a1[v8] = v12;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v12;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        a1[v8] = 0;
        if (!v2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = 0;
        if (!v2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (v2)
        {
LABEL_26:
          a1[v5] = -v2;
        }

        break;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for EitherDecodingError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void *sub_1E3BEBD6C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v4 = sub_1E327D33C(25705, 0xE200000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = sub_1E328438C(*(a1 + 56) + 32 * v4, &v27);
  if ((OUTLINED_FUNCTION_5_132(v6, v7, v8, MEMORY[0x1E69E6158], v9, v10) & 1) == 0)
  {
    goto LABEL_9;
  }

  v11 = v25;
  sub_1E3277E60(0x7475626972747461, 0xEA00000000007365, a1, &v27);

  if (!*(&v28 + 1))
  {

    v22 = &v27;
LABEL_15:
    result = sub_1E329505C(v22);
    goto LABEL_10;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_5_132(v12, v13, v14, v12, v15, v16) & 1) == 0)
  {
LABEL_9:

LABEL_10:
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    goto LABEL_11;
  }

  sub_1E3277E60(1701667182, 0xE400000000000000, v25, &v25);

  if (!v26)
  {

    v22 = &v25;
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  result = sub_1E3BEBF48(v11, *(&v11 + 1), v23, v24, &v27);
  v18 = v27;
  v19 = v28;
  v20 = v29;
  v21 = v30;
LABEL_11:
  *a2 = v18;
  a2[1] = v19;
  a2[2] = v20;
  a2[3] = v21;
  return result;
}

uint64_t sub_1E3BEBEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 64;
  }

  v4 = sub_1E327D33C(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 64;
  }
}

uint64_t sub_1E3BEBF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v45 = a4;
  v9 = sub_1E41FE624();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  v47 = a2;
  v48 = 44;
  v49 = 0xE100000000000000;
  sub_1E32822E0(v13, v14, v15);
  v16 = sub_1E4207194();
  if (v16[2])
  {
    v18 = v16[4];
    v17 = v16[5];

    if (_MergedGlobals_215 != -1)
    {
      swift_once();
    }

    v19 = sub_1E3BEBEFC(v18, v17, qword_1EE28C208);

    if (v19 != 64)
    {
      sub_1E3BEC224(v19);
      v21 = v20;
      v23 = v22;
      sub_1E3BEC518(v19);
      OUTLINED_FUNCTION_2_137(v24, v25);
      v26 = v45;
      while (1)
      {
        v27 = sub_1E42060A4();
        if (!v28)
        {
          break;
        }

        v29 = v27;
        v30 = v28;
        if ((sub_1E4205DC4() & 1) == 0)
        {
          MEMORY[0x1E69109D0](v29, v30);
        }
      }

LABEL_18:

      v34 = v48;
      v33 = v49;
      goto LABEL_19;
    }
  }

  else
  {
  }

  sub_1E41FE614();
  a1 = sub_1E41FE5E4();
  a2 = v31;
  (*(v10 + 8))(v12, v9);
  v26 = v45;

  result = sub_1E3BECB58();
  if (result != 64)
  {
    v35 = result;
    sub_1E3BEC224(result);
    v21 = v36;
    v23 = v37;
    sub_1E3BEC518(v35);
    OUTLINED_FUNCTION_2_137(v38, v39);
    while (1)
    {
      v40 = sub_1E42060A4();
      if (!v41)
      {
        break;
      }

      v42 = v40;
      v43 = v41;
      if ((sub_1E4205DC4() & 1) == 0)
      {
        MEMORY[0x1E69109D0](v42, v43);
      }
    }

    goto LABEL_18;
  }

  v23 = 0x80000001E4275DB0;
  v33 = 0xE700000000000000;
  v34 = 0x6E776F6E6B6E55;
  v21 = 0xD00000000000001ALL;
LABEL_19:
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = v26;
  a5[4] = v21;
  a5[5] = v23;
  a5[6] = v34;
  a5[7] = v33;
  return result;
}

void sub_1E3BEC224(char a1)
{
  switch(a1)
  {
    case 2:
    case 4:
    case 6:
    case 7:
    case 57:
      OUTLINED_FUNCTION_1_38();
      break;
    case 12:
    case 21:
    case 51:
      OUTLINED_FUNCTION_0_172();
      break;
    case 15:
    case 18:
    case 19:
    case 37:
    case 38:
    case 39:
    case 40:
    case 42:
    case 43:
    case 44:
    case 45:
    case 47:
    case 48:
    case 59:
    case 63:
      OUTLINED_FUNCTION_23();
      break;
    default:
      return;
  }
}

void sub_1E3BEC518(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_1_38();
      break;
    case 44:
      OUTLINED_FUNCTION_0_172();
      break;
    case 50:
    case 52:
      OUTLINED_FUNCTION_23();
      break;
    default:
      return;
  }
}

unint64_t sub_1E3BECB58()
{
  v0 = sub_1E4207A04();

  if (v0 >= 0x40)
  {
    return 64;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3BECBAC()
{
  result = sub_1E4205CB4();
  qword_1EE28C208 = result;
  return result;
}

uint64_t sub_1E3BECBF8(char a1, char a2)
{
  sub_1E3BEC518(a1);
  v4 = v3;
  v6 = v5;
  sub_1E3BEC518(a2);
  if (v4 == v8 && v6 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E3BECC84(char a1)
{
  sub_1E4207B44();
  sub_1E3BEC518(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3BECCF0(uint64_t a1, char a2)
{
  sub_1E3BEC518(a2);
  sub_1E4206014();
}

uint64_t sub_1E3BECD4C(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3BEC518(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3BECDAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3BECB58();
  *a1 = result;
  return result;
}

void sub_1E3BECDDC(void *a1@<X8>)
{
  sub_1E3BEC518(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1E3BECE08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3BECE48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibGenre.VideosUIGenre(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xC1)
  {
    if (a2 + 63 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 63) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 64;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x40;
  v5 = v6 - 64;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LibGenre.VideosUIGenre(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 63 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 63) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xC1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xC0)
  {
    v6 = ((a2 - 193) >> 8) + 1;
    *result = a2 + 63;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 63;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3BED010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF59F10[0];
  if (!qword_1ECF59F10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF59F10);
  }

  return result;
}

uint64_t *MetricsJetEngine.shared.unsafeMutableAddressor()
{
  if (qword_1EE2A2CE0 != -1)
  {
    OUTLINED_FUNCTION_5_133(&qword_1EE2A2CE0);
  }

  return &static MetricsJetEngine.shared;
}

uint64_t MetricsJetEngine.sharedPipeline.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___VUIMetricsJetEngine_sharedPipeline;
  swift_beginAccess();
  sub_1E42045D4();
  OUTLINED_FUNCTION_2();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

id MetricsJetEngine.wrappedPipeline.getter()
{
  v1 = OBJC_IVAR___VUIMetricsJetEngine_wrappedPipeline;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MetricsJetEngine.wrappedPipeline.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___VUIMetricsJetEngine_wrappedPipeline;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E3BED308@<X0>(uint64_t *a1@<X8>)
{
  sub_1E42047A4();
  v2 = sub_1E4205C44();

  *a1 = v2;
  return result;
}

Swift::Void __swiftcall MetricsJetEngine.flushMetrics()()
{

  sub_1E4204914();
}

Swift::Bool __swiftcall MetricsJetEngine.isSharedContent(_:)(Swift::String_optional a1)
{
  if (!a1.value._object)
  {
    return 0;
  }

  object = a1.value._object;
  v3 = sub_1E3285D14();
  v4 = *((*MEMORY[0x1E69E7D40] & **v3) + 0x110);
  v5 = *v3;
  v6 = OUTLINED_FUNCTION_11_5();
  v7 = v4(v6, object);

  if (!v7)
  {
    return 0;
  }

  return 1;
}

uint64_t MetricsJetEngine.flushMetricsWithCompletion(_:)(uint64_t a1, uint64_t a2)
{

  sub_1E4204914();

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);

  v6 = sub_1E4206A04();
  v8[3] = v5;
  v8[4] = MEMORY[0x1E69AB720];
  v8[0] = v6;
  sub_1E4204CB4();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

Swift::Void __swiftcall MetricsJetEngine.setMonitorsLifecycleEvents(_:)(Swift::Bool a1)
{

  sub_1E42048F4();
}

void static MetricsJetEngine.convertClickDataToLocationData(_:index:)()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E4205F14();
  sub_1E3277E60(v11, v12, v3, &v45);

  if (!v46)
  {
    v34 = &v45;
LABEL_13:
    sub_1E329505C(v34);
    goto LABEL_14;
  }

  v13 = MEMORY[0x1E69E6158];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v14 = *(&v43 + 1);
  v39 = v43;
  v15 = sub_1E4205F14();
  sub_1E3277E60(v15, v16, v3, &v43);

  if (!v44)
  {

    v34 = &v43;
    goto LABEL_13;
  }

  sub_1E329504C(&v43, &v45);
  v17 = sub_1E4205F14();
  sub_1E3277E60(v17, v18, v3, &v41);

  if (v42)
  {
    sub_1E329504C(&v41, &v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4298AD0;
    *(inited + 32) = sub_1E4205F14();
    *(inited + 40) = v20;
    *(inited + 72) = v13;
    *(inited + 48) = v39;
    *(inited + 56) = v14;
    *(inited + 80) = sub_1E4205F14();
    *(inited + 88) = v21;
    sub_1E328438C(&v45, inited + 96);
    *(inited + 128) = sub_1E4205F14();
    *(inited + 136) = v22;
    sub_1E328438C(&v43, inited + 144);
    *(inited + 176) = sub_1E4205F14();
    *(inited + 184) = v23;
    *(inited + 216) = MEMORY[0x1E69E6530];
    *(inited + 192) = v1;
    sub_1E4205CB4();
    v24 = sub_1E4205F14();
    sub_1E3277E60(v24, v25, v3, &v41);

    if (v42)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_10:
        __swift_destroy_boxed_opaque_existential_1(&v43);
        __swift_destroy_boxed_opaque_existential_1(&v45);
        goto LABEL_17;
      }

      v26 = sub_1E4205F14();
      sub_1E3277E60(v26, v27, *&v40[0], &v41);

      if (v42)
      {
        v28 = MEMORY[0x1E69E6158];
        if (swift_dynamicCast())
        {
          v29 = v40[0];
          v30 = sub_1E4205F14();
          v32 = v31;
          v42 = v28;
          v41 = v29;
          sub_1E329504C(&v41, v40);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_1E32A87C0(v40, v30, v32, isUniquelyReferenced_nonNull_native);
        }

        goto LABEL_10;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v43);
    __swift_destroy_boxed_opaque_existential_1(&v45);
    sub_1E329505C(&v41);
    goto LABEL_17;
  }

  __swift_destroy_boxed_opaque_existential_1(&v45);

  sub_1E329505C(&v41);
LABEL_14:
  v35 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v35, v4);
  v36 = sub_1E41FFC94();
  v37 = sub_1E42067F4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1E323F000, v36, v37, "MetricsJetEngine:: convertClickDataToLocationData is missing targetId, targetType, or actionType in dict", v38, 2u);
    MEMORY[0x1E69143B0](v38, -1, -1);
  }

  (*(v6 + 8))(v10, v4);
  sub_1E4205CB4();
LABEL_17:
  OUTLINED_FUNCTION_25_2();
}

void static MetricsJetEngine.convertClickDataToImpressionsData(_:index:)()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E4205F14();
  sub_1E3277E60(v11, v12, v3, &v71);

  if (v72)
  {
    v13 = MEMORY[0x1E69E6158];
    if (swift_dynamicCast())
    {
      v14 = v69;
      v15 = sub_1E4205F14();
      sub_1E3277E60(v15, v16, v3, &v69);

      if (*(&v70 + 1))
      {
        sub_1E329504C(&v69, &v71);
        v17 = sub_1E4205F14();
        v19 = v18;
        *(&v70 + 1) = v13;
        v69 = v14;
        sub_1E329504C(&v69, v68);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = v3;
        sub_1E32A87C0(v68, v17, v19, isUniquelyReferenced_nonNull_native);

        v21 = v3;
        v22 = sub_1E4205F14();
        v24 = v23;
        sub_1E328438C(&v71, &v69);
        v25 = swift_isUniquelyReferenced_nonNull_native();
        *&v68[0] = v3;
        sub_1E32A87C0(&v69, v22, v24, v25);

        v26 = sub_1E4205F14();
        v28 = v27;
        *(&v70 + 1) = MEMORY[0x1E69E6530];
        *&v69 = v1;
        OUTLINED_FUNCTION_11_98();
        v29 = OUTLINED_FUNCTION_4_143();
        sub_1E32A87C0(v29, v26, v28, v30);

        v31 = sub_1E4205F14();
        OUTLINED_FUNCTION_7_137(v31, v32);

        if (*(&v70 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_21:
            v55 = sub_1E4205F14();
            v57 = v56;
            v58 = sub_1E327D33C(v55, v56);
            if (v59)
            {
              v60 = v58;
              swift_isUniquelyReferenced_nonNull_native();
              *&v68[0] = v21;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
              sub_1E4207644();
              v21 = *&v68[0];

              sub_1E329504C((*(v21 + 7) + 32 * v60), &v69);
              sub_1E4207664();
            }

            else
            {
              v69 = 0u;
              v70 = 0u;
            }

            sub_1E329505C(&v69);
            v61 = sub_1E4205F14();
            sub_1E327D33C(v61, v62);
            if (v63)
            {
              OUTLINED_FUNCTION_11_5();
              swift_isUniquelyReferenced_nonNull_native();
              *&v68[0] = v21;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
              v21 = v68;
              sub_1E4207644();
              OUTLINED_FUNCTION_14_107();
              sub_1E329504C((*(&v70 + 1) + 32 * v57), &v69);
              sub_1E4207664();
            }

            else
            {
              v69 = 0u;
              v70 = 0u;
            }

            sub_1E329505C(&v69);
            v64 = sub_1E4205F14();
            sub_1E327D33C(v64, v65);
            if (v66)
            {
              OUTLINED_FUNCTION_11_5();
              swift_isUniquelyReferenced_nonNull_native();
              *&v68[0] = v21;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
              sub_1E4207644();
              OUTLINED_FUNCTION_14_107();
              sub_1E329504C((*(&v70 + 1) + 32 * v57), &v69);
              sub_1E4207664();
            }

            else
            {
              v69 = 0u;
              v70 = 0u;
            }

            sub_1E329505C(&v69);
            __swift_destroy_boxed_opaque_existential_1(&v71);
            goto LABEL_14;
          }

          v33 = sub_1E4205F14();
          OUTLINED_FUNCTION_7_137(v33, v34);

          if (*(&v70 + 1))
          {
            v35 = MEMORY[0x1E69E6158];
            if (swift_dynamicCast())
            {
              v36 = v68[0];
              v37 = sub_1E4205F14();
              v39 = v38;
              *(&v70 + 1) = v35;
              v69 = v36;
              OUTLINED_FUNCTION_11_98();
              v40 = OUTLINED_FUNCTION_4_143();
              sub_1E32A87C0(v40, v37, v39, v41);

              v21 = v3;
            }
          }

          else
          {
            sub_1E329505C(&v69);
          }

          v46 = sub_1E4205F14();
          OUTLINED_FUNCTION_7_137(v46, v47);

          if (*(&v70 + 1))
          {
            v48 = MEMORY[0x1E69E6158];
            if (swift_dynamicCast())
            {
              v49 = v68[0];
              v50 = sub_1E4205F14();
              v52 = v51;
              *(&v70 + 1) = v48;
              v69 = v49;
              OUTLINED_FUNCTION_11_98();
              v53 = OUTLINED_FUNCTION_4_143();
              sub_1E32A87C0(v53, v50, v52, v54);

              v21 = v67;
            }

            goto LABEL_21;
          }
        }

        sub_1E329505C(&v69);
        goto LABEL_21;
      }

      sub_1E329505C(&v69);
    }
  }

  else
  {
    sub_1E329505C(&v71);
  }

  v42 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v42, v4);
  v43 = sub_1E41FFC94();
  v44 = sub_1E42067F4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1E323F000, v43, v44, "MetricsJetEngine:: convertClickDataToImpressionsData is missing targetId and / or targetType in dict", v45, 2u);
    MEMORY[0x1E69143B0](v45, -1, -1);
  }

  (*(v6 + 8))(v10, v4);
  sub_1E4205CB4();
LABEL_14:
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3BEE318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  sub_1E4205C64();
  a5();

  v6 = sub_1E4205C44();

  return v6;
}

id MetricsJetEngine.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsJetEngine(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3BEE484(uint64_t a1)
{
  v1 = sub_1E42047B4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34CC0, &qword_1E42C2398);

  sub_1E4204794();
  return sub_1E4204CA4();
}

void sub_1E3BEE52C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E4204C14();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34CE0, qword_1E42C2410);
  v6 = sub_1E4207444();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return;
  }

  v31 = v1;
  v32 = v5;
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
  v35 = v3 + 32;
  v14 = v6 + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      sub_1E373CBF0(0, (v29 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v33 = *(v3 + 72);
    v34 = v19;
    v19(v36, v18, v37);
    sub_1E32A78B8(&qword_1EE23B6A0, MEMORY[0x1E69AB4A0], MEMORY[0x1E69AB4A8]);
    v20 = sub_1E4205DA4();
    v21 = -1 << *(v7 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v34(*(v7 + 48) + v24 * v33, v36, v37);
    ++*(v7 + 16);
    v5 = v32;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1E3BEE884(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E4204C34();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34CD0, &qword_1E42C2408);
  v6 = sub_1E4207444();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return;
  }

  v31 = v1;
  v32 = v5;
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
  v35 = v3 + 32;
  v14 = v6 + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      sub_1E373CBF0(0, (v29 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v33 = *(v3 + 72);
    v34 = v19;
    v19(v36, v18, v37);
    sub_1E32A78B8(&qword_1EE23B698, MEMORY[0x1E69AB4C0], MEMORY[0x1E69AB4C8]);
    v20 = sub_1E4205DA4();
    v21 = -1 << *(v7 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v34(*(v7 + 48) + v24 * v33, v36, v37);
    ++*(v7 + 16);
    v5 = v32;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1E3BEEBDC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6(0);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  v13 = *v0;
  v14 = sub_1E4207434();
  v15 = v14;
  if (*(v13 + 16))
  {
    v29 = v5;
    v16 = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || v16 >= v13 + 56 + 8 * v17)
    {
      memmove(v16, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v13 + 56);
    v23 = (v20 + 63) >> 6;
    v30 = v9 + 32;
    v31 = v9 + 16;
    while (v22)
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v27 = *(v9 + 72) * (v24 | (v19 << 6));
      (*(v9 + 16))(v12, *(v13 + 48) + v27, v7);
      (*(v9 + 32))(*(v15 + 48) + v27, v12, v7);
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {

        v5 = v29;
        goto LABEL_21;
      }

      v26 = *(v13 + 56 + 8 * v19);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v15;
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3BEEE08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v4 = sub_1E327D33C(25705, 0xE200000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = sub_1E328438C(*(a1 + 56) + 32 * v4, &v43);
  if ((OUTLINED_FUNCTION_0_173(v6, v7, v8, MEMORY[0x1E69E6158], v9, v10) & 1) == 0)
  {
    goto LABEL_13;
  }

  v11 = v41;
  v17 = sub_1E3277E60(0x6D614E7473726966, 0xE900000000000065, a1, &v43);
  if (!v44)
  {

LABEL_22:

    result = sub_1E329505C(&v43);
    goto LABEL_14;
  }

  if ((OUTLINED_FUNCTION_0_173(v12, v13, v14, MEMORY[0x1E69E6158], v15, v16, v17) & 1) == 0)
  {
    goto LABEL_25;
  }

  v19 = v41;
  v18 = v42;
  v25 = sub_1E3277E60(0x656D614E7473616CLL, 0xE800000000000000, a1, &v43);
  if (!v44)
  {
LABEL_21:

    goto LABEL_22;
  }

  if ((OUTLINED_FUNCTION_0_173(v20, v21, v22, MEMORY[0x1E69E6158], v23, v24, v25) & 1) == 0)
  {
    goto LABEL_24;
  }

  v27 = v41;
  v26 = v42;
  v33 = sub_1E3277E60(0x4E746E756F636361, 0xEB00000000656D61, a1, &v43);
  if (!v44)
  {

    goto LABEL_21;
  }

  if ((OUTLINED_FUNCTION_0_173(v28, v29, v30, MEMORY[0x1E69E6158], v31, v32, v33) & 1) == 0)
  {

LABEL_24:

LABEL_25:

LABEL_13:

LABEL_14:
    v11 = 0;
    v38 = 0;
    v19 = 0;
    v18 = 0;
    v27 = 0;
    v26 = 0;
    v35 = 0;
    v34 = 0;
    v39 = 0;
    v40 = 0;
    v36 = 0;
    goto LABEL_15;
  }

  v35 = v41;
  v34 = v42;
  sub_1E3277E60(0xD000000000000010, 0x80000001E4276210, a1, &v43);
  if (!v44)
  {
    sub_1E329505C(&v43);
    goto LABEL_27;
  }

  if (!swift_dynamicCast())
  {
LABEL_27:
    v36 = 0;
    goto LABEL_28;
  }

  v36 = v41;
LABEL_28:
  sub_1E3277E60(0x634164756F6C4369, 0xEF6449746E756F63, a1, &v43);

  if (v44)
  {
    result = swift_dynamicCast();
    v39 = v41;
    v40 = v42;
    if (!result)
    {
      v39 = 0;
      v40 = 0;
    }
  }

  else
  {
    result = sub_1E329505C(&v43);
    v39 = 0;
    v40 = 0;
  }

  v38 = v42;
LABEL_15:
  *a2 = v11;
  a2[1] = v38;
  a2[2] = v19;
  a2[3] = v18;
  a2[4] = v27;
  a2[5] = v26;
  a2[6] = v35;
  a2[7] = v34;
  a2[8] = v36;
  a2[9] = v39;
  a2[10] = v40;
  return result;
}

double sub_1E3BEF124()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

void sub_1E3BEF19C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 88))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t sub_1E3BEF238(double a1, double a2, double a3, double a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

void (*sub_1E3BEF2C8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_1E4200664();
  return sub_1E3844B40;
}

uint64_t sub_1E3BEF358()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180, &qword_1E42AB708);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3BEF3CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E188, &qword_1E42AB710);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180, &qword_1E42AB708);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_1E3BEF4F4(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E188, &qword_1E42AB710);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180, &qword_1E42AB708);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3BEF618;
}

void sub_1E3BEF618(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = OUTLINED_FUNCTION_34();
    v8(v7);
    sub_1E3BEF3CC(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1E3BEF3CC(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1E3BEF6C8()
{
  v1 = OBJC_IVAR____TtCV8VideosUI10EpicInline21EpicInlinePlatterInfo__vStackFrame;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180, &qword_1E42AB708);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E3BEF768()
{
  v0 = swift_allocObject();
  sub_1E3BEF7A0();
  return v0;
}

uint64_t sub_1E3BEF7A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180, &qword_1E42AB708);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v9 - v5;
  v7 = OBJC_IVAR____TtCV8VideosUI10EpicInline21EpicInlinePlatterInfo__vStackFrame;
  type metadata accessor for CGRect(0);
  memset(v9, 0, sizeof(v9));
  sub_1E4200634();
  (*(v3 + 32))(v0 + v7, v6, v1);
  return v0;
}

uint64_t sub_1E3BEF88C@<X0>(uint64_t *a2@<X8>)
{
  _s21EpicInlinePlatterInfoCMa(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

unint64_t sub_1E3BEF8EC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1E3BEF930(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v13 = *(_s17EpicInlinePlatterVMa(0) + 44);
  *(a5 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8, &qword_1E429C690);
  swift_storeEnumTagMultiPayload();
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 8) = a6;
  *(a5 + 16) = a7;
  type metadata accessor for LayoutGrid();
  *(a5 + 24) = sub_1E3A2579C(a6);
  *(a5 + 32) = a3;
  _s21EpicInlinePlatterInfoCMa(0);
  OUTLINED_FUNCTION_1_170();
  sub_1E3BEF8EC(v14);

  *(a5 + 40) = sub_1E42010C4();
  *(a5 + 48) = v15;
  type metadata accessor for BackgroundPlaybackModel(0);
  OUTLINED_FUNCTION_0_174();
  sub_1E3BEF8EC(v16);
  v17 = sub_1E42010C4();
  v19 = v18;

  *(a5 + 56) = v17;
  *(a5 + 64) = v19;
}

uint64_t sub_1E3BEFAC4@<X0>(uint64_t a1@<X8>)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34CF8, &qword_1E42C2530);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - v4;
  v6 = sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34D00, &qword_1E42C2538);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v30 - v18);
  if ((*(**(v1 + 64) + 360))(v17))
  {
    _s17EpicInlinePlatterVMa(0);
    sub_1E379EBAC(v14);
    (*(v8 + 104))(v11, *MEMORY[0x1E697DBA8], v6);
    v20 = sub_1E4200B34();
    v31 = a1;
    v21 = *(v8 + 8);
    v21(v11, v6);
    v21(v14, v6);
    *v19 = sub_1E4203DA4();
    v19[1] = v22;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34DB0, &qword_1E42C2590);
    sub_1E3BF1028(v20 & 1, v19 + *(v23 + 44));
    sub_1E3BEFEF0(__src);
    memcpy(v19 + *(v15 + 36), __src, 0x8BuLL);
    sub_1E37E93E8(v19, v5, &qword_1ECF34D00, &qword_1E42C2538);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34D08, &qword_1E42C2540);
    sub_1E3BF0BF0();
    OUTLINED_FUNCTION_3_141();
    sub_1E3BF15FC(v24);
    v25 = v31;
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();
    sub_1E325F6F0(v19, &qword_1ECF34D00, &qword_1E42C2538);
LABEL_8:
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34DA8, &qword_1E42C2588);
    return __swift_storeEnumTagSinglePayload(v25, 0, 1, v29);
  }

  if ((*v1 & 1) == 0)
  {
    sub_1E3BEFEF0(__src);
    memcpy(v5, __src, 0x8BuLL);
    OUTLINED_FUNCTION_34();
    swift_storeEnumTagMultiPayload();
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34D08, &qword_1E42C2540);
    sub_1E3BF0BF0();
    OUTLINED_FUNCTION_3_141();
    sub_1E3BF15FC(v28);
    sub_1E4201F44();
    goto LABEL_8;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34DA8, &qword_1E42C2588);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v26);
}

uint64_t sub_1E3BEFEF0@<X0>(void *a1@<X8>)
{
  v4 = v2;
  v6 = objc_opt_self();
  if (([v6 isMac] & 1) != 0 || (sub_1E3A2511C(*(v4 + 24))) && *(v4 + 1) == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFD0, &qword_1E42AB0C0);
    inited = swift_initStackObject();
    v130 = xmmword_1E4298AD0;
    *(inited + 16) = xmmword_1E4298AD0;
    sub_1E42036C4();
    OUTLINED_FUNCTION_11_99(v9);
    OUTLINED_FUNCTION_6_19();

    *(inited + 32) = v3;
    sub_1E42036C4();
    OUTLINED_FUNCTION_11_99(v10);
    OUTLINED_FUNCTION_6_19();

    *(inited + 40) = v3;
    sub_1E42036C4();
    sub_1E4203734();
    OUTLINED_FUNCTION_6_19();

    *(inited + 48) = v3;
    *(inited + 56) = sub_1E42036C4();
    OUTLINED_FUNCTION_7_138();
    result = (*(v11 + 360))();
    if ((result & 1) == 0)
    {
      v13 = *(v4 + 32);
      if (v13)
      {

        v14 = OUTLINED_FUNCTION_41_3(v7);
        *(inited + 32) = OUTLINED_FUNCTION_13_101(v14, v15, v16, v17, v18, v19, v20, v21, v119, v121, v122, v124, v125, v127, v128, *(&v128 + 1), v129, *(&v129 + 1), xmmword_1E4298AD0);
        *(inited + 40) = sub_1E4203734();
        result = sub_1E4203734();
        *(inited + 48) = result;
        *(inited + 56) = v13;
      }
    }

    v22 = *(inited + 16);
    if (!v22)
    {
      v23 = a1;
LABEL_42:

      v73 = *(v4 + 8);
      v72 = *(v4 + 16);
      if (v72 >= v73)
      {
        CGAffineTransformMakeScale(__dst, 1.0, v72 / v73);
        OUTLINED_FUNCTION_9_98();
        CGAffineTransformMakeTranslation(__dst, 0.0, -(v72 * (v72 / v73) - v72));
      }

      else
      {
        CGAffineTransformMakeScale(__dst, v73 / v72, 1.0);
        OUTLINED_FUNCTION_9_98();
        CGAffineTransformMakeTranslation(__dst, -(v73 * (v73 / v72) - v73), 0.0);
      }

      v126 = *(v1 + 320);
      v120 = *(v1 + 288);
      v123 = *(v1 + 304);
      a1 = v23;
      sub_1E4203F14();
      sub_1E4203C24();
      sub_1E4201144();
      *v1 = v131;
      *(v1 + 16) = v132;
      v135[4] = v133;
      *(v1 + 56) = v130;
      *(v1 + 40) = v129;
      *(v1 + 88) = v120;
      *(v1 + 72) = v128;
      *(v1 + 120) = v126;
      *(v1 + 104) = v123;
      LOBYTE(v135[17]) = 1;
      sub_1E3BF1774(v135);
LABEL_79:
      memcpy(v138, v135, 0x8AuLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34D68, &qword_1E42C2568);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34DA0, &qword_1E42C2580);
      sub_1E3BF0DEC();
      sub_1E3BF0F9C();
      OUTLINED_FUNCTION_82();
      sub_1E4201F44();
      memcpy(__src, v134, 0x8AuLL);
      sub_1E3BF176C(__src);
      memcpy(__dst, __src, 0x8BuLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34D58, &qword_1E42C2560);
      sub_1E3BF0D60();
      OUTLINED_FUNCTION_82();
LABEL_80:
      sub_1E4201F44();
      memcpy(__dst, v138, 0x8BuLL);
      nullsub_1();
      memcpy(v138, __dst, 0x8BuLL);
      return memcpy(a1, v138, 0x8BuLL);
    }

    if (v22 <= 4)
    {
      v23 = a1;
      v24 = inited + 32;
      v25 = MEMORY[0x1E69E7CC0];
      v26 = &qword_1F5D775E8;
      do
      {

        v27 = sub_1E4203C14();
        v29 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = OUTLINED_FUNCTION_27();
          v25 = sub_1E392FDC8(v32, v33, v34, v25);
        }

        v1 = *(v25 + 2);
        v30 = *(v25 + 3);
        if (v1 >= v30 >> 1)
        {
          v35 = OUTLINED_FUNCTION_35(v30);
          v25 = sub_1E392FDC8(v35, v1 + 1, 1, v25);
        }

        *(v25 + 2) = v1 + 1;
        v31 = &v25[16 * v1];
        *(v31 + 4) = v27;
        *(v31 + 5) = v29;
        ++v26;
        v24 += 8;
        --v22;
      }

      while (v22);
      goto LABEL_42;
    }

    goto LABEL_83;
  }

  if (![v6 isTV])
  {
    if (*(v4 + 1))
    {
      if ((sub_1E3A24FDC(*(v4 + 24)) & 1) == 0)
      {
        sub_1E3BF172C(v138);
        return memcpy(a1, v138, 0x8BuLL);
      }

      v64 = 1;
      goto LABEL_34;
    }

LABEL_33:
    v64 = 0;
LABEL_34:
    OUTLINED_FUNCTION_7_138();
    v66 = (*(v65 + 360))();
    v67 = v66;
    if (v64)
    {
      if ((v66 & 1) != 0 || (v68 = *(v4 + 32)) == 0)
      {
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFD0, &qword_1E42AB0C0);
        v70 = OUTLINED_FUNCTION_41_3(v74);
        *(v70 + 16) = xmmword_1E4298AD0;
        sub_1E42036C4();
        OUTLINED_FUNCTION_11_99(v75);
        OUTLINED_FUNCTION_6_19();

        *(v70 + 32) = v3;
        sub_1E42036C4();
        OUTLINED_FUNCTION_11_99(v76);
        OUTLINED_FUNCTION_6_19();

        *(v70 + 40) = v3;
        sub_1E42036C4();
        sub_1E4203734();
        OUTLINED_FUNCTION_6_19();

        *(v70 + 48) = v3;
        *(v70 + 56) = sub_1E42036C4();
      }

      else
      {
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFD0, &qword_1E42AB0C0);
        v70 = OUTLINED_FUNCTION_41_3(v69);
        *(v70 + 16) = xmmword_1E4298AD0;

        *(v70 + 32) = sub_1E4203734();
        *(v70 + 40) = sub_1E4203734();
        *(v70 + 48) = sub_1E4203734();
        *(v70 + 56) = v68;
      }

      v139.origin.x = (*(**(v4 + 48) + 88))();
      y = v139.origin.y;
      MaxY = CGRectGetMaxY(v139);
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38CC0, &qword_1E42A1AA0);
      result = OUTLINED_FUNCTION_41_3(v79);
      v80 = result;
      *(result + 16) = xmmword_1E4298AD0;
      *(result + 32) = 0;
      v81 = y + -20.0;
      if (v67)
      {
        v81 = y;
      }

      v82 = *(v4 + 16);
      *(result + 40) = v81 / v82;
      *(result + 48) = (y + 30.0) / v82;
      *(result + 56) = MaxY / v82;
      v83 = 4;
    }

    else
    {
      if ((v66 & 1) != 0 || (v71 = *(v4 + 32)) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFD0, &qword_1E42AB0C0);
        v70 = swift_allocObject();
        *(v70 + 16) = xmmword_1E4297BD0;
        sub_1E42036C4();
        v85 = OUTLINED_FUNCTION_11_99(v84);

        *(v70 + 32) = v85;
        sub_1E42036C4();
        v86 = sub_1E4203734();

        *(v70 + 40) = v86;
        *(v70 + 48) = sub_1E42036C4();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFD0, &qword_1E42AB0C0);
        v70 = swift_allocObject();
        *(v70 + 16) = xmmword_1E4297BD0;

        *(v70 + 32) = sub_1E4203734();
        *(v70 + 40) = sub_1E4203734();
        *(v70 + 48) = v71;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_1E42A73A0;
      v88 = *(v4 + 16);
      v89 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      *&v90 = v88 + -130.0;
      *(v87 + 32) = [v89 initWithFloat_];
      *(v87 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      *(v87 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v91 = objc_opt_self();
      sub_1E376948C();
      sub_1E42062A4();
      OUTLINED_FUNCTION_6_19();

      v92 = [v91 gradientLayerLocationsFromSpacings:&xmmword_1E4297000 height:v88];

      v93 = sub_1E42062B4();
      v94 = sub_1E32AE9B0(v93);
      if (v94)
      {
        v95 = v94;
        v138[0] = MEMORY[0x1E69E7CC0];
        result = sub_1E3887DC4(0, v94 & ~(v94 >> 63), 0);
        if (v95 < 0)
        {
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v96 = 0;
        v80 = v138[0];
        do
        {
          if ((v93 & 0xC000000000000001) != 0)
          {
            v97 = MEMORY[0x1E6911E60](v96, v93);
          }

          else
          {
            v97 = *(v93 + 8 * v96 + 32);
          }

          v98 = v97;
          [v97 floatValue];
          v100 = v99;

          v138[0] = v80;
          v102 = *(v80 + 16);
          v101 = *(v80 + 24);
          if (v102 >= v101 >> 1)
          {
            v103 = OUTLINED_FUNCTION_35(v101);
            sub_1E3887DC4(v103, v102 + 1, 1);
            v80 = v138[0];
          }

          ++v96;
          *(v80 + 16) = v102 + 1;
          *(v80 + 8 * v102 + 32) = v100;
        }

        while (v95 != v96);
      }

      else
      {

        v80 = MEMORY[0x1E69E7CC0];
      }

      v83 = *(v80 + 16);
      if (!v83)
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }

    v104 = 0;
    while (1)
    {
      if (v83 - 1 == v104)
      {
        v106 = *(v70 + 16);
        if (v106)
        {
          if (v106 > v83)
          {
            goto LABEL_85;
          }

          v107 = MEMORY[0x1E69E7CC0];
          v108 = 32;
          do
          {

            v109 = sub_1E4203C14();
            v111 = v110;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v115 = OUTLINED_FUNCTION_27();
              v107 = sub_1E392FDC8(v115, v116, v117, v107);
            }

            v113 = *(v107 + 2);
            v112 = *(v107 + 3);
            if (v113 >= v112 >> 1)
            {
              v118 = OUTLINED_FUNCTION_35(v112);
              v107 = sub_1E392FDC8(v118, v113 + 1, 1, v107);
            }

            *(v107 + 2) = v113 + 1;
            v114 = &v107[16 * v113];
            *(v114 + 4) = v109;
            *(v114 + 5) = v111;
            v108 += 8;
            --v106;
          }

          while (v106);
        }

LABEL_77:

        sub_1E4203C24();
        sub_1E4201064();
        __src[0] = v138[0];
        *&__src[1] = *&v138[1];
        *&__src[3] = *&v138[3];
        LOBYTE(__src[5]) = 1;
        sub_1E3BF1720(__src);
        memcpy(__dst, __src, 0x8BuLL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34D58, &qword_1E42C2560);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34DA0, &qword_1E42C2580);
        sub_1E3BF0D60();
        sub_1E3BF0F9C();
        OUTLINED_FUNCTION_82();
        goto LABEL_80;
      }

      if (v104 + 1 >= v83)
      {
        break;
      }

      v105 = v80 + 8 * v104++;
      if (*(v105 + 32) > *(v105 + 40))
      {
        goto LABEL_77;
      }
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (!*(v4 + 1))
  {
    goto LABEL_33;
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFD0, &qword_1E42AB0C0);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_1E4298AD0;
  sub_1E42036C4();
  OUTLINED_FUNCTION_11_99(v38);
  OUTLINED_FUNCTION_6_19();

  *(v37 + 32) = v3;
  sub_1E42036C4();
  OUTLINED_FUNCTION_11_99(v39);
  OUTLINED_FUNCTION_6_19();

  *(v37 + 40) = v3;
  sub_1E42036C4();
  sub_1E4203734();
  OUTLINED_FUNCTION_6_19();

  *(v37 + 48) = v3;
  *(v37 + 56) = sub_1E42036C4();
  OUTLINED_FUNCTION_7_138();
  result = (*(v40 + 360))();
  if ((result & 1) == 0)
  {
    v41 = *(v4 + 32);
    if (v41)
    {

      v42 = OUTLINED_FUNCTION_41_3(v36);
      *(v37 + 32) = OUTLINED_FUNCTION_13_101(v42, v43, v44, v45, v46, v47, v48, v49, v119, v121, v122, v124, v125, v127, v128, *(&v128 + 1), v129, *(&v129 + 1), xmmword_1E4298AD0);
      *(v37 + 40) = sub_1E4203734();
      result = sub_1E4203734();
      *(v37 + 48) = result;
      *(v37 + 56) = v41;
    }
  }

  v50 = *(v37 + 16);
  if (!v50)
  {
    goto LABEL_78;
  }

  if (v50 <= 4)
  {
    v51 = v37 + 32;
    v52 = MEMORY[0x1E69E7CC0];
    v53 = &qword_1F5D77628;
    do
    {

      v54 = sub_1E4203C14();
      v56 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = OUTLINED_FUNCTION_27();
        v52 = sub_1E392FDC8(v60, v61, v62, v52);
      }

      v58 = *(v52 + 2);
      v57 = *(v52 + 3);
      if (v58 >= v57 >> 1)
      {
        v63 = OUTLINED_FUNCTION_35(v57);
        v52 = sub_1E392FDC8(v63, v58 + 1, 1, v52);
      }

      *(v52 + 2) = v58 + 1;
      v59 = &v52[16 * v58];
      *(v59 + 4) = v54;
      *(v59 + 5) = v56;
      ++v53;
      v51 += 8;
      --v50;
    }

    while (v50);
LABEL_78:

    sub_1E4203C24();
    sub_1E4201064();
    v135[0] = *&__dst[0].a;
    *&v135[1] = *&__dst[0].b;
    *&v135[3] = *&__dst[0].d;
    LOBYTE(v135[5]) = 1;
    sub_1E3BF1760(v135);
    goto LABEL_79;
  }

LABEL_87:
  __break(1u);
  return result;
}

unint64_t sub_1E3BF0BF0()
{
  result = qword_1ECF34D10;
  if (!qword_1ECF34D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34D00, &qword_1E42C2538);
    sub_1E381F390(&unk_1ECF34D18);
    sub_1E381F390(&unk_1ECF34D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34D10);
  }

  return result;
}

unint64_t sub_1E3BF0CD4()
{
  result = qword_1ECF34D40;
  if (!qword_1ECF34D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34D48, &qword_1E42C2558);
    sub_1E3BF0D60();
    sub_1E3BF0F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34D40);
  }

  return result;
}

unint64_t sub_1E3BF0D60()
{
  result = qword_1ECF34D50;
  if (!qword_1ECF34D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34D58, &qword_1E42C2560);
    sub_1E3BF0DEC();
    sub_1E3BF0F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34D50);
  }

  return result;
}

unint64_t sub_1E3BF0DEC()
{
  result = qword_1ECF34D60;
  if (!qword_1ECF34D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34D68, &qword_1E42C2568);
    v3 = sub_1E3BF0ED4(&unk_1ECF34D70);
    sub_1E3BF0F48(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34D60);
  }

  return result;
}

unint64_t sub_1E3BF0ED4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_31_13(0, v4, v5);
    v2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3BF0F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF34D90;
  if (!qword_1ECF34D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34D90);
  }

  return result;
}

unint64_t sub_1E3BF0F9C()
{
  result = qword_1ECF34D98;
  if (!qword_1ECF34D98)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34DA0, &qword_1E42C2580);
    v6 = sub_1E3BCF590(v1, v2, v3);
    sub_1E3BF0F48(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34D98);
  }

  return result;
}

double sub_1E3BF1028@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34DE8, &unk_1E42C2670);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v22 - v9);
  if (a1)
  {
    sub_1E42036C4();
    v11 = sub_1E4203734();

    v22 = v11;
    v23 = 0;
  }

  else
  {
    sub_1E4203704();
    v12 = sub_1E4203734();

    v22 = v12;
    v23 = 1;
  }

  sub_1E4201F44();
  v13 = v24;
  v14 = v25;

  v15 = sub_1E42036E4();
  v16 = v10 + *(v4 + 36);
  sub_1E4203D24();
  v17 = sub_1E4202734();
  v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F658, &qword_1E42B5AC0) + 36)] = v17;
  *v10 = v15;
  sub_1E37E93E8(v10, v7, &qword_1ECF34DE8, &unk_1E42C2670);
  *a2 = v13;
  *(a2 + 8) = v14;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34DF0, &unk_1E42C2680);
  sub_1E37E93E8(v7, a2 + *(v18 + 48), &qword_1ECF34DE8, &unk_1E42C2670);
  v19 = OUTLINED_FUNCTION_34();
  sub_1E325F6F0(v19, v20, &unk_1E42C2670);
  sub_1E325F6F0(v7, &qword_1ECF34DE8, &unk_1E42C2670);

  return result;
}

void sub_1E3BF1250(uint64_t a1)
{
  sub_1E3BF1598(319, &qword_1EE289F20, type metadata accessor for CGRect, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3BF1338(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_1E3BF177C(319, &qword_1ECF34DB8, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1E3BF1470(319);
      if (v3 <= 0x3F)
      {
        sub_1E3BF1504(319);
        if (v4 <= 0x3F)
        {
          sub_1E3BF1598(319, &qword_1EE289EC0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E3BF1470(uint64_t a1)
{
  if (!qword_1ECF34DC0)
  {
    _s21EpicInlinePlatterInfoCMa(255);
    sub_1E3BEF8EC(&unk_1ECF34CE8);
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF34DC0);
    }
  }
}

void sub_1E3BF1504(uint64_t a1)
{
  if (!qword_1ECF34DC8)
  {
    type metadata accessor for BackgroundPlaybackModel(255);
    sub_1E3BEF8EC(&qword_1ECF34CF0);
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF34DC8);
    }
  }
}

void sub_1E3BF1598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1E3BF15FC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_31_13(0, v4, v5);
    v2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3BF1668()
{
  result = qword_1ECF34DE0;
  if (!qword_1ECF34DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34DA8, &qword_1E42C2588);
    sub_1E3BF0BF0();
    sub_1E3BF15FC(&unk_1ECF34D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34DE0);
  }

  return result;
}

void sub_1E3BF172C(uint64_t a1)
{
  bzero(a1, 0x88uLL);
  *(a1 + 138) = -1;
  *(a1 + 136) = 0;
}

void sub_1E3BF177C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1E3BF1800(uint64_t a1)
{
  v1[13] = 0;
  v1[14] = 0;
  v1[15] = 0;
  v2 = sub_1E3C2F9A0();

  sub_1E3BF1840();

  return v2;
}

double sub_1E3BF1840()
{
  sub_1E3BF194C();
  sub_1E3BF1E04();
  v1 = sub_1E3BF1C2C();
  v2 = (*(*v0 + 1712))(v1);
  sub_1E3C37CBC(v2, 23);

  v4 = (*(*v0 + 1736))(v3);
  sub_1E3C37CBC(v4, 17);

  v6 = (*(*v0 + 1760))(v5);
  sub_1E3C37CBC(v6, 39);

  return result;
}

double sub_1E3BF194C()
{
  OUTLINED_FUNCTION_2_138();
  v0 += 214;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_30();
  (*(v2 + 2056))(1, 0);

  (v1)(v3);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 2080))(0, 0);

  (v1)(v5);
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 2104))(0, 0);

  (v1)(v7);
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 2176))(4, 0);

  (v1)(v9);
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 1984))(5);

  (v1)(v11);
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 1696))(19);

  (v1)(v13);
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 1792))(10);

  v16 = (v1)(v15);
  v17 = *sub_1E3E5FD88();
  v18 = *(*v16 + 680);
  v19 = v17;
  v18(v17);

  return result;
}

double sub_1E3BF1C2C()
{
  OUTLINED_FUNCTION_2_138();
  v0 += 220;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 1712))(1);

  (v1)(v3);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 1808))(1);

  (v1)(v5);
  OUTLINED_FUNCTION_30();
  (*(v6 + 208))(0x403C000000000000, 0);

  (v1)(v7);
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 312))(0x403C000000000000, 0);

  v10 = (v1)(v9);
  memset(v12, 0, 24);
  v12[3] = 0x4010000000000000;
  v13 = 0;
  (*(*v10 + 184))(v12);

  return result;
}

double sub_1E3BF1E04()
{
  OUTLINED_FUNCTION_2_138();
  v0 += 217;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_30();
  (*(v2 + 1696))(19);

  v4 = (v1)(v3);
  v5 = *sub_1E3E5FD88();
  v6 = *(*v4 + 680);
  v7 = v5;
  v6(v5);

  return result;
}

double sub_1E3BF1F18(uint64_t a1)
{
  OUTLINED_FUNCTION_0_12(a1);

  return result;
}

uint64_t sub_1E3BF1F50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_children;
  OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = a1;
}

void sub_1E3BF201C(void *a1)
{
  OUTLINED_FUNCTION_37(a1);
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1E3BF2108(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_manager);
  OUTLINED_FUNCTION_3_0(v5, v7);
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1E3BF21AC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_canBeSelected;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3BF21E0(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_canBeSelected;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E3BF226C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_collapsable;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3BF22A0(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_collapsable;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E3BF232C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_editable;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3BF2360(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_editable;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E3BF23EC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_showHeader;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3BF2420(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_showHeader;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E3BF24AC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_hasDivider;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3BF24E0(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_hasDivider;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E3BF2634(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_showsImageInFavorites;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3BF2668(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_showsImageInFavorites;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E3BF2764(uint64_t *a1)
{
  OUTLINED_FUNCTION_29_0(a1);
  v2 = *v1;

  return v2;
}

uint64_t sub_1E3BF27B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  OUTLINED_FUNCTION_3_0(v6, v8);
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1E3BF2850(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_isPinnedInFavorites;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3BF2884(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_isPinnedInFavorites;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E3BF2910(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_isShownInFavoritesByDefault;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3BF2944(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_isShownInFavoritesByDefault;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E3BF29D0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_isEditableInFavorites;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3BF2A04(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_isEditableInFavorites;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

void sub_1E3BF2B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_unknownObjectWeakInit();
  v12 = (v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_defaultChildSelectionIdentifier);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_manager);
  *v13 = 0;
  v13[1] = 0;
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_imageViewModel) = 0;
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_secondaryImageViewModel) = 0;
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_favoritesImageViewModel) = 0;
  v14 = (v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_favoritesTitle);
  *v14 = 0;
  v14[1] = 0;
  v253 = sub_1E4205F14();
  v254 = v15;
  v16 = OUTLINED_FUNCTION_12_90(v253, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_6_120(v16, v17, v18, v19, v20, v21, v22, v23, a1, a2, a3, v223, v234, v245, v246, v247, v248, v249, v250, v251);
  v24 = sub_1E375D84C(v252);
  if (v255)
  {
    if (OUTLINED_FUNCTION_4_144(v24, v25, v26, MEMORY[0x1E69E6370], v27, v28, v29, v30, v191, v202, v213, v224, v235))
    {
      v31 = v249;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E329505C(&v253);
  }

  v31 = 0;
LABEL_6:
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_collapsable) = v31;
  v253 = sub_1E4205F14();
  v254 = v32;
  v33 = OUTLINED_FUNCTION_12_90(v253, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_6_120(v33, v34, v35, v36, v37, v38, v39, v40, v191, v202, v213, v224, v235, v245, v246, v247, v248, v249, v250, v251);
  v41 = sub_1E375D84C(v252);
  if (v255)
  {
    if (OUTLINED_FUNCTION_4_144(v41, v42, v43, MEMORY[0x1E69E6370], v44, v45, v46, v47, v192, v203, v214, v225, v236))
    {
      v48 = v249;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1E329505C(&v253);
  }

  v48 = 0;
LABEL_11:
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_editable) = v48;
  v253 = sub_1E4205F14();
  v254 = v49;
  v50 = OUTLINED_FUNCTION_12_90(v253, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_6_120(v50, v51, v52, v53, v54, v55, v56, v57, v192, v203, v214, v225, v236, v245, v246, v247, v248, v249, v250, v251);
  v58 = sub_1E375D84C(v252);
  if (v255)
  {
    if (OUTLINED_FUNCTION_4_144(v58, v59, v60, MEMORY[0x1E69E6370], v61, v62, v63, v64, v193, v204, v215, v226, v237))
    {
      v65 = v249;
      goto LABEL_16;
    }
  }

  else
  {
    sub_1E329505C(&v253);
  }

  v65 = 0;
LABEL_16:
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_showHeader) = v65;
  v253 = sub_1E4205F14();
  v254 = v66;
  v67 = OUTLINED_FUNCTION_12_90(v253, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_6_120(v67, v68, v69, v70, v71, v72, v73, v74, v193, v204, v215, v226, v237, v245, v246, v247, v248, v249, v250, v251);
  v75 = sub_1E375D84C(v252);
  v227 = a4;
  v238 = a5;
  if (v255)
  {
    if (OUTLINED_FUNCTION_4_144(v75, v76, v77, MEMORY[0x1E69E6370], v78, v79, v80, v81, v194, v205, v216, a4, a5))
    {
      v82 = v249;
      goto LABEL_21;
    }
  }

  else
  {
    sub_1E329505C(&v253);
  }

  v82 = 0;
LABEL_21:
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_hasDivider) = v82;
  v253 = sub_1E4205F14();
  v254 = v83;
  v84 = OUTLINED_FUNCTION_12_90(v253, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_6_120(v84, v85, v86, v87, v88, v89, v90, v91, v194, v205, v216, v227, v238, v245, v246, v247, v248, v249, v250, v251);
  v92 = sub_1E375D84C(v252);
  if (v255)
  {
    if (OUTLINED_FUNCTION_4_144(v92, v93, v94, MEMORY[0x1E69E6370], v95, v96, v97, v98, v195, v206, v217, v228, v239))
    {
      v99 = v249;
      goto LABEL_26;
    }
  }

  else
  {
    sub_1E329505C(&v253);
  }

  v99 = 0;
LABEL_26:
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_canBeSelected) = v99;
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_children) = a9;
  v253 = sub_1E4205F14();
  v254 = v100;
  v101 = OUTLINED_FUNCTION_12_90(v253, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_6_120(v101, v102, v103, v104, v105, v106, v107, v108, v195, v206, v217, v228, v239, v245, v246, v247, v248, v249, v250, v251);
  v109 = sub_1E375D84C(v252);
  if (v255)
  {
    v116 = OUTLINED_FUNCTION_4_144(v109, v110, v111, MEMORY[0x1E69E6158], v112, v113, v114, v115, v196, v207, v218, v229, v240);
    if (v116)
    {
      v117 = v249;
    }

    else
    {
      v117 = 0;
    }

    if (v116)
    {
      v118 = v250;
    }

    else
    {
      v118 = 0;
    }
  }

  else
  {
    sub_1E329505C(&v253);
    v117 = 0;
    v118 = 0;
  }

  OUTLINED_FUNCTION_3_0(v12, &v249);
  *v12 = v117;
  v12[1] = v118;

  v253 = sub_1E4205F14();
  v254 = v119;
  v120 = OUTLINED_FUNCTION_12_90(v253, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_6_120(v120, v121, v122, v123, v124, v125, v126, v127, v196, v207, v218, v229, v240, v245, v246, v247, v248, v249, v250, v251);
  sub_1E375D84C(v252);
  if (v255)
  {
    if (OUTLINED_FUNCTION_7_139(&v246, v128, v129, MEMORY[0x1E69E6370]))
    {
      v130 = v246;
      goto LABEL_39;
    }
  }

  else
  {
    sub_1E329505C(&v253);
  }

  v130 = 0;
LABEL_39:
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_showsImageInFavorites) = v130;
  v253 = sub_1E4205F14();
  v254 = v131;
  v132 = OUTLINED_FUNCTION_12_90(v253, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_6_120(v132, v133, v134, v135, v136, v137, v138, v139, v197, v208, v219, v230, v241, v245, v246, v247, v248, v249, v250, v251);
  sub_1E375D84C(v252);
  if (v255)
  {
    v142 = OUTLINED_FUNCTION_7_139(&v246, v140, v141, MEMORY[0x1E69E6158]);
    if (v142)
    {
      v143 = v246;
    }

    else
    {
      v143 = 0;
    }

    if (v142)
    {
      v144 = v247;
    }

    else
    {
      v144 = 0;
    }
  }

  else
  {
    sub_1E329505C(&v253);
    v143 = 0;
    v144 = 0;
  }

  OUTLINED_FUNCTION_3_0(v14, &v246);
  *v14 = v143;
  v14[1] = v144;

  v253 = sub_1E4205F14();
  v254 = v145;
  v146 = OUTLINED_FUNCTION_12_90(v253, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_6_120(v146, v147, v148, v149, v150, v151, v152, v153, v198, v209, v220, v231, v242, v245, v246, v247, v248, v249, v250, v251);
  sub_1E375D84C(v252);
  if (v255)
  {
    if (OUTLINED_FUNCTION_7_139(&v245 + 7, v154, v155, MEMORY[0x1E69E6370]))
    {
      v156 = HIBYTE(v245);
    }

    else
    {
      v156 = 0;
    }
  }

  else
  {
    sub_1E329505C(&v253);
    v156 = 0;
  }

  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_isPinnedInFavorites) = v156;
  v253 = sub_1E4205F14();
  v254 = v157;
  v158 = OUTLINED_FUNCTION_12_90(v253, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_6_120(v158, v159, v160, v161, v162, v163, v164, v165, v199, v210, v221, v232, v243, v245, v246, v247, v248, v249, v250, v251);
  sub_1E375D84C(v252);
  if (v255)
  {
    if (OUTLINED_FUNCTION_7_139(&v245 + 7, v166, v167, MEMORY[0x1E69E6370]))
    {
      v168 = HIBYTE(v245);
      goto LABEL_57;
    }
  }

  else
  {
    sub_1E329505C(&v253);
  }

  v168 = 0;
LABEL_57:
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_isShownInFavoritesByDefault) = v168;
  v253 = sub_1E4205F14();
  v254 = v169;
  v170 = OUTLINED_FUNCTION_12_90(v253, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_6_120(v170, v171, v172, v173, v174, v175, v176, v177, v200, v211, v222, v233, v244, v245, v246, v247, v248, v249, v250, v251);
  sub_1E375D84C(v252);
  if (!v255)
  {
    sub_1E329505C(&v253);
    goto LABEL_61;
  }

  if (!OUTLINED_FUNCTION_7_139(&v245 + 7, v178, v179, MEMORY[0x1E69E6370]))
  {
LABEL_61:
    v180 = 1;
    goto LABEL_62;
  }

  v180 = HIBYTE(v245);
LABEL_62:
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_isEditableInFavorites) = v180;
  sub_1E3D48EDC();
  v182 = v181;
  v183 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_children;
  swift_beginAccess();
  v184 = *&v182[v183];
  v185 = sub_1E32AE9B0(v184);
  v186 = v182;

  for (i = 0; ; ++i)
  {
    if (v185 == i)
    {

      return;
    }

    if ((v184 & 0xC000000000000001) != 0)
    {
      v188 = MEMORY[0x1E6911E60](i, v184);
    }

    else
    {
      if (i >= *((v184 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_72;
      }

      v188 = *(v184 + 8 * i + 32);
    }

    v189 = v188;
    if (__OFADD__(i, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_3_0(v188 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_parent, &v253);
    swift_unknownObjectWeakAssign();
  }

  __break(1u);
LABEL_72:
  __break(1u);
}

uint64_t sub_1E3BF3200(uint64_t a1)
{
  sub_1E3294F34(a1, v12);
  if (!v13)
  {
    sub_1E329505C(v12);
    goto LABEL_7;
  }

  v2 = type metadata accessor for RemoteSidebarItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v8 = 0;
    return v8 & 1;
  }

  v3 = v11;
  v10.receiver = v1;
  v10.super_class = v2;
  if (!objc_msgSendSuper2(&v10, sel_isEqual_, v11))
  {

    goto LABEL_7;
  }

  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v6 = (*(v5 + 392))();
  v7 = (*((*v4 & *v3) + 0x188))();
  v8 = sub_1E3BF334C(v6, v7);

  return v8 & 1;
}

uint64_t sub_1E3BF334C(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v18 = 0;
      return v18 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v7 = a1;
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
LABEL_31:
      v18 = 1;
      return v18 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = type metadata accessor for RemoteSidebarItem();
    v11 = 4;
    while (1)
    {
      v12 = v11 - 4;
      v13 = v11 - 3;
      if (__OFADD__(v11 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1E6911E60](v11 - 4, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v14 = *(a1 + 8 * v11);
      }

      v15 = v14;
      if ((a2 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1E6911E60](v11 - 4, a2);
      }

      else
      {
        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v16 = *(a2 + 8 * v11);
      }

      v17 = v16;
      v18 = sub_1E4206F64();

      if (v18)
      {
        ++v11;
        if (v13 != i)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

void sub_1E3BF3578(unint64_t a1)
{
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 408))(v5);
  v4 = sub_1E37EF010(a1);
  v3(v5, 0);
  OUTLINED_FUNCTION_3_0(v4 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_parent, v5);
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1E3BF3634(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21();
  v5 = (*(v4 + 408))(v9);
  sub_1E37EFABC(a2, *v6);
  v7 = a1;
  sub_1E3BF3FBC(a2, a2, v7);
  v5(v9, 0);
  OUTLINED_FUNCTION_3_0(&v7[OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_parent], v9);
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E3BF3744()
{

  MEMORY[0x1E69144A0](v0 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_parent);

  swift_unknownObjectRelease();
}

id sub_1E3BF37EC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RemoteSidebarItem();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E3BF38D4()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 392))();
}

uint64_t sub_1E3BF3928@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  result = (*(v2 + 416))();
  *a1 = result;
  return result;
}

uint64_t sub_1E3BF3984()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 440))();
}

uint64_t sub_1E3BF39D8()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 464))();
}

uint64_t sub_1E3BF3A2C()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 488))() & 1;
}

uint64_t sub_1E3BF3A84()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 512))();
}

uint64_t sub_1E3BF3ADC()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 520))() & 1;
}

uint64_t sub_1E3BF3B34()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 544))() & 1;
}

uint64_t sub_1E3BF3B8C()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 568))() & 1;
}

uint64_t sub_1E3BF3BE4()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 592))() & 1;
}

uint64_t sub_1E3BF3C3C()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 616))();
}

uint64_t sub_1E3BF3C90()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 640))();
}

uint64_t sub_1E3BF3CE4()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 664))() & 1;
}

uint64_t sub_1E3BF3D3C()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 688))();
}

uint64_t sub_1E3BF3D90()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 712))();
}

uint64_t sub_1E3BF3DE4()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 736))() & 1;
}

uint64_t sub_1E3BF3E3C()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 760))() & 1;
}

uint64_t sub_1E3BF3E94()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 784))() & 1;
}

uint64_t sub_1E3BF3EEC()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 816))();
}

uint64_t sub_1E3BF3F40()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 824))();
}

void sub_1E3BF3FBC(uint64_t result, uint64_t a2, char *a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *v3;
  if (sub_1E32AE9B0(*v3) < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = 1 - v8;
  if (__OFSUB__(1, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1E32AE9B0(v7);
  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1E3797CDC(v12, 1);

  sub_1E3BF4078(result, a2, 1, a3);
}

void sub_1E3BF4078(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a3;
  v6 = a2;
  v19 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  type metadata accessor for RemoteSidebarItem();
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_25:
  v13 = sub_1E4207384();
LABEL_6:
  v14 = &v13[-v6];
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = &v5[v4];
  v16 = (v8 + 8 * v6);
  if (v15 != v16 || &v16[8 * v14] <= v15)
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    v13 = sub_1E4207384();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_27;
  }

  *(v7 + 16) = &v13[v10];
LABEL_17:
  v13 = v19;
  if (v4 >= 1)
  {
    *v5 = v19;
    if (v4 == 1)
    {
      return;
    }

LABEL_28:
    v18 = v13;
    __break(1u);
    return;
  }
}

double sub_1E3BF41B8()
{
  v1 = v0;
  v2 = sub_1E39DF25C();
  if (sub_1E39DFA50(v2, 0, v3))
  {
    OUTLINED_FUNCTION_2_139();

    sub_1E4148884(v4);
  }

  else
  {
    OUTLINED_FUNCTION_2_139();

    sub_1E3D54258(v5);
  }

  swift_beginAccess();
  v6 = *(v0 + 280);

  v7 = *sub_1E3E5FDEC();
  v8 = *(*v6 + 680);
  v9 = v7;
  v8(v7);

  v10 = *(v1 + 280);
  LOBYTE(v35) = 11;

  v11 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_0_175(v11, v12, v13, v14, v15, v16, v17, v18, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, 0, 2, 0, 2);
  v19 = OUTLINED_FUNCTION_1_171();
  (*(*v10 + 1600))(&v35, 23, v19 & 1, &unk_1F5D999E0);

  v20 = *(v1 + 280);
  LOBYTE(v35) = 4;
  v48 = 1;
  v47 = 1;
  v46 = 1;
  v45 = 1;

  v21 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_0_175(v21, v22, v23, v24, v25, v26, v27, v28, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v29 = OUTLINED_FUNCTION_1_171();
  (*(*v20 + 1600))(&v35, 22, v29 & 1, &unk_1F5D99950);

  swift_beginAccess();
  v30 = *(v1 + 288);

  v38 = sub_1E3952C40();
  v39 = v31;
  v40 = v32;
  v41 = v33;
  LOBYTE(v42) = 0;
  (*(*v30 + 184))(&v38);

  return result;
}

void *sub_1E3BF4440(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = v4;
  return result;
}

uint64_t sub_1E3BF4480@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECF714F0;
  return result;
}

void sub_1E3BF44D8()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v2 = sub_1E3741090(1163022157, 0xE400000000000000, v0);
    v4 = v3;

    if (v4)
    {
      sub_1E32822E0(v5, v6, v7);
      v2 = sub_1E42071D4();
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    qword_1ECF714F8 = v2;
    qword_1ECF71500 = v9;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3BF45B8()
{
  type metadata accessor for FocusableText(0);
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  sub_1E32752B0(&qword_1EE28A190, &qword_1ECF2D3C0, &unk_1E42A9690, MEMORY[0x1E695BF88]);
  return sub_1E42006B4();
}

uint64_t type metadata accessor for FocusableText(uint64_t a1)
{
  result = qword_1EE2A6D50;
  if (!qword_1EE2A6D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1E3BF4698()
{
  v0 = sub_1E4202A14();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = (v5 - v4);
  v7 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = (v12 - v11);
  v14 = type metadata accessor for FocusableText(0);
  sub_1E3746E10(v13);
  sub_1E3E3B878();
  v16 = v15;
  (*(v9 + 8))(v13, v7);
  if (!v16)
  {
    sub_1E4202854();
  }

  sub_1E3BF6EB8(v6);
  v17 = sub_1E42027B4();

  (*(v2 + 8))(v6, v0);
  CTFontGetAscent(v17);
  CTFontGetDescent(v17);
  VUIRoundValue();
  OUTLINED_FUNCTION_4_145(*(v14 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
  sub_1E42038F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34F38, &qword_1E42C2968);
  sub_1E42038F4();
  v18 = 0.0;
  if (*&v20 != 1)
  {
    OUTLINED_FUNCTION_4_145(*(v14 + 44));
    sub_1E42038F4();
    v18 = v20 - (v20 + v20);
  }

  OUTLINED_FUNCTION_4_145(*(v14 + 44));
  sub_1E42038F4();

  return v18;
}

double sub_1E3BF4978@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  v12 = type metadata accessor for FocusableText(0);
  v13 = v12[8];
  *(a6 + v13) = swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  OUTLINED_FUNCTION_19_77(v14);
  v15 = v12[9];
  *(a6 + v15) = swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  OUTLINED_FUNCTION_19_77(v16);
  v17 = v12[10];
  *(a6 + v17) = swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34E80, qword_1E42C27A0);
  OUTLINED_FUNCTION_19_77(v18);
  type metadata accessor for CGSize(0);
  v27 = OUTLINED_FUNCTION_12_91(v19, v20, v21, v22, v23, v24, v25, v26, v93, v99);
  OUTLINED_FUNCTION_9_99(v27, v28, v29, v30, v31, v32, v33, v34, v35, v94, v100, v36, v105);
  v45 = OUTLINED_FUNCTION_12_91(v37, v38, v39, v40, v41, v42, v43, v44, v95, v101);
  OUTLINED_FUNCTION_9_99(v45, v46, v47, v48, v49, v50, v51, v52, v53, v96, v102, v54, v105);
  v55 = a6 + v12[13];
  LOBYTE(v97) = 0;
  v56 = sub_1E42038E4();
  *v55 = v105;
  *(v55 + 1) = *(&v105 + 1);
  v64 = OUTLINED_FUNCTION_12_91(v56, v57, v58, v59, v60, v61, v62, v63, v97, v103);
  OUTLINED_FUNCTION_9_99(v64, v65, v66, v67, v68, v69, v70, v71, v72, v98, v104, v73, v105);
  v74 = v12[15];
  type metadata accessor for NSWritingDirection();
  sub_1E42038E4();
  *(a6 + v74) = v105;
  v75 = v12[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0, &unk_1E42A9690);
  swift_allocObject();
  *(a6 + v75) = sub_1E4200544();
  *a6 = a1;
  v76 = a6 + v12[16];
  *v76 = a3;
  *(v76 + 1) = a4;
  v76[16] = a5;
  if (!a2)
  {

    v80 = sub_1E3C27528(v78, v79);

    if (v80)
    {
      type metadata accessor for TextLayout();
      v77 = swift_dynamicCastClass();
      if (v77)
      {
        goto LABEL_7;
      }
    }

    type metadata accessor for TextLayout();
    v77 = sub_1E383BCC0();
    goto LABEL_7;
  }

  v77 = a2;
LABEL_7:
  a6[1] = v77;
  type metadata accessor for TextLayout();

  v81 = sub_1E383BCC0();
  a6[2] = v81;
  v82 = *(*v81 + 1648);

  v82(v77);
  OUTLINED_FUNCTION_36();
  (*(v83 + 2056))(0, 1);
  OUTLINED_FUNCTION_36();
  (*(v84 + 2104))(0, 1);
  OUTLINED_FUNCTION_36();
  (*(v85 + 2080))(0, 1);

  v86 = sub_1E383BCC0();
  a6[3] = v86;
  v87 = *(*v86 + 1648);

  v87(v77);

  OUTLINED_FUNCTION_36();
  (*(v88 + 1696))(14);
  OUTLINED_FUNCTION_36();
  (*(v89 + 1792))(6);
  v90 = [objc_opt_self() secondaryLabelColor];
  OUTLINED_FUNCTION_36();
  (*(v91 + 680))();

  return result;
}

uint64_t sub_1E3BF4DFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v135 = a1;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34ED8, &qword_1E42C2920);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v134 = v4;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34EA8, &qword_1E42C28B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v120 = v6;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34EA0, &qword_1E42C28B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v119 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v118 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34EE0, &qword_1E42C2928);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v131 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34EE8, &qword_1E42C2930);
  OUTLINED_FUNCTION_0_10();
  v127 = v15;
  v128 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v124 = v17;
  v18 = OUTLINED_FUNCTION_138();
  v137 = type metadata accessor for FocusableText(v18);
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v123 = v22;
  v24 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34EF0, &qword_1E42C2938);
  OUTLINED_FUNCTION_0_10();
  v125 = v26;
  v126 = v25;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v136 = v28;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34EB0, &qword_1E42C28C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  v139 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34E98, &qword_1E42C28A8);
  v32 = OUTLINED_FUNCTION_17_2(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_5();
  v129 = v33;
  MEMORY[0x1EEE9AC00](v34);
  v130 = &v118 - v35;
  v37 = *v1;
  v36 = v1[1];

  v38 = OUTLINED_FUNCTION_18();

  sub_1E3FAC790(v39, v36, v38, v150);
  sub_1E3BF7138(v1, v24);
  v40 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v41 = swift_allocObject();
  v42 = sub_1E3BF719C(v24, v41 + v40);
  sub_1E3BD9530(v42, v43, v44);
  v45 = OUTLINED_FUNCTION_51_1();
  sub_1E40AB6EC(v45 & 1);

  v156 = v150[0];
  v157[0] = v150[1];
  *(v157 + 9) = *(&v150[1] + 9);
  sub_1E38E12E4(&v156);
  v46 = v1[2];

  v47 = OUTLINED_FUNCTION_18();
  sub_1E3FAC790(v37, v46, v47, v155);
  sub_1E4203DA4();
  sub_1E42015C4();
  memcpy(v150, v155, 0xA0uLL);
  LOWORD(v150[10]) = 256;
  sub_1E3BF7138(v2, v24);
  v48 = swift_allocObject();
  sub_1E3BF719C(v24, v48 + v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34EF8, &qword_1E42C2940);
  sub_1E3BF73F0();
  v49 = OUTLINED_FUNCTION_51_1();
  v50 = v124;
  sub_1E40AB6EC(v49 & 1);

  memcpy(v151, v150, 0xA2uLL);
  sub_1E325F6F0(v151, &qword_1ECF34EF8, &qword_1E42C2940);
  v51 = sub_1E4203DA4();
  v53 = v52;
  v54 = v139;
  v55 = v139 + *(v138 + 36);
  (*(v127 + 32))(v55, v50, v128);
  v56 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34EB8, &qword_1E42C28C8) + 36));
  *v56 = v51;
  v56[1] = v53;
  (*(v125 + 32))(v54, v136, v126);
  v57 = v137;
  v58 = (v2 + *(v137 + 52));
  v59 = *v58;
  v60 = *(v58 + 1);
  LODWORD(v127) = v59;
  LOBYTE(v150[0]) = v59;
  v128 = v60;
  *(&v150[0] + 1) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  OUTLINED_FUNCTION_15_95();
  v126 = v61;
  sub_1E42038F4();
  LODWORD(v125) = LOBYTE(v149[0]);
  v62 = sub_1E4203DA4();
  v123 = v63;
  v124 = v62;
  v64 = sub_1E42036C4();
  v150[0] = OUTLINED_FUNCTION_10_93(v2 + *(v57 + 44));
  *&v150[1] = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
  OUTLINED_FUNCTION_15_95();
  sub_1E42038F4();
  sub_1E4203EC4();
  sub_1E3BF4698();
  sub_1E4203EC4();
  v150[0] = 0x3FF0000000000000uLL;
  *&v150[1] = 0;
  *(&v150[1] + 1) = 0x3FF0000000000000;
  v150[2] = 0uLL;
  sub_1E4202B14();
  sub_1E3BF7928(v149);
  v67 = v140;
  v66 = v141;
  v68 = v142;
  v69 = v143;
  v122 = v144;
  sub_1E3BF4698();
  v70 = *(v57 + 60);
  v136 = v2;
  v150[0] = *(v2 + v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34F38, &qword_1E42C2968);
  OUTLINED_FUNCTION_15_95();
  sub_1E42038F4();
  v71 = v149[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E378, &qword_1E42B4C40);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1E4298AD0;
  if (v71 == 1)
  {
    sub_1E42036E4();
  }

  else
  {
    sub_1E42036C4();
  }

  *(v72 + 32) = sub_1E4203C14();
  *(v72 + 40) = v73;
  sub_1E42036E4();
  *(v72 + 48) = sub_1E4203C14();
  *(v72 + 56) = v74;
  sub_1E42036E4();
  *(v72 + 64) = sub_1E4203C14();
  *(v72 + 72) = v75;
  if (v71 == 1)
  {
    sub_1E42036C4();
  }

  else
  {
    sub_1E42036E4();
  }

  *(v72 + 80) = sub_1E4203C14();
  *(v72 + 88) = v76;
  sub_1E4203F74();
  sub_1E4203F84();
  sub_1E4203C24();
  sub_1E4201064();
  sub_1E4203DA4();
  sub_1E4200D94();
  v81.n128_f64[0] = OUTLINED_FUNCTION_26_60(v77, v78, v79, v80);
  v82 = v81.n128_u64[0];
  OUTLINED_FUNCTION_26_60(v81, v83, v84, v85);
  v87 = v86;
  *&v148[0] = v64;
  WORD4(v148[0]) = 256;
  *(v148 + 10) = v153[0];
  HIWORD(v148[0]) = v153[1];
  *&v148[1] = v67;
  *(&v148[1] + 1) = v66;
  *&v148[2] = v68;
  *(&v148[2] + 1) = v69;
  v88 = v122;
  LOBYTE(v148[3]) = v122;
  *(&v148[3] + 1) = 257;
  *(&v158[2] + 15) = *(&v148[2] + 15);
  v158[2] = v148[2];
  v158[1] = v148[1];
  v158[0] = v148[0];
  memcpy(v149, v154, 0x58uLL);
  v149[11] = v82;
  v149[12] = v87;
  memcpy(&v158[3] + 8, v149, 0x68uLL);
  memcpy(v150, v154, 0x58uLL);
  *(&v150[5] + 1) = v82;
  *&v150[6] = v87;
  sub_1E3743538(v148, &v140, &qword_1ECF34F58, &qword_1E42C2988);
  sub_1E3743538(v149, &v140, &qword_1ECF34F60, &unk_1E42C2990);
  OUTLINED_FUNCTION_92_0();
  sub_1E325F6F0(v89, v90, v91);
  v140 = v64;
  LOWORD(v141) = 256;
  *(&v141 + 2) = v153[0];
  HIWORD(v141) = v153[1];
  v142 = v67;
  v143 = v66;
  v144 = v68;
  v145 = v69;
  v146 = v88;
  v147 = 257;
  sub_1E325F6F0(&v140, &qword_1ECF34F58, &qword_1E42C2988);
  memcpy(v152, v158, sizeof(v152));
  memcpy(v153, v158, sizeof(v153));
  sub_1E3743538(v152, v150, &qword_1ECF34F30, &qword_1E42C2960);
  sub_1E325F6F0(v153, &qword_1ECF34F30, &qword_1E42C2960);
  memcpy(&v154[2], v152, 0xA0uLL);
  v154[0] = v124;
  v154[1] = v123;
  v92 = v131;
  v93 = v136;
  sub_1E3BF67B0(v131);
  v150[0] = *(v93 + *(v137 + 60));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34F38, &qword_1E42C2968);
  OUTLINED_FUNCTION_15_95();
  sub_1E42038F4();
  if (v125)
  {
    v94 = v149[0];
    v95 = sub_1E4203DA4();
    v97 = v96;
    memcpy(v148, v154, sizeof(v148));
    v149[0] = v95;
    v149[1] = v97;
    memcpy(&v149[2], v154, 0xB0uLL);
    v98 = v120;
    sub_1E3743538(v139, v120, &qword_1ECF34EB0, &qword_1E42C28C0);
    memcpy((v98 + *(v118 + 36)), v149, 0xC0uLL);
    *&v150[0] = v95;
    *(&v150[0] + 1) = v97;
    memcpy(&v150[1], v148, 0xB0uLL);
    sub_1E3743538(v154, &v140, &qword_1ECF34F40, &qword_1E42C2970);
    sub_1E3743538(v149, &v140, &qword_1ECF34EC0, &qword_1E42C28D0);
    sub_1E325F6F0(v150, &qword_1ECF34EC0, &qword_1E42C28D0);
    if (v94 == 1)
    {
      v99 = sub_1E4201D54();
    }

    else
    {
      v99 = sub_1E4201D64();
    }

    v102 = v99;
    v103 = sub_1E4201B24();
    v104 = v119;
    v105 = v119 + *(v132 + 36);
    sub_1E3743538(v92, v105, &qword_1ECF34EE0, &qword_1E42C2928);
    v106 = (v105 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34EC8, &qword_1E42C28D8) + 36));
    *v106 = v102;
    v106[1] = v103;
    sub_1E3741EA0(v98, v104, &qword_1ECF34EA8, &qword_1E42C28B8);
    v107 = v104;
    v108 = v121;
    sub_1E3741EA0(v107, v121, &qword_1ECF34EA0, &qword_1E42C28B0);
    sub_1E3743538(v108, v134, &qword_1ECF34EA0, &qword_1E42C28B0);
    swift_storeEnumTagMultiPayload();
    sub_1E3BF6118();
    sub_1E3BF6288();
    sub_1E4201F44();
    sub_1E325F6F0(v108, &qword_1ECF34EA0, &qword_1E42C28B0);
    sub_1E325F6F0(v92, &qword_1ECF34EE0, &qword_1E42C2928);
    v101 = v139;
  }

  else
  {
    v100 = v139;
    sub_1E3743538(v139, v134, &qword_1ECF34EB0, &qword_1E42C28C0);
    swift_storeEnumTagMultiPayload();
    sub_1E3BF6118();
    sub_1E3BF6288();
    sub_1E4201F44();
    sub_1E325F6F0(v92, &qword_1ECF34EE0, &qword_1E42C2928);
    v101 = v100;
  }

  sub_1E325F6F0(v101, &qword_1ECF34EB0, &qword_1E42C28C0);
  OUTLINED_FUNCTION_92_0();
  sub_1E3741EA0(v109, v110, v111, &qword_1E42C28A8);
  sub_1E325F6F0(v154, &qword_1ECF34F40, &qword_1E42C2970);
  LOBYTE(v150[0]) = v127;
  *(&v150[0] + 1) = v128;
  OUTLINED_FUNCTION_15_95();
  sub_1E42038F4();
  v112 = v149[0];
  v113 = v135;
  OUTLINED_FUNCTION_92_0();
  sub_1E3741EA0(v114, v115, v116, &qword_1E42C28A8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34E90, &qword_1E42C28A0);
  *(v113 + *(result + 36)) = v112;
  return result;
}

uint64_t sub_1E3BF5C2C(uint64_t a1)
{
  type metadata accessor for TextViewModel();
  OUTLINED_FUNCTION_39_6();
  if (!(!v3 & v2))
  {
    type metadata accessor for TextLayout();
    OUTLINED_FUNCTION_39_6();
    if (!(!v3 & v2))
    {
      sub_1E3BF5EC0(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      OUTLINED_FUNCTION_39_6();
      if (!(!v3 & v2))
      {
        sub_1E3BF5EC0(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
        OUTLINED_FUNCTION_39_6();
        if (!(!v3 & v2))
        {
          sub_1E3BF5EC0(319, &qword_1EE289E88, MEMORY[0x1E6980E88], MEMORY[0x1E697DCC0]);
          OUTLINED_FUNCTION_39_6();
          if (!(!v3 & v2))
          {
            sub_1E3BF5EC0(319, &qword_1EE288648, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
            OUTLINED_FUNCTION_39_6();
            if (!(!v3 & v2))
            {
              sub_1E3BF5F24(319, &qword_1EE288668, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
              if (v5 > 0x3F)
              {
                return v4;
              }

              else
              {
                sub_1E3BF5EC0(319, &qword_1EE288658, type metadata accessor for NSWritingDirection, MEMORY[0x1E6981790]);
                OUTLINED_FUNCTION_39_6();
                if (!(!v3 & v2))
                {
                  sub_1E3BF5F24(319, &qword_1EE288418, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
                  OUTLINED_FUNCTION_39_6();
                  if (!(!v3 & v2))
                  {
                    sub_1E3BF5F74();
                    OUTLINED_FUNCTION_39_6();
                    if (!(!v3 & v2))
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
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

  return v1;
}

void sub_1E3BF5EC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1E3BF5F24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1E3BF5F74()
{
  if (!qword_1EE28A188)
  {
    v0 = sub_1E4200554();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE28A188);
    }
  }
}

unint64_t sub_1E3BF5FD4()
{
  result = qword_1EE289B18;
  if (!qword_1EE289B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34E90, &qword_1E42C28A0);
    sub_1E3BF608C();
    sub_1E32752B0(&qword_1EE288838, &qword_1ECF34ED0, qword_1E42C28E0, MEMORY[0x1E6980758]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B18);
  }

  return result;
}

unint64_t sub_1E3BF608C()
{
  result = qword_1EE288EC0;
  if (!qword_1EE288EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34E98, &qword_1E42C28A8);
    sub_1E3BF6118();
    sub_1E3BF6288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288EC0);
  }

  return result;
}

unint64_t sub_1E3BF6118()
{
  result = qword_1EE2894C8;
  if (!qword_1EE2894C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34EA0, &qword_1E42C28B0);
    sub_1E3BF61D0();
    sub_1E32752B0(&qword_1EE289378, &qword_1ECF34EC8, &qword_1E42C28D8, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2894C8);
  }

  return result;
}

unint64_t sub_1E3BF61D0()
{
  result = qword_1EE289618;
  if (!qword_1EE289618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34EA8, &qword_1E42C28B8);
    sub_1E3BF6288();
    sub_1E32752B0(&qword_1EE2889F8, &qword_1ECF34EC0, &qword_1E42C28D0, MEMORY[0x1E697FB38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289618);
  }

  return result;
}

unint64_t sub_1E3BF6288()
{
  result = qword_1EE2899F0;
  if (!qword_1EE2899F0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34EB0, &qword_1E42C28C0);
    sub_1E3BD9530(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE289238, &qword_1ECF34EB8, &qword_1E42C28C8, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2899F0);
  }

  return result;
}

void sub_1E3BF636C(uint64_t *a1, double a2, double a3)
{
  v6 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = (v11 - v10);
  v13 = type metadata accessor for FocusableText(0);
  v14 = (a1 + v13[11]);
  v15 = v14[1];
  v16 = v14[2];
  *&v50 = *v14;
  *(&v50 + 1) = v15;
  *&v51 = v16;
  *&v48 = a2;
  *(&v48 + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
  sub_1E4203904();
  OUTLINED_FUNCTION_10_93(a1 + v13[12]);
  sub_1E42038F4();
  *(&v50 + 1) = v15;
  *&v51 = v16;
  sub_1E42038F4();
  v17 = a1 + v13[13];
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v50) = v18;
  *(&v50 + 1) = v19;
  LOBYTE(v48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E4203904();
  v20 = *a1;
  swift_beginAccess();
  v21 = *(v20 + 280);
  if (v21)
  {
    v45 = *(v20 + 280);
    v46 = v6;
    v22 = v45;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_18();
    v24 = sub_1E3C287F4(0, v23 & 1);
    if (!v24)
    {
      return;
    }

    v45 = v24;
    v46 = v6;
    v22 = v24;
    v21 = 0;
  }

  v25 = *MEMORY[0x1E69DB688];
  v26 = v21;
  if ([v22 attribute:v25 atIndex:0 effectiveRange:0])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v50 = v48;
  v51 = v49;
  if (*(&v49 + 1))
  {
    v27 = v8;
    sub_1E3BF79D4();
    if (swift_dynamicCast())
    {
      v28 = v47;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v27 = v8;
    sub_1E325F6F0(&v50, &unk_1ECF296E0, &unk_1E4298030);
    v28 = 0;
  }

  type metadata accessor for LanguageAwareString();
  v29 = v28;
  v30 = v22;
  v31 = sub_1E3D36A44();
  v32 = LanguageAwareString.__allocating_init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(v30, v28, v31 & 1);
  v33 = a1[1];
  sub_1E3746E10(v12);
  sub_1E3BF797C();
  OUTLINED_FUNCTION_92_0();
  v35 = sub_1E37B89FC(v34);
  v37 = v36;
  v38 = (*(v27 + 8))(v12, v46);
  if (v37)
  {
    v39 = 1;
  }

  else
  {
    v39 = v35;
  }

  v40 = (*(*v33 + 2168))(v38);
  if (v39 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v41)
    {
      v42 = 4;
    }

    else
    {
      v42 = v40;
    }

    (*((*MEMORY[0x1E69E7D40] & *v32) + 0x258))(-1, v39, v42, 1, a2);
    v43 = (a1 + v13[15]);
    v44 = v43[1];
    *&v50 = *v43;
    *(&v50 + 1) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34F38, &qword_1E42C2968);
    sub_1E4203904();
  }
}

uint64_t sub_1E3BF67B0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34F48, &qword_1E42C2978);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  if (qword_1ECF5A1D0 != -1)
  {
    v5 = OUTLINED_FUNCTION_2_140(&qword_1ECF5A1D0);
  }

  if (qword_1ECF71500)
  {
    v8 = *v1;
    MEMORY[0x1EEE9AC00](v5);
    *(&v17 - 4) = v1;
    *(&v17 - 3) = v9;
    *(&v17 - 2) = v10;

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34F50, &qword_1E42C2980);
    v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C2B8, &unk_1E42AA120);
    v17 = MEMORY[0x1E6981148];
    v18 = MEMORY[0x1E6981138];
    OUTLINED_FUNCTION_5_134();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v17 = v12;
    v18 = OpaqueTypeConformance2;
    v14 = swift_getOpaqueTypeConformance2();
    v15 = OUTLINED_FUNCTION_51_1();
    sub_1E40424BC(v8, v15 & 1, sub_1E3BF75E8, v11, v14, v7, (&v17 - 6));
    sub_1E3741EA0(v7, a1, &qword_1ECF34F48, &qword_1E42C2978);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }
}

uint64_t sub_1E3BF69CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a3;
  v6 = type metadata accessor for FocusableText(0);
  v7 = v6 - 8;
  v65 = *(v6 - 8);
  v64 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v62 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_138();
  sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v59 = v10;
  v60 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v54 = v12 - v11;
  OUTLINED_FUNCTION_138();
  v58 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v56 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v53 = (v16 - v15);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8, &unk_1E42AA120);
  OUTLINED_FUNCTION_0_10();
  v63 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v67 = v19;
  OUTLINED_FUNCTION_138();
  v20 = sub_1E4201324();
  v55 = v20;
  v57 = *(v20 - 8);
  v21 = v57;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  v52 = v23 - v22;
  v68 = *(v3 + *(v7 + 68));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34F38, &qword_1E42C2968);
  sub_1E42038F4();
  v25 = MEMORY[0x1E697E7D8];
  if (v71 != 1)
  {
    v25 = MEMORY[0x1E697E7D0];
  }

  v26 = (*(v21 + 104))(v24, *v25, v20);
  *&v68 = a1;
  *(&v68 + 1) = a2;
  sub_1E32822E0(v26, v27, v28);

  v29 = sub_1E4202C44();
  v31 = v30;
  v51[1] = v32;
  *&v68 = v29;
  *(&v68 + 1) = v30;
  v34 = v33 & 1;
  v69 = v33 & 1;
  v70 = v32;
  v51[0] = v3;
  v35 = *(v3 + 24);
  v36 = v53;
  sub_1E3746E10(v53);
  v37 = MEMORY[0x1E6981148];
  v38 = MEMORY[0x1E6981138];
  v39 = j__OUTLINED_FUNCTION_18();
  v40 = v54;
  sub_1E37B5FBC(v54);
  v41 = j__OUTLINED_FUNCTION_18() & 1;
  v42 = v35;
  v43 = v52;
  sub_1E37B6028(v42, v36, v52, v39, v40, v41, v37, v38, v67);
  (*(v59 + 8))(v40, v60);
  (*(v56 + 8))(v36, v58);
  sub_1E37434B8(v29, v31, v34);

  v44 = v62;
  sub_1E3BF7138(v51[0], v62);
  v45 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v46 = swift_allocObject();
  sub_1E3BF719C(v44, v46 + v45);
  *&v68 = v37;
  *(&v68 + 1) = v38;
  OUTLINED_FUNCTION_5_134();
  swift_getOpaqueTypeConformance2();
  v47 = v61;
  v48 = OUTLINED_FUNCTION_51_1();
  v49 = v67;
  sub_1E40AB6EC(v48 & 1);

  (*(v63 + 8))(v49, v47);
  return (*(v57 + 8))(v43, v55);
}

uint64_t sub_1E3BF6EB8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34E80, qword_1E42C27A0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1E3743538(v2, &v17 - v9, &qword_1ECF34E80, qword_1E42C27A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4202A14();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E4206804();
    v14 = sub_1E42026D4();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E3270FC8(0x747865746E6F43, 0xE700000000000000, &v18);
      _os_log_impl(&dword_1E323F000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E69143B0](v16, -1, -1);
      MEMORY[0x1E69143B0](v15, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E3BF7138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusableText(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3BF719C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusableText(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E3BF7200()
{
  v3 = OUTLINED_FUNCTION_18_70();
  OUTLINED_FUNCTION_17_2(v3);
  v5 = (v0 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  sub_1E3BF636C(v5, v2, v1);
}

uint64_t sub_1E3BF7268()
{
  v2 = (OUTLINED_FUNCTION_18_70() - 8);
  v3 = v0 + ((*(*v2 + 80) + 16) & ~*(*v2 + 80));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
  OUTLINED_FUNCTION_24_58(v4, v5, v6, v7, v8, v9, v10, v11, v1);
  sub_1E4203904();
  OUTLINED_FUNCTION_17_81();
  OUTLINED_FUNCTION_10_93(v3 + v2[13]);
  OUTLINED_FUNCTION_17_81();
  LOBYTE(v28) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  OUTLINED_FUNCTION_24_58(v12, v13, v14, v15, v16, v17, v18, v19, v28);
  sub_1E4203904();
  OUTLINED_FUNCTION_17_81();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8, &qword_1E42B22C0);
  OUTLINED_FUNCTION_24_58(v20, v20, v21, v22, v23, v24, v25, v26, v29);
  return sub_1E4203AA4();
}

unint64_t sub_1E3BF73F0()
{
  result = qword_1ECF34F00;
  if (!qword_1ECF34F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34EF8, &qword_1E42C2940);
    v3 = sub_1E3BF747C();
    sub_1E3BF7594(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34F00);
  }

  return result;
}

unint64_t sub_1E3BF747C()
{
  result = qword_1ECF34F08;
  if (!qword_1ECF34F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34F10, &qword_1E42C2948);
    sub_1E3BF7508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34F08);
  }

  return result;
}

unint64_t sub_1E3BF7508()
{
  result = qword_1ECF34F18;
  if (!qword_1ECF34F18)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34F20, &unk_1E42C2950);
    sub_1E3BD9530(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34F18);
  }

  return result;
}

unint64_t sub_1E3BF7594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF34F28;
  if (!qword_1ECF34F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34F28);
  }

  return result;
}

uint64_t objectdestroyTm_28()
{
  v1 = type metadata accessor for FocusableText(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4201324();
    OUTLINED_FUNCTION_2();
    (*(v6 + 8))(v2 + v5);
  }

  else
  {
  }

  v7 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34E80, qword_1E42C27A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4202A14();
    OUTLINED_FUNCTION_2();
    (*(v8 + 8))(v2 + v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1E3BF7890()
{
  v2 = OUTLINED_FUNCTION_18_70();
  v3 = OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_10_93(v0 + *(v3 + 64) + ((*(v4 + 80) + 16) & ~*(v4 + 80)));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
  OUTLINED_FUNCTION_24_58(v5, v5, v6, v7, v8, v9, v10, v11, v1);
  sub_1E4203904();
}

unint64_t sub_1E3BF797C()
{
  result = qword_1EE2844B8[0];
  if (!qword_1EE2844B8[0])
  {
    type metadata accessor for FocusableText(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2844B8);
  }

  return result;
}

unint64_t sub_1E3BF79D4()
{
  result = qword_1EE23B298;
  if (!qword_1EE23B298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B298);
  }

  return result;
}

uint64_t sub_1E3BF7A80(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_1E4202034();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return a3();
}

uint64_t sub_1E3BF7B00(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_1E4202034();

  return __swift_project_value_buffer(v4, a2);
}

void sub_1E3BF7B54()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  memcpy(v20, v1, sizeof(v20));
  v13 = *(*v3 + 392);

  v15 = v13(v14);
  if (!v15)
  {
    goto LABEL_4;
  }

  v16 = v15;
  if (*v15 != _TtC8VideosUI22UpNextLockupCellLayout)
  {

LABEL_4:
    type metadata accessor for UpNextLockupCellLayout();
    v16 = sub_1E3A2246C();
  }

  type metadata accessor for ContextMenuModel(0);
  sub_1E3E6CDBC();

  sub_1E4207414();
  (*(v8 + 104))(v12, *MEMORY[0x1E697E660], v6);
  v17 = OUTLINED_FUNCTION_35_5();
  v19 = sub_1E4188148(v17, v18);
  *v5 = v3;
  v5[1] = v16;
  memcpy(v5 + 2, v20, 0xC3uLL);
  v5[27] = v19;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BF7D30()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v20[1] = v2;
  v3 = OUTLINED_FUNCTION_146();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34F70, &qword_1E42C29A8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  sub_1E3BF7ED4();
  v11 = *(v1 + 216);
  v12 = sub_1E3BF8368();
  sub_1E4187EA8(v11, v5, v12);
  sub_1E325F6F0(v8, &qword_1ECF34F68, &qword_1E42C29A0);
  v13 = *(v1 + 8);
  v20[2] = v5;
  v20[3] = v12;
  OUTLINED_FUNCTION_3_8();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_35_5();
  v15 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_5();
  v16 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_5();
  v17 = OUTLINED_FUNCTION_51_1() & 1;
  sub_1E383F6D4(v13, v15 & 1, v16 & 1, 0, v17, v9, OpaqueTypeConformance2);
  v18 = OUTLINED_FUNCTION_74();
  v19(v18);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BF7ED4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v44[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350A8, &unk_1E42C2CE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_1();
  Lockup = type metadata accessor for ListUpNextLockup(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v44 - v12;
  v14 = v2[1];
  swift_beginAccess();
  v15 = *v2;
  if (*(v14 + 177) == 1)
  {
    memcpy(v46, v2 + 2, 0xC3uLL);
    v16 = Lockup;
    v17 = *(Lockup + 28);
    *(v10 + v17) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
    swift_storeEnumTagMultiPayload();
    *v10 = v15;
    memcpy(v10 + 1, v46, 0xC3uLL);
    v10[26] = v14;
    v18 = *(*v15 + 488);

    v19 = sub_1E375C1CC(v46, v45);
    v20 = v18(v19);
    if (v20 && (v22 = sub_1E373E010(67, v20, v21), , v22))
    {

      v23 = 1;
    }

    else
    {
      v23 = 0;
    }

    *(v10 + *(v16 + 32)) = v23;
    sub_1E3BFC940(v10, v13, type metadata accessor for ListUpNextLockup);
    sub_1E3BFBE88(v13, v0, type metadata accessor for ListUpNextLockup);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_102();
    v36 = sub_1E3BFC068(v34, v35);
    sub_1E3BF84C8(v36, v37, v38);
    sub_1E4201F44();
    sub_1E3BFBEE4(v13, type metadata accessor for ListUpNextLockup);
    goto LABEL_22;
  }

  v44[2] = Lockup;
  memcpy(v46, v2 + 2, 0xC3uLL);

  sub_1E375C1CC(v46, v45);
  v24 = *(*v15 + 488);

  v26 = v24(v25);

  if (!v26)
  {
    v33 = 0;
LABEL_21:
    *v0 = v15;
    memcpy(v0 + 1, v46, 0xC3uLL);
    v0[26] = v14;
    v0[27] = v33;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_102();
    v41 = sub_1E3BFC068(v39, v40);
    sub_1E3BF84C8(v41, v42, v43);
    sub_1E4201F44();
LABEL_22:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v44[0] = v0;
  v44[1] = v4;
  v27 = 1 << *(v26 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v26 + 64);
  v30 = (v27 + 63) >> 6;

  v31 = 0;
  if (v29)
  {
    while (1)
    {
      v32 = v31;
LABEL_13:
      v33 = *(*(v26 + 56) + 8 * (__clz(__rbit64(v29)) | (v32 << 6)));

      if (sub_1E385050C())
      {
        break;
      }

      v29 &= v29 - 1;
      v31 = v32;
      if (!v29)
      {
        goto LABEL_10;
      }
    }

LABEL_19:
    v0 = v44[0];
    goto LABEL_21;
  }

LABEL_10:
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v30)
    {

      v33 = 0;
      goto LABEL_19;
    }

    v29 = *(v26 + 64 + 8 * v32);
    ++v31;
    if (v29)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t sub_1E3BF8368()
{
  result = qword_1ECF34F78;
  if (!qword_1ECF34F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34F68, &qword_1E42C29A0);
    sub_1E3BF83EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34F78);
  }

  return result;
}

unint64_t sub_1E3BF83EC()
{
  result = qword_1ECF34F80;
  if (!qword_1ECF34F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34F88, &qword_1E42C29B0);
    v3 = sub_1E3BFC068(&qword_1ECF5A280, type metadata accessor for ListUpNextLockup);
    sub_1E3BF84C8(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34F80);
  }

  return result;
}

unint64_t sub_1E3BF84C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5A288;
  if (!qword_1ECF5A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5A288);
  }

  return result;
}

uint64_t sub_1E3BF8558(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 224))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3BF8598(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E3BF8648()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UpNextLockupCellLayout();
    if (v1 <= 0x3F)
    {
      sub_1E38D5D68(319);
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E3BF8704()
{
  OUTLINED_FUNCTION_9_4();
  v7 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35078, &qword_1E42C2CC8);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35080, &qword_1E42C2CD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_4();
  v12 = *v0;
  memcpy(v46, v7 + 1, 0xC3uLL);

  sub_1E375C1CC(v46, &v35);
  v13 = type metadata accessor for UpnextCardMetada(0);
  v14 = sub_1E3BFC068(&qword_1ECF5A3B0, type metadata accessor for UpnextCardMetada);
  sub_1E390F194(v12, v46, 0, sub_1E3BFBF3C, v13, v14, v2);
  v15 = v7[26];
  swift_beginAccess();
  v16 = v15[18];
  if (v16 && (v17 = *(*v16 + 152), v18 = , v17(v44, v18), v3 = v44[0], v4 = v44[1], v5 = v44[2], v6 = v44[3], , (v45 & 1) == 0))
  {
    v19.n128_u64[0] = v3;
    v20.n128_u64[0] = v4;
    v21.n128_u64[0] = v5;
    v22.n128_u64[0] = v6;
    j_nullsub_1(v19, v20, v21, v22);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v23 = v7[27];
  v24 = sub_1E4202734();
  v25 = sub_1E4203D44();
  v27 = v26;
  v33 = 0;
  v34[0] = v23;
  LOBYTE(v34[1]) = v24;
  v34[2] = v3;
  v34[3] = v4;
  v34[4] = v5;
  v34[5] = v6;
  LOBYTE(v34[6]) = 0;
  v34[7] = v25;
  v34[8] = v26;
  sub_1E3741EA0(v2, v1, &qword_1ECF35078, &qword_1E42C2CC8);
  memcpy((v1 + *(v10 + 36)), v34, 0x48uLL);
  v35 = v23;
  v36 = v24;
  v37 = v3;
  v38 = v4;
  v39 = v5;
  v40 = v6;
  v41 = 0;
  v42 = v25;
  v43 = v27;

  sub_1E3743538(v34, v31, &qword_1ECF35088, &qword_1E42C2CD8);
  v28 = sub_1E325F6F0(&v35, &qword_1ECF35088, &qword_1E42C2CD8);
  (*(*v15 + 552))(v31, v28);
  if (v32)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = *v31;
  }

  v30 = sub_1E3BFC0AC();
  sub_1E391F8C0(v10, v30, v29);
  sub_1E325F6F0(v1, &qword_1ECF35080, &qword_1E42C2CD0);
  OUTLINED_FUNCTION_10_3();
}

void *sub_1E3BF8A8C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350C8, &qword_1E42C2E60);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_4();
  *v1 = sub_1E4201D54();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350D0, &qword_1E42C2E68);
  sub_1E3BF8BA8();
  sub_1E4203DB4();
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_17_82();
  sub_1E42015C4();
  OUTLINED_FUNCTION_21_1();
  sub_1E3741EA0(v5, v6, v7, &qword_1E42C2E60);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350D8, &qword_1E42C2E70);
  return memcpy((a1 + *(v8 + 36)), __src, 0x70uLL);
}

void sub_1E3BF8BA8()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v78 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350E0, &qword_1E42C2E78);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_49_2();
  v67[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350E8, &qword_1E42C2E80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31_2();
  v67[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350F0, &qword_1E42C2E88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17_3(v67 - v9);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350F8, &qword_1E42C2E90);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v13);
  v14 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = (v19 - v18);
  v69 = *(type metadata accessor for UpnextCardMetada(0) + 28);
  sub_1E3746E10(v20);
  v70 = sub_1E3B02B0C();
  v21 = *(v16 + 8);
  v73 = v14;
  v71 = v16 + 8;
  v68 = v21;
  v21(v20, v14);
  v80 = v3;
  v79 = v3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35100, &qword_1E42C2E98);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35108, &qword_1E42C2EA0);
  v26 = sub_1E3BFC670(v23, v24, v25);
  v85 = &type metadata for UpnextPlaybackStatus;
  v86 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = type metadata accessor for StateIndicatorAndContextMenuButton(255);
  OUTLINED_FUNCTION_14_108();
  v31 = sub_1E3BFC068(v29, v30);
  v85 = v28;
  v86 = v31;
  v32 = swift_getOpaqueTypeConformance2();
  sub_1E3DE5EA0(sub_1E3BFC5E8, sub_1E3BFC668, v22, v23, OpaqueTypeConformance2, v32, v1);
  sub_1E4202764();
  v33 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v34)
  {
    v33 = sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  v36 = *(v35 + 176);
  v36(v81);
  if ((v82 & 1) == 0)
  {
    v39.n128_u64[0] = v81[2];
    v40.n128_u64[0] = v81[3];
    v37.n128_u64[0] = v81[0];
    v38.n128_u64[0] = v81[1];
    j_nullsub_1(v37, v38, v39, v40);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v1, v0, &qword_1ECF350E0, &qword_1E42C2E78);
  OUTLINED_FUNCTION_141();
  v42 = (v0 + v41);
  *v42 = v33;
  OUTLINED_FUNCTION_11_4(v42);
  v43 = sub_1E4202784();
  v44 = sub_1E4202774();
  sub_1E4202774();
  v45 = sub_1E4202774();
  v46 = v75;
  if (v45 != v43)
  {
    v44 = sub_1E4202774();
  }

  v36(v83);
  if ((v84 & 1) == 0)
  {
    v49.n128_u64[0] = v83[2];
    v50.n128_u64[0] = v83[3];
    v47.n128_u64[0] = v83[0];
    v48.n128_u64[0] = v83[1];
    j_nullsub_1(v47, v48, v49, v50);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v0, v46, &qword_1ECF350E8, &qword_1E42C2E80);
  OUTLINED_FUNCTION_141();
  v52 = (v46 + v51);
  *v52 = v44;
  OUTLINED_FUNCTION_11_4(v52);
  v53 = sub_1E4202754();
  v54 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v53)
  {
    v54 = sub_1E4202774();
  }

  v36(&v85);
  if ((v89 & 1) == 0)
  {
    v57.n128_u64[0] = v87;
    v58.n128_u64[0] = v88;
    v55.n128_u64[0] = v85;
    v56.n128_u64[0] = v86;
    j_nullsub_1(v55, v56, v57, v58);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v59 = v72;
  sub_1E3741EA0(v46, v72, &qword_1ECF350F0, &qword_1E42C2E88);
  OUTLINED_FUNCTION_141();
  v61 = (v59 + v60);
  *v61 = v54;
  OUTLINED_FUNCTION_11_4(v61);
  v62 = v76;
  sub_1E3741EA0(v59, v76, &qword_1ECF350F8, &qword_1E42C2E90);
  sub_1E3746E10(v20);
  LOBYTE(v59) = sub_1E3B02B0C();
  v68(v20, v73);
  v63 = v77;
  sub_1E3743538(v62, v77, &qword_1ECF350F8, &qword_1E42C2E90);
  v64 = v78;
  *v78 = 0;
  *(v64 + 8) = 0;
  *(v64 + 9) = v70 & 1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35110, &qword_1E42C2EA8);
  sub_1E3743538(v63, v64 + *(v65 + 48), &qword_1ECF350F8, &qword_1E42C2E90);
  v66 = v64 + *(v65 + 64);
  *v66 = 0;
  v66[8] = 0;
  v66[9] = (v59 & 1) == 0;
  sub_1E325F6F0(v62, &qword_1ECF350F8, &qword_1E42C2E90);
  sub_1E325F6F0(v63, &qword_1ECF350F8, &qword_1E42C2E90);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3BF9220(uint64_t a1)
{
  v2 = type metadata accessor for StateIndicatorAndContextMenuButton(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = *(a1 + 8);
  LOBYTE(v4) = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 8) = v7;
  *(v6 + 16) = v4;

  v8 = sub_1E42038E4();
  *(v6 + 24) = v17;
  *(v6 + 32) = v18;
  sub_1E3929B88(v8, v9, v10);
  sub_1E4200CD4();
  v11 = *(v2 + 36);
  *(v6 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  sub_1E4203684();
  OUTLINED_FUNCTION_14_108();
  sub_1E3BFC068(v12, v13);
  OUTLINED_FUNCTION_74();
  sub_1E3D414C8(v14, v15);

  return sub_1E3BFBEE4(v6, type metadata accessor for StateIndicatorAndContextMenuButton);
}

void sub_1E3BF93F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  type metadata accessor for TextBadge(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFD8, &qword_1E42A6810);
  OUTLINED_FUNCTION_0_10();
  v33 = v32;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_49_2();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33808, &qword_1E42C2F00);
  v36 = OUTLINED_FUNCTION_17_2(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_4_6();
  v39 = v37 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &a9 - v41;
  if (v24)
  {

    OUTLINED_FUNCTION_18();
    sub_1E3FC96D0(v24, 0, v30);
    sub_1E3BFCA50(qword_1EE23BBE8, type metadata accessor for TextBadge);
    View.accessibilityIdentifier(key:location:)();
    sub_1E3BFBEE4(v30, type metadata accessor for TextBadge);
    (*(v33 + 32))(v42, v20, v31);
    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  __swift_storeEnumTagSinglePayload(v42, v43, 1, v31);
  sub_1E3743538(v42, v39, &qword_1ECF33808, &qword_1E42C2F00);
  OUTLINED_FUNCTION_21_1();
  sub_1E3743538(v44, v45, v46, &qword_1E42C2F00);
  v47 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35168, &qword_1E42C2F08) + 48);
  *v47 = 0;
  *(v47 + 8) = 1;
  OUTLINED_FUNCTION_39_35();
  sub_1E325F6F0(v48, v49, v50);
  OUTLINED_FUNCTION_39_35();
  sub_1E325F6F0(v51, v52, v53);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3BF9684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlaybackStatus(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  if (a1)
  {

    sub_1E413D6F4(v9, v8);
    sub_1E3BFC940(v8, a2, type metadata accessor for PlaybackStatus);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_1E3BF9774@<X0>(uint64_t a1@<X8>)
{
  v37[2] = a1;
  v37[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34F90, &qword_1E42C2B78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34F98, &qword_1E42C2B80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34FA0, &qword_1E42C2B88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v37 - v5;
  v7 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = (v12 - v11);
  OUTLINED_FUNCTION_8();
  (*(v14 + 176))(&v38);
  type metadata accessor for ListUpNextLockup(0);
  sub_1E3746E10(v13);
  v15 = sub_1E3B02B0C();
  (*(v9 + 8))(v13, v7);
  if (v15)
  {
    *v6 = sub_1E4201D54();
    *(v6 + 1) = 0;
    v6[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34FC0, &qword_1E42C2B98);
    sub_1E3BF9AF0();
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v16, v17, v18, v19);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_21_1();
    sub_1E328FCF4(v20, v21, v22);
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    *v1 = sub_1E4201B84();
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34FA8, &qword_1E42C2B90);
    sub_1E3BFA7C4();
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v26, v27, v28, v29);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    sub_1E328FCF4(v30, v31, v32);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_21_1();
  }

  sub_1E328FCF4(v23, v24, v25);
  OUTLINED_FUNCTION_46_32();
  sub_1E4201F44();
  OUTLINED_FUNCTION_21_1();
  return sub_1E325F6F0(v33, v34, v35);
}

void sub_1E3BF9AF0()
{
  OUTLINED_FUNCTION_21_5();
  v7 = v6;
  v43 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34FC8, &qword_1E42C2BA0);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34FD0, &qword_1E42C2BA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34FD8, &qword_1E42C2BB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_26_2();
  v42[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34FE0, &qword_1E42C2BB8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v42 - v23;
  *v12 = sub_1E4201D54();
  *(v12 + 1) = 0;
  v12[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34FE8, &qword_1E42C2BC0);
  sub_1E3BF9E90();
  v25 = sub_1E4202744();
  v26 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v25)
  {
    v26 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  sub_1E3741EA0(v12, v2, &qword_1ECF34FC8, &qword_1E42C2BA0);
  v27 = v2 + *(v13 + 36);
  *v27 = v26;
  *(v27 + 8) = v7;
  *(v27 + 16) = v3;
  *(v27 + 24) = v4;
  *(v27 + 32) = v5;
  *(v27 + 40) = 0;
  v28 = sub_1E4202754();
  v29 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v28)
  {
    v29 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v2, v0, &qword_1ECF34FD0, &qword_1E42C2BA8);
  v30 = (v0 + *(v15 + 36));
  *v30 = v29;
  OUTLINED_FUNCTION_11_4(v30);
  sub_1E4203D84();
  v31 = OUTLINED_FUNCTION_17_82();
  OUTLINED_FUNCTION_33_7(v31, 1, v32, v33, v34, v35, v36, v37, v41);
  sub_1E3741EA0(v0, v1, &qword_1ECF34FD8, &qword_1E42C2BB0);
  OUTLINED_FUNCTION_141();
  memcpy((v1 + v38), v44, 0x70uLL);
  sub_1E3741EA0(v1, v24, &qword_1ECF34FE0, &qword_1E42C2BB8);
  v39 = sub_1E3FFE5B8(0, 1);
  sub_1E3743538(v24, v20, &qword_1ECF34FE0, &qword_1E42C2BB8);
  v40 = v43;
  sub_1E3743538(v20, v43, &qword_1ECF34FE0, &qword_1E42C2BB8);
  *(v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34FF0, &qword_1E42C2BC8) + 48)) = v39;
  sub_1E325F6F0(v24, &qword_1ECF34FE0, &qword_1E42C2BB8);
  sub_1E325F6F0(v20, &qword_1ECF34FE0, &qword_1E42C2BB8);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3BF9E90()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v64 = v3;
  v61 = type metadata accessor for StateIndicatorAndContextMenuButton(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v59 - v6;
  v8 = type metadata accessor for StackedTextViews(0);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34FF8, &qword_1E42C2BD0) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  v59[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35000, &qword_1E42C2BD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v59 - v15;
  v59[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35008, &qword_1E42C2BE0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v59 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v22);
  sub_1E3BFA418(v0);
  *(v0 + *(v12 + 44)) = 0;
  sub_1E4202754();
  v23 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v24)
  {
    v23 = sub_1E4202774();
  }

  v25 = v2[26];
  OUTLINED_FUNCTION_8();
  v27 = *(v26 + 152);

  v27(&v70, v28);

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v29 = OUTLINED_FUNCTION_74();
  sub_1E3741EA0(v29, v30, v31, v32);
  OUTLINED_FUNCTION_141();
  v34 = &v16[v33];
  *v34 = v23;
  OUTLINED_FUNCTION_11_4(v34);
  sub_1E4203DB4();
  OUTLINED_FUNCTION_19_5();
  v35 = OUTLINED_FUNCTION_17_82();
  OUTLINED_FUNCTION_33_7(v35, 0, v36, v37, v38, v39, v40, v41, v59[0]);
  sub_1E3741EA0(v16, v20, &qword_1ECF35000, &qword_1E42C2BD8);
  OUTLINED_FUNCTION_141();
  memcpy(&v20[v42], v71, 0x70uLL);
  v43 = v66;
  sub_1E3741EA0(v20, v66, &qword_1ECF35008, &qword_1E42C2BE0);
  v44 = v62;
  sub_1E3BFA644(v62);
  v45 = *v2;
  v46 = *(v2 + *(type metadata accessor for ListUpNextLockup(0) + 32));
  *v7 = v45;
  *(v7 + 1) = v25;
  v7[16] = v46;
  v67 = 0;

  v47 = sub_1E42038E4();
  v48 = v69;
  v7[24] = v68;
  *(v7 + 4) = v48;
  v49 = v61;
  v68 = 0x4032000000000000;
  sub_1E3929B88(v47, v50, v51);
  sub_1E4200CD4();
  v52 = *(v49 + 36);
  *&v7[v52] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v53 = v43;
  v54 = v60;
  sub_1E3743538(v53, v60, &qword_1ECF35008, &qword_1E42C2BE0);
  v55 = v63;
  sub_1E3BFBE88(v44, v63, type metadata accessor for StackedTextViews);
  v56 = v65;
  sub_1E3BFBE88(v7, v65, type metadata accessor for StateIndicatorAndContextMenuButton);
  v57 = v64;
  sub_1E3743538(v54, v64, &qword_1ECF35008, &qword_1E42C2BE0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35010, &qword_1E42C2C20);
  sub_1E3BFBE88(v55, v57 + *(v58 + 48), type metadata accessor for StackedTextViews);
  sub_1E3BFBE88(v56, v57 + *(v58 + 64), type metadata accessor for StateIndicatorAndContextMenuButton);
  sub_1E3BFBEE4(v7, type metadata accessor for StateIndicatorAndContextMenuButton);
  sub_1E3BFBEE4(v44, type metadata accessor for StackedTextViews);
  sub_1E325F6F0(v66, &qword_1ECF35008, &qword_1E42C2BE0);
  sub_1E3BFBEE4(v56, type metadata accessor for StateIndicatorAndContextMenuButton);
  sub_1E3BFBEE4(v55, type metadata accessor for StackedTextViews);
  sub_1E325F6F0(v54, &qword_1ECF35008, &qword_1E42C2BE0);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3BFA418@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  if (sub_1E39C408C())
  {
    type metadata accessor for ImageViewModel();
    OUTLINED_FUNCTION_20_2();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      OUTLINED_FUNCTION_8();
      v10 = *(v9 + 1968);

      v12 = v10(v11);

      j__OUTLINED_FUNCTION_51_1();
      v13 = j__OUTLINED_FUNCTION_18();
      v21 = j__OUTLINED_FUNCTION_18() & 1;
      v14 = OUTLINED_FUNCTION_17_82();
      sub_1E3EB9C0C(v14, 0, 1, 0, 0, 1, v15, 2, v16, v19, v20, 0, 1, v12, 1, v13 & 1, v21);
      v17 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(v8, v22, 0, v17 & 1, 0, 0, v1);

      sub_1E375C31C(v22);
      (*(v5 + 32))(a1, v1, v3);
      return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
    }
  }

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
}

void sub_1E3BFA644(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D378, &unk_1E42E1610);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E4299720;
  if (!sub_1E39C408C())
  {
    goto LABEL_5;
  }

  v3 = j__OUTLINED_FUNCTION_18();
  sub_1E39C26D0(0, v3 & 1);
  v5 = v4;

  if (v5 && *v5 != _TtC8VideosUI13TextViewModel)
  {

LABEL_5:
    v5 = 0;
  }

  *(v2 + 32) = v5;
  if (!sub_1E39C408C())
  {
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v7 = j__OUTLINED_FUNCTION_18();
  sub_1E39C26D0(0, v7 & 1);
  v9 = v8;

  if (v9 && *v9 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_10;
  }

LABEL_11:
  *(v2 + 40) = v9;
  v10 = sub_1E404034C(v6);
  v11 = j__OUTLINED_FUNCTION_18() & 1;

  sub_1E403E654(v2, v10, v11, a1);
}

void sub_1E3BFAD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_21_5();
  a25 = v29;
  a26 = v33;
  v35 = v34;
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35048, &qword_1E42C2C90);
  OUTLINED_FUNCTION_17_2(v38);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_31_2();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35050, &qword_1E42C2C98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_26_2();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35058, &qword_1E42C2CA0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_4_6();
  v46 = v44 - v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &a9 - v49;
  *v28 = sub_1E4201B84();
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35060, &qword_1E42C2CA8);
  sub_1E3BFB040();
  v51 = sub_1E4202744();
  v52 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v51)
  {
    v52 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  sub_1E3741EA0(v28, v26, &qword_1ECF35048, &qword_1E42C2C90);
  v53 = v26 + *(v40 + 36);
  *v53 = v52;
  *(v53 + 8) = v35;
  *(v53 + 16) = v30;
  *(v53 + 24) = v31;
  *(v53 + 32) = v32;
  *(v53 + 40) = 0;
  v54 = sub_1E4202754();
  v55 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v54)
  {
    v55 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v26, v27, &qword_1ECF35050, &qword_1E42C2C98);
  v56 = (v27 + *(v42 + 36));
  *v56 = v55;
  OUTLINED_FUNCTION_11_4(v56);
  OUTLINED_FUNCTION_69_0();
  sub_1E3741EA0(v57, v58, v59, v60);
  v61 = sub_1E3FFE5B8(0, 1);
  OUTLINED_FUNCTION_69_0();
  sub_1E3743538(v62, v63, v64, v65);
  *v37 = 0;
  *(v37 + 8) = 0;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35068, &qword_1E42C2CB0);
  OUTLINED_FUNCTION_69_0();
  sub_1E3743538(v67, v68, v69, v70);
  v71 = v37 + *(v66 + 64);
  *v71 = 0;
  *(v71 + 8) = 0;
  *(v37 + *(v66 + 80)) = v61;
  OUTLINED_FUNCTION_59_19(v50);
  OUTLINED_FUNCTION_59_19(v46);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3BFB040()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for StateIndicatorAndContextMenuButton(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32[-v10];
  v12 = type metadata accessor for StackedTextViews(0);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32[-v18];
  sub_1E3BFA644(&v32[-v18]);
  v20 = *v1;
  v21 = v1[26];
  v22 = *(v1 + *(type metadata accessor for ListUpNextLockup(0) + 32));
  *v11 = v20;
  *(v11 + 1) = v21;
  v11[16] = v22;
  v32[15] = 0;

  v23 = sub_1E42038E4();
  v24 = v34;
  v11[24] = v33;
  *(v11 + 4) = v24;
  v33 = 0x4032000000000000;
  sub_1E3929B88(v23, v25, v26);
  sub_1E4200CD4();
  v27 = *(v5 + 44);
  *&v11[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  sub_1E3BFBE88(v19, v16, type metadata accessor for StackedTextViews);
  sub_1E3BFBE88(v11, v8, type metadata accessor for StateIndicatorAndContextMenuButton);
  sub_1E3BFBE88(v16, v3, type metadata accessor for StackedTextViews);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35070, &unk_1E42C2CB8);
  v29 = v3 + *(v28 + 48);
  *v29 = 0;
  *(v29 + 8) = 0;
  sub_1E3BFBE88(v8, v3 + *(v28 + 64), type metadata accessor for StateIndicatorAndContextMenuButton);
  sub_1E3BFBEE4(v11, type metadata accessor for StateIndicatorAndContextMenuButton);
  sub_1E3BFBEE4(v19, type metadata accessor for StackedTextViews);
  v30 = OUTLINED_FUNCTION_32_0();
  sub_1E3BFBEE4(v30, v31);
  sub_1E3BFBEE4(v16, type metadata accessor for StackedTextViews);
  OUTLINED_FUNCTION_25_2();
}

__objc2_class **sub_1E3BFB2DC()
{
  result = sub_1E39C408C();
  if (result)
  {
    if (*result != _TtC8VideosUI31DownloadStateIndicatorViewModel)
    {

      return 0;
    }
  }

  return result;
}

void *sub_1E3BFB344@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_1E4201B84();
  v13 = 0;
  sub_1E3BFB41C(v2, __src);
  memcpy(__dst, __src, 0xA3uLL);
  memcpy(v15, __src, sizeof(v15));
  sub_1E3743538(__dst, v10, &qword_1ECF35118, &qword_1E42C2EB0);
  OUTLINED_FUNCTION_39_35();
  sub_1E325F6F0(v5, v6, v7);
  memcpy(&v12[7], __dst, 0xA3uLL);
  v8 = v13;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  result = memcpy((a2 + 17), v12, 0xAAuLL);
  *(a2 + 187) = 257;
  return result;
}

void *sub_1E3BFB41C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = (v8 - v7);
  type metadata accessor for StateIndicatorAndContextMenuButton(0);
  sub_1E3746E10(v9);
  v10 = sub_1E3B02B0C();
  (*(v5 + 8))(v9, v3);
  if (v10)
  {
    if (*(a1 + 16) == 1)
    {
      v11 = *a1;
      v12 = *(*(a1 + 8) + 152);

      sub_1E397F070(v11, v12, v110);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350B0, &qword_1E42D8950);
      sub_1E4200CE4();
      sub_1E4203DA4();
      sub_1E4200D94();
      v93[0] = v110[0];
      v93[1] = v110[1];
      LOBYTE(v93[2]) = v111;
      memcpy(v109, v93, 0x58uLL);
    }

    else
    {
      v109[10] = 0;
      OUTLINED_FUNCTION_35_41(0);
    }

    LOBYTE(v109[11]) = 0;
    v20 = sub_1E3BFB2DC();
    if (v20)
    {
      v21 = v20;
      v22 = *(a1 + 24);
      v23 = *(a1 + 32);
      LOBYTE(v118[0]) = v22;
      *(&v118[0] + 1) = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
      OUTLINED_FUNCTION_38_34();
      sub_1E42038F4();
      v90 = v108[0];
      if (v108[0])
      {
        OUTLINED_FUNCTION_8();
        v25 = *(v24 + 152);

        v25(v112, v26);

        OUTLINED_FUNCTION_36_37();
      }

      else
      {
        v91 = 0;
      }

      v108[0] = v22;
      *&v108[8] = v23;

      sub_1E4203914();
      OUTLINED_FUNCTION_49_32();
      sub_1E3F66914(v21, 0, v63, v64, v65, v66);
      v67 = v113;
      v68 = v114;
      v69 = v22;
      v70 = v115;
      v71 = v116;
      v72 = v117;
      LOBYTE(v118[0]) = v69;
      *(&v118[0] + 1) = v23;
      OUTLINED_FUNCTION_38_34();
      sub_1E42038F4();
      if (v108[0])
      {
        v73 = 1.0;
      }

      else
      {
        v73 = 0.0;
      }

      LOBYTE(v118[0]) = v90 ^ 1;

      sub_1E3908F18(v70, v71);

      v74 = v118[0];

      sub_1E3909004(v70, v71);
      *&v104[0] = v91;
      BYTE8(v104[0]) = 0;
      BYTE9(v104[0]) = v74;
      *&v104[1] = v67;
      *(&v104[1] + 1) = v68;
      *&v104[2] = v70;
      *(&v104[2] + 1) = v71;
      LOBYTE(v104[3]) = v72;
      *(&v104[3] + 1) = v73;
    }

    else
    {
      memset(v104, 0, 64);
    }

    memcpy(v105, v109, 0x59uLL);
    v98 = v104[0];
    v99 = v104[1];
    v100 = v104[2];
    v101 = v104[3];
    memcpy(v106, v109, 0x59uLL);
    memcpy(v94, v109, 0x59uLL);
    v95[0] = v104[0];
    v95[1] = v104[1];
    v96 = v104[2];
    v97 = v104[3];
    v94[6] = v104[0];
    v94[7] = v104[1];
    v94[8] = v104[2];
    v94[9] = v104[3];
    sub_1E3743538(v109, v118, &qword_1ECF35150, &qword_1E42C2EE0);
    OUTLINED_FUNCTION_69_0();
    sub_1E3743538(v75, v76, v77, v78);
    sub_1E3743538(v106, v118, &qword_1ECF35150, &qword_1E42C2EE0);
    OUTLINED_FUNCTION_69_0();
    sub_1E3743538(v79, v80, v81, v82);
    OUTLINED_FUNCTION_59_19(&v98);
    memcpy(v107, v105, 0x59uLL);
    sub_1E325F6F0(v107, &qword_1ECF35150, &qword_1E42C2EE0);
    memcpy(v108, v94, 0xA0uLL);
    sub_1E3BFC7A0(v108);
    memcpy(v118, v108, 0xA3uLL);
    v83 = OUTLINED_FUNCTION_146();
    __swift_instantiateConcreteTypeFromMangledNameV2(v83, v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35130, &unk_1E42C2EC8);
    sub_1E328FCF4(&qword_1ECF35138, &qword_1ECF35128, &qword_1E42C2EC0);
    sub_1E328FCF4(&qword_1ECF35140, &qword_1ECF35130, &unk_1E42C2EC8);
    sub_1E4201F44();
    OUTLINED_FUNCTION_59_19(v104);
    v61 = &qword_1ECF35150;
    v62 = &qword_1E42C2EE0;
  }

  else
  {
    v13 = sub_1E3BFB2DC();
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 24);
      v16 = *(a1 + 32);
      LOBYTE(v118[0]) = v15;
      *(&v118[0] + 1) = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
      OUTLINED_FUNCTION_38_34();
      sub_1E42038F4();
      v89 = v108[0];
      if (v108[0])
      {
        OUTLINED_FUNCTION_8();
        v18 = *(v17 + 152);

        v18(v112, v19);

        OUTLINED_FUNCTION_36_37();
      }

      else
      {
        v91 = 0;
      }

      v108[0] = v15;
      *&v108[8] = v16;

      sub_1E4203914();
      OUTLINED_FUNCTION_49_32();
      sub_1E3F66914(v14, 0, v27, v28, v29, v30);
      v31 = v113;
      v32 = v115;
      v87 = v116;
      v88 = v114;
      v86 = v117;
      LOBYTE(v118[0]) = v15;
      *(&v118[0] + 1) = v16;
      OUTLINED_FUNCTION_38_34();
      sub_1E42038F4();
      if (v15)
      {
        v33 = 1.0;
      }

      else
      {
        v33 = 0.0;
      }

      LOBYTE(v118[0]) = v15;
      *(&v118[0] + 1) = v16;
      OUTLINED_FUNCTION_38_34();
      sub_1E42038F4();
      sub_1E4203DA4();
      sub_1E4200D94();
      v107[0] = v89 ^ 1;
      *v108 = v31;
      *&v108[8] = v88;
      *&v108[16] = v32;
      *&v108[24] = v87;
      v108[32] = v86;
      *&v108[40] = v33;
      *&v108[48] = *v103;
      *&v108[64] = *&v103[16];
      *&v108[80] = *&v103[32];
      sub_1E3743538(v108, v118, &qword_1ECF35148, &qword_1E42C2ED8);

      memcpy(&v102[6], v108, 0x60uLL);
      v34 = v107[0];
      *&v118[0] = v31;
      *(&v118[0] + 1) = v88;
      *&v118[1] = v32;
      *(&v118[1] + 1) = v87;
      LOBYTE(v118[2]) = v86;
      *(&v118[2] + 1) = v33;
      v118[3] = *v103;
      v118[4] = *&v103[16];
      v118[5] = *&v103[32];
      sub_1E325F6F0(v118, &qword_1ECF35148, &qword_1E42C2ED8);
      v109[0] = v91;
      LOBYTE(v109[1]) = 0;
      BYTE1(v109[1]) = v34;
      memcpy(&v109[1] + 2, v102, 0x66uLL);
    }

    else
    {
      memset(&v109[10], 0, 32);
      OUTLINED_FUNCTION_35_41(0);
    }

    if (*(a1 + 16) == 1)
    {
      v35 = *(a1 + 8);
      OUTLINED_FUNCTION_8();
      v37 = *(v36 + 152);

      v37(v95, v38);

      if (v96)
      {
        v39 = 0;
      }

      else
      {
        v39 = *(&v95[0] + 1);
      }

      v40 = *a1;
      v41 = *(v35 + 152);

      sub_1E397F070(v40, v41, &v98);
      v43 = *(&v98 + 1);
      v42 = v98;
      v45 = *(&v99 + 1);
      v44 = v99;
      LOBYTE(v118[0]) = 0;
      v108[0] = v100;
      v46 = v100;

      OUTLINED_FUNCTION_146();
      sub_1E380E99C();

      v47 = OUTLINED_FUNCTION_146();
      sub_1E389BF58(v47, v48);
    }

    else
    {
      v39 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
    }

    memcpy(v104, v109, sizeof(v104));
    memcpy(v105, v109, sizeof(v105));
    memcpy(v106, v109, sizeof(v106));
    sub_1E3743538(v109, v118, &qword_1ECF35120, &qword_1E42C2EB8);
    v49 = OUTLINED_FUNCTION_6_121();
    sub_1E3BFC6C4(v49, v50, v51);
    sub_1E3743538(v105, v118, &qword_1ECF35120, &qword_1E42C2EB8);
    v52 = OUTLINED_FUNCTION_6_121();
    sub_1E3BFC6C4(v52, v53, v54);
    v55 = OUTLINED_FUNCTION_6_121();
    sub_1E3BFC72C(v55, v56, v57, v58, v59, v60);
    memcpy(v107, v104, sizeof(v107));
    sub_1E325F6F0(v107, &qword_1ECF35120, &qword_1E42C2EB8);
    memcpy(v108, v106, 0x70uLL);
    *&v108[112] = v39;
    *&v108[120] = 0;
    *&v108[128] = v42;
    *&v108[136] = v43;
    *&v108[144] = v44;
    *&v108[152] = v45;
    *&v108[160] = v46;
    sub_1E3BFC794(v108);
    memcpy(v118, v108, 0xA3uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35128, &qword_1E42C2EC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35130, &unk_1E42C2EC8);
    sub_1E328FCF4(&qword_1ECF35138, &qword_1ECF35128, &qword_1E42C2EC0);
    sub_1E328FCF4(&qword_1ECF35140, &qword_1ECF35130, &unk_1E42C2EC8);
    OUTLINED_FUNCTION_39_35();
    sub_1E4201F44();
    sub_1E3BFC72C(v39, 0, v42, v43, v44, v45);
    v61 = &qword_1ECF35120;
    v62 = &qword_1E42C2EB8;
  }

  sub_1E325F6F0(v109, v61, v62);
  memcpy(v118, v103, 0xA3uLL);
  return memcpy(a2, v118, 0xA3uLL);
}