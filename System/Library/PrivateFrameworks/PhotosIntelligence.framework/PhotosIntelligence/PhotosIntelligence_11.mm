unint64_t sub_1C70327FC(char a1)
{
  result = 0x5472657470616863;
  switch(a1)
  {
    case 1:
      result = 0x4972657470616863;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
    case 7:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C70328F8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216158, &qword_1C75635F0);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7032FF0();
  sub_1C755200C();
  v24[2] = 0;
  sub_1C7551CCC();
  if (!v2)
  {
    v24[1] = 1;
    sub_1C7551CCC();
    v11 = v3[4];
    v24[0] = 2;
    OUTLINED_FUNCTION_2_12(v11, v24);
    v12 = v3[5];
    v23 = 3;
    OUTLINED_FUNCTION_2_12(v12, &v23);
    v13 = v3[6];
    v22 = 4;
    OUTLINED_FUNCTION_2_12(v13, &v22);
    v14 = v3[7];
    v21 = 5;
    OUTLINED_FUNCTION_2_12(v14, &v21);
    v15 = v3[8];
    v20 = 6;
    OUTLINED_FUNCTION_2_12(v15, &v20);
    v16 = v3[9];
    v19 = 7;
    OUTLINED_FUNCTION_2_12(v16, &v19);
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_1C7032AF8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216148, &qword_1C75635E8);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7032FF0();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32[0]) = 0;
  v11 = sub_1C7551BBC();
  v13 = v12;
  v30 = v11;
  OUTLINED_FUNCTION_0_18(1);
  v14 = sub_1C7551BBC();
  v16 = v15;
  v29 = v14;
  OUTLINED_FUNCTION_0_18(2);
  v28 = sub_1C7551BFC();
  OUTLINED_FUNCTION_0_18(3);
  v27 = sub_1C7551BFC();
  OUTLINED_FUNCTION_0_18(4);
  v26[2] = sub_1C7551BFC();
  OUTLINED_FUNCTION_0_18(5);
  v26[1] = sub_1C7551BFC();
  OUTLINED_FUNCTION_0_18(6);
  v26[0] = sub_1C7551BFC();
  v33 = 7;
  v17 = sub_1C7551BFC();
  (*(v7 + 8))(v10, v5);
  v18 = v30;
  __src[0] = v30;
  __src[1] = v13;
  v19 = v29;
  __src[2] = v29;
  __src[3] = v16;
  v20 = v28;
  __src[4] = v28;
  __src[5] = v27;
  OUTLINED_FUNCTION_9_11();
  __src[6] = v22;
  __src[7] = v21;
  __src[8] = v26[0];
  __src[9] = v17;
  sub_1C7033044(__src, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[0] = v18;
  v32[1] = v13;
  v32[2] = v19;
  v32[3] = v16;
  v32[4] = v20;
  v32[5] = v27;
  OUTLINED_FUNCTION_9_11();
  v32[6] = v24;
  v32[7] = v23;
  v32[8] = v26[0];
  v32[9] = v17;
  sub_1C703307C(v32);
  return memcpy(a2, __src, 0x50uLL);
}

uint64_t sub_1C7032E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7032574(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7032E74(uint64_t a1)
{
  v2 = sub_1C7032FF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7032EB0(uint64_t a1)
{
  v2 = sub_1C7032FF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C7032EF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C7032AF8(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x50uLL);
  }

  return result;
}

uint64_t sub_1C7032F54(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = (a1 + 56);
  while (v4 != v3)
  {
    v6 = *(v5 - 1) == *(a2 + 16) && *v5 == *(a2 + 24);
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {
      v7 = v3;
      goto LABEL_11;
    }

    ++v3;
    v5 += 10;
  }

  v7 = 0;
LABEL_11:
  sub_1C703307C(a2);
  return v7;
}

unint64_t sub_1C7032FF0()
{
  result = qword_1EC216150;
  if (!qword_1EC216150)
  {
    result = swift_getWitnessTable(byte_1C75636C4, &type metadata for SingleChapterStatistics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216150);
  }

  return result;
}

void sub_1C70330AC(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  sub_1C7033044(a2, __src);
  v6 = sub_1C7032F54(v5, a2);
  v8 = v6;
  if (v2 || (v7 & 1) != 0)
  {
LABEL_3:
    sub_1C703307C(a2);
    return;
  }

  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    for (i = 80 * v6; ; i += 80)
    {
      v11 = *(v5 + 16);
      if (v9 == v11)
      {
        break;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v12 = *(v5 + i + 128) == *(a2 + 16) && *(v5 + i + 136) == *(a2 + 24);
      if (!v12 && (sub_1C7551DBC() & 1) == 0)
      {
        if (v9 != v8)
        {
          if (v8 >= v11)
          {
            goto LABEL_23;
          }

          memcpy(__dst, (v5 + 32 + 80 * v8), sizeof(__dst));
          memcpy(__src, (v5 + i + 112), 0x50uLL);
          sub_1C7033044(__dst, v16);
          sub_1C7033044(__src, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C70E3DAC();
            v5 = v14;
          }

          if (v8 >= *(v5 + 16))
          {
            goto LABEL_24;
          }

          v13 = v5 + 80 * v8;
          memcpy(v15, (v13 + 32), sizeof(v15));
          memcpy((v13 + 32), __src, 0x50uLL);
          sub_1C703307C(v15);
          if (v9 >= *(v5 + 16))
          {
            goto LABEL_25;
          }

          memcpy(v16, (v5 + i + 112), sizeof(v16));
          memcpy((v5 + i + 112), __dst, 0x50uLL);
          sub_1C703307C(v16);
          *a1 = v5;
        }

        ++v8;
      }

      ++v9;
    }

    goto LABEL_3;
  }

LABEL_26:
  __break(1u);
}

unint64_t sub_1C703328C()
{
  result = qword_1EDD0CF58;
  if (!qword_1EDD0CF58)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC217A00, &qword_1C755BD70);
    result = swift_getWitnessTable(MEMORY[0x1E69E6310], v3, v0, v1);
    atomic_store(result, &qword_1EDD0CF58);
  }

  return result;
}

uint64_t sub_1C70332F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216160, &qword_1C75635F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SingleChapterStatistics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C7033438()
{
  result = qword_1EC216168;
  if (!qword_1EC216168)
  {
    result = swift_getWitnessTable(byte_1C756369C, &type metadata for SingleChapterStatistics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216168);
  }

  return result;
}

unint64_t sub_1C7033490()
{
  result = qword_1EC216170;
  if (!qword_1EC216170)
  {
    result = swift_getWitnessTable(byte_1C756360C, &type metadata for SingleChapterStatistics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216170);
  }

  return result;
}

unint64_t sub_1C70334E8()
{
  result = qword_1EC216178;
  if (!qword_1EC216178)
  {
    result = swift_getWitnessTable(byte_1C7563634, &type metadata for SingleChapterStatistics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216178);
  }

  return result;
}

