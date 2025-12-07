void sub_1E405E194(int a1, int a2, uint64_t a3, uint64_t a4, int a5, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  if (a3)
  {
    sub_1E4205F14();
    if (!a4)
    {
LABEL_3:
      if (!v8)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!a4)
  {
    goto LABEL_3;
  }

  sub_1E4205F14();
  if (!v8)
  {
LABEL_4:
    sub_1E405E164();
  }

LABEL_7:
  OUTLINED_FUNCTION_4_0();
  *(swift_allocObject() + 16) = v8;
  sub_1E405E164();
}

id sub_1E405E244()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0);
  v2 = v1[6];
  v5[0] = v1[5];
  v5[1] = v2;
  v5[2] = v1[7];
  v3 = type metadata accessor for StateMachine(0, v5);
  v6.receiver = v0;
  v6.super_class = v3;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_1E405E2FC()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E3286A7C;

  return sub_1E405E01C();
}

uint64_t sub_1E405E3BC(uint64_t a1)
{
  OUTLINED_FUNCTION_20_122(a1);
  v2 = OUTLINED_FUNCTION_13_181();
  return v1(v2);
}

uint64_t sub_1E405E418(uint64_t a1)
{
  OUTLINED_FUNCTION_20_122(a1);
  v2 = OUTLINED_FUNCTION_13_181();
  return v1(v2);
}

uint64_t sub_1E405E504(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1E690D3E0]() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ScaleKey(0);

  return sub_1E42012D4();
}

uint64_t sub_1E405E564(uint64_t a1)
{
  sub_1E4202A94();
  OUTLINED_FUNCTION_0_328();
  sub_1E405F600(v1, v2);
  sub_1E4205DB4();
  type metadata accessor for ScaleKey(0);
  sub_1E42012F4();
  OUTLINED_FUNCTION_1_283();
  sub_1E405F600(v3, v4);
  return sub_1E4205DB4();
}

uint64_t sub_1E405E61C()
{
  sub_1E4207B44();
  sub_1E4202A94();
  OUTLINED_FUNCTION_0_328();
  v2 = sub_1E405F600(v0, v1);
  OUTLINED_FUNCTION_9_181(v2, v3, v4, v5, v6, v7, v8, v9, v21, v23);
  sub_1E4205DB4();
  type metadata accessor for ScaleKey(0);
  sub_1E42012F4();
  OUTLINED_FUNCTION_1_283();
  v12 = sub_1E405F600(v10, v11);
  OUTLINED_FUNCTION_9_181(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24);
  sub_1E4205DB4();
  return sub_1E4207BA4();
}

uint64_t sub_1E405E6EC(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E4202A94();
  OUTLINED_FUNCTION_0_328();
  v3 = sub_1E405F600(v1, v2);
  OUTLINED_FUNCTION_9_181(v3, v4, v5, v6, v7, v8, v9, v10, v22, v24);
  sub_1E4205DB4();
  sub_1E42012F4();
  OUTLINED_FUNCTION_1_283();
  v13 = sub_1E405F600(v11, v12);
  OUTLINED_FUNCTION_9_181(v13, v14, v15, v16, v17, v18, v19, v20, v23, v25);
  sub_1E4205DB4();
  return sub_1E4207BA4();
}

id sub_1E405E7B0()
{
  v1 = v0;
  v2 = sub_1E4202A94();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  if (v9 == *MEMORY[0x1E6980EE8])
  {
    v10 = MEMORY[0x1E6965B20];
  }

  else if (v9 == *MEMORY[0x1E6980F00])
  {
    v10 = MEMORY[0x1E6965B28];
  }

  else if (v9 == *MEMORY[0x1E6980F08])
  {
    v10 = MEMORY[0x1E6965B30];
  }

  else if (v9 == *MEMORY[0x1E6980F10])
  {
    v10 = MEMORY[0x1E6965B38];
  }

  else if (v9 == *MEMORY[0x1E6980F38])
  {
    v10 = MEMORY[0x1E6965AE0];
  }

  else if (v9 == *MEMORY[0x1E6980EF0])
  {
    v10 = MEMORY[0x1E6965B18];
  }

  else if (v9 == *MEMORY[0x1E6980EF8])
  {
    v10 = MEMORY[0x1E6965AB0];
  }

  else if (v9 == *MEMORY[0x1E6980F18])
  {
    v10 = MEMORY[0x1E6965AB8];
  }

  else if (v9 == *MEMORY[0x1E6980F30])
  {
    v10 = MEMORY[0x1E6965AD0];
  }

  else if (v9 == *MEMORY[0x1E6980F20])
  {
    v10 = MEMORY[0x1E6965AC0];
  }

  else
  {
    if (v9 != *MEMORY[0x1E6980F28])
    {
      (*(v4 + 8))(v8, v2);
      return 0;
    }

    v10 = MEMORY[0x1E6965AC8];
  }

  v11 = *v10;
  v12 = *v10;
  return v11;
}

double sub_1E405EA04(double a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8, &unk_1E42B3940);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_2();
  v9 = sub_1E4202A94();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_183();
  v13 = OUTLINED_FUNCTION_31_5();
  if (__swift_getEnumTagSinglePayload(v13, v14, v9) == 1)
  {
    sub_1E39DE02C(v3);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_5_234();
    v16(v15);
    v17 = sub_1E405EB48(v4, a3);
    (*(v11 + 8))(v4, v9);
    return v17 * a1;
  }

  return a1;
}

double sub_1E405EB48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = type metadata accessor for ScaleKey(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = sub_1E4202A94();
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  (*(v6 + 16))(v15 + *(v12 + 28), a2, v4);
  if (_MergedGlobals_268 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = qword_1EE28CB48;
  if (*(qword_1EE28CB48 + 16) && (v18 = sub_1E405F1D4(v15), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
  }

  else
  {
    swift_endAccess();
    v21 = sub_1E405E7B0();
    v22 = sub_1E3B02C14();
    CTFontDescriptorGetTextStyleSize();

    v23 = sub_1E405E7B0();
    sub_1E3B02E88(v10);
    v24 = sub_1E3B02C14();
    (*(v6 + 8))(v10, v4);
    CTFontDescriptorGetTextStyleSize();

    v20 = 0.0 / 0.0;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = qword_1EE28CB48;
    sub_1E405F2E8(v15, isUniquelyReferenced_nonNull_native, 0.0 / 0.0);
    qword_1EE28CB48 = v27;
  }

  swift_endAccess();
  sub_1E405F43C(v15);
  return v20;
}

uint64_t sub_1E405EE34()
{
  type metadata accessor for ScaleKey(0);
  sub_1E405F88C(&qword_1EE28CB50);
  result = sub_1E4205CB4();
  qword_1EE28CB48 = result;
  return result;
}

uint64_t sub_1E405EEA0()
{
  v1 = v0;

  return sub_1E4202AB4();
}

double sub_1E405EEC8(double a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8, &unk_1E42B3940);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_2();
  v7 = sub_1E4202A94();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_183();
  v11 = OUTLINED_FUNCTION_31_5();
  if (__swift_getEnumTagSinglePayload(v11, v12, v7) == 1)
  {
    (*(v9 + 104))(v3, *MEMORY[0x1E6980EF8], v7);
    v13 = OUTLINED_FUNCTION_31_5();
    if (__swift_getEnumTagSinglePayload(v13, v14, v7) != 1)
    {
      sub_1E39DE02C(v2);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_5_234();
    v16(v15);
  }

  v17 = sub_1E405EB48(v3, v1);
  (*(v9 + 8))(v3, v7);
  return v17 * a1;
}

double sub_1E405F040(uint64_t a1, double a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8, &unk_1E42B3940);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_2();
  if (a1 && (type metadata accessor for TextLayout(), OUTLINED_FUNCTION_20_2(), (v7 = swift_dynamicCastClass()) != 0) && (v8 = (*(*v7 + 1688))(), v8 != 27))
  {
    sub_1E3E3B33C(v8, v2);
  }

  else
  {
    sub_1E4202A94();
    v9 = OUTLINED_FUNCTION_31_5();
    __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
  }

  v12 = sub_1E405EEC8(a2);
  sub_1E39DE02C(v2);
  return v12;
}

double sub_1E405F150(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1E405EEC8(*&a1);
  }

  return result;
}

uint64_t type metadata accessor for ScaleKey(uint64_t a1)
{
  result = qword_1EE28F6C0;
  if (!qword_1EE28F6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E405F1D4(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E4202A94();
  sub_1E405F600(&qword_1EE288740, MEMORY[0x1E6980F40]);
  sub_1E4205DB4();
  type metadata accessor for ScaleKey(0);
  sub_1E42012F4();
  sub_1E405F600(&qword_1EE289CD8, MEMORY[0x1E697E730]);
  sub_1E4205DB4();
  v2 = sub_1E4207BA4();

  return sub_1E405F644(a1, v2);
}

uint64_t sub_1E405F2E8(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v7 = type metadata accessor for ScaleKey(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = sub_1E405F1D4(a1);
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE60, &qword_1E42E7A98);
  result = sub_1E4207644();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1E405F1D4(a1);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_9:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v13 = result;
LABEL_5:
  v17 = *v4;
  if (v14)
  {
    *(v17[7] + 8 * v13) = a3;
  }

  else
  {
    sub_1E405F498(a1, v9);
    return sub_1E405F4FC(v13, v9, v17, a3);
  }

  return result;
}

uint64_t sub_1E405F43C(uint64_t a1)
{
  v2 = type metadata accessor for ScaleKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E405F498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScaleKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E405F4FC(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = type metadata accessor for ScaleKey(0);
  result = sub_1E405F59C(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_1E405F59C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScaleKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E405F600(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E405F644(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ScaleKey(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1E405F498(*(v2 + 48) + v12 * v10, v8);
      if (MEMORY[0x1E690D3E0](v8, a1))
      {
        v13 = sub_1E42012D4();
        sub_1E405F43C(v8);
        if (v13)
        {
          return v10;
        }
      }

      else
      {
        sub_1E405F43C(v8);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1E405F7D4(uint64_t a1)
{
  result = sub_1E4202A94();
  if (v2 <= 0x3F)
  {
    result = sub_1E42012F4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E405F88C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ScaleKey(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E405F9DC()
{
  v1 = (*(*v0 + 888))();
  v2 = v1;
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    type metadata accessor for ViewModel();
    OUTLINED_FUNCTION_20_2();
    sub_1E42076C4();
    OUTLINED_FUNCTION_50();
  }

  else
  {

    sub_1E42079D4();
    type metadata accessor for ViewModel();

    return v2;
  }

  return v3;
}

uint64_t sub_1E405FA80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE68, &unk_1E42E7B20);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v8 = (*(*v0 + 888))(v5);
  if (v8 >> 62)
  {
    type metadata accessor for ViewModel();
    OUTLINED_FUNCTION_20_2();
    v9 = sub_1E42076C4();
  }

  else
  {

    sub_1E42079D4();
    type metadata accessor for ViewModel();
    v9 = v8;
  }

  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
  sub_1E42005C4();
  sub_1E328FCF4(&qword_1ECF3EE70, &qword_1ECF3EE68, &unk_1E42E7B20);
  v10 = sub_1E42006B4();
  (*(v3 + 8))(v7, v1);
  return v10;
}

double sub_1E405FCC8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_284();
  sub_1E4064178(v0, v1);
  sub_1E41FE8F4();

  return result;
}

uint64_t sub_1E405FDD4(unint64_t a1)
{

  v4 = sub_1E38BBA04(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v8[2] = v1;
    v8[3] = a1;
    sub_1E405FEC8(v7, sub_1E3B536D0, v8);
  }
}

void sub_1E405FF80(unint64_t a1)
{
  sub_1E405FCC8();
  v3 = sub_1E32AE9B0(v2);

  if (v3 == sub_1E32AE9B0(a1) && (sub_1E405FCC8(), v5 = sub_1E38BBA04(v4, a1), , (v5 & 1) != 0))
  {
    sub_1E405FCC8();
    v7 = v6;
    v19 = sub_1E32AE9B0(v6);
    if (v19)
    {
      v8 = sub_1E32AE9B0(a1);
      v9 = 0;
      v18 = v7 & 0xC000000000000001;
      while (2)
      {
        sub_1E34AF4E4(v9, v18 == 0, v7);
        if (v18)
        {
          v10 = MEMORY[0x1E6911E60](v9, v7);
        }

        else
        {
          v10 = *(v7 + 32 + 8 * v9);
        }

        if (__OFADD__(v9++, 1))
        {
LABEL_29:
          __break(1u);
          return;
        }

        for (i = 0; ; ++i)
        {
          if (v8 == i)
          {
            v14 = 0;
            goto LABEL_20;
          }

          if ((a1 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x1E6911E60](i, a1);
          }

          else
          {
            if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v13 = *(a1 + 8 * i + 32);
          }

          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          type metadata accessor for ViewModel();
          if (static ViewModel.== infix(_:_:)(v13, v10))
          {
            break;
          }
        }

        v17 = *(*v13 + 648);

        v14 = v17(v15);

LABEL_20:
        (*(*v10 + 656))(v14);

        if (v9 != v19)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {

    sub_1E405FDD4(v16);
  }
}

uint64_t sub_1E4060210()
{

  v1 = OBJC_IVAR____TtC8VideosUI16ContextMenuState___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E40602A8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  sub_1E41FE924();
  return v0;
}

uint64_t sub_1E40602F8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController__viewModel, a2);

  sub_1E3B50380(v4);

  return v4[0];
}

double sub_1E406034C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController__viewModel, a2);
  v5[0] = a1;

  sub_1E3B50420(v5);

  return result;
}

uint64_t sub_1E40603BC()
{

  sub_1E3B50380(&v1);

  return v1;
}

double sub_1E4060408(uint64_t a1)
{
  v2 = a1;

  sub_1E3B50420(&v2);

  return result;
}

uint64_t sub_1E4060464()
{

  v0 = sub_1E38074D0();

  return v0;
}

unint64_t sub_1E40604A8()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI21ContextMenuController____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI21ContextMenuController____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_1E42074B4();

    v3 = sub_1E41E1364(v0);
    MEMORY[0x1E69109E0](v3);

    MEMORY[0x1E69109E0](41, 0xE100000000000000);
    v2 = 0xD000000000000018;
    *v1 = 0xD000000000000018;
    v1[1] = 0x80000001E428F100;
  }

  return v2;
}

uint64_t sub_1E4060588()
{
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_50();
  return sub_1E40605C0(v0);
}

uint64_t sub_1E40605C0(void *a1)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_presentingViewFrame);
  *v4 = 0u;
  v4[1] = 0u;
  *(v1 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_dialogMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_hasAppeared) = 0;
  v5 = OBJC_IVAR____TtC8VideosUI21ContextMenuController_contextMenuState;
  type metadata accessor for ContextMenuState(0);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  sub_1E41FE924();
  *(v2 + v5) = v6;
  v8 = OBJC_IVAR____TtC8VideosUI21ContextMenuController__menuViewModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30530, &qword_1E42B1BC0);
  v54[0] = 0;
  *(v2 + v8) = sub_1E3B508D0();
  *(v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_menuDocumentController) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_prefetchWorkToken) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_isFetched) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_libContextMenuObserver) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_downloadAction) = 0;
  v9 = (v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController____lazy_storage___logPrefix);
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC8VideosUI21ContextMenuController__viewModel;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE78, &qword_1E42E7B58);
  v52[0].receiver = a1;

  *(v2 + v10) = sub_1E3B508D0();
  swift_endAccess();
  v11 = sub_1E3B500B4();

  v53 = sub_1E40602F8(v12, v13);
  type metadata accessor for ViewModel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39490, &qword_1E42D4868);
  if (swift_dynamicCast())
  {
    sub_1E3251BE8(v52, v54);
    sub_1E327F454(v54, v52);
    if (swift_dynamicCast())
    {
      v14 = v53;
    }

    else
    {
      v14 = 0;
    }

    sub_1E4060408(v14);
    v15 = v55;
    v16 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v17 = (*(v16 + 16))(v15, v16);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v7;
    }

    sub_1E405FF80(v18);

    __swift_destroy_boxed_opaque_existential_1Tm(v54);
  }

  else
  {
    OUTLINED_FUNCTION_28_0();
    v19 = sub_1E325F7A8(v52, &qword_1ECF3C798, &qword_1E42DDF20);
    v21 = sub_1E40602F8(v19, v20);
    v22 = (*(*v21 + 544))(v21);

    if (v22)
    {
      v23 = [v22 contextMenuEventDataSource];

      if (v23)
      {
        v24 = [v23 preActionDocumentDataSource];

        if (v24)
        {
          sub_1E40602F8(v25, v26);
          OUTLINED_FUNCTION_26_0();
          v28 = (*(v27 + 648))();

          if (v28 && (OUTLINED_FUNCTION_5_0(v28 + 48, v54), Strong = swift_unknownObjectWeakLoadStrong(), , Strong))
          {
            v30 = OBJC_IVAR____TtC8VideosUI21ContextMenuController_prefetchWorkToken;
            v31 = *(v11 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_prefetchWorkToken);
            if (v31)
            {
              [v31 cancel];
            }

            if (_MergedGlobals_44 != -1)
            {
              swift_once();
            }

            v32 = qword_1EE28ADC8;
            OUTLINED_FUNCTION_4_0();
            v33 = swift_allocObject();
            swift_weakInit();
            type metadata accessor for ContextMenuPrefetchOperation();
            OUTLINED_FUNCTION_6_19();

            v34 = objc_allocWithZone(&OBJC_IVAR____TtC8VideosUI16ContextMenuState___observationRegistrar);
            v35 = v24;
            v36 = Strong;

            ObjectType = swift_getObjectType();
            *&v34[OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_prefetchMenuDocumentController] = 0;
            *&v34[OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_documentDataSource] = v35;
            *&v34[OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_appContext] = v36;
            *&v34[OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_contextData] = 0;
            v38 = &v34[OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_completionHandler];
            *v38 = sub_1E4064228;
            v38[1] = v33;
            v52[0].receiver = v34;
            v52[0].super_class = ObjectType;
            v39 = [(objc_super *)v52 init];
            [*(v32 + 16) addOperation_];
            v40 = [objc_allocWithZone(MEMORY[0x1E69DF690]) initWithOperation_];

            v41 = *(v11 + v30);
            *(v11 + v30) = v40;
          }

          else
          {
          }
        }
      }
    }
  }

  v42 = objc_opt_self();
  v43 = [v42 defaultCenter];
  OUTLINED_FUNCTION_28_88(v43, v44, v45, v46, @"VUIUpNextRequestDidFinishNotification");

  v47 = [v42 defaultCenter];
  OUTLINED_FUNCTION_28_88(v47, v48, v49, v50, @"VUIFavoritesRequestDidFinishNotification");

  return v11;
}

void sub_1E4060B3C(uint64_t result, uint64_t a2)
{
  if ((*(v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_isFetched) & 1) == 0)
  {
    v7 = sub_1E40602F8(result, a2);
    type metadata accessor for ViewModel();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39490, &qword_1E42D4868);
    if (swift_dynamicCast())
    {
      sub_1E3251BE8(v6, v8);
      v3 = v9;
      v4 = v10;
      v5 = __swift_project_boxed_opaque_existential_1(v8, v9);
      sub_1E4063CBC(v5, v2, v3, v4);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
    }

    else
    {
      OUTLINED_FUNCTION_28_0();
      sub_1E325F7A8(v6, &qword_1ECF3C798, &qword_1E42DDF20);
      sub_1E4060C14();
    }
  }
}

void sub_1E4060C14()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v82 - v10;
  v12 = sub_1E324FBDC();
  v13 = *(v4 + 16);
  v85 = v12;
  v86 = v4 + 16;
  v84 = v13;
  (v13)(v11);

  v14 = sub_1E41FFC94();
  v15 = sub_1E4206814();

  v16 = os_log_type_enabled(v14, v15);
  v87 = v8;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v90[0] = swift_slowAlloc();
    *v17 = 136315394;
    v18 = sub_1E40604A8();
    v20 = OUTLINED_FUNCTION_32_89(v18, v19);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v23 = sub_1E4061F68(v21, v22);
    v25 = OUTLINED_FUNCTION_32_89(v23, v24);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_1E323F000, v14, v15, "%s fetchMenuItems: canonicalId:%s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v26 = *(v4 + 8);
  v27 = OUTLINED_FUNCTION_74();
  v28 = v26(v27);
  sub_1E40602F8(v28, v29);
  OUTLINED_FUNCTION_26_0();
  v31 = (*(v30 + 544))();

  if (v31)
  {
    v32 = [v31 contextMenuEventDataSource];

    if (v32)
    {
      v33 = [v32 documentDataSource];

      if (v33)
      {
        sub_1E40602F8(v34, v35);
        OUTLINED_FUNCTION_26_0();
        v37 = (*(v36 + 648))();

        if (!v37 || (OUTLINED_FUNCTION_5_0(v37 + 48, &v93), Strong = swift_unknownObjectWeakLoadStrong(), , !Strong))
        {

          goto LABEL_39;
        }

        v39 = [v33 prefetchData];
        v83 = Strong;
        if (v39 && (v40 = v39, v41 = [v39 jsonData], v40, v41))
        {
          v42 = sub_1E4205C64();

          *&v91 = 25705;
          *(&v91 + 1) = 0xE200000000000000;
          sub_1E4207414();
          sub_1E375D7E8(v42, &v91, v90);

          sub_1E375D84C(v90);
          if (*(&v92 + 1))
          {
            v43 = swift_dynamicCast();
            if (v43)
            {
              v44 = v90[0];
            }

            else
            {
              v44 = 0;
            }

            if (v43)
            {
              v45 = v90[1];
            }

            else
            {
              v45 = 0;
            }

LABEL_20:
            v46 = v87;
            v84(v87, v85, v2);

            v47 = sub_1E41FFC94();
            v48 = sub_1E4206814();

            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              v82 = v44;
              v50 = v49;
              v86 = swift_slowAlloc();
              v90[0] = v86;
              *v50 = 136315650;
              LODWORD(v84) = v48;
              v51 = sub_1E40604A8();
              OUTLINED_FUNCTION_32_89(v51, v52);
              OUTLINED_FUNCTION_6_19();

              *(v50 + 4) = v46;
              v85 = v4;
              *(v50 + 12) = 2080;
              v55 = sub_1E4061F68(v53, v54);
              OUTLINED_FUNCTION_32_89(v55, v56);
              OUTLINED_FUNCTION_6_19();

              *(v50 + 14) = v46;
              *(v50 + 22) = 2080;
              if (v45)
              {
                v57 = v82;
              }

              else
              {
                v57 = 0;
              }

              if (v45)
              {
                v58 = v45;
              }

              else
              {
                v58 = 0xE000000000000000;
              }

              sub_1E3270FC8(v57, v58, v90);
              OUTLINED_FUNCTION_6_19();

              *(v50 + 24) = v46;
              _os_log_impl(&dword_1E323F000, v47, v84, "%s fetchMenuItems: canonicalId:%s id:%s", v50, 0x20u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_6_0();
              OUTLINED_FUNCTION_6_0();

              v59 = v87;
            }

            else
            {

              v59 = v46;
            }

            v60 = (v26)(v59, v2);
            sub_1E40602F8(v60, v61);
            v62 = sub_1E39C2CD0();
            v64 = v63;

            v67 = v83;
            if (v64)
            {
              sub_1E40602F8(v65, v66);
              v90[3] = &unk_1F5D5D528;
              v90[4] = &off_1F5D5C858;
              LOBYTE(v90[0]) = 0;
              v68 = *(**sub_1E3CFEA54() + 376);

              v69 = v68(v62, v64);

              v70 = sub_1E39C29F0(v90, v69 & 1);

              __swift_destroy_boxed_opaque_existential_1Tm(v90);
              v71 = [v33 prefetchData];
              if (v71)
              {
                v72 = v71;
                v73 = sub_1E3CA2FB8(v71);
                if (v73)
                {
                  v74 = v73;
                  strcpy(&v91, "teamIsFollowed");
                  HIBYTE(v91) = -18;
                  sub_1E4207414();
                  *(&v92 + 1) = MEMORY[0x1E69E6370];
                  LOBYTE(v91) = v70 & 1;
                  sub_1E329504C(&v91, v89);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v88 = v74;
                  sub_1E377DF14(v89, v90, isUniquelyReferenced_nonNull_native);
                  v76 = v88;
                  sub_1E375D84C(v90);
                  if (v76)
                  {
                    v77 = sub_1E4205C44();
                  }

                  else
                  {
                    v77 = 0;
                  }

                  [v72 setPrefetchedDataDict_];
                }

                else
                {
                  [v72 setPrefetchedDataDict_];
                }
              }
            }

            type metadata accessor for ContextMenuDocumentController();
            v78 = OUTLINED_FUNCTION_51_1();
            v79 = sub_1E3F41450(v33, v67, 0, v78 & 1);

            v80 = OBJC_IVAR____TtC8VideosUI21ContextMenuController_menuDocumentController;
            *(v1 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_menuDocumentController) = v79;

            v81 = *(v1 + v80);
            if (v81)
            {
              OUTLINED_FUNCTION_3_0(v81 + 16, v90);
              *(v81 + 24) = &off_1F5D93C78;
              swift_unknownObjectWeakAssign();
            }

            goto LABEL_39;
          }
        }

        else
        {
          v91 = 0u;
          v92 = 0u;
        }

        sub_1E325F7A8(&v91, &unk_1ECF296E0, &unk_1E4298030);
        v44 = 0;
        v45 = 0;
        goto LABEL_20;
      }
    }
  }

