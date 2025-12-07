uint64_t FastSyncActivity.metadata.getter()
{
  sub_227A71ECC();
  OUTLINED_FUNCTION_51();
  v1 = OUTLINED_FUNCTION_49_0();

  return v2(v1, v0);
}

uint64_t FastSyncActivity.metadata.setter(uint64_t a1)
{
  sub_227A71ECC();
  OUTLINED_FUNCTION_51();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t FastSyncActivity.id.getter()
{
  v1 = *(v0 + *(type metadata accessor for FastSyncActivity(0) + 20));

  return v1;
}

uint64_t sub_227A06AF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_227A72E5C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701667182 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_227A72E5C();

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

uint64_t sub_227A06C14(char a1)
{
  if (!a1)
  {
    return 0x617461646174656DLL;
  }

  if (a1 == 1)
  {
    return 25705;
  }

  return 1701667182;
}

uint64_t sub_227A06C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A06AF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A06CA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227A06C00();
  *a1 = result;
  return result;
}

uint64_t sub_227A06CD0(uint64_t a1)
{
  v2 = sub_227A06E80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A06D0C(uint64_t a1)
{
  v2 = sub_227A06E80();

  return MEMORY[0x2821FE720](a1, v2);
}

void FastSyncActivity.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_14_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC968, &qword_227AA1240);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_7_5();
  v18 = sub_227A06E80();
  OUTLINED_FUNCTION_17_1(&type metadata for FastSyncActivity.CodingKeys, v19, v18);
  OUTLINED_FUNCTION_45_0();
  sub_227A71ECC();
  OUTLINED_FUNCTION_23_0();
  v22 = sub_227A07200(v20, v21, MEMORY[0x277CCB168]);
  OUTLINED_FUNCTION_2_4(v22);
  if (!v16)
  {
    v23 = type metadata accessor for FastSyncActivity(0);
    OUTLINED_FUNCTION_10_2(v23);
    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_18_2();
    sub_227A72DCC();
  }

  v24 = OUTLINED_FUNCTION_15_3();
  v25(v24);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_75_0();
}

unint64_t sub_227A06E80()
{
  result = qword_27D7DC970;
  if (!qword_27D7DC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC970);
  }

  return result;
}

void FastSyncActivity.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_41_0();
  v24 = v23;
  v49 = v25;
  v26 = sub_227A71ECC();
  OUTLINED_FUNCTION_92();
  v51 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_2();
  v31 = v30 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC980, &qword_227AA1248);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_30_0();
  v50 = type metadata accessor for FastSyncActivity(0);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_2();
  v36 = v35 - v34;
  sub_227A71EBC();
  OUTLINED_FUNCTION_12_2(v24);
  sub_227A06E80();
  OUTLINED_FUNCTION_70_0();
  sub_227A72F5C();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    (*(v51 + 8))(v36, v26);
  }

  else
  {
    OUTLINED_FUNCTION_23_0();
    sub_227A07200(v37, v38, MEMORY[0x277CCB170]);
    OUTLINED_FUNCTION_22_0();
    sub_227A72D7C();
    (*(v51 + 40))(v36, v31, v26);
    OUTLINED_FUNCTION_37_0();
    v39 = sub_227A72D4C();
    v40 = (v36 + *(v50 + 20));
    *v40 = v39;
    v40[1] = v41;
    OUTLINED_FUNCTION_51_0();
    v42 = sub_227A72D4C();
    v48 = v43;
    v44 = v42;
    v45 = OUTLINED_FUNCTION_34_0();
    v46(v45);
    v47 = (v36 + *(v50 + 24));
    *v47 = v44;
    v47[1] = v48;
    sub_227A0CDA0(v36, v49, type metadata accessor for FastSyncActivity);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    sub_227A0CE00(v36, type metadata accessor for FastSyncActivity);
  }

  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A07200(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227A073A0()
{
  FastSyncActivity.metadata.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227A07414@<X0>(uint64_t *a1@<X8>)
{
  result = FastSyncActivity.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_227A07494(uint64_t a1)
{
  result = sub_227A71ECC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_227A07580(uint64_t a1)
{
  if (!qword_27D7DC9D0)
  {
    sub_227A075DC();
    v1 = sub_227A7286C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7DC9D0);
    }
  }
}

unint64_t sub_227A075DC()
{
  result = qword_27D7DC9D8;
  if (!qword_27D7DC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC9D8);
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

uint64_t sub_227A0763C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_227A0767C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for FastSyncActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7D)
  {
    if (a2 + 131 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 131) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 132;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v5 >= 0x7C)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for FastSyncActionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7D)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7C)
  {
    v6 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
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
          *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_227A0783C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 6;
  v4 = (v1 | 0xFFFFFFFE) + 2 * (v1 >> 6);
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_BYTE *sub_227A0786C(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    LOBYTE(v2) = *result & 1 | (a2 << 6);
  }

  else
  {
    v2 = (a2 & 1 | (a2 >> 1 << 6)) + 64;
  }

  *result = v2;
  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm()
{
  v3 = OUTLINED_FUNCTION_27_1();
  v4(v3);
  OUTLINED_FUNCTION_43_0();
  if (*(v5 + 84) != v1)
  {
    return OUTLINED_FUNCTION_26_1(*(v0 + *(v2 + 20) + 8));
  }

  v6 = OUTLINED_FUNCTION_49_0();

  return __swift_getEnumTagSinglePayload(v6, v1, v7);
}

void __swift_store_extra_inhabitant_indexTm()
{
  v4 = OUTLINED_FUNCTION_20_0();
  v5(v4);
  OUTLINED_FUNCTION_43_0();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_8_2();

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 - 1);
  }
}

uint64_t sub_227A07A88()
{
  result = sub_227A71C6C();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_57_0(result, v1, v2, v3, v4, v5, v6, v7, v8, v9, 0, 0, result);
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm()
{
  OUTLINED_FUNCTION_27_1();
  sub_227A71C6C();
  OUTLINED_FUNCTION_43_0();
  if (*(v3 + 84) != v1)
  {
    return OUTLINED_FUNCTION_26_1(*(v0 + *(v2 + 24) + 8));
  }

  v4 = OUTLINED_FUNCTION_49_0();

  return __swift_getEnumTagSinglePayload(v4, v1, v5);
}

void __swift_store_extra_inhabitant_index_9Tm()
{
  OUTLINED_FUNCTION_20_0();
  sub_227A71C6C();
  OUTLINED_FUNCTION_43_0();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_8_2();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24) + 8) = (v0 - 1);
  }
}

void sub_227A07C5C()
{
  v0 = sub_227A71C6C();
  if (v1 <= 0x3F)
  {
    v12 = v0;
    sub_227A07580(319);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_57_0(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, 0, 0, v12);
    }
  }
}

unint64_t sub_227A07CF4()
{
  result = qword_27D7DCA10;
  if (!qword_27D7DCA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCA10);
  }

  return result;
}

uint64_t sub_227A07D48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_227A72E5C();

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

uint64_t sub_227A07E10(char a1)
{
  if (a1)
  {
    return 25705;
  }

  else
  {
    return 1635017060;
  }
}

void sub_227A07E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_74_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCDD8, &qword_227AA2950);
  OUTLINED_FUNCTION_92();
  v19 = v18;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_7_5();
  sub_227A0E7A8();
  sub_227A72F6C();
  v23 = *v14;
  v24 = v14[1];
  sub_2279E3ED0(*v14, v24);
  sub_227A0E850();
  sub_227A72DBC();
  sub_2279E3F90(v23, v24);
  if (!v15)
  {
    type metadata accessor for DataMessage(0);
    sub_227A71C6C();
    OUTLINED_FUNCTION_0_14();
    sub_227A07200(v21, v22, MEMORY[0x277CC95F8]);
    sub_227A72DFC();
  }

  (*(v19 + 8))(v16, v17);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_75_0();
}

void sub_227A07FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_41_0();
  v25 = v24;
  v43 = v26;
  v44 = sub_227A71C6C();
  OUTLINED_FUNCTION_92();
  v42 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_2();
  v31 = v30 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCDC0, &qword_227AA2948);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_30_0();
  v33 = type metadata accessor for DataMessage(0);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_2();
  v37 = (v36 - v35);
  OUTLINED_FUNCTION_168(v25, v25[3]);
  sub_227A0E7A8();
  OUTLINED_FUNCTION_70_0();
  sub_227A72F5C();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  else
  {
    sub_227A0E7FC();
    sub_227A72D3C();
    *v37 = v45;
    OUTLINED_FUNCTION_0_14();
    sub_227A07200(v38, v39, MEMORY[0x277CC9618]);
    sub_227A72D7C();
    v40 = OUTLINED_FUNCTION_69_0();
    v41(v40);
    (*(v42 + 32))(&v37[*(v33 + 20)], v31, v44);
    sub_227A0CDA0(v37, v43, type metadata accessor for DataMessage);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    sub_227A0CE00(v37, type metadata accessor for DataMessage);
  }

  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A082B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A07D48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A082DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227A07E08();
  *a1 = result;
  return result;
}

uint64_t sub_227A08304(uint64_t a1)
{
  v2 = sub_227A0E7A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A08340(uint64_t a1)
{
  v2 = sub_227A0E7A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A0837C()
{
  sub_227A71C6C();
  OUTLINED_FUNCTION_51();
  v0 = OUTLINED_FUNCTION_49_0();

  return v1(v0);
}

unint64_t sub_227A08414(unsigned __int8 a1)
{
  v2 = a1 >> 6;
  result = 0x616843206E696F4ALL;
  switch(v2)
  {
    case 1:
      return result;
    case 2:
      if (a1 == 128)
      {
        result = 0x6E776F6E6B6E55;
      }

      else
      {
        result = 0x75512065726F6353;
      }

      break;
    case 3:
      if (a1 == 192)
      {
        result = 0xD000000000000014;
      }

      else
      {
        result = 0xD000000000000013;
      }

      break;
    default:
      if (a1)
      {
        v4 = 0x6168437962626F6CLL;
      }

      else
      {
        v4 = 0x6E616843656D6167;
      }

      if (a1)
      {
        v5 = 0xEC0000006C656E6ELL;
      }

      else
      {
        v5 = 0xEB000000006C656ELL;
      }

      MEMORY[0x22AA9FE40](v4, v5);

      MEMORY[0x22AA9FE40](41, 0xE100000000000000);
      result = 0x6F6974617267694DLL;
      break;
  }

  return result;
}

uint64_t sub_227A08580(char a1)
{
  if (a1)
  {
    return 0x6168437962626F6CLL;
  }

  else
  {
    return 0x6E616843656D6167;
  }
}

uint64_t sub_227A085C8(unsigned __int8 a1)
{
  if ((a1 >> 6) > 1u)
  {
    v1 = 0;
  }

  else
  {
    if (a1)
    {
      v1 = 1;
    }

    else
    {
      v1 = sub_227A72E5C();
    }
  }

  return v1 & 1;
}

uint64_t sub_227A08660(uint64_t a1, uint64_t a2)
{
  v2 = sub_227A72CFC();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227A086D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227A08660(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_227A08708@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227A08580(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227A087E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F6974617267696DLL && a2 == 0xE90000000000006ELL;
    if (v6 || (sub_227A72E5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65755165726F6373 && a2 == 0xEA00000000007972;
      if (v7 || (sub_227A72E5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x8000000227A98B20 == a2;
        if (v8 || (sub_227A72E5C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x8000000227A98B40 == a2;
          if (v9 || (sub_227A72E5C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E6168436E696F6ALL && a2 == 0xEB000000006C656ELL)
          {

            return 5;
          }

          else
          {
            v11 = sub_227A72E5C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_227A089F8(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6F6974617267696DLL;
      break;
    case 2:
      result = 0x65755165726F6373;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x6E6168436E696F6ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227A08ACC(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_227A72E5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_227A08B44(uint64_t a1)
{
  OUTLINED_FUNCTION_73_0(a1);
  MEMORY[0x22AAA07F0](0);
  return sub_227A72F4C();
}

void sub_227A08B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_41_0();
  a26 = v29;
  a27 = v30;
  v70 = v31;
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCBB0, &qword_227AA1AB0);
  OUTLINED_FUNCTION_92();
  v69 = v34;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_36_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCBB8, &qword_227AA1AB8);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_36_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCBC0, &qword_227AA1AC0);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_36_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCBC8, &qword_227AA1AC8);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_36_0();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCBD0, &qword_227AA1AD0);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_54_0();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCBD8, &qword_227AA1AD8);
  OUTLINED_FUNCTION_92();
  v68 = v42;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_31_0();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCBE0, &qword_227AA1AE0);
  OUTLINED_FUNCTION_92();
  v45 = v44;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_53_0();
  v47 = v33[4];
  OUTLINED_FUNCTION_168(v33, v33[3]);
  sub_227A0CFCC();
  sub_227A72F6C();
  switch(v70 >> 6)
  {
    case 1:
      a17 = 5;
      sub_227A0D020();
      sub_227A72D9C();
      a16 = v70 & 1;
      sub_227A0D26C();
      sub_227A72DFC();
      v57 = OUTLINED_FUNCTION_42_0();
      v58(v57, v69);
      (*(v45 + 8))(v28, v71);
      break;
    case 2:
      v53 = (v45 + 8);
      if (v70 == 128)
      {
        sub_227A0D218();
        v47 = v71;
        sub_227A72D9C();
        (*(v68 + 8))(v27, v41);
        goto LABEL_12;
      }

      a13 = 2;
      v59 = sub_227A0D170();
      OUTLINED_FUNCTION_19_1(&type metadata for FastSyncActionType.ScoreQueryCodingKeys, &a13, v60, v61, v59);
      goto LABEL_11;
    case 3:
      v53 = (v45 + 8);
      if (v70 == 192)
      {
        a14 = 3;
        v54 = sub_227A0D11C();
        OUTLINED_FUNCTION_19_1(&type metadata for FastSyncActionType.ScoreQueryResponseCodingKeys, &a14, v55, v56, v54);
      }

      else
      {
        a15 = 4;
        v62 = sub_227A0D0C8();
        OUTLINED_FUNCTION_19_1(&type metadata for FastSyncActionType.UpdateParticipantsCodingKeys, &a15, v63, v64, v62);
      }

LABEL_11:
      v65 = OUTLINED_FUNCTION_42_0();
      v67(v65, v66);
LABEL_12:
      (*v53)(v28, v47);
      break;
    default:
      a12 = 1;
      v48 = sub_227A0D1C4();
      OUTLINED_FUNCTION_19_1(&type metadata for FastSyncActionType.MigrationCodingKeys, &a12, v49, v50, v48);
      sub_227A0D26C();
      sub_227A72DFC();
      v51 = OUTLINED_FUNCTION_42_0();
      v52(v51, v39);
      (*(v45 + 8))(v28, v47);
      break;
  }

  OUTLINED_FUNCTION_40_0();
}

void sub_227A0913C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, unsigned __int8 a11, char a12, char a13, char a14, char a15, unsigned __int8 a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_41_0();
  a26 = v30;
  a27 = v31;
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB30, &qword_227AA1A70);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_36_0();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB38, &qword_227AA1A78);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_36_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB40, &qword_227AA1A80);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_36_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB48, &qword_227AA1A88);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_36_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB50, &qword_227AA1A90);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_54_0();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB58, &qword_227AA1A98);
  OUTLINED_FUNCTION_92();
  v95 = v40;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_31_0();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB60, &unk_227AA1AA0);
  OUTLINED_FUNCTION_92();
  v44 = v43;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_30_0();
  v97 = v33;
  OUTLINED_FUNCTION_168(v33, v33[3]);
  sub_227A0CFCC();
  OUTLINED_FUNCTION_70_0();
  sub_227A72F5C();
  if (v27)
  {
    goto LABEL_8;
  }

  v94 = v39;
  v98 = v44;
  sub_227A72D8C();
  sub_227A46010();
  if (v47 == v48 >> 1)
  {
    goto LABEL_7;
  }

  if (v47 < (v48 >> 1))
  {
    v49 = *(v46 + v47);
    sub_227A46008();
    v51 = v50;
    v53 = v52;
    swift_unknownObjectRelease();
    if (v51 == v53 >> 1)
    {
      switch(v49)
      {
        case 1:
          a12 = 1;
          sub_227A0D1C4();
          sub_227A72D0C();
          sub_227A0D074();
          OUTLINED_FUNCTION_71_0(&type metadata for FastSyncActionType.ChannelActionType);
          swift_unknownObjectRelease();
          v86 = OUTLINED_FUNCTION_82();
          v87(v86);
          v88 = OUTLINED_FUNCTION_55_0();
          v89(v88);
          break;
        case 2:
          a13 = 2;
          v69 = sub_227A0D170();
          OUTLINED_FUNCTION_11_3(&type metadata for FastSyncActionType.ScoreQueryCodingKeys, &a13, v70, v71, v69);
          swift_unknownObjectRelease();
          v72 = OUTLINED_FUNCTION_42_0();
          v73(v72);
          v74 = OUTLINED_FUNCTION_8_5();
          v75(v74);
          break;
        case 3:
          a14 = 3;
          v76 = sub_227A0D11C();
          OUTLINED_FUNCTION_11_3(&type metadata for FastSyncActionType.ScoreQueryResponseCodingKeys, &a14, v77, v78, v76);
          swift_unknownObjectRelease();
          v79 = OUTLINED_FUNCTION_42_0();
          v80(v79);
          v81 = OUTLINED_FUNCTION_8_5();
          v82(v81);
          break;
        case 4:
          a15 = 4;
          v62 = sub_227A0D0C8();
          OUTLINED_FUNCTION_11_3(&type metadata for FastSyncActionType.UpdateParticipantsCodingKeys, &a15, v63, v64, v62);
          swift_unknownObjectRelease();
          v65 = OUTLINED_FUNCTION_42_0();
          v66(v65, v96);
          v67 = OUTLINED_FUNCTION_8_5();
          v68(v67);
          break;
        case 5:
          a17 = 5;
          v83 = sub_227A0D020();
          OUTLINED_FUNCTION_11_3(&type metadata for FastSyncActionType.JoinChannelCodingKeys, &a17, v84, v85, v83);
          sub_227A0D074();
          OUTLINED_FUNCTION_71_0(&type metadata for FastSyncActionType.ChannelActionType);
          swift_unknownObjectRelease();
          v90 = OUTLINED_FUNCTION_82();
          v91(v90);
          v92 = OUTLINED_FUNCTION_55_0();
          v93(v92);
          break;
        default:
          a10 = 0;
          v54 = sub_227A0D218();
          OUTLINED_FUNCTION_11_3(&type metadata for FastSyncActionType.UnknownCodingKeys, &a10, v55, v56, v54);
          swift_unknownObjectRelease();
          (*(v95 + 8))(v28, v94);
          v57 = OUTLINED_FUNCTION_8_5();
          v58(v57);
          break;
      }

      goto LABEL_8;
    }

LABEL_7:
    v59 = sub_227A72B5C();
    swift_allocError();
    v61 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB70, &qword_227AA2E00);
    *v61 = &type metadata for FastSyncActionType;
    sub_227A72D1C();
    sub_227A72B4C();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x277D84160], v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v98 + 8))(v29, v42);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0Tm(v97);
    OUTLINED_FUNCTION_40_0();
    return;
  }

  __break(1u);
}

