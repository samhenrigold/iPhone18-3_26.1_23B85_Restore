void sub_1E3B0D1B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31510, &unk_1E42B5270);
  v4 = sub_1E4207444();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
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
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        v16 = sub_1E4206F54();
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v25;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
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
    *v2 = v5;
  }
}

uint64_t sub_1E3B0D3C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1E327D33C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FB0, &qword_1E42BA308);
  sub_1E4207644();

  v7 = *(*(v9 + 56) + 8 * v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F98, &qword_1E42BA2F0);
  sub_1E4207664();
  *v3 = v9;
  return v7;
}

uint64_t sub_1E3B0D4BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_22_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return v4;
}

void sub_1E3B0D508(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FB0, &qword_1E42BA308);
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

uint64_t sub_1E3B0D644(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3B0D688(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_1E3280A90(0, &qword_1EE23AFD8, off_1E8728210);
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

uint64_t sub_1E3B0D794(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1E3280A90(0, &qword_1EE23AFD8, off_1E8728210);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E328FCF4(&qword_1EE23B478, &qword_1ECF32FD0, &qword_1E42BA328);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FD0, &qword_1E42BA328);
          v9 = sub_1E374111C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_48_27@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  return sub_1E3270FC8(v3, v4, (v1 - 192));
}

double sub_1E3B0D9E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_55_0();
  sub_1E4200674();

  return result;
}

uint64_t sub_1E3B0DAA0(uint64_t a1)
{
  v2 = type metadata accessor for SportsPlayByPlayItemViewData(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E3B0E134(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsPlayByPlayItemViewData);
  return sub_1E3B0DB40();
}

uint64_t sub_1E3B0DB40()
{
  v2 = OUTLINED_FUNCTION_9_5();
  v3 = type metadata accessor for SportsPlayByPlayItemViewData(v2);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_75();
  sub_1E3B0E134(v0, v1, v5);

  OUTLINED_FUNCTION_67_0();
  sub_1E4200684();
  OUTLINED_FUNCTION_2_116();
  return sub_1E3B0E438();
}

uint64_t sub_1E3B0DC14(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FE0, &qword_1E42BA380);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  v7 = OUTLINED_FUNCTION_88_8();
  v8(v7);
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI27SportsPlayGroupItemViewData__mainItem, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FD8, &qword_1E42BA378);
  sub_1E4200654();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t sub_1E3B0DD1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3B0DD90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3B0DE08(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3B0DE94(void *a1)
{
  OUTLINED_FUNCTION_11_3(v1 + *a1, v5);
  v2 = OUTLINED_FUNCTION_13_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3B0DF00(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FF8, &qword_1E42BA3E0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  v7 = OUTLINED_FUNCTION_88_8();
  v8(v7);
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI27SportsPlayGroupItemViewData__childPlays, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FF0, &qword_1E42BA3D8);
  sub_1E4200654();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t sub_1E3B0E008()
{
  v2 = type metadata accessor for SportsPlayByPlayItemViewData(0);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_57_16();
  type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType(v4);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_6_99();
  v6 = OUTLINED_FUNCTION_67_0();
  sub_1E3B0E134(v6, v7, v8);
  OUTLINED_FUNCTION_63_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_5_115();
    sub_1E3B16910(v1, v0, v9);
    v10 = *v0;

    OUTLINED_FUNCTION_2_116();
    sub_1E3B0E438();
  }

  else
  {
    memcpy(__dst, v1, 0x81uLL);
    v10 = __dst[0];

    sub_1E3B0E190(__dst);
  }

  return v10;
}

uint64_t sub_1E3B0E134(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

void sub_1E3B0E1C0()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for SportsPlayByPlayItemViewData(0);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33000, &qword_1E42BA3E8);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_42_1();
  v14 = *(v13 + 56);
  sub_1E3B0E134(v6, v0, type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType);
  sub_1E3B0E134(v4, v0 + v14, type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_99();
    v15 = OUTLINED_FUNCTION_63_0();
    sub_1E3B0E134(v15, v16, v17);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_5_115();
      sub_1E3B16910(v0 + v14, v1, v18);
      v19 = OUTLINED_FUNCTION_74();
      sub_1E4075AB0(v19, v20);
      sub_1E3B0E438();
      OUTLINED_FUNCTION_125();
      sub_1E3B0E438();
LABEL_9:
      sub_1E3B0E438();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_116();
    sub_1E3B0E438();
  }

  else
  {
    OUTLINED_FUNCTION_6_99();
    sub_1E3B0E134(v0, v2, v21);
    memcpy(v22, v2, 0x81uLL);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      memcpy(v23, (v0 + v14), 0x81uLL);
      sub_1E3B0E48C(v22, v23);
      sub_1E3B0E190(v22);
      sub_1E3B0E190(v23);
      goto LABEL_9;
    }

    sub_1E3B0E190(v22);
  }

  sub_1E325F69C(v0, &qword_1ECF33000);
LABEL_10:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B0E438()
{
  v1 = OUTLINED_FUNCTION_9_5();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1E3B0E48C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_48_0(a1) == *a2 && *(v2 + 8) == *(a2 + 8);
  if (!v4 && (sub_1E42079A4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2 + 16) == *(a2 + 16) && *(v2 + 24) == *(a2 + 24);
  if (!v5 && (sub_1E42079A4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 40);
  v7 = *(a2 + 40);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *(v2 + 32) == *(a2 + 32) && v6 == v7;
    if (!v8 && (sub_1E42079A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = *(v2 + 56);
  v10 = *(a2 + 56);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *(v2 + 48) == *(a2 + 48) && v9 == v10;
    if (!v11 && (sub_1E42079A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = *(v2 + 64) == *(a2 + 64) && *(v2 + 72) == *(a2 + 72);
  if (!v12 && (sub_1E42079A4() & 1) == 0)
  {
    return 0;
  }

  v13 = *(v2 + 88);
  v14 = *(a2 + 88);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_43;
    }

    return 0;
  }

  if (!v14)
  {
    return 0;
  }

  v15 = *(v2 + 80) == *(a2 + 80) && v13 == v14;
  if (!v15 && (sub_1E42079A4() & 1) == 0)
  {
    return 0;
  }

LABEL_43:
  if ((*(v2 + 96) ^ *(a2 + 96)))
  {
    return 0;
  }

  v17 = *(a2 + 112);
  if (*(v2 + 112))
  {
    if (!*(a2 + 112))
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 104) != *(a2 + 104))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = *(a2 + 128);
  if (*(v2 + 128))
  {
    if ((*(a2 + 128) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 120) != *(a2 + 120))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1E3B0E624()
{
  v2 = OUTLINED_FUNCTION_9_5();
  type metadata accessor for SportsPlayByPlayItemViewData(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_6_99();
  sub_1E3B0E134(v1, v1, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_5_115();
    v6 = OUTLINED_FUNCTION_63_0();
    sub_1E3B16910(v6, v7, v8);
    MEMORY[0x1E69124B0](1);
    sub_1E3B1696C(&unk_1ECF33008);
    OUTLINED_FUNCTION_66_17();
    sub_1E4205DB4();
    OUTLINED_FUNCTION_2_116();
    return sub_1E3B0E438();
  }

  else
  {
    memcpy(__dst, v1, 0x81uLL);
    MEMORY[0x1E69124B0](0);
    sub_1E3B0EDE8(v0);
    return sub_1E3B0E190(__dst);
  }
}

uint64_t sub_1E3B0E790()
{
  sub_1E4207B44();
  sub_1E3B0E624();
  return sub_1E4207BA4();
}

uint64_t sub_1E3B0E7D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3B0E008();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3B0E800(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E3B0E624();
  return sub_1E4207BA4();
}

void sub_1E3B0E840()
{
  OUTLINED_FUNCTION_31_1();
  v80 = v0;
  v70 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33010, &qword_1E42BA3F0);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v79 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  v78 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33018, &qword_1E42BA3F8);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v73 = v13;
  OUTLINED_FUNCTION_138();
  v14 = sub_1E42051B4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_5();
  v65 = v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v65 - v21;
  v23 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  v30 = sub_1E4205204();
  if (v31)
  {
    v76 = v31;
    v77 = v30;
  }

  else
  {
    sub_1E41FE614();
    v32 = sub_1E41FE5E4();
    v76 = v33;
    v77 = v32;
    (*(v25 + 8))(v29, v23);
  }

  v34 = v3;
  sub_1E42051C4();
  v35 = sub_1E4205104();
  v37 = v36;
  v38 = *(v16 + 8);
  v38(v22, v14);
  v39 = v79;
  if (v37)
  {
    v75 = v35;
  }

  else
  {
    v75 = sub_1E42051F4();
    v37 = v40;
  }

  v74 = v37;
  sub_1E42051C4();
  v41 = sub_1E42051A4();
  v71 = v42;
  v72 = v41;
  v43 = OUTLINED_FUNCTION_123_0();
  (v38)(v43);
  sub_1E42051C4();
  v44 = sub_1E42050C4();
  v68 = v45;
  v69 = v44;
  v46 = OUTLINED_FUNCTION_123_0();
  (v38)(v46);
  sub_1E407631C();
  v66 = v48;
  v67 = v47;

  v49 = v65;
  sub_1E42051C4();
  v50 = v73;
  sub_1E42050D4();
  v38(v49, v14);
  v51 = sub_1E42050F4();
  if (__swift_getEnumTagSinglePayload(v50, 1, v51) == 1)
  {
    sub_1E325F69C(v50, &qword_1ECF33018);
    v52 = 0;
    v53 = 0;
  }

  else
  {
    v52 = sub_1E42050E4();
    v53 = v54;
    (*(*(v51 - 8) + 8))(v50, v51);
  }

  v55 = v78;
  sub_1E3DF858C();
  v56 = sub_1E42059B4();
  if (__swift_getEnumTagSinglePayload(v55, 1, v56) == 1)
  {
    sub_1E325F69C(v55, &qword_1ECF33010);
    v57 = 0;
    v58 = 1;
  }

  else
  {
    v57 = MEMORY[0x1E69102F0]();
    v58 = v59;
    (*(*(v56 - 8) + 8))(v55, v56);
  }

  v81 = v58 & 1;
  sub_1E3DF858C();
  if (__swift_getEnumTagSinglePayload(v39, 1, v56) == 1)
  {

    sub_1E325F69C(v39, &qword_1ECF33010);
    v60 = 0;
    v61 = 1;
  }

  else
  {
    v60 = sub_1E42059A4();
    v61 = v62;

    (*(*(v56 - 8) + 8))(v39, v56);
  }

  v63 = v80 & 1;
  v64 = v81;
  *v5 = v77;
  *(v5 + 8) = v76;
  *(v5 + 16) = v75;
  *(v5 + 24) = v74;
  *(v5 + 32) = v72;
  *(v5 + 40) = v71;
  *(v5 + 48) = v69;
  *(v5 + 56) = v68;
  *(v5 + 64) = v67;
  *(v5 + 72) = v66;
  *(v5 + 80) = v52;
  *(v5 + 88) = v53;
  *(v5 + 96) = v63;
  *(v5 + 104) = v57;
  *(v5 + 112) = v64;
  *(v5 + 120) = v60;
  *(v5 + 128) = v61 & 1;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B0ED94()
{
  if (*(v0 + 112) & 1) != 0 || (*(v0 + 128))
  {
    return OUTLINED_FUNCTION_165();
  }

  type metadata accessor for BaseballVoiceOverUtility();
  v2 = OUTLINED_FUNCTION_32_0();
  return sub_1E3BE8DA8(v2, v3);
}

uint64_t sub_1E3B0EDE8(uint64_t a1)
{
  sub_1E4206014();
  sub_1E4206014();
  if (*(v1 + 40))
  {
    sub_1E4207B64();
    OUTLINED_FUNCTION_63_0();
    sub_1E4206014();
  }

  else
  {
    sub_1E4207B64();
  }

  if (*(v1 + 56))
  {
    sub_1E4207B64();
    OUTLINED_FUNCTION_63_0();
    sub_1E4206014();
  }

  else
  {
    sub_1E4207B64();
  }

  sub_1E4206014();
  if (*(v1 + 88))
  {
    sub_1E4207B64();
    OUTLINED_FUNCTION_63_0();
    sub_1E4206014();
  }

  else
  {
    sub_1E4207B64();
  }

  sub_1E4207B64();
  if (*(v1 + 112) == 1)
  {
    sub_1E4207B64();
  }

  else
  {
    v2 = *(v1 + 104);
    sub_1E4207B64();
    MEMORY[0x1E69124B0](v2);
  }

  if (*(v1 + 128) == 1)
  {
    return sub_1E4207B64();
  }

  v4 = *(v1 + 120);
  sub_1E4207B64();
  return MEMORY[0x1E69124B0](v4);
}

uint64_t sub_1E3B0EF1C()
{
  sub_1E4207B44();
  sub_1E3B0EDE8(v1);
  return sub_1E4207BA4();
}

uint64_t sub_1E3B0EF64(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E3B0EDE8(v2);
  return sub_1E4207BA4();
}

void sub_1E3B0F020()
{
  OUTLINED_FUNCTION_31_1();
  v52 = v1;
  v65 = v4;
  v58 = v5;
  v51 = v6;
  v59 = v7;
  v9 = v8;
  type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType(0);
  OUTLINED_FUNCTION_0_10();
  v64 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_57_16();
  v12 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  type metadata accessor for SportsPlayByPlayItemViewData(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_34_1();
  v18 = v9;
  v19 = sub_1E3FDF644();
  if (!v19)
  {

    type metadata accessor for SportsPlayGroupItemViewData(0);
    swift_deallocPartialClassInstance();
    v48 = OUTLINED_FUNCTION_97_8();
LABEL_32:
    sub_1E325F69C(v48, &qword_1ECF33020);
    (*(v14 + 8))(v0, v12);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  *(v52 + 16) = v18;
  v50 = v14;
  v57 = v12;
  v55 = *(v14 + 16);
  v55(v2, v59, v12);
  sub_1E3743538(v58, v68, &qword_1ECF33020, &qword_1E42BA400);
  v56 = v65;

  v20 = v19;

  sub_1E3B050E8();
  v49 = v20;
  v63 = v2;
  sub_1E40719DC();
  OUTLINED_FUNCTION_11_3(v52 + OBJC_IVAR____TtC8VideosUI27SportsPlayGroupItemViewData__mainItem, v68);
  OUTLINED_FUNCTION_16_75();
  v21 = OUTLINED_FUNCTION_17_11();
  sub_1E3B0E134(v21, v22, v23);
  sub_1E4200634();
  OUTLINED_FUNCTION_2_116();
  sub_1E3B0E438();
  swift_endAccess();
  sub_1E3FDF8C0();
  v25 = v24;
  v26 = sub_1E32AE9B0(v24);
  if (!v26)
  {

    v28 = MEMORY[0x1E69E7CC0];
LABEL_31:
    v0 = OBJC_IVAR____TtC8VideosUI27SportsPlayGroupItemViewData__childPlays;
    OUTLINED_FUNCTION_11_3(v52 + OBJC_IVAR____TtC8VideosUI27SportsPlayGroupItemViewData__childPlays, v66);
    v67 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FE8, &qword_1E42BA388);
    sub_1E4200634();
    swift_endAccess();

    *(v52 + OBJC_IVAR____TtC8VideosUI27SportsPlayGroupItemViewData_playModelIndex) = v51;
    v48 = OUTLINED_FUNCTION_97_8();
    v12 = v57;
    v14 = v50;
    goto LABEL_32;
  }

  v27 = v26;
  v67 = MEMORY[0x1E69E7CC0];
  sub_1E3B165E4(0, v26 & ~(v26 >> 63), 0);
  if (v27 < 0)
  {
    goto LABEL_39;
  }

  v54 = v3;
  v28 = v67;
  v29 = sub_1E32AE9B0(v25);
  v30 = 0;
  v61 = v25 & 0xC000000000000001;
  v53 = v25 & 0xFFFFFFFFFFFFFF8;
  v62 = v29 & ~(v29 >> 63);
  v60 = v25;
  while (v62 != v30)
  {
    v31 = v27;
    if (v61)
    {
      v32 = MEMORY[0x1E6911E60](v30, v25);
      v33 = v63;
    }

    else
    {
      v33 = v63;
      if (v30 >= *(v53 + 16))
      {
        goto LABEL_35;
      }

      v32 = *(v25 + 8 * v30 + 32);
    }

    if (sub_1E3FDF778())
    {
      v55(v33, v59, v57);
      sub_1E3743538(v58, v66, &qword_1ECF33020, &qword_1E42BA400);

      v34 = v56;
      v35 = v32;
      sub_1E40719DC();
      OUTLINED_FUNCTION_5_115();
      sub_1E3B16910(v54, v0, v36);
      goto LABEL_23;
    }

    sub_1E3FDF8C0();
    v38 = v37;
    if (v37 >> 62)
    {
      v39 = sub_1E4207384();
      if (v39)
      {
LABEL_14:
        v40 = __OFSUB__(v39, 1);
        v41 = v39 - 1;
        if (v40)
        {
          goto LABEL_36;
        }

        if ((v38 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x1E6911E60](v41, v38);
        }

        else
        {
          if ((v41 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          if (v41 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v42 = *(v38 + 8 * v41 + 32);
        }

        v43 = v42;

        sub_1E4205234();
        v44 = v32;
        sub_1E4206F64();

        goto LABEL_22;
      }
    }

    else
    {
      v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
        goto LABEL_14;
      }
    }

LABEL_22:

    v45 = v32;
    sub_1E3B0E840();
    memcpy(v0, v68, 0x81uLL);
LABEL_23:
    swift_storeEnumTagMultiPayload();

    v67 = v28;
    v47 = *(v28 + 16);
    v46 = *(v28 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_1E3B165E4((v46 > 1), v47 + 1, 1);
      v28 = v67;
    }

    *(v28 + 16) = v47 + 1;
    sub_1E3B16910(v0, v28 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v47, type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType);
    v25 = v60;
    if (v30 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_34;
    }

    ++v30;
    v27 = v31;
    if (v31 == v30)
    {

      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_1E3B0F794()
{

  v1 = OBJC_IVAR____TtC8VideosUI27SportsPlayGroupItemViewData__mainItem;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FD8, &qword_1E42BA378);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC8VideosUI27SportsPlayGroupItemViewData__childPlays;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FF0, &qword_1E42BA3D8);
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_1E3B0F84C()
{
  sub_1E3B0F794();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3B0F8A4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SportsPlayGroupItemViewData(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

uint64_t sub_1E3B0F8E4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SportsPlayGroupItemViewData(0);
  result = sub_1E42074D4();
  *a2 = result;
  return result;
}

void sub_1E3B0F928()
{
  OUTLINED_FUNCTION_93();
  v34 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33030, &qword_1E42BA438) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33038, &qword_1E42BA440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_1();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33040, &qword_1E42BA448);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_35_3();
  *v7 = sub_1E4201D44();
  *(v7 + 1) = 0;
  v7[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33048, &unk_1E42BA450);
  sub_1E3B0FCB8();
  v10 = sub_1E4203E64();
  OUTLINED_FUNCTION_69_14();
  v33 = v0;
  v12 = (v0 + v11);
  v14 = v12[1];
  v15 = *(v12 + 16);
  v36 = *v12;
  v13 = v36;
  v37 = v14;
  v38 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8, &qword_1E42B22C0);
  MEMORY[0x1E690E3F0](&v35);
  v17 = v35;
  v18 = &v7[*(v4 + 44)];
  *v18 = v10;
  v18[8] = v17;
  v36 = v13;
  v37 = v14;
  v38 = v15;
  MEMORY[0x1E690E3F0](&v35, v16);
  v19 = v35;
  if (_MergedGlobals_202[0] != -1)
  {
    OUTLINED_FUNCTION_0_146(_MergedGlobals_202);
  }

  v20 = 28;
  if (v19)
  {
    v20 = 27;
  }

  v21 = sub_1E38F08C4(_MergedGlobals_202[v20 + 3]);
  v22 = sub_1E4202734();
  sub_1E3741EA0(v7, v2, &qword_1ECF33030, &qword_1E42BA438);
  v23 = v2 + *(v31 + 36);
  *v23 = v21;
  *(v23 + 8) = v22;
  if (_MergedGlobals_202[0] != -1)
  {
    OUTLINED_FUNCTION_0_146(_MergedGlobals_202);
  }

  v24 = qword_1EE28BD80;
  v25 = (v1 + *(v32 + 36));
  v26 = *(sub_1E4201534() + 20);
  v27 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  (*(v28 + 104))(v25 + v26, v27);
  *v25 = v24;
  v25[1] = v24;
  *(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0, &unk_1E42AC0E0) + 36)) = 256;
  v29 = sub_1E3741EA0(v2, v1, &qword_1ECF33038, &qword_1E42BA440);
  MEMORY[0x1EEE9AC00](v29);
  *(&v31 - 2) = v33;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33050, &qword_1E42BA460);
  sub_1E3B169F0();
  sub_1E3B16C44();
  sub_1E3E35D1C(v30, v34);
  sub_1E325F69C(v1, &qword_1ECF33040);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3B0FCB8()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v118 = v4;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF332C0, &qword_1E42BACC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v110 = v6;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF332C8, &qword_1E42BACD0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v109 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_106_10();
  sub_1E4201B04();
  OUTLINED_FUNCTION_0_10();
  v105 = v11;
  v106 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v104 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v99 = v14;
  v15 = OUTLINED_FUNCTION_138();
  v16 = type metadata accessor for SportsPlayGroupCellDivider(v15);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = (v19 - v18);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF331D0, &qword_1E42BAB80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v23 = v22;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF331D8, &qword_1E42BAB88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  v103 = v25;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF331E0, &qword_1E42BAB90);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_5();
  v107 = v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  v100 = &v93 - v29;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_25_3();
  v114 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF332D0, &qword_1E42BACD8);
  v33 = OUTLINED_FUNCTION_17_2(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_5();
  v116 = v34;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_25_3();
  v113 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF332D8, &qword_1E42BACE0);
  v38 = OUTLINED_FUNCTION_17_2(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_5();
  v115 = v39;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_34_1();
  *v1 = sub_1E4203DA4();
  v1[1] = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF332E0, &qword_1E42BACE8);
  sub_1E3B10514(v3, v1 + *(v42 + 44));
  v43 = type metadata accessor for SportsPlayGroupCell(0);
  v44 = v3 + *(v43 + 28);
  v45 = *v44;
  v46 = *(v44 + 8);
  LODWORD(v44) = *(v44 + 16);
  v97 = v45;
  v121[0] = v45;
  v121[1] = v46;
  v112 = v44;
  LOBYTE(v121[2]) = v44;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8, &qword_1E42B22C0);
  MEMORY[0x1E690E3F0](v120);
  if (LOBYTE(v120[0]) == 1)
  {
    v96 = v46;
    if (_MergedGlobals_202[0] != -1)
    {
      OUTLINED_FUNCTION_0_146(_MergedGlobals_202);
    }

    memcpy(v121, &unk_1EE28BC80, sizeof(v121));
    sub_1E3D4DBE8();
    v48 = v47;
    *v20 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8, &qword_1E429C690);
    v49 = swift_storeEnumTagMultiPayload();
    *(v20 + *(v16 + 20)) = v48;
    v50 = *(v43 + 20);
    v93 = v3;
    v51 = (**(v3 + v50 + 8) + 160);
    v94 = *v51;
    v95 = v51;
    v52 = *((v94)(v49) + 16);

    if (v52)
    {
      v53 = 1.0;
    }

    else
    {
      v53 = 0.0;
    }

    v54 = OUTLINED_FUNCTION_123_0();
    sub_1E3B16910(v54, v55, v56);
    v57 = v99;
    *(v23 + *(v98 + 36)) = v53;
    sub_1E4201AF4();
    v58 = v105;
    v59 = v106;
    (*(v105 + 16))(v104, v57, v106);
    OUTLINED_FUNCTION_1_142();
    sub_1E3B1696C(v60);
    OUTLINED_FUNCTION_156_1();
    v61 = sub_1E4200E14();
    (*(v58 + 8))(v57, v59);
    v62 = v103;
    sub_1E3741EA0(v23, v103, &qword_1ECF331D0, &qword_1E42BAB80);
    *(v62 + *(v101 + 36)) = v61;
    v63 = sub_1E4203E64();
    OUTLINED_FUNCTION_81_9();
    LOBYTE(v61) = v119;
    v64 = v62;
    v65 = v100;
    sub_1E3741EA0(v64, v100, &qword_1ECF331D8, &qword_1E42BAB88);
    v66 = v65 + *(v102 + 36);
    *v66 = v63;
    *(v66 + 8) = v61;
    v67 = v114;
    sub_1E3741EA0(v65, v114, &qword_1ECF331E0, &qword_1E42BAB90);
    *v0 = sub_1E4201D44();
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF332F0, &qword_1E42BACF8);
    sub_1E3B10E50(v93);
    v68 = sub_1E4203E64();
    v69 = v94();
    v70 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF332F8, &qword_1E42BAD00) + 36));
    *v70 = v68;
    v70[1] = v69;
    v71 = sub_1E4203E64();
    OUTLINED_FUNCTION_81_9();
    v72 = v119;
    v73 = v0 + *(v108 + 36);
    *v73 = v71;
    *(v73 + 8) = v72;
    v74 = v67;
    v75 = v107;
    sub_1E3743538(v74, v107, &qword_1ECF331E0, &qword_1E42BAB90);
    v76 = v109;
    OUTLINED_FUNCTION_113_1(v0, v109);
    v77 = v110;
    sub_1E3743538(v75, v110, &qword_1ECF331E0, &qword_1E42BAB90);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33300, &qword_1E42BAD08);
    OUTLINED_FUNCTION_113_1(v76, v77 + *(v78 + 48));
    v79 = OUTLINED_FUNCTION_67_0();
    sub_1E325F69C(v79, v80);
    sub_1E325F69C(v114, &qword_1ECF331E0);
    v81 = OUTLINED_FUNCTION_21_42();
    sub_1E325F69C(v81, v82);
    sub_1E325F69C(v75, &qword_1ECF331E0);
    v83 = v113;
    sub_1E3741EA0(v77, v113, &qword_1ECF332C0, &qword_1E42BACC8);
    v84 = 0;
  }

  else
  {
    v84 = 1;
    v83 = v113;
  }

  __swift_storeEnumTagSinglePayload(v83, v84, 1, v117);
  v85 = v115;
  OUTLINED_FUNCTION_113_1(v1, v115);
  v86 = v116;
  sub_1E3743538(v83, v116, &qword_1ECF332D0, &qword_1E42BACD8);
  v87 = v118;
  OUTLINED_FUNCTION_113_1(v85, v118);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF332E8, &qword_1E42BACF0);
  sub_1E3743538(v86, v87 + *(v88 + 48), &qword_1ECF332D0, &qword_1E42BACD8);
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v89, v90);
  sub_1E325F69C(v1, &qword_1ECF332D8);
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v91, v92);
  sub_1E325F69C(v85, &qword_1ECF332D8);
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3B10514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v60 = v5;
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_3();
  v59 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33398, &qword_1E42BAD58);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v49 = v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF333A0, &qword_1E42BAD60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v54 = v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF333A8, &qword_1E42BAD68);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v56 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF333B0, &qword_1E42BAD70);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v58 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v57 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8, &unk_1E429B6A0);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_26_2();
  v21 = type metadata accessor for SportsPlayByPlayItemViewData(0);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  type metadata accessor for PlayCell(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF333B8, &qword_1E42BAD78);
  OUTLINED_FUNCTION_0_10();
  v52 = v25;
  v53 = v24;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_5();
  v51 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_77_0();
  v28 = *(a1 + *(type metadata accessor for SportsPlayGroupCell(0) + 20) + 8);
  (*(*v28 + 112))();
  OUTLINED_FUNCTION_37_35();
  v47 = v30;
  v48 = v29;
  v67[0] = v29;
  v67[1] = v30;
  v46 = v31;
  LOBYTE(v67[2]) = v31;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8, &qword_1E42B22C0);
  sub_1E4203AB4();
  sub_1E41C58F8();
  OUTLINED_FUNCTION_98_7();
  sub_1E41AE768();
  sub_1E3B1696C(&unk_1ECF33368);
  View.accessibilityIdentifier(key:location:)();
  sub_1E3B0E438();
  *v49 = sub_1E4201D44();
  *(v49 + 8) = 0;
  *(v49 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF333C0, &qword_1E42BAD80);
  sub_1E3B10C30();
  LOBYTE(a1) = sub_1E4202754();
  v32 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != a1)
  {
    v32 = sub_1E4202774();
  }

  if (_MergedGlobals_202[0] != -1)
  {
    OUTLINED_FUNCTION_0_146(_MergedGlobals_202);
  }

  memcpy(v67, &unk_1EE28BC80, sizeof(v67));
  sub_1E3D4D988();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v49, v54, &qword_1ECF33398, &qword_1E42BAD58);
  v33 = (v54 + *(v50 + 36));
  *v33 = v32;
  OUTLINED_FUNCTION_11_4(v33);
  v34 = *((*(*v28 + 160))() + 16);

  if (v34)
  {
    v64 = v48;
    v65 = v47;
    v66 = v46;
    MEMORY[0x1E690E3F0](&v63, v45);
    if (v63)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = 1.0;
    }
  }

  else
  {
    v35 = 0.0;
  }

  sub_1E3741EA0(v54, v56, &qword_1ECF333A0, &qword_1E42BAD60);
  *(v56 + *(v55 + 36)) = v35;
  sub_1E4201C94();
  sub_1E3B18474();
  sub_1E4203294();
  (*(v60 + 8))(v59, v61);
  sub_1E325F69C(v56, &qword_1ECF333A8);
  v36 = *(v52 + 16);
  v36(v51, v2, v53);
  sub_1E3743538(v57, v58, &qword_1ECF333B0, &qword_1E42BAD70);
  v36(a2, v51, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF333E0, &qword_1E42BAD88);
  v37 = OUTLINED_FUNCTION_76_7();
  sub_1E3743538(v37, v38, &qword_1ECF333B0, &qword_1E42BAD70);
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v39, v40);
  v41 = *(v52 + 8);
  v41(v2, v53);
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v42, v43);
  return (v41)(v51, v53);
}