LABEL_39:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E406143C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  v13 = sub_1E324FBDC();
  v45 = *(v5 + 16);
  v46 = v13;
  v45(v12);

  v14 = sub_1E41FFC94();
  v15 = sub_1E4206814();

  v16 = os_log_type_enabled(v14, v15);
  v49 = v0;
  if (v16)
  {
    OUTLINED_FUNCTION_6_21();
    v17 = OUTLINED_FUNCTION_29_98();
    v48 = v3;
    v18 = v17;
    v50[0] = v17;
    *v5 = 136315138;
    v19 = sub_1E40604A8();
    v21 = v2;
    v22 = v9;
    v23 = sub_1E3270FC8(v19, v20, v50);

    *(v5 + 4) = v23;
    v9 = v22;
    v2 = v21;
    _os_log_impl(&dword_1E323F000, v14, v15, "%s update", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v3 = v48;
    OUTLINED_FUNCTION_6_0();
    v5 = v47;
    OUTLINED_FUNCTION_6_0();
  }

  v24 = *(v5 + 8);
  v24(v12, v3);
  v50[5] = v2;
  type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39490, &qword_1E42D4868);
  v25 = swift_dynamicCast();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v27 = v49;
  }

  else
  {
    v27 = v49;
    v28 = sub_1E40602F8(v25, v26);

    if (v28 != v2)
    {
      (v45)(v9, v46, v3);

      v29 = v9;
      v30 = sub_1E41FFC94();
      v31 = sub_1E4206814();

      if (os_log_type_enabled(v30, v31))
      {
        OUTLINED_FUNCTION_6_21();
        v32 = OUTLINED_FUNCTION_29_98();
        v48 = v3;
        v33 = v32;
        v50[0] = v32;
        *v5 = 136315138;
        v34 = sub_1E40604A8();
        v36 = sub_1E3270FC8(v34, v35, v50);

        *(v5 + 4) = v36;
        _os_log_impl(&dword_1E323F000, v30, v31, "%s update: viewModel changed, discard items", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v37 = v48;
        v38 = v29;
      }

      else
      {

        v38 = v29;
        v37 = v3;
      }

      v24(v38, v37);
      *(v27 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_isFetched) = 0;
    }
  }

  sub_1E406034C(v39, v40);
  type metadata accessor for LibLockupViewModel(0);
  v41 = swift_dynamicCastClass();
  if (v41)
  {
    v42 = v41;
    v43 = OBJC_IVAR____TtC8VideosUI21ContextMenuController_hasAppeared;
    OUTLINED_FUNCTION_5_0(v27 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_hasAppeared, v50);
    if (*(v27 + v43) == 1)
    {

      sub_1E4063ACC(v42, v27);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E40617F8(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  OUTLINED_FUNCTION_15_0(a2 + 16, a2);
  if (swift_weakLoadStrong())
  {

    sub_1E405FF80(v2);
  }

  return result;
}

void sub_1E4061870(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5 = a2;
    v6 = sub_1E3744600(a1);
    v7 = objc_allocWithZone(VUIActionShareSheet);
    v8 = sub_1E3CA295C(v6, a2);
  }

  else
  {
    sub_1E3280A90(0, &qword_1ECF3EE80, off_1E87281B8);
    v9 = sub_1E3744600(a1);
    v10 = (v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_presentingViewFrame);
    OUTLINED_FUNCTION_5_0(v10, v12);
    v8 = sub_1E4061954(v9, *v10, v10[1], v10[2], v10[3]);
  }

  v11 = v8;
  [objc_opt_self() shareMediaWithShareSheet_];
}

id sub_1E4061954(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = sub_1E4205C44();

  v11 = [v9 initWithContextData:v10 sourceRect:{a2, a3, a4, a5}];

  return v11;
}

id sub_1E4061A0C(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC8VideosUI21ContextMenuController_downloadAction;
  OUTLINED_FUNCTION_3_0(v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_downloadAction, v22);
  result = *(v2 + v5);
  if (result)
  {
    return [result performAction:0 confirmBeforeStopDownloading:1 prefer3DOrImmersiveDownload:a2 & 1];
  }

  v7 = [objc_allocWithZone(VUIDownloadButtonActionHandler) initWithViewModel_];
  v8 = *(v2 + v5);
  *(v2 + v5) = v7;

  *&v20[0] = sub_1E40602F8(v9, v10);
  type metadata accessor for ViewModel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36F10, &unk_1E42CAA40);
  if (swift_dynamicCast())
  {
    sub_1E3251BE8(&v15, v21);
    swift_beginAccess();
    v11 = *(v2 + v5);
    if (v11)
    {
      swift_endAccess();
      sub_1E327F454(v21, v20);
      v12 = swift_allocObject();
      sub_1E3251BE8(v20, v12 + 16);
      v18 = sub_1E4063F18;
      v19 = v12;
      *&v15 = MEMORY[0x1E69E9820];
      *(&v15 + 1) = 1107296256;
      v16 = sub_1E3CE404C;
      v17 = &block_descriptor_160;
      v13 = _Block_copy(&v15);
      v14 = v11;

      [v14 setPresentAlertBlock_];
      _Block_release(v13);

      __swift_destroy_boxed_opaque_existential_1Tm(v21);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      swift_endAccess();
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_0();
    sub_1E325F7A8(&v15, &qword_1ECF36F18, qword_1E42E7B60);
  }

  result = *(v2 + v5);
  if (result)
  {
    return [result performAction:0 confirmBeforeStopDownloading:1 prefer3DOrImmersiveDownload:a2 & 1];
  }

  return result;
}

double sub_1E4061C34(uint64_t a1)
{
  if (sub_1E40603BC())
  {
    type metadata accessor for LibLockupViewModel(0);
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_26_0();
      (*(v3 + 1672))(a1);
    }
  }

  return result;
}

uint64_t sub_1E4061CD4()
{
}

uint64_t sub_1E4061D7C()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_libContextMenuObserver))
  {

    sub_1E42004E4();
  }

  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 removeObserver:v1 name:@"VUIUpNextRequestDidFinishNotification" object:0];

  v4 = [v2 defaultCenter];
  [v4 removeObserver:v1 name:@"VUIFavoritesRequestDidFinishNotification" object:0];

  v5 = sub_1E3B4FF80();

  return v5;
}

uint64_t sub_1E4061EE4()
{
  v0 = sub_1E4061D7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E4061F68(uint64_t a1, uint64_t a2)
{
  sub_1E40602F8(a1, a2);
  v2 = sub_1E39C2CD0();
  v4 = v3;

  if (!v4)
  {
    v7 = sub_1E40602F8(v5, v6);
    sub_1E39BE4D0();
    OUTLINED_FUNCTION_50();

    if (!v7)
    {
      return 0;
    }

    v2 = sub_1E39BD118(0xD00000000000001ALL, 0x80000001E428F0E0, v7);

    if (v2)
    {
      v8 = sub_1E39BD118(0xD000000000000012, 0x80000001E426EC50, v2);

      if (v8)
      {
        v9 = sub_1E39BD118(0x6863746566657270, 0xEE00617461446465, v8);

        if (v9)
        {
          sub_1E3277E60(0x6449776F6873, 0xE600000000000000, v9, &v28);
          if (v29)
          {
            if (OUTLINED_FUNCTION_30_84(v10, v11, v12, MEMORY[0x1E69E6158], v13, v14, v15, v16, v25, v27, v28))
            {
              v2 = v25;

              return v2;
            }
          }

          else
          {
            sub_1E325F7A8(&v28, &unk_1ECF296E0, &unk_1E4298030);
          }

          sub_1E3277E60(25705, 0xE200000000000000, v9, &v28);

          if (v29)
          {
            if (OUTLINED_FUNCTION_30_84(v17, v18, v19, MEMORY[0x1E69E6158], v20, v21, v22, v23, v25, v27, v28))
            {
              return v26;
            }
          }

          else
          {
            sub_1E325F7A8(&v28, &unk_1ECF296E0, &unk_1E4298030);
          }
        }
      }

      return 0;
    }
  }

  return v2;
}

void sub_1E4062140(uint64_t a1, double a2)
{
  v2 = sub_1E41FDF24();
  if (!v2)
  {
    v44 = 0u;
    v45 = 0u;
    goto LABEL_7;
  }

  *&v44 = sub_1E4205F14();
  *(&v44 + 1) = v3;

  sub_1E4207414();
  sub_1E375D7E8(v2, &v44, v42);

  sub_1E375D84C(v42);
  if (!*(&v45 + 1))
  {
LABEL_7:
    sub_1E325F7A8(&v44, &unk_1ECF296E0, &unk_1E4298030);
    v12 = 0;
    goto LABEL_8;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
  OUTLINED_FUNCTION_27_96(v4, v5, v6, v7, v8, v9, v10, v11, v37, v38, v40, v42[0]);
  if (swift_dynamicCast())
  {
    v12 = v42[0];
  }

  else
  {
    v12 = 0;
  }

LABEL_8:
  sub_1E41FDF14();
  if (v43)
  {
    v13 = swift_dynamicCast();
    if (v13)
    {
      v14 = v44;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = *(&v44 + 1);
    }

    else
    {
      v15 = 0;
    }

    if (v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_1E325F7A8(v42, &unk_1ECF296E0, &unk_1E4298030);
    v14 = 0;
    v15 = 0;
    if (v12)
    {
LABEL_16:

      return;
    }
  }

  v16 = sub_1E41494A8(v14, v15);
  if (v16 || (v18 = sub_1E4061F68(v16, v17), !v15))
  {

    goto LABEL_30;
  }

  if (v14 != v18 || v15 != v19)
  {
    v21 = sub_1E42079A4();

    if (v21)
    {
      if (v2)
      {
        goto LABEL_26;
      }

LABEL_32:
      v44 = 0u;
      v45 = 0u;
      goto LABEL_33;
    }

LABEL_30:

    return;
  }

  if (!v2)
  {
    goto LABEL_32;
  }

LABEL_26:
  v39 = sub_1E4205F14();
  v41 = v22;
  sub_1E4207414();
  sub_1E375D7E8(v2, &v44, v42);

  sub_1E375D84C(v42);
  if (!*(&v45 + 1))
  {
LABEL_33:
    v36 = &v44;
    goto LABEL_34;
  }

  v23 = sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
  OUTLINED_FUNCTION_27_96(v23, v24, v25, v26, v27, v28, v29, v30, v37, v39, v41, v42[0]);
  if (swift_dynamicCast())
  {
    v31 = v42[0];
    v32 = [v42[0] integerValue];
    v33 = v32 == 0;
    v35 = sub_1E40602F8(v32, v34);
    LOBYTE(v44) = 0;
    v43 = MEMORY[0x1E69E6370];
    LOBYTE(v42[0]) = v33;
    (*(*v35 + 784))(&v44, v42, &unk_1F5D5D528, &off_1F5D5C858);

    v36 = v42;
LABEL_34:
    sub_1E325F7A8(v36, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E4060C14();
}

void sub_1E4062590()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - v21;
  v23 = *(v1 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_prefetchWorkToken);
  *(v1 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_prefetchWorkToken) = 0;

  if (v9)
  {
    v24 = *(v1 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_isFetched);

    v25 = sub_1E324FBDC();
    v26 = *(v12 + 16);
    if (v24 == 1)
    {
      v26(v22, v25, v10);
      v27 = sub_1E41FFC94();
      v28 = sub_1E4206814();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1E323F000, v27, v28, "ContextMenu: Ignore preAction fetch result since it has fetched full context menu", v29, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      (*(v12 + 8))(v22, v10);
    }

    else
    {
      v26(v19, v25, v10);
      v36 = sub_1E41FFC94();
      v37 = sub_1E4206814();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1E323F000, v36, v37, "ContextMenu: fetched preAction document", v38, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      (*(v12 + 8))(v19, v10);
      sub_1E4062920();
    }
  }

  else
  {
    v30 = sub_1E324FBDC();
    (*(v12 + 16))(v16, v30, v10);
    sub_1E37CDABC(v7, v5, v3);
    v31 = sub_1E41FFC94();
    v32 = sub_1E4206814();
    sub_1E37CD868(v7, v5, v3);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_6_21();
      v40 = swift_slowAlloc();
      v41 = v7;
      v44 = v40;
      *v33 = 136315138;
      v42 = v5;
      v43 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE88, &unk_1E42E7D10);
      v34 = sub_1E42070D4();
      sub_1E3270FC8(v34, v35, &v44);
      OUTLINED_FUNCTION_6_19();

      *(v33 + 4) = v3;
      _os_log_impl(&dword_1E323F000, v31, v32, "ContextMenu: failed to fetch preAction document with error %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v12 + 8))(v16, v10);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E4062920()
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

  v12.n128_f64[0] = sub_1E4060408(v11);
  if ((*(*v3 + 576))(v12))
  {
    OUTLINED_FUNCTION_26_0();
    v14 = (*(v13 + 152))();
  }

  else
  {
    v14 = 0;
  }

  v15 = OBJC_IVAR____TtC8VideosUI21ContextMenuController_dialogMetrics;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_dialogMetrics, &v79);
  *(v1 + v15) = v14;

  v17 = (*(*v3 + 464))(v16);
  v18 = MEMORY[0x1E69E7CC0];
  if (!v17)
  {
LABEL_55:
    sub_1E405FF80(v18);
    v58 = sub_1E324FBDC();
    (*(v6 + 16))(v10, v58, v4);

    v59 = sub_1E41FFC94();
    v60 = sub_1E4206814();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = OUTLINED_FUNCTION_6_21();
      *v61 = 134217984;
      v62 = sub_1E32AE9B0(v18);

      *(v61 + 4) = v62;

      _os_log_impl(&dword_1E323F000, v59, v60, "ContextMenu: did update menu with %ld items", v61, 0xCu);
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v6 + 8))(v10, v4);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v19 = v17;
  v63 = v10;
  v64 = v6;
  v65 = v4;
  v78 = MEMORY[0x1E69E7CC0];
  v20 = sub_1E32AE9B0(v17);
  v21 = 0;
  v22 = v19 & 0xC000000000000001;
  v23 = v19 & 0xFFFFFFFFFFFFFF8;
  v66 = v19;
  v67 = v20;
  v24 = v19 + 32;
  v71 = v23;
  v72 = v22;
  v70 = v24;
  while (1)
  {
    if (v21 == v20)
    {

      v4 = v65;
      v6 = v64;
      v10 = v63;
      goto LABEL_55;
    }

    if (v22)
    {
      v26 = MEMORY[0x1E6911E60](v21, v66);
      v25 = v26;
    }

    else
    {
      if (v21 >= *(v23 + 16))
      {
        goto LABEL_60;
      }

      v25 = *(v24 + 8 * v21);
    }

    v29 = __OFADD__(v21++, 1);
    if (v29)
    {
      break;
    }

    v77 = v25[49];
    v76 = 231;
    sub_1E3742F1C(v26, v27, v28);
    sub_1E4206254();
    sub_1E4206254();
    if (v75[0] == v75[4] && v75[1] == v75[5])
    {

LABEL_18:
      v33 = (*(*v25 + 464))(v32);
      if (!v33)
      {
        goto LABEL_36;
      }

      v34 = v33;
      v35 = v33 >> 62;
      if (v33 >> 62)
      {
        v36 = sub_1E4207384();
      }

      else
      {
        v36 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v37 = v18 >> 62;
      if (v18 >> 62)
      {
        v38 = sub_1E4207384();
      }

      else
      {
        v38 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v39 = v38 + v36;
      if (__OFADD__(v38, v36))
      {
        goto LABEL_61;
      }

      v74 = v36;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v37)
      {
        v41 = 0;
      }

      else
      {
        v41 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      if (v41 != 1 || (v42 = v18 & 0xFFFFFFFFFFFFFF8, v39 > *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
      {
        if (v37)
        {
          sub_1E4207384();
        }

        v18 = sub_1E4207514();
        v42 = v18 & 0xFFFFFFFFFFFFFF8;
      }

      v43 = *(v42 + 16);
      v44 = (*(v42 + 24) >> 1) - v43;
      v45 = v42 + 8 * v43;
      v73 = v42;
      if (v35)
      {
        v48 = sub_1E4207384();
        if (v48)
        {
          v49 = v48;
          v50 = sub_1E4207384();
          if (v44 < v50)
          {
            goto LABEL_65;
          }

          if (v49 < 1)
          {
            goto LABEL_66;
          }

          v68 = v50;
          v69 = v18;
          v51 = v45 + 32;
          sub_1E328FCF4(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0);
          for (i = 0; i != v49; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
            v53 = sub_1E3797EB0(v75, i, v34);
            v55 = *v54;

            (v53)(v75, 0);
            *(v51 + 8 * i) = v55;
          }

          v18 = v69;
          v20 = v67;
          v46 = v68;
LABEL_45:

          v23 = v71;
          v22 = v72;
          v24 = v70;
          if (v46 < v74)
          {
            goto LABEL_62;
          }

          if (v46 > 0)
          {
            v56 = *(v73 + 16);
            v29 = __OFADD__(v56, v46);
            v57 = v56 + v46;
            if (v29)
            {
              goto LABEL_63;
            }

            *(v73 + 16) = v57;
          }

          goto LABEL_50;
        }
      }

      else
      {
        v46 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v46)
        {
          if (v44 < v46)
          {
            goto LABEL_64;
          }

          type metadata accessor for ViewModel();
          swift_arrayInitWithCopy();
          goto LABEL_45;
        }
      }

      v23 = v71;
      v22 = v72;
      v24 = v70;
      if (v74 > 0)
      {
        goto LABEL_62;
      }

LABEL_50:

      v78 = v18;
    }

    else
    {
      v31 = sub_1E42079A4();

      if (v31)
      {
        goto LABEL_18;
      }

LABEL_36:

      MEMORY[0x1E6910BF0](v47);
      if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_74();
      sub_1E4206324();

      v18 = v78;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

double sub_1E4062FF4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(a2 + 56, a2);
  if (*(a2 + 56))
  {
    v6 = *(v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_menuDocumentController);
    if (v6)
    {
      v7 = v6 == a1;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      *(v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_isFetched) = 1;
    }

    sub_1E4062920();
  }

  return result;
}

void sub_1E4063074()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1E324FBDC();
  (*(v8 + 16))(v12, v13, v6);
  v14 = OUTLINED_FUNCTION_18_136();
  sub_1E3781F8C(v14, v15, v16);
  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();
  v19 = OUTLINED_FUNCTION_18_136();
  sub_1E37B5ACC(v19, v20, v21);
  if (os_log_type_enabled(v17, v18))
  {
    v31 = v6;
    v22 = OUTLINED_FUNCTION_6_21();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    sub_1E3781F38(v23, v24, v25);
    swift_allocError();
    *v26 = v5;
    *(v26 + 8) = v3;
    *(v26 + 16) = v1;
    v27 = OUTLINED_FUNCTION_18_136();
    sub_1E3781F8C(v27, v28, v29);
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v30;
    *v23 = v30;
    _os_log_impl(&dword_1E323F000, v17, v18, "ContextMenu: failed to get context menu item with error %@", v22, 0xCu);
    sub_1E325F7A8(v23, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_6_0();
    v6 = v31;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v8 + 8))(v12, v6);
  OUTLINED_FUNCTION_25_2();
}

id sub_1E406325C()
{
  type metadata accessor for ContextMenuPrefetchQueue();
  OUTLINED_FUNCTION_4_0();
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *(v0 + 16) = v1;
  [v1 setMaxConcurrentOperationCount_];
  result = [v1 setQualityOfService_];
  qword_1EE28ADC8 = v0;
  return result;
}

uint64_t sub_1E40632D4()
{
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1E4063308()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v26 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v25 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  type metadata accessor for ContextMenuDocumentController();
  v14 = sub_1E3F41450(*(v1 + OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_documentDataSource), *(v1 + OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_appContext), 0, 0);
  v15 = OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_prefetchMenuDocumentController;
  *(v1 + OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_prefetchMenuDocumentController) = v14;

  v16 = *(v1 + v15);
  if (v16)
  {
    OUTLINED_FUNCTION_3_0(v16 + 16, &v28);
    *(v16 + 24) = &off_1F5D93C90;
    swift_unknownObjectWeakAssign();
  }

  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v17 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27[4] = sub_1E40641BC;
  v27[5] = v18;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v27[2] = v19;
  v27[3] = &block_descriptor_25_1;
  v20 = _Block_copy(v27);

  sub_1E4203FE4();
  v27[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_6_220();
  sub_1E4064178(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_47();
  sub_1E328FCF4(v23, v24, &qword_1E429B000);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v13, v7, v20);
  _Block_release(v20);

  (*(v26 + 8))(v7, v2);
  (*(v9 + 8))(v13, v25);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4063648()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v38 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  if ([v1 isCancelled])
  {
    OUTLINED_FUNCTION_25_2();

    [v23 v24];
  }

  else
  {
    v36 = v18;
    v37 = v16;
    v26 = *&v1[OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_completionHandler];
    v27 = *&v1[OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_completionHandler + 8];
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);

    v35 = sub_1E4206A04();
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;
    *(v28 + 32) = v8;
    *(v28 + 40) = v6;
    *(v28 + 48) = v4;
    *(v28 + 56) = v38;
    v39[4] = sub_1E4064140;
    v39[5] = v28;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v39[2] = v29;
    v39[3] = &block_descriptor_19_5;
    v30 = _Block_copy(v39);

    sub_1E37CDABC(v6, v4, v38);

    sub_1E4203FE4();
    v39[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_6_220();
    sub_1E4064178(v31, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    OUTLINED_FUNCTION_47();
    sub_1E328FCF4(v33, v34, &qword_1E429B000);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v22, v15, v30);
    _Block_release(v30);

    (*(v11 + 8))(v15, v9);
    (*(v36 + 8))(v22, v37);
    [v1 finishExecutionIfPossible];
    OUTLINED_FUNCTION_25_2();
  }
}

double sub_1E4063A60(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(a1 + 56, a2);

  sub_1E4063648();

  return result;
}

uint64_t sub_1E4063ACC(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 1216))();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  sub_1E405FF80(v5);

  *(a2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_isFetched) = 1;
  (*(*a1 + 1192))(v6);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36590, &unk_1E42E7D00);
  sub_1E328FCF4(&qword_1ECF36598, &qword_1ECF36590, &unk_1E42E7D00);
  v7 = sub_1E4200844();

  *(a2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_libContextMenuObserver) = v7;

  return (*(*a1 + 1608))(v8);
}

uint64_t sub_1E4063CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = (*(a4 + 16))(a3, a4);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  sub_1E405FF80(v12);

  *(a2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_isFetched) = 1;
  v15[1] = (*(a4 + 24))(a3, a4);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36590, &unk_1E42E7D00);
  sub_1E328FCF4(&qword_1ECF36598, &qword_1ECF36590, &unk_1E42E7D00);
  v13 = sub_1E4200844();

  *(a2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_libContextMenuObserver) = v13;

  (*(a4 + 32))(a3, a4);
  return (*(v7 + 8))(v10, a3);
}

double sub_1E4063F18(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  (*(v4 + 8))(v3, v4);
  OUTLINED_FUNCTION_26_0();
  (*(v5 + 96))(a1);

  return result;
}

uint64_t sub_1E4063FB4(uint64_t a1)
{
  result = sub_1E41FE934();
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

uint64_t sub_1E4064178(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E40641BC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_prefetchMenuDocumentController))
    {

      sub_1E3F417C4();
    }
  }
}

double sub_1E4064228(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_74();
    sub_1E4062590();
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_32_89(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 184));
}