uint64_t sub_227A09990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A087E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A099B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227A089F0();
  *a1 = result;
  return result;
}

uint64_t sub_227A099E0(uint64_t a1)
{
  v2 = sub_227A0CFCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A09A1C(uint64_t a1)
{
  v2 = sub_227A0CFCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A09A78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2279DE6E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_227A09AA4(uint64_t a1)
{
  v2 = sub_227A0D020();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A09AE0(uint64_t a1)
{
  v2 = sub_227A0D020();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A09B1C(uint64_t a1)
{
  v2 = sub_227A0D1C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A09B58(uint64_t a1)
{
  v2 = sub_227A0D1C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A09B98(uint64_t a1)
{
  v2 = sub_227A0D170();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A09BD4(uint64_t a1)
{
  v2 = sub_227A0D170();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A09C10(uint64_t a1)
{
  v2 = sub_227A0D11C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A09C4C(uint64_t a1)
{
  v2 = sub_227A0D11C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A09C88(uint64_t a1)
{
  v2 = sub_227A0D218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A09CC4(uint64_t a1)
{
  v2 = sub_227A0D218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A09D00(uint64_t a1)
{
  v2 = sub_227A0D0C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A09D3C(uint64_t a1)
{
  v2 = sub_227A0D0C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A09DC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x44497265646E6573 && a2 == 0xE800000000000000;
    if (v6 || (sub_227A72E5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
      if (v7 || (sub_227A72E5C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1701869940 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_227A72E5C();

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

uint64_t sub_227A09F1C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x44497265646E6573;
      break;
    case 2:
      result = 0x65726F6373;
      break;
    case 3:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

void sub_227A09F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_14_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCC18, &qword_227AA1B00);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_7_5();
  v18 = sub_227A0D314();
  OUTLINED_FUNCTION_17_1(&type metadata for QueryScoresActionMessage.CodingKeys, v19, v18);
  OUTLINED_FUNCTION_45_0();
  sub_227A71C6C();
  OUTLINED_FUNCTION_0_14();
  v22 = sub_227A07200(v20, v21, MEMORY[0x277CC95F8]);
  OUTLINED_FUNCTION_2_4(v22);
  if (!v16)
  {
    ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
    OUTLINED_FUNCTION_10_2(ScoresActionMessage);
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_18_2();
    sub_227A72DEC();
    OUTLINED_FUNCTION_61_0();
    sub_227A0CE58();
    OUTLINED_FUNCTION_18_2();
    sub_227A72DFC();
  }

  v24 = OUTLINED_FUNCTION_15_3();
  v25(v24);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_75_0();
}

void sub_227A0A0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_41_0();
  v27 = v26;
  v45 = v28;
  v29 = sub_227A71C6C();
  OUTLINED_FUNCTION_92();
  v46 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_2();
  v47 = v33 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCC08, &qword_227AA1AF8);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_30_0();
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_12_2(v27);
  sub_227A0D314();
  OUTLINED_FUNCTION_70_0();
  sub_227A72F5C();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_227A07200(v37, v38, MEMORY[0x277CC9618]);
    OUTLINED_FUNCTION_22_0();
    sub_227A72D7C();
    (*(v46 + 32))(v25, v47, v29);
    OUTLINED_FUNCTION_37_0();
    v39 = sub_227A72D4C();
    v40 = (v25 + ScoresActionMessage[5]);
    *v40 = v39;
    v40[1] = v41;
    OUTLINED_FUNCTION_51_0();
    sub_227A72D6C();
    *(v25 + ScoresActionMessage[6]) = v42;
    OUTLINED_FUNCTION_61_0();
    sub_227A0CCF8();
    sub_227A72D7C();
    v43 = OUTLINED_FUNCTION_33_0();
    v44(v43);
    *(v25 + ScoresActionMessage[7]) = a11;
    sub_227A0CDA0(v25, v45, type metadata accessor for QueryScoresActionMessage);
    __swift_destroy_boxed_opaque_existential_0Tm(0);
    sub_227A0CE00(v25, type metadata accessor for QueryScoresActionMessage);
  }

  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A0A4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A09DC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A0A4C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227A09F14();
  *a1 = result;
  return result;
}

uint64_t sub_227A0A4F0(uint64_t a1)
{
  v2 = sub_227A0D314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A0A52C(uint64_t a1)
{
  v2 = sub_227A0D314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A0A598(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x44497265646E6573 && a2 == 0xE800000000000000;
    if (v6 || (sub_227A72E5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (sub_227A72E5C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_227A72E5C();

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

uint64_t sub_227A0A6E4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x44497265646E6573;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x65726F6373;
      break;
    default:
      return result;
  }

  return result;
}

void sub_227A0A750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_14_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCC00, &qword_227AA1AF0);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_7_5();
  v18 = sub_227A0D2C0();
  OUTLINED_FUNCTION_17_1(&type metadata for QueryScoresResponseActionMessage.CodingKeys, v19, v18);
  OUTLINED_FUNCTION_45_0();
  sub_227A71C6C();
  OUTLINED_FUNCTION_0_14();
  v22 = sub_227A07200(v20, v21, MEMORY[0x277CC95F8]);
  OUTLINED_FUNCTION_2_4(v22);
  if (!v16)
  {
    ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(0);
    OUTLINED_FUNCTION_10_2(ScoresResponseActionMessage);
    sub_227A0CE58();
    OUTLINED_FUNCTION_18_2();
    sub_227A72DFC();
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_18_2();
    sub_227A72DEC();
  }

  v24 = OUTLINED_FUNCTION_15_3();
  v25(v24);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_75_0();
}

uint64_t sub_227A0A8CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_227A71C6C();
  OUTLINED_FUNCTION_92();
  v25 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_2();
  v26 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCBF0, &qword_227AA1AE8);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_67_0();
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(v11);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_12_2(a1);
  sub_227A0D2C0();
  sub_227A72F5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  OUTLINED_FUNCTION_0_14();
  sub_227A07200(v14, v15, MEMORY[0x277CC9618]);
  sub_227A72D7C();
  (*(v25 + 32))(v3, v26, v5);
  v16 = sub_227A72D4C();
  v17 = (v3 + ScoresResponseActionMessage[5]);
  *v17 = v16;
  v17[1] = v18;
  sub_227A0CCF8();
  sub_227A72D7C();
  *(v3 + ScoresResponseActionMessage[6]) = v27;
  sub_227A72D6C();
  v20 = v19;
  v21 = OUTLINED_FUNCTION_32_0();
  v22(v21);
  *(v3 + ScoresResponseActionMessage[7]) = v20;
  sub_227A0CDA0(v3, a2, type metadata accessor for QueryScoresResponseActionMessage);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_227A0CE00(v3, type metadata accessor for QueryScoresResponseActionMessage);
}

uint64_t sub_227A0ACA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A0A598(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A0ACC8(uint64_t a1)
{
  v2 = sub_227A0D2C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A0AD04(uint64_t a1)
{
  v2 = sub_227A0D2C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A0AD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  else
  {
    return sub_227A72E5C();
  }
}

uint64_t sub_227A0ADA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449726579616C70 && a2 == 0xE800000000000000;
  if (v4 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796E6F6475657370 && a2 == 0xE90000000000006DLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_227A72E5C();

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

uint64_t sub_227A0AE70(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_73_0(a1);
  MEMORY[0x22AAA07F0](v1 & 1);
  return sub_227A72F4C();
}

uint64_t sub_227A0AEB0(char a1)
{
  if (a1)
  {
    return 0x796E6F6475657370;
  }

  else
  {
    return 0x4449726579616C70;
  }
}

void sub_227A0AEEC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_41_0();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB28, &qword_227AA1A68);
  OUTLINED_FUNCTION_92();
  v8 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_168(v5, v5[3]);
  sub_227A0CF78();
  sub_227A72F6C();
  sub_227A72DCC();
  if (!v2)
  {
    OUTLINED_FUNCTION_37_0();
    sub_227A72DCC();
  }

  (*(v8 + 8))(v3, v6);
  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A0B034(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_73_0(a1);
  sub_227A7255C();
  return sub_227A72F4C();
}

void sub_227A0B07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_41_0();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB18, &qword_227AA1A60);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_12_2(v24);
  sub_227A0CF78();
  sub_227A72F5C();
  if (!v22)
  {
    sub_227A72D4C();
    OUTLINED_FUNCTION_37_0();
    sub_227A72D4C();
    v26 = OUTLINED_FUNCTION_82();
    v27(v26);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A0B228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A0ADA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A0B250(uint64_t a1)
{
  v2 = sub_227A0CF78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A0B28C(uint64_t a1)
{
  v2 = sub_227A0CF78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A0B328(uint64_t a1)
{
  sub_227A72F2C();
  sub_227A7255C();
  return sub_227A72F4C();
}

void sub_227A0B37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_14_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCC30, &unk_227AA1B10);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_7_5();
  v16 = sub_227A0D368();
  OUTLINED_FUNCTION_17_1(&type metadata for ChannelMigrationActionMessage.CodingKeys, v17, v16);
  OUTLINED_FUNCTION_45_0();
  sub_227A71C6C();
  OUTLINED_FUNCTION_0_14();
  v20 = sub_227A07200(v18, v19, MEMORY[0x277CC95F8]);
  OUTLINED_FUNCTION_2_4(v20);
  if (!v14)
  {
    v21 = type metadata accessor for ChannelMigrationActionMessage(0);
    OUTLINED_FUNCTION_21_1(v21);
    OUTLINED_FUNCTION_18_2();
    sub_227A72DFC();
    OUTLINED_FUNCTION_25_1();
    v31[12] = v22;
    OUTLINED_FUNCTION_18_2();
    sub_227A72DCC();
    OUTLINED_FUNCTION_60_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCAD8, &qword_227AA1A50);
    OUTLINED_FUNCTION_6_3();
    v25 = sub_227A0CEAC(v23, v24, MEMORY[0x277D83B50]);
    OUTLINED_FUNCTION_9_3(v31, &v30, v26, v27, v25);
  }

  v28 = OUTLINED_FUNCTION_15_3();
  v29(v28);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_75_0();
}

void sub_227A0B52C(uint64_t a1)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_72_0(v3);
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCC20, &qword_227AA1B08);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_53_0();
  type metadata accessor for ChannelMigrationActionMessage(0);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_2();
  v9 = v8 - v7;
  v10 = OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_168(v10, v11);
  sub_227A0D368();
  OUTLINED_FUNCTION_56_0(&type metadata for ChannelMigrationActionMessage.CodingKeys);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_227A07200(v12, v13, MEMORY[0x277CC9618]);
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_48_0();
    v14 = OUTLINED_FUNCTION_59_0();
    v15(v14);
    sub_227A0CCF8();
    OUTLINED_FUNCTION_58_0(&type metadata for FastSyncActionType);
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_68_0();
    *v18 = v16;
    v18[1] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCAD8, &qword_227AA1A50);
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_5_1();
    sub_227A0CEAC(v19, v20, MEMORY[0x277D83B70]);
    OUTLINED_FUNCTION_44_0();
    v21 = OUTLINED_FUNCTION_47_0();
    v22(v21);
    *(v9 + *(v9 + 28)) = v24;
    sub_227A0CDA0(v9, v23, type metadata accessor for ChannelMigrationActionMessage);
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    sub_227A0CE00(v9, type metadata accessor for ChannelMigrationActionMessage);
  }

  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A0B854(uint64_t a1)
{
  v2 = sub_227A0D368();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A0B890(uint64_t a1)
{
  v2 = sub_227A0D368();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A0B8FC(void *a1)
{
  a1[1] = sub_227A07200(&qword_27D7DCA20, type metadata accessor for ChannelMigrationActionMessage, &unk_227AA15EC);
  a1[2] = sub_227A07200(&qword_27D7DCA28, type metadata accessor for ChannelMigrationActionMessage, &unk_227AA15C4);
  result = sub_227A07200(&qword_27D7DCA30, type metadata accessor for ChannelMigrationActionMessage, &unk_227AA1614);
  a1[3] = result;
  return result;
}

uint64_t sub_227A0B9A8(uint64_t a1)
{
  result = sub_227A07200(&qword_27D7DCA38, type metadata accessor for ChannelMigrationActionMessage, &unk_227AA164C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227A0BA00(void *a1)
{
  a1[1] = sub_227A07200(&qword_27D7DCA40, type metadata accessor for QueryScoresActionMessage, &unk_227AA16AC);
  a1[2] = sub_227A07200(&qword_27D7DCA48, type metadata accessor for QueryScoresActionMessage, &unk_227AA1684);
  result = sub_227A07200(&qword_27D7DCA50, type metadata accessor for QueryScoresActionMessage, &unk_227AA16D4);
  a1[3] = result;
  return result;
}

uint64_t sub_227A0BAAC(uint64_t a1)
{
  result = sub_227A07200(&qword_27D7DCA58, type metadata accessor for QueryScoresActionMessage, &unk_227AA170C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227A0BB04(void *a1)
{
  a1[1] = sub_227A07200(&qword_27D7DCA60, type metadata accessor for QueryScoresResponseActionMessage, &unk_227AA176C);
  a1[2] = sub_227A07200(&qword_27D7DCA68, type metadata accessor for QueryScoresResponseActionMessage, &unk_227AA1744);
  result = sub_227A07200(&qword_27D7DCA70, type metadata accessor for QueryScoresResponseActionMessage, &unk_227AA1794);
  a1[3] = result;
  return result;
}

uint64_t sub_227A0BBB0(uint64_t a1)
{
  result = sub_227A07200(&qword_27D7DCA78, type metadata accessor for QueryScoresResponseActionMessage, &unk_227AA17CC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227A0BC08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_227A72E5C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x8000000227A98B00 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_227A72E5C();

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

uint64_t sub_227A0BD18(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 0xD000000000000013;
}

void sub_227A0BD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_14_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCDB8, &qword_227AA2940);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_7_5();
  v18 = sub_227A0E754();
  OUTLINED_FUNCTION_17_1(&type metadata for UpdateParticipantsActionMessage.CodingKeys, v19, v18);
  OUTLINED_FUNCTION_45_0();
  sub_227A71C6C();
  OUTLINED_FUNCTION_0_14();
  v22 = sub_227A07200(v20, v21, MEMORY[0x277CC95F8]);
  OUTLINED_FUNCTION_2_4(v22);
  if (!v14)
  {
    updated = type metadata accessor for UpdateParticipantsActionMessage(0);
    OUTLINED_FUNCTION_21_1(updated);
    OUTLINED_FUNCTION_18_2();
    sub_227A72DFC();
    v32 = *(v15 + *(v16 + 24));
    v31 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCAD8, &qword_227AA1A50);
    OUTLINED_FUNCTION_6_3();
    v26 = sub_227A0CEAC(v24, v25, MEMORY[0x277D83B50]);
    OUTLINED_FUNCTION_9_3(&v32, &v31, v27, v28, v26);
  }

  v29 = OUTLINED_FUNCTION_15_3();
  v30(v29);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_75_0();
}

void sub_227A0BF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_41_0();
  v15 = v14;
  v32 = v16;
  v17 = sub_227A71C6C();
  OUTLINED_FUNCTION_92();
  v33 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_2();
  v34 = v21 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCDA8, &qword_227AA2938);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_67_0();
  updated = type metadata accessor for UpdateParticipantsActionMessage(v23);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_168(v15, v15[3]);
  sub_227A0E754();
  sub_227A72F5C();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_227A07200(v26, v27, MEMORY[0x277CC9618]);
    OUTLINED_FUNCTION_22_0();
    sub_227A72D7C();
    (*(v33 + 32))(v13, v34, v17);
    sub_227A0CCF8();
    sub_227A72D7C();
    *(v13 + *(updated + 20)) = a12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCAD8, &qword_227AA1A50);
    OUTLINED_FUNCTION_5_1();
    sub_227A0CEAC(v28, v29, MEMORY[0x277D83B70]);
    sub_227A72D7C();
    v30 = OUTLINED_FUNCTION_52_0();
    v31(v30);
    *(v13 + *(updated + 24)) = v35;
    sub_227A0CDA0(v13, v32, type metadata accessor for UpdateParticipantsActionMessage);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    sub_227A0CE00(v13, type metadata accessor for UpdateParticipantsActionMessage);
  }

  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A0C288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A0BC08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A0C2B0(uint64_t a1)
{
  v2 = sub_227A0E754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A0C2EC(uint64_t a1)
{
  v2 = sub_227A0E754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A0C358(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_50_0(25705) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_50_0(1701869940) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x444977656ELL && a2 == 0xE500000000000000;
      if (v7 || (OUTLINED_FUNCTION_50_0(0x444977656ELL) & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000013 && 0x8000000227A98B00 == a2)
      {

        return 3;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_50_0(0xD000000000000013);

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

uint64_t sub_227A0C47C(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_73_0(a1);
  MEMORY[0x22AAA07F0](v1);
  return sub_227A72F4C();
}

void sub_227A0C4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_14_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCAF0, &qword_227AA1A58);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_7_5();
  v16 = sub_227A0CCA4();
  OUTLINED_FUNCTION_17_1(&type metadata for JoinChannelActionMessage.CodingKeys, v17, v16);
  OUTLINED_FUNCTION_45_0();
  sub_227A71C6C();
  OUTLINED_FUNCTION_0_14();
  v20 = sub_227A07200(v18, v19, MEMORY[0x277CC95F8]);
  OUTLINED_FUNCTION_2_4(v20);
  if (!v14)
  {
    v21 = type metadata accessor for JoinChannelActionMessage(0);
    OUTLINED_FUNCTION_21_1(v21);
    OUTLINED_FUNCTION_18_2();
    sub_227A72DFC();
    OUTLINED_FUNCTION_25_1();
    v31[12] = v22;
    OUTLINED_FUNCTION_18_2();
    sub_227A72DCC();
    OUTLINED_FUNCTION_60_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCAD8, &qword_227AA1A50);
    OUTLINED_FUNCTION_6_3();
    v25 = sub_227A0CEAC(v23, v24, MEMORY[0x277D83B50]);
    OUTLINED_FUNCTION_9_3(v31, &v30, v26, v27, v25);
  }

  v28 = OUTLINED_FUNCTION_15_3();
  v29(v28);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_75_0();
}

void sub_227A0C66C(uint64_t a1)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_72_0(v3);
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCAB8, &qword_227AA1A48);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_53_0();
  type metadata accessor for JoinChannelActionMessage(0);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_2();
  v9 = v8 - v7;
  v10 = OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_168(v10, v11);
  sub_227A0CCA4();
  OUTLINED_FUNCTION_56_0(&type metadata for JoinChannelActionMessage.CodingKeys);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_227A07200(v12, v13, MEMORY[0x277CC9618]);
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_48_0();
    v14 = OUTLINED_FUNCTION_59_0();
    v15(v14);
    sub_227A0CCF8();
    OUTLINED_FUNCTION_58_0(&type metadata for FastSyncActionType);
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_68_0();
    *v18 = v16;
    v18[1] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCAD8, &qword_227AA1A50);
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_5_1();
    sub_227A0CEAC(v19, v20, MEMORY[0x277D83B70]);
    OUTLINED_FUNCTION_44_0();
    v21 = OUTLINED_FUNCTION_47_0();
    v22(v21);
    *(v9 + *(v9 + 28)) = v24;
    sub_227A0CDA0(v9, v23, type metadata accessor for JoinChannelActionMessage);
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    sub_227A0CE00(v9, type metadata accessor for JoinChannelActionMessage);
  }

  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A0C994(uint64_t a1)
{
  v2 = sub_227A0CCA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A0C9D0(uint64_t a1)
{
  v2 = sub_227A0CCA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A0CA0C()
{
  sub_227A71C6C();
  OUTLINED_FUNCTION_51();
  v1 = OUTLINED_FUNCTION_49_0();

  return v2(v1, v0);
}

uint64_t sub_227A0CA98(void *a1)
{
  a1[1] = sub_227A07200(&qword_27D7DCA80, type metadata accessor for JoinChannelActionMessage, &unk_227AA191C);
  a1[2] = sub_227A07200(&qword_27D7DCA88, type metadata accessor for JoinChannelActionMessage, &unk_227AA18F4);
  result = sub_227A07200(&qword_27D7DCA90, type metadata accessor for JoinChannelActionMessage, &unk_227AA1944);
  a1[3] = result;
  return result;
}

uint64_t sub_227A0CB44(uint64_t a1)
{
  result = sub_227A07200(&qword_27D7DCA98, type metadata accessor for JoinChannelActionMessage, &unk_227AA197C);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227A0CBA0()
{
  result = qword_27D7DCAA0;
  if (!qword_27D7DCAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCAA0);
  }

  return result;
}

unint64_t sub_227A0CBF8()
{
  result = qword_27D7DCAA8;
  if (!qword_27D7DCAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCAA8);
  }

  return result;
}

unint64_t sub_227A0CC50()
{
  result = qword_27D7DCAB0;
  if (!qword_27D7DCAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCAB0);
  }

  return result;
}

unint64_t sub_227A0CCA4()
{
  result = qword_27D7DCAC0;
  if (!qword_27D7DCAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCAC0);
  }

  return result;
}

unint64_t sub_227A0CCF8()
{
  result = qword_27D7DCAD0;
  if (!qword_27D7DCAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCAD0);
  }

  return result;
}

unint64_t sub_227A0CD4C()
{
  result = qword_27D7DCAE8;
  if (!qword_27D7DCAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCAE8);
  }

  return result;
}

uint64_t sub_227A0CDA0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_51();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_227A0CE00(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_51();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_227A0CE58()
{
  result = qword_27D7DCB00;
  if (!qword_27D7DCB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCB00);
  }

  return result;
}

uint64_t sub_227A0CEAC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7DCAD8, &qword_227AA1A50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227A0CF24()
{
  result = qword_27D7DCB10;
  if (!qword_27D7DCB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCB10);
  }

  return result;
}

unint64_t sub_227A0CF78()
{
  result = qword_27D7DCB20;
  if (!qword_27D7DCB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCB20);
  }

  return result;
}

unint64_t sub_227A0CFCC()
{
  result = qword_27D7DCB68;
  if (!qword_27D7DCB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCB68);
  }

  return result;
}

unint64_t sub_227A0D020()
{
  result = qword_27D7DCB78;
  if (!qword_27D7DCB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCB78);
  }

  return result;
}

unint64_t sub_227A0D074()
{
  result = qword_27D7DCB80;
  if (!qword_27D7DCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCB80);
  }

  return result;
}

unint64_t sub_227A0D0C8()
{
  result = qword_27D7DCB88;
  if (!qword_27D7DCB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCB88);
  }

  return result;
}

unint64_t sub_227A0D11C()
{
  result = qword_27D7DCB90;
  if (!qword_27D7DCB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCB90);
  }

  return result;
}

unint64_t sub_227A0D170()
{
  result = qword_27D7DCB98;
  if (!qword_27D7DCB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCB98);
  }

  return result;
}

unint64_t sub_227A0D1C4()
{
  result = qword_27D7DCBA0;
  if (!qword_27D7DCBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCBA0);
  }

  return result;
}