uint64_t sub_1E3B10C30()
{
  v2 = OUTLINED_FUNCTION_173();
  v3 = type metadata accessor for Chevron(v2);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  type metadata accessor for SportsPlayGroupCell(0);
  OUTLINED_FUNCTION_20_10();
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8, &qword_1E42B22C0);
  MEMORY[0x1E690E3F0]((&v22 + 7), v15);
  v16 = HIBYTE(v22);
  *v1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E428, &qword_1E42AC180);
  OUTLINED_FUNCTION_95_6();
  *(v1 + *(v4 + 28)) = (v16 & 1) == 0;
  v17 = OUTLINED_FUNCTION_171_0();
  sub_1E3B16910(v17, v18, v19);
  sub_1E3B0E134(v11, v7, type metadata accessor for Chevron);
  *v0 = 0;
  *(v0 + 8) = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF333E8, &qword_1E42BAD90);
  sub_1E3B0E134(v7, v0 + *(v20 + 48), type metadata accessor for Chevron);
  sub_1E3B0E438();
  OUTLINED_FUNCTION_13_8();
  return sub_1E3B0E438();
}

uint64_t sub_1E3B10DE8@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8, &qword_1E429C690);
  swift_storeEnumTagMultiPayload();
  result = OUTLINED_FUNCTION_92_6();
  *(a1 + v5) = a2;
  return result;
}

uint64_t sub_1E3B10E50(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_173();
  v3 = type metadata accessor for SportsPlayGroupCell(v2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v16[1] = (*(**(a1 + *(v7 + 28) + 8) + 160))(v6);
  v8 = OUTLINED_FUNCTION_58_1();
  sub_1E3B0E134(v8, v9, v10);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_1E3B16910(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for SportsPlayGroupCell);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FE8, &qword_1E42BA388);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33308, &qword_1E42BAD10);
  OUTLINED_FUNCTION_55_0();
  sub_1E37AE398(v13);
  sub_1E3B180EC();
  OUTLINED_FUNCTION_44_34();
  sub_1E3B1696C(v14);
  return sub_1E4203B44();
}

void sub_1E3B1105C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_21_5();
  a25 = v28;
  a26 = v29;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8, &unk_1E429B6A0);
  OUTLINED_FUNCTION_17_2(v32);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  v35 = OUTLINED_FUNCTION_20(v34);
  v36 = type metadata accessor for PlayCell(v35);
  v37 = OUTLINED_FUNCTION_17_2(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v38);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33360, &qword_1E42BAD30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v40);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33348, &qword_1E42BAD28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33378, &qword_1E42BAD38);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v44);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33340, &qword_1E42BAD20);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_2_5();
  v139 = v46;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_25_3();
  v49 = OUTLINED_FUNCTION_20(v48);
  v50 = type metadata accessor for SportsPlayByPlayItemViewData(v49);
  v51 = OUTLINED_FUNCTION_17_2(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_2_5();
  v133 = v52;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33380, &qword_1E42BAD40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v56);
  v151 = sub_1E4201B04();
  OUTLINED_FUNCTION_0_10();
  v146 = v57;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v59);
  v148 = sub_1E4201084();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v61);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33388, &unk_1E42BAD48);
  OUTLINED_FUNCTION_0_10();
  v149 = v62;
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_2_5();
  v147 = v64;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_25_3();
  v67 = OUTLINED_FUNCTION_20(v66);
  v132 = type metadata accessor for SportsPlayGroupChildView(v67);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33328, &qword_1E42BAD18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_44();
  v71 = OUTLINED_FUNCTION_20(v70);
  type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType(v71);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5();
  v73 = OUTLINED_FUNCTION_57_16();
  v74 = *(v31 + *(type metadata accessor for SportsPlayGroupCell(v73) + 20) + 8);
  (*(*v74 + 160))();
  v75 = OUTLINED_FUNCTION_67_0();
  sub_1E3935390(v75, v76);

  OUTLINED_FUNCTION_6_99();
  v77 = OUTLINED_FUNCTION_13_8();
  sub_1E3B0E134(v77, v78, v79);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_5_115();
    sub_1E3B16910(v26, v144, v80);
    OUTLINED_FUNCTION_16_75();
    sub_1E3B0E134(v144, v133, v81);
    OUTLINED_FUNCTION_37_35();
    v156[0] = v82;
    v156[1] = v83;
    LOBYTE(v156[2]) = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8, &qword_1E42B22C0);
    sub_1E4203AB4();
    sub_1E41C58F8();
    sub_1E41AE768();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BD0;
    v86 = sub_1E4202744();
    *(inited + 32) = v86;
    *(inited + 33) = sub_1E4202764();
    v87 = sub_1E4202784();
    *(inited + 34) = v87;
    v88 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v86)
    {
      v88 = sub_1E4202774();
    }

    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_110_6();
    if (!v89)
    {
      v88 = sub_1E4202774();
    }

    sub_1E4202774();
    if (sub_1E4202774() != v87)
    {
      v88 = sub_1E4202774();
    }

    if (_MergedGlobals_202[0] != -1)
    {
      OUTLINED_FUNCTION_0_146(_MergedGlobals_202);
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();
    v90 = OUTLINED_FUNCTION_74();
    sub_1E3B16910(v90, v91, v92);
    v93 = (v136 + *(v135 + 36));
    *v93 = v88;
    OUTLINED_FUNCTION_15_3(v93);
    v94 = sub_1E4202734();
    v95 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v94)
    {
      v95 = sub_1E4202774();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    sub_1E3741EA0(v136, v137, &qword_1ECF33360, &qword_1E42BAD30);
    v96 = (v137 + *(v138 + 36));
    *v96 = v95;
    OUTLINED_FUNCTION_11_4(v96);
    OUTLINED_FUNCTION_55_0();
    sub_1E3B16EA4(v97);
    View.accessibilityIdentifier(key:location:)();
    OUTLINED_FUNCTION_55_0();
    sub_1E325F69C(v98, v99);
    OUTLINED_FUNCTION_111_3();
    sub_1E4201AF4();
    OUTLINED_FUNCTION_41_34();
    v101 = sub_1E3B1696C(v100);
    OUTLINED_FUNCTION_1_142();
    sub_1E3B1696C(v102);
    sub_1E4200B04();
    (*(v146 + 8))(v145, v151);
    v103 = OUTLINED_FUNCTION_85_8();
    v104(v103);
    (*(v149 + 16))(v147, v141, v150);
    v156[0] = v148;
    v156[1] = v151;
    v156[2] = v101;
    OUTLINED_FUNCTION_40_37(&a21);
    swift_getOpaqueTypeConformance2();
    v105 = sub_1E4200E14();
    v106 = OUTLINED_FUNCTION_21_42();
    v107(v106);
    v108 = OUTLINED_FUNCTION_58_1();
    v109(v108);
    *(v139 + *(v143 + 36)) = v105;
    OUTLINED_FUNCTION_12_12();
    sub_1E3741EA0(v110, v111, v112, v113);
    sub_1E3743538(v140, v142, &qword_1ECF33340, &qword_1E42BAD20);
    swift_storeEnumTagMultiPayload();
    sub_1E3B18178();
    sub_1E3B18290();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v114, v115);
    OUTLINED_FUNCTION_2_116();
    sub_1E3B0E438();
  }

  else
  {
    memcpy(v156, v26, 0x81uLL);
    OUTLINED_FUNCTION_37_35();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8, &qword_1E42B22C0);
    sub_1E4203AB4();
    *v27 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E428, &qword_1E42AC180);
    swift_storeEnumTagMultiPayload();
    *(v27 + v132[5]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
    swift_storeEnumTagMultiPayload();
    memcpy(v27 + v132[6], v156, 0x81uLL);
    v116 = v27 + v132[7];
    *v116 = v153;
    *(v116 + 1) = v154;
    v116[16] = v155;
    sub_1E3B1696C(&unk_1ECF33330);
    View.accessibilityIdentifier(key:location:)();
    sub_1E3B0E438();
    OUTLINED_FUNCTION_111_3();
    sub_1E4201AF4();
    OUTLINED_FUNCTION_41_34();
    sub_1E3B1696C(v117);
    OUTLINED_FUNCTION_1_142();
    sub_1E3B1696C(v118);
    sub_1E4200B04();
    v119 = OUTLINED_FUNCTION_171_0();
    v120(v119);
    v121 = OUTLINED_FUNCTION_85_8();
    v122(v121);
    v123 = OUTLINED_FUNCTION_17_11();
    v124(v123);
    OUTLINED_FUNCTION_40_37(&a14);
    swift_getOpaqueTypeConformance2();
    v125 = sub_1E4200E14();
    (*(v149 + 8))(v141, v150);
    *(v134 + *(v152 + 36)) = v125;
    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v126, v127, v128, v129);
    swift_storeEnumTagMultiPayload();
    sub_1E3B18178();
    sub_1E3B18290();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v130, v131);
  }

  OUTLINED_FUNCTION_20_0();
}

void sub_1E3B11E8C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  OUTLINED_FUNCTION_173();
  sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33090, &qword_1E42BA470);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF332B8, &qword_1E42BACC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_69_14();
  OUTLINED_FUNCTION_20_10();
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8, &qword_1E42B22C0);
  MEMORY[0x1E690E3F0](&v17, v10);
  if (v17 == 1)
  {
    sub_1E3743538(v3, v0, &qword_1ECF33040, &qword_1E42BA448);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33040, &qword_1E42BA448);
    OUTLINED_FUNCTION_45_31();
    sub_1E3B16CFC(v11);
    sub_1E3B169F0();
    OUTLINED_FUNCTION_74();
    sub_1E4201F44();
  }

  else
  {
    sub_1E4201C94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33040, &qword_1E42BA448);
    sub_1E3B169F0();
    sub_1E4203294();
    v12 = OUTLINED_FUNCTION_17_11();
    v13(v12);
    v14 = OUTLINED_FUNCTION_171_0();
    sub_1E3743538(v14, v15, &qword_1ECF33090, &qword_1E42BA470);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_45_31();
    sub_1E3B16CFC(v16);
    OUTLINED_FUNCTION_74();
    sub_1E4201F44();
    sub_1E325F69C(v1, &qword_1ECF33090);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B1214C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  sub_1E3741EA0(a1, a9, &qword_1ECF2E430, &qword_1E42AC188);
  v15 = type metadata accessor for SportsPlayGroupCell(0);
  v16 = (a9 + v15[5]);
  type metadata accessor for SportsPlayGroupItemViewData(0);
  OUTLINED_FUNCTION_15_86();
  sub_1E3B1696C(v17);
  result = sub_1E42010C4();
  *v16 = result;
  v16[1] = v19;
  v20 = a9 + v15[6];
  *v20 = a3;
  *(v20 + 8) = a4;
  *(v20 + 16) = a5;
  v21 = a9 + v15[7];
  *v21 = a6;
  *(v21 + 8) = a7;
  *(v21 + 16) = a8;
  return result;
}

void sub_1E3B12248()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v3 = sub_1E4201B04();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_77_0();
  type metadata accessor for Chevron(0);
  sub_1E42037C4();
  sub_1E4201AF4();
  (*(v5 + 16))(v9, v1, v3);
  OUTLINED_FUNCTION_1_142();
  sub_1E3B1696C(v11);
  OUTLINED_FUNCTION_17_11();
  sub_1E4200E14();
  (*(v5 + 8))(v1, v3);
  sub_1E4203E64();
  if (_MergedGlobals_202[0] != -1)
  {
    OUTLINED_FUNCTION_0_146(_MergedGlobals_202);
  }

  memcpy(v15, &unk_1EE28BC80, sizeof(v15));
  sub_1E39305C4(v0);
  v12 = sub_1E3D4E754();
  v13 = OUTLINED_FUNCTION_53();
  v14(v13);
  sub_1E38F08C4(v12);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33178, &qword_1E42BAB40);
  sub_1E3B17D98();
  sub_1E4202ED4();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B1252C()
{
  OUTLINED_FUNCTION_31_1();
  v35[1] = v2;
  v35[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33098, &qword_1E42BA4E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_93_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF330A0, &qword_1E42BA4F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF330A8, &qword_1E42BA4F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v35 - v7;
  v9 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v13 = OUTLINED_FUNCTION_57_16();
  type metadata accessor for SportsPlayGroupChildView(v13);
  sub_1E3746E10(v0);
  v14 = sub_1E42012B4();
  (*(v11 + 8))(v0, v9);
  if (v14)
  {
    v15 = sub_1E4201D54();
    if (_MergedGlobals_202[0] != -1)
    {
      OUTLINED_FUNCTION_0_146(_MergedGlobals_202);
    }

    v16 = qword_1EE28BE48;
    *v8 = v15;
    *(v8 + 1) = v16;
    v8[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF330D8, &qword_1E42BA510);
    sub_1E3B140C4();
    v17 = sub_1E4202764();
    sub_1E4200A54();
    v18 = &v8[*(v5 + 36)];
    *v18 = v17;
    *(v18 + 1) = v19;
    *(v18 + 2) = v20;
    *(v18 + 3) = v21;
    *(v18 + 4) = v22;
    v18[40] = 0;
    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v23, v24, v25, v26);
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    sub_1E3B16DCC();
    OUTLINED_FUNCTION_1();
    sub_1E37AE398(v27);
    sub_1E4201F44();
  }

  else
  {
    *v1 = sub_1E4201D44();
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF330B0, &qword_1E42BA500);
    sub_1E3B1286C();
    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v28, v29, v30, v31);
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    sub_1E3B16DCC();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_21_1();
    sub_1E37AE398(v32);
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v33, v34);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B1286C()
{
  OUTLINED_FUNCTION_21_5();
  v5 = v4;
  v117 = v6;
  sub_1E4201B04();
  OUTLINED_FUNCTION_0_10();
  v114 = v8;
  v115 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v111 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v112 = v11;
  v12 = OUTLINED_FUNCTION_138();
  v101 = type metadata accessor for SportsPlayGroupCellDivider(v12);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_3();
  v103 = v14;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF331D0, &qword_1E42BAB80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v109 = v16;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF331D8, &qword_1E42BAB88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v108 = v18;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF331E0, &qword_1E42BAB90);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_5();
  v116 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  v105 = &v92 - v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25_3();
  v110 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33240, &qword_1E42BAC20);
  OUTLINED_FUNCTION_17_2(v25);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_42_1();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33248, &qword_1E42BAC28);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_5();
  v113 = v28;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v29);
  v95 = &v92 - v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_25_3();
  v119 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33250, &qword_1E42BAC30);
  OUTLINED_FUNCTION_17_2(v33);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_93_2();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33258, &qword_1E42BAC38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_26_2();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33260, &qword_1E42BAC40);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_5();
  v104 = v38;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_25_3();
  v118 = v41;
  if (_MergedGlobals_202[0] != -1)
  {
    OUTLINED_FUNCTION_0_146(_MergedGlobals_202);
  }

  v42 = qword_1EE28BE20;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_36_0();
  v94 = v42;
  sub_1E4200D94();
  v99 = v125;
  v100 = v123;
  v97 = v128;
  v98 = v127;
  v138 = 1;
  v137 = v124;
  v136 = v126;
  v43 = sub_1E4201B84();
  v44 = qword_1EE28BE18;
  *v3 = v43;
  *(v3 + 8) = v44;
  *(v3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33268, &qword_1E42BAC48);
  sub_1E3B13274();
  sub_1E4202724();
  v45 = sub_1E4202774();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_110_6();
  if (!v46)
  {
    v45 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  sub_1E3741EA0(v3, v1, &qword_1ECF33250, &qword_1E42BAC30);
  v47 = (v1 + *(v35 + 36));
  *v47 = v45;
  OUTLINED_FUNCTION_15_3(v47);
  sub_1E4202754();
  v48 = sub_1E4202774();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_110_6();
  if (!v46)
  {
    v48 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  v49 = OUTLINED_FUNCTION_125();
  sub_1E3741EA0(v49, v50, v51, v52);
  v53 = (v2 + *(v93 + 36));
  *v53 = v48;
  OUTLINED_FUNCTION_15_3(v53);
  sub_1E3741EA0(v2, v118, &qword_1ECF33260, &qword_1E42BAC40);
  *v0 = sub_1E4201B84();
  *(v0 + 8) = v44;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33270, &qword_1E42BAC50);
  sub_1E3B138B4();
  sub_1E4202724();
  v54 = sub_1E4202774();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_110_6();
  if (!v46)
  {
    v54 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v55 = v0;
  v56 = v95;
  sub_1E3741EA0(v55, v95, &qword_1ECF33240, &qword_1E42BAC20);
  v57 = (v56 + *(v96 + 36));
  *v57 = v54;
  OUTLINED_FUNCTION_11_4(v57);
  sub_1E3741EA0(v56, v119, &qword_1ECF33248, &qword_1E42BAC28);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_36_0();
  sub_1E4200D94();
  v95 = v131;
  v96 = v129;
  v93 = v134;
  v94 = v133;
  v122 = 1;
  v121 = v130;
  v120 = v132;
  memcpy(v135, &unk_1EE28BC80, sizeof(v135));
  sub_1E3D4DBE8();
  v59 = v58;
  KeyPath = swift_getKeyPath();
  v61 = v103;
  *v103 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8, &qword_1E429C690);
  OUTLINED_FUNCTION_20_2();
  swift_storeEnumTagMultiPayload();
  *(v61 + *(v101 + 20)) = v59;
  OUTLINED_FUNCTION_60_15();
  v63 = *(v5 + v62 + 96);
  if (v63)
  {
    v64 = 1.0;
  }

  else
  {
    v64 = 0.0;
  }

  v65 = v109;
  sub_1E3B16910(v61, v109, type metadata accessor for SportsPlayGroupCellDivider);
  *(v65 + *(v102 + 36)) = v64;
  v66 = v112;
  sub_1E4201AF4();
  v68 = v114;
  v67 = v115;
  (*(v114 + 16))(v111, v66, v115);
  OUTLINED_FUNCTION_1_142();
  sub_1E3B1696C(v69);
  OUTLINED_FUNCTION_63_0();
  v70 = sub_1E4200E14();
  (*(v68 + 8))(v66, v67);
  v71 = v65;
  v72 = v108;
  sub_1E3741EA0(v71, v108, &qword_1ECF331D0, &qword_1E42BAB80);
  *(v72 + *(v107 + 36)) = v70;
  v73 = sub_1E4203E64();
  v74 = v72;
  v75 = v105;
  sub_1E3741EA0(v74, v105, &qword_1ECF331D8, &qword_1E42BAB88);
  v76 = v75 + *(v106 + 36);
  *v76 = v73;
  *(v76 + 8) = v63;
  v77 = v75;
  v78 = v110;
  sub_1E3741EA0(v77, v110, &qword_1ECF331E0, &qword_1E42BAB90);
  v79 = v138;
  v80 = v137;
  LOBYTE(v67) = v136;
  v81 = v104;
  sub_1E3743538(v118, v104, &qword_1ECF33260, &qword_1E42BAC40);
  v82 = v113;
  sub_1E3743538(v119, v113, &qword_1ECF33248, &qword_1E42BAC28);
  LODWORD(v112) = v122;
  LODWORD(v114) = v121;
  LODWORD(v115) = v120;
  v83 = v116;
  sub_1E3743538(v78, v116, &qword_1ECF331E0, &qword_1E42BAB90);
  v84 = v117;
  *v117 = 0;
  *(v84 + 8) = v79;
  v85 = v99;
  v84[2] = v100;
  *(v84 + 24) = v80;
  v84[4] = v85;
  *(v84 + 40) = v67;
  v86 = v97;
  v84[6] = v98;
  v84[7] = v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33278, &qword_1E42BAC58);
  sub_1E3743538(v81, v84 + v87[12], &qword_1ECF33260, &qword_1E42BAC40);
  sub_1E3743538(v82, v84 + v87[16], &qword_1ECF33248, &qword_1E42BAC28);
  v88 = v84 + v87[20];
  *v88 = 0;
  v88[8] = v112;
  *(v88 + 2) = v96;
  v88[24] = v114;
  *(v88 + 4) = v95;
  v88[40] = v115;
  v89 = v93;
  *(v88 + 6) = v94;
  *(v88 + 7) = v89;
  sub_1E3743538(v83, v84 + v87[24], &qword_1ECF331E0, &qword_1E42BAB90);
  sub_1E325F69C(v78, &qword_1ECF331E0);
  sub_1E325F69C(v119, &qword_1ECF33248);
  sub_1E325F69C(v118, &qword_1ECF33260);
  sub_1E325F69C(v83, &qword_1ECF331E0);
  OUTLINED_FUNCTION_55_0();
  sub_1E325F69C(v90, v91);
  sub_1E325F69C(v81, &qword_1ECF33260);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3B13274()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v81 = v3;
  v4 = sub_1E41FE1F4();
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_3();
  v72 = v6;
  v7 = OUTLINED_FUNCTION_138();
  v71 = type metadata accessor for CrossFadeText(v7);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = (v10 - v9);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33280, &qword_1E42BAC60);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v79 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v78 = v15;
  v16 = OUTLINED_FUNCTION_138();
  v17 = type metadata accessor for SportsPlayGroupChildView.IndexView(v16);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  v76 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  v75 = v22;
  v23 = OUTLINED_FUNCTION_138();
  v24 = (v2 + *(type metadata accessor for SportsPlayGroupChildView(v23) + 24));
  v25 = v24[7];
  v83 = v24[6];
  v69 = v24[11];
  v70 = v24[10];
  if (v25)
  {
    type metadata accessor for BaseballVoiceOverUtility();

    v67 = sub_1E3BE9610(v83, v25);
    v68 = v26;
  }

  else
  {

    v67 = v83;
    v68 = 0;
  }

  OUTLINED_FUNCTION_37_35();
  v87[0] = v27;
  v87[1] = v28;
  LOBYTE(v87[2]) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8, &qword_1E42B22C0);
  sub_1E4203AB4();
  *v0 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E428, &qword_1E42AC180);
  OUTLINED_FUNCTION_95_6();
  *(v0 + v17[5]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8, &qword_1E429C690);
  swift_storeEnumTagMultiPayload();
  v30 = (v0 + v17[6]);
  *v30 = v83;
  v30[1] = v25;
  v31 = (v0 + v17[7]);
  *v31 = v70;
  v31[1] = v69;
  v32 = (v0 + v17[8]);
  *v32 = v67;
  v32[1] = v68;
  v33 = v0 + v17[9];
  *v33 = v84;
  *(v33 + 1) = v85;
  v33[16] = v86;
  v34 = OUTLINED_FUNCTION_38_29();
  v35 = v75;
  sub_1E3B16910(v34, v75, v36);
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v37 = *(v71 + 20);
  *(v11 + v37) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  swift_storeEnumTagMultiPayload();
  v38 = *(v71 + 28);

  sub_1E41FE1E4();
  sub_1E41FE1C4();
  *(v11 + v38) = 0;
  v39 = *sub_1E3E5FD88();
  v40 = sub_1E4203644();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_10_80();
  v42 = v78;
  sub_1E3B0E134(v11, v78, v43);
  v44 = (v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33220, &qword_1E42BABD0) + 36));
  *v44 = KeyPath;
  v44[1] = v40;
  OUTLINED_FUNCTION_9_82();
  sub_1E3B0E438();
  if (_MergedGlobals_202[0] != -1)
  {
    OUTLINED_FUNCTION_0_146(_MergedGlobals_202);
  }

  v45 = memcpy(v87, &unk_1EE28BC80, sizeof(v87));
  sub_1E3D4DE98(v45, v46, v47, v48, v49, v50, v51, v52, v67, v68, v69, v70, v71, v72, v73, v75, v76, v78, v79, v81, v83, v84, v85, v86, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9]);
  v53 = sub_1E4202AB4();
  v54 = swift_getKeyPath();
  v55 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33218, &qword_1E42BABC8) + 36));
  *v55 = v54;
  v55[1] = v53;
  v56 = swift_getKeyPath();
  v57 = v42 + *(v74 + 36);
  *v57 = v56;
  *(v57 + 8) = 1;
  *(v57 + 16) = 0;
  OUTLINED_FUNCTION_43_32();
  sub_1E3B0E134(v35, v77, v58);
  sub_1E3743538(v42, v80, &qword_1ECF33280, &qword_1E42BAC60);
  sub_1E3B0E134(v77, v82, v53);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF332B0, &qword_1E42BACB8);
  v60 = OUTLINED_FUNCTION_76_7();
  sub_1E3743538(v60, v61, &qword_1ECF33280, &qword_1E42BAC60);
  v62 = v82 + *(v59 + 64);
  *v62 = 0;
  *(v62 + 8) = 1;
  OUTLINED_FUNCTION_55_0();
  sub_1E325F69C(v63, v64);
  OUTLINED_FUNCTION_42_38();
  sub_1E3B0E438();
  OUTLINED_FUNCTION_55_0();
  sub_1E325F69C(v65, v66);
  OUTLINED_FUNCTION_21_42();
  sub_1E3B0E438();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B137A0@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = sub_1E41FE1F4();
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  OUTLINED_FUNCTION_20_2();
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for CrossFadeText(0);
  v7 = *(v6 + 20);
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  swift_storeEnumTagMultiPayload();
  v8 = *(v6 + 28);
  sub_1E41FE1E4();
  OUTLINED_FUNCTION_74();
  result = sub_1E41FE1C4();
  *(a2 + v8) = a1;
  return result;
}

