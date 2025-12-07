unint64_t sub_1E40C3D78()
{
  result = 0x7765695668737570;
  switch(*(v0 + 48))
  {
    case 0:
      result = 0x49556E6F6ELL;
      break;
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0x56746E6573657270;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x50746E6573657270;
      break;
    case 6:
      result = 0x41746E6573657270;
      break;
    default:
      result = 1701736302;
      break;
  }

  return result;
}

uint64_t sub_1E40C3E7C(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 8);
  switch(*(a1 + 48))
  {
    case 1:
      if (a2[3].i8[0] != 1)
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    case 2:
      if (a2[3].i8[0] != 2)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    case 3:
      if (a2[3].i8[0] != 3)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    case 4:
      if (a2[3].i8[0] != 4)
      {
        goto LABEL_18;
      }

LABEL_13:
      v3 = a2->i64[1];
      type metadata accessor for Route(0);
      v4 = OUTLINED_FUNCTION_32_0();
      result = sub_1E34AF5A4(v4, v5) & (v2 == v3);
      break;
    case 5:
      if (a2[3].i8[0] == 5)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    case 6:
      if (a2[3].i8[0] != 6)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    case 7:
      goto LABEL_18;
    case 8:
      if (a2[3].i8[0] != 8)
      {
        goto LABEL_18;
      }

      v9 = vorrq_s8(a2[1], a2[2]);
      if (*&vorr_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL)) | a2->i64[1] | a2->i64[0])
      {
        goto LABEL_18;
      }

LABEL_19:
      result = 1;
      break;
    default:
      if (a2[3].i8[0])
      {
LABEL_18:
        result = 0;
      }

      else
      {
LABEL_15:
        type metadata accessor for Route(0);
        v7 = OUTLINED_FUNCTION_32_0();
        result = sub_1E34AF5A4(v7, v8);
      }

      break;
  }

  return result;
}

uint64_t sub_1E40C3FB8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_27_0();
  sub_1E4206254();
  OUTLINED_FUNCTION_27_0();
  sub_1E4206254();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

unint64_t sub_1E40C4068(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1E40C4078@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E40C4068(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1E40C40A4()
{
  v1 = *(v0 + 64);
  if (v1 > 6 || v1 == 1)
  {
    return 0;
  }

  else
  {
  }
}

void sub_1E40C40D8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = (v0 + 16);
  v3 = (v0 + 32);
  v4 = *(v0 + 32);
  v5 = *(v0 + 56);
  switch(*(v0 + 64))
  {
    case 0:
      *v2 = v1;
      *(v0 + 24) = 0u;
      *(v0 + 40) = 0u;
      *(v0 + 49) = 0u;

      break;
    case 2:
      *(v0 + 16) = v1;
      *v3 = 0u;
      *(v0 + 48) = 0u;
      *(v0 + 64) = 2;

      goto LABEL_9;
    case 3:
      *(v0 + 16) = v1;
      *v3 = 0u;
      *(v0 + 48) = 0u;
      *(v0 + 64) = 3;
      goto LABEL_9;
    case 4:
      *(v0 + 16) = v1;
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 40) = 0;
      *(v0 + 64) = 4;

      v6 = v4;
      break;
    case 5:
      *(v0 + 16) = v1;
      *(v0 + 64) = 5;
      v7 = v5;
LABEL_9:

      break;
    case 6:
      *(v0 + 16) = v1;
      *(v0 + 64) = 6;

      break;
    default:
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0u;
      *v2 = 0u;
      *(v0 + 64) = 8;
      break;
  }

  OUTLINED_FUNCTION_96_2();
  OUTLINED_FUNCTION_25_2();

  sub_1E40D60A0(v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1E40C4260()
{
  sub_1E40D60A0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_1E34AF594(*(v0 + 72), *(v0 + 80));
  MEMORY[0x1E69144A0](v0 + 88);
  OUTLINED_FUNCTION_58_41();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1E40C42B0()
{
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 64) = 8;
  *(v0 + 66) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 96) = 0;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 1;
  return v0;
}

uint64_t sub_1E40C434C()
{
  type metadata accessor for Router(0);
  result = sub_1E40C43F8();
  if (result)
  {
    OUTLINED_FUNCTION_30();
    (*(v2 + 392))();
    OUTLINED_FUNCTION_12_1();

    return v0;
  }

  return result;
}

uint64_t type metadata accessor for Router(uint64_t a1)
{
  result = qword_1EE28FE70;
  if (!qword_1EE28FE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E40C43F8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v0 = qword_1EE2AA808;
  if (qword_1EE2AA808)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();

    sub_1E37D027C(v1);
    OUTLINED_FUNCTION_12_1();
  }

  return v0;
}

void sub_1E40C4470()
{
  v1 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v11 = v2;
  v3 = sub_1E32AE9B0(v2);

  while (1)
  {
    v5 = v3;
    if (!v3)
    {
LABEL_11:
      MEMORY[0x1EEE9AC00](v4);
      v10[2] = &v11;
      sub_1E40D54D8(sub_1E40D5A54, v10, v3, v9);
      OUTLINED_FUNCTION_50();

      return;
    }

    --v3;
    if (__OFSUB__(v5, 1))
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = OUTLINED_FUNCTION_13_8();
      MEMORY[0x1E6911E60](v8);
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        goto LABEL_13;
      }

      if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }

    OUTLINED_FUNCTION_8();
    v7 = (*(v6 + 416))();

    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_1E40C45D8()
{
  type metadata accessor for Router(0);
  result = sub_1E4205CB4();
  qword_1EE28CC88 = result;
  return result;
}

uint64_t sub_1E40C461C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E40C468C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1E40C4728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_156();
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v18;
  sub_1E4200684();
  OUTLINED_FUNCTION_200();
}

uint64_t sub_1E40C4794()
{
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI6Router__id, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0, &unk_1E42A2A50);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E40C4800()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB20, "tZ\t");
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_11_6();
  v3(v2);
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI6Router__id, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0, &unk_1E42A2A50);
  sub_1E4200654();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_27_0();
  return v5(v4);
}

uint64_t sub_1E40C4918()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  sub_1E32752B0(&unk_1EE28A130, &unk_1ECF326C0, &qword_1E429D160, MEMORY[0x1E695BF88]);
  return sub_1E42006B4();
}

void sub_1E40C49A8()
{
  OUTLINED_FUNCTION_156();
  if (_MergedGlobals_277 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(qword_1EE28CC88 + 16) && (v1 = OUTLINED_FUNCTION_13_8(), sub_1E327D33C(v1, v2), (v3 & 1) != 0))
  {
    swift_endAccess();
    OUTLINED_FUNCTION_2_75();

    v6 = v4;
  }

  else
  {
    swift_endAccess();
    v7 = type metadata accessor for Router(0);
    v8 = objc_allocWithZone(v7);

    *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v8) = 0;
    *&v8[OBJC_IVAR____TtC8VideosUI6Router_presentingRoute] = 0;
    *&v8[OBJC_IVAR____TtC8VideosUI6Router_managedRoutes] = MEMORY[0x1E69E7CC0];
    *&v8[OBJC_IVAR____TtC8VideosUI6Router_multipleDocumentRoute] = 0;
    v9 = OBJC_IVAR____TtC8VideosUI6Router_tabSwitchSubject;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
    swift_allocObject();
    *&v8[v9] = sub_1E4200544();
    v10 = &v8[OBJC_IVAR____TtC8VideosUI6Router____lazy_storage___logPrefix];
    *v10 = 0;
    *(v10 + 1) = 0;
    OUTLINED_FUNCTION_11_3(&v8[OBJC_IVAR____TtC8VideosUI6Router__id], &v25);
    sub_1E4200634();
    swift_endAccess();
    v25.receiver = v8;
    v25.super_class = v7;
    v11 = objc_msgSendSuper2(&v25, sel_init);
    if (TVAppFeature.isEnabled.getter(12, v12, v13))
    {
      v14 = sub_1E4206AC4();
    }

    else
    {
      v14 = *MEMORY[0x1E69DF878];
    }

    v15 = v14;
    v16 = objc_opt_self();
    v17 = v15;
    v18 = [v16 defaultCenter];
    v19 = v11;
    [v18 addObserver:v19 selector:sel_handleNetworkChanges name:v17 object:0];

    OUTLINED_FUNCTION_11_3(&qword_1EE28CC88, &v25);
    v20 = v19;
    swift_isUniquelyReferenced_nonNull_native();
    v24 = qword_1EE28CC88;
    v21 = OUTLINED_FUNCTION_39_3();
    sub_1E40D5530(v21, v22, v0, v23);
    qword_1EE28CC88 = v24;
    swift_endAccess();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (!qword_1EE2AA808)
    {
      OUTLINED_FUNCTION_13_8();
      sub_1E40C4C78();
    }

    OUTLINED_FUNCTION_2_75();
  }
}

void sub_1E40C4C78()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = HIBYTE(v0) & 0xF;
  if ((v0 & 0x2000000000000000) == 0)
  {
    v8 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v9(v7);

    v10 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_34_9())
    {
      OUTLINED_FUNCTION_6_21();
      v11 = OUTLINED_FUNCTION_10_11();
      OUTLINED_FUNCTION_153_7(v11);
      *v2 = 136315138;
      v12 = OUTLINED_FUNCTION_13_8();
      *(v2 + 4) = sub_1E3270FC8(v12, v13, v14);
      OUTLINED_FUNCTION_60_3();
      _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v3);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_55();
    }

    v20 = OUTLINED_FUNCTION_63_0();
    v21(v20);
    OUTLINED_FUNCTION_3_0(&qword_1EE2AA808, &v35);
    if (!qword_1EE2AA808)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_88_0();
    v23 = *(v22 + 176);
    v25 = v24;
    v26 = v23();
    v28 = v27;

    if (v26 == v1 && v28 == v0)
    {

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_13_8();
    v30 = sub_1E42079A4();

    if ((v30 & 1) == 0)
    {
LABEL_12:
      type metadata accessor for Router(0);
      OUTLINED_FUNCTION_13_8();
      sub_1E40C49A8();
      v31 = qword_1EE2AA808;
      qword_1EE2AA808 = v32;

      if (qword_1EE2AA808)
      {

        v33 = OUTLINED_FUNCTION_27_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
        sub_1E32752B0(&qword_1EE28A140, &unk_1ECF326C0, &qword_1E429D160, MEMORY[0x1E695BF80]);
        sub_1E4200624();
      }
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40C4F10()
{
  sub_1E40C49A8();
  v2 = v1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  sub_1E37D027C(v3);
  OUTLINED_FUNCTION_11_5();

  return v0;
}

id sub_1E40C4F7C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for Router(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E40C50E8()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI6Router____lazy_storage___logPrefix);
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI6Router____lazy_storage___logPrefix + 8))
  {
    OUTLINED_FUNCTION_21();
    v3 = (*(v2 + 176))();
    MEMORY[0x1E69109E0](v3);

    MEMORY[0x1E69109E0](540686941, 0xE400000000000000);
    *v1 = 0x3A3A726574756F52;
    v1[1] = 0xE90000000000005BLL;
  }

  return OUTLINED_FUNCTION_32_0();
}

double sub_1E40C51D0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI6Router_multipleDocumentRoute) = a1;

  return result;
}

uint64_t sub_1E40C5214(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v9[1] = *(v1 + v3);
  v7 = a1;
  v8 = 0;
  v4 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  sub_1E32752B0(&qword_1ECF3F9D8, &qword_1ECF3F9D0, &qword_1E42EB2E0, MEMORY[0x1E69E6340]);
  sub_1E38D2054(&v7, v9);
  return v9[0];
}

uint64_t sub_1E40C52CC(uint64_t a1)
{
  if (a1 < 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = v4 >> 62 ? OUTLINED_FUNCTION_119_1() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E32AE9B0(*(v1 + v3));
  if (v6 < v2)
  {
    __break(1u);
LABEL_21:
    sub_1E4207704();
    v2 = v19;
    v7 = v20;

    if ((v7 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v7 = v6;
  v8 = *(v1 + v3);
  v9 = OUTLINED_FUNCTION_32_0();
  sub_1E37EFABC(v9, v10);
  v11 = OUTLINED_FUNCTION_78_0();
  sub_1E37EFABC(v11, v12);
  if ((v8 & 0xC000000000000001) == 0 || v7 == v2)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    if (v7 <= v2)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    type metadata accessor for Route(0);
    OUTLINED_FUNCTION_11_5();
    swift_bridgeObjectRetain_n();
    v14 = v2;
    do
    {
      v15 = v14 + 1;
      sub_1E42074F4();
      v14 = v15;
    }

    while (v7 != v15);
  }

  if (v8 >> 62)
  {
    goto LABEL_21;
  }

  v7 = (2 * v7) | 1;
  if ((v7 & 1) == 0)
  {
LABEL_18:
    v16 = OUTLINED_FUNCTION_57();
    sub_1E40D5A74(v16, v17, v2, v7);
    v2 = v18;
LABEL_28:
    swift_unknownObjectRelease();
    return v2;
  }

LABEL_22:
  sub_1E42079E4();
  OUTLINED_FUNCTION_122();
  swift_unknownObjectRetain_n();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v21 + 16);

  if (__OFSUB__(v7 >> 1, v2))
  {
    goto LABEL_31;
  }

  if (v22 != (v7 >> 1) - v2)
  {
LABEL_32:
    swift_unknownObjectRelease_n();
    goto LABEL_18;
  }

  swift_dynamicCastClass();
  OUTLINED_FUNCTION_12_1();
  swift_unknownObjectRelease_n();
  if (!v2)
  {
    v2 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  return v2;
}

void sub_1E40C54DC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E32AE9B0(v1);
  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  while (1)
  {
    if (v3 == v4)
    {
      if (v3)
      {
        if (v3 < 1)
        {
          goto LABEL_19;
        }

        v8 = 0;
        v9 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x190);
        do
        {
          if (v5)
          {
            v10 = OUTLINED_FUNCTION_39_3();
            v11 = MEMORY[0x1E6911E60](v10);
          }

          else
          {
            v11 = *(v2 + 8 * v8 + 32);
          }

          ++v8;
          v9(v11);
          sub_1E40C5640(v11);
          sub_1E40C5740(v11);
        }

        while (v3 != v8);
      }

      OUTLINED_FUNCTION_25_2();
      return;
    }

    if (v5)
    {
      v7 = OUTLINED_FUNCTION_39_3();
      MEMORY[0x1E6911E60](v7);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_60_38();
    }

    if (__OFADD__(v4, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_8();
    (*(v6 + 424))(1);

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

double sub_1E40C5640(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_45_38(v5);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_4_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_101_15(v6);
  swift_weakInit();
  OUTLINED_FUNCTION_2_4();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v3;
  v8 = *(*a1 + 304);

  v8(sub_1E40D6FC4, v7);

  return result;
}

double sub_1E40C5740(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_45_38(v5);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_4_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_101_15(v6);
  swift_weakInit();
  OUTLINED_FUNCTION_2_4();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v3;
  v8 = *(*a1 + 328);

  v8(sub_1E40D6FBC, v7);

  return result;
}

void sub_1E40C5840()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  if (v4 < 0)
  {
    goto LABEL_30;
  }

  v9 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v10 = *&v0[v9];
  if (v10 >> 62)
  {
    goto LABEL_33;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  if (v11 <= v4)
  {
    goto LABEL_30;
  }

  v12 = sub_1E32AE9B0(*&v0[v9]);
  if (v12 < v4)
  {
    __break(1u);
  }

  else
  {
    if (v12 != v4)
    {
      v46 = v12;
      if (v12 > v4)
      {
        v47 = v4;
        while (1)
        {
          v48 = *&v0[v9];
          if ((v48 & 0xC000000000000001) != 0)
          {

            MEMORY[0x1E6911E60](v47, v48);
            OUTLINED_FUNCTION_50();
          }

          else
          {
            if ((v47 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_32:
              __break(1u);
LABEL_33:
              v11 = OUTLINED_FUNCTION_119_1();
              goto LABEL_4;
            }

            if (v47 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_32;
            }

            OUTLINED_FUNCTION_60_38();
          }

          ++v47;
          OUTLINED_FUNCTION_8();
          v49 = OUTLINED_FUNCTION_165();
          v50(v49);
          OUTLINED_FUNCTION_36();
          v51 = OUTLINED_FUNCTION_165();
          v52(v51);
          OUTLINED_FUNCTION_36();
          (*(v53 + 424))(0);

          if (v46 == v47)
          {
            goto LABEL_7;
          }
        }
      }

      goto LABEL_37;
    }

LABEL_7:
    v13 = sub_1E32AE9B0(*&v0[v9]);
    if (v13 >= v4)
    {
      v14 = v13;
      v61 = v1;
      OUTLINED_FUNCTION_11_3(&v0[v9], v62);
      OUTLINED_FUNCTION_54_53();
      v15 = &v0[v9];
      v57 = v14;
      v58 = v4;
      sub_1E40D5768(v4, v14, v16, v17, v18, v19, v20, v21, v56);
      swift_endAccess();
      v59 = v2;
      v22 = *&v2[v9];
      v23 = sub_1E32AE9B0(v22);
      v24 = MEMORY[0x1E69E7CC0];
      v60 = v7;
      if (!v23)
      {
LABEL_18:
        sub_1E324FBDC();
        OUTLINED_FUNCTION_146_2();
        v33(v61);
        v34 = v59;

        v35 = sub_1E41FFC94();
        v36 = sub_1E4206814();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = OUTLINED_FUNCTION_100();
          v62[0] = OUTLINED_FUNCTION_164_1();
          *v37 = 136446722;
          v38 = sub_1E40C50E8();
          OUTLINED_FUNCTION_179_4(v38, v39);
          OUTLINED_FUNCTION_50();

          *(v37 + 4) = v34;
          *(v37 + 12) = 2080;
          v40 = sub_1E40D5B50(v58, v57);
          OUTLINED_FUNCTION_179_4(v40, v41);
          OUTLINED_FUNCTION_50();

          *(v37 + 14) = v34;
          *(v37 + 22) = 2080;
          v42 = MEMORY[0x1E6910C30](v24, MEMORY[0x1E69E6158]);

          v43 = OUTLINED_FUNCTION_32_0();
          sub_1E3270FC8(v43, v44, v45);
          OUTLINED_FUNCTION_12_1();

          *(v37 + 24) = v42;
          _os_log_impl(&dword_1E323F000, v35, v36, "%{public}s after remove in range %s, new managed routes:[%s]", v37, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_43_71();
          OUTLINED_FUNCTION_79();

          (*(v60 + 8))(v61, v5);
        }

        else
        {

          v54 = OUTLINED_FUNCTION_63_0();
          v55(v54);
        }

LABEL_30:
        OUTLINED_FUNCTION_25_2();
        return;
      }

      v25 = v23;
      v62[0] = MEMORY[0x1E69E7CC0];

      OUTLINED_FUNCTION_176_7();
      if ((v25 & 0x8000000000000000) == 0)
      {
        v26 = 0;
        v24 = v62[0];
        do
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1E6911E60](v26, v22);
          }

          else
          {
            OUTLINED_FUNCTION_60_38();
          }

          v27 = sub_1E41E1364(v15);
          v29 = v28;

          v62[0] = v24;
          v31 = *(v24 + 16);
          v30 = *(v24 + 24);
          if (v31 >= v30 >> 1)
          {
            v15 = v62;
            sub_1E377FD30((v30 > 1), v31 + 1, 1);
            v24 = v62[0];
          }

          ++v26;
          *(v24 + 16) = v31 + 1;
          v32 = v24 + 16 * v31;
          *(v32 + 32) = v27;
          *(v32 + 40) = v29;
        }

        while (v25 != v26);

        goto LABEL_18;
      }

      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1E40C5CF8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v80 - v10;
  v12 = [objc_opt_self() sharedInstance];
  v85 = [v12 appWindow];

  if (v85)
  {
    OUTLINED_FUNCTION_66_3();
    v14 = *(v13 + 416);
    v84 = v4;
    if (v14())
    {
      v80 = v1;
      v82 = v7;
      v83 = v5;
      v15 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v81 = v0;
      v16 = *&v0[v15];
      v17 = sub_1E32AE9B0(*&v2[v15]);

      v18 = 0;
      v19 = v84;
      while (v18 != v17)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v21 = OUTLINED_FUNCTION_135();
          v22 = MEMORY[0x1E6911E60](v21);
          if (__OFADD__(v18++, 1))
          {
            goto LABEL_39;
          }

          v24 = v22;
          swift_unknownObjectRelease();
          v19 = v84;
          if (v24 == v84)
          {
LABEL_12:

            goto LABEL_35;
          }
        }

        else
        {
          if ((v18 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v20 = *(v16 + 32 + 8 * v18++);
          if (v20 == v19)
          {
            goto LABEL_12;
          }
        }
      }

      v41 = v81;
      OUTLINED_FUNCTION_11_3(v81 + v15, v86);

      MEMORY[0x1E6910BF0](v42);
      sub_1E38C5A18(*((*(v41 + v15) & 0xFFFFFFFFFFFFFF8) + 0x10));
      v43 = (v41 + v15);
      OUTLINED_FUNCTION_27_0();
      sub_1E4206324();
      v44 = *(v41 + v15);
      swift_endAccess();
      v45 = sub_1E32AE9B0(v44);
      v46 = MEMORY[0x1E69E7CC0];
      if (!v45)
      {
LABEL_29:
        v55 = sub_1E324FBDC();
        v56 = v82;
        (*(v82 + 16))(v80, v55, v83);
        v57 = v84;

        v58 = v41;

        v59 = sub_1E41FFC94();
        sub_1E4206814();

        if (OUTLINED_FUNCTION_165_5())
        {
          v60 = OUTLINED_FUNCTION_131_15();
          v81 = swift_slowAlloc();
          v86[0] = v81;
          *v60 = 136446978;
          v61 = sub_1E40C50E8();
          OUTLINED_FUNCTION_179_4(v61, v62);
          OUTLINED_FUNCTION_50();

          *(v60 + 4) = v58;
          *(v60 + 12) = 2080;
          v63 = sub_1E41E1364(v57);
          OUTLINED_FUNCTION_179_4(v63, v64);
          OUTLINED_FUNCTION_50();

          *(v60 + 14) = v58;
          *(v60 + 22) = 2080;
          *(v60 + 24) = sub_1E3270FC8(*(v57 + 16), *(v57 + 24), v86);
          *(v60 + 32) = 2080;
          v65 = MEMORY[0x1E6910C30](v46, MEMORY[0x1E69E6158]);

          v66 = OUTLINED_FUNCTION_32_0();
          sub_1E3270FC8(v66, v67, v68);
          OUTLINED_FUNCTION_12_1();

          *(v60 + 34) = v65;
          OUTLINED_FUNCTION_62_2();
          _os_log_impl(v69, v70, v71, v72, v73, 0x2Au);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_79();

          (*(v56 + 8))(v80, v83);
        }

        else
        {

          v74 = OUTLINED_FUNCTION_16_0();
          v76(v74, v75);
        }

        if (*&v58[OBJC_IVAR____TtC8VideosUI6Router_presentingRoute])
        {
          OUTLINED_FUNCTION_8();
          v78 = *(v77 + 856);
          v79 = v84;

          v78(v79);
        }

        goto LABEL_35;
      }

      v47 = v45;
      v86[0] = MEMORY[0x1E69E7CC0];

      OUTLINED_FUNCTION_176_7();
      if ((v47 & 0x8000000000000000) == 0)
      {
        v48 = 0;
        v46 = v86[0];
        do
        {
          if ((v44 & 0xC000000000000001) != 0)
          {
            v43 = MEMORY[0x1E6911E60](v48, v44);
          }

          else
          {
            OUTLINED_FUNCTION_60_38();
          }

          v49 = sub_1E41E1364(v43);
          v51 = v50;

          v86[0] = v46;
          v53 = *(v46 + 16);
          v52 = *(v46 + 24);
          if (v53 >= v52 >> 1)
          {
            v43 = v86;
            sub_1E377FD30((v52 > 1), v53 + 1, 1);
            v46 = v86[0];
          }

          ++v48;
          *(v46 + 16) = v53 + 1;
          v54 = v46 + 16 * v53;
          *(v54 + 32) = v49;
          *(v54 + 40) = v51;
        }

        while (v47 != v48);

        v41 = v81;
        goto LABEL_29;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_25_2();
    }
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_131_0();
    v25 = OUTLINED_FUNCTION_167_6();
    v26(v25);

    v27 = v0;
    v28 = sub_1E41FFC94();
    v29 = sub_1E4206814();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_100();
      v82 = v7;
      v83 = v5;
      v31 = v30;
      v32 = OUTLINED_FUNCTION_164_1();
      OUTLINED_FUNCTION_153_7(v32);
      *v31 = 136446722;
      v33 = sub_1E40C50E8();
      OUTLINED_FUNCTION_141_12(v33, v34);
      OUTLINED_FUNCTION_50();

      *(v31 + 4) = v27;
      *(v31 + 12) = 2080;
      v35 = sub_1E41E1364(v4);
      OUTLINED_FUNCTION_141_12(v35, v36);
      OUTLINED_FUNCTION_50();

      *(v31 + 14) = v27;
      *(v31 + 22) = 2080;
      *(v31 + 24) = sub_1E3270FC8(*(v4 + 16), *(v4 + 24), &v87);
      _os_log_impl(&dword_1E323F000, v28, v29, "%{public}s try to add route:[%s-%s]\nbut no valid window, ignore.", v31, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_55();

      (*(v82 + 8))(v11, v83);
    }

    else
    {

      v39 = OUTLINED_FUNCTION_8_6();
      v40(v39);
    }

LABEL_35:
    OUTLINED_FUNCTION_25_2();
  }
}

void sub_1E40C6388(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = sub_1E32AE9B0(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E6911E60](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v11 = v8;
    v9 = a1(&v11);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v9 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_1E40C6484(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *(v1 + v4);
  v18[2] = v19;
  v19[0] = a1;

  sub_1E40C6388(sub_1E40D5C0C, v18, v5);
  v7 = v6;

  if (v7)
  {

    v9 = OUTLINED_FUNCTION_32_0();
    sub_1E40C6600(v9, v10);
    v12 = v11;
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      OUTLINED_FUNCTION_111();
      result = (*(v15 + 416))();
      if (result)
      {
        OUTLINED_FUNCTION_111();
        result = (*(v16 + 488))();
        if ((result & 1) == 0)
        {
          OUTLINED_FUNCTION_11_3(v2 + v4, v19);
          sub_1E37EF010(v12);

          MEMORY[0x1E6910BF0](v17);
          sub_1E38C5A18(*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10));
          OUTLINED_FUNCTION_13_8();
          sub_1E4206324();
          return swift_endAccess();
        }
      }
    }
  }

  return result;
}

void sub_1E40C6600(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E32AE9B0(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v4, a2);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    type metadata accessor for Route(0);
    sub_1E3274C5C(&qword_1ECF3D190, type metadata accessor for Route, &unk_1E42DFD20);
    v5 = sub_1E4205E84();

    if (v5)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

uint64_t sub_1E40C6730()
{
  v1 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v0);
  if (v1 && *(v1 + 64) == 4)
  {
    v2 = *(v1 + 32);
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_1E40C6798()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0, &unk_1E42DFB60);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_139();
  v4 = type metadata accessor for DestinationContext(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  if (*(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v0) && sub_1E40C40A4())
  {
    OUTLINED_FUNCTION_8();
    (*(v9 + 800))();
    if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
    {

      sub_1E325F6F0(v1, &unk_1ECF3F9E0, &unk_1E42DFB60);
      return OUTLINED_FUNCTION_57();
    }

    v11 = OUTLINED_FUNCTION_13_8();
    sub_1E40D5C2C(v11, v12);
    if (*v8)
    {
      v13 = *v8;
      v14 = [v13 uiConfiguration];
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        [v15 preferredSize];

LABEL_13:
        sub_1E3F4ED68(v8);
        return OUTLINED_FUNCTION_57();
      }
    }

    v16 = *(v8 + 8);
    if (v16)
    {
      [v16 preferredContentSize];
    }

    goto LABEL_13;
  }

  return OUTLINED_FUNCTION_57();
}

void sub_1E40C6994()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  v74 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_35_3();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9F0, &qword_1E42EB2E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v82 = v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9F8, &qword_1E42EB2F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v75 = v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FA00, &qword_1E42EB2F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v78 = v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FA08, &qword_1E42EB300);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_128();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FA10, &qword_1E42EB308);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v81 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0, &unk_1E42DFB60);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v71 - v21;
  v23 = type metadata accessor for DestinationContext(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_36();
  (*(v25 + 800))();
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) != 1)
  {
    v73 = v5;
    sub_1E40D5C2C(v22, v1);
    v27 = *v1;
    if (*v1)
    {

      v28 = v27;
      sub_1E40C7264();

      OUTLINED_FUNCTION_146_2();
      v74 = v1;
      v29 = v77;
      v30(v75, v2, v77);
      swift_storeEnumTagMultiPayload();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3FA18, &qword_1E42EB310);
      OUTLINED_FUNCTION_59_40(v31);
      sub_1E40D5D34();
      v32 = v78;
      OUTLINED_FUNCTION_74();
      sub_1E4201F44();
      sub_1E32E3C30(v32, v82);
      swift_storeEnumTagMultiPayload();
      v33 = sub_1E40D5C90();
      OUTLINED_FUNCTION_5_1(v33);
      OUTLINED_FUNCTION_117_13();
      sub_1E4201F44();

      sub_1E32E3C94(v32);
      (*(v15 + 8))(v2, v29);
      v34 = v74;
LABEL_19:
      sub_1E3F4ED68(v34);
      v5 = v73;
      sub_1E32E3BCC(v3, v73);
      v26 = 0;
      goto LABEL_20;
    }

    v35 = *(v1 + 8);
    if (!v35)
    {
      nullsub_1();
      OUTLINED_FUNCTION_131_0();
      OUTLINED_FUNCTION_8_154();
      v43();
      swift_storeEnumTagMultiPayload();
      v44 = sub_1E40D5C90();
      OUTLINED_FUNCTION_5_1(v44);
      OUTLINED_FUNCTION_117_13();
      sub_1E4201F44();
      v45 = OUTLINED_FUNCTION_53();
      v46(v45);
LABEL_18:
      v34 = v1;
      goto LABEL_19;
    }

    LODWORD(v74) = *(v1 + 49);
    v71 = v3;
    v36 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v3);

    v37 = v35;
    v72 = v37;
    if (v36)
    {
      v38 = sub_1E40C40A4();
      if (v38)
      {
        OUTLINED_FUNCTION_26();
        v40 = *(v39 + 848);

        v42 = v40(v41);

        if (v42)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      v38 = 0;
    }

    type metadata accessor for Route(0);
    v47 = v37;
    v48 = [v47 description];
    sub_1E4205F14();

    j__OUTLINED_FUNCTION_18();
    v49 = OUTLINED_FUNCTION_21_42();
    v42 = sub_1E3F4C85C(v49, v50, v51);
LABEL_13:
    (*(*v42 + 424))(0);
    if (v38)
    {
      OUTLINED_FUNCTION_26();
      v53 = *(v52 + 856);

      v53(v54);

      v55 = *(*v38 + 776);

      v55(v56);
      OUTLINED_FUNCTION_16_5();

      OUTLINED_FUNCTION_56_41();
      v58 = sub_1E40C3FB8(v38, 0, v57);
      if (v36)
      {
        if (v58)
        {
          *(v36 + 65) = 2;
        }
      }
    }

    v72 = v72;
    sub_1E3E0E8DC();
    v74 = v59;
    v61 = v60;
    OUTLINED_FUNCTION_4_0();
    v3 = swift_allocObject();
    v62 = v71;
    *(v3 + 16) = v71;
    OUTLINED_FUNCTION_4_0();
    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    type metadata accessor for NavigationBarObservableModel(0);
    v64 = v62;
    v65 = sub_1E39EE6D8();
    sub_1E406C2A0(v64, v42, v65, v85);

    *&v87[0] = v74;
    BYTE8(v87[0]) = v61 & 1;
    *(v87 + 9) = *v86;
    HIDWORD(v87[0]) = *&v86[3];
    *&v87[1] = sub_1E40D6F0C;
    *(&v87[1] + 1) = v3;
    memset(&v87[2], 0, 32);
    v87[5] = v85[0];
    *&v87[4] = sub_1E40D6F64;
    *(&v87[4] + 1) = v63;
    v87[6] = v85[1];
    v87[7] = v85[2];
    memcpy(v75, v87, 0x80uLL);
    swift_storeEnumTagMultiPayload();
    sub_1E379D7E4(v87, v85, &unk_1ECF3FA18, &qword_1E42EB310);
    v66 = OUTLINED_FUNCTION_32_7();
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);
    OUTLINED_FUNCTION_59_40(v68);
    sub_1E40D5D34();
    v69 = v78;
    sub_1E4201F44();
    sub_1E32E3C30(v69, v82);
    swift_storeEnumTagMultiPayload();
    v70 = sub_1E40D5C90();
    OUTLINED_FUNCTION_5_1(v70);
    OUTLINED_FUNCTION_117_13();
    sub_1E4201F44();

    sub_1E325F6F0(v87, &unk_1ECF3FA18, &qword_1E42EB310);
    sub_1E32E3C94(v69);
    goto LABEL_18;
  }

  sub_1E325F6F0(v22, &unk_1ECF3F9E0, &unk_1E42DFB60);
  v26 = 1;