uint64_t sub_1C703353C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_6_2(1684632949, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_11_11();
    v8 = a1 == v6 && a2 == v7;
    if (v8 || (OUTLINED_FUNCTION_6_2(v6, v7) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_10_13();
      v11 = a1 == v9 && a2 == v10;
      if (v11 || (OUTLINED_FUNCTION_6_2(v9, v10) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v12 = OUTLINED_FUNCTION_16_11();
        v14 = a1 == v12 && a2 == v13;
        if (v14 || (OUTLINED_FUNCTION_6_2(v12, v13) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v15 = OUTLINED_FUNCTION_15_15();
          if (a1 == v15 && a2 == v16)
          {

            return 4;
          }

          else
          {
            v18 = OUTLINED_FUNCTION_6_2(v15, v16);

            if (v18)
            {
              return 4;
            }

            else
            {
              return 5;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C7033650(char a1)
{
  result = 1684632949;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_11_11();
      break;
    case 2:
      result = OUTLINED_FUNCTION_10_13();
      break;
    case 3:
      result = OUTLINED_FUNCTION_16_11();
      break;
    case 4:
      result = OUTLINED_FUNCTION_15_15();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C70336EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C703353C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7033720(uint64_t a1)
{
  v2 = sub_1C703502C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C703375C(uint64_t a1)
{
  v2 = sub_1C703502C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Hastings.Asset.uuid.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t Hastings.Asset.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Hastings.Asset(0) + 32);

  return sub_1C7033844(v3, a1);
}

uint64_t sub_1C7033844(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Hastings.Asset.init(uuid:curationScore:aestheticScore:iconicScore:creationDate:numberOfFaces:isBadQuality:isPlayable:hasLocation:curationModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a10;
  *(a9 + 24) = a11;
  *(a9 + 32) = a12;
  v19 = type metadata accessor for Hastings.Asset(0);
  result = sub_1C6FF51C8(a3, a9 + v19[8]);
  *(a9 + v19[9]) = a4;
  *(a9 + v19[10]) = a5;
  *(a9 + v19[11]) = a6;
  *(a9 + v19[12]) = a7;
  *(a9 + v19[13]) = a8;
  return result;
}

uint64_t static Hastings.Asset.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C7551DBC();
  }
}

uint64_t Hastings.Asset.description.getter()
{
  v1 = v0;
  v2 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1C755180C();
  v11 = *v0;
  v12 = v0[1];
  sub_1C75504FC();
  v13 = sub_1C7033D84(8, v11, v12);
  v14 = MEMORY[0x1CCA5CC40](v13);
  v16 = v15;

  v34 = v14;
  v35 = v16;
  MEMORY[0x1CCA5CD70](10272, 0xE200000000000000);
  v17 = type metadata accessor for Hastings.Asset(0);
  sub_1C7033844(v0 + *(v17 + 32), v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
  {
    v18 = 0xE100000000000000;
    v19 = 45;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_8_10();
    v21(v20);
    v22 = objc_opt_self();
    v23 = sub_1C754DECC();
    v24 = [v22 localizedStringFromDate:v23 dateStyle:1 timeStyle:1];

    v19 = sub_1C755068C();
    v18 = v25;

    (*(v4 + 8))(v7, v2);
  }

  MEMORY[0x1CCA5CD70](v19, v18);

  MEMORY[0x1CCA5CD70](0x203A727563202CLL, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v26 = swift_allocObject();
  v33 = xmmword_1C755BAB0;
  *(v26 + 16) = xmmword_1C755BAB0;
  v27 = OUTLINED_FUNCTION_3_14(v26, v1[2]);
  MEMORY[0x1CCA5CD70](v27);

  MEMORY[0x1CCA5CD70](0x203A736561202CLL, 0xE700000000000000);
  v28 = swift_allocObject();
  *(v28 + 16) = v33;
  v29 = OUTLINED_FUNCTION_3_14(v28, v1[3]);
  MEMORY[0x1CCA5CD70](v29);

  MEMORY[0x1CCA5CD70](0x203A6F6369202CLL, 0xE700000000000000);
  v30 = swift_allocObject();
  *(v30 + 16) = v33;
  v31 = OUTLINED_FUNCTION_3_14(v30, v1[4]);
  MEMORY[0x1CCA5CD70](v31);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  return v34;
}

uint64_t sub_1C7033D84(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1C755082C();
    sub_1C755098C();
    OUTLINED_FUNCTION_14_4();
    return OUTLINED_FUNCTION_19_12();
  }

  return result;
}

void sub_1C7033E24(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_18_8(a1, a2);
    sub_1C719D92C();
    v6 = OUTLINED_FUNCTION_17_12();
    sub_1C719D934(v6);
    v7 = OUTLINED_FUNCTION_1_21();
    sub_1C70354BC(v7, v8, v9, v10, v11, v12, v13, v14);
    OUTLINED_FUNCTION_7_9();
    if (v3)
    {
      v15 = v32;
    }

    else
    {
      v15 = sub_1C719D934(v2);
      v4 = v16;
      v5 = v17;
    }

    v18 = sub_1C719D92C();
    if (v5 & 1) != 0 || (v20)
    {
      goto LABEL_13;
    }

    if (v4 == v19)
    {
      if (v15 >= v18)
      {
        v36[0] = v18;
        v36[1] = v19;
        v37 = 0;
        v38 = v15;
        v39 = v4;
        v40 = 0;
        sub_1C7035A3C(v36, v2, v34);

        OUTLINED_FUNCTION_4_12(v21, v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, v33, v34[0], v34[1], v30, v35);
        return;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_1C7033F5C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_18_8(a1, a2);
    sub_1C719D930();
    v6 = OUTLINED_FUNCTION_17_12();
    sub_1C719D350(v6);
    v7 = OUTLINED_FUNCTION_1_21();
    sub_1C7035618(v7, v8, v9, v10, v11, v12, v13, v14);
    OUTLINED_FUNCTION_7_9();
    if (v3)
    {
      v15 = v35;
    }

    else
    {
      v15 = sub_1C719D350(v2);
      v4 = v16;
      v5 = v17;
    }

    v18 = sub_1C719D930();
    v20 = v19;
    v22 = v21 & 1;
    v23 = v5 & 1;
    if (sub_1C707D9DC(v18, v19, v21 & 1, v15, v4, v23))
    {
      v39[0] = v18;
      v39[1] = v20;
      v40 = v22;
      v41 = v15;
      v42 = v4;
      v43 = v23;
      sub_1C7035B30(v39, v2, v37);

      sub_1C6F9ED50(v18, v20, v22);
      v24 = sub_1C6F9ED50(v15, v4, v23);
      OUTLINED_FUNCTION_4_12(v24, v25, v26, v27, v28, v29, v30, v31, v32, v34, v35, v36, v37[0], v37[1], v33, v38);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1C70340E0(uint64_t a1, unint64_t a2, uint64_t (*a3)(unint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, unint64_t), void (*a5)(void))
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    OUTLINED_FUNCTION_12_14();
    OUTLINED_FUNCTION_13_14();
    return OUTLINED_FUNCTION_8_10();
  }

  v9 = a3(a2);
  v10 = a4(0, a1, v9, a2);
  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  if (v12 < 0)
  {
    goto LABEL_16;
  }

  sub_1C70359E4(0, a2);
  sub_1C70359E4(v12, a2);
  if ((a2 & 0xC000000000000001) != 0 && v12)
  {
    a5(0);
    sub_1C75504FC();
    v13 = 0;
    do
    {
      v14 = v13 + 1;
      sub_1C755189C();
      v13 = v14;
    }

    while (v12 != v14);
  }

  else
  {
    sub_1C75504FC();
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_9_12();
  return OUTLINED_FUNCTION_8_10();
}

uint64_t sub_1C7034228(uint64_t a1, unint64_t a2, uint64_t (*a3)(unint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, unint64_t), unint64_t *a5, void *a6)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    OUTLINED_FUNCTION_12_14();
    OUTLINED_FUNCTION_13_14();
    return OUTLINED_FUNCTION_8_10();
  }

  v11 = a3(a2);
  v12 = a4(0, a1, v11, a2);
  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  if (v14 < 0)
  {
    goto LABEL_16;
  }

  sub_1C70359E4(0, a2);
  sub_1C70359E4(v14, a2);
  if ((a2 & 0xC000000000000001) != 0 && v14)
  {
    sub_1C6F65BE8(0, a5, a6);
    sub_1C75504FC();
    v15 = 0;
    do
    {
      v16 = v15 + 1;
      sub_1C755189C();
      v15 = v16;
    }

    while (v14 != v16);
  }

  else
  {
    sub_1C75504FC();
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_9_12();
  return OUTLINED_FUNCTION_8_10();
}

uint64_t sub_1C70343E4(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = result;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      a4(0);
      OUTLINED_FUNCTION_14_4();
      return OUTLINED_FUNCTION_19_12();
    }
  }

  __break(1u);
  return result;
}

uint64_t Hastings.Asset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216180, &qword_1C7563730);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_1C703502C();
  OUTLINED_FUNCTION_20_14(&_s5AssetV10CodingKeysON, v10, v9);
  v12[15] = 0;
  OUTLINED_FUNCTION_442();
  sub_1C7551CCC();
  if (!v1)
  {
    v12[14] = 1;
    OUTLINED_FUNCTION_442();
    sub_1C7551CEC();
    v12[13] = 2;
    OUTLINED_FUNCTION_442();
    sub_1C7551CEC();
    v12[12] = 3;
    OUTLINED_FUNCTION_442();
    sub_1C7551CEC();
    type metadata accessor for Hastings.Asset(0);
    v12[11] = 4;
    sub_1C754DF6C();
    sub_1C70350C8(&qword_1EDD0F9E8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_0_19();
    sub_1C7551CBC();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t Hastings.Asset.hashValue.getter()
{
  sub_1C7551F3C();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

uint64_t sub_1C70346C8(uint64_t a1)
{
  sub_1C7551F3C();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

uint64_t sub_1C703470C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x80000001C759A220 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000023 && 0x80000001C759A240 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000019 && 0x80000001C759A270 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_1C7034828(char a1)
{
  if (!a1)
  {
    return 0xD00000000000001BLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000023;
  }

  return 0xD000000000000019;
}

uint64_t sub_1C7034884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C703470C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70348AC(uint64_t a1)
{
  v2 = sub_1C7035C5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70348E8(uint64_t a1)
{
  v2 = sub_1C7035C5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7034924()
{

  return v0;
}

uint64_t sub_1C7034954()
{
  sub_1C7034924();

  return swift_deallocClassInstance();
}

uint64_t sub_1C7034988(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2161E0, &qword_1C75639F8);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1C7035C5C();
  OUTLINED_FUNCTION_20_14(&_s10SummarizerC18DiagnosticReporterC10CodingKeysON, v12, v11);
  v15 = v3[2];
  HIBYTE(v14) = 0;
  _s18TimeBasedClustererV18DiagnosticReporterCMa();
  sub_1C70350C8(&qword_1EC2161F0, _s18TimeBasedClustererV18DiagnosticReporterCMa, aY1);
  OUTLINED_FUNCTION_0_19();
  sub_1C7551D2C();
  if (!v2)
  {
    v15 = v3[3];
    HIBYTE(v14) = 1;
    _s17ClusterComparatorV18DiagnosticReporterCMa();
    sub_1C70350C8(&qword_1EC2161F8, _s17ClusterComparatorV18DiagnosticReporterCMa, aQ1);
    OUTLINED_FUNCTION_0_19();
    sub_1C7551D2C();
    v15 = v3[4];
    HIBYTE(v14) = 2;
    _s7ElectorV18DiagnosticReporterCMa(0);
    sub_1C70350C8(&qword_1EC216200, _s7ElectorV18DiagnosticReporterCMa, a9_10);
    OUTLINED_FUNCTION_0_19();
    sub_1C7551D2C();
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_1C7034BC4()
{
  _s18TimeBasedClustererV18DiagnosticReporterCMa();
  swift_allocObject();
  v0[2] = sub_1C7085530();
  _s17ClusterComparatorV18DiagnosticReporterCMa();
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
  v0[3] = v1;
  _s7ElectorV18DiagnosticReporterCMa(0);
  swift_allocObject();
  v0[4] = sub_1C73BAB9C();
  return v0;
}

uint64_t sub_1C7034C70(__int128 *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Hastings.TimeBasedClusterer(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  v33 = *a1;
  v34 = v9;
  v11 = *a1;
  v10 = a1[1];
  v35[0] = a1[2];
  *(v35 + 14) = *(a1 + 46);
  v30 = v11;
  v31 = v10;
  v32[0] = a1[2];
  *(v32 + 14) = *(a1 + 46);
  if (a3)
  {
    v12 = *(a3 + 16);

    v13 = a2;
    sub_1C7035CB0(&v33, &v27);
    sub_1C7082D28(&v30, v13, v12, v8);
  }

  else
  {
    v15 = a2;
    sub_1C7035CB0(&v33, &v27);
    sub_1C7082D28(&v30, v15, 0, v8);
    v14 = 0;
  }

  v30 = v33;
  v31 = v34;
  v32[0] = v35[0];
  *(v32 + 14) = *(v35 + 14);
  *(&v32[1] + 1) = v14;
  v16 = swift_allocObject();
  v17 = v31;
  v16[1] = v30;
  v16[2] = v17;
  v18 = v32[1];
  v16[3] = v32[0];
  v16[4] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216208, &qword_1C7563A00);
  swift_allocObject();
  sub_1C7035CB0(&v33, &v27);
  sub_1C7035D14(&v30, &v27);
  sub_1C754F4EC();
  if (a3)
  {
    v19 = *(a3 + 32);
  }

  else
  {
    v19 = 0;
  }

  v27 = v33;
  v28 = v34;
  v29[0] = v35[0];
  *(v29 + 14) = *(v35 + 14);
  v26[3] = v6;
  v26[4] = sub_1C70350C8(&qword_1EC216210, type metadata accessor for Hastings.TimeBasedClusterer, protocol conformance descriptor for Hastings.TimeBasedClusterer);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  sub_1C7035D70(v8, boxed_opaque_existential_0);
  v25[3] = &_s7ElectorVN;
  v25[4] = sub_1C7035DD4();
  v21 = swift_allocObject();
  v25[0] = v21;
  v22 = v28;
  *(v21 + 16) = v27;
  *(v21 + 32) = v22;
  *(v21 + 48) = v29[0];
  *(v21 + 64) = *&v29[1];
  *(v21 + 72) = v19;
  v23 = sub_1C754F0AC();
  sub_1C7035E88(&v30);

  sub_1C7035EDC(v8);
  return v23;
}

uint64_t sub_1C7034F58(uint64_t *a1, uint64_t *a2, __int128 *a3)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = *a2;
  v6 = a2[3];
  v7 = a3[1];
  v16 = *a3;
  v17 = v7;
  v8 = a3[3];
  v18 = a3[2];
  v19 = v8;
  v12 = v6;
  v13 = v3;
  v14 = *(a1 + 1);
  v15 = v4;
  v10 = v5;
  v11 = *(a2 + 1);
  return sub_1C7082F3C(&v13, &v10) & 1;
}

uint64_t sub_1C7034FFC()
{
  _s18PhotosIntelligence24CLIPBasedAssetSummarizerCfd_0();

  return swift_deallocClassInstance();
}

unint64_t sub_1C703502C()
{
  result = qword_1EC216188;
  if (!qword_1EC216188)
  {
    result = swift_getWitnessTable(byte_1C75639A0, &_s5AssetV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216188);
  }

  return result;
}

uint64_t sub_1C70350C8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C7035180(uint64_t a1)
{
  sub_1C6F5FB48(319);
  if (v1 <= 0x3F)
  {
    sub_1C6F65BE8(319, &qword_1EC2161B0, off_1E829F370);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *_s5AssetV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C70353B8()
{
  result = qword_1EC2161C8;
  if (!qword_1EC2161C8)
  {
    result = swift_getWitnessTable(byte_1C7563950, &_s5AssetV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC2161C8);
  }

  return result;
}

unint64_t sub_1C7035410()
{
  result = qword_1EC2161D0;
  if (!qword_1EC2161D0)
  {
    result = swift_getWitnessTable(a1b, &_s5AssetV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC2161D0);
  }

  return result;
}

unint64_t sub_1C7035468()
{
  result = qword_1EC2161D8;
  if (!qword_1EC2161D8)
  {
    result = swift_getWitnessTable(aI_26, &_s5AssetV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC2161D8);
  }

  return result;
}

unint64_t sub_1C70354BC(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v8 = a2;
  v9 = result;
  if (a4)
  {
    v10 = 0;
    v11 = a3 | a7;
    while ((v11 & 1) == 0)
    {
      if (v8 != a6)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v9 == a5)
      {
        return 0;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      v12 = 1 << *(a8 + 32);
      if (v9 >= v12)
      {
        goto LABEL_24;
      }

      v13 = v9 >> 6;
      v14 = *(a8 + 56 + 8 * (v9 >> 6));
      if (((v14 >> v9) & 1) == 0)
      {
        goto LABEL_25;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_26;
      }

      v15 = v14 & (-2 << (v9 & 0x3F));
      if (v15)
      {
        v9 = __clz(__rbit64(v15)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v13 << 6;
        v17 = v13 + 1;
        v18 = (a8 + 64 + 8 * v13);
        while (v17 < (v12 + 63) >> 6)
        {
          v19 = *v18++;
          result = v19;
          v16 += 64;
          ++v17;
          if (v19)
          {
            v9 = __clz(__rbit64(result)) + v16;
            goto LABEL_18;
          }
        }

        v9 = 1 << *(a8 + 32);
      }

LABEL_18:
      ++v10;
      v8 = a6;
      v11 = a7;
      if (v10 >= a4)
      {
        return v9;
      }
    }

    goto LABEL_28;
  }

  sub_1C6FD8078(result, a2, a3 & 1);
  return v9;
}

uint64_t sub_1C7035618(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 < 0)
  {
    goto LABEL_38;
  }

  v13 = result;
  v34 = result;
  v35 = a2;
  v36 = a3 & 1;
  result = sub_1C6FD8078(result, a2, a3 & 1);
  if (!a4)
  {
    return v13;
  }

  v14 = 0;
  v15 = a8 & 0xC000000000000001;
  v32 = a6;
  while (1)
  {
    v17 = v34;
    v16 = v35;
    v18 = v36;
    if (v36)
    {
      if ((a7 & 1) == 0)
      {
        goto LABEL_39;
      }

      result = MEMORY[0x1CCA5DBA0](v34, v35, a5, a6);
      if (result)
      {
        a5 = v17;
LABEL_32:
        sub_1C6F9ED50(a5, v16, v18);
        return 0;
      }

      if (!v15)
      {
        goto LABEL_40;
      }

      if (sub_1C755166C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A0, &unk_1C755EA90);
      v23 = sub_1C7550FCC();
      sub_1C755172C();
      result = v23(v33, 0);
      goto LABEL_28;
    }

    if (a7)
    {
      goto LABEL_39;
    }

    if (v35 != a6)
    {
      break;
    }

    if (v34 == a5)
    {
      goto LABEL_32;
    }

    if (v15)
    {
      goto LABEL_41;
    }

    if ((v34 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }

    v19 = 1 << *(a8 + 32);
    if (v34 >= v19)
    {
      goto LABEL_35;
    }

    v20 = v34 >> 6;
    v21 = *(a8 + 56 + 8 * (v34 >> 6));
    if (((v21 >> v34) & 1) == 0)
    {
      goto LABEL_36;
    }

    if (*(a8 + 36) != v35)
    {
      goto LABEL_37;
    }

    v22 = v21 & (-2 << (v34 & 0x3F));
    if (v22)
    {
      v19 = __clz(__rbit64(v22)) | v34 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = a5;
      v25 = a7;
      v26 = v20 << 6;
      v27 = v20 + 1;
      v28 = (a8 + 64 + 8 * v20);
      while (v27 < (v19 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_1C6F9ED50(v34, v35, 0);
          v19 = __clz(__rbit64(v29)) + v26;
          goto LABEL_26;
        }
      }

      result = sub_1C6F9ED50(v34, v35, 0);
LABEL_26:
      a7 = v25;
      a5 = v24;
      v15 = a8 & 0xC000000000000001;
      a6 = v32;
    }

    v31 = *(a8 + 36);
    v34 = v19;
    v35 = v31;
    v36 = 0;
LABEL_28:
    if (++v14 >= a4)
    {
      return v34;
    }
  }

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
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1C70358B8(uint64_t result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_14;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*result < *a2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a2 + 40) & 1) != 0 || (*(result + 40))
  {
    goto LABEL_15;
  }

  if (*(a2 + 32) != *(result + 32))
  {
    goto LABEL_12;
  }

  if (*(a2 + 24) < *(result + 24))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C7035934(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      result = MEMORY[0x1CCA5DB90](result, v5, v6, v7);
      goto LABEL_7;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (*(a2 + 16))
  {
    goto LABEL_19;
  }

  if (v5 != v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = result < v6;
LABEL_7:
  if (result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  result = *(a2 + 24);
  v10 = *(a2 + 32);
  if (*(a2 + 40))
  {
    if (*(a1 + 40))
    {
      result = MEMORY[0x1CCA5DB90](result, v10, v8, v9);
      if ((result & 1) == 0)
      {
        return result;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

LABEL_20:
    __break(1u);
    return result;
  }

  if (*(a1 + 40))
  {
    goto LABEL_20;
  }

  if (v10 != v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result < v8)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1C70359E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_1C75516BC();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C7035A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C719D92C();
  v8 = v7;
  v10 = v9;
  result = sub_1C719D934(a2);
  if ((v13 & 1) == 0 && (v10 & 1) == 0)
  {
    if (v12 == v8)
    {
      if (result >= v6)
      {
        v20[0] = v6;
        v20[1] = v8;
        v21 = 0;
        v22 = result;
        v23 = v12;
        v24 = 0;
        sub_1C70358B8(a1, v20);
        v14 = *a1;
        v15 = *(a1 + 8);
        v16 = *(a1 + 16);
        v17 = *(a1 + 24);
        v18 = *(a1 + 32);
        v19 = *(a1 + 40);
        sub_1C75504FC();
        sub_1C6FD8078(v14, v15, v16);
        result = sub_1C6FD8078(v17, v18, v19);
        *a3 = v14;
        *(a3 + 8) = v15;
        *(a3 + 16) = v16;
        *(a3 + 24) = v17;
        *(a3 + 32) = v18;
        *(a3 + 40) = v19;
        *(a3 + 48) = a2;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7035B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C719D930();
  v8 = v7;
  v10 = v9;
  v11 = sub_1C719D350(a2);
  v13 = v12;
  v14 = v10 & 1;
  v16 = v15 & 1;
  result = sub_1C707D9DC(v6, v8, v14, v11, v12, v15 & 1);
  if (result)
  {
    v24[0] = v6;
    v24[1] = v8;
    v25 = v14;
    v26 = v11;
    v27 = v13;
    v28 = v16;
    sub_1C7035934(a1, v24);
    sub_1C6F9ED50(v6, v8, v14);
    sub_1C6F9ED50(v11, v13, v16);
    v18 = *a1;
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    v21 = *(a1 + 24);
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    sub_1C75504FC();
    sub_1C6FD8078(v18, v19, v20);
    result = sub_1C6FD8078(v21, v22, v23);
    *a3 = v18;
    *(a3 + 8) = v19;
    *(a3 + 16) = v20;
    *(a3 + 24) = v21;
    *(a3 + 32) = v22;
    *(a3 + 40) = v23;
    *(a3 + 48) = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C7035C5C()
{
  result = qword_1EC2161E8;
  if (!qword_1EC2161E8)
  {
    result = swift_getWitnessTable(byte_1C7563AC0, &_s10SummarizerC18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC2161E8);
  }

  return result;
}

uint64_t sub_1C7035D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Hastings.TimeBasedClusterer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C7035DD4()
{
  result = qword_1EC216218;
  if (!qword_1EC216218)
  {
    result = swift_getWitnessTable(byte_1C7586D00, &_s7ElectorVN, v0, v1);
    atomic_store(result, &qword_1EC216218);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C7035EDC(uint64_t a1)
{
  v2 = type metadata accessor for Hastings.TimeBasedClusterer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *_s10SummarizerC18DiagnosticReporterC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7036018()
{
  result = qword_1EC216220;
  if (!qword_1EC216220)
  {
    result = swift_getWitnessTable(byte_1C7563A98, &_s10SummarizerC18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216220);
  }

  return result;
}

unint64_t sub_1C7036070()
{
  result = qword_1EC216228;
  if (!qword_1EC216228)
  {
    result = swift_getWitnessTable(byte_1C7563A08, &_s10SummarizerC18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216228);
  }

  return result;
}

unint64_t sub_1C70360C8()
{
  result = qword_1EC216230;
  if (!qword_1EC216230)
  {
    result = swift_getWitnessTable(byte_1C7563A30, &_s10SummarizerC18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216230);
  }

  return result;
}

uint64_t QueryTokenCategoryTypeString.rawValue.getter()
{
  result = 1701736302;
  switch(*v0)
  {
    case 1:
      v2 = 1936876912;
      goto LABEL_18;
    case 2:
      result = OUTLINED_FUNCTION_32_7();
      break;
    case 3:
      result = OUTLINED_FUNCTION_127_3();
      break;
    case 4:
      result = OUTLINED_FUNCTION_60_3();
      break;
    case 5:
      result = OUTLINED_FUNCTION_61_5();
      break;
    case 6:
      v2 = 1935762803;
LABEL_18:
      result = v2 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
      break;
    case 7:
      result = OUTLINED_FUNCTION_79_4(0x61636F6Cu);
      break;
    case 8:
      result = OUTLINED_FUNCTION_56_8();
      break;
    case 9:
      result = OUTLINED_FUNCTION_129_2();
      break;
    case 0xA:
      result = OUTLINED_FUNCTION_59_3();
      break;
    case 0xB:
      result = OUTLINED_FUNCTION_58_6();
      break;
    case 0xC:
      result = OUTLINED_FUNCTION_70_5();
      break;
    case 0xD:
      result = OUTLINED_FUNCTION_57_4();
      break;
    case 0xE:
      result = OUTLINED_FUNCTION_62_7();
      break;
    case 0xF:
      result = OUTLINED_FUNCTION_128_3();
      break;
    case 0x10:
      result = OUTLINED_FUNCTION_79_4(0x61727564u);
      break;
    case 0x11:
      result = OUTLINED_FUNCTION_93_3();
      break;
    case 0x12:
      result = OUTLINED_FUNCTION_69_8();
      break;
    case 0x13:
      result = 0x6564724F74726F73;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_1C70362E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216520, &qword_1C75647E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C75604F0;
  *(inited + 32) = 1;
  sub_1C707DEC4();
  *(inited + 40) = v1;
  *(inited + 48) = 3;
  sub_1C707DEC4();
  *(inited + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F08, &qword_1C755C0F8);
  sub_1C7043EF8();
  result = sub_1C75504DC();
  off_1EC216240 = result;
  return result;
}

uint64_t sub_1C70363C0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return sub_1C75504FC();
}

PhotosIntelligence::QueryTokenCategoryTypeString_optional __swiftcall QueryTokenCategoryTypeString.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551DFC();

  v5 = 0;
  v6 = 2;
  switch(v3)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v5 = 1;
LABEL_3:
      v6 = v5;
      break;
    case 2:
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    default:
      v6 = 20;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C7036580@<X0>(uint64_t *a1@<X8>)
{
  result = QueryTokenCategoryTypeString.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void static PersonalEventBackingItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v69 = v6;
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_2();
  v66 = v7;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_130();
  v67 = v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_130();
  v68 = v11;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v65 - v13;
  type metadata accessor for PersonalEventBackingItem(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_78();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v65 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216290, &unk_1C7563B10);
  OUTLINED_FUNCTION_76(v23);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v65 - v25;
  v28 = (&v65 + *(v27 + 56) - v25);
  sub_1C70420B4(v4, &v65 - v25);
  sub_1C70420B4(v2, v28);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_8_11();
      v49 = OUTLINED_FUNCTION_57_3();
      sub_1C70420B4(v49, v50);
      OUTLINED_FUNCTION_87_4();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v52 = v69;
        v51 = v70;
        v53 = OUTLINED_FUNCTION_157_0();
        v54(v53);
        MEMORY[0x1CCA59F10](v0, v14);
        v55 = *(v52 + 8);
        v55(v14, v51);
        v56 = OUTLINED_FUNCTION_154();
        (v55)(v56);
        goto LABEL_15;
      }

      (*(v69 + 8))(v0, v70);
      goto LABEL_13;
    case 2u:
      OUTLINED_FUNCTION_8_11();
      v32 = OUTLINED_FUNCTION_82();
      sub_1C70420B4(v32, v33);
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216298, &unk_1C7580760) + 48);
      OUTLINED_FUNCTION_87_4();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v57 = *(v69 + 8);
        v58 = v18 + v34;
        v59 = v70;
        v57(v58, v70);
        v57(v18, v59);
        goto LABEL_13;
      }

      v36 = v68;
      v35 = v69;
      v37 = *(v69 + 32);
      v38 = OUTLINED_FUNCTION_157_0();
      v39 = v70;
      v37(v38);
      v40 = v67;
      (v37)(v67, v18 + v34, v39);
      v41 = v28 + v34;
      v42 = v66;
      (v37)(v66, v41, v39);
      v43 = MEMORY[0x1CCA59F10](v18, v36);
      v44 = *(v35 + 8);
      v45 = OUTLINED_FUNCTION_117_0();
      v44(v45);
      if (v43)
      {
        MEMORY[0x1CCA59F10](v40, v42);
        v46 = OUTLINED_FUNCTION_96_3();
        v44(v46);
        v47 = OUTLINED_FUNCTION_82_3();
        v44(v47);
        v48 = OUTLINED_FUNCTION_94_3();
        v44(v48);
        goto LABEL_15;
      }

      v61 = OUTLINED_FUNCTION_96_3();
      v44(v61);
      v62 = OUTLINED_FUNCTION_82_3();
      v44(v62);
      v63 = OUTLINED_FUNCTION_94_3();
      v44(v63);
      OUTLINED_FUNCTION_3_15();
      sub_1C7042164(v26, v64);
      break;
    case 3u:
      OUTLINED_FUNCTION_87_4();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    default:
      OUTLINED_FUNCTION_8_11();
      v29 = OUTLINED_FUNCTION_43_2();
      sub_1C70420B4(v29, v30);
      v31 = *v22;
      OUTLINED_FUNCTION_87_4();
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_13:
        sub_1C6FD7FC8(v26, &qword_1EC216290, &unk_1C7563B10);
      }

      else
      {
        sub_1C7036A90(v31, *v28);

LABEL_15:
        OUTLINED_FUNCTION_3_15();
        sub_1C7042164(v26, v60);
      }

      break;
  }

  OUTLINED_FUNCTION_25_0();
}

void sub_1C7036A90(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_109_5();
    if (v23)
    {
      v4 = 0;
      v5 = v3 + 56;
      OUTLINED_FUNCTION_90_1();
      v9 = v8 & v7;
      v11 = (v10 + 63) >> 6;
      v25 = v6;
      if ((v8 & v7) != 0)
      {
        while (2)
        {
          v12 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
LABEL_11:
          v16 = (*(v6 + 48) + 16 * (v12 | (v4 << 6)));
          v18 = *v16;
          v17 = v16[1];
          sub_1C7551F3C();
          sub_1C75504FC();
          sub_1C75505AC();
          v19 = sub_1C7551FAC();
          v20 = ~(-1 << *(a2 + 32));
          do
          {
            v21 = v19 & v20;
            if (((*(a2 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
            {

              return;
            }

            v22 = (*(a2 + 48) + 16 * v21);
            v23 = *v22 == v18 && v22[1] == v17;
            if (v23)
            {
              break;
            }

            v24 = sub_1C7551DBC();
            v19 = v21 + 1;
          }

          while ((v24 & 1) == 0);

          v6 = v25;
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v13 = v4;
      while (1)
      {
        v4 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v4 >= v11)
        {
          return;
        }

        ++v13;
        if (*(v5 + 8 * v4))
        {
          OUTLINED_FUNCTION_78_0();
          v9 = v15 & v14;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }
}

void sub_1C7036C14(uint64_t a1, uint64_t a2)
{
  if (a1 == a2 || (v3 = a1, OUTLINED_FUNCTION_109_5(), !v25))
  {
LABEL_34:
    OUTLINED_FUNCTION_110_0();
    return;
  }

  v4 = 0;
  v27 = v3 + 56;
  OUTLINED_FUNCTION_90_1();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v10 = a2 + 56;
  v28 = v9;
  v29 = v3;
  if ((v6 & v5) != 0)
  {
    do
    {
      v11 = __clz(__rbit64(v7));
      v12 = (v7 - 1) & v7;
LABEL_11:
      v16 = *(*(v3 + 48) + (v11 | (v4 << 6)));
      v17 = sub_1C72DE740(*(a2 + 40));
      v18 = -1 << *(a2 + 32);
      v19 = v17 & ~v18;
      if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_34;
      }

      v30 = v12;
      v20 = ~v18;
      if (v16)
      {
        v21 = 0xD000000000000015;
      }

      else
      {
        v21 = 0x696A6F6D65;
      }

      if (v16)
      {
        v22 = 0x80000001C75964E0;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      while (1)
      {
        v23 = *(*(a2 + 48) + v19) ? 0xD000000000000015 : 0x696A6F6D65;
        v24 = *(*(a2 + 48) + v19) ? 0x80000001C75964E0 : 0xE500000000000000;
        v25 = v23 == v21 && v24 == v22;
        if (v25)
        {
          break;
        }

        v26 = sub_1C7551DBC();

        if (v26)
        {
          goto LABEL_32;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_32:
      v9 = v28;
      v3 = v29;
      v7 = v30;
    }

    while (v30);
  }

  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_34;
    }

    ++v13;
    if (*(v27 + 8 * v4))
    {
      OUTLINED_FUNCTION_78_0();
      v12 = v15 & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1C7036E00(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_109_5();
    if (v4)
    {
      v5 = 0;
      v6 = 1 << *(a1 + 32);
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      else
      {
        v7 = -1;
      }

      v8 = v7 & *(a1 + 56);
      v9 = (v6 + 63) >> 6;
LABEL_8:
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_15:
        v14 = *(*(a1 + 48) + (v10 | (v5 << 6)));
        sub_1C7551F3C();
        MEMORY[0x1CCA5E460](v14);
        v15 = sub_1C7551FAC();
        v16 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v17 = v15 & v16;
          if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
          {
            break;
          }

          v15 = v17 + 1;
          if (*(*(a2 + 48) + v17) == v14)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        v11 = v5;
        while (1)
        {
          v5 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v5 >= v9)
          {
            return;
          }

          ++v11;
          if (*(a1 + 56 + 8 * v5))
          {
            OUTLINED_FUNCTION_78_0();
            v8 = v13 & v12;
            goto LABEL_15;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_1C7036F4C(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_110_0();

LABEL_31:
      MEMORY[0x1EEE6A200]();
      return;
    }
  }

  else if (!v4)
  {
    if (a1 == a2 || *(a1 + 16) != *(a2 + 16))
    {
LABEL_29:
      OUTLINED_FUNCTION_110_0();
      return;
    }

    v24 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(a1 + 56);
    sub_1C6FDEC1C();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v25 = v13;
    if (v11)
    {
      while (2)
      {
        v14 = __clz(__rbit64(v11));
        v26 = (v11 - 1) & v11;
LABEL_22:
        v18 = *(*(a1 + 48) + 8 * (v14 | (v12 << 6)));
        v19 = sub_1C75513DC();
        v20 = ~(-1 << *(a2 + 32));
        do
        {
          v21 = v19 & v20;
          if (((*(a2 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
          {

            goto LABEL_29;
          }

          v22 = *(*(a2 + 48) + 8 * v21);
          v23 = sub_1C75513EC();

          v19 = v21 + 1;
        }

        while ((v23 & 1) == 0);

        v13 = v25;
        v11 = v26;
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v15 = v12;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v12 >= v13)
      {
        goto LABEL_29;
      }

      ++v15;
      if (*(v24 + 8 * v12))
      {
        OUTLINED_FUNCTION_78_0();
        v26 = v17 & v16;
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_110_0();

  sub_1C70402D0(v6, v7);
}

uint64_t sub_1C7037168(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E656D6F6DLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702125924 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x676E615265746164 && a2 == 0xE900000000000065)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C70372C4(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 0x746E656D6F6DLL;
      break;
    case 2:
      result = 1702125924;
      break;
    case 3:
      result = 0x676E615265746164;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7037334(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x706D6F4365746164 && a2 == 0xEE0073746E656E6FLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C70373D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001C7599D40 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C7599D60 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1C70374B0(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1C70374E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5555746E656D6F6DLL && a2 == 0xEB00000000734449)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C703758C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7037168(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70375B4(uint64_t a1)
{
  v2 = sub_1C7037F78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70375F0(uint64_t a1)
{
  v2 = sub_1C7037F78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7037630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7037334(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C703765C(uint64_t a1)
{
  v2 = sub_1C7038020();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7037698(uint64_t a1)
{
  v2 = sub_1C7038020();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C70376DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C70373D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7037704(uint64_t a1)
{
  v2 = sub_1C7037FCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7037740(uint64_t a1)
{
  v2 = sub_1C7037FCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7037780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C70374E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C70377AC(uint64_t a1)
{
  v2 = sub_1C7038074();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70377E8(uint64_t a1)
{
  v2 = sub_1C7038074();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7037824(uint64_t a1)
{
  v2 = sub_1C7038144();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7037860(uint64_t a1)
{
  v2 = sub_1C7038144();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonalEventBackingItem.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_124();
  a25 = v29;
  a26 = v30;
  v109 = v27;
  v106 = v26;
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2162A0, &qword_1C7563B20);
  OUTLINED_FUNCTION_3_0();
  v100 = v34;
  v101 = v33;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_36();
  v99 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2162A8, &qword_1C7563B28);
  OUTLINED_FUNCTION_3_0();
  v97 = v38;
  v98 = v37;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_36();
  v96 = v40;
  OUTLINED_FUNCTION_37_3();
  sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v103 = v42;
  v104 = v41;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_14_2();
  v105 = v43;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_130();
  v102 = v45;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_140_1();
  v95 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2162B0, &qword_1C7563B30);
  OUTLINED_FUNCTION_3_0();
  v93 = v49;
  v94 = v48;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v92 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2162B8, &qword_1C7563B38);
  OUTLINED_FUNCTION_3_0();
  v92 = v54;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_148_2();
  type metadata accessor for PersonalEventBackingItem(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_14_0();
  v59 = (v58 - v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2162C0, &unk_1C7563B40);
  OUTLINED_FUNCTION_3_0();
  v107 = v61;
  v108 = v60;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v62);
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  sub_1C7037F78();
  sub_1C755200C();
  OUTLINED_FUNCTION_8_11();
  sub_1C70420B4(v106, v59);
  OUTLINED_FUNCTION_455();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v85 = v103;
      v84 = v104;
      v86 = v95;
      v87 = OUTLINED_FUNCTION_96_3();
      v88(v87);
      a13 = 2;
      sub_1C7038020();
      v89 = v96;
      OUTLINED_FUNCTION_161_0(&type metadata for PersonalEventBackingItem.DateCodingKeys, &a13);
      OUTLINED_FUNCTION_1_22();
      sub_1C7038430(v90);
      v91 = v98;
      sub_1C7551D2C();
      (*(v97 + 8))(v89, v91);
      (*(v85 + 8))(v86, v84);
      v79 = OUTLINED_FUNCTION_50_6();
      v81 = v52;
      goto LABEL_8;
    case 2u:
      v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216298, &unk_1C7580760) + 48);
      v69 = v103;
      v70 = *(v103 + 32);
      v71 = OUTLINED_FUNCTION_82_3();
      v72 = v104;
      v70(v71);
      (v70)(v105, v59 + v68, v72);
      a16 = 3;
      sub_1C7037FCC();
      v73 = v99;
      v74 = v108;
      sub_1C7551C6C();
      a15 = 0;
      OUTLINED_FUNCTION_1_22();
      sub_1C7038430(v75);
      v76 = v101;
      OUTLINED_FUNCTION_140_2();
      v77 = v109;
      sub_1C7551D2C();
      if (!v77)
      {
        a14 = 1;
        OUTLINED_FUNCTION_140_2();
        sub_1C7551D2C();
      }

      (*(v100 + 8))(v73, v76);
      v78 = *(v69 + 8);
      v78(v105, v72);
      v78(v102, v72);
      v79 = OUTLINED_FUNCTION_50_6();
      v81 = v74;
LABEL_8:
      v80(v79, v81);
      break;
    case 3u:
      a11 = 0;
      sub_1C7038144();
      OUTLINED_FUNCTION_161_0(&type metadata for PersonalEventBackingItem.NoneCodingKeys, &a11);
      (*(v92 + 8))(v28, v53);
      v82 = OUTLINED_FUNCTION_50_6();
      v83(v82, v52);
      break;
    default:
      v63 = *v59;
      a12 = 1;
      sub_1C7038074();
      v64 = v108;
      sub_1C7551C6C();
      v110 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
      sub_1C70380C8();
      v65 = v94;
      sub_1C7551D2C();
      (*(v93 + 8))(v52, v65);
      v66 = OUTLINED_FUNCTION_50_6();
      v67(v66, v64);

      break;
  }

  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C7037F78()
{
  result = qword_1EC2162C8;
  if (!qword_1EC2162C8)
  {
    result = swift_getWitnessTable(a5z, &type metadata for PersonalEventBackingItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2162C8);
  }

  return result;
}

unint64_t sub_1C7037FCC()
{
  result = qword_1EC2162D0;
  if (!qword_1EC2162D0)
  {
    result = swift_getWitnessTable(byte_1C7564734, &type metadata for PersonalEventBackingItem.DateRangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2162D0);
  }

  return result;
}

unint64_t sub_1C7038020()
{
  result = qword_1EC2162D8;
  if (!qword_1EC2162D8)
  {
    result = swift_getWitnessTable(byte_1C75646E4, &type metadata for PersonalEventBackingItem.DateCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2162D8);
  }

  return result;
}

unint64_t sub_1C7038074()
{
  result = qword_1EC2162E0;
  if (!qword_1EC2162E0)
  {
    result = swift_getWitnessTable(asc_1C7564694, &type metadata for PersonalEventBackingItem.MomentCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2162E0);
  }

  return result;
}

unint64_t sub_1C70380C8()
{
  result = qword_1EDD0CEF0;
  if (!qword_1EDD0CEF0)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC215BF0, &qword_1C755C2F0);
    v4[0] = MEMORY[0x1E69E6160];
    result = swift_getWitnessTable(MEMORY[0x1E69E64F0], v3, v4);
    atomic_store(result, &qword_1EDD0CEF0);
  }

  return result;
}

unint64_t sub_1C7038144()
{
  result = qword_1EC2162E8;
  if (!qword_1EC2162E8)
  {
    result = swift_getWitnessTable(aU_27, &type metadata for PersonalEventBackingItem.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2162E8);
  }

  return result;
}

void PersonalEventBackingItem.hash(into:)()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v5);
  type metadata accessor for PersonalEventBackingItem(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_8_11();
  v10 = OUTLINED_FUNCTION_82();
  sub_1C70420B4(v10, v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v27 = OUTLINED_FUNCTION_108_2();
      v28(v27);
      MEMORY[0x1CCA5E460](2);
      OUTLINED_FUNCTION_1_22();
      sub_1C7038430(v29);
      sub_1C755059C();
      v30 = OUTLINED_FUNCTION_295();
      v31(v30);
      break;
    case 2u:
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216298, &unk_1C7580760) + 48);
      v21 = *(v3 + 32);
      v22 = OUTLINED_FUNCTION_108_2();
      v21(v22);
      (v21)(v0, v9 + v20, v1);
      MEMORY[0x1CCA5E460](3);
      OUTLINED_FUNCTION_1_22();
      sub_1C7038430(v23);
      sub_1C755059C();
      sub_1C755059C();
      v24 = *(v3 + 8);
      v25 = OUTLINED_FUNCTION_41_3();
      v24(v25);
      v26 = OUTLINED_FUNCTION_295();
      v24(v26);
      break;
    case 3u:
      MEMORY[0x1CCA5E460](0);
      break;
    default:
      MEMORY[0x1CCA5E460](1);
      v12 = OUTLINED_FUNCTION_0_11();
      sub_1C7041DF0(v12, v13, v14, v15, v16, v17, v18, v19);

      break;
  }

  OUTLINED_FUNCTION_25_0();
}

unint64_t sub_1C7038430(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3(255);
    result = swift_getWitnessTable(v5, v6);
    atomic_store(result, v1);
  }

  return result;
}

void PersonalEventBackingItem.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_124();
  a25 = v30;
  a26 = v31;
  v136 = v26;
  v33 = v32;
  v131 = v34;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2162F8, &qword_1C7563B50);
  OUTLINED_FUNCTION_3_0();
  v126 = v35;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_36();
  v130 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216300, &qword_1C7563B58);
  OUTLINED_FUNCTION_3_0();
  v124 = v39;
  v125 = v38;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_36();
  v129 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216308, &qword_1C7563B60);
  OUTLINED_FUNCTION_3_0();
  v122 = v43;
  v123 = v42;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_36();
  v128 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216310, &qword_1C7563B68);
  OUTLINED_FUNCTION_3_0();
  v120 = v47;
  v121 = v46;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_36();
  v127 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216318, &unk_1C7563B70);
  OUTLINED_FUNCTION_3_0();
  v133 = v51;
  v134 = v50;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_148_2();
  v53 = type metadata accessor for PersonalEventBackingItem(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v115 - v56;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_101_2();
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v115 - v60;
  v135 = v33;
  v62 = OUTLINED_FUNCTION_82();
  __swift_project_boxed_opaque_existential_1(v62, v63);
  sub_1C7037F78();
  v64 = v136;
  sub_1C7551FFC();
  if (v64)
  {
    goto LABEL_8;
  }

  v116 = v29;
  v117 = v57;
  v118 = v28;
  v119 = v61;
  v136 = v53;
  v65 = v134;
  v66 = v27;
  sub_1C7551C5C();
  sub_1C6FD80E0();
  if (v68 == v69 >> 1)
  {
LABEL_7:
    v81 = v133;
    sub_1C75518EC();
    swift_allocError();
    v83 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490, &qword_1C7560600);
    *v83 = v136;
    sub_1C7551B5C();
    sub_1C75518DC();
    OUTLINED_FUNCTION_62_2();
    (*(v84 + 104))(v83);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v81 + 8))(v66, v65);
LABEL_8:
    v85 = v135;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v85);
    OUTLINED_FUNCTION_125();
    return;
  }

  v115 = 0;
  if (v68 < (v69 >> 1))
  {
    v70 = *(v67 + v68);
    sub_1C6FD80C8();
    v72 = v71;
    v74 = v73;
    swift_unknownObjectRelease();
    v75 = v132;
    if (v72 == v74 >> 1)
    {
      v76 = v131;
      switch(v70)
      {
        case 1:
          a12 = 1;
          sub_1C7038074();
          OUTLINED_FUNCTION_95_4(&type metadata for PersonalEventBackingItem.MomentCodingKeys, &a12);
          v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
          v97 = sub_1C7042018();
          OUTLINED_FUNCTION_166_1(v96, v98, v99, v100, v97);
          swift_unknownObjectRelease();
          v107 = OUTLINED_FUNCTION_53_7();
          v108(v107);
          (*(v133 + 8))(v27, v65);
          v109 = v116;
          *v116 = v137;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_2_13();
          v105 = v109;
          goto LABEL_13;
        case 2:
          a13 = 2;
          sub_1C7038020();
          OUTLINED_FUNCTION_95_4(&type metadata for PersonalEventBackingItem.DateCodingKeys, &a13);
          v128 = v27;
          v86 = sub_1C754DABC();
          OUTLINED_FUNCTION_1_22();
          v88 = sub_1C7038430(v87);
          v89 = v117;
          OUTLINED_FUNCTION_166_1(v86, v90, v91, v92, v88);
          swift_unknownObjectRelease();
          v101 = OUTLINED_FUNCTION_53_7();
          v102(v101);
          v103 = OUTLINED_FUNCTION_81_4();
          v104(v103, v65);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_2_13();
          v105 = v89;
          goto LABEL_13;
        case 3:
          a16 = 3;
          sub_1C7037FCC();
          OUTLINED_FUNCTION_95_4(&type metadata for PersonalEventBackingItem.DateRangeCodingKeys, &a16);
          v128 = v27;
          sub_1C754DABC();
          a15 = 0;
          OUTLINED_FUNCTION_1_22();
          v94 = sub_1C7038430(v93);
          v95 = v118;
          OUTLINED_FUNCTION_124_2(v94, &a15);
          v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216298, &unk_1C7580760);
          a14 = 1;
          OUTLINED_FUNCTION_124_2(v106, &a14);
          swift_unknownObjectRelease();
          v110 = OUTLINED_FUNCTION_54_6();
          v111(v110, v75);
          v112 = OUTLINED_FUNCTION_81_4();
          v113(v112, v65);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_2_13();
          v105 = v95;
LABEL_13:
          v80 = v119;
          sub_1C704210C(v105, v119);
          break;
        default:
          a11 = 0;
          sub_1C7038144();
          v77 = v127;
          OUTLINED_FUNCTION_95_4(&type metadata for PersonalEventBackingItem.NoneCodingKeys, &a11);
          swift_unknownObjectRelease();
          (*(v120 + 8))(v77, v121);
          v78 = OUTLINED_FUNCTION_54_6();
          v79(v78, v65);
          v80 = v119;
          OUTLINED_FUNCTION_111();
          swift_storeEnumTagMultiPayload();
          break;
      }

      v114 = v135;
      OUTLINED_FUNCTION_2_13();
      sub_1C704210C(v80, v76);
      v85 = v114;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C7038E34(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  __swift_allocate_value_buffer(TokenCategoryType, a2);
  *__swift_project_value_buffer(TokenCategoryType, a2) = a3;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C7038EC4()
{
  v0 = OUTLINED_FUNCTION_113_2();
  __swift_allocate_value_buffer(v0, qword_1EDD0E080);
  v1 = OUTLINED_FUNCTION_90();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0, &qword_1C7563B90);
  v3 = sub_1C754DABC();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
  OUTLINED_FUNCTION_66_2();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C7038FC4()
{
  v0 = OUTLINED_FUNCTION_113_2();
  __swift_allocate_value_buffer(v0, qword_1EDD0E040);
  v1 = OUTLINED_FUNCTION_90();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = MEMORY[0x1E69E7CD0];
  *v3 = MEMORY[0x1E69E7CC0];
  v3[1] = v4;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C703904C()
{
  v0 = OUTLINED_FUNCTION_113_2();
  __swift_allocate_value_buffer(v0, &qword_1EC216260);
  v1 = OUTLINED_FUNCTION_90();
  __swift_project_value_buffer(v1, v2);
  v3 = OUTLINED_FUNCTION_19_1();
  v4 = type metadata accessor for GroundedGenericLocation(v3);
  v5 = *(v4 + 20);
  v6 = *MEMORY[0x1E69C18A0];
  sub_1C754F4DC();
  OUTLINED_FUNCTION_12();
  (*(v7 + 104))(&qword_1EC216260 + v5, v6);
  qword_1EC216260 = 0;
  unk_1EC216268 = 0xE000000000000000;
  *(&qword_1EC216260 + *(v4 + 24)) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_66_2();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C7039138()
{
  v0 = OUTLINED_FUNCTION_113_2();
  __swift_allocate_value_buffer(v0, qword_1EDD0E0D0);
  v1 = OUTLINED_FUNCTION_90();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_19_1();
  sub_1C754F14C();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_66_2();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C70391C4()
{
  v0 = OUTLINED_FUNCTION_113_2();
  __swift_allocate_value_buffer(v0, qword_1EDD0E0A8);
  v1 = OUTLINED_FUNCTION_90();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730);
  sub_1C754F24C();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  type metadata accessor for PersonalEventBackingItem(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66_2();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C703933C()
{
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  __swift_allocate_value_buffer(TokenCategoryType, qword_1EC216278);
  *__swift_project_value_buffer(TokenCategoryType, qword_1EC216278) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C70393C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  __swift_project_value_buffer(TokenCategoryType, a2);
  OUTLINED_FUNCTION_0_20();
  return sub_1C70420B4(v7, a4);
}

void QueryTokenCategoryType.description.getter()
{
  OUTLINED_FUNCTION_33();
  type metadata accessor for PersonalEventBackingItem(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_14();
  v174 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216320, &unk_1C7563B80);
  v6 = OUTLINED_FUNCTION_76(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_2();
  v177 = v7;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_140_1();
  v178 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328, &qword_1C7575BE0);
  v11 = OUTLINED_FUNCTION_76(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_2();
  v175 = v12;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_140_1();
  v176 = v14;
  v15 = OUTLINED_FUNCTION_37_3();
  v16 = type metadata accessor for GroundedGenericLocation(v15);
  v17 = OUTLINED_FUNCTION_76(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_10_14();
  v173 = v18;
  OUTLINED_FUNCTION_37_3();
  sub_1C754F5FC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_37_3();
  v172 = sub_1C754F09C();
  OUTLINED_FUNCTION_3_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14_0();
  v25 = v24 - v23;
  sub_1C754F65C();
  OUTLINED_FUNCTION_3_0();
  v181 = v26;
  v182 = v27;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14_0();
  v30 = v29 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_512();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_102_4();
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_14_0();
  v37 = (v36 - v35);
  OUTLINED_FUNCTION_0_20();
  sub_1C70420B4(v0, v37);
  OUTLINED_FUNCTION_90();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v97 = *v37;
      OUTLINED_FUNCTION_107_2();
      sub_1C755180C();

      strcpy(&v184, "personAgeType(");
      HIBYTE(v184) = -18;
      v98 = *(v97 + 16);
      if (!v98)
      {
        goto LABEL_48;
      }

      v99 = OUTLINED_FUNCTION_104_2(MEMORY[0x1E69E7CC0]);
      sub_1C6F7ED9C(v99, v98, 0, v100, v101, v102, v103);
      v104 = 32;
      v50 = v183;
      OUTLINED_FUNCTION_152_0();
      do
      {
        v113 = 0xE400000000000000;
        v114 = 2036490562;
        switch(*(v97 + v104))
        {
          case 1:
            break;
          case 2:
            v113 = 0xE500000000000000;
            v114 = v111;
            break;
          case 3:
            v114 = v112;
            v113 = v109;
            break;
          case 4:
            v113 = 0xE600000000000000;
            v114 = 0x726F696E6553;
            break;
          case 5:
            v113 = 0xE500000000000000;
            v114 = 0x746C756441;
            break;
          default:
            v113 = 0xE600000000000000;
            v114 = v110;
            break;
        }

        v116 = *(v183 + 16);
        v115 = *(v183 + 24);
        if (v116 >= v115 >> 1)
        {
          sub_1C6F7ED9C(v115 > 1, v116 + 1, 1, v105, v106, v107, v108);
          OUTLINED_FUNCTION_152_0();
          v111 = 0x646C696843;
          v110 = 0x746553746F4ELL;
          v109 = 0xEB00000000746C75;
        }

        *(v183 + 16) = v116 + 1;
        v117 = v183 + 16 * v116;
        *(v117 + 32) = v114;
        *(v117 + 40) = v113;
        v104 += 2;
        --v98;
      }

      while (v98);
      goto LABEL_37;
    case 2u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0, &qword_1C7563B90);
      OUTLINED_FUNCTION_141_3();
      sub_1C7042768(v118, v119, v120, v121);
      OUTLINED_FUNCTION_141_3();
      sub_1C7042768(v122, v123, v124, v125);
      OUTLINED_FUNCTION_107_2();
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000019, 0x80000001C759A3A0);
      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_141_3();
      sub_1C70424A0(v126, v127, v128, v129);
      v130 = sub_1C75506EC();
      MEMORY[0x1CCA5CD70](v130);

      MEMORY[0x1CCA5CD70](0xD000000000000015, 0x80000001C759A3C0);
      OUTLINED_FUNCTION_141_3();
      sub_1C70424A0(v131, v132, v133, v134);
      v135 = sub_1C75506EC();
      MEMORY[0x1CCA5CD70](v135);

      v136 = OUTLINED_FUNCTION_86_4();
      MEMORY[0x1CCA5CD70](v136);
      sub_1C6FD7FC8(v1, &qword_1EC218C50, &qword_1C75606A0);
      v137 = v2;
      v138 = &qword_1EC218C50;
      v139 = &qword_1C75606A0;
      goto LABEL_53;
    case 3u:
      v63 = *v37;
      OUTLINED_FUNCTION_14_3();
      *&v184 = v65;
      *(&v184 + 1) = v64;
      v66 = *(v63 + 16);
      if (v66)
      {
        v67 = OUTLINED_FUNCTION_104_2(MEMORY[0x1E69E7CC0]);
        sub_1C6F7ED9C(v67, v66, 0, v68, v69, v70, v71);
        v72 = v183;
        OUTLINED_FUNCTION_191();
        v74 = v63 + v73;
        v179 = *(v182 + 72);
        v180 = v75;
        do
        {
          v180(v30, v74, v181);
          v76 = sub_1C754F64C();
          v78 = v77;
          (*(v182 + 8))(v30, v181);
          v84 = *(v183 + 16);
          v83 = *(v183 + 24);
          if (v84 >= v83 >> 1)
          {
            sub_1C6F7ED9C(v83 > 1, v84 + 1, 1, v79, v80, v81, v82);
          }

          *(v183 + 16) = v84 + 1;
          v85 = v183 + 16 * v84;
          *(v85 + 32) = v76;
          *(v85 + 40) = v78;
          v74 += v179;
          --v66;
        }

        while (v66);
      }

      else
      {

        v72 = MEMORY[0x1E69E7CC0];
      }

      v159 = MEMORY[0x1CCA5D090](v72, MEMORY[0x1E69E6158]);
      v161 = v171;
      goto LABEL_56;
    case 4u:
      (*(v21 + 32))(v25, v37, v172);
      OUTLINED_FUNCTION_14_3();
      *&v184 = v145 | 1;
      *(&v184 + 1) = v144;
      sub_1C754F08C();
      OUTLINED_FUNCTION_168_0();

      v146 = OUTLINED_FUNCTION_86_4();
      MEMORY[0x1CCA5CD70](v146);
      (*(v21 + 8))(v25, v172);
      goto LABEL_64;
    case 5u:
      OUTLINED_FUNCTION_114_2();
      v148 = OUTLINED_FUNCTION_41_3();
      v149(v148);
      sub_1C754F5EC();
      OUTLINED_FUNCTION_168_0();

      v150 = OUTLINED_FUNCTION_86_4();
      MEMORY[0x1CCA5CD70](v150);
      v151 = OUTLINED_FUNCTION_154();
      v152(v151);
      goto LABEL_64;
    case 6u:
      v140 = *v37;
      *&v184 = 0x6E6F697461636F6CLL;
      *(&v184 + 1) = 0xEA00000000002028;
      MEMORY[0x1CCA5D090](v140, &type metadata for GroundedLocation);

      v141 = OUTLINED_FUNCTION_64();
      MEMORY[0x1CCA5CD70](v141);

      MEMORY[0x1CCA5CD70](0x206874697720, 0xE600000000000000);

      sub_1C7551D8C();
      OUTLINED_FUNCTION_168_0();

      v142 = 0x80000001C759A340;
      v143 = 0xD000000000000016;
      goto LABEL_63;
    case 7u:
      OUTLINED_FUNCTION_12_15();
      sub_1C704210C(v37, v173);
      OUTLINED_FUNCTION_14_3();
      *&v184 = v156 - 6;
      *(&v184 + 1) = v155;
      GroundedGenericLocation.description.getter();
      OUTLINED_FUNCTION_168_0();

      v157 = OUTLINED_FUNCTION_86_4();
      MEMORY[0x1CCA5CD70](v157);
      OUTLINED_FUNCTION_7_10();
      sub_1C7042164(v173, v158);
      goto LABEL_64;
    case 8u:
      v90 = v176;
      sub_1C7042768(v37, v176, &qword_1EC216328, &qword_1C7575BE0);
      OUTLINED_FUNCTION_14_3();
      *&v184 = v92 + 4;
      *(&v184 + 1) = v91;
      sub_1C70424A0(v176, v175, &qword_1EC216328, &qword_1C7575BE0);
      v93 = sub_1C754F14C();
      v94 = OUTLINED_FUNCTION_116_2();
      OUTLINED_FUNCTION_80_4(v94, v95, v93);
      if (v96)
      {
        sub_1C6FD7FC8(v175, &qword_1EC216328, &qword_1C7575BE0);
      }

      else
      {
        sub_1C754F13C();
        OUTLINED_FUNCTION_62_2();
        v162 = OUTLINED_FUNCTION_35_0();
        v163(v162);
      }

      v164 = OUTLINED_FUNCTION_0_11();
      MEMORY[0x1CCA5CD70](v164);

      v165 = OUTLINED_FUNCTION_86_4();
      MEMORY[0x1CCA5CD70](v165);
      v138 = &qword_1EC216328;
      v139 = &qword_1C7575BE0;
      goto LABEL_52;
    case 9u:
      v153 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730) + 48);
      v90 = v178;
      sub_1C7042768(v37, v178, &qword_1EC216320, &unk_1C7563B80);
      OUTLINED_FUNCTION_2_13();
      sub_1C704210C(&v37[v153], v174);
      OUTLINED_FUNCTION_107_2();
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD00000000000001CLL, 0x80000001C759A2E0);
      sub_1C70424A0(v178, v177, &qword_1EC216320, &unk_1C7563B80);
      v154 = sub_1C754F24C();
      OUTLINED_FUNCTION_80_4(v177, 1, v154);
      if (v96)
      {
        sub_1C6FD7FC8(v177, &qword_1EC216320, &unk_1C7563B80);
      }

      else
      {
        sub_1C754F23C();
        OUTLINED_FUNCTION_62_2();
        v166 = OUTLINED_FUNCTION_111();
        v167(v166);
      }

      v168 = OUTLINED_FUNCTION_0_11();
      MEMORY[0x1CCA5CD70](v168);

      MEMORY[0x1CCA5CD70](0x6E696B636162202CLL, 0xEB00000000203A67);
      sub_1C75519EC();
      v169 = OUTLINED_FUNCTION_86_4();
      MEMORY[0x1CCA5CD70](v169);
      OUTLINED_FUNCTION_3_15();
      sub_1C7042164(v174, v170);
      v138 = &qword_1EC216320;
      v139 = &unk_1C7563B80;
LABEL_52:
      v137 = v90;
LABEL_53:
      sub_1C6FD7FC8(v137, v138, v139);
      goto LABEL_64;
    case 0xAu:
      *&v184 = 0x28646F6F6DLL;
      *(&v184 + 1) = 0xE500000000000000;
      v43 = *(*v37 + 16);
      if (v43)
      {
        v44 = OUTLINED_FUNCTION_104_2(MEMORY[0x1E69E7CC0]);
        sub_1C6F7ED9C(v44, v43, 0, v45, v46, v47, v48);
        v49 = 32;
        v50 = v183;
        do
        {
          v51 = PHStringForMemoryMood();
          if (v51)
          {
            v56 = v51;
            v57 = sub_1C755068C();
            v59 = v58;
          }

          else
          {
            v59 = 0xE400000000000000;
            v57 = 1701736302;
          }

          v61 = *(v183 + 16);
          v60 = *(v183 + 24);
          if (v61 >= v60 >> 1)
          {
            sub_1C6F7ED9C(v60 > 1, v61 + 1, 1, v52, v53, v54, v55);
          }

          *(v183 + 16) = v61 + 1;
          v62 = v183 + 16 * v61;
          *(v62 + 32) = v57;
          *(v62 + 40) = v59;
          v49 += 8;
          --v43;
        }

        while (v43);
LABEL_37:
      }

      else
      {
LABEL_48:

        v50 = MEMORY[0x1E69E7CC0];
      }

      v159 = MEMORY[0x1CCA5D090](v50, MEMORY[0x1E69E6158]);
      v161 = v160;
LABEL_56:

      MEMORY[0x1CCA5CD70](v159, v161);
      goto LABEL_62;
    case 0xBu:
      *&v184 = 0x6E6F697461727564;
      *(&v184 + 1) = 0xE900000000000028;
      v86 = PHStringForMemoryCurationLength();
      if (v86)
      {
        v87 = v86;
        v88 = sub_1C755068C();
        v41 = v89;
      }

      else
      {
        v88 = 1701736302;
        v41 = 0xE400000000000000;
      }

      v42 = v88;
      goto LABEL_61;
    case 0xCu:
      v38 = *v37;
      v39 = 0x706972547369;
      goto LABEL_42;
    case 0xDu:
      v40 = *v37;
      *&v184 = 0x6564724F74726F73;
      *(&v184 + 1) = 0xEA00000000002872;
      if (*v37)
      {
        if (v40 == 1)
        {
          v41 = 0xE500000000000000;
          v42 = 0x7473726966;
        }

        else
        {
          v41 = 0xE400000000000000;
          v42 = 1953718636;
        }
      }

      else
      {
        v42 = 1701736302;
        v41 = 0xE400000000000000;
      }

LABEL_61:
      MEMORY[0x1CCA5CD70](v42, v41);
      goto LABEL_62;
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
      goto LABEL_64;
    default:
      v38 = *v37;
      v39 = 0x6E6F73726570;
LABEL_42:
      *&v184 = v39 & 0xFFFFFFFFFFFFLL | 0x28000000000000;
      *(&v184 + 1) = 0xE700000000000000;
      MEMORY[0x1CCA5D090](v38, MEMORY[0x1E69E6158]);

      v147 = OUTLINED_FUNCTION_64();
      MEMORY[0x1CCA5CD70](v147);
LABEL_62:

      v143 = OUTLINED_FUNCTION_86_4();
LABEL_63:
      MEMORY[0x1CCA5CD70](v143, v142);
LABEL_64:
      OUTLINED_FUNCTION_25_0();
      return;
  }
}

uint64_t QueryTokenCategoryType.string.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_0_20();
  sub_1C70420B4(v2, v7);
  OUTLINED_FUNCTION_111();
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      result = sub_1C7042164(v7, type metadata accessor for QueryTokenCategoryType);
      v9 = 2;
      goto LABEL_21;
    case 2:
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0, &qword_1C7563B90) + 48);
      *a1 = 3;
      sub_1C6FD7FC8(v7 + v14, &qword_1EC218C50, &qword_1C75606A0);
      v15 = OUTLINED_FUNCTION_66_2();
      v13 = &qword_1C75606A0;
      return sub_1C6FD7FC8(v15, v12, v13);
    case 3:
      result = sub_1C7042164(v7, type metadata accessor for QueryTokenCategoryType);
      v9 = 4;
      goto LABEL_21;
    case 4:
      *a1 = 5;
      sub_1C754F09C();
      goto LABEL_16;
    case 5:
      *a1 = 6;
      sub_1C754F5FC();
LABEL_16:
      OUTLINED_FUNCTION_12();
      return (*(v17 + 8))(v7);
    case 6:
      result = sub_1C7042164(v7, type metadata accessor for QueryTokenCategoryType);
      v9 = 7;
      goto LABEL_21;
    case 7:
      *a1 = 8;
      OUTLINED_FUNCTION_7_10();
      return sub_1C7042164(v7, v16);
    case 8:
      *a1 = 10;
      v12 = &qword_1EC216328;
      v13 = &qword_1C7575BE0;
      goto LABEL_24;
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730);
      *a1 = 11;
      OUTLINED_FUNCTION_3_15();
      sub_1C7042164(v7 + v10, v11);
      v12 = &qword_1EC216320;
      v13 = &unk_1C7563B80;
LABEL_24:
      v15 = v7;
      return sub_1C6FD7FC8(v15, v12, v13);
    case 10:
      result = sub_1C7042164(v7, type metadata accessor for QueryTokenCategoryType);
      v9 = 15;
      goto LABEL_21;
    case 11:
      v9 = 16;
      goto LABEL_21;
    case 12:
      result = sub_1C7042164(v7, type metadata accessor for QueryTokenCategoryType);
      v9 = 17;
      goto LABEL_21;
    case 13:
      v9 = 19;
      goto LABEL_21;
    case 14:
      v9 = 9;
      goto LABEL_21;
    case 15:
      v9 = 12;
      goto LABEL_21;
    case 16:
      v9 = 13;
      goto LABEL_21;
    case 17:
      v9 = 14;
      goto LABEL_21;
    case 18:
      v9 = 18;
      goto LABEL_21;
    default:
      result = sub_1C7042164(v7, type metadata accessor for QueryTokenCategoryType);
      v9 = 1;
LABEL_21:
      *a1 = v9;
      return result;
  }
}

void QueryTokenCategoryType.hash(into:)()
{
  OUTLINED_FUNCTION_33();
  v147 = v3;
  v146 = sub_1C754F24C();
  OUTLINED_FUNCTION_3_0();
  v135 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10_14();
  v134 = v6;
  v7 = OUTLINED_FUNCTION_37_3();
  v8 = type metadata accessor for PersonalEventBackingItem(v7);
  v9 = OUTLINED_FUNCTION_76(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_14();
  v145 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216320, &unk_1C7563B80);
  v12 = OUTLINED_FUNCTION_76(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_2();
  v143 = v13;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_140_1();
  v144 = v15;
  OUTLINED_FUNCTION_37_3();
  v142 = sub_1C754F14C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_10_14();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328, &qword_1C7575BE0);
  v18 = OUTLINED_FUNCTION_76(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_140_1();
  v141 = v20;
  v21 = OUTLINED_FUNCTION_37_3();
  type metadata accessor for GroundedGenericLocation(v21);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_10_14();
  v137 = v23;
  OUTLINED_FUNCTION_37_3();
  v24 = sub_1C754F5FC();
  OUTLINED_FUNCTION_3_0();
  v136 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14_0();
  v29 = v28 - v27;
  sub_1C754F09C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_0();
  sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v139 = v32;
  v140 = v31;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_10_14();
  v138 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  v35 = OUTLINED_FUNCTION_76(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_101_2();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_512();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_140_1();
  v39 = OUTLINED_FUNCTION_37_3();
  type metadata accessor for QueryTokenCategoryType(v39);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_14_0();
  v43 = (v42 - v41);
  OUTLINED_FUNCTION_0_20();
  sub_1C70420B4(v0, v43);
  OUTLINED_FUNCTION_455();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v70 = OUTLINED_FUNCTION_105_3();
      sub_1C7041C34(v70, v71);
      goto LABEL_42;
    case 2u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0, &qword_1C7563B90);
      OUTLINED_FUNCTION_45_7();
      sub_1C7042768(v72, v73, v74, v75);
      OUTLINED_FUNCTION_45_7();
      sub_1C7042768(v76, v77, v78, v79);
      OUTLINED_FUNCTION_45_7();
      sub_1C70424A0(v80, v81, v82, v83);
      OUTLINED_FUNCTION_80_4(v1, 1, v140);
      if (v69)
      {
        OUTLINED_FUNCTION_170_0(0);
      }

      else
      {
        v117 = OUTLINED_FUNCTION_35_0();
        v118(v117);
        OUTLINED_FUNCTION_170_0(1);
        OUTLINED_FUNCTION_1_22();
        sub_1C7038430(v119);
        OUTLINED_FUNCTION_115_2();
        sub_1C755059C();
        (*(v139 + 8))(v138, v140);
      }

      v120 = OUTLINED_FUNCTION_157_0();
      sub_1C70424A0(v120, v121, v122, v123);
      OUTLINED_FUNCTION_80_4(v2, 1, v140);
      if (v69)
      {
        OUTLINED_FUNCTION_169_0();
      }

      else
      {
        OUTLINED_FUNCTION_114_2();
        v124(v138, v2, v140);
        OUTLINED_FUNCTION_167_0();
        OUTLINED_FUNCTION_1_22();
        sub_1C7038430(v125);
        OUTLINED_FUNCTION_115_2();
        sub_1C755059C();
        v126 = OUTLINED_FUNCTION_154();
        v127(v126);
      }

      OUTLINED_FUNCTION_35();
      sub_1C6FD7FC8(v128, v129, v130);
      OUTLINED_FUNCTION_35();
      goto LABEL_36;
    case 3u:
      v55 = OUTLINED_FUNCTION_105_3();
      sub_1C7041B38(v55, v56);
      goto LABEL_42;
    case 4u:
      v93 = OUTLINED_FUNCTION_57_3();
      v94(v93);
      OUTLINED_FUNCTION_22_11();
      sub_1C7038430(v95);
      sub_1C755059C();
      v96 = OUTLINED_FUNCTION_66_2();
      v97(v96);
      goto LABEL_43;
    case 5u:
      (*(v136 + 32))(v29, v43, v24);
      OUTLINED_FUNCTION_21_12();
      sub_1C7038430(v98);
      sub_1C755059C();
      (*(v136 + 8))(v29, v24);
      goto LABEL_43;
    case 6u:
      v84 = v43[1];
      v85 = OUTLINED_FUNCTION_0_11();
      sub_1C70419CC(v85, v86);

      sub_1C7041DF0(v147, v84, v87, v88, v89, v90, v91, v92);
      goto LABEL_42;
    case 7u:
      OUTLINED_FUNCTION_12_15();
      sub_1C704210C(v43, v137);
      sub_1C75505AC();
      sub_1C754F4DC();
      sub_1C7038430(&unk_1EC216340);
      OUTLINED_FUNCTION_0_11();
      sub_1C755059C();
      sub_1C70418D0();
      OUTLINED_FUNCTION_7_10();
      sub_1C7042164(v137, v108);
      goto LABEL_43;
    case 8u:
      OUTLINED_FUNCTION_45_7();
      sub_1C7042768(v59, v60, v61, v62);
      OUTLINED_FUNCTION_45_7();
      sub_1C70424A0(v63, v64, v65, v66);
      v67 = OUTLINED_FUNCTION_116_2();
      OUTLINED_FUNCTION_80_4(v67, v68, v142);
      if (v69)
      {
        sub_1C7551F5C();
      }

      else
      {
        v109 = OUTLINED_FUNCTION_108_2();
        v110(v109);
        sub_1C7551F5C();
        OUTLINED_FUNCTION_20_15();
        sub_1C7038430(v111);
        sub_1C755059C();
        v112 = OUTLINED_FUNCTION_295();
        v113(v112);
      }

      v114 = &qword_1EC216328;
      v115 = &qword_1C7575BE0;
      v116 = v141;
      goto LABEL_36;
    case 9u:
      v99 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730) + 48);
      OUTLINED_FUNCTION_45_7();
      sub_1C7042768(v100, v101, v102, v103);
      OUTLINED_FUNCTION_2_13();
      sub_1C704210C(v43 + v99, v145);
      OUTLINED_FUNCTION_45_7();
      sub_1C70424A0(v104, v105, v106, v107);
      OUTLINED_FUNCTION_80_4(v143, 1, v146);
      if (v69)
      {
        OUTLINED_FUNCTION_170_0(0);
      }

      else
      {
        OUTLINED_FUNCTION_114_2();
        v131(v134, v143, v146);
        OUTLINED_FUNCTION_170_0(1);
        OUTLINED_FUNCTION_19_13();
        sub_1C7038430(v132);
        OUTLINED_FUNCTION_115_2();
        sub_1C755059C();
        (*(v135 + 8))(v134, v146);
      }

      PersonalEventBackingItem.hash(into:)();
      OUTLINED_FUNCTION_3_15();
      sub_1C7042164(v145, v133);
      v114 = &qword_1EC216320;
      v115 = &unk_1C7563B80;
      v116 = v144;
LABEL_36:
      sub_1C6FD7FC8(v116, v114, v115);
      goto LABEL_43;
    case 0xAu:
      v44 = *(*v43 + 16);
      if (v44)
      {
        v148 = MEMORY[0x1E69E7CC0];
        sub_1C716C9F0(0, v44, 0);
        v45 = 32;
        v46 = v148;
        do
        {
          v47 = PHStringForMemoryMood();
          if (v47)
          {
            v48 = v47;
            v49 = sub_1C755068C();
            v51 = v50;
          }

          else
          {
            v49 = 0;
            v51 = 0;
          }

          v53 = *(v148 + 16);
          v52 = *(v148 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_1C716C9F0(v52 > 1, v53 + 1, 1);
          }

          *(v148 + 16) = v53 + 1;
          v54 = v148 + 16 * v53;
          *(v54 + 32) = v49;
          *(v54 + 40) = v51;
          v45 += 8;
          --v44;
        }

        while (v44);
      }

      else
      {

        v46 = MEMORY[0x1E69E7CC0];
      }

      sub_1C7041934(v147, v46);
      goto LABEL_42;
    case 0xBu:
      v57 = PHStringForMemoryCurationLength();
      if (v57)
      {
        v58 = v57;
        sub_1C755068C();

        sub_1C7551F5C();
        OUTLINED_FUNCTION_43_2();
        sub_1C75505AC();
LABEL_42:
      }

      else
      {
        sub_1C7551F5C();
      }

LABEL_43:
      OUTLINED_FUNCTION_25_0();
      return;
    case 0xDu:
      sub_1C75505AC();
      goto LABEL_42;
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
      sub_1C75505AC();
      goto LABEL_43;
    default:
      OUTLINED_FUNCTION_105_3();
      sub_1C70418D0();
      goto LABEL_42;
  }
}

void static QueryTokenCategoryType.~= infix(_:_:)()
{
  OUTLINED_FUNCTION_33();
  v6 = OUTLINED_FUNCTION_19_1();
  type metadata accessor for QueryTokenCategoryType(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_2();
  v67 = v8;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_137_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_74_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_102_4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216368, &unk_1C7563BB0);
  OUTLINED_FUNCTION_76(v14);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v66 - v16;
  v19 = &v66 + *(v18 + 56) - v16;
  v20 = v0;
  v21 = v19;
  sub_1C70420B4(v20, v17);
  v22 = OUTLINED_FUNCTION_294();
  sub_1C70420B4(v22, v23);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_43_2();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_38;
      }

      goto LABEL_53;
    case 2u:
      OUTLINED_FUNCTION_0_20();
      sub_1C70420B4(v17, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0, &qword_1C7563B90);
      OUTLINED_FUNCTION_43_2();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_35();
        sub_1C6FD7FC8(v35, v36, v37);
        OUTLINED_FUNCTION_35();
        sub_1C6FD7FC8(v38, v39, v40);
        OUTLINED_FUNCTION_35();
        sub_1C6FD7FC8(v41, v42, v43);
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_35();
      sub_1C6FD7FC8(v62, v63, v64);
      OUTLINED_FUNCTION_35();
      goto LABEL_52;
    case 3u:
      OUTLINED_FUNCTION_43_2();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_53;
      }

      goto LABEL_38;
    case 4u:
      OUTLINED_FUNCTION_0_20();
      sub_1C70420B4(v17, v5);
      OUTLINED_FUNCTION_43_2();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v25 = sub_1C754F09C();
      OUTLINED_FUNCTION_12();
      v28 = *(v27 + 8);
      if (EnumCaseMultiPayload == 4)
      {
        v28(v26, v25);
        v29 = v5;
        goto LABEL_30;
      }

      v57 = v5;
      goto LABEL_50;
    case 5u:
      OUTLINED_FUNCTION_0_20();
      sub_1C70420B4(v17, v4);
      OUTLINED_FUNCTION_43_2();
      v48 = swift_getEnumCaseMultiPayload();
      v25 = sub_1C754F5FC();
      OUTLINED_FUNCTION_12();
      v28 = *(v50 + 8);
      if (v48 == 5)
      {
        v28(v49, v25);
        v29 = v4;
LABEL_30:
        v28(v29, v25);
        goto LABEL_44;
      }

      v57 = v4;
LABEL_50:
      v28(v57, v25);
      goto LABEL_53;
    case 6u:
      OUTLINED_FUNCTION_43_2();
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_53;
      }

      goto LABEL_38;
    case 7u:
      OUTLINED_FUNCTION_0_20();
      v44 = OUTLINED_FUNCTION_87_4();
      sub_1C70420B4(v44, v45);
      OUTLINED_FUNCTION_43_2();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        OUTLINED_FUNCTION_7_10();
        sub_1C7042164(v3, v65);
        goto LABEL_53;
      }

      sub_1C7042164(v21, type metadata accessor for GroundedGenericLocation);
      v46 = v3;
      v47 = type metadata accessor for GroundedGenericLocation;
LABEL_39:
      sub_1C7042164(v46, v47);
      goto LABEL_44;
    case 8u:
      OUTLINED_FUNCTION_0_20();
      v51 = OUTLINED_FUNCTION_96_3();
      sub_1C70420B4(v51, v52);
      OUTLINED_FUNCTION_43_2();
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v59 = &qword_1EC216328;
        v60 = &qword_1C7575BE0;
        v61 = v1;
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_35();
      sub_1C6FD7FC8(v53, v54, v55);
LABEL_42:
      OUTLINED_FUNCTION_35();
      goto LABEL_43;
    case 9u:
      OUTLINED_FUNCTION_0_20();
      v30 = v67;
      sub_1C70420B4(v17, v67);
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730) + 48);
      OUTLINED_FUNCTION_43_2();
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        sub_1C7042164(v21 + v31, type metadata accessor for PersonalEventBackingItem);
        sub_1C6FD7FC8(v21, &qword_1EC216320, &unk_1C7563B80);
        sub_1C7042164(v30 + v31, type metadata accessor for PersonalEventBackingItem);
        v32 = OUTLINED_FUNCTION_294();
        v34 = &unk_1C7563B80;
LABEL_43:
        sub_1C6FD7FC8(v32, v33, v34);
LABEL_44:
        OUTLINED_FUNCTION_68_5();
        sub_1C7042164(v17, v56);
      }

      else
      {
        OUTLINED_FUNCTION_3_15();
        sub_1C7042164(v30 + v31, v58);
        v59 = &qword_1EC216320;
        v60 = &unk_1C7563B80;
        v61 = v30;
LABEL_52:
        sub_1C6FD7FC8(v61, v59, v60);
LABEL_53:
        sub_1C6FD7FC8(v17, &qword_1EC216368, &unk_1C7563BB0);
      }

      OUTLINED_FUNCTION_25_0();
      return;
    case 0xAu:
      OUTLINED_FUNCTION_43_2();
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_38;
      }

      goto LABEL_53;
    case 0xBu:
      OUTLINED_FUNCTION_43_2();
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_53;
      }

      goto LABEL_44;
    case 0xCu:
      OUTLINED_FUNCTION_43_2();
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_53;
      }

      goto LABEL_38;
    case 0xDu:
      OUTLINED_FUNCTION_43_2();
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_53;
      }

      goto LABEL_44;
    case 0xEu:
      OUTLINED_FUNCTION_43_2();
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_53;
      }

      goto LABEL_44;
    case 0xFu:
      OUTLINED_FUNCTION_43_2();
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_53;
      }

      goto LABEL_44;
    case 0x10u:
      OUTLINED_FUNCTION_43_2();
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_53;
      }

      goto LABEL_44;
    case 0x11u:
      OUTLINED_FUNCTION_43_2();
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_53;
      }

      goto LABEL_44;
    case 0x12u:
      OUTLINED_FUNCTION_43_2();
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_53;
      }

      goto LABEL_44;
    default:
      OUTLINED_FUNCTION_43_2();
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_53;
      }

LABEL_38:
      OUTLINED_FUNCTION_68_5();
      v46 = v21;
      goto LABEL_39;
  }
}

unint64_t sub_1C703B7AC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C7551DFC();

  if (v2 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C703B804(char a1)
{
  result = 0x79726F6765746163;
  switch(a1)
  {
    case 1:
      result = 0x55556E6F73726570;
      break;
    case 2:
      result = OUTLINED_FUNCTION_32_7();
      break;
    case 3:
      result = 0x7461447472617473;
      break;
    case 4:
      result = 0x65746144646E65;
      break;
    case 5:
      result = 0x44664F7374726170;
      break;
    case 6:
      result = 0x6557664F74726170;
      break;
    case 7:
      result = OUTLINED_FUNCTION_92_3();
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0x73646F6F6DLL;
      break;
    case 15:
      result = OUTLINED_FUNCTION_79_4(0x61727563u);
      break;
    case 16:
      result = 0x4449555570697274;
      break;
    case 17:
      result = 0x6564724F74726F73;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C703BA48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C703B7AC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C703BA78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C703B804(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C703BAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C703B800(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C703BAE0(uint64_t a1)
{
  v2 = sub_1C7042240();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C703BB1C(uint64_t a1)
{
  v2 = sub_1C7042240();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

PhotosIntelligence::QueryTokenSuggestion::CategoryType_optional __swiftcall QueryTokenSuggestion.CategoryType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551DFC();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t QueryTokenSuggestion.CategoryType.rawValue.getter()
{
  result = 0x6E6F73726570;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_32_7();
      break;
    case 2:
      result = OUTLINED_FUNCTION_127_3();
      break;
    case 3:
      result = OUTLINED_FUNCTION_60_3();
      break;
    case 4:
      result = OUTLINED_FUNCTION_61_5();
      break;
    case 5:
      result = OUTLINED_FUNCTION_92_3();
      break;
    case 6:
      result = OUTLINED_FUNCTION_79_4(0x61636F6Cu);
      break;
    case 7:
      result = OUTLINED_FUNCTION_56_8();
      break;
    case 8:
      result = OUTLINED_FUNCTION_129_2();
      break;
    case 9:
      result = OUTLINED_FUNCTION_59_3();
      break;
    case 0xA:
      result = OUTLINED_FUNCTION_58_6();
      break;
    case 0xB:
      result = OUTLINED_FUNCTION_70_5();
      break;
    case 0xC:
      result = OUTLINED_FUNCTION_57_4();
      break;
    case 0xD:
      result = OUTLINED_FUNCTION_62_7();
      break;
    case 0xE:
      result = OUTLINED_FUNCTION_128_3();
      break;
    case 0xF:
      result = OUTLINED_FUNCTION_79_4(0x61727564u);
      break;
    case 0x10:
      result = OUTLINED_FUNCTION_93_3();
      break;
    case 0x11:
      result = OUTLINED_FUNCTION_69_8();
      break;
    case 0x12:
      result = 0x6564724F74726F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C703BCB8@<X0>(uint64_t *a1@<X8>)
{
  result = QueryTokenSuggestion.CategoryType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1C703BE14()
{
  OUTLINED_FUNCTION_33();
  v365 = v5;
  v366 = v6;
  v333 = type metadata accessor for GroundedGenericLocation(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_119(v9);
  v346 = sub_1C754F24C();
  OUTLINED_FUNCTION_3_0();
  v330 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_108_0(v12);
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216358, &qword_1C7563B98);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_36();
  v15 = OUTLINED_FUNCTION_119(v14);
  v16 = type metadata accessor for PersonalEventBackingItem(v15);
  v17 = OUTLINED_FUNCTION_76(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_2();
  v347 = v18;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216320, &unk_1C7563B80);
  v22 = OUTLINED_FUNCTION_76(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_140_1();
  v351 = v25;
  OUTLINED_FUNCTION_37_3();
  v340 = sub_1C754F14C();
  OUTLINED_FUNCTION_3_0();
  v328 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_108_0(v28);
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216360, &unk_1C7563BA0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_108_0(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328, &qword_1C7575BE0);
  v32 = OUTLINED_FUNCTION_76(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_119(v35);
  sub_1C754F5FC();
  OUTLINED_FUNCTION_3_0();
  v363 = v37;
  v364 = v36;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_119(v39);
  sub_1C754F09C();
  OUTLINED_FUNCTION_3_0();
  v361 = v41;
  v362 = v40;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_119(v43);
  v341 = sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v331 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_108_0(v46);
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D50, &qword_1C75606A8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  v51 = OUTLINED_FUNCTION_76(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_130();
  v350 = v54;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_130();
  v348 = v56;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_130();
  v349 = v58;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_140_1();
  v61 = OUTLINED_FUNCTION_119(v60);
  type metadata accessor for QueryTokenCategoryType(v61);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_14_2();
  v359 = v63;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_130();
  v357 = v65;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_130();
  v358 = v67;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_130();
  v355 = v69;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_130();
  v356 = v71;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_24_12();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_130();
  v354 = v74;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_101_2();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_74_2();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_512();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_130();
  v353 = v80;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v322 - v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216368, &unk_1C7563BB0);
  OUTLINED_FUNCTION_76(v85);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v322 - v87;
  v90 = (&v322 + *(v89 + 56) - v87);
  sub_1C70420B4(v365, &v322 - v87);
  v91 = v366;
  v366 = v90;
  sub_1C70420B4(v91, v90);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1C70420B4(v88, v2);
      OUTLINED_FUNCTION_82();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_67;
      }

      v166 = OUTLINED_FUNCTION_90();
      sub_1C700377C(v166, v167);
      goto LABEL_54;
    case 2u:
      v127 = v353;
      sub_1C70420B4(v88, v353);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0, &qword_1C7563B90);
      if (OUTLINED_FUNCTION_165_0() != 2)
      {
        sub_1C6FD7FC8(v127 + v0, &qword_1EC218C50, &qword_1C75606A0);
        v215 = OUTLINED_FUNCTION_66_2();
        v214 = &qword_1C75606A0;
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_119_2();
      sub_1C7042768(v128, v129, v130, v131);
      v132 = v349;
      OUTLINED_FUNCTION_119_2();
      sub_1C7042768(v133, v134, v135, v136);
      OUTLINED_FUNCTION_119_2();
      sub_1C7042768(v137, v138, v139, v140);
      OUTLINED_FUNCTION_119_2();
      sub_1C7042768(v141, v142, v143, v144);
      v145 = *(v352 + 48);
      v146 = v336;
      OUTLINED_FUNCTION_119_2();
      sub_1C70424A0(v147, v148, v149, v150);
      v151 = v146;
      sub_1C70424A0(v132, v146 + v145, &qword_1EC218C50, &qword_1C75606A0);
      v152 = v146;
      v153 = v341;
      OUTLINED_FUNCTION_80_4(v152, 1, v341);
      if (v164)
      {
        OUTLINED_FUNCTION_48_1(v151 + v145);
        v154 = v332;
        if (!v164)
        {
          goto LABEL_79;
        }

        sub_1C6FD7FC8(v151, &qword_1EC218C50, &qword_1C75606A0);
      }

      else
      {
        sub_1C70424A0(v151, v326, &qword_1EC218C50, &qword_1C75606A0);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v151 + v145, 1, v153);
        if (EnumTagSinglePayload == 1)
        {
          v221 = OUTLINED_FUNCTION_117_0();
          v222(v221);
LABEL_79:
          sub_1C6FD7FC8(v151, &qword_1EC215D50, &qword_1C75606A8);
LABEL_80:
          OUTLINED_FUNCTION_35();
          sub_1C6FD7FC8(v223, v224, v225);
          OUTLINED_FUNCTION_35();
          sub_1C6FD7FC8(v226, v227, v228);
          OUTLINED_FUNCTION_35();
          sub_1C6FD7FC8(v229, v230, v231);
          OUTLINED_FUNCTION_35();
          goto LABEL_101;
        }

        v251 = v331;
        v252 = v325;
        (*(v331 + 32))(v325, v151 + v145, v153);
        OUTLINED_FUNCTION_1_22();
        sub_1C7038430(v253);
        OUTLINED_FUNCTION_35_0();
        LODWORD(v366) = sub_1C755063C();
        v254 = *(v251 + 8);
        v254(v252, v153);
        v255 = OUTLINED_FUNCTION_117_0();
        (v254)(v255);
        sub_1C6FD7FC8(v151, &qword_1EC218C50, &qword_1C75606A0);
        v154 = v332;
        if ((v366 & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      v256 = *(v352 + 48);
      OUTLINED_FUNCTION_45_7();
      sub_1C70424A0(v257, v258, v259, v260);
      OUTLINED_FUNCTION_45_7();
      sub_1C70424A0(v261, v262, v263, v264);
      OUTLINED_FUNCTION_48_1(v154);
      if (v164)
      {
        OUTLINED_FUNCTION_35();
        sub_1C6FD7FC8(v265, v266, v267);
        OUTLINED_FUNCTION_35();
        sub_1C6FD7FC8(v268, v269, v270);
        OUTLINED_FUNCTION_35();
        sub_1C6FD7FC8(v271, v272, v273);
        OUTLINED_FUNCTION_35();
        sub_1C6FD7FC8(v274, v275, v276);
        OUTLINED_FUNCTION_48_1(v154 + v256);
        if (v164)
        {
          v211 = &qword_1EC218C50;
          v212 = &qword_1C75606A0;
LABEL_95:
          sub_1C6FD7FC8(v154, v211, v212);
          goto LABEL_51;
        }

        goto LABEL_99;
      }

      v288 = v322;
      sub_1C70424A0(v154, v322, &qword_1EC218C50, &qword_1C75606A0);
      OUTLINED_FUNCTION_48_1(v154 + v256);
      if (v289)
      {
        OUTLINED_FUNCTION_35();
        sub_1C6FD7FC8(v290, v291, v292);
        OUTLINED_FUNCTION_35();
        sub_1C6FD7FC8(v293, v294, v295);
        OUTLINED_FUNCTION_35();
        sub_1C6FD7FC8(v296, v297, v298);
        OUTLINED_FUNCTION_35();
        sub_1C6FD7FC8(v299, v300, v301);
        (*(v331 + 8))(v288, v153);
LABEL_99:
        v233 = &qword_1EC215D50;
        v234 = &qword_1C75606A8;
LABEL_100:
        v232 = v154;
LABEL_101:
        sub_1C6FD7FC8(v232, v233, v234);
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_72_2();
      v302(v325, v154 + v256, v153);
      OUTLINED_FUNCTION_1_22();
      sub_1C7038430(v303);
      sub_1C755063C();
      v366 = *(v132 + 8);
      v304 = OUTLINED_FUNCTION_96_3();
      v305(v304);
      OUTLINED_FUNCTION_35();
      sub_1C6FD7FC8(v306, v307, v308);
      OUTLINED_FUNCTION_35();
      sub_1C6FD7FC8(v309, v310, v311);
      OUTLINED_FUNCTION_35();
      sub_1C6FD7FC8(v312, v313, v314);
      OUTLINED_FUNCTION_35();
      sub_1C6FD7FC8(v315, v316, v317);
      v318 = OUTLINED_FUNCTION_96_3();
      v366(v318);
LABEL_102:
      OUTLINED_FUNCTION_35();
      sub_1C6FD7FC8(v319, v320, v321);
LABEL_51:
      sub_1C7042164(v88, type metadata accessor for QueryTokenCategoryType);
LABEL_71:
      OUTLINED_FUNCTION_25_0();
      return;
    case 3u:
      sub_1C70420B4(v88, v0);
      OUTLINED_FUNCTION_82();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_67;
      }

      v155 = OUTLINED_FUNCTION_90();
      sub_1C7003734(v155, v156, v157);
      goto LABEL_54;
    case 4u:
      sub_1C70420B4(v88, v3);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v92 = v362;
        v93 = (v361 + 32);
        v94 = *(v361 + 32);
        v95 = v334;
        v94(v334, v3, v362);
        v96 = OUTLINED_FUNCTION_135_2(&v361);
        (v94)(v96);
        v97 = OUTLINED_FUNCTION_87_4();
        sub_1C6FA1028(v97, v98);
        v99 = OUTLINED_FUNCTION_156_0();
        v93(v99);
        v100 = v95;
        goto LABEL_44;
      }

      (*(v361 + 8))(v3, v362);
      goto LABEL_70;
    case 5u:
      v168 = OUTLINED_FUNCTION_157_0();
      sub_1C70420B4(v168, v169);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        (*(v363 + 8))(v4, v364);
        goto LABEL_70;
      }

      v92 = v364;
      v93 = (v363 + 32);
      v170 = *(v363 + 32);
      v171 = v335;
      v170(v335, v4, v364);
      v172 = OUTLINED_FUNCTION_135_2(&v363);
      (v170)(v172);
      sub_1C6FA13E8(v171, v2);
      v173 = OUTLINED_FUNCTION_156_0();
      v93(v173);
      v100 = v171;
LABEL_44:
      (v93)(v100, v92);
      goto LABEL_51;
    case 6u:
      v176 = OUTLINED_FUNCTION_94_3();
      sub_1C70420B4(v176, v177);
      OUTLINED_FUNCTION_82();
      if (swift_getEnumCaseMultiPayload() != 6)
      {

LABEL_67:

        goto LABEL_70;
      }

      OUTLINED_FUNCTION_64();
      sub_1C70037D4();
      v179 = v178;

      if (v179)
      {
        v180 = OUTLINED_FUNCTION_90();
        sub_1C7036A90(v180, v181);
      }

LABEL_54:

      goto LABEL_51;
    case 7u:
      v158 = v356;
      sub_1C70420B4(v88, v356);
      v159 = v366;
      OUTLINED_FUNCTION_82();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        sub_1C7042164(v158, type metadata accessor for GroundedGenericLocation);
        goto LABEL_70;
      }

      v160 = v158;
      v161 = v342;
      sub_1C704210C(v160, v342);
      v162 = v159;
      v163 = v343;
      sub_1C704210C(v162, v343);
      v164 = *v161 == *v163 && v161[1] == v163[1];
      if (v164 || (sub_1C7551DBC() & 1) != 0)
      {
        v165 = v333;
        if (sub_1C6FA1070(v161 + *(v333 + 20), v163 + *(v333 + 20)))
        {
          sub_1C70020D4(*(v161 + *(v165 + 24)), *(v163 + *(v165 + 24)));
        }
      }

      sub_1C7042164(v163, type metadata accessor for GroundedGenericLocation);
      v216 = OUTLINED_FUNCTION_0_11();
      sub_1C7042164(v216, v217);
      goto LABEL_51;
    case 8u:
      v184 = v354;
      sub_1C70420B4(v88, v354);
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v213 = &qword_1EC216328;
        v214 = &qword_1C7575BE0;
        v215 = v184;
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_45_7();
      sub_1C7042768(v185, v186, v187, v188);
      OUTLINED_FUNCTION_45_7();
      sub_1C7042768(v189, v190, v191, v192);
      v193 = *(v337 + 48);
      v154 = v339;
      OUTLINED_FUNCTION_45_7();
      sub_1C70424A0(v194, v195, v196, v197);
      OUTLINED_FUNCTION_45_7();
      sub_1C70424A0(v198, v199, v200, v201);
      v202 = OUTLINED_FUNCTION_116_2();
      v203 = v340;
      OUTLINED_FUNCTION_80_4(v202, v204, v340);
      if (v164)
      {
        OUTLINED_FUNCTION_35();
        sub_1C6FD7FC8(v205, v206, v207);
        OUTLINED_FUNCTION_35();
        sub_1C6FD7FC8(v208, v209, v210);
        OUTLINED_FUNCTION_48_1(v154 + v193);
        if (v164)
        {
          v211 = &qword_1EC216328;
          v212 = &qword_1C7575BE0;
          goto LABEL_95;
        }
      }

      else
      {
        sub_1C70424A0(v154, v327, &qword_1EC216328, &qword_1C7575BE0);
        OUTLINED_FUNCTION_48_1(v154 + v193);
        if (!v235)
        {
          OUTLINED_FUNCTION_72_2();
          v277 = v323;
          v278(v323, v154 + v193, v203);
          OUTLINED_FUNCTION_20_15();
          sub_1C7038430(v279);
          sub_1C755063C();
          v280 = *(v2 + 8);
          v280(v277, v203);
          v281 = OUTLINED_FUNCTION_66_2();
          sub_1C6FD7FC8(v281, v282, v283);
          OUTLINED_FUNCTION_35();
          sub_1C6FD7FC8(v284, v285, v286);
          v287 = OUTLINED_FUNCTION_82_3();
          (v280)(v287);
          goto LABEL_102;
        }

        OUTLINED_FUNCTION_35();
        sub_1C6FD7FC8(v236, v237, v238);
        OUTLINED_FUNCTION_35();
        sub_1C6FD7FC8(v239, v240, v241);
        v242 = OUTLINED_FUNCTION_53_7();
        v243(v242);
      }

      v233 = &qword_1EC216360;
      v234 = &unk_1C7563BA0;
      goto LABEL_100;
    case 9u:
      v103 = v360;
      sub_1C70420B4(v88, v360);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730);
      if (OUTLINED_FUNCTION_165_0() != 9)
      {
        sub_1C7042164(v103 + v0, type metadata accessor for PersonalEventBackingItem);
        v213 = &qword_1EC216320;
        v214 = &unk_1C7563B80;
        v215 = v103;
LABEL_69:
        sub_1C6FD7FC8(v215, v213, v214);
LABEL_70:
        sub_1C6FD7FC8(v88, &qword_1EC216368, &unk_1C7563BB0);
        goto LABEL_71;
      }

      v104 = v351;
      OUTLINED_FUNCTION_45_7();
      sub_1C7042768(v105, v106, v107, v108);
      OUTLINED_FUNCTION_45_7();
      sub_1C7042768(v109, v110, v111, v112);
      v113 = v345;
      sub_1C704210C(v103 + v0, v345);
      v114 = v1 + v0;
      v115 = v347;
      sub_1C704210C(v114, v347);
      v116 = *(v338 + 48);
      v117 = v344;
      OUTLINED_FUNCTION_45_7();
      sub_1C70424A0(v118, v119, v120, v121);
      OUTLINED_FUNCTION_45_7();
      sub_1C70424A0(v122, v123, v124, v125);
      v126 = v346;
      OUTLINED_FUNCTION_80_4(v117, 1, v346);
      if (v164)
      {
        OUTLINED_FUNCTION_80_4(v117 + v116, 1, v126);
        if (!v164)
        {
          goto LABEL_75;
        }

        sub_1C6FD7FC8(v117, &qword_1EC216320, &unk_1C7563B80);
      }

      else
      {
        v218 = v329;
        sub_1C70424A0(v117, v329, &qword_1EC216320, &unk_1C7563B80);
        v219 = __swift_getEnumTagSinglePayload(v117 + v116, 1, v126);
        if (v219 == 1)
        {
          (*(v330 + 8))(v218, v126);
LABEL_75:
          sub_1C6FD7FC8(v117, &qword_1EC216358, &qword_1C7563B98);
          goto LABEL_88;
        }

        OUTLINED_FUNCTION_72_2();
        v244(v324, v117 + v116, v126);
        OUTLINED_FUNCTION_19_13();
        sub_1C7038430(v245);
        LODWORD(v366) = sub_1C755063C();
        v246 = *(v104 + 8);
        v247 = OUTLINED_FUNCTION_64();
        v246(v247);
        (v246)(v218, v126);
        sub_1C6FD7FC8(v117, &qword_1EC216320, &unk_1C7563B80);
        if ((v366 & 1) == 0)
        {
          goto LABEL_88;
        }
      }

      OUTLINED_FUNCTION_117_0();
      static PersonalEventBackingItem.== infix(_:_:)();
LABEL_88:
      sub_1C7042164(v115, type metadata accessor for PersonalEventBackingItem);
      sub_1C7042164(v113, type metadata accessor for PersonalEventBackingItem);
      OUTLINED_FUNCTION_35();
      sub_1C6FD7FC8(v248, v249, v250);
      goto LABEL_102;
    case 0xAu:
      sub_1C70420B4(v88, v355);
      OUTLINED_FUNCTION_82();
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_67;
      }

      v182 = OUTLINED_FUNCTION_90();
      sub_1C7003984(v182, v183);
      goto LABEL_54;
    case 0xBu:
      sub_1C70420B4(v88, v358);
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_51;
      }

      goto LABEL_70;
    case 0xCu:
      sub_1C70420B4(v88, v357);
      OUTLINED_FUNCTION_82();
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_13;
      }

      goto LABEL_67;
    case 0xDu:
      v174 = v359;
      sub_1C70420B4(v88, v359);
      v175 = v366;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_70;
      }

      sub_1C6FA1430(*v174, *v175);
      goto LABEL_51;
    case 0xEu:
      if (OUTLINED_FUNCTION_132_3() != 14)
      {
        goto LABEL_70;
      }

      goto LABEL_51;
    case 0xFu:
      if (OUTLINED_FUNCTION_132_3() != 15)
      {
        goto LABEL_70;
      }

      goto LABEL_51;
    case 0x10u:
      if (OUTLINED_FUNCTION_132_3() != 16)
      {
        goto LABEL_70;
      }

      goto LABEL_51;
    case 0x11u:
      if (OUTLINED_FUNCTION_132_3() != 17)
      {
        goto LABEL_70;
      }

      goto LABEL_51;
    case 0x12u:
      if (OUTLINED_FUNCTION_132_3() == 18)
      {
        goto LABEL_51;
      }

      goto LABEL_70;
    default:
      sub_1C70420B4(v88, v84);
      OUTLINED_FUNCTION_82();
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_67;
      }

LABEL_13:
      v101 = OUTLINED_FUNCTION_90();
      sub_1C70020D4(v101, v102);
      goto LABEL_54;
  }
}

void QueryTokenSuggestion.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_124();
  v215 = v23;
  v28 = v27;
  v208 = v29;
  v200 = type metadata accessor for PersonalEventBackingItem(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_10_14();
  v201 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216320, &unk_1C7563B80);
  v33 = OUTLINED_FUNCTION_76(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_14_2();
  v210 = v34;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_140_1();
  v213 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328, &qword_1C7575BE0);
  v38 = OUTLINED_FUNCTION_76(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_14_2();
  v199 = v39;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_140_1();
  v198 = v41;
  v42 = OUTLINED_FUNCTION_37_3();
  v209 = type metadata accessor for GroundedGenericLocation(v42);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_10_14();
  v206 = v44;
  OUTLINED_FUNCTION_37_3();
  v205 = sub_1C754F5FC();
  OUTLINED_FUNCTION_3_0();
  v197 = v45;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_10_14();
  v204 = v47;
  OUTLINED_FUNCTION_37_3();
  v203 = sub_1C754F09C();
  OUTLINED_FUNCTION_3_0();
  v196 = v48;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_10_14();
  v202 = v50;
  OUTLINED_FUNCTION_37_3();
  v207 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v194 = v51;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  v56 = OUTLINED_FUNCTION_76(v55);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_14_2();
  v212 = v57;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_24_12();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  v63 = OUTLINED_FUNCTION_76(v62);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_137_1();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v187 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216380, &unk_1C7563BC0);
  OUTLINED_FUNCTION_3_0();
  v214 = v70;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v187 - v72;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v75 = OUTLINED_FUNCTION_76(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_148_2();
  v76 = v28[3];
  v216 = v28;
  __swift_project_boxed_opaque_existential_1(v28, v76);
  sub_1C7042240();
  v77 = v215;
  sub_1C7551FFC();
  if (v77)
  {
    v78 = v216;
  }

  else
  {
    v187 = v26;
    v188 = v25;
    v189 = v68;
    v79 = v212;
    v80 = v213;
    v81 = v211;
    v215 = v24;
    sub_1C7042294();
    sub_1C7551C1C();
    v82 = v69;
    v83 = v210;
    switch(v217)
    {
      case 1:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219300, &unk_1C7577770);
        v213 = v73;
        sub_1C70424EC();
        OUTLINED_FUNCTION_11_12();
        sub_1C7551C1C();
        v112 = *(v217 + 16);
        if (v112)
        {
          v113 = (v217 + 32);
          v114 = MEMORY[0x1E69E7CC0];
          do
          {
            v116 = *v113++;
            v115 = v116;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v119 = OUTLINED_FUNCTION_24_0();
              sub_1C6FB23B8(v119, v120, v121, v114);
              v114 = v122;
            }

            v118 = *(v114 + 16);
            v117 = *(v114 + 24);
            if (v118 >= v117 >> 1)
            {
              sub_1C6FB23B8(v117 > 1, v118 + 1, 1, v114);
              v114 = v123;
            }

            *(v114 + 16) = v118 + 1;
            *(v114 + 2 * v118 + 32) = v115;
            --v112;
          }

          while (v112);
        }

        else
        {
          v114 = MEMORY[0x1E69E7CC0];
        }

        (*(v214 + 8))(v213, v82);
        v79 = v215;
        *v215 = v114;
        goto LABEL_34;
      case 2:
        LOBYTE(v217) = 3;
        OUTLINED_FUNCTION_13_15();
        sub_1C7038430(v101);
        v102 = v207;
        OUTLINED_FUNCTION_158_0();
        sub_1C7551BAC();
        LOBYTE(v217) = 4;
        OUTLINED_FUNCTION_158_0();
        sub_1C7551BAC();
        v78 = v216;
        v213 = v73;
        v156 = OUTLINED_FUNCTION_151_0();
        v157 = v187;
        sub_1C70424A0(v156, v187, v158, v159);
        if (__swift_getEnumTagSinglePayload(v157, 1, v102) == 1)
        {
          sub_1C6FD7FC8(v157, &unk_1EC219230, &unk_1C7563720);
          v160 = 1;
          v161 = v192;
        }

        else
        {
          (*(v194 + 32))(v191, v157, v102);
          v210 = sub_1C703E8A0();
          if (qword_1EC214168 != -1)
          {
            OUTLINED_FUNCTION_17_0(&qword_1EC214168);
          }

          v175 = sub_1C754E24C();
          __swift_project_value_buffer(v175, qword_1EC21C0C8);
          v161 = v192;
          v176 = v191;
          sub_1C754E1BC();

          v177 = v176;
          v102 = v207;
          (*(v194 + 8))(v177, v207);
          v160 = 0;
        }

        v210 = v82;
        v209 = sub_1C754DABC();
        __swift_storeEnumTagSinglePayload(v161, v160, 1, v209);
        sub_1C7042768(v161, v195, &qword_1EC218C50, &qword_1C75606A0);
        v178 = v188;
        v179 = v193;
        sub_1C70424A0(v188, v193, &unk_1EC219230, &unk_1C7563720);
        if (__swift_getEnumTagSinglePayload(v179, 1, v102) == 1)
        {
          OUTLINED_FUNCTION_98_2(v178);
          v180 = OUTLINED_FUNCTION_151_0();
          OUTLINED_FUNCTION_98_2(v180);
          (*(v214 + 8))(v213, v210);
          OUTLINED_FUNCTION_98_2(v179);
          v181 = 1;
        }

        else
        {
          v182 = v194;
          v183 = v190;
          (*(v194 + 32))(v190, v179, v102);
          sub_1C703E8A0();
          if (qword_1EC214168 != -1)
          {
            OUTLINED_FUNCTION_17_0(&qword_1EC214168);
          }

          v184 = sub_1C754E24C();
          __swift_project_value_buffer(v184, qword_1EC21C0C8);
          sub_1C754E1BC();

          (*(v182 + 8))(v183, v102);
          OUTLINED_FUNCTION_98_2(v188);
          v185 = OUTLINED_FUNCTION_151_0();
          OUTLINED_FUNCTION_98_2(v185);
          (*(v214 + 8))(v213, v210);
          v181 = 0;
        }

        v139 = v208;
        __swift_storeEnumTagSinglePayload(v79, v181, 1, v209);
        sub_1C7042768(v79, v81, &qword_1EC218C50, &qword_1C75606A0);
        v186 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0, &qword_1C7563B90) + 48);
        v79 = v215;
        sub_1C7042768(v195, v215, &qword_1EC218C50, &qword_1C75606A0);
        sub_1C7042768(v81, v79 + v186, &qword_1EC218C50, &qword_1C75606A0);
        goto LABEL_36;
      case 3:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D90, &unk_1C7563BE0);
        sub_1C704240C(&qword_1EC215DB0);
        OUTLINED_FUNCTION_11_12();
        sub_1C7551C1C();
        v106 = OUTLINED_FUNCTION_9_13();
        v107(v106);
        OUTLINED_FUNCTION_52_7();
        goto LABEL_34;
      case 4:
        LOBYTE(v217) = 6;
        OUTLINED_FUNCTION_22_11();
        sub_1C7038430(v88);
        OUTLINED_FUNCTION_77_4();
        OUTLINED_FUNCTION_30_8(v89, v90, v91, v92, v93);
        v94 = OUTLINED_FUNCTION_9_13();
        v95(v94);
        v79 = v215;
        v96 = OUTLINED_FUNCTION_94_3();
        v97(v96);
        goto LABEL_34;
      case 5:
        LOBYTE(v217) = 7;
        OUTLINED_FUNCTION_21_12();
        sub_1C7038430(v124);
        OUTLINED_FUNCTION_77_4();
        OUTLINED_FUNCTION_30_8(v125, v126, v127, v128, v129);
        v130 = OUTLINED_FUNCTION_9_13();
        v131(v130);
        v79 = v215;
        v132 = OUTLINED_FUNCTION_94_3();
        v133(v132);
        goto LABEL_34;
      case 6:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2163C0, &qword_1C7563BD8);
        sub_1C70426A4(&unk_1EDD06B98);
        OUTLINED_FUNCTION_11_12();
        sub_1C7551C1C();
        v134 = v217;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
        sub_1C7042018();
        sub_1C7551C1C();
        v78 = v216;
        v162 = OUTLINED_FUNCTION_144_1();
        v163(v162);
        v164 = v217;
        v79 = v215;
        *v215 = v134;
        v79[1] = v164;
        goto LABEL_35;
      case 7:
        LOBYTE(v217) = 10;
        OUTLINED_FUNCTION_64_4();
        sub_1C7038430(v108);
        OUTLINED_FUNCTION_77_4();
        v109 = v206;
        sub_1C7551C1C();
        v110 = OUTLINED_FUNCTION_9_13();
        v111(v110);
        OUTLINED_FUNCTION_12_15();
        v79 = v215;
        sub_1C704210C(v109, v215);
        goto LABEL_34;
      case 8:
      case 11:
      case 12:
      case 13:
      case 17:
        v137 = OUTLINED_FUNCTION_9_13();
        v138(v137);
        v79 = v215;
        v78 = v216;
        v139 = v208;
        goto LABEL_36;
      case 9:
        OUTLINED_FUNCTION_163_1(11);
        v79 = v215;
        v78 = v216;
        if (v98)
        {
          sub_1C754F12C();
          v99 = OUTLINED_FUNCTION_9_13();
          v100(v99);
        }

        else
        {
          v142 = OUTLINED_FUNCTION_9_13();
          v143(v142);
          sub_1C754F14C();
          OUTLINED_FUNCTION_84();
          __swift_storeEnumTagSinglePayload(v144, v145, v146, v147);
        }

        v139 = v208;
        OUTLINED_FUNCTION_45_7();
        sub_1C7042768(v148, v149, v150, v151);
        OUTLINED_FUNCTION_45_7();
        sub_1C7042768(v152, v153, v154, v155);
        goto LABEL_36;
      case 10:
        v135 = v80;
        OUTLINED_FUNCTION_163_1(12);
        v78 = v216;
        if (v136)
        {
          sub_1C754F22C();
        }

        else
        {
          sub_1C754F24C();
          OUTLINED_FUNCTION_84();
          __swift_storeEnumTagSinglePayload(v165, v166, v167, v168);
        }

        v139 = v208;
        v79 = v215;
        v169 = v83;
        v170 = v201;
        sub_1C7042768(v169, v135, &qword_1EC216320, &unk_1C7563B80);
        LOBYTE(v217) = 13;
        OUTLINED_FUNCTION_63_6();
        sub_1C7038430(v171);
        OUTLINED_FUNCTION_77_4();
        sub_1C7551C1C();
        v172 = OUTLINED_FUNCTION_111();
        v173(v172);
        v174 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730) + 48);
        sub_1C7042768(v135, v79, &qword_1EC216320, &unk_1C7563B80);
        OUTLINED_FUNCTION_2_13();
        sub_1C704210C(v170, v79 + v174);
        goto LABEL_36;
      case 14:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216398, &qword_1C7563BD0);
        sub_1C7042610(&unk_1EC2163A0);
        OUTLINED_FUNCTION_11_12();
        sub_1C7551C1C();
        v86 = OUTLINED_FUNCTION_9_13();
        v87(v86);
        OUTLINED_FUNCTION_52_7();
        goto LABEL_34;
      case 15:
        type metadata accessor for PHMemoryCurationLength(0);
        OUTLINED_FUNCTION_65_5();
        sub_1C7038430(v103);
        OUTLINED_FUNCTION_11_12();
        sub_1C7551C1C();
        v104 = OUTLINED_FUNCTION_9_13();
        v105(v104);
        OUTLINED_FUNCTION_52_7();
        goto LABEL_34;
      case 18:
        sub_1C70422E8();
        sub_1C7551C1C();
        v140 = OUTLINED_FUNCTION_9_13();
        v141(v140);
        v79 = v215;
        *v215 = v217;
        goto LABEL_34;
      default:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
        sub_1C704233C();
        OUTLINED_FUNCTION_11_12();
        sub_1C7551C1C();
        v84 = OUTLINED_FUNCTION_9_13();
        v85(v84);
        OUTLINED_FUNCTION_52_7();
LABEL_34:
        v78 = v216;
LABEL_35:
        v139 = v208;
LABEL_36:
        type metadata accessor for QueryTokenCategoryType(0);
        swift_storeEnumTagMultiPayload();
        sub_1C704210C(v79, v139);
        break;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v78);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C703E8A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216510, &qword_1C75647D8);
  OUTLINED_FUNCTION_19_1();
  v0 = sub_1C754E22C();
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C755D200;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x1E6969A68], v0);
  v8(v7 + v4, *MEMORY[0x1E6969A78], v0);
  v8(v7 + 2 * v4, *MEMORY[0x1E6969A48], v0);
  v8(v7 + 3 * v4, *MEMORY[0x1E6969A58], v0);
  v8(v7 + 4 * v4, *MEMORY[0x1E6969A88], v0);
  v8(v7 + 5 * v4, *MEMORY[0x1E6969A98], v0);

  return sub_1C7080ED8();
}

void QueryTokenSuggestion.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v192 = v0;
  v193 = v1;
  v3 = OUTLINED_FUNCTION_19_1();
  v185 = type metadata accessor for PersonalEventBackingItem(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_14();
  v187 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216320, &unk_1C7563B80);
  OUTLINED_FUNCTION_76(v6);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_36();
  v189 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328, &qword_1C7575BE0);
  OUTLINED_FUNCTION_76(v9);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_36();
  v181 = v11;
  v12 = OUTLINED_FUNCTION_37_3();
  v174 = type metadata accessor for GroundedGenericLocation(v12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_10_14();
  v180 = v14;
  OUTLINED_FUNCTION_37_3();
  sub_1C754F5FC();
  OUTLINED_FUNCTION_3_0();
  v178 = v16;
  v179 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_10_14();
  v177 = v17;
  OUTLINED_FUNCTION_37_3();
  v176 = sub_1C754F09C();
  OUTLINED_FUNCTION_3_0();
  v175 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_119(v20);
  v186 = sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v184 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14_2();
  v182 = v23;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  v27 = OUTLINED_FUNCTION_76(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_14_2();
  v183 = v28;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_130();
  v188 = v30;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_140_1();
  v190 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  v35 = OUTLINED_FUNCTION_76(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_78();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_74_2();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_24_12();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_140_1();
  v43 = v42;
  v44 = OUTLINED_FUNCTION_37_3();
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(v44);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_14_0();
  v49 = (v48 - v47);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2163D8, &qword_1C7563BF0);
  OUTLINED_FUNCTION_3_0();
  v194 = v50;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v171 - v52;
  v54 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_1C7042240();
  v195 = v53;
  sub_1C755200C();
  OUTLINED_FUNCTION_0_20();
  sub_1C70420B4(v192, v49);
  OUTLINED_FUNCTION_35_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v116 = *v49;
      OUTLINED_FUNCTION_89_4(1);
      OUTLINED_FUNCTION_41_6();
      v117 = v196;
      v118 = v193;
      sub_1C7551D2C();
      if (v118)
      {
        v109 = OUTLINED_FUNCTION_23_10();
        v111 = v117;
        goto LABEL_41;
      }

      v161 = *(v116 + 16);
      if (v161)
      {
        v197[0] = MEMORY[0x1E69E7CC0];
        sub_1C716DDD4(0, v161, 0);
        v162 = v197[0];
        v163 = *(v197[0] + 16);
        v164 = 32;
        do
        {
          v165 = *(v116 + v164);
          v197[0] = v162;
          v166 = *(v162 + 24);
          if (v163 >= v166 >> 1)
          {
            sub_1C716DDD4(v166 > 1, v163 + 1, 1);
            v162 = v197[0];
          }

          *(v162 + 16) = v163 + 1;
          *(v162 + 2 * v163 + 32) = v165;
          v164 += 2;
          ++v163;
          --v161;
        }

        while (v161);

        v117 = v196;
      }

      else
      {

        v162 = MEMORY[0x1E69E7CC0];
      }

      v197[0] = v162;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219300, &unk_1C7577770);
      sub_1C70427B4();
      OUTLINED_FUNCTION_75_2();
      sub_1C7551D2C();
      v167 = OUTLINED_FUNCTION_23_10();
      v168(v167, v117);
      goto LABEL_42;
    case 2u:
      v92 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0, &qword_1C7563B90) + 48);
      sub_1C7042768(v49, v43, &qword_1EC218C50, &qword_1C75606A0);
      v93 = v49 + v92;
      v94 = v191;
      sub_1C7042768(v93, v191, &qword_1EC218C50, &qword_1C75606A0);
      v192 = v43;
      sub_1C70424A0(v43, v2, &qword_1EC218C50, &qword_1C75606A0);
      v95 = v186;
      if (__swift_getEnumTagSinglePayload(v2, 1, v186) == 1)
      {
        sub_1C6FD7FC8(v2, &qword_1EC218C50, &qword_1C75606A0);
        sub_1C754DF6C();
        v96 = v172;
        OUTLINED_FUNCTION_84();
        __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
        v101 = v190;
        v102 = v188;
      }

      else
      {
        v138 = v184;
        OUTLINED_FUNCTION_114_2();
        v139 = v171;
        v140(v171, v2, v95);
        v101 = v190;
        v96 = v172;
        if (qword_1EC214168 != -1)
        {
          OUTLINED_FUNCTION_17_0(&qword_1EC214168);
        }

        v141 = sub_1C754E24C();
        __swift_project_value_buffer(v141, qword_1EC21C0C8);
        sub_1C754E1EC();
        (*(v138 + 8))(v139, v95);
        v102 = v188;
      }

      sub_1C7042768(v96, v101, &unk_1EC219230, &unk_1C7563720);
      v142 = OUTLINED_FUNCTION_41_3();
      sub_1C70424A0(v142, v143, v144, v145);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v95);
      v147 = v182;
      if (EnumTagSinglePayload == 1)
      {
        sub_1C6FD7FC8(v38, &qword_1EC218C50, &qword_1C75606A0);
        sub_1C754DF6C();
        v148 = v183;
        OUTLINED_FUNCTION_84();
        __swift_storeEnumTagSinglePayload(v149, v150, v151, v152);
      }

      else
      {
        OUTLINED_FUNCTION_114_2();
        v153(v147, v38, v95);
        if (qword_1EC214168 != -1)
        {
          OUTLINED_FUNCTION_17_0(&qword_1EC214168);
        }

        v154 = sub_1C754E24C();
        __swift_project_value_buffer(v154, qword_1EC21C0C8);
        v148 = v183;
        sub_1C754E1EC();
        v155 = OUTLINED_FUNCTION_87_4();
        v156(v155);
      }

      sub_1C7042768(v148, v102, &unk_1EC219230, &unk_1C7563720);
      OUTLINED_FUNCTION_89_4(2);
      OUTLINED_FUNCTION_41_6();
      v157 = v196;
      v158 = v193;
      sub_1C7551D2C();
      if (v158)
      {
        OUTLINED_FUNCTION_98_2(v102);
        OUTLINED_FUNCTION_98_2(v101);
        v159 = v94;
      }

      else
      {
        LOBYTE(v197[0]) = 3;
        sub_1C754DF6C();
        OUTLINED_FUNCTION_13_15();
        sub_1C7038430(v160);
        OUTLINED_FUNCTION_123_2(v101, v197);
        LOBYTE(v197[0]) = 4;
        OUTLINED_FUNCTION_123_2(v102, v197);
        OUTLINED_FUNCTION_98_2(v102);
        OUTLINED_FUNCTION_98_2(v101);
        v159 = v191;
      }

      OUTLINED_FUNCTION_98_2(v159);
      OUTLINED_FUNCTION_98_2(v192);
      v78 = OUTLINED_FUNCTION_50_6();
      v80 = v157;
      goto LABEL_48;
    case 3u:
      v103 = *v49;
      OUTLINED_FUNCTION_89_4(3);
      v104 = OUTLINED_FUNCTION_41_6();
      OUTLINED_FUNCTION_126_3(v104, v105, v106, v107, v108);
      if (!v1)
      {
        v197[0] = v103;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D90, &unk_1C7563BE0);
        sub_1C704240C(&qword_1EC215D98);
        OUTLINED_FUNCTION_75_2();
        sub_1C7551D2C();
      }

      goto LABEL_20;
    case 4u:
      OUTLINED_FUNCTION_72_2();
      v69(v173, v49, v176);
      OUTLINED_FUNCTION_89_4(4);
      OUTLINED_FUNCTION_25_6();
      sub_1C7551D2C();
      if (v1)
      {
        goto LABEL_30;
      }

      LOBYTE(v197[0]) = 6;
      OUTLINED_FUNCTION_22_11();
      goto LABEL_29;
    case 5u:
      (*(v178 + 32))(v177, v49, v179);
      OUTLINED_FUNCTION_89_4(5);
      OUTLINED_FUNCTION_25_6();
      sub_1C7551D2C();
      if (v1)
      {
        goto LABEL_30;
      }

      LOBYTE(v197[0]) = 7;
      OUTLINED_FUNCTION_21_12();