void sub_1E3B138B4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v94 = v2;
  v3 = sub_1E41FE1F4();
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_3();
  v5 = OUTLINED_FUNCTION_138();
  v79 = type metadata accessor for CrossFadeText(v5);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_3();
  v80 = v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33280, &qword_1E42BAC60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v81 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33288, &qword_1E42BAC68);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v93 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v92 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400, &qword_1E42AC130);
  OUTLINED_FUNCTION_17_2(v15);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v87 = v17;
  OUTLINED_FUNCTION_138();
  sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v83 = v19;
  v84 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9_3();
  v82 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33290, &unk_1E42BAC70);
  OUTLINED_FUNCTION_0_10();
  v89 = v22;
  v90 = v21;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  v88 = v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_25_3();
  v95 = v25;
  v26 = OUTLINED_FUNCTION_138();
  v27 = type metadata accessor for SportsPlayGroupChildView(v26);
  v85 = v1 + *(v27 + 24);
  v28 = *(v85 + 72);
  v101[0] = *(v85 + 64);
  v101[1] = v28;
  sub_1E32822E0(v27, v29, v30);

  v31 = sub_1E4202C44();
  v33 = v32;
  v35 = v34;
  if (_MergedGlobals_202[0] != -1)
  {
    OUTLINED_FUNCTION_0_146(_MergedGlobals_202);
  }

  memcpy(v101, &unk_1EE28BC80, sizeof(v101));
  sub_1E3D4C0C0();
  sub_1E4202AB4();
  v36 = sub_1E4202C04();
  v38 = v37;
  v40 = v39;

  sub_1E37434B8(v31, v33, v35 & 1);

  memcpy(v100, &unk_1EE28BC80, sizeof(v100));
  sub_1E39305C4(v82);
  v41 = sub_1E3D4E754();
  (*(v83 + 8))(v82, v84);
  sub_1E38F08C4(v41);

  v42 = sub_1E4202B94();
  v44 = v43;
  v46 = v45;
  v86 = v47;

  sub_1E37434B8(v36, v38, v40 & 1);

  memcpy(v99, &unk_1EE28BC80, sizeof(v99));
  sub_1E3D4DB14();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_112_2();
  v98 = v46 & 1;
  v97[0] = v42;
  v97[1] = v44;
  LOBYTE(v97[2]) = v46 & 1;
  v97[3] = v86;
  if (*(v85 + 112))
  {
    v48 = v92;
  }

  else
  {
    v48 = v92;
    if ((*(v85 + 128) & 1) == 0)
    {
      v49 = *(v85 + 120);
      type metadata accessor for BaseballVoiceOverUtility();
      v50 = OUTLINED_FUNCTION_156_1();
      sub_1E3BE8DA8(v50, v49);
    }
  }

  v51 = sub_1E4202494();
  __swift_storeEnumTagSinglePayload(v87, 1, 1, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33298, &unk_1E42F3F20);
  sub_1E3B17FEC();
  OUTLINED_FUNCTION_74();
  sub_1E3E038E0();

  sub_1E325F69C(v87, &qword_1ECF2E400);
  memcpy(v96, v97, sizeof(v96));
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v52, v53);
  if (*(v85 + 40))
  {
    *v80 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
    swift_storeEnumTagMultiPayload();
    v54 = *(v79 + 20);
    *(v80 + v54) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
    swift_storeEnumTagMultiPayload();
    v55 = *(v79 + 28);

    sub_1E41FE1E4();
    OUTLINED_FUNCTION_67_0();
    sub_1E41FE1C4();
    *(v80 + v55) = 0;
    v56 = *sub_1E3E5FDEC();
    v57 = sub_1E4203644();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_10_80();
    sub_1E3B0E134(v80, v81, v59);
    v60 = (v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33220, &qword_1E42BABD0) + 36));
    *v60 = KeyPath;
    v60[1] = v57;
    OUTLINED_FUNCTION_9_82();
    sub_1E3B0E438();
    v61 = [objc_opt_self() preferredFontForTextStyle_];
    v62 = sub_1E4202AB4();
    v63 = swift_getKeyPath();
    v64 = (v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33218, &qword_1E42BABC8) + 36));
    *v64 = v63;
    v64[1] = v62;
    v65 = swift_getKeyPath();
    v66 = v91;
    v67 = v81 + *(v91 + 36);
    *v67 = v65;
    *(v67 + 8) = 1;
    *(v67 + 16) = 0;
    sub_1E3741EA0(v81, v48, &qword_1ECF33280, &qword_1E42BAC60);
    v68 = 0;
  }

  else
  {
    v68 = 1;
    v66 = v91;
  }

  __swift_storeEnumTagSinglePayload(v48, v68, 1, v66);
  v69 = *(v89 + 16);
  v69(v88, v95, v90);
  sub_1E3743538(v48, v93, &qword_1ECF33288, &qword_1E42BAC68);
  v69(v94, v88, v90);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF332A8, &qword_1E42BAC80);
  v71 = OUTLINED_FUNCTION_76_7();
  sub_1E3743538(v71, v72, &qword_1ECF33288, &qword_1E42BAC68);
  v73 = v94 + *(v70 + 64);
  *v73 = 0;
  *(v73 + 8) = 1;
  OUTLINED_FUNCTION_98_7();
  sub_1E325F69C(v74, v75);
  v76 = *(v89 + 8);
  v76(v95, v90);
  OUTLINED_FUNCTION_98_7();
  sub_1E325F69C(v77, v78);
  v76(v88, v90);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B140C4()
{
  OUTLINED_FUNCTION_93();
  v77 = v4;
  v84 = v5;
  v78 = sub_1E4201B04();
  OUTLINED_FUNCTION_0_10();
  v76 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v80 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  v75 = v10;
  v11 = OUTLINED_FUNCTION_138();
  v72 = type metadata accessor for SportsPlayGroupCellDivider(v11);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF331D0, &qword_1E42BAB80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_139();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF331D8, &qword_1E42BAB88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_20_1();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF331E0, &qword_1E42BAB90);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v83 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v66 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  v82 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF331E8, &qword_1E42BAB98);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_5();
  v81 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25_3();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF331F0, &qword_1E42BABA0);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  v79 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_77_0();
  if (_MergedGlobals_202[0] != -1)
  {
    OUTLINED_FUNCTION_0_146(_MergedGlobals_202);
  }

  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_36_0();
  sub_1E4200D94();
  v69 = v88;
  v70 = v86;
  v67 = v91;
  v68 = v90;
  v96 = 1;
  v95 = v87;
  v94 = v89;
  memcpy(v93, &unk_1EE28BC80, sizeof(v93));
  v32 = sub_1E3D4DC80();
  *v3 = sub_1E4201B84();
  *(v3 + 8) = v32;
  *(v3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF331F8, &qword_1E42BABA8);
  v85 = v3;
  v33 = v77;
  sub_1E3B147A8();
  *v27 = sub_1E4201D54();
  *(v27 + 8) = 0;
  *(v27 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33200, &qword_1E42BABB0);
  sub_1E3B14DD8();
  memcpy(v92, &unk_1EE28BC80, sizeof(v92));
  sub_1E3D4DBE8();
  v35 = v34;
  *v2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8, &qword_1E429C690);
  swift_storeEnumTagMultiPayload();
  *(v2 + *(v72 + 20)) = v35;
  OUTLINED_FUNCTION_60_15();
  v37 = *(v33 + v36 + 96);
  if (v37)
  {
    v38 = 1.0;
  }

  else
  {
    v38 = 0.0;
  }

  sub_1E3B16910(v2, v0, type metadata accessor for SportsPlayGroupCellDivider);
  *(v0 + *(v71 + 36)) = v38;
  v39 = v75;
  sub_1E4201AF4();
  v40 = v76;
  v41 = v78;
  (*(v76 + 16))(v80, v39, v78);
  OUTLINED_FUNCTION_1_142();
  sub_1E3B1696C(v42);
  OUTLINED_FUNCTION_156_1();
  v43 = sub_1E4200E14();
  (*(v40 + 8))(v39, v41);
  v44 = OUTLINED_FUNCTION_58_1();
  sub_1E3741EA0(v44, v45, v46, v47);
  *(v1 + *(v74 + 36)) = v43;
  v48 = sub_1E4203E64();
  sub_1E3741EA0(v1, v19, &qword_1ECF331D8, &qword_1E42BAB88);
  v49 = &v19[*(v73 + 36)];
  *v49 = v48;
  v49[8] = v37;
  v50 = v82;
  sub_1E3741EA0(v19, v82, &qword_1ECF331E0, &qword_1E42BAB90);
  v51 = v96;
  v52 = v95;
  LOBYTE(v39) = v94;
  v53 = v79;
  sub_1E3743538(v85, v79, &qword_1ECF331F0, &qword_1E42BABA0);
  v54 = v81;
  sub_1E3743538(v27, v81, &qword_1ECF331E8, &qword_1E42BAB98);
  v55 = v83;
  sub_1E3743538(v50, v83, &qword_1ECF331E0, &qword_1E42BAB90);
  v56 = v84;
  *v84 = 0;
  *(v56 + 8) = v51;
  v57 = v69;
  v56[2] = v70;
  *(v56 + 24) = v52;
  v56[4] = v57;
  *(v56 + 40) = v39;
  v58 = v67;
  v56[6] = v68;
  v56[7] = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33208, &qword_1E42BABB8);
  sub_1E3743538(v53, v56 + v59[12], &qword_1ECF331F0, &qword_1E42BABA0);
  sub_1E3743538(v54, v56 + v59[16], &qword_1ECF331E8, &qword_1E42BAB98);
  sub_1E3743538(v55, v56 + v59[20], &qword_1ECF331E0, &qword_1E42BAB90);
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v60, v61);
  sub_1E325F69C(v27, &qword_1ECF331E8);
  sub_1E325F69C(v85, &qword_1ECF331F0);
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v62, v63);
  sub_1E325F69C(v54, &qword_1ECF331E8);
  v64 = OUTLINED_FUNCTION_63_0();
  sub_1E325F69C(v64, v65);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3B147A8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v80 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400, &qword_1E42AC130);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v76 = v6;
  OUTLINED_FUNCTION_138();
  sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v73 = v8;
  v74 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_3();
  v72 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33230, &qword_1E42BAC10);
  OUTLINED_FUNCTION_0_10();
  v78 = v11;
  v79 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v77 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v83 = v14;
  v15 = OUTLINED_FUNCTION_138();
  v16 = type metadata accessor for SportsPlayGroupChildView.IndexView(v15);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_5();
  v75 = v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  v82 = v21;
  v22 = OUTLINED_FUNCTION_138();
  v23 = (v2 + *(type metadata accessor for SportsPlayGroupChildView(v22) + 24));
  v25 = v23[6];
  v24 = v23[7];
  v26 = v23[11];
  v71 = v23[10];
  v81 = v23;
  if (v24)
  {
    type metadata accessor for BaseballVoiceOverUtility();

    v69 = sub_1E3BE9610(v25, v24);
    v70 = v27;
  }

  else
  {

    v69 = v25;
    v70 = 0;
  }

  OUTLINED_FUNCTION_37_35();
  v85[0] = v28;
  v85[1] = v29;
  LOBYTE(v85[2]) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8, &qword_1E42B22C0);
  sub_1E4203AB4();
  v31 = v84[0];
  v32 = v84[1];
  v33 = v84[2];
  *v0 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E428, &qword_1E42AC180);
  OUTLINED_FUNCTION_95_6();
  *(v0 + v16[5]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8, &qword_1E429C690);
  swift_storeEnumTagMultiPayload();
  v34 = (v0 + v16[6]);
  *v34 = v25;
  v34[1] = v24;
  v35 = (v0 + v16[7]);
  *v35 = v71;
  v35[1] = v26;
  v36 = (v0 + v16[8]);
  *v36 = v69;
  v36[1] = v70;
  v37 = v0 + v16[9];
  *v37 = v31;
  *(v37 + 1) = v32;
  v37[16] = v33;
  v38 = OUTLINED_FUNCTION_38_29();
  v40 = sub_1E3B16910(v38, v82, v39);
  v41 = v81[9];
  v85[0] = v81[8];
  v85[1] = v41;
  sub_1E32822E0(v40, v42, v43);

  v44 = sub_1E4202C44();
  v46 = v45;
  v48 = v47;
  if (_MergedGlobals_202[0] != -1)
  {
    OUTLINED_FUNCTION_0_146(_MergedGlobals_202);
  }

  memcpy(v85, &unk_1EE28BC80, sizeof(v85));
  sub_1E3D4C0C0();
  sub_1E4202AB4();
  v49 = sub_1E4202C04();
  v51 = v50;
  v53 = v52;

  sub_1E37434B8(v44, v46, v48 & 1);

  memcpy(v84, &unk_1EE28BC80, sizeof(v84));
  sub_1E39305C4(v72);
  v54 = sub_1E3D4E754();
  (*(v73 + 8))(v72, v74);
  sub_1E38F08C4(v54);

  sub_1E4202B94();
  v56 = v55;

  sub_1E37434B8(v49, v51, v53 & 1);

  if ((v81[14] & 1) == 0 && (v81[16] & 1) == 0)
  {
    type metadata accessor for BaseballVoiceOverUtility();
    v57 = OUTLINED_FUNCTION_63_0();
    sub_1E3BE8DA8(v57, v58);
  }

  v59 = sub_1E4202494();
  __swift_storeEnumTagSinglePayload(v76, 1, 1, v59);
  sub_1E3E038E0();

  sub_1E325F69C(v76, &qword_1ECF2E400);
  v60 = OUTLINED_FUNCTION_58_1();
  sub_1E37434B8(v60, v61, v56 & 1);

  OUTLINED_FUNCTION_43_32();
  sub_1E3B0E134(v82, v75, v62);
  v63 = *(v78 + 16);
  v63(v77, v83, v79);
  OUTLINED_FUNCTION_98_7();
  sub_1E3B0E134(v64, v65, v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33238, &qword_1E42BAC18);
  v63(v80 + *(v67 + 48), v77, v79);
  v68 = *(v78 + 8);
  v68(v83, v79);
  OUTLINED_FUNCTION_42_38();
  sub_1E3B0E438();
  v68(v77, v79);
  OUTLINED_FUNCTION_21_42();
  sub_1E3B0E438();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B14DD8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v70 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33210, &qword_1E42BABC0);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  v69 = v5;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_3();
  v68 = v7;
  OUTLINED_FUNCTION_138();
  v8 = sub_1E41FE1F4();
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v10 = type metadata accessor for CrossFadeText(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = (v13 - v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33218, &qword_1E42BABC8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_5();
  v67 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  OUTLINED_FUNCTION_60_15();
  v22 = v1 + v21;
  *v14 = swift_getKeyPath();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v23 = *(v10 + 20);
  *(v14 + v23) = swift_getKeyPath();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  swift_storeEnumTagMultiPayload();
  v24 = *(v10 + 28);

  sub_1E41FE1E4();
  sub_1E41FE1C4();
  *(v14 + v24) = 0;
  v25 = *sub_1E3E5FD88();
  v26 = sub_1E4203644();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_10_80();
  sub_1E3B0E134(v14, v20, v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33220, &qword_1E42BABD0);
  v30 = &v20[*(v29 + 36)];
  *v30 = KeyPath;
  v30[1] = v26;
  OUTLINED_FUNCTION_9_82();
  sub_1E3B0E438();
  if (_MergedGlobals_202[0] != -1)
  {
    OUTLINED_FUNCTION_0_146(_MergedGlobals_202);
  }

  v31 = memcpy(v71, &unk_1EE28BC80, sizeof(v71));
  sub_1E3D4C178(v31, v32, v33, v34, v35, v36, v37, v38, v65, v66, v67, v68, v69, v70, v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v71[9], v71[10], v71[11], v71[12], v71[13], v71[14], v71[15], v71[16], v71[17], v71[18], v71[19]);
  v39 = sub_1E4202AB4();
  v40 = swift_getKeyPath();
  v41 = &v20[*(v15 + 36)];
  *v41 = v40;
  v41[1] = v39;
  if (*(v22 + 40))
  {
    *v14 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v42 = *(v10 + 20);
    *(v14 + v42) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v43 = *(v10 + 28);

    sub_1E41FE1E4();
    sub_1E41FE1C4();
    *(v14 + v43) = 0;
    v44 = *sub_1E3E5FDEC();
    v45 = sub_1E4203644();
    v46 = swift_getKeyPath();
    OUTLINED_FUNCTION_10_80();
    v47 = v67;
    sub_1E3B0E134(v14, v67, v48);
    v49 = (v47 + *(v29 + 36));
    *v49 = v46;
    v49[1] = v45;
    OUTLINED_FUNCTION_9_82();
    sub_1E3B0E438();
    v50 = [objc_opt_self() preferredFontForTextStyle_];
    v51 = sub_1E4202AB4();
    v52 = swift_getKeyPath();
    v53 = (v47 + *(v15 + 36));
    *v53 = v52;
    v53[1] = v51;
    v54 = v68;
    sub_1E3741EA0(v47, v68, &qword_1ECF33218, &qword_1E42BABC8);
    v55 = 0;
  }

  else
  {
    v55 = 1;
    v47 = v67;
    v54 = v68;
  }

  __swift_storeEnumTagSinglePayload(v54, v55, 1, v15);
  v56 = OUTLINED_FUNCTION_171_0();
  sub_1E3743538(v56, v57, &qword_1ECF33218, &qword_1E42BABC8);
  v58 = v69;
  sub_1E3743538(v54, v69, &qword_1ECF33210, &qword_1E42BABC0);
  v59 = v70;
  sub_1E3743538(v47, v70, &qword_1ECF33218, &qword_1E42BABC8);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33228, &qword_1E42BAC08);
  sub_1E3743538(v58, v59 + *(v60 + 48), &qword_1ECF33210, &qword_1E42BABC0);
  OUTLINED_FUNCTION_90();
  sub_1E325F69C(v61, v62);
  sub_1E325F69C(v20, &qword_1ECF33218);
  OUTLINED_FUNCTION_90();
  sub_1E325F69C(v63, v64);
  sub_1E325F69C(v47, &qword_1ECF33218);
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3B152E0(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  if ((v3 - 1) > 1)
  {
    (*(v6 + 104))(v2, *MEMORY[0x1E697DBA8], v4);
    v9 = sub_1E4200B34();
    v10 = OUTLINED_FUNCTION_13_8();
    v11(v10);
    v12 = objc_opt_self();
    if (v9)
    {
      v8 = [v12 whiteColor];
    }

    else
    {
      v8 = [v12 blackColor];
    }
  }

  else
  {
    v8 = [objc_opt_self() tertiaryLabelColor];
  }

  return v8;
}

unint64_t sub_1E3B15434()
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

void sub_1E3B15480()
{
  OUTLINED_FUNCTION_31_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400, &qword_1E42AC130);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_44();
  v25 = v3;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33140, &qword_1E42BAAD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v24 = v5;
  OUTLINED_FUNCTION_138();
  v6 = sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_106_10();
  type metadata accessor for SportsPlayGroupChildView.IndexView(v14);
  sub_1E379EBAC(v0);
  v15 = *(v8 + 104);
  v15(v12, *MEMORY[0x1E697DBA8], v6);
  v16 = sub_1E4200B34();
  v17 = *(v8 + 8);
  v18 = OUTLINED_FUNCTION_123_0();
  v17(v18);
  (v17)(v0, v6);
  if ((v16 & 1) == 0)
  {
    sub_1E379EBAC(v0);
    v15(v12, *MEMORY[0x1E697DBB8], v6);
    sub_1E4200B34();
    v19 = OUTLINED_FUNCTION_123_0();
    v17(v19);
    (v17)(v0, v6);
  }

  *v24 = sub_1E4203DA4();
  v24[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33148, &qword_1E42BAAE0);
  sub_1E3B157F4();
  if (_MergedGlobals_202[0] != -1)
  {
    OUTLINED_FUNCTION_0_146(_MergedGlobals_202);
  }

  memcpy(v29, &unk_1EE28BC80, sizeof(v29));
  sub_1E3D4DB14();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_112_2();
  v21 = (v24 + *(v23 + 36));
  *v21 = v26;
  v21[1] = v27;
  v21[2] = v28;
  sub_1E4202474();
  v22 = sub_1E4202494();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v22);
  sub_1E3B17CE0();
  OUTLINED_FUNCTION_55_0();
  sub_1E3E038E0();
  sub_1E325F69C(v25, &qword_1ECF2E400);
  sub_1E325F69C(v24, &qword_1ECF33140);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B157F4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  v19 = v5;
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33168, &qword_1E42BAAF0);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_35_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33170, &qword_1E42BAAF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  v14 = type metadata accessor for SportsPlayGroupChildView.IndexView(0);
  if (*(v3 + *(v14 + 24) + 8))
  {
    v18 = v9;
    v15 = *(v3 + *(v14 + 28) + 8);
    if (v15 && (swift_bridgeObjectRetain_n(), OUTLINED_FUNCTION_17_11(), sub_1E3B15434() == 2))
    {

      MEMORY[0x1E69109E0](0x656C637269632ELL, 0xE700000000000000);
      sub_1E42037C4();
    }

    else
    {

      MEMORY[0x1E69109E0](0x2E656C637269632ELL, 0xEC0000006C6C6966);
      sub_1E42037C4();
      if (!v15)
      {
        v17 = 1;
LABEL_11:
        sub_1E379EBAC(v8);
        sub_1E3B152E0(v8, v17);
        (*(v19 + 8))(v8, v20);
        sub_1E4203644();
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA10, &unk_1E42BAB00);
        sub_1E39948A4();
        sub_1E37B903C();

        (*(v11 + 16))(v0, v1, v18);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_17_71();
        swift_getOpaqueTypeConformance2();
        sub_1E4201F44();
        (*(v11 + 8))(v1, v18);
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_17_11();
    v16 = sub_1E3B15434();
    if (v16 == 3)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    goto LABEL_11;
  }

  *v0 = 0;
  *(v0 + 8) = 1;
  OUTLINED_FUNCTION_74();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FA10, &unk_1E42BAB00);
  sub_1E39948A4();
  OUTLINED_FUNCTION_17_71();
  swift_getOpaqueTypeConformance2();
  sub_1E4201F44();