LABEL_20:
  __swift_storeEnumTagSinglePayload(v5, v26, 1, v84);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40C7264()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v58 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  if (!v8 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    v13 = [objc_opt_self() sharedInstance];
    v14 = [v13 appController];

    if (v14)
    {
      Strong = [v14 appContext];
    }

    else
    {
      Strong = 0;
    }
  }

  v55 = *(*v6 + 824);
  v15 = v55();
  v56 = v4;
  v57 = Strong;
  if (!v15)
  {
    type metadata accessor for Route(0);
    OUTLINED_FUNCTION_9_5();
    type metadata accessor for DocumentContext();
    sub_1E3D989C8(v4);
    j__OUTLINED_FUNCTION_18();
    v16 = OUTLINED_FUNCTION_63_0();
    v15 = sub_1E3F4C85C(v16, v17, v18);
  }

  v19 = v15;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_4_32();
  v20 = v58;
  v21(v1);
  OUTLINED_FUNCTION_98_16();
  swift_retain_n();
  swift_retain_n();
  v22 = v2;
  v23 = sub_1E41FFC94();
  v24 = sub_1E4206814();

  if (os_log_type_enabled(v23, v24))
  {
    v20 = OUTLINED_FUNCTION_72_0();
    v60[0] = swift_slowAlloc();
    *v20 = 136447746;
    v25 = sub_1E40C50E8();
    OUTLINED_FUNCTION_141_12(v25, v26);
    OUTLINED_FUNCTION_50();

    *(v20 + 4) = v22;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1E3270FC8(*(v6 + 16), *(v6 + 24), v60);
    *(v20 + 22) = 2080;
    v27 = sub_1E41E1364(v6);
    OUTLINED_FUNCTION_141_12(v27, v28);
    OUTLINED_FUNCTION_50();

    *(v20 + 24) = v22;
    *(v20 + 32) = 2080;
    v29 = v19[2];
    v30 = v19[3];

    v31 = OUTLINED_FUNCTION_32_0();
    sub_1E3270FC8(v31, v32, v33);
    OUTLINED_FUNCTION_12_1();

    *(v20 + 34) = v29;
    *(v20 + 42) = 2080;
    v34 = sub_1E41E1364(v19);
    OUTLINED_FUNCTION_141_12(v34, v35);
    OUTLINED_FUNCTION_50();

    *(v20 + 44) = v30;
    *(v20 + 52) = 1024;
    LOBYTE(v29) = (*(*v19 + 488))(v36);

    *(v20 + 54) = v29 & 1;

    *(v20 + 58) = 1024;
    v38 = (v55)(v37);

    if (v38)
    {

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    *(v20 + 60) = v39;

    _os_log_impl(&dword_1E323F000, v23, v24, "    %{public}s currentRoute %s-%s     build destiation with route %s-%s-%{BOOL}d\n    is new route %{BOOL}d", v20, 0x40u);
    OUTLINED_FUNCTION_62_37();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_7_9();

    (*(v10 + 8))(v1, v58);
  }

  else
  {

    OUTLINED_FUNCTION_98_16();

    (*(v10 + 8))(v1, v58);
  }

  v40 = *(*v6 + 832);

  v40(v41);
  type metadata accessor for DocumentContext();
  OUTLINED_FUNCTION_60_1();

  v42 = v56;
  v43 = j__OUTLINED_FUNCTION_18();
  v44 = sub_1E3D98A84(v42, v19, v43 & 1);
  OUTLINED_FUNCTION_3_0(v44 + 32, v60);
  v45 = swift_unknownObjectWeakAssign();
  v46 = (*(*v19 + 392))(v45);
  OUTLINED_FUNCTION_3_0(v44 + 48, &v59);
  *(v44 + 48) = v46;

  if ((*(*v6 + 728))(v47))
  {
    OUTLINED_FUNCTION_30();
    (*(v48 + 552))();
    OUTLINED_FUNCTION_112();

    if (v20)
    {
      sub_1E3744600(v20);
    }
  }

  v49 = j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  v50 = OUTLINED_FUNCTION_13_8();
  sub_1E3D98BF4(v50, v51, v52, v53);

  if (!v8)
  {

    goto LABEL_25;
  }

  if (*(v8 + 64) != 2 || (v54 = *(v8 + 24), , !v54))
  {

LABEL_23:
    *(v8 + 65) = 2;
    goto LABEL_25;
  }

  sub_1E32AE9B0(v54);
  OUTLINED_FUNCTION_60_1();

  if (!v49)
  {
    goto LABEL_23;
  }

LABEL_25:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40C7894()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_9_5();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + Strong);
    if (v13)
    {
      v14 = *(v13 + 24);
      v15 = *(v13 + 64);
      if (v15 == 2)
      {
        v78 = v8;
        v80 = v4;
        v82 = v2;
        v17 = *(v13 + 48);
        v16 = *(v13 + 56);
        v18 = *(v13 + 32);
        v19 = *(v13 + 40);
        v20 = *(v13 + 16);

        sub_1E40D6474(v20, v14, v18, v19, v17, v16, 2);

        if (v14)
        {
          if (sub_1E32AE9B0(v14))
          {
            sub_1E324FBDC();
            OUTLINED_FUNCTION_12_7();
            v21(v1);
            v12 = v12;

            v22 = sub_1E41FFC94();
            v23 = sub_1E4206814();

            if (os_log_type_enabled(v22, v23))
            {
              v24 = v14;
              v25 = OUTLINED_FUNCTION_49_0();
              v84 = OUTLINED_FUNCTION_100();
              v26 = OUTLINED_FUNCTION_182_5(4.8752e-34);
              sub_1E3270FC8(v26, v27, &v84);
              OUTLINED_FUNCTION_11_5();

              *(v25 + 4) = v80;
              *(v25 + 12) = 2048;
              v28 = sub_1E32AE9B0(v24);

              *(v25 + 14) = v28;

              _os_log_impl(&dword_1E323F000, v22, v23, "%{public}swill process next deep link data source, remaining: %ld", v25, 0x16u);
              OUTLINED_FUNCTION_41_70();
              OUTLINED_FUNCTION_79();

              (*(v80 + 8))(v1, v82);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              (*(v80 + 8))(v1, v82);
            }

            sub_1E40C7FE4();
          }

          else
          {

            if (*(v13 + 65) == 2)
            {
              v59 = *(v13 + 72);
              v60 = *(v13 + 80);
              *(v13 + 72) = 0;
              *(v13 + 80) = 0;
              sub_1E40C8384();
              if (v59)
              {

                v59(v61);
                sub_1E34AF594(v59, v60);
                sub_1E34AF594(v59, v60);
              }
            }
          }

          goto LABEL_29;
        }

        v15 = *(v13 + 64);
        v81 = *(v13 + 24);
        v2 = v82;
        v8 = v78;
        v4 = v80;
      }

      else
      {
        v81 = *(v13 + 24);
      }

      if (v15 != 1)
      {
        if (sub_1E40C40A4())
        {
          v36 = v8;
          OUTLINED_FUNCTION_26_0();
          v37 += 97;
          v38 = *v37;
          v39 = (*v37)();
          LOBYTE(v84) = v39;
          v85 = 0;
          sub_1E3F4EEA0(v39, v40, v41);
          if ((sub_1E4205E84() & 1) == 0)
          {
            OUTLINED_FUNCTION_26();
            v43 = (*(v42 + 752))();
            if (v43)
            {
              v44 = v43;
              v38();
              OUTLINED_FUNCTION_16_5();

              sub_1E40C8850();

LABEL_29:

              goto LABEL_37;
            }
          }

          v8 = v36;
        }

        if (sub_1E40C40A4())
        {
          OUTLINED_FUNCTION_26_0();
          v46 = (*(v45 + 776))();
          LOBYTE(v84) = v46;
          v85 = 0;
          sub_1E3F4EEA0(v46, v47, v48);
          sub_1E4205E84();
          if (*(v13 + 65) == 2)
          {
            sub_1E324FBDC();
            OUTLINED_FUNCTION_22_6();
            v49(v8);
            v12 = v12;
            v50 = sub_1E41FFC94();
            sub_1E4206814();

            if (OUTLINED_FUNCTION_165_5())
            {
              v51 = OUTLINED_FUNCTION_6_21();
              v84 = OUTLINED_FUNCTION_100();
              v52 = OUTLINED_FUNCTION_182_5(4.8751e-34);
              sub_1E3270FC8(v52, v53, &v84);
              OUTLINED_FUNCTION_40_18();
              *(v51 + 4) = v2;
              OUTLINED_FUNCTION_62_2();
              _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
              OUTLINED_FUNCTION_40_75();
              OUTLINED_FUNCTION_79();

              (*(v4 + 8))(v8, v2);
            }

            else
            {

              (*(v4 + 8))(v8, v2);
            }

            sub_1E40C8384();
          }

          goto LABEL_37;
        }

        goto LABEL_29;
      }

      v29 = *(v13 + 16);
      v75 = *(v13 + 32);
      v76 = *(v13 + 40);
      v77 = *(v13 + 48);
      v79 = *(v13 + 56);
      v30 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x90);
      v31 = (*MEMORY[0x1E69E7D40] & *v12) + 144;
      v32 = sub_1E34AF604(v29, v81);
      v33 = v30(v32);
      if (v33)
      {
        if (v29)
        {
          v29(v33);

          v34 = OUTLINED_FUNCTION_21_42();
          sub_1E40D60A0(v34, v35, v75, v76, v77, v79, 1);
LABEL_37:

          goto LABEL_38;
        }
      }

      sub_1E324FBDC();
      OUTLINED_FUNCTION_22_6();
      v62(v0);
      v63 = v12;
      v64 = sub_1E41FFC94();
      v65 = v4;
      v66 = sub_1E42067F4();

      if (os_log_type_enabled(v64, v66))
      {
        v83 = v2;
        v67 = OUTLINED_FUNCTION_6_21();
        v84 = OUTLINED_FUNCTION_100();
        *v67 = 136446210;
        v68 = sub_1E40C50E8();
        sub_1E3270FC8(v68, v69, &v84);
        OUTLINED_FUNCTION_122();

        *(v67 + 4) = v31;
        OUTLINED_FUNCTION_124_9();
        _os_log_impl(v70, v71, v72, v73, v74, 0xCu);
        OUTLINED_FUNCTION_40_75();
        OUTLINED_FUNCTION_43_71();

        OUTLINED_FUNCTION_132_12();
        (*(v65 + 8))(v0, v83);
      }

      else
      {

        OUTLINED_FUNCTION_132_12();

        (*(v65 + 8))(v0, v2);
      }
    }

    else
    {
    }
  }

LABEL_38:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40C7FE4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v1;
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  if (*(v0 + 65) == 3)
  {
    goto LABEL_23;
  }

  if (*(v0 + 64) != 2)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_146_2();
    v16(v2);
    v17 = v1;

    v18 = sub_1E41FFC94();
    v19 = sub_1E42067F4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_49_0();
      v41 = OUTLINED_FUNCTION_72_0();
      *v20 = 136446466;
      v21 = sub_1E40C50E8();
      OUTLINED_FUNCTION_38_8(v21, v22);
      OUTLINED_FUNCTION_34_3();
      *(v20 + 4) = v17;
      *(v20 + 12) = 2080;
      v23 = sub_1E40C3D78();
      sub_1E3270FC8(v23, v24, &v41);
      OUTLINED_FUNCTION_50();

      *(v20 + 14) = v0 + 16;
      OUTLINED_FUNCTION_347(&dword_1E323F000, v18, v19, "%{public}sprocessing next deep link data source, context: [%s]");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_55();
    }

    v25 = OUTLINED_FUNCTION_53();
    v26(v25);
    goto LABEL_23;
  }

  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v10 = *(v0 + 16);
  v9 = *(v0 + 24);
  v42 = v9;
  v11 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v12 = *&v3[v11];

  v13 = OUTLINED_FUNCTION_78_0();
  sub_1E40D6474(v13, v14, v8, v7, v6, v5, 2);
  v15 = sub_1E37D027C(v12);

  if (!v15)
  {

    goto LABEL_10;
  }

  if (v15 == v10)
  {

LABEL_10:

LABEL_23:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  if (!v9)
  {
    v32 = 0;
    v38 = 0;
    goto LABEL_22;
  }

  if (!sub_1E32AE9B0(v9))
  {
    __break(1u);
    goto LABEL_25;
  }

  if (!sub_1E32AE9B0(v9))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_26:
    MEMORY[0x1E6911E60](0, v9);
    goto LABEL_17;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_28;
  }

  v27 = *(v9 + 32);