unint64_t sub_227A0D218()
{
  result = qword_27D7DCBA8;
  if (!qword_27D7DCBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCBA8);
  }

  return result;
}

unint64_t sub_227A0D26C()
{
  result = qword_27D7DCBE8;
  if (!qword_27D7DCBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCBE8);
  }

  return result;
}

unint64_t sub_227A0D2C0()
{
  result = qword_27D7DCBF8;
  if (!qword_27D7DCBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCBF8);
  }

  return result;
}

unint64_t sub_227A0D314()
{
  result = qword_27D7DCC10;
  if (!qword_27D7DCC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCC10);
  }

  return result;
}

unint64_t sub_227A0D368()
{
  result = qword_27D7DCC28;
  if (!qword_27D7DCC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCC28);
  }

  return result;
}

void sub_227A0D404(uint64_t a1)
{
  sub_227A71C6C();
  if (v1 <= 0x3F)
  {
    sub_227A07580(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_227A0D4D8(uint64_t a1)
{
  sub_227A0D55C();
  if (v1 <= 0x3F)
  {
    sub_227A71C6C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_227A0D55C()
{
  if (!qword_27D7DCC58)
  {
    v0 = sub_227A729BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7DCC58);
    }
  }
}

uint64_t getEnumTagSinglePayload for FastSyncActionType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FastSyncActionType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_227A0D790(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_65(a1);
}

_BYTE *sub_227A0D7DC(_BYTE *result, int a2, int a3)
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

uint64_t sub_227A0D898(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_66_0(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_66_0((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_66_0((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_66_0((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_66_0(v8);
}

_BYTE *sub_227A0D91C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_64_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_62_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_63_0(result, v6);
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
          result = OUTLINED_FUNCTION_46_0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227A0D9FC()
{
  result = qword_27D7DCC60;
  if (!qword_27D7DCC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCC60);
  }

  return result;
}

unint64_t sub_227A0DA54()
{
  result = qword_27D7DCC68;
  if (!qword_27D7DCC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCC68);
  }

  return result;
}

unint64_t sub_227A0DAAC()
{
  result = qword_27D7DCC70;
  if (!qword_27D7DCC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCC70);
  }

  return result;
}

unint64_t sub_227A0DB04()
{
  result = qword_27D7DCC78;
  if (!qword_27D7DCC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCC78);
  }

  return result;
}

unint64_t sub_227A0DB5C()
{
  result = qword_27D7DCC80;
  if (!qword_27D7DCC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCC80);
  }

  return result;
}

unint64_t sub_227A0DBB4()
{
  result = qword_27D7DCC88;
  if (!qword_27D7DCC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCC88);
  }

  return result;
}

unint64_t sub_227A0DC0C()
{
  result = qword_27D7DCC90;
  if (!qword_27D7DCC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCC90);
  }

  return result;
}

unint64_t sub_227A0DC64()
{
  result = qword_27D7DCC98;
  if (!qword_27D7DCC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCC98);
  }

  return result;
}

unint64_t sub_227A0DCBC()
{
  result = qword_27D7DCCA0;
  if (!qword_27D7DCCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCCA0);
  }

  return result;
}

uint64_t sub_227A0DD10(void *a1)
{
  a1[1] = sub_227A07200(&qword_27D7DCCA8, type metadata accessor for UpdateParticipantsActionMessage, &unk_227AA24E4);
  a1[2] = sub_227A07200(&qword_27D7DCCB0, type metadata accessor for UpdateParticipantsActionMessage, &unk_227AA24BC);
  result = sub_227A07200(&qword_27D7DCCB8, type metadata accessor for UpdateParticipantsActionMessage, &unk_227AA23FC);
  a1[3] = result;
  return result;
}

uint64_t sub_227A0DDBC(uint64_t a1)
{
  result = sub_227A07200(&qword_27D7DCCC0, type metadata accessor for UpdateParticipantsActionMessage, &unk_227AA2434);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227A0DE14(void *a1)
{
  a1[1] = sub_227A07200(&qword_27D7DCCC8, type metadata accessor for DataMessage, &unk_227AA2478);
  a1[2] = sub_227A07200(&qword_27D7DCCD0, type metadata accessor for DataMessage, &unk_227AA2450);
  result = sub_227A07200(&qword_27D7DCCD8, type metadata accessor for DataMessage, &unk_227AA23C4);
  a1[3] = result;
  return result;
}

unint64_t sub_227A0DEC4()
{
  result = qword_27D7DCCE0;
  if (!qword_27D7DCCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCCE0);
  }

  return result;
}

unint64_t sub_227A0DF1C()
{
  result = qword_27D7DCCE8;
  if (!qword_27D7DCCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCCE8);
  }

  return result;
}

unint64_t sub_227A0DF74()
{
  result = qword_27D7DCCF0;
  if (!qword_27D7DCCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCCF0);
  }

  return result;
}

unint64_t sub_227A0DFCC()
{
  result = qword_27D7DCCF8;
  if (!qword_27D7DCCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCCF8);
  }

  return result;
}

unint64_t sub_227A0E024()
{
  result = qword_27D7DCD00;
  if (!qword_27D7DCD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD00);
  }

  return result;
}

unint64_t sub_227A0E07C()
{
  result = qword_27D7DCD08;
  if (!qword_27D7DCD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD08);
  }

  return result;
}

unint64_t sub_227A0E0D4()
{
  result = qword_27D7DCD10;
  if (!qword_27D7DCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD10);
  }

  return result;
}

unint64_t sub_227A0E12C()
{
  result = qword_27D7DCD18;
  if (!qword_27D7DCD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD18);
  }

  return result;
}

unint64_t sub_227A0E184()
{
  result = qword_27D7DCD20;
  if (!qword_27D7DCD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD20);
  }

  return result;
}

unint64_t sub_227A0E1DC()
{
  result = qword_27D7DCD28;
  if (!qword_27D7DCD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD28);
  }

  return result;
}

unint64_t sub_227A0E234()
{
  result = qword_27D7DCD30;
  if (!qword_27D7DCD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD30);
  }

  return result;
}

unint64_t sub_227A0E28C()
{
  result = qword_27D7DCD38;
  if (!qword_27D7DCD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD38);
  }

  return result;
}

unint64_t sub_227A0E2E4()
{
  result = qword_27D7DCD40;
  if (!qword_27D7DCD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD40);
  }

  return result;
}

unint64_t sub_227A0E33C()
{
  result = qword_27D7DCD48;
  if (!qword_27D7DCD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD48);
  }

  return result;
}

unint64_t sub_227A0E394()
{
  result = qword_27D7DCD50;
  if (!qword_27D7DCD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD50);
  }

  return result;
}

unint64_t sub_227A0E3EC()
{
  result = qword_27D7DCD58;
  if (!qword_27D7DCD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD58);
  }

  return result;
}

unint64_t sub_227A0E444()
{
  result = qword_27D7DCD60;
  if (!qword_27D7DCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD60);
  }

  return result;
}

unint64_t sub_227A0E49C()
{
  result = qword_27D7DCD68;
  if (!qword_27D7DCD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD68);
  }

  return result;
}

unint64_t sub_227A0E4F4()
{
  result = qword_27D7DCD70;
  if (!qword_27D7DCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD70);
  }

  return result;
}

unint64_t sub_227A0E54C()
{
  result = qword_27D7DCD78;
  if (!qword_27D7DCD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD78);
  }

  return result;
}

unint64_t sub_227A0E5A4()
{
  result = qword_27D7DCD80;
  if (!qword_27D7DCD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD80);
  }

  return result;
}

unint64_t sub_227A0E5FC()
{
  result = qword_27D7DCD88;
  if (!qword_27D7DCD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD88);
  }

  return result;
}

unint64_t sub_227A0E654()
{
  result = qword_27D7DCD90;
  if (!qword_27D7DCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD90);
  }

  return result;
}

unint64_t sub_227A0E6AC()
{
  result = qword_27D7DCD98;
  if (!qword_27D7DCD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCD98);
  }

  return result;
}

unint64_t sub_227A0E700()
{
  result = qword_27D7DCDA0;
  if (!qword_27D7DCDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCDA0);
  }

  return result;
}

unint64_t sub_227A0E754()
{
  result = qword_27D7DCDB0;
  if (!qword_27D7DCDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCDB0);
  }

  return result;
}

unint64_t sub_227A0E7A8()
{
  result = qword_27D7DCDC8;
  if (!qword_27D7DCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCDC8);
  }

  return result;
}

unint64_t sub_227A0E7FC()
{
  result = qword_27D7DCDD0;
  if (!qword_27D7DCDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCDD0);
  }

  return result;
}

unint64_t sub_227A0E850()
{
  result = qword_27D7DCDE0;
  if (!qword_27D7DCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCDE0);
  }

  return result;
}

uint64_t sub_227A0E8A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_66_0(-1);
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
      return OUTLINED_FUNCTION_66_0((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_66_0((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_66_0((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_66_0(v8);
}

_BYTE *sub_227A0E928(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_64_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_62_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_63_0(result, v6);
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
          result = OUTLINED_FUNCTION_46_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_227A0E9F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_66_0(-1);
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
      return OUTLINED_FUNCTION_66_0((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_66_0((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_66_0((*a1 | (v4 << 8)) - 3);
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

  return OUTLINED_FUNCTION_66_0(v8);
}

_BYTE *sub_227A0EA78(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_64_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_62_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_63_0(result, v6);
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
          result = OUTLINED_FUNCTION_46_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227A0EB48()
{
  result = qword_27D7DCDE8;
  if (!qword_27D7DCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCDE8);
  }

  return result;
}

unint64_t sub_227A0EBA0()
{
  result = qword_27D7DCDF0;
  if (!qword_27D7DCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCDF0);
  }

  return result;
}

unint64_t sub_227A0EBF8()
{
  result = qword_27D7DCDF8;
  if (!qword_27D7DCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCDF8);
  }

  return result;
}

unint64_t sub_227A0EC50()
{
  result = qword_27D7DCE00;
  if (!qword_27D7DCE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCE00);
  }

  return result;
}

unint64_t sub_227A0ECA8()
{
  result = qword_27D7DCE08;
  if (!qword_27D7DCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCE08);
  }

  return result;
}

unint64_t sub_227A0ED00()
{
  result = qword_27D7DCE10;
  if (!qword_27D7DCE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCE10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1)
{

  return sub_227A72DFC();
}

uint64_t OUTLINED_FUNCTION_9_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_227A72DFC();
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1)
{
  *(v1 - 66) = 1;

  return sub_227A72DCC();
}

uint64_t OUTLINED_FUNCTION_11_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_227A72D0C();
}

uint64_t OUTLINED_FUNCTION_17_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_227A72F6C();
}

uint64_t OUTLINED_FUNCTION_19_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_227A72D9C();
}

unint64_t OUTLINED_FUNCTION_21_1(uint64_t a1)
{
  *(v2 - 66) = *(v1 + *(a1 + 20));
  *(v2 - 67) = 1;

  return sub_227A0CE58();
}

uint64_t OUTLINED_FUNCTION_26_1@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_35_0()
{
  *(v1 + *(v0 + 20)) = *(v2 - 66);
  *(v2 - 68) = 2;

  return sub_227A72D4C();
}

uint64_t OUTLINED_FUNCTION_44_0()
{

  return sub_227A72D7C();
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return sub_227A72D7C();
}

uint64_t OUTLINED_FUNCTION_50_0(uint64_t a1)
{

  return sub_227A72E5C();
}

uint64_t OUTLINED_FUNCTION_56_0(uint64_t a1)
{
  *(v2 - 96) = v1;

  return sub_227A72F5C();
}

uint64_t OUTLINED_FUNCTION_57_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13)
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t OUTLINED_FUNCTION_58_0(uint64_t a1)
{

  return sub_227A72D7C();
}

uint64_t OUTLINED_FUNCTION_71_0(uint64_t a1)
{

  return sub_227A72D7C();
}

uint64_t OUTLINED_FUNCTION_72_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 136) = a1;

  return sub_227A71C6C();
}