uint64_t sub_1E40642CC()
{
  OUTLINED_FUNCTION_71_4();
  swift_allocObject();
  return sub_1E40642FC();
}

uint64_t sub_1E40642FC()
{
  type metadata accessor for ButtonLayout();
  *(v0 + 104) = sub_1E3BBB724();
  v1 = sub_1E3C2F9A0();

  sub_1E4064350();

  return v1;
}

double sub_1E4064350()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F8, &qword_1E42BB500);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v26 - v2;
  v31[0] = sub_1E3952C40();
  v31[1] = v4;
  v31[2] = v5;
  v31[3] = v6;
  v32 = 0;
  OUTLINED_FUNCTION_8();
  (*(v7 + 184))(v31);
  v8 = *(v0 + 104);
  (*(*v8 + 208))(0x4042000000000000, 0);
  v9 = (*(*v8 + 312))(0x4042000000000000, 0);
  v9.n128_u64[0] = 18.0;
  v26 = j__OUTLINED_FUNCTION_7_78(v9);
  v27 = v10;
  v28 = v11;
  v29 = v12;
  LOBYTE(v30) = 0;
  (*(*v8 + 560))(&v26);
  v13 = (*(*v8 + 800))(3);
  v14 = *(*v8 + 2096);
  v15 = v14(v13);
  sub_1E4202974();
  v16 = sub_1E42028E4();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v16);
  v17 = sub_1E42029B4();
  sub_1E3FB67A8(v3);
  (*(*v15 + 2120))(v17);

  v19 = v14(v18);
  v20 = [objc_opt_self() whiteColor];
  (*(*v19 + 680))(v20);

  v14(v21);
  OUTLINED_FUNCTION_2_1();
  (*(v22 + 256))(0x7FF0000000000000, 0);

  v14(v23);
  OUTLINED_FUNCTION_2_1();
  (*(v24 + 360))(0x7FF0000000000000, 0);

  return result;
}

uint64_t sub_1E4064708@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  OUTLINED_FUNCTION_8();
  (*(v4 + 176))(v9);
  v5 = v10;
  v6 = 0.0;
  if ((v10 & 1) == 0)
  {
    v6 = sub_1E3952BE0(v9[0], v9[1], v9[2], v9[3]);
  }

  *a1 = sub_1E4201B84();
  *(a1 + 8) = v6;
  *(a1 + 16) = v5 & 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE90, qword_1E42E7D20);
  return sub_1E40647C0(v2, (a1 + *(v7 + 44)));
}

uint64_t sub_1E40647C0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EEA8, &qword_1E42E7E10);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  sub_1E4064A0C(a1[1], 0x6B72616D78, 0xE500000000000000, &v24 - v17);
  sub_1E4064A0C(a1[3], 0xD000000000000022, 0x80000001E426A320, v15);
  v19 = *(v6 + 16);
  v19(v12, v18, v4);
  v19(v9, v15, v4);
  v19(a2, v12, v4);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EEB0, &qword_1E42E7E18);
  v19(&a2[*(v20 + 48)], v9, v4);
  v21 = &a2[*(v20 + 64)];
  *v21 = 0;
  v21[8] = 1;
  v22 = *(v6 + 8);
  v22(v15, v4);
  v22(v18, v4);
  v22(v9, v4);
  return (v22)(v12, v4);
}

uint64_t sub_1E4064A0C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v48[0] = a4;
  v48[1] = a1;
  v52 = a5;
  v54 = sub_1E4201F64();
  OUTLINED_FUNCTION_0_10();
  v53 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v51 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EEB8, &qword_1E42E7E20) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EEC0, &qword_1E42E7E28) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EEC8, &qword_1E42E7E30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v48 - v21;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EED0, &qword_1E42E7E38);
  OUTLINED_FUNCTION_0_10();
  v49 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v48 - v25;
  v55 = a3;
  v56 = v48[0];
  v57 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EED8, &unk_1E42E7E40);
  sub_1E406579C();
  sub_1E4203964();
  v27 = &v14[*(v11 + 44)];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0, &qword_1E42AE9A0) + 28);
  v29 = *MEMORY[0x1E697DBA8];
  sub_1E4200B44();
  OUTLINED_FUNCTION_2();
  (*(v30 + 104))(v27 + v28, v29);
  *v27 = swift_getKeyPath();
  v31 = *v6;
  sub_1E4065350(v18);
  sub_1E325F6F0(v14, &qword_1ECF3EEB8, &qword_1E42E7E20);
  v32 = *(v31 + 104);
  OUTLINED_FUNCTION_8();
  v34 = *(v33 + 200);
  v34();
  v34();
  sub_1E4203DA4();
  v35 = sub_1E4200D94();
  v36 = &v18[*(v15 + 44)];
  v37 = v61;
  *v36 = v60;
  *(v36 + 1) = v37;
  *(v36 + 2) = v62;
  (*(*v32 + 552))(v63, v35);
  v38 = 0.0;
  if ((v64 & 1) == 0)
  {
    v38 = sub_1E3952BE8(v63[0], v63[1], v63[2], v63[3]);
  }

  v39 = &v22[*(v19 + 36)];
  v40 = *(sub_1E4201534() + 20);
  v41 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  (*(v42 + 104))(v39 + v40, v41);
  *v39 = v38;
  v39[1] = v38;
  *(v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0, &unk_1E42AC0E0) + 36)) = 256;
  sub_1E32E19E8(v18, v22);
  v43 = sub_1E4065864();
  sub_1E4203594();
  sub_1E325F6F0(v22, &qword_1ECF3EEC8, &qword_1E42E7E30);
  v44 = v51;
  sub_1E4201724();
  v58 = v19;
  v59 = v43;
  swift_getOpaqueTypeConformance2();
  sub_1E4065B90();
  v45 = v50;
  v46 = v54;
  sub_1E4202DF4();
  (*(v53 + 8))(v44, v46);
  return (*(v49 + 8))(v26, v45);
}

void *sub_1E4064F94@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335E8, &unk_1E42BB3C0);
  OUTLINED_FUNCTION_0_10();
  v25 = v6;
  v26 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;

  v10 = sub_1E42037C4();
  v11 = *(**(*a3 + 104) + 2096);
  v11();
  OUTLINED_FUNCTION_2_1();
  v13 = (*(v12 + 2112))();

  KeyPath = swift_getKeyPath();
  __src[0] = v10;
  __src[1] = KeyPath;
  __src[2] = v13;
  v11();
  OUTLINED_FUNCTION_2_1();
  v16 = (*(v15 + 672))();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F0, &qword_1E42BB3D0);
  sub_1E3B1FF74();
  sub_1E39B9138();

  v18 = (v11)(v17);
  (*(*v18 + 248))(v18);

  v20 = *(v11)(v19);
  (*(v20 + 352))();

  sub_1E4203DA4();
  sub_1E42015C4();
  v21 = v27;
  (*(v25 + 32))(v27, v9, v26);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EED8, &unk_1E42E7E40);
  return memcpy((v21 + *(v22 + 36)), __src, 0x70uLL);
}

uint64_t sub_1E4065350@<X0>(uint64_t a1@<X8>)
{
  v32[3] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF20, &qword_1E42E7E98);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v32 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF28, &qword_1E42E7EA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF30, &unk_1E42E7EA8);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v32 - v14;
  if (sub_1E39DFFC8())
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EEB8, &qword_1E42E7E20);
    v17 = sub_1E4065AAC();
    v32[1] = v1;
    v18 = v17;
    v21 = sub_1E3B1FF18(v17, v19, v20);
    v22 = MEMORY[0x1E69817E8];
    sub_1E3E36744();
    (*(v12 + 16))(v9, v15, v10);
    swift_storeEnumTagMultiPayload();
    *&v37 = v16;
    *(&v37 + 1) = v22;
    *&v38 = v18;
    *(&v38 + 1) = v21;
    OUTLINED_FUNCTION_16_3();
    swift_getOpaqueTypeConformance2();
    *&v37 = v16;
    *(&v37 + 1) = v18;
    OUTLINED_FUNCTION_8_3();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_7_226();
    sub_1E4201F44();
    return (*(v12 + 8))(v15, v10);
  }

  else
  {
    OUTLINED_FUNCTION_8();
    v25 = (*(v24 + 792))();
    v37 = 0u;
    v38 = 0u;
    v39 = 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EEB8, &qword_1E42E7E20);
    v27 = sub_1E4065AAC();
    sub_1E3A6929C(v25, 0, 0, 1, &v37, v26, v27);
    (*(v3 + 16))(v9, v6, v1);
    v28 = swift_storeEnumTagMultiPayload();
    v31 = sub_1E3B1FF18(v28, v29, v30);
    v33 = v26;
    v34 = MEMORY[0x1E69817E8];
    v35 = v27;
    v36 = v31;
    OUTLINED_FUNCTION_16_3();
    swift_getOpaqueTypeConformance2();
    v33 = v26;
    v34 = v27;
    OUTLINED_FUNCTION_8_3();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_7_226();
    sub_1E4201F44();
    return (*(v3 + 8))(v6, v1);
  }
}

uint64_t sub_1E40656C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for MultiPlayerContainerViewControlsLayout();
  OUTLINED_FUNCTION_71_4();
  swift_allocObject();
  result = sub_1E40642FC();
  *a5 = result;
  a5[1] = a1;
  a5[2] = a2;
  a5[3] = a3;
  a5[4] = a4;
  return result;
}

unint64_t sub_1E406579C()
{
  result = qword_1ECF3EEE0;
  if (!qword_1ECF3EEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EED8, &unk_1E42E7E40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF335F0, &qword_1E42BB3D0);
    sub_1E3B1FF74();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EEE0);
  }

  return result;
}

unint64_t sub_1E4065864()
{
  result = qword_1ECF3EEE8;
  if (!qword_1ECF3EEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EEC8, &qword_1E42E7E30);
    sub_1E406591C();
    sub_1E32752B0(&qword_1EE289E08, &qword_1ECF298B0, &unk_1E42AC0E0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EEE8);
  }

  return result;
}

unint64_t sub_1E406591C()
{
  result = qword_1ECF3EEF0;
  if (!qword_1ECF3EEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EEC0, &qword_1E42E7E28);
    sub_1E40659A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EEF0);
  }

  return result;
}

unint64_t sub_1E40659A8()
{
  result = qword_1ECF3EEF8;
  if (!qword_1ECF3EEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EF00, &qword_1E42E7E88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EEB8, &qword_1E42E7E20);
    v3 = sub_1E4065AAC();
    sub_1E3B1FF18(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EEF8);
  }

  return result;
}

unint64_t sub_1E4065AAC()
{
  result = qword_1ECF3EF08;
  if (!qword_1ECF3EF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EEB8, &qword_1E42E7E20);
    sub_1E32752B0(&qword_1ECF3EF10, &qword_1ECF3EF18, &qword_1E42E7E90, MEMORY[0x1E697D680]);
    sub_1E32752B0(&qword_1EE2887D0, &qword_1ECF291E0, &qword_1E42AE9A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EF08);
  }

  return result;
}

unint64_t sub_1E4065B90()
{
  result = qword_1ECF2CFE8;
  if (!qword_1ECF2CFE8)
  {
    sub_1E4201F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CFE8);
  }

  return result;
}

id sub_1E4065C00(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

double sub_1E4065CB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_layout;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void sub_1E4065D70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF50, &qword_1E42E7F30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v3 = OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_rightTemplate;
  v4 = *(v0 + OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_leftTemplate);
  v5 = *(v0 + OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_leftTemplate + 8);
  *(inited + 32) = v4;
  *(inited + 40) = v5;
  v6 = v0 + v3;
  v7 = *v6;
  v8 = *(v6 + 1);
  *(inited + 48) = *v6;
  *(inited + 56) = v8;
  v140 = inited;
  sub_1E406736C(v4);
  sub_1E406736C(v7);
  if ([v1 vuiIsRTL])
  {
    sub_1E4066BF4();
    inited = v140;
  }

  v9 = *(inited + 16);
  if (!v9)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v10 = *(inited + 32);
  if (!v10)
  {
    goto LABEL_16;
  }

  if (v9 == 1)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v11 = *(inited + 48);
  if (!v11)
  {
LABEL_16:

    return;
  }

  v12 = *(inited + 40);
  v13 = *(inited + 56);
  sub_1E406736C(*(inited + 32));
  sub_1E406736C(v11);
  v14 = [v10 vuiView];
  if (v14)
  {
    v15 = v14;
    v16 = [v11 vuiView];
    if (v16)
    {
      v17 = v16;
      v130 = v12;
      v18 = sub_1E4065BE8();
      [v18 setTranslatesAutoresizingMaskIntoConstraints_];

      v19 = sub_1E4065BF4();
      [v19 setTranslatesAutoresizingMaskIntoConstraints_];

      [v15 setTranslatesAutoresizingMaskIntoConstraints_];
      v133 = v17;
      [v17 setTranslatesAutoresizingMaskIntoConstraints_];
      [v1 vui:v10 addChildViewController:?];
      [v1 vui:v11 addChildViewController:?];
      v20 = [v1 view];
      if (!v20)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v21 = v20;
      v129 = v13;
      v22 = OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController____lazy_storage___leftView;
      [v20 addSubview_];

      v23 = [v1 view];
      if (!v23)
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v24 = v23;
      v25 = OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController____lazy_storage___rightView;
      [v23 addSubview_];

      [*(v1 + v22) vui:v15 addSubview:0 oldView:?];
      v131 = v25;
      [*(v1 + v25) vui:v133 addSubview:0 oldView:?];
      [v10 didMoveToParentViewController_];
      v127 = v11;
      v26 = [v11 didMoveToParentViewController_];
      v27 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x140);
      v28 = v27(v26);
      if (!v28 || ((*(*v28 + 176))(v141), v29 = *&v141[1], v28 = , (v142 & 1) != 0))
      {
        v29 = *(MEMORY[0x1E69DDCE0] + 8);
      }

      v138 = 0;
      v30 = v27(v28);
      if (v30)
      {
        v33 = (*(*v30 + 1152))();
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 1;
      }

      v132 = v15;
      v128 = v10;
      v136 = v33;
      v137 = v35 & 1;
      sub_1E3793CAC(v30, v31, v32);
      max<A>(_:_:)();
      v36 = v139;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF58, &unk_1E42E7F38);
      v37 = swift_initStackObject();
      *(v37 + 16) = xmmword_1E42E7EF0;
      v38 = [*(v1 + v22) leftAnchor];
      v39 = [v1 view];
      if (!v39)
      {
        goto LABEL_47;
      }

      v40 = v39;
      v41 = [v39 leftAnchor];

      v42 = OUTLINED_FUNCTION_4_255();
      v44 = [v42 v43];

      *(v37 + 32) = v44;
      v45 = [*(v1 + v22) topAnchor];
      v46 = [v1 view];
      if (!v46)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v47 = v46;
      v48 = [v46 topAnchor];

      v49 = OUTLINED_FUNCTION_4_255();
      v51 = [v49 v50];

      *(v37 + 40) = v51;
      v52 = [*(v1 + v22) bottomAnchor];
      v53 = [v1 view];
      if (!v53)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v54 = v53;
      v55 = [v53 bottomAnchor];

      v56 = OUTLINED_FUNCTION_4_255();
      v58 = [v56 v57];

      *(v37 + 48) = v58;
      v59 = [*(v1 + v25) leftAnchor];
      v60 = [*(v1 + v22) rightAnchor];
      v61 = [v59 constraintEqualToAnchor:v60 constant:v36];

      *(v37 + 56) = v61;
      v62 = [*(v1 + v25) rightAnchor];
      v63 = [v1 view];
      if (!v63)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v64 = v63;
      v65 = [v63 rightAnchor];

      v66 = OUTLINED_FUNCTION_4_255();
      v68 = [v66 v67];

      *(v37 + 64) = v68;
      v69 = [*(v1 + v25) topAnchor];
      v70 = [v1 view];
      if (!v70)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v71 = v70;
      v72 = [v70 topAnchor];

      v73 = OUTLINED_FUNCTION_4_255();
      v75 = [v73 v74];

      *(v37 + 72) = v75;
      v76 = [*(v1 + v25) bottomAnchor];
      v77 = [v1 view];
      if (!v77)
      {
LABEL_52:
        __break(1u);
        return;
      }

      v78 = v77;
      v79 = [v77 bottomAnchor];

      v81 = OUTLINED_FUNCTION_3_256(v80, sel_constraintEqualToAnchor_);
      *(v37 + 80) = v81;
      v82 = [v132 leftAnchor];
      v83 = OUTLINED_FUNCTION_0_329([*(v1 + v22) leftAnchor]);

      v136 = v83;
      v134 = sub_1E3B51B98();
      sub_1E41E1A64(&v136, sub_1E4067604, v134, &v139);

      *(v37 + 88) = v139;
      v84 = [v132 rightAnchor];
      v85 = OUTLINED_FUNCTION_0_329([*(v1 + v22) rightAnchor]);

      *(v37 + 96) = v85;
      v86 = [v132 topAnchor];
      v87 = OUTLINED_FUNCTION_0_329([*(v1 + v22) topAnchor]);

      *(v37 + 104) = v87;
      v88 = [v132 bottomAnchor];
      v89 = OUTLINED_FUNCTION_0_329([*(v1 + v22) bottomAnchor]);

      *(v37 + 112) = v89;
      if (v130)
      {
        v90 = *(*v130 + 200);

        v90(v91);

        OUTLINED_FUNCTION_5_235();
        MEMORY[0x1EEE9AC00](v92);
        OUTLINED_FUNCTION_10_169();
        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
        v96 = sub_1E3A1F10C(v93, v94, v95);
        OUTLINED_FUNCTION_6_221(sub_1E4067540, v96, v37 + 120);
      }

      else
      {
        *(v37 + 120) = 0;
      }

      v97 = [v133 leftAnchor];
      v98 = [*(v1 + v131) leftAnchor];
      v99 = OUTLINED_FUNCTION_3_256(v98, sel_constraintEqualToAnchor_);

      *(v37 + 128) = v99;
      v100 = [v133 rightAnchor];
      v101 = OUTLINED_FUNCTION_2_249([*(v1 + v131) rightAnchor]);

      v136 = v101;
      sub_1E41E1A64(&v136, sub_1E4066D20, v134, &v138);

      *(v37 + 136) = v138;
      v102 = [v133 topAnchor];
      v103 = OUTLINED_FUNCTION_2_249([*(v1 + v131) topAnchor]);

      *(v37 + 144) = v103;
      v104 = [v133 bottomAnchor];
      v105 = OUTLINED_FUNCTION_2_249([*(v1 + v131) bottomAnchor]);

      *(v37 + 152) = v105;
      if (v129)
      {
        v106 = *(*v129 + 200);

        v106(v107);

        OUTLINED_FUNCTION_5_235();
        MEMORY[0x1EEE9AC00](v108);
        OUTLINED_FUNCTION_10_169();
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
        v112 = sub_1E3A1F10C(v109, v110, v111);
        OUTLINED_FUNCTION_6_221(sub_1E40675EC, v112, v37 + 160);
      }

      else
      {
        *(v37 + 160) = 0;
      }

      v113 = [*(v1 + v22) widthAnchor];
      v114 = [*(v1 + v131) widthAnchor];
      v115 = OUTLINED_FUNCTION_3_256(v114, sel_constraintEqualToAnchor_);

      v135[0] = v115;
      sub_1E41E1A64(v135, sub_1E4067604, v134, &v136);

      *(v37 + 168) = v136;
      v116 = [*(v1 + v22) widthAnchor];
      v117 = [v132 widthAnchor];
      v118 = OUTLINED_FUNCTION_3_256(v117, sel_constraintGreaterThanOrEqualToAnchor_);

      *(v37 + 176) = v118;
      v119 = [*(v1 + v131) widthAnchor];
      v120 = [v133 widthAnchor];
      v121 = [v119 constraintGreaterThanOrEqualToAnchor_];

      v122 = 0;
      *(v37 + 184) = v121;
      v136 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v122 == 20)
        {
          v125 = objc_opt_self();
          swift_setDeallocating();
          sub_1E40674E0();
          v126 = sub_1E42062A4();

          [v125 activateConstraints_];

          goto LABEL_41;
        }

        if (v122 > 0x13)
        {
          break;
        }

        v123 = *(v37 + 8 * v122++ + 32);
        if (v123)
        {
          v124 = v123;
          MEMORY[0x1E6910BF0]();
          if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E42062F4();
          }

          sub_1E4206324();
        }
      }

      __break(1u);
      goto LABEL_43;
    }
  }

  else
  {
  }

LABEL_41:
}

void sub_1E4066BF4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = (v2 - 1);
    if (v2 != 1)
    {
      v16 = v0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_16:
        v1 = sub_1E40675D8(v1);
      }

      v4 = 16 * v2 + 16;
      v5 = 1;
      v6 = 4;
      v17 = v1;
      do
      {
        if (v5 - 1 != v3)
        {
          v7 = v1[2];
          if (v5 - 1 >= v7)
          {
            __break(1u);
LABEL_14:
            __break(1u);
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

          if (v3 >= v7)
          {
            goto LABEL_14;
          }

          v8 = &v1[v6];
          v9 = v1[v6];
          v10 = v1[v6 + 1];
          v2 = v1 + v4;
          v11 = *(v1 + v4);
          v12 = *(v2 + 1);
          sub_1E406736C(v9);
          sub_1E406736C(v11);
          v13 = *v8;
          *v8 = v11;
          v8[1] = v12;
          v1 = v17;
          sub_1E3F6511C(v13);
          if (v3 >= v17[2])
          {
            goto LABEL_15;
          }

          v14 = *v2;
          *v2 = v9;
          *(v2 + 1) = v10;
          sub_1E3F6511C(v14);
        }

        --v3;
        v4 -= 16;
        v6 += 2;
      }

      while (v5++ < v3);
      *v16 = v1;
    }
  }
}