LABEL_17:
  v28 = OUTLINED_FUNCTION_6_19();
  if (sub_1E32AE9B0(v28))
  {
    if (sub_1E32AE9B0(v9) >= 1)
    {
      v29 = sub_1E32AE9B0(v9);
      v30 = __OFSUB__(v29, 1);
      v31 = v29 - 1;
      if (!v30)
      {
        sub_1E3879104(v31, 1);
        sub_1E40D590C(0, 1, 0);
        v32 = v42;
        v38 = v6;
LABEL_22:
        v33 = *(v0 + 24);
        v34 = *(v0 + 32);
        v35 = *(v0 + 40);
        v36 = *(v0 + 48);
        v39 = *(v0 + 56);
        v40 = *(v0 + 16);
        *(v0 + 16) = v15;
        *(v0 + 24) = v32;
        *(v0 + 32) = 0u;
        *(v0 + 48) = 0u;
        v37 = *(v0 + 64);
        *(v0 + 64) = 2;

        sub_1E40D60A0(v40, v33, v34, v35, v36, v39, v37);
        sub_1E40CBE10();

        goto LABEL_23;
      }

      goto LABEL_29;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
}

void sub_1E40C8384()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v59 - v8;
  v10 = OBJC_IVAR____TtC8VideosUI6Router_currentTransaction;
  v11 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v0);
  if (v11 && *(v11 + 65) != 3)
  {
    v12 = sub_1E40C40A4();
    if (v12)
    {
      v13 = v12;

      sub_1E324FBDC();
      OUTLINED_FUNCTION_4_32();
      v14 = OUTLINED_FUNCTION_167_6();
      v15(v14);

      v16 = v0;

      v17 = sub_1E41FFC94();
      sub_1E4206814();
      OUTLINED_FUNCTION_16_5();

      if (OUTLINED_FUNCTION_181_4())
      {
        v18 = OUTLINED_FUNCTION_100();
        v61 = v5;
        v19 = v18;
        v60 = OUTLINED_FUNCTION_164_1();
        v63 = v60;
        *v19 = 136446722;
        v59[3] = v9;
        v20 = sub_1E40C50E8();
        OUTLINED_FUNCTION_58_0(v20, v21);
        OUTLINED_FUNCTION_40_18();
        OUTLINED_FUNCTION_114_12();

        v22 = sub_1E40C3CA0();
        v24 = v23;

        v25 = sub_1E3270FC8(v22, v24, &v63);

        *(v19 + 14) = v25;
        *(v19 + 22) = 2080;
        v62 = v13;
        v26 = type metadata accessor for Route(0);
        OUTLINED_FUNCTION_0_342();
        sub_1E3274C5C(v27, v28, &unk_1E42DFCB8);
        v29 = sub_1E4207944();
        OUTLINED_FUNCTION_58_0(v29, v30);
        OUTLINED_FUNCTION_40_18();
        *(v19 + 24) = v26;
        OUTLINED_FUNCTION_112_18();
        _os_log_impl(v31, v32, v33, v34, v35, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_46_1();
        OUTLINED_FUNCTION_79();
      }

      v36 = OUTLINED_FUNCTION_8_6();
      v37(v36);
      OUTLINED_FUNCTION_26();
      (*(v49 + 736))(0);
      OUTLINED_FUNCTION_26();
      (*(v50 + 760))(0);
      (*(*v13 + 784))(0);
      v51.n128_f64[0] = OUTLINED_FUNCTION_5_11();
      (*(*v13 + 968))(v51);
      v52 = *(v11 + 72);
      *(v11 + 65) = 3;
      if (v52)
      {
        v53 = *(v11 + 80);

        v52(v54);

        sub_1E34AF594(v52, v53);
      }

      else
      {
      }

      v55 = *(v11 + 72);
      v56 = *(v11 + 80);
      *(v11 + 72) = 0;
      *(v11 + 80) = 0;
      sub_1E34AF594(v55, v56);

      *&v10[v2] = 0;
    }

    else
    {

      sub_1E324FBDC();
      OUTLINED_FUNCTION_4_32();
      v38(v1);
      v39 = v0;
      v40 = sub_1E41FFC94();
      v41 = sub_1E4206814();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = OUTLINED_FUNCTION_6_21();
        v43 = v5;
        v44 = OUTLINED_FUNCTION_100();
        v63 = v44;
        *v42 = 136446210;
        v45 = sub_1E40C50E8();
        OUTLINED_FUNCTION_58_0(v45, v46);
        OUTLINED_FUNCTION_40_18();
        *(v42 + 4) = v39;
        OUTLINED_FUNCTION_62_19(&dword_1E323F000, v47, v48, "%{public}sno valid current route for cleanup]");
        __swift_destroy_boxed_opaque_existential_1(v44);
        OUTLINED_FUNCTION_79();
        OUTLINED_FUNCTION_21_0();

        (*(v43 + 8))(v1, v3);
      }

      else
      {

        v57 = OUTLINED_FUNCTION_161_6();
        v58(v57, v3);
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40C8850()
{
  OUTLINED_FUNCTION_31_1();
  v167 = v0;
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
  v163 = &v148 - v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_88_2();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v148 - v21;
  LOBYTE(v169[0]) = v9;
  LOBYTE(v172[0]) = 0;
  sub_1E3F4EEA0(v23, v24, v25);
  if ((sub_1E4205E84() & 1) != 0 || !v3)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v32(v16);

    v33 = v167;
    v34 = sub_1E41FFC94();
    v35 = sub_1E42067F4();

    if (os_log_type_enabled(v34, v35))
    {
      v165 = v12;
      v166 = v10;
      v36 = OUTLINED_FUNCTION_100();
      v167 = OUTLINED_FUNCTION_164_1();
      v169[0] = v167;
      *v36 = 136446722;
      v37 = sub_1E40C50E8();
      OUTLINED_FUNCTION_32_89(v37, v38);
      v39 = OUTLINED_FUNCTION_34_3();
      *(v36 + 4) = v1;
      *(v36 + 12) = 2080;
      LOBYTE(v172[0]) = v9;
      sub_1E40D6EB8(v39, v40, v41);
      v42 = v172;
      v43 = sub_1E4207944();
      OUTLINED_FUNCTION_32_89(v43, v44);
      OUTLINED_FUNCTION_34_3();
      *(v36 + 14) = v1;
      *(v36 + 22) = 2080;
      if (v3)
      {
        OUTLINED_FUNCTION_66_3();
        v42 = v3;
        v46 = (*(v45 + 872))();
        v48 = v47;
      }

      else
      {
        v46 = 0;
        v48 = 0xE000000000000000;
      }

      v127 = v165;
      sub_1E3270FC8(v46, v48, v169);
      OUTLINED_FUNCTION_50();

      *(v36 + 24) = v42;
      _os_log_impl(&dword_1E323F000, v34, v35, "%{public}sunable to perform [%s], route: [%s]", v36, 0x20u);
      OUTLINED_FUNCTION_62_37();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_21_0();

      (*(v127 + 8))(v16, v166);
    }

    else
    {

      (*(v12 + 8))(v16, v10);
    }

    sub_1E40C8384();
  }

  else
  {
    v152 = v22;
    OUTLINED_FUNCTION_66_3();
    v27 = *(v26 + 760);
    v153 = v7;

    v27(v7);
    v28 = v9;
    v29 = &selRef_preAction;
    v30 = &selRef_preActionDocumentDataSource;
    v149 = v1;
    v150 = v9;
    v165 = v12;
    v166 = v10;
    v31 = v9;
    switch(v9)
    {
      case 1:
        goto LABEL_10;
      case 2:
        v29 = &selRef_action;
        v30 = &selRef_documentDataSource;
        goto LABEL_10;
      case 3:
        v29 = &selRef_postAction;
        v30 = &selRef_postActionDocumentDataSource;
LABEL_10:
        OUTLINED_FUNCTION_66_3();
        (*(v49 + 784))();
        v50 = v153;
        v31 = [v153 *v30];
        v28 = [v50 *v29];
        break;
      default:
        break;
    }

    v164 = v31;
    v154 = v28;
    v51 = *(v5 + 120);
    v172[0] = *(v5 + 104);
    v172[1] = v51;
    v173 = *(v5 + 136);
    v151 = v31;
    OUTLINED_FUNCTION_135();
    sub_1E40D0144();
    v52 = v169[0];
    v53 = v169[1];
    v54 = v169[2];
    v55 = v169[3];
    v56 = v169[4];
    v57 = v169[5];
    v58 = v170;
    v59 = v171;
    v148 = v7;
    v60 = *(v5 + 16);
    v61 = *(v5 + 24);
    v63 = *(v5 + 32);
    v62 = *(v5 + 40);
    v64 = v3;
    v66 = *(v5 + 48);
    v65 = *(v5 + 56);
    *(v5 + 16) = v169[0];
    *(v5 + 24) = v53;
    *(v5 + 32) = v54;
    *(v5 + 40) = v55;
    *(v5 + 48) = v56;
    *(v5 + 56) = v57;
    v67 = *(v5 + 64);
    *(v5 + 64) = v58;
    v155 = v52;
    v156 = v53;
    v157 = v54;
    v158 = v55;
    v159 = v56;
    v160 = v57;
    v161 = v58;
    sub_1E40D6474(v52, v53, v54, v55, v56, v57, v58);
    v68 = v63;
    v69 = v164;
    sub_1E40D60A0(v60, v61, v68, v62, v66, v65, v67);
    v162 = v5;
    *(v5 + 96) = v59;
    if (v69)
    {
      v70 = v151;

      v71 = sub_1E324FBDC();
      v72 = v165;
      v73 = v166;
      v74 = v152;
      (*(v165 + 16))(v152, v71, v166);

      v75 = v70;
      v76 = v167;
      v77 = sub_1E41FFC94();
      v78 = sub_1E4206814();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = OUTLINED_FUNCTION_131_15();
        v80 = OUTLINED_FUNCTION_160();
        v153 = OUTLINED_FUNCTION_164_1();
        v169[0] = v153;
        *v79 = 136446978;
        v167 = v64;
        v163 = v76;
        v81 = sub_1E40C50E8();
        OUTLINED_FUNCTION_32_89(v81, v82);
        OUTLINED_FUNCTION_11_5();

        *(v79 + 4) = v64;
        *(v79 + 12) = 2080;
        OUTLINED_FUNCTION_139_12(v83, v84, v85);
        v86 = sub_1E4207944();
        OUTLINED_FUNCTION_32_89(v86, v87);
        OUTLINED_FUNCTION_11_5();

        *(v79 + 14) = v64;
        *(v79 + 22) = 2112;
        *(v79 + 24) = v75;
        *v80 = v164;
        *(v79 + 32) = 2080;
        v168 = v167;
        v88 = type metadata accessor for Route(0);
        OUTLINED_FUNCTION_0_342();
        sub_1E3274C5C(v89, v90, &unk_1E42DFCB8);
        v91 = v75;
        v92 = sub_1E4207944();
        OUTLINED_FUNCTION_32_89(v92, v93);
        OUTLINED_FUNCTION_11_5();

        *(v79 + 34) = v88;
        _os_log_impl(&dword_1E323F000, v77, v78, "%{public}sperforming event [%s, %@] route: [%s]", v79, 0x2Au);
        sub_1E325F6F0(v80, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_13_4();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_51_2();
        OUTLINED_FUNCTION_6_0();

        (*(v165 + 8))(v74, v166);
      }

      else
      {

        (*(v72 + 8))(v74, v73);
      }

      v126 = v75;
      sub_1E40CBE10();

      OUTLINED_FUNCTION_13_187();
    }

    else
    {
      v94 = v64;
      v96 = v165;
      v95 = v166;
      v97 = v154;
      if (v154)
      {
        sub_1E324FBDC();
        OUTLINED_FUNCTION_4_32();
        v98 = v149;
        v99(v149);

        v100 = v167;
        v101 = v97;
        v102 = v95;
        v103 = sub_1E41FFC94();
        v104 = sub_1E4206814();

        if (os_log_type_enabled(v103, v104))
        {
          v105 = OUTLINED_FUNCTION_131_15();
          LODWORD(v164) = v104;
          v106 = v105;
          v107 = OUTLINED_FUNCTION_160();
          v167 = OUTLINED_FUNCTION_164_1();
          v169[0] = v167;
          *v106 = 136446978;
          v108 = sub_1E40C50E8();
          OUTLINED_FUNCTION_32_89(v108, v109);
          OUTLINED_FUNCTION_11_5();

          OUTLINED_FUNCTION_118_12();
          OUTLINED_FUNCTION_139_12(v110, v111, v112);
          v113 = sub_1E4207944();
          OUTLINED_FUNCTION_32_89(v113, v114);
          OUTLINED_FUNCTION_11_5();

          *(v106 + 14) = v98;
          *(v106 + 22) = 2112;
          *(v106 + 24) = v101;
          *v107 = v97;
          *(v106 + 32) = 2080;
          v168 = v94;
          v115 = type metadata accessor for Route(0);
          OUTLINED_FUNCTION_0_342();
          sub_1E3274C5C(v116, v117, &unk_1E42DFCB8);
          v118 = v101;
          v119 = sub_1E4207944();
          OUTLINED_FUNCTION_32_89(v119, v120);
          OUTLINED_FUNCTION_11_5();

          *(v106 + 34) = v115;
          OUTLINED_FUNCTION_124_9();
          _os_log_impl(v121, v122, v123, v124, v125, 0x2Au);
          sub_1E325F6F0(v107, &unk_1ECF28E30, &qword_1E429E820);
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_62_37();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_6_0();

          (*(v96 + 8))(v149, v166);
        }

        else
        {

          (*(v96 + 8))(v98, v102);
        }

        *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v100) = v162;

        OUTLINED_FUNCTION_53();
        sub_1E40D0360();
        OUTLINED_FUNCTION_13_187();
      }

      else
      {
        sub_1E324FBDC();
        OUTLINED_FUNCTION_4_32();
        v128 = v163;
        v129(v163);
        v130 = v64;

        v131 = v167;
        v132 = sub_1E41FFC94();
        v133 = sub_1E4206814();

        if (os_log_type_enabled(v132, v133))
        {
          v134 = OUTLINED_FUNCTION_100();
          v169[0] = OUTLINED_FUNCTION_164_1();
          *v134 = 136446722;
          v135 = sub_1E40C50E8();
          OUTLINED_FUNCTION_32_89(v135, v136);
          OUTLINED_FUNCTION_122();

          *(v134 + 4) = v62;
          *(v134 + 12) = 2080;
          OUTLINED_FUNCTION_139_12(v137, v138, v139);
          v140 = sub_1E4207944();
          OUTLINED_FUNCTION_32_89(v140, v141);
          OUTLINED_FUNCTION_122();

          *(v134 + 14) = v62;
          *(v134 + 22) = 2080;
          v168 = v130;
          v142 = type metadata accessor for Route(0);
          OUTLINED_FUNCTION_0_342();
          sub_1E3274C5C(v143, v144, &unk_1E42DFCB8);
          v145 = sub_1E4207944();
          OUTLINED_FUNCTION_32_89(v145, v146);
          OUTLINED_FUNCTION_122();

          *(v134 + 24) = v142;
          _os_log_impl(&dword_1E323F000, v132, v133, "%{public}sskipping empty event [%s] route: [%s]", v134, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_79();
          OUTLINED_FUNCTION_7_7();

          (*(v96 + 8))(v163, v166);
        }

        else
        {

          (*(v96 + 8))(v128, v95);
        }

        OUTLINED_FUNCTION_66_3();
        (*(v147 + 776))();

        sub_1E40C8850();
        OUTLINED_FUNCTION_13_187();
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40C9454()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  sub_1E37D027C(v1);
  OUTLINED_FUNCTION_50();

  if (sub_1E40C9518(v0))
  {
    if (v0)
    {
      OUTLINED_FUNCTION_8();
      v3 = *(v2 + 952);

      LOBYTE(v3) = v3(v4);

      if (v3)
      {
        return 1;
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1E40C9518(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0, &unk_1E42DFB60);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_139();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D170, &qword_1E42DF9F0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  if (a1)
  {
    OUTLINED_FUNCTION_8();
    v10 = *(v9 + 488);

    if (v10(v11) & 1) != 0 || (OUTLINED_FUNCTION_8(), ((*(v12 + 536))()))
    {
      OUTLINED_FUNCTION_8();
      if ((*(v13 + 440))())
      {
        OUTLINED_FUNCTION_8();
        if ((*(v14 + 584))())
        {
          OUTLINED_FUNCTION_8();
          (*(v15 + 800))();

          type metadata accessor for DestinationContext(0);
          v16 = OUTLINED_FUNCTION_38();
          if (__swift_getEnumTagSinglePayload(v16, 1, a1) == 1)
          {
            sub_1E325F6F0(v1, &unk_1ECF3F9E0, &unk_1E42DFB60);
            v17 = type metadata accessor for AlertContext(0);
            __swift_storeEnumTagSinglePayload(v8, 1, 1, v17);
          }

          else
          {
            sub_1E379D7E4(v1 + *(a1 + 32), v8, &qword_1ECF3D170, &qword_1E42DF9F0);
            sub_1E3F4ED68(v1);
            v19 = type metadata accessor for AlertContext(0);
            if (__swift_getEnumTagSinglePayload(v8, 1, v19) != 1)
            {
              a1 = 0;
              goto LABEL_13;
            }
          }

          a1 = 1;
LABEL_13:
          sub_1E325F6F0(v8, &qword_1ECF3D170, &qword_1E42DF9F0);
          return a1;
        }
      }
    }

    return 1;
  }

  return a1;
}

void sub_1E40C9798()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v103 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v96 - v15;
  sub_1E40CA1E8();
  v17 = v16;
  v107[3] = &unk_1F5D5E7B8;
  v107[4] = &off_1F5D5CC78;
  LOBYTE(v107[0]) = 0;
  v18 = j__OUTLINED_FUNCTION_18();
  v19 = sub_1E39C29F0(v107, v18 & 1);
  __swift_destroy_boxed_opaque_existential_1(v107);
  if (v17 & 1) != 0 || (v19)
  {
    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_25();
    v36();
    goto LABEL_37;
  }

  if (((*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8))(v9, v7) & 1) == 0)
  {
    goto LABEL_37;
  }

  v102 = v12;
  v20 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  sub_1E37D027C(v21);
  OUTLINED_FUNCTION_12_1();

  if (v20)
  {
    OUTLINED_FUNCTION_111();
    v23 = *(v22 + 960);

    v23(v24);
  }

  OUTLINED_FUNCTION_47_0();
  v26 = (*(v25 + 576))();
  if (!v26)
  {
    goto LABEL_16;
  }

  v27 = v26;
  OUTLINED_FUNCTION_6_230();
  if ((sub_1E40C3FB8(v9, 2, v28) & 1) == 0)
  {
    OUTLINED_FUNCTION_6_230();
    if ((sub_1E40C3FB8(v9, 1, v29) & 1) == 0)
    {

LABEL_16:
      if (!v20)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    }
  }

  type metadata accessor for Metrics(0);
  OUTLINED_FUNCTION_38();
  v30 = sub_1E3BA7AA8();
  if (!v20)
  {

    goto LABEL_37;
  }

  v100 = v30;
  v101 = v10;
  OUTLINED_FUNCTION_111();
  v32 = *(v31 + 368);

  v34 = v32(v33);

  if (v34)
  {
    OUTLINED_FUNCTION_8();
    v99 = *(v35 + 208);

    v99(v27, v100);
  }

  else
  {
  }

  v10 = v101;
LABEL_20:

  if ((sub_1E40C9518(v37) & 1) == 0)
  {
    OUTLINED_FUNCTION_44_2();

    goto LABEL_37;
  }

  v38 = v20;
  v39 = *(*v20 + 736);

  v39(v40);
  v41 = v5;
  if (v5 || (OUTLINED_FUNCTION_47_0(), (v41 = (*(v42 + 544))()) != 0))
  {
    v43 = v5;
    v44 = sub_1E40CA11C(v9, v41);
    if (v44)
    {
      v99 = v44;
      v100 = v41;
      v45 = sub_1E324FBDC();
      v46 = v102;
      v47 = v104;
      (*(v102 + 16))(v104, v45, v10);

      v48 = v2;
      v49 = sub_1E41FFC94();
      v50 = sub_1E4206814();

      v51 = os_log_type_enabled(v49, v50);
      v98 = v48;
      if (v51)
      {
        v52 = OUTLINED_FUNCTION_131_15();
        v101 = v10;
        v53 = v52;
        v97 = swift_slowAlloc();
        v106 = v97;
        *v53 = 136446978;
        v54 = sub_1E40C50E8();
        OUTLINED_FUNCTION_110_15(v54, v55);
        OUTLINED_FUNCTION_112();

        *(v53 + 4) = v47;
        *(v53 + 12) = 2080;
        LOBYTE(v105) = v9;
        sub_1E3790838(v56, v57, v58);
        v59 = sub_1E4207944();
        OUTLINED_FUNCTION_110_15(v59, v60);
        OUTLINED_FUNCTION_112();

        *(v53 + 14) = v47;
        *(v53 + 22) = 2080;
        v62 = (*(*v7 + 376))(v61);
        OUTLINED_FUNCTION_110_15(v62, v63);
        OUTLINED_FUNCTION_112();

        *(v53 + 24) = v47;
        *(v53 + 32) = 2080;
        v105 = v38;
        v64 = type metadata accessor for Route(0);
        OUTLINED_FUNCTION_0_342();
        sub_1E3274C5C(v65, v66, &unk_1E42DFCB8);
        v67 = sub_1E4207944();
        OUTLINED_FUNCTION_110_15(v67, v68);
        OUTLINED_FUNCTION_112();

        *(v53 + 34) = v64;
        _os_log_impl(&dword_1E323F000, v49, v50, "%{public}shandling .%s for %s with route: [%s]", v53, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_46_1();
        OUTLINED_FUNCTION_7_7();

        (*(v46 + 8))(v104, v101);
      }

      else
      {

        (*(v46 + 8))(v47, v10);
      }

      type metadata accessor for RoutingTransaction();
      OUTLINED_FUNCTION_58_41();
      v86 = swift_allocObject();
      v87 = sub_1E40C42B0();
      v88 = v7;
      v89 = (*(*v7 + 648))(v87);
      v90 = v100;
      if (!v89 || (OUTLINED_FUNCTION_25(), swift_beginAccess(), swift_unknownObjectWeakLoadStrong(), OUTLINED_FUNCTION_16_5(), , !v7))
      {
        type metadata accessor for LibViewModel();
        if (swift_dynamicCastClass())
        {
          OUTLINED_FUNCTION_26_0();
          v88 = (*(v91 + 968))();
        }

        else
        {
          v88 = 0;
        }
      }

      swift_unknownObjectWeakAssign();

      v93 = v103;
      v94 = v103[1];
      *(v86 + 104) = *v103;
      *(v86 + 120) = v94;
      *(v86 + 136) = *(v93 + 32);
      v95 = v99;
      OUTLINED_FUNCTION_8_154();
      sub_1E40C8850();

      goto LABEL_37;
    }
  }

  v69 = sub_1E324FBDC();
  v70 = v102;
  v71 = *(v102 + 16);
  v101 = v10;
  v71(v1, v69, v10);

  v72 = v2;
  v73 = sub_1E41FFC94();
  v74 = sub_1E4206814();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = OUTLINED_FUNCTION_100();
    v104 = OUTLINED_FUNCTION_164_1();
    v106 = v104;
    v76 = OUTLINED_FUNCTION_182_5(4.8754e-34);
    OUTLINED_FUNCTION_110_15(v76, v77);
    OUTLINED_FUNCTION_112();

    *(v75 + 4) = v72;
    *(v75 + 12) = 2080;
    LOBYTE(v105) = v9;
    sub_1E3790838(v78, v79, v80);
    v81 = sub_1E4207944();
    OUTLINED_FUNCTION_110_15(v81, v82);
    OUTLINED_FUNCTION_112();

    *(v75 + 14) = v72;
    *(v75 + 22) = 2080;
    v84 = (*(*v7 + 376))(v83);
    OUTLINED_FUNCTION_110_15(v84, v85);
    OUTLINED_FUNCTION_11_5();

    *(v75 + 24) = v7;
    _os_log_impl(&dword_1E323F000, v73, v74, "%{public}shandling .%s for %s, no valid routerDataSource", v75, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_79();

    (*(v102 + 8))(v1, v101);
  }

  else
  {

    (*(v70 + 8))(v1, v101);
  }

  OUTLINED_FUNCTION_5_11();
  OUTLINED_FUNCTION_111();
  (*(v92 + 968))();

LABEL_37:
  OUTLINED_FUNCTION_25_2();
}

id sub_1E40CA11C(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_6_230();
  if (sub_1E40C3FB8(v4, 1, v5) & 1) != 0 || (OUTLINED_FUNCTION_6_230(), (sub_1E40C3FB8(a1, 0, v6)))
  {
    v7 = &selRef_playEventDataSource;
    return [a2 *v7];
  }

  OUTLINED_FUNCTION_6_230();
  if (sub_1E40C3FB8(a1, 2, v9))
  {
    v7 = &selRef_selectEventDataSource;
    return [a2 *v7];
  }

  OUTLINED_FUNCTION_6_230();
  if (sub_1E40C3FB8(a1, 4, v10))
  {
    v7 = &selRef_contextMenuEventDataSource;
    return [a2 *v7];
  }

  return 0;
}

void sub_1E40CA1E8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  if (TVAppFeature.isEnabled.getter(18, v6, v7))
  {
    v8 = v2;
    if (v2 || (OUTLINED_FUNCTION_8(), (v8 = (*(v9 + 544))()) != 0))
    {
      v10 = v2;
      v11 = sub_1E40CA11C(v4, v8);
      if (v11)
      {
        v12 = v11;
        v13 = [v11 action];
        if (v13)
        {
          v14 = v13;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            sub_1E324FBDC();
            OUTLINED_FUNCTION_4_32();
            v15 = OUTLINED_FUNCTION_33_14();
            v16(v15);
            v17 = v0;
            v18 = sub_1E41FFC94();
            v19 = sub_1E4206814();

            if (os_log_type_enabled(v18, v19))
            {
              v30 = v19;
              v20 = OUTLINED_FUNCTION_49_0();
              OUTLINED_FUNCTION_72_0();
              *v20 = 136315394;
              v21 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0xB0))();
              OUTLINED_FUNCTION_58_0(v21, v22);
              v23 = OUTLINED_FUNCTION_40_18();
              *(v20 + 4) = v17;
              *(v20 + 12) = 2080;
              sub_1E3790838(v23, v24, v25);
              v26 = sub_1E4207944();
              OUTLINED_FUNCTION_58_0(v26, v27);
              OUTLINED_FUNCTION_176_0();
              *(v20 + 14) = v4;
              _os_log_impl(&dword_1E323F000, v18, v30, "Router[%s]::event: %s playlist action use view model dispatch", v20, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_55();
              OUTLINED_FUNCTION_7_7();
            }

            else
            {
            }

            v28 = OUTLINED_FUNCTION_13_8();
            v29(v28);
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CA4B0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = OUTLINED_FUNCTION_187_4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  v12 = sub_1E37D027C(v11);

  if (v12)
  {
    OUTLINED_FUNCTION_44_2();
    v13 = swift_retain_n();
    if ((sub_1E40C9518(v13) & 1) == 0)
    {
LABEL_14:

      goto LABEL_15;
    }

    v14 = sub_1E324FBDC();
    v39 = *(v5 + 16);
    v39(v2, v14, v3);

    v15 = v0;
    v16 = sub_1E41FFC94();
    v17 = sub_1E4206814();

    v40 = v17;
    v41 = v5;
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_72_0();
      *v18 = 136315394;
      OUTLINED_FUNCTION_21();
      v20 = (*(v19 + 176))();
      OUTLINED_FUNCTION_38_8(v20, v21);
      OUTLINED_FUNCTION_176_0();
      *(v18 + 4) = v5;
      *(v18 + 12) = 2080;
      v22 = type metadata accessor for Route(0);
      OUTLINED_FUNCTION_0_342();
      sub_1E3274C5C(v23, v24, &unk_1E42DFCB8);
      v25 = sub_1E4207944();
      OUTLINED_FUNCTION_38_8(v25, v26);
      OUTLINED_FUNCTION_176_0();
      *(v18 + 14) = v22;
      _os_log_impl(&dword_1E323F000, v16, v40, "Router[%s]::handling [select] event with route: [%s]", v18, 0x16u);
      OUTLINED_FUNCTION_120_10();
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_7_9();

      v27 = *(v41 + 8);
    }

    else
    {

      v27 = *(v5 + 8);
    }

    v27(v2, v3);
    v28 = sub_1E40CA11C(2, v1);

    if (v28)
    {
      type metadata accessor for RoutingTransaction();
      OUTLINED_FUNCTION_58_41();
      swift_allocObject();
      sub_1E40C42B0();
      type metadata accessor for TVAppLauncher(0);
      v29 = [swift_getObjCClassFromMetadata() sharedInstance];
      v30 = [v29 appController];

      if (v30)
      {
        v31 = [v30 appContext];
      }

      else
      {
        v31 = 0;
      }

      swift_unknownObjectWeakAssign();

      sub_1E40C8850();

      OUTLINED_FUNCTION_44_2();
      goto LABEL_14;
    }

    v39(v9, v14, v3);
    v32 = v15;
    v33 = sub_1E41FFC94();
    v34 = sub_1E4206814();

    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_6_21();
      v42 = OUTLINED_FUNCTION_10_11();
      MEMORY[0] = 136315138;
      v35 = (*((*MEMORY[0x1E69E7D40] & *v32) + 0xB0))();
      OUTLINED_FUNCTION_38_8(v35, v36);
      OUTLINED_FUNCTION_14_52();
      MEMORY[4] = v32;
      OUTLINED_FUNCTION_137_10(&dword_1E323F000, v33, v34, "Router[%s]::handling [select] event without valid routerDataSource]", v38);
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_44_2();
    }

    else
    {

      OUTLINED_FUNCTION_44_2();
    }

    v37 = OUTLINED_FUNCTION_39_3();
    (v27)(v37);
  }

LABEL_15:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40CA9C0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  sub_1E37D027C(v3);
  OUTLINED_FUNCTION_38();

  if (v2)
  {

    if ((sub_1E40C9518(v4) & 1) == 0 || *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v1))
    {

LABEL_5:

      return 0;
    }

    OUTLINED_FUNCTION_8();
    (*(v6 + 776))();
    OUTLINED_FUNCTION_56_41();
    v9 = sub_1E40C3FB8(v7, 0, v8);

    if ((v9 & 1) == 0 || *(v1 + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute))
    {
      goto LABEL_5;
    }
  }

  return v2;
}

void sub_1E40CAABC()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_8();
  v14 = *&v0[OBJC_IVAR____TtC8VideosUI6Router_multipleDocumentRoute];
  if (v14)
  {
    goto LABEL_7;
  }

  v54 = v8;
  v15 = v11;
  v16 = v9;
  v17 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v18 = *&v0[v17];
  if (!sub_1E32AE9B0(v18))
  {
    v42 = sub_1E324FBDC();
    v43 = v16;
    (*(v15 + 16))(v2, v42, v16);
    v44 = v0;
    v45 = sub_1E41FFC94();
    v46 = sub_1E4206814();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_6_21();
      v56[0] = OUTLINED_FUNCTION_100();
      *v47 = 136315138;
      v48 = (*((*MEMORY[0x1E69E7D40] & *v44) + 0xB0))();
      sub_1E3270FC8(v48, v49, v56);
      OUTLINED_FUNCTION_112();

      *(v47 + 4) = v15;
      _os_log_impl(&dword_1E323F000, v45, v46, "Router:[%s]::there are no routes in the router.", v47, 0xCu);
      OUTLINED_FUNCTION_40_75();
      OUTLINED_FUNCTION_21_0();

      v50 = (*(v15 + 8))(v2, v43);
    }

    else
    {

      v50 = (*(v15 + 8))(v2, v16);
    }

    if (v6)
    {
      v6(v50);
    }

    goto LABEL_14;
  }

  v9 = v16;
  if ((v18 & 0xC000000000000001) != 0)
  {

    v14 = MEMORY[0x1E6911E60](0, v18);

    goto LABEL_6;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v18 + 32);

LABEL_6:
    v11 = v15;
    v8 = v54;
LABEL_7:
    v55 = v6;

    sub_1E324FBDC();
    OUTLINED_FUNCTION_6_30();
    v19(v1);
    v20 = v0;
    v21 = sub_1E41FFC94();
    v22 = v11;
    v23 = sub_1E4206814();

    if (os_log_type_enabled(v21, v23))
    {
      v51 = v22;
      v52 = v4;
      v53 = v9;
      v24 = OUTLINED_FUNCTION_100();
      v25 = OUTLINED_FUNCTION_164_1();
      v56[7] = v25;
      *v24 = 136315650;
      v26 = sub_1E40C50E8();
      OUTLINED_FUNCTION_38_8(v26, v27);
      OUTLINED_FUNCTION_11_5();

      OUTLINED_FUNCTION_118_12();
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      type metadata accessor for Route(0);
      OUTLINED_FUNCTION_11_5();

      v29 = MEMORY[0x1E6910C30](v28, v9);

      v30 = OUTLINED_FUNCTION_34();
      v33 = sub_1E3270FC8(v30, v31, v32);

      *(v24 + 14) = v33;
      *(v24 + 22) = 2080;
      v34 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v20);
      if (v34)
      {
        v35 = type metadata accessor for RoutingTransaction();
      }

      else
      {
        v35 = 0;
        v56[1] = 0;
        v56[2] = 0;
      }

      v56[0] = v34;
      v56[3] = v35;

      v37 = sub_1E3294FA4(v56);
      OUTLINED_FUNCTION_38_8(v37, v38);
      OUTLINED_FUNCTION_11_5();

      *(v24 + 24) = v29;
      _os_log_impl(&dword_1E323F000, v21, v23, "%spopToRootView: routes %s, transaction [%s]", v24, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_43_71();

      (*(v51 + 8))(v1, v53);
      v4 = v52;
    }

    else
    {

      v36 = *(v22 + 8);
      v25 = v22 + 8;
      v36(v1, v9);
    }

    OUTLINED_FUNCTION_4_0();
    v39 = swift_allocObject();
    OUTLINED_FUNCTION_101_15(v39);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_89();
    v40 = swift_allocObject();
    *(v40 + 16) = v25;
    *(v40 + 24) = v14;
    *(v40 + 32) = v8 & 1;
    *(v40 + 40) = v55;
    *(v40 + 48) = v4;
    v41 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x208);

    sub_1E34AF604(v55, v4);
    v41(0, sub_1E40D6084, v40);

LABEL_14:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

void sub_1E40CB010()
{
  OUTLINED_FUNCTION_31_1();
  v28 = v1;
  v29 = v2;
  v30 = v3;
  v4 = OUTLINED_FUNCTION_187_4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  sub_1E324FBDC();
  OUTLINED_FUNCTION_48_4();
  v9(v8);

  v10 = v8;
  v11 = sub_1E41FFC94();
  v12 = sub_1E4206814();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_6_21();
    v27 = OUTLINED_FUNCTION_100();
    v31 = v27;
    *v13 = 136315138;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v15 = sub_1E40C50E8();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0xE000000000000000;
    }

    sub_1E3270FC8(v15, v17, &v31);
    OUTLINED_FUNCTION_50();

    *(v13 + 4) = v10;
    _os_log_impl(&dword_1E323F000, v11, v12, "%spopToRootView: popping", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_51_2();

    v20 = OUTLINED_FUNCTION_147_7();
    v21(v20, v4);
  }

  else
  {

    v18 = OUTLINED_FUNCTION_147_7();
    v19(v18, v4);
  }

  OUTLINED_FUNCTION_5_10();
  v22 = swift_allocObject();
  v22[2] = v0;
  v22[3] = v28;
  v22[4] = v29;
  OUTLINED_FUNCTION_26();
  v24 = *(v23 + 984);

  v25 = OUTLINED_FUNCTION_135();
  sub_1E34AF604(v25, v26);
  v24(v30 & 1, sub_1E40D6DFC, v22);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CB270()
{
  OUTLINED_FUNCTION_31_1();
  v25 = v3;
  v5 = v4;
  v7 = v6;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_9();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v28 = v10;
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v27 = sub_1E4204014();
  v11 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_8();
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v26 = sub_1E4206A04();
  sub_1E4204004();
  v13.n128_u64[0] = 0x3FE999999999999ALL;
  sub_1E4204074(v13);
  v14 = *(v11 + 8);
  v14(v2, v27);
  OUTLINED_FUNCTION_5_10();
  v15 = swift_allocObject();
  v15[2] = v7;
  v15[3] = v5;
  v15[4] = v25;
  v30[4] = sub_1E40D6E4C;
  v30[5] = v15;
  OUTLINED_FUNCTION_12_0();
  v30[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v30[2] = v16;
  v30[3] = &block_descriptor_211_0;
  v17 = _Block_copy(v30);

  sub_1E34AF604(v5, v25);

  sub_1E4203FE4();
  v30[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_267();
  sub_1E3274C5C(v18, v19, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v20, v21, &qword_1E429B000, v22);
  sub_1E42072E4();
  OUTLINED_FUNCTION_8_154();
  MEMORY[0x1E69112E0]();
  _Block_release(v17);

  v23 = OUTLINED_FUNCTION_16_80();
  v24(v23);
  (*(v28 + 8))(v0, v29);
  v14(v1, v27);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CB5B4()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v7 = v6;
  v83 = v8;
  v84 = v9;
  OUTLINED_FUNCTION_123_2();
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_68_1();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v73 - v17;
  v19 = OBJC_IVAR____TtC8VideosUI6Router_currentTransaction;
  if (!*(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v0) && sub_1E32AE9B0(v2))
  {
    v81 = v7;
    v78 = v3;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_12_7();
    v76 = v26;
    v77 = v27;
    v75 = v28;
    (v28)(v18);
    OUTLINED_FUNCTION_98_16();
    swift_bridgeObjectRetain_n();
    v80 = v0;
    v29 = v0;
    v30 = v10;
    v31 = sub_1E41FFC94();
    v32 = sub_1E4206814();

    v33 = os_log_type_enabled(v31, v32);
    v79 = v19;
    v82 = v30;
    if (v33)
    {
      v34 = OUTLINED_FUNCTION_49_0();
      v74 = OUTLINED_FUNCTION_100();
      v86 = v74;
      *v34 = 136446466;
      v35 = sub_1E40C50E8();
      OUTLINED_FUNCTION_49_1(v35, v36);
      OUTLINED_FUNCTION_11_5();

      *(v34 + 4) = v12;
      *(v34 + 12) = 2048;
      sub_1E32AE9B0(v2);
      OUTLINED_FUNCTION_60_1();

      *(v34 + 14) = v29;

      _os_log_impl(&dword_1E323F000, v31, v32, "%{public}sstarting to process push document data sources with initial count: %ld", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v74);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_13_4();

      v37 = *(v12 + 8);
      v38 = v18;
      v39 = v82;
    }

    else
    {

      OUTLINED_FUNCTION_98_16();
      swift_bridgeObjectRelease_n();
      v38 = OUTLINED_FUNCTION_21_42();
    }

    v74 = v37;
    (v37)(v38, v39);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();

    v41 = sub_1E37D027C(v40);

    OUTLINED_FUNCTION_4_0();
    v42 = swift_allocObject();
    *(v42 + 16) = v2;
    type metadata accessor for RoutingTransaction();
    OUTLINED_FUNCTION_58_41();
    v43 = swift_allocObject();
    sub_1E40C42B0();
    *(v43 + 66) = v83 & 1;
    swift_unknownObjectWeakAssign();
    *(v43 + 72) = v81;
    *(v43 + 80) = v5;

    v44 = OUTLINED_FUNCTION_24_4();
    sub_1E34AF604(v44, v45);
    v46 = OUTLINED_FUNCTION_32_0();
    sub_1E34AF594(v46, v47);
    if (v41)
    {
      v48 = OUTLINED_FUNCTION_99_0();
      sub_1E40CBBD4(v48, v49, v42);
    }

    else
    {
      v50 = v78;
      v51 = v82;
      v75(v78, v76, v82);
      v52 = v29;
      v53 = v50;
      v54 = sub_1E41FFC94();
      v55 = sub_1E4206814();

      if (os_log_type_enabled(v54, v55))
      {
        OUTLINED_FUNCTION_6_21();
        v56 = OUTLINED_FUNCTION_10_11();
        v84 = v12;
        v85 = v56;
        *v51 = 136446210;
        v53 = v52;
        v57 = sub_1E40C50E8();
        OUTLINED_FUNCTION_38_8(v57, v58);
        OUTLINED_FUNCTION_14_52();
        *(v51 + 4) = 0;
        OUTLINED_FUNCTION_137_10(&dword_1E323F000, v54, v55, "%{public}sno current route for handling pushViews transaction.");
        OUTLINED_FUNCTION_40_75();
        OUTLINED_FUNCTION_55();

        v59 = v50;
        v60 = v82;
      }

      else
      {

        v59 = v50;
        v60 = v51;
      }

      (v74)(v59, v60);
      OUTLINED_FUNCTION_4_0();
      v61 = swift_allocObject();
      OUTLINED_FUNCTION_105_2(v61);
      swift_weakInit();
      OUTLINED_FUNCTION_4_0();
      v62 = swift_allocObject();
      OUTLINED_FUNCTION_101_15(v62);
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_10_9();
      v63 = swift_allocObject();
      v63[2] = v55;
      v63[3] = v53;
      v63[4] = v42;
      v63[5] = v52;
      v84 = *(v43 + 16);
      v64 = v52;
      v65 = *(v43 + 56);
      *(v43 + 16) = sub_1E40D6094;
      *(v43 + 24) = v63;
      *(v43 + 32) = 0u;
      *(v43 + 48) = 0u;
      v66 = *(v43 + 64);
      *(v43 + 64) = 1;
      v67 = v64;

      OUTLINED_FUNCTION_67_31();
      sub_1E40D60A0(v68, v69, v70, v71, v72, v65, v66);

      *&v79[v80] = v43;
    }

    goto LABEL_20;
  }

  if (v2 >> 62)
  {
    if (!sub_1E4207384())
    {
      goto LABEL_4;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    v84 = v5;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_12_7();
    v20(v1);
    v21 = v0;
    v22 = sub_1E41FFC94();
    v23 = sub_1E4206814();

    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_6_21();
      v86 = OUTLINED_FUNCTION_10_11();
      *v2 = 136446210;
      v24 = sub_1E40C50E8();
      OUTLINED_FUNCTION_49_1(v24, v25);
      OUTLINED_FUNCTION_14_52();
      *(v2 + 4) = v21;
      OUTLINED_FUNCTION_137_10(&dword_1E323F000, v22, v23, "%{public}sdocumentDataSources is empty, nothing to do.");
      OUTLINED_FUNCTION_40_75();
      OUTLINED_FUNCTION_55();
    }

    (*(v12 + 8))(v1, v10);
  }

  if (v7)
  {
    v7(v16);
  }

LABEL_20:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CBBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v7 = *(a3 + 16);
  if (v7 >> 62)
  {
    if (!sub_1E4207384())
    {
      return;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {

    MEMORY[0x1E6911E60](0, v7);
    OUTLINED_FUNCTION_6_19();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(v7 + 32);
  }

  OUTLINED_FUNCTION_11_3(a3 + 16, v18);
  v8 = sub_1E40CBD60();
  swift_endAccess();

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v9 = *(a3 + 16);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v15 = *(a1 + 48);
  v14 = *(a1 + 56);
  *(a1 + 16) = a2;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v16 = *(a1 + 64);
  *(a1 + 64) = 2;

  sub_1E40D60A0(v10, v11, v12, v13, v15, v14, v16);
  v17 = v3;
  sub_1E40CBE10();
}

id sub_1E40CBD60()
{
  v1 = *v0;
  if (!sub_1E32AE9B0(*v0))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1E32AE9B0(v1);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_10:
    v3 = MEMORY[0x1E6911E60](0, v1);
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(v1 + 32);
LABEL_6:
  v4 = v3;
  result = sub_1E32AE9B0(v1);
  if (result)
  {
    sub_1E40D5768(0, 1, sub_1E40D590C, v5, v6, v7, v8, v9, v10);
    return v4;
  }

LABEL_12:
  __break(1u);
  return result;
}

double sub_1E40CBE10()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_9();
  if (*(v7 + 65) == 3)
  {
    v18 = sub_1E324FBDC();
    (*(v10 + 16))(v1, v18, v8);
    v19 = v3;
    v20 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_34_9())
    {
      OUTLINED_FUNCTION_6_21();
      v21 = OUTLINED_FUNCTION_10_11();
      v47[0] = v21;
      *v2 = 136446210;
      v22 = sub_1E40C50E8();
      OUTLINED_FUNCTION_14_64(v22, v23);
      OUTLINED_FUNCTION_34_3();
      *(v2 + 4) = v5;
      OUTLINED_FUNCTION_60_3();
      _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_43_71();
      OUTLINED_FUNCTION_55();
    }

    v29 = OUTLINED_FUNCTION_74();
    v30(v29);
    sub_1E40C8384();
LABEL_8:
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    if (!*(v7 + 65))
    {
      *(v7 + 65) = 1;
    }

    *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v3) = v7;

    v12 = *(v7 + 16);
    v13 = *(v7 + 24);
    v14 = *(v7 + 32);
    v15 = *(v7 + 40);
    v17 = *(v7 + 48);
    v16 = *(v7 + 56);
    switch(*(v7 + 64))
    {
      case 2:

        sub_1E40CFA90();
        goto LABEL_16;
      case 3:
      case 4:
      case 5:

        sub_1E40CFE68();
        goto LABEL_16;
      case 6:
        v32 = *(v7 + 66);
        OUTLINED_FUNCTION_47_0();
        v34 = *(v33 + 1008);

        v34(v13, v14, v17, v16, v15, v32);

        sub_1E40C5740(v12);
LABEL_16:
        OUTLINED_FUNCTION_25_2();

        return result;
      case 7:
        if (!*(v3 + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute))
        {
          v46 = objc_opt_self();
          OUTLINED_FUNCTION_10_9();
          v39 = swift_allocObject();
          v39[2] = v13;
          v39[3] = v12;
          v39[4] = v3;
          v39[5] = v7;
          v47[4] = sub_1E40D6CDC;
          v47[5] = v39;
          OUTLINED_FUNCTION_12_0();
          OUTLINED_FUNCTION_48_2(COERCE_DOUBLE(1107296256));
          v47[2] = v40;
          v47[3] = &block_descriptor_191_0;
          v41 = _Block_copy(v47);

          v42 = OUTLINED_FUNCTION_34();
          sub_1E40D6474(v42, v43, v14, v15, v17, v16, 7);
          v44 = v13;
          OUTLINED_FUNCTION_38();

          v45 = v3;

          [v46 dismissOrPopLastViewControllerWithCompletion_];

          _Block_release(v41);
          goto LABEL_8;
        }

        v35 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x208);
        v13;

        OUTLINED_FUNCTION_169();
        v35();

        OUTLINED_FUNCTION_25_2();

        break;
      default:
        goto LABEL_8;
    }
  }

  return result;
}

void sub_1E40CC270()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    if (v7)
    {
      v18 = v7;
      v19 = v3;
      sub_1E324FBDC();
      v8 = OUTLINED_FUNCTION_34_78();
      v9(v8);
      v10 = v6;
      v11 = sub_1E41FFC94();
      v12 = sub_1E4206814();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = OUTLINED_FUNCTION_6_21();
        v20 = OUTLINED_FUNCTION_100();
        *v13 = 136446210;
        v14 = sub_1E40C50E8();
        OUTLINED_FUNCTION_97_4(v14, v15);
        OUTLINED_FUNCTION_112();

        *(v13 + 4) = v1;
        _os_log_impl(&dword_1E323F000, v11, v12, "%{public}s continue waitingForRootView context with push context", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_13_4();
      }

      v16 = OUTLINED_FUNCTION_124();
      v17(v16);
      sub_1E40CBBD4(v18, v19, v1);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CC45C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_9_5();
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v86 - v18;
  v20 = OBJC_IVAR____TtC8VideosUI6Router_currentTransaction;
  if (!*(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v2))
  {
    v95 = v8;
    v96 = v10;
    v97 = v4;
    v91 = v16;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_6_30();
    v89 = v21;
    v90 = v22;
    v88 = v23;
    (v23)(v19);
    v24 = v2;
    v25 = v0;
    v26 = v11;
    v27 = sub_1E41FFC94();
    v28 = sub_1E4206814();

    v29 = os_log_type_enabled(v27, v28);
    v98 = v25;
    v99 = v24;
    v92 = v13;
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_49_0();
      v93 = v20;
      v31 = v30;
      v32 = OUTLINED_FUNCTION_160();
      v94 = v2;
      v33 = v32;
      v34 = OUTLINED_FUNCTION_100();
      v87 = v26;
      v35 = v34;
      v101 = v34;
      *v31 = 136446466;
      v36 = sub_1E40C50E8();
      OUTLINED_FUNCTION_49_1(v36, v37);
      OUTLINED_FUNCTION_122();
      v25 = v98;

      *(v31 + 4) = v13;
      *(v31 + 12) = 2112;
      *(v31 + 14) = v25;
      *v33 = v25;
      v38 = v25;
      OUTLINED_FUNCTION_347(&dword_1E323F000, v27, v28, "%{public}sstarting to process present document data source: %@");
      sub_1E325F6F0(v33, &unk_1ECF28E30, &qword_1E429E820);
      v2 = v94;
      OUTLINED_FUNCTION_6_0();
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_13_4();
      v20 = v93;
      OUTLINED_FUNCTION_6_0();

      v39 = *(v13 + 8);
      v40 = v87;
      v39(v19, v87);
    }

    else
    {

      v39 = *(v13 + 8);
      v41 = OUTLINED_FUNCTION_11_6();
      (v39)(v41);
      v40 = v26;
    }

    v42 = [v25 uiConfiguration];
    v43 = sub_1E40CCA64(v42);

    type metadata accessor for RoutingTransaction();
    OUTLINED_FUNCTION_58_41();
    v44 = swift_allocObject();
    sub_1E40C42B0();
    *(v44 + 66) = v95 & 1;
    swift_unknownObjectWeakAssign();
    v45 = v97;
    *(v44 + 72) = v6;
    *(v44 + 80) = v45;
    sub_1E34AF604(v6, v45);
    v46 = OUTLINED_FUNCTION_32_0();
    sub_1E34AF594(v46, v47);
    v48 = *&v20[v2];
    if (v48)
    {
      v49 = *(v48 + 104);
      v50 = *(v48 + 120);
      v51 = *(v48 + 136);
    }

    else
    {
      v49 = 0uLL;
      v51 = 1;
      v50 = 0uLL;
    }

    v52 = v99;
    *(v44 + 104) = v49;
    *(v44 + 120) = v50;
    *(v44 + 136) = v51;
    *(v44 + 96) = 1;
    if (*&v52[OBJC_IVAR____TtC8VideosUI6Router_presentingRoute])
    {
      v53 = *&v52[OBJC_IVAR____TtC8VideosUI6Router_presentingRoute];
      if (v43 != 5 || (v53 = *&v52[OBJC_IVAR____TtC8VideosUI6Router_presentingRoute], (v51 & 1) != 0))
      {
LABEL_20:
        v55 = *(v44 + 56);
        *(v44 + 16) = v53;
        *(v44 + 24) = v43;
        *(v44 + 32) = 0u;
        *(v44 + 48) = 0u;
        v56 = *(v44 + 64);
        v57 = 3;
        goto LABEL_21;
      }
    }

    else
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();

      v53 = sub_1E37D027C(v54);

      if (!v53)
      {
        v99 = v43;
        v93 = v20;
        v94 = v2;
        v58 = v91;
        v88(v91, v89, v40);
        v59 = v52;
        v60 = v58;
        v61 = sub_1E41FFC94();
        v62 = sub_1E4206814();

        if (os_log_type_enabled(v61, v62))
        {
          OUTLINED_FUNCTION_6_21();
          v63 = OUTLINED_FUNCTION_10_11();
          v100 = v63;
          *v20 = 136446210;
          v60 = v59;
          v64 = sub_1E40C50E8();
          OUTLINED_FUNCTION_38_8(v64, v65);
          v97 = v59;
          OUTLINED_FUNCTION_14_52();
          *(v20 + 4) = v40;
          OUTLINED_FUNCTION_137_10(&dword_1E323F000, v61, v62, "%{public}sno current route for handling presentView transaction.");
          __swift_destroy_boxed_opaque_existential_1(v63);
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_55();

          v66 = OUTLINED_FUNCTION_123_0();
          v59 = v97;
        }

        else
        {

          v66 = v58;
          v67 = v40;
        }

        v39(v66, v67);
        OUTLINED_FUNCTION_4_0();
        v73 = swift_allocObject();
        OUTLINED_FUNCTION_105_2(v73);
        swift_weakInit();
        OUTLINED_FUNCTION_4_0();
        v74 = swift_allocObject();
        OUTLINED_FUNCTION_45_38(v74);
        swift_unknownObjectWeakInit();
        OUTLINED_FUNCTION_89();
        v75 = swift_allocObject();
        v75[2] = v62;
        v75[3] = v60;
        v76 = v98;
        v75[4] = v99;
        v75[5] = v59;
        v75[6] = v76;
        v99 = *(v44 + 16);
        *(v44 + 16) = sub_1E40D61C4;
        *(v44 + 24) = v75;
        *(v44 + 32) = 0u;
        *(v44 + 48) = 0u;
        v77 = *(v44 + 64);
        *(v44 + 64) = 1;
        v78 = v59;
        v79 = v76;

        OUTLINED_FUNCTION_42_72();
        sub_1E40D60A0(v80, v81, v82, v83, v84, v85, v77);

        *&v93[v94] = v44;
        goto LABEL_22;
      }

      if (v43 != 5 || (*(v44 + 136) & 1) != 0)
      {
        goto LABEL_20;
      }
    }

    v55 = *(v44 + 56);
    *(v44 + 16) = v53;
    *(v44 + 24) = *(v44 + 104);
    *(v44 + 40) = *(v44 + 120);
    *(v44 + 56) = 0;
    v56 = *(v44 + 64);
    v57 = 5;
LABEL_21:
    *(v44 + 64) = v57;

    OUTLINED_FUNCTION_67_31();
    sub_1E40D60A0(v68, v69, v70, v71, v72, v55, v56);
    sub_1E40CBE10();

LABEL_22:

    goto LABEL_23;
  }

  if (v6)
  {
    v6(v17);
  }

LABEL_23:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40CCA64(void *a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 5;
  }

  result = [a1 type];
  if (result != 2)
  {
    [a1 type];
    return 4;
  }

  return result;
}

void sub_1E40CCAD0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_187_4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v11 = swift_weakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v39 = v4;
      sub_1E324FBDC();
      OUTLINED_FUNCTION_131_0();
      v13(v8);
      v14 = v10;
      v15 = sub_1E41FFC94();
      v16 = sub_1E4206814();

      v40 = v14;
      v41 = v0;
      if (os_log_type_enabled(v15, v16))
      {
        v17 = OUTLINED_FUNCTION_49_0();
        v42 = OUTLINED_FUNCTION_100();
        *v17 = 136446466;
        v18 = sub_1E40C50E8();
        OUTLINED_FUNCTION_97_4(v18, v19);
        OUTLINED_FUNCTION_112();

        *(v17 + 4) = v2;
        *(v17 + 12) = 2048;
        v20 = v39;
        *(v17 + 14) = v39;
        _os_log_impl(&dword_1E323F000, v15, v16, "%{public}scontinue waitingForRootView context with present %ld context", v17, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v42);
        OUTLINED_FUNCTION_21_0();
        OUTLINED_FUNCTION_51_2();

        v21 = OUTLINED_FUNCTION_99_0();
        v22(v21);
      }

      else
      {

        v23 = OUTLINED_FUNCTION_99_0();
        v24(v23);
        v20 = v39;
      }

      if (v20 == 5)
      {
        v25 = *(v12 + 48);
        v26 = *(v12 + 56);
        if (*(v12 + 136))
        {
          OUTLINED_FUNCTION_158_9(5);
          v27 = *(v12 + 64);
          v28 = 3;
        }

        else
        {
          *(v12 + 16) = v41;
          *(v12 + 24) = *(v12 + 104);
          *(v12 + 40) = *(v12 + 120);
          *(v12 + 56) = 0;
          v27 = *(v12 + 64);
          v28 = 5;
        }

        *(v12 + 64) = v28;

        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_96_2();
        v36 = v25;
        v37 = v26;
        v38 = v27;
      }

      else
      {
        v29 = *(v12 + 48);
        v30 = *(v12 + 56);
        OUTLINED_FUNCTION_158_9(v20);
        v31 = *(v12 + 64);
        *(v12 + 64) = 3;

        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_96_2();
        v36 = v29;
        v37 = v30;
        v38 = v31;
      }

      sub_1E40D60A0(v32, v33, v34, v35, v36, v37, v38);
      sub_1E40CBE10();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CCDAC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v28 = v4;
  v27 = v5;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_12_7();
  v10(v1);
  v11 = v0;
  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();

  v14 = &OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_stateChangeObserver;
  if (os_log_type_enabled(v12, v13))
  {
    v26 = v3;
    v15 = OUTLINED_FUNCTION_49_0();
    v30 = OUTLINED_FUNCTION_72_0();
    *v15 = 136446466;
    v16 = sub_1E40C50E8();
    OUTLINED_FUNCTION_58_0(v16, v17);
    OUTLINED_FUNCTION_12_1();

    *(v15 + 4) = 0x1EE28C000;
    *(v15 + 12) = 2080;
    v18 = *&v11[OBJC_IVAR____TtC8VideosUI6Router_presentingRoute];
    if (v18)
    {
      v19 = type metadata accessor for Route(0);
    }

    else
    {
      v19 = 0;
      v29[1] = 0;
      v29[2] = 0;
    }

    v29[0] = v18;
    v29[3] = v19;

    v21 = sub_1E3294FA4(v29);
    sub_1E3270FC8(v21, v22, &v30);
    OUTLINED_FUNCTION_50();

    *(v15 + 14) = v18;
    _os_log_impl(&dword_1E323F000, v12, v13, "%{public}sdismissing currently presented route: %s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_79();

    v20 = (*(v8 + 8))(v1, v6);
    v3 = v26;
    v14 = &OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_stateChangeObserver;
  }

  else
  {

    v20 = (*(v8 + 8))(v1, v6);
  }

  v23 = v14[405];
  if (*&v11[v23])
  {
    OUTLINED_FUNCTION_8();
    v25 = *(v24 + 1032);

    v25(v27 & 1, v28, v3);

    *&v11[v23] = 0;
  }

  else if (v28)
  {
    v28(v20);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CD034()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v75 = v5;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v68 = (v10 - v11);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68 - v16;
  v18 = sub_1E324FBDC();
  v76 = v8;
  v19 = *(v8 + 16);
  v71 = v18;
  v72 = v19;
  (v19)(v17);
  v20 = v0;

  v21 = sub_1E41FFC94();
  v22 = sub_1E4206814();

  v23 = os_log_type_enabled(v21, v22);
  v69 = v2;
  v70 = v14;
  v73 = v8 + 16;
  v74 = v20;
  if (v23)
  {
    v24 = OUTLINED_FUNCTION_49_0();
    v79 = OUTLINED_FUNCTION_72_0();
    *v24 = 136446466;
    v25 = sub_1E40C50E8();
    OUTLINED_FUNCTION_49_1(v25, v26);
    OUTLINED_FUNCTION_34_3();
    *(v24 + 4) = v6;
    v28 = v75;
    v27 = v76;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_1E3270FC8(v28, v4, &v79);
    _os_log_impl(&dword_1E323F000, v21, v22, "%{public}swill dismiss view with id: %s", v24, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_65_0();

    v29 = *(v27 + 8);
    v29(v17, v6);
    v30 = v28;
  }

  else
  {

    v29 = *(v76 + 8);
    v29(v17, v6);
    v30 = v75;
  }

  v31 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v31 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    v32 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
    v33 = v74;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (sub_1E32AE9B0(*&v33[v32]) >= 2)
    {
      v75 = v29;
      v34 = v33;
      v35 = *&v33[v32];
      v36 = sub_1E32AE9B0(v35);

      for (i = 0; v36 != i; ++i)
      {
        if ((v35 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x1E6911E60](i, v35);
        }

        else
        {
          if (i >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v38 = *(v35 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        v39 = *(v38 + 16) == v30 && *(v38 + 24) == v4;
        if (v39 || (sub_1E42079A4() & 1) != 0)
        {

          v40 = v70;
          v72(v70, v71, v6);
          v41 = v34;

          v42 = sub_1E41FFC94();
          sub_1E4206814();

          if (OUTLINED_FUNCTION_165_5())
          {
            v43 = v6;
            v44 = OUTLINED_FUNCTION_49_0();
            v78 = OUTLINED_FUNCTION_72_0();
            *v44 = 136446466;
            v45 = sub_1E40C50E8();
            sub_1E3270FC8(v45, v46, &v78);
            OUTLINED_FUNCTION_50();

            *(v44 + 4) = v41;
            *(v44 + 12) = 2080;
            v77 = v38;
            type metadata accessor for Route(0);
            OUTLINED_FUNCTION_0_342();
            sub_1E3274C5C(v47, v48, &unk_1E42DFCB8);
            v49 = sub_1E4207944();
            sub_1E3270FC8(v49, v50, &v78);
            OUTLINED_FUNCTION_50();

            *(v44 + 14) = &v77;
            OUTLINED_FUNCTION_62_2();
            _os_log_impl(v51, v52, v53, v54, v55, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_43_71();
            OUTLINED_FUNCTION_79();

            OUTLINED_FUNCTION_155_6();
            v56 = v70;
            v57 = v43;
          }

          else
          {

            OUTLINED_FUNCTION_155_6();
            v56 = v40;
            v57 = v6;
          }

          v75(v56, v57);
          v65 = OBJC_IVAR____TtC8VideosUI6Router_presentingRoute;
          if (*&v41[OBJC_IVAR____TtC8VideosUI6Router_presentingRoute])
          {
            OUTLINED_FUNCTION_8();
            v67 = *(v66 + 1032);

            OUTLINED_FUNCTION_169();
            v67();
          }

          *&v41[v65] = 0;

          goto LABEL_30;
        }
      }

      v58 = v68;
      v72(v68, v71, v6);
      v59 = v34;

      v60 = sub_1E41FFC94();
      v61 = sub_1E4206814();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = OUTLINED_FUNCTION_49_0();
        v78 = OUTLINED_FUNCTION_72_0();
        *v62 = 136446466;
        v63 = sub_1E40C50E8();
        OUTLINED_FUNCTION_38_8(v63, v64);
        OUTLINED_FUNCTION_6_19();

        *(v62 + 4) = v59;
        *(v62 + 12) = 2080;
        *(v62 + 14) = sub_1E3270FC8(v30, v4, &v78);
        _os_log_impl(&dword_1E323F000, v60, v61, "%{public}sno route exists with id: %s", v62, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_13_4();
        OUTLINED_FUNCTION_65_0();
      }

      OUTLINED_FUNCTION_155_6();
      v75(v58, v6);
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CD678()
{
  OUTLINED_FUNCTION_31_1();
  v65 = v3;
  v68 = v4;
  v70 = v5;
  v7 = v6;
  v64 = v8;
  v10 = v9;
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v63 = v15 - v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_34_1();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_6_30();
  v62 = v18;
  v61 = v19;
  (v19)(v1);
  v20 = v0;
  v21 = v10;
  v22 = sub_1E41FFC94();
  v23 = sub_1E4206814();

  if (os_log_type_enabled(v22, v23))
  {
    v60 = v7;
    v24 = swift_slowAlloc();
    OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_10_11();
    *v24 = 136446722;
    v25 = sub_1E40C50E8();
    OUTLINED_FUNCTION_49_1(v25, v26);
    OUTLINED_FUNCTION_40_18();
    *(v24 + 4) = v2;
    *(v24 + 12) = 2112;
    *(v24 + 14) = v21;
    *v20 = v21;
    *(v24 + 22) = 1024;
    *(v24 + 24) = v70 & 1;
    v27 = v21;
    _os_log_impl(&dword_1E323F000, v22, v23, "%{public}swill present view controller: %@ animated: %{BOOL}d", v24, 0x1Cu);
    sub_1E325F6F0(v20, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_41_70();
    v7 = v60;
    OUTLINED_FUNCTION_6_0();
  }

  v28 = *(v13 + 8);
  v28(v1, v11);
  type metadata accessor for RoutingTransaction();
  OUTLINED_FUNCTION_58_41();
  v29 = swift_allocObject();
  sub_1E40C42B0();
  *(v29 + 96) = v64 & 1;
  *(v29 + 66) = v70 & 1;
  *(v29 + 72) = v65;
  *(v29 + 80) = v68;
  sub_1E34AF604(v65, v68);
  v30 = OUTLINED_FUNCTION_63_0();
  sub_1E34AF594(v30, v31);
  v32 = OBJC_IVAR____TtC8VideosUI6Router_currentTransaction;
  v33 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v20);
  if (v33)
  {
    v34 = *(v33 + 104);
    v35 = *(v33 + 120);
    v36 = *(v33 + 136);
  }

  else
  {
    v34 = 0uLL;
    v36 = 1;
    v35 = 0uLL;
  }

  *(v29 + 104) = v34;
  *(v29 + 120) = v35;
  *(v29 + 136) = v36;
  v37 = *(v20 + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute);
  if (v37)
  {
    goto LABEL_9;
  }

  v71 = v21;
  v37 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  sub_1E37D027C(v38);
  OUTLINED_FUNCTION_38();

  if (v37)
  {

LABEL_9:
    swift_retain_n();

    sub_1E40CDBD0(v29, v37, v7, v21);

    goto LABEL_10;
  }

  v39 = v63;
  v61(v63, v62, v11);
  v69 = v20;
  v40 = v20;
  v41 = sub_1E41FFC94();
  v42 = sub_1E4206814();

  if (os_log_type_enabled(v41, v42))
  {
    v66 = v40;
    v43 = OUTLINED_FUNCTION_6_21();
    v73 = OUTLINED_FUNCTION_100();
    *v43 = 136446210;
    v39 = v66;
    v44 = sub_1E40C50E8();
    OUTLINED_FUNCTION_38_8(v44, v45);
    OUTLINED_FUNCTION_34_3();
    *(v43 + 4) = v7;
    _os_log_impl(&dword_1E323F000, v41, v42, "%{public}sno current route for handling presentViewController transaction.", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v73);
    OUTLINED_FUNCTION_13_4();
    v40 = v66;
    OUTLINED_FUNCTION_6_0();

    v47 = v11;
    v46 = v63;
  }

  else
  {

    v46 = OUTLINED_FUNCTION_16_0();
  }

  v28(v46, v47);
  v48 = v71;
  OUTLINED_FUNCTION_4_0();
  v49 = swift_allocObject();
  OUTLINED_FUNCTION_105_2(v49);
  swift_weakInit();
  OUTLINED_FUNCTION_4_0();
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_89();
  v51 = swift_allocObject();
  v51[2] = v50;
  v51[3] = v39;
  v51[4] = v7;
  v51[5] = v71;
  v51[6] = v40;
  v52 = *(v29 + 24);
  v72 = *(v29 + 16);
  v53 = *(v29 + 32);
  v54 = *(v29 + 40);
  v55 = *(v29 + 48);
  v67 = *(v29 + 56);
  *(v29 + 16) = sub_1E40D61DC;
  *(v29 + 24) = v51;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0u;
  v56 = v40;
  v57 = *(v29 + 64);
  *(v29 + 64) = 1;
  v58 = v56;
  v59 = v48;

  sub_1E40D60A0(v72, v52, v53, v54, v55, v67, v57);

  *&v32[v69] = v29;
LABEL_10:

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CDBD0(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  if (a3 == 5)
  {
    if ((*(a1 + 136) & 1) == 0)
    {
      v14 = *(a1 + 120);
      v16 = *(a1 + 128);
      v10 = *(a1 + 104);
      v12 = *(a1 + 112);
      goto LABEL_8;
    }

    v7 = [a4 popoverPresentationController];
    if (v7)
    {
      v8 = v7;
      [v7 sourceRect];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

LABEL_8:
      *(a1 + 16) = a2;
      *(a1 + 24) = v10;
      *(a1 + 32) = v12;
      *(a1 + 40) = v14;
      *(a1 + 48) = v16;
      *(a1 + 56) = a4;
      v27 = *(a1 + 64);
      *(a1 + 64) = 5;

      v28 = a4;
      OUTLINED_FUNCTION_42_72();
      v26 = v27;
      goto LABEL_9;
    }

    v17 = *(a1 + 56);
    *(a1 + 16) = a2;
    *(a1 + 24) = 5;
  }

  else
  {
    v17 = *(a1 + 56);
    *(a1 + 16) = a2;
    *(a1 + 24) = a3;
  }

  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v18 = *(a1 + 64);
  *(a1 + 64) = 4;

  v19 = a4;
  OUTLINED_FUNCTION_67_31();
  v25 = v17;
  v26 = v18;
LABEL_9:
  sub_1E40D60A0(v20, v21, v22, v23, v24, v25, v26);
  sub_1E40CBE10();
}

void sub_1E40CDD44()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_4_32();
      v9(v0);
      v10 = v8;
      v11 = sub_1E41FFC94();
      v12 = sub_1E4206814();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = OUTLINED_FUNCTION_49_0();
        v22 = OUTLINED_FUNCTION_100();
        *v13 = 136446466;
        v14 = sub_1E40C50E8();
        OUTLINED_FUNCTION_97_4(v14, v15);
        OUTLINED_FUNCTION_112();

        *(v13 + 4) = v2;
        *(v13 + 12) = 2048;
        *(v13 + 14) = v4;
        _os_log_impl(&dword_1E323F000, v11, v12, "%{public}s continue waitingForRootView context with presentViewController %ld context", v13, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v22);
        OUTLINED_FUNCTION_43_71();
        OUTLINED_FUNCTION_6_0();
      }

      v16 = OUTLINED_FUNCTION_161_6();
      v17(v16, v5);
      OUTLINED_FUNCTION_168_5();
      sub_1E40CDBD0(v18, v19, v20, v21);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CDF78()
{
  OUTLINED_FUNCTION_31_1();
  v6 = v5;
  v110 = v7;
  v111 = v8;
  OUTLINED_FUNCTION_187_4();
  OUTLINED_FUNCTION_0_10();
  v112 = v10;
  v113 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v107 = (v11 - v12);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v103 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  v108 = &v103 - v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v103 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v20);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_73_5();
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_34_1();
  v26 = v1;
  v28 = v27;
  sub_1E379D7E4(v26, v4, &unk_1ECF363C0, &unk_1E42A9420);
  if (__swift_getEnumTagSinglePayload(v4, 1, v28) == 1)
  {
    LODWORD(v108) = v6;
    sub_1E325F6F0(v4, &unk_1ECF363C0, &unk_1E42A9420);
    v29 = v111;
    if (v111)
    {
      v30 = sub_1E324FBDC();
      v32 = v112;
      v31 = v113;
      v33 = v109;
      v104 = *(v112 + 2);
      v105 = v30;
      v104(v109);
      v34 = v0;

      v35 = sub_1E41FFC94();
      v36 = sub_1E4206814();

      v37 = os_log_type_enabled(v35, v36);
      v106 = v34;
      if (v37)
      {
        v38 = v29;
        v39 = OUTLINED_FUNCTION_49_0();
        v114 = OUTLINED_FUNCTION_72_0();
        *v39 = 136446466;
        v40 = sub_1E40C50E8();
        OUTLINED_FUNCTION_58_0(v40, v41);
        OUTLINED_FUNCTION_14_52();
        *(v39 + 4) = v34;
        *(v39 + 12) = 2080;
        *(v39 + 14) = sub_1E3270FC8(v110, v38, &v114);
        OUTLINED_FUNCTION_347(&dword_1E323F000, v35, v36, "%{public}swill present AMS WebUI with ams key: [%s]");
        swift_arrayDestroy();
        v31 = v113;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      v42 = *(v32 + 1);
      v42(v33, v31);
      v43 = v108;
      v70 = sub_1E4205ED4();
      if ((v43 & 1) == 0)
      {
        OUTLINED_FUNCTION_4_0();
        v76 = swift_allocObject();
        v77 = v106;
        *(v76 + 16) = v106;
        v78 = v77;
        sub_1E40CEED0();

        goto LABEL_16;
      }

      if ([objc_opt_self() vui_defaultBag])
      {
        OUTLINED_FUNCTION_9_5();
        sub_1E41FE9C4();
        v71 = sub_1E41FE9B4();
        v72 = [objc_allocWithZone(MEMORY[0x1E698CD40]) initWithBag:v33 account:v71 clientInfo:0];
        if (v72)
        {
          v73 = [v33 URLForKey_];
          v74 = [v72 loadBagValue_];

          v31 = v113;
        }

        if (v72)
        {
          OUTLINED_FUNCTION_21();
          OUTLINED_FUNCTION_16_157();
          v75();

LABEL_16:
          goto LABEL_29;
        }
      }

      v94 = v107;
      (v104)(v107, v105, v31);
      v95 = v31;
      v96 = v106;
      v97 = sub_1E41FFC94();
      v98 = sub_1E42067F4();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = OUTLINED_FUNCTION_6_21();
        v100 = OUTLINED_FUNCTION_100();
        v114 = v100;
        *v99 = 136446210;
        v101 = sub_1E40C50E8();
        OUTLINED_FUNCTION_58_0(v101, v102);
        OUTLINED_FUNCTION_6_19();

        *(v99 + 4) = v96;
        _os_log_impl(&dword_1E323F000, v97, v98, "%{public}sfailed to create AMS WebUI View Controller", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v100);
        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_7_9();
      }

      v42(v94, v95);
    }
  }

  else
  {
    (*(v23 + 32))(v3, v4, v28);
    if (v6)
    {
      sub_1E324FBDC();
      v45 = v112;
      v44 = v113;
      OUTLINED_FUNCTION_146_2();
      v46 = v19;
      v107 = v47;
      v109 = v48;
      v104 = v49;
      v49(v19);
      v50 = *(v23 + 16);
      v111 = v3;
      v50(v2, v3, v28);
      v51 = v0;
      v52 = sub_1E41FFC94();
      v53 = sub_1E4206814();

      v54 = os_log_type_enabled(v52, v53);
      v105 = v28;
      v106 = v23;
      v110 = v51;
      if (v54)
      {
        v55 = OUTLINED_FUNCTION_49_0();
        v114 = OUTLINED_FUNCTION_72_0();
        *v55 = 136446466;
        v56 = sub_1E40C50E8();
        OUTLINED_FUNCTION_58_0(v56, v57);
        OUTLINED_FUNCTION_122();

        *(v55 + 4) = v44;
        *(v55 + 12) = 2080;
        sub_1E3274C5C(&qword_1EE28A470, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v58 = sub_1E4207944();
        v59 = *(v23 + 8);
        v59(v2, v28);
        v60 = OUTLINED_FUNCTION_32_7();
        sub_1E3270FC8(v60, v61, v62);
        OUTLINED_FUNCTION_16_5();

        *(v55 + 14) = v58;
        _os_log_impl(&dword_1E323F000, v52, v53, "%{public}swill present AMS WebUI with url: [%s]", v55, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_21_0();
        v63 = v112;
        OUTLINED_FUNCTION_6_0();

        v64 = *(v63 + 1);
        v64(v46, v113);
      }

      else
      {

        v59 = *(v23 + 8);
        v59(v2, v28);
        v64 = *(v45 + 1);
        v64(v46, v44);
      }

      v79 = [objc_opt_self() vui_defaultBag];
      v80 = v108;
      if (!v79)
      {
        goto LABEL_23;
      }

      v81 = v79;
      sub_1E41FE9C4();
      v82 = sub_1E41FE9B4();
      v83 = [objc_allocWithZone(MEMORY[0x1E698CD40]) initWithBag:v81 account:v82 clientInfo:0];
      if (v83)
      {
        v84 = sub_1E41FE364();
        v85 = [v83 loadURL_];
      }

      if (v83)
      {
        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_16_157();
        v86();

        v59(v111, v105);
      }

      else
      {
LABEL_23:
        v112 = v59;
        v87 = v113;
        (v104)(v80, v107, v113);
        v88 = v110;
        v89 = sub_1E41FFC94();
        v90 = sub_1E42067F4();

        if (os_log_type_enabled(v89, v90))
        {
          v91 = OUTLINED_FUNCTION_6_21();
          v114 = OUTLINED_FUNCTION_100();
          *v91 = 136446210;
          v92 = sub_1E40C50E8();
          OUTLINED_FUNCTION_58_0(v92, v93);
          OUTLINED_FUNCTION_176_0();
          *(v91 + 4) = v88;
          _os_log_impl(&dword_1E323F000, v89, v90, "%{public}sfailed to create AMS WebUI View Controller", v91, 0xCu);
          OUTLINED_FUNCTION_41_70();
          OUTLINED_FUNCTION_21_0();
        }

        v64(v80, v87);
        v112(v111, v105);
      }
    }

    else
    {
      sub_1E40CE9B8();
      v66 = v65;
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_16_157();
      v67();

      v68 = OUTLINED_FUNCTION_147_7();
      v69(v68, v28);
    }
  }

LABEL_29:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CE9B8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_34();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_35_3();
  sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_24_4();
  v7(v8);
  OUTLINED_FUNCTION_177_5();
  v9 = objc_allocWithZone(MEMORY[0x1E697BA60]);
  v10 = OUTLINED_FUNCTION_16_5();
  v11 = sub_1E40D53C8(v10);
  v12 = *sub_1E3286BF0();
  v13 = OUTLINED_FUNCTION_24_4();
  v7(v13);
  OUTLINED_FUNCTION_177_5();
  v14 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x260);
  v15 = v12;
  v16 = OUTLINED_FUNCTION_16_5();
  v17 = v14(v16);

  v18 = OUTLINED_FUNCTION_39_3();
  sub_1E325F6F0(v18, v19, &unk_1E42A9420);
  if (v17)
  {
    [v11 setDelegate_];
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CEB24()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_63_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v44 = v11 - v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_88_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23_8();
  v15 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_6_30();
  v19 = OUTLINED_FUNCTION_167_6();
  v20(v19);
  sub_1E379D7E4(v6, v1, &unk_1ECF363C0, &unk_1E42A9420);
  v21 = v4;
  v22 = sub_1E41FFC94();
  LOBYTE(v4) = sub_1E4206814();

  if (os_log_type_enabled(v22, v4))
  {
    v43 = v6;
    v23 = OUTLINED_FUNCTION_49_0();
    v47 = OUTLINED_FUNCTION_72_0();
    *v23 = 136446466;
    v24 = sub_1E40C50E8();
    OUTLINED_FUNCTION_58_0(v24, v25);
    OUTLINED_FUNCTION_11_5();

    OUTLINED_FUNCTION_118_12();
    sub_1E379D7E4(v1, v2, &unk_1ECF363C0, &unk_1E42A9420);
    v26 = sub_1E41FE414();
    if (__swift_getEnumTagSinglePayload(v2, 1, v26) == 1)
    {
      sub_1E325F6F0(v2, &unk_1ECF363C0, &unk_1E42A9420);
      v45 = 0u;
      v46 = 0u;
    }

    else
    {
      *(&v46 + 1) = v26;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v45);
      (*(*(v26 - 8) + 32))(boxed_opaque_existential_1, v2, v26);
    }

    v30 = sub_1E3294FA4(&v45);
    sub_1E325F6F0(v1, &unk_1ECF363C0, &unk_1E42A9420);
    v31 = OUTLINED_FUNCTION_57();
    sub_1E3270FC8(v31, v32, v33);
    OUTLINED_FUNCTION_38();

    *(v23 + 14) = v30;
    OUTLINED_FUNCTION_124_9();
    _os_log_impl(v34, v35, v36, v37, v38, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_43_71();

    (*(v17 + 8))(v0, v15);
    v6 = v43;
  }

  else
  {

    sub_1E325F6F0(v1, &unk_1ECF363C0, &unk_1E42A9420);
    v27 = OUTLINED_FUNCTION_8_6();
    v28(v27);
  }

  sub_1E379D7E4(v6, v44, &unk_1ECF363C0, &unk_1E42A9420);
  v39 = objc_allocWithZone(MEMORY[0x1E697BA60]);
  v40 = OUTLINED_FUNCTION_50();
  v41 = sub_1E40D53C8(v40);
  OUTLINED_FUNCTION_16_157();
  v42();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CEED0()
{
  OUTLINED_FUNCTION_31_1();
  v27 = v3;
  OUTLINED_FUNCTION_123_2();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_9();
  v28 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v8 = sub_1E4203FD4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  (*(v10 + 104))(v2, *MEMORY[0x1E69E7F98], v8);
  v12 = sub_1E4206A54();
  v13 = OUTLINED_FUNCTION_123_0();
  v14(v13);
  OUTLINED_FUNCTION_5_10();
  v15 = swift_allocObject();
  v15[2] = v1;
  v15[3] = sub_1E40D620C;
  v15[4] = v27;
  v29[4] = sub_1E40D6CBC;
  v29[5] = v15;
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_48_2(COERCE_DOUBLE(1107296256));
  v29[2] = v16;
  v29[3] = &block_descriptor_173;
  v17 = _Block_copy(v29);
  v18 = v1;

  sub_1E4203FE4();
  OUTLINED_FUNCTION_4_267();
  sub_1E3274C5C(v19, v20, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v21, v22, &qword_1E429B000, v23);
  OUTLINED_FUNCTION_142_1();
  sub_1E42072E4();
  v24 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v24);
  _Block_release(v17);

  v25 = OUTLINED_FUNCTION_16_80();
  v26(v25);
  (*(v6 + 8))(v0, v28);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CF1D0()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_9();
  v9 = &qword_1ECF3F000;
  v11 = (v4 & 1) == 0 || (v10 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v0)) == 0 || *(v10 + 64) != 1;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_146_2();
  v12(v1);
  v13 = v0;
  v14 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_34_9())
  {
    swift_slowAlloc();
    v15 = OUTLINED_FUNCTION_10_11();
    OUTLINED_FUNCTION_153_7(v15);
    LODWORD(qword_1ECF3F000) = 136315394;
    v16 = sub_1E40C50E8();
    OUTLINED_FUNCTION_49_1(v16, v17);
    OUTLINED_FUNCTION_34_3();
    *(&qword_1ECF3F000 + 4) = v11;
    WORD2(qword_1ECF3F008) = 1024;
    *(&qword_1ECF3F008 + 6) = v11;
    OUTLINED_FUNCTION_60_3();
    _os_log_impl(v18, v19, v20, v21, v22, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_7_7();
    v9 = &qword_1ECF3F000;
    OUTLINED_FUNCTION_6_0();

    (*(v7 + 8))(v1, v5);
  }

  else
  {

    v23 = OUTLINED_FUNCTION_74();
    v25(v23, v24);
  }

  if (v11)
  {
    *&v13[v9[313]] = 0;
  }

  v26 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v27 = *&v13[v26];
  if (v27 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E4207384())
  {

    while (!__OFSUB__(i--, 1))
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v30 = OUTLINED_FUNCTION_74();
        MEMORY[0x1E6911E60](v30);
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_23;
        }

        if (i >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }
      }

      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_169();
      v31();

      if (!i)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_21:
  OUTLINED_FUNCTION_11_3(&v13[v26], &v32);
  sub_1E40CF4B0(0);
  swift_endAccess();
  *&v13[OBJC_IVAR____TtC8VideosUI6Router_presentingRoute] = 0;

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CF4B0(char a1)
{
  v2 = *v1;
  if (a1)
  {
    if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0 || (isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(), v2 = *v1, (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0))
    {
      v10 = sub_1E40D56F4(v2);
      v11 = sub_1E37FEA14(0, v10);

      *v1 = v11;
    }

    else
    {
      v4 = sub_1E32AE9B0(*v1);
      if (v4 < 0)
      {
        __break(1u);
      }

      else
      {
        sub_1E40D5768(0, v4, sub_1E40D5810, v5, v6, v7, v8, v9, v12);
      }
    }
  }

  else
  {

    *v1 = MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1E40CF5A4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Router(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

uint64_t sub_1E40CF5E4@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_21();
  result = (*(v2 + 176))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1E40CF63C()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_4_32();
  v3 = OUTLINED_FUNCTION_33_14();
  v4(v3);
  v5 = v0;
  v6 = sub_1E41FFC94();
  v7 = sub_1E4206814();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_6_21();
    v9 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_153_7(v9);
    *v8 = 136446210;
    v10 = sub_1E40C50E8();
    OUTLINED_FUNCTION_49_1(v10, v11);
    OUTLINED_FUNCTION_176_0();
    *(v8 + 4) = v5;
    OUTLINED_FUNCTION_62_19(&dword_1E323F000, v12, v13, "%{public}sSKAccountPageViewController finished.");
    __swift_destroy_boxed_opaque_existential_1(v1);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_21_0();
  }

  v14 = OUTLINED_FUNCTION_13_8();
  v15(v14);
  sub_1E3286BF0();
  OUTLINED_FUNCTION_88_0();
  v17 = *(v16 + 280);
  v19 = v18;
  v17(1);

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (qword_1EE2AA808)
  {
    OUTLINED_FUNCTION_88_0();
    v21 = *(v20 + 520);
    v23 = v22;
    OUTLINED_FUNCTION_169();
    v21();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CF898(uint64_t a1)
{
  if (a1 < 0)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 >> 62)
  {
    goto LABEL_21;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  if (v6 <= a1)
  {
    goto LABEL_9;
  }

  v7 = sub_1E32AE9B0(*(v2 + v4));
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    if (a1 + 1 != v7)
    {
      if (a1 + 1 < v7)
      {
        v16 = ~a1 + v7;
        v17 = a1 + 5;
        while (1)
        {
          v18 = v17 - 4;
          v19 = *(v2 + v4);
          if ((v19 & 0xC000000000000001) != 0)
          {

            v25 = OUTLINED_FUNCTION_32_7();
            MEMORY[0x1E6911E60](v25);
            OUTLINED_FUNCTION_16_5();
          }

          else
          {
            if ((v18 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_20:
              __break(1u);
LABEL_21:
              v6 = OUTLINED_FUNCTION_119_1();
              goto LABEL_4;
            }

            if (v18 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }
          }

          OUTLINED_FUNCTION_8();
          v20 = OUTLINED_FUNCTION_165();
          v21(v20);
          OUTLINED_FUNCTION_36();
          v22 = OUTLINED_FUNCTION_165();
          v23(v22);
          OUTLINED_FUNCTION_36();
          (*(v24 + 424))(0);

          ++v17;
          if (!--v16)
          {
            goto LABEL_7;
          }
        }
      }

      goto LABEL_24;
    }

LABEL_7:
    v8 = sub_1E32AE9B0(*(v2 + v4));
    if (v8 > a1)
    {
      v9 = v8;
      OUTLINED_FUNCTION_11_3(v2 + v4, v26);
      OUTLINED_FUNCTION_54_53();
      sub_1E40D5768(a1 + 1, v9, v10, v11, v12, v13, v14, v15, v26[0]);
      swift_endAccess();
LABEL_9:
      OUTLINED_FUNCTION_2_75();
      return;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_1E40CFA90()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_9_5();
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_12_7();
  v11(v2);
  v12 = v1;

  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();

  if (os_log_type_enabled(v13, v14))
  {
    v39 = v4;
    v15 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_72_0();
    *v15 = 136446466;
    v16 = sub_1E40C50E8();
    OUTLINED_FUNCTION_49_1(v16, v17);
    v40 = v6;
    OUTLINED_FUNCTION_112();

    *(v15 + 4) = v6;
    *(v15 + 12) = 2080;
    v18 = type metadata accessor for Route(0);
    OUTLINED_FUNCTION_0_342();
    sub_1E3274C5C(v19, v20, &unk_1E42DFCB8);
    v21 = sub_1E4207944();
    OUTLINED_FUNCTION_49_1(v21, v22);
    OUTLINED_FUNCTION_112();

    *(v15 + 14) = v18;
    v6 = v40;
    OUTLINED_FUNCTION_124_9();
    _os_log_impl(v23, v24, v25, v26, v27, 0x16u);
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_46_1();
    v4 = v39;
    OUTLINED_FUNCTION_6_0();
  }

  v29 = *(v9 + 8);
  v28 = v9 + 8;
  v29(v2, v7);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  sub_1E37D027C(v30);
  OUTLINED_FUNCTION_11_5();

  if (v28)
  {
    OUTLINED_FUNCTION_47_0();
    if ((*(v31 + 368))())
    {
      OUTLINED_FUNCTION_30();
      (*(v32 + 240))();
    }
  }

  OUTLINED_FUNCTION_111();
  (*(v33 + 976))(v6, v4 & 1);
  sub_1E40C5640(v0);
  OUTLINED_FUNCTION_4_0();
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_45_38(v34);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_4_0();
  v35 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_2_4();
  v36 = swift_allocObject();
  *(v36 + 16) = v28;
  *(v36 + 24) = v35;
  v37 = *(*v0 + 352);

  v37(sub_1E40D6D84, v36);

  (*(*v0 + 968))(v38, 0.8);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CFE68()
{
  OUTLINED_FUNCTION_31_1();
  v39 = v3;
  v40 = v4;
  v38 = v5;
  v41 = v6;
  v8 = v7;
  v10 = v9;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_2_26();
  v14(v2);
  v15 = v0;

  v16 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_34_9())
  {
    v37 = v8;
    v17 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_72_0();
    *v17 = 136446466;
    v18 = sub_1E40C50E8();
    OUTLINED_FUNCTION_58_0(v18, v19);
    OUTLINED_FUNCTION_112();

    *(v17 + 4) = v1;
    *(v17 + 12) = 2080;
    v20 = type metadata accessor for Route(0);
    OUTLINED_FUNCTION_0_342();
    sub_1E3274C5C(v21, v22, &unk_1E42DFCB8);
    v23 = sub_1E4207944();
    OUTLINED_FUNCTION_58_0(v23, v24);
    OUTLINED_FUNCTION_112();

    *(v17 + 14) = v20;
    OUTLINED_FUNCTION_60_3();
    _os_log_impl(v25, v26, v27, v28, v29, 0x16u);
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_46_1();
    v8 = v37;
    OUTLINED_FUNCTION_6_0();
  }

  v30 = OUTLINED_FUNCTION_123_0();
  v31(v30);
  OUTLINED_FUNCTION_4_0();
  v32 = swift_allocObject();
  OUTLINED_FUNCTION_101_15(v32);
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v12 + 8;
  *(v33 + 24) = v10;
  *(v33 + 32) = v38;
  *(v33 + 40) = v8;
  *(v33 + 48) = v41;
  *(v33 + 56) = v39 & 1;
  *(v33 + 57) = v40 & 1;
  v34 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x208);
  v35 = v41;

  v36 = v8;
  v34(0, sub_1E40D6DE4, v33);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40D0144()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v7 = v6;
  if (!v2)
  {

    v10 = 0;
    OUTLINED_FUNCTION_60_40();
    v19 = 0;
    v20 = 0;
    goto LABEL_10;
  }

  v8 = v3;
  v9 = v2;
  v10 = v1;

  v11 = v9;
  v12 = [v11 uiConfiguration];
  v13 = sub_1E40CCA64(v12);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    if ([v12 type] == 6 || objc_msgSend(v12, sel_type) == 8)
    {
    }

    else
    {
      v23 = [v12 type];

      if (v23 != 7)
      {

        v10 = 0;
        OUTLINED_FUNCTION_60_40();
        v20 = 0;
        v19 = 2;
        goto LABEL_10;
      }
    }

    v21 = v10;

    OUTLINED_FUNCTION_60_40();
    v20 = 0;
    v19 = 7;
LABEL_10:
    v14 = v5;
    goto LABEL_29;
  }

  if (*(v0 + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute))
  {
    v14 = *(v0 + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute);
    v15 = v14;
  }

  else
  {

    v14 = v5;
    v15 = v5;
  }

  v22 = *(*v15 + 1048);

  v22(v5);

  if (v13 == 5)
  {
    v20 = *(v8 + 32);
    if (v20)
    {
      v10 = 5;
    }

    else
    {
      v10 = *v8;
    }

    if (*(v8 + 32))
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v8 + 8);
    }

    if (*(v8 + 32))
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v8 + 16);
    }

    if (*(v8 + 32))
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v8 + 24);
    }

    if (*(v8 + 32))
    {
      v19 = 3;
    }

    else
    {
      v19 = 5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_60_40();
    v20 = 1;
    v10 = v13;
  }

LABEL_29:
  *v7 = v14;
  *(v7 + 8) = v10;
  *(v7 + 16) = v16;
  *(v7 + 24) = v17;
  *(v7 + 32) = v18;
  *(v7 + 40) = 0;
  *(v7 + 48) = v19;
  *(v7 + 49) = v20 & 1;
  OUTLINED_FUNCTION_25_2();
}

double sub_1E40D0360()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_123_2();
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  if ([v1 isAccountRequired] && (v13 = objc_opt_self(), (objc_msgSend(v13, sel_userHasActiveAccount) & 1) == 0) && objc_msgSend(v13, sel_allowsAccountModification))
  {
    OUTLINED_FUNCTION_4_0();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v1;
    v15[4] = v8;
    v15[5] = v10;
    v15[6] = v2;
    v15[7] = v6;
    v15[8] = v4;
    v47[4] = sub_1E40D6BEC;
    v47[5] = v15;
    OUTLINED_FUNCTION_12_0();
    v47[1] = 1107296256;
    v47[2] = sub_1E326FFE4;
    v47[3] = &block_descriptor_145;
    v16 = _Block_copy(v47);
    v17 = v10;
    v18 = v2;
    v19 = v1;

    v20 = OUTLINED_FUNCTION_78_0();
    sub_1E34AF604(v20, v21);

    [v13 requestAuthenticationAlwaysPrompt:1 withCompletionHandler:v16];
    _Block_release(v16);
    sub_1E324FBDC();
    v22 = OUTLINED_FUNCTION_33_14();
    v23(v22);
    v24 = v19;
    v25 = v18;
    v26 = sub_1E41FFC94();
    v27 = sub_1E4206814();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_49_0();
      v29 = OUTLINED_FUNCTION_160();
      v30 = OUTLINED_FUNCTION_100();
      v47[0] = v30;
      *v28 = 136446466;
      v31 = sub_1E40C50E8();
      OUTLINED_FUNCTION_14_64(v31, v32);
      OUTLINED_FUNCTION_40_18();
      *(v28 + 4) = v25;
      *(v28 + 12) = 2112;
      *(v28 + 14) = v24;
      *v29 = v24;
      v33 = v24;
      _os_log_impl(&dword_1E323F000, v26, v27, "%{public}sauthentication requested action: %@", v28, 0x16u);
      sub_1E325F6F0(v29, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_79();
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_21_0();
    }

    v34 = OUTLINED_FUNCTION_13_8();
    v35(v34);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_4_0();
    v37 = swift_allocObject();
    OUTLINED_FUNCTION_101_15(v37);
    swift_unknownObjectWeakInit();
    v38 = v10;
    v39 = v1;
    v40 = OUTLINED_FUNCTION_78_0();
    sub_1E34AF604(v40, v41);

    OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_96_2();
    sub_1E40D1D4C(v42, v43, v44, v45, v4, v11, v10, v39);
    OUTLINED_FUNCTION_25_2();
  }

  return result;
}

void sub_1E40D06D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_156();
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    *(Strong + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute) = v3;

    if (a3 == 2 || a3 == 4)
    {
      OUTLINED_FUNCTION_111();
      v27 = OUTLINED_FUNCTION_165_9();
      v28(v27);
    }

    else if (a3 == 5)
    {
      v14 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v13);
      if (v14 && *(v14 + 64) == 5)
      {
        v16 = *(v14 + 40);
        v15 = *(v14 + 48);
        v18 = *(v14 + 24);
        v17 = *(v14 + 32);
        sub_1E324FBDC();
        OUTLINED_FUNCTION_22_6();
        v19(v5);
        v20 = v13;
        v21 = sub_1E41FFC94();
        v22 = sub_1E4206814();

        if (OUTLINED_FUNCTION_181_4())
        {
          v23 = OUTLINED_FUNCTION_6_21();
          OUTLINED_FUNCTION_100();
          *v23 = 136446210;
          v24 = sub_1E40C50E8();
          OUTLINED_FUNCTION_110_15(v24, v25);
          OUTLINED_FUNCTION_34_3();
          *(v23 + 4) = v20;
          _os_log_impl(&dword_1E323F000, v21, v22, "%{public}spopover presentation", v23, 0xCu);
          OUTLINED_FUNCTION_41_70();
          OUTLINED_FUNCTION_43_71();
        }

        (*(v9 + 8))(v5, v7);
        OUTLINED_FUNCTION_111();
        (*(v26 + 1024))(v18, v17, v16, v15);
      }
    }

    else
    {
      v29 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v13);
      if (v29 && *(v29 + 64) == 4)
      {
        v30 = *(v29 + 32);
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          v32 = v31;
          v48 = v30;
          sub_1E324FBDC();
          OUTLINED_FUNCTION_6_30();
          v33(v4);
          v34 = v13;
          v35 = sub_1E41FFC94();
          v36 = sub_1E4206814();

          if (os_log_type_enabled(v35, v36))
          {
            v47 = v32;
            v37 = OUTLINED_FUNCTION_6_21();
            OUTLINED_FUNCTION_100();
            *v37 = 136446210;
            v38 = sub_1E40C50E8();
            OUTLINED_FUNCTION_110_15(v38, v39);
            OUTLINED_FUNCTION_6_19();

            *(v37 + 4) = v34;
            OUTLINED_FUNCTION_124_9();
            _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
            OUTLINED_FUNCTION_41_70();
            v32 = v47;
            OUTLINED_FUNCTION_6_0();
          }

          (*(v9 + 8))(v4, v7);
          j__OUTLINED_FUNCTION_51_1();
          OUTLINED_FUNCTION_111();
          (*(v45 + 1016))(v32, v46 & 1);
          v30 = v48;
        }
      }
    }

    sub_1E40C5740(v3);
  }
}

void sub_1E40D0B40()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_9_5();
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_36;
  }

  v3 = Strong;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {

LABEL_36:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_26_0();
  if (((*(v4 + 880))() & 1) == 0)
  {
LABEL_35:

    goto LABEL_36;
  }

  sub_1E324FBDC();
  v5 = OUTLINED_FUNCTION_34_78();
  v6(v5);
  v3 = v3;

  v7 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_181_4())
  {
    v8 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_72_0();
    *v8 = 136446466;
    v9 = sub_1E40C50E8();
    OUTLINED_FUNCTION_22_23(v9, v10);
    OUTLINED_FUNCTION_40_18();
    OUTLINED_FUNCTION_114_12();
    v11 = type metadata accessor for Route(0);
    OUTLINED_FUNCTION_0_342();
    sub_1E3274C5C(v12, v13, &unk_1E42DFCB8);
    v14 = sub_1E4207944();
    OUTLINED_FUNCTION_22_23(v14, v15);
    OUTLINED_FUNCTION_40_18();
    *(v8 + 14) = v11;
    OUTLINED_FUNCTION_112_18();
    _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_79();
  }

  v21 = OUTLINED_FUNCTION_124();
  v22(v21);
  v23 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v24 = *(v3 + v23);
  v25 = sub_1E32AE9B0(v24);
  if (!v25)
  {
LABEL_20:
    v31 = OBJC_IVAR____TtC8VideosUI6Router_currentTransaction;
    if (*(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v3))
    {
      v32 = sub_1E40C40A4();
      if (v32)
      {
        v33 = v32;
        OUTLINED_FUNCTION_26_0();
        v35 = (*(v34 + 776))();
        sub_1E3F4EEA0(v35, v36, v37);
        if ((sub_1E4205E84() & 1) == 0)
        {

          sub_1E37D027C(v38);
          OUTLINED_FUNCTION_122();

          if (v0)
          {
            if (*&v31[v3])
            {

              sub_1E40C40D8();

              if (*&v31[v3])
              {
                if (sub_1E40C40A4())
                {
                  OUTLINED_FUNCTION_30();
                  (*(v39 + 1048))(v33);
                }
              }
            }
          }
        }
      }
    }

    OUTLINED_FUNCTION_111();
    v40 = OUTLINED_FUNCTION_165();
    v41(v40);
    v42 = OBJC_IVAR____TtC8VideosUI6Router_presentingRoute;
    if (!*(v3 + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute) || (OUTLINED_FUNCTION_8(), v44 = *(v43 + 848), v45 = , v44(v45), OUTLINED_FUNCTION_112(), , !v44) || (type metadata accessor for Route(0), OUTLINED_FUNCTION_0_342(), sub_1E3274C5C(v46, v47, &unk_1E42DFD20), , v48 = sub_1E4205E84(), , , (v48 & 1) == 0))
    {
      *(v3 + v42) = 0;
    }

    sub_1E40C8384();
    goto LABEL_35;
  }

  v0 = v25;

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v26 = 0;
  while (1)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1E6911E60](v26, v24);
    }

    else
    {
      if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v27 = *(v24 + 8 * v26 + 32);
    }

    v28 = swift_weakLoadStrong();
    if (v28)
    {
      v29 = v28;

      if (v27 == v29)
      {

        sub_1E40CF898(v26);
        goto LABEL_20;
      }
    }

    else
    {
    }

    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    ++v26;
    if (v30 == v0)
    {

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

void sub_1E40D1080()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      if (!*(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v9))
      {
        goto LABEL_15;
      }

      v10 = sub_1E40C40A4();
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v11 = swift_weakLoadStrong();
      if (v10)
      {
        v45 = v10;
        if (!v11)
        {
          goto LABEL_14;
        }

        v46 = v11;
        type metadata accessor for Route(0);
        v44 = v1;
        OUTLINED_FUNCTION_0_342();
        v43 = sub_1E3274C5C(v12, v13, &unk_1E42DFD20);

        v1 = v44;
        v14 = sub_1E4205E84();

        if ((v14 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v11)
        {
LABEL_14:

LABEL_15:
          OUTLINED_FUNCTION_47_0();
          if ((*(v19 + 952))())
          {
          }

          else
          {
            sub_1E324FBDC();
            OUTLINED_FUNCTION_2_26();
            v20(v0);
            v21 = v9;
            v22 = sub_1E41FFC94();
            v23 = sub_1E42067F4();

            if (os_log_type_enabled(v22, v23))
            {
              v24 = OUTLINED_FUNCTION_6_21();
              v25 = OUTLINED_FUNCTION_100();
              v46 = v25;
              *v24 = 136446210;
              v26 = sub_1E40C50E8();
              OUTLINED_FUNCTION_97_4(v26, v27);
              v44 = v21;
              OUTLINED_FUNCTION_40_18();
              *(v24 + 4) = v1;
              _os_log_impl(&dword_1E323F000, v22, v23, "%{public}spush cancelled but no current transaction", v24, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v25);
              OUTLINED_FUNCTION_79();
              OUTLINED_FUNCTION_7_7();

              v28 = OUTLINED_FUNCTION_11_6();
              v29(v28);
              v21 = v44;
            }

            else
            {

              (*(v3 + 8))(v0, v1);
            }

            OUTLINED_FUNCTION_5_11();
            OUTLINED_FUNCTION_47_0();
            (*(v30 + 968))();
          }

LABEL_21:

          goto LABEL_22;
        }
      }

      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        OUTLINED_FUNCTION_26_0();
        v16 = (*(v15 + 824))();

        if (v16)
        {
          OUTLINED_FUNCTION_8();
          v18 = (*(v17 + 416))();

          if ((v18 & 1) == 0)
          {
            sub_1E324FBDC();
            OUTLINED_FUNCTION_2_26();
            v31(v7);
            v32 = v9;
            v33 = sub_1E41FFC94();
            sub_1E4206814();

            if (OUTLINED_FUNCTION_165_5())
            {
              v34 = OUTLINED_FUNCTION_6_21();
              v43 = OUTLINED_FUNCTION_100();
              v46 = v43;
              v35 = OUTLINED_FUNCTION_182_5(4.8751e-34);
              OUTLINED_FUNCTION_97_4(v35, v36);
              v44 = v1;
              OUTLINED_FUNCTION_40_18();
              *(v34 + 4) = v1;
              OUTLINED_FUNCTION_62_2();
              _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v43);
              OUTLINED_FUNCTION_46_1();
              OUTLINED_FUNCTION_79();

              (*(v3 + 8))(v7, v44);
            }

            else
            {

              (*(v3 + 8))(v7, v1);
            }

            sub_1E40C8384();

            goto LABEL_21;
          }
        }
      }

      goto LABEL_14;
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40D1560()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_39;
  }

  v2 = Strong;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {

LABEL_39:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_26_0();
  if ((*(v3 + 488))())
  {
LABEL_37:

LABEL_38:

    goto LABEL_39;
  }

  sub_1E324FBDC();
  v4 = OUTLINED_FUNCTION_34_78();
  v5(v4);
  v2 = v2;

  v6 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_181_4())
  {
    v7 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_72_0();
    *v7 = 136446466;
    v8 = sub_1E40C50E8();
    OUTLINED_FUNCTION_22_23(v8, v9);
    OUTLINED_FUNCTION_40_18();
    OUTLINED_FUNCTION_114_12();
    v10 = type metadata accessor for Route(0);
    OUTLINED_FUNCTION_0_342();
    sub_1E3274C5C(v11, v12, &unk_1E42DFCB8);
    v13 = sub_1E4207944();
    OUTLINED_FUNCTION_22_23(v13, v14);
    OUTLINED_FUNCTION_40_18();
    *(v7 + 14) = v10;
    OUTLINED_FUNCTION_112_18();
    _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_79();
  }

  v20 = OUTLINED_FUNCTION_124();
  v21(v20);
  v22 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v43 = v22;
  v23 = *&v2[v22];
  v24 = sub_1E32AE9B0(v23);
  if (!v24)
  {
LABEL_20:
    v31 = *&v2[v43];
    v32 = sub_1E32AE9B0(v31);
    v33 = OBJC_IVAR____TtC8VideosUI6Router_presentingRoute;

    for (i = 0; v32 != i; ++i)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](i, v31);
      }

      else
      {
        if (i >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (*&v2[v33])
      {
        type metadata accessor for Route(0);
        OUTLINED_FUNCTION_0_342();
        sub_1E3274C5C(&qword_1ECF3D190, v35, &unk_1E42DFD20);
        v36 = sub_1E4205E84();

        if (v36)
        {

          goto LABEL_33;
        }
      }

      else
      {
      }
    }

    *&v2[v33] = 0;

LABEL_33:
    OUTLINED_FUNCTION_111();
    v37 = OUTLINED_FUNCTION_165();
    v38(v37);

    sub_1E37D027C(v39);
    OUTLINED_FUNCTION_112();

    if (!v31)
    {
      goto LABEL_37;
    }

    if ((*(*v31 + 368))(v40))
    {
      OUTLINED_FUNCTION_30();
      (*(v41 + 104))();
      OUTLINED_FUNCTION_8();
      (*(v42 + 200))();

      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v25 = v24;

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v26 = 0;
  while (1)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1E6911E60](v26, v23);
    }

    else
    {
      if (v26 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v27 = *(v23 + 8 * v26 + 32);
    }

    v28 = swift_weakLoadStrong();
    if (v28)
    {
      v29 = v28;

      if (v27 == v29)
      {

        sub_1E40CF898(v26);
        goto LABEL_20;
      }
    }

    else
    {
    }

    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    ++v26;
    if (v30 == v25)
    {

      goto LABEL_20;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

void sub_1E40D1A98()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_9();
  if (!v6)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_17:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    v14 = Strong;
    if (!v4)
    {
LABEL_16:

      goto LABEL_17;
    }

    if (sub_1E40C40A4())
    {
      v15 = v4;
      if (v8)
      {
        v4 = v15;

        sub_1E40C8850();

LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      v16 = v4;
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_146_2();
    v17(v0);
    v14 = v14;
    v18 = v2;
    v19 = sub_1E41FFC94();
    v20 = sub_1E42067F4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_49_0();
      v27 = OUTLINED_FUNCTION_160();
      v28 = OUTLINED_FUNCTION_100();
      *v21 = 136446466;
      v22 = sub_1E40C50E8();
      OUTLINED_FUNCTION_38_8(v22, v23);
      OUTLINED_FUNCTION_12_1();

      *(v21 + 4) = v4;
      *(v21 + 12) = 2112;
      *(v21 + 14) = v18;
      *v27 = v18;
      v24 = v18;
      OUTLINED_FUNCTION_347(&dword_1E323F000, v19, v20, "%{public}saction %@ failed or was cancelled. Clearing currentRoute.");
      sub_1E325F6F0(v27, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_46_1();
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_55();
    }

    v25 = OUTLINED_FUNCTION_74();
    v26(v25);
    sub_1E40C8384();
    goto LABEL_15;
  }

  v6(v8 & 1);
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_25_2();

  sub_1E34AF594(v10, v11);
}

void sub_1E40D1D4C(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  OUTLINED_FUNCTION_123_2();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v81 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v80 = v19 - v18;
  v78 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v77 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v76 = v23 - v22;
  OUTLINED_FUNCTION_89();
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v83 = a8;
  v84 = a5;
  v24[4] = a6;
  v24[5] = a7;
  v24[6] = a8;
  if (sub_1E40C40A4())
  {
    OUTLINED_FUNCTION_30();
    v26 = *(v25 + 776);
    sub_1E34AF604(a4, a5);
    v27 = a7;
    v28 = v83;

    v30 = v26(v29);
  }

  else
  {
    sub_1E34AF604(a4, a5);
    v31 = a7;
    v32 = a8;

    v30 = 0;
  }

  v82 = a7;
  if (!a2 || (objc_opt_self(), OUTLINED_FUNCTION_138_1(), swift_dynamicCastObjCClass()))
  {
LABEL_6:
    v33 = 0;
    goto LABEL_20;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_138_1();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    OUTLINED_FUNCTION_138_1();
    if (!swift_dynamicCastObjCClass())
    {
      v33 = 0;
      switch(v30)
      {
        case 1:
          v34 = a2;
          v35 = [v34 preAction];
          if (v35)
          {
            goto LABEL_15;
          }

          v36 = [v34 preActionDocumentDataSource];
          goto LABEL_17;
        case 2:
          v34 = a2;
          v35 = [v34 action];
          if (v35)
          {
            goto LABEL_15;
          }

          v36 = [v34 documentDataSource];
          goto LABEL_17;
        case 3:
          v34 = a2;
          v35 = [v34 postAction];
          if (v35)
          {
LABEL_15:
            v37 = v35;
          }

          else
          {
            v36 = [v34 postActionDocumentDataSource];
LABEL_17:
            v37 = v36;

            if (!v37)
            {
              goto LABEL_6;
            }
          }

          break;
        default:
          goto LABEL_20;
      }
    }
  }

  v33 = 1;
LABEL_20:
  sub_1E40C3B00(&v92);
  type metadata accessor for ActionTabSwitch();
  OUTLINED_FUNCTION_138_1();
  v38 = swift_dynamicCastClass();
  if (!v38)
  {
    goto LABEL_32;
  }

  if (a4)
  {

    a4(1);
    v39 = OUTLINED_FUNCTION_21_42();
    sub_1E34AF594(v39, v40);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    if (!v82)
    {
LABEL_27:

      goto LABEL_32;
    }

    if (sub_1E40C40A4())
    {

      v79 = v82;
      sub_1E40C8850();
      OUTLINED_FUNCTION_44_2();

      goto LABEL_27;
    }

    v73 = v82;
    v43 = sub_1E324FBDC();
    (*(v77 + 16))(v76, v43, v78);
    v74 = v83;
    v75 = v42;
    v44 = sub_1E41FFC94();
    v45 = sub_1E42067F4();

    v72 = v45;
    if (os_log_type_enabled(v44, v45))
    {
      v46 = OUTLINED_FUNCTION_49_0();
      v70 = OUTLINED_FUNCTION_160();
      v71 = OUTLINED_FUNCTION_100();
      aBlock = v71;
      *v46 = 136446466;
      v47 = sub_1E40C50E8();
      sub_1E3270FC8(v47, v48, &aBlock);
      OUTLINED_FUNCTION_50();

      *(v46 + 4) = v75;
      *(v46 + 12) = 2112;
      *(v46 + 14) = v74;
      *v70 = v74;
      v49 = v74;
      _os_log_impl(&dword_1E323F000, v44, v72, "%{public}saction %@ failed or was cancelled. Clearing currentRoute.", v46, 0x16u);
      sub_1E325F6F0(v70, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_7_9();
      __swift_destroy_boxed_opaque_existential_1(v71);
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_46_1();

      OUTLINED_FUNCTION_15_5();
    }

    else
    {

      OUTLINED_FUNCTION_15_5();
    }

    v50(v76, v78);
    sub_1E40C8384();
  }

LABEL_32:
  sub_1E328438C(&v92, &v91);
  v51 = swift_allocObject();
  *(v51 + 16) = v38 != 0;
  *(v51 + 17) = v33;
  *(v51 + 24) = sub_1E40D6C20;
  *(v51 + 32) = v24;
  *(v51 + 40) = v8;
  *(v51 + 48) = v30;
  sub_1E329504C(&v91, (v51 + 56));
  v89 = sub_1E40D6C30;
  v90 = v51;
  OUTLINED_FUNCTION_49_61();
  v86 = 1107296256;
  v87 = sub_1E37EB82C;
  v88 = &block_descriptor_155;
  v52 = _Block_copy(&aBlock);

  [a3 performWithTargetResponder:0 completionHandler:v52];
  _Block_release(v52);
  v53 = v82;
  if (v33)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_138_1();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), OUTLINED_FUNCTION_138_1(), swift_dynamicCastObjCClass()))
    {
      sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
      v54 = a4;
      v55 = sub_1E4206A04();
      v56 = swift_allocObject();
      *(v56 + 16) = sub_1E40D6C20;
      *(v56 + 24) = v24;
      *(v56 + 32) = v8;
      *(v56 + 40) = v30;
      v89 = sub_1E40D6C4C;
      v90 = v56;
      OUTLINED_FUNCTION_49_61();
      v86 = 1107296256;
      OUTLINED_FUNCTION_14_1();
      v87 = v57;
      v88 = &block_descriptor_161;
      v58 = _Block_copy(&aBlock);

      sub_1E4203FE4();
      aBlock = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_4_267();
      sub_1E3274C5C(v59, v60, MEMORY[0x1E69E7F70]);
      v61 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v61, v62);
      OUTLINED_FUNCTION_47();
      sub_1E32752B0(v63, v64, &qword_1E429B000, v65);
      sub_1E42072E4();
      OUTLINED_FUNCTION_168_5();
      MEMORY[0x1E6911380]();
      v53 = v82;
      _Block_release(v58);

      a4 = v54;
      OUTLINED_FUNCTION_15_5();
      v66 = OUTLINED_FUNCTION_39_3();
      v67(v66);
      OUTLINED_FUNCTION_15_5();
      v68(v80, v81);
    }

    else if (sub_1E40C40A4())
    {
      OUTLINED_FUNCTION_30();
      (*(v69 + 784))(0);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(&v92);

  sub_1E34AF594(a4, v84);
}