LABEL_29:
      sub_1C7038430(v70);
      OUTLINED_FUNCTION_77_4();
      OUTLINED_FUNCTION_150_0();
      sub_1C7551D2C();
LABEL_30:
      v119 = OUTLINED_FUNCTION_94_3();
      v120(v119);
      goto LABEL_47;
    case 6u:
      v121 = *v49;
      OUTLINED_FUNCTION_89_4(6);
      v122 = OUTLINED_FUNCTION_41_6();
      OUTLINED_FUNCTION_125_2(v122, v123, v124, v125, v126);
      if (v1)
      {
        v127 = OUTLINED_FUNCTION_23_10();
        v128(v127, v49);

        goto LABEL_42;
      }

      v197[0] = v121;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2163C0, &qword_1C7563BD8);
      sub_1C70426A4(&unk_1EDD06BA0);
      OUTLINED_FUNCTION_75_2();
      sub_1C7551D2C();

      sub_1C703FD7C();
      v170 = v169;

      v197[0] = v170;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      sub_1C6FC18BC();
      OUTLINED_FUNCTION_75_2();
      sub_1C7551D2C();

LABEL_71:
      v78 = OUTLINED_FUNCTION_23_10();
      v80 = v49;
      goto LABEL_48;
    case 7u:
      OUTLINED_FUNCTION_12_15();
      v112 = v180;
      sub_1C704210C(v49, v180);
      LOBYTE(v197[0]) = 10;
      OUTLINED_FUNCTION_64_4();
      sub_1C7038430(v113);
      OUTLINED_FUNCTION_77_4();
      TokenCategoryType = v196;
      v114 = v193;
      sub_1C7551D2C();
      if (!v114)
      {
        OUTLINED_FUNCTION_89_4(7);
        OUTLINED_FUNCTION_39_8();
        sub_1C7551D2C();
      }

      OUTLINED_FUNCTION_7_10();
      sub_1C7042164(v112, v115);
      goto LABEL_47;
    case 8u:
      v135 = v181;
      sub_1C7042768(v49, v181, &qword_1EC216328, &qword_1C7575BE0);
      LOBYTE(v197[0]) = 11;
      sub_1C754F14C();
      OUTLINED_FUNCTION_20_15();
      sub_1C7038430(v136);
      OUTLINED_FUNCTION_77_4();
      TokenCategoryType = v196;
      v137 = v193;
      sub_1C7551CBC();
      if (!v137)
      {
        OUTLINED_FUNCTION_89_4(9);
        OUTLINED_FUNCTION_39_8();
        sub_1C7551D2C();
      }

      v89 = &qword_1EC216328;
      v90 = &qword_1C7575BE0;
      v91 = v135;
      goto LABEL_46;
    case 9u:
      v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730) + 48);
      v82 = v189;
      sub_1C7042768(v49, v189, &qword_1EC216320, &unk_1C7563B80);
      OUTLINED_FUNCTION_2_13();
      v83 = v49 + v81;
      v84 = v187;
      sub_1C704210C(v83, v187);
      LOBYTE(v197[0]) = 13;
      OUTLINED_FUNCTION_63_6();
      sub_1C7038430(v85);
      OUTLINED_FUNCTION_77_4();
      TokenCategoryType = v196;
      v86 = v193;
      sub_1C7551D2C();
      if (!v86)
      {
        LOBYTE(v197[0]) = 12;
        sub_1C754F24C();
        OUTLINED_FUNCTION_19_13();
        sub_1C7038430(v87);
        OUTLINED_FUNCTION_77_4();
        OUTLINED_FUNCTION_150_0();
        sub_1C7551CBC();
        OUTLINED_FUNCTION_89_4(10);
        OUTLINED_FUNCTION_39_8();
        sub_1C7551D2C();
      }

      OUTLINED_FUNCTION_3_15();
      sub_1C7042164(v84, v88);
      v89 = &qword_1EC216320;
      v90 = &unk_1C7563B80;
      v91 = v82;