void *OUTLINED_FUNCTION_73_0(uint64_t a1, ...)
{

  return sub_227A72F2C();
}

unint64_t GKGroupActivityDeclineToJoinReason.init(rawValue:)(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_227A0F3E8()
{
  result = qword_27D7DCE18;
  if (!qword_27D7DCE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCE18);
  }

  return result;
}

unint64_t sub_227A0F454@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GKGroupActivityDeclineToJoinReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_227A0F554()
{
  result = qword_27D7DCE20;
  if (!qword_27D7DCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCE20);
  }

  return result;
}

uint64_t type metadata accessor for GKGroupActivityMessage(uint64_t a1)
{
  result = qword_27D7DCE28;
  if (!qword_27D7DCE28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_227A0F61C(uint64_t a1)
{
  sub_227A71C6C();
  if (v1 <= 0x3F)
  {
    sub_227A71C2C();
    if (v2 <= 0x3F)
    {
      sub_227A0D55C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for GKGroupActivityMessageType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GKGroupActivityMessageType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_227A0F740(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227A0F75C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

BOOL sub_227A0F78C(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if (a2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if ((a4 & 1) == 0 || a3 != 1)
        {
          return 0;
        }
      }

      else if ((a4 & 1) == 0 || a3 <= 1)
      {
        return 0;
      }
    }

    else if ((a4 & 1) == 0 || a3)
    {
      return 0;
    }

    return 1;
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    return a1 == a3;
  }
}

uint64_t sub_227A0F7E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x5474736575716572 && a2 == 0xED00006E696F4A6FLL;
  if (v3 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000227A98B60 == a2;
    if (v6 || (sub_227A72E5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5474736575716572 && a2 == 0xEE00657661654C6FLL;
      if (v7 || (sub_227A72E5C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1635017060 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_227A72E5C();

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

unint64_t sub_227A0F954(char a1)
{
  result = 0x5474736575716572;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 1635017060;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227A0F9DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_227A72E5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_227A0FA64(void *a1, uint64_t a2, int a3)
{
  v53 = a2;
  v55 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCEC8, &qword_227AA2E08);
  OUTLINED_FUNCTION_92();
  v50 = v5;
  v51 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36_0();
  v49 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCED0, &qword_227AA2E10);
  OUTLINED_FUNCTION_92();
  v47 = v9;
  v48 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36_0();
  v46 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCED8, &qword_227AA2E18);
  OUTLINED_FUNCTION_92();
  v52 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCEE0, &qword_227AA2E20);
  OUTLINED_FUNCTION_92();
  v44 = v18;
  v45 = v17;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCEE8, &qword_227AA2E28);
  OUTLINED_FUNCTION_92();
  v24 = v23;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  v27 = &v44 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227A117E0();
  sub_227A72F6C();
  if (v55)
  {
    if (v53)
    {
      if (v53 == 1)
      {
        v58 = 2;
        v28 = sub_227A11888();
        v29 = v46;
        OUTLINED_FUNCTION_11_4(&type metadata for GKGroupActivityMessageType.RequestToLeaveCodingKeys, &v58, v30, v31, v28);
        v33 = v47;
        v32 = v48;
      }

      else
      {
        v59 = 3;
        v41 = sub_227A11834();
        v29 = v49;
        OUTLINED_FUNCTION_11_4(&type metadata for GKGroupActivityMessageType.DataCodingKeys, &v59, v42, v43, v41);
        v33 = v50;
        v32 = v51;
      }

      (*(v33 + 8))(v29, v32);
    }

    else
    {
      v56 = 0;
      v38 = sub_227A11984();
      OUTLINED_FUNCTION_11_4(&type metadata for GKGroupActivityMessageType.RequestToJoinCodingKeys, &v56, v39, v40, v38);
      (*(v44 + 8))(v21, v45);
    }

    return (*(v24 + 8))(v27, v22);
  }

  else
  {
    v57 = 1;
    v34 = sub_227A118DC();
    OUTLINED_FUNCTION_11_4(&type metadata for GKGroupActivityMessageType.RequestToJoinDeclinedCodingKeys, &v57, v35, v36, v34);
    v54 = v53;
    sub_227A119D8();
    sub_227A72DFC();
    (*(v52 + 8))(v16, v12);
    return (*(v24 + 8))(v27, v22);
  }
}

uint64_t sub_227A0FE78(void *a1)
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCE70, &qword_227AA2DD8);
  OUTLINED_FUNCTION_92();
  v74 = v2;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36_0();
  v76 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCE78, &qword_227AA2DE0);
  OUTLINED_FUNCTION_92();
  v69 = v6;
  v70 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36_0();
  v73 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCE80, &qword_227AA2DE8);
  OUTLINED_FUNCTION_92();
  v71 = v10;
  v72 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCE88, &qword_227AA2DF0);
  OUTLINED_FUNCTION_92();
  v68 = v15;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCE90, &qword_227AA2DF8);
  OUTLINED_FUNCTION_92();
  v75 = v20;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  v23 = &v64 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227A117E0();
  v24 = v78;
  sub_227A72F5C();
  if (v24)
  {
    goto LABEL_8;
  }

  v65 = v14;
  v66 = v18;
  v67 = v13;
  v25 = v76;
  v26 = v77;
  v78 = a1;
  sub_227A72D8C();
  result = sub_227A46010();
  if (v29 == v30 >> 1)
  {
LABEL_7:
    v18 = sub_227A72B5C();
    swift_allocError();
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB70, &qword_227AA2E00);
    *v44 = &type metadata for GKGroupActivityMessageType;
    sub_227A72D1C();
    sub_227A72B4C();
    (*(*(v18 - 8) + 104))(v44, *MEMORY[0x277D84160], v18);
    swift_willThrow();
    swift_unknownObjectRelease();
    v45 = OUTLINED_FUNCTION_1_9();
    v46(v45);
    a1 = v78;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return v18;
  }

  if (v29 < (v30 >> 1))
  {
    v31 = *(v28 + v29);
    sub_227A46008();
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 == v35 >> 1)
    {
      v36 = v74;
      switch(v31)
      {
        case 1:
          v81 = 1;
          v56 = sub_227A118DC();
          OUTLINED_FUNCTION_7_6(&type metadata for GKGroupActivityMessageType.RequestToJoinDeclinedCodingKeys, &v81, v57, v58, v56);
          sub_227A11930();
          sub_227A72D7C();
          v61 = v75;
          swift_unknownObjectRelease();
          v62 = OUTLINED_FUNCTION_15_4();
          v63(v62);
          (*(v61 + 8))(v23, v19);
          v18 = v79;
          break;
        case 2:
          v82 = 2;
          v47 = sub_227A11888();
          v48 = v73;
          OUTLINED_FUNCTION_7_6(&type metadata for GKGroupActivityMessageType.RequestToLeaveCodingKeys, &v82, v49, v50, v47);
          swift_unknownObjectRelease();
          (*(v69 + 8))(v48, v70);
          v51 = OUTLINED_FUNCTION_1_9();
          v52(v51);
          v18 = 1;
          break;
        case 3:
          v83 = 3;
          v53 = sub_227A11834();
          OUTLINED_FUNCTION_7_6(&type metadata for GKGroupActivityMessageType.DataCodingKeys, &v83, v54, v55, v53);
          swift_unknownObjectRelease();
          (*(v36 + 8))(v25, v26);
          v59 = OUTLINED_FUNCTION_1_9();
          v60(v59);
          v18 = 2;
          break;
        default:
          v80 = 0;
          v37 = sub_227A11984();
          v38 = v66;
          OUTLINED_FUNCTION_7_6(&type metadata for GKGroupActivityMessageType.RequestToJoinCodingKeys, &v80, v39, v40, v37);
          swift_unknownObjectRelease();
          (*(v68 + 8))(v38, v65);
          v41 = OUTLINED_FUNCTION_1_9();
          v42(v41);
          v18 = 0;
          break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v78);
      return v18;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_227A10540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A0F7E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A10568(uint64_t a1)
{
  v2 = sub_227A117E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A105A4(uint64_t a1)
{
  v2 = sub_227A117E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A105E0(uint64_t a1)
{
  v2 = sub_227A11834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A1061C(uint64_t a1)
{
  v2 = sub_227A11834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A10658(uint64_t a1)
{
  v2 = sub_227A11984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A10694(uint64_t a1)
{
  v2 = sub_227A11984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A106D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A0F9DC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_227A10700(uint64_t a1)
{
  v2 = sub_227A118DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A1073C(uint64_t a1)
{
  v2 = sub_227A118DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A10778(uint64_t a1)
{
  v2 = sub_227A11888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A107B4(uint64_t a1)
{
  v2 = sub_227A11888();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A1080C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_227A0FE78(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_227A10860(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496567617373656DLL && a2 == 0xE900000000000044;
  if (v4 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
    if (v6 || (sub_227A72E5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4449726579616C70 && a2 == 0xE800000000000000;
      if (v7 || (sub_227A72E5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7069636974726170 && a2 == 0xED00004449746E61;
        if (v8 || (sub_227A72E5C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x657469766E497369 && a2 == 0xE900000000000072;
          if (v9 || (sub_227A72E5C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701869940 && a2 == 0xE400000000000000;
            if (v10 || (sub_227A72E5C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1635017060 && a2 == 0xE400000000000000;
              if (v11 || (sub_227A72E5C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x656B6F5468737570 && a2 == 0xE90000000000006ELL)
              {

                return 7;
              }

              else
              {
                v13 = sub_227A72E5C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_227A10AEC(unsigned __int8 a1)
{
  sub_227A72F2C();
  MEMORY[0x22AAA07F0](a1);
  return sub_227A72F4C();
}

uint64_t sub_227A10B34(char a1)
{
  result = 0x496567617373656DLL;
  switch(a1)
  {
    case 1:
      result = 0x6D617473656D6974;
      break;
    case 2:
      result = 0x4449726579616C70;
      break;
    case 3:
      result = 0x7069636974726170;
      break;
    case 4:
      result = 0x657469766E497369;
      break;
    case 5:
      result = 1701869940;
      break;
    case 6:
      result = 1635017060;
      break;
    case 7:
      result = 0x656B6F5468737570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227A10C18(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCE58, &qword_227AA2DD0);
  OUTLINED_FUNCTION_92();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227A11638();
  sub_227A72F6C();
  LOBYTE(v22) = 0;
  sub_227A71C6C();
  OUTLINED_FUNCTION_6_4();
  sub_227A11744(v11, v12, MEMORY[0x277CC95F8]);
  OUTLINED_FUNCTION_10_3();
  sub_227A72DFC();
  if (!v2)
  {
    v13 = type metadata accessor for GKGroupActivityMessage(0);
    LOBYTE(v22) = 1;
    sub_227A71C2C();
    OUTLINED_FUNCTION_5_2();
    sub_227A11744(v14, v15, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_10_3();
    sub_227A72DFC();
    OUTLINED_FUNCTION_16_3(v13[6]);
    LOBYTE(v22) = 2;
    OUTLINED_FUNCTION_10_3();
    sub_227A72DCC();
    OUTLINED_FUNCTION_16_3(v13[7]);
    LOBYTE(v22) = 3;
    OUTLINED_FUNCTION_10_3();
    sub_227A72DCC();
    LOBYTE(v22) = 4;
    OUTLINED_FUNCTION_10_3();
    sub_227A72DDC();
    v16 = v3 + v13[9];
    v17 = *v16;
    LOBYTE(v16) = *(v16 + 8);
    v22 = v17;
    LOBYTE(v23) = v16;
    v24 = 5;
    sub_227A1178C();
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_10_3();
    sub_227A72DFC();
    v22 = OUTLINED_FUNCTION_16_3(v13[10]);
    v23 = v18;
    v24 = 6;
    sub_2279E3ED0(v22, v18);
    sub_227A0E850();
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_10_3();
    sub_227A72DBC();
    sub_2279E3F90(v22, v23);
    v22 = OUTLINED_FUNCTION_16_3(v13[11]);
    v23 = v19;
    v24 = 7;
    sub_2279E3ED0(v22, v19);
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_10_3();
    sub_227A72DBC();
    sub_2279E3F90(v22, v23);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_227A10F28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  sub_227A71C2C();
  OUTLINED_FUNCTION_92();
  v57 = v4;
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_2();
  v7 = v6 - v5;
  v8 = sub_227A71C6C();
  OUTLINED_FUNCTION_92();
  v59 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_2();
  v13 = v12 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCE38, &qword_227AA2DC8);
  OUTLINED_FUNCTION_92();
  v15 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v18 = &v54 - v17;
  v19 = type metadata accessor for GKGroupActivityMessage(0);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_2();
  v22 = v21 - v20;
  v24 = (v21 - v20 + v23[10]);
  v62 = v23;
  v63 = v24;
  *v24 = xmmword_227AA0100;
  v25 = v22;
  v64 = (v22 + v23[11]);
  v65 = a1;
  *v64 = xmmword_227AA0100;
  v26 = a1[4];
  v27 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227A11638();
  v60 = v18;
  v28 = v61;
  sub_227A72F5C();
  if (!v28)
  {
    v61 = v15;
    LOBYTE(v66) = 0;
    OUTLINED_FUNCTION_6_4();
    sub_227A11744(v30, v31, MEMORY[0x277CC9618]);
    OUTLINED_FUNCTION_9_4();
    sub_227A72D7C();
    (*(v59 + 32))(v25, v13, v8);
    LOBYTE(v66) = 1;
    OUTLINED_FUNCTION_5_2();
    sub_227A11744(v33, v34, MEMORY[0x277CC95A0]);
    v35 = v58;
    OUTLINED_FUNCTION_9_4();
    sub_227A72D7C();
    v36 = v62;
    (*(v57 + 32))(v25 + v62[5], v7, v35);
    OUTLINED_FUNCTION_2_5(2);
    v37 = sub_227A72D4C();
    v38 = v63;
    v39 = (v25 + v36[6]);
    *v39 = v37;
    v39[1] = v40;
    OUTLINED_FUNCTION_2_5(3);
    v41 = sub_227A72D4C();
    v42 = (v25 + v36[7]);
    *v42 = v41;
    v42[1] = v43;
    OUTLINED_FUNCTION_2_5(4);
    *(v25 + v36[8]) = sub_227A72D5C() & 1;
    v68 = 5;
    sub_227A1168C();
    OUTLINED_FUNCTION_8_6();
    OUTLINED_FUNCTION_9_4();
    sub_227A72D7C();
    v44 = v67;
    v45 = v25 + v36[9];
    *v45 = v66;
    *(v45 + 8) = v44;
    v68 = 6;
    sub_227A0E7FC();
    OUTLINED_FUNCTION_8_6();
    OUTLINED_FUNCTION_9_4();
    sub_227A72D3C();
    v46 = v66;
    v47 = v67;
    sub_2279E3F90(*v38, *(v38 + 1));
    *v38 = v46;
    *(v38 + 1) = v47;
    v68 = 7;
    OUTLINED_FUNCTION_8_6();
    OUTLINED_FUNCTION_9_4();
    sub_227A72D3C();
    v48 = OUTLINED_FUNCTION_3_5();
    v49(v48);
    v50 = v66;
    v51 = v67;
    v52 = v64;
    sub_2279E3F90(*v64, v64[1]);
    *v52 = v50;
    v52[1] = v51;
    sub_227A116E0(v25, v55);
    __swift_destroy_boxed_opaque_existential_0Tm(v65);
    return sub_2279F354C(v25);
  }

  OUTLINED_FUNCTION_14_3();
  v29 = v8;
  v32 = v62;
  __swift_destroy_boxed_opaque_existential_0Tm(v65);
  if (v26)
  {
    (*(v59 + 8))(v25, v29);
    if (v27)
    {
      goto LABEL_6;
    }

LABEL_9:
    if (!v15)
    {
      goto LABEL_7;
    }

LABEL_10:

    goto LABEL_7;
  }

  if (!v27)
  {
    goto LABEL_9;
  }

LABEL_6:
  (*(v57 + 8))(v25 + v32[5], v58);
  if (v15)
  {
    goto LABEL_10;
  }

LABEL_7:
  sub_2279E3F90(*v13, *(v13 + 8));
  return sub_2279E3F90(*v64, v64[1]);
}

uint64_t sub_227A11540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A10860(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A11568@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227A10AE4();
  *a1 = result;
  return result;
}

uint64_t sub_227A11590(uint64_t a1)
{
  v2 = sub_227A11638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A115CC(uint64_t a1)
{
  v2 = sub_227A11638();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_227A11638()
{
  result = qword_27D7DCE40;
  if (!qword_27D7DCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCE40);
  }

  return result;
}

unint64_t sub_227A1168C()
{
  result = qword_27D7DCE50;
  if (!qword_27D7DCE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCE50);
  }

  return result;
}

uint64_t sub_227A116E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GKGroupActivityMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227A11744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_227A1178C()
{
  result = qword_27D7DCE68;
  if (!qword_27D7DCE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCE68);
  }

  return result;
}

unint64_t sub_227A117E0()
{
  result = qword_27D7DCE98;
  if (!qword_27D7DCE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCE98);
  }

  return result;
}

unint64_t sub_227A11834()
{
  result = qword_27D7DCEA0;
  if (!qword_27D7DCEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCEA0);
  }

  return result;
}

unint64_t sub_227A11888()
{
  result = qword_27D7DCEA8;
  if (!qword_27D7DCEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCEA8);
  }

  return result;
}

unint64_t sub_227A118DC()
{
  result = qword_27D7DCEB0;
  if (!qword_27D7DCEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCEB0);
  }

  return result;
}

unint64_t sub_227A11930()
{
  result = qword_27D7DCEB8;
  if (!qword_27D7DCEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCEB8);
  }

  return result;
}

unint64_t sub_227A11984()
{
  result = qword_27D7DCEC0;
  if (!qword_27D7DCEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCEC0);
  }

  return result;
}

unint64_t sub_227A119D8()
{
  result = qword_27D7DCEF0;
  if (!qword_27D7DCEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCEF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GKGroupActivityMessageType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GKGroupActivityMessageType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for GKGroupActivityMessageType.RequestToJoinDeclinedCodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for GKGroupActivityMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GKGroupActivityMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227A11DD4()
{
  result = qword_27D7DCEF8;
  if (!qword_27D7DCEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCEF8);
  }

  return result;
}

unint64_t sub_227A11E2C()
{
  result = qword_27D7DCF00;
  if (!qword_27D7DCF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF00);
  }

  return result;
}

unint64_t sub_227A11E84()
{
  result = qword_27D7DCF08;
  if (!qword_27D7DCF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF08);
  }

  return result;
}

unint64_t sub_227A11EDC()
{
  result = qword_27D7DCF10;
  if (!qword_27D7DCF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF10);
  }

  return result;
}

unint64_t sub_227A11F34()
{
  result = qword_27D7DCF18;
  if (!qword_27D7DCF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF18);
  }

  return result;
}

unint64_t sub_227A11F8C()
{
  result = qword_27D7DCF20;
  if (!qword_27D7DCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF20);
  }

  return result;
}

unint64_t sub_227A11FE4()
{
  result = qword_27D7DCF28;
  if (!qword_27D7DCF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF28);
  }

  return result;
}

unint64_t sub_227A1203C()
{
  result = qword_27D7DCF30;
  if (!qword_27D7DCF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF30);
  }

  return result;
}

unint64_t sub_227A12094()
{
  result = qword_27D7DCF38;
  if (!qword_27D7DCF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF38);
  }

  return result;
}

unint64_t sub_227A120EC()
{
  result = qword_27D7DCF40;
  if (!qword_27D7DCF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF40);
  }

  return result;
}

unint64_t sub_227A12144()
{
  result = qword_27D7DCF48;
  if (!qword_27D7DCF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF48);
  }

  return result;
}

unint64_t sub_227A1219C()
{
  result = qword_27D7DCF50;
  if (!qword_27D7DCF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF50);
  }

  return result;
}

unint64_t sub_227A121F4()
{
  result = qword_27D7DCF58;
  if (!qword_27D7DCF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF58);
  }

  return result;
}

unint64_t sub_227A1224C()
{
  result = qword_27D7DCF60;
  if (!qword_27D7DCF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF60);
  }

  return result;
}

unint64_t sub_227A122A4()
{
  result = qword_27D7DCF68;
  if (!qword_27D7DCF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_227A72D0C();
}

uint64_t OUTLINED_FUNCTION_11_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_227A72D9C();
}

uint64_t sub_227A12404()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCF80, &qword_227AA33A8);
  sub_227A721BC();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_227AA0BF0;
  sub_227A7217C();
  sub_227A7218C();
  sub_227A7219C();
  result = sub_227A721AC();
  off_280B54D58 = v0;
  return result;
}

id sub_227A124E4()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [ObjCClassFromMetadata setForCurrentProcessAllowingPDF_];
}

void sub_227A12544(int a1)
{
  v83 = sub_227A721BC();
  OUTLINED_FUNCTION_92();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v82 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCF88, &unk_227AA33B0);
  inited = swift_initStaticObject();
  v7 = 0;
  atomic_compare_exchange_strong_explicit((inited + 16), &v7, 1u, memory_order_relaxed, memory_order_relaxed);
  if (v7)
  {
    OUTLINED_FUNCTION_3_6();
    if (!v9)
    {
      OUTLINED_FUNCTION_3_1(&qword_280B551E0);
    }

    v38 = sub_227A7227C();
    v83 = OUTLINED_FUNCTION_9_5(v38, qword_280B551E8);
    v39 = sub_227A7289C();
    if (os_log_type_enabled(v83, v39))
    {
      v40 = OUTLINED_FUNCTION_6_5();
      *v40 = 0;
      _os_log_impl(&dword_227904000, v83, v39, "Image restrictions have already been set for the current process", v40, 2u);
      MEMORY[0x22AAA1930](v40, -1, -1);
    }

    v41 = v83;
  }

  else
  {
    v8 = CGImageSourceDisableRAWDecoding();
    if (v8 != sub_227A7229C())
    {
      OUTLINED_FUNCTION_3_6();
      if (!v9)
      {
        OUTLINED_FUNCTION_3_1(&qword_280B551E0);
      }

      v10 = sub_227A7227C();
      v11 = OUTLINED_FUNCTION_9_5(v10, qword_280B551E8);
      v12 = sub_227A728BC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = OUTLINED_FUNCTION_6_5();
        *v13 = 0;
        OUTLINED_FUNCTION_8_7(&dword_227904000, v14, v15, "CGImageSourceDisableRAWDecoding() failed");
        MEMORY[0x22AAA1930](v13, -1, -1);
      }
    }

    v16 = CGImageSourceDisableMetadataParsing();
    if (v16 != sub_227A7229C())
    {
      OUTLINED_FUNCTION_3_6();
      if (!v9)
      {
        OUTLINED_FUNCTION_3_1(&qword_280B551E0);
      }

      v17 = sub_227A7227C();
      v18 = OUTLINED_FUNCTION_9_5(v17, qword_280B551E8);
      v19 = sub_227A728BC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = OUTLINED_FUNCTION_6_5();
        *v20 = 0;
        OUTLINED_FUNCTION_8_7(&dword_227904000, v21, v22, "CGImageSourceDisableMetadataParsing() failed");
        MEMORY[0x22AAA1930](v20, -1, -1);
      }
    }

    if (qword_280B54D50 != -1)
    {
      OUTLINED_FUNCTION_1_10(&qword_280B54D50);
    }

    v23 = off_280B54D58;
    v24 = *(off_280B54D58 + 2);
    if (v24)
    {
      HIDWORD(v79) = a1;
      v84 = MEMORY[0x277D84F90];
      sub_227A20388(0, v24, 0);
      v25 = v84;
      v27 = *(v3 + 16);
      v26 = v3 + 16;
      v28 = &v23[(*(v26 + 64) + 32) & ~*(v26 + 64)];
      v80 = *(v26 + 56);
      v81 = v27;
      v29 = (v26 - 8);
      do
      {
        v31 = v82;
        v30 = v83;
        v81(v82, v28, v83);
        v32 = sub_227A7216C();
        v34 = v33;
        (*v29)(v31, v30);
        v84 = v25;
        v36 = *(v25 + 16);
        v35 = *(v25 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_227A20388(v35 > 1, v36 + 1, 1);
          v25 = v84;
        }

        *(v25 + 16) = v36 + 1;
        v37 = v25 + 16 * v36;
        *(v37 + 32) = v32;
        *(v37 + 40) = v34;
        v28 += v80;
        --v24;
      }

      while (v24);
      LOBYTE(a1) = BYTE4(v79);
    }

    v42 = sub_227A7268C();

    v43 = CGImageSourceSetAllowableTypes();

    if (v43 != sub_227A7229C())
    {
      OUTLINED_FUNCTION_3_6();
      if (!v9)
      {
        OUTLINED_FUNCTION_3_1(&qword_280B551E0);
      }

      v44 = sub_227A7227C();
      v45 = OUTLINED_FUNCTION_9_5(v44, qword_280B551E8);
      v46 = sub_227A728BC();
      if (OUTLINED_FUNCTION_5_3(v46))
      {
        *OUTLINED_FUNCTION_6_5() = 0;
        OUTLINED_FUNCTION_2_6();
        _os_log_impl(v47, v48, v49, v50, v51, 2u);
        OUTLINED_FUNCTION_4_3();
      }
    }

    v52 = CGImageSourceDisableMetadataParsing();
    if (v52 != sub_227A7229C())
    {
      OUTLINED_FUNCTION_3_6();
      if (!v9)
      {
        OUTLINED_FUNCTION_3_1(&qword_280B551E0);
      }

      v53 = sub_227A7227C();
      v54 = OUTLINED_FUNCTION_9_5(v53, qword_280B551E8);
      v55 = sub_227A728BC();
      if (OUTLINED_FUNCTION_5_3(v55))
      {
        *OUTLINED_FUNCTION_6_5() = 0;
        OUTLINED_FUNCTION_2_6();
        _os_log_impl(v56, v57, v58, v59, v60, 2u);
        OUTLINED_FUNCTION_4_3();
      }
    }

    v61 = CGImageSourceDisableHardwareDecoding();
    if (v61 != sub_227A7229C())
    {
      OUTLINED_FUNCTION_3_6();
      if (!v9)
      {
        OUTLINED_FUNCTION_3_1(&qword_280B551E0);
      }

      v62 = sub_227A7227C();
      v63 = OUTLINED_FUNCTION_9_5(v62, qword_280B551E8);
      v64 = sub_227A728BC();
      if (OUTLINED_FUNCTION_5_3(v64))
      {
        *OUTLINED_FUNCTION_6_5() = 0;
        OUTLINED_FUNCTION_2_6();
        _os_log_impl(v65, v66, v67, v68, v69, 2u);
        OUTLINED_FUNCTION_4_3();
      }
    }

    if ((a1 & 1) == 0)
    {
      CGEnterLockdownModeForPDF();
    }

    CGEnterLockdownModeForFonts();
    OUTLINED_FUNCTION_3_6();
    if (!v9)
    {
      OUTLINED_FUNCTION_3_1(&qword_280B551E0);
    }

    v70 = sub_227A7227C();
    v71 = OUTLINED_FUNCTION_9_5(v70, qword_280B551E8);
    v72 = sub_227A7289C();
    if (OUTLINED_FUNCTION_5_3(v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 67109120;
      v73[1] = a1 & 1;
      OUTLINED_FUNCTION_2_6();
      _os_log_impl(v74, v75, v76, v77, v78, 8u);
      OUTLINED_FUNCTION_4_3();
    }
  }
}

BOOL sub_227A12B80(uint64_t a1, unint64_t a2)
{
  if (qword_280B54D50 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_280B54D50);
  }

  v5 = off_280B54D58;
  sub_2279E3EE4(a1, a2);

  return sub_227A12C00(v5, v2, a1, a2);
}

BOOL sub_227A12C00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v18 = a2;
  v7 = sub_227A721BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v19 = *(a1 + 16);
  sub_2279E3EE4(a3, a4);
  v11 = 0;
  while (1)
  {
    v12 = v11;
    if (v19 == v11)
    {
      break;
    }

    (*(v8 + 16))(v10, v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v11++, v7);
    sub_2279E3EE4(a3, a4);
    v13 = sub_227A13080(v10, v18, a3, a4);
    (*(v8 + 8))(v10, v7);
    if (v13)
    {

      break;
    }
  }

  v14 = v19 != v12;
  sub_2279E3FA4(a3, a4);
  sub_2279E3FA4(a3, a4);
  return v14;
}

void *sub_227A12E18(uint64_t a1, unint64_t a2)
{
  v4 = sub_227A721BC();
  OUTLINED_FUNCTION_92();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280B54D50 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_280B54D50);
  }

  v10 = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D84F90];
  v11 = *(off_280B54D58 + 2);
  if (v11)
  {
    v12 = v6 + 16;
    v25 = *(v6 + 16);
    v26 = v6 + 16;
    v13 = off_280B54D58 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v24 = *(v12 + 56);
    v14 = (v12 - 8);
    do
    {
      v25(v9, v13, v4);
      sub_2279E3EE4(a1, a2);
      v15 = sub_227A13080(v9, v27, a1, a2);
      if (v15)
      {
        v16 = v15;
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v15, 0, 0);

        v18 = (*v14)(v9, v4);
        if (ImageAtIndex)
        {
          MEMORY[0x22AA9FF30](v18);
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_227A726BC();
          }

          sub_227A726DC();
          v10 = v28;
        }
      }

      else
      {
        (*v14)(v9, v4);
      }

      v13 += v24;
      --v11;
    }

    while (v11);
  }

  result = sub_227A06998();
  if (!result)
  {

    return 0;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x22AAA03F0](0, v10);
    goto LABEL_16;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v10 + 32);