void *sub_1E4066D38(uint64_t a1)
{
  type metadata accessor for SplitOfferTemplateViewModel(0);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  (*(*v2 + 1272))();
  LOBYTE(v38) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF40, &unk_1E42E7F00);
  v3 = sub_1E406701C();
  v11 = OUTLINED_FUNCTION_7_227(v3, v4, v5, v6, v7, v8, v9, v10, 0, v38);
  if (!v40)
  {

    return 0;
  }

  LOBYTE(v39) = 0;
  OUTLINED_FUNCTION_7_227(v11, v12, v13, v14, v15, v16, v17, v18, 1, v39);

  type metadata accessor for SplitOfferTemplateController();
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  v21 = *v20;
  v22 = sub_1E3D9DBC0(v40);

  if (v22)
  {
    v23 = *(*v40 + 392);

    v25 = v23(v24);

    v26 = (v19 + OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_leftTemplate);
    v27 = *(v19 + OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_leftTemplate);
    *v26 = v22;
    v26[1] = v25;
    sub_1E3F6511C(v27);
  }

  v28 = *v20;
  v29 = sub_1E3D9DBC0(v40);

  if (v29)
  {
    v31 = *(*v40 + 392);

    v33 = v31(v32);

    v34 = (v19 + OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_rightTemplate);
    v35 = *(v19 + OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_rightTemplate);
    *v34 = v29;
    v34[1] = v33;
    v30.n128_f64[0] = sub_1E3F6511C(v35);
  }

  v36 = (*(*a1 + 392))(v30);
  if (v36)
  {
    type metadata accessor for SplitOfferTemplateLayout();
    v36 = swift_dynamicCastClass();
    if (!v36)
    {

      v36 = 0;
    }
  }

  (*((*MEMORY[0x1E69E7D40] & *v19) + 0x148))(v36);
  sub_1E4065D70();

  return v19;
}

unint64_t sub_1E406701C()
{
  result = qword_1ECF3EF48;
  if (!qword_1ECF3EF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EF40, &unk_1E42E7F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EF48);
  }

  return result;
}

id sub_1E40670A4(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_1_285(&OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_rightTemplate);
  *&v3[OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_layout] = 0;
  if (v5)
  {
    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for SplitOfferTemplateController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id sub_1E406719C(void *a1)
{
  OUTLINED_FUNCTION_1_285(&OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_rightTemplate);
  *&v1[OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_layout] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SplitOfferTemplateController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

double sub_1E4067244()
{
  sub_1E3F6511C(*(v0 + OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_leftTemplate));
  sub_1E3F6511C(*(v0 + OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_rightTemplate));

  return result;
}

id sub_1E40672BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SplitOfferTemplateController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E406736C(id result)
{
  if (result)
  {
    v1 = result;

    return v1;
  }

  return result;
}

void *sub_1E40673B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF50, &qword_1E42E7F30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF60, &qword_1E42E7F48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E40674E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF68, &unk_1E42E7F50);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1E4067558(double *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = [*(v2 + 16) widthAnchor];
  v6 = [v5 constraintEqualToConstant_];

  *a2 = v6;
}

uint64_t sub_1E4067608()
{
  type metadata accessor for ScoreboardObservable.Collector();
  v0 = swift_allocObject();
  type metadata accessor for ScoreboardObservable(0);
  v1 = sub_1E4205CB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF70, &qword_1E42E7F60);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v1;
  *(v0 + 16) = result;
  qword_1ECF71A28 = v0;
  return result;
}

uint64_t *sub_1E4067698()
{
  if (_MergedGlobals_269 != -1)
  {
    OUTLINED_FUNCTION_4_256(&_MergedGlobals_269);
  }

  return &qword_1ECF71A28;
}

uint64_t sub_1E40676F8()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1E40677A8(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 6);
  return v3;
}

uint64_t sub_1E4067754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(*a1 + 16) && (sub_1E327D33C(a2, a3), (v5 & 1) != 0))
  {
  }

  else
  {
    result = 0;
  }

  *a4 = result;
  return result;
}

void sub_1E40677D4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1E406782C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_1E406782C(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  if (v5)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *a1;
    sub_1E406B0D8(v5, v3, v4, isUniquelyReferenced_nonNull_native);
    *a1 = v8;
  }

  else
  {
    sub_1E327D33C(v3, v4);
    if (v7)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v9 = *a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F0D8, &qword_1E42E82E8);
      sub_1E4207644();

      type metadata accessor for ScoreboardObservable(0);
      sub_1E4207664();

      *a1 = v9;
    }
  }
}

id sub_1E406795C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  (*(v1 + 160))();

  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_1E40679C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

void sub_1E4067A3C(void *a1)
{
  v2 = v1;
  v4 = v1[2];
  sub_1E382766C();
  v5 = v4;
  v6 = sub_1E4206F64();

  if (v6)
  {
    v7 = v2[2];
    v2[2] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 168))(v9);
  }
}

void sub_1E4067B68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

void sub_1E4067BA0()
{
  OUTLINED_FUNCTION_82_2();
  v1 = v0;
  v3 = v2;
  if (_MergedGlobals_269 != -1)
  {
    OUTLINED_FUNCTION_4_256(&_MergedGlobals_269);
  }

  v4 = qword_1ECF71A28;
  v5 = sub_1E3780EC0(v3);
  v6 = *(v4 + 16);
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock(v6 + 6);
  sub_1E406C240(&v6[4], &v10);
  os_unfair_lock_unlock(v6 + 6);
  v7 = v10;

  if (!v7)
  {
    type metadata accessor for ScoreboardObservable(0);
    v8 = swift_allocObject();

    v9 = v3;
    sub_1E41FE924();
    *(v8 + 16) = v9;
    *(v8 + 24) = v1;
  }

  OUTLINED_FUNCTION_95();
}

uint64_t sub_1E4067D9C()
{

  v1 = OBJC_IVAR____TtC8VideosUI20ScoreboardObservable___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1E4067E04()
{
  sub_1E4067D9C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E4067E5C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for ScoreboardObservable(v3);
  result = sub_1E4200514();
  *v2 = result;
  return result;
}

uint64_t sub_1E4067E98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SportsKitScoreboardUpdating(0);
  result = sub_1E3287754(8);
  *a2 = a1;
  return result;
}

void sub_1E4067ED8(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_173();
  v4 = type metadata accessor for SportsKitScoreboardUpdating(v3);
  v5 = OUTLINED_FUNCTION_8_0(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1E406B5EC();
  v6 = swift_allocObject();
  sub_1E406BBB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF80, &qword_1E42E7F90);
  OUTLINED_FUNCTION_2();
  (*(v7 + 16))(v1, a1);
  v8 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF88, &qword_1E42E7F98) + 36));
  *v8 = sub_1E406B28C;
  v8[1] = v6;
  v8[2] = 0;
  v8[3] = 0;
  sub_1E406B5EC();
  v9 = swift_allocObject();
  sub_1E406BBB4();
  v10 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF90, &unk_1E42E7FA0) + 36));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = sub_1E406B384;
  v10[3] = v9;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40680C8()
{
  OUTLINED_FUNCTION_24();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_17_2(v4);
  v0[5] = swift_task_alloc();
  sub_1E4206434();
  v0[6] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v6 = sub_1E42063B4();
  v0[7] = v6;
  v0[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E4068184, v6, v5);
}

uint64_t sub_1E4068184()
{
  OUTLINED_FUNCTION_45_67();
  v1 = sub_1E41FFC94();
  v2 = sub_1E42067D4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *(v3 + 4) = OUTLINED_FUNCTION_44_62(4.8149e-34, v21, v4);
    OUTLINED_FUNCTION_43_67(&dword_1E323F000, v5, v6, "SwiftUI:Overlay:Scoreboard: register for sportskit scoreboard updates for sporting event %s");
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v7 = *(v0 + 40);
  v8 = *(v0 + 16);
  type metadata accessor for SportsKitScoreboardManager.CacheValue(0);
  v9 = *v8;
  *(v0 + 72) = *v8;
  v10 = *(*v9 + 128);
  v11 = v10();
  v12 = v10();
  v13 = [v12 lastUpdatedTime];

  sub_1E41FE584();
  *(v0 + 80) = sub_1E376EE58(v11, 1, v7);
  v14 = sub_1E376DBD0();
  v15 = *v14;
  *(v0 + 88) = *v14;

  v17 = (v10)(v16);
  *(v0 + 96) = sub_1E32868C0(v17, &selRef_leagueId);
  *(v0 + 104) = v18;

  *(v0 + 128) = j__OUTLINED_FUNCTION_18() & 1;
  *(v0 + 129) = j__OUTLINED_FUNCTION_18() & 1;
  v19 = *v15;
  *(v0 + 112) = *(*v15 + 488);
  *(v0 + 120) = (v19 + 488) & 0xFFFFFFFFFFFFLL | 0x306F000000000000;

  return MEMORY[0x1EEE6DFA0](sub_1E40683C4, v15, 0);
}

uint64_t sub_1E40683C4()
{
  OUTLINED_FUNCTION_27_2();
  v4 = *(v0 + 129);
  (*(v0 + 112))(*(v0 + 72), &off_1F5D93E48, *(v0 + 24), *(v0 + 32), *(v0 + 96), *(v0 + 104), *(v0 + 128), *(v0 + 80), v4);

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1E4068470, v1, v2);
}

uint64_t sub_1E4068470()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E40684DC(uint64_t a1, uint64_t a2, NSObject *a3, const char *a4)
{
  v31 = a2;
  v32 = a3;
  type metadata accessor for SportsKitScoreboardUpdating(0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  OUTLINED_FUNCTION_8();
  v16 = (*(v14 + 128))(v15);
  v17 = sub_1E32868C0(v16, &selRef_canonicalId);
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    v21 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v21);
    sub_1E406B5EC();
    sub_1E4206434();
    v22 = sub_1E4206424();
    v23 = (v8 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E85E0];
    *(v24 + 16) = v22;
    *(v24 + 24) = v25;
    sub_1E406BBB4();
    v26 = (v24 + v23);
    *v26 = v19;
    v26[1] = v20;
    sub_1E376FE58(0, 0, v13, v32, v24);

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    v32 = sub_1E41FFC94();
    v27 = sub_1E42067F4();
    if (os_log_type_enabled(v32, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1E323F000, v32, v27, a4, v28, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E406876C()
{
  OUTLINED_FUNCTION_24();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  sub_1E4206434();
  v0[5] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v5 = sub_1E42063B4();
  v0[6] = v5;
  v0[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E4068800, v5, v4);
}

uint64_t sub_1E4068800()
{
  OUTLINED_FUNCTION_45_67();
  v1 = sub_1E41FFC94();
  v2 = sub_1E42067D4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *(v3 + 4) = OUTLINED_FUNCTION_44_62(4.8149e-34, v12, v4);
    OUTLINED_FUNCTION_43_67(&dword_1E323F000, v5, v6, "SwiftUI:Overlay:Scoreboard: unregister from sportskit scoreboard updates for sporting event %s");
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v7 = *(v0 + 16);
  v8 = sub_1E376DBD0();
  v9 = *v8;
  *(v0 + 64) = *v8;
  *(v0 + 72) = *v7;

  *(v0 + 96) = j__OUTLINED_FUNCTION_18() & 1;
  v10 = *v9;
  *(v0 + 80) = *(*v9 + 496);
  *(v0 + 88) = (v10 + 496) & 0xFFFFFFFFFFFFLL | 0xE5C6000000000000;

  return MEMORY[0x1EEE6DFA0](sub_1E4068970, v9, 0);
}

uint64_t sub_1E4068970()
{
  OUTLINED_FUNCTION_24();
  (*(v0 + 80))(*(v0 + 72), &off_1F5D93E48, *(v0 + 24), *(v0 + 32), *(v0 + 96));

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E3B2F088, v1, v2);
}

void sub_1E40689F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1E377C574();
  v4 = sub_1E376DA04();
  v5 = swift_beginAccess();
  if (*v4 == 1)
  {
    MEMORY[0x1EEE9AC00](v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
    sub_1E4148DE0(sub_1E406B424);
  }

  v6 = v3;
  sub_1E4067A3C(v6);
}

BOOL sub_1E4068AE8()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 128))();
  sub_1E377A8DC();
  v3 = v2;

  if (v3)
  {
    sub_1E40689F0(v3, 0, 0);
  }

  return v3 != 0;
}

uint64_t sub_1E4068B80(uint64_t a1)
{
  v2 = sub_1E376DA04();
  swift_beginAccess();
  if (*v2)
  {
    v3 = 96;
  }

  else
  {
    v3 = 0;
  }

  if (*v2)
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = 0;
  }

  sub_1E40689F0(a1, v3, v4);

  return 1;
}

BOOL sub_1E4068BF8(uint64_t a1)
{
  v1 = (*(*a1 + 552))();
  if (v1)
  {
    sub_1E382766C();
    v2 = sub_1E3744600(v1);

    v3 = sub_1E37766C4(v2);
    sub_1E40689F0(v3, 0, 0);
  }

  return v1 != 0;
}

uint64_t sub_1E4068CA0()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 128))();
  v2 = [v1 jsContextDictionary];

  v3 = sub_1E4205C64();
  return v3;
}

uint64_t sub_1E4068D54()
{
  OUTLINED_FUNCTION_155();
  v3 = OUTLINED_FUNCTION_70_0();
  v4 = type metadata accessor for Scoreboard(v3);
  v5 = *(v4 + 24);
  *(v2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v6 = *(v4 + 28);
  *(v2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  result = swift_storeEnumTagMultiPayload();
  *v2 = v0;
  v2[1] = v1;
  return result;
}

void sub_1E4068E04()
{
  OUTLINED_FUNCTION_93();
  v51 = v1;
  v2 = sub_1E4201534();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF98, &qword_1E42E8020);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EFA0, &qword_1E42E8028);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v49 - v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EFA8, &qword_1E42E8030);
  OUTLINED_FUNCTION_0_10();
  v49 = v16;
  v50 = v15;
  OUTLINED_FUNCTION_5_7();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v52 = &v49 - v19;
  v20 = *v0;
  v21 = (*(**v0 + 2008))(v18);
  *v14 = sub_1E4201D44();
  v14[1] = v21;
  *(v14 + 16) = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EFB0, &qword_1E42E8038);
  sub_1E40692F8(v0, v14 + *(v22 + 44));
  *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EFB8, &qword_1E42E8040) + 36)) = 1;
  nullsub_1();
  v23 = v14 + *(v11 + 36);
  *v23 = v24;
  *(v23 + 1) = v25;
  v26 = *(*v20 + 552);
  v26(v53);
  if ((v54 & 1) == 0)
  {
    sub_1E3952BE8(v53[0], v53[1], v53[2], v53[3]);
  }

  sub_1E406B4A8();
  sub_1E3E361E8();
  v27 = sub_1E325F6F0(v14, &qword_1ECF3EFA0, &qword_1E42E8028);
  (v26)(v55, v27);
  v28 = 0.0;
  if ((v56 & 1) == 0)
  {
    v28 = sub_1E3952BE8(v55[0], v55[1], v55[2], v55[3]);
  }

  v29 = *(v2 + 20);
  v30 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  v32 = (*(v31 + 104))(v6 + v29, v30);
  *v6 = v28;
  v6[1] = v28;
  v33 = (*(*v20 + 2032))(v32);
  v34 = sub_1E38F08C4(v33);

  (*(*v20 + 2056))();
  sub_1E4200BF4();
  sub_1E406B5EC();
  v35 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6A8, &qword_1E42E8050) + 36)];
  v36 = v58;
  *v35 = v57;
  *(v35 + 1) = v36;
  *(v35 + 4) = v59;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EFE0, &qword_1E42E8058);
  *&v10[*(v37 + 52)] = v34;
  *&v10[*(v37 + 56)] = 256;
  v38 = sub_1E4203DA4();
  v40 = v39;
  sub_1E3A69608(v6);
  v41 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EFE8, &qword_1E42E8060) + 36)];
  *v41 = v38;
  v41[1] = v40;
  v42 = sub_1E4203DA4();
  v44 = v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EFF0, &qword_1E42E8068);
  v46 = v51;
  v47 = v51 + *(v45 + 36);
  sub_1E406B644(v10, v47);
  v48 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EFF8, qword_1E42E8070) + 36));
  *v48 = v42;
  v48[1] = v44;
  (*(v49 + 32))(v46, v52, v50);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E40692F8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F028, &qword_1E42E81F8);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v39 = v5 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F030, &qword_1E42E8200) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F038, &qword_1E42E8208);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v35 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  sub_1E406964C();
  v22 = sub_1E4202744();
  v23 = *(**a1 + 1888);
  v23();
  sub_1E4200A54();
  v24 = &v12[*(v9 + 44)];
  *v24 = v22;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v29 = sub_1E4202754();
  v36 = a1;
  if (sub_1E4069AE0())
  {
  }

  else
  {
    v23();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_120();
  sub_1E3782004();
  v30 = &v18[*(v34 + 36)];
  *v30 = v29;
  OUTLINED_FUNCTION_11_4(v30);
  sub_1E3782004();
  v31 = v37;
  sub_1E4069B60(v37);
  v32 = v35;
  sub_1E378249C();
  v33 = v39;
  OUTLINED_FUNCTION_19_1();
  sub_1E378249C();
  sub_1E378249C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F040, &qword_1E42E8210);
  OUTLINED_FUNCTION_19_1();
  sub_1E378249C();
  sub_1E325F6F0(v31, &qword_1ECF3F028, &qword_1E42E81F8);
  sub_1E325F6F0(v21, &qword_1ECF3F038, &qword_1E42E8208);
  sub_1E325F6F0(v33, &qword_1ECF3F028, &qword_1E42E81F8);
  sub_1E325F6F0(v32, &qword_1ECF3F038, &qword_1E42E8208);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E406964C()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F080, &qword_1E42E8278);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F088, &qword_1E42E8280);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  OUTLINED_FUNCTION_8();
  v16 = (*(v15 + 128))();
  v17 = sub_1E388ED3C(v16);
  if (!v17)
  {
    goto LABEL_21;
  }

  v18 = v17;
  v53 = v14;
  v19 = *(v17 + 16);
  if (!v19)
  {

LABEL_21:
    OUTLINED_FUNCTION_54_0();

    __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
    return;
  }

  v52 = v11;
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v22 = v20;
  while (v19 != v22)
  {
    v23 = *(v18 + 16);
    if (v22 >= v23)
    {
      __break(1u);
      return;
    }

    v24 = v22 + 1;
    v25 = v23 - 1;
    if (v20 < 2 || v22++ != v25)
    {
      v50 = v5;
      v51 = v7;
      v27 = *(v18 + 8 * v24 + 24);

      v28 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1E406AFA8(0, v21[2] + 1, 1, v21);
      }

      v30 = v21[2];
      v29 = v21[3];
      if (v30 >= v29 >> 1)
      {
        v21 = sub_1E406AFA8((v29 > 1), v30 + 1, 1, v21);
      }

      v21[2] = v30 + 1;
      v21[v30 + 4] = v27;
      v20 = v24;
      v4 = v28;
      v5 = v50;
      v7 = v51;
      goto LABEL_4;
    }
  }

  v32 = v52;
  if (!v21)
  {
    goto LABEL_21;
  }

  v33 = v5;
  v34 = *v2;
  v35 = (*(**v2 + 1960))(v31);
  *v1 = sub_1E4201D44();
  *(v1 + 8) = v35;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F090, &qword_1E42E8288);
  sub_1E406A138();
  v36 = (*(*v34 + 1912))();
  v37 = v21[2];

  v36(v37);

  sub_1E4203DA4();
  v38 = sub_1E4200D94();
  v39 = (v1 + *(v33 + 36));
  v40 = v55;
  *v39 = v54;
  v39[1] = v40;
  v39[2] = v56;
  v41 = (*(*v34 + 1816))(v38);
  (*(*v41 + 744))();
  OUTLINED_FUNCTION_50();

  if (!v41)
  {
    v41 = [objc_opt_self() clearColor];
  }

  v42 = sub_1E38F08C4(v41);

  v43 = sub_1E4202734();
  sub_1E3782004();
  v44 = v32 + *(v7 + 36);
  *v44 = v42;
  *(v44 + 8) = v43;
  OUTLINED_FUNCTION_19_1();
  sub_1E3782004();
  OUTLINED_FUNCTION_19_1();
  sub_1E3782004();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E4069AE0()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 128))();
  v2 = sub_1E388ED3C(v1);
  if (!v2)
  {
    return 0;
  }

  if (*(v2 + 16) < 3uLL)
  {
    v4 = 0;
  }

  else
  {
    sub_1E3FE381C(v2);
    v4 = v3;
  }

  return v4;
}

void sub_1E4069B60(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F048, &qword_1E42E8218);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F050, &qword_1E42E8220);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v48 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F058, &qword_1E42E8228);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F060, &qword_1E42E8230);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v48 - v19;
  if (sub_1E4069AE0())
  {
    v48[1] = v20;
    v49 = v13;
    v50 = a1;
    *v11 = sub_1E4201D44();
    *(v11 + 1) = 0;
    v11[16] = 0;
    *v7 = sub_1E4201B84();
    *(v7 + 1) = 0;
    v7[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F068, &unk_1E42E8238);
    sub_1E406AB18();
    v21 = *v1;
    (*(*v21 + 1984))();
    sub_1E4203DA4();
    sub_1E4200D94();
    v22 = &v7[*(v4 + 36)];
    v23 = v53;
    *v22 = v52;
    *(v22 + 1) = v23;
    *(v22 + 2) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4299720;
    v25 = sub_1E4202764();
    *(inited + 32) = v25;
    v26 = sub_1E4202784();
    *(inited + 33) = v26;
    v27 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v25)
    {
      v27 = sub_1E4202774();
    }

    sub_1E4202774();
    if (sub_1E4202774() != v26)
    {
      v27 = sub_1E4202774();
    }

    v28 = v49;
    OUTLINED_FUNCTION_8();
    (*(v29 + 176))(v55);
    if ((v56 & 1) == 0)
    {
      v32.n128_u64[0] = v55[2];
      v33.n128_u64[0] = v55[3];
      v31.n128_u64[0] = v55[1];
      v30.n128_u64[0] = v55[0];
      j_nullsub_1(v30, v31, v32, v33);
    }

    v34 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F070, &qword_1E42E8248) + 44)];
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    sub_1E3782004();

    v35 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F078, &unk_1E42E8250) + 36)];
    *v35 = v27;
    OUTLINED_FUNCTION_11_4(v35);
    sub_1E4203DA4();
    sub_1E42015C4();
    sub_1E3782004();
    v36 = memcpy((v2 + *(v51 + 36)), __src, 0x70uLL);
    v37 = *(*(*v21 + 1840))(v36);
    v38 = (*(v37 + 744))();

    if (!v38)
    {
      v38 = [objc_opt_self() clearColor];
    }

    v39 = v50;
    v40 = sub_1E38F08C4(v38);

    v41 = sub_1E4202734();
    sub_1E3782004();
    v42 = v17 + *(v28 + 36);
    *v42 = v40;
    *(v42 + 8) = v41;
    OUTLINED_FUNCTION_19_1();
    sub_1E3782004();
    OUTLINED_FUNCTION_19_1();
    sub_1E3782004();
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v28);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  }
}

void sub_1E406A138()
{
  OUTLINED_FUNCTION_82_2();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_173();
  v3 = type metadata accessor for Scoreboard(v2);
  v4 = OUTLINED_FUNCTION_8_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_222();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_250();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  OUTLINED_FUNCTION_3_257(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0, &qword_1E4297FE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F098, &qword_1E42E8290);
  sub_1E37432DC();
  sub_1E406BE48();
  OUTLINED_FUNCTION_8_195();
  sub_1E4203B34();
  OUTLINED_FUNCTION_95();
}

void sub_1E406A27C(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F0B0, &qword_1E42E8298);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21[-v9];
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*a1 >= *(a2 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  *v10 = sub_1E4201B84();
  *(v10 + 1) = 0;
  v10[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F0B8, &qword_1E42E82A0);
  sub_1E406A4B4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v12 = sub_1E4202764();
  *(inited + 32) = v12;
  v13 = sub_1E4202784();
  *(inited + 33) = v13;
  v14 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v12)
  {
    v14 = sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v13)
  {
    v14 = sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  (*(v15 + 176))(v22);
  if ((v23 & 1) == 0)
  {
    v18.n128_u64[0] = v22[2];
    v19.n128_u64[0] = v22[3];
    v16.n128_u64[0] = v22[0];
    v17.n128_u64[0] = v22[1];
    j_nullsub_1(v16, v17, v18, v19);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3782004();
  v20 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F098, &qword_1E42E8290) + 36));
  *v20 = v14;
  OUTLINED_FUNCTION_11_4(v20);
}