LABEL_46:
      sub_1C6FD7FC8(v91, v89, v90);
      goto LABEL_47;
    case 0xAu:
      v129 = *v49;
      LOBYTE(v197[0]) = 14;
      sub_1C70425BC();
      v130 = OUTLINED_FUNCTION_41_6();
      OUTLINED_FUNCTION_125_2(v130, v131, v132, v133, v134);
      if (!v1)
      {
        v197[0] = v129;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216398, &qword_1C7563BD0);
        sub_1C7042610(&unk_1EC2163E8);
        OUTLINED_FUNCTION_75_2();
        OUTLINED_FUNCTION_150_0();
        sub_1C7551D2C();
      }

      v109 = OUTLINED_FUNCTION_23_10();
      v111 = v49;
      goto LABEL_41;
    case 0xBu:
      v62 = *v49;
      LOBYTE(v197[0]) = 15;
      sub_1C70425BC();
      v63 = OUTLINED_FUNCTION_41_6();
      OUTLINED_FUNCTION_125_2(v63, v64, v65, v66, v67);
      if (!v1)
      {
        v197[0] = v62;
        type metadata accessor for PHMemoryCurationLength(0);
        OUTLINED_FUNCTION_65_5();
        sub_1C7038430(v68);
        OUTLINED_FUNCTION_75_2();
        sub_1C7551D2C();
      }

      goto LABEL_71;
    case 0xCu:
      v55 = *v49;
      OUTLINED_FUNCTION_89_4(16);
      v71 = OUTLINED_FUNCTION_41_6();
      OUTLINED_FUNCTION_126_3(v71, v72, v73, v74, v75);
      if (!v1)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    case 0xDu:
      LOBYTE(v197[0]) = *v49;
      sub_1C7042568();
      OUTLINED_FUNCTION_25_6();
      sub_1C7551D2C();
      if (v1)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_89_4(18);
      OUTLINED_FUNCTION_39_8();
      goto LABEL_37;
    case 0xEu:
      v61 = 8;
      goto LABEL_36;
    case 0xFu:
      v61 = 11;
      goto LABEL_36;
    case 0x10u:
      v61 = 12;
      goto LABEL_36;
    case 0x11u:
      v61 = 13;
      goto LABEL_36;
    case 0x12u:
      v61 = 17;