LABEL_16:
    v21 = v20;

    v22 = v21;
    return v21;
  }

  __break(1u);
  return result;
}

CGImageSourceRef sub_227A13080(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCF78, &qword_227AA33A0);
  inited = swift_initStackObject();
  v7 = MEMORY[0x277CD35A8];
  *(inited + 16) = xmmword_227AA0BF0;
  v8 = *v7;
  *(inited + 32) = v8;
  v9 = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v10 = *MEMORY[0x277CD35B8];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = 1;
  v11 = *MEMORY[0x277CD3648];
  *(inited + 104) = v9;
  *(inited + 112) = v11;
  *(inited + 120) = 1;
  v12 = *MEMORY[0x277CD3668];
  *(inited + 144) = v9;
  *(inited + 152) = v12;
  v13 = v8;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  sub_227A7216C();
  v17 = sub_227A724BC();

  type metadata accessor for CFString(0);
  *(inited + 184) = v18;
  *(inited + 160) = v17;
  sub_227A13378();
  sub_227A7243C();
  v19 = sub_227A7240C();

  v20 = sub_227A71B8C();
  v21 = CGImageSourceCreateWithData(v20, v19);

  if (v21 && CGImageSourceGetStatus(v21))
  {

    v21 = 0;
  }

  sub_2279E3FA4(a3, a4);
  return v21;
}

GKImageRestrictions __swiftcall GKImageRestrictions.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for GKImageRestrictions()
{
  result = qword_27D7DCF70;
  if (!qword_27D7DCF70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7DCF70);
  }

  return result;
}

unint64_t sub_227A13378()
{
  result = qword_27D7DC710;
  if (!qword_27D7DC710)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC710);
  }

  return result;
}

unint64_t sub_227A133D0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_10(uint64_t a1)
{

  return swift_once();
}

BOOL OUTLINED_FUNCTION_5_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_8_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_9_5(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_227A7226C();
}

uint64_t sub_227A134A4(uint64_t a1)
{
  v2 = sub_227A71EDC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 104);
  v7(v6, *MEMORY[0x277CCB180], v2, v4);
  sub_227A71F5C();
  swift_allocObject();

  *(v1 + 16) = sub_227A71F2C();
  (v7)(v6, *MEMORY[0x277CCB178], v2);
  swift_allocObject();
  *(v1 + 24) = sub_227A71F2C();
  return v1;
}

uint64_t sub_227A135F8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227A136D8(a3);
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a3;

  sub_227A71F0C();
}

uint64_t sub_227A136D8(unint64_t a1)
{
  if (a1 > 1)
  {
    result = sub_227A72C9C();
    __break(1u);
  }

  else
  {
  }

  return result;
}

void sub_227A1376C(void *a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    sub_227A1387C();
    v7 = swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = a4;
    *(v8 + 24) = a1;
    *(v8 + 32) = 96;
    v9 = a1;
    v10 = a1;
    a2(v7);
  }
}

uint64_t sub_227A13818()
{
  sub_2279DFD34();

  return MEMORY[0x2821FE8D8](v0);
}

unint64_t sub_227A1387C()
{
  result = qword_27D7DCF90;
  if (!qword_27D7DCF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCF90);
  }

  return result;
}

uint64_t sub_227A138F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v10 = *(v5 + 16);
  v10(v21 - v11, v3, a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCF98, &qword_227AA3468);
  if (swift_dynamicCast())
  {
    sub_22790B104(v21, v23);
    v12 = v24;
    v13 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v14 = (*(v13 + 16))(v12, v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_227A13B5C(v21);
    (v10)(v7, v3, a1);
    v15 = sub_227A72E3C();
    if (v15)
    {
      v16 = v15;
      (*(v5 + 8))(v7, a1);
    }

    else
    {
      v16 = swift_allocError();
      (*(v5 + 32))(v17, v7, a1);
    }

    v18 = sub_227A71A4C();

    v19 = [v18 underlyingErrors];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
    v14 = sub_227A7269C();
  }

  return v14;
}

uint64_t sub_227A13B5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCFA0, &unk_227AA3470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227A13BC4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v18 = MEMORY[0x277D84F90];
    sub_227A20388(0, v3, 0);
    v4 = (v2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = HIBYTE(*v4) & 0xF;
      if ((*v4 & 0x2000000000000000) == 0)
      {
        v7 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {

        sub_227A725FC();
        v8 = sub_227A7245C();
        v10 = v9;

        sub_227A054A0(1uLL, v5, v6);
        sub_227A13DBC();
        sub_227A7257C();

        v11 = v8;
        v12 = v10;
      }

      else
      {
        v11 = 0;
        v12 = 0xE000000000000000;
      }

      v14 = *(v18 + 16);
      v13 = *(v18 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_227A20388(v13 > 1, v14 + 1, 1);
      }

      *(v18 + 16) = v14 + 1;
      v15 = v18 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC850, &qword_227AA0C20);
  sub_227A13E10();
  v16 = sub_227A7246C();

  return v16;
}

unint64_t sub_227A13DBC()
{
  result = qword_27D7DCFA8;
  if (!qword_27D7DCFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DCFA8);
  }

  return result;
}

unint64_t sub_227A13E10()
{
  result = qword_27D7DC858;
  if (!qword_27D7DC858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7DC850, &qword_227AA0C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC858);
  }

  return result;
}