void sub_1E406A4B4()
{
  OUTLINED_FUNCTION_82_2();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_173();
  v3 = type metadata accessor for Scoreboard(v2);
  v4 = OUTLINED_FUNCTION_8_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_222();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_250();
  v9 = (v8 + ((*(v6 + 80) + 16) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_3_257(v10);
  *(v10 + v9) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0, &qword_1E4297FE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F0C0, &qword_1E42E82A8);
  sub_1E37432DC();
  sub_1E32752B0(&qword_1ECF3F0C8, &qword_1ECF3F0C0, &qword_1E42E82A8, MEMORY[0x1E6981F48]);
  OUTLINED_FUNCTION_8_195();
  sub_1E4203B34();
  OUTLINED_FUNCTION_95();
}

void sub_1E406A630()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v73 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v79 = v10 - v9;
  v11 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v78 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v75 = (v15 - v14);
  v76 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v74 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = (v19 - v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8, &unk_1E42AA120);
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4_6();
  v77 = v25 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v72 = &v61 - v31;
  v32 = *v3;
  if (*v3)
  {
    OUTLINED_FUNCTION_8();
    v28 = (*(v33 + 1864))();
    if ((v32 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_8;
    }

    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  if (v32 < *(v1 + 16))
  {
    v36 = v1 + 16 * v32;
    v37 = *(v36 + 32);
    v38 = *(v36 + 40);
    v71 = v32 == 0;
    v80 = v37;
    v81 = v38;
    sub_1E32822E0(v28, v29, v30);
    OUTLINED_FUNCTION_50();

    v68 = sub_1E4202C44();
    v70 = v5;
    v64 = v6;
    v67 = v39;
    v69 = v40;
    v80 = v68;
    v81 = v39;
    v66 = v41 & 1;
    v82 = v41 & 1;
    v83 = v40;
    OUTLINED_FUNCTION_8();
    v43 = (*(v42 + 1792))();
    v44 = v73;
    v45 = v43;
    type metadata accessor for Scoreboard(0);
    v65 = v21;
    v46 = v20;
    sub_1E3746E10(v20);
    v47 = v75;
    sub_1E374709C(v75);
    v48 = MEMORY[0x1E6981148];
    v49 = v23;
    v63 = v11;
    v50 = MEMORY[0x1E6981138];
    v62 = j__OUTLINED_FUNCTION_18();
    v51 = v79;
    sub_1E37B5FBC(v79);
    v52 = j__OUTLINED_FUNCTION_18();
    v53 = v72;
    sub_1E37B6028(v45, v46, v47, v62, v51, v52 & 1, v48, v50, v72);

    (*(v44 + 8))(v51, v64);
    (*(v78 + 8))(v47, v63);
    (*(v74 + 8))(v46, v76);
    sub_1E37434B8(v68, v67, v66);

    v54 = *(v49 + 16);
    v55 = v77;
    v56 = v65;
    v54(v77, v53, v65);
    v57 = v70;
    *v70 = v35;
    *(v57 + 8) = 0;
    *(v57 + 9) = v71;
    v58 = v57;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F0D0, &unk_1E42E82B0);
    v54(v58 + *(v59 + 48), v55, v56);
    v60 = *(v49 + 8);
    v60(v53, v56);
    v60(v55, v56);
    OUTLINED_FUNCTION_54_0();
    return;
  }

LABEL_8:
  __break(1u);
}

void sub_1E406AB18()
{
  OUTLINED_FUNCTION_82_2();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_173();
  v3 = type metadata accessor for Scoreboard(v2);
  v4 = OUTLINED_FUNCTION_8_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_222();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_250();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  OUTLINED_FUNCTION_3_257(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0, &qword_1E4297FE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8, &unk_1E42AA120);
  sub_1E37432DC();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_8_195();
  sub_1E4203B34();
  OUTLINED_FUNCTION_95();
}

void sub_1E406AC8C()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v4 = sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v40 = v9 - v8;
  v10 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v41 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = (v14 - v13);
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v24 = (v23 - v22);
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*v1 < *(v0 + 16))
  {
    v39 = v19;
    sub_1E32822E0(v19, v20, v21);
    OUTLINED_FUNCTION_50();

    v37 = sub_1E4202C44();
    v38 = v25;
    v36 = v26 & 1;
    OUTLINED_FUNCTION_8();
    v34 = v3;
    v28 = (*(v27 + 1792))();
    type metadata accessor for Scoreboard(0);
    v35 = v10;
    sub_1E3746E10(v24);
    sub_1E374709C(v15);
    v29 = MEMORY[0x1E6981148];
    v30 = MEMORY[0x1E6981138];
    OUTLINED_FUNCTION_120();
    v31 = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_120();
    sub_1E37B5FBC(v32);
    OUTLINED_FUNCTION_120();
    v33 = j__OUTLINED_FUNCTION_18();
    sub_1E37B6028(v28, v24, v15, v31, v40, v33 & 1, v29, v30, v34);

    (*(v6 + 8))(v40, v4);
    (*(v41 + 8))(v15, v35);
    (*(v17 + 8))(v24, v39);
    sub_1E37434B8(v37, v38, v36);

    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

void *sub_1E406AFA8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF396E0, &unk_1E42D4EA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1E406B0D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F0D8, &qword_1E42E82E8);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1E327D33C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_1E377E1B0(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_1E406B214()
{
  result = qword_1ECF3EF78;
  if (!qword_1ECF3EF78)
  {
    type metadata accessor for ScoreboardObservable(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EF78);
  }

  return result;
}

uint64_t objectdestroyTm_61()
{
  type metadata accessor for SportsKitScoreboardUpdating(0);
  OUTLINED_FUNCTION_60_5();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);

  v4 = *(v0 + 28);
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2();
  (*(v5 + 8))(v1 + v3 + v4);
  OUTLINED_FUNCTION_29_19();

  return swift_deallocObject();
}

void sub_1E406B3AC(uint64_t a1, NSObject *a2, const char *a3)
{
  v7 = type metadata accessor for SportsKitScoreboardUpdating(0);
  OUTLINED_FUNCTION_17_2(v7);
  sub_1E40684DC(v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80)), a1, a2, a3);
}

void sub_1E406B424()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  v3 = OUTLINED_FUNCTION_32_0();
  v5 = sub_1E377C2BC(v3, v4);

  v6 = *v1;
  *v1 = v5;
}

unint64_t sub_1E406B4A8()
{
  result = qword_1ECF3EFC0;
  if (!qword_1ECF3EFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EFA0, &qword_1E42E8028);
    v3 = sub_1E406B534();
    sub_1E3FCA968(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EFC0);
  }

  return result;
}

unint64_t sub_1E406B534()
{
  result = qword_1ECF3EFC8;
  if (!qword_1ECF3EFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EFB8, &qword_1E42E8040);
    sub_1E32752B0(&qword_1ECF3EFD0, &qword_1ECF3EFD8, &qword_1E42E8048, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EFC8);
  }

  return result;
}

uint64_t sub_1E406B5EC()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

uint64_t sub_1E406B644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF98, &qword_1E42E8020);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E406B6EC(uint64_t a1)
{
  result = sub_1E41FE934();
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

uint64_t sub_1E406B7E4(uint64_t a1)
{
  result = type metadata accessor for ScoreboardObservable(319);
  if (v2 <= 0x3F)
  {
    result = sub_1E41FFCB4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1E406B890(uint64_t a1)
{
  type metadata accessor for ScoreboardLayout();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ScoreboardObservable(319);
    if (v2 <= 0x3F)
    {
      sub_1E374A21C(319, &qword_1EE289EB0, MEMORY[0x1E697E730]);
      if (v3 <= 0x3F)
      {
        sub_1E374A21C(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1E406B97C()
{
  result = qword_1ECF3F000;
  if (!qword_1ECF3F000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EF90, &unk_1E42E7FA0);
    sub_1E406BA08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F000);
  }

  return result;
}

unint64_t sub_1E406BA08()
{
  result = qword_1ECF3F008;
  if (!qword_1ECF3F008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EF88, &qword_1E42E7F98);
    sub_1E32752B0(&qword_1ECF3F010, &qword_1ECF3EF80, &qword_1E42E7F90, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F008);
  }

  return result;
}

unint64_t sub_1E406BAC0()
{
  result = qword_1ECF3F018;
  if (!qword_1ECF3F018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EFF0, &qword_1E42E8068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EFA0, &qword_1E42E8028);
    sub_1E406B4A8();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1ECF3F020, &qword_1ECF3EFF8, qword_1E42E8070, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F018);
  }

  return result;
}

uint64_t sub_1E406BBB4()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

uint64_t objectdestroy_44Tm_0()
{
  OUTLINED_FUNCTION_82_2();
  type metadata accessor for Scoreboard(0);
  OUTLINED_FUNCTION_144();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  v4 = v1 + v3;

  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  v7 = *(v0 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4201324();
    OUTLINED_FUNCTION_2();
    (*(v8 + 8))(v4 + v7);
  }

  else
  {
  }

  OUTLINED_FUNCTION_29_19();
  OUTLINED_FUNCTION_95();

  return swift_deallocObject();
}

uint64_t sub_1E406BDB8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = OUTLINED_FUNCTION_70_0();
  v5 = type metadata accessor for Scoreboard(v4);
  OUTLINED_FUNCTION_17_2(v5);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a2(a1, v7, v8);
}

unint64_t sub_1E406BE48()
{
  result = qword_1ECF3F0A0;
  if (!qword_1ECF3F0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F098, &qword_1E42E8290);
    sub_1E32752B0(&qword_1ECF3F0A8, &qword_1ECF3F0B0, &qword_1E42E8298, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F0A0);
  }

  return result;
}

void sub_1E406BF00()
{
  v0 = OUTLINED_FUNCTION_70_0();
  v1 = type metadata accessor for Scoreboard(v0);
  OUTLINED_FUNCTION_8_0(v1);

  sub_1E406A630();
}

uint64_t sub_1E406BFA0()
{
  OUTLINED_FUNCTION_27_2();
  v0 = type metadata accessor for SportsKitScoreboardUpdating(0);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_19_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_22_5(v2);

  return sub_1E406876C();
}

uint64_t objectdestroy_54Tm_1()
{
  type metadata accessor for SportsKitScoreboardUpdating(0);
  OUTLINED_FUNCTION_60_5();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = *(v0 + 28);
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2();
  (*(v5 + 8))(v1 + v3 + v4);

  OUTLINED_FUNCTION_29_19();

  return swift_deallocObject();
}

uint64_t sub_1E406C168()
{
  OUTLINED_FUNCTION_27_2();
  v0 = type metadata accessor for SportsKitScoreboardUpdating(0);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_19_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_22_5(v2);

  return sub_1E40680C8();
}

uint64_t sub_1E406C258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E406C2A0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_4_257();
  sub_1E406C258(v8, v9, &unk_1E42BD340);
  v10 = sub_1E4201754();
  v12 = v11;
  type metadata accessor for Route(0);
  OUTLINED_FUNCTION_1_286();
  sub_1E406C258(v13, v14, &unk_1E42DFC80);
  v15 = a1;

  v16 = sub_1E42010C4();
  v18 = v17;
  (*((*MEMORY[0x1E69E7D40] & *v15) + 0x190))(a2);

  *a4 = v15;
  a4[1] = v16;
  a4[2] = v18;
  a4[3] = v10;
  a4[4] = v12;
  a4[5] = a3;
}

void sub_1E406C3E4()
{
  OUTLINED_FUNCTION_31_1();
  v65 = v1;
  v67 = sub_1E42022B4();
  OUTLINED_FUNCTION_0_10();
  v66 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v5 - v4);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F0E0, &qword_1E42E82F0);
  OUTLINED_FUNCTION_0_10();
  v61 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v46 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F0E8, &qword_1E42E82F8);
  OUTLINED_FUNCTION_0_10();
  v64 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v46 - v11;
  sub_1E406CB48();
  v12 = *(v0 + 16);
  v59 = *(v0 + 8);
  v58 = type metadata accessor for Route(0);
  OUTLINED_FUNCTION_1_286();
  v55 = sub_1E406C258(v13, v14, &unk_1E42DFC80);
  sub_1E42010D4();
  swift_getKeyPath();
  sub_1E42010E4();

  v79 = v70;
  v80 = v71;
  v81 = v72;
  v56 = (*v12 + 272);
  v57 = *v56;
  v57(v15);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8, &qword_1E42B22C0);
  sub_1E4203A84();

  v50 = v82;
  v49 = v83;
  v51 = v84;
  v16 = *v0;
  v85[0] = *(v0 + 24);
  v52 = *(v0 + 40);
  OUTLINED_FUNCTION_27_10();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_27_97(v17);
  v53 = v16;

  sub_1E37E93E8(v85, &v70, &qword_1ECF303B0, &unk_1E42B1660);

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D0, &unk_1E429C650);
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F0F0, &qword_1E42E8330);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F0F8, &qword_1E42E8338);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F100, &qword_1E42E8340);
  v20 = type metadata accessor for AlertContext(255);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F108, &qword_1E42E8348);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F110, &unk_1E42E8350);
  OUTLINED_FUNCTION_1_11();
  v25 = sub_1E32752B0(v23, &qword_1ECF3F108, &qword_1E42E8348, v24);
  v26 = sub_1E406D2F4();
  v70 = v21;
  v71 = v22;
  v72 = v25;
  v73 = v26;
  OUTLINED_FUNCTION_5_236();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_1E32822E0(OpaqueTypeConformance2, v28, v29);
  v31 = sub_1E406D358();
  v32 = sub_1E406D480();
  v70 = v48;
  v71 = MEMORY[0x1E69E6158];
  v72 = v18;
  v73 = v19;
  v74 = v20;
  v75 = OpaqueTypeConformance2;
  v76 = v30;
  v77 = v31;
  v78 = v32;
  OUTLINED_FUNCTION_9_182();
  v48 = swift_getOpaqueTypeConformance2();
  v33 = OUTLINED_FUNCTION_14_173(v48);
  v34 = v47;
  v35 = v68;
  v36 = v60;
  sub_1E4202FF4();

  OUTLINED_FUNCTION_15_5();
  v37(v36, v35);
  sub_1E42010D4();
  swift_getKeyPath();
  sub_1E42010E4();

  v79 = v70;
  v80 = v71;
  v81 = v72;
  v57(v38);
  sub_1E4203A84();

  v39 = v62;
  sub_1E406D4FC(v62);
  OUTLINED_FUNCTION_27_10();
  v40 = swift_allocObject();
  OUTLINED_FUNCTION_27_97(v40);
  v41 = v53;

  sub_1E37E93E8(v85, &v70, &qword_1ECF303B0, &unk_1E42B1660);

  v70 = v68;
  v71 = v34;
  v72 = v48;
  v73 = v33;
  OUTLINED_FUNCTION_11_184();
  swift_getOpaqueTypeConformance2();
  v42 = v63;
  v43 = v69;
  sub_1E4202E34();

  OUTLINED_FUNCTION_15_5();
  v44(v39, v67);
  OUTLINED_FUNCTION_15_5();
  v45(v43, v42);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E406CB48()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v61[2] = v2;
  v74 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0, &unk_1E42DFB60);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v69 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17_3(v61 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D170, &qword_1E42DF9F0);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v73 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17_3(v61 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F0F0, &qword_1E42E8330);
  OUTLINED_FUNCTION_0_10();
  v71 = v17;
  v72 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v61 - v19;
  v21 = *(v0 + 8);
  v22 = *(v0 + 16);
  v23 = type metadata accessor for Route(0);
  OUTLINED_FUNCTION_1_286();
  v26 = sub_1E406C258(v24, v25, &unk_1E42DFC80);
  v68 = v21;
  v66 = v23;
  sub_1E42010D4();
  swift_getKeyPath();
  v67 = v26;
  sub_1E42010E4();

  v81 = v83;
  v82 = v84;
  (*(*v22 + 272))(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8, &qword_1E42B22C0);
  sub_1E4203A84();

  LODWORD(v65) = v77;
  v28 = *v1;
  v81 = *(v1 + 24);
  OUTLINED_FUNCTION_27_10();
  v29 = swift_allocObject();
  v30 = *(v1 + 16);
  v29[1] = *v1;
  v29[2] = v30;
  v29[3] = *(v1 + 32);
  v31 = v28;

  sub_1E37E93E8(&v81, &v83, &qword_1ECF303B0, &unk_1E42B1660);

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F108, &qword_1E42E8348);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F110, &unk_1E42E8350);
  OUTLINED_FUNCTION_1_11();
  v36 = sub_1E32752B0(v34, &qword_1ECF3F108, &qword_1E42E8348, v35);
  v62 = sub_1E406D2F4();
  v63 = v36;
  v64 = v33;
  v70 = v20;
  v65 = v32;
  sub_1E4203484();

  v37 = v61[1];

  v39 = *(*v22 + 800);
  v39(v38);
  v40 = type metadata accessor for DestinationContext(0);
  if (__swift_getEnumTagSinglePayload(v37, 1, v40) == 1)
  {
    v41 = &unk_1ECF3F9E0;
    v42 = &unk_1E42DFB60;
    v43 = v37;
LABEL_5:
    sub_1E325F6F0(v43, v41, v42);
    v47 = 0;
    v48 = 0xE000000000000000;
    goto LABEL_7;
  }

  v44 = v61[0];
  sub_1E37E93E8(v37 + *(v40 + 32), v61[0], &qword_1ECF3D170, &qword_1E42DF9F0);
  OUTLINED_FUNCTION_3_258();
  sub_1E406E974(v37, v45);
  v46 = type metadata accessor for AlertContext(0);
  if (__swift_getEnumTagSinglePayload(v44, 1, v46) == 1)
  {
    v41 = &qword_1ECF3D170;
    v42 = &qword_1E42DF9F0;
    v43 = v44;
    goto LABEL_5;
  }

  v49 = (v44 + *(v46 + 20));
  v47 = *v49;
  v48 = v49[1];

  sub_1E406E974(v44, type metadata accessor for AlertContext);
LABEL_7:
  v50 = v73;
  v79 = v47;
  v80 = v48;
  v73 = v48;
  sub_1E42010D4();
  swift_getKeyPath();
  sub_1E42010E4();

  v68 = v83;
  LODWORD(v67) = v84;
  v52 = v69;
  v39(v51);
  if (__swift_getEnumTagSinglePayload(v52, 1, v40) == 1)
  {
    sub_1E325F6F0(v52, &unk_1ECF3F9E0, &unk_1E42DFB60);
    v53 = type metadata accessor for AlertContext(0);
    v54 = __swift_storeEnumTagSinglePayload(v50, 1, 1, v53);
  }

  else
  {
    sub_1E37E93E8(v52 + *(v40 + 32), v50, &qword_1ECF3D170, &qword_1E42DF9F0);
    OUTLINED_FUNCTION_3_258();
    v54 = sub_1E406E974(v52, v55);
  }

  MEMORY[0x1EEE9AC00](v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F0F8, &qword_1E42E8338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F100, &qword_1E42E8340);
  type metadata accessor for AlertContext(0);
  v75 = v65;
  v76 = v64;
  v77 = v63;
  v78 = v62;
  OUTLINED_FUNCTION_5_236();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E32822E0(OpaqueTypeConformance2, v57, v58);
  sub_1E406D358();
  sub_1E406D480();
  v59 = v72;
  v60 = v70;
  sub_1E4203434();

  sub_1E325F6F0(v50, &qword_1ECF3D170, &qword_1E42DF9F0);

  (*(v71 + 8))(v60, v59);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E406D2F4()
{
  result = qword_1EE2977A8[0];
  if (!qword_1EE2977A8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F110, &unk_1E42E8350);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2977A8);
  }

  return result;
}

unint64_t sub_1E406D358()
{
  result = qword_1EE288D60;
  if (!qword_1EE288D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F0F8, &qword_1E42E8338);
    sub_1E406D414(&qword_1EE2883C8, &qword_1ECF3EB90, &qword_1E42E69D8);
    sub_1E406D414(&qword_1EE2883C0, &qword_1ECF3F118, &qword_1E42E8360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D60);
  }

  return result;
}

uint64_t sub_1E406D414(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1E40374F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E406D480()
{
  result = qword_1EE288728;
  if (!qword_1EE288728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F100, &qword_1E42E8340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288728);
  }

  return result;
}

uint64_t sub_1E406D4FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E42022B4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0, &unk_1E42DFB60);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  *a1 = sub_1E4203944();
  v15 = *MEMORY[0x1E697C8C0];
  v16 = *(v6 + 104);
  v17 = v16(a1, v15, v4);
  (*(**(v1 + 40) + 288))(v17);
  (*(**(v1 + 16) + 800))();
  v18 = type metadata accessor for DestinationContext(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    return sub_1E325F6F0(v14, &unk_1ECF3F9E0, &unk_1E42DFB60);
  }

  v20 = v14[48];
  OUTLINED_FUNCTION_3_258();
  result = sub_1E406E974(v14, v21);
  if ((v20 & 1) == 0)
  {
    v31.origin.x = OUTLINED_FUNCTION_26_115();
    CGRectGetMidX(v31);
    v22 = *(v2 + 24);
    if (v22)
    {
      v23 = *(*v22 + 184);

      v23(v24);
      v26 = v25;

      if ((v26 & 1) == 0)
      {
        v32.origin.x = OUTLINED_FUNCTION_26_115();
        CGRectGetMidY(v32);
      }

      v27 = sub_1E4203934();
      (*(v6 + 8))(a1, v4);
      *v10 = v27;
      v16(v10, v15, v4);
      return (*(v6 + 32))(a1, v10, v4);
    }

    else
    {
      type metadata accessor for AppEnvironment(0);
      OUTLINED_FUNCTION_4_257();
      sub_1E406C258(v28, v29, &unk_1E42BD340);
      result = sub_1E4201744();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1E406D8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1E406D960()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v37 = v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB90, &qword_1E42E69D8);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v35 - v8;
  v35[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F138, &unk_1E42E8570);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v35 - v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F118, &qword_1E42E8360);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v35 - v16;
  v18 = type metadata accessor for AlertContext(0);
  if (*(v3 + *(v18 + 32)))
  {
    v40 = *(v3 + *(v18 + 32));
    swift_getKeyPath();
    v19 = *v1;
    v20 = *(v1 + 8);
    v41 = *(v1 + 24);
    v42 = v20;
    OUTLINED_FUNCTION_27_10();
    v21 = swift_allocObject();
    OUTLINED_FUNCTION_23_101(v21);

    v22 = v19;
    sub_1E37E93E8(&v42, v39, &qword_1ECF3F140, &qword_1E42E85A8);
    sub_1E37E93E8(&v41, v39, &qword_1ECF303B0, &unk_1E42B1660);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D198, &unk_1E42DFD70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB98, &unk_1E42E69E0);
    OUTLINED_FUNCTION_8_196();
    sub_1E32752B0(v23, v24, &unk_1E42DFD70, v25);
    sub_1E375BEF4();
    sub_1E40374F4();
    sub_1E4203B34();
    v26 = v38;
    (*(v6 + 16))(v12, v9, v38);
    swift_storeEnumTagMultiPayload();
    sub_1E406D414(&qword_1EE2883C8, &qword_1ECF3EB90, &qword_1E42E69D8);
    sub_1E406D414(&qword_1EE2883C0, &qword_1ECF3F118, &qword_1E42E8360);
    sub_1E4201F44();
    (*(v6 + 8))(v9, v26);
  }

  else
  {
    v40 = *(v3 + *(v18 + 28));
    swift_getKeyPath();
    v27 = *v1;
    v28 = *(v1 + 8);
    v41 = *(v1 + 24);
    v42 = v28;
    OUTLINED_FUNCTION_27_10();
    v29 = swift_allocObject();
    OUTLINED_FUNCTION_23_101(v29);

    v30 = v27;
    sub_1E37E93E8(&v42, v39, &qword_1ECF3F140, &qword_1E42E85A8);
    sub_1E37E93E8(&v41, v39, &qword_1ECF303B0, &unk_1E42B1660);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F148, &unk_1E42E85B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB98, &unk_1E42E69E0);
    OUTLINED_FUNCTION_8_196();
    sub_1E32752B0(v31, v32, &unk_1E42E85B0, v33);
    sub_1E375BEF4();
    sub_1E40374F4();
    sub_1E4203B34();
    v34 = v36;
    (*(v14 + 16))(v12, v17, v36);
    swift_storeEnumTagMultiPayload();
    sub_1E406D414(&qword_1EE2883C8, &qword_1ECF3EB90, &qword_1E42E69D8);
    sub_1E406D414(&qword_1EE2883C0, &qword_1ECF3F118, &qword_1E42E8360);
    sub_1E4201F44();
    (*(v14 + 8))(v17, v34);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E406DE70()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v42 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F428, &qword_1E42AE420);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F570, &unk_1E42B7C40);
  v16 = OUTLINED_FUNCTION_17_2(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  v23 = sub_1E3FBD320(v6);
  if (v24)
  {
    v25 = v24;
    v38 = v23;
    v41 = v8;
    v26 = [v6 style];
    v39 = v3;
    v40 = v1;
    if (v26 == 2)
    {
      sub_1E4200A04();
    }

    else
    {
      if ([v6 style] != 1)
      {
        v32 = sub_1E4200A34();
        v33 = 1;
        goto LABEL_11;
      }

      sub_1E4200A14();
    }

    v32 = sub_1E4200A34();
    v33 = 0;
LABEL_11:
    __swift_storeEnumTagSinglePayload(v22, v33, 1, v32);
    sub_1E37E93E8(v22, v19, &qword_1ECF2F570, &unk_1E42B7C40);
    v34 = swift_allocObject();
    *(v34 + 16) = v6;
    MEMORY[0x1EEE9AC00](v34);
    *(&v37 - 2) = v38;
    *(&v37 - 1) = v25;
    v35 = v6;
    sub_1E4203954();

    sub_1E325F6F0(v22, &qword_1ECF2F570, &unk_1E42B7C40);
    v36 = v41;
    (*(v11 + 32))(v41, v14, v9);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v9);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
}