LABEL_36:
      OUTLINED_FUNCTION_89_4(v61);
      OUTLINED_FUNCTION_25_6();
LABEL_37:
      sub_1C7551D2C();
LABEL_47:
      v78 = OUTLINED_FUNCTION_23_10();
      v80 = TokenCategoryType;
      goto LABEL_48;
    default:
      v55 = *v49;
      LOBYTE(v197[0]) = 0;
      sub_1C70425BC();
      v56 = OUTLINED_FUNCTION_41_6();
      OUTLINED_FUNCTION_126_3(v56, v57, v58, v59, v60);
      if (v1)
      {
LABEL_20:
        v109 = OUTLINED_FUNCTION_23_10();
        v111 = v54;
LABEL_41:
        v110(v109, v111);
LABEL_42:
      }

      else
      {
LABEL_11:
        v197[0] = v55;
        sub_1C75504FC();
        OUTLINED_FUNCTION_4_13();
        sub_1C7040234(v197, v76, v77, sub_1C70405EC, sub_1C70404D8);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
        sub_1C6FC18BC();
        OUTLINED_FUNCTION_75_2();
        sub_1C7551D2C();

        v78 = OUTLINED_FUNCTION_23_10();
        v80 = v54;
LABEL_48:
        v79(v78, v80);
      }

      OUTLINED_FUNCTION_125();
      return;
  }
}