LABEL_12:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B15BD4()
{
  OUTLINED_FUNCTION_93();
  v26[1] = v0;
  v1 = sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v26 - v9);
  v11 = *sub_1E3E60170();
  v12 = sub_1E4203644();
  v13 = [objc_opt_self() mainScreen];
  [v13 scale];

  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_36_0();
  sub_1E4200D94();
  *&v29[6] = v31;
  *&v29[22] = v32;
  *&v29[38] = v33;
  v14 = sub_1E4202764();
  v15 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v14)
  {
    v15 = sub_1E4202774();
  }

  OUTLINED_FUNCTION_92_6();
  sub_1E4200A54();
  v30 = 0;
  *v28 = v12;
  *&v28[8] = 256;
  *&v28[10] = *v29;
  *&v28[26] = *&v29[16];
  *&v28[42] = *&v29[32];
  *&v28[56] = *&v29[46];
  v28[64] = v15;
  *&v28[72] = v16;
  *&v28[80] = v17;
  *&v28[88] = v18;
  *&v28[96] = v19;
  v28[104] = 0;
  sub_1E379EBAC(v10);
  (*(v3 + 104))(v7, *MEMORY[0x1E697DBA8], v1);
  sub_1E4200B34();
  v20 = *(v3 + 8);
  v21 = OUTLINED_FUNCTION_53();
  v20(v21);
  v22 = OUTLINED_FUNCTION_171_0();
  v20(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF330E0, &unk_1E42BA550);
  OUTLINED_FUNCTION_46_28();
  OUTLINED_FUNCTION_90();
  sub_1E3B16EA4(v23);
  sub_1E37B903C();
  memcpy(v27, v28, sizeof(v27));
  OUTLINED_FUNCTION_90();
  sub_1E325F69C(v24, v25);
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3B15E7C@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E3B15EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  OUTLINED_FUNCTION_20_2();
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for CrossFadeText(0);
  v7 = *(v6 + 20);
  *&a3[v7] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  swift_storeEnumTagMultiPayload();
  v10 = v6 + 24;
  v8 = *(v6 + 24);
  v9 = *(v10 + 4);
  sub_1E41FE1B4();
  OUTLINED_FUNCTION_2();
  result = (*(v11 + 32))(&a3[v8], a1);
  *&a3[v9] = a2;
  return result;
}

uint64_t sub_1E3B15FC4@<X0>(uint64_t a1@<X8>)
{
  sub_1E3B16070();
  v3 = *(type metadata accessor for CrossFadeText(0) + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF330F0, &qword_1E42BA568) + 52);
  sub_1E41FE1B4();
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a1 + v4, v1 + v3);
  v6 = sub_1E3B16518();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF330F8, &qword_1E42BA570);
  *(a1 + *(result + 36)) = v6;
  return result;
}

void sub_1E3B16070()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v51 = v5;
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_3();
  v48 = v6;
  OUTLINED_FUNCTION_138();
  v49 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v47 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_3();
  v45 = v9;
  OUTLINED_FUNCTION_138();
  v46 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v44 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = (v13 - v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8, &unk_1E42AA120);
  OUTLINED_FUNCTION_0_10();
  v50 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v43 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF331C8, &unk_1E42BAB70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_35_3();
  v20 = sub_1E41FE1B4();
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v24 = type metadata accessor for CrossFadeText(0);
  v25 = *(v3 + *(v24 + 28));
  (*(v22 + 16))(v0, v3 + *(v24 + 24), v20);
  if (v25)
  {

    v26 = sub_1E4202C34();
    v41 = v27;
    v42 = v26;
    v40 = v28 & 1;

    sub_1E3746E10(v14);
    sub_1E374709C(v45);
    v29 = MEMORY[0x1E6981148];
    v30 = MEMORY[0x1E6981138];
    v39 = v15;
    v31 = j__OUTLINED_FUNCTION_18();
    sub_1E37B5FBC(v48);
    j__OUTLINED_FUNCTION_18();
    v32 = OUTLINED_FUNCTION_171_0();
    sub_1E37B6028(v32, v33, v45, v31, v48, v34, v29, v30, v35);

    (*(v51 + 8))(v48, v52);
    (*(v47 + 8))(v45, v49);
    (*(v44 + 8))(v14, v46);
    sub_1E37434B8(v42, v41, v40);

    (*(v50 + 16))(v1, v43, v39);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_50_25();
    OUTLINED_FUNCTION_53();
    sub_1E4201F44();

    (*(v50 + 8))(v43, v39);
  }

  else
  {
    *v1 = sub_1E4202C34();
    *(v1 + 8) = v36;
    *(v1 + 16) = v37 & 1;
    *(v1 + 24) = v38;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_50_25();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B16518()
{
  sub_1E4200DD4();
  sub_1E4203E64();
  sub_1E4203E04();

  OUTLINED_FUNCTION_13_8();
  sub_1E4200E04();

  sub_1E4200DD4();
  sub_1E4203E64();
  sub_1E4200E04();

  OUTLINED_FUNCTION_63_0();
  v0 = sub_1E4200DB4();

  return v0;
}

void *sub_1E3B165E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3B16604(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3B16604(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF333F0, &qword_1E42BAD98);
  v10 = *(type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1E3B167B8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1E3B167B8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType(0);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1E3B1688C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E4201A64();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E3B16910(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

unint64_t sub_1E3B1696C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3B169F0()
{
  result = qword_1ECF33058;
  if (!qword_1ECF33058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33040, &qword_1E42BA448);
    sub_1E3B16AA8();
    sub_1E37AE398(&qword_1EE289E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33058);
  }

  return result;
}

unint64_t sub_1E3B16AA8()
{
  result = qword_1ECF33060;
  if (!qword_1ECF33060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33038, &qword_1E42BA440);
    sub_1E3B16B60();
    sub_1E37AE398(&qword_1EE288898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33060);
  }

  return result;
}

unint64_t sub_1E3B16B60()
{
  result = qword_1ECF33068;
  if (!qword_1ECF33068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33030, &qword_1E42BA438);
    sub_1E37AE398(&unk_1ECF33070);
    sub_1E37AE398(&qword_1EE2892A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33068);
  }

  return result;
}

unint64_t sub_1E3B16C44()
{
  result = qword_1ECF33080;
  if (!qword_1ECF33080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33050, &qword_1E42BA460);
    sub_1E3B16CFC(&unk_1ECF33088);
    sub_1E3B169F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33080);
  }

  return result;
}

unint64_t sub_1E3B16CFC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v8 = v5();
    v16 = sub_1E3B1696C(&qword_1EE288768);
    result = OUTLINED_FUNCTION_16_7(v16, v9, v10, v11, v12, v13, v14, v15, v8);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3B16DCC()
{
  result = qword_1ECF330B8;
  if (!qword_1ECF330B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF330A8, &qword_1E42BA4F8);
    sub_1E37AE398(&unk_1ECF330C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF330B8);
  }

  return result;
}

unint64_t sub_1E3B16EA4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v8 = v5();
    result = OUTLINED_FUNCTION_16_7(v8, v9, v10, v11, v12, v13, v14, v15, v8);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3B16F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF33100;
  if (!qword_1ECF33100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33100);
  }

  return result;
}

void sub_1E3B16FFC(uint64_t a1)
{
  sub_1E3B176C4(319, &qword_1ECF33108, type metadata accessor for SportsPlayByPlayItemViewData, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    sub_1E3B17110(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E3B17110(uint64_t a1)
{
  if (!qword_1ECF33110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32FE8, &qword_1E42BA388);
    v1 = sub_1E4200694();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF33110);
    }
  }
}

uint64_t sub_1E3B1717C(uint64_t a1)
{
  result = type metadata accessor for SportsPlayByPlayItemViewData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return OUTLINED_FUNCTION_165();
  }

  return result;
}

uint64_t sub_1E3B171EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_1E3B1722C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E3B172C8()
{
  OUTLINED_FUNCTION_18_57();
  sub_1E3B176C4(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    sub_1E3B17384(319);
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_19_66(v3, &qword_1EE288418, MEMORY[0x1E69E6370]);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}

void sub_1E3B17384(uint64_t a1)
{
  if (!qword_1ECF33118)
  {
    type metadata accessor for SportsPlayGroupItemViewData(255);
    sub_1E3B1696C(&unk_1ECF33028);
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF33118);
    }
  }
}

void sub_1E3B17440()
{
  OUTLINED_FUNCTION_18_57();
  sub_1E3B176C4(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_47_31();
    sub_1E3B176C4(319, v3, v4, MEMORY[0x1E697DCC0]);
    if (v6 <= 0x3F)
    {
      OUTLINED_FUNCTION_19_66(v5, &qword_1EE288418, MEMORY[0x1E69E6370]);
      if (v7 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}

void sub_1E3B1759C()
{
  OUTLINED_FUNCTION_47_31();
  sub_1E3B176C4(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    sub_1E3B176C4(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
    if (v3 <= 0x3F)
    {
      sub_1E41FE1B4();
      if (v4 <= 0x3F)
      {
        sub_1E3B176C4(319, qword_1EE287258, type metadata accessor for TextLayout, MEMORY[0x1E69E6720]);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_72();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_165();
        }
      }
    }
  }
}

void sub_1E3B176C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E3B17728()
{
  result = qword_1ECF33120;
  if (!qword_1ECF33120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33128, &unk_1E42BA998);
    sub_1E3B16DCC();
    sub_1E37AE398(&unk_1ECF330D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33120);
  }

  return result;
}

unint64_t sub_1E3B177E0()
{
  result = qword_1ECF33130;
  if (!qword_1ECF33130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF330F8, &qword_1E42BA570);
    sub_1E37AE398(&unk_1ECF33138);
    sub_1E37AE398(&qword_1EE2889D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33130);
  }

  return result;
}

void sub_1E3B1790C()
{
  OUTLINED_FUNCTION_18_57();
  sub_1E3B176C4(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    sub_1E3B176C4(319, &qword_1EE289EC0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v3 <= 0x3F)
    {
      sub_1E3B17A3C(319, &qword_1EE23B5F8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_19_66(v4, &qword_1EE288418, MEMORY[0x1E69E6370]);
        if (v6 <= 0x3F)
        {
          OUTLINED_FUNCTION_72();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_165();
        }
      }
    }
  }
}

void sub_1E3B17A3C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1E3B17AFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1E3B176C4(319, a4, a5, MEMORY[0x1E697DCC0]);
  if (v5 <= 0x3F)
  {
    OUTLINED_FUNCTION_72();
    swift_cvw_initStructMetadataWithLayoutString();
    OUTLINED_FUNCTION_165();
  }
}

_BYTE *storeEnumTagSinglePayload for Chevron.Direction(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3B17C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE28FDE0[0];
  if (!qword_1EE28FDE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE28FDE0);
  }

  return result;
}

unint64_t sub_1E3B17CE0()
{
  result = qword_1ECF33150;
  if (!qword_1ECF33150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33140, &qword_1E42BAAD8);
    sub_1E37AE398(&unk_1ECF33158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33150);
  }

  return result;
}

unint64_t sub_1E3B17D98()
{
  result = qword_1ECF33180;
  if (!qword_1ECF33180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33178, &qword_1E42BAB40);
    sub_1E3B17E50();
    sub_1E37AE398(&qword_1EE288788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33180);
  }

  return result;
}

unint64_t sub_1E3B17E50()
{
  result = qword_1ECF33188;
  if (!qword_1ECF33188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33190, &qword_1E42BAB48);
    sub_1E3B17F08();
    sub_1E37AE398(&unk_1ECF331B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33188);
  }

  return result;
}

unint64_t sub_1E3B17F08()
{
  result = qword_1ECF33198;
  if (!qword_1ECF33198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF331A0, &qword_1E42BAB50);
    sub_1E37AE398(&unk_1ECF331A8);
    sub_1E37AE398(&qword_1EE2889D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33198);
  }

  return result;
}

unint64_t sub_1E3B17FEC()
{
  result = qword_1ECF332A0;
  if (!qword_1ECF332A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33298, &unk_1E42F3F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF332A0);
  }

  return result;
}

void sub_1E3B18070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v28 = type metadata accessor for SportsPlayGroupCell(0);
  OUTLINED_FUNCTION_17_2(v28);
  v36 = v26 + ((*(v35 + 80) + 16) & ~*(v35 + 80));

  sub_1E3B1105C(a1, v36, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

unint64_t sub_1E3B180EC()
{
  result = qword_1ECF33318;
  if (!qword_1ECF33318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33308, &qword_1E42BAD10);
    sub_1E3B18178();
    sub_1E3B18290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33318);
  }

  return result;
}

unint64_t sub_1E3B18178()
{
  result = qword_1ECF33320;
  if (!qword_1ECF33320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33328, &qword_1E42BAD18);
    type metadata accessor for SportsPlayGroupChildView(255);
    sub_1E3B1696C(&unk_1ECF33330);
    swift_getOpaqueTypeConformance2();
    sub_1E37AE398(&qword_1EE2889D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33320);
  }

  return result;
}

unint64_t sub_1E3B18290()
{
  result = qword_1ECF33338;
  if (!qword_1ECF33338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33340, &qword_1E42BAD20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33348, &qword_1E42BAD28);
    sub_1E3B16EA4(&unk_1ECF33350);
    swift_getOpaqueTypeConformance2();
    sub_1E37AE398(&qword_1EE2889D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33338);
  }

  return result;
}

unint64_t sub_1E3B183B8()
{
  result = qword_1ECF33358;
  if (!qword_1ECF33358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33360, &qword_1E42BAD30);
    sub_1E3B1696C(&unk_1ECF33368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33358);
  }

  return result;
}

unint64_t sub_1E3B18474()
{
  result = qword_1ECF333C8;
  if (!qword_1ECF333C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF333A8, &qword_1E42BAD68);
    sub_1E3B18500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF333C8);
  }

  return result;
}

unint64_t sub_1E3B18500()
{
  result = qword_1ECF333D0;
  if (!qword_1ECF333D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF333A0, &qword_1E42BAD60);
    sub_1E37AE398(&unk_1ECF333D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF333D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_95_6()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_111_3()
{

  return MEMORY[0x1EEDDECA8](0);
}

id sub_1E3B18658(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for CanonicalDescriptionTemplateView(0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v27 - v11);
  if (!(*(*a1 + 464))(v10))
  {
    return 0;
  }

  type metadata accessor for LayoutGrid();
  sub_1E3A256EC();
  v13 = a2;
  sub_1E3C2AE10();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v16;

  sub_1E3B18848(v21, v15, v17, v19, v12);
  type metadata accessor for CanonicalDescriptionTemplateHostingController(0);
  sub_1E3B19070(v12, v8);
  v22 = sub_1E3B190D4();
  result = [v22 view];
  if (result)
  {
    v24 = result;
    type metadata accessor for Accessibility();
    sub_1E40A7DC8();
    sub_1E38E89A0(v25, v26, v24);

    OUTLINED_FUNCTION_1_143();
    sub_1E3B1B7B4();
    return v22;
  }

  __break(1u);
  return result;
}

void sub_1E3B18848(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for CanonicalDescriptionTemplateLayout();
  a5[7] = sub_1E3E62370();
  v10 = type metadata accessor for CanonicalDescriptionTemplateView(0);
  v11 = v10[10];
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  swift_storeEnumTagMultiPayload();
  v12 = v10[11];
  *(a5 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *(a5 + v10[12]) = 0;
  type metadata accessor for TemplateViewModel(0);
  v13 = (*(*a1 + 672))();
  sub_1E410D4C8(9, v13, 0);
  v15 = v14;
  if (v14)
  {
    v16 = *(*v14 + 392);

    v18 = v16(v17);

    if (v18)
    {
      OUTLINED_FUNCTION_8();
      (*(v19 + 1640))(a2, a3, a4);
    }
  }

  v108 = v15;
  v109 = a1;
  HIDWORD(v95) = a2;
  v20 = sub_1E39C408C();
  v21 = v20;
  a5[5] = v20;
  v22 = MEMORY[0x1E69E6158];
  if (!v20)
  {
    goto LABEL_11;
  }

  v23 = *(*v20 + 488);
  v24 = swift_retain_n();
  v25 = v23(v24);

  if (!v25)
  {
    goto LABEL_11;
  }

  v27 = sub_1E373E010(23, v25, v26);

  if (!v27)
  {
    goto LABEL_12;
  }

  if (*v27 != _TtC8VideosUI13TextViewModel)
  {

LABEL_11:
    v27 = 0;
    goto LABEL_12;
  }

  v28 = sub_1E3C27024();
  v30 = v29;

  if (v30)
  {
    v106 = v27;
    *a5 = v28;
    a5[1] = v30;
    goto LABEL_13;
  }

LABEL_12:

  *a5 = 0;
  a5[1] = 0xE000000000000000;
  v106 = v27;
  if (!v21)
  {
LABEL_20:
    v119 = 0u;
    v120 = 0u;
    goto LABEL_21;
  }

LABEL_13:
  v31 = *(*v21 + 552);

  v33 = v31(v32);

  if (!v33)
  {
    goto LABEL_20;
  }

  v113 = &unk_1F5D7BE68;
  v114 = &off_1F5D7BC48;
  LOBYTE(v111) = 6;
  OUTLINED_FUNCTION_24_47(v34, v35, v36, v37, v38, v39, v40, v41, v91, v95, v96, v100, v104, v106, v15, a1);

  __swift_destroy_boxed_opaque_existential_1(&v111);
  if (!*(&v120 + 1))
  {
LABEL_21:
    v65 = v108;
    v64 = v109;
    sub_1E325F6F0(&v119, &unk_1ECF296E0, &unk_1E4298030);
LABEL_22:
    v119 = 0u;
    v120 = 0u;
    goto LABEL_23;
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  v49 = OUTLINED_FUNCTION_23_50(v42, v43, v44, v42, v45, v46, v47, v48, v92, v95, v97, v101);
  if ((v49 & 1) == 0 || !v111)
  {
    v65 = v108;
    v64 = v109;
    goto LABEL_22;
  }

  v113 = &unk_1F5D7BE68;
  v114 = &off_1F5D7BC48;
  LOBYTE(v111) = 16;
  OUTLINED_FUNCTION_24_47(v49, v50, v51, v52, v53, v54, v55, v56, v93, v95, v98, v102, v105, v107, v108, v109);

  v57 = __swift_destroy_boxed_opaque_existential_1(&v111);
  if (*(&v120 + 1))
  {
    v65 = v108;
    v64 = v110;
    if (OUTLINED_FUNCTION_23_50(v57, v58, v59, MEMORY[0x1E69E6158], v60, v61, v62, v63, v94, v95, v99, v103))
    {
      v66 = v112;
      a5[2] = v111;
      a5[3] = v66;
    }

    else
    {
      a5[2] = 0;
      a5[3] = 0xE000000000000000;
    }

    goto LABEL_24;
  }

  v65 = v108;
  v64 = v110;
LABEL_23:
  sub_1E325F6F0(&v119, &unk_1ECF296E0, &unk_1E4298030);
  v67 = 0xE000000000000000;
  a5[2] = 0;
  a5[3] = 0xE000000000000000;
  if (!v21)
  {
    v71 = 0;
    goto LABEL_32;
  }

LABEL_24:
  v68 = sub_1E39C408C();

  if (v68)
  {
    if (*v68 == _TtC8VideosUI13TextViewModel)
    {
      swift_beginAccess();
      v69 = *(v68 + 280);
      if (v69)
      {
        v70 = [v69 string];
        v71 = sub_1E4205F14();
        v67 = v72;

        goto LABEL_32;
      }

      v71 = 0;
      goto LABEL_31;
    }
  }

  v71 = 0;
LABEL_31:
  v67 = 0xE000000000000000;
LABEL_32:
  v113 = v22;
  v111 = v71;
  v112 = v67;
  type metadata accessor for TextViewModel();

  a5[4] = sub_1E3C27638(9, &v111, v65, 0, 0);
  v73 = (*(*v64 + 464))();
  if (v73)
  {
    v74 = v73;
    LODWORD(v95) = a4;
    v75 = sub_1E32AE9B0(v73);
    for (i = 0; ; ++i)
    {
      if (v75 == i)
      {

        goto LABEL_48;
      }

      if ((v74 & 0xC000000000000001) != 0)
      {
        v78 = MEMORY[0x1E6911E60](i, v74);
        v77 = v78;
      }

      else
      {
        if (i >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v77 = *(v74 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_60:
        __break(1u);
        return;
      }

      v118 = v77[49];
      v117 = 107;
      sub_1E3742F1C(v78, v79, v80);
      sub_1E4206254();
      sub_1E4206254();
      if (v111 == v115 && v112 == v116)
      {
        break;
      }

      v82 = sub_1E42079A4();

      if (v82)
      {
        goto LABEL_50;
      }
    }

LABEL_50:

    v85 = (*(*v77 + 672))(v84);
    type metadata accessor for ViewModel();

    v86 = sub_1E39BED80(107, v85, v108);
    v83 = v86;
    if (v86)
    {
      v87 = *(*v86 + 392);

      v89 = v87(v88);

      if (v89)
      {
        OUTLINED_FUNCTION_8();
        (*(v90 + 1640))(HIDWORD(v95), a3, v95);
      }
    }
  }

  else
  {

LABEL_48:

    v83 = 0;
  }

  a5[6] = v83;
}

uint64_t sub_1E3B19070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanonicalDescriptionTemplateView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3B190D4()
{
  v3 = OUTLINED_FUNCTION_9_5();
  v4 = type metadata accessor for CanonicalDescriptionTemplateView(v3);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v6 = objc_allocWithZone(v1);
  sub_1E3B19070(v0, v2);
  v7 = sub_1E4201E44();
  OUTLINED_FUNCTION_1_143();
  sub_1E3B1B7B4();
  return v7;
}

id sub_1E3B19164()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanonicalDescriptionTemplateFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1E3B191D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33408, &qword_1E42BAE20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33410, &qword_1E42BAE28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33418, &qword_1E42BAE30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33420, &qword_1E42BAE38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33428, &qword_1E42BAE40);
  sub_1E3B1B198();
  OUTLINED_FUNCTION_4_120();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_7_18();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_9_83();
  sub_1E32752B0(v0, &qword_1ECF33418, &qword_1E42BAE30, v1);
  swift_getOpaqueTypeConformance2();
  return sub_1E42013C4();
}

void sub_1E3B19330()
{
  OUTLINED_FUNCTION_31_1();
  v29 = v1;
  v31 = v2;
  v3 = sub_1E4201AE4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33420, &qword_1E42BAE38);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33410, &qword_1E42BAE28);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  sub_1E3B195F0();
  (*(v5 + 104))(v0, *MEMORY[0x1E697C438], v3);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33428, &qword_1E42BAE40);
  v19 = sub_1E3B1B198();
  v33 = v18;
  v34 = v19;
  OUTLINED_FUNCTION_4_120();
  v22 = OUTLINED_FUNCTION_16_8(v20, v21);
  sub_1E42033D4();
  (*(v5 + 8))(v0, v3);
  (*(v9 + 8))(v12, v7);
  v32 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33418, &qword_1E42BAE30);
  v33 = v7;
  v34 = v22;
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_16_8(v23, v24);
  OUTLINED_FUNCTION_9_83();
  sub_1E32752B0(v25, &qword_1ECF33418, &qword_1E42BAE30, v26);
  v27 = v30;
  sub_1E4203504();
  (*(v14 + 8))(v17, v27);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B195F0()
{
  v23 = sub_1E4201FA4();
  OUTLINED_FUNCTION_0_10();
  v22 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33428, &qword_1E42BAE40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33440, &qword_1E42BAE48);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_8();
  (*(v15 + 176))(v24);
  if (v25)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v18.n128_u64[0] = v24[2];
    v19.n128_u64[0] = v24[3];
    v16.n128_u64[0] = v24[0];
    v17.n128_u64[0] = v24[1];
    j_nullsub_1(v16, v17, v18, v19);
  }

  OUTLINED_FUNCTION_3();
  v20 = sub_1E4202704();
  MEMORY[0x1EEE9AC00](v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33458, &qword_1E42BAE50);
  sub_1E3B1B288();
  sub_1E4200AD4();
  sub_1E4202734();
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v30 = 0;
  sub_1E42022C4();
  (*(v13 + 16))(v2, v3, v11);
  sub_1E4201F94();
  sub_1E4202704();
  sub_1E3B1B198();
  sub_1E4203244();
  (*(v22 + 8))(v1, v23);
  sub_1E325F6F0(v2, &qword_1ECF33428, &qword_1E42BAE40);
  return (*(v13 + 8))(v3, v11);
}