void sub_1E40D2728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_31_1();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    if (v31)
    {
      OUTLINED_FUNCTION_4_0();
      v35 = swift_allocObject();
      OUTLINED_FUNCTION_45_38(v35);
      swift_unknownObjectWeakInit();
      sub_1E34AF604(v23, a21);
      v36 = v25;
      v37 = v27;

      v38 = OUTLINED_FUNCTION_135();
      sub_1E40D1D4C(v38, v39, v37, v23, a21, v21, v25, v37);
    }

    else
    {
      sub_1E40C8384();
      sub_1E324FBDC();
      OUTLINED_FUNCTION_131_0();
      v40 = OUTLINED_FUNCTION_33_14();
      v41(v40);
      v42 = v27;
      v43 = v34;
      v44 = v29;
      v45 = sub_1E41FFC94();
      v46 = sub_1E42067F4();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = OUTLINED_FUNCTION_100();
        v48 = OUTLINED_FUNCTION_160();
        v63 = OUTLINED_FUNCTION_72_0();
        *v47 = 136446722;
        v49 = sub_1E40C50E8();
        OUTLINED_FUNCTION_38_8(v49, v50);
        OUTLINED_FUNCTION_40_18();
        *(v47 + 4) = v31;
        *(v47 + 12) = 2112;
        *(v47 + 14) = v42;
        *v48 = v42;
        *(v47 + 22) = 2080;
        if (v29)
        {
          swift_getErrorValue();
          v29 = v60;
          *(&v62 + 1) = v60;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v61);
          (*(*(v29 - 1) + 16))(boxed_opaque_existential_1, v59, v29);
        }

        else
        {
          v61 = 0u;
          v62 = 0u;
        }

        v54 = v42;
        v55 = sub_1E3294FA4(&v61);
        OUTLINED_FUNCTION_38_8(v55, v56);
        OUTLINED_FUNCTION_6_19();

        *(v47 + 24) = v29;
        _os_log_impl(&dword_1E323F000, v45, v46, "%{public}sauthentication failed for action: %@ error: %s", v47, 0x20u);
        sub_1E325F6F0(v48, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_7_7();
        OUTLINED_FUNCTION_120_10();
        OUTLINED_FUNCTION_46_1();
        OUTLINED_FUNCTION_55();

        v57 = OUTLINED_FUNCTION_13_8();
        v58(v57);
      }

      else
      {

        v52 = OUTLINED_FUNCTION_13_8();
        v53(v52);
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40D2A58(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_35_3();
  v9 = [objc_opt_self() vui_defaultBag];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 URLForKey_];
    OUTLINED_FUNCTION_2_4();
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    aBlock[4] = sub_1E40D6CC8;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E40D2F40;
    aBlock[3] = &block_descriptor_179;
    v13 = _Block_copy(aBlock);

    [v11 valueWithCompletion_];
    _Block_release(v13);
  }

  else
  {
    v14 = sub_1E41FE414();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v14);
    a2(v3);
    sub_1E325F6F0(v3, &unk_1ECF363C0, &unk_1E42A9420);
  }
}