uint64_t sub_1E406E134@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AlertContext(0);
  if (*(a1 + *(v4 + 24) + 8))
  {
    sub_1E32822E0(v4, v5, v6);

    result = sub_1E4202C44();
    v11 = v10 & 1;
  }

  else
  {
    result = 0;
    v8 = 0;
    v11 = 0;
    v9 = 0;
  }

  *a2 = result;
  a2[1] = v8;
  a2[2] = v11;
  a2[3] = v9;
  return result;
}

void sub_1E406E1CC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v64 = v4;
  v58 = *(*(v2 + 16) - 8);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v59 = v8;
  v9 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v55 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  v54 = *(v3 + 24);
  v71 = v54;
  v72 = MEMORY[0x1E697E040];
  OUTLINED_FUNCTION_4_1();
  WitnessTable = swift_getWitnessTable();
  *&v67 = v9;
  *(&v67 + 1) = WitnessTable;
  v56 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v61 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17_3(&v53 - v18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F120, &qword_1E42E84E8);
  v63 = OpaqueTypeMetadata2;
  v19 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  v60 = v23 - v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_17_3(&v53 - v26);
  (*v1)();
  v27 = *(v1 + 32);
  v73 = *(v1 + 16);
  v74 = v27;
  v28 = *(v1 + 32);
  v67 = *(v1 + 16);
  v68 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F128, &qword_1E42E84F0);
  v29 = sub_1E42038F4();
  if ((v70 & 1) == 0)
  {
    sub_1E3A1F10C(v29, v30, v31);
    sub_1E41499CC(MEMORY[0x1E69E7DE0], &v67);
  }

  v32 = *(v1 + 32);
  v67 = *(v1 + 16);
  v68 = v32;
  v33 = sub_1E42038F4();
  if ((v70 & 1) == 0)
  {
    *&v69 = *(&v69 + 1);
    sub_1E3A1F10C(v33, v34, v35);
    sub_1E41499CC(MEMORY[0x1E69E7DE0], &v67);
  }

  sub_1E4203DA4();
  v36 = v59;
  sub_1E4203464();
  OUTLINED_FUNCTION_15_5();
  v37(v7, v36);
  v38 = v57;
  v39 = v56;
  sub_1E4203344();
  OUTLINED_FUNCTION_15_5();
  v40(v13, v9);
  swift_getKeyPath();
  v69 = v73;
  v70 = v74;
  sub_1E4203914();
  *&v69 = v9;
  *(&v69 + 1) = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v60;
  v43 = v63;
  sub_1E4202DE4();

  OUTLINED_FUNCTION_15_5();
  v44(v38, v43);
  OUTLINED_FUNCTION_1_25();
  v49 = sub_1E32752B0(v45, v46, v47, v48);
  v65 = OpaqueTypeConformance2;
  v66 = v49;
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  v50 = *(v21 + 16);
  v51 = v62;
  v50(v62, v42, v19);
  v52 = *(v21 + 8);
  v52(v42, v19);
  v50(v64, v51, v19);
  v52(v51, v19);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E406E73C@<D0>(__n128 *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1E40DDADC(v7, a2, a3, a4);
  result = v7[0].n128_f64[0];
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  a1[2].n128_u8[0] = v8;
  return result;
}

uint64_t sub_1E406E784(uint64_t a1)
{
  v1 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v1;
  v9 = *(a1 + 32);
  v10 = *&v8[0];
  sub_1E39F6940(&v10, v7);

  return sub_1E40DDB38(v8, v2, v3, v4, v5);
}

uint64_t sub_1E406E7E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x1A8))();
  v7 = v6;
  v9 = v8;
  v10 = *(v2 + 24);
  v15 = *(v2 + 40);
  v16 = v10;
  OUTLINED_FUNCTION_27_10();
  v11 = swift_allocObject();
  v12 = v2[2];
  v11[1] = v2[1];
  v11[2] = v12;
  v11[3] = v2[3];
  v13 = v4;
  sub_1E37E93E8(&v16, v20, &qword_1ECF3F140, &qword_1E42E85A8);
  sub_1E37E93E8(&v15, v20, &qword_1ECF303B0, &unk_1E42B1660);

  v17 = 0;
  v18 = 0;
  v19 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD70, &qword_1E429F170);
  sub_1E42038E4();
  result = v22;
  if ((v9 & 1) != 0 || ((v7 | v5) & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {

    result = 0;
  }

  else
  {
    v5 = v20[0];
    v7 = v20[1];
    v9 = v21;
  }

  *a1 = sub_1E406EB24;
  *(a1 + 8) = v11;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9 & 1;
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1E406E974(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E406EA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1E32822E0(a1, a2, a3);

  result = sub_1E4202C44();
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v8;
  return result;
}

uint64_t objectdestroyTm_62()
{

  OUTLINED_FUNCTION_27_10();

  return swift_deallocObject();
}

id sub_1E406EBD8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI36MetricsEventDetailListViewController_event] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MetricsEventDetailListViewController();
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1E406ECB0()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for MetricsEventDetailListViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  OUTLINED_FUNCTION_2_251();
  v1 = sub_1E4205ED4();
  [v0 setTitle_];

  v2 = [v0 navigationItem];
  [v2 setLargeTitleDisplayMode_];

  v3 = [v0 tableView];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for MetricsDataFieldCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1E4019784();

    v6 = sub_1E4205ED4();

    [v4 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v6];
  }

  else
  {
    __break(1u);
  }
}

void sub_1E406EE0C(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MetricsEventDetailListViewController();
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 tableView];
  if (v3)
  {
    v4 = v3;
    [v3 reloadData];
  }

  else
  {
    __break(1u);
  }
}

id sub_1E406EF70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsEventDetailListViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E406EFB4()
{
  v0 = *(sub_1E4167DA8() + 2);

  return v0;
}

