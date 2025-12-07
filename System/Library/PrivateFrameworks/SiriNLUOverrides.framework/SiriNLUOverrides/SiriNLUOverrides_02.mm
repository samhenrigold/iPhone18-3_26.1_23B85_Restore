uint64_t sub_2680ADF74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_50_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1_1();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_2680ADFC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_50_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1_1();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_2680AE00C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_33_1()
{

  return sub_2680B3EBC();
}

uint64_t OUTLINED_FUNCTION_41_0()
{

  return sub_2680B30CC();
}

void SiriNLOverride.init(inputText:ruleId:locale:namespace:source:overrideId:parse:ruleData:utteranceComparisonType:timeStamp:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, int a16, unint64_t a17)
{
  v59 = a7;
  v60 = a8;
  v57 = a5;
  v58 = a6;
  v56 = a4;
  v65 = a16;
  v63 = a12;
  v64 = a13;
  v61 = a10;
  v62 = a11;
  v21 = sub_2680B403C();
  v22 = OUTLINED_FUNCTION_7(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6();
  v54 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492A8, &unk_2680B5680);
  OUTLINED_FUNCTION_7(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v26);
  v55 = &v52 - v27;
  v28 = type metadata accessor for SiriNLOverride(0);
  v29 = a9 + v28[14];
  *v29 = xmmword_2680B5660;
  v30 = v28[15];
  v31 = sub_2680B3E9C();
  v53 = v30;
  __swift_storeEnumTagSinglePayload(a9 + v30, 1, 1, v31);
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  v32 = v56;
  v33 = v57;
  *a9 = a3;
  *(a9 + 8) = v32;
  v34 = v58;
  *(a9 + 32) = v33;
  *(a9 + 40) = v34;
  LODWORD(v34) = v60;
  *(a9 + 48) = v59;
  *(a9 + 52) = v34;
  v35 = v28[9];
  sub_2680B2E6C();
  v36 = sub_2680B2E9C();
  __swift_storeEnumTagSinglePayload(a9 + v35, 0, 1, v36);
  *(a9 + v28[10]) = 1;
  v37 = (a9 + v28[11]);
  v38 = v62;
  *v37 = v61;
  v37[1] = v38;
  v39 = (a9 + v28[12]);
  v40 = v64;
  *v39 = v63;
  v39[1] = v40;
  *(a9 + v28[13]) = v65;
  v41 = *v29;
  v42 = *(v29 + 8);
  *v29 = a14;
  *(v29 + 8) = a15;
  v43 = OUTLINED_FUNCTION_26();
  sub_2680A155C(v43, v44);
  sub_26808A734(v41, v42);
  if (a15 >> 60 != 15)
  {
    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v45 = OUTLINED_FUNCTION_26();
    sub_26808A6DC(v45, v46);
    sub_2680B402C();
    OUTLINED_FUNCTION_2_6();
    sub_2680AFD28(v47, v48, MEMORY[0x277D5DD90]);
    v49 = v55;
    OUTLINED_FUNCTION_26();
    sub_2680B404C();
    v50 = OUTLINED_FUNCTION_26();
    sub_26808A734(v50, v51);
    __swift_storeEnumTagSinglePayload(v49, 0, 1, v31);
    sub_26808A7A0(v49, a9 + v53);
  }
}

uint64_t sub_2680AE4E8(uint64_t a1)
{
  v1 = a1;
  sub_2680B452C();
  v2 = sub_26808DCA4(v1);
  OUTLINED_FUNCTION_10_4(v2, v3, v4);

  return sub_2680B454C();
}

uint64_t sub_2680AE538(uint64_t a1)
{
  v1 = a1;
  sub_2680B452C();
  sub_2680AE688(v3, v1);
  return sub_2680B454C();
}

uint64_t sub_2680AE580(uint64_t a1, char a2)
{
  sub_2680B410C();
}

uint64_t sub_2680AE688(uint64_t a1, char a2)
{
  sub_2680B410C();
}