void sub_1E3B198DC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v23[1] = v4;
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF334C8, &qword_1E42BAFA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF334D0, &qword_1E42BAFA8);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_4();
  v10 = sub_1E4202034();
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF334D8, &qword_1E42BAFB0);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v23 - v16;
  sub_1E4202024();
  v23[4] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF334E0, &qword_1E42BAFB8);
  sub_1E3B1B640();
  sub_1E4200C04();
  sub_1E4201FF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33500, &qword_1E42BAFC8);
  v18 = type metadata accessor for ModalDismissButton(255);
  OUTLINED_FUNCTION_8_82();
  v21 = sub_1E3B1B76C(v19, v20, &unk_1E42BEC68);
  v23[6] = v18;
  v23[7] = v21;
  OUTLINED_FUNCTION_16_8(v21, &unk_1E443E130);
  sub_1E4200C04();
  v22 = *(v23[0] + 48);
  (*(v14 + 16))(v0, v17, v12);
  (*(v8 + 16))(v0 + v22, v1, v6);
  sub_1E4201E04();
  (*(v8 + 8))(v1, v6);
  (*(v14 + 8))(v17, v12);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B19BDC()
{
  OUTLINED_FUNCTION_31_1();
  v27 = v1;
  v28 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v26 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v24 = v5 - v4;
  v25 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF334F0, &qword_1E42BAFC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33508, &qword_1E42BAFD0);
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_139();
  *v15 = sub_1E4201D44();
  *(v15 + 1) = 0;
  v15[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33510, &unk_1E42BAFD8);
  sub_1E3B1A870();
  sub_1E4202474();
  v20 = sub_1E32752B0(&qword_1ECF334F8, &qword_1ECF334F0, &qword_1E42BAFC0, MEMORY[0x1E6981870]);
  sub_1E4203224();
  (*(v7 + 8))(v11, v25);
  sub_1E325F6F0(v15, &qword_1ECF334F0, &qword_1E42BAFC0);
  v21 = v24;
  v22 = sub_1E4201CA4();
  v29 = v12;
  v30 = v20;
  OUTLINED_FUNCTION_16_8(v22, MEMORY[0x1E697D248]);
  sub_1E4203294();
  (*(v26 + 8))(v21, v28);
  (*(v18 + 8))(v0, v16);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B19EBC()
{
  v1 = type metadata accessor for ModalDismissButton(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  sub_1E3B780C4(0, 0, v0);
  OUTLINED_FUNCTION_8_82();
  v5 = sub_1E3B1B76C(v3, v4, &unk_1E42BEC68);
  sub_1E40A7FF0(0x632E676F6C616964, 0xEC00000065736F6CLL, 0, v1, v5);
  return sub_1E3B1B7B4();
}

void *sub_1E3B19FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33470, qword_1E42BAE58);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_4();
  *v2 = sub_1E4201D54();
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33490, &unk_1E42BAF60);
  sub_1E3B1A0DC(a1, v2 + *(v7 + 44));
  sub_1E4203DA4();
  sub_1E42015C4();
  sub_1E3741EA0(v2, a2, &qword_1ECF33470, qword_1E42BAE58);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33458, &qword_1E42BAE50);
  return memcpy((a2 + *(v8 + 36)), __src, 0x70uLL);
}

uint64_t sub_1E3B1A0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v8 = type metadata accessor for MediaTags(0);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33498, &qword_1E42E6F30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v65 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF334A0, &qword_1E42BAF70);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v65 - v20;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF334A8, &qword_1E42BAF78);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  v78 = v23 - v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v65 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v76 = &v65 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF334B0, &qword_1E42BAF80);
  v31 = OUTLINED_FUNCTION_17_2(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4_6();
  v77 = v32 - v33;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v34);
  v75 = &v65 - v35;
  sub_1E3B1A6DC(&v65 - v35);
  v36 = *(a1 + 40);
  if (v36)
  {
    v73 = a1;
    v37 = objc_allocWithZone(VUIMediaTagsViewLayout);
    swift_retain_n();
    v38 = [v37 initWithType_];
    v39 = sub_1E3820C18();
    sub_1E3820C20(v36, v38, 0, 0, v39, v2);
    v40 = sub_1E4202744();
    v41 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v40)
    {
      v41 = sub_1E4202774();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    sub_1E3821FE8(v2, v13);
    v42 = &v13[*(v10 + 36)];
    *v42 = v41;
    *(v42 + 1) = v3;
    *(v42 + 2) = v4;
    *(v42 + 3) = v5;
    *(v42 + 4) = v6;
    v42[40] = 0;
    sub_1E3741EA0(v13, v18, &qword_1ECF33498, &qword_1E42E6F30);
    v43 = 0;
    a1 = v73;
  }

  else
  {
    v43 = 1;
  }

  __swift_storeEnumTagSinglePayload(v18, v43, 1, v10);
  sub_1E3741EA0(v18, v21, &qword_1ECF334A0, &qword_1E42BAF70);
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_3();
  v44 = sub_1E4202734();
  sub_1E3741EA0(v21, v27, &qword_1ECF334A0, &qword_1E42BAF70);
  v45 = &v27[*(v74 + 36)];
  *v45 = v44;
  *(v45 + 1) = v3;
  *(v45 + 2) = v4;
  *(v45 + 3) = v5;
  *(v45 + 4) = v6;
  v45[40] = 0;
  v46 = v27;
  v47 = v76;
  sub_1E3741EA0(v46, v76, &qword_1ECF334A8, &qword_1E42BAF78);
  v48 = *(a1 + 48);
  if (v48)
  {
    v49 = swift_retain_n();
    sub_1E3881F30(v49, 2, v82);
    v50 = sub_1E4202744();
    v51 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v50)
    {
      v51 = sub_1E4202774();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v52 = v82[0];
    v48 = v82[1];
    v70 = v82[3];
    v71 = v82[2];
    v68 = v82[5];
    v69 = v82[4];
    v66 = v82[7];
    v67 = v82[6];
    v73 = v51;
    v74 = v82[8];
    LOBYTE(v80[0]) = 0;
  }

  else
  {
    v52 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v73 = 0;
    v74 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  v53 = v77;
  sub_1E32C533C(v75, v77);
  v54 = v78;
  sub_1E3743538(v47, v78, &qword_1ECF334A8, &qword_1E42BAF78);
  v55 = v72;
  sub_1E32C533C(v53, v72);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF334B8, &qword_1E42BAF88);
  sub_1E3743538(v54, v55 + *(v56 + 48), &qword_1ECF334A8, &qword_1E42BAF78);
  v57 = *(v56 + 64);
  v79[0] = v52;
  v79[1] = v48;
  v58 = v70;
  v59 = v71;
  v79[2] = v71;
  v79[3] = v70;
  v61 = v68;
  v60 = v69;
  v79[4] = v69;
  v79[5] = v68;
  v62 = v66;
  v63 = v67;
  v79[6] = v67;
  v79[7] = v66;
  v79[8] = v74;
  v79[9] = v73;
  v79[10] = v3;
  v79[11] = v4;
  v79[12] = v5;
  v79[13] = v6;
  LOBYTE(v79[14]) = 0;
  memcpy((v55 + v57), v79, 0x71uLL);
  sub_1E3743538(v79, v80, &qword_1ECF334C0, &unk_1E42BAF90);
  sub_1E325F6F0(v76, &qword_1ECF334A8, &qword_1E42BAF78);
  sub_1E325F6F0(v75, &qword_1ECF334B0, &qword_1E42BAF80);
  v80[0] = v52;
  v80[1] = v48;
  v80[2] = v59;
  v80[3] = v58;
  v80[4] = v60;
  v80[5] = v61;
  v80[6] = v63;
  v80[7] = v62;
  v80[8] = v74;
  v80[9] = v73;
  v80[10] = v3;
  v80[11] = v4;
  v80[12] = v5;
  v80[13] = v6;
  v81 = 0;
  sub_1E325F6F0(v80, &qword_1ECF334C0, &unk_1E42BAF90);
  sub_1E325F6F0(v78, &qword_1ECF334A8, &qword_1E42BAF78);
  return sub_1E325F6F0(v77, &qword_1ECF334B0, &qword_1E42BAF80);
}

uint64_t sub_1E3B1A6DC@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF48, &qword_1E42A6780);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_41();
  if (*(v1 + 32))
  {
    OUTLINED_FUNCTION_8();
    v7 = *(v6 + 1768);

    v7(v8);
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    sub_1E4203D44();
    sub_1E4200D94();

    v9 = (v2 + *(v4 + 36));
    *v9 = v11;
    v9[1] = v12;
    v9[2] = v13;
    sub_1E3741EA0(v2, a1, &qword_1ECF2BF48, &qword_1E42A6780);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
  }
}

void sub_1E3B1A870()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v77 = v4;
  v81 = sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v84 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  v80 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v83 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v79 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v82 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = (v12 - v11);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8, &unk_1E42AA120);
  OUTLINED_FUNCTION_0_10();
  v76 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v75 = (v16 - v17);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  v74 = &v61[-v19];
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  v73 = &v61[-v21];
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  v78 = &v61[-v23];
  v24 = v3[1];
  v85 = *v3;
  v86 = v24;
  v72 = sub_1E32822E0(v25, v26, v27);

  v64 = sub_1E4202C44();
  v63 = v28;
  v65 = v29;
  v85 = v64;
  v86 = v28;
  v62 = v30 & 1;
  v87 = v30 & 1;
  v88 = v29;
  v31 = v3[7];
  v32 = (*(*v31 + 1720))();
  v33 = type metadata accessor for CanonicalDescriptionTemplateView(0);
  v71 = *(v33 + 44);
  sub_1E3746E10(v13);
  v70 = *(v33 + 40);
  sub_1E374709C(v0);
  v34 = MEMORY[0x1E6981148];
  v35 = MEMORY[0x1E6981138];
  OUTLINED_FUNCTION_45_1();
  v36 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_45_1();
  sub_1E37B5FBC(v37);
  OUTLINED_FUNCTION_45_1();
  v38 = j__OUTLINED_FUNCTION_18();
  sub_1E37B6028(v32, v13, v0, v36, v1, v38 & 1, v34, v35, v78);

  v39 = *(v84 + 8);
  v84 += 8;
  v69 = v39;
  v39(v1, v81);
  v40 = *(v83 + 8);
  v83 += 8;
  v68 = v40;
  v40(v0, v80);
  v41 = *(v82 + 8);
  v82 += 8;
  v67 = v41;
  v41(v13, v79);
  sub_1E37434B8(v64, v63, v62);

  v42 = v3[3];
  v85 = v3[2];
  v86 = v42;

  v43 = sub_1E4202C44();
  v72 = v44;
  v85 = v43;
  v86 = v44;
  LOBYTE(v36) = v45 & 1;
  v87 = v45 & 1;
  v88 = v46;
  v47 = (*(*v31 + 1744))();
  sub_1E3746E10(v13);
  sub_1E374709C(v0);
  v48 = j__OUTLINED_FUNCTION_18();
  sub_1E37B5FBC(v1);
  v49 = j__OUTLINED_FUNCTION_18();
  v50 = v73;
  sub_1E37B6028(v47, v13, v0, v48, v1, v49 & 1, MEMORY[0x1E6981148], MEMORY[0x1E6981138], v73);

  v69(v1, v81);
  v68(v0, v80);
  v67(v13, v79);
  sub_1E37434B8(v43, v72, v36);

  v51 = v76;
  v52 = *(v76 + 16);
  v53 = v74;
  v54 = v78;
  v55 = v66;
  v52(v74, v78, v66);
  v56 = v75;
  v52(v75, v50, v55);
  v57 = v77;
  v52(v77, v53, v55);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33518, &unk_1E42BAFE8);
  v52(&v57[*(v58 + 48)], v56, v55);
  v59 = *(v51 + 8);
  v60 = OUTLINED_FUNCTION_45_1();
  v59(v60);
  (v59)(v54, v55);
  (v59)(v56, v55);
  (v59)(v53, v55);
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3B1AEF4(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CanonicalDescriptionTemplateHostingController(0);
  objc_msgSendSuper2(&v4, sel_viewDidAppear_, a1 & 1);
  return [v1 vui:a1 & 1 viewDidAppear:?];
}

void sub_1E3B1AF50(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1E3B1AEF4(a3);
}

void *sub_1E3B1AFE8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_9_5();
  v5 = type metadata accessor for CanonicalDescriptionTemplateView(v4);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E3B19070(a2, v2);
  v7 = sub_1E4201E34();
  v8 = v7;
  OUTLINED_FUNCTION_1_143();
  sub_1E3B1B7B4();
  if (v7)
  {
  }

  return v7;
}

id sub_1E3B1B084(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CanonicalDescriptionTemplateHostingController(0);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3B1B134(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1E3B1B198()
{
  result = qword_1ECF33430;
  if (!qword_1ECF33430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33428, &qword_1E42BAE40);
    sub_1E32752B0(&qword_1ECF33438, &qword_1ECF33440, &qword_1E42BAE48, MEMORY[0x1E697BE60]);
    sub_1E3B1B76C(&qword_1ECF33448, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33430);
  }

  return result;
}

unint64_t sub_1E3B1B288()
{
  result = qword_1ECF33460;
  if (!qword_1ECF33460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33458, &qword_1E42BAE50);
    sub_1E32752B0(&qword_1ECF33468, &qword_1ECF33470, qword_1E42BAE58, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33460);
  }

  return result;
}

void sub_1E3B1B384(uint64_t a1)
{
  sub_1E3B1B568(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1E3B1B568(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CanonicalDescriptionTemplateLayout();
      if (v3 <= 0x3F)
      {
        sub_1E3B1B568(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1E3B1B568(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1E3B1B568(319, &qword_1ECF33478, type metadata accessor for CanonicalSectionLayout, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1E3B1B568(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E3B1B640()
{
  result = qword_1ECF334E8;
  if (!qword_1ECF334E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF334E0, &qword_1E42BAFB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF334F0, &qword_1E42BAFC0);
    sub_1E32752B0(&qword_1ECF334F8, &qword_1ECF334F0, &qword_1E42BAFC0, MEMORY[0x1E6981870]);
    swift_getOpaqueTypeConformance2();
    sub_1E3B1B76C(&qword_1EE288768, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF334E8);
  }

  return result;
}

uint64_t sub_1E3B1B76C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3B1B7B4()
{
  v1 = OUTLINED_FUNCTION_9_5();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

void *sub_1E3B1B808@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210, &qword_1E4299980);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &__src[-v3];
  sub_1E3B1B988(&__src[-v3]);
  sub_1E4203D44();
  sub_1E42015C4();
  sub_1E32C53A0(v4, a1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33520, &qword_1E42BAFF8);
  return memcpy((a1 + *(v5 + 36)), __src, 0x70uLL);
}

uint64_t sub_1E3B1B988@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = (*(**v1 + 488))(v5);
  if (v8)
  {
    v10 = sub_1E373E010(9, v8, v9);

    if (v10)
    {
      if (*v10 == _TtC8VideosUI13TextViewModel)
      {
        OUTLINED_FUNCTION_18();
        sub_1E3F23370();

        (*(v4 + 32))(a1, v7, v3);
        return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
      }
    }
  }

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
}

uint64_t sub_1E3B1BB80(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 203))
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

uint64_t sub_1E3B1BBC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 202) = 0;
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 203) = 1;
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

    *(result + 203) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3B1BC48()
{
  result = qword_1ECF33528;
  if (!qword_1ECF33528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33520, &qword_1E42BAFF8);
    sub_1E37AC5F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33528);
  }

  return result;
}

void sub_1E3B1BCD4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3277E60(0x64656C62616E65, 0xE700000000000000, a1, &v33);
  if (v34)
  {
    if (OUTLINED_FUNCTION_3_119(v4, v5, v6, MEMORY[0x1E69E6370], v7, v8, v9, v10, v32, v33))
    {
      v11 = v32;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E329505C(&v33);
  }

  v11 = 0;
LABEL_6:
  sub_1E3277E60(0xD000000000000021, 0x80000001E42717E0, a1, &v33);
  if (v34)
  {
    v19 = OUTLINED_FUNCTION_3_119(v12, v13, v14, MEMORY[0x1E69E63B0], v15, v16, v17, v18, v32, v33);
    if (v19)
    {
      v20 = v32;
    }

    else
    {
      v20 = 0;
    }

    v21 = v19 ^ 1;
  }

  else
  {
    sub_1E329505C(&v33);
    v20 = 0;
    v21 = 1;
  }

  v35 = v21;
  sub_1E3277E60(0xD000000000000029, 0x80000001E42717B0, a1, &v33);

  if (v34)
  {
    OUTLINED_FUNCTION_3_119(v22, v23, v24, MEMORY[0x1E69E63B0], v25, v26, v27, v28, v32, v33);
    OUTLINED_FUNCTION_4_121();
  }

  else
  {
    sub_1E329505C(&v33);
    v29 = 0;
    v30 = 1;
  }

  v31 = v35;
  *a2 = v11;
  *(a2 + 8) = v29;
  *(a2 + 16) = v30;
  *(a2 + 24) = v20;
  *(a2 + 32) = v31;
  *(a2 + 40) = 0x64656C62616E65;
  *(a2 + 48) = 0xE700000000000000;
  *(a2 + 56) = 0xD000000000000029;
  *(a2 + 64) = 0x80000001E42717B0;
  *(a2 + 72) = 0xD000000000000021;
  *(a2 + 80) = 0x80000001E42717E0;
}