uint64_t sub_227A13E74(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_227A72A3C();
    sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    OUTLINED_FUNCTION_86();
    result = sub_227A7285C();
    v1 = v23[4];
    v3 = v23[5];
    v4 = v23[6];
    v5 = v23[7];
    v6 = v23[8];
  }

  else
  {
    OUTLINED_FUNCTION_55_1();
    v3 = v1 + 56;
    v4 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(v7 << v9);
    }

    else
    {
      v10 = v7;
    }

    v6 = v10 & *(v1 + 56);

    v5 = 0;
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v11 = v5;
  v12 = v5;
  if (v6)
  {
LABEL_12:
    OUTLINED_FUNCTION_43_1();
    v15 = v14 & v13;
    v17 = *(*(v1 + 48) + ((v12 << 9) | (8 * v16)));
    if (!v17)
    {
      return sub_2279F34F8(v1);
    }

    while (1)
    {
      result = sub_227A5B268(v17);
      if (!v19)
      {
        break;
      }

      v20 = result;
      v21 = v19;
      result = sub_227A5B274(v17);
      if (!v22)
      {
        goto LABEL_23;
      }

      sub_227A20F88(v23, v20, v21, result, v22);

      v5 = v12;
      v6 = v15;
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v18 = sub_227A72A7C();
      if (v18)
      {
        v23[10] = v18;
        sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
        swift_dynamicCast();
        v17 = v23[0];
        v12 = v5;
        v15 = v6;
        if (v23[0])
        {
          continue;
        }
      }

      return sub_2279F34F8(v1);
    }
  }

  else
  {
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= ((v4 + 64) >> 6))
      {
        return sub_2279F34F8(v1);
      }

      ++v11;
      if (*(v3 + 8 * v12))
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_227A140A0(uint64_t a1)
{
  v34 = sub_227A7212C();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v27 = v1;
  v37 = MEMORY[0x277D84F90];
  sub_227A204C8(0, v5, 0);
  v6 = v37;
  result = sub_227A5B37C(a1);
  v10 = result;
  v11 = 0;
  v12 = a1 + 56;
  v32 = v3 + 32;
  v33 = v3;
  v28 = a1 + 64;
  v13 = v29;
  v30 = v5;
  v31 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v12 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v8)
      {
        goto LABEL_26;
      }

      v36 = v9;
      v35 = v8;
      v15 = a1;

      sub_227A7211C();
      v37 = v6;
      v16 = v13;
      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_227A204C8(v17 > 1, v18 + 1, 1);
        v6 = v37;
      }

      *(v6 + 16) = v18 + 1;
      result = (*(v33 + 32))(v6 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v18, v16, v34);
      if (v36)
      {
        goto LABEL_30;
      }

      v19 = 1 << *(v15 + 32);
      if (v10 >= v19)
      {
        goto LABEL_27;
      }

      v13 = v16;
      a1 = v15;
      v12 = v31;
      v20 = *(v31 + 8 * v14);
      if ((v20 & (1 << v10)) == 0)
      {
        goto LABEL_28;
      }

      if (*(a1 + 36) != v35)
      {
        goto LABEL_29;
      }

      v21 = v20 & (-2 << (v10 & 0x3F));
      if (v21)
      {
        v19 = __clz(__rbit64(v21)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v14 << 6;
        v23 = v14 + 1;
        v24 = (v28 + 8 * v14);
        while (v23 < (v19 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_227A24020(v10, v35, 0);
            v19 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        result = sub_227A24020(v10, v35, 0);
LABEL_19:
        v13 = v29;
      }

      if (++v11 == v30)
      {
        return v6;
      }

      v9 = 0;
      v8 = *(a1 + 36);
      v10 = v19;
      if (v19 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_227A143B8()
{
  (*(**(v0 + 16) + 136))();

  JUMPOUT(0x22AA9F640);
}

uint64_t sub_227A1440C(uint64_t a1)
{
  v2 = *(**(v1 + 16) + 136);

  v2(v3);

  sub_227A71D9C();

  return swift_unknownObjectRelease();
}

uint64_t sub_227A14498()
{
  v1 = *(v0 + 16);
  [v1 lock];
  v2 = *(v0 + 24);

  [v1 unlock];
  return v2;
}

id sub_227A144F4(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  [v5 lock];
  v2[3] = a1;
  v2[4] = a2;

  return [v5 unlock];
}

uint64_t FastSyncTransport.init(clientDelegate:reporter:daemonProxy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR___GKFastSyncTransport_atomicLobbyChannel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCFC0, &qword_227AA3480);
  OUTLINED_FUNCTION_110();
  swift_allocObject();
  v9 = OUTLINED_FUNCTION_78_0();
  *&v3[v8] = sub_227A1F208(v9);
  v10 = OBJC_IVAR___GKFastSyncTransport_atomicGameChannel;
  OUTLINED_FUNCTION_110();
  swift_allocObject();
  v11 = OUTLINED_FUNCTION_78_0();
  *&v3[v10] = sub_227A1F208(v11);
  *&v3[OBJC_IVAR___GKFastSyncTransport_gameChannelMigrationTask] = 0;
  *&v3[OBJC_IVAR___GKFastSyncTransport_lobbyChannelMigrationTask] = 0;
  *&v3[OBJC_IVAR___GKFastSyncTransport_newChannelObservationTask] = 0;
  v12 = OBJC_IVAR___GKFastSyncTransport_syncLocalParticipantHandle;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCFF0, &qword_227AA3488);
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_57_1();
  *&v4[v12] = sub_227A1F254(v14, v15);
  swift_unknownObjectWeakAssign();
  *&v4[OBJC_IVAR___GKFastSyncTransport_reporter] = a2;
  *&v4[OBJC_IVAR___GKFastSyncTransport_daemonProxy] = a3;
  v17.receiver = v4;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_init);
  OUTLINED_FUNCTION_13();
  swift_unknownObjectRelease();
  return v13;
}

id sub_227A14770()
{
  if (*(v0 + OBJC_IVAR___GKFastSyncTransport_gameChannelMigrationTask))
  {

    sub_227A727DC();
  }

  if (*(v0 + OBJC_IVAR___GKFastSyncTransport_lobbyChannelMigrationTask))
  {

    sub_227A727DC();
  }

  if (*(v0 + OBJC_IVAR___GKFastSyncTransport_newChannelObservationTask))
  {

    sub_227A727DC();
  }

  sub_227A1440C(0);
  sub_227A1440C(0);
  return sub_227A144F4(0, 0);
}

uint64_t FastSyncTransport.connectToPlayers(with:)()
{
  OUTLINED_FUNCTION_31();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227A7273C();
  v1[4] = OUTLINED_FUNCTION_88_0(v3);
  OUTLINED_FUNCTION_13();
  sub_227A726EC();
  OUTLINED_FUNCTION_73_1();
  v1[5] = v4;
  v1[6] = v5;
  v6 = OUTLINED_FUNCTION_72_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227A14908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_67_1();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_132();
  a18 = v20;
  v23 = [*(v20 + 16) pseudonym];
  v24 = sub_227A724EC();
  v26 = v25;

  sub_227A144F4(v24, v26);
  v27 = sub_227A14498();
  if (v28)
  {
    v29 = v27;
    v30 = v28;
    v31 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v31 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      if (qword_27D7DC4E0 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      v32 = *(v20 + 16);
      v33 = sub_227A7227C();
      __swift_project_value_buffer(v33, qword_27D7DE210);
      OUTLINED_FUNCTION_13();

      v34 = v32;
      v35 = sub_227A7226C();
      v36 = sub_227A7289C();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = *(v20 + 16);
        OUTLINED_FUNCTION_63_1();
        v38 = OUTLINED_FUNCTION_90_0();
        v39 = OUTLINED_FUNCTION_107();
        a10 = v39;
        *v34 = 136315394;
        v40 = sub_227A46730(v29, v30, &a10);

        *(v34 + 1) = v40;
        *(v34 + 6) = 2112;
        *(v34 + 14) = v37;
        *v38 = v37;
        v41 = v37;
        _os_log_impl(&dword_227904000, v35, v36, "[%s] Request to connect with transport context: %@", v34, 0x16u);
        sub_2279F3774(v38, &unk_27D7DD270, &qword_227AA10E0);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x22AAA1930]();
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x22AAA1930]();
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x22AAA1930]();
      }

      else
      {
      }

      v60 = swift_task_alloc();
      v61 = OUTLINED_FUNCTION_104_0(v60);
      *v61 = v62;
      v61[1] = sub_227A14C14;
      OUTLINED_FUNCTION_108(*(v20 + 16));
      OUTLINED_FUNCTION_34_1();

      return sub_227A14F9C(v63);
    }
  }

  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v42 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v42, qword_27D7DE210);
  v43 = sub_227A7226C();
  v44 = sub_227A728BC();
  if (OUTLINED_FUNCTION_46_1(v44))
  {
    OUTLINED_FUNCTION_28_0();
    v45 = swift_slowAlloc();
    OUTLINED_FUNCTION_36_1(v45);
    OUTLINED_FUNCTION_10_4();
    _os_log_impl(v46, v47, v48, v49, v50, 2u);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_34_1();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12);
}

uint64_t sub_227A14C14()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[8] = v0;

  if (v0)
  {
    v7 = v3[5];
    v8 = v3[6];

    return MEMORY[0x2822009F8](sub_227A14EE4, v7, v8);
  }

  else
  {
    v9 = swift_task_alloc();
    v3[9] = v9;
    *v9 = v5;
    v9[1] = sub_227A14D64;
    v10 = OUTLINED_FUNCTION_108(v3[2]);

    return sub_227A160B4(v10);
  }
}

uint64_t sub_227A14D64()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 80) = v0;

  OUTLINED_FUNCTION_50_1();
  v6 = *(v5 + 48);
  v7 = *(v1 + 40);
  if (v0)
  {
    v8 = sub_227A14F40;
  }

  else
  {
    v8 = sub_227A14E8C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_227A14E8C()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_227A14EE4()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_227A14F40()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_227A14F9C(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  sub_227A7273C();
  v2[11] = sub_227A7272C();
  v4 = sub_227A726EC();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x2822009F8](sub_227A15034, v4, v3);
}