uint64_t sub_2680AE7CC(uint64_t a1, char a2)
{
  sub_2680B452C();
  sub_2680AE688(v4, a2);
  return sub_2680B454C();
}

uint64_t sub_2680AE810(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_2680B452C();
  v3 = sub_26808DCA4(v2);
  OUTLINED_FUNCTION_10_4(v3, v4, v5);

  return sub_2680B454C();
}

uint64_t SiriNLOverride.Error.hashValue.getter()
{
  v1 = *v0;
  sub_2680B452C();
  MEMORY[0x26D6100D0](v1);
  return sub_2680B454C();
}

uint64_t sub_2680AE8F4(uint64_t a1)
{
  v2 = *v1;
  sub_2680B452C();
  MEMORY[0x26D6100D0](v2);
  return sub_2680B454C();
}

uint64_t SiriNLOverride.overrideId.getter()
{
  type metadata accessor for SiriNLOverride(0);

  return OUTLINED_FUNCTION_3_6();
}

uint64_t sub_2680AEA78()
{
  type metadata accessor for SiriNLOverride(0);
  v0 = OUTLINED_FUNCTION_3_6();
  sub_2680A155C(v0, v1);
  return OUTLINED_FUNCTION_3_6();
}

uint64_t SiriNLOverride.utteranceComparisonType.setter(int a1)
{
  result = type metadata accessor for SiriNLOverride(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t SiriNLOverride.archivedNluRequestRule.getter()
{
  type metadata accessor for SiriNLOverride(0);
  v0 = OUTLINED_FUNCTION_3_6();
  sub_2680A155C(v0, v1);
  return OUTLINED_FUNCTION_3_6();
}

void SiriNLOverride.archivedNluRequestRule.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SiriNLOverride(0) + 56);
  sub_26808A734(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
}

SiriNLUOverrides::SiriNLOverride::CodingKeys_optional __swiftcall SiriNLOverride.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2680B43EC();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

SiriNLUOverrides::SiriNLOverride::CodingKeys_optional __swiftcall SiriNLOverride.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = SiriNLOverride.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_2680AECCC()
{
  result = 25705;
  switch(*v0)
  {
    case 1:
      result = 0x7865547475706E69;
      break;
    case 2:
      result = 0x656C61636F6CLL;
      break;
    case 3:
      result = 0x63617073656D616ELL;
      break;
    case 4:
      result = 0x656372756F73;
      break;
    case 5:
      result = 0x6E6F697461657263;
      break;
    case 6:
      result = 0x64656C62616E65;
      break;
    case 7:
      result = 0x656469727265766FLL;
      break;
    case 8:
      result = 0x7372615072657375;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2680AEE08@<X0>(uint64_t *a1@<X8>)
{
  result = SiriNLOverride.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2680AEE48(uint64_t a1)
{
  v2 = sub_2680AFC88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2680AEE84(uint64_t a1)
{
  v2 = sub_2680AFC88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriNLOverride.dictionary.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249380, &unk_2680B5A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2680B5360;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v2 = v0[1];
  *(inited + 48) = *v0;
  *(inited + 56) = v2;
  *(inited + 64) = 0x7865547475706E69;
  *(inited + 72) = 0xE900000000000074;
  v3 = v0[3];
  *(inited + 80) = v0[2];
  *(inited + 88) = v3;
  *(inited + 96) = 0x656C61636F6CLL;
  *(inited + 104) = 0xE600000000000000;
  v4 = v0[4];
  v5 = v0[5];
  *(inited + 112) = v4;
  *(inited + 120) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249248, &qword_2680B5498);
  return sub_2680B407C();
}

void *SiriNLOverride.criteria.getter()
{
  v0 = SiriNLOverride.dictionary.getter();
  v1 = sub_2680AF090(v0);

  sub_26809EB44(25705, 0xE200000000000000);
  if (v2)
  {
    swift_isUniquelyReferenced_nonNull_native();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249388, &qword_2680B5A20);
    sub_2680B43AC();

    OUTLINED_FUNCTION_3_6();
    sub_2680B43BC();
  }

  return v1;
}

uint64_t sub_2680AF090(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v32 = MEMORY[0x277D84F98];
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

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 56) + 16 * v12);
    v14 = v13[1];
    if (v14)
    {
      v15 = (*(a1 + 48) + 16 * v12);
      v30 = v15[1];
      v31 = *v15;
      v29 = *v13;
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {

        sub_2680AF990(v16 + 1, 1);
        v2 = v32;
      }

      else
      {
      }

      sub_2680B452C();
      sub_2680B410C();
      result = sub_2680B454C();
      v17 = v2 + 64;
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v18) >> 6;
        v22 = v30;
        while (++v20 != v24 || (v23 & 1) == 0)
        {
          v25 = v20 == v24;
          if (v20 == v24)
          {
            v20 = 0;
          }

          v23 |= v25;
          v26 = *(v17 + 8 * v20);
          if (v26 != -1)
          {
            v21 = __clz(__rbit64(~v26)) + (v20 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      v22 = v30;
LABEL_23:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = (*(v2 + 48) + 16 * v21);
      *v27 = v31;
      v27[1] = v22;
      v28 = (*(v2 + 56) + 16 * v21);
      *v28 = v29;
      v28[1] = v14;
      ++*(v2 + 16);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t SiriNLOverride.description.getter()
{
  sub_2680B432C();

  v1 = (v0 + *(type metadata accessor for SiriNLOverride(0) + 44));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v3 = 0xE500000000000000;
    v2 = 0x7974706D65;
  }

  MEMORY[0x26D60FCB0](v2, v3);

  MEMORY[0x26D60FCB0](0x6449656C7572202CLL, 0xE90000000000003DLL);
  MEMORY[0x26D60FCB0](*v0, v0[1]);
  MEMORY[0x26D60FCB0](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t SiriNLOverride.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249250, &qword_2680B54D8);
  OUTLINED_FUNCTION_7(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249390, &qword_2680B5A28);
  OUTLINED_FUNCTION_4();
  v9 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  type metadata accessor for SiriNLOverride(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6();
  v16 = v15 - v14;
  v33 = v15 - v14 + v17[14];
  *v33 = xmmword_2680B5660;
  v36 = v17;
  v18 = v17[15];
  v19 = sub_2680B3E9C();
  v34 = v18;
  __swift_storeEnumTagSinglePayload(v16 + v18, 1, 1, v19);
  v20 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_2680AFC88();
  sub_2680B455C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v35);
    sub_26808A734(*v33, *(v33 + 8));
    return sub_26808C18C(v16 + v34, &qword_2802492A8, &unk_2680B5680);
  }

  else
  {
    LOBYTE(v37) = 0;
    *v16 = sub_2680B441C();
    *(v16 + 8) = v21;
    OUTLINED_FUNCTION_0_5(1);
    v22 = sub_2680B441C();
    v23 = v36;
    *(v16 + 16) = v22;
    *(v16 + 24) = v24;
    OUTLINED_FUNCTION_0_5(2);
    *(v16 + 32) = sub_2680B441C();
    *(v16 + 40) = v25;
    OUTLINED_FUNCTION_0_5(3);
    *(v16 + 48) = sub_2680B443C();
    OUTLINED_FUNCTION_0_5(4);
    *(v16 + 52) = sub_2680B443C();
    sub_2680B2E9C();
    LOBYTE(v37) = 5;
    sub_2680AFD28(&qword_2802493A0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_2680B440C();
    sub_2680AFD70(v7, v16 + v23[9]);
    OUTLINED_FUNCTION_0_5(6);
    *(v16 + v23[10]) = sub_2680B442C() & 1;
    OUTLINED_FUNCTION_0_5(7);
    v26 = sub_2680B43FC();
    v27 = (v16 + v23[11]);
    *v27 = v26;
    v27[1] = v28;
    v38 = 8;
    sub_2680AFDE0();
    sub_2680B440C();
    *(v16 + v23[12]) = v37;
    OUTLINED_FUNCTION_0_5(9);
    v29 = sub_2680B443C();
    (*(v9 + 8))(v12, v32);
    *(v16 + v36[13]) = v29;
    sub_2680A1778(v16, v31);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return sub_2680AFE34(v16);
  }
}

uint64_t sub_2680AF990(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802493D0, &qword_2680B5D18);
  v36 = v4;
  result = sub_2680B43DC();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v35 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
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
        goto LABEL_34;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      sub_2680B04A4(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 16 * v18);
    v23 = v22[1];
    v37 = *v22;
    if ((v36 & 1) == 0)
    {
    }

    sub_2680B452C();
    sub_2680B410C();
    result = sub_2680B454C();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    v33 = (*(v7 + 56) + 16 * v27);
    *v33 = v37;
    v33[1] = v23;
    ++*(v7 + 16);
    v5 = v35;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2680AFC88()
{
  result = qword_280249398;
  if (!qword_280249398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280249398);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2680AFD28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2680AFD70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249250, &qword_2680B54D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2680AFDE0()
{
  result = qword_2802493A8;
  if (!qword_2802493A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802493A8);
  }

  return result;
}

uint64_t sub_2680AFE34(uint64_t a1)
{
  v2 = type metadata accessor for SiriNLOverride(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2680AFE94()
{
  result = qword_2802493B0;
  if (!qword_2802493B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802493B0);
  }

  return result;
}

unint64_t sub_2680AFEEC()
{
  result = qword_2802493B8;
  if (!qword_2802493B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802493B8);
  }

  return result;
}

unint64_t sub_2680AFF44()
{
  result = qword_2802493C0;
  if (!qword_2802493C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802493C0);
  }

  return result;
}

unint64_t sub_2680AFF9C()
{
  result = qword_2802493C8;
  if (!qword_2802493C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802493C8);
  }

  return result;
}

void sub_2680AFFF0(uint64_t a1)
{
  sub_2680B017C(319, &unk_2813196B0, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    sub_2680B0130(319, &qword_281318F90, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_2680B0130(319, &qword_2813192F8, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        sub_2680B017C(319, &qword_2813192A8, MEMORY[0x277D5DD98]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2680B0130(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2680B42AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2680B017C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2680B42AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SiriNLOverride.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriNLOverride.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SiriNLOverride.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriNLOverride.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2680B04A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2680B5A00;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_2680B08F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2680B0B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2680B1104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2680B18F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  marisa::Agent::~Agent(&a9);

  _Unwind_Resume(a1);
}

void sub_2680B1AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  v15 = v10;
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v13 = OverridesLogContext;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInt:v15];
      *(v11 - 48) = 136315394;
      *(v11 - 44) = "[SiriNLUMarisaTrie reverseLookupRow:]";
      *(v11 - 36) = 2114;
      *(v11 - 34) = v14;
      _os_log_error_impl(&dword_268086000, v13, OS_LOG_TYPE_ERROR, "%s [ERR]: Exception: keyID out of trie bounds. Returning nil key. {keyID: %{public}@}", (v11 - 48), 0x16u);
    }

    __cxa_end_catch();
    JUMPOUT(0x2680B1A88);
  }

  marisa::Agent::~Agent(va);
  _Unwind_Resume(a1);
}

void *std::string::basic_string[abi:ne200100](void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

void std::__throw_length_error[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception);
  __cxa_throw(exception, off_279C32AB0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "basic_string");
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_2680B20E8(_Unwind_Exception *a1, void *a2, void *a3, void *a4, void *a5, ...)
{
  va_start(va, a5);

  marisa::Agent::~Agent(va);
  _Unwind_Resume(a1);
}

void sub_2680B23F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  marisa::Agent::~Agent(&v24);

  _Unwind_Resume(a1);
}

void sub_2680B2698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  marisa::Agent::~Agent(&v24);

  _Unwind_Resume(a1);
}

void sub_2680B28C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2680B2C74(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}