void sub_1E40D2C0C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_9();
  v24 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v11 = sub_1E4206A04();
  OUTLINED_FUNCTION_5_10();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v2;
  v12[4] = v6;
  v25[4] = sub_1E40D6CD0;
  v25[5] = v12;
  OUTLINED_FUNCTION_12_0();
  v25[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v25[2] = v13;
  v25[3] = &block_descriptor_185_0;
  v14 = _Block_copy(v25);
  v15 = v6;

  sub_1E4203FE4();
  v25[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_267();
  sub_1E3274C5C(v16, v17, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v18, v19, &qword_1E429B000, v20);
  OUTLINED_FUNCTION_142_1();
  sub_1E42072E4();
  v21 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v21);
  _Block_release(v14);

  v22 = OUTLINED_FUNCTION_16_80();
  v23(v22);
  (*(v9 + 8))(v0, v24);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40D2E68(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_139();
  if (a3)
  {
    sub_1E41FE3C4();
    v8 = sub_1E41FE414();
    v9 = 0;
  }

  else
  {
    v8 = sub_1E41FE414();
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v3, v9, 1, v8);
  a1(v3);
  return sub_1E325F6F0(v3, &unk_1ECF363C0, &unk_1E42A9420);
}

void sub_1E40D2F40(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

void sub_1E40D2FD4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_9();
  v22 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v9 = sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v10 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_105_2(v11);
  swift_unknownObjectWeakInit();
  v23[4] = v4;
  v23[5] = v9;
  OUTLINED_FUNCTION_12_0();
  v23[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v23[2] = v12;
  v23[3] = v2;
  v13 = _Block_copy(v23);

  sub_1E4203FE4();
  v23[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_267();
  sub_1E3274C5C(v14, v15, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v16, v17, &qword_1E429B000, v18);
  OUTLINED_FUNCTION_142_1();
  sub_1E42072E4();
  v19 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v19);
  _Block_release(v13);

  v20 = OUTLINED_FUNCTION_16_80();
  v21(v20);
  (*(v7 + 8))(v0, v22);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E40D3274(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0xE000000000000000;
  if (a2)
  {
    v8 = a2;
  }

  v42 = v7;
  v43 = v8;
  if (a5 && (v51 = MEMORY[0x1E69E7CC0], (v9 = *(a5 + 16)) != 0))
  {
    v10 = a5 + 32;

    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1E328438C(v10, v50);
      sub_1E329504C(v50, &v48);
      sub_1E3280A90(0, &qword_1EE23B310, off_1E87281C8);
      if ((swift_dynamicCast() & 1) != 0 && v49)
      {
        MEMORY[0x1E6910BF0]();
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        OUTLINED_FUNCTION_99_0();
        sub_1E4206324();
        v11 = v51;
      }

      v10 += 32;
      --v9;
    }

    while (v9);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = (v12 + 16);
  v14 = OBJC_IVAR____TtC8VideosUI6Router_presentingRoute;
  v15 = *(v5 + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute);
  if (v15)
  {
    v16 = *(*v15 + 848);

    if (v16(v17))
    {
      OUTLINED_FUNCTION_60_1();

      v18 = 1;
      *v13 = 1;

      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();

    sub_1E37D027C(v19);
    OUTLINED_FUNCTION_176_0();
  }

  v18 = 0;
LABEL_22:
  type metadata accessor for RoutingTransaction();
  OUTLINED_FUNCTION_58_41();
  v20 = swift_allocObject();
  sub_1E40C42B0();
  *(v20 + 96) = 0;
  *(v20 + 66) = 1;
  if (v15)
  {
    if (v18)
    {
      v39 = v14;
      v21 = *(v20 + 24);
      v41 = *(v20 + 16);
      v23 = *(v20 + 32);
      v22 = *(v20 + 40);
      v24 = *(v20 + 56);
      v40 = *(v20 + 48);
      *(v20 + 16) = v15;
      *(v20 + 24) = v42;
      *(v20 + 32) = v43;
      *(v20 + 40) = v11;
      *(v20 + 48) = a3;
      *(v20 + 56) = a4;
      v25 = *(v20 + 64);
      *(v20 + 64) = 6;

      sub_1E40D60A0(v41, v21, v23, v22, v40, v24, v25);
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      if ((*v13 & 1) == 0)
      {
        *(v6 + v39) = v15;
      }

      OUTLINED_FUNCTION_169();
      sub_1E40CBE10();
      OUTLINED_FUNCTION_98_16();
    }

    else
    {
      OUTLINED_FUNCTION_4_0();
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      v35[2] = v34;
      v35[3] = v42;
      v35[4] = v43;
      v35[5] = v11;
      v35[6] = a3;
      v35[7] = a4;
      v35[8] = v12;
      v35[9] = v5;
      v35[10] = v20;
      v35[11] = v15;
      v36 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x208);

      v37 = v5;

      v36(0, sub_1E40D6340, v35);

      OUTLINED_FUNCTION_98_16();
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_0();
    v26 = swift_allocObject();
    OUTLINED_FUNCTION_105_2(v26);
    swift_weakInit();
    v27 = swift_allocObject();
    v27[2] = v20;
    v27[3] = v42;
    v27[4] = v43;
    v27[5] = v11;
    v27[6] = a3;
    v27[7] = a4;
    v27[8] = v12;
    v27[9] = v5;
    v44 = *(v20 + 24);
    v46 = *(v20 + 16);
    v28 = *(v20 + 32);
    v29 = *(v20 + 40);
    v30 = *(v20 + 48);
    v31 = *(v20 + 56);
    *(v20 + 16) = sub_1E40D6214;
    *(v20 + 24) = v27;
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0u;
    v32 = *(v20 + 64);
    *(v20 + 64) = 1;

    v33 = v5;

    sub_1E40D60A0(v46, v44, v28, v29, v30, v31, v32);
  }

  *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v6) = v20;

  return result;
}

void sub_1E40D3828(void *a1, char a2, void *a3, uint64_t a4)
{
  v9 = [a1 modalPresentationStyle];
  if (a3)
  {
    v15 = a3;
    v16 = a4;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v13 = v10;
    v14 = &block_descriptor_49_0;
    a3 = _Block_copy(&v11);
  }

  [v4 presentViewController:a1 modalPresentationStyle:v9 animated:a2 & 1 completion:{a3, v11, v12}];
  _Block_release(a3);
  OUTLINED_FUNCTION_2_75();
}

uint64_t sub_1E40D39C8(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v11 = 11;
  }

  else if (a2 > 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_1E42EB7B0[a2];
  }

  v12 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x218);

  return v12(a1, 0, v11, a3 & 1, a4, a5);
}

void sub_1E40D3B70(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_35_3();
  if ([objc_opt_self() isSUIEnabled])
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (!qword_1EE2AA808)
    {
      return;
    }

    OUTLINED_FUNCTION_88_0();
    v10 = *(v9 + 544);
    v12 = v11;
    v13 = OUTLINED_FUNCTION_63_0();
    v10(v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_32_7();
    sub_1E379D7E4(v14, v15, v16, v17);
    v18 = sub_1E41FE414();
    v19 = 0;
    if (__swift_getEnumTagSinglePayload(v4, 1, v18) != 1)
    {
      v19 = sub_1E41FE364();
      v20 = OUTLINED_FUNCTION_24_4();
      v21(v20);
    }

    if (a3)
    {
      OUTLINED_FUNCTION_74();
      v12 = sub_1E4205ED4();
    }

    else
    {
      v12 = 0;
    }

    [objc_opt_self() handleAccountSettingsEventWithUrl:v19 amsBagKey:v12 useAMSWebView:a4 & 1];
  }
}

uint64_t sub_1E40D3F5C()
{
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute))
  {
    return 0;
  }

  OUTLINED_FUNCTION_8();
  v2 = *(v1 + 632);

  LOBYTE(v2) = v2(v3);

  return v2 & 1;
}