uint64_t sub_227A15034()
{
  v82 = v0;
  v1 = sub_2279FEC00(*(v0 + 72));
  *(v0 + 112) = v2;
  if (!v2)
  {

    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v5 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v5, qword_27D7DE210);
    v6 = sub_227A7226C();
    v7 = sub_227A7289C();
    if (OUTLINED_FUNCTION_46_1(v7))
    {
      OUTLINED_FUNCTION_28_0();
      v8 = swift_slowAlloc();
      OUTLINED_FUNCTION_36_1(v8);
      OUTLINED_FUNCTION_10_4();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

LABEL_19:

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_106_0();

    __asm { BRAA            X1, X16 }
  }

  v3 = v1;
  v4 = v2;
  v14 = sub_227A1AA80(3u);
  v16 = v15;
  sub_227A143B8();
  *(v0 + 120) = v17;
  v18 = *(v0 + 72);
  if (!v17)
  {

    v53 = [v18 lobbyParticipants];
    sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    OUTLINED_FUNCTION_76();
    *(v0 + 224) = sub_227A7282C();

    v79 = swift_task_alloc();
    *(v0 + 232) = v79;
    *v79 = v0;
    v80 = sub_227A15D44;
LABEL_29:
    v79[1] = v80;
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_106_0();

    return sub_227A1BDB8(v54, v55, v56);
  }

  v19 = v17;
  v20 = [*(v0 + 72) lobbyParticipants];
  *(v0 + 128) = sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
  *(v0 + 136) = sub_227A23DEC();
  sub_227A7282C();

  LOBYTE(v20) = sub_227A4B830();

  if (v20)
  {
    v21 = *(v19 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type) == v3 && *(v19 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 8) == v4;
    if (v21 || (sub_227A72E5C() & 1) != 0)
    {

      if (qword_27D7DC4E0 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      v22 = sub_227A7227C();
      OUTLINED_FUNCTION_104(v22, qword_27D7DE210);
      v6 = sub_227A7226C();
      v23 = sub_227A7289C();
      if (OUTLINED_FUNCTION_46_1(v23))
      {
        OUTLINED_FUNCTION_28_0();
        v24 = swift_slowAlloc();
        OUTLINED_FUNCTION_36_1(v24);
        OUTLINED_FUNCTION_10_4();
        _os_log_impl(v25, v26, v27, v28, v29, 2u);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x22AAA1930]();
      }

      goto LABEL_19;
    }
  }

  v32 = *(v0 + 72);
  v33 = [v32 lobbyParticipants];
  v34 = sub_227A7282C();

  v81 = MEMORY[0x277D84FA0];
  sub_227A13E74(v34);

  *(v0 + 64) = v81;
  v35 = [v32 localPlayerID];
  v36 = sub_227A724EC();
  v38 = v37;

  sub_227A20F88(&v81, v36, v38, v14, v16);

  v39 = OUTLINED_FUNCTION_30_1();
  if (sub_227A4AD64(v39, v40))
  {
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v41 = sub_227A7227C();
    __swift_project_value_buffer(v41, qword_27D7DE210);
    OUTLINED_FUNCTION_13();

    v42 = sub_227A7226C();
    v43 = sub_227A7289C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_63_1();
      v81 = OUTLINED_FUNCTION_82_0();
      *v44 = 136315394;
      v45 = OUTLINED_FUNCTION_30_1();
      *(v44 + 4) = sub_227A46730(v45, v46, v47);
      *(v44 + 12) = 2080;
      OUTLINED_FUNCTION_9_2();
      swift_beginAccess();
      sub_227A075DC();
      OUTLINED_FUNCTION_100_0();

      v48 = sub_227A7283C();
      v50 = v49;

      v51 = sub_227A46730(v48, v50, &v81);

      *(v44 + 14) = v51;
      _os_log_impl(&dword_227904000, v42, v43, "Migrating the lobby channel to newID: %s, with all participants: %s", v44, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    OUTLINED_FUNCTION_9_2();
    swift_beginAccess();
    *(v0 + 144) = *(v0 + 64);

    v52 = OUTLINED_FUNCTION_30_1();
    sub_227A4AF54(v52);
    v77 = *(v0 + 72);

    v78 = [v77 lobbyParticipants];
    *(v0 + 152) = sub_227A7282C();

    v79 = swift_task_alloc();
    *(v0 + 160) = v79;
    *v79 = v0;
    v80 = sub_227A1582C;
    goto LABEL_29;
  }

  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v59 = sub_227A7227C();
  __swift_project_value_buffer(v59, qword_27D7DE210);
  OUTLINED_FUNCTION_13();

  v60 = sub_227A7226C();
  sub_227A7289C();
  OUTLINED_FUNCTION_94_0();

  if (OUTLINED_FUNCTION_143())
  {
    v61 = OUTLINED_FUNCTION_106();
    v62 = OUTLINED_FUNCTION_107();
    v81 = v62;
    *v61 = 136315138;
    v63 = OUTLINED_FUNCTION_30_1();
    *(v61 + 4) = sub_227A46730(v63, v64, v65);
    OUTLINED_FUNCTION_57();
    _os_log_impl(v66, v67, v68, v69, v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  v70 = [*(v0 + 72) lobbyParticipants];
  *(v0 + 176) = sub_227A7282C();

  v71 = swift_task_alloc();
  *(v0 + 184) = v71;
  *v71 = v0;
  OUTLINED_FUNCTION_64_1(v71);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_106_0();

  return sub_227A1A264(v72, v73, v74, v75);
}

uint64_t sub_227A1582C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[21] = v0;

  if (v0)
  {
    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_227A16028;
  }

  else
  {

    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_227A1593C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_227A1593C()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_227A159AC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[24] = v0;

  if (v0)
  {
    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_227A15F20;
  }

  else
  {

    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_227A15ABC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_227A15ABC()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[9];
  v2 = [v1 lobbyParticipants];
  v3 = sub_227A7282C();

  sub_227A4A708(v3);

  v4 = [v1 gameParticipants];
  v5 = sub_227A7282C();
  v0[25] = v5;

  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_64_1(v6);

  return sub_227A1B910(v5);
}

uint64_t sub_227A15BD4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[27] = v0;

  if (v0)
  {
    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_227A15FAC;
  }

  else
  {

    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_227A15CD8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_227A15CD8()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_227A15D44()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[30] = v0;

  if (v0)
  {
    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_227A15EAC;
  }

  else
  {

    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_227A15E54;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_227A15E54()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_227A15EAC()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_227A15F20()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_227A15FAC()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_227A16028()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_227A160B4(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  sub_227A7273C();
  v2[11] = sub_227A7272C();
  v4 = sub_227A726EC();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x2822009F8](sub_227A1614C, v4, v3);
}

uint64_t sub_227A1614C()
{
  v58 = v0;
  *(v0 + 112) = sub_227A23D8C(*(v0 + 72));
  *(v0 + 120) = v1;
  if (!v1)
  {

    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v2 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v2, qword_27D7DE210);
    v3 = sub_227A7226C();
    v4 = sub_227A7289C();
    if (OUTLINED_FUNCTION_46_1(v4))
    {
      OUTLINED_FUNCTION_28_0();
      v5 = swift_slowAlloc();
      OUTLINED_FUNCTION_36_1(v5);
      OUTLINED_FUNCTION_10_4();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    goto LABEL_7;
  }

  v13 = sub_227A1AA80(1u);
  v15 = v14;
  sub_227A143B8();
  if (!v16)
  {

    goto LABEL_24;
  }

  v17 = OUTLINED_FUNCTION_30_1();
  if ((sub_227A4AD64(v17, v18) & 1) == 0)
  {

    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v38 = sub_227A7227C();
    __swift_project_value_buffer(v38, qword_27D7DE210);
    OUTLINED_FUNCTION_13();

    v3 = sub_227A7226C();
    sub_227A7289C();
    OUTLINED_FUNCTION_94_0();

    if (!OUTLINED_FUNCTION_143())
    {

LABEL_8:
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_68_1();

      __asm { BRAA            X1, X16 }
    }

    v39 = OUTLINED_FUNCTION_106();
    v40 = OUTLINED_FUNCTION_107();
    v57 = v40;
    *v39 = 136315138;
    v41 = OUTLINED_FUNCTION_30_1();
    v44 = sub_227A46730(v41, v42, v43);

    *(v39 + 4) = v44;
    OUTLINED_FUNCTION_57();
    _os_log_impl(v45, v46, v47, v48, v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();

LABEL_7:

    goto LABEL_8;
  }

  v19 = *(v0 + 72);
  v20 = [v19 gameParticipants];
  sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
  sub_227A23DEC();
  v21 = sub_227A7282C();

  v57 = MEMORY[0x277D84FA0];
  sub_227A13E74(v21);

  *(v0 + 64) = v57;
  v22 = [v19 localPlayerID];
  v23 = sub_227A724EC();
  v25 = v24;

  sub_227A20F88(&v57, v23, v25, v13, v15);

  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v26 = sub_227A7227C();
  __swift_project_value_buffer(v26, qword_27D7DE210);
  OUTLINED_FUNCTION_13();

  v27 = sub_227A7226C();
  v28 = sub_227A7289C();

  if (os_log_type_enabled(v27, v28))
  {
    v56 = v28;
    v29 = OUTLINED_FUNCTION_63_1();
    v57 = OUTLINED_FUNCTION_82_0();
    *v29 = 136315394;
    v30 = OUTLINED_FUNCTION_30_1();
    *(v29 + 4) = sub_227A46730(v30, v31, v32);
    *(v29 + 12) = 2080;
    OUTLINED_FUNCTION_9_2();
    swift_beginAccess();
    sub_227A075DC();

    v33 = sub_227A7283C();
    v35 = v34;

    v36 = sub_227A46730(v33, v35, &v57);

    *(v29 + 14) = v36;
    _os_log_impl(&dword_227904000, v27, v56, "Migrating the game channel to newID: %s, with all participants: %s", v29, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();

  v37 = OUTLINED_FUNCTION_30_1();
  sub_227A4AF54(v37);
  swift_bridgeObjectRelease_n();

LABEL_24:
  v49 = [*(v0 + 72) gameParticipants];
  *(v0 + 128) = sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
  *(v0 + 136) = sub_227A23DEC();
  OUTLINED_FUNCTION_76();
  *(v0 + 144) = sub_227A7282C();

  v50 = swift_task_alloc();
  *(v0 + 152) = v50;
  *v50 = v0;
  OUTLINED_FUNCTION_64_1(v50);
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_68_1();

  return sub_227A1AF08(v51, v52, v53);
}

uint64_t sub_227A16740()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[20] = v0;

  if (v0)
  {
    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_227A1698C;
  }

  else
  {

    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_227A16844;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_227A16844()
{
  OUTLINED_FUNCTION_132();

  sub_227A143B8();
  if (!v1)
  {
    goto LABEL_4;
  }

  if (sub_227A4B350())
  {

LABEL_4:

LABEL_5:
    OUTLINED_FUNCTION_23();
    goto LABEL_6;
  }

  v4 = *(v0 + 160);
  v5 = [*(v0 + 72) gameParticipants];
  v6 = sub_227A7282C();

  sub_227A13E74(v6);

  sub_227A4B3BC();

  if (!v4)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_41();
LABEL_6:

  return v2();
}

uint64_t sub_227A1698C()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_227A16A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_227A7273C();
  v3[5] = sub_227A7272C();
  v5 = sub_227A726EC();

  return MEMORY[0x2822009F8](sub_227A16ABC, v5, v4);
}

uint64_t sub_227A16ABC()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_104_0(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_26_2(v7);

  return FastSyncTransport.connectToPlayers(with:)();
}

uint64_t FastSyncTransport.disconnectAll(with:)()
{
  OUTLINED_FUNCTION_31();
  v1[18] = v2;
  v1[19] = v0;
  v3 = sub_227A7273C();
  v1[20] = OUTLINED_FUNCTION_88_0(v3);
  OUTLINED_FUNCTION_13();
  sub_227A726EC();
  OUTLINED_FUNCTION_73_1();
  v1[21] = v4;
  v1[22] = v5;
  v6 = OUTLINED_FUNCTION_72_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227A16BE8()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v2, qword_27D7DE210);
  v3 = v1;
  v4 = sub_227A7226C();
  LOBYTE(v1) = sub_227A728AC();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = v0[18];
    v6 = OUTLINED_FUNCTION_106();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    OUTLINED_FUNCTION_10_4();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_2279F3774(v7, &unk_27D7DD270, &qword_227AA10E0);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  sub_227A143B8();
  v0[23] = v14;
  if (v14)
  {
    v15 = swift_task_alloc();
    v0[24] = v15;
    *v15 = v0;
    v16 = sub_227A16EC0;
LABEL_9:
    v15[1] = v16;
    OUTLINED_FUNCTION_161();

    return sub_227A47C2C();
  }

  sub_227A143B8();
  v0[26] = v17;
  if (v17)
  {
    v18 = swift_task_alloc();
    v0[27] = v18;
    *v18 = v0;
    OUTLINED_FUNCTION_33_1();
    goto LABEL_9;
  }

  sub_227A14498();
  if (v21)
  {
    OUTLINED_FUNCTION_39_0();
    v22 = sub_227A724BC();
    OUTLINED_FUNCTION_89_0(v22);
    OUTLINED_FUNCTION_103_0();
    v0[2] = v23;
    OUTLINED_FUNCTION_9_6();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD008, &qword_227AA34B8);
    OUTLINED_FUNCTION_8_8(v24);
    v0[11] = 1107296256;
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_91_1(v25, sel_revokePseudonym_completionHandler_);
    OUTLINED_FUNCTION_161();

    return MEMORY[0x282200938](v26, v27, v28, v29, v30, v31, v32, v33);
  }

  else
  {

    sub_227A14770();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_161();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41);
  }
}

uint64_t sub_227A16EC0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[25] = v0;

  if (v0)
  {
    v7 = v3[21];
    v8 = v3[22];
    v9 = sub_227A174F8;
  }

  else
  {

    v7 = v3[21];
    v8 = v3[22];
    v9 = sub_227A16FC4;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_227A16FC4()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  sub_227A143B8();
  v0[26] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[27] = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_33_1();
    *(v3 + 8) = v4;
    OUTLINED_FUNCTION_161();

    return sub_227A47C2C();
  }

  else
  {
    sub_227A14498();
    if (v7)
    {
      OUTLINED_FUNCTION_39_0();
      v8 = sub_227A724BC();
      OUTLINED_FUNCTION_89_0(v8);
      OUTLINED_FUNCTION_103_0();
      v0[2] = v9;
      OUTLINED_FUNCTION_9_6();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD008, &qword_227AA34B8);
      OUTLINED_FUNCTION_8_8(v10);
      v0[11] = 1107296256;
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_91_1(v11, sel_revokePseudonym_completionHandler_);
      OUTLINED_FUNCTION_161();

      return MEMORY[0x282200938](v12, v13, v14, v15, v16, v17, v18, v19);
    }

    else
    {

      sub_227A14770();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_161();

      return v21(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }
}

uint64_t sub_227A17150()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[28] = v0;

  if (v0)
  {
    v7 = v3[21];
    v8 = v3[22];
    v9 = sub_227A17560;
  }

  else
  {

    v7 = v3[21];
    v8 = v3[22];
    v9 = sub_227A17254;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_227A17254()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  sub_227A14498();
  if (v1)
  {
    OUTLINED_FUNCTION_39_0();
    v2 = sub_227A724BC();
    OUTLINED_FUNCTION_89_0(v2);
    OUTLINED_FUNCTION_103_0();
    *(v0 + 16) = v3;
    OUTLINED_FUNCTION_9_6();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD008, &qword_227AA34B8);
    OUTLINED_FUNCTION_8_8(v4);
    *(v0 + 88) = 1107296256;
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_91_1(v5, sel_revokePseudonym_completionHandler_);
    OUTLINED_FUNCTION_161();

    return MEMORY[0x282200938](v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {

    sub_227A14770();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_161();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21);
  }
}

uint64_t sub_227A1736C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_32();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 240) = v4;
  v5 = v3[22];
  v6 = v3[21];
  if (v4)
  {
    v7 = sub_227A175C8;
  }

  else
  {
    v7 = sub_227A17490;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_227A17490()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 232);

  sub_227A14770();
  OUTLINED_FUNCTION_23();

  return v2();
}

uint64_t sub_227A174F8()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_227A17560()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_227A175C8()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 232);

  swift_willThrow();

  OUTLINED_FUNCTION_41();

  return v2();
}

uint64_t sub_227A17638(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_227A2B1D0(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_227A176C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_227A7273C();
  v3[5] = sub_227A7272C();
  v5 = sub_227A726EC();

  return MEMORY[0x2822009F8](sub_227A17764, v5, v4);
}

uint64_t sub_227A17764()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_104_0(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_26_2(v7);

  return FastSyncTransport.disconnectAll(with:)();
}

uint64_t sub_227A17810()
{
  OUTLINED_FUNCTION_56();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  v6 = v3[4];
  v7 = v3[2];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[6];
  if (v2)
  {
    v10 = sub_227A71A4C();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(v3[6], 0);
  }

  _Block_release(v4[6]);
  v11 = v8[1];

  return v11();
}

uint64_t FastSyncTransport.sendScopedData(_:to:dataMode:dataScope:transportContext:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (sub_227A06998())
  {
    v37 = a1;
    v12 = sub_227A065CC(a3);
    v13 = MEMORY[0x277D84F90];
    v38 = a2;
    if (!v12)
    {
LABEL_12:
      v26 = sub_227A17C58(v13);
      sub_227A17EB8(v37, v38, v26, a4, a5, a6);
    }

    v14 = v12;
    v39 = MEMORY[0x277D84F90];
    sub_227A20388(0, v12 & ~(v12 >> 63), 0);
    if ((v14 & 0x8000000000000000) == 0)
    {
      v35 = a6;
      v36 = a4;
      v15 = 0;
      v13 = v39;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x22AAA03F0](v15, a3);
        }

        else
        {
          v16 = *(a3 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = [v16 internal];
        v19 = [v18 playerID];

        v20 = sub_227A724EC();
        v22 = v21;

        v24 = *(v39 + 16);
        v23 = *(v39 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_227A20388(v23 > 1, v24 + 1, 1);
        }

        ++v15;
        *(v39 + 16) = v24 + 1;
        v25 = v39 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
      }

      while (v14 != v15);
      a4 = v36;
      a6 = v35;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_27D7DC4E0 != -1)
  {
LABEL_18:
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v28 = sub_227A7227C();
  v29 = __swift_project_value_buffer(v28, qword_27D7DE210);
  v30 = sub_227A7226C();
  sub_227A728AC();
  v31 = OUTLINED_FUNCTION_41_1();
  if (os_log_type_enabled(v31, v32))
  {
    OUTLINED_FUNCTION_28_0();
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_227904000, v30, v29, "Skipping send scoped data with empty players list.", v33, 2u);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  sub_227A1387C();
  OUTLINED_FUNCTION_95_0();
  swift_allocError();
  *v34 = 0xD000000000000012;
  *(v34 + 8) = 0x8000000227A98C80;
  *(v34 + 16) = a4;
  *(v34 + 24) = 0;
  *(v34 + 32) = 101;
  return swift_willThrow();
}

uint64_t sub_227A17C58(uint64_t a1)
{
  result = MEMORY[0x22AAA0100](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_227A2095C(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_227A17D18()
{
  OUTLINED_FUNCTION_105_0();
  sub_227A7212C();
  OUTLINED_FUNCTION_70_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = *(v0 + 16);
  sub_227A20870(&qword_27D7DD0B8, MEMORY[0x277CCB290], MEMORY[0x277CCB298]);
  v11 = OUTLINED_FUNCTION_76();
  v22 = MEMORY[0x22AAA0100](v11);
  v12 = *(v0 + 16);
  if (v12)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = *(v13 + 64);
    v21 = v0;
    v17 = v0 + ((v16 + 32) & ~v16);
    v18 = *(v13 + 56);
    do
    {
      OUTLINED_FUNCTION_75_1();
      v14(v19);
      sub_227A20AA4(v9, v6);
      (*(v13 - 8))(v9, v1);
      v17 += v18;
      --v12;
    }

    while (v12);

    return v22;
  }

  else
  {
    OUTLINED_FUNCTION_13();
  }

  return v10;
}

uint64_t sub_227A17EB8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v61 = a6;
  v7 = v6;
  v63 = a3;
  v64 = a4;
  v11 = type metadata accessor for DataMessage(0);
  v59 = *(v11 - 8);
  v12 = *(v59 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v56 - v15);
  v17 = a5;
  v70 = v7;
  sub_227A18810(a5);
  if (v18)
  {
    v62 = v18;
    v19 = sub_227A14498();
    v21 = v19;
    if (v20)
    {
      *v16 = a1;
      v16[1] = a2;
      v22 = v19;
      v57 = v20;
      sub_2279E3EE4(a1, a2);
      sub_227A71C5C();
      v68 = v11;
      v69 = sub_227A20870(&qword_27D7DD018, type metadata accessor for DataMessage, &unk_227AA250C);
      v23 = __swift_allocate_boxed_opaque_existential_1(&v65);
      v58 = type metadata accessor for DataMessage;
      sub_227A24238(v16, v23);
      sub_227A24238(v16, v13);
      v24 = (*(v59 + 80) + 24) & ~*(v59 + 80);
      v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
      v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      *(v28 + 16) = v62;
      sub_227A2418C(v13, v28 + v24);
      v29 = (v28 + v25);
      v30 = v22;
      *v29 = v22;
      v31 = v57;
      v29[1] = v57;
      v32 = v63;
      *(v28 + v26) = v63;
      v33 = v70;
      *(v28 + v27) = v70;
      v34 = v61;
      *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = v61;

      v35 = v33;
      v36 = v34;

      sub_227A4843C(&v65, v30, v31, v32, v64, sub_227A207AC, v28, v37, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
      sub_227A241E4();

      return __swift_destroy_boxed_opaque_existential_0Tm(&v65);
    }

    else
    {
      sub_227A1387C();
      swift_allocError();
      *v55 = v21;
      *(v55 + 8) = 0;
      *(v55 + 16) = v64;
      *(v55 + 24) = v17;
      *(v55 + 32) = 98;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_27D7DC4E0 != -1)
    {
      swift_once();
    }

    v39 = sub_227A7227C();
    __swift_project_value_buffer(v39, qword_27D7DE210);
    v40 = v63;

    v41 = sub_227A7226C();
    v42 = sub_227A728AC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v65 = v44;
      *v43 = 136315394;
      v45 = sub_227A483BC(v40);
      v47 = sub_227A46730(v45, v46, &v65);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      v48 = GKMatchSendDataScope.description.getter(v17);
      v50 = sub_227A46730(v48, v49, &v65);

      *(v43 + 14) = v50;
      _os_log_impl(&dword_227904000, v41, v42, "Skipping send scoped data to %s with nil channel for: %s.", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAA1930](v44, -1, -1);
      MEMORY[0x22AAA1930](v43, -1, -1);
    }

    v65 = 0;
    v66 = 0xE000000000000000;
    sub_227A72B1C();

    v65 = 0xD000000000000017;
    v66 = 0x8000000227A98F40;
    v51 = GKMatchSendDataScope.description.getter(v17);
    MEMORY[0x22AA9FE40](v51);

    v52 = v65;
    v53 = v66;
    sub_227A1387C();
    swift_allocError();
    *v54 = v52;
    *(v54 + 8) = v53;
    *(v54 + 16) = v64;
    *(v54 + 24) = v17;
    *(v54 + 32) = 97;
    return swift_willThrow();
  }
}

id GKMatchSendDataScope.description.getter(uint64_t a1)
{
  v1 = 0x53746C7561666544;
  switch(a1)
  {
    case 0:
      return v1;
    case 2:
      return 0xD000000000000011;
    case 1:
      return 0xD000000000000010;
  }

  result = [objc_opt_self() shared];
  if (result)
  {
    v4 = result;
    v5 = [result isInternalBuild];

    if (v5)
    {
      if (qword_280B551E0 != -1)
      {
        swift_once();
      }

      v6 = sub_227A7227C();
      OUTLINED_FUNCTION_104(v6, qword_280B551E8);
      v7 = sub_227A7226C();
      v8 = sub_227A728CC();
      if (OUTLINED_FUNCTION_27_0(v8))
      {
        OUTLINED_FUNCTION_106();
        v9 = OUTLINED_FUNCTION_100();
        v13 = v9;
        *v5 = 136315138;
        v10 = GKMatchSendDataScope.description.getter(a1);
        v12 = sub_227A46730(v10, v11, &v13);

        *(v5 + 4) = v12;
        _os_log_impl(&dword_227904000, v7, v8, "Unexpected GKMatchSendDataScope value: %s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v9);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x22AAA1930]();
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x22AAA1930]();
      }
    }

    return v1;
  }

  __break(1u);
  return result;
}

void sub_227A18810(uint64_t a1)
{
  if (a1 == 2 || (sub_227A143B8(), !v1))
  {
    sub_227A143B8();
  }
}

void sub_227A1885C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, void *a8)
{
  v56 = a7;
  v57 = a8;
  v54 = a5;
  v55 = a6;
  v53 = a4;
  v11 = type metadata accessor for DataMessage(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  swift_getErrorValue();
  if (sub_227A35B18(v62))
  {
    if (qword_27D7DC4E0 != -1)
    {
      swift_once();
    }

    v52 = a2;
    v20 = sub_227A7227C();
    __swift_project_value_buffer(v20, qword_27D7DE210);
    v21 = sub_227A7226C();
    v22 = sub_227A728AC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_227904000, v21, v22, "Falling back to reliable data sending upon maxPayloadSizeExceeded error", v23, 2u);
      MEMORY[0x22AAA1930](v23, -1, -1);
    }

    v60 = v11;
    v61 = sub_227A20870(&qword_27D7DD018, type metadata accessor for DataMessage, &unk_227AA250C);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
    sub_227A24238(a3, boxed_opaque_existential_1);
    sub_227A24238(a3, v19);
    v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v26 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    sub_227A2418C(v19, v27 + v25);
    v28 = v56;
    v29 = v57;
    *(v27 + v26) = v56;
    *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v29;
    v30 = v28;
    v31 = v29;
    sub_227A4843C(v59, v53, v54, v55, 0, sub_227A208B8, v27, v32, v52, v53, v54, v55, v56, v57, v58, v59[0], v59[1], v59[2], v60, v61);

    __swift_destroy_boxed_opaque_existential_0Tm(v59);
  }

  else
  {
    if (qword_27D7DC4E0 != -1)
    {
      swift_once();
    }

    v33 = sub_227A7227C();
    __swift_project_value_buffer(v33, qword_27D7DE210);
    sub_227A24238(a3, v16);
    v34 = a1;
    v35 = sub_227A7226C();
    v36 = sub_227A728BC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v59[0] = v39;
      *v37 = 136315394;
      sub_227A71C6C();
      sub_227A20870(&qword_27D7DC568, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v40 = sub_227A72E1C();
      v42 = v41;
      sub_227A241E4();
      v43 = sub_227A46730(v40, v42, v59);

      *(v37 + 4) = v43;
      *(v37 + 12) = 2112;
      v44 = a1;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v45;
      *v38 = v45;
      _os_log_impl(&dword_227904000, v35, v36, "Async message[%s] send error: %@", v37, 0x16u);
      sub_2279F3774(v38, &unk_27D7DD270, &qword_227AA10E0);
      MEMORY[0x22AAA1930](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x22AAA1930](v39, -1, -1);
      MEMORY[0x22AAA1930](v37, -1, -1);
    }

    else
    {

      sub_227A241E4();
    }

    v46 = *&v56[OBJC_IVAR___GKFastSyncTransport_reporter];
    sub_227A1387C();
    v47 = swift_allocError();
    *v48 = a1;
    *(v48 + 8) = 0;
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *(v48 + 32) = 0;
    MEMORY[0x28223BE20](v47);
    *(&v52 - 4) = v46;
    *(&v52 - 3) = v49;
    v50 = v57;
    *(&v52 - 2) = v57;
    v51 = a1;
    sub_2279FA2E8(v50, 0, 0, sub_2279FF2D8, (&v52 - 6));
  }
}

void sub_227A190F4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DataMessage(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v11 = sub_227A7227C();
  __swift_project_value_buffer(v11, qword_27D7DE210);
  sub_227A24238(a2, v10);
  v12 = a1;
  v13 = sub_227A7226C();
  v14 = sub_227A728BC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v16 = 136315394;
    sub_227A71C6C();
    sub_227A20870(&qword_27D7DC568, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_227A72E1C();
    v21 = v20;
    sub_227A241E4();
    v22 = sub_227A46730(v19, v21, &v32);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2112;
    v23 = a1;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v24;
    *v17 = v24;
    _os_log_impl(&dword_227904000, v13, v14, "Fallback reliable message[%s] send error: %@", v16, 0x16u);
    sub_2279F3774(v17, &unk_27D7DD270, &qword_227AA10E0);
    MEMORY[0x22AAA1930](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x22AAA1930](v18, -1, -1);
    v25 = v16;
    a3 = v31;
    MEMORY[0x22AAA1930](v25, -1, -1);
  }

  else
  {

    sub_227A241E4();
  }

  v26 = *(a3 + OBJC_IVAR___GKFastSyncTransport_reporter);
  sub_227A1387C();
  v27 = swift_allocError();
  *v28 = a1;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  MEMORY[0x28223BE20](v27);
  *(&v31 - 4) = v26;
  *(&v31 - 3) = v29;
  *(&v31 - 2) = a4;
  v30 = a1;
  sub_2279FA2E8(a4, 0, 0, sub_2279FF2D8, (&v31 - 6));
}

uint64_t FastSyncTransport.chooseBestHostingPlayer(with:)()
{
  OUTLINED_FUNCTION_31();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_227A7273C();
  v1[12] = OUTLINED_FUNCTION_88_0(v3);
  OUTLINED_FUNCTION_13();
  sub_227A726EC();
  OUTLINED_FUNCTION_73_1();
  v1[13] = v4;
  v1[14] = v5;
  v6 = OUTLINED_FUNCTION_72_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227A194EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_67_1();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_132();
  a18 = v20;
  sub_227A18810(0);
  *(v20 + 120) = v23;
  if (v23)
  {
    v24 = swift_task_alloc();
    *(v20 + 128) = v24;
    *v24 = v20;
    v24[1] = sub_227A19878;
    OUTLINED_FUNCTION_34_1();

    return sub_227A4901C();
  }

  else
  {

    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v27 = *(v20 + 88);
    v28 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v28, qword_27D7DE210);
    v29 = v27;
    v30 = sub_227A7226C();
    v31 = sub_227A728BC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = 7104878;
      v33 = OUTLINED_FUNCTION_63_1();
      a9 = OUTLINED_FUNCTION_82_0();
      *v33 = 136315394;
      sub_227A143B8();
      if (v34)
      {
        *(v20 + 72) = v34;
        type metadata accessor for FastSyncChannel(0);
        v35 = sub_227A7251C();
        v37 = v36;
      }

      else
      {
        v37 = 0xE300000000000000;
        v35 = 7104878;
      }

      v38 = sub_227A46730(v35, v37, &a9);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2080;
      sub_227A143B8();
      if (v39)
      {
        *(v20 + 64) = v39;
        type metadata accessor for FastSyncChannel(0);
        v32 = sub_227A7251C();
        v41 = v40;
      }

      else
      {
        v41 = 0xE300000000000000;
      }

      v42 = sub_227A46730(v32, v41, &a9);

      *(v33 + 14) = v42;
      _os_log_impl(&dword_227904000, v30, v31, "There is no valid channel for .default scope. lobbyChannel:%s, gameChannel:%s", v33, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    sub_227A1387C();
    OUTLINED_FUNCTION_101_0();
    OUTLINED_FUNCTION_95_0();
    v43 = swift_allocError();
    *v44 = 0u;
    *(v44 + 16) = 0u;
    *(v44 + 32) = 32;
    v45 = v43;
    swift_willThrow();
    *(v20 + 56) = v43;
    v46 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
    if (!swift_dynamicCast() || (v47 = *(v20 + 48) & 0xE0, sub_227A203A8(*(v20 + 16), *(v20 + 24), *(v20 + 32), *(v20 + 40), *(v20 + 48)), v45 = v43, v47 != 64))
    {
      OUTLINED_FUNCTION_95_0();
      v48 = swift_allocError();
      OUTLINED_FUNCTION_71_1(v48, v49);
    }

    v50 = swift_task_alloc();
    OUTLINED_FUNCTION_108_0(v50);
    v51 = v45;
    OUTLINED_FUNCTION_29_1();

    OUTLINED_FUNCTION_57_1();
    OUTLINED_FUNCTION_34_1();

    return v55(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12);
  }
}

uint64_t sub_227A19878()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_32();
  *v6 = v5;
  v9[17] = v7;
  v9[18] = v8;
  v9[19] = v0;

  OUTLINED_FUNCTION_50_1();
  v11 = *(v10 + 112);
  v12 = *(v1 + 104);
  if (v0)
  {
    v13 = sub_227A19B1C;
  }

  else
  {
    v13 = sub_227A199A8;
  }

  return MEMORY[0x2822009F8](v13, v12, v11);
}

uint64_t sub_227A199A8()
{

  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v1 = sub_227A7227C();
  __swift_project_value_buffer(v1, qword_27D7DE210);
  OUTLINED_FUNCTION_13();

  v2 = sub_227A7226C();
  sub_227A7289C();
  OUTLINED_FUNCTION_94_0();

  if (OUTLINED_FUNCTION_143())
  {
    v3 = OUTLINED_FUNCTION_106();
    v17 = OUTLINED_FUNCTION_107();
    *v3 = 136315138;
    v4 = OUTLINED_FUNCTION_82();
    *(v3 + 4) = sub_227A46730(v4, v5, v6);
    OUTLINED_FUNCTION_57();
    _os_log_impl(v7, v8, v9, v10, v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930](v11);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930](v12);
  }

  else
  {
  }

  v13 = v0[17];
  v14 = v0[18];
  v15 = v0[1];

  return v15(v13, v14);
}