uint64_t _s28LivePostPlayShelfFetchPolicyVMa(uint64_t a1)
{
  result = qword_1EE29A6E0;
  if (!qword_1EE29A6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1E3B1BEB8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  PolicyVMa = _s28LivePostPlayShelfFetchPolicyVMa(0);
  v5 = &a2[PolicyVMa[9]];
  *v5 = 0x64656C62616E65;
  v5[1] = 0xE700000000000000;
  v6 = &a2[PolicyVMa[10]];
  *v6 = 0x6863746566657270;
  v6[1] = 0xE800000000000000;
  v7 = &a2[PolicyVMa[11]];
  *v7 = 0xD000000000000011;
  v7[1] = 0x80000001E4271810;
  v8 = &a2[PolicyVMa[12]];
  *v8 = 0xD000000000000018;
  v8[1] = 0x80000001E4271830;
  v9 = &a2[PolicyVMa[13]];
  *v9 = 0xD000000000000020;
  v9[1] = 0x80000001E4271850;
  sub_1E3277E60(0x64656C62616E65, 0xE700000000000000, a1, __src);
  if (*&__src[24])
  {
    if (OUTLINED_FUNCTION_0_147(v10, v11, v12, MEMORY[0x1E69E6370], v13, v14, v15, v16, v57, __src[0]))
    {
      v17 = v57;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E329505C(__src);
  }

  v17 = 0;
LABEL_6:
  *a2 = v17;
  sub_1E3277E60(0x6863746566657270, 0xE800000000000000, a1, __src);
  if (*&__src[24])
  {
    if (OUTLINED_FUNCTION_0_147(v18, v19, v20, MEMORY[0x1E69E6370], v21, v22, v23, v24, v57, __src[0]))
    {
      v25 = v57;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1E329505C(__src);
  }

  v25 = 0;
LABEL_11:
  a2[1] = v25;
  sub_1E3277E60(0xD000000000000011, 0x80000001E4271810, a1, __src);
  if (*&__src[24])
  {
    if (OUTLINED_FUNCTION_0_147(v26, v27, v28, MEMORY[0x1E69E63B0], v29, v30, v31, v32, v57, __src[0]))
    {
      v33 = PolicyVMa[6];
      sub_1E41FE564();
      v34 = sub_1E41FE5D4();
      v35 = &a2[v33];
      v36 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    sub_1E329505C(__src);
  }

  v37 = PolicyVMa[6];
  v34 = sub_1E41FE5D4();
  v35 = &a2[v37];
  v36 = 1;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v35, v36, 1, v34);
  sub_1E3277E60(0xD000000000000018, 0x80000001E4271830, a1, __src);
  if (*&__src[24])
  {
    OUTLINED_FUNCTION_0_147(v38, v39, v40, MEMORY[0x1E69E63B0], v41, v42, v43, v44, v57, __src[0]);
    OUTLINED_FUNCTION_4_121();
  }

  else
  {
    sub_1E329505C(__src);
    v45 = 0;
    v46 = 1;
  }

  v47 = &a2[PolicyVMa[7]];
  *v47 = v45;
  v47[8] = v46;
  sub_1E3277E60(0xD000000000000020, 0x80000001E4271850, a1, __src);

  if (!*&__src[24])
  {
    sub_1E329505C(__src);
    goto LABEL_23;
  }

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_0_147(v48, v49, v50, v48, v51, v52, v53, v54, v57, __src[0]) & 1) == 0)
  {
LABEL_23:
    v55 = MEMORY[0x1E69E7CC8];
    goto LABEL_24;
  }

  v55 = v58;
LABEL_24:
  sub_1E3B1BCD4(v55, __src);
  return memcpy(&a2[PolicyVMa[8]], __src, 0x58uLL);
}

uint64_t sub_1E3B1C194(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_1E3B1C1D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E3B1C260(uint64_t a1)
{
  sub_1E3273C28(319);
  if (v1 <= 0x3F)
  {
    sub_1E3B1C340(319, &qword_1EE23B420, MEMORY[0x1E69E63B0]);
    if (v2 <= 0x3F)
    {
      sub_1E3B1C340(319, qword_1EE2611D0, &_s32FetchPolicyOnInvalidPrefetchTimeVN);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E3B1C340(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1E4207104();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_1E3B1C38C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_titleLabel;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void *sub_1E3B1C3D4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_subtitleLabel;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void *sub_1E3B1C41C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_descriptionLabel;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3B1C47C(void *a1, uint64_t *a2)
{
  v5 = *a2;
  swift_beginAccess();
  v6 = *&v2[v5];
  *&v2[v5] = a1;
  v7 = *a2;
  v8 = a1;
  OUTLINED_FUNCTION_5_0(&v2[v7], v9);
  [v2 vui:*&v2[v7] addSubview:v6 oldView:?];
}

double sub_1E3B1C510(int a1, double a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_layout;
  OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_layout], v381);
  v7 = *&v3[v6];
  if (!v7)
  {
    return a2;
  }

  LODWORD(r1) = a1;
  v8 = objc_opt_self();

  v9 = [v8 isTV];
  v10 = *(*v7 + 176);

  v10(v382, v11);
  v12 = *&v382[1];
  v13 = *&v382[3];

  v14 = *(MEMORY[0x1E69DDCE0] + 8);
  if (v383)
  {
    v15 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v14 = v12;
    v15 = v13;
  }

  v358 = v14;
  v16 = a2 - v14 - v15;
  OUTLINED_FUNCTION_5_0((v7 + 136), v380);
  if (sub_1E3B1D638(v7[136], 1, v17))
  {
    v19 = 1;
    if (v9)
    {
LABEL_7:
      v20 = 0;
LABEL_13:
      v25 = 0.0;
      v29 = 0.0;
      v31 = 0.0;
      rect = 0.0;
      v33 = 0.0;
      goto LABEL_16;
    }
  }

  else
  {
    v19 = sub_1E3B1D638(v7[136], 2, v18);
    if (v9)
    {
      goto LABEL_7;
    }
  }

  v21 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_imageView;
  OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_imageView], v379);
  v20 = *&v3[v21];
  if (!v20)
  {
    goto LABEL_13;
  }

  v22 = v20;
  [v22 topMarginWithBaselineMargin_];
  v24 = v23;
  v25 = 0.0;
  v26 = OUTLINED_FUNCTION_16_76();
  [v26 v27];
  v29 = v28;
  v31 = v30;

  v32 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_titleLabel;
  OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_titleLabel], &v360);
  rect = v24;
  if (*&v3[v32])
  {

    v20 = 0;
  }

  else
  {
    v25 = v24 + 0.0 + v31;
  }

  v33 = v358;
LABEL_16:
  v34 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_titleLabel;
  OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_titleLabel], v378);
  r1_16 = v34;
  v35 = *&v3[v34];
  r1_8 = v15;
  if (!v35)
  {
    v39 = v25;
    v324 = 0.0;
    v326 = 0;
    v331 = 0.0;
    v40 = 0;
    if (!v9)
    {
      v35 = v20;
      v331 = 0.0;
      v326 = 0;
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  v36 = v35;
  if (v9)
  {
    if (v19)
    {
      v37 = 78.0;
    }

    else
    {
      v37 = 48.0;
    }

    v324 = v358;
    v38 = v16;
  }

  else
  {
    v41 = sub_1E374E9C4();
    (*(*v41 + 152))(v384);

    v42 = *&v384[3];
    v43 = v385;
    v44 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_imageView;
    OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_imageView], &v363);
    if (*&v3[v44])
    {
      if (v43)
      {
        v42 = 6.0;
      }

      v388.origin.x = v33;
      v388.origin.y = rect;
      v388.size.width = v29;
      v388.size.height = v31;
      v324 = v42 + CGRectGetMaxX(v388);
      v38 = a2 - v324 - v15;
      v37 = 32.0;
    }

    else
    {
      v37 = 32.0;
      v324 = v358;
      v38 = v16;
    }
  }

  v45 = v36;
  [v45 topMarginWithBaselineMargin_];
  v331 = v46;
  v47 = v25 + v46;
  v48 = OUTLINED_FUNCTION_16_76();
  v40 = *&v38;
  [v48 v49];
  v51 = v50;

  v326 = *&v51;
  v39 = v47 + v51;
  if (v9)
  {

    v20 = v35;
LABEL_31:
    v52 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_imageView;
    OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_imageView], &v366);
    v53 = *&v3[v52];
    if (v53)
    {
      v54 = v53;
      [v54 topMarginWithBaselineMargin_];
      rect = v55;
      v56 = OUTLINED_FUNCTION_16_76();
      [v56 v57];
      v29 = v58;
      v31 = v59;

      v35 = v20;
      v33 = v358;
    }

    else
    {
      v35 = v20;
    }

    goto LABEL_41;
  }

  if (v29 == 0.0 && v31 == 0.0)
  {
  }

  else
  {
    v328 = v33;
    v60 = v31;
    v61 = [v45 vuiFont];
    if (v61)
    {
      v62 = v61;
      v63 = v29;
      [v61 capHeight];
      v65 = v64;
    }

    else
    {
      v63 = v29;
      v65 = 0.0;
    }

    [v45 baselineHeight];
    v67 = v66;

    OUTLINED_FUNCTION_21_58(v331 + v67 - v65, v65 - v60);
    v29 = v63;
    v31 = v60;
    v33 = v328;
  }

LABEL_41:
  v337 = v40;
  v333 = v31;
  v68 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_subtitleLabel;
  OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_subtitleLabel], v377);
  r1_24 = v68;
  v69 = *&v3[v68];
  v335 = 0;
  v352 = a2;
  if (v69)
  {
    v70 = v69;
    v71 = 18.0;
    v72 = v358;
    v73 = v16;
    if (v9)
    {
      v74 = sub_1E374E9C4();
      (*(*v74 + 152))(v386);

      v75 = *&v386[3];
      v76 = v387;
      v77 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_imageView;
      OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_imageView], &v369);
      v73 = v16;
      v72 = v358;
      if (*&v3[v77])
      {
        if (v76)
        {
          v75 = 6.0;
        }

        v389.origin.x = v33;
        v389.origin.y = rect;
        v389.size.width = v29;
        v389.size.height = v333;
        v72 = v75 + CGRectGetMaxX(v389);
        v73 = a2 - v72 - r1_8;
      }

      if (v19)
      {
        v71 = 48.0;
      }

      else
      {
        v71 = 28.0;
      }
    }

    v322 = *&v72;
    v78 = v70;
    sub_1E3C8B6B4(v35, v71);
    v80 = v39 + v79;
    VUIRoundValue();
    v320 = v81;
    if (v9 && (v29 != 0.0 || v333 != 0.0))
    {
      v82 = [v78 vuiFont];
      if (v82)
      {
        v83 = v82;
        [v82 capHeight];
        v85 = v84;
      }

      else
      {
        v85 = 0.0;
      }

      [v78 baselineHeight];
      OUTLINED_FUNCTION_21_58(v80 + v86 - v85, v85 - v333);
    }

    v87 = OUTLINED_FUNCTION_16_76();
    [v87 v88];
  }

  else
  {
    v320 = 0;
    v322 = 0;
    v69 = v35;
  }

  v329 = *&v33;
  v89 = [v8 isMac];
  v90 = 60.0;
  if (v19)
  {
    v90 = 48.0;
  }

  v91 = 40.0;
  if (v89)
  {
    v91 = 24.0;
  }

  if (v9)
  {
    v92 = v90;
  }

  else
  {
    v92 = v91;
  }

  v93 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_descriptionLabel;
  OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_descriptionLabel], v376);
  v94 = *&v3[v93];
  if (v94)
  {
    v95 = v94;
    sub_1E3C8B6B4(v69, v92);
    VUIRoundValue();
    v318 = v96;
    v97 = OUTLINED_FUNCTION_16_76();
    [v97 v98];
    v335 = v99;
    v101 = v100;

    v316 = *&v358;
    v69 = v94;
  }

  else
  {
    v101 = 0.0;
    v316 = 0;
    v318 = 0;
  }

  v102 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_tableView;
  OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_tableView], v375);
  r1_8a = v102;
  v103 = *&v3[v102];
  if (v103)
  {
    v104 = v103;
    sub_1E3C8B6B4(v69, v92);
    VUIRoundValue();
    v314 = v105;
    [v104 vui:v16 sizeThatFits:0.0];
    v16 = v106;

    v107 = v104;
    v108 = r1;
  }

  else
  {
    v108 = r1;
    if (!v69)
    {
      v104 = 0;
      OUTLINED_FUNCTION_17_72();
      goto LABEL_77;
    }

    v104 = v69;
    OUTLINED_FUNCTION_17_72();
  }

  if (v9)
  {
    v109 = 28.0;
  }

  else
  {
    v109 = 16.0;
  }

  v110 = v107;
  [v104 bottomMarginWithBaselineMargin_];

LABEL_77:
  if (v108)
  {

    return a2;
  }

  [v3 vuiIsRTL];
  v111 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_imageView;
  OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_imageView], v374);
  v112 = *&v3[v111];
  if (v112)
  {
    v113 = v112;
    OUTLINED_FUNCTION_10_81();
    OUTLINED_FUNCTION_2_6();
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    OUTLINED_FUNCTION_20_61();
  }

  v114 = *&v3[r1_16];
  if (v114)
  {
    v115 = v114;
    OUTLINED_FUNCTION_10_81();
    OUTLINED_FUNCTION_2_6();
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    OUTLINED_FUNCTION_20_61();
  }

  v116 = *&v3[r1_24];
  if (v116)
  {
    v117 = v116;
    OUTLINED_FUNCTION_10_81();
    OUTLINED_FUNCTION_2_6();
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    OUTLINED_FUNCTION_20_61();
  }

  v118 = *&v3[v93];
  if (v118)
  {
    v119 = v118;
    OUTLINED_FUNCTION_10_81();
    OUTLINED_FUNCTION_2_6();
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    OUTLINED_FUNCTION_20_61();
  }

  v120 = *&v3[r1_8a];
  if (v120)
  {
    v121 = v120;
    OUTLINED_FUNCTION_10_81();
    OUTLINED_FUNCTION_2_6();
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    OUTLINED_FUNCTION_20_61();
  }

  v373 = ObjectType;
  *&v372 = v3;
  v122 = objc_allocWithZone(MEMORY[0x1E69DC608]);
  v359 = v3;
  recta = sub_1E399A6CC(&v372);
  v123 = *&v3[v111];
  v124 = 0.0;
  if (!v123)
  {
    goto LABEL_98;
  }

  v125 = sub_1E32868C0(v123, &selRef_accessibilityLabel);
  if (!v126)
  {
    goto LABEL_98;
  }

  v127 = v125;
  v128 = v126;
  v129 = *&v3[v111];
  if (!v129)
  {

LABEL_98:
    v134 = MEMORY[0x1E69E7CC0];
    v29 = 0.0;
    v101 = 0.0;
    v16 = 0.0;
    goto LABEL_99;
  }

  [v129 frame];
  OUTLINED_FUNCTION_8_83();
  v130 = OUTLINED_FUNCTION_13_91();
  v134 = sub_1E3740F88(v130, v131, v132, v133);
  v136 = *(v134 + 2);
  v135 = *(v134 + 3);
  if (v136 >= v135 >> 1)
  {
    v134 = sub_1E3740F88((v135 > 1), v136 + 1, 1, v134);
  }

  *(v134 + 2) = v136 + 1;
  v137 = &v134[16 * v136];
  *(v137 + 4) = v127;
  *(v137 + 5) = v128;
  OUTLINED_FUNCTION_19();
  if (!CGRectEqualToRect(v390, v397))
  {
    OUTLINED_FUNCTION_19();
    v391.origin.x = OUTLINED_FUNCTION_25_53();
    CGRectUnion(v391, v398);
    OUTLINED_FUNCTION_8_83();
  }

LABEL_99:
  v138 = *&v3[r1_16];
  if (!v138)
  {
    goto LABEL_107;
  }

  v139 = sub_1E32868C0(v138, &selRef_text);
  if (!v140)
  {
    goto LABEL_107;
  }

  v141 = v139;
  v142 = v140;
  v143 = *&v3[r1_16];
  if (!v143)
  {

LABEL_107:
    v159 = MEMORY[0x1E69E7CC0];
    goto LABEL_108;
  }

  v124 = v16;
  [v143 frame];
  v145 = v144;
  v147 = v146;
  v149 = v148;
  v151 = v150;
  if (v9)
  {
    v373 = ObjectType;
    *&v372 = v359;
    v152 = objc_allocWithZone(MEMORY[0x1E69DC608]);
    v153 = v359;
    v154 = sub_1E399A6CC(&v372);
    OUTLINED_FUNCTION_27_40(v154);
    [v152 setAccessibilityFrameInContainerSpace_];
    sub_1E399AB94();
    OUTLINED_FUNCTION_12_79();
    v155 = OUTLINED_FUNCTION_13_91();
    v159 = sub_1E3B1DC54(v155, v156, v157, v158);
    OUTLINED_FUNCTION_22_52();
    if (v169)
    {
      v296 = OUTLINED_FUNCTION_1_12(v168);
      v160 = sub_1E3B1DC54(v296, v297, v298, v159);
      v159 = v160;
    }

    a2 = v352;
    v16 = v124;
    OUTLINED_FUNCTION_7_115(v160, v161, v162, v163, v164, v165, v166, v167, v314, v316, v318, v320, v322, *&v324, v326, v329, *&v331, *&v333, v335, v337, r1, r1_8a, 0, r1_24, *&v352, recta, ObjectType, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372);
    v124 = *&r1_16;
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v305 = OUTLINED_FUNCTION_27();
      v134 = sub_1E3740F88(v305, v306, v307, v134);
    }

    v193 = *(v134 + 2);
    v192 = *(v134 + 3);
    r1b = v151;
    if (v193 >= v192 >> 1)
    {
      v308 = OUTLINED_FUNCTION_1_12(v192);
      v134 = sub_1E3740F88(v308, v309, v310, v134);
    }

    *(v134 + 2) = v193 + 1;
    v194 = &v134[16 * v193];
    *(v194 + 4) = v141;
    *(v194 + 5) = v142;
    OUTLINED_FUNCTION_19();
    v16 = 0.0;
    v393.origin.x = 0.0;
    v393.origin.y = v29;
    v393.size.width = v101;
    v393.size.height = v124;
    if (CGRectEqualToRect(v393, v400))
    {
      v124 = v145;
      v29 = v147;
      v101 = v149;
      v16 = r1b;
    }

    else
    {
      v396.origin.x = v145;
      v396.origin.y = v147;
      v396.size.width = v149;
      v396.size.height = r1b;
      v402.origin.x = 0.0;
      v402.origin.y = v29;
      v402.size.width = v101;
      v402.size.height = v124;
      CGRectUnion(v396, v402);
      OUTLINED_FUNCTION_8_83();
    }

    *&v372 = v134;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
    v251 = sub_1E3924274();
    v252 = OUTLINED_FUNCTION_19_67(v251);

    OUTLINED_FUNCTION_26_47(v253, v254, v255, v256, v257, v258, v259, v260, v314, v316, v318, v320, v322, *&v324, v326, v329, *&v331, *&v333, v335, v337, *&r1b, r1_8a, 0, r1_24, *&v352, recta);
    v261 = OUTLINED_FUNCTION_25_53();
    [v262 v263];
    sub_1E399AB94();
    OUTLINED_FUNCTION_12_79();
    v264 = v252;
    v265 = OUTLINED_FUNCTION_13_91();
    v159 = sub_1E3B1DC54(v265, v266, v267, v268);
    OUTLINED_FUNCTION_22_52();
    a2 = v353;
    if (v169)
    {
      v311 = OUTLINED_FUNCTION_1_12(v277);
      v269 = sub_1E3B1DC54(v311, v312, v313, v159);
      v159 = v269;
    }

    OUTLINED_FUNCTION_7_115(v269, v270, v271, v272, v273, v274, v275, v276, v315, v317, v319, v321, v323, v325, v327, v330, v332, v334, v336, v338, r1c, r1_8b, r1_16b, r1_24b, *&v353, rectb, ObjectType, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372);
  }

LABEL_108:
  v170 = *&v3[r1_24];
  if (v170)
  {
    v171 = sub_1E32868C0(v170, &selRef_text);
    if (v172)
    {
      v173 = v171;
      v174 = v172;
      v175 = *&v3[r1_24];
      if (v175)
      {
        r1_24a = v16;
        v176 = v101;
        [v175 frame];
        v179 = v177;
        v180 = v178;
        v182 = v181;
        v184 = v183;
        if (v9)
        {
          r1a = v177;
          r1_16a = v178;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v299 = OUTLINED_FUNCTION_27();
            v134 = sub_1E3740F88(v299, v300, v301, v134);
          }

          width = v182;
          v187 = *(v134 + 2);
          v186 = *(v134 + 3);
          height = v184;
          if (v187 >= v186 >> 1)
          {
            v302 = OUTLINED_FUNCTION_1_12(v186);
            v134 = sub_1E3740F88(v302, v303, v304, v134);
          }

          *(v134 + 2) = v187 + 1;
          v189 = &v134[16 * v187];
          *(v189 + 4) = v173;
          *(v189 + 5) = v174;
          OUTLINED_FUNCTION_19();
          v392.origin.x = v124;
          v392.origin.y = v29;
          v392.size.width = v176;
          v392.size.height = r1_24a;
          if (CGRectEqualToRect(v392, v399))
          {
            y = r1_16a;
            x = r1a;
          }

          else
          {
            v394.origin.x = r1a;
            v394.origin.y = r1_16a;
            v394.size.width = width;
            v394.size.height = v184;
            v401.origin.x = v124;
            v401.origin.y = v29;
            v401.size.width = v176;
            v401.size.height = r1_24a;
            v395 = CGRectUnion(v394, v401);
            x = v395.origin.x;
            y = v395.origin.y;
            width = v395.size.width;
            height = v395.size.height;
          }

          *&v372 = v134;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
          v198 = sub_1E3924274();
          v199 = OUTLINED_FUNCTION_19_67(v198);

          OUTLINED_FUNCTION_26_47(v200, v201, v202, v203, v204, v205, v206, v207, v314, v316, v318, v320, v322, *&v324, v326, v329, *&v331, *&v333, v335, v337, *&r1a, r1_8a, *&r1_16a, *&r1_24a, *&v352, recta);
          [v199 setAccessibilityFrameInContainerSpace_];
          sub_1E399AB94();
          OUTLINED_FUNCTION_12_79();
          v208 = v199;
        }

        else
        {

          v373 = ObjectType;
          *&v372 = v359;
          v195 = objc_allocWithZone(MEMORY[0x1E69DC608]);
          v196 = v359;
          v197 = sub_1E399A6CC(&v372);
          OUTLINED_FUNCTION_27_40(v197);
          [v195 setAccessibilityFrameInContainerSpace_];
          sub_1E399AB94();
          OUTLINED_FUNCTION_12_79();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v290 = OUTLINED_FUNCTION_27();
          v159 = sub_1E3B1DC54(v290, v291, v292, v159);
        }

        a2 = v352;
        OUTLINED_FUNCTION_22_52();
        if (v169)
        {
          v293 = OUTLINED_FUNCTION_1_12(v217);
          v209 = sub_1E3B1DC54(v293, v294, v295, v159);
          v159 = v209;
        }

        OUTLINED_FUNCTION_7_115(v209, v210, v211, v212, v213, v214, v215, v216, v314, v316, v318, v320, v322, *&v324, v326, v329, *&v331, *&v333, v335, v337, r1, r1_8a, r1_16, *&r1_24a, *&v352, recta, ObjectType, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372);
        goto LABEL_134;
      }
    }
  }

LABEL_134:
  v218 = *&v3[v93];
  if (v218)
  {
    v219 = [v218 descriptionText];
    if (v219)
    {
      v220 = v219;
      v221 = *&v3[v93];
      if (v221)
      {
        [v221 frame];
        v223 = v222;
        v225 = v224;
        v227 = v226;
        v229 = v228;
        v373 = ObjectType;
        *&v372 = v359;
        v230 = objc_allocWithZone(MEMORY[0x1E69DC608]);
        v231 = v359;
        v232 = sub_1E399A6CC(&v372);
        v233 = [v220 string];
        v234 = sub_1E4205F14();
        v236 = v235;

        sub_1E399AB0C(v234, v236, v232);
        [v232 setAccessibilityFrameInContainerSpace_];
        sub_1E399AB94();
        OUTLINED_FUNCTION_12_79();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v284 = OUTLINED_FUNCTION_27();
          v159 = sub_1E3B1DC54(v284, v285, v286, v159);
        }

        OUTLINED_FUNCTION_22_52();
        if (v169)
        {
          v287 = OUTLINED_FUNCTION_1_12(v237);
          v159 = sub_1E3B1DC54(v287, v288, v289, v159);
        }

        OUTLINED_FUNCTION_7_115(v238, v239, v240, v241, v242, v243, v244, v245, v314, v316, v318, v320, v322, *&v324, v326, v329, *&v331, *&v333, v335, v337, r1, r1_8a, r1_16, r1_24, *&v352, recta, ObjectType, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372);
      }

      else
      {
      }
    }
  }

  v246 = *&v3[r1_8a];
  if (v246)
  {
    type metadata accessor for TomatometerTableView();
    OUTLINED_FUNCTION_12_79();
    v247 = v246;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = OUTLINED_FUNCTION_27();
      v159 = sub_1E3B1DC54(v278, v279, v280, v159);
    }

    v249 = *(v159 + 2);
    v248 = *(v159 + 3);
    if (v249 >= v248 >> 1)
    {
      v281 = OUTLINED_FUNCTION_1_12(v248);
      v159 = sub_1E3B1DC54(v281, v282, v283, v159);
    }

    *(v159 + 2) = v249 + 1;
    sub_1E329504C(&v372, &v159[32 * v249 + 32]);
  }

  sub_1E399AA9C(v159, v359);

  return a2;
}

uint64_t sub_1E3B1D638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3B1DD84(a1, a2, a3);
  sub_1E4206254();
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

id sub_1E3B1D73C()
{
  v1 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_imageView;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_imageView, v14);
  v2 = *(v0 + v1);
  if (v2)
  {
    [v2 setImage_];
  }

  v3 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_titleLabel;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_titleLabel, v13);
  v4 = *(v0 + v3);
  if (v4)
  {
    [v4 setVuiText_];
  }

  v5 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_subtitleLabel;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_subtitleLabel, v12);
  v6 = *(v0 + v5);
  if (v6)
  {
    [v6 setVuiText_];
  }

  v7 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_descriptionLabel;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_descriptionLabel, v11);
  v8 = *(v0 + v7);
  if (v8)
  {
    v8 = [v8 setDescriptionText_];
  }

  v9 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_tableView;
  OUTLINED_FUNCTION_0_12(v8);
  result = *(v0 + v9);
  if (result)
  {
    return [result vui_prepareForReuse];
  }

  return result;
}

void *sub_1E3B1D94C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_imageView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void *sub_1E3B1D9BC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_tableView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

id sub_1E3B1D9F8()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_debugLineRects) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_descriptionLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_tableView) = 0;
  v6 = ObjectType;
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

id sub_1E3B1DAC8(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_debugLineRects] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_layout] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_subtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_descriptionLabel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_imageView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_tableView] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

char *sub_1E3B1DC54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1E3B1DD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE24E4B8[0];
  if (!qword_1EE24E4B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE24E4B8);
  }

  return result;
}

uint64_t sub_1E3B1DDF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3B1DE64(uint64_t (*a1)(void))
{
  sub_1E3B1DDF0();
  v2 = a1();
  sub_1E383FB9C(v2, v3, v4);
  return sub_1E4207274() & 1;
}

uint64_t sub_1E3B1DEC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3B1DDF0();
  *a1 = result;
  return result;
}

uint64_t sub_1E3B1DF18(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

unint64_t sub_1E3B1DF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE27BEB0;
  if (!qword_1EE27BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE27BEB0);
  }

  return result;
}

uint64_t sub_1E3B1DFDC()
{
  v4 = sub_1E3B1DDF0();
  sub_1E3B1E054(v4, v0, v1);
  v2 = sub_1E4207944();
  MEMORY[0x1E69109E0](v2);

  MEMORY[0x1E69109E0](93, 0xE100000000000000);
  return 91;
}

unint64_t sub_1E3B1E054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF33570;
  if (!qword_1ECF33570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33570);
  }

  return result;
}

uint64_t sub_1E3B1E0A8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1E3B1E0E8(a1);
  return v2;
}

uint64_t sub_1E3B1E0E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33568, &unk_1E42BB188);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-v7];
  *(v1 + 16) = 0;
  v9 = OBJC_IVAR____TtC8VideosUI21ViewInteractionStates__states;
  v15 = 0;
  sub_1E3B1DF88(v10, v11, v12);
  sub_1E4207CD4();
  sub_1E4200634();
  (*(v5 + 32))(v1 + v9, v8, v3);
  *(v1 + 16) = a1;

  return v1;
}