uint64_t sub_1E40D404C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_21();
  v6 = (*(v5 + 528))();
  if (a4)
  {
    a4();
  }

  return v6 & 1;
}

void sub_1E40D4190()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v1;
  v76 = v5;
  OUTLINED_FUNCTION_9_5();
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_34_1();
  v14 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v15 = *&v1[v14];

  sub_1E37D027C(v16);
  OUTLINED_FUNCTION_122();

  if (v2)
  {

    sub_1E40C9518(v17);
    OUTLINED_FUNCTION_16_5();

    if (v15)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_48_4();
      v18(v3);

      v19 = v4;
      v20 = v0;
      v21 = sub_1E41FFC94();
      v22 = sub_1E4206814();

      v23 = &qword_1ECF3F000;
      if (os_log_type_enabled(v21, v22))
      {
        v72 = v8;
        v74 = v6;
        v24 = OUTLINED_FUNCTION_131_15();
        v25 = OUTLINED_FUNCTION_160();
        v77[4] = OUTLINED_FUNCTION_164_1();
        *v24 = 136446978;
        v26 = sub_1E40C50E8();
        OUTLINED_FUNCTION_38_8(v26, v27);
        OUTLINED_FUNCTION_11_5();

        *(v24 + 4) = v6;
        *(v24 + 12) = 2112;
        *(v24 + 14) = v20;
        *v25 = v20;
        *(v24 + 22) = 2080;
        v77[0] = v2;
        v28 = type metadata accessor for Route(0);
        OUTLINED_FUNCTION_0_342();
        sub_1E3274C5C(v29, v30, &unk_1E42DFCB8);
        v31 = v20;
        OUTLINED_FUNCTION_34();
        v32 = sub_1E4207944();
        OUTLINED_FUNCTION_38_8(v32, v33);
        OUTLINED_FUNCTION_11_5();

        *(v24 + 24) = v28;
        *(v24 + 32) = 2080;
        v34 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v19);
        if (v34)
        {
          v35 = type metadata accessor for RoutingTransaction();
        }

        else
        {
          v35 = 0;
          v77[1] = 0;
          v77[2] = 0;
        }

        v77[0] = v34;
        v77[3] = v35;

        v60 = sub_1E3294FA4(v77);
        OUTLINED_FUNCTION_38_8(v60, v61);
        OUTLINED_FUNCTION_11_5();

        *(v24 + 34) = v28;
        _os_log_impl(&dword_1E323F000, v21, v22, "%{public}shandling %@ with route: [%s], transaction [%s]", v24, 0x2Au);
        sub_1E325F6F0(v25, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_13_4();
        OUTLINED_FUNCTION_62_37();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_13_4();
        OUTLINED_FUNCTION_43_71();

        (*(v72 + 8))(v3, v74);
        v23 = &qword_1ECF3F000;
      }

      else
      {

        v58 = OUTLINED_FUNCTION_147_7();
        v59(v58, v6);
      }

      v62 = v23[313];
      if (*&v19[v62])
      {
        v63 = *&v19[v62];
      }

      else
      {
        type metadata accessor for RoutingTransaction();
        OUTLINED_FUNCTION_58_41();
        v63 = swift_allocObject();
        sub_1E40C42B0();
      }

      v64 = *(v63 + 32);
      v65 = *(v63 + 40);
      v67 = *(v63 + 48);
      v66 = *(v63 + 56);
      *(v63 + 16) = v2;
      *(v63 + 24) = 0u;
      *(v63 + 40) = 0u;
      v68 = *(v63 + 64);
      *(v63 + 49) = 0u;

      v69 = OUTLINED_FUNCTION_34();
      sub_1E40D60A0(v69, v70, v64, v65, v67, v66, v68);
      *(v63 + 96) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        sub_1E3280A90(0, &unk_1ECF3FA50, off_1E87281E0);
        Strong = sub_1E3A81730();
      }

      swift_unknownObjectWeakAssign();

      sub_1E40D0360();

      goto LABEL_21;
    }
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_48_4();
  v36 = OUTLINED_FUNCTION_167_6();
  v37(v36);
  v38 = v8;
  v39 = v4;
  v40 = v6;
  v41 = v0;
  v42 = sub_1E41FFC94();
  v43 = sub_1E42067F4();

  if (os_log_type_enabled(v42, v43))
  {
    v75 = v40;
    v44 = OUTLINED_FUNCTION_100();
    v45 = OUTLINED_FUNCTION_160();
    v77[0] = OUTLINED_FUNCTION_72_0();
    *v44 = 136315650;
    v73 = v43;
    v46 = sub_1E40C50E8();
    OUTLINED_FUNCTION_110_15(v46, v47);
    OUTLINED_FUNCTION_112();

    *(v44 + 4) = v39;
    *(v44 + 12) = 2112;
    *(v44 + 14) = v41;
    *v45 = v41;
    *(v44 + 22) = 2080;
    v48 = type metadata accessor for Route(0);
    v49 = v41;

    MEMORY[0x1E6910C30](v50, v48);

    v51 = OUTLINED_FUNCTION_34();
    v54 = sub_1E3270FC8(v51, v52, v53);

    *(v44 + 24) = v54;
    _os_log_impl(&dword_1E323F000, v42, v73, "%sno valid route for handling %@: %s", v44, 0x20u);
    sub_1E325F6F0(v45, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_65_0();

    (*(v38 + 8))(v12, v75);
  }

  else
  {

    v55 = OUTLINED_FUNCTION_124();
    v57(v55, v56);
  }

  if (v76)
  {
    v76(0);
  }

LABEL_21:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40D483C()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v1;
  v90 = v6;
  v91 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_9_5();
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v84 - v14;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  sub_1E37D027C(v16);
  OUTLINED_FUNCTION_40_18();
  if (v3)
  {

    v18 = sub_1E40C9518(v17);

    if (v18)
    {
      v84[0] = v8;
      sub_1E324FBDC();
      OUTLINED_FUNCTION_48_4();
      v19(v15);

      v20 = v4;
      v21 = v0;
      v22 = v3;
      v23 = sub_1E41FFC94();
      v24 = sub_1E4206814();

      v25 = os_log_type_enabled(v23, v24);
      v26 = &qword_1ECF3F000;
      v88 = v22;
      if (v25)
      {
        v87 = v11;
        v89 = v9;
        v27 = OUTLINED_FUNCTION_131_15();
        v28 = OUTLINED_FUNCTION_160();
        v85 = OUTLINED_FUNCTION_164_1();
        *&v100 = v85;
        *v27 = 136446978;
        v29 = sub_1E40C50E8();
        OUTLINED_FUNCTION_14_64(v29, v30);
        OUTLINED_FUNCTION_112();

        *(v27 + 4) = v11;
        *(v27 + 12) = 2112;
        *(v27 + 14) = v21;
        *v28 = v21;
        *(v27 + 22) = 2080;
        v92 = v22;
        v31 = type metadata accessor for Route(0);
        OUTLINED_FUNCTION_0_342();
        sub_1E3274C5C(v32, v33, &unk_1E42DFCB8);
        v86 = v21;
        v34 = v21;
        v35 = sub_1E4207944();
        OUTLINED_FUNCTION_14_64(v35, v36);
        OUTLINED_FUNCTION_112();

        *(v27 + 24) = v31;
        *(v27 + 32) = 2080;
        v37 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v20);
        if (v37)
        {
          v38 = type metadata accessor for RoutingTransaction();
        }

        else
        {
          v38 = 0;
          v93 = 0;
          v94 = 0;
        }

        v92 = v37;
        v95 = v38;

        v60 = sub_1E3294FA4(&v92);
        OUTLINED_FUNCTION_14_64(v60, v61);
        OUTLINED_FUNCTION_112();

        *(v27 + 34) = v31;
        _os_log_impl(&dword_1E323F000, v23, v24, "%{public}shandling [%@] with route: [%s], transaction [%s]", v27, 0x2Au);
        sub_1E325F6F0(v28, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_13_4();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_13_4();
        OUTLINED_FUNCTION_51_2();

        v87[1](v15, v89);
        v26 = &qword_1ECF3F000;
      }

      else
      {

        v11[1](v15, v9);
      }

      v62 = v26[313];
      if (*&v20[v62])
      {
        v63 = *&v20[v62];
      }

      else
      {
        type metadata accessor for RoutingTransaction();
        OUTLINED_FUNCTION_58_41();
        v63 = swift_allocObject();
        sub_1E40C42B0();
      }

      v64 = *(v63 + 120);
      v100 = *(v63 + 104);
      v101 = v64;
      v102 = *(v63 + 136);

      sub_1E40D0144();
      v65 = v92;
      v66 = v93;
      v67 = v94;
      v68 = v95;
      v69 = v96;
      v70 = v97;
      v71 = v98;
      v84[1] = v20;
      v72 = v99;
      v73 = *(v63 + 32);
      v74 = *(v63 + 40);
      v75 = *(v63 + 48);
      v76 = *(v63 + 56);
      *(v63 + 16) = v92;
      *(v63 + 24) = v66;
      *(v63 + 32) = v67;
      *(v63 + 40) = v68;
      *(v63 + 48) = v69;
      *(v63 + 56) = v70;
      v77 = *(v63 + 64);
      *(v63 + 64) = v71;
      v84[2] = v65;
      v84[3] = v66;
      v84[4] = v67;
      v85 = v68;
      v86 = v69;
      v87 = v70;
      LODWORD(v89) = v71;
      sub_1E40D6474(v65, v66, v67, v68, v69, v70, v71);
      v78 = OUTLINED_FUNCTION_32_0();
      sub_1E40D60A0(v78, v79, v73, v74, v75, v76, v77);
      *(v63 + 96) = v72;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        v81 = v84[0];
        Strong = v84[0];
        if (!v84[0])
        {
          sub_1E3280A90(0, &unk_1ECF3FA50, off_1E87281E0);
          Strong = sub_1E3A81730();
        }

        v82 = v81;
      }

      swift_unknownObjectWeakAssign();

      v83 = sub_1E40CBE10();
      if (v91)
      {
        v91(1, v83);
      }

      OUTLINED_FUNCTION_74_24();

      goto LABEL_27;
    }
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_48_4();
  v39(v2);
  v40 = v4;
  v41 = v0;
  v42 = v9;
  v43 = sub_1E41FFC94();
  v44 = sub_1E42067F4();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = OUTLINED_FUNCTION_100();
    v89 = v42;
    v46 = v45;
    v47 = OUTLINED_FUNCTION_160();
    v88 = OUTLINED_FUNCTION_72_0();
    v92 = v88;
    *v46 = 136315650;
    LODWORD(v87) = v44;
    v48 = sub_1E40C50E8();
    sub_1E3270FC8(v48, v49, &v92);
    OUTLINED_FUNCTION_112();

    *(v46 + 4) = v40;
    *(v46 + 12) = 2112;
    *(v46 + 14) = v41;
    *v47 = v41;
    *(v46 + 22) = 2080;
    v50 = type metadata accessor for Route(0);
    v51 = v41;

    v53 = MEMORY[0x1E6910C30](v52, v50);
    v55 = v54;

    v56 = sub_1E3270FC8(v53, v55, &v92);

    *(v46 + 24) = v56;
    _os_log_impl(&dword_1E323F000, v43, v87, "%sno valid route for handling %@: %s", v46, 0x20u);
    sub_1E325F6F0(v47, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_4();

    v57 = OUTLINED_FUNCTION_161_6();
    v59 = v89;
  }

  else
  {

    v57 = OUTLINED_FUNCTION_161_6();
    v59 = v42;
  }

  v58(v57, v59);
  if (v91)
  {
    (v91)(0);
  }

LABEL_27:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40D5034()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v36 = v6;
  v37 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_9();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  if ((v11 & 1) == 0)
  {
    if (v9)
    {
      LOBYTE(v38[0]) = v3;
      LOBYTE(v39) = 0;
      sub_1E3F4EEA0(v16, v17, v18);
      if ((sub_1E4205E84() & 1) == 0)
      {
        sub_1E328438C(v1, v38);
        type metadata accessor for RoutingTransaction();
        if (swift_dynamicCast())
        {
          v19 = v39;
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          if (qword_1EE2AA808 && (v20 = qword_1EE2AA808, v21 = sub_1E40CA9C0(), v20, v21))
          {
            sub_1E40C40D8();
            *(v19 + 65) = 1;
            sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
            v35 = sub_1E4206A04();
            v22 = swift_allocObject();
            *(v22 + 16) = v36;
            *(v22 + 24) = v37;
            *(v22 + 32) = v13 & 1;
            *(v22 + 40) = v19;
            *(v22 + 48) = v3;
            v38[4] = sub_1E40D6C84;
            v38[5] = v22;
            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 1107296256;
            OUTLINED_FUNCTION_14_1();
            v38[2] = v23;
            v38[3] = &block_descriptor_167;
            v34 = _Block_copy(v38);

            sub_1E4203FE4();
            v38[0] = MEMORY[0x1E69E7CC0];
            OUTLINED_FUNCTION_4_267();
            sub_1E3274C5C(v24, v25, MEMORY[0x1E69E7F70]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
            OUTLINED_FUNCTION_47();
            sub_1E32752B0(v26, v27, &qword_1E429B000, v28);
            OUTLINED_FUNCTION_142_1();
            sub_1E42072E4();
            v29 = OUTLINED_FUNCTION_62_0();
            MEMORY[0x1E6911380](v29);
            _Block_release(v34);

            v30 = OUTLINED_FUNCTION_16_80();
            v31(v30);
            v32 = OUTLINED_FUNCTION_39_3();
            v33(v32);
          }

          else
          {
          }
        }
      }
    }

    else
    {
      v36(v13 & 1, v5, v3);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E40D53C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E41FE414();
  v5 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v4) != 1)
  {
    v5 = sub_1E41FE364();
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  v6 = [v2 initWithAccountURL_];

  return v6;
}

uint64_t sub_1E40D5474(unint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  sub_1E34AF4E4(a1, (a2 & 0xC000000000000001) == 0, a2);
  if (v4)
  {
    return MEMORY[0x1E6911E60](a1, a2);
  }

  else
  {
  }
}

void *sub_1E40D54D8(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

void sub_1E40D5530(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FA88, &unk_1E42EB7A0);
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
    v17 = v16[7];
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = a1;
  }

  else
  {
    sub_1E377E1B0(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_1E40D566C()
{
  type metadata accessor for Route(0);
  sub_1E3274C5C(&qword_1ECF3D190, type metadata accessor for Route, &unk_1E42DFD20);
  return sub_1E4205E84() & 1;
}

uint64_t sub_1E40D56F4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  }

  v1 = sub_1E4207384();
  result = sub_1E4207384();
  if ((result & 0x8000000000000000) == 0)
  {
    result = sub_1E4207384();
    if ((v1 & 0x8000000000000000) == 0 && result >= v1)
    {
      return v1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E40D5768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_201_0();
  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_156();
  v27 = v13;
  v14 = *v10;
  if (sub_1E32AE9B0(*v10) < v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(v9, v11))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = v11 - v9;
  if (__OFSUB__(0, v9 - v11))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = sub_1E32AE9B0(v14);
  v17 = __OFADD__(v16, v15);
  v18 = v16 + v15;
  if (v17)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1E3879104(v18, 1);
  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_200();

  v22(v19, v20, v21, v22, v23, v24, v25, v26, a9, v27);
}

uint64_t sub_1E40D5810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for Route(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1E4207384();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E40D590C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1E3280A90(0, &qword_1EE23B0D0, off_1E87282E8);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1E4207384();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E40D5A18@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E40D5474(*a1, *a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_1E40D5A74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for Route(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1E40D5B50(uint64_t a1, uint64_t a2)
{
  sub_1E4207614();
  MEMORY[0x1E69109E0](3943982, 0xE300000000000000);
  sub_1E4207614();
  return 0;
}

uint64_t sub_1E40D5C2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DestinationContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E40D5C90()
{
  result = qword_1EE2890B8;
  if (!qword_1EE2890B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FA00, &qword_1E42EB2F8);
    swift_getOpaqueTypeConformance2();
    sub_1E40D5D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2890B8);
  }

  return result;
}

unint64_t sub_1E40D5D34()
{
  result = qword_1EE2894E0;
  if (!qword_1EE2894E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF3FA18, &qword_1E42EB310);
    v3 = sub_1E40D5E1C(&qword_1EE2896A0, &unk_1ECF3FA28, &qword_1E42EB318, sub_1E40D5DEC);
    sub_1E379E8E4(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2894E0);
  }

  return result;
}

uint64_t sub_1E40D5E1C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1E40D5EA8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x90);
    if (v3())
    {
      OUTLINED_FUNCTION_30();
      (*(v4 + 1040))();
    }

    v5 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v2);
    if (v5 && *(v5 + 64) == 7)
    {
      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v6)
      {
        OUTLINED_FUNCTION_47_0();
        v9 = *(v8 + 776);
        sub_1E40D6474(v7, v6, v10, v11, v12, v13, 7);

        v14 = v6;
        v9();
        v3();
        OUTLINED_FUNCTION_8_154();
        sub_1E40C8850();
      }

      else
      {
        sub_1E40D6474(*(v5 + 16), 0, *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), 7);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1E40D60A0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, char a7)
{
  switch(a7)
  {
    case 0:
    case 3:

      return;
    case 1:

      sub_1E34AF594(a1, a2);
      return;
    case 2:

      goto LABEL_17;
    case 4:

      v7 = a3;
      goto LABEL_13;
    case 5:
      v9 = a6;
      goto LABEL_12;
    case 6:

LABEL_17:

      return;
    case 7:
      v9 = a2;
LABEL_12:

      v7 = v9;
LABEL_13:

      break;
    default:
      return;
  }
}

double sub_1E40D6214(uint64_t a1)
{
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = *(Strong + 24);
    v18 = *(Strong + 16);
    v12 = *(Strong + 40);
    v15 = *(Strong + 48);
    v16 = *(Strong + 32);
    v14 = *(Strong + 56);
    *(Strong + 16) = a1;
    *(Strong + 24) = v3;
    *(Strong + 32) = v5;
    *(Strong + 40) = v4;
    *(Strong + 48) = v7;
    *(Strong + 56) = v6;
    v13 = *(Strong + 64);
    *(Strong + 64) = 6;

    sub_1E40D60A0(v18, v17, v16, v12, v15, v14, v13);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if ((*(v9 + 16) & 1) == 0)
    {
      *(v8 + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute) = a1;
    }

    OUTLINED_FUNCTION_169();
    sub_1E40CBE10();
  }

  return result;
}