unint64_t sub_1E406F110(void *a1)
{
  v2 = v1;
  sub_1E4019784();

  v4 = sub_1E4205ED4();

  v5 = sub_1E41FE7E4();
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5];

  type metadata accessor for MetricsDataFieldCell();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1E4167DA8();
    result = sub_1E41FE824();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v9 + 2))
    {
      v11 = v9[result + 32];

      sub_1E41675F8(v11);
      v14 = v13;
      result = *(v2 + OBJC_IVAR____TtC8VideosUI36MetricsEventDetailListViewController_event);
      if (result)
      {
        v15 = v12;
        v16 = sub_1E4167B40(result, v11);
        v18 = v17;
        sub_1E41678A8(v11);
        (*((*MEMORY[0x1E69E7D40] & *v8) + 0xD8))(v14, v15, v16, v18, v19, v20);

        return v8;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v21 = objc_allocWithZone(MEMORY[0x1E69DD028]);

  return [v21 init];
}

unint64_t sub_1E406F3B4()
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

uint64_t sub_1E406F424(char a1, char a2)
{
  if (qword_1E42E87C8[a1] == qword_1E42E87C8[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1E42079A4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1E406F4A8(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E406F4F0(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E406F54C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E406F3B4();
  *a1 = result;
  return result;
}

uint64_t sub_1E406F57C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E406F400(*v1);
  *a1 = result;
  a1[1] = 0xE800000000000000;
  return result;
}

uint64_t sub_1E406F5AC(unsigned __int8 a1, char a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 0xFFFFFF00 | a1;
}

uint64_t sub_1E406F5C4(uint64_t a1, __n128 a2)
{
  v2 = sub_1E4206584();
  MEMORY[0x1E69109E0](v2);

  MEMORY[0x1E69109E0](93, 0xE100000000000000);
  return 0x5B3A6874646977;
}

uint64_t sub_1E406F634(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1E3928950(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 16 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E406F6A4(uint64_t a1)
{
  v8 = 0;
  v9 = 0xE000000000000000;
  v6 = sub_1E406F898(a1);
  sub_1E406F82C(&v6);
  v1 = *(v6 + 2);
  if (v1)
  {
    v2 = v6 + 40;
    do
    {
      v2 += 24;
      v6 = sub_1E4207944();
      v7 = v3;
      MEMORY[0x1E69109E0](8250, 0xE200000000000000);
      v4 = sub_1E4206584();
      MEMORY[0x1E69109E0](v4);

      MEMORY[0x1E69109E0](93, 0xE100000000000000);
      MEMORY[0x1E69109E0](0x5B3A6874646977, 0xE700000000000000);

      MEMORY[0x1E69109E0](10, 0xE100000000000000);
      MEMORY[0x1E69109E0](v6, v7);

      --v1;
    }

    while (v1);

    return v8;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1E406F82C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E4070664(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E406FB9C(v5);
  *a1 = v2;
  return result;
}

void *sub_1E406F898(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1E406FB18(*(a1 + 16), 0);
  v4 = sub_1E4070560(&v7, (v3 + 4), v1, a1);
  v5 = v7;

  sub_1E34AF4DC(v5);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

_BYTE *sub_1E406F958(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E406FA30(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 9);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E406FA7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E406FACC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

void *sub_1E406FB18(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F160, &qword_1E42E87B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

uint64_t sub_1E406FB9C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E4207914();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F168, &qword_1E42E87C0);
        v6 = sub_1E4206314();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1E406FD30(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E406FCA0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E406FCA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = v8 + 24;
        v10 = *(v8 + 24);
        if (v10 >= *v8)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v11 = *(v8 + 32);
        v12 = *(v8 + 40);
        v13 = *(v8 + 41);
        *v9 = *v8;
        v14 = *(v8 + 16);
        *v8 = v10;
        *(v8 + 8) = v11;
        *(v8 + 16) = v12;
        *(v8 + 17) = v13;
        v8 -= 24;
        *(v9 + 16) = v14;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1E406FD30(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v87 = result;
  v91 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v86 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9);
        v11 = (*a3 + 24 * v7);
        v14 = *v11;
        v13 = v11 + 6;
        v12 = v14;
        v15 = v7 + 2;
        while (1)
        {
          v16 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v17 = (v10 < v12) ^ (*v13 >= *(v13 - 3));
          v13 += 3;
          ++v15;
          if ((v17 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v12)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v16)
            {
              v6 = v16;
            }

            v18 = 24 * v6;
            v19 = 24 * v7 + 17;
            v20 = v9;
            v21 = v7;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v23 = (v22 + v19);
                v24 = *(v22 + v19 - 17);
                v25 = v22 + v18;
                v26 = *(v23 - 9);
                v27 = *(v23 - 1);
                v28 = *v23;
                v29 = *(v25 - 8);
                *(v23 - 17) = *(v25 - 24);
                *(v23 - 1) = v29;
                *(v25 - 24) = v24;
                *(v25 - 16) = v26;
                *(v25 - 8) = v27;
                *(v25 - 7) = v28;
              }

              ++v21;
              v18 -= 24;
              v19 += 24;
            }

            while (v21 < v20);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return result;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9 - 24;
            v32 = v7 - v9;
            do
            {
              v33 = v32;
              v34 = v31;
              do
              {
                v35 = v34 + 24;
                v36 = *(v34 + 24);
                if (v36 >= *v34)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v37 = *(v34 + 32);
                v38 = *(v34 + 40);
                v39 = *(v34 + 41);
                *v35 = *v34;
                v40 = *(v34 + 16);
                *v34 = v36;
                *(v34 + 8) = v37;
                *(v34 + 16) = v38;
                *(v34 + 17) = v39;
                v34 -= 24;
                *(v35 + 16) = v40;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v88 = v9;
      if ((result & 1) == 0)
      {
        result = sub_1E37FFF70(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v43 = *(v8 + 16);
      v42 = *(v8 + 24);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        result = sub_1E37FFF70((v42 > 1), v43 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v44;
      v45 = v8 + 32;
      v46 = (v8 + 32 + 16 * v43);
      *v46 = v7;
      v46[1] = v88;
      v89 = *v87;
      if (!*v87)
      {
        goto LABEL_114;
      }

      if (v43)
      {
        while (1)
        {
          v47 = v44 - 1;
          v48 = (v45 + 16 * (v44 - 1));
          v49 = (v8 + 16 * v44);
          if (v44 >= 4)
          {
            break;
          }

          if (v44 == 3)
          {
            v50 = *(v8 + 32);
            v51 = *(v8 + 40);
            v60 = __OFSUB__(v51, v50);
            v52 = v51 - v50;
            v53 = v60;
LABEL_56:
            if (v53)
            {
              goto LABEL_96;
            }

            v65 = *v49;
            v64 = v49[1];
            v66 = __OFSUB__(v64, v65);
            v67 = v64 - v65;
            v68 = v66;
            if (v66)
            {
              goto LABEL_99;
            }

            v69 = v48[1];
            v70 = v69 - *v48;
            if (__OFSUB__(v69, *v48))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v67, v70))
            {
              goto LABEL_104;
            }

            if (v67 + v70 >= v52)
            {
              if (v52 < v70)
              {
                v47 = v44 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v44 < 2)
          {
            goto LABEL_98;
          }

          v72 = *v49;
          v71 = v49[1];
          v60 = __OFSUB__(v71, v72);
          v67 = v71 - v72;
          v68 = v60;
LABEL_71:
          if (v68)
          {
            goto LABEL_101;
          }

          v74 = *v48;
          v73 = v48[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_103;
          }

          if (v75 < v67)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v47 - 1 >= v44)
          {
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
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v79 = (v45 + 16 * (v47 - 1));
          v80 = *v79;
          v81 = (v45 + 16 * v47);
          v82 = v81[1];
          result = sub_1E4070394((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v89);
          if (v5)
          {
          }

          if (v82 < v80)
          {
            goto LABEL_91;
          }

          v83 = v8;
          v84 = *(v8 + 16);
          if (v47 > v84)
          {
            goto LABEL_92;
          }

          *v79 = v80;
          v79[1] = v82;
          if (v47 >= v84)
          {
            goto LABEL_93;
          }

          v44 = v84 - 1;
          result = memmove((v45 + 16 * v47), v81 + 2, 16 * (v84 - 1 - v47));
          *(v83 + 16) = v84 - 1;
          v85 = v84 > 2;
          v8 = v83;
          v5 = 0;
          if (!v85)
          {
            goto LABEL_85;
          }
        }

        v54 = v45 + 16 * v44;
        v55 = *(v54 - 64);
        v56 = *(v54 - 56);
        v60 = __OFSUB__(v56, v55);
        v57 = v56 - v55;
        if (v60)
        {
          goto LABEL_94;
        }

        v59 = *(v54 - 48);
        v58 = *(v54 - 40);
        v60 = __OFSUB__(v58, v59);
        v52 = v58 - v59;
        v53 = v60;
        if (v60)
        {
          goto LABEL_95;
        }

        v61 = v49[1];
        v62 = v61 - *v49;
        if (__OFSUB__(v61, *v49))
        {
          goto LABEL_97;
        }

        v60 = __OFADD__(v52, v62);
        v63 = v52 + v62;
        if (v60)
        {
          goto LABEL_100;
        }

        if (v63 >= v57)
        {
          v77 = *v48;
          v76 = v48[1];
          v60 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v60)
          {
            goto LABEL_105;
          }

          if (v52 < v78)
          {
            v47 = v44 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v88;
      a4 = v86;
      if (v88 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*v87)
  {
    goto LABEL_115;
  }

  sub_1E407025C(&v91, *v87, a3);
}

uint64_t sub_1E407025C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1E37FFF5C(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1E4070394((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1E4070394(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 24;
  v9 = (a3 - __dst) / 24;
  if (v8 < v9)
  {
    v10 = 24 * v8;
    v11 = &__src[24 * v8];
    if (a4 != __src || v11 <= a4)
    {
      memmove(a4, __src, v10);
    }

    v13 = &v4[v10];
    while (1)
    {
      if (v4 >= v13 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v15 = v6;
      v16 = v7 == v6;
      v6 += 24;
      if (!v16)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 24;
    }

    v15 = v4;
    v16 = v7 == v4;
    v4 += 24;
    if (v16)
    {
      goto LABEL_18;
    }

LABEL_17:
    v17 = *v15;
    *(v7 + 2) = *(v15 + 2);
    *v7 = v17;
    goto LABEL_18;
  }

  v18 = 24 * v9;
  if (a4 != __dst || &__dst[24 * v9] <= a4)
  {
    memmove(a4, __dst, 24 * v9);
  }

  v13 = &v4[v18];
LABEL_25:
  v20 = v6 - 24;
  for (v5 -= 24; v13 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v13 - 3) < *v20)
    {
      v16 = v5 + 24 == v6;
      v6 -= 24;
      if (!v16)
      {
        v23 = *v20;
        *(v5 + 16) = *(v20 + 2);
        *v5 = v23;
        v6 = v20;
      }

      goto LABEL_25;
    }

    if (v13 != (v5 + 24))
    {
      v22 = *(v13 - 24);
      *(v5 + 16) = *(v13 - 1);
      *v5 = v22;
    }

    v13 -= 24;
  }

LABEL_38:
  v24 = 24 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v24])
  {
    memmove(v6, v4, v24);
  }

  return 1;
}

void *sub_1E4070560(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7)) | (v9 << 6);
      v13 = *(*(a4 + 48) + 8 * v12);
      v7 &= v7 - 1;
      v14 = *(a4 + 56) + 16 * v12;
      v15 = *v14;
      v16 = *(v14 + 8);
      LOBYTE(v14) = *(v14 + 9);
      *a2 = v13;
      *(a2 + 8) = v15;
      *(a2 + 16) = v16;
      *(a2 + 17) = v14;
      a2 += 24;
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1E4070678(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F160, &qword_1E42E87B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

uint64_t sub_1E4070780()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E40707F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 840))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E407089C(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

void (*sub_1E407090C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_1E4200664();
  return sub_1E3844B40;
}

uint64_t sub_1E407099C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E4070A10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_1E4070B3C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E4070C60;
}

void sub_1E4070C60(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_1E4070A10(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1E4070A10(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1E4070D14()
{
  v1 = v0;
  v34 = MEMORY[0x1E69E7CC0];
  ViewModelKeys.rawValue.getter(19);
  v3 = v2;
  v5 = v4;
  v6 = (*(*v0 + 672))();
  sub_1E3277E60(v3, v5, v6, &v32);

  if (!v33)
  {
    goto LABEL_13;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_3_259(v7, v8, v9, v7, v10, v11, v12, v13, v29, v32) & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1E3C7ED20(28);
  sub_1E3277E60(v14, v15, v30, &v32);

  if (!v33)
  {
LABEL_13:
    sub_1E329505C(&v32);
    return MEMORY[0x1E69E7CC0];
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  if ((OUTLINED_FUNCTION_3_259(v16, v17, v18, v16, v19, v20, v21, v22, v30, v32) & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v23 = *(v31 + 16);
  if (!v23)
  {

    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for ContextMenuItemModel();
  v24 = MEMORY[0x1E69E7CC0];
  v25 = 32;
  do
  {
    v26 = *(v31 + v25);

    if (sub_1E3BD97B8(232, v26, v1))
    {

      MEMORY[0x1E6910BF0](v27);
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();

      v24 = v34;
    }

    v25 += 8;
    --v23;
  }

  while (v23);

  return v24;
}

uint64_t sub_1E4070F30()
{
  ViewModelKeys.rawValue.getter(19);
  v2 = v1;
  v4 = v3;
  v5 = (*(*v0 + 672))();
  sub_1E3277E60(v2, v4, v5, &v12);

  if (!v13)
  {
    goto LABEL_6;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_1_287(v6) & 1) == 0)
  {
    return 0;
  }

  sub_1E3C7ED20(27);
  sub_1E3277E60(v7, v8, v11, &v12);

  if (!v13)
  {
LABEL_6:
    sub_1E329505C(&v12);
    return 0;
  }

  if (OUTLINED_FUNCTION_1_287(v9))
  {
    type metadata accessor for ViewModel();

    return sub_1E39BED80(230, v11, v0);
  }

  return 0;
}

uint64_t sub_1E4071070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  swift_allocObject();
  return sub_1E40710C4(v5, a2, a3);
}

uint64_t sub_1E40710C4(__int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20[-v11];
  v13 = OBJC_IVAR____TtC8VideosUI21PlaybackSongViewModel__showWaveform;
  LOBYTE(v21[0]) = 0;
  sub_1E4200634();
  (*(v9 + 32))(v3 + v13, v12, v7);

  v14 = sub_1E39BEDCC(a1, a2, a3);
  v15 = v14;
  if (v14)
  {
    v16 = *(*v14 + 776);

    v16(v21, v17, &unk_1F5D5E8D8, &off_1F5D5CCB8);
    if (v21[3])
    {
      v18 = swift_dynamicCast();
      if (v18)
      {
        LOBYTE(v18) = v20[15];
      }
    }

    else
    {
      sub_1E329505C(v21);
      LOBYTE(v18) = 0;
    }

    sub_1E407089C(v18);
  }

  return v15;
}

void sub_1E4071280(void *a1)
{
  v2 = v1;
  v3 = (*a1 + 488);
  v4 = *v3;
  v5 = (*v3)();
  v7 = v5;
  if (v5)
  {
    v8 = sub_1E373E010(31, v5, v6);

    if (v8)
    {
      v7 = *(v8 + 24);
      v23 = *(v8 + 16);
    }

    else
    {
      v23 = 0;
      v7 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v10 = (*(*v2 + 488))(v5);
  if (v10)
  {
    v11 = sub_1E373E010(31, v10, v9);

    if (v11)
    {
      v10 = *(v11 + 24);
      v22 = *(v11 + 16);
    }

    else
    {
      v22 = 0;
      v10 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v13 = (*(*v2 + 504))(v25);
  if (*v12)
  {
    v14 = v12;
    v15 = v4();
    if (v15 && (v18 = sub_1E373E010(31, v15, v17), , v18))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *v14;
      sub_1E37518B8(v18, 31, isUniquelyReferenced_nonNull_native);
      *v14 = v24;
    }

    else
    {
      sub_1E388BF2C(31, v16, v17);
    }
  }

  v13(v25, 0);
  if (!v10)
  {
    if (!v7)
    {
      return;
    }

    goto LABEL_25;
  }

  if (!v7)
  {
LABEL_25:

    goto LABEL_26;
  }

  if (v22 == v23 && v10 == v7)
  {

    return;
  }

  v21 = sub_1E42079A4();

  if ((v21 & 1) == 0)
  {
LABEL_26:
    type metadata accessor for PlaybackSongViewModel(0);
    sub_1E4071718();
    sub_1E4200514();
    sub_1E4200594();
  }
}

uint64_t sub_1E4071580()
{
  v1 = OBJC_IVAR____TtC8VideosUI21PlaybackSongViewModel__showWaveform;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1E40715E8()
{
  v0 = ViewModel.deinit();
  v1 = OBJC_IVAR____TtC8VideosUI21PlaybackSongViewModel__showWaveform;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E407168C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PlaybackSongViewModel(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for PlaybackSongViewModel(uint64_t a1)
{
  result = qword_1EE29B870;
  if (!qword_1EE29B870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E4071718()
{
  result = qword_1EE265CF8[0];
  if (!qword_1EE265CF8[0])
  {
    type metadata accessor for PlaybackSongViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE265CF8);
  }

  return result;
}

void sub_1E4071778(uint64_t a1)
{
  sub_1E32A995C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E4071808(uint64_t a1, char a2, double a3)
{
  if (a2 == 1)
  {
  }

  else
  {
    return sub_1E42036E4();
  }
}

uint64_t sub_1E407181C(uint64_t a1, char a2, double a3)
{
  if (a2 == 2)
  {
  }

  else
  {
    return sub_1E42036E4();
  }
}

uint64_t sub_1E4071898(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_4_73();
  sub_1E42036B4();
  MEMORY[0x1E69124B0](a2);
  return sub_1E4207BA4();
}

uint64_t sub_1E4071900(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1E4207B44();
  sub_1E42036B4();
  MEMORY[0x1E69124B0](v2);
  return sub_1E4207BA4();
}

uint64_t type metadata accessor for SportsPlayByPlayItemViewData(uint64_t a1)
{
  result = qword_1EE2A9FA0;
  if (!qword_1EE2A9FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E40719DC()
{
  OUTLINED_FUNCTION_31_1();
  v186 = v0;
  v188 = v1;
  LODWORD(v3) = v2;
  v193 = v4;
  v6 = v5;
  v8 = v7;
  v182 = v9;
  v185 = sub_1E41FE1B4();
  OUTLINED_FUNCTION_0_10();
  v184 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v12);
  v190 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v189 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_20(v16);
  v176 = sub_1E4205784();
  OUTLINED_FUNCTION_0_10();
  v179 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D578, &unk_1E42A9910);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_17_3(v170 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98, &qword_1E42E3AB0);
  v24 = OUTLINED_FUNCTION_17_2(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = (v170 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v30 = (v170 - v29);
  countAndFlagsBits = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v187 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_9_3();
  v35 = OUTLINED_FUNCTION_20(v34);
  v194 = type metadata accessor for SportsPlayByPlayItemViewData(v35);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v37);
  v38 = *(v6 + 16);
  v39 = MEMORY[0x1E69E7CA0];
  v178 = v30;
  v177 = v27;
  if (!v38)
  {
    v202 = 0u;
    v203 = 0u;
    goto LABEL_10;
  }

  v40 = *(v6 + 32);
  v198 = &type metadata for ViewModelKeys.Sports;
  v199 = &off_1F5D7BC68;
  LOBYTE(v195) = 7;

  sub_1E3F9F164(&v195, v40, v39 + 8);

  __swift_destroy_boxed_opaque_existential_1(&v195);
  if (!*(&v203 + 1))
  {
LABEL_10:
    sub_1E325F6F0(&v202, &unk_1ECF296E0, &unk_1E4298030);
    v42 = 0;
    v43 = 0;
    goto LABEL_11;
  }

  v41 = swift_dynamicCast();
  if (v41)
  {
    v42 = v195;
  }

  else
  {
    v42 = 0;
  }

  if (v41)
  {
    v43 = v196;
  }

  else
  {
    v43 = 0;
  }

LABEL_11:
  sub_1E42051E4();

  v195 = sub_1E3EA9868(v44);
  sub_1E4076D24(&v195, v42, v43);

  object = v195;
  sub_1E379D7E4(v188, &v195, &qword_1ECF33020, &qword_1E42BA400);
  if (v38)
  {
    v46 = *(v6 + 32);
    if (sub_1E32AE9B0(object))
    {
      if ((object & 0xC000000000000001) != 0)
      {
        v47 = countAndFlagsBits;
        v48 = v8;
        v49 = v3;

        v51 = MEMORY[0x1E6911E60](0, object);
      }

      else
      {
        if (!*((object & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_98;
        }

        v47 = countAndFlagsBits;
        v48 = v8;
        v49 = v3;
        v50 = *(object + 32);

        v51 = v50;
      }

      v52 = v51;
      v53 = sub_1E4205A44();

      if (v53 != 2 && (v53 & 1) != 0)
      {

        v54 = sub_1E40758F8(v46, &v195);

        sub_1E325F6F0(&v195, &qword_1ECF33020, &qword_1E42BA400);
        v55 = 1;
        v56 = v191;
        v57 = v194;
        LODWORD(v3) = v49;
        v8 = v48;
        countAndFlagsBits = v47;
        goto LABEL_30;
      }

      LODWORD(v3) = v49;
      v8 = v48;
      countAndFlagsBits = v47;
    }
  }

  sub_1E3FE381C(v6);
  v57 = v194;
  if (!v58)
  {
    sub_1E325F6F0(&v195, &qword_1ECF33020, &qword_1E42BA400);

    goto LABEL_28;
  }

  v59 = v58;
  v60 = sub_1E37CB21C(object);

  if (!v60)
  {
    goto LABEL_27;
  }

  v61 = sub_1E4205A44();

  if (v61 == 2)
  {
    sub_1E325F6F0(&v195, &qword_1ECF33020, &qword_1E42BA400);

    v57 = v194;
LABEL_28:
    v54 = sub_1E42036E4();
    v55 = 0;
    goto LABEL_29;
  }

  v57 = v194;
  if ((v61 & 1) == 0)
  {
LABEL_27:
    sub_1E325F6F0(&v195, &qword_1ECF33020, &qword_1E42BA400);

    goto LABEL_28;
  }

  v54 = sub_1E40758F8(v59, &v195);

  sub_1E325F6F0(&v195, &qword_1ECF33020, &qword_1E42BA400);
  v55 = 2;
LABEL_29:
  v56 = v191;
LABEL_30:
  v56[3] = v54;
  *(v56 + 32) = v55;
  v62 = sub_1E4205204();
  if (v63)
  {
    v64 = v62;
    object = v63;
  }

  else
  {
    v65 = v181;
    sub_1E41FE614();
    v64 = sub_1E41FE5E4();
    object = v66;
    OUTLINED_FUNCTION_15_5();
    v67(v65, countAndFlagsBits);
  }

  *v56 = v64;
  v56[1] = object;
  v195 = sub_1E4205224();
  LOBYTE(v196) = v68 & 1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8E0, &qword_1E42E35B0);
  sub_1E4148C68(sub_1E37E8788, v69, &v202);
  v56[2] = v202;
  v56[5] = sub_1E42051F4();
  v56[6] = v70;
  v71 = *(v57 + 72);
  v72 = *(v189 + 16);
  v72(v56 + v71, v193, v190);
  v187 = v8;
  v73 = sub_1E4205214();
  if (!v73)
  {
    goto LABEL_56;
  }

  object = v73;
  v74 = sub_1E42052A4();
  if (v75)
  {
    goto LABEL_55;
  }

  countAndFlagsBits = v74;
  v76 = sub_1E42052B4();
  if (v77)
  {
    goto LABEL_55;
  }

  v170[1] = v76;
  v170[2] = countAndFlagsBits;
  LODWORD(v181) = v3;
  v78 = sub_1E4205294();
  v3 = v178;
  sub_1E4205514();

  v79 = v177;
  countAndFlagsBits = v176;
  (*(v179 + 104))(v177, *MEMORY[0x1E69D3BF8], v176);
  __swift_storeEnumTagSinglePayload(v79, 0, 1, countAndFlagsBits);
  v80 = *(v20 + 48);
  v56 = v180;
  sub_1E379D7E4(v3, v180, &qword_1ECF2BD98, &qword_1E42E3AB0);
  v171 = v80;
  v81 = countAndFlagsBits;
  sub_1E379D7E4(v79, v56 + v80, &qword_1ECF2BD98, &qword_1E42E3AB0);
  OUTLINED_FUNCTION_52(v56, 1, countAndFlagsBits);
  if (v86)
  {
    v56 = &qword_1E42E3AB0;
    sub_1E325F6F0(v79, &qword_1ECF2BD98, &qword_1E42E3AB0);
    v82 = OUTLINED_FUNCTION_31_90();
    v83 = v180;
    sub_1E325F6F0(v82, v84, &qword_1E42E3AB0);
    OUTLINED_FUNCTION_52(v83 + v171, 1, countAndFlagsBits);
    if (!v86)
    {
      goto LABEL_44;
    }

    sub_1E325F6F0(v83, &qword_1ECF2BD98, &qword_1E42E3AB0);
    OUTLINED_FUNCTION_22_99();
LABEL_55:

LABEL_56:
    v56[11] = 0;
    v56[12] = 0xE000000000000000;
    OUTLINED_FUNCTION_70_30();
    *v114 = 0;
    *(v114 + 8) = 0;
    goto LABEL_57;
  }

  v79 = v174;
  sub_1E379D7E4(v56, v174, &qword_1ECF2BD98, &qword_1E42E3AB0);
  v85 = v171;
  OUTLINED_FUNCTION_52(v56 + v171, 1, v81);
  if (v86)
  {
    v87 = v81;
    v56 = &qword_1E42E3AB0;
    sub_1E325F6F0(v177, &qword_1ECF2BD98, &qword_1E42E3AB0);
    v83 = v180;
    sub_1E325F6F0(v178, &qword_1ECF2BD98, &qword_1E42E3AB0);
    OUTLINED_FUNCTION_15_5();
    v88(v79, v87);
LABEL_44:
    sub_1E325F6F0(v83, &qword_1ECF2D578, &unk_1E42A9910);
    OUTLINED_FUNCTION_22_99();
    OUTLINED_FUNCTION_75_27();
    goto LABEL_45;
  }

  v109 = v179;
  (*(v179 + 32))(v172, v56 + v85, v81);
  OUTLINED_FUNCTION_1_288();
  sub_1E4078194(v110, v111, MEMORY[0x1E69D3C10]);
  OUTLINED_FUNCTION_277();
  LODWORD(v171) = sub_1E4205E84();
  v112 = *(v109 + 8);
  v80 = v109 + 8;
  countAndFlagsBits = v112;
  v113 = OUTLINED_FUNCTION_31_90();
  v112(v113);
  v79 = &qword_1ECF2BD98;
  v3 = &qword_1E42E3AB0;
  sub_1E325F6F0(v177, &qword_1ECF2BD98, &qword_1E42E3AB0);
  sub_1E325F6F0(v178, &qword_1ECF2BD98, &qword_1E42E3AB0);
  (v112)(v174, v81);
  sub_1E325F6F0(v56, &qword_1ECF2BD98, &qword_1E42E3AB0);
  OUTLINED_FUNCTION_22_99();
  OUTLINED_FUNCTION_75_27();
  if (v171)
  {
    goto LABEL_55;
  }

LABEL_45:
  countAndFlagsBits = v175;
  v89 = v190;
  v72(v175, v193, v190);
  if ((*(v189 + 88))(countAndFlagsBits, v89) == *MEMORY[0x1E69D3D88])
  {
    goto LABEL_55;
  }

  v90 = v189;
  v91 = *(v189 + 8);
  v92 = v190;
  v91(v175, v190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_1E4299720;
  v94 = MEMORY[0x1E69E6530];
  v95 = MEMORY[0x1E69E65A8];
  *(v93 + 56) = MEMORY[0x1E69E6530];
  *(v93 + 64) = v95;
  *(v93 + 32) = v80;
  *(v93 + 96) = v94;
  *(v93 + 104) = v95;
  *(v93 + 72) = v79;
  *&v202 = sub_1E4205F44();
  *(&v202 + 1) = v96;
  v97 = *(v90 + 104);
  countAndFlagsBits = v173;
  v97(v173, *MEMORY[0x1E69D3D78], v92);
  OUTLINED_FUNCTION_9_183();
  v100 = sub_1E4072DAC(v193, countAndFlagsBits, v98, v99, MEMORY[0x1E69D3D90], MEMORY[0x1E69D3DA0]);
  v91(countAndFlagsBits, v92);
  if ((v100 & 1) == 0)
  {
    goto LABEL_95;
  }

  OUTLINED_FUNCTION_151_7();
  if (!v101)
  {
    goto LABEL_95;
  }

  OUTLINED_FUNCTION_151_7();
  v103 = v102;
  v104 = sub_1E4205294();
  sub_1E4205664();
  countAndFlagsBits = v196;
  LOBYTE(v105) = v197;

  if (sub_1E4205214() && (OUTLINED_FUNCTION_54_52(), v106 = sub_1E4205274(), v104, v106) && (v104 = sub_1E42052B4(), v108 = v107, v106, (v108 & 1) == 0) && v104 > 0)
  {
    if (v105)
    {
      goto LABEL_94;
    }
  }

  else
  {
    if (sub_1E4205214() && (OUTLINED_FUNCTION_54_52(), v163 = sub_1E4205274(), v104, v163))
    {
      v164 = sub_1E42052A4();
      v166 = v165;

      v167 = v166 | (v164 < 1);
    }

    else
    {
LABEL_91:
      v167 = 1;
    }

    if ((v105 | v167))
    {
      goto LABEL_94;
    }
  }

  v195 = 2828320;
  v196 = 0xE300000000000000;
  v207.canonicalId._countAndFlagsBits = countAndFlagsBits;
  v168 = sub_1E4207944();
  MEMORY[0x1E69109E0](v168);

  MEMORY[0x1E69109E0](41, 0xE100000000000000);
  MEMORY[0x1E69109E0](v195, v196);

LABEL_94:

LABEL_95:
  v169 = *(&v202 + 1);
  v56 = v191;
  v191[11] = v202;
  v56[12] = v169;
  OUTLINED_FUNCTION_70_30();
  *v114 = xmmword_1E42E8890;
LABEL_57:
  *(v114 + 16) = 14;
  v115 = v187;

  sub_1E4072E84();
  v116 = objc_opt_self();
  v117 = [v116 sharedInstance];
  if (!v117)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  object = v117;
  v181 = v115;
  sub_1E4073C28();

  v118 = [v116 sharedInstance];
  if (!v118)
  {
LABEL_99:
    __break(1u);

    __break(1u);
    return;
  }

  v119 = v118;
  object = v183;
  sub_1E4073C28();
  v121 = v120;

  OUTLINED_FUNCTION_15_5();
  v122(object, v185);
  v105 = 0;
  v123 = v56 + *(countAndFlagsBits + 64);
  *v123 = v121;
  *(v123 + 1) = 0;
  v123[16] = 14;
  *(v56 + *(countAndFlagsBits + 52)) = v3;
  v124 = *(v6 + 16);
  v187 = MEMORY[0x1E69E7CC0];
  v192 = v6;
LABEL_60:
  v103 = &type metadata for ViewModelKeys.Sports;
  while (v124 != v105)
  {
    if (v105 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_91;
    }

    countAndFlagsBits = *(v6 + 8 * v105 + 32);
    *(&v203 + 1) = &type metadata for ViewModelKeys.Sports;
    v204 = &off_1F5D7BC68;
    LOBYTE(v202) = 7;
    OUTLINED_FUNCTION_33_88();
    if (v206)
    {
      OUTLINED_FUNCTION_49_60();
      if (swift_dynamicCast())
      {
        v3 = v200;
        v125 = v201;
        __swift_destroy_boxed_opaque_existential_1(&v202);
        *(&v203 + 1) = &type metadata for ViewModelKeys.Sports;
        v204 = &off_1F5D7BC68;
        LOBYTE(v202) = 22;
        OUTLINED_FUNCTION_33_88();
        if (v206)
        {
          OUTLINED_FUNCTION_49_60();
          if (swift_dynamicCast())
          {
            v126 = v200;
            object = v201;
            __swift_destroy_boxed_opaque_existential_1(&v202);
            *(&v203 + 1) = &type metadata for ViewModelKeys.Sports;
            v204 = &off_1F5D7BC68;
            LOBYTE(v202) = 23;
            OUTLINED_FUNCTION_33_88();
            if (v206)
            {
              OUTLINED_FUNCTION_49_60();
              if (swift_dynamicCast())
              {
                countAndFlagsBits = v200;
                __swift_destroy_boxed_opaque_existential_1(&v202);
                v127._countAndFlagsBits = v3;
                v127._object = v125;
                v128._countAndFlagsBits = v126;
                v128._object = object;
                SportsVoiceOverUtility.Competitor.init(canonicalId:name:isHomeTeam:)(&v207, v127, v128, countAndFlagsBits);
                object = v207.canonicalId._object;
                v103 = &type metadata for ViewModelKeys.Sports;
                v6 = v192;
                if (v207.canonicalId._object)
                {
                  countAndFlagsBits = v207.canonicalId._countAndFlagsBits;
                  v185 = v207.name._countAndFlagsBits;
                  v184 = v207.name._object;
                  LOBYTE(v3) = v207.isHomeTeam;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v135 = OUTLINED_FUNCTION_27();
                    v187 = sub_1E3FE5020(v135, v136, v137, v138);
                  }

                  v131 = *(v187 + 2);
                  v130 = *(v187 + 3);
                  if (v131 >= v130 >> 1)
                  {
                    v139 = OUTLINED_FUNCTION_35(v130);
                    v187 = sub_1E3FE5020(v139, v131 + 1, 1, v187);
                  }

                  ++v105;
                  v132 = v187;
                  *(v187 + 2) = v131 + 1;
                  v133 = &v132[40 * v131];
                  *(v133 + 4) = countAndFlagsBits;
                  *(v133 + 5) = object;
                  v134 = v184;
                  *(v133 + 6) = v185;
                  *(v133 + 7) = v134;
                  v133[64] = v3;
                  goto LABEL_60;
                }
              }

              else
              {

                __swift_destroy_boxed_opaque_existential_1(&v202);
                v103 = &type metadata for ViewModelKeys.Sports;
                v6 = v192;
              }
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(&v202);
              sub_1E325F6F0(v205, &unk_1ECF296E0, &unk_1E4298030);
              v103 = &type metadata for ViewModelKeys.Sports;
              v6 = v192;
            }
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(&v202);
          }
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(&v202);
          sub_1E325F6F0(v205, &unk_1ECF296E0, &unk_1E4298030);
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v202);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v202);
      sub_1E325F6F0(v205, &unk_1ECF296E0, &unk_1E4298030);
    }

    ++v105;
  }

  v140 = type metadata accessor for SportsVoiceOverUtility(0);

  v141 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_18();
  v142 = v181;
  OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_60_0();
  swift_bridgeObjectRelease_n();
  v143 = v194;
  v144 = v191;
  v145 = (v191 + *(v194 + 48));
  *v145 = v141;
  v145[1] = v140;
  sub_1E40743DC();
  v146 = (v144 + *(v143 + 56));
  *v146 = v147;
  v146[1] = v148;
  sub_1E4074F98();
  v150 = v149;
  v152 = v151;

  v144[9] = v150;
  v144[10] = v152;

  sub_1E4075498();
  v144[7] = v153;
  v144[8] = v154;
  LOBYTE(v150) = sub_1E41494A8(v150, v152);

  if (v150)
  {
    sub_1E325F6F0(v188, &qword_1ECF33020, &qword_1E42BA400);

    OUTLINED_FUNCTION_151_7();
    v156 = 0;
  }

  else
  {
    v157 = OUTLINED_FUNCTION_57();
    v159 = sub_1E41494A8(v157, v158);

    OUTLINED_FUNCTION_151_7();
    sub_1E325F6F0(v188, &qword_1ECF33020, &qword_1E42BA400);
    v156 = !v159;
  }

  v161 = v182;
  *(v144 + *(v143 + 68)) = v156;
  sub_1E381A6DC(v144, v161);
  OUTLINED_FUNCTION_15_5();
  v162(v193, v190);
  sub_1E407813C(v144, type metadata accessor for SportsPlayByPlayItemViewData);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E4072DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_1E4078194(a4, a5, a6);
  sub_1E4206254();
  sub_1E4206254();
  if (v14 == v12 && v15 == v13)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

void sub_1E4072E84()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  v154 = v7;
  v169 = sub_1E4205A14();
  OUTLINED_FUNCTION_0_10();
  v164 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_3();
  v168 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F170, &unk_1E42E88A8);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v170 = OUTLINED_FUNCTION_84_23();
  OUTLINED_FUNCTION_0_10();
  v167 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  v166 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v165 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_20(v19);
  v163 = sub_1E4205784();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v23);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D578, &unk_1E42A9910);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v143 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98, &qword_1E42E3AB0);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_140_2();
  MEMORY[0x1EEE9AC00](v34);
  v162 = OUTLINED_FUNCTION_83_22();
  OUTLINED_FUNCTION_0_10();
  v161 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v37);
  if (!*(v4 + 16))
  {

    v176 = 0u;
    v177 = 0u;
    goto LABEL_10;
  }

  v38 = *(v4 + 32);

  v174 = &type metadata for ViewModelKeys.Sports;
  v175 = &off_1F5D7BC68;
  LOBYTE(v172) = 7;
  v39 = MEMORY[0x1E69E7CA0];
  v40 = OUTLINED_FUNCTION_97_2();
  sub_1E3F9F164(v40, v38, v39 + 8);

  __swift_destroy_boxed_opaque_existential_1(&v172);
  if (!*(&v177 + 1))
  {
LABEL_10:
    sub_1E325F6F0(&v176, &unk_1ECF296E0, &unk_1E4298030);
    v42 = 0;
    v43 = 0;
    goto LABEL_11;
  }

  v41 = swift_dynamicCast();
  if (v41)
  {
    v42 = v172;
  }

  else
  {
    v42 = 0;
  }

  if (v41)
  {
    v43 = v173;
  }

  else
  {
    v43 = 0;
  }

LABEL_11:
  sub_1E42051E4();

  v172 = sub_1E3EA9868(v44);
  sub_1E4076D24(&v172, v42, v43);

  v45 = v172;
  v46 = sub_1E4205214();
  if (v46)
  {
    v47 = v46;
    v48 = sub_1E4205294();

    OUTLINED_FUNCTION_74_23();
    sub_1E4205514();

    v49 = v163;
  }

  else
  {
    v50 = OUTLINED_FUNCTION_47_57();
    v49 = v163;
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v163);
  }

  v53 = *MEMORY[0x1E69D3BF8];
  v155 = v21;
  v54 = *(v21 + 104);
  v150 = v53;
  v151 = v21 + 104;
  v149 = v54;
  (v54)(v1);
  OUTLINED_FUNCTION_48_8(v1);
  v55 = *(v159 + 48);
  OUTLINED_FUNCTION_85_22();
  OUTLINED_FUNCTION_82_23();
  OUTLINED_FUNCTION_14_16(v27);
  v153 = v6;
  if (v64)
  {
    v56 = OUTLINED_FUNCTION_76_0();
    sub_1E325F6F0(v56, v57, &qword_1E42E3AB0);
    v58 = OUTLINED_FUNCTION_31_90();
    sub_1E325F6F0(v58, v59, &qword_1E42E3AB0);
    OUTLINED_FUNCTION_14_16(&v27[v55]);
    v60 = v160;
    if (v64)
    {
      sub_1E325F6F0(v27, &qword_1ECF2BD98, &qword_1E42E3AB0);
      v61 = MEMORY[0x1E69D3D50];
      v62 = v164;
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v63 = v157;
  sub_1E379D7E4(v27, v157, &qword_1ECF2BD98, &qword_1E42E3AB0);
  OUTLINED_FUNCTION_14_16(&v27[v55]);
  if (v64)
  {
    v65 = OUTLINED_FUNCTION_76_0();
    sub_1E325F6F0(v65, v66, &qword_1E42E3AB0);
    v67 = OUTLINED_FUNCTION_31_90();
    sub_1E325F6F0(v67, v68, &qword_1E42E3AB0);
    (*(v155 + 8))(v63, v49);
    v60 = v160;
LABEL_22:
    sub_1E325F6F0(v27, &qword_1ECF2D578, &unk_1E42A9910);
    v62 = v164;
LABEL_23:
    v61 = MEMORY[0x1E69D3D48];
    goto LABEL_24;
  }

  v129 = v63;
  v130 = v155;
  (*(v155 + 32))(v143, &v27[v55], v49);
  OUTLINED_FUNCTION_1_288();
  sub_1E4078194(v131, v132, MEMORY[0x1E69D3C10]);
  OUTLINED_FUNCTION_62_36();
  v133 = OUTLINED_FUNCTION_56_40();
  v130(v133);
  OUTLINED_FUNCTION_65_36(v1);
  OUTLINED_FUNCTION_65_36(v2);
  (v130)(v157, v163);
  OUTLINED_FUNCTION_65_36(v27);
  v60 = v160;
  v62 = v164;
  if ((v129 & 1) == 0)
  {
    goto LABEL_23;
  }

  v61 = MEMORY[0x1E69D3D50];
LABEL_24:
  (*(v161 + 104))(v60, *v61, v162);
  *&v176 = v45;
  v172 = 0;
  LOBYTE(v173) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA20, &unk_1E42DA740);
  sub_1E3EA9BD4();
  OUTLINED_FUNCTION_63_35();
  v69 = v171;
  if (v171 && (v70 = sub_1E4205984(), v69, v70))
  {
    v148 = sub_1E4205AE4();
    v71 = sub_1E4205AD4();
    v72 = sub_1E4205BB4();

    v73 = v72 & 1;
  }

  else
  {
    OUTLINED_FUNCTION_69_31(&v176 + 8);
  }

  v147 = v73;
  *&v176 = v45;
  v172 = 1;
  LOBYTE(v173) = 0;
  OUTLINED_FUNCTION_63_35();
  v74 = v171;
  if (v171 && (v75 = sub_1E4205984(), v74, v75))
  {
    v146 = sub_1E4205AE4();
    v76 = sub_1E4205AD4();
    v77 = sub_1E4205BB4();

    v78 = v77 & 1;
  }

  else
  {
    OUTLINED_FUNCTION_69_31(&v175);
  }

  v145 = v78;
  v79 = sub_1E32AE9B0(v45);
  v80 = 0;
  v81 = v45 & 0xC000000000000001;
  v82 = (v62 + 1);
  v157 = (v167 + 32);
  v164 = MEMORY[0x1E69E7CC0];
  v83 = v168;
  while (1)
  {
    if (v79 == v80)
    {

      v97 = v164[2];
      if (v97)
      {
        v172 = MEMORY[0x1E69E7CC0];
        sub_1E4077A28(0, v97, 0);
        v98 = v172;
        OUTLINED_FUNCTION_40_72();
        v168 = v99;
        v169 = v100;
        v167 = v101;
        do
        {
          v102 = v165;
          v104 = v169;
          v103 = v170;
          v169(v165, v81, v170);
          v105 = v166;
          v106 = v104(v166, v102, v103);
          MEMORY[0x1E6910330](v106);
          sub_1E42059E4();
          v107 = OUTLINED_FUNCTION_80_21();
          v105(v107);
          v108 = OUTLINED_FUNCTION_102_3();
          v105(v108);
          v172 = v98;
          v110 = *(v98 + 16);
          v109 = *(v98 + 24);
          if (v110 >= v109 >> 1)
          {
            v111 = OUTLINED_FUNCTION_35(v109);
            sub_1E4077A28(v111, v110 + 1, 1);
            v98 = v172;
          }

          OUTLINED_FUNCTION_58_38();
          v81 += v168;
          --v97;
        }

        while (v97);
      }

      else
      {

        v98 = MEMORY[0x1E69E7CC0];
      }

      v112 = v163;
      v113 = v153;
      v114 = v152;
      v115 = v156;
      if (*(v98 + 16))
      {
        v116 = *(v98 + 32);
        LODWORD(v170) = *(v98 + 40);
      }

      else
      {

        v116 = 0;
        LODWORD(v170) = 2;
      }

      v117 = sub_1E4205214();
      if (v117)
      {
        v118 = v117;
        v119 = sub_1E4205294();

        sub_1E4205514();
      }

      else
      {
        OUTLINED_FUNCTION_88_19();
      }

      OUTLINED_FUNCTION_151_7();
      v149();
      OUTLINED_FUNCTION_48_8(v115);
      v120 = *(v159 + 48);
      OUTLINED_FUNCTION_89_19();
      OUTLINED_FUNCTION_87_17();
      OUTLINED_FUNCTION_14_16(v114);
      if (v64)
      {

        OUTLINED_FUNCTION_43_15(v115);
        OUTLINED_FUNCTION_43_68();
        v121 = OUTLINED_FUNCTION_11_185();
        v122(v121);
        OUTLINED_FUNCTION_14_16(v114 + v120);
        if (v64)
        {
          sub_1E325F6F0(v114, &qword_1ECF2BD98, &qword_1E42E3AB0);
          v123 = 1;
LABEL_68:
          OUTLINED_FUNCTION_26_116();
LABEL_72:
          OUTLINED_FUNCTION_19_146(v123 & 1);
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }

      else
      {
        v169 = v116;
        sub_1E379D7E4(v114, v144, &qword_1ECF2BD98, &qword_1E42E3AB0);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v114 + v120, 1, v112);
        if (EnumTagSinglePayload != 1)
        {
          v134 = v155 + 32;
          (*(v155 + 32))(v143, v114 + v120, v112);
          OUTLINED_FUNCTION_1_288();
          sub_1E4078194(v135, v136, MEMORY[0x1E69D3C10]);
          OUTLINED_FUNCTION_27_0();
          v123 = sub_1E4205E84();

          v137 = *(v134 - 24);
          v138 = OUTLINED_FUNCTION_36_60();
          v137(v138);
          OUTLINED_FUNCTION_45_3(v156);
          v139 = OUTLINED_FUNCTION_76_0();
          sub_1E325F6F0(v139, v140, &qword_1E42E3AB0);
          v141 = OUTLINED_FUNCTION_11_185();
          v142(v141);
          (v137)(v144, v112);
          OUTLINED_FUNCTION_45_3(v114);
          OUTLINED_FUNCTION_26_116();
          goto LABEL_72;
        }

        OUTLINED_FUNCTION_43_15(v156);
        OUTLINED_FUNCTION_43_68();
        v125 = OUTLINED_FUNCTION_11_185();
        v126(v125);
        v127 = OUTLINED_FUNCTION_36_60();
        v128(v127);
      }

      sub_1E325F6F0(v114, &qword_1ECF2D578, &unk_1E42A9910);
      v123 = 0;
      goto LABEL_68;
    }

    if (v81)
    {
      OUTLINED_FUNCTION_90_21();
    }

    else
    {
      if (v80 >= *(v45 + 16))
      {
        goto LABEL_74;
      }

      v84 = OUTLINED_FUNCTION_94_23();
    }

    v85 = v84;
    v86 = v80 + 1;
    if (__OFADD__(v80, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_74_23();
    sub_1E4205A24();
    sub_1E4205A04();

    (*v82)(v83, v169);
    OUTLINED_FUNCTION_52(v0, 1, v170);
    if (v64)
    {
      sub_1E325F6F0(v0, &qword_1ECF3F170, &unk_1E42E88A8);
      ++v80;
    }

    else
    {
      v87 = *v157;
      (*v157)(v158, v0, v170);
      v88 = v164;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v93 = OUTLINED_FUNCTION_27();
        v88 = sub_1E4076A68(v93, v94, v95, v88);
      }

      v91 = v88[2];
      v90 = v88[3];
      v164 = v88;
      if (v91 >= v90 >> 1)
      {
        v96 = OUTLINED_FUNCTION_35(v90);
        v164 = sub_1E4076A68(v96, v91 + 1, 1, v164);
      }

      v164[2] = v91 + 1;
      v92 = OUTLINED_FUNCTION_41_68();
      v87(v92, v158, v170);
      v80 = v86;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);

  __break(1u);
}

void sub_1E4073C28()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v86 = v2;
  v4 = v3;
  v5 = sub_1E41FE1F4();
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v76 - v12;
  v14 = sub_1E41FE144();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  sub_1E41FE154();
  OUTLINED_FUNCTION_0_10();
  v87 = v22;
  v88 = v21;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  v26 = sub_1E41FE174();
  v27 = OUTLINED_FUNCTION_17_2(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  sub_1E41FE1B4();
  OUTLINED_FUNCTION_0_10();
  v84 = v29;
  v85 = v28;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_9_3();
  v89 = v30;
  OUTLINED_FUNCTION_138();
  sub_1E41FDEC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v36 = v35 - v34;
  v37 = *(v1 + 8);
  if (v37 == 2 || (v38 = *(v1 + 24), v38 == 2))
  {
    sub_1E41FE134();
    goto LABEL_4;
  }

  v80 = v13;
  v81 = v16;
  v39 = *v1;
  v40 = *(v1 + 16);
  v82 = v20;
  v83 = v14;
  v78 = v33;
  v79 = v32;
  if (v37)
  {
    v94 = v39;
    if (v38)
    {
      v41 = sub_1E4207944();
      v94 = 10794;
      v95 = 0xE200000000000000;
      MEMORY[0x1E69109E0](v41);
      OUTLINED_FUNCTION_91_20();

      v42 = OUTLINED_FUNCTION_32_90();
      MEMORY[0x1E69109E0](v42);

      v43 = v95;
      v77 = v94;
      v94 = v40;
      v44 = sub_1E4207944();
      v94 = 10794;
      v95 = 0xE200000000000000;
      MEMORY[0x1E69109E0](v44);
      OUTLINED_FUNCTION_91_20();

      v45 = v94;
      v46 = v95;
      v94 = v77;
      v95 = v43;

      MEMORY[0x1E69109E0](v45, v46);
    }

    else
    {
      v52 = sub_1E4207944();
      v94 = 10794;
      v95 = 0xE200000000000000;
      MEMORY[0x1E69109E0](v52);
      OUTLINED_FUNCTION_91_20();

      v53 = v95;

      v54 = OUTLINED_FUNCTION_32_90();
      MEMORY[0x1E69109E0](v54);

      v77 = v9;
      OUTLINED_FUNCTION_45_68();
      sub_1E4207944();
      v94 = v4;
      v95 = v53;

      v55 = OUTLINED_FUNCTION_27_0();
      MEMORY[0x1E69109E0](v55);
    }

    v57 = v94;
    v56 = v95;
    goto LABEL_16;
  }

  if (v38)
  {
    v94 = v39;
    v47 = sub_1E4207944();
    v49 = v48;
    v94 = v47;
    v95 = v48;

    v50 = OUTLINED_FUNCTION_32_90();
    MEMORY[0x1E69109E0](v50);

    v77 = v4;
    OUTLINED_FUNCTION_45_68();
    v51 = sub_1E4207944();
    v94 = 10794;
    v95 = 0xE200000000000000;
    MEMORY[0x1E69109E0](v51);
    OUTLINED_FUNCTION_91_20();

    v94 = v4;
    v4 = v77;
  }

  else
  {
    if ((*(v1 + 41) & 1) == 0)
    {
      v57 = 0;
      v56 = 0xE000000000000000;
      goto LABEL_16;
    }

    v94 = v39;
    v58 = sub_1E4207944();
    v49 = v59;
    v94 = v58;
    v95 = v59;

    v60 = OUTLINED_FUNCTION_32_90();
    MEMORY[0x1E69109E0](v60);

    v77 = v9;
    OUTLINED_FUNCTION_45_68();
    sub_1E4207944();
    v94 = v4;
  }

  v95 = v49;

  v61 = OUTLINED_FUNCTION_27_0();
  MEMORY[0x1E69109E0](v61);

  v57 = v94;
  v56 = v95;
LABEL_16:
  v62 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    v62 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (v62)
  {
    v63 = 0xD00000000000001ELL;
  }

  else
  {
    v63 = 0xD000000000000018;
  }

  if (v62)
  {
    v64 = "odel";
  }

  else
  {
    v64 = "TV.Sports.PlayByPlay.Score.Out";
  }

  v65 = sub_1E3741090(v63, v64 | 0x8000000000000000, v86);
  if (v66)
  {
    v68 = *(v1 + 40);
    if (v68 != 2 && (v68 & 1) != 0 && *(v1 + 32))
    {
      v94 = v65;
      v95 = v66;
      v92 = 0x4065726F63734040;
      v93 = 0xE900000000000040;
      v90 = v57;
      v91 = v56;
      sub_1E32822E0(v65, v66, v67);
      OUTLINED_FUNCTION_2_178();
      sub_1E42071F4();
      OUTLINED_FUNCTION_34_75();
      v70 = v69;

      v94 = &v94;
      v95 = v70;
      sub_1E41FDE64();
      sub_1E42071E4();
      (*(v78 + 8))(v36, v79);
    }

    else
    {
    }
  }

  (*(v87 + 104))(v25, *MEMORY[0x1E6968748], v88);
  (*(v81 + 104))(v82, *MEMORY[0x1E6968728], v83);

  sub_1E41FE164();
  sub_1E41FE414();
  v71 = OUTLINED_FUNCTION_47_57();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  v75 = v89;
  sub_1E41FE1A4();

  (*(v84 + 32))(v4, v75, v85);
LABEL_4:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40743DC()
{
  OUTLINED_FUNCTION_31_1();
  v182 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1E0, &unk_1E42E8CD0);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v176 = &v167 - v11;
  OUTLINED_FUNCTION_138();
  v12 = sub_1E42051B4();
  OUTLINED_FUNCTION_0_10();
  v174 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v15);
  v16 = sub_1E4205184();
  OUTLINED_FUNCTION_0_10();
  v172 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B488, &unk_1E42A0630);
  OUTLINED_FUNCTION_17_2(v20);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = OUTLINED_FUNCTION_20(&v167 - v22);
  v168 = type metadata accessor for SportsPlayPeriod(v23);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v25);
  v181 = sub_1E4205724();
  OUTLINED_FUNCTION_0_10();
  v184 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_25_3();
  v31 = v30;
  OUTLINED_FUNCTION_138();
  sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v179 = v33;
  v180 = v32;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9_3();
  v177 = v8;
  v178 = v34;
  v35 = sub_1E42051E4();
  sub_1E32AE9B0(v35);
  OUTLINED_FUNCTION_81_26();
  v183 = v16;
  v175 = v12;
  while (1)
  {
    if (v2 == v3)
    {

      v39 = 0;
      v40 = 0;
      goto LABEL_13;
    }

    if (v0)
    {
      OUTLINED_FUNCTION_90_21();
    }

    else
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_64;
      }

      v36 = OUTLINED_FUNCTION_94_23();
    }

    v37 = v36;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v38 = sub_1E4205A44();
    if (v38 != 2 && (v38 & 1) == 0)
    {
      break;
    }

    ++v3;
  }

  v41 = sub_1E4205964();

  v39 = sub_1E42054D4();
  v40 = v42;

LABEL_13:
  v43 = *(v6 + 16);
  v44 = (v6 + 32);
  v45 = v184;
  while (1)
  {
    v46 = v31;
    if (!v43)
    {
      v47 = 0;
      goto LABEL_33;
    }

    v47 = *v44;
    v189 = &type metadata for ViewModelKeys.Sports;
    v190 = &off_1F5D7BC68;
    LOBYTE(v187) = 7;

    v48 = OUTLINED_FUNCTION_97_2();
    sub_1E3F9F164(v48, v47, MEMORY[0x1E69E7CA0] + 8);
    if (!*(&v192 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1(&v187);
      sub_1E325F6F0(&v191, &unk_1ECF296E0, &unk_1E4298030);
      if (!v40)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(&v187);
    if (!v40)
    {
      goto LABEL_32;
    }

LABEL_29:

    ++v44;
    --v43;
  }

  v50 = v185;
  v49 = v186;
  __swift_destroy_boxed_opaque_existential_1(&v187);
  if (!v40)
  {

    v45 = v184;
    goto LABEL_29;
  }

  v51 = v50 == v39 && v40 == v49;
  if (!v51)
  {
    OUTLINED_FUNCTION_102_3();
    v52 = sub_1E42079A4();

    v45 = v184;
    if (v52)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v45 = v184;
LABEL_32:
  v46 = v31;
LABEL_33:
  v54 = v178;
  v53 = v179;
  v55 = v180;
  (*(v179 + 104))(v178, *MEMORY[0x1E69D3D88], v180);
  OUTLINED_FUNCTION_9_183();
  v58 = sub_1E4072DAC(v182, v54, v56, v57, MEMORY[0x1E69D3D90], MEMORY[0x1E69D3DA0]);
  (*(v53 + 8))(v54, v55);
  v59 = v183;
  v60 = v181;
  if (v58)
  {
    v61 = sub_1E4205214();
    if (v61)
    {
      v62 = v61;
      v63 = sub_1E4205284();
      if (v63)
      {
        v64 = v63;
        sub_1E4205954();

        v65 = OUTLINED_FUNCTION_277();
        v66(v65);
        v67 = v170;
        (*(v45 + 104))(v170, *MEMORY[0x1E69D3B30], v60);
        v68 = OUTLINED_FUNCTION_277();
        LOBYTE(v64) = sub_1E4072DAC(v68, v69, v70, v71, v72, v73);
        v184 = v46;
        v74 = v45;
        v75 = v60;
        v76 = *(v74 + 8);
        v76(v67, v75);
        if (v64)
        {
          sub_1E4205294();
          (*(v179 + 16))(v178, v182, v180);
          v77 = v169;
          sub_1E385BAA0();
          OUTLINED_FUNCTION_52(v77, 1, v168);
          if (!v51)
          {

            v126 = v167;
            sub_1E385BE80(v77, v167);
            sub_1E385C974();
            OUTLINED_FUNCTION_60_0();

            sub_1E407813C(v126, type metadata accessor for SportsPlayPeriod);
            v76(v31, v181);
            goto LABEL_57;
          }

          v76(v31, v181);

          sub_1E325F6F0(v77, &qword_1ECF2B488, &unk_1E42A0630);
        }

        else
        {
          v76(v184, v75);
        }

        v59 = v183;
      }

      else
      {
      }
    }
  }

  v78 = v173;
  sub_1E42051C4();
  v79 = v176;
  sub_1E4205194();
  OUTLINED_FUNCTION_15_5();
  v80(v78, v175);
  OUTLINED_FUNCTION_52(v79, 1, v59);
  if (v51)
  {

    v81 = &qword_1ECF3F1E0;
    v82 = &unk_1E42E8CD0;
    v83 = v79;
LABEL_56:
    sub_1E325F6F0(v83, v81, v82);
    goto LABEL_57;
  }

  (*(v172 + 32))(v171, v79, v59);
  if (!v47)
  {
    v120 = OUTLINED_FUNCTION_48_53();
    v121(v120);

    v191 = 0u;
    v192 = 0u;
LABEL_55:
    v81 = &unk_1ECF296E0;
    v82 = &unk_1E4298030;
    v83 = &v191;
    goto LABEL_56;
  }

  v189 = &type metadata for ViewModelKeys.Sports;
  v190 = &off_1F5D7BC68;
  LOBYTE(v187) = 13;

  v84 = OUTLINED_FUNCTION_97_2();
  sub_1E3F9F164(v84, v47, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(&v187);
  if (!*(&v192 + 1))
  {
    v122 = OUTLINED_FUNCTION_48_53();
    v123(v122);

    goto LABEL_55;
  }

  v85 = MEMORY[0x1E69E6158];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v124 = OUTLINED_FUNCTION_48_53();
    v125(v124);

    goto LABEL_57;
  }

  v86 = MEMORY[0x1E690FAC0]();
  v88 = v87;
  v89 = [objc_opt_self() sharedInstance];
  v90 = v89;
  if ((v88 & 1) == 0)
  {
    if (!v89)
    {
      goto LABEL_66;
    }

    v127 = sub_1E3741090(0xD00000000000002BLL, 0x80000001E428F430, v89);
    v129 = v128;

    if (!v129)
    {
      goto LABEL_68;
    }

    v187 = v127;
    v188 = v129;
    v166 = OUTLINED_FUNCTION_30_85(v130, v131, v132);
    OUTLINED_FUNCTION_13_182();
    OUTLINED_FUNCTION_2_178();
    OUTLINED_FUNCTION_67_29(v133, v134, v135, v136, v137, v138, v139, v140, v85, v166);
    OUTLINED_FUNCTION_34_75();
    v142 = v141;

    v187 = v90;
    v188 = v142;
    OUTLINED_FUNCTION_20_124();
    v144 = *(v143 - 256);
    v185 = sub_1E4205174();
    v186 = v145;
    OUTLINED_FUNCTION_13_182();
    OUTLINED_FUNCTION_2_178();
    OUTLINED_FUNCTION_67_29(v146, v147, v148, v149, v150, v151, v152, v153, v85, v166);
    OUTLINED_FUNCTION_34_75();
    v155 = v154;

    v187 = v144;
    v188 = v155;
    strcpy(&v191, "@@pitchTotal@@");
    HIBYTE(v191) = -18;
    v185 = v86;
    v185 = sub_1E4207944();
    v186 = v156;
    OUTLINED_FUNCTION_13_182();
    OUTLINED_FUNCTION_2_178();
    OUTLINED_FUNCTION_67_29(v157, v158, v159, v160, v161, v162, v163, v164, v85, v166);
    OUTLINED_FUNCTION_60_0();

    OUTLINED_FUNCTION_15_5();
    v119 = v144;
LABEL_62:
    v118(v119, v59);
LABEL_57:
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_25_2();
    return;
  }

  if (!v89)
  {
    goto LABEL_65;
  }

  v91 = sub_1E3741090(0xD000000000000025, 0x80000001E428F400, v89);
  v93 = v92;

  if (v93)
  {

    v187 = v91;
    v188 = v93;
    v165 = OUTLINED_FUNCTION_30_85(v94, v95, v96);
    OUTLINED_FUNCTION_13_182();
    OUTLINED_FUNCTION_2_178();
    OUTLINED_FUNCTION_67_29(v97, v98, v99, v100, v101, v102, v103, v104, v85, v165);
    OUTLINED_FUNCTION_34_75();
    v106 = v105;

    v187 = v90;
    v188 = v106;
    OUTLINED_FUNCTION_20_124();
    v108 = *(v107 - 256);
    v185 = sub_1E4205174();
    v186 = v109;
    OUTLINED_FUNCTION_13_182();
    OUTLINED_FUNCTION_2_178();
    OUTLINED_FUNCTION_67_29(v110, v111, v112, v113, v114, v115, v116, v117, v85, v165);
    OUTLINED_FUNCTION_60_0();

    OUTLINED_FUNCTION_15_5();
    v119 = v108;
    goto LABEL_62;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}