BOOL sub_1E3B1E20C()
{
  v0 = sub_1E3B1DDF0();
  v1 = sub_1E3B1DDF0();

  return sub_1E34AF5A4(v0, v1);
}

double sub_1E3B1E260(uint64_t a1)
{

  sub_1E4200FE4();

  return result;
}

uint64_t sub_1E3B1E300()
{

  v1 = OBJC_IVAR____TtC8VideosUI21ViewInteractionStates__states;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33568, &unk_1E42BB188);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for ViewInteractionStates(uint64_t a1)
{
  result = qword_1EE29B020;
  if (!qword_1EE29B020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3B1E440(uint64_t a1)
{
  sub_1E3B1E4DC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3B1E4DC()
{
  if (!qword_1EE28A040)
  {
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE28A040);
    }
  }
}

uint64_t sub_1E3B1E52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v76 = a3;
  v75 = a2;
  v81 = a4;
  v79 = sub_1E4201334();
  OUTLINED_FUNCTION_0_10();
  v78 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33578, &qword_1E42BB270) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v67 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33580, &qword_1E42BB278) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_26_2();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33588, &qword_1E42BB280) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v67 - v21;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33590, &qword_1E42BB288);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_50_1();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33598, &qword_1E42BB290);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v67 - v25;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335A0, &qword_1E42BB298);
  OUTLINED_FUNCTION_0_10();
  v72 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  v70 = v29;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335A8, &qword_1E42BB2A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v67 - v31;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335B0, &qword_1E42BB2A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  v74 = v34;
  v80 = a1;
  sub_1E4202364();
  KeyPath = swift_getKeyPath();
  v36 = &v16[*(v13 + 44)];
  *v36 = KeyPath;
  *(v36 + 1) = 2;
  v36[16] = 0;
  sub_1E4203DA4();
  sub_1E42015C4();
  sub_1E3741EA0(v16, v7, &qword_1ECF33578, &qword_1E42BB270);
  memcpy((v7 + *(v17 + 44)), __src, 0x70uLL);
  v37 = swift_getKeyPath();
  sub_1E3741EA0(v7, v22, &qword_1ECF33580, &qword_1E42BB278);
  v38 = *(v19 + 44);
  v39 = v76;
  v40 = &v22[v38];
  v41 = v75;
  *v40 = v37;
  v40[1] = v41;

  if (v39)
  {
    v42 = sub_1E42036C4();
  }

  else
  {
    v42 = sub_1E4203704();
  }

  v43 = v42;
  v44 = swift_getKeyPath();
  sub_1E3741EA0(v22, v6, &qword_1ECF33588, &qword_1E42BB280);
  v45 = (v6 + *(v67 + 36));
  *v45 = v44;
  v45[1] = v43;
  sub_1E3B1EC24(v39 & 1, v26);
  sub_1E325F6F0(v6, &qword_1ECF33590, &qword_1E42BB288);
  v46 = v77;
  sub_1E4201714();
  sub_1E3B1F9EC();
  sub_1E3B203F0(&qword_1EE289CC0, MEMORY[0x1E697C168], MEMORY[0x1E697C160]);
  v47 = v70;
  v48 = v79;
  sub_1E4202DF4();
  (*(v78 + 8))(v46, v48);
  sub_1E325F6F0(v26, &qword_1ECF33598, &qword_1E42BB290);
  if (sub_1E4202374())
  {
    v49 = a5;
  }

  else
  {
    v49 = 1.0;
  }

  sub_1E4203F64();
  v51 = v50;
  v53 = v52;
  (*(v72 + 32))(v32, v47, v73);
  v54 = &v32[*(v68 + 36)];
  *v54 = v49;
  *(v54 + 1) = v49;
  *(v54 + 2) = v51;
  *(v54 + 3) = v53;
  v55 = sub_1E4203E24();
  v56 = sub_1E4202374();
  v57 = v74;
  sub_1E3741EA0(v32, v74, &qword_1ECF335A8, &qword_1E42BB2A0);
  v58 = v57 + *(v69 + 36);
  *v58 = v55;
  *(v58 + 8) = v56 & 1;
  v59 = swift_getKeyPath();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335D0, &unk_1E42BB3A0);
  v61 = v81;
  v62 = (v81 + *(v60 + 36));
  v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0, &qword_1E42AE9A0) + 28);
  v64 = *MEMORY[0x1E697DBA8];
  sub_1E4200B44();
  OUTLINED_FUNCTION_2();
  (*(v65 + 104))(v62 + v63, v64);
  *v62 = v59;
  return sub_1E3741EA0(v57, v61, &qword_1ECF335B0, &qword_1E42BB2A8);
}

uint64_t sub_1E3B1EC24@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v57 = a2;
  sub_1E4203D34();
  OUTLINED_FUNCTION_0_10();
  v49 = v6;
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33600, &qword_1E42BB508);
  OUTLINED_FUNCTION_0_10();
  v51 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_50_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33608, &qword_1E42BB510);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v52 = v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33610, &qword_1E42BB518);
  OUTLINED_FUNCTION_0_10();
  v48 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335C8, &qword_1E42BB368);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v54 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33618, &qword_1E42BB520);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v47 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335B8, &unk_1E42BB340);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_26_2();
  if (a1)
  {
    v26 = sub_1E4203704();
    v27 = sub_1E4203DA4();
    v29 = v28;
    sub_1E3743538(v56, v3, &qword_1ECF33590, &qword_1E42BB288);
    v30 = v3 + *(v24 + 36);
    *v30 = v26;
    *(v30 + 8) = 256;
    *(v30 + 16) = v27;
    *(v30 + 24) = v29;
    sub_1E3743538(v3, v23, &qword_1ECF335B8, &unk_1E42BB340);
    swift_storeEnumTagMultiPayload();
    sub_1E3B1FA78();
    sub_1E3B1FE14();
    sub_1E4201F44();
    return sub_1E325F6F0(v3, &qword_1ECF335B8, &unk_1E42BB340);
  }

  else
  {
    v47[1] = v24;
    v47[2] = v20;
    v47[3] = v17;
    if (sub_1E39DFFC8())
    {
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33590, &qword_1E42BB288);
      v33 = sub_1E3B1FB30();
      v36 = sub_1E3B1FF18(v33, v34, v35);
      sub_1E3E36744();
      v37 = v48;
      v38 = v53;
      (*(v48 + 16))(v52, v16, v53);
      swift_storeEnumTagMultiPayload();
      v58 = v32;
      v59 = MEMORY[0x1E69817E8];
      v60 = v33;
      v61 = v36;
      OUTLINED_FUNCTION_7_116();
      v58 = v32;
      v59 = v33;
      OUTLINED_FUNCTION_6_100();
      v39 = v54;
      sub_1E4201F44();
      (*(v37 + 8))(v16, v38);
    }

    else
    {
      sub_1E4203CE4();
      sub_1E3B1F1C0(v8);
      (*(v49 + 8))(v8, v50);
      v40 = v51;
      v41 = v55;
      (*(v51 + 16))(v52, v2, v55);
      swift_storeEnumTagMultiPayload();
      v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33590, &qword_1E42BB288);
      v43 = sub_1E3B1FB30();
      v46 = sub_1E3B1FF18(v43, v44, v45);
      v58 = v42;
      v59 = MEMORY[0x1E69817E8];
      v60 = v43;
      v61 = v46;
      OUTLINED_FUNCTION_7_116();
      v58 = v42;
      v59 = v43;
      OUTLINED_FUNCTION_6_100();
      v39 = v54;
      sub_1E4201F44();
      (*(v40 + 8))(v2, v41);
    }

    sub_1E32C562C(v39, v23);
    swift_storeEnumTagMultiPayload();
    sub_1E3B1FA78();
    sub_1E3B1FE14();
    sub_1E4201F44();
    return sub_1E325F6F0(v39, &qword_1ECF335C8, &qword_1E42BB368);
  }
}

uint64_t sub_1E3B1F1C0(uint64_t a1)
{
  v1 = sub_1E4203FA4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33620, &qword_1E42BB528);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E4297BE0;
  sub_1E383FAEC(v5, v6, v7);
  *(v5 + 32) = sub_1E4203BD4();
  sub_1E4203F94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33590, &qword_1E42BB288);
  sub_1E3B1FB30();
  sub_1E4202F44();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1E3B1F350@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a8;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

uint64_t sub_1E3B1F368@<X0>(uint64_t a1@<X8>)
{
  v24[3] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335D8, &qword_1E42BB3B0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v24 - v6;
  v24[2] = *(v1 + 40);
  v25 = v1;

  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335E0, &qword_1E42BB3B8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF335E8, &unk_1E42BB3C0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF335F0, &qword_1E42BB3D0);
  v11 = sub_1E3B1FF74();
  v26 = v10;
  *&v27 = v11;
  OUTLINED_FUNCTION_5_116();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_14_2();
  v15 = sub_1E32752B0(v13, &qword_1ECF2A1F8, &qword_1E429E7F0, v14);
  v26 = v8;
  *&v27 = v9;
  *(&v27 + 1) = OpaqueTypeConformance2;
  v28 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1E4203964();
  v16 = *(v1 + 32);
  sub_1E4202A74();
  v17 = sub_1E4202864();

  v26 = v17;
  v27 = xmmword_1E42BB260;
  LOBYTE(v28) = v16;
  OUTLINED_FUNCTION_3_120();
  v20 = sub_1E32752B0(v18, &qword_1ECF335D8, &qword_1E42BB3B0, v19);
  sub_1E3B2002C(v20, v21, v22);
  sub_1E4202DA4();

  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1E3B1F5C0@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v29[2] = a2;
  v29[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F8, &qword_1E42BB500);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_50_1();
  v29[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335E8, &unk_1E42BB3C0);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v29 - v10;

  v12 = sub_1E42037C4();
  sub_1E4202964();
  v13 = sub_1E42028E4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v13);
  v14 = sub_1E42029B4();
  sub_1E325F6F0(v2, &qword_1ECF335F8, &qword_1E42BB500);
  KeyPath = swift_getKeyPath();
  v30 = v12;
  v31 = KeyPath;
  v32 = v14;
  v16 = *(a1 + 32);
  v17 = *(*(**(a1 + 3) + 2048))();
  if (v16)
  {
    v18 = (*(v17 + 888))();
  }

  else
  {
    v18 = (*(v17 + 672))();
  }

  v19 = v18;

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F0, &qword_1E42BB3D0);
  v21 = sub_1E3B1FF74();
  sub_1E39B9138();

  v22 = *MEMORY[0x1E697E6E8];
  v23 = sub_1E42012F4();
  OUTLINED_FUNCTION_2();
  (*(v24 + 104))(v3, v22, v23);
  sub_1E3B203F0(&qword_1EE289CC8, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E4205E84();
  if (result)
  {
    v30 = v20;
    v31 = v21;
    OUTLINED_FUNCTION_5_116();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_14_2();
    sub_1E32752B0(v26, &qword_1ECF2A1F8, &qword_1E429E7F0, v27);
    v28 = v29[0];
    sub_1E4202FA4();
    sub_1E325F6F0(v3, &qword_1ECF2A1F8, &qword_1E429E7F0);
    return (*(v8 + 8))(v11, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E3B1F9EC()
{
  result = qword_1EE288EB8;
  if (!qword_1EE288EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33598, &qword_1E42BB290);
    sub_1E3B1FA78();
    sub_1E3B1FE14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288EB8);
  }

  return result;
}

unint64_t sub_1E3B1FA78()
{
  result = qword_1EE289420;
  if (!qword_1EE289420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF335B8, &unk_1E42BB340);
    sub_1E3B1FB30();
    sub_1E32752B0(&qword_1EE289258, &qword_1ECF335C0, &qword_1E42BB360, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289420);
  }

  return result;
}

unint64_t sub_1E3B1FB30()
{
  result = qword_1EE289438;
  if (!qword_1EE289438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33590, &qword_1E42BB288);
    sub_1E3B1FBE8();
    sub_1E32752B0(&qword_1EE288788, &qword_1ECF28998, &unk_1E4297E30, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289438);
  }

  return result;
}

unint64_t sub_1E3B1FBE8()
{
  result = qword_1EE2894D0;
  if (!qword_1EE2894D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33588, &qword_1E42BB280);
    sub_1E3B1FCA0();
    sub_1E32752B0(&qword_1EE2887A0, &qword_1ECF2A208, &unk_1E42BB350, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2894D0);
  }

  return result;
}

unint64_t sub_1E3B1FCA0()
{
  result = qword_1EE289630;
  if (!qword_1EE289630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33580, &qword_1E42BB278);
    sub_1E3B1FD2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289630);
  }

  return result;
}

unint64_t sub_1E3B1FD2C()
{
  result = qword_1EE289A28;
  if (!qword_1EE289A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33578, &qword_1E42BB270);
    sub_1E3B203F0(&qword_1EE2888A0, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    sub_1E32752B0(&qword_1EE288770, &qword_1ECF2A238, &qword_1E429D128, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A28);
  }

  return result;
}

unint64_t sub_1E3B1FE14()
{
  result = qword_1EE288E70;
  if (!qword_1EE288E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF335C8, &qword_1E42BB368);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33590, &qword_1E42BB288);
    v3 = sub_1E3B1FB30();
    sub_1E3B1FF18(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288E70);
  }

  return result;
}

unint64_t sub_1E3B1FF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE288618;
  if (!qword_1EE288618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288618);
  }

  return result;
}

unint64_t sub_1E3B1FF74()
{
  result = qword_1EE289800;
  if (!qword_1EE289800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF335F0, &qword_1E42BB3D0);
    sub_1E32752B0(&qword_1EE2887A0, &qword_1ECF2A208, &unk_1E42BB350, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289800);
  }

  return result;
}

unint64_t sub_1E3B2002C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE24B358;
  if (!qword_1EE24B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE24B358);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1E3B200C4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1E3B20104(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3B20168()
{
  result = qword_1EE2894A8;
  if (!qword_1EE2894A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF335D0, &unk_1E42BB3A0);
    sub_1E3B20220();
    sub_1E32752B0(&qword_1EE2887D0, &qword_1ECF291E0, &qword_1E42AE9A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2894A8);
  }

  return result;
}

unint64_t sub_1E3B20220()
{
  result = qword_1EE2895C8;
  if (!qword_1EE2895C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF335B0, &qword_1E42BB2A8);
    sub_1E3B202D8();
    sub_1E32752B0(&qword_1EE2892A8, &qword_1ECF2EFE0, qword_1E42ADEE0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2895C8);
  }

  return result;
}

unint64_t sub_1E3B202D8()
{
  result = qword_1EE289920;
  if (!qword_1EE289920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF335A8, &qword_1E42BB2A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33598, &qword_1E42BB290);
    sub_1E4201334();
    sub_1E3B1F9EC();
    sub_1E3B203F0(&qword_1EE289CC0, MEMORY[0x1E697C168], MEMORY[0x1E697C160]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289920);
  }

  return result;
}

uint64_t sub_1E3B203F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1E3B20464(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 128, a2);
  *(v2 + 128) = a1;

  return result;
}

double sub_1E3B204CC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 136, a2);
  *(v2 + 136) = a1;

  return result;
}

uint64_t sub_1E3B2058C()
{
  type metadata accessor for TextLayout();
  v0[13] = sub_1E383BCC0();
  type metadata accessor for ButtonLayout();
  v0[14] = sub_1E3BBB724();
  v0[15] = sub_1E383BCC0();
  type metadata accessor for ImageLayout();
  v0[16] = sub_1E3BD61D8();
  type metadata accessor for ViewLayout();
  v0[17] = sub_1E3C2F968();
  v0[18] = 0x4020000000000000;
  v1 = sub_1E3C2F9A0();
  v2 = *(*v1 + 1736);

  v3 = v2();
  v4 = *sub_1E3E5F58C();
  v5 = *(*v3 + 680);
  v6 = v4;
  v5(v4);

  (v2)(v7);
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 1696))(7);

  (v2)(v9);
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 1984))(1);

  OUTLINED_FUNCTION_9_2();
  v12 = *(v11 + 1760);
  v12();
  OUTLINED_FUNCTION_2_1();
  (*(v13 + 1792))(3);

  (v12)(v14);
  OUTLINED_FUNCTION_2_1();
  v16 = (*(v15 + 2048))();

  v17 = sub_1E3E5F6B8();
  v18 = *v17;
  v19 = *(*v16 + 680);
  v20 = *v17;
  v19(v18);

  (v12)(v21);
  OUTLINED_FUNCTION_2_1();
  v23 = (*(v22 + 2096))();

  v24 = *v17;
  v25 = *(*v23 + 680);
  v26 = *v17;
  v25(v24);

  (v12)(v27);
  v12();
  OUTLINED_FUNCTION_2_1();
  v29 = (*(v28 + 2096))();

  sub_1E3C37CBC(v29, 39);

  v31 = (v12)(v30);
  v32 = [objc_opt_self() clearColor];
  (*(*v31 + 752))(v32);

  OUTLINED_FUNCTION_9_2();
  v34 = *(v33 + 1784);
  v34();
  OUTLINED_FUNCTION_2_1();
  (*(v35 + 1984))(1);

  (v34)(v36);
  OUTLINED_FUNCTION_2_1();
  (*(v37 + 1696))(21);

  v39 = (v34)(v38);
  v40 = *sub_1E3E5F6B8();
  v41 = *(*v39 + 680);
  v42 = v40;
  v41(v40);

  OUTLINED_FUNCTION_9_2();
  v44 = *(v43 + 1808);
  v44();
  OUTLINED_FUNCTION_2_1();
  (*(v45 + 256))(0x403E000000000000, 0);

  (v44)(v46);
  OUTLINED_FUNCTION_2_1();
  (*(v47 + 360))(0x403E000000000000, 0);

  (v44)(v48);
  OUTLINED_FUNCTION_2_1();
  (*(v49 + 1808))(1);

  v51 = (v44)(v50);
  v52 = *sub_1E3E5F58C();
  v53 = *(*v51 + 680);
  v54 = v52;
  v53(v52);

  v56 = (v44)(v55);
  v57 = [objc_opt_self() blackColor];
  (*(*v56 + 752))(v57);

  (v44)(v58);
  OUTLINED_FUNCTION_2_1();
  (*(v59 + 2024))(1, 0);

  (v44)(v60);
  OUTLINED_FUNCTION_2_1();
  (*(v61 + 488))(1);

  OUTLINED_FUNCTION_9_2();
  v63 = (*(v62 + 1736))();
  sub_1E3C37CBC(v63, 23);

  OUTLINED_FUNCTION_9_2();
  v65 = *(v64 + 1760);
  v66 = v65();
  sub_1E3C37CBC(v66, 59);

  OUTLINED_FUNCTION_9_2();
  v68 = (*(v67 + 1784))();
  sub_1E3C37CBC(v68, 6);

  OUTLINED_FUNCTION_9_2();
  v70 = (*(v69 + 1808))();
  sub_1E3C37CBC(v70, 39);

  OUTLINED_FUNCTION_9_2();
  v72 = *(v71 + 1832);
  v73 = v72();
  sub_1E3C37CBC(v73, 91);

  (v72)(v74);
  v75 = v65();
  sub_1E3C37CBC(v75, 59);

  return v1;
}

double sub_1E3B20F94()
{

  return result;
}

uint64_t sub_1E3B20FDC()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3B2102C()
{
  v0 = sub_1E3B20FDC();

  return MEMORY[0x1EEE6BDC0](v0, 152, 7);
}

uint64_t sub_1E3B21080()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_26_48();

  return v1;
}

uint64_t sub_1E3B210E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3B21080();
  *a1 = result;
  return result;
}

uint64_t sub_1E3B2113C(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

double sub_1E3B211AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_26_48();

  return v1;
}

uint64_t sub_1E3B21268()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

void sub_1E3B21300()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v22 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v21 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_1E32ADE38();
  v20 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocObject();
  swift_weakInit();
  v23[4] = sub_1E3B23E34;
  v23[5] = v12;
  OUTLINED_FUNCTION_12_0();
  v23[1] = 1107296256;
  v23[2] = sub_1E329EEC4;
  v23[3] = &block_descriptor_31;
  v13 = _Block_copy(v23);

  sub_1E4203FE4();
  OUTLINED_FUNCTION_8_84();
  sub_1E3B23DEC(v14, v15, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v16, v17, &qword_1E429B000, v18);
  sub_1E42072E4();
  v19 = OUTLINED_FUNCTION_51_23();
  MEMORY[0x1E6911380](v19);
  _Block_release(v13);

  (*(v22 + 8))(v5, v0);
  (*(v7 + 8))(v11, v21);

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3B21578()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3 = *(v0 + v2);

  if (!v3 || (v5 = (*(*v3 + 624))(v4)) == 0 || (v6 = (*(*v5 + 552))(), , !v6))
  {
    v22 = 0u;
    v23 = 0u;
    goto LABEL_8;
  }

  v21[3] = &unk_1F5D7BE68;
  v21[4] = &off_1F5D7BC48;
  LOBYTE(v21[0]) = 8;
  sub_1E3F9F164(v21, v6, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(v21);
  if (!*(&v23 + 1))
  {
LABEL_8:
    sub_1E325F7A8(&v22, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  if (swift_dynamicCast())
  {
    v7 = v21[0];
    goto LABEL_10;
  }

LABEL_9:
  v7 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v8 = *(v7 + 16);

  if (!v8)
  {
    if (*(v1 + v2))
    {
      OUTLINED_FUNCTION_8();
      v12 = *(v11 + 392);

      v14 = v12(v13);

      if (v14)
      {
        type metadata accessor for MediaShowcasingMetadataLayout();
        v15 = swift_dynamicCastClass();
        if (v15)
        {
          LOBYTE(v21[0]) = *(v15 + 120);
          LOBYTE(v22) = 0;
          sub_1E3B23B9C(v15, v16, v17);
          if (sub_1E4205E84())
          {
            sub_1E3B2113C(1);
LABEL_26:

            return result;
          }
        }

        else
        {
        }
      }
    }

    sub_1E3B2113C(2);
    goto LABEL_26;
  }

  v9 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_autoPlayButtonTriggered;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v1 + v9))
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
    if ((*(v1 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModelIndex + 8) & 1) == 0 && !*(v1 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModelIndex))
    {
      v18 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_countdownButtonShown;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      if ((*(v1 + v18) & 1) == 0)
      {
        v19 = sub_1E3B2196C();
        if (sub_1E3B234B8(v19))
        {
          v10 = 0;
        }
      }
    }
  }

  sub_1E3B2113C(v10);
  return result;
}

void sub_1E3B21870(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_autoPlayButtonTriggered;
  OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  sub_1E3B21300();
}

id sub_1E3B218B4(uint64_t a1)
{
  v1 = sub_1E3B2196C();
  v2 = [objc_opt_self() isFeatureEnabled_];
  if ((v1 - 4) >= 8u)
  {
    if (!((v1 == 0) | v2 & 1))
    {
      return 0;
    }
  }

  else if (!v2)
  {
    return 0;
  }

  v3 = sub_1E3B2196C();
  if ((sub_1E3B234B8(v3) & 1) == 0)
  {
    return 0;
  }

  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 allowedToAutoPlay];

  return v5;
}

uint64_t sub_1E3B2196C()
{
  v1 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (!*(v0 + v1))
  {
    return 11;
  }

  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 392);

  v5 = v3(v4);

  if (!v5)
  {
    return 11;
  }

  type metadata accessor for MediaShowcasingMetadataLayout();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = *(v6 + 120);
  }

  else
  {
    v7 = 11;
  }

  return v7;
}