void sub_1E40D6340()
{
  v1 = v0;
  v2 = v0[3];
  v4 = v1[4];
  v3 = v1[5];
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = v1[11];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v18 = *(v9 + 24);
    v19 = *(v9 + 16);
    v20 = v8;
    v13 = *(v9 + 32);
    v16 = *(v9 + 48);
    v17 = *(v9 + 40);
    v15 = *(v9 + 56);
    *(v9 + 16) = v10;
    *(v9 + 24) = v2;
    *(v9 + 32) = v4;
    *(v9 + 40) = v3;
    *(v9 + 48) = v6;
    *(v9 + 56) = v5;
    v14 = *(v9 + 64);
    *(v9 + 64) = 6;

    sub_1E40D60A0(v19, v18, v13, v17, v16, v15, v14);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if ((*(v7 + 16) & 1) == 0)
    {
      *(v20 + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute) = v10;
    }

    OUTLINED_FUNCTION_169();
    sub_1E40CBE10();
  }
}

double sub_1E40D6474(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, char a7)
{
  switch(a7)
  {
    case 0:
    case 3:
      goto LABEL_11;
    case 1:

      sub_1E34AF604(a1, a2);
      return result;
    case 2:

      goto LABEL_11;
    case 4:

      v8 = a3;
      return result;
    case 5:
      v10 = a6;
      goto LABEL_11;
    case 6:

      return result;
    case 7:
      v9 = a2;
LABEL_11:

      break;
    default:
      return result;
  }

  return result;
}