uint64_t sub_227A19B1C()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();

  v1 = *(v0 + 152);
  *(v0 + 56) = v1;
  v2 = (v0 + 16);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  if (!swift_dynamicCast() || (v4 = *(v0 + 48) & 0xE0, sub_227A203A8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)), v2 = v1, v4 != 64))
  {
    sub_227A1387C();
    OUTLINED_FUNCTION_95_0();
    v5 = swift_allocError();
    OUTLINED_FUNCTION_71_1(v5, v6);
  }

  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_108_0(v7);
  v8 = v2;
  OUTLINED_FUNCTION_29_1();

  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_161();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_227A19C80(void *a1, int a2, void *a3, void *aBlock, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = v7;
  v8[4] = a1;
  v9 = a3;
  v10 = a1;
  v11 = OUTLINED_FUNCTION_86();

  return sub_227A62CD4(v11, v12);
}

uint64_t sub_227A19D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_227A7273C();
  v3[5] = sub_227A7272C();
  v5 = sub_227A726EC();

  return MEMORY[0x2822009F8](sub_227A19D9C, v5, v4);
}

uint64_t sub_227A19D9C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_104_0(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_26_2(v7);

  return FastSyncTransport.chooseBestHostingPlayer(with:)();
}

uint64_t sub_227A19E48()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v2 = v1;
  OUTLINED_FUNCTION_36();
  v4 = v3;
  OUTLINED_FUNCTION_2_7();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *(v6 + 16);
  v9 = *v0;
  OUTLINED_FUNCTION_7();
  *v10 = v9;

  if (v2)
  {
    v11 = sub_227A724BC();
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v4 + 48);
  v13 = OUTLINED_FUNCTION_76();
  v14(v13);

  _Block_release(v12);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_161();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

void __swiftcall FastSyncTransport.voiceChat(withName:players:transportContext:)(GKVoiceChat_optional *__return_ptr retstr, Swift::String withName, Swift::OpaquePointer players, GKTransportContext *transportContext)
{
  if (qword_27D7DC4C8 != -1)
  {
    swift_once();
  }

  v4 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v4, qword_27D7DE1C8);
  v5 = sub_227A7226C();
  sub_227A728BC();
  v6 = OUTLINED_FUNCTION_41_1();
  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_28_0();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_36_1(v8);
    OUTLINED_FUNCTION_53_1(&dword_227904000, v9, v10, "<Warning>: VoiceChat is not available at this moment.");
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }
}

id FastSyncTransport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FastSyncTransport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_227A1A264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = type metadata accessor for FastSyncActivity(0);
  v5[13] = swift_task_alloc();
  sub_227A7273C();
  v5[14] = sub_227A7272C();
  v7 = sub_227A726EC();
  v5[15] = v7;
  v5[16] = v6;

  return MEMORY[0x2822009F8](sub_227A1A334, v7, v6);
}

uint64_t sub_227A1A334()
{
  v52 = v0;
  v1 = sub_227A1AA80(4u);
  v3 = v2;
  v4 = sub_227A498C0(v1, v2, *(v0 + 80));
  if (!v4)
  {

    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v7 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v7, qword_27D7DE210);

    v8 = sub_227A7226C();
    v9 = sub_227A728AC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_106();
      v11 = OUTLINED_FUNCTION_107();
      v51[0] = v11;
      *v10 = 136315138;
      sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
      sub_227A23DEC();
      v12 = sub_227A7283C();
      v14 = sub_227A46730(v12, v13, v51);

      *(v10 + 4) = v14;
      OUTLINED_FUNCTION_10_4();
      _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

LABEL_9:

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_68_1();

    __asm { BRAA            X1, X16 }
  }

  v5 = v4;
  v6 = *(v0 + 56);
  if (*(v6 + 136))
  {

    goto LABEL_9;
  }

  v22 = *(v0 + 104);
  v50 = *(v0 + 96);
  v51[0] = 0;
  v23 = *(v0 + 64);
  v24 = *(v0 + 72);
  v51[1] = 0xE000000000000000;
  swift_bridgeObjectRetain_n();
  sub_227A72B1C();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  MEMORY[0x22AA9FE40](0xD00000000000001CLL, 0x8000000227A98F60);
  v25 = *(v6 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 16);
  v48 = *(v6 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 8);
  v49 = *(v6 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type);
  *(v0 + 16) = v49;
  *(v0 + 24) = v48;
  v47 = v25;
  *(v0 + 32) = v25;
  sub_227A72C1C();
  v26 = *(v0 + 40);
  v27 = *(v0 + 48);
  sub_227A71EBC();
  v28 = (v22 + *(v50 + 20));
  *v28 = v23;
  v28[1] = v24;
  v29 = (v22 + *(v50 + 24));
  *v29 = v26;
  v29[1] = v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD040, &unk_227AA5CC0);
  swift_allocObject();

  v31 = sub_227A1F2A4(v23, v24, v22, v5, v1, v3);
  *(v0 + 136) = v31;
  sub_227A1AB04(v31);
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v32 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v32, qword_27D7DE210);

  v33 = sub_227A7226C();
  v34 = sub_227A7289C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_63_1();
    v51[0] = OUTLINED_FUNCTION_82_0();
    *v35 = 136315394;
    v36 = sub_227A49E0C(v49, v48, v47);
    sub_227A46730(v36, v37, v51);
    OUTLINED_FUNCTION_100_0();

    *(v35 + 4) = v30;
    *(v35 + 12) = 2080;
    v38 = sub_227A7283C();
    v40 = v39;

    v41 = sub_227A46730(v38, v40, v51);

    *(v35 + 14) = v41;
    _os_log_impl(&dword_227904000, v33, v34, "Joining group session provider on channel: %s.\nAll handles in the provider: %s", v35, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  else
  {
  }

  v42 = swift_task_alloc();
  *(v0 + 144) = v42;
  OUTLINED_FUNCTION_42_1(&qword_27D7DD048, &qword_27D7DD040, &unk_227AA5CC0);
  OUTLINED_FUNCTION_103_0();
  *v42 = v43;
  v42[1] = sub_227A1A87C;
  OUTLINED_FUNCTION_68_1();

  return MEMORY[0x28211FBF0](v44);
}

uint64_t sub_227A1A87C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 152) = v0;

  OUTLINED_FUNCTION_50_1();
  v6 = *(v5 + 128);
  v7 = *(v1 + 120);
  if (v0)
  {
    v8 = sub_227A1AA10;
  }

  else
  {
    v8 = sub_227A1A9A4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_227A1A9A4()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_227A1AA10()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_227A1AA80(unsigned __int8 a1)
{
  result = sub_227A14498();
  if (!v3)
  {
    sub_227A1387C();
    swift_allocError();
    *v4 = a1 | 0x40u;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = 32;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_227A1AB04(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24[-1] - v5;
  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v7 = sub_227A7227C();
  __swift_project_value_buffer(v7, qword_27D7DE210);

  v8 = sub_227A7226C();
  v9 = sub_227A728AC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_227A46730(*(v1 + 24), *(v1 + 32), v24);
    *(v10 + 12) = 2080;
    v12 = sub_227A1F624();
    v14 = v13;

    v15 = sub_227A46730(v12, v14, v24);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_227904000, v8, v9, "%s-> Setting provider: %s.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAA1930](v11, -1, -1);
    MEMORY[0x22AAA1930](v10, -1, -1);
  }

  else
  {
  }

  *(v2 + 136) = a1;

  v24[0] = *(a1 + *(*a1 + 120));
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD050, &qword_227AA35D8);
  sub_2279F4CBC(&qword_27D7DD058, &qword_27D7DD050, &qword_227AA35D8, MEMORY[0x277CBCE48]);
  sub_227A722FC();

  swift_beginAccess();
  sub_227A722AC();
  swift_endAccess();

  v16 = sub_227A7276C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  sub_227A7273C();

  v18 = sub_227A7272C();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v17;
  v19[5] = a1;

  v21 = sub_227A20018(0, 0, v6, &unk_227AA35E8, v19);
  sub_2279F3774(v6, &qword_27D7DC5B8, &qword_227AA04D0);
  *(v2 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_sessionObserverTask) = v21;
}

uint64_t sub_227A1AF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_227A7273C();
  v4[6] = sub_227A7272C();
  v6 = sub_227A726EC();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_227A1AFA4, v6, v5);
}

uint64_t sub_227A1AFA4()
{
  OUTLINED_FUNCTION_132();
  v35 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (!Strong)
  {
LABEL_22:

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_69_1();

    __asm { BRAA            X1, X16 }
  }

  sub_227A143B8();
  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = v0[2];
  v3 = v0[3];
  v6 = *(v2 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type);
  v5 = *(v2 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 8);
  v7 = OUTLINED_FUNCTION_40_1();
  sub_227A23E54(v7, v8);

  if (v6 == v4 && v5 == v3)
  {
    sub_227A23E5C();
    goto LABEL_21;
  }

  v10 = OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_40_1();
  sub_227A23E5C();
  if (v10)
  {
LABEL_21:
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

LABEL_8:
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v11 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v11, qword_27D7DE210);

  v12 = sub_227A7226C();
  v13 = sub_227A7289C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_63_1();
    v15 = OUTLINED_FUNCTION_82_0();
    *(v14 + 4) = OUTLINED_FUNCTION_109_0(4.8151e-34, v15);
    *(v14 + 12) = 2080;
    sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    v16 = sub_227A7283C();
    v18 = sub_227A46730(v16, v17, &v34);

    *(v14 + 14) = v18;
    OUTLINED_FUNCTION_107_0(&dword_227904000, v19, v20, "Create new game channel(matchID:%s with participants: %s");
    OUTLINED_FUNCTION_86_0();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  v21 = v0[5];
  v22 = OBJC_IVAR___GKFastSyncTransport_gameChannelMigrationTask;
  v0[10] = OBJC_IVAR___GKFastSyncTransport_gameChannelMigrationTask;
  if (*(v21 + v22))
  {

    sub_227A727DC();
  }

  sub_227A143B8();
  if (v23)
  {
    sub_227A49E78();
  }

  sub_227A1440C(0);
  type metadata accessor for FastSyncChannel(0);
  swift_allocObject();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = OUTLINED_FUNCTION_82();
  sub_227A4C7E4(v24, v25);
  v0[11] = v26;

  sub_227A1440C(v27);
  v28 = swift_task_alloc();
  v0[12] = v28;
  *v28 = v0;
  v28[1] = sub_227A1B348;
  OUTLINED_FUNCTION_69_1();

  return sub_227A1B72C(v29);
}

uint64_t sub_227A1B348()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_2_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_32();
  *v5 = v4;
  *(v7 + 104) = v6;

  OUTLINED_FUNCTION_74_1();
  v9 = *(v8 + 64);
  v10 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_227A1B458, v10, v9);
}