void sub_1E3B21A50()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (!*&v2[v0])
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8();
  v4 = *(v3 + 392);

  v6 = v4(v5);

  if (!v6)
  {
    goto LABEL_11;
  }

  type metadata accessor for MediaShowcasingMetadataLayout();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = *(v7 + 120);
  if ((v8 - 4) < 7)
  {
    goto LABEL_11;
  }

  if (v8 != 1)
  {
    if (!*(v7 + 120))
    {
      v9 = [objc_opt_self() sharedInstance];
      if (v9)
      {
        v10 = v9;
        sub_1E3741090(0xD00000000000001BLL, 0x80000001E4271BD0, v9);
        OUTLINED_FUNCTION_145();

        if (!v0)
        {
          __break(1u);
LABEL_10:

          goto LABEL_11;
        }

        goto LABEL_28;
      }

      __break(1u);
      goto LABEL_30;
    }

LABEL_11:

    return;
  }

  v11 = sub_1E3B21080();
  if (v11)
  {
    if (v11 != 1)
    {
      goto LABEL_11;
    }

    v12 = [objc_opt_self() sharedInstance];
    if (!v12)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v2 = v12;
    sub_1E3741090(0xD00000000000001CLL, 0x80000001E4271B90, v12);
    OUTLINED_FUNCTION_145();

    if (v0)
    {
LABEL_28:

      return;
    }

    __break(1u);
  }

  if (!*&v2[v0])
  {
    v21 = 0u;
    v22 = 0u;
    goto LABEL_25;
  }

  LOBYTE(v20[0]) = 3;
  OUTLINED_FUNCTION_8();
  v1 = *(v13 + 776);

  v1(&v21, v20, &unk_1F5D5DEB8, &off_1F5D5CA78);

  if (!*(&v22 + 1))
  {
LABEL_25:
    sub_1E325F7A8(&v21, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_26;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    v18 = [objc_opt_self() sharedInstance];
    if (!v18)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v19 = v18;
    sub_1E3741090(0xD000000000000018, 0x80000001E4271BB0, v18);
    OUTLINED_FUNCTION_145();

    if (!v1)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  v14 = v20[0];
  v15 = v20[1];
  v16 = [objc_opt_self() sharedInstance];
  if (v16)
  {
    v17 = v16;
    sub_1E3797E30(v14, v15, v16);
    OUTLINED_FUNCTION_145();

    if (v1)
    {

      return;
    }

    goto LABEL_34;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

void *sub_1E3B21D98@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter____lazy_storage___countDownButton);
  OUTLINED_FUNCTION_36_34(&v45);
  v5 = v46;
  if (v46 == 1)
  {
    v6 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v7 = *(v2 + v6);
    v8 = 0uLL;
    v40 = 0u;
    if (v7)
    {
      OUTLINED_FUNCTION_8();
      v10 = *(v9 + 392);

      v12 = v10(v11);

      if (v12)
      {
        type metadata accessor for MediaShowcasingMetadataLayout();
        v13 = swift_dynamicCastClass();
        if (v13)
        {
          v14 = v13;
          v15 = type metadata accessor for ButtonLayout();
          v16 = sub_1E3B218B4(v15);
          v41 = sub_1E3BBFC3C(v16 & 1);
          v17 = sub_1E3B218B4(v41);
          v18 = *v14;
          if (v17)
          {
            v19 = (*(v18 + 2016))();
          }

          else
          {
            v19 = (*(v18 + 2040))();
          }

          v24 = v19;
          v25 = v19;
          v26 = sub_1E3B218B4(v25);
          if (v26)
          {
            v27 = *(v2 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_autoPlayDuration);
          }

          else
          {
            v27 = INFINITY;
          }

          v28 = 0.0;
          if (sub_1E3B218B4(v26))
          {
            if ([objc_opt_self() isMac])
            {
              v28 = 2.0;
            }

            else
            {
              v28 = 3.0;
            }
          }

          sub_1E3B21A50();
          v30 = v29;
          v32 = v31;
          v33 = sub_1E3B2212C(v24);

          OUTLINED_FUNCTION_4_0();
          v34 = swift_allocObject();
          swift_weakInit();

          sub_1E3C13EC0(v30, v32, v33, v41, sub_1E3B23D38, v34, &v47, v27, v28);
          v7 = v47;
          v39 = v48[1];
          v40 = v48[0];
          v37 = v48[3];
          v38 = v48[2];
          v36 = v48[4];
          v20 = v48[5];

          v23 = v36;
          v22 = v37;
          v21 = v38;
          v8 = v39;
          goto LABEL_21;
        }
      }

      v7 = 0;
      v20 = 0;
      v8 = 0uLL;
    }

    else
    {
      v20 = 0;
    }

    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
LABEL_21:
    v47 = v7;
    OUTLINED_FUNCTION_23_51(v8, v21, v22, v23, v40);
    LOBYTE(v48[5]) = v20;
    memcpy(__dst, v48 + 8, sizeof(__dst));
    OUTLINED_FUNCTION_36_34(v43);
    *v4 = v7;
    v5 = v40.n128_u64[0];
    OUTLINED_FUNCTION_34_38(v40.n128_f64[0]);
    sub_1E37C5830(&v47, v42, &qword_1ECF2B140, &qword_1E429FE38);
    sub_1E325F7A8(v43, &qword_1ECF33640, &qword_1E42BB640);
    goto LABEL_22;
  }

  v7 = v45;
  memcpy(__dst, v4 + 2, sizeof(__dst));
LABEL_22:
  sub_1E37C5830(&v45, v43, &qword_1ECF33640, &qword_1E42BB640);
  *a1 = v7;
  a1[1] = v5;
  return memcpy(a1 + 2, __dst, 0x49uLL);
}

id sub_1E3B2212C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_1E4205ED4();
  v4 = [v2 vuiSystemImageNamed:v3 withConfiguration:a1 accessibilityDescription:0];

  return v4;
}

void sub_1E3B221B4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v26 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v25 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  sub_1E32ADE38();
  v16 = sub_1E4206A04();
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = v3;
  v27[4] = sub_1E3B23D40;
  v27[5] = v17;
  OUTLINED_FUNCTION_12_0();
  v27[1] = 1107296256;
  v27[2] = sub_1E378AEA4;
  v27[3] = &block_descriptor_61;
  v18 = _Block_copy(v27);

  sub_1E4203FE4();
  v27[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_8_84();
  sub_1E3B23DEC(v19, v20, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v21, v22, &qword_1E429B000, v23);
  sub_1E42072E4();
  v24 = OUTLINED_FUNCTION_51_23();
  MEMORY[0x1E6911380](v24);
  _Block_release(v18);

  (*(v26 + 8))(v9, v4);
  (*(v11 + 8))(v15, v25);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E3B22424(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [objc_opt_self() sharedInstance];
    v6 = [v5 isPostPlayActive];

    if (sub_1E3B21080() || (v6 & 1) == 0)
    {
    }

    else
    {
      v7 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_autoPlayButtonTriggered;
      OUTLINED_FUNCTION_3_0(v4 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_autoPlayButtonTriggered, v9);
      *(v4 + v7) = 1;
      sub_1E3B21300();
      MEMORY[0x1EEE9AC00](v8);
      sub_1E4203E44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36400, &qword_1E42BB7B0);
      sub_1E4200FE4();
    }
  }

  return result;
}

void sub_1E3B22578()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = (v0 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter____lazy_storage___playTrailerButton);
  OUTLINED_FUNCTION_36_34(&v37);
  v5 = v38;
  if (v38 == 1)
  {
    v6 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v7 = *(v1 + v6);
    v8 = 0uLL;
    v33 = 0u;
    if (!v7)
    {
      v17 = 0;
LABEL_15:
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
LABEL_16:
      v39 = v7;
      OUTLINED_FUNCTION_23_51(v8, v18, v19, v20, v33);
      LOBYTE(v40[5]) = v17;
      memcpy(__dst, v40 + 8, sizeof(__dst));
      OUTLINED_FUNCTION_36_34(v35);
      *v4 = v7;
      v5 = v33.n128_u64[0];
      OUTLINED_FUNCTION_34_38(v33.n128_f64[0]);
      sub_1E37C5830(&v39, v34, &qword_1ECF2B140, &qword_1E429FE38);
      sub_1E325F7A8(v35, &qword_1ECF33640, &qword_1E42BB640);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_8();
    v10 = *(v9 + 392);

    v12 = v10(v11);

    if (v12)
    {
      type metadata accessor for MediaShowcasingMetadataLayout();
      v13 = swift_dynamicCastClass();
      v7 = v13;
      if (!v13)
      {

LABEL_14:
        v17 = 0;
        v8 = 0uLL;
        goto LABEL_15;
      }

      [*(v13 + 208) copyWithZone_];
      sub_1E4207264();
      swift_unknownObjectRelease();
      type metadata accessor for ButtonLayout();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_8();
        v15 = (*(v14 + 2016))();
        v16 = (sub_1E3B218B4(v15) & 1) != 0 && (*(v1 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModelIndex + 8) & 1) == 0 && *(v1 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModelIndex) == 0;
        v21 = sub_1E3BBFC3C(v16);

        v32 = v15;
        v22 = sub_1E3B2212C(v15);
        sub_1E3B21A50();
        v24 = v23;
        v26 = v25;
        OUTLINED_FUNCTION_4_0();
        v27 = swift_allocObject();
        swift_weakInit();

        sub_1E3C13EC0(v24, v26, v22, v21, sub_1E3B23BF0, v27, &v39, INFINITY, 0.0);
        v7 = v39;
        v33 = v40[0];
        v30 = v40[2];
        v31 = v40[1];
        v28 = v40[4];
        v29 = v40[3];
        v17 = v40[5];

        v20 = v28;
        v19 = v29;
        v18 = v30;
        v8 = v31;
        goto LABEL_16;
      }
    }

    v7 = 0;
    goto LABEL_14;
  }

  v7 = v37;
  memcpy(__dst, v4 + 2, sizeof(__dst));
LABEL_17:
  sub_1E37C5830(&v37, v35, &qword_1ECF33640, &qword_1E42BB640);
  *v3 = v7;
  v3[1] = v5;
  memcpy(v3 + 2, __dst, 0x49uLL);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B228F8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a3;
  v8 = swift_allocObject();
  sub_1E3B22960(a1, a2, v4, a4);
  return v8;
}

uint64_t sub_1E3B22960(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v5 = v4;
  v57 = a3;
  v56 = a2;
  v65 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v54 - v8;
  v61 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v59 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v58 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00, &unk_1E42A2900);
  OUTLINED_FUNCTION_0_10();
  v63 = v14;
  v64 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v54 - v16;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33630, &qword_1E42BB628);
  OUTLINED_FUNCTION_0_10();
  v54 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33628, &unk_1E42BB5D0);
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v54 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0, &unk_1E42AB480);
  OUTLINED_FUNCTION_0_10();
  v29 = v28;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v54 - v31;
  v33 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter__alpha;
  v68[0] = 0x3FF0000000000000;
  sub_1E4200634();
  (*(v29 + 32))(v5 + v33, v32, v27);
  *(v5 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel) = 0;
  v34 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter__autoPlayButtonState;
  LOBYTE(v68[0]) = 2;
  sub_1E4200634();
  (*(v23 + 32))(v5 + v34, v26, v21);
  v35 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter__buttonContainerSize;
  type metadata accessor for CGSize(0);
  v68[0] = 0;
  v68[1] = 0;
  sub_1E4200634();
  (*(v54 + 32))(v5 + v35, v20, v55);
  *(v5 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_countdownButtonShown) = 0;
  *(v5 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_autoPlayButtonTriggered) = 0;
  v36 = (v5 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_onButtonPressed);
  *v36 = 0;
  v36[1] = 0;
  v37 = (v5 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_onAutoPlayPressed);
  *v37 = 0;
  v37[1] = 0;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v38 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CD0];
  }

  *(v5 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_observers) = v38;
  v39 = v5 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModelIndex;
  *v39 = 0;
  *(v39 + 8) = 1;
  v40 = (v5 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter____lazy_storage___countDownButton);
  v40[2] = 0u;
  v40[3] = 0u;
  *v40 = xmmword_1E4297170;
  v40[1] = 0u;
  *(v40 + 73) = 0u;
  v40[4] = 0u;
  v41 = (v5 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter____lazy_storage___playTrailerButton);
  v41[3] = 0u;
  v41[4] = 0u;
  *(v41 + 73) = 0u;
  v41[1] = 0u;
  v41[2] = 0u;
  *v41 = xmmword_1E4297170;
  *(v5 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_autoPlayDuration) = a4;
  v42 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
  OUTLINED_FUNCTION_3_0(v5 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel, v68);
  *(v5 + v42) = v65;

  v43 = v5 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModelIndex;
  *v43 = v56;
  *(v43 + 8) = 0;
  v44 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_countdownButtonShown;
  OUTLINED_FUNCTION_3_0(v5 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_countdownButtonShown, v67);
  *(v5 + v44) = v57 & 1;
  v45 = [objc_opt_self() defaultCenter];
  v46 = v58;
  sub_1E4206C14();

  sub_1E32ADE38();
  v47 = sub_1E4206A04();
  v66 = v47;
  v48 = sub_1E42069A4();
  v49 = v60;
  __swift_storeEnumTagSinglePayload(v60, 1, 1, v48);
  sub_1E3B23DEC(&qword_1EE23B130, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1E3B23DEC(&qword_1EE23B1E0, sub_1E32ADE38, MEMORY[0x1E69E8028]);
  v51 = v61;
  v50 = v62;
  sub_1E42007D4();
  sub_1E325F7A8(v49, &unk_1ECF2D2B0, &unk_1E429D3D0);

  (*(v59 + 8))(v46, v51);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  sub_1E32752B0(&qword_1EE28A240, &unk_1ECF2CD00, &unk_1E42A2900, MEMORY[0x1E695BE98]);
  v52 = v64;
  sub_1E4200844();

  (*(v63 + 8))(v50, v52);
  swift_beginAccess();
  sub_1E42004C4();
  swift_endAccess();

  return v5;
}

void sub_1E3B23060()
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
  if (v5 && (OUTLINED_FUNCTION_8(), (v14 = (*(v13 + 488))()) != 0))
  {
    v16 = sub_1E373E010(224, v14, v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = v1 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModelIndex;
  *v17 = v3;
  *(v17 + 8) = 0;
  v18 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel, &v27);
  v19 = *(v1 + v18);
  if (v5)
  {
    if (v19)
    {
      type metadata accessor for ViewModel();
      sub_1E3B23DEC(&qword_1EE23BA60, type metadata accessor for ViewModel, &protocol conformance descriptor for ViewModel);

      v20 = sub_1E4205E84();

      if (v20)
      {
        goto LABEL_13;
      }
    }
  }

  else if (!v19)
  {
    goto LABEL_13;
  }

  *(v1 + v18) = v16;

  v21 = sub_1E324FBDC();
  (*(v8 + 16))(v12, v21, v6);
  v22 = sub_1E41FFC94();
  v23 = sub_1E4206814();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1E323F000, v22, v23, "MediaShowcasingButtonsPresenter:: view model changed post change now", v24, 2u);
    MEMORY[0x1E69143B0](v24, -1, -1);
  }

  (*(v8 + 8))(v12, v6);
  OUTLINED_FUNCTION_9_84();
  sub_1E3B23DEC(v25, v26, &unk_1E42BB6B0);
  sub_1E4200514();
  sub_1E4200594();

LABEL_13:

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3B23348()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9_84();
  sub_1E3B23DEC(v0, v1, &unk_1E42BB6B0);
  sub_1E4200514();
  sub_1E4200594();

  return result;
}

double sub_1E3B233D4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v1 + v2))
  {
    OUTLINED_FUNCTION_8();
    v5 = *(v4 + 392);

    v7 = v5(v6);

    if (v7)
    {
      type metadata accessor for MediaShowcasingMetadataLayout();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = *(v8 + 120);
        if ((v9 - 4) >= 7)
        {
          if (*(v8 + 120))
          {
            if (v9 == 1)
            {
              sub_1E3B21578();
            }
          }

          else
          {
            sub_1E3B2113C(0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E3B234B8(unsigned __int8 a1)
{
  if (a1 == 1)
  {
    v1 = a1;
    return [objc_opt_self() isPostPlayAutoPlayEnabledForType_];
  }

  if (!a1)
  {
    v1 = 0;
    return [objc_opt_self() isPostPlayAutoPlayEnabledForType_];
  }

  return 1;
}

uint64_t sub_1E3B23514()
{
  v1 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter__alpha;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0, &unk_1E42AB480);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter__autoPlayButtonState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33628, &unk_1E42BB5D0);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter__buttonContainerSize;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33630, &qword_1E42BB628);
  OUTLINED_FUNCTION_10();
  (*(v6 + 8))(v0 + v5);
  sub_1E34AF594(*(v0 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_onButtonPressed), *(v0 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_onButtonPressed + 8));
  sub_1E34AF594(*(v0 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_onAutoPlayPressed), *(v0 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_onAutoPlayPressed + 8));

  OUTLINED_FUNCTION_14_96(OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter____lazy_storage___countDownButton);
  OUTLINED_FUNCTION_14_96(OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter____lazy_storage___playTrailerButton);
  return v0;
}

uint64_t sub_1E3B23654()
{
  sub_1E3B23514();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3B236AC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E3B21D98(__src);
    memcpy(__dst, __src, sizeof(__dst));

    if (__src[1])
    {
      memcpy(v2, __dst, sizeof(v2));
      sub_1E3C14338();
      sub_1E325F7A8(__src, &qword_1ECF2B140, &qword_1E429FE38);
    }
  }
}

uint64_t type metadata accessor for MediaShowcasingButtonsPresenter(uint64_t a1)
{
  result = qword_1EE2927C0;
  if (!qword_1EE2927C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3B23794(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  if (a2 != 1)
  {
    sub_1E3B237BC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }
}

void sub_1E3B237BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {

    sub_1E3264CE0(a10, a11);
  }
}

unint64_t sub_1E3B23850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF33648;
  if (!qword_1ECF33648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33648);
  }

  return result;
}

void sub_1E3B238AC(uint64_t a1)
{
  OUTLINED_FUNCTION_11_84(a1, &qword_1EE28A0A8, MEMORY[0x1E69E7DE0]);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_11_84(v1 - 8, &qword_1EE289FE0, &type metadata for MediaShowcasingButtonsPresenter.AutoPlayButtonState);
    if (v3 <= 0x3F)
    {
      sub_1E3B23A68(319);
      if (v4 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1E3B23A18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1E3B23A68(uint64_t a1)
{
  if (!qword_1EE289F18)
  {
    type metadata accessor for CGSize(255);
    v1 = sub_1E4200694();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289F18);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MediaShowcasingButtonsPresenter.AutoPlayButtonState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E3B23B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE251D10;
  if (!qword_1EE251D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE251D10);
  }

  return result;
}

double sub_1E3B23BF0()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_autoPlayButtonTriggered;
    OUTLINED_FUNCTION_3_0(Strong + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_autoPlayButtonTriggered, v4);
    *(v2 + v3) = 1;
    sub_1E3B21300();
    sub_1E4203E44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36400, &qword_1E42BB7B0);
    sub_1E4200FE4();
  }

  return result;
}

uint64_t sub_1E3B23CB4@<X0>(BOOL *a1@<X8>)
{
  OUTLINED_FUNCTION_33_9(OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_onAutoPlayPressed);
  OUTLINED_FUNCTION_25();
  result = swift_beginAccess();
  v4 = *v1;
  if (*v1)
  {
    v5 = *(v1 + 8);

    v4(0);
    result = sub_1E34AF594(v4, v5);
  }

  *a1 = v4 == 0;
  return result;
}

uint64_t sub_1E3B23D4C@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v3 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_onAutoPlayPressed;
  OUTLINED_FUNCTION_25();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {
    v8 = *(v5 + 8);

    v7(v4);
    result = sub_1E34AF594(v7, v8);
  }

  *a1 = v7 == 0;
  return result;
}

uint64_t sub_1E3B23DEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1E3B23E34()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E3B21578();
  }

  return result;
}

uint64_t sub_1E3B23E8C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E3B23ED0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, unsigned __int8 a6@<W5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  type metadata accessor for Router(0);
  OUTLINED_FUNCTION_3_121();
  sub_1E3B23E8C(v12, v13);
  v14 = sub_1E4201754();
  v61 = v15;
  v62 = v14;
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_7_117();
  sub_1E3B23E8C(v16, v17);
  v18 = sub_1E4201754();
  v58 = v19;
  v59 = v18;
  v20 = sub_1E3AC5818();
  v21 = *v20;
  v22 = v20[1];
  v67 = *(v20 + 16);
  v23 = v20[3];
  v56 = a2;
  if (a6)
  {
    type metadata accessor for CollectionEditableModel(0);

    v24 = OUTLINED_FUNCTION_51_1();
    v25 = sub_1E3845488(v24 & 1);

    v64 = v25;
  }

  else
  {

    v64 = v23;
    v25 = v23;
  }

  v66 = a5;
  sub_1E327F454(a5, &v71);
  type metadata accessor for LibDownloadedTVShowSeasonsViewInteractor(0);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_navBarObservableModel;
  type metadata accessor for NavigationBarObservableModel(0);

  *(v26 + v27) = sub_1E39EE6D8();
  v28 = OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showcaseValue;
  type metadata accessor for ShowcaseValue(0);
  *(v26 + v28) = sub_1E40AAAB8();
  v29 = OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_viewMetricsRecorder;
  type metadata accessor for ViewMetricsRecorder();
  *(v26 + v29) = sub_1E3FEFA68();
  v30 = OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_isLoading;
  *(v26 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_templateViewModel) = 0;
  *(v26 + v30) = 0;
  v31 = MEMORY[0x1E69E7CD0];
  v32 = OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_downloadStatesCancellables;
  *(v26 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_cancellables) = MEMORY[0x1E69E7CD0];
  *(v26 + v32) = v31;
  v33 = OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_deleteItemSubject;
  *(v26 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_managedDownloadViewModels) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
  swift_allocObject();
  *(v26 + v33) = sub_1E4200544();
  *(v26 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_shouldDismiss) = 0;
  v34 = OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_sourceId;
  *(v26 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_dataSourceManager) = a1;
  v35 = (v26 + v34);
  *v35 = v56;
  v35[1] = a3;
  *(v26 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_menuItem) = a4;
  sub_1E327F454(&v71, v26 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showEntity);
  v36 = OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_listConfiguration;
  *(v26 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_showDownloadsOnly) = a6 & 1;
  v37 = v26 + v36;
  *v37 = v21;
  *(v37 + 8) = v22;
  *(v37 + 16) = v67;
  *(v37 + 24) = v25;

  v38 = sub_1E3B500B4();
  v39 = sub_1E3B264FC(0);
  v60 = v25;
  if (v25)
  {
    __src[0] = (*(*v64 + 456))(v39);
    OUTLINED_FUNCTION_4_0();
    v40 = swift_allocObject();
    OUTLINED_FUNCTION_31_3(v40);
    v41 = swift_allocObject();
    v41[2] = v40;
    v41[3] = v56;
    v41[4] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF336E0, &unk_1E42BBA30);
    OUTLINED_FUNCTION_8_2();
    sub_1E328FCF4(v42, &qword_1ECF336E0, &unk_1E42BBA30);
    sub_1E4200844();

    OUTLINED_FUNCTION_11_3(v38 + OBJC_IVAR____TtC8VideosUIP33_58C8EE48E21F597EF1B965B490FA250640LibDownloadedTVShowSeasonsViewInteractor_cancellables, __src);
    sub_1E42004C4();
    swift_endAccess();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(&v71);
  v90 = 0;
  if (a7)
  {
    v43 = sub_1E3A7697C;
    v65 = a7;
  }

  else
  {
    sub_1E327F454(a5, &v71);
    v65 = swift_allocObject();
    sub_1E3251BE8(&v71, v65 + 16);
    v43 = sub_1E3B25030;
  }

  v92 = 0;
  v44 = *(a4 + 32);

  sub_1E38BBD0C(v44, 10, v45);
  v46 = sub_1E4205F14();
  v48 = v47;
  type metadata accessor for Metrics(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v50;
  v51 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v46;
  *(inited + 56) = v48;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v52;
  *(inited + 120) = v51;
  *(inited + 96) = v46;
  *(inited + 104) = v48;

  v53 = sub_1E4205CB4();
  v54 = sub_1E3BA5560(v53, 1);

  __swift_destroy_boxed_opaque_existential_1(v66);
  __src[0] = v62;
  __src[1] = v61;
  __src[2] = v59;
  __src[3] = v58;
  __src[4] = v43;
  __src[5] = v65;
  LOBYTE(__src[6]) = v92;
  *(&__src[6] + 1) = *v91;
  HIDWORD(__src[6]) = *&v91[3];
  __src[7] = sub_1E38074D0;
  __src[8] = v38;
  LOBYTE(__src[9]) = v90;
  *(&__src[9] + 1) = *v89;
  HIDWORD(__src[9]) = *&v89[3];
  __src[10] = v21;
  __src[11] = v22;
  LOBYTE(__src[12]) = v67;
  HIDWORD(__src[12]) = *&v88[3];
  *(&__src[12] + 1) = *v88;
  __src[13] = v60;
  __src[14] = v54;
  *&v71 = v62;
  *(&v71 + 1) = v61;
  v72 = v59;
  v73 = v58;
  v74 = v43;
  v75 = v65;
  v76 = v92;
  *&v77[3] = *&v91[3];
  *v77 = *v91;
  v78 = sub_1E38074D0;
  v79 = v38;
  v80 = v90;
  *v81 = *v89;
  *&v81[3] = *&v89[3];
  v82 = v21;
  v83 = v22;
  v84 = v67;
  *v85 = *v88;
  *&v85[3] = *&v88[3];
  v86 = v60;
  v87 = v54;
  sub_1E37DA1B4(__src, v69);
  sub_1E3B250A8(&v71);
  memcpy(a8, __src, 0x78uLL);
  OUTLINED_FUNCTION_25_2();
}