void sub_1E40D65AC(uint64_t a1)
{
  sub_1E40D6FCC(319, &qword_1EE289FC0, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1E40D66A4()
{
  result = qword_1EE288C78;
  if (!qword_1EE288C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FA60, &qword_1E42EB4B0);
    sub_1E40D6728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C78);
  }

  return result;
}

unint64_t sub_1E40D6728()
{
  result = qword_1EE288C88;
  if (!qword_1EE288C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FA10, &qword_1E42EB308);
    sub_1E40D5C90();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C88);
  }

  return result;
}

_BYTE *sub_1E40D67D0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8VideosUI5RouteCIegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8VideosUI18RoutingTransaction33_CB7708BC4FB811FA9ED5B84F5D503870LLC7ContextO(uint64_t a1)
{
  if ((*(a1 + 48) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 48) & 0xF;
  }
}

uint64_t sub_1E40D68E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 >= 0xF8 && *(a1 + 49))
  {
    return OUTLINED_FUNCTION_17_7(*a1 + 247);
  }

  v3 = *(a1 + 48);
  if (v3 > 8)
  {
    return OUTLINED_FUNCTION_17_7(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }
}

uint64_t sub_1E40D691C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E40D6970(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 8;
  }

  *(result + 48) = a2;
  return result;
}