void sub_1C703FCFC()
{
  sub_1C75504FC();
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_133_1(v1, v2, v3, sub_1C70405EC, sub_1C70404D8, v4, v5);
  if (v0)
  {

    __break(1u);
  }
}

void sub_1C703FD7C()
{
  OUTLINED_FUNCTION_14_9();
  if (*(v1 + 16))
  {
    v2 = OUTLINED_FUNCTION_73_2();
    sub_1C70CE988(v2, v3);
    OUTLINED_FUNCTION_26_7();
    sub_1C70D065C();
    OUTLINED_FUNCTION_47_3();
    OUTLINED_FUNCTION_33_0();
    if (!v4)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_133_1(v5, v6, v7, sub_1C70405EC, sub_1C70404D8, v8, v9);
  if (v0)
  {

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_13_5();
  }
}

void sub_1C703FE30()
{
  OUTLINED_FUNCTION_14_9();
  if (*(v1 + 16))
  {
    v2 = OUTLINED_FUNCTION_73_2();
    sub_1C70CEB10(v2, v3);
    OUTLINED_FUNCTION_26_7();
    sub_1C70D2364(v4, v5, v6, v7);
    OUTLINED_FUNCTION_47_3();
    OUTLINED_FUNCTION_33_0();
    if (!v8)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_66_7();
  OUTLINED_FUNCTION_133_1(v9, v10, v11, sub_1C7040ACC, sub_1C7040590, v12, v13);
  if (v0)
  {

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_13_5();
  }
}

void sub_1C703FEE4()
{
  OUTLINED_FUNCTION_14_9();
  if (*(v1 + 16))
  {
    v2 = OUTLINED_FUNCTION_73_2();
    sub_1C70CE988(v2, v3);
    OUTLINED_FUNCTION_26_7();
    sub_1C70D452C();
    OUTLINED_FUNCTION_47_3();
    OUTLINED_FUNCTION_33_0();
    if (!v4)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_133_1(v5, v6, v7, sub_1C70405EC, sub_1C70404D8, v8, v9);
  if (v0)
  {

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_13_5();
  }
}

void sub_1C703FFC8()
{
  OUTLINED_FUNCTION_14_9();
  if (*(v2 + 16))
  {
    v3 = v1;
    v4 = OUTLINED_FUNCTION_73_2();
    sub_1C70CEB10(v4, v5);
    OUTLINED_FUNCTION_26_7();
    v3();
    OUTLINED_FUNCTION_47_3();
    OUTLINED_FUNCTION_33_0();
    if (!v6)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_66_7();
  OUTLINED_FUNCTION_133_1(v7, v8, v9, sub_1C7040ACC, sub_1C7040590, v10, v11);
  if (v0)
  {

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_13_5();
  }
}

uint64_t QueryTokenSuggestion.description.getter()
{
  sub_1C755180C();

  strcpy(v1, "categoryType: ");
  QueryTokenCategoryType.description.getter();
  MEMORY[0x1CCA5CD70]();

  return v1[0];
}

uint64_t sub_1C7040124(uint64_t (*a1)(_BYTE *))
{
  sub_1C7551F3C();
  a1(v3);
  return sub_1C7551FAC();
}

uint64_t sub_1C70401A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_1C7551F3C();
  a4(v6);
  return sub_1C7551FAC();
}

uint64_t sub_1C7040234(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1C70403D0(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

void sub_1C70402D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_1C75516BC())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_1C755170C();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C70403D0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1C7551D7C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = v7 / 2;
      if (v7 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_1C7550BBC();
        *(v10 + 16) = v9;
      }

      OUTLINED_FUNCTION_150_0();
      a3(v11, v12);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

void sub_1C70404D8()
{
  OUTLINED_FUNCTION_124();
  if (v2 != v1)
  {
    v4 = v2;
    v5 = v1;
    v6 = *v3;
    v7 = *v3 + 16 * v2;
    v8 = v0 - v2;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      v10 = *v9;
      v11 = v9[1];
      v12 = v8;
      v13 = v7;
      do
      {
        v14 = v10 == *(v13 - 2) && v11 == *(v13 - 1);
        if (v14 || (sub_1C7551DBC() & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return;
        }

        v10 = *v13;
        v11 = v13[1];
        *v13 = *(v13 - 1);
        *(v13 - 1) = v11;
        *(v13 - 2) = v10;
        v13 -= 2;
      }

      while (!__CFADD__(v12++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != v5)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7040590(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
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

void sub_1C70405EC(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v90 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1C7551DBC();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1C7551DBC()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v6 = *a3 + 16 * v10;
            v29 = v9 - v10;
            do
            {
              v30 = v10;
              v31 = (v28 + 16 * v10);
              v32 = *v31;
              v33 = v31[1];
              v34 = v29;
              v35 = v6;
              do
              {
                v36 = v32 == *(v35 - 2) && v33 == *(v35 - 1);
                if (v36 || (sub_1C7551DBC() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v32 = *v35;
                v33 = v35[1];
                *v35 = *(v35 - 1);
                *(v35 - 1) = v33;
                *(v35 - 2) = v32;
                v35 -= 2;
                v37 = __CFADD__(v34++, 1);
              }

              while (!v37);
              v10 = v30 + 1;
              v6 += 16;
              --v29;
            }

            while (v30 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB17EC(v79, v80, v81, v8);
        v8 = v82;
      }

      v39 = v8[2];
      v38 = v8[3];
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        sub_1C6FB17EC(v38 > 1, v39 + 1, 1, v8);
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          OUTLINED_FUNCTION_149_0();
          if (v37)
          {
            break;
          }

          if (v40 == 3)
          {
            v45 = v8[4];
            v46 = v8[5];
            v55 = __OFSUB__(v46, v45);
            v47 = v46 - v45;
            v48 = v55;
LABEL_69:
            if (v48)
            {
              goto LABEL_109;
            }

            v60 = *v44;
            v59 = v44[1];
            v61 = __OFSUB__(v59, v60);
            v62 = v59 - v60;
            v63 = v61;
            if (v61)
            {
              goto LABEL_112;
            }

            v64 = v43[1];
            v65 = v64 - *v43;
            if (__OFSUB__(v64, *v43))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v62, v65))
            {
              goto LABEL_117;
            }

            if (v62 + v65 >= v47)
            {
              if (v47 < v65)
              {
                v6 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v67 = *v44;
          v66 = v44[1];
          v55 = __OFSUB__(v66, v67);
          v62 = v66 - v67;
          v63 = v55;
LABEL_84:
          if (v63)
          {
            goto LABEL_114;
          }

          v69 = *v43;
          v68 = v43[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_116;
          }

          if (v70 < v62)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v6 - 1 >= v40)
          {
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
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v74 = &v41[2 * v6 - 2];
          v40 = *v74;
          v75 = v41[2 * v6 + 1];
          sub_1C704110C();
          if (v5)
          {
            goto LABEL_102;
          }

          if (v75 < v40)
          {
            goto LABEL_104;
          }

          v76 = v8;
          v77 = v8[2];
          if (v6 > v77)
          {
            goto LABEL_105;
          }

          *v74 = v40;
          v74[1] = v75;
          if (v6 >= v77)
          {
            goto LABEL_106;
          }

          OUTLINED_FUNCTION_122_2();
          v76[2] = v40;
          v78 = v77 > 2;
          v8 = v76;
          if (!v78)
          {
            goto LABEL_98;
          }
        }

        v49 = &v41[2 * v40];
        v50 = *(v49 - 8);
        v51 = *(v49 - 7);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_107;
        }

        v54 = *(v49 - 6);
        v53 = *(v49 - 5);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_108;
        }

        v56 = v44[1];
        v57 = v56 - *v44;
        if (__OFSUB__(v56, *v44))
        {
          goto LABEL_110;
        }

        v55 = __OFADD__(v47, v57);
        v58 = v47 + v57;
        if (v55)
        {
          goto LABEL_113;
        }

        if (v58 >= v52)
        {
          v72 = *v43;
          v71 = v43[1];
          v55 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v55)
          {
            goto LABEL_118;
          }

          if (v47 < v73)
          {
            v6 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v90 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_1C7040F44(&v90, *result, a3);
LABEL_102:
}

void sub_1C7040ACC(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
                v27 = __CFADD__(v24++, 1);
              }

              while (!v27);
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB17EC(v68, v69, v70, v7);
        v7 = v71;
      }

      v29 = v7[2];
      v28 = v7[3];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_1C6FB17EC(v28 > 1, v29 + 1, 1, v7);
        v7 = v72;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          OUTLINED_FUNCTION_149_0();
          if (v27)
          {
            break;
          }

          if (v30 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v29 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v29 - 1 >= v30)
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

          v30 = &v31[2 * v29 - 2];
          v64 = *v30;
          v65 = v31[2 * v29 + 1];
          sub_1C7041284();
          if (v4)
          {
            goto LABEL_89;
          }

          if (v65 < v64)
          {
            goto LABEL_91;
          }

          v66 = v7;
          v67 = v7[2];
          if (v29 > v67)
          {
            goto LABEL_92;
          }

          *v30 = v64;
          *(v30 + 8) = v65;
          if (v29 >= v67)
          {
            goto LABEL_93;
          }

          OUTLINED_FUNCTION_122_2();
          v66[2] = v30;
          v19 = v67 > 2;
          v7 = v66;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v31[2 * v30];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v29 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_1C7041028(&v77, *result, a3);
LABEL_89:
}

void sub_1C7040F44(uint64_t *a1, uint64_t a2, void *a3)
{
  if ((OUTLINED_FUNCTION_120_2(a1) & 1) == 0)
  {
LABEL_14:
    sub_1C7420830();
  }

  OUTLINED_FUNCTION_139_0();
  while (1)
  {
    if (v7 < 2)
    {
LABEL_10:
      OUTLINED_FUNCTION_136_0(v9, v10, v11, v12, v13, v14, v15, v16, v17);
      OUTLINED_FUNCTION_514();
      return;
    }

    if (!*a3)
    {
      break;
    }

    OUTLINED_FUNCTION_138_1();
    v9 = sub_1C704110C();
    if (v3)
    {
      goto LABEL_10;
    }

    if (v5 < v4)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v7 - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v8 = v4;
    v8[1] = v5;
    if (*v6 < v7)
    {
      goto LABEL_13;
    }

    v9 = OUTLINED_FUNCTION_160_0(*v6 - v7);
    *v6 = v7;
  }

  OUTLINED_FUNCTION_136_0(v9, v10, v11, v12, v13, v14, v15, v16, v17);
  __break(1u);
}

void sub_1C7041028(uint64_t *a1, uint64_t a2, void *a3)
{
  if ((OUTLINED_FUNCTION_120_2(a1) & 1) == 0)
  {
LABEL_14:
    sub_1C7420830();
  }

  OUTLINED_FUNCTION_139_0();
  while (1)
  {
    if (v7 < 2)
    {
LABEL_10:
      OUTLINED_FUNCTION_136_0(v9, v10, v11, v12, v13, v14, v15, v16, v17);
      OUTLINED_FUNCTION_514();
      return;
    }

    if (!*a3)
    {
      break;
    }

    OUTLINED_FUNCTION_138_1();
    v9 = sub_1C7041284();
    if (v3)
    {
      goto LABEL_10;
    }

    if (v5 < v4)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v7 - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v8 = v4;
    v8[1] = v5;
    if (*v6 < v7)
    {
      goto LABEL_13;
    }

    v9 = OUTLINED_FUNCTION_160_0(*v6 - v7);
    *v6 = v7;
  }

  OUTLINED_FUNCTION_136_0(v9, v10, v11, v12, v13, v14, v15, v16, v17);
  __break(1u);
}

uint64_t sub_1C704110C()
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_489();
  if (v6 != v7)
  {
    v8 = OUTLINED_FUNCTION_455();
    sub_1C6F9EE08(v8, v9, v0);
    v13 = (v0 + 16 * v4);
    while (1)
    {
      if (v0 >= v13 || v1 >= v3)
      {
        v1 = v2;
        goto LABEL_36;
      }

      v11 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
      if (v11 || (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      v12 = v1;
      v11 = v2 == v1;
      v1 += 16;
      if (!v11)
      {
        goto LABEL_17;
      }

LABEL_18:
      ++v2;
    }

    v12 = v0;
    v11 = v2 == v0;
    v0 += 16;
    if (v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v2 = *v12;
    goto LABEL_18;
  }

  sub_1C6F9EE08(v1, v5, v0);
  v13 = (v0 + 16 * v5);
LABEL_19:
  v14 = (v1 - 16);
  for (--v3; v13 > v0 && v1 > v2; --v3)
  {
    v16 = *(v13 - 2) == *(v1 - 16) && *(v13 - 1) == *(v1 - 8);
    if (!v16 && (sub_1C7551DBC() & 1) != 0)
    {
      v11 = v3 + 1 == v1;
      v1 -= 16;
      if (!v11)
      {
        *v3 = *v14;
        v1 = v14;
      }

      goto LABEL_19;
    }

    if (v13 != v3 + 1)
    {
      *v3 = *(v13 - 1);
    }

    --v13;
  }

LABEL_36:
  if (v1 != v0 || v1 >= v0 + 16 * ((v13 - v0) / 16))
  {
    v18 = OUTLINED_FUNCTION_294();
    memmove(v18, v19, v20);
  }

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1C7041284()
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_489();
  if (v6 != v7)
  {
    v8 = OUTLINED_FUNCTION_455();
    sub_1C7423CF8(v8, v9, v0);
    v13 = &v0[8 * v4];
    while (1)
    {
      if (v0 >= v13 || v1 >= v3)
      {
        v1 = v2;
        goto LABEL_28;
      }

      v11 = *v1;
      if (*v1 >= *v0)
      {
        break;
      }

      v12 = v2 == v1;
      v1 += 8;
      if (!v12)
      {
        goto LABEL_13;
      }

LABEL_14:
      v2 += 8;
    }

    v11 = *v0;
    v12 = v2 == v0;
    v0 += 8;
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v2 = v11;
    goto LABEL_14;
  }

  sub_1C7423CF8(v1, v5, v0);
  v13 = &v0[8 * v5];
LABEL_15:
  v14 = v1 - 8;
  for (v3 -= 8; v13 > v0 && v1 > v2; v3 -= 8)
  {
    v16 = *(v13 - 1);
    if (v16 < *v14)
    {
      v12 = v3 + 8 == v1;
      v1 -= 8;
      if (!v12)
      {
        *v3 = *v14;
        v1 = v14;
      }

      goto LABEL_15;
    }

    if (v13 != v3 + 8)
    {
      *v3 = v16;
    }

    v13 -= 8;
  }

LABEL_28:
  if (v1 != v0 || v1 >= &v0[8 * ((v13 - v0) / 8)])
  {
    v18 = OUTLINED_FUNCTION_294();
    memmove(v18, v19, v20);
  }

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1C70413CC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4 = type metadata accessor for Hastings.Asset(v3);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  v9 = *(a2 + 16);
  result = MEMORY[0x1CCA5E460](v9);
  if (v9)
  {
    OUTLINED_FUNCTION_191();
    v12 = a2 + v11;
    v13 = *(v5 + 72);
    do
    {
      v14 = OUTLINED_FUNCTION_295();
      sub_1C70420B4(v14, v15);
      sub_1C75505AC();
      result = sub_1C7042164(v8, type metadata accessor for Hastings.Asset);
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  return result;
}

void sub_1C70414D8()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_148_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  v9 = OUTLINED_FUNCTION_76(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_102_4();
  v11 = type metadata accessor for EventSuggestion(0);
  OUTLINED_FUNCTION_3_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_0();
  v17 = v16 - v15;
  v18 = *(v3 + 16);
  MEMORY[0x1CCA5E460](v18);
  if (v18)
  {
    v44 = v11[6];
    v45 = v11[5];
    v43 = v17 + v11[8];
    v42 = v11[10];
    v41 = (v17 + v11[11]);
    OUTLINED_FUNCTION_191();
    v20 = v3 + v19;
    v40 = *(v13 + 72);
    v46 = v1;
    do
    {
      sub_1C70420B4(v20, v17);
      sub_1C75505AC();
      sub_1C70424A0(v17 + v45, v1, &unk_1EC219230, &unk_1C7563720);
      v21 = OUTLINED_FUNCTION_116_2();
      OUTLINED_FUNCTION_80_4(v21, v22, v6);
      if (v23)
      {
        OUTLINED_FUNCTION_169_0();
      }

      else
      {
        v24 = OUTLINED_FUNCTION_146_0();
        v25(v24, v1, v6);
        OUTLINED_FUNCTION_167_0();
        OUTLINED_FUNCTION_13_15();
        sub_1C7038430(&unk_1EDD0CBC0);
        OUTLINED_FUNCTION_115_2();
        sub_1C755059C();
        v26 = OUTLINED_FUNCTION_146_0();
        v27(v26, v6);
      }

      sub_1C70424A0(v17 + v44, v0, &unk_1EC219230, &unk_1C7563720);
      OUTLINED_FUNCTION_80_4(v0, 1, v6);
      if (v23)
      {
        OUTLINED_FUNCTION_169_0();
      }

      else
      {
        v28 = OUTLINED_FUNCTION_146_0();
        v29(v28, v0, v6);
        OUTLINED_FUNCTION_167_0();
        OUTLINED_FUNCTION_13_15();
        sub_1C7038430(&unk_1EDD0CBC0);
        OUTLINED_FUNCTION_115_2();
        sub_1C755059C();
        v30 = OUTLINED_FUNCTION_146_0();
        v31(v30, v6);
      }

      v32 = v0;
      sub_1C75505AC();
      if (*(v43 + 8))
      {
        OUTLINED_FUNCTION_167_0();
        sub_1C75505AC();
      }

      else
      {
        OUTLINED_FUNCTION_169_0();
      }

      sub_1C75505AC();
      sub_1C7041DF0(v5, *(v17 + v42), v33, v34, v35, v36, v37, v38);
      v39 = v41[1];
      MEMORY[0x1CCA5E460](*v41);
      MEMORY[0x1CCA5E460](v39);
      sub_1C7042164(v17, type metadata accessor for EventSuggestion);
      v20 += v40;
      --v18;
      v0 = v32;
      v1 = v46;
    }

    while (v18);
  }

  OUTLINED_FUNCTION_25_0();
}

void sub_1C70418D0()
{
  OUTLINED_FUNCTION_162_0();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {
      sub_1C75504FC();
      OUTLINED_FUNCTION_43_2();
      sub_1C75505AC();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_1C7041934(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1CCA5E460](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *v5;
      v5 += 2;
      if (v6)
      {
        sub_1C7551F5C();
        sub_1C75504FC();
        sub_1C75505AC();
      }

      else
      {
        result = sub_1C7551F5C();
      }

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C70419CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1CCA5E460](v3);
  v11 = v3;
  if (v3)
  {
    v5 = 0;
    do
    {
      v6 = (a2 + 32 + (v5 << 6));
      v7 = v6[4];
      v8 = v6[6];
      v12 = v6[7];
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75505AC();
      sub_1C75505AC();
      MEMORY[0x1CCA5E460](*(v7 + 16));
      v9 = *(v7 + 16);
      if (v9)
      {
        v10 = v7 + 40;
        do
        {
          sub_1C75504FC();
          sub_1C75505AC();

          v10 += 16;
          --v9;
        }

        while (v9);
      }

      sub_1C7551F5C();
      if (v8)
      {
        sub_1C75505AC();
      }

      ++v5;
      MEMORY[0x1CCA5E460](v12);
    }

    while (v5 != v11);
  }

  return result;
}

uint64_t sub_1C7041B38(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1CCA5E460](v3);
  if (v3)
  {
    v5 = *(sub_1C754F65C() - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_1C7038430(&unk_1EC216518);
    do
    {
      result = sub_1C755059C();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C7041C34(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1CCA5E460](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 2;
      result = sub_1C7551F6C();
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_1C7041C84()
{
  OUTLINED_FUNCTION_162_0();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      v2 += 4;
      sub_1C7551F7C();
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_1C7041CDC(uint64_t a1, uint64_t a2)
{
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v4 = *(TokenSuggestion - 8);
  MEMORY[0x1EEE9AC00](TokenSuggestion - 8);
  OUTLINED_FUNCTION_14_0();
  v7 = v6 - v5;
  v8 = *(a2 + 16);
  result = MEMORY[0x1CCA5E460](v8);
  if (v8)
  {
    OUTLINED_FUNCTION_191();
    v11 = a2 + v10;
    v12 = *(v4 + 72);
    do
    {
      v13 = OUTLINED_FUNCTION_154();
      sub_1C70420B4(v13, v14);
      QueryTokenCategoryType.hash(into:)();
      result = sub_1C7042164(v7, type metadata accessor for QueryTokenSuggestion);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1C7041DF0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_121_3(a1, a2, a3, a4, a5, a6, a7, a8, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  sub_1C7551FAC();
  OUTLINED_FUNCTION_11();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  result = sub_1C75504FC();
  v15 = 0;
  v16 = 0;
  if (v11)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      return MEMORY[0x1CCA5E460](v15);
    }

    v11 = *(v8 + 56 + 8 * v17);
    ++v16;
    if (v11)
    {
      v16 = v17;
      do
      {
LABEL_7:
        v11 &= v11 - 1;
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75505AC();
        v18 = sub_1C7551FAC();

        v15 ^= v18;
      }

      while (v11);
      continue;
    }
  }

  __break(1u);
  return result;
}

void sub_1C7041F1C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_121_3(a1, a2, a3, a4, a5, a6, a7, a8, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  sub_1C7551FAC();
  v9 = 0;
  v10 = 0;
  OUTLINED_FUNCTION_11();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  if ((v12 & v11) != 0)
  {
    do
    {
      v16 = v10;
LABEL_7:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = *(*(v8 + 48) + (v17 | (v16 << 6)));
      sub_1C7551F3C();
      MEMORY[0x1CCA5E460](v18);
      v9 ^= sub_1C7551FAC();
    }

    while (v13);
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= v15)
    {
      MEMORY[0x1CCA5E460](v9);
      return;
    }

    v13 = *(v8 + 56 + 8 * v16);
    ++v10;
    if (v13)
    {
      v10 = v16;
      goto LABEL_7;
    }
  }

  __break(1u);
}

unint64_t sub_1C7042018()
{
  result = qword_1EDD0CEE8;
  if (!qword_1EDD0CEE8)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC215BF0, &qword_1C755C2F0);
    v4[0] = MEMORY[0x1E69E6190];
    result = swift_getWitnessTable(MEMORY[0x1E69E6510], v3, v4);
    atomic_store(result, &qword_1EDD0CEE8);
  }

  return result;
}

uint64_t sub_1C70420B4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

uint64_t sub_1C704210C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

uint64_t sub_1C7042164(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C70421BC(uint64_t a1, uint64_t a2)
{
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  (*(*(TokenCategoryType - 8) + 40))(a2, a1, TokenCategoryType);
  return a2;
}

unint64_t sub_1C7042240()
{
  result = qword_1EDD0E720;
  if (!qword_1EDD0E720)
  {
    result = swift_getWitnessTable(byte_1C75645F4, &type metadata for QueryTokenSuggestion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0E720);
  }

  return result;
}

unint64_t sub_1C7042294()
{
  result = qword_1EC216388;
  if (!qword_1EC216388)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryTokenSuggestion.CategoryType, &type metadata for QueryTokenSuggestion.CategoryType, v0, v1);
    atomic_store(result, &qword_1EC216388);
  }

  return result;
}

unint64_t sub_1C70422E8()
{
  result = qword_1EDD0BF90;
  if (!qword_1EDD0BF90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QuerySortOrder, &type metadata for QuerySortOrder, v0, v1);
    atomic_store(result, &qword_1EDD0BF90);
  }

  return result;
}

unint64_t sub_1C704233C()
{
  result = qword_1EDD0CF50;
  if (!qword_1EDD0CF50)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC217A00, &qword_1C755BD70);
    v4[0] = MEMORY[0x1E69E6190];
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EDD0CF50);
  }

  return result;
}

unint64_t sub_1C70423B8()
{
  result = qword_1EDD0B648;
  if (!qword_1EDD0B648)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GroundedLocation, &type metadata for GroundedLocation, v0, v1);
    atomic_store(result, &qword_1EDD0B648);
  }

  return result;
}

unint64_t sub_1C704240C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215D90, &unk_1C7563BE0);
    sub_1C7038430(v4);
    v5 = OUTLINED_FUNCTION_57_3();
    result = swift_getWitnessTable(v5);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C70424A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_164(a1, a2, a3, a4);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return v4;
}

unint64_t sub_1C70424EC()
{
  result = qword_1EC2163D0;
  if (!qword_1EC2163D0)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC219300, &unk_1C7577770);
    v4[0] = MEMORY[0x1E69E7628];
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EC2163D0);
  }

  return result;
}

unint64_t sub_1C7042568()
{
  result = qword_1EDD0BF98;
  if (!qword_1EDD0BF98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QuerySortOrder, &type metadata for QuerySortOrder, v0, v1);
    atomic_store(result, &qword_1EDD0BF98);
  }

  return result;
}

unint64_t sub_1C70425BC()
{
  result = qword_1EC2163E0;
  if (!qword_1EC2163E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryTokenSuggestion.CategoryType, &type metadata for QueryTokenSuggestion.CategoryType, v0, v1);
    atomic_store(result, &qword_1EC2163E0);
  }

  return result;
}

unint64_t sub_1C7042610(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216398, &qword_1C7563BD0);
    sub_1C7038430(v4);
    v5 = OUTLINED_FUNCTION_57_3();
    result = swift_getWitnessTable(v5);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C70426A4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2163C0, &qword_1C7563BD8);
    v4();
    v5 = OUTLINED_FUNCTION_111();
    result = swift_getWitnessTable(v5);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C7042714()
{
  result = qword_1EDD0B650;
  if (!qword_1EDD0B650)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GroundedLocation, &type metadata for GroundedLocation, v0, v1);
    atomic_store(result, &qword_1EDD0B650);
  }

  return result;
}

uint64_t sub_1C7042768(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_164(a1, a2, a3, a4);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return v4;
}

unint64_t sub_1C70427B4()
{
  result = qword_1EC216420;
  if (!qword_1EC216420)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC219300, &unk_1C7577770);
    v4[0] = MEMORY[0x1E69E7600];
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EC216420);
  }

  return result;
}

unint64_t sub_1C7042834()
{
  result = qword_1EDD086F0;
  if (!qword_1EDD086F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryTokenCategoryTypeString, &type metadata for QueryTokenCategoryTypeString, v0, v1);
    atomic_store(result, &qword_1EDD086F0);
  }

  return result;
}

unint64_t sub_1C704288C()
{
  result = qword_1EC216428;
  if (!qword_1EC216428)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216430, &qword_1C7563C98);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EC216428);
  }

  return result;
}

unint64_t sub_1C7042984()
{
  result = qword_1EC216448;
  if (!qword_1EC216448)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryTokenSuggestion.CategoryType, &type metadata for QueryTokenSuggestion.CategoryType, v0, v1);
    atomic_store(result, &qword_1EC216448);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LLMModelType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for QueryTokenCategoryTypeString(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

void sub_1C7042B84(uint64_t a1)
{
  sub_1C7042C9C(319, &qword_1EC216468, sub_1C7042C44);
  if (v1 <= 0x3F)
  {
    sub_1C7042C9C(319, &qword_1EC216478, MEMORY[0x1E6968278]);
    if (v2 <= 0x3F)
    {
      sub_1C7042CE8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1C7042C44()
{
  if (!qword_1EC216470)
  {
    v0 = sub_1C755101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC216470);
    }
  }
}

void sub_1C7042C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C7042CE8(uint64_t a1)
{
  if (!qword_1EC216480)
  {
    sub_1C754DABC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC216480);
    }
  }
}

void sub_1C7042D50(uint64_t a1)
{
  sub_1C7042C9C(319, &unk_1EDD0CF80, sub_1C704303C);
  if (v1 <= 0x3F)
  {
    sub_1C704308C(319, &qword_1EDD0CF20, &qword_1EDD0CF18, type metadata accessor for PHFaceAgeType, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C70430E0(319);
      if (v3 <= 0x3F)
      {
        sub_1C704308C(319, &qword_1EDD0CFA0, &qword_1EDD0CF98, MEMORY[0x1E69C19F0], MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1C7042C9C(319, &qword_1EDD0D0E8, MEMORY[0x1E69C1750]);
          if (v5 <= 0x3F)
          {
            sub_1C7042C9C(319, &qword_1EDD0D0D0, MEMORY[0x1E69C1980]);
            if (v6 <= 0x3F)
            {
              sub_1C7043154(319);
              if (v7 <= 0x3F)
              {
                sub_1C7042C9C(319, &qword_1EDD0DF28, type metadata accessor for GroundedGenericLocation);
                if (v8 <= 0x3F)
                {
                  sub_1C704308C(319, &qword_1EDD0D0E0, &qword_1EDD0D0D8, MEMORY[0x1E69C17C8], MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
                  {
                    sub_1C70431E0(319);
                    if (v10 <= 0x3F)
                    {
                      sub_1C704308C(319, &qword_1EDD0CF30, &qword_1EDD0CF28, type metadata accessor for PHMemoryMood, MEMORY[0x1E69E62F8]);
                      if (v11 <= 0x3F)
                      {
                        sub_1C7042C9C(319, &unk_1EDD0CDC8, type metadata accessor for PHMemoryCurationLength);
                        if (v12 <= 0x3F)
                        {
                          sub_1C7042C9C(319, &qword_1EDD0CF78, sub_1C704303C);
                          if (v13 <= 0x3F)
                          {
                            sub_1C70432C4();
                            if (v14 <= 0x3F)
                            {
                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
        }
      }
    }
  }
}

void sub_1C704303C()
{
  if (!qword_1EDD0CF70)
  {
    v0 = sub_1C7550C3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD0CF70);
    }
  }
}

void sub_1C704308C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1C7043260(0, a3, a4, a5);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1C70430E0(uint64_t a1)
{
  if (!qword_1EDD0F9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC218C50, &qword_1C75606A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDD0F9F8);
    }
  }
}

void sub_1C7043154(uint64_t a1)
{
  if (!qword_1EDD0D050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2163C0, &qword_1C7563BD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC215BF0, &qword_1C755C2F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDD0D050);
    }
  }
}

void sub_1C70431E0(uint64_t a1)
{
  if (!qword_1EC216488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216320, &unk_1C7563B80);
    type metadata accessor for PersonalEventBackingItem(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC216488);
    }
  }
}

void sub_1C7043260(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

ValueMetadata *sub_1C70432C4()
{
  result = qword_1EDD0F308[0];
  if (!qword_1EDD0F308[0])
  {
    result = &type metadata for QuerySortOrder;
    atomic_store(&type metadata for QuerySortOrder, qword_1EDD0F308);
  }

  return result;
}

uint64_t sub_1C7043314(uint64_t a1)
{
  result = type metadata accessor for QueryTokenCategoryType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QueryTokenSuggestion.CategoryType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for QueryTokenSuggestion.CategoryType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StoryGenerationDiagnosticContext.GenerationStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for QueryTokenSuggestion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}